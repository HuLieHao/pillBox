package com.pillbox.po;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 服用时间和剂量
 * User:  maktub
 * Date:   16/2/19 上午12:50
 */
@Entity
@Table(name = "time_dose")
public class TimeDose {

    //主键自增ID
    @Id
    public Long id;

    //服用时间 距离00:00的秒数
    public Long time;

    //剂量
    public Long num;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getTime() {
        return time;
    }

    public void setTime(Long time) {
        this.time = time;
    }

    public Long getNum() {
        return num;
    }

    public void setNum(Long num) {
        this.num = num;
    }
}
