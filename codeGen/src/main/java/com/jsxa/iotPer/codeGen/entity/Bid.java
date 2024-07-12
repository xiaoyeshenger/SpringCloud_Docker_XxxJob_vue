package com.jsxa.iotPer.codeGen.entity;

import io.swagger.annotations.ApiModelProperty;
import javax.annotation.Generated;

public class Bid {
    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Long id;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Long projectId;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private String projectName;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Double upsetPrice;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Long startTime;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Long endTime;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private String quantityUnit;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Double quantity;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Long userId;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private String userName;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private String userMobile;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Long orgId;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private String orgName;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Integer orderNum;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Long applyStatus;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Long signupTime;

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
    public Double getUpsetPrice() {
        return upsetPrice;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setUpsetPrice(Double upsetPrice) {
        this.upsetPrice = upsetPrice;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public Long getStartTime() {
        return startTime;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setStartTime(Long startTime) {
        this.startTime = startTime;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public Long getEndTime() {
        return endTime;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setEndTime(Long endTime) {
        this.endTime = endTime;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public String getQuantityUnit() {
        return quantityUnit;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setQuantityUnit(String quantityUnit) {
        this.quantityUnit = quantityUnit == null ? null : quantityUnit.trim();
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public Double getQuantity() {
        return quantity;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setQuantity(Double quantity) {
        this.quantity = quantity;
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
    public Long getOrgId() {
        return orgId;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setOrgId(Long orgId) {
        this.orgId = orgId;
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
    public Integer getOrderNum() {
        return orderNum;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setOrderNum(Integer orderNum) {
        this.orderNum = orderNum;
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
    public Long getSignupTime() {
        return signupTime;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setSignupTime(Long signupTime) {
        this.signupTime = signupTime;
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