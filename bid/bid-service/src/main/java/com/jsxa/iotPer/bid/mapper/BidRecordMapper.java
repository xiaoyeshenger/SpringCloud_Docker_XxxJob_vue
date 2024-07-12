package com.jsxa.iotPer.bid.mapper;

import com.jsxa.iotPer.bid.bo.po.BidRecord;
import org.apache.ibatis.annotations.*;
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

import javax.annotation.Generated;
import java.util.List;

import static com.jsxa.iotPer.bid.mapper.BidRecordDynamicSqlSupport.*;
import static org.mybatis.dynamic.sql.SqlBuilder.isEqualTo;

@Mapper
public interface BidRecordMapper {
    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    long count(SelectStatementProvider selectStatement);

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    @DeleteProvider(type=SqlProviderAdapter.class, method="delete")
    int delete(DeleteStatementProvider deleteStatement);

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    @InsertProvider(type=SqlProviderAdapter.class, method="insert")
    @SelectKey(statement="SELECT LAST_INSERT_ID()", keyProperty="record.id", before=false, resultType=Long.class)
    int insert(InsertStatementProvider<BidRecord> insertStatement);

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    @ResultMap("BidRecordResult")
    BidRecord selectOne(SelectStatementProvider selectStatement);

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    @Results(id="BidRecordResult", value = {
        @Result(column="id", property="id", jdbcType=JdbcType.BIGINT, id=true),
        @Result(column="project_id", property="projectId", jdbcType=JdbcType.BIGINT),
        @Result(column="project_name", property="projectName", jdbcType=JdbcType.VARCHAR),
        @Result(column="curTotal_price", property="curTotalPrice", jdbcType=JdbcType.DOUBLE),
        @Result(column="user_id", property="userId", jdbcType=JdbcType.BIGINT),
        @Result(column="org_name", property="orgName", jdbcType=JdbcType.VARCHAR),
        @Result(column="user_mobile", property="userMobile", jdbcType=JdbcType.VARCHAR),
        @Result(column="bid_time", property="bidTime", jdbcType=JdbcType.BIGINT),
        @Result(column="bid_status", property="bidStatus", jdbcType=JdbcType.BIGINT),
        @Result(column="order_num", property="orderNum", jdbcType=JdbcType.INTEGER),
        @Result(column="create_time", property="createTime", jdbcType=JdbcType.BIGINT)
    })
    List<BidRecord> selectMany(SelectStatementProvider selectStatement);

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    @UpdateProvider(type=SqlProviderAdapter.class, method="update")
    int update(UpdateStatementProvider updateStatement);

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default QueryExpressionDSL<MyBatis3SelectModelAdapter<Long>> countByExample() {
        return SelectDSL.selectWithMapper(this::count, SqlBuilder.count())
                .from(bidRecord);
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default DeleteDSL<MyBatis3DeleteModelAdapter<Integer>> deleteByExample() {
        return DeleteDSL.deleteFromWithMapper(this::delete, bidRecord);
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default int deleteByPrimaryKey(Long id_) {
        return DeleteDSL.deleteFromWithMapper(this::delete, bidRecord)
                .where(id, isEqualTo(id_))
                .build()
                .execute();
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default int insert(BidRecord record) {
        return insert(SqlBuilder.insert(record)
                .into(bidRecord)
                .map(id).toProperty("id")
                .map(projectId).toProperty("projectId")
                .map(projectName).toProperty("projectName")
                .map(curtotalPrice).toProperty("curTotalPrice")
                .map(userId).toProperty("userId")
                .map(orgName).toProperty("orgName")
                .map(userMobile).toProperty("userMobile")
                .map(bidTime).toProperty("bidTime")
                .map(bidStatus).toProperty("bidStatus")
                .map(orderNum).toProperty("orderNum")
                .map(createTime).toProperty("createTime")
                .build()
                .render(RenderingStrategy.MYBATIS3));
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default int insertSelective(BidRecord record) {
        return insert(SqlBuilder.insert(record)
                .into(bidRecord)
                .map(id).toProperty("id")
                .map(projectId).toPropertyWhenPresent("projectId", record::getProjectId)
                .map(projectName).toPropertyWhenPresent("projectName", record::getProjectName)
                .map(curtotalPrice).toPropertyWhenPresent("curTotalPrice", record::getCurTotalPrice)
                .map(userId).toPropertyWhenPresent("userId", record::getUserId)
                .map(orgName).toPropertyWhenPresent("orgName", record::getOrgName)
                .map(userMobile).toPropertyWhenPresent("userMobile", record::getUserMobile)
                .map(bidTime).toPropertyWhenPresent("bidTime", record::getBidTime)
                .map(bidStatus).toPropertyWhenPresent("bidStatus", record::getBidStatus)
                .map(orderNum).toPropertyWhenPresent("orderNum", record::getOrderNum)
                .map(createTime).toPropertyWhenPresent("createTime", record::getCreateTime)
                .build()
                .render(RenderingStrategy.MYBATIS3));
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default QueryExpressionDSL<MyBatis3SelectModelAdapter<BidRecord>> selectByExampleOne() {
        return SelectDSL.selectWithMapper(this::selectOne, id, projectId, projectName, curtotalPrice, userId, orgName, userMobile, bidTime, bidStatus, orderNum, createTime)
                .from(bidRecord);
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default QueryExpressionDSL<MyBatis3SelectModelAdapter<List<BidRecord>>> selectByExample() {
        return SelectDSL.selectWithMapper(this::selectMany, id, projectId, projectName, curtotalPrice, userId, orgName, userMobile, bidTime, bidStatus, orderNum, createTime)
                .from(bidRecord);
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default QueryExpressionDSL<MyBatis3SelectModelAdapter<List<BidRecord>>> selectDistinctByExample() {
        return SelectDSL.selectDistinctWithMapper(this::selectMany, id, projectId, projectName, curtotalPrice, userId, orgName, userMobile, bidTime, bidStatus, orderNum, createTime)
                .from(bidRecord);
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default BidRecord selectByPrimaryKey(Long id_) {
        return SelectDSL.selectWithMapper(this::selectOne, id, projectId, projectName, curtotalPrice, userId, orgName, userMobile, bidTime, bidStatus, orderNum, createTime)
                .from(bidRecord)
                .where(id, isEqualTo(id_))
                .build()
                .execute();
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default UpdateDSL<MyBatis3UpdateModelAdapter<Integer>> updateByExample(BidRecord record) {
        return UpdateDSL.updateWithMapper(this::update, bidRecord)
                .set(projectId).equalTo(record::getProjectId)
                .set(projectName).equalTo(record::getProjectName)
                .set(curtotalPrice).equalTo(record::getCurTotalPrice)
                .set(userId).equalTo(record::getUserId)
                .set(orgName).equalTo(record::getOrgName)
                .set(userMobile).equalTo(record::getUserMobile)
                .set(bidTime).equalTo(record::getBidTime)
                .set(bidStatus).equalTo(record::getBidStatus)
                .set(orderNum).equalTo(record::getOrderNum)
                .set(createTime).equalTo(record::getCreateTime);
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default UpdateDSL<MyBatis3UpdateModelAdapter<Integer>> updateByExampleSelective(BidRecord record) {
        return UpdateDSL.updateWithMapper(this::update, bidRecord)
                .set(projectId).equalToWhenPresent(record::getProjectId)
                .set(projectName).equalToWhenPresent(record::getProjectName)
                .set(curtotalPrice).equalToWhenPresent(record::getCurTotalPrice)
                .set(userId).equalToWhenPresent(record::getUserId)
                .set(orgName).equalToWhenPresent(record::getOrgName)
                .set(userMobile).equalToWhenPresent(record::getUserMobile)
                .set(bidTime).equalToWhenPresent(record::getBidTime)
                .set(bidStatus).equalToWhenPresent(record::getBidStatus)
                .set(orderNum).equalToWhenPresent(record::getOrderNum)
                .set(createTime).equalToWhenPresent(record::getCreateTime);
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default int updateByPrimaryKey(BidRecord record) {
        return UpdateDSL.updateWithMapper(this::update, bidRecord)
                .set(projectId).equalTo(record::getProjectId)
                .set(projectName).equalTo(record::getProjectName)
                .set(curtotalPrice).equalTo(record::getCurTotalPrice)
                .set(userId).equalTo(record::getUserId)
                .set(orgName).equalTo(record::getOrgName)
                .set(userMobile).equalTo(record::getUserMobile)
                .set(bidTime).equalTo(record::getBidTime)
                .set(bidStatus).equalTo(record::getBidStatus)
                .set(orderNum).equalTo(record::getOrderNum)
                .set(createTime).equalTo(record::getCreateTime)
                .where(id, isEqualTo(record::getId))
                .build()
                .execute();
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default int updateByPrimaryKeySelective(BidRecord record) {
        return UpdateDSL.updateWithMapper(this::update, bidRecord)
                .set(projectId).equalToWhenPresent(record::getProjectId)
                .set(projectName).equalToWhenPresent(record::getProjectName)
                .set(curtotalPrice).equalToWhenPresent(record::getCurTotalPrice)
                .set(userId).equalToWhenPresent(record::getUserId)
                .set(orgName).equalToWhenPresent(record::getOrgName)
                .set(userMobile).equalToWhenPresent(record::getUserMobile)
                .set(bidTime).equalToWhenPresent(record::getBidTime)
                .set(bidStatus).equalToWhenPresent(record::getBidStatus)
                .set(orderNum).equalToWhenPresent(record::getOrderNum)
                .set(createTime).equalToWhenPresent(record::getCreateTime)
                .where(id, isEqualTo(record::getId))
                .build()
                .execute();
    }


    @Select("SELECT * FROM bid_record WHERE project_id = #{projectId} ORDER BY curTotal_price DESC LIMIT 1;")
    BidRecord selectMaxTotalPriceBidRecord(@Param("projectId") Long projectId);
}