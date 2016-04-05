package com.pillbox.dao.impl;

import com.pillbox.dao.UserDao;
import com.pillbox.po.User;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * User:  maktub
 * Date:   16/4/4 下午11:51
 */
@Repository
public class UserDaoImpl implements UserDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void save(User user) {
        this.sessionFactory.getCurrentSession().save(user);
    }
}
