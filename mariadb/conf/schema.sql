/*
Navicat MySQL Data Transfer

Source Server         : 34
Source Server Version : 50505
Source Host           : 10.39.148.186:13306
Source Database       : Bird

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-09-12 15:51:13
*/

SET FOREIGN_KEY_CHECKS=0;

CREATE DATABASE `Bird`;
USE `Bird`;
-- ----------------------------
-- Table structure for B_GSM
-- ----------------------------
DROP TABLE IF EXISTS `B_GSM`;
CREATE TABLE `B_GSM` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day_id` date DEFAULT NULL,
  `hour_id` tinyint(2) DEFAULT 0,
  `location` varchar(20) DEFAULT NULL COMMENT '城市',
  `access` decimal(6,2) DEFAULT 0.00 COMMENT '2G无线接通率',
  `lost` decimal(6,2) DEFAULT 0.00 COMMENT '2G无线掉线率',
  `handover` decimal(6,2) DEFAULT 0.00 COMMENT '2G切换成功率',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=930 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for B_L_FDD
-- ----------------------------
DROP TABLE IF EXISTS `B_L_FDD`;
CREATE TABLE `B_L_FDD` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day_id` datetime NOT NULL,
  `location` varchar(20) DEFAULT NULL COMMENT '城市',
  `flow` decimal(10,2) unsigned zerofill DEFAULT 00000000.00 COMMENT '上下行流量之和',
  `volte_traffic` decimal(10,2) unsigned zerofill DEFAULT 00000000.00 COMMENT 'Volte总话务量',
  `rrc_users` int(10) unsigned zerofill DEFAULT 0000000000 COMMENT 'RRC平均用户数',
  `rrc_cell_user_mean` int(10) unsigned zerofill DEFAULT 0000000000 COMMENT '每小区RRC平均用户数',
  `rrc_cell_users_max` int(10) unsigned zerofill DEFAULT 0000000000 COMMENT 'rrc最大用户数',
  `rrc_cell_band_users` int(10) unsigned zerofill DEFAULT 0000000000 COMMENT 'rrc平均用户数',
  `flow_tti` int(10) unsigned zerofill DEFAULT 0000000000,
  `cce` decimal(6,2) unsigned zerofill DEFAULT 0000.00 COMMENT 'CCE利用率均值',
  `prb` decimal(6,2) unsigned zerofill DEFAULT 0000.00,
  PRIMARY KEY (`id`,`day_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for B_L_GSM
-- ----------------------------
DROP TABLE IF EXISTS `B_L_GSM`;
CREATE TABLE `B_L_GSM` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day_id` datetime NOT NULL,
  `location` varchar(20) DEFAULT NULL COMMENT '城市',
  `tel_traffic` decimal(10,2) unsigned zerofill DEFAULT 00000000.00 COMMENT '忙时语音话务量',
  `data_traffic` decimal(10,2) unsigned zerofill DEFAULT 00000000.00 COMMENT '上下行流量之和',
  `tel_traffic_tch` decimal(10,2) unsigned zerofill DEFAULT 00000000.00 COMMENT '上下行流量之和',
  `data_traffic_pdch` decimal(10,2) unsigned zerofill DEFAULT 00000000.00 COMMENT '每PDCH数据流量',
  `wireless_rate` decimal(10,2) unsigned zerofill DEFAULT 00000000.00,
  PRIMARY KEY (`id`,`day_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for B_L_NBIOT
-- ----------------------------
DROP TABLE IF EXISTS `B_L_NBIOT`;
CREATE TABLE `B_L_NBIOT` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day_id` datetime NOT NULL,
  `location` varchar(20) DEFAULT NULL COMMENT '城市',
  `rrc_users_cell` int(10) unsigned zerofill DEFAULT 0000000000 COMMENT 'RRC最大用户数',
  `npdcch` decimal(10,2) unsigned zerofill DEFAULT 00000000.00 COMMENT 'NPDCCH利用率',
  PRIMARY KEY (`id`,`day_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for B_L_TDD
-- ----------------------------
DROP TABLE IF EXISTS `B_L_TDD`;
CREATE TABLE `B_L_TDD` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day_id` datetime NOT NULL,
  `location` varchar(20) DEFAULT NULL COMMENT '城市',
  `flow` decimal(10,2) unsigned zerofill DEFAULT 00000000.00 COMMENT '上下行流量之和',
  `volte_traffic` decimal(10,2) unsigned zerofill DEFAULT 00000000.00 COMMENT 'Volte总话务量',
  `rrc_users` int(10) unsigned zerofill DEFAULT 0000000000 COMMENT 'RRC平均用户数',
  `rrc_cell_user_mean` int(10) unsigned zerofill DEFAULT 0000000000 COMMENT '每小区RRC平均用户数',
  `rrc_cell_users_max` int(10) unsigned zerofill DEFAULT 0000000000 COMMENT 'rrc最大用户数',
  `rrc_cell_band_users` int(10) unsigned zerofill DEFAULT 0000000000 COMMENT 'rrc平均用户数',
  `flow_tti` int(10) unsigned zerofill DEFAULT 0000000000,
  `cce` decimal(6,2) unsigned zerofill DEFAULT 0000.00 COMMENT 'CCE利用率均值',
  `prb` decimal(6,2) unsigned zerofill DEFAULT 0000.00,
  PRIMARY KEY (`id`,`day_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for B_LTE_FDD
-- ----------------------------
DROP TABLE IF EXISTS `B_LTE_FDD`;
CREATE TABLE `B_LTE_FDD` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day_id` date DEFAULT NULL,
  `hour_id` tinyint(2) DEFAULT 0,
  `location` varchar(20) DEFAULT NULL COMMENT '城市',
  `access` decimal(6,2) DEFAULT 0.00 COMMENT 'LTE无线接通率',
  `lost` decimal(6,2) DEFAULT 0.00 COMMENT 'LTE无线掉线率',
  `handover` decimal(6,2) DEFAULT 0.00 COMMENT 'LTE切换成功率',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=865 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for B_LTE_TDD
-- ----------------------------
DROP TABLE IF EXISTS `B_LTE_TDD`;
CREATE TABLE `B_LTE_TDD` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day_id` date DEFAULT NULL,
  `hour_id` tinyint(2) DEFAULT 0,
  `location` varchar(20) DEFAULT NULL COMMENT '城市',
  `access` decimal(6,2) DEFAULT 0.00 COMMENT 'LTE无线接通率',
  `lost` decimal(6,2) DEFAULT 0.00 COMMENT 'LTE无线掉线率',
  `handover` decimal(6,2) DEFAULT 0.00 COMMENT 'LTE切换成功率',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=879 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for B_NBIOT
-- ----------------------------
DROP TABLE IF EXISTS `B_NBIOT`;
CREATE TABLE `B_NBIOT` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day_id` date DEFAULT NULL,
  `hour_id` tinyint(2) DEFAULT 0,
  `location` varchar(20) DEFAULT NULL COMMENT '城市',
  `access` decimal(6,2) unsigned zerofill DEFAULT 0000.00 COMMENT 'NBI无线接通率',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=820 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for B_S_GSM
-- ----------------------------
DROP TABLE IF EXISTS `B_S_GSM`;
CREATE TABLE `B_S_GSM` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day_id` date NOT NULL,
  `location` varchar(20) DEFAULT NULL COMMENT '城市',
  `cell` int(10) unsigned zerofill DEFAULT 0000000000 COMMENT 'GSM小区数',
  `erbs` int(10) unsigned zerofill DEFAULT 0000000000 COMMENT 'GSM基站数',
  PRIMARY KEY (`id`,`day_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for B_S_LTE_FDD
-- ----------------------------
DROP TABLE IF EXISTS `B_S_LTE_FDD`;
CREATE TABLE `B_S_LTE_FDD` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day_id` date NOT NULL,
  `location` varchar(20) DEFAULT NULL COMMENT '城市',
  `carrier` int(10) unsigned zerofill DEFAULT 0000000000 COMMENT 'LTEFDD载波数',
  `cell` int(10) unsigned zerofill DEFAULT 0000000000 COMMENT 'LTEFDD小区数',
  `erbs` int(10) unsigned zerofill DEFAULT 0000000000 COMMENT 'LTEFDD基站数',
  `high_peed` int(10) unsigned zerofill DEFAULT 0000000000 COMMENT '开启高速移动基站数(LTEFDD)',
  `co_enhance` int(10) unsigned zerofill DEFAULT 0000000000 COMMENT '开启覆盖增强基站数(LTEFDD)',
  `ca_agg` int(10) unsigned zerofill DEFAULT 0000000000 COMMENT '开启载波聚合基站数(LTEFDD)',
  PRIMARY KEY (`id`,`day_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for B_S_LTE_NBIOT
-- ----------------------------
DROP TABLE IF EXISTS `B_S_LTE_NBIOT`;
CREATE TABLE `B_S_LTE_NBIOT` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day_id` date NOT NULL,
  `location` varchar(20) DEFAULT NULL COMMENT '城市',
  `cell` int(10) unsigned zerofill DEFAULT 0000000000 COMMENT 'NBIOT小区数',
  `erbs` int(10) unsigned zerofill DEFAULT 0000000000 COMMENT 'NBIOT基站数',
  PRIMARY KEY (`id`,`day_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for B_S_LTE_TDD
-- ----------------------------
DROP TABLE IF EXISTS `B_S_LTE_TDD`;
CREATE TABLE `B_S_LTE_TDD` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day_id` date NOT NULL,
  `location` varchar(20) DEFAULT NULL COMMENT '城市',
  `carrier` int(10) unsigned zerofill DEFAULT 0000000000 COMMENT 'LTETDD载波数',
  `cell` int(10) unsigned zerofill DEFAULT 0000000000 COMMENT 'LTETDD小区数',
  `erbs` int(10) unsigned zerofill DEFAULT 0000000000 COMMENT 'LTETDD基站数',
  `high_peed` int(10) unsigned zerofill DEFAULT 0000000000 COMMENT '开启高速移动基站数(LTETDD)',
  `co_enhance` int(10) unsigned zerofill DEFAULT 0000000000 COMMENT '开启覆盖增强基站数(LTETDD)',
  `ca_agg` int(10) unsigned zerofill DEFAULT 0000000000 COMMENT '开启载波聚合基站数(LTETDD)',
  PRIMARY KEY (`id`,`day_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for B_VOLTE_FDD
-- ----------------------------
DROP TABLE IF EXISTS `B_VOLTE_FDD`;
CREATE TABLE `B_VOLTE_FDD` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day_id` date DEFAULT NULL,
  `hour_id` tinyint(2) DEFAULT 0,
  `location` varchar(20) DEFAULT NULL COMMENT '城市',
  `access` decimal(6,2) DEFAULT 0.00 COMMENT '无线接通率',
  `lost` decimal(6,2) DEFAULT 0.00 COMMENT '无线掉线率',
  `handover` decimal(6,2) DEFAULT 0.00 COMMENT '切换成功率',
  `srvcc` decimal(6,2) DEFAULT 0.00 COMMENT 'SRVCC切换成功率',
  `upackagelost` decimal(6,2) DEFAULT 0.00 COMMENT '上行丢包率',
  `dpackagelost` decimal(6,2) DEFAULT 0.00 COMMENT '下行丢包率',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=921 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for B_VOLTE_TDD
-- ----------------------------
DROP TABLE IF EXISTS `B_VOLTE_TDD`;
CREATE TABLE `B_VOLTE_TDD` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day_id` date DEFAULT NULL,
  `hour_id` tinyint(2) DEFAULT 0,
  `location` varchar(20) DEFAULT NULL COMMENT '城市',
  `access` decimal(6,2) DEFAULT 0.00 COMMENT '无线接通率',
  `lost` decimal(6,2) DEFAULT 0.00 COMMENT '无线掉线率',
  `handover` decimal(4,2) DEFAULT 0.00 COMMENT '切换成功率',
  `srvcc` decimal(6,2) DEFAULT 0.00 COMMENT 'SRVCC切换成功率',
  `upackagelost` decimal(6,2) DEFAULT 0.00 COMMENT '上行丢包率',
  `dpackagelost` decimal(6,2) DEFAULT 0.00 COMMENT '下行丢包率',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=764 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `connName` varchar(50) CHARACTER SET utf8 DEFAULT '',
  `cityChinese` varchar(50) CHARACTER SET utf8 DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for databaseconn
-- ----------------------------
DROP TABLE IF EXISTS `databaseconn`;
CREATE TABLE `databaseconn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `connName` varchar(50) DEFAULT NULL,
  `cityChinese` varchar(50) DEFAULT NULL,
  `host` varchar(50) DEFAULT NULL,
  `port` varchar(30) DEFAULT NULL,
  `dbName` varchar(30) DEFAULT NULL,
  `userName` varchar(30) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `subNetwork` varchar(500) DEFAULT NULL,
  `subNetworkFdd` varchar(500) DEFAULT NULL,
  `subNetworkNbiot` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for databaseconn_2G
-- ----------------------------
DROP TABLE IF EXISTS `databaseconn_2G`;
CREATE TABLE `databaseconn_2G` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `connName` varchar(50) DEFAULT NULL,
  `cityChinese` varchar(50) DEFAULT NULL,
  `host` varchar(50) DEFAULT NULL,
  `port` varchar(30) DEFAULT NULL,
  `dbName` varchar(30) DEFAULT NULL,
  `userName` varchar(30) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for kpiformula
-- ----------------------------
DROP TABLE IF EXISTS `kpiformula`;
CREATE TABLE `kpiformula` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kpiName` varchar(50) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `kpiFormula` varchar(20000) DEFAULT NULL,
  `kpiPrecision` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5035 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for kpiformula_2G
-- ----------------------------
DROP TABLE IF EXISTS `kpiformula_2G`;
CREATE TABLE `kpiformula_2G` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kpiName` varchar(50) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `kpiFormula` varchar(1500) DEFAULT NULL,
  `kpiPrecision` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=474 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for template
-- ----------------------------
DROP TABLE IF EXISTS `template`;
CREATE TABLE `template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `templateName` text DEFAULT NULL,
  `elementId` varchar(1000) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6281 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for template_2G
-- ----------------------------
DROP TABLE IF EXISTS `template_2G`;
CREATE TABLE `template_2G` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `templateName` text DEFAULT NULL,
  `elementId` varchar(500) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=189 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
