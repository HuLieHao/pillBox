package com.pillbox.service;

import com.pillbox.po.DoctorDiary;

import java.util.Date;
import java.util.List;

/**
 * User:  maktub
 * Date:   16/5/12 下午7:59
 */
public interface DoctorDiaryService {

    DoctorDiary selectById(Long diary_id);

    void saveOrUpdate(String openId, Long diary_id, Date appointment_time, String doctor_name, String remarks, String is_remind);

    void delete(Long diary_id);

    List<DoctorDiary> selectByOpenId(String openId);
}
