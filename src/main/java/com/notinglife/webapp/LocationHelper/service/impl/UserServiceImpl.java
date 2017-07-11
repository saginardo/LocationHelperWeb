package com.notinglife.webapp.LocationHelper.service.impl;

import com.notinglife.webapp.LocationHelper.domain.User;
import com.notinglife.webapp.LocationHelper.mapper.UserMapper;
import com.notinglife.webapp.LocationHelper.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 用户的服务层逻辑
 *
 * @author saginardo
 * @version v1.0
 * @date 2017-07-06 14:03
 */
@Service("userService")
public class UserServiceImpl  implements UserService{

    @Autowired
    private UserMapper userMapper;

    @Override
    public User findByUserName(String username) throws Exception {
        User user = userMapper.findByUsername(username);
        return user;
    }

    @Override
    public User findByEmailAddress(String emailAddress) throws Exception {
        return userMapper.findByEmailAddress(emailAddress);
    }

    @Override
    public User findByPrimaryKey(Integer id) throws Exception {
        User user = userMapper.findByPrimaryKey(id);
        return user;
    }

    @Override
    public List<User> findUserAll() throws Exception {
        List<User> list = userMapper.findUserAll();
        return list;
    }

    @Override
    public int addUser(User user) throws Exception {
        int insert = userMapper.insert(user);
        return insert;
    }
}
