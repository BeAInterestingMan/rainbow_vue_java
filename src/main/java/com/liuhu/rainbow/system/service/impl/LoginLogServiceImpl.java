package com.liuhu.rainbow.system.service.impl;

import com.liuhu.rainbow.system.entity.LoginLog;
import com.liuhu.rainbow.system.mapper.LoginLogMapper;
import com.liuhu.rainbow.system.service.ILoginLogService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.liuhu.rainbow.system.util.AddressUtil;
import com.liuhu.rainbow.system.util.CommonUtils;
import com.liuhu.rainbow.system.util.HttpContextUtil;
import com.liuhu.rainbow.system.util.IPUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;

/**
 * 登陆日志业务层实现类
 * @author melo、lh
 * @createTime 2019-11-21 14:18:16
 */

@Service
public class LoginLogServiceImpl extends ServiceImpl<LoginLogMapper, LoginLog> implements ILoginLogService {

    @Autowired
    private LoginLogMapper loginLogMapper;

    @Override
    public void saveLoginLog(LoginLog loginLog) {
        loginLog.setId(CommonUtils.getUUID());
        loginLog.setLoginTime(new Date());
        HttpServletRequest request = HttpContextUtil.getHttpServletRequest();
        String ip = IPUtil.getIpAddr(request);
        loginLog.setIp(ip);
        loginLog.setLocation(AddressUtil.getCityInfo(ip));
        this.save(loginLog);
    }

    @Override
    public String selectCurrentDayVisit() {
        return loginLogMapper.selectCurrentDayVisit();
    }

    @Override
    public String selectCurrentWeekVisit() {
        return loginLogMapper.selectCurrentWeekVisit();
    }

    @Override
    public String selectCurrentMonthVisit() {
        return loginLogMapper.selectCurrentMonthVisit();
    }

    @Override
    public String selectCurrentYearVisit() {
        return loginLogMapper.selectCurrentYearVisit();
    }

    @Override
    public String selectTotalVisit() {
        return loginLogMapper.selectTotalVisit();
    }
}
