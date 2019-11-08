package com.liuhu.rainbow.system.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.liuhu.rainbow.system.entity.Role;

import java.util.List;
import java.util.Map;

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

    /**
     *  查询角色分页
     * @param currentPage 当前页
     * @param pageSize 每页页数
     * @param name 查询参数
     * @return com.baomidou.mybatisplus.core.metadata.IPage<com.liuhu.rainbow.system.entity.Role>
     * @author melo、lh
     * @createTime 2019-11-01 14:34:31
     */
    IPage<Role> selectRoleWithPage(Integer currentPage, Integer pageSize,String name);
    /**
     * 更新用户所属菜单资源
     * @param menuIds 菜单ID集合
     * @param roleId 角色Id
     * @return void
     * @author melo、lh
     * @createTime 2019-11-08 16:13:37
     */
    void updateRoleMenu(String[] menuIds, String roleId);
}
