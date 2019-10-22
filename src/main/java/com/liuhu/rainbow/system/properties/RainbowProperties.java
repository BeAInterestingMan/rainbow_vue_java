package com.liuhu.rainbow.system.properties;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;

/**
 * 系统属性
 * @author melo、lh
 * @createTime 2019-10-21 14:09:31
 */
@Data
@Component
@Configuration
@ConfigurationProperties(prefix = "rainbow.shiro")
public class RainbowProperties {
    /** 免认证URL*/
    private String anonUrl;
}
