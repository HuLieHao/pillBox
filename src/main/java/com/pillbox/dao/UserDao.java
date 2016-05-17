package com.pillbox.dao;

import com.pillbox.po.User;

import java.util.List;

/**
 * User:  maktub
 * Date:   16/4/4 下午11:51
 */
public interface UserDao {

    void save(User user);

    /**
     * 通过openId查询出用户
     * @param openId
     * @return
     */
    User selectByOpenId(String openId);

    /**
     * 查询出全部用户
     * @return
     */
    List<User> selectAll();

}
