package com.jsxa.iotPer.codeGen.po;

import io.swagger.annotations.ApiModelProperty;
import lombok.*;
import lombok.experimental.Accessors;

import java.io.Serializable;

/**
 * 报名信息
 */
@Getter
@Setter
@Builder
@Accessors(chain=true)
@AllArgsConstructor
@NoArgsConstructor
public class SignUp implements Serializable {

    @ApiModelProperty(value = "主键")
    private Long id;

    @ApiModelProperty(value = "项目ID")
    private Long projectId;

    @ApiModelProperty(value = "主键")
    private Long userId;

    @ApiModelProperty(value = "单位名称")
    private String orgName;

    @ApiModelProperty(value = "名称")
    private String userName;

    @ApiModelProperty(value = "联系电话")
    private String userMobile;

    @ApiModelProperty(value = "申请状态")
    private Long applyStatus;

    @ApiModelProperty(value = "未通过原因")
    private String msg;

    @ApiModelProperty(value = "申请时间")
    private Long applyTime;
}