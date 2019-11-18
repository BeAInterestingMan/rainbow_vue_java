package com.liuhu.rainbow.system.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.liuhu.rainbow.system.authentication.jwt.JWTToken;
import com.liuhu.rainbow.system.authentication.shiro.ShiroUtils;
import com.liuhu.rainbow.system.entity.Role;
import com.liuhu.rainbow.system.entity.User;
import com.liuhu.rainbow.system.exception.RainbowException;
import com.liuhu.rainbow.system.mapper.MenuMapper;
import com.liuhu.rainbow.system.mapper.RoleMapper;
import com.liuhu.rainbow.system.mapper.UserMapper;
import com.liuhu.rainbow.system.service.IUserService;
import com.liuhu.rainbow.system.util.CommonUtils;
import com.liuhu.rainbow.system.util.MD5Utils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;

/**
 * 用户表业务层实体类
 * @author melo、lh
 * @createTime 2019-10-21 13:35:09
 */
@Transactional(rollbackFor = Exception.class)
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements IUserService {

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private MenuMapper menuMapper;

    @Autowired
    private RoleMapper roleMapper;

    @Override
    public User selectUserByUsername(String username) {
        User user = null;
        try {
            user = userMapper.selectUserByUsername(username);
        }catch (Exception e){
            e.printStackTrace();
        }
        return user;
    }

    @Override
    public Map<String, Object> getUserWithToken(JWTToken jwtToken, User user) {
        //1- 封装token
        Map<String,Object> userInfoMap = new HashMap<>();
        userInfoMap.put("token",jwtToken.getToken());
        userInfoMap.put("expireTime",jwtToken.getExipreAt());
        // 2- 得到用户角色
        List<Role> roles = this.roleMapper.selectRoleListByUsername(user.getUsername());
        userInfoMap.put("roles",roles);
        userInfoMap.put("user",user);
        return userInfoMap;
    }

    @Override
    public IPage<User> selectUserList(Integer currentPage,Integer pageSize, String nickname) {
        IPage<User> userPage = null;
        try {
            Page<User> page = new Page<>(currentPage,pageSize);
            // 用户分页
            userPage = this.userMapper.selectUserList(page, nickname);
            // 加入用户对应角色
            for (User user: userPage.getRecords()) {
                List<Role> roleList = this.roleMapper.selectRoleListByUsername(user.getUsername());
                if(null != roleList && roleList.size() > 0){
                    user.setRoles(roleList);
                }
            }
        }catch (Exception e){
            e.printStackTrace();
            throw new RainbowException("查询用户列表失败");
        }
        return userPage;
    }

    @Override
    public void saveUserRoles(String[] roleIds, String userId) {
        // 1 删除用户原有的角色
        this.userMapper.deleteUserRoles(userId);
        // 2 保存用户跟新的角色
        this.userMapper.insertUserRoles(roleIds,userId);
    }

    @Override
    public boolean saveOrUpdateUser(User user) {
        boolean flag;
        // 当前用户
        User currentUser = this.getCurrentUser();
        // 新增
        if(StringUtils.isBlank(user.getId())){
             user.setStatus("0");
             String id = CommonUtils.getUUID();
             user.setId(id);
             String password = MD5Utils.encrypt(user.getUsername(), "password");
             user.setPassword(password);
             this.createEntity(user,currentUser);
             this.updateEntity(user,currentUser);
             //新增时授予游客角色
             this.userMapper.insertTouristsRole(id);
             this.userMapper.insert(user);
             flag = true;
        }else{
            //修改
            this.updateEntity(user,currentUser);
            this.userMapper.updateById(user);
            flag =false;
        }
        return flag;
    }


    public void updateEntity(User user,User currentUser) {
        if (null != user) {
            user.setUpdator(currentUser.getId());
            user.setUpdatorName(currentUser.getUsername());
         }
            user.setUpdateTime(new Date());
    }

    public void createEntity(User user,User currentUser) {
        if (null != user) {
            user.setCreator(currentUser.getId());
            user.setCreatorName(currentUser.getUsername());
        }
            user.setCreateTime(new Date());
    }

    @Override
    public User getCurrentUser() {
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        String username = ShiroUtils.getUsername();
        return this.userMapper.selectOne(queryWrapper.eq("USERNAME",username));
    }

    @Override
    public List<User> findRoleWithUser(String id) {
        try {
            return this.baseMapper.findRoleWithUser(id);
        }catch (Exception e){
            throw new RainbowException("查找当前角色所属用户失败");
        }
    }
}
