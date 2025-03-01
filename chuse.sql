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

 Date: 01/03/2025 03:00:48
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
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('Appetizers', 1, 'images/cookbook/Appetizers.png');
INSERT INTO `category` VALUES ('Main Dishes', 2, 'images/cookbook/Main Dishes.png');
INSERT INTO `category` VALUES ('Noodels', 3, 'images/cookbook/Noodles.png');
INSERT INTO `category` VALUES ('Rice', 4, 'images/cookbook/Rice.png');
INSERT INTO `category` VALUES ('Soup', 5, 'images/cookbook/soup.png');
INSERT INTO `category` VALUES ('Dim Sum', 6, 'images/cookbook/Dim Sum.png');
INSERT INTO `category` VALUES ('Coffee', 7, 'images/cookbook/coffee.png');
INSERT INTO `category` VALUES ('Bakery', 8, 'images/cookbook/Bakery.png');
INSERT INTO `category` VALUES ('International', 9, 'images/cookbook/International.png');

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
-- Table structure for categorysecond
-- ----------------------------
DROP TABLE IF EXISTS `categorysecond`;
CREATE TABLE `categorysecond`  (
  `csid` int(11) NOT NULL AUTO_INCREMENT,
  `csname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`csid`) USING BTREE,
  INDEX `fk_cid`(`cid`) USING BTREE,
  CONSTRAINT `cid` FOREIGN KEY (`cid`) REFERENCES `category` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of categorysecond
-- ----------------------------
INSERT INTO `categorysecond` VALUES (1, 'Beef', 1);
INSERT INTO `categorysecond` VALUES (2, 'Pork', 1);
INSERT INTO `categorysecond` VALUES (3, 'Lamb', 1);
INSERT INTO `categorysecond` VALUES (4, 'Seafood', 1);
INSERT INTO `categorysecond` VALUES (5, 'Poultry', 1);
INSERT INTO `categorysecond` VALUES (6, 'Vegetarian', 1);
INSERT INTO `categorysecond` VALUES (7, 'Street Food', 1);
INSERT INTO `categorysecond` VALUES (8, 'Beef', 2);
INSERT INTO `categorysecond` VALUES (9, 'Pork', 2);
INSERT INTO `categorysecond` VALUES (10, 'Lamb', 2);
INSERT INTO `categorysecond` VALUES (11, 'Seafood', 2);
INSERT INTO `categorysecond` VALUES (12, 'Poultry', 2);

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
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dishes
-- ----------------------------
INSERT INTO `dishes` VALUES ('', 'Dishes images/Main Dishes/1.jpg', '2025-02-02 00:00:00', 'Home-Style Stir-Fried Beef', 1, 2, 'Beef tenderloin, baking soda, dark soy sauce, light soy sauce', 8);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/2.jpg', '2025-02-26 21:40:11', 'Braised Beef with Potatoes', 2, 2, 'Beef, potatoes, bean paste, star anise, garlic', 8);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/3.jpg', '2025-02-05 21:43:35', 'Wok-Fried Lamb with Scallions', 3, 2, 'Lamb slices, scallions, salt, light soy sauce, dark soy sauce', 10);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/4.png', '2025-02-06 21:59:20', 'Home-Style braised pork', 4, 2, 'Belly pork', 9);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/5.jpg', '2025-02-06 22:02:38', 'Garlic Mushroom Beef Cubes', 5, 2, 'Beef, mushrooms, garlic, butter, black pepper', 8);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/6.jpg', '2025-02-12 22:04:04', 'Braised Lamb', 6, 2, 'Lamb and carrots', 10);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/7.jpg', '2025-02-06 22:06:00', 'Stir-Fried Beef with Chili Peppers', 7, 2, 'Beef, green pepper, ginger, garlic, starch, cooking wine', 8);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/8.jpg', '2025-02-05 22:10:10', 'Spicy Diced Chicken', 8, 2, 'Chicken drumsticks, dried chili peppers, egg whites, cornstarch, green onions', 12);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/9.jpg', '2025-02-05 23:29:04', 'Braised Duck with Lotus Root', 9, 2, 'Duck, lotus root, ginger, onion, star anise, cinnamon', 12);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/10.jpg', '2025-02-06 00:30:30', 'Sour Plum Duck', 10, 2, 'Duck, sour plum, sour plum sauce, rock sugar, dark soy sauce, light soy sauce', 12);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/11.jpg', '2025-02-13 00:49:57', 'Pan-Seared Pork Belly', 11, 2, 'Pork belly, light soy sauce, dark soy sauce, white sesame seeds, barbecue seasoning', 9);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/12.jpg', '2025-02-20 00:54:44', 'Salt & Pepper Fried Pork Loin Strips', 12, 2, 'Pork Loin, egg, pepper, salt, ginger, onion', 9);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/13.jpg', '2025-01-08 00:57:20', 'Hand-Shredded Chicken', 13, 2, 'Chicken drumsticks, ginger slices, scallions, salt, sugar, soy sauce', 5);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/14.jpg', '2025-02-06 01:00:34', 'Stir-fried Chicken Breast with Mushrooms', 14, 2, 'Chicken breast, mushrooms, garlic, green onions', 12);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/15.jpg', '2025-01-30 01:04:42', 'Kung Pao Chicken', 15, 2, 'Chicken breast, cucumber, carrot, peanuts, fermented chili Bean sauce', 12);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/16.jpg', '2025-02-05 01:06:49', 'Lamb Rib Soup', 16, 2, 'Lamb chops, white radish, carrots, peppercorns', 10);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/17.jpg', '2025-02-04 01:08:01', 'Cumin Grilled Lamb Chops', 17, 2, 'Lamb chops, cumin seeds, peppercorns, chili powder, salt', 12);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/18.jpg', '2025-02-05 01:11:58', 'Sichuan Boiled Beef', 18, 2, 'Beef, bean sprouts, celery, chicken essence, baking soda', 8);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/19.jpg', '2025-02-06 01:25:48', 'Soy Sauce Braised Carp', 19, 2, 'Carp, Sichuan pepper, light soy sauce, dark soy sauce, cooking wine, garlic', 11);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/20.jpg', '2025-02-13 01:28:09', 'Braised large shrimp', 20, 2, 'Shrimp, onion, ginger, garlic, light soy sauce, cooking wine, dark soy sauce', 11);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/21.jpg', '2025-02-05 01:32:30', 'Fried Egg with Shredded Potatoes', 21, 2, 'Eggs, potatoes, carrots, black pepper, starch', 12);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/22.jpg', '2025-02-21 01:38:19', 'Tofu & Perch Hotpot', 22, 2, 'Perch, tofu, onion, chili pepper', 11);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/23.jpg', '2024-10-03 01:41:22', 'Steamed Crab', 23, 2, 'Crab, soy sauce, vinegar, minced ginger, minced garlic, sesame oil', 11);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Appertizers/1.jpg', '2025-02-20 17:14:18', 'Chilled Cucumber and Wood Ear', 24, 2, 'Wood Ear, cucumber, salt, garlic, chili pepper,', 6);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Appertizers/2.jpg', '2025-02-20 17:27:54', 'Chilled Shredded Chicken Breast with Dressing', 25, 2, 'Chicken breast, coriander, cucumber, chili pepper, ginger', 5);

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ingredients_details
-- ----------------------------

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
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of recipe_step
-- ----------------------------
INSERT INTO `recipe_step` VALUES (4, 1, 1, '食材:猪瘦肉、胡萝卜、青椒和泡发的黑木耳切丝。', 'steps_images/YXRS1.jpg');
INSERT INTO `recipe_step` VALUES (5, 1, 2, '肉丝中放入盐。', 'steps_images/YXRS2.jpg');
INSERT INTO `recipe_step` VALUES (6, 1, 3, '放入一个鸡蛋清。', 'steps_images/YXRS3.jpg');
INSERT INTO `recipe_step` VALUES (7, 1, 4, '多拌一下，拌匀上浆。', 'steps_images/YXRS4.jpg');

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

-- ----------------------------
-- View structure for v_categorysecond_group
-- ----------------------------
DROP VIEW IF EXISTS `v_categorysecond_group`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_categorysecond_group` AS select `categorysecond`.`csname` AS `csname`,group_concat(`categorysecond`.`csid` order by `categorysecond`.`csid` ASC separator ',') AS `csids` from `categorysecond` group by `categorysecond`.`csname`;

SET FOREIGN_KEY_CHECKS = 1;
