package com.jsxa.iotPer.bid.service.impl;

import com.github.pagehelper.PageHelper;
import com.alibaba.excel.EasyExcel;
import com.alibaba.excel.ExcelReader;
import com.jsxa.iotPer.bid.bo.dto.BidReqDto;
import com.jsxa.iotPer.bid.bo.dto.UpdateSignUpStatusReqDto;
import com.jsxa.iotPer.bid.bo.po.Project;
import com.jsxa.iotPer.bid.mapper.*;
import com.jsxa.iotPer.bid.service.BidService;
import com.jsxa.iotPer.common.bo.vo.PageVo;
import com.jsxa.iotPer.common.bo.vo.UserVo;
import com.jsxa.iotPer.common.cache.DictCache;
import com.jsxa.iotPer.common.redis.RedisKey;
import com.jsxa.iotPer.common.redis.RedisService;
import com.jsxa.iotPer.bid.bo.dto.SignUpReqDto;
import com.jsxa.iotPer.bid.bo.dto.SignUpPageReqDto;
import com.jsxa.iotPer.bid.bo.po.SignUp;
import com.jsxa.iotPer.bid.excel.SignUpExcelListener;
import com.jsxa.iotPer.bid.excel.SignUpExcelVo;
import com.jsxa.iotPer.common.utils.*;
import com.jsxa.iotPer.common.redis.RedisService;
import com.jsxa.iotPer.common.redis.RedisKey;
import com.jsxa.iotPer.common.validator.FieldDupValidator;
import com.jsxa.iotPer.bid.service.SignUpService;
import org.mybatis.dynamic.sql.render.RenderingStrategies;
import org.springframework.stereotype.Service;
import org.mybatis.dynamic.sql.select.MyBatis3SelectModelAdapter;
import org.mybatis.dynamic.sql.select.QueryExpressionDSL;
import org.springframework.transaction.annotation.Transactional;
import lombok.extern.slf4j.Slf4j;
import lombok.RequiredArgsConstructor;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Validator;


import javax.annotation.Resource;
import java.io.*;
import java.util.*;
import java.util.stream.Collectors;

import static org.mybatis.dynamic.sql.SqlBuilder.*;

/**
 * @Author zhangyong
 * @Description //SignUpService接口实现类
 * @Date 2023/12/26 17:40
 * @Param
 * @return
 */
@Service
@Slf4j
@RequiredArgsConstructor
public class SignUpServiceImpl implements SignUpService {

    private final DictCache dictCache;

    private final CacheUtil cacheUtil;

    private final MinioUtil minioUtil;

    private final Validator validator;

    private final FieldDupValidator fieldDupValidator;

    private final BidService bidService;

    private final SignUpMapper signUpMapper;

    private final ProjectMapper projectMapper;

    private final BidMapper bidMapper;


