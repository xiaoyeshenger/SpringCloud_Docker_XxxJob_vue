package com.jsxa.iotPer.bid.mapper;

import static com.jsxa.iotPer.bid.mapper.BidRecordDynamicSqlSupport.id;
import static com.jsxa.iotPer.bid.mapper.ProductAuctionDynamicSqlSupport.*;
import static org.mybatis.dynamic.sql.SqlBuilder.*;

import com.jsxa.iotPer.bid.bo.po.ProductAuction;
import java.util.List;
import javax.annotation.Generated;
import org.apache.ibatis.annotations.DeleteProvider;
import org.apache.ibatis.annotations.InsertProvider;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.UpdateProvider;
import org.apache.ibatis.type.JdbcType;
import org.mybatis.dynamic.sql.SqlBuilder;
import org.mybatis.dynamic.sql.delete.DeleteDSL;
import org.mybatis.dynamic.sql.delete.MyBatis3DeleteModelAdapter;
import org.mybatis.dynamic.sql.delete.render.DeleteStatementProvider;
import org.mybatis.dynamic.sql.insert.render.InsertStatementProvider;
import org.mybatis.dynamic.sql.render.RenderingStrategy;
import org.mybatis.dynamic.sql.select.MyBatis3SelectModelAdapter;
import org.mybatis.dynamic.sql.select.QueryExpressionDSL;
import org.mybatis.dynamic.sql.select.SelectDSL;
import org.mybatis.dynamic.sql.select.render.SelectStatementProvider;
import org.mybatis.dynamic.sql.update.MyBatis3UpdateModelAdapter;
import org.mybatis.dynamic.sql.update.UpdateDSL;
import org.mybatis.dynamic.sql.update.render.UpdateStatementProvider;
import org.mybatis.dynamic.sql.util.SqlProviderAdapter;

