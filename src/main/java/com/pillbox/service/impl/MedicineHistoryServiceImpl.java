package com.pillbox.service.impl;

import com.pillbox.dao.MedicineHistoryDao;
import com.pillbox.dao.UserDao;
import com.pillbox.po.MedicineHistory;
import com.pillbox.po.User;
import com.pillbox.service.MedicineHistoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * User:  maktub
 * Date:   16/5/13 上午12:50
 */
@Service
public class MedicineHistoryServiceImpl implements MedicineHistoryService {

    @Autowired
    private UserDao userDao;

    @Autowired
    private MedicineHistoryDao historyDao;

    @Override
    public List<MedicineHistory> selectBytoDay(String openId) {

        User user = this.userDao.selectByOpenId(openId);
        DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        Date date = null;
        try {
            date = format.parse(format.format(new Date()));
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return this.historyDao.selectByUserGreaterDate(user, date);
    }

    @Override
    public void updateMedicineStatus(Long id, String status) {
        MedicineHistory history = this.historyDao.selectById(id);
        history.setStatus(status);
        history.setStatusStr(MedicineHistoryDao.Status.getStatsStr(status));
        this.historyDao.update(history);
    }

    /**
     * 查询开始日期到今天的服药历史记录
     *
     * @param startDate
     * @return
     */
    @Override
    public List<MedicineHistory> selectByDates(Date startDate) {

        return null;
    }
}
