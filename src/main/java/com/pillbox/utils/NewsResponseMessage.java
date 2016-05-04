package com.pillbox.utils;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by ankang on 15/9/14.
 */
public class NewsResponseMessage extends BaseResponseMessage {
    private int ArticleCount;
    private List<Article> Articles;



    public int getArticleCount() {
        return ArticleCount;
    }

    public void setArticleCount(int articleCount) {
        ArticleCount = articleCount;
    }

    public List<Article> getArticles() {
        return Articles == null ? (Articles = new ArrayList<Article>()) : Articles;
    }

    public void setArticles(List<Article> articles) {
        Articles = articles;
    }
}
