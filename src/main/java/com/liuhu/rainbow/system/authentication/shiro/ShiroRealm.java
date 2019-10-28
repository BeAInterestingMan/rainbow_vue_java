package com.liuhu.rainbow.system.authentication.shiro;

import com.liuhu.rainbow.system.Constant.RainbowConstant;
import com.liuhu.rainbow.system.authentication.jwt.JWTToken;
import com.liuhu.rainbow.system.authentication.jwt.JWTUtil;
import com.liuhu.rainbow.system.entity.Menu;
import com.liuhu.rainbow.system.entity.Role;
import com.liuhu.rainbow.system.entity.User;
import com.liuhu.rainbow.system.redis.service.RedisService;
import com.liuhu.rainbow.system.service.IMenuService;
import com.liuhu.rainbow.system.service.IRoleService;
import com.liuhu.rainbow.system.service.IUserService;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * 自定义realm 负责授权和认证功能
 * @author melo、lh
 * @createTime 2019-10-21 13:43:56
 */

public class ShiroRealm extends AuthorizingRealm {
    @Autowired
    private IUserService userService;

    @Autowired
    private IRoleService roleService;

    @Autowired
    private IMenuService menuService;

    @Autowired
    private RedisService redisService;


    @Override
    public boolean supports(AuthenticationToken token) {
        return token instanceof JWTToken;
    }
    /**
     * 授权方法
     * @param token  jwt密匙
     * @return org.apache.shiro.authz.AuthorizationInfo
     * @author melo、lh
     * @createTime 2019-10-21 13:44:40
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection token) {
        // 得到用户名
        String username = JWTUtil.getUsername(token.toString());
        // 授权器
        SimpleAuthorizationInfo simpleAuthorizationInfo = new SimpleAuthorizationInfo();
        try {
            // 1 得到用户所属角色集合
            List<Role> roleList =  this.roleService.selectRoleListByUsername(username);
            for (Role role: roleList) {
                simpleAuthorizationInfo.addRole(role.getName());
            }
            // 2 得到用户所属菜单集合
            List<Menu> menuList = this.menuService.selectMenuListByUsername(username);
            for (Menu menu: menuList) {
                simpleAuthorizationInfo.addStringPermission(menu.getPermission());
            }
            }catch (Exception e){
                e.printStackTrace();
            }
        return simpleAuthorizationInfo;
    }

    /**
     * 登陆认证方法
     * @param authenticationToken
     * @return org.apache.shiro.authc.AuthenticationInfo
     * @author melo、lh
     * @createTime 2019-10-21 13:44:45
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        // 这里的 token是从 JWTFilter 的 executeLogin 方法传递过来的
        String token = (String) authenticationToken.getCredentials();
        // 1- 从缓存中获得登录时存入的token
        String redisToken = null;
        try {
            // key  为 系统参数 + token
            String key = RainbowConstant.RAINBOW_TOKEN+token+"."+RainbowConstant.EXPIRE_TIME;
            redisToken = this.redisService.get(RainbowConstant.RAINBOW_TOKEN+token+"."+RainbowConstant.EXPIRE_TIME);
        }catch (Exception e){
             e.printStackTrace();
        }
        if(StringUtils.isBlank(redisToken)){
            throw new AuthenticationException("token已失效!");
        }
        // 通过token得到username
        String username = JWTUtil.getUsername(token);
        if(StringUtils.isBlank(username)){
            throw new AuthenticationException("token校验不通过!");
        }
        // 得到当前用户
        User user = this.userService.selectUserByUsername(username);
        if(null == user){
            throw new AuthenticationException("用户名或密码错误!");
        }
        if(RainbowConstant.ACCOUNT_LOCK.equals(user.getStatus())){
            throw new AuthenticationException("该用户账号被锁定!");
        }

        if(!JWTUtil.verify(token,username,user.getPassword())){
            throw new AuthenticationException("token校验不通过!");
        }
        return new SimpleAuthenticationInfo(token, token, "shiro_realm");
    }
}
