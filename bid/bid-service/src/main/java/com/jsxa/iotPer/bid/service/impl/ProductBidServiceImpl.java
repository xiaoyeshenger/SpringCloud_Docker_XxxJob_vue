package com.jsxa.iotPer.bid.service.impl;

import com.github.pagehelper.PageHelper;
import com.jsxa.iotPer.common.bo.vo.PageVo;
import com.jsxa.iotPer.bid.bo.dto.ProductBidPageReqDto;
import com.jsxa.iotPer.bid.bo.po.ProductBid;
import com.jsxa.iotPer.bid.mapper.ProductBidMapper;
import com.jsxa.iotPer.bid.mapper.ProductBidDynamicSqlSupport;
import com.jsxa.iotPer.common.utils.*;
import com.jsxa.iotPer.bid.service.ProductBidService;
import org.springframework.stereotype.Service;
import org.mybatis.dynamic.sql.select.MyBatis3SelectModelAdapter;
import org.mybatis.dynamic.sql.select.QueryExpressionDSL;
import lombok.extern.slf4j.Slf4j;
import lombok.RequiredArgsConstructor;


import java.util.*;

import static org.mybatis.dynamic.sql.SqlBuilder.*;

/**
 * @Author zhangyong
 * @Description //ProductBidService接口实现类
 * @Date 2024/01/10 14:54
 * @Param
 * @return
 */
@Service
@Slf4j
@RequiredArgsConstructor
public class ProductBidServiceImpl implements ProductBidService {


    private final ProductBidMapper productBidMapper;


    @Override
    public PageVo<Map<String, Object>> getProductBidListPageVo(ProductBidPageReqDto productBidPageReqDto){

        //1.查询列表
        List<ProductBid> list = queryListByPageReqDto(productBidPageReqDto,true);

        //2.构建pageVo
        PageVo<ProductBid> pageVo = new PageVo<>(list);

        //3.对象转为map分页输出
        return PageVo.of(
                pageVo,
                e -> {
                    Map<String, Object> attr = new HashMap<>();
                    attr.put("id", e.getId());
                    attr.put("projectId", e.getProjectId());
                    attr.put("bidRecordId", e.getBidRecordId());
                    attr.put("userId", e.getUserId());
                    attr.put("name", e.getName());
                    attr.put("quantity", e.getQuantity());
                    attr.put("quantityUnit", e.getQuantityUnit());
                    attr.put("upsetPrice", e.getUpsetPrice());
                    attr.put("bidIncr", e.getBidIncr());
                    attr.put("curUnitPrice", e.getCurUnitPrice());
                    attr.put("curTotalPrice", e.getCurTotalPrice());
                    attr.put("createTime", e.getCreateTime());
                    return attr;
                }
        );
    }


    private List<ProductBid> queryListByPageReqDto(ProductBidPageReqDto productBidPageReqDto,Boolean needPaging){
        //1.查询语句构建
        QueryExpressionDSL<MyBatis3SelectModelAdapter<List<ProductBid>>>.QueryExpressionWhereBuilder builder = productBidMapper.selectByExample().where();

        //2.根据查询条件封装查询命令
        Long bidRecordId = productBidPageReqDto.getBidRecordId();
        if(!ObjUtil.isEmpty(bidRecordId)){
            builder.and(ProductBidDynamicSqlSupport.bidrecordId, isEqualTo(bidRecordId));
        }

        Long userId = productBidPageReqDto.getUserId();
        if(!ObjUtil.isEmpty(userId)){
            builder.and(ProductBidDynamicSqlSupport.userId, isEqualTo(userId));
        }


        //3.排序
        builder.orderBy(ProductBidDynamicSqlSupport.createTime.descending());

        //4.查询(不需要分页即列表)
        if(needPaging){
        PageHelper.startPage(productBidPageReqDto.getPageNum(), productBidPageReqDto.getPageSize());
        }

        List<ProductBid> list = builder.build().execute();
        return list;
    }
}