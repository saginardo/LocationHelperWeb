package com.notinglife.webapp.LocationHelper.utils;

import java.util.regex.Pattern;
/**
 * 校验器:利用正则表达式校验邮箱、手机号等
 *
 * @author saginardo
 * @version ${VERSION}
 *          date 2017-06-20 20:13
 */

public class RegexValidator {
    private static final String TAG = "RegexValidator";

    /**
     * 匹配设备ID的正则，必须5位字母或数字
     */
    public static final String REGEX_DEVICE_ID ="[0-9a-zA-Z]{5}";

    /**
     * 正则表达式:验证用户名(不包含中文和特殊字符) 5到18位
     * 如果用户名使用手机号码或邮箱 则结合手机号验证和邮箱验证
     */
    public static final String REGEX_USERNAME = "^[a-zA-Z]\\w{4,17}$";

    /**
     * 正则表达式:验证密码(不包含特殊字符) 6到16位
     */
    public static final String REGEX_PASSWORD = "^[a-zA-Z0-9]{6,16}$";

    /**
     * 正则表达式:验证手机号
     */
    public static final String REGEX_MOBILE = "^(0|86|17951)?(13[0-9]|15[012356789]|17[678]|18[0-9]|14[57])[0-9]{8}$";

    /**
     * 正则表达式:验证邮箱
     */
    public static final String REGEX_EMAIL = "^([a-z0-9A-Z]+[-|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$";

    /**
     * 拦截器的正则
     * 以任意字符开头，必须包含 特定字符串 并以action结尾的请求，
     * 匹配则通过
     */
    public static final String REGEX_INTERCEPTOR = ".*(login|register|appLogin|refreshToken|appRegister)+\\.action$";

    /**
     * 正则表达式:验证汉字(1-9个汉字)  {1,9} 自定义区间
     */
    public static final String REGEX_CHINESE = "^[\u4e00-\u9fa5]{1,9}$";

    /**
     * 正则表达式:验证身份证
     */
    public static final String REGEX_ID_CARD = "(^\\d{15}$)|(^\\d{17}([0-9]|X)$)";

    /**
     * 正则表达式:验证URL
     */
    public static final String REGEX_URL = "http(s)?://([\\w-]+\\.)+[\\w-]+(/[\\w- ./?%&=]*)?";

    /**
     * 正则表达式:验证IP地址
     */
    public static final String REGEX_IP_ADDR = "(2[5][0-5]|2[0-4]\\d|1\\d{2}|\\d{1,2})\\.(25[0-5]|2[0-4]\\d|1\\d{2}|\\d{1,2})\\.(25[0-5]|2[0-4]\\d|1\\d{2}|\\d{1,2})\\.(25[0-5]|2[0-4]\\d|1\\d{2}|\\d{1,2})";


    /**
     * 正则表达式：验证MAC地址
     */
    public static final String REGEX_MAC_ADDR ="^([0-9a-fA-F]{2})(([/\\s:-][0-9a-fA-F]{2}){5})$";

    /**
     * 正则表达式：验证纬度信息
     */
    public static final String REGEX_LATITUDE = "^[\\-\\+]?([0-8]?\\d{1}\\.\\d{1,6}|90\\.0{1,6})$";
    /**
     * 正则表达式：验证经度信息
     */
    public static final String REGEX_LONGITUDE = "^[\\-\\+]?(0?\\d{1,2}\\.\\d{1,6}|1[0-7]?\\d{1}\\.\\d{1,6}|180\\.0{1,6})$";


    public static final String REGEX_DATE_TIME = "^[1-9]\\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])\\s+(20|21|22|23|[0-1]\\d):[0-5]\\d:[0-5]\\d$";
    /**
     * 校验用户名
     *
     * @param username
     * @return 校验通过返回true，否则返回false
     */
    public static boolean isUserName(String username) {
        return Pattern.matches(REGEX_USERNAME, username);
    }

    /**
     * 校验密码
     *
     * @param password
     * @return 校验通过返回true，否则返回false
     */
    public static boolean isPassword(String password) {
        return Pattern.matches(REGEX_PASSWORD, password);
    }

    /**
     * 校验手机号
     *
     * @param mobile
     * @return 校验通过返回true，否则返回false
     */
    public static boolean isMobile(String mobile) {
        return Pattern.matches(REGEX_MOBILE, mobile);
    }

    /**
     * 校验邮箱
     *
     * @param email
     * @return 校验通过返回true，否则返回false
     */
    public static boolean isEmail(String email) {
        return Pattern.matches(REGEX_EMAIL, email);
    }

    /**
     * 校验汉字
     *
     * @param chinese
     * @return 校验通过返回true，否则返回false
     */
    public static boolean isChinese(String chinese) {
        return Pattern.matches(REGEX_CHINESE, chinese);
    }

    /**
     * 校验身份证
     *
     * @param idCard
     * @return 校验通过返回true，否则返回false
     */
    public static boolean isIDCard(String idCard) {
        return Pattern.matches(REGEX_ID_CARD, idCard);
    }

    /**
     * 校验URL
     *
     * @param url
     * @return 校验通过返回true，否则返回false
     */
    public static boolean isUrl(String url) {
        return Pattern.matches(REGEX_URL, url);
    }

    /**
     * 校验IP地址
     *
     * @param ipAddress
     * @return
     */
    public static boolean isIPAddress(String ipAddress) {
        return Pattern.matches(REGEX_IP_ADDR, ipAddress);
    }

    public static boolean isMacAddress(String macAddress){
        return Pattern.matches(REGEX_MAC_ADDR,macAddress);
    }

    public static boolean isDeviceID(String deviceID){
        return Pattern.matches(REGEX_DEVICE_ID,deviceID);
    }

    public static boolean isUrlInterceptor(String url){
        return Pattern.matches(REGEX_INTERCEPTOR,url);
    }

}
