package com.liuhu.rainbow.system.aop;


import com.liuhu.rainbow.system.annotation.RainbowLog;
import com.liuhu.rainbow.system.service.ILogService;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * 操作日志记录 Aop
 * @author melo、lh
 * @createTime 2019-11-14 14:23:02
 */
@Aspect
@Component
public class LogAop {

    @Autowired
    private ILogService logService;

    /**
     * 定义切点@Rainbowlog
     * @return void
     * @author melo、lh
     * @createTime 2019-11-14 14:36:41
     */
    @Pointcut("@annotation(com.liuhu.rainbow.system.annotation.RainbowLog)")
    public void pointCut(){

    }

    /**
     * 环绕通知
     * @param point 切点
     * @return java.lang.Object
     * @author melo、lh
     * @createTime 2019-11-14 14:38:10
     */
    @Around("pointCut() && @annotation(rainbowlog)")
    public Object around(ProceedingJoinPoint point, RainbowLog rainbowlog){
        Object result = null;
        // 执行方法
        try {
            result = point.proceed();
        } catch (Throwable throwable) {
            throwable.printStackTrace();
        }
        this.logService.saveLog(point,rainbowlog);
        return result;
    }

}
