package com.liuhu.rainbow.system.config;

import com.baomidou.mybatisplus.extension.plugins.PaginationInterceptor;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * MybatisPlus 配置类
 * @author melo、lh
 * @createTime 2019-10-22 15:06:56
 */
@Configuration
@MapperScan("com.liuhu.rainbow.system.mapper")  // 这里添加MapperScan 启动类就不要写了  反之亦然
public class MybatisPlusConfig {

     /**
      * 配置Mybatis自己的分页插件
      * @return com.baomidou.mybatisplus.extension.plugins.PaginationInterceptor
      * @author melo、lh
      * @createTime 2019-10-22 15:07:28
      */
    @Bean
    public PaginationInterceptor paginationInterceptor() {
        PaginationInterceptor paginationInterceptor = new PaginationInterceptor();
        return paginationInterceptor;
    }

}
