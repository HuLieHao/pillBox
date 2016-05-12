package com.pillbox.service.impl;

import com.pillbox.dao.DoctorDiaryDao;
import com.pillbox.po.DoctorDiary;
import com.pillbox.po.User;
import com.pillbox.service.DoctorDiaryService;
import com.pillbox.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * User:  maktub
 * Date:   16/5/12 下午7:59
 */
@Service
public class DoctorDiaryServiceServiceImpl implements DoctorDiaryService {

    @Autowired
    private DoctorDiaryDao diaryDao;

    @Autowired
    private UserService userService;

    @Override
    public DoctorDiary selectById(Long diary_id) {

        if (diary_id == null) return null;

        return this.diaryDao.selectById(diary_id);
    }

    @Override
    public void saveOrUpdate(String openId, Long diary_id, Date appointment_time, String doctor_name, String remarks, String is_remind) {

        DoctorDiary diary = this.diaryDao.selectById(diary_id);
        if (diary == null) {
            diary = new DoctorDiary();
        }

        User user = this.userService.selectByOpenId(openId);

        diary.setUser(user);
        diary.setAppointment_time(appointment_time);
        diary.setDoctor_name(doctor_name);
        diary.setRemarks(remarks);
        diary.setIs_remind(is_remind == null || "".equals(is_remind) ? "0" : "1");

        if (diary.getId() == null) this.diaryDao.save(diary);
        else this.diaryDao.update(diary);
    }

    @Override
    public void delete(Long diary_id) {

        if (diary_id == null) return;

        DoctorDiary diary = this.diaryDao.selectById(diary_id);
        if (diary != null) this.diaryDao.delete(diary);
    }

    @Override
    public List<DoctorDiary> selectByOpenId(String openId) {
        User user = this.userService.selectByOpenId(openId);
        return this.diaryDao.selectByUser(user);
    }
}
