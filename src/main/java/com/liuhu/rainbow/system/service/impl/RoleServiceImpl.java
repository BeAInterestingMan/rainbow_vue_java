package com.liuhu.rainbow.system.service.impl;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.liuhu.rainbow.system.entity.Role;
import com.liuhu.rainbow.system.entity.User;
import com.liuhu.rainbow.system.exception.RainbowException;
import com.liuhu.rainbow.system.mapper.RoleMapper;
import com.liuhu.rainbow.system.service.IRoleService;
import com.liuhu.rainbow.system.service.IUserService;
import com.liuhu.rainbow.system.util.CommonUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

/**
 * 角色业务层实体类
 * @author melo、lh
 * @createTime 2019-10-21 13:35:09
 */
@Transactional(rollbackFor = Exception.class)
@Service
public class RoleServiceImpl extends ServiceImpl<RoleMapper, Role> implements IRoleService {

    @Autowired
    private RoleMapper roleMapper;

    @Autowired
    private IUserService userService;


    @Override
    public List<Role> selectRoleListByUsername(String username) {
        List<Role> roleList = null;
        try {
            roleList =this.roleMapper.selectRoleListByUsername(username);
        }catch (Exception e){
            throw  new RainbowException("拉取角色信息失败");
        }
      return roleList;
    }

    @Override
    public IPage<Role> selectRoleWithPage(Integer currentPage,
                                          Integer pageSize, String name) {
        IPage<Role> roleIPage = null;
        try {
            Page<Role> page = new Page<>(currentPage,pageSize);
            roleIPage = this.baseMapper.selectRoleWithPage(page, name);
        }catch (Exception e){
            e.printStackTrace();
            throw  new RainbowException("拉取角色信息失败");
        }
        return roleIPage;
    }

    @Override
    public void updateRoleMenu(String[] menuIds, String roleId) {
        // 1 先删除用户原有的角色
        this.baseMapper.deleteRoleMenusByRoleId(roleId);
        // 2 再去更新本次赋予的角色
        this.baseMapper.insertRoleMenu(menuIds,roleId);
    }

    @Override
    public boolean saveOrUpdateRole(Role role) {
        boolean isAdd = false;
        User currentUser = this.userService.getCurrentUser();
        if(StringUtils.isBlank(role.getId())){
             role.setId(CommonUtils.getUUID());
            this.createEntity(role,currentUser);
            this.updateEntity(role,currentUser);
            this.save(role);
            isAdd = true;
        }else{
            this.updateEntity(role,currentUser);
            this.updateById(role);
        }
        return isAdd;
    }

    @Override
    public void deleteRoleById(String id) {
        // 当前角色所属用户
        List<User> user = this.userService.findRoleWithUser(id);
        if(user.size() >0){
            throw new RainbowException("该角色已被用户绑定，不能删除");
        }
        try {
            //1 先删除角色
            this.baseMapper.deleteById(id);
            // 2 删除角色菜单关联信息
            this.baseMapper.deleteRoleMenusByRoleId(id);
        }catch (Exception ex){
            throw new RainbowException("删除角色信息失败!");
        }
    }

    @Override
    public List<Role> selectRoleByMenuId(String id) {
        List<Role> roleList = null;
        try {
            roleList =this.roleMapper.selectRoleByMenuId(id);
        }catch (Exception e){
            throw  new RainbowException("查询菜单绑定角色信息失败");
        }
        return roleList;
    }


    public void updateEntity(Role role, User currentUser) {
        if (null != role) {
            role.setUpdator(currentUser.getId());
            role.setUpdatorName(currentUser.getUsername());
        }
        role.setUpdateTime(new Date());
    }

    public void createEntity(Role role,User currentUser) {
        if (null != role) {
            role.setCreator(currentUser.getId());
            role.setCreatorName(currentUser.getUsername());
        }
        role.setCreateTime(new Date());
    }
}
