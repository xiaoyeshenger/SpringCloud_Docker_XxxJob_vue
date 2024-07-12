package com.jsxa.iotPer.bid.service;

import com.jsxa.iotPer.common.bo.vo.PageVo;
import com.jsxa.iotPer.bid.bo.dto.SignUpReqDto;
import com.jsxa.iotPer.bid.bo.dto.SignUpPageReqDto;
import com.jsxa.iotPer.bid.bo.dto.UpdateSignUpStatusReqDto;
import java.util.Map;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @Author zhangyong
 * @Description //SignUpService接口
 * @Date 2023/12/26 17:40
 * @Param
 * @return
 */
public interface SignUpService {



    /**
     * @Description 添加报名信息
     * @Date 2023/12/26 17:40
     */
    Map<String, Object> addSignUp(SignUpReqDto signUpReqDto);


    /**
     * @Description 通过id删除报名信息
     * @Date 2023/12/26 17:40
     */
    Map<String, Object> deleteSignUpById(Long id);

    /**
     * @Description 更新报名信息
     * @Date 2023/12/26 17:40
     */
    Map<String, Object> updateSignUp(SignUpReqDto signUpReqDto);

    /**
     * @Description 新增或更新报名信息
     * @Date 2023/12/26 17:40
     */
    Map<String, Object> insertOrUpdateSignUp(SignUpReqDto signUpReqDto);

    /**
     * @Description 通过id查询报名信息
     * @Date 2023/12/26 17:40
     */
    Map<String, Object> getSignUpById(Long id);

    /**
     * @Description 查询所有报名信息列表并分页
     * @Date 2023/12/26 17:40
     */
    PageVo<Map<String, Object>> getSignUpListPageVo(SignUpPageReqDto signUpPageReqDto);

    /**
    * @Description 下载标准上传模板
    * @Date 2023/12/26 17:40
    */
    void downloadTemplateExcel(HttpServletResponse response);

    /**
     * @Description 通过excel导入报名信息
     * @Date 2023/12/26 17:40
     */
    Map<String, Object> importByExcel(MultipartHttpServletRequest request);

    /**
     * @Description 导出报名信息到excel(easyExcel方式)
     * @Date 2023/12/26 17:40
     */
    void exportToExcel(SignUpPageReqDto signUpPageReqDto,HttpServletResponse response);


    /**
     * @Description 更新报名状态
     * @Date 2023/12/26 17:40
     */
    Map<String, Object> updateSignUpStatus(UpdateSignUpStatusReqDto updateSignUpStatusReqDto);
}