package com.jsxa.iotPer.bid.bo.dto;


import com.jsxa.iotPer.common.bo.dto.BaseDto;
import io.swagger.annotations.ApiModelProperty;
import lombok.*;
import lombok.experimental.Accessors;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

/**
 * @author zhangyong
 * @description 产品拍卖数据
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
public class ProductAuctionDataReqDto extends BaseDto {

    @ApiModelProperty(name = "name",value = "名称", example = "细沙",dataType="String")
    @NotBlank(message = "名称不能为空")
    private String name;

    @ApiModelProperty(name = "quantity", value = "数量", example = "28",dataType="Double")
    @NotNull(message = "数量不能为空")
    private Double quantity;

    @ApiModelProperty(name = "quantityUnit", value = "数量单位(详见字典)", example = "123",dataType="Long")
    @NotNull(message = "数量单位不能为空")
    private Long quantityUnit;

    @ApiModelProperty(name = "upsetPrice", value = "起拍单价", example = "1.8",dataType="Double")
    @NotNull(message = "起拍单价不能为空")
    private Double upsetPrice;

    @ApiModelProperty(name = "bidIncr", value = "加价幅度", example = "0.5",dataType="Double")
    @NotNull(message = "加价幅度不能为空")
    private Double bidIncr;
}