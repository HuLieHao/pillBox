package com.pillbox.service;

import com.pillbox.po.DrugManagement;

import java.util.List;

/**
 * User:  maktub
 * Date:   16/5/11 下午12:11
 */
public interface DrugManagementService {

    DrugManagement saveOrUpdate(Long drugId, String openId, String medicineName, String surplus, String unit, String takeResion, String takeWay, String doctor, String add_remind, String gap, String times_dose_times, String persist, String dose_type);

    List<DrugManagement> selectByOpenId(String openId);

    DrugManagement selectById(Long id);

    void delete(Long drugId);

    DrugManagement updateSurplus(Long drugId, String surplus);
}
