package com.pillbox.dao.impl;

import com.pillbox.dao.UserDao;
import com.pillbox.po.User;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

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
        this.sessionFactory.openSession().save(user);
    }

    @Override
    public User selectByOpenId(String openId) {
        List<User> list = this.sessionFactory.openSession().createQuery("from User where open_id = :openId").setParameter("openId", openId).list();
        if (list.size() > 0) return list.get(0);
        return null;
    }
}
