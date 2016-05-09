package com.pillbox.controller;

import com.pillbox.po.User;
import com.pillbox.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
    public String myMedicine() {

        return VIEW_MY_MEDICINE;
    }

    /**
     * 添加服药
     * @return view page
     */
    @RequestMapping(value = "/toAddMedicine")
    public String addMedicine() {

        return VIEW_ADD_MEDICINE;
    }

    /**
     * 设置服药时间
     * @return view page
     */
    @RequestMapping(value = "/setMedicineTime")
    public String setMedicineTime() {

        return VIEW_SET_MEDICINE_TIME;
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
