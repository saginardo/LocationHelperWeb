package com.notinglife.webapp.LocationHelper.mapper;

import com.notinglife.webapp.LocationHelper.domain.DeviceCustom;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 包装类的查询
 *
 * @author saginardo
 * @version v1.0
 * @date 2017-07-05 21:00
 */
@Repository("deviceCustomMapper")
public interface DeviceCustomMapper {

    List<DeviceCustom> findDeviceList() throws Exception;
    List<DeviceCustom> findOffLineDeviceList() throws Exception;

    DeviceCustom findDeviceByDeviceId(String deviceId) throws Exception;
    DeviceCustom findDeviceById(Integer id) throws Exception;
    int updateDeviceSelective(DeviceCustom deviceCustom) throws Exception;

    int deleteDeviceById(Integer id) throws Exception;
}
