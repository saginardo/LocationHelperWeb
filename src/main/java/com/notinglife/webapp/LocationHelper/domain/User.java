package com.notinglife.webapp.LocationHelper.domain;

import java.io.Serializable;

/**
 * 用户类
 *
 * @author saginardo
 * @version v1.0
 * @date 2017-07-02 20:14
 */
public class User implements Serializable {
    private Integer id;
    private String username;
    private String password;// 这个字段应该不用，用户密码不应该存储在本地使用
    private String emailAddress;
    private String status;
/*    private Date mCreateDate;
    private Date mUpdateDate;*/

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmailAddress() {
        return emailAddress;
    }

    public void setEmailAddress(String emailAddress) {
        this.emailAddress = emailAddress;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
