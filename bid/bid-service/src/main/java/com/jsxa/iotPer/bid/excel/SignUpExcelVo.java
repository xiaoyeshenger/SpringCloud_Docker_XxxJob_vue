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
 * @Description //SignUpExcelVo
 * @Date 2023/12/26 17:40
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
public class SignUpExcelVo {

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
    

    @ExcelProperty(value = "主键",index = 1)
    @ApiModelProperty(name = "userId", value = "主键", example = "xxx",dataType="Long")
    @NotNull(message = "主键不能为空")
    private Long userId;
    

    @ExcelProperty(value = "单位名称",index = 1)
    @ApiModelProperty(name = "orgName", value = "单位名称", example = "xxx",dataType="String")
    @NotNull(message = "单位名称不能为空")
    private String orgName;
    

    @ExcelProperty(value = "名称",index = 1)
    @ApiModelProperty(name = "userName", value = "名称", example = "xxx",dataType="String")
    @NotNull(message = "名称不能为空")
    private String userName;
    

    @ExcelProperty(value = "联系电话",index = 1)
    @ApiModelProperty(name = "userMobile", value = "联系电话", example = "xxx",dataType="String")
    @NotNull(message = "联系电话不能为空")
    private String userMobile;
    

    @ExcelProperty(value = "申请状态",index = 1)
    @ApiModelProperty(name = "applyStatus", value = "申请状态", example = "xxx",dataType="Long")
    @NotNull(message = "申请状态不能为空")
    private Long applyStatus;
    

    @ExcelProperty(value = "未通过原因",index = 1)
    @ApiModelProperty(name = "msg", value = "未通过原因", example = "xxx",dataType="String")
    @NotNull(message = "未通过原因不能为空")
    private String msg;
    

    @ExcelProperty(value = "申请时间",index = 1)
    @ApiModelProperty(name = "applyTime", value = "申请时间", example = "xxx",dataType="Long")
    @NotNull(message = "申请时间不能为空")
    private Long applyTime;
    

}