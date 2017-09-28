package com.notinglife.webapp.LocationHelper.interceptor;

import com.notinglife.webapp.LocationHelper.service.UserService;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author saginardo
 * @date 2017-04-14 9:09
 */


public class LoginInterceptor implements HandlerInterceptor {

    @Autowired
    private UserService userService;
    private static final String TAG = "LoginInterceptor : ";
    private static Logger logger = LogManager.getLogger(TAG);

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        String url = request.getRequestURI();
        String token = request.getHeader("token");
        String appUUID = request.getHeader("appUUID");
        logger.info(TAG + "appUUID : " + appUUID + "  token : " + token);



        return true;
/*        logger.info(TAG + "URL : " + url);
        if (RegexValidator.isUrlInterceptor(url)) {
            return true;
        }
        if(url.contains("queryDevicesToJson")){
            return true;
        }

        //web版用户已登录也放行
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        if (user != null) {
            return true;
        }

        if (appUUID != null) {
            try {

                Long expirationTime = AuthUtil.getExpirationTime(token, appUUID);
                logger.info("expirationTime: " + expirationTime + " currentTimeMillis: " + System.currentTimeMillis());
                if (expirationTime > System.currentTimeMillis()) {
                    //说明令牌有效
                    logger.info(TAG + " 携带有效的token头信息");
                    Integer userId = AuthUtil.getUserId(token, appUUID);
                    //查询令牌是否有已注册客户信息
                    user = userService.findByPrimaryKey(userId);
                    if (user != null) {
                        return true;
                    }
                } else {
                    //令牌过期，让客户端再更新
                    response.addHeader("code", MSG_TOEKN_EXPIRES + "");
                    response.sendError(404);
                    return false;
                }
            } catch (Exception e) {
                logger.info(TAG + e.getMessage());
                // 104  token认证失败，重新登录
                MsgData msgData = new MsgData(MSG_TOEKN_ERROR, "", new ArrayList<>());
                response.getWriter().write(JSON.toJSONString(msgData));
                return false;
            }
        }

        //web版本的拦截，用户没有登录，没有session 重定向到到登录界面
        response.sendRedirect(request.getContextPath() + "/login.jsp");
        return false;*/
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }
}
