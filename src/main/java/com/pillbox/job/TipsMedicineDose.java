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

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
        for (MedicineHistory history : historyies) {
            pushTempalte(history);
        }
    }

    public void pushTempalte(MedicineHistory history) {

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
        System.out.println(isSuccess == true ? "剂量 提醒成功..." : "剂量 提醒失败...");
    }

}
