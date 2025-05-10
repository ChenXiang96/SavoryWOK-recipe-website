/*
 Navicat Premium Dump SQL

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50648 (5.6.48-log)
 Source Host           : localhost:3306
 Source Schema         : savorywok

 Target Server Type    : MySQL
 Target Server Version : 50648 (5.6.48-log)
 File Encoding         : 65001

 Date: 10/05/2025 01:03:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for categorysecond2_dishes
-- ----------------------------
DROP TABLE IF EXISTS `categorysecond2_dishes`;
CREATE TABLE `categorysecond2_dishes`  (
  `casid` int(11) NOT NULL DEFAULT 0,
  `id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`casid`, `id`) USING BTREE,
  INDEX `fk_pid`(`id`) USING BTREE,
  CONSTRAINT `fk_casid` FOREIGN KEY (`casid`) REFERENCES `subthemes` (`casid`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `fk_id` FOREIGN KEY (`id`) REFERENCES `dishes` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of categorysecond2_dishes
-- ----------------------------
INSERT INTO `categorysecond2_dishes` VALUES (10, 4);
INSERT INTO `categorysecond2_dishes` VALUES (4, 6);
INSERT INTO `categorysecond2_dishes` VALUES (12, 7);
INSERT INTO `categorysecond2_dishes` VALUES (12, 8);
INSERT INTO `categorysecond2_dishes` VALUES (10, 10);
INSERT INTO `categorysecond2_dishes` VALUES (11, 12);
INSERT INTO `categorysecond2_dishes` VALUES (9, 15);
INSERT INTO `categorysecond2_dishes` VALUES (3, 16);
INSERT INTO `categorysecond2_dishes` VALUES (11, 17);
INSERT INTO `categorysecond2_dishes` VALUES (12, 18);
INSERT INTO `categorysecond2_dishes` VALUES (10, 22);
INSERT INTO `categorysecond2_dishes` VALUES (8, 23);
INSERT INTO `categorysecond2_dishes` VALUES (10, 23);
INSERT INTO `categorysecond2_dishes` VALUES (1, 26);
INSERT INTO `categorysecond2_dishes` VALUES (15, 26);
INSERT INTO `categorysecond2_dishes` VALUES (2, 29);
INSERT INTO `categorysecond2_dishes` VALUES (20, 30);
INSERT INTO `categorysecond2_dishes` VALUES (22, 30);
INSERT INTO `categorysecond2_dishes` VALUES (12, 31);
INSERT INTO `categorysecond2_dishes` VALUES (11, 33);
INSERT INTO `categorysecond2_dishes` VALUES (9, 34);
INSERT INTO `categorysecond2_dishes` VALUES (4, 36);
INSERT INTO `categorysecond2_dishes` VALUES (27, 39);
INSERT INTO `categorysecond2_dishes` VALUES (8, 46);
INSERT INTO `categorysecond2_dishes` VALUES (3, 51);
INSERT INTO `categorysecond2_dishes` VALUES (3, 55);
INSERT INTO `categorysecond2_dishes` VALUES (27, 55);
INSERT INTO `categorysecond2_dishes` VALUES (25, 58);
INSERT INTO `categorysecond2_dishes` VALUES (3, 59);
INSERT INTO `categorysecond2_dishes` VALUES (8, 85);
INSERT INTO `categorysecond2_dishes` VALUES (11, 87);
INSERT INTO `categorysecond2_dishes` VALUES (9, 88);
INSERT INTO `categorysecond2_dishes` VALUES (9, 89);
INSERT INTO `categorysecond2_dishes` VALUES (12, 90);
INSERT INTO `categorysecond2_dishes` VALUES (10, 93);
INSERT INTO `categorysecond2_dishes` VALUES (4, 95);
INSERT INTO `categorysecond2_dishes` VALUES (1, 97);
INSERT INTO `categorysecond2_dishes` VALUES (1, 98);
INSERT INTO `categorysecond2_dishes` VALUES (25, 98);
INSERT INTO `categorysecond2_dishes` VALUES (1, 99);
INSERT INTO `categorysecond2_dishes` VALUES (4, 99);
INSERT INTO `categorysecond2_dishes` VALUES (1, 100);
INSERT INTO `categorysecond2_dishes` VALUES (1, 101);
INSERT INTO `categorysecond2_dishes` VALUES (1, 102);
INSERT INTO `categorysecond2_dishes` VALUES (1, 103);
INSERT INTO `categorysecond2_dishes` VALUES (2, 104);
INSERT INTO `categorysecond2_dishes` VALUES (2, 105);
INSERT INTO `categorysecond2_dishes` VALUES (25, 105);
INSERT INTO `categorysecond2_dishes` VALUES (2, 106);
INSERT INTO `categorysecond2_dishes` VALUES (2, 107);
INSERT INTO `categorysecond2_dishes` VALUES (24, 107);
INSERT INTO `categorysecond2_dishes` VALUES (2, 108);
INSERT INTO `categorysecond2_dishes` VALUES (2, 109);
INSERT INTO `categorysecond2_dishes` VALUES (2, 110);
INSERT INTO `categorysecond2_dishes` VALUES (27, 110);
INSERT INTO `categorysecond2_dishes` VALUES (3, 111);
INSERT INTO `categorysecond2_dishes` VALUES (3, 112);
INSERT INTO `categorysecond2_dishes` VALUES (3, 113);
INSERT INTO `categorysecond2_dishes` VALUES (3, 115);
INSERT INTO `categorysecond2_dishes` VALUES (4, 116);
INSERT INTO `categorysecond2_dishes` VALUES (25, 116);
INSERT INTO `categorysecond2_dishes` VALUES (4, 117);
INSERT INTO `categorysecond2_dishes` VALUES (4, 118);
INSERT INTO `categorysecond2_dishes` VALUES (4, 119);
INSERT INTO `categorysecond2_dishes` VALUES (9, 120);
INSERT INTO `categorysecond2_dishes` VALUES (9, 121);
INSERT INTO `categorysecond2_dishes` VALUES (9, 122);
INSERT INTO `categorysecond2_dishes` VALUES (9, 123);
INSERT INTO `categorysecond2_dishes` VALUES (10, 124);
INSERT INTO `categorysecond2_dishes` VALUES (10, 125);
INSERT INTO `categorysecond2_dishes` VALUES (10, 126);
INSERT INTO `categorysecond2_dishes` VALUES (11, 127);
INSERT INTO `categorysecond2_dishes` VALUES (11, 128);
INSERT INTO `categorysecond2_dishes` VALUES (11, 129);
INSERT INTO `categorysecond2_dishes` VALUES (11, 130);
INSERT INTO `categorysecond2_dishes` VALUES (12, 131);
INSERT INTO `categorysecond2_dishes` VALUES (12, 132);
INSERT INTO `categorysecond2_dishes` VALUES (12, 133);
INSERT INTO `categorysecond2_dishes` VALUES (5, 134);
INSERT INTO `categorysecond2_dishes` VALUES (5, 135);
INSERT INTO `categorysecond2_dishes` VALUES (5, 136);
INSERT INTO `categorysecond2_dishes` VALUES (5, 137);
INSERT INTO `categorysecond2_dishes` VALUES (6, 138);
INSERT INTO `categorysecond2_dishes` VALUES (6, 139);
INSERT INTO `categorysecond2_dishes` VALUES (6, 140);
INSERT INTO `categorysecond2_dishes` VALUES (6, 141);
INSERT INTO `categorysecond2_dishes` VALUES (7, 142);
INSERT INTO `categorysecond2_dishes` VALUES (27, 142);
INSERT INTO `categorysecond2_dishes` VALUES (7, 143);
INSERT INTO `categorysecond2_dishes` VALUES (7, 144);
INSERT INTO `categorysecond2_dishes` VALUES (7, 145);
INSERT INTO `categorysecond2_dishes` VALUES (8, 146);
INSERT INTO `categorysecond2_dishes` VALUES (13, 166);
INSERT INTO `categorysecond2_dishes` VALUES (13, 167);
INSERT INTO `categorysecond2_dishes` VALUES (13, 168);
INSERT INTO `categorysecond2_dishes` VALUES (13, 169);
INSERT INTO `categorysecond2_dishes` VALUES (13, 170);
INSERT INTO `categorysecond2_dishes` VALUES (13, 171);
INSERT INTO `categorysecond2_dishes` VALUES (13, 172);
INSERT INTO `categorysecond2_dishes` VALUES (13, 173);
INSERT INTO `categorysecond2_dishes` VALUES (14, 174);
INSERT INTO `categorysecond2_dishes` VALUES (14, 175);
INSERT INTO `categorysecond2_dishes` VALUES (14, 176);
INSERT INTO `categorysecond2_dishes` VALUES (14, 177);
INSERT INTO `categorysecond2_dishes` VALUES (14, 178);
INSERT INTO `categorysecond2_dishes` VALUES (14, 179);
INSERT INTO `categorysecond2_dishes` VALUES (14, 180);
INSERT INTO `categorysecond2_dishes` VALUES (14, 181);
INSERT INTO `categorysecond2_dishes` VALUES (15, 182);
INSERT INTO `categorysecond2_dishes` VALUES (15, 183);
INSERT INTO `categorysecond2_dishes` VALUES (15, 184);
INSERT INTO `categorysecond2_dishes` VALUES (15, 185);
INSERT INTO `categorysecond2_dishes` VALUES (15, 186);
INSERT INTO `categorysecond2_dishes` VALUES (15, 187);
INSERT INTO `categorysecond2_dishes` VALUES (15, 188);
INSERT INTO `categorysecond2_dishes` VALUES (16, 189);
INSERT INTO `categorysecond2_dishes` VALUES (16, 190);
INSERT INTO `categorysecond2_dishes` VALUES (16, 191);
INSERT INTO `categorysecond2_dishes` VALUES (16, 192);
INSERT INTO `categorysecond2_dishes` VALUES (17, 193);
INSERT INTO `categorysecond2_dishes` VALUES (17, 194);
INSERT INTO `categorysecond2_dishes` VALUES (17, 195);
INSERT INTO `categorysecond2_dishes` VALUES (17, 196);
INSERT INTO `categorysecond2_dishes` VALUES (18, 197);
INSERT INTO `categorysecond2_dishes` VALUES (18, 198);
INSERT INTO `categorysecond2_dishes` VALUES (18, 199);
INSERT INTO `categorysecond2_dishes` VALUES (18, 200);
INSERT INTO `categorysecond2_dishes` VALUES (19, 201);
INSERT INTO `categorysecond2_dishes` VALUES (19, 202);
INSERT INTO `categorysecond2_dishes` VALUES (19, 203);
INSERT INTO `categorysecond2_dishes` VALUES (20, 204);
INSERT INTO `categorysecond2_dishes` VALUES (20, 205);
INSERT INTO `categorysecond2_dishes` VALUES (19, 206);
INSERT INTO `categorysecond2_dishes` VALUES (20, 207);
INSERT INTO `categorysecond2_dishes` VALUES (21, 208);
INSERT INTO `categorysecond2_dishes` VALUES (21, 209);
INSERT INTO `categorysecond2_dishes` VALUES (21, 210);
INSERT INTO `categorysecond2_dishes` VALUES (21, 211);
INSERT INTO `categorysecond2_dishes` VALUES (22, 212);
INSERT INTO `categorysecond2_dishes` VALUES (22, 213);
INSERT INTO `categorysecond2_dishes` VALUES (22, 214);
INSERT INTO `categorysecond2_dishes` VALUES (23, 215);
INSERT INTO `categorysecond2_dishes` VALUES (23, 216);
INSERT INTO `categorysecond2_dishes` VALUES (23, 217);
INSERT INTO `categorysecond2_dishes` VALUES (23, 218);
INSERT INTO `categorysecond2_dishes` VALUES (24, 219);
INSERT INTO `categorysecond2_dishes` VALUES (24, 220);
INSERT INTO `categorysecond2_dishes` VALUES (24, 221);
INSERT INTO `categorysecond2_dishes` VALUES (26, 222);
INSERT INTO `categorysecond2_dishes` VALUES (26, 223);
INSERT INTO `categorysecond2_dishes` VALUES (26, 224);
INSERT INTO `categorysecond2_dishes` VALUES (26, 225);

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
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (5, 'That looks so good!', '2025-05-10 00:33:39', 5, 20, 'Grace', '/uploads/e40c8fa8-ca74-441f-bee8-2425ba272ffd_profile2.jpg');

-- ----------------------------
-- Table structure for cs_collect
-- ----------------------------
DROP TABLE IF EXISTS `cs_collect`;
CREATE TABLE `cs_collect`  (
  `uid` int(11) NULL DEFAULT NULL,
  `ctid` int(11) NULL DEFAULT NULL,
  `u_id` int(11) NULL DEFAULT NULL,
  `f_id` int(11) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

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
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

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
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

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
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

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
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of cs_orisort
-- ----------------------------

-- ----------------------------
-- Table structure for cs_recommend
-- ----------------------------
DROP TABLE IF EXISTS `cs_recommend`;
CREATE TABLE `cs_recommend`  (
  `fid` int(11) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

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
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

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
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of cs_topic
-- ----------------------------

-- ----------------------------
-- Table structure for dish_category
-- ----------------------------
DROP TABLE IF EXISTS `dish_category`;
CREATE TABLE `dish_category`  (
  `cname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cimage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of dish_category
-- ----------------------------
INSERT INTO `dish_category` VALUES ('Appetizers', 1, 'images/cookbook/Appetizers.png');
INSERT INTO `dish_category` VALUES ('Main Dishes', 2, 'images/cookbook/Main Dishes.png');
INSERT INTO `dish_category` VALUES ('Noodels', 3, 'images/cookbook/Noodles.png');
INSERT INTO `dish_category` VALUES ('Rice', 4, 'images/cookbook/Rice.png');
INSERT INTO `dish_category` VALUES ('Soup', 5, 'images/cookbook/soup.png');
INSERT INTO `dish_category` VALUES ('Dim Sum', 6, 'images/cookbook/Dim Sum.png');
INSERT INTO `dish_category` VALUES ('Drinks', 7, 'images/cookbook/coffee.png');
INSERT INTO `dish_category` VALUES ('Baking', 8, 'images/cookbook/Bakery.png');
INSERT INTO `dish_category` VALUES ('Global', 9, 'images/cookbook/International.png');

-- ----------------------------
-- Table structure for dishes
-- ----------------------------
DROP TABLE IF EXISTS `dishes`;
CREATE TABLE `dishes`  (
  `pdesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` datetime NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_hot` int(11) NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `csid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `csid`(`csid`) USING BTREE,
  CONSTRAINT `dishes_ibfk_1` FOREIGN KEY (`csid`) REFERENCES `ingredient_category` (`csid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 226 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of dishes
-- ----------------------------
INSERT INTO `dishes` VALUES ('', 'Dishes images/Main Dishes/1.jpg', '2025-02-02 00:00:00', 'Home-Style Stir-Fried Beef', 1, 2, 'Beef tenderloin, baking soda, dark soy sauce, light soy sauce', 8);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/2.jpg', '2025-02-26 21:40:11', 'Braised Beef with Potatoes', 2, 2, 'Beef, potatoes, bean paste, star anise, garlic', 8);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/3.jpg', '2025-02-05 21:43:35', 'Wok-Fried Lamb with Scallions', 3, 2, 'Lamb slices, scallions, salt, light soy sauce, dark soy sauce', 10);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/4.png', '2025-02-06 21:59:20', 'Home-Style braised pork', 4, 2, 'Belly pork', 9);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/5.jpg', '2025-02-06 22:02:38', 'Garlic Mushroom Beef Cubes', 5, 2, 'Beef, mushrooms, garlic, butter, black pepper', 8);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/6.jpg', '2025-02-12 22:04:04', 'Braised Lamb', 6, 2, 'Lamb and carrots', 10);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/7.jpg', '2025-02-06 22:06:00', 'Stir-Fried Beef with Green Chili Peppers', 7, 2, 'Beef, green pepper, ginger, garlic, starch, cooking wine', 8);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/8.jpg', '2025-02-05 22:10:10', 'Hot and Spicy Diced Chicken', 8, 2, 'Chicken drumsticks, dried chili peppers, egg whites, cornstarch, green onions', 12);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/9.jpg', '2025-02-05 23:29:04', 'Braised Duck with Lotus Root', 9, 2, 'Duck, lotus root, ginger, onion, star anise, cinnamon', 12);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/10.jpg', '2025-02-06 00:30:30', 'Sour Plum Duck', 10, 2, 'Duck, sour plum, sour plum sauce, rock sugar, dark soy sauce, light soy sauce', 12);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/11.jpg', '2025-02-13 00:49:57', 'Pan-Seared Pork Belly', 11, 2, 'Pork belly, light soy sauce, dark soy sauce, white sesame seeds, barbecue seasoning', 9);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/12.jpg', '2025-02-20 00:54:44', 'Salt & Pepper Fried Pork Loin Strips', 12, 2, 'Pork Loin, egg, pepper, salt, ginger, onion', 9);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/13.jpg', '2025-01-08 00:57:20', 'Hand-Shredded Chicken', 13, 2, 'Chicken drumsticks, ginger slices, scallions, salt, sugar, soy sauce', 5);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/14.jpg', '2025-02-06 01:00:34', 'Stir-fried Chicken Breast with Mushrooms', 14, 2, 'Chicken breast, mushrooms, garlic, green onions', 12);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/15.jpg', '2025-01-30 01:04:42', 'Kung Pao Chicken', 15, 2, 'Chicken breast, cucumber, carrot, peanuts, fermented chili Bean sauce', 12);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/16.jpg', '2025-02-05 01:06:49', 'Lamb Rib Soup', 16, 2, 'Lamb chops, white radish, carrots, peppercorns', 31);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/17.jpg', '2025-02-04 01:08:01', 'Cumin Grilled Lamb Chops', 17, 2, 'Lamb chops, cumin seeds, peppercorns, chili powder, salt', 12);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/18.jpg', '2025-02-05 01:11:58', 'Sichuan Boiled Beef', 18, 2, 'Beef, bean sprouts, celery, chicken essence, baking soda', 8);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/19.jpg', '2025-02-06 01:25:48', 'Soy Sauce Braised Carp', 19, 2, 'Carp, Sichuan pepper, light soy sauce, dark soy sauce, cooking wine, garlic', 11);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/20.jpg', '2025-02-13 01:28:09', 'Braised large shrimp', 20, 2, 'Shrimp, onion, ginger, garlic, light soy sauce, cooking wine, dark soy sauce', 11);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/21.jpg', '2025-02-05 01:32:30', 'Fried Egg with Shredded Potatoes', 21, 2, 'Eggs, potatoes, carrots, black pepper, starch', 12);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/22.jpg', '2025-02-21 01:38:19', 'Tofu & Perch Hotpot', 22, 2, 'Perch, tofu, onion, chili pepper', 11);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/23.jpg', '2024-10-03 01:41:22', 'Steamed Crab', 23, 2, 'Crab, soy sauce, vinegar, minced ginger, minced garlic, sesame oil', 11);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Appetizers/1.jpg', '2025-02-20 17:14:18', 'Chilled Cucumber and Wood Ear', 24, 2, 'Wood Ear, cucumber, salt, garlic, chili pepper,', 6);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Appetizers/2.jpg', '2025-02-20 17:27:54', 'Chilled Shredded Chicken Breast with Dressing', 25, 2, 'Chicken breast, coriander, cucumber, chili pepper, ginger', 5);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Soup/1.jpg', '2025-01-16 17:03:04', 'Lamb Soup with Radish', 26, 2, 'Lamb shank, white radish, green onion', 31);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Appetizers/3.jpg', '2024-12-12 17:08:55', 'Cold Black Fungus and Beancurd Sticks Salad ', 27, 2, 'yuba, black fungus, garlic, chili pepper, red pepper', 6);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Appetizers/4.jpg', '2024-12-04 17:11:48', 'Spicy and Sour Shrimp', 28, 2, 'Shrimp, lemon, chili pepper, coriander, onion', 4);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Appetizers/5.jpg', '2024-12-13 17:16:23', 'Chilled Silken Tofu Salad', 29, 2, 'Silken Tofu, red peanuts, chili peppers, Sichuan peppercorns', 6);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Appetizers/6.jpg', '2025-01-30 17:19:00', 'Chinese Kelp Salad', 30, 2, 'Kelp, garlic, minced ginger, chili pepper, chili', 6);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Appetizers/7.jpg', '2025-02-27 17:23:52', 'Spicy Chilled Beef Slices', 31, 2, 'Beef slices, black fungus, enoki mushrooms, chili peppers', 5);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Noodles/1.jpg', '2024-12-19 17:32:31', 'Chinese Noodle Soup', 32, 2, 'Noodles, eggs, soy sauce, sesame oil, chicken stock', 19);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Noodles/2.jpg', '2025-03-14 17:36:13', 'Garlic Chili Oil Noodles ', 33, 2, 'Knife-cut noodles, Shanghai bok choy, shallots, garlic, cooking oil', 20);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Noodles/3.jpg', '2025-01-23 17:42:45', 'Beijing Fried sauce noodles', 34, 2, 'Pork belly, dry yellow bean paste, sweet bean paste, soybean paste', 16);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Noodles/4.jpg', '2025-02-05 17:45:57', 'Shiitake Mushroom Noodles', 35, 2, 'Noodles, Shiitake mushroom, green vegetables, tomatoes', 20);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Noodles/5.jpg', '2025-01-23 17:51:37', 'Braised Beef Noodles', 36, 2, 'Beef cubes, noodles, greens, coriander', 15);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Noodles/6.jpg', '2025-01-23 17:54:00', 'Curry Shrimp Noodles', 37, 2, 'Noodles, curry cubes, dark soy sauce, red chili oil', 18);
INSERT INTO `dishes` VALUES ('', 'Dishes images/Noodles/7.jpg', '2025-02-27 17:56:39', 'Homemade Fried Noodles', 38, 2, 'Noodles, eggs, shanghai bok choy , ham', 19);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Noodles/8.jpg', '2025-02-26 17:58:24', 'Tomato Egg Noodles', 39, 2, 'Eggs, tomatoes, noodles, chopped green onions, salt', 19);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Noodles/9.jpg', '2025-01-23 18:01:07', 'Potato and Carrot Meat Sauce Noodles', 40, 2, 'Potatoes, minced meat, carrots, garlic, soy sauce', 16);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Noodles/10.jpg', '2025-02-19 18:04:08', 'Chinese Lamb Noodle Soup', 41, 2, 'Stewed noodles, mutton, green onion, peppercorns, fungus', 17);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Rice/1.jpg', '2025-01-30 18:08:05', 'Homestyle Fried Rice with Eggs', 42, 2, 'Eggs, onions, oyster sauce, salt, rice', 26);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Rice/2.jpg', '2025-01-16 18:11:20', 'Cuttlefish and Shrimp Fried Rice', 43, 2, 'Rice, cuttlefish, prawns, red/yellow/green pepperRice, cuttlefish, prawns, red/yellow/green pepper', 25);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Rice/3.jpg', '2025-02-27 18:16:16', 'Beef Fried Rice', 44, 2, 'Beef cubes, rice', 22);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Rice/4.jpg', '2025-01-30 18:18:41', 'Minced Pork and Eggplant Rice', 45, 2, 'Pork, rice, eggplant', 23);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Dim Sum/1.jpg', '2025-01-30 18:28:39', 'Crispy Red Bean Pastry', 46, 2, 'Butter, low-gluten flour, eggs, fine sugar', 41);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Dim Sum/2.jpg', '2025-01-29 18:32:05', 'Mochi Pudding', 47, 2, 'Egg liquid, milk, salt, butter, black sesame', 40);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Dim Sum/3.jpg', '2024-11-12 18:35:40', 'Milk and Red Date Sticky Rice Cake', 48, 2, 'Red dates, glutinous rice flour, milk', 41);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Dim Sum/4.jpg', '2025-01-23 18:38:40', 'Mango Pudding', 49, 2, 'Mango, whipped cream, sugar, milk, gelatin', 41);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Dim Sum/5.jpg', '2024-11-15 18:41:20', 'Rose Crispy Pastry Cake', 50, 2, 'Medium gluten flour, sugar, water, rose filling, low gluten flour, glutinous rice flour', 41);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Dim Sum/6.jpg', '2024-12-11 18:46:22', 'Osmanthus Rice Cake', 51, 2, 'Glutinous rice flour, water, sugar, red bean paste, dried osmanthus', 41);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Dim Sum/7.jpg', '2025-01-23 18:48:31', 'Brown Sugar Date Cake', 52, 2, 'Red dates, eggs, milk, brown sugar, low-gluten flour, baking powder, corn oil, white sesame', 41);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Soup/2.jpg', '2025-02-19 19:29:15', 'Laver and Egg Soup', 53, 2, 'Seaweed, eggs, white pepper, sesame oil, coriander', 33);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Soup/3.jpg', '2024-07-11 19:33:14', 'West Lake Beef Soup', 54, 2, 'Beef tenderloin, corn starch, cooking oil, ginger, cooking wine, king oyster mushroom, tofu', 29);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Soup/4.jpg', '2024-07-18 19:36:10', 'Spinach and Egg Soup', 55, 2, 'Spinach, Eggs', 33);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Soup/5.jpg', '2024-07-18 19:38:02', 'Winter Melon Soup with Meatballs', 56, 2, 'Winter melon, coriander, wolfberry, salt, white pepper, minced pork', 30);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Soup/7.jpg', '2024-10-24 20:35:49', 'Pork bone soup', 57, 2, 'Pork leg bone, ginger, scallions', 30);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Soup/6.jpg', '2025-02-28 20:41:51', 'Tofu and egg soup', 58, 2, 'Tofu, eggs', 33);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Soup/8.jpg', '2024-10-30 20:47:44', 'Ginseng Chicken Soup', 59, 2, 'Ginseng, chicken', 33);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Drinks/1.jpg', '2024-10-23 20:55:36', 'Green Grape Cold Brew', 60, 2, 'Green grapes, lemon, cold brew coffee, ice cubes, Sprite', 43);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Drinks/2.jpg', '2025-03-14 21:01:04', 'Matcha Milk', 61, 2, 'Matcha powder, ice cubes, milk', 43);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Drinks/3.jpg', '2024-11-12 21:02:50', 'Black Milk Tea', 62, 2, 'Black tea, milk, sugar', 43);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Drinks/4.jpg', '2024-05-22 21:08:23', 'Coconut Milk Coffee', 63, 2, 'Coconut milk, cold brew', 43);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Drinks/5.jpg', '2024-10-17 21:10:43', 'Cream Top Coffee', 64, 2, 'Coffee powder, whipping cream, sugar', 43);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Bakery/1.jpg', '2024-10-23 15:35:34', 'Chocolate Muffin', 65, 2, 'Low gluten flour, cocoa powder, baking powder, sugar', 48);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Bakery/2.jpg', '2024-12-12 15:44:07', 'Honey Cake', 66, 2, 'Low-gluten flour, vegetable oil, eggs, sugar, honey', 48);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Bakery/3.jpg', '2024-09-04 15:45:10', 'Chocolate Mousse Cake', 67, 2, 'Low-gluten flour, egg yolk, warm water, corn oil, cocoa powder, lemon juice', 48);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Bakery/4.jpg', '2024-05-15 15:52:43', 'Salted Cream Cake', 68, 2, 'Low-gluten flour, corn oil, milk, eggs, sugar', 48);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Bakery/5.jpg', '2025-01-22 15:55:08', 'Caramel Pudding Cake', 69, 2, 'Low-gluten flour, eggs, light cream, milk, corn oil', 48);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Bakery/6.jpg', '2024-12-18 16:01:13', 'Chocolate Lava Cake', 70, 2, 'Cream cheese, eggs, corn starch, whipping cream, chocolate', 48);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Bakery/7.png', '2025-02-12 16:02:12', 'Creamy Milk Roll Cake', 71, 2, 'Corn oil, eggs, sugar, low-gluten flour, light cream', 48);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Bakery/8.jpg', '2024-11-20 16:05:08', 'Half-Baked Cheese Cake', 72, 2, 'Cream cheese, butter, milk, eggs, lemon juice, cornstarch, sugar', 48);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Bakery/9.jpg', '2024-11-22 16:09:42', 'Matcha Chiffon Cake', 73, 2, 'Egg yolk, low-gluten flour, matcha powder, salad oil, egg white, sugar', 48);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/International/1.jpg', '2024-10-16 16:14:20', 'Red Wine Braised Oxtail', 74, 2, 'Oxtail, tomatoes, onions, carrots, celery, red wine', 50);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/International/2.jpg', '2024-12-18 16:15:18', 'Stir-fried Mushrooms and cauliflower', 75, 2, 'Cauliflower, mushrooms, soup stock, parsley, thyme, garlic, pepper, olive oil', 55);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/International/3.jpg', '2024-11-21 16:23:18', 'Kimchi Tofu Soup', 76, 2, 'Soft tofu, Korean chili sauce, kimchi, soy sauce, garlic', 55);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/International/4.jpg', '2025-02-19 16:26:09', 'Bibimbap', 77, 2, 'Rice, eggs, mushrooms, zucchini, spinach, bean sprouts, tomatoes', 51);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/International/5.jpg', '2025-02-25 16:31:22', 'Spanish Garlic Shrimp', 78, 2, 'Prawns, smoked paprika, white pepper, garlic powder, tomato paste', 53);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/International/6.jpg', '2024-12-11 16:35:51', 'Creamy  Braised Chicken with Mushrooms', 79, 2, 'Chicken drumsticks, mushrooms, white onions, garlic, chicken broth, light cream', 54);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/International/7.jpg', '2024-12-18 16:37:19', 'French-style Pan-fried Chicken Thighs with Potatoes', 80, 2, 'Chicken thighs, baby potatoes, rosemary, white wine, black pepper, white pepper, salt, garlic, olive oil', 54);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/International/8.jpg', '2025-01-23 18:34:19', 'Japanese Eel Rice', 81, 2, 'Grilled eel, cooking wine, Unagi Teriyaki Sauce , rice', 53);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/International/9.jpg', '2024-08-14 18:41:57', 'Tuscan Salmon', 82, 2, 'salmon, spinach, cherry tomatoes, light cream, onion, garlic, black pepper, salt, olive oil', 53);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/International/10.jpg', '2024-12-13 18:46:48', 'Classic French Mussels', 83, 2, 'Mussels, white wine, onions, parsley, garlic, butter, cream, olive oil, tomatoes', 53);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/International/11.jpg', '2024-10-23 18:48:32', 'Mediterranean Garlic Shrimp with Mushrooms', 84, 2, 'Seafood seasoning, shrimp, mushrooms, butter/olive oil, lemon, parsley', 53);
INSERT INTO `dishes` VALUES ('', 'Dishes images/Appetizers/8.jpg', '2024-09-11 19:05:34', 'Potato Croquettes', 85, 2, 'potatoes, salt, black pepper, butter, vegetable oil, onions, minced meat, flour, eggs, breadcrumbs', 7);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Appetizers/9.jpg', '2024-07-17 19:10:58', 'New Orleans-style Grilled Chicken Wings', 86, 2, 'Chicken wings, Orleans barbecue powder, toothpicks, white sesame seeds', 7);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Appetizers/10.jpg', '2024-09-20 19:13:39', 'Grilled Lamb Skewers', 87, 2, 'Lamb tenderloin, onion, salt, black pepper, cumin, chili powder', 7);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/24.jpg', '2024-11-20 19:17:09', 'Beijing-Style Chicken Wrap', 88, 2, 'Chicken drumstick, pancake, cucumber, lettuce, corn starch, chinese sweet noodle sauce', 14);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Appetizers/11.jpg', '2024-10-23 19:24:19', 'Crispy Fried Meatballs', 89, 2, 'Sunflower oil, minced meat, starch, onion, ginger, garlic, green radish, carrot', 7);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Appetizers/12.jpg', '2025-01-22 20:22:26', 'Crispy Deep-Fried Tofu', 90, 2, 'Tofu, chili pepper, minced garlic, cumin, white sesame, chili powder, soy sauce', 7);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Appetizers/13.jpg', '2024-10-16 20:28:00', 'Oven Roasted Crispy Pork Belly', 91, 2, 'Pork belly, salt, sugar, five-spice powder, cooking wine, white vinegar', 14);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/25.jpg', '2024-11-20 20:29:59', 'Stir-fried Potatoes, Eggplant,& Peppers', 92, 2, 'Eggplant, potato, green pepper, salt, starch, sugar, dark soy sauce', 13);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/26.jpg', '2025-01-23 20:37:57', 'Steamed Pork Ribs with Glutinous Rice', 93, 2, 'Glutinous rice, pork ribs, potatoes', 9);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/27.jpg', '2024-11-12 20:38:11', 'Black Pepper Garlic Steak Bites', 94, 2, 'Beef tenderloin, garlic, black pepper, soy sauce, cornstarch, cooking wine, sugar', 8);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/28.jpg', '2024-12-20 20:50:10', 'Salted Duck Egg Shrimp Tofu Soup', 95, 2, 'Salted egg yolk, shrimp, soft tofu, white mushroom, green beans, rice wine, salt, white pepper', 11);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/29.jpg', '2024-12-19 20:52:00', 'Braised Minced Pork with Green Peppers', 96, 2, 'Green pepper, minced meat, oyster sauce, soy sauce, star anise, oil, chicken stock', 9);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/30.jpg', '2024-09-11 22:08:51', 'Spring Pancakes', 97, 2, 'Flour, water, salt, cooking oil, leeks, bean sprouts, shredded carrots', 13);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/31.jpg', '2024-03-28 22:26:45', 'Three Spring Treasures', 98, 2, 'Spring bamboo shoots, broad beans, bacon, sugar, onions, starch', 9);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/32.jpg', '2024-10-31 22:33:03', 'Clay Pot Stewed Bass', 99, 2, 'Sea bass, garlic, onion, ginger, shallot, light soy sauce, dark soy sauce', 11);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Appetizers/14.jpg', '2024-05-22 22:36:36', 'Chilled Spinach Salad', 100, 2, 'Spinach, eggs, white beech mushroom, cooked peanuts', 6);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Dim Sum/8.jpg', '2024-07-17 22:55:25', 'Matcha Red Bean Sticky Rice Cake', 101, 2, 'Water-ground glutinous rice flour, corn starch, white sugar, milk, cooking oil, matcha powder, red bean paste', 41);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/33.jpg', '2024-09-26 22:57:25', 'Stewed Spring Bamboo Shoots', 102, 2, 'Spring bamboo shoots, soy sauce, steamed fish sauce, rock sugar, cooking oil', 13);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Appetizers/15.jpg', '2024-11-20 23:07:23', 'Shredded Chicken with Bamboo Shoots', 103, 2, 'Spring bamboo shoots, chicken breast, coriander, chili pepper, green onion', 6);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Noodles/11.jpg', '2024-06-20 23:42:10', 'Chilled Noodles with Shredded Chicken', 104, 2, 'Chicken breast, onion, ginger, cooking wine, alkaline noodles, cooking oil, cucumber, egg, sesame paste', 19);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Appetizers/16.jpg', '2024-10-24 23:49:35', 'Sichuan Mung Bean Jelly', 105, 2, 'Pea starch, water, soy sauce, oyster sauce, chili oil, pepper powder, minced ginger, minced garlic,', 6);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Appetizers/17.jpg', '2024-12-10 00:23:40', 'Lotus Root Salad', 106, 2, 'Lotus root, chili powder, white sesame, garlic, green onion', 6);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Appetizers/18.jpg', '2023-07-13 12:56:41', 'Bitter melon stuffed with banana', 107, 2, 'Bitter melon, banana, wolfberry, sugar, starch, salt, cooking oil, water', 6);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Soup/9.jpg', '2024-09-25 13:00:57', 'Winter Melon and Ham Soup', 108, 2, 'Winter melon, ham, mushrooms, spring green onion, leek, white pepper, salt', 30);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Appetizers/19.jpg', '2024-10-23 13:13:19', 'Sliced Pork with Garlic Sauce', 109, 2, 'Pork belly, cucumber, ginger, garlic, pepper, spring onion, coriander', 2);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/34.jpg', '2024-12-17 14:11:22', 'Stir-fried Luffa with Shrimp and Egg', 110, 2, 'Loofah, eggs, shrimp, salt, soy sauce, pepper, sugar', 13);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Soup/10.jpg', '2024-10-22 14:31:11', 'Creamy Pumpkin Soup', 111, 2, 'Pumpkin, milk, light cream, salt, white mushrooms', 34);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Soup/11.jpg', '2025-01-24 14:36:12', 'Lotus Root Pork Rib Soup', 112, 2, 'Peanuts, ginger, pork ribs, lotus root, salt, dried scallops, carrots', 30);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/35.jpg', '2025-02-20 14:39:30', 'Stir-Fried Spinach with Shredded Carrots', 113, 2, 'Carrots, spinach, garlic, oyster sauce, salt', 13);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Appetizers/20.jpg', '2024-12-20 15:20:47', 'Lotus Meets Okra', 115, 2, 'Okra, sugar, vinegar, garlic, chili pepper, green onion', 6);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/36.jpg', '2025-02-06 16:12:38', 'Cured Pork & Tofu Clay Pot', 116, 2, 'Chinese cabbage, tofu, bacon, mushrooms, green onions', 9);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/37.jpg', '2024-12-18 16:21:18', 'Braised Beef with Tofu Skin', 117, 2, 'Beef brisket, bean curd, green garlic sprouts, ginger', 8);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/38.jpg', '2025-02-18 16:28:51', 'Yellow Braised Chicken\n\n', 118, 2, 'Chicken legs, chicken wings, green and red peppers, ginger, green onions, garlic, water', 12);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Noodles/12.jpg', '2025-02-26 16:41:58', 'Ham and Egg Hot Soup Noodles', 119, 2, 'Noodles, eggs, ham, cabbage leaves, white radish', 19);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/39.jpg', '2024-11-14 17:56:09', 'Shredded Pork in Beijing Sauce', 120, 2, 'Pork tenderloin, cooking wine, starch, egg white, sweet noodle sauce', 9);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Appetizers/21.jpg', '2024-11-12 18:02:36', 'Chinese Pork Rind Jelly Salad ', 121, 2, 'Pork rind, soy sauce, salt, cooking wine, water, salt', 2);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Appetizers/22.jpg', '2024-09-24 18:30:36', 'Imperial Cabbage', 122, 2, 'Cabbage leaves, sesame paste, soy sauce, dark soy sauce, balsamic vinegar, sugar', 6);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/40.jpg', '2025-01-16 18:34:40', 'Braised Lamb Spine', 123, 2, 'Sheep ribs, star anise, bay leaves, Sichuan pepper, chili pepper', 10);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/41.jpg', '2024-12-19 18:46:37', 'Steamed Yellow Croaker', 124, 2, 'Yellow croaker, steamed fish soy sauce, green onion, ginger', 11);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/42.jpg', '2024-09-11 19:10:24', 'Steamed Juicy Pork Meatballs', 125, 2, 'Pork belly, lotus root, mushrooms, rapeseed, salt, sugar', 9);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Soup/12.jpg', '2024-11-07 19:23:41', 'Shanghai Mini Wontons', 126, 2, 'Pork, eggs, salt, soy sauce, sugar, white pepper, oyster sauce, oil, green onion, wonton wrapper', 30);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/43.jpg', '2024-09-12 19:52:48', 'Xi’an Crispy Pork Sandwich', 127, 2, 'Flour, yeast, sugar, salt, pork belly, cinnamon, pepper, bay leaves, star anise', 9);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Noodles/13.jpg', '2024-10-05 20:04:09', 'Sour & Spicy Minced Meat Noodles', 128, 2, 'Potatoes, mushrooms, tomatoes, minced pork, carrots, ginger, green onions, coriander', 16);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Soup/13.jpg', '2024-12-18 20:08:01', 'Xi’an Style Lamb & Flatbread Soup', 129, 2, 'Lamb leg, white radish, steamed bun, tofu, black fungus, egg, green onion', 31);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/44.jpg', '2024-12-25 20:19:04', 'Steamed Pork with Rice Flour', 130, 2, 'Pork belly, Rice Flour, Potatoes, Cooking wine, Soy sauce, Sugar', 9);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Noodles/14.jpg', '2024-11-21 21:36:41', 'Sichuan Dan Dan Noodles', 131, 2, 'Minced meat, noodles, vegetables, soy sauce, sugar, salt, pepper powder, cooking wine, pepper oil,', 16);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Appetizers/23.jpg', '2025-01-16 21:40:41', 'Sichuan Spicy Peanuts', 132, 2, 'Peanuts, cooking oil, garlic, dried chili peppers, peppercorns, salt, aniseed, sugar, chili powder', 7);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/45.jpg', '2025-01-16 21:48:42', 'Spicy Mapo Tofu', 133, 2, 'Soft tofu, beef, ginger, shallot, garlic, dried chili pepper, Sichuan peppercorns, Pixian red bean paste', 6);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/46.jpg', '2024-11-08 22:18:14', 'Classic Finger-Licking Chicken Wings', 134, 2, 'Soy sauce, salt, sesame oil, cooking wine, black pepper, cumin powder', 12);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/47.jpg', '2024-10-08 22:20:27', 'Microwave-Cooked Enoki Mushrooms', 135, 2, 'Enoki mushroom, steamed fish soy sauce, soybean paste, minced garlic', 13);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Appetizers/24.jpg', '2024-12-19 22:24:39', 'Barbecue-flavored Potato Chips', 136, 2, 'Peeled potatoes, cooking oil, salt', 7);
INSERT INTO `dishes` VALUES ('', 'Dishes images/Appetizers/25.jpg', '2024-10-16 22:28:26', 'BBQ Toothpick Meat ', 137, 2, 'Pork lean meat, chili powder, pepper powder, five-spice powder, cumin powder, sesame oil, old ginger, green onion', 7);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/48.jpg', '2024-10-24 13:46:56', 'Easy Rice Cooker Eggplant', 138, 2, 'Oil, salt, sweet bean paste, soy sauce, sugar, green onion, star anise, ginger, garlic', 13);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/49.jpg', '2024-08-15 13:49:36', 'Savory Pulled Chicken', 139, 2, 'Chicken, salt, ginger, seasoned soy sauce for seafood', 12);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/50.jpg', '2025-01-30 13:54:33', 'Crispy Dumplings in Minutes', 140, 2, 'Frozen dumplings, spring onions, black sesame', 14);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/51.jpg', '2024-11-19 13:56:12', 'Homestyle Pork Rib Soup', 141, 2, 'Spare ribs, spring onions, cooking wine, star anise, peppercorns, ginger slices, salt', 30);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/52.jpg', '2024-09-20 14:12:43', 'Scrambled Eggs with Tomatoes', 142, 2, 'Tomato, egg, green pepper, garlic, salt', 12);
INSERT INTO `dishes` VALUES ('', 'Dishes images/Main Dishes/53.jpg', '2024-10-24 14:16:07', 'Wok-fried Snow Peas with Cured Sausage', 143, 2, 'Snow peas, stretched, salt, garlic, sugar', 9);
INSERT INTO `dishes` VALUES ('', 'Dishes images/Main Dishes/54.jpg', '2024-10-25 14:19:10', 'Quick Steamed Meat Patty', 144, 2, 'Pork filling, accessories, ginger, mustard tuber, soy sauce, salt', 9);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Soup/14.jpg', '2024-08-16 14:20:56', 'Scallop Tofu Soup', 145, 2, 'Tofu, scallops, spring onions, ginger, pepper, salt', 32);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/55.jpg', '2025-01-23 15:04:05', 'Steamed Pork Ribs With Pumpkin', 146, 2, 'Pumpkin, pork ribs, garlic, ginger, oyster sauce', 9);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Appetizers/26.jpg', '2024-11-22 15:25:55', 'Spicy Grilled Squid', 147, 2, 'Squid, Korean chili sauce, garlic, ginger, spring onion, white sesame', 7);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/56.jpg', '2024-11-21 15:29:19', 'Stir-fried Squid with Onions', 148, 2, 'Squid, ginger, green onion, onion', 11);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/57.jpg', '2025-03-28 15:32:11', 'Garlic Steamed Squid', 149, 2, 'Squid, garlic, shallot, salt, soy sauce, oyster sauce', 11);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/58.jpg', '2025-01-15 15:34:33', 'Grilled Squid in Spicy Sauce', 150, 2, 'Squid, onion, white sesame, chili garlic sauce, spring onion, barbecue sauce', 11);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Soup/15.jpg', '2024-12-20 15:37:59', 'Shrimp and Squid Congee', 151, 2, 'Rice, squid, shrimp, carrot, mushroom, garlic sprout', 32);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Appetizers/27.jpg', '2024-12-19 15:40:51', 'Crispy Squid Patties', 152, 2, 'Squid, minced pork, wonton wrapper, egg, starch, spring onion', 7);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Appetizers/28.jpg', '2025-02-21 15:43:15', 'Crispy Calamari Rings', 153, 2, 'Squid, eggs, starch, bread crumbs', 7);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/59.jpg', '2024-11-16 15:45:39', 'Stir-fried Squid with Green Peppers', 154, 2, 'Squid, ginger slices, salt, oyster sauce, starch water', 11);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/60.jpg', '2024-11-06 22:55:09', 'Stir-fried potatoes with Chinese cured pork', 155, 2, 'Chinese cured pork, potatoes, red pepper, soy sauce', 9);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/61.jpg', '2024-12-12 22:58:18', 'Spicy and Sour Shredded Potato', 156, 2, 'Potatoes, peppers, garlic, spring onions, white vinegar', 13);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/62.jpg', '2024-10-10 22:59:05', 'Stir-fried potatoes with king oyster mushrooms', 157, 2, 'Potatoes, king oyster mushrooms, spring onions, ginger slices, garlic, oyster sauce, soy sauce', 13);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/63.jpg', '2024-12-20 23:05:00', 'Grilled Bacon-Wrapped Enoki MushroomsGrilled Bacon-Wrapped Enoki Mushrooms', 158, 2, 'Enoki mushrooms, bacon, soy sauce, rice vinegar, oyster sauce, chopped green onion', 9);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/64.jpg', '2024-11-15 23:06:53', 'Pan-fried tofu with bacon', 159, 2, 'Bacon, tofu, white sesame', 9);
INSERT INTO `dishes` VALUES ('', 'Dishes images/Main Dishes/65.jpg', '2024-11-21 23:09:32', 'Stir-fried Snow Peas with Bacon', 160, 2, 'Snow peas, bacon, bell peppers, garlic', 9);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/66.jpg', '2024-11-29 23:11:24', ' Stir-fried Cauliflower with Bacon', 161, 2, 'Cauliflower, carrots, bacon, garlic, salt', 9);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/67.jpg', '2025-01-24 23:13:37', 'Bacon Cheese Rice Ball', 162, 2, 'Rice, bacon, peas, carrots, sausage', 9);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/68.jpg', '2025-02-07 23:15:40', 'Crispy Bacon Radish Pancake', 163, 2, 'Bacon, white radish, flour, spring onion', 9);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/69.jpg', '2024-12-26 23:17:51', 'Stir-Fried Okra with Bacon', 164, 2, 'Okra, bacon, bell pepper, garlic, soy sauce', 9);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Noodles/15.jpg', '2025-01-31 23:30:19', 'Kimchi Bacon Stir-Fried Noodles', 165, 2, 'Bacon, kimchi, carrots, noodles, onions, mushrooms', 16);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Drinks/6.jpg', '2024-09-26 18:08:20', 'Kumquat Honey Tea', 166, 2, 'Kumquat, honey, water', 43);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Soup/16.jpg', '2024-11-26 18:12:12', 'Kumquat and White Fungus Soup', 167, 2, 'Soaked Tremella, Kumquat, Rock Sugar', 34);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Soup/17.jpg', '2024-11-29 18:19:19', 'Snow Pear Kumquat Tea', 168, 2, 'Sydney, kumquat, rock sugar, red dates', 34);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Drinks/7.jpg', '2024-09-12 18:22:44', 'Sparkling Passionfruit Kumquat', 169, 2, 'Sprite, passion fruit, kumquat', 43);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Drinks/8.jpg', '2024-12-25 18:26:00', 'Candied Kumquat Jam', 170, 2, 'Rock sugar, lemon juice, kumquat', 43);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Appetizers/29.jpg', '2025-01-30 18:28:56', 'Candied Kumquats', 171, 2, 'Sugar, honey, kumquat', 6);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Appetizers/30.jpg', '2024-12-05 18:34:19', 'Kumquat Osmanthus Jam', 172, 2, 'White sugar, rock sugar, osmanthus, kumquat', 6);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Appetizers/31.jpg', '2025-01-29 18:40:41', 'Kumquat Lemon Jam', 173, 2, 'Lemon, rock sugar, kumquat', 6);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Appetizers/32.jpg', '2025-02-12 18:42:47', 'Rock Sugar Steamed Pear', 174, 2, 'Rock sugar, pear, wolfberry', 6);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Drinks/9.jpg', '2025-01-22 18:44:16', 'Honey Pear Juice', 175, 2, 'Honey, Pear', 43);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Soup/18.jpg', '2024-11-22 18:46:55', 'Peach Gum Pear Soup', 176, 2, 'Peach gum, pear, white fungus', 34);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Soup/19.jpg', '2025-02-19 18:47:55', 'Tremella and Pear Soup', 177, 2, 'Pear, Tremella', 34);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Soup/20.jpg', '2025-02-19 18:50:00', 'Goji Berry and Pear Soup', 178, 2, 'Pear, Tremella, Goji berry', 34);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Soup/21.jpg', '2025-02-26 18:53:56', 'Pear & Lily Bulb Soup', 179, 2, 'Loquat, pear, white fungus, lily, rock sugar', 34);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Soup/22.jpg', '2024-12-03 22:31:21', 'Pumpkin-Pear Soup', 180, 2, 'Pumpkin, water chestnut, pear, corn', 34);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Soup/23.jpg', '2024-12-25 22:33:48', 'Cordyceps & Pear Porridge', 181, 2, 'Cordyceps flower, rice, pear, wolfberry', 34);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/70.jpg', '2024-11-28 22:37:48', 'Radish Chicken Roll', 182, 2, 'White radish, chicken breast, carrot, black fungus', 12);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/71.jpg', '2025-01-30 22:39:00', 'Steamed Radish Slices', 183, 2, 'White radish, red pepper, starch, pepper powder', 13);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/72.jpg', '2024-12-18 22:40:36', 'Sweet and Sour Radish Slices', 184, 2, 'White radish, white vinegar, white sugar', 13);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Soup/24.jpg', '2024-06-27 22:43:21', 'Cured Pork and Radish Soup', 185, 2, 'White radish, Chinese Cured Pork skin, wolfberry', 30);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Soup/25.jpg', '2024-11-20 22:46:03', 'Radish Pork Soup', 186, 2, 'White radish, ginger, salt', 30);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/73.jpg', '2024-10-10 22:48:13', 'Stuffed Radish with Meat', 187, 2, 'White radish, pork mince，broccoli', 9);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Soup/26.jpg', '2024-10-24 22:55:24', 'Rock Sugar Radish Drink', 188, 2, 'White radish, rock sugar', 34);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Soup/27.jpg', '2024-10-01 14:29:37', 'Red Date and Tremella Soup', 189, 2, 'Tremella, rock sugar, wolfberry, red dates', 34);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Soup/28.jpg', '2024-09-19 14:33:16', 'Durian and Goji Berry Chicken Soup', 190, 2, 'Durian, wolfberry, chicken, ginger', 33);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Soup/29.jpg', '2024-08-29 14:36:03', 'Wolfberry and Longan Soup', 191, 2, 'Red beans, lotus seeds, longan, rock sugar', 34);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Soup/30.jpg', '2025-02-19 14:38:14', 'Goji and Ginseng Congee', 192, 2, 'Wolfberry, ginseng, millet, rice', 34);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/74.jpg', '2024-11-01 14:41:45', 'Broccoli and Egg Pancake', 193, 2, 'Broccoli, eggs, flour', 13);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/75.jpg', '2024-10-29 14:43:44', 'Cheese-Baked Eggs with Broccoli', 194, 2, 'Broccoli, eggs, cheese', 12);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/76.jpg', '2024-12-05 14:45:40', 'Oyster Sauce Stir-fried Mushrooms and Broccoli', 195, 2, 'Broccoli, oyster sauce, mushrooms', 13);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Soup/31.jpg', '2024-10-24 14:49:38', 'Creamy Broccoli and Ham Soup', 196, 2, 'Broccoli, eggs, Century eggs, ham', 30);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Drinks/10.jpg', '2024-10-31 14:51:36', 'Chrysanthemum Rose Tea', 197, 2, 'Chrysanthemum, Rose, Wolfberry', 43);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Drinks/11.jpg', '2024-11-28 14:53:06', 'Chrysanthemum and Snow Pear Tea', 198, 2, 'Chrysanthemum, Snow pear', 43);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Drinks/12.jpg', '2024-11-28 14:54:13', 'Chrysanthemum Lemon Tea', 199, 2, 'Chrysanthemum, lemon, wolfberry', 43);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Drinks/13.jpg', '2024-10-08 14:55:18', 'Chrysanthemum Hawthorn Herbal Tea', 200, 2, 'Chrysanthemum, hawthorn, wolfberry', 43);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/77.jpg', '2024-10-23 14:58:38', 'Crispy Pan-Seared Hairtail', 201, 2, 'Hairtail, green onion, ginger, pepper, white sesame', 11);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/78.jpg', '2024-11-07 15:00:18', 'Sweet and Sour Pineapple Shrimp', 202, 2, 'Fresh shrimp, pineapple, tomato sauce, white vinegar', 11);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Soup/32.jpg', '2024-11-12 15:01:57', 'Dandelion and Pork Liver Soup', 203, 2, 'Dandelion, pork liver, ginger, wolfberry', 30);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Soup/33.jpg', '2024-12-26 15:03:23', 'Black Sesame Paste', 204, 2, 'Black sesame, glutinous rice, rock sugar', 34);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/79.jpg', '2024-11-05 15:06:58', 'Steamed Egg With Soft Tofu and Pork ', 205, 2, 'Minced pork, soft tofu, spring onion, egg', 9);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/80.jpg', '2024-11-01 15:10:55', 'Spinach and Egg Pancake', 206, 2, 'Spinach, eggs, flour', 13);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Soup/34.jpg', '2024-11-21 15:12:46', 'Carrot, Corn, and Pork Bone Soup', 207, 2, 'Carrots, corn, pork bones', 30);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Soup/35.jpg', '2024-10-31 15:16:17', 'Salmon Rice Porridge', 208, 2, 'salmon, rice', 32);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/81.jpg', '2025-02-19 15:17:46', 'Salmon Fried Rice', 209, 2, 'salmon, rice', 11);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Soup/36.jpg', '2024-12-19 15:19:25', 'Salmon and Tofu Soup', 210, 2, 'Salmon, rice, soft tofu', 32);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/82.jpg', '2024-11-14 15:21:22', 'Pan-Seared Salmon with Mashed Potatoes', 211, 2, 'salmon, potatoes, rosemary', 53);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/83.jpg', '2025-01-16 15:23:27', 'Stir-Fried Pork with Kelp', 212, 2, 'Kelp, pork, green pepper', 9);
INSERT INTO `dishes` VALUES ('', 'Dishes images/Soup/37.jpg', '2024-09-18 15:27:12', 'Kelp and Pork Bone Soup', 213, 2, 'Kelp, pork bones', 30);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/84.jpg', '2024-11-21 15:28:53', 'Braised Potatoes with Kelp', 214, 2, 'Kelp, potatoes, carrots', 13);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Dim Sum/9.jpg', '2024-09-26 15:31:42', 'Crunchy Fried Sweet Potato Fritters', 215, 2, 'Sweet potatoes, flour', 13);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Soup/38.jpg', '2024-11-21 15:33:25', 'Red Date and Sweet Potato Porridge', 216, 2, 'Sweet potatoes, red dates, rice, wolfberries', 41);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Dim Sum/10.jpg', '2024-11-14 15:35:56', 'Sweet Potato Red Bean Biscuit', 217, 2, 'Sweet potato, red bean paste, white sesame, glutinous rice flour', 41);
INSERT INTO `dishes` VALUES ('', 'Dishes images/Dim Sum/11.jpg', '2024-11-19 15:38:46', 'Sweet Potato Egg Tart', 218, 2, 'Sweet potatoes, milk, eggs', 41);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/85.jpg', '2024-08-16 15:41:53', 'Stir-Fried Bitter Melon with Beef', 219, 2, 'Bitter melon, beef tenderloin, garlic, red pepper', 8);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/86.jpg', '2024-11-20 17:08:37', 'Stir-Fried Pork Strips with Bitter Melon', 220, 2, 'Bitter melon, pork, green onion, ginger', 9);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/87.jpg', '2024-10-25 17:10:34', 'Stewed Pork Ribs with Bitter Melon', 221, 2, 'Bitter melon, pork chop, ginger', 9);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Bakery/10.jpg', '2024-11-27 17:31:20', 'Caramelized Walnut Pie', 222, 2, 'Walnuts, brown sugar, low-gluten flour, butter, white sugar', 48);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/88.jpg', '2024-10-30 17:34:51', 'Stir-Fried Walnut and Celery', 223, 2, 'Walnuts, celery, carrots, soy sauce', 13);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Main Dishes/89.jpg', '2024-10-24 17:36:39', 'Kung Pao Chicken with Walnuts', 224, 2, 'Walnuts, chicken breast, peanuts, cucumber', 12);
INSERT INTO `dishes` VALUES (NULL, 'Dishes images/Soup/39.jpg', '2024-12-17 17:38:55', 'Creamy Walnut and Chestnut Congee', 225, 2, 'Walnut, chestnut, lotus seed, peanut', 34);

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
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of howdo
-- ----------------------------

-- ----------------------------
-- Table structure for ingredient_category
-- ----------------------------
DROP TABLE IF EXISTS `ingredient_category`;
CREATE TABLE `ingredient_category`  (
  `csid` int(11) NOT NULL AUTO_INCREMENT,
  `csname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`csid`) USING BTREE,
  INDEX `fk_cid`(`cid`) USING BTREE,
  CONSTRAINT `cid` FOREIGN KEY (`cid`) REFERENCES `dish_category` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of ingredient_category
-- ----------------------------
INSERT INTO `ingredient_category` VALUES (1, 'Beef', 1);
INSERT INTO `ingredient_category` VALUES (2, 'Pork', 1);
INSERT INTO `ingredient_category` VALUES (3, 'Lamb', 1);
INSERT INTO `ingredient_category` VALUES (4, 'Seafood', 1);
INSERT INTO `ingredient_category` VALUES (5, 'Poultry', 1);
INSERT INTO `ingredient_category` VALUES (6, 'Vegetarian', 1);
INSERT INTO `ingredient_category` VALUES (7, 'Street Food', 1);
INSERT INTO `ingredient_category` VALUES (8, 'Beef', 2);
INSERT INTO `ingredient_category` VALUES (9, 'Pork', 2);
INSERT INTO `ingredient_category` VALUES (10, 'Lamb', 2);
INSERT INTO `ingredient_category` VALUES (11, 'Seafood', 2);
INSERT INTO `ingredient_category` VALUES (12, 'Poultry', 2);
INSERT INTO `ingredient_category` VALUES (13, 'Vegetarian', 2);
INSERT INTO `ingredient_category` VALUES (14, 'Street Food', 2);
INSERT INTO `ingredient_category` VALUES (15, 'Beef', 3);
INSERT INTO `ingredient_category` VALUES (16, 'Pork', 3);
INSERT INTO `ingredient_category` VALUES (17, 'Lamb', 3);
INSERT INTO `ingredient_category` VALUES (18, 'Seafood', 3);
INSERT INTO `ingredient_category` VALUES (19, 'Poultry', 3);
INSERT INTO `ingredient_category` VALUES (20, 'Vegetarian', 3);
INSERT INTO `ingredient_category` VALUES (21, 'Street Food', 3);
INSERT INTO `ingredient_category` VALUES (22, 'Beef', 4);
INSERT INTO `ingredient_category` VALUES (23, 'Pork', 4);
INSERT INTO `ingredient_category` VALUES (24, 'Lamb', 4);
INSERT INTO `ingredient_category` VALUES (25, 'Seafood', 4);
INSERT INTO `ingredient_category` VALUES (26, 'Poultry', 4);
INSERT INTO `ingredient_category` VALUES (27, 'Vegetarian', 4);
INSERT INTO `ingredient_category` VALUES (28, 'Street Food', 4);
INSERT INTO `ingredient_category` VALUES (29, 'Beef', 5);
INSERT INTO `ingredient_category` VALUES (30, 'Pork', 5);
INSERT INTO `ingredient_category` VALUES (31, 'Lamb', 5);
INSERT INTO `ingredient_category` VALUES (32, 'Seafood', 5);
INSERT INTO `ingredient_category` VALUES (33, 'Poultry', 5);
INSERT INTO `ingredient_category` VALUES (34, 'Vegetarian', 5);
INSERT INTO `ingredient_category` VALUES (35, 'Street Food', 5);
INSERT INTO `ingredient_category` VALUES (36, 'Beef', 6);
INSERT INTO `ingredient_category` VALUES (37, 'Pork', 6);
INSERT INTO `ingredient_category` VALUES (38, 'Lamb', 6);
INSERT INTO `ingredient_category` VALUES (39, 'Seafood', 6);
INSERT INTO `ingredient_category` VALUES (40, 'Poultry', 6);
INSERT INTO `ingredient_category` VALUES (41, 'Vegetarian', 6);
INSERT INTO `ingredient_category` VALUES (42, 'Street Food', 6);
INSERT INTO `ingredient_category` VALUES (43, 'Vegetarian', 7);
INSERT INTO `ingredient_category` VALUES (44, 'Pork', 8);
INSERT INTO `ingredient_category` VALUES (45, 'Lamb', 8);
INSERT INTO `ingredient_category` VALUES (46, 'Seafood', 8);
INSERT INTO `ingredient_category` VALUES (47, 'Poultry', 8);
INSERT INTO `ingredient_category` VALUES (48, 'Vegetarian', 8);
INSERT INTO `ingredient_category` VALUES (49, 'Street Food', 8);
INSERT INTO `ingredient_category` VALUES (50, 'Beef', 9);
INSERT INTO `ingredient_category` VALUES (51, 'Pork', 9);
INSERT INTO `ingredient_category` VALUES (52, 'Lamb', 9);
INSERT INTO `ingredient_category` VALUES (53, 'Seafood', 9);
INSERT INTO `ingredient_category` VALUES (54, 'Poultry', 9);
INSERT INTO `ingredient_category` VALUES (55, 'Vegetarian', 9);
INSERT INTO `ingredient_category` VALUES (56, 'Street Food', 9);

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
  CONSTRAINT `dish_id` FOREIGN KEY (`dish_id`) REFERENCES `dishes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1249 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of ingredients_details
-- ----------------------------
INSERT INTO `ingredients_details` VALUES (1, 1, 'Beef tenderloin', '350g');
INSERT INTO `ingredients_details` VALUES (2, 1, 'Baking soda', '1.5g');
INSERT INTO `ingredients_details` VALUES (3, 1, 'Dark soy sauce', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (4, 1, 'Light soy sauce', '2 tablespoons');
INSERT INTO `ingredients_details` VALUES (5, 1, 'Oyster sauce', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (6, 1, 'Sichuan pepper oil', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (7, 1, 'BBQ seasoning', '1.5 tablespoons');
INSERT INTO `ingredients_details` VALUES (8, 1, 'Cumin powder', '½ tablespoon');
INSERT INTO `ingredients_details` VALUES (9, 1, 'Toasted sesame seeds', '2 tablespoons');
INSERT INTO `ingredients_details` VALUES (10, 1, 'Minced garlic, chopped green onions', 'a pinch');
INSERT INTO `ingredients_details` VALUES (11, 1, 'Cooking oil', '3 tablespoons');
INSERT INTO `ingredients_details` VALUES (12, 2, 'Beef', '400g');
INSERT INTO `ingredients_details` VALUES (13, 2, 'Potato', '2');
INSERT INTO `ingredients_details` VALUES (14, 2, 'Doubanjiang', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (15, 2, 'Star anise', '1');
INSERT INTO `ingredients_details` VALUES (16, 2, 'Garlic', '2 cloves ');
INSERT INTO `ingredients_details` VALUES (17, 2, 'Light soy sauce', '2 tablespoons');
INSERT INTO `ingredients_details` VALUES (18, 2, 'Dried chili peppers', '2');
INSERT INTO `ingredients_details` VALUES (19, 2, 'Carrot', 'Half a piece');
INSERT INTO `ingredients_details` VALUES (20, 2, 'Dark soy sauce', '½ tablespoon');
INSERT INTO `ingredients_details` VALUES (21, 2, 'Cooking wine', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (22, 2, 'Salt', 'a pinch');
INSERT INTO `ingredients_details` VALUES (23, 2, 'Sugar', 'a pinch');
INSERT INTO `ingredients_details` VALUES (24, 3, 'Lamb slices', '400g');
INSERT INTO `ingredients_details` VALUES (25, 3, 'Green onions ', '2 stalks');
INSERT INTO `ingredients_details` VALUES (26, 3, 'Salt', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (27, 3, 'Light soy sauce', '2 tablespoons');
INSERT INTO `ingredients_details` VALUES (28, 3, 'Dark soy sauce ', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (29, 3, 'White wine', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (30, 3, 'Sugar', '½ tablespoon');
INSERT INTO `ingredients_details` VALUES (31, 3, 'Black pepper', 'a pinch');
INSERT INTO `ingredients_details` VALUES (32, 3, 'Vinegar', ' ½ tablespoon');
INSERT INTO `ingredients_details` VALUES (33, 4, 'Pork belly', '800g');
INSERT INTO `ingredients_details` VALUES (34, 4, 'Star anise', '1 piece');
INSERT INTO `ingredients_details` VALUES (35, 4, 'Green onion', '1 stalk');
INSERT INTO `ingredients_details` VALUES (36, 4, 'Ginger', '5 slices');
INSERT INTO `ingredients_details` VALUES (37, 4, 'Cinnamon stick', '1');
INSERT INTO `ingredients_details` VALUES (38, 4, 'Bay leaves', '2 pieces');
INSERT INTO `ingredients_details` VALUES (39, 4, 'Rock sugar', '1 handful');
INSERT INTO `ingredients_details` VALUES (40, 4, 'Cooking wine', '3 tablespoon');
INSERT INTO `ingredients_details` VALUES (41, 4, 'Salt', '½ tablespoon');
INSERT INTO `ingredients_details` VALUES (42, 4, 'Dark soy sauce', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (43, 4, 'Light soy sauce', '3 tablespoons');
INSERT INTO `ingredients_details` VALUES (44, 4, 'Oyster sauce', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (45, 5, 'Beef', '500g');
INSERT INTO `ingredients_details` VALUES (46, 5, 'Cooking wine', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (47, 5, 'Light soy sauce', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (48, 5, 'Oyster sauce', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (49, 5, 'Cornstarch', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (50, 5, 'White pepper powder', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (51, 5, 'Vegetable oil', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (52, 5, 'Dark soy sauce', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (53, 5, 'Garlic', '5 cloves');
INSERT INTO `ingredients_details` VALUES (54, 5, 'Black pepper', 'To taste');
INSERT INTO `ingredients_details` VALUES (55, 6, 'Lamb', '1kg');
INSERT INTO `ingredients_details` VALUES (56, 6, 'Cooking wine', '3 tablespoons');
INSERT INTO `ingredients_details` VALUES (57, 6, 'Ginger slices', '3 slices');
INSERT INTO `ingredients_details` VALUES (58, 6, 'Green onion', '1 stalk');
INSERT INTO `ingredients_details` VALUES (59, 6, 'Light soy sauce', '3 tablespoons');
INSERT INTO `ingredients_details` VALUES (60, 6, 'Dark soy sauce', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (61, 6, 'Carrot', '1 piece');
INSERT INTO `ingredients_details` VALUES (62, 6, 'Salt', '1/2 tablespoon');
INSERT INTO `ingredients_details` VALUES (63, 7, 'Beef ', '500g');
INSERT INTO `ingredients_details` VALUES (64, 7, 'Ginger', '4 slices');
INSERT INTO `ingredients_details` VALUES (65, 7, 'Garlic', '4 cloves');
INSERT INTO `ingredients_details` VALUES (66, 7, 'small chili paper', '3 pieces');
INSERT INTO `ingredients_details` VALUES (67, 7, 'Cooking Wine', 'To taste');
INSERT INTO `ingredients_details` VALUES (68, 7, 'Light Soy Sauce', 'To taste');
INSERT INTO `ingredients_details` VALUES (69, 7, 'Salt', 'To taste');
INSERT INTO `ingredients_details` VALUES (70, 8, 'Chicken drumsticks', '3 pieces');
INSERT INTO `ingredients_details` VALUES (71, 8, 'Dried chili peppers', '1 small bowl');
INSERT INTO `ingredients_details` VALUES (72, 8, 'Egg white', '1 piece');
INSERT INTO `ingredients_details` VALUES (73, 8, 'Cornstarch', '5 spoons');
INSERT INTO `ingredients_details` VALUES (74, 8, 'Green onions', '5 stalks');
INSERT INTO `ingredients_details` VALUES (75, 8, 'Ginger', '1 small piece');
INSERT INTO `ingredients_details` VALUES (76, 8, 'Garlic', '5 cloves');
INSERT INTO `ingredients_details` VALUES (77, 8, 'Cooking wine', '2 spoons');
INSERT INTO `ingredients_details` VALUES (78, 8, 'Salt', '½ spoon');
INSERT INTO `ingredients_details` VALUES (79, 8, 'Five-spice powder', '½ spoon');
INSERT INTO `ingredients_details` VALUES (80, 8, 'Light soy sauce', '1 spoon');
INSERT INTO `ingredients_details` VALUES (81, 8, 'Oyster sauce', '1 spoon');
INSERT INTO `ingredients_details` VALUES (82, 8, 'Fine sugar', '½ spoon');
INSERT INTO `ingredients_details` VALUES (83, 8, 'Sichuan peppercorns', '40-50 pieces');
INSERT INTO `ingredients_details` VALUES (84, 8, 'Toasted sesame seeds', '1 spoon');
INSERT INTO `ingredients_details` VALUES (85, 9, 'Duck', ' Half');
INSERT INTO `ingredients_details` VALUES (86, 9, 'Lotus root', '1 section');
INSERT INTO `ingredients_details` VALUES (87, 9, 'Ginger', '1 piece');
INSERT INTO `ingredients_details` VALUES (88, 9, 'Green onion', '2 stalks');
INSERT INTO `ingredients_details` VALUES (89, 9, 'Star anise', '2-3 pieces');
INSERT INTO `ingredients_details` VALUES (90, 9, 'Cinnamon stick', '1 segment');
INSERT INTO `ingredients_details` VALUES (91, 9, 'Bay leaves', '3 pieces');
INSERT INTO `ingredients_details` VALUES (92, 9, 'Doubanjiang', '2 tablespoons');
INSERT INTO `ingredients_details` VALUES (93, 9, 'Yellow wine', '2 tablespoons');
INSERT INTO `ingredients_details` VALUES (94, 9, 'Light soy sauce', '2 tablespoons');
INSERT INTO `ingredients_details` VALUES (95, 9, 'Rock sugar', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (96, 10, 'Duck ', '1/4 piece');
INSERT INTO `ingredients_details` VALUES (97, 10, 'Preserved plums', '3 pieces');
INSERT INTO `ingredients_details` VALUES (98, 10, 'Plum sauce', '2 tablespoons');
INSERT INTO `ingredients_details` VALUES (99, 10, 'Rock sugar', 'To taste');
INSERT INTO `ingredients_details` VALUES (100, 10, 'Dark soy sauce', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (101, 10, 'Light soy sauce', '3 tablespoons');
INSERT INTO `ingredients_details` VALUES (102, 10, 'Cooking wine', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (103, 10, 'Salt', 'to taste');
INSERT INTO `ingredients_details` VALUES (104, 10, 'Ginger', '1 piece');
INSERT INTO `ingredients_details` VALUES (105, 10, 'Shallots', 'to taste');
INSERT INTO `ingredients_details` VALUES (106, 10, 'Garlic', '5 cloves');
INSERT INTO `ingredients_details` VALUES (107, 11, 'Pork belly', '500g');
INSERT INTO `ingredients_details` VALUES (108, 11, 'Light soy sauce', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (109, 11, 'Dark soy sauce', '½ tablespoon');
INSERT INTO `ingredients_details` VALUES (110, 11, 'White sesame seeds', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (111, 11, 'BBQ seasoning', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (112, 11, 'Starch', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (113, 11, 'Cooking wine', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (114, 12, 'Pork belly', '500g');
INSERT INTO `ingredients_details` VALUES (115, 12, 'Light soy sauce', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (116, 12, 'Dark soy sauce', '½ tablespoon');
INSERT INTO `ingredients_details` VALUES (117, 12, 'White sesame seeds', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (118, 12, 'BBQ seasoning', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (119, 12, 'Starch', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (120, 12, 'Cooking wine', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (121, 13, 'Chicken drumsticks', '2 pieces');
INSERT INTO `ingredients_details` VALUES (122, 13, 'Ginger slices', 'To taste');
INSERT INTO `ingredients_details` VALUES (123, 13, 'Chopped green onions', 'To taste');
INSERT INTO `ingredients_details` VALUES (124, 13, 'Salt', 'To taste');
INSERT INTO `ingredients_details` VALUES (125, 13, 'Sugar', 'To taste');
INSERT INTO `ingredients_details` VALUES (126, 13, 'Light soy sauce', '4 tablespoons');
INSERT INTO `ingredients_details` VALUES (127, 13, 'Black vinegar', '4 tablespoons');
INSERT INTO `ingredients_details` VALUES (128, 13, 'Chopped chili peppers', 'To taste');
INSERT INTO `ingredients_details` VALUES (129, 13, 'Minced garlic', 'To taste');
INSERT INTO `ingredients_details` VALUES (130, 13, 'Lemon', 'To taste');
INSERT INTO `ingredients_details` VALUES (131, 13, 'Cilantro', 'To taste');
INSERT INTO `ingredients_details` VALUES (132, 13, 'Toasted sesame seeds', 'To taste');
INSERT INTO `ingredients_details` VALUES (133, 13, 'Sesame oil', 'To taste');
INSERT INTO `ingredients_details` VALUES (134, 14, 'Chicken breast', '1 piece');
INSERT INTO `ingredients_details` VALUES (135, 14, 'Button mushrooms', '5 pieces');
INSERT INTO `ingredients_details` VALUES (136, 14, 'Garlic', '1–2 cloves');
INSERT INTO `ingredients_details` VALUES (137, 14, 'Chopped green onions', '1 handful');
INSERT INTO `ingredients_details` VALUES (138, 15, 'Chicken breast', 'Half a piece');
INSERT INTO `ingredients_details` VALUES (139, 15, 'Cucumber', '1/3 piece');
INSERT INTO `ingredients_details` VALUES (140, 15, 'Carrot', '1/4 piece');
INSERT INTO `ingredients_details` VALUES (141, 15, 'Peanuts', 'As needed');
INSERT INTO `ingredients_details` VALUES (142, 15, 'broad bean paste', '2 spoons');
INSERT INTO `ingredients_details` VALUES (143, 15, 'Sichuan peppercorns', 'A little');
INSERT INTO `ingredients_details` VALUES (144, 15, 'Dried red chili peppers', '4 pieces');
INSERT INTO `ingredients_details` VALUES (145, 15, 'Cooking wine', '0.5 spoon');
INSERT INTO `ingredients_details` VALUES (146, 15, 'Light soy sauce', '0.5 spoon');
INSERT INTO `ingredients_details` VALUES (147, 15, 'Salt', 'A little');
INSERT INTO `ingredients_details` VALUES (148, 15, 'Egg white', 'A little');
INSERT INTO `ingredients_details` VALUES (149, 15, 'Starch', 'A little');
INSERT INTO `ingredients_details` VALUES (150, 15, 'Sesame oil', '⅓ spoon');
INSERT INTO `ingredients_details` VALUES (151, 15, 'Aged vinegar', '1 spoon');
INSERT INTO `ingredients_details` VALUES (152, 15, 'Sugar', '1 spoon');
INSERT INTO `ingredients_details` VALUES (153, 15, 'Oyster sauce ', '½ spoon');
INSERT INTO `ingredients_details` VALUES (154, 15, 'Cooking wine', '1 spoon');
INSERT INTO `ingredients_details` VALUES (155, 15, 'Honey', '1 spoon');
INSERT INTO `ingredients_details` VALUES (156, 15, 'Meat stock', '2 spoons');
INSERT INTO `ingredients_details` VALUES (157, 15, 'Green Onions', 'A little');
INSERT INTO `ingredients_details` VALUES (158, 15, 'Garlic', '3 cloves');
INSERT INTO `ingredients_details` VALUES (159, 15, 'Sesame oil', '0.5 spoon');
INSERT INTO `ingredients_details` VALUES (160, 15, 'Starch', '1 spoon');
INSERT INTO `ingredients_details` VALUES (161, 16, 'Lamb ribs', '750g');
INSERT INTO `ingredients_details` VALUES (162, 16, 'White radish', 'Half piece');
INSERT INTO `ingredients_details` VALUES (163, 16, 'Carrot', 'Half piece');
INSERT INTO `ingredients_details` VALUES (164, 16, 'Sichuan peppercorns', '20 pieces');
INSERT INTO `ingredients_details` VALUES (165, 16, 'Ginger', '10 slices');
INSERT INTO `ingredients_details` VALUES (166, 16, 'Green onion', 'Half stalk');
INSERT INTO `ingredients_details` VALUES (167, 16, 'White wine', '2 tablespoons');
INSERT INTO `ingredients_details` VALUES (168, 16, 'Salt', '4g');
INSERT INTO `ingredients_details` VALUES (169, 16, 'Cilantro', '2 sprigs');
INSERT INTO `ingredients_details` VALUES (170, 16, 'Red dates', '2 pieces');
INSERT INTO `ingredients_details` VALUES (171, 16, 'Wolfberry', '1 handful');
INSERT INTO `ingredients_details` VALUES (172, 16, 'Dried chili peppers', '3 pieces');
INSERT INTO `ingredients_details` VALUES (173, 17, 'Lamb', '500g');
INSERT INTO `ingredients_details` VALUES (174, 17, 'Cumin seeds', '2 tablespoons');
INSERT INTO `ingredients_details` VALUES (175, 17, 'Sichuan peppercorns', '10 pieces');
INSERT INTO `ingredients_details` VALUES (176, 17, 'Chili powder', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (177, 17, 'Salt', 'To taste');
INSERT INTO `ingredients_details` VALUES (178, 17, 'Light soy sauce', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (179, 17, 'Cooking wine', '2 tablespoons');
INSERT INTO `ingredients_details` VALUES (180, 17, 'Cooking oil', '10g');
INSERT INTO `ingredients_details` VALUES (181, 17, 'Green bell pepper', '½ piece');
INSERT INTO `ingredients_details` VALUES (182, 17, 'Red bell pepper', '½ piece');
INSERT INTO `ingredients_details` VALUES (183, 17, 'Dried chili peppers', '2 pieces');
INSERT INTO `ingredients_details` VALUES (184, 17, 'Green Onion', '½ stalk');
INSERT INTO `ingredients_details` VALUES (185, 17, 'Ginger slices', '3 slices');
INSERT INTO `ingredients_details` VALUES (186, 17, 'Toasted white sesame seeds', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (187, 18, 'Beef ', '250g');
INSERT INTO `ingredients_details` VALUES (188, 18, 'Bean sprouts', 'As needed');
INSERT INTO `ingredients_details` VALUES (189, 18, 'Celery', '5 stalks');
INSERT INTO `ingredients_details` VALUES (190, 18, 'Chicken powder', '½ spoon');
INSERT INTO `ingredients_details` VALUES (191, 18, 'Baking soda', '½ spoon');
INSERT INTO `ingredients_details` VALUES (192, 18, 'Salt', '3 spoons');
INSERT INTO `ingredients_details` VALUES (193, 18, 'Scallion-ginger cooking wine', '1 spoon');
INSERT INTO `ingredients_details` VALUES (194, 18, 'White pepper powder', '½ spoon');
INSERT INTO `ingredients_details` VALUES (195, 18, 'Oyster sauce', '1 spoon');
INSERT INTO `ingredients_details` VALUES (196, 18, 'Starch', '1 spoon');
INSERT INTO `ingredients_details` VALUES (197, 18, 'Garlic', 'As needed');
INSERT INTO `ingredients_details` VALUES (198, 18, 'Ginger', 'As needed');
INSERT INTO `ingredients_details` VALUES (199, 18, 'Sichuan peppercorns', 'As needed');
INSERT INTO `ingredients_details` VALUES (200, 18, 'Dried chili peppers', 'As needed');
INSERT INTO `ingredients_details` VALUES (201, 18, 'Doubanjiang', 'As needed');
INSERT INTO `ingredients_details` VALUES (202, 19, 'Carp', '1');
INSERT INTO `ingredients_details` VALUES (203, 19, 'Sichuan peppercorns', '8 pieces');
INSERT INTO `ingredients_details` VALUES (204, 19, 'Light soy sauce', '4 tablespoons');
INSERT INTO `ingredients_details` VALUES (205, 19, 'Dark soy sauce', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (206, 19, 'Cooking wine', '4 tablespoons');
INSERT INTO `ingredients_details` VALUES (207, 19, 'Garlic', ' 5 cloves');
INSERT INTO `ingredients_details` VALUES (208, 19, 'Ginger', '3 slices');
INSERT INTO `ingredients_details` VALUES (209, 19, 'Salt', '2g');
INSERT INTO `ingredients_details` VALUES (210, 19, 'Sugar', '2g');
INSERT INTO `ingredients_details` VALUES (211, 19, 'Starch', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (212, 19, 'Green onion', '1 stalk');
INSERT INTO `ingredients_details` VALUES (213, 19, 'Cooking oil', '30g');
INSERT INTO `ingredients_details` VALUES (214, 19, 'Dried chili peppers', '3 pieces');
INSERT INTO `ingredients_details` VALUES (215, 20, 'Shrimp', '500g');
INSERT INTO `ingredients_details` VALUES (216, 20, 'Green onion', 'As needed');
INSERT INTO `ingredients_details` VALUES (217, 20, 'Ginger', 'A little');
INSERT INTO `ingredients_details` VALUES (218, 20, 'Garlic', '6 cloves');
INSERT INTO `ingredients_details` VALUES (219, 20, 'Light soy sauce', '2 tablespoons');
INSERT INTO `ingredients_details` VALUES (220, 20, 'Cooking wine', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (221, 20, 'Dark soy sauce', '½ tablespoon');
INSERT INTO `ingredients_details` VALUES (222, 20, 'Oyster sauce', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (223, 20, 'White vinegar', '½ tablespoon');
INSERT INTO `ingredients_details` VALUES (224, 20, 'Ketchup', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (225, 20, 'Sugar', '½ tablespoon');
INSERT INTO `ingredients_details` VALUES (226, 20, 'Water', '5 tablespoons');
INSERT INTO `ingredients_details` VALUES (227, 21, 'Eggs ', '3');
INSERT INTO `ingredients_details` VALUES (228, 21, 'Potato', '1');
INSERT INTO `ingredients_details` VALUES (229, 21, 'Carrot', '½');
INSERT INTO `ingredients_details` VALUES (230, 21, 'Black pepper', '1 spoon');
INSERT INTO `ingredients_details` VALUES (231, 21, 'Starch', '2 spoons');
INSERT INTO `ingredients_details` VALUES (232, 21, 'Salt', '1g');
INSERT INTO `ingredients_details` VALUES (233, 22, 'Perch', '1');
INSERT INTO `ingredients_details` VALUES (234, 22, 'Tofu', '100g');
INSERT INTO `ingredients_details` VALUES (235, 22, 'Small onion', '½ piece');
INSERT INTO `ingredients_details` VALUES (236, 22, 'small red chili', '1 piece');
INSERT INTO `ingredients_details` VALUES (237, 22, 'Ginger', '3 pieces');
INSERT INTO `ingredients_details` VALUES (238, 22, 'Garlic', '4 cloves');
INSERT INTO `ingredients_details` VALUES (239, 22, 'Green onion', '1 stalk');
INSERT INTO `ingredients_details` VALUES (240, 22, 'Light soy sauce', '2 tablespoons');
INSERT INTO `ingredients_details` VALUES (241, 22, 'Oyster sauce', '½ tablespoon');
INSERT INTO `ingredients_details` VALUES (242, 22, 'Salt', 'a pinch');
INSERT INTO `ingredients_details` VALUES (243, 22, 'Cooking wine', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (244, 22, 'White pepper powder', 'a pinch');
INSERT INTO `ingredients_details` VALUES (245, 22, 'Sichuan peppercorns', '8 pieces');
INSERT INTO `ingredients_details` VALUES (246, 23, 'Crabs', '10');
INSERT INTO `ingredients_details` VALUES (247, 23, 'Soy sauce', 'To taste');
INSERT INTO `ingredients_details` VALUES (248, 23, 'Vinegar', 'To taste');
INSERT INTO `ingredients_details` VALUES (249, 23, 'Minced ginger', 'To taste');
INSERT INTO `ingredients_details` VALUES (250, 23, 'Minced garlic', 'To taste');
INSERT INTO `ingredients_details` VALUES (251, 23, 'Sesame oil', 'A few drops');
INSERT INTO `ingredients_details` VALUES (252, 24, 'Black Fungus', '1 handful');
INSERT INTO `ingredients_details` VALUES (253, 24, 'Cucumber', '4 pieces');
INSERT INTO `ingredients_details` VALUES (254, 24, 'Salt', 'To taste');
INSERT INTO `ingredients_details` VALUES (255, 24, 'Garlic', '3 cloves');
INSERT INTO `ingredients_details` VALUES (256, 24, 'Small Chili Peppers', '2 pieces');
INSERT INTO `ingredients_details` VALUES (257, 24, 'Chili Powder', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (258, 24, 'Light Soy Sauce', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (259, 24, 'Vinegar', '2 tablespoons');
INSERT INTO `ingredients_details` VALUES (260, 24, 'Chicken Powder', 'A pinch');
INSERT INTO `ingredients_details` VALUES (261, 24, 'Sugar', 'A pinch');
INSERT INTO `ingredients_details` VALUES (262, 25, 'Chicken breast', '1 piece');
INSERT INTO `ingredients_details` VALUES (263, 25, 'Coriander', '1 bunch');
INSERT INTO `ingredients_details` VALUES (264, 25, 'Cucumber', '½ piece');
INSERT INTO `ingredients_details` VALUES (265, 25, 'Bird\'s eye chili', '2 pieces');
INSERT INTO `ingredients_details` VALUES (266, 25, 'Ginger', '3 slices');
INSERT INTO `ingredients_details` VALUES (267, 25, 'Garlic', 'To taste');
INSERT INTO `ingredients_details` VALUES (268, 25, 'Cooking wine', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (269, 25, 'Soy sauce', '2 tablespoons');
INSERT INTO `ingredients_details` VALUES (270, 25, 'Vinegar', '2 tablespoons');
INSERT INTO `ingredients_details` VALUES (271, 25, 'Oyster sauce', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (272, 25, 'Salt', 'To taste');
INSERT INTO `ingredients_details` VALUES (273, 25, 'Sugar', 'To taste');
INSERT INTO `ingredients_details` VALUES (274, 25, 'Chili powder', 'To taste');
INSERT INTO `ingredients_details` VALUES (275, 26, 'Lamb', '500g');
INSERT INTO `ingredients_details` VALUES (276, 26, 'Radish', '200g');
INSERT INTO `ingredients_details` VALUES (277, 26, 'Spring onion', '1 stalk');
INSERT INTO `ingredients_details` VALUES (278, 26, 'Ginger', '10g');
INSERT INTO `ingredients_details` VALUES (279, 26, 'Cooking wine', '15g');
INSERT INTO `ingredients_details` VALUES (280, 26, 'Coriander', '2 stalks');
INSERT INTO `ingredients_details` VALUES (281, 26, 'Sichuan peppercorns', '1g');
INSERT INTO `ingredients_details` VALUES (282, 26, 'Dried tangerine peel', '1 piece');
INSERT INTO `ingredients_details` VALUES (283, 26, 'Salt', '4g');
INSERT INTO `ingredients_details` VALUES (284, 27, 'Beancurd Sticks', '3');
INSERT INTO `ingredients_details` VALUES (285, 27, 'Black Fungus', '1 handful');
INSERT INTO `ingredients_details` VALUES (286, 27, 'Garlic', '4 cloves');
INSERT INTO `ingredients_details` VALUES (287, 27, 'Small chili peppers', '3 pieces');
INSERT INTO `ingredients_details` VALUES (288, 27, 'Red bell pepper', '1 piece');
INSERT INTO `ingredients_details` VALUES (289, 27, 'Salt', '1 teaspoon');
INSERT INTO `ingredients_details` VALUES (290, 27, 'Light soy sauce', '2 tablespoons');
INSERT INTO `ingredients_details` VALUES (291, 27, 'Vinegar', '2 tablespoons');
INSERT INTO `ingredients_details` VALUES (292, 27, 'Sichuan pepper oil', '10 drops');
INSERT INTO `ingredients_details` VALUES (293, 27, 'Sesame oil', '10 drops');
INSERT INTO `ingredients_details` VALUES (294, 27, 'Chili oil', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (295, 27, 'Sugar', '¼ teaspoon');
INSERT INTO `ingredients_details` VALUES (296, 27, 'Toasted white sesame seeds', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (297, 27, 'Cilantro', '3 sprigs');
INSERT INTO `ingredients_details` VALUES (298, 28, 'Lemon', '2 slices');
INSERT INTO `ingredients_details` VALUES (299, 28, 'Small chili peppers', '4 pieces');
INSERT INTO `ingredients_details` VALUES (300, 28, 'Coriander', 'Optional');
INSERT INTO `ingredients_details` VALUES (301, 28, 'Onion', '½ piece');
INSERT INTO `ingredients_details` VALUES (302, 28, 'Passion fruit', '1 piece');
INSERT INTO `ingredients_details` VALUES (303, 28, 'Garlic', '8 cloves');
INSERT INTO `ingredients_details` VALUES (304, 28, 'Soy sauce', '2 tablespoons');
INSERT INTO `ingredients_details` VALUES (305, 28, 'Oyster sauce', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (306, 28, 'Vinegar', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (307, 28, 'Lemon juice', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (308, 28, 'Sugar', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (309, 28, 'White sesame seeds', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (310, 28, 'Sesame oil', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (311, 29, 'Green onions', 'To taste');
INSERT INTO `ingredients_details` VALUES (312, 29, 'Minced garlic', '3 cloves');
INSERT INTO `ingredients_details` VALUES (313, 29, 'Cilantro', 'To taste');
INSERT INTO `ingredients_details` VALUES (314, 29, 'Light soy sauce', '2 tablespoons');
INSERT INTO `ingredients_details` VALUES (315, 29, 'Chili oil', 'To taste');
INSERT INTO `ingredients_details` VALUES (316, 29, 'Sesame oil', 'a few drops');
INSERT INTO `ingredients_details` VALUES (317, 29, 'Vinegar', '2 tablespoons');
INSERT INTO `ingredients_details` VALUES (318, 29, 'Fresh chili peppers', 'To taste');
INSERT INTO `ingredients_details` VALUES (319, 29, 'Silken tofu', '1 box');
INSERT INTO `ingredients_details` VALUES (320, 30, 'Kelp', 'As needed');
INSERT INTO `ingredients_details` VALUES (321, 30, 'Garlic', '5 cloves');
INSERT INTO `ingredients_details` VALUES (322, 30, 'Ginger', 'A little');
INSERT INTO `ingredients_details` VALUES (323, 30, 'Chili peppers', '3 pieces');
INSERT INTO `ingredients_details` VALUES (324, 30, 'Chili powder', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (325, 30, 'Sesame seeds', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (326, 30, 'Soy sauce', '2 tablespoons');
INSERT INTO `ingredients_details` VALUES (327, 30, 'Vinegar', '2 tablespoons');
INSERT INTO `ingredients_details` VALUES (328, 30, 'Salt', 'A pinch');
INSERT INTO `ingredients_details` VALUES (329, 30, 'Chicken powder', 'A pinch');
INSERT INTO `ingredients_details` VALUES (330, 30, 'Sugar', 'A pinch');
INSERT INTO `ingredients_details` VALUES (331, 31, 'Beef slices', '200g');
INSERT INTO `ingredients_details` VALUES (332, 31, 'Wood ear', '10 pieces');
INSERT INTO `ingredients_details` VALUES (333, 31, 'Small chili peppers ', ' 3 pieces');
INSERT INTO `ingredients_details` VALUES (334, 31, 'Chili powder', '2 tablespoons');
INSERT INTO `ingredients_details` VALUES (335, 31, 'White sesame seeds', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (336, 31, 'Soy sauce', '3 tablespoons');
INSERT INTO `ingredients_details` VALUES (337, 31, 'Oyster sauce', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (338, 31, 'Sichuan pepper oil', '100 ml');
INSERT INTO `ingredients_details` VALUES (339, 31, 'Garlic', '5 cloves');
INSERT INTO `ingredients_details` VALUES (340, 32, 'Noodles', '1 serving');
INSERT INTO `ingredients_details` VALUES (341, 32, 'Egg', '1');
INSERT INTO `ingredients_details` VALUES (342, 32, 'Soy sauce', '2 tablespoons');
INSERT INTO `ingredients_details` VALUES (343, 32, 'Sesame oil', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (344, 32, 'Chicken powder', 'A pinch');
INSERT INTO `ingredients_details` VALUES (345, 32, 'Salt', 'A pinch');
INSERT INTO `ingredients_details` VALUES (346, 32, 'Spring onions', '3 stalks');
INSERT INTO `ingredients_details` VALUES (347, 33, 'Hand-pulled noodles', 'As needed');
INSERT INTO `ingredients_details` VALUES (348, 33, 'Bok choy', '2 stalks');
INSERT INTO `ingredients_details` VALUES (349, 33, 'Green onion', '½ stalk');
INSERT INTO `ingredients_details` VALUES (350, 33, 'Garlic', '5 cloves');
INSERT INTO `ingredients_details` VALUES (351, 33, 'Vegetable oil', '1 large spoon');
INSERT INTO `ingredients_details` VALUES (352, 33, 'Light soy sauce', '4 tablespoons');
INSERT INTO `ingredients_details` VALUES (353, 33, 'Vinegar ', '2 tablespoons');
INSERT INTO `ingredients_details` VALUES (354, 33, 'Sugar', '1g');
INSERT INTO `ingredients_details` VALUES (355, 33, 'Sesame oil', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (356, 33, 'Sichuan Peppercorn Oil', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (357, 33, 'Chili powder', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (358, 34, 'Pork belly ', '500g');
INSERT INTO `ingredients_details` VALUES (359, 34, 'Dry yellow soybean paste', '3 tablespoons');
INSERT INTO `ingredients_details` VALUES (360, 34, 'Sweet bean paste', '3 tablespoons');
INSERT INTO `ingredients_details` VALUES (361, 34, 'Yellow soybean paste', '3 tablespoons');
INSERT INTO `ingredients_details` VALUES (362, 34, 'Star anise', '3 pieces');
INSERT INTO `ingredients_details` VALUES (363, 34, 'Cinnamon', '2 sticks');
INSERT INTO `ingredients_details` VALUES (364, 34, 'Bay leaves', '3 leaves');
INSERT INTO `ingredients_details` VALUES (365, 34, 'Sichuan peppercorns', 'A handful');
INSERT INTO `ingredients_details` VALUES (366, 34, 'Spring onion', '1 stalk');
INSERT INTO `ingredients_details` VALUES (367, 34, 'Ginger', '5 slices');
INSERT INTO `ingredients_details` VALUES (368, 34, 'Onion', '1/3 piece');
INSERT INTO `ingredients_details` VALUES (369, 34, 'Yellow wine', '7 tablespoons');
INSERT INTO `ingredients_details` VALUES (370, 34, 'Cooking wine', '2 tablespoons');
INSERT INTO `ingredients_details` VALUES (371, 34, 'Cucumber', '2 pieces');
INSERT INTO `ingredients_details` VALUES (372, 34, 'Summer radish', '1 piece');
INSERT INTO `ingredients_details` VALUES (373, 34, 'Noodles', '500g');
INSERT INTO `ingredients_details` VALUES (374, 35, 'Noodles', '500g');
INSERT INTO `ingredients_details` VALUES (375, 35, 'Shiitake mushrooms', '5 pieces');
INSERT INTO `ingredients_details` VALUES (376, 35, 'Baby bok choy', '1 bunch');
INSERT INTO `ingredients_details` VALUES (377, 35, 'Tomato', '½ piece');
INSERT INTO `ingredients_details` VALUES (378, 35, 'Oyster sauce', '2 tablespoons');
INSERT INTO `ingredients_details` VALUES (379, 35, 'Soy sauce', '2 tablespoons');
INSERT INTO `ingredients_details` VALUES (380, 35, 'Salt', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (381, 36, 'Beef chuck', '400g');
INSERT INTO `ingredients_details` VALUES (382, 36, 'Noodles', '300g');
INSERT INTO `ingredients_details` VALUES (383, 36, 'Baby bok choy', '3 pieces');
INSERT INTO `ingredients_details` VALUES (384, 36, 'Cilantro', 'A bunch');
INSERT INTO `ingredients_details` VALUES (385, 36, 'Green onion', '5g');
INSERT INTO `ingredients_details` VALUES (386, 36, 'Ginger', '1 piece');
INSERT INTO `ingredients_details` VALUES (387, 36, 'Garlic ', '3 cloves');
INSERT INTO `ingredients_details` VALUES (388, 36, 'Sichuan peppercorns', '2g');
INSERT INTO `ingredients_details` VALUES (389, 36, 'Star anise', '1 piece');
INSERT INTO `ingredients_details` VALUES (390, 36, 'Cinnamon', '1 piece');
INSERT INTO `ingredients_details` VALUES (391, 36, 'Bay leaf ', '1 piece');
INSERT INTO `ingredients_details` VALUES (392, 36, 'Rock sugar', 'As needed');
INSERT INTO `ingredients_details` VALUES (393, 36, 'Dark soy sauce', 'As needed');
INSERT INTO `ingredients_details` VALUES (394, 36, 'Salt', 'As needed');
INSERT INTO `ingredients_details` VALUES (395, 36, 'Cooking wine', 'As needed');
INSERT INTO `ingredients_details` VALUES (396, 36, 'Broad bean paste', '2 spoons');
INSERT INTO `ingredients_details` VALUES (397, 36, 'Sesame seeds', '5g');
INSERT INTO `ingredients_details` VALUES (398, 37, 'Noodles ', '500g');
INSERT INTO `ingredients_details` VALUES (399, 37, 'Block curry', '2 pieces');
INSERT INTO `ingredients_details` VALUES (400, 37, 'Dark soy sauce', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (401, 37, 'Chili oil', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (402, 37, 'Corn kernels', '3g');
INSERT INTO `ingredients_details` VALUES (403, 37, 'Baby bok choy', '1 bunch');
INSERT INTO `ingredients_details` VALUES (404, 37, 'Shrimp', '4 pieces');
INSERT INTO `ingredients_details` VALUES (405, 37, 'Boiled egg', '1');
INSERT INTO `ingredients_details` VALUES (406, 38, 'Noodles', '500g');
INSERT INTO `ingredients_details` VALUES (407, 38, 'Egg', '1');
INSERT INTO `ingredients_details` VALUES (408, 38, 'Shanghai bok choy', '3 pieces');
INSERT INTO `ingredients_details` VALUES (409, 38, 'Hot dog sausage', '50g');
INSERT INTO `ingredients_details` VALUES (410, 39, 'Eggs ', '2');
INSERT INTO `ingredients_details` VALUES (411, 39, 'Tomatoes', '2');
INSERT INTO `ingredients_details` VALUES (412, 39, 'Noodles ', '1 handful');
INSERT INTO `ingredients_details` VALUES (413, 39, 'Chopped green onions', 'a small amount');
INSERT INTO `ingredients_details` VALUES (414, 39, 'Salt', 'To taste');
INSERT INTO `ingredients_details` VALUES (415, 39, 'Chicken powder', 'To taste');
INSERT INTO `ingredients_details` VALUES (416, 39, 'White pepper powder', 'To taste');
INSERT INTO `ingredients_details` VALUES (417, 39, 'Sesame oil', 'To taste');
INSERT INTO `ingredients_details` VALUES (418, 40, 'Potato', '1');
INSERT INTO `ingredients_details` VALUES (419, 40, 'Ground meat', '250g');
INSERT INTO `ingredients_details` VALUES (420, 40, 'Carrot ', '½');
INSERT INTO `ingredients_details` VALUES (421, 40, 'Garlic', '1 clove');
INSERT INTO `ingredients_details` VALUES (422, 40, 'Soy sauce', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (423, 40, 'Salt', 'To taste');
INSERT INTO `ingredients_details` VALUES (424, 40, 'Oyster sauce', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (425, 40, 'Yellow bean paste', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (426, 40, 'Broad bean paste', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (427, 40, 'Cornstarch', 'As needed');
INSERT INTO `ingredients_details` VALUES (428, 41, 'Noodles', '500g');
INSERT INTO `ingredients_details` VALUES (429, 41, 'Lamb', '250g');
INSERT INTO `ingredients_details` VALUES (430, 41, 'Green onion', '1 stalk');
INSERT INTO `ingredients_details` VALUES (431, 41, 'Sichuan peppercorns', '15 pieces');
INSERT INTO `ingredients_details` VALUES (432, 41, 'Black fungus', '8 pieces');
INSERT INTO `ingredients_details` VALUES (433, 41, 'Salt', '½ tablespoon');
INSERT INTO `ingredients_details` VALUES (434, 41, 'Chicken powder', '½ tablespoon');
INSERT INTO `ingredients_details` VALUES (435, 41, 'White pepper powder', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (436, 41, 'Sesame oil', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (437, 41, 'Ginger', '2 slices');
INSERT INTO `ingredients_details` VALUES (438, 42, 'Egg', '1');
INSERT INTO `ingredients_details` VALUES (439, 42, 'Green onion', '1 stalk');
INSERT INTO `ingredients_details` VALUES (440, 42, 'Oyster sauce', '½ tablespoon');
INSERT INTO `ingredients_details` VALUES (441, 42, 'Salt ', 'To taste');
INSERT INTO `ingredients_details` VALUES (442, 42, 'Steamed rice', '1 bowl');
INSERT INTO `ingredients_details` VALUES (443, 42, 'Olive oil', 'To taste');
INSERT INTO `ingredients_details` VALUES (444, 42, 'Carrot', '½');
INSERT INTO `ingredients_details` VALUES (445, 42, 'Cucumber', '½');
INSERT INTO `ingredients_details` VALUES (446, 42, 'Tomato', '⅓');
INSERT INTO `ingredients_details` VALUES (447, 42, 'Soy sauce', 'a little');
INSERT INTO `ingredients_details` VALUES (448, 42, 'Sichuan peppercorns', 'To taste');
INSERT INTO `ingredients_details` VALUES (449, 42, 'Star anise', 'To taste');
INSERT INTO `ingredients_details` VALUES (450, 43, 'Rice ', '1 bowl');
INSERT INTO `ingredients_details` VALUES (451, 43, 'Cuttlefish', '100g');
INSERT INTO `ingredients_details` VALUES (452, 43, 'Prawns', '140g');
INSERT INTO `ingredients_details` VALUES (453, 43, 'Bell peppers', '100g');
INSERT INTO `ingredients_details` VALUES (454, 43, 'Light soy sauce', '1 teaspoon');
INSERT INTO `ingredients_details` VALUES (455, 43, 'White pepper powder', '½ teaspoon');
INSERT INTO `ingredients_details` VALUES (456, 43, 'Cooking wine', '1 teaspoon');
INSERT INTO `ingredients_details` VALUES (457, 43, 'Salt', 'A tiny bit');
INSERT INTO `ingredients_details` VALUES (458, 43, 'Green onion', '3 stalks');
INSERT INTO `ingredients_details` VALUES (459, 44, 'Beef ', '100g');
INSERT INTO `ingredients_details` VALUES (460, 44, 'Baby Bok choy', '4 pieces');
INSERT INTO `ingredients_details` VALUES (461, 44, 'Onion ', 'half');
INSERT INTO `ingredients_details` VALUES (462, 44, 'Rice', '1 bowl');
INSERT INTO `ingredients_details` VALUES (463, 44, 'Eggs', '2');
INSERT INTO `ingredients_details` VALUES (464, 45, 'Eggplant', '1 piece');
INSERT INTO `ingredients_details` VALUES (465, 45, 'small chili pepper', '2 pieces');
INSERT INTO `ingredients_details` VALUES (466, 45, 'Green onion', '10g');
INSERT INTO `ingredients_details` VALUES (467, 45, 'Garlic', '10g');
INSERT INTO `ingredients_details` VALUES (468, 45, 'Starch', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (469, 45, 'Salt ', '1 teaspoon');
INSERT INTO `ingredients_details` VALUES (470, 45, 'Light soy sauce', '2 tablespoons');
INSERT INTO `ingredients_details` VALUES (471, 45, 'Vinegar', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (472, 45, 'Oyster sauce ', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (473, 45, 'White sugar', '1 teaspoon');
INSERT INTO `ingredients_details` VALUES (474, 45, 'Doubanjiang', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (475, 45, 'Water ', '1 small bowl');
INSERT INTO `ingredients_details` VALUES (476, 45, 'Cooking Oil', 'As needed');
INSERT INTO `ingredients_details` VALUES (477, 45, 'Rice', 'As needed');
INSERT INTO `ingredients_details` VALUES (478, 46, 'Butter ', '50g');
INSERT INTO `ingredients_details` VALUES (479, 46, 'Cake flour', '100g');
INSERT INTO `ingredients_details` VALUES (480, 46, 'Egg', '20g');
INSERT INTO `ingredients_details` VALUES (481, 46, 'Caster sugar', '25g');
INSERT INTO `ingredients_details` VALUES (482, 46, 'Red bean paste', '100g');
INSERT INTO `ingredients_details` VALUES (483, 47, 'Mochi premix powder', '200g');
INSERT INTO `ingredients_details` VALUES (484, 47, 'Egg liquid', '60g');
INSERT INTO `ingredients_details` VALUES (485, 47, 'Milk', '450g');
INSERT INTO `ingredients_details` VALUES (486, 47, 'Salt', '2g');
INSERT INTO `ingredients_details` VALUES (487, 47, 'Butter', '30g');
INSERT INTO `ingredients_details` VALUES (488, 47, 'Black sesame seeds', '13g');
INSERT INTO `ingredients_details` VALUES (489, 47, 'Egg yolks', '4');
INSERT INTO `ingredients_details` VALUES (490, 47, 'Whipping cream', '300g');
INSERT INTO `ingredients_details` VALUES (491, 47, 'Caster sugar', '60g');
INSERT INTO `ingredients_details` VALUES (492, 47, 'Gelatine sheets', '12g');
INSERT INTO `ingredients_details` VALUES (493, 48, 'Red dates ', '300g');
INSERT INTO `ingredients_details` VALUES (494, 48, 'Glutinous rice flour', '250g');
INSERT INTO `ingredients_details` VALUES (495, 48, 'Milk', '200g');
INSERT INTO `ingredients_details` VALUES (496, 49, 'Mango pulp', '400g');
INSERT INTO `ingredients_details` VALUES (497, 49, 'Heavy cream', '100g');
INSERT INTO `ingredients_details` VALUES (498, 49, 'Sugar ', '40g');
INSERT INTO `ingredients_details` VALUES (499, 49, 'Milk', '200g');
INSERT INTO `ingredients_details` VALUES (500, 49, 'Gelatin sheets', '10g');
INSERT INTO `ingredients_details` VALUES (501, 50, 'All-purpose flour', '250g');
INSERT INTO `ingredients_details` VALUES (502, 50, 'Sugar ', '25g');
INSERT INTO `ingredients_details` VALUES (503, 50, 'Lard', '250g');
INSERT INTO `ingredients_details` VALUES (504, 50, 'Boiling water', '100g');
INSERT INTO `ingredients_details` VALUES (505, 50, 'Cake flour', '250g');
INSERT INTO `ingredients_details` VALUES (506, 50, 'Rose jam', '450g');
INSERT INTO `ingredients_details` VALUES (507, 50, 'Glutinous rice flour', '40g');
INSERT INTO `ingredients_details` VALUES (508, 51, 'Rice flour', '120g');
INSERT INTO `ingredients_details` VALUES (509, 51, 'Glutinous rice flour', '300g');
INSERT INTO `ingredients_details` VALUES (510, 51, 'Sugar', '40g');
INSERT INTO `ingredients_details` VALUES (511, 51, 'Red bean paste', 'Red bean pasteg');
INSERT INTO `ingredients_details` VALUES (512, 51, 'Dried osmanthus flowers', '10g');
INSERT INTO `ingredients_details` VALUES (513, 52, 'Red Dates', '180g');
INSERT INTO `ingredients_details` VALUES (514, 52, 'Eggs', '8 pieces');
INSERT INTO `ingredients_details` VALUES (515, 52, 'Milk', '240g');
INSERT INTO `ingredients_details` VALUES (516, 52, 'Brown sugar', '160g');
INSERT INTO `ingredients_details` VALUES (517, 52, 'Cake flour', '200g');
INSERT INTO `ingredients_details` VALUES (518, 52, 'Baking powder', '8g');
INSERT INTO `ingredients_details` VALUES (519, 52, 'Corn oil', '60g');
INSERT INTO `ingredients_details` VALUES (520, 52, 'White sesame seeds', '5g');
INSERT INTO `ingredients_details` VALUES (521, 53, 'Laver', 'A handful');
INSERT INTO `ingredients_details` VALUES (522, 53, 'White pepper powder', 'A pinch');
INSERT INTO `ingredients_details` VALUES (523, 53, 'Egg', '1');
INSERT INTO `ingredients_details` VALUES (524, 53, 'Sesame oil', 'A few drops');
INSERT INTO `ingredients_details` VALUES (525, 53, 'Coriander', '1 sprig');
INSERT INTO `ingredients_details` VALUES (526, 53, 'Soy sauce', 'A few drops');
INSERT INTO `ingredients_details` VALUES (527, 54, 'Beef tenderloin', '150g');
INSERT INTO `ingredients_details` VALUES (528, 54, 'Cornstarch', '1 teaspoon');
INSERT INTO `ingredients_details` VALUES (529, 54, 'Cooking Oil', '20g');
INSERT INTO `ingredients_details` VALUES (530, 54, 'Ginger', '1 slice');
INSERT INTO `ingredients_details` VALUES (531, 54, 'Yellow wine', '10g');
INSERT INTO `ingredients_details` VALUES (532, 54, 'King oyster mushrooms', '80g');
INSERT INTO `ingredients_details` VALUES (533, 54, 'Silken tofu ', '150g');
INSERT INTO `ingredients_details` VALUES (534, 54, 'Chicken broth', '600g');
INSERT INTO `ingredients_details` VALUES (535, 54, 'Cornstarch', 'As needed');
INSERT INTO `ingredients_details` VALUES (536, 54, 'Water', 'As needed');
INSERT INTO `ingredients_details` VALUES (537, 54, 'Egg whites', '2');
INSERT INTO `ingredients_details` VALUES (538, 54, 'Spring onion', '10g');
INSERT INTO `ingredients_details` VALUES (539, 54, 'Coriander', '10g');
INSERT INTO `ingredients_details` VALUES (540, 54, 'Salt', '½ teaspoon');
INSERT INTO `ingredients_details` VALUES (541, 54, 'White pepper powder', 'As needed');
INSERT INTO `ingredients_details` VALUES (542, 55, 'Spinach', '1  bunch');
INSERT INTO `ingredients_details` VALUES (543, 55, 'Eggs', '2');
INSERT INTO `ingredients_details` VALUES (544, 56, 'Winter melon', '60g');
INSERT INTO `ingredients_details` VALUES (545, 56, 'Coriander', '2 sprigs');
INSERT INTO `ingredients_details` VALUES (546, 56, 'Wolfberry', '6 pieces');
INSERT INTO `ingredients_details` VALUES (547, 56, 'Salt', '5g');
INSERT INTO `ingredients_details` VALUES (548, 56, 'White pepper powder', '5g');
INSERT INTO `ingredients_details` VALUES (549, 56, 'Ground pork', '400g');
INSERT INTO `ingredients_details` VALUES (550, 56, 'Chinese yam', '1 root');
INSERT INTO `ingredients_details` VALUES (551, 56, 'Sugar', '2g');
INSERT INTO `ingredients_details` VALUES (552, 56, 'Oyster sauce', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (553, 56, 'Cornstarch', '2 tablespoons');
INSERT INTO `ingredients_details` VALUES (554, 57, 'Pork bones', '800 g');
INSERT INTO `ingredients_details` VALUES (555, 57, 'Ginger', '4 pieces');
INSERT INTO `ingredients_details` VALUES (556, 57, 'Green onions', '2 stalks');
INSERT INTO `ingredients_details` VALUES (557, 58, 'Salt', 'To taste');
INSERT INTO `ingredients_details` VALUES (558, 58, 'Tofu', '½ block');
INSERT INTO `ingredients_details` VALUES (559, 58, 'Pepper powder', 'To taste');
INSERT INTO `ingredients_details` VALUES (560, 58, 'Eggs', '2');
INSERT INTO `ingredients_details` VALUES (561, 58, 'Seafood powder', 'As needed');
INSERT INTO `ingredients_details` VALUES (562, 58, 'Chopped green onions', 'As needed');
INSERT INTO `ingredients_details` VALUES (563, 58, 'Enoki mushrooms', 'As needed');
INSERT INTO `ingredients_details` VALUES (564, 58, 'Coriander', 'To taste');
INSERT INTO `ingredients_details` VALUES (565, 59, 'Chicken', 'Half');
INSERT INTO `ingredients_details` VALUES (566, 59, 'Ginger', 'A few slices');
INSERT INTO `ingredients_details` VALUES (567, 59, 'Wolfberry', 'A handful');
INSERT INTO `ingredients_details` VALUES (568, 59, 'Spring onion', 'A few stalks');
INSERT INTO `ingredients_details` VALUES (569, 59, 'Ginseng', 'As needed');
INSERT INTO `ingredients_details` VALUES (570, 59, 'Cooking wine', 'As needed');
INSERT INTO `ingredients_details` VALUES (571, 59, 'Salt', 'To taste');
INSERT INTO `ingredients_details` VALUES (572, 59, 'Red dates', '3 pieces');
INSERT INTO `ingredients_details` VALUES (573, 60, 'Green grapes', '10 pieces');
INSERT INTO `ingredients_details` VALUES (574, 60, 'Lemon', '1/2');
INSERT INTO `ingredients_details` VALUES (575, 60, 'Ice cubes', 'As needed');
INSERT INTO `ingredients_details` VALUES (576, 60, 'Sparkling water', '200ml');
INSERT INTO `ingredients_details` VALUES (577, 60, 'Cold brew coffee', '50ml');
INSERT INTO `ingredients_details` VALUES (578, 61, 'Matcha powder', '2 teaspoons');
INSERT INTO `ingredients_details` VALUES (579, 61, 'Hot water', '2 tablespoons');
INSERT INTO `ingredients_details` VALUES (580, 61, 'Warm water', '1 cup');
INSERT INTO `ingredients_details` VALUES (581, 61, 'Ice', 'As needed');
INSERT INTO `ingredients_details` VALUES (582, 61, 'Milk', '½ cup');
INSERT INTO `ingredients_details` VALUES (583, 62, 'Black tea leaves', '18g');
INSERT INTO `ingredients_details` VALUES (584, 62, 'Milk', '500g');
INSERT INTO `ingredients_details` VALUES (585, 62, 'Water', '400g');
INSERT INTO `ingredients_details` VALUES (586, 62, 'Sugar', '10g');
INSERT INTO `ingredients_details` VALUES (587, 63, 'coconut cream', '100g');
INSERT INTO `ingredients_details` VALUES (588, 63, 'Cold brew', 'To taste');
INSERT INTO `ingredients_details` VALUES (589, 63, 'Glass cup', '120ml');
INSERT INTO `ingredients_details` VALUES (590, 64, 'Black coffee', '80ml');
INSERT INTO `ingredients_details` VALUES (591, 64, 'Ice cubes', 'As needed');
INSERT INTO `ingredients_details` VALUES (592, 64, 'Dark chocolate', 'As neded');
INSERT INTO `ingredients_details` VALUES (593, 64, 'Heavy cream', 'As needed');
INSERT INTO `ingredients_details` VALUES (594, 64, 'Chocolate syrup', '20g');
INSERT INTO `ingredients_details` VALUES (595, 65, 'Low-gluten flour', '95g');
INSERT INTO `ingredients_details` VALUES (596, 65, 'Cocoa powder', '15g');
INSERT INTO `ingredients_details` VALUES (597, 65, 'Baking powder', '3g');
INSERT INTO `ingredients_details` VALUES (598, 65, 'Sugar', '5g');
INSERT INTO `ingredients_details` VALUES (599, 65, 'Vegetable oil', '50g');
INSERT INTO `ingredients_details` VALUES (600, 65, 'Milk ', '90g');
INSERT INTO `ingredients_details` VALUES (601, 65, 'Egg', '1');
INSERT INTO `ingredients_details` VALUES (602, 65, 'Chocolate chips', '30g');
INSERT INTO `ingredients_details` VALUES (603, 66, 'Low-gluten flour', '80g');
INSERT INTO `ingredients_details` VALUES (604, 66, 'Vegetable oil', '28g');
INSERT INTO `ingredients_details` VALUES (605, 66, 'Eggs', '2');
INSERT INTO `ingredients_details` VALUES (606, 66, 'Granulated sugar', '40g');
INSERT INTO `ingredients_details` VALUES (607, 66, 'Honey', '35g');
INSERT INTO `ingredients_details` VALUES (608, 67, 'Egg yolk', '48g');
INSERT INTO `ingredients_details` VALUES (609, 67, 'Warm water', '48g');
INSERT INTO `ingredients_details` VALUES (610, 67, 'Corn oil', '30g');
INSERT INTO `ingredients_details` VALUES (611, 67, 'Cocoa powder', '12g');
INSERT INTO `ingredients_details` VALUES (612, 67, 'Egg white', '110g');
INSERT INTO `ingredients_details` VALUES (613, 67, 'Lemon juice', 'A few drops');
INSERT INTO `ingredients_details` VALUES (614, 67, 'Milk chocolate', '100g');
INSERT INTO `ingredients_details` VALUES (615, 67, 'Gelatin ', '2g');
INSERT INTO `ingredients_details` VALUES (616, 67, 'Heavy cream', '320g');
INSERT INTO `ingredients_details` VALUES (617, 67, 'Cocoa butter', '10g');
INSERT INTO `ingredients_details` VALUES (618, 67, 'Crushed hazelnuts', '10g');
INSERT INTO `ingredients_details` VALUES (619, 68, 'Corn oil', '40g');
INSERT INTO `ingredients_details` VALUES (620, 68, 'Milk', '40g');
INSERT INTO `ingredients_details` VALUES (621, 68, 'Cake flour', '55g');
INSERT INTO `ingredients_details` VALUES (622, 68, 'Eggs', '4');
INSERT INTO `ingredients_details` VALUES (623, 68, 'Granulated sugar', '40g');
INSERT INTO `ingredients_details` VALUES (624, 68, 'Lemon juice', '4 drops');
INSERT INTO `ingredients_details` VALUES (625, 68, 'Heavy cream', '150g');
INSERT INTO `ingredients_details` VALUES (626, 68, 'Butter', '50g');
INSERT INTO `ingredients_details` VALUES (627, 68, 'Sea Salt', '1g');
INSERT INTO `ingredients_details` VALUES (628, 68, 'Almond slices', 'As needed');
INSERT INTO `ingredients_details` VALUES (629, 68, 'Powdered milk', '5g');
INSERT INTO `ingredients_details` VALUES (630, 69, 'Water ', '20g');
INSERT INTO `ingredients_details` VALUES (631, 69, 'White sugar', '45g');
INSERT INTO `ingredients_details` VALUES (632, 69, 'Boiling water', '20g');
INSERT INTO `ingredients_details` VALUES (633, 69, 'Whole eggs', '2');
INSERT INTO `ingredients_details` VALUES (634, 69, 'Egg yolk', '1');
INSERT INTO `ingredients_details` VALUES (635, 69, 'Granulated sugar', '25g');
INSERT INTO `ingredients_details` VALUES (636, 69, 'Heavy cream', '80g');
INSERT INTO `ingredients_details` VALUES (637, 69, 'Milk ', '130g');
INSERT INTO `ingredients_details` VALUES (638, 69, 'Corn oil', '20g');
INSERT INTO `ingredients_details` VALUES (639, 69, 'Cake flour', '30g');
INSERT INTO `ingredients_details` VALUES (640, 69, 'Cocoa powder', '5g');
INSERT INTO `ingredients_details` VALUES (641, 69, 'Eggs ', '2');
INSERT INTO `ingredients_details` VALUES (642, 69, 'Egg white', '1');
INSERT INTO `ingredients_details` VALUES (643, 69, 'Lemon juice', 'A few drops');
INSERT INTO `ingredients_details` VALUES (644, 69, 'Granulated sugar', '25g');
INSERT INTO `ingredients_details` VALUES (645, 70, '6-inch round cake mold', '1');
INSERT INTO `ingredients_details` VALUES (646, 70, 'Cream cheese', '220g');
INSERT INTO `ingredients_details` VALUES (647, 70, 'Sugar ', '50g');
INSERT INTO `ingredients_details` VALUES (648, 70, 'Cornstarch', '8g');
INSERT INTO `ingredients_details` VALUES (649, 70, 'Eggs', '3 pieces');
INSERT INTO `ingredients_details` VALUES (650, 70, 'Heavy cream', '140g');
INSERT INTO `ingredients_details` VALUES (651, 70, 'Egg yolks', '2 pieces');
INSERT INTO `ingredients_details` VALUES (652, 70, 'Heavy cream', '300g');
INSERT INTO `ingredients_details` VALUES (653, 70, 'Sugar', '20g');
INSERT INTO `ingredients_details` VALUES (654, 70, 'Dark Chocolate', '180g');
INSERT INTO `ingredients_details` VALUES (655, 71, 'Eggs ', '5');
INSERT INTO `ingredients_details` VALUES (656, 71, 'Corn Oil', '40g');
INSERT INTO `ingredients_details` VALUES (657, 71, 'Granulated sugar', '60g');
INSERT INTO `ingredients_details` VALUES (658, 71, 'Cake flour', '70g');
INSERT INTO `ingredients_details` VALUES (659, 71, 'Heavy cream', '250g');
INSERT INTO `ingredients_details` VALUES (660, 71, 'Powdered sugar', '15g');
INSERT INTO `ingredients_details` VALUES (661, 72, 'Cream cheese', '100g');
INSERT INTO `ingredients_details` VALUES (662, 72, 'Butter', '40g');
INSERT INTO `ingredients_details` VALUES (663, 72, 'Milk', '100g');
INSERT INTO `ingredients_details` VALUES (664, 72, 'Eggs', '2');
INSERT INTO `ingredients_details` VALUES (665, 72, 'Lemon Juice', '1 teaspoon');
INSERT INTO `ingredients_details` VALUES (666, 72, 'Cornstarch', '20g');
INSERT INTO `ingredients_details` VALUES (667, 72, 'Granulated sugar', '45g');
INSERT INTO `ingredients_details` VALUES (668, 73, 'Egg yolk', '65g');
INSERT INTO `ingredients_details` VALUES (669, 73, 'Cake flour', '54g');
INSERT INTO `ingredients_details` VALUES (670, 73, 'Matcha powder', '6g');
INSERT INTO `ingredients_details` VALUES (671, 73, 'Vegetable oil', '36g');
INSERT INTO `ingredients_details` VALUES (672, 73, 'Warm water', '60g');
INSERT INTO `ingredients_details` VALUES (673, 73, 'Egg white', '125g');
INSERT INTO `ingredients_details` VALUES (674, 73, 'Lemon juice', '5g');
INSERT INTO `ingredients_details` VALUES (675, 73, 'Granulated sugar', '50g');
INSERT INTO `ingredients_details` VALUES (676, 73, 'Cornstarch', '6g');
INSERT INTO `ingredients_details` VALUES (677, 74, 'Oxtail ', '500g');
INSERT INTO `ingredients_details` VALUES (678, 74, 'Tomatoes', '2');
INSERT INTO `ingredients_details` VALUES (679, 74, 'Onion', '½ piece');
INSERT INTO `ingredients_details` VALUES (680, 74, 'Carrot', '1');
INSERT INTO `ingredients_details` VALUES (681, 74, 'Celery', '2 stalks');
INSERT INTO `ingredients_details` VALUES (682, 74, 'Red wine', '1 cup');
INSERT INTO `ingredients_details` VALUES (683, 74, 'Ginger', '4 slices');
INSERT INTO `ingredients_details` VALUES (684, 74, 'Bay leaves', '3');
INSERT INTO `ingredients_details` VALUES (685, 74, 'Salt', '5g');
INSERT INTO `ingredients_details` VALUES (686, 74, 'Black pepper', '1 teaspoon');
INSERT INTO `ingredients_details` VALUES (687, 74, 'Thyme', '2 sprigs');
INSERT INTO `ingredients_details` VALUES (688, 75, 'Unsalted butter', '60ml');
INSERT INTO `ingredients_details` VALUES (689, 75, 'Olive oil', '15ml');
INSERT INTO `ingredients_details` VALUES (690, 75, 'Onion', 'Half');
INSERT INTO `ingredients_details` VALUES (691, 75, 'Cauliflower', 'Half');
INSERT INTO `ingredients_details` VALUES (692, 75, 'Mushrooms ', '500g');
INSERT INTO `ingredients_details` VALUES (693, 75, 'Broth', '2 tablespoons');
INSERT INTO `ingredients_details` VALUES (694, 75, 'Parsley', '2 tablespoons');
INSERT INTO `ingredients_details` VALUES (695, 75, 'Thyme', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (696, 75, 'Black pepper', 'A pinch');
INSERT INTO `ingredients_details` VALUES (697, 76, 'Silken tofu', '½ box');
INSERT INTO `ingredients_details` VALUES (698, 76, 'Korean chili paste', '2 tablespoons');
INSERT INTO `ingredients_details` VALUES (699, 76, 'Kimchi', '40g');
INSERT INTO `ingredients_details` VALUES (700, 76, 'Light soy sauce', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (701, 76, 'Green pepper', '½');
INSERT INTO `ingredients_details` VALUES (702, 76, 'Garlic', '1 clove');
INSERT INTO `ingredients_details` VALUES (703, 76, 'Onion', '½');
INSERT INTO `ingredients_details` VALUES (704, 76, 'Bean sprouts', '1 handful');
INSERT INTO `ingredients_details` VALUES (705, 77, 'Rice', '1 bowl');
INSERT INTO `ingredients_details` VALUES (706, 77, 'Egg', '1');
INSERT INTO `ingredients_details` VALUES (707, 77, 'Shiitake mushroom', '1');
INSERT INTO `ingredients_details` VALUES (708, 77, 'Zucchini', '5 Slices');
INSERT INTO `ingredients_details` VALUES (709, 77, 'Spinach', '5 leaves');
INSERT INTO `ingredients_details` VALUES (710, 77, 'Bean sprouts', 'Half a handful');
INSERT INTO `ingredients_details` VALUES (711, 77, 'Tomato ', '1');
INSERT INTO `ingredients_details` VALUES (712, 77, 'Minced meat', '2 tablespoons');
INSERT INTO `ingredients_details` VALUES (713, 77, 'Carrot', '5 slices');
INSERT INTO `ingredients_details` VALUES (714, 77, 'Soy sauce', '2 tablespoons');
INSERT INTO `ingredients_details` VALUES (715, 77, 'Sugar', '5g');
INSERT INTO `ingredients_details` VALUES (716, 77, 'Sesame oil', '10 drops');
INSERT INTO `ingredients_details` VALUES (717, 78, 'Shrimp', '20 pieces');
INSERT INTO `ingredients_details` VALUES (718, 78, 'Smoked paprika', '1 teaspoon');
INSERT INTO `ingredients_details` VALUES (719, 78, 'Garlic powder', '1 teaspoon');
INSERT INTO `ingredients_details` VALUES (720, 78, 'White pepper powder', '1 teaspoon');
INSERT INTO `ingredients_details` VALUES (721, 78, 'Tomato paste', '1 teaspoon');
INSERT INTO `ingredients_details` VALUES (722, 78, 'Sea salt', 'A pinch');
INSERT INTO `ingredients_details` VALUES (723, 78, 'Garlic ', '5 cloves');
INSERT INTO `ingredients_details` VALUES (724, 78, 'Olive oil', '5 tablespoons');
INSERT INTO `ingredients_details` VALUES (725, 78, 'Chopped parsley', ' pinch');
INSERT INTO `ingredients_details` VALUES (726, 78, 'Cracked black pepper', 'A pinch');
INSERT INTO `ingredients_details` VALUES (727, 79, 'Drumsticks ', '500g');
INSERT INTO `ingredients_details` VALUES (728, 79, 'Button mushrooms', '150g');
INSERT INTO `ingredients_details` VALUES (729, 79, 'White onion', '½');
INSERT INTO `ingredients_details` VALUES (730, 79, 'Garlic', '3 cloves');
INSERT INTO `ingredients_details` VALUES (731, 79, 'Chicken broth', '200ml');
INSERT INTO `ingredients_details` VALUES (732, 79, 'Heavy cream', '200ml');
INSERT INTO `ingredients_details` VALUES (733, 79, 'Salt', 'To taste');
INSERT INTO `ingredients_details` VALUES (734, 79, 'Freshly ground black pepper', 'To taste');
INSERT INTO `ingredients_details` VALUES (735, 79, 'Olive oil', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (736, 79, 'Herbs for garnish', 'To taste');
INSERT INTO `ingredients_details` VALUES (737, 80, 'Boneless chicken thigh', '1');
INSERT INTO `ingredients_details` VALUES (738, 80, 'Small potatoes', '2');
INSERT INTO `ingredients_details` VALUES (739, 80, 'Rosemary', '3 sprigs');
INSERT INTO `ingredients_details` VALUES (740, 80, 'White wine', '50ml');
INSERT INTO `ingredients_details` VALUES (741, 80, 'Black pepper ', '½ teaspoon');
INSERT INTO `ingredients_details` VALUES (742, 80, 'White pepper', '1 teaspoon');
INSERT INTO `ingredients_details` VALUES (743, 80, 'Salt', 'To taste');
INSERT INTO `ingredients_details` VALUES (744, 80, 'Garlic', '3 cloves');
INSERT INTO `ingredients_details` VALUES (745, 80, 'Olive oil', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (746, 81, 'Grilled eel', '2 pieces');
INSERT INTO `ingredients_details` VALUES (747, 81, 'Cooking wine', '100ml');
INSERT INTO `ingredients_details` VALUES (748, 81, 'Oolong tea', '1 bottle');
INSERT INTO `ingredients_details` VALUES (749, 82, 'kabayaki sauce', 'As needed');
INSERT INTO `ingredients_details` VALUES (750, 82, 'Steamed rice', '1 bowl');
INSERT INTO `ingredients_details` VALUES (751, 82, 'Salmon', '2 pieces');
INSERT INTO `ingredients_details` VALUES (752, 82, 'Spinach', '3 handfuls');
INSERT INTO `ingredients_details` VALUES (753, 82, 'Cherry tomatoes', '10');
INSERT INTO `ingredients_details` VALUES (754, 82, 'Heavy cream', '200ml');
INSERT INTO `ingredients_details` VALUES (755, 82, 'Onion', '¼ piece');
INSERT INTO `ingredients_details` VALUES (756, 82, 'Garlic', '3 cloves');
INSERT INTO `ingredients_details` VALUES (757, 82, 'Black pepper', 'A pinch');
INSERT INTO `ingredients_details` VALUES (758, 82, 'Salt', 'A pinch');
INSERT INTO `ingredients_details` VALUES (759, 82, 'Olive oil', '30ml');
INSERT INTO `ingredients_details` VALUES (760, 82, 'White wine ', '30ml');
INSERT INTO `ingredients_details` VALUES (761, 83, 'Mussels', '2 pounds');
INSERT INTO `ingredients_details` VALUES (762, 83, 'White wine', '200ml');
INSERT INTO `ingredients_details` VALUES (763, 83, 'Onion', '1');
INSERT INTO `ingredients_details` VALUES (764, 83, 'Parsley', '1 bunch');
INSERT INTO `ingredients_details` VALUES (765, 83, 'Garlic', '4 cloves');
INSERT INTO `ingredients_details` VALUES (766, 83, 'Butter', '15g');
INSERT INTO `ingredients_details` VALUES (767, 83, 'Cream', '20g');
INSERT INTO `ingredients_details` VALUES (768, 83, 'Olive oil', '20g');
INSERT INTO `ingredients_details` VALUES (769, 83, 'Tomato', '1');
INSERT INTO `ingredients_details` VALUES (770, 84, 'Seafood seasoning ', '6g');
INSERT INTO `ingredients_details` VALUES (771, 84, 'Shrimp', '200g');
INSERT INTO `ingredients_details` VALUES (772, 84, 'Button mushrooms', '100g');
INSERT INTO `ingredients_details` VALUES (773, 84, 'Butter', '15g');
INSERT INTO `ingredients_details` VALUES (774, 84, 'Lemon', '1/2');
INSERT INTO `ingredients_details` VALUES (775, 84, 'Dried parsley flakes', 'A pinch');
INSERT INTO `ingredients_details` VALUES (776, 85, 'Potatoes', '1kg');
INSERT INTO `ingredients_details` VALUES (777, 85, 'Salt', '5g');
INSERT INTO `ingredients_details` VALUES (778, 85, 'Black paper', '2g');
INSERT INTO `ingredients_details` VALUES (779, 85, 'Butter', '40g');
INSERT INTO `ingredients_details` VALUES (780, 85, 'Vegetable oil', '30g');
INSERT INTO `ingredients_details` VALUES (781, 85, 'Onion', '1 piece');
INSERT INTO `ingredients_details` VALUES (782, 85, 'Ground meat', '300g');
INSERT INTO `ingredients_details` VALUES (783, 85, 'Flour', '200g');
INSERT INTO `ingredients_details` VALUES (784, 85, 'Eggs', '2 pieces');
INSERT INTO `ingredients_details` VALUES (785, 85, 'Breadcrumbs', '200g');
INSERT INTO `ingredients_details` VALUES (786, 85, 'Frying oil', '500g');
INSERT INTO `ingredients_details` VALUES (787, 86, 'Chicken wings ', '4 pieces');
INSERT INTO `ingredients_details` VALUES (788, 86, 'Orleans-style chicken seasoning', '20g');
INSERT INTO `ingredients_details` VALUES (789, 86, 'Toothpick ', '1');
INSERT INTO `ingredients_details` VALUES (790, 86, 'White sesame seeds', '1g');
INSERT INTO `ingredients_details` VALUES (791, 87, 'Lamb tenderloin', '500g');
INSERT INTO `ingredients_details` VALUES (792, 87, 'Onion', '200g');
INSERT INTO `ingredients_details` VALUES (793, 87, 'Salt', 'To taste');
INSERT INTO `ingredients_details` VALUES (794, 87, 'Black pepper', 'To taste');
INSERT INTO `ingredients_details` VALUES (795, 87, 'Cumin ', 'To taste');
INSERT INTO `ingredients_details` VALUES (796, 87, 'Chili powder', 'To taste');
INSERT INTO `ingredients_details` VALUES (797, 88, 'Chicken Drumstick ', '1 pack');
INSERT INTO `ingredients_details` VALUES (798, 88, 'Mexican tortillas', '1 bag');
INSERT INTO `ingredients_details` VALUES (799, 88, 'Cucumber slices', 'As needed');
INSERT INTO `ingredients_details` VALUES (800, 88, 'Lettuce', 'As needed');
INSERT INTO `ingredients_details` VALUES (801, 88, 'Water', 'As needed');
INSERT INTO `ingredients_details` VALUES (802, 88, 'Cornstarch', '3 tablespoons');
INSERT INTO `ingredients_details` VALUES (803, 88, 'Sweet bean paste', '5 tablespoons');
INSERT INTO `ingredients_details` VALUES (804, 88, 'Minced garlic ', 'As needed');
INSERT INTO `ingredients_details` VALUES (805, 88, 'Oyster sauce', 'As needed');
INSERT INTO `ingredients_details` VALUES (806, 88, 'Soy sauce (light)', 'As needed');
INSERT INTO `ingredients_details` VALUES (807, 88, 'Soy sauce (Dark)', 'As needed');
INSERT INTO `ingredients_details` VALUES (808, 88, 'Salt ', 'As needed');
INSERT INTO `ingredients_details` VALUES (809, 88, 'Sichuan pepper powder', 'As needed');
INSERT INTO `ingredients_details` VALUES (810, 88, 'Sugar', 'As needed');
INSERT INTO `ingredients_details` VALUES (811, 89, 'Sunflower seed oil', '500ml');
INSERT INTO `ingredients_details` VALUES (812, 89, 'Ground meat', '500g');
INSERT INTO `ingredients_details` VALUES (813, 89, 'Cornstarch', '50g');
INSERT INTO `ingredients_details` VALUES (814, 89, 'Garlic', '5 cloves');
INSERT INTO `ingredients_details` VALUES (815, 89, 'Ginger', '5 pieces');
INSERT INTO `ingredients_details` VALUES (816, 89, 'Green radish', '1 piece');
INSERT INTO `ingredients_details` VALUES (817, 89, 'Carrot', '1 piece');
INSERT INTO `ingredients_details` VALUES (818, 89, 'Salt', 'To taste');
INSERT INTO `ingredients_details` VALUES (819, 89, 'Black pepper powder', 'To taste');
INSERT INTO `ingredients_details` VALUES (820, 89, 'Oyster sauce', 'To taste');
INSERT INTO `ingredients_details` VALUES (821, 89, 'Light soy sauce', 'To taste');
INSERT INTO `ingredients_details` VALUES (822, 89, 'All-purpose flour', '200g');
INSERT INTO `ingredients_details` VALUES (823, 90, 'Tofu ', '1 block');
INSERT INTO `ingredients_details` VALUES (824, 90, 'Small chili peppers', '3 pieces');
INSERT INTO `ingredients_details` VALUES (825, 90, 'Minced garlic', 'To taste');
INSERT INTO `ingredients_details` VALUES (826, 90, 'Cumin', 'To taste');
INSERT INTO `ingredients_details` VALUES (827, 90, 'Sesame seeds', 'To taste');
INSERT INTO `ingredients_details` VALUES (828, 90, 'Chili powder', 'To taste');
INSERT INTO `ingredients_details` VALUES (829, 90, 'Soy sauce', 'To taste');
INSERT INTO `ingredients_details` VALUES (830, 90, 'Dark soy sauce', 'To taste');
INSERT INTO `ingredients_details` VALUES (831, 90, 'Oyster sauce', 'To taste');
INSERT INTO `ingredients_details` VALUES (832, 90, 'Rice vinegar', 'To taste');
INSERT INTO `ingredients_details` VALUES (833, 90, 'Sugar ', 'To taste');
INSERT INTO `ingredients_details` VALUES (834, 90, 'Salt', 'To taste');
INSERT INTO `ingredients_details` VALUES (835, 91, 'Pork belly with skin', '500g');
INSERT INTO `ingredients_details` VALUES (836, 91, 'Salt', '6g');
INSERT INTO `ingredients_details` VALUES (837, 91, 'Sugar', '5g');
INSERT INTO `ingredients_details` VALUES (838, 91, 'Five-spice powder', '2g');
INSERT INTO `ingredients_details` VALUES (839, 91, 'Cooking wine', 'A little');
INSERT INTO `ingredients_details` VALUES (840, 91, 'White vinegar', 'A little');
INSERT INTO `ingredients_details` VALUES (841, 92, 'Eggplant ', '3 pieces');
INSERT INTO `ingredients_details` VALUES (842, 92, 'Potato ', '1 piece');
INSERT INTO `ingredients_details` VALUES (843, 92, 'Green Pepper', '1 piece');
INSERT INTO `ingredients_details` VALUES (844, 92, 'Salt', '2g');
INSERT INTO `ingredients_details` VALUES (845, 92, 'Cornstarch', '2g');
INSERT INTO `ingredients_details` VALUES (846, 92, 'Sugar', '2g');
INSERT INTO `ingredients_details` VALUES (847, 92, 'Dark Soy Sauce', '2g');
INSERT INTO `ingredients_details` VALUES (848, 93, 'Glutinous Rice', '150g');
INSERT INTO `ingredients_details` VALUES (849, 93, 'Pork Ribs', '400g');
INSERT INTO `ingredients_details` VALUES (850, 93, 'Potato', '1 piece');
INSERT INTO `ingredients_details` VALUES (851, 94, 'Salted Egg Yolks', '4');
INSERT INTO `ingredients_details` VALUES (852, 94, 'Beef Tenderloin ', '500g');
INSERT INTO `ingredients_details` VALUES (853, 94, 'Garlic', '10 cloves');
INSERT INTO `ingredients_details` VALUES (854, 94, 'Black Pepper', 'To taste');
INSERT INTO `ingredients_details` VALUES (855, 94, 'Soy Sauce', '2 tablespoons');
INSERT INTO `ingredients_details` VALUES (856, 94, 'Cornstarch', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (857, 94, 'Cooking Wine', '2 tablepoons');
INSERT INTO `ingredients_details` VALUES (858, 94, 'Sugar ', '½ tablespoon');
INSERT INTO `ingredients_details` VALUES (859, 94, 'Salt', '½ tablespoon');
INSERT INTO `ingredients_details` VALUES (860, 94, 'Celery Leaves', 'Few');
INSERT INTO `ingredients_details` VALUES (861, 95, 'White beech mushrooms', '150g');
INSERT INTO `ingredients_details` VALUES (862, 95, 'Salted Egg Yolks', '4 pieces');
INSERT INTO `ingredients_details` VALUES (863, 95, 'Shrimp', '300g');
INSERT INTO `ingredients_details` VALUES (864, 95, 'Silken Tofu', '1 box');
INSERT INTO `ingredients_details` VALUES (865, 95, 'Green Peas', '50g');
INSERT INTO `ingredients_details` VALUES (866, 95, 'Shaoxing Wine ', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (867, 95, 'Salt', 'To taste');
INSERT INTO `ingredients_details` VALUES (868, 95, 'Ground Pepper', 'To taste');
INSERT INTO `ingredients_details` VALUES (869, 95, 'Cooking Oil', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (870, 95, 'Cornstarch water', 'As needed');
INSERT INTO `ingredients_details` VALUES (871, 95, 'Chopped Spring Onions', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (872, 96, 'Green Peppers', '5');
INSERT INTO `ingredients_details` VALUES (873, 96, 'Minced Meat', '50g');
INSERT INTO `ingredients_details` VALUES (874, 96, 'Oyster Sauce', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (875, 96, 'Soy Sauce', '2 tablespoons');
INSERT INTO `ingredients_details` VALUES (876, 96, 'Star Anise', '1');
INSERT INTO `ingredients_details` VALUES (877, 96, 'Cooking Oil ', '2 tablespoons');
INSERT INTO `ingredients_details` VALUES (878, 96, 'Chicken Powder', 'A pinch');
INSERT INTO `ingredients_details` VALUES (879, 96, 'Water', '250ml');
INSERT INTO `ingredients_details` VALUES (880, 97, 'Flour', '250g');
INSERT INTO `ingredients_details` VALUES (881, 97, 'Boiling water', '180g');
INSERT INTO `ingredients_details` VALUES (882, 97, 'Salt', 'A pinch');
INSERT INTO `ingredients_details` VALUES (883, 97, 'Cooking oil', 'To taste');
INSERT INTO `ingredients_details` VALUES (884, 98, 'Bamboo Shoots', '2 stalks');
INSERT INTO `ingredients_details` VALUES (885, 98, 'Fava Beans ', '200g');
INSERT INTO `ingredients_details` VALUES (886, 98, 'Cured meat', '100g');
INSERT INTO `ingredients_details` VALUES (887, 98, 'Sugar', '1/3 teaspoon');
INSERT INTO `ingredients_details` VALUES (888, 98, 'Green Onion', '1 section');
INSERT INTO `ingredients_details` VALUES (889, 98, 'Cornstarch ', '1/2 teaspoon');
INSERT INTO `ingredients_details` VALUES (890, 98, 'MSG', 'A pinch');
INSERT INTO `ingredients_details` VALUES (891, 99, 'Ginger', '1 piece');
INSERT INTO `ingredients_details` VALUES (892, 99, 'Scallions', '1 bunch');
INSERT INTO `ingredients_details` VALUES (893, 99, 'Light Soy Sauce', '20g');
INSERT INTO `ingredients_details` VALUES (894, 99, 'Dark Soy Sauce', '10g');
INSERT INTO `ingredients_details` VALUES (895, 99, 'Oyster Sauce ', '15g');
INSERT INTO `ingredients_details` VALUES (896, 99, 'Shaoxing Wine', '15g');
INSERT INTO `ingredients_details` VALUES (897, 99, 'Salt ', 'a pinch');
INSERT INTO `ingredients_details` VALUES (898, 99, 'Sugar ', '5g');
INSERT INTO `ingredients_details` VALUES (899, 99, 'Pepper ', 'a pinch');
INSERT INTO `ingredients_details` VALUES (900, 99, 'Cornstarch ', '5g');
INSERT INTO `ingredients_details` VALUES (901, 99, 'Cooking Oil', '15g');
INSERT INTO `ingredients_details` VALUES (902, 100, 'Spinach ', '200g');
INSERT INTO `ingredients_details` VALUES (903, 100, 'Eggs ', '2');
INSERT INTO `ingredients_details` VALUES (904, 100, 'Brown Shimeji Mushrooms', '100g');
INSERT INTO `ingredients_details` VALUES (905, 100, 'Roasted Peanuts', '45g');
INSERT INTO `ingredients_details` VALUES (906, 101, 'Glutinous Rice Flour', '100g');
INSERT INTO `ingredients_details` VALUES (907, 101, 'Cornstarch', '20g');
INSERT INTO `ingredients_details` VALUES (908, 101, 'Granulated Sugar', '20g');
INSERT INTO `ingredients_details` VALUES (909, 101, 'Milk ', '135g');
INSERT INTO `ingredients_details` VALUES (910, 101, 'Vegetable Oil ', '20g');
INSERT INTO `ingredients_details` VALUES (911, 101, 'Matcha Powder', '1 tsp');
INSERT INTO `ingredients_details` VALUES (912, 101, 'Red Bean Paste Filling', '150g');
INSERT INTO `ingredients_details` VALUES (913, 102, 'Bamboo shoots', '300g');
INSERT INTO `ingredients_details` VALUES (914, 102, 'Soy sauce', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (915, 102, 'Seasoned soy sauce', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (916, 102, 'Rock sugar', 'half teaspoon');
INSERT INTO `ingredients_details` VALUES (917, 102, 'Cooking oil', 'As needed');
INSERT INTO `ingredients_details` VALUES (918, 103, 'Bamboo shoots ', '300g');
INSERT INTO `ingredients_details` VALUES (919, 103, 'Chicken breast ', '250g');
INSERT INTO `ingredients_details` VALUES (920, 103, 'Coriander ', '1 bunch');
INSERT INTO `ingredients_details` VALUES (921, 103, 'Small chili peppers', '3');
INSERT INTO `ingredients_details` VALUES (922, 103, 'Green onion ', '1 stalk');
INSERT INTO `ingredients_details` VALUES (923, 103, 'Ginger ', '1 small piece');
INSERT INTO `ingredients_details` VALUES (924, 103, 'Cooking wine', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (925, 104, 'Chicken breast', 'As needed');
INSERT INTO `ingredients_details` VALUES (926, 104, 'Cooking wine', 'As needed');
INSERT INTO `ingredients_details` VALUES (927, 104, 'Noodles', 'As needed');
INSERT INTO `ingredients_details` VALUES (928, 104, 'Cooking oil', 'As needed');
INSERT INTO `ingredients_details` VALUES (929, 104, 'Cucumber strips', 'As needed');
INSERT INTO `ingredients_details` VALUES (930, 104, 'Egg', '3');
INSERT INTO `ingredients_details` VALUES (931, 104, 'Sesame paste', 'To taste');
INSERT INTO `ingredients_details` VALUES (932, 104, 'Sugar ', 'To taste');
INSERT INTO `ingredients_details` VALUES (933, 104, 'Chili oil', 'To taste');
INSERT INTO `ingredients_details` VALUES (934, 105, 'Green pea starch', '35g');
INSERT INTO `ingredients_details` VALUES (935, 105, 'Water ', '400g');
INSERT INTO `ingredients_details` VALUES (936, 105, 'Soy sauce', '3 tbsp');
INSERT INTO `ingredients_details` VALUES (937, 105, 'Oyster sauce', '1 tbsp');
INSERT INTO `ingredients_details` VALUES (938, 105, 'Chili oil', '2 tbsp');
INSERT INTO `ingredients_details` VALUES (939, 105, 'Ground Sichuan pepper', '1 tsp');
INSERT INTO `ingredients_details` VALUES (940, 105, 'Minced ginger', '1 tsp');
INSERT INTO `ingredients_details` VALUES (941, 105, 'Minced garlic', '1 tbsp');
INSERT INTO `ingredients_details` VALUES (942, 105, 'Chopped scallions', 'To taste');
INSERT INTO `ingredients_details` VALUES (943, 105, 'White sesame seeds', 'To taste');
INSERT INTO `ingredients_details` VALUES (944, 105, 'Crushed peanuts', 'To taste');
INSERT INTO `ingredients_details` VALUES (945, 106, 'Lotus Root', '1 section');
INSERT INTO `ingredients_details` VALUES (946, 106, 'Chili Powder', '1 spoon');
INSERT INTO `ingredients_details` VALUES (947, 106, 'White Sesame', '1 spoon');
INSERT INTO `ingredients_details` VALUES (948, 106, 'Garlic', '3 cloves');
INSERT INTO `ingredients_details` VALUES (949, 106, 'Scallions', 'As needed');
INSERT INTO `ingredients_details` VALUES (950, 106, 'Cooking Oil', 'As needed');
INSERT INTO `ingredients_details` VALUES (951, 106, 'Sesame Oil', '1 spoon');
INSERT INTO `ingredients_details` VALUES (952, 106, 'Light Soy Sauce', '3 spoons');
INSERT INTO `ingredients_details` VALUES (953, 106, 'Aromatic Vinegar', '2 spoons');
INSERT INTO `ingredients_details` VALUES (954, 106, 'Sichuan Pepper Oil', 'A little');
INSERT INTO `ingredients_details` VALUES (955, 107, 'Bitter Melon', '1 piece');
INSERT INTO `ingredients_details` VALUES (956, 107, 'Banana', '1 piece');
INSERT INTO `ingredients_details` VALUES (957, 107, 'Wolf Berries', '10 pieces');
INSERT INTO `ingredients_details` VALUES (958, 107, 'Sugar', '50g');
INSERT INTO `ingredients_details` VALUES (959, 107, 'Starch', '1 spoon');
INSERT INTO `ingredients_details` VALUES (960, 107, 'Salt ', '1 spoon');
INSERT INTO `ingredients_details` VALUES (961, 107, 'Sugar', '1 spoon');
INSERT INTO `ingredients_details` VALUES (962, 107, 'Water', 'As needed');
INSERT INTO `ingredients_details` VALUES (963, 108, 'Winter melon', '550g');
INSERT INTO `ingredients_details` VALUES (964, 108, 'Ham', '200g');
INSERT INTO `ingredients_details` VALUES (965, 108, 'Shiitake mushrooms', '2 pieces');
INSERT INTO `ingredients_details` VALUES (966, 108, 'Leek ', 'Half');
INSERT INTO `ingredients_details` VALUES (967, 108, 'Scallion', '1 stalk');
INSERT INTO `ingredients_details` VALUES (968, 108, 'White pepper powder ', '½ teaspoon');
INSERT INTO `ingredients_details` VALUES (969, 108, 'Salt', 'To taste');
INSERT INTO `ingredients_details` VALUES (970, 109, 'Pork Belly ', '300g');
INSERT INTO `ingredients_details` VALUES (971, 109, 'Cucumber ', '1/2 piece');
INSERT INTO `ingredients_details` VALUES (972, 109, 'Ginger', '5g');
INSERT INTO `ingredients_details` VALUES (973, 109, 'Garlic ', '6 cloves');
INSERT INTO `ingredients_details` VALUES (974, 109, 'Sichuan Peppercorns', '15 pieces');
INSERT INTO `ingredients_details` VALUES (975, 109, 'Green Onion', '1 stalk');
INSERT INTO `ingredients_details` VALUES (976, 109, 'Cilantro ', '2 stalks');
INSERT INTO `ingredients_details` VALUES (977, 109, 'Sichuan Pepper Oil', '10g');
INSERT INTO `ingredients_details` VALUES (978, 109, 'Cooking Wine', '15ml');
INSERT INTO `ingredients_details` VALUES (979, 109, 'Vinegar', '15 ml');
INSERT INTO `ingredients_details` VALUES (980, 110, 'Luffa', '1 piece');
INSERT INTO `ingredients_details` VALUES (981, 110, 'Eggs', '2');
INSERT INTO `ingredients_details` VALUES (982, 110, 'Shrimp ', '10 pieces');
INSERT INTO `ingredients_details` VALUES (983, 110, 'Salt', '1 teaspoon');
INSERT INTO `ingredients_details` VALUES (984, 110, 'Garlic slices', 'A little');
INSERT INTO `ingredients_details` VALUES (985, 111, 'Pumpkin', 'As needed');
INSERT INTO `ingredients_details` VALUES (986, 111, 'Milk', '500ml');
INSERT INTO `ingredients_details` VALUES (987, 111, 'Heavy cream', '30g');
INSERT INTO `ingredients_details` VALUES (988, 111, 'Salt', ' A pinch');
INSERT INTO `ingredients_details` VALUES (989, 111, 'White mushrooms', '4');
INSERT INTO `ingredients_details` VALUES (990, 112, 'Peanuts', '1 handful');
INSERT INTO `ingredients_details` VALUES (991, 112, 'Ginger ', '2 slices');
INSERT INTO `ingredients_details` VALUES (992, 112, 'Pork rib', '500g');
INSERT INTO `ingredients_details` VALUES (993, 112, 'Lotus root', '200g');
INSERT INTO `ingredients_details` VALUES (994, 112, 'Salt', '2 spoons');
INSERT INTO `ingredients_details` VALUES (995, 112, 'Dried scallops', '2 pieces');
INSERT INTO `ingredients_details` VALUES (996, 112, 'Carrot', '1 piece');
INSERT INTO `ingredients_details` VALUES (997, 113, 'Carrot ', '1');
INSERT INTO `ingredients_details` VALUES (998, 113, 'Spinach ', '1 bunch');
INSERT INTO `ingredients_details` VALUES (999, 113, 'Garlic', '4 cloves');
INSERT INTO `ingredients_details` VALUES (1000, 113, 'Oyster sauce', '1 spoon');
INSERT INTO `ingredients_details` VALUES (1001, 113, 'Salt', '1 spoon');
INSERT INTO `ingredients_details` VALUES (1006, 115, 'Salt ', '1/3 spoon');
INSERT INTO `ingredients_details` VALUES (1007, 115, 'Light soy sauce', '2 spoons');
INSERT INTO `ingredients_details` VALUES (1008, 115, 'Okra', '200g');
INSERT INTO `ingredients_details` VALUES (1009, 115, 'Sugar', '1/3 spoon');
INSERT INTO `ingredients_details` VALUES (1010, 115, 'Vinegar', '1 spoon');
INSERT INTO `ingredients_details` VALUES (1011, 115, 'Garlic', '3 cloves');
INSERT INTO `ingredients_details` VALUES (1012, 115, 'Small chili', '2 pieces');
INSERT INTO `ingredients_details` VALUES (1013, 115, 'Scallions ', '2 stalks');
INSERT INTO `ingredients_details` VALUES (1014, 116, 'Chinese cabbage', '500g');
INSERT INTO `ingredients_details` VALUES (1015, 116, 'Tofu', '500g');
INSERT INTO `ingredients_details` VALUES (1016, 116, 'Cured meat', 'cured meat');
INSERT INTO `ingredients_details` VALUES (1017, 116, 'Shiitake mushrooms', '6 pieces');
INSERT INTO `ingredients_details` VALUES (1018, 116, 'Spring onion', '1 stalk');
INSERT INTO `ingredients_details` VALUES (1019, 116, 'Minced garlic', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (1020, 116, 'Small chili ', '1 piece');
INSERT INTO `ingredients_details` VALUES (1021, 116, 'Broth ', '1 small bowl');
INSERT INTO `ingredients_details` VALUES (1022, 116, 'Cooking oil ', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (1023, 116, 'Soy sauce', '2 tablespoons');
INSERT INTO `ingredients_details` VALUES (1024, 117, 'Beef Brisket ', '750g');
INSERT INTO `ingredients_details` VALUES (1025, 117, 'Dried Beancurd Sticks', '150g');
INSERT INTO `ingredients_details` VALUES (1026, 117, 'Green Garlic Sprout', '1 stalk');
INSERT INTO `ingredients_details` VALUES (1027, 117, 'Ginger', '1 piece');
INSERT INTO `ingredients_details` VALUES (1028, 117, 'Scallions ', '1 bunch');
INSERT INTO `ingredients_details` VALUES (1029, 117, 'Garlic Cloves', '6 pieces');
INSERT INTO `ingredients_details` VALUES (1030, 117, 'Dried Chili Peppers', '4 pieces');
INSERT INTO `ingredients_details` VALUES (1031, 117, 'Star Anise', '2 pieces');
INSERT INTO `ingredients_details` VALUES (1032, 117, 'Cinnamon Stick', '1 piece');
INSERT INTO `ingredients_details` VALUES (1033, 118, 'Chicken Drumsticks', '700g');
INSERT INTO `ingredients_details` VALUES (1034, 118, 'Green Peppers ', '1 piece');
INSERT INTO `ingredients_details` VALUES (1035, 118, 'Red Peppers ', '1 piece');
INSERT INTO `ingredients_details` VALUES (1036, 118, 'Ginger ', '3 slices');
INSERT INTO `ingredients_details` VALUES (1037, 118, 'Scallions ', '2 stalks');
INSERT INTO `ingredients_details` VALUES (1038, 118, 'Garlic ', '10 Cloves');
INSERT INTO `ingredients_details` VALUES (1039, 118, 'water', '1 bowl');
INSERT INTO `ingredients_details` VALUES (1040, 119, 'Noodles ', '150g');
INSERT INTO `ingredients_details` VALUES (1041, 119, 'Egg', '1');
INSERT INTO `ingredients_details` VALUES (1042, 119, 'Ham ', '150g');
INSERT INTO `ingredients_details` VALUES (1043, 119, 'Cabbage leaf', '1 piece');
INSERT INTO `ingredients_details` VALUES (1044, 119, 'White radish', 'Half');
INSERT INTO `ingredients_details` VALUES (1045, 119, 'Scallion ', '1');
INSERT INTO `ingredients_details` VALUES (1046, 119, 'Light soy sauce ', '1 spoon');
INSERT INTO `ingredients_details` VALUES (1047, 119, 'Salt ', '2g');
INSERT INTO `ingredients_details` VALUES (1048, 119, 'White pepper powder ', '1g');
INSERT INTO `ingredients_details` VALUES (1049, 119, 'Sesame oil', '1 spoon');
INSERT INTO `ingredients_details` VALUES (1050, 119, 'Cilantro ', '1 stalk');
INSERT INTO `ingredients_details` VALUES (1051, 120, 'Starch ', '1 spoon');
INSERT INTO `ingredients_details` VALUES (1052, 120, 'Egg white', '1');
INSERT INTO `ingredients_details` VALUES (1053, 120, 'Sweet bean sauce ', '1.5 spoon');
INSERT INTO `ingredients_details` VALUES (1054, 120, 'Sugar ', '1 spoon');
INSERT INTO `ingredients_details` VALUES (1055, 120, 'Light soy sauce ', '1 spoon');
INSERT INTO `ingredients_details` VALUES (1056, 120, 'Oyster sauce ', '1 spoon');
INSERT INTO `ingredients_details` VALUES (1057, 120, 'Dark soy sauce', '1 spoon');
INSERT INTO `ingredients_details` VALUES (1058, 120, 'Pork tenderloin', '350g');
INSERT INTO `ingredients_details` VALUES (1059, 121, 'Pork Skin', '150g');
INSERT INTO `ingredients_details` VALUES (1060, 121, 'Light Soy Sauce', '½ tbsp');
INSERT INTO `ingredients_details` VALUES (1061, 121, 'Salt ', '1g');
INSERT INTO `ingredients_details` VALUES (1062, 121, 'Cooking Wine', '½ tbsp');
INSERT INTO `ingredients_details` VALUES (1063, 121, 'Water', 'As needed');
INSERT INTO `ingredients_details` VALUES (1064, 122, 'Cabbage Leaves', '200g');
INSERT INTO `ingredients_details` VALUES (1065, 122, 'Sesame Paste', '3 tbsp');
INSERT INTO `ingredients_details` VALUES (1066, 122, 'Light Soy Sauce', '1 tbsp');
INSERT INTO `ingredients_details` VALUES (1067, 122, 'Dark Soy Sauce', '½ tbsp');
INSERT INTO `ingredients_details` VALUES (1068, 122, 'Vinegar ', '2 tbsp');
INSERT INTO `ingredients_details` VALUES (1069, 122, 'Sugar ', '1 tbsp');
INSERT INTO `ingredients_details` VALUES (1070, 122, 'Honey', '1 tbsp');
INSERT INTO `ingredients_details` VALUES (1071, 123, 'Lamb Spine', '500g');
INSERT INTO `ingredients_details` VALUES (1072, 123, 'Star Anise', '2 pcs');
INSERT INTO `ingredients_details` VALUES (1073, 123, 'Bay Leaves', '3 pcs');
INSERT INTO `ingredients_details` VALUES (1074, 123, 'Sichuan Peppercorns', '10 pcs');
INSERT INTO `ingredients_details` VALUES (1075, 123, 'Bird Eye\'s Chili', '5-6 pcs');
INSERT INTO `ingredients_details` VALUES (1076, 123, 'Green Onion', '3-4 stalks');
INSERT INTO `ingredients_details` VALUES (1077, 123, 'Ginger', '3 pcs');
INSERT INTO `ingredients_details` VALUES (1078, 123, 'Salt ', '1 tsp');
INSERT INTO `ingredients_details` VALUES (1079, 123, 'Sugar', '1 tsp');
INSERT INTO `ingredients_details` VALUES (1080, 123, 'Light Soy Sauce', '2 tsp');
INSERT INTO `ingredients_details` VALUES (1081, 123, 'Dark Soy Sauce', '1 tsp');
INSERT INTO `ingredients_details` VALUES (1082, 124, 'Yellow croaker', '1');
INSERT INTO `ingredients_details` VALUES (1083, 124, 'Seasoned soy sauce', '40ml');
INSERT INTO `ingredients_details` VALUES (1084, 124, 'Green onion', 'As needed');
INSERT INTO `ingredients_details` VALUES (1085, 124, 'Ginger', 'As needed');
INSERT INTO `ingredients_details` VALUES (1086, 124, 'Red chili ', 'To taste');
INSERT INTO `ingredients_details` VALUES (1087, 125, 'Pork Belly', '200g');
INSERT INTO `ingredients_details` VALUES (1088, 125, 'Lotus Root', '50g');
INSERT INTO `ingredients_details` VALUES (1089, 125, 'Shiitake Mushrooms', '5 pcs');
INSERT INTO `ingredients_details` VALUES (1090, 125, 'Bok Choy ', '4');
INSERT INTO `ingredients_details` VALUES (1091, 125, 'Salt ', '1 teaspoon');
INSERT INTO `ingredients_details` VALUES (1092, 125, 'Sugar ', '1 teaspoon');
INSERT INTO `ingredients_details` VALUES (1093, 126, 'Pork', '300g');
INSERT INTO `ingredients_details` VALUES (1094, 126, 'Egg', '1');
INSERT INTO `ingredients_details` VALUES (1095, 126, 'Salt ', '1 teaspoon');
INSERT INTO `ingredients_details` VALUES (1096, 126, 'Soy Sauce', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (1097, 126, 'Sugar', 'A pinch');
INSERT INTO `ingredients_details` VALUES (1098, 126, 'White Pepper', 'A little');
INSERT INTO `ingredients_details` VALUES (1099, 127, 'Flour', '500g');
INSERT INTO `ingredients_details` VALUES (1100, 127, 'Yeast', '5g');
INSERT INTO `ingredients_details` VALUES (1101, 127, 'Sugar', '8g');
INSERT INTO `ingredients_details` VALUES (1102, 127, 'Salt', 'To taste');
INSERT INTO `ingredients_details` VALUES (1103, 127, 'Warm Water', 'As needed');
INSERT INTO `ingredients_details` VALUES (1104, 127, 'Pork Belly', 'As needed');
INSERT INTO `ingredients_details` VALUES (1105, 128, 'Potato', '1');
INSERT INTO `ingredients_details` VALUES (1106, 128, 'Shiitake Mushroom', '4');
INSERT INTO `ingredients_details` VALUES (1107, 128, 'Tomato', 'Half');
INSERT INTO `ingredients_details` VALUES (1108, 128, 'Ground Pork', '200g');
INSERT INTO `ingredients_details` VALUES (1109, 128, 'Carrot', '1');
INSERT INTO `ingredients_details` VALUES (1110, 128, 'Ginger', 'A small piece');
INSERT INTO `ingredients_details` VALUES (1111, 128, 'Green Onion', '1');
INSERT INTO `ingredients_details` VALUES (1112, 128, 'Coriander', 'A small amount');
INSERT INTO `ingredients_details` VALUES (1113, 129, 'Lamb Leg', '1kg');
INSERT INTO `ingredients_details` VALUES (1114, 129, 'Radish', '1/2 piece');
INSERT INTO `ingredients_details` VALUES (1115, 129, 'Bread', '3 pieces');
INSERT INTO `ingredients_details` VALUES (1116, 129, 'Tofu', '1/2 block');
INSERT INTO `ingredients_details` VALUES (1117, 129, 'Soaked Wood Ear Mushrooms', 'As needed');
INSERT INTO `ingredients_details` VALUES (1118, 129, 'Egg', '1 piece');
INSERT INTO `ingredients_details` VALUES (1119, 129, 'Green Onion', '1 stalk');
INSERT INTO `ingredients_details` VALUES (1120, 129, 'Vermicelli', '1 handful');
INSERT INTO `ingredients_details` VALUES (1121, 129, 'Fresh Ginger', '1 small piece');
INSERT INTO `ingredients_details` VALUES (1122, 130, 'Pork Belly', '500g');
INSERT INTO `ingredients_details` VALUES (1123, 130, 'Steamed Rice Noodles', '2 tbsp');
INSERT INTO `ingredients_details` VALUES (1124, 130, 'Potatoes', '3 pieces');
INSERT INTO `ingredients_details` VALUES (1125, 130, 'Cooking Wine', 'To taste');
INSERT INTO `ingredients_details` VALUES (1126, 130, 'Soy Sauce', 'To taste');
INSERT INTO `ingredients_details` VALUES (1127, 130, 'Sugar', '1 tbsp');
INSERT INTO `ingredients_details` VALUES (1128, 131, 'Minced Meat', '60g');
INSERT INTO `ingredients_details` VALUES (1129, 131, 'Rice Shoots', 'A little');
INSERT INTO `ingredients_details` VALUES (1130, 131, 'Noodles', '120g');
INSERT INTO `ingredients_details` VALUES (1131, 131, 'Green Vegetables', 'A little');
INSERT INTO `ingredients_details` VALUES (1132, 132, 'Peanuts', '500g');
INSERT INTO `ingredients_details` VALUES (1133, 132, 'Cooking Oil', 'As needed');
INSERT INTO `ingredients_details` VALUES (1134, 132, 'Garlic', '1 clove');
INSERT INTO `ingredients_details` VALUES (1135, 132, 'Dried Chili Peppers', '6 pieces');
INSERT INTO `ingredients_details` VALUES (1136, 132, 'Sichuan Peppercorns', '5g');
INSERT INTO `ingredients_details` VALUES (1137, 132, 'Salt', '8g');
INSERT INTO `ingredients_details` VALUES (1138, 132, 'Star Anise', '5g');
INSERT INTO `ingredients_details` VALUES (1139, 132, 'Sugar', '3g');
INSERT INTO `ingredients_details` VALUES (1140, 132, 'Chili Powder', '5g');
INSERT INTO `ingredients_details` VALUES (1141, 133, 'Tofu', '1 block');
INSERT INTO `ingredients_details` VALUES (1142, 133, 'Broad Bean Paste', '1 spoon');
INSERT INTO `ingredients_details` VALUES (1143, 133, 'Starch', '1 spoon');
INSERT INTO `ingredients_details` VALUES (1144, 133, 'Sichuan Peppercorns', '30 pieces');
INSERT INTO `ingredients_details` VALUES (1145, 133, 'Minced Meat', '2 taels');
INSERT INTO `ingredients_details` VALUES (1146, 133, 'Chili Peppers', '2 pieces');
INSERT INTO `ingredients_details` VALUES (1147, 133, 'Garlic', '2 cloves');
INSERT INTO `ingredients_details` VALUES (1148, 133, 'Ginger', '1 small piece');
INSERT INTO `ingredients_details` VALUES (1149, 133, 'Sichuan Pepper Powder', '1 spoon');
INSERT INTO `ingredients_details` VALUES (1150, 134, 'Chicken Wings', '6 pieces');
INSERT INTO `ingredients_details` VALUES (1151, 134, 'Soy Sauce', '20g');
INSERT INTO `ingredients_details` VALUES (1152, 134, 'Salt', '2g');
INSERT INTO `ingredients_details` VALUES (1153, 134, 'Sesame Oil', '10g');
INSERT INTO `ingredients_details` VALUES (1154, 134, 'Sugar', '15g');
INSERT INTO `ingredients_details` VALUES (1155, 134, 'Cooking Wine', '7.5ml');
INSERT INTO `ingredients_details` VALUES (1156, 134, 'Black Pepper Powder', '0.5g');
INSERT INTO `ingredients_details` VALUES (1157, 134, 'Cumin Powder', '10g');
INSERT INTO `ingredients_details` VALUES (1158, 134, 'Cornstarch', '3g');
INSERT INTO `ingredients_details` VALUES (1159, 135, 'Enoki Mushrooms', '200g');
INSERT INTO `ingredients_details` VALUES (1160, 135, 'Steamed Fish Soy Sauce', '2 tbsp');
INSERT INTO `ingredients_details` VALUES (1161, 135, 'Yellow Soybean Paste', '1 tbsp');
INSERT INTO `ingredients_details` VALUES (1162, 135, 'Minced Garlic', 'To taste');
INSERT INTO `ingredients_details` VALUES (1163, 135, 'White Sugar', '1/2 tbsp');
INSERT INTO `ingredients_details` VALUES (1164, 135, 'Light Soy Sauce', '2 tbsp');
INSERT INTO `ingredients_details` VALUES (1165, 135, 'Chopped Chili', '1 tbsp');
INSERT INTO `ingredients_details` VALUES (1166, 135, 'Scallions', 'To taste');
INSERT INTO `ingredients_details` VALUES (1167, 136, 'Potato (peeled)', '1');
INSERT INTO `ingredients_details` VALUES (1168, 136, 'Cooking Oil', 'As needed');
INSERT INTO `ingredients_details` VALUES (1169, 136, 'Salt', '1 tsp');
INSERT INTO `ingredients_details` VALUES (1170, 136, 'Chili Powder', 'As needed');
INSERT INTO `ingredients_details` VALUES (1171, 137, 'Pork (lean)', '250g');
INSERT INTO `ingredients_details` VALUES (1172, 137, 'Chili Powder', '2 tablespoons');
INSERT INTO `ingredients_details` VALUES (1173, 137, 'Sichuan Pepper Powder', '1/2 tablespoon');
INSERT INTO `ingredients_details` VALUES (1174, 137, 'Five-Spice Powder', 'A pinch');
INSERT INTO `ingredients_details` VALUES (1175, 137, 'Cumin Powder', '2 tablespoons');
INSERT INTO `ingredients_details` VALUES (1176, 137, 'Sesame Oil', '1 tablespoon');
INSERT INTO `ingredients_details` VALUES (1177, 137, 'Ginger (old)', 'As needed');
INSERT INTO `ingredients_details` VALUES (1178, 137, 'Green Onions', 'As needed');
INSERT INTO `ingredients_details` VALUES (1179, 138, 'Eggplant', '300g');
INSERT INTO `ingredients_details` VALUES (1180, 138, 'Oil', 'As needed');
INSERT INTO `ingredients_details` VALUES (1181, 138, 'Salt', 'To taste');
INSERT INTO `ingredients_details` VALUES (1182, 138, 'Sweet Bean Sauce', 'As needed');
INSERT INTO `ingredients_details` VALUES (1183, 138, 'Soy Sauce', 'As needed');
INSERT INTO `ingredients_details` VALUES (1184, 138, 'Sugar', 'As needed');
INSERT INTO `ingredients_details` VALUES (1185, 138, 'MSG', 'As needed');
INSERT INTO `ingredients_details` VALUES (1186, 138, 'Green Onion', 'As needed');
INSERT INTO `ingredients_details` VALUES (1187, 138, 'Star Anise', 'As needed');
INSERT INTO `ingredients_details` VALUES (1188, 138, 'Ginger', 'As needed');
INSERT INTO `ingredients_details` VALUES (1189, 138, 'Garlic', 'As needed');
INSERT INTO `ingredients_details` VALUES (1190, 139, 'Chicken', '1');
INSERT INTO `ingredients_details` VALUES (1191, 139, 'Salt', '2 teaspoons');
INSERT INTO `ingredients_details` VALUES (1192, 139, 'Ginger', '6 slices');
INSERT INTO `ingredients_details` VALUES (1193, 139, 'Salt', '1 teaspoon');
INSERT INTO `ingredients_details` VALUES (1194, 139, 'Cooking Wine', '2 tablespoons');
INSERT INTO `ingredients_details` VALUES (1195, 139, 'Seasoned soy sauce', '2 tablespoons');
INSERT INTO `ingredients_details` VALUES (1196, 139, 'Green Onions', '4 stalks');
INSERT INTO `ingredients_details` VALUES (1197, 139, 'Sesame Seeds', '1 teaspoon');
INSERT INTO `ingredients_details` VALUES (1198, 140, 'Frozen Dumplings', 'As needed');
INSERT INTO `ingredients_details` VALUES (1199, 140, 'Black Sesame', 'As needed');
INSERT INTO `ingredients_details` VALUES (1200, 140, 'Scallions', 'As needed');
INSERT INTO `ingredients_details` VALUES (1201, 140, 'Water', 'As needed');
INSERT INTO `ingredients_details` VALUES (1202, 141, 'Pork Ribs', 'Several pieces');
INSERT INTO `ingredients_details` VALUES (1203, 141, 'Green Onion', 'Half a bunch');
INSERT INTO `ingredients_details` VALUES (1204, 141, 'Star Anise', '1 piece');
INSERT INTO `ingredients_details` VALUES (1205, 141, 'Cooking Wine', 'Half a tablespoon');
INSERT INTO `ingredients_details` VALUES (1206, 141, 'Sichuan Peppercorns', '2 pieces');
INSERT INTO `ingredients_details` VALUES (1207, 141, 'Ginger Slices', '3 slices');
INSERT INTO `ingredients_details` VALUES (1208, 141, 'Salt', '3 tablespoons');
INSERT INTO `ingredients_details` VALUES (1209, 141, 'Water', 'As needed');
INSERT INTO `ingredients_details` VALUES (1210, 141, 'Soy Sauce', 'A little');
INSERT INTO `ingredients_details` VALUES (1211, 142, 'Tomatoes', '2');
INSERT INTO `ingredients_details` VALUES (1212, 142, 'Eggs', '2');
INSERT INTO `ingredients_details` VALUES (1213, 142, 'Green Pepper', '1');
INSERT INTO `ingredients_details` VALUES (1214, 142, 'Garlic', '3 cloves');
INSERT INTO `ingredients_details` VALUES (1215, 142, 'Salt', '4g');
INSERT INTO `ingredients_details` VALUES (1216, 142, 'Cooking Wine', 'A little');
INSERT INTO `ingredients_details` VALUES (1217, 142, 'Sugar', '15g');
INSERT INTO `ingredients_details` VALUES (1218, 143, 'Snow peas', '250g');
INSERT INTO `ingredients_details` VALUES (1219, 143, 'Chinese Sausage', '1 piece');
INSERT INTO `ingredients_details` VALUES (1220, 143, 'Garlic', '2 cloves');
INSERT INTO `ingredients_details` VALUES (1221, 143, 'Salt', 'To taste');
INSERT INTO `ingredients_details` VALUES (1222, 143, 'Sugar', '1/2 spoon');
INSERT INTO `ingredients_details` VALUES (1223, 144, 'Pork Leg Meat', '500g');
INSERT INTO `ingredients_details` VALUES (1224, 144, 'Ginger', 'To taste');
INSERT INTO `ingredients_details` VALUES (1225, 144, 'Light Soy Sauce', '16g');
INSERT INTO `ingredients_details` VALUES (1226, 144, 'Dark Soy Sauce', '4g');
INSERT INTO `ingredients_details` VALUES (1227, 144, 'Salt', '6g');
INSERT INTO `ingredients_details` VALUES (1228, 144, 'Sugar', '4g');
INSERT INTO `ingredients_details` VALUES (1229, 144, 'Sesame Oil', '6g');
INSERT INTO `ingredients_details` VALUES (1230, 144, 'Rapeseed Oil', '20g');
INSERT INTO `ingredients_details` VALUES (1231, 144, 'Cornstarch', '2g');
INSERT INTO `ingredients_details` VALUES (1232, 144, 'Water', '40g');
INSERT INTO `ingredients_details` VALUES (1233, 144, 'Cooking Wine', 'To taste');
INSERT INTO `ingredients_details` VALUES (1234, 145, 'Tofu', '1 box');
INSERT INTO `ingredients_details` VALUES (1235, 145, 'Scallop', '150g');
INSERT INTO `ingredients_details` VALUES (1236, 145, 'Green Onion', 'To taste');
INSERT INTO `ingredients_details` VALUES (1237, 145, 'Ginger', '1 piece');
INSERT INTO `ingredients_details` VALUES (1238, 145, 'White Pepper Powder', 'A pinch');
INSERT INTO `ingredients_details` VALUES (1239, 145, 'Salt', 'A pinch');
INSERT INTO `ingredients_details` VALUES (1240, 146, 'Pumpkin', 'One');
INSERT INTO `ingredients_details` VALUES (1241, 146, 'Pork Ribs', '250g');
INSERT INTO `ingredients_details` VALUES (1242, 146, 'Garlic (minced)', '3 cloves');
INSERT INTO `ingredients_details` VALUES (1243, 146, 'Ginger Slice', 'One slice');
INSERT INTO `ingredients_details` VALUES (1244, 146, 'Oyster Sauce', 'To taste');
INSERT INTO `ingredients_details` VALUES (1245, 146, 'White Pepper Powder', 'To taste');
INSERT INTO `ingredients_details` VALUES (1246, 146, 'White Sugar', 'A little');
INSERT INTO `ingredients_details` VALUES (1247, 146, 'Salt', '5g');
INSERT INTO `ingredients_details` VALUES (1248, 146, 'Cooking Oil', '2 tablespoons');

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
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

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
  CONSTRAINT `pid` FOREIGN KEY (`pid`) REFERENCES `dishes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1541 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of recipe_step
-- ----------------------------
INSERT INTO `recipe_step` VALUES (1, 1, 1, 'Rinse the beef thoroughly and set it aside.', 'steps_images/MD_1_1.jpg');
INSERT INTO `recipe_step` VALUES (2, 1, 2, 'Prepare the following seasonings: baking soda, dark soy sauce, light soy sauce, oyster sauce, Sichuan pepper oil, barbecue seasoning, cumin powder, toasted sesame seeds, minced garlic, chopped green onions, and cooking oil.', 'steps_images/MD_1_2.jpg');
INSERT INTO `recipe_step` VALUES (3, 1, 3, 'Slice the beef into thin pieces.', 'steps_images/MD_1_3.jpg');
INSERT INTO `recipe_step` VALUES (4, 1, 4, 'In a bowl, combine all the seasonings from Step 2, except for the cooking oil and sesame seeds.', 'steps_images/MD_1_4.jpg');
INSERT INTO `recipe_step` VALUES (5, 1, 5, 'Mix the beef thoroughly with the seasonings until well coated.', 'steps_images/MD_1_5.jpg');
INSERT INTO `recipe_step` VALUES (6, 1, 6, 'Add the cooking oil and mix again.', 'steps_images/MD_1_6.jpg');
INSERT INTO `recipe_step` VALUES (7, 1, 7, 'Let it marinate for at least 30 minutes.', 'steps_images/MD_1_7.jpg');
INSERT INTO `recipe_step` VALUES (8, 1, 8, 'Heat a pan and add some cooking oil, then sauté the minced garlic until fragrant.', 'steps_images/MD_1_8.jpg');
INSERT INTO `recipe_step` VALUES (9, 1, 9, 'Turn the heat to high and add the marinated beef.', 'steps_images/MD_1_9.jpg');
INSERT INTO `recipe_step` VALUES (10, 1, 10, 'Stir-fry continuously for one to two minutes.', 'steps_images/MD_1_10.jpg');
INSERT INTO `recipe_step` VALUES (11, 1, 11, 'Turn off the heat and sprinkle with sesame seeds.', 'steps_images/MD_1_11.jpg');
INSERT INTO `recipe_step` VALUES (12, 1, 12, 'Dish it up and Enjoy it!', 'steps_images/MD_1_12.jpg');
INSERT INTO `recipe_step` VALUES (13, 2, 1, 'Cut the fresh beef into small pieces and soak them in cold water for 30 minutes to remove excess blood and any gamy smell. Then, place the beef in a pot of cold water, add a spoonful of cooking wine and a slice of ginger, and blanch until scum forms. Remove the beef and rinse it thoroughly with warm water.', 'steps_images/MD_2_1.jpg');
INSERT INTO `recipe_step` VALUES (14, 2, 2, 'Cut the potatoes and carrots into small chunks.', 'steps_images/MD_2_2.jpg');
INSERT INTO `recipe_step` VALUES (15, 2, 3, 'Heat a small amount of oil in a pan, then add minced garlic, chopped green onions, and a spoonful of doubanjiang (fermented chili bean paste). Stir-fry until fragrant. Add the beef, star anise, and dried chili peppers, and stir-fry for about 30 seconds. Pour in a little cooking wine, light soy sauce, dark soy sauce, and oyster sauce, stirring well to coat the beef. Add hot water until the beef is fully submerged, bring to a boil, cover with a lid, and simmer over medium-low heat for about 30 minutes.', 'steps_images/MD_2_3.jpg');
INSERT INTO `recipe_step` VALUES (16, 2, 4, 'In another pan, heat a small amount of cooking oil. Add the potatoes and carrots, and stir-fry over low heat for two minutes. Drizzle in a little light soy sauce and a few drops of dark soy sauce for color.', 'steps_images/MD_2_4.jpg');
INSERT INTO `recipe_step` VALUES (17, 2, 5, 'After about 30 minutes, add the stir-fried potatoes and carrots to the beef.', 'steps_images/MD_2_5.jpg');
INSERT INTO `recipe_step` VALUES (18, 2, 6, 'Bring everything to a boil over high heat, then reduce to medium-low heat and simmer for another 10 minutes until the potatoes and carrots are fully cooked.', 'steps_images/MD_2_6.jpg');
INSERT INTO `recipe_step` VALUES (19, 2, 7, 'Add a small amount of sugar and white pepper, then turn up the heat to reduce the sauce. Adjust the salt to taste.', 'steps_images/MD_2_7.jpg');
INSERT INTO `recipe_step` VALUES (20, 2, 8, 'Sprinkle with chopped green onions, then serve hot.', 'steps_images/MD_2_8.jpg');
INSERT INTO `recipe_step` VALUES (21, 3, 1, 'Prepare all the seasonings and cut the green onion into sections.', 'steps_images/MD_3_1.jpg');
INSERT INTO `recipe_step` VALUES (22, 3, 2, 'Heat a pan over medium heat and add cold oil. Add the sliced lamb and stir-fry until it turns white, about 2 minutes. Reduce to low heat.', 'steps_images/MD_3_2.jpg');
INSERT INTO `recipe_step` VALUES (23, 3, 3, 'Add the green onion and all the prepared seasonings. Turn up the heat and stir-fry until evenly coated and colored, about 2 minutes.', 'steps_images/MD_3_3.jpg');
INSERT INTO `recipe_step` VALUES (24, 3, 4, 'Turn off the heat and transfer to a plate. Enjoy it!', 'steps_images/MD_3_4.jpg');
INSERT INTO `recipe_step` VALUES (25, 4, 1, 'Blanch the pork belly with cooking wine, green onions, and ginger. Then, remove, rinse thoroughly, and drain.', 'steps_images/MD_4_1.jpg');
INSERT INTO `recipe_step` VALUES (26, 4, 2, 'Do not add oil to the pan. Add the pork belly and stir-fry over medium heat.', 'steps_images/MD_4_2.jpg');
INSERT INTO `recipe_step` VALUES (27, 4, 3, 'Fry until both sides turn golden brown, then remove and set aside.', 'steps_images/MD_4_3.jpg');
INSERT INTO `recipe_step` VALUES (28, 4, 4, 'Add oil to the pan and melt rock sugar over low heat.', 'steps_images/MD_4_4.jpg');
INSERT INTO `recipe_step` VALUES (29, 4, 5, 'Keep stirring on low heat until the sugar caramelizes.\n\nKeep stirring on low heat until the sugar caramelizes.', 'steps_images/MD_4_5.jpg');
INSERT INTO `recipe_step` VALUES (30, 4, 6, 'Add the pork belly and stir to coat evenly with the caramelized sugar.', 'steps_images/MD_4_6.jpg');
INSERT INTO `recipe_step` VALUES (31, 4, 7, 'Add dried chili peppers, star anise, cinnamon, bay leaves, green onions, and ginger.', 'steps_images/MD_4_7.jpg');
INSERT INTO `recipe_step` VALUES (32, 4, 8, 'Pour in three tablespoons of light soy sauce, one tablespoon of oyster sauce, and one tablespoon of dark soy sauce. Stir well to combine.', 'steps_images/MD_4_8.jpg');
INSERT INTO `recipe_step` VALUES (33, 4, 9, 'Add hot water until the ingredients are fully submerged. Simmer over low heat for about 40 minutes.', 'steps_images/MD_4_9.jpg');
INSERT INTO `recipe_step` VALUES (34, 4, 10, 'Reduce the sauce until thickened, then transfer to a serving plate.', 'steps_images/MD_4_10.jpg');
INSERT INTO `recipe_step` VALUES (35, 5, 1, 'Thaw and dice the steak, wash and slice the button mushrooms, and peel the garlic for later use.', 'steps_images/MD_5_1.jpg');
INSERT INTO `recipe_step` VALUES (36, 5, 2, 'Add 1 tablespoon of cooking wine, 1 tablespoon of soy sauce, 1 tablespoon of oyster sauce, 1 tablespoon of cornstarch, 1 tablespoon of pepper, 1 tablespoon of vegetable oil, and 1 tablespoon of dark soy sauce to the diced beef. Mix well and marinate for 5 minutes.', 'steps_images/MD_5_2.jpg');
INSERT INTO `recipe_step` VALUES (37, 5, 3, 'Heat a small amount of oil in a pan, then add the garlic and sauté until fragrant. Remove the garlic from the pan.', 'steps_images/MD_5_3.jpg');
INSERT INTO `recipe_step` VALUES (38, 5, 4, 'Add the marinated beef to the pan and stir-fry until cooked.', 'steps_images/MD_5_4.jpg');
INSERT INTO `recipe_step` VALUES (39, 5, 5, 'Add the mushrooms and stir-fry until they become soft.', 'steps_images/MD_5_5.jpg');
INSERT INTO `recipe_step` VALUES (40, 5, 6, 'Add the garlic back into the pan, and add 1 tablespoon of soy sauce to enhance the flavor.', 'steps_images/MD_5_6.jpg');
INSERT INTO `recipe_step` VALUES (41, 5, 7, 'Sprinkle with crushed black pepper.', 'steps_images/MD_5_7.jpg');
INSERT INTO `recipe_step` VALUES (42, 5, 8, 'Serve on a plate and enjoy.', 'steps_images/MD_5_8.jpg');
INSERT INTO `recipe_step` VALUES (43, 6, 1, 'Soak the fresh lamb in cold water for an hour. Then, place it in a pot with cold water, add ginger slices and cooking wine, and bring to a boil. Let it cook for another five minutes, then remove and rinse thoroughly. Set aside.', 'steps_images/MD_6_1.jpg');
INSERT INTO `recipe_step` VALUES (44, 6, 2, 'Heat a wok, add ginger slices and green onions, and sauté until fragrant. Stir in a small amount of doubanjiang (fermented broad bean paste), then add the lamb and stir-fry. Pour in cooking wine, light soy sauce, and dark soy sauce, ensuring the lamb is evenly coated. Add hot boiling water until the lamb is fully submerged, then toss in a few star anise and a small piece of cinnamon. Simmer over medium heat.', 'steps_images/MD_6_2.jpg');
INSERT INTO `recipe_step` VALUES (45, 6, 3, 'After simmering for 30 minutes, add the carrots and continue cooking on low heat for another hour.', 'steps_images/MD_6_3.jpg');
INSERT INTO `recipe_step` VALUES (46, 6, 4, 'When the sauce has reduced, sprinkle in some garlic sprouts and season with salt. Transfer to a serving dish and garnish with chopped scallions before serving.', 'steps_images/MD_6_4.jpg');
INSERT INTO `recipe_step` VALUES (47, 7, 1, 'Slice the beef into thin pieces and rinse several times until most of the blood is removed.', 'steps_images/MD_7_1.jpg');
INSERT INTO `recipe_step` VALUES (48, 7, 2, 'Prepare the ingredients: red & green chili peppers, ginger, garlic. Place the beef in a bowl and add cooking wine, salt, light soy sauce, a small amount of minced ginger & garlic, and chopped chili peppers. Mix well and let it marinate for a few minutes.', 'steps_images/MD_7_2.jpg');
INSERT INTO `recipe_step` VALUES (49, 7, 3, 'Heat cooking oil in a cold pan, then add all the prepared ingredients and stir-fry. Then， turn up the heat and add the beef, stirring quickly.', 'steps_images/MD_7_3.jpg');
INSERT INTO `recipe_step` VALUES (50, 7, 4, 'Continue stir-frying for about three minutes, then transfer to a plate and serve.', 'steps_images/MD_7_4.jpg');
INSERT INTO `recipe_step` VALUES (51, 8, 1, 'This recipe uses chicken drumstick as an example, but you can also use chicken thigh or chicken breast.', 'steps_images/MD_8_1.jpg');
INSERT INTO `recipe_step` VALUES (52, 8, 2, 'Chop the drumstick into small pieces and marinate them with ginger, salt, five-spice powder, cooking wine, light soy sauce, and oyster sauce. Smaller pieces absorb the flavors better, so about 30 minutes of marination is enough.', 'steps_images/MD_8_2.jpg');
INSERT INTO `recipe_step` VALUES (53, 8, 3, 'Chop the green onions, ginger, and garlic, and set them aside.', 'steps_images/MD_8_3.jpg');
INSERT INTO `recipe_step` VALUES (54, 8, 4, 'Cut the chili peppers into small pieces. Adjust the amount based on your spice tolerance—use less if you prefer a milder dish. Then, add an egg white to the marinated chicken, followed by cornstarch, and mix well.', 'steps_images/MD_8_4.jpg');
INSERT INTO `recipe_step` VALUES (55, 8, 5, 'Heat cooking oil in a pan. To check if the oil is ready, dip a chopstick into it—if bubbles form around the chopstick, the oil is hot enough. Add the chicken pieces and fry them until golden brown, then remove them from the oil.', 'steps_images/MD_8_5.jpg');
INSERT INTO `recipe_step` VALUES (56, 8, 6, 'Fry the chicken a second time at a slightly higher temperature for about a minute, then take them out immediately.', 'steps_images/MD_8_6.jpg');
INSERT INTO `recipe_step` VALUES (57, 8, 7, 'In a clean pan, heat some oil and sauté the chopped green onions, ginger, and garlic until fragrant.', 'steps_images/MD_8_7.jpg');
INSERT INTO `recipe_step` VALUES (58, 8, 8, 'Add Sichuan peppercorns and dried chili peppers, and stir-fry until aromatic.', 'steps_images/MD_8_8.jpg');
INSERT INTO `recipe_step` VALUES (59, 8, 9, 'Return the fried chicken to the pan and add a small amount of granulated sugar to enhance the flavor.', 'steps_images/MD_8_9.jpg');
INSERT INTO `recipe_step` VALUES (60, 8, 10, 'Stir-fry until the sugar dissolves, then add chopped green onions.', 'steps_images/MD_8_10.jpg');
INSERT INTO `recipe_step` VALUES (61, 8, 11, 'Before serving, sprinkle some white sesame seeds on top.', 'steps_images/MD_8_11.jpg');
INSERT INTO `recipe_step` VALUES (62, 8, 12, 'And that’s it! Enjoy!', 'steps_images/MD_8_12.jpg');
INSERT INTO `recipe_step` VALUES (63, 9, 1, 'Chop the duck into pieces, then peel and cut the lotus root into chunks. Set aside.', 'steps_images/MD_9_1.jpg');
INSERT INTO `recipe_step` VALUES (64, 9, 2, 'Place the duck pieces in a pot with cold water, bring to a boil, then blanch. Rinse off any foam with hot water and set aside.', 'steps_images/MD_9_2.jpg');
INSERT INTO `recipe_step` VALUES (65, 9, 3, 'Heat a wok without adding cooking oil. Place the duck pieces skin-side down and cook over low heat to render the duck fat.', 'steps_images/MD_9_3.jpg');
INSERT INTO `recipe_step` VALUES (66, 9, 4, 'Add scallions, ginger, star anise, and cinnamon, and stir-fry until fragrant', 'steps_images/MD_9_4.jpg');
INSERT INTO `recipe_step` VALUES (67, 9, 5, 'Stir in yellow wine, soybean paste, light soy sauce, and rock sugar. Continue stir-frying until the duck is evenly coated and takes on a rich color.', 'steps_images/MD_9_5.jpg');
INSERT INTO `recipe_step` VALUES (68, 9, 6, 'Pour in hot water until the duck is fully submerged. Bring to a boil over high heat, then cover and simmer over low heat for about 30 minutes.', 'steps_images/MD_9_6.jpg');
INSERT INTO `recipe_step` VALUES (69, 9, 7, 'Add the lotus root chunks, cover, and continue simmering for another 10 minutes.', 'steps_images/MD_9_7.jpg');
INSERT INTO `recipe_step` VALUES (70, 9, 8, 'Transfer everything to a clay pot and bring to a boil. At this stage, you can adjust the seasoning to taste.', 'steps_images/MD_9_8.jpg');
INSERT INTO `recipe_step` VALUES (71, 9, 9, 'Your aromatic Braised Duck with Lotus Root is now ready to serve!', 'steps_images/MD_9_9.jpg');
INSERT INTO `recipe_step` VALUES (72, 10, 1, 'Wash the duck thoroughly, then rub it evenly with salt and dark soy sauce to marinate', 'steps_images/MD_10_1.jpg');
INSERT INTO `recipe_step` VALUES (73, 10, 2, 'Heat a generous amount of cooking oil in a pan, then sear the marinated duck until the surface turns golden brown.', 'steps_images/MD_10_2.jpg');
INSERT INTO `recipe_step` VALUES (74, 10, 3, 'Using the remaining oil in the pan, sauté the sliced ginger, shallots, and garlic until fragrant.', 'steps_images/MD_10_3.jpg');
INSERT INTO `recipe_step` VALUES (75, 10, 4, 'Return the seared duck to the pan, add hot water until it covers half of the duck, then add sour plums and sour plum sauce.', 'steps_images/MD_10_4.jpg');
INSERT INTO `recipe_step` VALUES (76, 10, 5, 'Add light soy sauce, dark soy sauce, cooking wine, and rock sugar. Bring to a boil over high heat, then reduce to medium-low heat and simmer for 40 minutes.', 'steps_images/MD_10_5.jpg');
INSERT INTO `recipe_step` VALUES (77, 10, 6, 'Flip the duck a few times during cooking. Simmer until the meat is tender enough to be pierced easily with chopsticks. Increase the heat to reduce the sauce, basting the duck with the thickened glaze.', 'steps_images/MD_10_6.jpg');
INSERT INTO `recipe_step` VALUES (78, 10, 7, 'Let the duck cool slightly, then slice it and arrange it on a plate. Drizzle the remaining sauce over the top. And there you have it—your delicious Sour Plum Duck is ready to serve!', 'steps_images/MD_10_7.jpg');
INSERT INTO `recipe_step` VALUES (79, 11, 1, 'Slice the pork belly into thin pieces.', 'steps_images/MD_11_1.jpg');
INSERT INTO `recipe_step` VALUES (80, 11, 2, 'Add one spoonful of light soy sauce and half a spoonful of dark soy sauce.', 'steps_images/MD_11_2.jpg');
INSERT INTO `recipe_step` VALUES (81, 11, 3, 'Add one spoonful of cooking wine.', 'steps_images/MD_11_3.jpg');
INSERT INTO `recipe_step` VALUES (82, 11, 4, 'Add one spoonful of white sesame seeds.', 'steps_images/MD_11_4.jpg');
INSERT INTO `recipe_step` VALUES (83, 11, 5, 'Add one spoonful of barbecue seasoning.', 'steps_images/MD_11_5.jpg');
INSERT INTO `recipe_step` VALUES (84, 11, 6, 'Add one spoonful of cornstarch.', 'steps_images/MD_11_6.jpg');
INSERT INTO `recipe_step` VALUES (85, 11, 7, 'Mix well and marinate for 20 minutes.', 'steps_images/MD_11_7.jpg');
INSERT INTO `recipe_step` VALUES (86, 11, 8, 'Heat the oil and add the pork to the pan.', 'steps_images/MD_11_8.jpg');
INSERT INTO `recipe_step` VALUES (87, 11, 9, 'Pan-fry until both sides are golden brown and crispy.', 'steps_images/MD_11_9.jpg');
INSERT INTO `recipe_step` VALUES (88, 11, 10, 'Enjoy your delicious dish!', 'steps_images/MD_11_10.jpg');
INSERT INTO `recipe_step` VALUES (89, 12, 1, 'Cut the pork tenderloin into strips.', 'steps_images/MD_12_1.jpg');
INSERT INTO `recipe_step` VALUES (90, 12, 2, 'Place the Sichuan peppercorns in the pan and toast them until fragrant.', 'steps_images/MD_12_2.jpg');
INSERT INTO `recipe_step` VALUES (91, 12, 3, 'Crush the toasted Sichuan peppercorns.', 'steps_images/MD_12_3.jpg');
INSERT INTO `recipe_step` VALUES (92, 12, 4, 'Mix oyster sauce, soy sauce, salt, Sichuan pepper powder, scallions, ginger, and the pork tenderloin. Marinate for 15 minutes.', 'steps_images/MD_12_4.jpg');
INSERT INTO `recipe_step` VALUES (93, 12, 5, 'Remove the ginger and scallions, then add the egg and cornstarch.', 'steps_images/MD_12_5.jpg');
INSERT INTO `recipe_step` VALUES (94, 12, 6, 'Stir well to combine.', 'steps_images/MD_12_6.jpg');
INSERT INTO `recipe_step` VALUES (95, 12, 7, 'Heat the cooking oil in the pan.', 'steps_images/MD_12_7.jpg');
INSERT INTO `recipe_step` VALUES (96, 12, 8, 'Once the oil is hot, add the pork tenderloin and deep-fry for 4 minutes. Remove and let it cool.', 'steps_images/MD_12_8.jpg');
INSERT INTO `recipe_step` VALUES (97, 12, 9, 'After the pork has cooled, re-fry it in the oil until golden brown. This step ensures the pork is extra crispy.', 'steps_images/MD_12_9.jpg');
INSERT INTO `recipe_step` VALUES (98, 12, 10, 'Done! Enjoy the delicious dish!', 'steps_images/MD_12_10.jpg');
INSERT INTO `recipe_step` VALUES (99, 13, 1, 'Place the chicken breasts in cold water, add ginger slices, star anise, green onion, and a tablespoon of cooking wine to remove the odor', 'steps_images/APP_1_1.jpg');
INSERT INTO `recipe_step` VALUES (100, 13, 2, 'Once the water boils, cook for another two minutes, then remove the chicken breasts and let them cool. Shred the chicken into pieces and set aside', 'steps_images/APP_1_2.jpg');
INSERT INTO `recipe_step` VALUES (101, 13, 3, 'Prepare the ingredients: cilantro, shredded cucumber, garlic, chili powder, small chili peppers, a little sugar, and chicken essence.', 'steps_images/APP_1_3.jpg');
INSERT INTO `recipe_step` VALUES (102, 13, 4, 'Heat the oil (3 tablespoons of peanut oil + a little sesame oil + a bit of Sichuan pepper oil) and pour over the mixture.', 'steps_images/APP_1_4.jpg');
INSERT INTO `recipe_step` VALUES (103, 13, 5, 'Add two tablespoons of soy sauce and two tablespoons of vinegar.', 'steps_images/APP_1_5.jpg');
INSERT INTO `recipe_step` VALUES (104, 13, 6, 'Add a pinch of salt.', 'steps_images/APP_1_6.jpg');
INSERT INTO `recipe_step` VALUES (105, 13, 7, 'Add half a tablespoon of oyster sauce and mix well.', 'steps_images/APP_1_7.jpg');
INSERT INTO `recipe_step` VALUES (106, 13, 8, 'Pour the prepared sauce mixture over the shredded chicken, and toss in the cilantro and cucumber.', 'steps_images/APP_1_8.jpg');
INSERT INTO `recipe_step` VALUES (107, 13, 9, 'All done, enjoy your delicious dish!', 'steps_images/APP_1_9.jpg');
INSERT INTO `recipe_step` VALUES (108, 14, 1, 'Clean the button mushrooms and cut them into quarters. Cut the chicken breast into small pieces.', 'steps_images/MD_13_1.jpg');
INSERT INTO `recipe_step` VALUES (109, 14, 2, 'Add salt, a little bit of dark soy sauce, light soy sauce, oyster sauce, white sugar, pepper, cooking wine, and cornstarch to the chicken breast pieces. Mix well, then add a spoonful of cooking oil to lock in moisture. Let it marinate for about 20 minutes.', 'steps_images/MD_13_2.jpg');
INSERT INTO `recipe_step` VALUES (110, 14, 3, 'Heat some cooking oil in a pan and add the marinated chicken breast.', 'steps_images/MD_13_3.jpg');
INSERT INTO `recipe_step` VALUES (111, 14, 4, 'Stir-fry over high heat until the chicken changes color, then set it aside.', 'steps_images/MD_13_4.jpg');
INSERT INTO `recipe_step` VALUES (112, 14, 5, 'Heat some oil in the pan and add minced garlic. Sauté until slightly golden and fragrant.', 'steps_images/MD_13_5.jpg');
INSERT INTO `recipe_step` VALUES (113, 14, 6, 'Add the sliced button mushrooms to the pan.', 'steps_images/MD_13_6.jpg');
INSERT INTO `recipe_step` VALUES (114, 14, 7, 'Stir-fry the mushrooms until they are fully cooked and softened.', 'steps_images/MD_13_7.jpg');
INSERT INTO `recipe_step` VALUES (115, 14, 8, 'Add the previously cooked chicken breast back into the pan.', 'steps_images/MD_13_8.jpg');
INSERT INTO `recipe_step` VALUES (116, 14, 9, 'Stir well and taste for seasoning. If it’s too bland, add a little more light soy sauce or oyster sauce.', 'steps_images/MD_13_9.jpg');
INSERT INTO `recipe_step` VALUES (117, 14, 10, 'Finally, sprinkle some chopped green onions and enjoy!', 'steps_images/MD_13_10.jpg');
INSERT INTO `recipe_step` VALUES (118, 15, 1, 'Cut the chicken breast into small pieces.', 'steps_images/MD_14_1.jpg');
INSERT INTO `recipe_step` VALUES (119, 15, 2, 'Marinate the chicken with seasonings for about 30 minutes.', 'steps_images/MD_14_2.jpg');
INSERT INTO `recipe_step` VALUES (120, 15, 3, 'Dice the cucumber and carrot into small cubes. Cut the red chili into sections and remove the seeds. Prepare the Sichuan peppercorns and bean paste.', 'steps_images/MD_14_3.jpg');
INSERT INTO `recipe_step` VALUES (121, 15, 4, 'Prepare the sauce by mixing the ingredients well.', 'steps_images/MD_14_4.jpg');
INSERT INTO `recipe_step` VALUES (122, 15, 5, 'Heat a small amount of oil in a pan over low heat and stir-fry the peanuts until cooked. Let them cool and set aside.', 'steps_images/MD_14_5.jpg');
INSERT INTO `recipe_step` VALUES (123, 15, 6, 'In another pan, heat a small amount of oil over medium-high heat. Quickly stir-fry the marinated chicken pieces until they change color (about 10 seconds). Remove the chicken and set aside, keeping the oil in the pan.', 'steps_images/MD_14_6.jpg');
INSERT INTO `recipe_step` VALUES (124, 15, 7, 'Heat the oil in the pan until it\'s slightly hot, then lower the heat. Add the Sichuan peppercorns and red chili sections and stir-fry until fragrant. Add the bean paste and stir-fry until the oil turns red. Add the diced cucumber and carrot, increase the heat, and stir-fry quickly until softened. Add the cooked chicken and stir-fry for a moment. Pour the prepared sauce along the edge of the pan and stir-fry quickly over high heat to mix well. Finally, add the peanuts, toss everything together, and serve.', 'steps_images/MD_14_7.jpg');
INSERT INTO `recipe_step` VALUES (125, 16, 1, 'Soak the lamb chops in cold water for 2 hours, changing the water 2-3 times in between.', 'steps_images/Soup_1_1.jpg');
INSERT INTO `recipe_step` VALUES (126, 16, 2, 'Add cold water to a pot, then place the lamb chops, chopped green onions, ginger slices, and 2 tablespoons of white wine in the pot. Bring to a boil over high heat.', 'steps_images/Soup_1_2.jpg');
INSERT INTO `recipe_step` VALUES (127, 16, 3, 'Skim off the scum while cooking.', 'steps_images/Soup_1_3.jpg');
INSERT INTO `recipe_step` VALUES (128, 16, 4, 'After boiling for 2-3 minutes, remove the lamb chops.', 'steps_images/Soup_1_4.jpg');
INSERT INTO `recipe_step` VALUES (129, 16, 5, 'Remove the green onions and rinse the lamb chops with water.', 'steps_images/Soup_1_5.jpg');
INSERT INTO `recipe_step` VALUES (130, 16, 6, 'Add enough water to a clay pot, bring it to a boil, then add the lamb chops.', 'steps_images/Soup_1_6.jpg');
INSERT INTO `recipe_step` VALUES (131, 16, 7, 'Add chopped green onions, ginger slices, Sichuan peppercorns, dried chili peppers, wolfberries, and broken dates. Be sure not to add star anise or cinnamon.', 'steps_images/Soup_1_7.jpg');
INSERT INTO `recipe_step` VALUES (132, 16, 8, 'Skim off the scum while cooking. After the water comes to a boil, reduce the heat and continue cooking.', 'steps_images/Soup_1_8.jpg');
INSERT INTO `recipe_step` VALUES (133, 16, 9, 'Wash and peel half a white radish and half a carrot.', 'steps_images/Soup_1_9.jpg');
INSERT INTO `recipe_step` VALUES (134, 16, 10, 'Cut the carrot into pieces.', 'steps_images/Soup_1_10.jpg');
INSERT INTO `recipe_step` VALUES (135, 16, 11, 'Cut the white radish into pieces as well.', 'steps_images/Soup_1_11.jpg');
INSERT INTO `recipe_step` VALUES (136, 16, 12, 'Prepare finely chopped green onions, cilantro, white pepper powder, chili oil, salt, and monosodium glutamate as seasonings.', 'steps_images/Soup_1_12.jpg');
INSERT INTO `recipe_step` VALUES (137, 16, 13, 'After cooking the lamb chops for about 30-40 minutes, remove the green onions, and add the white radish and carrot. Continue cooking over low heat. If the soup level drops too much, add hot water as needed.', 'steps_images/Soup_1_13.jpg');
INSERT INTO `recipe_step` VALUES (138, 16, 14, 'Add the dates and goji berries. Continue to cook until the lamb chops are tender, about 1.5-2 hours. Add a little salt before serving.', 'steps_images/Soup_1_14.jpg');
INSERT INTO `recipe_step` VALUES (139, 16, 15, 'Add finely chopped green onions, cilantro, white pepper powder, chili oil, salt, and MSG as seasonings according to your taste.', 'steps_images/Soup_1_15.jpg');
INSERT INTO `recipe_step` VALUES (140, 17, 1, 'Prepare the ingredients. Cut the lamb chops into pieces and soak them in cold water for two hours, changing the water every 30 minutes.', 'steps_images/MD_15_1.jpg');
INSERT INTO `recipe_step` VALUES (141, 17, 2, 'Bring the lamb chops to a boil in cold water, adding green onions, ginger, and cooking wine. Once the water boils, cook for one minute, then remove the lamb and rinse it with warm water.', 'steps_images/MD_15_2.jpg');
INSERT INTO `recipe_step` VALUES (142, 17, 3, 'In a separate pot, add boiling water, the lamb chops, green onions, ginger, Sichuan peppercorns, dried chili peppers, cooking wine, and bring to a boil over high heat. Then reduce to low heat, cover, and simmer for one hour.', 'steps_images/MD_15_3.jpg');
INSERT INTO `recipe_step` VALUES (143, 17, 4, 'Remove the cooked lamb chops.', 'steps_images/MD_15_4.jpg');
INSERT INTO `recipe_step` VALUES (144, 17, 5, 'Heat a small amount of oil in a pan, and fry the cooked lamb chops until golden brown on the surface.', 'steps_images/MD_15_5.jpg');
INSERT INTO `recipe_step` VALUES (145, 17, 6, 'Add diced onions, cumin, sesame seeds, and chili powder. Stir-fry over low heat until fragrant. Then add salt, light soy sauce, and dark soy sauce.', 'steps_images/MD_15_6.jpg');
INSERT INTO `recipe_step` VALUES (146, 17, 7, 'Add green bell peppers, red bell peppers, and cilantro. Stir-fry until well combined.', 'steps_images/MD_15_7.jpg');
INSERT INTO `recipe_step` VALUES (147, 17, 8, 'Sprinkle with white sesame seeds and enjoy!', 'steps_images/MD_15_8.jpg');
INSERT INTO `recipe_step` VALUES (148, 18, 1, '250g beef tenderloin', 'steps_images/MD_16_1.jpg');
INSERT INTO `recipe_step` VALUES (149, 18, 2, 'Slice the beef thinly, then add a spoonful of salt to cold water. Soak the beef to remove the blood, and rinse it under clean water.', 'steps_images/MD_16_2.jpg');
INSERT INTO `recipe_step` VALUES (150, 18, 3, 'After washing and squeezing out excess water from the beef, season and marinate it. Add baking soda, salt, white pepper, oyster sauce, scallions, ginger, and cooking wine. Massage it well, then add cornstarch and mix thoroughly. This marinade will make the beef tender.', 'steps_images/MD_16_3.jpg');
INSERT INTO `recipe_step` VALUES (151, 18, 4, 'While marinating, prepare the side ingredients: wash the bean sprouts and celery, mince the garlic and ginger, and prepare dried chili peppers, Sichuan peppercorns, and broad bean paste.', 'steps_images/MD_16_4.jpg');
INSERT INTO `recipe_step` VALUES (152, 18, 5, 'Heat some oil in a pan over high heat, and stir-fry the dried chili peppers on low heat until they darken in color, then add the Sichuan peppercorns.', 'steps_images/MD_16_5.jpg');
INSERT INTO `recipe_step` VALUES (153, 18, 6, 'After stir-frying, allow the dried chili peppers and Sichuan peppercorns to cool on the cutting board, then chop them into small pieces.', 'steps_images/MD_16_6.jpg');
INSERT INTO `recipe_step` VALUES (154, 18, 7, 'In the same pan, heat some oil and stir-fry the prepared vegetables. Add a pinch of salt for seasoning. Once the bean sprouts soften, add hot water and simmer for a moment. Remove and drain the water, then arrange the vegetables in a bowl.', 'steps_images/MD_16_7.jpg');
INSERT INTO `recipe_step` VALUES (155, 18, 8, 'In the same pan, heat some oil and sauté the ginger and garlic. Add a tablespoon of broad bean paste and stir-fry on low heat until the red oil emerges. Add hot water to bring it to a boil, then adjust seasoning with salt, soy sauce, dark soy sauce, and sugar to taste. Add the marinated beef and cook until it turns color, then immediately remove and place the beef in the bowl.', 'steps_images/MD_16_8.jpg');
INSERT INTO `recipe_step` VALUES (156, 18, 9, 'Once the broth is boiling, skim off any foam and pour the clear broth into the bowl. Sprinkle the chopped chili peppers and minced garlic on top. Heat a spoonful of oil and pour it over the chili to release the fragrance of the seasonings.', 'steps_images/MD_16_9.jpg');
INSERT INTO `recipe_step` VALUES (157, 18, 10, 'Your delicious Spicy Boiled Beef is ready! Finally, sprinkle some white sesame seeds on top and enjoy!', 'steps_images/MD_16_10.jpg');
INSERT INTO `recipe_step` VALUES (158, 19, 1, 'Clean the carp, pat it dry with kitchen paper. Heat the pan, then heat the cooking oil to about 80%. Add ginger slices and fry for a few seconds, then add the carp and pan-fry on medium heat until both sides are golden brown.', 'steps_images/MD_17_1.jpg');
INSERT INTO `recipe_step` VALUES (159, 19, 2, 'Add garlic, Sichuan peppercorns, and dried chili peppers, and continue frying on low heat until fragrant.', 'steps_images/MD_17_2.jpg');
INSERT INTO `recipe_step` VALUES (160, 19, 3, 'Add cooking wine, soy sauce, dark soy sauce, salt, and sugar, then add enough water to cover the fish. Bring it to a boil, then add green onions. Cover the pot and simmer on medium heat for 10 minutes, then turn to low heat and cook for another 10 minutes.', 'steps_images/MD_17_3.jpg');
INSERT INTO `recipe_step` VALUES (161, 19, 4, 'Remove the crap and ingredients from the pot and plate them.', 'steps_images/MD_17_4.jpg');
INSERT INTO `recipe_step` VALUES (162, 19, 5, 'Add water starch to the sauce in the pan and cook on high heat to thicken the sauce. Once it reaches a thick consistency, pour it over the fish.', 'steps_images/MD_17_5.jpg');
INSERT INTO `recipe_step` VALUES (163, 19, 6, 'Garnish with chopped green onions, and your braised fish is ready to serve!', 'steps_images/MD_17_6.jpg');
INSERT INTO `recipe_step` VALUES (164, 20, 1, 'Prepare the shrimp, green onions, ginger, and garlic.', 'steps_images/MD_18_1.jpg');
INSERT INTO `recipe_step` VALUES (165, 20, 2, 'Finely chop the green onions, ginger, and garlic.', 'steps_images/MD_18_2.jpg');
INSERT INTO `recipe_step` VALUES (166, 20, 3, 'Remove the shrimp heads and whiskers.', 'steps_images/MD_18_3.jpg');
INSERT INTO `recipe_step` VALUES (167, 20, 4, 'To devein the shrimp, insert a toothpick between the 2nd and 3rd segments.', 'steps_images/MD_18_4.jpg');
INSERT INTO `recipe_step` VALUES (168, 20, 5, 'Lift the toothpick to pull out the shrimp vein.', 'steps_images/MD_18_5.jpg');
INSERT INTO `recipe_step` VALUES (169, 20, 6, 'Place the cleaned shrimp in a bowl and set aside.', 'steps_images/MD_18_6.jpg');
INSERT INTO `recipe_step` VALUES (170, 20, 7, 'Next, prepare the sauce: add two tablespoons of light soy sauce.', 'steps_images/MD_18_7.jpg');
INSERT INTO `recipe_step` VALUES (171, 20, 8, 'Add one tablespoon of cooking wine.', 'steps_images/MD_18_8.jpg');
INSERT INTO `recipe_step` VALUES (172, 20, 9, 'Add half a tablespoon of dark soy sauce.', 'steps_images/MD_18_9.jpg');
INSERT INTO `recipe_step` VALUES (173, 20, 10, 'Add one tablespoon of oyster sauce.', 'steps_images/MD_18_10.jpg');
INSERT INTO `recipe_step` VALUES (174, 20, 11, 'Add half a tablespoon of white vinegar.', 'steps_images/MD_18_11.jpg');
INSERT INTO `recipe_step` VALUES (175, 20, 12, 'Add one tablespoon of ketchup.', 'steps_images/MD_18_12.jpg');
INSERT INTO `recipe_step` VALUES (176, 20, 13, 'Add half a tablespoon of sugar.', 'steps_images/MD_18_13.jpg');
INSERT INTO `recipe_step` VALUES (177, 20, 14, 'Add 4–5 tablespoons of room-temperature water.', 'steps_images/MD_18_14.jpg');
INSERT INTO `recipe_step` VALUES (178, 20, 15, 'Stir well until fully combined.', 'steps_images/MD_18_15.jpg');
INSERT INTO `recipe_step` VALUES (179, 20, 16, 'Heat a pan, add cooking oil, and sauté the green onions, ginger, and garlic until fragrant.', 'steps_images/MD_18_16.jpg');
INSERT INTO `recipe_step` VALUES (180, 20, 17, 'Add the shrimp and stir-fry until both sides turn red.', 'steps_images/MD_18_17.jpg');
INSERT INTO `recipe_step` VALUES (181, 20, 18, 'Pour in the prepared sauce.', 'steps_images/MD_18_18.jpg');
INSERT INTO `recipe_step` VALUES (182, 20, 19, 'Cover the pan and let it simmer for two minutes.', 'steps_images/MD_18_19.jpg');
INSERT INTO `recipe_step` VALUES (183, 20, 20, 'Uncover the pan and increase the heat to reduce the sauce.', 'steps_images/MD_18_20.jpg');
INSERT INTO `recipe_step` VALUES (184, 20, 21, 'Transfer to a plate.', 'steps_images/MD_18_21.jpg');
INSERT INTO `recipe_step` VALUES (185, 20, 22, 'Garnish with chopped green onions.', 'steps_images/MD_18_22.jpg');
INSERT INTO `recipe_step` VALUES (186, 21, 1, 'Prepare three eggs, one potato, and one carrot.', 'steps_images/MD_19_1.jpg');
INSERT INTO `recipe_step` VALUES (187, 21, 2, 'Shred the potato and carrot and set them aside.', 'steps_images/MD_19_2.jpg');
INSERT INTO `recipe_step` VALUES (188, 21, 3, 'Add an appropriate amount of salt, pepper, and starch.', 'steps_images/MD_19_3.jpg');
INSERT INTO `recipe_step` VALUES (189, 21, 4, 'Heat the pan slightly and add a small amount of olive oil. Reduce to low heat, then place the shredded potatoes in a hollow circular shape.', 'steps_images/MD_19_4.jpg');
INSERT INTO `recipe_step` VALUES (190, 21, 5, 'Crack the eggs into the hollow center.', 'steps_images/MD_19_5.jpg');
INSERT INTO `recipe_step` VALUES (191, 21, 6, 'Turn to medium heat. After one or two minutes, if the bottom loosens, flip it over.', 'steps_images/MD_19_6.jpg');
INSERT INTO `recipe_step` VALUES (192, 21, 7, 'Continue frying on medium heat after flipping. You can flip it multiple times until the shredded potatoes are fully cooked.', 'steps_images/MD_19_7.jpg');
INSERT INTO `recipe_step` VALUES (193, 21, 8, 'It’s ready to enjoy!', 'steps_images/MD_19_8.jpg');
INSERT INTO `recipe_step` VALUES (194, 22, 1, 'Descale, gut, and clean the perch, then cut it in half lengthwise and remove the head.', 'steps_images/MD_20_1.jpg');
INSERT INTO `recipe_step` VALUES (195, 22, 2, 'Cut both the fish head and body into strips or chunks, then place them in a small bowl.', 'steps_images/MD_20_2.jpg');
INSERT INTO `recipe_step` VALUES (196, 22, 3, 'Add 1 tablespoon of cooking wine, 2 tablespoons of light soy sauce, a pinch of salt, 0.5 tablespoon of oyster sauce, a little white pepper, julienned ginger, and chopped scallions. Mix well and let it marinate for 20-30 minutes.', 'steps_images/MD_20_3.jpg');
INSERT INTO `recipe_step` VALUES (197, 22, 4, 'While the fish is marinating, prepare the ingredients: mince the ginger and garlic, cut half an onion into chunks, and slice the tofu.', 'steps_images/MD_20_4.jpg');
INSERT INTO `recipe_step` VALUES (198, 22, 5, 'Heat an appropriate amount of oil in a pan and pan-fry the tofu until both sides are golden brown. Remove and set aside.', 'steps_images/MD_20_5.jpg');
INSERT INTO `recipe_step` VALUES (199, 22, 6, 'In the same pan, heat a little oil and sauté the ginger, garlic, chili peppers, and Sichuan peppercorns until fragrant.', 'steps_images/MD_20_6.jpg');
INSERT INTO `recipe_step` VALUES (200, 22, 7, 'Add the onion chunks and stir-fry briefly before turning off the heat.', 'steps_images/MD_20_7.jpg');
INSERT INTO `recipe_step` VALUES (201, 22, 8, 'Transfer all the sautéed ingredients into a small clay pot, spreading them evenly.', 'steps_images/MD_20_8.jpg');
INSERT INTO `recipe_step` VALUES (202, 22, 9, 'Place the pan-fried tofu on top of the onions, then sprinkle a little salt for seasoning.', 'steps_images/MD_20_9.jpg');
INSERT INTO `recipe_step` VALUES (203, 22, 10, 'Add the marinated bass on top, spreading it out evenly.', 'steps_images/MD_20_10.jpg');
INSERT INTO `recipe_step` VALUES (204, 22, 11, 'Pour a small amount of water along the sides of the pot.', 'steps_images/MD_20_11.jpg');
INSERT INTO `recipe_step` VALUES (205, 22, 12, 'Cover with a lid, bring to a boil over medium-high heat, then reduce to the lowest heat and simmer for 10-12 minutes.', 'steps_images/MD_20_12.jpg');
INSERT INTO `recipe_step` VALUES (206, 22, 13, 'Finally, sprinkle chopped scallions on top, cover again, and let it steam for a few more seconds before serving.', 'steps_images/MD_20_13.jpg');
INSERT INTO `recipe_step` VALUES (207, 23, 1, 'Place the live crabs in cold water for about ten minutes to wash away any sand on their shells.', 'steps_images/MD_21_1.jpg');
INSERT INTO `recipe_step` VALUES (208, 23, 2, 'Use a toothbrush to carefully clean the crabs. Place them belly up, sprinkle a little salt, and steam for about 15 minutes.', 'steps_images/MD_21_2.jpg');
INSERT INTO `recipe_step` VALUES (209, 23, 3, 'Dipping sauce: minced ginger, minced garlic, sesame oil, soy sauce, and a splash of vinegar.', 'steps_images/MD_21_3.jpg');
INSERT INTO `recipe_step` VALUES (210, 24, 1, 'Soak the wood ear mushrooms in water until rehydrated, then rinse thoroughly. Blanch briefly in boiling water, then drain well.', 'steps_images/APP_2_1.jpg');
INSERT INTO `recipe_step` VALUES (211, 24, 2, 'Wash the cucumber, lightly smash it, and cut it into small pieces.', 'steps_images/APP_2_2.jpg');
INSERT INTO `recipe_step` VALUES (212, 24, 3, 'Prepare the seasoning: minced garlic, chopped chili peppers, and chili powder.', 'steps_images/APP_2_3.jpg');
INSERT INTO `recipe_step` VALUES (213, 24, 4, 'Heat oil until hot, then pour it over the seasoning. Add soy sauce, black vinegar, chicken powder, salt, and sugar, and mix well.', 'steps_images/APP_2_4.jpg');
INSERT INTO `recipe_step` VALUES (214, 24, 5, 'Combine the wood ear and cucumber in a bowl.', 'steps_images/APP_2_5.jpg');
INSERT INTO `recipe_step` VALUES (215, 24, 6, 'Drizzle the prepared seasoning sauce over them.', 'steps_images/APP_2_6.jpg');
INSERT INTO `recipe_step` VALUES (216, 24, 7, 'Mix thoroughly and enjoy!', 'steps_images/APP_2_7.jpg');
INSERT INTO `recipe_step` VALUES (217, 25, 1, 'Place the chicken breasts in cold water, add ginger slices, star anise, green onion, and a tablespoon of cooking wine to remove the odor.', 'steps_images/APP_1_1.jpg');
INSERT INTO `recipe_step` VALUES (218, 25, 2, 'Once the water boils, cook for another two minutes, then remove the chicken breasts and let them cool. Shred the chicken into pieces and set aside.', 'steps_images/APP_1_2.jpg');
INSERT INTO `recipe_step` VALUES (219, 25, 3, 'Prepare the ingredients: cilantro, shredded cucumber, garlic, chili powder, small chili peppers, a little sugar, and chicken essence.', 'steps_images/APP_1_3.jpg');
INSERT INTO `recipe_step` VALUES (220, 25, 4, 'Heat the oil (3 tablespoons of peanut oil + a little sesame oil + a bit of Sichuan pepper oil) and pour over the mixture.', 'steps_images/APP_1_4.jpg');
INSERT INTO `recipe_step` VALUES (221, 25, 5, 'Add two tablespoons of soy sauce and two tablespoons of vinegar.', 'steps_images/APP_1_5.jpg');
INSERT INTO `recipe_step` VALUES (222, 25, 6, 'Add a pinch of salt.', 'steps_images/APP_1_6.jpg');
INSERT INTO `recipe_step` VALUES (223, 25, 7, 'Add half a tablespoon of oyster sauce and mix well.', 'steps_images/APP_1_7.jpg');
INSERT INTO `recipe_step` VALUES (224, 25, 8, 'Pour the prepared sauce mixture over the shredded chicken, and toss in the cilantro and cucumber.', 'steps_images/APP_1_8.jpg');
INSERT INTO `recipe_step` VALUES (225, 25, 9, 'All done, enjoy your delicious dish!', 'steps_images/APP_1_9.jpg');
INSERT INTO `recipe_step` VALUES (226, 26, 1, 'Take the fresh frozen lamb leg out of the fridge and soak it in cold water to thaw.', 'steps_images/Soup_2_1.jpg');
INSERT INTO `recipe_step` VALUES (227, 26, 2, 'Once thawed, cut the lamb into small chunks.', 'steps_images/Soup_2_2.jpg');
INSERT INTO `recipe_step` VALUES (228, 26, 3, 'Blanching: Place the lamb in a pot, add cold water, 15g of cooking wine, 5g of fresh ginger, a large piece of dried tangerine peel, and 1g of Sichuan peppercorns. Bring to a boil over high heat.', 'steps_images/Soup_2_3.jpg');
INSERT INTO `recipe_step` VALUES (229, 26, 4, 'Once the water boils, leave the pot uncovered to blanch, skimming off the scum.', 'steps_images/Soup_2_4.jpg');
INSERT INTO `recipe_step` VALUES (230, 26, 5, 'After 1 minute of blanching, remove the lamb and transfer it to a clay pot.', 'steps_images/Soup_2_5.jpg');
INSERT INTO `recipe_step` VALUES (231, 26, 6, 'Immediately pour in about 1300ml of pre-boiled water.', 'steps_images/Soup_2_6.jpg');
INSERT INTO `recipe_step` VALUES (232, 26, 7, 'Add 5g of peeled ginger slices and three sections of green onions.', 'steps_images/Soup_2_7.jpg');
INSERT INTO `recipe_step` VALUES (233, 26, 8, 'Cover the clay pot and start simmering. Once the water boils, reduce the heat to medium.', 'steps_images/Soup_2_8.jpg');
INSERT INTO `recipe_step` VALUES (234, 26, 9, 'After 20 minutes, remove the green onion sections and continue simmering with the lid on.', 'steps_images/Soup_2_9.jpg');
INSERT INTO `recipe_step` VALUES (235, 26, 10, 'After 1 hour and 10 minutes, open the pot lid. The lamb soup should now have turned a beautiful milky white.', 'steps_images/Soup_2_10.jpg');
INSERT INTO `recipe_step` VALUES (236, 26, 11, 'Add the pre-cut radish chunks and simmer for another 10 minutes, then add an appropriate amount of salt and simmer for another 5 minutes or so.', 'steps_images/Soup_2_11.jpg');
INSERT INTO `recipe_step` VALUES (237, 26, 12, 'This is what it looks like once fully cooked.', 'steps_images/Soup_2_12.jpg');
INSERT INTO `recipe_step` VALUES (238, 26, 13, 'Transfer to a serving bowl and garnish with chopped green onions.', 'steps_images/Soup_2_13.jpg');
INSERT INTO `recipe_step` VALUES (239, 27, 1, 'Soak the dried Beancurd Sticks and black fungus in advance.', 'steps_images/APP_4_1.jpg');
INSERT INTO `recipe_step` VALUES (240, 27, 2, 'Cut the dried Beancurd Sticks into your desired length.', 'steps_images/APP_4_2.jpg');
INSERT INTO `recipe_step` VALUES (241, 27, 3, 'Bring water to a boil, then add the black fungus and the Beancurd Sticks. Cook for 3–5 minutes, then rinse with cold water and drain well.', 'steps_images/APP_4_3.jpg');
INSERT INTO `recipe_step` VALUES (242, 27, 4, 'Julienne the red pepper, finely chop the chili peppers, and cut the cilantro into sections.', 'steps_images/APP_4_4.jpg');
INSERT INTO `recipe_step` VALUES (243, 27, 5, 'Drizzle hot oil over the ingredients.', 'steps_images/APP_4_5.jpg');
INSERT INTO `recipe_step` VALUES (244, 27, 6, 'Add salt, soy sauce, vinegar, sugar, sesame oil, chili oil, and Sichuan pepper oil. Mix everything well.', 'steps_images/APP_4_6.jpg');
INSERT INTO `recipe_step` VALUES (245, 27, 7, 'Pour the prepared sauce over the ingredients.', 'steps_images/APP_4_7.jpg');
INSERT INTO `recipe_step` VALUES (246, 27, 8, 'Toss everything together until evenly coated.', 'steps_images/APP_4_8.jpg');
INSERT INTO `recipe_step` VALUES (247, 27, 9, 'Enjoy your delicious dish!', 'steps_images/APP_4_9.jpg');
INSERT INTO `recipe_step` VALUES (248, 28, 1, 'Rinse the fresh shrimp in water twice.', 'steps_images/APP_5_1.jpg');
INSERT INTO `recipe_step` VALUES (249, 28, 2, 'Bring a pot of water to a boil, then add the shrimp along with 4 slices of ginger and 20 Sichuan peppercorns.', 'steps_images/APP_5_2.jpg');
INSERT INTO `recipe_step` VALUES (250, 28, 3, 'Transfer the cooked shrimp to an ice water bath and let them chill for 5–10 minutes.', 'steps_images/APP_5_3.jpg');
INSERT INTO `recipe_step` VALUES (251, 28, 4, 'Sauce: Mix 1 tablespoon of white sugar, 4 tablespoons of light soy sauce, 1 tablespoon of oyster sauce, 2 tablespoons of vinegar, 2g of white pepper, 1 tablespoon of Sichuan pepper oil, and 2 tablespoons of hot oil.', 'steps_images/APP_5_4.jpg');
INSERT INTO `recipe_step` VALUES (252, 28, 5, 'Peel the shrimp, soak them in the sauce for 30 minutes, and enjoy!', 'steps_images/APP_5_5.jpg');
INSERT INTO `recipe_step` VALUES (253, 29, 1, 'Slice the tofu and drain any excess water.', 'steps_images/APP_6_1.jpg');
INSERT INTO `recipe_step` VALUES (254, 29, 2, 'In a bowl, add chopped chili peppers, white sesame seeds, pepper salt, white pepper powder, yellow rock sugar powder, chili powder, salt, and MSG.', 'steps_images/APP_6_2.jpg');
INSERT INTO `recipe_step` VALUES (255, 29, 3, 'Heat oil in a pan and briefly fry Sichuan peppercorns.', 'steps_images/APP_6_3.jpg');
INSERT INTO `recipe_step` VALUES (256, 29, 4, 'Pour the hot oil along with the Sichuan peppercorns into the bowl, then add soy sauce, vegetarian oyster sauce, and vinegar. Stir well.', 'steps_images/APP_6_4.jpg');
INSERT INTO `recipe_step` VALUES (257, 29, 5, 'Drizzle the mixture over the tofu and sprinkle with chopped Coriander', 'steps_images/APP_6_5.jpg');
INSERT INTO `recipe_step` VALUES (258, 29, 6, 'You can also fry peanuts together with the Sichuan peppercorns in Step 3.', 'steps_images/APP_6_6.jpg');
INSERT INTO `recipe_step` VALUES (259, 29, 7, 'Plate and enjoy!', 'steps_images/APP_6_7.jpg');
INSERT INTO `recipe_step` VALUES (260, 30, 1, 'Soak the dried kelp in water until softened, then rinse thoroughly', 'steps_images/APP_7_1.jpg');
INSERT INTO `recipe_step` VALUES (261, 30, 2, 'Cut the kelp into small strips, boil until cooked, and remove from the pot.', 'steps_images/APP_7_2.jpg');
INSERT INTO `recipe_step` VALUES (262, 30, 3, 'Rinse with cold water, drain well, and set aside.', 'steps_images/APP_7_3.jpg');
INSERT INTO `recipe_step` VALUES (263, 30, 4, 'Combine minced ginger, minced garlic, chopped chili, chili flakes, sesame seeds, and cilantro in a bowl.', 'steps_images/APP_7_4.jpg');
INSERT INTO `recipe_step` VALUES (264, 30, 5, 'Pour hot oil over the mixture.', 'steps_images/APP_7_5.jpg');
INSERT INTO `recipe_step` VALUES (265, 30, 6, 'Add soy sauce, black vinegar, a pinch of salt, chicken bouillon, and a bit of sugar.', 'steps_images/APP_7_6.jpg');
INSERT INTO `recipe_step` VALUES (266, 30, 7, 'Add the kelp strips and mix well until evenly coated.', 'steps_images/APP_7_7.jpg');
INSERT INTO `recipe_step` VALUES (267, 30, 8, 'Garnish with cilantro leaves and serve.', 'steps_images/APP_7_8.jpg');
INSERT INTO `recipe_step` VALUES (268, 31, 1, 'Soak the Black Fungus until softened, then boil the enoki mushrooms and Black Fungus. Blanch the beef slices in boiling water until just cooked. Arrange the Black Fungus and enoki mushrooms as the base, then place the beef slices on top.', 'steps_images/APP_8_1.jpg');
INSERT INTO `recipe_step` VALUES (269, 31, 2, 'Finely chop the red chili peppers, green chili peppers, and garlic.', 'steps_images/APP_8_2.jpg');
INSERT INTO `recipe_step` VALUES (270, 31, 3, 'Add two spoonfuls of chili powder.', 'steps_images/APP_8_3.jpg');
INSERT INTO `recipe_step` VALUES (271, 31, 4, 'Add one spoonful of white sesame seeds.', 'steps_images/APP_8_4.jpg');
INSERT INTO `recipe_step` VALUES (272, 31, 5, 'Add three spoonfuls of light soy sauce.', 'steps_images/APP_8_5.jpg');
INSERT INTO `recipe_step` VALUES (273, 31, 6, 'Add one spoonful of oyster sauce and mix well.', 'steps_images/APP_8_6.jpg');
INSERT INTO `recipe_step` VALUES (274, 31, 7, 'Heat some cooking oil, then add Sichuan peppercorns and fry until fragrant.', 'steps_images/APP_8_7.jpg');
INSERT INTO `recipe_step` VALUES (275, 31, 8, 'Pour the hot oil over the seasoning mixture.', 'steps_images/APP_8_8.jpg');
INSERT INTO `recipe_step` VALUES (276, 31, 9, 'Mix the seasoning thoroughly.', 'steps_images/APP_8_9.jpg');
INSERT INTO `recipe_step` VALUES (277, 31, 10, 'Add one spoonful of the broth from boiling the enoki mushrooms and Black Fungus, drizzle it over the seasoning, and it\'s ready to serve! ', 'steps_images/APP_8_10.jpg');
INSERT INTO `recipe_step` VALUES (278, 32, 1, 'Cut the green onions into sections and place them in a bowl.', 'steps_images/Noodle_1_1.jpg');
INSERT INTO `recipe_step` VALUES (279, 32, 2, 'Add 2 tablespoons of light soy sauce.', 'steps_images/Noodle_1_2.jpg');
INSERT INTO `recipe_step` VALUES (280, 32, 3, 'Add 1 tablespoon of vinegar.', 'steps_images/Noodle_1_3.jpg');
INSERT INTO `recipe_step` VALUES (281, 32, 4, 'Add some sesame oil.', 'steps_images/Noodle_1_4.jpg');
INSERT INTO `recipe_step` VALUES (282, 32, 5, 'Bring water to a boil.', 'steps_images/Noodle_1_5.jpg');
INSERT INTO `recipe_step` VALUES (283, 32, 6, 'Pour the boiling water into the sauce bowl to make the noodle soup base.', 'steps_images/Noodle_1_6.jpg');
INSERT INTO `recipe_step` VALUES (284, 32, 7, 'In a separate small bowl, add half a bowl of cold water and crack in an egg. Steam it for 10 to 15 minutes.', 'steps_images/Noodle_1_7.jpg');
INSERT INTO `recipe_step` VALUES (285, 32, 8, 'Take it out when the time is up.', 'steps_images/Noodle_1_8.jpg');
INSERT INTO `recipe_step` VALUES (286, 32, 9, 'Pour out any excess water to give the egg a perfect shape. Alternatively, for convenience, you can simply cook the egg directly in the boiling water along with the noodles.', 'steps_images/Noodle_1_9.jpg');
INSERT INTO `recipe_step` VALUES (287, 32, 10, 'In another pot, cook the noodles.', 'steps_images/Noodle_1_10.jpg');
INSERT INTO `recipe_step` VALUES (288, 32, 11, 'Put the cooked noodles and eggs into the noodle soup base.', 'steps_images/Noodle_1_11.jpg');
INSERT INTO `recipe_step` VALUES (289, 33, 1, 'Bring water to a boil, then add the wide noodles.', 'steps_images/Noodle_2_1.jpg');
INSERT INTO `recipe_step` VALUES (290, 33, 2, 'Rinse the baby bok choy and set aside.', 'steps_images/Noodle_2_2.jpg');
INSERT INTO `recipe_step` VALUES (291, 33, 3, 'Finely chop the green onions.', 'steps_images/Noodle_2_3.jpg');
INSERT INTO `recipe_step` VALUES (292, 33, 4, 'Peel and mince the garlic.', 'steps_images/Noodle_2_4.jpg');
INSERT INTO `recipe_step` VALUES (293, 33, 5, 'Minced garlic should look like this (as shown in the Figure).', 'steps_images/Noodle_2_5.jpg');
INSERT INTO `recipe_step` VALUES (294, 33, 6, 'While cooking the noodles, blanch the baby bok choy and set aside.', 'steps_images/Noodle_2_6.jpg');
INSERT INTO `recipe_step` VALUES (295, 33, 7, 'Add soy sauce, vinegar, sugar, sesame oil to the bottom of a bowl.', 'steps_images/Noodle_2_7.jpg');
INSERT INTO `recipe_step` VALUES (296, 33, 8, 'Drain the noodles and toss them with the sauce.', 'steps_images/Noodle_2_8.jpg');
INSERT INTO `recipe_step` VALUES (297, 33, 9, 'Top with baby bok choy and other ingredients.', 'steps_images/Noodle_2_9.jpg');
INSERT INTO `recipe_step` VALUES (298, 33, 10, 'Heat oil in a pan, then pour the hot oil over the garlic and chili. Done!', 'steps_images/Noodle_2_10.jpg');
INSERT INTO `recipe_step` VALUES (299, 34, 1, 'Take three tablespoons of dry yellow soybean paste.', 'steps_images/Noodle_3_1.jpg');
INSERT INTO `recipe_step` VALUES (300, 34, 2, 'Dissolve the dry yellow soybean paste with chinese yellow wine, stirring in one direction.', 'steps_images/Noodle_3_2.jpg');
INSERT INTO `recipe_step` VALUES (301, 34, 3, 'Add three tablespoons of fermented soybean paste, and stir in one direction until well combined.', 'steps_images/Noodle_3_3.jpg');
INSERT INTO `recipe_step` VALUES (302, 34, 4, 'Add three tablespoons of sweet bean paste, and stir in one direction until fully mixed. The paste is now ready.', 'steps_images/Noodle_3_4.jpg');
INSERT INTO `recipe_step` VALUES (303, 34, 5, 'Cut the green parts of the green onions into large sections, slice the ginger into large pieces, and prepare star anise, bay leaves, cinnamon sticks, and Sichuan peppercorns.', 'steps_images/Noodle_3_5.jpg');
INSERT INTO `recipe_step` VALUES (304, 34, 6, 'Dice the pork belly, separating the fatty and lean parts. Set aside.', 'steps_images/Noodle_3_6.jpg');
INSERT INTO `recipe_step` VALUES (305, 34, 7, 'Finely chop the onion and the white parts of the green onions. Set aside.', 'steps_images/Noodle_3_7.jpg');
INSERT INTO `recipe_step` VALUES (306, 34, 8, 'Heat oil in a pan and add the prepared onions, ginger, and spices. Fry on low heat to infuse the oil with their aroma.', 'steps_images/Noodle_3_8.jpg');
INSERT INTO `recipe_step` VALUES (307, 34, 9, 'Continue frying until the green onions soften and turn golden. Then, remove all the spices from the pan.', 'steps_images/Noodle_3_9.jpg');
INSERT INTO `recipe_step` VALUES (308, 34, 10, 'Keep the heat low and add the fatty pork pieces.', 'steps_images/Noodle_3_10.jpg');
INSERT INTO `recipe_step` VALUES (309, 34, 11, 'Slowly render the fat and fry until the pork turns golden brown.', 'steps_images/Noodle_3_11.jpg');
INSERT INTO `recipe_step` VALUES (310, 34, 12, 'Add the lean pork and stir-fry together.', 'steps_images/Noodle_3_12.jpg');
INSERT INTO `recipe_step` VALUES (311, 34, 13, 'After one minute, add the chopped onions and continue stir-frying.', 'steps_images/Noodle_3_13.jpg');
INSERT INTO `recipe_step` VALUES (312, 34, 14, 'Keep the heat low and add the prepared paste in three batches. This is the first addition.', 'steps_images/Noodle_3_14.jpg');
INSERT INTO `recipe_step` VALUES (313, 34, 15, 'Add the second portion of the paste.', 'steps_images/Noodle_3_15.jpg');
INSERT INTO `recipe_step` VALUES (314, 34, 16, 'Add the third portion of the paste.', 'steps_images/Noodle_3_16.jpg');
INSERT INTO `recipe_step` VALUES (315, 34, 17, 'Continue stir-frying for a while, but do not exceed 30 minutes. Allow the rendered oil to blend into the paste. Then, add the chopped green onions and stir-fry until fragrant. Turn off the heat.', 'steps_images/Noodle_3_17.jpg');
INSERT INTO `recipe_step` VALUES (316, 34, 18, 'Transfer the patste to a bowl.', 'steps_images/Noodle_3_18.jpg');
INSERT INTO `recipe_step` VALUES (317, 34, 19, 'Bring the water to a boil.', 'steps_images/Noodle_3_19.jpg');
INSERT INTO `recipe_step` VALUES (318, 34, 20, 'While waiting for the water to boil, prepare julienned cucumber and julienned green radish.', 'steps_images/Noodle_3_20.jpg');
INSERT INTO `recipe_step` VALUES (319, 34, 21, 'Cook the noodles.', 'steps_images/Noodle_3_21.jpg');
INSERT INTO `recipe_step` VALUES (320, 34, 22, 'Done! An Authentic Beijing-style Fried sauce noodles is ready!', 'steps_images/Noodle_3_22.jpg');
INSERT INTO `recipe_step` VALUES (321, 35, 1, 'Soak the fresh shiitake mushrooms in light salted water for 10 minutes.', 'steps_images/Noodle_4_1.jpg');
INSERT INTO `recipe_step` VALUES (322, 35, 2, 'Rinse the Baby Bok Choy thoroughly with clean water.', 'steps_images/Noodle_4_2.jpg');
INSERT INTO `recipe_step` VALUES (323, 35, 3, 'Cut the shiitake mushrooms into small cubes.', 'steps_images/Noodle_4_3.jpg');
INSERT INTO `recipe_step` VALUES (324, 35, 4, 'Heat oil in a pan. Once it reaches about 60-70% heat, add the chopped shiitake mushrooms and stir-fry.', 'steps_images/Noodle_4_4.jpg');
INSERT INTO `recipe_step` VALUES (325, 35, 5, 'Add a pinch of salt. Once the mushrooms soften, their moisture will start to release, and their aroma will become more intense.', 'steps_images/Noodle_4_5.jpg');
INSERT INTO `recipe_step` VALUES (326, 35, 6, 'Continue stir-frying until the liquid from the mushrooms thickens slightly.', 'steps_images/Noodle_4_6.jpg');
INSERT INTO `recipe_step` VALUES (327, 35, 7, 'Add hot water and bring to a boil. Season with oyster sauce, soy sauce, and salt. Cover the lid, reduce the heat, and simmer for 5 minutes.', 'steps_images/Noodle_4_7.jpg');
INSERT INTO `recipe_step` VALUES (328, 35, 8, 'Remove the lid and add the noodles to the pot.', 'steps_images/Noodle_4_8.jpg');
INSERT INTO `recipe_step` VALUES (329, 35, 9, 'Cook the noodles until they are about 60-70% cooked, then add the Baby Bok Choy. Once the noodles reach about 80% cooked, it\'s ready to serve.', 'steps_images/Noodle_4_9.jpg');
INSERT INTO `recipe_step` VALUES (330, 35, 10, 'Toss a few slices of tomato into the pot and cook for a few seconds before removing them.', 'steps_images/Noodle_4_10.jpg');
INSERT INTO `recipe_step` VALUES (331, 35, 11, 'A steaming hot bowl of shiitake mushroom noodles is ready to be enjoyed!', 'steps_images/Noodle_4_11.jpg');
INSERT INTO `recipe_step` VALUES (332, 36, 1, 'Heat some butter in a wok.', 'steps_images/Noodle_5_1.jpg');
INSERT INTO `recipe_step` VALUES (333, 36, 2, 'Add the chopped tomatoes.', 'steps_images/Noodle_5_2.jpg');
INSERT INTO `recipe_step` VALUES (334, 36, 3, 'Stir-fry and mash the tomatoes', 'steps_images/Noodle_5_3.jpg');
INSERT INTO `recipe_step` VALUES (335, 36, 4, 'Cut the beef shank into chunks and blanch. Then, in a separate wok, sauté the garlic, ginger, and green onions until fragrant. Add the chili bean paste and stir-fry, followed by the beef shank.', 'steps_images/Noodle_5_4.jpg');
INSERT INTO `recipe_step` VALUES (336, 36, 5, 'Add water to the wok from step 3, then add onions, carrots, a small amount of cooking wine, and a little soy sauce. Bring to a boil over high heat, then lower the heat and simmer for one hour.', 'steps_images/Noodle_5_4.jpg');
INSERT INTO `recipe_step` VALUES (337, 36, 6, 'Cook the noodles.', 'steps_images/Noodle_5_5.jpg');
INSERT INTO `recipe_step` VALUES (338, 36, 7, 'Cook the baby bok choy.', 'steps_images/Noodle_5_6.jpg');
INSERT INTO `recipe_step` VALUES (339, 36, 8, 'Once the noodles and baby bok choy are done, drain them and mix with the broth. Sprinkle with sesame seeds and cilantro. Your dish is ready!', 'steps_images/Noodle_5_7.jpg');
INSERT INTO `recipe_step` VALUES (340, 37, 1, 'Prepare a handful of noodles, some sweet corn kernels, one small baby bok choy, one boiled egg, and two pieces of curry block. Devein the fresh shrimp, then marinate them with a little cooking wine, black pepper, and salt for ten minutes.', 'steps_images/Noodle_6_1.jpg');
INSERT INTO `recipe_step` VALUES (341, 37, 2, 'Heat cooking oil in a frying pan and add the shrimps.', 'steps_images/Noodle_6_2.jpg');
INSERT INTO `recipe_step` VALUES (342, 37, 3, 'Pan-fry the shrimp until golden brown, then remove them from the pan.', 'steps_images/Noodle_6_3.jpg');
INSERT INTO `recipe_step` VALUES (343, 37, 4, 'In the same pan, add water directly to the remaining oil. Once the water boils, add the corn kernels and curry blocks, stirring until fully dissolved. Bring to a boil and add a spoonful of dark soy sauce.', 'steps_images/Noodle_6_4.jpg');
INSERT INTO `recipe_step` VALUES (344, 37, 5, 'Add a spoonful of chili oil and let it simmer.', 'steps_images/Noodle_6_5.jpg');
INSERT INTO `recipe_step` VALUES (345, 37, 6, 'The finished curry sauce should look like the Figure shown.', 'steps_images/Noodle_6_6.jpg');
INSERT INTO `recipe_step` VALUES (346, 37, 7, 'In a separate pot, bring water to a boil and cook the noodles and bok choy. Once cooked, transfer them to a bowl.', 'steps_images/Noodle_6_7.jpg');
INSERT INTO `recipe_step` VALUES (347, 37, 8, 'Pour the prepared curry soup over the noodles, then top with the boiled egg and pan-fried shrimp. Enjoy!', 'steps_images/Noodle_6_8.jpg');
INSERT INTO `recipe_step` VALUES (348, 38, 1, 'Cook the noodles until done, then drain and rinse them with cold water.', 'steps_images/Noodle_7_1.jpg');
INSERT INTO `recipe_step` VALUES (349, 38, 2, 'Heat oil in a pan, then scramble the eggs once the oil is hot.', 'steps_images/Noodle_7_2.jpg');
INSERT INTO `recipe_step` VALUES (350, 38, 3, 'Add sliced sausages and baby bok choy, stir-frying for a few seconds.', 'steps_images/Noodle_7_3.jpg');
INSERT INTO `recipe_step` VALUES (351, 38, 4, 'Add the noodles to the pan.', 'steps_images/Noodle_7_4.jpg');
INSERT INTO `recipe_step` VALUES (352, 38, 5, 'Season with 1 spoon of oyster sauce, 2 spoons of light soy sauce, ½ spoon of dark soy sauce, and 1 spoon of chili oil. Stir well to combine.', 'steps_images/Noodle_7_5.jpg');
INSERT INTO `recipe_step` VALUES (353, 38, 6, 'Add a little chicken powder for extra flavor.', 'steps_images/Noodle_7_6.jpg');
INSERT INTO `recipe_step` VALUES (354, 38, 7, 'Sprinkle some chopped green onions on top.', 'steps_images/Noodle_7_7.jpg');
INSERT INTO `recipe_step` VALUES (355, 38, 8, 'All done! Time to enjoy your meal.', 'steps_images/Noodle_7_8.jpg');
INSERT INTO `recipe_step` VALUES (356, 39, 1, 'Prepare two tomatoes, two eggs, and noodles.', 'steps_images/Noodle_8_1.jpg');
INSERT INTO `recipe_step` VALUES (357, 39, 2, 'Beat the eggs until smooth, peel the tomatoes, and dice them.', 'steps_images/Noodle_8_2.jpg');
INSERT INTO `recipe_step` VALUES (358, 39, 3, 'Heat some cooking oil in a wok.', 'steps_images/Noodle_8_3.jpg');
INSERT INTO `recipe_step` VALUES (359, 39, 4, 'Once the oil is hot, add the diced tomatoes and a small spoonful of salt.', 'steps_images/Noodle_8_4.jpg');
INSERT INTO `recipe_step` VALUES (360, 39, 5, 'Stir-fry until the tomatoes break down into a slightly grainy, soft texture, then add water.', 'steps_images/Noodle_8_5.jpg');
INSERT INTO `recipe_step` VALUES (361, 39, 6, 'Pour in about 500ml of water and bring it to a boil.', 'steps_images/Noodle_8_6.jpg');
INSERT INTO `recipe_step` VALUES (362, 39, 7, 'Reduce to low heat once the water comes to a boil, then slowly drizzle in the beaten eggs.', 'steps_images/Noodle_8_7.jpg');
INSERT INTO `recipe_step` VALUES (363, 39, 8, 'Let the eggs set without stirring.', 'steps_images/Noodle_8_8.jpg');
INSERT INTO `recipe_step` VALUES (364, 39, 9, 'Once the eggs have solidified, gently break them apart with chopsticks and turn off the heat.', 'steps_images/Noodle_8_9.jpg');
INSERT INTO `recipe_step` VALUES (365, 39, 10, 'Season with salt, chicken bouillon, white pepper, and a drizzle of sesame oil.', 'steps_images/Noodle_8_10.jpg');
INSERT INTO `recipe_step` VALUES (366, 39, 11, 'In a separate pot, cook the noodles.', 'steps_images/Noodle_8_11.jpg');
INSERT INTO `recipe_step` VALUES (367, 39, 12, 'Once the noodles are cooked, transfer them to a bowl, ladle the tomato egg soup over them, sprinkle with chopped green onions, and enjoy!', 'steps_images/Noodle_8_12.jpg');
INSERT INTO `recipe_step` VALUES (368, 40, 1, 'Prepare all the ingredients.', 'steps_images/Noodle_9_1.jpg');
INSERT INTO `recipe_step` VALUES (369, 40, 2, 'Heat oil in a pan, add the minced pork, and stir-fry until cooked. Then, add doubanjiang (spicy bean paste) and fermented soybean paste, stirring until well combined.', 'steps_images/Noodle_9_2.jpg');
INSERT INTO `recipe_step` VALUES (370, 40, 3, 'Add the diced potatoes and carrots.', 'steps_images/Noodle_9_3.jpg');
INSERT INTO `recipe_step` VALUES (371, 40, 4, 'Pour in an appropriate amount of water and simmer until the potatoes and carrots are tender.', 'steps_images/Noodle_9_4.jpg');
INSERT INTO `recipe_step` VALUES (372, 40, 5, 'Mix cornstarch with water until smooth.', 'steps_images/Noodle_9_5.jpg');
INSERT INTO `recipe_step` VALUES (373, 40, 6, 'Pour the cornstarch mixture into the sauce and let it simmer.', 'steps_images/Noodle_9_6.jpg');
INSERT INTO `recipe_step` VALUES (374, 40, 7, 'Cook the noodles, then rinse them under cold water and place them in a bowl.', 'steps_images/Noodle_9_7.jpg');
INSERT INTO `recipe_step` VALUES (375, 40, 8, 'Pour the prepared sauce over the noodles and enjoy!', 'steps_images/Noodle_9_8.jpg');
INSERT INTO `recipe_step` VALUES (376, 41, 1, 'Heat oil in a wok, then stir-fry the sliced lamb with chopped scallions, shredded ginger, and Sichuan peppercorns until the lamb and scallions are slightly charred.', 'steps_images/Noodle_10_1.jpg');
INSERT INTO `recipe_step` VALUES (377, 41, 2, 'Add hot water, soaked black fungus, a pinch of salt, and white pepper. Simmer for 20 minutes, then add the noodles and cook until they are tender. Season with some granulated chicken flavor soup base mix and sesame oil.', 'steps_images/Noodle_10_2.jpg');
INSERT INTO `recipe_step` VALUES (378, 41, 3, 'Serve in a bowl, sprinkle with some chopped chives, and enjoy!', 'steps_images/Noodle_10_3.jpg');
INSERT INTO `recipe_step` VALUES (379, 42, 1, 'Prepare the ingredients: diced cucumber, diced carrot, chopped green onion, and tomato.', 'steps_images/Rice_1_1.jpg');
INSERT INTO `recipe_step` VALUES (380, 42, 2, 'Heat oil in a wok, then add a few Sichuan peppercorns and star anise. Stir-fry over low heat until fragrant.', 'steps_images/Rice_1_2.jpg');
INSERT INTO `recipe_step` VALUES (381, 42, 3, 'Keep the heat low and crack in an egg.', 'steps_images/Rice_1_3.jpg');
INSERT INTO `recipe_step` VALUES (382, 42, 4, 'Stir and scramble the egg as it cooks.', 'steps_images/Rice_1_4.jpg');
INSERT INTO `recipe_step` VALUES (383, 42, 5, 'Add the diced carrots and continue stir-frying.', 'steps_images/Rice_1_5.jpg');
INSERT INTO `recipe_step` VALUES (384, 42, 6, 'Add the steamed rice and a handful of chopped green onions, then stir-fry well.', 'steps_images/Rice_1_6.jpg');
INSERT INTO `recipe_step` VALUES (385, 42, 7, 'Drizzle in some light soy sauce and mix evenly.', 'steps_images/Rice_1_7.jpg');
INSERT INTO `recipe_step` VALUES (386, 42, 8, 'Add the diced cucumber and tomatoes and stir-fry briefly.', 'steps_images/Rice_1_8.jpg');
INSERT INTO `recipe_step` VALUES (387, 42, 9, 'Season with salt to taste.', 'steps_images/Rice_1_9.jpg');
INSERT INTO `recipe_step` VALUES (388, 42, 10, 'Stir everything evenly and serve hot! Enjoy!', 'steps_images/Rice_1_10.jpg');
INSERT INTO `recipe_step` VALUES (389, 43, 1, 'Prepare all the ingredients.', 'steps_images/Rice_2_1.jpg');
INSERT INTO `recipe_step` VALUES (390, 43, 2, 'Remove the heads of the shrimp, but keep them for later use. Devein the shrimp. Cut the cuttlefish into small pieces and set aside.', 'steps_images/Rice_2_2.jpg');
INSERT INTO `recipe_step` VALUES (391, 43, 3, 'Dice the yellow, red, and green bell peppers and set aside.', 'steps_images/Rice_2_3.jpg');
INSERT INTO `recipe_step` VALUES (392, 43, 4, 'Heat some cooking oil in a pan.', 'steps_images/Rice_2_4.jpg');
INSERT INTO `recipe_step` VALUES (393, 43, 5, 'Once the oil is hot, add the shrimp heads and sauté until they release their flavor. Then add the shrimp and cuttlefish.', 'steps_images/Rice_2_5.jpg');
INSERT INTO `recipe_step` VALUES (394, 43, 6, 'Add the diced bell peppers.', 'steps_images/Rice_2_6.jpg');
INSERT INTO `recipe_step` VALUES (395, 43, 7, 'Stir-fry until about 90% cooked, then add light soy sauce.', 'steps_images/Rice_2_7.jpg');
INSERT INTO `recipe_step` VALUES (396, 43, 8, 'Add the rice, a pinch of salt, and some white pepper. Remove the shrimp heads and sprinkle with chopped scallions.', 'steps_images/Rice_2_8.jpg');
INSERT INTO `recipe_step` VALUES (397, 43, 9, 'Serve it up and enjoy your meal!', 'steps_images/Rice_2_9.jpg');
INSERT INTO `recipe_step` VALUES (398, 44, 1, 'Prepare all the ingredients. Finely chop the beef and marinate it with cooking wine, salt, light soy sauce, oyster sauce, cornstarch, and sesame oil. Mix well and let it sit for 10 minutes. In a separate bowl, whisk the eggs and add a bit of fish sauce, pepper, and sesame oil.', 'steps_images/Rice_3_1.jpg');
INSERT INTO `recipe_step` VALUES (399, 44, 2, 'Heat some oil in a pan, then add the onions and minced beef. Stir-fry until fragrant, then add the chopped Chinese broccoli and continue stir-frying. Remove from the pan and set aside.', 'steps_images/Rice_3_2.jpg');
INSERT INTO `recipe_step` VALUES (400, 44, 3, ' Add oil to the heated pan and pour in half of the beaten eggs. Cook over medium heat until fragrant, then add the rice and stir-fry for about 30 seconds. Lower the heat, pour in the remaining eggs, and continue stir-frying. Add a pinch of salt and mix well.', 'steps_images/Rice_3_3.jpg');
INSERT INTO `recipe_step` VALUES (401, 44, 4, 'Add the previously stir-fried ingredients back into the pan, then toss in chopped green onions, cilantro, pepper, and sesame oil. Turn up the heat and stir-fry everything evenly.', 'steps_images/Rice_3_4.jpg');
INSERT INTO `recipe_step` VALUES (402, 44, 5, 'Transfer to a serving plate and enjoy!', 'steps_images/Rice_3_5.jpg');
INSERT INTO `recipe_step` VALUES (403, 45, 1, 'Steam the rice in advance. Peel and cut the eggplant into chunks, sprinkle with salt, let it sit for a while, then squeeze out some excess water.', 'steps_images/Rice_4_1.jpg');
INSERT INTO `recipe_step` VALUES (404, 45, 2, 'Add 1 tablespoon of cornstarch and coat the eggplant evenly.', 'steps_images/Rice_4_2.jpg');
INSERT INTO `recipe_step` VALUES (405, 45, 3, 'Mince the garlic, slice the chili peppers into small rings, and chop the green onions (separating the white and green parts).', 'steps_images/Rice_4_3.jpg');
INSERT INTO `recipe_step` VALUES (406, 45, 4, 'In a bowl, mix 1 teaspoon of sugar, 2 tablespoons of light soy sauce, 1 tablespoon of oyster sauce, 1 tablespoon of vinegar, and 1 tablespoon of fermented soybean paste.', 'steps_images/Rice_4_4.jpg');
INSERT INTO `recipe_step` VALUES (407, 45, 5, 'Add a small bowl of water and stir well.', 'steps_images/Rice_4_5.jpg');
INSERT INTO `recipe_step` VALUES (408, 45, 6, 'Heat a generous amount of oil in a pan, then deep-fry the eggplant until golden brown and fully cooked.', 'steps_images/Rice_4_6.jpg');
INSERT INTO `recipe_step` VALUES (409, 45, 7, 'Leave some oil in the pan, then sauté the minced garlic, chili peppers, and the white parts of the green onions until fragrant.', 'steps_images/Rice_4_7.jpg');
INSERT INTO `recipe_step` VALUES (410, 45, 8, 'Pour in the prepared sauce and bring it to a boil.', 'steps_images/Rice_4_8.jpg');
INSERT INTO `recipe_step` VALUES (411, 45, 9, 'Add the fried eggplant, stir well, and cook until the sauce thickens.', 'steps_images/Rice_4_9.jpg');
INSERT INTO `recipe_step` VALUES (412, 45, 10, 'Sprinkle with chopped green onions. ', 'steps_images/Rice_4_10.jpg');
INSERT INTO `recipe_step` VALUES (413, 45, 11, 'Finally, pour the eggplant and sauce over the steamed rice, and enjoy!', 'steps_images/Rice_4_11.jpg');
INSERT INTO `recipe_step` VALUES (414, 46, 1, 'Wait for the butter to soften, then place it in a bowl and mix it well.', 'steps_images/Dim Sum_1_1.jpg');
INSERT INTO `recipe_step` VALUES (415, 46, 2, 'Add the granulated sugar and continue mixing, then use a whisk to beat until the sugar is mostly dissolved.', 'steps_images/Dim Sum_1_2.jpg');
INSERT INTO `recipe_step` VALUES (416, 46, 3, 'Add the eggs in two batches.', 'steps_images/Dim Sum_1_3.jpg');
INSERT INTO `recipe_step` VALUES (417, 46, 4, 'Make sure to mix thoroughly after each addition until fully absorbed.', 'steps_images/Dim Sum_1_4.jpg');
INSERT INTO `recipe_step` VALUES (418, 46, 5, 'Add the cake flour and mix until smooth.', 'steps_images/Dim Sum_1_5.jpg');
INSERT INTO `recipe_step` VALUES (419, 46, 6, 'Divide the dough into two portions and roll each out into thin sheets.', 'steps_images/Dim Sum_1_6.jpg');
INSERT INTO `recipe_step` VALUES (420, 46, 7, 'Take some red bean paste and place it between two sheets of plastic wrap, then roll it out to about the same size as the dough sheets.', 'steps_images/Dim Sum_1_7.jpg');
INSERT INTO `recipe_step` VALUES (421, 46, 8, 'Place the rolled red bean paste on one of the dough sheets, then cover it with the other sheet.', 'steps_images/Dim Sum_1_8.jpg');
INSERT INTO `recipe_step` VALUES (422, 46, 9, 'Trim the excess edges to make the shape square.', 'steps_images/Dim Sum_1_9.jpg');
INSERT INTO `recipe_step` VALUES (423, 46, 10, 'Use a knife to make two vertical cuts evenly.', 'steps_images/Dim Sum_1_10.jpg');
INSERT INTO `recipe_step` VALUES (424, 46, 11, 'Then make three horizontal cuts evenly.', 'steps_images/Dim Sum_1_11.jpg');
INSERT INTO `recipe_step` VALUES (425, 46, 12, 'Take a small piece, brush the surface with egg wash, then place another small piece on top and press it down. Repeat with the others.', 'steps_images/Dim Sum_1_12.jpg');
INSERT INTO `recipe_step` VALUES (426, 46, 13, 'Arrange the pieces on a baking sheet, brush the surface with egg wash, sprinkle some white sesame seeds, and bake in a preheated oven at 170°C (338°F) for about 18-20 minutes, until golden brown on top.', 'steps_images/Dim Sum_1_13.jpg');
INSERT INTO `recipe_step` VALUES (427, 46, 14, 'Done! Ready to enjoy!', 'steps_images/Dim Sum_1_14.jpg');
INSERT INTO `recipe_step` VALUES (428, 47, 1, 'Mix the egg mixture, milk, and salt evenly, then add the mochi premix flour. Stir until fully combined with no dry flour, then knead in the softened butter until smooth.', 'steps_images/Dim Sum_2_1.jpg');
INSERT INTO `recipe_step` VALUES (429, 47, 2, 'Add black sesame seeds and continue kneading until well incorporated and smooth.', 'steps_images/Dim Sum_2_2.jpg');
INSERT INTO `recipe_step` VALUES (430, 47, 3, 'Divide the dough into 15 equal portions, about 25g each. Roll into balls and place them on a baking tray. Lightly spray the surface with water.', 'steps_images/Dim Sum_2_3.jpg');
INSERT INTO `recipe_step` VALUES (431, 47, 4, 'Preheat the oven and bake on the lower rack at 180°C for 20 minutes. Then lower the temperature to 165°C and bake for another 15 minutes.', 'steps_images/Dim Sum_2_4.jpg');
INSERT INTO `recipe_step` VALUES (432, 47, 5, 'After about 15 minutes, the mochi will fully expand.', 'steps_images/Dim Sum_2_5.jpg');
INSERT INTO `recipe_step` VALUES (433, 47, 6, 'Once baked, remove from the oven and let cool. Cut a small opening at the top of each mochi.', 'steps_images/Dim Sum_2_6.jpg');
INSERT INTO `recipe_step` VALUES (434, 47, 7, 'Soak the gelatin sheets in ice water until softened.', 'steps_images/Dim Sum_2_7.jpg');
INSERT INTO `recipe_step` VALUES (435, 47, 8, 'To prepare the custard filling, mix the egg yolks, heavy cream, milk, and sugar in a saucepan. Heat while stirring until small bubbles appear around the edges, then remove from heat.', 'steps_images/Dim Sum_2_8.jpg');
INSERT INTO `recipe_step` VALUES (436, 47, 9, 'Let the custard mixture cool to around 45-50°C, then add the softened gelatin and mix well. Strain the mixture for a smooth texture.', 'steps_images/Dim Sum_2_9.png');
INSERT INTO `recipe_step` VALUES (437, 47, 10, 'Pour the custard into the mochi openings and refrigerate for about 4 hours.', 'steps_images/Dim Sum_2_10.jpg');
INSERT INTO `recipe_step` VALUES (438, 47, 11, 'Once the custard is fully set, your mochi is ready to enjoy!', 'steps_images/Dim Sum_2_11.jpg');
INSERT INTO `recipe_step` VALUES (439, 48, 1, ' Remove the pits from the red dates and cut them into small pieces. Add 250g of glutinous rice flour and 200g of milk, then knead into a dough. Shape each small dough into a rectangle or a round shape. Steam over cold water for 20 minutes.', 'steps_images/Dim Sum_3_1.png');
INSERT INTO `recipe_step` VALUES (440, 48, 2, 'Enjoy!', 'steps_images/Dim Sum_3_2.jpg');
INSERT INTO `recipe_step` VALUES (441, 49, 1, 'Wash the mango thoroughly, peel it, and cut off the flesh.', 'steps_images/Dim Sum_4_1.jpg');
INSERT INTO `recipe_step` VALUES (442, 49, 2, 'Blend 400g of mango flesh into a smooth purée.', 'steps_images/Dim Sum_4_2.jpg');
INSERT INTO `recipe_step` VALUES (443, 49, 3, 'Add heavy cream and mix well.', 'steps_images/Dim Sum_4_3.jpg');
INSERT INTO `recipe_step` VALUES (444, 49, 4, 'Heat the milk and granulated sugar over a water bath until the sugar dissolves.', 'steps_images/Dim Sum_4_4.jpg');
INSERT INTO `recipe_step` VALUES (445, 49, 5, 'Add the softened gelatin sheets and stir until fully dissolved.', 'steps_images/Dim Sum_4_5.jpg');
INSERT INTO `recipe_step` VALUES (446, 49, 6, 'Let the milk mixture cool, then mix it with the mango purée.', 'steps_images/Dim Sum_4_6.jpg');
INSERT INTO `recipe_step` VALUES (447, 49, 7, 'Strain the mixture through a fine sieve.', 'steps_images/Dim Sum_4_7.jpg');
INSERT INTO `recipe_step` VALUES (448, 49, 8, 'Pour into cups and refrigerate for about 3 hours.', 'steps_images/Dim Sum_4_8.jpg');
INSERT INTO `recipe_step` VALUES (449, 49, 9, 'Your ultra-smooth mango pudding is ready to enjoy!', 'steps_images/Dim Sum_4_9.jpg');
INSERT INTO `recipe_step` VALUES (450, 50, 1, 'Pre-toast the cake flour and glutinous rice flour in a dry pan until fragrant. Let them cool completely before use', 'steps_images/Dim Sum_5_1.jpg');
INSERT INTO `recipe_step` VALUES (452, 50, 2, 'Squeeze out excess moisture from the rose jam, then mix it well with the toasted cake flour, glutinous rice flour, and lard until evenly combined. Divide the mixture into 20 equal portions (about 30g each), roll them into balls, cover with plastic wrap, and freeze for about 30 minutes.', 'steps_images/Dim Sum_5_2.jpg');
INSERT INTO `recipe_step` VALUES (453, 50, 3, 'To make the water dough, melt the lard and mix it with flour and sugar. Quickly pour in boiling water while stirring with chopsticks until a crumbly dough forms. Knead it into a smooth dough, cover with plastic wrap, and let it rest for about 20 minutes.', 'steps_images/Dim Sum_5_3.jpg');
INSERT INTO `recipe_step` VALUES (454, 50, 4, 'To make the oil dough, mix cake flour with lard until it forms a uniform dough. Then divide the water dough into 20 equal portions (about 23-24g each) and the oil dough into 20 portions (about 14.4g each). Cover with plastic wrap. Flatten each piece of water dough, place a portion of oil dough in the center, wrap it completely, and seal it. Repeat for all portions and cover with plastic wrap.', 'steps_images/Dim Sum_5_4.jpg');
INSERT INTO `recipe_step` VALUES (455, 50, 5, 'Press each wrapped dough ball flat with your palm, then roll it out into an oval shape (about 13-15 cm long) using a rolling pin. Roll it up from top to bottom, cover with plastic wrap, and let it rest for about 15 minutes.', 'steps_images/Dim Sum_5_5.jpg');
INSERT INTO `recipe_step` VALUES (456, 50, 6, 'Take out the rested dough rolls, press them flat again, and roll them out to about 18 cm in length. Cover with plastic wrap and let them rest for another 15 minutes.', 'steps_images/Dim Sum_5_6.jpg');
INSERT INTO `recipe_step` VALUES (457, 50, 7, 'To assemble the pastries, press each dough roll flat with your palm, then roll it out into a round shape. Place the rose filling in the center, gather the edges with your palm, and seal the dough tightly.', 'steps_images/Dim Sum_5_7.jpg');
INSERT INTO `recipe_step` VALUES (458, 50, 8, 'Place the filled dough into a mold and gently press it down with your hand.', 'steps_images/Dim Sum_5_8.jpg');
INSERT INTO `recipe_step` VALUES (459, 50, 9, 'Use a toothpick to poke 3-4 small holes around the edges of each pastry, then arrange them on a baking tray.', 'steps_images/Dim Sum_5_9.jpg');
INSERT INTO `recipe_step` VALUES (460, 50, 10, 'Bake in a preheated oven at 165°C (330°F) for about 25 minutes, placing the tray in the middle rack.', 'steps_images/Dim Sum_5_10.jpg');
INSERT INTO `recipe_step` VALUES (461, 50, 11, 'Once golden and crispy, the rose pastries are ready to enjoy!', 'steps_images/Dim Sum_5_11.jpg');
INSERT INTO `recipe_step` VALUES (462, 51, 1, 'Mix rice flour, glutinous rice flour, and white sugar in a bowl.', 'steps_images/Dim Sum_6_1.jpg');
INSERT INTO `recipe_step` VALUES (463, 51, 2, 'Add an appropriate amount of water.', 'steps_images/Dim Sum_6_2.jpg');
INSERT INTO `recipe_step` VALUES (464, 51, 3, 'Stir until well combined.', 'steps_images/Dim Sum_6_3.jpg');
INSERT INTO `recipe_step` VALUES (465, 51, 4, 'Wear disposable gloves and mix thoroughly by hand.', 'steps_images/Dim Sum_6_4.jpg');
INSERT INTO `recipe_step` VALUES (466, 51, 5, 'Line the bottom of an 8-inch square cake mold with parchment paper sheet.', 'steps_images/Dim Sum_6_5.jpg');
INSERT INTO `recipe_step` VALUES (467, 51, 6, 'Sift half of the flour mixture into the mold.', 'steps_images/Dim Sum_6_6.jpg');
INSERT INTO `recipe_step` VALUES (468, 51, 7, 'Smooth the surface evenly.', 'steps_images/Dim Sum_6_7.jpg');
INSERT INTO `recipe_step` VALUES (469, 51, 8, 'Sprinkle red bean paste over the flour layer.', 'steps_images/Dim Sum_6_8.jpg');
INSERT INTO `recipe_step` VALUES (470, 51, 9, 'Sift in the remaining flour mixture.', 'steps_images/Dim Sum_6_9.jpg');
INSERT INTO `recipe_step` VALUES (471, 51, 10, 'Smooth the surface again.', 'steps_images/Dim Sum_6_10.jpg');
INSERT INTO `recipe_step` VALUES (472, 51, 11, 'Cut into nine equal portions.', 'steps_images/Dim Sum_6_11.jpg');
INSERT INTO `recipe_step` VALUES (473, 51, 12, 'Sprinkle dried osmanthus flowers on top.', 'steps_images/Dim Sum_6_12.jpg');
INSERT INTO `recipe_step` VALUES (474, 51, 13, 'Cover the surface with a damp cloth.', 'steps_images/Dim Sum_6_13.jpg');
INSERT INTO `recipe_step` VALUES (475, 51, 14, 'Steam over high heat until water boiling, then reduce to medium heat and steam for 30 minutes.', 'steps_images/Dim Sum_6_14.jpg');
INSERT INTO `recipe_step` VALUES (476, 51, 15, 'Remove from the steamer.', 'steps_images/Dim Sum_6_15.jpg');
INSERT INTO `recipe_step` VALUES (477, 51, 16, 'Enjoy!', 'steps_images/Dim Sum_6_16.jpg');
INSERT INTO `recipe_step` VALUES (478, 52, 1, 'Remove the pits from 180g of red dates.', 'steps_images/Dim Sum_7_1.jpg');
INSERT INTO `recipe_step` VALUES (479, 52, 2, 'Add 160g of brown sugar.', 'steps_images/Dim Sum_7_2.jpg');
INSERT INTO `recipe_step` VALUES (480, 52, 3, 'Pour in 240g of milk.', 'steps_images/Dim Sum_7_3.jpg');
INSERT INTO `recipe_step` VALUES (481, 52, 4, 'Place everything into a saucepan.', 'steps_images/Dim Sum_7_4.jpg');
INSERT INTO `recipe_step` VALUES (482, 52, 5, 'Cook over low heat.', 'steps_images/Dim Sum_7_5.jpg');
INSERT INTO `recipe_step` VALUES (483, 52, 6, 'Keep stirring constantly to prevent sticking or burning.', 'steps_images/Dim Sum_7_6.jpg');
INSERT INTO `recipe_step` VALUES (484, 52, 7, 'Simmer until the red dates become soft and most of the liquid evaporates.', 'steps_images/Dim Sum_7_7.jpg');
INSERT INTO `recipe_step` VALUES (485, 52, 8, 'Let it cool, then add 8 eggs.', 'steps_images/Dim Sum_7_8.jpg');
INSERT INTO `recipe_step` VALUES (486, 52, 9, 'Whisk vigorously until the mixture triples in volume (about 8-10 minutes).', 'steps_images/Dim Sum_7_9.jpg');
INSERT INTO `recipe_step` VALUES (487, 52, 10, 'Sift in cake flour and baking powder, then mix until no dry flour remains.', 'steps_images/Dim Sum_7_10.jpg');
INSERT INTO `recipe_step` VALUES (488, 52, 11, 'Add corn oil and fold until well combined. Pour the batter into an 8-inch mold, sprinkle with white sesame seeds, and bake in a preheated oven at 150°C (middle rack) for 1 hour.', 'steps_images/Dim Sum_7_11.jpg');
INSERT INTO `recipe_step` VALUES (489, 52, 12, 'Done! Enjoy your cake.', 'steps_images/Dim Sum_7_12.jpg');
INSERT INTO `recipe_step` VALUES (490, 53, 1, 'Add crushed Laver, chopped cilantro, sesame oil, and soy sauce to a bowl.', 'steps_images/Soup_3_1.jpg');
INSERT INTO `recipe_step` VALUES (491, 53, 2, 'Bring some water to a boil.', 'steps_images/Soup_3_2.jpg');
INSERT INTO `recipe_step` VALUES (492, 53, 3, 'Once the water is boiling, add the egg.', 'steps_images/Soup_3_3.jpg');
INSERT INTO `recipe_step` VALUES (493, 53, 4, 'Add a little pepper to remove the egg’s raw smell.', 'steps_images/Soup_3_4.jpg');
INSERT INTO `recipe_step` VALUES (494, 53, 5, 'When the egg is fully cooked, pour everything into the bowl.', 'steps_images/Soup_3_5.jpg');
INSERT INTO `recipe_step` VALUES (495, 53, 6, 'All done! Enjoy your soup!', 'steps_images/Soup_3_6.jpg');
INSERT INTO `recipe_step` VALUES (496, 54, 1, 'Place the beef tenderloin and corn starch into a bowl.', 'steps_images/Soup_4_1.jpg');
INSERT INTO `recipe_step` VALUES (497, 54, 2, 'Mix and marinate for 5 minutes.', 'steps_images/Soup_4_2.jpg');
INSERT INTO `recipe_step` VALUES (498, 54, 3, 'Add oil and ginger into the soup maker, set it to 3 minutes/120°C/saute.', 'steps_images/Soup_4_3.jpg');
INSERT INTO `recipe_step` VALUES (499, 54, 4, 'Add the marinated beef tenderloin.', 'steps_images/Soup_4_4.jpg');
INSERT INTO `recipe_step` VALUES (500, 54, 5, 'Saute for 2 minutes 30 seconds/120°C/stirring speed 1.5.', 'steps_images/Soup_4_5.jpg');
INSERT INTO `recipe_step` VALUES (501, 54, 6, 'Add cooking wine and king oyster mushrooms, then saute for 2 minutes 30 seconds/120°C/stirring speed 1.', 'steps_images/Soup_4_6.jpg');
INSERT INTO `recipe_step` VALUES (502, 54, 7, 'Insert the butterfly whisk.', 'steps_images/Soup_4_7.jpg');
INSERT INTO `recipe_step` VALUES (503, 54, 8, 'Add the soft tofu.', 'steps_images/Soup_4_8.jpg');
INSERT INTO `recipe_step` VALUES (504, 54, 9, 'Add 600 grams of water.', 'steps_images/Soup_4_9.jpg');
INSERT INTO `recipe_step` VALUES (505, 54, 10, 'Add a block of broth concentrate.', 'steps_images/Soup_4_10.jpg');
INSERT INTO `recipe_step` VALUES (506, 54, 11, 'Heat for 8 minutes/Varoma/stirring speed 0.5.', 'steps_images/Soup_4_11.jpg');
INSERT INTO `recipe_step` VALUES (507, 54, 12, 'Cook for 2 minutes/Varoma/stirring speed 0.5 while slowly adding the cornstarch mixed with an appropriate amount of water to make a slurry.', 'steps_images/Soup_4_12.jpg');
INSERT INTO `recipe_step` VALUES (508, 54, 13, 'Gradually add the egg white.', 'steps_images/Soup_4_13.jpg');
INSERT INTO `recipe_step` VALUES (509, 54, 14, 'Light, nutritious, and full of color, aroma, and taste!', 'steps_images/Soup_4_14.jpg');
INSERT INTO `recipe_step` VALUES (510, 55, 1, 'Wash the spinach thoroughly and drain the water. Slice the ginger into thin strips.', 'steps_images/Soup_5_1.jpg');
INSERT INTO `recipe_step` VALUES (511, 55, 2, 'Heat oil in a pan.', 'steps_images/Soup_5_2.jpg');
INSERT INTO `recipe_step` VALUES (512, 55, 3, 'Fry the egg. Make sure the pan and oil are hot before frying.', 'steps_images/Soup_5_3.jpg');
INSERT INTO `recipe_step` VALUES (513, 55, 4, 'Fry the egg until it turns slightly golden and crispy, then remove from the pan.', 'steps_images/Soup_5_4.jpg');
INSERT INTO `recipe_step` VALUES (514, 55, 5, 'In the same pan with the oil used for frying the egg, sauté the ginger strips for a moment, then quickly add the prepared spinach and stir-fry. Add a bit of light soy sauce.', 'steps_images/Soup_5_5.jpg');
INSERT INTO `recipe_step` VALUES (515, 55, 6, 'Add some boiling water.', 'steps_images/Soup_5_6.jpg');
INSERT INTO `recipe_step` VALUES (516, 55, 7, 'Then, add the fried egg back into the pan.', 'steps_images/Soup_5_7.jpg');
INSERT INTO `recipe_step` VALUES (517, 55, 8, 'Add a bit more boiling water.', 'steps_images/Soup_5_8.jpg');
INSERT INTO `recipe_step` VALUES (518, 55, 9, 'Cover the pan and cook for 3-5 minutes.', 'steps_images/Soup_5_9.jpg');
INSERT INTO `recipe_step` VALUES (519, 55, 10, 'Add a small amount of oyster sauce and sesame oil.', 'steps_images/Soup_5_10.jpg');
INSERT INTO `recipe_step` VALUES (520, 55, 11, 'Enjoy this delicious spinach and egg soup.', 'steps_images/Soup_5_11.jpg');
INSERT INTO `recipe_step` VALUES (521, 56, 1, 'Prepare the meatball filling: 400g of pork shoulder, a small piece of yam (peeled and mashed), mix it with the minced pork, add salt, sugar, white pepper powder, oyster sauce, and cornstarch.', 'steps_images/Soup_6_1.jpg');
INSERT INTO `recipe_step` VALUES (522, 56, 2, 'Stir in one direction for about 2-3 minutes until the mixture becomes sticky and slightly elastic.', 'steps_images/Soup_6_2.jpg');
INSERT INTO `recipe_step` VALUES (523, 56, 3, 'Prepare the vegetables: Peel and slice winter melon, and prepare a small amount of cilantro and wolf berries.', 'steps_images/Soup_6_3.jpg');
INSERT INTO `recipe_step` VALUES (524, 56, 4, 'In a pot, add an appropriate amount of water, then squeeze out meatballs using your thumb and index finger and drop them into the pot. Cook over low heat until the meatballs float to the surface, then skim off the foam.', 'steps_images/Soup_6_4.jpg');
INSERT INTO `recipe_step` VALUES (525, 56, 5, 'Add the winter melon slices and cook for 2 minutes, then season with salt and white pepper powder.', 'steps_images/Soup_6_5.jpg');
INSERT INTO `recipe_step` VALUES (526, 56, 6, 'Add wolf berries and cook for 15 seconds, then remove from the pot and garnish with cilantro.', 'steps_images/Soup_6_6.jpg');
INSERT INTO `recipe_step` VALUES (527, 56, 7, 'Winter melon meatball soup is ready: The meatballs are tender, and the winter melon helps balance the richness of the dish.', 'steps_images/Soup_6_7.jpg');
INSERT INTO `recipe_step` VALUES (528, 57, 1, 'Cut the pork bones into pieces, add to cold water in a pot, and blanch with ginger, scallions, and cooking wine.', 'steps_images/Soup_7_1.jpg');
INSERT INTO `recipe_step` VALUES (529, 57, 2, 'Skim off the scum, remove the pork bones, and drain the water. Set aside.', 'steps_images/Soup_7_2.jpg');
INSERT INTO `recipe_step` VALUES (530, 57, 3, 'Heat a small amount of oil in a pan, add sliced ginger, and stir-fry the pork bones over medium-low heat until the surface turns slightly golden. Add a splash of cooking wine.', 'steps_images/Soup_7_3.jpg');
INSERT INTO `recipe_step` VALUES (531, 57, 4, 'Add boiling water to cover the ingredients.', 'steps_images/Soup_7_4.jpg');
INSERT INTO `recipe_step` VALUES (532, 57, 5, 'Reduce the heat to low, cover the pot, and simmer for about 2 hours.', 'steps_images/Soup_7_5.jpg');
INSERT INTO `recipe_step` VALUES (533, 57, 6, 'Continue simmering until the broth turns milky white, then add 1 spoon of chicken essence and salt to taste. Garnish with chopped scallions.', 'steps_images/Soup_7_6.jpg');
INSERT INTO `recipe_step` VALUES (534, 57, 7, 'Serve and enjoy!', 'steps_images/Soup_7_7.jpg');
INSERT INTO `recipe_step` VALUES (535, 58, 1, 'Cut the tofu into small pieces, remove the roots of the enoki mushrooms and wash them, then chop some green onions.', 'steps_images/Soup_8_1.jpg');
INSERT INTO `recipe_step` VALUES (536, 58, 2, 'Heat the pan, add oil, and fry two eggs.', 'steps_images/Soup_8_2.jpg');
INSERT INTO `recipe_step` VALUES (537, 58, 3, 'Use the oil from frying the eggs to sauté the green onions and enoki mushrooms.', 'steps_images/Soup_8_3.jpg');
INSERT INTO `recipe_step` VALUES (538, 58, 4, 'Return the fried eggs to the pan and break them up with a spatula.', 'steps_images/Soup_8_4.jpg');
INSERT INTO `recipe_step` VALUES (539, 58, 5, 'Add hot water, then season with salt, white pepper, and seafood seasoning powder.', 'steps_images/Soup_8_5.jpg');
INSERT INTO `recipe_step` VALUES (540, 58, 6, 'Once it boils, add the tofu.', 'steps_images/Soup_8_6.jpg');
INSERT INTO `recipe_step` VALUES (541, 58, 7, 'Cover the pot and cook for ten minutes to allow the soup to thicken.', 'steps_images/Soup_8_7.jpg');
INSERT INTO `recipe_step` VALUES (542, 58, 8, 'Pour the soup into bowls and sprinkle with cilantro.', 'steps_images/Soup_8_8.jpg');
INSERT INTO `recipe_step` VALUES (543, 59, 1, 'Wash and clean the hen, then rub salt all over its body. Place it in the refrigerator and chill for 20 minutes.', 'steps_images/Soup_9_1.jpg');
INSERT INTO `recipe_step` VALUES (544, 59, 2, 'Take the hen out of the fridge, rinse it again to remove the salt, and put it into a clay pot. Add green onion sections, ginger slices, cooking wine, and ginseng.', 'steps_images/Soup_9_2.jpg');
INSERT INTO `recipe_step` VALUES (545, 59, 3, 'Add water to the clay pot until it reaches the water level line. Bring it to a boil over high heat, then reduce to low heat and simmer.', 'steps_images/Soup_9_3.jpg');
INSERT INTO `recipe_step` VALUES (546, 59, 4, 'After simmering on low heat for 1 hour, add the red dates.', 'steps_images/Soup_9_4.jpg');
INSERT INTO `recipe_step` VALUES (547, 59, 5, 'Continue simmering for another 45-60 minutes, then add wolf berries and simmer for an additional 3 minutes.', 'steps_images/Soup_9_5.jpg');
INSERT INTO `recipe_step` VALUES (548, 59, 6, 'A nourishing and health-boosting ginseng hen soup is ready!', 'steps_images/Soup_9_6.jpg');
INSERT INTO `recipe_step` VALUES (549, 60, 1, 'Cut the green grapes off the stem, then add a tablespoon of flour and mix well.', 'steps_images/Drinks_1_1.jpg');
INSERT INTO `recipe_step` VALUES (550, 60, 2, 'Soak the green grapes in the flour water, gently tossing and shaking them with your hands for 1-2 minutes, then rinse them thoroughly under running water.', 'steps_images/Drinks_1_2.jpg');
INSERT INTO `recipe_step` VALUES (551, 60, 3, 'Cut the washed green grapes in half.', 'steps_images/Drinks_1_3.jpg');
INSERT INTO `recipe_step` VALUES (552, 60, 4, 'Place the green grapes in a cup and squeeze in the juice of half a lemon.', 'steps_images/Drinks_1_4.jpg');
INSERT INTO `recipe_step` VALUES (553, 60, 5, 'Press to extract the juice.', 'steps_images/Drinks_1_5.jpg');
INSERT INTO `recipe_step` VALUES (554, 60, 6, 'Add lemon slices and ice cubes.', 'steps_images/Drinks_1_6.jpg');
INSERT INTO `recipe_step` VALUES (555, 60, 7, 'Pour in Sprite.', 'steps_images/Drinks_1_7.jpg');
INSERT INTO `recipe_step` VALUES (556, 60, 8, 'Finally, slowly pour in the cold brew coffee.', 'steps_images/Drinks_1_8.jpg');
INSERT INTO `recipe_step` VALUES (557, 61, 1, 'Add 1 to 2 tablespoons of hot water to the matcha powder and stir until the powder dissolves completely.', 'steps_images/Drinks_2_1.jpg');
INSERT INTO `recipe_step` VALUES (558, 61, 2, 'Pour in the remaining 1 cup of water and mix well. Place it in the refrigerator or freezer and chill for 15 minutes.', 'steps_images/Drinks_2_2.jpg');
INSERT INTO `recipe_step` VALUES (559, 61, 3, 'Fill two cups with ice and add milk.', 'steps_images/Drinks_2_3.jpg');
INSERT INTO `recipe_step` VALUES (560, 61, 4, 'You can add some syrup if you like. Then pour in the chilled matcha mixture.', 'steps_images/Drinks_2_4.jpg');
INSERT INTO `recipe_step` VALUES (561, 61, 5, 'Your refreshing Matcha Milk is ready to enjoy!', 'steps_images/Drinks_2_5.jpg');
INSERT INTO `recipe_step` VALUES (562, 62, 1, 'Prepare two small bags of black tea.', 'steps_images/Drinks_3_1.jpg');
INSERT INTO `recipe_step` VALUES (563, 62, 2, 'Rinse the tea leaves first, then add them to boiling water. Turn off the heat and let it steep for one minute.', 'steps_images/Drinks_3_2.jpg');
INSERT INTO `recipe_step` VALUES (564, 62, 3, 'Add milk and sugar, bring it back to a boil, then lower the heat and continue to simmer for about 3 minutes, until the tea turns a deeper color. Strain out the tea leaves.', 'steps_images/Drinks_3_3.jpg');
INSERT INTO `recipe_step` VALUES (565, 62, 4, 'The rich and silky milk tea is ready to enjoy!', 'steps_images/Drinks_3_4.jpg');
INSERT INTO `recipe_step` VALUES (566, 63, 1, 'Wash the cup thoroughly and place it in the freezer for an hour, then take it out.', 'steps_images/Drinks_4_1.jpg');
INSERT INTO `recipe_step` VALUES (567, 63, 2, '100g Feinuo Coconut Cream.', 'steps_images/Drinks_4_2.jpg');
INSERT INTO `recipe_step` VALUES (568, 63, 3, 'Pour the cold brew directly into the coconut cream, then pour it into the chilled cup.', 'steps_images/Drinks_4_3.jpg');
INSERT INTO `recipe_step` VALUES (569, 64, 1, 'Prepare all the ingredients.', 'steps_images/Drinks_5_1.jpg');
INSERT INTO `recipe_step` VALUES (570, 64, 2, 'Squeeze a ring of chocolate sauce along the rim of the glass to create a \"drip effect.\"', 'steps_images/Drinks_5_2.jpg');
INSERT INTO `recipe_step` VALUES (571, 64, 3, 'Add ice cubes to the glass.', 'steps_images/Drinks_5_3.jpg');
INSERT INTO `recipe_step` VALUES (572, 64, 4, 'Pour in black coffee.', 'steps_images/Drinks_5_4.jpg');
INSERT INTO `recipe_step` VALUES (573, 64, 5, 'Pipe the heavy cream in a circular motion over the ice.', 'steps_images/Drinks_5_5.jpg');
INSERT INTO `recipe_step` VALUES (574, 64, 6, 'Finally, sprinkle some crushed cookies for decoration and insert a piece of dark chocolate—done!', 'steps_images/Drinks_5_6.jpg');
INSERT INTO `recipe_step` VALUES (575, 65, 1, 'Sift all the dry ingredients, then add the sugar and mix well.', 'steps_images/Baking_1_1.jpg');
INSERT INTO `recipe_step` VALUES (576, 65, 2, 'In a separate bowl, whisk together room temperature milk, eggs, and vegetable oil until well combined.', 'steps_images/Baking_1_2.jpg');
INSERT INTO `recipe_step` VALUES (577, 65, 3, 'Gradually add the dry ingredients to the wet mixture and fold until smooth, then stir in the heat-resistant chocolate chips.', 'steps_images/Baking_1_3.jpg');
INSERT INTO `recipe_step` VALUES (578, 65, 4, 'Divide the batter evenly into 5 paper cups and decorate with chocolate chips on top.', 'steps_images/Baking_1_4.jpg');
INSERT INTO `recipe_step` VALUES (579, 65, 5, 'Preheat the air fryer to 160°C (320°F) and cook for 20 minutes.', 'steps_images/Baking_1_5.jpg');
INSERT INTO `recipe_step` VALUES (580, 65, 6, 'Crispy on the outside, soft and moist on the inside – delicious!', 'steps_images/Baking_1_6.jpg');
INSERT INTO `recipe_step` VALUES (581, 66, 1, 'Crack 2 eggs into a bowl, add honey and fine sugar, and stir manually a few times to ensure the sugar is fully mixed with the egg yolks. Then, turn the mixer to the highest speed to beat the mixture.', 'steps_images/Baking_2_1.jpg');
INSERT INTO `recipe_step` VALUES (582, 66, 2, 'You\'ll notice that the egg mixture becomes more fluffy and its volume increases.', 'steps_images/Baking_2_2.jpg');
INSERT INTO `recipe_step` VALUES (583, 66, 3, 'Continue beating until the egg mixture forms a clear figure-eight shape when dropped, indicating that it has been properly whipped.', 'steps_images/Baking_2_3.jpg');
INSERT INTO `recipe_step` VALUES (584, 66, 4, 'Preheat the oven to 180°C. Sift 80g of cake flour. Sift it into the whipped egg mixture.', 'steps_images/Baking_2_4.jpg');
INSERT INTO `recipe_step` VALUES (585, 66, 5, 'Mix the flour and egg mixture together by stirring quickly and vigorously to ensure they are fully incorporated. Then, add 28g of vegetable oil and continue stirring rapidly until the mixture looks smooth and thick.', 'steps_images/Baking_2_5.jpg');
INSERT INTO `recipe_step` VALUES (586, 66, 6, 'Grease the mold, then pour in the batter, filling it about 80% full.', 'steps_images/Baking_2_6.jpg');
INSERT INTO `recipe_step` VALUES (587, 66, 7, 'Place it in the oven, middle rack, at 180°C for 15 minutes.', 'steps_images/Baking_2_7.jpg');
INSERT INTO `recipe_step` VALUES (588, 66, 8, 'Done! Now, enjoy your creation.', 'steps_images/Baking_2_8.jpg');
INSERT INTO `recipe_step` VALUES (589, 67, 1, 'Whisk together egg yolks, warm water, and corn oil.', 'steps_images/Baking_3_1.jpg');
INSERT INTO `recipe_step` VALUES (590, 67, 2, 'Sift in cake flour and cocoa powder.', 'steps_images/Baking_3_2.jpg');
INSERT INTO `recipe_step` VALUES (591, 67, 3, 'Mix until smooth.', 'steps_images/Baking_3_3.jpg');
INSERT INTO `recipe_step` VALUES (592, 67, 4, 'Add lemon juice to the egg whites.', 'steps_images/Baking_3_4.jpg');
INSERT INTO `recipe_step` VALUES (593, 67, 5, 'Gradually add sugar in three batches while beating until stiff peaks form.', 'steps_images/Baking_3_5.jpg');
INSERT INTO `recipe_step` VALUES (594, 67, 6, 'Fold 1/3 of the beaten egg whites into the batter using a whisk.', 'steps_images/Baking_3_6.jpg');
INSERT INTO `recipe_step` VALUES (595, 67, 7, 'Pour the mixture back into the remaining egg whites and gently fold until well combined.', 'steps_images/Baking_3_7.jpg');
INSERT INTO `recipe_step` VALUES (596, 67, 8, 'Pour the batter into the mold and smooth the surface.', 'steps_images/Baking_3_8.jpg');
INSERT INTO `recipe_step` VALUES (597, 67, 9, 'Bake in a preheated oven at 175°C (347°F) for 15 minutes.', 'steps_images/Baking_3_9.jpg');
INSERT INTO `recipe_step` VALUES (598, 67, 10, 'After baking, cover with parchment paper, invert the cake, remove the mold, peel off the bottom parchment paper, place it back on the cake, and let it cool on a wire rack.', 'steps_images/Baking_3_10.jpg');
INSERT INTO `recipe_step` VALUES (599, 67, 11, 'Use a 6-inch mousse ring to cut out a round piece of cake and place it in the mold. Set aside.', 'steps_images/Baking_3_11.jpg');
INSERT INTO `recipe_step` VALUES (600, 67, 12, 'Whip 250g of heavy cream until soft peaks form, then refrigerate.', 'steps_images/Baking_3_12.jpg');
INSERT INTO `recipe_step` VALUES (601, 67, 13, 'Heat milk chocolate with 70g of heavy cream until the chocolate is fully melted.', 'steps_images/Baking_3_13.jpg');
INSERT INTO `recipe_step` VALUES (602, 67, 14, 'Add softened gelatin, mix well, and let it cool until slightly thickened.', 'steps_images/Baking_3_14.jpg');
INSERT INTO `recipe_step` VALUES (603, 67, 15, 'Gently mix in a small portion of the whipped cream.', 'steps_images/Baking_3_15.jpg');
INSERT INTO `recipe_step` VALUES (604, 67, 16, 'Pour the mixture back into the remaining whipped cream and fold until smooth.', 'steps_images/Baking_3_16.jpg');
INSERT INTO `recipe_step` VALUES (605, 67, 17, 'Pour over the cake layer in the mousse ring, smooth the surface, and refrigerate for at least 4 hours.', 'steps_images/Baking_3_17.jpg');
INSERT INTO `recipe_step` VALUES (606, 67, 18, 'Melt milk chocolate and cocoa butter over a water bath.', 'steps_images/Baking_3_18.jpg');
INSERT INTO `recipe_step` VALUES (607, 67, 19, 'Stir in toasted hazelnut pieces.', 'steps_images/Baking_3_19.jpg');
INSERT INTO `recipe_step` VALUES (608, 67, 20, 'Pour the mixture over the chocolate mousse, quickly smooth the surface, and refrigerate for about 30 minutes.', 'steps_images/Baking_3_20.jpg');
INSERT INTO `recipe_step` VALUES (609, 67, 21, 'Use a hairdryer to warm the sides of the mold, then remove the mold and slice to serve.', 'steps_images/Baking_3_21.jpg');
INSERT INTO `recipe_step` VALUES (610, 68, 1, 'Pour 40g corn oil, 40g milk, and 10g granulated sugar into a small mixing bowl.', 'steps_images/Baking_4_1.jpg');
INSERT INTO `recipe_step` VALUES (611, 68, 2, 'Stir until the mixture becomes emulsified.', 'steps_images/Baking_4_2.jpg');
INSERT INTO `recipe_step` VALUES (612, 68, 3, 'Sift in 55g cake flour.', 'steps_images/Baking_4_3.jpg');
INSERT INTO `recipe_step` VALUES (613, 68, 4, 'Separate 4 egg yolks and whites, then add the yolks to the mixture and stir until fully incorporated with no dry flour remaining.', 'steps_images/Baking_4_4.jpg');
INSERT INTO `recipe_step` VALUES (614, 68, 5, '(Preheat the oven to 150°C at this point.) Pour the 4 egg whites into a clean bowl and add 4 drops of white vinegar.', 'steps_images/Baking_4_5.jpg');
INSERT INTO `recipe_step` VALUES (615, 68, 6, 'Beat the egg whites with a hand mixer on high speed, gradually adding 30g granulated sugar in three additions.', 'steps_images/Baking_4_6.jpg');
INSERT INTO `recipe_step` VALUES (616, 68, 7, 'Whip until soft peaks form.', 'steps_images/Baking_4_7.jpg');
INSERT INTO `recipe_step` VALUES (617, 68, 8, 'Take one-third of the whipped egg whites and fold it into the batter until well combined.', 'steps_images/Baking_4_8.jpg');
INSERT INTO `recipe_step` VALUES (618, 68, 9, 'Pour the combined mixture back into the remaining two-thirds of the egg whites and gently fold until fully incorporated.', 'steps_images/Baking_4_9.jpg');
INSERT INTO `recipe_step` VALUES (619, 68, 10, 'Line a 28cm × 28cm square baking pan with parchment paper and pour in the batter.', 'steps_images/Baking_4_10.jpg');
INSERT INTO `recipe_step` VALUES (620, 68, 11, 'Smooth out the surface evenly.', 'steps_images/Baking_4_11.jpg');
INSERT INTO `recipe_step` VALUES (621, 68, 12, 'Bake at 140°C for 30 minutes. Once done, let it cool naturally.', 'steps_images/Baking_4_12.jpg');
INSERT INTO `recipe_step` VALUES (622, 68, 13, 'In a separate bowl, beat 50g softened butter with 15g granulated sugar and 1g salt until slightly pale and fluffy.', 'steps_images/Baking_4_13.jpg');
INSERT INTO `recipe_step` VALUES (623, 68, 14, 'Gradually add 150g heavy cream in multiple additions, mixing well each time until smooth and silky.', 'steps_images/Baking_4_14.jpg');
INSERT INTO `recipe_step` VALUES (624, 68, 15, 'Cut the cooled cake base in half and spread a layer of cream frosting on one half.', 'steps_images/Baking_4_15.jpg');
INSERT INTO `recipe_step` VALUES (625, 68, 16, 'Place the other half on top, spread another layer of frosting, then sprinkle with sliced almonds and sifted milk powder.', 'steps_images/Baking_4_16.jpg');
INSERT INTO `recipe_step` VALUES (626, 68, 17, 'Cut into even pieces and refrigerate. Your rich and soft Salted Cream Cake is ready to enjoy!', 'steps_images/Baking_4_17.jpg');
INSERT INTO `recipe_step` VALUES (627, 69, 1, 'Prepare the caramel syrup: In a small saucepan, combine 23g of water and 45g of granulated sugar over low heat. Cook until it turns a deep caramel color, then quickly add 23g of boiling water.', 'steps_images/Baking_5_1.jpg');
INSERT INTO `recipe_step` VALUES (628, 69, 2, 'Be careful when adding the boiling water, as the caramel will bubble up and may splatter.', 'steps_images/Baking_5_2.jpg');
INSERT INTO `recipe_step` VALUES (629, 69, 3, 'While still hot, evenly distribute the caramel into molds, about 15g per mold. Let it cool, then refrigerate for later use.', 'steps_images/Baking_5_3.jpg');
INSERT INTO `recipe_step` VALUES (630, 69, 4, 'Next, prepare the pudding mixture: Whisk together two whole eggs, one egg yolk, 25g of granulated sugar, and 80g of heavy cream until well combined.', 'steps_images/Baking_5_4.jpg');
INSERT INTO `recipe_step` VALUES (631, 69, 5, 'The mixed egg and cream mixture should look smooth, as shown in the reference image.', 'steps_images/Baking_5_5.jpg');
INSERT INTO `recipe_step` VALUES (632, 69, 6, 'Heat 100g of milk over low heat until small bubbles form around the edges.', 'steps_images/Baking_5_6.jpg');
INSERT INTO `recipe_step` VALUES (633, 69, 7, 'Slowly pour the warm milk into the egg and cream mixture while stirring continuously. Strain the mixture and set it aside.', 'steps_images/Baking_5_7.jpg');
INSERT INTO `recipe_step` VALUES (634, 69, 8, 'In a separate bowl, mix corn oil and milk until emulsified. Sift in cake flour and cocoa powder, mix well, then add the egg yolks and stir until smooth.', 'steps_images/Baking_5_8.jpg');
INSERT INTO `recipe_step` VALUES (635, 69, 9, 'The finished egg yolk batter should have a silky texture, as shown in the reference image.', 'steps_images/Baking_5_9.jpg');
INSERT INTO `recipe_step` VALUES (636, 69, 10, 'In another bowl, beat the egg whites with lemon juice, adding 30g of granulated sugar in two batches. Whip until soft peaks form (small curled peaks at the tip). Gently fold this meringue into the egg yolk mixture until fully combined.', 'steps_images/Baking_5_10.jpg');
INSERT INTO `recipe_step` VALUES (637, 69, 11, 'Take out the prepared caramel molds and pour in the pudding mixture, 105g per mold.', 'steps_images/Baking_5_11.jpg');
INSERT INTO `recipe_step` VALUES (638, 69, 12, 'Carefully pour the cocoa cake batter on top, filling the mold to the rim. Place the molds in a baking pan.', 'steps_images/Baking_5_12.jpg');
INSERT INTO `recipe_step` VALUES (639, 69, 13, 'Bake in a preheated oven at 145°C (top heat) and 135°C (bottom heat) on the middle rack for 55 minutes.', 'steps_images/Baking_5_13.jpg');
INSERT INTO `recipe_step` VALUES (640, 69, 14, 'Once baked, let the cakes cool completely. To unmold, place the molds in warm water for a few minutes before releasing.', 'steps_images/Baking_5_14.jpg');
INSERT INTO `recipe_step` VALUES (641, 69, 15, 'Your beautiful and delicious Caramel Pudding Cake is ready to enjoy!', 'steps_images/Baking_5_15.jpg');
INSERT INTO `recipe_step` VALUES (642, 70, 1, '220g cream cheese', 'steps_images/Baking_6_1.jpg');
INSERT INTO `recipe_step` VALUES (643, 70, 2, 'Mix 50g sugar and 8g cornstarch, then add them to the softened cream cheese. Press and stir until combined, then use a hand mixer on low speed to blend everything together.', 'steps_images/Baking_6_2.jpg');
INSERT INTO `recipe_step` VALUES (644, 70, 3, 'Add 3 eggs, one at a time, mixing well after each addition.', 'steps_images/Baking_6_3.jpg');
INSERT INTO `recipe_step` VALUES (645, 70, 4, 'Once the eggs are fully incorporated, add 142g heavy cream and mix on low speed for 15 seconds until smooth. Strain the mixture and pour it into the mold, filling it halfway.', 'steps_images/Baking_6_4.jpg');
INSERT INTO `recipe_step` VALUES (646, 70, 5, 'Divide the batter into two cake molds, filling each about halfway. Bake at 210°C (410°F) for 30 minutes.', 'steps_images/Baking_6_5.jpg');
INSERT INTO `recipe_step` VALUES (647, 70, 6, 'The cakes will puff up significantly while baking.', 'steps_images/Baking_6_6.jpg');
INSERT INTO `recipe_step` VALUES (648, 70, 7, 'Let them cool—they will shrink back down after a while.', 'steps_images/Baking_6_7.jpg');
INSERT INTO `recipe_step` VALUES (649, 70, 8, 'In a saucepan, whisk 2 egg yolks, 300g heavy cream, and 20g sugar until well combined. Heat over low heat until it reaches about 80°C (176°F), then add 180g dark chocolate. Stir until melted, then remove from heat.', 'steps_images/Baking_6_8.jpg');
INSERT INTO `recipe_step` VALUES (650, 70, 9, 'Strain the mixture and pour it over the cake. Refrigerate overnight.', 'steps_images/Baking_6_9.jpg');
INSERT INTO `recipe_step` VALUES (651, 70, 10, 'Once set, unmold the cake, dust it with cocoa powder, and enjoy!', 'steps_images/Baking_6_10.jpg');
INSERT INTO `recipe_step` VALUES (652, 71, 1, 'Line the mold with parchment paper.', 'steps_images/Baking_7_1.jpg');
INSERT INTO `recipe_step` VALUES (653, 71, 2, 'Mix corn oil and milk together until emulsified.', 'steps_images/Baking_7_2.jpg');
INSERT INTO `recipe_step` VALUES (654, 71, 3, 'Sift in the cake flour and mix until well combined.', 'steps_images/Baking_7_3.jpg');
INSERT INTO `recipe_step` VALUES (655, 71, 4, 'Add the egg yolks to the batter and mix well.', 'steps_images/Baking_7_4.jpg');
INSERT INTO `recipe_step` VALUES (656, 71, 5, 'Add sugar and a few drops of lemon juice to the egg whites.', 'steps_images/Baking_7_5.jpg');
INSERT INTO `recipe_step` VALUES (657, 71, 6, 'Whip until soft peaks form.', 'steps_images/Baking_7_6.jpg');
INSERT INTO `recipe_step` VALUES (658, 71, 7, 'Take one-third of the meringue and fold it into the egg yolk batter.', 'steps_images/Baking_7_7.jpg');
INSERT INTO `recipe_step` VALUES (659, 71, 8, 'Pour the combined batter back into the remaining meringue.', 'steps_images/Baking_7_8.jpg');
INSERT INTO `recipe_step` VALUES (660, 71, 9, 'Gently fold until fully incorporated.', 'steps_images/Baking_7_9.jpg');
INSERT INTO `recipe_step` VALUES (661, 71, 10, 'Pour the batter into the mold and smooth the surface.', 'steps_images/Baking_7_10.jpg');
INSERT INTO `recipe_step` VALUES (662, 71, 11, 'Bake in a preheated oven at 180°C (356°F) for about 20 minutes.', 'steps_images/Baking_7_11.jpg');
INSERT INTO `recipe_step` VALUES (663, 71, 12, 'After baking, tap the cake pan lightly on the counter twice, then remove the cake. Cover the top with another piece of parchment paper, flip it onto a cooling rack, and peel off the top paper. Lightly cover it again to prevent drying, then let it cool.', 'steps_images/Baking_7_12.jpg');
INSERT INTO `recipe_step` VALUES (664, 71, 13, 'Mix the heavy cream and sugar until well combined.', 'steps_images/Baking_7_13.jpg');
INSERT INTO `recipe_step` VALUES (665, 71, 14, 'Whip until it reaches a firm consistency with visible ridges.', 'steps_images/Baking_7_14.jpg');
INSERT INTO `recipe_step` VALUES (666, 71, 15, 'Trim one end of the cake at an angle.', 'steps_images/Baking_7_15.jpg');
INSERT INTO `recipe_step` VALUES (667, 71, 16, 'Spread the whipped cream evenly over the cake.', 'steps_images/Baking_7_16.jpg');
INSERT INTO `recipe_step` VALUES (668, 71, 17, 'Add fruit pieces on top.', 'steps_images/Baking_7_17.jpg');
INSERT INTO `recipe_step` VALUES (669, 71, 18, 'Use a rolling pin to help roll the cake.', 'steps_images/Baking_7_18.jpg');
INSERT INTO `recipe_step` VALUES (670, 71, 19, 'Wrap the rolled cake in parchment paper and refrigerate for about an hour before serving.', 'steps_images/Baking_7_19.jpg');
INSERT INTO `recipe_step` VALUES (671, 72, 1, 'Prepare the baking tools and ingredients.', 'steps_images/Baking_8_1.jpg');
INSERT INTO `recipe_step` VALUES (672, 72, 2, 'Place the cream cheese and butter in a bowl and heat over a water bath at around 60°C (140°F) until softened, then whip until smooth.', 'steps_images/Baking_8_2.jpg');
INSERT INTO `recipe_step` VALUES (673, 72, 3, 'Add the milk in three batches, stirring well after each addition.', 'steps_images/Baking_8_3.jpg');
INSERT INTO `recipe_step` VALUES (674, 72, 4, 'Remove the bowl from the warm water. Separate the egg yolks and egg whites using an egg separator. Add the yolks to the bowl and mix well, while keeping the egg whites in a separate bowl.', 'steps_images/Baking_8_4.jpg');
INSERT INTO `recipe_step` VALUES (675, 72, 5, 'Add lemon juice to the mixture in the bowl.', 'steps_images/Baking_8_5.jpg');
INSERT INTO `recipe_step` VALUES (676, 72, 6, 'Sift in the cornstarch and mix until well combined.', 'steps_images/Baking_8_6.jpg');
INSERT INTO `recipe_step` VALUES (677, 72, 7, 'Beat the egg whites with a whisk until foamy, then add half of the sugar.', 'steps_images/Baking_8_7.jpg');
INSERT INTO `recipe_step` VALUES (678, 72, 8, 'After 30 seconds, add the remaining sugar and continue beating until stiff peaks form.', 'steps_images/Baking_8_8.jpg');
INSERT INTO `recipe_step` VALUES (679, 72, 9, 'Gently fold the whipped egg whites into the egg mixture in two batches, mixing until fully incorporated.', 'steps_images/Baking_8_9.jpg');
INSERT INTO `recipe_step` VALUES (680, 72, 10, 'Pour the batter into a 6-inch round cake mold, then tap the mold lightly on the table to smooth the surface.', 'steps_images/Baking_8_10.jpg');
INSERT INTO `recipe_step` VALUES (681, 72, 11, 'Wrap the bottom of the mold with aluminum foil and place it in a tray filled with warm water (about 60°C / 140°F).', 'steps_images/Baking_8_11.jpg');
INSERT INTO `recipe_step` VALUES (682, 72, 12, 'Bake in a preheated oven at 170°C (340°F) for 40-45 minutes.', 'steps_images/Baking_8_12.jpg');
INSERT INTO `recipe_step` VALUES (683, 73, 1, 'Mix the corn oil and matcha powder until well combined.', 'steps_images/Baking_9_1.jpg');
INSERT INTO `recipe_step` VALUES (684, 73, 2, 'Add warm water at 50°C (122°F) and mix until fully emulsified.', 'steps_images/Baking_9_2.jpg');
INSERT INTO `recipe_step` VALUES (685, 73, 3, 'The emulsified mixture should be smooth with no visible oil.', 'steps_images/Baking_9_3.jpg');
INSERT INTO `recipe_step` VALUES (686, 73, 4, 'Sift in the cake flour and mix until combined.', 'steps_images/Baking_9_4.jpg');
INSERT INTO `recipe_step` VALUES (687, 73, 5, 'Add all the egg yolks and mix well.', 'steps_images/Baking_9_5.jpg');
INSERT INTO `recipe_step` VALUES (688, 73, 6, 'The egg yolk batter should be smooth and flow easily.', 'steps_images/Baking_9_6.jpg');
INSERT INTO `recipe_step` VALUES (689, 73, 7, 'Gradually add the cornstarch and granulated sugar mixture in three batches.', 'steps_images/Baking_9_7.jpg');
INSERT INTO `recipe_step` VALUES (690, 73, 8, 'Whip until stiff peaks form.', 'steps_images/Baking_9_8.jpg');
INSERT INTO `recipe_step` VALUES (691, 73, 9, 'Fold the whipped egg whites into the egg yolk batter in three additions.', 'steps_images/Baking_9_9.jpg');
INSERT INTO `recipe_step` VALUES (692, 73, 10, 'The matcha batter should be silky smooth with no lumps.', 'steps_images/Baking_9_10.jpg');
INSERT INTO `recipe_step` VALUES (693, 73, 11, 'Pour the batter into the mold.', 'steps_images/Baking_9_11.jpg');
INSERT INTO `recipe_step` VALUES (694, 73, 12, 'Gently tap or stir to remove air bubbles.', 'steps_images/Baking_9_12.jpg');
INSERT INTO `recipe_step` VALUES (695, 73, 13, 'Bake at 140°C (284°F) for 55 minutes, then take it out, score a few lines manually, and return it to the oven to continue baking.', 'steps_images/Baking_9_13.jpg');
INSERT INTO `recipe_step` VALUES (696, 73, 14, 'Let it cool for at least 3 hours before unmolding—then it’s ready to enjoy!', 'steps_images/Baking_9_14.jpg');
INSERT INTO `recipe_step` VALUES (697, 74, 1, 'Place the oxtail in a pot of cold water. Bring it to a boil, let it cook for another two minutes, then skim off any foam. Remove the oxtail and drain well.', 'steps_images/Global_1_1.jpg');
INSERT INTO `recipe_step` VALUES (698, 74, 2, 'Heat some oil in a frying pan and sear the oxtail until lightly browned. Then, pour in hot water, add a few slices of ginger, and a generous amount of red wine. Start simmering.', 'steps_images/Global_1_2.jpg');
INSERT INTO `recipe_step` VALUES (699, 74, 3, 'After 30 minutes of simmering, cut half an onion, one carrot, two celery stalks, and two tomatoes into chunks.', 'steps_images/Global_1_3.jpg');
INSERT INTO `recipe_step` VALUES (700, 74, 4, 'Sauté the vegetables in order: first, cook the onions until soft, then add the tomatoes and cook until they break down. Finally, add the celery and carrots, stir-frying briefly.', 'steps_images/Global_1_4.jpg');
INSERT INTO `recipe_step` VALUES (701, 74, 5, 'Transfer the sautéed vegetables into the pot with the oxtail. Add three bay leaves and a few sprigs of thyme. Cover with a lid, bring to a boil over high heat, then reduce to low and simmer for one hour.', 'steps_images/Global_1_5.jpg');
INSERT INTO `recipe_step` VALUES (702, 74, 6, 'Season with salt, cover again, and continue simmering for another 30 minutes.', 'steps_images/Global_1_6.jpg');
INSERT INTO `recipe_step` VALUES (703, 74, 7, 'Finish with freshly ground black pepper and a few fresh sprigs of thyme. The dish is ready to serve.', 'steps_images/Global_1_7.jpg');
INSERT INTO `recipe_step` VALUES (704, 75, 1, 'Melt the butter over medium-low heat, then add the olive oil. Add the chopped onion and sauté until softened, about 2-3 minutes. Then, add the mushrooms and cook for 3-4 minutes.', 'steps_images/Global_2_1.jpg');
INSERT INTO `recipe_step` VALUES (705, 75, 2, 'Add the cauliflowers and stir-fry until the edges begin to turn golden, about 8 minutes.', 'steps_images/Global_2_2.jpg');
INSERT INTO `recipe_step` VALUES (706, 75, 3, 'Pour in the broth and cook for two minutes. Then, add the garlic, thyme, and parsley, and stir-fry for about 1 minute.', 'steps_images/Global_2_3.jpg');
INSERT INTO `recipe_step` VALUES (707, 75, 4, 'Sprinkle with a pinch of pepper and salt, then serve on a plate, with a fragrant aroma filling the air.', 'steps_images/Global_2_4.jpg');
INSERT INTO `recipe_step` VALUES (708, 76, 1, 'Melt the butter over medium-low heat, then add the olive oil. Add the chopped onion and sauté until softened, about 2-3 minutes. Then, add the mushrooms and cook for 3-4 minutes.', 'steps_images/Global_3_1.jpg');
INSERT INTO `recipe_step` VALUES (709, 76, 2, 'Add the broccoli and stir-fry until the edges begin to turn golden, about 8 minutes.', 'steps_images/Global_3_2.jpg');
INSERT INTO `recipe_step` VALUES (710, 76, 3, 'Pour in the broth and cook for two minutes. Then, add the garlic, thyme, and parsley, and stir-fry for about 1 minute.', 'steps_images/Global_3_3.jpg');
INSERT INTO `recipe_step` VALUES (711, 76, 4, 'Sprinkle with a pinch of pepper and salt, then serve on a plate, with a fragrant aroma filling the air.', 'steps_images/Global_3_4.jpg');
INSERT INTO `recipe_step` VALUES (712, 77, 1, 'Julienne the carrot and sauté it in oil briefly.', 'steps_images/Global_4_1.jpg');
INSERT INTO `recipe_step` VALUES (713, 77, 2, 'Beat the eggs, cook them over low heat into a thin omelet, then slice into strips.', 'steps_images/Global_4_2.jpg');
INSERT INTO `recipe_step` VALUES (714, 77, 3, 'Stir-fry the minced meat with a little salt.', 'steps_images/Global_4_3.jpg');
INSERT INTO `recipe_step` VALUES (715, 77, 4, 'Sauté the shiitake mushrooms in oil.', 'steps_images/Global_4_4.jpg');
INSERT INTO `recipe_step` VALUES (716, 77, 5, 'Remove the roots from the bean sprouts.', 'steps_images/Global_4_5.jpg');
INSERT INTO `recipe_step` VALUES (717, 77, 6, 'Julienne the zucchini and cut the spinach into sections. Blanch these three vegetables and arrange them on a plate.', 'steps_images/Global_4_6.jpg');
INSERT INTO `recipe_step` VALUES (718, 77, 7, 'Spread all the prepared vegetables evenly over a bowl of rice.\n\nSpread all the prepared vegetables evenly over a bowl of rice.', 'steps_images/Global_4_7.jpg');
INSERT INTO `recipe_step` VALUES (719, 77, 8, 'Place the minced meat in the center.', 'steps_images/Global_4_8.jpg');
INSERT INTO `recipe_step` VALUES (720, 77, 9, 'Dice a tomato.', 'steps_images/Global_4_9.jpg');
INSERT INTO `recipe_step` VALUES (721, 77, 10, 'Sauté the diced tomato in oil, then add half a teaspoon of salt, a tablespoon of soy sauce, and half a teaspoon of sugar.', 'steps_images/Global_4_10.jpg');
INSERT INTO `recipe_step` VALUES (722, 77, 11, 'Spoon the cooked tomato sauce into the center.', 'steps_images/Global_4_11.jpg');
INSERT INTO `recipe_step` VALUES (723, 77, 12, 'Sprinkle some white sesame seeds on top and enjoy!', 'steps_images/Global_4_12.jpg');
INSERT INTO `recipe_step` VALUES (724, 78, 1, 'Peel the shrimp, leaving the tails intact. Mix them with sea salt, smoked paprika, garlic powder, white pepper, and tomato paste. Let them marinate for 15 minutes.', 'steps_images/Global_5_1.jpg');
INSERT INTO `recipe_step` VALUES (725, 78, 2, 'Slice the garlic. In a small pan, heat 4 tablespoons of olive oil over low heat, then add the garlic slices and sauté until they turn golden and slightly crisp at the edges. Remove the garlic slices and leave the infused oil in the pan.', 'steps_images/Global_5_2.jpg');
INSERT INTO `recipe_step` VALUES (726, 78, 3, 'Add the marinated shrimp to the garlic-infused oil and cook over medium heat until fully done.', 'steps_images/Global_5_3.jpg');
INSERT INTO `recipe_step` VALUES (727, 78, 4, 'Turn off the heat, then sprinkle with a bit of chopped parsley, crushed black pepper, smoked paprika, and the crispy garlic slices. Drizzle with an extra spoonful of olive oil before serving.', 'steps_images/Global_5_4.jpg');
INSERT INTO `recipe_step` VALUES (728, 79, 1, 'Prepare all the ingredients.', 'steps_images/Global_6_1.jpg');
INSERT INTO `recipe_step` VALUES (729, 79, 2, 'Debone the chicken drumsticks by cutting them open. Lightly sprinkle both sides with salt and black pepper, then let them marinate for about 30 minutes.', 'steps_images/Global_6_2.jpg');
INSERT INTO `recipe_step` VALUES (730, 79, 3, 'Finely chop the onion and garlic. Cut the mushrooms in half.', 'steps_images/Global_6_3.jpg');
INSERT INTO `recipe_step` VALUES (731, 79, 4, 'Heat some olive oil in a frying pan. Place the chicken skin-side down and sear until golden brown and crispy. Flip and cook for another 1-2 minutes, then set aside.', 'steps_images/Global_6_4.jpg');
INSERT INTO `recipe_step` VALUES (732, 79, 5, 'Using the remaining oil, sauté the mushrooms until they develop a nice color.', 'steps_images/Global_6_5.jpg');
INSERT INTO `recipe_step` VALUES (733, 79, 6, 'Add the chopped onions and sauté until fragrant. Stir everything together evenly.', 'steps_images/Global_6_6.jpg');
INSERT INTO `recipe_step` VALUES (734, 79, 7, 'Return the seared chicken to the pan.', 'steps_images/Global_6_7.jpg');
INSERT INTO `recipe_step` VALUES (735, 79, 8, 'Pour in one cup of chicken stock.', 'steps_images/Global_6_8.jpg');
INSERT INTO `recipe_step` VALUES (736, 79, 9, 'Cover with a lid and let it simmer over medium-high heat for 10-15 minutes.', 'steps_images/Global_6_9.jpg');
INSERT INTO `recipe_step` VALUES (737, 79, 10, 'Add one cup of heavy cream, uncover, and turn the heat to high to reduce the sauce.', 'steps_images/Global_6_10.jpg');
INSERT INTO `recipe_step` VALUES (738, 79, 11, 'Once the sauce thickens to the desired consistency, remove from heat.', 'steps_images/Global_6_11.jpg');
INSERT INTO `recipe_step` VALUES (739, 79, 12, 'Garnish with fresh herbs, and your rich and flavorful Creamy Braised Chicken with Mushrooms is ready to serve!', 'steps_images/Global_6_12.jpg');
INSERT INTO `recipe_step` VALUES (740, 80, 1, 'Prepare all the ingredients.', 'steps_images/Global_7_1.jpg');
INSERT INTO `recipe_step` VALUES (741, 80, 2, 'Pierce a clove of raw garlic onto a fork and use it to poke small holes in the chicken thighs. This helps infuse the chicken with garlic aroma while also allowing the flavors to penetrate better when pan-frying later.', 'steps_images/Global_7_2.jpg');
INSERT INTO `recipe_step` VALUES (742, 80, 3, 'Sprinkle 1/2 teaspoon of white pepper, 1/2 teaspoon of black pepper, and 1 heaping teaspoon of salt evenly over the chicken thighs to season them.', 'steps_images/Global_7_3.jpg');
INSERT INTO `recipe_step` VALUES (743, 80, 4, 'Scrub the baby potatoes clean and cut them into thick strips. Slice two cloves of garlic.', 'steps_images/Global_7_4.jpg');
INSERT INTO `recipe_step` VALUES (744, 80, 5, 'Heat some olive oil in a skillet over medium heat. Place the chicken thighs skin-side down and pan-fry on low heat.', 'steps_images/Global_7_5.jpg');
INSERT INTO `recipe_step` VALUES (745, 80, 6, 'Fry until the skin turns golden brown and crispy, then flip the chicken over.', 'steps_images/Global_7_6.jpg');
INSERT INTO `recipe_step` VALUES (746, 80, 7, 'Add the potatoes, sliced garlic, and rosemary sprigs to the pan. Continue cooking, flipping the potato strips occasionally for even browning.', 'steps_images/Global_7_7.jpg');
INSERT INTO `recipe_step` VALUES (747, 80, 8, 'Cook until everything is fully done. If there is too much oil in the pan, use a paper towel to absorb the excess.', 'steps_images/Global_7_8.jpg');
INSERT INTO `recipe_step` VALUES (748, 80, 9, 'Turn up the heat to medium-high and drizzle in the white wine.', 'steps_images/Global_7_9.jpg');
INSERT INTO `recipe_step` VALUES (749, 80, 10, 'Add 1/2 teaspoon of salt and 1/2 teaspoon of white pepper for seasoning. Shake the pan gently to evenly coat the chicken and potatoes with the flavors.', 'steps_images/Global_7_10.jpg');
INSERT INTO `recipe_step` VALUES (750, 80, 11, 'Remove the chicken thighs from the pan and slice them into strips with a sharp steak knife. Arrange them on a plate with the potato strips, then garnish with a couple of fresh rosemary sprigs. Done and ready to serve!', 'steps_images/Global_7_11.jpg');
INSERT INTO `recipe_step` VALUES (751, 81, 1, 'Prepare pre-cooked grilled eel, a bottle of oolong tea, and a bottle of Unagi Teriyaki Sauce. Also, have some cooking wine ready and make sure the rice is steamed.', 'steps_images/Global_8_1.jpg');
INSERT INTO `recipe_step` VALUES (752, 81, 2, 'Slice the eel into pieces.', 'steps_images/Global_8_2.jpg');
INSERT INTO `recipe_step` VALUES (753, 81, 3, 'Lay the eel pieces in a frying pan and pour in oolong tea until it just about covers the fish.', 'steps_images/Global_8_3.jpg');
INSERT INTO `recipe_step` VALUES (754, 81, 4, 'Cover the pan with a lid and simmer over medium heat for about 3 minutes.', 'steps_images/Global_8_4.jpg');
INSERT INTO `recipe_step` VALUES (755, 81, 5, 'Squeeze some Unagi Teriyaki Sauce into a bowl, add an equal amount of cooking wine, and mix well.', 'steps_images/Global_8_5.jpg');
INSERT INTO `recipe_step` VALUES (756, 81, 6, 'Carefully remove the eel from the pan and place it on a baking tray lined with aluminum foil. Brush each piece with the prepared sauce.', 'steps_images/Global_8_6.jpg');
INSERT INTO `recipe_step` VALUES (757, 81, 7, 'Bake in the oven at 170°C (340°F) for about 3 minutes until the eel is fully heated through.', 'steps_images/Global_8_7.jpg');
INSERT INTO `recipe_step` VALUES (758, 81, 8, 'Place the cooked eel over the steamed rice, drizzle with some extra Unagi Teriyaki Sauce, and enjoy your delicious eel donburi!', 'steps_images/Global_8_8.jpg');
INSERT INTO `recipe_step` VALUES (759, 82, 1, 'Prepare all the ingredients.', 'steps_images/Global_9_1.jpg');
INSERT INTO `recipe_step` VALUES (760, 82, 2, 'Rinse the salmon thoroughly and pat it dry with a paper towel. Season both sides with salt and black pepper, then let it marinate for about 20 minutes.', 'steps_images/Global_9_2.jpg');
INSERT INTO `recipe_step` VALUES (761, 82, 3, 'Cut the cherry tomatoes in half, finely chop the onion and garlic, and blanch the spinach for 20 seconds before draining and cutting it into sections.', 'steps_images/Global_9_3.jpg');
INSERT INTO `recipe_step` VALUES (762, 82, 4, 'Heat some olive oil in a pan. Once hot, place the salmon in the pan and sear each side for about 2 minutes until lightly golden. Flip only after one side is done. Once cooked, remove and set aside.', 'steps_images/Global_9_4.jpg');
INSERT INTO `recipe_step` VALUES (763, 82, 5, 'Add the chopped onion and garlic to the pan and sauté until fragrant.', 'steps_images/Global_9_5.jpg');
INSERT INTO `recipe_step` VALUES (764, 82, 6, 'Add the cherry tomatoes, white wine, and heavy cream. Season with a pinch of salt and black pepper.', 'steps_images/Global_9_6.jpg');
INSERT INTO `recipe_step` VALUES (765, 82, 7, 'Once the cream thickens slightly, add the cooked spinach.', 'steps_images/Global_9_7.jpg');
INSERT INTO `recipe_step` VALUES (766, 82, 8, 'Finally, return the salmon to the pan and let it simmer for 3-4 minutes. And that\'s it—ready to serve! ', 'steps_images/Global_9_8.jpg');
INSERT INTO `recipe_step` VALUES (767, 83, 1, 'Chop the onion and garlic into small pieces.', 'steps_images/Global_10_1.jpg');
INSERT INTO `recipe_step` VALUES (768, 83, 2, 'Heat olive oil in a pan, add the chopped onion and garlic, and sauté until fragrant.', 'steps_images/Global_10_2.jpg');
INSERT INTO `recipe_step` VALUES (769, 83, 3, 'Add a chopped tomato and continue stir-frying. Pour in the white wine, followed by the butter and cream.', 'steps_images/Global_10_3.jpg');
INSERT INTO `recipe_step` VALUES (770, 83, 4, 'Add the mussels and stir well.', 'steps_images/Global_10_4.jpg');
INSERT INTO `recipe_step` VALUES (771, 83, 5, 'Cover and simmer for 5 minutes, then sprinkle in salt. Cover and cook for another 2-3 minutes. Sprinkle with chopped cilantro and celery, and serve!', 'steps_images/Global_10_5.jpg');
INSERT INTO `recipe_step` VALUES (772, 84, 1, 'Prepare all the necessary ingredients.', 'steps_images/Global_11_1.jpg');
INSERT INTO `recipe_step` VALUES (773, 84, 2, 'Slice the lemon, mince the garlic, clean and remove the stems from the button mushrooms, and break the parsley into small sprigs.', 'steps_images/Global_11_2.jpg');
INSERT INTO `recipe_step` VALUES (774, 84, 3, 'Clean the shrimp and pat them dry, then sprinkle with 4g of seafood seasoning and marinate for 30 minutes.', 'steps_images/Global_11_3.jpg');
INSERT INTO `recipe_step` VALUES (775, 84, 4, 'Mix everything well to ensure even seasoning.', 'steps_images/Global_11_4.jpg');
INSERT INTO `recipe_step` VALUES (776, 84, 5, 'Melt a piece of butter, you can mix in some olive oil, then cook the marinated shrimp until golden brown on both sides. Remove and set aside.', 'steps_images/Global_11_5.jpg');
INSERT INTO `recipe_step` VALUES (777, 84, 6, 'Leave the oil in the pan and sauté the minced garlic until fragrant, then add the mushrooms and cook until softened. Sprinkle in 2g of seafood seasoning to enhance the flavor.', 'steps_images/Global_11_6.jpg');
INSERT INTO `recipe_step` VALUES (778, 84, 7, 'Finally, add the cooked shrimp, stir to combine, and it\'s ready to serve.', 'steps_images/Global_11_7.jpg');
INSERT INTO `recipe_step` VALUES (779, 84, 8, 'When plating, you can garnish with lemon slices and chopped parsley.', 'steps_images/Global_11_8.jpg');
INSERT INTO `recipe_step` VALUES (780, 84, 9, 'A perfect Mediterranean Garlic Shrimp with Mushrooms is ready to enjoy!', 'steps_images/Global_11_9.jpg');
INSERT INTO `recipe_step` VALUES (781, 85, 1, 'Cut four potatoes into thick slices.', 'steps_images/APP_9_1.jpg');
INSERT INTO `recipe_step` VALUES (782, 85, 2, 'Steam the potatoes over boiling water for 20 minutes.', 'steps_images/APP_9_2.jpg');
INSERT INTO `recipe_step` VALUES (783, 85, 3, 'Mash the steamed potatoes while they are still hot.', 'steps_images/APP_9_3.jpg');
INSERT INTO `recipe_step` VALUES (784, 85, 4, 'You can adjust the texture of the mashed potatoes according to your preference.', 'steps_images/APP_9_4.jpg');
INSERT INTO `recipe_step` VALUES (785, 85, 5, 'Add 5g of salt, 2g of black pepper, and 40g of butter, then stir until the butter melts.', 'steps_images/APP_9_5.jpg');
INSERT INTO `recipe_step` VALUES (786, 85, 6, 'Set the mashed potatoes aside for later use.', 'steps_images/APP_9_6.jpg');
INSERT INTO `recipe_step` VALUES (787, 85, 7, 'Heat 30g of vegetable oil in a pan.', 'steps_images/APP_9_7.jpg');
INSERT INTO `recipe_step` VALUES (788, 85, 8, 'Add the minced meat.', 'steps_images/APP_9_8.jpg');
INSERT INTO `recipe_step` VALUES (789, 85, 9, 'Stir-fry until the minced meat turns pale.', 'steps_images/APP_9_9.jpg');
INSERT INTO `recipe_step` VALUES (790, 85, 10, 'Add chopped onions.', 'steps_images/APP_9_10.jpg');
INSERT INTO `recipe_step` VALUES (791, 85, 11, 'Stir-fry until the onions become translucent.', 'steps_images/APP_9_11.jpg');
INSERT INTO `recipe_step` VALUES (792, 85, 12, 'Combine the onion and minced meat mixture with the mashed potatoes.', 'steps_images/APP_9_12.jpg');
INSERT INTO `recipe_step` VALUES (793, 85, 13, 'Take 50g of the onion and minced meat mashed potato mixture, shape it into a ball, and roll it in 200g of flour.', 'steps_images/APP_9_13.jpg');
INSERT INTO `recipe_step` VALUES (794, 85, 14, 'Dip the flour-coated ball into beaten egg.', 'steps_images/APP_9_14.jpg');
INSERT INTO `recipe_step` VALUES (795, 85, 15, 'Then roll the ball in 200g of breadcrumbs.', 'steps_images/APP_9_15.jpg');
INSERT INTO `recipe_step` VALUES (796, 85, 16, 'Heat 500g of oil in a pan to about 180°C (medium-hot), or when damp chopsticks inserted into the oil produce bubbling.', 'steps_images/APP_9_16.jpg');
INSERT INTO `recipe_step` VALUES (797, 85, 17, 'Carefully add the breadcrumb-coated patties into the hot oil.', 'steps_images/APP_9_17.jpg');
INSERT INTO `recipe_step` VALUES (798, 85, 18, 'Fry until one side turns golden brown, then flip and continue frying.', 'steps_images/APP_9_18.jpg');
INSERT INTO `recipe_step` VALUES (799, 85, 19, 'Once both sides are golden and crispy, remove and drain excess oil.', 'steps_images/APP_9_19.jpg');
INSERT INTO `recipe_step` VALUES (800, 85, 20, 'Arrange the croquettes neatly on a plate and drizzle with your favorite sauce to finish.', 'steps_images/APP_9_20.jpg');
INSERT INTO `recipe_step` VALUES (801, 86, 1, 'Clean the chicken wings and use a toothpick to poke holes on both sides to help the flavor penetrate.', 'steps_images/APP_11_1.jpg');
INSERT INTO `recipe_step` VALUES (802, 86, 2, 'Add Orléans chicken seasoning and evenly coat each chicken wing. Marinate for 1 hour.', 'steps_images/APP_11_2.jpg');
INSERT INTO `recipe_step` VALUES (803, 86, 3, 'Place in the oven and bake at 225°C (437°F) for 20 minutes, flipping the wings a few times during baking.', 'steps_images/APP_11_3.jpg');
INSERT INTO `recipe_step` VALUES (804, 86, 4, 'Once done, sprinkle with white sesame seeds and enjoy while hot for the best flavor!', 'steps_images/APP_11_4.jpg');
INSERT INTO `recipe_step` VALUES (805, 87, 1, 'Prepare all the ingredients.', 'steps_images/APP_12_1.jpg');
INSERT INTO `recipe_step` VALUES (806, 87, 2, 'Slice the onion into thin strips and place them in a bowl. Add a pinch of salt and let them sit for a while to release some juice. Then, add a little water and mix the onion with the water, pressing the onions to extract as much juice as possible.', 'steps_images/APP_12_2.jpg');
INSERT INTO `recipe_step` VALUES (807, 87, 3, 'Place the cut lamb into the onion water and mix well. Let it marinate for 30 minutes to 1 hour.', 'steps_images/APP_12_3.jpg');
INSERT INTO `recipe_step` VALUES (808, 87, 4, 'After marinating, take the lamb out and gently squeeze out any excess water. Sprinkle some black pepper and mix it well.', 'steps_images/APP_12_4.jpg');
INSERT INTO `recipe_step` VALUES (809, 87, 5, 'Thread the lamb onto skewers. Preheat the oven to 200°C (about 400°F). Place the skewers on a baking tray lined with aluminum foil. Bake for 10 minutes, then remove and brush with oil. Return to the oven and bake for another 10 minutes. Afterward, brush with oil and sprinkle some salt, then bake for 5 more minutes. Finally, sprinkle cumin and chili powder, and bake for an additional 5 minutes. Your lamb skewers are now ready to enjoy!', 'steps_images/APP_12_5.jpg');
INSERT INTO `recipe_step` VALUES (810, 88, 1, 'Debone the chicken thighs and set them aside.', 'steps_images/MD_22_1.jpg');
INSERT INTO `recipe_step` VALUES (811, 88, 2, 'Marinate with garlic, pepper powder, salt, sugar, soy sauce, and oyster sauce for 30 minutes.', 'steps_images/MD_22_2.jpg');
INSERT INTO `recipe_step` VALUES (812, 88, 3, 'Prepare cucumber strips and lettuce.', 'steps_images/MD_22_3.jpg');
INSERT INTO `recipe_step` VALUES (813, 88, 4, 'Mix water with cornstarch, then add sweet bean paste and white sugar.', 'steps_images/MD_22_4.jpg');
INSERT INTO `recipe_step` VALUES (814, 88, 5, 'Continue stirring the mixture in the pot.', 'steps_images/MD_22_5.jpg');
INSERT INTO `recipe_step` VALUES (815, 88, 6, 'Cook on low heat, stirring until it thickens, then turn off the heat.', 'steps_images/MD_22_6.jpg');
INSERT INTO `recipe_step` VALUES (816, 88, 7, 'The sweet bean paste should look like this in the end.', 'steps_images/MD_22_7.jpg');
INSERT INTO `recipe_step` VALUES (817, 88, 8, 'Prepare a small bowl of water and a bowl of frying batter (mix 3 parts flour to 1 part cornstarch, add a pinch of salt and pepper, and mix well).', 'steps_images/MD_22_8.jpg');
INSERT INTO `recipe_step` VALUES (818, 88, 9, 'Take a piece of chicken thigh, ensuring both sides are evenly coated with flour.', 'steps_images/MD_22_9.jpg');
INSERT INTO `recipe_step` VALUES (819, 88, 10, 'Dip it into the water for 3-5 seconds.', 'steps_images/MD_22_10.jpg');
INSERT INTO `recipe_step` VALUES (820, 88, 11, 'Then coat it in the flour mixture on both sides. Repeat the process for the rest of the chicken thighs.', 'steps_images/MD_22_11.jpg');
INSERT INTO `recipe_step` VALUES (821, 88, 12, 'Heat oil in a pan. Once the oil is hot, reduce the heat to medium and fry the coated chicken thighs for 8-10 minutes.', 'steps_images/MD_22_12.jpg');
INSERT INTO `recipe_step` VALUES (822, 88, 13, 'The chicken will be lighter in color after the initial frying, so it needs to be fried again.', 'steps_images/MD_22_13.jpg');
INSERT INTO `recipe_step` VALUES (823, 88, 14, 'For the second fry, turn the heat to high, wait for the oil to heat up, then place the chicken pieces back in for another 2-3 minutes.', 'steps_images/MD_22_14.jpg');
INSERT INTO `recipe_step` VALUES (824, 88, 15, 'Lightly oil the pan to heat up the wraps.', 'steps_images/MD_22_15.jpg');
INSERT INTO `recipe_step` VALUES (825, 88, 16, 'Cut the fried chicken into smaller pieces after the second frying.', 'steps_images/MD_22_16.jpg');
INSERT INTO `recipe_step` VALUES (826, 88, 17, 'Spread sweet bean paste on the wrap, add lettuce, chicken pieces, and cucumber strips.', 'steps_images/MD_22_17.jpg');
INSERT INTO `recipe_step` VALUES (827, 88, 18, 'Roll it up! And it’s ready to enjoy!', 'steps_images/MD_22_18.jpg');
INSERT INTO `recipe_step` VALUES (828, 89, 1, 'Prepare all the ingredients.', 'steps_images/APP_10_1.jpg');
INSERT INTO `recipe_step` VALUES (829, 89, 2, 'Slice the green onion, smash the ginger to extract the juice. Put the green onion, ginger, and Sichuan peppercorns into a bowl, and soak them in 100ml warm water for a while. Set aside.', 'steps_images/APP_10_2.jpg');
INSERT INTO `recipe_step` VALUES (830, 89, 3, 'Grate the green radish and carrot.', 'steps_images/APP_10_3.jpg');
INSERT INTO `recipe_step` VALUES (831, 89, 4, 'Add 5g of salt and 2g of pepper powder for seasoning. Let the grated radish sit for 10 minutes to marinate.', 'steps_images/APP_10_4.jpg');
INSERT INTO `recipe_step` VALUES (832, 89, 5, 'Add 200g of flour and mix well.', 'steps_images/APP_10_5.jpg');
INSERT INTO `recipe_step` VALUES (833, 89, 6, 'Pour in a little sunflower oil to enhance the fragrance.', 'steps_images/APP_10_6.jpg');
INSERT INTO `recipe_step` VALUES (834, 89, 7, 'Add 3g of salt, one spoon of oyster sauce, and one spoon of soy sauce to the ground meat for seasoning. Gradually stir in 100ml of the soaked green onion, ginger, and Sichuan peppercorn water, mixing in one direction until all the water is incorporated into the meat mixture.', 'steps_images/APP_10_7.jpg');
INSERT INTO `recipe_step` VALUES (835, 89, 8, 'Add 50g of starch and a bit of water to make a paste, then stir it into the meat mixture. Add a little sunflower oil to lock in moisture.', 'steps_images/APP_10_8.jpg');
INSERT INTO `recipe_step` VALUES (836, 89, 9, 'Add sunflower oil to the pan.', 'steps_images/APP_10_9.jpg');
INSERT INTO `recipe_step` VALUES (837, 89, 10, 'Heat the oil on high. When you insert chopsticks into the oil and small bubbles form around them, the oil is ready to fry the meatballs.', 'steps_images/APP_10_10.jpg');
INSERT INTO `recipe_step` VALUES (838, 89, 11, 'Dip a spoon in oil to prevent the meatballs from sticking, and coat your thumb with a bit of oil.', 'steps_images/APP_10_11.jpg');
INSERT INTO `recipe_step` VALUES (839, 89, 12, 'Use your thumb to squeeze out the meatballs, shaping them with the help of the spoon.', 'steps_images/APP_10_12.jpg');
INSERT INTO `recipe_step` VALUES (840, 89, 13, 'Fry the meatballs over medium heat.', 'steps_images/APP_10_13.jpg');
INSERT INTO `recipe_step` VALUES (841, 89, 14, 'Once the meatballs turn golden brown, remove them from the oil.', 'steps_images/APP_10_14.jpg');
INSERT INTO `recipe_step` VALUES (842, 89, 15, 'Lightly grease your hands and shape the radish mixture into balls.', 'steps_images/APP_10_15.jpg');
INSERT INTO `recipe_step` VALUES (843, 89, 16, 'Drop the radish balls into the pan, and once they take shape, fry them until golden brown, then remove them.', 'steps_images/APP_10_16.jpg');
INSERT INTO `recipe_step` VALUES (844, 89, 17, 'The crispy and round double-flavored fried meatballs are ready!', 'steps_images/APP_10_17.jpg');
INSERT INTO `recipe_step` VALUES (845, 90, 1, 'Cut the tofu into small cubes and spray oil in the air fryer.', 'steps_images/APP_13_1.jpg');
INSERT INTO `recipe_step` VALUES (846, 90, 2, 'Set the temperature to 180°C (350°F) and cook for 15 minutes.', 'steps_images/APP_13_2.jpg');
INSERT INTO `recipe_step` VALUES (847, 90, 3, 'Flip the tofu and cook for another 15 minutes.', 'steps_images/APP_13_3.jpg');
INSERT INTO `recipe_step` VALUES (848, 90, 4, 'Plate the tofu.', 'steps_images/APP_13_4.jpg');
INSERT INTO `recipe_step` VALUES (849, 90, 5, 'Prepare the sauce: minced garlic, cumin, sesame seeds, chili powder, and small chili peppers.', 'steps_images/APP_13_5.jpg');
INSERT INTO `recipe_step` VALUES (850, 90, 6, 'Heat oil in a pan and pour it over the sauce ingredients, then add soy sauce, oyster sauce, salt, sugar, and rice vinegar.', 'steps_images/APP_13_6.jpg');
INSERT INTO `recipe_step` VALUES (851, 90, 7, 'Pour the sauce over the tofu and toss to coat evenly. Ready to eat!', 'steps_images/APP_13_7.jpg');
INSERT INTO `recipe_step` VALUES (852, 91, 1, 'Scrape the pork skin clean.', 'steps_images/MD_23_1.jpg');
INSERT INTO `recipe_step` VALUES (853, 91, 2, 'Use a needle to poke dense and deep holes all over the pork skin.', 'steps_images/MD_23_2.jpg');
INSERT INTO `recipe_step` VALUES (854, 91, 3, 'Brush a layer of cooking wine on the surface of the pork.', 'steps_images/MD_23_3.jpg');
INSERT INTO `recipe_step` VALUES (855, 91, 4, 'Mix the dry seasoning evenly and rub it onto the meat.', 'steps_images/MD_23_4.jpg');
INSERT INTO `recipe_step` VALUES (856, 91, 5, 'Wrap the meat side with aluminum foil, leaving the skin exposed.', 'steps_images/MD_23_5.jpg');
INSERT INTO `recipe_step` VALUES (857, 91, 6, 'Pat the pork skin dry with kitchen paper.', 'steps_images/MD_23_6.jpg');
INSERT INTO `recipe_step` VALUES (858, 91, 7, 'Rub a layer of salt onto the skin.', 'steps_images/MD_23_7.jpg');
INSERT INTO `recipe_step` VALUES (859, 91, 8, 'Let it sit for about 15 minutes until the skin releases moisture. Wipe it dry, then apply a layer of white vinegar. Place the entire pork belly in the fridge.', 'steps_images/MD_23_8.jpg');
INSERT INTO `recipe_step` VALUES (860, 91, 9, 'Refrigerate the pork belly with the skin facing up for 2-3 days. The skin should appear dull after refrigeration.', 'steps_images/MD_23_9.jpg');
INSERT INTO `recipe_step` VALUES (861, 91, 10, 'Poke the skin again with a needle and brush a layer of white vinegar over it.', 'steps_images/MD_23_10.jpg');
INSERT INTO `recipe_step` VALUES (862, 91, 11, 'Rub a little more salt onto the skin, then place the entire piece in the oven.', 'steps_images/MD_23_11.jpg');
INSERT INTO `recipe_step` VALUES (863, 91, 12, 'Roast at 250°C (480°F) for about 45 minutes. Once the skin puffs up and crisps, it’s done.', 'steps_images/MD_23_12.jpg');
INSERT INTO `recipe_step` VALUES (864, 91, 13, 'Slice and serve—enjoy!', 'steps_images/MD_23_13.jpg');
INSERT INTO `recipe_step` VALUES (865, 92, 1, 'Prepare all the ingredients.', 'steps_images/MD_24_1.jpg');
INSERT INTO `recipe_step` VALUES (866, 92, 2, 'Peel and cut the potatoes into chunks. Wash and cut the eggplant into chunks. Remove the seeds from the green pepper and cut it into pieces.', 'steps_images/MD_24_2.jpg');
INSERT INTO `recipe_step` VALUES (867, 92, 3, 'Chop the scallions and mince the ginger and garlic.', 'steps_images/MD_24_3.jpg');
INSERT INTO `recipe_step` VALUES (868, 92, 4, 'Prepare the sauce: mix soy sauce, dark soy sauce, sugar, and cornstarch with about 20g of water until well combined.', 'steps_images/MD_24_4.jpg');
INSERT INTO `recipe_step` VALUES (869, 92, 5, 'Microwave the potato chunks on high for 2 minutes and 30 seconds.', 'steps_images/MD_24_5.jpg');
INSERT INTO `recipe_step` VALUES (870, 92, 6, 'Microwave the eggplant on high for 2 minutes.', 'steps_images/MD_24_6.jpg');
INSERT INTO `recipe_step` VALUES (871, 92, 7, 'Heat a small amount of oil in a pan and pan-fry the potatoes until golden brown, then remove them.', 'steps_images/MD_24_7.jpg');
INSERT INTO `recipe_step` VALUES (872, 92, 8, 'Stir-fry the eggplant until softened, then remove it.', 'steps_images/MD_24_8.jpg');
INSERT INTO `recipe_step` VALUES (873, 92, 9, 'Add a little oil to the pan and sauté the scallions, ginger, and garlic until fragrant.', 'steps_images/MD_24_9.jpg');
INSERT INTO `recipe_step` VALUES (874, 92, 10, 'Add the green peppers and stir-fry briefly.', 'steps_images/MD_24_10.jpg');
INSERT INTO `recipe_step` VALUES (875, 92, 11, 'Return the potatoes and eggplant to the pan, season with salt, and stir well.', 'steps_images/MD_24_11.jpg');
INSERT INTO `recipe_step` VALUES (876, 92, 12, 'Reduce to low heat, pour in the sauce, then turn up to medium-high heat and stir-fry until thickened.', 'steps_images/MD_24_12.jpg');
INSERT INTO `recipe_step` VALUES (877, 92, 13, 'Serve immediately and enjoy while it\'s hot!', 'steps_images/MD_24_13.jpg');
INSERT INTO `recipe_step` VALUES (878, 93, 1, 'Soak the glutinous rice for at least 3 hours or overnight. Drain the water, then mix with a little light and dark soy sauce. Set aside to marinate.', 'steps_images/MD_25_1.jpg');
INSERT INTO `recipe_step` VALUES (879, 93, 2, 'Rinse the pork ribs thoroughly. Add salt, sugar, pepper, soy sauce, chopped scallions, minced ginger, minced garlic, and crushed chili flakes. Mix well and marinate for at least 1 hour.', 'steps_images/MD_25_2.jpg');
INSERT INTO `recipe_step` VALUES (880, 93, 3, 'Slice the potatoes into thick pieces and layer them at the bottom of a bowl. Coat the ribs with glutinous rice and arrange them on top of the potatoes.', 'steps_images/MD_25_3.jpg');
INSERT INTO `recipe_step` VALUES (881, 93, 4, 'Steam for about 1 hour. Garnish with chopped green onions before serving. Enjoy!', 'steps_images/MD_25_4.jpg');
INSERT INTO `recipe_step` VALUES (882, 94, 1, 'Trim the silverskin from the beef tenderloin and cut it into small pieces.', 'steps_images/MD_26_1.jpg');
INSERT INTO `recipe_step` VALUES (883, 94, 2, 'Mix cornstarch with a little cooking wine, a bit of sugar, salt, and soy sauce. Massage the beef cubes thoroughly and let them marinate for at least 30 minutes.', 'steps_images/MD_26_2.jpg');
INSERT INTO `recipe_step` VALUES (884, 94, 3, 'Peel around 10 garlic cloves.', 'steps_images/MD_26_3.jpg');
INSERT INTO `recipe_step` VALUES (885, 94, 4, 'Heat oil in a pan, then add the garlic cloves. Fry over medium heat until they turn slightly golden. Remove and set aside.', 'steps_images/MD_26_4.jpg');
INSERT INTO `recipe_step` VALUES (886, 94, 5, 'Using the fragrant garlic-infused oil, stir-fry the beef cubes over high heat until they change color evenly. Remove and set aside.', 'steps_images/MD_26_5.jpg');
INSERT INTO `recipe_step` VALUES (887, 94, 6, 'Prepare some tender celery leaves.', 'steps_images/MD_26_6.jpg');
INSERT INTO `recipe_step` VALUES (888, 94, 7, 'Heat oil in the pan again, sauté a few pieces of green onion until fragrant, then add the beef cubes and garlic. Add a spoonful of cooking wine, a spoonful of soy sauce, and half a spoonful of sugar. Stir-fry quickly.', 'steps_images/MD_26_7.jpg');
INSERT INTO `recipe_step` VALUES (889, 94, 8, 'Let the sugar, soy sauce, and cooking wine combine into a rich sauce, then add a bit of black pepper.', 'steps_images/MD_26_8.jpg');
INSERT INTO `recipe_step` VALUES (890, 94, 9, 'Give it a quick toss, and right before turning off the heat, sprinkle in the celery leaves. And it\'s done!', 'steps_images/MD_26_9.jpg');
INSERT INTO `recipe_step` VALUES (891, 94, 10, 'Tender beef, rich and flavorful sauce—absolutely delicious!', 'steps_images/MD_26_10.jpg');
INSERT INTO `recipe_step` VALUES (892, 95, 1, 'Prepare all the necessary ingredients.', 'steps_images/Soup_10_1.jpg');
INSERT INTO `recipe_step` VALUES (893, 95, 2, 'Remove the heads and shells from the shrimp. Devein the shrimp, but don’t discard the heads and shells for now—they’ll be used to make a flavorful broth!', 'steps_images/Soup_10_2.jpg');
INSERT INTO `recipe_step` VALUES (894, 95, 3, 'Marinate the shrimp with Chinese yellow wine, salt, and crushed black pepper. Set aside.', 'steps_images/Soup_10_3.jpg');
INSERT INTO `recipe_step` VALUES (895, 95, 4, 'Mash four salted egg yolks and one salted egg white', 'steps_images/Soup_10_4.jpg');
INSERT INTO `recipe_step` VALUES (896, 95, 5, 'Cut the silken tofu into small cubes and trim the white beech mushrooms into shorter pieces. Prepare some green peas and chopped green onions for garnish—they’ll add a nice touch of color!', 'steps_images/Soup_10_5.jpg');
INSERT INTO `recipe_step` VALUES (897, 95, 6, 'Heat some oil in a pan, add ginger slices and chopped green onions, and sauté until fragrant. Then, add the shrimp heads and shells, stirring until slightly browned.', 'steps_images/Soup_10_6.jpg');
INSERT INTO `recipe_step` VALUES (898, 95, 7, 'Pour in a large bowl of hot water, bring to a boil over high heat, then reduce to medium-low and simmer for 10 minutes to fully extract the umami flavor.', 'steps_images/Soup_10_7.jpg');
INSERT INTO `recipe_step` VALUES (899, 95, 8, 'Strain out and discard the shrimp heads and shells—you’re left with a rich shrimp broth!', 'steps_images/Soup_10_8.jpg');
INSERT INTO `recipe_step` VALUES (900, 95, 9, 'In a clean pan, heat a spoonful of oil and sauté the mashed salted egg yolks until fragrant.', 'steps_images/Soup_10_9.jpg');
INSERT INTO `recipe_step` VALUES (901, 95, 10, 'Pour in the shrimp broth and bring it to a boil.', 'steps_images/Soup_10_10.jpg');
INSERT INTO `recipe_step` VALUES (902, 95, 11, 'Add the tofu, white beech mushrooms, salted egg white, and green peas, and let them simmer for 2-3 minutes.', 'steps_images/Soup_10_11.jpg');
INSERT INTO `recipe_step` VALUES (903, 95, 12, 'Add the shrimp and cook until they turn red. Season with salt and pepper.', 'steps_images/Soup_10_12.jpg');
INSERT INTO `recipe_step` VALUES (904, 95, 13, 'Pour in the cornstarch slurry and stir gently until the sauce thickens.', 'steps_images/Soup_10_13.jpg');
INSERT INTO `recipe_step` VALUES (905, 95, 14, 'Before serving, sprinkle in a spoonful of chopped green onions for extra aroma!', 'steps_images/Soup_10_14.jpg');
INSERT INTO `recipe_step` VALUES (906, 95, 15, 'Now, Let\'s enjoy this warm and comforting soup!', 'steps_images/Soup_10_15.jpg');
INSERT INTO `recipe_step` VALUES (907, 96, 1, 'Marinate the minced pork with a little light soy sauce, cornstarch, pepper, and cooking oil. Set aside.', 'steps_images/MD_27_1.jpg');
INSERT INTO `recipe_step` VALUES (908, 96, 2, 'Wash the green peppers, remove the seeds, and lightly smash them with a knife to make them easier to pan-fry later.', 'steps_images/MD_27_2.jpg');
INSERT INTO `recipe_step` VALUES (909, 96, 3, 'Dry-fry the green peppers in a pan without oil to remove excess moisture.', 'steps_images/MD_27_3.jpg');
INSERT INTO `recipe_step` VALUES (910, 96, 4, 'Add oil and a star anise, then pan-fry the peppers until both sides develop a blistered, charred appearance.', 'steps_images/MD_27_4.jpg');
INSERT INTO `recipe_step` VALUES (911, 96, 5, 'Add the minced pork to the pan and stir-fry until fragrant.', 'steps_images/MD_27_5.jpg');
INSERT INTO `recipe_step` VALUES (912, 96, 6, 'Cook until the minced pork changes color.', 'steps_images/MD_27_6.jpg');
INSERT INTO `recipe_step` VALUES (913, 96, 7, 'Pour in a small amount of water (about half a bowl), cover, and simmer for one minute to fully cook the pork.', 'steps_images/MD_27_7.jpg');
INSERT INTO `recipe_step` VALUES (914, 96, 8, 'Season with oyster sauce, light soy sauce, and a pinch of chicken bouillon.', 'steps_images/MD_27_8.jpg');
INSERT INTO `recipe_step` VALUES (915, 96, 9, 'Stir everything evenly to combine.', 'steps_images/MD_27_9.jpg');
INSERT INTO `recipe_step` VALUES (916, 96, 10, 'Your delicious Braised Minced Pork with Green Peppers is ready to enjoy!', 'steps_images/MD_27_10.jpg');
INSERT INTO `recipe_step` VALUES (917, 97, 1, 'Take 180g of boiling water.', 'steps_images/MD_30_1.jpg');
INSERT INTO `recipe_step` VALUES (918, 97, 2, 'Add the boiling water to the flour and mix well.', 'steps_images/MD_30_2.jpg');
INSERT INTO `recipe_step` VALUES (919, 97, 3, 'Knead into a smooth dough, cover with a damp cloth, and let it rest for about 30 minutes.', 'steps_images/MD_30_3.jpg');
INSERT INTO `recipe_step` VALUES (920, 97, 4, 'Take out the dough and divide it into equal portions.', 'steps_images/MD_30_4.jpg');
INSERT INTO `recipe_step` VALUES (921, 97, 5, 'Roll each portion into a small dough ball. Take two at a time, flatten them by hand, and sprinkle a little cooking oil and salt in the center.', 'steps_images/MD_30_5.jpg');
INSERT INTO `recipe_step` VALUES (922, 97, 6, 'Press the two dough pieces together and roll them out thin.', 'steps_images/MD_30_6.jpg');
INSERT INTO `recipe_step` VALUES (923, 97, 7, 'Place the dough directly into a dry pan (no oil needed) over medium-low heat. When the dough starts to puff up, flip it immediately.', 'steps_images/MD_30_7.jpg');
INSERT INTO `recipe_step` VALUES (924, 97, 8, 'Remove while hot and flatten the pancake.', 'steps_images/MD_30_8.jpg');
INSERT INTO `recipe_step` VALUES (925, 97, 9, 'Spring chives are at their freshest, and bean sprouts are crisp and tasty. Stir-fry them quickly with shredded lean pork, seasoning with just a little sugar, salt, and soy sauce.  Wrap them in the pancake and enjoy the delicious combination.', 'steps_images/MD_30_9.jpg');
INSERT INTO `recipe_step` VALUES (926, 98, 1, 'Slice the cured meat, peel the broad beans, chop the white part of the green onion, and slice the spring bamboo shoots. Blanch the bamboo shoots for one minute and set aside.', 'steps_images/MD_31_1.jpg');
INSERT INTO `recipe_step` VALUES (927, 98, 2, 'Heat a little oil in a wok and stir-fry the cured meat for about one minute.', 'steps_images/MD_31_2.jpg');
INSERT INTO `recipe_step` VALUES (928, 98, 3, 'Add the chopped green onion and continue to stir-fry.', 'steps_images/MD_31_3.jpg');
INSERT INTO `recipe_step` VALUES (929, 98, 4, 'Add the spring bamboo shoots and a pinch of salt, and stir-fry for a few seconds.', 'steps_images/MD_31_4.jpg');
INSERT INTO `recipe_step` VALUES (930, 98, 5, 'Add boiling water, cover, and simmer for two minutes.', 'steps_images/MD_31_5.jpg');
INSERT INTO `recipe_step` VALUES (931, 98, 6, 'After two minutes, add the broad beans, cover, and continue simmering for three minutes.', 'steps_images/MD_31_6.jpg');
INSERT INTO `recipe_step` VALUES (932, 98, 7, 'After three minutes, stir-fry a few times and then remove from the heat.', 'steps_images/MD_31_7.jpg');
INSERT INTO `recipe_step` VALUES (933, 98, 8, 'Serve the dish on a plate.', 'steps_images/MD_31_8.jpg');
INSERT INTO `recipe_step` VALUES (934, 99, 1, 'Prepare the required ingredients.', 'steps_images/MD_32_1.jpg');
INSERT INTO `recipe_step` VALUES (935, 99, 2, 'Use a knife to cut the bass fish into halves and then into pieces.', 'steps_images/MD_32_2.jpg');
INSERT INTO `recipe_step` VALUES (936, 99, 3, 'Place the fish pieces in a container, add spring onion, ginger, cooking wine, light soy sauce, dark soy sauce, oyster sauce, salt, sugar, and pepper. Mix well, then add 1 tablespoon of cornstarch.', 'steps_images/MD_32_3.jpg');
INSERT INTO `recipe_step` VALUES (937, 99, 4, 'Mix well and marinate for half an hour.', 'steps_images/MD_32_4.jpg');
INSERT INTO `recipe_step` VALUES (938, 99, 5, 'Cut the onion into pieces; peel the garlic, slice the ginger, and chop the spring onion and small chili peppers for later use.', 'steps_images/MD_32_5.jpg');
INSERT INTO `recipe_step` VALUES (939, 99, 6, 'Heat cooking oil in a clay pot, add garlic cloves, ginger slices, and onion, and stir-fry until fragrant.', 'steps_images/MD_32_6.jpg');
INSERT INTO `recipe_step` VALUES (940, 99, 7, 'Then add the marinated fish pieces along with the juice.', 'steps_images/MD_32_7.jpg');
INSERT INTO `recipe_step` VALUES (941, 99, 8, 'Cover the pot and simmer on low heat for 10-12 minutes.', 'steps_images/MD_32_8.jpg');
INSERT INTO `recipe_step` VALUES (942, 99, 9, 'Finally, sprinkle with chopped spring onions and small red chili peppers for decoration.', 'steps_images/MD_32_9.jpg');
INSERT INTO `recipe_step` VALUES (943, 100, 1, 'Prepare the ingredients needed.', 'steps_images/APP_14_1.jpg');
INSERT INTO `recipe_step` VALUES (944, 100, 2, 'Beat the eggs.', 'steps_images/APP_14_2.jpg');
INSERT INTO `recipe_step` VALUES (945, 100, 3, 'Brush a little oil on a non-stick pan, pour in the beaten eggs, and cook on low heat to form an omelet.', 'steps_images/APP_14_3.jpg');
INSERT INTO `recipe_step` VALUES (946, 100, 4, 'Let it cool slightly, then cut into thick strips.', 'steps_images/APP_14_4.jpg');
INSERT INTO `recipe_step` VALUES (947, 100, 5, 'Blanch Brown Shimeji mushrooms in boiling salted water, then remove and drain.', 'steps_images/APP_14_5.jpg');
INSERT INTO `recipe_step` VALUES (948, 100, 6, 'Blanch the spinach, then remove and cut into small sections.', 'steps_images/APP_14_6.jpg');
INSERT INTO `recipe_step` VALUES (949, 100, 7, 'In a bowl, add minced garlic and onion, sesame seeds, chili powder, and small chili peppers. Pour in hot oil to release the fragrance.', 'steps_images/APP_14_7.jpg');
INSERT INTO `recipe_step` VALUES (950, 100, 8, 'Add light soy sauce, vinegar, salt, and sugar, and stir well.', 'steps_images/APP_14_8.jpg');
INSERT INTO `recipe_step` VALUES (951, 100, 9, 'Drain the spinach and Brown Shimeji mushrooms as much as possible, then place them in a large bowl. Add the egg strips and roasted peanuts, and pour over the sauce.', 'steps_images/APP_14_9.jpg');
INSERT INTO `recipe_step` VALUES (952, 100, 10, 'Toss everything together.', 'steps_images/APP_14_10.jpg');
INSERT INTO `recipe_step` VALUES (953, 100, 11, 'A nutritious and healthy spring cold dish is ready to be served.', 'steps_images/APP_14_11.jpg');
INSERT INTO `recipe_step` VALUES (954, 101, 1, 'Mix glutinous rice flour, cornstarch, white sugar, cooking oil, and milk in a bowl.', 'steps_images/Dim Sum_8_1.jpg');
INSERT INTO `recipe_step` VALUES (955, 101, 2, 'Stir until the mixture is smooth and free of lumps.', 'steps_images/Dim Sum_8_2.jpg');
INSERT INTO `recipe_step` VALUES (956, 101, 3, 'Strain the batter and pour it into a larger bowl.', 'steps_images/Dim Sum_8_3.jpg');
INSERT INTO `recipe_step` VALUES (957, 101, 4, 'Cover with plastic wrap, poke a few small holes with a toothpick, and steam in a steamer for 20 minutes after the water boils.', 'steps_images/Dim Sum_8_4.jpg');
INSERT INTO `recipe_step` VALUES (958, 101, 5, 'Toast some glutinous rice flour in a dry pan over low heat, stirring constantly until slightly golden, then set aside.', 'steps_images/Dim Sum_8_5.jpg');
INSERT INTO `recipe_step` VALUES (959, 101, 6, 'Wrap the red bean paste in plastic wrap and roll it into a long strip.', 'steps_images/Dim Sum_8_6.jpg');
INSERT INTO `recipe_step` VALUES (960, 101, 7, 'Once the glutinous rice dough is steamed, take it out and add 1 teaspoon of matcha powder, then start kneading.', 'steps_images/Dim Sum_8_7.jpg');
INSERT INTO `recipe_step` VALUES (961, 101, 8, 'Wearing disposable gloves and applying a little oil will make handling easier.', 'steps_images/Dim Sum_8_8.jpg');
INSERT INTO `recipe_step` VALUES (962, 101, 9, 'Knead until the matcha powder is fully and evenly incorporated into the dough.', 'steps_images/Dim Sum_8_9.jpg');
INSERT INTO `recipe_step` VALUES (963, 101, 10, 'Shape the kneaded dough into a long strip.', 'steps_images/Dim Sum_8_10.jpg');
INSERT INTO `recipe_step` VALUES (964, 101, 11, 'Place plastic wrap over the dough and use a rolling pin to roll it out to a width that can wrap around the red bean paste strip.', 'steps_images/Dim Sum_8_11.jpg');
INSERT INTO `recipe_step` VALUES (965, 101, 12, 'Place the red bean paste strip onto the flattened dough.', 'steps_images/Dim Sum_8_12.jpg');
INSERT INTO `recipe_step` VALUES (966, 101, 13, 'Start from one end and pinch the edges together to seal.', 'steps_images/Dim Sum_8_13.jpg');
INSERT INTO `recipe_step` VALUES (967, 101, 14, 'Lightly dust the surface with the roasted glutinous rice flour, then gently roll the dough into a smooth, even log.', 'steps_images/Dim Sum_8_14.jpg');
INSERT INTO `recipe_step` VALUES (968, 101, 15, 'Slice into evenly sized segments.', 'steps_images/Dim Sum_8_15.jpg');
INSERT INTO `recipe_step` VALUES (969, 101, 16, 'Your delicious treat is ready to serve!', 'steps_images/Dim Sum_8_16.jpg');
INSERT INTO `recipe_step` VALUES (970, 102, 1, 'Wash the bamboo shoots thoroughly.', 'steps_images/MD_33_1.jpg');
INSERT INTO `recipe_step` VALUES (971, 102, 2, 'Gently flatten them.', 'steps_images/MD_33_2.jpg');
INSERT INTO `recipe_step` VALUES (972, 102, 3, 'Cut them into sections.', 'steps_images/MD_33_3.jpg');
INSERT INTO `recipe_step` VALUES (973, 102, 4, 'Add more oil than usual to the pan.', 'steps_images/MD_33_4.jpg');
INSERT INTO `recipe_step` VALUES (974, 102, 5, 'Crush the rock sugar into small pieces.', 'steps_images/MD_33_5.jpg');
INSERT INTO `recipe_step` VALUES (975, 102, 6, 'Stir-fry the bamboo shoots and rock sugar over high heat until fragrant.', 'steps_images/MD_33_6.jpg');
INSERT INTO `recipe_step` VALUES (976, 102, 7, 'When the bamboo shoots start to soften, add seasoned soy sauce and light soy sauce, stir well, then cover and simmer over medium-low heat.', 'steps_images/MD_33_7.jpg');
INSERT INTO `recipe_step` VALUES (977, 102, 8, 'Once the bamboo shoots are evenly coated in color, turn up the heat to reduce the sauce.', 'steps_images/MD_33_8.jpg');
INSERT INTO `recipe_step` VALUES (978, 102, 9, 'When the sauce has thickened, turn off the heat and serve.', 'steps_images/MD_33_9.jpg');
INSERT INTO `recipe_step` VALUES (979, 103, 1, 'Prepare all the necessary ingredients.', NULL);
INSERT INTO `recipe_step` VALUES (980, 103, 2, 'Place the chicken breast in a pot of cold water, add scallions, ginger, and cooking wine to remove any gamey taste. Bring to a boil over high heat, then simmer for about 10-15 minutes.', 'steps_images/APP_15_1.jpg');
INSERT INTO `recipe_step` VALUES (981, 103, 3, 'Immediately transfer the cooked chicken breast to a bowl of cool boiled water to soak. This helps keep the meat tender.', 'steps_images/APP_15_2.jpg');
INSERT INTO `recipe_step` VALUES (982, 103, 4, 'Shred the chicken breast into thin strips and set aside.', 'steps_images/APP_15_3.jpg');
INSERT INTO `recipe_step` VALUES (983, 103, 5, 'Cut the bamboo shoots into thin strips, wash and chop the cilantro, and slice the chili peppers into small rings.', 'steps_images/APP_15_4.jpg');
INSERT INTO `recipe_step` VALUES (984, 103, 6, 'Blanch the bamboo shoots in boiling water until cooked, then transfer them to cool boiled water to chill.', 'steps_images/APP_15_5.jpg');
INSERT INTO `recipe_step` VALUES (985, 103, 7, 'Place the shredded chicken, bamboo shoots, cilantro, and chili peppers into a bowl.', 'steps_images/APP_15_6.jpg');
INSERT INTO `recipe_step` VALUES (986, 103, 8, 'Pour in light soy sauce—no other seasonings are needed.', 'steps_images/APP_15_7.jpg');
INSERT INTO `recipe_step` VALUES (987, 103, 9, 'A light, low-calorie dish full of spring flavors is ready to enjoy!', 'steps_images/APP_15_8.jpg');
INSERT INTO `recipe_step` VALUES (988, 104, 1, 'Wash the chicken breast thoroughly, then boil it with scallions, ginger, and cooking wine until fully cooked. Remove and let it cool.', 'steps_images/Noodle_11_1.jpg');
INSERT INTO `recipe_step` VALUES (989, 104, 2, 'Steam the noodles over boiling water for 10 minutes, then cook them in boiling water until done. Drain.', 'steps_images/Noodle_11_2.jpg');
INSERT INTO `recipe_step` VALUES (990, 104, 3, 'Toss the noodles with a little cooking oil and let them cool.', 'steps_images/Noodle_11_3.jpg');
INSERT INTO `recipe_step` VALUES (991, 104, 4, 'Shred the cooled chicken breast into thin strips. You can also add cucumber strips and shredded egg crepe as toppings.', 'steps_images/Noodle_11_4.jpg');
INSERT INTO `recipe_step` VALUES (992, 104, 5, 'Mix sesame paste with a little sugar, soy sauce, and mineral water to enhance the flavor and thin out the consistency.', 'steps_images/Noodle_11_5.jpg');
INSERT INTO `recipe_step` VALUES (993, 104, 6, 'Place the noodles at the bottom of a bowl. Arrange the toppings and chicken strips on top. Add a generous spoonful of light soy sauce, a good amount of vinegar, the prepared sesame sauce, and chili oil. Sprinkle with crushed peanuts and sesame seeds. Enjoy!', 'steps_images/Noodle_11_6.jpg');
INSERT INTO `recipe_step` VALUES (994, 105, 1, 'Prepare all the ingredients.', 'steps_images/APP_16_1.jpg');
INSERT INTO `recipe_step` VALUES (995, 105, 2, 'Mix 35g of pea starch with 50g of water until well combined.', 'steps_images/APP_16_2.jpg');
INSERT INTO `recipe_step` VALUES (996, 105, 3, 'Pour the remaining 350g of water into a pot and bring it to a boil.', 'steps_images/APP_16_3.jpg');
INSERT INTO `recipe_step` VALUES (997, 105, 4, 'Slowly pour in the starch mixture while stirring continuously over medium-low heat until it thickens, then turn off the heat.', 'steps_images/APP_16_4.jpg');
INSERT INTO `recipe_step` VALUES (998, 105, 5, 'Pour the thickened mixture into a mold and let it cool naturally.', 'steps_images/APP_16_5.jpg');
INSERT INTO `recipe_step` VALUES (999, 105, 6, 'Once fully cooled, remove it from the mold.', 'steps_images/APP_16_6.jpg');
INSERT INTO `recipe_step` VALUES (1000, 105, 7, 'Cut the cooled jelly into strips and place them on a plate.', 'steps_images/APP_16_7.jpg');
INSERT INTO `recipe_step` VALUES (1001, 105, 8, 'Prepare the sauce by adding minced ginger and garlic to a bowl.', 'steps_images/APP_16_8.jpg');
INSERT INTO `recipe_step` VALUES (1002, 105, 9, 'Pour in 10g of light soy sauce.', 'steps_images/APP_16_9.jpg');
INSERT INTO `recipe_step` VALUES (1003, 105, 10, 'Add an appropriate amount of oyster sauce.', 'steps_images/APP_16_10.jpg');
INSERT INTO `recipe_step` VALUES (1004, 105, 11, 'Mix in chili oil and ground Sichuan pepper.', 'steps_images/APP_16_11.jpg');
INSERT INTO `recipe_step` VALUES (1005, 105, 12, 'Drizzle the prepared sauce over the jelly, then sprinkle with crushed peanuts, white sesame seeds, and chopped scallions. Enjoy!', 'steps_images/APP_16_12.jpg');
INSERT INTO `recipe_step` VALUES (1006, 106, 1, 'Slice the lotus root.', 'steps_images/APP_17_1.jpg');
INSERT INTO `recipe_step` VALUES (1007, 106, 2, 'Rinse the slices thoroughly with water and boil for two minutes.', 'steps_images/APP_17_2.jpg');
INSERT INTO `recipe_step` VALUES (1008, 106, 3, 'In a bowl, add sesame seeds, chili flakes, minced garlic, and chopped scallions.', 'steps_images/APP_17_3.jpg');
INSERT INTO `recipe_step` VALUES (1009, 106, 4, 'Heat cooking oil until hot and pour it over the ingredients in the bowl.', 'steps_images/APP_17_4.jpg');
INSERT INTO `recipe_step` VALUES (1010, 106, 5, 'Add a spoonful of sesame oil.', 'steps_images/APP_17_5.jpg');
INSERT INTO `recipe_step` VALUES (1011, 106, 6, 'Add three spoons of soy sauce.', 'steps_images/APP_17_6.jpg');
INSERT INTO `recipe_step` VALUES (1012, 106, 7, 'Add two spoons of black vinegar.', 'steps_images/APP_17_7.jpg');
INSERT INTO `recipe_step` VALUES (1013, 106, 8, 'Add a little Sichuan pepper oil.', 'steps_images/APP_17_8.jpg');
INSERT INTO `recipe_step` VALUES (1014, 106, 9, 'Add a pinch of sugar.', 'steps_images/APP_17_9.jpg');
INSERT INTO `recipe_step` VALUES (1015, 106, 10, 'Add salt to taste.', 'steps_images/APP_17_10.jpg');
INSERT INTO `recipe_step` VALUES (1016, 106, 11, 'Mix everything well.', 'steps_images/APP_17_11.jpg');
INSERT INTO `recipe_step` VALUES (1017, 106, 12, 'Pour the sauce over the lotus root slices and toss evenly. Enjoy!', 'steps_images/APP_17_12.jpg');
INSERT INTO `recipe_step` VALUES (1018, 107, 1, 'Wash the bitter melon and cut it into sections. Use a spoon to remove the seeds and pith.', 'steps_images/APP_18_1.jpg');
INSERT INTO `recipe_step` VALUES (1019, 107, 2, 'Bring a pot of water to a boil, then add salt and oil (to keep the bitter melon vibrant green). Blanch the bitter melon for about 3 minutes.', 'steps_images/APP_18_2.jpg');
INSERT INTO `recipe_step` VALUES (1020, 107, 3, 'Remove the bitter melon and rinse it under cold water.', 'steps_images/APP_18_3.jpg');
INSERT INTO `recipe_step` VALUES (1021, 107, 4, 'Peel the banana and gently insert it into the hollowed-out bitter melon.', 'steps_images/APP_18_4.jpg');
INSERT INTO `recipe_step` VALUES (1022, 107, 5, 'Slice the stuffed bitter melon into slightly thicker pieces to prevent the banana from falling out, then arrange them on a plate.', 'steps_images/APP_18_5.jpg');
INSERT INTO `recipe_step` VALUES (1023, 107, 6, 'In a pan, add a small bowl of water and 50g of sugar. Heat until the sugar dissolves completely.', 'steps_images/APP_18_6.jpg');
INSERT INTO `recipe_step` VALUES (1024, 107, 7, 'Add goji berries and let them simmer for 30 seconds.', 'steps_images/APP_18_7.jpg');
INSERT INTO `recipe_step` VALUES (1025, 107, 8, 'Stir in a cornstarch slurry to thicken the sauce.', 'steps_images/APP_18_8.jpg');
INSERT INTO `recipe_step` VALUES (1026, 107, 9, 'Stir well and cook until the sauce becomes thick and glossy.', 'steps_images/APP_18_9.jpg');
INSERT INTO `recipe_step` VALUES (1027, 107, 10, 'Pour the prepared sauce over the bitter melon slices, and the dish is ready to serve.', 'steps_images/APP_18_10.jpg');
INSERT INTO `recipe_step` VALUES (1028, 108, 1, 'Peel the winter melon and cut it into slices.', 'steps_images/Soup_11_1.jpg');
INSERT INTO `recipe_step` VALUES (1029, 108, 2, 'Slice the ham as well.', 'steps_images/Soup_11_2.jpg');
INSERT INTO `recipe_step` VALUES (1030, 108, 3, 'Slice the shiitake mushrooms.', 'steps_images/Soup_11_3.jpg');
INSERT INTO `recipe_step` VALUES (1031, 108, 4, 'Cut the leek diagonally into slices.', 'steps_images/Soup_11_4.jpg');
INSERT INTO `recipe_step` VALUES (1032, 108, 5, 'Finely chop the scallions.', 'steps_images/Soup_11_5.jpg');
INSERT INTO `recipe_step` VALUES (1033, 108, 6, 'Heat 2 tablespoons of oil in a pan and sauté the leeks until fragrant.', 'steps_images/Soup_11_6.jpg');
INSERT INTO `recipe_step` VALUES (1034, 108, 7, 'Add the shiitake mushrooms and stir-fry until softened.', 'steps_images/Soup_11_7.jpg');
INSERT INTO `recipe_step` VALUES (1035, 108, 8, 'Pour in 2 bowls of water. Bring to a boil over high heat, then add the winter melon and ham. Once boiling again, reduce to low heat and simmer for about 10 minutes.', 'steps_images/Soup_11_8.jpg');
INSERT INTO `recipe_step` VALUES (1036, 108, 9, 'Season with salt and white pepper, then sprinkle with chopped scallions.', 'steps_images/Soup_11_9.jpg');
INSERT INTO `recipe_step` VALUES (1037, 108, 10, 'The dish is wonderfully flavorful and rich!', 'steps_images/Soup_11_10.jpg');
INSERT INTO `recipe_step` VALUES (1038, 109, 1, 'Prepare all the necessary ingredients.', 'steps_images/APP_19_1.jpg');
INSERT INTO `recipe_step` VALUES (1039, 109, 2, 'Choose fresh pork belly with a balanced ratio of fat and lean meat.', 'steps_images/APP_19_2.jpg');
INSERT INTO `recipe_step` VALUES (1040, 109, 3, 'This fat-to-lean ratio is the best for this dish.', 'steps_images/APP_19_3.jpg');
INSERT INTO `recipe_step` VALUES (1041, 109, 4, 'Slice the ginger, peel and trim the cucumber, mince the garlic, and chop the cilantro.', 'steps_images/APP_19_4.jpg');
INSERT INTO `recipe_step` VALUES (1042, 109, 5, 'Place the pork belly in cold water, bring to a boil, skim off the foam, then add ginger slices, tied scallions, Sichuan peppercorns, and cooking wine. Simmer over medium-low heat for 30 minutes.', 'steps_images/APP_19_5.jpg');
INSERT INTO `recipe_step` VALUES (1043, 109, 6, 'Do not discard the broth used to boil the pork. Strain out the scallions, ginger, peppercorns, and foam, as it will be used later for the sauce.', 'steps_images/APP_19_6.jpg');
INSERT INTO `recipe_step` VALUES (1044, 109, 7, 'Transfer the cooked pork belly into cold boiled water to cool down, which will firm up the meat and make it easier to slice.', 'steps_images/APP_19_7.jpg');
INSERT INTO `recipe_step` VALUES (1045, 109, 8, 'While waiting for the pork to cool, prepare the sauce: In a bowl, mix soy sauce, black vinegar, sugar, chicken powder, and toasted white sesame seeds. Add a spoonful of the pork broth and stir well.', 'steps_images/APP_19_8.jpg');
INSERT INTO `recipe_step` VALUES (1046, 109, 9, 'Heat Sichuan pepper oil in a small pan, briefly fry 2/3 of the minced garlic to reduce its pungency, then turn off the heat and mix in chili oil.', 'steps_images/APP_19_9.jpg');
INSERT INTO `recipe_step` VALUES (1047, 109, 10, 'Pour the garlic chili oil mixture into the sauce from step 8, then add the remaining 1/3 minced garlic and mix well to complete the sauce.', 'steps_images/APP_19_10.jpg');
INSERT INTO `recipe_step` VALUES (1048, 109, 11, 'Remove the pork belly from the cold water, drain it, and slice it evenly to your preferred thickness.', 'steps_images/APP_19_11.jpg');
INSERT INTO `recipe_step` VALUES (1049, 109, 12, 'Arrange the pork slices in a circular pattern around the plate.', 'steps_images/APP_19_12.jpg');
INSERT INTO `recipe_step` VALUES (1050, 109, 13, 'Place the shredded cucumber in the center and drizzle the prepared sauce over the dish.', 'steps_images/APP_19_13.jpg');
INSERT INTO `recipe_step` VALUES (1051, 109, 14, 'Finish by sprinkling chopped cilantro on top.', 'steps_images/APP_19_14.jpg');
INSERT INTO `recipe_step` VALUES (1052, 109, 15, 'The result is tender, flavorful pork infused with garlicky sauce—rich but not greasy, bursting with aroma, and truly satisfying!', 'steps_images/APP_19_15.jpg');
INSERT INTO `recipe_step` VALUES (1053, 110, 1, 'Peel and cut the luffa into pieces. Bring a pot of water to a boil, add salt, and blanch the loofah. Once it changes color, remove and rinse under cold water.', 'steps_images/MD_34_1.jpg');
INSERT INTO `recipe_step` VALUES (1054, 110, 2, 'Remove the heads and shells from the shrimp, then make a shallow cut along the back to remove the vein. Season with a little salt, white pepper, and cooking wine to remove the fishy smell.', 'steps_images/MD_34_2.jpg');
INSERT INTO `recipe_step` VALUES (1055, 110, 3, 'Beat two eggs with a pinch of salt. Heat a pan with oil, pour in the eggs, scramble until cooked, and set aside.', 'steps_images/MD_34_3.jpg');
INSERT INTO `recipe_step` VALUES (1056, 110, 4, 'Add oil to the pan, sauté the garlic slices until fragrant, then add the shrimp and cook until they turn pink.', 'steps_images/MD_34_4.jpg');
INSERT INTO `recipe_step` VALUES (1057, 110, 5, 'Squeeze out excess water from the luffa and add it to the pan. Stir-fry briefly, then add the scrambled eggs, a little salt, and soy sauce. Stir well for about a minute.', 'steps_images/MD_34_5.jpg');
INSERT INTO `recipe_step` VALUES (1058, 110, 6, 'Sprinkle with chopped scallions and serve.', 'steps_images/MD_34_6.jpg');
INSERT INTO `recipe_step` VALUES (1059, 111, 1, 'Steam the pumpkin and sauté the white mushrooms.', 'steps_images/Soup_12_1.jpg');
INSERT INTO `recipe_step` VALUES (1060, 111, 2, 'Add the steamed pumpkin, sautéed mushrooms, a bottle of milk, and some heavy cream into a blender and blend them together.', 'steps_images/Soup_12_2.jpg');
INSERT INTO `recipe_step` VALUES (1061, 111, 3, 'Transfer the mixture to a pot and cook for 10 minutes.', 'steps_images/Soup_12_3.jpg');
INSERT INTO `recipe_step` VALUES (1062, 111, 4, 'Once done, plate the dish and add a pinch of salt.', 'steps_images/Soup_12_4.jpg');
INSERT INTO `recipe_step` VALUES (1063, 111, 5, 'Finally, top with a few sautéed mushrooms and sprinkle some cracked pepper. Your dish is ready!', 'steps_images/Soup_12_5.jpg');
INSERT INTO `recipe_step` VALUES (1064, 112, 1, 'Blanch the pork ribs and set aside, peel the lotus root, cut the corn into chunks, chop the ginger, and rinse the peanuts.', 'steps_images/Soup_13_1.jpg');
INSERT INTO `recipe_step` VALUES (1065, 112, 2, 'Once the water boils, add all ingredients and cook for 1.5 hours.', 'steps_images/Soup_13_2.jpg');
INSERT INTO `recipe_step` VALUES (1066, 112, 3, 'Add dried scallops and season with salt to taste.', 'steps_images/Soup_13_3.jpg');
INSERT INTO `recipe_step` VALUES (1067, 112, 4, 'The lotus root will be very crispy after cooking.', 'steps_images/Soup_13_4.jpg');
INSERT INTO `recipe_step` VALUES (1068, 112, 5, 'Serve while hot.', 'steps_images/Soup_13_5.jpg');
INSERT INTO `recipe_step` VALUES (1069, 112, 6, 'Incredibly fresh and sweet.', 'steps_images/Soup_13_6.jpg');
INSERT INTO `recipe_step` VALUES (1070, 113, 1, 'Shred the carrot and finely chop the garlic.', 'steps_images/MD_35_1.jpg');
INSERT INTO `recipe_step` VALUES (1071, 113, 2, 'Wash the spinach and cut it into sections. Once the water boils, add a few drops of oil and some salt. Blanch the spinach for 1 minute, then drain and squeeze out the excess water.', 'steps_images/MD_35_2.jpg');
INSERT INTO `recipe_step` VALUES (1072, 113, 3, 'Heat the pan and add oil. Sauté the garlic until fragrant.', 'steps_images/MD_35_3.jpg');
INSERT INTO `recipe_step` VALUES (1073, 113, 4, 'Add the shredded carrot and stir-fry until soft.', 'steps_images/MD_35_4.jpg');
INSERT INTO `recipe_step` VALUES (1074, 113, 5, 'Add the spinach and stir-fry, then add a spoonful of soy sauce and mix well before serving.', 'steps_images/MD_35_5.jpg');
INSERT INTO `recipe_step` VALUES (1075, 113, 6, 'Done! Now it\'s time to enjoy.', 'steps_images/MD_35_6.jpg');
INSERT INTO `recipe_step` VALUES (1076, 115, 1, 'Prepare all ingredients and seasonings.', 'steps_images/APP_20_1.jpg');
INSERT INTO `recipe_step` VALUES (1077, 115, 2, 'Peel the lotus root and cut it into thin slices, then soak it in water.', 'steps_images/APP_20_2.jpg');
INSERT INTO `recipe_step` VALUES (1078, 115, 3, 'Cut off both ends of the okra, then lightly smash each piece with a knife to help the seasoning absorb.', 'steps_images/APP_20_3.jpg');
INSERT INTO `recipe_step` VALUES (1079, 115, 4, 'Boil half a pot of water, add 1/3 teaspoon of salt and 2 tablespoons of white vinegar. Once the water boils, add the lotus root slices. When the water boils again, cook for one more minute, then remove and rinse with cold water, draining off the excess.', 'steps_images/APP_20_4.jpg');
INSERT INTO `recipe_step` VALUES (1080, 115, 5, 'Boil half a pot of water, add 1/3 teaspoon of salt and 2 tablespoons of oil. Once the water boils, add the okra. After another minute of boiling, remove the okra.', 'steps_images/APP_20_5.jpg');
INSERT INTO `recipe_step` VALUES (1081, 115, 6, 'Finely chop garlic, spring onions, and chili peppers, then mix with 1/3 teaspoon of salt.', 'steps_images/APP_20_6.jpg');
INSERT INTO `recipe_step` VALUES (1082, 115, 7, 'Heat oil in a pan until it starts smoking, then pour it into a bowl.', 'steps_images/APP_20_7.jpg');
INSERT INTO `recipe_step` VALUES (1083, 115, 8, 'After the oil is heated, add 2 tablespoons of soy sauce, 1/3 teaspoon of sugar, 1/3 teaspoon of MSG, and 1 tablespoon of vinegar. Stir to combine.', 'steps_images/APP_20_8.jpg');
INSERT INTO `recipe_step` VALUES (1084, 115, 9, 'Arrange the lotus root slices in a single layer at the bottom of the plate.', 'steps_images/APP_20_9.jpg');
INSERT INTO `recipe_step` VALUES (1085, 115, 10, 'Place the okra in the center.', 'steps_images/APP_20_10.jpg');
INSERT INTO `recipe_step` VALUES (1086, 115, 11, 'Finally, pour the sauce over the dish and it’s ready to serve.', 'steps_images/APP_20_11.jpg');
INSERT INTO `recipe_step` VALUES (1087, 116, 1, 'Wash and cut the napa cabbage into large pieces, slice the preserved meat, soak the dried shiitake mushrooms and cut them into strips, and chop the scallions, garlic, and small chili peppers.', 'steps_images/MD_36_1.jpg');
INSERT INTO `recipe_step` VALUES (1088, 116, 2, 'Cut the tofu into thick slices and pan-fry until golden brown on both sides, then set aside.', 'steps_images/MD_36_2.jpg');
INSERT INTO `recipe_step` VALUES (1089, 116, 3, 'Add 1 tablespoon of oil to the pan, then add the preserved meat, stir-frying to render out the fat and aroma. Next, add the chopped scallions, garlic, and small chili peppers and stir-fry until fragrant.', 'steps_images/MD_36_3.jpg');
INSERT INTO `recipe_step` VALUES (1090, 116, 4, 'Add the napa cabbage and shiitake mushrooms, stir-fry them together.', 'steps_images/MD_36_4.jpg');
INSERT INTO `recipe_step` VALUES (1091, 116, 5, 'Season with light soy sauce, oyster sauce, salt, sugar, and white pepper powder.', 'steps_images/MD_36_5.jpg');
INSERT INTO `recipe_step` VALUES (1092, 116, 6, 'Add the stock and bring to a boil.', 'steps_images/MD_36_6.jpg');
INSERT INTO `recipe_step` VALUES (1093, 116, 7, 'Return the fried tofu to the pot and simmer for 5 minutes.', 'steps_images/MD_36_7.jpg');
INSERT INTO `recipe_step` VALUES (1094, 116, 8, 'Transfer the cooked dish into a clay pot, bring it to a boil again, and it’s ready to serve.', 'steps_images/MD_36_8.jpg');
INSERT INTO `recipe_step` VALUES (1095, 116, 9, 'With both meat and vegetables, it\'s warming for the body and heart, incredibly satisfying.', 'steps_images/MD_36_9.jpg');
INSERT INTO `recipe_step` VALUES (1096, 117, 1, 'Soak the dried beancurd sticks in warm water until softened.', 'steps_images/MD_37_1.jpg');
INSERT INTO `recipe_step` VALUES (1097, 117, 2, 'Squeeze out excess water from the beancurd sticks and cut them into sections.', 'steps_images/MD_37_2.jpg');
INSERT INTO `recipe_step` VALUES (1098, 117, 3, 'Wash the green garlic shoots and cut them into small pieces.', 'steps_images/MD_37_3.jpg');
INSERT INTO `recipe_step` VALUES (1099, 117, 4, 'Cut the beef brisket into chunks, blanch them in cold water over high heat until scum forms, then set aside.', 'steps_images/MD_37_4.jpg');
INSERT INTO `recipe_step` VALUES (1100, 117, 5, 'Heat oil in a wok and sauté scallions, ginger, garlic, star anise, cinnamon, bay leaves, and dried chili peppers until fragrant.', 'steps_images/MD_37_5.jpg');
INSERT INTO `recipe_step` VALUES (1101, 117, 6, 'Add the blanched beef brisket and stir-fry over medium heat until evenly coated.', 'steps_images/MD_37_6.jpg');
INSERT INTO `recipe_step` VALUES (1102, 117, 7, 'Add all the seasonings and stir-fry until well combined and evenly colored.', 'steps_images/MD_37_7.jpg');
INSERT INTO `recipe_step` VALUES (1103, 117, 8, 'Pour in hot water until the beef is fully submerged, bring to a boil, cover, and simmer over low heat for about an hour.', 'steps_images/MD_37_8.jpg');
INSERT INTO `recipe_step` VALUES (1104, 117, 9, 'Transfer the braised beef into a clay pot and bring to a boil. Add the soaked beancurd sticks, cover, and let simmer over low heat for 5 minutes.', 'steps_images/MD_37_9.jpg');
INSERT INTO `recipe_step` VALUES (1105, 117, 10, 'Finally, sprinkle the chopped green garlic shoots on top.', 'steps_images/MD_37_10.jpg');
INSERT INTO `recipe_step` VALUES (1106, 117, 11, 'Time to enjoy!', 'steps_images/MD_37_11.jpg');
INSERT INTO `recipe_step` VALUES (1107, 118, 1, 'Prepare all the ingredients. Use about 700-800g of chicken wings and drumsticks.', 'steps_images/MD_38_1.jpg');
INSERT INTO `recipe_step` VALUES (1108, 118, 2, 'Cut the chicken into small pieces and rinse thoroughly.', 'steps_images/MD_38_2.jpg');
INSERT INTO `recipe_step` VALUES (1109, 118, 3, 'Wash and cut the ginger and scallions into sections. Smash the garlic and peel it.', 'steps_images/MD_38_3.jpg');
INSERT INTO `recipe_step` VALUES (1110, 118, 4, 'Heat a small amount of oil in a pan and sauté the ginger and scallions until fragrant.', 'steps_images/MD_38_4.jpg');
INSERT INTO `recipe_step` VALUES (1111, 118, 5, 'Add the chicken and continue stir-frying.', 'steps_images/MD_38_5.jpg');
INSERT INTO `recipe_step` VALUES (1112, 118, 6, 'Stir-fry until the chicken turns white.', 'steps_images/MD_38_6.jpg');
INSERT INTO `recipe_step` VALUES (1113, 118, 7, 'You can use a pre-packaged braised chicken seasoning mix—one pack is enough for easy seasoning!', 'steps_images/MD_38_7.jpg');
INSERT INTO `recipe_step` VALUES (1114, 118, 8, 'Open the seasoning packet and pour it all into the pan.', 'steps_images/MD_38_8.jpg');
INSERT INTO `recipe_step` VALUES (1115, 118, 9, 'Continue stir-frying until the chicken is evenly coated in color.', 'steps_images/MD_38_9.jpg');
INSERT INTO `recipe_step` VALUES (1116, 118, 10, 'Add water until it covers the chicken. Simmer over medium-low heat for about 15 minutes. Then, add the chopped green and red peppers, stir-fry over high heat for another 1–2 minutes, and it’s ready to serve.', 'steps_images/MD_38_10.jpg');
INSERT INTO `recipe_step` VALUES (1117, 118, 11, 'Done! Plate and serve.', 'steps_images/MD_38_11.jpg');
INSERT INTO `recipe_step` VALUES (1118, 119, 1, 'Select only the tender leaves of the Chinese cabbage, wash them thoroughly, and cut them into small pieces. Peel and julienne the white radish after washing it. Chop the green onion into small pieces and place everything on a plate for later use.', 'steps_images/Noodle_12_1.jpg');
INSERT INTO `recipe_step` VALUES (1119, 119, 2, 'Pour peanut oil into a pot. First, add the chopped green onions and sauté until fragrant. Then, add the cabbage leaves and radish shreds, stir-frying until they soften. Pour in half a pot of water and bring it to a boil over high heat.', 'steps_images/Noodle_12_2.jpg');
INSERT INTO `recipe_step` VALUES (1120, 119, 3, 'In a small bowl, combine soy sauce, salt, white pepper, and sesame oil. Stir well with chopsticks until evenly mixed.', 'steps_images/Noodle_12_3.jpg');
INSERT INTO `recipe_step` VALUES (1121, 119, 4, 'Once the water in the pot comes to a boil, add the noodles and cook them until done. Then, crack an egg into the pot and cook it until set.', 'steps_images/Noodle_12_4.jpg');
INSERT INTO `recipe_step` VALUES (1122, 119, 5, 'When the noodles are cooked, scoop a spoonful of broth into the bowl with the sauce mixture and stir well to dissolve the salt completely.', 'steps_images/Noodle_12_5.jpg');
INSERT INTO `recipe_step` VALUES (1123, 119, 6, 'Slice the ham into thin pieces. Transfer the cooked noodles into a serving bowl, then place the egg and ham slices on top. Garnish with cilantro and pour in the noodle broth. Enjoy!', 'steps_images/Noodle_12_6.jpg');
INSERT INTO `recipe_step` VALUES (1124, 120, 1, 'Add starch, egg white, and a little cooking wine to the shredded meat.', 'steps_images/MD_39_1.jpg');
INSERT INTO `recipe_step` VALUES (1125, 120, 2, 'Marinate for half an hour.', 'steps_images/MD_39_2.jpg');
INSERT INTO `recipe_step` VALUES (1126, 120, 3, 'Brush a little oil on the dumpling wrappers and stack eight pieces together.', 'steps_images/MD_39_3.jpg');
INSERT INTO `recipe_step` VALUES (1127, 120, 4, 'Roll them out into palm-sized pancakes, make ten in total, stack them, and steam for 15 minutes after the water boils.', 'steps_images/MD_39_4.jpg');
INSERT INTO `recipe_step` VALUES (1128, 120, 5, 'Let them cool slightly and peel them apart carefully. Sixteen pieces are too few; there\'s more meat than pancakes.', 'steps_images/MD_39_5.jpg');
INSERT INTO `recipe_step` VALUES (1129, 120, 6, 'Cut green onions, carrots, and cucumbers into thin strips.', 'steps_images/MD_39_6.jpg');
INSERT INTO `recipe_step` VALUES (1130, 120, 7, 'Arrange them on a plate.', 'steps_images/MD_39_7.jpg');
INSERT INTO `recipe_step` VALUES (1131, 120, 8, 'Mix sweet bean sauce, sugar, light soy sauce, oyster sauce, soy sauce, and water to make a sauce.', 'steps_images/MD_39_8.jpg');
INSERT INTO `recipe_step` VALUES (1132, 120, 9, 'Heat oil in a pan and stir-fry the shredded meat.', 'steps_images/MD_39_9.jpg');
INSERT INTO `recipe_step` VALUES (1133, 120, 10, 'Stir-fry until the meat changes color.', 'steps_images/MD_39_10.jpg');
INSERT INTO `recipe_step` VALUES (1134, 120, 11, 'Add the sauce and continue stir-frying.', 'steps_images/MD_39_11.jpg');
INSERT INTO `recipe_step` VALUES (1135, 120, 12, 'Cook until the mixture reaches the desired consistency.', 'steps_images/MD_39_12.jpg');
INSERT INTO `recipe_step` VALUES (1136, 120, 13, 'Done! Time to enjoy your meal.', 'steps_images/MD_39_13.jpg');
INSERT INTO `recipe_step` VALUES (1137, 121, 1, 'Boil the pork skin in boiling water for 4–5 minutes, then take it out and rinse it thoroughly.', 'steps_images/APP_21_1.jpg');
INSERT INTO `recipe_step` VALUES (1138, 121, 2, 'Cut the pork skin into small strips using scissors.', 'steps_images/APP_21_2.jpg');
INSERT INTO `recipe_step` VALUES (1139, 121, 3, 'Rinse the pork skin several times, then place it in a pot with three times its amount of water. Bring to a boil, then reduce to low heat. When the water is reduced to one-third, add half a spoon of salt, half a spoon of soy sauce, and half a spoon of cooking wine. Stir well and turn off the heat.', 'steps_images/APP_21_3.jpg');
INSERT INTO `recipe_step` VALUES (1140, 121, 4, 'Refrigerate for 2 hours.', 'steps_images/APP_21_4.jpg');
INSERT INTO `recipe_step` VALUES (1141, 121, 5, 'Invert onto a plate.', 'steps_images/APP_21_5.jpg');
INSERT INTO `recipe_step` VALUES (1142, 121, 6, 'Finely chop the chili, cilantro, ginger, and garlic.', 'steps_images/APP_21_6.jpg');
INSERT INTO `recipe_step` VALUES (1143, 121, 7, 'In a bowl, mix 1 small spoon of salt, 3 spoons of soy sauce, 1 spoon of vinegar, a pinch of chicken essence, 1 spoon of sesame oil, and 5 spoons of cooled boiled water. Stir well.', 'steps_images/APP_21_7.jpg');
INSERT INTO `recipe_step` VALUES (1144, 121, 8, 'Arrange the dish on a plate.', 'steps_images/APP_21_8.jpg');
INSERT INTO `recipe_step` VALUES (1145, 121, 9, 'Pour the sauce over the dish and enjoy!', 'steps_images/APP_21_9.jpg');
INSERT INTO `recipe_step` VALUES (1146, 122, 1, 'Add 2 tablespoons of sesame paste, 1 tablespoon of light soy sauce, ½ tablespoon of dark soy sauce, 2 tablespoons of vinegar, 1 tablespoon of sugar, 1 tablespoon of honey, and 1 tablespoon of orange juice to a bowl. Mix well.', 'steps_images/APP_22_1.jpg');
INSERT INTO `recipe_step` VALUES (1147, 122, 2, 'Use only the leaves of the Chinese cabbage, tear them into pieces by hand, wash thoroughly, and drain the excess water.', 'steps_images/APP_22_2.jpg');
INSERT INTO `recipe_step` VALUES (1148, 122, 3, 'Drizzle the prepared sauce over the cabbage leaves, then mix by hand to ensure each piece is evenly coated.', 'steps_images/APP_22_3.jpg');
INSERT INTO `recipe_step` VALUES (1149, 122, 4, 'Transfer to a plate, sprinkle with a little white or black sesame seeds, and add some fruit pieces for garnish.', 'steps_images/APP_22_4.jpg');
INSERT INTO `recipe_step` VALUES (1150, 122, 5, 'Crisp, tender, and absolutely delicious!', 'steps_images/APP_22_5.jpg');
INSERT INTO `recipe_step` VALUES (1151, 123, 1, 'Wash and chop the green onions, ginger, and garlic. Blanch the lamb spine, skim off the foam, and rinse it clean.', 'steps_images/MD_40_1.jpg');
INSERT INTO `recipe_step` VALUES (1152, 123, 2, 'Heat oil in a pan until about 80% hot, then add green onions, ginger, garlic, and chili peppers. Stir-fry until fragrant.', 'steps_images/MD_40_2.jpg');
INSERT INTO `recipe_step` VALUES (1153, 123, 3, 'Add red chili bean paste and stir well.', 'steps_images/MD_40_3.jpg');
INSERT INTO `recipe_step` VALUES (1154, 123, 4, 'Add the lamb spine and stir-fry until the surface is slightly browned.', 'steps_images/MD_40_4.jpg');
INSERT INTO `recipe_step` VALUES (1155, 123, 5, 'Pour in light soy sauce and dark soy sauce at a ratio of about 2:1. Stir well to evenly coat the lamb.', 'steps_images/MD_40_5.jpg');
INSERT INTO `recipe_step` VALUES (1156, 123, 6, 'Add a spoonful of white sugar, then pour in enough water. Bring to a boil over high heat, then reduce to medium-low heat and simmer for 45-60 minutes.', 'steps_images/MD_40_6.jpg');
INSERT INTO `recipe_step` VALUES (1157, 123, 7, 'Before serving, add salt to taste and increase the heat to reduce the sauce.', 'steps_images/MD_40_7.jpg');
INSERT INTO `recipe_step` VALUES (1158, 123, 8, 'Once the lamb is tender and soft, turn off the heat and enjoy!', 'steps_images/MD_40_8.jpg');
INSERT INTO `recipe_step` VALUES (1159, 124, 1, 'Choose fresh Yellow Croaker, preferably 500g-1kg.', 'steps_images/MD_41_1.jpg');
INSERT INTO `recipe_step` VALUES (1160, 124, 2, 'Scale, gut, and clean the Yellow Croaker, removing any surface mucus.', 'steps_images/MD_41_2.jpg');
INSERT INTO `recipe_step` VALUES (1161, 124, 3, 'Prepare 40ml of seasoned soy sauce.', 'steps_images/MD_41_3.jpg');
INSERT INTO `recipe_step` VALUES (1162, 124, 4, 'Separate the green onion into white and green parts. Julienne the white part, slice the ginger into thin strips, and dice the red chili.', 'steps_images/MD_41_4.jpg');
INSERT INTO `recipe_step` VALUES (1163, 124, 5, 'Cut the green onion leaves into fine strips.', 'steps_images/MD_41_5.jpg');
INSERT INTO `recipe_step` VALUES (1164, 124, 6, 'Soak the julienned green onion in cold water.', 'steps_images/MD_41_6.jpg');
INSERT INTO `recipe_step` VALUES (1165, 124, 7, 'Make a few diagonal cuts on the fish and place the julienned onion and ginger on top.', 'steps_images/MD_41_7.jpg');
INSERT INTO `recipe_step` VALUES (1166, 124, 8, 'Steam the fish for 10 minutes once the water in the pot is boiling.', 'steps_images/MD_41_8.jpg');
INSERT INTO `recipe_step` VALUES (1167, 124, 9, 'After steaming, retain some of the cooking juices.', 'steps_images/MD_41_9.jpg');
INSERT INTO `recipe_step` VALUES (1168, 124, 10, 'Drizzle the prepared sauce over the fish and garnish with diced red chili and green onion strips.', 'steps_images/MD_41_10.jpg');
INSERT INTO `recipe_step` VALUES (1169, 124, 11, 'Heat some oil until it starts to smoke, then quickly pour it over the fish and green onions to release the aroma.', 'steps_images/MD_41_11.jpg');
INSERT INTO `recipe_step` VALUES (1170, 124, 12, 'Done! Enjoy your dish!', 'steps_images/MD_41_12.jpg');
INSERT INTO `recipe_step` VALUES (1171, 125, 1, 'Chop the shiitake mushrooms, lotus root, and ginger into fine pieces.', 'steps_images/MD_42_1.gif');
INSERT INTO `recipe_step` VALUES (1172, 125, 2, 'Mince the pork belly and mix it with salt, chicken powder, white sugar, cooking wine, and egg white. Stir in a clockwise direction until well combined.', 'steps_images/MD_42_2.gif');
INSERT INTO `recipe_step` VALUES (1173, 125, 3, 'Add starch along with the chopped shiitake mushrooms, lotus root, and ginger. Continue stirring in a clockwise direction.', 'steps_images/MD_42_3.gif');
INSERT INTO `recipe_step` VALUES (1174, 125, 4, 'Place four pieces of baby bok choy at the bottom of the pot.', 'steps_images/MD_42_4.gif');
INSERT INTO `recipe_step` VALUES (1175, 125, 5, 'Shape the seasoned minced pork into meatballs.', 'steps_images/MD_42_5.gif');
INSERT INTO `recipe_step` VALUES (1176, 125, 6, 'Arrange the meatballs on top of the bok choy in the pot.', 'steps_images/MD_42_6.gif');
INSERT INTO `recipe_step` VALUES (1177, 125, 7, 'Steam over boiling water for 40 minutes. Sprinkle a little white pepper into the broth before serving.', 'steps_images/MD_42_7.gif');
INSERT INTO `recipe_step` VALUES (1178, 126, 1, 'Choose fresh pork, chop it and wash it clean, and prepare the green onion and ginger.', 'steps_images/MD_43_1.jpg');
INSERT INTO `recipe_step` VALUES (1179, 126, 2, 'Use a meat grinder to mince the pork.', 'steps_images/MD_43_2.jpg');
INSERT INTO `recipe_step` VALUES (1180, 126, 3, 'Soak Sichuan peppercorns and ginger in warm water for later use.', 'steps_images/MD_43_3.jpg');
INSERT INTO `recipe_step` VALUES (1181, 126, 4, 'Add soy sauce, salt, oyster sauce, sugar, white pepper, and an egg to the minced meat, mix well, then gradually add the green onion and ginger water and continue mixing. Finally, pour hot oil over the mixture to lock in moisture.', 'steps_images/MD_43_4.jpg');
INSERT INTO `recipe_step` VALUES (1182, 126, 5, 'Wrap the meat filling individually into wonton wrappers.', 'steps_images/MD_43_5.jpg');
INSERT INTO `recipe_step` VALUES (1183, 126, 6, 'Simple and delicious broth: Soy sauce + chopped green onion + dried shrimp.', 'steps_images/MD_43_6.jpg');
INSERT INTO `recipe_step` VALUES (1184, 126, 7, 'Serve in a bowl and enjoy the aromatic fragrance.', 'steps_images/MD_43_7.jpg');
INSERT INTO `recipe_step` VALUES (1185, 127, 1, 'Add an appropriate amount of salt, sugar, and 5g of yeast to 500g of flour.', 'steps_images/MD_44_1.jpg');
INSERT INTO `recipe_step` VALUES (1186, 127, 2, 'Gradually add warm water to the flour in small amounts, stirring to form a crumbly texture.', 'steps_images/MD_44_2.jpg');
INSERT INTO `recipe_step` VALUES (1187, 127, 3, 'Knead the mixture into a dough and let it rest until it doubles in size.', 'steps_images/MD_44_3.jpg');
INSERT INTO `recipe_step` VALUES (1188, 127, 4, 'Prepare all the spices.', 'steps_images/MD_44_4.jpg');
INSERT INTO `recipe_step` VALUES (1189, 127, 5, 'Cut the pork belly into chunks and blanch them in water. Heat a pan, add a few pieces of rock sugar, and stir-fry on low heat until amber-colored. Add the pork and continue stir-frying.', 'steps_images/MD_44_5.jpg');
INSERT INTO `recipe_step` VALUES (1190, 127, 6, 'After the pork reaches a good color, transfer it to a rice cooker, add an appropriate amount of water, cinnamon, star anise, Sichuan peppercorns, bay leaves, dried chili peppers, salt, 1 tablespoon of light soy sauce, 1 tablespoon of dark soy sauce, 1 tablespoon of cooking wine, ginger slices, and green onion sections. Simmer for an hour.', 'steps_images/MD_44_6.jpg');
INSERT INTO `recipe_step` VALUES (1191, 127, 7, 'Roll the rested dough into long strips and cut them into evenly sized pieces.', 'steps_images/MD_44_7.jpg');
INSERT INTO `recipe_step` VALUES (1192, 127, 8, 'Roll each piece into a thicker center and thinner ends, then cover them with plastic wrap.', 'steps_images/MD_44_8.jpg');
INSERT INTO `recipe_step` VALUES (1193, 127, 9, 'Roll each dough piece flat.', 'steps_images/MD_44_9.jpg');
INSERT INTO `recipe_step` VALUES (1194, 127, 10, 'Roll each dough piece from one end, and once it’s rolled to the end, tuck the tail underneath. Flatten the roll and roll it into a 6 cm round pancake.', 'steps_images/MD_44_10.jpg');
INSERT INTO `recipe_step` VALUES (1195, 127, 11, 'Heat a pan without oil and place the rolled pancake in it. Fry each side for about 3 minutes until golden brown.', 'steps_images/MD_44_11.jpg');
INSERT INTO `recipe_step` VALUES (1196, 127, 12, 'Remove the cooked pork belly from the rice cooker.', 'steps_images/MD_44_12.jpg');
INSERT INTO `recipe_step` VALUES (1197, 127, 13, 'Chop the pork, green peppers, and cilantro.', 'steps_images/MD_44_13.jpg');
INSERT INTO `recipe_step` VALUES (1198, 127, 14, 'Cut the cooked pancake in half, stuff it with the chopped pork, and drizzle with some of the pork broth. The aroma is irresistible.', 'steps_images/MD_44_14.jpg');
INSERT INTO `recipe_step` VALUES (1199, 128, 1, 'Prepare all the ingredients.', 'steps_images/Noodle_13_1.jpg');
INSERT INTO `recipe_step` VALUES (1200, 128, 2, 'Chop the green onions, ginger, and cilantro finely.', 'steps_images/Noodle_13_2.jpg');
INSERT INTO `recipe_step` VALUES (1201, 128, 3, 'Wash the shiitake mushrooms.', 'steps_images/Noodle_13_3.jpg');
INSERT INTO `recipe_step` VALUES (1202, 128, 4, 'Dice the tomatoes, potatoes, shiitake mushrooms, and carrots.', 'steps_images/Noodle_13_4.jpg');
INSERT INTO `recipe_step` VALUES (1203, 128, 5, 'Heat oil in a pan, add a few Sichuan peppercorns. Once it starts smoking, use a spoon to scoop out the peppercorns.', 'steps_images/Noodle_13_5.jpg');
INSERT INTO `recipe_step` VALUES (1204, 128, 6, 'Add some of the chopped green onions and ginger.', 'steps_images/Noodle_13_6.jpg');
INSERT INTO `recipe_step` VALUES (1205, 128, 7, 'Add the ground meat and stir-fry. Once it changes color, add one tablespoon of vinegar, one tablespoon of yellow bean paste, a pinch of sugar, one tablespoon of light soy sauce, and half a tablespoon of dark soy sauce.', 'steps_images/Noodle_13_7.jpg');
INSERT INTO `recipe_step` VALUES (1206, 128, 8, 'Add the shiitake mushrooms and stir-fry for a few seconds.', 'steps_images/Noodle_13_8.jpg');
INSERT INTO `recipe_step` VALUES (1207, 128, 9, 'Add the tomatoes and stir-fry evenly.', 'steps_images/Noodle_13_9.jpg');
INSERT INTO `recipe_step` VALUES (1208, 128, 10, 'Add the potatoes and stir-fry evenly.', 'steps_images/Noodle_13_10.jpg');
INSERT INTO `recipe_step` VALUES (1209, 128, 11, 'Add the carrots, stir-fry evenly, add one tablespoon of salt, and stir for a few minutes.', 'steps_images/Noodle_13_11.jpg');
INSERT INTO `recipe_step` VALUES (1210, 128, 12, 'Add water, cover, and simmer for six to seven minutes.', 'steps_images/Noodle_13_12.jpg');
INSERT INTO `recipe_step` VALUES (1211, 128, 13, 'Add the remaining green onions and cilantro, then turn off the heat.', 'steps_images/Noodle_13_13.jpg');
INSERT INTO `recipe_step` VALUES (1212, 128, 14, 'Cook the noodles, add the stir-fried sauce, sprinkle some green onions and cilantro, and serve.', 'steps_images/Noodle_13_14.jpg');
INSERT INTO `recipe_step` VALUES (1213, 129, 1, 'Soak the lamb in cold water for 2-4 hours to remove the blood.', 'steps_images/MD_45_1.jpg');
INSERT INTO `recipe_step` VALUES (1214, 129, 2, 'Blanch the lamb in boiling water, skim off the foam, and cook for another 3 minutes. Then remove and rinse with warm water to remove impurities.', 'steps_images/MD_45_2.jpg');
INSERT INTO `recipe_step` VALUES (1215, 129, 3, 'Wash the radish and cut it into large chunks. Cut the green onions into large sections. Peel and smash the ginger. Finely chop some cilantro and some green onion.', 'steps_images/MD_45_3.jpg');
INSERT INTO `recipe_step` VALUES (1216, 129, 4, 'Place the blanched lamb and radish into the pot. Add an appropriate amount of water, along with green onions, ginger, Sichuan peppercorns, and dried chilies. Bring to a boil and skim off the foam again.', 'steps_images/MD_45_4.jpg');
INSERT INTO `recipe_step` VALUES (1217, 129, 5, 'Cover the pot with a lid and simmer on low heat for about 1 hour.', 'steps_images/MD_45_5.jpg');
INSERT INTO `recipe_step` VALUES (1218, 129, 6, 'Cut the tofu into thick slices.', 'steps_images/MD_45_6.jpg');
INSERT INTO `recipe_step` VALUES (1219, 129, 7, 'Cook the soaked wood ear mushrooms and vermicelli separately and set aside.', 'steps_images/MD_45_7.jpg');
INSERT INTO `recipe_step` VALUES (1220, 129, 8, 'Crack an egg and whisk it well. Fry it into an egg sheet, then cut it into thin strips.', 'steps_images/MD_45_8.jpg');
INSERT INTO `recipe_step` VALUES (1221, 129, 9, 'Tear the flatbread into small pieces and place them in a bowl.', 'steps_images/MD_45_9.jpg');
INSERT INTO `recipe_step` VALUES (1222, 129, 10, 'Remove the lamb and radish from the pot, then slice them.', 'steps_images/MD_45_10.jpg');
INSERT INTO `recipe_step` VALUES (1223, 129, 11, 'Strain the lamb broth and discard the solid bits. Season with salt and pepper.', 'steps_images/MD_45_11.jpg');
INSERT INTO `recipe_step` VALUES (1224, 129, 12, 'Place the tofu, wood ear mushrooms, vermicelli, radish, egg strips, and lamb slices into a bowl.', 'steps_images/MD_45_12.jpg');
INSERT INTO `recipe_step` VALUES (1225, 129, 13, 'Pour hot lamb broth over the ingredients, and gently rinse the ingredients three times to heat them thoroughly.', 'steps_images/MD_45_13.jpg');
INSERT INTO `recipe_step` VALUES (1226, 129, 14, 'Once the ingredients are heated, add the original broth, sprinkle with chopped green onions and cilantro, and drizzle with chili oil.', 'steps_images/MD_45_14.jpg');
INSERT INTO `recipe_step` VALUES (1227, 130, 1, 'Wash the pork belly clean and cut it into slices about 1cm thick.', 'steps_images/MD_46_1.jpg');
INSERT INTO `recipe_step` VALUES (1228, 130, 2, 'Marinate the pork belly with a little soy sauce, cooking wine, and pepper powder for 2 hours.', 'steps_images/MD_46_2.jpg');
INSERT INTO `recipe_step` VALUES (1229, 130, 3, 'Add a small amount of oil to the pan, heat it, then add one spoon of white sugar. Stir until it reaches a caramel color, then add the pork to the pan, ensuring the meat is fully coated with color. Stir-fry for about 5 minutes, turn off the heat, and sprinkle in two tablespoons of rice flour, making sure the meat is evenly coated.', 'steps_images/MD_46_3.jpg');
INSERT INTO `recipe_step` VALUES (1230, 130, 4, 'Cut the potatoes into chunks and lay them at the bottom of a bowl.', 'steps_images/MD_46_4.jpg');
INSERT INTO `recipe_step` VALUES (1231, 130, 5, 'Lay the marinated pork slices evenly over the potatoes in the bowl.', 'steps_images/MD_46_5.jpg');
INSERT INTO `recipe_step` VALUES (1232, 130, 6, 'Place a rack inside the pressure cooker, then put the bowl on top. Steam for 50 minutes.', 'steps_images/MD_46_6.jpg');
INSERT INTO `recipe_step` VALUES (1233, 130, 7, 'After 50 minutes, remove the bowl and garnish with a few chopped green onions.', 'steps_images/MD_46_7.jpg');
INSERT INTO `recipe_step` VALUES (1234, 130, 8, 'The dish is rich yet not greasy, and the meat melts in your mouth.', 'steps_images/MD_46_8.jpg');
INSERT INTO `recipe_step` VALUES (1235, 131, 1, 'Add five-spice powder, Sichuan pepper powder, cooking wine, sugar, and soy sauce to the minced meat, mix well, and marinate for 10 minutes.', 'steps_images/Noodle_14_1.jpg');
INSERT INTO `recipe_step` VALUES (1236, 131, 2, 'Heat the pan, add oil, and then add the minced meat. Stir-fry on medium heat.', 'steps_images/Noodle_14_2.jpg');
INSERT INTO `recipe_step` VALUES (1237, 131, 3, 'Once the minced meat turns white, add one spoon of bean paste, then continue stir-frying for 3 minutes. Set aside.', 'steps_images/Noodle_14_3.jpg');
INSERT INTO `recipe_step` VALUES (1238, 131, 4, 'The stir-fried minced meat should look like the image.', 'steps_images/Noodle_14_4.jpg');
INSERT INTO `recipe_step` VALUES (1239, 131, 5, 'Once the water boils, add the noodles, and prepare the soup base by adding one spoon of soy sauce, one spoon of vinegar, a bit of Sichuan pepper oil, a pinch of salt, and a little bit of Sichuan pepper powder into a bowl.', 'steps_images/Noodle_14_5.jpg');
INSERT INTO `recipe_step` VALUES (1240, 131, 6, 'Once the noodles are cooked, add the vegetables and blanch them together. Drain and place the noodles into a bowl, then add the vegetables, pour in the soup base, top with the minced meat, and enjoy.', 'steps_images/Noodle_14_6.jpg');
INSERT INTO `recipe_step` VALUES (1241, 132, 1, 'Soak the peanuts in clean water overnight, drain, and freeze them in the refrigerator for one day.', 'steps_images/APP_23_1.jpg');
INSERT INTO `recipe_step` VALUES (1242, 132, 2, 'Slice the garlic, heat oil in a pan, and fry the garlic slices until golden brown. Remove and drain the oil. Set aside. Using the same oil, heat it on high and fry the peanuts until slightly yellow, then remove and drain the oil.', 'steps_images/APP_23_2.jpg');
INSERT INTO `recipe_step` VALUES (1243, 132, 3, 'Add a little oil to the pan and stir-fry the dried chili peppers, Sichuan peppercorns, and star anise.', 'steps_images/APP_23_3.jpg');
INSERT INTO `recipe_step` VALUES (1244, 132, 4, 'Once fragrant, add the peanuts and stir-fry for about 2 minutes, then remove from the pan.', 'steps_images/APP_23_4.jpg');
INSERT INTO `recipe_step` VALUES (1245, 132, 5, 'Sprinkle with salt, sugar, and chili powder, then add the garlic slices. Gently shake and stir to combine. Let cool before serving.', 'steps_images/APP_23_5.jpg');
INSERT INTO `recipe_step` VALUES (1246, 133, 1, 'Main ingredients: soft tofu and beef.', 'steps_images/MD_47_1.jpg');
INSERT INTO `recipe_step` VALUES (1247, 133, 2, 'Mince the beef.', 'steps_images/MD_47_2.jpg');
INSERT INTO `recipe_step` VALUES (1248, 133, 3, 'Add cooking wine and cornstarch.', 'steps_images/MD_47_3.jpg');
INSERT INTO `recipe_step` VALUES (1249, 133, 4, 'Mix well and let it sit for 10 minutes.', 'steps_images/MD_47_4.jpg');
INSERT INTO `recipe_step` VALUES (1250, 133, 5, 'Cut the tofu into cubes.', 'steps_images/MD_47_5.jpg');
INSERT INTO `recipe_step` VALUES (1251, 133, 6, 'Cut the dried chili peppers into sections and remove seeds.', 'steps_images/MD_47_6.jpg');
INSERT INTO `recipe_step` VALUES (1252, 133, 7, 'Mince the ginger.', 'steps_images/MD_47_7.jpg');
INSERT INTO `recipe_step` VALUES (1253, 133, 8, 'Mince the garlic.', 'steps_images/MD_47_8.jpg');
INSERT INTO `recipe_step` VALUES (1254, 133, 9, 'Slice the spring onions and divide into two portions, keeping a smaller portion for garnishing later.', 'steps_images/MD_47_9.jpg');
INSERT INTO `recipe_step` VALUES (1255, 133, 10, 'Prepare a suitable amount of fermented black beans.', 'steps_images/MD_47_10.jpg');
INSERT INTO `recipe_step` VALUES (1256, 133, 11, 'Prepare an appropriate amount of red oil bean paste.', 'steps_images/MD_47_11.jpg');
INSERT INTO `recipe_step` VALUES (1257, 133, 12, 'Mince the fermented black beans and mix with Pixian red oil bean paste.', 'steps_images/MD_47_12.jpg');
INSERT INTO `recipe_step` VALUES (1258, 133, 13, 'Heat oil in a pan, add the minced beef and stir-fry until cooked, then set aside.', 'steps_images/MD_47_13.jpg');
INSERT INTO `recipe_step` VALUES (1259, 133, 14, 'Leave a little oil in the pan, heat it up, and add the dried chili peppers and Sichuan peppercorns, stir-frying over low heat to release fragrance.', 'steps_images/MD_47_14.jpg');
INSERT INTO `recipe_step` VALUES (1260, 133, 15, 'Remove the dried chili peppers and Sichuan peppercorns from the pan to avoid affecting the taste.', 'steps_images/MD_47_15.jpg');
INSERT INTO `recipe_step` VALUES (1261, 133, 16, 'Turn the heat to medium, add the bean paste and minced fermented black beans, and stir-fry until the red oil is released.', 'steps_images/MD_47_16.jpg');
INSERT INTO `recipe_step` VALUES (1262, 133, 17, 'Increase the heat, add the spring onion, ginger, and garlic, and stir-fry until fragrant.', 'steps_images/MD_47_17.jpg');
INSERT INTO `recipe_step` VALUES (1263, 133, 18, 'Add the tofu and gently shake the wok to stir-fry.', 'steps_images/MD_47_18.jpg');
INSERT INTO `recipe_step` VALUES (1264, 133, 19, 'Add a suitable amount of water.', 'steps_images/MD_47_19.jpg');
INSERT INTO `recipe_step` VALUES (1265, 133, 20, 'Once the water boils, add the minced beef, light soy sauce, black pepper powder, and a little white sugar, and stir-fry gently to mix. Reduce heat, cover the pan, and cook for about 5 minutes.', 'steps_images/MD_47_20.jpg');
INSERT INTO `recipe_step` VALUES (1266, 133, 21, 'Prepare a bowl of water starch.', 'steps_images/MD_47_21.jpg');
INSERT INTO `recipe_step` VALUES (1267, 133, 22, 'Pour in the water starch.', 'steps_images/MD_47_22.jpg');
INSERT INTO `recipe_step` VALUES (1268, 133, 23, 'Cook until the sauce thickens, then turn off the heat.', 'steps_images/MD_47_23.jpg');
INSERT INTO `recipe_step` VALUES (1269, 133, 24, 'Transfer to a plate and drizzle with Sichuan pepper oil and chili oil.', 'steps_images/MD_47_24.jpg');
INSERT INTO `recipe_step` VALUES (1270, 133, 25, 'Done! Start enjoying your meal.', 'steps_images/MD_47_25.jpg');
INSERT INTO `recipe_step` VALUES (1271, 134, 1, 'Clean the chicken wings and drain the excess water. Make 3 cuts on each side.', 'steps_images/MD_48_1.jpg');
INSERT INTO `recipe_step` VALUES (1272, 134, 2, 'Prepare the marinade: 20g soy sauce, 2g salt, 15g honey, 0.5g black pepper, 10g cumin powder, 3g cornstarch, 7.5ml cooking wine, 10g sesame oil.', 'steps_images/MD_48_2.jpg');
INSERT INTO `recipe_step` VALUES (1273, 134, 3, 'Place the chicken wings in the marinade bowl, cover it, and refrigerate for 12 to 24 hours.', 'steps_images/MD_48_3.jpg');
INSERT INTO `recipe_step` VALUES (1274, 134, 4, 'Coat each chicken wing with a layer of cornstarch and arrange them on a plate.', 'steps_images/MD_48_4.jpg');
INSERT INTO `recipe_step` VALUES (1275, 134, 5, 'Place the chicken wings in the microwave, cover with a lid with vents, and microwave on high for 5 minutes. Remove and set aside.', 'steps_images/MD_48_5.jpg');
INSERT INTO `recipe_step` VALUES (1276, 134, 6, 'Flip the chicken wings one by one, return them to the microwave, and microwave on high for another 2 minutes.', 'steps_images/MD_48_6.jpg');
INSERT INTO `recipe_step` VALUES (1277, 135, 1, 'Cut off the roots of the enoki mushrooms and wash them thoroughly.', 'steps_images/MD_49_1.jpg');
INSERT INTO `recipe_step` VALUES (1278, 135, 2, 'Drain the enoki mushrooms and add all the seasonings, except for the chopped chili and scallions, into a bowl.', 'steps_images/MD_49_2.jpg');
INSERT INTO `recipe_step` VALUES (1279, 135, 3, 'Place the enoki mushrooms into a glass bowl with a lid.', 'steps_images/MD_49_3.jpg');
INSERT INTO `recipe_step` VALUES (1280, 135, 4, 'Pour the seasoning sauce over the enoki mushrooms.', 'steps_images/MD_49_4.jpg');
INSERT INTO `recipe_step` VALUES (1281, 135, 5, 'Cover the bowl and microwave on high for 2 minutes.', 'steps_images/MD_49_5.jpg');
INSERT INTO `recipe_step` VALUES (1282, 135, 6, 'Drizzle with chopped chili and sprinkle with scallions.', 'steps_images/MD_49_6.jpg');
INSERT INTO `recipe_step` VALUES (1283, 135, 7, 'All done! Enjoy your dish.', 'steps_images/MD_49_7.jpg');
INSERT INTO `recipe_step` VALUES (1284, 136, 1, 'Slice the potatoes into thin pieces and soak them in water for a while.', 'steps_images/APP_24_1.jpg');
INSERT INTO `recipe_step` VALUES (1285, 136, 2, 'Use kitchen paper to absorb the excess water from the surface of the potatoes.', 'steps_images/APP_24_2.jpg');
INSERT INTO `recipe_step` VALUES (1286, 136, 3, 'Arrange the potatoes on a plate and brush with a layer of oil.', 'steps_images/APP_24_3.jpg');
INSERT INTO `recipe_step` VALUES (1287, 136, 4, 'Sprinkle with salt and chili powder.', 'steps_images/APP_24_4.jpg');
INSERT INTO `recipe_step` VALUES (1288, 136, 5, 'Place in the microwave and set to high power for 2 minutes and 30 seconds.', 'steps_images/APP_24_5.jpg');
INSERT INTO `recipe_step` VALUES (1289, 136, 6, 'Take it out, flip the potatoes, brush with oil, sprinkle more chili powder, and microwave for another 2 minutes.', 'steps_images/APP_24_6.jpg');
INSERT INTO `recipe_step` VALUES (1290, 136, 7, 'All done! Enjoy your dish!', 'steps_images/APP_24_7.jpg');
INSERT INTO `recipe_step` VALUES (1291, 137, 1, 'Prepare fresh pork.', 'steps_images/APP_25_1.jpg');
INSERT INTO `recipe_step` VALUES (1292, 137, 2, 'Wash the pork, drain the water, and cut it into small strips of appropriate size.', 'steps_images/APP_25_2.jpg');
INSERT INTO `recipe_step` VALUES (1293, 137, 3, 'Place the pork in a bowl and add a pinch of salt, a little five-spice powder, half a spoon of Sichuan pepper powder, one spoon of chili powder, half a spoon of dark soy sauce, and one spoon of light soy sauce. Mix well, then add one spoon of chili oil, a little white sugar, cumin powder, and one spoon of sesame oil. Slice the ginger and cut the green onions into sections, then add them to the bowl. Mix well and marinate for 5 to 10 minutes.', 'steps_images/APP_25_3.jpg');
INSERT INTO `recipe_step` VALUES (1294, 137, 4, 'Skewer the pork onto toothpicks, brush a layer of oil on the surface, and microwave on high for 4 minutes.', 'steps_images/APP_25_4.jpg');
INSERT INTO `recipe_step` VALUES (1295, 137, 5, 'Once done, sprinkle chili powder and cumin powder over the meat.', 'steps_images/APP_25_5.jpg');
INSERT INTO `recipe_step` VALUES (1296, 137, 6, 'Microwave on high for another 3 minutes.', 'steps_images/APP_25_6.jpg');
INSERT INTO `recipe_step` VALUES (1297, 137, 7, 'Remove from the microwave and use a brush to coat the meat with the oil and seasonings from the plate.', 'steps_images/APP_25_7.jpg');
INSERT INTO `recipe_step` VALUES (1298, 137, 8, 'Sprinkle some roasted white sesame seeds on top.', 'steps_images/APP_25_8.jpg');
INSERT INTO `recipe_step` VALUES (1299, 137, 9, 'Enjoy the flavorful and chewy pork skewers!', 'steps_images/APP_25_9.jpg');
INSERT INTO `recipe_step` VALUES (1300, 138, 1, 'Wash the eggplant thoroughly.', 'steps_images/MD_50_1.jpg');
INSERT INTO `recipe_step` VALUES (1301, 138, 2, 'Slice the eggplant.', 'steps_images/MD_50_2.jpg');
INSERT INTO `recipe_step` VALUES (1302, 138, 3, 'Place the eggplant into a rice cooker and cover with the lid.', 'steps_images/MD_50_3.jpg');
INSERT INTO `recipe_step` VALUES (1303, 138, 4, 'Cook until the eggplant becomes soft and tender.', 'steps_images/MD_50_4.jpg');
INSERT INTO `recipe_step` VALUES (1304, 138, 5, 'Heat oil in a pan, fry the star anise until fragrant, then add chopped scallions, ginger, and garlic, and sauté until aromatic.', 'steps_images/MD_50_5.jpg');
INSERT INTO `recipe_step` VALUES (1305, 138, 6, 'Add sweet bean paste and stir-fry.', 'steps_images/MD_50_6.jpg');
INSERT INTO `recipe_step` VALUES (1306, 138, 7, 'Add soy sauce and stir-fry.', 'steps_images/MD_50_7.jpg');
INSERT INTO `recipe_step` VALUES (1307, 138, 8, 'Transfer the eggplant into the pan along with the cooking liquid from the rice cooker.', 'steps_images/MD_50_8.jpg');
INSERT INTO `recipe_step` VALUES (1308, 138, 9, 'Add sugar.', 'steps_images/MD_50_9.jpg');
INSERT INTO `recipe_step` VALUES (1309, 138, 10, 'Add salt and MSG.', 'steps_images/MD_50_10.jpg');
INSERT INTO `recipe_step` VALUES (1310, 138, 11, 'Simmer until the sauce is reduced and flavorful, then turn off the heat and serve.', 'steps_images/MD_50_11.jpg');
INSERT INTO `recipe_step` VALUES (1311, 139, 1, 'Cut off the chicken head and tail.', 'steps_images/APP_26_1.jpg');
INSERT INTO `recipe_step` VALUES (1312, 139, 2, 'Place the chicken on a plate and rub cooking wine over it 2-3 times.', 'steps_images/APP_26_2.jpg');
INSERT INTO `recipe_step` VALUES (1313, 139, 3, 'Rub an appropriate amount of salt onto the chicken, but not too much.', 'steps_images/APP_26_3.jpg');
INSERT INTO `recipe_step` VALUES (1314, 139, 4, 'Apply 2-3 layers of seasoned soy sauce.', 'steps_images/APP_26_4.jpg');
INSERT INTO `recipe_step` VALUES (1315, 139, 5, 'Stuff two slices of ginger inside the chicken’s cavity.', 'steps_images/APP_26_5.jpg');
INSERT INTO `recipe_step` VALUES (1316, 139, 6, 'Place a few scallions in the rice cooker.', 'steps_images/APP_26_6.jpg');
INSERT INTO `recipe_step` VALUES (1317, 139, 7, 'Put the chicken into the rice cooker and place a few slices of ginger on top.', 'steps_images/APP_26_7.jpg');
INSERT INTO `recipe_step` VALUES (1318, 139, 8, 'Pour in the previously used cooking wine and seasoned soy sauce, then add about 20g of water.', 'steps_images/APP_26_8.jpg');
INSERT INTO `recipe_step` VALUES (1319, 139, 9, 'Cook for about 30 minutes. Insert a chopstick into the chicken leg—if it goes in easily and no blood seeps out, the chicken is fully cooked.', 'steps_images/APP_26_9.jpg');
INSERT INTO `recipe_step` VALUES (1320, 139, 10, 'The cooked chicken should look like the reference image.', 'steps_images/APP_26_10.jpg');
INSERT INTO `recipe_step` VALUES (1321, 139, 11, 'Shred the chicken into thin strips.', 'steps_images/APP_26_11.jpg');
INSERT INTO `recipe_step` VALUES (1322, 139, 12, 'Add seasonings, mix well, then add toasted white sesame seeds and chopped scallions. Drizzle some of the cooking juices over the chicken, mix well, and enjoy.', 'steps_images/APP_26_12.jpg');
INSERT INTO `recipe_step` VALUES (1323, 140, 1, 'Wash and finely chop the scallions.', 'steps_images/MD_51_1.jpg');
INSERT INTO `recipe_step` VALUES (1324, 140, 2, 'Prepare frozen dumplings.', 'steps_images/MD_51_2.jpg');
INSERT INTO `recipe_step` VALUES (1325, 140, 3, 'Add a small amount of oil to the rice cooker and swirl to coat the bottom.', 'steps_images/MD_51_3.jpg');
INSERT INTO `recipe_step` VALUES (1326, 140, 4, 'Place the frozen dumplings inside and shake gently to coat their bottoms with oil.', 'steps_images/MD_51_4.jpg');
INSERT INTO `recipe_step` VALUES (1327, 140, 5, 'Start the rice cooker using the cook function.', 'steps_images/MD_51_5.jpg');
INSERT INTO `recipe_step` VALUES (1328, 140, 6, 'When the rice cooker switches to warm mode, wait for a minute, then open the lid and add a little water.', 'steps_images/MD_51_6.jpg');
INSERT INTO `recipe_step` VALUES (1329, 140, 7, 'Restart the cooking function.', 'steps_images/MD_51_7.jpg');
INSERT INTO `recipe_step` VALUES (1330, 140, 8, 'When the rice cooker switches to warm mode again, let it sit for a minute before opening the lid.', 'steps_images/MD_51_8.jpg');
INSERT INTO `recipe_step` VALUES (1331, 140, 9, 'Sprinkle black sesame seeds.', 'steps_images/MD_51_9.jpg');
INSERT INTO `recipe_step` VALUES (1332, 140, 10, 'Garnish with chopped scallions and serve.', 'steps_images/MD_51_10.jpg');
INSERT INTO `recipe_step` VALUES (1333, 140, 11, 'Quick, easy, and delicious.', 'steps_images/MD_51_11.jpg');
INSERT INTO `recipe_step` VALUES (1334, 141, 1, 'Blanch the pork ribs.', 'steps_images/Soup_15_1.jpg');
INSERT INTO `recipe_step` VALUES (1335, 141, 2, 'Wash and slice the green onion and ginger.', 'steps_images/Soup_15_2.jpg');
INSERT INTO `recipe_step` VALUES (1336, 141, 3, 'Rinse the blanched pork ribs with water, then place them in a rice cooker. Add green onion, ginger, star anise, cooking wine, Sichuan peppercorns, salt, a little light soy sauce, and water. Select the soup mode and set it to cook for 3 hours.', 'steps_images/Soup_15_3.jpg');
INSERT INTO `recipe_step` VALUES (1337, 141, 4, 'A warm and comforting pork rib soup is ready to enjoy!', 'steps_images/Soup_15_4.jpg');
INSERT INTO `recipe_step` VALUES (1338, 142, 1, 'Prepare all the necessary ingredients.', 'steps_images/MD_52_1.jpg');
INSERT INTO `recipe_step` VALUES (1339, 142, 2, 'Cut the tomatoes into small pieces and set aside.', 'steps_images/MD_52_2.jpg');
INSERT INTO `recipe_step` VALUES (1340, 142, 3, 'Cut the green peppers into small pieces and set aside.', 'steps_images/MD_52_3.jpg');
INSERT INTO `recipe_step` VALUES (1341, 142, 4, 'Add 1g of salt and a little cooking wine to the eggs, then beat them well.', 'steps_images/MD_52_4.jpg');
INSERT INTO `recipe_step` VALUES (1342, 142, 5, 'Heat oil in a pan, pour in the egg mixture, let it set slightly, then stir-fry for 30 seconds. Remove and set aside.', 'steps_images/MD_52_5.jpg');
INSERT INTO `recipe_step` VALUES (1343, 142, 6, 'Heat oil in the pan and sauté the minced garlic until fragrant.', 'steps_images/MD_52_6.jpg');
INSERT INTO `recipe_step` VALUES (1344, 142, 7, 'Add the tomatoes and stir-fry until they soften.', 'steps_images/MD_52_7.jpg');
INSERT INTO `recipe_step` VALUES (1345, 142, 8, 'Add salt and sugar to taste, stir-fry, then return the cooked eggs to the pan.', 'steps_images/MD_52_8.jpg');
INSERT INTO `recipe_step` VALUES (1346, 142, 9, 'Pour in a small bowl of hot water, bring to a boil over high heat, and simmer for 2 minutes until the sauce thickens. Then, add the green peppers.', 'steps_images/MD_52_9.jpg');
INSERT INTO `recipe_step` VALUES (1347, 142, 10, 'Stir-fry for 10 seconds, then serve and enjoy!', 'steps_images/MD_52_10.jpg');
INSERT INTO `recipe_step` VALUES (1348, 143, 1, 'Trim both ends of the snow peas, rinse thoroughly, and slice the Chinese sausage.', 'steps_images/MD_53_1.jpg');
INSERT INTO `recipe_step` VALUES (1349, 143, 2, 'Add a pinch of salt and a few drops of vegetable oil to boiling water. Blanch the snow peas briefly, then remove and drain.', 'steps_images/MD_53_2.jpg');
INSERT INTO `recipe_step` VALUES (1350, 143, 3, 'Heat a little oil in a pan, add the Chinese sausage, and stir-fry over low heat until it releases its oil. Add sliced garlic and sauté until fragrant.', 'steps_images/MD_53_3.jpg');
INSERT INTO `recipe_step` VALUES (1351, 143, 4, 'Add the snow peas and stir-fry for a short while.', 'steps_images/MD_53_4.jpg');
INSERT INTO `recipe_step` VALUES (1352, 143, 5, 'Season with a little salt and sugar, then stir well to combine.', 'steps_images/MD_53_5.jpg');
INSERT INTO `recipe_step` VALUES (1353, 143, 6, 'Enjoy your meal!', 'steps_images/MD_53_6.jpg');
INSERT INTO `recipe_step` VALUES (1354, 144, 1, 'Mince fresh pork into ground meat.', 'steps_images/MD_54_1.jpg');
INSERT INTO `recipe_step` VALUES (1355, 144, 2, 'A slightly higher fat content is preferable.', 'steps_images/MD_54_2.jpg');
INSERT INTO `recipe_step` VALUES (1356, 144, 3, 'Add all the seasonings and stir clockwise with chopsticks for 10 minutes.', 'steps_images/MD_54_3.jpg');
INSERT INTO `recipe_step` VALUES (1357, 144, 4, 'Flatten the meat mixture into a patty using a plastic wrap.', 'steps_images/MD_54_4.jpg');
INSERT INTO `recipe_step` VALUES (1358, 144, 5, 'Add one egg to the mixture.', 'steps_images/MD_54_5.jpg');
INSERT INTO `recipe_step` VALUES (1359, 144, 6, 'Steam for 30 minutes. Garnish with chopped scallions and blanch a few greens in salted water for decoration.', 'steps_images/MD_54_6.jpg');
INSERT INTO `recipe_step` VALUES (1360, 145, 1, 'Prepare all the ingredients.', 'steps_images/Soup_14_1.jpg');
INSERT INTO `recipe_step` VALUES (1361, 145, 2, 'Cut the tofu into cubes and blanch in boiling water for one minute.', 'steps_images/Soup_14_2.jpg');
INSERT INTO `recipe_step` VALUES (1362, 145, 3, 'Finely chop the scallions and ginger.', 'steps_images/Soup_14_3.jpg');
INSERT INTO `recipe_step` VALUES (1363, 145, 4, 'Heat the pan with oil, then sauté the scallions and ginger until fragrant.', 'steps_images/Soup_14_4.jpg');
INSERT INTO `recipe_step` VALUES (1364, 145, 5, 'Add the scallops and stir-fry for a few seconds.', 'steps_images/Soup_14_5.jpg');
INSERT INTO `recipe_step` VALUES (1365, 145, 6, 'Add the tofu, water, and a pinch of salt, then bring to a boil over high heat.', 'steps_images/Soup_14_6.jpg');
INSERT INTO `recipe_step` VALUES (1366, 145, 7, 'Drizzle in a little cornstarch slurry while stirring in one direction.', 'steps_images/Soup_14_7.jpg');
INSERT INTO `recipe_step` VALUES (1367, 145, 8, 'Bring to a boil, then sprinkle with a little white pepper.', 'steps_images/Soup_14_8.jpg');
INSERT INTO `recipe_step` VALUES (1368, 145, 9, 'Finally, garnish with chopped scallions and enjoy!', 'steps_images/Soup_14_9.jpg');
INSERT INTO `recipe_step` VALUES (1369, 146, 1, 'Prepare fresh pork ribs, pumpkin, and garlic.', 'steps_images/MD_55_1.jpg');
INSERT INTO `recipe_step` VALUES (1370, 146, 2, 'Cut the pumpkin into chunks and arrange them on a plate. Clean the pork ribs thoroughly.', 'steps_images/MD_55_2.jpg');
INSERT INTO `recipe_step` VALUES (1371, 146, 3, 'Mince the garlic, then sauté it in hot oil to release its aroma.', 'steps_images/MD_55_3.jpg');
INSERT INTO `recipe_step` VALUES (1372, 146, 4, 'Mix oyster sauce, salt, soy sauce, a bit of white sugar, a pinch of white pepper, and some shredded ginger until well combined.', 'steps_images/MD_55_4.jpg');
INSERT INTO `recipe_step` VALUES (1373, 146, 5, 'Add the cleaned pork ribs to the prepared sauce, pour in a little starch water, and mix well by hand. Let it marinate for 20 minutes.', 'steps_images/MD_55_5.jpg');
INSERT INTO `recipe_step` VALUES (1374, 146, 6, 'Spread the marinated pork ribs evenly over the pumpkin pieces, then steam for about 20 minutes.', 'steps_images/MD_55_6.jpg');
INSERT INTO `recipe_step` VALUES (1375, 146, 7, 'Once done, garnish with chopped scallions and drizzle some hot oil on top. Serve and enjoy!', 'steps_images/MD_55_7.jpg');
INSERT INTO `recipe_step` VALUES (1376, 147, 1, 'Clean the squid and remove the dark membrane. Make shallow cuts on both sides of the squid.', 'steps_images/APP_27_1.jpg');
INSERT INTO `recipe_step` VALUES (1377, 147, 2, 'Cut the scallions into sections, mince the garlic, and crush the ginger. Place them in a glass bowl with salt, a bit of cooking wine, and soy sauce. Mix well, then remove the scallions, garlic, and ginger. Add chili paste and stir evenly.', 'steps_images/APP_27_2.jpg');
INSERT INTO `recipe_step` VALUES (1378, 147, 3, 'Add the squid to the marinade and mix thoroughly. Let it marinate for 30 minutes.', 'steps_images/APP_27_3.jpg');
INSERT INTO `recipe_step` VALUES (1379, 147, 4, 'Preheat the electric griddle and brush it with oil. Place the squid on the griddle to cook.', 'steps_images/APP_27_4.jpg');
INSERT INTO `recipe_step` VALUES (1380, 147, 5, 'While cooking, brush the squid with chili paste. Finally, sprinkle with white sesame seeds.', 'steps_images/APP_27_5.jpg');
INSERT INTO `recipe_step` VALUES (1381, 147, 6, 'Cut the cooked squid into strips and garnish with shredded scallions before serving.', 'steps_images/APP_27_6.jpg');
INSERT INTO `recipe_step` VALUES (1382, 148, 1, 'Clean the squid. Cut off the head and slit it open lengthwise with scissors.', 'steps_images/MD_56_1.jpg');
INSERT INTO `recipe_step` VALUES (1383, 148, 2, 'Remove the internal organs, including the transparent cartilage in the middle.', 'steps_images/MD_56_2.jpg');
INSERT INTO `recipe_step` VALUES (1384, 148, 3, 'Peel off the outer black membrane.', 'steps_images/MD_56_3.jpg');
INSERT INTO `recipe_step` VALUES (1385, 148, 4, 'Cut the squid into two large pieces, then score the inner side with a crisscross pattern without cutting through.', 'steps_images/MD_56_4.jpg');
INSERT INTO `recipe_step` VALUES (1386, 148, 5, 'Slice into strips about 2 cm wide.', 'steps_images/MD_56_5.jpg');
INSERT INTO `recipe_step` VALUES (1387, 148, 6, 'Blanch the squid in boiling water until it curls up, then immediately remove it.', 'steps_images/MD_56_6.jpg');
INSERT INTO `recipe_step` VALUES (1388, 148, 7, 'Prepare the additional ingredients.', 'steps_images/MD_56_7.jpg');
INSERT INTO `recipe_step` VALUES (1389, 148, 8, 'Heat peanut oil in a pan and sauté scallions, ginger, and chili peppers.', 'steps_images/MD_56_8.jpg');
INSERT INTO `recipe_step` VALUES (1390, 148, 9, 'Add a small amount of onion and stir-fry until fragrant.', 'steps_images/MD_56_9.jpg');
INSERT INTO `recipe_step` VALUES (1391, 148, 10, 'Once the onion turns translucent, add the squid.', 'steps_images/MD_56_10.jpg');
INSERT INTO `recipe_step` VALUES (1392, 148, 11, 'Season with salt and a bit of light soy sauce, then add chopped cilantro and stir-fry briefly.', 'steps_images/MD_56_11.jpg');
INSERT INTO `recipe_step` VALUES (1393, 148, 12, 'Transfer to a plate and serve.', 'steps_images/MD_56_12.jpg');
INSERT INTO `recipe_step` VALUES (1394, 149, 1, 'Clean the prepared squid, drain excess water, score the surface in a crisscross pattern, and cut into small pieces.', 'steps_images/MD_57_1.jpg');
INSERT INTO `recipe_step` VALUES (1395, 149, 2, 'Place the squid pieces on a plate and season with an appropriate amount of salt, minced garlic, and starch.', 'steps_images/MD_57_2.jpg');
INSERT INTO `recipe_step` VALUES (1396, 149, 3, 'Set the steam oven to high-temperature steam mode at 110°C and steam for 8 minutes. Remove, sprinkle with chopped scallions and diced red chili, and serve.', 'steps_images/MD_57_3.jpg');
INSERT INTO `recipe_step` VALUES (1397, 150, 1, 'Clean the squid thoroughly.', 'steps_images/MD_58_1.jpg');
INSERT INTO `recipe_step` VALUES (1398, 150, 2, 'Cut it into strips without completely slicing through.', 'steps_images/MD_58_2.jpg');
INSERT INTO `recipe_step` VALUES (1399, 150, 3, 'Place the squid strips in a bowl and add scallions, ginger, garlic, cooking wine, minced garlic chili sauce, and barbecue sauce.', 'steps_images/MD_58_3.jpg');
INSERT INTO `recipe_step` VALUES (1400, 150, 4, 'Mix well and let it marinate for 10 minutes.', 'steps_images/MD_58_4.jpg');
INSERT INTO `recipe_step` VALUES (1401, 150, 5, 'Slice the onion.', 'steps_images/MD_58_5.jpg');
INSERT INTO `recipe_step` VALUES (1402, 150, 6, 'Arrange the onion rings on the bottom of a plate.', 'steps_images/MD_58_6.jpg');
INSERT INTO `recipe_step` VALUES (1403, 150, 7, 'Place the marinated squid on top of the onion rings.', 'steps_images/MD_58_7.jpg');
INSERT INTO `recipe_step` VALUES (1404, 150, 8, 'Sprinkle a layer of white sesame seeds.', 'steps_images/MD_58_8.jpg');
INSERT INTO `recipe_step` VALUES (1405, 150, 9, 'Preheat the oven to 200°C (392°F).', 'steps_images/MD_58_9.jpg');
INSERT INTO `recipe_step` VALUES (1406, 150, 10, 'Bake the squid for 15-18 minutes.', 'steps_images/MD_58_10.jpg');
INSERT INTO `recipe_step` VALUES (1407, 150, 11, 'Garnish with chopped scallions, and it’s ready to serve!', 'steps_images/MD_58_11.jpg');
INSERT INTO `recipe_step` VALUES (1408, 151, 1, 'Prepare the ingredients and soak the shiitake mushrooms in water in advance.', 'steps_images/Soup_16_1.jpg');
INSERT INTO `recipe_step` VALUES (1409, 151, 2, 'Sauté the shiitake mushrooms and garlic in a pan until fragrant.', 'steps_images/Soup_16_2.jpg');
INSERT INTO `recipe_step` VALUES (1410, 151, 3, 'When the water starts boiling, add the rinsed rice and carrot slices.', 'steps_images/Soup_16_3.jpg');
INSERT INTO `recipe_step` VALUES (1411, 151, 4, 'Continue simmering over low heat until the rice is nearly cooked.', 'steps_images/Soup_16_4.jpg');
INSERT INTO `recipe_step` VALUES (1412, 151, 5, 'Add the squid and fresh shrimp, then cook until fully done.', 'steps_images/Soup_16_5.jpg');
INSERT INTO `recipe_step` VALUES (1413, 151, 6, 'Stir in the seasonings and chopped garlic chives.', 'steps_images/Soup_16_6.jpg');
INSERT INTO `recipe_step` VALUES (1414, 151, 7, 'And just like that, a simple, delicious seafood congee is ready!', 'steps_images/Soup_16_7.jpg');
INSERT INTO `recipe_step` VALUES (1415, 152, 1, 'Prepare all the ingredients in advance.', 'steps_images/MD_59_1.jpg');
INSERT INTO `recipe_step` VALUES (1416, 152, 2, 'Separate the egg yolk and egg white; mince the pork fat; chop the green onions and set aside.', 'steps_images/MD_59_2.jpg');
INSERT INTO `recipe_step` VALUES (1417, 152, 3, 'Clean the squid thoroughly and blend it into a paste using a food processor, adding an appropriate amount of water while blending.', 'steps_images/MD_59_3.jpg');
INSERT INTO `recipe_step` VALUES (1418, 152, 4, 'Add the minced pork, egg white, cooking wine, cornstarch, and salt to the squid paste, then stir in one direction until the mixture becomes sticky. Add the chopped green onions and five-spice powder, mix well, and set aside.', 'steps_images/MD_59_4.jpg');
INSERT INTO `recipe_step` VALUES (1419, 152, 5, 'Mix the egg yolk with cornstarch until well combined.', 'steps_images/MD_59_5.jpg');
INSERT INTO `recipe_step` VALUES (1420, 152, 6, 'Dip the wonton wrappers in the egg yolk mixture, place a portion of the prepared squid filling in the center, then cover with another egg yolk-coated wonton wrapper and press into a patty shape.', 'steps_images/MD_59_6.jpg');
INSERT INTO `recipe_step` VALUES (1421, 152, 7, 'Heat oil in a pan until it reaches 50% of its maximum heat. Fry the squid patties over low heat until golden brown on both sides, then remove. Increase the oil temperature to 80-90% of its maximum heat and fry the patties again briefly before removing and draining the excess oil.', 'steps_images/MD_59_7.jpg');
INSERT INTO `recipe_step` VALUES (1422, 152, 8, 'Sprinkle with chili powder and enjoy!', 'steps_images/MD_59_8.jpg');
INSERT INTO `recipe_step` VALUES (1423, 153, 1, 'Remove the head and innards of a squid, peel off the outer skin, and rinse thoroughly.', 'steps_images/APP_28_1.jpg');
INSERT INTO `recipe_step` VALUES (1424, 153, 2, 'Slice the squid horizontally into rings.', 'steps_images/APP_28_2.jpg');
INSERT INTO `recipe_step` VALUES (1425, 153, 3, 'Bring a pot of water to a boil and blanch the squid rings. Once they curl up, immediately remove and drain.', 'steps_images/APP_28_3.jpg');
INSERT INTO `recipe_step` VALUES (1426, 153, 4, 'Add a small amount of salt, white pepper, and cooking wine to the squid rings, mix well, and marinate for about 15 minutes.', 'steps_images/APP_28_4.jpg');
INSERT INTO `recipe_step` VALUES (1427, 153, 5, 'Prepare a beaten egg, some dry starch, and breadcrumbs.', 'steps_images/APP_28_5.jpg');
INSERT INTO `recipe_step` VALUES (1428, 153, 6, 'Coat the squid rings evenly with dry starch.', 'steps_images/APP_28_6.jpg');
INSERT INTO `recipe_step` VALUES (1429, 153, 7, 'Dip the coated rings into the beaten egg.', 'steps_images/APP_28_7.jpg');
INSERT INTO `recipe_step` VALUES (1430, 153, 8, 'Finally, coat them thoroughly with breadcrumbs.', 'steps_images/APP_28_8.jpg');
INSERT INTO `recipe_step` VALUES (1431, 153, 9, 'The squid rings are now ready for frying, as shown in the image.', 'steps_images/APP_28_9.jpg');
INSERT INTO `recipe_step` VALUES (1432, 153, 10, 'Heat oil in a pan and test the temperature with chopsticks. When small bubbles form around them, add the squid rings and fry until golden brown.', 'steps_images/APP_28_10.jpg');
INSERT INTO `recipe_step` VALUES (1433, 153, 11, 'All done! Time to enjoy.', 'steps_images/APP_28_11.jpg');
INSERT INTO `recipe_step` VALUES (1434, 154, 1, 'Soak the squid in water for three hours until it becomes fully soft.', 'steps_images/MD_60_1.jpg');
INSERT INTO `recipe_step` VALUES (1435, 154, 2, 'Remove the purple membrane and the hard bone from the soaked squid. Score the side with the hard bone, then cut it into small pieces.', 'steps_images/MD_60_2.jpg');
INSERT INTO `recipe_step` VALUES (1436, 154, 3, 'Remove the seeds from the green pepper and cut it into small chunks.', 'steps_images/MD_60_3.jpg');
INSERT INTO `recipe_step` VALUES (1437, 154, 4, 'Heat a wok, add oil, and sauté the ginger slices until fragrant.', 'steps_images/MD_60_4.jpg');
INSERT INTO `recipe_step` VALUES (1438, 154, 5, 'Add the squid and stir-fry until it curls up.', 'steps_images/MD_60_5.jpg');
INSERT INTO `recipe_step` VALUES (1439, 154, 6, 'Pour in two tablespoons of broth, oyster sauce, salt, and MSG. Simmer for two minutes, then add the green pepper and stir-fry until just cooked. Finally, add cornstarch slurry to thicken the sauce.', 'steps_images/MD_60_6.jpg');
INSERT INTO `recipe_step` VALUES (1440, 154, 7, 'Done! Time to enjoy your meal.', 'steps_images/MD_60_7.jpg');
INSERT INTO `recipe_step` VALUES (1441, 155, 1, 'Put Chinese cured pork into a pan, add an appropriate amount of water and a little oil.', 'steps_images/MD_61_1.jpg');
INSERT INTO `recipe_step` VALUES (1442, 155, 2, 'Cook over low heat until the pork becomes slightly crispy and releases its fat.', 'steps_images/MD_61_2.jpg');
INSERT INTO `recipe_step` VALUES (1443, 155, 3, 'Add potato slices and continue stir-frying.', 'steps_images/MD_61_3.jpg');
INSERT INTO `recipe_step` VALUES (1444, 155, 4, 'Pour in some light soy sauce and a little water.', 'steps_images/MD_61_4.jpg');
INSERT INTO `recipe_step` VALUES (1445, 155, 5, 'Bring to a boil over high heat, then reduce to low heat and simmer for 3-5 minutes.', 'steps_images/MD_61_5.jpg');
INSERT INTO `recipe_step` VALUES (1446, 155, 6, 'Add red chili peppers and continue stir-frying.', 'steps_images/MD_61_6.jpg');
INSERT INTO `recipe_step` VALUES (1447, 155, 7, 'Finally, season with salt to taste.', 'steps_images/MD_61_7.jpg');
INSERT INTO `recipe_step` VALUES (1448, 155, 8, 'Done! Enjoy your meal.', 'steps_images/MD_61_8.jpg');
INSERT INTO `recipe_step` VALUES (1449, 156, 1, 'Peel the potatoes and cut them into thin strips.', 'steps_images/MD_62_1.jpg');
INSERT INTO `recipe_step` VALUES (1450, 156, 2, 'Rinse the potato strips in clean water several times until the water runs clear to remove the surface starch, then soak them in clean water.', 'steps_images/MD_62_2.jpg');
INSERT INTO `recipe_step` VALUES (1451, 156, 3, 'Soak dried red chili peppers in warm water for five minutes and cut them into small sections. Slice the green onion and garlic.', 'steps_images/MD_62_3.jpg');
INSERT INTO `recipe_step` VALUES (1452, 156, 4, 'Add oil to a pan, add Sichuan peppercorns, and stir-fry over low heat until they turn dark brown. Remove and discard the peppercorns.', 'steps_images/MD_62_4.jpg');
INSERT INTO `recipe_step` VALUES (1453, 156, 5, 'Add dried chilies and green onion slices, and continue to stir-fry over low heat until fragrant.', 'steps_images/MD_62_5.jpg');
INSERT INTO `recipe_step` VALUES (1454, 156, 6, 'Turn the heat to high, add the drained potato strips, stir-fry quickly, and add one spoon of white vinegar.', 'steps_images/MD_62_6.jpg');
INSERT INTO `recipe_step` VALUES (1455, 156, 7, 'Add a suitable amount of salt and sugar, and keep stir-frying.', 'steps_images/MD_62_7.jpg');
INSERT INTO `recipe_step` VALUES (1456, 156, 8, 'Finally, add the garlic and the remaining spoon of white vinegar, and stir well.', 'steps_images/MD_62_8.jpg');
INSERT INTO `recipe_step` VALUES (1457, 156, 9, 'Remove from heat, plate, and enjoy.', 'steps_images/MD_62_9.jpg');
INSERT INTO `recipe_step` VALUES (1458, 157, 1, 'Peel and wash the potatoes clean.', 'steps_images/MD_63_1.jpg');
INSERT INTO `recipe_step` VALUES (1459, 157, 2, 'Slice the king oyster mushrooms.', 'steps_images/MD_63_2.jpg');
INSERT INTO `recipe_step` VALUES (1460, 157, 3, 'Cut the potatoes into 0.5 cm thick slices, soak them in water to wash off the starch, then drain.', 'steps_images/MD_63_3.jpg');
INSERT INTO `recipe_step` VALUES (1461, 157, 4, 'Add cornstarch, soy sauce, salt, and half a bowl of water into a bowl, stir well to make the sauce.', 'steps_images/MD_63_4.jpg');
INSERT INTO `recipe_step` VALUES (1462, 157, 5, 'Bring water to a boil in a pot, then blanch the king oyster mushrooms until soft, then drain and set aside', 'steps_images/MD_63_5.jpg');
INSERT INTO `recipe_step` VALUES (1463, 157, 6, 'Heat the pot and add oil, fry the potato slices until golden, then drain the oil and set aside.', 'steps_images/MD_63_6.jpg');
INSERT INTO `recipe_step` VALUES (1464, 157, 7, 'Leave a small amount of oil in the pan, then sauté the onion, ginger, and garlic until fragrant.', 'steps_images/MD_63_7.jpg');
INSERT INTO `recipe_step` VALUES (1465, 157, 8, 'Add the king oyster mushrooms and stir-fry evenly, then add oyster sauce.', 'steps_images/MD_63_8.jpg');
INSERT INTO `recipe_step` VALUES (1466, 157, 9, 'Add the potato slices and stir-fry evenly.', 'steps_images/MD_63_9.jpg');
INSERT INTO `recipe_step` VALUES (1467, 157, 10, 'Pour in the sauce and stir-fry until the sauce thickens, then serve.', 'steps_images/MD_63_10.jpg');
INSERT INTO `recipe_step` VALUES (1468, 157, 11, 'The dish is ready! Time to enjoy!', 'steps_images/MD_63_11.jpg');
INSERT INTO `recipe_step` VALUES (1469, 158, 1, 'Prepare the ingredients and seasonings.', 'steps_images/MD_64_1.jpg');
INSERT INTO `recipe_step` VALUES (1470, 158, 2, 'Take a slice of bacon and roll the enoki mushrooms, securing them with a toothpick. Each portion should be 13-15g of enoki mushrooms.', 'steps_images/MD_64_2.jpg');
INSERT INTO `recipe_step` VALUES (1471, 158, 3, 'Arrange the prepared bacon rolls neatly and preheat the oven to 180°C.', 'steps_images/MD_64_3.jpg');
INSERT INTO `recipe_step` VALUES (1472, 158, 4, 'Next, prepare the sauce by combining soy sauce, oyster sauce, rice vinegar, and plum wine in a small bowl. Stir to mix.', 'steps_images/MD_64_4.jpg');
INSERT INTO `recipe_step` VALUES (1473, 158, 5, 'Add fine sugar, toasted sesame seeds, and chopped green onions, then pour in 50-60g of purified water. Stir gently until well combined.', 'steps_images/MD_64_5.jpg');
INSERT INTO `recipe_step` VALUES (1474, 158, 6, 'Use a small spoon to drizzle the sauce over the bacon-enoki rolls.', 'steps_images/MD_64_6.jpg');
INSERT INTO `recipe_step` VALUES (1475, 158, 7, 'Sprinkle a little pepper on top.', 'steps_images/MD_64_7.jpg');
INSERT INTO `recipe_step` VALUES (1476, 158, 8, 'Place in the preheated oven and bake for 25-30 minutes.', 'steps_images/MD_64_8.jpg');
INSERT INTO `recipe_step` VALUES (1477, 159, 1, 'Prepare all the ingredients.', 'steps_images/MD_65_1.jpg');
INSERT INTO `recipe_step` VALUES (1478, 159, 2, 'First, press the tofu to remove excess water.', 'steps_images/MD_65_2.jpg');
INSERT INTO `recipe_step` VALUES (1479, 159, 3, 'Cut the bacon in half.', 'steps_images/MD_65_3.jpg');
INSERT INTO `recipe_step` VALUES (1480, 159, 4, 'Slice the tofu into pieces about 1 cm thick.', 'steps_images/MD_65_4.jpg');
INSERT INTO `recipe_step` VALUES (1481, 159, 5, 'Wrap the tofu with bacon, or you can use seaweed.', 'steps_images/MD_65_5.jpg');
INSERT INTO `recipe_step` VALUES (1482, 159, 6, 'Heat a little oil on a baking sheet over medium heat.', 'steps_images/MD_65_6.jpg');
INSERT INTO `recipe_step` VALUES (1483, 159, 7, 'Place the tofu on the baking sheet to fry.', 'steps_images/MD_65_7.jpg');
INSERT INTO `recipe_step` VALUES (1484, 159, 8, 'Brush soy sauce on both sides of the tofu and fry until golden brown.', 'steps_images/MD_65_8.jpg');
INSERT INTO `recipe_step` VALUES (1485, 159, 9, 'Sprinkle an appropriate amount of sesame seeds on top, and you\'re done!', 'steps_images/MD_65_9.jpg');
INSERT INTO `recipe_step` VALUES (1486, 159, 10, 'Isn\'t it very simple?', 'steps_images/MD_65_10.jpg');
INSERT INTO `recipe_step` VALUES (1487, 160, 1, 'Rinse the snow peas with water, and remove the tough ends and side strings.', 'steps_images/MD_66_1.jpg');
INSERT INTO `recipe_step` VALUES (1488, 160, 2, 'Slice the garlic, cut the bacon into wide strips, and slice the bell peppers into strips.', 'steps_images/MD_66_2.jpg');
INSERT INTO `recipe_step` VALUES (1489, 160, 3, 'Heat the pan and oil, sauté the garlic slices until fragrant, then add the bacon and stir-fry for a few moments.', 'steps_images/MD_66_3.jpg');
INSERT INTO `recipe_step` VALUES (1490, 160, 4, 'Add the bell pepper strips and stir-fry until they are just tender.', 'steps_images/MD_66_4.jpg');
INSERT INTO `recipe_step` VALUES (1491, 160, 5, 'Add the snow peas, season with salt, and stir well.', 'steps_images/MD_66_5.jpg');
INSERT INTO `recipe_step` VALUES (1492, 160, 6, 'Stir-fry on high heat for about 30 seconds until the snow peas slightly darken in color, then add a small amount of soy sauce, stir well, and serve.', 'steps_images/MD_66_6.jpg');
INSERT INTO `recipe_step` VALUES (1493, 161, 1, 'Break the cauliflower into small florets, soak them in salted water for 30 minutes, and then rinse.', 'steps_images/MD_67_1.jpg');
INSERT INTO `recipe_step` VALUES (1494, 161, 2, 'Wash the carrots and slice them.', 'steps_images/MD_67_2.jpg');
INSERT INTO `recipe_step` VALUES (1495, 161, 3, 'Cut the bacon into small pieces.', 'steps_images/MD_67_3.jpg');
INSERT INTO `recipe_step` VALUES (1496, 161, 4, 'Wash and cut the dried chilies into sections, slice the garlic cloves.', 'steps_images/MD_67_4.jpg');
INSERT INTO `recipe_step` VALUES (1497, 161, 5, 'Blanch the washed cauliflower and carrots, then drain the water.', 'steps_images/MD_67_5.jpg');
INSERT INTO `recipe_step` VALUES (1498, 161, 6, 'Add a little oil to the pan and heat it, then add the garlic and dried chilies to sauté.', 'steps_images/MD_67_6.jpg');
INSERT INTO `recipe_step` VALUES (1499, 161, 7, 'Add the bacon and stir-fry for a while.', 'steps_images/MD_67_7.jpg');
INSERT INTO `recipe_step` VALUES (1500, 161, 8, 'Add the blanched cauliflower and carrots, then stir-fry.', 'steps_images/MD_67_8.jpg');
INSERT INTO `recipe_step` VALUES (1501, 161, 9, 'Add a little salt to taste.', 'steps_images/MD_67_9.jpg');
INSERT INTO `recipe_step` VALUES (1502, 161, 10, 'Stir-fry everything evenly and then remove from the pan.', 'steps_images/MD_67_10.jpg');
INSERT INTO `recipe_step` VALUES (1503, 162, 1, 'Prepare all the ingredients.', 'steps_images/MD_68_1.jpg');
INSERT INTO `recipe_step` VALUES (1504, 162, 2, 'Pour an appropriate amount of cooking oil into the pan, heat on high, and stir-fry the diced carrots, sausage, and peas.', 'steps_images/MD_68_2.jpg');
INSERT INTO `recipe_step` VALUES (1505, 162, 3, 'Stir-fry until the ingredients are slightly softened, then add the rice and break it up.', 'steps_images/MD_68_3.jpg');
INSERT INTO `recipe_step` VALUES (1506, 162, 4, 'Add 2 tablespoons of soy sauce, 1 tablespoon of oyster sauce, and 1 tablespoon of salt. Stir well to season.', 'steps_images/MD_68_4.jpg');
INSERT INTO `recipe_step` VALUES (1507, 162, 5, 'Cut the cheese slices in half.', 'steps_images/MD_68_5.jpg');
INSERT INTO `recipe_step` VALUES (1508, 162, 6, 'Lay a strip of bacon flat, place half a slice of cheese on the bottom, then place a rice ball on top.', 'steps_images/MD_68_6.jpg');
INSERT INTO `recipe_step` VALUES (1509, 162, 7, 'Roll it up from the bottom to the top.', 'steps_images/MD_68_7.jpg');
INSERT INTO `recipe_step` VALUES (1510, 162, 8, 'Arrange them on a baking tray lined with parchment paper.', 'steps_images/MD_68_8.jpg');
INSERT INTO `recipe_step` VALUES (1511, 162, 9, 'Place in a preheated oven at 180°C (356°F) on the middle rack for 12-15 minutes.', 'steps_images/MD_68_9.jpg');
INSERT INTO `recipe_step` VALUES (1512, 162, 10, 'Take out the baking tray, plate the dish, grind some black pepper on top, and garnish with rosemary.', 'steps_images/MD_68_10.jpg');
INSERT INTO `recipe_step` VALUES (1513, 163, 1, 'Bring water to a boil in a wok, add a pinch of salt, and blanch the shredded white radish.', 'steps_images/MD_70_1.jpg');
INSERT INTO `recipe_step` VALUES (1514, 163, 2, 'Squeeze out the excess water from the blanched radish and place it in a bowl.', 'steps_images/MD_70_2.jpg');
INSERT INTO `recipe_step` VALUES (1515, 163, 3, 'Add shredded bacon, chopped scallions, and flour to the bowl.', 'steps_images/MD_70_3.jpg');
INSERT INTO `recipe_step` VALUES (1516, 163, 4, 'Add a bit of salt, pepper, and a splash of water, then mix well to combine.', 'steps_images/MD_70_4.jpg');
INSERT INTO `recipe_step` VALUES (1517, 163, 5, 'Heat a pan with a little oil, press the radish mixture into patties, and place them in the pan.', 'steps_images/MD_70_5.jpg');
INSERT INTO `recipe_step` VALUES (1518, 163, 6, 'Cook over low heat until both sides are golden brown.', 'steps_images/MD_70_6.jpg');
INSERT INTO `recipe_step` VALUES (1519, 163, 7, 'Remove and place the patties on paper towels to absorb excess oil.', 'steps_images/MD_70_7.jpg');
INSERT INTO `recipe_step` VALUES (1520, 163, 8, 'Done! Time to enjoy your delicious radish cakes.', 'steps_images/MD_70_8.jpg');
INSERT INTO `recipe_step` VALUES (1521, 164, 1, 'Prepare all the required ingredients.', 'steps_images/MD_69_1.jpg');
INSERT INTO `recipe_step` VALUES (1522, 164, 2, 'Slice the bacon and set aside.', 'steps_images/MD_69_2.jpg');
INSERT INTO `recipe_step` VALUES (1523, 164, 3, 'Crush the garlic into a paste and cut the dried chili into strips.', 'steps_images/MD_69_3.jpg');
INSERT INTO `recipe_step` VALUES (1524, 164, 4, 'Julienne the bell peppers.', 'steps_images/MD_69_4.jpg');
INSERT INTO `recipe_step` VALUES (1525, 164, 5, 'Slice the okra diagonally into thick pieces.', 'steps_images/MD_69_5.jpg');
INSERT INTO `recipe_step` VALUES (1526, 164, 6, 'Heat oil in a hot pan until about 60% hot, then add the bacon and stir-fry.', 'steps_images/MD_69_6.jpg');
INSERT INTO `recipe_step` VALUES (1527, 164, 7, 'Add the garlic paste and dried chili, stir-fry for one minute.', 'steps_images/MD_69_7.jpg');
INSERT INTO `recipe_step` VALUES (1528, 164, 8, 'Toss in the bell peppers and stir-fry for a few seconds.', 'steps_images/MD_69_8.jpg');
INSERT INTO `recipe_step` VALUES (1529, 164, 9, 'Add the okra and stir-fry for half a minute.', 'steps_images/MD_69_9.jpg');
INSERT INTO `recipe_step` VALUES (1530, 164, 10, 'Season with salt and stir-fry for about ten more seconds before turning off the heat.', 'steps_images/MD_69_10.jpg');
INSERT INTO `recipe_step` VALUES (1531, 164, 11, 'Serve on a plate and enjoy the delicious dish.', 'steps_images/MD_69_11.jpg');
INSERT INTO `recipe_step` VALUES (1532, 165, 1, 'Gather all the ingredients and soak the shiitake mushrooms until softened.', 'steps_images/Noodle_15_1.jpg');
INSERT INTO `recipe_step` VALUES (1533, 165, 2, 'Slice the bacon, and julienne the carrot, onion, and shiitake mushrooms.', 'steps_images/Noodle_15_2.jpg');
INSERT INTO `recipe_step` VALUES (1534, 165, 3, 'Mix soy sauce and sake until well combined.', 'steps_images/Noodle_15_3.jpg');
INSERT INTO `recipe_step` VALUES (1535, 165, 4, 'Cook the noodles until about 80% done, then drain and set aside.', 'steps_images/Noodle_15_4.jpg');
INSERT INTO `recipe_step` VALUES (1536, 165, 5, 'Add a little oil to the pan and stir-fry scallions, onions, mushrooms, and carrots.', 'steps_images/Noodle_15_5.jpg');
INSERT INTO `recipe_step` VALUES (1537, 165, 6, 'Add a bit more oil to the pan, then stir-fry scallions, onions, mushrooms, and carrots again.', 'steps_images/Noodle_15_6.jpg');
INSERT INTO `recipe_step` VALUES (1538, 165, 7, 'Once the onions turn translucent, add kimchi and the prepared sauce.', 'steps_images/Noodle_15_7.jpg');
INSERT INTO `recipe_step` VALUES (1539, 165, 8, 'Add the cooked noodles and stir-fry everything together.', 'steps_images/Noodle_15_8.jpg');
INSERT INTO `recipe_step` VALUES (1540, 165, 9, 'Finally, add the stir-fried bacon, toss for another 30 seconds, and it’s ready to serve!', 'steps_images/Noodle_15_9.jpg');

-- ----------------------------
-- Table structure for relationship_11
-- ----------------------------
DROP TABLE IF EXISTS `relationship_11`;
CREATE TABLE `relationship_11`  (
  `fid` int(11) NOT NULL,
  `oid` int(11) NOT NULL,
  PRIMARY KEY (`fid`, `oid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

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
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

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
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

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
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of special
-- ----------------------------
INSERT INTO `special` VALUES (1, 17, 'Endless ways to savor beef', 'user016', '/uploads/3e86ae71-e660-4141-8215-fbf50a246ad7_屏幕截图 2025-02-11 222019.png', 'Themes-images/Themes-Beef.png', '2025-02-20 14:41:01', 'Beef Beyond Borders', 'Beef is one of the most widely enjoyed meats in the world, accounting for about 25% of the global meat market. Rich in high-quality protein and essential amino acids, it supports muscle growth, boosts immunity, and aids recovery after illness or surgery. Whether flame-grilled to perfection, slow-braised for deep, savory flavors, or stir-fried with aromatic spices, beef offers a satisfying blend of taste and texture in every bite—making it a timeless favorite on dinner tables.');
INSERT INTO `special` VALUES (2, 17, 'A tasty journey from sea to plate', 'user016', '/uploads/3e86ae71-e660-4141-8215-fbf50a246ad7_屏幕截图 2025-02-11 222019.png', 'Themes-images/Themes-Squid.jpg', '2024-05-16 18:25:42', 'Squid Spectrum', 'Squid is a highly nutritious seafood, rich in essential minerals like calcium, phosphorus, and iron, which support bone health and blood production. It\'s not only great for maintaining healthy cholesterol levels and improving liver function, but it\'s also known for its ability to combat fatigue and enhance vision. One of the most beloved ways to cook squid is on a sizzling hot plate, allowing its natural sweetness and tender texture to shine. Whether grilled, stir-fried, or served in other creative dishes, squid always delights with its rich flavor and impressive nutritional benefits.');
INSERT INTO `special` VALUES (3, 17, 'Mashed, baked, fried – your kitchen, your rules', 'user016', '/uploads/3e86ae71-e660-4141-8215-fbf50a246ad7_屏幕截图 2025-02-11 222019.png', 'Themes-images/Themes-Potato.jpg', '2024-12-25 19:05:13', 'Potato Symphony', 'Potatoes are a true culinary chameleon. Crispy, crunchy fries or soft, fluffy mashed potatoes—whichever way you enjoy them, potatoes always deliver. They\'re not just a side dish; they can steal the spotlight as the main attraction. This unassuming vegetable brings comfort and flavor to every meal, making it an indispensable part of any kitchen.');
INSERT INTO `special` VALUES (4, 17, 'Crispy, savory, and irresistible in every bite', 'user016', '/uploads/3e86ae71-e660-4141-8215-fbf50a246ad7_屏幕截图 2025-02-11 222019.png', 'Themes-images/Themes-Bacon.jpg', '2025-03-06 21:07:16', 'Bacon Bliss', 'Few ingredients can match the sheer joy of bacon. Crispy, smoky, and flavorful, it transforms any dish into something unforgettable. Whether wrapped around juicy meats, crumbled over salads, or sizzling alongside eggs, bacon is the ultimate indulgence. From breakfast classics to gourmet creations, there’s always room for more bacon on the plate!');

-- ----------------------------
-- Table structure for special_dishes
-- ----------------------------
DROP TABLE IF EXISTS `special_dishes`;
CREATE TABLE `special_dishes`  (
  `sid` int(11) NOT NULL,
  `did` int(11) NOT NULL,
  PRIMARY KEY (`sid`, `did`) USING BTREE,
  INDEX `fk_pid2`(`did`) USING BTREE,
  CONSTRAINT `fk_did` FOREIGN KEY (`did`) REFERENCES `dishes` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `fk_sid` FOREIGN KEY (`sid`) REFERENCES `special` (`sid`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of special_dishes
-- ----------------------------
INSERT INTO `special_dishes` VALUES (1, 1);
INSERT INTO `special_dishes` VALUES (1, 5);
INSERT INTO `special_dishes` VALUES (1, 7);
INSERT INTO `special_dishes` VALUES (1, 18);
INSERT INTO `special_dishes` VALUES (3, 21);
INSERT INTO `special_dishes` VALUES (1, 54);
INSERT INTO `special_dishes` VALUES (1, 74);
INSERT INTO `special_dishes` VALUES (3, 80);
INSERT INTO `special_dishes` VALUES (3, 85);
INSERT INTO `special_dishes` VALUES (3, 92);
INSERT INTO `special_dishes` VALUES (1, 94);
INSERT INTO `special_dishes` VALUES (1, 117);
INSERT INTO `special_dishes` VALUES (3, 136);
INSERT INTO `special_dishes` VALUES (2, 147);
INSERT INTO `special_dishes` VALUES (2, 148);
INSERT INTO `special_dishes` VALUES (2, 149);
INSERT INTO `special_dishes` VALUES (2, 150);
INSERT INTO `special_dishes` VALUES (2, 151);
INSERT INTO `special_dishes` VALUES (2, 152);
INSERT INTO `special_dishes` VALUES (2, 153);
INSERT INTO `special_dishes` VALUES (2, 154);
INSERT INTO `special_dishes` VALUES (3, 155);
INSERT INTO `special_dishes` VALUES (3, 156);
INSERT INTO `special_dishes` VALUES (3, 157);
INSERT INTO `special_dishes` VALUES (4, 158);
INSERT INTO `special_dishes` VALUES (4, 159);
INSERT INTO `special_dishes` VALUES (4, 160);
INSERT INTO `special_dishes` VALUES (4, 161);
INSERT INTO `special_dishes` VALUES (4, 162);
INSERT INTO `special_dishes` VALUES (4, 163);
INSERT INTO `special_dishes` VALUES (4, 164);
INSERT INTO `special_dishes` VALUES (4, 165);

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
  CONSTRAINT `subject_ibfk_1` FOREIGN KEY (`casid`) REFERENCES `subthemes` (`casid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of subject
-- ----------------------------
INSERT INTO `subject` VALUES ('Tastes of the Seasons', 'Index-images/Tastes of the Seasons.jpeg', '2018-05-07 00:00:00', 'Tastes of the Seasons', 1, 1, 'Tastes of the Seasons', NULL);
INSERT INTO `subject` VALUES ('Tradition on a Plate', 'Index-images/Tradition on a Plate.jpg', '2018-05-08 00:00:00', 'Tradition on a Plate', 2, 1, 'Tradition on a Plate', NULL);
INSERT INTO `subject` VALUES ('Ready in 30 mins', 'Index-images/Ready in 30 mins.jpg', '2018-05-09 00:00:00', 'Ready in 30 mins', 3, 1, 'Ready in 30 mins', NULL);
INSERT INTO `subject` VALUES ('Soothe Your Lungs', 'Healthy-images/Soothe Your Lungs.jpg', '2018-05-07 00:00:00', 'Soothe Your Lungs', 4, 1, 'Discover dishes that help moisten your lungs and relieve dry coughs—healing comfort in every bite.', NULL);
INSERT INTO `subject` VALUES ('Liver & Eye Refresh', 'Healthy-images/Refresh Your Liver & Eyes.jpeg', '2018-05-07 00:00:00', 'Liver & Eye Refresh', 5, 1, 'Inspired by traditional wisdom, these dishes help clear the liver and brighten the eyes—restoring balance from within.', NULL);
INSERT INTO `subject` VALUES ('Eat for Healthy Hair', 'Healthy-images/Eat for Healthy Hair.jpg', '2018-05-09 00:00:00', 'Eat for Healthy Hair', 6, 1, 'Tired of dull or thinning hair? These tasty dishes are packed with hair-loving nutrients to help you glow from root to tip.', NULL);
INSERT INTO `subject` VALUES ('Nourish Your Skin', 'Healthy-images/Nourish Your Skin.jpg', '2024-09-09 22:51:08', 'Nourish Your Skin', 7, 1, 'Loaded with vitamins, antioxidants, and healthy fats, these dishes are designed to support your skin’s health and elasticity.', NULL);
INSERT INTO `subject` VALUES ('Boost Your Immunity', 'Healthy-images/Boost Your Immunity.jpg', '2024-09-19 22:59:28', 'Boost Your Immunity', 8, 1, 'Stay strong and fight the cold with simple, healthy dishes that boost your body’s natural defenses.', NULL);
INSERT INTO `subject` VALUES ('Smart Bites', 'Healthy-images/Think Sharp.jpg', '2024-11-15 23:11:49', 'Smart Bites', 10, 1, 'Fuel your mind with meals that nourish your brain and enhance memory retention and cognitive abilities.', NULL);

-- ----------------------------
-- Table structure for subthemes
-- ----------------------------
DROP TABLE IF EXISTS `subthemes`;
CREATE TABLE `subthemes`  (
  `casid` int(11) NOT NULL AUTO_INCREMENT,
  `casname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `caid` int(11) NULL DEFAULT NULL,
  `subtitle_description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `title_banner_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`casid`) USING BTREE,
  INDEX `caid`(`caid`) USING BTREE,
  CONSTRAINT `subthemes_ibfk_1` FOREIGN KEY (`caid`) REFERENCES `themes` (`caid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of subthemes
-- ----------------------------
INSERT INTO `subthemes` VALUES (1, 'Spring Awakening Bites', 1, NULL, 'Banner-images/Spring-Awakening-Bites.jpg');
INSERT INTO `subthemes` VALUES (2, 'Savor the Summer', 1, NULL, 'Banner-images/Savor-the-Summer.jpg');
INSERT INTO `subthemes` VALUES (3, 'Autumn  Harvest Feasts', 1, NULL, 'Banner-images/Autumn-Harvest-Feasts.jpg');
INSERT INTO `subthemes` VALUES (4, 'Heartwarming Winter Meals', 1, NULL, 'Banner-images/Heartwarming-Winter-Meals.jpg');
INSERT INTO `subthemes` VALUES (5, 'Microwave Meals for Lazy Days', 3, NULL, 'Banner-images/Microwave-Meals.png');
INSERT INTO `subthemes` VALUES (6, 'Easy Rice Cooker Recipes', 3, NULL, 'Banner-images/Rice-Cooker.jpg');
INSERT INTO `subthemes` VALUES (7, 'Workday Wonders Meals', 3, NULL, 'Banner-images/Workday.jpg');
INSERT INTO `subthemes` VALUES (8, 'Effortless Party Recipes', 3, NULL, 'Banner-images/party.jpg');
INSERT INTO `subthemes` VALUES (9, 'Peking Heritage Cuisine', 2, NULL, 'Banner-images/Peking-Heritage-Cuisine.jpg');
INSERT INTO `subthemes` VALUES (10, 'Taste of Shanghai', 2, NULL, 'Banner-images/Taste-of-Shanghai.png');
INSERT INTO `subthemes` VALUES (11, 'Flavors of Xi\'an', 2, NULL, 'Banner-images/Flavors-of-Xi-an.jpeg');
INSERT INTO `subthemes` VALUES (12, 'Sizzling & Spicy', 2, NULL, 'Banner-images/Sizzling-Spicy.png');
INSERT INTO `subthemes` VALUES (13, 'Kumquat', 4, 'Kumquat is known for its natural ability to moisten the lungs and ease coughs. This citrus fruit is rich in vitamin C and is widely used in traditional remedies. In this collection, you\'ll find nourishing teas, soups, and other recipes combining kumquat with honey and rock sugar to soothe the throat and support immunity.', NULL);
INSERT INTO `subthemes` VALUES (14, 'Pear', 4, 'This recipe collection highlights delicious ways to use pears in daily meals—from sweet soups to warm porridges; every dish is crafted to support your respiratory system gently. With their hydrating and anti-inflammatory properties, pears make a tasty, natural remedy for dryness and seasonal discomfort. Enjoy these healing recipes as part of your daily wellness routine.', NULL);
INSERT INTO `subthemes` VALUES (15, 'White radish', 4, 'White radish, also known as daikon, is prized in traditional diets for its ability to clear internal heat and relieve coughs. Naturally mild and slightly sweet, it pairs well with ginger, rock sugar, and lean meats to create light, soothing dishes. This collection features a variety of soups, stews, and warm drinks designed to help regulate the body, ease throat discomfort, and promote lung comfort. Whether enjoyed during dry weather or cold seasons, these recipes are a gentle addition to your daily care routine.', NULL);
INSERT INTO `subthemes` VALUES (16, 'Wolfberry ', 5, 'Wolfberries (goji berries) are well-known in traditional Chinese medicine for their liver-cleansing and vision-boosting properties. Whether you\'re looking to support eye health, balance your body, or enjoy a comforting bowl of soup, these recipes offer a natural, gentle way to care for your well-being.', NULL);
INSERT INTO `subthemes` VALUES (17, 'Broccoli', 5, 'Explore the goodness of broccoli with this collection of nourishing recipes designed to support liver health and brighten your eyes. Packed with vitamins A, C, and K, as well as antioxidants and fiber, broccoli is a powerhouse vegetable known for its cleansing and protective benefits. From light soups to stir-fries and steamed dishes, these recipes are simple, healthy, and delicious—perfect for your daily wellness routine.', NULL);
INSERT INTO `subthemes` VALUES (18, 'Chrysanthemum', 5, 'Rich in antioxidants and traditionally used to reduce internal heat, chrysanthemum is more than just a flower—it’s a healing ingredient. This collection includes a variety of drinks that combine chrysanthemums with ingredients like goji berries and pears to support immune health and promote balance. It is a perfect addition to your healthy lifestyle.', NULL);
INSERT INTO `subthemes` VALUES (19, 'Power Up with Iron', 6, 'Iron for better hair — Low iron levels commonly cause hair thinning and hair loss. This curated recipe set focuses on iron-rich ingredients like seafood, liver, and leafy greens. Each dish helps improve iron absorption and support scalp health. Perfect for anyone looking to care for their hair through balanced nutrition.', NULL);
INSERT INTO `subthemes` VALUES (20, 'Enhance with Plant Protein', 6, 'Our Plant-Based Protein Recipes Collection has delicious dishes featuring plant-powered ingredients like kelp, tofu, and black sesame. These recipes are designed to provide a natural source of protein, essential for maintaining healthy hair. By including plant-based proteins in your diet, you can nourish your scalp, strengthen your hair strands, and support overall hair vitality. Explore these recipes to give your hair the nourishment it needs while enjoying tasty, wholesome meals.', NULL);
INSERT INTO `subthemes` VALUES (21, 'Salmon', 7, 'Salmon is rich in omega-3 fatty acids, which help to keep your skin hydrated and reduce inflammation. This collection of salmon-based recipes focuses on promoting healthy, glowing skin by incorporating the benefits of this nutrient-dense fish.', NULL);
INSERT INTO `subthemes` VALUES (22, 'Kelp', 7, 'Kelp is a powerhouse ingredient for skincare, packed with vitamins, minerals, and antioxidants that rejuvenate and hydrate the skin. Our Kelp recipe collection showcases how this superfood helps reduce inflammation, promote collagen production, and improve skin elasticity. Whether you\'re looking to soothe, detoxify, or nourish, these recipes bring the beauty benefits of Kelp straight to your skincare routine.', NULL);
INSERT INTO `subthemes` VALUES (23, 'Sweet potato', 8, 'Sweet potatoes are a powerhouse of immune-boosting nutrients. Their high levels of vitamin A and antioxidants help strengthen the immune system and protect against harmful pathogens. This recipe collection showcases creative ways to incorporate sweet potatoes into your meals, offering a delicious and nutritious way to support your body\'s defense mechanisms and promote overall health.', NULL);
INSERT INTO `subthemes` VALUES (24, 'Bitter melon', 8, 'Boost your immune system naturally with bitter melon, a vegetable celebrated for its medicinal properties. Bitter melon is packed with nutrients that help fight infections and inflammation, making it an excellent choice for maintaining strong immunity. ', NULL);
INSERT INTO `subthemes` VALUES (25, 'Beans', 9, 'Beans play an essential role in improving brain function and memory. This collection includes recipes featuring tofu, mung beans, and Fava Beans, all known for their nutritional benefits. These beans contain essential nutrients such as proteins, fiber, and antioxidants that support brain health, improve focus, and enhance memory retention. Incorporating these ingredients into your diet can help sharpen cognitive abilities and promote mental clarity. Try these delicious recipes to fuel your brain and boost your memory power naturally.', NULL);
INSERT INTO `subthemes` VALUES (26, 'Walnut', 9, 'Walnuts are a superfood known for their ability to support brain health and improve memory. With their high omega-3 fatty acids, antioxidants, and vitamins, walnuts help maintain cognitive function and enhance mental clarity.', NULL);
INSERT INTO `subthemes` VALUES (27, 'Eggs', 9, 'Eggs are rich in essential nutrients that promote brain health and memory. Known for their high choline content, they are a key ingredient for maintaining cognitive function and improving memory. Choline supports the production of acetylcholine, a neurotransmitter that aids in memory and learning. This collection features egg-based dishes to nourish your brain and improve mental performance. ', NULL);

-- ----------------------------
-- Table structure for themes
-- ----------------------------
DROP TABLE IF EXISTS `themes`;
CREATE TABLE `themes`  (
  `caname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `caid` int(11) NOT NULL AUTO_INCREMENT,
  `title_description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `title_banner_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`caid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of themes
-- ----------------------------
INSERT INTO `themes` VALUES ('Tastes of the Seasons', 1, 'Seasonal cuisine brings the best of nature’s flavors to your table all year round. In spring, enjoy light, vibrant dishes; in summer, dive into fresh, cool treats; in fall, savor rich, comforting meals; and in winter, warm up with hearty dishes. Each season offers a new opportunity to enjoy fresh ingredients and flavors, creating a dining experience that celebrates the year’s natural rhythm. Let these seasonal recipes inspire your cooking all year long.', 'Banner-images/Tastes-Seasons.jpg');
INSERT INTO `themes` VALUES ('Tradition on a Plate', 2, 'Discover the rich heritage of traditional Chinese cuisine through time-honored flavors and regional specialties. From the elegance of Peking-style dishes to the delicate sweetness of Shanghai and the bold spices of Xi\'an, each dish tells a unique story. This collection celebrates the diversity and depth of Chinese cooking, where history meets taste. Whether you\'re craving a comforting bowl of noodles or fiery stir-fried bites, there\'s something here for every palate. Dive into centuries of culinary wisdom and enjoy the authentic taste of China in every bite!', 'Banner-images/Tradition-on-a-Plate.jpg');
INSERT INTO `themes` VALUES ('Ready in 30 mins', 3, 'Looking for delicious meals without spending hours in the kitchen? This collection is packed with quick and tasty dishes that can be ready in 30 minutes or less. Whether you’re cooking with a microwave, rice cooker, or just a single pan, these recipes are perfect for busy weekdays or relaxed weekends. Fast doesn’t mean flavorless—each meal is designed to be simple, satisfying, and flavorful. From lazy day microwave fixes to effortless party plates, enjoy food that fits your schedule and cravings.', 'Banner-images/Ready-in-30-mins.jpg');
INSERT INTO `themes` VALUES ('Soothe Your Lungs', 4, 'These soothing dishes are made with kumquat, pear, and white radish—known for their mild and moistening properties that may help calm the throat and ease coughing. Whether served warm or cold, each recipe is simple, nourishing, and full of natural goodness. They’re perfect for dry weather or when you need something comforting for the lungs. Light in taste but rich in benefits, these meals combine nature’s simple ingredients to support your well-being.', 'Banner-images/Soothe-Your-Lungs.jpg');
INSERT INTO `themes` VALUES ('Liver & Eye Refresh', 5, 'This selection of dishes offers a light and refreshing way to care for the liver and eyes, featuring wolfberry, broccoli, and chrysanthemum. These ingredients are known for their soothing effects and nutrient content, helping you feel recharged from the inside out. Whether you’re dealing with screen fatigue or want a break from heavy meals, these recipes gently boost your daily routine. Simple, wholesome, and easy to enjoy!', 'Banner-images/Liver-Eye-Refresh.jpg');
INSERT INTO `themes` VALUES ('Eat for Healthy Hair', 6, 'Eating for healthy hair starts with the proper nutrients. Iron supports healthy blood flow, helping to deliver oxygen to hair follicles and encouraging growth. Meanwhile, plant-based proteins provide essential building blocks for strong and resilient hair strands. Including iron and plant protein in your meals can help reduce breakage and dullness over time. Whether preventing hair loss or simply looking to boost shine and strength, nourishing your body from within plays a key role.', 'Banner-images/Healthy-Hair.jpg');
INSERT INTO `themes` VALUES ('Nourish Your Skin', 7, 'Healthy skin isn’t just about what you apply—it also comes from what you eat. This skin-focused theme explores meals that nourish the body from within. Salmon provides essential fatty acids that can help reduce dryness and protect the skin barrier. Kelp is a mineral-rich sea vegetable that supports detoxification and improves skin tone. These ingredients work together to promote a natural glow, offering a simple way to support skin health through your daily meals.', 'Banner-images/skin.jpg');
INSERT INTO `themes` VALUES ('Boost Your Immunity', 8, 'Want to keep your immune system strong and stay ahead of seasonal colds? Sweet potatoes and bitter melon might help. Sweet potatoes are packed with antioxidants and vitamin A, allowing your body to remain healthy and ready to fight off illness. Bitter melon is loaded with beneficial compounds that support immune balance and energy. Adding these ingredients to your meals is an easy way to give your body extra support when it needs it most.', 'Banner-images/Immunity.jpg');
INSERT INTO `themes` VALUES ('Smart Bites', 9, 'Want to keep your brain in top shape? Start with your plate. Beans give your brain steady fuel, walnuts help with memory and focus, and eggs offer key nutrients like choline to support thinking and learning. These recipes combine tasty and nourishing ingredients that boost brain power in your daily meals—perfect whether you\'re studying, working, or just keeping your mind sharp.', 'Banner-images/Brain.jpg');

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
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of topic
-- ----------------------------
INSERT INTO `topic` VALUES (5, 19, 'Plain noodle soup and a golden egg pancake \r\n— Perfect start to a warm and cozy morning~', 'Morning Light & Warm Bites', '2025-05-10 00:13:59', 'breakfast.jpg', 'Charles', '/uploads/6208ef34-5e07-48ea-8a62-0e1566e731d0_profile1.jpg');
INSERT INTO `topic` VALUES (6, 20, 'Had the spiciest hotpot tonight, Lips numb, heart happy!', 'Hotpot Happiness', '2025-05-10 00:43:01', 'hotpot.jpg', 'Grace', '/uploads/e40c8fa8-ca74-441f-bee8-2425ba272ffd_profile2.jpg');

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
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'root', 'root', 'root', 'root@qq.com', '15566778899', '', 1, '34324232321', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (9, '333', '333', '111', 'aaa@shop.com', '111', '111', 1, '7ad6c4f2be4e4a9e81b000b7de6587e8f28947ec9b2a4b7ca4f0f2367276d374', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (10, '3333', '3333', 'cc', 'aaa@shop.com', '111', '111', 1, 'ed8d60e2974f47f59942f211fe9d0752a17708f7bac142588c9e5ed928e8fae7', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (11, '555', '555', '111', 'aaa@shop.com', '111', '111', 1, '9c52fd719a8848de9769fce61b37a77d0819733584d8431fb0ae6f3f696c30ad', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (14, 'user010', '123', 'user010', 'aaa@shop.com', '1221510221', '151 youngman st', 1, '', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (17, 'user016', '12345', 'charles', 'aaa@shop.com', '115413464', '30 England st', 1, '', '/uploads/4bd47f88-9e71-4b26-9021-bec8cea88d43_profile1.jpg', 'Savor the flavors! Cherish the moments!', NULL, NULL);
INSERT INTO `user` VALUES (18, 'JohnDoe', '12345', 'John Doe', 'aaa@shop.com', '15616165156', 'XXX str', 1, '', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (19, 'Charles', '789456123', 'Charles', 'aaa@shop.com', '709526545', '123 Maple Street', 1, '', '/uploads/6208ef34-5e07-48ea-8a62-0e1566e731d0_profile1.jpg', 'Cooking is my love language!', NULL, NULL);
INSERT INTO `user` VALUES (20, 'Grace', '789456123', 'Grace', 'aaa@shop.com', '561541651', '12 Queen Street', 1, '', '/uploads/e40c8fa8-ca74-441f-bee8-2425ba272ffd_profile2.jpg', 'Good food, good mood!', NULL, NULL);
INSERT INTO `user` VALUES (21, 'John', '789456123', 'John', 'aaa@shop.com', '1466131154', '66 Canada Dr', 1, '', '/uploads/731bd4b5-40dc-4275-87e5-6357781f262d_profile3.jpg', 'Made with love, shared with joy!', NULL, NULL);

-- ----------------------------
-- View structure for v_ingredient_category_group
-- ----------------------------
DROP VIEW IF EXISTS `v_ingredient_category_group`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_ingredient_category_group` AS select `ingredient_category`.`csname` AS `csname`,group_concat(`ingredient_category`.`csid` order by `ingredient_category`.`csid` ASC separator ',') AS `csids` from `ingredient_category` group by `ingredient_category`.`csname`;

SET FOREIGN_KEY_CHECKS = 1;
