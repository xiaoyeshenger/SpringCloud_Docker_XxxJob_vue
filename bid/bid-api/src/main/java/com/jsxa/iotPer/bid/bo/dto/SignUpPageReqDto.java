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
 * @Description //SignUpPageReqDto
 * @Date 2023/12/26 17:40
 * @Param
 * @return
 **/
@Getter
@Setter
@Accessors(chain=true)
public class SignUpPageReqDto extends PageReqDto {


    @ApiModelProperty(name = "projectId", value = "项目ID", example = "xxx",dataType="Long")
    private Long projectId;

    @ApiModelProperty(name = "userId", value = "主键", example = "xxx",dataType="Long")
    private Long userId;


    @ApiModelProperty(name = "orgName", value = "单位名称", example = "xxx",dataType="String")
    private String orgName;

    @ApiModelProperty(name = "applyStatus", value = "申请状态", example = "xxx",dataType="Long")
    private Long applyStatus;


    @ApiModelProperty(name = "startTime", value = "申请时间开始时间", example = "1567764943000",dataType="Long")
    @Digits(integer = 13,fraction = 0,message = "时间戳必须为13位数字(毫秒)")
    private Long startTime;

    @ApiModelProperty(name = "endTime", value = "申请时间结束时间", example = "1567764958000",dataType="Long")
    @Digits(integer = 13,fraction = 0,message = "时间戳必须为13位数字(毫秒)")
    private Long endTime;



}