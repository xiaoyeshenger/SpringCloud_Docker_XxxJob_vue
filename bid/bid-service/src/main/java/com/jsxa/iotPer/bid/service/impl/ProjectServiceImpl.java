package com.jsxa.iotPer.bid.service.impl;

import cn.hutool.json.JSONUtil;
import com.alibaba.excel.EasyExcel;
import com.alibaba.excel.ExcelReader;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.github.pagehelper.PageHelper;
import com.google.common.collect.HashBasedTable;
import com.google.common.collect.Table;
import com.jsxa.iotPer.bid.bo.dto.ProductAuctionDataReqDto;
import com.jsxa.iotPer.bid.bo.dto.ProjectPageReqDto;
import com.jsxa.iotPer.bid.bo.dto.ProjectReqDto;
import com.jsxa.iotPer.bid.bo.dto.UpdateProjectStatusReqDto;
import com.jsxa.iotPer.bid.bo.po.BidRecord;
import com.jsxa.iotPer.bid.bo.po.ProductAuction;
import com.jsxa.iotPer.bid.bo.po.Project;
import com.jsxa.iotPer.bid.bo.po.TimeTask;
import com.jsxa.iotPer.bid.excel.ProjectExcelListener;
import com.jsxa.iotPer.bid.excel.ProjectExcelVo;
import com.jsxa.iotPer.bid.mapper.*;
import com.jsxa.iotPer.bid.service.ProjectService;
import com.jsxa.iotPer.bid.util.XxlJobUtil;
import com.jsxa.iotPer.common.bo.vo.PageVo;
import com.jsxa.iotPer.common.redis.RedisKey;
import com.jsxa.iotPer.common.redis.RedisService;
import com.jsxa.iotPer.common.utils.*;
import com.jsxa.iotPer.common.validator.FieldDupValidator;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.mybatis.dynamic.sql.render.RenderingStrategies;
import org.mybatis.dynamic.sql.select.MyBatis3SelectModelAdapter;
import org.mybatis.dynamic.sql.select.QueryExpressionDSL;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Validator;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.*;
import java.util.stream.Collectors;

import static org.mybatis.dynamic.sql.SqlBuilder.*;


/*
 * @Author zhangyong
 * @Description //ProjectService接口实现类
 * @Date 2023/12/18 11:14
 * @Param
 * @return
 **/
@Service
@Slf4j
@RequiredArgsConstructor
public class ProjectServiceImpl implements ProjectService {


    @Value("${xxl.job.admin.addresses}")
    private String adminAddresses;

    @Value("${bid.project.signUpTime}")
    private Integer signUpTime;

    @Value("${bid.project.publicityTime}")
    private Integer publicityTime;

    private final CacheUtil cacheUtil;

    private final MinioUtil minioUtil;

    private final RedisService redisService;

    private final Validator validator;

    private final FieldDupValidator fieldDupValidator;

    private final ProjectMapper projectMapper;

    private final TimeTaskMapper timeTaskMapper;

    private final BidRecordMapper bidRecordMapper;

    private final ProductAuctionMapper productAuctionMapper;


