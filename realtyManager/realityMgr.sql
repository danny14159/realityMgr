/*
Navicat MySQL Data Transfer

Source Server         : 115.28.158.206
Source Server Version : 50548
Source Host           : 115.28.158.206:3306
Source Database       : realityMgr

Target Server Type    : MYSQL
Target Server Version : 50548
File Encoding         : 65001

Date: 2016-06-18 22:05:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_building
-- ----------------------------
DROP TABLE IF EXISTS `tb_building`;
CREATE TABLE `tb_building` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `region` varchar(255) DEFAULT NULL COMMENT '所在区域',
  `name` varchar(255) DEFAULT NULL COMMENT '楼盘名称',
  `address` varchar(255) DEFAULT NULL COMMENT '项目地址',
  `code` varchar(255) DEFAULT NULL COMMENT '项目编码',
  `building_area` varchar(255) DEFAULT NULL COMMENT '建筑面积',
  `total_area` varchar(255) DEFAULT NULL COMMENT '占地面积',
  `green_rate` varchar(255) DEFAULT NULL COMMENT '绿化率',
  `residences` int(11) DEFAULT NULL COMMENT '总户数',
  `open_date` datetime DEFAULT NULL COMMENT '开盘日期',
  `sale_date` datetime DEFAULT NULL COMMENT '预售日期',
  `finish_date` datetime DEFAULT NULL COMMENT '竣工日期',
  `license_account` varchar(255) DEFAULT NULL COMMENT '营业执照注册账号',
  `qualification_license` varchar(255) DEFAULT NULL COMMENT '资质证书账号',
  `legal_person` varchar(255) DEFAULT NULL COMMENT '法人',
  `legal_person_phone` varchar(255) DEFAULT NULL COMMENT '法人联系电话',
  `legal_person_postcode` varchar(255) DEFAULT NULL COMMENT '法人邮编',
  `intro` varchar(255) DEFAULT NULL COMMENT '楼盘介绍',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='楼盘';

-- ----------------------------
-- Records of tb_building
-- ----------------------------
INSERT INTO `tb_building` VALUES ('8', '长沙', '金碧文苑', '长沙市天心区金盆岭路2号', '001', '865960', '700000', '42.3', '6560', '2016-04-19 00:00:00', '2016-04-19 00:00:00', '2016-04-05 00:00:00', '130682600143273', 'B2554023010301', '张召忠', '13258960088', '410000', '小高层、包括精装、简装。', '无');
INSERT INTO `tb_building` VALUES ('9', '长沙市', '德仁俊园', '长沙市芙蓉区韶山北路74号', '2', '899320', '479000', '37', '612', '2016-06-01 00:00:00', '2016-06-01 00:00:00', '2016-05-20 00:00:00', '679105805381993', '2320051110024', '谢会法', '18367917586', '410000', '高层、写字楼', '无');

-- ----------------------------
-- Table structure for tb_customer
-- ----------------------------
DROP TABLE IF EXISTS `tb_customer`;
CREATE TABLE `tb_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `phone` varchar(255) DEFAULT NULL COMMENT '电话',
  `sex` enum('男','女') DEFAULT NULL COMMENT '性别',
  `address` varchar(255) DEFAULT NULL COMMENT '现住地',
  `occupation` varchar(255) DEFAULT NULL COMMENT '职业',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='客户';

-- ----------------------------
-- Records of tb_customer
-- ----------------------------
INSERT INTO `tb_customer` VALUES ('10', '李惠', '15574869605', '女', '长沙理工大学金盆岭', '老师');
INSERT INTO `tb_customer` VALUES ('11', '李晨', '15902775230', '男', '长沙理工大学金盆岭', '教师');
INSERT INTO `tb_customer` VALUES ('12', '史亚旭', '15574820945', '男', '长沙市天心区白沙花园', '销售');
INSERT INTO `tb_customer` VALUES ('13', '回繁宁', '18390819778', '男', '长沙市芙蓉区五一华府', '金融');
INSERT INTO `tb_customer` VALUES ('14', '法治华', '15991458936', '女', '长沙市雨花区城南故事', '餐饮');
INSERT INTO `tb_customer` VALUES ('15', '李季澳', '15588292016', '男', '长沙市天心区金盆岭', '经纪人');

-- ----------------------------
-- Table structure for tb_discount
-- ----------------------------
DROP TABLE IF EXISTS `tb_discount`;
CREATE TABLE `tb_discount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `degin_time` datetime DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `discount` varchar(255) DEFAULT NULL COMMENT '几折',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='折扣';

-- ----------------------------
-- Records of tb_discount
-- ----------------------------
INSERT INTO `tb_discount` VALUES ('1', '2016-04-20 00:00:00', '2016-04-29 00:00:00', '9.5');
INSERT INTO `tb_discount` VALUES ('3', '2016-04-30 00:00:00', '2016-05-03 00:00:00', '8.8');
INSERT INTO `tb_discount` VALUES ('4', '2016-05-04 00:00:00', '2016-05-31 00:00:00', '9.8');

-- ----------------------------
-- Table structure for tb_house
-- ----------------------------
DROP TABLE IF EXISTS `tb_house`;
CREATE TABLE `tb_house` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(255) DEFAULT NULL COMMENT '房屋位置',
  `building_no` varchar(255) DEFAULT NULL COMMENT '幢号',
  `unit_no` varchar(255) DEFAULT NULL COMMENT '单元号',
  `house_no` varchar(255) DEFAULT NULL COMMENT '房号',
  `house_type_id` int(11) DEFAULT NULL COMMENT '房型id，外键',
  `height` int(11) DEFAULT NULL COMMENT '层高',
  `area` varchar(255) DEFAULT NULL COMMENT '建筑面积',
  `inner_area` varchar(255) DEFAULT NULL COMMENT '套内面积',
  `single_price` decimal(10,0) DEFAULT NULL COMMENT '单价',
  `delivery_time` datetime DEFAULT NULL COMMENT '交楼时间',
  `decorate_detail` varchar(255) DEFAULT NULL COMMENT '装饰详情',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='房屋';

-- ----------------------------
-- Records of tb_house
-- ----------------------------
INSERT INTO `tb_house` VALUES ('5', '金碧文苑', '1', '2', '202', '5', '4', '102', '100', '360000', '2016-04-09 00:00:00', '精装', '无');
INSERT INTO `tb_house` VALUES ('6', '金碧文苑', '2', '3', '1802', '1', '4', '182', '180', '860000', '2016-04-10 00:00:00', '简装', '无');
INSERT INTO `tb_house` VALUES ('7', '金碧文苑', '10', '3', '1501', '3', '4', '128', '122', '540000', '2016-05-09 00:00:00', '简装', '无');

-- ----------------------------
-- Table structure for tb_house_type
-- ----------------------------
DROP TABLE IF EXISTS `tb_house_type`;
CREATE TABLE `tb_house_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `drawing_room` int(11) DEFAULT NULL COMMENT '客厅',
  `balcony` int(11) DEFAULT NULL COMMENT '阳台',
  `store_room` int(11) DEFAULT NULL COMMENT '储藏室',
  `loft` int(11) DEFAULT NULL COMMENT '阁楼',
  `bedroom` int(11) DEFAULT NULL COMMENT '卧室',
  `restroom` int(11) DEFAULT NULL COMMENT '卫生间',
  `garden` int(11) DEFAULT NULL COMMENT '入户花园',
  `kitchen` int(11) DEFAULT NULL COMMENT '厨房',
  `house_type` enum('422','421','322','321','121','111','221','211') DEFAULT NULL COMMENT '套型',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `tb_house_id` int(11) DEFAULT NULL COMMENT '所属楼盘',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='房型';

-- ----------------------------
-- Records of tb_house_type
-- ----------------------------
INSERT INTO `tb_house_type` VALUES ('1', '2', '1', '1', '1', '4', '1', '1', '1', '421', '422', '8');
INSERT INTO `tb_house_type` VALUES ('3', '2', '2', '1', '0', '3', '2', '0', '1', '322', '322', '8');
INSERT INTO `tb_house_type` VALUES ('4', '1', '1', '1', '0', '2', '1', '0', '1', '211', '211', '8');
INSERT INTO `tb_house_type` VALUES ('5', '1', '1', '1', '0', '3', '2', '0', '1', '321', '321', '8');
INSERT INTO `tb_house_type` VALUES ('6', '1', '1', '0', '0', '4', '2', '0', '1', '421', '421', '9');

-- ----------------------------
-- Table structure for tb_order
-- ----------------------------
DROP TABLE IF EXISTS `tb_order`;
CREATE TABLE `tb_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '合同编号',
  `sign_time` datetime DEFAULT NULL COMMENT '签约日期',
  `client_id` int(11) DEFAULT NULL COMMENT '客户id',
  `client_name` varchar(255) DEFAULT NULL COMMENT '客户名称',
  `client_phone` varchar(255) DEFAULT NULL COMMENT '客户联系电话',
  `client_certifacate_type` varchar(255) DEFAULT NULL COMMENT '证件类型',
  `client_certifacate` varchar(255) DEFAULT NULL COMMENT '证件号码',
  `client_address` varchar(255) DEFAULT NULL COMMENT '客户地址',
  `client_remark` varchar(255) DEFAULT NULL COMMENT '客户备注',
  `house_id` int(11) DEFAULT NULL COMMENT '房屋id',
  `pay_method` varchar(255) DEFAULT NULL COMMENT '付款方式',
  `initial_payment` decimal(10,0) DEFAULT NULL COMMENT '首付款',
  `house_price` decimal(10,0) DEFAULT NULL COMMENT '实售房款',
  `loan_amount` decimal(10,0) DEFAULT NULL COMMENT '商贷金额',
  `loan_year` int(11) DEFAULT NULL COMMENT '商贷年限',
  `loan_bank` varchar(255) DEFAULT NULL COMMENT '商贷银行',
  `cpf_amount` decimal(10,0) DEFAULT NULL COMMENT '公积金金额',
  `cpf_year` int(11) DEFAULT NULL COMMENT '公积金年限',
  `cpf_bank` varchar(255) DEFAULT NULL COMMENT '公积金银行',
  `remark` varchar(255) DEFAULT NULL COMMENT '合同备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='订单';

-- ----------------------------
-- Records of tb_order
-- ----------------------------
INSERT INTO `tb_order` VALUES ('1', '2016-05-03 00:00:00', '10', '李惠', '15574869605', '身份证', '370985199304270085', '长沙理工大学金盆岭', '教师', '5', '信用卡', '50000', '360000', '100000', '10', '建设银行', '100000', '5', '建设银行', '无');
INSERT INTO `tb_order` VALUES ('2', '2016-05-03 00:00:00', '13', '回繁宁', '18390819778', '身份证', '370404199509730081', '长沙市芙蓉区五一华府', '金融', '6', '信用卡', '860000', '860000', '0', '0', '无', '0', '0', '无', '无');

-- ----------------------------
-- Table structure for tb_receipt
-- ----------------------------
DROP TABLE IF EXISTS `tb_receipt`;
CREATE TABLE `tb_receipt` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '单据编号',
  `date` datetime DEFAULT NULL COMMENT '收款日期',
  `method` varchar(255) DEFAULT NULL COMMENT '付款方式',
  `amount` decimal(10,0) DEFAULT NULL COMMENT '金额',
  `client_id` int(11) DEFAULT NULL COMMENT '客户id',
  `payee` varchar(255) DEFAULT NULL COMMENT '收款人',
  `manager` varchar(255) DEFAULT NULL COMMENT '现场主管',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='收据';

-- ----------------------------
-- Records of tb_receipt
-- ----------------------------
INSERT INTO `tb_receipt` VALUES ('1', '2016-05-03 00:00:00', '信用卡', '50000', '10', '褚佳傲', '褚佳傲');
INSERT INTO `tb_receipt` VALUES ('2', '2016-05-03 00:00:00', '信用卡', '860000', '13', '张子豪', '褚佳傲');

-- ----------------------------
-- Table structure for tb_schedule
-- ----------------------------
DROP TABLE IF EXISTS `tb_schedule`;
CREATE TABLE `tb_schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_time` datetime DEFAULT NULL COMMENT '预定时间',
  `client_id` int(11) DEFAULT NULL COMMENT '客户id',
  `house_id` int(11) DEFAULT NULL COMMENT '房屋id',
  `payed_money` varchar(255) DEFAULT NULL COMMENT '已交款',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='预定';

-- ----------------------------
-- Records of tb_schedule
-- ----------------------------
INSERT INTO `tb_schedule` VALUES ('4', '2016-04-30 00:00:00', '10', '5', '50000');
INSERT INTO `tb_schedule` VALUES ('6', '2016-05-03 00:00:00', '13', '6', '860000');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `username` varchar(255) DEFAULT NULL COMMENT '登录名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户';

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('12', '褚佳傲', 'cja', '123');
INSERT INTO `tb_user` VALUES ('13', '张子豪', 'zzh', '123');
INSERT INTO `tb_user` VALUES ('14', '任冠青', 'rgq', '123');
INSERT INTO `tb_user` VALUES ('15', '陈鹏', 'cp', '123');
INSERT INTO `tb_user` VALUES ('16', '徐晓彤', 'xxt', '133');
