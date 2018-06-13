/*
Navicat MySQL Data Transfer

Source Server         : 2017
Source Server Version : 50615
Source Host           : 127.0.0.1:3306
Source Database       : chuse

Target Server Type    : MYSQL
Target Server Version : 50615
File Encoding         : 65001

Date: 2018-06-13 11:15:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `cname` varchar(255) NOT NULL,
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('新秀菜谱', '1');
INSERT INTO `category` VALUES ('一周热门', '2');
INSERT INTO `category` VALUES ('最受欢迎的家常菜', '3');
INSERT INTO `category` VALUES ('热菜', '4');
INSERT INTO `category` VALUES ('凉菜', '5');
INSERT INTO `category` VALUES ('汤羹', '6');
INSERT INTO `category` VALUES ('主食', '7');
INSERT INTO `category` VALUES ('小吃', '8');
INSERT INTO `category` VALUES ('西餐', '9');

-- ----------------------------
-- Table structure for `category2`
-- ----------------------------
DROP TABLE IF EXISTS `category2`;
CREATE TABLE `category2` (
  `caname` varchar(255) NOT NULL,
  `caid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`caid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category2
-- ----------------------------

-- ----------------------------
-- Table structure for `categorysecond`
-- ----------------------------
DROP TABLE IF EXISTS `categorysecond`;
CREATE TABLE `categorysecond` (
  `csid` int(11) NOT NULL AUTO_INCREMENT,
  `csname` varchar(255) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  PRIMARY KEY (`csid`),
  KEY `cid` (`cid`) USING BTREE,
  CONSTRAINT `categorysecond_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `category` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of categorysecond
-- ----------------------------
INSERT INTO `categorysecond` VALUES ('1', '山西风味', '4');
INSERT INTO `categorysecond` VALUES ('2', '广东风味', '4');
INSERT INTO `categorysecond` VALUES ('3', '四川风味', '4');
INSERT INTO `categorysecond` VALUES ('4', '重庆小吃', '8');
INSERT INTO `categorysecond` VALUES ('5', '天津小吃', '8');
INSERT INTO `categorysecond` VALUES ('6', '重庆风味', '8');
INSERT INTO `categorysecond` VALUES ('7', '山东风味', '8');
INSERT INTO `categorysecond` VALUES ('8', '上海风味', '6');
INSERT INTO `categorysecond` VALUES ('9', '西北风味', '5');
INSERT INTO `categorysecond` VALUES ('10', '台湾风味', '5');
INSERT INTO `categorysecond` VALUES ('11', '北京风味', '4');
INSERT INTO `categorysecond` VALUES ('12', '河南风味', '4');
INSERT INTO `categorysecond` VALUES ('13', '河北风味', '4');
INSERT INTO `categorysecond` VALUES ('14', '福建风味', '4');
INSERT INTO `categorysecond` VALUES ('15', '健康推荐', '5');
INSERT INTO `categorysecond` VALUES ('16', '清热祛火', '6');
INSERT INTO `categorysecond` VALUES ('17', '驱寒暖身', '6');
INSERT INTO `categorysecond` VALUES ('18', '健脾健胃', '5');
INSERT INTO `categorysecond` VALUES ('19', '开胃优选', '4');
INSERT INTO `categorysecond` VALUES ('20', '下午茶点', '9');
INSERT INTO `categorysecond` VALUES ('21', '快手菜肴', '6');
INSERT INTO `categorysecond` VALUES ('22', '护肝明目', '6');

-- ----------------------------
-- Table structure for `categorysecond2`
-- ----------------------------
DROP TABLE IF EXISTS `categorysecond2`;
CREATE TABLE `categorysecond2` (
  `casid` int(11) NOT NULL AUTO_INCREMENT,
  `casname` varchar(255) DEFAULT NULL,
  `caid` int(11) DEFAULT NULL,
  PRIMARY KEY (`casid`),
  KEY `caid` (`caid`) USING BTREE,
  CONSTRAINT `categorysecond2_ibfk_1` FOREIGN KEY (`caid`) REFERENCES `category2` (`caid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of categorysecond2
-- ----------------------------

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
  `csid` int(11) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `csid` (`csid`) USING BTREE,
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`csid`) REFERENCES `categorysecond` (`csid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('匠心传承', 'cimg/1.jpg', '2018-05-02 00:00:00', '鱼香肉丝', '1', '2', '原料：猪里脊肉、川味泡姜泡辣椒、蒜米、白砂糖、保宁醋、鲜味酱油、大葱粒、红花椒、红薯粉、淀粉、鲜汤。', '1');
INSERT INTO `product` VALUES ('冰火兼容', 'cimg/2.jpg', '2018-05-02 00:00:00', '芦笋烤冰鱼', '2', '2', '原料：南极冰鱼柳、红辣椒、芦笋、橄榄油、盐、生抽、生姜、鱼露、孜然粉。', '3');
INSERT INTO `product` VALUES ('诗韵墨香', 'cimg/3.jpg', '2018-06-15 09:44:21', '红烧排骨', '3', '2', '原料：排骨、油、盐、老抽、料酒、蚝油、冰糖、姜、葱、茴香、橙皮、干椒、八角、开水、香叶。', '3');
INSERT INTO `product` VALUES ('伊悠悠', 'cimg/4.jpg', '2018-06-21 09:44:17', '番茄四季豆', '4', '2', '原料：四季豆、番茄、大蒜子、蕃茄酱、盐。', '3');
INSERT INTO `product` VALUES ('燊燊姐', 'cimg/l9.jpg', '2018-06-30 09:44:14', '剁椒三文鱼头', '5', '2', '原料：三文鱼头、剁椒酱、葱、姜、蒜、豆豉、盐、白胡椒粉、料酒、蒸鱼豉油。', '2');
INSERT INTO `product` VALUES ('最初的最美❤', 'cimg/6.jpg', '2018-06-30 09:44:11', '花生猪手', '6', '2', '原料：猪蹄、花生、葱、姜、大料、生抽、老抽、盐、鸡精、大枣、枸杞。', '2');
INSERT INTO `product` VALUES ('凤记美食', 'cimg/l6.jpg', '2018-06-21 09:44:07', '木耳炒长豆角', '7', '2', '原料：长豆角、干木耳、油、盐、葱。', '2');
INSERT INTO `product` VALUES ('柳絮1982', 'cimg/8.jpg', '2018-05-30 09:44:03', '炸茄盒', '8', '2', '原料：紫茄子、猪肉馅、韭菜、鸡蛋、淀粉、面粉、油、蚝油、五香粉。', '2');
INSERT INTO `product` VALUES ('迷糊阿山', 'cimg/1.jpg', '2018-06-15 09:44:00', '肥牛金针菇', '9', '2', '原料：肥牛、金针菇、白胡椒、孜然、盐、辣椒面。', '2');
INSERT INTO `product` VALUES ('雨欣欣欣', 'cimg/9.jpg', '2018-06-13 09:43:55', '红烧肉', '10', '2', '原料：带皮五花肉、生姜、土豆、大葱、小葱、老抽、郫县豆瓣酱、生抽。', '1');
INSERT INTO `product` VALUES ('有个小蜗牛叫安琪', 'cimg/2r1.jpg', '2018-06-07 10:16:04', '红烧鸡腿', '11', '2', '原料：鸡腿、啤酒、食用油、生姜、大蒜、酱油、料酒、八角、桂皮、香叶、生抽、糖、葱末。', '2');
INSERT INTO `product` VALUES ('最初的最美❤', 'cimg/2r2.jpg', '2018-05-31 10:17:23', '辣炒鸡胗', '12', '2', '原料：鸡胗、葱、姜、干辣椒、八角、花椒、辣椒酱、生抽、老抽、水、盐、冰糖。', '4');
INSERT INTO `product` VALUES ('最初的最美❤', 'cimg/2r3.jpg', '2018-06-15 10:18:25', '辣焖鱼子', '13', '2', '原料：鱼子、干辣椒、葱、姜、黄豆酱、郫县豆瓣、料酒、蚝油、生抽、鸡粉、白糖。', '11');
INSERT INTO `product` VALUES ('柠柠', 'cimg/2r4.jpg', '2018-05-30 10:19:14', '紫菜蒸茄子', '14', '2', '原料：紫菜、茄子、郫县辣酱、豆豉、生抽、醋、糖。', '3');
INSERT INTO `product` VALUES ('有个小蜗牛叫安琪', 'cimg/2r5.jpg', '2018-06-29 10:20:48', '韭菜苔炒虾皮', '15', '2', '原料：韭菜、虾皮、食用油、盐、生姜、小米椒。', '2');
INSERT INTO `product` VALUES ('最爱小志', 'cimg/2r6.jpg', '2018-06-07 10:21:31', '大蒜炒牛肉', '16', '2', '原料：牛肉、大蒜、红辣椒、植物油、盐、生抽、老抽、孜然、淀粉。', '2');
INSERT INTO `product` VALUES ('安琪', 'cimg/2r7.jpg', '2018-06-06 10:22:16', '木耳黄瓜炒肉片', '17', '2', '原料：猪瘦肉、黄瓜、木耳、盐、大蒜、生姜、红辣椒、生抽、鸡粉、地瓜粉、食用油。', '11');
INSERT INTO `product` VALUES ('斯佳丽WH', 'cimg/2r8.jpg', '2018-06-07 10:23:58', '苦瓜炒鸡蛋', '18', '2', '原料：苦瓜、鸡蛋、红椒、料酒、油盐。', '3');
INSERT INTO `product` VALUES ('斯嘉丽', 'cimg/2r9.jpg', '2018-06-14 10:24:53', '蚝油草菇扒娃娃菜', '19', '2', '原料：草菇、娃娃菜、生抽、蚝油、水淀粉、油盐。', '2');
INSERT INTO `product` VALUES ('斯嘉丽', 'cimg/2r10.jpg', '2018-06-20 10:26:08', '香菇豆腐泡烧排骨', '20', '2', '原料：排骨、香菇、豆腐泡、黑木耳、姜片、八角、桂皮、红辣椒、花椒、料酒、酱油、冰糖、油盐。', '3');

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

-- ----------------------------
-- Table structure for `subject`
-- ----------------------------
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `pdesc` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `pdate` datetime DEFAULT NULL,
  `pname` varchar(255) DEFAULT NULL,
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `is_hot` int(11) DEFAULT NULL,
  `pcontent` varchar(255) DEFAULT NULL,
  `casid` int(11) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `casid` (`casid`) USING BTREE,
  CONSTRAINT `subject_ibfk_1` FOREIGN KEY (`casid`) REFERENCES `categorysecond2` (`casid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subject
-- ----------------------------
INSERT INTO `subject` VALUES ('早餐这么吃，减肥瘦得快', 'images/h2.jpg', '2018-05-02 00:00:00', '早餐吃什么减肥', '1', '1', '不吃早餐可是有很多危害的哦，那不仅早餐要吃，还有人会注重早餐吃什么可以减肥呢？', null);
INSERT INTO `subject` VALUES ('春天养胃，5种食物健脾开胃', 'images/h3.jpg', '2018-05-02 00:00:00', '春笋养胃', '2', '1', '春季是养脾胃的一个好季节，在中医看来，应该吃一些比较升发与易消化的食物，也可以适当地“吃香喝辣”以健胃，吃点酸味以助食欲', null);
INSERT INTO `subject` VALUES ('吃什么改善健忘症？', 'images/h4.jpg', '2018-05-06 00:00:00', '葵花子的功效', '3', '1', '丰富的铁、锌、钾、镁等微量元素以及维生素E，使葵花子有一定的补脑健脑作用。实践证明：喜食葵花子的人，不仅皮肤红润、细嫩，而且大脑思维敏捷、记忆力强、言谈有条不紊。', null);
INSERT INTO `subject` VALUES ('上班族减肥便当，快来拿！', 'images/h8.jpg', '2018-05-07 00:00:00', '健康的减肥午餐', '4', '1', '一份肉类：鱼肉为首选，其次是虾肉、鸡肉，另外是牛肉、羊肉、猪肉等红肉.....', null);
INSERT INTO `subject` VALUES ('这些网红饮料也不能多喝！', 'images/h6.jpg', '2018-05-08 00:00:00', '喝碳酸饮料的危害', '5', '1', '碳酸饮料一般含有约10%左右的糖分，一小瓶热量就达到一二百千卡，经常喝容易使人发胖。', null);
INSERT INTO `subject` VALUES ('赶走你的上班疲劳', 'images/h10.jpg', '2018-05-09 00:00:00', '上班族缓解疲劳', '6', '1', '呼出健康好身体。深呼吸，可以促进人的肺部排出浊气，增加肺活量和血液中的含氧量，加快血液循环。', null);
INSERT INTO `subject` VALUES ('精神不振调理之道', 'images/h17.jpg', '2018-05-07 00:00:00', '打起精神来！', '7', '1', '属于热性的羊肉冬天吃是再合适不过的，除了喝羊肉汤，红焖羊肉的香味足以诱惑你多吃2碗饭', null);
INSERT INTO `subject` VALUES ('春天吃什么降火？', 'images/h18.jpg', '2018-05-07 00:00:00', '降火蔬菜看这里~', '8', '1', '春季天干气躁，肝火旺盛，很容易让人上火，春天该如何养肝降火呢？其实我们可以多吃一些降火的蔬菜，例如像菠菜这样的食物，让我们吃出健康身体', null);
INSERT INTO `subject` VALUES ('买芦笋要注意“三鲜”', 'images/h19.jpg', '2018-05-09 00:00:00', '炒煮也要新鲜', '9', '1', '新鲜芦笋的鲜度降低很快，所以买回来后应该趁鲜及时食用，不适宜久藏。存放时间最好不要超过三天，且应低温避光保存。', null);

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `addr` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `code` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'root', 'root', 'root', 'root@qq.com', '15566778899', '', '1', '34324232321');
INSERT INTO `user` VALUES ('9', '333', '333', '111', 'aaa@shop.com', '111', '111', '1', '7ad6c4f2be4e4a9e81b000b7de6587e8f28947ec9b2a4b7ca4f0f2367276d374');
INSERT INTO `user` VALUES ('10', '3333', '3333', 'cc', 'aaa@shop.com', '111', '111', '1', 'ed8d60e2974f47f59942f211fe9d0752a17708f7bac142588c9e5ed928e8fae7');
INSERT INTO `user` VALUES ('11', '555', '555', '111', 'aaa@shop.com', '111', '111', '1', '9c52fd719a8848de9769fce61b37a77d0819733584d8431fb0ae6f3f696c30ad');
INSERT INTO `user` VALUES ('12', '999', '999', '999', 'aaa@shop.com', '999', '999', '1', '4124a605d63c4d5f9b5d6f0fb73885fd6ec22aa1de914094a20f7d43bea3e7ed');
INSERT INTO `user` VALUES ('13', '000', '000', '000', 'aaa@shop.com', '000', '000', '1', 'fdd45728105c47e58de73316710e8ee7a51d31ce36444140919524af7b664c3f');

-- ----------------------------
-- View structure for `v_product`
-- ----------------------------
DROP VIEW IF EXISTS `v_product`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_product` AS select `product`.`pdesc` AS `pdesc`,`product`.`image` AS `image`,`product`.`pdate` AS `pdate`,`product`.`pname` AS `pname`,`product`.`pid` AS `pid`,`product`.`is_hot` AS `is_hot`,`product`.`pcontent` AS `pcontent`,`product`.`csid` AS `csid`,`category`.`cid` AS `cid` from ((`category` join `categorysecond`) join `product`) where ((`product`.`csid` = `categorysecond`.`csid`) and (`category`.`cid` = `categorysecond`.`cid`)) ;
