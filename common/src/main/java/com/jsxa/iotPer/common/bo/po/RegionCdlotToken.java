package com.jsxa.iotPer.common.bo.po;

import com.jsxa.iotPer.common.bo.vo.BaseVo;
import io.swagger.annotations.ApiModelProperty;
import lombok.*;
import lombok.experimental.Accessors;


/*
 * @Author: zhangyong
 * description: 区域和成都物联感知平台区域token中间表
 * @Date: 2021-02-01 10:26
 * @Param:
 * @Return:
 */
@Getter
@Setter
@Builder
@Accessors(chain=true)
@AllArgsConstructor
@NoArgsConstructor
public class RegionCdlotToken extends BaseVo {

    @ApiModelProperty(value = "主键")
    private Long id;

    @ApiModelProperty(value = "区域码")
    private String regionCode;

    @ApiModelProperty(value = "成都物联感知平台区域token")
    private String cdlotToken;

}
