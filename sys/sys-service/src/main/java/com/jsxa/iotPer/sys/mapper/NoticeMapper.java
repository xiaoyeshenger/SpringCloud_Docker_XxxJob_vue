package com.jsxa.iotPer.sys.mapper;

import static com.jsxa.iotPer.sys.mapper.NoticeDynamicSqlSupport.*;
import static org.mybatis.dynamic.sql.SqlBuilder.*;

import com.jsxa.iotPer.sys.bo.po.Notice;
import java.util.List;
import javax.annotation.Generated;
import org.apache.ibatis.annotations.DeleteProvider;
import org.apache.ibatis.annotations.InsertProvider;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Results;
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
public interface NoticeMapper {
    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    long count(SelectStatementProvider selectStatement);

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    @DeleteProvider(type=SqlProviderAdapter.class, method="delete")
    int delete(DeleteStatementProvider deleteStatement);

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    @InsertProvider(type=SqlProviderAdapter.class, method="insert")
    int insert(InsertStatementProvider<Notice> insertStatement);

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    @ResultMap("NoticeResult")
    Notice selectOne(SelectStatementProvider selectStatement);

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    @Results(id="NoticeResult", value = {
        @Result(column="id", property="id", jdbcType=JdbcType.BIGINT, id=true),
        @Result(column="title", property="title", jdbcType=JdbcType.VARCHAR),
        @Result(column="type", property="type", jdbcType=JdbcType.BIGINT),
        @Result(column="content", property="content", jdbcType=JdbcType.VARCHAR),
        @Result(column="creator_name", property="creatorName", jdbcType=JdbcType.VARCHAR),
        @Result(column="creator_mobile", property="creatorMobile", jdbcType=JdbcType.VARCHAR),
        @Result(column="order_num", property="orderNum", jdbcType=JdbcType.INTEGER),
        @Result(column="del_flag", property="delFlag", jdbcType=JdbcType.TINYINT),
        @Result(column="status", property="status", jdbcType=JdbcType.TINYINT),
        @Result(column="park_id", property="parkId", jdbcType=JdbcType.BIGINT),
        @Result(column="create_time", property="createTime", jdbcType=JdbcType.BIGINT)
    })
    List<Notice> selectMany(SelectStatementProvider selectStatement);

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    @UpdateProvider(type=SqlProviderAdapter.class, method="update")
    int update(UpdateStatementProvider updateStatement);

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default QueryExpressionDSL<MyBatis3SelectModelAdapter<Long>> countByExample() {
        return SelectDSL.selectWithMapper(this::count, SqlBuilder.count())
                .from(notice);
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default DeleteDSL<MyBatis3DeleteModelAdapter<Integer>> deleteByExample() {
        return DeleteDSL.deleteFromWithMapper(this::delete, notice);
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default int deleteByPrimaryKey(Long id_) {
        return DeleteDSL.deleteFromWithMapper(this::delete, notice)
                .where(id, isEqualTo(id_))
                .build()
                .execute();
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default int insert(Notice record) {
        return insert(SqlBuilder.insert(record)
                .into(notice)
                .map(id).toProperty("id")
                .map(title).toProperty("title")
                .map(type).toProperty("type")
                .map(content).toProperty("content")
                .map(creatorName).toProperty("creatorName")
                .map(creatorMobile).toProperty("creatorMobile")
                .map(orderNum).toProperty("orderNum")
                .map(delFlag).toProperty("delFlag")
                .map(status).toProperty("status")
                .map(parkId).toProperty("parkId")
                .map(createTime).toProperty("createTime")
                .build()
                .render(RenderingStrategy.MYBATIS3));
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default int insertSelective(Notice record) {
        return insert(SqlBuilder.insert(record)
                .into(notice)
                .map(id).toPropertyWhenPresent("id", record::getId)
                .map(title).toPropertyWhenPresent("title", record::getTitle)
                .map(type).toPropertyWhenPresent("type", record::getType)
                .map(content).toPropertyWhenPresent("content", record::getContent)
                .map(creatorName).toPropertyWhenPresent("creatorName", record::getCreatorName)
                .map(creatorMobile).toPropertyWhenPresent("creatorMobile", record::getCreatorMobile)
                .map(orderNum).toPropertyWhenPresent("orderNum", record::getOrderNum)
                .map(delFlag).toPropertyWhenPresent("delFlag", record::getDelFlag)
                .map(status).toPropertyWhenPresent("status", record::getStatus)
                .map(parkId).toPropertyWhenPresent("parkId", record::getParkId)
                .map(createTime).toPropertyWhenPresent("createTime", record::getCreateTime)
                .build()
                .render(RenderingStrategy.MYBATIS3));
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default QueryExpressionDSL<MyBatis3SelectModelAdapter<List<Notice>>> selectByExample() {
        return SelectDSL.selectWithMapper(this::selectMany, id, title, type, content, creatorName, creatorMobile, orderNum, delFlag, status, parkId, createTime)
                .from(notice);
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default QueryExpressionDSL<MyBatis3SelectModelAdapter<Notice>> selectByExampleOne() {
        return SelectDSL.selectWithMapper(this::selectOne, id, title, type, content, creatorName, creatorMobile, orderNum, delFlag, status, parkId, createTime)
                .from(notice);
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default QueryExpressionDSL<MyBatis3SelectModelAdapter<List<Notice>>> selectDistinctByExample() {
        return SelectDSL.selectDistinctWithMapper(this::selectMany, id, title, type, content, creatorName, creatorMobile, orderNum, delFlag, status, parkId, createTime)
                .from(notice);
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default Notice selectByPrimaryKey(Long id_) {
        return SelectDSL.selectWithMapper(this::selectOne, id, title, type, content, creatorName, creatorMobile, orderNum, delFlag, status, parkId, createTime)
                .from(notice)
                .where(id, isEqualTo(id_))
                .build()
                .execute();
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default UpdateDSL<MyBatis3UpdateModelAdapter<Integer>> updateByExample(Notice record) {
        return UpdateDSL.updateWithMapper(this::update, notice)
                .set(id).equalTo(record::getId)
                .set(title).equalTo(record::getTitle)
                .set(type).equalTo(record::getType)
                .set(content).equalTo(record::getContent)
                .set(creatorName).equalTo(record::getCreatorName)
                .set(creatorMobile).equalTo(record::getCreatorMobile)
                .set(orderNum).equalTo(record::getOrderNum)
                .set(delFlag).equalTo(record::getDelFlag)
                .set(status).equalTo(record::getStatus)
                .set(parkId).equalTo(record::getParkId)
                .set(createTime).equalTo(record::getCreateTime);
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default UpdateDSL<MyBatis3UpdateModelAdapter<Integer>> updateByExampleSelective(Notice record) {
        return UpdateDSL.updateWithMapper(this::update, notice)
                .set(id).equalToWhenPresent(record::getId)
                .set(title).equalToWhenPresent(record::getTitle)
                .set(type).equalToWhenPresent(record::getType)
                .set(content).equalToWhenPresent(record::getContent)
                .set(creatorName).equalToWhenPresent(record::getCreatorName)
                .set(creatorMobile).equalToWhenPresent(record::getCreatorMobile)
                .set(orderNum).equalToWhenPresent(record::getOrderNum)
                .set(delFlag).equalToWhenPresent(record::getDelFlag)
                .set(status).equalToWhenPresent(record::getStatus)
                .set(parkId).equalToWhenPresent(record::getParkId)
                .set(createTime).equalToWhenPresent(record::getCreateTime);
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default int updateByPrimaryKey(Notice record) {
        return UpdateDSL.updateWithMapper(this::update, notice)
                .set(title).equalTo(record::getTitle)
                .set(type).equalTo(record::getType)
                .set(content).equalTo(record::getContent)
                .set(creatorName).equalTo(record::getCreatorName)
                .set(creatorMobile).equalTo(record::getCreatorMobile)
                .set(orderNum).equalTo(record::getOrderNum)
                .set(delFlag).equalTo(record::getDelFlag)
                .set(status).equalTo(record::getStatus)
                .set(parkId).equalTo(record::getParkId)
                .set(createTime).equalTo(record::getCreateTime)
                .where(id, isEqualTo(record::getId))
                .build()
                .execute();
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default int updateByPrimaryKeySelective(Notice record) {
        return UpdateDSL.updateWithMapper(this::update, notice)
                .set(title).equalToWhenPresent(record::getTitle)
                .set(type).equalToWhenPresent(record::getType)
                .set(content).equalToWhenPresent(record::getContent)
                .set(creatorName).equalToWhenPresent(record::getCreatorName)
                .set(creatorMobile).equalToWhenPresent(record::getCreatorMobile)
                .set(orderNum).equalToWhenPresent(record::getOrderNum)
                .set(delFlag).equalToWhenPresent(record::getDelFlag)
                .set(status).equalToWhenPresent(record::getStatus)
                .set(parkId).equalToWhenPresent(record::getParkId)
                .set(createTime).equalToWhenPresent(record::getCreateTime)
                .where(id, isEqualTo(record::getId))
                .build()
                .execute();
    }
}