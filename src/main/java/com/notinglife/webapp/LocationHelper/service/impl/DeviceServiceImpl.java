package com.notinglife.webapp.LocationHelper.service.impl;

import com.notinglife.webapp.LocationHelper.domain.LocationDevice;
import com.notinglife.webapp.LocationHelper.mapper.LocationDeviceMapper;
import com.notinglife.webapp.LocationHelper.service.DeviceService;
import org.springframework.beans.factory.annotation.Autowired;
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

    //自动注入Mapper
    @Autowired
    private LocationDeviceMapper deviceMapper;

    @Override
    public List<LocationDevice> findDeviceAll() throws Exception {
        List<LocationDevice> deviceAll = deviceMapper.findDeviceAll();
        return deviceAll;
    }
}
