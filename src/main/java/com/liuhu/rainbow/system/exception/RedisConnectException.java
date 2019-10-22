package com.liuhu.rainbow.system.exception;

/**
 * Redis 连接异常
 * @author melo、lh
 * @createTime 2019-10-21 15:38:13
 */

public class RedisConnectException extends Exception {
    public RedisConnectException(String message) {
        super(message);
    }
}
