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

 Date: 21/06/2018 20:52:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for mars_user
-- ----------------------------
DROP TABLE IF EXISTS `mars_user`;
CREATE TABLE `mars_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT BY GROUP,
  `created` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `deleted` datetime(3) DEFAULT NULL,
  `updated` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `version` int(11) NOT NULL DEFAULT '0',
  `refId` varchar(63) NOT NULL,
  `memberRefId` varchar(63) DEFAULT NULL,
  `appRefId` varchar(63) NOT NULL,
  `personRefId` varchar(63) DEFAULT NULL,
  `phone` varchar(63) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `passwordSalt` varchar(20) DEFAULT NULL,
  `sourceChannel` varchar(63) NOT NULL,
  `sourceChannelVersion` varchar(63) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_refId` (`refId`),
  KEY `ix_created` (`created`),
  KEY `ix_updated` (`updated`),
  KEY `ix_phone` (`phone`),
  KEY `ix_username` (`username`),
  KEY `ix_personRefId` (`personRefId`),
  KEY `auto_shard_key_APPREFID` (`appRefId`),
  KEY `auto_shard_key_REFID` (`refId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 dbpartition by RANGE_HASH(`refId`, `appRefId`, 4) tbpartition by null(`null`) tbpartitions 1;

SET FOREIGN_KEY_CHECKS = 1;
