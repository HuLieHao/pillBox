package com.pillbox.dao;

import com.pillbox.po.DrugManagement;
import com.pillbox.po.User;

import java.util.List;

/**
 * User:  maktub
 * Date:   16/5/11 下午12:06
 */
public interface DrugManagementDao {

    void save(DrugManagement drugManagement);

    List<DrugManagement> selectByOpenId(User user);

}
