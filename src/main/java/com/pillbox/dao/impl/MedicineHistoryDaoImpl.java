package com.pillbox.dao.impl;

import com.pillbox.dao.MedicineHistoryDao;
import com.pillbox.po.DrugManagement;
import com.pillbox.po.MedicineHistory;
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
 * Date:   16/5/13 上午12:50
 */
@Repository
@Transactional
public class MedicineHistoryDaoImpl implements MedicineHistoryDao {

    @Autowired
    private SessionFactory sessionFactory;

    private Session getSession() {
        return this.sessionFactory.openSession();
    }

    @Override
    public void save(MedicineHistory history) {
        Session session = getSession();
        session.save(history);
        session.close();
    }

    @Override
    public void delete(MedicineHistory history) {
        Session session = getSession();
        session.delete(history);
        session.flush();
        session.close();
    }

    @Override
    public void update(MedicineHistory history) {
        Session session = getSession();
        session.update(history);
        session.flush();
        session.close();
    }

    @Override
    public List<MedicineHistory> selectByUser(User user) {
        Session session = getSession();
        List<MedicineHistory> histories = session.createQuery("from MedicineHistory where user = :user").setParameter("user", user).list();
        session.close();
        return histories;
    }

    @Override
    public List<MedicineHistory> selectByUserGreaterDate(User user, Date date) {
        Session session = getSession();
        List<MedicineHistory> histories = session.createQuery("from MedicineHistory where user = :user and drug.endtime > :endtime order by timeDose.time")
                                                    .setParameter("user", user).setParameter("endtime", date).list();
        session.close();
        return histories;
    }

    @Override
    public void deleteByDrugAndStauts(DrugManagement drug, String status) {
        Session session = getSession();
        int n = session.createQuery("delete from DrugManagement where drug = :drug and status = :status").setParameter("drug", drug).setParameter("status", status).executeUpdate();
        System.out.println("删除服药历史记录数: " + n);
        session.close();
    }

    @Override
    public List<MedicineHistory> selectByEndTime(Long time) {
        Session session = getSession();
        List<MedicineHistory> histories = session.createQuery("from MedicineHistory where timeDose.time = :time").setParameter("time", time).list();
        session.close();
        return histories;
    }
}