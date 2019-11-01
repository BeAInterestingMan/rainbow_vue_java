package com.liuhu.rainbow.system.util;


import com.liuhu.rainbow.system.entity.User;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.Set;
import java.util.UUID;
/**
 * 通用工具类
 * @author melo、lh
 * @createTime 2019-10-31 10:45:08
 */
public class CommonUtils {

    /**
     * 获取HttpServletRequest
     * @return javax.servlet.http.HttpServletRequest
     * @author melo、lh
     * @createTime 2019-10-31 10:44:25
     */
    public static HttpServletRequest getRequest() {
        return ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
    }


    /**
     * 获得全球唯一ID
     * @return java.lang.String
     * @author melo、lh
     * @createTime 2019-10-31 10:44:33
     */
	public static String getUUID(){
		UUID uuid= UUID.randomUUID();
		return uuid.toString().replaceAll("-", "");
	}



    /**
     * 将set集合对象转换成用逗号分隔的字符串
     * @param set
     * @return java.lang.String
     * @author melo、lh
     * @createTime 2019-10-31 10:44:51
     */
    public static String set2String(Set<String> set) {
        if (set != null && set.size() > 0) {
            StringBuilder sb = new StringBuilder();
            for (String s : set) {
                sb.append(s).append(",");
            }
            return sb.substring(0, sb.lastIndexOf(","));
        }
        return "";
    }



}
