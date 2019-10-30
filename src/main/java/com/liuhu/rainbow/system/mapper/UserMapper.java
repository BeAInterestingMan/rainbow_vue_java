package com.liuhu.rainbow.system.mapper;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.liuhu.rainbow.system.entity.User;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.springframework.stereotype.Repository;

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

    IPage<User> findAllByPage(Page<User> page);
    /**
     * 删除用户角色表关联的角色
     * @param userId 用户ID
     * @return void
     * @author melo、lh
     * @createTime 2019-10-30 11:20:05
     */
    void deleteUserRoles(String userId);

    void insertUserRoles(String[] roleIds, String userId);
}
