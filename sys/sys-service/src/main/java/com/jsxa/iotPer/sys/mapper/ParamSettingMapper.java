package com.jsxa.iotPer.sys.mapper;

import static com.jsxa.iotPer.sys.mapper.ParamSettingDynamicSqlSupport.*;
import static org.mybatis.dynamic.sql.SqlBuilder.*;

import com.jsxa.iotPer.sys.bo.po.ParamSetting;
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
public interface ParamSettingMapper {
    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    long count(SelectStatementProvider selectStatement);

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    @DeleteProvider(type=SqlProviderAdapter.class, method="delete")
    int delete(DeleteStatementProvider deleteStatement);

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    @InsertProvider(type=SqlProviderAdapter.class, method="insert")
    int insert(InsertStatementProvider<ParamSetting> insertStatement);

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    @ResultMap("ParamSettingResult")
    ParamSetting selectOne(SelectStatementProvider selectStatement);

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    @Results(id="ParamSettingResult", value = {
        @Result(column="id", property="id", jdbcType=JdbcType.BIGINT, id=true),
        @Result(column="name", property="name", jdbcType=JdbcType.VARCHAR),
        @Result(column="param_key", property="paramKey", jdbcType=JdbcType.VARCHAR),
        @Result(column="param_value", property="paramValue", jdbcType=JdbcType.VARCHAR),
        @Result(column="type", property="type", jdbcType=JdbcType.BIGINT),
        @Result(column="description", property="description", jdbcType=JdbcType.VARCHAR),
        @Result(column="order_num", property="orderNum", jdbcType=JdbcType.INTEGER),
        @Result(column="park_id", property="parkId", jdbcType=JdbcType.BIGINT),
        @Result(column="create_time", property="createTime", jdbcType=JdbcType.BIGINT)
    })
    List<ParamSetting> selectMany(SelectStatementProvider selectStatement);

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    @UpdateProvider(type=SqlProviderAdapter.class, method="update")
    int update(UpdateStatementProvider updateStatement);

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default QueryExpressionDSL<MyBatis3SelectModelAdapter<Long>> countByExample() {
        return SelectDSL.selectWithMapper(this::count, SqlBuilder.count())
                .from(paramSetting);
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default DeleteDSL<MyBatis3DeleteModelAdapter<Integer>> deleteByExample() {
        return DeleteDSL.deleteFromWithMapper(this::delete, paramSetting);
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default int deleteByPrimaryKey(Long id_) {
        return DeleteDSL.deleteFromWithMapper(this::delete, paramSetting)
                .where(id, isEqualTo(id_))
                .build()
                .execute();
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default int insert(ParamSetting record) {
        return insert(SqlBuilder.insert(record)
                .into(paramSetting)
                .map(id).toProperty("id")
                .map(name).toProperty("name")
                .map(paramKey).toProperty("paramKey")
                .map(paramValue).toProperty("paramValue")
                .map(type).toProperty("type")
                .map(description).toProperty("description")
                .map(orderNum).toProperty("orderNum")
                .map(parkId).toProperty("parkId")
                .map(createTime).toProperty("createTime")
                .build()
                .render(RenderingStrategy.MYBATIS3));
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default int insertSelective(ParamSetting record) {
        return insert(SqlBuilder.insert(record)
                .into(paramSetting)
                .map(id).toPropertyWhenPresent("id", record::getId)
                .map(name).toPropertyWhenPresent("name", record::getName)
                .map(paramKey).toPropertyWhenPresent("paramKey", record::getParamKey)
                .map(paramValue).toPropertyWhenPresent("paramValue", record::getParamValue)
                .map(type).toPropertyWhenPresent("type", record::getType)
                .map(description).toPropertyWhenPresent("description", record::getDescription)
                .map(orderNum).toPropertyWhenPresent("orderNum", record::getOrderNum)
                .map(parkId).toPropertyWhenPresent("parkId", record::getParkId)
                .map(createTime).toPropertyWhenPresent("createTime", record::getCreateTime)
                .build()
                .render(RenderingStrategy.MYBATIS3));
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default QueryExpressionDSL<MyBatis3SelectModelAdapter<List<ParamSetting>>> selectByExample() {
        return SelectDSL.selectWithMapper(this::selectMany, id, name, paramKey, paramValue, type, description, orderNum, parkId, createTime)
                .from(paramSetting);
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default QueryExpressionDSL<MyBatis3SelectModelAdapter<List<ParamSetting>>> selectDistinctByExample() {
        return SelectDSL.selectDistinctWithMapper(this::selectMany, id, name, paramKey, paramValue, type, description, orderNum, parkId, createTime)
                .from(paramSetting);
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default ParamSetting selectByPrimaryKey(Long id_) {
        return SelectDSL.selectWithMapper(this::selectOne, id, name, paramKey, paramValue, type, description, orderNum, parkId, createTime)
                .from(paramSetting)
                .where(id, isEqualTo(id_))
                .build()
                .execute();
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default UpdateDSL<MyBatis3UpdateModelAdapter<Integer>> updateByExample(ParamSetting record) {
        return UpdateDSL.updateWithMapper(this::update, paramSetting)
                .set(id).equalTo(record::getId)
                .set(name).equalTo(record::getName)
                .set(paramKey).equalTo(record::getParamKey)
                .set(paramValue).equalTo(record::getParamValue)
                .set(type).equalTo(record::getType)
                .set(description).equalTo(record::getDescription)
                .set(orderNum).equalTo(record::getOrderNum)
                .set(parkId).equalTo(record::getParkId)
                .set(createTime).equalTo(record::getCreateTime);
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default UpdateDSL<MyBatis3UpdateModelAdapter<Integer>> updateByExampleSelective(ParamSetting record) {
        return UpdateDSL.updateWithMapper(this::update, paramSetting)
                .set(id).equalToWhenPresent(record::getId)
                .set(name).equalToWhenPresent(record::getName)
                .set(paramKey).equalToWhenPresent(record::getParamKey)
                .set(paramValue).equalToWhenPresent(record::getParamValue)
                .set(type).equalToWhenPresent(record::getType)
                .set(description).equalToWhenPresent(record::getDescription)
                .set(orderNum).equalToWhenPresent(record::getOrderNum)
                .set(parkId).equalToWhenPresent(record::getParkId)
                .set(createTime).equalToWhenPresent(record::getCreateTime);
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default int updateByPrimaryKey(ParamSetting record) {
        return UpdateDSL.updateWithMapper(this::update, paramSetting)
                .set(name).equalTo(record::getName)
                .set(paramKey).equalTo(record::getParamKey)
                .set(paramValue).equalTo(record::getParamValue)
                .set(type).equalTo(record::getType)
                .set(description).equalTo(record::getDescription)
                .set(orderNum).equalTo(record::getOrderNum)
                .set(parkId).equalTo(record::getParkId)
                .set(createTime).equalTo(record::getCreateTime)
                .where(id, isEqualTo(record::getId))
                .build()
                .execute();
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default int updateByPrimaryKeySelective(ParamSetting record) {
        return UpdateDSL.updateWithMapper(this::update, paramSetting)
                .set(name).equalToWhenPresent(record::getName)
                .set(paramKey).equalToWhenPresent(record::getParamKey)
                .set(paramValue).equalToWhenPresent(record::getParamValue)
                .set(type).equalToWhenPresent(record::getType)
                .set(description).equalToWhenPresent(record::getDescription)
                .set(orderNum).equalToWhenPresent(record::getOrderNum)
                .set(parkId).equalToWhenPresent(record::getParkId)
                .set(createTime).equalToWhenPresent(record::getCreateTime)
                .where(id, isEqualTo(record::getId))
                .build()
                .execute();
    }
}