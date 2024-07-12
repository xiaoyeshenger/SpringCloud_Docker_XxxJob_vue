package com.jsxa.iotPer.bid.service;

import com.jsxa.iotPer.common.bo.vo.PageVo;
import com.jsxa.iotPer.bid.bo.dto.ProductBidPageReqDto;
import java.util.Map;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @Author zhangyong
 * @Description //ProductBidService接口
 * @Date 2024/01/10 14:54
 * @Param
 * @return
 */
public interface ProductBidService {

    /**
     * @Description 查询所有产品竞价数据列表并分页
     * @Date 2024/01/10 14:54
     */
    PageVo<Map<String, Object>> getProductBidListPageVo(ProductBidPageReqDto productBidPageReqDto);
}