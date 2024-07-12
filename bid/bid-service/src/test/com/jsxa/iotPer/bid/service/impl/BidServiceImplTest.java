package com.jsxa.iotPer.bid.service.impl;

import com.jsxa.iotPer.bid.webSocket.WebSocketService;
import com.jsxa.iotPer.bid.webSocket.WebSocketUtil;
import com.jsxa.iotPer.common.redis.RedisService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.web.socket.TextMessage;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest
public class BidServiceImplTest {

    @Autowired
    private RedisService redisService;

    @Autowired
    private WebSocketService webSocketService;

    @Test
    public void getBidById() {
        Long aLong = redisService.hmSize("ProjectAuction:1745005746197983232");
        System.out.println("HASH item总数量:"+aLong);
    }

    @Test
    public void testWebScoket() {
        //(3).记录推送
        String userName = "bid1745643417811353600";
        String str = "test ws jingjia";
        TextMessage textMessage = new TextMessage(str);
        webSocketService.sendMessageToOne(userName,textMessage);
        System.out.println("userName:"+userName);
    }
}