package com.jsxa.iotPer.bid.excel;


import com.jsxa.iotPer.common.bo.dto.BaseDto;
import com.jsxa.iotPer.common.valid.ValidationGroup;
import com.jsxa.iotPer.common.annotation.FieldDupValid;
import io.swagger.annotations.ApiModelProperty;
import lombok.*;
import lombok.experimental.Accessors;
import lombok.experimental.Tolerate;
import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.annotation.write.style.ColumnWidth;
import com.alibaba.excel.annotation.write.style.ContentRowHeight;
import com.alibaba.excel.annotation.write.style.HeadRowHeight;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import java.util.List;


/*
 * @Author zhangyong
 * @Description //BidExcelVo
 * @Date 2023/12/27 10:53
 * @Param
 * @return
 **/
@Getter
@Setter
@Builder
@ContentRowHeight(20)
@HeadRowHeight(40)
@ColumnWidth(20)
@Accessors(chain=true)
@AllArgsConstructor
@NoArgsConstructor
public class BidExcelVo {

    @ExcelProperty(value = "序号",index = 0)
    private Integer order;

    @ExcelProperty(value = "主键",index = 1)
    @ApiModelProperty(name = "id", value = "主键", example = "xxx",dataType="Long")
    @NotNull(message = "主键不能为空")
    private Long id;
    

    @ExcelProperty(value = "项目ID",index = 1)
    @ApiModelProperty(name = "projectId", value = "项目ID", example = "xxx",dataType="Long")
    @NotNull(message = "项目ID不能为空")
    private Long projectId;
    

    @ExcelProperty(value = "名称名称",index = 1)
    @ApiModelProperty(name = "projectName", value = "名称名称", example = "xxx",dataType="String")
    @NotNull(message = "名称名称不能为空")
    private String projectName;
    

    @ExcelProperty(value = "起拍价格",index = 1)
    @ApiModelProperty(name = "upsetPrice", value = "起拍价格", example = "xxx",dataType="Double")
    @NotNull(message = "起拍价格不能为空")
    private Double upsetPrice;
    

    @ExcelProperty(value = "拍卖开始时间",index = 1)
    @ApiModelProperty(name = "startTime", value = "拍卖开始时间", example = "xxx",dataType="Long")
    @NotNull(message = "拍卖开始时间不能为空")
    private Long startTime;
    

    @ExcelProperty(value = "拍卖结束时间",index = 1)
    @ApiModelProperty(name = "endTime", value = "拍卖结束时间", example = "xxx",dataType="Long")
    @NotNull(message = "拍卖结束时间不能为空")
    private Long endTime;
    

    @ExcelProperty(value = "数量单位",index = 1)
    @ApiModelProperty(name = "quantityUnit", value = "数量单位", example = "xxx",dataType="String")
    @NotNull(message = "数量单位不能为空")
    private String quantityUnit;
    

    @ExcelProperty(value = "数量",index = 1)
    @ApiModelProperty(name = "quantity", value = "数量", example = "xxx",dataType="Double")
    @NotNull(message = "数量不能为空")
    private Double quantity;
    

    @ExcelProperty(value = "用户ID",index = 1)
    @ApiModelProperty(name = "userId", value = "用户ID", example = "xxx",dataType="Long")
    @NotNull(message = "用户ID不能为空")
    private Long userId;
    

    @ExcelProperty(value = "用户名称",index = 1)
    @ApiModelProperty(name = "userName", value = "用户名称", example = "xxx",dataType="String")
    @NotNull(message = "用户名称不能为空")
    private String userName;
    

    @ExcelProperty(value = "联系电话",index = 1)
    @ApiModelProperty(name = "userMobile", value = "联系电话", example = "xxx",dataType="String")
    @NotNull(message = "联系电话不能为空")
    private String userMobile;
    

    @ExcelProperty(value = "组织机构ID",index = 1)
    @ApiModelProperty(name = "orgId", value = "组织机构ID", example = "xxx",dataType="Long")
    @NotNull(message = "组织机构ID不能为空")
    private Long orgId;
    

    @ExcelProperty(value = "组织机构名称",index = 1)
    @ApiModelProperty(name = "orgName", value = "组织机构名称", example = "xxx",dataType="String")
    @NotNull(message = "组织机构名称不能为空")
    private String orgName;
    

    @ExcelProperty(value = "排序号",index = 1)
    @ApiModelProperty(name = "orderNum", value = "排序号", example = "xxx",dataType="Integer")
    @NotNull(message = "排序号不能为空")
    private Integer orderNum;
    

    @ExcelProperty(value = "报名申请状态",index = 1)
    @ApiModelProperty(name = "applyStatus", value = "报名申请状态", example = "xxx",dataType="Long")
    @NotNull(message = "报名申请状态不能为空")
    private Long applyStatus;
    

    @ExcelProperty(value = "报名时间",index = 1)
    @ApiModelProperty(name = "signUpTime", value = "报名时间", example = "xxx",dataType="Long")
    @NotNull(message = "报名时间不能为空")
    private Long signUpTime;
    

    @ExcelProperty(value = "创建时间",index = 1)
    @ApiModelProperty(name = "createTime", value = "创建时间", example = "xxx",dataType="Long")
    @NotNull(message = "创建时间不能为空")
    private Long createTime;
    

}