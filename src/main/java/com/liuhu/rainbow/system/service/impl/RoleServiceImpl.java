package com.liuhu.rainbow.system.service.impl;

import com.liuhu.rainbow.system.entity.Role;
import com.liuhu.rainbow.system.mapper.RoleMapper;
import com.liuhu.rainbow.system.service.IRoleService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.checkerframework.checker.units.qual.A;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 角色业务层实体类
 * @author melo、lh
 * @createTime 2019-10-21 13:35:09
 */

@Service
public class RoleServiceImpl extends ServiceImpl<RoleMapper, Role> implements IRoleService {

    @Autowired
    private RoleMapper roleMapper;
    @Override
    public List<Role> selectRoleListByUsername(String username) {
        List<Role> roleList = null;
        try {
            roleList =this.roleMapper.selectRoleListByUsername(username);
        }catch (Exception e){
            e.printStackTrace();
        }
      return roleList;
    }
}
