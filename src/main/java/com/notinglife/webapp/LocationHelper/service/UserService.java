package com.notinglife.webapp.LocationHelper.service;

import com.notinglife.webapp.LocationHelper.domain.User;

import java.util.List;

/**
 * 用户的服务层接口
 *
 * @author saginardo
 * @version v1.0
 * @date 2017-07-06 14:01
 */
public interface UserService {

    User findByUserName(String username) throws Exception;
    User findByEmailAddress(String emailAddress) throws Exception;
    User findByPrimaryKey(Integer id) throws Exception;
    List<User> findUserAll() throws Exception;
    int addUser(User user) throws Exception;
}
