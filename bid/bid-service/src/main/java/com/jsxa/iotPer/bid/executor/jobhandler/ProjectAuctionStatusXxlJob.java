package com.jsxa.iotPer.bid.executor.jobhandler;

import cn.hutool.json.JSONUtil;
import com.alibaba.fastjson.JSONObject;
import com.jsxa.iotPer.bid.bo.po.BidRecord;
import com.jsxa.iotPer.bid.bo.po.Project;
import com.jsxa.iotPer.bid.bo.po.TimeTask;
import com.jsxa.iotPer.bid.mapper.*;
import com.jsxa.iotPer.bid.util.XxlJobUtil;
import com.jsxa.iotPer.bid.webSocket.WebSocketUtil;
import com.jsxa.iotPer.bid.xxxJobCore.context.XxlJobHelper;
import com.jsxa.iotPer.bid.xxxJobCore.handler.annotation.XxlJob;
import com.jsxa.iotPer.common.mapper.UserDynamicSqlSupport;
import com.jsxa.iotPer.common.redis.RedisKey;
import com.jsxa.iotPer.common.redis.RedisService;
import com.jsxa.iotPer.common.utils.DateUtil;
import com.jsxa.iotPer.common.utils.ObjUtil;
import lombok.AllArgsConstructor;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.mybatis.dynamic.sql.render.RenderingStrategies;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.stream.Collectors;

import static org.mybatis.dynamic.sql.SqlBuilder.*;
import static org.mybatis.dynamic.sql.select.SelectDSL.select;


@Component
@RequiredArgsConstructor
@Slf4j
public class ProjectAuctionStatusXxlJob {

    @Value("${xxl.job.admin.addresses}")
    private String adminAddresses;

    @Value("${bid.project.transExtensionCheckPointTime}")
    private Integer transExtensionCheckPointTime;

    private final RedisService redisService;

    private final WebSocketUtil webSocketUtil;

    private final ProjectMapper projectMapper;

    private final BidRecordMapper bidRecordMapper;

    private final BidMapper bidMapper;

    private final TimeTaskMapper timeTaskMapper;


    /**
     * 修改项目状态为报名中
     */
    @XxlJob("updateProjectAuctionStatusBmzJobHandler")
    public void updateProjectAuctionStatusBmzJobHandler() {
        XxlJobHelper.log("XXL-JOB, updateProjectAuctionStatusBmz");
        String jobParam = XxlJobHelper.getJobParam();
        log.info("执行任务-修改项目状态为报名中:{},jobParam:{}", DateUtil.getCurrentTimeStr(),jobParam.toString());

        JSONObject jsonObject = JSONObject.parseObject(jobParam);
        Long projectId = jsonObject.getLong("projectId");
        Project project = projectMapper.selectByPrimaryKey(projectId);
        if(ObjUtil.isEmpty(project)){
            throw new IllegalArgumentException("id为:"+projectId+"的项目信息不存在");
        }
        project.setAuctionStatus(1504L);
        projectMapper.updateByPrimaryKey(project);
        redisService.hmSet("Project", String.valueOf(projectId), JSONObject.toJSONString(project));

        bidMapper.update(update(BidDynamicSqlSupport.bid)
                .set(BidDynamicSqlSupport.auctionStatus).equalToWhenPresent(1504L)
                .where(BidDynamicSqlSupport.projectId, isEqualTo(projectId))
                .build()
                .render(RenderingStrategies.MYBATIS3));


        List<Project> newestProjectList = projectMapper.selectByExample().build().execute();
        List<Map<String, Object>> mapList = newestProjectList.stream().map(p -> {
            Map<String, Object> map = new HashMap<>();
            map.put(String.valueOf(p.getId()), p.getAuctionStatus());
            return map;
        }).collect(Collectors.toList());

        webSocketUtil.sendDataToWebSocket("bid","bid"+"0","projectAuctionStatus",mapList);
    }

