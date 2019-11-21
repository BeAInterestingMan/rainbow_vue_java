package com.liuhu.rainbow.system.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import lombok.Data;

import java.time.LocalDateTime;
import java.io.Serializable;
import java.util.Date;

/**
 * 登陆日志实体
 * @author melo、lh
 * @createTime 2019-11-21 14:18:55
 */
@Data
@TableName("sys_login_log")
public class LoginLog extends Model<LoginLog> {

    private static final long serialVersionUID = 1L;

    /**
     * 唯一主键
     */
    private String id;

    /**
     * 用户名
     */
    private String username;

    /**
     * 登陆时间
     */
    private Date loginTime;

    /**
     * 登陆地址
     */
    private String location;

    /**
     * 登陆ip
     */
    private String ip;

}
