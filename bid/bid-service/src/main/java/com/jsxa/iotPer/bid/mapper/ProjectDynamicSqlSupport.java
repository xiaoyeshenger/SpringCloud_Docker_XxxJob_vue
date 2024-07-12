package com.jsxa.iotPer.bid.mapper;

import org.mybatis.dynamic.sql.SqlColumn;
import org.mybatis.dynamic.sql.SqlTable;

import javax.annotation.Generated;
import java.sql.JDBCType;

public final class ProjectDynamicSqlSupport {
    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final Project project = new Project();

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Long> id = project.id;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<String> name = project.name;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Long> startTime = project.startTime;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Long> endTime = project.endTime;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Integer> weekendCount = project.weekendCount;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Double> upsetTotalPrice = project.upsetTotalPrice;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Integer> bidincrmaxTime = project.bidincrmaxTime;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<String> oosUrl = project.oosUrl;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Long> auctionStatus = project.auctionStatus;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<String> projectDetails = project.projectDetails;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<String> bidNotes = project.bidNotes;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<String> bidRule = project.bidRule;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<String> contact = project.contact;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<String> contactMobile = project.contactMobile;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Long> transStatus = project.transStatus;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Double> transtotalPrice = project.transtotalPrice;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Long> bidrecordId = project.bidrecordId;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Integer> orderNum = project.orderNum;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Long> createTime = project.createTime;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final class Project extends SqlTable {
        public final SqlColumn<Long> id = column("id", JDBCType.BIGINT);

        public final SqlColumn<String> name = column("name", JDBCType.VARCHAR);

        public final SqlColumn<Long> startTime = column("start_time", JDBCType.BIGINT);

        public final SqlColumn<Long> endTime = column("end_time", JDBCType.BIGINT);
        public final SqlColumn<Integer> weekendCount = column("weekend_count", JDBCType.INTEGER);
        public final SqlColumn<Double> upsetTotalPrice = column("upsetTotal_price", JDBCType.DOUBLE);

        public final SqlColumn<Integer> bidincrmaxTime = column("bidIncrMax_time", JDBCType.INTEGER);

        public final SqlColumn<String> oosUrl = column("oos_url", JDBCType.VARCHAR);

        public final SqlColumn<Long> auctionStatus = column("auction_status", JDBCType.BIGINT);

        public final SqlColumn<String> projectDetails = column("project_details", JDBCType.VARCHAR);

        public final SqlColumn<String> bidNotes = column("bid_notes", JDBCType.VARCHAR);

        public final SqlColumn<String> bidRule = column("bid_rule", JDBCType.VARCHAR);

        public final SqlColumn<String> contact = column("contact", JDBCType.VARCHAR);

        public final SqlColumn<String> contactMobile = column("contact_mobile", JDBCType.VARCHAR);

        public final SqlColumn<Long> transStatus = column("trans_status", JDBCType.BIGINT);

        public final SqlColumn<Double> transtotalPrice = column("transTotal_price", JDBCType.DOUBLE);

        public final SqlColumn<Long> bidrecordId = column("bidRecord_id", JDBCType.BIGINT);

        public final SqlColumn<Integer> orderNum = column("order_num", JDBCType.INTEGER);

        public final SqlColumn<Long> createTime = column("create_time", JDBCType.BIGINT);

        public Project() {
            super("project");
        }
    }
}