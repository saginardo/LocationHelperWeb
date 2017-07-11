package com.notinglife.webapp.LocationHelper.controller.webController;

import com.notinglife.webapp.LocationHelper.domain.DeviceCustom;
import com.notinglife.webapp.LocationHelper.domain.LocationDevice;
import com.notinglife.webapp.LocationHelper.domain.User;
import com.notinglife.webapp.LocationHelper.service.UserService;
import com.notinglife.webapp.LocationHelper.service.impl.DeviceServiceImpl;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


/**
 * 查询设备类，使用SSM注解配置
 *
 * @author saginardo
 * @version v1.0
 * @date 2017-07-05 10:05
 */
@Controller("webDeviceController")
public class WebDeviceController {
    private static final String TAG = "webDeviceController";
    private static Logger logger = LogManager.getLogger(TAG);

    private final DeviceServiceImpl deviceService;
    private final UserService userService;

    @Autowired    //查询设备依赖的service层
    public WebDeviceController(UserService userService, DeviceServiceImpl deviceService) {
        this.userService = userService;
        this.deviceService = deviceService;
    }

    //查询单个设备
    @RequestMapping("/queryDevice")
    public ModelAndView queryDevice(String deviceId) throws Exception {
        LocationDevice deviceById = deviceService.findDeviceByDeviceId(deviceId);
        List<LocationDevice> list = new ArrayList<>();
        list.add(deviceById);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("deviceList", list);
        modelAndView.setViewName("device/queryDevices");
        return modelAndView;
    }

    //查询所有设备
    @RequestMapping("/queryDevices")
    public ModelAndView queryDevices(HttpServletRequest request) throws Exception {
        List<DeviceCustom> deviceList = deviceService.findDeviceList();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("deviceList", deviceList);
        modelAndView.setViewName("device/queryDevices");
        return modelAndView;
    }

    //查询故障设备
    @RequestMapping("/queryOffLineDevices")
    public ModelAndView queryOffLineDevices(HttpServletRequest request) throws Exception {
        List<DeviceCustom> deviceList = deviceService.findOffLineDeviceList();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("deviceList", deviceList);
        modelAndView.setViewName("device/offLineDevices");
        return modelAndView;
    }


    //编辑单个设备
    @RequestMapping(value = "/editDevice", method = {RequestMethod.GET, RequestMethod.POST})
    public String editDevice(Model model, HttpServletRequest request, @RequestParam(value = "id") Integer id) throws Exception {

        //调用service查询商品信息
        LocationDevice device = deviceService.findDeviceById(id);
        model.addAttribute("device", device);
        //添加单选框的用户选择项
        List<User> userAll = userService.findUserAll();
        List<String> usernames = new ArrayList<>();
        for (User user1 : userAll) {
            String username = user1.getUsername();
            usernames.add(username);
        }
        model.addAttribute("usernames", usernames);

        return "device/deviceProfile";
    }

    //修改设备提交
    @RequestMapping("/editDeviceSubmit")
    public String editDeviceSubmit(@Validated @ModelAttribute("device") DeviceCustom device, BindingResult result) throws Exception {

        if (result.hasErrors()) {
            //有错就跳转到编辑界面，并给出提示
            return "device/deviceProfile";
        }
        device.setUpdateTime(new Date());
        logger.info("要提交修改的设备是" + device.toString());
        int i = deviceService.saveDeviceSelective(device);
        logger.info("更新的设备数量" + i);
        return "redirect:queryDevices.action";
    }


    //删除单个设备
    @RequestMapping(value = "/deleteDevice", method = {RequestMethod.GET, RequestMethod.POST})
    public String deleteDevice(Model model, HttpServletRequest request, @RequestParam(value = "id") Integer id) throws Exception {

        //调用service查询商品信息
        int i = deviceService.deleteDeviceById(id);
        //model.addAttribute("device", device);
        return "redirect:queryDevices.action";
    }

}
