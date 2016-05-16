package com.pillbox.service;

import com.pillbox.po.MedicineHistory;

import java.util.List;

/**
 * User:  maktub
 * Date:   16/5/13 上午12:50
 */
public interface MedicineHistoryService {

    List<MedicineHistory> selectByUserGreaterDate(String openId);

    void updateMedicineStatus(Long id, String status);
}
