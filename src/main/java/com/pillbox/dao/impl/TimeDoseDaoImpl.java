package com.pillbox.dao.impl;

import com.pillbox.dao.TimeDoseDao;
import com.pillbox.po.TimeDose;
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

    @Override
    public void save(TimeDose dose) {
        this.sessionFactory.openSession().save(dose);
    }
}
