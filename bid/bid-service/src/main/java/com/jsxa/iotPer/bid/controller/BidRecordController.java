package com.jsxa.iotPer.bid.controller;

import com.jsxa.iotPer.bid.bo.dto.BidRecordPageReqDto;
import com.jsxa.iotPer.bid.bo.dto.BidRecordReqDto;
import com.jsxa.iotPer.bid.service.BidRecordService;
import com.jsxa.iotPer.common.annotation.Log;
import com.jsxa.iotPer.common.bo.vo.PageVo;
import com.jsxa.iotPer.common.bo.vo.ResultVo;
import com.jsxa.iotPer.common.enums.BusinessType;
import com.jsxa.iotPer.common.valid.ValidationGroup;
import com.jsxa.iotPer.common.valid.ValidationGroup.ValidationUpdate;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import springfox.documentation.annotations.ApiIgnore;

import javax.servlet.http.HttpServletResponse;
import java.util.Map;


/**
 * @Author zhangyong
 * @Description BidRecordController类
 * @Date 2023/12/18 11:43
 * @Param
 * @return
 */
@RestController
@RequestMapping("/bid/bidRecord")
@Api(tags = "竞价记录相关接口")
@Validated
@RequiredArgsConstructor
public class BidRecordController {

    private final BidRecordService bidRecordService;


    /**
     * @Author zhangyong
     * @Description //(1) 获取项目竞价大厅实时人数，最高报价，最新报价列表
     * @Date 2023/12/18 11:43
     * @Param
     * @return
     */
    @ApiOperation("获取项目竞价大厅实时人数，最高报价，最新报价列表")
    @ApiImplicitParam(name = "projectId", value = "项目id", example = "133", dataType = "Long", paramType = "form")
    @GetMapping("/getRealtimeBidInfo/{projectId}")
    public ResultVo<Map<String, Object>> getRealtimeBidInfo(
            @PathVariable Long projectId
    ){
        return ResultVo.ok(bidRecordService.getRealtimeBidInfo(projectId));
    }

    /**
     * @Author zhangyong
     * @Description //(1) 添加竞拍记录信息
     * @Date 2023/12/18 11:43
     * @Param
     * @return
     */
    @Log(businessType = BusinessType.INSERT)
    @ApiOperation("进入大厅")
    @ApiImplicitParam(name = "projectId", value = "项目id", example = "133", dataType = "Long", paramType = "form")
    @GetMapping("/enterTheHall/{projectId}")
    public ResultVo<Map<String, Object>> enterTheHall(
            @PathVariable Long projectId
    ){
        return ResultVo.ok(bidRecordService.enterTheHall(projectId));
    }

    /**
     * @Author zhangyong
     * @Description //(1) 添加竞拍记录信息
     * @Date 2023/12/18 11:43
     * @Param
     * @return
     */
    @Log(businessType = BusinessType.INSERT)
    @ApiOperation("提交竞价")
    @PostMapping(value = "addBidRecord", produces = { "application/json" })
    public ResultVo<Map<String, Object>> addBidRecord(
            @Validated @RequestBody BidRecordReqDto bidRecordReqDto
    ){
        return ResultVo.ok(bidRecordService.addBidRecord(bidRecordReqDto));
        //return ResultVo.ok(bidRecordService.addBidRecordHighConcurrency(bidRecordReqDto));
    }

    /**
     * @Author zhangyong
     * @Description //(2) 通过id删除竞拍记录信息
     * @Date 2023/12/18 11:43
     * @Param
     * @return
     */
    @Log(businessType = BusinessType.DELETE)
    @ApiOperation("通过id删除竞拍记录信息")
    @ApiImplicitParam(name = "id", value = "竞拍记录id", example = "1386532156978321", dataType = "Long", paramType = "form")
    @GetMapping("/deleteBidRecordById/{id}")
    public ResultVo<Map<String, Object>> deleteBidRecordById(
            @PathVariable Long id
    ){
         return ResultVo.ok(bidRecordService.deleteBidRecordById(id));
    }

    /**
     * @Author zhangyong
     * @Description //(4) 通过id查询竞拍记录信息
     * @Date 2023/12/18 11:43
     * @Param
     * @return
     */
    @ApiOperation("通过id查询竞拍记录信息")
    @ApiImplicitParam(name = "id", value = "竞拍记录id", example = "136985121358326", dataType = "Long", paramType = "form")
    @GetMapping("/getBidRecordById/{id}")
    public ResultVo<Map<String, Object>> getBidRecordById(
            @PathVariable Long id
    ){
        return ResultVo.ok(bidRecordService.getBidRecordById(id));
    }

    /**
     * @Author zhangyong
     * @Description //(5) 查询所有的竞拍记录信息列表并分页(支持关键字查询)
     * @Date 2023/12/18 11:43
     * @Param
     * @return
     */
    @ApiOperation("查询所有的竞拍记录信息列表并分页(支持关键字查询)")
    @PostMapping(value = "getBidRecordListPageVo", produces = { "application/json" })
    public ResultVo<PageVo<Map<String, Object>>> getBidRecordListPageVo(
            @Validated({ValidationGroup.ValidationPage.class}) @RequestBody BidRecordPageReqDto bidRecordPageReqDto
    ){
        return ResultVo.ok(bidRecordService.getBidRecordListPageVo(bidRecordPageReqDto));
    }

    /**
     * @Author zhangyong
     * @Description //(6) 下载竞拍记录标准上传模板
     * @Date 2023/12/18 11:43
     * @Param
     * @return
     */
    @ApiOperation("下载竞拍记录标准上传模板")
    @GetMapping("/downloadTemplateExcel")
    public void downloadTemplateExcel(
        @ApiIgnore HttpServletResponse response
    ){
        bidRecordService.downloadTemplateExcel(response);
    }

    /**
     * @Author zhangyong
     * @Description //(6) 通过excel导入竞拍记录
     * @Date 2023/12/18 11:43
     * @Param
     * @return
     */
    @ApiOperation("通过excel导入竞拍记录")
    @PostMapping("importByExcel")
    public  ResultVo<Map<String, Object>> importByExcel(
        @ApiIgnore MultipartHttpServletRequest request
    ){
        return ResultVo.ok(bidRecordService.importByExcel(request));
    }

    /**
     * @Author zhangyong
     * @Description //(8) 导出竞拍记录到excel
     * @Date 2023/12/18 11:43
     * @Param
     * @return
     */
    @ApiOperation("导出竞拍记录到excel")
    @GetMapping("/exportToExcel")
    public void exportToExcel(
        @ApiIgnore HttpServletResponse response,
        @Validated @RequestBody BidRecordPageReqDto bidRecordPageReqDto
    ){
        bidRecordService.exportToExcel(bidRecordPageReqDto,response);
    }

}