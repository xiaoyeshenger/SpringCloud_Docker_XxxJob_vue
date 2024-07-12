package com.jsxa.iotPer;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;
import org.springframework.web.socket.config.annotation.EnableWebSocket;

/**
 * @Author: zhangyong
 * description: 竞价微服务启动器
 * @Date: 2021-08-31 15:30
 * @Param:
 * @Return:
 */
@SpringBootApplication
@EnableFeignClients
@EnableWebSocket
public class BidApplication {

    public static void main(String[] args) {
        SpringApplication.run(BidApplication.class);
    }
}
