/*
Navicat MySQL Data Transfer

Source Server         : 2017
Source Server Version : 50615
Source Host           : 127.0.0.1:3306
Source Database       : movie

Target Server Type    : MYSQL
Target Server Version : 50615
File Encoding         : 65001

Date: 2018-06-26 20:24:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `history`
-- ----------------------------
DROP TABLE IF EXISTS `history`;
CREATE TABLE `history` (
  `userID` int(11) DEFAULT NULL,
  `movieID` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `statetime` int(11) DEFAULT NULL,
  `isRate` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of history
-- ----------------------------

-- ----------------------------
-- Table structure for `movie_similarity`
-- ----------------------------
DROP TABLE IF EXISTS `movie_similarity`;
CREATE TABLE `movie_similarity` (
  `similaryID` int(11) NOT NULL,
  `movieID` int(11) DEFAULT NULL,
  `neiborID` int(11) DEFAULT NULL,
  `similar` float DEFAULT NULL,
  PRIMARY KEY (`similaryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movie_similarity
-- ----------------------------

-- ----------------------------
-- Table structure for `resource`
-- ----------------------------
DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `area` varchar(255) DEFAULT NULL,
  `description` longtext,
  `name` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `score` float DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=402 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resource
-- ----------------------------
INSERT INTO `resource` VALUES ('7', '龙华区', 'https://movie.douban.com/subject/1291990/', '湾湾塘（龙华店）', '6', '8.7', '爱情', 'http://p0.meituan.net/600.600/apiback/6c38a6f13ee99ae7b11a9573f8dbb2b1171690.jpg', '2016-11-05');
INSERT INTO `resource` VALUES ('8', '龙华区', 'https://movie.douban.com/subject/26611076/', '云顶贡茶（时代城店）', '7', '7.2', '爱情', 'http://p1.meituan.net/600.600/deal/d32c3ea3c70914f439fa6598bd0e27fb620299.jpg', '2008-12-25');
INSERT INTO `resource` VALUES ('10', '宝安区', 'https://movie.douban.com/subject/1418834/', '御蝶坊生日蛋糕（福永店）', '9', '8.6', '爱情', 'http://p0.meituan.net/600.600/mogu/d4aba38248ee7365bd500bf9e18328e185052.png', '2008-12-25');
INSERT INTO `resource` VALUES ('11', '宝安区', 'https://movie.douban.com/subject/3397503/', '佳田生日蛋糕（松岗天虹店）', '10', '8', '爱情', 'http://p0.meituan.net/600.600/mogu/bb15e0bae522b9c1ff242d5f6ebf240089241.jpg', '1999-02-13');
INSERT INTO `resource` VALUES ('12', '宝安区', 'https://movie.douban.com/subject/1302425/', '贡茶（坪洲地铁店）', '11', '8.4', '爱情', 'http://p0.meituan.net/600.600/ugcpic/a3997d1fb7d8f47f45ff2c5b3c32ad54', '2004-09-05');
INSERT INTO `resource` VALUES ('13', '福田区', 'https://movie.douban.com/subject/1308807/', '幸福西饼生日蛋糕（布心店）', '12', '8.8', '爱情', 'http://p1.meituan.net/600.600/mogu/a54db9587cc4501b09ab13dd53de8778305147.jpg', '2000-10-27');
INSERT INTO `resource` VALUES ('14', '福田区', 'https://movie.douban.com/subject/1292402/', '舞茶道（西丽地铁站分店）', '13', '8.7', '爱情', 'http://p1.meituan.net/600.600/mogu/5cb8358502907ed2d36f1aa0d9d12192257990.png', '2009-12-25');
INSERT INTO `resource` VALUES ('15', '福田区', 'https://movie.douban.com/subject/3793023/', '耐思阳光原叶（坑梓店）', '14', '9.1', '爱情', 'http://p1.meituan.net/600.600/deal/7e456c767ef45180a470f98fec8c402e358294.jpg', '2017-05-27');
INSERT INTO `resource` VALUES ('16', '平山区', 'https://movie.douban.com/subject/26677981/', '艺朵茶（壹海城店）', '15', '5.3', '爱情', 'http://p1.meituan.net/600.600/deal/a33a3d19bcec84000d869d36e4039bed240989.jpg', '2016-10-07');
INSERT INTO `resource` VALUES ('17', '龙岗区', 'https://movie.douban.com/subject/26811832/', '洛克王子（坪洲店）', '16', '9.5', '爱情', 'http://p1.meituan.net/600.600/mogu/a501459af46a339d1a9c264ac6b7e4b2512813.png', '1987-07-18');
INSERT INTO `resource` VALUES ('18', '龙岗区', 'https://movie.douban.com/subject/1297447/', '九份仙芋（大浪店）', '17', '8.6', '爱情', 'http://p1.meituan.net/600.600/deal/ffc8f4c77d3efcbc68d665601a48f64a89266.jpg', '2011-08-19');
INSERT INTO `resource` VALUES ('19', '龙岗区', 'https://movie.douban.com/subject/4191644/', '鲜港记甜品', '18', '7.8', '爱情', 'http://p0.meituan.net/600.600/poi/659d15cb8f7d57da1e65f73ff93fe1eb113083.jpg', '2003-09-07');
INSERT INTO `resource` VALUES ('20', '平山区', 'https://movie.douban.com/subject/1292401/', '贡茶新语', '19', '8.5', '爱情', 'http://p0.meituan.net/600.600/apiback/ef9224fcc27ea5f3209b42e6edf93771108433.jpg', '2007-03-03');
INSERT INTO `resource` VALUES ('21', '平山区', 'https://movie.douban.com/subject/3287562/', 'the Frypan韩式炸鸡啤酒&年糕火锅', '0', '8.5', '喜剧', 'http://p1.meituan.net/600.600/deal/e9084dae36c01070a15e6dc125b25a73136107.jpg', '2010-06-20');
INSERT INTO `resource` VALUES ('22', '平山区', 'https://movie.douban.com/subject/19944106/', '重庆鸡公煲（南新路店）', '1', '6.8', '喜剧', 'http://p1.meituan.net/600.600/deal/201212/28/135856_1142693.jpg', '2016-02-08');
INSERT INTO `resource` VALUES ('24', '南山区', 'https://movie.douban.com/subject/26688480/', '优鱼', '3', '7.5', '喜剧', 'http://p1.meituan.net/600.600/deal/98b2b3d81c96dcd3d72842a516c8309b415245.jpg', '2017-01-23');
INSERT INTO `resource` VALUES ('25', '南山区', 'https://movie.douban.com/subject/26879060/', '118香辣虾', '4', '6.1', '喜剧', 'http://p1.meituan.net/600.600/apiback/fd2f2a7424a31522450bd1cb5710af13102344.jpg', '2016-12-30');
INSERT INTO `resource` VALUES ('26', '平山区', 'https://movie.douban.com/subject/26743546/', '云泉椰子鸡（中兴店）', '5', '4.1', '喜剧', 'http://p1.meituan.net/600.600/deal/1a3d48cf4dfc201fe158dc1ed9ad526a30759.jpg', '2017-04-24');
INSERT INTO `resource` VALUES ('27', '平山区', 'https://movie.douban.com/subject/6386345/', '尚品石锅鱼', '6', '7.3', '喜剧', 'http://p0.meituan.net/600.600/apiback/8d87a1d881c6f198e67d1bb2aa7f8454230650.jpg', '2012-03-29');
INSERT INTO `resource` VALUES ('28', '福田区', 'https://movie.douban.com/subject/26287783/', '潮鑫牛肉店（民治店）', '7', '4.2', '喜剧', 'http://p1.meituan.net/600.600/deal/__46861285__3033602.jpg', '2017-05-19');
INSERT INTO `resource` VALUES ('29', '龙华区', 'https://movie.douban.com/subject/1292215/', 'the Frypan韩式炸鸡啤酒&年糕火锅', '8', '8.7', '喜剧', 'http://p1.meituan.net/600.600/deal/e9084dae36c01070a15e6dc125b25a73136107.jpg', '2001-04-25');
INSERT INTO `resource` VALUES ('30', '龙岗区', 'https://movie.douban.com/subject/25911694/', '重庆鸡公煲（南新路店）', '9', '4', '喜剧', 'http://p1.meituan.net/600.600/deal/201212/28/135856_1142693.jpg', '2016-12-23');
INSERT INTO `resource` VALUES ('31', '罗湖区', 'https://movie.douban.com/subject/26717795/', '优鱼', '10', '6.7', '喜剧', 'http://p1.meituan.net/600.600/deal/98b2b3d81c96dcd3d72842a516c8309b415245.jpg', '2017-01-28');
INSERT INTO `resource` VALUES ('32', '罗湖区', 'https://movie.douban.com/subject/11525673/', '118香辣虾', '11', '8.7', '喜剧', 'http://p1.meituan.net/600.600/apiback/fd2f2a7424a31522450bd1cb5710af13102344.jpg', '2014-02-06');
INSERT INTO `resource` VALUES ('35', '平山区', 'https://movie.douban.com/subject/26593587/', '云泉椰子鸡（中兴店）', '14', '8.1', '喜剧', 'http://p1.meituan.net/600.600/deal/1a3d48cf4dfc201fe158dc1ed9ad526a30759.jpg', '2017-04-12');
INSERT INTO `resource` VALUES ('36', '福田区', 'https://movie.douban.com/subject/26389696/', '尚品石锅鱼', '15', '3.8', '喜剧', 'http://p0.meituan.net/600.600/apiback/8d87a1d881c6f198e67d1bb2aa7f8454230650.jpg', '2017-01-28');
INSERT INTO `resource` VALUES ('37', '龙岗区', 'https://movie.douban.com/subject/26393561/', '潮鑫牛肉店（民治店）', '16', '8.7', '喜剧', 'http://p1.meituan.net/600.600/deal/__46861285__3033602.jpg', '2015-07-17');
INSERT INTO `resource` VALUES ('38', '宝安区', 'https://movie.douban.com/subject/1907966/', '焖汁汇三汁焖锅（尖沙咀店）', '17', '8.7', '喜剧', 'http://p1.meituan.net/600.600/deal/__29579768__6347589.jpg', '2013-02-15');
INSERT INTO `resource` VALUES ('39', '宝安区', 'https://movie.douban.com/subject/10574622/', '优客香鹅掌（南山总店）', '18', '7.5', '喜剧', 'https://img.meituan.net/600.600/msmerchant/d5a4649c9635749ba418ae851828010b112822.jpg', '2012-12-12');
INSERT INTO `resource` VALUES ('40', '福田区', 'https://movie.douban.com/subject/26850326/', '江南春天椰子鸡（石岩店）', '19', '2.5', '喜剧', 'http://p1.meituan.net/600.600/shopmainpic/55a349bba25900ccdbf96fbbb52310e8135083.jpg', '2017-03-24');
INSERT INTO `resource` VALUES ('41', '龙岗区', 'https://movie.douban.com/subject/21324900/', '板一寿司（龙华店）', '0', '7.7', '剧情', 'http://p0.meituan.net/600.600/mogu/78aa1775065a3d6a8edabece669fb5ad119883.png', '2016-09-01');
INSERT INTO `resource` VALUES ('42', '罗湖区', 'https://movie.douban.com/subject/25765735/', '新梅园圆通素食（泰然店）', '1', '8.3', '剧情', 'http://p0.meituan.net/600.600/deal/b068577a99cbb043b29d936648c10867330799.jpg', '2017-02-17');
INSERT INTO `resource` VALUES ('43', '宝安区', 'https://movie.douban.com/subject/3011091/', '板一寿司（龙华店）', '2', '9.2', '剧情', 'http://p0.meituan.net/600.600/mogu/78aa1775065a3d6a8edabece669fb5ad119883.png', '2009-06-13');
INSERT INTO `resource` VALUES ('44', '宝安区', 'https://movie.douban.com/subject/1309046/', '新梅园圆通素食（泰然店）', '3', '8.8', '剧情', 'http://p0.meituan.net/600.600/deal/b068577a99cbb043b29d936648c10867330799.jpg', '2005-12-11');
INSERT INTO `resource` VALUES ('45', '罗湖区', 'https://movie.douban.com/subject/1307914/', '静素斋菜', '4', '9', '剧情', 'http://p0.meituan.net/600.600/mogu/ee0a56b1727b5031e356677d1fd0324279679.jpg', '2002-12-12');
INSERT INTO `resource` VALUES ('46', '泰安区', 'https://movie.douban.com/subject/21318488/', '葵花公寓自助餐厅', '5', '8.7', '剧情', 'http://p1.meituan.net/600.600/deal/__25346105__9778355.jpg', '2014-09-26');
INSERT INTO `resource` VALUES ('47', '泰安区', 'https://movie.douban.com/subject/1291841/', '登品素食府', '6', '9.2', '剧情', 'http://p1.meituan.net/600.600/poi/ce19fe0458ecd44c1efe1d1320e57afc131072.jpg', '1972-03-15');
INSERT INTO `resource` VALUES ('48', '南山区', 'https://movie.douban.com/subject/1849031/', '格兰云天大酒店天星自助餐厅', '7', '8.9', '剧情', 'http://p0.meituan.net/600.600/mogu/a6e71405f0e8c66e4d3efd6c3e1bbd3c118829.jpg', '2006-12-15');
INSERT INTO `resource` VALUES ('49', '宝安区', 'https://movie.douban.com/subject/6786002/', '登喜路国际大酒店', '8', '9.1', '剧情', 'http://p1.meituan.net/600.600/msmerchant/67c03a62629df31a017ae42a89a893e0174403.jpeg', '2011-11-02');
INSERT INTO `resource` VALUES ('50', '龙华区', 'https://movie.douban.com/subject/26805324/', '圣德堡酒店●富茵阁西餐厅', '9', '8.5', '剧情', 'http://p1.meituan.net/600.600/deal/__29920173__1449437.jpg', '2017-03-27');
INSERT INTO `resource` VALUES ('51', '泰安区', 'https://movie.douban.com/subject/2334904/', '青蓬西餐厅（万象城店）', '10', '8.6', '剧情', 'http://p0.meituan.net/600.600/mogu/11d46f6a42057bfb4a70217d04f35837137022.jpg', '2010-02-13');
INSERT INTO `resource` VALUES ('52', '罗湖区', 'https://movie.douban.com/subject/10741643/', '富苑皇冠假日套房酒店富临门中餐厅', '11', '8.3', '剧情', 'http://p1.meituan.net/600.600/mogu/0d4403ad13a76cfad74fb4440ef19c3e387902.jpg', '2014-12-19');
INSERT INTO `resource` VALUES ('53', '宝安区', 'https://movie.douban.com/subject/24743711/', '万华国际大酒店莎莉宫西餐厅', '12', '7.6', '剧情', 'http://p1.meituan.net/600.600/deal/__40721941__1010026.jpg', '2014-04-29');
INSERT INTO `resource` VALUES ('54', '福田区', 'https://movie.douban.com/subject/1292365/', '丽湾酒店丽莎西餐厅', '13', '9', '剧情', 'http://p0.meituan.net/600.600/mogu/f37f465e99809e5b07b96fa7af335196349859.jpg', '1994-05-18');
INSERT INTO `resource` VALUES ('55', '福田区', 'https://movie.douban.com/subject/26862259/', '威斯汀知味自助餐厅', '14', '6.9', '剧情', 'http://p0.meituan.net/600.600/mogu/5f4cc956446ef02629534e61c9fd0001390173.jpg', '2017-01-28');
INSERT INTO `resource` VALUES ('56', '宝安区', 'https://movie.douban.com/subject/25921812/', '珠江皇冠假日酒店-悦咖啡西餐厅', '15', '8.3', '剧情', 'http://p0.meituan.net/600.600/deal/fff94d7b141eaaaaf739c96ee09ec932381783.jpg', '2016-10-28');
INSERT INTO `resource` VALUES ('57', '宝安区', 'https://movie.douban.com/subject/1929463/', '摩登克斯无国界海鲜自助餐厅', '16', '9', '剧情', 'https://img.meituan.net/600.600/msmerchant/0815507877d0ddd1caba8380d25ec9fc224859.jpg', '2012-09-28');
INSERT INTO `resource` VALUES ('58', '福田区', 'https://movie.douban.com/subject/1291549/', '大渔铁板烧（保利文化广场店）', '17', '9.2', '剧情', 'https://img.meituan.net/600.600/msmerchant/2a8188418a8c5cd38beae6507282216d246211.jpg', '2004-03-17');
INSERT INTO `resource` VALUES ('59', '福田区', 'https://movie.douban.com/subject/1298624/', '萬膳日本料理·铁板烧（罗湖店）', '18', '8.9', '剧情', 'http://p1.meituan.net/600.600/apiback/89f3d18a1d8f117904679ae0d7cada693199997.jpg', '1992-12-23');
INSERT INTO `resource` VALUES ('60', '福田区', 'https://movie.douban.com/subject/26718282/', '青蓬西餐厅（海岸城店）', '19', '7.1', '剧情', 'http://p1.meituan.net/600.600/deal/__46604906__5389270.jpg', '2017-02-16');
INSERT INTO `resource` VALUES ('61', '平山区', 'https://movie.douban.com/subject/4944008/', '鲜味寿司', '0', '7.1', '动画', 'http://p1.meituan.net/600.600/apiback/202f3e572f009aa2d55e7b758e29ae5e183006.jpg', '2016-08-12');
INSERT INTO `resource` VALUES ('62', '龙岗区', 'https://movie.douban.com/subject/26666177/', '渔夫坊北欧三文鱼', '1', '7.9', '动画', 'http://p0.meituan.net/600.600/ugcpic/5264745e9f086026519f5e68a0b0a964', '2016-10-14');
INSERT INTO `resource` VALUES ('63', '龙岗区', 'https://movie.douban.com/subject/26963810/', '大马哈挪威三文鱼（松岗店）', '2', '9', '动画', 'http://p0.meituan.net/600.600/deal/__8666369__8138849.jpg', '2017-04-06');
INSERT INTO `resource` VALUES ('64', '龙岗区', 'https://movie.douban.com/subject/1291936/', '天绿回转寿司（华侨城店）', '3', '8.9', '动画', 'http://p0.meituan.net/600.600/deal/__32171212__3437302.jpg', '1995-11-18');
INSERT INTO `resource` VALUES ('65', '平山区', 'https://movie.douban.com/subject/3072124/', '高丽馆韩国料理（中心城店）', '4', '8.9', '动画', 'http://p0.meituan.net/600.600/deal/e01c527b69254953ab61dcac79972779317586.jpg', '2009-04-09');
INSERT INTO `resource` VALUES ('66', '平山区', 'https://movie.douban.com/subject/6534248/', '千寻寿司（车公庙一店）', '5', '8.6', '动画', 'http://p1.meituan.net/600.600/mogu/712ec5a211516fb482cc91957436a2b553235.jpg', '2012-11-02');
INSERT INTO `resource` VALUES ('67', '平山区', 'https://movie.douban.com/subject/1291585/', '凤凰日本料理', '6', '8.8', '动画', 'http://p1.meituan.net/600.600/deal/f1d56553378f0def16646caeac5b6e33328109.jpg', '1984-03-11');
INSERT INTO `resource` VALUES ('68', '南山区', 'https://movie.douban.com/subject/1297052/', 'the Frypan韩式炸鸡啤酒&年糕火锅', '7', '8.8', '动画', 'http://p1.meituan.net/600.600/deal/e9084dae36c01070a15e6dc125b25a73136107.jpg', '1995-07-15');
INSERT INTO `resource` VALUES ('69', '南山区', 'https://movie.douban.com/subject/1293318/', '风火寿司（平湖店）', '8', '8.7', '动画', 'https://img.meituan.net/600.600/msmerchant/b2b985633fd175b30089b73e1a3c7392209522.jpg', '1988-04-16');
INSERT INTO `resource` VALUES ('70', '平山区', 'https://movie.douban.com/subject/1307811/', '合午寿司（石岩店）', '9', '8.4', '动画', 'http://p0.meituan.net/600.600/deal/__50123265__9026849.jpg', '1989-07-29');
INSERT INTO `resource` VALUES ('71', '平山区', 'https://movie.douban.com/subject/26766869/', '釜山馆日韩料理（公明店）', '10', '9.2', '动画', 'http://p1.meituan.net/600.600/deal/__40639719__7784766.jpg', '2016-06-17');
INSERT INTO `resource` VALUES ('72', '福田区', 'https://movie.douban.com/subject/26382767/', 'MrEasy外带寿司（世界之窗店）', '11', '6.7', '动画', 'http://p0.meituan.net/600.600/deal/__45395775__3290785.jpg', '2016-12-14');
INSERT INTO `resource` VALUES ('73', '龙华区', 'https://movie.douban.com/subject/1937946/', '大桥日本料理（科兴科学园店）', '12', '8.6', '动画', 'http://p0.meituan.net/600.600/shaitu/8a1149253caa2370f50b91638268d57267255.jpg', '2006-07-15');
INSERT INTO `resource` VALUES ('74', '龙岗区', 'https://movie.douban.com/subject/25900177/', '上野日本料理', '13', '9.2', '动画', 'http://p0.meituan.net/600.600/deal/51493899ec273cfe5a415d3293ed4a29121087.jpg', '2014-08-22');
INSERT INTO `resource` VALUES ('75', '宝安区', 'https://movie.douban.com/subject/20470074/', '幸乐日本料理', '14', '8.2', '动画', 'http://p0.meituan.net/600.600/apiback/5dba5dfbbd0b2a2007ffd6d408b253cd171759.jpg', '2013-05-31');
INSERT INTO `resource` VALUES ('76', '宝安区', 'https://movie.douban.com/subject/1858711/', '日之火创意料理', '15', '8.7', '动画', 'http://p0.meituan.net/600.600/deal/b5a0749b2963d98193ab333cb9af30df475393.jpg', '2010-06-16');
INSERT INTO `resource` VALUES ('77', '福田区', 'https://movie.douban.com/subject/4915857/', '萬膳日本料理·铁板烧（罗湖店）', '16', '8', '动画', 'http://p1.meituan.net/600.600/apiback/89f3d18a1d8f117904679ae0d7cada693199997.jpg', '2013-07-03');
INSERT INTO `resource` VALUES ('78', '福田区', 'https://movie.douban.com/subject/6791750/', '黄海道正统韩国料理（第二分店）', '17', '7.8', '动画', 'http://p0.meituan.net/600.600/deal/__36425736__5328377.jpg', '2013-07-20');
INSERT INTO `resource` VALUES ('79', '福田区', 'https://movie.douban.com/subject/11589036/', '鲜味寿司', '18', '7.7', '动画', 'http://p1.meituan.net/600.600/apiback/202f3e572f009aa2d55e7b758e29ae5e183006.jpg', '2016-01-29');
INSERT INTO `resource` VALUES ('80', '平山区', 'https://movie.douban.com/subject/25777636/', '渔夫坊北欧三文鱼', '19', '7.8', '动画', 'http://p0.meituan.net/600.600/ugcpic/5264745e9f086026519f5e68a0b0a964', '2016-04-15');
INSERT INTO `resource` VALUES ('81', '龙岗区', 'https://movie.douban.com/subject/24404677/', '如意烤吧', '0', '7', '科幻', 'http://p1.meituan.net/600.600/deal/b58d69c7367733352316216c20da279c365296.jpg', '2014-07-25');
INSERT INTO `resource` VALUES ('82', '龙岗区', 'https://movie.douban.com/subject/1291839/', '东北二哥烧烤（大钟岗店）', '1', '8.1', '科幻', 'http://p1.meituan.net/600.600/deal/90ed99d9624a33598763449ff33bd2bd126589.jpg', '1982-06-25');
INSERT INTO `resource` VALUES ('83', '龙岗区', 'https://movie.douban.com/subject/3718279/', '那达慕草原碳烤羊腿（布吉店）', '2', '7.5', '科幻', 'https://img.meituan.net/600.600/msmerchant/58725d794adea3eee6cb828ac7bd1eec254148.png', '2016-02-12');
INSERT INTO `resource` VALUES ('84', '平山区', 'https://movie.douban.com/subject/1578714/', '蒙吉烤羊腿（公明店）', '3', '8.5', '科幻', 'http://p1.meituan.net/600.600/deal/a6ae4cc5bbd5817e3f35c721d5052d59388597.jpg', '2017-06-02');
INSERT INTO `resource` VALUES ('85', '平山区', 'https://movie.douban.com/subject/3073124/', '小麦烤吧', '4', '7.7', '科幻', 'http://p1.meituan.net/600.600/deal/9e09887b0ec430dd4fed98da9e694893255577.jpg', '2017-05-20');
INSERT INTO `resource` VALUES ('86', '平山区', 'https://movie.douban.com/subject/26670584/', '无穷花烧烤海鲜酱肉店', '5', '8.8', '科幻', 'http://p0.meituan.net/600.600/deal/__38741402__1779863.jpg', '2005-12-11');
INSERT INTO `resource` VALUES ('87', '南山区', 'https://movie.douban.com/subject/1309046/', '如意烤吧', '6', '8.6', '科幻', 'http://p1.meituan.net/600.600/deal/b58d69c7367733352316216c20da279c365296.jpg', '2014-10-23');
INSERT INTO `resource` VALUES ('88', '南山区', 'https://movie.douban.com/subject/11026735/', '东北二哥烧烤（大钟岗店）', '7', '4.2', '科幻', 'http://p1.meituan.net/600.600/deal/90ed99d9624a33598763449ff33bd2bd126589.jpg', '2017-05-17');
INSERT INTO `resource` VALUES ('89', '平山区', 'https://movie.douban.com/subject/26764514/', '那达慕草原碳烤羊腿（布吉店）', '8', '9', '科幻', 'https://img.meituan.net/600.600/msmerchant/58725d794adea3eee6cb828ac7bd1eec254148.png', '1998-06-05');
INSERT INTO `resource` VALUES ('90', '平山区', 'https://movie.douban.com/subject/1292064/', '蒙吉烤羊腿（公明店）', '9', '8.6', '科幻', 'http://p1.meituan.net/600.600/deal/a6ae4cc5bbd5817e3f35c721d5052d59388597.jpg', '2001-06-29');
INSERT INTO `resource` VALUES ('91', '福田区', 'https://movie.douban.com/subject/1302827/', '小麦烤吧', '10', '8.6', '科幻', 'http://p1.meituan.net/600.600/deal/9e09887b0ec430dd4fed98da9e694893255577.jpg', '1968-04-02');
INSERT INTO `resource` VALUES ('92', '龙华区', 'https://movie.douban.com/subject/1292226/', '无穷花烧烤海鲜酱肉店', '11', '7.9', '科幻', 'http://p0.meituan.net/600.600/deal/__38741402__1779863.jpg', '1986-07-18');
INSERT INTO `resource` VALUES ('93', '龙岗区', 'https://movie.douban.com/subject/1293792/', '7号烧烤（赤尾村店）', '12', '8.3', '科幻', 'http://p1.meituan.net/600.600/deal/__26811484__1763785.jpg', '2013-10-12');
INSERT INTO `resource` VALUES ('94', '宝安区', 'https://movie.douban.com/subject/6722879/', '全家福烤肉', '13', '8.7', '科幻', 'http://p1.meituan.net/600.600/deal/5c0419ffa0bf290919ff68ba30e20ad2122151.jpg', '1997-10-24');
INSERT INTO `resource` VALUES ('95', '宝安区', 'https://movie.douban.com/subject/1300117/', '乡下荔枝柴烧鸡', '14', '9.8', '科幻', 'http://p0.meituan.net/600.600/deal/b62882a9e1080abbd4838f4cd05ef7fb79744.jpg', '2017-04-01');
INSERT INTO `resource` VALUES ('96', '福田区', 'https://movie.douban.com/subject/26592971/', '梅园炭烧肥牛', '15', '8.7', '科幻', 'http://p1.meituan.net/600.600/deal/5899de058434b73928e00295492263ba268175.jpg', '1990-12-06');
INSERT INTO `resource` VALUES ('97', '福田区', 'https://movie.douban.com/subject/1292370/', '日福烤吧世界', '16', '8.5', '科幻', 'http://p0.meituan.net/600.600/deal/__41663620__9035168.jpg', '1982-05-25');
INSERT INTO `resource` VALUES ('98', '福田区', 'https://movie.douban.com/subject/1294638/', '大汗碳烤羊腿（坂田店）', '17', '8.5', '科幻', 'http://p1.meituan.net/600.600/mogu/8da33becb985e3a68f854ce44ab1873b19753.jpg', '2017-10-06');
INSERT INTO `resource` VALUES ('99', '平山区', 'https://movie.douban.com/subject/10512661/', '胡须仔炭烤肥牛', '18', '7.3', '科幻', 'http://p0.meituan.net/600.600/deal/__30449163__7046645.jpg', '2003-11-05');
INSERT INTO `resource` VALUES ('100', '龙岗区', 'https://movie.douban.com/subject/1302467/', '风味烤吧', '19', '7.9', '科幻', 'http://p1.meituan.net/600.600/deal/4d3b5b6e1aea1b8ca2f7c2b5c984b35e172273.jpg', '2016-07-22');
INSERT INTO `resource` VALUES ('101', '龙岗区', 'https://movie.douban.com/subject/25894431/', '美味小厨（八卦一路店）', '0', '7.3', '动作', 'http://p0.meituan.net/600.600/deal/a057d1166a2aba3c4c4e074508377e6c439584.jpg', '2016-12-16');
INSERT INTO `resource` VALUES ('102', '龙岗区', 'https://movie.douban.com/subject/26589957/', '深航国际酒店江南春中餐厅', '1', '4', '动作', 'http://p0.meituan.net/600.600/deal/__6751637__2050886.jpg', '2017-02-23');
INSERT INTO `resource` VALUES ('103', '平山区', 'https://movie.douban.com/subject/1578714/', '醉翁亭', '2', '6.1', '动作', 'http://p0.meituan.net/600.600/msmerchant/b3ac2d7a0188be99cd69099cb626c0668693242.jpg', '2017-06-02');
INSERT INTO `resource` VALUES ('104', '泰安区', 'https://movie.douban.com/subject/3569910/', '西湖明珠大酒楼（泰然工业园店）', '3', '4.6', '动作', 'http://p1.meituan.net/600.600/mogu/7026966795ce7cfa4f5cc083d5264ccd70077.jpg', '2016-08-05');
INSERT INTO `resource` VALUES ('105', '罗湖区', 'https://movie.douban.com/subject/26605946/', '龙袍小笼包（沙井京基百纳广场店）', '4', '8.7', '动作', 'http://p1.meituan.net/600.600/deal/__48484873__6960706.jpg', '2017-05-12');
INSERT INTO `resource` VALUES ('106', '宝安区', 'https://movie.douban.com/subject/1578507/', '西湖春天（喜荟城店）', '5', '7.3', '动作', 'http://p1.meituan.net/600.600/mogu/fbe124ed6d8745c762345feec3e8824670867.jpg', '2007-08-03');
INSERT INTO `resource` VALUES ('107', '福田区', 'https://movie.douban.com/subject/24325861/', '蟹湖湾阳澄湖大闸蟹', '6', '7.5', '动作', 'http://p0.meituan.net/600.600/deal/201108/23/shu.jpg', '2016-10-14');
INSERT INTO `resource` VALUES ('108', '福田区', 'https://movie.douban.com/subject/3227410/', '南小馆（COCOPark店）', '7', '8.5', '动作', 'http://p0.meituan.net/600.600/merchantpic/2ad4274a1d16d7e188bf92d1fe3f9fc9486017.jpg', '2011-05-20');
INSERT INTO `resource` VALUES ('109', '宝安区', 'https://movie.douban.com/subject/1304102/', '老大昌酒楼', '8', '8.5', '动作', 'https://img.meituan.net/600.600/msmerchant/973c99a0bf64565b56467610c480c047552117.jpg', '2013-02-15');
INSERT INTO `resource` VALUES ('110', '宝安区', 'https://movie.douban.com/subject/3592854/', '西湖春天（开元店）', '9', '8.5', '动作', 'http://p1.meituan.net/600.600/mogu/fbe124ed6d8745c762345feec3e8824670867.jpg', '2012-12-12');
INSERT INTO `resource` VALUES ('111', '福田区', 'https://movie.douban.com/subject/1292728/', '上海宾馆中餐厅·大上海酒楼', '10', '7.7', '动作', 'https://img.meituan.net/600.600/msmerchant/c9191ef800b5f69348e489a01f8137c8323366.jpg', '2017-03-24');
INSERT INTO `resource` VALUES ('112', '福田区', 'https://movie.douban.com/subject/25820460/', '西湖春天（百汇店）', '11', '8', '动作', 'https://img.meituan.net/600.600/msmerchant/32c8e6eaab7e1f72a05016b404052328126022.jpg', '2016-09-01');
INSERT INTO `resource` VALUES ('113', '福田区', 'https://movie.douban.com/subject/1291580/', '上海小南国（欢乐海岸店）', '12', '5.6', '动作', 'http://p0.meituan.net/600.600/merchantpic/3d43d0604f57a3fcdcf333d047fbaa93384181.jpg', '2017-02-17');
INSERT INTO `resource` VALUES ('114', '平山区', 'https://movie.douban.com/subject/25825412/', '濠河人家', '13', '8.4', '动作', 'http://p1.meituan.net/600.600/deal/__41421449__5585074.jpg', '2009-06-13');
INSERT INTO `resource` VALUES ('115', '龙岗区', 'https://movie.douban.com/subject/4286017/', '金牌小龙（新港城店）', '14', '8.5', '动作', 'http://p1.meituan.net/600.600/apiback/70cbbcf3c4e93842841a7a4c049d5227292022.jpg', '2005-12-11');
INSERT INTO `resource` VALUES ('116', '龙岗区', 'https://movie.douban.com/subject/3395373/', '江南味道（九方购物中心店）', '15', '7.6', '动作', 'http://p0.meituan.net/600.600/mogu/54aace95b882cae6c2962dd6ddaecdaa59985.jpg', '2002-12-12');
INSERT INTO `resource` VALUES ('117', '龙岗区', 'https://movie.douban.com/subject/1304899/', '谨杭味道（益田店）', '16', '7.3', '动作', 'http://p0.meituan.net/600.600/mogu/cb24641fe9f09c8b0897026e28c1235929110.jpg', '2014-09-26');
INSERT INTO `resource` VALUES ('118', '平山区', 'https://movie.douban.com/subject/26266072/', '美味小厨（八卦一路店）', '17', '7.7', '动作', 'http://p0.meituan.net/600.600/deal/a057d1166a2aba3c4c4e074508377e6c439584.jpg', '1972-03-15');
INSERT INTO `resource` VALUES ('119', '平山区', 'https://movie.douban.com/subject/3821067/', '深航国际酒店江南春中餐厅', '18', '8.4', '动作', 'http://p0.meituan.net/600.600/deal/__6751637__2050886.jpg', '2006-12-15');
INSERT INTO `resource` VALUES ('120', '平山区', 'https://movie.douban.com/subject/1292287/', '醉翁亭', '19', '8.6', '动作', 'http://p0.meituan.net/600.600/msmerchant/b3ac2d7a0188be99cd69099cb626c0668693242.jpg', '2011-11-02');
INSERT INTO `resource` VALUES ('121', '南山区', 'https://movie.douban.com/subject/1297447/', '福满园大酒楼（西乡港隆城店）', '0', '8.6', '经典', 'http://p0.meituan.net/600.600/mogu/2dd8d6a8873f82522352b5ca74ec8e10159963.jpg', '2017-03-27');
INSERT INTO `resource` VALUES ('122', '南山区', 'https://movie.douban.com/subject/1291832/', '五谷芳乳鸽王（海景店）', '1', '8.7', '经典', 'http://p0.meituan.net/600.600/mogu/abf157e89ddfc0968d9fe1f5d5d031ad38358.jpg', '2010-02-13');
INSERT INTO `resource` VALUES ('123', '平山区', 'https://movie.douban.com/subject/1292365/', '华苑一号（天安数码城店）', '2', '9', '经典', 'https://img.meituan.net/600.600/msmerchant/34815981e77d28f93f237308b12ed48e416498.jpg', '2014-12-19');
INSERT INTO `resource` VALUES ('124', '泰安区', 'https://movie.douban.com/subject/1292223/', '禾香湾粤菜酒家', '3', '8.7', '经典', 'https://img.meituan.net/600.600/msmerchant/c8d865128735ebb92f74cb60e8904647236648.jpg', '2014-04-29');
INSERT INTO `resource` VALUES ('125', '罗湖区', 'https://movie.douban.com/subject/1305164/', '露斯餐厅（水库店）', '4', '8.7', '经典', 'http://p0.meituan.net/600.600/mogu/1869f7fee68a776ae1d1e1a9d683400985810.jpg', '1994-05-18');
INSERT INTO `resource` VALUES ('126', '宝安区', 'https://movie.douban.com/subject/1302425/', '臻品轩酒家', '5', '8.4', '经典', 'http://p1.meituan.net/600.600/mogu/321c9e7ed893c9d77193cb0f9a36855327149.jpg', '2017-01-28');
INSERT INTO `resource` VALUES ('127', '福田区', 'https://movie.douban.com/subject/26387939/', '盈泰茶餐厅（后瑞店）', '6', '9.2', '经典', 'http://p0.meituan.net/600.600/deal/e7b4b678e47248f6cbb7b0c7ba1d245a74842.jpg', '2016-10-28');
INSERT INTO `resource` VALUES ('128', '福田区', 'https://movie.douban.com/subject/1292215/', '大与酒楼', '7', '8.7', '经典', 'https://img.meituan.net/600.600/msmerchant/556465d2f95f15d82ff711a578b6c580137388.jpg', '2012-09-28');
INSERT INTO `resource` VALUES ('129', '宝安区', 'https://movie.douban.com/subject/1292262/', '周公馆御膳皇家餐厅', '8', '9.1', '经典', 'http://p0.meituan.net/600.600/mogu/10c4134d9620702075039a6eb9515cb8129103.jpg', '2004-03-17');
INSERT INTO `resource` VALUES ('130', '宝安区', 'https://movie.douban.com/subject/1292224/', '麒麟山景大酒店岭南汇海鲜酒家（沙井店）', '9', '9', '经典', 'http://p0.meituan.net/600.600/apiback/7bb1c7a48a1fba34948215bfd5785201509165.jpg', '1992-12-23');
INSERT INTO `resource` VALUES ('131', '福田区', 'https://movie.douban.com/subject/1292849/', '富苑皇冠假日套房酒店富临门中餐厅', '10', '8.8', '经典', 'http://p1.meituan.net/0.600/mogu/0d4403ad13a76cfad74fb4440ef19c3e387902.jpg', '2017-02-16');
INSERT INTO `resource` VALUES ('132', '福田区', 'https://movie.douban.com/subject/1293182/', '嘉美轩精细潮州菜（南园路店）', '11', '9.3', '经典', 'http://p0.meituan.net/600.600/deal/__46176208__2240121.jpg', '2016-08-12');
INSERT INTO `resource` VALUES ('133', '福田区', 'https://movie.douban.com/subject/1298070/', '新富华茶餐厅（公明店）', '12', '8.6', '经典', 'http://p0.meituan.net/600.600/deal/262d13c60f02c5a3f031e96c6c4b1d07308544.jpg', '2016-10-14');
INSERT INTO `resource` VALUES ('134', '平山区', 'https://movie.douban.com/subject/1787291/', '淼鑫猪肚鸡连锁——兴隆食府', '13', '8.9', '经典', 'http://p0.meituan.net/600.600/deal/351e0179d573345417f936286c3a2ced257485.jpg', '2017-04-06');
INSERT INTO `resource` VALUES ('135', '龙岗区', 'https://movie.douban.com/subject/1291843/', '窑鸡王（彩田店）', '14', '8.8', '经典', 'http://p0.meituan.net/600.600/mogu/7d201218e31c24ca08965bcd0164298b109850.jpg', '1995-11-18');
INSERT INTO `resource` VALUES ('136', '龙岗区', 'https://movie.douban.com/subject/1301753/', '森记潮州砂锅粥（大梅沙店）', '15', '8.9', '经典', 'http://p1.meituan.net/600.600/apiback/22774291eff7874d10d409f833a8a2e043819.jpg', '2009-04-09');
INSERT INTO `resource` VALUES ('137', '龙岗区', 'https://movie.douban.com/subject/1306029/', '真味潮汕美食', '16', '8.9', '经典', 'http://p0.meituan.net/600.600/deal/63116f3a993cbd13744e5ec529c3c880319134.jpg', '2012-11-02');
INSERT INTO `resource` VALUES ('138', '平山区', 'https://movie.douban.com/subject/1293350/', '三及第食坊（东门店）', '17', '9', '经典', 'http://p1.meituan.net/600.600/deal/__49300486__8326562.jpg', '1984-03-11');
INSERT INTO `resource` VALUES ('139', '平山区', 'https://movie.douban.com/subject/2210001/', '陈记三及第（石岩店）', '18', '9.6', '经典', 'http://p1.meituan.net/600.600/deal/__49637097__5753480.jpg', '1995-07-15');
INSERT INTO `resource` VALUES ('140', '平山区', 'https://movie.douban.com/subject/1294408/', '福满园大酒楼（西乡港隆城店）', '19', '8.9', '经典', 'http://p0.meituan.net/600.600/mogu/2dd8d6a8873f82522352b5ca74ec8e10159963.jpg', '1988-04-16');
INSERT INTO `resource` VALUES ('141', '南山区', 'https://movie.douban.com/subject/26986846/', '面掌柜（坪州店）', '0', '8.3', '悬疑', 'http://p1.meituan.net/600.600/deal/1b326296d3e9e70348bb9ef9477be0c4275827.jpg', '1989-07-29');
INSERT INTO `resource` VALUES ('142', '南山区', 'https://movie.douban.com/subject/21324900/', '西安老王家（南光店）', '1', '7.7', '悬疑', 'http://p1.meituan.net/600.600/deal/__25959560__7157125.jpg', '2016-06-17');
INSERT INTO `resource` VALUES ('143', '平山区', 'https://movie.douban.com/subject/1397546/', '王记腊汁肉夹馍', '2', '9', '悬疑', 'http://p1.meituan.net/600.600/deal/d4e696ff1da9f5b0452782e72591983c308418.jpg', '2016-12-14');
INSERT INTO `resource` VALUES ('144', '泰安区', 'https://movie.douban.com/subject/26339213/', '蒙古草原格格（后海店）', '3', '7.4', '悬疑', 'http://p1.meituan.net/600.600/deal/b579dbd9c869caae0b6dca69a98dd97c72976.jpg', '2006-07-15');
INSERT INTO `resource` VALUES ('145', '泰安区', 'https://movie.douban.com/subject/24719063/', '西安老蔡家', '4', '7.9', '悬疑', 'http://p0.meituan.net/600.600/deal/f4f1cc6d5e4b4ecfab7872b95f3c2bae148216.jpg', '2014-08-22');
INSERT INTO `resource` VALUES ('146', '南山区', 'https://movie.douban.com/subject/24751763/', '秦厨子（吉祥店）', '5', '7.7', '悬疑', 'http://p1.meituan.net/600.600/dpmerchantalbum/58354edea391300c02a72edc7c299009206122.jpg', '2013-05-31');
INSERT INTO `resource` VALUES ('147', '宝安区', 'https://movie.douban.com/subject/1395091/', '爱家味烤羊排（下沙店）', '6', '8.8', '悬疑', 'http://p0.meituan.net/600.600/mogu/c4dc79342778f581f669fd92bcdae534222988.jpg', '2010-06-16');
INSERT INTO `resource` VALUES ('148', '龙华区', 'https://movie.douban.com/subject/3075287/', '科尔沁蒙原纯香炭烤羊腿', '7', '8.3', '悬疑', 'http://p1.meituan.net/600.600/deal/__47776241__2554513.jpg', '2013-07-03');
INSERT INTO `resource` VALUES ('149', '泰安区', 'https://movie.douban.com/subject/25977027/', '伊兴食坊', '8', '7.9', '悬疑', 'http://p0.meituan.net/600.600/deal/d074207429f0d243bde13041f007a169149366.jpg', '2013-07-20');
INSERT INTO `resource` VALUES ('150', '罗湖区', 'https://movie.douban.com/subject/25955491/', '小马手擀面', '9', '8.3', '悬疑', 'http://p1.meituan.net/600.600/deal/d3cb99273d50c6d948c870473a9084f576615.jpg', '2016-01-29');
INSERT INTO `resource` VALUES ('151', '宝安区', 'https://movie.douban.com/subject/1865703/', '爱牧羊汤', '10', '8.8', '悬疑', 'http://p0.meituan.net/600.600/shopmainpic/58a57dd8a8f34463865321df9a35c42e60275.jpg', '2016-04-15');
INSERT INTO `resource` VALUES ('152', '福田区', 'https://movie.douban.com/subject/26390938/', '阿尔善艺术餐吧', '11', '5.9', '悬疑', 'http://p1.meituan.net/600.600/poi/ba46d993b884abbf17589f9e641a23b2120832.jpg', '2014-07-25');
INSERT INTO `resource` VALUES ('153', '福田区', 'https://movie.douban.com/subject/25966085/', '红利茶餐厅快餐烧烤', '12', '7.3', '悬疑', 'http://p1.meituan.net/600.600/deal/0ea3feb25497679ab8af12c5b7a85afd422205.jpg', '1982-06-25');
INSERT INTO `resource` VALUES ('154', '宝安区', 'https://movie.douban.com/subject/1305725/', '爱家味烤羊排（海王店）', '13', '8.7', '悬疑', 'http://p1.meituan.net/600.600/mogu/e5038cc1fa246452eb7ebb76a584eaac23175.jpg', '2016-02-12');
INSERT INTO `resource` VALUES ('155', '宝安区', 'https://movie.douban.com/subject/26703158/', '老碗会·陕西手工面食大师（华强南店）', '14', '8.6', '悬疑', 'https://img.meituan.net/600.600/msmerchant/53f713c379545809b05fd6789d4ba89f227376.jpg', '2017-06-02');
INSERT INTO `resource` VALUES ('156', '福田区', 'https://movie.douban.com/subject/1307914/', '天骄食府', '15', '9', '悬疑', 'http://p1.meituan.net/600.600/deal/fef4e3f6bd2389fcc343beb8c66fe3b498722.jpg', '2017-05-20');
INSERT INTO `resource` VALUES ('157', '福田区', 'https://movie.douban.com/subject/26808226/', '那达慕草原碳烤羊腿（布吉店）', '16', '7.6', '悬疑', 'https://img.meituan.net/600.600/msmerchant/58725d794adea3eee6cb828ac7bd1eec254148.png', '2005-12-11');
INSERT INTO `resource` VALUES ('158', '福田区', 'https://movie.douban.com/subject/1978709/', '面掌柜（坪州店）', '17', '8.5', '悬疑', 'http://p1.meituan.net/600.600/deal/1b326296d3e9e70348bb9ef9477be0c4275827.jpg', '2014-10-23');
INSERT INTO `resource` VALUES ('159', '平山区', 'https://movie.douban.com/subject/26974339/', '西安老王家（南光店）', '18', '8.1', '悬疑', 'http://p1.meituan.net/600.600/deal/__25959560__7157125.jpg', '2017-05-17');
INSERT INTO `resource` VALUES ('160', '龙岗区', 'https://movie.douban.com/subject/26292682/', '王记腊汁肉夹馍', '19', '5.2', '悬疑', 'http://p1.meituan.net/600.600/deal/d4e696ff1da9f5b0452782e72591983c308418.jpg', '1998-06-05');
INSERT INTO `resource` VALUES ('161', '龙岗区', 'https://movie.douban.com/subject/27012497/', '君悦酒店-1881中餐厅', '0', '9.5', '青春', 'http://p0.meituan.net/600.600/msmerchant/2ce1c8e60c32da1df4eb5b3789486c0c2258699.jpg', '2001-06-29');
INSERT INTO `resource` VALUES ('162', '龙岗区', 'https://movie.douban.com/subject/26658568/', '燕青小馆', '1', '5.7', '青春', 'http://p0.meituan.net/600.600/deal/bf66293f7b789c6681b66a2b8b7fb47a171807.jpg', '1968-04-02');
INSERT INTO `resource` VALUES ('163', '平山区', 'https://movie.douban.com/subject/5327217/', '天津卓老二土鸭', '2', '6.3', '青春', 'http://p1.meituan.net/600.600/mogu/09e37dd3a016327afec6506c87677691229655.jpg', '1986-07-18');
INSERT INTO `resource` VALUES ('164', '平山区', 'https://movie.douban.com/subject/25964071/', '艺馨东北饺子馆', '3', '7.4', '青春', 'http://p0.meituan.net/600.600/deal/36da99ea8d6d147a53956441aec0c862127798.jpg', '2013-10-12');
INSERT INTO `resource` VALUES ('165', '平山区', 'https://movie.douban.com/subject/26362351/', '苏升记大盆骨（白石厦店）', '4', '8.2', '青春', 'http://p1.meituan.net/600.600/mogu/93da074c3dcb67663b85d3274e853893230462.jpg', '1997-10-24');
INSERT INTO `resource` VALUES ('166', '南山区', 'https://movie.douban.com/subject/1304073/', '北京菜馆', '5', '8.2', '青春', 'http://p1.meituan.net/600.600/mogu/b509682e45d30b7a577eb069a8144bc922880.jpg', '2017-04-01');
INSERT INTO `resource` VALUES ('167', '南山区', 'https://movie.douban.com/subject/26427831/', '贵友京菜馆（东园路店）', '6', '6.3', '青春', 'http://p0.meituan.net/600.600/deal/__30789336__3254458.jpg', '1990-12-06');
INSERT INTO `resource` VALUES ('168', '平山区', 'https://movie.douban.com/subject/1292329/', '1949全鸭季（欢乐海岸购物中心店）', '7', '8.7', '青春', 'https://img.meituan.net/600.600/msmerchant/c498ac4d46174f4c19a5344a6ff773d8706475.jpg', '1982-05-25');
INSERT INTO `resource` VALUES ('169', '平山区', 'https://movie.douban.com/subject/25855071/', '梅利烤鸭店', '8', '8.2', '青春', 'http://p0.meituan.net/600.600/mogu/b275a30bda6df2a73eb968fcfc6e5a75103084.jpg', '2017-10-06');
INSERT INTO `resource` VALUES ('170', '福田区', 'https://movie.douban.com/subject/26683353/', '冯记买旺烤鸭', '9', '7.2', '青春', 'http://p1.meituan.net/600.600/mogu/14c542033e5eed5cb398e540c15c083584364.jpg', '2003-11-05');
INSERT INTO `resource` VALUES ('171', '龙华区', 'https://movie.douban.com/subject/4847665/', '古稻林餐厅（新沙店）', '10', '7.9', '青春', 'http://p1.meituan.net/600.600/mogu/09d856c53b86dc145384880c01275f09249232.jpg', '2016-07-22');
INSERT INTO `resource` VALUES ('172', '龙岗区', 'https://movie.douban.com/subject/26787124/', '金皇来烤鸭店', '11', '8.4', '青春', 'http://p1.meituan.net/600.600/deal/c0740bf72567db9008fca050bb1ce865350140.jpg', '2016-12-16');
INSERT INTO `resource` VALUES ('173', '宝安区', 'https://movie.douban.com/subject/26811831/', '花悦庭（平安金融中心店）', '12', '6.6', '青春', 'https://img.meituan.net/600.600/msmerchant/aeae154e49598d92e03fa85fdbe69b2b370065.jpg', '2017-02-23');
INSERT INTO `resource` VALUES ('174', '宝安区', 'https://movie.douban.com/subject/6973376/', '君悦酒店-1881中餐厅', '13', '7.4', '青春', 'http://p0.meituan.net/600.600/msmerchant/2ce1c8e60c32da1df4eb5b3789486c0c2258699.jpg', '2017-06-02');
INSERT INTO `resource` VALUES ('175', '福田区', 'https://movie.douban.com/subject/24735062/', '燕青小馆', '14', '7.6', '青春', 'http://p0.meituan.net/600.600/deal/bf66293f7b789c6681b66a2b8b7fb47a171807.jpg', '2016-08-05');
INSERT INTO `resource` VALUES ('176', '福田区', 'https://movie.douban.com/subject/11529526/', '天津卓老二土鸭', '15', '8.1', '青春', 'http://p1.meituan.net/600.600/mogu/09e37dd3a016327afec6506c87677691229655.jpg', '2017-05-12');
INSERT INTO `resource` VALUES ('177', '福田区', 'https://movie.douban.com/subject/1308820/', '艺馨东北饺子馆', '16', '8.1', '青春', 'http://p0.meituan.net/600.600/deal/36da99ea8d6d147a53956441aec0c862127798.jpg', '2007-08-03');
INSERT INTO `resource` VALUES ('178', '平山区', 'https://movie.douban.com/subject/3824672/', '苏升记大盆骨（白石厦店）', '17', '8.7', '青春', 'http://p1.meituan.net/600.600/mogu/93da074c3dcb67663b85d3274e853893230462.jpg', '2016-10-14');
INSERT INTO `resource` VALUES ('179', '龙岗区', 'https://movie.douban.com/subject/2018131/', '北京菜馆', '18', '7.6', '青春', 'http://p1.meituan.net/600.600/mogu/b509682e45d30b7a577eb069a8144bc922880.jpg', '2017-10-06');
INSERT INTO `resource` VALUES ('180', '龙岗区', 'https://movie.douban.com/subject/6873905/', '贵友京菜馆（东园路店）', '19', '5.4', '青春', 'http://p0.meituan.net/600.600/deal/__30789336__3254458.jpg', '2003-11-05');
INSERT INTO `resource` VALUES ('181', '龙岗区', 'https://movie.douban.com/subject/25966085/', '1949全鸭季（欢乐海岸购物中心店）', '0', '7.3', '犯罪', 'https://img.meituan.net/600.600/msmerchant/c498ac4d46174f4c19a5344a6ff773d8706475.jpg', '2016-07-22');
INSERT INTO `resource` VALUES ('182', '平山区', 'https://movie.douban.com/subject/25917973/', '梅利烤鸭店', '1', '8.6', '犯罪', 'http://p0.meituan.net/600.600/mogu/b275a30bda6df2a73eb968fcfc6e5a75103084.jpg', '2016-12-16');
INSERT INTO `resource` VALUES ('183', '平山区', 'https://movie.douban.com/subject/1293350/', '冯记买旺烤鸭', '2', '9', '犯罪', 'http://p1.meituan.net/600.600/mogu/14c542033e5eed5cb398e540c15c083584364.jpg', '2017-02-23');
INSERT INTO `resource` VALUES ('184', '泰安区', 'https://movie.douban.com/subject/26748847/', '古稻林餐厅（新沙店）', '3', '9.8', '犯罪', 'http://p1.meituan.net/600.600/mogu/09d856c53b86dc145384880c01275f09249232.jpg', '2017-06-02');
INSERT INTO `resource` VALUES ('185', '泰安区', 'https://movie.douban.com/subject/1760622/', '金皇来烤鸭店', '4', '8.4', '犯罪', 'http://p1.meituan.net/600.600/deal/c0740bf72567db9008fca050bb1ce865350140.jpg', '2016-08-05');
INSERT INTO `resource` VALUES ('186', '南山区', 'https://movie.douban.com/subject/26284621/', '花悦庭（平安金融中心店）', '5', '7.6', '犯罪', 'https://img.meituan.net/600.600/msmerchant/aeae154e49598d92e03fa85fdbe69b2b370065.jpg', '2017-05-12');
INSERT INTO `resource` VALUES ('187', '宝安区', 'https://movie.douban.com/subject/24297912/', '黄焖鸡米饭店', '6', '8.9', '犯罪', 'http://p1.meituan.net/600.600/deal/8f1ba64363a8111cb90fa5709cf3f213292243.png', '2007-08-03');
INSERT INTO `resource` VALUES ('188', '龙华区', 'https://movie.douban.com/subject/26606743/', '京味张烤鸭店（龙岗店）', '7', '6.5', '犯罪', 'https://img.meituan.net/600.600/msmerchant/b1138ccd6d4f02faa16b0c67b21aaffd41404.jpg', '2016-10-14');
INSERT INTO `resource` VALUES ('189', '泰安区', 'https://movie.douban.com/subject/26808226/', '宁夏牧羊人（鸿翔花园店）', '8', '7.6', '犯罪', 'https://img.meituan.net/600.600/msmerchant/be1f67d86f619f96ab1c1d9ce3937b19168414.jpg', '2011-05-20');
INSERT INTO `resource` VALUES ('190', '罗湖区', 'https://movie.douban.com/subject/26588239/', '北京羲和雅苑烤鸭坊（万象天地店）', '9', '9.2', '犯罪', 'https://img.meituan.net/600.600/msmerchant/5859c83f2a67dea0689aa9636da4515f8468277.jpg', '2013-02-15');
INSERT INTO `resource` VALUES ('191', '宝安区', 'https://movie.douban.com/subject/2369845/', '君悦酒店-1881中餐厅', '10', '8.3', '犯罪', 'http://p0.meituan.net/600.600/msmerchant/2ce1c8e60c32da1df4eb5b3789486c0c2258699.jpg', '2012-12-12');
INSERT INTO `resource` VALUES ('192', '福田区', 'https://movie.douban.com/subject/1292208/', '君悦酒店-1881中餐厅', '11', '8.9', '犯罪', 'http://p0.meituan.net/600.600/msmerchant/2ce1c8e60c32da1df4eb5b3789486c0c2258699.jpg', '2017-03-24');
INSERT INTO `resource` VALUES ('193', '福田区', 'https://movie.douban.com/subject/1292528/', '燕青小馆', '12', '8.5', '犯罪', 'http://p0.meituan.net/600.600/deal/bf66293f7b789c6681b66a2b8b7fb47a171807.jpg', '2016-09-01');
INSERT INTO `resource` VALUES ('194', '宝安区', 'https://movie.douban.com/subject/25798448/', '天津卓老二土鸭', '13', '7.8', '犯罪', 'http://p1.meituan.net/600.600/mogu/09e37dd3a016327afec6506c87677691229655.jpg', '2017-02-17');
INSERT INTO `resource` VALUES ('195', '宝安区', 'https://movie.douban.com/subject/26984195/', '燕青小馆', '14', '8.5', '犯罪', 'http://p0.meituan.net/600.600/deal/bf66293f7b789c6681b66a2b8b7fb47a171807.jpg', '2009-06-13');
INSERT INTO `resource` VALUES ('196', '福田区', 'https://movie.douban.com/subject/3569910/', '艺馨东北饺子馆', '15', '6.1', '犯罪', 'http://p0.meituan.net/600.600/deal/36da99ea8d6d147a53956441aec0c862127798.jpg', '2005-12-11');
INSERT INTO `resource` VALUES ('197', '福田区', 'https://movie.douban.com/subject/1299131/', '天津卓老二土鸭', '16', '9.1', '犯罪', 'http://p1.meituan.net/600.600/mogu/09e37dd3a016327afec6506c87677691229655.jpg', '2002-12-12');
INSERT INTO `resource` VALUES ('198', '福田区', 'https://movie.douban.com/subject/7065334/', '苏升记大盆骨（白石厦店）', '17', '7.6', '犯罪', 'http://p1.meituan.net/600.600/mogu/93da074c3dcb67663b85d3274e853893230462.jpg', '2014-09-26');
INSERT INTO `resource` VALUES ('199', '平山区', 'https://movie.douban.com/subject/20505982/', '艺馨东北饺子馆', '18', '6.9', '犯罪', 'http://p0.meituan.net/600.600/deal/36da99ea8d6d147a53956441aec0c862127798.jpg', '1972-03-15');
INSERT INTO `resource` VALUES ('200', '龙岗区', 'https://movie.douban.com/subject/2063528/', '北京菜馆', '19', '8.2', '犯罪', 'http://p1.meituan.net/600.600/mogu/b509682e45d30b7a577eb069a8144bc922880.jpg', '2006-12-15');
INSERT INTO `resource` VALUES ('201', '龙岗区', 'https://movie.douban.com/subject/26292682/', '澳葡街风味酒家（天安店）', '0', '5.2', '惊悚', 'http://p0.meituan.net/600.600/deal/8d95bf3d3e6e85df3412915d1e46c504317740.jpg', '2011-11-02');
INSERT INTO `resource` VALUES ('202', '龙岗区', 'https://movie.douban.com/subject/1466007/', 'little papa小印度尼泊尔菜（蛇口店）', '1', '7.5', '惊悚', 'http://p0.meituan.net/600.600/mogu/4ad8c5aaabc763418a5f3c7fff91aac467879.jpg', '2017-03-27');
INSERT INTO `resource` VALUES ('203', '平山区', 'https://movie.douban.com/subject/1304447/', '火车头音乐餐厅', '2', '8.5', '惊悚', 'http://p1.meituan.net/600.600/mogu/1984b360a314a836e730420a6bb5afee158385.jpg', '2010-02-13');
INSERT INTO `resource` VALUES ('204', '平山区', 'https://movie.douban.com/subject/24743711/', '印度咖喱小厨（保利文化广场店）', '3', '7.6', '惊悚', 'http://p0.meituan.net/600.600/apiback/8d703616ecde5d60485aa78019bd8ceb72334.jpg', '2014-12-19');
INSERT INTO `resource` VALUES ('205', '平山区', 'https://movie.douban.com/subject/26022182/', '暹罗泰（侨城店）', '4', '7.6', '惊悚', 'http://p0.meituan.net/600.600/mogu/0db8ca3cb4a0500960d81c2a65e5415c55511.jpg', '2014-04-29');
INSERT INTO `resource` VALUES ('206', '南山区', 'https://movie.douban.com/subject/3804629/', 'Saffron索菲廊印度料理', '5', '7.6', '惊悚', 'https://img.meituan.net/600.600/msmerchant/20ae0e43ee2576c3d616b7368164fdd8123505.jpg', '1994-05-18');
INSERT INTO `resource` VALUES ('207', '南山区', 'https://movie.douban.com/subject/25872311/', '鑫泰泰国料理（欢乐海岸店）', '6', '7.1', '惊悚', 'https://img.meituan.net/600.600/msmerchant/4e5a2aee16372a6322d576f10e41c7a9149793.jpg', '2017-01-28');
INSERT INTO `resource` VALUES ('208', '平山区', 'https://movie.douban.com/subject/1895120/', '越芽庄（东海缤纷店）', '7', '7.5', '惊悚', 'https://img.meituan.net/600.600/msmerchant/477c161222cdebd880a5a2b6ba56b277241501.jpg', '2016-10-28');
INSERT INTO `resource` VALUES ('209', '平山区', 'https://movie.douban.com/subject/3541415/', '泰炙Thai Light泰式火锅', '8', '9.2', '惊悚', 'https://img.meituan.net/600.600/msmerchant/e768ff3adf965ebf6539e15d751ac3004466036.jpg', '2012-09-28');
INSERT INTO `resource` VALUES ('210', '福田区', 'https://movie.douban.com/subject/26000205/', '象屋泰国餐厅（平安金融中心店）', '9', '7.1', '惊悚', 'https://img.meituan.net/600.600/msmerchant/10fbcf9815c7ce558800a8e237b1f90f167935.jpg', '2004-03-17');
INSERT INTO `resource` VALUES ('211', '龙华区', 'https://movie.douban.com/subject/1293181/', '新仙咖喱捞', '10', '8.8', '惊悚', 'http://p0.meituan.net/600.600/mogu/77265841413a387bb30ee93df9c3b7dd14389.png', '1992-12-23');
INSERT INTO `resource` VALUES ('212', '龙岗区', 'https://movie.douban.com/subject/3143676/', 'Bollywood宝莱坞印度餐厅（华强北店）', '11', '7.4', '惊悚', 'http://p0.meituan.net/600.600/shopmainpic/149f753f4a789019fa2ae18b336fdf22173070.jpg', '2017-02-16');
INSERT INTO `resource` VALUES ('213', '宝安区', 'https://movie.douban.com/subject/3011997/', 'vita味塔东南亚菜·酒吧（coco park店）', '12', '7.5', '惊悚', 'https://img.meituan.net/600.600/msmerchant/e17ae8d0ebcc9551bb8bdfc11c51f35e363761.jpg', '2016-08-12');
INSERT INTO `resource` VALUES ('214', '宝安区', 'https://movie.douban.com/subject/4146762/', '创意料理', '13', '7.1', '惊悚', 'http://p0.meituan.net/600.600/deal/d1dedbe8268d2f6bbc5ee64cde34c72d226443.jpg', '2016-10-14');
INSERT INTO `resource` VALUES ('215', '福田区', 'https://movie.douban.com/subject/1300300/', 'route66泰国菜', '14', '7.7', '惊悚', 'https://img.meituan.net/600.600/msmerchant/77a0be33461874e75fc68fef6eb4f585381996.jpg', '2017-04-06');
INSERT INTO `resource` VALUES ('216', '福田区', 'https://movie.douban.com/subject/3075287/', '粉姬-象遇越南粉体验区', '15', '8.3', '惊悚', 'http://p0.meituan.net/600.600/wxfood/9e30ffcba52f49633811694a56f9c5ac2988354.jpg', '1995-11-18');
INSERT INTO `resource` VALUES ('217', '福田区', 'https://movie.douban.com/subject/1305053/', '越小栈', '16', '7.7', '惊悚', 'http://p0.meituan.net/600.600/mogu/eb261fba496d357c7c9aa96d8024660f29963.jpg', '2009-04-09');
INSERT INTO `resource` VALUES ('218', '平山区', 'https://movie.douban.com/subject/1793903/', '澳葡街（华通店）', '17', '7.3', '惊悚', 'http://p1.meituan.net/600.600/deal/__28364931__9750206.jpg', '2012-11-02');
INSERT INTO `resource` VALUES ('219', '龙岗区', 'https://movie.douban.com/subject/21360417/', '原林绿吧', '18', '8.7', '惊悚', 'http://p0.meituan.net/600.600/mogu/ccf78105b8aa61d9cf29f86fa4e6ae4f211824.png', '1984-03-11');
INSERT INTO `resource` VALUES ('220', '龙岗区', 'https://movie.douban.com/subject/25817534/', '澳葡街风味酒家（天安店）', '19', '7.1', '惊悚', 'http://p0.meituan.net/600.600/deal/8d95bf3d3e6e85df3412915d1e46c504317740.jpg', '1995-07-15');
INSERT INTO `resource` VALUES ('221', '龙岗区', 'https://movie.douban.com/subject/1293839/', '福田林素食馆（岁宝百货万象店）', '0', '8.9', '文艺', 'http://p1.meituan.net/600.600/deal/__17833660__8605198.jpg', '1988-04-16');
INSERT INTO `resource` VALUES ('222', '平山区', 'https://movie.douban.com/subject/25738406/', '康态素食', '1', '8.2', '文艺', 'http://p1.meituan.net/600.600/deal/4d2cdc58920b9c3be97297630d938be5327460.jpg', '1989-07-29');
INSERT INTO `resource` VALUES ('223', '平山区', 'https://movie.douban.com/subject/5045678/', '新梅园圆通素食（泰然店）', '2', '6.5', '文艺', 'http://p0.meituan.net/600.600/deal/b068577a99cbb043b29d936648c10867330799.jpg', '2016-06-17');
INSERT INTO `resource` VALUES ('224', '南山区', 'https://movie.douban.com/subject/2222996/', '素禾素食（科技园店）', '3', '8.8', '文艺', 'http://p1.meituan.net/600.600/deal/c2320bceafc73ca8e65ef76fe784c5bb64839.jpg', '2016-12-14');
INSERT INTO `resource` VALUES ('225', '宝安区', 'https://movie.douban.com/subject/1929463/', '桐城小筑素食馆', '4', '9', '文艺', 'https://img.meituan.net/600.600/msmerchant/a89e7dac960d5080555ea65d2dfccc69109073.jpg', '2006-07-15');
INSERT INTO `resource` VALUES ('226', '龙华区', 'https://movie.douban.com/subject/26611076/', '登品素食府', '5', '7.2', '文艺', 'http://p1.meituan.net/600.600/poi/ce19fe0458ecd44c1efe1d1320e57afc131072.jpg', '2014-08-22');
INSERT INTO `resource` VALUES ('227', '泰安区', 'https://movie.douban.com/subject/25929151/', '禅味素食馆', '6', '7.5', '文艺', 'http://p0.meituan.net/600.600/poi/bb0ca8de559a0061cdde6c125a963d3077824.jpg', '2013-05-31');
INSERT INTO `resource` VALUES ('228', '罗湖区', 'https://movie.douban.com/subject/1292402/', '快狗煎饼果子', '7', '8.7', '文艺', 'http://p0.meituan.net/600.600/deal/__33551848__6184645.jpg', '2010-06-16');
INSERT INTO `resource` VALUES ('229', '宝安区', 'https://movie.douban.com/subject/1304073/', '觉缘素食自助餐馆', '8', '8.2', '文艺', 'http://p1.meituan.net/600.600/mogu/2ca75b9f5cd4c9d9a33bbcff067165e2239622.jpg', '2013-07-03');
INSERT INTO `resource` VALUES ('230', '福田区', 'https://movie.douban.com/subject/1292434/', '六和茶馆', '9', '8.9', '文艺', 'http://p1.meituan.net/600.600/dpmerchantalbum/c3521f73e628e81fa81bb8504296fb561778138.jpg', '2013-07-20');
INSERT INTO `resource` VALUES ('231', '福田区', 'https://movie.douban.com/subject/1308817/', '五谷印象里素菜馆（华南城总店）', '10', '8.1', '文艺', 'https://img.meituan.net/600.600/msmerchant/7ffd2691017009c8d433c61bf903b1d22486624.jpg', '2016-01-29');
INSERT INTO `resource` VALUES ('232', '宝安区', 'https://movie.douban.com/subject/3011091/', '妙吉祥素菜馆', '11', '9.2', '文艺', 'http://p0.meituan.net/600.600/mogu/02b588e3c1c4b984dd7c307ac82178b4109275.jpg', '2016-04-15');
INSERT INTO `resource` VALUES ('233', '宝安区', 'https://movie.douban.com/subject/1291549/', '如意斋国际素食体验餐厅', '12', '9.2', '文艺', 'http://p0.meituan.net/600.600/ugcpic/2daa81d427c94a8e44ca7b1d0d4c5b69', '2014-07-25');
INSERT INTO `resource` VALUES ('234', '福田区', 'https://movie.douban.com/subject/1292328/', '静素斋菜', '13', '8.6', '文艺', 'http://p0.meituan.net/600.600/mogu/ee0a56b1727b5031e356677d1fd0324279679.jpg', '1982-06-25');
INSERT INTO `resource` VALUES ('235', '福田区', 'https://movie.douban.com/subject/4319218/', '静颐素食', '14', '8.2', '文艺', 'https://img.meituan.net/600.600/msmerchant/9f82819029922c59e5d0441033036fc1226969.jpg', '2016-02-12');
INSERT INTO `resource` VALUES ('236', '福田区', 'https://movie.douban.com/subject/6722879/', '格琳素席', '15', '8.3', '文艺', 'https://img.meituan.net/600.600/msmerchant/fcb45f6ee320a38100a455fd2e28d333117445.jpg', '2017-06-02');
INSERT INTO `resource` VALUES ('237', '平山区', 'https://movie.douban.com/subject/26677981/', '品茶居素食馆', '16', '5.3', '文艺', 'http://p1.meituan.net/600.600/deal/__24894848__5195832.jpg', '2017-05-20');
INSERT INTO `resource` VALUES ('238', '龙岗区', 'https://movie.douban.com/subject/3742360/', '藏巴拉素食馆', '17', '8.7', '文艺', 'https://img.meituan.net/600.600/msmerchant/244f3c0e8749e30e16cf48ac41cd1d0c162380.jpg', '2005-12-11');
INSERT INTO `resource` VALUES ('239', '龙岗区', 'https://movie.douban.com/subject/26390938/', '祈康膳坊·创意美学素食料理', '18', '5.9', '文艺', 'https://img.meituan.net/600.600/msmerchant/80ee26488b7580e580ca727d828f7ec26104114.jpg', '2014-10-23');
INSERT INTO `resource` VALUES ('240', '龙岗区', 'https://movie.douban.com/subject/1308820/', '十方缘素食府（五和店）', '19', '8.1', '文艺', 'http://p0.meituan.net/600.600/deal/337d2d8349b5a6f4144ca265d9622c5374139.jpg', '2017-05-17');
INSERT INTO `resource` VALUES ('241', '平山区', 'https://movie.douban.com/subject/10491666/', '胜者即是正义', '0', '9.3', '搞笑', 'https://img3.doubanio.com/view/movie_poster_cover/ipst/public/p1901775591.jpg', '1998-06-05');

-- ----------------------------
-- Table structure for `resource2`
-- ----------------------------
DROP TABLE IF EXISTS `resource2`;
CREATE TABLE `resource2` (
  `id` int(11) DEFAULT NULL,
  `area` longtext,
  `description` longtext,
  `name` longtext,
  `number` longtext,
  `score` double DEFAULT NULL,
  `type` longtext,
  `url` longtext,
  `year` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resource2
-- ----------------------------
INSERT INTO `resource2` VALUES ('7', '龙华区', 'http://p0.meituan.net/600.600/apiback/6c38a6f13ee99ae7b11a9573f8dbb2b1171690.jpg', '湾湾塘（龙华店）', '6', '8.7', '蛋糕甜点', 'http://p0.meituan.net/600.600/apiback/6c38a6f13ee99ae7b11a9573f8dbb2b1171690.jpg', '2016-11-05');
INSERT INTO `resource2` VALUES ('8', '龙华区', 'http://p1.meituan.net/600.600/deal/d32c3ea3c70914f439fa6598bd0e27fb620299.jpg', '云顶贡茶（时代城店）', '7', '7.2', '蛋糕甜点', 'http://p1.meituan.net/600.600/deal/d32c3ea3c70914f439fa6598bd0e27fb620299.jpg', '2008-12-25');
INSERT INTO `resource2` VALUES ('10', '宝安区', 'http://p0.meituan.net/600.600/mogu/d4aba38248ee7365bd500bf9e18328e185052.png', '御蝶坊生日蛋糕（福永店）', '9', '8.6', '蛋糕甜点', 'http://p0.meituan.net/600.600/mogu/d4aba38248ee7365bd500bf9e18328e185052.png', '2008-12-25');
INSERT INTO `resource2` VALUES ('11', '宝安区', 'http://p0.meituan.net/600.600/mogu/bb15e0bae522b9c1ff242d5f6ebf240089241.jpg', '佳田生日蛋糕（松岗天虹店）', '10', '8', '蛋糕甜点', 'http://p0.meituan.net/600.600/mogu/bb15e0bae522b9c1ff242d5f6ebf240089241.jpg', '1999-02-13');
INSERT INTO `resource2` VALUES ('12', '宝安区', 'http://p0.meituan.net/600.600/ugcpic/a3997d1fb7d8f47f45ff2c5b3c32ad54', '贡茶（坪洲地铁店）', '11', '8.4', '蛋糕甜点', 'http://p0.meituan.net/600.600/ugcpic/a3997d1fb7d8f47f45ff2c5b3c32ad54', '2004-09-05');
INSERT INTO `resource2` VALUES ('13', '福田区', 'http://p1.meituan.net/600.600/mogu/a54db9587cc4501b09ab13dd53de8778305147.jpg', '幸福西饼生日蛋糕（布心店）', '12', '8.8', '蛋糕甜点', 'http://p1.meituan.net/600.600/mogu/a54db9587cc4501b09ab13dd53de8778305147.jpg', '2000-10-27');
INSERT INTO `resource2` VALUES ('14', '福田区', 'http://p1.meituan.net/600.600/mogu/5cb8358502907ed2d36f1aa0d9d12192257990.png', '舞茶道（西丽地铁站分店）', '13', '8.7', '蛋糕甜点', 'http://p1.meituan.net/600.600/mogu/5cb8358502907ed2d36f1aa0d9d12192257990.png', '2009-12-25');
INSERT INTO `resource2` VALUES ('15', '福田区', 'http://p1.meituan.net/600.600/deal/7e456c767ef45180a470f98fec8c402e358294.jpg', '耐思阳光原叶（坑梓店）', '14', '9.1', '蛋糕甜点', 'http://p1.meituan.net/600.600/deal/7e456c767ef45180a470f98fec8c402e358294.jpg', '2017-05-27');
INSERT INTO `resource2` VALUES ('16', '平山区', 'http://p1.meituan.net/600.600/deal/a33a3d19bcec84000d869d36e4039bed240989.jpg', '艺朵茶（壹海城店）', '15', '5.3', '蛋糕甜点', 'http://p1.meituan.net/600.600/deal/a33a3d19bcec84000d869d36e4039bed240989.jpg', '2016-10-07');
INSERT INTO `resource2` VALUES ('17', '龙岗区', 'http://p1.meituan.net/600.600/mogu/a501459af46a339d1a9c264ac6b7e4b2512813.png', '洛克王子（坪洲店）', '16', '9.5', '蛋糕甜点', 'http://p1.meituan.net/600.600/mogu/a501459af46a339d1a9c264ac6b7e4b2512813.png', '1987-07-18');
INSERT INTO `resource2` VALUES ('18', '龙岗区', 'http://p1.meituan.net/600.600/deal/ffc8f4c77d3efcbc68d665601a48f64a89266.jpg', '九份仙芋（大浪店）', '17', '8.6', '蛋糕甜点', 'http://p1.meituan.net/600.600/deal/ffc8f4c77d3efcbc68d665601a48f64a89266.jpg', '2011-08-19');
INSERT INTO `resource2` VALUES ('19', '龙岗区', 'http://p0.meituan.net/600.600/poi/659d15cb8f7d57da1e65f73ff93fe1eb113083.jpg', '鲜港记甜品', '18', '7.8', '蛋糕甜点', 'http://p0.meituan.net/600.600/poi/659d15cb8f7d57da1e65f73ff93fe1eb113083.jpg', '2003-09-07');
INSERT INTO `resource2` VALUES ('20', '平山区', 'http://p0.meituan.net/600.600/apiback/ef9224fcc27ea5f3209b42e6edf93771108433.jpg', '贡茶新语', '19', '8.5', '蛋糕甜点', 'http://p0.meituan.net/600.600/apiback/ef9224fcc27ea5f3209b42e6edf93771108433.jpg', '2007-03-03');
INSERT INTO `resource2` VALUES ('21', '平山区', 'https://movie.douban.com/subject/3287562/', 'the Frypan韩式炸鸡啤酒&年糕火锅', '0', '8.5', '火锅', 'http://p1.meituan.net/600.600/deal/e9084dae36c01070a15e6dc125b25a73136107.jpg', '2010-06-20');
INSERT INTO `resource2` VALUES ('22', '平山区', 'https://movie.douban.com/subject/19944106/', '重庆鸡公煲（南新路店）', '1', '6.8', '火锅', 'http://p1.meituan.net/600.600/deal/201212/28/135856_1142693.jpg', '2016-02-08');
INSERT INTO `resource2` VALUES ('24', '南山区', 'https://movie.douban.com/subject/26688480/', '优鱼', '3', '7.5', '火锅', 'http://p1.meituan.net/600.600/deal/98b2b3d81c96dcd3d72842a516c8309b415245.jpg', '2017-01-23');
INSERT INTO `resource2` VALUES ('25', '南山区', 'https://movie.douban.com/subject/26879060/', '118香辣虾', '4', '6.1', '火锅', 'http://p1.meituan.net/600.600/apiback/fd2f2a7424a31522450bd1cb5710af13102344.jpg', '2016-12-30');
INSERT INTO `resource2` VALUES ('26', '平山区', 'https://movie.douban.com/subject/26743546/', '云泉椰子鸡（中兴店）', '5', '4.1', '火锅', 'http://p1.meituan.net/600.600/deal/1a3d48cf4dfc201fe158dc1ed9ad526a30759.jpg', '2017-04-24');
INSERT INTO `resource2` VALUES ('27', '平山区', 'https://movie.douban.com/subject/6386345/', '尚品石锅鱼', '6', '7.3', '火锅', 'http://p0.meituan.net/600.600/apiback/8d87a1d881c6f198e67d1bb2aa7f8454230650.jpg', '2012-03-29');
INSERT INTO `resource2` VALUES ('28', '福田区', 'https://movie.douban.com/subject/26287783/', '潮鑫牛肉店（民治店）', '7', '4.2', '火锅', 'http://p1.meituan.net/600.600/deal/__46861285__3033602.jpg', '2017-05-19');
INSERT INTO `resource2` VALUES ('29', '龙华区', 'https://movie.douban.com/subject/1292215/', 'the Frypan韩式炸鸡啤酒&年糕火锅', '8', '8.7', '火锅', 'http://p1.meituan.net/600.600/deal/e9084dae36c01070a15e6dc125b25a73136107.jpg', '2001-04-25');
INSERT INTO `resource2` VALUES ('30', '龙岗区', 'https://movie.douban.com/subject/25911694/', '重庆鸡公煲（南新路店）', '9', '4', '火锅', 'http://p1.meituan.net/600.600/deal/201212/28/135856_1142693.jpg', '2016-12-23');
INSERT INTO `resource2` VALUES ('31', '罗湖区', 'https://movie.douban.com/subject/26717795/', '优鱼', '10', '6.7', '火锅', 'http://p1.meituan.net/600.600/deal/98b2b3d81c96dcd3d72842a516c8309b415245.jpg', '2017-01-28');
INSERT INTO `resource2` VALUES ('32', '罗湖区', 'https://movie.douban.com/subject/11525673/', '118香辣虾', '11', '8.7', '火锅', 'http://p1.meituan.net/600.600/apiback/fd2f2a7424a31522450bd1cb5710af13102344.jpg', '2014-02-06');
INSERT INTO `resource2` VALUES ('35', '平山区', 'https://movie.douban.com/subject/26593587/', '云泉椰子鸡（中兴店）', '14', '8.1', '火锅', 'http://p1.meituan.net/600.600/deal/1a3d48cf4dfc201fe158dc1ed9ad526a30759.jpg', '2017-04-12');
INSERT INTO `resource2` VALUES ('36', '福田区', 'https://movie.douban.com/subject/26389696/', '尚品石锅鱼', '15', '3.8', '火锅', 'http://p0.meituan.net/600.600/apiback/8d87a1d881c6f198e67d1bb2aa7f8454230650.jpg', '2017-01-28');
INSERT INTO `resource2` VALUES ('37', '龙岗区', 'https://movie.douban.com/subject/26393561/', '潮鑫牛肉店（民治店）', '16', '8.7', '火锅', 'http://p1.meituan.net/600.600/deal/__46861285__3033602.jpg', '2015-07-17');
INSERT INTO `resource2` VALUES ('38', '宝安区', 'https://movie.douban.com/subject/1907966/', '焖汁汇三汁焖锅（尖沙咀店）', '17', '8.7', '火锅', 'http://p1.meituan.net/600.600/deal/__29579768__6347589.jpg', '2013-02-15');
INSERT INTO `resource2` VALUES ('39', '宝安区', 'https://movie.douban.com/subject/10574622/', '优客香鹅掌（南山总店）', '18', '7.5', '火锅', 'https://img.meituan.net/600.600/msmerchant/d5a4649c9635749ba418ae851828010b112822.jpg', '2012-12-12');
INSERT INTO `resource2` VALUES ('40', '福田区', 'https://movie.douban.com/subject/26850326/', '江南春天椰子鸡（石岩店）', '19', '2.5', '火锅', 'http://p1.meituan.net/600.600/shopmainpic/55a349bba25900ccdbf96fbbb52310e8135083.jpg', '2017-03-24');
INSERT INTO `resource2` VALUES ('41', '龙岗区', 'https://movie.douban.com/subject/21324900/', '板一寿司（龙华店）', '0', '7.7', '自助餐', 'http://p0.meituan.net/600.600/mogu/78aa1775065a3d6a8edabece669fb5ad119883.png', '2016-09-01');
INSERT INTO `resource2` VALUES ('42', '罗湖区', 'https://movie.douban.com/subject/25765735/', '新梅园圆通素食（泰然店）', '1', '8.3', '自助餐', 'http://p0.meituan.net/600.600/deal/b068577a99cbb043b29d936648c10867330799.jpg', '2017-02-17');
INSERT INTO `resource2` VALUES ('43', '宝安区', 'https://movie.douban.com/subject/3011091/', '板一寿司（龙华店）', '2', '9.2', '自助餐', 'http://p0.meituan.net/600.600/mogu/78aa1775065a3d6a8edabece669fb5ad119883.png', '2009-06-13');
INSERT INTO `resource2` VALUES ('44', '宝安区', 'https://movie.douban.com/subject/1309046/', '新梅园圆通素食（泰然店）', '3', '8.8', '自助餐', 'http://p0.meituan.net/600.600/deal/b068577a99cbb043b29d936648c10867330799.jpg', '2005-12-11');
INSERT INTO `resource2` VALUES ('45', '罗湖区', 'https://movie.douban.com/subject/1307914/', '静素斋菜', '4', '9', '自助餐', 'http://p0.meituan.net/600.600/mogu/ee0a56b1727b5031e356677d1fd0324279679.jpg', '2002-12-12');
INSERT INTO `resource2` VALUES ('46', '泰安区', 'https://movie.douban.com/subject/21318488/', '葵花公寓自助餐厅', '5', '8.7', '自助餐', 'http://p1.meituan.net/600.600/deal/__25346105__9778355.jpg', '2014-09-26');
INSERT INTO `resource2` VALUES ('47', '泰安区', 'https://movie.douban.com/subject/1291841/', '登品素食府', '6', '9.2', '自助餐', 'http://p1.meituan.net/600.600/poi/ce19fe0458ecd44c1efe1d1320e57afc131072.jpg', '1972-03-15');
INSERT INTO `resource2` VALUES ('48', '南山区', 'https://movie.douban.com/subject/1849031/', '格兰云天大酒店天星自助餐厅', '7', '8.9', '自助餐', 'http://p0.meituan.net/600.600/mogu/a6e71405f0e8c66e4d3efd6c3e1bbd3c118829.jpg', '2006-12-15');
INSERT INTO `resource2` VALUES ('49', '宝安区', 'https://movie.douban.com/subject/6786002/', '登喜路国际大酒店', '8', '9.1', '自助餐', 'http://p1.meituan.net/600.600/msmerchant/67c03a62629df31a017ae42a89a893e0174403.jpeg', '2011-11-02');
INSERT INTO `resource2` VALUES ('50', '龙华区', 'https://movie.douban.com/subject/26805324/', '圣德堡酒店●富茵阁西餐厅', '9', '8.5', '自助餐', 'http://p1.meituan.net/600.600/deal/__29920173__1449437.jpg', '2017-03-27');
INSERT INTO `resource2` VALUES ('51', '泰安区', 'https://movie.douban.com/subject/2334904/', '青蓬西餐厅（万象城店）', '10', '8.6', '自助餐', 'http://p0.meituan.net/600.600/mogu/11d46f6a42057bfb4a70217d04f35837137022.jpg', '2010-02-13');
INSERT INTO `resource2` VALUES ('52', '罗湖区', 'https://movie.douban.com/subject/10741643/', '富苑皇冠假日套房酒店富临门中餐厅', '11', '8.3', '自助餐', 'http://p1.meituan.net/600.600/mogu/0d4403ad13a76cfad74fb4440ef19c3e387902.jpg', '2014-12-19');
INSERT INTO `resource2` VALUES ('53', '宝安区', 'https://movie.douban.com/subject/24743711/', '万华国际大酒店莎莉宫西餐厅', '12', '7.6', '自助餐', 'http://p1.meituan.net/600.600/deal/__40721941__1010026.jpg', '2014-04-29');
INSERT INTO `resource2` VALUES ('54', '福田区', 'https://movie.douban.com/subject/1292365/', '丽湾酒店丽莎西餐厅', '13', '9', '自助餐', 'http://p0.meituan.net/600.600/mogu/f37f465e99809e5b07b96fa7af335196349859.jpg', '1994-05-18');
INSERT INTO `resource2` VALUES ('55', '福田区', 'https://movie.douban.com/subject/26862259/', '威斯汀知味自助餐厅', '14', '6.9', '自助餐', 'http://p0.meituan.net/600.600/mogu/5f4cc956446ef02629534e61c9fd0001390173.jpg', '2017-01-28');
INSERT INTO `resource2` VALUES ('56', '宝安区', 'https://movie.douban.com/subject/25921812/', '珠江皇冠假日酒店-悦咖啡西餐厅', '15', '8.3', '自助餐', 'http://p0.meituan.net/600.600/deal/fff94d7b141eaaaaf739c96ee09ec932381783.jpg', '2016-10-28');
INSERT INTO `resource2` VALUES ('57', '宝安区', 'https://movie.douban.com/subject/1929463/', '摩登克斯无国界海鲜自助餐厅', '16', '9', '自助餐', 'https://img.meituan.net/600.600/msmerchant/0815507877d0ddd1caba8380d25ec9fc224859.jpg', '2012-09-28');
INSERT INTO `resource2` VALUES ('58', '福田区', 'https://movie.douban.com/subject/1291549/', '大渔铁板烧（保利文化广场店）', '17', '9.2', '自助餐', 'https://img.meituan.net/600.600/msmerchant/2a8188418a8c5cd38beae6507282216d246211.jpg', '2004-03-17');
INSERT INTO `resource2` VALUES ('59', '福田区', 'https://movie.douban.com/subject/1298624/', '萬膳日本料理·铁板烧（罗湖店）', '18', '8.9', '自助餐', 'http://p1.meituan.net/600.600/apiback/89f3d18a1d8f117904679ae0d7cada693199997.jpg', '1992-12-23');
INSERT INTO `resource2` VALUES ('60', '福田区', 'https://movie.douban.com/subject/26718282/', '青蓬西餐厅（海岸城店）', '19', '7.1', '自助餐', 'http://p1.meituan.net/600.600/deal/__46604906__5389270.jpg', '2017-02-16');
INSERT INTO `resource2` VALUES ('61', '平山区', 'https://movie.douban.com/subject/4944008/', '鲜味寿司', '0', '7.1', '日韩料理', 'http://p1.meituan.net/600.600/apiback/202f3e572f009aa2d55e7b758e29ae5e183006.jpg', '2016-08-12');
INSERT INTO `resource2` VALUES ('62', '龙岗区', 'https://movie.douban.com/subject/26666177/', '渔夫坊北欧三文鱼', '1', '7.9', '日韩料理', 'http://p0.meituan.net/600.600/ugcpic/5264745e9f086026519f5e68a0b0a964', '2016-10-14');
INSERT INTO `resource2` VALUES ('63', '龙岗区', 'https://movie.douban.com/subject/26963810/', '大马哈挪威三文鱼（松岗店）', '2', '9', '日韩料理', 'http://p0.meituan.net/600.600/deal/__8666369__8138849.jpg', '2017-04-06');
INSERT INTO `resource2` VALUES ('64', '龙岗区', 'https://movie.douban.com/subject/1291936/', '天绿回转寿司（华侨城店）', '3', '8.9', '日韩料理', 'http://p0.meituan.net/600.600/deal/__32171212__3437302.jpg', '1995-11-18');
INSERT INTO `resource2` VALUES ('65', '平山区', 'https://movie.douban.com/subject/3072124/', '高丽馆韩国料理（中心城店）', '4', '8.9', '日韩料理', 'http://p0.meituan.net/600.600/deal/e01c527b69254953ab61dcac79972779317586.jpg', '2009-04-09');
INSERT INTO `resource2` VALUES ('66', '平山区', 'https://movie.douban.com/subject/6534248/', '千寻寿司（车公庙一店）', '5', '8.6', '日韩料理', 'http://p1.meituan.net/600.600/mogu/712ec5a211516fb482cc91957436a2b553235.jpg', '2012-11-02');
INSERT INTO `resource2` VALUES ('67', '平山区', 'https://movie.douban.com/subject/1291585/', '凤凰日本料理', '6', '8.8', '日韩料理', 'http://p1.meituan.net/600.600/deal/f1d56553378f0def16646caeac5b6e33328109.jpg', '1984-03-11');
INSERT INTO `resource2` VALUES ('68', '南山区', 'https://movie.douban.com/subject/1297052/', 'the Frypan韩式炸鸡啤酒&年糕火锅', '7', '8.8', '日韩料理', 'http://p1.meituan.net/600.600/deal/e9084dae36c01070a15e6dc125b25a73136107.jpg', '1995-07-15');
INSERT INTO `resource2` VALUES ('69', '南山区', 'https://movie.douban.com/subject/1293318/', '风火寿司（平湖店）', '8', '8.7', '日韩料理', 'https://img.meituan.net/600.600/msmerchant/b2b985633fd175b30089b73e1a3c7392209522.jpg', '1988-04-16');
INSERT INTO `resource2` VALUES ('70', '平山区', 'https://movie.douban.com/subject/1307811/', '合午寿司（石岩店）', '9', '8.4', '日韩料理', 'http://p0.meituan.net/600.600/deal/__50123265__9026849.jpg', '1989-07-29');
INSERT INTO `resource2` VALUES ('71', '平山区', 'https://movie.douban.com/subject/26766869/', '釜山馆日韩料理（公明店）', '10', '9.2', '日韩料理', 'http://p1.meituan.net/600.600/deal/__40639719__7784766.jpg', '2016-06-17');
INSERT INTO `resource2` VALUES ('72', '福田区', 'https://movie.douban.com/subject/26382767/', 'MrEasy外带寿司（世界之窗店）', '11', '6.7', '日韩料理', 'http://p0.meituan.net/600.600/deal/__45395775__3290785.jpg', '2016-12-14');
INSERT INTO `resource2` VALUES ('73', '龙华区', 'https://movie.douban.com/subject/1937946/', '大桥日本料理（科兴科学园店）', '12', '8.6', '日韩料理', 'http://p0.meituan.net/600.600/shaitu/8a1149253caa2370f50b91638268d57267255.jpg', '2006-07-15');
INSERT INTO `resource2` VALUES ('74', '龙岗区', 'https://movie.douban.com/subject/25900177/', '上野日本料理', '13', '9.2', '日韩料理', 'http://p0.meituan.net/600.600/deal/51493899ec273cfe5a415d3293ed4a29121087.jpg', '2014-08-22');
INSERT INTO `resource2` VALUES ('75', '宝安区', 'https://movie.douban.com/subject/20470074/', '幸乐日本料理', '14', '8.2', '日韩料理', 'http://p0.meituan.net/600.600/apiback/5dba5dfbbd0b2a2007ffd6d408b253cd171759.jpg', '2013-05-31');
INSERT INTO `resource2` VALUES ('76', '宝安区', 'https://movie.douban.com/subject/1858711/', '日之火创意料理', '15', '8.7', '日韩料理', 'http://p0.meituan.net/600.600/deal/b5a0749b2963d98193ab333cb9af30df475393.jpg', '2010-06-16');
INSERT INTO `resource2` VALUES ('77', '福田区', 'https://movie.douban.com/subject/4915857/', '萬膳日本料理·铁板烧（罗湖店）', '16', '8', '日韩料理', 'http://p1.meituan.net/600.600/apiback/89f3d18a1d8f117904679ae0d7cada693199997.jpg', '2013-07-03');
INSERT INTO `resource2` VALUES ('78', '福田区', 'https://movie.douban.com/subject/6791750/', '黄海道正统韩国料理（第二分店）', '17', '7.8', '日韩料理', 'http://p0.meituan.net/600.600/deal/__36425736__5328377.jpg', '2013-07-20');
INSERT INTO `resource2` VALUES ('79', '福田区', 'https://movie.douban.com/subject/11589036/', '鲜味寿司', '18', '7.7', '日韩料理', 'http://p1.meituan.net/600.600/apiback/202f3e572f009aa2d55e7b758e29ae5e183006.jpg', '2016-01-29');
INSERT INTO `resource2` VALUES ('80', '平山区', 'https://movie.douban.com/subject/25777636/', '渔夫坊北欧三文鱼', '19', '7.8', '日韩料理', 'http://p0.meituan.net/600.600/ugcpic/5264745e9f086026519f5e68a0b0a964', '2016-04-15');
INSERT INTO `resource2` VALUES ('81', '龙岗区', 'https://movie.douban.com/subject/24404677/', '如意烤吧', '0', '7', '烧烤烤肉', 'http://p1.meituan.net/600.600/deal/b58d69c7367733352316216c20da279c365296.jpg', '2014-07-25');
INSERT INTO `resource2` VALUES ('82', '龙岗区', 'https://movie.douban.com/subject/1291839/', '东北二哥烧烤（大钟岗店）', '1', '8.1', '烧烤烤肉', 'http://p1.meituan.net/600.600/deal/90ed99d9624a33598763449ff33bd2bd126589.jpg', '1982-06-25');
INSERT INTO `resource2` VALUES ('83', '龙岗区', 'https://movie.douban.com/subject/3718279/', '那达慕草原碳烤羊腿（布吉店）', '2', '7.5', '烧烤烤肉', 'https://img.meituan.net/600.600/msmerchant/58725d794adea3eee6cb828ac7bd1eec254148.png', '2016-02-12');
INSERT INTO `resource2` VALUES ('84', '平山区', 'https://movie.douban.com/subject/1578714/', '蒙吉烤羊腿（公明店）', '3', '8.5', '烧烤烤肉', 'http://p1.meituan.net/600.600/deal/a6ae4cc5bbd5817e3f35c721d5052d59388597.jpg', '2017-06-02');
INSERT INTO `resource2` VALUES ('85', '平山区', 'https://movie.douban.com/subject/3073124/', '小麦烤吧', '4', '7.7', '烧烤烤肉', 'http://p1.meituan.net/600.600/deal/9e09887b0ec430dd4fed98da9e694893255577.jpg', '2017-05-20');
INSERT INTO `resource2` VALUES ('86', '平山区', 'https://movie.douban.com/subject/26670584/', '无穷花烧烤海鲜酱肉店', '5', '8.8', '烧烤烤肉', 'http://p0.meituan.net/600.600/deal/__38741402__1779863.jpg', '2005-12-11');
INSERT INTO `resource2` VALUES ('87', '南山区', 'https://movie.douban.com/subject/1309046/', '如意烤吧', '6', '8.6', '烧烤烤肉', 'http://p1.meituan.net/600.600/deal/b58d69c7367733352316216c20da279c365296.jpg', '2014-10-23');
INSERT INTO `resource2` VALUES ('88', '南山区', 'https://movie.douban.com/subject/11026735/', '东北二哥烧烤（大钟岗店）', '7', '4.2', '烧烤烤肉', 'http://p1.meituan.net/600.600/deal/90ed99d9624a33598763449ff33bd2bd126589.jpg', '2017-05-17');
INSERT INTO `resource2` VALUES ('89', '平山区', 'https://movie.douban.com/subject/26764514/', '那达慕草原碳烤羊腿（布吉店）', '8', '9', '烧烤烤肉', 'https://img.meituan.net/600.600/msmerchant/58725d794adea3eee6cb828ac7bd1eec254148.png', '1998-06-05');
INSERT INTO `resource2` VALUES ('90', '平山区', 'https://movie.douban.com/subject/1292064/', '蒙吉烤羊腿（公明店）', '9', '8.6', '烧烤烤肉', 'http://p1.meituan.net/600.600/deal/a6ae4cc5bbd5817e3f35c721d5052d59388597.jpg', '2001-06-29');
INSERT INTO `resource2` VALUES ('91', '福田区', 'https://movie.douban.com/subject/1302827/', '小麦烤吧', '10', '8.6', '烧烤烤肉', 'http://p1.meituan.net/600.600/deal/9e09887b0ec430dd4fed98da9e694893255577.jpg', '1968-04-02');
INSERT INTO `resource2` VALUES ('92', '龙华区', 'https://movie.douban.com/subject/1292226/', '无穷花烧烤海鲜酱肉店', '11', '7.9', '烧烤烤肉', 'http://p0.meituan.net/600.600/deal/__38741402__1779863.jpg', '1986-07-18');
INSERT INTO `resource2` VALUES ('93', '龙岗区', 'https://movie.douban.com/subject/1293792/', '7号烧烤（赤尾村店）', '12', '8.3', '烧烤烤肉', 'http://p1.meituan.net/600.600/deal/__26811484__1763785.jpg', '2013-10-12');
INSERT INTO `resource2` VALUES ('94', '宝安区', 'https://movie.douban.com/subject/6722879/', '全家福烤肉', '13', '8.7', '烧烤烤肉', 'http://p1.meituan.net/600.600/deal/5c0419ffa0bf290919ff68ba30e20ad2122151.jpg', '1997-10-24');
INSERT INTO `resource2` VALUES ('95', '宝安区', 'https://movie.douban.com/subject/1300117/', '乡下荔枝柴烧鸡', '14', '9.8', '烧烤烤肉', 'http://p0.meituan.net/600.600/deal/b62882a9e1080abbd4838f4cd05ef7fb79744.jpg', '2017-04-01');
INSERT INTO `resource2` VALUES ('96', '福田区', 'https://movie.douban.com/subject/26592971/', '梅园炭烧肥牛', '15', '8.7', '烧烤烤肉', 'http://p1.meituan.net/600.600/deal/5899de058434b73928e00295492263ba268175.jpg', '1990-12-06');
INSERT INTO `resource2` VALUES ('97', '福田区', 'https://movie.douban.com/subject/1292370/', '日福烤吧世界', '16', '8.5', '烧烤烤肉', 'http://p0.meituan.net/600.600/deal/__41663620__9035168.jpg', '1982-05-25');
INSERT INTO `resource2` VALUES ('98', '福田区', 'https://movie.douban.com/subject/1294638/', '大汗碳烤羊腿（坂田店）', '17', '8.5', '烧烤烤肉', 'http://p1.meituan.net/600.600/mogu/8da33becb985e3a68f854ce44ab1873b19753.jpg', '2017-10-06');
INSERT INTO `resource2` VALUES ('99', '平山区', 'https://movie.douban.com/subject/10512661/', '胡须仔炭烤肥牛', '18', '7.3', '烧烤烤肉', 'http://p0.meituan.net/600.600/deal/__30449163__7046645.jpg', '2003-11-05');
INSERT INTO `resource2` VALUES ('100', '龙岗区', 'https://movie.douban.com/subject/1302467/', '风味烤吧', '19', '7.9', '烧烤烤肉', 'http://p1.meituan.net/600.600/deal/4d3b5b6e1aea1b8ca2f7c2b5c984b35e172273.jpg', '2016-07-22');
INSERT INTO `resource2` VALUES ('101', '龙岗区', 'https://movie.douban.com/subject/25894431/', '美味小厨（八卦一路店）', '0', '7.3', '江浙菜', 'http://p0.meituan.net/600.600/deal/a057d1166a2aba3c4c4e074508377e6c439584.jpg', '2016-12-16');
INSERT INTO `resource2` VALUES ('102', '龙岗区', 'https://movie.douban.com/subject/26589957/', '深航国际酒店江南春中餐厅', '1', '4', '江浙菜', 'http://p0.meituan.net/600.600/deal/__6751637__2050886.jpg', '2017-02-23');
INSERT INTO `resource2` VALUES ('103', '平山区', 'https://movie.douban.com/subject/1578714/', '醉翁亭', '2', '6.1', '江浙菜', 'http://p0.meituan.net/600.600/msmerchant/b3ac2d7a0188be99cd69099cb626c0668693242.jpg', '2017-06-02');
INSERT INTO `resource2` VALUES ('104', '泰安区', 'https://movie.douban.com/subject/3569910/', '西湖明珠大酒楼（泰然工业园店）', '3', '4.6', '江浙菜', 'http://p1.meituan.net/600.600/mogu/7026966795ce7cfa4f5cc083d5264ccd70077.jpg', '2016-08-05');
INSERT INTO `resource2` VALUES ('105', '罗湖区', 'https://movie.douban.com/subject/26605946/', '龙袍小笼包（沙井京基百纳广场店）', '4', '8.7', '江浙菜', 'http://p1.meituan.net/600.600/deal/__48484873__6960706.jpg', '2017-05-12');
INSERT INTO `resource2` VALUES ('106', '宝安区', 'https://movie.douban.com/subject/1578507/', '西湖春天（喜荟城店）', '5', '7.3', '江浙菜', 'http://p1.meituan.net/600.600/mogu/fbe124ed6d8745c762345feec3e8824670867.jpg', '2007-08-03');
INSERT INTO `resource2` VALUES ('107', '福田区', 'https://movie.douban.com/subject/24325861/', '蟹湖湾阳澄湖大闸蟹', '6', '7.5', '江浙菜', 'http://p0.meituan.net/600.600/deal/201108/23/shu.jpg', '2016-10-14');
INSERT INTO `resource2` VALUES ('108', '福田区', 'https://movie.douban.com/subject/3227410/', '南小馆（COCOPark店）', '7', '8.5', '江浙菜', 'http://p0.meituan.net/600.600/merchantpic/2ad4274a1d16d7e188bf92d1fe3f9fc9486017.jpg', '2011-05-20');
INSERT INTO `resource2` VALUES ('109', '宝安区', 'https://movie.douban.com/subject/1304102/', '老大昌酒楼', '8', '8.5', '江浙菜', 'https://img.meituan.net/600.600/msmerchant/973c99a0bf64565b56467610c480c047552117.jpg', '2013-02-15');
INSERT INTO `resource2` VALUES ('110', '宝安区', 'https://movie.douban.com/subject/3592854/', '西湖春天（开元店）', '9', '8.5', '江浙菜', 'http://p1.meituan.net/600.600/mogu/fbe124ed6d8745c762345feec3e8824670867.jpg', '2012-12-12');
INSERT INTO `resource2` VALUES ('111', '福田区', 'https://movie.douban.com/subject/1292728/', '上海宾馆中餐厅·大上海酒楼', '10', '7.7', '江浙菜', 'https://img.meituan.net/600.600/msmerchant/c9191ef800b5f69348e489a01f8137c8323366.jpg', '2017-03-24');
INSERT INTO `resource2` VALUES ('112', '福田区', 'https://movie.douban.com/subject/25820460/', '西湖春天（百汇店）', '11', '8', '江浙菜', 'https://img.meituan.net/600.600/msmerchant/32c8e6eaab7e1f72a05016b404052328126022.jpg', '2016-09-01');
INSERT INTO `resource2` VALUES ('113', '福田区', 'https://movie.douban.com/subject/1291580/', '上海小南国（欢乐海岸店）', '12', '5.6', '江浙菜', 'http://p0.meituan.net/600.600/merchantpic/3d43d0604f57a3fcdcf333d047fbaa93384181.jpg', '2017-02-17');
INSERT INTO `resource2` VALUES ('114', '平山区', 'https://movie.douban.com/subject/25825412/', '濠河人家', '13', '8.4', '江浙菜', 'http://p1.meituan.net/600.600/deal/__41421449__5585074.jpg', '2009-06-13');
INSERT INTO `resource2` VALUES ('115', '龙岗区', 'https://movie.douban.com/subject/4286017/', '金牌小龙（新港城店）', '14', '8.5', '江浙菜', 'http://p1.meituan.net/600.600/apiback/70cbbcf3c4e93842841a7a4c049d5227292022.jpg', '2005-12-11');
INSERT INTO `resource2` VALUES ('116', '龙岗区', 'https://movie.douban.com/subject/3395373/', '江南味道（九方购物中心店）', '15', '7.6', '江浙菜', 'http://p0.meituan.net/600.600/mogu/54aace95b882cae6c2962dd6ddaecdaa59985.jpg', '2002-12-12');
INSERT INTO `resource2` VALUES ('117', '龙岗区', 'https://movie.douban.com/subject/1304899/', '谨杭味道（益田店）', '16', '7.3', '江浙菜', 'http://p0.meituan.net/600.600/mogu/cb24641fe9f09c8b0897026e28c1235929110.jpg', '2014-09-26');
INSERT INTO `resource2` VALUES ('118', '平山区', 'https://movie.douban.com/subject/26266072/', '美味小厨（八卦一路店）', '17', '7.7', '江浙菜', 'http://p0.meituan.net/600.600/deal/a057d1166a2aba3c4c4e074508377e6c439584.jpg', '1972-03-15');
INSERT INTO `resource2` VALUES ('119', '平山区', 'https://movie.douban.com/subject/3821067/', '深航国际酒店江南春中餐厅', '18', '8.4', '江浙菜', 'http://p0.meituan.net/600.600/deal/__6751637__2050886.jpg', '2006-12-15');
INSERT INTO `resource2` VALUES ('120', '平山区', 'https://movie.douban.com/subject/1292287/', '醉翁亭', '19', '8.6', '江浙菜', 'http://p0.meituan.net/600.600/msmerchant/b3ac2d7a0188be99cd69099cb626c0668693242.jpg', '2011-11-02');
INSERT INTO `resource2` VALUES ('121', '南山区', 'https://movie.douban.com/subject/1297447/', '福满园大酒楼（西乡港隆城店）', '0', '8.6', '粤菜', 'http://p0.meituan.net/600.600/mogu/2dd8d6a8873f82522352b5ca74ec8e10159963.jpg', '2017-03-27');
INSERT INTO `resource2` VALUES ('122', '南山区', 'https://movie.douban.com/subject/1291832/', '五谷芳乳鸽王（海景店）', '1', '8.7', '粤菜', 'http://p0.meituan.net/600.600/mogu/abf157e89ddfc0968d9fe1f5d5d031ad38358.jpg', '2010-02-13');
INSERT INTO `resource2` VALUES ('123', '平山区', 'https://movie.douban.com/subject/1292365/', '华苑一号（天安数码城店）', '2', '9', '粤菜', 'https://img.meituan.net/600.600/msmerchant/34815981e77d28f93f237308b12ed48e416498.jpg', '2014-12-19');
INSERT INTO `resource2` VALUES ('124', '泰安区', 'https://movie.douban.com/subject/1292223/', '禾香湾粤菜酒家', '3', '8.7', '粤菜', 'https://img.meituan.net/600.600/msmerchant/c8d865128735ebb92f74cb60e8904647236648.jpg', '2014-04-29');
INSERT INTO `resource2` VALUES ('125', '罗湖区', 'https://movie.douban.com/subject/1305164/', '露斯餐厅（水库店）', '4', '8.7', '粤菜', 'http://p0.meituan.net/600.600/mogu/1869f7fee68a776ae1d1e1a9d683400985810.jpg', '1994-05-18');
INSERT INTO `resource2` VALUES ('126', '宝安区', 'https://movie.douban.com/subject/1302425/', '臻品轩酒家', '5', '8.4', '粤菜', 'http://p1.meituan.net/600.600/mogu/321c9e7ed893c9d77193cb0f9a36855327149.jpg', '2017-01-28');
INSERT INTO `resource2` VALUES ('127', '福田区', 'https://movie.douban.com/subject/26387939/', '盈泰茶餐厅（后瑞店）', '6', '9.2', '粤菜', 'http://p0.meituan.net/600.600/deal/e7b4b678e47248f6cbb7b0c7ba1d245a74842.jpg', '2016-10-28');
INSERT INTO `resource2` VALUES ('128', '福田区', 'https://movie.douban.com/subject/1292215/', '大与酒楼', '7', '8.7', '粤菜', 'https://img.meituan.net/600.600/msmerchant/556465d2f95f15d82ff711a578b6c580137388.jpg', '2012-09-28');
INSERT INTO `resource2` VALUES ('129', '宝安区', 'https://movie.douban.com/subject/1292262/', '周公馆御膳皇家餐厅', '8', '9.1', '粤菜', 'http://p0.meituan.net/600.600/mogu/10c4134d9620702075039a6eb9515cb8129103.jpg', '2004-03-17');
INSERT INTO `resource2` VALUES ('130', '宝安区', 'https://movie.douban.com/subject/1292224/', '麒麟山景大酒店岭南汇海鲜酒家（沙井店）', '9', '9', '粤菜', 'http://p0.meituan.net/600.600/apiback/7bb1c7a48a1fba34948215bfd5785201509165.jpg', '1992-12-23');
INSERT INTO `resource2` VALUES ('131', '福田区', 'https://movie.douban.com/subject/1292849/', '富苑皇冠假日套房酒店富临门中餐厅', '10', '8.8', '粤菜', 'http://p1.meituan.net/0.600/mogu/0d4403ad13a76cfad74fb4440ef19c3e387902.jpg', '2017-02-16');
INSERT INTO `resource2` VALUES ('132', '福田区', 'https://movie.douban.com/subject/1293182/', '嘉美轩精细潮州菜（南园路店）', '11', '9.3', '粤菜', 'http://p0.meituan.net/600.600/deal/__46176208__2240121.jpg', '2016-08-12');
INSERT INTO `resource2` VALUES ('133', '福田区', 'https://movie.douban.com/subject/1298070/', '新富华茶餐厅（公明店）', '12', '8.6', '粤菜', 'http://p0.meituan.net/600.600/deal/262d13c60f02c5a3f031e96c6c4b1d07308544.jpg', '2016-10-14');
INSERT INTO `resource2` VALUES ('134', '平山区', 'https://movie.douban.com/subject/1787291/', '淼鑫猪肚鸡连锁——兴隆食府', '13', '8.9', '粤菜', 'http://p0.meituan.net/600.600/deal/351e0179d573345417f936286c3a2ced257485.jpg', '2017-04-06');
INSERT INTO `resource2` VALUES ('135', '龙岗区', 'https://movie.douban.com/subject/1291843/', '窑鸡王（彩田店）', '14', '8.8', '粤菜', 'http://p0.meituan.net/600.600/mogu/7d201218e31c24ca08965bcd0164298b109850.jpg', '1995-11-18');
INSERT INTO `resource2` VALUES ('136', '龙岗区', 'https://movie.douban.com/subject/1301753/', '森记潮州砂锅粥（大梅沙店）', '15', '8.9', '粤菜', 'http://p1.meituan.net/600.600/apiback/22774291eff7874d10d409f833a8a2e043819.jpg', '2009-04-09');
INSERT INTO `resource2` VALUES ('137', '龙岗区', 'https://movie.douban.com/subject/1306029/', '真味潮汕美食', '16', '8.9', '粤菜', 'http://p0.meituan.net/600.600/deal/63116f3a993cbd13744e5ec529c3c880319134.jpg', '2012-11-02');
INSERT INTO `resource2` VALUES ('138', '平山区', 'https://movie.douban.com/subject/1293350/', '三及第食坊（东门店）', '17', '9', '粤菜', 'http://p1.meituan.net/600.600/deal/__49300486__8326562.jpg', '1984-03-11');
INSERT INTO `resource2` VALUES ('139', '平山区', 'https://movie.douban.com/subject/2210001/', '陈记三及第（石岩店）', '18', '9.6', '粤菜', 'http://p1.meituan.net/600.600/deal/__49637097__5753480.jpg', '1995-07-15');
INSERT INTO `resource2` VALUES ('140', '平山区', 'https://movie.douban.com/subject/1294408/', '福满园大酒楼（西乡港隆城店）', '19', '8.9', '粤菜', 'http://p0.meituan.net/600.600/mogu/2dd8d6a8873f82522352b5ca74ec8e10159963.jpg', '1988-04-16');
INSERT INTO `resource2` VALUES ('141', '南山区', 'https://movie.douban.com/subject/26986846/', '面掌柜（坪州店）', '0', '8.3', '西北菜', 'http://p1.meituan.net/600.600/deal/1b326296d3e9e70348bb9ef9477be0c4275827.jpg', '1989-07-29');
INSERT INTO `resource2` VALUES ('142', '南山区', 'https://movie.douban.com/subject/21324900/', '西安老王家（南光店）', '1', '7.7', '西北菜', 'http://p1.meituan.net/600.600/deal/__25959560__7157125.jpg', '2016-06-17');
INSERT INTO `resource2` VALUES ('143', '平山区', 'https://movie.douban.com/subject/1397546/', '王记腊汁肉夹馍', '2', '9', '西北菜', 'http://p1.meituan.net/600.600/deal/d4e696ff1da9f5b0452782e72591983c308418.jpg', '2016-12-14');
INSERT INTO `resource2` VALUES ('144', '泰安区', 'https://movie.douban.com/subject/26339213/', '蒙古草原格格（后海店）', '3', '7.4', '西北菜', 'http://p1.meituan.net/600.600/deal/b579dbd9c869caae0b6dca69a98dd97c72976.jpg', '2006-07-15');
INSERT INTO `resource2` VALUES ('145', '泰安区', 'https://movie.douban.com/subject/24719063/', '西安老蔡家', '4', '7.9', '西北菜', 'http://p0.meituan.net/600.600/deal/f4f1cc6d5e4b4ecfab7872b95f3c2bae148216.jpg', '2014-08-22');
INSERT INTO `resource2` VALUES ('146', '南山区', 'https://movie.douban.com/subject/24751763/', '秦厨子（吉祥店）', '5', '7.7', '西北菜', 'http://p1.meituan.net/600.600/dpmerchantalbum/58354edea391300c02a72edc7c299009206122.jpg', '2013-05-31');
INSERT INTO `resource2` VALUES ('147', '宝安区', 'https://movie.douban.com/subject/1395091/', '爱家味烤羊排（下沙店）', '6', '8.8', '西北菜', 'http://p0.meituan.net/600.600/mogu/c4dc79342778f581f669fd92bcdae534222988.jpg', '2010-06-16');
INSERT INTO `resource2` VALUES ('148', '龙华区', 'https://movie.douban.com/subject/3075287/', '科尔沁蒙原纯香炭烤羊腿', '7', '8.3', '西北菜', 'http://p1.meituan.net/600.600/deal/__47776241__2554513.jpg', '2013-07-03');
INSERT INTO `resource2` VALUES ('149', '泰安区', 'https://movie.douban.com/subject/25977027/', '伊兴食坊', '8', '7.9', '西北菜', 'http://p0.meituan.net/600.600/deal/d074207429f0d243bde13041f007a169149366.jpg', '2013-07-20');
INSERT INTO `resource2` VALUES ('150', '罗湖区', 'https://movie.douban.com/subject/25955491/', '小马手擀面', '9', '8.3', '西北菜', 'http://p1.meituan.net/600.600/deal/d3cb99273d50c6d948c870473a9084f576615.jpg', '2016-01-29');
INSERT INTO `resource2` VALUES ('151', '宝安区', 'https://movie.douban.com/subject/1865703/', '爱牧羊汤', '10', '8.8', '西北菜', 'http://p0.meituan.net/600.600/shopmainpic/58a57dd8a8f34463865321df9a35c42e60275.jpg', '2016-04-15');
INSERT INTO `resource2` VALUES ('152', '福田区', 'https://movie.douban.com/subject/26390938/', '阿尔善艺术餐吧', '11', '5.9', '西北菜', 'http://p1.meituan.net/600.600/poi/ba46d993b884abbf17589f9e641a23b2120832.jpg', '2014-07-25');
INSERT INTO `resource2` VALUES ('153', '福田区', 'https://movie.douban.com/subject/25966085/', '红利茶餐厅快餐烧烤', '12', '7.3', '西北菜', 'http://p1.meituan.net/600.600/deal/0ea3feb25497679ab8af12c5b7a85afd422205.jpg', '1982-06-25');
INSERT INTO `resource2` VALUES ('154', '宝安区', 'https://movie.douban.com/subject/1305725/', '爱家味烤羊排（海王店）', '13', '8.7', '西北菜', 'http://p1.meituan.net/600.600/mogu/e5038cc1fa246452eb7ebb76a584eaac23175.jpg', '2016-02-12');
INSERT INTO `resource2` VALUES ('155', '宝安区', 'https://movie.douban.com/subject/26703158/', '老碗会·陕西手工面食大师（华强南店）', '14', '8.6', '西北菜', 'https://img.meituan.net/600.600/msmerchant/53f713c379545809b05fd6789d4ba89f227376.jpg', '2017-06-02');
INSERT INTO `resource2` VALUES ('156', '福田区', 'https://movie.douban.com/subject/1307914/', '天骄食府', '15', '9', '西北菜', 'http://p1.meituan.net/600.600/deal/fef4e3f6bd2389fcc343beb8c66fe3b498722.jpg', '2017-05-20');
INSERT INTO `resource2` VALUES ('157', '福田区', 'https://movie.douban.com/subject/26808226/', '那达慕草原碳烤羊腿（布吉店）', '16', '7.6', '西北菜', 'https://img.meituan.net/600.600/msmerchant/58725d794adea3eee6cb828ac7bd1eec254148.png', '2005-12-11');
INSERT INTO `resource2` VALUES ('158', '福田区', 'https://movie.douban.com/subject/1978709/', '面掌柜（坪州店）', '17', '8.5', '西北菜', 'http://p1.meituan.net/600.600/deal/1b326296d3e9e70348bb9ef9477be0c4275827.jpg', '2014-10-23');
INSERT INTO `resource2` VALUES ('159', '平山区', 'https://movie.douban.com/subject/26974339/', '西安老王家（南光店）', '18', '8.1', '西北菜', 'http://p1.meituan.net/600.600/deal/__25959560__7157125.jpg', '2017-05-17');
INSERT INTO `resource2` VALUES ('160', '龙岗区', 'https://movie.douban.com/subject/26292682/', '王记腊汁肉夹馍', '19', '5.2', '西北菜', 'http://p1.meituan.net/600.600/deal/d4e696ff1da9f5b0452782e72591983c308418.jpg', '1998-06-05');
INSERT INTO `resource2` VALUES ('161', '龙岗区', 'https://movie.douban.com/subject/27012497/', '君悦酒店-1881中餐厅', '0', '9.5', '京菜', 'http://p0.meituan.net/600.600/msmerchant/2ce1c8e60c32da1df4eb5b3789486c0c2258699.jpg', '2001-06-29');
INSERT INTO `resource2` VALUES ('162', '龙岗区', 'https://movie.douban.com/subject/26658568/', '燕青小馆', '1', '5.7', '京菜', 'http://p0.meituan.net/600.600/deal/bf66293f7b789c6681b66a2b8b7fb47a171807.jpg', '1968-04-02');
INSERT INTO `resource2` VALUES ('163', '平山区', 'https://movie.douban.com/subject/5327217/', '天津卓老二土鸭', '2', '6.3', '京菜', 'http://p1.meituan.net/600.600/mogu/09e37dd3a016327afec6506c87677691229655.jpg', '1986-07-18');
INSERT INTO `resource2` VALUES ('164', '平山区', 'https://movie.douban.com/subject/25964071/', '艺馨东北饺子馆', '3', '7.4', '京菜', 'http://p0.meituan.net/600.600/deal/36da99ea8d6d147a53956441aec0c862127798.jpg', '2013-10-12');
INSERT INTO `resource2` VALUES ('165', '平山区', 'https://movie.douban.com/subject/26362351/', '苏升记大盆骨（白石厦店）', '4', '8.2', '京菜', 'http://p1.meituan.net/600.600/mogu/93da074c3dcb67663b85d3274e853893230462.jpg', '1997-10-24');
INSERT INTO `resource2` VALUES ('166', '南山区', 'https://movie.douban.com/subject/1304073/', '北京菜馆', '5', '8.2', '京菜', 'http://p1.meituan.net/600.600/mogu/b509682e45d30b7a577eb069a8144bc922880.jpg', '2017-04-01');
INSERT INTO `resource2` VALUES ('167', '南山区', 'https://movie.douban.com/subject/26427831/', '贵友京菜馆（东园路店）', '6', '6.3', '京菜', 'http://p0.meituan.net/600.600/deal/__30789336__3254458.jpg', '1990-12-06');
INSERT INTO `resource2` VALUES ('168', '平山区', 'https://movie.douban.com/subject/1292329/', '1949全鸭季（欢乐海岸购物中心店）', '7', '8.7', '京菜', 'https://img.meituan.net/600.600/msmerchant/c498ac4d46174f4c19a5344a6ff773d8706475.jpg', '1982-05-25');
INSERT INTO `resource2` VALUES ('169', '平山区', 'https://movie.douban.com/subject/25855071/', '梅利烤鸭店', '8', '8.2', '京菜', 'http://p0.meituan.net/600.600/mogu/b275a30bda6df2a73eb968fcfc6e5a75103084.jpg', '2017-10-06');
INSERT INTO `resource2` VALUES ('170', '福田区', 'https://movie.douban.com/subject/26683353/', '冯记买旺烤鸭', '9', '7.2', '京菜', 'http://p1.meituan.net/600.600/mogu/14c542033e5eed5cb398e540c15c083584364.jpg', '2003-11-05');
INSERT INTO `resource2` VALUES ('171', '龙华区', 'https://movie.douban.com/subject/4847665/', '古稻林餐厅（新沙店）', '10', '7.9', '京菜', 'http://p1.meituan.net/600.600/mogu/09d856c53b86dc145384880c01275f09249232.jpg', '2016-07-22');
INSERT INTO `resource2` VALUES ('172', '龙岗区', 'https://movie.douban.com/subject/26787124/', '金皇来烤鸭店', '11', '8.4', '京菜', 'http://p1.meituan.net/600.600/deal/c0740bf72567db9008fca050bb1ce865350140.jpg', '2016-12-16');
INSERT INTO `resource2` VALUES ('173', '宝安区', 'https://movie.douban.com/subject/26811831/', '花悦庭（平安金融中心店）', '12', '6.6', '京菜', 'https://img.meituan.net/600.600/msmerchant/aeae154e49598d92e03fa85fdbe69b2b370065.jpg', '2017-02-23');
INSERT INTO `resource2` VALUES ('174', '宝安区', 'https://movie.douban.com/subject/6973376/', '君悦酒店-1881中餐厅', '13', '7.4', '京菜', 'http://p0.meituan.net/600.600/msmerchant/2ce1c8e60c32da1df4eb5b3789486c0c2258699.jpg', '2017-06-02');
INSERT INTO `resource2` VALUES ('175', '福田区', 'https://movie.douban.com/subject/24735062/', '燕青小馆', '14', '7.6', '京菜', 'http://p0.meituan.net/600.600/deal/bf66293f7b789c6681b66a2b8b7fb47a171807.jpg', '2016-08-05');
INSERT INTO `resource2` VALUES ('176', '福田区', 'https://movie.douban.com/subject/11529526/', '天津卓老二土鸭', '15', '8.1', '京菜', 'http://p1.meituan.net/600.600/mogu/09e37dd3a016327afec6506c87677691229655.jpg', '2017-05-12');
INSERT INTO `resource2` VALUES ('177', '福田区', 'https://movie.douban.com/subject/1308820/', '艺馨东北饺子馆', '16', '8.1', '京菜', 'http://p0.meituan.net/600.600/deal/36da99ea8d6d147a53956441aec0c862127798.jpg', '2007-08-03');
INSERT INTO `resource2` VALUES ('178', '平山区', 'https://movie.douban.com/subject/3824672/', '苏升记大盆骨（白石厦店）', '17', '8.7', '京菜', 'http://p1.meituan.net/600.600/mogu/93da074c3dcb67663b85d3274e853893230462.jpg', '2016-10-14');
INSERT INTO `resource2` VALUES ('179', '龙岗区', 'https://movie.douban.com/subject/2018131/', '北京菜馆', '18', '7.6', '京菜', 'http://p1.meituan.net/600.600/mogu/b509682e45d30b7a577eb069a8144bc922880.jpg', '2017-10-06');
INSERT INTO `resource2` VALUES ('180', '龙岗区', 'https://movie.douban.com/subject/6873905/', '贵友京菜馆（东园路店）', '19', '5.4', '京菜', 'http://p0.meituan.net/600.600/deal/__30789336__3254458.jpg', '2003-11-05');
INSERT INTO `resource2` VALUES ('181', '龙岗区', 'https://movie.douban.com/subject/25966085/', '1949全鸭季（欢乐海岸购物中心店）', '0', '7.3', '鲁菜', 'https://img.meituan.net/600.600/msmerchant/c498ac4d46174f4c19a5344a6ff773d8706475.jpg', '2016-07-22');
INSERT INTO `resource2` VALUES ('182', '平山区', 'https://movie.douban.com/subject/25917973/', '梅利烤鸭店', '1', '8.6', '鲁菜', 'http://p0.meituan.net/600.600/mogu/b275a30bda6df2a73eb968fcfc6e5a75103084.jpg', '2016-12-16');
INSERT INTO `resource2` VALUES ('183', '平山区', 'https://movie.douban.com/subject/1293350/', '冯记买旺烤鸭', '2', '9', '鲁菜', 'http://p1.meituan.net/600.600/mogu/14c542033e5eed5cb398e540c15c083584364.jpg', '2017-02-23');
INSERT INTO `resource2` VALUES ('184', '泰安区', 'https://movie.douban.com/subject/26748847/', '古稻林餐厅（新沙店）', '3', '9.8', '鲁菜', 'http://p1.meituan.net/600.600/mogu/09d856c53b86dc145384880c01275f09249232.jpg', '2017-06-02');
INSERT INTO `resource2` VALUES ('185', '泰安区', 'https://movie.douban.com/subject/1760622/', '金皇来烤鸭店', '4', '8.4', '鲁菜', 'http://p1.meituan.net/600.600/deal/c0740bf72567db9008fca050bb1ce865350140.jpg', '2016-08-05');
INSERT INTO `resource2` VALUES ('186', '南山区', 'https://movie.douban.com/subject/26284621/', '花悦庭（平安金融中心店）', '5', '7.6', '鲁菜', 'https://img.meituan.net/600.600/msmerchant/aeae154e49598d92e03fa85fdbe69b2b370065.jpg', '2017-05-12');
INSERT INTO `resource2` VALUES ('187', '宝安区', 'https://movie.douban.com/subject/24297912/', '黄焖鸡米饭店', '6', '8.9', '鲁菜', 'http://p1.meituan.net/600.600/deal/8f1ba64363a8111cb90fa5709cf3f213292243.png', '2007-08-03');
INSERT INTO `resource2` VALUES ('188', '龙华区', 'https://movie.douban.com/subject/26606743/', '京味张烤鸭店（龙岗店）', '7', '6.5', '鲁菜', 'https://img.meituan.net/600.600/msmerchant/b1138ccd6d4f02faa16b0c67b21aaffd41404.jpg', '2016-10-14');
INSERT INTO `resource2` VALUES ('189', '泰安区', 'https://movie.douban.com/subject/26808226/', '宁夏牧羊人（鸿翔花园店）', '8', '7.6', '鲁菜', 'https://img.meituan.net/600.600/msmerchant/be1f67d86f619f96ab1c1d9ce3937b19168414.jpg', '2011-05-20');
INSERT INTO `resource2` VALUES ('190', '罗湖区', 'https://movie.douban.com/subject/26588239/', '北京羲和雅苑烤鸭坊（万象天地店）', '9', '9.2', '鲁菜', 'https://img.meituan.net/600.600/msmerchant/5859c83f2a67dea0689aa9636da4515f8468277.jpg', '2013-02-15');
INSERT INTO `resource2` VALUES ('191', '宝安区', 'https://movie.douban.com/subject/2369845/', '君悦酒店-1881中餐厅', '10', '8.3', '鲁菜', 'http://p0.meituan.net/600.600/msmerchant/2ce1c8e60c32da1df4eb5b3789486c0c2258699.jpg', '2012-12-12');
INSERT INTO `resource2` VALUES ('192', '福田区', 'https://movie.douban.com/subject/1292208/', '君悦酒店-1881中餐厅', '11', '8.9', '鲁菜', 'http://p0.meituan.net/600.600/msmerchant/2ce1c8e60c32da1df4eb5b3789486c0c2258699.jpg', '2017-03-24');
INSERT INTO `resource2` VALUES ('193', '福田区', 'https://movie.douban.com/subject/1292528/', '燕青小馆', '12', '8.5', '鲁菜', 'http://p0.meituan.net/600.600/deal/bf66293f7b789c6681b66a2b8b7fb47a171807.jpg', '2016-09-01');
INSERT INTO `resource2` VALUES ('194', '宝安区', 'https://movie.douban.com/subject/25798448/', '天津卓老二土鸭', '13', '7.8', '鲁菜', 'http://p1.meituan.net/600.600/mogu/09e37dd3a016327afec6506c87677691229655.jpg', '2017-02-17');
INSERT INTO `resource2` VALUES ('195', '宝安区', 'https://movie.douban.com/subject/26984195/', '燕青小馆', '14', '8.5', '鲁菜', 'http://p0.meituan.net/600.600/deal/bf66293f7b789c6681b66a2b8b7fb47a171807.jpg', '2009-06-13');
INSERT INTO `resource2` VALUES ('196', '福田区', 'https://movie.douban.com/subject/3569910/', '艺馨东北饺子馆', '15', '6.1', '鲁菜', 'http://p0.meituan.net/600.600/deal/36da99ea8d6d147a53956441aec0c862127798.jpg', '2005-12-11');
INSERT INTO `resource2` VALUES ('197', '福田区', 'https://movie.douban.com/subject/1299131/', '天津卓老二土鸭', '16', '9.1', '鲁菜', 'http://p1.meituan.net/600.600/mogu/09e37dd3a016327afec6506c87677691229655.jpg', '2002-12-12');
INSERT INTO `resource2` VALUES ('198', '福田区', 'https://movie.douban.com/subject/7065334/', '苏升记大盆骨（白石厦店）', '17', '7.6', '鲁菜', 'http://p1.meituan.net/600.600/mogu/93da074c3dcb67663b85d3274e853893230462.jpg', '2014-09-26');
INSERT INTO `resource2` VALUES ('199', '平山区', 'https://movie.douban.com/subject/20505982/', '艺馨东北饺子馆', '18', '6.9', '鲁菜', 'http://p0.meituan.net/600.600/deal/36da99ea8d6d147a53956441aec0c862127798.jpg', '1972-03-15');
INSERT INTO `resource2` VALUES ('200', '龙岗区', 'https://movie.douban.com/subject/2063528/', '北京菜馆', '19', '8.2', '鲁菜', 'http://p1.meituan.net/600.600/mogu/b509682e45d30b7a577eb069a8144bc922880.jpg', '2006-12-15');
INSERT INTO `resource2` VALUES ('201', '龙岗区', 'https://movie.douban.com/subject/26292682/', '澳葡街风味酒家（天安店）', '0', '5.2', '东南亚菜', 'http://p0.meituan.net/600.600/deal/8d95bf3d3e6e85df3412915d1e46c504317740.jpg', '2011-11-02');
INSERT INTO `resource2` VALUES ('202', '龙岗区', 'https://movie.douban.com/subject/1466007/', 'little papa小印度尼泊尔菜（蛇口店）', '1', '7.5', '东南亚菜', 'http://p0.meituan.net/600.600/mogu/4ad8c5aaabc763418a5f3c7fff91aac467879.jpg', '2017-03-27');
INSERT INTO `resource2` VALUES ('203', '平山区', 'https://movie.douban.com/subject/1304447/', '火车头音乐餐厅', '2', '8.5', '东南亚菜', 'http://p1.meituan.net/600.600/mogu/1984b360a314a836e730420a6bb5afee158385.jpg', '2010-02-13');
INSERT INTO `resource2` VALUES ('204', '平山区', 'https://movie.douban.com/subject/24743711/', '印度咖喱小厨（保利文化广场店）', '3', '7.6', '东南亚菜', 'http://p0.meituan.net/600.600/apiback/8d703616ecde5d60485aa78019bd8ceb72334.jpg', '2014-12-19');
INSERT INTO `resource2` VALUES ('205', '平山区', 'https://movie.douban.com/subject/26022182/', '暹罗泰（侨城店）', '4', '7.6', '东南亚菜', 'http://p0.meituan.net/600.600/mogu/0db8ca3cb4a0500960d81c2a65e5415c55511.jpg', '2014-04-29');
INSERT INTO `resource2` VALUES ('206', '南山区', 'https://movie.douban.com/subject/3804629/', 'Saffron索菲廊印度料理', '5', '7.6', '东南亚菜', 'https://img.meituan.net/600.600/msmerchant/20ae0e43ee2576c3d616b7368164fdd8123505.jpg', '1994-05-18');
INSERT INTO `resource2` VALUES ('207', '南山区', 'https://movie.douban.com/subject/25872311/', '鑫泰泰国料理（欢乐海岸店）', '6', '7.1', '东南亚菜', 'https://img.meituan.net/600.600/msmerchant/4e5a2aee16372a6322d576f10e41c7a9149793.jpg', '2017-01-28');
INSERT INTO `resource2` VALUES ('208', '平山区', 'https://movie.douban.com/subject/1895120/', '越芽庄（东海缤纷店）', '7', '7.5', '东南亚菜', 'https://img.meituan.net/600.600/msmerchant/477c161222cdebd880a5a2b6ba56b277241501.jpg', '2016-10-28');
INSERT INTO `resource2` VALUES ('209', '平山区', 'https://movie.douban.com/subject/3541415/', '泰炙Thai Light泰式火锅', '8', '9.2', '东南亚菜', 'https://img.meituan.net/600.600/msmerchant/e768ff3adf965ebf6539e15d751ac3004466036.jpg', '2012-09-28');
INSERT INTO `resource2` VALUES ('210', '福田区', 'https://movie.douban.com/subject/26000205/', '象屋泰国餐厅（平安金融中心店）', '9', '7.1', '东南亚菜', 'https://img.meituan.net/600.600/msmerchant/10fbcf9815c7ce558800a8e237b1f90f167935.jpg', '2004-03-17');
INSERT INTO `resource2` VALUES ('211', '龙华区', 'https://movie.douban.com/subject/1293181/', '新仙咖喱捞', '10', '8.8', '东南亚菜', 'http://p0.meituan.net/600.600/mogu/77265841413a387bb30ee93df9c3b7dd14389.png', '1992-12-23');
INSERT INTO `resource2` VALUES ('212', '龙岗区', 'https://movie.douban.com/subject/3143676/', 'Bollywood宝莱坞印度餐厅（华强北店）', '11', '7.4', '东南亚菜', 'http://p0.meituan.net/600.600/shopmainpic/149f753f4a789019fa2ae18b336fdf22173070.jpg', '2017-02-16');
INSERT INTO `resource2` VALUES ('213', '宝安区', 'https://movie.douban.com/subject/3011997/', 'vita味塔东南亚菜·酒吧（coco park店）', '12', '7.5', '东南亚菜', 'https://img.meituan.net/600.600/msmerchant/e17ae8d0ebcc9551bb8bdfc11c51f35e363761.jpg', '2016-08-12');
INSERT INTO `resource2` VALUES ('214', '宝安区', 'https://movie.douban.com/subject/4146762/', '创意料理', '13', '7.1', '东南亚菜', 'http://p0.meituan.net/600.600/deal/d1dedbe8268d2f6bbc5ee64cde34c72d226443.jpg', '2016-10-14');
INSERT INTO `resource2` VALUES ('215', '福田区', 'https://movie.douban.com/subject/1300300/', 'route66泰国菜', '14', '7.7', '东南亚菜', 'https://img.meituan.net/600.600/msmerchant/77a0be33461874e75fc68fef6eb4f585381996.jpg', '2017-04-06');
INSERT INTO `resource2` VALUES ('216', '福田区', 'https://movie.douban.com/subject/3075287/', '粉姬-象遇越南粉体验区', '15', '8.3', '东南亚菜', 'http://p0.meituan.net/600.600/wxfood/9e30ffcba52f49633811694a56f9c5ac2988354.jpg', '1995-11-18');
INSERT INTO `resource2` VALUES ('217', '福田区', 'https://movie.douban.com/subject/1305053/', '越小栈', '16', '7.7', '东南亚菜', 'http://p0.meituan.net/600.600/mogu/eb261fba496d357c7c9aa96d8024660f29963.jpg', '2009-04-09');
INSERT INTO `resource2` VALUES ('218', '平山区', 'https://movie.douban.com/subject/1793903/', '澳葡街（华通店）', '17', '7.3', '东南亚菜', 'http://p1.meituan.net/600.600/deal/__28364931__9750206.jpg', '2012-11-02');
INSERT INTO `resource2` VALUES ('219', '龙岗区', 'https://movie.douban.com/subject/21360417/', '原林绿吧', '18', '8.7', '东南亚菜', 'http://p0.meituan.net/600.600/mogu/ccf78105b8aa61d9cf29f86fa4e6ae4f211824.png', '1984-03-11');
INSERT INTO `resource2` VALUES ('220', '龙岗区', 'https://movie.douban.com/subject/25817534/', '澳葡街风味酒家（天安店）', '19', '7.1', '东南亚菜', 'http://p0.meituan.net/600.600/deal/8d95bf3d3e6e85df3412915d1e46c504317740.jpg', '1995-07-15');
INSERT INTO `resource2` VALUES ('221', '龙岗区', 'https://movie.douban.com/subject/1293839/', '福田林素食馆（岁宝百货万象店）', '0', '8.9', '素食', 'http://p1.meituan.net/600.600/deal/__17833660__8605198.jpg', '1988-04-16');
INSERT INTO `resource2` VALUES ('222', '平山区', 'https://movie.douban.com/subject/25738406/', '康态素食', '1', '8.2', '素食', 'http://p1.meituan.net/600.600/deal/4d2cdc58920b9c3be97297630d938be5327460.jpg', '1989-07-29');
INSERT INTO `resource2` VALUES ('223', '平山区', 'https://movie.douban.com/subject/5045678/', '新梅园圆通素食（泰然店）', '2', '6.5', '素食', 'http://p0.meituan.net/600.600/deal/b068577a99cbb043b29d936648c10867330799.jpg', '2016-06-17');
INSERT INTO `resource2` VALUES ('224', '南山区', 'https://movie.douban.com/subject/2222996/', '素禾素食（科技园店）', '3', '8.8', '素食', 'http://p1.meituan.net/600.600/deal/c2320bceafc73ca8e65ef76fe784c5bb64839.jpg', '2016-12-14');
INSERT INTO `resource2` VALUES ('225', '宝安区', 'https://movie.douban.com/subject/1929463/', '桐城小筑素食馆', '4', '9', '素食', 'https://img.meituan.net/600.600/msmerchant/a89e7dac960d5080555ea65d2dfccc69109073.jpg', '2006-07-15');
INSERT INTO `resource2` VALUES ('226', '龙华区', 'https://movie.douban.com/subject/26611076/', '登品素食府', '5', '7.2', '素食', 'http://p1.meituan.net/600.600/poi/ce19fe0458ecd44c1efe1d1320e57afc131072.jpg', '2014-08-22');
INSERT INTO `resource2` VALUES ('227', '泰安区', 'https://movie.douban.com/subject/25929151/', '禅味素食馆', '6', '7.5', '素食', 'http://p0.meituan.net/600.600/poi/bb0ca8de559a0061cdde6c125a963d3077824.jpg', '2013-05-31');
INSERT INTO `resource2` VALUES ('228', '罗湖区', 'https://movie.douban.com/subject/1292402/', '快狗煎饼果子', '7', '8.7', '素食', 'http://p0.meituan.net/600.600/deal/__33551848__6184645.jpg', '2010-06-16');
INSERT INTO `resource2` VALUES ('229', '宝安区', 'https://movie.douban.com/subject/1304073/', '觉缘素食自助餐馆', '8', '8.2', '素食', 'http://p1.meituan.net/600.600/mogu/2ca75b9f5cd4c9d9a33bbcff067165e2239622.jpg', '2013-07-03');
INSERT INTO `resource2` VALUES ('230', '福田区', 'https://movie.douban.com/subject/1292434/', '六和茶馆', '9', '8.9', '素食', 'http://p1.meituan.net/600.600/dpmerchantalbum/c3521f73e628e81fa81bb8504296fb561778138.jpg', '2013-07-20');
INSERT INTO `resource2` VALUES ('231', '福田区', 'https://movie.douban.com/subject/1308817/', '五谷印象里素菜馆（华南城总店）', '10', '8.1', '素食', 'https://img.meituan.net/600.600/msmerchant/7ffd2691017009c8d433c61bf903b1d22486624.jpg', '2016-01-29');
INSERT INTO `resource2` VALUES ('232', '宝安区', 'https://movie.douban.com/subject/3011091/', '妙吉祥素菜馆', '11', '9.2', '素食', 'http://p0.meituan.net/600.600/mogu/02b588e3c1c4b984dd7c307ac82178b4109275.jpg', '2016-04-15');
INSERT INTO `resource2` VALUES ('233', '宝安区', 'https://movie.douban.com/subject/1291549/', '如意斋国际素食体验餐厅', '12', '9.2', '素食', 'http://p0.meituan.net/600.600/ugcpic/2daa81d427c94a8e44ca7b1d0d4c5b69', '2014-07-25');
INSERT INTO `resource2` VALUES ('234', '福田区', 'https://movie.douban.com/subject/1292328/', '静素斋菜', '13', '8.6', '素食', 'http://p0.meituan.net/600.600/mogu/ee0a56b1727b5031e356677d1fd0324279679.jpg', '1982-06-25');
INSERT INTO `resource2` VALUES ('235', '福田区', 'https://movie.douban.com/subject/4319218/', '静颐素食', '14', '8.2', '素食', 'https://img.meituan.net/600.600/msmerchant/9f82819029922c59e5d0441033036fc1226969.jpg', '2016-02-12');
INSERT INTO `resource2` VALUES ('236', '福田区', 'https://movie.douban.com/subject/6722879/', '格琳素席', '15', '8.3', '素食', 'https://img.meituan.net/600.600/msmerchant/fcb45f6ee320a38100a455fd2e28d333117445.jpg', '2017-06-02');
INSERT INTO `resource2` VALUES ('237', '平山区', 'https://movie.douban.com/subject/26677981/', '品茶居素食馆', '16', '5.3', '素食', 'http://p1.meituan.net/600.600/deal/__24894848__5195832.jpg', '2017-05-20');
INSERT INTO `resource2` VALUES ('238', '龙岗区', 'https://movie.douban.com/subject/3742360/', '藏巴拉素食馆', '17', '8.7', '素食', 'https://img.meituan.net/600.600/msmerchant/244f3c0e8749e30e16cf48ac41cd1d0c162380.jpg', '2005-12-11');
INSERT INTO `resource2` VALUES ('239', '龙岗区', 'https://movie.douban.com/subject/26390938/', '祈康膳坊·创意美学素食料理', '18', '5.9', '素食', 'https://img.meituan.net/600.600/msmerchant/80ee26488b7580e580ca727d828f7ec26104114.jpg', '2014-10-23');
INSERT INTO `resource2` VALUES ('240', '龙岗区', 'https://movie.douban.com/subject/1308820/', '十方缘素食府（五和店）', '19', '8.1', '素食', 'http://p0.meituan.net/600.600/deal/337d2d8349b5a6f4144ca265d9622c5374139.jpg', '2017-05-17');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('7', 'admin', '1', 'admin', 'admin', '123', '123');
INSERT INTO `user` VALUES ('8', '123', '2', 'user001', '西南交通大学', '1234567890', null);
INSERT INTO `user` VALUES ('10', '123', '2', 'user002', '西南交通大学', '1234567890', null);
INSERT INTO `user` VALUES ('11', '123', '2', 'user003', '西南交通大学', '1234567890', null);
INSERT INTO `user` VALUES ('12', '123', '2', 'user004', '西南交通大学', '1234567890', null);
INSERT INTO `user` VALUES ('13', '123', '2', 'user005', '西南交通大学', '1234567890', null);
INSERT INTO `user` VALUES ('14', '123', '2', 'user006', '西南交通大学', '1234567890', null);
INSERT INTO `user` VALUES ('15', '123', '2', 'user007', '西南交通大学', '1234567890', null);
INSERT INTO `user` VALUES ('16', '123', '2', 'user008', '西南交通大学', '1234567890', null);
INSERT INTO `user` VALUES ('17', '123', '2', 'user009', '西南交通大学', '1234567890', null);
INSERT INTO `user` VALUES ('18', '123', '2', 'user000', '西南交通大学', '1234567890', null);

-- ----------------------------
-- Table structure for `user_flag`
-- ----------------------------
DROP TABLE IF EXISTS `user_flag`;
CREATE TABLE `user_flag` (
  `userID` int(11) DEFAULT NULL,
  `movieType` varchar(255) DEFAULT NULL,
  `movieAdd` varchar(255) DEFAULT NULL,
  `movieYear` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_flag
-- ----------------------------

-- ----------------------------
-- Table structure for `user_score`
-- ----------------------------
DROP TABLE IF EXISTS `user_score`;
CREATE TABLE `user_score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resource_id` int(11) DEFAULT NULL,
  `score` float DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_score
-- ----------------------------
INSERT INTO `user_score` VALUES ('1', '1', '5', '2017-04-17 10:29:14', '6');
INSERT INTO `user_score` VALUES ('2', '13', '6', '2017-05-05 15:04:50', '6');
INSERT INTO `user_score` VALUES ('3', '20', '2', '2017-05-05 15:05:55', '6');
INSERT INTO `user_score` VALUES ('4', '48', '6', '2017-05-07 09:16:30', '15');
INSERT INTO `user_score` VALUES ('5', '30', '5', '2017-05-18 09:44:09', '15');
INSERT INTO `user_score` VALUES ('6', '757', '3', '2017-05-29 22:29:07', '15');
INSERT INTO `user_score` VALUES ('7', '454', '2', '2017-05-29 22:29:17', '15');
INSERT INTO `user_score` VALUES ('8', '177', '2', '2017-05-29 22:29:25', '15');
INSERT INTO `user_score` VALUES ('9', '707', '5', '2017-05-29 22:29:38', '15');
INSERT INTO `user_score` VALUES ('10', '687', '10', '2017-05-29 22:29:47', '15');
INSERT INTO `user_score` VALUES ('11', '121', '8', '2017-05-29 22:29:52', '15');
INSERT INTO `user_score` VALUES ('12', '341', '8', '2017-05-29 22:31:47', '15');
INSERT INTO `user_score` VALUES ('13', '33', '10', '2017-05-31 09:17:20', '8');
INSERT INTO `user_score` VALUES ('14', '367', '9', '2017-05-31 09:17:32', '8');
INSERT INTO `user_score` VALUES ('15', '261', '8', '2017-05-31 09:17:40', '8');
INSERT INTO `user_score` VALUES ('16', '95', '8', '2017-05-31 09:17:49', '8');
INSERT INTO `user_score` VALUES ('17', '184', '2', '2017-05-31 09:17:57', '8');
INSERT INTO `user_score` VALUES ('18', '332', '5', '2017-05-31 09:18:04', '8');
INSERT INTO `user_score` VALUES ('19', '287', '5', '2017-05-31 09:18:13', '8');
INSERT INTO `user_score` VALUES ('20', '139', '2', '2017-05-31 09:18:20', '8');
INSERT INTO `user_score` VALUES ('21', '280', '7', '2017-05-31 09:18:30', '8');
INSERT INTO `user_score` VALUES ('22', '17', '6', '2017-05-31 09:18:38', '8');
INSERT INTO `user_score` VALUES ('23', '161', '8', '2017-05-31 09:18:47', '8');
INSERT INTO `user_score` VALUES ('24', '298', '9', '2017-05-31 09:19:00', '8');
INSERT INTO `user_score` VALUES ('25', '387', '10', '2017-05-31 09:19:09', '8');
INSERT INTO `user_score` VALUES ('26', '33', '10', '2017-05-31 09:23:52', '10');
INSERT INTO `user_score` VALUES ('27', '58', '9', '2017-05-31 09:24:14', '10');
INSERT INTO `user_score` VALUES ('28', '332', '10', '2017-05-31 09:24:20', '10');
INSERT INTO `user_score` VALUES ('29', '392', '10', '2017-05-31 09:24:35', '10');
INSERT INTO `user_score` VALUES ('30', '393', '9', '2017-05-31 09:24:42', '10');
INSERT INTO `user_score` VALUES ('31', '245', '10', '2017-05-31 09:24:48', '10');
INSERT INTO `user_score` VALUES ('32', '289', '10', '2017-05-31 09:24:55', '10');
INSERT INTO `user_score` VALUES ('33', '387', '10', '2017-05-31 09:25:07', '10');
INSERT INTO `user_score` VALUES ('34', '34', '9', '2017-05-31 09:25:23', '10');
INSERT INTO `user_score` VALUES ('35', '38', '8', '2017-05-31 09:25:33', '10');
INSERT INTO `user_score` VALUES ('36', '274', '9', '2017-05-31 09:25:46', '10');
INSERT INTO `user_score` VALUES ('37', '388', '9', '2017-05-31 09:25:53', '10');
INSERT INTO `user_score` VALUES ('38', '266', '10', '2017-05-31 09:25:59', '10');
INSERT INTO `user_score` VALUES ('39', '264', '9', '2017-05-31 09:26:07', '10');
INSERT INTO `user_score` VALUES ('40', '278', '10', '2017-05-31 09:26:12', '10');
INSERT INTO `user_score` VALUES ('41', '132', '8', '2017-05-31 09:26:18', '10');
INSERT INTO `user_score` VALUES ('42', '392', '10', '2017-05-31 09:27:25', '11');
INSERT INTO `user_score` VALUES ('43', '387', '10', '2017-05-31 09:27:33', '11');
INSERT INTO `user_score` VALUES ('44', '332', '10', '2017-05-31 09:27:43', '11');
INSERT INTO `user_score` VALUES ('45', '289', '10', '2017-05-31 09:27:53', '11');
INSERT INTO `user_score` VALUES ('46', '266', '10', '2017-05-31 09:28:06', '11');
INSERT INTO `user_score` VALUES ('47', '264', '9', '2017-05-31 09:28:16', '11');
INSERT INTO `user_score` VALUES ('48', '245', '10', '2017-05-31 09:28:30', '11');
INSERT INTO `user_score` VALUES ('49', '34', '9', '2017-05-31 09:28:55', '11');
INSERT INTO `user_score` VALUES ('50', '387', '10', '2017-05-31 09:29:49', '12');
INSERT INTO `user_score` VALUES ('51', '332', '10', '2017-05-31 09:30:04', '12');
INSERT INTO `user_score` VALUES ('52', '33', '10', '2017-05-31 09:30:13', '12');
INSERT INTO `user_score` VALUES ('53', '367', '9', '2017-05-31 09:30:24', '12');
INSERT INTO `user_score` VALUES ('54', '298', '9', '2017-05-31 09:30:35', '12');
INSERT INTO `user_score` VALUES ('55', '261', '8', '2017-05-31 09:30:48', '12');
INSERT INTO `user_score` VALUES ('56', '17', '6', '2017-05-31 09:30:58', '12');
INSERT INTO `user_score` VALUES ('57', '287', '5', '2017-05-31 09:31:10', '12');
INSERT INTO `user_score` VALUES ('58', '184', '2', '2017-05-31 09:31:20', '12');
INSERT INTO `user_score` VALUES ('59', '392', '10', '2017-05-31 09:32:43', '13');
INSERT INTO `user_score` VALUES ('60', '387', '10', '2017-05-31 09:32:54', '13');
INSERT INTO `user_score` VALUES ('61', '332', '10', '2017-05-31 09:33:01', '13');
INSERT INTO `user_score` VALUES ('62', '289', '10', '2017-05-31 09:33:11', '13');
INSERT INTO `user_score` VALUES ('63', '387', '10', '2017-05-31 09:34:33', '14');
INSERT INTO `user_score` VALUES ('64', '332', '10', '2017-05-31 09:34:43', '14');
INSERT INTO `user_score` VALUES ('65', '33', '10', '2017-05-31 09:34:57', '14');
INSERT INTO `user_score` VALUES ('66', '367', '9', '2017-05-31 09:35:12', '14');
INSERT INTO `user_score` VALUES ('67', '95', '8', '2017-05-31 09:35:32', '14');
INSERT INTO `user_score` VALUES ('68', '392', '10', '2017-05-31 09:38:56', '15');
INSERT INTO `user_score` VALUES ('69', '387', '10', '2017-05-31 09:39:07', '15');
INSERT INTO `user_score` VALUES ('70', '332', '10', '2017-05-31 09:39:20', '15');
INSERT INTO `user_score` VALUES ('71', '245', '10', '2017-05-31 09:39:39', '15');
INSERT INTO `user_score` VALUES ('72', '387', '10', '2017-05-31 09:40:36', '16');
INSERT INTO `user_score` VALUES ('73', '332', '10', '2017-05-31 09:40:47', '16');
INSERT INTO `user_score` VALUES ('74', '289', '10', '2017-05-31 09:41:15', '16');
INSERT INTO `user_score` VALUES ('75', '278', '10', '2017-05-31 09:41:21', '16');
INSERT INTO `user_score` VALUES ('76', '266', '10', '2017-05-31 09:41:27', '16');
INSERT INTO `user_score` VALUES ('77', '245', '10', '2017-05-31 09:41:33', '16');
INSERT INTO `user_score` VALUES ('78', '95', '10', '2017-05-31 09:41:49', '16');
INSERT INTO `user_score` VALUES ('79', '387', '10', '2017-05-31 09:42:27', '17');
INSERT INTO `user_score` VALUES ('80', '332', '10', '2017-05-31 09:42:37', '17');
INSERT INTO `user_score` VALUES ('81', '289', '10', '2017-05-31 09:42:58', '17');
INSERT INTO `user_score` VALUES ('82', '387', '10', '2017-05-31 09:44:53', '18');
INSERT INTO `user_score` VALUES ('83', '332', '10', '2017-05-31 09:45:03', '18');
INSERT INTO `user_score` VALUES ('84', '289', '10', '2017-05-31 09:45:16', '18');
INSERT INTO `user_score` VALUES ('85', '392', '10', '2017-05-31 09:45:47', '18');
INSERT INTO `user_score` VALUES ('86', '33', '10', '2017-05-31 09:46:00', '18');
INSERT INTO `user_score` VALUES ('87', '33', '10', '2017-05-31 10:18:46', '19');
INSERT INTO `user_score` VALUES ('88', '245', '7', '2017-05-31 10:19:30', '19');
INSERT INTO `user_score` VALUES ('89', '332', '8', '2017-05-31 10:19:35', '19');
INSERT INTO `user_score` VALUES ('90', '241', '8', '2017-05-31 10:19:41', '19');
INSERT INTO `user_score` VALUES ('91', '289', '9', '2017-05-31 10:26:26', '19');
INSERT INTO `user_score` VALUES ('92', '278', '8', '2017-05-31 10:32:55', '19');
INSERT INTO `user_score` VALUES ('93', '34', '8', '2017-05-31 10:51:15', '20');
INSERT INTO `user_score` VALUES ('94', '245', '9', '2017-05-31 10:51:21', '20');
INSERT INTO `user_score` VALUES ('95', '387', '8', '2017-06-02 19:12:03', '19');
INSERT INTO `user_score` VALUES ('96', '387', '5', '2017-06-02 19:17:36', '20');
INSERT INTO `user_score` VALUES ('97', '266', '6', '2017-06-02 19:17:40', '20');
INSERT INTO `user_score` VALUES ('98', '392', '3', '2018-06-24 17:02:33', '8');
INSERT INTO `user_score` VALUES ('99', '245', '2', '2018-06-24 17:02:52', '8');
INSERT INTO `user_score` VALUES ('100', '362', '0', '2018-06-24 17:05:56', '8');
INSERT INTO `user_score` VALUES ('101', '47', '0', '2018-06-26 18:47:56', '8');
INSERT INTO `user_score` VALUES ('102', '43', '10', '2018-06-26 18:48:13', '8');
INSERT INTO `user_score` VALUES ('103', '123', '10', '2018-06-26 20:14:17', '8');

-- ----------------------------
-- Table structure for `user_similarity`
-- ----------------------------
DROP TABLE IF EXISTS `user_similarity`;
CREATE TABLE `user_similarity` (
  `similaryID` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `neiborID` int(11) DEFAULT NULL,
  `similar` float DEFAULT NULL,
  PRIMARY KEY (`similaryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_similarity
-- ----------------------------
