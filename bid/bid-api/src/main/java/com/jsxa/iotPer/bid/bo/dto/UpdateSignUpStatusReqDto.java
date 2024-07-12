package com.jsxa.iotPer.bid.bo.dto;


import com.jsxa.iotPer.common.bo.dto.BaseDto;
import io.swagger.annotations.ApiModelProperty;
import lombok.*;
import lombok.experimental.Accessors;

import javax.validation.constraints.NotNull;


/**
 * @Author zhangyong
 * @Description //ProductReqDto
 * @Date 2022/12/23 14:18
 * @Param
 * @return
 */
@Getter
@Setter
@Builder
@Accessors(chain=true)
@AllArgsConstructor
@NoArgsConstructor
public class UpdateSignUpStatusReqDto extends BaseDto {

    @ApiModelProperty(name = "id", value = "主键", example = "xxx",dataType="Long")
    @NotNull(message = "主键不能为空")
    private Long id;

    @ApiModelProperty(value = "审核状态(参见字典")
    @NotNull(message = "审核状态不能为空")
    private Long applyStatus;

    @ApiModelProperty(value = "审核未通过原因")
    private String msg;
    

}