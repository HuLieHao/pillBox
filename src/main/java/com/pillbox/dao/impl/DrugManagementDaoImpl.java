package com.pillbox.dao.impl;

import com.pillbox.dao.DrugManagementDao;
import com.pillbox.po.DrugManagement;
import com.pillbox.po.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

/**
 * User:  maktub
 * Date:   16/5/11 下午12:06
 */
@Repository
@Transactional
public class DrugManagementDaoImpl implements DrugManagementDao {

    @Autowired
    private SessionFactory sessionFactory;

    private Session getSession() {
        return this.sessionFactory.openSession();
    }

    @Override
    public void save(DrugManagement drugManagement) {
        Session session = getSession();
        session.save(drugManagement);
        session.close();
    }

    @Override
    public void update(DrugManagement drugManagement) {
        Session session = getSession();
        session.update(drugManagement);
        session.flush();
        session.close();
    }

    @Override
    public void delete(DrugManagement drugManagement) {
        Session session = getSession();
        session.delete(drugManagement);
        session.flush();
        session.close();
    }

    @Override
    public void saveOrUpdate(DrugManagement drug) {
        Session session = getSession();
        session.saveOrUpdate(drug);
        session.flush();
        session.close();
    }

    @Override
    public List<DrugManagement> selectByOpenId(User user) {
        Session session = getSession();
        List<DrugManagement> drugs = session.createQuery("from DrugManagement where user = :user").setParameter("user", user).list();
        session.close();
        return drugs;
    }

    @Override
    public List<DrugManagement> selecByOpenIdToday(User user) {
        Session session = getSession();
        List<DrugManagement> drugs = session.createQuery("from DrugManagement where user = :user and endtime >= :endtime").setParameter("user", user).setParameter("endtime", new Date()).list();
        session.close();
        return drugs;
    }

    @Override
    public DrugManagement selectById(Long id) {
        Session session = getSession();
        List<DrugManagement> drugs = session.createQuery("from DrugManagement where id = :id").setParameter("id", id).list();
        session.close();
        if (drugs.size() > 0)  return drugs.get(0);
        return null;
    }
}
