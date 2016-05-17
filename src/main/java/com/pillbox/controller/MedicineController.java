package com.pillbox.controller;

import com.pillbox.dao.UserDao;
import com.pillbox.po.DrugManagement;
import com.pillbox.po.MedicineHistory;
import com.pillbox.service.DrugManagementService;
import com.pillbox.service.MedicineHistoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
@RequestMapping("/medicine")
public class MedicineController {

    @Autowired
    private DrugManagementService drugManagementService;

    @Autowired
    private MedicineHistoryService historyService;


    @InitBinder
    protected  void initBinder(HttpServletRequest request, ServletRequestDataBinder binder) throws Exception{
        DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        CustomDateEditor dateEditor = new CustomDateEditor(format, true);
        binder.registerCustomEditor(Date.class, dateEditor);
    }

    /**
     * 我的药物
     * @return view page
     */
    @RequestMapping(value = "/toMyMedicine")
    public String myMedicine(@RequestParam(required = false) String openId, ModelMap model) {

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
    public String addMedicine(@RequestParam(required = false) Long drugId,
                              @RequestParam String openId,
                              ModelMap model) {


        DrugManagement drug = new DrugManagement();
        if (drugId != null) {
            drug = this.drugManagementService.selectById(drugId);
        }

        model.addAttribute("drug", drug);
        model.addAttribute("openId", openId);
        return VIEW_ADD_MEDICINE;
    }

    /**
     * 设置或修改服药时间
     * @return view page
     */
    @RequestMapping(value = "/setMedicineTime")
    public String setMedicineTime(@RequestParam(required = false) Long drugId,
                                  @RequestParam String openId,
                                  @RequestParam(required = false) String parent,
                                  @RequestParam(required = false) String medicineName,
                                  @RequestParam(required = false) String surplus,
                                  @RequestParam(required = false) String unit,
                                  @RequestParam(required = false) String takeResion,
                                  @RequestParam(required = false) String takeWay,
                                  @RequestParam(required = false) String doctor,
                                  @RequestParam(required = false) String add_remind,
                                  ModelMap model) {

        DrugManagement drug = new DrugManagement();
        if (drugId !=null) {
            drug = this.drugManagementService.selectById(drugId);
            if (parent == null) {
                medicineName = drug.getName();
                surplus = drug.getSurplus();
                unit = drug.getUnit();
                takeResion = drug.getTake_resion();
                takeWay = drug.getTake_way();
                doctor = drug.getDoctor();
                add_remind = drug.getAdd_remind();
            }
        }
        model.addAttribute("drug", drug);

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
     * 保存或修改添加的服药信息
     * @return
     */
    @RequestMapping(value = "/saveAddMedicine")
    public String saveAddMedicine(@RequestParam(required = false) Long drugId,
                                  @RequestParam String openId,
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

        this.drugManagementService.saveOrUpdate(drugId, openId, medicineName, surplus, unit, takeResion, takeWay, doctor, add_remind, gap, times_dose_times, persist, dose_type);

        return "redirect:/pillBox/medicine/toMyMedicine?openId=" + openId;
    }

    /**
     * 删除服药提醒
     * @param drugId
     * @param openId
     * @return
     */
    @RequestMapping(value = "/deleteMedicine")
    public String deleteMedicine(@RequestParam Long drugId, @RequestParam String openId) {

        this.drugManagementService.delete(drugId);
        return "redirect:/pillBox/medicine/toMyMedicine?openId=" + openId;
    }

    /**
     * 进入到处方补充界面
     * @param drugId
     * @param openId
     * @param model
     * @return
     */
    @RequestMapping(value = "/toAddPrescription")
    public String toAddPrescription(@RequestParam Long drugId, @RequestParam String openId, ModelMap model) {

        DrugManagement drug = this.drugManagementService.selectById(drugId);
        model.addAttribute("drug", drug);
        model.addAttribute("openId", openId);
        return VIEW_PRESCRIPTION;

    }

    /**
     * 处方补充
     * @param drugId
     * @param openId
     * @param surplus
     * @return
     */
    @RequestMapping(value = "/addPrescription")
    public String addPrescription(@RequestParam Long drugId, @RequestParam String openId, @RequestParam String surplus) {

        this.drugManagementService.updateSurplus(drugId, surplus);
        return "redirect:/pillBox/medicine/toMyMedicine?openId=" + openId;
    }

    /**
     * 当日提醒
     * @return
     */
    @RequestMapping(value = "/toDayMedicine")
    public String todayMedicine(@RequestParam(required = false) String openId, ModelMap model) {

        List<MedicineHistory> histories = this.historyService.selectBytoDay(openId);
        model.addAttribute("histories", histories);
        model.addAttribute("openId", openId);

        return VIEW_TODAY_MEDICINE;
    }

    /**
     * 更新服药状态
     * @param id
     * @param status
     * @return
     */
    @RequestMapping(value = "/updateMedicineStatus")
    @ResponseBody
    public String updateMedicineStatus(@RequestParam Long id, @RequestParam String status) {
        this.historyService.updateMedicineStatus(id, status);
        return "0";
    }

    /**
     * 历史记录
     * @return
     */
    @RequestMapping(value = "/toMedicineHistory")
    public String toMedicineHistory(@RequestParam(required = false) String openId, @RequestParam(required = false) String keywords, ModelMap model) {

        if (openId == null) openId = "oQRiyv9PK8asUdaJ7WX88bmpy1ns";

        List<MedicineHistory> histories = this.historyService.selectByKeywords(openId, keywords);
        model.addAttribute("histories", histories);
        model.addAttribute("keywords", keywords);

        return VIEW_MEDICINE_HISTORY;

    }


    private static final String VIEW_MY_MEDICINE = "mymedicine";

    private static final String VIEW_ADD_MEDICINE = "addmedicine";

    private static final String VIEW_SET_MEDICINE_TIME = "setmedicinetime";

    private static final String VIEW_MEDICINE_HISTORY = "medicinehistory";

    private static final String VIEW_TODAY_MEDICINE = "todaymedicine";

    private static final String VIEW_PRESCRIPTION = "addprescription";

}
