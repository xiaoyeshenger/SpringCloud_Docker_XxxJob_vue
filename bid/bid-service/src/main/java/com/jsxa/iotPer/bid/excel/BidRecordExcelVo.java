package com.jsxa.iotPer.bid.excel;


import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.annotation.write.style.ColumnWidth;
import com.alibaba.excel.annotation.write.style.ContentRowHeight;
import com.alibaba.excel.annotation.write.style.HeadRowHeight;
import io.swagger.annotations.ApiModelProperty;
import lombok.*;
import lombok.experimental.Accessors;

import javax.validation.constraints.NotNull;


/*
 * @Author zhangyong
 * @Description //BidRecordExcelVo
 * @Date 2023/12/18 11:43
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
public class BidRecordExcelVo {

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
    

    @ExcelProperty(value = "项目数量",index = 1)
    @ApiModelProperty(name = "projectQuantity", value = "项目数量", example = "xxx",dataType="Double")
    @NotNull(message = "项目数量不能为空")
    private Double projectQuantity;
    

    @ExcelProperty(value = "当前出价单价",index = 1)
    @ApiModelProperty(name = "curUnitPrice", value = "当前出价单价", example = "xxx",dataType="Double")
    @NotNull(message = "当前出价单价不能为空")
    private Double curUnitPrice;
    

    @ExcelProperty(value = "当前出价总价",index = 1)
    @ApiModelProperty(name = "curTotalPrice", value = "当前出价总价", example = "xxx",dataType="Double")
    @NotNull(message = "当前出价总价不能为空")
    private Double curTotalPrice;
    

    @ExcelProperty(value = "出价人ID",index = 1)
    @ApiModelProperty(name = "userId", value = "出价人ID", example = "xxx",dataType="Long")
    @NotNull(message = "出价人ID不能为空")
    private Long userId;
    

    @ExcelProperty(value = "出价人名称(公司)",index = 1)
    @ApiModelProperty(name = "orgName", value = "出价人名称(公司)", example = "xxx",dataType="String")
    @NotNull(message = "出价人名称(公司)不能为空")
    private String orgName;
    

    @ExcelProperty(value = "出价人联系电话",index = 1)
    @ApiModelProperty(name = "userMobile", value = "出价人联系电话", example = "xxx",dataType="String")
    @NotNull(message = "出价人联系电话不能为空")
    private String userMobile;
    

    @ExcelProperty(value = "出价时间",index = 1)
    @ApiModelProperty(name = "bidTime", value = "出价时间", example = "xxx",dataType="Long")
    @NotNull(message = "出价时间不能为空")
    private Long bidTime;
    

    @ExcelProperty(value = "拍卖状态(领先/出局)",index = 1)
    @ApiModelProperty(name = "bidStatus", value = "拍卖状态(领先/出局)", example = "xxx",dataType="Long")
    @NotNull(message = "拍卖状态(领先/出局)不能为空")
    private Long bidStatus;
    

    @ExcelProperty(value = "排序号",index = 1)
    @ApiModelProperty(name = "orderNum", value = "排序号", example = "xxx",dataType="Integer")
    @NotNull(message = "排序号不能为空")
    private Integer orderNum;
    

    @ExcelProperty(value = "创建时间",index = 1)
    @ApiModelProperty(name = "createTime", value = "创建时间", example = "xxx",dataType="Long")
    @NotNull(message = "创建时间不能为空")
    private Long createTime;
    

}