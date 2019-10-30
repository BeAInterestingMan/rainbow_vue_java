package com.liuhu.rainbow.system.authentication.shiro;

import com.liuhu.rainbow.system.authentication.jwt.JWTUtil;
import com.liuhu.rainbow.system.entity.User;
import com.liuhu.rainbow.system.service.IUserService;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * shiro工具类
 * @author melo、lh
 * @createTime 2019-10-30 16:08:27
 */

public class ShiroUtils {

    @Autowired
    private IUserService userService;
    /**
     * 得到当前用户名
     * @return java.lang.String
     * @author melo、lh
     * @createTime 2019-10-30 16:40:20
     */
    public static String getUsername(){
        //得到token
        String token = (String) SecurityUtils.getSubject().getPrincipal();
        // 得到用户名
        return JWTUtil.getUsername(token.toString());
    }
}
