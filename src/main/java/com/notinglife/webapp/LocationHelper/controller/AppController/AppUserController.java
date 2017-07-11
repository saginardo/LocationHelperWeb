package com.notinglife.webapp.LocationHelper.controller.AppController;

import com.notinglife.webapp.LocationHelper.domain.LocationDevice;
import com.notinglife.webapp.LocationHelper.domain.MsgData;
import com.notinglife.webapp.LocationHelper.domain.User;
import com.notinglife.webapp.LocationHelper.service.UserService;
import com.notinglife.webapp.LocationHelper.service.impl.DeviceServiceImpl;
import com.notinglife.webapp.LocationHelper.utils.AuthUtil;
import com.notinglife.webapp.LocationHelper.utils.GlobalConstant;
import com.notinglife.webapp.LocationHelper.utils.Md5Encoder;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

import static com.notinglife.webapp.LocationHelper.utils.GlobalConstant.*;

/**
 * 用户交互类
 *
 * @author saginardo
 * @version v1.0
 * @date 2017-07-09 9:47
 */
@Controller("appUserController")
public class AppUserController {

    private static final String TAG = "AppUserController : ";
    private static Logger logger = LogManager.getLogger(TAG);

    private final DeviceServiceImpl deviceService;
    private final UserService userService;
    private List<LocationDevice> list = new ArrayList<>();


    private static final Integer TOKEN1_TIME = 1800; //请求令牌有效期，单位 秒
    private static final Integer TOKEN2_TIME = 86400; //更新令牌有效期，单位 秒


    @Autowired    //查询设备依赖的service层
    public AppUserController(UserService userService, DeviceServiceImpl deviceService) {
        this.userService = userService;
        this.deviceService = deviceService;
    }


    @RequestMapping(value = "/appLogin", method = {RequestMethod.POST})
    public @ResponseBody
    MsgData appLogin(HttpServletRequest request, String username, String password) throws Exception {

        String appUUID = request.getHeader("appUUID");
        if (appUUID == null || appUUID.equals("")) {
            return new MsgData(MSG_LOGIN_FAILED, "", list);
        }

        logger.info(TAG + "用户名：" + username + ", 密码：" + password + " , appUUID: " + appUUID);
        String md5Password = Md5Encoder.md5(password + username);//username作为salt
        User user = userService.findByUserName(username);

        if (user == null) {
            return new MsgData(MSG_LOGIN_FAILED, "", list);
        } else if (md5Password.equals(user.getPassword())) {
            //生成2个token，一个作为 请求token，一个作为 更新token
            String token1 = AuthUtil.requestToken(user, TOKEN1_TIME, appUUID);
            //更新token 仅在登录的时候更新
            String token2 = AuthUtil.requestToken(user, TOKEN2_TIME, appUUID);
            String token = token1 + "#" + token2;
            return new MsgData(MSG_LOGIN_SUCCESS, token, list);
        } else {
            return new MsgData(MSG_LOGIN_FAILED, "", list);
        }
    }


    @RequestMapping(value = "/appRegister", method = {RequestMethod.POST})
    public @ResponseBody
    MsgData appRegister(HttpServletRequest request, @RequestBody User user) throws Exception {

        logger.info(TAG + "接收到的数据" + user.toString());

        //查询数据库是否存在 同名用户或者同名邮箱
        if (userService.findByUserName(user.getUsername()) != null) {
            return new MsgData(MSG_REGISTER_NAMEREPEAT, "", list);
        }
        if (userService.findByEmailAddress(user.getEmailAddress()) != null) {
            return new MsgData(MSG_REGISTER_EMAILREPEAT, "", list);
        }

        userService.addUser(user);
        return new MsgData(GlobalConstant.MSG_REGISTER_SUCCESS, "", list);
    }


    @RequestMapping(value = "/refreshToken.action", method = {RequestMethod.POST})
    public @ResponseBody
    MsgData refreshToken(String token, String refreshToken) throws Exception {

        logger.info(TAG + "接收到更新" + token + "的请求, refreshToken : " + refreshToken);
        Integer userId = 0;
        Long expirationTime = 0L;

        try {
            userId = AuthUtil.getUserId(token, refreshToken);
            expirationTime = AuthUtil.getExpirationTime(token, refreshToken);

        } catch (Exception e) {
            //104 token更新失败
            return new MsgData(MSG_TOEKN_ERROR, "", list);
        }

        if (expirationTime < System.currentTimeMillis()) { //说明已过期
            //104 token更新失败
            return new MsgData(MSG_TOEKN_ERROR, "", list);
        } else {
            User user = userService.findByPrimaryKey(userId);
            if (user != null) {
                //103 token更新成功 发送新的 请求token
                String newToken = AuthUtil.requestToken(user, TOKEN1_TIME, refreshToken);
                return new MsgData(MSG_TOEKN_UPDATE, newToken, list);
            }
            //104 token更新失败
            return new MsgData(MSG_TOEKN_ERROR, "", list);
        }
    }

}
