/*
Navicat MySQL Data Transfer

Source Server         : 2017
Source Server Version : 50615
Source Host           : 127.0.0.1:3306
Source Database       : chuse

Target Server Type    : MYSQL
Target Server Version : 50615
File Encoding         : 65001

Date: 2018-05-20 22:20:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `cs_collect`
-- ----------------------------
DROP TABLE IF EXISTS `cs_collect`;
CREATE TABLE `cs_collect` (
  `uid` int(11) DEFAULT NULL,
  `ctid` int(11) DEFAULT NULL,
  `u_id` int(11) DEFAULT NULL,
  `f_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cs_collect
-- ----------------------------

-- ----------------------------
-- Table structure for `cs_comment`
-- ----------------------------
DROP TABLE IF EXISTS `cs_comment`;
CREATE TABLE `cs_comment` (
  `cid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `c_content` char(255) DEFAULT NULL,
  `c_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tid` int(11) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cs_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `cs_foodinfo`
-- ----------------------------
DROP TABLE IF EXISTS `cs_foodinfo`;
CREATE TABLE `cs_foodinfo` (
  `fid` int(11) NOT NULL,
  `i_id` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  `f_title` char(50) NOT NULL,
  `f_dis` char(255) DEFAULT NULL,
  `f_sort` int(11) DEFAULT NULL,
  `f_uid` int(11) DEFAULT NULL,
  `f_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `f_collect` int(11) DEFAULT NULL,
  `f_like` int(11) DEFAULT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cs_foodinfo
-- ----------------------------

-- ----------------------------
-- Table structure for `cs_image`
-- ----------------------------
DROP TABLE IF EXISTS `cs_image`;
CREATE TABLE `cs_image` (
  `i_id` int(11) NOT NULL,
  `fid` int(11) DEFAULT NULL,
  `f_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`i_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cs_image
-- ----------------------------

-- ----------------------------
-- Table structure for `cs_orisort`
-- ----------------------------
DROP TABLE IF EXISTS `cs_orisort`;
CREATE TABLE `cs_orisort` (
  `osid` int(11) NOT NULL,
  `os_name` varchar(50) DEFAULT NULL,
  `os_dis` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`osid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cs_orisort
-- ----------------------------

-- ----------------------------
-- Table structure for `cs_recommend`
-- ----------------------------
DROP TABLE IF EXISTS `cs_recommend`;
CREATE TABLE `cs_recommend` (
  `fid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cs_recommend
-- ----------------------------

-- ----------------------------
-- Table structure for `cs_sort`
-- ----------------------------
DROP TABLE IF EXISTS `cs_sort`;
CREATE TABLE `cs_sort` (
  `sid` int(11) NOT NULL,
  `s_name` char(50) NOT NULL,
  `s_dis` char(255) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cs_sort
-- ----------------------------

-- ----------------------------
-- Table structure for `cs_topic`
-- ----------------------------
DROP TABLE IF EXISTS `cs_topic`;
CREATE TABLE `cs_topic` (
  `tid` int(11) NOT NULL,
  `u_id` int(11) DEFAULT NULL,
  `t_content` char(255) DEFAULT NULL,
  `t_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `t_like` int(11) DEFAULT NULL,
  `t_comment` int(11) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cs_topic
-- ----------------------------

-- ----------------------------
-- Table structure for `cs_user`
-- ----------------------------
DROP TABLE IF EXISTS `cs_user`;
CREATE TABLE `cs_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `u_name` char(50) DEFAULT NULL,
  `name` char(50) DEFAULT NULL,
  `u_email` varchar(50) DEFAULT NULL,
  `u_phone` varchar(15) DEFAULT NULL,
  `u_addr` varchar(255) DEFAULT NULL,
  `u_state` int(11) DEFAULT NULL,
  `u_code` varchar(64) DEFAULT NULL,
  `u_password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cs_user
-- ----------------------------
INSERT INTO `cs_user` VALUES ('1', '222', '222', '222', '222', '222', '1', '1', '222');

-- ----------------------------
-- Table structure for `howdo`
-- ----------------------------
DROP TABLE IF EXISTS `howdo`;
CREATE TABLE `howdo` (
  `cid` int(11) NOT NULL,
  `did` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `des` varchar(255) DEFAULT NULL,
  `hid` int(11) NOT NULL,
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of howdo
-- ----------------------------

-- ----------------------------
-- Table structure for `material`
-- ----------------------------
DROP TABLE IF EXISTS `material`;
CREATE TABLE `material` (
  `sid` int(11) NOT NULL,
  `cid` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of material
-- ----------------------------

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `pdesc` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `pdate` datetime DEFAULT NULL,
  `pname` varchar(255) DEFAULT NULL,
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `is_hot` int(11) DEFAULT NULL,
  `pcontent` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('早餐这么吃，减肥瘦得快', 'images/h2.jpg', '2018-05-02 00:00:00', '早餐吃什么减肥', '1', '1', '不吃早餐可是有很多危害的哦，那不仅早餐要吃，还有人会注重早餐吃什么可以减肥呢？');
INSERT INTO `product` VALUES ('春天养胃，5种食物健脾开胃', 'images/h3.jpg', '2018-05-02 00:00:00', '春笋养胃', '2', '1', '春季是养脾胃的一个好季节，在中医看来，应该吃一些比较升发与易消化的食物，也可以适当地“吃香喝辣”以健胃，吃点酸味以助食欲');
INSERT INTO `product` VALUES ('吃什么改善健忘症？', 'images/h4.jpg', '2018-05-06 00:00:00', '葵花子的功效', '3', '1', '丰富的铁、锌、钾、镁等微量元素以及维生素E，使葵花子有一定的补脑健脑作用。实践证明：喜食葵花子的人，不仅皮肤红润、细嫩，而且大脑思维敏捷、记忆力强、言谈有条不紊。');
INSERT INTO `product` VALUES ('上班族减肥便当，快来拿！', 'images/h8.jpg', '2018-05-07 00:00:00', '健康的减肥午餐', '4', '1', '三份蔬菜：维生素和纤维素。以绿色蔬菜为主，颜色各异更好，依各人不同的食量适当摄取。\r\n\r\n一份肉类：鱼肉为首选，其次是虾肉、鸡肉，另外是牛肉、羊肉、猪肉等红肉.....');
INSERT INTO `product` VALUES ('这些网红饮料也不能多喝！', 'images/h6.jpg', '2018-05-08 00:00:00', '喝碳酸饮料的危害', '5', '1', '碳酸饮料一般含有约10%左右的糖分，一小瓶热量就达到一二百千卡，经常喝容易使人发胖。');
INSERT INTO `product` VALUES ('赶走你的上班疲劳', 'images/h10.jpg', '2018-05-09 00:00:00', '上班族缓解疲劳', '6', '1', '呼出健康好身体。深呼吸，可以促进人的肺部排出浊气，增加肺活量和血液中的含氧量，加快血液循环。');
INSERT INTO `product` VALUES ('精神不振调理之道', 'images/h17.jpg', '2018-05-07 00:00:00', '打起精神来！', '7', '1', '属于热性的羊肉冬天吃是再合适不过的，除了喝羊肉汤，红焖羊肉的香味足以诱惑你多吃2碗饭');
INSERT INTO `product` VALUES ('春天吃什么降火？', 'images/h18.jpg', '2018-05-07 00:00:00', '降火蔬菜看这里~', '8', '1', '春季天干气躁，肝火旺盛，很容易让人上火，春天该如何养肝降火呢？其实我们可以多吃一些降火的蔬菜，例如像菠菜这样的食物，让我们吃出健康身体');
INSERT INTO `product` VALUES ('买芦笋要注意“三鲜”', 'images/h19.jpg', '2018-05-09 00:00:00', '炒煮也要新鲜', '9', '1', '新鲜芦笋的鲜度降低很快，所以买回来后应该趁鲜及时食用，不适宜久藏。存放时间最好不要超过三天，且应低温避光保存。');

-- ----------------------------
-- Table structure for `relationship_11`
-- ----------------------------
DROP TABLE IF EXISTS `relationship_11`;
CREATE TABLE `relationship_11` (
  `fid` int(11) NOT NULL,
  `oid` int(11) NOT NULL,
  PRIMARY KEY (`fid`,`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of relationship_11
-- ----------------------------

-- ----------------------------
-- Table structure for `relationship_6`
-- ----------------------------
DROP TABLE IF EXISTS `relationship_6`;
CREATE TABLE `relationship_6` (
  `cid` int(11) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of relationship_6
-- ----------------------------

-- ----------------------------
-- Table structure for `relationship_7`
-- ----------------------------
DROP TABLE IF EXISTS `relationship_7`;
CREATE TABLE `relationship_7` (
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of relationship_7
-- ----------------------------
