package com.jsxa.iotPer.sys.bo.dto;


import com.jsxa.iotPer.common.bo.dto.BaseDto;
import com.jsxa.iotPer.common.bo.dto.PageReqDto;
import io.swagger.annotations.ApiModelProperty;
import lombok.*;
import lombok.experimental.Accessors;

import javax.validation.constraints.Digits;


/*
 * @Author zhangyong
 * @Description //CompetentParkListReqDto
 * @Date 2022/02/09 17:31
 * @Param
 * @return
 **/
@Getter
@Setter
@Builder
@Accessors(chain=true)
@AllArgsConstructor
@NoArgsConstructor
public class CompetentParkListReqDto extends BaseDto {

    @ApiModelProperty(name = "addressCode", value = "地址码", example = "510113",dataType="String")
    private String addressCode;
}