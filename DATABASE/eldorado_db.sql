/*
 Navicat Premium Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 50729
 Source Host           : localhost:3306
 Source Schema         : eldorado_db

 Target Server Type    : MySQL
 Target Server Version : 50729
 File Encoding         : 65001

 Date: 13/08/2020 23:02:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for migration
-- ----------------------------
DROP TABLE IF EXISTS `migration`;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of migration
-- ----------------------------
BEGIN;
INSERT INTO `migration` VALUES ('m000000_000000_base', 1597340724);
INSERT INTO `migration` VALUES ('m200813_173936_create_user_table', 1597340730);
INSERT INTO `migration` VALUES ('m200813_174024_create_song_table', 1597340730);
INSERT INTO `migration` VALUES ('m200813_174302_add_verif_token_user_table', 1597340731);
INSERT INTO `migration` VALUES ('m200813_174337_add_access_token_user_table', 1597340731);
COMMIT;

-- ----------------------------
-- Table structure for song
-- ----------------------------
DROP TABLE IF EXISTS `song`;
CREATE TABLE `song` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(512) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of song
-- ----------------------------
BEGIN;
INSERT INTO `song` VALUES (1, 'Skrillex', 11, 220922);
INSERT INTO `song` VALUES (2, 'Deep', 13, 43211);
INSERT INTO `song` VALUES (5, 'Test', 22, 220432);
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `access_token` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (6, 'AdminTets', 'njiQxwKzmphT2oWV2nOI0ZG5gukoRar9', 'admin', '$2y$13$dj59GpiwJSNj3GsqdpZq3eckiKOndt7j.BHxZHHGhKw7PF57jUJBC', NULL, 'admin@dayrep.com', 10, 1597344693, 1597344693, NULL);
INSERT INTO `user` VALUES (8, 'TetsBest', 'D6UPwPvbu-Eqs6otfvjbEcCpQN3Aui8B', 'admin', '$2y$13$wOg.UsEQz9eMV6rt0OiqRuZpGpyN8OKfnMgrsYEySpOVc0yJ7jc7e', NULL, 'tests@dayrep.comtuktk', 10, 1597345603, 1597345603, NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
