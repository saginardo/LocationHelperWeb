package com.notinglife.webapp.LocationHelper.mapper;

import com.notinglife.webapp.LocationHelper.domain.User;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 用户类的mybatis映射文件
 *
 * @author saginardo
 * @version v1.0
 * @date 2017-07-04 9:14
 */
@Repository("userMapper")
public interface UserMapper {

    int deleteByPrimaryKey(Integer id)throws Exception;

    int insert(User record)throws Exception;

    int insertSelective(User record)throws Exception;

    User findByPrimaryKey(Integer id)throws Exception;

    int updateByPrimaryKeySelective(User record)throws Exception;

    int updateByPrimaryKey(User record)throws Exception;

    User findByUsername(String username) throws Exception;
    List<User> findUserAll() throws Exception;
}