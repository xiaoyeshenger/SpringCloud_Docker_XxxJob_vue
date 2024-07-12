package com.jsxa.iotPer.bid.controller;

import com.jsxa.iotPer.bid.webSocket.WebSocketService;
import com.jsxa.iotPer.common.bo.vo.ResultVo;
import com.jsxa.iotPer.common.bo.vo.PageVo;
import com.jsxa.iotPer.bid.bo.dto.BidReqDto;
import com.jsxa.iotPer.bid.bo.dto.BidPageReqDto;
import com.jsxa.iotPer.bid.service.BidService;
import com.jsxa.iotPer.common.enums.BusinessType;
import com.jsxa.iotPer.common.valid.ValidationGroup;
import com.jsxa.iotPer.common.valid.ValidationGroup.ValidationUpdate;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import io.swagger.annotations.*;
import org.springframework.web.socket.TextMessage;
import springfox.documentation.annotations.ApiIgnore;
import org.springframework.validation.annotation.Validated;
import com.jsxa.iotPer.common.annotation.Log;
import lombok.RequiredArgsConstructor;

import java.util.Map;


/**
 * @Author zhangyong
 * @Description BidController类
 * @Date 2023/12/27 10:53
 * @Param
 * @return
 */
@RestController
@RequestMapping("/bid/bidInfo")
@Api(tags = "竞拍相关接口")
@Validated
@RequiredArgsConstructor
public class BidController {

    private final BidService bidService;

        private final WebSocketService webSocketService;


    /**
     * @Author zhangyong
     * @Description //(1) 添加竞拍信息
     * @Date 2023/12/27 10:53
     * @Param
     * @return
     */
    @Log(businessType = BusinessType.INSERT)
    @ApiOperation("添加竞拍信息")
    @PostMapping(value = "addBid", produces = { "application/json" })
    public ResultVo<Map<String, Object>> addBid(
            @Validated @RequestBody BidReqDto bidReqDto
    ){
        return ResultVo.ok(bidService.addBid(bidReqDto));
    }

    /**
     * @Author zhangyong
     * @Description //(2) 通过id删除竞拍信息
     * @Date 2023/12/27 10:53
     * @Param
     * @return
     */
    @Log(businessType = BusinessType.DELETE)
    @ApiOperation("通过id删除竞拍信息")
    @ApiImplicitParam(name = "id", value = "竞拍id", example = "1386532156978321", dataType = "Long", paramType = "form")
    @GetMapping("/deleteBidById/{id}")
    public ResultVo<Map<String, Object>> deleteBidById(
            @PathVariable Long id
    ){
         return ResultVo.ok(bidService.deleteBidById(id));
    }

    /**
     * @Author zhangyong
     * @Description //(3) 更新竞拍信息
     * @Date 2023/12/27 10:53
     * @Param
     * @return
     */
    @Log(businessType = BusinessType.UPDATE)
    @ApiOperation("更新竞拍信息")
    @PostMapping(value = "updateBid", produces = {"application/json"})
    public ResultVo<Map<String, Object>> updateBid(
            @Validated({ValidationUpdate.class}) @RequestBody BidReqDto bidReqDto
    ){
        return ResultVo.ok(bidService.updateBid(bidReqDto));
    }

    /**
     * @Author zhangyong
     * @Description //(4) 通过id查询竞拍信息
     * @Date 2023/12/27 10:53
     * @Param
     * @return
     */
    @ApiOperation("通过id查询竞拍信息")
    @ApiImplicitParam(name = "id", value = "竞拍id", example = "136985121358326", dataType = "Long", paramType = "form")
    @GetMapping("/getBidById/{id}")
    public ResultVo<Map<String, Object>> getBidById(
            @PathVariable Long id
    ){
        return ResultVo.ok(bidService.getBidById(id));
    }

    /**
     * @Author zhangyong
     * @Description //(5) 查询所有的竞拍信息列表并分页(支持关键字查询)
     * @Date 2023/12/27 10:53
     * @Param
     * @return
     */
    @ApiOperation("查询所有的竞拍信息列表并分页(支持关键字查询)")
    @PostMapping(value = "getBidListPageVo", produces = { "application/json" })
    public ResultVo<PageVo<Map<String, Object>>> getBidListPageVo(
            @Validated({ValidationGroup.ValidationPage.class}) @RequestBody BidPageReqDto bidPageReqDto
    ){
        return ResultVo.ok(bidService.getBidListPageVo(bidPageReqDto));
    }

    /**
     * @Author zhangyong
     * @Description //(6) 下载竞拍标准上传模板
     * @Date 2023/12/27 10:53
     * @Param
     * @return
     */
    @ApiOperation("下载竞拍标准上传模板")
    @GetMapping("/downloadTemplateExcel")
    public void downloadTemplateExcel(
        @ApiIgnore HttpServletResponse response
    ){
        bidService.downloadTemplateExcel(response);
    }

    /**
     * @Author zhangyong
     * @Description //(6) 通过excel导入竞拍
     * @Date 2023/12/27 10:53
     * @Param
     * @return
     */
    @ApiOperation("通过excel导入竞拍")
    @PostMapping("importByExcel")
    public  ResultVo<Map<String, Object>> importByExcel(
        @ApiIgnore MultipartHttpServletRequest request
    ){
        return ResultVo.ok(bidService.importByExcel(request));
    }

    /**
     * @Author zhangyong
     * @Description //(8) 导出竞拍到excel
     * @Date 2023/12/27 10:53
     * @Param
     * @return
     */
    @ApiOperation("导出竞拍到excel")
    @GetMapping("/exportToExcel")
    public void exportToExcel(
        @ApiIgnore HttpServletResponse response,
        @Validated @RequestBody BidPageReqDto bidPageReqDto
    ){
        bidService.exportToExcel(bidPageReqDto,response);
    }

    @PostMapping("testWs")
    public ResultVo<Map<String, Object>> testWs(String name
    ){
        System.out.println("name:"+name);
        webSocketService.sendMessageToOne(name,new TextMessage("test ws jjj"));
        return ResultVo.ok();
    }
}