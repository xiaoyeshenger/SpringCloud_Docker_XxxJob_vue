package com.jsxa.iotPer.sys.service.impl;

import com.github.pagehelper.PageHelper;
import com.jsxa.iotPer.common.bo.po.Role;
import com.jsxa.iotPer.common.bo.po.User;
import com.jsxa.iotPer.common.bo.po.UserRole;
import com.jsxa.iotPer.common.bo.vo.PageVo;
import com.jsxa.iotPer.common.bo.vo.UserVo;
import com.jsxa.iotPer.common.mapper.*;
import com.jsxa.iotPer.common.messagePush.SmsClient;
import com.jsxa.iotPer.common.service.AccessService;
import com.jsxa.iotPer.common.utils.*;
import com.jsxa.iotPer.sys.bo.dto.UserPageReqDto;
import com.jsxa.iotPer.sys.bo.dto.UserPwdUpdateDto;
import com.jsxa.iotPer.sys.bo.dto.UserRegTypeReqDto;
import com.jsxa.iotPer.sys.bo.dto.UserReqDto;
import com.jsxa.iotPer.sys.bo.po.Dept;
import com.jsxa.iotPer.sys.bo.po.Organization;
import com.jsxa.iotPer.sys.mapper.DeptMapper;
import com.jsxa.iotPer.sys.mapper.OrganizationDynamicSqlSupport;
import com.jsxa.iotPer.sys.mapper.OrganizationMapper;
import com.jsxa.iotPer.sys.mapper.PostMapper;
import com.jsxa.iotPer.sys.service.*;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.mybatis.dynamic.sql.render.RenderingStrategies;
import org.mybatis.dynamic.sql.select.MyBatis3SelectModelAdapter;
import org.mybatis.dynamic.sql.select.QueryExpressionDSL;
import org.mybatis.dynamic.sql.update.render.UpdateStatementProvider;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;
import java.util.function.Function;
import java.util.stream.Collectors;

import static com.jsxa.iotPer.sys.mapper.DeptDynamicSqlSupport.orgName;
import static org.mybatis.dynamic.sql.SqlBuilder.*;
import static org.mybatis.dynamic.sql.SqlBuilder.isGreaterThanOrEqualTo;
import static org.mybatis.dynamic.sql.SqlBuilder.isLessThanOrEqualTo;
import static org.mybatis.dynamic.sql.select.SelectDSL.select;

/*
 * @Author 张勇
 * @Description //UserService接口实现类
 * @Date 2021/05/21 18:43
 * @Param
 * @return
 **/
@Service
@Slf4j
@RequiredArgsConstructor
public class UserServiceImpl implements UserService {

    //登录密码加盐
    @Value("${sys.pwd.salt}")
    private String pwdSalt;

    //jpush短信模板id
    @Value("${sys.app.accountPassSmsId:205394}")
    private String accountPassSmsId;

    private final SmsClient smsClient;


    private final AccessService accessService;

    private final UserMapper userMapper;

    private final UserRoleMapper userRoleMapper;

    private final RoleMapper roleMapper;

    private final OrganizationMapper organizationMapper;

    private final DeptMapper deptMapper;


    @Override
    public Map<String, Object> updatePassword(UserPwdUpdateDto userPasswordDto) {
        //1.用户是否存在
        Long userId = userPasswordDto.getUserId();
        User user = userMapper.selectByPrimaryKey(userId);
        if (ObjUtil.isEmpty(user)) {
            throw new IllegalArgumentException("ID为: " + userId + " 的用户不存在");
        }

        if ("SuperAdmin".equals(user.getRoleKey())) {
            throw new IllegalArgumentException("你没有权限修改该用户的信息");
        }

        //2.更新密码
        UpdateStatementProvider updateStatement = update(UserDynamicSqlSupport.user)
                .set(UserDynamicSqlSupport.password)
                .equalTo(SHA256Util.getSHA256Salt(userPasswordDto.getNewPassword(), pwdSalt))
                .where(UserDynamicSqlSupport.id, isEqualTo(userId))
                .build()
                .render(RenderingStrategies.MYBATIS3);
        userMapper.update(updateStatement);

        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("msg", "更新密码成功");
        return resultMap;
    }

