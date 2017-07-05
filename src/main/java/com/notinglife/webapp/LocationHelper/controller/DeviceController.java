package com.notinglife.webapp.LocationHelper.controller;

import com.notinglife.webapp.LocationHelper.domain.LocationDevice;
import com.notinglife.webapp.LocationHelper.service.impl.DeviceServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * 查询设备类，使用SSM注解配置
 *
 * @author saginardo
 * @version v1.0
 * @date 2017-07-05 10:05
 */
@Controller
public class DeviceController {

    //查询设备依赖的service层
    @Autowired
    private DeviceServiceImpl deviceService;

    @RequestMapping("/queryFromDatabase.action")
    public ModelAndView queryDevices() throws Exception{
        //需要service层，就注入service
        List<LocationDevice> deviceList = deviceService.findDeviceAll();

        //填充到ModelAndView

        ModelAndView modelAndView = new ModelAndView();
        //前者是要传送到视图层的数据名称，便于jsp取出数据，后者是要传递的数据
        modelAndView.addObject("deviceList",deviceList);
        //setName方法来匹配要传递给的jsp页面，这里使用了springmvc.xml中关于视图解析器的前后缀配置，简写
        modelAndView.setViewName("device/deviceList");
        return modelAndView;
    }
}