@Mapper
public interface ProductAuctionMapper {
    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    long count(SelectStatementProvider selectStatement);

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    @DeleteProvider(type=SqlProviderAdapter.class, method="delete")
    int delete(DeleteStatementProvider deleteStatement);

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    @InsertProvider(type=SqlProviderAdapter.class, method="insert")
    @SelectKey(statement="SELECT LAST_INSERT_ID()", keyProperty="record.id", before=false, resultType=Long.class)
    int insert(InsertStatementProvider<ProductAuction> insertStatement);

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    @ResultMap("ProductAuctionResult")
    ProductAuction selectOne(SelectStatementProvider selectStatement);

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    @Results(id="ProductAuctionResult", value = {
        @Result(column="id", property="id", jdbcType=JdbcType.BIGINT, id=true),
        @Result(column="project_id", property="projectId", jdbcType=JdbcType.BIGINT),
        @Result(column="name", property="name", jdbcType=JdbcType.VARCHAR),
        @Result(column="quantity", property="quantity", jdbcType=JdbcType.DOUBLE),
        @Result(column="quantity_unit", property="quantityUnit", jdbcType=JdbcType.BIGINT),
        @Result(column="upset_price", property="upsetPrice", jdbcType=JdbcType.DOUBLE),
        @Result(column="bid_incr", property="bidIncr", jdbcType=JdbcType.DOUBLE),
        @Result(column="create_time", property="createTime", jdbcType=JdbcType.BIGINT)
    })
    List<ProductAuction> selectMany(SelectStatementProvider selectStatement);

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    @UpdateProvider(type=SqlProviderAdapter.class, method="update")
    int update(UpdateStatementProvider updateStatement);

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default QueryExpressionDSL<MyBatis3SelectModelAdapter<Long>> countByExample() {
        return SelectDSL.selectWithMapper(this::count, SqlBuilder.count())
                .from(productAuction);
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default DeleteDSL<MyBatis3DeleteModelAdapter<Integer>> deleteByExample() {
        return DeleteDSL.deleteFromWithMapper(this::delete, productAuction);
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default int deleteByPrimaryKey(Long id_) {
        return DeleteDSL.deleteFromWithMapper(this::delete, productAuction)
                .where(id, isEqualTo(id_))
                .build()
                .execute();
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default int insert(ProductAuction record) {
        return insert(SqlBuilder.insert(record)
                .into(productAuction)
                .map(projectId).toProperty("projectId")
                .map(name).toProperty("name")
                .map(quantity).toProperty("quantity")
                .map(quantityUnit).toProperty("quantityUnit")
                .map(upsetPrice).toProperty("upsetPrice")
                .map(bidIncr).toProperty("bidIncr")
                .map(createTime).toProperty("createTime")
                .build()
                .render(RenderingStrategy.MYBATIS3));
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default int insertSelective(ProductAuction record) {
        return insert(SqlBuilder.insert(record)
                .into(productAuction)
                .map(projectId).toPropertyWhenPresent("projectId", record::getProjectId)
                .map(name).toPropertyWhenPresent("name", record::getName)
                .map(quantity).toPropertyWhenPresent("quantity", record::getQuantity)
                .map(quantityUnit).toPropertyWhenPresent("quantityUnit", record::getQuantityUnit)
                .map(upsetPrice).toPropertyWhenPresent("upsetPrice", record::getUpsetPrice)
                .map(bidIncr).toPropertyWhenPresent("bidIncr", record::getBidIncr)
                .map(createTime).toPropertyWhenPresent("createTime", record::getCreateTime)
                .build()
                .render(RenderingStrategy.MYBATIS3));
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default QueryExpressionDSL<MyBatis3SelectModelAdapter<List<ProductAuction>>> selectByExample() {
        return SelectDSL.selectWithMapper(this::selectMany, id, projectId, name, quantity, quantityUnit, upsetPrice, bidIncr, createTime)
                .from(productAuction);
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default QueryExpressionDSL<MyBatis3SelectModelAdapter<List<ProductAuction>>> selectDistinctByExample() {
        return SelectDSL.selectDistinctWithMapper(this::selectMany, id, projectId, name, quantity, quantityUnit, upsetPrice, bidIncr, createTime)
                .from(productAuction);
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default ProductAuction selectByPrimaryKey(Long id_) {
        return SelectDSL.selectWithMapper(this::selectOne, id, projectId, name, quantity, quantityUnit, upsetPrice, bidIncr, createTime)
                .from(productAuction)
                .where(id, isEqualTo(id_))
                .build()
                .execute();
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default UpdateDSL<MyBatis3UpdateModelAdapter<Integer>> updateByExample(ProductAuction record) {
        return UpdateDSL.updateWithMapper(this::update, productAuction)
                .set(projectId).equalTo(record::getProjectId)
                .set(name).equalTo(record::getName)
                .set(quantity).equalTo(record::getQuantity)
                .set(quantityUnit).equalTo(record::getQuantityUnit)
                .set(upsetPrice).equalTo(record::getUpsetPrice)
                .set(bidIncr).equalTo(record::getBidIncr)
                .set(createTime).equalTo(record::getCreateTime);
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default UpdateDSL<MyBatis3UpdateModelAdapter<Integer>> updateByExampleSelective(ProductAuction record) {
        return UpdateDSL.updateWithMapper(this::update, productAuction)
                .set(projectId).equalToWhenPresent(record::getProjectId)
                .set(name).equalToWhenPresent(record::getName)
                .set(quantity).equalToWhenPresent(record::getQuantity)
                .set(quantityUnit).equalToWhenPresent(record::getQuantityUnit)
                .set(upsetPrice).equalToWhenPresent(record::getUpsetPrice)
                .set(bidIncr).equalToWhenPresent(record::getBidIncr)
                .set(createTime).equalToWhenPresent(record::getCreateTime);
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default int updateByPrimaryKey(ProductAuction record) {
        return UpdateDSL.updateWithMapper(this::update, productAuction)
                .set(projectId).equalTo(record::getProjectId)
                .set(name).equalTo(record::getName)
                .set(quantity).equalTo(record::getQuantity)
                .set(quantityUnit).equalTo(record::getQuantityUnit)
                .set(upsetPrice).equalTo(record::getUpsetPrice)
                .set(bidIncr).equalTo(record::getBidIncr)
                .set(createTime).equalTo(record::getCreateTime)
                .where(id, isEqualTo(record::getId))
                .build()
                .execute();
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default int updateByPrimaryKeySelective(ProductAuction record) {
        return UpdateDSL.updateWithMapper(this::update, productAuction)
                .set(projectId).equalToWhenPresent(record::getProjectId)
                .set(name).equalToWhenPresent(record::getName)
                .set(quantity).equalToWhenPresent(record::getQuantity)
                .set(quantityUnit).equalToWhenPresent(record::getQuantityUnit)
                .set(upsetPrice).equalToWhenPresent(record::getUpsetPrice)
                .set(bidIncr).equalToWhenPresent(record::getBidIncr)
                .set(createTime).equalToWhenPresent(record::getCreateTime)
                .where(id, isEqualTo(record::getId))
                .build()
                .execute();
    }
}