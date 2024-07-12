package com.jsxa.iotPer.bid.service.impl;

import com.github.pagehelper.PageHelper;
import com.alibaba.excel.EasyExcel;
import com.alibaba.excel.ExcelReader;
import com.jsxa.iotPer.bid.bo.po.Project;
import com.jsxa.iotPer.bid.mapper.ProjectMapper;
import com.jsxa.iotPer.common.bo.po.User;
import com.jsxa.iotPer.common.bo.vo.PageVo;
import com.jsxa.iotPer.common.mapper.UserMapper;
import com.jsxa.iotPer.common.redis.RedisKey;
import com.jsxa.iotPer.common.redis.RedisService;
import com.jsxa.iotPer.bid.bo.dto.BidReqDto;
import com.jsxa.iotPer.bid.bo.dto.BidPageReqDto;
import com.jsxa.iotPer.bid.bo.po.Bid;
import com.jsxa.iotPer.bid.mapper.BidMapper;
import com.jsxa.iotPer.bid.mapper.BidDynamicSqlSupport;
import com.jsxa.iotPer.bid.excel.BidExcelListener;
import com.jsxa.iotPer.bid.excel.BidExcelVo;
import com.jsxa.iotPer.common.utils.*;
import com.jsxa.iotPer.common.redis.RedisService;
import com.jsxa.iotPer.common.redis.RedisKey;
import com.jsxa.iotPer.common.validator.FieldDupValidator;
import com.jsxa.iotPer.bid.service.BidService;
import org.springframework.beans.factory.annotation.Value;
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
 * @Description //BidService接口实现类
 * @Date 2023/12/27 10:53
 * @Param
 * @return
 */
@Service
@Slf4j
@RequiredArgsConstructor
public class BidServiceImpl implements BidService {

    @Value("${bid.project.signUpTime}")
    private Integer signUpTime;

    private final Validator validator;

    private final FieldDupValidator fieldDupValidator;

    private final BidMapper bidMapper;

    private final ProjectMapper projectMapper;

    private final UserMapper userMapper;


    @Override
    @Transactional
    public Map<String, Object> addBid(BidReqDto bidReqDto) {

        //1.参数校验
        Long projectId = bidReqDto.getProjectId();
        Project project = projectMapper.selectByPrimaryKey(projectId);
        if(ObjUtil.isEmpty(project)){
            throw new IllegalArgumentException("id为:"+projectId+"的项目信息不存在");
        }

        Long userId = bidReqDto.getUserId();
        User user = userMapper.selectByPrimaryKey(userId);
        if(ObjUtil.isEmpty(user)){
            throw new IllegalArgumentException("id为:"+userId+"的用户不存在");
        }

        //2.设置参数
        //(1)复制BidReqDto中的请求参数到Bid
        Bid bid = VoPoConverterUtil.copyProperties(bidReqDto, Bid.class);

        //(2)设置其他属性
        bid.setId(new IdWorker().nextId())
                .setProjectId(projectId)
                .setProjectName(project.getName())
                .setAuctionStatus(project.getAuctionStatus())
                .setUpsetTotalPrice(project.getUpsetTotalPrice())
                .setOrgId(user.getOrgId())
                .setOrgName(user.getOrgName())
                .setUserId(userId)
                .setUserName(user.getName())
                .setUserMobile(user.getMobileNumber())
                .setStartTime(project.getStartTime())
                .setEndTime(project.getEndTime())
                .setBidIncrMaxTime(project.getBidIncrMaxTime())
                .setApplyStatus(bidReqDto.getApplyStatus())
                .setSignUpTime(bidReqDto.getSignUpTime())
                .setCreateTime(System.currentTimeMillis());

        //3.保存
        bidMapper.insert(bid);

        //4.返回结果
        Map<String,Object> resultMap = new HashMap<>();
        resultMap.put("msg","添加竞拍信息成功");
        return resultMap;
    }

    @Override
    @Transactional
    public Map<String, Object> deleteBidById(Long id){
        Bid bid = bidMapper.selectByPrimaryKey(id);
        if(bid == null){
            throw new IllegalArgumentException("id为:"+id+"的竞拍信息不存在");
        }

        bidMapper.deleteByExample()
                    .where(BidDynamicSqlSupport.id, isEqualTo(id))
                    .build()
                    .execute();

        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("msg","删除竞拍成功");
        return resultMap;
    }

