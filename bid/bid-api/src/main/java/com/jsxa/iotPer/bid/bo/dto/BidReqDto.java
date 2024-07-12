package com.jsxa.iotPer.bid.bo.dto;


import com.jsxa.iotPer.common.bo.dto.BaseDto;
import com.jsxa.iotPer.common.valid.ValidationGroup;
import io.swagger.annotations.ApiModelProperty;
import lombok.*;
import lombok.experimental.Accessors;
import lombok.experimental.Tolerate;

import javax.validation.constraints.*;
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
public class BidReqDto extends BaseDto {

    @ApiModelProperty(name = "id", value = "主键", example = "xxx",dataType="Long")
    @NotNull(message = "主键不能为空",groups = ValidationGroup.ValidationUpdate.class)
    private Long id;


    @ApiModelProperty(name = "projectId", value = "项目ID", example = "xxx",dataType="Long")
    @NotNull(message = "项目ID不能为空")
    private Long projectId;
 

    @ApiModelProperty(name = "userId", value = "用户ID", example = "xxx",dataType="Long")
    @NotNull(message = "用户ID不能为空")
    private Long userId;
 

    @ApiModelProperty(name = "signUpTime", value = "报名时间", example = "xxx",dataType="Long")
    @NotNull(message = "报名时间不能为空")
    @Digits(integer = 13,fraction = 0,message = "时间戳必须为13位数字(毫秒)")
    private Long signUpTime;

    @ApiModelProperty(value = "审核状态(参见字典")
    @NotNull(message = "审核状态不能为空")
    private Long applyStatus;

}