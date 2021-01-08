/*
 Navicat Premium Data Transfer

 Source Server         : zxy
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : house

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 07/01/2021 23:14:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `aname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `apass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`aid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', 'admin');

-- ----------------------------
-- Table structure for house
-- ----------------------------
DROP TABLE IF EXISTS `house`;
CREATE TABLE `house`  (
  `hid` int(11) NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `housearea` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `housezlc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `houseszlc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `housezx` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `village` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `introd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` float(10, 0) NULL DEFAULT NULL,
  `sname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`hid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of house
-- ----------------------------
INSERT INTO `house` VALUES (1, '1.png', '金石晶城一室一厅', '36', '33', '15', '精装修', '金石晶城', '张店区共青团路292号', '金石晶城一室简单装修，年租可以押一付三，七百元，电梯楼层三楼，周边有公交车站，超市', '未售出', 2500, '一居室');
INSERT INTO `house` VALUES (2, '2.png', '金润和谐居两室一厅', '96', '32', '18', '精装修', '金润和谐居', '张店区共青团路73号', '交通便利，周边设有丰富的配套设施，银行，饭店，学校一应俱全，充分满足你的生活所需！', '未售出', 1800, '二居室');
INSERT INTO `house` VALUES (3, '3.png', '理工大博大花园', '126', '36', '19', '精装修', '博大花园', '张店区共青团路276号', '1 房子干净整洁宽敞明亮温馨舒适采光好地角包您一眼中  2 家电家具齐全有冰箱电视热水器洗衣机随时拎包入住  3 周边环境空气清新安静 4 交通便捷能停车', '未售出', 2100, '三居室');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `headings` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mess` varchar(2550) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ntimes` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`nid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, '房屋销售须知', '双方约定，自购房客户与甲方签订房屋买卖合同，房产证过户并交房后，方办理房款结算手续。\r\n\r\n　　一次性付款结算方式：\r\n\r\n　　1、一次性付款是指即购房客户与甲方签订房屋买卖合同当日将全部房款支付到乙方帐户;\r\n\r\n　　2、乙方代收购房款，在甲方自行办理产权过户手续或委托乙方办理产权过户手续后，自房产证过户完毕之日起三日内乙方将代收购房款转予甲方。\r\n\r\n　　按揭贷款的结算方式：购房客户与甲方签订购房合同后，购房客户向乙方支付首期房款后开始向银行申请按揭贷款，接揭贷款手续获批后，待房产证过户并办抵押后，首期款由乙方付，按揭款由按揭银行付清。\r\n\r\n　　为保证房屋交易的安全性，房屋产权过户手续办妥后，甲方接到乙方通知后，须凭本人身份证来乙方处领取房款，如委托他人取款的，应凭经公证的委托书(注明代收房款)及委托人身份证明领取，甲方系法人的，应以合同载明的开户行和帐号转帐。', '2021-01-04 07:38:08.000000');
INSERT INTO `notice` VALUES (2, '系统维护', '系统于2021年1月4日开始进行维护，期间暂停运行。', '2021-01-04 09:35:35.000000');

-- ----------------------------
-- Table structure for orderdetail
-- ----------------------------
DROP TABLE IF EXISTS `orderdetail`;
CREATE TABLE `orderdetail`  (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `hid` int(11) NULL DEFAULT NULL,
  `uid` int(11) NULL DEFAULT NULL,
  `nums` int(255) NULL DEFAULT NULL,
  `price` float(10, 0) NULL DEFAULT NULL,
  `total` float(255, 0) NULL DEFAULT NULL,
  `status1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wj` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `telephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `idcard` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`oid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `hid` int(11) NULL DEFAULT NULL,
  `uid` int(11) NULL DEFAULT NULL,
  `nums` int(255) NULL DEFAULT NULL,
  `price` float(10, 0) NULL DEFAULT NULL,
  `total` float(255, 0) NULL DEFAULT NULL,
  `status1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wj` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`oid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sort
-- ----------------------------
DROP TABLE IF EXISTS `sort`;
CREATE TABLE `sort`  (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sort
-- ----------------------------
INSERT INTO `sort` VALUES (1, '一居室');
INSERT INTO `sort` VALUES (2, '二居室');
INSERT INTO `sort` VALUES (3, '三居室');
INSERT INTO `sort` VALUES (4, '四居室');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `upass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `usercate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `telephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, '333', '333', 'common', '1267');

-- ----------------------------
-- Triggers structure for table orders
-- ----------------------------
DROP TRIGGER IF EXISTS `autodetect`;
delimiter ;;
CREATE TRIGGER `autodetect` AFTER DELETE ON `orders` FOR EACH ROW BEGIN
DECLARE s1 VARCHAR(40)character set utf8;
SET s1 =  "同意销售";
SELECT COUNT(*) into @tmp from orders  where uid = old.uid and status1=s1;
IF @tmp <= 0 THEN
UPDATE  users set  usercate = "common" WHERE uid = OLD.uid;
END IF;
UPDATE  house set  state = "未售出" WHERE hid = OLD.hid;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
