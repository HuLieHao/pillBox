package com.pillbox.po;

import java.util.Date;

/**
 * 用户服药历史
 * User:  maktub
 * Date:   16/2/18 下午11:33
 */
public class MedicationHistory {

    //主键自增ID
    public Long id;

    //用户基本信息表关联
    public User user;

    //关联的用户服药药品
    public DrugManagement drug;

    //服药状态
    public Byte status;

    //服药感觉
    public Byte feel;

    //实际服药时间
    public Date actual_time;

    //实际服用数量
    public Integer actual_dose_num;

    //记录
    public String record;

    //创建时间
    public Date intime = new Date();

}
