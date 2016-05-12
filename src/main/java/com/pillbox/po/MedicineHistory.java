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

    //服药状态
    public String status;

    //实际服用数量
    @ManyToOne(targetEntity = TimeDose.class, fetch = FetchType.EAGER)
    public TimeDose timeDose;

    //创建时间
    public Date intime = new Date();

}
