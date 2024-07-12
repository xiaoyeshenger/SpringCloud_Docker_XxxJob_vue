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
 * @Description //ProjectExcelVo
 * @Date 2023/12/18 11:14
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
public class ProjectExcelVo {

    @ExcelProperty(value = "序号",index = 0)
    private Integer order;

    @ExcelProperty(value = "主键",index = 1)
    @ApiModelProperty(name = "id", value = "主键", example = "xxx",dataType="Long")
    @NotNull(message = "主键不能为空")
    private Long id;
    

    @ExcelProperty(value = "名称",index = 1)
    @ApiModelProperty(name = "name", value = "名称", example = "xxx",dataType="String")
    @NotNull(message = "名称不能为空")
    private String name;
    

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
    

    @ExcelProperty(value = "起拍价格",index = 1)
    @ApiModelProperty(name = "upsetPrice", value = "起拍价格", example = "xxx",dataType="Double")
    @NotNull(message = "起拍价格不能为空")
    private Double upsetPrice;
    

    @ExcelProperty(value = "加价幅度",index = 1)
    @ApiModelProperty(name = "bidIncr", value = "加价幅度", example = "xxx",dataType="Double")
    @NotNull(message = "加价幅度不能为空")
    private Double bidIncr;
    

    @ExcelProperty(value = "加价最长时间",index = 1)
    @ApiModelProperty(name = "bidIncrMaxTime", value = "加价最长时间", example = "xxx",dataType="Integer")
    @NotNull(message = "加价最长时间不能为空")
    private Integer bidIncrMaxTime;
    

    @ExcelProperty(value = "文件(列表)url",index = 1)
    @ApiModelProperty(name = "oosUrl", value = "文件(列表)url", example = "xxx",dataType="String")
    @NotNull(message = "文件(列表)url不能为空")
    private String oosUrl;
    

    @ExcelProperty(value = "拍卖状态",index = 1)
    @ApiModelProperty(name = "auctionStatus", value = "拍卖状态", example = "xxx",dataType="Long")
    @NotNull(message = "拍卖状态不能为空")
    private Long auctionStatus;
    

    @ExcelProperty(value = "项目详细信息",index = 1)
    @ApiModelProperty(name = "projectDetails", value = "项目详细信息", example = "xxx",dataType="String")
    @NotNull(message = "项目详细信息不能为空")
    private String projectDetails;
    

    @ExcelProperty(value = "竞拍须知",index = 1)
    @ApiModelProperty(name = "bidNotes", value = "竞拍须知", example = "xxx",dataType="String")
    @NotNull(message = "竞拍须知不能为空")
    private String bidNotes;
    

    @ExcelProperty(value = "竞拍规则",index = 1)
    @ApiModelProperty(name = "bidRule", value = "竞拍规则", example = "xxx",dataType="String")
    @NotNull(message = "竞拍规则不能为空")
    private String bidRule;
    

    @ExcelProperty(value = "联系人",index = 1)
    @ApiModelProperty(name = "contact", value = "联系人", example = "xxx",dataType="String")
    @NotNull(message = "联系人不能为空")
    private String contact;
    

    @ExcelProperty(value = "联系人手机号",index = 1)
    @ApiModelProperty(name = "contactMobile", value = "联系人手机号", example = "xxx",dataType="String")
    @NotNull(message = "联系人手机号不能为空")
    private String contactMobile;
    

    @ExcelProperty(value = "交易状态(成交/流拍)",index = 1)
    @ApiModelProperty(name = "transStatus", value = "交易状态(成交/流拍)", example = "xxx",dataType="Long")
    @NotNull(message = "交易状态(成交/流拍)不能为空")
    private Long transStatus;
    

    @ExcelProperty(value = "成交单价",index = 1)
    @ApiModelProperty(name = "transUnitPrice", value = "成交单价", example = "xxx",dataType="Double")
    @NotNull(message = "成交单价不能为空")
    private Double transUnitPrice;
    

    @ExcelProperty(value = "成交总价",index = 1)
    @ApiModelProperty(name = "transTotalPrice", value = "成交总价", example = "xxx",dataType="Double")
    @NotNull(message = "成交总价不能为空")
    private Double transTotalPrice;
    

    @ExcelProperty(value = "交易成功后的出价记录ID",index = 1)
    @ApiModelProperty(name = "bidRecordId", value = "交易成功后的出价记录ID", example = "xxx",dataType="Long")
    @NotNull(message = "交易成功后的出价记录ID不能为空")
    private Long bidRecordId;
    

    @ExcelProperty(value = "排序号",index = 1)
    @ApiModelProperty(name = "orderNum", value = "排序号", example = "xxx",dataType="Integer")
    @NotNull(message = "排序号不能为空")
    private Integer orderNum;
    

    @ExcelProperty(value = "创建时间",index = 1)
    @ApiModelProperty(name = "createTime", value = "创建时间", example = "xxx",dataType="Long")
    @NotNull(message = "创建时间不能为空")
    private Long createTime;
    

}