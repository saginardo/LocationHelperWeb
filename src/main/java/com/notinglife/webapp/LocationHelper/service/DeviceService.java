package com.notinglife.webapp.LocationHelper.service;

import com.notinglife.webapp.LocationHelper.domain.DeviceCustom;
import com.notinglife.webapp.LocationHelper.domain.LocationDevice;

import java.util.List;

/**
 * Device的业务层
 *
 * @author saginardo
 * @version v1.0
 * @date 2017-07-05 9:48
 */
public interface DeviceService {



    //包装类添加
    int addDevice(DeviceCustom locationDevice) throws Exception;
    //包装类删除
    int deleteDeviceById(Integer id) throws Exception;

    //包装类修改
    int saveDevice(DeviceCustom locationDevice) throws Exception;
    int saveDeviceSelective(DeviceCustom locationDevice) throws  Exception;

    //包装类查询
    List<DeviceCustom> findDeviceList() throws Exception;
    List<DeviceCustom> findOffLineDeviceList() throws Exception;
    DeviceCustom findDeviceByDeviceId(String deviceId) throws Exception;
    DeviceCustom findDeviceById(Integer id) throws  Exception;


    //APP用的数据
    List<LocationDevice> findDeviceListOnly() throws Exception;
}
