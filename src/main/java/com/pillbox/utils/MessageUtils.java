package com.pillbox.utils;

import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

import javax.servlet.http.HttpServletRequest;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by ankang on 15/9/14.
 */
public class MessageUtils {
    /**
     * 解析微信发来的请求（XML）
     *
     * @param request
     * @return
    @SuppressWarnings("unchecked")
     */
    public static Map<String, String> parseXml(HttpServletRequest request) {
        // 将解析结果存储在HashMap中
        Map<String, String> map = new HashMap<String, String>();
        try {
            // 从request中取得输入流
            InputStream inputStream = request.getInputStream();

//            BufferedReader buffer = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
//
//            String line = null;
//            StringBuffer content = new StringBuffer();
//            while ((line = buffer.readLine()) != null) {
//                content.append(line + "\n");
//            }
//            buffer.close();

//            Document document = DocumentHelper.parseText(content.toString());
            // 读取输入流

            SAXReader reader = new SAXReader();
            Document document = reader.read(inputStream);


            // 得到xml根元素
            Element root = document.getRootElement();

            // 得到根元素的所有子节点
            List<Element> elementList = root.elements();
            // 遍历所有子节点
            for (Element e : elementList) {
                System.out.println(e.getName() + "  " + e.getText());
                map.put(e.getName(), e.getText());
            }
            inputStream.close();
        }catch (Exception e) {
            e.printStackTrace();
        }
        return map;
    }

}
