package com.jsxa.iotPer.codeGen.po;

import io.swagger.annotations.ApiModelProperty;
import lombok.*;
import lombok.experimental.Accessors;

import java.io.Serializable;

/**
 * 产品拍卖信息
 */
@Getter
@Setter
@Builder
@Accessors(chain=true)
@AllArgsConstructor
@NoArgsConstructor
public class ProductAuction implements Serializable {

    @ApiModelProperty(value = "主键")
    private Long id;

    @ApiModelProperty(value = "项目ID")
    private Long projectId;

    @ApiModelProperty(value = "名称")
    private String name;

    @ApiModelProperty(value = "数量")
    private Double quantity;

    @ApiModelProperty(value = "数量单位")
    private Long quantityUnit;

    @ApiModelProperty(value = "起拍单价")
    private Double upsetPrice;

    @ApiModelProperty(name = "bidIncr", value = "加价幅度", example = "0.5",dataType="Double")
    private Double bidIncr;

    @ApiModelProperty(value = "创建时间")
    private Long createTime;
}