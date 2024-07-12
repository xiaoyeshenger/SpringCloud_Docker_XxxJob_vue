package com.jsxa.iotPer.bid.mapper;

import static com.jsxa.iotPer.bid.mapper.BidDynamicSqlSupport.*;
import static com.jsxa.iotPer.bid.mapper.ProjectDynamicSqlSupport.auctionStatus;
import static com.jsxa.iotPer.bid.mapper.ProjectDynamicSqlSupport.bidincrmaxTime;
import static org.mybatis.dynamic.sql.SqlBuilder.*;

import com.jsxa.iotPer.bid.bo.po.Bid;
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
public interface BidMapper {
    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    long count(SelectStatementProvider selectStatement);

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    @DeleteProvider(type=SqlProviderAdapter.class, method="delete")
    int delete(DeleteStatementProvider deleteStatement);

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    @InsertProvider(type=SqlProviderAdapter.class, method="insert")
    @SelectKey(statement="SELECT LAST_INSERT_ID()", keyProperty="record.id", before=false, resultType=Long.class)
    int insert(InsertStatementProvider<Bid> insertStatement);

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    @ResultMap("BidResult")
    Bid selectOne(SelectStatementProvider selectStatement);

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    @Results(id="BidResult", value = {
        @Result(column="id", property="id", jdbcType=JdbcType.BIGINT, id=true),
        @Result(column="project_id", property="projectId", jdbcType=JdbcType.BIGINT),
        @Result(column="project_name", property="projectName", jdbcType=JdbcType.VARCHAR),
        @Result(column="auction_status", property="auctionStatus", jdbcType=JdbcType.BIGINT),
        @Result(column="upset_price", property="upsetPrice", jdbcType=JdbcType.DOUBLE),
        @Result(column="start_time", property="startTime", jdbcType=JdbcType.BIGINT),
        @Result(column="end_time", property="endTime", jdbcType=JdbcType.BIGINT),
        @Result(column="bidIncrMax_time", property="bidIncrMaxTime", jdbcType=JdbcType.INTEGER),
        @Result(column="quantity_unit", property="quantityUnit", jdbcType=JdbcType.BIGINT),
        @Result(column="quantity", property="quantity", jdbcType=JdbcType.DOUBLE),
        @Result(column="user_id", property="userId", jdbcType=JdbcType.BIGINT),
        @Result(column="user_name", property="userName", jdbcType=JdbcType.VARCHAR),
        @Result(column="user_mobile", property="userMobile", jdbcType=JdbcType.VARCHAR),
        @Result(column="org_id", property="orgId", jdbcType=JdbcType.BIGINT),
        @Result(column="org_name", property="orgName", jdbcType=JdbcType.VARCHAR),
        @Result(column="order_num", property="orderNum", jdbcType=JdbcType.INTEGER),
        @Result(column="apply_status", property="applyStatus", jdbcType=JdbcType.BIGINT),
        @Result(column="signUp_time", property="signUpTime", jdbcType=JdbcType.BIGINT),
        @Result(column="create_time", property="createTime", jdbcType=JdbcType.BIGINT)
    })
    List<Bid> selectMany(SelectStatementProvider selectStatement);

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    @UpdateProvider(type=SqlProviderAdapter.class, method="update")
    int update(UpdateStatementProvider updateStatement);

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default QueryExpressionDSL<MyBatis3SelectModelAdapter<Long>> countByExample() {
        return SelectDSL.selectWithMapper(this::count, SqlBuilder.count())
                .from(bid);
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default DeleteDSL<MyBatis3DeleteModelAdapter<Integer>> deleteByExample() {
        return DeleteDSL.deleteFromWithMapper(this::delete, bid);
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default int deleteByPrimaryKey(Long id_) {
        return DeleteDSL.deleteFromWithMapper(this::delete, bid)
                .where(id, isEqualTo(id_))
                .build()
                .execute();
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default int insert(Bid record) {
        return insert(SqlBuilder.insert(record)
                .into(bid)
                .map(id).toProperty("id")
                .map(projectId).toProperty("projectId")
                .map(projectName).toProperty("projectName")
                .map(auctionStatus).toProperty("auctionStatus")
                .map(upsetTotalPrice).toProperty("upsetTotalPrice")
                .map(startTime).toProperty("startTime")
                .map(endTime).toProperty("endTime")
                .map(bidincrmaxTime).toProperty("bidIncrMaxTime")
                .map(userId).toProperty("userId")
                .map(userName).toProperty("userName")
                .map(userMobile).toProperty("userMobile")
                .map(orgId).toProperty("orgId")
                .map(orgName).toProperty("orgName")
                .map(orderNum).toProperty("orderNum")
                .map(applyStatus).toProperty("applyStatus")
                .map(signupTime).toProperty("signUpTime")
                .map(createTime).toProperty("createTime")
                .build()
                .render(RenderingStrategy.MYBATIS3));
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default int insertSelective(Bid record) {
        return insert(SqlBuilder.insert(record)
                .into(bid)
                .map(id).toProperty("id")
                .map(projectId).toPropertyWhenPresent("projectId", record::getProjectId)
                .map(projectName).toPropertyWhenPresent("projectName", record::getProjectName)
                .map(auctionStatus).toPropertyWhenPresent("auctionStatus", record::getAuctionStatus)
                .map(upsetTotalPrice).toPropertyWhenPresent("upsetTotalPrice", record::getUpsetTotalPrice)
                .map(startTime).toPropertyWhenPresent("startTime", record::getStartTime)
                .map(endTime).toPropertyWhenPresent("endTime", record::getEndTime)
                .map(bidincrmaxTime).toPropertyWhenPresent("bidIncrMaxTime", record::getBidIncrMaxTime)
                .map(userId).toPropertyWhenPresent("userId", record::getUserId)
                .map(userName).toPropertyWhenPresent("userName", record::getUserName)
                .map(userMobile).toPropertyWhenPresent("userMobile", record::getUserMobile)
                .map(orgId).toPropertyWhenPresent("orgId", record::getOrgId)
                .map(orgName).toPropertyWhenPresent("orgName", record::getOrgName)
                .map(orderNum).toPropertyWhenPresent("orderNum", record::getOrderNum)
                .map(applyStatus).toPropertyWhenPresent("applyStatus", record::getApplyStatus)
                .map(signupTime).toPropertyWhenPresent("signUpTime", record::getSignUpTime)
                .map(createTime).toPropertyWhenPresent("createTime", record::getCreateTime)
                .build()
                .render(RenderingStrategy.MYBATIS3));
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default QueryExpressionDSL<MyBatis3SelectModelAdapter<List<Bid>>> selectByExample() {
        return SelectDSL.selectWithMapper(this::selectMany, id, projectId, projectName,auctionStatus, upsetTotalPrice, startTime, endTime,bidincrmaxTime, userId, userName, userMobile, orgId, orgName, orderNum, applyStatus, signupTime, createTime)
                .from(bid);
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default QueryExpressionDSL<MyBatis3SelectModelAdapter<List<Bid>>> selectDistinctByExample() {
        return SelectDSL.selectDistinctWithMapper(this::selectMany, id, projectId, projectName,auctionStatus, upsetTotalPrice, startTime, endTime,bidincrmaxTime, userId, userName, userMobile, orgId, orgName, orderNum, applyStatus, signupTime, createTime)
                .from(bid);
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default Bid selectByPrimaryKey(Long id_) {
        return SelectDSL.selectWithMapper(this::selectOne, id, projectId, projectName,auctionStatus, upsetTotalPrice, startTime, endTime,bidincrmaxTime, userId, userName, userMobile, orgId, orgName, orderNum, applyStatus, signupTime, createTime)
                .from(bid)
                .where(id, isEqualTo(id_))
                .build()
                .execute();
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default UpdateDSL<MyBatis3UpdateModelAdapter<Integer>> updateByExample(Bid record) {
        return UpdateDSL.updateWithMapper(this::update, bid)
                .set(projectId).equalTo(record::getProjectId)
                .set(projectName).equalTo(record::getProjectName)
                .set(auctionStatus).equalTo(record::getAuctionStatus)
                .set(upsetTotalPrice).equalTo(record::getUpsetTotalPrice)
                .set(startTime).equalTo(record::getStartTime)
                .set(endTime).equalTo(record::getEndTime)
                .set(bidincrmaxTime).equalTo(record::getBidIncrMaxTime)
                .set(userId).equalTo(record::getUserId)
                .set(userName).equalTo(record::getUserName)
                .set(userMobile).equalTo(record::getUserMobile)
                .set(orgId).equalTo(record::getOrgId)
                .set(orgName).equalTo(record::getOrgName)
                .set(orderNum).equalTo(record::getOrderNum)
                .set(applyStatus).equalTo(record::getApplyStatus)
                .set(signupTime).equalTo(record::getSignUpTime)
                .set(createTime).equalTo(record::getCreateTime);
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default UpdateDSL<MyBatis3UpdateModelAdapter<Integer>> updateByExampleSelective(Bid record) {
        return UpdateDSL.updateWithMapper(this::update, bid)
                .set(projectId).equalToWhenPresent(record::getProjectId)
                .set(projectName).equalToWhenPresent(record::getProjectName)
                .set(auctionStatus).equalToWhenPresent(record::getAuctionStatus)
                .set(upsetTotalPrice).equalToWhenPresent(record::getUpsetTotalPrice)
                .set(startTime).equalToWhenPresent(record::getStartTime)
                .set(endTime).equalToWhenPresent(record::getEndTime)
                .set(bidincrmaxTime).equalToWhenPresent(record::getBidIncrMaxTime)
                .set(userId).equalToWhenPresent(record::getUserId)
                .set(userName).equalToWhenPresent(record::getUserName)
                .set(userMobile).equalToWhenPresent(record::getUserMobile)
                .set(orgId).equalToWhenPresent(record::getOrgId)
                .set(orgName).equalToWhenPresent(record::getOrgName)
                .set(orderNum).equalToWhenPresent(record::getOrderNum)
                .set(applyStatus).equalToWhenPresent(record::getApplyStatus)
                .set(signupTime).equalToWhenPresent(record::getSignUpTime)
                .set(createTime).equalToWhenPresent(record::getCreateTime);
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default int updateByPrimaryKey(Bid record) {
        return UpdateDSL.updateWithMapper(this::update, bid)
                .set(projectId).equalTo(record::getProjectId)
                .set(projectName).equalTo(record::getProjectName)
                .set(auctionStatus).equalTo(record::getAuctionStatus)
                .set(upsetTotalPrice).equalTo(record::getUpsetTotalPrice)
                .set(startTime).equalTo(record::getStartTime)
                .set(endTime).equalTo(record::getEndTime)
                .set(bidincrmaxTime).equalTo(record::getBidIncrMaxTime)
                .set(userId).equalTo(record::getUserId)
                .set(userName).equalTo(record::getUserName)
                .set(userMobile).equalTo(record::getUserMobile)
                .set(orgId).equalTo(record::getOrgId)
                .set(orgName).equalTo(record::getOrgName)
                .set(orderNum).equalTo(record::getOrderNum)
                .set(applyStatus).equalTo(record::getApplyStatus)
                .set(signupTime).equalTo(record::getSignUpTime)
                .set(createTime).equalTo(record::getCreateTime)
                .where(id, isEqualTo(record::getId))
                .build()
                .execute();
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default int updateByPrimaryKeySelective(Bid record) {
        return UpdateDSL.updateWithMapper(this::update, bid)
                .set(projectId).equalToWhenPresent(record::getProjectId)
                .set(projectName).equalToWhenPresent(record::getProjectName)
                .set(auctionStatus).equalToWhenPresent(record::getAuctionStatus)
                .set(upsetTotalPrice).equalToWhenPresent(record::getUpsetTotalPrice)
                .set(startTime).equalToWhenPresent(record::getStartTime)
                .set(endTime).equalToWhenPresent(record::getEndTime)
                .set(bidincrmaxTime).equalToWhenPresent(record::getBidIncrMaxTime)
                .set(userId).equalToWhenPresent(record::getUserId)
                .set(userName).equalToWhenPresent(record::getUserName)
                .set(userMobile).equalToWhenPresent(record::getUserMobile)
                .set(orgId).equalToWhenPresent(record::getOrgId)
                .set(orgName).equalToWhenPresent(record::getOrgName)
                .set(orderNum).equalToWhenPresent(record::getOrderNum)
                .set(applyStatus).equalToWhenPresent(record::getApplyStatus)
                .set(signupTime).equalToWhenPresent(record::getSignUpTime)
                .set(createTime).equalToWhenPresent(record::getCreateTime)
                .where(id, isEqualTo(record::getId))
                .build()
                .execute();
    }
}