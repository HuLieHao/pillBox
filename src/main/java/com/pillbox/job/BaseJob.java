package com.pillbox.job;

import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/**
 * User:  maktub
 * Date:   16/5/13 上午12:46
 */
public class BaseJob {

//    private static ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 5, 600, TimeUnit.SECONDS, new LinkedBlockingQueue<Runnable>(1000000));
//
//    protected void pushTask(Runnable task) {
//        if (task != null) {
//            threadPoolExecutor.execute(task);
//        }
//    }
}
