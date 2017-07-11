package com.notinglife.webapp.LocationHelper.utils;

/**
 * 全局常量
 *
 * @author saginardo
 * @version ${VERSION}
 *          date 2017-07-09 16:06
 */

public class GlobalConstant {

    //网络传输json数据的code 状态码

    public static final Integer MSG_LOGIN_SUCCESS = 100;  // 100  登录成功
    public static final Integer MSG_LOGIN_FAILED = 101; // 101  用户名和密码不匹配，请重试!
    public static final Integer MSG_TOEKN_EXPIRES = 102; // 102  token过期，请重新申请
    public static final Integer MSG_TOEKN_UPDATE = 103;// 103  token更新成功
    public static final Integer MSG_TOEKN_ERROR = 104;  // 104  token认证失败，重新登录

    public static final Integer MSG_REGISTER_SUCCESS = 105; // 105 注册成功
    public static final Integer MSG_REGISTER_NAMEREPEAT = 106;// 106 用户名重复
    public static final Integer MSG_REGISTER_EMAILREPEAT = 107; // 107 邮箱重复

    public static final Integer MSG_QUERYDEVICE_SUCCESS = 110; // 110  成功查询所有设备
    public static final Integer MSG_QUERYDEVICE_FAILED = 111; //  111  查询所有设备失败


}
