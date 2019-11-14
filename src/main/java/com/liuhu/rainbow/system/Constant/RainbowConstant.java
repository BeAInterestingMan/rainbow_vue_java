package com.liuhu.rainbow.system.Constant;
/**
 * 系统常量类
 * @author melo、lh
 * @createTime 2019-10-21 15:32:32
 */

public class RainbowConstant {

    /**用户被锁定*/
    public final static  String ACCOUNT_LOCK = "1";

    /**用户被锁定*/
    public final static  String RAINBOW_TOKEN = "rainbow.token.";

    /** jwt签名过期时间 一天*/
    public static final long EXPIRE_TIME = 1000*60*60*24;

    /** 根菜单*/
    public static final String ROOT_MENU = "0";

    /** 系统管理员 具有最高权限*/
    public static final String SYSTEM_ADMIN = "admin";

    /** 页面状态为编辑*/
    public static final String PAGE_EDIT = "edit";

    /** 页面状态为新增*/
    public static final String PAGE_ADD = "add";

    /** 页面状态为查看*/
    public static final String PAGE_VIEW = "view";

    /** 分页总记录数*/
    public static final String TOTAL_COUNT = "total";

    /**操作类型为新增*/
    public final static  String  OPERATE_TYPE_ADD = "0";

    /**操作类型为删除*/
    public final static  String  OPERATE_TYPE_DELETE = "1";

    /**操作类型为修改*/
    public final static  String  OPERATE_TYPE_UPDATE = "2";

    /**操作类型为查看*/
    public final static  String  OPERATE_TYPE_VIEW = "3";
}