    @Override
    public Map<String, Object> getRegisterByUserId(String userInfo, Long userId) {
        //(1)手机号是否存在
        User user = userMapper.selectByExampleOne()
                .where(UserDynamicSqlSupport.id, isEqualTo(userId))
                .build()
                .execute();
        if (ObjUtil.isEmpty(user)) {
            throw new IllegalArgumentException("ID为: " + userId + " 的用户不存在");
        }

//        Long parkId = user.getParkId();
//        Park park = parkMapper.selectByExampleOne()
//                .where(ParkDynamicSqlSupport.id, isEqualTo(parkId))
//                .build()
//                .execute();
//        if(ObjUtil.isEmpty(park)){
//            throw new IllegalArgumentException("该用户未还未关联任何园区");
//        }
//
        Map<String, Object> resultMap = new HashMap<>();
//        resultMap.put("parentId",park.getParentId());
//        resultMap.put("name",park.getName());
//        resultMap.put("addressCode",park.getAddressCode());
//        resultMap.put("longitude",park.getLongitude());
//        resultMap.put("latitude",park.getLatitude());
//        resultMap.put("principalMobile",park.getPrincipalMobile());
//        resultMap.put("principalName",park.getPrincipalName());
//        resultMap.put("type",park.getType());
//        resultMap.put("industry",park.getIndustry());
//        resultMap.put("staffScale",park.getStaffScale());
//        resultMap.put("startingTime",park.getStartingTime());
//        resultMap.put("floorSpace",park.getFloorSpace());
//        resultMap.put("wareArea",park.getWareArea());
        return resultMap;
    }

    @Override
    @Transactional
    public Map<String, Object> addUser(String userInfo, UserReqDto userReqDto) {

        //1.名称是否存在
        //(1).部门是否存在
        Long deptId = userReqDto.getDeptId();
        Dept dept = deptMapper.selectByPrimaryKey(deptId);
        if(ObjUtil.isEmpty(dept)){
            throw new IllegalArgumentException("id为: " + deptId + " 的部门不存在");
        }

        //(3).名称是否存在
        String username = userReqDto.getUsername();
        User ma = userMapper.selectOne(
                select(UserDynamicSqlSupport.id, UserDynamicSqlSupport.username)
                        .from(UserDynamicSqlSupport.user)
                        .where(UserDynamicSqlSupport.username, isEqualTo(username))
                        .build()
                        .render(RenderingStrategies.MYBATIS3));
        if (!ObjUtil.isEmpty(ma)) {
            throw new IllegalArgumentException("该用户名已存在");
        }

        //(2).手机号是否存在
        String mobileNumber = userReqDto.getMobileNumber();
        User us = userMapper.selectOne(
                select(UserDynamicSqlSupport.id, UserDynamicSqlSupport.mobileNumber)
                        .from(UserDynamicSqlSupport.user)
                        .where(UserDynamicSqlSupport.mobileNumber, isEqualTo(mobileNumber))
                        .build()
                        .render(RenderingStrategies.MYBATIS3));
        if (!ObjUtil.isEmpty(us)) {
            throw new IllegalArgumentException("该手机号已存在");
        }

        //(3).角色是否存在
        Long roleId = userReqDto.getRoleId();
        Role role = roleMapper.selectByPrimaryKey(roleId);
        if (ObjUtil.isEmpty(role)) {
            throw new IllegalArgumentException("id为: " + roleId + " 的角色不存在");
        }
        //超级用户,只能由后台初始化
        if ("SuperAdmin".equals(role.getRoleKey())) {
            throw new IllegalArgumentException("你没有权限添加超级管理员");
        }

        //2.设置参数
        //(1)复制UserReqDto中的请求参数到User
        User user = VoPoConverterUtil.copyProperties(userReqDto, User.class);

        //(2)设置其他属性
        Long id = new IdWorker().nextId();
        Long curTime = System.currentTimeMillis();
        user.setId(id)
                .setOrgId(dept.getOrgId())
                .setOrgName(dept.getOrgName())
                .setDeptId(deptId)
                .setDeptName(dept.getName())
                .setDelFlag((byte) 0)
                .setRoleId(role.getId())
                .setRoleKey(role.getRoleKey())
                //.setPassword(SHA256Util.getSHA256Salt(user.getPassword(), pwdSalt))
                .setPassword(userReqDto.getPassword())
                .setRegType(8L)
                .setCreateTime(curTime);

        //3.保存
        userMapper.insert(user);

        //4.保存用户-角色中间表
        UserRole userRole = UserRole.builder()
                .userId(id)
                .roleId(roleId)
                .createTime(curTime)
                .build();
        userRoleMapper.insert(userRole);

        //5.返回结果
        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("msg", "添加用户成功");
        return resultMap;
    }

