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
public class SignUpReqDto extends BaseDto {

    @ApiModelProperty(name = "id", value = "主键", example = "123",dataType="Long")
    @NotNull(message = "主键不能为空",groups = ValidationGroup.ValidationUpdate.class)
    private Long id;


    @ApiModelProperty(name = "projectId", value = "项目ID", example = "123",dataType="Long")
    @NotNull(message = "项目ID不能为空")
    private Long projectId;

}