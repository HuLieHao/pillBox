package com.pillbox.dao;

import com.pillbox.po.DrugManagement;
import com.pillbox.po.MedicineHistory;
import com.pillbox.po.User;

import java.util.Date;
import java.util.List;

/**
 * User:  maktub
 * Date:   16/5/13 上午12:50
 */
public interface MedicineHistoryDao {

    void save(MedicineHistory history);

    void delete(MedicineHistory history);

    void update(MedicineHistory history);

    /**
     * 通过ID查询服药历史记录
     * @param id
     * @return
     */
    MedicineHistory selectById(Long id);

    /**
     * 通过user查询出服药历史记录
     * @param user
     * @return
     */
    List<MedicineHistory> selectByUser(User user);

    /**
     * 通过user与当天日期查询出当天的服药历史记录
     * @param user
     * @param date
     * @return
     */
    List<MedicineHistory> selectByUserGreaterDate(User user, Date date);

    /**
     * 删除服药历史记录
     * @param drug
     * @param status
     */
    void deleteByDrugAndStauts(DrugManagement drug, String status);

    List<MedicineHistory> selectByEndTime(Long time);

    enum Status {

        HAVE_MEDICINE("1", "已服药"),

        YET_MEDICINE("2", "待服药"),

        MISS_MEDICINE("3", "错过"),

        PASS_MEDICINE("4", "跳过")

;
        private String status;

        private String statusStr;

        Status(String status, String statusStr) {
            this.status = status;
            this.statusStr = statusStr;
        }

        public static String getStatsStr(String status_) {
            for(Status status : Status.values()) {
                if (status.getStatus().equals(status_)) {
                    return status.getStatusStr();
                }
            }
            return "";
        }

        public String getStatus() {
            return status;
        }

        public void setStatus(String status) {
            this.status = status;
        }

        public String getStatusStr() {
            return statusStr;
        }

        public void setStatusStr(String statusStr) {
            this.statusStr = statusStr;
        }
    }
}
