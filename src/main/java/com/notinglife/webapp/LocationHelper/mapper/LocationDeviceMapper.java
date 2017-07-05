package com.notinglife.webapp.LocationHelper.mapper;

import com.notinglife.webapp.LocationHelper.domain.LocationDevice;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 设备类的mybatis映射文件
 *
 * @author saginardo
 * @version v1.0
 * @date 2017-07-04 9:14
 */
@Repository("deviceMapper")
public interface LocationDeviceMapper {

    LocationDevice findDeviceById(String deviceId) throws Exception;

    List<LocationDevice> findDeviceAll() throws Exception;

    int deleteDeviceById(String deviceId) throws Exception;

    int updateDevice(LocationDevice locationDevice) throws Exception;

    int insertDevice(LocationDevice locationDevice) throws Exception;
}