    @Override
    @Transactional
    public Map<String, Object> addProject(ProjectReqDto projectReqDto,MultipartHttpServletRequest request) {
        //1.参数校验
        Long startTime = projectReqDto.getStartTime();
        if(startTime <= System.currentTimeMillis()){
            throw new IllegalArgumentException("开始时间不能小于当前时间");
        }

        String projName = projectReqDto.getName();
        Project proj = projectMapper.selectByExampleOne()
                .where(ProjectDynamicSqlSupport.name, isEqualTo(projName))
                .build()
                .execute();
        if(!ObjUtil.isEmpty(proj)){
            throw new IllegalArgumentException("项目名称为:"+projName+"的项目已存在");
        }

        //2.设置参数
        //(1)复制ProjectReqDto中的请求参数到Project
        Project project = VoPoConverterUtil.copyProperties(projectReqDto, Project.class);
        project.setOosUrl(minioUtil.getDefaultPicUrl());

        //获取到文件
        List<MultipartFile> targetFileList = request.getFiles("targetFile");
        if (!ObjUtil.isEmpty(targetFileList)) {
            List oosUrlList = new ArrayList();
            for (int i = 0; i < targetFileList.size(); i++) {
                MultipartFile targetFile = targetFileList.get(i);
                String suffix = FileUtil.getSuffix(targetFile.getOriginalFilename());
                String bucketName = "project".toLowerCase();
                if (!minioUtil.existsBucket(bucketName)) {
                    minioUtil.createBucket(bucketName);
                }
                String fileName = UUIDUtil.getUUID(28) + suffix;
                minioUtil.upload(bucketName,targetFile,fileName);

                String curOosUrl = "/"+ bucketName +"/" + fileName;
                oosUrlList.add(curOosUrl);
            }
            String oosUrlListStr = String.join(",", oosUrlList);
            project.setOosUrl(oosUrlListStr);
        }


        //设置其他属性
        Long proId = new IdWorker().nextId();

        //保存productAuction
        Double upsetTotalPrice = 0.0;
        List<ProductAuctionDataReqDto> productAuctionDataList = projectReqDto.getProductAuctionDataList();
        for (int i = 0; i < productAuctionDataList.size(); i++) {
            ProductAuctionDataReqDto productAuctionDataReqDto = productAuctionDataList.get(i);
            //(1).校验字典是否存在
            Long quantityUnit = productAuctionDataReqDto.getQuantityUnit();
            cacheUtil.getDataDictName(quantityUnit);
            //(2).保存productAuction
            ProductAuction productAuction = VoPoConverterUtil.copyProperties(productAuctionDataReqDto, ProductAuction.class);
            productAuction.setProjectId(proId).setCreateTime(System.currentTimeMillis());
            productAuctionMapper.insert(productAuction);

            //(3).累加总价
            Double upsetPrice = productAuctionDataReqDto.getUpsetPrice();
            Double quantity = productAuctionDataReqDto.getQuantity();
            Double curProductAuctionTotalPrice = upsetPrice * quantity;
            upsetTotalPrice += curProductAuctionTotalPrice;

            //(4).将productAuction存入redis
            redisService.hmSet("ProductAuction:"+proId, String.valueOf(productAuction.getId()), JSONObject.toJSONString(productAuction));

            //(5).将单价添加到redis
            //redisService.hIncr(RedisKey.ProjectBidUnitPriceData+proId, String.valueOf(productAuction.getId()),upsetPrice);
            redisService.hmSet(RedisKey.ProjectBidUnitPriceData+proId,String.valueOf(productAuction.getId()),String.valueOf(upsetPrice));
        }

        //3.保存
        //--1.如果是周末,需要顺延,计算出当前时间到拍卖开始时间之前的周末天数
        Long currentTimeMillis = System.currentTimeMillis();
        int weekendCount = DateUtil.countWeekends(currentTimeMillis, startTime);
        //--2.拍卖开始时间需要延长周末天数
        startTime += (weekendCount * 24 * 60 * 60 * 1000L);

        project.setId(proId)
                .setUpsetTotalPrice(upsetTotalPrice)
                .setAuctionStatus(1502L)
                .setTransStatus(1604L)
                .setStartTime(startTime)
                .setEndTime(projectReqDto.getStartTime() + projectReqDto.getBidIncrMaxTime()*60*1000L)
                .setWeekendCount(weekendCount)
                .setCreateTime(currentTimeMillis);
        projectMapper.insert(project);

        //4.保存项目到redis
        redisService.hmSet("Project", String.valueOf(proId), JSONObject.toJSONString(project));

        //5.将总价添加到redis
        redisService.hmSet(RedisKey.ProjectBidTotalPriceData,String.valueOf(proId),String.valueOf(upsetTotalPrice));

        //6.返回结果
        Map<String,Object> resultMap = new HashMap<>(1);
        resultMap.put("msg","添加项目信息成功");
        return resultMap;
    }

    @Override
    @Transactional
    public Map<String, Object> deleteProjectById(Long id){
        Project project = projectMapper.selectByPrimaryKey(id);
        if(project == null){
            throw new IllegalArgumentException("id为:"+id+"的项目信息不存在");
        }
        Long auctionStatus = project.getAuctionStatus();
        if(!auctionStatus.equals(1502L)){
            throw new IllegalArgumentException("请撤销发布后再删除");
        }

        projectMapper.deleteByExample()
                    .where(ProjectDynamicSqlSupport.id, isEqualTo(id))
                    .build()
                    .execute();

        productAuctionMapper.deleteByExample()
                .where(ProductAuctionDynamicSqlSupport.projectId, isEqualTo(id))
                .build()
                .execute();

        redisService.hmDelete("Project", String.valueOf(id));

        redisService.remove("ProductAuction:"+id);

        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("msg","删除项目成功");
        return resultMap;
    }

