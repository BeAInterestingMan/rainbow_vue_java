package com.liuhu.rainbow.system.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.liuhu.rainbow.system.annotation.RainbowLog;
import com.liuhu.rainbow.system.entity.Log;
import org.aspectj.lang.ProceedingJoinPoint;
import org.springframework.scheduling.annotation.Async;

import java.util.Map;

/**
 * 日志业务层接口
 * @author melo、lh
 * @createTime 2019-11-14 15:03:51
 */

public interface ILogService extends IService<Log> {

    /**
     * 记录日志
     * @param point
     * @param rainbowlog
     * @return void
     * @author melo、lh
     * @createTime 2019-11-14 15:05:02
     */
    @Async
    void saveLog(ProceedingJoinPoint point, RainbowLog rainbowlog);

    IPage<Log> selectLogWithPage(Integer currentPage, Integer pageSize,Map<String, Object> searchParams);
}
