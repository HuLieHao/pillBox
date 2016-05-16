package com.pillbox.controller;

import com.pillbox.po.DoctorDiary;
import com.pillbox.service.DoctorDiaryService;
import com.pillbox.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * User:  maktub
 * Date:   16/2/16 下午9:48
 *
 */
@Controller
@RequestMapping("/health")
public class HealthController {

    @Autowired
    private DoctorDiaryService diaryService;

    @InitBinder
    protected  void initBinder(HttpServletRequest request, ServletRequestDataBinder binder) throws Exception{
        DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm");
        CustomDateEditor dateEditor = new CustomDateEditor(format, true);
        binder.registerCustomEditor(Date.class, dateEditor);
    }


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
    public String toDoctorDiary(@RequestParam(required = false) String openId, ModelMap model) {

        if (openId == null) openId = "oQRiyv9PK8asUdaJ7WX88bmpy1ns";

        List<DoctorDiary> diarys = this.diaryService.selectByOpenId(openId);
        if (diarys.size() == 0) {
            return "redirect:/pillBox/health/toDoctorDiaryDetail?openId=" + openId;
        }

        model.addAttribute("diarys", diarys);
        model.addAttribute("openId", openId);
        return VIEW_DOCTOR_DIARY;
    }

    /**
     * 医生日记详情
     * @return
     */
    @RequestMapping(value = "/toDoctorDiaryDetail")
    public String toDoctorDiaryDetail(@RequestParam String openId,
                                      @RequestParam(required = false) Long diary_id,
                                      ModelMap model) {

        DoctorDiary diary = this.diaryService.selectById(diary_id);
        model.addAttribute("diary", diary == null ? new DoctorDiary() : diary);
        model.addAttribute("diary_id", diary_id);
        model.addAttribute("openId", openId);

        return VIEW_DOCTOR_DIARY_DETAIL;
    }

    /**
     * 修改、添加预约添加
     * @return
     */
    @RequestMapping(value = "/updateDoctorDiary")
    public String updateDoctorDiary(@RequestParam String openId,
                                    @RequestParam(required = false) Long diary_id,
                                    @RequestParam Date appointment_time,
                                    @RequestParam String doctor_name,
                                    @RequestParam String remarks,
                                    @RequestParam(required = false) String is_remind) {

        this.diaryService.saveOrUpdate(openId, diary_id, appointment_time, doctor_name, remarks, is_remind);
        return "redirect:/pillBox/health/toDoctorDiary?openId=" + openId;
    }

    /**
     * 删除预约添加
     * @param openId
     * @param diary_id
     * @return
     */
    @RequestMapping(value = "/deleteDoctorDiary")
    public String deleteDoctorDiary(@RequestParam String openId,
                                    @RequestParam Long diary_id) {

        this.diaryService.delete(diary_id);
        return "redirect:/pillBox/health/toDoctorDiary?openId=" + openId;
    }

    private static final String VIEW_DISEASE_SELF_DIAGNOSIS = "diseaseSelfDiagnosis";

    private static final String VIEW_RAPID_FIRST_AID = "rapidfirstaid";

    private static final String VIEW_RAPID_FIRST_AID_DETAIL = "rapidfirstaid_detail";

    private static final String VIEW_HEALTH_KNOWLEDGE = "healthknowledge";

    private static final String VIEW_HEALTH_KNOWLEDGE_DETAIL = "healthknowledge_detail";

    private static final String VIEW_DOCTOR_DIARY = "doctordiary";

    private static final String VIEW_DOCTOR_DIARY_DETAIL = "doctordiarydetail";

}
