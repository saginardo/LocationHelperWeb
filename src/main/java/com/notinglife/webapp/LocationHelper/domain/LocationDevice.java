package com.notinglife.webapp.LocationHelper.domain;

import java.io.Serializable;

/**
 * 设备类
 *
 * @author saginardo
 * @version v1.0
 * @date 2017-07-02 20:14
 */
public class LocationDevice implements Serializable{

    private Integer id;
    private String deviceId;
    private String macAddress;
    private String latitude;
    private String longitude;
    private String owner;
    private String deviceStatus;
/*    private String mRadius;
    private Integer mLocMode;*/

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDeviceId() {
        return deviceId;
    }

    public void setDeviceId(String deviceId) {
        this.deviceId = deviceId;
    }

    public String getMacAddress() {
        return macAddress;
    }

    public void setMacAddress(String macAddress) {
        this.macAddress = macAddress;
    }

    public String getLatitude() {
        return latitude;
    }

    public void setLatitude(String latitude) {
        this.latitude = latitude;
    }

    public String getLongitude() {
        return longitude;
    }

    public void setLongitude(String longitude) {
        this.longitude = longitude;
    }

    public String getOwner() {
        return owner;
    }

    public void setOwner(String owner) {
        this.owner = owner;
    }

    public String getDeviceStatus() {
        return deviceStatus;
    }

    public void setDeviceStatus(String deviceStatus) {
        this.deviceStatus = deviceStatus;
    }

    @Override
    public String toString() {
        return "LocationDevice{" +
                "deviceId='" + deviceId + '\'' +
                ", macAddress='" + macAddress + '\'' +
                ", latitude='" + latitude + '\'' +
                ", longitude='" + longitude + '\'' +
                ", owner='" + owner + '\'' +
                ", deviceStatus='" + deviceStatus + '\'' +
                '}';
    }
}
