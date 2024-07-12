package com.jsxa.iotPer.bid.bo.dto;


import com.jsxa.iotPer.common.bo.dto.PageReqDto;
import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;
import lombok.experimental.Accessors;

import javax.validation.constraints.Digits;


/*
 * @Author zhangyong
 * @Description //BidRecordPageReqDto
 * @Date 2023/12/18 11:43
 * @Param
 * @return
 **/
@Getter
@Setter
@Accessors(chain=true)
public class BidRecordPageReqDto extends PageReqDto {


    @ApiModelProperty(name = "projectId", value = "项目ID", example = "xxx",dataType="Long")
    private Long projectId;


    @ApiModelProperty(name = "projectName", value = "名称名称", example = "xxx",dataType="String")
    private String projectName;


    @ApiModelProperty(name = "userId", value = "出价人ID", example = "xxx",dataType="Long")
    private Long userId;


    @ApiModelProperty(name = "bidStatus", value = "拍卖状态(领先/出局)", example = "xxx",dataType="Long")
    private Long bidStatus;

}