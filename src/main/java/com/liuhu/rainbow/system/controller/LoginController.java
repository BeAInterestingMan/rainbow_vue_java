package com.liuhu.rainbow.system.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.liuhu.rainbow.system.Constant.RainbowConstant;
import com.liuhu.rainbow.system.authentication.jwt.JWTToken;
import com.liuhu.rainbow.system.authentication.jwt.JWTUtil;
import com.liuhu.rainbow.system.config.PageRequest;
import com.liuhu.rainbow.system.entity.User;
import com.liuhu.rainbow.system.mapper.UserMapper;
import com.liuhu.rainbow.system.redis.service.RedisService;
import com.liuhu.rainbow.system.service.IUserService;
import com.liuhu.rainbow.system.util.MD5Utils;
import com.liuhu.rainbow.system.vo.JsonResult;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
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
    private UserMapper userMapper;

    @RequestMapping("/login")
    public JsonResult toLogin( User user,String username,String password,HttpServletRequest request) {

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
        JWTToken jwtToken = new JWTToken(token);
        Map<String, Object> userInfo = this.userService.getUserWithToken(jwtToken, currentUser);
        try {
            // 将签名放入redis缓存
            this.saveTokenToRedis(currentUser, token, request);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return JsonResult.ok("登陆成功").addData(userInfo);


    }
    /**
     *  保存token到redis
     * @param currentUser 当前用户
     * @param token 密匙
     * @param request
     * @return void
     * @author melo、lh
     * @createTime 2019-10-22 10:59:18
     */
    private void saveTokenToRedis(User currentUser, String token, HttpServletRequest request) throws Exception {
        // redis 中存储这个加密 token，key = 前缀 + token + 过期时间  ;
        this.redisService.set(RainbowConstant.RAINBOW_TOKEN+token+"."+RainbowConstant.EXPIRE_TIME , token,RainbowConstant.EXPIRE_TIME);
    }

    @RequestMapping("/student")
    public JsonResult getStudent(){
        return JsonResult.ok("学生管理!");
    }

    @RequestMapping("/st")
    @RequiresPermissions("system:apexxaxa111")
    public JsonResult getStudentAa(){
        return JsonResult.ok("学生1111管理!");
    }


    @RequestMapping("/list")
    public Object getPage(PageRequest pageRequest){
        IPage<User> page = new Page<>(pageRequest.getPageNum(), pageRequest.getPageSize());
        QueryWrapper<User> wrapper = new QueryWrapper<>();
        wrapper.orderByAsc("ID");
      return   this.userMapper.selectPage(page,wrapper);
    }
}