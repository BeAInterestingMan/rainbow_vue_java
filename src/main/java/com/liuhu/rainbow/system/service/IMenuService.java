package com.liuhu.rainbow.system.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.liuhu.rainbow.system.entity.Menu;
import com.baomidou.mybatisplus.extension.service.IService;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * 菜单业务层接口
 * @author melo、lh
 * @createTime 2019-10-21 13:35:07
 */

public interface IMenuService extends IService<Menu> {
    /**
     *  通过用户名得到用户所属菜单集合
     * @param username 用户名
     * @return java.util.List<com.liuhu.rainbow.system.entity.Menu>
     * @author melo、lh
     * @createTime 2019-10-21 15:19:31
     */
    List<Menu> selectMenuListByUsername(String username);
    /**
     * 通过用户名得到用户所属菜单集合 树形数据
     * @param username 用户名
     * @return java.util.List<com.liuhu.rainbow.system.entity.Menu>
     * @author melo、lh
     * @createTime 2019-10-22 17:37:07
     */
    List<Menu>  getUserMenu(String username);
    /**
     * 前端为角色授权菜单的树数据
     * @return java.util.List<com.liuhu.rainbow.system.entity.Menu>
     * @author melo、lh
     * @createTime 2019-11-08 14:50:35
     */
    List<Menu> getAllMenusWithTree();

    /**
     *  获得角色所具有菜单的ID集合
     * @param roleId 角色ID
     * @return java.util.List<java.lang.String>
     * @author melo、lh
     * @createTime 2019-11-08 15:02:00
     */
    List<String> getRoleMenus(String roleId);
    /**
     * 菜单管理分页
     * @param currentPage 当前页
     * @param pageSize 分页数量
     * @param name 菜单名称
     * @param parentId 上级菜单ID
     * @return com.baomidou.mybatisplus.core.metadata.IPage<com.liuhu.rainbow.system.entity.Menu>
     * @author melo、lh
     * @createTime 2019-11-13 09:37:25
     */
    IPage<Menu> getAllMenusTable(Integer currentPage, Integer pageSize, String name, String parentId);
    /**
     * 保存菜单
     * @param menu 菜单实体
     * @return void
     * @author melo、lh
     * @createTime 2019-11-13 09:38:42
     */
    boolean saveOrUpdateMenu(Menu menu);
    /**
     * 删除菜单信息
     * @param id 菜单ID
     * @return void
     * @author melo、lh
     * @createTime 2019-11-13 13:59:05
     */
    void deleteMenus(String id);

}
