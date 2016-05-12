package com.pillbox.po;

import javax.persistence.*;
import java.util.Date;

/**
 * 预约医生日记
 * User:  maktub
 * Date:   16/2/18 下午11:38
 */
@Entity
@Table(name = "doctor_diary")
public class DoctorDiary {

    //主键自增ID
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    public Long id;

    //用户基本信息表关联
    @ManyToOne(targetEntity = User.class, fetch = FetchType.EAGER)
    public User user;

    //预约时间
    public Date appointment_time;

    //医生名字
    public String doctor_name;

    //是否提醒 0:不提醒 1: 提醒
    public String is_remind;

    //备注
    public String remarks;

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

    public Date getAppointment_time() {
        return appointment_time;
    }

    public void setAppointment_time(Date appointment_time) {
        this.appointment_time = appointment_time;
    }

    public String getDoctor_name() {
        return doctor_name;
    }

    public void setDoctor_name(String doctor_name) {
        this.doctor_name = doctor_name;
    }

    public String getIs_remind() {
        return is_remind;
    }

    public void setIs_remind(String is_remind) {
        this.is_remind = is_remind;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public Date getIntime() {
        return intime;
    }

    public void setIntime(Date intime) {
        this.intime = intime;
    }
}
