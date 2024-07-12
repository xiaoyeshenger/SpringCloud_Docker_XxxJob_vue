package com.jsxa.iotPer.bid.controller;

import com.jsxa.iotPer.common.bo.vo.ResultVo;
import com.jsxa.iotPer.common.bo.vo.PageVo;
import com.jsxa.iotPer.bid.bo.dto.ProductBidPageReqDto;
import com.jsxa.iotPer.bid.service.ProductBidService;
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
 * @Description ProductBidController类
 * @Date 2024/01/10 14:54
 * @Param
 * @return
 */
@RestController
@RequestMapping("/productBid")
@Api(tags = "产品竞价数据相关接口")
@Validated
@RequiredArgsConstructor
public class ProductBidController {

    private final ProductBidService productBidService;


    /**
     * @Author zhangyong
     * @Description //(1) 查询所有的产品竞价数据信息列表并分页(支持关键字查询)
     * @Date 2024/01/10 14:54
     * @Param
     * @return
     */
    @ApiOperation("查询所有的产品竞价数据信息列表并分页(支持关键字查询)")
    @PostMapping(value = "getProductBidListPageVo", produces = { "application/json" })
    public ResultVo<PageVo<Map<String, Object>>> getProductBidListPageVo(
            @Validated({ValidationGroup.ValidationPage.class}) @RequestBody ProductBidPageReqDto productBidPageReqDto
    ){
        return ResultVo.ok(productBidService.getProductBidListPageVo(productBidPageReqDto));
    }
}