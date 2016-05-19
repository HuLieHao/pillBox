package com.pillbox.service.impl;

import com.pillbox.dao.DrugManagementDao;
import com.pillbox.dao.MedicineHistoryDao;
import com.pillbox.dao.UserDao;
import com.pillbox.po.DrugManagement;
import com.pillbox.po.MedicineHistory;
import com.pillbox.po.User;
import com.pillbox.service.MedicineHistoryService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
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

    @Autowired
    private DrugManagementDao drugDao;

    @Override
    public List<MedicineHistory> selectBytoDay(String openId) {

        User user = this.userDao.selectByOpenId(openId);
        DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        Date startDate = null;
        Date endDate = null;
        try {

            startDate = format.parse(format.format(new Date()));
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(startDate);
            calendar.add(Calendar.DAY_OF_MONTH, +1);
            endDate = calendar.getTime();

        } catch (ParseException e) {
            e.printStackTrace();
        }
        return this.historyDao.selectByDate(user, startDate, endDate);
    }

    @Override
    public void updateMedicineStatus(Long id, String status) {
        MedicineHistory history = this.historyDao.selectById(id);
        DrugManagement drug = history.getDrug();
        if ("1".equals(status)) { //已服药
            if (!"1".equals(history.getStatus())) {
                drug.setSurplus(drug.getSurplus() - history.getTimeDose().getNum());
                this.drugDao.update(drug);
            }
        }else { //错过 跳过
            if ("1".equals(history.getStatus())) {
                drug.setSurplus(drug.getSurplus() + history.getTimeDose().getNum());
                this.drugDao.update(drug);
            }
        }

        history.setStatus(status);
        history.setStatusStr(MedicineHistoryDao.Status.getStatsStr(status));
        this.historyDao.update(history);
    }

    /**
     * 通过关健字查询 服药记录
     *
     * @param keywords
     * @return
     */
    @Override
    public List<MedicineHistory> selectByKeywords(String openId, String keywords) {
        DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        User user = this.userDao.selectByOpenId(openId);
        try {
            if (StringUtils.isEmpty(keywords)) keywords = format.format(new Date());
            Date startDate = format.parse(keywords);
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(startDate);
            calendar.add(Calendar.DAY_OF_MONTH, +1);
            Date endDate = calendar.getTime();

            return this.historyDao.selectByDate(user,startDate, endDate);

        } catch (ParseException e) {
            return this.historyDao.selectByDrugName(user, keywords);
        }
    }
}
