package com.liuhu.rainbow.system.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.liuhu.rainbow.system.Constant.RainbowConstant;
import com.liuhu.rainbow.system.entity.Menu;
import com.liuhu.rainbow.system.mapper.MenuMapper;
import com.liuhu.rainbow.system.service.IMenuService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * 菜单业务层实现类
 * @author melo、lh
 * @createTime 2019-10-21 13:35:09
 */

@Service
public class MenuServiceImpl extends ServiceImpl<MenuMapper, Menu> implements IMenuService {

    @Autowired
    private MenuMapper menuMapper;

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
        // 得到所有菜单
        List<Menu> menus = this.menuMapper.selectMenuListByUsername(username);
        // 最终的菜单数据
        List<Menu> rootMuns = new ArrayList<>();

        // 得到根菜单
        for (Menu menu: menus) {
            if(StringUtils.isBlank(menu.getParentId()) || RainbowConstant.ROOT_MENU.equals(menu.getParentId())){
                rootMuns.add(menu);
            }
        }
        // 遍历根菜单
        for (Menu menu: rootMuns) {
            //得到该根菜单所属的子菜单
            List<Menu> childMenus = this.getChildMenu(menu.getId(), menus);
            menu.setChildren(childMenus);
        }
        return rootMuns;
    }


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
