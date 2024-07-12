package com.jsxa.iotPer.bid.service.impl;

import cn.hutool.core.lang.Assert;
import cn.hutool.json.JSONUtil;
import com.alibaba.excel.EasyExcel;
import com.alibaba.excel.ExcelReader;
import com.alibaba.fastjson.JSONObject;
import com.github.pagehelper.PageHelper;
import com.jsxa.iotPer.bid.bo.dto.BidRecordPageReqDto;
import com.jsxa.iotPer.bid.bo.dto.BidRecordReqDto;
import com.jsxa.iotPer.bid.bo.dto.ProductBidRecordDataReqDto;
import com.jsxa.iotPer.bid.bo.po.*;
import com.jsxa.iotPer.bid.excel.BidRecordExcelListener;
import com.jsxa.iotPer.bid.excel.BidRecordExcelVo;
import com.jsxa.iotPer.bid.mapper.*;
import com.jsxa.iotPer.bid.service.BidRecordService;
import com.jsxa.iotPer.bid.util.XxlJobUtil;
import com.jsxa.iotPer.bid.webSocket.WebSocketUtil;
import com.jsxa.iotPer.common.bo.vo.PageVo;
import com.jsxa.iotPer.common.bo.vo.UserVo;
import com.jsxa.iotPer.common.redis.RedisKey;
import com.jsxa.iotPer.common.redis.RedisService;
import com.jsxa.iotPer.common.utils.*;
import com.jsxa.iotPer.common.validator.FieldDupValidator;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.mybatis.dynamic.sql.render.RenderingStrategies;
import org.mybatis.dynamic.sql.select.MyBatis3SelectModelAdapter;
import org.mybatis.dynamic.sql.select.QueryExpressionDSL;
import org.redisson.api.RLock;
import org.redisson.api.RedissonClient;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StopWatch;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Validator;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.stream.Collectors;

import static org.mybatis.dynamic.sql.SqlBuilder.*;

/**
 * @Author zhangyong
 * @Description //BidRecordService接口实现类
 * @Date 2023/12/18 11:43
 * @Param
 * @return
 */
@Service
@Slf4j
@RequiredArgsConstructor
public class BidRecordServiceImpl implements BidRecordService {

    @Value("${xxl.job.admin.addresses}")
    private String adminAddresses;

    @Value("${bid.project.transExtensionCheckPointTime}")
    private Integer transExtensionCheckPointTime;

    private final WebSocketUtil webSocketUtil;

    private final RedisService redisService;

    @Resource
    private RedissonClient redissonClient;

    private final Validator validator;

    private final FieldDupValidator fieldDupValidator;

    private final BidRecordMapper bidRecordMapper;

    private final ProductBidMapper productBidMapper;

    private final ProjectMapper projectMapper;

    private final TimeTaskMapper timeTaskMapper;


    @Override
    public Map<String, Object> getRealtimeBidInfo(Long projectId) {
        //1.参数校验
        Project project = projectMapper.selectByPrimaryKey(projectId);
        if(ObjUtil.isEmpty(project)){
            throw new IllegalArgumentException("id为:"+projectId+"的项目信息不存在");
        }
        Long auctionStatus = project.getAuctionStatus();
        if(1505 != auctionStatus){
            throw new IllegalArgumentException("当前项目不处于交易中状态，请联系管理员");
        }

        //大厅实时人数
        Long hallCurrentUserAmount = redisService.hmSize(RedisKey.HallCurrentUser);


        //最新竞价列表
        List bidRecordList = redisService.lRange(RedisKey.BidRecordData+projectId,0,19);
        String bidRecordListStr = JSONObject.toJSONString(bidRecordList);

        //最新竞价单价列表
        String productBidRecordDataStr = (String)redisService.get(RedisKey.ProductBidRecordData + projectId);


        //最高报价
        Double currentTotalPrice = project.getUpsetTotalPrice();
        Object projectBidTotalPriceDataObj = redisService.hmGet(RedisKey.ProjectBidTotalPriceData, String.valueOf(projectId));
        if(!ObjUtil.isEmpty(projectBidTotalPriceDataObj)){
            currentTotalPrice = Double.valueOf((String)projectBidTotalPriceDataObj);
        }else {
            redisService.hIncr(RedisKey.ProjectBidTotalPriceData, String.valueOf(projectId),currentTotalPrice);
        }


        Map<String,Object> resultMap = new HashMap<>();
        resultMap.put("hallCurrentUserAmount",hallCurrentUserAmount);
        resultMap.put("newestBidRecordList",bidRecordListStr);
        resultMap.put("currentUnitPriceList",productBidRecordDataStr);
        resultMap.put("currentTotalPrice",currentTotalPrice);
        return resultMap;
    }

