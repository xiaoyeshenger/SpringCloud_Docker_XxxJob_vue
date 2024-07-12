package com.jsxa.iotPer.bid.mapper;

import java.sql.JDBCType;
import javax.annotation.Generated;
import org.mybatis.dynamic.sql.SqlColumn;
import org.mybatis.dynamic.sql.SqlTable;

public final class ProductBidDynamicSqlSupport {
    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final ProductBid productBid = new ProductBid();

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Long> id = productBid.id;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Long> productAuctionId = productBid.productAuctionId;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Long> projectId = productBid.projectId;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Long> bidrecordId = productBid.bidrecordId;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Long> userId = productBid.userId;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<String> name = productBid.name;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Double> quantity = productBid.quantity;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Long> quantityUnit = productBid.quantityUnit;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Double> upsetPrice = productBid.upsetPrice;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Double> bidIncr = productBid.bidIncr;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Double> curunitPrice = productBid.curunitPrice;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Double> curtotalPrice = productBid.curtotalPrice;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Long> createTime = productBid.createTime;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final class ProductBid extends SqlTable {
        public final SqlColumn<Long> id = column("id", JDBCType.BIGINT);

        public final SqlColumn<Long> productAuctionId = column("productAuction_id", JDBCType.BIGINT);

        public final SqlColumn<Long> projectId = column("project_id", JDBCType.BIGINT);
        public final SqlColumn<Long> bidrecordId = column("bidRecord_id", JDBCType.BIGINT);

        public final SqlColumn<Long> userId = column("user_id", JDBCType.BIGINT);

        public final SqlColumn<String> name = column("name", JDBCType.VARCHAR);

        public final SqlColumn<Double> quantity = column("quantity", JDBCType.DOUBLE);

        public final SqlColumn<Long> quantityUnit = column("quantity_unit", JDBCType.BIGINT);

        public final SqlColumn<Double> upsetPrice = column("upset_price", JDBCType.DOUBLE);

        public final SqlColumn<Double> bidIncr = column("bid_incr", JDBCType.DOUBLE);

        public final SqlColumn<Double> curunitPrice = column("curUnit_price", JDBCType.DOUBLE);

        public final SqlColumn<Double> curtotalPrice = column("curTotal_price", JDBCType.DOUBLE);

        public final SqlColumn<Long> createTime = column("create_time", JDBCType.BIGINT);

        public ProductBid() {
            super("product_bid");
        }
    }
}