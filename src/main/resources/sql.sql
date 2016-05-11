CREATE DATABASE `pillbox` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE TABLE `user` (
  `open_id` varchar(255) NOT NULL,
  `intime` datetime DEFAULT NULL,
  PRIMARY KEY (`open_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `drug_management` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `add_remind` varchar(255) DEFAULT NULL,
  `doctor` varchar(255) DEFAULT NULL,
  `dose_type` varchar(255) DEFAULT NULL,
  `gap` varchar(255) DEFAULT NULL,
  `intime` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `persist` varchar(255) DEFAULT NULL,
  `surplus` varchar(255) DEFAULT NULL,
  `take_resion` varchar(255) DEFAULT NULL,
  `take_way` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `user_open_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_7o26iyxu8h7jy415so3vo58nf` (`user_open_id`),
  CONSTRAINT `FK_7o26iyxu8h7jy415so3vo58nf` FOREIGN KEY (`user_open_id`) REFERENCES `user` (`open_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `drug_management_time_dose` (
  `drug_management_id` bigint(20) NOT NULL,
  `times_dose_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_2l843x3mlb0knyd6b53sgpxqo` (`times_dose_id`),
  KEY `FK_21x75g238i0sq8465kn4qg1l9` (`drug_management_id`),
  CONSTRAINT `FK_21x75g238i0sq8465kn4qg1l9` FOREIGN KEY (`drug_management_id`) REFERENCES `drug_management` (`id`),
  CONSTRAINT `FK_2l843x3mlb0knyd6b53sgpxqo` FOREIGN KEY (`times_dose_id`) REFERENCES `time_dose` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `time_dose` (
  `id` bigint(20) NOT NULL,
  `num` bigint(20) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;