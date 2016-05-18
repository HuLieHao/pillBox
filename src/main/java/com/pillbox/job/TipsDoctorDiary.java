package com.pillbox.job;

import com.pillbox.dao.DoctorDiaryDao;
import com.pillbox.dao.MedicineHistoryDao;
import com.pillbox.dao.UserDao;
import com.pillbox.po.DoctorDiary;
import com.pillbox.po.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.util.Date;
import java.util.List;

/**
 * 医生预约日记提醒
 * User:  maktub
 * Date:   16/5/17 上午12:15
 */
@Component
public class TipsDoctorDiary {

    @Autowired
    private UserDao userDao;

    @Autowired
    private DoctorDiaryDao diaryDao;

    @Autowired
    private MedicineHistoryDao historyDao;

    /**
     * 每天早上8点提醒当天的医生预约
     */
    @Scheduled(cron = "0 0 8 * * *")
    public void init() {

        List<DoctorDiary> list = this.diaryDao.selectByStatus("1", new Date());

        for (DoctorDiary diary : list) {

        }
    }

    public void pushMessage(DoctorDiary diary) {

    }
}
