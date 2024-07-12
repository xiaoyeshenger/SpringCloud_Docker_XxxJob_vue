package com.jsxa.iotPer.gateway.entity;

import io.swagger.annotations.ApiModelProperty;
import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.experimental.Accessors;

import javax.annotation.Generated;
import java.io.Serializable;
import java.util.Date;

@Data
@Getter
@Setter
@Builder
@Accessors(chain=true)
public class User implements Serializable {

    @ApiModelProperty(value = "主键")
    private Long id;

    @ApiModelProperty(value = "登录名")
    private String username;

    @ApiModelProperty(value = "登录密码")
    private String password;

    @ApiModelProperty(value = "昵称")
    private String nickName;

    @ApiModelProperty(value = "用户头像")
    private String userPhoto;

    @ApiModelProperty(value = "用户性别，0：男，1：女")
    private Byte userSex;

    @ApiModelProperty(value = "账户余额")
    private Long accountBalance;

    @ApiModelProperty(value = "用户状态，0：正常")
    private Byte status;

    @ApiModelProperty(value = "创建时间")
    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Date createTime;

    @ApiModelProperty(value = "更新时间")
    private Date updateTime;
}