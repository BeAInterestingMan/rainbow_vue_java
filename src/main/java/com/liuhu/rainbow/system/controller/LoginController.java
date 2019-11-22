package com.liuhu.rainbow.system.controller;


import com.baomidou.mybatisplus.core.toolkit.StringPool;
import com.liuhu.rainbow.system.Constant.RainbowConstant;
import com.liuhu.rainbow.system.authentication.jwt.JWTToken;
import com.liuhu.rainbow.system.authentication.jwt.JWTUtil;
import com.liuhu.rainbow.system.entity.LoginLog;
import com.liuhu.rainbow.system.entity.User;
import com.liuhu.rainbow.system.exception.RainbowException;
import com.liuhu.rainbow.system.exception.RedisConnectException;
import com.liuhu.rainbow.system.properties.RainbowProperties;
import com.liuhu.rainbow.system.redis.service.RedisService;
import com.liuhu.rainbow.system.service.ILoginLogService;
import com.liuhu.rainbow.system.service.IUserService;
import com.liuhu.rainbow.system.util.DateUtil;
import com.liuhu.rainbow.system.util.IPUtil;
import com.liuhu.rainbow.system.util.MD5Utils;
import com.liuhu.rainbow.system.vo.JsonResult;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.time.LocalDateTime;
import java.util.Map;

/**
 * 登陆控制器
 * @author melo、lh
 * @createTime 2019-10-21 15:49:26
 */
@RestController
public class LoginController {

    @Autowired
    private IUserService userService;

    @Autowired
    private RedisService redisService;

    @Autowired
    private RainbowProperties properties;

    @Autowired
    private ILoginLogService loginLogService;

    /**
     * 登陆操作
     * @param user 用户实体
     * @param request
     * @return com.liuhu.rainbow.system.vo.JsonResult
     * @author melo、lh
     * @createTime 2019-11-14 16:26:01
     */
    @RequestMapping("/login")
    public JsonResult toLogin( User user,HttpServletRequest request) {

        if (StringUtils.isBlank(user.getUsername()) || StringUtils.isBlank(user.getPassword())) {
            return JsonResult.fail("用户名和密码不能为空!");
        }
        // 得到加密后的密码
        String passwordEncrypt = MD5Utils.encrypt(user.getUsername(), user.getPassword());
        // 数据库中的密码
        User currentUser = this.userService.selectUserByUsername(user.getUsername());
        if (currentUser == null) {
            return JsonResult.fail("用户名或者密码不正确！");
        }
        if (!passwordEncrypt.equals(currentUser.getPassword())) {
            return JsonResult.fail("用户名或者密码不正确!");
        }
        if (RainbowConstant.ACCOUNT_LOCK.equals(currentUser.getStatus())) {
            return JsonResult.fail("账号已被锁定,请联系管理员！");
        }
        // 加密签名
        String token = JWTUtil.sign(currentUser.getUsername(), passwordEncrypt);
        // 过期时间
        LocalDateTime expireTime = LocalDateTime.now().plusSeconds(properties.getJwtTimeOut());
        String expireTimeStr = DateUtil.formatFullTime(expireTime);
        JWTToken jwtToken = new JWTToken(token,expireTimeStr);
        Map<String, Object> userInfo = this.userService.getUserWithToken(jwtToken, currentUser);
        try {
            // 将签名放入redis缓存
            this.saveTokenToRedis(token, request);
        } catch (Exception e) {
            e.printStackTrace();
        }
        //保存登陆日志
        LoginLog loginLog = new LoginLog();
        loginLog.setUsername(user.getUsername());
        this.loginLogService.saveLoginLog(loginLog);
        return JsonResult.ok("登陆成功").addData(userInfo);


    }
    /**
     *  保存token到redis
     * @param token 密匙
     * @param request
     * @return void
     * @author melo、lh
     * @createTime 2019-10-22 10:59:18
     */
    private void saveTokenToRedis(String token, HttpServletRequest request) throws Exception {
        String ip = IPUtil.getIpAddr(request);
        // redis 中存储这个加密 token，key = 前缀 + 加密 token + .ip
        this.redisService.set(RainbowConstant.RAINBOW_TOKEN +token+ StringPool.DOT + ip,token,properties.getJwtTimeOut()*1000);
    }

    /**
     *  注销
     * @param servletRequest
     * @return com.liuhu.rainbow.system.vo.JsonResult
     * @author melo、lh
     * @createTime 2019-11-20 15:40:46
     */
    @GetMapping("/logout")
    public JsonResult logout(HttpServletRequest servletRequest){
        String ip = IPUtil.getIpAddr(servletRequest);
        //得到token
        String token = (String) SecurityUtils.getSubject().getPrincipal();
        String key = RainbowConstant.RAINBOW_TOKEN +token+ StringPool.DOT + ip;
        try {
            redisService.del(key.toLowerCase());
        } catch (RedisConnectException e) {
            e.printStackTrace();
            throw  new RainbowException("登出失败");
        }
        return JsonResult.ok();
   }
}