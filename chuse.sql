/*
 Navicat Premium Dump SQL

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50648 (5.6.48-log)
 Source Host           : localhost:3306
 Source Schema         : chuse

 Target Server Type    : MySQL
 Target Server Version : 50648 (5.6.48-log)
 File Encoding         : 65001

 Date: 25/02/2025 00:40:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `cname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cimage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('Dim Sum', 1, 'images/cookbook/Dim Sum.png');
INSERT INTO `category` VALUES ('Hot Dishes', 2, 'images/cookbook/hot dishes.png');
INSERT INTO `category` VALUES ('Cold Dishes', 3, 'images/cookbook/Cold Dishes.png');
INSERT INTO `category` VALUES ('Soup', 4, 'images/cookbook/soup.png');
INSERT INTO `category` VALUES ('Rice', 5, 'images/cookbook/Rice.png');
INSERT INTO `category` VALUES ('Noodels', 6, 'images/cookbook/Noodles.png');
INSERT INTO `category` VALUES ('Bakery', 7, 'images/cookbook/Bakery.png');
INSERT INTO `category` VALUES ('International', 8, 'images/cookbook/International.png');

-- ----------------------------
-- Table structure for category2
-- ----------------------------
DROP TABLE IF EXISTS `category2`;
CREATE TABLE `category2`  (
  `caname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `caid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`caid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of category2
-- ----------------------------

-- ----------------------------
-- Table structure for category_categorysecond
-- ----------------------------
DROP TABLE IF EXISTS `category_categorysecond`;
CREATE TABLE `category_categorysecond`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `csid` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_category_categorysecond_cid`(`cid`) USING BTREE,
  INDEX `fk_category_categorysecond_csid`(`csid`) USING BTREE,
  CONSTRAINT `fk_category_categorysecond_cid` FOREIGN KEY (`cid`) REFERENCES `category` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_category_categorysecond_csid` FOREIGN KEY (`csid`) REFERENCES `categorysecond` (`csid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of category_categorysecond
-- ----------------------------
INSERT INTO `category_categorysecond` VALUES (1, 4, 3);
INSERT INTO `category_categorysecond` VALUES (2, 4, 4);
INSERT INTO `category_categorysecond` VALUES (3, 4, 5);
INSERT INTO `category_categorysecond` VALUES (4, 4, 8);
INSERT INTO `category_categorysecond` VALUES (5, 4, 15);
INSERT INTO `category_categorysecond` VALUES (6, 5, 3);
INSERT INTO `category_categorysecond` VALUES (7, 5, 4);
INSERT INTO `category_categorysecond` VALUES (8, 5, 5);
INSERT INTO `category_categorysecond` VALUES (9, 5, 8);
INSERT INTO `category_categorysecond` VALUES (10, 5, 15);

-- ----------------------------
-- Table structure for categorysecond
-- ----------------------------
DROP TABLE IF EXISTS `categorysecond`;
CREATE TABLE `categorysecond`  (
  `csid` int(11) NOT NULL AUTO_INCREMENT,
  `csname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`csid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of categorysecond
-- ----------------------------
INSERT INTO `categorysecond` VALUES (1, '山西风味');
INSERT INTO `categorysecond` VALUES (2, '广东风味');
INSERT INTO `categorysecond` VALUES (3, '四川风味');
INSERT INTO `categorysecond` VALUES (4, '重庆小吃');
INSERT INTO `categorysecond` VALUES (5, '天津小吃');
INSERT INTO `categorysecond` VALUES (6, '重庆风味');
INSERT INTO `categorysecond` VALUES (7, '山东风味');
INSERT INTO `categorysecond` VALUES (8, '上海风味');
INSERT INTO `categorysecond` VALUES (9, '西北风味');
INSERT INTO `categorysecond` VALUES (10, '台湾风味');
INSERT INTO `categorysecond` VALUES (11, '北京风味');
INSERT INTO `categorysecond` VALUES (12, '河南风味');
INSERT INTO `categorysecond` VALUES (13, '河北风味');
INSERT INTO `categorysecond` VALUES (14, '福建风味');
INSERT INTO `categorysecond` VALUES (15, '健康推荐');
INSERT INTO `categorysecond` VALUES (16, '清热祛火');
INSERT INTO `categorysecond` VALUES (17, '驱寒暖身');
INSERT INTO `categorysecond` VALUES (18, '健脾健胃');
INSERT INTO `categorysecond` VALUES (19, '开胃优选');
INSERT INTO `categorysecond` VALUES (20, '下午茶点');
INSERT INTO `categorysecond` VALUES (21, '快手菜肴');
INSERT INTO `categorysecond` VALUES (22, '护肝明目');

-- ----------------------------
-- Table structure for categorysecond2
-- ----------------------------
DROP TABLE IF EXISTS `categorysecond2`;
CREATE TABLE `categorysecond2`  (
  `casid` int(11) NOT NULL AUTO_INCREMENT,
  `casname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `caid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`casid`) USING BTREE,
  INDEX `caid`(`caid`) USING BTREE,
  CONSTRAINT `categorysecond2_ibfk_1` FOREIGN KEY (`caid`) REFERENCES `category2` (`caid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of categorysecond2
-- ----------------------------

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `ctid` int(50) NOT NULL AUTO_INCREMENT,
  `cdes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ctime` datetime NULL DEFAULT NULL,
  `tid` int(50) NULL DEFAULT NULL,
  `uid` int(50) NULL DEFAULT NULL,
  `uname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ctid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, 'Cool!!!', '2025-02-10 21:59:40', 3, 16, 'user012', NULL);

-- ----------------------------
-- Table structure for cs_collect
-- ----------------------------
DROP TABLE IF EXISTS `cs_collect`;
CREATE TABLE `cs_collect`  (
  `uid` int(11) NULL DEFAULT NULL,
  `ctid` int(11) NULL DEFAULT NULL,
  `u_id` int(11) NULL DEFAULT NULL,
  `f_id` int(11) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cs_collect
-- ----------------------------

-- ----------------------------
-- Table structure for cs_comment
-- ----------------------------
DROP TABLE IF EXISTS `cs_comment`;
CREATE TABLE `cs_comment`  (
  `cid` int(11) NOT NULL,
  `uid` int(11) NULL DEFAULT NULL,
  `c_content` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `c_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cs_comment
-- ----------------------------

-- ----------------------------
-- Table structure for cs_foodinfo
-- ----------------------------
DROP TABLE IF EXISTS `cs_foodinfo`;
CREATE TABLE `cs_foodinfo`  (
  `fid` int(11) NOT NULL,
  `i_id` int(11) NULL DEFAULT NULL,
  `uid` int(11) NULL DEFAULT NULL,
  `sid` int(11) NULL DEFAULT NULL,
  `f_title` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `f_dis` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `f_sort` int(11) NULL DEFAULT NULL,
  `f_uid` int(11) NULL DEFAULT NULL,
  `f_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `f_collect` int(11) NULL DEFAULT NULL,
  `f_like` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`fid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cs_foodinfo
-- ----------------------------

-- ----------------------------
-- Table structure for cs_image
-- ----------------------------
DROP TABLE IF EXISTS `cs_image`;
CREATE TABLE `cs_image`  (
  `i_id` int(11) NOT NULL,
  `fid` int(11) NULL DEFAULT NULL,
  `f_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`i_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cs_image
-- ----------------------------

-- ----------------------------
-- Table structure for cs_orisort
-- ----------------------------
DROP TABLE IF EXISTS `cs_orisort`;
CREATE TABLE `cs_orisort`  (
  `osid` int(11) NOT NULL,
  `os_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `os_dis` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`osid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cs_orisort
-- ----------------------------

-- ----------------------------
-- Table structure for cs_recommend
-- ----------------------------
DROP TABLE IF EXISTS `cs_recommend`;
CREATE TABLE `cs_recommend`  (
  `fid` int(11) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cs_recommend
-- ----------------------------

-- ----------------------------
-- Table structure for cs_sort
-- ----------------------------
DROP TABLE IF EXISTS `cs_sort`;
CREATE TABLE `cs_sort`  (
  `sid` int(11) NOT NULL,
  `s_name` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `s_dis` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cs_sort
-- ----------------------------

-- ----------------------------
-- Table structure for cs_topic
-- ----------------------------
DROP TABLE IF EXISTS `cs_topic`;
CREATE TABLE `cs_topic`  (
  `tid` int(11) NOT NULL,
  `u_id` int(11) NULL DEFAULT NULL,
  `t_content` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `t_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `t_like` int(11) NULL DEFAULT NULL,
  `t_comment` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`tid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cs_topic
-- ----------------------------

-- ----------------------------
-- Table structure for dishes
-- ----------------------------
DROP TABLE IF EXISTS `dishes`;
CREATE TABLE `dishes`  (
  `pdesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pdate` datetime NULL DEFAULT NULL,
  `pname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `is_hot` int(11) NULL DEFAULT NULL,
  `pcontent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `csid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`pid`) USING BTREE,
  INDEX `csid`(`csid`) USING BTREE,
  CONSTRAINT `dishes_ibfk_1` FOREIGN KEY (`csid`) REFERENCES `categorysecond` (`csid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dishes
-- ----------------------------
INSERT INTO `dishes` VALUES ('青梅果果儿', 'cimg/1.jpg', '2020-05-02 00:00:00', '麻婆豆腐', 1, 2, '原料：鸡肉、蔬菜、葱、姜、蒜、草果、砂仁。', 3);
INSERT INTO `dishes` VALUES ('冰火兼容', 'cimg/2.jpg', '2018-05-02 00:00:00', '芦笋烤冰鱼', 2, 2, '原料：南极冰鱼柳、红辣椒、芦笋、橄榄油、盐、生抽、生姜、鱼露、孜然粉。', 15);
INSERT INTO `dishes` VALUES ('诗韵墨香', 'cimg/3.jpg', '2018-06-15 09:44:21', '红烧排骨', 3, 2, '原料：排骨、油、盐、老抽、料酒、蚝油、冰糖、姜、葱、茴香、橙皮、干椒、八角、开水、香叶。', 8);
INSERT INTO `dishes` VALUES ('伊悠悠', 'cimg/4.jpg', '2018-06-21 09:44:17', '番茄四季豆', 4, 2, '原料：四季豆、番茄、大蒜子、蕃茄酱、盐。', 15);
INSERT INTO `dishes` VALUES ('燊燊姐', 'cimg/l9.jpg', '2018-06-30 09:44:14', '剁椒三文鱼头', 5, 2, '原料：三文鱼头、剁椒酱、葱、姜、蒜、豆豉、盐、白胡椒粉、料酒、蒸鱼豉油。', 3);
INSERT INTO `dishes` VALUES ('最初的最美❤', 'cimg/6.jpg', '2018-06-30 09:44:11', '花生猪手', 6, 2, '原料：猪蹄、花生、葱、姜、大料、生抽、老抽、盐、鸡精、大枣、枸杞。', 4);
INSERT INTO `dishes` VALUES ('凤记美食', 'cimg/l6.jpg', '2018-06-21 09:44:07', '木耳炒长豆角', 7, 2, '原料：长豆角、干木耳、油、盐、葱。', 15);
INSERT INTO `dishes` VALUES ('柳絮1982', 'cimg/8.jpg', '2018-05-30 09:44:03', '炸茄盒', 8, 2, '原料：紫茄子、猪肉馅、韭菜、鸡蛋、淀粉、面粉、油、蚝油、五香粉。', 5);
INSERT INTO `dishes` VALUES ('迷糊阿山', 'cimg/1.jpg', '2018-06-15 09:44:00', '肥牛金针菇', 9, 2, '原料：肥牛、金针菇、白胡椒、孜然、盐、辣椒面。', 3);
INSERT INTO `dishes` VALUES ('雨欣欣欣', 'cimg/9.jpg', '2018-06-13 09:43:55', '红烧肉', 10, 2, '原料：带皮五花肉、生姜、土豆、大葱、小葱、老抽、郫县豆瓣酱、生抽。', 8);
INSERT INTO `dishes` VALUES ('有个小蜗牛叫安琪', 'cimg/2r1.jpg', '2018-06-07 10:16:04', '红烧鸡腿', 11, 2, '原料：鸡腿、啤酒、食用油、生姜、大蒜、酱油、料酒、八角、桂皮、香叶、生抽、糖、葱末。', 8);
INSERT INTO `dishes` VALUES ('最初的最美❤', 'cimg/2r2.jpg', '2018-05-31 10:17:23', '辣炒鸡胗', 12, 2, '原料：鸡胗、葱、姜、干辣椒、八角、花椒、辣椒酱、生抽、老抽、水、盐、冰糖。', 3);
INSERT INTO `dishes` VALUES ('最初的最美❤', 'cimg/2r3.jpg', '2018-06-15 10:18:25', '辣焖鱼子', 13, 2, '原料：鱼子、干辣椒、葱、姜、黄豆酱、郫县豆瓣、料酒、蚝油、生抽、鸡粉、白糖。', 3);
INSERT INTO `dishes` VALUES ('柠柠', 'cimg/2r4.jpg', '2018-05-30 10:19:14', '紫菜蒸茄子', 14, 2, '原料：紫菜、茄子、郫县辣酱、豆豉、生抽、醋、糖。', 15);
INSERT INTO `dishes` VALUES ('有个小蜗牛叫安琪', 'cimg/2r5.jpg', '2018-06-29 10:20:48', '韭菜苔炒虾皮', 15, 2, '原料：韭菜、虾皮、食用油、盐、生姜、小米椒。', 15);
INSERT INTO `dishes` VALUES ('最爱小志', 'cimg/2r6.jpg', '2018-06-07 10:21:31', '大蒜炒牛肉', 16, 2, '原料：牛肉、大蒜、红辣椒、植物油、盐、生抽、老抽、孜然、淀粉。', 5);
INSERT INTO `dishes` VALUES ('安琪', 'cimg/2r7.jpg', '2018-06-06 10:22:16', '木耳黄瓜炒肉片', 17, 2, '原料：猪瘦肉、黄瓜、木耳、盐、大蒜、生姜、红辣椒、生抽、鸡粉、地瓜粉、食用油。', 3);
INSERT INTO `dishes` VALUES ('斯佳丽WH', 'cimg/2r8.jpg', '2018-06-07 10:23:58', '苦瓜炒鸡蛋', 18, 2, '原料：苦瓜、鸡蛋、红椒、料酒、油盐。', 3);
INSERT INTO `dishes` VALUES ('斯嘉丽', 'cimg/2r9.jpg', '2018-06-14 10:24:53', '蚝油草菇扒娃娃菜', 19, 2, '原料：草菇、娃娃菜、生抽、蚝油、水淀粉、油盐。', 2);
INSERT INTO `dishes` VALUES ('斯嘉丽', 'cimg/2r10.jpg', '2018-06-20 10:26:08', '香菇豆腐泡烧排骨', 20, 2, '原料：排骨、香菇、豆腐泡、黑木耳、姜片、八角、桂皮、红辣椒、花椒、料酒、酱油、冰糖、油盐。', 3);
INSERT INTO `dishes` VALUES ('球娃娃', 'cimg/gzpg.png', '2025-02-24 13:08:58', '干蒸排骨', 21, 2, '描述', 3);

-- ----------------------------
-- Table structure for howdo
-- ----------------------------
DROP TABLE IF EXISTS `howdo`;
CREATE TABLE `howdo`  (
  `cid` int(11) NOT NULL,
  `did` int(11) NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `des` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hid` int(11) NOT NULL,
  PRIMARY KEY (`hid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of howdo
-- ----------------------------

-- ----------------------------
-- Table structure for ingredients_details
-- ----------------------------
DROP TABLE IF EXISTS `ingredients_details`;
CREATE TABLE `ingredients_details`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dish_id` int(11) NOT NULL,
  `item` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `qty` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `dish_id`(`dish_id`) USING BTREE,
  CONSTRAINT `dish_id` FOREIGN KEY (`dish_id`) REFERENCES `dishes` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ingredients_details
-- ----------------------------
INSERT INTO `ingredients_details` VALUES (1, 21, '老抽', '少许');
INSERT INTO `ingredients_details` VALUES (2, 21, '生抽', '少许');
INSERT INTO `ingredients_details` VALUES (3, 21, '食盐', '少许');

-- ----------------------------
-- Table structure for material
-- ----------------------------
DROP TABLE IF EXISTS `material`;
CREATE TABLE `material`  (
  `sid` int(11) NOT NULL,
  `cid` int(11) NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of material
-- ----------------------------

-- ----------------------------
-- Table structure for recipe_step
-- ----------------------------
DROP TABLE IF EXISTS `recipe_step`;
CREATE TABLE `recipe_step`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `step` int(11) NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `pid`(`pid`) USING BTREE,
  CONSTRAINT `pid` FOREIGN KEY (`pid`) REFERENCES `dishes` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of recipe_step
-- ----------------------------
INSERT INTO `recipe_step` VALUES (1, 3, 1, '排骨洗净再剁块；', 'https://i3r.meishichina.com/atta/step/2020/11/16/20201116160550286209135710737312.jpg?x-oss-process=style/p320');
INSERT INTO `recipe_step` VALUES (2, 3, 2, '排骨凉水下锅，不盖锅盖煮开；', 'steps_images/HSPG2.jpg');
INSERT INTO `recipe_step` VALUES (3, 3, 3, '捞出排骨用清水冲洗一下放置备用；', 'steps_images/HSPG3.jpg');
INSERT INTO `recipe_step` VALUES (4, 1, 1, '食材:猪瘦肉、胡萝卜、青椒和泡发的黑木耳切丝。', 'steps_images/YXRS1.jpg');
INSERT INTO `recipe_step` VALUES (5, 1, 2, '肉丝中放入盐。', 'steps_images/YXRS2.jpg');
INSERT INTO `recipe_step` VALUES (6, 1, 3, '放入一个鸡蛋清。', 'steps_images/YXRS3.jpg');
INSERT INTO `recipe_step` VALUES (7, 1, 4, '多拌一下，拌匀上浆。', 'steps_images/YXRS4.jpg');
INSERT INTO `recipe_step` VALUES (8, 21, 1, '准备食材：将排骨用面粉和盐揉搓一下用水洗净，再用厨房纸擦干水分，排骨晾干。', 'steps_images/GZPG1.png');
INSERT INTO `recipe_step` VALUES (9, 21, 2, '用姜片、蒜末，老抽，生抽，豆豉，白糖，蚝油和生粉混合搅拌均匀，最后倒入一点食用油锁住水分，腌制35分钟。', 'steps_images/GZPG2.png');
INSERT INTO `recipe_step` VALUES (10, 21, 3, '锅内放个蒸垫架子，岛一碗清水，把空盘子放入煮个几分钟，待盘子热得冒气，再放入腌好的排骨。', 'steps_images/GZPG3.png');
INSERT INTO `recipe_step` VALUES (11, 21, 4, '排骨放入后，再蒸18分钟即可。', 'steps_images/GZPG4.png');
INSERT INTO `recipe_step` VALUES (12, 21, 5, '这时锅里的水都已蒸发完，排骨也蒸熟了，拿出来。', 'steps_images/GZPG5.png');
INSERT INTO `recipe_step` VALUES (13, 21, 6, '好吃简单的干蒸排骨就做好了。', 'steps_images/GZPG6.png');

-- ----------------------------
-- Table structure for relationship_11
-- ----------------------------
DROP TABLE IF EXISTS `relationship_11`;
CREATE TABLE `relationship_11`  (
  `fid` int(11) NOT NULL,
  `oid` int(11) NOT NULL,
  PRIMARY KEY (`fid`, `oid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of relationship_11
-- ----------------------------

-- ----------------------------
-- Table structure for relationship_6
-- ----------------------------
DROP TABLE IF EXISTS `relationship_6`;
CREATE TABLE `relationship_6`  (
  `cid` int(11) NOT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of relationship_6
-- ----------------------------

-- ----------------------------
-- Table structure for relationship_7
-- ----------------------------
DROP TABLE IF EXISTS `relationship_7`;
CREATE TABLE `relationship_7`  (
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of relationship_7
-- ----------------------------

-- ----------------------------
-- Table structure for special
-- ----------------------------
DROP TABLE IF EXISTS `special`;
CREATE TABLE `special`  (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NULL DEFAULT NULL,
  `scontent` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `uname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `simg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stime` datetime NULL DEFAULT NULL,
  `stitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sessay` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`sid`) USING BTREE,
  INDEX `uname`(`uname`) USING BTREE,
  CONSTRAINT `uname` FOREIGN KEY (`uname`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of special
-- ----------------------------
INSERT INTO `special` VALUES (1, 17, '陕西小吃的做法', 'user016', '/uploads/3e86ae71-e660-4141-8215-fbf50a246ad7_屏幕截图 2025-02-11 222019.png', 'simg/rjm.jpg', '2025-02-21 14:41:01', '陕西小吃的做法', '陕西地处中国腹地，横联黄河、长江两大流域，是中华民族的发祥地之一，也是中华饮食文化的重要发祥地。这里既有黄土高原的粗放，又有鱼米之乡的秀丽，物产丰富，人杰地灵，烹饪历史悠久，饮食风尚特色突出。比如，关中石子馍就葆有先民的石烹遗风；史载“黄帝作釜甑”，“蒸谷为饭、烹谷为粥”；据考岐山臊子面的就始于西周“余”之礼；《礼记》记载“礼之初，始诸饮食”。陕西烹饪文化之源远流长，、影响之深广，由此可见一斑。\r\n陕西饭菜，很多都葆有周、秦、汉、唐等十多个王朝的遗风。特别是小吃，美不胜收，借着历史古都的优势，使陕西的小吃博采全国各地小吃之精华，兼收各民族珍馐之风味，汇集内外名饮名食之荟萃，挖掘、继承历代宫廷小吃之技艺，其品种繁多、风味各异而著称');

-- ----------------------------
-- Table structure for subject
-- ----------------------------
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject`  (
  `pdesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pdate` datetime NULL DEFAULT NULL,
  `pname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `is_hot` int(11) NULL DEFAULT NULL,
  `pcontent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `casid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`pid`) USING BTREE,
  INDEX `casid`(`casid`) USING BTREE,
  CONSTRAINT `subject_ibfk_1` FOREIGN KEY (`casid`) REFERENCES `categorysecond2` (`casid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of subject
-- ----------------------------
INSERT INTO `subject` VALUES ('早餐这么吃，减肥瘦得快', 'images/h2.jpg', '2018-05-02 00:00:00', '早餐吃什么减肥', 1, 1, '不吃早餐可是有很多危害的哦，那不仅早餐要吃，还有人会注重早餐吃什么可以减肥呢？', NULL);
INSERT INTO `subject` VALUES ('春天养胃，5种食物健脾开胃', 'images/h3.jpg', '2018-05-02 00:00:00', '春笋养胃', 2, 1, '春季是养脾胃的一个好季节，在中医看来，应该吃一些比较升发与易消化的食物，也可以适当地“吃香喝辣”以健胃，吃点酸味以助食欲', NULL);
INSERT INTO `subject` VALUES ('吃什么改善健忘症？', 'images/h4.jpg', '2018-05-06 00:00:00', '葵花子的功效', 3, 1, '丰富的铁、锌、钾、镁等微量元素以及维生素E，使葵花子有一定的补脑健脑作用。实践证明：喜食葵花子的人，不仅皮肤红润、细嫩，而且大脑思维敏捷、记忆力强、言谈有条不紊。', NULL);
INSERT INTO `subject` VALUES ('上班族减肥便当，快来拿！', 'images/h8.jpg', '2018-05-07 00:00:00', '健康的减肥午餐', 4, 1, '一份肉类：鱼肉为首选，其次是虾肉、鸡肉，另外是牛肉、羊肉、猪肉等红肉.....', NULL);
INSERT INTO `subject` VALUES ('这些网红饮料也不能多喝！', 'images/h6.jpg', '2018-05-08 00:00:00', '喝碳酸饮料的危害', 5, 1, '碳酸饮料一般含有约10%左右的糖分，一小瓶热量就达到一二百千卡，经常喝容易使人发胖。', NULL);
INSERT INTO `subject` VALUES ('赶走你的上班疲劳', 'images/h10.jpg', '2018-05-09 00:00:00', '上班族缓解疲劳', 6, 1, '呼出健康好身体。深呼吸，可以促进人的肺部排出浊气，增加肺活量和血液中的含氧量，加快血液循环。', NULL);
INSERT INTO `subject` VALUES ('精神不振调理之道', 'images/h17.jpg', '2018-05-07 00:00:00', '打起精神来！', 7, 1, '属于热性的羊肉冬天吃是再合适不过的，除了喝羊肉汤，红焖羊肉的香味足以诱惑你多吃2碗饭', NULL);
INSERT INTO `subject` VALUES ('春天吃什么降火？', 'images/h18.jpg', '2018-05-07 00:00:00', '降火蔬菜看这里~', 8, 1, '春季天干气躁，肝火旺盛，很容易让人上火，春天该如何养肝降火呢？其实我们可以多吃一些降火的蔬菜，例如像菠菜这样的食物，让我们吃出健康身体', NULL);
INSERT INTO `subject` VALUES ('买芦笋要注意“三鲜”', 'images/h19.jpg', '2018-05-09 00:00:00', '炒煮也要新鲜', 9, 1, '新鲜芦笋的鲜度降低很快，所以买回来后应该趁鲜及时食用，不适宜久藏。存放时间最好不要超过三天，且应低温避光保存。', NULL);

-- ----------------------------
-- Table structure for topic
-- ----------------------------
DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic`  (
  `tid` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NULL DEFAULT NULL,
  `tcontent` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ttitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` datetime NULL DEFAULT NULL,
  `timg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`tid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of topic
-- ----------------------------
INSERT INTO `topic` VALUES (1, 0, '11111', '111', '2025-02-07 02:57:51', 'C:\\Users\\xiang\\OneDrive\\Pictures\\fm.jpg', 'user001', 'http://img.yun.cnhubei.com/a/10001/201908/62e0040757f6aed2028c30790a117846.jpeg');
INSERT INTO `topic` VALUES (2, 17, 'Juicy red cherry!!!', 'Juicy red cherry!!!', '2025-02-10 21:45:06', '车厘子.jpg', 'user016', NULL);
INSERT INTO `topic` VALUES (3, 17, 'Delicious teriyaki chicken rice bowl!!!', 'Delicious teriyaki chicken rice bowl!!!', '2025-02-10 21:58:04', 'sddefault.jpg', 'user016', NULL);
INSERT INTO `topic` VALUES (4, 17, 'Nice!', 'Nice!', '2025-02-19 15:03:37', 'sddefault.jpg', 'user016', '/uploads/3e86ae71-e660-4141-8215-fbf50a246ad7_屏幕截图 2025-02-11 222019.png');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` int(11) NULL DEFAULT NULL,
  `code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uimage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gexingqianming` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `newpass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Ensurepass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE,
  INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'root', 'root', 'root', 'root@qq.com', '15566778899', '', 1, '34324232321', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (9, '333', '333', '111', 'aaa@shop.com', '111', '111', 1, '7ad6c4f2be4e4a9e81b000b7de6587e8f28947ec9b2a4b7ca4f0f2367276d374', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (10, '3333', '3333', 'cc', 'aaa@shop.com', '111', '111', 1, 'ed8d60e2974f47f59942f211fe9d0752a17708f7bac142588c9e5ed928e8fae7', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (11, '555', '555', '111', 'aaa@shop.com', '111', '111', 1, '9c52fd719a8848de9769fce61b37a77d0819733584d8431fb0ae6f3f696c30ad', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (14, 'user010', '123', 'user010', 'aaa@shop.com', '1221510221', '151 youngman st', 1, '', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (15, 'user011', '123', 'XIANG CHEN', 'aaa@shop.com', '7092192960', '30 Lady Anderson st', 1, '', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (16, 'user012', '123', 'XIANG CHEN', 'aaa@shop.com', '7092192960', '30 Lady Anderson st', 1, '', NULL, 'I love Cooking!', NULL, NULL);
INSERT INTO `user` VALUES (17, 'user016', '12345', 'charles', 'aaa@shop.com', '115413464', '30 Lady Anderson st', 1, '', '/uploads/3e86ae71-e660-4141-8215-fbf50a246ad7_屏幕截图 2025-02-11 222019.png', 'fm1', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
