package com.jsxa.iotPer.bid.bo.dto;


import com.jsxa.iotPer.common.bo.dto.BaseDto;
import com.jsxa.iotPer.common.valid.ValidationGroup;
import io.swagger.annotations.ApiModelProperty;
import lombok.*;
import lombok.experimental.Accessors;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import java.util.List;


/*
 * @Author zhangyong
 * @Description //BidRecordReqDto
 * @Date 2023/12/18 11:43
 * @Param
 * @return
 **/
@Getter
@Setter
@Builder
@Accessors(chain=true)
@AllArgsConstructor
@NoArgsConstructor
public class BidRecordReqDto extends BaseDto {


    @ApiModelProperty(name = "id", value = "主键", example = "xxx",dataType="Long")
    @NotNull(message = "主键不能为空",groups = ValidationGroup.ValidationUpdate.class)
    private Long id;

    @ApiModelProperty(name = "projectId", value = "项目ID", example = "xxx",dataType="Long")
    @NotNull(message = "项目ID不能为空")
    private Long projectId;

    @Valid
    @ApiModelProperty(name = "productBidRecordDataList", value = "产品竞价记录列表", example = "",dataType="Array")
    @NotNull(message = "产品竞价记录列表不能为空")
    private List<ProductBidRecordDataReqDto> productBidRecordDataList;

}