package com.liuhu.rainbow.system.service.impl;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.liuhu.rainbow.system.entity.Role;
import com.liuhu.rainbow.system.exception.RainbowException;
import com.liuhu.rainbow.system.mapper.RoleMapper;
import com.liuhu.rainbow.system.service.IRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

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


}
