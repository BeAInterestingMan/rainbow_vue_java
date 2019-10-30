package com.liuhu.rainbow.system.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.liuhu.rainbow.system.entity.Role;
import com.liuhu.rainbow.system.mapper.RoleMapper;
import com.liuhu.rainbow.system.vo.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * 角色表 前端控制器
 * @author melo、lh
 * @createTime 2019-10-21 13:23:41
 */

@Controller
@RequestMapping("/role")
public class RoleController {

    @Autowired
    private RoleMapper roleMapper;

    /**
     * 得到所有的角色列表
     * @return com.liuhu.rainbow.system.vo.JsonResult
     * @author melo、lh
     * @createTime 2019-10-30 14:42:42
     */
    @RequestMapping("/list")
    @ResponseBody
    public JsonResult getRoleList(){
        List<Role> roles = this.roleMapper.selectList(new QueryWrapper<>());
        return JsonResult.ok().addData(roles);
    }
}
