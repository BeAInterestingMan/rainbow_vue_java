package com.liuhu.rainbow.system.exception;

import com.liuhu.rainbow.system.vo.JsonResult;
import org.apache.shiro.authz.AuthorizationException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;
/**
 * 全局异常处理
 * @author melo、lh
 * @createTime 2019-10-22 11:09:25
 */
@RestControllerAdvice
public class GlobalExceptionHandler {

    /**
     * 自定义异常处理
     * @param e
     * @return com.liuhu.rainbow.system.vo.JsonResult
     * @author melo、lh
     * @createTime 2019-10-22 11:12:22
     */
    @ExceptionHandler(RainbowException.class)
    public JsonResult handlerRainbowException(RainbowException e){
        return JsonResult.fail(e.getMessage());
    }

    /**
     * 权限异常处理
     * @param e
     * @return com.liuhu.rainbow.system.vo.JsonResult
     * @author melo、lh
     * @createTime 2019-10-22 11:12:03
     */
    @ExceptionHandler(AuthorizationException.class)
    public JsonResult handlerAuthorizationException(AuthorizationException e){
        return JsonResult.fail("权限不足!");
    }

    /**
     * 异常处理
     * @param e
     * @return com.liuhu.rainbow.system.vo.JsonResult
     * @author melo、lh
     * @createTime 2019-10-22 11:12:38
     */
    @ExceptionHandler(Exception.class)
    public JsonResult handlerException(Exception e){
        e.printStackTrace();
        return JsonResult.fail(e.getMessage());
    }

}
