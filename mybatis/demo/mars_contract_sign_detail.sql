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

 Date: 22/06/2018 10:50:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for mars_contract_sign_detail
-- ----------------------------
DROP TABLE IF EXISTS `mars_contract_sign_detail`;
CREATE TABLE `mars_contract_sign_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime(3) NOT NULL,
  `deleted` datetime(3) DEFAULT NULL,
  `updated` datetime(3) DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT '0',
  `loanId` bigint(20) DEFAULT NULL,
  `userRefId` varchar(50) DEFAULT NULL,
  `appRefId` varchar(50) DEFAULT NULL,
  `asset` varchar(255) DEFAULT NULL,
  `contractConfigId` int(11) DEFAULT NULL,
  `externalResponse` varchar(500) DEFAULT NULL,
  `externalSerialNum` varchar(255) DEFAULT NULL,
  `describeContent` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `loanId` (`loanId`),
  KEY `refId` (`userRefId`),
  KEY `externalSerialNum` (`externalSerialNum`),
  KEY `created` (`created`)
) ENGINE=InnoDB AUTO_INCREMENT=42906 DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
