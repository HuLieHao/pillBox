package com.pillbox.po;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;

/**
 * 用户基本信息表
 * User:  maktub
 * Date:   16/2/17 下午11:47
 */
@Entity
@Table(name = "user")
public class User{

    //微信用户唯一标识ID
    @Id
    public String open_id;

    //创建时间
    public Date intime = new Date();

    public void setOpen_id(String open_id) {
        this.open_id = open_id;
    }

    public void setIntime(Date intime) {
        this.intime = intime;
    }

    public String getOpen_id() {
        return open_id;
    }

    public Date getIntime() {
        return intime;
    }
}