package com.pillbox.service;

import com.pillbox.po.User;

/**
 * User:  maktub
 * Date:   16/4/6 上午12:02
 */
public interface UserService {

//    void save(User user);

    User selectByOpenId(String openId);
}
