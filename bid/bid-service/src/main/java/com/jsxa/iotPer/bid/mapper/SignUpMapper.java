package com.jsxa.iotPer.bid.mapper;

import static com.jsxa.iotPer.bid.mapper.BidRecordDynamicSqlSupport.id;
import static com.jsxa.iotPer.bid.mapper.SignUpDynamicSqlSupport.*;
import static org.mybatis.dynamic.sql.SqlBuilder.*;

import com.jsxa.iotPer.bid.bo.po.SignUp;
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
public interface SignUpMapper {
    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    long count(SelectStatementProvider selectStatement);

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    @DeleteProvider(type=SqlProviderAdapter.class, method="delete")
    int delete(DeleteStatementProvider deleteStatement);

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    @InsertProvider(type=SqlProviderAdapter.class, method="insert")
    @SelectKey(statement="SELECT LAST_INSERT_ID()", keyProperty="record.id", before=false, resultType=Long.class)
    int insert(InsertStatementProvider<SignUp> insertStatement);

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    @ResultMap("SignUpResult")
    SignUp selectOne(SelectStatementProvider selectStatement);

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    @Results(id="SignUpResult", value = {
        @Result(column="id", property="id", jdbcType=JdbcType.BIGINT, id=true),
        @Result(column="project_id", property="projectId", jdbcType=JdbcType.BIGINT),
        @Result(column="user_id", property="userId", jdbcType=JdbcType.BIGINT),
        @Result(column="org_name", property="orgName", jdbcType=JdbcType.VARCHAR),
        @Result(column="user_name", property="userName", jdbcType=JdbcType.VARCHAR),
        @Result(column="user_mobile", property="userMobile", jdbcType=JdbcType.VARCHAR),
        @Result(column="apply_status", property="applyStatus", jdbcType=JdbcType.BIGINT),
        @Result(column="msg", property="msg", jdbcType=JdbcType.VARCHAR),
        @Result(column="apply_time", property="applyTime", jdbcType=JdbcType.BIGINT)
    })
    List<SignUp> selectMany(SelectStatementProvider selectStatement);

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    @UpdateProvider(type=SqlProviderAdapter.class, method="update")
    int update(UpdateStatementProvider updateStatement);

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default QueryExpressionDSL<MyBatis3SelectModelAdapter<Long>> countByExample() {
        return SelectDSL.selectWithMapper(this::count, SqlBuilder.count())
                .from(signUp);
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default DeleteDSL<MyBatis3DeleteModelAdapter<Integer>> deleteByExample() {
        return DeleteDSL.deleteFromWithMapper(this::delete, signUp);
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default int deleteByPrimaryKey(Long id_) {
        return DeleteDSL.deleteFromWithMapper(this::delete, signUp)
                .where(id, isEqualTo(id_))
                .build()
                .execute();
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default int insert(SignUp record) {
        return insert(SqlBuilder.insert(record)
                .into(signUp)
                .map(id).toProperty("id")
                .map(projectId).toProperty("projectId")
                .map(userId).toProperty("userId")
                .map(orgName).toProperty("orgName")
                .map(userName).toProperty("userName")
                .map(userMobile).toProperty("userMobile")
                .map(applyStatus).toProperty("applyStatus")
                .map(msg).toProperty("msg")
                .map(applyTime).toProperty("applyTime")
                .build()
                .render(RenderingStrategy.MYBATIS3));
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default int insertSelective(SignUp record) {
        return insert(SqlBuilder.insert(record)
                .into(signUp)
                .map(id).toProperty("id")
                .map(projectId).toPropertyWhenPresent("projectId", record::getProjectId)
                .map(userId).toPropertyWhenPresent("userId", record::getUserId)
                .map(orgName).toPropertyWhenPresent("orgName", record::getOrgName)
                .map(userName).toPropertyWhenPresent("userName", record::getUserName)
                .map(userMobile).toPropertyWhenPresent("userMobile", record::getUserMobile)
                .map(applyStatus).toPropertyWhenPresent("applyStatus", record::getApplyStatus)
                .map(msg).toPropertyWhenPresent("msg", record::getMsg)
                .map(applyTime).toPropertyWhenPresent("applyTime", record::getApplyTime)
                .build()
                .render(RenderingStrategy.MYBATIS3));
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default QueryExpressionDSL<MyBatis3SelectModelAdapter<SignUp>> selectByExampleOne() {
        return SelectDSL.selectWithMapper(this::selectOne, id, projectId, userId, orgName, userName, userMobile, applyStatus, msg, applyTime)
                .from(signUp);
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default QueryExpressionDSL<MyBatis3SelectModelAdapter<List<SignUp>>> selectByExample() {
        return SelectDSL.selectWithMapper(this::selectMany, id, projectId, userId, orgName, userName, userMobile, applyStatus, msg, applyTime)
                .from(signUp);
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default QueryExpressionDSL<MyBatis3SelectModelAdapter<List<SignUp>>> selectDistinctByExample() {
        return SelectDSL.selectDistinctWithMapper(this::selectMany, id, projectId, userId, orgName, userName, userMobile, applyStatus, msg, applyTime)
                .from(signUp);
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default SignUp selectByPrimaryKey(Long id_) {
        return SelectDSL.selectWithMapper(this::selectOne, id, projectId, userId, orgName, userName, userMobile, applyStatus, msg, applyTime)
                .from(signUp)
                .where(id, isEqualTo(id_))
                .build()
                .execute();
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default UpdateDSL<MyBatis3UpdateModelAdapter<Integer>> updateByExample(SignUp record) {
        return UpdateDSL.updateWithMapper(this::update, signUp)
                .set(projectId).equalTo(record::getProjectId)
                .set(userId).equalTo(record::getUserId)
                .set(orgName).equalTo(record::getOrgName)
                .set(userName).equalTo(record::getUserName)
                .set(userMobile).equalTo(record::getUserMobile)
                .set(applyStatus).equalTo(record::getApplyStatus)
                .set(msg).equalTo(record::getMsg)
                .set(applyTime).equalTo(record::getApplyTime);
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default UpdateDSL<MyBatis3UpdateModelAdapter<Integer>> updateByExampleSelective(SignUp record) {
        return UpdateDSL.updateWithMapper(this::update, signUp)
                .set(projectId).equalToWhenPresent(record::getProjectId)
                .set(userId).equalToWhenPresent(record::getUserId)
                .set(orgName).equalToWhenPresent(record::getOrgName)
                .set(userName).equalToWhenPresent(record::getUserName)
                .set(userMobile).equalToWhenPresent(record::getUserMobile)
                .set(applyStatus).equalToWhenPresent(record::getApplyStatus)
                .set(msg).equalToWhenPresent(record::getMsg)
                .set(applyTime).equalToWhenPresent(record::getApplyTime);
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default int updateByPrimaryKey(SignUp record) {
        return UpdateDSL.updateWithMapper(this::update, signUp)
                .set(projectId).equalTo(record::getProjectId)
                .set(userId).equalTo(record::getUserId)
                .set(orgName).equalTo(record::getOrgName)
                .set(userName).equalTo(record::getUserName)
                .set(userMobile).equalTo(record::getUserMobile)
                .set(applyStatus).equalTo(record::getApplyStatus)
                .set(msg).equalTo(record::getMsg)
                .set(applyTime).equalTo(record::getApplyTime)
                .where(id, isEqualTo(record::getId))
                .build()
                .execute();
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    default int updateByPrimaryKeySelective(SignUp record) {
        return UpdateDSL.updateWithMapper(this::update, signUp)
                .set(projectId).equalToWhenPresent(record::getProjectId)
                .set(userId).equalToWhenPresent(record::getUserId)
                .set(orgName).equalToWhenPresent(record::getOrgName)
                .set(userName).equalToWhenPresent(record::getUserName)
                .set(userMobile).equalToWhenPresent(record::getUserMobile)
                .set(applyStatus).equalToWhenPresent(record::getApplyStatus)
                .set(msg).equalToWhenPresent(record::getMsg)
                .set(applyTime).equalToWhenPresent(record::getApplyTime)
                .where(id, isEqualTo(record::getId))
                .build()
                .execute();
    }
}