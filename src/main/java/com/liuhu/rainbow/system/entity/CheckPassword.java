package com.liuhu.rainbow.system.entity;

import lombok.Data;

/**
 * 校验密码实体类
 * @author melo、lh
 * @createTime 2019-10-31 16:23:42
 */
@Data
public class CheckPassword {
    /**旧密码*/
    private String oldPassword;
    /**新密码*/
    private String newPassWord;
    /**校验密码*/
    private String checkPassPassword;
    /**用户Id*/
    private String id;
}