    @Override
    public Map<String, Object> enterTheHall(Long projectId) {
        //1.参数校验
        Project project = projectMapper.selectByPrimaryKey(projectId);
        if(ObjUtil.isEmpty(project)){
            throw new IllegalArgumentException("id为:"+projectId+"的项目信息不存在");
        }
        Long auctionStatus = project.getAuctionStatus();
        if(1505 != auctionStatus){
            throw new IllegalArgumentException("当前项目不处于交易中状态，请联系管理员");
        }

        UserVo userVo = UserUtil.getUserVo();
        String roleKey = userVo.getRoleKey();
        if(roleKey.equals("SuperAdmin") || roleKey.equals("Admin")){
            throw new IllegalArgumentException("管理员不能进入大厅");
        }

        //2.在线用户保存到redis
        String userId = String.valueOf(UserUtil.getUserVo().getId());
        redisService.hmSet(RedisKey.HallCurrentUser,userId,DateUtil.getCurrentTimeStr());

        //最新的人数
        Long hallCurrentUserAmount = redisService.hmSize(RedisKey.HallCurrentUser);

        //最新竞价列表
        List bidRecordList = redisService.lRange(RedisKey.BidRecordData+projectId,0,19);
        String bidRecordListStr = JSONObject.toJSONString(bidRecordList);

        //最新竞价单价列表
        String productBidRecordDataStr = (String)redisService.get(RedisKey.ProductBidRecordData + projectId);


        //最高报价
        Double currentTotalPrice = project.getUpsetTotalPrice();
        Object projectBidTotalPriceDataObj = redisService.hmGet(RedisKey.ProjectBidTotalPriceData, String.valueOf(projectId));
        if(!ObjUtil.isEmpty(projectBidTotalPriceDataObj)){
            currentTotalPrice = Double.valueOf((String)projectBidTotalPriceDataObj);
        }else {
            redisService.hIncr(RedisKey.ProjectBidTotalPriceData, String.valueOf(projectId),currentTotalPrice);
        }


        Map<String, Object> wsDataMap = new HashMap<>();
        wsDataMap.put("hallCurrentUserAmount",redisService.hmSize(RedisKey.HallCurrentUser));
        wsDataMap.put("newestBidRecordList",bidRecordListStr);
        wsDataMap.put("currentUnitPriceList",productBidRecordDataStr);
        wsDataMap.put("currentTotalPrice",currentTotalPrice);
        webSocketUtil.sendDataToWebSocket("bid","bid"+projectId,wsDataMap);

        //4.返回结果
        Map<String,Object> resultMap = new HashMap<>();
        resultMap.put("msg","进入大厅成功");
        resultMap.put("hallCurrentUserAmount", hallCurrentUserAmount);
        resultMap.put("newestBidRecordList",bidRecordListStr);
        resultMap.put("currentUnitPriceList",productBidRecordDataStr);
        resultMap.put("currentTotalPrice",currentTotalPrice);
        return resultMap;
    }

