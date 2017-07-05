package com.notinglife.webapp.LocationHelper.service;

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

    List<LocationDevice> findDeviceAll() throws Exception;
}
