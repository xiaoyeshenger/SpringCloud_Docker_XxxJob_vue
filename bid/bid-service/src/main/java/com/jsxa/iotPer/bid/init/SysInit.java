package com.jsxa.iotPer.bid.init;

import com.alibaba.fastjson.JSONObject;
import com.jsxa.iotPer.bid.bo.po.ProductAuction;
import com.jsxa.iotPer.bid.bo.po.Project;
import com.jsxa.iotPer.bid.mapper.ProductAuctionMapper;
import com.jsxa.iotPer.bid.mapper.ProjectMapper;
import com.jsxa.iotPer.common.bo.po.DataDict;
import com.jsxa.iotPer.common.bo.po.Role;
import com.jsxa.iotPer.common.bo.po.User;
import com.jsxa.iotPer.common.bo.po.UserRole;
import com.jsxa.iotPer.common.cache.DictCache;
import com.jsxa.iotPer.common.cache.RegionCache;
import com.jsxa.iotPer.common.mapper.*;
import com.jsxa.iotPer.common.redis.RedisKey;
import com.jsxa.iotPer.common.redis.RedisService;
import com.jsxa.iotPer.common.utils.IdWorker;
import com.jsxa.iotPer.common.utils.ObjUtil;
import com.jsxa.iotPer.common.utils.SHA256Util;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.context.event.EventListener;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

import static org.mybatis.dynamic.sql.SqlBuilder.isEqualTo;

/*
 * @Author: zhangyong
 * description: 系统初始化
 * @Date: 2021-02-01 10:24
 * @Param:
 * @Return:
 */
@Component
@Slf4j
@RequiredArgsConstructor
public class SysInit {


    private final RedisService redisService;

    private final ProjectMapper projectMapper;

    private final ProductAuctionMapper productAuctionMapper;



    //(1).系统启动后，加载系统配置
    @EventListener(ContextRefreshedEvent.class)
    @Transactional(rollbackFor = Exception.class)
    public void initSysConfig() {

        log.info("step1 ---> 开始同步项目信息到Redis");
        List<Project> projectList = projectMapper.selectByExample()
                .build()
                .execute();
        projectList.forEach(p -> {
            redisService.hmSet("Project", String.valueOf(p.getId()), JSONObject.toJSONString(p));
        });

        log.info("step2 ---> 开始同步产品拍卖信息和产品单价到Redis");
        List<ProductAuction> productAuctionList = productAuctionMapper.selectByExample()
                .build()
                .execute();
        productAuctionList.forEach(pa -> {
            redisService.hmSet("ProductAuction:"+pa.getProjectId(), String.valueOf(pa.getId()), JSONObject.toJSONString(pa));
        });


    }
}
