/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50730
 Source Host           : localhost:3306
 Source Schema         : ledao

 Target Server Type    : MySQL
 Target Server Version : 50730
 File Encoding         : 65001

 Date: 21/06/2020 04:15:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for abouts
-- ----------------------------
DROP TABLE IF EXISTS `abouts`;
CREATE TABLE `abouts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) DEFAULT NULL,
  `url` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `adminId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `adminId` (`adminId`) USING BTREE,
  CONSTRAINT `abouts_ibfk_1` FOREIGN KEY (`adminId`) REFERENCES `admins` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of abouts
-- ----------------------------
BEGIN;
INSERT INTO `abouts` VALUES (2, '大厅', 'http://localhost:3000/uploadImg/upload_b0d206e1be7212655fd7ef9baa7b834d.PNG', '2020-03-25 14:53:26', '2020-03-25 14:53:26', 1);
INSERT INTO `abouts` VALUES (4, '验车', 'http://localhost:3000/uploadImg/upload_a803b051e593042097484791e3efcf99.PNG', '2020-03-25 14:54:22', '2020-03-25 14:54:22', 1);
INSERT INTO `abouts` VALUES (5, '信用', 'http://localhost:3000/uploadImg/upload_f1ad3efc9ffb869c33d99cb70b0c81d0.PNG', '2020-03-25 14:54:42', '2020-03-25 14:54:42', 1);
COMMIT;

-- ----------------------------
-- Table structure for admins
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin` varchar(20) NOT NULL,
  `password` varchar(80) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `admin` (`admin`) USING BTREE,
  UNIQUE KEY `admin_2` (`admin`) USING BTREE,
  UNIQUE KEY `admin_3` (`admin`) USING BTREE,
  UNIQUE KEY `admin_4` (`admin`) USING BTREE,
  UNIQUE KEY `admin_5` (`admin`) USING BTREE,
  UNIQUE KEY `admin_6` (`admin`) USING BTREE,
  UNIQUE KEY `admin_7` (`admin`) USING BTREE,
  UNIQUE KEY `admin_8` (`admin`) USING BTREE,
  UNIQUE KEY `admin_9` (`admin`) USING BTREE,
  UNIQUE KEY `admin_10` (`admin`) USING BTREE,
  UNIQUE KEY `admin_11` (`admin`) USING BTREE,
  UNIQUE KEY `admin_12` (`admin`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admins
-- ----------------------------
BEGIN;
INSERT INTO `admins` VALUES (1, 'admin', '666666', '2019-12-26 17:40:32', '2019-12-26 17:40:35');
COMMIT;

-- ----------------------------
-- Table structure for banners
-- ----------------------------
DROP TABLE IF EXISTS `banners`;
CREATE TABLE `banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) DEFAULT NULL,
  `url` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `adminId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `adminId` (`adminId`) USING BTREE,
  CONSTRAINT `banners_ibfk_1` FOREIGN KEY (`adminId`) REFERENCES `admins` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of banners
-- ----------------------------
BEGIN;
INSERT INTO `banners` VALUES (1, 'lunbotu1', 'http://localhost:3000/uploadImg/upload_31ec75407b8b5661d1077a79a5b40e9e.png', '2019-12-26 17:47:49', '2019-12-26 17:47:49', 1);
INSERT INTO `banners` VALUES (2, 'lunbo2', 'http://localhost:3000/uploadImg/upload_c0c0ebc8f80257d3d4ef9fa9596d6056.jpg', '2020-03-24 11:58:59', '2020-03-24 11:58:59', 1);
COMMIT;

-- ----------------------------
-- Table structure for baseinfos
-- ----------------------------
DROP TABLE IF EXISTS `baseinfos`;
CREATE TABLE `baseinfos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `boss` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `info` varchar(500) DEFAULT NULL,
  `qrCode` text,
  `weChat` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `adminId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `adminId` (`adminId`) USING BTREE,
  CONSTRAINT `baseinfos_ibfk_1` FOREIGN KEY (`adminId`) REFERENCES `admins` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of baseinfos
-- ----------------------------
BEGIN;
INSERT INTO `baseinfos` VALUES (1, '乐道车务公司', '王经理', '1016094238@qq.com', '17852555556', '  乐道汽车车务公司，诚信，专业，低价，快捷，致力于为广大车主提供各种车辆手续的服务，主营为人们办理车辆、驾驶证审查，交通缴费等车管业务，包括交通违章缴费、车辆上牌、年审、过户、迁入、迁出等业务。我们公司本着 “ 客户至上”的服务理念，不断完善各项服务， 提升核心竞争力。\n\n  公司愿景：致力于汽车服务市场交易和服务的安全化、标准化、智能化。\n年审须知\n所需资料：\n行驶证原件，有效期内交强险保单、车船税、车要到现场\n注意事项：\n1、车辆无违章，无未处理的交通事故，车辆状态正常\n2、外观干净整洁各种灯具、仪表齐全有效\n3、车辆无擅自加装改装变更，车身有无明显凹陷，掉漆\n4、车牌固封完好，轮胎花纹一致\n5、车辆性能良好，符合机动车运行安全技术条件\n六年免检\n所需资料：\n行驶证原件、有效期内交强险保单、车船税，公司车需要营业执照复印件以及委托书加盖公章\n注意事项：\n1、车辆无违章，无未处理的交通事故，车辆状态正常\n2、限2011年10月购买的车辆（含10月）\n3、限7座以下5座以内（含5座）的非营运蓝牌小车\n4、只能提前三个月（90天）办理', 'http://localhost:3000/uploadImg/upload_9f3c0cc087f0ac3409d4501d15217fb3.jpg', 'ld123456', '山东省青岛市李沧区', '2020-03-24 10:40:48', '2020-01-05 13:47:04', 1);
COMMIT;

-- ----------------------------
-- Table structure for centers
-- ----------------------------
DROP TABLE IF EXISTS `centers`;
CREATE TABLE `centers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) DEFAULT NULL,
  `url` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `adminId` int(11) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `adminId` (`adminId`) USING BTREE,
  CONSTRAINT `centers_ibfk_1` FOREIGN KEY (`adminId`) REFERENCES `admins` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of centers
