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

    List<MedicineHistory> selectByUser(User user);

    List<MedicineHistory> selectByUserGreaterDate(User user, Date date);

    void deleteByDrugAndStauts(DrugManagement drug, String status);

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
