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
@RequestMapping("/pillBox")
public class PillBoxController {

//    @Autowired
//    private UserService userService;


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
    @RequestMapping(value = "/myMedicine")
    public String myMedicine() {

        return VIEW_MY_MEDICINE;
    }

    /**
     * 添加服药
     * @return view page
     */
    @RequestMapping(value = "/addMedicine")
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

    @RequestMapping(value = "/medicineHistory")
    public String medicineHistory() {

        return VIEW_MEDICINE_HISTORY;

    }

    @RequestMapping(value = "todaymedicine")
    public String todayMedicine() {

        return VIEW_TODAY_MEDICINE;
    }

    @RequestMapping(value = "/toDiseaseSelfDiagnosis")
    public String toDiseaseSelfDiagnosis() {

        return VIEW_DISEASE_SELF_DIAGNOSIS_MAIN;
    }

    @RequestMapping(value = "/toDiseaseSelfDiagnosisRight")
    public String toDiseaseSelfDiagnosisRight() {

        return VIEW_DISEASE_SELF_DIAGNOSIS_RIGHT;
    }

    @RequestMapping(value = "/toDiseaseSelfDiagnosisLeft")
    public String toDiseaseSelfDiagnosisLeft() {

        return VIEW_DISEASE_SELF_DIAGNOSIS_RIGHT;
    }


    private static final String VIEW_MY_MEDICINE = "mymedicine";

    private static final String VIEW_ADD_MEDICINE = "addmedicine";

    private static final String VIEW_SET_MEDICINE_TIME = "setmedicinetime";

    private static final String VIEW_MEDICINE_HISTORY = "medicinehistory";

    private static final String VIEW_TODAY_MEDICINE = "todaymedicine";

    private static final String VIEW_DISEASE_SELF_DIAGNOSIS_MAIN = "diseaseselfdiagnosis/main";

    private static final String VIEW_DISEASE_SELF_DIAGNOSIS_LEFT = "diseaseselfdiagnosis/left";

    private static final String VIEW_DISEASE_SELF_DIAGNOSIS_RIGHT = "diseaseselfdiagnosis/right";
}
