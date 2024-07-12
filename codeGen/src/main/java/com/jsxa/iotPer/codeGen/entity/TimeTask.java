package com.jsxa.iotPer.codeGen.entity;

import io.swagger.annotations.ApiModelProperty;
import javax.annotation.Generated;

public class TimeTask {
    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Long id;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Long projectId;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private String projectName;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private String jobId;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private String xxljobadminAddress;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private String corn;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private String handler;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private String appName;

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
    public String getJobId() {
        return jobId;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setJobId(String jobId) {
        this.jobId = jobId == null ? null : jobId.trim();
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public String getXxljobadminAddress() {
        return xxljobadminAddress;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setXxljobadminAddress(String xxljobadminAddress) {
        this.xxljobadminAddress = xxljobadminAddress == null ? null : xxljobadminAddress.trim();
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public String getCorn() {
        return corn;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setCorn(String corn) {
        this.corn = corn == null ? null : corn.trim();
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public String getHandler() {
        return handler;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setHandler(String handler) {
        this.handler = handler == null ? null : handler.trim();
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public String getAppName() {
        return appName;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setAppName(String appName) {
        this.appName = appName == null ? null : appName.trim();
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