    @Override
    @Transactional
    public Map<String, Object> deleteUserById(String userInfo, Long id) {

        User user = userMapper.selectByPrimaryKey(id);
        if (user == null) {
            throw new IllegalArgumentException("id为:" + id + "的用户不存在");
        }

        if (user.getRoleKey().equals("SuperAdmin")) {
            throw new IllegalArgumentException("没权限删除系统管理员");
        }

        UserVo userVo = UserUtil.getUserVoByUserInfo(userInfo);
        if (userVo.getId().equals(id)) {
            throw new IllegalArgumentException("不能删除自己的账户信息");
        }

        //删除用户
        userMapper.deleteByExample()
                .where(UserDynamicSqlSupport.id, isEqualTo(id))
                .build()
                .execute();

        //删除用户-角色中间表
        userRoleMapper.deleteByExample()
                .where(UserRoleDynamicSqlSupport.userId, isEqualTo(id))
                .build()
                .execute();

        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("msg", "删除用户成功");
        return resultMap;
    }

    @Override
    @Transactional
    public Map<String, Object> updateUser(String userInfo, UserReqDto userReqDto) {

        //1.参数校验
        //(2).部门是否存在
        Long deptId = userReqDto.getDeptId();
        Dept dept = deptMapper.selectByPrimaryKey(deptId);
        if(ObjUtil.isEmpty(dept)){
            throw new IllegalArgumentException("id为: " + deptId + " 的部门不存在");
        }

        //(1).判断user是否存在
        Long id = userReqDto.getId();
        User user = userMapper.selectByPrimaryKey(id);
        if (ObjUtil.isEmpty(user)) {
            throw new IllegalArgumentException("id为:" + id + "的用户不存在");
        }

        //(2).是否修改了名称
        String username = user.getUsername();
        String reqUsername = userReqDto.getUsername();
        if (!Objects.equals(username, reqUsername)) {
            User ma = userMapper.selectOne(
                    select(UserDynamicSqlSupport.id, UserDynamicSqlSupport.username)
                            .from(UserDynamicSqlSupport.user)
                            .where(UserDynamicSqlSupport.username, isEqualTo(reqUsername))
                            .build()
                            .render(RenderingStrategies.MYBATIS3));
            if (!ObjUtil.isEmpty(ma)) {
                throw new IllegalArgumentException("该用户名已存在");
            }
        }

        //(3).是否修改了手机号
        String mobileNumber = user.getMobileNumber();
        String reqMobileNumber = userReqDto.getMobileNumber();
        if (!Objects.equals(mobileNumber, reqMobileNumber)) {
            User us = userMapper.selectOne(
                    select(UserDynamicSqlSupport.id, UserDynamicSqlSupport.mobileNumber)
                            .from(UserDynamicSqlSupport.user)
                            .where(UserDynamicSqlSupport.mobileNumber, isEqualTo(reqMobileNumber))
                            .build()
                            .render(RenderingStrategies.MYBATIS3));
            if (!ObjUtil.isEmpty(us)) {
                throw new IllegalArgumentException("该手机号已存在");
            }

        }


        //(7).是否修改了角色
        //--1.请求的角色ID
        Long reqRoleId = userReqDto.getRoleId();
        Role reqRole = roleMapper.selectByPrimaryKey(reqRoleId);
        if (ObjUtil.isEmpty(reqRole)) {
            throw new IllegalArgumentException("id为: " + reqRoleId + " 的角色不存在");
        }
        //超级用户,只能由后台初始化
        if ("SuperAdmin".equals(reqRole.getRoleKey())) {
            throw new IllegalArgumentException("你没有权限添加超级管理员");
        }


        //--2.原来的角色ID
        UserRole usRole = userRoleMapper.selectByExampleOne()
                .where(UserRoleDynamicSqlSupport.userId, isEqualTo(id))
                .build()
                .execute();
        Long roleId = usRole.getRoleId();

        //--3.对比本次请求的角色和原来的角色,如果修改，保存最新的角色
        if (!Objects.equals(reqRoleId, roleId)) {
            //a.删除之前的用户-角色中间表
            userRoleMapper.deleteByExample()
                    .where(UserRoleDynamicSqlSupport.userId, isEqualTo(id))
                    .build()
                    .execute();

            //b.保存最新的用户-角色中间表
            UserRole userRole = UserRole.builder()
                    .userId(id)
                    .roleId(reqRoleId)
                    .createTime(System.currentTimeMillis())
                    .build();
            userRoleMapper.insert(userRole);

            //c.保存最新的roleKey
            user.setRoleId(reqRoleId).setRoleKey(reqRole.getRoleKey());
        }

        //5.更新User
        //(1)复制UserDto中的请求参数到User
        VoPoConverterUtil.beanConverterNotNull(userReqDto, user);
        user.setOrgId(dept.getOrgId()).setOrgName(dept.getOrgName()).setDeptName(dept.getName());


        //6.密码
        String pw = userReqDto.getPassword();
        if (!ObjUtil.isEmpty(pw)) {
            String reqPassword = SHA256Util.getSHA256Salt(pw, pwdSalt);
            user.setPassword(reqPassword);
        }

        //7.保存
        userMapper.updateByPrimaryKey(user);

        //8.返回结果
        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("msg", "更新用户成功");
        return resultMap;
    }

