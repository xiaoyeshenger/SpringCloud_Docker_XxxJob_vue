package com.jsxa.iotPer.bid.mapper;

import com.jsxa.iotPer.bid.bo.po.Project;
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

import static com.jsxa.iotPer.bid.mapper.BidRecordDynamicSqlSupport.id;
import static com.jsxa.iotPer.bid.mapper.ProjectDynamicSqlSupport.*;
import static org.mybatis.dynamic.sql.SqlBuilder.isEqualTo;

@Mapper
public interface ProjectMapper {
    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    long count(SelectStatementProvider selectStatement);

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    @DeleteProvider(type=SqlProviderAdapter.class, method="delete")
    int delete(DeleteStatementProvider deleteStatement);

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    @InsertProvider(type=SqlProviderAdapter.class, method="insert")
    @SelectKey(statement="SELECT LAST_INSERT_ID()", keyProperty="record.id", before=false, resultType=Long.class)
    int insert(InsertStatementProvider<Project> insertStatement);

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    @ResultMap("ProjectResult")
    Project selectOne(SelectStatementProvider selectStatement);

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    @Results(id="ProjectResult", value = {
        @Result(column="id", property="id", jdbcType=JdbcType.BIGINT, id=true),
        @Result(column="name", property="name", jdbcType=JdbcType.VARCHAR),
        @Result(column="start_time", property="startTime", jdbcType=JdbcType.BIGINT),
        @Result(column="end_time", property="endTime", jdbcType=JdbcType.BIGINT),
        @Result(column="weekend_count", property="weekendCount", jdbcType=JdbcType.INTEGER),
        @Result(column="upsetTotal_price", property="upsetTotalPrice", jdbcType=JdbcType.DOUBLE),
        @Result(column="bid_incr", property="bidIncr", jdbcType=JdbcType.DOUBLE),
        @Result(column="bidIncrMax_time", property="bidIncrMaxTime", jdbcType=JdbcType.INTEGER),
        @Result(column="oos_url", property="oosUrl", jdbcType=JdbcType.VARCHAR),
        @Result(column="auction_status", property="auctionStatus", jdbcType=JdbcType.BIGINT),
        @Result(column="project_details", property="projectDetails", jdbcType=JdbcType.VARCHAR),
        @Result(column="bid_notes", property="bidNotes", jdbcType=JdbcType.VARCHAR),
        @Result(column="bid_rule", property="bidRule", jdbcType=JdbcType.VARCHAR),
        @Result(column="contact", property="contact", jdbcType=JdbcType.VARCHAR),
        @Result(column="contact_mobile", property="contactMobile", jdbcType=JdbcType.VARCHAR),
        @Result(column="trans_status", property="transStatus", jdbcType=JdbcType.BIGINT),
        @Result(column="transUnit_price", property="transUnitPrice", jdbcType=JdbcType.DOUBLE),
        @Result(column="transTotal_price", property="transTotalPrice", jdbcType=JdbcType.DOUBLE),
        @Result(column="bidRecord_id", property="bidRecordId", jdbcType=JdbcType.BIGINT),
        @Result(column="order_num", property="orderNum", jdbcType=JdbcType.INTEGER),
        @Result(column="create_time", property="createTime", jdbcType=JdbcType.BIGINT)
    })
    List<Project> selectMany(SelectStatementProvider selectStatement);

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    @UpdateProvider(type=SqlProviderAdapter.class, method="update")
    int update(UpdateStatementProvider updateStatement);

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default QueryExpressionDSL<MyBatis3SelectModelAdapter<Long>> countByExample() {
        return SelectDSL.selectWithMapper(this::count, SqlBuilder.count())
                .from(project);
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default DeleteDSL<MyBatis3DeleteModelAdapter<Integer>> deleteByExample() {
        return DeleteDSL.deleteFromWithMapper(this::delete, project);
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default int deleteByPrimaryKey(Long id_) {
        return DeleteDSL.deleteFromWithMapper(this::delete, project)
                .where(id, isEqualTo(id_))
                .build()
                .execute();
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default int insert(Project record) {
        return insert(SqlBuilder.insert(record)
                .into(project)
                .map(id).toProperty("id")
                .map(name).toProperty("name")
                .map(startTime).toProperty("startTime")
                .map(endTime).toProperty("endTime")
                .map(weekendCount).toProperty("weekendCount")
                .map(upsetTotalPrice).toProperty("upsetTotalPrice")
                .map(bidincrmaxTime).toProperty("bidIncrMaxTime")
                .map(oosUrl).toProperty("oosUrl")
                .map(auctionStatus).toProperty("auctionStatus")
                .map(projectDetails).toProperty("projectDetails")
                .map(bidNotes).toProperty("bidNotes")
                .map(bidRule).toProperty("bidRule")
                .map(contact).toProperty("contact")
                .map(contactMobile).toProperty("contactMobile")
                .map(transStatus).toProperty("transStatus")
                .map(transtotalPrice).toProperty("transTotalPrice")
                .map(bidrecordId).toProperty("bidRecordId")
                .map(orderNum).toProperty("orderNum")
                .map(createTime).toProperty("createTime")
                .build()
                .render(RenderingStrategy.MYBATIS3));
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default int insertSelective(Project record) {
        return insert(SqlBuilder.insert(record)
                .into(project)
                .map(id).toProperty("id")
                .map(name).toPropertyWhenPresent("name", record::getName)
                .map(startTime).toPropertyWhenPresent("startTime", record::getStartTime)
                .map(endTime).toPropertyWhenPresent("endTime", record::getEndTime)
                .map(weekendCount).toPropertyWhenPresent("weekendCount", record::getWeekendCount)
                .map(upsetTotalPrice).toPropertyWhenPresent("upsetTotalPrice", record::getUpsetTotalPrice)
                .map(bidincrmaxTime).toPropertyWhenPresent("bidIncrMaxTime", record::getBidIncrMaxTime)
                .map(oosUrl).toPropertyWhenPresent("oosUrl", record::getOosUrl)
                .map(auctionStatus).toPropertyWhenPresent("auctionStatus", record::getAuctionStatus)
                .map(projectDetails).toPropertyWhenPresent("projectDetails", record::getProjectDetails)
                .map(bidNotes).toPropertyWhenPresent("bidNotes", record::getBidNotes)
                .map(bidRule).toPropertyWhenPresent("bidRule", record::getBidRule)
                .map(contact).toPropertyWhenPresent("contact", record::getContact)
                .map(contactMobile).toPropertyWhenPresent("contactMobile", record::getContactMobile)
                .map(transStatus).toPropertyWhenPresent("transStatus", record::getTransStatus)
                .map(transtotalPrice).toPropertyWhenPresent("transTotalPrice", record::getTransTotalPrice)
                .map(bidrecordId).toPropertyWhenPresent("bidRecordId", record::getBidRecordId)
                .map(orderNum).toPropertyWhenPresent("orderNum", record::getOrderNum)
                .map(createTime).toPropertyWhenPresent("createTime", record::getCreateTime)
                .build()
                .render(RenderingStrategy.MYBATIS3));
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default QueryExpressionDSL<MyBatis3SelectModelAdapter<Project>> selectByExampleOne() {
        return SelectDSL.selectWithMapper(this::selectOne, id, name, startTime, endTime,weekendCount, upsetTotalPrice, bidincrmaxTime, oosUrl, auctionStatus, projectDetails, bidNotes, bidRule, contact, contactMobile, transStatus, transtotalPrice, bidrecordId, orderNum, createTime)
                .from(project);
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default QueryExpressionDSL<MyBatis3SelectModelAdapter<List<Project>>> selectByExample() {
        return SelectDSL.selectWithMapper(this::selectMany, id, name, startTime, endTime,weekendCount, upsetTotalPrice, bidincrmaxTime, oosUrl, auctionStatus, projectDetails, bidNotes, bidRule, contact, contactMobile, transStatus, transtotalPrice, bidrecordId, orderNum, createTime)
                .from(project);
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default QueryExpressionDSL<MyBatis3SelectModelAdapter<List<Project>>> selectDistinctByExample() {
        return SelectDSL.selectDistinctWithMapper(this::selectMany, id, name, startTime, endTime,weekendCount, upsetTotalPrice, bidincrmaxTime, oosUrl, auctionStatus, projectDetails, bidNotes, bidRule, contact, contactMobile, transStatus, transtotalPrice, bidrecordId, orderNum, createTime)
                .from(project);
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default Project selectByPrimaryKey(Long id_) {
        return SelectDSL.selectWithMapper(this::selectOne, id, name, startTime, endTime,weekendCount, upsetTotalPrice, bidincrmaxTime, oosUrl, auctionStatus, projectDetails, bidNotes, bidRule, contact, contactMobile, transStatus, transtotalPrice, bidrecordId, orderNum, createTime)
                .from(project)
                .where(id, isEqualTo(id_))
                .build()
                .execute();
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default UpdateDSL<MyBatis3UpdateModelAdapter<Integer>> updateByExample(Project record) {
        return UpdateDSL.updateWithMapper(this::update, project)
                .set(name).equalTo(record::getName)
                .set(startTime).equalTo(record::getStartTime)
                .set(endTime).equalTo(record::getEndTime)
                .set(weekendCount).equalTo(record::getWeekendCount)
                .set(upsetTotalPrice).equalTo(record::getUpsetTotalPrice)
                .set(bidincrmaxTime).equalTo(record::getBidIncrMaxTime)
                .set(oosUrl).equalTo(record::getOosUrl)
                .set(auctionStatus).equalTo(record::getAuctionStatus)
                .set(projectDetails).equalTo(record::getProjectDetails)
                .set(bidNotes).equalTo(record::getBidNotes)
                .set(bidRule).equalTo(record::getBidRule)
                .set(contact).equalTo(record::getContact)
                .set(contactMobile).equalTo(record::getContactMobile)
                .set(transStatus).equalTo(record::getTransStatus)
                .set(transtotalPrice).equalTo(record::getTransTotalPrice)
                .set(bidrecordId).equalTo(record::getBidRecordId)
                .set(orderNum).equalTo(record::getOrderNum)
                .set(createTime).equalTo(record::getCreateTime);
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default UpdateDSL<MyBatis3UpdateModelAdapter<Integer>> updateByExampleSelective(Project record) {
        return UpdateDSL.updateWithMapper(this::update, project)
                .set(name).equalToWhenPresent(record::getName)
                .set(startTime).equalToWhenPresent(record::getStartTime)
                .set(endTime).equalToWhenPresent(record::getEndTime)
                .set(weekendCount).equalToWhenPresent(record::getWeekendCount)
                .set(upsetTotalPrice).equalToWhenPresent(record::getUpsetTotalPrice)
                .set(bidincrmaxTime).equalToWhenPresent(record::getBidIncrMaxTime)
                .set(oosUrl).equalToWhenPresent(record::getOosUrl)
                .set(auctionStatus).equalToWhenPresent(record::getAuctionStatus)
                .set(projectDetails).equalToWhenPresent(record::getProjectDetails)
                .set(bidNotes).equalToWhenPresent(record::getBidNotes)
                .set(bidRule).equalToWhenPresent(record::getBidRule)
                .set(contact).equalToWhenPresent(record::getContact)
                .set(contactMobile).equalToWhenPresent(record::getContactMobile)
                .set(transStatus).equalToWhenPresent(record::getTransStatus)
                .set(transtotalPrice).equalToWhenPresent(record::getTransTotalPrice)
                .set(bidrecordId).equalToWhenPresent(record::getBidRecordId)
                .set(orderNum).equalToWhenPresent(record::getOrderNum)
                .set(createTime).equalToWhenPresent(record::getCreateTime);
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default int updateByPrimaryKey(Project record) {
        return UpdateDSL.updateWithMapper(this::update, project)
                .set(name).equalTo(record::getName)
                .set(startTime).equalTo(record::getStartTime)
                .set(endTime).equalTo(record::getEndTime)
                .set(weekendCount).equalTo(record::getWeekendCount)
                .set(upsetTotalPrice).equalTo(record::getUpsetTotalPrice)
                .set(bidincrmaxTime).equalTo(record::getBidIncrMaxTime)
                .set(oosUrl).equalTo(record::getOosUrl)
                .set(auctionStatus).equalTo(record::getAuctionStatus)
                .set(projectDetails).equalTo(record::getProjectDetails)
                .set(bidNotes).equalTo(record::getBidNotes)
                .set(bidRule).equalTo(record::getBidRule)
                .set(contact).equalTo(record::getContact)
                .set(contactMobile).equalTo(record::getContactMobile)
                .set(transStatus).equalTo(record::getTransStatus)
                .set(transtotalPrice).equalTo(record::getTransTotalPrice)
                .set(bidrecordId).equalTo(record::getBidRecordId)
                .set(orderNum).equalTo(record::getOrderNum)
                .set(createTime).equalTo(record::getCreateTime)
                .where(id, isEqualTo(record::getId))
                .build()
                .execute();
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default int updateByPrimaryKeySelective(Project record) {
        return UpdateDSL.updateWithMapper(this::update, project)
                .set(name).equalToWhenPresent(record::getName)
                .set(startTime).equalToWhenPresent(record::getStartTime)
                .set(endTime).equalToWhenPresent(record::getEndTime)
                .set(weekendCount).equalToWhenPresent(record::getWeekendCount)
                .set(upsetTotalPrice).equalToWhenPresent(record::getUpsetTotalPrice)
                .set(bidincrmaxTime).equalToWhenPresent(record::getBidIncrMaxTime)
                .set(oosUrl).equalToWhenPresent(record::getOosUrl)
                .set(auctionStatus).equalToWhenPresent(record::getAuctionStatus)
                .set(projectDetails).equalToWhenPresent(record::getProjectDetails)
                .set(bidNotes).equalToWhenPresent(record::getBidNotes)
                .set(bidRule).equalToWhenPresent(record::getBidRule)
                .set(contact).equalToWhenPresent(record::getContact)
                .set(contactMobile).equalToWhenPresent(record::getContactMobile)
                .set(transStatus).equalToWhenPresent(record::getTransStatus)
                .set(transtotalPrice).equalToWhenPresent(record::getTransTotalPrice)
                .set(bidrecordId).equalToWhenPresent(record::getBidRecordId)
                .set(orderNum).equalToWhenPresent(record::getOrderNum)
                .set(createTime).equalToWhenPresent(record::getCreateTime)
                .where(id, isEqualTo(record::getId))
                .build()
                .execute();
    }
}