package com.notinglife.webapp.LocationHelper.exception;

/**
 * 自定义异常类
 *
 * @author saginardo
 * @version v1.0
 * @date 2017-07-06 13:26
 */
public class CustomException extends Exception {

    private static final long serialVersionUID = 8464082996873483315L;
    //异常信息
    private String message;

    public CustomException(String message){
        super(message);
        this.message = message;
    }

    @Override
    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