    @Override
    @Transactional
    public Map<String, Object> updateBid(BidReqDto bidReqDto) {
        //1.参数校验
        Long projectId = bidReqDto.getProjectId();
        Project project = projectMapper.selectByPrimaryKey(projectId);
        if(ObjUtil.isEmpty(project)){
            throw new IllegalArgumentException("id为:"+projectId+"的项目信息不存在");
        }

        Long userId = bidReqDto.getUserId();
        User user = userMapper.selectByPrimaryKey(userId);
        if(ObjUtil.isEmpty(user)){
            throw new IllegalArgumentException("id为:"+userId+"的用户不存在");
        }

        //2.判断bid是否存在
        Bid bid = bidMapper.selectByPrimaryKey(bidReqDto.getId());
        if(ObjUtil.isEmpty(bid)){
            throw new IllegalArgumentException("id为:"+bidReqDto.getId()+"的竞拍不存在");
        }

        //3.更新Bid
        //(1)复制BidDto中的请求参数到Bid
        VoPoConverterUtil.beanConverterNotNull(bidReqDto, bid);
        //(2)设置其他属性
        bid.setProjectId(projectId)
                .setProjectName(project.getName())
                .setAuctionStatus(project.getAuctionStatus())
                .setUpsetTotalPrice(project.getUpsetTotalPrice())
                .setOrgId(user.getOrgId())
                .setOrgName(user.getOrgName())
                .setUserId(userId)
                .setUserName(user.getName())
                .setUserMobile(user.getMobileNumber())
                .setStartTime(project.getStartTime())
                .setEndTime(project.getEndTime())
                .setBidIncrMaxTime(project.getBidIncrMaxTime())
                .setApplyStatus(bidReqDto.getApplyStatus())
                .setSignUpTime(bidReqDto.getSignUpTime());


        //4.保存
        bidMapper.updateByPrimaryKey(bid);

        //5.返回结果
        Map<String,Object> resultMap = new HashMap<>();
        resultMap.put("msg","更新竞拍信息成功");
        return resultMap;
    }

        @Override
        @Transactional
        public Map<String, Object> insertOrUpdateBid(BidReqDto bidReqDto) {
            //1.参数校验

            //2.判断bid是否存在
            Bid bid = bidMapper.selectByPrimaryKey(bidReqDto.getId());
            if(ObjUtil.isEmpty(bid)){
                throw new IllegalArgumentException("id为:"+bidReqDto.getId()+"的竞拍不存在");
            }

            //3.更新Bid
            //(1)复制BidDto中的请求参数到Bid
            VoPoConverterUtil.beanConverterNotNull(bidReqDto, bid);

            //4.保存
            bidMapper.updateByPrimaryKey(bid);

            //5.返回结果
            Map<String,Object> resultMap = new HashMap<>();
            resultMap.put("msg","更新竞拍信息成功");
            return resultMap;
        }

    @Override
    public Map<String, Object> getBidById(Long id){
        Bid e = bidMapper.selectByPrimaryKey(id);
        if(ObjUtil.isEmpty(e)){
            throw new IllegalArgumentException("id为:"+id+"的竞拍信息不存在");
        }

        Map<String, Object> attr = new HashMap<>();
        attr.put("id", e.getId());
        attr.put("projectId", e.getProjectId());
        attr.put("auctionStatus", e.getAuctionStatus());
        attr.put("projectName", e.getProjectName());
        attr.put("upsetTotalPrice", e.getUpsetTotalPrice());
        attr.put("startTime", e.getStartTime());
        attr.put("endTime", e.getEndTime());
        attr.put("signUpStartTime", e.getStartTime() - signUpTime*24*60*60*1000L);
        attr.put("bidEndTime", e.getStartTime() + e.getBidIncrMaxTime()*60*1000L);
        attr.put("userId", e.getUserId());
        attr.put("userName", e.getUserName());
        attr.put("userMobile", e.getUserMobile());
        attr.put("orgId", e.getOrgId());
        attr.put("orgName", e.getOrgName());
        attr.put("orderNum", e.getOrderNum());
        attr.put("applyStatus", e.getApplyStatus());
        attr.put("signUpTime", e.getSignUpTime());
        attr.put("createTime", e.getCreateTime());
        return attr;
    }

