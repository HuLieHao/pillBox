package com.pillbox.po;

/**
 * 用药提醒设置
 * User:  maktub
 * Date:   16/2/18 下午11:38
 */
public class BoxConf {

    //主键自增ID
    public Long id;

    //用户基本信息表关联
    public User user;

    //是否提醒 0:不提醒 1:提醒
    public Byte is_remind;

}
