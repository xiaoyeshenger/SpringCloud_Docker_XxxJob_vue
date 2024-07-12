package com.jsxa.iotPer.bid.bo.po;

import io.swagger.annotations.ApiModelProperty;
import lombok.*;
import lombok.experimental.Accessors;

import java.io.Serializable;

/**
 * 竞拍信息
 */
@Getter
@Setter
@Builder
@Accessors(chain=true)
@AllArgsConstructor
@NoArgsConstructor
public class Bid implements Serializable {

    @ApiModelProperty(value = "主键")
    private Long id;

    @ApiModelProperty(value = "项目ID")
    private Long projectId;

    @ApiModelProperty(value = "拍卖状态")
    private Long auctionStatus;

    @ApiModelProperty(value = "名称名称")
    private String projectName;

    @ApiModelProperty(value = "起拍总价")
    private Double upsetTotalPrice;

    @ApiModelProperty(value = "拍卖开始时间")
    private Long startTime;

    @ApiModelProperty(value = "拍卖结束时间")
    private Long endTime;

    @ApiModelProperty(value = "加价最长时间")
    private Integer bidIncrMaxTime;

    @ApiModelProperty(value = "用户ID")
    private Long userId;

    @ApiModelProperty(value = "用户名称")
    private String userName;

    @ApiModelProperty(value = "联系电话")
    private String userMobile;

    @ApiModelProperty(value = "组织机构ID")
    private Long orgId;

    @ApiModelProperty(value = "组织机构名称")
    private String orgName;

    @ApiModelProperty(value = "排序号")
    private Integer orderNum;

    @ApiModelProperty(value = "报名申请状态")
    private Long applyStatus;

    @ApiModelProperty(value = "报名时间")
    private Long signUpTime;

    @ApiModelProperty(value = "创建时间")
    private Long createTime;
}