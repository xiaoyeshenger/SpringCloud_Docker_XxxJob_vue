package com.jsxa.iotPer.codeGen.entity;

import io.swagger.annotations.ApiModelProperty;
import javax.annotation.Generated;

public class Project {
    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Long id;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private String name;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Long startTime;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Long endTime;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private String quantityUnit;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Double quantity;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Double upsetPrice;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Double bidIncr;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Integer bidincrmaxTime;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private String oosUrl;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Long auctionStatus;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private String projectDetails;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private String bidNotes;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private String bidRule;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private String contact;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private String contactMobile;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Long transStatus;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Double transunitPrice;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Double transtotalPrice;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Long bidrecordId;

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
    public String getName() {
        return name;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setName(String name) {
        this.name = name == null ? null : name.trim();
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
    public Double getUpsetPrice() {
        return upsetPrice;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setUpsetPrice(Double upsetPrice) {
        this.upsetPrice = upsetPrice;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public Double getBidIncr() {
        return bidIncr;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setBidIncr(Double bidIncr) {
        this.bidIncr = bidIncr;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public Integer getBidincrmaxTime() {
        return bidincrmaxTime;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setBidincrmaxTime(Integer bidincrmaxTime) {
        this.bidincrmaxTime = bidincrmaxTime;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public String getOosUrl() {
        return oosUrl;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setOosUrl(String oosUrl) {
        this.oosUrl = oosUrl == null ? null : oosUrl.trim();
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public Long getAuctionStatus() {
        return auctionStatus;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setAuctionStatus(Long auctionStatus) {
        this.auctionStatus = auctionStatus;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public String getProjectDetails() {
        return projectDetails;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setProjectDetails(String projectDetails) {
        this.projectDetails = projectDetails == null ? null : projectDetails.trim();
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public String getBidNotes() {
        return bidNotes;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setBidNotes(String bidNotes) {
        this.bidNotes = bidNotes == null ? null : bidNotes.trim();
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public String getBidRule() {
        return bidRule;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setBidRule(String bidRule) {
        this.bidRule = bidRule == null ? null : bidRule.trim();
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public String getContact() {
        return contact;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setContact(String contact) {
        this.contact = contact == null ? null : contact.trim();
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public String getContactMobile() {
        return contactMobile;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setContactMobile(String contactMobile) {
        this.contactMobile = contactMobile == null ? null : contactMobile.trim();
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public Long getTransStatus() {
        return transStatus;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setTransStatus(Long transStatus) {
        this.transStatus = transStatus;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public Double getTransunitPrice() {
        return transunitPrice;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setTransunitPrice(Double transunitPrice) {
        this.transunitPrice = transunitPrice;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public Double getTranstotalPrice() {
        return transtotalPrice;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setTranstotalPrice(Double transtotalPrice) {
        this.transtotalPrice = transtotalPrice;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public Long getBidrecordId() {
        return bidrecordId;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setBidrecordId(Long bidrecordId) {
        this.bidrecordId = bidrecordId;
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