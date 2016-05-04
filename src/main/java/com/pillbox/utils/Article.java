package com.pillbox.utils;

/**
 * Created by ankang on 15/9/14.
 */
public class Article {
    private String Title;
    private String Description;
    private String PicUrl;
    private String Url;

    public String getTitle() {
        return trimToEmpty(Title);
    }

    public void setTitle(String title) {
        Title = title;
    }

    public String getDescription() {
        return trimToEmpty(Description);
    }

    public void setDescription(String description) {
        Description = description;
    }

    public String getPicUrl() {
        return trimToEmpty(PicUrl);
    }

    public void setPicUrl(String picUrl) {
        PicUrl = picUrl;
    }

    public String getUrl() {
        return trimToEmpty(Url);
    }

    public void setUrl(String url) {
        Url = url;
    }

    public static String trimToEmpty(final String str) {
        return str == null ? "" : str.trim();
    }

}
