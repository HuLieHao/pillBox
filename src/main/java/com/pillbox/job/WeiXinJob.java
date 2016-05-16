package com.pillbox.job;

import com.pillbox.utils.WeiXinUtil;
import com.pillbox.utils.WxCons;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

/**
 * 微信定义任务
 */
@Component
public class WeiXinJob {

    /**
     * 一个半小时请求一次
     */
    @Scheduled(fixedDelay = 5400000)
    public void getAccessToken() {

        WxCons.access_token = WeiXinUtil.getAccess_token();
        WxCons.jsapi_ticket = WeiXinUtil.getJsapi_ticket();
        System.out.println("定时任务，每一个半小时，获取access_token : " + WxCons.access_token);
    }
}