    @Override
    public Map<String, Object> updateUserRegType(String userInfo, UserRegTypeReqDto userRegTypeReqDto) {

        //1.用户是否存在
        Long userId = userRegTypeReqDto.getUserId();
        User user = userMapper.selectByPrimaryKey(userId);
        if (ObjUtil.isEmpty(user)) {
            throw new IllegalArgumentException("ID为:" + userId + "的用户不存在");
        }
        String username = user.getUsername();

        Long regType = user.getRegType();
        if (!regType.equals(7L)) {
            throw new IllegalArgumentException("当前用户处于非申请中状态,不能审核");
        }

        //2.用户状态
        Long userRegType = userRegTypeReqDto.getRegType();
        if (!(userRegType.equals(8L) || userRegType.equals(9L))) {
            throw new IllegalArgumentException("只能更新为正式(Office)或未通过状态(NotPass)");
        }

        if (userRegType.equals(9L)) {
            String remark = userRegTypeReqDto.getRemark();
            if (ObjUtil.isEmpty(remark)) {
                throw new IllegalArgumentException("审核不通过的原因不能为空");
            }
        }


        Map<String, Object> resultMap = new HashMap<>();
        //(1).用户状态为--》未通过(申请中变为未通过(7-->9))
        if (userRegType.equals(9L)) {
            //--1.保存最新状态
            userMapper.update(update(UserDynamicSqlSupport.user)
                    .set(UserDynamicSqlSupport.regType).equalToWhenPresent(userRegType)
                    .where(UserDynamicSqlSupport.id, isEqualTo(userId))
                    .build()
                    .render(RenderingStrategies.MYBATIS3));

            //--2.未通过,告知用户继续修改资料
            Map<String, Object> telPara = new HashMap<>(3);
            telPara.put("username", username);
            telPara.put("flag", "未");
            telPara.put("action", "修改申请资料并重新提交,具体原因:" + userRegTypeReqDto.getRemark());
            smsClient.sendSmg(user.getMobileNumber(), accountPassSmsId, telPara);
            resultMap.put("msg", "更新用户注册状态成功");
            return resultMap;
        }

        //(2).用户状态为--》审核通过(申请中变为正式用户(7-->8))
        if (userRegType == 8L) {
            String mobileNumber = user.getMobileNumber();
            userMapper.update(update(UserDynamicSqlSupport.user)
                    .set(UserDynamicSqlSupport.regType).equalToWhenPresent(userRegType)
                    .where(UserDynamicSqlSupport.id, isEqualTo(userId))
                    .build()
                    .render(RenderingStrategies.MYBATIS3));

            //--3.将账户密码发送给申请者
            Map<String, Object> telPara = new HashMap<>(3);
            telPara.put("username", username);
            telPara.put("flag", "已");
            telPara.put("action", "登录智慧园区管理平台");
            smsClient.sendSmg(mobileNumber, accountPassSmsId, telPara);
            //log.info("发送短信到人员手机成功, 手机号: {},用户名:{},密码:{}", mobileNumber, username,password);
            resultMap.put("msg", "更新用户注册状态成功");
        }
        return resultMap;
    }

