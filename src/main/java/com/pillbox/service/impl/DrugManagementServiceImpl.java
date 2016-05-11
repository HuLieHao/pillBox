package com.pillbox.service.impl;

import com.pillbox.dao.DrugManagementDao;
import com.pillbox.po.DrugManagement;
import com.pillbox.po.TimeDose;
import com.pillbox.po.User;
import com.pillbox.service.DrugManagementService;
import com.pillbox.service.TimeDoseService;
import com.pillbox.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * User:  maktub
 * Date:   16/5/11 下午12:11
 */
@Service
@Transactional
public class DrugManagementServiceImpl implements DrugManagementService {

    @Autowired
    private UserService userService;

    @Autowired
    private TimeDoseService timeDoseService;

    @Autowired
    private DrugManagementDao drugDao;


    @Override
    public DrugManagement save(String openId, String medicineName, String surplus, String unit,
                               String takeResion, String takeWay, String doctor, String add_remind,
                               String gap, String times_dose_times, String persist, String dose_type) {

        DrugManagement drug = new DrugManagement();

        User user = this.userService.selectByOpenId(openId);

        Set<TimeDose> timeDoses = formatTime(times_dose_times, drug);

        drug.setUser(user);
        drug.setName(medicineName);
        drug.setSurplus(surplus);
        drug.setUnit(unit);
        drug.setTake_resion(takeResion);
        drug.setTake_way(takeWay);
        drug.setDoctor(doctor);
        drug.setAdd_remind(add_remind == null || "".equals(add_remind) ? "0" : "1");
        drug.setGap(gap);
        drug.setTimes_dose(timeDoses);
        drug.setPersist(persist);
        drug.setDose_type(dose_type);

        this.drugDao.save(drug);

        return drug;
    }

    @Override
    public List<DrugManagement> selectByOpenId(String openId) {
        User user = this.userService.selectByOpenId(openId);
        return this.drugDao.selectByOpenId(user);
    }


    private String formatTime(int dose_time) {
        StringBuilder sb = new StringBuilder();
        sb.append(String.format("%02d", dose_time / 3600)).append(" : ").append(String.format("%02d", dose_time / 60 % 60));
        return sb.toString();
    }

    private Set<TimeDose> formatTime(String times_dose_times, DrugManagement drug) {

        Set<TimeDose> timeDoses = new HashSet<TimeDose>();
        String[] dose_time_nums = times_dose_times.split(";");

        for (String dose_time_num : dose_time_nums) {
            try {
                String dose_time = dose_time_num.substring(0, dose_time_num.indexOf("("));
                String dose_num = dose_time_num.substring(dose_time_num.indexOf("(") + 1, dose_time_num.indexOf(")"));
                String[] times = dose_time.split(":");
                Long time = Long.parseLong(times[0]) * 3600 + Long.parseLong(times[1]) * 60;
                Long num = Long.parseLong(dose_num);

                TimeDose timeDose = new TimeDose();
                timeDose.setTime(time);
                timeDose.setTime_str(dose_time);
                timeDose.setNum(num);
                timeDose.setDrug(drug);

                timeDoses.add(timeDose);

            }catch (Exception e) {
                e.printStackTrace();
            }
        }
        return timeDoses;
    }

}
