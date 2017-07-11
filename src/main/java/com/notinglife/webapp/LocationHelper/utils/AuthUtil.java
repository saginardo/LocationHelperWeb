package com.notinglife.webapp.LocationHelper.utils;

import com.notinglife.webapp.LocationHelper.domain.User;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.util.HashMap;
import java.util.Map;

/**
 * token认证模块
 *
 * @author saginardo
 * @version v.10
 * @date 2017-07-08 12:13
 */
public class AuthUtil {
    private static final String TAG = "AuthUtil : ";
    private static Logger logger = LogManager.getLogger(TAG);

    private static Map<String, Object> getClientLoginInfo(String token, String secretKey) throws Exception {
        Map<String, Object> r;

        try {
            if (token != null) {
                r = decodeSession(token, secretKey);
                return r;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        throw new Exception("Token解析错误");
    }


    public static Integer getUserId(String token,String secretKey) throws Exception {
        return (Integer) getClientLoginInfo(token,secretKey).get("userId");
    }

    public static Long getExpirationTime(String token,String secretKey) throws Exception {
        return (Long) getClientLoginInfo(token,secretKey).get("expirationTime");
    }


    public static String requestToken(User user, int expirationTime, String secretKey) throws Exception {
        Map<String, Object> loginInfo = new HashMap<>();
        loginInfo.put("userId", user.getId());
        loginInfo.put("expirationTime", (System.currentTimeMillis() + expirationTime * 1000));
        return JavaWebToken.createJavaWebToken(loginInfo, secretKey);
    }


    /**
     * session解密
     */
    public static Map<String, Object> decodeSession(String token, String secretKey) throws Exception {
        return JavaWebToken.verifyJavaWebToken(token, secretKey);
    }
}