    @Override
    @Transactional
    public Map<String, Object> updateProject(ProjectReqDto projectReqDto,MultipartHttpServletRequest request) {

        //1.参数校验
        Long startTime = projectReqDto.getStartTime();
        if(startTime <= System.currentTimeMillis()){
            throw new IllegalArgumentException("开始时间不能小于当前时间");
        }

        //project是否存在
        Long proId = projectReqDto.getId();
        Project project = JSONObject.parseObject((String) redisService.hmGet("Project", String.valueOf(proId)), Project.class);
        if(ObjUtil.isEmpty(project)){
            throw new IllegalArgumentException("id为:"+proId+"的项目信息不存在");
        }

        Long auctionStatus = project.getAuctionStatus();
        if(!auctionStatus.equals(1502L)){
            throw new IllegalArgumentException("未上线的项目才能修改内容");
        }

        //2.fileOperate=null --> 不新增也不删除文件;fileOperate=0 --> 在数据库已有的文件路径列表(多个文件以,号分隔存字符串)基础上新增文件访问路径;fileOperate=1,3,4 --> 删除数据库中第1、3、4个文件
        String fileOperate = projectReqDto.getFileOperate();
        if(!ObjUtil.isEmpty(fileOperate)){
            //(1).已存在的文件列表
            String existOosUrl = project.getOosUrl();
            String[] existOosUrlArray = existOosUrl.split(",");

            String[] split = fileOperate.split(",");
            String numMin = split[0];
            if(numMin.equals("0")){
                List<MultipartFile> targetFileList = request.getFiles("targetFile");
                if (!ObjUtil.isEmpty(targetFileList)) {
                    List oosUrlList = new ArrayList();
                    for (int i = 0; i < targetFileList.size(); i++) {
                        MultipartFile targetFile = targetFileList.get(i);

                        String suffix = FileUtil.getSuffix(targetFile.getOriginalFilename());
                        String bucketName = "project".toLowerCase();
                        if (!minioUtil.existsBucket(bucketName)) {
                            minioUtil.createBucket(bucketName);
                        }
                        String fileName = UUIDUtil.getUUID(28) + suffix;
                        minioUtil.upload(bucketName, targetFile, fileName);

                        String curOosUrl = "/"+ bucketName +"/" + fileName;
                        oosUrlList.add(curOosUrl);
                    }
                    //把新上传的文件加入到之前的列表
                    String oosUrlListStr = String.join(",", oosUrlList);
                    project.setOosUrl(existOosUrl+","+oosUrlListStr);
                }
            }else {
                //倒叙删除多个指定索引的元素，这样才不会影响其他元素的索引位置变化
                List<String> existOosUrlList = new ArrayList<>(Arrays.asList(existOosUrlArray));
                String numMaxStr = split[split.length-1];
                int numMaxInt = Integer.parseInt(numMaxStr);
                if(numMaxInt > existOosUrlList.size()){
                    throw new IllegalArgumentException("超出文件删除范围");
                }

                for (int i = split.length-1; i >= 0; i--) {
                    String numStr = split[i];
                    int num = Integer.parseInt(numStr);
                    existOosUrlList.remove(num-1);
                }
                String existOosUrlListStr = String.join(",", existOosUrlList);
                project.setOosUrl(existOosUrlListStr);

                List<MultipartFile> targetFileList = request.getFiles("targetFile");
                if (!ObjUtil.isEmpty(targetFileList)) {
                    List oosUrlList = new ArrayList();
                    for (int i = 0; i < targetFileList.size(); i++) {
                        MultipartFile targetFile = targetFileList.get(i);

                        String suffix = FileUtil.getSuffix(targetFile.getOriginalFilename());
                        String bucketName = "project".toLowerCase();
                        if (!minioUtil.existsBucket(bucketName)) {
                            minioUtil.createBucket(bucketName);
                        }
                        String fileName = UUIDUtil.getUUID(28) + suffix;
                        minioUtil.upload(bucketName, targetFile, fileName);

                        String curOosUrl = "/"+ bucketName +"/" + fileName;
                        oosUrlList.add(curOosUrl);
                    }
                    //把新上传的文件加入到之前的列表
                    String oosUrlListStr = String.join(",", oosUrlList);
                    project.setOosUrl(existOosUrlListStr+","+oosUrlListStr);
                }
            }
        }

        //3.更新Project
        //(1)复制ProjectDto中的请求参数到Project
        VoPoConverterUtil.beanConverterNotNull(projectReqDto, project);


        //请求的拍卖时间不等于数据库中原来的开始时间---> 修改了拍卖开始时间,重新计算周末
        if(!projectReqDto.getStartTime().equals(project.getStartTime())){
            //--1.如果是周末,需要顺延,计算出当前时间到拍卖开始时间之前的周末天数
            Long currentTimeMillis = System.currentTimeMillis();
            int weekendCount = DateUtil.countWeekends(currentTimeMillis, startTime);
            //--2.拍卖开始时间需要延长周末天数
            startTime += (weekendCount * 24 * 60 * 60 * 1000L);
            project.setStartTime(startTime);
            project.setWeekendCount(weekendCount);
        }



        //删除旧的productAuction,包括Mysql和Redis
        productAuctionMapper.deleteByExample()
                .where(ProductAuctionDynamicSqlSupport.projectId, isEqualTo(proId))
                .build()
                .execute();
        redisService.remove("ProductAuction:"+proId);

        //新增新的productAuction
        Double upsetTotalPrice = 0.0;
        List<ProductAuctionDataReqDto> productAuctionDataList = projectReqDto.getProductAuctionDataList();
        for (int i = 0; i < productAuctionDataList.size(); i++) {
            ProductAuctionDataReqDto productAuctionDataReqDto = productAuctionDataList.get(i);
            //(1).校验字典是否存在
            Long quantityUnit = productAuctionDataReqDto.getQuantityUnit();
            cacheUtil.getDataDictName(quantityUnit);
            //(2).保存productAuction
            ProductAuction productAuction = VoPoConverterUtil.copyProperties(productAuctionDataReqDto, ProductAuction.class);
            productAuction.setProjectId(proId).setCreateTime(System.currentTimeMillis());
            productAuctionMapper.insert(productAuction);

            //(3).累加总价
            Double upsetPrice = productAuctionDataReqDto.getUpsetPrice();
            Double quantity = productAuctionDataReqDto.getQuantity();
            Double curProductAuctionTotalPrice = upsetPrice * quantity;
            upsetTotalPrice += curProductAuctionTotalPrice;

            //(4).将产品信息存入redis
            redisService.hmSet("ProductAuction:"+proId, String.valueOf(productAuction.getId()), JSONObject.toJSONString(productAuction));


            //(5).将单价添加到redis
            //redisService.hIncr(RedisKey.ProjectBidUnitPriceData+proId, String.valueOf(productAuction.getId()),upsetPrice);
            redisService.hmSet(RedisKey.ProjectBidUnitPriceData+proId,String.valueOf(productAuction.getId()),String.valueOf(upsetPrice));
        }


        //4.保存
        project.setUpsetTotalPrice(upsetTotalPrice);
        project.setEndTime(projectReqDto.getStartTime() + projectReqDto.getBidIncrMaxTime()*60*1000L);
        projectMapper.updateByPrimaryKey(project);


        //5.更新项目到redis
        redisService.hmSet("Project", String.valueOf(proId), JSONObject.toJSONString(project));

        //5.将总价添加到redis
        redisService.hmSet(RedisKey.ProjectBidTotalPriceData,String.valueOf(proId),String.valueOf(upsetTotalPrice));

        //7.返回结果
        Map<String,Object> resultMap = new HashMap<>();
        resultMap.put("msg","更新项目信息成功");
        return resultMap;
    }

