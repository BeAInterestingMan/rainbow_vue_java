package com.liuhu.rainbow.system.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.liuhu.rainbow.system.authentication.jwt.JWTToken;
import com.liuhu.rainbow.system.config.PageRequest;
import com.liuhu.rainbow.system.entity.Role;
import com.liuhu.rainbow.system.entity.User;
import com.liuhu.rainbow.system.mapper.MenuMapper;
import com.liuhu.rainbow.system.mapper.RoleMapper;
import com.liuhu.rainbow.system.mapper.UserMapper;
import com.liuhu.rainbow.system.service.IUserService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 用户表业务层实体类
 * @author melo、lh
 * @createTime 2019-10-21 13:35:09
 */

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
        Map<String,Object> userIngoMap = new HashMap<>();
        userIngoMap.put("token",jwtToken.getToken());
        // 2- 得到用户角色
        List<Role> roles = this.roleMapper.selectRoleListByUsername(user.getUsername());
        userIngoMap.put("roles",roles);
        userIngoMap.put("user",user);
        return userIngoMap;
    }

  /*  @Override
    public IPage<User> findAllByPage(PageRequest pageRequest) {
        Page<User> page = new Page<>();
        page.setCurrent(pageRequest.getPageNum());
        page.setSize(pageRequest.getPageSize());
        page.setRecords(this.baseMapper.findAllByPage(page))
        return ;
    }*/
}
