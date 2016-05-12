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

    void update(DrugManagement drugManagement);

    void delete(DrugManagement drugManagement);

    void saveOrUpdate(DrugManagement drug);

    List<DrugManagement> selectByOpenId(User user);

    DrugManagement selectById(Long id);

    //单位
    enum Unit {

        SLICE("1", "片"),

        CAPSULE("2", "胶囊"),

        PILLS("3", "药丸"),

        GRAM("4", "克"),

        MILLILITER("5", "毫升"),

        DROP("6", "滴");

        private String unit;

        private String unitStr;

        Unit(String unit, String unitStr) {
            this.unit = unit;
            this.unitStr = unitStr;
        }

        public static String getUnit(String unitStr) {
            for(Unit unit : Unit.values()) {
                if (unit.getUnitStr().equals(unitStr)) {
                    return unit.getUnit();
                }
            }
            return "";
        }

        public static String getUnitStr(String unit_) {
            for(Unit unit : Unit.values()) {
                if (unit.getUnit().equals(unit_)) {
                    return unit.getUnitStr();
                }
            }
            return "";
        }

        public String getUnit() {
            return unit;
        }

        public String getUnitStr() {
            return unitStr;
        }
    }

    //服用方式
    enum Takeway {

        PERORAL("1", "口服"),

        INJECTION("2", "注射"),

        OTHERS("3", "其他");

        Takeway(String takeway, String takewayStr) {
            this.takeway = takeway;
            this.takewayStr = takewayStr;
        }

        private String takeway;

        private String takewayStr;

        public static String getTakeway(String takewayStr) {
            for(Takeway takeway : Takeway.values()) {
                if (takeway.getTakewayStr().equals(takewayStr)) {
                    return takeway.getTakeway();
                }
            }
            return "";
        }

        public static String getTakewayStr(String takeway_) {
            for(Takeway takeway : Takeway.values()) {
                if (takeway.getTakeway().equals(takeway_)) {
                    return takeway.getTakewayStr();
                }
            }
            return "";
        }

        public String getTakeway() {
            return takeway;
        }

        public String getTakewayStr() {
            return takewayStr;
        }
    }

    //间隔
    enum Gap {

        DAILY("1", "每日"),

        ONETIME("2", "一次性事件");

        private String gap;

        private String gapStr;

        Gap(String gap, String gapStr) {
            this.gap = gap;
            this.gapStr = gapStr;
        }

        public static String getGapStr(String gap_) {
            for(Gap gap : Gap.values()) {
                if (gap.getGap().equals(gap_)) {
                    return gap.getGapStr();
                }
            }
            return "";
        }

        public String getGap() {
            return gap;
        }

        public String getGapStr() {
            return gapStr;
        }
    }

    //持续时间
    enum Persist {

        DAY_1("1", "1天"),

        DAY_2("2", "2天"),

        DAY_3("3", "3天"),

        DAY_4("4", "4天"),

        DAY_5("5", "5天"),

        DAY_6("6", "6天"),

        WEEK_1("7", "1周"),

        WEEK_2("14", "2周"),

        WEEK_3("21", "3周"),

        MONTH_1("30", "1月"),
        ;
        private String persist;

        private String persistStr;

        Persist(String persist, String persistStr) {
            this.persist = persist;
            this.persistStr = persistStr;
        }

        public static String getPersistStr(String persist_) {
            for(Persist persist : Persist.values()) {
                if (persist.getPersist().equals(persist_)) {
                    return persist.getPersistStr();
                }
            }
            return "";
        }

        public String getPersist() {
            return persist;
        }

        public String getPersistStr() {
            return persistStr;
        }
    }

    //服用说明
    enum DoseType {

        TYPE_1("1", "饭前服用"),

        TYPE_2("2", "与食物一起"),

        TYPE_3("3", "饭后服用"),

        TYPE_4("4", "与食物无关");

        private String doseType;

        private String doseTypeStr;

        DoseType(String doseType, String doseTypeStr) {
            this.doseType = doseType;
            this.doseTypeStr = doseTypeStr;
        }

        public static String getDoseTypeStr(String doseType_) {
            for(DoseType doseType : DoseType.values()) {
                if (doseType.getDoseType().equals(doseType_)) {
                    return doseType.getDoseTypeStr();
                }
            }
            return "";
        }

        public String getDoseType() {
            return doseType;
        }

        public String getDoseTypeStr() {
            return doseTypeStr;
        }
    }
}
