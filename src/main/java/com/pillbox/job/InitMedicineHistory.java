package com.pillbox.job;

import com.pillbox.dao.DrugManagementDao;
import com.pillbox.dao.TimeDoseDao;
import com.pillbox.dao.UserDao;
import com.pillbox.po.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * User:  maktub
 * Date:   16/5/13 上午12:35
 */
@Component
public class InitMedicineHistory {

    @Autowired
    private DrugManagementDao drugDao;

    @Autowired
    private UserDao userDao;

    @Autowired
    private TimeDoseDao timeDoseDao;


    //每天凌晨1点执行一次 把当天的服药情况设置为待服药
    @Scheduled(cron = "0 0 1 * * *")
    public void init() {

        List<User> user = this.userDao.selectAll();

    }

}