    /**
     * 修改项目状态为交易中
     */
    @XxlJob("updateProjectAuctionStatusJyzJobHandler")
    public void updateProjectAuctionStatusJyzJobHandler() {
        XxlJobHelper.log("XXL-JOB, updateProjectAuctionStatusJyz");
        String jobParam = XxlJobHelper.getJobParam();
        log.info("执行任务-修改项目状态为交易中:{},jobParam:{}", DateUtil.getCurrentTimeStr(),jobParam.toString());

        JSONObject jsonObject = JSONObject.parseObject(jobParam);
        Long projectId = jsonObject.getLong("projectId");
        Project project = projectMapper.selectByPrimaryKey(projectId);
        if(ObjUtil.isEmpty(project)){
            throw new IllegalArgumentException("id为:"+projectId+"的项目信息不存在");
        }
        project.setAuctionStatus(1505L);
        projectMapper.updateByPrimaryKey(project);
        redisService.hmSet("Project", String.valueOf(projectId), JSONObject.toJSONString(project));

        bidMapper.update(update(BidDynamicSqlSupport.bid)
                .set(BidDynamicSqlSupport.auctionStatus).equalToWhenPresent(1505L)
                .where(BidDynamicSqlSupport.projectId, isEqualTo(projectId))
                .build()
                .render(RenderingStrategies.MYBATIS3));


        List<Project> newestProjectList = projectMapper.selectByExample().build().execute();
        List<Map<String, Object>> mapList = newestProjectList.stream().map(p -> {
            Map<String, Object> map = new HashMap<>();
            map.put(String.valueOf(p.getId()), p.getAuctionStatus());
            return map;
        }).collect(Collectors.toList());

        webSocketUtil.sendDataToWebSocket("bid","bid"+"0","projectAuctionStatus",mapList);
    }

    /**
     * 修改项目状态为公示中(竞价结束时计算最高报价并修改项目状态为公式中)
     */
    @XxlJob("updateProjectAuctionStatusGszJobHandler")
    public void updateProjectAuctionStatusGszJobHandler() {

        //1.查询到当前执行的任务--找到对应的项目
        XxlJobHelper.log("XXL-JOB, updateProjectAuctionStatusGsz");
        String jobParam = XxlJobHelper.getJobParam();
        log.info("执行任务-修改项目状态为公示中:{},jobParam:{}", DateUtil.getCurrentTimeStr(),jobParam.toString());

        JSONObject jsonObject = JSONObject.parseObject(jobParam);
        Long projectId = jsonObject.getLong("projectId");
        Project project = projectMapper.selectByPrimaryKey(projectId);
        if(ObjUtil.isEmpty(project)){
            throw new IllegalArgumentException("id为:"+ projectId +"的项目不存在");
        }

        //1.修改项目状态
        //(1).如果没人出价,拍卖状态改为结束，交易状态改为为流拍;
        //有人出价则拍卖状态改为公示中，交易状态改为为未成交;
        Long auctionStatus = 1507L;
        BidRecord bidRecord = bidRecordMapper.selectMaxTotalPriceBidRecord(projectId);
        if(ObjUtil.isEmpty(bidRecord)){
            project.setAuctionStatus(auctionStatus).setTransStatus(1603L);
        }else {
            //(2).有人出价则拍卖状态改为公示中，交易状态改为为未成交(即公示中，公示完成才算成交完成);
            auctionStatus = 1506L;
            project.setAuctionStatus(auctionStatus)
                    .setTransStatus(1604L)
                    .setTransTotalPrice(bidRecord.getCurTotalPrice())
                    .setBidRecordId(bidRecord.getId())
                    .setBidRecordId(bidRecord.getId())
                    .setBidRecordId(bidRecord.getId());

        }
        projectMapper.updateByPrimaryKey(project);
        redisService.hmSet("Project", String.valueOf(projectId), JSONObject.toJSONString(project));

        bidMapper.update(update(BidDynamicSqlSupport.bid)
                .set(BidDynamicSqlSupport.auctionStatus).equalToWhenPresent(auctionStatus)
                .where(BidDynamicSqlSupport.projectId, isEqualTo(projectId))
                .build()
                .render(RenderingStrategies.MYBATIS3));

        List<Project> newestProjectList = projectMapper.selectByExample().build().execute();
        List<Map<String, Object>> mapList = newestProjectList.stream().map(p -> {
            Map<String, Object> map = new HashMap<>();
            map.put(String.valueOf(p.getId()), p.getAuctionStatus());
            return map;
        }).collect(Collectors.toList());

        webSocketUtil.sendDataToWebSocket("bid","bid"+"0","projectAuctionStatus",mapList);


    }


