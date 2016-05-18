package com.pillbox.job;

import com.alibaba.fastjson.JSONObject;
import com.pillbox.dao.MedicineHistoryDao;
import com.pillbox.po.DrugManagement;
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
     * 当剩余量少于5时提醒
     */
//    @Scheduled(cron = "0 0 8 * * *")
    @Scheduled(fixedDelay = 30000)
    public void init() {

        System.out.println("扫描药品剩余量....");

        List<MedicineHistory> historyies = this.medicineHistoryDao.selectBySurplus(5L);
        System.out.println("size: " + historyies.size());
        for (MedicineHistory history : historyies) {
            pushTempalte(history.getDrug());
        }
    }

    public void pushTempalte(DrugManagement drug) {

        Map<String, Object> map = new HashMap<String, Object>();
        String openId = drug.getUser().getOpen_id();
        map.put("touser", openId);
        map.put("template_id", WxCons.TIPS_MEDICINE_SUPLUS);
        map.put("url", WxParams.getWxServerHost() + "/pillBox/medicine/toAddPrescription?drugId="+ drug.getId() + "&openId=" + openId);

        Map<String, Map<String, String>> data = new HashMap<String, Map<String, String>>();

        Map<String, String> name = new HashMap<String, String>();
        name.put("value", drug.getName());
        name.put("color", "#173177");

        Map<String, String> suplus = new HashMap<String, String>();
        suplus.put("value", drug.getSurplus() + " " + drug.getUnitStr());
        suplus.put("color", "#173177");

        data.put("name", name);
        data.put("dose", suplus);

        map.put("data", data);

        String entity = JSONObject.toJSONString(map);

        boolean isSuccess = WeiXinUtil.sendTipsMedicine(entity);
        System.out.println(isSuccess == true ? "剂量 提醒成功..." : "剂量 提醒失败...");
    }

}
