/*
 Navicat Premium Data Transfer

 Source Server         : 11我的本地
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : 127.0.0.1:3306
 Source Schema         : bqs_mall

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 05/07/2024 13:32:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bqs_cate
-- ----------------------------
DROP TABLE IF EXISTS `bqs_cate`;
CREATE TABLE `bqs_cate`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `cate_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `sort` int(11) NULL DEFAULT 0,
  `delete_time` int(11) NULL DEFAULT 0,
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bqs_cate
-- ----------------------------
INSERT INTO `bqs_cate` VALUES (1, '/', '首页', 1, 0, '2024-07-05 10:59:32');
INSERT INTO `bqs_cate` VALUES (2, '/code', '源码', 1, 0, '2024-07-05 11:38:04');

-- ----------------------------
-- Table structure for bqs_config
-- ----------------------------
DROP TABLE IF EXISTS `bqs_config`;
CREATE TABLE `bqs_config`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_size` int(11) NULL DEFAULT 0 COMMENT '分页',
  `down_count` int(11) NULL DEFAULT 0 COMMENT '下载数',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of bqs_config
-- ----------------------------
INSERT INTO `bqs_config` VALUES (1, 50, 0, '2024-07-05 11:29:39');

-- ----------------------------
-- Table structure for bqs_goods
-- ----------------------------
DROP TABLE IF EXISTS `bqs_goods`;
CREATE TABLE `bqs_goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_id` int(11) NULL DEFAULT 0,
  `cover` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `imgs` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `price` decimal(10, 2) NULL DEFAULT 0.00,
  `pan_list` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `pay_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `sort` int(11) NULL DEFAULT 0,
  `delete_time` int(11) NULL DEFAULT 0,
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bqs_goods
-- ----------------------------
INSERT INTO `bqs_goods` VALUES (1, 2, 'https://img.dkewl.com/202407/6aecf90610.jpg', 'Telegram统计机器人源码/TG记账群发机器源码人/TG自动记账全开源版本', 'telegram统计机器人源码/TG记账群发机器源码人/TG自动记账全开源版本\r\n\r\n能群发，能统计账单，能记账，telegram机器人，使用方便。全网都是这套源码', 'telegram统计机器人源码/TG记账群发机器源码人/TG自动记账全开源版本', '能群发，能统计账单，能记账，telegram机器人，使用方便。全网都是这套源码', 'https://img.dkewl.com/202407/6aecf90610.jpg,https://img.dkewl.com/202407/6aecf90874.jpg', 0.00, NULL, '', 0, 0, '2024-06-05 11:31:03');
INSERT INTO `bqs_goods` VALUES (2, 2, 'https://img.dkewl.com/202407/5beac29537.png', 'WordPress开发进群V2主题源码，多种引流方法，引私域二次变现', 'WordPress开发进群V2主题源码，多种引流方法，引私域二次变现', '进群主题源码,付费进群系统', '全新前端UI界面，多种前端交互特效让页面不再单调，进群页面群成员数，群成员头像名称，每次刷新页面随机更新不重复，最下面评论和点赞也是如此随机刷新不重复\r\n\r\n进群页面简介，群聊名称，群内展示，常见问题后台一键开关方便控制，付费进群系统后台自定义你的内容，底部显示你所设置的进群金额，也可以修改付费获取某些资源，搭建者自己集思广益，搭建的知识工具里面的内容才是内核', 'https://img.dkewl.com/202407/5beac29537.png', 0.00, NULL, '', 0, 0, '2024-07-05 11:32:07');

-- ----------------------------
-- Table structure for bqs_reward
-- ----------------------------
DROP TABLE IF EXISTS `bqs_reward`;
CREATE TABLE `bqs_reward`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `amount` decimal(10, 2) NULL DEFAULT 0.00,
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
