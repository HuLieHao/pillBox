package com.pillbox.service.impl;

import com.pillbox.dao.UserDao;
import com.pillbox.po.User;
import com.pillbox.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * User:  maktub
 * Date:   16/4/6 上午12:02
 */
@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public void save(User user) {
        this.userDao.save(user);
    }
}
