package com.pillbox.controller;

import com.pillbox.service.WxService;
import com.pillbox.utils.WxSignUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
                response.getWriter().print(echostr);
            }
        } catch (Exception e) {
           e.printStackTrace();
        }
    }

    public static String trimToEmpty(final String str) {
        return str == null ? "" : str.trim();
    }
}
