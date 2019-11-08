/*
 Navicat Premium Data Transfer

 Source Server         : drdsTest
 Source Server Type    : MySQL
 Source Server Version : 50629
 Source Host           : 5t79cpuc8s1n0660public.drds.aliyuncs.com:3306
 Source Schema         : testrds

 Target Server Type    : MySQL
 Target Server Version : 50629
 File Encoding         : 65001

 Date: 22/06/2018 10:53:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for mars_contract_upload
-- ----------------------------
DROP TABLE IF EXISTS `mars_contract_upload`;
CREATE TABLE `mars_contract_upload` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT BY GROUP,
  `created` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `deleted` datetime(3) DEFAULT NULL,
  `updated` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `version` int(11) NOT NULL DEFAULT '0',
  `memberRefId` varchar(63) DEFAULT NULL,
  `appRefId` varchar(63) NOT NULL,
  `loanId` bigint(20) NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 dbpartition by hash(`personRefId`);

SET FOREIGN_KEY_CHECKS = 1;
