package com.pillbox.po;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import java.util.Date;
import java.util.List;

/**
 * 我的药物管理
 * User:  maktub
 * Date:   16/2/18 下午11:32
 */
//@Entity
//@Table(name = "drug_management")
public class DrugManagement {

    //主键自增ID
    @Id
    public Long id;

    //用户基本信息表关联
    @OneToMany
    public User user;

    //药品名
    public String name;

    //剩余量
    public Float surplus;

    //单位
    public String unit;

    //服用原因
    public String take_resion;

    //服用方式
    public String take_way;

    //医生
    public String doctor;

    //间隔类型
    public String gap;

    //服务时间和剂量
    public List<TimeDose> times;

    //持续时间
    public Integer persist;

    //服药说明
    public Byte dose_type;

    //是否补充提醒 0: 不提醒 1: 提醒
    public Byte add_remind;

    //创建时间
    public Date intime = new Date();
}