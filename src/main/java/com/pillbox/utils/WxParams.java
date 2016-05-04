package com.pillbox.utils;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * Created by ankang on 15/12/22.
 */
public class WxParams {
    private static String WX_PROPERTIES_CLASSPATH = "conf/wx.properties";

    private static String wxServerHost;
    private static String wxAppId;
    private static String wxAppSecret;
    public static final String WX_GW_USER_SSO_TOKEN = "wxGwUserSsoToken";
    private static String wxGwUserSsoDomain;

    public static String getWxServerHost() {
        if (wxServerHost == null) {
            wxServerHost = trimToEmpty(getUpdateProperties().getProperty("wx.server.host"));
        }
        return wxServerHost;
    }

    public static String getWxAppId() {
        if (wxAppId == null) {
            wxAppId = trimToEmpty(getUpdateProperties().getProperty("wx.app.id"));
        }
        return wxAppId;
    }

    public static String getWxAppSecret() {
        if (wxAppSecret == null) {
            wxAppSecret = trimToEmpty(getUpdateProperties().getProperty("wx.app.secret"));
        }
        return wxAppSecret;
    }

    public static String getWxGwUserSsoDomain() {
        if (wxGwUserSsoDomain == null) {
            wxGwUserSsoDomain = trimToEmpty(getUpdateProperties().getProperty("wx.gw.user.sso.domain"));
        }
        return wxGwUserSsoDomain;
    }

    private static Properties properties;

    private static synchronized Properties getUpdateProperties() {
        if (properties == null) {
            InputStream in = WxParams.class.getClassLoader().getResourceAsStream(WX_PROPERTIES_CLASSPATH);
            Properties p = new Properties();
            try {
                p.load(in);
            } catch (IOException e) {
                throw new RuntimeException("读取配置文件[" + WX_PROPERTIES_CLASSPATH + "]失败", e);
            }
            properties = p;
        }
        return properties;
    }

    public static String trimToEmpty(final String str) {
        return str == null ? "" : str.trim();
    }

}