    @Override
    @Transactional
    public Map<String, Object> addBidRecord(BidRecordReqDto bidRecordReqDto) {

        //1.参数校验
        Long projectId = bidRecordReqDto.getProjectId();
        Project project = JSONObject.parseObject((String) redisService.hmGet("Project", String.valueOf(projectId)), Project.class);
        if(ObjUtil.isEmpty(project)){
            throw new IllegalArgumentException("id为:"+projectId+"的项目信息不存在");
        }

        Long auctionStatus = project.getAuctionStatus();
        if(!auctionStatus.equals(1505L)){
            throw new IllegalArgumentException("当前项目未处于交易中，请联系管理员");
        }

        UserVo userVo = UserUtil.getUserVo();
        String roleKey = userVo.getRoleKey();
        if(roleKey.equals("SuperAdmin") || roleKey.equals("Admin")){
            throw new IllegalArgumentException("管理员不能参与竞价");
        }

        //2.获取到bidRecordId
        Long bidRecordId = new IdWorker().nextId();

        //3.保存ProductBid
        //(1).初始化总价
        Double allProductTotalPrice = 0.0;
        //(2).初始化productBid列表
        List<ProductBid> productBidList = new ArrayList<>();

        //(3).redis数据库中的实时总价
        //Object realtimeTotalPriceObj = redisService.hmGet(RedisKey.ProjectBidTotalPriceData, String.valueOf(projectId));
        //Double realtimeTotalPrice = Double.valueOf((String) realtimeTotalPriceObj);
        //Double upsetTotalPrice = project.getUpsetTotalPrice();

        //(4).该项目提交的报价次数
        Object bidRecordCountObj = redisService.hmGet(RedisKey.BidRecordCount, String.valueOf(projectId));
        if(ObjUtil.isEmpty(bidRecordCountObj)){
            bidRecordCountObj ="0";
        }
        Integer bidRecordCount = Integer.valueOf((String) bidRecordCountObj);

        //(5).提交的产品数量必须和拍卖的产品数量是否一致
        List<ProductBidRecordDataReqDto> productBidRecordDataList = bidRecordReqDto.getProductBidRecordDataList();
        int reqProductAuctionSize = productBidRecordDataList.size();
        Long productAuctionSize = redisService.hmSize(RedisKey.ProductAuction+projectId);
        if(productAuctionSize != reqProductAuctionSize){
            throw new IllegalArgumentException("提交报价的产品数量必须和项目拍卖的产品数量一致");
        }

        //(6).处理提交的产品竞价
        for (int i = 0; i < productBidRecordDataList.size(); i++) {
            //(1).获取到产品的id和加价金额
            ProductBidRecordDataReqDto productBidRecordDataReqDto = productBidRecordDataList.get(i);
            Long productId = productBidRecordDataReqDto.getProductId();
            String productIdKey = String.valueOf(productId);
            Double bidIncr = productBidRecordDataReqDto.getBidIncr();

            //(2).从redis中加载ProductAuction
            ProductAuction productAuction = JSONObject.parseObject((String) redisService.hmGet(RedisKey.ProductAuction+projectId, productIdKey), ProductAuction.class);
            if(ObjUtil.isEmpty(productAuction)){
                throw new IllegalArgumentException("ID为"+productId+"的产品不存在");
            }

            if(bidIncr < productAuction.getBidIncr()){
                throw new IllegalArgumentException("提交的加价不能低于最低加价要求");
            }

            //(3).计算当前单价和总价，以及累加所有产品的总价之和
            Object projectBidUnitPriceObj = redisService.hmGet(RedisKey.ProjectBidUnitPriceData + projectId, productIdKey);
            Double curUnitPriceRedis = Double.valueOf((String) projectBidUnitPriceObj);

            //(4).判断是否是第1次提交，如果是，则单价为原始价,如果不是，单价为加价后的单价
            Double curUnitPrice = curUnitPriceRedis;
            if(bidRecordCount != 0){
                //当前单价=redis数据库中的单价+本次提交的单价
                curUnitPrice = curUnitPriceRedis + bidIncr;
            }

            Double curTotalPrice = curUnitPrice * productAuction.getQuantity();
            allProductTotalPrice+=curTotalPrice;
            //(5).构建ProductBid并保存
            ProductBid productBid = ProductBid.builder()
                    .projectId(projectId)
                    .bidRecordId(bidRecordId)
                    .userId(userVo.getId())
                    .id(new IdWorker().nextId())
                    .productAuctionId(productId)
                    .name(productAuction.getName())
                    .quantity(productAuction.getQuantity())
                    .quantityUnit(productAuction.getQuantityUnit())
                    .upsetPrice(productAuction.getUpsetPrice())
                    .bidIncr(bidIncr)
                    .curUnitPrice(curUnitPrice)
                    .curTotalPrice(curTotalPrice)
                    .createTime(System.currentTimeMillis())
                    .build();
            productBidMapper.insert(productBid);

            //(6).保存productBid到productBidList
            productBidList.add(productBid);

            //(7).保存最新单价到redis
            //redisService.hIncr(RedisKey.ProjectBidUnitPriceData+projectId,productIdKey,bidIncr);
            redisService.hmSet(RedisKey.ProjectBidUnitPriceData+projectId,productIdKey,String.valueOf(curUnitPrice));
        }

        //4.保存最新总价到redis
        redisService.hmSet(RedisKey.ProjectBidTotalPriceData,String.valueOf(projectId),String.valueOf(allProductTotalPrice));

        //5.将最新的productBidList保存到redis
        String productBidListStr = JSONObject.toJSONString(productBidList);
        redisService.set(RedisKey.ProductBidRecordData+projectId,productBidListStr);

        //6.保存当前项目提交报价的次数到redis
        bidRecordCount +=1;
        redisService.hmSet(RedisKey.BidRecordCount,String.valueOf(projectId),String.valueOf(bidRecordCount));


        //6.保存bidRecord
        //(1).将其他所有的竞价数据先设置为出局，本次新增的竞价数据设置为领先
        bidRecordMapper.update(update(BidRecordDynamicSqlSupport.bidRecord)
                .set(BidRecordDynamicSqlSupport.bidStatus).equalToWhenPresent(1703L)
                .where(BidRecordDynamicSqlSupport.bidStatus, isEqualTo(1702L))
                .build()
                .render(RenderingStrategies.MYBATIS3));
        //(2).保存bidRecord
        BidRecord bidRecord = VoPoConverterUtil.copyProperties(bidRecordReqDto, BidRecord.class);
        bidRecord.setId(bidRecordId)
                .setBidStatus(1702L)
                .setCreateTime(System.currentTimeMillis())
                .setProjectName(project.getName())
                .setCurTotalPrice(allProductTotalPrice)
                .setBidTime(System.currentTimeMillis())
                .setUserId(UserUtil.getUserVo().getId())
                .setUserMobile(UserUtil.getUserVo().getMobileNumber())
                .setOrgName(UserUtil.getUserVo().getOrgName());
        bidRecordMapper.insert(bidRecord);


        //7.保存竞价数据到redis并推送到webSocket
        //(1).将当前的竞价数据push到redis中,并保存最新20条竞价数据
        redisService.lPush(RedisKey.BidRecordData+projectId, bidRecord);
        redisService.listTrim(RedisKey.BidRecordData+projectId, 0, 19);


        //(2).推送竞价数据到redis队列(redis队列消费端再实时推送到WebSocket)
        //--1.获取到最新20条竞价数据并封装到map
        List bidRecordList = redisService.lRange(RedisKey.BidRecordData+projectId,0,19);
        String bidRecordListStr = JSONObject.toJSONString(bidRecordList);

        //--2.将数据推送到webSocket
        Map<String, Object> wsDataMap = new HashMap<>();
        wsDataMap.put("hallCurrentUserAmount",redisService.hmSize(RedisKey.HallCurrentUser));
        wsDataMap.put("newestBidRecordList",bidRecordListStr);
        wsDataMap.put("currentUnitPriceList",JSONObject.toJSONString(productBidList));
        wsDataMap.put("currentTotalPrice",bidRecord.getCurTotalPrice());
        webSocketUtil.sendDataToWebSocket("bid","bid"+projectId,wsDataMap);


        //8.判断是否延长给交易结束时间(交易结束之时即为公示开始之时)、、
        //如果第一次竞价规定的时间内有人出价，则通过定时器给竞价结束(公式中)增加120秒
        //如果交易结束前120秒(transExtensionCheckPointTime)内还有人提交报价，
        // 则在当前提交报价时间基础上延长120秒(transExtensionCheckPointTime)，直到当天23:59:59
        //(1).如果当前时间大于第一次竞价规定的时间(比如第一次规定15:35竞价结束，查看当前时间是否大于等于15:35)&&在交易结束前120秒(transExtensionCheckPointTime)内还有人提交报价则在当前提交报价时间基础上延长120秒
        Long firstBidEndTime = project.getStartTime() + project.getBidIncrMaxTime()*60*1000L;
        Long currentTime = System.currentTimeMillis();
        if(currentTime >= firstBidEndTime){
            //(2).查看交易结束时间的定时器。获取到当前项目的交易结束时间(即公示时间)
            TimeTask existGszTimeTask = timeTaskMapper.selectByExampleOne()
                    .where(TimeTaskDynamicSqlSupport.projectId, isEqualTo(projectId))
                    .and(TimeTaskDynamicSqlSupport.type, isEqualTo(1904L))
                    .build()
                    .execute();
            Long cornTime = existGszTimeTask.getCornTime();
            Long checkPointTime = cornTime - transExtensionCheckPointTime * 1000L;
            if(currentTime >= checkPointTime) {

                //--1.最新的公示期时间和cron表达式
                Long gszTime = currentTime + transExtensionCheckPointTime * 1000L;

                //--2.是否交易结束时间已经大于等于交易结束当天的23:59:59，如果是，交易结束时间就是今天23:59:59
                //1).获取到交易当天的日期
                String jyDay = DateUtil.ts2TimeStr(cornTime);
                //2).获取到交易当天23:59:59的时间戳
                jyDay+=" 23:59:59";
                Long jyDayTwelveTime = DateUtil.dateStr2timeStamp(jyDay);
                if(gszTime >= jyDayTwelveTime){
                    gszTime = jyDayTwelveTime;
                }
                String gszTimeDateStr = DateUtil.timeStamp2dateStr(gszTime);
                String gszCron = DateUtil.dateStrConvertCronExpression(gszTimeDateStr, null);

                //--3.更新xxx-job的定时任务
                Map<String, Object> paramMap = new HashMap<>();
                paramMap.put("projectId", projectId);
                String paramJsonStr = JSONUtil.toJsonStr(paramMap);
                String jobId = existGszTimeTask.getJobId();
                XxlJobUtil.updateJob(Integer.valueOf(jobId),adminAddresses, gszCron, "updateProjectAuctionStatusGszJobHandler", paramJsonStr,project.getName()+"("+projectId+")_修改项目竞拍状态为公示中定时任务","bid-service");


                //--4.更新TimeTask
                existGszTimeTask.setCornTime(cornTime).setCorn(gszCron);
                timeTaskMapper.updateByPrimaryKey(existGszTimeTask);

                //--5.更新项目的竞拍结束时间
                project.setEndTime(gszTime);
                projectMapper.updateByPrimaryKey(project);
            }
        }



        //9.返回结果
        Map<String,Object> resultMap = new HashMap<>();
        resultMap.put("msg","提交竞价成功");
        return resultMap;
    }

