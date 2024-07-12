package com.jsxa.iotPer.codeGen.entity;

import io.swagger.annotations.ApiModelProperty;
import javax.annotation.Generated;

public class ProductAuction {
    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Long id;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Long projectId;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private String name;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Double quantity;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Long quantityUnit;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Double upsetPrice;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Double bidIncr;

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
    public String getName() {
        return name;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setName(String name) {
        this.name = name == null ? null : name.trim();
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
    public Long getQuantityUnit() {
        return quantityUnit;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setQuantityUnit(Long quantityUnit) {
        this.quantityUnit = quantityUnit;
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
    public Long getCreateTime() {
        return createTime;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setCreateTime(Long createTime) {
        this.createTime = createTime;
    }
}