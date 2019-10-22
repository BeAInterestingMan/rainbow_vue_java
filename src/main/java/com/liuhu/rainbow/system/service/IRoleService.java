package com.liuhu.rainbow.system.service;

import com.liuhu.rainbow.system.entity.Role;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * 角色业务层接口
 * @author melo、lh
 * @createTime 2019-10-21 13:35:06
 */

public interface IRoleService extends IService<Role> {
    /**
     *  通过用户名得到角色集合
     * @param username 用户名
     * @return java.util.List<com.liuhu.rainbow.system.entity.Role>
     * @author melo、lh
     * @createTime 2019-10-21 15:03:05
     */
    List<Role> selectRoleListByUsername(String username);
}
