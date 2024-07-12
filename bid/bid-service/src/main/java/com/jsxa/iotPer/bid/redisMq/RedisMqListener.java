package com.jsxa.iotPer.bid.redisMq;


import com.alibaba.fastjson.JSONObject;
import com.jsxa.iotPer.bid.webSocket.WebSocketService;
import lombok.RequiredArgsConstructor;
import lombok.SneakyThrows;
import lombok.Synchronized;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringEscapeUtils;
import org.springframework.data.redis.connection.Message;
import org.springframework.data.redis.connection.MessageListener;
import org.springframework.stereotype.Component;
import org.springframework.web.socket.TextMessage;

/**
 * @Author: zhangyong
 * description: redis消息监听器(类似redis队列的消费端)，保证ws能发到所有连接服务器的客户端
 *              (服务器有多台，每个用户连接的服务器不同，这就要求每个服务器都能发送ws消息)
 * @Date: 2019-01-18 19:15
 * @Param:
 * @Return:
 */
@Component
@Slf4j
@RequiredArgsConstructor
public class RedisMqListener implements MessageListener {

    private final WebSocketService webSocketService;


    @Override
    @Synchronized
    @SneakyThrows
    public void onMessage(Message message, byte[] pattern) {
        //(1).订阅的topic
        String topic = new String(pattern);
        //log.info("监听到redis index消息,topic:{}",topic);

        //(2).消息内容
        byte[] body = message.getBody();
        String result= new String(body,"utf-8");
        result = result.substring(1,result.length()-1);
        String s = StringEscapeUtils.unescapeJava(result);
        JSONObject jsonObject = JSONObject.parseObject(s);

        String userName = jsonObject.getString("userName");
        String data = jsonObject.getString("data");
        TextMessage textMessage = new TextMessage(data);

        //(3).记录推送
        webSocketService.sendMessageToOne(userName,textMessage);
    }
}

