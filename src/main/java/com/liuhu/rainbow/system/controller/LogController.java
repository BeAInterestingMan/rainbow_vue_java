package com.liuhu.rainbow.system.controller;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.liuhu.rainbow.system.Constant.RainbowConstant;
import com.liuhu.rainbow.system.entity.Log;
import com.liuhu.rainbow.system.service.ILogService;
import com.liuhu.rainbow.system.vo.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

/**
 * 日志控制层
 * @author melo、lh
 * @createTime 2019-11-14 17:21:50
 */

@RestController
@RequestMapping("/log")
public class LogController {
     @Autowired
     private ILogService logService;

     @GetMapping("/selectLogWithPage")
     public JsonResult selectLogWithPage(@RequestParam(defaultValue = "1") Integer currentPage,
                                         @RequestParam(defaultValue = "10") Integer pageSize,
                                         @RequestParam Map<String,Object > searchParams){
         IPage<Log> logIPage = this.logService.selectLogWithPage(currentPage, pageSize, searchParams);
         return JsonResult.ok().addData(logIPage.getRecords()).add(RainbowConstant.TOTAL_COUNT,logIPage.getTotal());
     }


}
