package com.liuhu.rainbow.system.util;

import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;

/**
 * MD5加密
 * @author melo、lh
 * @createTime 2019-10-21 15:52:20
 */

public class MD5Utils {
    /** 加密算法*/
    private static final String ALGORITH_NAME = "md5";

    /** 加密次数*/
    private static final int HASH_ITERATIONS = 1024;
     /**
      * 密码MD5 加密
      * @param username
      * @param password
      * @return void
      * @author melo、lh
      * @createTime 2019-10-17 16:04:02
      */
     public static String encrypt(String username,String password) {
        //登录时输入的用户名作为盐值
        ByteSource credentialsSalt = ByteSource.Util.bytes(username);
        return new SimpleHash(ALGORITH_NAME, password, credentialsSalt, HASH_ITERATIONS).toHex();
    }

    public static void main(String[] args) {
        System.out.println(encrypt("west", "west"));
    }
}
