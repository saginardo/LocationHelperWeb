package com.notinglife.webapp.LocationHelper.domain;

import java.util.List;

/**
 * 服务器与app交互的消息类
 *
 * @author saginardo
 * @version ${VERSION}
 *          date 2017-07-09 9:13
 */

public class MsgData {


    //携带状态
    private Integer code;


    //携带信息 token 等
    private String message;
    //数据体
    private List<LocationDevice> devices;

    public MsgData(){}

    public MsgData(Integer code,String message, List<LocationDevice> list) {
        this.code = code;
        this.message = message;
        this.devices = list;

    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public List<LocationDevice> getDevices() {
        return devices;
    }

    public void setDevices(List<LocationDevice> devices) {
        this.devices = devices;
    }


}
