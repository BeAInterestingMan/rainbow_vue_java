package com.liuhu.rainbow.system.controller;


import com.liuhu.rainbow.system.service.ILoginLogService;
import com.liuhu.rainbow.system.vo.JsonResult;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

/**
 * 登陆日志控制层
 * @author melo、lh
 * @createTime 2019-11-21 14:17:39
 */

@RestController
@RequestMapping("/loginLog")
public class LoginLogController {

    @Autowired
    private ILoginLogService loginLogService;

    /**
     * 访问日志图标统计
     * @return com.liuhu.rainbow.system.vo.JsonResult
     * @author melo、lh
     * @createTime 2019-11-21 15:23:55
     */
     @RequestMapping("/getVisitLogCount")
     public JsonResult getVisitLogCount(){
         String dayVisit = this.loginLogService.selectCurrentDayVisit();
         String weekVisit = this.loginLogService.selectCurrentWeekVisit();
         String monthVisit = this.loginLogService.selectCurrentMonthVisit();
         String yearVisit = this.loginLogService.selectCurrentYearVisit();
         String totalVisit = this.loginLogService.selectTotalVisit();
         List<String> visitCount = new ArrayList<>();
        if(StringUtils.isBlank(dayVisit)){
                dayVisit ="0";
        }
         if(StringUtils.isBlank(weekVisit)){
             weekVisit ="0";
         }
         if(StringUtils.isBlank(monthVisit)){
             monthVisit ="0";
         }
         if(StringUtils.isBlank(yearVisit)){
             yearVisit ="0";
         }
         if(StringUtils.isBlank(totalVisit)){
             totalVisit ="0";
         }
         visitCount.add(dayVisit);
         visitCount.add(weekVisit);
         visitCount.add(monthVisit);
         visitCount.add(yearVisit);
         visitCount.add(totalVisit);
         return JsonResult.ok().addData(visitCount);
     }
}
