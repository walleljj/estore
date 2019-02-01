/*
Navicat MySQL Data Transfer

Source Server         : keshe
Source Server Version : 50173
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2018-12-25 11:25:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t1
-- ----------------------------
DROP TABLE IF EXISTS `t1`;
CREATE TABLE `t1` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of t1
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_book
-- ----------------------------
DROP TABLE IF EXISTS `tbl_book`;
CREATE TABLE `tbl_book` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_book
-- ----------------------------
INSERT INTO `tbl_book` VALUES ('1', 'JAVA核心技术', '81');
INSERT INTO `tbl_book` VALUES ('2', 'UNIX技术手册', '21.15');
INSERT INTO `tbl_book` VALUES ('3', 'ORACLE9I参考手册', '108');
INSERT INTO `tbl_book` VALUES ('4', 'JSP设计(第三版)', '59.25');
INSERT INTO `tbl_book` VALUES ('5', 'JAVA SERVLET 编程(第二版)', '38.25');
INSERT INTO `tbl_book` VALUES ('6', 'XML 高级编程(第2版)', '97.2');
INSERT INTO `tbl_book` VALUES ('7', '精通STRUTS:基于MVC的JAVA WEB设计与开发', '36.75');
INSERT INTO `tbl_book` VALUES ('8', '精通HIBERNATE：JAVA对象持久化技术详解', '44.25');
INSERT INTO `tbl_book` VALUES ('9', 'SPRING IN ACTION中文版', '29.25');
INSERT INTO `tbl_book` VALUES ('10', '精通EJB 3.0', '44.25');

-- ----------------------------
-- Table structure for tbl_customer
-- ----------------------------
DROP TABLE IF EXISTS `tbl_customer`;
CREATE TABLE `tbl_customer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_customer
-- ----------------------------
INSERT INTO `tbl_customer` VALUES ('1', '222', '2398924278@qq.co', '111', '111111', '222', '222');
INSERT INTO `tbl_customer` VALUES ('4', '静宁', 'lijunjiee@163.com', '李俊杰', '11133811', '18795638365', '743400');
INSERT INTO `tbl_customer` VALUES ('5', '999999', '9999992@qq.com', '99999999', '999999', '99999999999', '9999999');
INSERT INTO `tbl_customer` VALUES ('6', '甘肃静宁', '11111@qq.c0m', '李杰', '111111', '19999999999', '743400');
INSERT INTO `tbl_customer` VALUES ('7', '7777777', '7777777@qq.com', '777', '7777777', '7777777', '7777777');

-- ----------------------------
-- Table structure for tbl_orderform
-- ----------------------------
DROP TABLE IF EXISTS `tbl_orderform`;
CREATE TABLE `tbl_orderform` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cost` double NOT NULL,
  `orderdate` datetime DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `pay` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK65CDE1D174DBEBB1` (`customer_id`),
  CONSTRAINT `FK65CDE1D174DBEBB1` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_orderform
-- ----------------------------
INSERT INTO `tbl_orderform` VALUES ('11', '81', '2018-07-24 17:08:36', '4', '处理中', '货到付款');
INSERT INTO `tbl_orderform` VALUES ('12', '108', '2018-07-24 17:11:08', '4', '处理中', '货到付款');
INSERT INTO `tbl_orderform` VALUES ('13', '211500', '2018-07-24 17:12:36', '4', '处理中', '货到付款');
INSERT INTO `tbl_orderform` VALUES ('20', '29.25', '2018-07-24 21:53:40', '1', '处理中', '货到付款');
INSERT INTO `tbl_orderform` VALUES ('21', '44.25', '2018-07-24 21:53:44', '1', '处理中', '货到付款');
INSERT INTO `tbl_orderform` VALUES ('22', '44.25', '2018-07-24 21:53:48', '1', '处理中', '货到付款');
INSERT INTO `tbl_orderform` VALUES ('23', '184.5', '2018-07-24 22:09:01', '1', '处理中', '货到付款');
INSERT INTO `tbl_orderform` VALUES ('24', '236.4', '2018-07-24 23:32:04', '4', '处理中', '货到付款');
INSERT INTO `tbl_orderform` VALUES ('25', '1069.2', '2018-07-25 00:51:43', '4', '处理中', '货到付款');
INSERT INTO `tbl_orderform` VALUES ('26', '436.95', '2018-07-25 09:01:14', '6', '处理中', '货到付款');
INSERT INTO `tbl_orderform` VALUES ('27', '36.75', '2018-07-25 09:01:45', '6', '处理中', '货到付款');
INSERT INTO `tbl_orderform` VALUES ('28', '21.15', '2018-07-25 09:04:19', '1', '处理中', '货到付款');
INSERT INTO `tbl_orderform` VALUES ('29', '81', '2018-07-25 09:05:07', '6', '处理中', '货到付款');
INSERT INTO `tbl_orderform` VALUES ('30', '81', '2018-07-25 09:06:28', '7', '处理中', '货到付款');
INSERT INTO `tbl_orderform` VALUES ('31', '102.15', '2018-07-25 09:09:43', '7', '处理中', '货到付款');
INSERT INTO `tbl_orderform` VALUES ('32', '108', '2018-07-25 09:10:22', '7', '处理中', '货到付款');
INSERT INTO `tbl_orderform` VALUES ('33', '81', '2018-07-25 09:11:22', null, '处理中', '货到付款');
INSERT INTO `tbl_orderform` VALUES ('34', '65.4', '2018-07-25 09:11:44', null, '处理中', '货到付款');
INSERT INTO `tbl_orderform` VALUES ('35', '617.7', '2018-07-25 09:53:01', '1', '处理中', '在线支付');
INSERT INTO `tbl_orderform` VALUES ('36', '117.75', '2018-07-26 20:42:52', '1', '处理中', '货到付款');
INSERT INTO `tbl_orderform` VALUES ('37', '272.25', '2018-07-26 20:50:19', '1', '处理中', '货到付款');
INSERT INTO `tbl_orderform` VALUES ('38', '436.95', '2018-07-27 09:36:12', '4', '处理中', '货到付款');

-- ----------------------------
-- Table structure for tbl_orderline
-- ----------------------------
DROP TABLE IF EXISTS `tbl_orderline`;
CREATE TABLE `tbl_orderline` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `num` int(11) NOT NULL,
  `book_id` bigint(20) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK65D085018C1CFF51` (`book_id`),
  KEY `FK65D08501C3189907` (`order_id`),
  CONSTRAINT `FK65D085018C1CFF51` FOREIGN KEY (`book_id`) REFERENCES `tbl_book` (`id`),
  CONSTRAINT `FK65D08501C3189907` FOREIGN KEY (`order_id`) REFERENCES `tbl_orderform` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_orderline
-- ----------------------------
INSERT INTO `tbl_orderline` VALUES ('23', '1', '1', '11');
INSERT INTO `tbl_orderline` VALUES ('24', '1', '3', '12');
INSERT INTO `tbl_orderline` VALUES ('25', '10000', '2', '13');
INSERT INTO `tbl_orderline` VALUES ('34', '1', '9', '20');
INSERT INTO `tbl_orderline` VALUES ('35', '1', '10', '21');
INSERT INTO `tbl_orderline` VALUES ('36', '1', '10', '22');
INSERT INTO `tbl_orderline` VALUES ('37', '1', '1', '23');
INSERT INTO `tbl_orderline` VALUES ('38', '1', '4', '23');
INSERT INTO `tbl_orderline` VALUES ('39', '1', '8', '23');
INSERT INTO `tbl_orderline` VALUES ('40', '1', '1', '24');
INSERT INTO `tbl_orderline` VALUES ('41', '1', '2', '24');
INSERT INTO `tbl_orderline` VALUES ('42', '1', '4', '24');
INSERT INTO `tbl_orderline` VALUES ('43', '1', '5', '24');
INSERT INTO `tbl_orderline` VALUES ('44', '1', '7', '24');
INSERT INTO `tbl_orderline` VALUES ('45', '12', '1', '25');
INSERT INTO `tbl_orderline` VALUES ('46', '1', '6', '25');
INSERT INTO `tbl_orderline` VALUES ('47', '2', '1', '26');
INSERT INTO `tbl_orderline` VALUES ('48', '13', '2', '26');
INSERT INTO `tbl_orderline` VALUES ('49', '1', '7', '27');
INSERT INTO `tbl_orderline` VALUES ('50', '1', '2', '28');
INSERT INTO `tbl_orderline` VALUES ('51', '1', '1', '29');
INSERT INTO `tbl_orderline` VALUES ('52', '1', '1', '30');
INSERT INTO `tbl_orderline` VALUES ('53', '1', '1', '31');
INSERT INTO `tbl_orderline` VALUES ('54', '1', '2', '31');
INSERT INTO `tbl_orderline` VALUES ('55', '1', '3', '32');
INSERT INTO `tbl_orderline` VALUES ('56', '1', '1', '33');
INSERT INTO `tbl_orderline` VALUES ('57', '1', '2', '34');
INSERT INTO `tbl_orderline` VALUES ('58', '1', '8', '34');
INSERT INTO `tbl_orderline` VALUES ('59', '2', '2', '35');
INSERT INTO `tbl_orderline` VALUES ('60', '1', '3', '35');
INSERT INTO `tbl_orderline` VALUES ('61', '1', '4', '35');
INSERT INTO `tbl_orderline` VALUES ('62', '2', '6', '35');
INSERT INTO `tbl_orderline` VALUES ('63', '1', '7', '35');
INSERT INTO `tbl_orderline` VALUES ('64', '1', '8', '35');
INSERT INTO `tbl_orderline` VALUES ('65', '3', '10', '35');
INSERT INTO `tbl_orderline` VALUES ('66', '1', '1', '36');
INSERT INTO `tbl_orderline` VALUES ('67', '1', '7', '36');
INSERT INTO `tbl_orderline` VALUES ('68', '2', '1', '37');
INSERT INTO `tbl_orderline` VALUES ('69', '1', '7', '37');
INSERT INTO `tbl_orderline` VALUES ('70', '1', '9', '37');
INSERT INTO `tbl_orderline` VALUES ('71', '1', '10', '37');
INSERT INTO `tbl_orderline` VALUES ('72', '2', '1', '38');
INSERT INTO `tbl_orderline` VALUES ('73', '13', '2', '38');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', '李俊杰', '1113', '20');
INSERT INTO `t_user` VALUES ('2', '白宝宝', '2222', '10');
INSERT INTO `t_user` VALUES ('3', '赵子初', '3333', '2');
INSERT INTO `t_user` VALUES ('5', '哈哈哈', '212131', '20');
INSERT INTO `t_user` VALUES ('6', '哈哈哈', '212131', '20');
INSERT INTO `t_user` VALUES ('7', '哈哈哈', '212131', '20');
INSERT INTO `t_user` VALUES ('8', '哈哈哈', '212131', '20');
INSERT INTO `t_user` VALUES ('9', '哈哈哈', '212131', '20');
INSERT INTO `t_user` VALUES ('10', '哈哈哈', '212131', '20');
INSERT INTO `t_user` VALUES ('11', '哈哈哈', '212131', '20');
INSERT INTO `t_user` VALUES ('12', '哈哈哈', '212131', '20');
INSERT INTO `t_user` VALUES ('16', '555', '666', '6');