    @Override
    public PageVo<Map<String, Object>> getBidListPageVo(BidPageReqDto bidPageReqDto){

        //1.查询列表
        List<Bid> list = queryListByPageReqDto(bidPageReqDto,true);

        //2.构建pageVo
        PageVo<Bid> pageVo = new PageVo<>(list);

        //3.对象转为map分页输出
        return PageVo.of(
                pageVo,
                e -> {
                    Map<String, Object> attr = new HashMap<>();
                    attr.put("id", e.getId());
                    attr.put("projectId", e.getProjectId());
                    attr.put("projectName", e.getProjectName());
                    attr.put("auctionStatus", e.getAuctionStatus());
                    attr.put("upsetTotalPrice", e.getUpsetTotalPrice());
                    attr.put("startTime", e.getStartTime());
                    attr.put("endTime", e.getEndTime());
                    attr.put("signUpStartTime", e.getStartTime() - signUpTime*24*60*60*1000L);
                    attr.put("bidEndTime", e.getStartTime() + e.getBidIncrMaxTime()*60*1000L);
                    attr.put("userId", e.getUserId());
                    attr.put("userName", e.getUserName());
                    attr.put("userMobile", e.getUserMobile());
                    attr.put("orgId", e.getOrgId());
                    attr.put("orgName", e.getOrgName());
                    attr.put("orderNum", e.getOrderNum());
                    attr.put("applyStatus", e.getApplyStatus());
                    attr.put("signUpTime", e.getSignUpTime());
                    attr.put("createTime", e.getCreateTime());
                    return attr;
                }
        );
    }

    @Override
    public void downloadTemplateExcel(HttpServletResponse response){
        //1.查询到该对象的导入模板
        /*Bid bid = bidMapper.selectByExampleOne()
                .where(BidDynamicSqlSupport.fileKey, isEqualTo("bidTemplateExcel"))
                .build()
                .execute();
        if(ObjUtil.isEmpty(bid)){
            throw new IllegalArgumentException("模板文件暂未上传,请联系管理员");
        }
        //2.响应文件到页面
        minioUtil.download(bid.getStorePath(),bid.getName(),response);*/
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
        BidExcelListener bidExcelListener = new BidExcelListener(this,validator,fieldDupValidator);
        try {
            in = excelFile.getInputStream();
            EasyExcel.read(in, BidExcelVo.class, bidExcelListener).sheet().doRead();
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
    public void exportToExcel(BidPageReqDto bidPageReqDto,HttpServletResponse response){
        //1.查询列表
        List<Bid> bidList = queryListByPageReqDto(bidPageReqDto,false);

        //2.将原始列表转为导出对象列表
        List<BidExcelVo> bidExcelVoList = bidList.stream().map(e -> {
            BidExcelVo bidExcelVo = VoPoConverterUtil.copyProperties(e, BidExcelVo.class);
            return bidExcelVo;
        }).collect(Collectors.toList());

        //3.获取到输出流
        OutputStream outputStream = null;
        try {
            //(1).文件名，表名，表头，格式
            String sheetName = "竞拍";
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
                .head(BidExcelVo.class)
                .sheet("Sheet1")
                .doWrite(bidExcelVoList);
    }

    private List<Bid> queryListByPageReqDto(BidPageReqDto bidPageReqDto,Boolean needPaging){
        //1.查询语句构建
        QueryExpressionDSL<MyBatis3SelectModelAdapter<List<Bid>>>.QueryExpressionWhereBuilder builder = bidMapper.selectByExample().where();

        //2.根据查询条件封装查询命令
        //(1).关键字查询
        String projectName = bidPageReqDto.getProjectName();
        if(!ObjUtil.isEmpty(projectName)){
        builder.and(BidDynamicSqlSupport.projectName, isLike("%"+projectName+"%"));
        }

        Long userId = bidPageReqDto.getUserId();
        if(!ObjUtil.isEmpty(userId)){
        builder.and(BidDynamicSqlSupport.userId, isEqualTo(userId));
        }

        Long applyStatus = bidPageReqDto.getApplyStatus();
        if(!ObjUtil.isEmpty(applyStatus)){
            builder.and(BidDynamicSqlSupport.applyStatus, isEqualTo(applyStatus));
        }

        Long startTime = bidPageReqDto.getStartTime();
        Long endTime = bidPageReqDto.getEndTime();
        if (startTime != null && endTime != null) {
        builder.and(BidDynamicSqlSupport.startTime, isGreaterThanOrEqualTo(startTime));
        builder.and(BidDynamicSqlSupport.endTime, isLessThanOrEqualTo(endTime));
        } else {
            if (startTime != null) {
            builder.and(BidDynamicSqlSupport.startTime, isGreaterThanOrEqualTo(startTime));
            }
            if (endTime != null) {
            builder.and(BidDynamicSqlSupport.endTime, isLessThanOrEqualTo(endTime));
            }
        }

        //3.排序
        builder.orderBy(BidDynamicSqlSupport.createTime.descending());

        //4.查询(不需要分页即列表)
        if(needPaging){
        PageHelper.startPage(bidPageReqDto.getPageNum(), bidPageReqDto.getPageSize());
        }

        List<Bid> list = builder.build().execute();
        return list;
    }
}