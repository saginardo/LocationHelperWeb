package com.notinglife.webapp.LocationHelper.service.impl;

import com.notinglife.webapp.LocationHelper.domain.DeviceCustom;
import com.notinglife.webapp.LocationHelper.domain.LocationDevice;
import com.notinglife.webapp.LocationHelper.exception.CustomException;
import com.notinglife.webapp.LocationHelper.mapper.DeviceCustomMapper;
import com.notinglife.webapp.LocationHelper.service.DeviceService;
import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Device业务层实现类
 *
 * @author saginardo
 * @version v1.0
 * @date 2017-07-05 9:51
 */
@Service("deviceService")
public class DeviceServiceImpl implements DeviceService {

    private static final String TAG = "DeviceServiceImpl";
    private static org.apache.logging.log4j.Logger logger = LogManager.getLogger(TAG);

    //自动注入Mapper
    @Autowired
    private DeviceCustomMapper deviceCustomMapper;

    //添加设备信息
    @Override
    public int addDevice(DeviceCustom locationDevice) throws Exception {
        return 0;
    }
    //删除设备信息
    @Override
    public int deleteDeviceById(Integer id) throws Exception {
        return deviceCustomMapper.deleteDeviceById(id);
    }

    //修改设备信息(全部字段)
    @Override
    public int saveDevice(DeviceCustom locationDevice) throws Exception {
        return 0;
    }
    //修改设备信息(可选字段)
    @Override
    public int saveDeviceSelective(DeviceCustom locationDevice) throws Exception {
        try{
            int i = deviceCustomMapper.updateDeviceSelective(locationDevice);
            return i;
        }catch (DuplicateKeyException e){
            throw  new CustomException("设备ID已存在，无法修改该设备ID属性!");
        }
    }

    //包装类查询
    @Override
    public DeviceCustom findDeviceByDeviceId(String deviceId) throws Exception {
        DeviceCustom device = deviceCustomMapper.findDeviceByDeviceId(deviceId);
        //logger.info("查询到的设备是" + device);
        return device;
    }
    //包装类查询
    @Override
    public DeviceCustom findDeviceById(Integer id) throws Exception {
        DeviceCustom device = deviceCustomMapper.findDeviceById(id);
        //logger.info("查询到的设备是" + device);
        return device;
    }

    @Override
    public List<LocationDevice> findDeviceListOnly() throws Exception {
        List<LocationDevice> deviceListOnly = deviceCustomMapper.findDeviceListOnly();
        return deviceListOnly;
    }

    @Override
    public List<DeviceCustom> findDeviceList() throws Exception {
        List<DeviceCustom> deviceList = deviceCustomMapper.findDeviceList();
        //logger.info("查询到的设备是" + deviceList);
        return deviceList;
    }

    @Override
    public List<DeviceCustom> findOffLineDeviceList() throws Exception {
        List<DeviceCustom> offLineDeviceList = deviceCustomMapper.findOffLineDeviceList();
        return offLineDeviceList;
    }


}
