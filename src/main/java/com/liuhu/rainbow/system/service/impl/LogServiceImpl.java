package com.liuhu.rainbow.system.service.impl;

import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.liuhu.rainbow.annotation.RainbowLog;
import com.liuhu.rainbow.system.authentication.jwt.JWTUtil;
import com.liuhu.rainbow.system.entity.Log;
import com.liuhu.rainbow.system.entity.User;
import com.liuhu.rainbow.system.exception.RainbowException;
import com.liuhu.rainbow.system.mapper.LogMapper;
import com.liuhu.rainbow.system.service.ILogService;
import com.liuhu.rainbow.system.service.IUserService;
import com.liuhu.rainbow.system.util.CommonUtils;
import com.liuhu.rainbow.system.util.HttpContextUtil;
import com.liuhu.rainbow.system.util.IPUtil;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.LocalVariableTableParameterNameDiscoverer;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.Serializable;
import java.lang.reflect.Method;
import java.util.*;

/**
 * 日志业务层实现类
 * @author melo、lh
 * @createTime 2019-11-14 15:03:55
 */

@Service
public class LogServiceImpl extends ServiceImpl<LogMapper, Log> implements ILogService {

    @Autowired
    private IUserService userService;

    @Autowired
    ObjectMapper objectMapper;

    @Override
    public void saveLog(ProceedingJoinPoint point, RainbowLog rainbowlog) {

        Log log = new Log();
        MethodSignature signature = (MethodSignature) point.getSignature();
        //得到方法
        Method method = signature.getMethod();
        // 得到类名
        String className = signature.getDeclaringTypeName();
        // 得到方法名
        String methodName = method.getName();
        // 得到方法参数
        Object[] args = point.getArgs();
        // 请求的方法参数名称
        LocalVariableTableParameterNameDiscoverer u = new LocalVariableTableParameterNameDiscoverer();
        String[] paramNames = u.getParameterNames(method);
        if (args != null && paramNames != null) {
            StringBuilder params = new StringBuilder();
            try {
                params = handleParams(params, args, Arrays.asList(paramNames));
            } catch (JsonProcessingException e) {
                e.printStackTrace();
            }
            log.setParams(params.toString());
        }
        // 得到业务描述
        String description = rainbowlog.description();

        // 得到业务类型
        String operateType = rainbowlog.operateType();

        // 获取 request
        HttpServletRequest request = HttpContextUtil.getHttpServletRequest();
        // 设置 IP 地址
        String ip = IPUtil.getIpAddr(request);
        // token密匙
        String token = (String) SecurityUtils.getSubject().getPrincipal();
        // 用户名
        String username;
        if (StringUtils.isNotBlank(token)) {
            username = JWTUtil.getUsername(token);
            User user = this.userService.selectUserByUsername(username);
            log.setNickname(user.getNickname());
            log.setUsername(username);
        }
        log.setIp(ip);
        log.setId(CommonUtils.getUUID());
        log.setClassName(className);
        log.setMethodName(methodName);
        log.setActionDescription(description);
        log.setOperateType(operateType);
        log.setOperateTime(new Date());
        try {
            this.save(log);
        }catch (Exception e){
            e.printStackTrace();
            throw new RainbowException("记录日志失败!");
        }

    }

    @Override
    public IPage<Log> selectLogWithPage(Integer currentPage, Integer pageSize, Map<String, Object> searchParams) {
        IPage<Log> logPage = null;
        try {
            Page<Log> page = new Page<>(currentPage,pageSize);
            logPage = this.baseMapper.selectLogWithPage(page,searchParams);
        }catch (Exception e){
            e.printStackTrace();
            throw  new RainbowException("查询日志列表失败");
        }
        return logPage;
    }

    private StringBuilder handleParams(StringBuilder params, Object[] args, List paramNames) throws JsonProcessingException {
        for (int i = 0; i < args.length; i++) {
            if (args[i] instanceof Map) {
                Set set = ((Map) args[i]).keySet();
                List<Object> list = new ArrayList<>();
                List<Object> paramList = new ArrayList<>();
                for (Object key : set) {
                    list.add(((Map) args[i]).get(key));
                    paramList.add(key);
                }
                return handleParams(params, list.toArray(), paramList);
            } else {
                if (args[i] instanceof Serializable) {
                    Class<?> aClass = args[i].getClass();
                    try {
                        aClass.getDeclaredMethod("toString", new Class[]{null});
                        // 如果不抛出 NoSuchMethodException 异常则存在 toString 方法 ，安全的 writeValueAsString ，否则 走 Object的 toString方法
                        params.append(" ").append(paramNames.get(i)).append(": ").append(objectMapper.writeValueAsString(args[i]));
                    } catch (NoSuchMethodException e) {
                        params.append(" ").append(paramNames.get(i)).append(": ").append(objectMapper.writeValueAsString(args[i].toString()));
                    }
                } else if (args[i] instanceof MultipartFile) {
                    MultipartFile file = (MultipartFile) args[i];
                    params.append(" ").append(paramNames.get(i)).append(": ").append(file.getName());
                } else {
                    params.append(" ").append(paramNames.get(i)).append(": ").append(args[i]);
                }
            }
        }
        return params;
    }
}
