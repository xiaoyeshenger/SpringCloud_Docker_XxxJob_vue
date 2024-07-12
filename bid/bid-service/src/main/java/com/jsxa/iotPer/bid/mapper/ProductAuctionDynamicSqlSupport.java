package com.jsxa.iotPer.bid.mapper;

import java.sql.JDBCType;
import javax.annotation.Generated;
import org.mybatis.dynamic.sql.SqlColumn;
import org.mybatis.dynamic.sql.SqlTable;

public final class ProductAuctionDynamicSqlSupport {
    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final ProductAuction productAuction = new ProductAuction();

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Long> id = productAuction.id;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Long> projectId = productAuction.projectId;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<String> name = productAuction.name;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Double> quantity = productAuction.quantity;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Long> quantityUnit = productAuction.quantityUnit;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Double> upsetPrice = productAuction.upsetPrice;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Double> bidIncr = productAuction.bidIncr;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Long> createTime = productAuction.createTime;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final class ProductAuction extends SqlTable {
        public final SqlColumn<Long> id = column("id", JDBCType.BIGINT);

        public final SqlColumn<Long> projectId = column("project_id", JDBCType.BIGINT);

        public final SqlColumn<String> name = column("name", JDBCType.VARCHAR);

        public final SqlColumn<Double> quantity = column("quantity", JDBCType.DOUBLE);

        public final SqlColumn<Long> quantityUnit = column("quantity_unit", JDBCType.BIGINT);

        public final SqlColumn<Double> upsetPrice = column("upset_price", JDBCType.DOUBLE);

        public final SqlColumn<Double> bidIncr = column("bid_incr", JDBCType.DOUBLE);

        public final SqlColumn<Long> createTime = column("create_time", JDBCType.BIGINT);

        public ProductAuction() {
            super("product_auction");
        }
    }
}