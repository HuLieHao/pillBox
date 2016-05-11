package com.pillbox.service.impl;

import com.pillbox.dao.TimeDoseDao;
import com.pillbox.po.TimeDose;
import com.pillbox.service.TimeDoseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * User:  maktub
 * Date:   16/5/11 下午4:44
 */
@Service
@Transactional
public class TimeDoseServiceImpl implements TimeDoseService {

    @Autowired
    private TimeDoseDao timeDoseDao;

    @Override
    public void save(TimeDose dose) {
        this.timeDoseDao.save(dose);
    }
}