        @Override
        @Transactional
        public Map<String, Object> insertOrUpdateProject(ProjectReqDto projectReqDto) {

            //1.参数校验

            //project是否存在
            Project project = projectMapper.selectByPrimaryKey(projectReqDto.getId());
            if(ObjUtil.isEmpty(project)){
                throw new IllegalArgumentException("id为:"+projectReqDto.getId()+"的项目不存在");
            }

            //3.更新Project
            //(1)复制ProjectDto中的请求参数到Project
            VoPoConverterUtil.beanConverterNotNull(projectReqDto, project);


            //4.保存
            projectMapper.updateByPrimaryKey(project);

            //5.返回结果
            Map<String,Object> resultMap = new HashMap<>();
            resultMap.put("msg","更新项目信息成功");
            return resultMap;
        }

    @Override
    public Map<String, Object> getProjectById(Long id){
        Project e = projectMapper.selectByPrimaryKey(id);
        if(ObjUtil.isEmpty(e)){
            throw new IllegalArgumentException("id为:"+id+"的项目信息不存在");
        }

        Long transUserId = null;
        Long transStatus = e.getTransStatus();
        if(transStatus.equals(1602L)){
            Long bidRecordId = e.getBidRecordId();
            BidRecord bidRecord = bidRecordMapper.selectByPrimaryKey(bidRecordId);
            transUserId = bidRecord.getUserId();
        }

        Map<String, Object> attr = new HashMap<>();
                attr.put("id", e.getId());
                attr.put("name", e.getName());
                attr.put("startTime", e.getStartTime());
                attr.put("endTime", e.getEndTime());
                attr.put("signUpStartTime", e.getStartTime() - signUpTime*60*60*1000L);
                attr.put("bidEndTime", e.getEndTime());
                attr.put("upsetTotalPrice", e.getUpsetTotalPrice());
                attr.put("productAuctionDataList", redisService.hmGetValueList("ProductAuction:"+e.getId()));
                attr.put("bidIncrMaxTime", e.getBidIncrMaxTime());
                attr.put("oosUrl", ObjUtil.isEmpty(e.getOosUrl())?null:Arrays.stream(e.getOosUrl().split(",")).map(s -> {
                    return minioUtil.getAccessUrl()+s;
                }).collect(Collectors.toList()));
                attr.put("auctionStatus", e.getAuctionStatus());
                attr.put("projectDetails", e.getProjectDetails());
                attr.put("bidNotes", e.getBidNotes());
                attr.put("bidRule", e.getBidRule());
                attr.put("contact", e.getContact());
                attr.put("contactMobile", e.getContactMobile());
                attr.put("transStatus", e.getTransStatus());
                attr.put("transTotalPrice", e.getTransTotalPrice());
                attr.put("bidRecordId", e.getBidRecordId());
                attr.put("transUserId", transUserId);
                attr.put("orderNum", e.getOrderNum());
                attr.put("createTime", e.getCreateTime());
        return attr;
    }

