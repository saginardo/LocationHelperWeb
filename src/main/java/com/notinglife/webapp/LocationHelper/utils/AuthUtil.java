package com.notinglife.webapp.LocationHelper.utils;

import com.notinglife.webapp.LocationHelper.domain.User;
import com.notinglife.webapp.LocationHelper.exception.CustomException;

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

    private static Map<String, Object> getClientLoginInfo(String sessionID) throws Exception {
        Map<String, Object> r ;
        if (sessionID != null) {
            r = decodeSession(sessionID);
            return r;
        }
        throw new CustomException("session解析错误");
    }

    public static Integer getUserId(String sessionID) throws Exception {
        return  (Integer)getClientLoginInfo(sessionID).get("userId");
    }
    public static Long getExpirationTime(String sessionID) throws Exception{
        return  (Long) getClientLoginInfo(sessionID).get("expirationTime");
    }


    public static String requestToken(User user, int expirationTime) throws Exception{
        Map<String, Object> loginInfo = new HashMap<>();
        loginInfo.put("userId", user.getId());
        loginInfo.put("expirationTime",(System.currentTimeMillis() + expirationTime * 1000));
        return JavaWebToken.createJavaWebToken(loginInfo);
    }


    /**
     * session解密
     */
    public static Map<String, Object> decodeSession(String sessionId) {
        try {
            return JavaWebToken.verifyJavaWebToken(sessionId);
        } catch (Exception e) {
            System.err.println("");
            return null;
        }
    }
}
