package com.pillbox.utils;

/**
 * Created by ankang on 15/9/14.
 */
public class WxCons {

    /**
     * 与接口配置信息中的 token 要一致，这里赋予什么值，在接口配置信息中的Token就要填写什么值，
     * 两边保持一致即可，建议用项目名称、公司名称缩写等，我在这里用的是项目名称weixinface
     */
    public static final String TOKEN = "smart_box_wx_token";
//    public static final String EncodingAESKey = "qzYUXIZItvm1vknaDcoi0dZnjrCYdwenHBqjpREImIh";

    /**
     * 公众号
     */
    public static final String HOST = WxParams.getWxServerHost();

    public static final String AppID = WxParams.getWxAppId();

    public static final String AppSecret = WxParams.getWxAppSecret();

    public static final String TIPS_MEDICINE_TEMPLATE = "d1AFcEYRZ1KXTCGV5AObjnSV9cIRSxoiYeMY0ZKRhYY";

    public static final String TIPS_MEDICINE_SUPLUS = "BDuMjidBV7cpM6wF2FHV3Kq_wnxDpfg88qULCyJ9RSM";

    public static final String TIPS_DOCTOR_DIARY = "Fpy5c5aPrkcY8r5aRZbVK3NRBlf-SjXAsbEDgjATkqI";


    public static String access_token = "";

    public static String jsapi_ticket = "";

    /**
     * 返回消息类型：文本
     */
    public static final String RESP_MESSAGE_TYPE_TEXT = "text";

    /**
     * 返回消息类型：音乐
     */
    public static final String RESP_MESSAGE_TYPE_MUSIC = "music";

    /**
     * 返回消息类型：图文
     */
    public static final String RESP_MESSAGE_TYPE_NEWS = "news";

    /**
     * 请求消息类型：文本
     */
    public static final String REQ_MESSAGE_TYPE_TEXT = "text";

    /**
     * 请求消息类型：图片
     */
    public static final String REQ_MESSAGE_TYPE_IMAGE = "image";

    /**
     * 请求消息类型：链接
     */
    public static final String REQ_MESSAGE_TYPE_LINK = "link";

    /**
     * 请求消息类型：地理位置
     */
    public static final String REQ_MESSAGE_TYPE_LOCATION = "location";

    /**
     * 请求消息类型：音频
     */
    public static final String REQ_MESSAGE_TYPE_VOICE = "voice";

    /**
     * 请求消息类型：推送
     */
    public static final String REQ_MESSAGE_TYPE_EVENT = "event";

    /**
     * 事件类型：subscribe(订阅)
     */
    public static final String EVENT_TYPE_SUBSCRIBE = "subscribe";

    /**
     * 事件类型：unsubscribe(取消订阅)
     */
    public static final String EVENT_TYPE_UNSUBSCRIBE = "unsubscribe";

    /**
     * 事件类型：CLICK(自定义菜单点击事件)
     */
    public static final String EVENT_TYPE_CLICK = "CLICK";

    /**
     * 跳转链接事件 VIEW
     */
    public static final String EVENT_TYPE_VIEW = "VIEW";

}