    @Override
    @Transactional
    public Map<String, Object> addBidRecordHighConcurrency(BidRecordReqDto bidRecordReqDto) {
        StopWatch stopWatch = new StopWatch();
        stopWatch.start("addBidRecord_task1");

        //1.参数校验
        Long projectId = bidRecordReqDto.getProjectId();
        Project project = JSONObject.parseObject((String) redisService.hmGet("Project", String.valueOf(projectId)), Project.class);
        if(ObjUtil.isEmpty(project)){
            throw new IllegalArgumentException("id为:"+projectId+"的项目信息不存在");
        }

        Long auctionStatus = project.getAuctionStatus();
        if(!auctionStatus.equals(1505L)){
            throw new IllegalArgumentException("当前项目未处于交易中，请联系管理员");
        }

        UserVo userVo = UserUtil.getUserVo();
        String roleKey = userVo.getRoleKey();
        if(roleKey.equals("SuperAdmin") || roleKey.equals("Admin")){
            throw new IllegalArgumentException("管理员不能参与竞价");
        }

        /*//2.将当前提交的价格存入redis
        String key = RedisKey.ProjectBidPriceData+projectId;
        RLock rLock = redissonClient.getLock(key);
        try {
            //(1).尝试加锁，最多等待2秒，上锁5秒后自动解锁
            Boolean getLock = rLock.tryLock(2,5, TimeUnit.SECONDS);
            if(getLock){
                //--1.获取到锁后处理业务逻辑
                List<ProductBidRecordDataReqDto> productBidRecordDataList = bidRecordReqDto.getProductBidRecordDataList();
                for (int i = 0; i < productBidRecordDataList.size(); i++) {
                    ProductBidRecordDataReqDto productBidRecordDataReqDto = productBidRecordDataList.get(i);
                    //a.获取到产品的id和加价金额
                    Long id = productBidRecordDataReqDto.getProductId();
                    Double bidIncr = productBidRecordDataReqDto.getBidIncr();
                    String itemKey = String.valueOf(id);
                    //b.将提交的加价金额累加到产品单价上
                    redisService.hIncr(key,itemKey,bidIncr);
                }
                //--2.业务处理完成后解锁
                rLock.unlock();
            //(2).等待2秒后也无法获取到锁，接口返回提示信息
            }else {
                Assert.isTrue(false, "排队中,请稍后重试!");
            }
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            rLock.unlock();
        }*/



        //2.获取到bidRecordId
        Long bidRecordId = new IdWorker().nextId();

        //3.保存ProductBid
        //(1).初始化总价
        Double allProductTotalPrice = 0.0;
        //(2).初始化productBid列表
        List<ProductBid> productBidList = new ArrayList<>();

        //(3).提交的产品数量必须和拍卖的产品数量是否一致
        List<ProductBidRecordDataReqDto> productBidRecordDataList = bidRecordReqDto.getProductBidRecordDataList();
        int reqProductAuctionSize = productBidRecordDataList.size();
        Long productAuctionSize = redisService.hmSize(RedisKey.ProductAuction+projectId);
        if(productAuctionSize != reqProductAuctionSize){
            throw new IllegalArgumentException("提交报价的产品数量必须和项目拍卖的产品数量一致");
        }

        stopWatch.stop();
        stopWatch.start("addBidRecord_task2");

        //(4).处理提交的产品竞价
        for (int i = 0; i < productBidRecordDataList.size(); i++) {
            //(1).获取到产品的id和加价金额
            ProductBidRecordDataReqDto productBidRecordDataReqDto = productBidRecordDataList.get(i);
            Long productId = productBidRecordDataReqDto.getProductId();
            String productIdKey = String.valueOf(productId);
            Double bidIncr = productBidRecordDataReqDto.getBidIncr();

            //(2).从redis中加载ProductAuction
            ProductAuction productAuction = JSONObject.parseObject((String) redisService.hmGet(RedisKey.ProductAuction+projectId, productIdKey), ProductAuction.class);
            if(ObjUtil.isEmpty(productAuction)){
                throw new IllegalArgumentException("ID为"+productId+"的产品不存在");
            }

            //(3).计算当前单价和总计，以及累加所有产品的总价之和
            Object projectBidUnitPriceObj = redisService.hmGet(RedisKey.ProjectBidUnitPriceData + projectId, productIdKey);
            Double curUnitPriceRedis = Double.valueOf((String) projectBidUnitPriceObj);
            //当前单价=数据库中的单价+本次提交的单价
            Double curUnitPrice = curUnitPriceRedis + bidIncr;
            Double curTotalPrice = curUnitPrice * productAuction.getQuantity();
            allProductTotalPrice+=curTotalPrice;
            //(4).构建ProductBid并保存
            ProductBid productBid = ProductBid.builder()
                    .projectId(projectId)
                    .bidRecordId(bidRecordId)
                    .userId(userVo.getId())
                    .id(new IdWorker().nextId())
                    .productAuctionId(productId)
                    .name(productAuction.getName())
                    .quantity(productAuction.getQuantity())
                    .quantityUnit(productAuction.getQuantityUnit())
                    .upsetPrice(productAuction.getUpsetPrice())
                    .bidIncr(bidIncr)
                    .curUnitPrice(curUnitPrice)
                    .curTotalPrice(curTotalPrice)
                    .createTime(System.currentTimeMillis())
                    .build();
            productBidMapper.insert(productBid);

            //(5).保存productBid到productBidList
            productBidList.add(productBid);

            //(6).保存最新单价到redis
            //redisService.hIncr(RedisKey.ProjectBidUnitPriceData+projectId,productIdKey,bidIncr);
            redisService.hmSet(RedisKey.ProjectBidUnitPriceData+projectId,productIdKey,String.valueOf(curUnitPrice));
        }

        //4.保存最新总价到redis
        redisService.hmSet(RedisKey.ProjectBidTotalPriceData,String.valueOf(projectId),String.valueOf(allProductTotalPrice));

        //5.将最新的productBidList保存到redis
        String productBidListStr = JSONObject.toJSONString(productBidList);
        redisService.set(RedisKey.ProductBidRecordData+projectId,productBidListStr);

        //6.保存bidRecord
        //(1).将其他所有的竞价数据先设置为出局，本次新增的竞价数据设置为领先
        bidRecordMapper.update(update(BidRecordDynamicSqlSupport.bidRecord)
                .set(BidRecordDynamicSqlSupport.bidStatus).equalToWhenPresent(1703L)
                .where(BidRecordDynamicSqlSupport.bidStatus, isEqualTo(1702L))
                .build()
                .render(RenderingStrategies.MYBATIS3));
        //(2).保存bidRecord
        BidRecord bidRecord = VoPoConverterUtil.copyProperties(bidRecordReqDto, BidRecord.class);
        bidRecord.setId(bidRecordId)
                .setBidStatus(1702L)
                .setCreateTime(System.currentTimeMillis())
                .setProjectName(project.getName())
                .setCurTotalPrice(allProductTotalPrice)
                .setBidTime(System.currentTimeMillis())
                .setUserId(UserUtil.getUserVo().getId())
                .setUserMobile(UserUtil.getUserVo().getMobileNumber())
                .setOrgName(UserUtil.getUserVo().getOrgName());
        bidRecordMapper.insert(bidRecord);
        //7.保存竞价数据到redis并推送到webSocket
        //(1).将当前的竞价数据push到redis中,并保存最新20条竞价数据
        redisService.lPush(RedisKey.BidRecordData+projectId, bidRecord);
        redisService.listTrim(RedisKey.BidRecordData+projectId, 0, 19);


        //(2).推送竞价数据到redis队列(redis队列消费端再实时推送到WebSocket)
        //--1.获取到最新20条竞价数据并封装到map
        List bidRecordList = redisService.lRange(RedisKey.BidRecordData+projectId,0,19);
        String bidRecordListStr = JSONObject.toJSONString(bidRecordList);

        //--2.将数据推送到webSocket
        Map<String, Object> wsDataMap = new HashMap<>();
        wsDataMap.put("hallCurrentUserAmount",redisService.hmSize(RedisKey.HallCurrentUser));
        wsDataMap.put("newestBidRecordList",bidRecordListStr);
        wsDataMap.put("currentUnitPriceList",JSONObject.toJSONString(productBidList));
        wsDataMap.put("currentTotalPrice",bidRecord.getCurTotalPrice());
        webSocketUtil.sendDataToWebSocket("bid","bid"+projectId,wsDataMap);

        stopWatch.stop();
        for (StopWatch.TaskInfo taskInfo : stopWatch.getTaskInfo()) {
            System.out.println(taskInfo.getTaskName()+"耗时:"+taskInfo.getTimeMillis()+"毫秒");
        }
        System.out.println("addBidRecord总耗时:"+stopWatch.getTotalTimeSeconds()+"秒");

        //8.返回结果
        Map<String,Object> resultMap = new HashMap<>();
        resultMap.put("msg","提交竞价成功");
        return resultMap;
    }

