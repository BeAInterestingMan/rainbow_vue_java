package com.liuhu.rainbow.system.mapper;

import com.liuhu.rainbow.system.entity.Role;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 角色持久层
 * @author melo、lh
 * @createTime 2019-10-21 13:34:20
 */
@Repository
public interface RoleMapper extends BaseMapper<Role> {

    /**
     * 通过用户名得到角色集合
     * @param username 用户名
     * @return java.util.List<com.liuhu.rainbow.system.entity.Role>
     * @author melo、lh
     * @createTime 2019-10-21 15:05:31
     */
    List<Role> selectRoleListByUsername(String username);
}
