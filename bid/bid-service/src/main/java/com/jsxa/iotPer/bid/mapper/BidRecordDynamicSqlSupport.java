package com.jsxa.iotPer.bid.mapper;

import org.mybatis.dynamic.sql.SqlColumn;
import org.mybatis.dynamic.sql.SqlTable;

import javax.annotation.Generated;
import java.sql.JDBCType;

public final class BidRecordDynamicSqlSupport {
    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final BidRecord bidRecord = new BidRecord();

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Long> id = bidRecord.id;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Long> projectId = bidRecord.projectId;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<String> projectName = bidRecord.projectName;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Double> curtotalPrice = bidRecord.curtotalPrice;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Long> userId = bidRecord.userId;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<String> orgName = bidRecord.orgName;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<String> userMobile = bidRecord.userMobile;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Long> bidTime = bidRecord.bidTime;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Long> bidStatus = bidRecord.bidStatus;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Integer> orderNum = bidRecord.orderNum;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Long> createTime = bidRecord.createTime;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final class BidRecord extends SqlTable {
        public final SqlColumn<Long> id = column("id", JDBCType.BIGINT);

        public final SqlColumn<Long> projectId = column("project_id", JDBCType.BIGINT);

        public final SqlColumn<String> projectName = column("project_name", JDBCType.VARCHAR);
        public final SqlColumn<Double> curtotalPrice = column("curTotal_price", JDBCType.DOUBLE);

        public final SqlColumn<Long> userId = column("user_id", JDBCType.BIGINT);

        public final SqlColumn<String> orgName = column("org_name", JDBCType.VARCHAR);

        public final SqlColumn<String> userMobile = column("user_mobile", JDBCType.VARCHAR);

        public final SqlColumn<Long> bidTime = column("bid_time", JDBCType.BIGINT);

        public final SqlColumn<Long> bidStatus = column("bid_status", JDBCType.BIGINT);

        public final SqlColumn<Integer> orderNum = column("order_num", JDBCType.INTEGER);

        public final SqlColumn<Long> createTime = column("create_time", JDBCType.BIGINT);

        public BidRecord() {
            super("bid_record");
        }
    }
}