-- ----------------------------
BEGIN;
INSERT INTO `centers` VALUES (8, '抵押登记', 'http://localhost:3000/uploadImg/upload_277f70ca159c9e4b71a0a3c506e969ad.PNG', '2020-03-25 14:30:04', '2020-03-25 14:30:04', 1, NULL);
INSERT INTO `centers` VALUES (13, '新车上牌', 'http://localhost:3000/uploadImg/upload_462c7e1cf7c5d30d293b42f1e3397854.png', '2020-06-20 12:35:07', '2020-06-20 12:35:07', 1, '<p>新车上牌所需条件<br/></p><ol><li>1、车辆无交通违章违法和交通事故未处理</li><li>2、车辆无报废，查封、也未有抵押登录和质押备案</li><li>3、机动车要符合转入当地环保标准</li><li>4、车辆在审验周期之类的</li></ol><p></p><p>新车上牌所需材料<br/></p><ol><li>1、买方身份证明原件</li><li>2、二手车交易市场发票</li><li>3、车辆登记证书原件</li><li>4、机动车行驶证</li></ol><p></p>');
INSERT INTO `centers` VALUES (14, '汽车年审', 'http://localhost:3000/uploadImg/upload_9a72a975e5d6204486e646fdf2843391.jpg', '2020-01-05 13:42:51', '2020-01-05 13:42:51', 1, '<p>年审须知</p><p>所需资料：</p><p>行驶证原件，有效期内交强险保单、车船税、车要到现场</p><p>注意事项：</p><p>1、车辆无违章，无未处理的交通事故，车辆状态正常</p><p>2、外观干净整洁各种灯具、仪表齐全有效</p><p>3、车辆无擅自加装改装变更，车身有无明显凹陷，掉漆</p><p>4、车牌固封完好，轮胎花纹一致</p><p>5、车辆性能良好，符合机动车运行安全技术条件</p><p></p>');
INSERT INTO `centers` VALUES (15, '六年免检', 'http://localhost:3000/uploadImg/upload_e9b3247996ee9046b734cdbcb9fdc7f0.jpg', '2020-01-05 13:46:15', '2020-01-05 13:46:15', 1, '<p>六年免检</p><p>所需资料：</p><p>行驶证原件、有效期内交强险保单、车船税，公司车需要营业执照复印件以及委托书加盖公章</p><p>注意事项：</p><p>1、车辆无违章，无未处理的交通事故，车辆状态正常</p><p>2、限2011年10月购买的车辆（含10月）</p><p>3、限7座以下5座以内（含5座）的非营运蓝牌小车</p><p>4、只能提前三个月（90天）办理</p>');
INSERT INTO `centers` VALUES (17, '违章代办', 'http://localhost:3000/uploadImg/upload_d3a1fc088e7be6e69dd62e50b111998b.jpg', '2020-01-05 14:08:28', '2020-01-05 14:08:28', 1, '<p>可以为您提供专业的服务，专业的团队能提供更全面的违章咨询，在错综复杂的情况下帮助客户做出选择。</p><p>自成立以来，已帮助数千名会员进行了违章咨询及其它疑难杂症咨询，并提供专属方案妥善帮他们解决了问题。MJS拥有专业的律师团队以及车务处理团队，精通相关法规，了解相关流程与渠道，几乎没有解决不了的问题，前来咨询的客户都获得了满意的方案，最终解决了问题。  </p><p>不盲目提供解决方案，所有交通事故，违章事件都由专业律师、事故处理团队协助，只要您一个电话，定损、责任理清、违章咨询、维修都不用您操心。</p>');
INSERT INTO `centers` VALUES (18, '更换驾驶证', 'http://localhost:3000/uploadImg/upload_eb48ef716c69bcf9c85b769efd1432d1.jpg', '2020-01-05 16:02:42', '2020-01-05 16:02:42', 1, '<p>提前准备材料</p><p>① 驾驶人身份证明原件(属代办的,同时审核代办人的身份证明原件)</p><p>②  所属地区内已开设一站式体检的县级医疗机构出具的《身体条件证明》原件（《身体条件证明》需有驾驶员及医生亲笔签名，医院盖章，后附有医院收据）；</p><p>③ 照相馆出具的照相回执和彩色白底小一寸相片三张；驾驶证原件</p><p>④ 《机动车驾驶证申请表》原件。</p><p>注意事项</p><p>①请您如实填写相关信息，对所提供办事资料的真实性、有效性负责。</p><p>具体流程窗口：</p><p>驾驶人照相—&gt;业务申请—&gt;窗口提交资料—&gt;审核资料—&gt;缴费—&gt;领证</p>');
COMMIT;

