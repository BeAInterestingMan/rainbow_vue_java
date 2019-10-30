package com.liuhu.rainbow.system.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.liuhu.rainbow.system.Constant.RainbowConstant;
import com.liuhu.rainbow.system.authentication.shiro.ShiroUtils;
import com.liuhu.rainbow.system.entity.Role;
import com.liuhu.rainbow.system.entity.User;
import com.liuhu.rainbow.system.service.IRoleService;
import com.liuhu.rainbow.system.service.IUserService;
import com.liuhu.rainbow.system.vo.JsonResult;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import org.springframework.stereotype.Controller;

import java.util.List;

/**
 * 用户表 前端控制器
 * @author melo、lh
 * @createTime 2019-10-21 13:23:57
 */

@RestController
@RequestMapping("/user")
public class UserController {

    @Autowired
    private IUserService userService;

    @Autowired
    private IRoleService roleService;


    /**
     * 获得用户列表
     * @param nickname 昵称
     * @return com.liuhu.rainbow.system.vo.JsonResult
     * @author melo、lh
     * @createTime 2019-10-30 11:14:00
     */
    @RequestMapping("/list")
    public JsonResult getUserList(String nickname){
        List<User> users = this.userService.selectUserList(nickname);
        return JsonResult.ok().addData(users);
    }

    /**
     *  保存用户所属角色  （先删除  再添加）
     * @param roleIds 角色ID集合
     * @param userId 用户ID
     * @return com.liuhu.rainbow.system.vo.JsonResult
     * @author melo、lh
     * @createTime 2019-10-30 11:16:51
     */
    @PostMapping("/saveUserRoles")
    public JsonResult saveUserRoles(String[] roleIds,String userId){
        this.userService.saveUserRoles(roleIds,userId);
        return JsonResult.ok("更新用户角色成功!");
    }

    /**
     * 通过用户ID得到当前用户
     * @param id 用户ID
     * @return com.liuhu.rainbow.system.vo.JsonResult
     * @author melo、lh
     * @createTime 2019-10-30 15:15:45
     */
    @RequestMapping("/getUserById")
    public JsonResult getUserById(String id){
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        User user = this.userService.getBaseMapper().selectOne(queryWrapper.eq("ID", id));
        List<Role> roles = this.roleService.selectRoleListByUsername(user.getUsername());
        user.setRoles(roles);
        return JsonResult.ok().addData(user);
    }

   /**
    * 删除用户
    * @param id
    * @return com.liuhu.rainbow.system.vo.JsonResult
    * @author melo、lh
    * @createTime 2019-10-30 16:04:05
    */
    @DeleteMapping("/delete")
    public JsonResult deleteUser(String id){
        QueryWrapper<User> userQueryWrapper = new QueryWrapper<>();
        User user = this.userService.getBaseMapper().selectOne(userQueryWrapper.eq("ID", id));
        // 得到当前用户
        String currentUsername = ShiroUtils.getUsername();
        if(currentUsername.equals(user.getUsername())){
            return JsonResult.fail("当前用户不可以删除");
        }
        // 如果是最高管理员 不可以删除
        if(RainbowConstant.SYSTEM_ADMIN.equals(user.getUsername())){
            return JsonResult.fail("系统管理员不可以删除");
        }
        this.userService.getBaseMapper().deleteById(id);
        return JsonResult.ok("删除用户信息成功!");
    }

   /**
    * 更新用户状态
    * @param status 用户状态
    * @param id 用户ID
    * @return com.liuhu.rainbow.system.vo.JsonResult
    * @author melo、lh
    * @createTime 2019-10-30 17:02:26
    */
    @PutMapping("/updateStatus")
    public JsonResult updateStatus(String status,String id){
        QueryWrapper<User> userQueryWrapper = new QueryWrapper<>();
        User user = this.userService.getBaseMapper().selectOne(userQueryWrapper.eq("ID", id));
        // 得到当前用户
        String currentUsername = ShiroUtils.getUsername();
        if(currentUsername.equals(user.getUsername())){
            return JsonResult.fail("当前用户不可以禁用");
        }
        // 如果是最高管理员 不可以删除
        if(RainbowConstant.SYSTEM_ADMIN.equals(user.getUsername())){
            return JsonResult.fail("系统管理员不可以禁用");
        }
        user.setStatus("1");
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        this.userService.getBaseMapper().updateById(user);
        return JsonResult.ok("更新用户状态成功!");
    }



}
