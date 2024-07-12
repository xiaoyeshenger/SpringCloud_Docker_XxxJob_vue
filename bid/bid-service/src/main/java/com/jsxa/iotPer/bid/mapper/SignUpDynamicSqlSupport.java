package com.jsxa.iotPer.bid.mapper;

import java.sql.JDBCType;
import javax.annotation.Generated;
import org.mybatis.dynamic.sql.SqlColumn;
import org.mybatis.dynamic.sql.SqlTable;

public final class SignUpDynamicSqlSupport {
    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SignUp signUp = new SignUp();

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Long> id = signUp.id;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Long> projectId = signUp.projectId;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Long> userId = signUp.userId;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<String> orgName = signUp.orgName;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<String> userName = signUp.userName;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<String> userMobile = signUp.userMobile;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Long> applyStatus = signUp.applyStatus;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<String> msg = signUp.msg;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final SqlColumn<Long> applyTime = signUp.applyTime;

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public static final class SignUp extends SqlTable {
        public final SqlColumn<Long> id = column("id", JDBCType.BIGINT);

        public final SqlColumn<Long> projectId = column("project_id", JDBCType.BIGINT);

        public final SqlColumn<Long> userId = column("user_id", JDBCType.BIGINT);

        public final SqlColumn<String> orgName = column("org_name", JDBCType.VARCHAR);

        public final SqlColumn<String> userName = column("user_name", JDBCType.VARCHAR);

        public final SqlColumn<String> userMobile = column("user_mobile", JDBCType.VARCHAR);

        public final SqlColumn<Long> applyStatus = column("apply_status", JDBCType.BIGINT);

        public final SqlColumn<String> msg = column("msg", JDBCType.VARCHAR);

        public final SqlColumn<Long> applyTime = column("apply_time", JDBCType.BIGINT);

        public SignUp() {
            super("sign_up");
        }
    }
}