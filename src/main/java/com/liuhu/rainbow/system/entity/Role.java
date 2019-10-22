package com.liuhu.rainbow.system.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import lombok.Data;

import java.time.LocalDate;
import java.io.Serializable;
import java.util.Date;

/**
 * 角色实体
 * @author melo、lh
 * @createTime 2019-10-21 13:21:32
 */

@TableName("sys_role")
@Data
public class Role extends Model<Role> {

    private static final long serialVersionUID = 1L;

    /**
     * 角色ID
     */
    private String id;

    /**
     * 角色名称
     */
    private String name;

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


}
