package com.jsxa.iotPer.bid.mapper;

import java.sql.JDBCType;
import javax.annotation.Generated;
import org.mybatis.dynamic.sql.SqlColumn;
import org.mybatis.dynamic.sql.SqlTable;

public final class BidDynamicSqlSupport {
    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final Bid bid = new Bid();

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Long> id = bid.id;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Long> projectId = bid.projectId;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<String> projectName = bid.projectName;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Long> auctionStatus = bid.auctionStatus;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Double> upsetTotalPrice = bid.upsetTotalPrice;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Long> startTime = bid.startTime;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Long> endTime = bid.endTime;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Integer> bidincrmaxTime = bid.bidincrmaxTime;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Long> userId = bid.userId;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<String> userName = bid.userName;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<String> userMobile = bid.userMobile;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Long> orgId = bid.orgId;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<String> orgName = bid.orgName;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Integer> orderNum = bid.orderNum;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Long> applyStatus = bid.applyStatus;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Long> signupTime = bid.signupTime;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Long> createTime = bid.createTime;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final class Bid extends SqlTable {
        public final SqlColumn<Long> id = column("id", JDBCType.BIGINT);

        public final SqlColumn<Long> projectId = column("project_id", JDBCType.BIGINT);

        public final SqlColumn<String> projectName = column("project_name", JDBCType.VARCHAR);

        public final SqlColumn<Long> auctionStatus = column("auction_status", JDBCType.BIGINT);

        public final SqlColumn<Double> upsetTotalPrice = column("upsetTotal_price", JDBCType.DOUBLE);

        public final SqlColumn<Long> startTime = column("start_time", JDBCType.BIGINT);

        public final SqlColumn<Long> endTime = column("end_time", JDBCType.BIGINT);
        public final SqlColumn<Integer> bidincrmaxTime = column("bidIncrMax_time", JDBCType.INTEGER);

        public final SqlColumn<Long> userId = column("user_id", JDBCType.BIGINT);

        public final SqlColumn<String> userName = column("user_name", JDBCType.VARCHAR);

        public final SqlColumn<String> userMobile = column("user_mobile", JDBCType.VARCHAR);

        public final SqlColumn<Long> orgId = column("org_id", JDBCType.BIGINT);

        public final SqlColumn<String> orgName = column("org_name", JDBCType.VARCHAR);

        public final SqlColumn<Integer> orderNum = column("order_num", JDBCType.INTEGER);

        public final SqlColumn<Long> applyStatus = column("apply_status", JDBCType.BIGINT);

        public final SqlColumn<Long> signupTime = column("signUp_time", JDBCType.BIGINT);

        public final SqlColumn<Long> createTime = column("create_time", JDBCType.BIGINT);

        public Bid() {
            super("bid");
        }
    }
}