package com.pillbox.job;

import com.pillbox.dao.MedicineHistoryDao;
import com.pillbox.po.MedicineHistory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * 提醒药品剩余用量
 * User:  maktub
 * Date:   16/5/17 上午12:16
 */
@Component
public class TipsMedicineDose {

    @Autowired
    private MedicineHistoryDao medicineHistoryDao;


    /**
     * 每天早上8点提醒药品剩余量
     */
    @Scheduled(cron = "0 0 8 * * *")
    public void init() {

        List<MedicineHistory> historyies = this.medicineHistoryDao.selectBySurplus(5L);

    }

}