    @Override
    @Transactional
    public Map<String, Object> deleteBidRecordById(Long id){
        BidRecord bidRecord = bidRecordMapper.selectByPrimaryKey(id);
        if(bidRecord == null){
            throw new IllegalArgumentException("id为:"+id+"的竞拍记录信息不存在");
        }

        bidRecordMapper.deleteByExample()
                    .where(BidRecordDynamicSqlSupport.id, isEqualTo(id))
                    .build()
                    .execute();

        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("msg","删除竞拍记录成功");
        return resultMap;
    }


    @Override
    @Transactional
    public Map<String, Object> insertOrUpdateBidRecord(BidRecordReqDto bidRecordReqDto) {
        //1.参数校验

        //2.判断bidRecord是否存在
        BidRecord bidRecord = bidRecordMapper.selectByPrimaryKey(bidRecordReqDto.getId());
        if(ObjUtil.isEmpty(bidRecord)){
            throw new IllegalArgumentException("id为:"+bidRecordReqDto.getId()+"的竞拍记录不存在");
        }

        //3.更新BidRecord
        //(1)复制BidRecordDto中的请求参数到BidRecord
        VoPoConverterUtil.beanConverterNotNull(bidRecordReqDto, bidRecord);

        //4.保存
        bidRecordMapper.updateByPrimaryKey(bidRecord);

        //5.返回结果
        Map<String,Object> resultMap = new HashMap<>();
        resultMap.put("msg","更新竞拍记录信息成功");
        return resultMap;
    }

