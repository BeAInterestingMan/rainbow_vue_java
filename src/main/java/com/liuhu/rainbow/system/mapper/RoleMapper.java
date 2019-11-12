package com.liuhu.rainbow.system.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.liuhu.rainbow.system.entity.Role;
import com.liuhu.rainbow.system.entity.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * 角色持久层
 * @author melo、lh
 * @createTime 2019-10-21 13:34:20
 */
@Repository
public interface RoleMapper extends BaseMapper<Role> {

    /**
     * 通过用户名得到角色集合
     * @param username 用户名
     * @return java.util.List<com.liuhu.rainbow.system.entity.Role>
     * @author melo、lh
     * @createTime 2019-10-21 15:05:31
     */
    List<Role> selectRoleListByUsername(String username);

    /**
     *  角色分页查询
     * @param roleIPage 分页对象
     * @param name  查询参数
     * @return com.baomidou.mybatisplus.core.metadata.IPage<com.liuhu.rainbow.system.entity.Role>
     * @author melo、lh
     * @createTime 2019-11-01 14:35:20
     */
    IPage<Role> selectRoleWithPage(IPage<Role> roleIPage, @Param("name") String name);

    /**
     * 增加角色所属资源
     * @param menuIds 资源ID
     * @param roleId 角色名称
     * @return void
     * @author melo、lh
     * @createTime 2019-11-08 16:12:07
     */
    void insertRoleMenu(@Param("menuIds") String[] menuIds, @Param("roleId") String roleId);
   /**
    * 通过角色ID删除角色所属资源
    * @param roleId 角色ID
    * @return void
    * @author melo、lh
    * @createTime 2019-11-08 16:08:56
    */
    void deleteRoleMenusByRoleId(String roleId);

}
