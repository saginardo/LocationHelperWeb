package com.notinglife.webapp.LocationHelper.controller.AppController;

import com.notinglife.webapp.LocationHelper.domain.LocationDevice;
import com.notinglife.webapp.LocationHelper.domain.MsgData;
import com.notinglife.webapp.LocationHelper.service.UserService;
import com.notinglife.webapp.LocationHelper.service.impl.DeviceServiceImpl;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

import static com.notinglife.webapp.LocationHelper.utils.GlobalConstant.MSG_QUERYDEVICE_FAILED;
import static com.notinglife.webapp.LocationHelper.utils.GlobalConstant.MSG_QUERYDEVICE_SUCCESS;

/**
 * 移动app用到的Controller
 *
 * @author saginardo
 * @version v1.0
 * @date 2017-07-09 9:39
 */
@Controller("appDeviceController")
public class AppDeviceController {

    private static final String TAG = "AppDeviceController";
    private static Logger logger = LogManager.getLogger(TAG);

    private final DeviceServiceImpl deviceService;
    private final UserService userService;
    private List<LocationDevice> list = new ArrayList<>();

    @Autowired    //查询设备依赖的service层
    public AppDeviceController(UserService userService, DeviceServiceImpl deviceService) {
        this.userService = userService;
        this.deviceService = deviceService;
    }


    //返回移动app用的json数据
    @RequestMapping(value = "/queryDevicesToJson", method = {RequestMethod.GET, RequestMethod.POST})
    public @ResponseBody
    MsgData queryDevicesToJson(HttpServletRequest request, HttpServletResponse response) throws Exception {
        list = deviceService.findDeviceListOnly();
        /*
         * Expires: Mon, 10 Jul 2017 12:51:47 GMT
         * Cache-Control: max-age=60
        */
        if (list != null) {
            //response.setDateHeader("Expires", System.currentTimeMillis() + 60 * 1000);
            //response.setHeader("Cache-Control", "max-age=60");
            return new MsgData(MSG_QUERYDEVICE_SUCCESS, "成功查询所有设备", list);
        } else {
            return new MsgData(MSG_QUERYDEVICE_FAILED, "查询所有设备失败", list);
        }
    }

}
