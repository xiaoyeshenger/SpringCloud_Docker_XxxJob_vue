package com.jsxa.iotPer.bid.service;

import com.jsxa.iotPer.common.bo.vo.PageVo;
import com.jsxa.iotPer.bid.bo.dto.BidReqDto;
import com.jsxa.iotPer.bid.bo.dto.BidPageReqDto;
import java.util.Map;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @Author zhangyong
 * @Description //BidService接口
 * @Date 2023/12/27 10:53
 * @Param
 * @return
 */
public interface BidService {



    /**
     * @Description 添加竞拍
     * @Date 2023/12/27 10:53
     */
    Map<String, Object> addBid(BidReqDto bidReqDto);

    /**
     * @Description 通过id删除竞拍
     * @Date 2023/12/27 10:53
     */
    Map<String, Object> deleteBidById(Long id);

    /**
     * @Description 更新竞拍
     * @Date 2023/12/27 10:53
     */
    Map<String, Object> updateBid(BidReqDto bidReqDto);

    /**
     * @Description 新增或更新竞拍
     * @Date 2023/12/27 10:53
     */
    Map<String, Object> insertOrUpdateBid(BidReqDto bidReqDto);

    /**
     * @Description 通过id查询竞拍
     * @Date 2023/12/27 10:53
     */
    Map<String, Object> getBidById(Long id);

    /**
     * @Description 查询所有竞拍列表并分页
     * @Date 2023/12/27 10:53
     */
    PageVo<Map<String, Object>> getBidListPageVo(BidPageReqDto bidPageReqDto);

    /**
    * @Description 下载标准上传模板
    * @Date 2023/12/27 10:53
    */
    void downloadTemplateExcel(HttpServletResponse response);

    /**
     * @Description 通过excel导入竞拍
     * @Date 2023/12/27 10:53
     */
    Map<String, Object> importByExcel(MultipartHttpServletRequest request);

    /**
     * @Description 导出竞拍到excel(easyExcel方式)
     * @Date 2023/12/27 10:53
     */
    void exportToExcel(BidPageReqDto bidPageReqDto,HttpServletResponse response);
}