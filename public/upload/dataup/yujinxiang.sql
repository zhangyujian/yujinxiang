/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50162
Source Host           : localhost:3306
Source Database       : yujinxiang

Target Server Type    : MYSQL
Target Server Version : 50162
File Encoding         : 65001

Date: 2014-07-13 15:14:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `cat`
-- ----------------------------
DROP TABLE IF EXISTS `cat`;
CREATE TABLE `cat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `link` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cat
-- ----------------------------
INSERT INTO `cat` VALUES ('3', '新闻', null, 'news');
INSERT INTO `cat` VALUES ('4', '微电影', null, '111');
INSERT INTO `cat` VALUES ('5', '媒体报道', null, 'media');

-- ----------------------------
-- Table structure for `media`
-- ----------------------------
DROP TABLE IF EXISTS `media`;
CREATE TABLE `media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `oldname` varchar(100) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of media
-- ----------------------------
INSERT INTO `media` VALUES ('11', null, '9608-1uxcs19.png', null);
INSERT INTO `media` VALUES ('12', null, '9608-1v9l3gm.png', null);
INSERT INTO `media` VALUES ('13', null, '12108-mjn7yo.png', null);
INSERT INTO `media` VALUES ('14', null, '12108-1l92ucz.png', null);
INSERT INTO `media` VALUES ('15', null, '12108-1qsrplp.png', null);
INSERT INTO `media` VALUES ('16', null, '12108-7uloeq.png', null);
INSERT INTO `media` VALUES ('17', null, '6516-xs9lv.png', null);
INSERT INTO `media` VALUES ('18', null, '6516-9mug0k.png', null);
INSERT INTO `media` VALUES ('19', null, '6516-scv7p0.png', null);
INSERT INTO `media` VALUES ('20', null, '6516-luz5n9.png', null);
INSERT INTO `media` VALUES ('21', null, '9852-1gw0zr8.png', null);
INSERT INTO `media` VALUES ('22', null, '1816-1069a8n', null);

-- ----------------------------
-- Table structure for `posts`
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(30) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `title` text,
  `content` longtext,
  `status` varchar(20) DEFAULT 'open',
  `modified` datetime DEFAULT NULL,
  `type` varchar(20) DEFAULT 'post',
  `order` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES ('10', 'admin', '2014-06-22 19:04:43', '123123123123', '请使用markdown语法书写正文', 'open', null, 'post', null, '4');
INSERT INTO `posts` VALUES ('11', 'admin', '2014-06-22 19:04:52', '玩玩儿玩儿玩儿', '请使用markdown语法书写正文', 'open', null, 'post', null, '3');
INSERT INTO `posts` VALUES ('12', 'admin', '2014-06-25 14:47:01', '11111111111111', '请使用markdown语法书写正文\r\n\r\n![图片](/upload/img/3232-si0tia.jpg)\r\n\r\n111111\r\n---------\r\n\r\n', 'open', null, 'post', null, null);

-- ----------------------------
-- Table structure for `sorts`
-- ----------------------------
DROP TABLE IF EXISTS `sorts`;
CREATE TABLE `sorts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sorts
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` char(255) NOT NULL,
  `email` char(255) NOT NULL,
  `password` char(255) NOT NULL,
  UNIQUE KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin@admin.com', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `user` VALUES ('4', '张玉建', 'zhangyujian@xiangshang360.com', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `user` VALUES ('8', '刘洋111', 'liuyang@xiangshang360.com', '6512bd43d9caa6e02c990b0a82652dca');
INSERT INTO `user` VALUES ('13', '测试', 'test1111@test.com', '4297f44b13955235245b2497399d7a93');
INSERT INTO `user` VALUES ('14', '测试测试测试测试测试测试测试测试测试测试测试测试', 'test1112@test.com', '52ef0af336c65cdc8c221e79246b7171');
INSERT INTO `user` VALUES ('15', '测试测试测试', 'test111333@test.com', 'ac01f1bac5b90490edef64996a53f6ad');
