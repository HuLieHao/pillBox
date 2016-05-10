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

        return VIEW_DISEASE_SELF_DIAGNOSIS;
    }

    /**
     * 快速急救
     * @return
     */
    @RequestMapping(value = "/toRapidFirstAid")
    public String toRapidFirstAid() {

        return VIEW_RAPID_FIRST_AID;
    }

    /**
     * 健康常识
     * @return
     */
    @RequestMapping(value = "/toHealthKnowledge")
    public String toHealthKnowledge() {

        return VIEW_HEALTH_KNOWLEDGE;
    }

    /**
     * 医生日记
     * @return
     */
    @RequestMapping(value = "/toDoctorDiary")
    public String toDoctorDiary() {

        return VIEW_DOCTOR_DIARY;
    }

    private static final String VIEW_DISEASE_SELF_DIAGNOSIS = "diseaseSelfDiagnosis";

    private static final String VIEW_RAPID_FIRST_AID = "rapidfirstaid";

    private static final String VIEW_HEALTH_KNOWLEDGE = "healthknowledge";

    private static final String VIEW_DOCTOR_DIARY = "doctordiary";

}
