package com.pillbox.controller;

import com.pillbox.po.User;
import com.pillbox.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

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


        User user = new User();
        user.setOpen_id("123141");
        this.userService.save(user);

        model.addAttribute("message", "你好");
        return "hello";
    }

}
