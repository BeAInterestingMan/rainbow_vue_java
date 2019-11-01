package com.liuhu.rainbow.system.config;

import com.baomidou.mybatisplus.extension.plugins.PaginationInterceptor;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * MybatisPlus配置类
 * @author melo、lh
 * @createTime 2019-10-22 15:06:56
 */
@Configuration
@MapperScan("com.liuhu.rainbow.system.mapper")  // 如果启动类已经配置了 这里无需配置
public class MybatisPlusConfig {


     /**
      * 使用自定义的分页插件
      * @return com.baomidou.mybatisplus.extension.plugins.PaginationInterceptor
      * @author melo、lh
      * @createTime 2019-11-01 12:04:39
      */
     @Bean
     public PaginationInterceptor paginationInterceptor() {
         PaginationInterceptor page = new PaginationInterceptor();
         page.setDialectType("mysql");
         return page;
     }

}
