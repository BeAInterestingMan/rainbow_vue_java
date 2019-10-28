package com.liuhu.rainbow.system.controller;


import com.liuhu.rainbow.system.entity.Menu;
import com.liuhu.rainbow.system.mapper.MenuMapper;
import com.liuhu.rainbow.system.service.IMenuService;
import com.liuhu.rainbow.system.vo.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * 菜单表 前端控制器
 * @author melo、lh
 * @createTime 2019-10-21 13:20:06
 */
@RestController
@RequestMapping("/menu")
public class MenuController {

    @Autowired
    private MenuMapper menuMapper;

    @Autowired
    private IMenuService menuService;

    /**
     * 后台组装vueRouter动态菜单数据
     * @param username 用户名
     * @return com.liuhu.rainbow.system.vo.JsonResult
     * @author melo、lh
     * @createTime 2019-10-28 14:04:36
     */
    @RequestMapping("/getUserMenu/{username}")
    public JsonResult getMenuList(@PathVariable String username){
        //得到树形菜单数据
        List<Menu> menuList = this.menuService.getUserMenu(username);
        return JsonResult.ok().addData(menuList);
    }


}