-- ----------------------------
-- Table structure for egs
-- ----------------------------
DROP TABLE IF EXISTS `egs`;
CREATE TABLE `egs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) DEFAULT NULL,
  `url` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `adminId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `adminId` (`adminId`) USING BTREE,
  CONSTRAINT `egs_ibfk_1` FOREIGN KEY (`adminId`) REFERENCES `admins` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of egs
-- ----------------------------
BEGIN;
INSERT INTO `egs` VALUES (1, '出租车牌三年', 'http://localhost:3000/uploadImg/upload_c8940a656908e2705aaa2aac867f930c.jpg', '2020-03-25 17:34:13', '2020-03-25 17:34:13', 1);
INSERT INTO `egs` VALUES (2, '代办机动车转移登记', 'http://localhost:3000/uploadImg/upload_dbf73dafcab0197d0532051a21d0998c.jpg', '2020-03-25 17:38:53', '2020-03-25 17:38:53', 1);
COMMIT;

-- ----------------------------
-- Table structure for newenergies
-- ----------------------------
DROP TABLE IF EXISTS `newenergies`;
CREATE TABLE `newenergies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) DEFAULT NULL,
  `content` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `adminId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `adminId` (`adminId`) USING BTREE,
  CONSTRAINT `newenergies_ibfk_1` FOREIGN KEY (`adminId`) REFERENCES `admins` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of newenergies
