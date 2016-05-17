package com.pillbox.job;

import com.pillbox.dao.DoctorDiaryDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * 医生预约日记提醒
 * User:  maktub
 * Date:   16/5/17 上午12:15
 */
@Component
public class TipsDoctorDiary {

    @Autowired
    private DoctorDiaryDao diaryDao;
}
