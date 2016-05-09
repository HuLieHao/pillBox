package com.pillbox.controller;

import com.pillbox.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * User:  maktub
 * Date:   16/2/16 下午9:48
 *
 */
@Controller
@RequestMapping("/health")
public class HealthController {

    @Autowired
    private UserService userService;

    /**
     * 疾病自诊
     * @return
     */
    @RequestMapping(value = "/toDiseaseSelfDiagnosis")
    public String toDiseaseSelfDiagnosis() {

        return VIEW_DISEASE_SELF_DIAGNOSIS_MAIN;
    }

    private static final String VIEW_DISEASE_SELF_DIAGNOSIS_MAIN = "diseaseSelfDiagnosis";

}
