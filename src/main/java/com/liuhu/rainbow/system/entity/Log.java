package com.liuhu.rainbow.system.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.util.Date;

/**
 * 日志实体类
 * @author melo、lh
 * @createTime 2019-11-14 14:26:05
 */

@Data
@TableName("sys_log")
public class Log {
    /**日志ID */
    private String id;

    /**用户名 */
    private String username;

    /**用户昵称*/
    private String nickname;

    /**业务描述 */
    private String actionDescription;

    /**请求的类 */
    private String className;

    /**请求的方法 */
    private String methodName;

    /**请求方法的参数 */
    private String params;

    /**用户IP*/
    private String ip;

    /**操作时间 */
    private Date operateTime;

    /**操作类型 */
    private String operateType;
}
