package com.pillbox.utils;

import org.apache.commons.httpclient.*;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpStatus;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.GetMethod;
import org.apache.commons.httpclient.methods.PostMethod;
import org.apache.commons.httpclient.params.HttpMethodParams;
import org.apache.commons.lang3.StringUtils;

import org.apache.http.*;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.CoreConnectionPNames;
import org.apache.http.util.EntityUtils;

import javax.xml.ws.http.HTTPException;
import java.io.*;
import java.util.List;

/**
 * Created by maktub on 15/11/18.
 */
public class HttpClientUtils {

    //GET方法
    public static String getMethod(String url) {
        String result = null;
        HttpClient httpClient = new HttpClient();
        GetMethod getMethod = new GetMethod(url);
        //使用系统提供的默认的恢复策略
        getMethod.getParams().setParameter(HttpMethodParams.RETRY_HANDLER, new DefaultHttpMethodRetryHandler());
        try {
            int statusCode = httpClient.executeMethod(getMethod);
            if (statusCode != HttpStatus.SC_OK) {
                System.err.println("Method failed: " + getMethod.getStatusLine());
            }
            byte[] responseBody = getMethod.getResponseBody();
            result = new String(responseBody);
        }catch (HTTPException e) {
            //发生致命异常
            e.printStackTrace();
        }catch (IOException e) {
            //发生网络异常
            e.printStackTrace();
        }finally {
            //释放连接
            getMethod.releaseConnection();
        }
        return result;
    }

    /**
     * 发送JSON请求
     * @param url
     * @param entity
     * @return
     * @throws Exception
     */
    public static String postMethodJson(String url, String entity){
        entity = StringUtils.trimToEmpty(entity);
        org.apache.http.client.HttpClient httpClient = new DefaultHttpClient();
        // 请求超时
        httpClient.getParams().setParameter(CoreConnectionPNames.CONNECTION_TIMEOUT, 3000);
        // 读取超时
        httpClient.getParams().setParameter(CoreConnectionPNames.SO_TIMEOUT, 3000);
        HttpPost post = new HttpPost(url);
        try {
            StringEntity stringEntity = new StringEntity(entity, "UTF-8");
            stringEntity.setContentEncoding("UTF-8");
            stringEntity.setContentType("application/json");
            post.setEntity(stringEntity);
            HttpResponse result = httpClient.execute(post);
            if (result.getStatusLine().getStatusCode() == HttpStatus.SC_OK) {
                String resultString = EntityUtils.toString(result.getEntity(), "UTF-8");
                return resultString;
            } else {
                throw new Exception(String.format("POST方法请求失败 url: [%s] 状态: [%s]", url, result.getStatusLine()));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // 关闭资源
            httpClient.getConnectionManager().shutdown();
        }
        return null;
    }

}
