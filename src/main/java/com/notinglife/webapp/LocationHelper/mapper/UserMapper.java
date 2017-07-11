package com.notinglife.webapp.LocationHelper.mapper;

import com.notinglife.webapp.LocationHelper.domain.User;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("userMapper")
public interface UserMapper {

    User selectByPrimaryKey(Integer id) throws Exception;

    int deleteByPrimaryKey(Integer id) throws Exception;

    int insert(User record) throws Exception;

    int insertSelective(User record) throws Exception;

    User findByPrimaryKey(Integer id) throws Exception;

    int updateByPrimaryKeySelective(User record) throws Exception;

    int updateByPrimaryKey(User record) throws Exception;

    User findByUsername(String username) throws Exception;

    List<User> findUserAll() throws Exception;

    User findByEmailAddress(String emailAddress) throws Exception;
}