-- ----------------------------
BEGIN;
INSERT INTO `newenergies` VALUES (1, '新能源指标延期', '<p></p><div class=\"media-wrap image-wrap\"><img src=\"http://localhost:3000/uploadImg/upload_a8d92d50d2322f706ae38a04f0e17f12.png\"/></div><p><span style=\"font-size:20px\">新能源汽车领域在当今的汽车市场还是十分火爆的，随之衍生的新能源指标也出台，但是有的消费者想对新能源指标进行延期，<span style=\"color:#333333\"><span style=\"background-color:#ffffff\">目前指标延期的方法是通过“买卖车过户”模式：即朋友或代理公司把电动汽车过户给你，再过户出去，在指标过期前，通过真实的车辆买卖把指标实际用过一次，自车辆过户出去之日起6个月内登录小客车指标调控管理信息系统，点击更新指标，填报申请，做指标更新。</span></span></span></p>', '2020-03-23 18:14:24', '2020-01-05 13:54:25', 1);
COMMIT;

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) DEFAULT NULL,
  `content` text,
  `readCount` int(11) NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `adminId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `adminId` (`adminId`) USING BTREE,
  CONSTRAINT `news_ibfk_1` FOREIGN KEY (`adminId`) REFERENCES `admins` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of news
-- ----------------------------
BEGIN;
INSERT INTO `news` VALUES (2, '汽车以旧换新政 补贴时间延长7个月', '<p style=\"text-align:left;text-indent:2em;\">据悉，财政部、商务部、环境保护部，将联合下发通知，对延长政策实施等工作作出具体部署。此次是在该政策原有一年基础上，延长了7个月。而此前上海和广州两地此前已表示，通过地方政府补贴的形式，将汽车以旧换新政策分别延期到今年12月31日和10月31日。</p><p style=\"text-align:left;text-indent:2em;\"><br/> </p><p style=\"text-align:left;text-indent:2em;\">　　商务部、财政部等10部委2009年6月份联合推出了汽车以旧换新政策，提前报废旧车并购买新车的人，可享受3000~6000元不等的补贴。2009年12月31日，汽车以旧换新补贴标准上调，报废1.35升及以上排量轿车，每辆补贴人民币18000元；1升(不含)至1.35升(不含)每辆补贴10000元；1升及以下仍为每辆6000元。已按旧标准领取补贴的车主，可按照新标准补领差额。</p><p style=\"text-align:left;text-indent:2em;\"><br/> </p><p style=\"text-align:left;text-indent:2em;\">　　该补贴标准不仅使原来6000元/辆的标准最高涨了两倍，也打破了此前“一刀切”的补贴方式，将轿车按照排量进行了分级。将符合条件的汽车交售给依法设立的指定报废汽车回收拆解企业，并换购新车的车主，将可获得5000元至18000元的补贴，顺德汽车以旧换新服务窗口设在顺德金属回收有限公司。</p>', 1, '2020-03-24 14:14:59', '2020-03-24 14:16:18', 1);
INSERT INTO `news` VALUES (3, '换领有效期为10年的驾驶证', '<p>因《中华人民共和国道路交通安全法实施条例》的开始时间是2004年的5月1日，所以我们计算满分周期是以驾驶证初次领证日期对应的月、日开始的。对驾驶证初次领证日期是2004年5月1号以后的这部分学员，到今年5月1日以后，驾驶证就满6年了，在这6年之内，每年都没有满分的情况下，在换证的时候就可以换发10年有效期的驾驶证。</p><p>对于初次领证日期在04年5月1日之前的驾驶证，它的计算周期也要从04年5月1日开始计算。这里所说的记分周期必须是一个整6年的周期，也就是说首先驾驶证必须是在2004年5月1日以后换发的，并且驾驶证的初次领证日期对应的月、日也必须是在5月1日以后，这种情况下就可以换10年的驾驶证。</p><p></p><p></p>', 0, '2020-03-24 15:10:08', '2020-03-24 15:10:08', 1);
INSERT INTO `news` VALUES (5, '机动车违章该如何处理？去哪处理？', '<p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerID=\"undefined\" __hash=\"undefined\" __altered=\"false\">随着国人生活水平的不断提高，购买私家车的人群越来越多，而伴随的汽车违章的也越来越多。尤其是节假日期间，相信很多人都利用节假日和家人朋友自驾游去了吧！那么，你有没有一不小心在开车时违章了呢？如果违章应该去哪里处理，怎么解决呢？今天小编就和大家谈谈车辆违章的处理办法。<br/>首先先对车辆违规的两种情况做一个介绍<br/>1.当场开了单<br/> 车辆违章如果被交警当场开处罚决定书，就要带着身份证、驾驶证以及车辆行驶证和处罚单，前往当地的交通支队或大队处理违章。这种情况必须在违章所在地处理违章，回原籍是无法处理的，大家切记。另外需要在15个工作日内完成，否则会被罚滞纳金，从第十六个工作日开始，每日3%递增，直到翻倍。</p><p>2.电子眼拍下的罚单<br/> 如果是被电子眼拍下违章行为，没有被当场贴罚单的话，在交管局网站查询到违章记录后，如果是一般简易程序范畴，可以在异地处理；否则，就只能在违章当地的交管部门进行违章处理。</p><p>车辆违章几种处理方法：<br/>1、亲自上门交钱<br/> 因为各地的处罚方式不同，亲去之前最好携带驾驶证和行驶证的原件或复印件，到违章地根据车管部门的相关指示办理。这种处理方法是目前最“原始”的处理办法，费事费时费力。</p><p><span style=\"color:#666666\"><span style=\"font-size:13px\"><span style=\"background-color:#ffffff\">2、通过朋友代办</span></span></span></p><p><span style=\"color:#666666\"><span style=\"font-size:13px\"><span style=\"background-color:#ffffff\"> 如果违章当地有朋友的话，大家也可以拜托朋友帮忙处理。记住把把违章通知单、驾驶证、行驶证、身份证等证件的原件或复印件寄给你的朋友，这样可以节省不必要的往返时间。值得一提的是，有部分省市交管部门是不接受他人代办的，仍需驾驶员本人办理。所以，一定要先打听清楚再找朋友，不然会白跑一趟。</span></span></span></p><p><span style=\"color:#666666\"><span style=\"font-size:13px\"><span style=\"background-color:#ffffff\">3、网上车管所办理</span></span></span></p><p><span style=\"color:#666666\"><span style=\"font-size:13px\"><span style=\"background-color:#ffffff\"> 如果车主想在网上缴交罚款，需先去交警部门进行实名注册，开通了绑定车辆及车主相关联系方式的帐户。</span></span></span></p><p><span style=\"color:#666666\"><span style=\"font-size:13px\"><span style=\"background-color:#ffffff\">4、第三方代缴</span></span></span></p><p><span style=\"color:#666666\"><span style=\"font-size:13px\"><span style=\"background-color:#ffffff\">   如果违章比较严重，罚款200或者扣分6分以上的，就不能以上面的办法处理了，这种情况须按一定程序办理后才能开出罚单，因此还不能以邮寄、电汇方式缴纳，而请朋友亲戚代办还要问清楚到底行不行（各地情况不同），实在不行只得回去违章发生地处理或请一些专业的违章代办人或公司办理。</span></span></span></p>', 0, '2020-03-24 15:47:38', '2020-03-24 15:47:38', 1);
INSERT INTO `news` VALUES (6, '违章查询有哪些途径？', '<p style=\"text-align:start;\" size=\"0\" _root=\"undefined\" __ownerID=\"undefined\" __hash=\"undefined\" __altered=\"false\">很多有私家车的朋友肯定会驾驶自己的爱车出行。但是在驾驶的过程中有的时候很有可能会出现违章的情况。但是有的时候自己却不知道到底是什么时候出现的违章，也不知道自己的车辆在驾驶的过程中是否出现有违章的情况，那么就需要车主定期查询违章了，违章查询除了去车管所查，还有什么查询方式？</p><p>违章查询需要准备什么？一般需要行驶证就可以了。</p><p> 违章查询的方式有哪些？</p><p>1、拨打电话查询--这种耗费时间长的同时也不方便，毕竟电话是没有自动文字记录的。查看明细会很麻烦，不够直观。手机拨打当地电话114，告知电话接线员你的车牌号是多少,对方对根据你提供的车辆信息进行违章查询，告知你的车辆是否有违章情况。</p><p>2、交警大队查询</p><p>到各市各区县交通支大队的办公大厅通过触摸查询终端查询。需要到的证件有：带驾驶证，行驶证，身份证。</p><p>3、通过微信公众号查询， 现在微信社交软件对车主来说使用比较方便，只要微信关注“车务管家”公众号，并且输入车辆信息即可查询。支持全国联网违章查询，并且支持违章照片的查询，也支持直接下单处理。只最方面的选择。</p>', 1, '2020-03-24 15:51:40', '2020-01-06 20:24:59', 1);
INSERT INTO `news` VALUES (7, '崔东树：刺激车市才能填疫情消费之坑', '<p style=\"text-align:justify;\" size=\"0\" _root=\"undefined\" __ownerID=\"undefined\" __hash=\"undefined\" __altered=\"false\">新冠肺炎疫情已经是世界灾难，欧美国家遭遇巨大冲击。中国经济也受疫情影响，消费稳增长受到阻碍。全国今年经济增长和消费稳定目标非常明确而强烈，我们希望鼓励汽车等传统大宗消费，要让汽车抵充消费市场的下行压力。今年应该在衣食住行消费的总盘子里面解决消费的问题，目前通过政策鼓励措施把汽车需求拉起来看起来是最可行的。</p><p>建议加大汽车限购指标数量、实施购置税减免、新能源车补贴不退坡、实施微型电动车下乡补贴、购车抵个税等综合措施。</p>', 1, '2020-03-24 16:08:42', '2020-04-02 18:50:12', 1);
INSERT INTO `news` VALUES (8, '中国将成为大众集团转型主战场', '<p style=\"text-align:justify;\" size=\"0\" _root=\"undefined\" __ownerID=\"undefined\" __hash=\"undefined\" __altered=\"false\">3月17日下午，大众汽车集团举行2020年度线上媒体沟通会。</p><p>大众汽车集团管理董事会主席迪斯博士表示，2019年对大众汽车集团是极为成功的一年。在整个集团在汽车行业的业务下滑4%，自2011年来全球汽车市场首次低于8000万辆的2019年，大众集团利润创了新高。</p><p>而在2020年，迪斯也在会上表示，受到疫情影响，大众集团正在接受挑战。目前目前大众汽车集团全球员工已有25人感染新冠病毒，同时大众集团在全球多家工厂尤其是欧洲将面临着大规模的停产，或将持续2-3周，迪斯说，“2020年将是非常艰难的一年。疫情大流行给我们带来了未知的业务和财务挑战。与此同时，人们对持续的经济影响感到担忧。”加之受疫情影响全球车市2020年销量或将进一步下滑，那么大众汽车集团完成2020年的销量和营收预期将面临更大的挑战</p>', 2, '2020-03-24 16:12:41', '2020-01-08 12:51:07', 1);
INSERT INTO `news` VALUES (9, '新冠状疫情下 为什么开电动车出行更安全？', '<p style=\"text-align:justify;text-indent:2em;\">近日，有外媒报道称，在疫情下，开电动车出行要比燃油车出行更安全。首先，加油站不满了油污和细菌，虽然在加油时戴口罩、手套能和洗手液可避免一些风险，但空气仍然是肮脏有细菌的。并且，加油时还要接触更多东西。</p><p style=\"text-align:justify;text-indent:2em;\">那为什么电动汽车更安全？</p><p style=\"text-align:justify;text-indent:2em;\">完全是因为您大多数时候会在家里加满电动汽车。这是一个更加受控的环境，您可以随意进行清洁触摸的动作。因此，如有必要，在使用前后，请用一些消毒湿纸巾擦拭充电器，几乎可以保证清洁，接近无菌的充电器。</p><p style=\"text-align:justify;text-indent:2em;\">此外，您的家用EV充电器可能只由一两个人使用，因此传播各种病毒的机会大大减少了。</p><p style=\"text-align:justify;text-indent:2em;\">充电时，在公共场合也是如此。接触公共充电器的人数要少于接触气泵手柄的人数。</p><p style=\"text-align:justify;text-indent:2em;\">最后，如果您确实在每次使用后都对充电器进行了消毒，那么大多数EV驾驶员都将其视为礼貌。我们怀疑如果看到您用消毒抹布擦拭充电器，那么任何电动车车主都会抱怨。</p><p style=\"text-align:justify;text-indent:2em;\">因此，最后，拥有电动汽车可以在发生任何病毒爆发时将您的风险降到最低，至少从“加油”的角度出发可以继续。</p><p></p>', 4, '2020-03-24 16:24:56', '2020-04-07 09:57:48', 1);
INSERT INTO `news` VALUES (10, '这些容易引起汽车自燃的原因 车主们要注意', '<p>汽车自燃是很多车主都很害怕遇到的事故，自燃产生的原因有很多，不知道的情况下很难预防，对乘车人的身体和财产也会造成严重威胁。</p><p></p><p>那么汽车自燃的原因主要有哪些，应该怎样做才能防止自燃的发生呢，下面会具体来解析。</p><p></p><p>非法改装汽车</p><p></p><p>很多年轻的车主都喜欢通过改装自己的汽车，进行内部升级和外观改造，却不知道核心部分的改装，会留下汽车自燃的隐患。</p><p></p><p>这些容易引起汽车自燃的原因，车主们要注意</p><p></p><p>比如加装涡轮增压器、改喷火排气之类的，虽然可以提升汽车性能并且达到车主想要的炫酷效果，但是也会引起更多的故障危险。</p><p></p><p>这些经过改造的内部核心机件，在高温天气之下，极有可能会导致线路发生自燃，为车主造成不可挽回的损失，甚至威胁车主自身安全。</p><p></p><p>汽车油路严重老化</p><p></p><p>如果你的汽车出现了汽油渗漏的情况，证明你的汽车油路已经严重老化了，所以不论是油箱还是油管，都要仔细检修，杜绝隐患。</p><p></p><p>因为一旦渗漏在排气筒或者水箱等容易产生高温的地方，很容易引起汽车自燃，所以车主必须定期对自己的汽车内部进行检修。</p><p></p><p></p>', 3, '2020-03-24 16:26:29', '2020-06-13 16:03:49', 1);
INSERT INTO `news` VALUES (11, '汽车油耗突然变高？把这3个零件换一换', '<p>汽车作为汽车工业的产物，它是一件消耗品，随着车子使用的时间变长，很多部件都会出现磨损，性能也大不如从前，所以我们应该爱护我们的车子，有细心的车主表示，车子开得时间长了，油耗确实越来越高，而且动力明显不如以前强劲，那么我们遇到这种情况应该怎么办呢？小编今天就告诉你们，这3个零件换一换，油耗省一半</p><p></p><p>氧传感器</p><p></p><p>如果用车时没有因为不良习惯所导致的油耗增高，这时不妨检查汽车氧传感器是否破损故障。故障情况下，氧传感器功能失效，造成汽车尾气反馈信息错误，例如汽车燃油不充分、输出动力不足，造成汽车电脑收集信息有误，会判定增加喷油量，造成汽车用久后，油耗越来越高。如果是氧传感器故障，可进行清洗处理，或直接更接新的传感器即可。</p><p></p><p>汽车油耗突然变高？把这3个零件换一换</p><p></p><p>火花塞</p><p></p><p>新车连3个月都不到，油耗就已经高达12升，除去高油耗的越野车，其实普通SUV百公里油耗达12L已经属于不可思议的事情了。正常情况下，普通SUV在公里油耗一般在10升左右，突然飙升至12升，其实可以检查火花塞是否有故障。火花塞有积碳造成点火火陷小，或失火电火延迟，从而导致喷油量增加。油耗增加，这时我们可以尝试更换火花塞，看是否能解决问题。</p><p></p><p>汽车油耗突然变高？把这3个零件换一换</p><p></p><p>活性碳罐</p><p></p><p>如果新车油耗突然增加，检查以上两条都未能解决高油耗问题的话，还有一个可能性，大概率是汽车活性碳电磁阀出现故障。建议把车开到4S店检查，更换活性碳罐，相信这样就有可能解决油耗高的问题了。</p><p></p><p>汽车油耗突然变高？把这3个零件换一换</p><p></p><p>小结</p><p></p><p>虽然很多人会开车，但是真正懂车的人很少，油耗增加，有的人以为是油的问题，其实汽车油耗的增加，还有可能是因为零件出现问题，也有可能和车主平时的开车习惯有一定的关系，不过只要按照小编的方法，处理好这3个零件，油耗能省一半。</p>', 4, '2020-03-24 16:35:16', '2020-01-06 20:25:05', 1);
INSERT INTO `news` VALUES (15, '这些食品可能造成酒驾 开车时司机远离', '<p></p><div class=\"media-wrap image-wrap align-center\" style=\"text-align:center\"><img src=\"http://localhost:3000/uploadImg/upload_ddce364234cc0291af4c8548742335ab.png\"/></div><p></p><p style=\"text-align:start;text-indent:2em;\">酒驾是最为危险的交通违法行为之一，一旦发生交通事故，往往伤亡惨重。为了有效提高广大车主对酒驾危害的重视，《道路交通安全法》针对酒驾制定了严格的处罚规定。但在实际生活中，有不少车主表示自己没有饮酒，却被检测出酒驾从而接受了处罚。这并不是他们说谎，而是因为他们食用了容易产生酒精的食品。</p><p style=\"text-align:start;text-indent:2em;\"></p><p style=\"text-align:start;text-indent:2em;\">酒精是通过植物发酵而来，其成分就是我们常说的乙醇。由于来自植物，因此我们日常食用的多种食品，在保存时同样会经历发酵过程，产生酒精。食用这样的食品后，从口腔中吹气确实会产生大量酒精，造成“酒驾”。</p><p style=\"text-align:start;text-indent:2em;\"></p><p style=\"text-align:start;text-indent:2em;\">1.酒心巧克力</p><p style=\"text-align:start;text-indent:2em;\"></p><p style=\"text-align:start;text-indent:2em;\">既然是酒，那就从最显而易见的酒心巧克力说起。酒心巧克力中直接加入了酒类物质，食用后立即吹气，会产生250mg/100ml左右的酒精含量。不过由于酒心巧克力中的酒精量级不够，在3分钟后会逐渐消散。</p><p style=\"text-align:start;text-indent:2em;\"></p><p style=\"text-align:start;text-indent:2em;\"></p><p style=\"text-align:start;text-indent:2em;\"></p><p style=\"text-align:start;text-indent:2em;\">2.腐乳</p><p style=\"text-align:start;text-indent:2em;\"></p><p style=\"text-align:start;text-indent:2em;\">腐乳内含有更多发酵物质，以一块腐乳作为实验，食用后立即吹气，会产生400mg/100ml左右的酒精含量。当然，这样的酒精物质同样会短暂停留在口腔内，2分钟后继续测试便会消散。虽然立即食用后会产生如此之高的酒精含量，但考虑到腐乳的常见包装形式，可能很少有人在开车的时候吃豆腐乳吧……</p><p style=\"text-align:start;text-indent:2em;\"></p><p style=\"text-align:start;text-indent:2em;\"></p><p style=\"text-align:start;text-indent:2em;\"></p><p style=\"text-align:start;text-indent:2em;\">3.格瓦斯饮料</p><p style=\"text-align:start;text-indent:2em;\"></p><p style=\"text-align:start;text-indent:2em;\">格瓦斯饮料是一种面包发酵饮料，由于与酒类同是饮品，所以很多车主都认为饮用格瓦斯后会造成酒驾。但其实经过测试，刚刚饮用格瓦斯后立即吹气，仅会产生30mg/100ml的酒精含量，半分钟后即可消散，所以格瓦斯这种饮品大家可以放心饮用。</p><p style=\"text-align:start;text-indent:2em;\"></p><p style=\"text-align:start;text-indent:2em;\"></p><p style=\"text-align:start;text-indent:2em;\"></p><p style=\"text-align:start;text-indent:2em;\">4.蛋黄派</p><p style=\"text-align:start;text-indent:2em;\"></p><p style=\"text-align:start;text-indent:2em;\">由于包装小巧食用方便，蛋黄派可以算是车内比较常见的零食之一了。由于蛋糕中含有蛋黄奶油，食用后立即吹气会产生约60mg/100ml左右的酒精含量，消散时间在2分钟左右。</p><p style=\"text-align:start;text-indent:2em;\"></p><p style=\"text-align:start;text-indent:2em;\"></p><p style=\"text-align:start;text-indent:2em;\"></p><p style=\"text-align:start;text-indent:2em;\">5.榴莲</p><p style=\"text-align:start;text-indent:2em;\"></p><p style=\"text-align:start;text-indent:2em;\">榴莲被称作“水果之王”，这主要是因为榴莲的营养非常丰富。食用榴莲后立即吹气，会产生50mg/100ml左右的酒精含量，在1分钟后即可基本消散。</p><p style=\"text-align:start;text-indent:2em;\"></p><p style=\"text-align:start;text-indent:2em;\"></p><p style=\"text-align:start;text-indent:2em;\"></p><p style=\"text-align:start;text-indent:2em;\">6.荔枝</p><p style=\"text-align:start;text-indent:2em;\"></p><p style=\"text-align:start;text-indent:2em;\">与榴莲相同，荔枝这种水果也会自行发酵，产生一定的酒精。不过在食用后立即吹气，仅会产生20mg/100ml左右的酒精含量，半分钟后即可消散。</p><p style=\"text-align:start;text-indent:2em;\"></p><p style=\"text-align:start;text-indent:2em;\"></p><p style=\"text-align:start;text-indent:2em;\"></p><p style=\"text-align:start;text-indent:2em;\">7.藿香正气水</p><p style=\"text-align:start;text-indent:2em;\"></p><p style=\"text-align:start;text-indent:2em;\">藿香正气水有解表化湿、理气和中的功效，可以应对外感风寒、内伤湿滞或夏伤暑湿所致的感冒的症状。有的车主不经意间会服用藿香正气水后驾车，但殊不知它的成分主要正是乙醇。在服用藿香正气水后，我们的测试设备直接爆表，显示650mg/100ml。虽然数值如此之高，但也经不过时间的考虑，在5分钟后同样基本消散。</p><p style=\"text-align:start;text-indent:2em;\"></p><p style=\"text-align:start;text-indent:2em;\"></p><p style=\"text-align:start;text-indent:2em;\"></p><p style=\"text-align:start;text-indent:2em;\">以上是一些典型的“酒驾食品”，经过实际测试，大家也能够发现一些规律，这些食品只是食用之时在口腔内会产生大量酒精，经过几分钟便会逐渐消散。只是藿香正气水略显特殊，即刻测试数值巨大，并且消散时间也比较长。</p><p style=\"text-align:start;text-indent:2em;\"></p><p style=\"text-align:start;text-indent:2em;\">这其中的大部分食品，食用后都可以放心开车，而服用藿香正气水后最好间隔一段时间再驾驶车辆。如果不巧刚刚食用就遭遇交警检查，那么驾驶员可以耐心跟交警解释，稍等片刻再进行测试，或是复议选择采血化验。当然还是要提醒广大司机朋友，为了行车安全，驾车时还是最好不要食用任何食品。</p><p></p>', 3, '2020-01-05 13:37:54', '2020-01-05 16:04:57', 1);
COMMIT;

-- ----------------------------
-- Table structure for reserves
-- ----------------------------
DROP TABLE IF EXISTS `reserves`;
CREATE TABLE `reserves` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `reserve` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `type` int(1) NOT NULL DEFAULT '1',
  `createdAt` varchar(255) DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `adminId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reserves
