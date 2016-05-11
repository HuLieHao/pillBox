package com.pillbox.po;

import javax.persistence.*;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * 我的药物管理
 * User:  maktub
 * Date:   16/2/18 下午11:32
 */
@Entity
@Table(name = "drug_management")
public class DrugManagement {

    //主键自增ID
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    public Long id;

    //用户基本信息表关联
    @ManyToOne(targetEntity = User.class, cascade = CascadeType.ALL)
    public User user;

    //药品名
    public String name;

    //剩余量
    public String surplus;

    //单位
    public String unit;

    //服用原因
    public String take_resion;

    //服用方式
    public String take_way;

    //医生
    public String doctor;

    //间隔类型 0:每日 1:一次性事件
    public String gap;

    //服务时间和剂量
    @OneToMany(targetEntity = TimeDose.class, cascade = CascadeType.ALL)
    @JoinColumn(name = "drug_id", updatable = false)
    public Set<TimeDose> times_dose = new HashSet<TimeDose>();

    //持续时间
    public String persist;

    //服药说明
    public String dose_type;

    //是否补充提醒 0: 不提醒 1: 提醒
    public String add_remind;

    //创建时间
    public Date intime = new Date();


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurplus() {
        return surplus;
    }

    public void setSurplus(String surplus) {
        this.surplus = surplus;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public String getTake_resion() {
        return take_resion;
    }

    public void setTake_resion(String take_resion) {
        this.take_resion = take_resion;
    }

    public String getTake_way() {
        return take_way;
    }

    public void setTake_way(String take_way) {
        this.take_way = take_way;
    }

    public String getDoctor() {
        return doctor;
    }

    public void setDoctor(String doctor) {
        this.doctor = doctor;
    }

    public String getGap() {
        return gap;
    }

    public void setGap(String gap) {
        this.gap = gap;
    }

    public Set<TimeDose> getTimes_dose() {
        return times_dose;
    }

    public void setTimes_dose(Set<TimeDose> times_dose) {
        this.times_dose = times_dose;
    }

    public String getPersist() {
        return persist;
    }

    public void setPersist(String persist) {
        this.persist = persist;
    }

    public String getDose_type() {
        return dose_type;
    }

    public void setDose_type(String dose_type) {
        this.dose_type = dose_type;
    }

    public String getAdd_remind() {
        return add_remind;
    }

    public void setAdd_remind(String add_remind) {
        this.add_remind = add_remind;
    }

    public Date getIntime() {
        return intime;
    }

    public void setIntime(Date intime) {
        this.intime = intime;
    }
}