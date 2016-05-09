package com.pillbox.service.impl;

import com.pillbox.service.WxService;
import com.pillbox.utils.Article;
import com.pillbox.utils.MessageUtils;
import com.pillbox.utils.NewsResponseMessage;
import com.pillbox.utils.WxCons;
import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.core.util.QuickWriter;
import com.thoughtworks.xstream.io.HierarchicalStreamWriter;
import com.thoughtworks.xstream.io.xml.PrettyPrintWriter;
import com.thoughtworks.xstream.io.xml.XppDriver;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * User:  maktub
 * Date:   16/4/28 上午6:35
 */
@Service
public class WxServiceImpl implements WxService {

    @Override
    public String processRequest(HttpServletRequest request) {
        String respMessage = null;
        // 默认返回的文本消息内容
        String respContent = "请求处理异常，请稍候尝试！";

        // xml请求解析
        Map<String, String> requestMap = MessageUtils.parseXml(request);

        // 发送方帐号（open_id）
        String wx_openid = trimToEmpty(requestMap.get("FromUserName"));
        // 公众帐号
        String wx_pubid = trimToEmpty(requestMap.get("ToUserName"));
        // 消息类型
        String msgType = trimToEmpty(requestMap.get("MsgType"));



        if (msgType.equals(WxCons.REQ_MESSAGE_TYPE_TEXT)) {
            // 文本消息
        }
        else if (msgType.equals(WxCons.REQ_MESSAGE_TYPE_IMAGE)) {
            //图片消息
        }
        else if (msgType.equals(WxCons.REQ_MESSAGE_TYPE_LOCATION)) {
            //地理位置消息
        }
        else if (msgType.equals(WxCons.REQ_MESSAGE_TYPE_LINK)) {
            //链接消息
        }
        else if (msgType.equals(WxCons.REQ_MESSAGE_TYPE_VOICE)) {
            //音频消息
        }
        else if (msgType.equals(WxCons.REQ_MESSAGE_TYPE_EVENT)) {
            // 事件推送
            // 事件类型
            String eventType = requestMap.get("Event");

            if (eventType.equals(WxCons.EVENT_TYPE_SUBSCRIBE)) {
                // 订阅
                respMessage = indexMessage(wx_pubid, wx_openid, new Date().getTime());
            }
            else if (eventType.equals(WxCons.EVENT_TYPE_UNSUBSCRIBE)) {
                // TODO 取消订阅后用户再收不到公众号发送的消息，因此不需要回复消息
            }
            else if (eventType.equals(WxCons.EVENT_TYPE_VIEW)) {
                // 自定义菜单点击跳转链接事件
            }
        }

        return respMessage;
    }

    /**
     * 首页图文消息
     */
    public String indexMessage(String wx_pubid, String wx_openid, Long CreateTime) {
        // 创建图文消息
        NewsResponseMessage newsMessage = new NewsResponseMessage();
        newsMessage.setFromUserName(wx_pubid);
        newsMessage.setToUserName(wx_openid);
        newsMessage.setCreateTime(CreateTime);
        newsMessage.setMsgType(WxCons.RESP_MESSAGE_TYPE_NEWS);
        List<Article> articleList = new ArrayList<Article>();

        Article article = new Article();
        article.setTitle("欢迎使用健康管理系统");
        article.setDescription("为您提供服药提醒及健康知识、医生预约日记");
        article.setPicUrl(WxCons.HOST + "/images/weixin/coverImage.png");
        articleList.add(article);
        // 设置图文消息个数
        newsMessage.setArticleCount(articleList.size());
        // 设置图文消息包含的图文集合
        newsMessage.setArticles(articleList);
        // 将图文消息对象转换成xml字符串
        return newsMessageToXml(newsMessage);
    }

    public static String trimToEmpty(final String str) {
        return str == null ? "" : str.trim();
    }

    /**
     * 图文消息对象转换成xml
     *
     * @param newsMessage 图文消息对象
     * @return xml
     */
    public static String newsMessageToXml(NewsResponseMessage newsMessage) {
        xstream.alias("xml", newsMessage.getClass());
        xstream.alias("item", new Article().getClass());
        return xstream.toXML(newsMessage);
    }

    private static XStream xstream = new XStream(new XppDriver() {
        public HierarchicalStreamWriter createWriter(Writer out) {
            return new PrettyPrintWriter(out) {
                // 对所有xml节点的转换都增加CDATA标记
                boolean cdata = true;

                @SuppressWarnings("unchecked")
                public void startNode(String name, Class clazz) {
                    super.startNode(name, clazz);
                }

                protected void writeText(QuickWriter writer, String text) {
                    if (cdata) {
                        writer.write("<![CDATA[");
                        writer.write(text);
                        writer.write("]]>");
                    } else {
                        writer.write(text);
                    }
                }
            };
        }
    });
}
