package com.pillbox.dao.impl;

import com.pillbox.dao.TimeDoseDao;
import com.pillbox.po.TimeDose;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * User:  maktub
 * Date:   16/5/11 下午3:58
 */
@Repository
public class TimeDoseDaoImpl implements TimeDoseDao {

    @Autowired
    private SessionFactory sessionFactory;

    private Session getSession() {
        return this.sessionFactory.openSession();
    }

    @Override
    public void save(TimeDose dose) {
        Session session = getSession();
        session.save(dose);
        session.close();
    }

    @Override
    public void update(TimeDose dose) {
        Session session = getSession();
        session.update(dose);
        session.flush();
        session.close();
    }

    @Override
    public void delete(TimeDose dose) {
        Session session = getSession();
        session.delete(dose);
        session.flush();
        session.close();
    }

    @Override
    public void deleteById(Long id) {
        Session session = getSession();
        int n = session.createQuery("delete from TimeDose where id = :id").setParameter("id", id).executeUpdate();
        session.close();
    }
}
