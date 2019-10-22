package com.liuhu.rainbow.system.authentication.shiro;

import com.liuhu.rainbow.system.authentication.jwt.JWTFilter;
import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.spring.security.interceptor.AuthorizationAttributeSourceAdvisor;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.servlet.Filter;
import java.util.LinkedHashMap;

/**
 * shiro配置类
 * @author melo、lh
 * @createTime 2019-10-21 13:46:49
 */

@Configuration
public class ShiroConfig {

    /**
     * 配置过滤连  shiro请求过滤处理
     * @return org.apache.shiro.spring.web.ShiroFilterFactoryBean
     * @author melo、lh
     * @createTime 2019-10-21 14:38:08
     */
    @Bean
    public ShiroFilterFactoryBean shiroFilterFactoryBean(SecurityManager securityManager){
        ShiroFilterFactoryBean shiroFilterFactoryBean = new ShiroFilterFactoryBean();
        // 设置 securityManager
        shiroFilterFactoryBean.setSecurityManager(securityManager);
        // 配置自定义过滤器链JWTFilter
        LinkedHashMap<String, Filter> filters = new LinkedHashMap<>();
        filters.put("jwt", new JWTFilter());
        shiroFilterFactoryBean.setFilters(filters);
        LinkedHashMap<String, String> filterChainDefinitionMap = new LinkedHashMap<>();
        // 所有请求都要经过 jwt过滤器
        filterChainDefinitionMap.put("/**", "jwt");
        shiroFilterFactoryBean.setFilterChainDefinitionMap(filterChainDefinitionMap);
        return shiroFilterFactoryBean;
    }
    
    /**
     * shiro安全管理器
     * @return org.apache.shiro.mgt.SecurityManager
     * @author melo、lh
     * @createTime 2019-10-21 14:37:40
     */
    @Bean
    public SecurityManager securityManager(){
        DefaultWebSecurityManager securityManager = new DefaultWebSecurityManager();
        // 配置 SecurityManager，并注入 shiroRealm
        securityManager.setRealm(shiroRealm());
        return securityManager;
    }
    /**
     * 自定义realm
     * @return com.liuhu.rainbow.system.authentication.shiro.ShiroRealm
     * @author melo、lh
     * @createTime 2019-10-21 14:37:27
     */
    @Bean
    public ShiroRealm shiroRealm(){
        // 配置 Realm
        return new ShiroRealm();
    }

    /**
     * 开启shiro注解
     * @param securityManager
     * @return org.apache.shiro.spring.security.interceptor.AuthorizationAttributeSourceAdvisor
     * @author melo、lh
     * @createTime 2019-10-21 14:37:03
     */
    @Bean
    public AuthorizationAttributeSourceAdvisor authorizationAttributeSourceAdvisor(SecurityManager securityManager) {
        AuthorizationAttributeSourceAdvisor authorizationAttributeSourceAdvisor = new AuthorizationAttributeSourceAdvisor();
        authorizationAttributeSourceAdvisor.setSecurityManager(securityManager);
        return authorizationAttributeSourceAdvisor;
    }
}
