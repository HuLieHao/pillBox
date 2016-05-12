package com.pillbox.dao;

import com.pillbox.po.User;

import java.util.List;

/**
 * User:  maktub
 * Date:   16/4/4 下午11:51
 */
public interface UserDao {

    void save(User user);

    User selectByOpenId(String openId);

    List<User> selectAll();

}
