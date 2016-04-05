package com.pillbox.po;

import java.util.Date;

/**
 * 预约医生日记
 * User:  maktub
 * Date:   16/2/18 下午11:38
 */
public class DoctorDiary {

    //主键自增ID
    public Long id;

    //用户基本信息表关联
    public User user;

    //预约时间
    public Date appointment_time;

    //医生名字
    public String doctor_name;

    //是否提醒 0:不提醒 1: 提醒
    public Byte is_remind;

    //备注
    public String remarks;

    //修改时间
    public Date modtime;

    //创建时间
    public Date intime;

}
