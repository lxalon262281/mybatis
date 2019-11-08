/*
 Navicat Premium Data Transfer

 Source Server         : cashbusTest
 Source Server Type    : MySQL
 Source Server Version : 50616
 Source Host           : cashbustest.mysql.rds.aliyuncs.com:3306
 Source Schema         : cashbus

 Target Server Type    : MySQL
 Target Server Version : 50616
 File Encoding         : 65001

 Date: 21/06/2018 20:38:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for mars_contract_upload_log
-- ----------------------------
DROP TABLE IF EXISTS `mars_contract_upload_log`;
CREATE TABLE `mars_contract_upload_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT BY GROUP,
  `created` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `deleted` datetime(3) DEFAULT NULL,
  `updated` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `version` int(11) NOT NULL DEFAULT '0',
  `memberRefId` varchar(63) DEFAULT NULL,
  `appRefId` varchar(63) NOT NULL,
  'loanId' bigint(20) NOT NULL,
  `personRefId` varchar(63) DEFAULT NULL,
  `contractName` varchar(255) DEFAULT NULL,
  `contractType` varchar(255) DEFAULT NULL,
  `asset` varchar(255) DEFAULT NULL,
  `thirdPartyStorageName` varchar(255) DEFAULT NULL,
  `uploadStatus` varchar(255) DEFAULT NULL,
  `uploadTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_created` (`created`),
  KEY `ix_loanId` (`loanId`),
  KEY `ix_personRefId` (`personRefId`),
  KEY `ix_appRefId` (`appRefId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 dbpartition by HASH(`personRefId`) tbpartition by null(`null`) tbpartitions 1;

SET FOREIGN_KEY_CHECKS = 1;
