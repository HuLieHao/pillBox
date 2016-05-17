package com.pillbox.job;

import com.pillbox.dao.DrugManagementDao;
import com.pillbox.dao.MedicineHistoryDao;
import com.pillbox.dao.TimeDoseDao;
import com.pillbox.dao.UserDao;
import com.pillbox.po.DrugManagement;
import com.pillbox.po.MedicineHistory;
import com.pillbox.po.TimeDose;
import com.pillbox.po.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Set;

/**
 * 初始化每天的服药状态为待服药
 * User:  maktub
 * Date:   16/5/13 上午12:35
 */
@Component
public class InitMedicineHistory implements Runnable{

    @Autowired
    private DrugManagementDao drugDao;

    @Autowired
    private UserDao userDao;

    @Autowired
    private MedicineHistoryDao historyDao;

    private List<DrugManagement> drugs;

    public InitMedicineHistory(){};

    public InitMedicineHistory(List<DrugManagement> drugs) {
        this.drugs = drugs;
    }

    //每天凌晨1点执行一次 把当天的服药情况设置为待服药
    @Scheduled(cron = "0 0 1 * * *")
//    @Scheduled(fixedDelay =60000)
    public void init() {

        System.out.println("执行初始化线程");
        List<User> users = this.userDao.selectAll();

        for (User user : users) {
            List<DrugManagement> drugs = this.drugDao.selecByOpenIdToday(user);
            dealDrug(drugs);
//            pushTask(new InitMedicineHistory(drugs));
        }

    }

    @Override
    public void run() {
        dealDrug(this.drugs);
    }

    public void dealDrug(List<DrugManagement> drugs) {
        for (DrugManagement drug : drugs) {
            dealTimeDose(drug);
        }
    }

    public void dealTimeDose(DrugManagement drug) {

        Set<TimeDose> timeDoses = drug.getTimes_dose();

        for (TimeDose dose : timeDoses) {

            MedicineHistory history = new MedicineHistory();

            history.setUser(drug.getUser());
            history.setDrug(drug);
            history.setStatus("2");
            history.setStatusStr(MedicineHistoryDao.Status.getStatsStr("2"));
            history.setTimeDose(dose);

            this.historyDao.save(history);
        }
    }

}