    @Override
    public PageVo<Map<String, Object>> getProjectListPageVo(ProjectPageReqDto projectPageReqDto){

        //1.查询列表
        List<Project> list = queryListByPageReqDto(projectPageReqDto,true);

        //2.构建pageVo
        PageVo<Project> pageVo = new PageVo<>(list);

        //3.对象转为map分页输出
        return PageVo.of(
                pageVo,
                e -> {
                    Map<String, Object> attr = new HashMap<>();
                            attr.put("id", e.getId());
                            attr.put("name", e.getName());
                            attr.put("startTime", e.getStartTime());
                            attr.put("endTime", e.getEndTime());
                            attr.put("signUpStartTime", e.getStartTime() - signUpTime*60*60*1000L);
                            attr.put("bidEndTime", e.getEndTime());
                            attr.put("upsetTotalPrice", e.getUpsetTotalPrice());
                            attr.put("productAuctionDataList", redisService.hmGetValueList("ProductAuction:"+e.getId()));
                            attr.put("bidIncrMaxTime", e.getBidIncrMaxTime());
                            attr.put("oosUrl", ObjUtil.isEmpty(e.getOosUrl())?null:Arrays.stream(e.getOosUrl().split(",")).map(s -> {
                                return minioUtil.getAccessUrl()+s;
                            }).collect(Collectors.toList()));
                            attr.put("auctionStatus", e.getAuctionStatus());
                            attr.put("projectDetails", e.getProjectDetails());
                            attr.put("bidNotes", e.getBidNotes());
                            attr.put("bidRule", e.getBidRule());
                            attr.put("contact", e.getContact());
                            attr.put("contactMobile", e.getContactMobile());
                            attr.put("transStatus", e.getTransStatus());
                            attr.put("transTotalPrice", e.getTransTotalPrice());
                            attr.put("bidRecordId", e.getBidRecordId());
                            attr.put("orderNum", e.getOrderNum());
                            attr.put("createTime", e.getCreateTime());
                    return attr;
                }
        );
    }

    @Override
    public void downloadTemplateExcel(HttpServletResponse response){
        //1.查询到该对象的导入模板
        /*Project project = projectMapper.selectByExampleOne()
                .where(ProjectDynamicSqlSupport.fileKey, isEqualTo("projectTemplateExcel"))
                .build()
                .execute();
        if(ObjUtil.isEmpty(project)){
            throw new IllegalArgumentException("模板文件暂未上传,请联系管理员");
        }
        //2.响应文件到页面
        minioUtil.download(project.getStorePath(),project.getFileName(),response);*/
    }

