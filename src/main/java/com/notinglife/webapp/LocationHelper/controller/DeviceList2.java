package com.notinglife.webapp.LocationHelper.controller;

import com.notinglife.webapp.LocationHelper.domain.LocationDevice;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

/**
 * @author saginardo
 * @date 2017-07-05 9:22
 */

@Controller
public class DeviceList2 {

    @RequestMapping("/queryDevice.action")
    public ModelAndView queryItem(){

        List<LocationDevice> deviceList = new ArrayList<>();

        LocationDevice locationDevice = new LocationDevice();
        locationDevice.setDeviceId("00002");
        locationDevice.setMacAddress("00:00:20:00:02:01");
        locationDevice.setLatitude("29.536187");
        locationDevice.setLongitude("106.491872");
        locationDevice.setOwner("testUser1");
        locationDevice.setDeviceStatus("OffLine");

        LocationDevice locationDevice2 = new LocationDevice();
        locationDevice2.setDeviceId("00024");
        locationDevice2.setMacAddress("00:00:20:00:00:22");
        locationDevice2.setLatitude("29.536187");
        locationDevice2.setLongitude("106.491872");
        locationDevice2.setOwner("testUser2");
        locationDevice2.setDeviceStatus("Normal");

        deviceList.add(locationDevice);
        deviceList.add(locationDevice2);


        //创建modelAndView准备填充数据、设置视图
        ModelAndView modelAndView = new ModelAndView();

        //填充数据
        modelAndView.addObject("deviceList", deviceList);
        //视图
        modelAndView.setViewName("device/deviceList");

        return modelAndView;
    }
}
