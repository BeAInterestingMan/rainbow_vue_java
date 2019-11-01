package com.liuhu.rainbow.system.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.liuhu.rainbow.system.authentication.jwt.JWTToken;
import com.liuhu.rainbow.system.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;
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
    /**
     * 通过昵称得到用户列表
     * @param nickname 昵称
     * @return java.util.List<com.liuhu.rainbow.system.entity.User>
     * @author melo、lh
     * @createTime 2019-10-29 16:54:24
     */
    List<User> selectUserList(String nickname);
    /**
     *  保存用户所属角色  （先删除  再添加）
     * @param roleIds 角色ID集合
     * @param userId 用户ID
     * @return com.liuhu.rainbow.system.vo.JsonResult
     * @author melo、lh
     * @createTime 2019-10-30 11:16:51
     */
    void saveUserRoles(String[] roleIds, String userId);

    /**
     *  保存用户
     * @param user
     * @return void
     * @author melo、lh
     * @createTime 2019-10-31 10:45:59
     */
     boolean saveOrUpdateUser(@Param("user") User user);

     /**
      * 得到当前正在登陆的用户
      * @return com.liuhu.rainbow.system.entity.User
      * @author melo、lh
      * @createTime 2019-10-31 10:49:56
      */
     User getCurrentUser();
}
