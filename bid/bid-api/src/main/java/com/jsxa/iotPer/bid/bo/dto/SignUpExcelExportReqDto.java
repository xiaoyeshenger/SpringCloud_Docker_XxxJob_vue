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
 * @Description //SignUpReqDto
 * @Date 2023/12/26 17:40
 * @Param
 * @return
 **/
@Getter
@Setter
@Builder
@Accessors(chain=true)
@AllArgsConstructor
@NoArgsConstructor
public class SignUpExcelExportReqDto extends BaseDto {

    @ApiModelProperty(name = "id", value = "主键", example = "xxx",dataType="Long")
    private Long id;
    

    @ApiModelProperty(name = "projectId", value = "项目ID", example = "xxx",dataType="Long")
    private Long projectId;
    

    @ApiModelProperty(name = "userId", value = "主键", example = "xxx",dataType="Long")
    private Long userId;
    

    @ApiModelProperty(name = "orgName", value = "单位名称", example = "xxx",dataType="String")
    private String orgName;
    

    @ApiModelProperty(name = "userName", value = "名称", example = "xxx",dataType="String")
    private String userName;
    

    @ApiModelProperty(name = "userMobile", value = "联系电话", example = "xxx",dataType="String")
    private String userMobile;
    

    @ApiModelProperty(name = "applyStatus", value = "申请状态", example = "xxx",dataType="Long")
    private Long applyStatus;
    

    @ApiModelProperty(name = "msg", value = "未通过原因", example = "xxx",dataType="String")
    private String msg;
    

    @ApiModelProperty(name = "applyTime", value = "申请时间", example = "xxx",dataType="Long")
    private Long applyTime;
    

}