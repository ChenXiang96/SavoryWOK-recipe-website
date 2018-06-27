/*
Navicat MySQL Data Transfer

Source Server         : localhost1_3306
Source Server Version : 50615
Source Host           : localhost:3306
Source Database       : chuse_db

Target Server Type    : MYSQL
Target Server Version : 50615
File Encoding         : 65001

Date: 2018-06-26 16:42:26
*/

SET FOREIGN_KEY_CHECKS=0;

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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

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
INSERT INTO `subject` VALUES ('虎牙', 'images/menu.jpg', '2018-06-12 15:58:17', '牙齿不好就别吃这5种食物！', '10', '2', '牙齿不好就别吃这5种食物！', '1');
INSERT INTO `subject` VALUES ('呵呵', 'images/h18.jpg', '2018-06-16 10:26:07', '呵呵', '11', '2', '呵呵', '1');
INSERT INTO `subject` VALUES ('青椒这样做香味更独特', 'images/h20.jpg', '2018-06-26 15:25:12', '青椒的不同做法', '12', '2', '青椒有股独特的香气，让喜欢它的人欲罢不能。青椒的吃法也很多，可以炒着、炸着甚至做成主食。众多青椒吃法已经整理好啦，青椒控快快交出你们的尖叫~', null);
INSERT INTO `subject` VALUES ('豆腐的家常美味做法', 'images/h21.jpg', '2018-06-26 15:37:48', '豆腐的做法', '13', '2', '豆腐也疯狂', null);
INSERT INTO `subject` VALUES ('好面不怕香过头', 'images/h22.jpg', '2018-06-26 15:38:53', '面条的做法', '14', '2', '香菇葱油面', null);
INSERT INTO `subject` VALUES ('一碗凉粉拯救炎热夏天', 'images/h23.jpg', '2018-06-26 15:42:55', '无肉也欢', '15', '2', '北方小吃', null);
INSERT INTO `subject` VALUES ('美味虾做法大全', 'images/h24.jpg', '2018-06-26 16:03:54', '爱虾的人看过来', '16', '2', '椒盐虾、香辣虾、油焖大虾…各种虾的做法都在这里，爱吃虾的人赶紧拿走咯！', null);
INSERT INTO `subject` VALUES ('夏季养生，饮食宜清淡', 'images/h25.jpg', '2018-06-26 16:08:17', '肉丸丝瓜汤也是不错的选择', '17', '2', '夏至是阳气最旺的时节，养生要顺应夏季阳盛于外的特点，注意保护阳气。', null);
INSERT INTO `subject` VALUES ('营养早餐', 'images/h26.jpg', '2018-06-26 16:10:43', '营养早餐不能少', '18', '2', '几分钟就可以搞定的营养早餐，用最简单的家常配料做出美味高级感！', null);
INSERT INTO `subject` VALUES ('观战世界杯必备夜宵', 'images/h27.jpg', '2018-06-26 16:12:44', '世界杯夜宵来袭', '19', '2', '世界杯已经开战，看球的正确方式都在这里！话说你们都准备夜宵了吗？', null);
INSERT INTO `subject` VALUES ('无言厚重，感恩父爱！', 'images/h28.jpg', '2018-06-26 16:14:39', '老爸的下酒菜', '20', '2', '父爱如山，深沉而含蓄。父亲节马上到了，为可爱的他准备一份小惊喜吧！', null);
INSERT INTO `subject` VALUES ('凉拌荤菜', 'images/h29.jpg', '2018-06-26 18:14:39', '玉脂琼浆般的酸辣皮冻', '21', '1', '夏天凉拌菜是餐桌上的主角，但凉拌菜不止是青菜，各种荤菜凉拌也是很不错的哦！', null);
INSERT INTO `subject` VALUES ('家常小炒', 'images/h30.jpg', '2018-06-26 20:14:39', '富贵荣华', '22', '1', '一盘简简单单的家常小炒，就可以炒出让米饭一扫而光的味道哦～', null);
INSERT INTO `subject` VALUES ('我为土豆狂', 'images/h31.jpg', '2018-06-26 16:23:29', '土豆也是有价值的', '23', '1', '每一个爱吃土豆的孩子都是胖天使，这里有图有做法，欢迎学习和分享哦～', null);
INSERT INTO `subject` VALUES ('日常快手菜', 'images/h32.jpg', '2018-06-26 16:25:42', '白芍菜心', '24', '1', '10分钟搞定超美味快手菜，你一定要知道哦，想学的赶紧马克起来！', null);
