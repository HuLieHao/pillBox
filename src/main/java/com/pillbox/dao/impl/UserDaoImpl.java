package com.pillbox.dao.impl;

import com.pillbox.dao.UserDao;
import com.pillbox.po.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * User:  maktub
 * Date:   16/4/4 下午11:51
 */
@Repository
@Transactional
public class UserDaoImpl implements UserDao {

    @Autowired
    private SessionFactory sessionFactory;

    private Session getSession() {
        return this.sessionFactory.openSession();
    }

    @Override
    public void save(User user) {
        Session session = getSession();
        session.saveOrUpdate(user);
        session.flush();
        session.close();
    }

    @Override
    public User selectByOpenId(String openId) {
        Session session = getSession();
        List<User> list = session.createQuery("from User where open_id = :openId").setParameter("openId", openId).list();
        session.close();
        System.out.println("查询openId:" + openId + " size: " + list.size());
        if (list.size() > 0) {
            return list.get(0);
        }else {
            User user = new User();
            user.setOpen_id(openId);
            save(user);
            return user;
        }
    }

    @Override
    public List<User> selectAll() {
        Session session = getSession();
        List<User> list = session.createQuery("from User").list();
        session.close();
        return list;
    }
}
