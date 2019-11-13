package com.liuhu.rainbow.system.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.liuhu.rainbow.system.Constant.RainbowConstant;
import com.liuhu.rainbow.system.entity.Menu;
import com.liuhu.rainbow.system.entity.Role;
import com.liuhu.rainbow.system.entity.User;
import com.liuhu.rainbow.system.exception.RainbowException;
import com.liuhu.rainbow.system.mapper.MenuMapper;
import com.liuhu.rainbow.system.service.IMenuService;
import com.liuhu.rainbow.system.service.IRoleService;
import com.liuhu.rainbow.system.service.IUserService;
import com.liuhu.rainbow.system.util.CommonUtils;
import com.liuhu.rainbow.system.vo.JsonResult;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * 菜单业务层实现类
 * @author melo、lh
 * @createTime 2019-10-21 13:35:09
 */
@Transactional(rollbackFor = Exception.class)
@Service
public class MenuServiceImpl extends ServiceImpl<MenuMapper, Menu> implements IMenuService {

    @Autowired
    private MenuMapper menuMapper;

    @Autowired
    private IUserService userService;

    @Autowired
    private IRoleService roleService;


    @Override
    public List<Menu> selectMenuListByUsername(String username) {
        List<Menu> menuList = null;
       try {
           menuList = this.menuMapper.selectMenuListByUsername(username);
       }catch (Exception e){
           e.printStackTrace();
       }
       return menuList;
    }

    @Override
    public List<Menu> getUserMenu(String username) {
        // 得到用户所有菜单
        List<Menu> menus = this.menuMapper.selectMenuListByUsername(username);
        // 最终的菜单数据
        List<Menu> rootMuns = new ArrayList<>();
        return getTreeMenus(menus, rootMuns);
    }

    @Override
    public List<Menu> getAllMenusWithTree() {
        // 得到所有菜单
        List<Menu> allMenusWithTree = this.menuMapper.getAllMenusWithTree();
        // 最终的菜单数据
        List<Menu> rootMenus = new ArrayList<>();
        return getTreeMenus(allMenusWithTree, rootMenus);
    }

    @Override
    public List<String> getRoleMenus(String roleId) {
        List<String> roleMenuIds = null;
        try {
            roleMenuIds = this.menuMapper.getRoleMenus(roleId);
        }catch (Exception e){
            throw new RainbowException("获得角色菜单资源失败!");
        }
       return roleMenuIds;
    }

    @Override
    public IPage<Menu> getAllMenusTable(Integer currentPage, Integer pageSize, String name, String parentId) {
        IPage<Menu> menuPage = null;
       try {
          Page<Menu> page = new Page<>(currentPage,pageSize);
           menuPage = this.menuMapper.selectMenuListByParam(page,name, parentId);
           }catch (Exception e){
           e.printStackTrace();
               throw  new RainbowException("菜单分页查询失败");
           }

        return menuPage;
    }

    @Override
    public boolean saveOrUpdateMenu(Menu menu) {
        boolean isAdd = false;
        User currentUser = this.userService.getCurrentUser();
        if(StringUtils.isBlank(menu.getId())){
            menu.setId(CommonUtils.getUUID());
            this.createEntity(menu,currentUser);
            this.updateEntity(menu,currentUser);
            this.save(menu);
            isAdd = true;
        }else{
            this.updateEntity(menu,currentUser);
            this.updateById(menu);
        }
        return isAdd;
    }

    @Override
    public void deleteMenus(String id) {
            // 查询该菜单是否已经绑定角色
            List<Role> roles = this.roleService.selectRoleByMenuId(id);
            if(null != roles && roles.size()>0){
                throw new RainbowException("该菜单已被角色绑定，无法删除");
            }
            //  删除菜单信息
            this.baseMapper.deleteById(id);
       }

    public void updateEntity(Menu menu, User currentUser) {
        if (null != menu) {
            menu.setUpdator(currentUser.getId());
            menu.setUpdatorName(currentUser.getUsername());
        }
        menu.setUpdateTime(new Date());
    }

    public void createEntity(Menu menu,User currentUser) {
        if (null != menu) {
            menu.setCreator(currentUser.getId());
            menu.setCreatorName(currentUser.getUsername());
        }
        menu.setCreateTime(new Date());
    }

    /**
      * 得到树形菜单数据集合
      * @param menus 查询出的所有菜单集合
      * @param rootMenus 最终返回的菜单集合
      * @return java.util.List<com.liuhu.rainbow.system.entity.Menu>
      * @author melo、lh
      * @createTime 2019-11-04 10:18:56
      */
      public List<Menu> getTreeMenus(List<Menu> menus, List<Menu> rootMenus){
          // 得到根菜单
          for (Menu menu: menus) {
              if(StringUtils.isBlank(menu.getParentId()) || RainbowConstant.ROOT_MENU.equals(menu.getParentId())){
                  rootMenus.add(menu);
              }
          }
          // 遍历根菜单
          for (Menu menu: rootMenus) {
              //得到该根菜单所属的子菜单
              List<Menu> childMenus = this.getChildMenu(menu.getId(), menus);
              menu.setChildren(childMenus);
          }
          return rootMenus;
      }


    /**
     * 得到子菜单数据
     * @param parentsId 父菜单ID
     * @param menus 所有菜单集合
     * @return java.util.List<com.liuhu.rainbow.system.entity.Menu>
     * @author melo、lh
     * @createTime 2019-11-04 10:17:28
     */
    public List<Menu> getChildMenu(String parentsId,List<Menu> menus) {
        //子菜单
        List<Menu> childMenus =  new ArrayList<>();
        for (Menu menu:menus) {
            // 如果该菜单的父Id是传入ID 则为转入菜单的子菜单
            if(parentsId.equals(menu.getParentId())){
                childMenus.add(menu);
            }
        }
        // 把子菜单的子菜单再循环一遍
        for (Menu menu : childMenus) {
            // 递归查询
            menu.setChildren(getChildMenu(menu.getId(), menus));
        } // 递归退出条件
        if (childMenus.size() == 0) {
            return null;
        }
        return childMenus;
    }

}
