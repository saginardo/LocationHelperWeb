package com.notinglife.webapp.LocationHelper.controller;


import com.notinglife.webapp.LocationHelper.domain.LocationDevice;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 * 实现Controller接口的适配器
 *
 * @author saginardo
 * @version v1.0
 * @date 2017-07-04 21:32
 */

public class DeviceList implements Controller {

    @Override
    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

        List<LocationDevice> deviceList = new ArrayList<>();

        LocationDevice locationDevice = new LocationDevice();
        locationDevice.setDeviceId("00001");
        locationDevice.setMacAddress("00:00:00:00:00:01");
        locationDevice.setLatitude("29.536187");
        locationDevice.setLongitude("106.491872");
        locationDevice.setOwner("testUser1");
        locationDevice.setDeviceStatus("OffLine");

        LocationDevice locationDevice2 = new LocationDevice();
        locationDevice2.setDeviceId("00011");
        locationDevice2.setMacAddress("00:00:00:00:00:11");
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
