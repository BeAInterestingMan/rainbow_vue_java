package com.liuhu.rainbow.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
/**
 * 自定义日志注解
 * @author melo、lh
 * @createTime 2019-11-14 14:33:31
 */

@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
public @interface RainbowLog {
    /**业务操作描述*/
    String description() default "";

    /**业务操作类型*/
    String operateType() default "";
}
