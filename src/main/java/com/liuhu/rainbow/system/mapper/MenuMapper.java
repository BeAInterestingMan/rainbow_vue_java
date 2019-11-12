package com.liuhu.rainbow.system.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.liuhu.rainbow.system.entity.Menu;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 菜单持久层
 * @author melo、lh
 * @createTime 2019-10-21 13:34:29
 */
@Repository
public interface MenuMapper extends BaseMapper<Menu> {
    /**
     * 通过用户名得到当前用户所属菜单
     * @param username 用户名
     * @return java.util.List<com.liuhu.rainbow.system.entity.Menu>
     * @author melo、lh
     * @createTime 2019-10-21 15:21:13
     */
    List<Menu> selectMenuListByUsername(String username);
    /**
     * 得到所有菜单
     * @return java.util.List<com.liuhu.rainbow.system.entity.Menu>
     * @author melo、lh
     * @createTime 2019-11-08 14:51:32
     */
    List<Menu> getAllMenusWithTree();
    /**
     * 获得角色所具有菜单的ID集合
     * @param roleId 角色Id
     * @return java.util.List<java.lang.String>
     * @author melo、lh
     * @createTime 2019-11-08 15:01:48
     */
    List<String> getRoleMenus(String roleId);


    IPage<Menu> selectMenuListByParam(IPage<Menu> menuIPage,@Param("name") String name, @Param("parentId") String parentId);
}
