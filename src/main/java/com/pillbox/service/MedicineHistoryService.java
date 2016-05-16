package com.pillbox.service;

import com.pillbox.po.MedicineHistory;

import java.util.Date;
import java.util.List;

/**
 * User:  maktub
 * Date:   16/5/13 上午12:50
 */
public interface MedicineHistoryService {


    /**
     * 查询当天的服药情况
     * @param openId
     * @return
     */
    List<MedicineHistory> selectBytoDay(String openId);

    /**
     * 更新服药状态
     * @param id
     * @param status
     */
    void updateMedicineStatus(Long id, String status);

    /**
     * 通过开始日期和结束日期查询服药历史
     * @param startDate
     * @return
     */
    List<MedicineHistory> selectByDates(Date startDate);
}
