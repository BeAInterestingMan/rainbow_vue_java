package com.liuhu.rainbow.system.config;

import com.baomidou.mybatisplus.extension.plugins.PaginationInterceptor;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * MybatisPlus ������
 * @author melo��lh
 * @createTime 2019-10-22 15:06:56
 */
@Configuration
@MapperScan("com.liuhu.rainbow.system.mapper")  // �������MapperScan ������Ͳ�Ҫд��  ��֮��Ȼ
public class MybatisPlusConfig {

     /**
      * ����Mybatis�Լ��ķ�ҳ���
      * @return com.baomidou.mybatisplus.extension.plugins.PaginationInterceptor
      * @author melo��lh
      * @createTime 2019-10-22 15:07:28
      */
    @Bean
    public PaginationInterceptor paginationInterceptor() {
        PaginationInterceptor paginationInterceptor = new PaginationInterceptor();
        return paginationInterceptor;
    }

}