    @Override
    public Map<String, Object> getUserById(String userInfo, Long id) {
        User e = userMapper.selectByPrimaryKey(id);
        if (ObjUtil.isEmpty(e)) {
            throw new IllegalArgumentException("id为:" + id + "的用户不存在");
        }

        UserRole userRole = userRoleMapper.selectByExampleOne()
                .where(UserRoleDynamicSqlSupport.userId, isEqualTo(id))
                .build()
                .execute();
        Long roleId = userRole.getRoleId();
        Role role = roleMapper.selectByPrimaryKey(roleId);
        if (ObjUtil.isEmpty(role)) {
            throw new IllegalArgumentException("id为:" + id + "的用户没有配置任何角色信息");
        }

        Map<String, Object> attr = new HashMap<>();
        attr.put("id", e.getId());
        attr.put("username", e.getUsername());
        attr.put("name", e.getName());
        attr.put("email", e.getEmail());
        attr.put("mobileNumber", e.getMobileNumber());
        attr.put("userSex", e.getUserSex());
        attr.put("roleId", roleId);
        attr.put("roleKey", e.getRoleKey());
        attr.put("deptId", e.getDeptId());
        attr.put("deptName", e.getDeptName());
        attr.put("status", e.getStatus());
        attr.put("regType", e.getRegType());
        attr.put("picUrl", accessService.getAccessUrl(e.getPicUrl(), "user"));
        attr.put("createTime", e.getCreateTime());
        return attr;
    }

