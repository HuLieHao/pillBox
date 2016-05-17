package com.pillbox.dao;

import com.pillbox.po.DoctorDiary;
import com.pillbox.po.User;

import java.util.Date;
import java.util.List;

/**
 * User:  maktub
 * Date:   16/5/12 下午7:58
 */
public interface DoctorDiaryDao {

    DoctorDiary selectById(Long id);

    void save(DoctorDiary diary);

    void update(DoctorDiary diary);

    void delete(DoctorDiary diary);

    List<DoctorDiary> selectByUser(User user);

    /**
     * 通过状态查询和日期查询医生的预约日记
     * @param status
     * @return
     */
    List<DoctorDiary> selectByStatus(String status, Date date);

}
