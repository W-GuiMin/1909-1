/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : shopping

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2019-10-12 20:09:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for good
-- ----------------------------
DROP TABLE IF EXISTS `good`;
CREATE TABLE `good` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `goodsId` bigint(20) NOT NULL,
  `sales` int(11) DEFAULT NULL,
  `promotion` varchar(255) DEFAULT NULL,
  `repertory` int(11) DEFAULT NULL,
  `kind` varchar(255) DEFAULT NULL,
  `url2` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `kuanshi` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`goodsId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of good
-- ----------------------------
INSERT INTO `good` VALUES ('0', '一梦颗粒按摩乳胶枕芯一只装', '69.99', '7016139221', '189', '特价', '5', 'bedding', '../img/a1.jpg,../img/a2.jpg,../img/a3.jpg,../img/a4.jpg,../img/a5.jpg', '颜色：白色', '款式：枕芯', 'img/a1.jpg,img/a2.jpg,img/a3.jpg,img/a4.jpg,img/a5.jpg');
INSERT INTO `good` VALUES ('1', 'TAIHI泰嗨 天然乳胶枕 枕头 高低按摩枕', '236', '7016139223', '20', '特价', '5', 'bedding', '../img/b1.jpg,../img/b2.jpg,../img/b3.jpg', '颜色：乳白色', '款式：按摩枕', 'img/b1.jpg,img/b2.jpg,img/b3.jpg');
INSERT INTO `good` VALUES ('2', '[成人枕*2+儿童枕*1]TAIHI泰嗨 泰国原装进口乳胶枕2+1超值家庭装', '788', '7016139224', '4', '特价', '7', 'bedding', '../img/c1.jpg,../img/c2.jpg,../img/c3.jpg,../img/c4.jpg,../img/c5.jpg', '颜色：白色', '款式：乳胶枕', 'img/c1.jpg,img/c2.jpg,img/c3.jpg,img/c4.jpg,img/c5.jpg');
INSERT INTO `good` VALUES ('3', '正宗香格里拉野生松茸', '399', '231543', '107', '促销', '86', 'snacks', '../img/a3_1.jpg', null, null, 'img/a3_1.jpg');
INSERT INTO `good` VALUES ('4', '松茸酱牛肉美味家庭组', '298', '235835', '111', '促销', '90', 'snacks', '../img/b3_1.jpg', null, null, 'img/b3_1.jpg');
INSERT INTO `good` VALUES ('5', '泰国原装进口皇家侎谷营养粥', '298', '236479', '118', '特价', '100', 'snacks', '../img/c3_1.jpg', null, null, 'img/c3_1.jpg');
INSERT INTO `good` VALUES ('6', 'HYUNDAI低糖蒸汽饭煲', '1680', '231959', '17', '满减', '35', 'appliance', '../img/a2_1.jpg', null, null, 'img/a2_1.jpg');
INSERT INTO `good` VALUES ('7', '双立人多功能料理机套组', '699', '232759', '15', '满减', '10', 'appliance', '../img/b2_1.jpg', null, null, 'img/b2_1.jpg');
INSERT INTO `good` VALUES ('8', 'HYUNDAI智能全营养破壁机组', '999', '236032', '121', '满减', '76', 'appliance', '../img/c2_1.jpg', null, null, 'img/c2_1.jpg');

-- ----------------------------
-- Table structure for goodslist
-- ----------------------------
DROP TABLE IF EXISTS `goodslist`;
CREATE TABLE `goodslist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `﻿url` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `sales` int(11) DEFAULT NULL,
  `goodsId` bigint(20) DEFAULT NULL,
  `kind` varchar(255) DEFAULT NULL,
  `url2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=146 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodslist
-- ----------------------------
INSERT INTO `goodslist` VALUES ('1', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/11e5445bf2bf4e988bca8ba1dbdc9237.jpg', '正宗香格里拉野生松茸', '399', '107', '231543', 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/11e5445bf2bf4e988bca8ba1dbdc9237.jpg');
INSERT INTO `goodslist` VALUES ('2', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e835/995cb308e1ca4896a8e94b1f21899a0b.jpg', '松茸酱牛肉美味家庭组', '298', '111', '235835', 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e835/995cb308e1ca4896a8e94b1f21899a0b.jpg');
INSERT INTO `goodslist` VALUES ('3', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e89d/50f30c4e3f3842139fb8213ad8ce2d56.jpg', '泰国原装进口皇家侎谷营养粥', '298', '118', '236479', 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e89d/50f30c4e3f3842139fb8213ad8ce2d56.jpg');
INSERT INTO `goodslist` VALUES ('4', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9c8/12236dd382e94a9a872a0ca5d206e0eb.webp', '四川藏香黑猪红烧肉东坡肉罐头', '299', '199', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9c8/12236dd382e94a9a872a0ca5d206e0eb.webp');
INSERT INTO `goodslist` VALUES ('5', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9c8/0b65e3639591482a828c15758efb34fb.webp', '林道斯哈尔滨红肠系列礼包', '299', '121', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9c8/0b65e3639591482a828c15758efb34fb.webp');
INSERT INTO `goodslist` VALUES ('6', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/2108e38f189745d496788cfd5f6db955.webp', '汇柒鲜锡盟草原红焖牛肋', '269', '182', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/2108e38f189745d496788cfd5f6db955.webp');
INSERT INTO `goodslist` VALUES ('7', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9ba/07ecacdc120841b29cf6543fd3eaea0f.jpg', '湘嶷坊香酥带鱼罐头', '299', '206', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9ba/07ecacdc120841b29cf6543fd3eaea0f.jpg');
INSERT INTO `goodslist` VALUES ('8', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/e58e685f87e848adb1f260f9c66fe0a1.jpg', '新疆库尔勒开口小银杏350g/袋*3袋', '99', '41', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/e58e685f87e848adb1f260f9c66fe0a1.jpg');
INSERT INTO `goodslist` VALUES ('9', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/ff72ef0477734a6093ecc122bcad3989.jpg', '多尊茄汁沙丁鱼罐头6罐组', '49', '145', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/ff72ef0477734a6093ecc122bcad3989.jpg');
INSERT INTO `goodslist` VALUES ('10', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/f93e0a7537924887b21ba4c20ee3bc05.jpg', '多尊香酥黄花鱼罐头6罐组', '56', '164', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/f93e0a7537924887b21ba4c20ee3bc05.jpg');
INSERT INTO `goodslist` VALUES ('11', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/0b50d39e22c04d58a8abea57dd26ed06.jpg', '善味阁 吃货丸家牛肉丸 125g*2袋', '36', '141', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/0b50d39e22c04d58a8abea57dd26ed06.jpg');
INSERT INTO `goodslist` VALUES ('12', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/4a4ac94b1f424d9ca0f25ecbf05b4e22.jpg', '善味阁鲜卤鸭肫约10g*10袋装', '19', '147', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/4a4ac94b1f424d9ca0f25ecbf05b4e22.jpg');
INSERT INTO `goodslist` VALUES ('13', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/250fe50749aa4f589f9a5db3206fcf35.jpg', '品粒品味新疆和田大枣四星468g*2袋', '52', '30', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/250fe50749aa4f589f9a5db3206fcf35.jpg');
INSERT INTO `goodslist` VALUES ('14', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/c3d1d52a87724428ab8ac84730bffbc1.jpg', '品粒品味 新疆和田大枣珍珠枣468g*3袋', '57', '30', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/c3d1d52a87724428ab8ac84730bffbc1.jpg');
INSERT INTO `goodslist` VALUES ('15', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/31c61f5941da4d1a99693561e5b496da.jpg', '品粒品味新疆阿图什无花果200g*3袋', '45.9', '139', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/31c61f5941da4d1a99693561e5b496da.jpg');
INSERT INTO `goodslist` VALUES ('16', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/41cde261e7eb4a3784bc7b1edcd621d9.jpg', '品粒品味新疆库尔勒开口小银杏350g*3袋', '49', '145', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/41cde261e7eb4a3784bc7b1edcd621d9.jpg');
INSERT INTO `goodslist` VALUES ('17', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/55ae58f119f1407da73ee2cf07773fe3.jpg', '品粒品味新疆和田大枣六星468g*2袋', '55', '135', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/55ae58f119f1407da73ee2cf07773fe3.jpg');
INSERT INTO `goodslist` VALUES ('18', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/e1d9d2b57dfd449eb2dbf5194295c237.jpg', '品粒品味新疆和田大枣五星468g*2袋', '45.9', '30', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/e1d9d2b57dfd449eb2dbf5194295c237.jpg');
INSERT INTO `goodslist` VALUES ('19', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/0f891e03405b424198858919a13ab8b6.jpg', '善味阁奥尔良烧烤翅尖15g*10袋装', '23', '135', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/0f891e03405b424198858919a13ab8b6.jpg');
INSERT INTO `goodslist` VALUES ('20', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/d6435586fe464cd086c87bda3b5f83b3.jpg', '老香斋鸡子饼糕点 香脆酥鸡仔饼500g 老上海味道', '32', '23', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/d6435586fe464cd086c87bda3b5f83b3.jpg');
INSERT INTO `goodslist` VALUES ('21', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/875084619d7140ce81e2f2b1e23804a6.jpg', '多尊 红烧牛肉罐头100g*6罐', '65', '21', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/875084619d7140ce81e2f2b1e23804a6.jpg');
INSERT INTO `goodslist` VALUES ('22', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/8e171a4f6d8b4c459ff677095be65266.jpg', '老香斋 咸味零食小吃锅巴500g 上海糯米锅巴传统...', '27', '126', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/8e171a4f6d8b4c459ff677095be65266.jpg');
INSERT INTO `goodslist` VALUES ('23', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/7c6f7b407baf4d0f8475b1942e6e442e.jpg', '金冠蜜姜汁孕妇老红糖姜茶大姨妈便携老姜汤礼盒【规格可选】', '27', '21', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/7c6f7b407baf4d0f8475b1942e6e442e.jpg');
INSERT INTO `goodslist` VALUES ('24', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/2edb47ab8eed4cdfa6a28bb0f115f93a.jpg', '多尊 海参磷虾酱 6罐组', '84', '21', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/2edb47ab8eed4cdfa6a28bb0f115f93a.jpg');
INSERT INTO `goodslist` VALUES ('25', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/9fd38719b8dc416cbc70b85301ad2fe5.jpg', '汇柒鲜酱牛腱3袋+带皮牛肉4袋', '188', '124', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/9fd38719b8dc416cbc70b85301ad2fe5.jpg');
INSERT INTO `goodslist` VALUES ('26', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/18c719d919c84cbd88d2342f062b3959.jpg', '盐津铺子蜜饯果脯休闲零食8罐【款式可选】', '45', '19', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/18c719d919c84cbd88d2342f062b3959.jpg');
INSERT INTO `goodslist` VALUES ('27', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e961/bd9176da05be4d03898250fb1d10c7f6.jpg', '品佳品蛋黄白莲蓉月饼400g', '49', '133', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e961/bd9176da05be4d03898250fb1d10c7f6.jpg');
INSERT INTO `goodslist` VALUES ('28', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/c8706388a30c4bd4bc1e109089254b69.jpg', '众星什锦果仁休闲零食142g/桶*6桶', '82', '18', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/c8706388a30c4bd4bc1e109089254b69.jpg');
INSERT INTO `goodslist` VALUES ('29', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/93925435f4244d6a86bff4bc7613a67a.jpg', '众星烤猪肉干手撕肉片118g/袋*4袋【口味可选】', '73', '123', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/93925435f4244d6a86bff4bc7613a67a.jpg');
INSERT INTO `goodslist` VALUES ('30', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/3c217df286e64179a69b8a1105512042.jpg', '众星休闲零食鸭小腿72g*10袋', '55', '123', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/3c217df286e64179a69b8a1105512042.jpg');
INSERT INTO `goodslist` VALUES ('31', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/e1b46bace04a4b32bf799b704478983f.jpg', '众星休闲零食软糖300g/盒*4盒【口味可选】', '79', '18', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/e1b46bace04a4b32bf799b704478983f.jpg');
INSERT INTO `goodslist` VALUES ('32', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/f3f4f6827c224692831a3bde9ea30b49.jpg', '一农美食糕点 枸杞扁桃仁酥/黑糖花生酥/黑芝麻酥/...', '39', '17', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/f3f4f6827c224692831a3bde9ea30b49.jpg');
INSERT INTO `goodslist` VALUES ('33', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/6620c118e5424005a997f87a530be5c9.jpg', '佰食优手剥巴旦木208g*6袋 干果休闲零食', '88', '17', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/6620c118e5424005a997f87a530be5c9.jpg');
INSERT INTO `goodslist` VALUES ('34', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/c09d791566534c1faf90220dfb1500b7.jpg', '哈肉联哈尔滨红肠 精制红肠10根/精制红肠5根+精红肠8根', '107', '122', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/c09d791566534c1faf90220dfb1500b7.jpg');
INSERT INTO `goodslist` VALUES ('35', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/6d22265ea2904aaa86a0c7a7a61dafd8.jpg', '汇柒鲜 筋头巴脑500g/袋*4 羊杂200g/袋*2', '188', '17', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/6d22265ea2904aaa86a0c7a7a61dafd8.jpg');
INSERT INTO `goodslist` VALUES ('36', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/3e32f3320b1c4e58a50162e795329f90.jpg', '哈肉联精红肠85g*8根 哈尔滨红肠', '65', '122', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/3e32f3320b1c4e58a50162e795329f90.jpg');
INSERT INTO `goodslist` VALUES ('37', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/fe2d6b50effb4acaa3dabe40273a172d.jpg', '老香斋 咸味海苔苔条麻花 500g袋装 糕点休闲零...', '35', '16', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/fe2d6b50effb4acaa3dabe40273a172d.jpg');
INSERT INTO `goodslist` VALUES ('38', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/6fcb343d96f442aa9d15a17c6fc4fab3.jpg', 'AOLIJIA/澳莉嘉 黄豆酥糖麻酥糖黄豆糕500...', '35', '15', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/6fcb343d96f442aa9d15a17c6fc4fab3.jpg');
INSERT INTO `goodslist` VALUES ('39', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/ef50d0d781304d5196f4dc0ffdbae53b.jpg', '众星零食三明治威化夹心饼干138g/盒*4盒', '39', '16', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/ef50d0d781304d5196f4dc0ffdbae53b.jpg');
INSERT INTO `goodslist` VALUES ('40', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/e6dabd92e1f94d21a6547b0ea8696e12.jpg', '众星休闲零食梳打饼干400g/袋*4袋【口味可选】', '49', '123', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/e6dabd92e1f94d21a6547b0ea8696e12.jpg');
INSERT INTO `goodslist` VALUES ('41', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/25104feb744d41d39fa4d00dde199676.jpg', '益佰珍香格里拉去皮蜂蜜核桃仁120g（12小袋）', '35', '16', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/25104feb744d41d39fa4d00dde199676.jpg');
INSERT INTO `goodslist` VALUES ('42', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/52837f8bea774d0f9224042695863a1f.jpg', '哈肉联精红肠85g*15根 哈尔滨红肠', '107', '129', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/52837f8bea774d0f9224042695863a1f.jpg');
INSERT INTO `goodslist` VALUES ('43', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/1156daaa87364d1b91469706db3a4b6a.jpg', '品粒品味新疆和田大枣六星468g*4袋 新旧包装随机发货', '82', '129', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/1156daaa87364d1b91469706db3a4b6a.jpg');
INSERT INTO `goodslist` VALUES ('44', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/31ed17a93fd34dc09fed21523d378454.jpg', '品粒品味 新疆和田大枣五星 468g*4袋', '79', '16', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/31ed17a93fd34dc09fed21523d378454.jpg');
INSERT INTO `goodslist` VALUES ('45', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/a29fd460384c40df810c60ced859db05.jpg', '老香斋糕点美食200g/盒 玫瑰酥饼/杏仁酥/核桃...', '39', '188', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/a29fd460384c40df810c60ced859db05.jpg');
INSERT INTO `goodslist` VALUES ('46', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/ee87dbce19b64a1a8cd20e604c831655.jpg', '众星每日坚果大礼盒25g*30包【款式可选】', '122', '121', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/ee87dbce19b64a1a8cd20e604c831655.jpg');
INSERT INTO `goodslist` VALUES ('47', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/4557d0e3c63145f1bf91cc49506b8cd4.jpg', '哈肉联儿童红肠85g*15根 哈尔滨红肠', '108', '16', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/4557d0e3c63145f1bf91cc49506b8cd4.jpg');
INSERT INTO `goodslist` VALUES ('48', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/780bf29495be4303aff9afc8aaaf97a3.jpg', '来伊份 香菇夹心豆卷 约30g*20', '37', '121', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/780bf29495be4303aff9afc8aaaf97a3.jpg');
INSERT INTO `goodslist` VALUES ('49', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/f1cdc77bc4ea481a8ee25e5aa6cf6c3f.jpg', '盼盼糕点膨化食品80小包礼包', '53', '26', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/f1cdc77bc4ea481a8ee25e5aa6cf6c3f.jpg');
INSERT INTO `goodslist` VALUES ('50', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/f401909d60cb4d0a9a8e2dfb67871fc7.jpg', '老香斋零食小吃香酥咸味海苔饼 500g 苔条饼干传...', '33', '124', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/f401909d60cb4d0a9a8e2dfb67871fc7.jpg');
INSERT INTO `goodslist` VALUES ('51', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/6731957bc17a48d38257e746c42b84c2.jpg', 'AOLIJIA/澳莉嘉 绿豆糕500g 豆沙馅 上...', '27', '155', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/6731957bc17a48d38257e746c42b84c2.jpg');
INSERT INTO `goodslist` VALUES ('52', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/e29bcade166746b2b562226f23a09559.jpg', 'AOLIJIA/澳莉嘉 南枣核桃糕 500g 上海...', '45', '190', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/e29bcade166746b2b562226f23a09559.jpg');
INSERT INTO `goodslist` VALUES ('53', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/75373c45b3f04856aa10c88f8c97a1a6.jpg', '老香斋 上海一口香松仁沙琪玛 蛋黄酥 500g', '43', '154', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/75373c45b3f04856aa10c88f8c97a1a6.jpg');
INSERT INTO `goodslist` VALUES ('54', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/38fb0f06bcd3411882fdb95b53012943.jpg', '众星即食海鲜小零食鳗鱼条80g/袋*8袋【口味可选】', '82', '120', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/38fb0f06bcd3411882fdb95b53012943.jpg');
INSERT INTO `goodslist` VALUES ('55', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/ed45fcc1c88349daa3160a4007367cda.jpg', '哈肉联儿童红肠85g*8根 哈尔滨红肠', '65', '15', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/ed45fcc1c88349daa3160a4007367cda.jpg');
INSERT INTO `goodslist` VALUES ('56', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/dbad14eadfa64b07aed8934d8774697f.jpg', '克恩兹烧烤味玉米片170g*2袋', '55', '178', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/dbad14eadfa64b07aed8934d8774697f.jpg');
INSERT INTO `goodslist` VALUES ('57', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/d57d0d1e94b0478f9b97f5a9c1f6bfe4.jpg', '众星休闲食品酷脆香酥鱼皮60g*3袋【口味可选】', '56', '1556', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/d57d0d1e94b0478f9b97f5a9c1f6bfe4.jpg');
INSERT INTO `goodslist` VALUES ('58', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/affa681093e94129a9490b4100d8fd3a.jpg', '克恩兹香蕉脆片40g*6袋', '56', '159', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/affa681093e94129a9490b4100d8fd3a.jpg');
INSERT INTO `goodslist` VALUES ('59', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/e330e478fb4a4925978d4a7255a1819b.jpg', '众星软心香蕉牛奶甜甜圈10包 约100g', '11', '130', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/e330e478fb4a4925978d4a7255a1819b.jpg');
INSERT INTO `goodslist` VALUES ('60', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/eb7f2d21375a4be3b8426ade485597ca.jpg', '善味阁 真空香卤孜然鸭腿肉 180g*2', '39', '15', null, 'snacks', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/eb7f2d21375a4be3b8426ade485597ca.jpg');
INSERT INTO `goodslist` VALUES ('61', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c3dc/a2e0fea2c19240a3a08217630509dc60.jpg', 'HYUNDAI低糖蒸汽饭煲', '1680', '17', '231959', 'appliance', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c3dc/a2e0fea2c19240a3a08217630509dc60.jpg');
INSERT INTO `goodslist` VALUES ('62', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e7cf/7127a895abcb475aa618011fb0054b38.jpg', '双立人多功能料理机套组', '699', '15', '232759', 'appliance', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e7cf/7127a895abcb475aa618011fb0054b38.jpg');
INSERT INTO `goodslist` VALUES ('63', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e840/4dfebae1877b4ef99b2b6617aab692e3.jpg', 'HYUNDAI智能全营养破壁机组', '999', '121', '236032', 'appliance', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e840/4dfebae1877b4ef99b2b6617aab692e3.jpg');
INSERT INTO `goodslist` VALUES ('64', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c388/befb09f0a69f4a44b4185bb9c6f219da.jpg', 'LEPIRE多用途电动无线清洁机', '299', '172', null, 'appliance', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c388/befb09f0a69f4a44b4185bb9c6f219da.jpg');
INSERT INTO `goodslist` VALUES ('65', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e83c/b8838256a0ec4b789e537e8cd3796359.jpg', '诺肯智能马桶一体机', '3980', '125', null, 'appliance', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e83c/b8838256a0ec4b789e537e8cd3796359.jpg');
INSERT INTO `goodslist` VALUES ('66', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c388/6066efa29ed44edea724349b36b27ebc.jpg', '科沃斯扫吸拖机器人尊贵金限量组', '1299', '133', null, 'appliance', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c388/6066efa29ed44edea724349b36b27ebc.jpg');
INSERT INTO `goodslist` VALUES ('67', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e714/565bf181b84348fabe4f5704aa9c341c.jpg', '美国西屋营养萃取破壁机', '1950', '214', null, 'appliance', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e714/565bf181b84348fabe4f5704aa9c341c.jpg');
INSERT INTO `goodslist` VALUES ('68', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e83f/94bd83717ca54a9f85716bb0d736f714.jpg', '豪格电解水机豪华组', '3980', '11', null, 'appliance', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e83f/94bd83717ca54a9f85716bb0d736f714.jpg');
INSERT INTO `goodslist` VALUES ('69', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e75d/80cea685e74745889d2427b892c9bd01.jpg', '老板大吸力免拆洗烟灶套组', '3580', '118', null, 'appliance', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e75d/80cea685e74745889d2427b892c9bd01.jpg');
INSERT INTO `goodslist` VALUES ('70', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e833/fe8da16bc57f4b99a992398dc1adda21.jpg', '科沃斯全自动智能规划扫地机器人', '1999', '10', null, 'appliance', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e833/fe8da16bc57f4b99a992398dc1adda21.jpg');
INSERT INTO `goodslist` VALUES ('71', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/888c95bc6d6247cabfcf9a317b7de0d5.jpg', '美国西屋破壁机', '1980', '115', null, 'appliance', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/888c95bc6d6247cabfcf9a317b7de0d5.jpg');
INSERT INTO `goodslist` VALUES ('72', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e843/eb31abb3401b4174aa8acfef06d566ae.jpg', '双立人健康畅饮随行搅拌机套装', '398', '122', null, 'appliance', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e843/eb31abb3401b4174aa8acfef06d566ae.jpg');
INSERT INTO `goodslist` VALUES ('73', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e833/51604f17c7f94460a3bbace79f7ff696.jpg', '九阳静音自清洗无人破壁机', '2999', '9', null, 'appliance', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e833/51604f17c7f94460a3bbace79f7ff696.jpg');
INSERT INTO `goodslist` VALUES ('74', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/34c242d5a9ef4f33b6cabc7bac7f412b.jpg', 'KRAMER中国味道IH智能电饭煲', '1399', '96', null, 'appliance', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/34c242d5a9ef4f33b6cabc7bac7f412b.jpg');
INSERT INTO `goodslist` VALUES ('75', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c388/97e3836055f246809a1b0ba93970f5a8.jpg', '贝尔莱德DH迷你干湿熨烫机', '399', '92', null, 'appliance', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c388/97e3836055f246809a1b0ba93970f5a8.jpg');
INSERT INTO `goodslist` VALUES ('76', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e82e/e6e7b1f952404e45ae659e86a817a12f.jpg', '东芝AI智能电视65英寸', '3999', '159', null, 'appliance', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e82e/e6e7b1f952404e45ae659e86a817a12f.jpg');
INSERT INTO `goodslist` VALUES ('77', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e83a/c85d1cd509f54d74ba2e9d762e6859ad.jpg', '德国科莱默钛健康电饭煲升级组', '1699', '181', null, 'appliance', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e83a/c85d1cd509f54d74ba2e9d762e6859ad.jpg');
INSERT INTO `goodslist` VALUES ('78', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e909/468d4a5e13fe4f2bb598002f21f6d6c7.jpg', '美国康宁双圈双旋钮微晶辐热炉', '1090', '117', null, 'appliance', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e909/468d4a5e13fe4f2bb598002f21f6d6c7.jpg');
INSERT INTO `goodslist` VALUES ('79', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e8a3/19b497c55fed41779375d06a7d456115.jpg', 'TEK无线手持洗地机', '1399', '68', null, 'appliance', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e8a3/19b497c55fed41779375d06a7d456115.jpg');
INSERT INTO `goodslist` VALUES ('80', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e89c/79717598c7f64813841f53957bf0d496.jpg', 'Bluecare智能垃圾吸收器套组', '1680', '89', null, 'appliance', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e89c/79717598c7f64813841f53957bf0d496.jpg');
INSERT INTO `goodslist` VALUES ('81', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e834/3636e702253c49d59852d86fdc640166.jpg', 'WindSky多角度旋转立式循环扇', '499', '52', null, 'appliance', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e834/3636e702253c49d59852d86fdc640166.jpg');
INSERT INTO `goodslist` VALUES ('82', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e82e/c3c6bf754f154bd09f4f2a3d4f2f4045.jpg', '东芝AI智能电视55英寸', '2799', '150', null, 'appliance', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e82e/c3c6bf754f154bd09f4f2a3d4f2f4045.jpg');
INSERT INTO `goodslist` VALUES ('83', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e893/1a0ac0d6e3f3415b850cad7fa041a1a9.jpg', '长虹晶钻玻璃内胆智能电饭煲', '399', '126', null, 'appliance', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e893/1a0ac0d6e3f3415b850cad7fa041a1a9.jpg');
INSERT INTO `goodslist` VALUES ('84', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e839/888cba651c5c4b889f309fc616a9f30b.jpg', '东芝曲面AI智能4K电视55英寸', '2999', '124', null, 'appliance', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e839/888cba651c5c4b889f309fc616a9f30b.jpg');
INSERT INTO `goodslist` VALUES ('85', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c388/1c65ff5d2976403c82d8d98507b6ae1b.jpg', '美国西屋智能洁身器', '1499', '112', null, 'appliance', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c388/1c65ff5d2976403c82d8d98507b6ae1b.jpg');
INSERT INTO `goodslist` VALUES ('86', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e7de/747efa60c8384ed0af03e917c6af4fed.jpg', '东芝AI智能电视50英寸', '2499', '117', null, 'appliance', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e7de/747efa60c8384ed0af03e917c6af4fed.jpg');
INSERT INTO `goodslist` VALUES ('87', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e966/0db9a49224ab423ab53b8b59d4d42a5a.jpg', '韩国现代低糖蒸汽饭煲', '1380', '180', null, 'appliance', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e966/0db9a49224ab423ab53b8b59d4d42a5a.jpg');
INSERT INTO `goodslist` VALUES ('88', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e902/491cb8ed46294b0f8ed643b66511013a.jpg', '美国西屋2019新款智能马桶一体机', '3980', '241', null, 'appliance', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e902/491cb8ed46294b0f8ed643b66511013a.jpg');
INSERT INTO `goodslist` VALUES ('89', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e8f8/fb249fbae85f496ea772d6f118682c05.jpg', '老板大吸力免拆洗烟灶豪华套组', '7580', '65', null, 'appliance', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e8f8/fb249fbae85f496ea772d6f118682c05.jpg');
INSERT INTO `goodslist` VALUES ('90', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e7d3/39cc3aed2a944f7ca7ca3d8c98d3144c.jpg', '德国KARCHER手持式蒸汽清洁机', '599', '113', null, 'appliance', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e7d3/39cc3aed2a944f7ca7ca3d8c98d3144c.jpg');
INSERT INTO `goodslist` VALUES ('91', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e88d/032bd7fd7f8447ccab59901521b59e2b.jpg', '西屋智能马桶一体机', '3980', '160', null, 'appliance', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e88d/032bd7fd7f8447ccab59901521b59e2b.jpg');
INSERT INTO `goodslist` VALUES ('92', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e89d/1fc2303f4dab4d32950cec66e5cf933c.jpg', '西班牙FAGOR法格智能蒸烤箱', '1680', '85', null, 'appliance', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e89d/1fc2303f4dab4d32950cec66e5cf933c.jpg');
INSERT INTO `goodslist` VALUES ('93', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e894/c0e87f2f91dd45ae91c926211384c6e9.jpg', '家宝破壁养生厨师机旗舰套组', '2380', '96', null, 'appliance', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e894/c0e87f2f91dd45ae91c926211384c6e9.jpg');
INSERT INTO `goodslist` VALUES ('94', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e7c9/4b5b08dea3d24d819da1d084b78b6052.jpg', '西班牙FAGOR法格三维射频炉', '1980', '73', null, 'appliance', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e7c9/4b5b08dea3d24d819da1d084b78b6052.jpg');
INSERT INTO `goodslist` VALUES ('95', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/5bcf6e61ecb34e6f939c55792d86bdc1.jpg', '好易点智能晾衣机十周年特供', '1999', '6', null, 'appliance', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/5bcf6e61ecb34e6f939c55792d86bdc1.jpg');
INSERT INTO `goodslist` VALUES ('96', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/c5e1f065652f467da315e601e08003f3.jpg', '英国Baumatic智能蒸汽烤箱套组', '1980', '139', null, 'appliance', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2c389/c5e1f065652f467da315e601e08003f3.jpg');
INSERT INTO `goodslist` VALUES ('97', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e6b0/95f79ed7ab9b4fbaa0af34a40fa7b044.jpg', '科沃斯扫吸拖机器人感恩特供组', '1299', '177', null, 'appliance', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e6b0/95f79ed7ab9b4fbaa0af34a40fa7b044.jpg');
INSERT INTO `goodslist` VALUES ('98', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9b5/3fd5422eb01e49eeab0b8846b03355f0.jpg', '德国科莱默IH智能电饭煲', '1399', '178', null, 'appliance', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9b5/3fd5422eb01e49eeab0b8846b03355f0.jpg');
INSERT INTO `goodslist` VALUES ('99', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e8a1/6a55e1f520a24fb683b7e2b7d3344a3d.jpg', 'VKXPlus全面屏语音智能手机', '2499', '118', null, 'appliance', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e8a1/6a55e1f520a24fb683b7e2b7d3344a3d.jpg');
INSERT INTO `goodslist` VALUES ('100', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e8a3/d0d71d65100d4721987a07431cd6c82c.jpg', 'SUGAR糖果智能翻译手机S20', '1499', '5', null, 'appliance', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e8a3/d0d71d65100d4721987a07431cd6c82c.jpg');
INSERT INTO `goodslist` VALUES ('101', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/8f5d3cfd461a4f7f96ae2fd32460d348.webp', '一梦颗粒按摩乳胶枕芯一只装', '69.99', '181', '7016139221', 'bedding', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/8f5d3cfd461a4f7f96ae2fd32460d348.webp');
INSERT INTO `goodslist` VALUES ('102', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/babf872a47e147a48117ced5cc85a0cc.webp', 'TAIHI泰嗨 天然乳胶枕 枕头 高低按摩枕', '236', '117', '7016139223', 'bedding', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/babf872a47e147a48117ced5cc85a0cc.webp');
INSERT INTO `goodslist` VALUES ('103', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/77e46add54cb47bd94003aac79f96d25.webp', '[成人枕*2+儿童枕*1]TAIHI泰嗨 泰国原装进口乳胶枕2+1家庭装', '788', '56', '7016139224', 'bedding', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/77e46add54cb47bd94003aac79f96d25.webp');
INSERT INTO `goodslist` VALUES ('104', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/183f2cb32765499ead49dcf679bc0e9a.webp', '泰嗨 乳胶U型枕旅行枕 乳胶枕 U型枕(颜色可选)', '188', '98', null, 'bedding', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/183f2cb32765499ead49dcf679bc0e9a.webp');
INSERT INTO `goodslist` VALUES ('105', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/c738faeab0c74c47a47b2792a54d032c.webp', '泰国·TAIHI泰嗨 乳胶枕1-2岁婴幼儿平枕', '188', '63', null, 'bedding', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/c738faeab0c74c47a47b2792a54d032c.webp');
INSERT INTO `goodslist` VALUES ('106', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/57887c60eae443ad8dff8df16cdd3e1c.webp', '泰国·TAIHI泰嗨 乳胶高低女士按摩枕', '236', '150', null, 'bedding', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/57887c60eae443ad8dff8df16cdd3e1c.webp');
INSERT INTO `goodslist` VALUES ('107', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/80bf411d9485409bb742a8e7342983f6.webp', '泰国·TAIHI泰嗨 乳胶枕头0-3岁婴儿枕', '188', '126', null, 'bedding', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/80bf411d9485409bb742a8e7342983f6.webp');
INSERT INTO `goodslist` VALUES ('108', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/1970e28993e241e9b09b5487838980fd.webp', '泰国·TAIHI泰嗨 乳胶枕高低平面枕', '236', '124', null, 'bedding', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/1970e28993e241e9b09b5487838980fd.webp');
INSERT INTO `goodslist` VALUES ('109', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/0e93890e4b9b4f699b979174e123ba9f.webp', '泰国·TAIHI泰嗨 乳胶面包枕', '236', '112', null, 'bedding', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/0e93890e4b9b4f699b979174e123ba9f.webp');
INSERT INTO `goodslist` VALUES ('110', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/c3207fa2f7c240b596594e6696668b6c.webp', 'TAIHI泰嗨 泰国原装进口乳胶美容平面枕', '229', '156', null, 'bedding', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/c3207fa2f7c240b596594e6696668b6c.webp');
INSERT INTO `goodslist` VALUES ('111', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/fe3518fb5c1f43568a6dab2292eb0641.webp', 'TAIHI泰嗨 乳胶美容按摩枕', '225', '117', null, 'bedding', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/fe3518fb5c1f43568a6dab2292eb0641.webp');
INSERT INTO `goodslist` VALUES ('112', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/29579d6d935c44d3af60cffb137deb60.webp', 'TAIHI泰嗨 泰国原装进口乳胶 靠枕', '205', '241', null, 'bedding', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/29579d6d935c44d3af60cffb137deb60.webp');
INSERT INTO `goodslist` VALUES ('113', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/a8c8dbfbeaac4a029a8160633ec4ff86.webp', '一梦儿童乳胶枕芯42*26cm 1只装', '65', '689', null, 'bedding', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/a8c8dbfbeaac4a029a8160633ec4ff86.webp');
INSERT INTO `goodslist` VALUES ('114', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/7626eac0954b47c1a1bfd0bef7c41651.webp', 'Royal Latex泰国皇家乳胶单人床垫100*200cm', '899', '113', null, 'bedding', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/7626eac0954b47c1a1bfd0bef7c41651.webp');
INSERT INTO `goodslist` VALUES ('115', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/6fd2a905ee544282be903bef54cc1bed.webp', 'Royal Latex泰国皇家乳胶单人床垫120*200cm', '1159', '655', null, 'bedding', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/6fd2a905ee544282be903bef54cc1bed.webp');
INSERT INTO `goodslist` VALUES ('116', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/1e678dd964374adda1b90d974919d832.webp', 'Royal Latex泰国皇家乳胶单人床垫150*200cm', '1299', '6', null, 'bedding', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/1e678dd964374adda1b90d974919d832.webp');
INSERT INTO `goodslist` VALUES ('117', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/8b175373e66d4cd88cff42e4c5e9ad59.webp', 'Royal Latex泰国皇家乳胶双人床垫180*200cm【规格可选】', '1459', '996', null, 'bedding', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/8b175373e66d4cd88cff42e4c5e9ad59.webp');
INSERT INTO `goodslist` VALUES ('118', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/67e30a6b1c9b4191a956f54ad029aae7.webp', 'Royal Latex泰国皇家乳胶双人床垫200*200cm', '2099', '898', null, 'bedding', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/67e30a6b1c9b4191a956f54ad029aae7.webp');
INSERT INTO `goodslist` VALUES ('119', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/994724ba7b6c4093840f6d1af56c81fb.webp', 'Royal Latex泰国皇家乳胶双人床垫200*220cm', '2299', '1000', null, 'bedding', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/994724ba7b6c4093840f6d1af56c81fb.webp');
INSERT INTO `goodslist` VALUES ('120', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/4b8ded9556694ec19ccf9c12ad673d28.webp', 'Royal Latex泰国皇家乳胶高低颗粒按摩枕头1个装', '198', '139', null, 'bedding', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/4b8ded9556694ec19ccf9c12ad673d28.webp');
INSERT INTO `goodslist` VALUES ('121', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/b03402a7304c48418d80538af935320e.webp', 'Royal Latex泰国皇家乳胶高低平滑按摩枕头1个装', '195', '177', null, 'bedding', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/b03402a7304c48418d80538af935320e.webp');
INSERT INTO `goodslist` VALUES ('122', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/f35a2e55c46e45fc91aab548c5eefa82.webp', 'Royal Latex泰国皇家乳胶颗粒按摩枕头1个装', '198', '178', null, 'bedding', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/f35a2e55c46e45fc91aab548c5eefa82.webp');
INSERT INTO `goodslist` VALUES ('123', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/66521f9dd2a042f3b18370bd1052a5cd.webp', 'Royal Latex泰国皇家乳胶平滑按摩枕头1个装', '198', '118', null, 'bedding', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/66521f9dd2a042f3b18370bd1052a5cd.webp');
INSERT INTO `goodslist` VALUES ('124', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/3d69ccabae38412cae327170fd497b62.webp', 'Royal Latex泰国皇家乳胶面包平滑按摩枕头 1个装', '198', '5', null, 'bedding', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/3d69ccabae38412cae327170fd497b62.webp');
INSERT INTO `goodslist` VALUES ('125', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/15a65751e70c4b0fad0cdde92e8f2875.webp', 'Royal Latex泰国皇家乳胶儿童枕53*26*7*9cm 1个装', '183', '181', null, 'bedding', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/15a65751e70c4b0fad0cdde92e8f2875.webp');
INSERT INTO `goodslist` VALUES ('126', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/9f0ddf0fdd1f46b5bf35fbddc431893c.webp', 'Royal Latex泰国皇家乳胶汽车脖颈枕29*20*9cm 1个装', '139', '117', null, 'bedding', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/9f0ddf0fdd1f46b5bf35fbddc431893c.webp');
INSERT INTO `goodslist` VALUES ('127', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/8419cda0b47644bfa86f7d02e009fd93.webp', 'Royal Latex泰国皇家乳胶靠垫39*35*10cm 1个装', '183', '7778', null, 'bedding', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/8419cda0b47644bfa86f7d02e009fd93.webp');
INSERT INTO `goodslist` VALUES ('128', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/a6586a864d044bd4b606f9bb48bcf9b6.webp', 'Royal Latex泰国皇家乳胶坐垫45*45*5cm 1个装', '183', '651', null, 'bedding', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/a6586a864d044bd4b606f9bb48bcf9b6.webp');
INSERT INTO `goodslist` VALUES ('129', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e8f6/a64c1c88d0a94d748d8092c297850df5.jpg', '熙源坊天然按摩颗粒乳胶枕40*60cm 【款式可选】', '139', '31', null, 'bedding', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e8f6/a64c1c88d0a94d748d8092c297850df5.jpg');
INSERT INTO `goodslist` VALUES ('130', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/01e1b449cfbd4572a2daa5686e616d21.webp', '一梦颗粒按摩乳胶枕芯一对装', '159', '150', null, 'bedding', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/01e1b449cfbd4572a2daa5686e616d21.webp');
INSERT INTO `goodslist` VALUES ('131', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/31856a7e0f404adc84af1771fb53243c.webp', '一梦泰国原装乳胶狼牙枕', '259', '126', null, 'bedding', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/31856a7e0f404adc84af1771fb53243c.webp');
INSERT INTO `goodslist` VALUES ('132', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/1671b445026b461c8f760e1d2b1891d4.webp', '诺伊曼 乳胶枕乳胶', '259', '124', null, 'bedding', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/1671b445026b461c8f760e1d2b1891d4.webp');
INSERT INTO `goodslist` VALUES ('133', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/30ee9a59528c4013bfc16910b661759c.webp', '欣翔乳胶波浪枕56*36*10/12cm 1个装', '298', '112', null, 'bedding', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/30ee9a59528c4013bfc16910b661759c.webp');
INSERT INTO `goodslist` VALUES ('134', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/44cc53b83595450fb61577e6b1fd6e0e.webp', '欣翔乳胶狼牙枕56*36*10/8cm 1个装', '298', '985', null, 'bedding', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/44cc53b83595450fb61577e6b1fd6e0e.webp');
INSERT INTO `goodslist` VALUES ('135', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/29bc1361a5e4471a9ea833019cb8233c.webp', '欣翔乳胶面包枕60*40*8cm 1个装', '298', '117', null, 'bedding', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/29bc1361a5e4471a9ea833019cb8233c.webp');
INSERT INTO `goodslist` VALUES ('136', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/351aa643976e41539e4c5f7260dc4e66.webp', '欣翔贝满国产平板小孔乳胶床垫180*200*7.5cm 含胶量50%', '1259', '241', null, 'bedding', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/351aa643976e41539e4c5f7260dc4e66.webp');
INSERT INTO `goodslist` VALUES ('137', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/74d60ab08b57444b978cbe3eb6cbb019.webp', '欣翔贝满国产平板小孔乳胶床垫150*200*7.5cm 含胶量50%', '1099', '211', null, 'bedding', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/74d60ab08b57444b978cbe3eb6cbb019.webp');
INSERT INTO `goodslist` VALUES ('138', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/e004fe6c404747f2906aef6185506b54.webp', '欣翔贝满国产平板小孔乳胶床垫200*200*10cm 含胶量50%', '1899', '113', null, 'bedding', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/e004fe6c404747f2906aef6185506b54.webp');
INSERT INTO `goodslist` VALUES ('139', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/09114130998648ae99ed4f11fd8b761f.webp', 'POSTURETEMP颐家丝丹按摩乳胶枕PT-001 一只装', '288', '632', null, 'bedding', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/09114130998648ae99ed4f11fd8b761f.webp');
INSERT INTO `goodslist` VALUES ('140', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/10d0c26b3da447f696a173f69b930298.webp', 'POSTURETEMP颐家丝丹按摩乳胶枕PT-002 一只装', '299', '945', null, 'bedding', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/10d0c26b3da447f696a173f69b930298.webp');
INSERT INTO `goodslist` VALUES ('141', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/7fa56daaa8ff424fbd69b19d1c60a10d.webp', 'POSTURETEMP颐家丝丹乳胶月牙枕 一只装', '299', '622', null, 'bedding', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/7fa56daaa8ff424fbd69b19d1c60a10d.webp');
INSERT INTO `goodslist` VALUES ('142', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/0523c5f4fa2c410d9bec721c02eb5a3d.webp', 'POSTURETEMP颐家丝丹大颗粒按摩枕PT-004 一只装', '299', '484', null, 'bedding', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/0523c5f4fa2c410d9bec721c02eb5a3d.webp');
INSERT INTO `goodslist` VALUES ('143', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/aa95a7d12f7f4a17bd48a228fd517058.webp', 'POSTURETEMP颐家丝丹双人乳胶床垫 【尺寸可选】', '1686', '360', null, 'bedding', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/aa95a7d12f7f4a17bd48a228fd517058.webp');
INSERT INTO `goodslist` VALUES ('144', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/1b9197dcb387422bb467ad99b1a30914.webp', '【赠枕套】考拉工厂店 泰国进口儿童青少年天然乳胶枕', '219', '139', null, 'bedding', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/1b9197dcb387422bb467ad99b1a30914.webp');
INSERT INTO `goodslist` VALUES ('145', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/15d47f05888f4808b52f1809ec177abc.webp', '考拉工厂店 泰国进口天然乳胶枕', '199', '177', null, 'bedding', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e9bf/15d47f05888f4808b52f1809ec177abc.webp');

-- ----------------------------
-- Table structure for index_goods
-- ----------------------------
DROP TABLE IF EXISTS `index_goods`;
CREATE TABLE `index_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url2` varchar(255) DEFAULT NULL,
  `﻿url` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `kind` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_goods
-- ----------------------------
INSERT INTO `index_goods` VALUES ('1', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2c05a/f1dcc615c95a48b8a1c843dea6d9f445.jpg', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2c05a/f1dcc615c95a48b8a1c843dea6d9f445.jpg', '一梦颗粒按摩乳胶枕芯一只装', '69.9', 'bedding');
INSERT INTO `index_goods` VALUES ('2', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/29ae8/7078a27904d84c269d810b60f2a402fc.jpg', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/29ae8/7078a27904d84c269d810b60f2a402fc.jpg', '泰嗨 乳胶U型枕旅行枕 乳胶枕 U型枕(颜色可选)', '185', 'bedding');
INSERT INTO `index_goods` VALUES ('3', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2e771/71fd4d2d765e4a7e9cd3c635460c0612.jpg', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2e771/71fd4d2d765e4a7e9cd3c635460c0612.jpg', '欣翔贝满国产平板小孔乳胶床垫150*200*7.5...', '1535', 'bedding');
INSERT INTO `index_goods` VALUES ('4', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2c1f6/67297440c79f49ceba95f0e12d82f37a.jpg', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2c1f6/67297440c79f49ceba95f0e12d82f37a.jpg', 'Royal Latex泰国皇家乳胶双人床垫180*...', '1459', 'bedding');
INSERT INTO `index_goods` VALUES ('5', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2c1ed/fcb428a5225741eb8ef1a9f2f0da003e.jpg', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2c1ed/fcb428a5225741eb8ef1a9f2f0da003e.jpg', 'Royal Latex泰国皇家乳胶高低颗粒按摩枕头...', '258', 'bedding');
INSERT INTO `index_goods` VALUES ('6', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2c38a/ab8ebf16162d472a933ef5e90eef3481.jpg', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2c38a/ab8ebf16162d472a933ef5e90eef3481.jpg', '美的（Midea）电压力锅智能预约家用高压锅 一锅...', '519', 'appliance');
INSERT INTO `index_goods` VALUES ('7', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2bfea/3aea81ea9ed04be6824a8d551dcbbe8c.jpg', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2bfea/3aea81ea9ed04be6824a8d551dcbbe8c.jpg', 'DEBO德铂 路卡斯不锈钢双层多用锅汤锅蒸锅 DE...', '49.9', 'appliance');
INSERT INTO `index_goods` VALUES ('8', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/29c74/35693945aaf9429193b3634467e93885.jpg', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/29c74/35693945aaf9429193b3634467e93885.jpg', 'longde龙的 1.8L煮水壶电煮锅LD-YS1...', '99', 'appliance');
INSERT INTO `index_goods` VALUES ('9', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2c381/37d74890dfc04ee4b18f652588f1d6ca.jpg', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2c381/37d74890dfc04ee4b18f652588f1d6ca.jpg', '炊大皇32cm平底锅炒锅不粘锅 健康无油烟煎锅 燃...', '109', 'appliance');
INSERT INTO `index_goods` VALUES ('10', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2c1fa/b5d95cff852a4c679bff15a599dcd0e3.jpg', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2c1fa/b5d95cff852a4c679bff15a599dcd0e3.jpg', '鼎匠26CM古法平底锅家用老铁煎锅铸铁锅燃气灶电磁...', '279', 'appliance');
INSERT INTO `index_goods` VALUES ('11', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2bf86/a84d0d4e6809447fb88d7f09a7ba62f7.jpg', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2bf86/a84d0d4e6809447fb88d7f09a7ba62f7.jpg', '威斯健辅酶Q10软胶囊0.3g*60粒/瓶 增强免...', '28', 'snacks');
INSERT INTO `index_goods` VALUES ('12', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2c0c9/ad7ec149401a4a788563eb6b70320c80.jpg', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2c0c9/ad7ec149401a4a788563eb6b70320c80.jpg', '彭之道小青柑普洱茶熟茶陈皮桔柑普茶叶500g/罐', '95', 'snacks');
INSERT INTO `index_goods` VALUES ('13', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2c18e/13c859fe1ace436faeed13206901c23a.jpg', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2c18e/13c859fe1ace436faeed13206901c23a.jpg', '新鲜干货银耳无硫雪耳100g', '19', 'snacks');
INSERT INTO `index_goods` VALUES ('14', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2c17e/d85d6f1546994575825183cf853a8a4a.jpg', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2c17e/d85d6f1546994575825183cf853a8a4a.jpg', '彭之道大麦若叶青汁粉200g/罐', '29', 'snacks');
INSERT INTO `index_goods` VALUES ('15', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2c1f5/8ccea6659a994fff8f79b906a110dad3.jpg', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2c1f5/8ccea6659a994fff8f79b906a110dad3.jpg', '黑木耳土特产干货250g', '28', 'snacks');
INSERT INTO `index_goods` VALUES ('16', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2e69c/4d715bd28f304320b4f990dc100ca931.jpg', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2e69c/4d715bd28f304320b4f990dc100ca931.jpg', '阿龍 山东东阿红枣枸杞即食阿胶糕500g/盒 铁盒...', '49', 'snacks');
INSERT INTO `index_goods` VALUES ('17', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2bf86/7025580a58724f54ae57e9e07d187813.jpg', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2bf86/7025580a58724f54ae57e9e07d187813.jpg', '威斯健 灵芝孢子粉胶囊300mg*60粒/瓶 增强...', '76', 'snacks');
INSERT INTO `index_goods` VALUES ('18', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/29ccf/1563e3292f8e4ed0814dd160a270b3f5.jpg', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/29ccf/1563e3292f8e4ed0814dd160a270b3f5.jpg', '天朝上品 贵人酒 柔和酱香型白酒礼盒（500ml*...', '348', 'wine');
INSERT INTO `index_goods` VALUES ('19', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2c3d6/ea52bbe82b5f46c18f09dd79c249a0bd.jpg', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2c3d6/ea52bbe82b5f46c18f09dd79c249a0bd.jpg', '汾酒集团百年窖龄V20典藏组', '398', 'wine');
INSERT INTO `index_goods` VALUES ('20', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2c24a/ca2bd9cb548d4752928a2dc5dc414a87.jpg', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2c24a/ca2bd9cb548d4752928a2dc5dc414a87.jpg', '法国原瓶进口法莱雅城堡金鐏干红葡萄酒750ml*6...', '248', 'wine');
INSERT INTO `index_goods` VALUES ('21', 'http://haitao.nos.netease.com/915ae82e18014f85b4c8f808a6f029b71537365616134jm97slbm11537.jpg', 'http://haitao.nos.netease.com/915ae82e18014f85b4c8f808a6f029b71537365616134jm97slbm11537.jpg', '考拉工厂店 意大利甜白起泡酒组合', '169', 'wine');
INSERT INTO `index_goods` VALUES ('22', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2c3e5/91592966d40f440d9932db7c796b5c2e.jpg', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2c3e5/91592966d40f440d9932db7c796b5c2e.jpg', '澳洲原装进口 奔富乐蒂山BEN407干红葡萄酒', '398', 'wine');
INSERT INTO `index_goods` VALUES ('23', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2c250/0b4cc274466748fb8fd0f2f78e128ef3.jpg', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2c250/0b4cc274466748fb8fd0f2f78e128ef3.jpg', '五粮液股份公司五粮PTVIP珍藏级 500ml*6...', '998', 'wine');
INSERT INTO `index_goods` VALUES ('24', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2e6a2/4f4a3139673c4e4ab3e609a90e2b2c02.jpg', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2e6a2/4f4a3139673c4e4ab3e609a90e2b2c02.jpg', '【赵薇梦陇酒庄】法国波尔多佳酿 一生一世原瓶原装进...', '1068', 'wine');
INSERT INTO `index_goods` VALUES ('25', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2e776/1889cfb2a7744d71a2d4a9fdbf5cf5d9.jpg', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2e776/1889cfb2a7744d71a2d4a9fdbf5cf5d9.jpg', '意大利进口罗萨露拉-三弯月TRILUNA干白葡萄酒...', '535', 'wine');
INSERT INTO `index_goods` VALUES ('26', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2c31e/2ee262c170334f4d9c376a011df711f6.jpg', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2c31e/2ee262c170334f4d9c376a011df711f6.jpg', '爵菲庄园庄主特选赤霞珠干红750ml//瓶*12', '289', 'wine');
INSERT INTO `index_goods` VALUES ('27', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2730c/70147d5725144e9883499bacb669119d.jpg', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2730c/70147d5725144e9883499bacb669119d.jpg', '莫洛琪 蜗牛霜豪华组(精华霜55g*3+洁面乳50...', '128', 'skin');
INSERT INTO `index_goods` VALUES ('28', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/29c66/5e29c1987c0845b0bd3104b624aa683e.jpg', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/29c66/5e29c1987c0845b0bd3104b624aa683e.jpg', '韩纪 马油倍润保湿五件套（洁面+精华水+精华乳+精...', '69', 'skin');
INSERT INTO `index_goods` VALUES ('29', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2c249/771466be769e4dad8e646a4bdff096e0.jpg', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2c249/771466be769e4dad8e646a4bdff096e0.jpg', '香港直邮 新西兰·TOPDHG山羊奶角鲨烷修护维稳...', '90', 'skin');
INSERT INTO `index_goods` VALUES ('30', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2c1f7/517156ccb8f84b4f87655cefba4e39fd.jpg', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2c1f7/517156ccb8f84b4f87655cefba4e39fd.jpg', '泰国·PATAR维生素C咀嚼片1000粒/瓶 香橙...', '99', 'skin');
INSERT INTO `index_goods` VALUES ('31', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2e7d1/383e7cc324ac46e695b47c20dac17f04.jpg', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2e7d1/383e7cc324ac46e695b47c20dac17f04.jpg', '【香港直邮】日本Naris up 娜丽丝防晒喷雾 ...', '53', 'skin');
INSERT INTO `index_goods` VALUES ('32', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/29ba6/85f5b915e6c940ac8ae01e1e028f581a.jpg', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/29ba6/85f5b915e6c940ac8ae01e1e028f581a.jpg', '澳大利亚·D&X多喜来维骨素90粒*3瓶 赠维骨素...', '274', 'overseas');
INSERT INTO `index_goods` VALUES ('33', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/275b7/494865988c914ff1ba3b899b96363313.jpg', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/275b7/494865988c914ff1ba3b899b96363313.jpg', '澳大利亚·D&X 多喜来 袋鼠精 90粒/瓶', '65', 'overseas');
INSERT INTO `index_goods` VALUES ('34', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2c1df/05c22431b74647bdbdc18b04d62f8f22.jpg', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2c1df/05c22431b74647bdbdc18b04d62f8f22.jpg', '香港直邮 泰国·ATREUS VC亮白清透爽肤水5...', '58', 'overseas');
INSERT INTO `index_goods` VALUES ('35', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2c187/0534db9daef547e5afbb9abca2c779fe.jpg', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2c187/0534db9daef547e5afbb9abca2c779fe.jpg', '泰国·LANNA兰纳足贴10片/包*5包', '72', 'overseas');
INSERT INTO `index_goods` VALUES ('36', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2c122/e13e640b29844cab8f02e4265ff02945.jpg', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2c122/e13e640b29844cab8f02e4265ff02945.jpg', '【海外直邮】日本·DHC橄榄唇润膏1.5g/支', '65', 'overseas');
INSERT INTO `index_goods` VALUES ('37', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/273d1/65c66aeec52942ffa87f8cf9230a993f.jpg', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/273d1/65c66aeec52942ffa87f8cf9230a993f.jpg', '千色密码 清爽风格东陵玉10mm手链送合金小配件', '63', 'jewel');
INSERT INTO `index_goods` VALUES ('38', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2c2af/a198a58a8a4c4bd88b919aa33c8538e4.jpg', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2c2af/a198a58a8a4c4bd88b919aa33c8538e4.jpg', '银镶嵌粉玉髓复古平安扣', '159', 'jewel');
INSERT INTO `index_goods` VALUES ('39', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/29950/c5f84ec6a8da4f8d83dc8404486fd7fb.jpg', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/29950/c5f84ec6a8da4f8d83dc8404486fd7fb.jpg', '缘喜金玉 精致两用戒指翡翠吊坠 （附证书）', '128', 'jewel');
INSERT INTO `index_goods` VALUES ('40', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2c0c8/e28a7ba2a397404cbdb0a95a9e88e006.jpg', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2c0c8/e28a7ba2a397404cbdb0a95a9e88e006.jpg', '芭法娜玉缘冰种石英岩玉翠色手镯冰透浅绿色手镯', '168', 'jewel');
INSERT INTO `index_goods` VALUES ('41', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2e6a9/b8366eaffc7543e1a4f2bc94abae40e1.jpg', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2e6a9/b8366eaffc7543e1a4f2bc94abae40e1.jpg', '娜饰福玉手镯金丝玉手镯女款玉镯子送证书', '119', 'jewel');
INSERT INTO `index_goods` VALUES ('42', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2e7cd/b2b11419111643b3a135fba25bea700c.jpg', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2e7cd/b2b11419111643b3a135fba25bea700c.jpg', '黛熙月夏季新品短袖T恤印花妈妈装上衣ybf9147', '98', 'wear');
INSERT INTO `index_goods` VALUES ('43', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2e7dc/0adcd6844a19477c85d3e7bd30922cfd.jpg', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2e7dc/0adcd6844a19477c85d3e7bd30922cfd.jpg', '千百怡恋大码短款上衣简约T恤Q8TT1360CF', '59.9', 'wear');
INSERT INTO `index_goods` VALUES ('44', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2e7cd/6e4f9c06b856437197dd329c90e7f891.jpg', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2e7cd/6e4f9c06b856437197dd329c90e7f891.jpg', '黛熙月夏季新品真丝印花短袖T恤桑蚕丝上衣yz991...', '478', 'wear');
INSERT INTO `index_goods` VALUES ('45', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2e7d2/5f7e1c05fd534caf8aa4e4b530a65986.jpg', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2e7d2/5f7e1c05fd534caf8aa4e4b530a65986.jpg', '茜韵婡几何宽松T恤短袖圆领上衣XCTT1118', '69.9', 'wear');
INSERT INTO `index_goods` VALUES ('46', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2e778/5bb65d222bbb42e6987a5cbd29a0fd28.jpg', 'https://image-family.huijiayou.cn/cfiles/staticfiles/upload/2e778/5bb65d222bbb42e6987a5cbd29a0fd28.jpg', '黛熙月夏季新品七分袖T恤纯色上衣ps713', '238', 'wear');

-- ----------------------------
-- Table structure for index_goodslist
-- ----------------------------
DROP TABLE IF EXISTS `index_goodslist`;
CREATE TABLE `index_goodslist` (
  `imgurl2` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `﻿imgurl` varchar(255) DEFAULT NULL,
  `kind` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_goodslist
-- ----------------------------
INSERT INTO `index_goodslist` VALUES ('https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e834/3e9df409fd7a410da14dbe57b30a56d8.jpg', '1', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e834/3e9df409fd7a410da14dbe57b30a56d8.jpg', 'bedding');
INSERT INTO `index_goodslist` VALUES ('https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e834/f972ce1993bb4bd8be6682d81ecede8c.jpg', '2', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e834/f972ce1993bb4bd8be6682d81ecede8c.jpg', 'appliance');
INSERT INTO `index_goodslist` VALUES ('https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e834/273540e4e2b945e9af01024440232b30.jpg', '3', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e834/273540e4e2b945e9af01024440232b30.jpg', 'snacks');
INSERT INTO `index_goodslist` VALUES ('https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e835/ae6f653b8c7840f39816f040a29f2e41.jpg', '4', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e835/ae6f653b8c7840f39816f040a29f2e41.jpg', 'wine');
INSERT INTO `index_goodslist` VALUES ('https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e838/cea58940d5a94be5b08226104269c218.jpg', '5', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e838/cea58940d5a94be5b08226104269c218.jpg', 'skin');
INSERT INTO `index_goodslist` VALUES ('https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e838/3b050f1f5f744b3587b0a079845eeea8.jpg', '6', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e838/3b050f1f5f744b3587b0a079845eeea8.jpg', 'overseas');
INSERT INTO `index_goodslist` VALUES ('https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e835/20ae7c7530c6479d895dba24add5d32a.jpg', '7', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e835/20ae7c7530c6479d895dba24add5d32a.jpg', 'jewel');
INSERT INTO `index_goodslist` VALUES ('https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e835/c925ce5c3ebb4f26af959d9d8ea458c1.jpg', '8', 'https://image-family.huijiayou.cn/cfiles/staticfiles/imzoom/2e835/c925ce5c3ebb4f26af959d9d8ea458c1.jpg', 'wear');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `userid` bigint(11) NOT NULL,
  `userpswd` varchar(255) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=1366666667 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('13555555554', '1234566');
INSERT INTO `users` VALUES ('13555555555', '123');
INSERT INTO `users` VALUES ('13555555553', '123456');
INSERT INTO `users` VALUES ('13666666666', '123456');
INSERT INTO `users` VALUES ('13666666668', '22222222');

-- ----------------------------
-- Table structure for user_goods
-- ----------------------------
DROP TABLE IF EXISTS `user_goods`;
CREATE TABLE `user_goods` (
  `userid` bigint(11) NOT NULL,
  `goodsId` bigint(20) DEFAULT NULL,
  `goodnum` int(11) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_goods
-- ----------------------------
INSERT INTO `user_goods` VALUES ('13666666666', '7016139224', '1');
INSERT INTO `user_goods` VALUES ('13555555555', '7016139223', '1');
INSERT INTO `user_goods` VALUES ('13555555555', '7016139224', '2');
INSERT INTO `user_goods` VALUES ('13666666666', '7016139223', '1');
INSERT INTO `user_goods` VALUES ('13555555555', '7016139221', '3');
SET FOREIGN_KEY_CHECKS=1;
