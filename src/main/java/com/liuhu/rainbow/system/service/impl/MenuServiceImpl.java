package com.liuhu.rainbow.system.service.impl;

import com.liuhu.rainbow.system.entity.Menu;
import com.liuhu.rainbow.system.mapper.MenuMapper;
import com.liuhu.rainbow.system.service.IMenuService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
}