    @Override
    public Map<String, Object> getBidRecordById(Long id){
        BidRecord e = bidRecordMapper.selectByPrimaryKey(id);
        if(ObjUtil.isEmpty(e)){
            throw new IllegalArgumentException("id为:"+id+"的竞拍记录信息不存在");
        }

        List<ProductBid> productBidList = productBidMapper.selectByExample()
                .where(ProductBidDynamicSqlSupport.bidrecordId,isEqualTo(id))
                .build()
                .execute();

        Map<String, Object> attr = new HashMap<>();
        attr.put("id", e.getId());
        attr.put("projectId", e.getProjectId());
        attr.put("projectName", e.getProjectName());
        attr.put("curTotalPrice", e.getCurTotalPrice());
        attr.put("curUnitPriceList", productBidList);
        attr.put("userId", e.getUserId());
        attr.put("orgName", e.getOrgName());
        attr.put("userMobile", e.getUserMobile());
        attr.put("bidTime", e.getBidTime());
        attr.put("bidStatus", e.getBidStatus());
        attr.put("orderNum", e.getOrderNum());
        attr.put("createTime", e.getCreateTime());
        return attr;
    }

    @Override
    public PageVo<Map<String, Object>> getBidRecordListPageVo(BidRecordPageReqDto bidRecordPageReqDto){

        //1.查询列表
        List<BidRecord> list = queryListByPageReqDto(bidRecordPageReqDto,true);

        //2.构建pageVo
        PageVo<BidRecord> pageVo = new PageVo<>(list);

        //3.对象转为map分页输出
        return PageVo.of(
                pageVo,
                e -> {
                    Map<String, Object> attr = new HashMap<>();
                    attr.put("id", e.getId());
                    attr.put("projectId", e.getProjectId());
                    attr.put("projectName", e.getProjectName());
                    attr.put("curTotalPrice", e.getCurTotalPrice());
                    attr.put("userId", e.getUserId());
                    attr.put("orgName", e.getOrgName());
                    attr.put("userMobile", e.getUserMobile());
                    attr.put("bidTime", e.getBidTime());
                    attr.put("bidStatus", e.getBidStatus());
                    attr.put("orderNum", e.getOrderNum());
                    attr.put("createTime", e.getCreateTime());
                    return attr;
                }
        );
    }

