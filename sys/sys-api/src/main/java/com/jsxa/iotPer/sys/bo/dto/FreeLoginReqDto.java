package com.jsxa.iotPer.sys.bo.dto;


import com.jsxa.iotPer.common.bo.dto.BaseDto;
import com.jsxa.iotPer.common.valid.ValidationGroup;
import io.swagger.annotations.ApiModelProperty;
import lombok.*;
import lombok.experimental.Accessors;

import javax.validation.constraints.NotNull;


/*
 * @Author zhangyong
 * @Description //DeptReqDto
 * @Date 2022/02/21 15:06
 * @Param
 * @return
 **/
@Getter
@Setter
@Builder
@Accessors(chain=true)
@AllArgsConstructor
@NoArgsConstructor
public class FreeLoginReqDto {

    @NotNull(message = "freeKey不能为空")
    private String freeKey;

}