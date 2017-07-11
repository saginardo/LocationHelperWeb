package com.notinglife.webapp.LocationHelper.controller.webController;

import com.notinglife.webapp.LocationHelper.domain.User;
import com.notinglife.webapp.LocationHelper.service.impl.UserServiceImpl;
import com.notinglife.webapp.LocationHelper.utils.Md5Encoder;
import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Date;

/**
 * @author saginardo
 * @date 2017-04-14 9:25
 */
@Controller("webUserController")
public class WebUserController {

    private static final String TAG = "WebUserController";
    private static org.apache.logging.log4j.Logger logger = LogManager.getLogger(TAG);

    @Autowired
    private UserServiceImpl userService;


    @RequestMapping(value = "/login", method = {RequestMethod.POST})
    public String login(HttpServletRequest request, HttpServletResponse response, HttpSession session, String username, String password) throws Exception {

        System.out.println("用户名：" + username + "--密码：" + password);
        String md5Password = Md5Encoder.md5(password + username);
        User user = userService.findByUserName(username);
        if (user == null) {
            request.setAttribute("message", "用户名和密码不匹配，请重试!");
            return "forward:/login.jsp";
        } else if (md5Password.equals(user.getPassword())) {
            // /把用户登录信息放进Session
            session.setAttribute("user", user);
            return "redirect:/queryDevices.action";
        } else {
            request.setAttribute("message", "用户名和密码不匹配，请重试!");
            return "forward:/login.jsp";
        }
    }

    @RequestMapping("/logout")
    public String logout(HttpSession session) throws Exception {
        session.removeAttribute("user");
        return "redirect:/login.jsp";
    }


    //注册逻辑
    @RequestMapping(value = "/register", method = {RequestMethod.POST})
    public String register(Model model, @Validated @ModelAttribute("user") User user, BindingResult result) throws Exception {

        if (result.hasErrors()) {
            return "redirect:/register.jsp";
        }
        user.setSalt(user.getUsername());
        Date date = new Date();
        user.setCreateTime(date);
        user.setUpdateTime(date);
        user.setEmailVerified(false);

        logger.info("待提交用户：" + user.toString());
        //提示激活邮箱后登录
        return "redirect:/login.jsp";
    }


}