    @Override
    @Transactional
    public Map<String, Object> addSignUp(SignUpReqDto signUpReqDto) {

        //1.参数校验
        Long projectId = signUpReqDto.getProjectId();
        Project project = projectMapper.selectByPrimaryKey(projectId);
        if(ObjUtil.isEmpty(project)){
            throw new IllegalArgumentException("id为:"+projectId+"的项目信息不存在");
        }
        Long auctionStatus = project.getAuctionStatus();
        if(1504 != auctionStatus){
            throw new IllegalArgumentException("当前项目不处于报名中，请联系管理员");
        }

        UserVo userVo = UserUtil.getUserVo();
        String roleKey = userVo.getRoleKey();
        if(roleKey.equals("SuperAdmin") || roleKey.equals("Admin")){
            throw new IllegalArgumentException("管理员不能参与报名");
        }

        SignUp execute = signUpMapper.selectByExampleOne()
                .where(SignUpDynamicSqlSupport.projectId, isEqualTo(projectId))
                .and(SignUpDynamicSqlSupport.userId, isEqualTo(userVo.getId()))
                .build()
                .execute();
        if(!ObjUtil.isEmpty(execute)){
            throw new IllegalArgumentException("该用户已报名过该项目，请勿重复操作");
        }

        //2.设置参数
        //(1)复制SignUpReqDto中的请求参数到SignUp
        SignUp signUp = VoPoConverterUtil.copyProperties(signUpReqDto, SignUp.class);

        //(2)设置其他属性
        signUp.setId(new IdWorker().nextId())
                .setOrgName(userVo.getOrgName())
                .setUserId(userVo.getId())
                .setUserName(userVo.getNickName())
                .setUserMobile(userVo.getMobileNumber())
                .setApplyStatus(1802L)
                .setApplyTime(System.currentTimeMillis());

        //3.保存
        signUpMapper.insert(signUp);


        //4保存个人竞拍信息
        BidReqDto bidReqDto = BidReqDto.builder()
                .projectId(projectId)
                .userId(signUp.getUserId())
                .signUpTime(signUp.getApplyTime())
                .applyStatus(signUp.getApplyStatus())
                .build();
        bidService.addBid(bidReqDto);

        //5.返回结果
        Map<String,Object> resultMap = new HashMap<>();
        resultMap.put("msg","添加报名信息信息成功");
        return resultMap;
    }

    @Override
    @Transactional
    public Map<String, Object> deleteSignUpById(Long id){
        SignUp signUp = signUpMapper.selectByPrimaryKey(id);
        if(signUp == null){
            throw new IllegalArgumentException("id为:"+id+"的报名信息不存在");
        }

        signUpMapper.deleteByExample()
                    .where(SignUpDynamicSqlSupport.id, isEqualTo(id))
                    .build()
                    .execute();

        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("msg","删除报名信息成功");
        return resultMap;
    }

    @Override
    @Transactional
    public Map<String, Object> updateSignUp(SignUpReqDto signUpReqDto) {
        //1.参数校验

        //2.判断signUp是否存在
        SignUp signUp = signUpMapper.selectByPrimaryKey(signUpReqDto.getId());
        if(ObjUtil.isEmpty(signUp)){
            throw new IllegalArgumentException("id为:"+signUpReqDto.getId()+"的报名信息不存在");
        }

        //3.更新SignUp
        //(1)复制SignUpDto中的请求参数到SignUp
        VoPoConverterUtil.beanConverterNotNull(signUpReqDto, signUp);

        //4.保存
        signUpMapper.updateByPrimaryKey(signUp);

        //5.返回结果
        Map<String,Object> resultMap = new HashMap<>();
        resultMap.put("msg","更新报名信息成功");
        return resultMap;
    }

        @Override
        @Transactional
        public Map<String, Object> insertOrUpdateSignUp(SignUpReqDto signUpReqDto) {
            //1.参数校验

            //2.判断signUp是否存在
            SignUp signUp = signUpMapper.selectByPrimaryKey(signUpReqDto.getId());
            if(ObjUtil.isEmpty(signUp)){
                throw new IllegalArgumentException("id为:"+signUpReqDto.getId()+"的报名信息不存在");
            }

            //3.更新SignUp
            //(1)复制SignUpDto中的请求参数到SignUp
            VoPoConverterUtil.beanConverterNotNull(signUpReqDto, signUp);

            //4.保存
            signUpMapper.updateByPrimaryKey(signUp);

            //5.返回结果
            Map<String,Object> resultMap = new HashMap<>();
            resultMap.put("msg","更新报名信息成功");
            return resultMap;
        }

    @Override
    public Map<String, Object> getSignUpById(Long id){
        SignUp e = signUpMapper.selectByPrimaryKey(id);
        if(ObjUtil.isEmpty(e)){
            throw new IllegalArgumentException("id为:"+id+"的报名信息不存在");
        }

        Map<String, Object> attr = new HashMap<>();
        attr.put("id", e.getId());
        attr.put("projectId", e.getProjectId());
        attr.put("userId", e.getUserId());
        attr.put("orgName", e.getOrgName());
        attr.put("userName", e.getUserName());
        attr.put("userMobile", e.getUserMobile());
        attr.put("applyStatus", e.getApplyStatus());
        attr.put("msg", e.getMsg());
        attr.put("applyTime", e.getApplyTime());
        return attr;
    }

