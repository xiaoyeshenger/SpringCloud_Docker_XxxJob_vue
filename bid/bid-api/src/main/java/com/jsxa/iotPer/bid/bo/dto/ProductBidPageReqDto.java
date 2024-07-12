package com.jsxa.iotPer.bid.bo.dto;


import com.jsxa.iotPer.common.bo.dto.PageReqDto;
import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;
import lombok.experimental.Accessors;


/*
 * @Author zhangyong
 * @Description //BidRecordPageReqDto
 * @Date 2023/12/18 11:43
 * @Param
 * @return
 **/
@Getter
@Setter
@Accessors(chain=true)
public class ProductBidPageReqDto extends PageReqDto {


    @ApiModelProperty(name = "bidRecordId", value = "竞拍记录ID", example = "xxx",dataType="Long")
    private Long bidRecordId;

    @ApiModelProperty(name = "userId", value = "出价人ID", example = "xxx",dataType="Long")
    private Long userId;

}