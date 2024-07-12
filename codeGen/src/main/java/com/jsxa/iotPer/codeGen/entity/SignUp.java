package com.jsxa.iotPer.codeGen.entity;

import io.swagger.annotations.ApiModelProperty;
import javax.annotation.Generated;

public class SignUp {
    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Long id;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Long projectId;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Long userId;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private String orgName;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private String userName;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private String userMobile;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Long applyStatus;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private String msg;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Long applyTime;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public Long getId() {
        return id;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setId(Long id) {
        this.id = id;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public Long getProjectId() {
        return projectId;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setProjectId(Long projectId) {
        this.projectId = projectId;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public Long getUserId() {
        return userId;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setUserId(Long userId) {
        this.userId = userId;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public String getOrgName() {
        return orgName;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setOrgName(String orgName) {
        this.orgName = orgName == null ? null : orgName.trim();
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public String getUserName() {
        return userName;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public String getUserMobile() {
        return userMobile;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setUserMobile(String userMobile) {
        this.userMobile = userMobile == null ? null : userMobile.trim();
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public Long getApplyStatus() {
        return applyStatus;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setApplyStatus(Long applyStatus) {
        this.applyStatus = applyStatus;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public String getMsg() {
        return msg;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setMsg(String msg) {
        this.msg = msg == null ? null : msg.trim();
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public Long getApplyTime() {
        return applyTime;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setApplyTime(Long applyTime) {
        this.applyTime = applyTime;
    }
}