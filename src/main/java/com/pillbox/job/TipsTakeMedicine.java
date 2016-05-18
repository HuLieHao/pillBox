package com.pillbox.job;

import com.alibaba.fastjson.JSONObject;
import com.pillbox.dao.MedicineHistoryDao;
import com.pillbox.po.MedicineHistory;
import com.pillbox.utils.WeiXinUtil;
import com.pillbox.utils.WxCons;
import com.pillbox.utils.WxParams;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 提前10分钟提醒用户服药
 * User:  maktub
 * Date:   16/5/16 上午10:27
 */
@Component
public class TipsTakeMedicine {

    @Autowired
    private MedicineHistoryDao historyDao;

    /**
     * 提醒服药一分钟扫描一次 提前10分钟提醒
     */
    @Scheduled(cron = "0 */1 * * * *")
    private void init() {

        Long time = calTime();
        System.out.println("扫描计算时间: " + formatTime(time));

        List<MedicineHistory> histories = this.historyDao.selectByEndTime(time);
        for (MedicineHistory history : histories) {
            tipsTakeMedicine(history);
        }
    }

    private void tipsTakeMedicine(MedicineHistory history) {


        Map<String, Object> map = new HashMap<String, Object>();
        String openId = history.getUser().getOpen_id();
        map.put("touser", openId);
        map.put("template_id", WxCons.TIPS_MEDICINE_TEMPLATE);
        map.put("url", WxParams.getWxServerHost() + "/pillBox/medicine/toDayMedicine?openId=" + openId);

        Map<String, Map<String, String>> data = new HashMap<String, Map<String, String>>();

            Map<String, String> name = new HashMap<String, String>();
            name.put("value", history.getDrug().getName());
            name.put("color", "#173177");

            Map<String, String> time = new HashMap<String, String>();
            time.put("value", history.getTimeDose().getTime_str());
            time.put("color", "#173177");


            Map<String, String> dose = new HashMap<String, String>();
            dose.put("value", history.getTimeDose().getNum() + " " + history.getDrug().getUnitStr());
            dose.put("color", "#173177");

        data.put("name", name);
        data.put("time", time);
        data.put("dose", dose);

        map.put("data", data);

        String entity = JSONObject.toJSONString(map);

        boolean isSuccess = WeiXinUtil.sendTipsMedicine(entity);
        System.out.println(isSuccess == true ? "服药 提醒成功..." : "服药 提醒失败...");
    }

    private Long calTime() {

        DateFormat format = new SimpleDateFormat("HH:mm");
        String[] times = format.format(new Date()).split(":");
        System.out.println("扫描当前时间: " + times[0] + ":" + times[1]);
        Long time = Long.parseLong(times[0]) * 3600 + Long.parseLong(times[1]) * 60;

        return time + 10 * 60;
    }

    private String formatTime(Long dose_time) {
        StringBuilder sb = new StringBuilder();
        sb.append(String.format("%02d", dose_time / 3600)).append(" : ").append(String.format("%02d", dose_time / 60 % 60));
        return sb.toString();
    }

    public static void main(String[] args) {
        TipsTakeMedicine tips = new TipsTakeMedicine();
        Long time = tips.calTime();
        String str = tips.formatTime(time);
        System.out.println(str);
    }
}