    @Override
    public PageVo<Map<String, Object>> getSignUpListPageVo(SignUpPageReqDto signUpPageReqDto){

        //1.查询列表
        List<SignUp> list = queryListByPageReqDto(signUpPageReqDto,true);

        //2.构建pageVo
        PageVo<SignUp> pageVo = new PageVo<>(list);

        //3.对象转为map分页输出
        return PageVo.of(
                pageVo,
                e -> {
                    Map<String, Object> attr = new HashMap<>();
                    attr.put("id", e.getId());
                    attr.put("projectId", e.getProjectId());
                    attr.put("userId", e.getUserId());
                    attr.put("orgName", e.getOrgName());
                    attr.put("userName", e.getUserName());
                    attr.put("userMobile", e.getUserMobile());
                    attr.put("applyStatus", e.getApplyStatus());
                    attr.put("msg", e.getMsg());
                    attr.put("applyTime", e.getApplyTime());
                    return attr;
                }
        );
    }

    @Override
    public void downloadTemplateExcel(HttpServletResponse response){
        //1.查询到该对象的导入模板
        /*SignUp signUp = signUpMapper.selectByExampleOne()
                .where(SignUpDynamicSqlSupport.fileKey, isEqualTo("signUpTemplateExcel"))
                .build()
                .execute();
        if(ObjUtil.isEmpty(signUp)){
            throw new IllegalArgumentException("模板文件暂未上传,请联系管理员");
        }
        //2.响应文件到页面
        minioUtil.download(signUp.getStorePath(),signUp.getName(),response);*/
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
        SignUpExcelListener signUpExcelListener = new SignUpExcelListener(this,validator,fieldDupValidator);
        try {
            in = excelFile.getInputStream();
            EasyExcel.read(in, SignUpExcelVo.class, signUpExcelListener).sheet().doRead();
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
        resultMap.put("msg", "导入系统文件成功");
        return resultMap;
    }

    @Override
    public void exportToExcel(SignUpPageReqDto signUpPageReqDto,HttpServletResponse response){
        //1.查询列表
        List<SignUp> signUpList = queryListByPageReqDto(signUpPageReqDto,false);

        //2.将原始列表转为导出对象列表
        List<SignUpExcelVo> signUpExcelVoList = signUpList.stream().map(e -> {
            SignUpExcelVo signUpExcelVo = VoPoConverterUtil.copyProperties(e, SignUpExcelVo.class);
            return signUpExcelVo;
        }).collect(Collectors.toList());

        //3.获取到输出流
        OutputStream outputStream = null;
        try {
            //(1).文件名，表名，表头，格式
            String sheetName = "报名信息";
            String fileName = sheetName.concat(String.valueOf(System.currentTimeMillis())).concat(".xlsx");

            //(2).response输出文件流格式
            response.setContentType("APPLICATION/OCTET-STREAM");
            response.setHeader("Content-Disposition", "attachment;filename=" + new String(fileName.getBytes("gb2312"), "ISO8859-1"));

            //(3).获取到输出流
            outputStream = response.getOutputStream();
        } catch (IOException e) {
            e.printStackTrace();
        }

        //4.将输出流写入到response,直接响应给浏览器
        EasyExcel.write(outputStream)
                .head(SignUpExcelVo.class)
                .sheet("Sheet1")
                .doWrite(signUpExcelVoList);
    }

    @Override
    public Map<String, Object> updateSignUpStatus(UpdateSignUpStatusReqDto updateSignUpStatusReqDto) {

        Long id = updateSignUpStatusReqDto.getId();
        SignUp e = signUpMapper.selectByPrimaryKey(id);
        if(ObjUtil.isEmpty(e)){
            throw new IllegalArgumentException("id为:"+id+"的报名信息不存在");
        }


        Long applyStatus = updateSignUpStatusReqDto.getApplyStatus();
        cacheUtil.getDataDictName(applyStatus);

        if(applyStatus.equals(1802L)){
            throw new IllegalArgumentException("审核状态只能为通过/未通过");
        }

        String msg = updateSignUpStatusReqDto.getMsg();
        if(applyStatus.equals(1804L)){
            if(ObjUtil.isEmpty(msg)){
                throw new IllegalArgumentException("审核未通过原因不能为空");
            }
        }

        //更新状态
        signUpMapper.update(update(SignUpDynamicSqlSupport.signUp)
                .set(SignUpDynamicSqlSupport.applyStatus).equalToWhenPresent(applyStatus)
                .set(SignUpDynamicSqlSupport.msg).equalToWhenPresent(msg)
                .where(SignUpDynamicSqlSupport.id, isEqualTo(id))
                .build()
                .render(RenderingStrategies.MYBATIS3));

        //更新竞拍信息中报名审核状态
        bidMapper.update(update(BidDynamicSqlSupport.bid)
                .set(BidDynamicSqlSupport.applyStatus).equalToWhenPresent(applyStatus)
                .where(BidDynamicSqlSupport.projectId, isEqualTo(e.getProjectId()))
                .and(BidDynamicSqlSupport.userId, isEqualTo(e.getUserId()))
                .build()
                .render(RenderingStrategies.MYBATIS3));

        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("msg", "更新审核状态成功");
        return resultMap;
    }

    private List<SignUp> queryListByPageReqDto(SignUpPageReqDto signUpPageReqDto,Boolean needPaging){
        //1.查询语句构建
        QueryExpressionDSL<MyBatis3SelectModelAdapter<List<SignUp>>>.QueryExpressionWhereBuilder builder = signUpMapper.selectByExample().where();

        //2.根据查询条件封装查询命令
        //(1).关键字查询
        String orgName = signUpPageReqDto.getOrgName();
        if(!ObjUtil.isEmpty(orgName)){
        builder.and(SignUpDynamicSqlSupport.orgName, isLike("%"+orgName+"%"));
        }

        Long projectId = signUpPageReqDto.getProjectId();
        if(!ObjUtil.isEmpty(projectId)){
            builder.and(SignUpDynamicSqlSupport.projectId, isEqualTo(projectId));
        }

        Long userId = signUpPageReqDto.getUserId();
        if(!ObjUtil.isEmpty(userId)){
            builder.and(SignUpDynamicSqlSupport.userId, isEqualTo(userId));
        }

        Long applyStatus = signUpPageReqDto.getApplyStatus();
        if(!ObjUtil.isEmpty(applyStatus)){
        builder.and(SignUpDynamicSqlSupport.applyStatus, isEqualTo(applyStatus));
        }

        Long startTime = signUpPageReqDto.getStartTime();
        Long endTime = signUpPageReqDto.getEndTime();
        if (startTime != null && endTime != null) {
        builder.and(SignUpDynamicSqlSupport.applyTime, isGreaterThanOrEqualTo(startTime));
        builder.and(SignUpDynamicSqlSupport.applyTime, isLessThanOrEqualTo(endTime));
        } else {
            if (startTime != null) {
            builder.and(SignUpDynamicSqlSupport.applyTime, isGreaterThanOrEqualTo(startTime));
            }
            if (endTime != null) {
            builder.and(SignUpDynamicSqlSupport.applyTime, isLessThanOrEqualTo(endTime));
            }
        }

        //3.排序
        builder.orderBy(SignUpDynamicSqlSupport.applyTime.descending());

        //4.查询(不需要分页即列表)
        if(needPaging){
        PageHelper.startPage(signUpPageReqDto.getPageNum(), signUpPageReqDto.getPageSize());
        }

        List<SignUp> list = builder.build().execute();
        return list;
    }
}