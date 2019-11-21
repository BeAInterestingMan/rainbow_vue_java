package com.liuhu.rainbow.system.mapper;

import com.liuhu.rainbow.system.entity.LoginLog;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.springframework.stereotype.Repository;

/**
 * 登陆日志持久层接口
 * @author melo、lh
 * @createTime 2019-11-21 14:51:06
 */
@Repository
public interface LoginLogMapper extends BaseMapper<LoginLog> {
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