    @Override
    public void downloadTemplateExcel(HttpServletResponse response){
        //1.查询到该对象的导入模板
        /*BidRecord bidRecord = bidRecordMapper.selectByExampleOne()
                .where(BidRecordDynamicSqlSupport.fileKey, isEqualTo("bidRecordTemplateExcel"))
                .build()
                .execute();
        if(ObjUtil.isEmpty(bidRecord)){
            throw new IllegalArgumentException("模板文件暂未上传,请联系管理员");
        }
        //2.响应文件到页面
        minioUtil.download(bidRecord.getStorePath(),bidRecord.getName(),response);*/
    }

    @Override
    public Map<String, Object> importByExcel(MultipartHttpServletRequest request){

        //1.文件是否为空
        MultipartFile excelFile = request.getFile("xls");
        if (ObjUtil.isEmpty(excelFile)) {
            throw new IllegalArgumentException("文件不能为空");
        }

        //2.清空-->字段重复校验map
        fieldDupValidator.resetFieldSetMap();

        //3.获取excel表格每行的内容
        ExcelReader excelReader = null;
        InputStream in = null;
        BidRecordExcelListener bidRecordExcelListener = new BidRecordExcelListener(this,validator,fieldDupValidator);
        try {
            in = excelFile.getInputStream();
            EasyExcel.read(in, BidRecordExcelVo.class, bidRecordExcelListener).sheet().doRead();
        } catch (IOException ex) {
            ex.getStackTrace();
        } finally {
            try {
                in.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            if (excelReader != null) {
                excelReader.finish();
            }
        }

        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("msg", "导入系统文件成功");
        return resultMap;
    }

    @Override
    public void exportToExcel(BidRecordPageReqDto bidRecordPageReqDto,HttpServletResponse response){
        //1.查询列表
        List<BidRecord> bidRecordList = queryListByPageReqDto(bidRecordPageReqDto,false);

        //2.将原始列表转为导出对象列表
        List<BidRecordExcelVo> bidRecordExcelVoList = bidRecordList.stream().map(e -> {
            BidRecordExcelVo bidRecordExcelVo = VoPoConverterUtil.copyProperties(e, BidRecordExcelVo.class);
            return bidRecordExcelVo;
        }).collect(Collectors.toList());

        //3.获取到输出流
        OutputStream outputStream = null;
        try {
            //(1).文件名，表名，表头，格式
            String sheetName = "竞拍记录";
            String fileName = sheetName.concat(String.valueOf(System.currentTimeMillis())).concat(".xlsx");

            //(2).response输出文件流格式
            response.setContentType("APPLICATION/OCTET-STREAM");
            response.setHeader("Content-Disposition", "attachment;filename=" + new String(fileName.getBytes("gb2312"), "ISO8859-1"));

            //(3).获取到输出流
            outputStream = response.getOutputStream();
        } catch (IOException e) {
            e.printStackTrace();
        }

        //4.将输出流写入到response,直接响应给浏览器
        EasyExcel.write(outputStream)
                .head(BidRecordExcelVo.class)
                .sheet("Sheet1")
                .doWrite(bidRecordExcelVoList);
    }

    private List<BidRecord> queryListByPageReqDto(BidRecordPageReqDto bidRecordPageReqDto,Boolean needPaging){
        //1.查询语句构建
        QueryExpressionDSL<MyBatis3SelectModelAdapter<List<BidRecord>>>.QueryExpressionWhereBuilder builder = bidRecordMapper.selectByExample().where();

        //2.根据查询条件封装查询命令
        //(1).关键字查询
        String projectName = bidRecordPageReqDto.getProjectName();
        if(!ObjUtil.isEmpty(projectName)){
        builder.and(BidRecordDynamicSqlSupport.projectName, isLike("%"+projectName+"%"));
        }

        Long projectId = bidRecordPageReqDto.getProjectId();
        if(!ObjUtil.isEmpty(projectId)){
        builder.and(BidRecordDynamicSqlSupport.projectId, isEqualTo(projectId));
        }

        Long userId = bidRecordPageReqDto.getUserId();
        if(!ObjUtil.isEmpty(userId)){
            builder.and(BidRecordDynamicSqlSupport.userId, isEqualTo(userId));
        }

        Long bidStatus = bidRecordPageReqDto.getBidStatus();
        if(!ObjUtil.isEmpty(bidStatus)){
            builder.and(BidRecordDynamicSqlSupport.bidStatus, isEqualTo(bidStatus));
        }

        //3.排序
        builder.orderBy(BidRecordDynamicSqlSupport.bidTime.descending());

        //4.查询(不需要分页即列表)
        if(needPaging){
        PageHelper.startPage(bidRecordPageReqDto.getPageNum(), bidRecordPageReqDto.getPageSize());
        }

        List<BidRecord> list = builder.build().execute();
        return list;
    }
}