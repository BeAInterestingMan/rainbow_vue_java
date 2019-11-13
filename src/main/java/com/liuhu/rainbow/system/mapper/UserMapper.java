package com.liuhu.rainbow.system.mapper;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.liuhu.rainbow.system.entity.User;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * 用户持久层接口
 * @author melo、lh
 * @createTime 2019-10-21 13:24:08
 */
@Repository
public interface UserMapper extends BaseMapper<User> {
    /**
     * 通过用户名得到当前用户
     * @param username 用户名
     * @return com.liuhu.rainbow.system.entity.User
     * @author melo、lh
     * @createTime 2019-10-21 14:56:22
     */
    User selectUserByUsername(String username);

    /**
     * 删除用户角色表关联的角色
     * @param userId 用户ID
     * @return void
     * @author melo、lh
     * @createTime 2019-10-30 11:20:05
     */
    void deleteUserRoles(String userId);
    /**
     * 保存用户角色
     * @param roleIds 角色集合
     * @param userId 用户ID
     * @return void
     * @author melo、lh
     * @createTime 2019-10-31 11:05:58
     */
    void insertUserRoles(String[] roleIds, String userId);
    /**
     * 新增时授予用户游客角色
     * @param id 用户ID
     * @return void
     * @author melo、lh
     * @createTime 2019-10-31 11:06:25
     */
    void insertTouristsRole(String id);

   /**
    * 查找角色绑定的用户
    * @param id 角色ID
    * @return java.util.List<com.liuhu.rainbow.system.entity.User>
    * @author melo、lh
    * @createTime 2019-11-12 10:55:57
    */
    List<User> findRoleWithUser(String id);

    IPage<User> selectUserList(Page<User> page, @Param("nickname") String nickname);
}
