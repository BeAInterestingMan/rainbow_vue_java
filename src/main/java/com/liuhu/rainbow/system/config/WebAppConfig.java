package com.liuhu.rainbow.system.config;

import com.liuhu.rainbow.system.util.StringToDateConverter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.convert.support.GenericConversionService;
import org.springframework.web.bind.support.ConfigurableWebBindingInitializer;
import org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter;
 
import javax.annotation.PostConstruct;
 
@Configuration
public class WebAppConfig {
	@Autowired
	private RequestMappingHandlerAdapter handlerAdapter;
 
 
	/**
	 * 此方法解决前台提交的日期参数绑定不正确问题,将自己实现的StringToDateConverter交给spring,让其知道如何进行处理
	 */
	@PostConstruct //@PostContruct是spring框架的注解，在方法上加该注解会在项目启动的时候执行该方法，也可以理解为在spring容器初始化的时候执行该方法。
	public void initEditableValidation() {
		ConfigurableWebBindingInitializer initializer = (ConfigurableWebBindingInitializer) handlerAdapter.getWebBindingInitializer();
		if (initializer.getConversionService() != null) {
			GenericConversionService genericConversionService = (GenericConversionService) initializer.getConversionService();
			genericConversionService.addConverter(new StringToDateConverter());
		}
	}
}
