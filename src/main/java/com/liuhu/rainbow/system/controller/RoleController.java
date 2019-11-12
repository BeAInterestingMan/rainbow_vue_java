package com.liuhu.rainbow.system.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.liuhu.rainbow.system.Constant.RainbowConstant;
import com.liuhu.rainbow.system.entity.Role;
import com.liuhu.rainbow.system.mapper.RoleMapper;
import com.liuhu.rainbow.system.service.IRoleService;
import com.liuhu.rainbow.system.vo.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

/**
 * 角色表 前端控制器
 * @author melo、lh
 * @createTime 2019-10-21 13:23:41
 */

@RestController
@RequestMapping("/role")
public class RoleController {

    @Autowired
    private RoleMapper roleMapper;

    @Autowired
    private IRoleService roleService;

    /**
     * 得到所有的角色列表
     * @return com.liuhu.rainbow.system.vo.JsonResult
     * @author melo、lh
     * @createTime 2019-10-30 14:42:42
     */
    @RequestMapping("/list")
    public JsonResult getRoleList(){
        List<Role> roles = this.roleMapper.selectList(new QueryWrapper<>());
        return JsonResult.ok().addData(roles);
    }


      /**
       *  查询角色列表分页
       * @param currentPage 当前页数
       * @param pageSize 分页条数
       * @param name 查询参数
       * @return com.liuhu.rainbow.system.vo.JsonResult
       * @author melo、lh
       * @createTime 2019-11-01 14:40:46
       */
        @RequestMapping("/selectRoleWithPage")
        protected JsonResult selectRoleWithPage(  @RequestParam(defaultValue = "1") Integer currentPage,
                                                  @RequestParam(defaultValue = "10") Integer pageSize,
                                                  @RequestParam String name ) {
            IPage<Role> roleIPage =this.roleService.selectRoleWithPage(currentPage,pageSize,name);
            return JsonResult.ok().addData(roleIPage.getRecords()).add(RainbowConstant.TOTAL_COUNT,roleIPage.getTotal());
        }

      /**
       * 保存角色
       * @param role 角色信息
       * @return com.liuhu.rainbow.system.vo.JsonResult
       * @author melo、lh
       * @createTime 2019-11-12 10:39:55
       */
      @PostMapping("/saveRole")
      public JsonResult saveRole(Role role){
            try {
                boolean isAdd = this.roleService.saveOrUpdateRole(role);
                if(isAdd){
                    return JsonResult.ok("新增角色成功!");
                }else{
                    return JsonResult.ok("修改角色成功!");
                }
            }catch (Exception e){
                return JsonResult.fail("保存角色失败!");
            }
      }

      /**
       * 得到角色信息
       * @param id 角色ID
       * @return com.liuhu.rainbow.system.vo.JsonResult
       * @author melo、lh
       * @createTime 2019-11-12 10:41:43
       */
      @GetMapping("/getRoleById")
      public JsonResult getRoleById(String id){
          QueryWrapper<Role> queryWrapper = new QueryWrapper<>();
           Role role = this.roleService.getBaseMapper().selectOne(queryWrapper.eq("ID", id));
           return JsonResult.ok().addData(role);
      }

      /**
       * 删除角色
       * @param id 角色ID
       * @return com.liuhu.rainbow.system.vo.JsonResult
       * @author melo、lh
       * @createTime 2019-11-12 14:26:56
       */
      @DeleteMapping("/deleteRole")
      public JsonResult deleteRoleById(String id){
          this.roleService.deleteRoleById(id);
          return JsonResult.ok("删除角色信息成功");
      }
}
