package com.pillbox.utils;


import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import org.apache.commons.lang3.StringUtils;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Formatter;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

/**
 * 微信工具类
 *
 * 胡烈豪
 * Date 2015-11-18
 */
public class WeiXinUtil {


    /**
     * 获取access_token
     * @return
     */
    public static String getAccess_token() {
        if (StringUtils.isNotBlank(WxCons.AppID)) {
            String access_token_url = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=" + WxCons.AppID + "&secret=" + WxCons.AppSecret;
            String data = HttpClientUtils.getMethod(access_token_url);
            JSONObject json = JSONObject.parseObject(data);
            return json.getString("access_token");
        }
        return "";
    }

    /**
     * 获取jsapi_ticket
     * @return
     */
    public static String getJsapi_ticket() {
        if (StringUtils.isNotBlank(WxCons.access_token)) {
            String jsapi_ticket_url = "https://api.weixin.qq.com/cgi-bin/ticket/getticket?access_token=" + WxCons.access_token + "&type=jsapi";
            String data = HttpClientUtils.getMethod(jsapi_ticket_url);
            JSONObject json = JSONObject.parseObject(data);
            return json.getString("ticket");
        }
        return "";
    }

    /**
     * 获取用户的OpenID
     * @param code
     * @return
     */
    public static String getOpenId(String code) {
        String str = "https://api.weixin.qq.com/sns/oauth2/access_token?appid=" + WxCons.AppID + "&secret=" + WxCons.AppSecret + "&code=" + code + "&grant_type=authorization_code";
        String data = HttpClientUtils.getMethod(str);
        JSONObject json = JSONObject.parseObject(data);
        return json.getString("openid");
    }

    /**
     * 发送服药提醒模板
     * @param entity
     * @return
     */
    public static Boolean sendTipsMedicine(String entity) {
        String url = "https://api.weixin.qq.com/cgi-bin/message/template/send?access_token=" + WxCons.access_token;
        String data = HttpClientUtils.postMethodJson(url, entity);
        JSONObject json = JSONObject.parseObject(data);
        return json.getInteger("errcode") == 0 ? true : false;
    }

}

