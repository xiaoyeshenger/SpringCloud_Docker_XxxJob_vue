package com.jsxa.iotPer.bid.bo.dto;


import com.jsxa.iotPer.common.bo.dto.BaseDto;
import com.jsxa.iotPer.common.valid.ValidationGroup;
import io.swagger.annotations.ApiModelProperty;
import lombok.*;
import lombok.experimental.Accessors;
import lombok.experimental.Tolerate;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import java.util.List;


/*
 * @Author zhangyong
 * @Description //BidReqDto
 * @Date 2023/12/27 10:53
 * @Param
 * @return
 **/
@Getter
@Setter
@Builder
@Accessors(chain=true)
@AllArgsConstructor
@NoArgsConstructor
public class BidExcelExportReqDto extends BaseDto {

    @ApiModelProperty(name = "id", value = "主键", example = "xxx",dataType="Long")
    private Long id;
    

    @ApiModelProperty(name = "projectId", value = "项目ID", example = "xxx",dataType="Long")
    private Long projectId;
    

    @ApiModelProperty(name = "projectName", value = "名称名称", example = "xxx",dataType="String")
    private String projectName;
    

    @ApiModelProperty(name = "upsetPrice", value = "起拍价格", example = "xxx",dataType="Double")
    private Double upsetPrice;
    

    @ApiModelProperty(name = "startTime", value = "拍卖开始时间", example = "xxx",dataType="Long")
    private Long startTime;
    

    @ApiModelProperty(name = "endTime", value = "拍卖结束时间", example = "xxx",dataType="Long")
    private Long endTime;
    

    @ApiModelProperty(name = "quantityUnit", value = "数量单位", example = "xxx",dataType="String")
    private String quantityUnit;
    

    @ApiModelProperty(name = "quantity", value = "数量", example = "xxx",dataType="Double")
    private Double quantity;
    

    @ApiModelProperty(name = "userId", value = "用户ID", example = "xxx",dataType="Long")
    private Long userId;
    

    @ApiModelProperty(name = "userName", value = "用户名称", example = "xxx",dataType="String")
    private String userName;
    

    @ApiModelProperty(name = "userMobile", value = "联系电话", example = "xxx",dataType="String")
    private String userMobile;
    

    @ApiModelProperty(name = "orgId", value = "组织机构ID", example = "xxx",dataType="Long")
    private Long orgId;
    

    @ApiModelProperty(name = "orgName", value = "组织机构名称", example = "xxx",dataType="String")
    private String orgName;
    

    @ApiModelProperty(name = "orderNum", value = "排序号", example = "xxx",dataType="Integer")
    private Integer orderNum;
    

    @ApiModelProperty(name = "applyStatus", value = "报名申请状态", example = "xxx",dataType="Long")
    private Long applyStatus;
    

    @ApiModelProperty(name = "signUpTime", value = "报名时间", example = "xxx",dataType="Long")
    private Long signUpTime;
    

    @ApiModelProperty(name = "createTime", value = "创建时间", example = "xxx",dataType="Long")
    private Long createTime;
    

}