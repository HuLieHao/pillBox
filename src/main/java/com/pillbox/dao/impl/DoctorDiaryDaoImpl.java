package com.pillbox.dao.impl;

import com.pillbox.dao.DoctorDiaryDao;
import com.pillbox.po.DoctorDiary;
import com.pillbox.po.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * User:  maktub
 * Date:   16/5/12 下午7:58
 */
@Repository
@Transactional
public class DoctorDiaryDaoImpl implements DoctorDiaryDao {

    @Autowired
    private SessionFactory sessionFactory;

    private Session getSession() {
        return this.sessionFactory.openSession();
    }

    @Override
    public void delete(DoctorDiary diary) {
        Session session = getSession();
        session.delete(diary);
        session.flush();
        session.close();
    }

    @Override
    public void update(DoctorDiary diary) {
        Session session = getSession();
        session.update(diary);
        session.flush();
        session.close();
    }

    @Override
    public void save(DoctorDiary diary) {
        Session session = getSession();
        session.save(diary);
        session.close();
    }

    @Override
    public DoctorDiary selectById(Long id) {
        Session session = getSession();
        List<DoctorDiary> diaryList = session.createQuery("from DoctorDiary where id = :id").setParameter("id", id).list();
        session.close();
        if (diaryList.size() > 0) return diaryList.get(0);
        return null;
    }

    @Override
    public List<DoctorDiary> selectByUser(User user) {
        Session session = getSession();
        List<DoctorDiary> diaryList = session.createQuery("from DoctorDiary where user = :user").setParameter("user", user).list();
        session.close();
        return diaryList;
    }
}
