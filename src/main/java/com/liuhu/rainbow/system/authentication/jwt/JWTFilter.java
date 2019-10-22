package com.liuhu.rainbow.system.authentication.jwt;

import com.baomidou.mybatisplus.core.toolkit.StringPool;
import com.liuhu.rainbow.system.properties.RainbowProperties;
import com.liuhu.rainbow.system.util.SpringContextUtil;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.web.filter.authc.BasicHttpAuthenticationFilter;
import org.apache.shiro.web.util.WebUtils;
import org.springframework.http.HttpStatus;
import org.springframework.util.AntPathMatcher;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * 利用JWT实现自定义shiro的过滤器 
 * @author melo、lh
 * @createTime 2019-10-21 13:49:05
 */
@Slf4j
public class JWTFilter extends BasicHttpAuthenticationFilter {

    /**请求头授权标示*/
    private final static String AUTHORIZATION ="Authorization";

    private AntPathMatcher pathMatcher = new AntPathMatcher();
    /**
     *  判断用户是否想要登录 （请求头是否携带token）
     * @param request
     * @param response
     * @return boolean
     * @author melo、lh
     * @createTime 2019-10-21 13:55:57
     */
    @Override
    protected boolean isLoginAttempt(ServletRequest request, ServletResponse response) {
        HttpServletRequest httpServletRequest = (HttpServletRequest) request;
        String authorization = httpServletRequest.getHeader(AUTHORIZATION);
        return StringUtils.isNotBlank(authorization);
    }
    /**
     * 是否允许访问 false 请求被拦截  (如果在这里返回了false，请求会被直接拦截，用户看不到任何东西
     * 所以我们在这里返回true，Controller中可以通过 subject.isAuthenticated() 来判断用户是否登入)
     * @param request
     * @param response
     * @param mappedValue
     * @return boolean
     * @author melo、lh
     * @createTime 2019-10-21 14:05:20
     */
    @Override
    protected boolean isAccessAllowed(ServletRequest request, ServletResponse response, Object mappedValue) {
        HttpServletRequest httpServletRequest = (HttpServletRequest)request;
        // 得到请求的urI
        String requestURI = httpServletRequest.getRequestURI();
        // 加载配置文件
        RainbowProperties rainbowProperties = SpringContextUtil.getBean(RainbowProperties.class);
        // 切割shiro免认证的url
        String[] anonUrl = StringUtils.splitByWholeSeparatorPreserveAllTokens(rainbowProperties.getAnonUrl(), StringPool.COMMA);
        // 如果请求的是无需认证的URL 直接放行  类似 /login,/logout
        for (String url:anonUrl) {
             if(pathMatcher.match(url,requestURI)){
                 return true;
             }
        }
        // 如果不是无需认证的 请求 则判断是否想要访问
        if(isLoginAttempt(request,response)){
            // 进行登陆认证
            try {
                return executeLogin(request,response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    /**
     * 进行登陆认证处理
     * @param request
     * @param response
     * @return boolean
     * @author melo、lh
     * @createTime 2019-10-21 14:24:43
     */
    @Override
    protected boolean executeLogin(ServletRequest request, ServletResponse response) {
        HttpServletRequest httpServletRequest = (HttpServletRequest) request;
        //得到授权的token
        String token = httpServletRequest.getHeader(AUTHORIZATION);
        JWTToken jwtToken = new JWTToken(token);
        // 提交给realm进行 认证操作，如果错误他会抛出异常并被捕获
        getSubject(request, response).login(jwtToken);
        // 如果没有抛出异常则代表登入成功，返回true
        return true;
    }

    /**
     * 重写该方法避免循环调用doGetAuthenticationInfo方法
     * @param request
     * @param response
     * @return boolean
     * @author melo、lh
     * @createTime 2019-10-21 14:26:32
     */
    @Override
    protected boolean onAccessDenied(ServletRequest request, ServletResponse response) throws Exception {
        this.sendChallenge(request, response);
        return false;
    }

    /**
     * 对于跨域提供支持
     * @param request
     * @param response
     * @return boolean
     * @author melo、lh
     * @createTime 2019-10-21 14:28:44
     */
    @Override
    protected boolean preHandle(ServletRequest request, ServletResponse response) throws Exception {
        HttpServletRequest httpServletRequest = (HttpServletRequest) request;
        HttpServletResponse httpServletResponse = (HttpServletResponse) response;
        httpServletResponse.setHeader("Access-control-Allow-Origin", httpServletRequest.getHeader("Origin"));
        httpServletResponse.setHeader("Access-Control-Allow-Methods", "GET,POST,OPTIONS,PUT,DELETE");
        httpServletResponse.setHeader("Access-Control-Allow-Headers", httpServletRequest.getHeader("Access-Control-Request-Headers"));
        // 跨域时会首先发送一个option请求，这里我们给option请求直接返回正常状态
        if (httpServletRequest.getMethod().equals(RequestMethod.OPTIONS.name())) {
            httpServletResponse.setStatus(HttpStatus.OK.value());
            return false;
        }
        return super.preHandle(request, response);
    }

    /**
     *  失败响应(return false 进入)
     * @param request
     * @param response
     * @return boolean
     * @author melo、lh
     * @createTime 2019-10-21 14:33:45
     */
    @Override
    protected boolean sendChallenge(ServletRequest request, ServletResponse response) {
        HttpServletResponse httpResponse = WebUtils.toHttp(response);
        httpResponse.setStatus(HttpStatus.UNAUTHORIZED.value());
        httpResponse.setCharacterEncoding("utf-8");
        httpResponse.setContentType("application/json; charset=utf-8");
        final String message = "未认证，请在系统进行认证";
        try (PrintWriter out = httpResponse.getWriter()) {
            String responseJson = "{\"message\":\"" + message + "\"}";
            out.print(responseJson);
        } catch (IOException e) {

        }
        return false;
    }
}
