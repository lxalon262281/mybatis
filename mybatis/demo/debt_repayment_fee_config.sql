/*
 Navicat Premium Data Transfer

 Source Server         : cashbusTest
 Source Server Type    : MySQL
 Source Server Version : 50616
 Source Host           : cashbustest.mysql.rds.aliyuncs.com:3306
 Source Schema         : debt

 Target Server Type    : MySQL
 Target Server Version : 50616
 File Encoding         : 65001

 Date: 14/06/2018 09:51:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for debt_repayment_fee_config
-- ----------------------------
DROP TABLE IF EXISTS `debt_repayment_fee_config`;
CREATE TABLE `debt_repayment_fee_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `deleted` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `produce` varchar(50) NOT NULL COMMENT '产品标识',
  `assetChannel` varchar(50) NOT NULL COMMENT '渠道',
  `startTime` datetime NOT NULL,
  `endTime` datetime DEFAULT NULL,
  `principal` decimal(10,2) NOT NULL COMMENT '当期本金',
  `avgCapitalPlusInterest` decimal(10,2) DEFAULT NULL COMMENT '每期等额本息',
  `thirdPartyFeeRate` double DEFAULT NULL,
  `thirdPartyInterest` decimal(10,2) DEFAULT NULL COMMENT '渠道利息',
  `thirdPartyOtherFee` decimal(10,2) DEFAULT NULL COMMENT '渠道其他费用',
  `premiumProcessFee` decimal(10,2) DEFAULT NULL COMMENT '信审费',
  `serviceFee` decimal(10,2) DEFAULT NULL COMMENT '服务费',
  `toleranceServiceFee` decimal(10,2) DEFAULT NULL COMMENT '容时服务费',
  `toleranceInterest` decimal(10,2) DEFAULT NULL COMMENT '容时利息',
  `amount` int(11) NOT NULL COMMENT '借款金额',
  `days` int(11) NOT NULL COMMENT '借款天数（分期为30的整数）',
  `installNum` int(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_startTime` (`startTime`) USING BTREE,
  KEY `ix_endTime` (`endTime`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
