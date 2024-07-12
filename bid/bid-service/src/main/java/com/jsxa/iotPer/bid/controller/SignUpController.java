package com.jsxa.iotPer.bid.controller;

import com.jsxa.iotPer.bid.bo.dto.UpdateSignUpStatusReqDto;
import com.jsxa.iotPer.common.bo.vo.ResultVo;
import com.jsxa.iotPer.common.bo.vo.PageVo;
import com.jsxa.iotPer.bid.bo.dto.SignUpReqDto;
import com.jsxa.iotPer.bid.bo.dto.SignUpPageReqDto;
import com.jsxa.iotPer.bid.service.SignUpService;
import com.jsxa.iotPer.common.enums.BusinessType;
import com.jsxa.iotPer.common.valid.ValidationGroup;
import com.jsxa.iotPer.common.valid.ValidationGroup.ValidationUpdate;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import io.swagger.annotations.*;
import springfox.documentation.annotations.ApiIgnore;
import org.springframework.validation.annotation.Validated;
import com.jsxa.iotPer.common.annotation.Log;
import lombok.RequiredArgsConstructor;

import java.util.Map;


/**
 * @Author zhangyong
 * @Description SignUpController类
 * @Date 2023/12/26 17:40
 * @Param
 * @return
 */
@RestController
@RequestMapping("/bid/signUp")
@Api(tags = "报名信息相关接口")
@Validated
@RequiredArgsConstructor
public class SignUpController {

    private final SignUpService signUpService;


    /**
     * @Author zhangyong
     * @Description //(1) 添加报名信息信息
     * @Date 2023/12/26 17:40
     * @Param
     * @return
     */
    @Log(businessType = BusinessType.INSERT)
    @ApiOperation("添加报名信息信息")
    @PostMapping(value = "addSignUp", produces = { "application/json" })
    public ResultVo<Map<String, Object>> addSignUp(
            @Validated @RequestBody SignUpReqDto signUpReqDto
    ){
        return ResultVo.ok(signUpService.addSignUp(signUpReqDto));
    }

    /**
     * @Author zhangyong
     * @Description //(2) 通过id删除报名信息信息
     * @Date 2023/12/26 17:40
     * @Param
     * @return
     */
    @Log(businessType = BusinessType.DELETE)
    @ApiOperation("通过id删除报名信息信息")
    @ApiImplicitParam(name = "id", value = "报名信息id", example = "1386532156978321", dataType = "Long", paramType = "form")
    @GetMapping("/deleteSignUpById/{id}")
    public ResultVo<Map<String, Object>> deleteSignUpById(
            @PathVariable Long id
    ){
         return ResultVo.ok(signUpService.deleteSignUpById(id));
    }

    /**
     * @Author zhangyong
     * @Description //(3) 更新报名信息信息
     * @Date 2023/12/26 17:40
     * @Param
     * @return
     */
    /*@Log(businessType = BusinessType.UPDATE)
    @ApiOperation("更新报名信息信息")
    @PostMapping(value = "updateSignUp", produces = {"application/json"})
    public ResultVo<Map<String, Object>> updateSignUp(
            @Validated({ValidationUpdate.class}) @RequestBody SignUpReqDto signUpReqDto
    ){
        return ResultVo.ok(signUpService.updateSignUp(signUpReqDto));
    }*/

    /**
     * @Author zhangyong
     * @Description //(4) 通过id查询报名信息信息
     * @Date 2023/12/26 17:40
     * @Param
     * @return
     */
    @ApiOperation("通过id查询报名信息信息")
    @ApiImplicitParam(name = "id", value = "报名信息id", example = "136985121358326", dataType = "Long", paramType = "form")
    @GetMapping("/getSignUpById/{id}")
    public ResultVo<Map<String, Object>> getSignUpById(
            @PathVariable Long id
    ){
        return ResultVo.ok(signUpService.getSignUpById(id));
    }

    /**
     * @Author zhangyong
     * @Description //(5) 查询所有的报名信息信息列表并分页(支持关键字查询)
     * @Date 2023/12/26 17:40
     * @Param
     * @return
     */
    @ApiOperation("查询所有的报名信息信息列表并分页(支持关键字查询)")
    @PostMapping(value = "getSignUpListPageVo", produces = { "application/json" })
    public ResultVo<PageVo<Map<String, Object>>> getSignUpListPageVo(
            @Validated({ValidationGroup.ValidationPage.class}) @RequestBody SignUpPageReqDto signUpPageReqDto
    ){
        return ResultVo.ok(signUpService.getSignUpListPageVo(signUpPageReqDto));
    }

    /**
     * @Author zhangyong
     * @Description //(6) 下载报名信息标准上传模板
     * @Date 2023/12/26 17:40
     * @Param
     * @return
     */
    @ApiOperation("下载报名信息标准上传模板")
    @GetMapping("/downloadTemplateExcel")
    public void downloadTemplateExcel(
        @ApiIgnore HttpServletResponse response
    ){
        signUpService.downloadTemplateExcel(response);
    }

    /**
     * @Author zhangyong
     * @Description //(6) 通过excel导入报名信息
     * @Date 2023/12/26 17:40
     * @Param
     * @return
     */
    @ApiOperation("通过excel导入报名信息")
    @PostMapping("importByExcel")
    public  ResultVo<Map<String, Object>> importByExcel(
        @ApiIgnore MultipartHttpServletRequest request
    ){
        return ResultVo.ok(signUpService.importByExcel(request));
    }

    /**
     * @Author zhangyong
     * @Description //(8) 导出报名信息到excel
     * @Date 2023/12/26 17:40
     * @Param
     * @return
     */
    @ApiOperation("导出报名信息到excel")
    @GetMapping("/exportToExcel")
    public void exportToExcel(
        @ApiIgnore HttpServletResponse response,
        @Validated @RequestBody SignUpPageReqDto signUpPageReqDto
    ){
        signUpService.exportToExcel(signUpPageReqDto,response);
    }


    /**
     * @Author zhangyong
     * @Description //(1) 添加报名信息信息
     * @Date 2023/12/26 17:40
     * @Param
     * @return
     */
    @Log(businessType = BusinessType.UPDATE)
    @ApiOperation("更新报名状态")
    @PostMapping(value = "updateSignUpStatus", produces = { "application/json" })
    public ResultVo<Map<String, Object>> updateSignUpStatus(
            @Validated @RequestBody UpdateSignUpStatusReqDto updateSignUpStatusReqDto
    ){
        return ResultVo.ok(signUpService.updateSignUpStatus(updateSignUpStatusReqDto));
    }

}