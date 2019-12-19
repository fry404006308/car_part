/*
 Navicat MySQL Data Transfer

 Source Server         : localhost_3306_2
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : car_park

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 12/12/2019 03:14:07
*/

DROP database IF EXISTS `car_park`;
create database car_park character set utf8mb4 collate utf8mb4_general_ci;
use car_park;


SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for car_park_payments
-- ----------------------------
DROP TABLE IF EXISTS `car_park_payments`;
CREATE TABLE `car_park_payments`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_public_key` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `license_plate_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount_paid` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `paid` int(11) NOT NULL DEFAULT 0,
  `parking_minutes` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of car_park_payments
-- ----------------------------
INSERT INTO `car_park_payments` VALUES (1, '', '沪A 11223', 0, '2019-12-11 10:45:47', '2019-12-11 10:45:47', 80, 584);
INSERT INTO `car_park_payments` VALUES (2, '', '沪B 44556', 0, '2019-12-11 10:47:30', '2019-12-11 10:47:30', 0, 345);

SET FOREIGN_KEY_CHECKS = 1;
