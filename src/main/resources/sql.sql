CREATE DATABASE `pillbox` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

# 用户
CREATE TABLE `user` (
  `open_id` varchar(255) NOT NULL,
  `intime` datetime DEFAULT NULL,
  PRIMARY KEY (`open_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# 服药管理
CREATE TABLE `drug_management` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `add_remind` varchar(255) DEFAULT NULL,
  `doctor` varchar(255) DEFAULT NULL,
  `dose_type` varchar(255) DEFAULT NULL,
  `dose_type_str` varchar(255) DEFAULT NULL,
  `gap` varchar(255) DEFAULT NULL,
  `gapStr` varchar(255) DEFAULT NULL,
  `intime` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `persist` varchar(255) DEFAULT NULL,
  `persistStr` varchar(255) DEFAULT NULL,
  `surplus` varchar(255) DEFAULT NULL,
  `take_resion` varchar(255) DEFAULT NULL,
  `take_way` varchar(255) DEFAULT NULL,
  `take_way_str` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `unitStr` varchar(255) DEFAULT NULL,
  `user_open_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_7o26iyxu8h7jy415so3vo58nf` (`user_open_id`),
  CONSTRAINT `FK_7o26iyxu8h7jy415so3vo58nf` FOREIGN KEY (`user_open_id`) REFERENCES `user` (`open_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

# 服药时间与剂量
CREATE TABLE `time_dose` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `num` bigint(20) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  `time_str` varchar(255) DEFAULT NULL,
  `drug_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_kss6y1x9aveaeb7ofxpxxhr0h` (`drug_id`),
  CONSTRAINT `FK_kss6y1x9aveaeb7ofxpxxhr0h` FOREIGN KEY (`drug_id`) REFERENCES `drug_management` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

CREATE TABLE `doctor_diary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `appointment_time` datetime DEFAULT NULL,
  `doctor_name` varchar(255) DEFAULT NULL,
  `intime` datetime DEFAULT NULL,
  `is_remind` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `user_open_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_hkodnuysn98v662mgupm2lc0f` (`user_open_id`),
  CONSTRAINT `FK_hkodnuysn98v662mgupm2lc0f` FOREIGN KEY (`user_open_id`) REFERENCES `user` (`open_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;