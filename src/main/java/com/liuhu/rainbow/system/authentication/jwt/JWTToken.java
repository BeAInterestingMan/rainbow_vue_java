package com.liuhu.rainbow.system.authentication.jwt;

import lombok.Data;
import org.apache.shiro.authc.AuthenticationToken;

/**
 * shiro用户名载体 实现shiro的接口
 * @author melo、lh
 * @createTime 2019-10-21 13:31:11
 */
@Data
public class JWTToken implements AuthenticationToken {
    /** token密匙*/
    private String token;
    /** 过期时间*/
    private String exipreAt;

    public JWTToken(String token, String exipreAt) {
        this.token = token;
        this.exipreAt = exipreAt;
    }

    public JWTToken(String token) {
        this.token = token;
    }
    @Override
    public Object getPrincipal() {
        return token;
    }

    @Override
    public Object getCredentials() {
        return token;
    }
}
