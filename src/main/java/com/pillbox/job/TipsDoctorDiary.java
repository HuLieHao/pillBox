package com.pillbox.job;

import com.alibaba.fastjson.JSONObject;
import com.pillbox.dao.DoctorDiaryDao;
import com.pillbox.dao.MedicineHistoryDao;
import com.pillbox.dao.UserDao;
import com.pillbox.po.DoctorDiary;
import com.pillbox.po.MedicineHistory;
import com.pillbox.po.User;
import com.pillbox.utils.WeiXinUtil;
import com.pillbox.utils.WxCons;
import com.pillbox.utils.WxParams;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * 医生预约日记提醒
 * User:  maktub
 * Date:   16/5/17 上午12:15
 */
@Component
public class TipsDoctorDiary {

    @Autowired
    private DoctorDiaryDao diaryDao;

    /**
     * 每天早上8点提醒当天的医生预约
     */
//    @Scheduled(cron = "0 0 8 * * *")
    @Scheduled(fixedDelay = 120000)
    public void init() throws ParseException {

        System.out.println("扫描医生预约....");

        DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(format.parse(format.format(new Date())));
        Date startDate = calendar.getTime();
        calendar.add(Calendar.DAY_OF_MONTH, +1);
        Date endDate = calendar.getTime();

        List<DoctorDiary> list = this.diaryDao.selectByStatus("1", startDate, endDate);
        System.out.println("size: " + list.size());

        for (DoctorDiary diary : list) {
            pushTempalte(diary);
        }
    }

    public void pushTempalte(DoctorDiary diary) {

        Map<String, Object> map = new HashMap<String, Object>();
        String openId = diary.getUser().getOpen_id();
        map.put("touser", openId);
        map.put("template_id", WxCons.TIPS_DOCTOR_DIARY);
        map.put("url", WxParams.getWxServerHost() + "/pillBox/health/toDoctorDiary?openId=" + openId);

        Map<String, Map<String, String>> data = new HashMap<String, Map<String, String>>();

        Map<String, String> time = new HashMap<String, String>();
        DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm");
        time.put("value", format.format(diary.getAppointment_time()));
        time.put("color", "#173177");

        Map<String, String> name = new HashMap<String, String>();
        name.put("value", diary.getDoctor_name());
        name.put("color", "#173177");

        Map<String, String> remark = new HashMap<String, String>();
        remark.put("value", diary.getRemarks());
        remark.put("color", "#173177");

        data.put("name", name);
        data.put("time", time);
        data.put("dose", remark);

        map.put("data", data);

        String entity = JSONObject.toJSONString(map);

        boolean isSuccess = WeiXinUtil.sendTipsMedicine(entity);
        System.out.println(isSuccess == true ? "医生预约 提醒成功..." : "医生预约 提醒失败...");
    }

}