    @Override
    public PageVo<Map<String, Object>> getUserListPageVo(String userInfo, UserPageReqDto userPageReqDto) {

        //1.查询语句构建
        QueryExpressionDSL<MyBatis3SelectModelAdapter<List<User>>>.QueryExpressionWhereBuilder builder = userMapper.selectByExample().where();

        //2.根据查询条件封装查询命令
        Long orgId = userPageReqDto.getOrgId();
        if (!ObjUtil.isEmpty(orgId)) {
            builder.and(UserDynamicSqlSupport.orgId, isEqualTo(orgId));
        }

        String username = userPageReqDto.getUsername();
        if (!ObjUtil.isEmpty(username)) {
            builder.and(UserDynamicSqlSupport.username, isLike("%" + username.trim() + "%"));
        }

        String mobileNumber = userPageReqDto.getMobileNumber();
        if (!ObjUtil.isEmpty(mobileNumber)) {
            builder.and(UserDynamicSqlSupport.mobileNumber, isLike("%" + mobileNumber.trim() + "%"));
        }

        String roleKeyList = userPageReqDto.getRoleKeyList();
        if (!ObjUtil.isEmpty(roleKeyList)) {
            String[] roleKeyArray = roleKeyList.split(",");
            builder.and(UserDynamicSqlSupport.roleKey, isIn(roleKeyArray));
        }

        Byte status = userPageReqDto.getStatus();
        if (!ObjUtil.isEmpty(status)) {
            builder.and(UserDynamicSqlSupport.status, isEqualTo(status));
        }

        Long regType = userPageReqDto.getRegType();
        if (!ObjUtil.isEmpty(regType)) {
            builder.and(UserDynamicSqlSupport.regType, isEqualTo(regType));
        }

        Long startTime = userPageReqDto.getStartTime();
        Long endTime = userPageReqDto.getEndTime();
        if (startTime != null && endTime != null) {
            builder.and(UserDynamicSqlSupport.createTime, isGreaterThanOrEqualTo(startTime));
            builder.and(UserDynamicSqlSupport.createTime, isLessThanOrEqualTo(endTime));
        } else {
            if (startTime != null) {
                builder.and(UserDynamicSqlSupport.createTime, isGreaterThanOrEqualTo(startTime));
            }
            if (endTime != null) {
                builder.and(UserDynamicSqlSupport.createTime, isLessThanOrEqualTo(endTime));
            }
        }

        builder.orderBy(UserDynamicSqlSupport.createTime.descending());

        //设置分页条件
        PageHelper.startPage(userPageReqDto.getPageNum(), userPageReqDto.getPageSize());
        List<User> list = builder.build().execute();
        PageVo<User> pageVo = new PageVo<>(list);

        //5.对象转为map分页输出
        return PageVo.of(
                pageVo,
                e -> {
                    Map<String, Object> attr = new HashMap<>();
                    attr.put("id", e.getId());
                    attr.put("username", e.getUsername());
                    attr.put("name", e.getName());
                    attr.put("email", e.getEmail());
                    attr.put("mobileNumber", e.getMobileNumber());
                    attr.put("userSex", e.getUserSex());
                    attr.put("roleId", e.getRoleId());
                    attr.put("roleKey", e.getRoleKey());
                    attr.put("deptId", e.getDeptId());
                    attr.put("deptName", e.getDeptName());
                    attr.put("roleKeyName", CommonUtils.isNotEmpty(roleMapper.selectByPrimaryKey(e.getRoleId())) ? roleMapper.selectByPrimaryKey(e.getRoleId()).getName() : "");
                    attr.put("status", e.getStatus());
                    attr.put("regType", e.getRegType());
                    attr.put("picUrl", accessService.getAccessUrl(e.getPicUrl(), "user"));
                    attr.put("createTime", e.getCreateTime());
                    return attr;
                }
        );
    }


    @Override
    public Map<String, Object> getUserListByRoleKey(String userInfo, String roleKey) {
        Map<String, Object> attr = new HashMap<>();

        Role role = roleMapper.selectByExampleOne()
                .where(RoleDynamicSqlSupport.roleKey, isEqualTo(roleKey))
                .build()
                .execute();
        if (ObjUtil.isEmpty(role)) {
            throw new IllegalArgumentException("roleKey为:" + roleKey + "的角色信息不存在");
        }
        //2.查询语句构建
        List<User> userList = userMapper.selectByExample()
                .leftJoin(UserRoleDynamicSqlSupport.userRole)
                .on(UserRoleDynamicSqlSupport.userId, equalTo(UserDynamicSqlSupport.id))
                .leftJoin(RoleDynamicSqlSupport.role)
                .on(RoleDynamicSqlSupport.id, equalTo(UserRoleDynamicSqlSupport.roleId))
                .where(RoleDynamicSqlSupport.roleKey, isEqualTo(roleKey))
                .build()
                .execute();
        attr.put("useList", userList);
        return attr;
    }
}