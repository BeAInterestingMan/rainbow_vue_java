package com.liuhu.rainbow.system.service;

import com.liuhu.rainbow.system.entity.LoginLog;
import com.baomidou.mybatisplus.extension.service.IService;

import javax.servlet.http.HttpServletRequest;

/**
 * 登陆日志业务层接口
 * @author melo、lh
 * @createTime 2019-11-21 14:17:59
 */

public interface ILoginLogService extends IService<LoginLog> {

    /**
     * 保存登陆日志
     * @param loginLog 日志实体
     * @return void
     * @author melo、lh
     * @createTime 2019-11-21 14:44:18
     */
    void saveLoginLog(LoginLog loginLog);
    /**
     * 查询系统今天的访问记录
     * @return java.lang.String
     * @author melo、lh
     * @createTime 2019-11-21 15:04:16
     */
    String selectCurrentDayVisit();

    /**
     * 查询系统本周的访问记录
     * @return java.lang.String
     * @author melo、lh
     * @createTime 2019-11-21 15:04:16
     */
    String selectCurrentWeekVisit();


    /**
     * 查询系统本月的访问记录
     * @return java.lang.String
     * @author melo、lh
     * @createTime 2019-11-21 15:04:16
     */
    String selectCurrentMonthVisit();

    /**
     * 查询系统本年的访问记录
     * @return java.lang.String
     * @author melo、lh
     * @createTime 2019-11-21 15:04:16
     */
    String selectCurrentYearVisit();


    /**
     * 查询系统全部的访问记录
     * @return java.lang.String
     * @author melo、lh
     * @createTime 2019-11-21 15:04:16
     */
    String selectTotalVisit();

}
