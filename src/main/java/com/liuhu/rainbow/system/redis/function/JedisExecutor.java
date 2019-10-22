package com.liuhu.rainbow.system.redis.function;

import com.liuhu.rainbow.system.exception.RedisConnectException;
/**
 * redis方法接口
 * @author melo、lh
 * @createTime 2019-10-21 15:40:04
 */

@FunctionalInterface
public interface JedisExecutor<T, R> {
    R excute(T t) throws RedisConnectException;
}
