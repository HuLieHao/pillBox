package com.pillbox.po;

import javax.persistence.*;
import java.util.Date;

/**
 * 用户服药历史
 * User:  maktub
 * Date:   16/2/18 下午11:33
 */
@Entity
@Table(name = "medicine_history")
public class MedicineHistory {

    //主键自增ID
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    public Long id;

    //用户基本信息表关联
    @ManyToOne(targetEntity = User.class, fetch = FetchType.EAGER)
    public User user;

    //关联的用户服药药品
    @ManyToOne(targetEntity = DrugManagement.class, fetch = FetchType.EAGER)
    public DrugManagement drug;

    //服药状态 1:已服药 2:待服药 3:错过 4:跳过
    public String status;

    //服药状态字符串
    public String statusStr;

    //实际服用数量
    @ManyToOne(targetEntity = TimeDose.class, fetch = FetchType.EAGER)
    public TimeDose timeDose;

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

    public DrugManagement getDrug() {
        return drug;
    }

    public void setDrug(DrugManagement drug) {
        this.drug = drug;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public TimeDose getTimeDose() {
        return timeDose;
    }

    public void setTimeDose(TimeDose timeDose) {
        this.timeDose = timeDose;
    }

    public Date getIntime() {
        return intime;
    }

    public void setIntime(Date intime) {
        this.intime = intime;
    }

    public String getStatusStr() {
        return statusStr;
    }

    public void setStatusStr(String statusStr) {
        this.statusStr = statusStr;
    }
}
