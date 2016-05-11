package com.pillbox.po;

import javax.persistence.*;

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
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    public Long id;

    //服用时间 距离00:00的秒数
    public Long time;

    public String time_str;

    //剂量
    public Long num;

    @ManyToOne(targetEntity = DrugManagement.class)
    @JoinColumn(name = "drug_id", updatable =false)
    public DrugManagement drug;


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

    public DrugManagement getDrug() {
        return drug;
    }

    public void setDrug(DrugManagement drug) {
        this.drug = drug;
    }

    public String getTime_str() {
        return time_str;
    }

    public void setTime_str(String time_str) {
        this.time_str = time_str;
    }
}
