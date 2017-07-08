package com.notinglife.webapp.LocationHelper.domain;

/**
 * 继承LocationDevice，避免直接修改mybatis逆向文件
 *
 * @author saginardo
 * @version v1.0
 * @date 2017-07-05 20:52
 */
public class DeviceCustom extends LocationDevice {
    private User user;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return super.toString()+" 对应用户是：DeviceCustom{" +
                "user=" + user +
                '}';
    }
}
