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
 */
@Controller
@RequestMapping("/pillBox")
public class PillBoxController {

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
     * @param openId
     * @return
     */
    @RequestMapping(value = "/myMedicine")
    public String myMedicine() {

        return this.VIEW_MY_MEDICINE;
    }

    /**
     * 添加服药
     * @return
     */
    @RequestMapping(value = "/addMedicine")
    public String addMedicine() {

        return this.VIEW_ADD_MEDICINE;
    }

    /**
     * 设置服药时间
     * @return
     */
    @RequestMapping(value = "/setMedicineTime")
    public String setMedicineTime() {

        return this.VIEW_SET_MEDICINE_TIME;
    }


    private static final String VIEW_MY_MEDICINE = "mymedicine";

    private static final String VIEW_ADD_MEDICINE = "addmedicine";

    private static final String VIEW_SET_MEDICINE_TIME = "setmedicinetime";
}
