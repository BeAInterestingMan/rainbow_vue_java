package com.liuhu.rainbow.system.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.liuhu.rainbow.system.authentication.jwt.JWTToken;
import com.liuhu.rainbow.system.config.PageRequest;
import com.liuhu.rainbow.system.entity.User;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.Map;

/**
 * 用户业务层接口
 * @author melo、lh
 * @createTime 2019-10-21 13:35:01
 */

public interface IUserService extends IService<User> {
    /**
     *  通过用户名得到当前用户
     * @param username 用户名
     * @return com.liuhu.rainbow.system.entity.User
     * @author melo、lh
     * @createTime 2019-10-21 14:49:10
     */
    User selectUserByUsername(String username);
    /**
     * 构建登陆用户
     * @param jwtToken
     * @param user
     * @return java.util.Map<java.lang.String,java.lang.Object>
     * @author melo、lh
     * @createTime 2019-10-22 15:27:39
     */
    Map<String, Object> getUserWithToken(JWTToken jwtToken, User user);
   /* *//**
     * 分页查询
     * @param pageRequest
     * @param params
     * @return com.baomidou.mybatisplus.core.metadata.IPage<com.liuhu.rainbow.system.entity.User>
     * @author melo、lh
     * @createTime 2019-10-22 15:28:02
     *//*
    IPage<User> findAllByPage(PageRequest pageRequest);*/
}
