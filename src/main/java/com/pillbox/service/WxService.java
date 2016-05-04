package com.pillbox.service;

import javax.servlet.http.HttpServletRequest;

/**
 * User:  maktub
 * Date:   16/4/28 上午6:34
 */
public interface WxService {

    /**
     * 处理微信发来的请求
     *
     * @param request
     * @return
     */
    String processRequest(HttpServletRequest request);
}
