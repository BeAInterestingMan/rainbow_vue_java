package com.liuhu.rainbow.system.vo;

import lombok.Data;

import java.util.HashMap;
import java.util.Map;

/**
 * 状态响应类
 * @author melo、lh
 * @createTime 2019-10-14 11:27:54
 */
@Data
public class JsonResult extends HashMap<String, Object> {

    private static final long serialVersionUID = 1L;
    private static final String SUCCESS = "success";
    private static final String STATUS = "status";
    private static final String MESSAGE = "message";
    private static final String DATA = "data";
    public static final boolean OPERATE_SUCCEED = true;
    public static final boolean OPERATE_FAILURE = false;
    public static final int OK = 200;
    public static final int ERROR = 500;
    
    public static JsonResult ok() {
        JsonResult baseReturn = new JsonResult();
        baseReturn.put(SUCCESS, true);
        baseReturn.put(STATUS, OK);
        return baseReturn;
    }

    public static JsonResult ok(String message) {
        JsonResult baseReturn = new JsonResult();
        baseReturn.put(SUCCESS, true);
        baseReturn.put(STATUS, OK);
        baseReturn.put(MESSAGE, message);
        return baseReturn;
    }

    public static JsonResult ok(int status, String message) {
        JsonResult baseReturn = new JsonResult();
        baseReturn.put(SUCCESS, true);
        baseReturn.put(STATUS, status);
        baseReturn.put(MESSAGE, message);
        return baseReturn;
    }

    public static JsonResult fail() {
        JsonResult baseReturn = new JsonResult();
        baseReturn.put(SUCCESS, false);
        baseReturn.put(STATUS, 500);
        return baseReturn;
    }

    public static JsonResult fail(String message) {
        JsonResult baseReturn = new JsonResult();
        baseReturn.put(SUCCESS, false);
        baseReturn.put(STATUS, ERROR);
        baseReturn.put(MESSAGE, message);
        return baseReturn;
    }

    public static JsonResult fail(int status, String message) {
        JsonResult baseReturn = new JsonResult();
        baseReturn.put(SUCCESS, false);
        baseReturn.put(STATUS, status);
        baseReturn.put(MESSAGE, message);
        return baseReturn;
    }

    public JsonResult respond(boolean respond) {
        this.put(SUCCESS, respond);
        return this;
    }

    public JsonResult message(String message) {
        this.put(MESSAGE, message);
        return this;
    }

    public JsonResult add(String key, Object value) {
        this.put(key, value);
        return this;
    }

    public JsonResult addAll(Map<String, ?> map) {
        this.putAll(map);
        return this;
    }

    public JsonResult addEntity(Map<String, ?> map) {
        this.putAll(map);
        return this;
    }

    public JsonResult addData(Object data) {
        this.put(DATA, data);
        return this;
    }

}