-- ----------------------------
BEGIN;
INSERT INTO `reserves` VALUES (1, '1', '1', '1', '2020-06-21', 2, '2020-06-21 03:12:51', '2020-06-21 03:12:51', NULL);
INSERT INTO `reserves` VALUES (2, '1', '121', '1', '2020-06-20', 1, '2020-06-21 03:52:41', '2020-06-21 03:52:41', NULL);
INSERT INTO `reserves` VALUES (3, '1', '1212', '1', '2020-06-27', 1, '2020-06-21 03:52:50', '2020-06-21 03:52:50', NULL);
INSERT INTO `reserves` VALUES (4, '1', '1212', '1', '2020-06-27', 3, '2020-06-21 03:52:54', '2020-06-21 03:52:54', NULL);
INSERT INTO `reserves` VALUES (5, '1', '1212', '1', '2020-06-27', 0, '2020-06-21 03:52:55', '2020-06-21 03:52:55', NULL);
INSERT INTO `reserves` VALUES (6, '1', '2', '3', '2020-07-10', 0, '2020-06-21 04:02:59', '2020-06-21 04:02:59', NULL);
INSERT INTO `reserves` VALUES (7, '1', '2', '3', '2020-07-10', 2, '2020-06-21 04:03:08', '2020-06-21 04:03:08', NULL);
INSERT INTO `reserves` VALUES (8, '1', '2', '1', '2020-06-27', 0, '2020-06-21 04:07:50', '2020-06-21 04:07:50', NULL);
INSERT INTO `reserves` VALUES (9, 'QQ', '1', '1', '2020-06-26', 2, '2020-06-21 04:09:11', '2020-06-21 04:09:11', NULL);
INSERT INTO `reserves` VALUES (10, '1111', '111', '1111', '2020-06-11', 0, '2020-06-21 04:10:34', '2020-06-21 04:10:34', NULL);
INSERT INTO `reserves` VALUES (11, '1', '1', '1', '2020-06-21', 0, '2020-06-21 04:10:56', '2020-06-21 04:10:56', NULL);
INSERT INTO `reserves` VALUES (12, '1', '1', '1', '2020-06-21', 1, '2020-06-21 04:11:16', '2020-06-21 04:11:16', NULL);
INSERT INTO `reserves` VALUES (13, '1', '1', '1', '2020-06-27', 0, '2020-06-21 04:12:08', '2020-06-21 04:12:08', NULL);
INSERT INTO `reserves` VALUES (14, '2', '2', '1', 'Invalid date', 1, '2020-06-21 04:12:16', '2020-06-21 04:12:16', NULL);
INSERT INTO `reserves` VALUES (15, '111', '111', '111', 'Invalid date', 1, '2020-06-21 04:13:14', '2020-06-21 04:13:14', NULL);
INSERT INTO `reserves` VALUES (16, '111', '11', '111', '2020-07-02', 2, '2020-06-21 04:13:52', '2020-06-21 04:13:52', NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
