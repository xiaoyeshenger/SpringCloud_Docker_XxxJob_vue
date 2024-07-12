package com.jsxa.iotPer.sys.service;

import com.jsxa.iotPer.common.bo.dto.LoginLogPageReqDto;
import com.jsxa.iotPer.common.bo.dto.OperateLogPageReqDto;
import com.jsxa.iotPer.common.bo.vo.PageVo;

import javax.servlet.http.HttpServletResponse;
import java.util.Map;

/*
 * @Author zhangyong
 * @Description //LoginLogService接口
 * @Date 2022/03/02 16:01
 * @Param
 * @return
 **/
public interface LoginLogService {


    //通过id删除登录日志
    Map<String, Object> deleteLoginLogById(Map<String, Object> headerMap,String id);

    //通过id查询登录日志
    Map<String, Object> getLoginLogById(Map<String, Object> headerMap,String id);

    //查询所有登录日志列表并分页
    PageVo<Map<String, Object>> getLoginLogListPageVo(Map<String, Object> headerMap,LoginLogPageReqDto loginLogPageReqDto);

    void exportToExcel(LoginLogPageReqDto loginLogPageReqDto, HttpServletResponse response);
}