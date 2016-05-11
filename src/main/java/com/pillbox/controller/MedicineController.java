package com.pillbox.controller;

import com.pillbox.po.DrugManagement;
import com.pillbox.po.User;
import com.pillbox.service.DrugManagementService;
import com.pillbox.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * User:  maktub
 * Date:   16/2/16 下午9:48
 *
 */
@Controller
@RequestMapping("/medicine")
public class MedicineController {

    @Autowired
    private UserService userService;

    @Autowired
    private DrugManagementService drugManagementService;


    @RequestMapping("/index")
    public String index(ModelMap model) {


//        User user = new User();
//        user.setOpen_id("123141");
//        this.userService.save(user);

        model.addAttribute("message", "你好");
        return "hello";
    }

    /**
     * 我的药物
     * @return view page
     */
    @RequestMapping(value = "/toMyMedicine")
    public String myMedicine(@RequestParam(required = false) String openId, ModelMap model) {

        openId = "oQRiyv9PK8asUdaJ7WX88bmpy1ns";

        List<DrugManagement> drugs = this.drugManagementService.selectByOpenId(openId);
        if (drugs.size() == 0) {
            return "redirect:/pillBox/medicine/toAddMedicine?openId=" + openId;
        }
        model.addAttribute("openId", openId);
        model.addAttribute("drugs", drugs);

        return VIEW_MY_MEDICINE;
    }

    /**
     * 添加服药
     * @return view page
     */
    @RequestMapping(value = "/toAddMedicine")
    public String addMedicine(@RequestParam String openId, ModelMap model) {

        model.addAttribute("openId", openId);
        return VIEW_ADD_MEDICINE;
    }

    /**
     * 设置服药时间
     * @return view page
     */
    @RequestMapping(value = "/setMedicineTime")
    public String setMedicineTime(@RequestParam String openId,
                                  @RequestParam String medicineName,
                                  @RequestParam String surplus,
                                  @RequestParam String unit,
                                  @RequestParam String takeResion,
                                  @RequestParam String takeWay,
                                  @RequestParam String doctor,
                                  @RequestParam(required = false) String add_remind,
                                  ModelMap model) {

        model.addAttribute("openId", openId);
        model.addAttribute("medicineName", medicineName);
        model.addAttribute("surplus", surplus);
        model.addAttribute("unit", unit);
        model.addAttribute("takeResion", takeResion);
        model.addAttribute("takeWay", takeWay);
        model.addAttribute("doctor", doctor);
        model.addAttribute("add_remind", add_remind);

        return VIEW_SET_MEDICINE_TIME;
    }

    /**
     * 保存添加的服药信息
     * @return
     */
    @RequestMapping(value = "/saveAddMedicine")
    public String saveAddMedicine(@RequestParam String openId,
                                  @RequestParam String medicineName,
                                  @RequestParam String surplus,
                                  @RequestParam String unit,
                                  @RequestParam String takeResion,
                                  @RequestParam String takeWay,
                                  @RequestParam String doctor,
                                  @RequestParam(required = false) String add_remind,
                                  @RequestParam String gap,
                                  @RequestParam String times_dose_times,
                                  @RequestParam String persist,
                                  @RequestParam String dose_type,
                                  ModelMap model) {

        DrugManagement drugManagement = this.drugManagementService.save(openId, medicineName, surplus, unit, takeResion, takeWay, doctor, add_remind, gap, times_dose_times, persist, dose_type);

        return "redirect:/pillBox/medicine/toMyMedicine?openId=" + openId;
    }

    /**
     * 历史记录
     * @return
     */
    @RequestMapping(value = "/toMedicineHistory")
    public String medicineHistory() {

        return VIEW_MEDICINE_HISTORY;

    }

    /**
     * 当时提醒
     * @return
     */
    @RequestMapping(value = "/toDayMedicine")
    public String todayMedicine() {

        return VIEW_TODAY_MEDICINE;
    }

    private static final String VIEW_MY_MEDICINE = "mymedicine";

    private static final String VIEW_ADD_MEDICINE = "addmedicine";

    private static final String VIEW_SET_MEDICINE_TIME = "setmedicinetime";

    private static final String VIEW_MEDICINE_HISTORY = "medicinehistory";

    private static final String VIEW_TODAY_MEDICINE = "todaymedicine";

}
