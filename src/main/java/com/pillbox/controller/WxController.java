package com.pillbox.controller;

import com.pillbox.service.WxService;
import com.pillbox.utils.WeiXinUtil;
import com.pillbox.utils.WxSignUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * User:  maktub
 * Date:   16/4/28 上午6:32
 */
@RequestMapping("/wx")
@Controller
public class WxController {

    @Resource
    private WxService wxService;

    /**
     * URL(服务器地址)
     * @param request
     * @param response
     * @throws IOException
     */
    @RequestMapping(value = "/cos", method = {RequestMethod.GET, RequestMethod.POST})
    public void coreHandle(HttpServletRequest request, HttpServletResponse response) throws IOException {

        System.out.println("微信服务器请求.......");

        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        boolean isGet = request.getMethod().toLowerCase().equals("get");
        if(isGet) {
            verifyAccount(request, response);
        } else {
            try {
                //调用核心业务类接收消息、处理消息
                String respMessage = wxService.processRequest(request);
                if (respMessage != null) {
                    //响应消息
                    response.getWriter().print(respMessage);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /**
     * 点击了微信菜单“药物管理时”
     * @param code
     * @param state
     * @return
     */
    @RequestMapping("/toMyMedicineMenu")
    public String toMyMedicineMenu(@RequestParam String code, @RequestParam String state) {

        String openId = WeiXinUtil.getOpenId(code);
        System.out.println("点击了微信菜单 药物管理 时 openId: " + openId);
        return "redirect:/pillBox/medicine/toMyMedicine?openId=" + openId;
    }

    /**
     * 点击了微信菜单“历史记录”
     * @param code
     * @param state
     * @return
     */
    @RequestMapping("/toMedicineHistoryMenu")
    public String toMedicineHistoryMenu(@RequestParam String code, @RequestParam String state) {

        String openId = WeiXinUtil.getOpenId(code);
        System.out.println("点击了微信菜单 历史记录 时 openId: " + openId);
        return "redirect:/pillBox/medicine/toMedicineHistory?openId=" +openId;
    }

    /**
     * 点击了微信菜单“当日提醒”
     * @param code
     * @param state
     * @return
     */
    @RequestMapping("/toTodayMedicineMenu")
    public String toTodayMedicineMenu(@RequestParam String code, @RequestParam String state) {

        String openId = WeiXinUtil.getOpenId(code);
        System.out.println("点击了微信菜单 当日提醒 时 openId: " + openId);
        return "redirect:/pillBox/medicine/toDayMedicine?openId=" + openId;
    }

    /**
     * 点击微信菜单“健康常识”
     * @param code
     * @param state
     * @return
     */
    @RequestMapping("/toHealthKnowledgeMenu")
    public String toHealthKnowledgeMenu(@RequestParam String code, @RequestParam String state) {

        String openId = WeiXinUtil.getOpenId(code);
        return "redirect:/pillBox/health/toHealthKnowledge?openId=" + openId;
    }

    /**
     * 点击了微信菜单“疾病自诊”
     * @param code
     * @param state
     * @return
     */
    @RequestMapping("/toDiseaseSelfDiagnosisMenu")
    public String toDiseaseSelfDiagnosisMenu(@RequestParam String code, @RequestParam String state) {

        String openId = WeiXinUtil.getOpenId(code);
        return "redirect:/pillBox/health/toDiseaseSelfDiagnosis?openId=" + openId;
    }

    /**
     * 点击了微信菜单“快速急救”
     * @param code
     * @param state
     * @return
     */
    @RequestMapping("/toRapidFirstAidMenu")
    public String toRapidFirstAidMenu(@RequestParam String code, @RequestParam String state) {

        String openId = WeiXinUtil.getOpenId(code);
        return "redirect:/pillBox/health/toRapidFirstAid?openId=" + openId;
    }

    /**
     * 点击微信菜单“医生日记”
     * @param code
     * @param state
     * @return
     */
    @RequestMapping("/toDoctorDiaryMenu")
    public String toDoctorDiaryMenu(@RequestParam String code, @RequestParam String state) {

        String openId = WeiXinUtil.getOpenId(code);
        return "redirect:/pillBox/health/toDoctorDiary?openId=" + openId;
    }

    /**
     * 验证服务器地址
     */
    private void verifyAccount(HttpServletRequest request, HttpServletResponse response) {
        String signature = trimToEmpty(request.getParameter("signature"));
        String timestamp = trimToEmpty(request.getParameter("timestamp"));
        String nonce = trimToEmpty(request.getParameter("nonce"));
        String echostr = trimToEmpty(request.getParameter("echostr"));

        boolean sign = false;
        try {
            sign = WxSignUtils.checkSignature(signature, timestamp, nonce);
            if (sign) {
                System.out.println("微信服务器接入成功........");
                response.getWriter().print(echostr);
            }else {
                System.out.println("微信服务器接入失败........");
            }
        } catch (Exception e) {
           e.printStackTrace();
        }
    }

    public static String trimToEmpty(final String str) {
        return str == null ? "" : str.trim();
    }
}
