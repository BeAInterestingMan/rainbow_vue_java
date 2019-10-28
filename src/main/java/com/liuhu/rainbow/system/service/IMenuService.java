package com.liuhu.rainbow.system.service;

import com.liuhu.rainbow.system.entity.Menu;
import com.baomidou.mybatisplus.extension.service.IService;

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
}
