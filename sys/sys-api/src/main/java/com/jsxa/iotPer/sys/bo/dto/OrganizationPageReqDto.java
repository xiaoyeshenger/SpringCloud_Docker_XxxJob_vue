package com.jsxa.iotPer.sys.bo.dto;


import com.jsxa.iotPer.common.bo.dto.PageReqDto;
import com.jsxa.iotPer.common.valid.ValidationGroup;
import io.swagger.annotations.ApiModelProperty;
import lombok.*;
import lombok.experimental.Accessors;
import lombok.experimental.Tolerate;

import javax.validation.constraints.*;

import java.util.List;


/*
 * @Author zhangyong
 * @Description //OrganizationPageReqDto
 * @Date 2023/12/27 08:50
 * @Param
 * @return
 **/
@Getter
@Setter
@Accessors(chain=true)
public class OrganizationPageReqDto extends PageReqDto {

    @ApiModelProperty(name = "name", value = "名称", example = "xxx",dataType="String")
    private String name;

}