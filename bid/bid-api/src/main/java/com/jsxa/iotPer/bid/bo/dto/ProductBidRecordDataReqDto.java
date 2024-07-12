package com.jsxa.iotPer.bid.bo.dto;


import com.jsxa.iotPer.common.bo.dto.BaseDto;
import com.jsxa.iotPer.common.valid.ValidationGroup;
import io.swagger.annotations.ApiModelProperty;
import lombok.*;
import lombok.experimental.Accessors;

import javax.validation.constraints.NotNull;

/**
 * @author zhangyong
 * @description 产品竞价记录
 * @date 2024/1/9 15:14
 * @param
 * @return
 */
@Getter
@Setter
@Builder
@Accessors(chain=true)
@AllArgsConstructor
@NoArgsConstructor
public class ProductBidRecordDataReqDto extends BaseDto {

    @ApiModelProperty(name = "productId", value = "产品ID", example = "123",dataType="Long")
    @NotNull(message = "产品ID不能为空",groups = ValidationGroup.ValidationUpdate.class)
    private Long productId;

    @ApiModelProperty(name = "bidIncr", value = "加价幅度", example = "0.5",dataType="Double")
    @NotNull(message = "加价幅度不能为空")
    private Double bidIncr;
}