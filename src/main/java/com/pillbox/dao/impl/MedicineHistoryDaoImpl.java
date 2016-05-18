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

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
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

    /**
     * 通过ID查询服药历史记录
     *
     * @param id
     * @return
     */
    @Override
    public MedicineHistory selectById(Long id) {
        Session session = getSession();
        List<MedicineHistory> histories = session.createQuery("from MedicineHistory where id = :id").setParameter("id", id).list();
        session.close();
        if (histories.size() > 0) return histories.get(0);
        return null;
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
    public void deleteByDrug(DrugManagement drug) {
        Session session = getSession();
        int n = session.createQuery("delete from MedicineHistory where drug = :drug").setParameter("drug", drug).executeUpdate();
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

    /**
     * 查询时间介于startDate和endDate的记录
     *
     * @param startDate
     * @param endDate
     * @return
     */
    @Override
    public List<MedicineHistory> selectByDate(User user, Date startDate, Date endDate) {
        Session session = getSession();
        List<MedicineHistory> histories = session.createQuery("from MedicineHistory where user = :user and intime >= :startDate and intime <= :endDate")
                                                    .setParameter("user", user).setParameter("startDate", startDate).setParameter("endDate", endDate).list();
        session.close();
        return histories;
    }

    /**
     * 通过药品名查询记录
     *
     * @param drugName
     * @return
     */
    @Override
    public List<MedicineHistory> selectByDrugName(User user, String drugName) {
        Session session = getSession();
        List<MedicineHistory> histories = session.createQuery("from MedicineHistory where user = :user and drug.name = :name").setParameter("user", user).setParameter("name", drugName).list();
        session.close();
        return histories;
    }

    @Override
    public List<MedicineHistory> selectBySurplus(Long surplus) {
        Session session = getSession();
        DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        try {
            Date date = format.parse(format.format(new Date()));
            List<MedicineHistory> histories = session.createQuery("from MedicineHistory where intime >= :intime and drug.surplus <= :surplus").setParameter("intime", date).setParameter("surplus", surplus).list();
            session.close();
            return histories;
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return new ArrayList<MedicineHistory>();
    }

    @Override
    public void deleteTodayHistory(DrugManagement drug) {
        Session session = getSession();
        DateFormat format = new SimpleDateFormat("yyyy-mm-dd");
        try {
            Date date = format.parse(format.format(new Date()));
            session.createQuery("delete from MedicineHistory where drug = :drug and intime >= :intime").setParameter("drug", drug).setParameter("intime", date).executeUpdate();
            session.close();
        } catch (ParseException e) {
            e.printStackTrace();
        }
    }
}
