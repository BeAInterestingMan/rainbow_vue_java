package com.liuhu.rainbow.system.exception;
/**
 * 系统自定义异常
 * @author melo、lh
 * @createTime 2019-10-21 14:50:17
 */

public class RainbowException extends RuntimeException{
    public RainbowException(){
        super();
    }

    /**
     * 用详细信息指定一个异常
     * @param message
     * @return
     * @author melo、lh
     * @createTime 2019-10-21 14:54:01
     */
    public RainbowException(String message){
        super(message);
    }

   /**
    * 指定的详细信息和原因构造一个新的异常
    * @param message
    * @param cause
    * @author melo、lh
    * @createTime 2019-10-21 14:53:28
    */
    public RainbowException(String message, Throwable cause){
        super(message,cause);
    }

    /**
     * 用指定原因构造一个新的异常
     * @param cause
     * @return
     * @author melo、lh
     * @createTime 2019-10-21 14:53:46
     */
    public RainbowException(Throwable cause) {
        super(cause);
    }
}
