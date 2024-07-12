package com.jsxa.iotPer.bid.service;

import com.jsxa.iotPer.bid.bo.dto.BidRecordPageReqDto;
import com.jsxa.iotPer.bid.bo.dto.BidRecordReqDto;
import com.jsxa.iotPer.common.bo.vo.PageVo;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletResponse;
import java.util.Map;

/**
 * @Author zhangyong
 * @Description //BidRecordService接口
 * @Date 2023/12/18 11:43
 * @Param
 * @return
 */
public interface BidRecordService {


    /**
     * @Description 获取项目竞价大厅实时人数，最高报价，最新报价列表
     * @Date 2023/12/18 11:43
     */
    Map<String, Object> getRealtimeBidInfo(Long projectId);

    /**
     * @Description 进入大厅(参与竞价)
     * @Date 2023/12/18 11:43
     */
    Map<String, Object> enterTheHall(Long projectId);

    /**
     * @Description 提交竞价
     * @Date 2023/12/18 11:43
     */
    Map<String, Object> addBidRecord(BidRecordReqDto bidRecordReqDto);


    /**
     * @Description 提交竞价-解决高并发、数据一致性
     * @Date 2023/12/18 11:43
     */
    Map<String, Object> addBidRecordHighConcurrency(BidRecordReqDto bidRecordReqDto);

    /**
     * @Description 通过id删除竞拍记录
     * @Date 2023/12/18 11:43
     */
    Map<String, Object> deleteBidRecordById(Long id);

    /**
     * @Description 新增或更新竞拍记录
     * @Date 2023/12/18 11:43
     */
    Map<String, Object> insertOrUpdateBidRecord(BidRecordReqDto bidRecordReqDto);

    /**
     * @Description 通过id查询竞拍记录
     * @Date 2023/12/18 11:43
     */
    Map<String, Object> getBidRecordById(Long id);

    /**
     * @Description 查询所有竞拍记录列表并分页
     * @Date 2023/12/18 11:43
     */
    PageVo<Map<String, Object>> getBidRecordListPageVo(BidRecordPageReqDto bidRecordPageReqDto);

    /**
    * @Description 下载标准上传模板
    * @Date 2023/12/18 11:43
    */
    void downloadTemplateExcel(HttpServletResponse response);

    /**
     * @Description 通过excel导入竞拍记录
     * @Date 2023/12/18 11:43
     */
    Map<String, Object> importByExcel(MultipartHttpServletRequest request);

    /**
     * @Description 导出竞拍记录到excel(easyExcel方式)
     * @Date 2023/12/18 11:43
     */
    void exportToExcel(BidRecordPageReqDto bidRecordPageReqDto,HttpServletResponse response);
}