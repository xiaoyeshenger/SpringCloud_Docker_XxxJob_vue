package com.jsxa.iotPer.bid.bo.dto;


import com.jsxa.iotPer.common.bo.dto.PageReqDto;
import com.jsxa.iotPer.common.valid.ValidationGroup;
import io.swagger.annotations.ApiModelProperty;
import lombok.*;
import lombok.experimental.Accessors;
import lombok.experimental.Tolerate;

import javax.validation.constraints.*;

import java.util.List;


/*
 * @Author zhangyong
 * @Description //BidPageReqDto
 * @Date 2023/12/27 10:53
 * @Param
 * @return
 **/
@Getter
@Setter
@Accessors(chain=true)
public class BidPageReqDto extends PageReqDto {


    @ApiModelProperty(name = "userId", value = "用户ID", example = "xxx",dataType="Long")
    private Long userId;

    @ApiModelProperty(name = "projectName", value = "名称名称", example = "xxx",dataType="String")
    private String projectName;

    @ApiModelProperty(name = "applyStatus", value = "报名申请状态", example = "xxx",dataType="Long")
    private Long applyStatus;

    @ApiModelProperty(name = "startTime", value = "拍卖开始时间", example = "1567764958000",dataType="Long")
    @Digits(integer = 13,fraction = 0,message = "时间戳必须为13位数字(毫秒)")
    private Long startTime;

    @ApiModelProperty(name = "endTime", value = "拍卖结束时间", example = "1567764958000",dataType="Long")
    @Digits(integer = 13,fraction = 0,message = "时间戳必须为13位数字(毫秒)")
    private Long endTime;

}