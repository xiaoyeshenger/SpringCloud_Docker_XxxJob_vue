package com.jsxa.iotPer.codeGen.entity;

import io.swagger.annotations.ApiModelProperty;
import javax.annotation.Generated;

public class BidRecord {
    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Long id;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Long projectId;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private String projectName;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Double projectQuantity;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Double curunitPrice;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Double curtotalPrice;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Long userId;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private String orgName;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private String userMobile;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Long bidTime;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Long bidStatus;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Integer orderNum;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Long createTime;

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
    public String getProjectName() {
        return projectName;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setProjectName(String projectName) {
        this.projectName = projectName == null ? null : projectName.trim();
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public Double getProjectQuantity() {
        return projectQuantity;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setProjectQuantity(Double projectQuantity) {
        this.projectQuantity = projectQuantity;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public Double getCurunitPrice() {
        return curunitPrice;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setCurunitPrice(Double curunitPrice) {
        this.curunitPrice = curunitPrice;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public Double getCurtotalPrice() {
        return curtotalPrice;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setCurtotalPrice(Double curtotalPrice) {
        this.curtotalPrice = curtotalPrice;
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
    public String getUserMobile() {
        return userMobile;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setUserMobile(String userMobile) {
        this.userMobile = userMobile == null ? null : userMobile.trim();
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public Long getBidTime() {
        return bidTime;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setBidTime(Long bidTime) {
        this.bidTime = bidTime;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public Long getBidStatus() {
        return bidStatus;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setBidStatus(Long bidStatus) {
        this.bidStatus = bidStatus;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public Integer getOrderNum() {
        return orderNum;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setOrderNum(Integer orderNum) {
        this.orderNum = orderNum;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public Long getCreateTime() {
        return createTime;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setCreateTime(Long createTime) {
        this.createTime = createTime;
    }
}