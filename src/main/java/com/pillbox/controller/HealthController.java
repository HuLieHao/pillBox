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
     * 快速急救详情
     * @return
     */
    @RequestMapping(value = "/toRapidFirstAidDetail")
    public String toRapidFirstAidDetail() {

        return VIEW_RAPID_FIRST_AID_DETAIL;
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
     * 健康常识详情
     * @return
     */
    @RequestMapping(value = "/toHealthKnowLedgeDetail")
    public String toHealthKnowLedgeDetail() {

        return VIEW_HEALTH_KNOWLEDGE_DETAIL;
    }

    /**
     * 医生日记
     * @return
     */
    @RequestMapping(value = "/toDoctorDiary")
    public String toDoctorDiary() {

        return VIEW_DOCTOR_DIARY;
    }

    /**
     * 医生日记详情
     * @return
     */
    @RequestMapping(value = "/toDoctorDiaryDetail")
    public String toDoctorDiaryDetail() {


        return VIEW_DOCTOR_DIARY_DETAIL;
    }

    /**
     * 修改、添加预约添加
     * @return
     */
    @RequestMapping(value = "/updateDoctorDiary")
    public String updateDoctorDiary() {

        return "redirect:/pillBox/health/toDoctorDiary";
    }

    private static final String VIEW_DISEASE_SELF_DIAGNOSIS = "diseaseSelfDiagnosis";

    private static final String VIEW_RAPID_FIRST_AID = "rapidfirstaid";

    private static final String VIEW_RAPID_FIRST_AID_DETAIL = "rapidfirstaid_detail";

    private static final String VIEW_HEALTH_KNOWLEDGE = "healthknowledge";

    private static final String VIEW_HEALTH_KNOWLEDGE_DETAIL = "healthknowledge_detail";

    private static final String VIEW_DOCTOR_DIARY = "doctordiary";

    private static final String VIEW_DOCTOR_DIARY_DETAIL = "doctordiarydetail";

}
