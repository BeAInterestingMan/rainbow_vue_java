package com.liuhu.rainbow.system.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.liuhu.rainbow.system.Constant.RainbowConstant;
import com.liuhu.rainbow.system.annotation.RainbowLog;
import com.liuhu.rainbow.system.entity.Menu;
import com.liuhu.rainbow.system.mapper.MenuMapper;
import com.liuhu.rainbow.system.service.ILoginLogService;
import com.liuhu.rainbow.system.service.IMenuService;
import com.liuhu.rainbow.system.service.IRoleService;
import com.liuhu.rainbow.system.vo.JsonResult;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
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
    private IMenuService menuService;

    @Autowired
    private IRoleService roleService;


    /**
     * 后台组装vueRouter动态菜单数据
     * @param username 用户名
     * @return com.liuhu.rainbow.system.vo.JsonResult
     * @author melo、lh
     * @createTime 2019-10-28 14:04:36
     */
    @RequestMapping("/getUserMenu/{username}")
    public JsonResult getMenuList(@PathVariable String username, HttpServletRequest request){
        //得到树形菜单数据
        List<Menu> menuList = this.menuService.getUserMenu(username);
        return JsonResult.ok().addData(menuList);
    }

    /**
     * 返回角色绑定资源的数据 （菜单树数据 角色所属菜单的ID）
     * @param roleId 角色ID
     * @return com.liuhu.rainbow.system.vo.JsonResult
     * @author melo、lh
     * @createTime 2019-11-08 15:47:13
     */
    @RequestMapping("menuTreeForRole")
    public JsonResult menuTreeForRole(String roleId){
        // 得到所有菜单数据 树结构封装
        List<Menu> allMenusWithTree = this.menuService.getAllMenusWithTree();
        // 得到角色所拥有的菜单ID （用于tree默认选中）
        List<String> roleMenusId = this.menuService.getRoleMenus(roleId);
        return JsonResult.ok().add("treeData",allMenusWithTree).add("menuIds",roleMenusId);
    }

    /**
     * 更新角色所属菜单
     * @param menuIds 角色所属菜单ID集合
     * @param roleId 角色ID
     * @return com.liuhu.rainbow.system.vo.JsonResult
     * @author melo、lh
     * @createTime 2019-11-08 16:19:11
     */
    @RainbowLog(description = "更新角色",operateType = RainbowConstant.OPERATE_TYPE_UPDATE)
    @PostMapping("/updateRoleMenu")
    public JsonResult updateRoleMenu(String[] menuIds,String roleId){
        try {
            this.roleService.updateRoleMenu(menuIds,roleId);
            return JsonResult.ok("更新角色菜单成功!");
        }catch (Exception ex){
            ex.printStackTrace();
            return JsonResult.ok("更新角色菜单失败!");
        }
    }

    /**
     * 菜单管理左侧树数据
     * @return com.liuhu.rainbow.system.vo.JsonResult
     * @author melo、lh
     * @createTime 2019-11-12 14:25:32
     */
    @GetMapping("/getAllMenus")
    public JsonResult getAllMenus(){
        List<Menu> menuTree = this.menuService.getAllMenusWithTree();
        return JsonResult.ok().addData(menuTree);
    }

   /**
    * 菜单管理分页
    * @param currentPage 当前页
    * @param pageSize 分页数量
    * @param name 菜单名称
    * @param parentId 上级菜单ID
    * @return com.liuhu.rainbow.system.vo.JsonResult
    * @author melo、lh
    * @createTime 2019-11-13 09:35:45
    */
   @RainbowLog(description = "菜单列表",operateType = RainbowConstant.OPERATE_TYPE_VIEW)
    @GetMapping("/getAllMenusTable")
    public JsonResult getAllMenusTable(
            @RequestParam(defaultValue = "1") Integer currentPage,
            @RequestParam(defaultValue = "10") Integer pageSize,
            @RequestParam String name  ,
            @RequestParam String parentId
    ){
        IPage<Menu> menuIPage = this.menuService.getAllMenusTable(currentPage, pageSize, name, parentId);
        return JsonResult.ok().addData(menuIPage.getRecords()).add(RainbowConstant.TOTAL_COUNT,menuIPage.getTotal());
    }

    /**
     * 保存菜单资源
     * @param menu 资源实体
     * @return com.liuhu.rainbow.system.vo.JsonResult
     * @author melo、lh
     * @createTime 2019-11-13 09:45:33
     */
    @RainbowLog(description = "保存菜单",operateType = RainbowConstant.OPERATE_TYPE_ADD)
    @PostMapping("/saveMenu")
    public JsonResult saveOrUpdateMenu(Menu menu){
        try {
            boolean isAdd = this.menuService.saveOrUpdateMenu(menu);
            if(isAdd){
                return JsonResult.ok("新增资源成功!");
            }else{
                return JsonResult.ok("修改资源成功!");
            }
        }catch (Exception e){
            e.printStackTrace();
            return JsonResult.fail("保存资源失败!");
        }

    }

    /**
     * 删除菜单
     * @param id 菜单ID
     * @return com.liuhu.rainbow.system.vo.JsonResult
     * @author melo、lh
     * @createTime 2019-11-13 13:58:02
     */
    @RainbowLog(description = "删除菜单",operateType = RainbowConstant.OPERATE_TYPE_DELETE)
    @DeleteMapping("/deleteMenus")
    public JsonResult deleteMenus(String id){
        this.menuService.deleteMenus(id);
        return JsonResult.ok("删除菜单信息成功");
    }


    /**
     * 通过菜单ID得到菜单信息
     * @param id 菜单ID
     * @return com.liuhu.rainbow.system.vo.JsonResult
     * @author melo、lh
     * @createTime 2019-11-13 14:30:31
     */
    @GetMapping("/getMenuById")
    public JsonResult getMenuById(String id){
        QueryWrapper<Menu> queryWrapper = new QueryWrapper<>();
        Menu menu = this.menuService.getBaseMapper().selectOne(queryWrapper.eq("ID", id).eq("STATUS", "0"));
        if(null != menu){
            // 如果父菜单ID为空
            if(StringUtils.isBlank(menu.getParentId())){
                menu.setParentName("根菜单");
                menu.setParentId("0");
            }else{
                QueryWrapper<Menu> menuQueryWrapper = new QueryWrapper<>();
                Menu parentMenu = this.menuService.getBaseMapper().selectOne(menuQueryWrapper.eq("ID", menu.getParentId()).eq("STATUS", "0"));
                if(null != parentMenu){
                    menu.setParentName(parentMenu.getName());
                }else{
                    menu.setParentName("根菜单");
                    menu.setParentId("0");
                }
            }
            return JsonResult.ok().addData(menu);
        }else{
            return JsonResult.fail("获取菜单信息失败");
        }

    }
}