    @Override
    public Map<String, Object> importByExcel(MultipartHttpServletRequest request){

        //1.文件是否为空
        MultipartFile excelFile = request.getFile("xls");
        if (ObjUtil.isEmpty(excelFile)) {
            throw new IllegalArgumentException("文件不能为空");
        }

        //2.清空-->字段重复校验map
        fieldDupValidator.resetFieldSetMap();

        //3.获取excel表格每行的内容
        ExcelReader excelReader = null;
        InputStream in = null;
        ProjectExcelListener projectExcelListener = new ProjectExcelListener(this,validator,fieldDupValidator);
        try {
            in = excelFile.getInputStream();
            EasyExcel.read(in, ProjectExcelVo.class, projectExcelListener).sheet().doRead();
        } catch (IOException ex) {
            ex.getStackTrace();
        } finally {
            try {
                in.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            if (excelReader != null) {
                excelReader.finish();
            }
        }

        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("msg", "导入项目成功");
        return resultMap;
    }

    @Override
    public void exportToExcel(ProjectPageReqDto projectPageReqDto,HttpServletResponse response){
        //1.查询列表
        List<Project> projectList = queryListByPageReqDto(projectPageReqDto,false);

        //2.将原始列表转为导出对象列表
        List<ProjectExcelVo> projectExcelVoList = projectList.stream().map(e -> {
            ProjectExcelVo projectExcelVo = VoPoConverterUtil.copyProperties(e, ProjectExcelVo.class);
            return projectExcelVo;
            }).collect(Collectors.toList());

        //3.获取到输出流
        OutputStream outputStream = null;
        try {
            //(1).文件名，表名，表头，格式
            String sheetName = "项目";
            String fileName = sheetName.concat(String.valueOf(System.currentTimeMillis())).concat(".xlsx");

            //(2).response输出文件流格式
            //response.setContentType("application/vnd.ms-excel");
            response.setContentType("APPLICATION/OCTET-STREAM");
            response.setCharacterEncoding("utf-8");
            response.setHeader("Content-Disposition", "attachment; filename=" + URLEncoder.encode(fileName, "UTF-8"));
            //(3).获取到输出流
            outputStream = response.getOutputStream();
        } catch (IOException e) {
            e.printStackTrace();
        }

        //4.将输出流写入到response,直接响应给浏览器
        EasyExcel.write(outputStream)
                .head(ProjectExcelVo.class)
                .sheet("Sheet1")
                .doWrite(projectExcelVoList);
    }

    @Transactional
    @Override
    public Map<String, Object> updateStatus(UpdateProjectStatusReqDto updateProjectStatusReqDto) {
        //project是否存在
        Long projectId = updateProjectStatusReqDto.getId();
        Project project = projectMapper.selectByPrimaryKey(projectId);
        if(ObjUtil.isEmpty(project)){
            throw new IllegalArgumentException("id为:"+ projectId +"的项目不存在");
        }

        //只能更新为上线或下线,其他状态由定时器任务自动更新
        Long auctionStatus = updateProjectStatusReqDto.getAuctionStatus();
        if(!(auctionStatus.equals(1502L) || auctionStatus.equals(1503L))){
            throw new IllegalArgumentException("只能更新为上线或下线");
        }

        //报名中/交易中/公式中不允许修改为上线或下线
        Long projectAuctionStatus = project.getAuctionStatus();
        if(!(projectAuctionStatus.equals(1502L) || projectAuctionStatus.equals(1503L))){
            throw new IllegalArgumentException("项目当前状态不允许更新为上线或下线");
        }

        //项目拍卖上线(即将开始报名)-新增定时任务
        if(auctionStatus.equals(1503L)){
            //1.向xxl-job-admin新增定时任务-执行修改状态为 报名中
            Map<String, Object> paramMap = new HashMap<>();
            paramMap.put("projectId", projectId);
            String paramJsonStr = JSONUtil.toJsonStr(paramMap);

            Long startTime = project.getStartTime();
            Long currentTime = System.currentTimeMillis();
            if(!ObjUtil.isEmpty(startTime)) {
                if(startTime > currentTime){
                    //离项目开始时间小于等于报名小时数(72小时即3天)时直接修改状态为报名中,如果是周末需要顺延
                    Long signUpDay = signUpTime*60*60*1000L + project.getWeekendCount()*24*60*60*1000L;
                    Long checkPointTime = currentTime + signUpDay;
                    if(checkPointTime>= startTime){
                        project.setAuctionStatus(1504L);
                        projectMapper.updateByPrimaryKey(project);
                    }else {

                        //(1)更新状态
                        projectMapper.update(update(ProjectDynamicSqlSupport.project)
                                .set(ProjectDynamicSqlSupport.auctionStatus).equalToWhenPresent(auctionStatus)
                                .where(ProjectDynamicSqlSupport.id, isEqualTo(projectId))
                                .build()
                                .render(RenderingStrategies.MYBATIS3));

                        //(2).离项目开始时间大于3天(如果是周末需要顺延)时创建定时任务到时间点自动修改状态为报名中
                        Long beforeSignUpDay = startTime - signUpDay;
                        String beforeSignUpDayTimeDateStr = DateUtil.timeStamp2dateStr(beforeSignUpDay);
                        String beforeSignUpDayCron = DateUtil.dateStrConvertCronExpression(beforeSignUpDayTimeDateStr, null);
                        TimeTask existBmzTimeTask = timeTaskMapper.selectByExampleOne()
                                .where(TimeTaskDynamicSqlSupport.projectId, isEqualTo(projectId))
                                .and(TimeTaskDynamicSqlSupport.type, isEqualTo(1902L))
                                .build()
                                .execute();
                        if(ObjUtil.isEmpty(existBmzTimeTask)){
                            //--1.执行下发
                            String jobId = XxlJobUtil.addJob(adminAddresses, beforeSignUpDayCron, "updateProjectAuctionStatusBmzJobHandler", paramJsonStr,project.getName()+"("+projectId+")_修改项目竞拍状态为报名中定时任务","bid-service");
                            //--2.构建TimeTask
                            TimeTask bmzTimeTask = TimeTask.builder()
                                    .type(1902L)
                                    .projectId(projectId)
                                    .projectName(project.getName())
                                    .jobId(jobId)
                                    .xxlJobAdminAddress(adminAddresses)
                                    .corn(beforeSignUpDayCron)
                                    .cornTime(beforeSignUpDay)
                                    .handler("updateProjectAuctionStatusBmzJobHandler")
                                    .appName("bid-service")
                                    .createTime(System.currentTimeMillis())
                                    .build();
                            timeTaskMapper.insert(bmzTimeTask);
                        }
                    }


                    //(2).增加定时-执行项目开始时自动修改状态为 交易中
                    //--1.项目拍卖开始时间
                    String startTimeDateStr = DateUtil.timeStamp2dateStr(startTime);
                    String jyzCron = DateUtil.dateStrConvertCronExpression(startTimeDateStr, null);

                    //--2.执行下发
                    TimeTask exitstJyzTimeTask = timeTaskMapper.selectByExampleOne()
                            .where(TimeTaskDynamicSqlSupport.projectId, isEqualTo(projectId))
                            .and(TimeTaskDynamicSqlSupport.type, isEqualTo(1903L))
                            .build()
                            .execute();
                    if(ObjUtil.isEmpty(exitstJyzTimeTask)){
                        //--1.执行下发
                        String jobId = XxlJobUtil.addJob(adminAddresses, jyzCron, "updateProjectAuctionStatusJyzJobHandler", paramJsonStr,project.getName()+"("+projectId+")_修改项目竞拍状态为交易中定时任务","bid-service");
                        //--2.构建TimeTask
                        TimeTask jyzTimeTask = TimeTask.builder()
                                .type(1903L)
                                .projectId(projectId)
                                .projectName(project.getName())
                                .jobId(jobId)
                                .xxlJobAdminAddress(adminAddresses)
                                .corn(jyzCron)
                                .cornTime(startTime)
                                .handler("updateProjectAuctionStatusJyzJobHandler")
                                .appName("bid-service")
                                .createTime(System.currentTimeMillis())
                                .build();
                        timeTaskMapper.insert(jyzTimeTask);
                    }


                    //(3).增加定时-执行拍卖结束修改拍卖状态为公示中
                    //--2.开始时间加上竞价最长时间即为竞价结束时间
                    Integer bidIncrMaxTime = project.getBidIncrMaxTime();
                    String gszCron = DateUtil.dateStrConvertCronExpression(startTimeDateStr, bidIncrMaxTime);

                    //(2).执行下发
                    TimeTask existGszTimeTask = timeTaskMapper.selectByExampleOne()
                            .where(TimeTaskDynamicSqlSupport.projectId, isEqualTo(projectId))
                            .and(TimeTaskDynamicSqlSupport.type, isEqualTo(1904L))
                            .build()
                            .execute();
                    if(ObjUtil.isEmpty(existGszTimeTask)){
                        //--1.执行下发
                        String jobId = XxlJobUtil.addJob(adminAddresses, gszCron, "updateProjectAuctionStatusGszJobHandler", paramJsonStr,project.getName()+"("+projectId+")_修改项目竞拍状态为公示中定时任务","bid-service");
                        //--2.构建TimeTask
                        TimeTask gszTimeTask = TimeTask.builder()
                                .type(1904L)
                                .projectId(projectId)
                                .projectName(project.getName())
                                .jobId(jobId)
                                .xxlJobAdminAddress(adminAddresses)
                                .corn(gszCron)
                                .cornTime(startTime + bidIncrMaxTime*60*1000L)
                                .handler("updateProjectAuctionStatusGszJobHandler")
                                .appName("bid-service")
                                .createTime(System.currentTimeMillis())
                                .build();
                        timeTaskMapper.insert(gszTimeTask);
                    }


                    //(4).增加定时-执行拍卖结束修改拍卖状态为已结束
                    //--2.开始时间+竞价最长时间+公示时间即为竞价结束时间
                    Long bidIncrMaxTimeStamp = bidIncrMaxTime * 60 * 1000L;
                    //公示结束时间
                    Long publicityDay = publicityTime*60*60*1000L;
                    Long yjsEndTime = startTime + bidIncrMaxTimeStamp + publicityDay;
                    String YJSEndTimeDateStr = DateUtil.timeStamp2dateStr(yjsEndTime);
                    String yjsCron = DateUtil.dateStrConvertCronExpression(YJSEndTimeDateStr, null);

                    //(2).执行下发
                    TimeTask existYjsTimeTask = timeTaskMapper.selectByExampleOne()
                            .where(TimeTaskDynamicSqlSupport.projectId, isEqualTo(projectId))
                            .and(TimeTaskDynamicSqlSupport.type, isEqualTo(1905L))
                            .build()
                            .execute();
                    if(ObjUtil.isEmpty(existYjsTimeTask)){
                        //--1.执行下发
                        String jobId = XxlJobUtil.addJob(adminAddresses, yjsCron, "updateProjectAuctionStatusYjsJobHandler", paramJsonStr,project.getName()+"("+projectId+")_修改项目竞拍状态为已结束定时任务","bid-service");
                        //--2.构建TimeTask
                        TimeTask yjsTimeTask = TimeTask.builder()
                                .type(1905L)
                                .projectId(projectId)
                                .projectName(project.getName())
                                .jobId(jobId)
                                .xxlJobAdminAddress(adminAddresses)
                                .corn(yjsCron)
                                .cornTime(publicityDay)
                                .handler("updateProjectAuctionStatusYjsJobHandler")
                                .appName("bid-service")
                                .createTime(System.currentTimeMillis())
                                .build();
                        timeTaskMapper.insert(yjsTimeTask);
                    }


                    //(5).增加定时-在结束前10秒,检查竞拍规定的时长范围内是否有人出过价，有人出价则自动延续120秒
                    Long checkTime = startTime - 10000L;
                    String checkTimeDateStr = DateUtil.timeStamp2dateStr(checkTime);
                    String checkCron = DateUtil.dateStrConvertCronExpression(checkTimeDateStr, bidIncrMaxTime);

                    //(2).执行下发
                    TimeTask existCheckTimeTask = timeTaskMapper.selectByExampleOne()
                            .where(TimeTaskDynamicSqlSupport.projectId, isEqualTo(projectId))
                            .and(TimeTaskDynamicSqlSupport.type, isEqualTo(1906L))
                            .build()
                            .execute();
                    if(ObjUtil.isEmpty(existCheckTimeTask)){
                        //--1.执行下发
                        String jobId = XxlJobUtil.addJob(adminAddresses, checkCron, "checkProjectBidStatusJobHandler", paramJsonStr,project.getName()+"("+projectId+")_检查项目在竞拍时长内是否有人出价定时任务","bid-service");
                        //--2.构建TimeTask
                        TimeTask gszTimeTask = TimeTask.builder()
                                .type(1906L)
                                .projectId(projectId)
                                .projectName(project.getName())
                                .jobId(jobId)
                                .xxlJobAdminAddress(adminAddresses)
                                .corn(gszCron)
                                .cornTime(checkTime + bidIncrMaxTime*60*1000L)
                                .handler("checkProjectBidStatusJobHandler")
                                .appName("bid-service")
                                .createTime(System.currentTimeMillis())
                                .build();
                        timeTaskMapper.insert(gszTimeTask);
                    }

                }else {
                    //项目开始时间小于当前时间,项目过期-状态为结束
                    project.setAuctionStatus(1507L);
                    projectMapper.updateByPrimaryKey(project);
                }
            }
        }

        //项目拍卖下线-删除该项目所有的定时任务
        if(auctionStatus.equals(1502L)){
            List<TimeTask> projectTimeTaskList = timeTaskMapper.selectByExample()
                    .where(TimeTaskDynamicSqlSupport.projectId, isEqualTo(projectId))
                    .build()
                    .execute();
            if(!ObjUtil.isEmpty(projectTimeTaskList)){
                for (int i = 0; i < projectTimeTaskList.size(); i++) {
                    TimeTask projectTimeTask = projectTimeTaskList.get(i);

                    //--1.删除任务
                    String jobId = projectTimeTask.getJobId();
                    XxlJobUtil.removeJob(adminAddresses,jobId);

                    //--2.删除本地定时任务信息
                    timeTaskMapper.deleteByPrimaryKey(projectTimeTask.getId());
                }
            }
            project.setAuctionStatus(auctionStatus);
            projectMapper.updateByPrimaryKey(project);
        }


        //5.更新项目到redis
        redisService.hmSet("Project", String.valueOf(projectId), JSONObject.toJSONString(project));

        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("msg", "更新状态成功");
        return resultMap;
    }

    private List<Project> queryListByPageReqDto(ProjectPageReqDto projectPageReqDto,Boolean needPaging){
        //1.查询语句构建
        QueryExpressionDSL<MyBatis3SelectModelAdapter<List<Project>>>.QueryExpressionWhereBuilder builder = projectMapper.selectByExample().where();

        //2.根据查询条件封装查询命令
        //(1).关键字查询
        String name = projectPageReqDto.getName();
        if(!ObjUtil.isEmpty(name)){
        builder.and(ProjectDynamicSqlSupport.name, isLike("%"+name+"%"));
        }

        Long auctionStatus = projectPageReqDto.getAuctionStatus();
        if(!ObjUtil.isEmpty(auctionStatus)){
        builder.and(ProjectDynamicSqlSupport.auctionStatus, isEqualTo(auctionStatus));
        }

        Long transStatus = projectPageReqDto.getTransStatus();
        if(!ObjUtil.isEmpty(transStatus)){
            builder.and(ProjectDynamicSqlSupport.transStatus, isEqualTo(transStatus));
        }

        Long startTime = projectPageReqDto.getStartTime();
        Long endTime = projectPageReqDto.getEndTime();
        if (startTime != null && endTime != null) {
        builder.and(ProjectDynamicSqlSupport.startTime, isGreaterThanOrEqualTo(startTime));
        builder.and(ProjectDynamicSqlSupport.endTime, isLessThanOrEqualTo(endTime));
        } else {
            if (startTime != null) {
            builder.and(ProjectDynamicSqlSupport.startTime, isGreaterThanOrEqualTo(startTime));
            }
            if (endTime != null) {
            builder.and(ProjectDynamicSqlSupport.endTime, isLessThanOrEqualTo(endTime));
            }
        }

        //3.排序
        builder.orderBy(ProjectDynamicSqlSupport.orderNum);

        //4.查询(不需要分页即列表)
        if(needPaging){
        PageHelper.startPage(projectPageReqDto.getPageNum(), projectPageReqDto.getPageSize());
        }

        List<Project> list = builder.build().execute();
        return list;
    }
}