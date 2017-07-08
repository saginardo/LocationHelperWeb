package com.notinglife.webapp.LocationHelper.interceptor;

import com.notinglife.webapp.LocationHelper.domain.User;
import com.notinglife.webapp.LocationHelper.service.UserService;
import com.notinglife.webapp.LocationHelper.utils.AuthUtil;
import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * @author saginardo
 * @date 2017-04-14 9:09
 */
public class LoginInterceptor implements HandlerInterceptor {

    @Autowired
    private UserService userService;
    private static final String TAG = "LoginInterceptor";
    private static org.apache.logging.log4j.Logger logger = LogManager.getLogger(TAG);

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        String url = request.getRequestURI();
        //如果是登录或者注册的action，则放行
        if (url.indexOf("login.action") > 0 || url.indexOf("register.action") > 0) {
            return true;
        }

        //如果用户已登录也放行
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        if (user != null) {
            return true;
        }

        //如果是自定义cookie，也放行
        Cookie autoLoginCookie = null;
        Cookie cookies[] = request.getCookies();   //用户没登陆，看有无本站cookie

        for (int i = 0; cookies != null && i < cookies.length; i++) {
            if (cookies[i].getName().equals("sessionId")) {
                autoLoginCookie = cookies[i];
            }
        }

        if (autoLoginCookie != null) {
            String value = autoLoginCookie.getValue();
            //解析token中的有效期
            long expirationDate = AuthUtil.getExpirationTime(value);
            if (System.currentTimeMillis() < expirationDate) {
                Integer userId = AuthUtil.getUserId(value);
                user = userService.findByPrimaryKey(userId);
                if (user != null) {
                    session.setAttribute("user", user);
                    response.sendRedirect(request.getContextPath() + "/queryDevices.action");
                    return true;
                }
            }

        }

        //用户没有登录,跳转登录页面
        request.getRequestDispatcher("/login.jsp").forward(request, response);
        return false;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }
}
