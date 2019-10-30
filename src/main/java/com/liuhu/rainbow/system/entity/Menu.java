package com.liuhu.rainbow.system.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import lombok.Data;

import java.time.LocalDate;
import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * 菜单实体
 * @author melo、lh
 * @createTime 2019-10-21 13:20:33
 */

@TableName("sys_menu")
@Data
public class Menu extends Model<Menu> {

    private static final long serialVersionUID = 1L;

    /**
     * 菜单/按钮ID
     */
    private String id;

    /**
     * 上级菜单ID
     */
    private String parentId;

    /**
     * 菜单/按钮名称
     */
    private String menuName;

    /**
     * 菜单URL
     */
    private String url;

    /**
     * 权限标识
     */
    private String permission;

    /**
     * 图标
     */
    private String icon;

    /**
     * 类型 0菜单 1按钮
     */
    private String type;

    /**
     * 排序
     */
    private Long sort;

    @TableField(exist = false)
    private String path;



    /**
     * 状态：0-正常，1-不可用
     */
    private String status;

    /**
     * 创建人ID
     */
    private String creator;
    /**
     * 创建人
     */
    private String creatorName;
    /**
     * 创建时间
     */
    private Date createTime;
    /**
     * 修改人ID
     */
    private String updator;
    /**
     * 修改人
     */
    private String updatorName;
    /**
     * 修改时间
     */
    private Date updateTime;

    /**
     * 备注
     */
    private String remark;

   /** vue组件*/
    private String component;

    /** 子菜单*/
    @TableField(exist = false)
    private List<Menu> children;

    /** vue组件名称*/
    private String name;

    /** vue菜单图标*/
    private String iconCls;

}