    /**
     * 修改项目状态为已结束
     */
    @XxlJob("updateProjectAuctionStatusYjsJobHandler")
    public void updateProjectAuctionStatusYjsJobHandler() {
        XxlJobHelper.log("XXL-JOB, updateProjectAuctionStatusYjs");
        String jobParam = XxlJobHelper.getJobParam();
        log.info("执行任务-修改项目状态为已结束:{},jobParam:{}", DateUtil.getCurrentTimeStr(),jobParam.toString());

        JSONObject jsonObject = JSONObject.parseObject(jobParam);
        Long projectId = jsonObject.getLong("projectId");
        Project project = projectMapper.selectByPrimaryKey(projectId);
        if(ObjUtil.isEmpty(project)){
            throw new IllegalArgumentException("id为:"+ projectId +"的项目不存在");
        }

        //公示结束,再次判断---> 有人出价则改为成交，无人出价则改为流拍
        project.setAuctionStatus(1507L);
        BidRecord bidRecord = bidRecordMapper.selectMaxTotalPriceBidRecord(projectId);
        if(ObjUtil.isEmpty(bidRecord)){
            project.setTransStatus(1603L);
        }else {
            project.setTransStatus(1602L);
        }

        projectMapper.updateByPrimaryKey(project);
        redisService.hmSet("Project", String.valueOf(projectId), JSONObject.toJSONString(project));

        bidMapper.update(update(BidDynamicSqlSupport.bid)
                .set(BidDynamicSqlSupport.auctionStatus).equalToWhenPresent(1507L)
                .where(BidDynamicSqlSupport.projectId, isEqualTo(projectId))
                .build()
                .render(RenderingStrategies.MYBATIS3));

        List<Project> newestProjectList = projectMapper.selectByExample().build().execute();
        List<Map<String, Object>> mapList = newestProjectList.stream().map(p -> {
            Map<String, Object> map = new HashMap<>();
            map.put(String.valueOf(p.getId()), p.getAuctionStatus());
            return map;
        }).collect(Collectors.toList());

        webSocketUtil.sendDataToWebSocket("bid","bid"+"0","projectAuctionStatus",mapList);
    }


    /**
     * 在结束前2秒,检查竞拍规定的时长范围内是否有人出过价，有人出价则自动延续120秒
     */
    @XxlJob("checkProjectBidStatusJobHandler")
    public void checkProjectBidStatusJobHandler() {
        XxlJobHelper.log("XXL-JOB, checkProjectBidStatusJobHandler");
        String jobParam = XxlJobHelper.getJobParam();
        log.info("执行任务-检查竞拍规定的时长范围内是否有人出过价:{},jobParam:{}", DateUtil.getCurrentTimeStr(),jobParam.toString());

        JSONObject jsonObject = JSONObject.parseObject(jobParam);
        Long projectId = jsonObject.getLong("projectId");
        Project project = projectMapper.selectByPrimaryKey(projectId);
        if(ObjUtil.isEmpty(project)){
            throw new IllegalArgumentException("id为:"+ projectId +"的项目不存在");
        }
        Object bidRecordCountObj = redisService.hmGet(RedisKey.BidRecordCount, String.valueOf(projectId));
        if(ObjUtil.isEmpty(bidRecordCountObj)){
            bidRecordCountObj ="0";
        }
        Integer bidRecordCount = Integer.valueOf((String) bidRecordCountObj);
        if(bidRecordCount >= 1){
            //--1.将竞价结束时间自动延续120秒
            TimeTask existGszTimeTask = timeTaskMapper.selectByExampleOne()
                    .where(TimeTaskDynamicSqlSupport.projectId, isEqualTo(projectId))
                    .and(TimeTaskDynamicSqlSupport.type, isEqualTo(1904L))
                    .build()
                    .execute();

            //--2.获取到原本结束时间累加120秒并转换为cron
            Long gszTime = existGszTimeTask.getCornTime();
            gszTime += transExtensionCheckPointTime * 1000L;
            String gszTimeDateStr = DateUtil.timeStamp2dateStr(gszTime);
            String gszCron = DateUtil.dateStrConvertCronExpression(gszTimeDateStr, null);

            //--3.更新xxx-job的定时任务
            Map<String, Object> paramMap = new HashMap<>();
            paramMap.put("projectId", projectId);
            String paramJsonStr = JSONUtil.toJsonStr(paramMap);
            String jobId = existGszTimeTask.getJobId();
            XxlJobUtil.updateJob(Integer.valueOf(jobId),adminAddresses, gszCron, "updateProjectAuctionStatusGszJobHandler", paramJsonStr,project.getName()+"("+projectId+")_修改项目竞拍状态为公示中定时任务","bid-service");


            //--4.更新TimeTask
            existGszTimeTask.setCornTime(gszTime).setCorn(gszCron);
            timeTaskMapper.updateByPrimaryKey(existGszTimeTask);

            //--5.更新项目的竞拍结束时间
            project.setEndTime(gszTime);
            projectMapper.updateByPrimaryKey(project);
        }
    }
}

