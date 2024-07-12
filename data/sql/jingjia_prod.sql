/*
Navicat MySQL Data Transfer

Source Server         : 192.168.2.241
Source Server Version : 80027
Source Host           : 192.168.2.241:3306
Source Database       : jingjia_prod

Target Server Type    : MYSQL
Target Server Version : 80027
File Encoding         : 65001

Date: 2024-07-12 11:51:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bid
-- ----------------------------
DROP TABLE IF EXISTS `bid`;
CREATE TABLE `bid` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `project_id` bigint DEFAULT NULL,
  `project_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `auction_status` bigint DEFAULT NULL,
  `upsetTotal_price` double DEFAULT NULL,
  `start_time` bigint DEFAULT NULL,
  `end_time` bigint DEFAULT NULL,
  `bidIncrMax_time` int DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `user_mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `org_id` bigint DEFAULT NULL,
  `org_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `order_num` int DEFAULT NULL,
  `apply_status` bigint DEFAULT NULL,
  `signUp_time` bigint DEFAULT NULL,
  `create_time` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1764845798341738497 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of bid
-- ----------------------------
INSERT INTO `bid` VALUES ('1763497710045888512', '1763497676986384384', '测试1001', '1507', '5070', '1709285640000', '1709285700000', '1', '1747059398934528000', '莉莉', '13880645089', null, '假日公司', null, '1803', '1709285592922', '1709285592935');
INSERT INTO `bid` VALUES ('1763499708208119808', '1763499670417440768', '测试1002', '1507', '10640', '1709286120000', '1709286180000', '1', '1747059398934528000', '莉莉', '13880645089', null, '假日公司', null, '1803', '1709286069301', '1709286069334');
INSERT INTO `bid` VALUES ('1763501116814786560', '1763500873318662144', '测试 无人拍111', '1507', '2520', '1709286420000', '1709286600000', '3', '1747059398934528000', '莉莉', '13880645089', null, '假日公司', null, '1803', '1709286405159', '1709286405172');
INSERT INTO `bid` VALUES ('1764456777224552448', '1764450632762130432', '1万吨成品砂石3%', '1507', '900000', '1709515200000', '1709515800000', '10', '1747160939783811072', '王先生', '18224418603', null, '青白江', null, '1803', '1709514252191', '1709514252369');
INSERT INTO `bid` VALUES ('1764456955377614848', '1764450632762130432', '1万吨成品砂石3%', '1507', '900000', '1709515200000', '1709515800000', '10', '1752145006631612416', '邓笔峰', '15982060279', null, '唐三藏贸易公司', null, '1803', '1709514294199', '1709514294844');
INSERT INTO `bid` VALUES ('1764456972029001728', '1764450632762130432', '1万吨成品砂石3%', '1507', '900000', '1709515200000', '1709515800000', '10', '1751788295852945408', '王丽', '13458984241', null, '测试公司', null, '1803', '1709514298796', '1709514298814');
INSERT INTO `bid` VALUES ('1764466680785797120', '1764466513923801088', '2万吨成品砂石', '1507', '1800000', '1709516700000', '1709516880000', '3', '1751788295852945408', '王丽', '13458984241', null, '测试公司', null, '1803', '1709516613552', '1709516613562');
INSERT INTO `bid` VALUES ('1764839403374510080', '1764839215079620608', '测试', '1507', '23400', '1709691805000', '1709692105000', '5', '1751788295852945408', '王丽', '13458984241', null, '测试公司', null, '1802', '1709605477029', '1709605477552');
INSERT INTO `bid` VALUES ('1764845224447705088', '1764839215079620608', '测试', '1507', '23400', '1709691805000', '1709692105000', '5', '1747059398934528000', '莉莉', '13880645089', null, '假日公司', null, '1802', '1709606865226', '1709606865404');
INSERT INTO `bid` VALUES ('1764845798341738496', '1764839215079620608', '测试', '1507', '23400', '1709691805000', '1709692105000', '5', '1752888172339032064', '张勇', '13330985096', null, '成都永城', null, '1802', '1709607002150', '1709607002232');

-- ----------------------------
-- Table structure for bid_record
-- ----------------------------
DROP TABLE IF EXISTS `bid_record`;
CREATE TABLE `bid_record` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `project_id` bigint DEFAULT NULL,
  `project_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `project_quantity` double DEFAULT NULL,
  `curUnit_price` double DEFAULT NULL,
  `curTotal_price` double DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `org_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `user_mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `bid_time` bigint DEFAULT NULL,
  `bid_status` bigint DEFAULT NULL,
  `order_num` int DEFAULT NULL,
  `create_time` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1764469401416892417 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of bid_record
-- ----------------------------
INSERT INTO `bid_record` VALUES ('1763497963927109632', '1763497676986384384', '测试1001', null, null, '5070', '1747059398934528000', '假日公司', '13880645089', '1709285653478', '1703', null, '1709285653478');
INSERT INTO `bid_record` VALUES ('1763499988580564992', '1763499670417440768', '测试1002', null, null, '10640', '1747059398934528000', '假日公司', '13880645089', '1709286136221', '1703', null, '1709286136221');
INSERT INTO `bid_record` VALUES ('1763500300297043968', '1763499670417440768', '测试1002', null, null, '15960', '1747059398934528000', '假日公司', '13880645089', '1709286210522', '1703', null, '1709286210522');
INSERT INTO `bid_record` VALUES ('1763500319276269568', '1763499670417440768', '测试1002', null, null, '21280', '1747059398934528000', '假日公司', '13880645089', '1709286215045', '1703', null, '1709286215045');
INSERT INTO `bid_record` VALUES ('1763500370522275840', '1763499670417440768', '测试1002', null, null, '26600', '1747059398934528000', '假日公司', '13880645089', '1709286227259', '1703', null, '1709286227259');
INSERT INTO `bid_record` VALUES ('1763500468719321088', '1763499670417440768', '测试1002', null, null, '31920', '1747059398934528000', '假日公司', '13880645089', '1709286250673', '1703', null, '1709286250673');
INSERT INTO `bid_record` VALUES ('1763500918818471936', '1763499670417440768', '测试1002', null, null, '37240', '1747059398934528000', '假日公司', '13880645089', '1709286357981', '1703', null, '1709286357981');
INSERT INTO `bid_record` VALUES ('1763501030349209600', '1763499670417440768', '测试1002', null, null, '42560', '1747059398934528000', '假日公司', '13880645089', '1709286384573', '1703', null, '1709286384573');
INSERT INTO `bid_record` VALUES ('1764460783208497152', '1764450632762130432', '1万吨成品砂石3%', null, null, '900000', '1751788295852945408', '测试公司', '13458984241', '1709515207675', '1703', null, '1709515207674');
INSERT INTO `bid_record` VALUES ('1764461338232356864', '1764450632762130432', '1万吨成品砂石3%', null, null, '910000', '1747160939783811072', '唐三藏贸易公司', '18224418603', '1709515339813', '1703', null, '1709515339813');
INSERT INTO `bid_record` VALUES ('1764461865259237376', '1764450632762130432', '1万吨成品砂石3%', null, null, '920000', '1752145006631612416', '唐三藏贸易公司', '15982060279', '1709515465464', '1703', null, '1709515465464');
INSERT INTO `bid_record` VALUES ('1764461882833371136', '1764450632762130432', '1万吨成品砂石3%', null, null, '930000', '1752145006631612416', '唐三藏贸易公司', '15982060279', '1709515469660', '1703', null, '1709515469660');
INSERT INTO `bid_record` VALUES ('1764462093563592704', '1764450632762130432', '1万吨成品砂石3%', null, null, '940000', '1751788295852945408', '测试公司', '13458984241', '1709515519896', '1703', null, '1709515519896');
INSERT INTO `bid_record` VALUES ('1764462939378548736', '1764450632762130432', '1万吨成品砂石3%', null, null, '950000', '1751788295852945408', '测试公司', '13458984241', '1709515721554', '1703', null, '1709515721554');
INSERT INTO `bid_record` VALUES ('1764463210599022592', '1764450632762130432', '1万吨成品砂石3%', null, null, '960000', '1752145006631612416', '唐三藏贸易公司', '15982060279', '1709515786220', '1703', null, '1709515786220');
INSERT INTO `bid_record` VALUES ('1764463288504025088', '1764450632762130432', '1万吨成品砂石3%', null, null, '970000', '1747160939783811072', '青白江', '18224418603', '1709515804792', '1703', null, '1709515804792');
INSERT INTO `bid_record` VALUES ('1764463574995959808', '1764450632762130432', '1万吨成品砂石3%', null, null, '980000', '1751788295852945408', '测试公司', '13458984241', '1709515873198', '1703', null, '1709515873198');
INSERT INTO `bid_record` VALUES ('1764467071766233088', '1764466513923801088', '2万吨成品砂石', null, null, '1800000', '1751788295852945408', '测试公司', '13458984241', '1709516706824', '1703', null, '1709516706824');
INSERT INTO `bid_record` VALUES ('1764467322602389504', '1764466513923801088', '2万吨成品砂石', null, null, '1820000', '1751788295852945408', '测试公司', '13458984241', '1709516766596', '1703', null, '1709516766596');
INSERT INTO `bid_record` VALUES ('1764467499979505664', '1764466513923801088', '2万吨成品砂石', null, null, '1840000', '1751788295852945408', '测试公司', '13458984241', '1709516808897', '1703', null, '1709516808897');
INSERT INTO `bid_record` VALUES ('1764467832982077440', '1764466513923801088', '2万吨成品砂石', null, null, '1860000', '1751788295852945408', '测试公司', '13458984241', '1709516888279', '1703', null, '1709516888279');
INSERT INTO `bid_record` VALUES ('1764468148225966080', '1764466513923801088', '2万吨成品砂石', null, null, '1880000', '1751788295852945408', '测试公司', '13458984241', '1709516963439', '1703', null, '1709516963439');
INSERT INTO `bid_record` VALUES ('1764468372709310464', '1764466513923801088', '2万吨成品砂石', null, null, '1900000', '1751788295852945408', '测试公司', '13458984241', '1709517016960', '1703', null, '1709517016960');
INSERT INTO `bid_record` VALUES ('1764468636212264960', '1764466513923801088', '2万吨成品砂石', null, null, '1920000', '1751788295852945408', '测试公司', '13458984241', '1709517079784', '1703', null, '1709517079784');
INSERT INTO `bid_record` VALUES ('1764468918006579200', '1764466513923801088', '2万吨成品砂石', null, null, '1940000', '1751788295852945408', '测试公司', '13458984241', '1709517146969', '1703', null, '1709517146969');
INSERT INTO `bid_record` VALUES ('1764469401416892416', '1764466513923801088', '2万吨成品砂石', null, null, '1960000', '1751788295852945408', '测试公司', '13458984241', '1709517262243', '1702', null, '1709517262243');

-- ----------------------------
-- Table structure for data_dict
-- ----------------------------
DROP TABLE IF EXISTS `data_dict`;
CREATE TABLE `data_dict` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `parent_id` bigint DEFAULT NULL,
  `multiple` bit(1) DEFAULT NULL,
  `mutex` int DEFAULT NULL,
  `order_num` int DEFAULT NULL,
  `selected` bit(1) DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `create_time` bigint DEFAULT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of data_dict
-- ----------------------------
INSERT INTO `data_dict` VALUES ('1', '园区', 'YQ', '0', '', null, '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('2', '企业类型', 'QYLX', '1', '', null, '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('3', '园区所属行业', 'Sndustry', '1', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('4', '员工规模', 'StaffScale', '1', '', '1', '1', '\0', '1', '1612346348703', null);
INSERT INTO `data_dict` VALUES ('5', '用户', 'USER', '0', '', '1', '2', '\0', '1', '1612346348896', null);
INSERT INTO `data_dict` VALUES ('6', '注册类型', 'RegType', '5', '', '1', '3', '\0', '1', '1612346348898', null);
INSERT INTO `data_dict` VALUES ('7', '申请中', 'Apply', '6', '', '1', '4', '\0', '1', '1612346348900', null);
INSERT INTO `data_dict` VALUES ('8', '正式用户', 'Office', '6', '', '1', '5', '\0', '1', '1612346348902', null);
INSERT INTO `data_dict` VALUES ('9', '未通过', 'NotPass', '6', '', '1', '6', '\0', '1', '1612346348903', null);
INSERT INTO `data_dict` VALUES ('10', '权限', 'PERMISSION', '0', '', '1', '7', '\0', '1', '1612346348905', null);
INSERT INTO `data_dict` VALUES ('11', '权限类型', 'PermsType', '10', '', '1', '8', '\0', '1', '1612346348907', null);
INSERT INTO `data_dict` VALUES ('12', '使用类型', 'UseType', '10', '', '1', '9', '\0', '1', '1612346348910', null);
INSERT INTO `data_dict` VALUES ('13', '链接类型', 'LinkType ', '10', '', '1', '10', '\0', '1', '1612346348913', null);
INSERT INTO `data_dict` VALUES ('14', '目录', 'Catalog', '11', '', '1', '11', '\0', '1', '1612346348917', null);
INSERT INTO `data_dict` VALUES ('15', '菜单', 'Menu', '11', '', '1', '12', '\0', '1', '1612346348919', null);
INSERT INTO `data_dict` VALUES ('16', '按钮', 'Button', '11', '', '1', '13', '\0', '1', '1612346348921', null);
INSERT INTO `data_dict` VALUES ('17', '电脑端', 'PC', '12', '', '1', '14', '\0', '1', '1612346348922', null);
INSERT INTO `data_dict` VALUES ('18', '手机端', 'APP', '12', '', '1', '15', '\0', '1', '1612346348924', null);
INSERT INTO `data_dict` VALUES ('19', '内部链接', 'Inner', '13', '', '1', '16', '\0', '1', '1612346348925', null);
INSERT INTO `data_dict` VALUES ('20', '外部链接', 'Out', '13', '', '1', '17', '\0', '1', '1612346348928', null);
INSERT INTO `data_dict` VALUES ('101', '民营企业', 'MYQY', '2', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('102', '国营企业', 'GYQY', '2', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('103', '港澳台资企业', 'GATZQY', '2', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('104', '合资企业', 'HZQY', '2', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('105', '混合所有制企业', 'HHSYZQY', '2', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('106', '集体企业', 'JTQY', '2', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('107', '其他', 'QT', '2', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('108', '新材料', 'XCL', '3', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('109', '化学化工', 'HXHG', '3', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('110', '汽车及零部件制造', 'QCJLBJZZ', '3', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('111', '电子设备制造', 'DZSBZZ', '3', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('112', '新能源', 'XNY', '3', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('113', '仪器仪表', 'YQYB', '3', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('114', '金融服务', 'JRFW', '3', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('115', '机器人及其零部件制造', 'JQRJQLBJZZ', '3', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('116', '包装产业', 'BZCY', '3', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('117', '软件与信息服务', 'RJFW', '3', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('118', '航空航天设备制造', 'HKHTSBZZ', '3', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('119', '生物制药', 'SWYY', '3', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('120', '其它', 'QT', '3', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('121', '人员信息', 'PERSON', '3', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('122', '10人以下', 'RJRY', '4', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('123', '10-50人', 'YXRY', '4', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('124', '50-100人', 'GLRY', '4', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('125', '100-500人', 'PTXZRY', '4', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('126', '500-1000人以上', 'JSGWRY', '4', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('127', '1000以上', 'QT', '4', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('130', '园区类型', 'ParkType', '1', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('131', '系统', 'SYSTEM', '130', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('132', '园区', 'PARK', '130', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('133', '园区主管单位', 'COMPETENT', '130', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('160', '工作', 'WORK', '0', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('161', '工作日期类型', 'WorkDateType', '160', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('162', '工作时间类型', 'WorkTimeType', '160', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('165', '09:00-12:00', 'FIRST', '162', '', '4', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('166', '13:00-17:00', 'SECOND', '162', '', '3', '2', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('170', '周一', 'Monday', '161', '', '7', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('171', '周二', 'Tuesday', '161', '', '6', '2', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('172', '周三', 'Wednesday', '161', '', '5', '3', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('173', '周四', 'Thursday', '161', '', '4', '4', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('174', '周五', 'Friday', '161', '', '3', '5', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('175', '周六', 'Saturday', '161', '', '2', '6', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('176', '周日', 'Weekday', '161', '', '1', '7', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('401', '区域信息', 'REGION', '0', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('402', '区域类型', 'REGIONTYPE', '401', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('403', '国家', 'NATION', '402', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('404', '省', 'PROVINCE', '402', '', '1', '2', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('405', '市', 'CITY', '402', '', '1', '3', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('406', '区市县', 'COUNTY', '402', '', '1', '4', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('407', '乡镇街道', 'TOWN', '402', '', '1', '5', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('408', '社区', 'VILLAGE', '402', '', '1', '6', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('409', '小区', 'COMMUNITY', '402', '', '1', '7', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('410', '委办单位', 'ASSIGNUNIT', '402', '', '1', '8', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('500', '缴费', 'PAYMENT', '0', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('501', '支付方式', 'PayMethod', '501', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('502', '微信支付', 'WX', '502', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('503', '支付宝', 'ZFB', '502', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('506', '支付类型', 'PayType', '501', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('507', '手机APP', 'APP', '506', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('508', 'WEB端(H5)', 'H5', '506', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('509', '小程序', 'XCX', '506', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('510', '公众号', 'GZH', '506', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('511', '扫码支付', 'SM', '506', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('513', '支付状态', 'PayStatus', '501', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('514', '未付款', 'Unpaid', '513', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('515', '付款中', 'Paying', '513', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('516', '已付款', 'Paid', '513', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('517', '退款中', 'Refunding', '513', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('518', '已退款', 'Refunded', '513', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('550', '订单', 'Order', '0', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('551', '订单类型', 'OrderType', '550', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('552', '水费', 'WaterFee', '551', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('553', '电费', 'EleFee', '551', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('554', '物业费', 'PropertyFee', '551', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('601', '日志', 'LOG', '0', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('602', '操作日志', 'OperateLog', '601', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('603', '新增', 'INSERT', '602', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('604', '更新', 'UPDATE', '602', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('605', '删除', 'DELETE', '602', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('606', '授权', 'GRANT', '602', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('607', '导入', 'IMPORT', '602', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('608', '导出', 'EXPORT', '602', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('609', '强制停止', 'FORCE', '602', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('610', '生成代码', 'GENCODE', '602', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('611', '清除', 'CLEAN', '602', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('612', '重载', 'RELOAD', '602', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('615', '付款', 'PAYMENT', '602', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('616', '退款', 'RRFUND', '602', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('617', '其他', 'OTHER', '602', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('618', '推送', 'PUSH', '602', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('619', '接收', 'RECIVE', '602', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('620', '登录日志', 'LoginLog', '601', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('621', '注册', 'REGISTER', '620', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('622', '获取验证码', 'GETCODE', '620', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('700', '计量单位', 'JILIANGDANWEI', '0', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('701', '计量单位类型', 'JLDWLX', '700', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('702', 'm', 'MDW', '701', '', '1', '1', '\0', '1', '1612346348933', null);
INSERT INTO `data_dict` VALUES ('703', '㎡', 'PFMDW', '701', '', '1', '1', '\0', '1', '1612346348933', null);
INSERT INTO `data_dict` VALUES ('704', 'm³', 'LFMDW', '701', '', '1', '1', '\0', '1', '1612346348933', null);
INSERT INTO `data_dict` VALUES ('705', 'KG', 'QKDW', '701', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('800', '页面配置', 'PageConfig', '0', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('801', '模板类型', 'TemplateType', '800', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('802', '普通模板', 'Normal', '801', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('803', 'GeoJson模型', 'GeoJson', '801', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('804', '定制化3D模型', '3D', '801', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('821', '页面使用类型', 'PageType', '800', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('822', '首页', 'INDEX', '821', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('823', '统计页', 'STATICS', '821', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('824', '事件处理页', 'EVENTPROCESS', '821', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('860', '事件', 'SJ', '0', '', null, '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('861', '事件类型', 'SJLX', '860', '', null, '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('862', '治安', 'PS', '861', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('863', '设施设备', 'DEVICE', '861', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('881', '事件等级', 'SJDJ', '860', '', null, '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('882', '一级', 'OL', '881', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('883', '二级', 'SL', '881', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('884', '三级', 'TL', '881', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('1223', '水表', 'WATER', '22', '', '1', '4', '\0', '1', '1612346747800', null);
INSERT INTO `data_dict` VALUES ('1224', '电表', 'ELECTRIC', '22', '', '1', '5', '\0', '1', '1612346747800', null);
INSERT INTO `data_dict` VALUES ('1225', '车辆违停', 'WeiTing', '223', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('1226', '人脸捕获', 'FaceCapture', '223', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('1300', '车辆类型', 'CarType', '0', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('1301', '汽车', 'Car', '1300', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('1302', '电动汽车', 'EleCar', '1300', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('1304', '方案类型', 'PlanType', '0', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('1305', '巡检', 'LOOP', '1304', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('1306', '点检', 'POINT', '1304', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('1307', '人员类型', 'RYLX', '1356', '', null, '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('1308', '正常人员', 'NORMAL', '1307', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('1309', '精神病人', 'MENTAL', '1307', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('1310', '职位', 'POST', '0', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('1311', '保安', 'SECURITY', '1310', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('1312', '技工', 'MECHANIC', '1310', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('1313', '学历', 'EDUCATION', '0', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('1314', '未知', 'UNKNOWN', '1313', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('1315', '小学', 'PRIMARY', '1313', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('1316', '初中', 'JUNIOR', '1313', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('1317', '高中', 'SENIOR', '1313', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('1318', '职高', 'PROFESSIONAL', '1313', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('1319', '中专', 'SECONDARY', '1313', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('1320', '大专', 'JUNIORCOLLEGE', '1313', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('1321', '本科', 'REGULARCOLLEGE', '1313', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('1322', '硕士', 'MASTER', '1313', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('1323', '博士及以上', 'DOCTOR', '1313', '', '1', '1', '\0', '1', '1612346747808', null);
INSERT INTO `data_dict` VALUES ('1334', '上报者类型', 'SBZLX', '860', '', '1', '1', '\0', '1', '1658122285675', null);
INSERT INTO `data_dict` VALUES ('1335', '设备', 'SB', '1334', '', '1', '1', '\0', '1', '1658124773481', null);
INSERT INTO `data_dict` VALUES ('1336', '人员', 'RY', '1334', '', '1', '1', '\0', '1', '1658124803403', null);
INSERT INTO `data_dict` VALUES ('1338', '系统设置', 'XTSZ', '0', '', '1', '1', '\0', '1', '1658892457542', null);
INSERT INTO `data_dict` VALUES ('1339', '类型', 'LX', '1338', '', '1', '1', '\0', '1', '1658893232941', null);
INSERT INTO `data_dict` VALUES ('1340', '字符串', 'ZFC', '1339', '', '1', '1', '\0', '1', '1658893256237', null);
INSERT INTO `data_dict` VALUES ('1341', '开关', 'KG', '1339', '', '1', '1', '\0', '1', '1658893266615', null);
INSERT INTO `data_dict` VALUES ('1349', '参数设置', 'CSSZ', '0', '', '1', '1', '\0', '1', '1658979404898', null);
INSERT INTO `data_dict` VALUES ('1350', '类型', 'LX', '1349', '', '1', '1', '\0', '1', '1658979419594', null);
INSERT INTO `data_dict` VALUES ('1351', '开关', 'KG', '1350', '', '1', '1', '\0', '1', '1658979430060', null);
INSERT INTO `data_dict` VALUES ('1352', '字符串', 'ZFC', '1350', '', '1', '1', '\0', '1', '1658979439035', null);
INSERT INTO `data_dict` VALUES ('1353', '类型', 'LX', '500', '', null, '1', '\0', '1', '1658979490503', null);
INSERT INTO `data_dict` VALUES ('1354', '物业费', 'WYF', '1353', '', '1', '1', '\0', '1', '1658979535621', null);
INSERT INTO `data_dict` VALUES ('1355', '停车费', 'TCF', '1353', '', '1', '1', '\0', '1', '1658979545654', null);
INSERT INTO `data_dict` VALUES ('1356', '人员', 'RY', '0', '', '1', '1', '\0', '1', '1658979593983', null);
INSERT INTO `data_dict` VALUES ('1357', '系统文件', 'XTWJ', '0', '', '1', '1', '\0', '1', '1659077185124', null);
INSERT INTO `data_dict` VALUES ('1358', '类型', 'LX', '1357', '', '1', '1', '\0', '1', '1659077192966', null);
INSERT INTO `data_dict` VALUES ('1359', 'logo', 'LOGO', '1358', '', '1', '1', '\0', '1', '1659077248019', null);
INSERT INTO `data_dict` VALUES ('1360', '图标', 'TB', '1358', '', '1', '1', '\0', '1', '1659077260189', null);
INSERT INTO `data_dict` VALUES ('1361', 'excel导入模板', 'EXCELDRMB', '1358', '', '1', '1', '\0', '1', '1659077279815', null);
INSERT INTO `data_dict` VALUES ('1362', 'word导入模板', 'WORDDRMB', '1358', '', '1', '1', '\0', '1', '1659077303795', null);
INSERT INTO `data_dict` VALUES ('1363', 'pdf导入模板', 'PDFDRMB', '1358', '', '1', '1', '\0', '1', '1659077313069', null);
INSERT INTO `data_dict` VALUES ('1364', '图片', 'TP', '1358', '', '1', '1', '\0', '1', '1659077352827', null);
INSERT INTO `data_dict` VALUES ('1365', '音频', 'YP', '1358', '', '1', '1', '\0', '1', '1659077363252', null);
INSERT INTO `data_dict` VALUES ('1366', '视频', 'SP', '1358', '', '1', '1', '\0', '1', '1659077369251', null);
INSERT INTO `data_dict` VALUES ('1500', '拍卖', 'XMPM', '0', '', '1', '1', '\0', '1', '1659077363252', null);
INSERT INTO `data_dict` VALUES ('1501', '拍卖状态', 'XMPMZT', '1500', '', '1', '1', '\0', '1', '1659077369251', null);
INSERT INTO `data_dict` VALUES ('1502', '未上线', 'YISHANGXIAN', '1501', '', '1', '1', '\0', '1', '1659077363252', '已发布');
INSERT INTO `data_dict` VALUES ('1503', '已上线(即将开始报名)', 'WEISHANGXIAN', '1501', '', '1', '1', '\0', '1', '1659077363252', '未发布');
INSERT INTO `data_dict` VALUES ('1504', '报名中', 'JIJIANGKAISHI', '1501', '', '1', '1', '\0', '1', '1659077363252', null);
INSERT INTO `data_dict` VALUES ('1505', '正在竞拍', 'JIAOYIZHONG', '1501', '', '1', '1', '\0', '1', '1659077363252', null);
INSERT INTO `data_dict` VALUES ('1506', '公示中', 'GONGSHIZHONG', '1501', '', '1', '1', '\0', '1', '1659077363252', null);
INSERT INTO `data_dict` VALUES ('1507', '已结束', 'YIJIESU', '1501', '', '1', '1', '\0', '1', '1659077363252', null);
INSERT INTO `data_dict` VALUES ('1600', '交易', 'XMJY', '0', '', '1', '1', '\0', '1', '1659077363252', null);
INSERT INTO `data_dict` VALUES ('1601', '交易状态', 'XMJYZT', '1600', '', '1', '1', '\0', '1', '1659077363252', null);
INSERT INTO `data_dict` VALUES ('1602', '成交', 'CHENGJIAO', '1601', '', '1', '1', '\0', '1', '1659077363252', null);
INSERT INTO `data_dict` VALUES ('1603', '流拍', 'LIUPAI', '1601', '', '1', '1', '\0', '1', '1659077363252', null);
INSERT INTO `data_dict` VALUES ('1604', '未成交', 'WEICHENGJIAO', '1601', '', '1', '1', '\0', '1', '1659077363252', null);
INSERT INTO `data_dict` VALUES ('1700', '竞价', 'XMJJ', '0', '', '1', '1', '\0', '1', '1659077363252', null);
INSERT INTO `data_dict` VALUES ('1701', '竞价状态', 'XMJJZT', '1700', '', '1', '1', '\0', '1', '1659077363252', null);
INSERT INTO `data_dict` VALUES ('1702', '领先', 'LINGXIAN', '1701', '', '1', '1', '\0', '1', '1659077363252', null);
INSERT INTO `data_dict` VALUES ('1703', '出局', 'CHUJU', '1701', '', '1', '1', '\0', '1', '1659077363252', null);
INSERT INTO `data_dict` VALUES ('1800', '报名', 'BAOMING', '0', '', '1', '1', '\0', '1', '1659077363252', null);
INSERT INTO `data_dict` VALUES ('1801', '报名状态', 'BAOMINGZHUANGTAI', '1800', '', '1', '1', '\0', '1', '1659077363252', null);
INSERT INTO `data_dict` VALUES ('1802', '待审核', 'DAISHENGHE', '1801', '', '1', '1', '\0', '1', '1659077363252', null);
INSERT INTO `data_dict` VALUES ('1803', '通过', 'TONGGUO', '1801', '', '1', '1', '\0', '1', '1659077363252', null);
INSERT INTO `data_dict` VALUES ('1804', '未通过', 'WEITONGGUO', '1801', '', '1', '1', '\0', '1', '1659077363252', null);
INSERT INTO `data_dict` VALUES ('1900', '定时任务', 'DINGSHIRENWU', '0', '', '1', '1', '\0', '1', '1659077363252', null);
INSERT INTO `data_dict` VALUES ('1901', '定时任务类型', 'DINGSHIRENWULEIXING', '1900', '', '1', '1', '\0', '1', '1659077363252', null);
INSERT INTO `data_dict` VALUES ('1902', '定时执行修改状态为报名中', 'XGZTBMZ', '1901', '', '1', '1', '\0', '1', '1659077363252', null);
INSERT INTO `data_dict` VALUES ('1903', '定时执行修改状态为交易中', 'XGZTJYZ', '1901', '', '1', '1', '\0', '1', '1659077363252', null);
INSERT INTO `data_dict` VALUES ('1904', '定时执行修改状态为公示中', 'XGZTGSZ', '1901', '', '1', '1', '\0', '1', '1659077363252', null);
INSERT INTO `data_dict` VALUES ('1905', '定时执行修改状态为已结束', 'XGZTYJS', '1901', '', '1', '1', '\0', '1', '1659077363252', null);
INSERT INTO `data_dict` VALUES ('1906', '定时检查竞拍规定的时长范围内是否有人出过价', 'JCBID', '1901', '', '1', '1', '\0', '1', '1704766956741', null);
INSERT INTO `data_dict` VALUES ('10000', '吨', 'D', '701', '', '1', '1', '\0', '1', '1704766956741', '吨');

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `parent_id` bigint DEFAULT NULL,
  `parent_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ancestors` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `order_num` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `del_flag` tinyint NOT NULL,
  `principal_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `principal_mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `org_id` bigint DEFAULT NULL,
  `org_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `park_id` bigint DEFAULT NULL,
  `create_time` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES ('2', '运营部', '0', null, '0', '1', '1', '0', '王五rr', '13526545265', null, null, '1501815782786256897', '1646982715271');
INSERT INTO `dept` VALUES ('4', '运营部一部', '2', '运营部', '2,0', '1', '1', '0', '王五rr', '13526545265', null, null, '1501815782786256897', '1646992466103');
INSERT INTO `dept` VALUES ('5', '运营部二部', '2', '运营部', '2,0', '1', '1', '0', '王五rr', '13526545265', null, null, '1501815782786256897', '1646993069568');
INSERT INTO `dept` VALUES ('6', '电脑部', '0', null, '0', '2', '1', '0', '王五rr', '13526545265', null, null, '1501815782786256897', '1647064613858');
INSERT INTO `dept` VALUES ('7', '电脑一部', '6', '电脑部', '6,0', '1', '1', '0', '王五rr', '13526545265', null, null, '1501815782786256897', '1647064642154');
INSERT INTO `dept` VALUES ('8', '神马部门', '0', null, '0', '1', '1', '0', '李四', '13526545254', null, null, '1504354392018309120', '1647501542022');
INSERT INTO `dept` VALUES ('9', '神马部门二', '8', '神马部门', '8,0', '1', '1', '0', '实时', '13456526545', null, null, '1504354392018309120', '1647502395941');
INSERT INTO `dept` VALUES ('10', '信息部', '0', null, '0', '1', '1', '0', '暂无', '13555669988', null, null, '1501815782786256896', '1647826714735');
INSERT INTO `dept` VALUES ('11', '销售部门', '0', null, '0', '1', '1', '0', '丽丽', '13458984248', '1691166880011331111', null, null, '1703754278117');
INSERT INTO `dept` VALUES ('12', '测试部门', '0', null, '0', '1', '1', '0', '吴姐姐', '15654526545', '1695326985332169666', null, null, '1703754310429');
INSERT INTO `dept` VALUES ('14', '测试部门', '0', null, '0', '2', '1', '0', '李丽', '13452654526', '1691166880011331111', null, null, '1704180941666');

-- ----------------------------
-- Table structure for icon
-- ----------------------------
DROP TABLE IF EXISTS `icon`;
CREATE TABLE `icon` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `icon_key` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pic_url` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `order_num` int DEFAULT NULL,
  `active_flag` tinyint DEFAULT NULL,
  `create_time` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of icon
-- ----------------------------

-- ----------------------------
-- Table structure for organization
-- ----------------------------
DROP TABLE IF EXISTS `organization`;
CREATE TABLE `organization` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `contact_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `contact_mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `create_time` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1695326985332169686 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of organization
-- ----------------------------
INSERT INTO `organization` VALUES ('1691166880011331111', 'xt6gl6dw', '系统管理单位', '系统管理员', '15011113363', '1', '1703652540000');
INSERT INTO `organization` VALUES ('1695326985332169666', 'xd5jnz6m', '宏源集团', '王二', '028-86389950', '1', '1703652540000');
INSERT INTO `organization` VALUES ('1695326985332169679', '9g7483Wx', '青白江', '王先生', '18224418603', '1', '1705390603361');
INSERT INTO `organization` VALUES ('1695326985332169680', '9hMh1h9C', '四川蓉欧瑞驰实业有限公司', '高霞', '13008144441', '1', '1705644728991');
INSERT INTO `organization` VALUES ('1695326985332169681', 'xwsHB21Q', '青白江区笔锋贸易有限公司', '邓平', '13678160651', '1', '1705646791398');
INSERT INTO `organization` VALUES ('1695326985332169682', 'SXzLXo5r', '砂石经营公司', '张涛', '13678089783', '1', '1705813897256');
INSERT INTO `organization` VALUES ('1695326985332169683', 'LDi8XI6j', '测试公司', '王丽', '13458984241', '1', '1706493847502');
INSERT INTO `organization` VALUES ('1695326985332169684', '625GRHKF', '唐三藏贸易公司', '邓笔峰', '15982060279', '1', '1706578897353');
INSERT INTO `organization` VALUES ('1695326985332169685', 'cpFBjiFx', '成都永城', '张勇', '13330985096', '1', '1706756081748');

-- ----------------------------
-- Table structure for page_template
-- ----------------------------
DROP TABLE IF EXISTS `page_template`;
CREATE TABLE `page_template` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `page_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `page_key` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `template_type` bigint DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pic_url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `geo_json_url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `order_num` int DEFAULT NULL,
  `active_flag` tinyint DEFAULT NULL,
  `park_id` bigint DEFAULT NULL,
  `path` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_time` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1747153397682827265 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of page_template
-- ----------------------------
INSERT INTO `page_template` VALUES ('1518845775676559360', '通用基础模板', '822', 'M1', '802', '适用于每个园区的通用基础模板', '/pagetemplate/default/pic/def.jpg', null, '1', '1', '1500000286550000001', null, '1650956026368');
INSERT INTO `page_template` VALUES ('1518845776762884096', '通用基础模板', '822', 'M1', '802', '适用于每个园区的通用基础模板', '/pagetemplate/default/pic/def.jpg', null, '1', '0', '1501815782786256896', null, '1650956026627');
INSERT INTO `page_template` VALUES ('1518845777744351232', '通用基础模板', '822', 'M1', '802', '适用于每个园区的通用基础模板', '/pagetemplate/default/pic/def.jpg', null, '1', '0', '1501815782786256897', null, '1650956026861');
INSERT INTO `page_template` VALUES ('1518845778725818368', '通用基础模板', '822', 'M1', '802', '适用于每个园区的通用基础模板', '/pagetemplate/default/pic/def.jpg', null, '1', '1', '1504354392018309120', null, '1650956027095');
INSERT INTO `page_template` VALUES ('1519589198490513408', '3d定制模板1', '822', 'M3', '804', '3d模型首页', '/pagetemplate/e5c6ca11aa0c4362b24a31009b262ad2.jpg', null, '1', '1', '1501815782786256896', null, '1651133272179');
INSERT INTO `page_template` VALUES ('1519857290919649280', 'GeoJson样式2', '822', 'M2', '803', '地图geojson', '/pagetemplate/f9a8685c0970404487d1532e9e2600e4.jpg', '/pagetemplate/fdb066a547ac4c0caa756c4a93ac7dfe.geojson', '1', '0', '1501815782786256896', null, '1651197190395');
INSERT INTO `page_template` VALUES ('1519857801299337216', 'GeoJson样式3', '822', 'G3', '803', '达瓦大', '/pagetemplate/66df732dad74451884226312440593b0.jpg', '/pagetemplate/ea3ef1f4c7b14e0593f4f498f41779d7.geojson', '1', '0', '1501815782786256896', null, '1651197312079');
INSERT INTO `page_template` VALUES ('1519859034298859520', 'GeoJson样式1', '822', 'G1', '803', '达瓦大', null, '/pagetemplate/9ff5242d3b0e4da382200fea95e6dde5.geojson', '10', '0', '1501815782786256896', null, '1651197606049');
INSERT INTO `page_template` VALUES ('1747153397682827264', '通用基础模板', '822', 'M1', '802', '适用于每个园区的通用基础模板', '/pagetemplate/default/pic/def.jpg', null, '1', '1', '999999', null, '1705388805205');

-- ----------------------------
-- Table structure for param_setting
-- ----------------------------
DROP TABLE IF EXISTS `param_setting`;
CREATE TABLE `param_setting` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `param_key` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `param_value` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` bigint DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `order_num` int DEFAULT NULL,
  `park_id` bigint DEFAULT NULL,
  `create_time` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1559811309347602433 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of param_setting
-- ----------------------------
INSERT INTO `param_setting` VALUES ('1552221414721896448', '主题', 'theme', 'theme', '1340', '{\"theme\":\"#11CA8C\",\"topBackground\":\"rgba(25, 25, 25, 1)\",\"topTitleColor\":\"rgba(17, 202, 140, 1)\",\"leftMenuBackground\":\"rgba(38, 38, 38, 1)\",\"tagsViewBackground\":\"#052440\",\"mainBackground\":\"rgba(255, 255, 255, 1)\",\"mainElementColor\":\"rgba(102, 102, 102, 1)\",\"tableThBackgroun\":\"rgba(232, 232, 232, 1)\",\"tableBackgroun\":\"rgba(255, 255, 255, 1)\",\"leftMenuBackgroundHover\":\"rgba(17, 202, 140, 0.57)\"}', '3', '1501815782786256896', '1658913398806');
INSERT INTO `param_setting` VALUES ('1552960423664332800', '主题', 'theme', 'theme', '1340', '{\"topBackground\":\"rgba(25, 25, 25, 1)\",\"topTitleColor\":\"rgba(3, 203, 131, 1)\",\"leftMenuBackground\":\"rgba(25, 25, 25, 1)\",\"tagsViewBackground\":\"#052440\",\"theme\":\"#03CB83\",\"mainBackground\":\"rgba(255, 255, 255, 1)\",\"mainElementColor\":\"rgba(102, 102, 102, 1)\",\"tableThBackgroun\":\"rgba(232, 232, 232, 1)\",\"tableBackgroun\":\"rgba(255, 255, 255, 1)\",\"leftMenuBackgroundHover\":\"rgba(3, 203, 131, 0.5)\"}', '3', '1500354392018309001', '1659089592268');
INSERT INTO `param_setting` VALUES ('1556971840563052544', '主题', 'theme', 'theme', '1340', '{\"theme\":\"#11CA8C\",\"topBackground\":\"rgba(25, 25, 25, 1)\",\"topTitleColor\":\"rgba(17, 202, 140, 1)\",\"leftMenuBackground\":\"rgba(38, 38, 38, 1)\",\"tagsViewBackground\":\"#052440\",\"mainBackground\":\"rgba(255, 255, 255, 1)\",\"mainElementColor\":\"rgba(102, 102, 102, 1)\",\"tableThBackgroun\":\"rgba(232, 232, 232, 1)\",\"tableBackgroun\":\"rgba(255, 255, 255, 1)\",\"leftMenuBackgroundHover\":\"rgba(17, 202, 140, 0.57)\"}', '3', '1500000286550000001', '1660045988585');
INSERT INTO `param_setting` VALUES ('1559811309347602432', '主题', 'theme', 'theme', '1340', '{\"topBackground\":\"rgba(25, 25, 25, 1)\",\"topTitleColor\":\"rgba(3, 203, 131, 1)\",\"leftMenuBackground\":\"rgba(25, 25, 25, 1)\",\"tagsViewBackground\":\"#052440\",\"theme\":\"#11CA8C\",\"mainBackground\":\"rgba(255, 255, 255, 1)\",\"mainElementColor\":\"rgba(102, 102, 102, 1)\",\"tableThBackgroun\":\"rgba(232, 232, 232, 1)\",\"tableBackgroun\":\"rgba(255, 255, 255, 1)\",\"leftMenuBackgroundHover\":\"rgba(3, 203, 131, 0.5)\"}', '3', '1552564427771924480', '1660722970698');

-- ----------------------------
-- Table structure for park
-- ----------------------------
DROP TABLE IF EXISTS `park`;
CREATE TABLE `park` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` bigint DEFAULT NULL,
  `address_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `principal_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `principal_mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `industry` bigint DEFAULT NULL,
  `staff_scale` bigint DEFAULT NULL,
  `starting_time` bigint DEFAULT NULL,
  `floor_space` double DEFAULT NULL,
  `ware_area` double DEFAULT NULL,
  `parent_id` bigint DEFAULT NULL,
  `park_type` bigint DEFAULT NULL,
  `order_num` int DEFAULT NULL,
  `create_time` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1594354392018309333 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of park
-- ----------------------------
INSERT INTO `park` VALUES ('1500000286550000001', '系统管理园区', null, '51', '104.27266463710404', '30.92004139811189', '系统管理员', null, null, null, '1657468800000', '2321', '263952', '0', '131', '1', '1656472200416');
INSERT INTO `park` VALUES ('1500354392018309001', '青白江区国贸和物流局', null, '510113', '104.26642659532571', '30.906846273113015', '李科', '15989890202', null, null, '1657468800000', '3321', '3695', null, '133', '2', '1647501011267');
INSERT INTO `park` VALUES ('1501815782786256896', '云钢联', '101', '510113', '104.33323835733384', '30.909371948710444', '张三', '15936931256', '119', '122', '1657468800000', '1250', '3644', null, '132', '1', '1646883109318');
INSERT INTO `park` VALUES ('1501815782786256897', ' 测试园区四', '101', '510113', '104.27266463710404', '30.860330939120473', '王五一', '13452654526', '109', '123', '1657468800000', '3694', '65932', null, '132', '2', '1646895759661');
INSERT INTO `park` VALUES ('1504354392018309120', ' 测试园区三', '101', '510113', '104.37045435206608', '30.83927801637831', '李四', '13526525452', '108', '122', '1657468800000', '1239', '596234', null, '132', '2', '1647501011267');
INSERT INTO `park` VALUES ('1524924154682302464', '测试园区一', '103', '510113', '104.36436975587056', '30.76552149904273', '无', '13212311232', '108', '123', '1657468800000', '369', '269354', null, '132', '2', '1652405224854');
INSERT INTO `park` VALUES ('1541975858914070528', '中央厨房园区', '101', '510113', '104.47707828467271', '30.744291138465677', '张yong', '15208492739', '120', '126', '1657468800000', '256', '263952', null, '132', '2', '1656470667948');
INSERT INTO `park` VALUES ('1549294189349474304', '宝湾物流园区', '101', '510113', '104.37045435206608', '30.83927801637831', '王五', '13880645089', '108', '112', '1657468800000', '123', '123', null, '132', null, '1658215493892');
INSERT INTO `park` VALUES ('1551754674846093312', '苏宁园区', '101', '510113', '104.33323835733384', '30.860330939120473', '张勇', '15208492745', '120', '126', '1646928000000', '1369', '3695', null, '132', null, '1658802119348');
INSERT INTO `park` VALUES ('1552564427771924480', '成都轩众国际物流投资有限公司', '101', '510113', '104.24634025942896', '30.85782391112536', '张碧勇', '18111294518', '108', '123', '1585670400000', '132', '34000', '1500354392018309001', '132', null, '1658995179490');
INSERT INTO `park` VALUES ('1552579825699434496', '系统默认', null, '51', '104.065751', '30.657453', '系统管理员', null, null, null, null, null, null, '0', '131', '1', '1658998850642');
INSERT INTO `park` VALUES ('1552590371488296960', '系统默认', null, '51', '104.065751', '30.657453', '系统管理员', null, null, null, null, null, null, '0', '133', '1', '1659001364954');
INSERT INTO `park` VALUES ('1555492841076838400', '四川童联供应链有限公司', '101', '510113', '104.27354404033504', '30.83135953287095', '刘经理', '13438882359', '120', '123', '1659283200000', '137.7', '71811', '1500354392018309001', '132', null, '1659693367629');
INSERT INTO `park` VALUES ('1555497620544204800', '四川易捷物流有限公司', '101', '510113', '104.30833253261189', '30.846163695259023', '李斌', '13880327003', '108', '123', '1325347200000', '139.4', '80000', '1500354392018309001', '132', null, '1659694507143');
INSERT INTO `park` VALUES ('1559808687077130240', '测试园区二', '103', '510113', '104.262682', '30.882685', '测试', '13312341234', '109', '124', '1659369600000', '1234', '50', null, '132', null, '1660722345500');
INSERT INTO `park` VALUES ('1560208609123319808', '成都圣宝钢结构有限公司', '107', '510113', '104.24915113666039', '30.820624178316507', '李先生', '13112341234', '120', '123', '1612368000000', '288.59', '100131', '1500354392018309001', '132', null, '1660817694346');
INSERT INTO `park` VALUES ('1560211741945446400', '成都中集物流有限公司青白江分公司', '107', '510113', '104.32246515489179', '30.847946115135784', '李先生', '13212341234', '120', '123', '1660665600000', '66.7', '36934', '1500354392018309001', '132', null, '1660818441269');
INSERT INTO `park` VALUES ('1560213589322448896', '成都苏宁易达仓储有限公司', '101', '510113', '104.256916', '30.825557', '李先生', '13245674567', '120', '123', '1659974400000', '314.6', '185825', '1500354392018309001', '132', null, '1660818881718');
INSERT INTO `park` VALUES ('1560214851480797184', '成都青白江宝湾国际物流有限公司', '101', '510113', '104.334456', '30.846864', '李先生', '13123452345', '120', '123', '1660665600000', '107', '70000', '1500354392018309001', '132', null, '1660819182640');
INSERT INTO `park` VALUES ('1560215296790052864', '四川吉门供应链管理有限公司', '101', '510113', '104.24365', '30.852653', '李先生', '13723452345', '120', '123', '1660665600000', '60', '65000', '1500354392018309001', '132', null, '1660819288810');
INSERT INTO `park` VALUES ('1560215296790052888', '巨石集团成都有限公司', '101', '510113', '104.380106', '30.769387', '周启', '15208997777', '120', '123', '1660665600000', '60', '65000', '1560215296790056666', '132', null, '1660819288810');
INSERT INTO `park` VALUES ('1560215296790056666', '成都市青白江区欧洲产业城', '101', '510113', '104.380106', '30.769387', '周启', '15208995555', '120', '123', '1660665600000', '60', '65000', null, '133', null, '1660819288810');
INSERT INTO `park` VALUES ('1594354392018309332', '成都国际集装箱物流园区', '101', '510113', '104.31557', '30.847537', '刘云', '15920203030', '108', '123', '1659283200000', '12314', '523', null, '132', '2', '1647501011267');

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `router_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `component` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `icon` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `parent_id` bigint DEFAULT NULL,
  `parent_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `order_num` int DEFAULT NULL,
  `perms_type` bigint DEFAULT NULL,
  `use_type` bigint DEFAULT NULL,
  `link_type` bigint DEFAULT NULL,
  `path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `query` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `create_time` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3994 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('1', '系统设置', '', 'System', 'Layout', 'Layout', 'setting', '0', null, '4', '14', '17', '19', '/system', null, '1', '1621839879460');
INSERT INTO `permission` VALUES ('101', '账号管理', 'sys:user:list', 'User', 'system/user/index', '/sys/user/index', 'user', '1', null, '3', '15', '17', '19', 'user', null, '1', '1621847013621');
INSERT INTO `permission` VALUES ('102', '角色管理', 'sys:role:list', 'Role', 'system/role/index', '/sys/role/index', 'peoples', '1', null, '4', '15', '17', '19', 'role', null, '1', '1621847013621');
INSERT INTO `permission` VALUES ('103', '菜单管理', 'sys:permisson:list', 'Menu', 'system/menu/index', '/sys/permisson/index', 'tree-table', '1', null, '5', '15', '17', '19', 'menu', null, '1', '1621845584634');
INSERT INTO `permission` VALUES ('107', '字典管理', 'sys:dataDict:list', 'Dict', 'system/dict/index', '/sys/dataDict/index', 'dict', '1', null, '6', '15', '17', '19', 'dict', null, '1', '1621845584634');
INSERT INTO `permission` VALUES ('1001', '用户新增', 'sys:user:add', null, '/sys/user/addUser', '/sys/user/addUser', '../../static/images/guide@2x.png', '101', null, '3', '16', '17', '19', null, null, '1', '1624073077795');
INSERT INTO `permission` VALUES ('1002', '用户删除', 'sys:user:delete', null, '/sys/user/deleteUserById', '/sys/user/deleteUserById', '/static/images/community/deliberation@2x.png', '101', null, '4', '16', '17', '19', null, null, '1', '1624073077795');
INSERT INTO `permission` VALUES ('1003', '用户修改', 'sys:user:update', null, '/sys/user/updateUser', '/sys/user/updateUser', '/static/images/park@2x.png', '101', null, '5', '16', '17', '19', null, null, '1', '1624073077795');
INSERT INTO `permission` VALUES ('1004', '用户查询', 'sys:user:query', null, '/sys/user/getUserById', '/sys/user/getUserById', '../../static/images/medical_insurance@2x.png', '101', null, '6', '16', '17', '19', null, null, '1', '1624073077795');
INSERT INTO `permission` VALUES ('1005', '用户导入', 'sys:user:import', null, '/sys/user/import', '/sys/user/import', '../../static/images/fawu@2x.png', '101', null, '7', '16', '17', '19', null, null, '0', '1624073077795');
INSERT INTO `permission` VALUES ('1006', '用户导出', 'sys:user:export', null, '/sys/user/export', '/sys/user/export', '../../static/images/yimiao@2x.png', '101', null, '8', '16', '17', '19', null, null, '0', '1624073077795');
INSERT INTO `permission` VALUES ('1007', '角色新增', 'sys:role:add', null, null, null, null, '102', null, '1', '16', '17', '19', null, null, '1', '1624073077795');
INSERT INTO `permission` VALUES ('1008', '角色删除', 'sys:role:delete', null, null, null, null, '102', null, '2', '16', '17', '19', null, null, '1', '1624073077795');
INSERT INTO `permission` VALUES ('1009', '角色修改', 'sys:role:update', null, '/sys/role', '/sys/role', null, '102', null, '2', '16', '17', '19', null, null, '1', '1621845584634');
INSERT INTO `permission` VALUES ('1010', '角色查询', 'sys:role:query', null, '/sys/role', '/sys/role', null, '102', null, '2', '16', '17', '19', null, null, '1', '1621845584634');
INSERT INTO `permission` VALUES ('1011', '角色导出', 'sys:user:export', null, '/sys/role', '/sys/role', null, '102', null, '2', '16', '17', '19', null, null, '1', '1621845584634');
INSERT INTO `permission` VALUES ('1013', '菜单新增', 'sys:menu:add', null, null, null, '../../static/images/tianfu@2x.png', '103', null, '1', '16', '17', '19', null, null, '1', '1624073077795');
INSERT INTO `permission` VALUES ('1014', '菜单删除', 'sys:menu:delete', null, null, null, '../../static/images/rong@2x.png', '103', null, '2', '16', '17', '19', null, null, '1', '1624073077795');
INSERT INTO `permission` VALUES ('1015', '菜单修改', 'sys:menu:update', null, null, null, null, '103', null, '3', '16', '17', '19', null, null, '1', '1624073077795');
INSERT INTO `permission` VALUES ('1016', '菜单查询', 'sys:menu:query', null, null, null, null, '103', null, '3', '16', '17', '19', null, null, '1', '1624073077795');
INSERT INTO `permission` VALUES ('1038', '字典新增', 'sys:dict:add', null, 'https://zhzw.qbj.gov.cn/qbjzwdt/H5/wechat.m7.zwfw.qingbaijiang/pages/appoint/appoint_list.html?taskGuid=', 'https://zhzw.qbj.gov.cn/qbjzwdt/H5/wechat.m7.zwfw.qingbaijiang/pages/appoint/appoint_list.html?taskGuid=', '../../static/images/home/appointment_line@2x.png', '107', null, '1', '16', '17', '19', null, null, '1', '1624073077795');
INSERT INTO `permission` VALUES ('1039', '字典删除', 'sys:dict:delete', null, 'https://zhzw.qbj.gov.cn/qbjzwdt/H5/wechat.m7.zwfw.qingbaijiang/pages/appoint/appoint_search.html?taskGuid=', 'https://zhzw.qbj.gov.cn/qbjzwdt/H5/wechat.m7.zwfw.qingbaijiang/pages/appoint/appoint_search.html?taskGuid=', '../../static/images/home/appointment@2x.png', '107', null, '2', '16', '17', '19', null, null, '1', '1624073077795');
INSERT INTO `permission` VALUES ('1040', '字典修改', 'sys:dict:update', null, 'https://zhzw.qbj.gov.cn/qbjzwdt/H5/wechat.m7.zwfw.qingbaijiang/pages/service/service_common.html', 'https://zhzw.qbj.gov.cn/qbjzwdt/H5/wechat.m7.zwfw.qingbaijiang/pages/service/service_common.html', '../../static/images/guide@2x.png', '107', null, '3', '16', '17', '19', null, null, '1', '1624073077795');
INSERT INTO `permission` VALUES ('1041', '字典查询', null, null, 'https://zhzw.qbj.gov.cn/qbjzwdt/H5/wechat.m7.zwfw.qingbaijiang/pages/policy/enjoypolicy_list.html', 'https://zhzw.qbj.gov.cn/qbjzwdt/H5/wechat.m7.zwfw.qingbaijiang/pages/policy/enjoypolicy_list.html', '../../static/images/home/discount@2x.png', '107', null, '4', '16', '17', '19', null, null, '1', '1624073077795');
INSERT INTO `permission` VALUES ('1042', '字典导出', 'sys:dict:export', null, '/sys/role', '/sys/role', null, '107', null, '2', '16', '17', '19', null, null, '1', '1621845584634');
INSERT INTO `permission` VALUES ('3679', '部门管理', null, 'Address', 'system/dept/index', null, 'clipboard', '1', null, '2', '15', '17', '19', 'address', null, '1', '1647325486144');
INSERT INTO `permission` VALUES ('3708', '新增', 'sys:dept:add', null, null, null, null, '3679', null, '1', '16', '17', '19', null, null, '1', '1647484205875');
INSERT INTO `permission` VALUES ('3709', '修改', 'sys:dept:update', null, null, null, null, '3679', null, '2', '16', '17', '19', null, null, '1', '1647484249607');
INSERT INTO `permission` VALUES ('3710', '删除', 'sys:dept:delete', null, null, null, null, '3679', null, '3', '16', '17', '19', null, null, '1', '1647484305791');
INSERT INTO `permission` VALUES ('3711', '查询', 'sys:dept:query', null, null, null, null, '3679', null, '4', '16', '17', '19', null, null, '1', '1647484351358');
INSERT INTO `permission` VALUES ('3713', '密码重置', 'sys:user:reset', null, null, null, null, '101', null, '1', '16', '17', '19', null, null, '1', '1647499504433');
INSERT INTO `permission` VALUES ('3745', '账号审核', 'sys:user:examine', null, null, null, null, '101', null, '9', '16', '17', '19', null, null, '1', '1658997903740');
INSERT INTO `permission` VALUES ('3974', '项目管理', null, 'Manage', 'Layout', null, 'form', '0', null, '1', '14', '17', '19', '/manage', null, '1', '1702950681820');
INSERT INTO `permission` VALUES ('3975', '项目列表', null, 'projectList', 'manage/project', null, 'build', '3974', null, '1', '15', '17', '19', 'project', null, '1', '1702951334239');
INSERT INTO `permission` VALUES ('3977', '新增', 'manage:project:add', null, null, null, null, '3975', null, '1', '16', '17', '19', null, null, '1', '1703214277843');
INSERT INTO `permission` VALUES ('3978', '查看', 'manage:project:edit', null, null, null, null, '3975', null, '2', '16', '17', '19', null, null, '1', '1703214295130');
INSERT INTO `permission` VALUES ('3979', '删除', 'manage:project:remove', null, null, null, null, '3975', null, '3', '16', '17', '19', null, null, '1', '1703214312666');
INSERT INTO `permission` VALUES ('3980', '发布', 'manage:project:release', null, null, null, null, '3975', null, '4', '16', '17', '19', null, null, '1', '1703497053566');
INSERT INTO `permission` VALUES ('3981', '撤销发布', 'manage:project:revoke', null, null, null, null, '3975', null, '5', '16', '17', '19', null, null, '1', '1703561578018');
INSERT INTO `permission` VALUES ('3982', '大厅首页', 'home:index', null, null, null, null, '0', null, '5', '16', '17', '19', '/', null, '1', '1703644221733');
INSERT INTO `permission` VALUES ('3983', '我的竞拍', 'home:auction', null, null, null, null, '0', null, '6', '16', '17', '19', '/', null, '1', '1703644281797');
INSERT INTO `permission` VALUES ('3984', '管理后台', 'home:manage', null, null, null, null, '0', null, '7', '16', '17', '19', '/', null, '1', '1703644314099');
INSERT INTO `permission` VALUES ('3985', '项目报名', 'home:application', null, null, null, null, '0', null, '8', '16', '17', '19', null, null, '1', '1703750087080');
INSERT INTO `permission` VALUES ('3986', '项目竞价', 'home:bidding', null, null, null, null, '0', null, '9', '16', '17', '19', null, null, '1', '1703750138344');
INSERT INTO `permission` VALUES ('3987', '组织管理', null, 'Org', 'system/org/index', null, 'cascader', '1', null, '1', '15', '17', '19', 'org', null, '1', '1703752286858');
INSERT INTO `permission` VALUES ('3988', '新增', 'sys:org:add', null, null, null, null, '3987', null, '1', '16', '17', '19', null, null, '1', '1703752314132');
INSERT INTO `permission` VALUES ('3989', '修改', 'sys:org:update', null, null, null, null, '3987', null, '2', '16', '17', '19', null, null, '1', '1703752334360');
INSERT INTO `permission` VALUES ('3990', '删除', 'sys:org:delete', null, null, null, null, '3987', null, '3', '16', '17', '19', null, null, '1', '1703752353698');
INSERT INTO `permission` VALUES ('3991', '用户管理', null, 'normalUser', 'system/normalUser/index', null, 'peoples', '1', null, '7', '15', '17', '19', 'normalUser', null, '1', '1703756823384');
INSERT INTO `permission` VALUES ('3992', '重置密码', 'sys:user:reset', null, null, null, null, '3991', null, '1', '16', '17', '19', null, null, '1', '1703756919783');
INSERT INTO `permission` VALUES ('3993', '删除', 'sys:user:delete', null, null, null, null, '3991', null, '2', '16', '17', '19', null, null, '1', '1703756955516');

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `order_num` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `del_flag` tinyint DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `park_id` bigint DEFAULT NULL,
  `create_time` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES ('2', '总经理', 'CEO', '1', '0', '1', '1501815782786256896', '1646987466419');
INSERT INTO `post` VALUES ('3', '测试员', 'test', '2', '0', '1', '1501815782786256897', '1647247682816');
INSERT INTO `post` VALUES ('4', '神马职位', 'eee', '1', '0', '1', '1504354392018309120', '1647501570134');
INSERT INTO `post` VALUES ('5', '方法', 'er', '2', '0', '1', '1504354392018309120', '1647502428524');

-- ----------------------------
-- Table structure for product_auction
-- ----------------------------
DROP TABLE IF EXISTS `product_auction`;
CREATE TABLE `product_auction` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `project_id` bigint DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `quantity_unit` bigint DEFAULT NULL,
  `upset_price` double DEFAULT NULL,
  `bid_incr` double DEFAULT NULL,
  `create_time` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1746723931420622977 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of product_auction
-- ----------------------------
INSERT INTO `product_auction` VALUES ('1746723931420622967', '1763497676986384384', '机砂', '1690', '704', '3', '1', '1709285585058');
INSERT INTO `product_auction` VALUES ('1746723931420622968', '1763499670417440768', '机砂', '5320', '704', '2', '1', '1709286060332');
INSERT INTO `product_auction` VALUES ('1746723931420622969', '1763500873318662144', '机砂', '1260', '704', '2', '1', '1709286347121');
INSERT INTO `product_auction` VALUES ('1746723931420622970', '1764450632762130432', '机砂', '10000', '10000', '90', '1', '1709512787420');
INSERT INTO `product_auction` VALUES ('1746723931420622971', '1764466513923801088', '机砂', '20000', '10000', '90', '1', '1709516573781');
INSERT INTO `product_auction` VALUES ('1746723931420622972', '1764839215079620608', '1-3石', '123', '704', '100', '1', '1709605432718');
INSERT INTO `product_auction` VALUES ('1746723931420622973', '1764839215079620608', '自然砂', '100', '704', '111', '2', '1709605432883');
INSERT INTO `product_auction` VALUES ('1746723931420622974', '1768481872154722304', '1-3石', '15000', '10000', '80', '1', '1710473910008');
INSERT INTO `product_auction` VALUES ('1746723931420622975', '1768481872154722304', '机砂', '25000', '10000', '85', '1', '1710473913435');
INSERT INTO `product_auction` VALUES ('1746723931420622976', '1768481872154722304', '自然砂', '5000', '10000', '78', '1', '1710473913492');

-- ----------------------------
-- Table structure for product_bid
-- ----------------------------
DROP TABLE IF EXISTS `product_bid`;
CREATE TABLE `product_bid` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `productAuction_id` bigint DEFAULT NULL,
  `project_id` bigint DEFAULT NULL,
  `bidRecord_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `quantity_unit` bigint DEFAULT NULL,
  `upset_price` double DEFAULT NULL,
  `bid_incr` double DEFAULT NULL,
  `curUnit_price` double DEFAULT NULL,
  `curTotal_price` double DEFAULT NULL,
  `create_time` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1764469401425281025 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of product_bid
-- ----------------------------
INSERT INTO `product_bid` VALUES ('1763497963935498240', '1746723931420622967', '1763497676986384384', '1763497963927109632', '1747059398934528000', '机砂', '1690', '704', '3', '1', '3', '5070', '1709285653467');
INSERT INTO `product_bid` VALUES ('1763499988609925120', '1746723931420622968', '1763499670417440768', '1763499988580564992', '1747059398934528000', '机砂', '5320', '704', '2', '1', '2', '10640', '1709286136187');
INSERT INTO `product_bid` VALUES ('1763500300313821184', '1746723931420622968', '1763499670417440768', '1763500300297043968', '1747059398934528000', '机砂', '5320', '704', '2', '1', '3', '15960', '1709286210503');
INSERT INTO `product_bid` VALUES ('1763500319288852480', '1746723931420622968', '1763499670417440768', '1763500319276269568', '1747059398934528000', '机砂', '5320', '704', '2', '1', '4', '21280', '1709286215027');
INSERT INTO `product_bid` VALUES ('1763500370534858752', '1746723931420622968', '1763499670417440768', '1763500370522275840', '1747059398934528000', '机砂', '5320', '704', '2', '1', '5', '26600', '1709286227245');
INSERT INTO `product_bid` VALUES ('1763500468736098304', '1746723931420622968', '1763499670417440768', '1763500468719321088', '1747059398934528000', '机砂', '5320', '704', '2', '1', '6', '31920', '1709286250658');
INSERT INTO `product_bid` VALUES ('1763500918831054848', '1746723931420622968', '1763499670417440768', '1763500918818471936', '1747059398934528000', '机砂', '5320', '704', '2', '1', '7', '37240', '1709286357969');
INSERT INTO `product_bid` VALUES ('1763501030361792512', '1746723931420622968', '1763499670417440768', '1763501030349209600', '1747059398934528000', '机砂', '5320', '704', '2', '1', '8', '42560', '1709286384560');
INSERT INTO `product_bid` VALUES ('1764460783221080064', '1746723931420622970', '1764450632762130432', '1764460783208497152', '1751788295852945408', '机砂', '10000', '10000', '90', '1', '90', '900000', '1709515207473');
INSERT INTO `product_bid` VALUES ('1764461338244939776', '1746723931420622970', '1764450632762130432', '1764461338232356864', '1747160939783811072', '机砂', '10000', '10000', '90', '1', '91', '910000', '1709515339801');
INSERT INTO `product_bid` VALUES ('1764461865267625984', '1746723931420622970', '1764450632762130432', '1764461865259237376', '1752145006631612416', '机砂', '10000', '10000', '90', '1', '92', '920000', '1709515465453');
INSERT INTO `product_bid` VALUES ('1764461882866925568', '1746723931420622970', '1764450632762130432', '1764461882833371136', '1752145006631612416', '机砂', '10000', '10000', '90', '1', '93', '930000', '1709515469649');
INSERT INTO `product_bid` VALUES ('1764462093571981312', '1746723931420622970', '1764450632762130432', '1764462093563592704', '1751788295852945408', '机砂', '10000', '10000', '90', '1', '94', '940000', '1709515519885');
INSERT INTO `product_bid` VALUES ('1764462939386937344', '1746723931420622970', '1764450632762130432', '1764462939378548736', '1751788295852945408', '机砂', '10000', '10000', '90', '1', '95', '950000', '1709515721543');
INSERT INTO `product_bid` VALUES ('1764463210607411200', '1746723931420622970', '1764450632762130432', '1764463210599022592', '1752145006631612416', '机砂', '10000', '10000', '90', '1', '96', '960000', '1709515786207');
INSERT INTO `product_bid` VALUES ('1764463288512413696', '1746723931420622970', '1764450632762130432', '1764463288504025088', '1747160939783811072', '机砂', '10000', '10000', '90', '1', '97', '970000', '1709515804781');
INSERT INTO `product_bid` VALUES ('1764463575004348416', '1746723931420622970', '1764450632762130432', '1764463574995959808', '1751788295852945408', '机砂', '10000', '10000', '90', '1', '98', '980000', '1709515873086');
INSERT INTO `product_bid` VALUES ('1764467071774621696', '1746723931420622971', '1764466513923801088', '1764467071766233088', '1751788295852945408', '机砂', '20000', '10000', '90', '1', '90', '1800000', '1709516706781');
INSERT INTO `product_bid` VALUES ('1764467322610778112', '1746723931420622971', '1764466513923801088', '1764467322602389504', '1751788295852945408', '机砂', '20000', '10000', '90', '1', '91', '1820000', '1709516766585');
INSERT INTO `product_bid` VALUES ('1764467499983699968', '1746723931420622971', '1764466513923801088', '1764467499979505664', '1751788295852945408', '机砂', '20000', '10000', '90', '1', '92', '1840000', '1709516808874');
INSERT INTO `product_bid` VALUES ('1764467832986271744', '1746723931420622971', '1764466513923801088', '1764467832982077440', '1751788295852945408', '机砂', '20000', '10000', '90', '1', '93', '1860000', '1709516888268');
INSERT INTO `product_bid` VALUES ('1764468148234354688', '1746723931420622971', '1764466513923801088', '1764468148225966080', '1751788295852945408', '机砂', '20000', '10000', '90', '1', '94', '1880000', '1709516963429');
INSERT INTO `product_bid` VALUES ('1764468372717699072', '1746723931420622971', '1764466513923801088', '1764468372709310464', '1751788295852945408', '机砂', '20000', '10000', '90', '1', '95', '1900000', '1709517016950');
INSERT INTO `product_bid` VALUES ('1764468636220653568', '1746723931420622971', '1764466513923801088', '1764468636212264960', '1751788295852945408', '机砂', '20000', '10000', '90', '1', '96', '1920000', '1709517079774');
INSERT INTO `product_bid` VALUES ('1764468918014967808', '1746723931420622971', '1764466513923801088', '1764468918006579200', '1751788295852945408', '机砂', '20000', '10000', '90', '1', '97', '1940000', '1709517146959');
INSERT INTO `product_bid` VALUES ('1764469401425281024', '1746723931420622971', '1764466513923801088', '1764469401416892416', '1751788295852945408', '机砂', '20000', '10000', '90', '1', '98', '1960000', '1709517262213');

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `start_time` bigint DEFAULT NULL,
  `end_time` bigint DEFAULT NULL,
  `weekend_count` int DEFAULT '0' COMMENT '周末/节假日天数',
  `upsetTotal_price` double DEFAULT NULL,
  `bidIncrMax_time` int DEFAULT NULL,
  `oos_url` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `auction_status` bigint DEFAULT NULL,
  `project_details` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `bid_notes` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `bid_rule` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `contact` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `contact_mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `trans_status` bigint DEFAULT NULL,
  `transUnit_price` double DEFAULT NULL,
  `transTotal_price` double DEFAULT NULL,
  `bidRecord_id` bigint DEFAULT NULL,
  `order_num` int DEFAULT NULL,
  `create_time` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1768481872154722305 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of project
-- ----------------------------
INSERT INTO `project` VALUES ('1763497676986384384', '测试1001', '1709285640000', '1709285820000', '0', '5070', '1', '/project/2a452d5146e946cd8f5cafb1be9a.jpg', '1507', '<p>1</p>', '<p>1</p>', '<p>1</p>', 'zz', '15208492745', '1602', null, '5070', '1763497963927109632', null, '1709285585064');
INSERT INTO `project` VALUES ('1763499670417440768', '测试_过程有人出价', '1709286120000', '1709286504586', '0', '10640', '1', '/project/7364deebb8dd499b9b4352cf1961.jpg', '1507', '<p>1</p>', '<p>1</p>', '<p>1</p>', 'ss', '15202020100', '1602', null, '42560', '1763501030349209600', null, '1709286060361');
INSERT INTO `project` VALUES ('1763500873318662144', '测试_全程无人出价', '1709286420000', '1709286600000', '0', '2520', '3', '/project/81db2343554246a191535a4a5c81.jpg', '1507', '<p>1</p>', '<p>1</p>', '<p>1</p>', 'ss', '15901012362', '1602', null, null, null, null, '1709286347129');
INSERT INTO `project` VALUES ('1764450632762130432', '1万吨成品砂石3%', '1709515200000', '1709515993207', '0', '900000', '10', '/project/506638fa57ed4bee9200a4e72e6f.jpg', '1507', '<p>按时发大水</p>', '<p>昂达 昂</p>', '<p>阿斯蒂芬</p>', '高', '13008144441', '1602', null, '980000', '1764463574995959808', null, '1709512787504');
INSERT INTO `project` VALUES ('1764466513923801088', '2万吨成品砂石', '1709516700000', '1709517382251', '0', '1800000', '3', '/project/f2dbea63f622425bae3f0f87963c.jpg', '1507', '<p>非公党建</p>', '<p>设计师解放军</p>', '<p>闪电发货方单价</p>', '高', '13008144441', '1602', null, '1960000', '1764469401416892416', null, '1709516574028');
INSERT INTO `project` VALUES ('1764839215079620608', '测试', '1709691805000', '1709692105000', '0', '23400', '5', '/project/0c0cf5c5c54e48bdb4097506f549.jpg', '1507', '<p>1</p>', '<p>1</p>', '<p>1</p>', '广告', '13458984524', '1602', null, null, null, null, '1709605432889');
INSERT INTO `project` VALUES ('1768481872154722304', '5万吨砂石成品（HYTZ-2403-1-5WT）', '1710482400000', '1710483000000', '0', '3715000', '10', '/project/bd8aba6c800543a6b5417ce28303.jpg,/project/d98556e35a1b4055a7f484664683.jpg,/project/a4c166beba2c4583b27e439811a7.jpg', '1507', '<p><strong style=\"color: rgb(51, 51, 51);\">项目信息：</strong></p><p><span style=\"color: rgb(51, 51, 51);\">标的物：砂</span>石成品5万吨（包含: 含机制砂： &nbsp;吨、1-3石 &nbsp;&nbsp;吨、自然砂： &nbsp;吨 ）</p><p>1、批次号：HYTZ202403-1-5wt</p><p>2、项目业主：成都市瀚宇投资有限公司</p><p>3、项目位置：青白江区同济大道同济大道以西、文澜路以北宏源砂石场</p><p><span style=\"color: rgb(51, 51, 51);\">&nbsp;</span></p><p><img src=\"//:0\" height=\"252\" width=\"377\"></p>', '<p><strong>竞拍须知:</strong></p><p class=\"ql-align-center\"><strong style=\"color: rgb(51, 51, 51);\">总则</strong></p><p>第一条&nbsp;成都市瀚宇投资有限公司宏源砂石竞价系统依照公开、公平、公正和诚实信用的原则，发布项目交易信息。</p><p>第二条&nbsp;本公司披露的项目相关信息均根据自身产能情况作出的真实承诺。任何单位或个人均无权以本公司的名义作出有关交易承诺，本公司对此类承诺概不承担任何法律责任。</p><p>第三条&nbsp;意向方（报名人）参与交易的，应当遵守本公司的交易规则，并仔细阅读本须知。</p><p>第四条&nbsp;意向方报名前应认真阅读项目公告，宏源砂石竞价系统交易风险提示书等内容，包括但不限于投资风险、项目情况、相关权利义务等。</p><p>第五条&nbsp;本竞价系统网址（http://scjskj.tpddns.cn:5090/login）为本公司指定的网上交易地址，意向方可通过上述网站链接注册参与在线交易。</p><p class=\"ql-align-center\"><strong>&nbsp;</strong></p><p class=\"ql-align-center\"><strong>关于项目情况查阅的说明</strong></p><p>第六条&nbsp;意向方在项目公告期内，若需自行到实地查验转让标的，对宏源砂石场的生产加工能力、产品质量保障以及相关约定要求等事项进行充分尽调和查验，并充分了解标的有可能存在的风险及瑕疵。</p><p class=\"ql-align-center\"><strong>关于网上报名的说明</strong></p><p>第七条&nbsp;意向方参与交易，需通过本公司宏源砂石竞价系统进行注册、提交报名申请，交纳交易保证金后方可竞拍。</p><p>第八条&nbsp;本公司已按照要求对标的现状和已知的瑕疵、风险进行了披露，但该行为不能视为本公司对标的物作出的品质保证，本公司对此不承担瑕疵担保责任。</p><p>第九条&nbsp;意向方应在公告要求的有效报名时间段内按照本公司宏源砂石竞价系统注册报名并交纳足额保证金（以在规定时间内到达本公司资金结算账户为准）。意向方在交纳保证金时，若自身漏填、错填、不规范填报等原因造成在规定时间内无法及时参与竞价交易，所引发的后果由意向方自行负责。</p><p class=\"ql-align-center\"><strong>&nbsp;</strong></p><p class=\"ql-align-center\"><strong>关于网上竞价的说明</strong></p><p>第十条&nbsp;意向方的交易资格被确认后，应按照项目公告或竞价公告的要求参与网络竞价。竞价过程中，意向方应遵循宏源砂石竞价规则的相关规定。</p><p class=\"ql-align-center\"><strong>关于交易成功的说明</strong></p><p>第十一条&nbsp;意向方交易未成功的，本公司将按程序原途径、全额、无息退还其交纳的保证金。</p><p>第十二条&nbsp;本须知所称交易成功是指：</p><p>	1.公告期限届满后，若仅征集到一家合格意向投资方的,且进行挂牌价确认的（且进行一次有效报价的，初始报价为起拍价），按交易程序确认为成交人；</p><p>	2.公告期限届满后，采用集中竞价+延时竞价方式（详见竞价规则）组织交易的，由本公司按网络竞价规则确认最终投资方的，即为交易成功；</p><p>第十三条 交易成功后，本公司与成交人签订砂石销售协议（合同附后），约定双方权力与义务。</p><p>第十四条 本须知的最终解释权归本公司。</p><p class=\"ql-align-center\"><strong>&nbsp;</strong></p><p class=\"ql-align-center\"><strong>&nbsp;</strong></p><p class=\"ql-align-center\"><strong>关于货款支付的说明</strong></p><p>第十五条 本项目交易成交后，可分<u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</u>次付款，首次付款比例为总货款的30%。</p><p>第十六条 本项目税率为3%</p><p class=\"ql-align-center\"><strong>关于砂石成品运输的说明</strong></p><p>第十七条 <span style=\"color: rgb(51, 51, 51);\">本</span>项目瀚宇公司提供15公里（含）以内免费运输服务。若成交人收货目的地超过宏源砂石场15公里，</p><p>	由成交人自行运输或委托瀚宇公司运输并由成交人承担超出15公里部分的运输费。</p><p class=\"ql-align-center\"><strong>&nbsp;</strong></p><p class=\"ql-align-center\"><strong style=\"color: rgb(51, 51, 51);\">风险提示</strong></p><p class=\"ql-align-center\"><span style=\"color: rgb(51, 51, 51);\">宏源砂石竞价系统交易风险提示书</span></p><p>	&nbsp;</p><p>	<strong style=\"color: rgb(51, 51, 51);\">特别提示：</strong><span style=\"color: rgb(51, 51, 51);\">本风险提示书不能取代投资者本人的投资判断，也不会降低投资者参与宏源砂石竞价交易活动的固有风险，相应的投资风险、履约责任以及费用由投资者自行承担。</span></p><p>	<span style=\"color: rgb(51, 51, 51);\">尊敬的投资者：</span></p><p>	<strong style=\"color: rgb(51, 51, 51);\">您通过成都市瀚宇投资有限公司宏源砂石竞价系统（以下简称“本公司”）参与交易时，可能会存在因交易、投资带来的</strong></p><p>	<strong style=\"color: rgb(51, 51, 51);\">收益不确定性风险。本风险提示书旨在让您更好地了解其中的风险，审慎做出交易决策。您在提交交易申请前，请仔细阅</strong></p><p>	<strong style=\"color: rgb(51, 51, 51);\">读并确保自己理解本风险提示书的全部内容，了解交易规则、项目公告、交易须知、申请人承诺等相关文件的规定，并结</strong></p><p>	<strong style=\"color: rgb(51, 51, 51);\">合自身的投资经验、目标、财务状况、风险承受能力等自行决定是否参与交易。对本风险提示书有不理解的地方请及时咨</strong></p><p>	<strong style=\"color: rgb(51, 51, 51);\">询本公司相关人员。</strong></p><p>	<span style=\"color: rgb(51, 51, 51);\">投资者可能面对的风险包括但不限于：</span></p><p>	<span style=\"color: rgb(51, 51, 51);\">一、经济和市场风险</span></p><p>	<span style=\"color: rgb(51, 51, 51);\">因经济、市场环境变化或国家法律法规、政策变化，可能导致交易标的价值波动，投资者应自行承担由此产生的损失。</span></p><p>	<span style=\"color: rgb(51, 51, 51);\">二、信息披露风险</span></p><p>	<span style=\"color: rgb(51, 51, 51);\">本公司披露的交易标的相关信息（包括但不限于信息披露公告以及交易标的图片、名称、文字描述及其他相关信息等）</span></p><p>	<span style=\"color: rgb(51, 51, 51);\">系本公司根据宏源砂石产能情况进行发布，投资者在决定参与交易活动前，应对交易标的进行充分全面了解。投资者应</span></p><p>	<span style=\"color: rgb(51, 51, 51);\">当在提交交易申请前，自行勘察交易标的实物。投资者提交交易申请、参与竞买的，即表明认可交易标的现状。投资者</span></p><p>	<span style=\"color: rgb(51, 51, 51);\">应自行承担可能由此产生的损失。</span></p><p>	<span style=\"color: rgb(51, 51, 51);\">三、交易风险</span></p><p>	<span style=\"color: rgb(51, 51, 51);\">投资者在交易过程中，可能面对以下风险，投资者应自行承担由此产生的损失。</span></p><p>	<span style=\"color: rgb(51, 51, 51);\">1.因战争、自然灾害、等不可抗力原因导致交易标的损毁灭失，投资者应自行承担由此可能产生的损失。</span></p><p><span style=\"color: rgb(51, 51, 51);\">2.交易标的成交后，对交易标的交割过程中发生的包括但不限于包装、运输、交付、税费等一切费用、纷争等，均由交</span></p><p><span style=\"color: rgb(51, 51, 51);\">易双方依据交易合同协商处理。</span></p><p>	<span style=\"color: rgb(51, 51, 51);\">3.投资者因填写信息不真实、不准确或不完整而造成注册账户无法激活或保证金无法退还的，自行承担相应后果。</span></p><p>	<span style=\"color: rgb(51, 51, 51);\">4.投资者应当根据自身的经济条件、心理及风险承受能力谨慎、理性参与交易，树立正确投资理念，确保资金安全，</span></p><p>	<span style=\"color: rgb(51, 51, 51);\">务必对此有清醒认识，审慎做出各项交易决策。</span></p><p>	<span style=\"color: rgb(51, 51, 51);\">投资有风险，交易须谨慎！</span></p><p><strong>&nbsp;</strong></p><p><strong>&nbsp;</strong></p><p><br></p><p><br></p><p><br></p><p>	</p>', '<p><strong>竞价规则</strong></p><p>	①设置集中竞价期10分钟与延时竞价期120秒/轮。</p><p>	②报价高于现有最高报价(首次报价为起拍价)方为有效报价。</p><p>	③集中竞价结束时无人报价，即为流标。</p><p>	④集中竞价期内竞买人可自由报价。</p><p>	⑤集中竞价期结束后立即进入延时竞价期。延时竞价期内如无人加价，则集中竞价期最高出价者即为成交人，该标的竞价活动结束。延时竞价期内如出现有效报价，则进入新的延时竞价期；在一个延时竞价期内如未出现有效报价，则报价结束，当前最高有效报价者即成为成交人，该标的竞价活动结束。延时竞价期限为当日24时。</p><p>&nbsp;</p><p>&nbsp;</p>', '高霞', '13008144441', '1602', null, null, null, null, '1710473913512');

-- ----------------------------
-- Table structure for region
-- ----------------------------
DROP TABLE IF EXISTS `region`;
CREATE TABLE `region` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `longitude` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `latitude` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `parent_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_time` bigint DEFAULT NULL,
  `data_type` int DEFAULT NULL,
  `order_num` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index` (`code`,`type`,`parent_code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=100002 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of region
-- ----------------------------
INSERT INTO `region` VALUES ('1', '中国', 'ZG', '86', '403', '中国', null, null, '0', '1638256919567', '1', null);
INSERT INTO `region` VALUES ('2', '四川省', 'SCS', '51', '404', '四川省', null, null, '86', '1638256919567', '1', null);
INSERT INTO `region` VALUES ('3', '成都市', 'CDS', '5101', '405', '成都市', '104.26019370099294', '30.88171073151499', '51', '1638256919605', '1', null);
INSERT INTO `region` VALUES ('4', '锦江区', 'JJQ', '510104', '406', null, null, null, '5101', '1638256919614', '1', null);
INSERT INTO `region` VALUES ('5', '青羊区', 'QYQ', '510105', '406', null, null, null, '5101', '1638256919643', '1', null);
INSERT INTO `region` VALUES ('6', '金牛区', 'JNQ', '510106', '406', null, null, null, '5101', '1638256919653', '1', null);
INSERT INTO `region` VALUES ('7', '武侯区', 'WHQ', '510107', '406', null, null, null, '5101', '1638256919635', '1', null);
INSERT INTO `region` VALUES ('8', '成华区', 'CHQ', '510108', '406', null, null, null, '5101', '1638256992456', '1', null);
INSERT INTO `region` VALUES ('9', '龙泉驿区', 'LQYQ', '510112', '406', null, null, null, '5101', '1638256992465', '1', null);
INSERT INTO `region` VALUES ('10', '青白江区', 'QBJQ', '510113', '406', null, null, null, '5101', '1638256992475', '1', null);
INSERT INTO `region` VALUES ('11', '新都区', 'XDQ', '510114', '406', null, null, null, '5101', '1638256992500', '1', null);
INSERT INTO `region` VALUES ('12', '温江区', 'WJQ', '510115', '406', null, null, null, '5101', '1638256992510', '1', null);
INSERT INTO `region` VALUES ('13', '双流区', 'SLQ', '510116', '406', null, null, null, '5101', '1638256992518', '1', null);
INSERT INTO `region` VALUES ('14', '郫都区', 'PDQ', '510117', '406', null, null, null, '5101', '1638256992492', '1', null);
INSERT INTO `region` VALUES ('15', '新津区', 'XJQ', '510132', '406', null, null, null, '5101', '1638256992482', '1', null);
INSERT INTO `region` VALUES ('16', '金堂县', 'JTX', '510121', '406', '', '', '', '5101', '1638256992482', '1', null);
INSERT INTO `region` VALUES ('17', '大邑县', 'DYX', '510129', '406', null, null, null, '5101', '1638256992302', '1', null);
INSERT INTO `region` VALUES ('18', '浦江县', 'PJX', '510131', '406', null, null, null, '5101', '1638256992315', '1', null);
INSERT INTO `region` VALUES ('19', '都江堰市', 'DJYS', '510181', '406', null, null, null, '5101', '1638256992324', '1', null);
INSERT INTO `region` VALUES ('20', '彭州市', 'PZS', '510182', '406', null, null, null, '5101', '1638256992335', '1', null);
INSERT INTO `region` VALUES ('21', '邛崃市', 'QLS', '510183', '406', null, null, null, '5101', '1638256992404', '1', null);
INSERT INTO `region` VALUES ('22', '崇州市', 'CZS', '510184', '406', null, null, null, '5101', '1638256992346', '1', null);
INSERT INTO `region` VALUES ('23', '简阳市', 'JYS', '510185', '406', null, null, null, '5101', '1638256992352', '1', null);
INSERT INTO `region` VALUES ('24', '高新区', 'GXQ', '510102', '406', null, null, null, '5101', '1638256992370', '1', null);
INSERT INTO `region` VALUES ('25', '天府新区', 'TFXQ', '510156', '406', null, null, null, '5101', '1638256992363', '1', null);
INSERT INTO `region` VALUES ('26', '大弯街道', 'DWJD', '510113002', '407', null, '104.272636', '30.901434', '510113', '1638256992363', '1', null);
INSERT INTO `region` VALUES ('27', '大同街道', 'DTJD', '510113003', '407', null, '104.296307', '30.869607', '510113', '1638256992363', '1', null);
INSERT INTO `region` VALUES ('28', '弥牟镇', 'MMZ', '510113102', '407', null, '104.207135', '30.88629', '510113', '1638256992363', '1', null);
INSERT INTO `region` VALUES ('29', '城厢镇', 'CXZ', '510113104', '407', null, '104.328375', '30.858142', '510113', '1638256992363', '1', null);
INSERT INTO `region` VALUES ('30', '清泉镇', 'QQZ', '510113108', '407', null, '104.397796', '30.752887', '510113', '1638256992363', '1', null);
INSERT INTO `region` VALUES ('31', '姚渡镇', 'YDZ', '510113106', '407', null, '104.351006', '30.829591', '510113', '1638256992363', '1', null);
INSERT INTO `region` VALUES ('32', '福洪镇', 'FHZ', '510113111', '407', null, '104.340062', '30.742969', '510113', '1638256992363', '1', null);
INSERT INTO `region` VALUES ('34', '三圣街道', 'SSJD', '510104037', '407', '测试', '104.27166522404696', '30.88838748149368', '510104', '1638256992363', '1', null);
INSERT INTO `region` VALUES ('35', '东湖街道', 'DHJD', '510104018', '407', null, null, null, '510104', '1638256992363', '1', null);
INSERT INTO `region` VALUES ('36', '沙河街道', 'SHJD', '510104030', '407', null, null, null, '510104', '1638256992363', '1', null);
INSERT INTO `region` VALUES ('37', '锦华路街道', 'JHLJD', '510104019', '407', null, null, null, '510104', '1638256992363', '1', null);
INSERT INTO `region` VALUES ('38', '柳江街道', 'LJJD', '510104036', '407', null, null, null, '510104', '1638256992363', '1', null);
INSERT INTO `region` VALUES ('39', '春熙路街道', 'CXLJD', '510104022', '407', null, null, null, '510104', '1638256992363', '1', null);
INSERT INTO `region` VALUES ('40', '狮子山街道', 'SZSJD', '510104032', '407', null, null, null, '510104', '1638256992363', '1', null);
INSERT INTO `region` VALUES ('41', '牛市口街道', 'NSKJD', '510104026', '407', null, null, null, '510104', '1638256992363', '1', null);
INSERT INTO `region` VALUES ('42', '书院街街道', 'SYJJD', '510104023', '407', null, null, null, '510104', '1638256992363', '1', null);
INSERT INTO `region` VALUES ('43', '成龙路街道', 'CLLJD', '510104035', '407', null, null, null, '510104', '1638256992363', '1', null);
INSERT INTO `region` VALUES ('44', '锦官驿街道', 'JGYJD', '510104017', '407', null, null, null, '510104', '1638256992363', '1', null);
INSERT INTO `region` VALUES ('45', '茶店子街道', 'CDZJD', '510106031', '407', null, null, null, '510106', '1638256992363', '1', null);
INSERT INTO `region` VALUES ('46', '抚琴街道', 'FQJD', '510106032', '407', null, null, null, '510106', '1638256992363', '1', null);
INSERT INTO `region` VALUES ('47', '营门口街道', 'YMKJD', '510106038', '407', null, null, null, '510106', '1638256992363', '1', null);
INSERT INTO `region` VALUES ('48', '西华街道', 'XHJD', '510106025', '407', null, null, null, '510106', '1638256992363', '1', null);
INSERT INTO `region` VALUES ('49', '九里堤街道', 'JLDJD', '510106035', '407', null, null, null, '510106', '1638256992363', '1', null);
INSERT INTO `region` VALUES ('50', '沙河源街道', 'SHYJD', '510106041', '407', null, null, null, '510106', '1638256992363', '1', null);
INSERT INTO `region` VALUES ('51', '五块石街道', 'WKSJD', '510106036', '407', null, null, null, '510106', '1638256992363', '1', null);
INSERT INTO `region` VALUES ('52', '荷花池街道', 'HHCJD', '510106027', '407', null, null, null, '510106', '1638256992363', '1', null);
INSERT INTO `region` VALUES ('53', '金泉街道', 'JQJD', '510106040', '407', null, null, null, '510106', '1638256992363', '1', null);
INSERT INTO `region` VALUES ('54', '天回镇街道', 'THZJD', '510106042', '407', null, null, null, '510106', '1638256992363', '1', null);
INSERT INTO `region` VALUES ('55', '凤凰山街道', 'FHSJD', '510106043', '407', null, null, null, '510106', '1638256992363', '1', null);
INSERT INTO `region` VALUES ('56', '西安路街道', 'XALJD', '510106024', '407', null, null, null, '510106', '1638256992363', '1', null);
INSERT INTO `region` VALUES ('57', '一心社区', 'YXSQ', '510113003001', '408', null, null, null, '510113003', '1638256992456', '1', null);
INSERT INTO `region` VALUES ('58', '红光社区', 'HGSQ', '510113003002', '408', null, null, null, '510113003', '1638256992465', '1', null);
INSERT INTO `region` VALUES ('59', '新峰社区', 'XFSQ', '510113003003', '408', null, null, null, '510113003', '1638256992475', '1', null);
INSERT INTO `region` VALUES ('60', '同福村', 'TFC', '510113003200', '408', null, null, null, '510113003', '1638256992500', '1', null);
INSERT INTO `region` VALUES ('61', '界牌村', 'JPC', '510113003201', '408', null, null, null, '510113003', '1638256992510', '1', null);
INSERT INTO `region` VALUES ('62', '青龙村', 'QLC', '510113003202', '408', null, null, null, '510113003', '1638256992518', '1', null);
INSERT INTO `region` VALUES ('63', '西林社区', 'XLSQ', '510113003005', '408', null, null, null, '510113003', '1638256992492', '1', null);
INSERT INTO `region` VALUES ('64', '凤祥社区', 'FXSQ', '510113003004', '408', null, null, null, '510113003', '1638256992482', '1', null);
INSERT INTO `region` VALUES ('65', '怡湖社区', 'YHSQ', '510113002001', '408', null, null, null, '510113002', '1638256992282', '1', null);
INSERT INTO `region` VALUES ('66', '石家碾社区', 'SJNSQ', '510113002002', '408', null, null, null, '510113002', '1638256992302', '1', null);
INSERT INTO `region` VALUES ('67', '大弯社区', 'DWSQ', '510113002003', '408', null, null, null, '510113002', '1638256992315', '1', null);
INSERT INTO `region` VALUES ('68', '化工路社区', 'HGLSQ', '510113002005', '408', null, null, null, '510113002', '1638256992324', '1', null);
INSERT INTO `region` VALUES ('69', '革新社区', 'GXSQ', '510113002006', '408', null, null, null, '510113002', '1638256992335', '1', null);
INSERT INTO `region` VALUES ('70', '长流河社区', 'ZLHSQ', '510113002014', '408', null, null, null, '510113002', '1638256992404', '1', null);
INSERT INTO `region` VALUES ('71', '广场社区', 'GCSQ', '510113002007', '408', null, null, null, '510113002', '1638256992346', '1', null);
INSERT INTO `region` VALUES ('72', '青江路社区', 'QJLSQ', '510113002008', '408', null, null, null, '510113002', '1638256992352', '1', null);
INSERT INTO `region` VALUES ('73', '蔡家庙社区', 'CJMSQ', '510113002010', '408', null, null, null, '510113002', '1638256992370', '1', null);
INSERT INTO `region` VALUES ('74', '团结路社区', 'TJLSQ', '510113002009', '408', null, null, null, '510113002', '1638256992363', '1', null);
INSERT INTO `region` VALUES ('75', '红锋社区', 'HFSQ', '510113002012', '408', null, null, null, '510113002', '1638256992388', '1', null);
INSERT INTO `region` VALUES ('76', '华严社区', 'HYSQ', '510113002011', '408', null, null, null, '510113002', '1638256992378', '1', null);
INSERT INTO `region` VALUES ('77', '红阳社区', 'HYSQ', '510113002013', '408', null, null, null, '510113002', '1638256992395', '1', null);
INSERT INTO `region` VALUES ('78', '红河社区', 'HHSQ', '510113002018', '408', null, null, null, '510113002', '1638256992439', '1', null);
INSERT INTO `region` VALUES ('79', '凤凰湖社区', 'FHHSQ', '510113002016', '408', null, null, null, '510113002', '1638256992421', '1', null);
INSERT INTO `region` VALUES ('80', '北新社区', 'BXSQ', '510113002019', '408', null, null, null, '510113002', '1638256992448', '1', null);
INSERT INTO `region` VALUES ('81', '黄家碾社区', 'HJNSQ', '510113002015', '408', null, null, null, '510113002', '1638256992414', '1', null);
INSERT INTO `region` VALUES ('82', '卿家湾社区', 'QJWSQ', '510113002017', '408', null, null, null, '510113002', '1638256992431', '1', null);
INSERT INTO `region` VALUES ('83', '唐家寺社区', 'TJSSQ', '510113102001', '408', null, null, null, '510113102', '1638256992527', '1', null);
INSERT INTO `region` VALUES ('84', '火星社区', 'HXSQ', '510113102002', '408', null, null, null, '510113102', '1638256992539', '1', null);
INSERT INTO `region` VALUES ('85', '国光社区', 'GGSQ', '510113102003', '408', null, null, null, '510113102', '1638256992555', '1', null);
INSERT INTO `region` VALUES ('86', '狮子村', 'SZC', '510113102200', '408', null, null, null, '510113102', '1638256992591', '1', null);
INSERT INTO `region` VALUES ('87', '曙光村', 'SGC', '510113102201', '408', null, null, null, '510113102', '1638256992599', '1', null);
INSERT INTO `region` VALUES ('88', '白马村', 'BMC', '510113102202', '408', null, null, null, '510113102', '1638256992617', '1', null);
INSERT INTO `region` VALUES ('89', '三星社区', 'SXSQ', '510113102004', '408', null, null, null, '510113102', '1638256992576', '1', null);
INSERT INTO `region` VALUES ('90', '管委会', 'GWH', '510113102109', '408', null, null, null, '510113102', '1638256992583', '1', null);
INSERT INTO `region` VALUES ('91', '槐树街社区', 'HSJSQ', '510113104001', '408', null, null, null, '510113104', '1638256992624', '1', null);
INSERT INTO `region` VALUES ('92', '茶花社区', 'CHSQ', '510113104003', '408', null, null, null, '510113104', '1638256992634', '1', null);
INSERT INTO `region` VALUES ('93', '绣川河社区', 'XCHSQ', '510113104004', '408', null, null, null, '510113104', '1638256992642', '1', null);
INSERT INTO `region` VALUES ('94', '马鞍社区', 'MASQ', '510113104005', '408', null, null, null, '510113104', '1638256992651', '1', null);
INSERT INTO `region` VALUES ('95', '壁峰社区', 'BFSQ', '510113104006', '408', null, null, null, '510113104', '1638256992660', '1', null);
INSERT INTO `region` VALUES ('96', '龙潭社区', 'LTSQ', '510113104010', '408', null, null, null, '510113104', '1638256992697', '1', null);
INSERT INTO `region` VALUES ('97', '沿沱村', 'YTC', '510113104203', '408', null, null, null, '510113104', '1638256992731', '1', null);
INSERT INTO `region` VALUES ('98', '十八湾村', 'SBWC', '510113104204', '408', null, null, null, '510113104', '1638256992740', '1', null);
INSERT INTO `region` VALUES ('99', '五泉社区', 'WQSQ', '510113104009', '408', null, null, null, '510113104', '1638256992687', '1', null);
INSERT INTO `region` VALUES ('100', '玉龙村', 'YLC', '510113104208', '408', null, null, null, '510113104', '1638256992749', '1', null);
INSERT INTO `region` VALUES ('101', '康家渡社区', 'KJDSQ', '510113104007', '408', null, null, null, '510113104', '1638256992668', '1', null);
INSERT INTO `region` VALUES ('102', '桂通社区', 'GTSQ', '510113104011', '408', null, null, null, '510113104', '1638256992704', '1', null);
INSERT INTO `region` VALUES ('103', '天星社区', 'TXSQ', '510113104012', '408', null, null, null, '510113104', '1638256992713', '1', null);
INSERT INTO `region` VALUES ('104', '甘泉社区', 'GQSQ', '510113104013', '408', null, null, null, '510113104', '1638256992724', '1', null);
INSERT INTO `region` VALUES ('105', '廖家场社区', 'LJCSQ', '510113108001', '408', null, null, null, '510113108', '1638256992910', '1', null);
INSERT INTO `region` VALUES ('106', '五桂村', 'WGC', '510113108200', '408', null, null, null, '510113108', '1638256992961', '1', null);
INSERT INTO `region` VALUES ('107', '西平村', 'XPC', '510113108201', '408', null, null, null, '510113108', '1638256992973', '1', null);
INSERT INTO `region` VALUES ('108', '桔丰村', 'JFC', '510113108203', '408', null, null, null, '510113108', '1638256992982', '1', null);
INSERT INTO `region` VALUES ('109', '花园村', 'HYC', '510113108204', '408', null, null, null, '510113108', '1638256992995', '1', null);
INSERT INTO `region` VALUES ('110', '北宁村', 'BNC', '510113108206', '408', null, null, null, '510113108', '1638256993014', '1', null);
INSERT INTO `region` VALUES ('111', '龙顺村', 'LSC', '510113108217', '408', null, null, null, '510113108', '1638256993050', '1', null);
INSERT INTO `region` VALUES ('112', '五里坝社区', 'WLBSQ', '510113108003', '408', null, null, null, '510113108', '1638256992932', '1', null);
INSERT INTO `region` VALUES ('113', '牌坊村', 'PFC', '510113108212', '408', null, null, null, '510113108', '1638256993023', '1', null);
INSERT INTO `region` VALUES ('114', '逍遥坪村', 'XYPC', '510113108216', '408', null, null, null, '510113108', '1638256993042', '1', null);
INSERT INTO `region` VALUES ('115', '五爱村', 'WAC', '510113108215', '408', null, null, null, '510113108', '1638256993032', '1', null);
INSERT INTO `region` VALUES ('116', '八仙桥社区', 'BXQSQ', '510113108002', '408', null, null, null, '510113108', '1638256992923', '1', null);
INSERT INTO `region` VALUES ('117', '字库社区', 'ZKSQ', '510113111002', '408', null, null, null, '510113111', '1638256993087', '1', null);
INSERT INTO `region` VALUES ('118', '杏花社区', 'XHSQ', '510113111003', '408', null, null, null, '510113111', '1638256993096', '1', null);
INSERT INTO `region` VALUES ('119', '上元桥社区', 'SYQSQ', '510113111004', '408', null, null, null, '510113111', '1638256993113', '1', null);
INSERT INTO `region` VALUES ('120', '壁山村', 'BSC', '510113111209', '408', null, null, null, '510113111', '1638256993121', '1', null);
INSERT INTO `region` VALUES ('121', '龙王村', 'LWC', '510113111210', '408', null, null, null, '510113111', '1638256993141', '1', null);
INSERT INTO `region` VALUES ('122', '金星村', 'JXC', '510113111211', '408', null, null, null, '510113111', '1638256993164', '1', null);
INSERT INTO `region` VALUES ('123', '三元村', 'SYC', '510113111212', '408', null, null, null, '510113111', '1638256993177', '1', null);
INSERT INTO `region` VALUES ('124', '油坊村', 'YFC', '510113111213', '408', null, null, null, '510113111', '1638256993184', '1', null);
INSERT INTO `region` VALUES ('125', '陈家湾社区', 'CJWSQ', '510113111001', '408', null, null, null, '510113111', '1638256993063', '1', null);
INSERT INTO `region` VALUES ('126', '姚家渡社区', 'YJDSQ', '510113106001', '408', null, null, null, '510113106', '1638256992760', '1', null);
INSERT INTO `region` VALUES ('127', '光明村', 'GMC', '510113106201', '408', null, null, null, '510113106', '1638256992794', '1', null);
INSERT INTO `region` VALUES ('128', '坪家村', 'PJC', '510113106202', '408', null, null, null, '510113106', '1638256992802', '1', null);
INSERT INTO `region` VALUES ('129', '凉水村', 'LSC', '510113106203', '408', null, null, null, '510113106', '1638256992811', '1', null);
INSERT INTO `region` VALUES ('130', '芦稿村', 'LGC', '510113106204', '408', null, null, null, '510113106', '1638256992820', '1', null);
INSERT INTO `region` VALUES ('131', '龙王社区', 'LWSQ', '510113106003', '408', null, null, null, '510113106', '1638256992777', '1', null);
INSERT INTO `region` VALUES ('132', '梁湾村', 'LWC', '510113106208', '408', null, null, null, '510113106', '1638256992845', '1', null);
INSERT INTO `region` VALUES ('133', '清平村', 'QPC', '510113106209', '408', null, null, null, '510113106', '1638256992853', '1', null);
INSERT INTO `region` VALUES ('134', '牟池塔村', 'MCTC', '510113106210', '408', null, null, null, '510113106', '1638256992862', '1', null);
INSERT INTO `region` VALUES ('135', '天平堰村', 'TPYC', '510113106211', '408', null, null, null, '510113106', '1638256992886', '1', null);
INSERT INTO `region` VALUES ('136', '红瓦店社区', 'HWDSQ', '510113106002', '408', null, null, null, '510113106', '1638256992767', '1', null);
INSERT INTO `region` VALUES ('137', '西江村', 'XJC', '510113106206', '408', null, null, null, '510113106', '1638256992830', '1', null);
INSERT INTO `region` VALUES ('138', '东方社区', 'DFSQ', '510113106004', '408', null, null, null, '510113106', '1638256992785', '1', null);
INSERT INTO `region` VALUES ('139', '马坪村', 'MPC', '510113106207', '408', null, null, null, '510113106', '1638256992837', '1', null);
INSERT INTO `region` VALUES ('140', '十五里社区', 'SWLSQ', '510113104008', '408', null, null, null, '510113104', '1638256992678', '1', null);
INSERT INTO `region` VALUES ('141', '奥林社区', 'ALSQ', '510106031008', '408', null, null, null, '510106031', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('142', '化成社区', 'HCSQ', '510106031009', '408', null, null, null, '510106031', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('143', '育苗路社区', 'YMLSQ', '510106031010', '408', null, null, null, '510106031', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('144', '锦城社区', 'JCSQ', '510106031011', '408', null, null, null, '510106031', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('145', '育新社区', 'YXSQ', '510106031012', '408', null, null, null, '510106031', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('146', '黄忠社区', 'HZSQ', '510106031013', '408', null, null, null, '510106031', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('147', '同善社区', 'TSSQ', '510106031014', '408', null, null, null, '510106031', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('148', '西北街社区', 'XBJSQ', '510106032001', '408', null, null, null, '510106032', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('149', '西南街社区', 'XNJSQ', '510106032002', '408', null, null, null, '510106032', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('150', '金鱼街社区', 'JYJSQ', '510106032003', '408', null, null, null, '510106032', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('151', '圃园路社区', 'PYLSQ', '510106032005', '408', null, null, null, '510106032', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('152', '铁路新村社区', 'TLXCSQ', '510106032009', '408', null, null, null, '510106032', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('153', '金沙路社区', 'JSLSQ', '510106032011', '408', null, null, null, '510106032', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('154', '光荣小区社区', 'GRXQSQ', '510106032012', '408', null, null, null, '510106032', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('155', '茶店社区', 'CDSQ', '510106038006', '408', null, null, null, '510106038', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('156', '银沙社区', 'YSSQ', '510106038007', '408', null, null, null, '510106038', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('157', '银桂社区', 'YGSQ', '510106038008', '408', null, null, null, '510106038', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('158', '长庆社区', 'ZQSQ', '510106038009', '408', null, null, null, '510106038', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('159', '花照壁社区', 'HZBSQ', '510106038010', '408', null, null, null, '510106038', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('160', '府河新居社区', 'FHXJSQ', '510106025012', '408', null, null, null, '510106025', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('161', '兴瓦社区', 'XWSQ', '510106025014', '408', null, null, null, '510106025', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('162', '金牛社区', 'JNSQ', '510106025002', '408', null, null, null, '510106025', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('163', '跃进社区', 'YJSQ', '510106025003', '408', null, null, null, '510106025', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('164', '青杠社区', 'QGSQ', '510106025004', '408', null, null, null, '510106025', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('165', '涧漕社区', 'JCSQ', '510106025005', '408', null, null, null, '510106025', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('166', '兴盛社区', 'XSSQ', '510106025007', '408', null, null, null, '510106025', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('167', '富家社区', 'FJSQ', '510106025008', '408', null, null, null, '510106025', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('168', '侯家社区', 'HJSQ', '510106025009', '408', null, null, null, '510106025', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('169', '金罗社区', 'JLSQ', '510106025010', '408', null, null, null, '510106025', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('170', '九里堤北路社区', 'JLDBLSQ', '510106035010', '408', null, null, null, '510106035', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('171', '康禧社区', 'KXSQ', '510106035011', '408', null, null, null, '510106035', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('172', '西南交大社区', 'XNJDSQ', '510106035007', '408', null, null, null, '510106035', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('173', '古柏社区', 'GBSQ', '510106041003', '408', null, null, null, '510106041', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('174', '新桥社区', 'XQSQ', '510106041004', '408', null, null, null, '510106041', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('175', '陆家桥社区', 'LJQSQ', '510106041005', '408', null, null, null, '510106041', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('176', '友联社区', 'YLSQ', '510106041006', '408', null, null, null, '510106041', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('177', '踏水桥社区', 'TSQSQ', '510106041007', '408', null, null, null, '510106041', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('178', '王贾桥社区', 'WJQSQ', '510106041008', '408', null, null, null, '510106041', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('179', '长久社区', 'ZJSQ', '510106041010', '408', null, null, null, '510106041', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('180', '汇泽社区', 'HZSQ', '510106041012', '408', null, null, null, '510106041', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('181', '洞子口社区', 'DZKSQ', '510106041013', '408', null, null, null, '510106041', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('182', '五福社区', 'WFSQ', '510106036002', '408', null, null, null, '510106036', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('183', '赛云台社区', 'SYTSQ', '510106036006', '408', null, null, null, '510106036', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('184', '福源社区', 'FYSQ', '510106036007', '408', null, null, null, '510106036', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('185', '互助路社区', 'HZLSQ', '510106027004', '408', null, null, null, '510106027', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('186', '荷花池社区', 'HHCSQ', '510106027010', '408', null, null, null, '510106027', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('187', '北站社区', 'BZSQ', '510106027013', '408', null, null, null, '510106027', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('188', '城隍庙社区', 'CHMSQ', '510106027014', '408', null, null, null, '510106027', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('189', '五丁社区', 'WDSQ', '510106027015', '408', null, null, null, '510106027', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('190', '何家社区', 'HJSQ', '510106040016', '408', null, null, null, '510106040', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('191', '金桥社区', 'JQSQ', '510106040018', '408', null, null, null, '510106040', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('192', '金科苑社区', 'JKYSQ', '510106040019', '408', null, null, null, '510106040', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('193', '蜀西社区', 'SXSQ', '510106040021', '408', null, null, null, '510106040', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('194', '迎宾路社区', 'YBLSQ', '510106040002', '408', null, null, null, '510106040', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('195', '高家社区', 'GJSQ', '510106040003', '408', null, null, null, '510106040', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('196', '淳风桥社区', 'CFQSQ', '510106040004', '408', null, null, null, '510106040', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('197', '清水河社区', 'QSHSQ', '510106040005', '408', null, null, null, '510106040', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('198', '郎家社区', 'LJSQ', '510106040007', '408', null, null, null, '510106040', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('199', '互助社区', 'HZSQ', '510106040015', '408', null, null, null, '510106040', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('200', '金华社区', 'JHSQ', '510106042002', '408', null, null, null, '510106042', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('201', '大湾社区', 'DWSQ', '510106042004', '408', null, null, null, '510106042', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('202', '杜家碾社区', 'DJNSQ', '510106042005', '408', null, null, null, '510106042', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('203', '太华社区', 'THSQ', '510106042006', '408', null, null, null, '510106042', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('204', '余家巷社区', 'YJXSQ', '510106042007', '408', null, null, null, '510106042', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('205', '宝年社区', 'BNSQ', '510106042008', '408', null, null, null, '510106042', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('206', '木龙湾社区', 'MLWSQ', '510106042009', '408', null, null, null, '510106042', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('207', '甘油社区', 'GYSQ', '510106042010', '408', null, null, null, '510106042', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('208', '车站社区', 'CZSQ', '510106042011', '408', null, null, null, '510106042', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('209', '红星社区', 'HXSQ', '510106042012', '408', null, null, null, '510106042', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('210', '土门社区', 'TMSQ', '510106042013', '408', null, null, null, '510106042', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('211', '长胜社区', 'ZSSQ', '510106042014', '408', null, null, null, '510106042', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('212', '银杏园社区', 'YXYSQ', '510106042015', '408', null, null, null, '510106042', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('213', '白塔社区', 'BTSQ', '510106042016', '408', null, null, null, '510106042', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('214', '万石社区', 'WSSQ', '510106042019', '408', null, null, null, '510106042', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('215', '玉垒社区', 'YLSQ', '510106042020', '408', null, null, null, '510106042', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('216', '金韦社区', 'JWSQ', '510106043001', '408', null, null, null, '510106043', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('217', '凤翔社区', 'FXSQ', '510106043002', '408', null, null, null, '510106043', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('218', '青羊北路社区', 'QYBLSQ', '510106024010', '408', null, null, null, '510106024', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('219', '枣子巷社区', 'ZZXSQ', '510106024011', '408', null, null, null, '510106024', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('220', '永陵社区', 'YLSQ', '510106024012', '408', null, null, null, '510106024', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('221', '白果林社区', 'BGLSQ', '510106024013', '408', null, null, null, '510106024', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('222', '金琴南路社区', 'JQNLSQ', '510106024014', '408', null, null, null, '510106024', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('223', '马家花园社区', 'MJHYSQ', '510106024015', '408', null, null, null, '510106024', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('224', '花牌坊社区', 'HPFSQ', '510106024016', '408', null, null, null, '510106024', '1638256919588', '1', null);
INSERT INTO `region` VALUES ('225', '水井坊社区', 'SJFSQ', '510104017001', '408', null, null, null, '510104017', '1661745682563', '1', null);
INSERT INTO `region` VALUES ('226', '崇德里社区', 'CDLSQ', '510104017002', '408', null, null, null, '510104017', '1661745682577', '1', null);
INSERT INTO `region` VALUES ('227', '合江亭社区', 'HJTSQ', '510104017003', '408', null, null, null, '510104017', '1661745682581', '1', null);
INSERT INTO `region` VALUES ('228', '大慈寺社区', 'DCSSQ', '510104017004', '408', null, null, null, '510104017', '1661745682584', '1', null);
INSERT INTO `region` VALUES ('229', '点将台社区', 'DJTSQ', '510104017005', '408', null, null, null, '510104017', '1661745682589', '1', null);
INSERT INTO `region` VALUES ('230', '交子社区', 'JZSQ', '510104017006', '408', null, null, null, '510104017', '1661745682593', '1', null);
INSERT INTO `region` VALUES ('231', '蓝谷地社区', 'LGDSQ', '510104035014', '408', null, null, null, '510104035', '1661745682596', '1', null);
INSERT INTO `region` VALUES ('232', '香樟社区', 'XZSQ', '510104035015', '408', null, null, null, '510104035', '1661745682599', '1', null);
INSERT INTO `region` VALUES ('233', '卓锦城社区', 'ZJCSQ', '510104035016', '408', null, null, null, '510104035', '1661745682602', '1', null);
INSERT INTO `region` VALUES ('234', '水杉社区', 'SSSQ', '510104035017', '408', null, null, null, '510104035', '1661745682606', '1', null);
INSERT INTO `region` VALUES ('235', '枫树社区', 'FSSQ', '510104035018', '408', null, null, null, '510104035', '1661745682610', '1', null);
INSERT INTO `region` VALUES ('236', '国槐社区', 'GHSQ', '510104035004', '408', null, null, null, '510104035', '1661745682613', '1', null);
INSERT INTO `region` VALUES ('237', '皇经楼社区', 'HJLSQ', '510104035007', '408', null, null, null, '510104035', '1661745682623', '1', null);
INSERT INTO `region` VALUES ('238', '粮丰社区', 'LFSQ', '510104035009', '408', null, null, null, '510104035', '1661745682626', '1', null);
INSERT INTO `region` VALUES ('239', '华新社区', 'HXSQ', '510104035010', '408', null, null, null, '510104035', '1661745682630', '1', null);
INSERT INTO `region` VALUES ('240', '庆云社区', 'QYSQ', '510104023013', '408', null, null, null, '510104023', '1661745682634', '1', null);
INSERT INTO `region` VALUES ('241', '五昭路社区', 'WZLSQ', '510104023016', '408', null, null, null, '510104023', '1661745682637', '1', null);
INSERT INTO `region` VALUES ('242', '福字街社区', 'FZJSQ', '510104023017', '408', null, null, null, '510104023', '1661745682640', '1', null);
INSERT INTO `region` VALUES ('243', '华兴街社区', 'HXJSQ', '510104023018', '408', null, null, null, '510104023', '1661745682643', '1', null);
INSERT INTO `region` VALUES ('244', '一心桥社区', 'YXQSQ', '510104026015', '408', null, null, null, '510104026', '1661745682647', '1', null);
INSERT INTO `region` VALUES ('245', '锦东社区', 'JDSQ', '510104026016', '408', null, null, null, '510104026', '1661745682649', '1', null);
INSERT INTO `region` VALUES ('246', '龙舟社区', 'LZSQ', '510104026017', '408', null, null, null, '510104026', '1661745682652', '1', null);
INSERT INTO `region` VALUES ('247', '莲桂西路社区', 'LGXLSQ', '510104026018', '408', null, null, null, '510104026', '1661745682654', '1', null);
INSERT INTO `region` VALUES ('248', '得胜街社区', 'DSJSQ', '510104026006', '408', null, null, null, '510104026', '1661745682658', '1', null);
INSERT INTO `region` VALUES ('249', '水碾河路南社区', 'SNHLNSQ', '510104026008', '408', null, null, null, '510104026', '1661745682662', '1', null);
INSERT INTO `region` VALUES ('250', '华成路社区', 'HCLSQ', '510104026009', '408', null, null, null, '510104026', '1661745682666', '1', null);
INSERT INTO `region` VALUES ('251', '九眼桥社区', 'JYQSQ', '510104026012', '408', null, null, null, '510104026', '1661745682669', '1', null);
INSERT INTO `region` VALUES ('252', '莲花社区', 'LHSQ', '510104026013', '408', null, null, null, '510104026', '1661745682672', '1', null);
INSERT INTO `region` VALUES ('253', '紫东社区', 'ZDSQ', '510104026014', '408', null, null, null, '510104026', '1661745682674', '1', null);
INSERT INTO `region` VALUES ('254', '四川师大社区', 'SCSDSQ', '510104032004', '408', null, null, null, '510104032', '1661745682677', '1', null);
INSERT INTO `region` VALUES ('255', '万科城花社区', 'WKCHSQ', '510104032005', '408', null, null, null, '510104032', '1661745682679', '1', null);
INSERT INTO `region` VALUES ('256', '菱窠社区', 'LKSQ', '510104032006', '408', null, null, null, '510104032', '1661745682682', '1', null);
INSERT INTO `region` VALUES ('257', '花果社区', 'HGSQ', '510104032007', '408', null, null, null, '510104032', '1661745682685', '1', null);
INSERT INTO `region` VALUES ('258', '佳宏路社区', 'JHLSQ', '510104032009', '408', null, null, null, '510104032', '1661745682687', '1', null);
INSERT INTO `region` VALUES ('259', '金像寺社区', 'JXSSQ', '510104032010', '408', null, null, null, '510104032', '1661745682693', '1', null);
INSERT INTO `region` VALUES ('260', '总府路社区', 'ZFLSQ', '510104022006', '408', null, null, null, '510104022', '1661745682695', '1', null);
INSERT INTO `region` VALUES ('261', '督院街社区', 'DYJSQ', '510104022009', '408', null, null, null, '510104022', '1661745682697', '1', null);
INSERT INTO `region` VALUES ('262', '盐市口社区', 'YSKSQ', '510104022011', '408', null, null, null, '510104022', '1661745682700', '1', null);
INSERT INTO `region` VALUES ('263', '盐道街社区', 'YDJSQ', '510104022010', '408', null, null, null, '510104022', '1661745682703', '1', null);
INSERT INTO `region` VALUES ('264', '锦馨社区', 'JXSQ', '510104036003', '408', null, null, null, '510104036', '1661745682705', '1', null);
INSERT INTO `region` VALUES ('265', '包江桥社区', 'BJQSQ', '510104036005', '408', null, null, null, '510104036', '1661745682712', '1', null);
INSERT INTO `region` VALUES ('266', '祝国寺社区', 'ZGSSQ', '510104036006', '408', null, null, null, '510104036', '1661745682715', '1', null);
INSERT INTO `region` VALUES ('267', '锦逸社区', 'JYSQ', '510104036009', '408', null, null, null, '510104036', '1661745682718', '1', null);
INSERT INTO `region` VALUES ('268', '锦阳社区', 'JYSQ', '510104036010', '408', null, null, null, '510104036', '1661745682720', '1', null);
INSERT INTO `region` VALUES ('269', '柳江社区', 'LJSQ', '510104019005', '408', null, null, null, '510104019', '1661745682723', '1', null);
INSERT INTO `region` VALUES ('270', '凯天社区', 'KTSQ', '510104019006', '408', null, null, null, '510104019', '1661745682726', '1', null);
INSERT INTO `region` VALUES ('271', '琉璃社区', 'LLSQ', '510104019007', '408', null, null, null, '510104019', '1661745682730', '1', null);
INSERT INTO `region` VALUES ('272', '晨辉社区', 'CHSQ', '510104019001', '408', null, null, null, '510104019', '1661745682732', '1', null);
INSERT INTO `region` VALUES ('273', '金象花园社区', 'JXHYSQ', '510104019002', '408', null, null, null, '510104019', '1661745682739', '1', null);
INSERT INTO `region` VALUES ('274', '经天社区', 'JTSQ', '510104019003', '408', null, null, null, '510104019', '1661745682742', '1', null);
INSERT INTO `region` VALUES ('275', '皇经社区', 'HJSQ', '510104019004', '408', null, null, null, '510104019', '1661745682745', '1', null);
INSERT INTO `region` VALUES ('276', '塔子山社区', 'TZSSQ', '510104030003', '408', null, null, null, '510104030', '1661745682748', '1', null);
INSERT INTO `region` VALUES ('277', '沙河社区', 'SHSQ', '510104030004', '408', null, null, null, '510104030', '1661745682751', '1', null);
INSERT INTO `region` VALUES ('278', '静康社区', 'JKSQ', '510104030005', '408', null, null, null, '510104030', '1661745682753', '1', null);
INSERT INTO `region` VALUES ('279', '五福桥社区', 'WFQSQ', '510104030006', '408', null, null, null, '510104030', '1661745682758', '1', null);
INSERT INTO `region` VALUES ('280', '牛沙路社区', 'NSLSQ', '510104030007', '408', null, null, null, '510104030', '1661745682761', '1', null);
INSERT INTO `region` VALUES ('281', '汇泉路社区', 'HQLSQ', '510104030008', '408', null, null, null, '510104030', '1661745682765', '1', null);
INSERT INTO `region` VALUES ('282', '双桂路社区', 'SGLSQ', '510104030009', '408', null, null, null, '510104030', '1661745682769', '1', null);
INSERT INTO `region` VALUES ('283', '东怡社区', 'DYSQ', '510104018002', '408', null, null, null, '510104018', '1661745682773', '1', null);
INSERT INTO `region` VALUES ('284', '观音桥社区', 'GYQSQ', '510104018001', '408', null, null, null, '510104018', '1661745682789', '1', null);
INSERT INTO `region` VALUES ('285', '永兴社区', 'YXSQ', '510104018003', '408', null, null, null, '510104018', '1661745682802', '1', null);
INSERT INTO `region` VALUES ('286', '石牛堰社区', 'SNYSQ', '510104018004', '408', null, null, null, '510104018', '1661745682810', '1', null);
INSERT INTO `region` VALUES ('287', '河滨社区', 'HBSQ', '510104018005', '408', null, null, null, '510104018', '1661745682820', '1', null);
INSERT INTO `region` VALUES ('288', '翡翠城社区', 'FCCSQ', '510104018006', '408', null, null, null, '510104018', '1661745682826', '1', null);
INSERT INTO `region` VALUES ('289', '锦华社区', 'JHSQ', '510104018007', '408', null, null, null, '510104018', '1661745682831', '1', null);
INSERT INTO `region` VALUES ('290', '白桦林路社区', 'BHLLSQ', '510104037011', '408', null, null, null, '510104037', '1661745682836', '1', null);
INSERT INTO `region` VALUES ('291', '幸福社区', 'XFSQ', '510104037001', '408', null, null, null, '510104037', '1661745682840', '1', null);
INSERT INTO `region` VALUES ('292', '江家堰社区', 'JJYSQ', '510104037002', '408', null, null, null, '510104037', '1661745682843', '1', null);
INSERT INTO `region` VALUES ('293', '大安桥社区', 'DAQSQ', '510104037003', '408', null, null, null, '510104037', '1661745682846', '1', null);
INSERT INTO `region` VALUES ('294', '驸马社区', 'FMSQ', '510104037004', '408', null, null, null, '510104037', '1661745682852', '1', null);
INSERT INTO `region` VALUES ('295', '红砂社区', 'HSSQ', '510104037005', '408', null, null, null, '510104037', '1661745682855', '1', null);
INSERT INTO `region` VALUES ('296', '万福社区', 'WFSQ', '510104037006', '408', null, null, null, '510104037', '1661745682857', '1', null);
INSERT INTO `region` VALUES ('297', '栀子街社区', 'ZZJSQ', '510104037007', '408', null, null, null, '510104037', '1661745682859', '1', null);
INSERT INTO `region` VALUES ('298', '喜树路社区', 'XSLSQ', '510104037008', '408', null, null, null, '510104037', '1661745682862', '1', null);
INSERT INTO `region` VALUES ('299', '海棠路社区', 'HTLSQ', '510104037012', '408', null, null, null, '510104037', '1661745682865', '1', null);
INSERT INTO `region` VALUES ('300', '大夫2组', 'DF2Z', 'CN510113101165', '409', '大夫2组', null, null, '510113003007', '1639793631614', '1', null);
INSERT INTO `region` VALUES ('301', '平安大院', 'PADY', 'CN510113101414', '409', '坚强巷31号', null, null, '510113006001', '1639793631662', '1', null);
INSERT INTO `region` VALUES ('302', '红锋村7组', 'HFC7Z', 'CN510113101182', '409', '红锋村7组', null, null, '510113003015', '1639793631670', '1', null);
INSERT INTO `region` VALUES ('303', '凤凰盛景', 'FHSJ', 'CN510113101444', '409', '大同街道凤祥大道1699号', null, null, '510113001001', '1639793631680', '1', null);
INSERT INTO `region` VALUES ('304', '巨源水业宿舍', 'JYSYSS', 'CN510113101222', '409', '华金大道610号', null, null, '510113003011', '1639793631687', '1', null);
INSERT INTO `region` VALUES ('305', '横秋玉巷52号', 'HQYX52H', 'CN51011382', '409', '横秋玉巷52号', null, null, '510113006001', '1639793631696', '1', null);
INSERT INTO `region` VALUES ('306', '运贸公司宿舍', 'YMGSSS', 'CN510113101246', '409', '华金大道二段126号', null, null, '510113003001', '1639793631705', '1', null);
INSERT INTO `region` VALUES ('307', '都市兰亭', 'DSLT', 'CN510113101181', '409', '凤祥路1号', null, null, '510113003015', '1639793631714', '1', null);
INSERT INTO `region` VALUES ('308', '栖凤居一期', 'QFJYQ', 'CN51011342', '409', '华金大道三段152号', null, null, '510113001001', '1639793631722', '1', null);
INSERT INTO `region` VALUES ('309', '华严中心校宿舍', 'HYZXXSS', 'CN510113101210', '409', '教育街228号', null, null, '510113003011', '1639793631730', '1', null);
INSERT INTO `region` VALUES ('310', '大弯6组', 'DW6Z', 'CN510113101176', '409', '大弯社区6组', null, null, '510113003003', '1639793631740', '1', null);
INSERT INTO `region` VALUES ('311', '革梳厂院落', 'GSCYL', '7ae22e23a6b749408c59f2b35aa1b0ce', '409', '清泉镇廖家场社区30号', null, null, '510113008001', '1639793631749', '1', null);
INSERT INTO `region` VALUES ('312', '原国税局宿舍', 'YGSJSS', 'CN510113286', '409', '怡湖西路1号', null, null, '510113003011', '1639793631757', '1', null);
INSERT INTO `region` VALUES ('313', '四季豪庭', 'SJHT', 'CN510113100693', '409', '弥牟南街2号', null, null, '510113004008', '1639793631766', '1', null);
INSERT INTO `region` VALUES ('314', '杏花新型社区', 'XHXXSQ', 'CN510113101395', '409', '杏花社区3组', null, null, '510113009004', '1639793631774', '1', null);
INSERT INTO `region` VALUES ('315', '万科时代之光', 'WKSDZG', 'CN510113101195', '409', '凤祥大道955号', null, null, '510113003024', '1639793631784', '1', null);
INSERT INTO `region` VALUES ('316', '五爱家园小区', 'WAJYXQ', '1148ec74a2f84460b0e92701ac06896b', '409', '清泉镇五爱村2组88号', null, null, '510113008017', '1639793631792', '1', null);
INSERT INTO `region` VALUES ('317', '成钢教育街小区', 'CGJYJXQ', 'CN510113288', '409', '教育街81号', null, null, '510113003011', '1639793631800', '1', null);
INSERT INTO `region` VALUES ('318', '交大怡家', 'JDYJ', 'CN510113321', '409', '红阳东路99号', null, null, '510113003016', '1639793631809', '1', null);
INSERT INTO `region` VALUES ('319', '区教委宿舍', 'QJWSS', 'CN510113281', '409', '教育街127号', null, null, '510113003011', '1639793631818', '1', null);
INSERT INTO `region` VALUES ('320', '区机关宿舍', 'QJGSS', 'CN510113111', '409', '红阳巷4号', null, null, '510113003011', '1639793631826', '1', null);
INSERT INTO `region` VALUES ('321', '诚信巷1号', 'CXX1H', 'CN510113100673', '409', '诚信巷1号', null, null, '510113004001', '1639793631835', '1', null);
INSERT INTO `region` VALUES ('322', '金牛座', 'JNZ', 'CN510113101294', '409', '新河路92号', null, null, '510113003010', '1639793631844', '1', null);
INSERT INTO `region` VALUES ('323', '信用社宿舍', 'XYSSS', 'CN510113101315', '409', '华金大道二段175号', null, null, '510113003002', '1639793631852', '1', null);
INSERT INTO `region` VALUES ('324', '花园新城（成德南及二绕小区）二期', 'HYXC（CDNJERXQ）EQ', 'a7726878fcbd4e06b464ddb0e2edee6d', '409', '花园2号', null, null, '510113008006', '1639793631861', '1', null);
INSERT INTO `region` VALUES ('325', '太平供销社宿舍（40号）', 'TPGXSSS（40H）', '850afaa1dc4c421993ce91037b649f85', '409', '成环40号', null, null, '510113008001', '1639793631870', '1', null);
INSERT INTO `region` VALUES ('326', '检察院宿舍', 'JCYSS', 'CN510113101345', '409', '红阳东路48号', null, null, '510113003016', '1639793631878', '1', null);
INSERT INTO `region` VALUES ('327', '红星安置小区', 'HXAZXQ', 'CN510113360', '409', '红星村', null, null, '510113008015', '1639793631887', '1', null);
INSERT INTO `region` VALUES ('328', '紫苑小区', 'ZYXQ', 'CN510113199', '409', '大弯东路339号', null, null, '510113003003', '1639793631896', '1', null);
INSERT INTO `region` VALUES ('329', '区人防宿舍', 'QRFSS', 'CN510113101237', '409', '政府中路80号', null, null, '510113003011', '1639793631904', '1', null);
INSERT INTO `region` VALUES ('330', '农牧局宿舍', 'NMJSS', 'CN510113116', '409', '红阳巷3号', null, null, '510113003011', '1639793631913', '1', null);
INSERT INTO `region` VALUES ('331', '华供司', 'HGS', 'CN510113101279', '409', '玉带街12号', null, null, '510113003014', '1639793631922', '1', null);
INSERT INTO `region` VALUES ('332', '香草洲（二期）', 'XCZ（EQ）', 'CN510113101296', '409', '政府北路159号', null, null, '510113003010', '1639793631930', '1', null);
INSERT INTO `region` VALUES ('333', '妇联花园', 'FLHY', 'CN510113461', '409', '华金大道二段467号', null, null, '510113003010', '1639793631938', '1', null);
INSERT INTO `region` VALUES ('334', '鸡市巷95号', 'JSX95H', 'CN510113100678', '409', '鸡市巷95号', null, null, '510113004001', '1639793631947', '1', null);
INSERT INTO `region` VALUES ('335', '交通局宿舍', 'JTJSS', 'CN510113207', '409', '华金大道三段39号', null, null, '510113003003', '1639793631956', '1', null);
INSERT INTO `region` VALUES ('336', '巨光公司宿舍', 'JGGSSS', 'CN510113101172', '409', '大弯东路102号', null, null, '510113003003', '1639793631965', '1', null);
INSERT INTO `region` VALUES ('337', '清华逸景', 'QHYJ', 'CN510113101290', '409', '石家碾中路139号', null, null, '510113003010', '1639793631974', '1', null);
INSERT INTO `region` VALUES ('338', '点式楼', 'DSL', 'CN510113101259', '409', '怡湖东路141号', null, null, '510113003001', '1639793631983', '1', null);
INSERT INTO `region` VALUES ('339', '区农发局宿舍', 'QNFJSS', 'CN510113101206', '409', '华金大道898号', null, null, '510113003011', '1639793631991', '1', null);
INSERT INTO `region` VALUES ('340', '蝴蝶洲', 'HDZ', 'CN51011341', '409', '凤祥大道1266号', null, null, '510113001001', '1639793632000', '1', null);
INSERT INTO `region` VALUES ('341', '红阳花园', 'HYHY', 'CN510113325', '409', '嘉裕街18号', null, null, '510113003016', '1639793632008', '1', null);
INSERT INTO `region` VALUES ('342', '福聚小区1期', 'FJXQ1Q', 'CN510113101392', '409', '海棠路20号', null, null, '510113009009', '1639793632017', '1', null);
INSERT INTO `region` VALUES ('343', '同湾晓月', 'TWXY', 'CN510113101435', '409', '大同西路78号', null, null, '510113001002', '1639793632025', '1', null);
INSERT INTO `region` VALUES ('344', '糖酒公司', 'TJGS', 'CN510113101239', '409', '大弯北路101号', null, null, '510113003001', '1639793632035', '1', null);
INSERT INTO `region` VALUES ('345', '蜀星中学宿舍', 'SXZXSS', 'CN510113101225', '409', '教育街131号', null, null, '510113003011', '1639793632042', '1', null);
INSERT INTO `region` VALUES ('346', '蓝光.公园锦汇', 'LG.GYJH', 'CN510113101305', '409', '金凤路33号', null, null, '510113003006', '1639793632051', '1', null);
INSERT INTO `region` VALUES ('347', '凤凰岛', 'FHD', 'CN510113101193', '409', '凤凰大道二段765号', null, null, '510113003021', '1639793632060', '1', null);
INSERT INTO `region` VALUES ('348', '五泉13组秦家院落', 'WQ13ZQJYL', 'CN510113391', '409', '五泉村13组', null, null, '510113006013', '1639793632069', '1', null);
INSERT INTO `region` VALUES ('349', '阳光花园南苑', 'YGHYNY', 'CN510113101285', '409', '石家碾西路132号', null, null, '510113003010', '1639793632077', '1', null);
INSERT INTO `region` VALUES ('350', '长流河小区', 'ZLHXQ', 'CN51011357', '409', '大夫北路138号', null, null, '510113003007', '1639793632086', '1', null);
INSERT INTO `region` VALUES ('351', '恒大雅苑', 'HDYY', 'CN51011340', '409', '凤凰东四路222号', null, null, '510113001001', '1639793632095', '1', null);
INSERT INTO `region` VALUES ('352', '供销社和农行宿舍', 'GXSHNXSS', 'CN51011385', '409', '大东街13号', null, null, '510113006001', '1639793632103', '1', null);
INSERT INTO `region` VALUES ('353', '新花鸟', 'XHN', 'CN510113101325', '409', '石家碾东路289号', null, null, '510113003002', '1639793632112', '1', null);
INSERT INTO `region` VALUES ('354', '宏翔兴居', 'HXXJ', 'CN51011360', '409', '华逸路688号', null, null, '510113003013', '1639793632120', '1', null);
INSERT INTO `region` VALUES ('355', '青茂苑', 'QMY', 'CN510113322', '409', '政府北路110号', null, null, '510113003016', '1639793632129', '1', null);
INSERT INTO `region` VALUES ('356', '逍遥新村小区', 'XYXCXQ', '9d7e58fcaaa041f2837621abd424b4a0', '409', '长红10号', null, null, '510113008015', '1639793632137', '1', null);
INSERT INTO `region` VALUES ('357', '植物油厂宿舍', 'ZWYCSS', 'CN51011393', '409', '下北街94号', null, null, '510113006001', '1639793632146', '1', null);
INSERT INTO `region` VALUES ('358', '区经济局宿舍', 'QJJJSS', 'CN510113103', '409', '青江西路101号', null, null, '510113003011', '1639793632154', '1', null);
INSERT INTO `region` VALUES ('359', '鸡市巷97号', 'JSX97H', 'CN510113100679', '409', '鸡市巷97号', null, null, '510113004001', '1639793632163', '1', null);
INSERT INTO `region` VALUES ('360', '兴和雅居', 'XHYJ', 'CN510113101293', '409', '新河路8号', null, null, '510113003010', '1639793632171', '1', null);
INSERT INTO `region` VALUES ('361', '联兴村9组', 'LXC9Z', 'CN510113376', '409', '联兴村9组', null, null, '510113006013', '1639793632180', '1', null);
INSERT INTO `region` VALUES ('362', '城北小区', 'CBXQ', 'CN510113101347', '409', '红阳路351号', null, null, '510113003016', '1639793632189', '1', null);
INSERT INTO `region` VALUES ('363', '红旗苑', 'HQY', '8f84d414f2224516bc8c9f2f4463dfff', '409', '青华东路53号', null, null, '510113003007', '1639793632198', '1', null);
INSERT INTO `region` VALUES ('364', '民政局宿舍', 'MZJSS', 'CN510113277', '409', '政府中路228号', null, null, '510113003011', '1639793632206', '1', null);
INSERT INTO `region` VALUES ('365', '红阳商住楼', 'HYSZL', 'CN510113135', '409', '华金大道二段740号', null, null, '510113003011', '1639793632216', '1', null);
INSERT INTO `region` VALUES ('366', '工商所宿舍', 'GSSSS', 'CN51011379', '409', '朝阳路38号', null, null, '510113006001', '1639793632223', '1', null);
INSERT INTO `region` VALUES ('367', '怡湖玫瑰苑', 'YHMGY', 'CN510113101253', '409', '青江北路69号', null, null, '510113003001', '1639793632232', '1', null);
INSERT INTO `region` VALUES ('368', '水务局宿舍', 'SWJSS', 'CN510113101284', '409', '华金大道二段469号', null, null, '510113003010', '1639793632241', '1', null);
INSERT INTO `region` VALUES ('369', '231号大院', '231HDY', 'CN510113101272', '409', '怡湖西路231号', null, null, '510113003001', '1639793632250', '1', null);
INSERT INTO `region` VALUES ('370', '五桂村困难群众安置点', 'WGCKNQZAZD', 'cac042b8b73a46b88f60a7095be67704', '409', '清泉镇五桂村1号', null, null, '510113008002', '1639793632258', '1', null);
INSERT INTO `region` VALUES ('371', '瀚城国际', 'HCGJ', 'CN510113101198', '409', '凤凰西六路28号', null, null, '510113003024', '1639793632267', '1', null);
INSERT INTO `region` VALUES ('372', '虹信大厦', 'HXDS', 'CN510113101339', '409', '化工北路18号', null, null, '510113003005', '1639793632275', '1', null);
INSERT INTO `region` VALUES ('373', '鼎鸿尚品', 'DHSP', 'CN510113101297', '409', '政府北路23号', null, null, '510113003010', '1639793632284', '1', null);
INSERT INTO `region` VALUES ('374', '坪家新型社区', 'PJXXSQ', 'CN510113101386', '409', '坪家村2组266号', null, null, '510113010004', '1639793632292', '1', null);
INSERT INTO `region` VALUES ('375', '名仕楼', 'MSL', 'CN510113162', '409', '青江北路40号', null, null, '510113003001', '1639793632301', '1', null);
INSERT INTO `region` VALUES ('376', '吉力名苑', 'JLMY', 'CN510113276', '409', '华金大道518号', null, null, '510113003011', '1639793632310', '1', null);
INSERT INTO `region` VALUES ('377', '廊桥翠庭', 'LQCT', 'CN510113101314', '409', '华金大道二段165号', null, null, '510113003002', '1639793632318', '1', null);
INSERT INTO `region` VALUES ('378', '大弯4组', 'DW4Z', 'CN510113101177', '409', '华金大道三段', null, null, '510113003003', '1639793632327', '1', null);
INSERT INTO `region` VALUES ('379', '杏花中心村', 'XHZXC', 'CN510113101394', '409', '杏花社区8组1号', null, null, '510113009004', '1639793632336', '1', null);
INSERT INTO `region` VALUES ('380', '金科博翠天宸一期', 'JKBCTCYQ', 'CN510113101303', '409', '凤祥大道1019号', null, null, '510113003006', '1639793632344', '1', null);
INSERT INTO `region` VALUES ('381', '五泉3组沈家院落', 'WQ3ZSJYL', 'CN510113408', '409', '五泉村3组', null, null, '510113006013', '1639793632353', '1', null);
INSERT INTO `region` VALUES ('382', '城埝小区', 'CNXQ', 'CN510113100842', '409', '城埝路63号', null, null, '510113006004', '1639793632362', '1', null);
INSERT INTO `region` VALUES ('383', '华建公司宿舍', 'HJGSSS', 'CN510113101298', '409', '政府北路59号', null, null, '510113003010', '1639793632370', '1', null);
INSERT INTO `region` VALUES ('384', '城香首府', 'CXSF', 'CN510113510', '409', '朝阳北路45号', null, null, '510113006003', '1639793632390', '1', null);
INSERT INTO `region` VALUES ('385', '牛奶厂宿舍', 'NNCSS', 'CN510113101277', '409', '团结南路74号', null, null, '510113004008', '1639793632398', '1', null);
INSERT INTO `region` VALUES ('386', '文汇小区', 'WHXQ', 'CN510113198', '409', '文汇路302号', null, null, '510113003003', '1639793632407', '1', null);
INSERT INTO `region` VALUES ('387', '国土局宿舍', 'GTJSS', 'CN510113330', '409', '华金大道二段527号', null, null, '510113003016', '1639793632416', '1', null);
INSERT INTO `region` VALUES ('388', '北城映像', 'BCYX', 'CN510113101306', '409', '凤凰西七路28号', null, null, '510113003022', '1639793632425', '1', null);
INSERT INTO `region` VALUES ('389', '星光家园', 'XGJY', 'CN510113100671', '409', '茶树街11号', null, null, '510113004001', '1639793632434', '1', null);
INSERT INTO `region` VALUES ('390', '青温铁路宿舍', 'QWTLSS', 'CN510113174', '409', '青江中路80号', null, null, '510113003001', '1639793632443', '1', null);
INSERT INTO `region` VALUES ('391', '钱江凤凰城', 'QJFHC', 'CN510113101440', '409', '大同路299号', null, null, '510113001003', '1639793632451', '1', null);
INSERT INTO `region` VALUES ('392', '丽雅公司宿舍215', 'LYGSSS215', 'CN510113101227', '409', '青江中路215号', null, null, '510113003011', '1639793632460', '1', null);
INSERT INTO `region` VALUES ('393', '新城花园', 'XCHY', 'CN510113101159', '409', '华逸路518号', null, null, '510113003013', '1639793632468', '1', null);
INSERT INTO `region` VALUES ('394', '老教师宿舍', 'LJSSS', 'd83bf2f3fd6d43698d6c41bb572ac7e7', '409', '清泉镇廖家场社区20号', null, null, '510113008001', '1639793632477', '1', null);
INSERT INTO `region` VALUES ('395', '大夫宿舍', 'DFSS', 'CN51011332', '409', '青华东路14号', null, null, '510113003007', '1639793632486', '1', null);
INSERT INTO `region` VALUES ('396', '区财政局宿舍', 'QCZJSS', 'CN510113290', '409', '政府中路118号', null, null, '510113003011', '1639793632495', '1', null);
INSERT INTO `region` VALUES ('397', '妇保所宿舍', 'FBSSS', 'CN510113176', '409', '青江中路178号', null, null, '510113003001', '1639793632504', '1', null);
INSERT INTO `region` VALUES ('398', '（农行宿舍）', '（NXSS）', 'CN510113101264', '409', '青江北江88号', null, null, '510113003001', '1639793632514', '1', null);
INSERT INTO `region` VALUES ('399', '香林名宅', 'XLMZ', 'CN510113101321', '409', '石家碾东路21号', null, null, '510113003002', '1639793632520', '1', null);
INSERT INTO `region` VALUES ('400', '人和苑', 'RHY', 'CN510113101417', '409', '上北街111号', null, null, '510113006001', '1639793632545', '1', null);
INSERT INTO `region` VALUES ('401', '上北街106号', 'SBJ106H', 'CN51011390', '409', '上北街106号', null, null, '510113006001', '1639793632571', '1', null);
INSERT INTO `region` VALUES ('402', '同沁苑', 'TQY', 'CN51011322', '409', '同仁路', null, null, '510113001002', '1639793632580', '1', null);
INSERT INTO `region` VALUES ('403', '北宁村人工湖安置小区', 'BNCRGHAZXQ', 'CN510113101360', '409', '北宁村1组88号', null, null, '510113008008', '1639793632589', '1', null);
INSERT INTO `region` VALUES ('404', '煤建公司宿舍', 'MJGSSS', 'CN510113127', '409', '华金大道二段660号', null, null, '510113003011', '1639793632597', '1', null);
INSERT INTO `region` VALUES ('405', '阳光花园东苑', 'YGHYDY', 'CN510113101286', '409', '石家碾西路149号', null, null, '510113003010', '1639793632605', '1', null);
INSERT INTO `region` VALUES ('406', '嘉富榆市场', 'JFYSC', 'CN510113101346', '409', '红阳路183号', null, null, '510113003016', '1639793632614', '1', null);
INSERT INTO `region` VALUES ('407', '同湾春晓', 'TWCX', 'CN510113101434', '409', '大同西路36号', null, null, '510113001002', '1639793632623', '1', null);
INSERT INTO `region` VALUES ('408', '金色阳光名邸', 'JSYGMD', '4d454dd50fb04c01960b70a9d3e3e25f', '409', '红阳路259号', null, null, '510113003018', '1639793632632', '1', null);
INSERT INTO `region` VALUES ('409', '技监局宿舍', 'JJJSS', 'caaf2ceebbb94cb18397ecdfae9a4f0f', '409', '青江北路61号', null, null, '510113003001', '1639793632640', '1', null);
INSERT INTO `region` VALUES ('410', '茂文集团商品楼', 'MWJTSPL', 'CN510113102', '409', '青江西路137号', null, null, '510113003011', '1639793632650', '1', null);
INSERT INTO `region` VALUES ('411', '金龙广场', 'JLGC', 'CN510113101180', '409', '华金大道三段1号', null, null, '510113003003', '1639793632658', '1', null);
INSERT INTO `region` VALUES ('412', '金同华庭', 'JTHT', 'CN510113233', '409', '凤凰东六路157号', null, null, '510113001003', '1639793632667', '1', null);
INSERT INTO `region` VALUES ('413', '绣川新城', 'XCXC', 'CN510113101432', '409', '城埝路38号', null, null, '510113006010', '1639793632675', '1', null);
INSERT INTO `region` VALUES ('414', '紫荆小区', 'ZJXQ', 'CN510113200', '409', '大弯东路紫荆街', null, null, '510113003003', '1639793632684', '1', null);
INSERT INTO `region` VALUES ('415', '栖凤居二期', 'QFJEQ', 'CN510113101442', '409', '凤凰东一路201号', null, null, '510113001001', '1639793632693', '1', null);
INSERT INTO `region` VALUES ('416', '诚信巷16号', 'CXX16H', 'CN510113100675', '409', '诚信巷16号', null, null, '510113004001', '1639793632701', '1', null);
INSERT INTO `region` VALUES ('417', '巨人树宿舍', 'JRSSS', 'CN510113273', '409', '华金大道二段562号', null, null, '510113003011', '1639793632710', '1', null);
INSERT INTO `region` VALUES ('418', '川化一村', 'CHYC', 'CN510113201', '409', '大弯中路44号', null, null, '510113003003', '1639793632719', '1', null);
INSERT INTO `region` VALUES ('419', '经典上城', 'JDSC', 'CN510113101196', '409', '凤凰西五路28号', null, null, '510113003024', '1639793632727', '1', null);
INSERT INTO `region` VALUES ('420', '大弯9组', 'DW9Z', 'CN510113101178', '409', '大弯社区9组', null, null, '510113003003', '1639793632736', '1', null);
INSERT INTO `region` VALUES ('421', '永和馨居', 'YHXJ', 'CN510113101387', '409', '永和路128号附128号', null, null, '510113010001', '1639793632744', '1', null);
INSERT INTO `region` VALUES ('422', '五泉2组叶家烂龙门', 'WQ2ZYJLLM', 'CN510113407', '409', '五泉村2组', null, null, '510113006013', '1639793632753', '1', null);
INSERT INTO `region` VALUES ('423', '电力花苑', 'DLHY', 'CN510113101343', '409', '红阳东路128号', null, null, '510113003016', '1639793632762', '1', null);
INSERT INTO `region` VALUES ('424', '清荷园', 'QHY', 'CN510113101391', '409', '三元村4组', null, null, '510113009016', '1639793632770', '1', null);
INSERT INTO `region` VALUES ('425', '区医院医师楼、区农牧局宿舍', 'QYYYSL、QNMJSS', 'CN510113101201', '409', '红阳巷5号', null, null, '510113003011', '1639793632779', '1', null);
INSERT INTO `region` VALUES ('426', '嘉和瑞景', 'JHRJ', 'CN510113101162', '409', '华逸路111号', null, null, '510113003013', '1639793632787', '1', null);
INSERT INTO `region` VALUES ('427', '老新华书店宿舍', 'LXHSDSS', 'CN510113173', '409', '青江东路264号', null, null, '510113003001', '1639793632796', '1', null);
INSERT INTO `region` VALUES ('428', '誉府仕家', 'YFSJ', 'CN510113101186', '409', '凤凰大道三段8号', null, null, '510113003023', '1639793632804', '1', null);
INSERT INTO `region` VALUES ('429', '区机械厂宿舍', 'QJXCSS', 'CN510113108', '409', '三家巷3号', null, null, '510113003011', '1639793632813', '1', null);
INSERT INTO `region` VALUES ('430', '公园仕家', 'GYSJ', 'CN510113101191', '409', '凤凰大道二段699号', null, null, '510113003021', '1639793632822', '1', null);
INSERT INTO `region` VALUES ('431', '福聚小区2期', 'FJXQ2Q', 'CN510113101393', '409', '上元桥社区12组', null, null, '510113009009', '1639793632830', '1', null);
INSERT INTO `region` VALUES ('432', '绿城尚品', 'LCSP', 'CN510113339', '409', '华金大道二段799号', null, null, '510113003013', '1639793632839', '1', null);
INSERT INTO `region` VALUES ('433', '茶树街8号', 'CSJ8H', 'CN510113100680', '409', '茶树街8号', null, null, '510113004001', '1639793632848', '1', null);
INSERT INTO `region` VALUES ('434', '大唐新城', 'DTXC', 'CN510113101399', '409', '民族街17号', null, null, '510113004008', '1639793632856', '1', null);
INSERT INTO `region` VALUES ('435', '民族花园', 'MZHY', 'CN510113101400', '409', '民族街8号', null, null, '510113004008', '1639793632865', '1', null);
INSERT INTO `region` VALUES ('436', '公安局宿舍', 'GAJSS', 'CN510113335', '409', '华金大道二段689号', null, null, '510113003016', '1639793632874', '1', null);
INSERT INTO `region` VALUES ('437', '幸福新型社区', 'XFXXSQ', 'CN510113101379', '409', '幸福小区1号', null, null, '510113008002', '1639793632883', '1', null);
INSERT INTO `region` VALUES ('438', '红十字医院宿舍', 'HSZYYSS', 'CN510113101269', '409', '怡湖西路182号', null, null, '510113003001', '1639793632892', '1', null);
INSERT INTO `region` VALUES ('439', '国税局宿舍', 'GSJSS', 'CN510113101331', '409', '红阳路363号', null, null, '510113003018', '1639793632900', '1', null);
INSERT INTO `region` VALUES ('440', '茶树街小区', 'CSJXQ', 'CN51011347', '409', '唐家寺茶树街10号', null, null, '510113004001', '1639793632908', '1', null);
INSERT INTO `region` VALUES ('441', '五泉村10组陈家院落', 'WQC10ZCJYL', 'CN510113402', '409', '五泉村10组', null, null, '510113006013', '1639793632917', '1', null);
INSERT INTO `region` VALUES ('442', '经典华庭', 'JDHT', 'CN510113465', '409', '石家碾中路80号', null, null, '510113003010', '1639793632925', '1', null);
INSERT INTO `region` VALUES ('443', '川化五村三区', 'CHWCSQ', '44c14d02a7cd464f9ef7818ed89cd824', '409', '青江东路85号', null, null, '510113003001', '1639793632934', '1', null);
INSERT INTO `region` VALUES ('444', '计委宿舍', 'JWSS', 'CN510113101354', '409', '政府北路136号', null, null, '510113003016', '1639793632942', '1', null);
INSERT INTO `region` VALUES ('445', '蜀青雅居', 'SQYJ', 'CN510113324', '409', '红阳东路113号', null, null, '510113003016', '1639793632951', '1', null);
INSERT INTO `region` VALUES ('446', '天和悦城', 'THYC', 'CN510113101329', '409', '凤凰大道一段2899号', null, null, '510113003019', '1639793632959', '1', null);
INSERT INTO `region` VALUES ('447', '大南街23号', 'DNJ23H', 'CN51011376', '409', '大南街23号', null, null, '510113006002', '1639793632968', '1', null);
INSERT INTO `region` VALUES ('448', '碧云天', 'BYT', 'CN510113434', '409', '新河路177号', null, null, '510113003010', '1639793632977', '1', null);
INSERT INTO `region` VALUES ('449', '工商局宿舍', 'GSJSS', 'CN510113101265', '409', '青江北路62号', null, null, '510113003001', '1639793632986', '1', null);
INSERT INTO `region` VALUES ('450', '红阳商住楼624号', 'HYSZL624H', 'CN510113101223', '409', '华金大道624号', null, null, '510113003011', '1639793632995', '1', null);
INSERT INTO `region` VALUES ('451', '政和雅苑（区政府宿舍）', 'ZHYY（QZFSS）', 'CN510113101232', '409', '青江中路179号', null, null, '510113003011', '1639793633018', '1', null);
INSERT INTO `region` VALUES ('452', '怡景阳光', 'YJYG', 'CN510113101322', '409', '石家碾东路280号', null, null, '510113003002', '1639793633027', '1', null);
INSERT INTO `region` VALUES ('453', '红阳商住楼', 'HYSZL', 'CN510113274', '409', '华金大道二段560号', null, null, '510113003011', '1639793633036', '1', null);
INSERT INTO `region` VALUES ('454', '广场花园', 'GCHY', 'CN510113460', '409', '华金大道二段453号', null, null, '510113003010', '1639793633044', '1', null);
INSERT INTO `region` VALUES ('455', '下北街10号', 'XBJ10H', 'CN51011395', '409', '下北街10号', null, null, '510113006001', '1639793633053', '1', null);
INSERT INTO `region` VALUES ('456', '建委宿舍', 'JWSS', 'CN510113101273', '409', '怡湖西路265号', null, null, '510113003001', '1639793633062', '1', null);
INSERT INTO `region` VALUES ('457', '永兴花园', 'YXHY', 'CN510113101318', '409', '菁华路39号', null, null, '510113003002', '1639793633070', '1', null);
INSERT INTO `region` VALUES ('458', '天和睿城', 'THRC', '11ee9852dc0f479cad233d1a4b62aeb4', '409', '凤祥大道69号', null, null, '510113003018', '1639793633080', '1', null);
INSERT INTO `region` VALUES ('459', '30号院落', '30HYL', 'CN510113590', '409', '青江北路30号1栋1单元2楼4号', null, null, '510113003001', '1639793633087', '1', null);
INSERT INTO `region` VALUES ('460', '联兴村4组', 'LXC4Z', 'CN510113374', '409', '联兴村4组', null, null, '510113006013', '1639793633096', '1', null);
INSERT INTO `region` VALUES ('461', '海布斯卡二期', 'HBSKEQ', '58c534eb662e455eb5178b89aff839e0', '409', '栖凤街281号', null, null, '510113003006', '1639793633105', '1', null);
INSERT INTO `region` VALUES ('462', '党校宿舍', 'DXSS', 'CN510113101267', '409', '青江中路75号', null, null, '510113003001', '1639793633114', '1', null);
INSERT INTO `region` VALUES ('463', '工商局宿舍', 'GSJSS', 'CN510113129', '409', '夏家巷47号', null, null, '510113003011', '1639793633122', '1', null);
INSERT INTO `region` VALUES ('464', '下北街105号', 'XBJ105H', 'CN510113101423', '409', '下北街105号', null, null, '510113006001', '1639793633131', '1', null);
INSERT INTO `region` VALUES ('465', '车站南路41号', 'CZNL41H', 'CN510113101406', '409', '车站南路41号', null, null, '510113004002', '1639793633140', '1', null);
INSERT INTO `region` VALUES ('466', '万家和小区A区', 'WJHXQAQ', '03f7fc1dfba84beea03e18441088dc33', '409', '祥红路315号', null, null, '510113006021', '1639793633148', '1', null);
INSERT INTO `region` VALUES ('467', '佳兆业悦府', 'JZYYF', '7c3d4c0237d24b51ac437d6f109e8c2d', '409', '凤凰西七路177号', null, null, '510113003022', '1639793633157', '1', null);
INSERT INTO `region` VALUES ('468', '车站南路43号', 'CZNL43H', 'CN510113101407', '409', '车站南路43号', null, null, '510113004002', '1639793633166', '1', null);
INSERT INTO `region` VALUES ('469', '同怡苑', 'TYY', 'CN510113101436', '409', '同仁路55号', null, null, '510113001002', '1639793633174', '1', null);
INSERT INTO `region` VALUES ('470', '五泉1组叶家院落', 'WQ1ZYJYL', 'CN510113411', '409', '五泉村1组', null, null, '510113006013', '1639793633183', '1', null);
INSERT INTO `region` VALUES ('471', '金色花园', 'JSHY', 'CN510113170', '409', '政府中路47号', null, null, '510113003001', '1639793633191', '1', null);
INSERT INTO `region` VALUES ('472', '联兴村10组', 'LXC10Z', 'CN510113377', '409', '联兴村10组', null, null, '510113006013', '1639793633200', '1', null);
INSERT INTO `region` VALUES ('473', '红阳西苑', 'HYXY', 'CN510113341', '409', '华逸中路1365号', null, null, '510113003013', '1639793633209', '1', null);
INSERT INTO `region` VALUES ('474', '玉带12栋', 'YD12D', 'CN510113159', '409', '怡湖西路257号', null, null, '510113003001', '1639793633217', '1', null);
INSERT INTO `region` VALUES ('475', '青水美居二期', 'QSMJEQ', 'CN510113101251', '409', '华金大道二段86号', null, null, '510113003001', '1639793633226', '1', null);
INSERT INTO `region` VALUES ('476', '城北外楼', 'CBWL', 'CN510113101359', '409', '同华大道1399号', null, null, '510113003016', '1639793633234', '1', null);
INSERT INTO `region` VALUES ('477', '新河二组', 'XHEZ', 'CN510113101288', '409', '石家碾西路75号', null, null, '510113003010', '1639793633243', '1', null);
INSERT INTO `region` VALUES ('478', '和苑小区', 'HYXQ', 'CN510113101388', '409', '陈家湾社区1、5、6组', null, null, '510113009020', '1639793633252', '1', null);
INSERT INTO `region` VALUES ('479', '林业局宿舍', 'LYJSS', 'CN510113104', '409', '三家巷4号', null, null, '510113003011', '1639793633260', '1', null);
INSERT INTO `region` VALUES ('480', '川化三村', 'CHSC', 'CN510113101170', '409', '白塔巷11号', null, null, '510113003003', '1639793633269', '1', null);
INSERT INTO `region` VALUES ('481', '中药材公司宿舍', 'ZYCGSSS', 'CN510113101230', '409', '青江中路179号', null, null, '510113003011', '1639793633278', '1', null);
INSERT INTO `region` VALUES ('482', '天泉酒店公寓', 'TQJDGY', 'CN510113101291', '409', '石家碾中路88号', null, null, '510113003010', '1639793633286', '1', null);
INSERT INTO `region` VALUES ('483', '区工行宿舍', 'QGXSS', 'CN510113101236', '409', '政府中路216号', null, null, '510113003011', '1639793633295', '1', null);
INSERT INTO `region` VALUES ('484', '成钢九千', 'CGJQ', 'CN510113122', '409', '青江西路65号', null, null, '510113003011', '1639793633303', '1', null);
INSERT INTO `region` VALUES ('485', '新河湾', 'XHW', 'CN510113212', '409', '安居路219号', null, null, '510113003024', '1639793633312', '1', null);
INSERT INTO `region` VALUES ('486', '蜀青丽晶府', 'SQLJF', 'CN510113101169', '409', '青华东路218号', null, null, '510113003007', '1639793633320', '1', null);
INSERT INTO `region` VALUES ('487', '七里溪香二期', 'QLXXEQ', '4aeece85f5774cf6b614d336e9c57d1e', '409', '华金大道三段118号', null, null, '510113003023', '1639793633329', '1', null);
INSERT INTO `region` VALUES ('488', '66号院落', '66HYL', 'CN510113101358', '409', '政府北路66号', null, null, '510113003016', '1639793633337', '1', null);
INSERT INTO `region` VALUES ('489', '玉龙小区103号', 'YLXQ103H', 'CN51011334', '409', '青华东路103号', null, null, '510113003007', '1639793633346', '1', null);
INSERT INTO `region` VALUES ('490', '农村玉带1组', 'NCYD1Z', 'CN510113186', '409', '玉带1组', null, null, '510113003001', '1639793633354', '1', null);
INSERT INTO `region` VALUES ('491', '区委宿舍', 'QWSS', 'CN510113113', '409', '红阳巷11号', null, null, '510113003011', '1639793633363', '1', null);
INSERT INTO `region` VALUES ('492', '川化五村', 'CHWC', 'CN510113101255', '409', '青江东路85号', null, null, '510113003001', '1639793633372', '1', null);
INSERT INTO `region` VALUES ('493', '红阳17队安置房', 'HY17DAZF', 'CN510113326', '409', '红阳路71号', null, null, '510113003016', '1639793633381', '1', null);
INSERT INTO `region` VALUES ('494', '天然居', 'TRJ', 'CN510113101282', '409', '安居路52号', null, null, '510113003010', '1639793633389', '1', null);
INSERT INTO `region` VALUES ('495', '农商银行宿舍', 'NSYXSS', 'CN51011336', '409', '青华东路5号', null, null, '510113003007', '1639793633398', '1', null);
INSERT INTO `region` VALUES ('496', '营房巷5号', 'YFX5H', 'CN51011367', '409', '营房巷5号', null, null, '510113006002', '1639793633406', '1', null);
INSERT INTO `region` VALUES ('497', '光华苑', 'GHY', 'CN510113467', '409', '华金大道二段315号', null, null, '510113003010', '1639793633415', '1', null);
INSERT INTO `region` VALUES ('498', '福馨雅苑', 'FXYY', 'c7f8e8585e5740ff8155ccf210e7800d', '409', '福馨雅苑1号', null, null, '510113009002', '1639793633424', '1', null);
INSERT INTO `region` VALUES ('499', '德通心愿城', 'DTXYC', 'CN510113206', '409', '华金大道三段45号', null, null, '510113003003', '1639793633433', '1', null);
INSERT INTO `region` VALUES ('500', '老随和（黄泥公司宿舍）', 'LSH（HNGSSS）', 'CN510113182', '409', '青江南路138号', null, null, '510113003001', '1639793633441', '1', null);
INSERT INTO `region` VALUES ('501', '滨河人家', 'BHRJ', 'CN510113101320', '409', '石家碾东路201号', null, null, '510113003002', '1639793633450', '1', null);
INSERT INTO `region` VALUES ('502', '工行宿舍', 'GXSS', 'CN510113101333', '409', '大弯中路51号', null, null, '510113003005', '1639793633458', '1', null);
INSERT INTO `region` VALUES ('503', '稽征所宿舍', 'JZSSS', 'CN510113101245', '409', '华金大道二段100号', null, null, '510113003001', '1639793633467', '1', null);
INSERT INTO `region` VALUES ('504', '水务局宿舍', 'SWJSS', 'CN510113107', '409', '三家巷1号', null, null, '510113003011', '1639793633475', '1', null);
INSERT INTO `region` VALUES ('505', '工商所宿舍', 'GSSSS', 'CN510113101369', '409', '平安路一段107号', null, null, '510113008001', '1639793633484', '1', null);
INSERT INTO `region` VALUES ('506', '嘉福公寓', 'JFGY', 'CN510113101313', '409', '华金大道二段107号', null, null, '510113003002', '1639793633492', '1', null);
INSERT INTO `region` VALUES ('507', '建委宿舍', 'JWSS', 'CN510113101228', '409', '青江中路215号', null, null, '510113003011', '1639793633502', '1', null);
INSERT INTO `region` VALUES ('508', '联兴村2组', 'LXC2Z', 'CN510113372', '409', '联兴村2组', null, null, '510113006013', '1639793633510', '1', null);
INSERT INTO `region` VALUES ('509', '汇鑫花苑二期', 'HXHYEQ', 'CN510113101202', '409', '红阳巷8号', null, null, '510113003011', '1639793633519', '1', null);
INSERT INTO `region` VALUES ('510', '书香别院', 'SXBY', 'CN510113101190', '409', '菁华路116号', null, null, '510113003023', '1639793633528', '1', null);
INSERT INTO `region` VALUES ('511', '青江华庭B区', 'QJHTBQ', 'CN510113100840', '409', '安居路119号', null, null, '510113003002', '1639793633537', '1', null);
INSERT INTO `region` VALUES ('512', '长宁小区A区', 'ZNXQAQ', 'CN510113101428', '409', '金渊路96号', null, null, '510113006005', '1639793633546', '1', null);
INSERT INTO `region` VALUES ('513', '和谐大院', 'HXDY', 'CN510113101413', '409', '坚强巷29号', null, null, '510113006001', '1639793633554', '1', null);
INSERT INTO `region` VALUES ('514', '青江华庭A区', 'QJHTAQ', 'CN510113469', '409', '安居路142号', null, null, '510113003010', '1639793633562', '1', null);
INSERT INTO `region` VALUES ('515', '中华名城', 'ZHMC', 'CN510113101197', '409', '凤祥大道800号', null, null, '510113003024', '1639793633571', '1', null);
INSERT INTO `region` VALUES ('516', '祥瑞花园', 'XRHY', 'CN510113100833', '409', '祥红路215号', null, null, '510113006023', '1639793633580', '1', null);
INSERT INTO `region` VALUES ('517', '羊叉河畔小区', 'YCHPXQ', 'CN510113101430', '409', '康家渡2组200号', null, null, '510113006025', '1639793633588', '1', null);
INSERT INTO `region` VALUES ('518', '农经苑宿舍', 'NJYSS', 'CN510113148', '409', '青江北路120号', null, null, '510113003001', '1639793633597', '1', null);
INSERT INTO `region` VALUES ('519', '华逸馨苑', 'HYXY', 'CN51011358', '409', '华逸中路1336号', null, null, '510113003013', '1639793633606', '1', null);
INSERT INTO `region` VALUES ('520', '清江苑', 'QJY', 'CN510113101310', '409', '安居路9号', null, null, '510113003002', '1639793633614', '1', null);
INSERT INTO `region` VALUES ('521', '（广场馨苑）', '（GCXY）', 'CN510113101268', '409', '馨苑巷12号', null, null, '510113003001', '1639793633623', '1', null);
INSERT INTO `region` VALUES ('522', '公安苑', 'GAY', 'CN51011386', '409', '公安街76号', null, null, '510113006001', '1639793633632', '1', null);
INSERT INTO `region` VALUES ('523', '红阳村综合楼', 'HYCZHL', 'CN51011397', '409', '团结西路529号', null, null, '510113003011', '1639793633640', '1', null);
INSERT INTO `region` VALUES ('524', '华严供销社宿舍', 'HYGXSSS', 'CN510113101207', '409', '教育街12号', null, null, '510113003011', '1639793633648', '1', null);
INSERT INTO `region` VALUES ('525', '杨柳小区安置房', 'YLXQAZF', 'CN510113101215', '409', '杨柳路2号', null, null, '510113003011', '1639793633657', '1', null);
INSERT INTO `region` VALUES ('526', '种子公司宿舍', 'ZZGSSS', 'CN510113471', '409', '华金大道二段379号', null, null, '510113003010', '1639793633665', '1', null);
INSERT INTO `region` VALUES ('527', '茶树街10号', 'CSJ10H', 'CN510113101403', '409', '茶树街10号', null, null, '510113004001', '1639793633674', '1', null);
INSERT INTO `region` VALUES ('528', '团派宿舍', 'TPSS', 'CN510113304', '409', '安全巷5号', null, null, '510113003011', '1639793633682', '1', null);
INSERT INTO `region` VALUES ('529', '团结花园', 'TJHY', 'CN510113541', '409', '窄巷子38号', null, null, '510113003014', '1639793633691', '1', null);
INSERT INTO `region` VALUES ('530', '泰和欧城', 'THOC', 'CN510113337', '409', '红华街299号', null, null, '510113003013', '1639793633701', '1', null);
INSERT INTO `region` VALUES ('531', '公安街99号', 'GAJ99H', 'CN51011389', '409', '公安街99号', null, null, '510113006001', '1639793633709', '1', null);
INSERT INTO `region` VALUES ('532', '平仓巷院落', 'PCXYL', 'CN51011371', '409', '平仓巷', null, null, '510113006002', '1639793633718', '1', null);
INSERT INTO `region` VALUES ('533', '丽雅公司宿舍7号', 'LYGSSS7H', 'CN510113101217', '409', '安全巷7号', null, null, '510113003011', '1639793633726', '1', null);
INSERT INTO `region` VALUES ('534', '尚林幸福城', 'SLXFC', 'CN510113570', '409', '凤凰路77号', null, null, '510113003023', '1639793633735', '1', null);
INSERT INTO `region` VALUES ('535', '房管所宿舍', 'FGSSS', 'CN51011392', '409', '下北街96号', null, null, '510113006001', '1639793633743', '1', null);
INSERT INTO `region` VALUES ('536', '成桥小区', 'CQXQ', 'CN510113101167', '409', '大弯南路166号', null, null, '510113003007', '1639793633752', '1', null);
INSERT INTO `region` VALUES ('537', '万家大院东院', 'WJDYDY', 'CN510113139', '409', '十八湾村8组', null, null, '510113006011', '1639793633760', '1', null);
INSERT INTO `region` VALUES ('538', '农行宿舍', 'NXSS', 'CN510113101224', '409', '教育街129号', null, null, '510113003011', '1639793633769', '1', null);
INSERT INTO `region` VALUES ('539', '华严综合楼', 'HYZHL', 'CN51011398', '409', '团结西路357号', null, null, '510113003011', '1639793633778', '1', null);
INSERT INTO `region` VALUES ('540', '大弯小学宿舍', 'DWXXSS', 'CN510113205', '409', '大弯北路86号', null, null, '510113003003', '1639793633787', '1', null);
INSERT INTO `region` VALUES ('541', '玉带小区', 'YDXQ', 'CN510113160', '409', '政府中路91号', null, null, '510113003001', '1639793633796', '1', null);
INSERT INTO `region` VALUES ('542', '福馨佳苑', 'FXJY', 'CN510113100731', '409', '宏福路1号附59号', null, null, '510113009002', '1639793633804', '1', null);
INSERT INTO `region` VALUES ('543', '煤建公司宿舍', 'MJGSSS', 'c5834b7478114c709fc8c91b22de264d', '409', '政府中路179号', null, null, '510113003011', '1639793633813', '1', null);
INSERT INTO `region` VALUES ('544', '青荣公司宿舍', 'QRGSSS', 'CN510113340', '409', '华金大道二段769号', null, null, '510113003013', '1639793633822', '1', null);
INSERT INTO `region` VALUES ('545', '粮贸花园', 'LMHY', 'CN510113143', '409', '华金大道二段486号', null, null, '510113003001', '1639793633830', '1', null);
INSERT INTO `region` VALUES ('546', '圆梦庭', 'YMT', 'CN510113101438', '409', '界牌村11组306号', null, null, '510113001005', '1639793633839', '1', null);
INSERT INTO `region` VALUES ('547', '区医院宿舍', 'QYYSS', 'CN510113291', '409', '政府中路108号', null, null, '510113003011', '1639793633848', '1', null);
INSERT INTO `region` VALUES ('548', '诚信巷9号', 'CXX9H', 'CN510113100674', '409', '诚信巷9号', null, null, '510113004001', '1639793633856', '1', null);
INSERT INTO `region` VALUES ('549', '富源苑', 'FYY', 'CN510113101317', '409', '华金大道二段45号', null, null, '510113003002', '1639793633865', '1', null);
INSERT INTO `region` VALUES ('550', '科技苑', 'KJY', 'CN510113464', '409', '新河路48号', null, null, '510113003010', '1639793633874', '1', null);
INSERT INTO `region` VALUES ('551', '城厢中学宿舍', 'CXZXSS', 'CN51011384', '409', '大东街113号', null, null, '510113006001', '1639793633882', '1', null);
INSERT INTO `region` VALUES ('552', '华洲名城', 'HZMC', 'CN51011344', '409', '华金大道三段156号', null, null, '510113001001', '1639793633891', '1', null);
INSERT INTO `region` VALUES ('553', '凤凰湖国际社区', 'FHHGJSQ', 'CN51011339', '409', '凤凰东二路36号', null, null, '510113001001', '1639793633899', '1', null);
INSERT INTO `region` VALUES ('554', '老交通局宿舍', 'LJTJSS', 'CN510113172', '409', '青江中路114号', null, null, '510113003001', '1639793633908', '1', null);
INSERT INTO `region` VALUES ('555', '清江怡苑', 'QJYY', 'CN510113101353', '409', '华金大道二段549号', null, null, '510113003016', '1639793633917', '1', null);
INSERT INTO `region` VALUES ('556', '凯莱丽景', 'KLLJ', 'CN510113100751', '409', '同华大道1666号', null, null, '510113003015', '1639793633925', '1', null);
INSERT INTO `region` VALUES ('557', '红卫团小宿舍', 'HWTXSS', 'CN510113101299', '409', '政府北路5号', null, null, '510113003010', '1639793633934', '1', null);
INSERT INTO `region` VALUES ('558', '大弯新村', 'DWXC', 'CN510113190', '409', '华金大道三段85号', null, null, '510113003003', '1639793633942', '1', null);
INSERT INTO `region` VALUES ('559', '大南街51号', 'DNJ51H', 'CN51011378', '409', '大南街51号', null, null, '510113006002', '1639793633951', '1', null);
INSERT INTO `region` VALUES ('560', '青江名城', 'QJMC', 'CN510113473', '409', '新河路21号', null, null, '510113003010', '1639793633959', '1', null);
INSERT INTO `region` VALUES ('561', '红树新型社区（龙和小区）', 'HSXXSQ（LHXQ）', 'CN510113101382', '409', '裕康街199号', null, null, '510113010008', '1639793633968', '1', null);
INSERT INTO `region` VALUES ('562', '凤凰雅苑', 'FHYY', 'CN510113100837', '409', '祥红路315号', null, null, '510113006023', '1639793633977', '1', null);
INSERT INTO `region` VALUES ('563', '合谊同华', 'HYTH', 'CN510113101163', '409', '华逸中路999号', null, null, '510113003013', '1639793633986', '1', null);
INSERT INTO `region` VALUES ('564', '春天华逸', 'CTHY', 'CN510113347', '409', '同金街29号', null, null, '510113003016', '1639793633994', '1', null);
INSERT INTO `region` VALUES ('565', '中心校教师宿舍', 'ZXXJSSS', 'c536229460e14e8ebd85427b10999bbb', '409', '平安124号', null, null, '510113008001', '1639793634003', '1', null);
INSERT INTO `region` VALUES ('566', '十五里新型社区', 'SWLXXSQ', 'CN510113101431', '409', '古城路3927号', null, null, '510113006016', '1639793634012', '1', null);
INSERT INTO `region` VALUES ('567', '新河苑', 'XHY', 'CN510113101390', '409', '陈家湾社区9组56号', null, null, '510113009020', '1639793634019', '1', null);
INSERT INTO `region` VALUES ('568', '凯斯顿华府', 'KSDHF', 'CN510113194', '409', '华金大道三段66号', null, null, '510113003023', '1639793634028', '1', null);
INSERT INTO `region` VALUES ('569', '物价局宿舍', 'WJJSS', 'CN510113285', '409', '怡湖西路4号', null, null, '510113003011', '1639793634037', '1', null);
INSERT INTO `region` VALUES ('570', '地税局宿舍', 'DSJSS', 'CN510113156', '409', '怡湖西路126号', null, null, '510113003001', '1639793634046', '1', null);
INSERT INTO `region` VALUES ('571', '美的公园天下', 'MDGYTX', 'CN510113100813', '409', '凤凰大道一段88号', null, null, '510113003015', '1639793634054', '1', null);
INSERT INTO `region` VALUES ('572', '金荷苑', 'JHY', 'CN51011381', '409', '横秋玉巷106号', null, null, '510113006001', '1639793634063', '1', null);
INSERT INTO `region` VALUES ('573', '移动公司宿舍', 'YDGSSS', 'CN510113180', '409', '青江南路2号', null, null, '510113003001', '1639793634071', '1', null);
INSERT INTO `region` VALUES ('574', '映泉美居', 'YQMJ', 'CN510113346', '409', '华逸路49号', null, null, '510113003016', '1639793634080', '1', null);
INSERT INTO `region` VALUES ('575', '西街7号', 'XJ7H', 'CN510113101422', '409', '西街7号', null, null, '510113006001', '1639793634089', '1', null);
INSERT INTO `region` VALUES ('576', '金科博翠天宸二期', 'JKBCTCEQ', 'CN510113101304', '409', '凤祥大道971号', null, null, '510113003006', '1639793634097', '1', null);
INSERT INTO `region` VALUES ('577', '营房巷6号', 'YFX6H', 'CN51011370', '409', '营房巷6号', null, null, '510113006002', '1639793634106', '1', null);
INSERT INTO `region` VALUES ('578', '花园新型社区', 'HYXXSQ', 'CN510113101363', '409', '迎宾路288号', null, null, '510113008006', '1639793634115', '1', null);
INSERT INTO `region` VALUES ('579', '文体花园', 'WTHY', 'CN510113538', '409', '政府南路21号', null, null, '510113003014', '1639793634124', '1', null);
INSERT INTO `region` VALUES ('580', '成钢新小区、三博', 'CGXXQ、SB', 'CN510113280', '409', '怡湖西路60号', null, null, '510113003011', '1639793634132', '1', null);
INSERT INTO `region` VALUES ('581', '红锋村10组', 'HFC10Z', 'CN510113101183', '409', '红锋村10组', null, null, '510113003015', '1639793634141', '1', null);
INSERT INTO `region` VALUES ('582', '联兴村16组', 'LXC16Z', 'CN510113370', '409', '联兴村16组', null, null, '510113006013', '1639793634149', '1', null);
INSERT INTO `region` VALUES ('583', '锦城苑', 'JCY', 'CN51011330', '409', '市场巷61号', null, null, '510113003007', '1639793634158', '1', null);
INSERT INTO `region` VALUES ('584', '区医院宿舍', 'QYYSS', 'CN510113178', '409', '青江南路87号', null, null, '510113003001', '1639793634167', '1', null);
INSERT INTO `region` VALUES ('585', '区政府宿舍', 'QZFSS', 'CN510113301', '409', '青江中路179号4-9栋', null, null, '510113003017', '1639793634176', '1', null);
INSERT INTO `region` VALUES ('586', '成钢老小区', 'CGLXQ', 'CN510113294', '409', '怡湖西路23号', null, null, '510113003011', '1639793634185', '1', null);
INSERT INTO `region` VALUES ('587', '鸡市巷26号', 'JSX26H', 'CN510113100676', '409', '鸡市巷26号', null, null, '510113004001', '1639793634194', '1', null);
INSERT INTO `region` VALUES ('588', '五泉村11组陈家院子', 'WQC11ZCJYZ', 'CN510113395', '409', '五泉村11组', null, null, '510113006013', '1639793634203', '1', null);
INSERT INTO `region` VALUES ('589', '农资公司宿舍', 'NZGSSS', 'CN510113101241', '409', '大弯北路155号', null, null, '510113003001', '1639793634211', '1', null);
INSERT INTO `region` VALUES ('590', '邮政宿舍', 'YZSS', 'CN510113101421', '409', '上北街93号', null, null, '510113006001', '1639793634219', '1', null);
INSERT INTO `region` VALUES ('591', '怡城北居', 'YCBJ', 'CN510113631', '409', '凤凰大道一段2625号', null, null, '510113003019', '1639793634228', '1', null);
INSERT INTO `region` VALUES ('592', '海布斯卡一期', 'HBSKYQ', 'CN510113101301', '409', '栖凤街268号', null, null, '510113003006', '1639793634237', '1', null);
INSERT INTO `region` VALUES ('593', '丽雅美锦', 'LYMJ', 'CN510113101161', '409', '同金街400号', null, null, '510113003013', '1639793634245', '1', null);
INSERT INTO `region` VALUES ('594', '蜀韵北庭', 'SYBT', 'CN510113100692', '409', '弥牟南街390号', null, null, '510113004003', '1639793634254', '1', null);
INSERT INTO `region` VALUES ('595', '怡城北居二期', 'YCBJEQ', 'CN510113101328', '409', '凤凰西八路9号', null, null, '510113003019', '1639793634263', '1', null);
INSERT INTO `region` VALUES ('596', '凤凰馨苑', 'FHXY', 'CN510113100836', '409', '凤凰大道三段361号', null, null, '510113001009', '1639793634271', '1', null);
INSERT INTO `region` VALUES ('597', '建北商住楼', 'JBSZL', 'CN510113101415', '409', '建设路21号', null, null, '510113006001', '1639793634280', '1', null);
INSERT INTO `region` VALUES ('598', '凤凰铭筑', 'FHMZ', 'CN510113101433', '409', '凤凰大道三段495号', null, null, '510113001009', '1639793634288', '1', null);
INSERT INTO `region` VALUES ('599', '税务所宿舍', 'SWSSS', 'CN510113101366', '409', '和平下街80号', null, null, '510113008001', '1639793634297', '1', null);
INSERT INTO `region` VALUES ('600', '浪淘沙宿舍', 'LTSSS', 'CN510113191', '409', '华金大道三段59号', null, null, '510113003003', '1639793634306', '1', null);
INSERT INTO `region` VALUES ('601', '红阳一区', 'HYYQ', 'CN510113101348', '409', '红阳路42号', null, null, '510113003016', '1639793634365', '1', null);
INSERT INTO `region` VALUES ('602', '青水美居一期', 'QSMJYQ', 'CN510113101250', '409', '华金大道二段84号', null, null, '510113003001', '1639793634373', '1', null);
INSERT INTO `region` VALUES ('603', '五泉8组段家院落', 'WQ8ZDJYL', 'CN510113400', '409', '五泉村8组', null, null, '510113006013', '1639793634381', '1', null);
INSERT INTO `region` VALUES ('604', '区政府商品楼', 'QZFSPL', 'CN510113117', '409', '青江西路97号', null, null, '510113003011', '1639793634390', '1', null);
INSERT INTO `region` VALUES ('605', '金色港湾', 'JSGW', 'CN510113101330', '409', '凤祥大道78号', null, null, '510113003018', '1639793634398', '1', null);
INSERT INTO `region` VALUES ('606', '西平家园', 'XPJY', 'CN510113101378', '409', '西平村1组1号', null, null, '510113008003', '1639793634406', '1', null);
INSERT INTO `region` VALUES ('607', '川化五村大二区', 'CHWCDEQ', 'CN510113101335', '409', '青江东路140号', null, null, '510113003005', '1639793634415', '1', null);
INSERT INTO `region` VALUES ('608', '丽雅公司宿舍49号', 'LYGSSS49H', 'CN510113101226', '409', '教育街49号', null, null, '510113003011', '1639793634423', '1', null);
INSERT INTO `region` VALUES ('609', '地质灾害搬迁小区', 'DZZHBQXQ', 'CN510113101362', '409', '逍遥坪村2组', null, null, '510113008015', '1639793634432', '1', null);
INSERT INTO `region` VALUES ('610', '输气站宿舍', 'SQZSS', 'CN510113533', '409', '团结西路438号', null, null, '510113004008', '1639793634441', '1', null);
INSERT INTO `region` VALUES ('611', '润嘉花园', 'RJHY', 'CN510113101256', '409', '怡湖北路11号', null, null, '510113003001', '1639793634449', '1', null);
INSERT INTO `region` VALUES ('612', '北居苑', 'BJY', 'CN51011391', '409', '下北街142号', null, null, '510113006001', '1639793634458', '1', null);
INSERT INTO `region` VALUES ('613', '绣水蓝庭', 'XSLT', 'CN510113101429', '409', '清泉大道1段719号', null, null, '510113006005', '1639793634467', '1', null);
INSERT INTO `region` VALUES ('614', '法院宿舍', 'FYSS', 'CN510113477', '409', '华金大道二段317号', null, null, '510113003010', '1639793634475', '1', null);
INSERT INTO `region` VALUES ('615', '农村玉带5组', 'NCYD5Z', 'CN510113185', '409', '玉带5组', null, null, '510113003001', '1639793634483', '1', null);
INSERT INTO `region` VALUES ('616', '嘉和世纪城', 'JHSJC', 'CN510113101192', '409', '凤凰西二路138号', null, null, '510113003021', '1639793634492', '1', null);
INSERT INTO `region` VALUES ('617', '蜀青名苑', 'SQMY', 'CN51011335', '409', '青华东路55号', null, null, '510113003007', '1639793634501', '1', null);
INSERT INTO `region` VALUES ('618', '怡湖春天', 'YHCT', 'CN510113101247', '409', '华金大道二段180号', null, null, '510113003001', '1639793634509', '1', null);
INSERT INTO `region` VALUES ('619', '铁二局小区', 'TEJXQ', 'CN510113463', '409', '新河路8号', null, null, '510113003010', '1639793634518', '1', null);
INSERT INTO `region` VALUES ('620', '协信天骄城', 'XXTJC', 'CN510113100753', '409', '凤凰大道一段198号', null, null, '510113003015', '1639793634526', '1', null);
INSERT INTO `region` VALUES ('621', '梧桐屿', 'WTY', 'CN510113101302', '409', '凤祥大道1051号', null, null, '510113003006', '1639793634535', '1', null);
INSERT INTO `region` VALUES ('622', '五金公司宿舍', 'WJGSSS', 'CN510113101208', '409', '教育街22号', null, null, '510113003011', '1639793634544', '1', null);
INSERT INTO `region` VALUES ('623', '城管办院落', 'CGBYL', '1164ff09d56b447da86184d020d592d7', '409', '清泉镇廖家场社区1号', null, null, '510113008001', '1639793634552', '1', null);
INSERT INTO `region` VALUES ('624', '钢锉厂宿舍', 'GCCSS', 'CN510113101424', '409', '下北街77号', null, null, '510113006001', '1639793634561', '1', null);
INSERT INTO `region` VALUES ('625', '鸿军实业楼', 'HJSYL', 'CN510113476', '409', '安居路12号', null, null, '510113003010', '1639793634570', '1', null);
INSERT INTO `region` VALUES ('626', '华逸花园', 'HYHY', 'CN510113101160', '409', '华逸路609号', null, null, '510113003013', '1639793634578', '1', null);
INSERT INTO `region` VALUES ('627', '绣川新苑B区', 'XCXYBQ', '157665ab18f3475cab51319eef720999', '409', '玉城路46号', null, null, '510113006008', '1639793634587', '1', null);
INSERT INTO `region` VALUES ('628', '司法局宿舍', 'SFJSS', 'CN510113106', '409', '三家巷84号', null, null, '510113003011', '1639793634604', '1', null);
INSERT INTO `region` VALUES ('629', '中街72号', 'ZJ72H', 'CN510113101405', '409', '中街72号', null, null, '510113004001', '1639793634622', '1', null);
INSERT INTO `region` VALUES ('630', '凤凰一号', 'FHYH', 'CN510113101194', '409', '凤凰大道二段888号', null, null, '510113003021', '1639793634631', '1', null);
INSERT INTO `region` VALUES ('631', '肖家巷宿舍', 'XJXSS', 'CN51011337', '409', '肖家巷1号', null, null, '510113003007', '1639793634640', '1', null);
INSERT INTO `region` VALUES ('632', '玉带九队', 'YDJD', 'CN510113101199', '409', '红阳巷12号', null, null, '510113003011', '1639793634648', '1', null);
INSERT INTO `region` VALUES ('633', '车站东路58号', 'CZDL58H', 'CN510113101409', '409', '车站东路58号', null, null, '510113004002', '1639793634657', '1', null);
INSERT INTO `region` VALUES ('634', '上北街3号', 'SBJ3H', 'CN510113101418', '409', '上北街3号', null, null, '510113006001', '1639793634665', '1', null);
INSERT INTO `region` VALUES ('635', '五泉9组沈家院落', 'WQ9ZSJYL', 'CN510113401', '409', '五泉村8组', null, null, '510113006013', '1639793634674', '1', null);
INSERT INTO `region` VALUES ('636', '幸福家园新河湾', 'XFJYXHW', 'CN510113101308', '409', '安居路219号', null, null, '510113003002', '1639793634683', '1', null);
INSERT INTO `region` VALUES ('637', '同馨苑', 'TXY', 'CN510113101437', '409', '同仁路87号', null, null, '510113001002', '1639793634691', '1', null);
INSERT INTO `region` VALUES ('638', '玉带综合楼', 'YDZHL', 'CN510113302', '409', '青江中路271号', null, null, '510113003011', '1639793634700', '1', null);
INSERT INTO `region` VALUES ('639', '长河郡小区', 'ZHJXQ', 'CN51011356', '409', '学苑路456号', null, null, '510113003007', '1639793634709', '1', null);
INSERT INTO `region` VALUES ('640', '太平供销社宿舍（42号）', 'TPGXSSS（42H）', 'f0cf21efeb624a7f888a1df82b20515f', '409', '成环42号', null, null, '510113008001', '1639793634717', '1', null);
INSERT INTO `region` VALUES ('641', '物存储宿舍', 'WCCSS', 'CN510113110', '409', '红阳2号', null, null, '510113003011', '1639793634726', '1', null);
INSERT INTO `region` VALUES ('642', '五泉12组秦家院落', 'WQ12ZQJYL', 'CN510113398', '409', '五泉村12组', null, null, '510113006013', '1639793634735', '1', null);
INSERT INTO `region` VALUES ('643', '红锋村5组', 'HFC5Z', 'CN510113101185', '409', '红锋村5组', null, null, '510113003015', '1639793634743', '1', null);
INSERT INTO `region` VALUES ('644', '建筑公司宿舍', 'JZGSSS', 'CN510113101189', '409', '华金大道三段68号', null, null, '510113003023', '1639793634752', '1', null);
INSERT INTO `region` VALUES ('645', '祥福商都', 'XFSD', 'CN510113231', '409', '祥福镇康家渡社区3组', null, null, '510113006018', '1639793634760', '1', null);
INSERT INTO `region` VALUES ('646', '红锋2组', 'HF2Z', 'CN510113138', '409', '杨柳2号', null, null, '510113003011', '1639793634768', '1', null);
INSERT INTO `region` VALUES ('647', '文化苑', 'WHY', 'CN510113101278', '409', '文化巷29号', null, null, '510113003014', '1639793634777', '1', null);
INSERT INTO `region` VALUES ('648', '农发局宿舍', 'NFJSS', 'CN510113133', '409', '华金大道二段898号', null, null, '510113003011', '1639793634785', '1', null);
INSERT INTO `region` VALUES ('649', '联兴村15组', 'LXC15Z', 'CN510113380', '409', '联兴村15组', null, null, '510113006013', '1639793634794', '1', null);
INSERT INTO `region` VALUES ('650', '审计局宿舍', 'SJJSS', 'CN510113175', '409', '青江东路266号', null, null, '510113003001', '1639793634803', '1', null);
INSERT INTO `region` VALUES ('651', '世纪宜家', 'SJYJ', 'CN510113101205', '409', '华金大道756号', null, null, '510113003011', '1639793634811', '1', null);
INSERT INTO `region` VALUES ('652', '101宿舍', '101SS', 'CN510113101311', '409', '华金大道二段101号', null, null, '510113003002', '1639793634820', '1', null);
INSERT INTO `region` VALUES ('653', '至佳中学宿舍', 'ZJZXSS', 'CN510113101242', '409', '大弯北路221号', null, null, '510113003001', '1639793634841', '1', null);
INSERT INTO `region` VALUES ('654', '移动花园', 'YDHY', 'CN510113101244', '409', '芳邻路9号', null, null, '510113003001', '1639793634850', '1', null);
INSERT INTO `region` VALUES ('655', '劳动局宿舍', 'LDJSS', 'CN510113101275', '409', '政府中路199号', null, null, '510113003001', '1639793634858', '1', null);
INSERT INTO `region` VALUES ('656', '杨柳花园', 'YLHY', 'CN510113101204', '409', '华金大道750号', null, null, '510113003011', '1639793634867', '1', null);
INSERT INTO `region` VALUES ('657', '双子座', 'SZZ', 'CN510113101263', '409', '华金大道二段418号', null, null, '510113003001', '1639793634875', '1', null);
INSERT INTO `region` VALUES ('658', '幸福大院', 'XFDY', 'CN510113101412', '409', '槐树街29号', null, null, '510113006001', '1639793634884', '1', null);
INSERT INTO `region` VALUES ('659', '水务局宿舍', 'SWJSS', 'CN510113101218', '409', '华金大道558号', null, null, '510113003011', '1639793634892', '1', null);
INSERT INTO `region` VALUES ('660', '农行宿舍', 'NXSS', 'CN510113101340', '409', '青江东路20号', null, null, '510113003005', '1639793634901', '1', null);
INSERT INTO `region` VALUES ('661', '五泉1组叶家底下院落', 'WQ1ZYJDXYL', 'CN510113410', '409', '五泉村1组', null, null, '510113006013', '1639793634909', '1', null);
INSERT INTO `region` VALUES ('662', '物资局宿舍', 'WZJSS', 'CN510113101252', '409', '青江北路205号', null, null, '510113003001', '1639793634919', '1', null);
INSERT INTO `region` VALUES ('663', '国光社区15组', 'GGSQ15Z', 'CN510113100811', '409', '国光社区15组80号', null, null, '510113004003', '1639793634927', '1', null);
INSERT INTO `region` VALUES ('664', '中医院宿舍', 'ZYYSS', 'CN51011380', '409', '大东街147号', null, null, '510113006001', '1639793634936', '1', null);
INSERT INTO `region` VALUES ('665', '罐筒厂宿舍', 'GTCSS', 'CN510113101371', '409', '青石路8号', null, null, '510113008001', '1639793634944', '1', null);
INSERT INTO `region` VALUES ('666', '三桥宿舍', 'SQSS', 'CN510113101332', '409', '大弯南路51号', null, null, '510113003005', '1639793634953', '1', null);
INSERT INTO `region` VALUES ('667', '齐盛艺品', 'QSYP', 'CN510113149', '409', '华金大道二段406号', null, null, '510113003001', '1639793634962', '1', null);
INSERT INTO `region` VALUES ('668', '凯旋综合大楼', 'KXZHDL', 'CN510113101300', '409', '华金大道二段383号', null, null, '510113003010', '1639793634971', '1', null);
INSERT INTO `region` VALUES ('669', '书香院', 'SXY', 'CN510113101324', '409', '石家碾东路95号', null, null, '510113003002', '1639793634979', '1', null);
INSERT INTO `region` VALUES ('670', '交警队宿舍', 'JJDSS', 'CN510113272', '409', '华金大道二段600号', null, null, '510113003011', '1639793634988', '1', null);
INSERT INTO `region` VALUES ('671', '怡湖西路271号', 'YHXL271H', 'CN510113101274', '409', '怡湖西路271号', null, null, '510113003001', '1639793634997', '1', null);
INSERT INTO `region` VALUES ('672', '红锋村12组', 'HFC12Z', 'CN510113101184', '409', '红锋村12组', null, null, '510113003015', '1639793635005', '1', null);
INSERT INTO `region` VALUES ('673', '福安怡景小区', 'FAYJXQ', 'CN510113101411', '409', '高楼村3组200号', null, null, '510113006018', '1639793635015', '1', null);
INSERT INTO `region` VALUES ('674', '惠民居', 'HMJ', 'CN510113610', '409', '凤凰大道一段2799号', null, null, '510113003019', '1639793635023', '1', null);
INSERT INTO `region` VALUES ('675', '国龙花园', 'GLHY', 'CN510113101260', '409', '怡湖东路381号', null, null, '510113003001', '1639793635033', '1', null);
INSERT INTO `region` VALUES ('676', '南山公寓', 'NSGY', 'CN510113101402', '409', '华金大道一段400号', null, null, '510113004008', '1639793635040', '1', null);
INSERT INTO `region` VALUES ('677', '蜀青丽景湾', 'SQLJW', 'CN510113101323', '409', '石家碾东路40号', null, null, '510113003002', '1639793635049', '1', null);
INSERT INTO `region` VALUES ('678', '食品公司宿舍', 'SPGSSS', 'CN510113101238', '409', '大弯北路71号', null, null, '510113003001', '1639793635057', '1', null);
INSERT INTO `region` VALUES ('679', '青建四公司宿舍', 'QJSGSSS', 'CN510113305', '409', '政府中路30号', null, null, '510113003011', '1639793635066', '1', null);
INSERT INTO `region` VALUES ('680', '小南街3号', 'XNJ3H', 'CN51011351', '409', '小南街3号', null, null, '510113006002', '1639793635074', '1', null);
INSERT INTO `region` VALUES ('681', '五泉6组赖家院落', 'WQ6ZLJYL', 'CN510113404', '409', '五泉村6组', null, null, '510113006013', '1639793635083', '1', null);
INSERT INTO `region` VALUES ('682', '农行宿舍', 'NXSS', 'CN510113101209', '409', '教育街42号', null, null, '510113003011', '1639793635091', '1', null);
INSERT INTO `region` VALUES ('683', '浅水湾', 'QSW', 'CN510113345', '409', '华逸路99号', null, null, '510113003016', '1639793635100', '1', null);
INSERT INTO `region` VALUES ('684', '新力翡翠湾', 'XLFCW', 'CN510113100812', '409', '同华大道1566号', null, null, '510113003015', '1639793635109', '1', null);
INSERT INTO `region` VALUES ('685', '怡湖芳邻', 'YHFL', 'CN510113101248', '409', '华金大道二段248号', null, null, '510113003001', '1639793635117', '1', null);
INSERT INTO `region` VALUES ('686', '沈家大院', 'SJDY', 'CN510113142', '409', '十八湾18组', null, null, '510113006011', '1639793635126', '1', null);
INSERT INTO `region` VALUES ('687', '糠市巷8号', 'KSX8H', 'CN510113101416', '409', '糠市巷8号', null, null, '510113006001', '1639793635134', '1', null);
INSERT INTO `region` VALUES ('688', '联兴村8组', 'LXC8Z', 'CN510113375', '409', '联兴村8组', null, null, '510113006013', '1639793635142', '1', null);
INSERT INTO `region` VALUES ('689', '五泉4组杨家院落', 'WQ4ZYJYL', 'CN510113405', '409', '五泉村4组', null, null, '510113006013', '1639793635150', '1', null);
INSERT INTO `region` VALUES ('690', '蜀星中学宿舍怡湖西路2号', 'SXZXSSYHXL2H', 'CN510113101233', '409', '怡湖西路2号', null, null, '510113003011', '1639793635159', '1', null);
INSERT INTO `region` VALUES ('691', '七里溪香一期', 'QLXXYQ', 'CN510113101188', '409', '华金大道三段118号', null, null, '510113003023', '1639793635168', '1', null);
INSERT INTO `region` VALUES ('692', '环保局宿舍', 'HBJSS', 'CN510113303', '409', '青江中路269号', null, null, '510113003011', '1639793635177', '1', null);
INSERT INTO `region` VALUES ('693', '红阳5、6栋', 'HY5、6D', 'CN510113332', '409', '红阳路71号', null, null, '510113003016', '1639793635186', '1', null);
INSERT INTO `region` VALUES ('694', '刘家大院', 'LJDY', 'CN510113141', '409', '十八湾村6组', null, null, '510113006011', '1639793635194', '1', null);
INSERT INTO `region` VALUES ('695', '工商所宿舍', 'GSSSS', 'CN51011331', '409', '市场巷93号', null, null, '510113003007', '1639793635203', '1', null);
INSERT INTO `region` VALUES ('696', '天骄星城', 'TJXC', 'CN510113197', '409', '文汇路28号', null, null, '510113003003', '1639793635211', '1', null);
INSERT INTO `region` VALUES ('697', '五泉5组王家院落', 'WQ5ZWJYL', 'CN510113403', '409', '五泉村5组', null, null, '510113006013', '1639793635220', '1', null);
INSERT INTO `region` VALUES ('698', '长宁小区B区', 'ZNXQBQ', 'CN510113101426', '409', '金渊路216号', null, null, '510113006005', '1639793635229', '1', null);
INSERT INTO `region` VALUES ('699', '五泉村1组粉坊院落', 'WQC1ZFFYL', 'CN510113390', '409', '五泉村1组', null, null, '510113006013', '1639793635238', '1', null);
INSERT INTO `region` VALUES ('700', '恬园雅居', 'TYYJ', 'CN510113101383', '409', '安平路1099号', null, null, '510113010003', '1639793635246', '1', null);
INSERT INTO `region` VALUES ('701', '派出所宿舍', 'PCSSS', 'CN510113101258', '409', '怡湖东路139号', null, null, '510113003001', '1639793635255', '1', null);
INSERT INTO `region` VALUES ('702', '计生局宿舍', 'JSJSS', 'CN510113101', '409', '青江西路139号', null, null, '510113003011', '1639793635264', '1', null);
INSERT INTO `region` VALUES ('703', '有机化宿舍', 'YJHSS', 'CN51011394', '409', '下北街58号', null, null, '510113006001', '1639793635272', '1', null);
INSERT INTO `region` VALUES ('704', '商贸局宿舍', 'SMJSS', 'CN510113101231', '409', '青江中路179号', null, null, '510113003011', '1639793635281', '1', null);
INSERT INTO `region` VALUES ('705', '五泉村13组秦家院落', 'WQC13ZQJYL', 'CN510113397', '409', '五泉村13组', null, null, '510113006013', '1639793635289', '1', null);
INSERT INTO `region` VALUES ('706', '青江馨苑', 'QJXY', 'CN510113101211', '409', '教育街230号', null, null, '510113003011', '1639793635298', '1', null);
INSERT INTO `region` VALUES ('707', '茶花新城', 'CHXC', 'CN510113101410', '409', '茶花路90号', null, null, '510113006003', '1639793635307', '1', null);
INSERT INTO `region` VALUES ('708', '清江花语', 'QJHY', 'CN510113101351', '409', '华金大道二段699号', null, null, '510113003016', '1639793635315', '1', null);
INSERT INTO `region` VALUES ('709', '安居东苑', 'AJDY', 'CN510113101309', '409', '安居路39号', null, null, '510113003002', '1639793635324', '1', null);
INSERT INTO `region` VALUES ('710', '联兴村3组', 'LXC3Z', 'CN510113373', '409', '联兴村3组', null, null, '510113006013', '1639793635333', '1', null);
INSERT INTO `region` VALUES ('711', '琪悦花园', 'QYHY', 'CN510113101203', '409', '红阳巷9号', null, null, '510113003011', '1639793635341', '1', null);
INSERT INTO `region` VALUES ('712', '地灾结合土地整理集中居住区（暂定）', 'DZJHTDZLJZJZQ（ZD）', 'CN510113101374', '409', '牌坊村6组', null, null, '510113008014', '1639793635350', '1', null);
INSERT INTO `region` VALUES ('713', '区防疫站宿舍', 'QFYZSS', 'CN510113101213', '409', '三家巷9号', null, null, '510113003011', '1639793635358', '1', null);
INSERT INTO `region` VALUES ('714', '川化五村四区', 'CHWCSQ', 'eb503faef68646c0b5c5688ed314b56c', '409', '怡湖东路141号', null, null, '510113003001', '1639793635367', '1', null);
INSERT INTO `region` VALUES ('715', '城埝街院落', 'CNJYL', 'CN51011374', '409', '城埝街', null, null, '510113006002', '1639793635375', '1', null);
INSERT INTO `region` VALUES ('716', '国税宿舍', 'GSSS', 'CN51011387', '409', '公安街64号', null, null, '510113006001', '1639793635384', '1', null);
INSERT INTO `region` VALUES ('717', '黄山名苑', 'HSMY', 'CN510113334', '409', '红阳路106号', null, null, '510113003016', '1639793635393', '1', null);
INSERT INTO `region` VALUES ('718', '怡东园', 'YDY', 'CN510113101261', '409', '怡湖东路77号', null, null, '510113003001', '1639793635402', '1', null);
INSERT INTO `region` VALUES ('719', '馨苑巷12号', 'XYX12H', 'CN510113100651', '409', '馨苑巷12号3栋1单元6楼11号', null, null, '510113003001', '1639793635410', '1', null);
INSERT INTO `region` VALUES ('720', '电信花园', 'DXHY', 'CN510113101243', '409', '芳邻路19号', null, null, '510113003001', '1639793635419', '1', null);
INSERT INTO `region` VALUES ('721', '怡湖西苑', 'YHXY', 'CN510113101271', '409', '怡湖西路216号', null, null, '510113003001', '1639793635427', '1', null);
INSERT INTO `region` VALUES ('722', '（工行花园）', '（GXHY）', 'CN510113101270', '409', '怡湖西路189号', null, null, '510113003001', '1639793635436', '1', null);
INSERT INTO `region` VALUES ('723', '成钢新小区', 'CGXXQ', 'CN510113101234', '409', '怡湖西路60号', null, null, '510113003011', '1639793635445', '1', null);
INSERT INTO `region` VALUES ('724', '海棉厂宿舍', 'HMCSS', 'CN510113338', '409', '华逸中路1365号', null, null, '510113003013', '1639793635454', '1', null);
INSERT INTO `region` VALUES ('725', '锦绣北苑', 'JXBY', 'CN510113101337', '409', '邮电巷66号', null, null, '510113003005', '1639793635463', '1', null);
INSERT INTO `region` VALUES ('726', '联兴村1组', 'LXC1Z', 'CN510113371', '409', '联兴村1组', null, null, '510113006013', '1639793635471', '1', null);
INSERT INTO `region` VALUES ('727', '老总楼', 'LZL', 'CN510113101257', '409', '怡湖东路131号', null, null, '510113003001', '1639793635480', '1', null);
INSERT INTO `region` VALUES ('728', '红阳街道宿舍', 'HYJDSS', 'CN510113167', '409', '青江中路53号', null, null, '510113003001', '1639793635489', '1', null);
INSERT INTO `region` VALUES ('729', '电力公司宿舍', 'DLGSSS', 'CN510113101420', '409', '上北街91号', null, null, '510113006001', '1639793635498', '1', null);
INSERT INTO `region` VALUES ('730', '红阳商住楼560号', 'HYSZL560H', 'CN510113101219', '409', '华金大道560号', null, null, '510113003011', '1639793635506', '1', null);
INSERT INTO `region` VALUES ('731', '农行青白江支行', 'NXQBJZX', 'CN510113289', '409', '怡湖西路89号', null, null, '510113003011', '1639793635514', '1', null);
INSERT INTO `region` VALUES ('732', '上北街51号', 'SBJ51H', 'CN510113101419', '409', '上北街51号', null, null, '510113006001', '1639793635522', '1', null);
INSERT INTO `region` VALUES ('733', '花园新城（成德南及二绕小区）三期', 'HYXC（CDNJERXQ）SQ', '0394ebd7c6574964b3895187faec287d', '409', '花园1号', null, null, '510113008006', '1639793635531', '1', null);
INSERT INTO `region` VALUES ('734', '凤凰小区', 'FHXQ', 'CN510113100832', '409', '凤凰大道2699号', null, null, '510113003019', '1639793635539', '1', null);
INSERT INTO `region` VALUES ('735', '宏瑞阳光郦城', 'HRYGLC', 'CN51011345', '409', '凤凰东二路186号', null, null, '510113001001', '1639793635548', '1', null);
INSERT INTO `region` VALUES ('736', '柴市坝街29号小区', 'CSBJ29HXQ', '1a87ca2971f44720a3d8adf5d492b0c7', '409', '柴市坝29号', null, null, '510113008001', '1639793635556', '1', null);
INSERT INTO `region` VALUES ('737', '农村玉带7组', 'NCYD7Z', 'CN510113184', '409', '玉带7组', null, null, '510113003001', '1639793635565', '1', null);
INSERT INTO `region` VALUES ('738', '水云间', 'SYJ', 'CN510113101281', '409', '石家碾中路4号', null, null, '510113003010', '1639793635574', '1', null);
INSERT INTO `region` VALUES ('739', '玉带3组', 'YD3Z', 'CN510113136', '409', '杨柳路2号', null, null, '510113003011', '1639793635582', '1', null);
INSERT INTO `region` VALUES ('740', '车站南路45号', 'CZNL45H', 'CN510113101408', '409', '车站南路45号', null, null, '510113004002', '1639793635591', '1', null);
INSERT INTO `region` VALUES ('741', '绣川新苑A区', 'XCXYAQ', 'CN510113100847', '409', '玉龙路96号', null, null, '510113006008', '1639793635600', '1', null);
INSERT INTO `region` VALUES ('742', '联兴村11组', 'LXC11Z', 'CN510113378', '409', '联兴村11组', null, null, '510113006013', '1639793635609', '1', null);
INSERT INTO `region` VALUES ('743', '商业街27号', 'SYJ27H', 'CN51011388', '409', '商业街27号', null, null, '510113006001', '1639793635617', '1', null);
INSERT INTO `region` VALUES ('744', '汇鑫花园一期', 'HXHYYQ', 'CN510113119', '409', '杨柳103号', null, null, '510113003011', '1639793635626', '1', null);
INSERT INTO `region` VALUES ('745', '悦隽盛世', 'YJSS', 'CN510113101439', '409', '大同街道凤祥大道2666号', null, null, '510113001003', '1639793635635', '1', null);
INSERT INTO `region` VALUES ('746', '逸舟花园', 'YZHY', 'CN510113101249', '409', '华金大道二段30号', null, null, '510113003001', '1639793635643', '1', null);
INSERT INTO `region` VALUES ('747', '九千朝阳', 'JQCY', 'CN510113120', '409', '夏家巷121号', null, null, '510113003011', '1639793635652', '1', null);
INSERT INTO `region` VALUES ('748', '区环卫所宿舍', 'QHWSSS', 'CN510113161', '409', '青江北30号', null, null, '510113003001', '1639793635661', '1', null);
INSERT INTO `region` VALUES ('749', '黄坭新型社区', 'HNXXSQ', 'CN510113101384', '409', '八达路196号', null, null, '510113010003', '1639793635669', '1', null);
INSERT INTO `region` VALUES ('750', '玉龙小区108院', 'YLXQ108Y', 'CN510113101168', '409', '青华东路108号', null, null, '510113003007', '1639793635678', '1', null);
INSERT INTO `region` VALUES ('751', '四川国龙科技有限公司', 'SCGLKJYXGS', 'CN51011326', '409', '大同西路7号', null, null, '510113001002', '1639793635687', '1', null);
INSERT INTO `region` VALUES ('752', '川化五村一区（侨家大院）', 'CHWCYQ（QJDY）', 'CN510113101336', '409', '青江东路32号', null, null, '510113003005', '1639793635695', '1', null);
INSERT INTO `region` VALUES ('753', '看守所宿舍', 'KSSSS', 'CN510113100', '409', '团结西路109号附111号', null, null, '510113003011', '1639793635704', '1', null);
INSERT INTO `region` VALUES ('754', '红阳二区', 'HYEQ', 'CN510113343', '409', '红阳路164号', null, null, '510113003016', '1639793635714', '1', null);
INSERT INTO `region` VALUES ('755', '杏苑华庭小区', 'XYHTXQ', 'CN510113101375', '409', '桂花路1号', null, null, '510113008019', '1639793635722', '1', null);
INSERT INTO `region` VALUES ('756', '天府欧城', 'TFOC', 'CN510113101307', '409', '凤凰西七路31号', null, null, '510113003022', '1639793635731', '1', null);
INSERT INTO `region` VALUES ('757', '粮贸公司宿舍', 'LMGSSS', 'CN510113144', '409', '政府中路211号', null, null, '510113003001', '1639793635741', '1', null);
INSERT INTO `region` VALUES ('758', '小南街35号', 'XNJ35H', 'CN51011363', '409', '小南街35号', null, null, '510113006002', '1639793635749', '1', null);
INSERT INTO `region` VALUES ('759', '缘聚花园', 'YJHY', 'CN510113101397', '409', '宏福路1号附70号', null, null, '510113009002', '1639793635758', '1', null);
INSERT INTO `region` VALUES ('760', '凤祥兴居', 'FXXJ', 'CN510113650', '409', '凤凰大道一段2188号', null, null, '510113003018', '1639793635767', '1', null);
INSERT INTO `region` VALUES ('761', '滨河苑', 'BHY', 'CN510113101355', '409', '政府北路140号', null, null, '510113003016', '1639793635776', '1', null);
INSERT INTO `region` VALUES ('762', '阳光花园西苑', 'YGHYXY', 'CN510113101287', '409', '石家碾西路159号', null, null, '510113003010', '1639793635784', '1', null);
INSERT INTO `region` VALUES ('763', '东方新村', 'DFXC', 'CN510113101380', '409', '祥红路999号', null, null, '510113010022', '1639793635793', '1', null);
INSERT INTO `region` VALUES ('764', '农机局宿舍', 'NJJSS', 'CN510113101262', '409', '华金大道二段410号', null, null, '510113003001', '1639793635802', '1', null);
INSERT INTO `region` VALUES ('765', '大南街107号', 'DNJ107H', 'CN51011375', '409', '大南街107号', null, null, '510113006002', '1639793635810', '1', null);
INSERT INTO `region` VALUES ('766', '四季花园', 'SJHY', 'CN510113101319', '409', '菁华路85号', null, null, '510113003002', '1639793635819', '1', null);
INSERT INTO `region` VALUES ('767', '时代家园', 'SDJY', 'CN510113101254', '409', '青江东路1号', null, null, '510113003001', '1639793635828', '1', null);
INSERT INTO `region` VALUES ('768', '水岸华府', 'SAHF', 'CN510113101166', '409', '青华东路138号', null, null, '510113003007', '1639793635838', '1', null);
INSERT INTO `region` VALUES ('769', '福安怡景', 'FAYJ', 'CN510113232', '409', '祥福镇高楼村3组', null, null, '510113006018', '1639793635845', '1', null);
INSERT INTO `region` VALUES ('770', '化机集体宿舍', 'HJJTSS', 'CN510113101341', '409', '大弯南路53号', null, null, '510113003005', '1639793635854', '1', null);
INSERT INTO `region` VALUES ('771', '九思巷院落', 'JSXYL', 'CN51011372', '409', '九思巷', null, null, '510113006002', '1639793635863', '1', null);
INSERT INTO `region` VALUES ('772', '荣生园', 'RSY', 'CN510113101216', '409', '杨柳路99号', null, null, '510113003011', '1639793635872', '1', null);
INSERT INTO `region` VALUES ('773', '凤凰名城一期', 'FHMCYQ', 'CN510113101173', '409', '华金大道三段55号', null, null, '510113003003', '1639793635880', '1', null);
INSERT INTO `region` VALUES ('774', '开发公司房管楼宿舍', 'KFGSFGLSS', 'CN510113179', '409', '青江南路61号', null, null, '510113003001', '1639793635888', '1', null);
INSERT INTO `region` VALUES ('775', '太平粮站宿舍', 'TPLZSS', 'CN510113101370', '409', '平安路一段10号', null, null, '510113008001', '1639793635897', '1', null);
INSERT INTO `region` VALUES ('776', '怡洲帝都', 'YZDD', 'CN510113101171', '409', '大弯北路88号', null, null, '510113003003', '1639793635905', '1', null);
INSERT INTO `region` VALUES ('777', '五泉村7组温家院子', 'WQC7ZWJYZ', 'CN510113393', '409', '五泉村7组', null, null, '510113006013', '1639793635914', '1', null);
INSERT INTO `region` VALUES ('778', '原国土局宿舍', 'YGTJSS', 'CN510113287', '409', '怡湖西路21号', null, null, '510113003011', '1639793635922', '1', null);
INSERT INTO `region` VALUES ('779', '建设局宿舍', 'JSJSS', 'CN510113109', '409', '三家5号', null, null, '510113003011', '1639793635931', '1', null);
INSERT INTO `region` VALUES ('780', '清溪园', 'QXY', 'CN510113101326', '409', '同华大道259号', null, null, '510113003002', '1639793635940', '1', null);
INSERT INTO `region` VALUES ('781', '兴牌坊社区', 'XPFSQ', 'CN510113101373', '409', '牌坊村6组51号', null, null, '510113008014', '1639793635950', '1', null);
INSERT INTO `region` VALUES ('782', '红阳商住楼', 'HYSZL', 'CN510113270', '409', '华金大道二段624号', null, null, '510113003011', '1639793635957', '1', null);
INSERT INTO `region` VALUES ('783', '交通局宿舍', 'JTJSS', 'CN510113101316', '409', '华金大道二段229号', null, null, '510113003002', '1639793635966', '1', null);
INSERT INTO `region` VALUES ('784', '汇鑫花苑一期', 'HXHYYQ', 'CN510113101214', '409', '杨柳路103号', null, null, '510113003011', '1639793635974', '1', null);
INSERT INTO `region` VALUES ('785', '西街上院', 'XJSY', 'CN510113364', '409', '金渊路81号', null, null, '510113006005', '1639793635983', '1', null);
INSERT INTO `region` VALUES ('786', '区医院医师楼宿舍', 'QYYYSLSS', 'f2229ea230774211b9e6a688ff732337', '409', '凤凰东四路9号', null, null, '510113003011', '1639793635992', '1', null);
INSERT INTO `region` VALUES ('787', '区邮政局宿舍', 'QYZJSS', 'CN510113101235', '409', '政府中路180号', null, null, '510113003011', '1639793636001', '1', null);
INSERT INTO `region` VALUES ('788', '绣水兰庭', 'XSLT', 'CN510113363', '409', '清泉大道719号', null, null, '510113006005', '1639793636009', '1', null);
INSERT INTO `region` VALUES ('789', '城市广场', 'CSGC', 'f0b4799369b74625bab21997d421f566', '409', '新河路9号', null, null, '510113003010', '1639793636018', '1', null);
INSERT INTO `region` VALUES ('790', '锦绣南苑', 'JXNY', 'CN510113101338', '409', '邮电巷79号', null, null, '510113003005', '1639793636026', '1', null);
INSERT INTO `region` VALUES ('791', '大夫10组', 'DF10Z', 'CN510113101164', '409', '大夫10组', null, null, '510113003007', '1639793636035', '1', null);
INSERT INTO `region` VALUES ('792', '和盛花园', 'HSHY', 'CN510113344', '409', '红阳路278号', null, null, '510113003016', '1639793636044', '1', null);
INSERT INTO `region` VALUES ('793', '农商行宿舍', 'NSXSS', 'CN510113101352', '409', '华金大道二段525号', null, null, '510113003016', '1639793636053', '1', null);
INSERT INTO `region` VALUES ('794', '成钢物存储宿舍', 'CGWCCSS', 'CN510113101200', '409', '红阳巷2号', null, null, '510113003011', '1639793636061', '1', null);
INSERT INTO `region` VALUES ('795', '瀚城新天地', 'HCXTD', 'CN510113101174', '409', '学苑路218号', null, null, '510113003003', '1639793636070', '1', null);
INSERT INTO `region` VALUES ('796', '五泉1组粉房院落', 'WQ1ZFFYL', 'CN510113409', '409', '五泉村1组', null, null, '510113006013', '1639793636079', '1', null);
INSERT INTO `region` VALUES ('797', '听湖九园', 'THJY', 'CN510113101441', '409', '凤凰东二路99号', null, null, '510113001001', '1639793636088', '1', null);
INSERT INTO `region` VALUES ('798', '联兴村13组', 'LXC13Z', 'CN510113379', '409', '联兴村13组', null, null, '510113006013', '1639793636097', '1', null);
INSERT INTO `region` VALUES ('799', '红阳十六队', 'HYSLD', 'CN510113137', '409', '杨柳2号', null, null, '510113003011', '1639793636106', '1', null);
INSERT INTO `region` VALUES ('800', '安居西苑', 'AJXY', 'CN510113101283', '409', '安居路88号', null, null, '510113003010', '1639793636114', '1', null);
INSERT INTO `region` VALUES ('801', '卫校宿舍', 'WXSS', 'CN510113177', '409', '青江南路107号', null, null, '510113003001', '1639793636123', '1', null);
INSERT INTO `region` VALUES ('802', '太平医院宿舍', 'TPYYSS', 'CN510113101372', '409', '鳅鱼巷81号', null, null, '510113008001', '1639793636132', '1', null);
INSERT INTO `region` VALUES ('803', '蜀韵南庭', 'SYNT', 'CN510113100691', '409', '正兴路336号', null, null, '510113004003', '1639793636140', '1', null);
INSERT INTO `region` VALUES ('804', '香草洲（一期）', 'XCZ（YQ）', 'CN510113101295', '409', '政府北路155号', null, null, '510113003010', '1639793636149', '1', null);
INSERT INTO `region` VALUES ('805', '杏福尚城', 'XFSC', 'CN510113101389', '409', '桂花路', null, null, '510113009004', '1639793636158', '1', null);
INSERT INTO `region` VALUES ('806', '城市花园', 'CSHY', 'CN510113101344', '409', '红阳东路22号', null, null, '510113003016', '1639793636166', '1', null);
INSERT INTO `region` VALUES ('807', '万家大院西院', 'WJDYXY', 'CN510113140', '409', '十八湾9组', null, null, '510113006011', '1639793636175', '1', null);
INSERT INTO `region` VALUES ('808', '建行宿舍', 'JXSS', 'CN510113472', '409', '华金大道二段385号', null, null, '510113003010', '1639793636183', '1', null);
INSERT INTO `region` VALUES ('809', '红阳17队', 'HY17D', 'CN510113101349', '409', '威凤街', null, null, '510113003016', '1639793636192', '1', null);
INSERT INTO `region` VALUES ('810', '禽蛋市场宿舍', 'QDSCSS', 'CN510113101368', '409', '平安路二段82号附4号', null, null, '510113008001', '1639793636201', '1', null);
INSERT INTO `region` VALUES ('811', '老电力局宿舍', 'LDLJSS', 'CN510113101356', '409', '政府北路16号', null, null, '510113003016', '1639793636209', '1', null);
INSERT INTO `region` VALUES ('812', '工业水管站宿舍', 'GYSGZSS', 'CN510113275', '409', '华金大道二段558号', null, null, '510113003011', '1639793636218', '1', null);
INSERT INTO `region` VALUES ('813', '新河小区', 'XHXQ', 'CN510113147', '409', '政府中路201号', null, null, '510113003001', '1639793636226', '1', null);
INSERT INTO `region` VALUES ('814', '五泉村11组龙家院落', 'WQC11ZLJYL', 'CN510113396', '409', '五泉村11组', null, null, '510113006013', '1639793636235', '1', null);
INSERT INTO `region` VALUES ('815', '营房巷4号', 'YFX4H', 'CN51011362', '409', '营房巷4号', null, null, '510113006002', '1639793636244', '1', null);
INSERT INTO `region` VALUES ('816', '拆迁安置房', 'CQAZF', 'CN510113537', '409', '政府南路95号', null, null, '510113003014', '1639793636252', '1', null);
INSERT INTO `region` VALUES ('817', '田园新居', 'TYXJ', 'CN510113101398', '409', '字库社区5组', null, null, '510113009002', '1639793636260', '1', null);
INSERT INTO `region` VALUES ('818', '鸡市巷93号', 'JSX93H', 'CN510113100677', '409', '鸡市巷93号', null, null, '510113004001', '1639793636268', '1', null);
INSERT INTO `region` VALUES ('819', '华金苑', 'HJY', 'CN510113150', '409', '华金大道二段412号', null, null, '510113003001', '1639793636277', '1', null);
INSERT INTO `region` VALUES ('820', '上域中央', 'SYZY', 'CN510113101292', '409', '新河路166号', null, null, '510113003010', '1639793636285', '1', null);
INSERT INTO `region` VALUES ('821', '区工会宿舍', 'QGHSS', 'CN510113171', '409', '青江中路38号', null, null, '510113003001', '1639793636294', '1', null);
INSERT INTO `region` VALUES ('822', '凤凰栖', 'FHQ', 'CN510113101342', '409', '红阳东路11号', null, null, '510113003016', '1639793636303', '1', null);
INSERT INTO `region` VALUES ('823', '秋玉巷74号', 'QYX74H', 'CN51011383', '409', '秋玉巷74号', null, null, '510113006001', '1639793636311', '1', null);
INSERT INTO `region` VALUES ('824', '发金业主', 'FJYZ', 'CN510113189', '409', '华金大道三段101号', null, null, '510113003003', '1639793636320', '1', null);
INSERT INTO `region` VALUES ('825', '怡和茗居', 'YHMJ', 'CN510113121', '409', '青江西路69号', null, null, '510113003011', '1639793636328', '1', null);
INSERT INTO `region` VALUES ('826', '商都小区', 'SDXQ', 'CN510113101425', '409', '滨河北路33号', null, null, '510113006018', '1639793636337', '1', null);
INSERT INTO `region` VALUES ('827', '世季宜家', 'SJYJ', 'CN510113134', '409', '华金大道二段756号', null, null, '510113003011', '1639793636346', '1', null);
INSERT INTO `region` VALUES ('828', '车辆厂宿舍', 'CLCSS', 'CN510113101401', '409', '新兴街148号', null, null, '510113004008', '1639793636354', '1', null);
INSERT INTO `region` VALUES ('829', '五泉8组陈家院落', 'WQ8ZCJYL', 'CN510113399', '409', '五泉村8组', null, null, '510113006013', '1639793636364', '1', null);
INSERT INTO `region` VALUES ('830', '锦尚景', 'JSJ', 'CN510113101289', '409', '石家碾中路117号', null, null, '510113003010', '1639793636372', '1', null);
INSERT INTO `region` VALUES ('831', '紫竹居', 'ZZJ', 'CN510113101312', '409', '华金大道二段105号', null, null, '510113003002', '1639793636380', '1', null);
INSERT INTO `region` VALUES ('832', '区建设局宿舍', 'QJSJSS', 'CN510113101212', '409', '三家巷7号', null, null, '510113003011', '1639793636397', '1', null);
INSERT INTO `region` VALUES ('833', '新天地', 'XTD', 'CN510113470', '409', '华金大道二段387号', null, null, '510113003010', '1639793636406', '1', null);
INSERT INTO `region` VALUES ('834', '芦稿新型社区', 'LGXXSQ', 'CN510113101385', '409', '芦稿村14组220号', null, null, '510113010006', '1639793636415', '1', null);
INSERT INTO `region` VALUES ('835', '万科公园大道', 'WKGYDD', 'CN510113100752', '409', '华逸中路199号', null, null, '510113003015', '1639793636423', '1', null);
INSERT INTO `region` VALUES ('836', '前南小区', 'QNXQ', 'CN51011328', '409', '大弯南路38号', null, null, '510113003007', '1639793636432', '1', null);
INSERT INTO `region` VALUES ('837', '宏恩康城', 'HEKC', 'CN510113342', '409', '华逸路118号', null, null, '510113003016', '1639793636441', '1', null);
INSERT INTO `region` VALUES ('838', '区广播局宿舍', 'QGBJSS', 'CN510113183', '409', '华金大道799号', null, null, '510113003001', '1639793636450', '1', null);
INSERT INTO `region` VALUES ('839', '学府雅苑', 'XFYY', 'CN510113196', '409', '华金大道三段61号', null, null, '510113003003', '1639793636458', '1', null);
INSERT INTO `region` VALUES ('840', '红旗4组', 'HQ4Z', 'CN510113101175', '409', '紫荆街', null, null, '510113003003', '1639793636467', '1', null);
INSERT INTO `region` VALUES ('841', '丽雅美景', 'LYMJ', 'CN510113336', '409', '同金400号', null, null, '510113003013', '1639793636475', '1', null);
INSERT INTO `region` VALUES ('842', '工商所宿舍', 'GSSSS', 'CN510113101240', '409', '大弯北路131号', null, null, '510113003001', '1639793636485', '1', null);
INSERT INTO `region` VALUES ('843', '上街1号', 'SJ1H', 'CN510113101404', '409', '上街1号', null, null, '510113004001', '1639793636493', '1', null);
INSERT INTO `region` VALUES ('844', '大南街63号', 'DNJ63H', 'CN51011377', '409', '大南街63号', null, null, '510113006002', '1639793636502', '1', null);
INSERT INTO `region` VALUES ('845', '翡翠港', 'FCG', 'CN510113101427', '409', '金渊路319号', null, null, '510113006005', '1639793636511', '1', null);
INSERT INTO `region` VALUES ('846', '教师宿舍', 'JSSS', 'CN510113101367', '409', '平安路二段27号', null, null, '510113008001', '1639793636520', '1', null);
INSERT INTO `region` VALUES ('847', '省建六公司宿舍', 'SJLGSSS', 'CN51011399', '409', '团结西路107号', null, null, '510113003011', '1639793636528', '1', null);
INSERT INTO `region` VALUES ('848', '嘉和丽景', 'JHLJ', 'CN510113101357', '409', '政府北路198号', null, null, '510113003016', '1639793636537', '1', null);
INSERT INTO `region` VALUES ('849', '集装箱小区', 'JZXXQ', 'CN510113100838', '409', '玉成路45号', null, null, '510113006008', '1639793636545', '1', null);
INSERT INTO `region` VALUES ('850', '川化五村小二区', 'CHWCXEQ', 'CN510113101334', '409', '青江东路140号', null, null, '510113003005', '1639793636554', '1', null);
INSERT INTO `region` VALUES ('851', '大邦小区1期', 'DBXQ1Q', '76538a85230b4bf19daf2bc217ba8f6b', '409', '青江中路288号', null, null, '510113003014', '1639793636563', '1', null);
INSERT INTO `region` VALUES ('852', '中小企业局宿舍', 'ZXQYJSS', 'CN510113163', '409', '青江北路50号', null, null, '510113003001', '1639793636572', '1', null);
INSERT INTO `region` VALUES ('853', '电建公司宿舍', 'DJGSSS', 'CN510113457', '409', '政府北路41号', null, null, '510113003010', '1639793636580', '1', null);
INSERT INTO `region` VALUES ('854', '华严农技站宿舍', 'HYNJZSS', 'CN510113132', '409', '华金大道二段1118号', null, null, '510113003011', '1639793636589', '1', null);
INSERT INTO `region` VALUES ('855', '五泉村10组刘家院落', 'WQC10ZLJYL', 'CN510113394', '409', '五泉村10组', null, null, '510113006013', '1639793636597', '1', null);
INSERT INTO `region` VALUES ('856', '永兴房产', 'YXFC', 'CN510113169', '409', '青江中路87号', null, null, '510113003001', '1639793636606', '1', null);
INSERT INTO `region` VALUES ('857', '凯斯顿·华府', 'KSD·HF', 'CN510113101187', '409', '同华大道199号', null, null, '510113003023', '1639793636615', '1', null);
INSERT INTO `region` VALUES ('858', '五泉4组罗家院落', 'WQ4ZLJYL', 'CN510113406', '409', '五泉村4组', null, null, '510113006013', '1639793636623', '1', null);
INSERT INTO `region` VALUES ('859', '友好家园', 'YHJY', 'CN510113101361', '409', '北宁村15组', null, null, '510113008008', '1639793636632', '1', null);
INSERT INTO `region` VALUES ('860', '天美广场', 'TMGC', 'CN510113101179', '409', '大弯东路8号', null, null, '510113003003', '1639793636640', '1', null);
INSERT INTO `region` VALUES ('861', '家珍巷院落', 'JZXYL', 'CN51011373', '409', '家珍巷', null, null, '510113006002', '1639793636648', '1', null);
INSERT INTO `region` VALUES ('862', '康河街道', 'KHJD', '510105019', '407', null, null, null, '510105', '1669370157254', '1', null);
INSERT INTO `region` VALUES ('863', '西御河街道', 'XYHJD', '510105003', '407', null, null, null, '510105', '1669370157282', '1', null);
INSERT INTO `region` VALUES ('864', '草堂街道', 'CTJD', '510105007', '407', null, null, null, '510105', '1669370157286', '1', null);
INSERT INTO `region` VALUES ('865', '黄田坝街道', 'HTBJD', '510105012', '407', null, null, null, '510105', '1669370157290', '1', null);
INSERT INTO `region` VALUES ('866', '文家街道', 'WJJD', '510105014', '407', null, null, null, '510105', '1669370157294', '1', null);
INSERT INTO `region` VALUES ('867', '少城街道', 'SCJD', '510105005', '407', null, null, null, '510105', '1669370157297', '1', null);
INSERT INTO `region` VALUES ('868', '苏坡街道', 'SPJD', '510105013', '407', null, null, null, '510105', '1669370157301', '1', null);
INSERT INTO `region` VALUES ('869', '草市街街道', 'CSJJD', '510105002', '407', null, null, null, '510105', '1669370157305', '1', null);
INSERT INTO `region` VALUES ('870', '光华街道', 'GHJD', '510105009', '407', null, null, null, '510105', '1669370157309', '1', null);
INSERT INTO `region` VALUES ('871', '府南街道', 'FNJD', '510105008', '407', null, null, null, '510105', '1669370157312', '1', null);
INSERT INTO `region` VALUES ('872', '金沙街道', 'JSJD', '510105011', '407', null, null, null, '510105', '1669370157315', '1', null);
INSERT INTO `region` VALUES ('873', '蔡桥街道', 'CQJD', '510105018', '407', null, null, null, '510105', '1669370157319', '1', null);
INSERT INTO `region` VALUES ('874', '同瑞社区', 'TRSQ', '510105018001', '408', null, null, null, '510105018', '1669370157324', '1', null);
INSERT INTO `region` VALUES ('875', '同辉社区', 'THSQ', '510105018002', '408', null, null, null, '510105018', '1669370157328', '1', null);
INSERT INTO `region` VALUES ('876', '万家湾社区', 'WJWSQ', '510105018003', '408', null, null, null, '510105018', '1669370157331', '1', null);
INSERT INTO `region` VALUES ('877', '蔡桥社区', 'CQSQ', '510105018004', '408', null, null, null, '510105018', '1669370157334', '1', null);
INSERT INTO `region` VALUES ('878', '华严社区', 'HYSQ', '510105018005', '408', null, null, null, '510105018', '1669370157342', '1', null);
INSERT INTO `region` VALUES ('879', '七里沟社区', 'QLGSQ', '510105018006', '408', null, null, null, '510105018', '1669370157346', '1', null);
INSERT INTO `region` VALUES ('880', '红碾社区', 'HNSQ', '510105018007', '408', null, null, null, '510105018', '1669370157352', '1', null);
INSERT INTO `region` VALUES ('881', '同欣社区', 'TXSQ', '510105018008', '408', null, null, null, '510105018', '1669370157652', '1', null);
INSERT INTO `region` VALUES ('882', '金鹏社区', 'JPSQ', '510105011001', '408', null, null, null, '510105011', '1669370157806', '1', null);
INSERT INTO `region` VALUES ('883', '金凤社区', 'JFSQ', '510105011002', '408', null, null, null, '510105011', '1669370158019', '1', null);
INSERT INTO `region` VALUES ('884', '同怡社区', 'TYSQ', '510105011003', '408', null, null, null, '510105011', '1669370158022', '1', null);
INSERT INTO `region` VALUES ('885', '金沙遗址社区', 'JSYZSQ', '510105011004', '408', null, null, null, '510105011', '1669370158025', '1', null);
INSERT INTO `region` VALUES ('886', '战旗社区', 'ZQSQ', '510105008001', '408', null, null, null, '510105008', '1669370158028', '1', null);
INSERT INTO `region` VALUES ('887', '石人北路社区', 'SRBLSQ', '510105008002', '408', null, null, null, '510105008', '1669370158151', '1', null);
INSERT INTO `region` VALUES ('888', '文苑社区', 'WYSQ', '510105008003', '408', null, null, null, '510105008', '1669370158155', '1', null);
INSERT INTO `region` VALUES ('889', '石人南路社区', 'SRNLSQ', '510105008004', '408', null, null, null, '510105008', '1669370158159', '1', null);
INSERT INTO `region` VALUES ('890', '同德社区', 'TDSQ', '510105008005', '408', null, null, null, '510105008', '1669370158163', '1', null);
INSERT INTO `region` VALUES ('891', '清溪社区', 'QXSQ', '510105008006', '408', null, null, null, '510105008', '1669370158166', '1', null);
INSERT INTO `region` VALUES ('892', '浣花社区', 'HHSQ', '510105009001', '408', null, null, null, '510105009', '1669370158170', '1', null);
INSERT INTO `region` VALUES ('893', '财大社区', 'CDSQ', '510105009004', '408', null, null, null, '510105009', '1669370158173', '1', null);
INSERT INTO `region` VALUES ('894', '贝森路社区', 'BSLSQ', '510105009005', '408', null, null, null, '510105009', '1669370158176', '1', null);
INSERT INTO `region` VALUES ('895', '双新路社区', 'SXLSQ', '510105009006', '408', null, null, null, '510105009', '1669370158183', '1', null);
INSERT INTO `region` VALUES ('896', '清水河社区', 'QSHSQ', '510105009007', '408', null, null, null, '510105009', '1669370158187', '1', null);
INSERT INTO `region` VALUES ('897', '东坡路社区', 'DPLSQ', '510105009008', '408', null, null, null, '510105009', '1669370158190', '1', null);
INSERT INTO `region` VALUES ('898', '八宝街社区', 'BBJSQ', '510105002002', '408', null, null, null, '510105002', '1669370158194', '1', null);
INSERT INTO `region` VALUES ('899', '双眼井社区', 'SYJSQ', '510105002003', '408', null, null, null, '510105002', '1669370158198', '1', null);
INSERT INTO `region` VALUES ('900', '小关庙社区', 'XGMSQ', '510105002004', '408', null, null, null, '510105002', '1669370158202', '1', null);
INSERT INTO `region` VALUES ('901', '玉沙路社区', 'YSLSQ', '510105002005', '408', null, null, null, '510105002', '1669370158213', '1', null);
INSERT INTO `region` VALUES ('902', '宁夏街社区', 'NXJSQ', '510105002007', '408', null, null, null, '510105002', '1669370158216', '1', null);
INSERT INTO `region` VALUES ('903', '清波社区', 'QBSQ', '510105013002', '408', null, null, null, '510105013', '1669370158223', '1', null);
INSERT INTO `region` VALUES ('904', '中坝社区', 'ZBSQ', '510105013003', '408', null, null, null, '510105013', '1669370158226', '1', null);
INSERT INTO `region` VALUES ('905', '百仁社区', 'BRSQ', '510105013004', '408', null, null, null, '510105013', '1669370158230', '1', null);
INSERT INTO `region` VALUES ('906', '培风路社区', 'PFLSQ', '510105013006', '408', null, null, null, '510105013', '1669370158233', '1', null);
INSERT INTO `region` VALUES ('907', '清江社区', 'QJSQ', '510105013009', '408', null, null, null, '510105013', '1669370158237', '1', null);
INSERT INTO `region` VALUES ('908', '清源社区', 'QYSQ', '510105013011', '408', null, null, null, '510105013', '1669370158240', '1', null);
INSERT INTO `region` VALUES ('909', '四道街社区', 'SDJSQ', '510105005002', '408', null, null, null, '510105005', '1669370158251', '1', null);
INSERT INTO `region` VALUES ('910', '商业街社区', 'SYJSQ', '510105005003', '408', null, null, null, '510105005', '1669370158255', '1', null);
INSERT INTO `region` VALUES ('911', '宽巷子社区', 'KXZSQ', '510105005004', '408', null, null, null, '510105005', '1669370158261', '1', null);
INSERT INTO `region` VALUES ('912', '文翁社区', 'WWSQ', '510105005006', '408', null, null, null, '510105005', '1669370158265', '1', null);
INSERT INTO `region` VALUES ('913', '长城社区', 'ZCSQ', '510105005007', '408', null, null, null, '510105005', '1669370158268', '1', null);
INSERT INTO `region` VALUES ('914', '祠堂街社区', 'CTJSQ', '510105005008', '408', null, null, null, '510105005', '1669370158276', '1', null);
INSERT INTO `region` VALUES ('915', '康庄社区', 'KZSQ', '510105014001', '408', null, null, null, '510105014', '1669370158286', '1', null);
INSERT INTO `region` VALUES ('916', '大石桥社区', 'DSQSQ', '510105014002', '408', null, null, null, '510105014', '1669370158289', '1', null);
INSERT INTO `region` VALUES ('917', '张家碾社区', 'ZJNSQ', '510105014003', '408', null, null, null, '510105014', '1669370158294', '1', null);
INSERT INTO `region` VALUES ('918', '盐井社区', 'YJSQ', '510105014004', '408', null, null, null, '510105014', '1669370158299', '1', null);
INSERT INTO `region` VALUES ('919', '高坎社区', 'GKSQ', '510105014006', '408', null, null, null, '510105014', '1669370158304', '1', null);
INSERT INTO `region` VALUES ('920', '民安社区', 'MASQ', '510105012002', '408', null, null, null, '510105012', '1669370158307', '1', null);
INSERT INTO `region` VALUES ('921', '安康社区', 'AKSQ', '510105012003', '408', null, null, null, '510105012', '1669370158312', '1', null);
INSERT INTO `region` VALUES ('922', '成航社区', 'CHSQ', '510105012005', '408', null, null, null, '510105012', '1669370158498', '1', null);
INSERT INTO `region` VALUES ('923', '联工社区', 'LGSQ', '510105012007', '408', null, null, null, '510105012', '1669370158508', '1', null);
INSERT INTO `region` VALUES ('924', '黄土社区', 'HTSQ', '510105012008', '408', null, null, null, '510105012', '1669370158511', '1', null);
INSERT INTO `region` VALUES ('925', '快活社区', 'KHSQ', '510105012009', '408', null, null, null, '510105012', '1669370158516', '1', null);
INSERT INTO `region` VALUES ('926', '华兴社区', 'HXSQ', '510105012001', '408', null, null, null, '510105012', '1669370158519', '1', null);
INSERT INTO `region` VALUES ('927', '芳邻路社区', 'FLLSQ', '510105007002', '408', null, null, null, '510105007', '1669370158524', '1', null);
INSERT INTO `region` VALUES ('928', '琴台路社区', 'QTLSQ', '510105007003', '408', null, null, null, '510105007', '1669370158526', '1', null);
INSERT INTO `region` VALUES ('929', '草堂路社区', 'CTLSQ', '510105007004', '408', null, null, null, '510105007', '1669370158530', '1', null);
INSERT INTO `region` VALUES ('930', '青华社区', 'QHSQ', '510105007005', '408', null, null, null, '510105007', '1669370158540', '1', null);
INSERT INTO `region` VALUES ('931', '送仙桥社区', 'SXQSQ', '510105007001', '408', null, null, null, '510105007', '1669370158544', '1', null);
INSERT INTO `region` VALUES ('932', '西华门社区', 'XHMSQ', '510105003003', '408', null, null, null, '510105003', '1669370158550', '1', null);
INSERT INTO `region` VALUES ('933', '升平社区', 'SPSQ', '510105003006', '408', null, null, null, '510105003', '1669370158555', '1', null);
INSERT INTO `region` VALUES ('934', '鼓楼社区', 'GLSQ', '510105003007', '408', null, null, null, '510105003', '1669370158558', '1', null);
INSERT INTO `region` VALUES ('935', '陕西街社区', 'SXJSQ', '510105003008', '408', null, null, null, '510105003', '1669370158563', '1', null);
INSERT INTO `region` VALUES ('936', '骡马市社区', 'LMSSQ', '510105003010', '408', null, null, null, '510105003', '1669370158566', '1', null);
INSERT INTO `region` VALUES ('937', '乐平社区', 'LPSQ', '510105019002', '408', null, null, null, '510105019', '1669370158571', '1', null);
INSERT INTO `region` VALUES ('938', '马厂社区', 'MCSQ', '510105019003', '408', null, null, null, '510105019', '1669370158574', '1', null);
INSERT INTO `region` VALUES ('939', '董家坝社区', 'DJBSQ', '510105019004', '408', null, null, null, '510105019', '1669370158578', '1', null);
INSERT INTO `region` VALUES ('940', '康河社区', 'KHSQ', '510105019001', '408', null, null, null, '510105019', '1669370158582', '1', null);
INSERT INTO `region` VALUES ('941', '玉林街道', 'YLJD', '510107005', '407', null, null, null, '510107', '1669370158643', '1', null);
INSERT INTO `region` VALUES ('942', '芳草街街道', 'FCJJD', '510107061', '407', null, null, null, '510107', '1669370158646', '1', null);
INSERT INTO `region` VALUES ('943', '望江路街道', 'WJLJD', '510107004', '407', null, null, null, '510107', '1669370158652', '1', null);
INSERT INTO `region` VALUES ('944', '华兴街道', 'HXJD', '510107015', '407', null, null, null, '510107', '1669370158657', '1', null);
INSERT INTO `region` VALUES ('945', '肖家河街道', 'XJHJD', '510107062', '407', null, null, null, '510107', '1669370158659', '1', null);
INSERT INTO `region` VALUES ('946', '浆洗街街道', 'JXJJD', '510107001', '407', null, null, null, '510107', '1669370158663', '1', null);
INSERT INTO `region` VALUES ('947', '火车南站街道', 'HCNZJD', '510107007', '407', null, null, null, '510107', '1669370158666', '1', null);
INSERT INTO `region` VALUES ('948', '簇锦街道', 'CJJD', '510107014', '407', null, null, null, '510107', '1669370158669', '1', null);
INSERT INTO `region` VALUES ('949', '红牌楼街道', 'HPLJD', '510107010', '407', null, null, null, '510107', '1669370158671', '1', null);
INSERT INTO `region` VALUES ('950', '石羊街道', 'SYJD', '510107063', '407', null, null, null, '510107', '1669370158674', '1', null);
INSERT INTO `region` VALUES ('951', '金花桥街道', 'JHQJD', '510107013', '407', null, null, null, '510107', '1669370158677', '1', null);
INSERT INTO `region` VALUES ('952', '桂溪街道', 'GXJD', '510107064', '407', null, null, null, '510107', '1669370158680', '1', null);
INSERT INTO `region` VALUES ('953', '簇桥街道', 'CQJD', '510107011', '407', null, null, null, '510107', '1669370158684', '1', null);
INSERT INTO `region` VALUES ('954', '晋阳街道', 'JYJD', '510107009', '407', null, null, null, '510107', '1669370158687', '1', null);
INSERT INTO `region` VALUES ('955', '机投桥街道', 'JTQJD', '510107012', '407', null, null, null, '510107', '1669370158689', '1', null);
INSERT INTO `region` VALUES ('956', '玉林北路社区', 'YLBLSQ', '510107005001', '408', null, null, null, '510107005', '1669370158693', '1', null);
INSERT INTO `region` VALUES ('957', '玉林东路社区', 'YLDLSQ', '510107005002', '408', null, null, null, '510107005', '1669370158696', '1', null);
INSERT INTO `region` VALUES ('958', '倪家桥社区', 'NJQSQ', '510107005004', '408', null, null, null, '510107005', '1669370158702', '1', null);
INSERT INTO `region` VALUES ('959', '九如村社区', 'JRCSQ', '510107005006', '408', null, null, null, '510107005', '1669370158705', '1', null);
INSERT INTO `region` VALUES ('960', '电信路社区', 'DXLSQ', '510107005007', '408', null, null, null, '510107005', '1669370158708', '1', null);
INSERT INTO `region` VALUES ('961', '黉门街社区', 'HMJSQ', '510107005008', '408', null, null, null, '510107005', '1669370158710', '1', null);
INSERT INTO `region` VALUES ('962', '棕南社区', 'ZNSQ', '510107005009', '408', null, null, null, '510107005', '1669370158713', '1', null);
INSERT INTO `region` VALUES ('963', '棕北社区', 'ZBSQ', '510107005010', '408', null, null, null, '510107005', '1669370158716', '1', null);
INSERT INTO `region` VALUES ('964', '跳伞塔社区', 'TSTSQ', '510107005011', '408', null, null, null, '510107005', '1669370158719', '1', null);
INSERT INTO `region` VALUES ('965', '新南路社区', 'XNLSQ', '510107005012', '408', null, null, null, '510107005', '1669370158722', '1', null);
INSERT INTO `region` VALUES ('966', '南虹村社区', 'NHCSQ', '510107005013', '408', null, null, null, '510107005', '1669370158726', '1', null);
INSERT INTO `region` VALUES ('967', '紫薇社区', 'ZWSQ', '510107061006', '408', null, null, null, '510107061', '1669370158742', '1', null);
INSERT INTO `region` VALUES ('968', '神仙树社区', 'SXSSQ', '510107061008', '408', null, null, null, '510107061', '1669370158754', '1', null);
INSERT INTO `region` VALUES ('969', '盛泰社区', 'STSQ', '510107061009', '408', null, null, null, '510107061', '1669370158759', '1', null);
INSERT INTO `region` VALUES ('970', '沙子堰社区', 'SZYSQ', '510107061001', '408', null, null, null, '510107061', '1669370158763', '1', null);
INSERT INTO `region` VALUES ('971', '蓓蕾社区', 'BLSQ', '510107061002', '408', null, null, null, '510107061', '1669370158766', '1', null);
INSERT INTO `region` VALUES ('972', '紫荆社区', 'ZJSQ', '510107061004', '408', null, null, null, '510107061', '1669370158770', '1', null);
INSERT INTO `region` VALUES ('973', '紫竹社区', 'ZZSQ', '510107061005', '408', null, null, null, '510107061', '1669370158774', '1', null);
INSERT INTO `region` VALUES ('974', '老马路社区', 'LMLSQ', '510107004001', '408', null, null, null, '510107004', '1669370158780', '1', null);
INSERT INTO `region` VALUES ('975', '共和路社区', 'GHLSQ', '510107004002', '408', null, null, null, '510107004', '1669370158783', '1', null);
INSERT INTO `region` VALUES ('976', '棕东社区', 'ZDSQ', '510107004003', '408', null, null, null, '510107004', '1669370158788', '1', null);
INSERT INTO `region` VALUES ('977', '郭家桥社区', 'GJQSQ', '510107004004', '408', null, null, null, '510107004', '1669370158794', '1', null);
INSERT INTO `region` VALUES ('978', '新生路社区', 'XSLSQ', '510107004005', '408', null, null, null, '510107004', '1669370158796', '1', null);
INSERT INTO `region` VALUES ('979', '南桥社区', 'NQSQ', '510107015001', '408', null, null, null, '510107015', '1669370158799', '1', null);
INSERT INTO `region` VALUES ('980', '三河社区', 'SHSQ', '510107015002', '408', null, null, null, '510107015', '1669370158803', '1', null);
INSERT INTO `region` VALUES ('981', '沈家桥社区', 'SJQSQ', '510107015003', '408', null, null, null, '510107015', '1669370158806', '1', null);
INSERT INTO `region` VALUES ('982', '科园社区', 'KYSQ', '510107062005', '408', null, null, null, '510107062', '1669370158812', '1', null);
INSERT INTO `region` VALUES ('983', '新北社区', 'XBSQ', '510107062006', '408', null, null, null, '510107062', '1669370158815', '1', null);
INSERT INTO `region` VALUES ('984', '新盛社区', 'XSSQ', '510107062007', '408', null, null, null, '510107062', '1669370158828', '1', null);
INSERT INTO `region` VALUES ('985', '新光社区', 'XGSQ', '510107062008', '408', null, null, null, '510107062', '1669370158832', '1', null);
INSERT INTO `region` VALUES ('986', '永丰社区', 'YFSQ', '510107062001', '408', null, null, null, '510107062', '1669370158838', '1', null);
INSERT INTO `region` VALUES ('987', '兴蓉社区', 'XRSQ', '510107062003', '408', null, null, null, '510107062', '1669370158841', '1', null);
INSERT INTO `region` VALUES ('988', '正街社区', 'ZJSQ', '510107062004', '408', null, null, null, '510107062', '1669370158845', '1', null);
INSERT INTO `region` VALUES ('989', '锦里社区', 'JLSQ', '510107001006', '408', null, null, null, '510107001', '1669370158852', '1', null);
INSERT INTO `region` VALUES ('990', '少陵社区', 'SLSQ', '510107001007', '408', null, null, null, '510107001', '1669370158855', '1', null);
INSERT INTO `region` VALUES ('991', '百花社区', 'BHSQ', '510107001008', '408', null, null, null, '510107001', '1669370158863', '1', null);
INSERT INTO `region` VALUES ('992', '双楠社区', 'SNSQ', '510107001009', '408', null, null, null, '510107001', '1669370158866', '1', null);
INSERT INTO `region` VALUES ('993', '广福桥社区', 'GFQSQ', '510107001010', '408', null, null, null, '510107001', '1669370158872', '1', null);
INSERT INTO `region` VALUES ('994', '七道堰社区', 'QDYSQ', '510107001011', '408', null, null, null, '510107001', '1669370158876', '1', null);
INSERT INTO `region` VALUES ('995', '楠欣社区', 'NXSQ', '510107001012', '408', null, null, null, '510107001', '1669370158880', '1', null);
INSERT INTO `region` VALUES ('996', '洗面桥社区', 'XMQSQ', '510107001004', '408', null, null, null, '510107001', '1669370158883', '1', null);
INSERT INTO `region` VALUES ('997', '蜀汉街社区', 'SHJSQ', '510107001005', '408', null, null, null, '510107001', '1669370158885', '1', null);
INSERT INTO `region` VALUES ('998', '桐梓林社区', 'TZLSQ', '510107007001', '408', null, null, null, '510107007', '1669370158888', '1', null);
INSERT INTO `region` VALUES ('999', '锦官新城社区', 'JGXCSQ', '510107007002', '408', null, null, null, '510107007', '1669370158891', '1', null);
INSERT INTO `region` VALUES ('1000', '得胜社区', 'DSSQ', '510107007003', '408', null, null, null, '510107007', '1669370158894', '1', null);
INSERT INTO `region` VALUES ('1001', '高攀桥社区', 'GPQSQ', '510107007004', '408', null, null, null, '510107007', '1669370158897', '1', null);
INSERT INTO `region` VALUES ('1002', '长寿苑社区', 'ZSYSQ', '510107007005', '408', null, null, null, '510107007', '1669370158900', '1', null);
INSERT INTO `region` VALUES ('1003', '南站社区', 'NZSQ', '510107007006', '408', null, null, null, '510107007', '1669370158902', '1', null);
INSERT INTO `region` VALUES ('1004', '团结社区', 'TJSQ', '510107014001', '408', null, null, null, '510107014', '1669370158905', '1', null);
INSERT INTO `region` VALUES ('1005', '永兴社区', 'YXSQ', '510107014003', '408', null, null, null, '510107014', '1669370158907', '1', null);
INSERT INTO `region` VALUES ('1006', '顺和社区', 'SHSQ', '510107014004', '408', null, null, null, '510107014', '1669370158910', '1', null);
INSERT INTO `region` VALUES ('1007', '高碑社区', 'GBSQ', '510107014005', '408', null, null, null, '510107014', '1669370158914', '1', null);
INSERT INTO `region` VALUES ('1008', '顺江社区', 'SJSQ', '510107014006', '408', null, null, null, '510107014', '1669370158917', '1', null);
INSERT INTO `region` VALUES ('1009', '铁佛社区', 'TFSQ', '510107014007', '408', null, null, null, '510107014', '1669370158925', '1', null);
INSERT INTO `region` VALUES ('1010', '竹园社区', 'ZYSQ', '510107010001', '408', null, null, null, '510107010', '1669370158930', '1', null);
INSERT INTO `region` VALUES ('1011', '长城社区', 'ZCSQ', '510107010002', '408', null, null, null, '510107010', '1669370158933', '1', null);
INSERT INTO `region` VALUES ('1012', '龙爪社区', 'LZSQ', '510107010004', '408', null, null, null, '510107010', '1669370158940', '1', null);
INSERT INTO `region` VALUES ('1013', '双丰社区', 'SFSQ', '510107010006', '408', null, null, null, '510107010', '1669370158947', '1', null);
INSERT INTO `region` VALUES ('1014', '龙腾社区', 'LTSQ', '510107010009', '408', null, null, null, '510107010', '1669370158950', '1', null);
INSERT INTO `region` VALUES ('1015', '太平社区', 'TPSQ', '510107010010', '408', null, null, null, '510107010', '1669370158957', '1', null);
INSERT INTO `region` VALUES ('1016', '丽都花园社区', 'LDHYSQ', '510107010011', '408', null, null, null, '510107010', '1669370158960', '1', null);
INSERT INTO `region` VALUES ('1017', '府城社区', 'FCSQ', '510107063009', '408', null, null, null, '510107063', '1669370158965', '1', null);
INSERT INTO `region` VALUES ('1018', '锦城社区', 'JCSQ', '510107063010', '408', null, null, null, '510107063', '1669370158969', '1', null);
INSERT INTO `region` VALUES ('1019', '美洲花园社区', 'MZHYSQ', '510107063011', '408', null, null, null, '510107063', '1669370158978', '1', null);
INSERT INTO `region` VALUES ('1020', '新园社区', 'XYSQ', '510107063001', '408', null, null, null, '510107063', '1669370158981', '1', null);
INSERT INTO `region` VALUES ('1021', '新街社区', 'XJSQ', '510107063002', '408', null, null, null, '510107063', '1669370158984', '1', null);
INSERT INTO `region` VALUES ('1022', '庆安社区', 'QASQ', '510107063004', '408', null, null, null, '510107063', '1669370158987', '1', null);
INSERT INTO `region` VALUES ('1023', '三元社区', 'SYSQ', '510107063006', '408', null, null, null, '510107063', '1669370158989', '1', null);
INSERT INTO `region` VALUES ('1024', '新南社区', 'XNSQ', '510107063008', '408', null, null, null, '510107063', '1669370158992', '1', null);
INSERT INTO `region` VALUES ('1025', '府盛社区', 'FSSQ', '510107063017', '408', null, null, null, '510107063', '1669370158994', '1', null);
INSERT INTO `region` VALUES ('1026', '盛兴社区', 'SXSQ', '510107063012', '408', null, null, null, '510107063', '1669370158997', '1', null);
INSERT INTO `region` VALUES ('1027', '盛华社区', 'SHSQ', '510107063013', '408', null, null, null, '510107063', '1669370159001', '1', null);
INSERT INTO `region` VALUES ('1028', '盛乐社区', 'SLSQ', '510107063014', '408', null, null, null, '510107063', '1669370159005', '1', null);
INSERT INTO `region` VALUES ('1029', '锦羊社区', 'JYSQ', '510107063015', '408', null, null, null, '510107063', '1669370159007', '1', null);
INSERT INTO `region` VALUES ('1030', '锦晖社区', 'JHSQ', '510107063016', '408', null, null, null, '510107063', '1669370159009', '1', null);
INSERT INTO `region` VALUES ('1031', '陆坝社区', 'LBSQ', '510107013005', '408', null, null, null, '510107013', '1669370159013', '1', null);
INSERT INTO `region` VALUES ('1032', '文昌社区', 'WCSQ', '510107013006', '408', null, null, null, '510107013', '1669370159030', '1', null);
INSERT INTO `region` VALUES ('1033', '凉井社区', 'LJSQ', '510107013009', '408', null, null, null, '510107013', '1669370159034', '1', null);
INSERT INTO `region` VALUES ('1034', '马家河社区', 'MJHSQ', '510107013010', '408', null, null, null, '510107013', '1669370159037', '1', null);
INSERT INTO `region` VALUES ('1035', '花龙门社区', 'HLMSQ', '510107013012', '408', null, null, null, '510107013', '1669370159040', '1', null);
INSERT INTO `region` VALUES ('1036', '江安河社区', 'JAHSQ', '510107013002', '408', null, null, null, '510107013', '1669370159044', '1', null);
INSERT INTO `region` VALUES ('1037', '金花社区', 'JHSQ', '510107013003', '408', null, null, null, '510107013', '1669370159047', '1', null);
INSERT INTO `region` VALUES ('1038', '永康社区', 'YKSQ', '510107013004', '408', null, null, null, '510107013', '1669370159051', '1', null);
INSERT INTO `region` VALUES ('1039', '昆华社区', 'KHSQ', '510107064018', '408', null, null, null, '510107064', '1669370159054', '1', null);
INSERT INTO `region` VALUES ('1040', '科创社区', 'KCSQ', '510107064019', '408', null, null, null, '510107064', '1669370159057', '1', null);
INSERT INTO `region` VALUES ('1041', '三瓦窑社区', 'SWYSQ', '510107064001', '408', null, null, null, '510107064', '1669370159063', '1', null);
INSERT INTO `region` VALUES ('1042', '和平社区', 'HPSQ', '510107064002', '408', null, null, null, '510107064', '1669370159066', '1', null);
INSERT INTO `region` VALUES ('1043', '益州社区', 'YZSQ', '510107064003', '408', null, null, null, '510107064', '1669370159070', '1', null);
INSERT INTO `region` VALUES ('1044', '永安社区', 'YASQ', '510107064004', '408', null, null, null, '510107064', '1669370159074', '1', null);
INSERT INTO `region` VALUES ('1045', '南新社区', 'NXSQ', '510107064007', '408', null, null, null, '510107064', '1669370159077', '1', null);
INSERT INTO `region` VALUES ('1046', '天华社区', 'THSQ', '510107064011', '408', null, null, null, '510107064', '1669370159080', '1', null);
INSERT INTO `region` VALUES ('1047', '临江社区', 'LJSQ', '510107064013', '408', null, null, null, '510107064', '1669370159083', '1', null);
INSERT INTO `region` VALUES ('1048', '交子公园社区', 'JZGYSQ', '510107064014', '408', null, null, null, '510107064', '1669370159086', '1', null);
INSERT INTO `region` VALUES ('1049', '月牙湖社区', 'YYHSQ', '510107064015', '408', null, null, null, '510107064', '1669370159089', '1', null);
INSERT INTO `region` VALUES ('1050', '吉泰社区', 'JTSQ', '510107064016', '408', null, null, null, '510107064', '1669370159093', '1', null);
INSERT INTO `region` VALUES ('1051', '大源社区', 'DYSQ', '510107064017', '408', null, null, null, '510107064', '1669370159098', '1', null);
INSERT INTO `region` VALUES ('1052', '七里社区', 'QLSQ', '510107011005', '408', null, null, null, '510107011', '1669370159100', '1', null);
INSERT INTO `region` VALUES ('1053', '锦城社区', 'JCSQ', '510107011006', '408', null, null, null, '510107011', '1669370159103', '1', null);
INSERT INTO `region` VALUES ('1054', '新城社区', 'XCSQ', '510107011002', '408', null, null, null, '510107011', '1669370159106', '1', null);
INSERT INTO `region` VALUES ('1055', '龙井社区', 'LJSQ', '510107011003', '408', null, null, null, '510107011', '1669370159108', '1', null);
INSERT INTO `region` VALUES ('1056', '双凤社区', 'SFSQ', '510107011004', '408', null, null, null, '510107011', '1669370159111', '1', null);
INSERT INTO `region` VALUES ('1057', '金雁社区', 'JYSQ', '510107009001', '408', null, null, null, '510107009', '1669370159113', '1', null);
INSERT INTO `region` VALUES ('1058', '沙堰社区', 'SYSQ', '510107009002', '408', null, null, null, '510107009', '1669370159117', '1', null);
INSERT INTO `region` VALUES ('1059', '晋阳社区', 'JYSQ', '510107009003', '408', null, null, null, '510107009', '1669370159120', '1', null);
INSERT INTO `region` VALUES ('1060', '吉福社区', 'JFSQ', '510107009004', '408', null, null, null, '510107009', '1669370159123', '1', null);
INSERT INTO `region` VALUES ('1061', '晋吉社区', 'JJSQ', '510107009005', '408', null, null, null, '510107009', '1669370159126', '1', null);
INSERT INTO `region` VALUES ('1062', '万寿桥社区', 'WSQSQ', '510107012003', '408', null, null, null, '510107012', '1669370159129', '1', null);
INSERT INTO `region` VALUES ('1063', '半边街社区', 'BBJSQ', '510107012004', '408', null, null, null, '510107012', '1669370159132', '1', null);
INSERT INTO `region` VALUES ('1064', '潮音社区', 'CYSQ', '510107012005', '408', null, null, null, '510107012', '1669370159135', '1', null);
INSERT INTO `region` VALUES ('1065', '果堰社区', 'GYSQ', '510107012006', '408', null, null, null, '510107012', '1669370159140', '1', null);
INSERT INTO `region` VALUES ('1066', '机投社区', 'JTSQ', '510107012007', '408', null, null, null, '510107012', '1669370159144', '1', null);
INSERT INTO `region` VALUES ('1067', '白佛社区', 'BFSQ', '510107012008', '408', null, null, null, '510107012', '1669370159152', '1', null);
INSERT INTO `region` VALUES ('1068', '跳蹬河街道', 'TDHJD', '510108008', '407', null, null, null, '510108', '1669370159155', '1', null);
INSERT INTO `region` VALUES ('1069', '府青路街道', 'FQLJD', '510108006', '407', null, null, null, '510108', '1669370159158', '1', null);
INSERT INTO `region` VALUES ('1070', '保和街道', 'BHJD', '510108014', '407', null, null, null, '510108', '1669370159161', '1', null);
INSERT INTO `region` VALUES ('1071', '龙潭街道', 'LTJD', '510108016', '407', null, null, null, '510108', '1669370159169', '1', null);
INSERT INTO `region` VALUES ('1072', '万年场街道', 'WNCJD', '510108011', '407', null, null, null, '510108', '1669370159172', '1', null);
INSERT INTO `region` VALUES ('1073', '双水碾街道', 'SSNJD', '510108010', '407', null, null, null, '510108', '1669370159175', '1', null);
INSERT INTO `region` VALUES ('1074', '猛追湾街道', 'MZWJD', '510108002', '407', null, null, null, '510108', '1669370159179', '1', null);
INSERT INTO `region` VALUES ('1075', '白莲池街道', 'BLCJD', '510108017', '407', null, null, null, '510108', '1669370159183', '1', null);
INSERT INTO `region` VALUES ('1076', '双桥子街道', 'SQZJD', '510108004', '407', null, null, null, '510108', '1669370159186', '1', null);
INSERT INTO `region` VALUES ('1077', '二仙桥街道', 'EXQJD', '510108007', '407', null, null, null, '510108', '1669370159189', '1', null);
INSERT INTO `region` VALUES ('1078', '青龙街道', 'QLJD', '510108015', '407', null, null, null, '510108', '1669370159193', '1', null);
INSERT INTO `region` VALUES ('1079', '跳蹬村', 'TDC', '510108008200', '408', null, null, null, '510108008', '1669370159197', '1', null);
INSERT INTO `region` VALUES ('1080', '跳蹬河社区', 'TDHSQ', '510108008001', '408', null, null, null, '510108008', '1669370159202', '1', null);
INSERT INTO `region` VALUES ('1081', '杉板桥社区', 'SBQSQ', '510108008003', '408', null, null, null, '510108008', '1669370159206', '1', null);
INSERT INTO `region` VALUES ('1082', '锦绣社区', 'JXSQ', '510108008004', '408', null, null, null, '510108008', '1669370159209', '1', null);
INSERT INTO `region` VALUES ('1083', '建兴路社区', 'JXLSQ', '510108008005', '408', null, null, null, '510108008', '1669370159212', '1', null);
INSERT INTO `region` VALUES ('1084', '李家沱社区', 'LJTSQ', '510108006002', '408', null, null, null, '510108006', '1669370159215', '1', null);
INSERT INTO `region` VALUES ('1085', '八里庄社区', 'BLZSQ', '510108006004', '408', null, null, null, '510108006', '1669370159218', '1', null);
INSERT INTO `region` VALUES ('1086', '怡福社区', 'YFSQ', '510108006005', '408', null, null, null, '510108006', '1669370159220', '1', null);
INSERT INTO `region` VALUES ('1087', '文德社区', 'WDSQ', '510108006006', '408', null, null, null, '510108006', '1669370159223', '1', null);
INSERT INTO `region` VALUES ('1088', '桃源社区', 'TYSQ', '510108006007', '408', null, null, null, '510108006', '1669370159227', '1', null);
INSERT INTO `region` VALUES ('1089', '桃蹊社区', 'TXSQ', '510108006008', '408', null, null, null, '510108006', '1669370159231', '1', null);
INSERT INTO `region` VALUES ('1090', '斑竹社区', 'BZSQ', '510108014002', '408', null, null, null, '510108014', '1669370159233', '1', null);
INSERT INTO `region` VALUES ('1091', '天鹅社区', 'TESQ', '510108014004', '408', null, null, null, '510108014', '1669370159237', '1', null);
INSERT INTO `region` VALUES ('1092', '和顺社区', 'HSSQ', '510108014006', '408', null, null, null, '510108014', '1669370159239', '1', null);
INSERT INTO `region` VALUES ('1093', '杨柳社区', 'YLSQ', '510108014009', '408', null, null, null, '510108014', '1669370159242', '1', null);
INSERT INTO `region` VALUES ('1094', '迎晖社区', 'YHSQ', '510108014010', '408', null, null, null, '510108014', '1669370159245', '1', null);
INSERT INTO `region` VALUES ('1095', '胜利社区', 'SLSQ', '510108014011', '408', null, null, null, '510108014', '1669370159248', '1', null);
INSERT INTO `region` VALUES ('1096', '和美社区', 'HMSQ', '510108014012', '408', null, null, null, '510108014', '1669370159251', '1', null);
INSERT INTO `region` VALUES ('1097', '和欣社区', 'HXSQ', '510108014013', '408', null, null, null, '510108014', '1669370159254', '1', null);
INSERT INTO `region` VALUES ('1098', '正街社区', 'ZJSQ', '510108016001', '408', null, null, null, '510108016', '1669370159256', '1', null);
INSERT INTO `region` VALUES ('1099', '隆兴路社区', 'LXLSQ', '510108016002', '408', null, null, null, '510108016', '1669370159259', '1', null);
INSERT INTO `region` VALUES ('1100', '向龙社区', 'XLSQ', '510108016003', '408', null, null, null, '510108016', '1669370159261', '1', null);
INSERT INTO `region` VALUES ('1101', '丛树社区', 'CSSQ', '510108016006', '408', null, null, null, '510108016', '1669370159264', '1', null);
INSERT INTO `region` VALUES ('1102', '威灵社区', 'WLSQ', '510108016007', '408', null, null, null, '510108016', '1669370159266', '1', null);
INSERT INTO `region` VALUES ('1103', '同仁社区', 'TRSQ', '510108016008', '408', null, null, null, '510108016', '1669370159269', '1', null);
INSERT INTO `region` VALUES ('1104', '桂林社区', 'GLSQ', '510108016009', '408', null, null, null, '510108016', '1669370159273', '1', null);
INSERT INTO `region` VALUES ('1105', '同乐社区', 'TLSQ', '510108016010', '408', null, null, null, '510108016', '1669370159276', '1', null);
INSERT INTO `region` VALUES ('1106', '和成社区', 'HCSQ', '510108016012', '408', null, null, null, '510108016', '1669370159279', '1', null);
INSERT INTO `region` VALUES ('1107', '院山社区', 'YSSQ', '510108016014', '408', null, null, null, '510108016', '1669370159284', '1', null);
INSERT INTO `region` VALUES ('1108', '高洪社区', 'GHSQ', '510108016016', '408', null, null, null, '510108016', '1669370159287', '1', null);
INSERT INTO `region` VALUES ('1109', '华泰社区', 'HTSQ', '510108016021', '408', null, null, null, '510108016', '1669370159297', '1', null);
INSERT INTO `region` VALUES ('1110', '华冠社区', 'HGSQ', '510108016022', '408', null, null, null, '510108016', '1669370159300', '1', null);
INSERT INTO `region` VALUES ('1111', '龙瑞社区', 'LRSQ', '510108016023', '408', null, null, null, '510108016', '1669370159304', '1', null);
INSERT INTO `region` VALUES ('1112', '龙驰社区', 'LCSQ', '510108016024', '408', null, null, null, '510108016', '1669370159306', '1', null);
INSERT INTO `region` VALUES ('1113', '龙祥社区', 'LXSQ', '510108016025', '408', null, null, null, '510108016', '1669370159309', '1', null);
INSERT INTO `region` VALUES ('1114', '槐树店社区', 'HSDSQ', '510108011005', '408', null, null, null, '510108011', '1669370159312', '1', null);
INSERT INTO `region` VALUES ('1115', '联合社区', 'LHSQ', '510108011006', '408', null, null, null, '510108011', '1669370159316', '1', null);
INSERT INTO `region` VALUES ('1116', '长天路社区', 'ZTLSQ', '510108011007', '408', null, null, null, '510108011', '1669370159319', '1', null);
INSERT INTO `region` VALUES ('1117', '红桥社区', 'HQSQ', '510108011008', '408', null, null, null, '510108011', '1669370159326', '1', null);
INSERT INTO `region` VALUES ('1118', '双福路社区', 'SFLSQ', '510108011009', '408', null, null, null, '510108011', '1669370159328', '1', null);
INSERT INTO `region` VALUES ('1119', '花径路社区', 'HJLSQ', '510108010003', '408', null, null, null, '510108010', '1669370159331', '1', null);
INSERT INTO `region` VALUES ('1120', '荆竹社区', 'JZSQ', '510108010005', '408', null, null, null, '510108010', '1669370159333', '1', null);
INSERT INTO `region` VALUES ('1121', '横桥社区', 'HQSQ', '510108010006', '408', null, null, null, '510108010', '1669370159336', '1', null);
INSERT INTO `region` VALUES ('1122', '升仙湖社区', 'SXHSQ', '510108010008', '408', null, null, null, '510108010', '1669370159338', '1', null);
INSERT INTO `region` VALUES ('1123', '双水碾村', 'SSNC', '510108010200', '408', null, null, null, '510108010', '1669370159340', '1', null);
INSERT INTO `region` VALUES ('1124', '站北路社区', 'ZBLSQ', '510108010001', '408', null, null, null, '510108010', '1669370159342', '1', null);
INSERT INTO `region` VALUES ('1125', '培华路社区', 'PHLSQ', '510108002009', '408', null, null, null, '510108002', '1669370159345', '1', null);
INSERT INTO `region` VALUES ('1126', '建设中路社区', 'JSZLSQ', '510108002010', '408', null, null, null, '510108002', '1669370159348', '1', null);
INSERT INTO `region` VALUES ('1127', '建华社区', 'JHSQ', '510108002002', '408', null, null, null, '510108002', '1669370159351', '1', null);
INSERT INTO `region` VALUES ('1128', '石油社区', 'SYSQ', '510108002003', '408', null, null, null, '510108002', '1669370159354', '1', null);
INSERT INTO `region` VALUES ('1129', '望平社区', 'WPSQ', '510108002005', '408', null, null, null, '510108002', '1669370159358', '1', null);
INSERT INTO `region` VALUES ('1130', '祥和里社区', 'XHLSQ', '510108002006', '408', null, null, null, '510108002', '1669370159361', '1', null);
INSERT INTO `region` VALUES ('1131', '踏水社区', 'TSSQ', '510108002008', '408', null, null, null, '510108002', '1669370159364', '1', null);
INSERT INTO `region` VALUES ('1132', '白莲池社区', 'BLCSQ', '510108017005', '408', null, null, null, '510108017', '1669370159367', '1', null);
INSERT INTO `region` VALUES ('1133', '一里塘社区', 'YLTSQ', '510108017006', '408', null, null, null, '510108017', '1669370159369', '1', null);
INSERT INTO `region` VALUES ('1134', '狮子社区', 'SZSQ', '510108017008', '408', null, null, null, '510108017', '1669370159372', '1', null);
INSERT INTO `region` VALUES ('1135', '石岭社区', 'SLSQ', '510108017009', '408', null, null, null, '510108017', '1669370159375', '1', null);
INSERT INTO `region` VALUES ('1136', '将军碑社区', 'JJBSQ', '510108017015', '408', null, null, null, '510108017', '1669370159377', '1', null);
INSERT INTO `region` VALUES ('1137', '双林社区', 'SLSQ', '510108004003', '408', null, null, null, '510108004', '1669370159380', '1', null);
INSERT INTO `region` VALUES ('1138', '双桥路北社区', 'SQLBSQ', '510108004004', '408', null, null, null, '510108004', '1669370159382', '1', null);
INSERT INTO `region` VALUES ('1139', '水碾河路北社区', 'SNHLBSQ', '510108004005', '408', null, null, null, '510108004', '1669370159387', '1', null);
INSERT INTO `region` VALUES ('1140', '新鸿社区', 'XHSQ', '510108004006', '408', null, null, null, '510108004', '1669370159393', '1', null);
INSERT INTO `region` VALUES ('1141', '新华社区', 'XHSQ', '510108004007', '408', null, null, null, '510108004', '1669370159397', '1', null);
INSERT INTO `region` VALUES ('1142', '菽香里社区', 'SXLSQ', '510108004008', '408', null, null, null, '510108004', '1669370159402', '1', null);
INSERT INTO `region` VALUES ('1143', '万晟社区', 'WSSQ', '510108004009', '408', null, null, null, '510108004', '1669370159414', '1', null);
INSERT INTO `region` VALUES ('1144', '三街坊社区', 'SJFSQ', '510108004010', '408', null, null, null, '510108004', '1669370159417', '1', null);
INSERT INTO `region` VALUES ('1145', '仙韵社区', 'XYSQ', '510108007001', '408', null, null, null, '510108007', '1669370159420', '1', null);
INSERT INTO `region` VALUES ('1146', '东路社区', 'DLSQ', '510108007002', '408', null, null, null, '510108007', '1669370159425', '1', null);
INSERT INTO `region` VALUES ('1147', '下涧槽社区', 'XJCSQ', '510108007003', '408', null, null, null, '510108007', '1669370159433', '1', null);
INSERT INTO `region` VALUES ('1148', '东华社区', 'DHSQ', '510108007005', '408', null, null, null, '510108007', '1669370159436', '1', null);
INSERT INTO `region` VALUES ('1149', '长林盘社区', 'ZLPSQ', '510108007006', '408', null, null, null, '510108007', '1669370159439', '1', null);
INSERT INTO `region` VALUES ('1150', '人民塘社区', 'RMTSQ', '510108007007', '408', null, null, null, '510108007', '1669370159442', '1', null);
INSERT INTO `region` VALUES ('1151', '圣灯社区', 'SDSQ', '510108007009', '408', null, null, null, '510108007', '1669370159446', '1', null);
INSERT INTO `region` VALUES ('1152', '华林社区', 'HLSQ', '510108007012', '408', null, null, null, '510108007', '1669370159451', '1', null);
INSERT INTO `region` VALUES ('1153', '枫景社区', 'FJSQ', '510108007013', '408', null, null, null, '510108007', '1669370159454', '1', null);
INSERT INTO `region` VALUES ('1154', '西林社区', 'XLSQ', '510108015001', '408', null, null, null, '510108015', '1669370159462', '1', null);
INSERT INTO `region` VALUES ('1155', '东林社区', 'DLSQ', '510108015002', '408', null, null, null, '510108015', '1669370159465', '1', null);
INSERT INTO `region` VALUES ('1156', '海滨湾社区', 'HBWSQ', '510108015003', '408', null, null, null, '510108015', '1669370159469', '1', null);
INSERT INTO `region` VALUES ('1157', '新山社区', 'XSSQ', '510108015004', '408', null, null, null, '510108015', '1669370159474', '1', null);
INSERT INTO `region` VALUES ('1158', '昭青路社区', 'ZQLSQ', '510108015011', '408', null, null, null, '510108015', '1669370159479', '1', null);
INSERT INTO `region` VALUES ('1159', '仁义路社区', 'RYLSQ', '510108015012', '408', null, null, null, '510108015', '1669370159482', '1', null);
INSERT INTO `region` VALUES ('1160', '昭觉社区', 'ZJSQ', '510108015016', '408', null, null, null, '510108015', '1669370159485', '1', null);
INSERT INTO `region` VALUES ('1161', '致强社区', 'ZQSQ', '510108015017', '408', null, null, null, '510108015', '1669370159502', '1', null);
INSERT INTO `region` VALUES ('1162', '山泉镇', 'SQZ', '510112115', '407', null, null, null, '510112', '1669370159507', '1', null);
INSERT INTO `region` VALUES ('1163', '洪安镇', 'HAZ', '510112108', '407', null, null, null, '510112', '1669370159509', '1', null);
INSERT INTO `region` VALUES ('1164', '十陵街道', 'SLJD', '510112003', '407', null, null, null, '510112', '1669370159512', '1', null);
INSERT INTO `region` VALUES ('1165', '东安街道', 'DAJD', '510112007', '407', null, null, null, '510112', '1669370159515', '1', null);
INSERT INTO `region` VALUES ('1166', '同安街道', 'TAJD', '510112004', '407', null, null, null, '510112', '1669370159517', '1', null);
INSERT INTO `region` VALUES ('1167', '龙泉街道', 'LQJD', '510112001', '407', null, null, null, '510112', '1669370159520', '1', null);
INSERT INTO `region` VALUES ('1168', '西河街道', 'XHJD', '510112005', '407', null, null, null, '510112', '1669370159523', '1', null);
INSERT INTO `region` VALUES ('1169', '柏合街道', 'BHJD', '510112006', '407', null, null, null, '510112', '1669370159525', '1', null);
INSERT INTO `region` VALUES ('1170', '大面街道', 'DMJD', '510112002', '407', null, null, null, '510112', '1669370159527', '1', null);
INSERT INTO `region` VALUES ('1171', '洛带镇', 'LDZ', '510112102', '407', null, null, null, '510112', '1669370159530', '1', null);
INSERT INTO `region` VALUES ('1172', '大佛社区', 'DFSQ', '510112115002', '408', null, null, null, '510112115', '1669370159532', '1', null);
INSERT INTO `region` VALUES ('1173', '古驿社区', 'GYSQ', '510112115003', '408', null, null, null, '510112115', '1669370159535', '1', null);
INSERT INTO `region` VALUES ('1174', '万兴社区', 'WXSQ', '510112115004', '408', null, null, null, '510112115', '1669370159537', '1', null);
INSERT INTO `region` VALUES ('1175', '花果村', 'HGC', '510112115200', '408', null, null, null, '510112115', '1669370159540', '1', null);
INSERT INTO `region` VALUES ('1176', '桃源村', 'TYC', '510112115202', '408', null, null, null, '510112115', '1669370159542', '1', null);
INSERT INTO `region` VALUES ('1177', '美满村', 'MMC', '510112115203', '408', null, null, null, '510112115', '1669370159545', '1', null);
INSERT INTO `region` VALUES ('1178', '红花村', 'HHC', '510112115205', '408', null, null, null, '510112115', '1669370159547', '1', null);
INSERT INTO `region` VALUES ('1179', '长丰村', 'ZFC', '510112115206', '408', null, null, null, '510112115', '1669370159549', '1', null);
INSERT INTO `region` VALUES ('1180', '龙泉湖村', 'LQHC', '510112115207', '408', null, null, null, '510112115', '1669370159552', '1', null);
INSERT INTO `region` VALUES ('1181', '大同村', 'DTC', '510112108205', '408', null, null, null, '510112108\r\n', '1669370159555', '1', null);
INSERT INTO `region` VALUES ('1182', '人和社区', 'RHSQ', '510112108003', '408', null, null, null, '510112108\r\n', '1669370159558', '1', null);
INSERT INTO `region` VALUES ('1183', '文安社区', 'WASQ', '510112108004', '408', null, null, null, '510112108\r\n', '1669370159560', '1', null);
INSERT INTO `region` VALUES ('1184', '红光村', 'HGC', '510112108201', '408', null, null, null, '510112108\r\n', '1669370159562', '1', null);
INSERT INTO `region` VALUES ('1185', '土门村', 'TMC', '510112108202', '408', null, null, null, '510112108\r\n', '1669370159566', '1', null);
INSERT INTO `region` VALUES ('1186', '永丰村', 'YFC', '510112108203', '408', null, null, null, '510112108\r\n', '1669370159568', '1', null);
INSERT INTO `region` VALUES ('1187', '长伍村', 'ZWC', '510112108206', '408', null, null, null, '510112108\r\n', '1669370159571', '1', null);
INSERT INTO `region` VALUES ('1188', '洪福村', 'HFC', '510112108207', '408', null, null, null, '510112108\r\n', '1669370159573', '1', null);
INSERT INTO `region` VALUES ('1189', '三村村', 'SCC', '510112108204', '408', null, null, null, '510112108\r\n', '1669370159576', '1', null);
INSERT INTO `region` VALUES ('1190', '石灵社区', 'SLSQ', '510112003002', '408', null, null, null, '510112003\r\n', '1669370159578', '1', null);
INSERT INTO `region` VALUES ('1191', '天兴社区', 'TXSQ', '510112003003', '408', null, null, null, '510112003\r\n', '1669370159582', '1', null);
INSERT INTO `region` VALUES ('1192', '和平社区', 'HPSQ', '510112003004', '408', null, null, null, '510112003\r\n', '1669370159585', '1', null);
INSERT INTO `region` VALUES ('1193', '华川社区', 'HCSQ', '510112003005', '408', null, null, null, '510112003\r\n', '1669370159588', '1', null);
INSERT INTO `region` VALUES ('1194', '江华社区', 'JHSQ', '510112003006', '408', null, null, null, '510112003\r\n', '1669370159592', '1', null);
INSERT INTO `region` VALUES ('1195', '宁江社区', 'NJSQ', '510112003007', '408', null, null, null, '510112003\r\n', '1669370159610', '1', null);
INSERT INTO `region` VALUES ('1196', '友谊社区', 'YYSQ', '510112003008', '408', null, null, null, '510112003\r\n', '1669370159617', '1', null);
INSERT INTO `region` VALUES ('1197', '千弓社区', 'QGSQ', '510112003009', '408', null, null, null, '510112003\r\n', '1669370159625', '1', null);
INSERT INTO `region` VALUES ('1198', '青龙社区', 'QLSQ', '510112003010', '408', null, null, null, '510112003\r\n', '1669370159631', '1', null);
INSERT INTO `region` VALUES ('1199', '大草坪社区', 'DCPSQ', '510112003011', '408', null, null, null, '510112003\r\n', '1669370159634', '1', null);
INSERT INTO `region` VALUES ('1200', '大梁村', 'DLC', '510112003201', '408', null, null, null, '510112003\r\n', '1669370159637', '1', null);
INSERT INTO `region` VALUES ('1201', '来龙村', 'LLC', '510112003204', '408', null, null, null, '510112003\r\n', '1669370159643', '1', null);
INSERT INTO `region` VALUES ('1202', '红咏社区', 'HYSQ', '510112007001', '408', null, null, null, '510112007\r\n', '1669370159647', '1', null);
INSERT INTO `region` VALUES ('1203', '聚和社区', 'JHSQ', '510112007002', '408', null, null, null, '510112007\r\n', '1669370159650', '1', null);
INSERT INTO `region` VALUES ('1204', '书房社区', 'SFSQ', '510112007003', '408', null, null, null, '510112007\r\n', '1669370159653', '1', null);
INSERT INTO `region` VALUES ('1205', '顶佛寺村', 'DFSC', '510112007201', '408', null, null, null, '510112007\r\n', '1669370159656', '1', null);
INSERT INTO `region` VALUES ('1206', '平安村', 'PAC', '510112007202', '408', null, null, null, '510112007\r\n', '1669370159663', '1', null);
INSERT INTO `region` VALUES ('1207', '蒲草村', 'PCC', '510112007203', '408', null, null, null, '510112007\r\n', '1669370159665', '1', null);
INSERT INTO `region` VALUES ('1208', '洪河村', 'HHC', '510112007204', '408', null, null, null, '510112007\r\n', '1669370159668', '1', null);
INSERT INTO `region` VALUES ('1209', '圣南社区', 'SNSQ', '510112004001', '408', null, null, null, '510112004', '1669370159671', '1', null);
INSERT INTO `region` VALUES ('1210', '福圣社区', 'FSSQ', '510112004002', '408', null, null, null, '510112004', '1669370159674', '1', null);
INSERT INTO `region` VALUES ('1211', '同福社区', 'TFSQ', '510112004003', '408', null, null, null, '510112004', '1669370159677', '1', null);
INSERT INTO `region` VALUES ('1212', '丽阳社区', 'LYSQ', '510112004004', '408', null, null, null, '510112004', '1669370159681', '1', null);
INSERT INTO `region` VALUES ('1213', '阳坪社区', 'YPSQ', '510112004005', '408', null, null, null, '510112004', '1669370159684', '1', null);
INSERT INTO `region` VALUES ('1214', '阳光村', 'YGC', '510112004201', '408', null, null, null, '510112004', '1669370159687', '1', null);
INSERT INTO `region` VALUES ('1215', '红旗村', 'HQC', '510112004206', '408', null, null, null, '510112004', '1669370159689', '1', null);
INSERT INTO `region` VALUES ('1216', '同兴村', 'TXC', '510112004207', '408', null, null, null, '510112004', '1669370159693', '1', null);
INSERT INTO `region` VALUES ('1217', '百工堰社区', 'BGYSQ', '510112001018', '408', null, null, null, '510112001', '1669370159696', '1', null);
INSERT INTO `region` VALUES ('1218', '怡新社区', 'YXSQ', '510112001019', '408', null, null, null, '510112001', '1669370159699', '1', null);
INSERT INTO `region` VALUES ('1219', '利民社区', 'LMSQ', '510112001020', '408', null, null, null, '510112001', '1669370159702', '1', null);
INSERT INTO `region` VALUES ('1220', '崇德社区', 'CDSQ', '510112001021', '408', null, null, null, '510112001', '1669370159704', '1', null);
INSERT INTO `region` VALUES ('1221', '北泉路社区', 'BQLSQ', '510112001022', '408', null, null, null, '510112001', '1669370159707', '1', null);
INSERT INTO `region` VALUES ('1222', '书南社区', 'SNSQ', '510112001023', '408', null, null, null, '510112001', '1669370159709', '1', null);
INSERT INTO `region` VALUES ('1223', '界牌社区', 'JPSQ', '510112001024', '408', null, null, null, '510112001', '1669370159712', '1', null);
INSERT INTO `region` VALUES ('1224', '龙平社区', 'LPSQ', '510112001026', '408', null, null, null, '510112001', '1669370159714', '1', null);
INSERT INTO `region` VALUES ('1225', '保安社区', 'BASQ', '510112001027', '408', null, null, null, '510112001', '1669370159717', '1', null);
INSERT INTO `region` VALUES ('1226', '保平社区', 'BPSQ', '510112001028', '408', null, null, null, '510112001', '1669370159734', '1', null);
INSERT INTO `region` VALUES ('1227', '魏家街社区', 'WJJSQ', '510112001029', '408', null, null, null, '510112001', '1669370159737', '1', null);
INSERT INTO `region` VALUES ('1228', '滨河花园社区', 'BHHYSQ', '510112001001', '408', null, null, null, '510112001', '1669370159750', '1', null);
INSERT INTO `region` VALUES ('1229', '长柏路社区', 'ZBLSQ', '510112001002', '408', null, null, null, '510112001', '1669370159751', '1', null);
INSERT INTO `region` VALUES ('1230', '广场社区', 'GCSQ', '510112001003', '408', null, null, null, '510112001', '1669370159754', '1', null);
INSERT INTO `region` VALUES ('1231', '商业街社区', 'SYJSQ', '510112001004', '408', null, null, null, '510112001', '1669370159757', '1', null);
INSERT INTO `region` VALUES ('1232', '驿都路社区', 'YDLSQ', '510112001005', '408', null, null, null, '510112001', '1669370159759', '1', null);
INSERT INTO `region` VALUES ('1233', '明江路社区', 'MJLSQ', '510112001006', '408', null, null, null, '510112001', '1669370159761', '1', null);
INSERT INTO `region` VALUES ('1234', '平江路社区', 'PJLSQ', '510112001007', '408', null, null, null, '510112001', '1669370159765', '1', null);
INSERT INTO `region` VALUES ('1235', '万源路社区', 'WYLSQ', '510112001008', '408', null, null, null, '510112001', '1669370159768', '1', null);
INSERT INTO `region` VALUES ('1236', '驿河社区', 'YHSQ', '510112001009', '408', null, null, null, '510112001', '1669370159770', '1', null);
INSERT INTO `region` VALUES ('1237', '芦溪河社区', 'LXHSQ', '510112001013', '408', null, null, null, '510112001', '1669370159773', '1', null);
INSERT INTO `region` VALUES ('1238', '接龙社区', 'JLSQ', '510112001014', '408', null, null, null, '510112001', '1669370159775', '1', null);
INSERT INTO `region` VALUES ('1239', '龙都社区', 'LDSQ', '510112001015', '408', null, null, null, '510112001', '1669370159779', '1', null);
INSERT INTO `region` VALUES ('1240', '公园路社区', 'GYLSQ', '510112001016', '408', null, null, null, '510112001', '1669370159782', '1', null);
INSERT INTO `region` VALUES ('1241', '星光社区', 'XGSQ', '510112001017', '408', null, null, null, '510112001', '1669370159788', '1', null);
INSERT INTO `region` VALUES ('1242', '永兴街社区', 'YXJSQ', '510112001030', '408', null, null, null, '510112001', '1669370159792', '1', null);
INSERT INTO `region` VALUES ('1243', '合龙社区', 'HLSQ', '510112001031', '408', null, null, null, '510112001', '1669370159799', '1', null);
INSERT INTO `region` VALUES ('1244', '东大路社区', 'DDLSQ', '510112001032', '408', null, null, null, '510112001', '1669370159804', '1', null);
INSERT INTO `region` VALUES ('1245', '滨西社区', 'BXSQ', '510112005002', '408', null, null, null, '510112005\r\n', '1669370159809', '1', null);
INSERT INTO `region` VALUES ('1246', '上游社区', 'SYSQ', '510112005003', '408', null, null, null, '510112005\r\n', '1669370159824', '1', null);
INSERT INTO `region` VALUES ('1247', '跃进社区', 'YJSQ', '510112005004', '408', null, null, null, '510112005\r\n', '1669370159828', '1', null);
INSERT INTO `region` VALUES ('1248', '金壁社区', 'JBSQ', '510112005005', '408', null, null, null, '510112005\r\n', '1669370159831', '1', null);
INSERT INTO `region` VALUES ('1249', '千禧社区', 'QXSQ', '510112005006', '408', null, null, null, '510112005\r\n', '1669370159836', '1', null);
INSERT INTO `region` VALUES ('1250', '吉福社区', 'JFSQ', '510112005007', '408', null, null, null, '510112005\r\n', '1669370159841', '1', null);
INSERT INTO `region` VALUES ('1251', '积善社区', 'JSSQ', '510112005008', '408', null, null, null, '510112005\r\n', '1669370159845', '1', null);
INSERT INTO `region` VALUES ('1252', '阙家社区', 'QJSQ', '510112005009', '408', null, null, null, '510112005\r\n', '1669370159852', '1', null);
INSERT INTO `region` VALUES ('1253', '黄连村', 'HLC', '510112005200', '408', null, null, null, '510112005\r\n', '1669370159863', '1', null);
INSERT INTO `region` VALUES ('1254', '两河村', 'LHC', '510112005201', '408', null, null, null, '510112005\r\n', '1669370159871', '1', null);
INSERT INTO `region` VALUES ('1255', '龙井村', 'LJC', '510112005202', '408', null, null, null, '510112005\r\n', '1669370159875', '1', null);
INSERT INTO `region` VALUES ('1256', '鹿角社区', 'LJSQ', '510112005001', '408', null, null, null, '510112005\r\n', '1669370159878', '1', null);
INSERT INTO `region` VALUES ('1257', '卫星村', 'WXC', '510112005203', '408', null, null, null, '510112005\r\n', '1669370159881', '1', null);
INSERT INTO `region` VALUES ('1258', '大龙村', 'DLC', '510112005204', '408', null, null, null, '510112005\r\n', '1669370159883', '1', null);
INSERT INTO `region` VALUES ('1259', '天平村', 'TPC', '510112005205', '408', null, null, null, '510112005\r\n', '1669370159887', '1', null);
INSERT INTO `region` VALUES ('1260', '长松村', 'ZSC', '510112006204', '408', null, null, null, '510112006\r\n', '1669370159889', '1', null);
INSERT INTO `region` VALUES ('1261', '东华村', 'DHC', '510112006205', '408', null, null, null, '510112006\r\n', '1669370159893', '1', null);
INSERT INTO `region` VALUES ('1262', '东篱村', 'DLC', '510112006206', '408', null, null, null, '510112006\r\n', '1669370159898', '1', null);
INSERT INTO `region` VALUES ('1263', '南山村', 'NSC', '510112006207', '408', null, null, null, '510112006\r\n', '1669370159900', '1', null);
INSERT INTO `region` VALUES ('1264', '梨花街社区', 'LHJSQ', '510112006001', '408', null, null, null, '510112006\r\n', '1669370159903', '1', null);
INSERT INTO `region` VALUES ('1265', '东山社区', 'DSSQ', '510112006002', '408', null, null, null, '510112006\r\n', '1669370159906', '1', null);
INSERT INTO `region` VALUES ('1266', '长远社区', 'ZYSQ', '510112006003', '408', null, null, null, '510112006\r\n', '1669370159908', '1', null);
INSERT INTO `region` VALUES ('1267', '黎明社区', 'LMSQ', '510112006004', '408', null, null, null, '510112006\r\n', '1669370159911', '1', null);
INSERT INTO `region` VALUES ('1268', '二河村', 'EHC', '510112006200', '408', null, null, null, '510112006\r\n', '1669370159913', '1', null);
INSERT INTO `region` VALUES ('1269', '马坝村', 'MBC', '510112006201', '408', null, null, null, '510112006\r\n', '1669370159916', '1', null);
INSERT INTO `region` VALUES ('1270', '双碑村', 'SBC', '510112006202', '408', null, null, null, '510112006\r\n', '1669370159920', '1', null);
INSERT INTO `region` VALUES ('1271', '宝狮村', 'BSC', '510112006203', '408', null, null, null, '510112006\r\n', '1669370159924', '1', null);
INSERT INTO `region` VALUES ('1272', '民乐社区', 'MLSQ', '510112002002', '408', null, null, null, '510112002\r\n', '1669370159929', '1', null);
INSERT INTO `region` VALUES ('1273', '东洪社区', 'DHSQ', '510112002003', '408', null, null, null, '510112002\r\n', '1669370159931', '1', null);
INSERT INTO `region` VALUES ('1274', '天鹅湖社区', 'TEHSQ', '510112002015', '408', null, null, null, '510112002\r\n', '1669370159935', '1', null);
INSERT INTO `region` VALUES ('1275', '卧龙社区', 'WLSQ', '510112002016', '408', null, null, null, '510112002\r\n', '1669370159937', '1', null);
INSERT INTO `region` VALUES ('1276', '分水社区', 'FSSQ', '510112002017', '408', null, null, null, '510112002\r\n', '1669370159942', '1', null);
INSERT INTO `region` VALUES ('1277', '洪柳社区', 'HLSQ', '510112002004', '408', null, null, null, '510112002\r\n', '1669370159949', '1', null);
INSERT INTO `region` VALUES ('1278', '玉石社区', 'YSSQ', '510112002005', '408', null, null, null, '510112002\r\n', '1669370159953', '1', null);
INSERT INTO `region` VALUES ('1279', '陵川社区', 'LCSQ', '510112002006', '408', null, null, null, '510112002\r\n', '1669370159956', '1', null);
INSERT INTO `region` VALUES ('1280', '龙华社区', 'LHSQ', '510112002007', '408', null, null, null, '510112002\r\n', '1669370159959', '1', null);
INSERT INTO `region` VALUES ('1281', '好日子社区', 'HRZSQ', '510112002008', '408', null, null, null, '510112002\r\n', '1669370159963', '1', null);
INSERT INTO `region` VALUES ('1282', '师大社区', 'SDSQ', '510112002009', '408', null, null, null, '510112002\r\n', '1669370159968', '1', null);
INSERT INTO `region` VALUES ('1283', '龙安社区', 'LASQ', '510112002010', '408', null, null, null, '510112002\r\n', '1669370159971', '1', null);
INSERT INTO `region` VALUES ('1284', '五星社区', 'WXSQ', '510112002011', '408', null, null, null, '510112002\r\n', '1669370159974', '1', null);
INSERT INTO `region` VALUES ('1285', '悦龙社区', 'YLSQ', '510112002012', '408', null, null, null, '510112002\r\n', '1669370159976', '1', null);
INSERT INTO `region` VALUES ('1286', '青台山社区', 'QTSSQ', '510112002013', '408', null, null, null, '510112002\r\n', '1669370159979', '1', null);
INSERT INTO `region` VALUES ('1287', '瑞龙社区', 'RLSQ', '510112002014', '408', null, null, null, '510112002\r\n', '1669370159981', '1', null);
INSERT INTO `region` VALUES ('1288', '八角井社区', 'BJJSQ', '510112102001', '408', null, null, null, '510112102\r\n', '1669370159989', '1', null);
INSERT INTO `region` VALUES ('1289', '老街社区', 'LJSQ', '510112102002', '408', null, null, null, '510112102\r\n', '1669370159991', '1', null);
INSERT INTO `region` VALUES ('1290', '长安街社区', 'ZAJSQ', '510112102003', '408', null, null, null, '510112102\r\n', '1669370159994', '1', null);
INSERT INTO `region` VALUES ('1291', '柏杨村', 'BYC', '510112102201', '408', null, null, null, '510112102\r\n', '1669370159996', '1', null);
INSERT INTO `region` VALUES ('1292', '岐山村', 'QSC', '510112102203', '408', null, null, null, '510112102\r\n', '1669370159998', '1', null);
INSERT INTO `region` VALUES ('1293', '宝胜村', 'BSC', '510112102204', '408', null, null, null, '510112102\r\n', '1669370160000', '1', null);
INSERT INTO `region` VALUES ('1294', '松桥村', 'SQC', '510112102207', '408', null, null, null, '510112102\r\n', '1669370160002', '1', null);
INSERT INTO `region` VALUES ('1295', '区智慧治理中心', 'QZHZLZX', '510113218', '410', '香岛大道', '104.26377810166935', '30.884188152065377', '510113', '1670982132925', '2', null);
INSERT INTO `region` VALUES ('1296', '区政府办', 'QZFB', '510113202', '410', null, '104.258015', '30.884763', '510113', '1670982132946', '2', null);
INSERT INTO `region` VALUES ('1297', '区民宗局', 'QMZJ', '510113203', '410', null, '104.3056419484343', '30.84680907580743', '510113', '1670982132950', '2', null);
INSERT INTO `region` VALUES ('1298', '区卫健局', 'QWJJ', '510113204', '410', null, '104.286009', '30.897945', '510113', '1670982132958', '2', null);
INSERT INTO `region` VALUES ('1299', '区教育局', 'QJYJ', '510113205', '410', null, '104.28590345426865', '30.897917252959402', '510113', '1670982133003', '2', null);
INSERT INTO `region` VALUES ('1300', '区文体旅游局', 'QWTLYJ', '510113206', '410', null, '104.28590345426865', '30.897917252959402', '510113', '1670982133009', '2', null);
INSERT INTO `region` VALUES ('1301', '区民政局', 'QMZJ', '510113207', '410', null, '104.28590345426865', '30.897917252959402', '510113', '1670982133014', '2', null);
INSERT INTO `region` VALUES ('1302', '区委宣传部', 'QWXCB', '510113208', '410', null, '104.257721', '30.884655', '510113', '1670982133019', '2', null);
INSERT INTO `region` VALUES ('1303', '区委社治委', 'QWSZW', '510113209', '410', null, '104.257919', '30.884645', '510113', '1670982133026', '2', null);
INSERT INTO `region` VALUES ('1304', '区经科信局', 'QJKXJ', '510113210', '410', null, '104.286087', '30.897876', '510113', '1670982133032', '2', null);
INSERT INTO `region` VALUES ('1305', '区疾控中心', 'QJKZX', '510113211', '410', null, '104.25943', '30.883037', '510113', '1670982133038', '2', null);
INSERT INTO `region` VALUES ('1306', '区住建局', 'QZJJ', '510113212', '410', null, '104.265007', '30.903573', '510113', '1670982133042', '2', null);
INSERT INTO `region` VALUES ('1307', '区综合执法局', 'QZHZFJ', '510113213', '410', null, '104.231221', '30.902376', '510113', '1670982133046', '2', null);
INSERT INTO `region` VALUES ('1308', '区房产保障中心', 'QFCBZZX', '510113214', '410', null, '104.261227', '30.890253', '510113', '1670982133050', '2', null);
INSERT INTO `region` VALUES ('1309', '区商务局', 'QSWJ', '510113215', '410', null, '104.28590345426865', '30.897917252959402', '510113', '1670982133055', '2', null);
INSERT INTO `region` VALUES ('1310', '区市场监管局', 'QSCJGJ', '510113216', '410', null, '104.263697', '30.886637', '510113', '1670982133059', '2', null);
INSERT INTO `region` VALUES ('1311', '区国贸和物流局', 'QGMHWLJ', '510113217', '410', null, '104.322467', '30.847954', '510113', '1670982133064', '2', null);
INSERT INTO `region` VALUES ('1317', '区交通局', 'QJTJ', '510113201', '410', '', '104.270534', '30.889577', '510113', '1670982133064', '2', null);
INSERT INTO `region` VALUES ('1318', '区应急管理局', 'QYJGLJ', '510113219', '410', '政府中路', '104.25987206224015', '30.885574714404903', '510113', '1670982133064', '2', null);
INSERT INTO `region` VALUES ('1319', '宝汇', 'BH', '510113219001', '410', null, '104.258565', '30.8484', '510113219', '1670982133064', '2', null);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `role_key` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `order_num` int DEFAULT NULL,
  `use_type` bigint DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `del_flag` tinyint DEFAULT NULL,
  `create_time` bigint DEFAULT NULL,
  `park_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1740301348876140545 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1501859873070829561', '超级管理员', 'SuperAdmin', '1', '17', '1', '0', null, null);
INSERT INTO `role` VALUES ('1503682070533906432', '用户', 'Normal', '3', '17', '1', '0', '1703645336613', null);
INSERT INTO `role` VALUES ('1740301348876140544', '宏源管理员', 'Admin', '2', '17', '1', '0', '1703755148535', null);

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `role_id` bigint DEFAULT NULL,
  `permission_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6292 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES ('4046', '1501859873070829561', '1');
INSERT INTO `role_permission` VALUES ('4051', '1501859873070829561', '3679');
INSERT INTO `role_permission` VALUES ('4052', '1501859873070829561', '3708');
INSERT INTO `role_permission` VALUES ('4053', '1501859873070829561', '3709');
INSERT INTO `role_permission` VALUES ('4054', '1501859873070829561', '3710');
INSERT INTO `role_permission` VALUES ('4055', '1501859873070829561', '3711');
INSERT INTO `role_permission` VALUES ('4056', '1501859873070829561', '101');
INSERT INTO `role_permission` VALUES ('4057', '1501859873070829561', '3713');
INSERT INTO `role_permission` VALUES ('4058', '1501859873070829561', '1001');
INSERT INTO `role_permission` VALUES ('4059', '1501859873070829561', '1002');
INSERT INTO `role_permission` VALUES ('4060', '1501859873070829561', '1003');
INSERT INTO `role_permission` VALUES ('4061', '1501859873070829561', '1004');
INSERT INTO `role_permission` VALUES ('4062', '1501859873070829561', '3745');
INSERT INTO `role_permission` VALUES ('4063', '1501859873070829561', '102');
INSERT INTO `role_permission` VALUES ('4064', '1501859873070829561', '1007');
INSERT INTO `role_permission` VALUES ('4065', '1501859873070829561', '1011');
INSERT INTO `role_permission` VALUES ('4066', '1501859873070829561', '1010');
INSERT INTO `role_permission` VALUES ('4067', '1501859873070829561', '1009');
INSERT INTO `role_permission` VALUES ('4068', '1501859873070829561', '1008');
INSERT INTO `role_permission` VALUES ('4069', '1501859873070829561', '103');
INSERT INTO `role_permission` VALUES ('4070', '1501859873070829561', '1013');
INSERT INTO `role_permission` VALUES ('4071', '1501859873070829561', '1014');
INSERT INTO `role_permission` VALUES ('4072', '1501859873070829561', '1015');
INSERT INTO `role_permission` VALUES ('4073', '1501859873070829561', '1016');
INSERT INTO `role_permission` VALUES ('4074', '1501859873070829561', '107');
INSERT INTO `role_permission` VALUES ('4075', '1501859873070829561', '1038');
INSERT INTO `role_permission` VALUES ('4076', '1501859873070829561', '1042');
INSERT INTO `role_permission` VALUES ('4077', '1501859873070829561', '1039');
INSERT INTO `role_permission` VALUES ('4078', '1501859873070829561', '1040');
INSERT INTO `role_permission` VALUES ('4079', '1501859873070829561', '1041');
INSERT INTO `role_permission` VALUES ('6260', '1740301348876140544', '1');
INSERT INTO `role_permission` VALUES ('6261', '1740301348876140544', '3974');
INSERT INTO `role_permission` VALUES ('6262', '1740301348876140544', '3975');
INSERT INTO `role_permission` VALUES ('6263', '1740301348876140544', '3977');
INSERT INTO `role_permission` VALUES ('6264', '1740301348876140544', '3978');
INSERT INTO `role_permission` VALUES ('6265', '1740301348876140544', '3979');
INSERT INTO `role_permission` VALUES ('6266', '1740301348876140544', '3980');
INSERT INTO `role_permission` VALUES ('6267', '1740301348876140544', '3981');
INSERT INTO `role_permission` VALUES ('6268', '1740301348876140544', '3679');
INSERT INTO `role_permission` VALUES ('6269', '1740301348876140544', '3708');
INSERT INTO `role_permission` VALUES ('6270', '1740301348876140544', '3709');
INSERT INTO `role_permission` VALUES ('6271', '1740301348876140544', '3710');
INSERT INTO `role_permission` VALUES ('6272', '1740301348876140544', '3711');
INSERT INTO `role_permission` VALUES ('6273', '1740301348876140544', '101');
INSERT INTO `role_permission` VALUES ('6274', '1740301348876140544', '3713');
INSERT INTO `role_permission` VALUES ('6275', '1740301348876140544', '1001');
INSERT INTO `role_permission` VALUES ('6276', '1740301348876140544', '1002');
INSERT INTO `role_permission` VALUES ('6277', '1740301348876140544', '1003');
INSERT INTO `role_permission` VALUES ('6278', '1740301348876140544', '1004');
INSERT INTO `role_permission` VALUES ('6279', '1740301348876140544', '3745');
INSERT INTO `role_permission` VALUES ('6280', '1740301348876140544', '3991');
INSERT INTO `role_permission` VALUES ('6281', '1740301348876140544', '3992');
INSERT INTO `role_permission` VALUES ('6282', '1740301348876140544', '3993');
INSERT INTO `role_permission` VALUES ('6283', '1740301348876140544', '3982');
INSERT INTO `role_permission` VALUES ('6284', '1740301348876140544', '3983');
INSERT INTO `role_permission` VALUES ('6285', '1740301348876140544', '3984');
INSERT INTO `role_permission` VALUES ('6286', '1740301348876140544', '3985');
INSERT INTO `role_permission` VALUES ('6287', '1740301348876140544', '3986');
INSERT INTO `role_permission` VALUES ('6288', '1503682070533906432', '3982');
INSERT INTO `role_permission` VALUES ('6289', '1503682070533906432', '3983');
INSERT INTO `role_permission` VALUES ('6290', '1503682070533906432', '3985');
INSERT INTO `role_permission` VALUES ('6291', '1503682070533906432', '3986');

-- ----------------------------
-- Table structure for sign_up
-- ----------------------------
DROP TABLE IF EXISTS `sign_up`;
CREATE TABLE `sign_up` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `project_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `org_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `user_mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `apply_status` bigint DEFAULT NULL,
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `apply_time` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1764845798001999873 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of sign_up
-- ----------------------------
INSERT INTO `sign_up` VALUES ('1747161014568222720', '1747157621778939904', '1747160939783811072', '青白江', '王先生', '18224418603', '1802', null, '1705390621213');
INSERT INTO `sign_up` VALUES ('1748230123133337600', '1748225331417841664', '1747160939783811072', '青白江', '王先生', '18224418603', '1803', null, '1705645516557');
INSERT INTO `sign_up` VALUES ('1748235630174797824', '1748225331417841664', '1748235470346678272', '青白江区笔锋贸易有限公司', '邓平', '13678160651', '1803', null, '1705646829538');
INSERT INTO `sign_up` VALUES ('1748936613892718592', '1748225331417841664', '1748936363169837056', '砂石经营公司', '张涛', '13678089783', '1803', null, '1705813957080');
INSERT INTO `sign_up` VALUES ('1751788082522226688', '1751786920972648448', '1747059398934528000', '假日公司', '莉莉', '13880645089', '1803', null, '1706493800179');
INSERT INTO `sign_up` VALUES ('1751788375444029440', '1751786920972648448', '1751788295852945408', '测试公司', '王丽', '13458984241', '1803', null, '1706493870017');
INSERT INTO `sign_up` VALUES ('1751852849286873088', '1751852710631571456', '1751788295852945408', '测试公司', '王丽', '13458984241', '1803', null, '1706509241779');
INSERT INTO `sign_up` VALUES ('1751852949102919680', '1751852710631571456', '1747059398934528000', '假日公司', '莉莉', '13880645089', '1803', null, '1706509265577');
INSERT INTO `sign_up` VALUES ('1752136751289204736', '1752135933144072192', '1747160939783811072', '青白江', '王先生', '18224418603', '1803', null, '1706576929291');
INSERT INTO `sign_up` VALUES ('1752136851088474112', '1752135933144072192', '1748235470346678272', '青白江区笔锋贸易有限公司', '邓平', '13678160651', '1803', null, '1706576953085');
INSERT INTO `sign_up` VALUES ('1752144274629066752', '1752144181226110976', '1751788295852945408', '测试公司', '王丽', '13458984241', '1803', null, '1706578722995');
INSERT INTO `sign_up` VALUES ('1752144353985298432', '1752144181226110976', '1747059398934528000', '假日公司', '莉莉', '13880645089', '1802', null, '1706578741915');
INSERT INTO `sign_up` VALUES ('1752888352069124096', '1752886372781260800', '1752888172339032064', '成都永城', '张勇', '13330985096', '1803', null, '1706756124881');
INSERT INTO `sign_up` VALUES ('1752939463182385152', '1752886372781260800', '1751788295852945408', '测试公司', '王丽', '13458984241', '1803', null, '1706768310720');
INSERT INTO `sign_up` VALUES ('1752949080440438784', '1752886372781260800', '1748235470346678272', '青白江区笔锋贸易有限公司', '邓平', '13678160651', '1803', null, '1706770603653');
INSERT INTO `sign_up` VALUES ('1752952507979530240', '1752952388697718784', '1751788295852945408', '测试公司', '王丽', '13458984241', '1803', null, '1706771420842');
INSERT INTO `sign_up` VALUES ('1752952639135416320', '1752952388697718784', '1747059398934528000', '假日公司', '莉莉', '13880645089', '1803', null, '1706771452112');
INSERT INTO `sign_up` VALUES ('1759496590621409280', '1759470427551301632', '1751788295852945408', '测试公司', '王丽', '13458984241', '1802', null, '1708331651727');
INSERT INTO `sign_up` VALUES ('1759498475394826240', '1759470427551301632', '1747059398934528000', '假日公司', '莉莉', '13880645089', '1802', null, '1708332101092');
INSERT INTO `sign_up` VALUES ('1759500815074066432', '1759470427551301632', '1752888172339032064', '成都永城', '张勇', '13330985096', '1802', null, '1708332658915');
INSERT INTO `sign_up` VALUES ('1759748924744138752', '1759748063716442112', '1752145006631612416', '唐三藏贸易公司', '邓笔峰', '15982060279', '1802', null, '1708391812870');
INSERT INTO `sign_up` VALUES ('1759748997569839104', '1759470427551301632', '1752145006631612416', '唐三藏贸易公司', '邓笔峰', '15982060279', '1802', null, '1708391830233');
INSERT INTO `sign_up` VALUES ('1760869324450430976', '1760868912657858560', '1752145006631612416', '唐三藏贸易公司', '邓笔峰', '15982060279', '1803', null, '1708658936976');
INSERT INTO `sign_up` VALUES ('1760870096101703680', '1760868912657858560', '1748235470346678272', '青白江区笔锋贸易有限公司', '邓平', '13678160651', '1803', null, '1708659120952');
INSERT INTO `sign_up` VALUES ('1760870310309003264', '1760868912657858560', '1747160939783811072', '青白江', '王先生', '18224418603', '1802', null, '1708659172023');
INSERT INTO `sign_up` VALUES ('1762017025376387072', '1762016871126663168', '1751788295852945408', '测试公司', '王丽', '13458984241', '1803', null, '1708932570200');
INSERT INTO `sign_up` VALUES ('1762295029826584576', '1762294611289571328', '1748235470346678272', '青白江区笔锋贸易有限公司', '邓平', '13678160651', '1803', null, '1708998851626');
INSERT INTO `sign_up` VALUES ('1762295094137847808', '1762294611289571328', '1752145006631612416', '唐三藏贸易公司', '邓笔峰', '15982060279', '1803', null, '1708998866959');
INSERT INTO `sign_up` VALUES ('1762295278263599104', '1762294611289571328', '1747160939783811072', '青白江', '王先生', '18224418603', '1802', null, '1708998910858');
INSERT INTO `sign_up` VALUES ('1762299620513284096', '1762299471774875648', '1752145006631612416', '唐三藏贸易公司', '邓笔峰', '15982060279', '1802', null, '1708999946131');
INSERT INTO `sign_up` VALUES ('1762380086763323392', '1762379937840365568', '1752145006631612416', '唐三藏贸易公司', '邓笔峰', '15982060279', '1803', null, '1709019130780');
INSERT INTO `sign_up` VALUES ('1762380286865178624', '1762379937840365568', '1751788295852945408', '测试公司', '王丽', '13458984241', '1803', null, '1709019178488');
INSERT INTO `sign_up` VALUES ('1762645719639916544', '1762645493671788544', '1751788295852945408', '测试公司', '王丽', '13458984241', '1803', null, '1709082462593');
INSERT INTO `sign_up` VALUES ('1762645946698563584', '1762645493671788544', '1747059398934528000', '假日公司', '莉莉', '13880645089', '1803', null, '1709082516728');
INSERT INTO `sign_up` VALUES ('1763019048741765120', '1763017544760819712', '1752145006631612416', '唐三藏贸易公司', '邓笔峰', '15982060279', '1803', null, '1709171471188');
INSERT INTO `sign_up` VALUES ('1763043779062792192', '1763043480268963840', '1751788295852945408', '测试公司', '王丽', '13458984241', '1803', null, '1709177367355');
INSERT INTO `sign_up` VALUES ('1763044014522630144', '1763043480268963840', '1747059398934528000', '假日公司', '莉莉', '13880645089', '1803', null, '1709177423493');
INSERT INTO `sign_up` VALUES ('1763055482622181376', '1763048674314682368', '1752145006631612416', '唐三藏贸易公司', '邓笔峰', '15982060279', '1802', null, '1709180157701');
INSERT INTO `sign_up` VALUES ('1763090890219323392', '1763090815497797632', '1747059398934528000', '假日公司', '莉莉', '13880645089', '1803', null, '1709188599530');
INSERT INTO `sign_up` VALUES ('1763101283557834752', '1763101165966327808', '1747059398934528000', '假日公司', '莉莉', '13880645089', '1803', null, '1709191077496');
INSERT INTO `sign_up` VALUES ('1763367545114460160', '1763367415556603904', '1751788295852945408', '测试公司', '王丽', '13458984241', '1803', null, '1709254559197');
INSERT INTO `sign_up` VALUES ('1763367647983960064', '1763367415556603904', '1747059398934528000', '假日公司', '莉莉', '13880645089', '1803', null, '1709254583723');
INSERT INTO `sign_up` VALUES ('1763379257242812416', '1763379179409113088', '1747059398934528000', '假日公司', '莉莉', '13880645089', '1803', null, '1709257351586');
INSERT INTO `sign_up` VALUES ('1763379464038776832', '1763379179409113088', '1751788295852945408', '测试公司', '王丽', '13458984241', '1803', null, '1709257400890');
INSERT INTO `sign_up` VALUES ('1763441838577942528', '1763441023326879744', '1748235470346678272', '青白江区笔锋贸易有限公司', '邓平', '13678160651', '1803', null, '1709272272139');
INSERT INTO `sign_up` VALUES ('1763441879598235648', '1763441023326879744', '1752145006631612416', '唐三藏贸易公司', '邓笔峰', '15982060279', '1803', null, '1709272281919');
INSERT INTO `sign_up` VALUES ('1763451797516582912', '1763449500778627072', '1752145006631612416', '唐三藏贸易公司', '邓笔峰', '15982060279', '1803', null, '1709274646535');
INSERT INTO `sign_up` VALUES ('1763452468865269760', '1763449500778627072', '1747160939783811072', '青白江', '王先生', '18224418603', '1803', null, '1709274806597');
INSERT INTO `sign_up` VALUES ('1763458141543989248', '1763458046077435904', '1752145006631612416', '唐三藏贸易公司', '邓笔峰', '15982060279', '1803', null, '1709276159069');
INSERT INTO `sign_up` VALUES ('1763458142332518400', '1763458046077435904', '1747160939783811072', '青白江', '王先生', '18224418603', '1803', null, '1709276159257');
INSERT INTO `sign_up` VALUES ('1763479516602171392', '1763479443084410880', '1747059398934528000', '假日公司', '莉莉', '13880645089', '1803', null, '1709281255280');
INSERT INTO `sign_up` VALUES ('1763482195168591872', '1763482136041488384', '1747059398934528000', '假日公司', '莉莉', '13880645089', '1803', null, '1709281893900');
INSERT INTO `sign_up` VALUES ('1763490255870099456', '1763489556457324544', '1747059398934528000', '假日公司', '莉莉', '13880645089', '1803', null, '1709283815721');
INSERT INTO `sign_up` VALUES ('1763493568212631552', '1763493323638571008', '1747059398934528000', '假日公司', '莉莉', '13880645089', '1803', null, '1709284605445');
INSERT INTO `sign_up` VALUES ('1763495911264092160', '1763495849314222080', '1747059398934528000', '假日公司', '莉莉', '13880645089', '1803', null, '1709285164072');
INSERT INTO `sign_up` VALUES ('1763497709991362560', '1763497676986384384', '1747059398934528000', '假日公司', '莉莉', '13880645089', '1803', null, '1709285592922');
INSERT INTO `sign_up` VALUES ('1763499708069707776', '1763499670417440768', '1747059398934528000', '假日公司', '莉莉', '13880645089', '1803', null, '1709286069301');
INSERT INTO `sign_up` VALUES ('1763501116760260608', '1763500873318662144', '1747059398934528000', '假日公司', '莉莉', '13880645089', '1803', null, '1709286405159');
INSERT INTO `sign_up` VALUES ('1764456776477966336', '1764450632762130432', '1747160939783811072', '青白江', '王先生', '18224418603', '1803', null, '1709514252191');
INSERT INTO `sign_up` VALUES ('1764456952672288768', '1764450632762130432', '1752145006631612416', '唐三藏贸易公司', '邓笔峰', '15982060279', '1803', null, '1709514294199');
INSERT INTO `sign_up` VALUES ('1764456971953504256', '1764450632762130432', '1751788295852945408', '测试公司', '王丽', '13458984241', '1803', null, '1709514298796');
INSERT INTO `sign_up` VALUES ('1764466680743854080', '1764466513923801088', '1751788295852945408', '测试公司', '王丽', '13458984241', '1803', null, '1709516613552');
INSERT INTO `sign_up` VALUES ('1764839401180889088', '1764839215079620608', '1751788295852945408', '测试公司', '王丽', '13458984241', '1802', null, '1709605477029');
INSERT INTO `sign_up` VALUES ('1764845223701118976', '1764839215079620608', '1747059398934528000', '假日公司', '莉莉', '13880645089', '1802', null, '1709606865226');
INSERT INTO `sign_up` VALUES ('1764845798001999872', '1764839215079620608', '1752888172339032064', '成都永城', '张勇', '13330985096', '1802', null, '1709607002150');

-- ----------------------------
-- Table structure for sys_file
-- ----------------------------
DROP TABLE IF EXISTS `sys_file`;
CREATE TABLE `sys_file` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` bigint DEFAULT NULL,
  `file_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `file_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `access_path` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `store_path` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ori_file_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `order_num` int DEFAULT NULL,
  `active_flag` tinyint DEFAULT NULL,
  `create_time` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of sys_file
-- ----------------------------
INSERT INTO `sys_file` VALUES ('3', 'logo图片', '1359', '43d5fb9ee15b40b68049b3db78be.png', '1500000286550000001logo', '/sysfile/43d5fb9ee15b40b68049b3db78be.png', 'sysfile', '921e5ea6667743f292fe2f81900d.png', '1', null, '1659084111093');
INSERT INTO `sys_file` VALUES ('4', 'logo图片', '1359', '5237d3b00649454188cb11811bd9.png', '1500354392018309001logo', '/sysfile/5237d3b00649454188cb11811bd9.png', 'sysfile', 'logo1.png', '1', null, '1659090137773');
INSERT INTO `sys_file` VALUES ('6', 'logo图片', '1359', '7e214d79c39246c9a9b0f679deb4.png', '1501815782786256896logo', '/sysfile/7e214d79c39246c9a9b0f679deb4.png', 'sysfile', 'logo.png', '1', null, '1659094102807');

-- ----------------------------
-- Table structure for sys_setting
-- ----------------------------
DROP TABLE IF EXISTS `sys_setting`;
CREATE TABLE `sys_setting` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `setting_key` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `setting_value` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` bigint DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `order_num` int DEFAULT NULL,
  `create_time` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of sys_setting
-- ----------------------------
INSERT INTO `sys_setting` VALUES ('1', '文件上传路径', 'fileUploadPrefix', '/home/', null, '文件的上传保存路径', '1', '1638256919568');
INSERT INTO `sys_setting` VALUES ('2', '文件访问路径', 'fileAccessPrefix', 'http://qbj.jszhcs.cn:9585/staicResource/', null, '文件的访问路径', '2', '1638256919589');

-- ----------------------------
-- Table structure for time_task
-- ----------------------------
DROP TABLE IF EXISTS `time_task`;
CREATE TABLE `time_task` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `type` bigint DEFAULT NULL,
  `project_id` bigint DEFAULT NULL,
  `project_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `job_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `xxlJobAdmin_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `corn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `corn_time` bigint DEFAULT NULL COMMENT 'corn表达式执行时间',
  `handler` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `app_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_time` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=233 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of time_task
-- ----------------------------
INSERT INTO `time_task` VALUES ('107', '1903', '1747157621778939904', '5万吨成品砂石', '115', 'http://192.168.2.241:5092/xxl-job-admin/', '0 0 9 18 1 ? 2024', null, 'updateProjectAuctionStatusJyzJobHandler', 'bid-service', '1705389842463');
INSERT INTO `time_task` VALUES ('108', '1904', '1747157621778939904', '5万吨成品砂石', '116', 'http://192.168.2.241:5092/xxl-job-admin/', '0 0 19 18 1 ? 2024', null, 'updateProjectAuctionStatusGszJobHandler', 'bid-service', '1705389842498');
INSERT INTO `time_task` VALUES ('109', '1905', '1747157621778939904', '5万吨成品砂石', '117', 'http://192.168.2.241:5092/xxl-job-admin/', '0 0 19 21 1 ? 2024', null, 'updateProjectAuctionStatusYjsJobHandler', 'bid-service', '1705389842534');
INSERT INTO `time_task` VALUES ('110', '1903', '1748225331417841664', '6万吨成品砂石', '118', 'http://192.168.2.241:5092/xxl-job-admin/', '0 0 9 22 1 ? 2024', null, 'updateProjectAuctionStatusJyzJobHandler', 'bid-service', '1705644489097');
INSERT INTO `time_task` VALUES ('111', '1904', '1748225331417841664', '6万吨成品砂石', '119', 'http://192.168.2.241:5092/xxl-job-admin/', '0 0 17 22 1 ? 2024', null, 'updateProjectAuctionStatusGszJobHandler', 'bid-service', '1705644489147');
INSERT INTO `time_task` VALUES ('112', '1905', '1748225331417841664', '6万吨成品砂石', '120', 'http://192.168.2.241:5092/xxl-job-admin/', '0 0 17 25 1 ? 2024', null, 'updateProjectAuctionStatusYjsJobHandler', 'bid-service', '1705644489186');
INSERT INTO `time_task` VALUES ('113', '1903', '1751786920972648448', '测试', '121', 'http://192.168.2.241:5092/xxl-job-admin/', '0 30 10 29 1 ? 2024', null, 'updateProjectAuctionStatusJyzJobHandler', 'bid-service', '1706493744286');
INSERT INTO `time_task` VALUES ('114', '1904', '1751786920972648448', '测试', '122', 'http://192.168.2.241:5092/xxl-job-admin/', '0 0 11 29 1 ? 2024', null, 'updateProjectAuctionStatusGszJobHandler', 'bid-service', '1706493744928');
INSERT INTO `time_task` VALUES ('115', '1905', '1751786920972648448', '测试', '123', 'http://192.168.2.241:5092/xxl-job-admin/', '0 0 11 1 2 ? 2024', null, 'updateProjectAuctionStatusYjsJobHandler', 'bid-service', '1706493745466');
INSERT INTO `time_task` VALUES ('116', '1903', '1751852710631571456', '测试02', '124', 'http://192.168.2.241:5092/xxl-job-admin/', '0 30 14 29 1 ? 2024', null, 'updateProjectAuctionStatusJyzJobHandler', 'bid-service', '1706509215889');
INSERT INTO `time_task` VALUES ('117', '1904', '1751852710631571456', '测试02', '125', 'http://192.168.2.241:5092/xxl-job-admin/', '0 0 15 29 1 ? 2024', null, 'updateProjectAuctionStatusGszJobHandler', 'bid-service', '1706509215931');
INSERT INTO `time_task` VALUES ('118', '1905', '1751852710631571456', '测试02', '126', 'http://192.168.2.241:5092/xxl-job-admin/', '0 0 15 1 2 ? 2024', null, 'updateProjectAuctionStatusYjsJobHandler', 'bid-service', '1706509216163');
INSERT INTO `time_task` VALUES ('119', '1903', '1752135933144072192', '成品砂石包3万吨', '127', 'http://192.168.2.241:5092/xxl-job-admin/', '0 20 9 30 1 ? 2024', null, 'updateProjectAuctionStatusJyzJobHandler', 'bid-service', '1706576746591');
INSERT INTO `time_task` VALUES ('120', '1904', '1752135933144072192', '成品砂石包3万吨', '128', 'http://192.168.2.241:5092/xxl-job-admin/', '0 50 9 30 1 ? 2024', null, 'updateProjectAuctionStatusGszJobHandler', 'bid-service', '1706576746618');
INSERT INTO `time_task` VALUES ('121', '1905', '1752135933144072192', '成品砂石包3万吨', '129', 'http://192.168.2.241:5092/xxl-job-admin/', '0 50 9 2 2 ? 2024', null, 'updateProjectAuctionStatusYjsJobHandler', 'bid-service', '1706576746825');
INSERT INTO `time_task` VALUES ('122', '1903', '1752144181226110976', '测试', '130', 'http://192.168.2.241:5092/xxl-job-admin/', '0 42 9 30 1 ? 2024', null, 'updateProjectAuctionStatusJyzJobHandler', 'bid-service', '1706578704493');
INSERT INTO `time_task` VALUES ('123', '1904', '1752144181226110976', '测试', '131', 'http://192.168.2.241:5092/xxl-job-admin/', '0 42 10 30 1 ? 2024', null, 'updateProjectAuctionStatusGszJobHandler', 'bid-service', '1706578704520');
INSERT INTO `time_task` VALUES ('124', '1905', '1752144181226110976', '测试', '132', 'http://192.168.2.241:5092/xxl-job-admin/', '0 42 10 2 2 ? 2024', null, 'updateProjectAuctionStatusYjsJobHandler', 'bid-service', '1706578704561');
INSERT INTO `time_task` VALUES ('125', '1903', '1752886372781260800', '成品砂石3万吨', '133', 'http://192.168.2.241:5092/xxl-job-admin/', '0 30 9 2 2 ? 2024', null, 'updateProjectAuctionStatusJyzJobHandler', 'bid-service', '1706755675670');
INSERT INTO `time_task` VALUES ('126', '1904', '1752886372781260800', '成品砂石3万吨', '134', 'http://192.168.2.241:5092/xxl-job-admin/', '0 30 10 2 2 ? 2024', null, 'updateProjectAuctionStatusGszJobHandler', 'bid-service', '1706755675784');
INSERT INTO `time_task` VALUES ('127', '1905', '1752886372781260800', '成品砂石3万吨', '135', 'http://192.168.2.241:5092/xxl-job-admin/', '0 30 10 5 2 ? 2024', null, 'updateProjectAuctionStatusYjsJobHandler', 'bid-service', '1706755675833');
INSERT INTO `time_task` VALUES ('128', '1903', '1752952388697718784', '测试1', '136', 'http://192.168.2.241:5092/xxl-job-admin/', '0 15 15 1 2 ? 2024', null, 'updateProjectAuctionStatusJyzJobHandler', 'bid-service', '1706771397831');
INSERT INTO `time_task` VALUES ('129', '1904', '1752952388697718784', '测试1', '137', 'http://192.168.2.241:5092/xxl-job-admin/', '0 15 16 1 2 ? 2024', null, 'updateProjectAuctionStatusGszJobHandler', 'bid-service', '1706771397865');
INSERT INTO `time_task` VALUES ('130', '1905', '1752952388697718784', '测试1', '138', 'http://192.168.2.241:5092/xxl-job-admin/', '0 15 16 4 2 ? 2024', null, 'updateProjectAuctionStatusYjsJobHandler', 'bid-service', '1706771398443');
INSERT INTO `time_task` VALUES ('131', '1903', '1759470427551301632', '测试报名', '139', 'http://192.168.2.241:5092/xxl-job-admin/', '0 0 14 20 2 ? 2024', null, 'updateProjectAuctionStatusJyzJobHandler', 'bid-service', '1708330460939');
INSERT INTO `time_task` VALUES ('132', '1904', '1759470427551301632', '测试报名', '140', 'http://192.168.2.241:5092/xxl-job-admin/', '0 30 14 20 2 ? 2024', null, 'updateProjectAuctionStatusGszJobHandler', 'bid-service', '1708330461227');
INSERT INTO `time_task` VALUES ('133', '1905', '1759470427551301632', '测试报名', '141', 'http://192.168.2.241:5092/xxl-job-admin/', '0 30 14 23 2 ? 2024', null, 'updateProjectAuctionStatusYjsJobHandler', 'bid-service', '1708330461294');
INSERT INTO `time_task` VALUES ('134', '1903', '1759748063716442112', '成品砂石3万吨包', '142', 'http://192.168.2.241:5092/xxl-job-admin/', '0 20 9 20 2 ? 2024', null, 'updateProjectAuctionStatusJyzJobHandler', 'bid-service', '1708391635229');
INSERT INTO `time_task` VALUES ('135', '1904', '1759748063716442112', '成品砂石3万吨包', '143', 'http://192.168.2.241:5092/xxl-job-admin/', '0 50 9 20 2 ? 2024', null, 'updateProjectAuctionStatusGszJobHandler', 'bid-service', '1708391635296');
INSERT INTO `time_task` VALUES ('136', '1905', '1759748063716442112', '成品砂石3万吨包', '144', 'http://192.168.2.241:5092/xxl-job-admin/', '0 50 9 23 2 ? 2024', null, 'updateProjectAuctionStatusYjsJobHandler', 'bid-service', '1708391635414');
INSERT INTO `time_task` VALUES ('137', '1903', '1760868912657858560', '4万吨成品砂石包', '145', 'http://192.168.2.241:5092/xxl-job-admin/', '52 35 11 23 2 ? 2024', null, 'updateProjectAuctionStatusJyzJobHandler', 'bid-service', '1708658864961');
INSERT INTO `time_task` VALUES ('138', '1904', '1760868912657858560', '4万吨成品砂石包', '146', 'http://192.168.2.241:5092/xxl-job-admin/', '52 35 12 23 2 ? 2024', null, 'updateProjectAuctionStatusGszJobHandler', 'bid-service', '1708658865205');
INSERT INTO `time_task` VALUES ('139', '1905', '1760868912657858560', '4万吨成品砂石包', '147', 'http://192.168.2.241:5092/xxl-job-admin/', '52 35 12 26 2 ? 2024', null, 'updateProjectAuctionStatusYjsJobHandler', 'bid-service', '1708658865316');
INSERT INTO `time_task` VALUES ('140', '1903', '1762016871126663168', '测试竞价', '148', 'http://192.168.2.241:5092/xxl-job-admin/', '0 37 15 26 2 ? 2024', null, 'updateProjectAuctionStatusJyzJobHandler', 'bid-service', '1708932546289');
INSERT INTO `time_task` VALUES ('141', '1904', '1762016871126663168', '测试竞价', '149', 'http://192.168.2.241:5092/xxl-job-admin/', '0 37 18 26 2 ? 2024', null, 'updateProjectAuctionStatusGszJobHandler', 'bid-service', '1708932546366');
INSERT INTO `time_task` VALUES ('142', '1905', '1762016871126663168', '测试竞价', '150', 'http://192.168.2.241:5092/xxl-job-admin/', '0 37 18 29 2 ? 2024', null, 'updateProjectAuctionStatusYjsJobHandler', 'bid-service', '1708932546405');
INSERT INTO `time_task` VALUES ('143', '1903', '1762294611289571328', '2万成品砂石包件', '151', 'http://192.168.2.241:5092/xxl-job-admin/', '0 0 10 27 2 ? 2024', null, 'updateProjectAuctionStatusJyzJobHandler', 'bid-service', '1708998775599');
INSERT INTO `time_task` VALUES ('144', '1904', '1762294611289571328', '2万成品砂石包件', '152', 'http://192.168.2.241:5092/xxl-job-admin/', '0 2 10 27 2 ? 2024', null, 'updateProjectAuctionStatusGszJobHandler', 'bid-service', '1708998775636');
INSERT INTO `time_task` VALUES ('145', '1905', '1762294611289571328', '2万成品砂石包件', '153', 'http://192.168.2.241:5092/xxl-job-admin/', '0 2 10 1 3 ? 2024', null, 'updateProjectAuctionStatusYjsJobHandler', 'bid-service', '1708998775721');
INSERT INTO `time_task` VALUES ('146', '1903', '1762299471774875648', '3万吨成品砂石包件', '154', 'http://192.168.2.241:5092/xxl-job-admin/', '0 20 10 27 2 ? 2024', null, 'updateProjectAuctionStatusJyzJobHandler', 'bid-service', '1708999920916');
INSERT INTO `time_task` VALUES ('147', '1904', '1762299471774875648', '3万吨成品砂石包件', '155', 'http://192.168.2.241:5092/xxl-job-admin/', '0 22 10 27 2 ? 2024', null, 'updateProjectAuctionStatusGszJobHandler', 'bid-service', '1708999920955');
INSERT INTO `time_task` VALUES ('148', '1905', '1762299471774875648', '3万吨成品砂石包件', '156', 'http://192.168.2.241:5092/xxl-job-admin/', '0 22 10 1 3 ? 2024', null, 'updateProjectAuctionStatusYjsJobHandler', 'bid-service', '1708999921079');
INSERT INTO `time_task` VALUES ('149', '1903', '1762379937840365568', '发放', '157', 'http://192.168.2.241:5092/xxl-job-admin/', '0 35 15 27 2 ? 2024', null, 'updateProjectAuctionStatusJyzJobHandler', 'bid-service', '1709019107772');
INSERT INTO `time_task` VALUES ('150', '1904', '1762379937840365568', '发放', '158', 'http://192.168.2.241:5092/xxl-job-admin/', '0 38 15 27 2 ? 2024', null, 'updateProjectAuctionStatusGszJobHandler', 'bid-service', '1709019107827');
INSERT INTO `time_task` VALUES ('151', '1905', '1762379937840365568', '发放', '159', 'http://192.168.2.241:5092/xxl-job-admin/', '0 38 15 1 3 ? 2024', null, 'updateProjectAuctionStatusYjsJobHandler', 'bid-service', '1709019107937');
INSERT INTO `time_task` VALUES ('152', '1903', '1762645493671788544', '测试第一次', '160', 'http://192.168.2.241:5092/xxl-job-admin/', '0 9 9 28 2 ? 2024', null, 'updateProjectAuctionStatusJyzJobHandler', 'bid-service', '1709082432266');
INSERT INTO `time_task` VALUES ('153', '1904', '1762645493671788544', '测试第一次', '161', 'http://192.168.2.241:5092/xxl-job-admin/', '0 39 9 28 2 ? 2024', null, 'updateProjectAuctionStatusGszJobHandler', 'bid-service', '1709082432296');
INSERT INTO `time_task` VALUES ('154', '1905', '1762645493671788544', '测试第一次', '162', 'http://192.168.2.241:5092/xxl-job-admin/', '0 39 9 2 3 ? 2024', null, 'updateProjectAuctionStatusYjsJobHandler', 'bid-service', '1709082432368');
INSERT INTO `time_task` VALUES ('155', '1903', '1763017544760819712', '1万吨成品砂石包件（5%税率）', '163', 'http://192.168.2.241:5092/xxl-job-admin/', '0 0 10 29 2 ? 2024', '1709172000000', 'updateProjectAuctionStatusJyzJobHandler', 'bid-service', '1709171151313');
INSERT INTO `time_task` VALUES ('156', '1904', '1763017544760819712', '1万吨成品砂石包件（5%税率）', '164', 'http://192.168.2.241:5092/xxl-job-admin/', '14 11 10 29 2 ? 2024', '1709172600000', 'updateProjectAuctionStatusGszJobHandler', 'bid-service', '1709171151482');
INSERT INTO `time_task` VALUES ('157', '1905', '1763017544760819712', '1万吨成品砂石包件（5%税率）', '165', 'http://192.168.2.241:5092/xxl-job-admin/', '0 10 10 1 3 ? 2024', '86400000', 'updateProjectAuctionStatusYjsJobHandler', 'bid-service', '1709171151717');
INSERT INTO `time_task` VALUES ('158', '1903', '1763043480268963840', '测试666', '166', 'http://192.168.2.241:5092/xxl-job-admin/', '0 35 11 29 2 ? 2024', '1709177700000', 'updateProjectAuctionStatusJyzJobHandler', 'bid-service', '1709177301309');
INSERT INTO `time_task` VALUES ('159', '1904', '1763043480268963840', '测试666', '167', 'http://192.168.2.241:5092/xxl-job-admin/', '0 40 11 29 2 ? 2024', '1709178000000', 'updateProjectAuctionStatusGszJobHandler', 'bid-service', '1709177301650');
INSERT INTO `time_task` VALUES ('160', '1905', '1763043480268963840', '测试666', '168', 'http://192.168.2.241:5092/xxl-job-admin/', '0 40 11 1 3 ? 2024', '86400000', 'updateProjectAuctionStatusYjsJobHandler', 'bid-service', '1709177301746');
INSERT INTO `time_task` VALUES ('161', '1903', '1763048674314682368', '1.5万吨成品砂石（3%税率）', '169', 'http://192.168.2.241:5092/xxl-job-admin/', '0 0 14 29 2 ? 2024', '1709186400000', 'updateProjectAuctionStatusJyzJobHandler', 'bid-service', '1709178558235');
INSERT INTO `time_task` VALUES ('162', '1904', '1763048674314682368', '1.5万吨成品砂石（3%税率）', '170', 'http://192.168.2.241:5092/xxl-job-admin/', '0 10 14 29 2 ? 2024', '1709187000000', 'updateProjectAuctionStatusGszJobHandler', 'bid-service', '1709178558263');
INSERT INTO `time_task` VALUES ('163', '1905', '1763048674314682368', '1.5万吨成品砂石（3%税率）', '171', 'http://192.168.2.241:5092/xxl-job-admin/', '0 10 14 1 3 ? 2024', '86400000', 'updateProjectAuctionStatusYjsJobHandler', 'bid-service', '1709178558376');
INSERT INTO `time_task` VALUES ('164', '1903', '1763090815497797632', '测试888', '172', 'http://192.168.2.241:5092/xxl-job-admin/', '0 38 14 29 2 ? 2024', '1709188680000', 'updateProjectAuctionStatusJyzJobHandler', 'bid-service', '1709188587995');
INSERT INTO `time_task` VALUES ('165', '1904', '1763090815497797632', '测试888', '173', 'http://192.168.2.241:5092/xxl-job-admin/', '25 45 14 29 2 ? 2024', '1709188980000', 'updateProjectAuctionStatusGszJobHandler', 'bid-service', '1709188588051');
INSERT INTO `time_task` VALUES ('166', '1905', '1763090815497797632', '测试888', '174', 'http://192.168.2.241:5092/xxl-job-admin/', '0 43 14 1 3 ? 2024', '86400000', 'updateProjectAuctionStatusYjsJobHandler', 'bid-service', '1709188588326');
INSERT INTO `time_task` VALUES ('167', '1903', '1763101165966327808', '测试999', '175', 'http://192.168.2.241:5092/xxl-job-admin/', '0 18 15 29 2 ? 2024', '1709191080000', 'updateProjectAuctionStatusJyzJobHandler', 'bid-service', '1709191069780');
INSERT INTO `time_task` VALUES ('168', '1904', '1763101165966327808', '测试999', '176', 'http://192.168.2.241:5092/xxl-job-admin/', '29 33 15 29 2 ? 2024', '1709191380000', 'updateProjectAuctionStatusGszJobHandler', 'bid-service', '1709191069886');
INSERT INTO `time_task` VALUES ('169', '1905', '1763101165966327808', '测试999', '177', 'http://192.168.2.241:5092/xxl-job-admin/', '0 23 15 1 3 ? 2024', '86400000', 'updateProjectAuctionStatusYjsJobHandler', 'bid-service', '1709191070046');
INSERT INTO `time_task` VALUES ('170', '1903', '1763367415556603904', 'eee', '178', 'http://192.168.2.241:5092/xxl-job-admin/', '0 3 9 1 3 ? 2024', '1709254980000', 'updateProjectAuctionStatusJyzJobHandler', 'bid-service', '1709254537541');
INSERT INTO `time_task` VALUES ('171', '1904', '1763367415556603904', 'eee', '179', 'http://192.168.2.241:5092/xxl-job-admin/', '0 8 9 1 3 ? 2024', '1709255280000', 'updateProjectAuctionStatusGszJobHandler', 'bid-service', '1709254537719');
INSERT INTO `time_task` VALUES ('172', '1905', '1763367415556603904', 'eee', '180', 'http://192.168.2.241:5092/xxl-job-admin/', '0 8 9 2 3 ? 2024', '86400000', 'updateProjectAuctionStatusYjsJobHandler', 'bid-service', '1709254537746');
INSERT INTO `time_task` VALUES ('173', '1903', '1763379179409113088', 'rr', '181', 'http://192.168.2.241:5092/xxl-job-admin/', '0 45 9 1 3 ? 2024', '1709257500000', 'updateProjectAuctionStatusJyzJobHandler', 'bid-service', '1709257341479');
INSERT INTO `time_task` VALUES ('174', '1904', '1763379179409113088', 'rr', '182', 'http://192.168.2.241:5092/xxl-job-admin/', '30 50 9 1 3 ? 2024', '1709257800000', 'updateProjectAuctionStatusGszJobHandler', 'bid-service', '1709257341506');
INSERT INTO `time_task` VALUES ('175', '1905', '1763379179409113088', 'rr', '183', 'http://192.168.2.241:5092/xxl-job-admin/', '0 50 9 2 3 ? 2024', '86400000', 'updateProjectAuctionStatusYjsJobHandler', 'bid-service', '1709257341543');
INSERT INTO `time_task` VALUES ('176', '1903', '1763441023326879744', '1.2万吨成品砂石包（3%税率）', '184', 'http://192.168.2.241:5092/xxl-job-admin/', '0 0 14 1 3 ? 2024', '1709272800000', 'updateProjectAuctionStatusJyzJobHandler', 'bid-service', '1709272088158');
INSERT INTO `time_task` VALUES ('177', '1904', '1763441023326879744', '1.2万吨成品砂石包（3%税率）', '185', 'http://192.168.2.241:5092/xxl-job-admin/', '0 10 14 1 3 ? 2024', '1709273400000', 'updateProjectAuctionStatusGszJobHandler', 'bid-service', '1709272088184');
INSERT INTO `time_task` VALUES ('178', '1905', '1763441023326879744', '1.2万吨成品砂石包（3%税率）', '186', 'http://192.168.2.241:5092/xxl-job-admin/', '0 10 14 2 3 ? 2024', '86400000', 'updateProjectAuctionStatusYjsJobHandler', 'bid-service', '1709272088208');
INSERT INTO `time_task` VALUES ('179', '1903', '1763449500778627072', '1.3万吨成品砂石包（3%税率）', '187', 'http://192.168.2.241:5092/xxl-job-admin/', '0 40 14 1 3 ? 2024', '1709275200000', 'updateProjectAuctionStatusJyzJobHandler', 'bid-service', '1709274487242');
INSERT INTO `time_task` VALUES ('180', '1904', '1763449500778627072', '1.3万吨成品砂石包（3%税率）', '188', 'http://192.168.2.241:5092/xxl-job-admin/', '16 51 14 1 3 ? 2024', '1709275800000', 'updateProjectAuctionStatusGszJobHandler', 'bid-service', '1709274487266');
INSERT INTO `time_task` VALUES ('181', '1905', '1763449500778627072', '1.3万吨成品砂石包（3%税率）', '189', 'http://192.168.2.241:5092/xxl-job-admin/', '0 50 14 2 3 ? 2024', '86400000', 'updateProjectAuctionStatusYjsJobHandler', 'bid-service', '1709274487292');
INSERT INTO `time_task` VALUES ('182', '1903', '1763458046077435904', '1万吨成品砂石包13%', '190', 'http://192.168.2.241:5092/xxl-job-admin/', '0 0 15 1 3 ? 2024', '1709276400000', 'updateProjectAuctionStatusJyzJobHandler', 'bid-service', '1709276144738');
INSERT INTO `time_task` VALUES ('183', '1904', '1763458046077435904', '1万吨成品砂石包13%', '191', 'http://192.168.2.241:5092/xxl-job-admin/', '3 2 15 1 3 ? 2024', '1709276520000', 'updateProjectAuctionStatusGszJobHandler', 'bid-service', '1709276144784');
INSERT INTO `time_task` VALUES ('184', '1905', '1763458046077435904', '1万吨成品砂石包13%', '192', 'http://192.168.2.241:5092/xxl-job-admin/', '0 2 15 2 3 ? 2024', '86400000', 'updateProjectAuctionStatusYjsJobHandler', 'bid-service', '1709276144864');
INSERT INTO `time_task` VALUES ('185', '1903', '1763479443084410880', '测试1001', '193', 'http://192.168.2.241:5092/xxl-job-admin/', '0 22 16 1 3 ? 2024', '1709281320000', 'updateProjectAuctionStatusJyzJobHandler', 'bid-service', '1709281246794');
INSERT INTO `time_task` VALUES ('186', '1904', '1763479443084410880', '测试1001', '194', 'http://192.168.2.241:5092/xxl-job-admin/', '41 27 16 1 3 ? 2024', '1709281620000', 'updateProjectAuctionStatusGszJobHandler', 'bid-service', '1709281246990');
INSERT INTO `time_task` VALUES ('187', '1905', '1763479443084410880', '测试1001', '195', 'http://192.168.2.241:5092/xxl-job-admin/', '0 25 16 2 3 ? 2024', '86400000', 'updateProjectAuctionStatusYjsJobHandler', 'bid-service', '1709281247075');
INSERT INTO `time_task` VALUES ('188', '1906', '1763479443084410880', '测试1001', '196', 'http://192.168.2.241:5092/xxl-job-admin/', '0 25 16 1 3 ? 2024', '1709281498000', 'checkProjectBidStatusJobHandler', 'bid-service', '1709281247752');
INSERT INTO `time_task` VALUES ('189', '1903', '1763482136041488384', '测试9001', '197', 'http://192.168.2.241:5092/xxl-job-admin/', '0 32 16 1 3 ? 2024', '1709281920000', 'updateProjectAuctionStatusJyzJobHandler', 'bid-service', '1709281885010');
INSERT INTO `time_task` VALUES ('190', '1904', '1763482136041488384', '测试9001', '198', 'http://192.168.2.241:5092/xxl-job-admin/', '0 37 16 1 3 ? 2024', '1709282220000', 'updateProjectAuctionStatusGszJobHandler', 'bid-service', '1709281885081');
INSERT INTO `time_task` VALUES ('191', '1905', '1763482136041488384', '测试9001', '199', 'http://192.168.2.241:5092/xxl-job-admin/', '0 35 16 2 3 ? 2024', '86400000', 'updateProjectAuctionStatusYjsJobHandler', 'bid-service', '1709281885109');
INSERT INTO `time_task` VALUES ('192', '1906', '1763482136041488384', '测试9001', '200', 'http://192.168.2.241:5092/xxl-job-admin/', '0 35 16 1 3 ? 2024', '1709282098000', 'checkProjectBidStatusJobHandler', 'bid-service', '1709281885137');
INSERT INTO `time_task` VALUES ('193', '1903', '1763489556457324544', '测试1002', '201', 'http://192.168.2.241:5092/xxl-job-admin/', '0 4 17 1 3 ? 2024', '1709283840000', 'updateProjectAuctionStatusJyzJobHandler', 'bid-service', '1709283787734');
INSERT INTO `time_task` VALUES ('194', '1904', '1763489556457324544', '测试1002', '202', 'http://192.168.2.241:5092/xxl-job-admin/', '0 9 17 1 3 ? 2024', '1709284140000', 'updateProjectAuctionStatusGszJobHandler', 'bid-service', '1709283787759');
INSERT INTO `time_task` VALUES ('195', '1905', '1763489556457324544', '测试1002', '203', 'http://192.168.2.241:5092/xxl-job-admin/', '0 7 17 2 3 ? 2024', '86400000', 'updateProjectAuctionStatusYjsJobHandler', 'bid-service', '1709283787785');
INSERT INTO `time_task` VALUES ('196', '1906', '1763489556457324544', '测试1002', '204', 'http://192.168.2.241:5092/xxl-job-admin/', '0 7 17 1 3 ? 2024', '1709284018000', 'checkProjectBidStatusJobHandler', 'bid-service', '1709283787829');
INSERT INTO `time_task` VALUES ('197', '1903', '1763493323638571008', '测试10003', '205', 'http://192.168.2.241:5092/xxl-job-admin/', '0 18 17 1 3 ? 2024', '1709284680000', 'updateProjectAuctionStatusJyzJobHandler', 'bid-service', '1709284563573');
INSERT INTO `time_task` VALUES ('198', '1904', '1763493323638571008', '测试10003', '206', 'http://192.168.2.241:5092/xxl-job-admin/', '6 24 17 1 3 ? 2024', '1709284980000', 'updateProjectAuctionStatusGszJobHandler', 'bid-service', '1709284563616');
INSERT INTO `time_task` VALUES ('199', '1905', '1763493323638571008', '测试10003', '207', 'http://192.168.2.241:5092/xxl-job-admin/', '0 21 17 2 3 ? 2024', '86400000', 'updateProjectAuctionStatusYjsJobHandler', 'bid-service', '1709284563755');
INSERT INTO `time_task` VALUES ('200', '1906', '1763493323638571008', '测试10003', '208', 'http://192.168.2.241:5092/xxl-job-admin/', '0 21 17 1 3 ? 2024', '1709284858000', 'checkProjectBidStatusJobHandler', 'bid-service', '1709284563784');
INSERT INTO `time_task` VALUES ('201', '1903', '1763495849314222080', '测试1005', '209', 'http://192.168.2.241:5092/xxl-job-admin/', '0 27 17 1 3 ? 2024', '1709285220000', 'updateProjectAuctionStatusJyzJobHandler', 'bid-service', '1709285157283');
INSERT INTO `time_task` VALUES ('202', '1904', '1763495849314222080', '测试1005', '210', 'http://192.168.2.241:5092/xxl-job-admin/', '0 30 17 1 3 ? 2024', '1709285400000', 'updateProjectAuctionStatusGszJobHandler', 'bid-service', '1709285157321');
INSERT INTO `time_task` VALUES ('203', '1905', '1763495849314222080', '测试1005', '211', 'http://192.168.2.241:5092/xxl-job-admin/', '0 28 17 2 3 ? 2024', '86400000', 'updateProjectAuctionStatusYjsJobHandler', 'bid-service', '1709285157348');
INSERT INTO `time_task` VALUES ('204', '1906', '1763495849314222080', '测试1005', '212', 'http://192.168.2.241:5092/xxl-job-admin/', '0 28 17 1 3 ? 2024', '1709285278000', 'checkProjectBidStatusJobHandler', 'bid-service', '1709285157376');
INSERT INTO `time_task` VALUES ('205', '1903', '1763497676986384384', '测试1001', '213', 'http://192.168.2.241:5092/xxl-job-admin/', '0 34 17 1 3 ? 2024', '1709285640000', 'updateProjectAuctionStatusJyzJobHandler', 'bid-service', '1709285588432');
INSERT INTO `time_task` VALUES ('206', '1904', '1763497676986384384', '测试1001', '214', 'http://192.168.2.241:5092/xxl-job-admin/', '0 37 17 1 3 ? 2024', '1709285820000', 'updateProjectAuctionStatusGszJobHandler', 'bid-service', '1709285588480');
INSERT INTO `time_task` VALUES ('207', '1905', '1763497676986384384', '测试1001', '215', 'http://192.168.2.241:5092/xxl-job-admin/', '0 35 17 2 3 ? 2024', '86400000', 'updateProjectAuctionStatusYjsJobHandler', 'bid-service', '1709285588528');
INSERT INTO `time_task` VALUES ('208', '1906', '1763497676986384384', '测试1001', '216', 'http://192.168.2.241:5092/xxl-job-admin/', '0 35 17 1 3 ? 2024', '1709285698000', 'checkProjectBidStatusJobHandler', 'bid-service', '1709285588554');
INSERT INTO `time_task` VALUES ('209', '1903', '1763499670417440768', '测试1002', '217', 'http://192.168.2.241:5092/xxl-job-admin/', '0 42 17 1 3 ? 2024', '1709286120000', 'updateProjectAuctionStatusJyzJobHandler', 'bid-service', '1709286064018');
INSERT INTO `time_task` VALUES ('210', '1904', '1763499670417440768', '测试1002', '218', 'http://192.168.2.241:5092/xxl-job-admin/', '24 48 17 1 3 ? 2024', '1709286300000', 'updateProjectAuctionStatusGszJobHandler', 'bid-service', '1709286064073');
INSERT INTO `time_task` VALUES ('211', '1905', '1763499670417440768', '测试1002', '219', 'http://192.168.2.241:5092/xxl-job-admin/', '0 43 17 2 3 ? 2024', '86400000', 'updateProjectAuctionStatusYjsJobHandler', 'bid-service', '1709286064103');
INSERT INTO `time_task` VALUES ('212', '1906', '1763499670417440768', '测试1002', '220', 'http://192.168.2.241:5092/xxl-job-admin/', '0 43 17 1 3 ? 2024', '1709286170000', 'checkProjectBidStatusJobHandler', 'bid-service', '1709286064132');
INSERT INTO `time_task` VALUES ('213', '1903', '1763500873318662144', '测试 无人拍111', '221', 'http://192.168.2.241:5092/xxl-job-admin/', '0 47 17 1 3 ? 2024', '1709286420000', 'updateProjectAuctionStatusJyzJobHandler', 'bid-service', '1709286350139');
INSERT INTO `time_task` VALUES ('214', '1904', '1763500873318662144', '测试 无人拍111', '222', 'http://192.168.2.241:5092/xxl-job-admin/', '0 50 17 1 3 ? 2024', '1709286600000', 'updateProjectAuctionStatusGszJobHandler', 'bid-service', '1709286350308');
INSERT INTO `time_task` VALUES ('215', '1905', '1763500873318662144', '测试 无人拍111', '223', 'http://192.168.2.241:5092/xxl-job-admin/', '0 50 17 2 3 ? 2024', '86400000', 'updateProjectAuctionStatusYjsJobHandler', 'bid-service', '1709286350335');
INSERT INTO `time_task` VALUES ('216', '1906', '1763500873318662144', '测试 无人拍111', '224', 'http://192.168.2.241:5092/xxl-job-admin/', '0 50 17 1 3 ? 2024', '1709286590000', 'checkProjectBidStatusJobHandler', 'bid-service', '1709286350756');
INSERT INTO `time_task` VALUES ('217', '1903', '1764450632762130432', '1万吨成品砂石3%', '225', 'http://192.168.2.241:5092/xxl-job-admin/', '0 20 9 4 3 ? 2024', '1709515200000', 'updateProjectAuctionStatusJyzJobHandler', 'bid-service', '1709512801637');
INSERT INTO `time_task` VALUES ('218', '1904', '1764450632762130432', '1万吨成品砂石3%', '226', 'http://192.168.2.241:5092/xxl-job-admin/', '13 33 9 4 3 ? 2024', '1709515920000', 'updateProjectAuctionStatusGszJobHandler', 'bid-service', '1709512801730');
INSERT INTO `time_task` VALUES ('219', '1905', '1764450632762130432', '1万吨成品砂石3%', '227', 'http://192.168.2.241:5092/xxl-job-admin/', '0 30 9 5 3 ? 2024', '86400000', 'updateProjectAuctionStatusYjsJobHandler', 'bid-service', '1709512801760');
INSERT INTO `time_task` VALUES ('220', '1906', '1764450632762130432', '1万吨成品砂石3%', '228', 'http://192.168.2.241:5092/xxl-job-admin/', '0 30 9 4 3 ? 2024', '1709515790000', 'checkProjectBidStatusJobHandler', 'bid-service', '1709512801955');
INSERT INTO `time_task` VALUES ('221', '1903', '1764466513923801088', '2万吨成品砂石', '229', 'http://192.168.2.241:5092/xxl-job-admin/', '0 45 9 4 3 ? 2024', '1709516700000', 'updateProjectAuctionStatusJyzJobHandler', 'bid-service', '1709516578551');
INSERT INTO `time_task` VALUES ('222', '1904', '1764466513923801088', '2万吨成品砂石', '230', 'http://192.168.2.241:5092/xxl-job-admin/', '22 56 9 4 3 ? 2024', '1709517000000', 'updateProjectAuctionStatusGszJobHandler', 'bid-service', '1709516578653');
INSERT INTO `time_task` VALUES ('223', '1905', '1764466513923801088', '2万吨成品砂石', '231', 'http://192.168.2.241:5092/xxl-job-admin/', '0 48 9 5 3 ? 2024', '86400000', 'updateProjectAuctionStatusYjsJobHandler', 'bid-service', '1709516579002');
INSERT INTO `time_task` VALUES ('224', '1906', '1764466513923801088', '2万吨成品砂石', '232', 'http://192.168.2.241:5092/xxl-job-admin/', '0 48 9 4 3 ? 2024', '1709516870000', 'checkProjectBidStatusJobHandler', 'bid-service', '1709516579099');
INSERT INTO `time_task` VALUES ('225', '1903', '1764839215079620608', '测试', '233', 'http://192.168.2.241:5092/xxl-job-admin/', '25 23 10 6 3 ? 2024', '1709691805000', 'updateProjectAuctionStatusJyzJobHandler', 'bid-service', '1709605446515');
INSERT INTO `time_task` VALUES ('226', '1904', '1764839215079620608', '测试', '234', 'http://192.168.2.241:5092/xxl-job-admin/', '25 28 10 6 3 ? 2024', '1709692105000', 'updateProjectAuctionStatusGszJobHandler', 'bid-service', '1709605446704');
INSERT INTO `time_task` VALUES ('227', '1905', '1764839215079620608', '测试', '235', 'http://192.168.2.241:5092/xxl-job-admin/', '25 28 10 7 3 ? 2024', '86400000', 'updateProjectAuctionStatusYjsJobHandler', 'bid-service', '1709605447108');
INSERT INTO `time_task` VALUES ('228', '1906', '1764839215079620608', '测试', '236', 'http://192.168.2.241:5092/xxl-job-admin/', '25 28 10 6 3 ? 2024', '1709692095000', 'checkProjectBidStatusJobHandler', 'bid-service', '1709605447220');
INSERT INTO `time_task` VALUES ('229', '1903', '1768481872154722304', '5万吨砂石成品（HYTZ-2403-1-5WT）', '237', 'http://192.168.2.241:5092/xxl-job-admin/', '0 0 14 15 3 ? 2024', '1710482400000', 'updateProjectAuctionStatusJyzJobHandler', 'bid-service', '1710474081049');
INSERT INTO `time_task` VALUES ('230', '1904', '1768481872154722304', '5万吨砂石成品（HYTZ-2403-1-5WT）', '238', 'http://192.168.2.241:5092/xxl-job-admin/', '0 10 14 15 3 ? 2024', '1710483000000', 'updateProjectAuctionStatusGszJobHandler', 'bid-service', '1710474081316');
INSERT INTO `time_task` VALUES ('231', '1905', '1768481872154722304', '5万吨砂石成品（HYTZ-2403-1-5WT）', '239', 'http://192.168.2.241:5092/xxl-job-admin/', '0 10 14 16 3 ? 2024', '86400000', 'updateProjectAuctionStatusYjsJobHandler', 'bid-service', '1710474082062');
INSERT INTO `time_task` VALUES ('232', '1906', '1768481872154722304', '5万吨砂石成品（HYTZ-2403-1-5WT）', '240', 'http://192.168.2.241:5092/xxl-job-admin/', '0 10 14 15 3 ? 2024', '1710482990000', 'checkProjectBidStatusJobHandler', 'bid-service', '1710474082624');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `org_id` bigint DEFAULT NULL,
  `org_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `user_sex` tinyint DEFAULT NULL,
  `email` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `mobile_number` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pic_url` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `role_key` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `role_id` bigint DEFAULT NULL,
  `reg_type` bigint DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `del_flag` tinyint DEFAULT NULL,
  `create_time` bigint DEFAULT NULL,
  `login_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `login_time` bigint DEFAULT NULL,
  `park_id` bigint DEFAULT NULL,
  `dept_id` bigint DEFAULT NULL,
  `dept_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `post_id` bigint DEFAULT NULL,
  `post_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `region_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1752888172339032065 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '1691166880011331111', '系统管理单位', '超级管理员', 'admin', '5a90c84b980f4a5a86e550c8fd2049c6a8209ec0b3cc9dcaafc5a579f0a43dd4', '1', null, '15208492742', null, 'SuperAdmin', '1501859873070829561', '8', '1', '0', '1645431809000', '192.168.1.124', '1645431809000', '1500000286550000001', null, '财务部', null, '董事长', '5101');
INSERT INTO `user` VALUES ('1740303644607393792', '1691166880011331111', null, '销售部员工12', 'hy', '31e2873dac316d790d679b0965cff474238c5c78cf830b7fa6cea6a3d1a6f81d', null, null, null, null, 'Admin', '1740301348876140544', '8', '1', '0', '1703755696809', null, null, null, '11', '测试部门', null, null, null);
INSERT INTO `user` VALUES ('1742090904849641472', '1691166880011331111', null, 'mm', 'mm', '31e2873dac316d790d679b0965cff474238c5c78cf830b7fa6cea6a3d1a6f81d', null, null, null, null, 'Admin', '1740301348876140544', '8', '1', '0', '1704181812857', null, null, null, '14', '测试部门', null, null, null);
INSERT INTO `user` VALUES ('1747059398934528000', null, '假日公司', '莉莉', '13880640289', '31e2873dac316d790d679b0965cff474238c5c78cf830b7fa6cea6a3d1a6f81d', '1', null, '13880645089', null, 'Normal', '1503682070533906432', '8', '1', '0', '1705366394157', null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('1747160939783811072', null, '单位1', '王先生', '182244166903', '2d2f3e37fa73d8e061eb8c3ff68e71966e3a0ccf95da1fc6660ef477e405f1cf', '1', null, '18224418603', null, 'Normal', '1503682070533906432', '8', '1', '0', '1705390603382', null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('1748226820156715008', null, '欧驰实业有限公司', '高霞', '13008144332', 'a35847702beb5f18d154b47ebd0ac66e3f2b28247a0ddfa5591073cdc6790e5d', '1', null, '13008144441', null, 'Normal', '1503682070533906432', '8', '1', '0', '1705644729066', null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('1748235470346678272', null, '笔锋贸易有限公司', '邓平', '13678160693', '7e42d6dc83a44f701c4958c629274fcafe289c3cedb5bab1408749dd467932bb', '1', null, '13678160651', null, 'Normal', '1503682070533906432', '8', '1', '0', '1705646791432', null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('1748936363169837056', null, '砂石经营公司', '张涛', '13622089783', '31e2873dac316d790d679b0965cff474238c5c78cf830b7fa6cea6a3d1a6f81d', '1', null, '13678089783', null, 'Normal', '1503682070533906432', '8', '1', '0', '1705813897303', null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('1751788295852945408', null, '测试公司', '王丽', '13458984241', '31e2873dac316d790d679b0965cff474238c5c78cf830b7fa6cea6a3d1a6f81d', '1', null, '13458984241', null, 'Normal', '1503682070533906432', '8', '1', '0', '1706493851041', null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('1752145006631612416', null, '唐三藏贸易公司', '邓笔峰', '15982310279', '31e2873dac316d790d679b0965cff474238c5c78cf830b7fa6cea6a3d1a6f81d', '1', null, '15982060279', null, 'Normal', '1503682070533906432', '8', '1', '0', '1706578897518', null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('1752888172339032064', null, '永城', '曾林', '13330201096', '31e2873dac316d790d679b0965cff474238c5c78cf830b7fa6cea6a3d1a6f81d', '1', null, '13330985096', null, 'Normal', '1503682070533906432', '8', '1', '0', '1706756082030', null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `role_id` bigint DEFAULT NULL,
  `create_time` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '1', '1501859873070829561', null);
INSERT INTO `user_role` VALUES ('83', '1739841454062473216', '1739840761553522688', '1703645501996');
INSERT INTO `user_role` VALUES ('90', '1740303644607393792', '1740301348876140544', '1703755696809');
INSERT INTO `user_role` VALUES ('101', '1742090904849641472', '1740301348876140544', '1704181812857');
INSERT INTO `user_role` VALUES ('102', '1747059398934528000', '1503682070533906432', '1705366394157');
INSERT INTO `user_role` VALUES ('103', '1747160939783811072', '1503682070533906432', '1705390603382');
INSERT INTO `user_role` VALUES ('104', '1748226820156715008', '1503682070533906432', '1705644729066');
INSERT INTO `user_role` VALUES ('105', '1748235470346678272', '1503682070533906432', '1705646791432');
INSERT INTO `user_role` VALUES ('106', '1748936363169837056', '1503682070533906432', '1705813897303');
INSERT INTO `user_role` VALUES ('107', '1751788295852945408', '1503682070533906432', '1706493851041');
INSERT INTO `user_role` VALUES ('108', '1752145006631612416', '1503682070533906432', '1706578897518');
INSERT INTO `user_role` VALUES ('109', '1752888172339032064', '1503682070533906432', '1706756082030');

-- ----------------------------
-- Table structure for xxl_job_group
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_group`;
CREATE TABLE `xxl_job_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '执行器AppName',
  `title` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '执行器名称',
  `address_type` tinyint NOT NULL DEFAULT '0' COMMENT '执行器地址类型：0=自动注册、1=手动录入',
  `address_list` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci COMMENT '执行器地址列表，多地址逗号分隔',
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of xxl_job_group
-- ----------------------------
INSERT INTO `xxl_job_group` VALUES ('1', 'xxl-job-executor-sample', '示例执行器', '0', null, '2024-07-12 11:51:20');
INSERT INTO `xxl_job_group` VALUES ('2', 'bid-service', '竞价服务执行器', '0', 'http://172.17.0.15:9988/', '2024-07-12 11:51:20');

-- ----------------------------
-- Table structure for xxl_job_info
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_info`;
CREATE TABLE `xxl_job_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `job_group` int NOT NULL COMMENT '执行器主键ID',
  `job_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `add_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `author` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '作者',
  `alarm_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '报警邮件',
  `schedule_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'NONE' COMMENT '调度类型',
  `schedule_conf` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '调度配置，值含义取决于调度类型',
  `misfire_strategy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'DO_NOTHING' COMMENT '调度过期策略',
  `executor_route_strategy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '执行器路由策略',
  `executor_handler` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '执行器任务handler',
  `executor_param` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '执行器任务参数',
  `executor_block_strategy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '阻塞处理策略',
  `executor_timeout` int NOT NULL DEFAULT '0' COMMENT '任务执行超时时间，单位秒',
  `executor_fail_retry_count` int NOT NULL DEFAULT '0' COMMENT '失败重试次数',
  `glue_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'GLUE类型',
  `glue_source` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci COMMENT 'GLUE源代码',
  `glue_remark` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'GLUE备注',
  `glue_updatetime` datetime DEFAULT NULL COMMENT 'GLUE更新时间',
  `child_jobid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '子任务ID，多个逗号分隔',
  `trigger_status` tinyint NOT NULL DEFAULT '0' COMMENT '调度状态：0-停止，1-运行',
  `trigger_last_time` bigint NOT NULL DEFAULT '0' COMMENT '上次调度时间',
  `trigger_next_time` bigint NOT NULL DEFAULT '0' COMMENT '下次调度时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of xxl_job_info
-- ----------------------------
INSERT INTO `xxl_job_info` VALUES ('1', '1', '测试任务1', '2018-11-03 22:21:31', '2018-11-03 22:21:31', 'XXL', '', 'CRON', '0 0 0 * * ? *', 'DO_NOTHING', 'FIRST', 'demoJobHandler', '', 'SERIAL_EXECUTION', '0', '0', 'BEAN', '', 'GLUE代码初始化', '2018-11-03 22:21:31', '', '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('14', '2', '测试项目11(2)_修改项目竞拍状态为报名中定时任务', '2023-12-28 10:51:27', '2023-12-28 10:51:27', 'jingjia', null, 'CRON', '0 0 14 28 12 ? 2023', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusBmzJobHandler', '{\"projectId\":2}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2023-12-28 10:51:27', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('15', '2', '测试项目11(2)_修改项目竞拍状态为交易中定时任务', '2023-12-28 10:51:27', '2023-12-28 10:51:27', 'jingjia', null, 'CRON', '0 0 14 31 12 ? 2023', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":2}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2023-12-28 10:51:27', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('16', '2', '测试项目11(2)_修改项目竞拍状态为公示中定时任务', '2023-12-28 10:51:27', '2023-12-28 10:51:27', 'jingjia', null, 'CRON', '0 30 14 31 12 ? 2023', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":2}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2023-12-28 10:51:27', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('17', '2', '测试项目11(2)_修改项目竞拍状态为已结束定时任务', '2023-12-28 10:51:27', '2023-12-28 10:51:27', 'jingjia', null, 'CRON', '0 30 14 3 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":2}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2023-12-28 10:51:27', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('18', '2', 'safsdf(10)_修改项目竞拍状态为报名中定时任务', '2023-12-28 11:01:30', '2023-12-28 11:01:30', 'jingjia', null, 'CRON', '5 5 11 28 12 ? 2023', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusBmzJobHandler', '{\"projectId\":10}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2023-12-28 11:01:30', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('19', '2', 'safsdf(10)_修改项目竞拍状态为交易中定时任务', '2023-12-28 11:01:30', '2023-12-28 11:01:30', 'jingjia', null, 'CRON', '5 5 11 31 12 ? 2023', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":10}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2023-12-28 11:01:30', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('20', '2', 'safsdf(10)_修改项目竞拍状态为公示中定时任务', '2023-12-28 11:01:30', '2023-12-28 11:01:30', 'jingjia', null, 'CRON', '5 7 11 31 12 ? 2023', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":10}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2023-12-28 11:01:30', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('21', '2', 'safsdf(10)_修改项目竞拍状态为已结束定时任务', '2023-12-28 11:01:30', '2023-12-28 11:01:30', 'jingjia', null, 'CRON', '5 7 11 3 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":10}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2023-12-28 11:01:30', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('22', '2', 'sdfgd(11)_修改项目竞拍状态为交易中定时任务', '2023-12-28 11:43:04', '2023-12-28 11:43:04', 'jingjia', null, 'CRON', '0 45 11 28 12 ? 2023', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":11}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2023-12-28 11:43:04', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('23', '2', 'sdfgd(11)_修改项目竞拍状态为公示中定时任务', '2023-12-28 11:43:04', '2023-12-28 11:43:04', 'jingjia', null, 'CRON', '0 46 11 28 12 ? 2023', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":11}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2023-12-28 11:43:04', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('24', '2', 'sdfgd(11)_修改项目竞拍状态为已结束定时任务', '2023-12-28 11:43:04', '2023-12-28 11:43:04', 'jingjia', null, 'CRON', '0 46 11 31 12 ? 2023', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":11}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2023-12-28 11:43:04', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('25', '2', 'zy测试(12)_修改项目竞拍状态为报名中定时任务', '2023-12-28 12:13:19', '2023-12-28 12:13:19', 'jingjia', null, 'CRON', '0 15 12 28 12 ? 2023', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusBmzJobHandler', '{\"projectId\":12}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2023-12-28 12:13:19', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('26', '2', 'zy测试(12)_修改项目竞拍状态为交易中定时任务', '2023-12-28 12:13:19', '2023-12-28 12:13:19', 'jingjia', null, 'CRON', '0 15 12 31 12 ? 2023', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":12}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2023-12-28 12:13:19', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('27', '2', 'zy测试(12)_修改项目竞拍状态为公示中定时任务', '2023-12-28 12:13:20', '2023-12-28 12:13:20', 'jingjia', null, 'CRON', '0 17 12 31 12 ? 2023', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":12}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2023-12-28 12:13:20', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('28', '2', 'zy测试(12)_修改项目竞拍状态为已结束定时任务', '2023-12-28 12:13:20', '2023-12-28 12:13:20', 'jingjia', null, 'CRON', '0 17 12 3 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":12}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2023-12-28 12:13:20', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('35', '2', 'Zhang测试(13)_修改项目竞拍状态为交易中定时任务', '2023-12-28 12:43:22', '2023-12-28 12:43:22', 'jingjia', null, 'CRON', '0 44 12 28 12 ? 2023', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":13}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2023-12-28 12:43:22', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('36', '2', 'Zhang测试(13)_修改项目竞拍状态为公示中定时任务', '2023-12-28 12:43:22', '2023-12-28 12:43:22', 'jingjia', null, 'CRON', '0 46 12 28 12 ? 2023', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":13}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2023-12-28 12:43:22', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('37', '2', 'Zhang测试(13)_修改项目竞拍状态为已结束定时任务', '2023-12-28 12:43:22', '2023-12-28 12:43:22', 'jingjia', null, 'CRON', '0 46 12 31 12 ? 2023', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":13}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2023-12-28 12:43:22', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('38', '2', '测试状态(14)_修改项目竞拍状态为交易中定时任务', '2023-12-28 14:08:34', '2023-12-28 14:08:34', 'jingjia', null, 'CRON', '0 9 14 28 12 ? 2023', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":14}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2023-12-28 14:08:34', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('39', '2', '测试状态(14)_修改项目竞拍状态为公示中定时任务', '2023-12-28 14:08:34', '2023-12-28 14:08:34', 'jingjia', null, 'CRON', '0 11 14 28 12 ? 2023', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":14}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2023-12-28 14:08:34', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('40', '2', '测试状态(14)_修改项目竞拍状态为已结束定时任务', '2023-12-28 14:08:34', '2023-12-28 14:08:34', 'jingjia', null, 'CRON', '0 11 14 31 12 ? 2023', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":14}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2023-12-28 14:08:34', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('41', '2', '测试交易中标(15)_修改项目竞拍状态为交易中定时任务', '2023-12-28 14:19:56', '2023-12-28 14:19:56', 'jingjia', null, 'CRON', '0 32 14 28 12 ? 2023', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":15}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2023-12-28 14:19:56', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('42', '2', '测试交易中标(15)_修改项目竞拍状态为公示中定时任务', '2023-12-28 14:19:56', '2023-12-28 14:19:56', 'jingjia', null, 'CRON', '0 37 14 28 12 ? 2023', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":15}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2023-12-28 14:19:56', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('43', '2', '测试交易中标(15)_修改项目竞拍状态为已结束定时任务', '2023-12-28 14:19:56', '2023-12-28 14:19:56', 'jingjia', null, 'CRON', '0 37 14 31 12 ? 2023', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":15}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2023-12-28 14:19:56', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('44', '2', '这是一个沙石项目(16)_修改项目竞拍状态为交易中定时任务', '2023-12-28 15:13:26', '2023-12-28 15:13:26', 'jingjia', null, 'CRON', '0 17 15 28 12 ? 2023', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":16}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2023-12-28 15:13:26', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('45', '2', '这是一个沙石项目(16)_修改项目竞拍状态为公示中定时任务', '2023-12-28 15:13:26', '2023-12-28 15:13:26', 'jingjia', null, 'CRON', '0 22 15 28 12 ? 2023', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":16}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2023-12-28 15:13:26', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('46', '2', '这是一个沙石项目(16)_修改项目竞拍状态为已结束定时任务', '2023-12-28 15:13:26', '2023-12-28 15:13:26', 'jingjia', null, 'CRON', '0 22 15 31 12 ? 2023', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":16}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2023-12-28 15:13:26', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('47', '2', '沙石去微软(17)_修改项目竞拍状态为交易中定时任务', '2023-12-28 15:34:58', '2023-12-28 15:34:58', 'jingjia', null, 'CRON', '0 40 15 28 12 ? 2023', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":17}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2023-12-28 15:34:58', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('48', '2', '沙石去微软(17)_修改项目竞拍状态为公示中定时任务', '2023-12-28 15:34:58', '2023-12-28 15:34:58', 'jingjia', null, 'CRON', '0 45 15 28 12 ? 2023', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":17}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2023-12-28 15:34:58', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('49', '2', '沙石去微软(17)_修改项目竞拍状态为已结束定时任务', '2023-12-28 15:34:58', '2023-12-28 16:04:07', 'jingjia', '', 'CRON', '0 5 16 28 12 ? 2023', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":17}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2023-12-28 15:34:58', '', '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('50', '2', '测试沙石项目(20)_修改项目竞拍状态为交易中定时任务', '2024-01-02 10:51:37', '2024-01-02 10:51:37', 'jingjia', null, 'CRON', '0 0 0 5 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":20}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-02 10:51:37', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('51', '2', '测试沙石项目(20)_修改项目竞拍状态为公示中定时任务', '2024-01-02 10:51:37', '2024-01-02 10:51:37', 'jingjia', null, 'CRON', '0 5 0 5 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":20}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-02 10:51:37', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('52', '2', '测试沙石项目(20)_修改项目竞拍状态为已结束定时任务', '2024-01-02 10:51:37', '2024-01-02 10:51:37', 'jingjia', null, 'CRON', '0 5 0 8 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":20}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-02 10:51:37', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('61', '2', '我们的沙石(21)_修改项目竞拍状态为交易中定时任务', '2024-01-02 11:24:53', '2024-01-02 11:24:53', 'jingjia', null, 'CRON', '0 0 0 5 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":21}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-02 11:24:53', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('62', '2', '我们的沙石(21)_修改项目竞拍状态为公示中定时任务', '2024-01-02 11:24:53', '2024-01-02 11:24:53', 'jingjia', null, 'CRON', '0 5 0 5 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":21}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-02 11:24:53', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('63', '2', '我们的沙石(21)_修改项目竞拍状态为已结束定时任务', '2024-01-02 11:24:53', '2024-01-02 11:24:53', 'jingjia', null, 'CRON', '0 5 0 8 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":21}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-02 11:24:53', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('64', '2', '沙石项目(22)_修改项目竞拍状态为交易中定时任务', '2024-01-02 14:05:29', '2024-01-02 14:05:29', 'jingjia', null, 'CRON', '0 15 14 2 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":22}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-02 14:05:29', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('65', '2', '沙石项目(22)_修改项目竞拍状态为公示中定时任务', '2024-01-02 14:05:29', '2024-01-02 14:05:29', 'jingjia', null, 'CRON', '0 25 14 2 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":22}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-02 14:05:29', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('66', '2', '沙石项目(22)_修改项目竞拍状态为已结束定时任务', '2024-01-02 14:05:29', '2024-01-02 14:05:29', 'jingjia', null, 'CRON', '0 25 14 5 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":22}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-02 14:05:29', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('67', '2', '测试竞价(23)_修改项目竞拍状态为交易中定时任务', '2024-01-02 15:15:47', '2024-01-02 15:15:47', 'jingjia', null, 'CRON', '0 21 15 2 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":23}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-02 15:15:47', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('68', '2', '测试竞价(23)_修改项目竞拍状态为公示中定时任务', '2024-01-02 15:15:47', '2024-01-02 15:15:47', 'jingjia', null, 'CRON', '0 51 15 2 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":23}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-02 15:15:47', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('69', '2', '测试竞价(23)_修改项目竞拍状态为已结束定时任务', '2024-01-02 15:15:47', '2024-01-02 15:15:47', 'jingjia', null, 'CRON', '0 51 15 5 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":23}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-02 15:15:47', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('70', '2', '测试项目9911(1745005746197983232)_修改项目竞拍状态为交易中定时任务', '2024-01-11 09:05:48', '2024-01-11 09:05:48', 'jingjia', null, 'CRON', '0 0 15 12 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":1745005746197983232}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-11 09:05:48', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('71', '2', '测试项目9911(1745005746197983232)_修改项目竞拍状态为公示中定时任务', '2024-01-11 09:05:48', '2024-01-11 09:05:48', 'jingjia', null, 'CRON', '0 30 15 12 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":1745005746197983232}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-11 09:05:48', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('72', '2', '测试项目9911(1745005746197983232)_修改项目竞拍状态为已结束定时任务', '2024-01-11 09:05:48', '2024-01-11 09:05:48', 'jingjia', null, 'CRON', '0 30 15 15 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":1745005746197983232}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-11 09:05:48', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('73', '2', '组合项目(1745629932272525312)_修改项目竞拍状态为交易中定时任务', '2024-01-12 10:26:23', '2024-01-12 10:26:23', 'jingjia', null, 'CRON', '0 0 11 12 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":1745629932272525312}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-12 10:26:23', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('74', '2', '组合项目(1745629932272525312)_修改项目竞拍状态为公示中定时任务', '2024-01-12 10:26:23', '2024-01-12 10:26:23', 'jingjia', null, 'CRON', '0 11 11 12 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":1745629932272525312}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-12 10:26:23', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('75', '2', '组合项目(1745629932272525312)_修改项目竞拍状态为已结束定时任务', '2024-01-12 10:26:23', '2024-01-12 10:26:23', 'jingjia', null, 'CRON', '0 11 11 15 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":1745629932272525312}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-12 10:26:23', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('76', '2', '测试122(1745643417811353600)_修改项目竞拍状态为交易中定时任务', '2024-01-12 11:07:02', '2024-01-12 16:11:17', 'jingjia', '', 'CRON', '0 12 16 12 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":1745643417811353600}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-12 11:07:02', '', '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('77', '2', '测试122(1745643417811353600)_修改项目竞拍状态为公示中定时任务', '2024-01-12 11:07:02', '2024-01-12 16:11:28', 'jingjia', '', 'CRON', '0 32 16 12 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":1745643417811353600}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-12 11:07:02', '', '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('78', '2', '测试122(1745643417811353600)_修改项目竞拍状态为已结束定时任务', '2024-01-12 11:07:02', '2024-01-12 15:18:22', 'jingjia', '', 'CRON', '0 23 15 15 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":1745643417811353600}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-12 11:07:02', '', '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('79', '2', '沙石组合(1745738032237289472)_修改项目竞拍状态为交易中定时任务', '2024-01-12 17:30:04', '2024-01-12 17:30:04', 'jingjia', null, 'CRON', '0 35 17 12 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":1745738032237289472}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-12 17:30:04', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('80', '2', '沙石组合(1745738032237289472)_修改项目竞拍状态为公示中定时任务', '2024-01-12 17:30:04', '2024-01-12 17:30:04', 'jingjia', null, 'CRON', '0 46 17 12 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":1745738032237289472}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-12 17:30:04', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('81', '2', '沙石组合(1745738032237289472)_修改项目竞拍状态为已结束定时任务', '2024-01-12 17:30:04', '2024-01-12 17:30:04', 'jingjia', null, 'CRON', '0 46 17 15 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":1745738032237289472}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-12 17:30:04', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('82', '2', '测试竞价222(1745745557313568768)_修改项目竞拍状态为交易中定时任务', '2024-01-12 17:53:22', '2024-01-12 17:53:22', 'jingjia', null, 'CRON', '0 59 17 12 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":1745745557313568768}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-12 17:53:22', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('83', '2', '测试竞价222(1745745557313568768)_修改项目竞拍状态为公示中定时任务', '2024-01-12 17:53:22', '2024-01-12 17:53:22', 'jingjia', null, 'CRON', '0 59 18 12 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":1745745557313568768}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-12 17:53:22', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('84', '2', '测试竞价222(1745745557313568768)_修改项目竞拍状态为已结束定时任务', '2024-01-12 17:53:22', '2024-01-12 17:53:22', 'jingjia', null, 'CRON', '0 59 18 15 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":1745745557313568768}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-12 17:53:22', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('85', '2', '哈哈哈哈哈(1745748383037145088)_修改项目竞拍状态为交易中定时任务', '2024-01-12 18:03:56', '2024-01-12 18:03:56', 'jingjia', null, 'CRON', '0 10 18 12 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":1745748383037145088}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-12 18:03:56', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('86', '2', '哈哈哈哈哈(1745748383037145088)_修改项目竞拍状态为公示中定时任务', '2024-01-12 18:03:56', '2024-01-12 18:03:56', 'jingjia', null, 'CRON', '0 40 18 12 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":1745748383037145088}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-12 18:03:56', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('87', '2', '哈哈哈哈哈(1745748383037145088)_修改项目竞拍状态为已结束定时任务', '2024-01-12 18:03:56', '2024-01-12 18:03:56', 'jingjia', null, 'CRON', '0 40 18 15 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":1745748383037145088}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-12 18:03:56', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('88', '2', '15沙石组合(1746715378525929472)_修改项目竞拍状态为交易中定时任务', '2024-01-15 10:06:28', '2024-01-15 10:06:28', 'jingjia', null, 'CRON', '0 16 10 15 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":1746715378525929472}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-15 10:06:28', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('89', '2', '15沙石组合(1746715378525929472)_修改项目竞拍状态为公示中定时任务', '2024-01-15 10:06:28', '2024-01-15 10:06:28', 'jingjia', null, 'CRON', '0 27 10 15 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":1746715378525929472}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-15 10:06:28', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('90', '2', '15沙石组合(1746715378525929472)_修改项目竞拍状态为已结束定时任务', '2024-01-15 10:06:28', '2024-01-15 10:06:28', 'jingjia', null, 'CRON', '0 27 10 18 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":1746715378525929472}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-15 10:06:28', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('91', '2', '16沙石组合(1746727510919348224)_修改项目竞拍状态为交易中定时任务', '2024-01-15 10:55:22', '2024-01-15 10:55:22', 'jingjia', null, 'CRON', '0 10 11 15 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":1746727510919348224}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-15 10:55:22', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('92', '2', '16沙石组合(1746727510919348224)_修改项目竞拍状态为公示中定时任务', '2024-01-15 10:55:22', '2024-01-15 10:55:22', 'jingjia', null, 'CRON', '0 21 11 15 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":1746727510919348224}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-15 10:55:22', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('93', '2', '16沙石组合(1746727510919348224)_修改项目竞拍状态为已结束定时任务', '2024-01-15 10:55:22', '2024-01-15 10:55:22', 'jingjia', null, 'CRON', '0 21 11 18 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":1746727510919348224}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-15 10:55:22', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('94', '2', '17沙石组合(1746732068068392960)_修改项目竞拍状态为交易中定时任务', '2024-01-15 11:12:40', '2024-01-15 11:12:40', 'jingjia', null, 'CRON', '0 20 11 15 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":1746732068068392960}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-15 11:12:40', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('95', '2', '17沙石组合(1746732068068392960)_修改项目竞拍状态为公示中定时任务', '2024-01-15 11:12:40', '2024-01-15 11:12:40', 'jingjia', null, 'CRON', '0 31 11 15 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":1746732068068392960}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-15 11:12:40', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('96', '2', '17沙石组合(1746732068068392960)_修改项目竞拍状态为已结束定时任务', '2024-01-15 11:12:40', '2024-01-15 11:12:40', 'jingjia', null, 'CRON', '0 31 11 18 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":1746732068068392960}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-15 11:12:40', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('97', '2', '18项目组合(1746768210658590720)_修改项目竞拍状态为交易中定时任务', '2024-01-15 13:36:16', '2024-01-15 13:36:16', 'jingjia', null, 'CRON', '0 45 13 15 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":1746768210658590720}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-15 13:36:16', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('98', '2', '18项目组合(1746768210658590720)_修改项目竞拍状态为公示中定时任务', '2024-01-15 13:36:16', '2024-01-15 13:36:16', 'jingjia', null, 'CRON', '0 15 14 15 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":1746768210658590720}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-15 13:36:16', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('99', '2', '18项目组合(1746768210658590720)_修改项目竞拍状态为已结束定时任务', '2024-01-15 13:36:16', '2024-01-15 13:36:16', 'jingjia', null, 'CRON', '0 15 14 18 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":1746768210658590720}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-15 13:36:16', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('100', '2', '20(1746806048292864000)_修改项目竞拍状态为交易中定时任务', '2024-01-15 16:06:40', '2024-01-15 16:06:40', 'jingjia', null, 'CRON', '0 15 16 15 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":1746806048292864000}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-15 16:06:40', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('101', '2', '20(1746806048292864000)_修改项目竞拍状态为公示中定时任务', '2024-01-15 16:06:40', '2024-01-15 16:06:40', 'jingjia', null, 'CRON', '0 15 18 15 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":1746806048292864000}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-15 16:06:40', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('102', '2', '20(1746806048292864000)_修改项目竞拍状态为已结束定时任务', '2024-01-15 16:06:40', '2024-01-15 16:06:40', 'jingjia', null, 'CRON', '0 15 18 18 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":1746806048292864000}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-15 16:06:40', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('103', '2', '21ddd(1746828334324514816)_修改项目竞拍状态为交易中定时任务', '2024-01-15 17:35:13', '2024-01-15 17:35:13', 'jingjia', null, 'CRON', '0 43 17 15 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":1746828334324514816}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-15 17:35:13', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('104', '2', '21ddd(1746828334324514816)_修改项目竞拍状态为公示中定时任务', '2024-01-15 17:35:13', '2024-01-15 17:35:13', 'jingjia', null, 'CRON', '0 43 19 15 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":1746828334324514816}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-15 17:35:13', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('105', '2', '21ddd(1746828334324514816)_修改项目竞拍状态为已结束定时任务', '2024-01-15 17:35:13', '2024-01-15 17:35:13', 'jingjia', null, 'CRON', '0 43 19 18 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":1746828334324514816}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-15 17:35:13', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('106', '2', '22组合项目(1747058584291639296)_修改项目竞拍状态为交易中定时任务', '2024-01-16 08:50:12', '2024-01-16 08:50:12', 'jingjia', null, 'CRON', '0 0 9 16 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":1747058584291639296}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-16 08:50:12', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('107', '2', '22组合项目(1747058584291639296)_修改项目竞拍状态为公示中定时任务', '2024-01-16 08:50:12', '2024-01-16 08:50:12', 'jingjia', null, 'CRON', '0 0 10 16 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":1747058584291639296}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-16 08:50:12', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('108', '2', '22组合项目(1747058584291639296)_修改项目竞拍状态为已结束定时任务', '2024-01-16 08:50:13', '2024-01-16 08:50:13', 'jingjia', null, 'CRON', '0 0 10 19 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":1747058584291639296}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-16 08:50:13', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('109', '2', '23项目组合(1747065164873596928)_修改项目竞拍状态为交易中定时任务', '2024-01-16 09:16:16', '2024-01-16 09:16:16', 'jingjia', null, 'CRON', '0 20 9 16 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":1747065164873596928}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-16 09:16:16', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('110', '2', '23项目组合(1747065164873596928)_修改项目竞拍状态为公示中定时任务', '2024-01-16 09:16:16', '2024-01-16 09:16:16', 'jingjia', null, 'CRON', '0 20 10 16 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":1747065164873596928}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-16 09:16:16', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('111', '2', '23项目组合(1747065164873596928)_修改项目竞拍状态为已结束定时任务', '2024-01-16 09:16:17', '2024-01-16 09:16:17', 'jingjia', null, 'CRON', '0 20 10 19 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":1747065164873596928}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-16 09:16:17', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('112', '2', 'k24组合项目(1747075283304841216)_修改项目竞拍状态为交易中定时任务', '2024-01-16 09:56:27', '2024-01-16 09:56:27', 'jingjia', null, 'CRON', '0 0 10 16 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":1747075283304841216}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-16 09:56:27', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('113', '2', 'k24组合项目(1747075283304841216)_修改项目竞拍状态为公示中定时任务', '2024-01-16 09:56:27', '2024-01-16 09:56:27', 'jingjia', null, 'CRON', '0 5 10 16 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":1747075283304841216}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-16 09:56:27', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('114', '2', 'k24组合项目(1747075283304841216)_修改项目竞拍状态为已结束定时任务', '2024-01-16 09:56:27', '2024-01-16 09:56:27', 'jingjia', null, 'CRON', '0 5 10 19 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":1747075283304841216}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-16 09:56:27', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('115', '2', '5万吨成品砂石(1747157621778939904)_修改项目竞拍状态为交易中定时任务', '2024-01-16 15:24:02', '2024-01-16 15:24:02', 'jingjia', null, 'CRON', '0 0 9 18 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":1747157621778939904}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-16 15:24:02', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('116', '2', '5万吨成品砂石(1747157621778939904)_修改项目竞拍状态为公示中定时任务', '2024-01-16 15:24:02', '2024-01-16 15:24:02', 'jingjia', null, 'CRON', '0 0 19 18 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":1747157621778939904}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-16 15:24:02', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('117', '2', '5万吨成品砂石(1747157621778939904)_修改项目竞拍状态为已结束定时任务', '2024-01-16 15:24:03', '2024-01-16 15:24:03', 'jingjia', null, 'CRON', '0 0 19 21 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":1747157621778939904}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-16 15:24:03', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('118', '2', '6万吨成品砂石(1748225331417841664)_修改项目竞拍状态为交易中定时任务', '2024-01-19 14:08:09', '2024-01-19 14:08:09', 'jingjia', null, 'CRON', '0 0 9 22 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":1748225331417841664}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-19 14:08:09', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('119', '2', '6万吨成品砂石(1748225331417841664)_修改项目竞拍状态为公示中定时任务', '2024-01-19 14:08:09', '2024-01-19 14:08:09', 'jingjia', null, 'CRON', '0 0 17 22 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":1748225331417841664}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-19 14:08:09', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('120', '2', '6万吨成品砂石(1748225331417841664)_修改项目竞拍状态为已结束定时任务', '2024-01-19 14:08:09', '2024-01-19 14:08:09', 'jingjia', null, 'CRON', '0 0 17 25 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":1748225331417841664}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-19 14:08:09', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('121', '2', '测试(1751786920972648448)_修改项目竞拍状态为交易中定时任务', '2024-01-29 10:02:24', '2024-01-29 10:02:24', 'jingjia', null, 'CRON', '0 30 10 29 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":1751786920972648448}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-29 10:02:24', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('122', '2', '测试(1751786920972648448)_修改项目竞拍状态为公示中定时任务', '2024-01-29 10:02:25', '2024-01-29 10:02:25', 'jingjia', null, 'CRON', '0 0 11 29 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":1751786920972648448}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-29 10:02:25', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('123', '2', '测试(1751786920972648448)_修改项目竞拍状态为已结束定时任务', '2024-01-29 10:02:25', '2024-01-29 10:02:25', 'jingjia', null, 'CRON', '0 0 11 1 2 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":1751786920972648448}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-29 10:02:25', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('124', '2', '测试02(1751852710631571456)_修改项目竞拍状态为交易中定时任务', '2024-01-29 14:20:16', '2024-01-29 14:20:16', 'jingjia', null, 'CRON', '0 30 14 29 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":1751852710631571456}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-29 14:20:16', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('125', '2', '测试02(1751852710631571456)_修改项目竞拍状态为公示中定时任务', '2024-01-29 14:20:16', '2024-01-29 14:20:16', 'jingjia', null, 'CRON', '0 0 15 29 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":1751852710631571456}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-29 14:20:16', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('126', '2', '测试02(1751852710631571456)_修改项目竞拍状态为已结束定时任务', '2024-01-29 14:20:16', '2024-01-29 14:20:16', 'jingjia', null, 'CRON', '0 0 15 1 2 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":1751852710631571456}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-29 14:20:16', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('127', '2', '成品砂石包3万吨(1752135933144072192)_修改项目竞拍状态为交易中定时任务', '2024-01-30 09:05:47', '2024-01-30 09:05:47', 'jingjia', null, 'CRON', '0 20 9 30 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":1752135933144072192}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-30 09:05:47', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('128', '2', '成品砂石包3万吨(1752135933144072192)_修改项目竞拍状态为公示中定时任务', '2024-01-30 09:05:47', '2024-01-30 09:05:47', 'jingjia', null, 'CRON', '0 50 9 30 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":1752135933144072192}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-30 09:05:47', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('129', '2', '成品砂石包3万吨(1752135933144072192)_修改项目竞拍状态为已结束定时任务', '2024-01-30 09:05:47', '2024-01-30 09:05:47', 'jingjia', null, 'CRON', '0 50 9 2 2 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":1752135933144072192}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-30 09:05:47', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('130', '2', '测试(1752144181226110976)_修改项目竞拍状态为交易中定时任务', '2024-01-30 09:38:24', '2024-01-30 09:38:24', 'jingjia', null, 'CRON', '0 42 9 30 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":1752144181226110976}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-30 09:38:24', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('131', '2', '测试(1752144181226110976)_修改项目竞拍状态为公示中定时任务', '2024-01-30 09:38:25', '2024-01-30 09:38:25', 'jingjia', null, 'CRON', '0 42 10 30 1 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":1752144181226110976}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-30 09:38:25', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('132', '2', '测试(1752144181226110976)_修改项目竞拍状态为已结束定时任务', '2024-01-30 09:38:25', '2024-01-30 09:38:25', 'jingjia', null, 'CRON', '0 42 10 2 2 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":1752144181226110976}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-01-30 09:38:25', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('133', '2', '成品砂石3万吨(1752886372781260800)_修改项目竞拍状态为交易中定时任务', '2024-02-01 10:47:56', '2024-02-01 10:47:56', 'jingjia', null, 'CRON', '0 30 9 2 2 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":1752886372781260800}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-02-01 10:47:56', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('134', '2', '成品砂石3万吨(1752886372781260800)_修改项目竞拍状态为公示中定时任务', '2024-02-01 10:47:56', '2024-02-01 10:47:56', 'jingjia', null, 'CRON', '0 30 10 2 2 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":1752886372781260800}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-02-01 10:47:56', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('135', '2', '成品砂石3万吨(1752886372781260800)_修改项目竞拍状态为已结束定时任务', '2024-02-01 10:47:56', '2024-02-01 10:47:56', 'jingjia', null, 'CRON', '0 30 10 5 2 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":1752886372781260800}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-02-01 10:47:56', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('136', '2', '测试1(1752952388697718784)_修改项目竞拍状态为交易中定时任务', '2024-02-01 15:09:58', '2024-02-01 15:09:58', 'jingjia', null, 'CRON', '0 15 15 1 2 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":1752952388697718784}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-02-01 15:09:58', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('137', '2', '测试1(1752952388697718784)_修改项目竞拍状态为公示中定时任务', '2024-02-01 15:09:58', '2024-02-01 15:09:58', 'jingjia', null, 'CRON', '0 15 16 1 2 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":1752952388697718784}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-02-01 15:09:58', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('138', '2', '测试1(1752952388697718784)_修改项目竞拍状态为已结束定时任务', '2024-02-01 15:09:58', '2024-02-01 15:09:58', 'jingjia', null, 'CRON', '0 15 16 4 2 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":1752952388697718784}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-02-01 15:09:58', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('139', '2', '测试报名(1759470427551301632)_修改项目竞拍状态为交易中定时任务', '2024-02-19 16:14:21', '2024-02-19 16:14:21', 'jingjia', null, 'CRON', '0 0 14 20 2 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":1759470427551301632}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-02-19 16:14:21', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('140', '2', '测试报名(1759470427551301632)_修改项目竞拍状态为公示中定时任务', '2024-02-19 16:14:21', '2024-02-19 16:14:21', 'jingjia', null, 'CRON', '0 30 14 20 2 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":1759470427551301632}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-02-19 16:14:21', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('141', '2', '测试报名(1759470427551301632)_修改项目竞拍状态为已结束定时任务', '2024-02-19 16:14:21', '2024-02-19 16:14:21', 'jingjia', null, 'CRON', '0 30 14 23 2 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":1759470427551301632}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-02-19 16:14:21', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('142', '2', '成品砂石3万吨包(1759748063716442112)_修改项目竞拍状态为交易中定时任务', '2024-02-20 09:13:55', '2024-02-20 09:13:55', 'jingjia', null, 'CRON', '0 20 9 20 2 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":1759748063716442112}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-02-20 09:13:55', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('143', '2', '成品砂石3万吨包(1759748063716442112)_修改项目竞拍状态为公示中定时任务', '2024-02-20 09:13:55', '2024-02-20 09:13:55', 'jingjia', null, 'CRON', '0 50 9 20 2 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":1759748063716442112}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-02-20 09:13:55', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('144', '2', '成品砂石3万吨包(1759748063716442112)_修改项目竞拍状态为已结束定时任务', '2024-02-20 09:13:55', '2024-02-20 09:13:55', 'jingjia', null, 'CRON', '0 50 9 23 2 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":1759748063716442112}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-02-20 09:13:55', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('145', '2', '4万吨成品砂石包(1760868912657858560)_修改项目竞拍状态为交易中定时任务', '2024-02-23 11:27:45', '2024-02-23 11:27:45', 'jingjia', null, 'CRON', '52 35 11 23 2 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":1760868912657858560}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-02-23 11:27:45', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('146', '2', '4万吨成品砂石包(1760868912657858560)_修改项目竞拍状态为公示中定时任务', '2024-02-23 11:27:45', '2024-02-23 11:27:45', 'jingjia', null, 'CRON', '52 35 12 23 2 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":1760868912657858560}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-02-23 11:27:45', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('147', '2', '4万吨成品砂石包(1760868912657858560)_修改项目竞拍状态为已结束定时任务', '2024-02-23 11:27:45', '2024-02-23 11:27:45', 'jingjia', null, 'CRON', '52 35 12 26 2 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":1760868912657858560}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-02-23 11:27:45', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('148', '2', '测试竞价(1762016871126663168)_修改项目竞拍状态为交易中定时任务', '2024-02-26 15:29:06', '2024-02-26 15:29:06', 'jingjia', null, 'CRON', '0 37 15 26 2 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":1762016871126663168}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-02-26 15:29:06', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('149', '2', '测试竞价(1762016871126663168)_修改项目竞拍状态为公示中定时任务', '2024-02-26 15:29:06', '2024-02-26 15:29:06', 'jingjia', null, 'CRON', '0 37 18 26 2 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":1762016871126663168}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-02-26 15:29:06', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('150', '2', '测试竞价(1762016871126663168)_修改项目竞拍状态为已结束定时任务', '2024-02-26 15:29:06', '2024-02-26 15:29:06', 'jingjia', null, 'CRON', '0 37 18 29 2 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":1762016871126663168}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-02-26 15:29:06', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('151', '2', '2万成品砂石包件(1762294611289571328)_修改项目竞拍状态为交易中定时任务', '2024-02-27 09:52:56', '2024-02-27 09:52:56', 'jingjia', null, 'CRON', '0 0 10 27 2 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":1762294611289571328}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-02-27 09:52:56', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('152', '2', '2万成品砂石包件(1762294611289571328)_修改项目竞拍状态为公示中定时任务', '2024-02-27 09:52:56', '2024-02-27 09:52:56', 'jingjia', null, 'CRON', '0 2 10 27 2 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":1762294611289571328}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-02-27 09:52:56', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('153', '2', '2万成品砂石包件(1762294611289571328)_修改项目竞拍状态为已结束定时任务', '2024-02-27 09:52:56', '2024-02-27 09:52:56', 'jingjia', null, 'CRON', '0 2 10 1 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":1762294611289571328}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-02-27 09:52:56', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('154', '2', '3万吨成品砂石包件(1762299471774875648)_修改项目竞拍状态为交易中定时任务', '2024-02-27 10:12:01', '2024-02-27 10:12:01', 'jingjia', null, 'CRON', '0 20 10 27 2 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":1762299471774875648}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-02-27 10:12:01', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('155', '2', '3万吨成品砂石包件(1762299471774875648)_修改项目竞拍状态为公示中定时任务', '2024-02-27 10:12:01', '2024-02-27 10:12:01', 'jingjia', null, 'CRON', '0 22 10 27 2 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":1762299471774875648}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-02-27 10:12:01', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('156', '2', '3万吨成品砂石包件(1762299471774875648)_修改项目竞拍状态为已结束定时任务', '2024-02-27 10:12:01', '2024-02-27 10:12:01', 'jingjia', null, 'CRON', '0 22 10 1 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":1762299471774875648}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-02-27 10:12:01', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('157', '2', '发放(1762379937840365568)_修改项目竞拍状态为交易中定时任务', '2024-02-27 15:31:48', '2024-02-27 15:31:48', 'jingjia', null, 'CRON', '0 35 15 27 2 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":1762379937840365568}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-02-27 15:31:48', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('158', '2', '发放(1762379937840365568)_修改项目竞拍状态为公示中定时任务', '2024-02-27 15:31:48', '2024-02-27 15:31:48', 'jingjia', null, 'CRON', '0 38 15 27 2 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":1762379937840365568}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-02-27 15:31:48', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('159', '2', '发放(1762379937840365568)_修改项目竞拍状态为已结束定时任务', '2024-02-27 15:31:48', '2024-02-27 15:31:48', 'jingjia', null, 'CRON', '0 38 15 1 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":1762379937840365568}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-02-27 15:31:48', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('160', '2', '测试第一次(1762645493671788544)_修改项目竞拍状态为交易中定时任务', '2024-02-28 09:07:12', '2024-02-28 09:07:12', 'jingjia', null, 'CRON', '0 9 9 28 2 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":1762645493671788544}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-02-28 09:07:12', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('161', '2', '测试第一次(1762645493671788544)_修改项目竞拍状态为公示中定时任务', '2024-02-28 09:07:12', '2024-02-28 09:07:12', 'jingjia', null, 'CRON', '0 39 9 28 2 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":1762645493671788544}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-02-28 09:07:12', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('162', '2', '测试第一次(1762645493671788544)_修改项目竞拍状态为已结束定时任务', '2024-02-28 09:07:12', '2024-02-28 09:07:12', 'jingjia', null, 'CRON', '0 39 9 2 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":1762645493671788544}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-02-28 09:07:12', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('163', '2', '1万吨成品砂石包件（5%税率）(1763017544760819712)_修改项目竞拍状态为交易中定时任务', '2024-02-29 09:45:51', '2024-02-29 09:45:51', 'jingjia', null, 'CRON', '0 0 10 29 2 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":1763017544760819712}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-02-29 09:45:51', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('164', '2', '1万吨成品砂石包件（5%税率）(1763017544760819712)_修改项目竞拍状态为公示中定时任务', '2024-02-29 09:45:51', '2024-02-29 10:09:15', 'jingjia', null, 'CRON', '14 11 10 29 2 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":1763017544760819712}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-02-29 09:45:51', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('165', '2', '1万吨成品砂石包件（5%税率）(1763017544760819712)_修改项目竞拍状态为已结束定时任务', '2024-02-29 09:45:52', '2024-02-29 09:45:52', 'jingjia', null, 'CRON', '0 10 10 1 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":1763017544760819712}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-02-29 09:45:52', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('166', '2', '测试666(1763043480268963840)_修改项目竞拍状态为交易中定时任务', '2024-02-29 11:28:21', '2024-02-29 11:28:21', 'jingjia', null, 'CRON', '0 35 11 29 2 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":1763043480268963840}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-02-29 11:28:21', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('167', '2', '测试666(1763043480268963840)_修改项目竞拍状态为公示中定时任务', '2024-02-29 11:28:22', '2024-02-29 11:28:22', 'jingjia', null, 'CRON', '0 40 11 29 2 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":1763043480268963840}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-02-29 11:28:22', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('168', '2', '测试666(1763043480268963840)_修改项目竞拍状态为已结束定时任务', '2024-02-29 11:28:22', '2024-02-29 11:28:22', 'jingjia', null, 'CRON', '0 40 11 1 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":1763043480268963840}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-02-29 11:28:22', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('169', '2', '1.5万吨成品砂石（3%税率）(1763048674314682368)_修改项目竞拍状态为交易中定时任务', '2024-02-29 11:49:18', '2024-02-29 11:49:18', 'jingjia', null, 'CRON', '0 0 14 29 2 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":1763048674314682368}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-02-29 11:49:18', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('170', '2', '1.5万吨成品砂石（3%税率）(1763048674314682368)_修改项目竞拍状态为公示中定时任务', '2024-02-29 11:49:18', '2024-02-29 11:49:18', 'jingjia', null, 'CRON', '0 10 14 29 2 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":1763048674314682368}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-02-29 11:49:18', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('171', '2', '1.5万吨成品砂石（3%税率）(1763048674314682368)_修改项目竞拍状态为已结束定时任务', '2024-02-29 11:49:18', '2024-02-29 11:49:18', 'jingjia', null, 'CRON', '0 10 14 1 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":1763048674314682368}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-02-29 11:49:18', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('172', '2', '测试888(1763090815497797632)_修改项目竞拍状态为交易中定时任务', '2024-02-29 14:36:28', '2024-02-29 14:36:28', 'jingjia', null, 'CRON', '0 38 14 29 2 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":1763090815497797632}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-02-29 14:36:28', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('173', '2', '测试888(1763090815497797632)_修改项目竞拍状态为公示中定时任务', '2024-02-29 14:36:28', '2024-02-29 14:43:26', 'jingjia', null, 'CRON', '25 45 14 29 2 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":1763090815497797632}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-02-29 14:36:28', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('174', '2', '测试888(1763090815497797632)_修改项目竞拍状态为已结束定时任务', '2024-02-29 14:36:28', '2024-02-29 14:36:28', 'jingjia', null, 'CRON', '0 43 14 1 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":1763090815497797632}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-02-29 14:36:28', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('175', '2', '测试999(1763101165966327808)_修改项目竞拍状态为交易中定时任务', '2024-02-29 15:17:50', '2024-02-29 15:17:50', 'jingjia', null, 'CRON', '0 18 15 29 2 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":1763101165966327808}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-02-29 15:17:50', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('176', '2', '测试999(1763101165966327808)_修改项目竞拍状态为公示中定时任务', '2024-02-29 15:17:50', '2024-02-29 15:31:29', 'jingjia', null, 'CRON', '29 33 15 29 2 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":1763101165966327808}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-02-29 15:17:50', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('177', '2', '测试999(1763101165966327808)_修改项目竞拍状态为已结束定时任务', '2024-02-29 15:17:50', '2024-02-29 15:17:50', 'jingjia', null, 'CRON', '0 23 15 1 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":1763101165966327808}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-02-29 15:17:50', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('178', '2', 'eee(1763367415556603904)_修改项目竞拍状态为交易中定时任务', '2024-03-01 08:55:37', '2024-03-01 08:55:37', 'jingjia', null, 'CRON', '0 3 9 1 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":1763367415556603904}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-01 08:55:37', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('179', '2', 'eee(1763367415556603904)_修改项目竞拍状态为公示中定时任务', '2024-03-01 08:55:38', '2024-03-01 08:55:38', 'jingjia', null, 'CRON', '0 8 9 1 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":1763367415556603904}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-01 08:55:38', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('180', '2', 'eee(1763367415556603904)_修改项目竞拍状态为已结束定时任务', '2024-03-01 08:55:38', '2024-03-01 08:55:38', 'jingjia', null, 'CRON', '0 8 9 2 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":1763367415556603904}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-01 08:55:38', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('181', '2', 'rr(1763379179409113088)_修改项目竞拍状态为交易中定时任务', '2024-03-01 09:42:21', '2024-03-01 09:42:21', 'jingjia', null, 'CRON', '0 45 9 1 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":1763379179409113088}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-01 09:42:21', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('182', '2', 'rr(1763379179409113088)_修改项目竞拍状态为公示中定时任务', '2024-03-01 09:42:22', '2024-03-01 09:48:30', 'jingjia', null, 'CRON', '30 50 9 1 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":1763379179409113088}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-01 09:42:22', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('183', '2', 'rr(1763379179409113088)_修改项目竞拍状态为已结束定时任务', '2024-03-01 09:42:22', '2024-03-01 09:42:22', 'jingjia', null, 'CRON', '0 50 9 2 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":1763379179409113088}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-01 09:42:22', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('184', '2', '1.2万吨成品砂石包（3%税率）(1763441023326879744)_修改项目竞拍状态为交易中定时任务', '2024-03-01 13:48:08', '2024-03-01 13:48:08', 'jingjia', null, 'CRON', '0 0 14 1 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":1763441023326879744}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-01 13:48:08', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('185', '2', '1.2万吨成品砂石包（3%税率）(1763441023326879744)_修改项目竞拍状态为公示中定时任务', '2024-03-01 13:48:08', '2024-03-01 13:48:08', 'jingjia', null, 'CRON', '0 10 14 1 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":1763441023326879744}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-01 13:48:08', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('186', '2', '1.2万吨成品砂石包（3%税率）(1763441023326879744)_修改项目竞拍状态为已结束定时任务', '2024-03-01 13:48:08', '2024-03-01 13:48:08', 'jingjia', null, 'CRON', '0 10 14 2 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":1763441023326879744}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-01 13:48:08', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('187', '2', '1.3万吨成品砂石包（3%税率）(1763449500778627072)_修改项目竞拍状态为交易中定时任务', '2024-03-01 14:28:07', '2024-03-01 14:28:07', 'jingjia', null, 'CRON', '0 40 14 1 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":1763449500778627072}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-01 14:28:07', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('188', '2', '1.3万吨成品砂石包（3%税率）(1763449500778627072)_修改项目竞拍状态为公示中定时任务', '2024-03-01 14:28:07', '2024-03-01 14:49:17', 'jingjia', null, 'CRON', '16 51 14 1 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":1763449500778627072}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-01 14:28:07', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('189', '2', '1.3万吨成品砂石包（3%税率）(1763449500778627072)_修改项目竞拍状态为已结束定时任务', '2024-03-01 14:28:07', '2024-03-01 14:28:07', 'jingjia', null, 'CRON', '0 50 14 2 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":1763449500778627072}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-01 14:28:07', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('190', '2', '1万吨成品砂石包13%(1763458046077435904)_修改项目竞拍状态为交易中定时任务', '2024-03-01 14:55:45', '2024-03-01 14:55:45', 'jingjia', null, 'CRON', '0 0 15 1 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":1763458046077435904}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-01 14:55:45', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('191', '2', '1万吨成品砂石包13%(1763458046077435904)_修改项目竞拍状态为公示中定时任务', '2024-03-01 14:55:45', '2024-03-01 15:00:04', 'jingjia', null, 'CRON', '3 2 15 1 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":1763458046077435904}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-01 14:55:45', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('192', '2', '1万吨成品砂石包13%(1763458046077435904)_修改项目竞拍状态为已结束定时任务', '2024-03-01 14:55:45', '2024-03-01 14:55:45', 'jingjia', null, 'CRON', '0 2 15 2 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":1763458046077435904}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-01 14:55:45', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('193', '2', '测试1001(1763479443084410880)_修改项目竞拍状态为交易中定时任务', '2024-03-01 16:20:47', '2024-03-01 16:20:47', 'jingjia', null, 'CRON', '0 22 16 1 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":1763479443084410880}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-01 16:20:47', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('194', '2', '测试1001(1763479443084410880)_修改项目竞拍状态为公示中定时任务', '2024-03-01 16:20:47', '2024-03-01 16:25:42', 'jingjia', null, 'CRON', '41 27 16 1 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":1763479443084410880}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-01 16:20:47', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('195', '2', '测试1001(1763479443084410880)_修改项目竞拍状态为已结束定时任务', '2024-03-01 16:20:47', '2024-03-01 16:20:47', 'jingjia', null, 'CRON', '0 25 16 2 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":1763479443084410880}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-01 16:20:47', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('196', '2', '测试1001(1763479443084410880)_检查项目在竞拍时长内是否有人出价定时任务', '2024-03-01 16:20:48', '2024-03-01 16:20:48', 'jingjia', null, 'CRON', '58 24 16 1 3 ? 2024', 'DO_NOTHING', 'FIRST', 'checkProjectBidStatusJobHandler', '{\"projectId\":1763479443084410880}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-01 16:20:48', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('197', '2', '测试9001(1763482136041488384)_修改项目竞拍状态为交易中定时任务', '2024-03-01 16:31:25', '2024-03-01 16:31:25', 'jingjia', null, 'CRON', '0 32 16 1 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":1763482136041488384}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-01 16:31:25', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('198', '2', '测试9001(1763482136041488384)_修改项目竞拍状态为公示中定时任务', '2024-03-01 16:31:25', '2024-03-01 16:34:58', 'jingjia', null, 'CRON', '0 37 16 1 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":1763482136041488384}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-01 16:31:25', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('199', '2', '测试9001(1763482136041488384)_修改项目竞拍状态为已结束定时任务', '2024-03-01 16:31:25', '2024-03-01 16:31:25', 'jingjia', null, 'CRON', '0 35 16 2 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":1763482136041488384}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-01 16:31:25', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('200', '2', '测试9001(1763482136041488384)_检查项目在竞拍时长内是否有人出价定时任务', '2024-03-01 16:31:25', '2024-03-01 16:31:25', 'jingjia', null, 'CRON', '58 34 16 1 3 ? 2024', 'DO_NOTHING', 'FIRST', 'checkProjectBidStatusJobHandler', '{\"projectId\":1763482136041488384}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-01 16:31:25', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('201', '2', '测试1002(1763489556457324544)_修改项目竞拍状态为交易中定时任务', '2024-03-01 17:03:08', '2024-03-01 17:03:08', 'jingjia', null, 'CRON', '0 4 17 1 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":1763489556457324544}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-01 17:03:08', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('202', '2', '测试1002(1763489556457324544)_修改项目竞拍状态为公示中定时任务', '2024-03-01 17:03:08', '2024-03-01 17:06:58', 'jingjia', null, 'CRON', '0 9 17 1 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":1763489556457324544}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-01 17:03:08', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('203', '2', '测试1002(1763489556457324544)_修改项目竞拍状态为已结束定时任务', '2024-03-01 17:03:08', '2024-03-01 17:03:08', 'jingjia', null, 'CRON', '0 7 17 2 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":1763489556457324544}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-01 17:03:08', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('204', '2', '测试1002(1763489556457324544)_检查项目在竞拍时长内是否有人出价定时任务', '2024-03-01 17:03:08', '2024-03-01 17:03:08', 'jingjia', null, 'CRON', '58 6 17 1 3 ? 2024', 'DO_NOTHING', 'FIRST', 'checkProjectBidStatusJobHandler', '{\"projectId\":1763489556457324544}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-01 17:03:08', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('205', '2', '测试10003(1763493323638571008)_修改项目竞拍状态为交易中定时任务', '2024-03-01 17:16:04', '2024-03-01 17:16:04', 'jingjia', null, 'CRON', '0 18 17 1 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":1763493323638571008}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-01 17:16:04', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('206', '2', '测试10003(1763493323638571008)_修改项目竞拍状态为公示中定时任务', '2024-03-01 17:16:04', '2024-03-01 17:22:06', 'jingjia', null, 'CRON', '6 24 17 1 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":1763493323638571008}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-01 17:16:04', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('207', '2', '测试10003(1763493323638571008)_修改项目竞拍状态为已结束定时任务', '2024-03-01 17:16:04', '2024-03-01 17:16:04', 'jingjia', null, 'CRON', '0 21 17 2 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":1763493323638571008}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-01 17:16:04', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('208', '2', '测试10003(1763493323638571008)_检查项目在竞拍时长内是否有人出价定时任务', '2024-03-01 17:16:04', '2024-03-01 17:16:04', 'jingjia', null, 'CRON', '58 20 17 1 3 ? 2024', 'DO_NOTHING', 'FIRST', 'checkProjectBidStatusJobHandler', '{\"projectId\":1763493323638571008}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-01 17:16:04', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('209', '2', '测试1005(1763495849314222080)_修改项目竞拍状态为交易中定时任务', '2024-03-01 17:25:57', '2024-03-01 17:25:57', 'jingjia', null, 'CRON', '0 27 17 1 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":1763495849314222080}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-01 17:25:57', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('210', '2', '测试1005(1763495849314222080)_修改项目竞拍状态为公示中定时任务', '2024-03-01 17:25:57', '2024-03-01 17:27:58', 'jingjia', null, 'CRON', '0 30 17 1 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":1763495849314222080}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-01 17:25:57', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('211', '2', '测试1005(1763495849314222080)_修改项目竞拍状态为已结束定时任务', '2024-03-01 17:25:57', '2024-03-01 17:25:57', 'jingjia', null, 'CRON', '0 28 17 2 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":1763495849314222080}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-01 17:25:57', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('212', '2', '测试1005(1763495849314222080)_检查项目在竞拍时长内是否有人出价定时任务', '2024-03-01 17:25:57', '2024-03-01 17:25:57', 'jingjia', null, 'CRON', '58 27 17 1 3 ? 2024', 'DO_NOTHING', 'FIRST', 'checkProjectBidStatusJobHandler', '{\"projectId\":1763495849314222080}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-01 17:25:57', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('213', '2', '测试1001(1763497676986384384)_修改项目竞拍状态为交易中定时任务', '2024-03-01 17:33:08', '2024-03-01 17:33:08', 'jingjia', null, 'CRON', '0 34 17 1 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":1763497676986384384}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-01 17:33:08', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('214', '2', '测试1001(1763497676986384384)_修改项目竞拍状态为公示中定时任务', '2024-03-01 17:33:08', '2024-03-01 17:34:58', 'jingjia', null, 'CRON', '0 37 17 1 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":1763497676986384384}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-01 17:33:08', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('215', '2', '测试1001(1763497676986384384)_修改项目竞拍状态为已结束定时任务', '2024-03-01 17:33:09', '2024-03-01 17:33:09', 'jingjia', null, 'CRON', '0 35 17 2 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":1763497676986384384}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-01 17:33:09', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('216', '2', '测试1001(1763497676986384384)_检查项目在竞拍时长内是否有人出价定时任务', '2024-03-01 17:33:09', '2024-03-01 17:33:09', 'jingjia', null, 'CRON', '58 34 17 1 3 ? 2024', 'DO_NOTHING', 'FIRST', 'checkProjectBidStatusJobHandler', '{\"projectId\":1763497676986384384}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-01 17:33:09', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('217', '2', '测试1002(1763499670417440768)_修改项目竞拍状态为交易中定时任务', '2024-03-01 17:41:04', '2024-03-01 17:41:04', 'jingjia', null, 'CRON', '0 42 17 1 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":1763499670417440768}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-01 17:41:04', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('218', '2', '测试1002(1763499670417440768)_修改项目竞拍状态为公示中定时任务', '2024-03-01 17:41:04', '2024-03-01 17:46:25', 'jingjia', null, 'CRON', '24 48 17 1 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":1763499670417440768}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-01 17:41:04', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('219', '2', '测试1002(1763499670417440768)_修改项目竞拍状态为已结束定时任务', '2024-03-01 17:41:04', '2024-03-01 17:41:04', 'jingjia', null, 'CRON', '0 43 17 2 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":1763499670417440768}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-01 17:41:04', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('220', '2', '测试1002(1763499670417440768)_检查项目在竞拍时长内是否有人出价定时任务', '2024-03-01 17:41:04', '2024-03-01 17:41:04', 'jingjia', null, 'CRON', '50 42 17 1 3 ? 2024', 'DO_NOTHING', 'FIRST', 'checkProjectBidStatusJobHandler', '{\"projectId\":1763499670417440768}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-01 17:41:04', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('221', '2', '测试 无人拍111(1763500873318662144)_修改项目竞拍状态为交易中定时任务', '2024-03-01 17:45:50', '2024-03-01 17:45:50', 'jingjia', null, 'CRON', '0 47 17 1 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":1763500873318662144}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-01 17:45:50', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('222', '2', '测试 无人拍111(1763500873318662144)_修改项目竞拍状态为公示中定时任务', '2024-03-01 17:45:50', '2024-03-01 17:45:50', 'jingjia', null, 'CRON', '0 50 17 1 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":1763500873318662144}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-01 17:45:50', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('223', '2', '测试 无人拍111(1763500873318662144)_修改项目竞拍状态为已结束定时任务', '2024-03-01 17:45:50', '2024-03-01 17:45:50', 'jingjia', null, 'CRON', '0 50 17 2 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":1763500873318662144}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-01 17:45:50', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('224', '2', '测试 无人拍111(1763500873318662144)_检查项目在竞拍时长内是否有人出价定时任务', '2024-03-01 17:45:50', '2024-03-01 17:45:50', 'jingjia', null, 'CRON', '50 49 17 1 3 ? 2024', 'DO_NOTHING', 'FIRST', 'checkProjectBidStatusJobHandler', '{\"projectId\":1763500873318662144}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-01 17:45:50', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('225', '2', '1万吨成品砂石3%(1764450632762130432)_修改项目竞拍状态为交易中定时任务', '2024-03-04 08:40:02', '2024-03-04 08:40:02', 'jingjia', null, 'CRON', '0 20 9 4 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":1764450632762130432}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-04 08:40:02', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('226', '2', '1万吨成品砂石3%(1764450632762130432)_修改项目竞拍状态为公示中定时任务', '2024-03-04 08:40:02', '2024-03-04 09:31:13', 'jingjia', null, 'CRON', '13 33 9 4 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":1764450632762130432}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-04 08:40:02', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('227', '2', '1万吨成品砂石3%(1764450632762130432)_修改项目竞拍状态为已结束定时任务', '2024-03-04 08:40:02', '2024-03-04 08:40:02', 'jingjia', null, 'CRON', '0 30 9 5 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":1764450632762130432}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-04 08:40:02', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('228', '2', '1万吨成品砂石3%(1764450632762130432)_检查项目在竞拍时长内是否有人出价定时任务', '2024-03-04 08:40:02', '2024-03-04 08:40:02', 'jingjia', null, 'CRON', '50 29 9 4 3 ? 2024', 'DO_NOTHING', 'FIRST', 'checkProjectBidStatusJobHandler', '{\"projectId\":1764450632762130432}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-04 08:40:02', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('229', '2', '2万吨成品砂石(1764466513923801088)_修改项目竞拍状态为交易中定时任务', '2024-03-04 09:42:59', '2024-03-04 09:42:59', 'jingjia', null, 'CRON', '0 45 9 4 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":1764466513923801088}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-04 09:42:59', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('230', '2', '2万吨成品砂石(1764466513923801088)_修改项目竞拍状态为公示中定时任务', '2024-03-04 09:42:59', '2024-03-04 09:54:22', 'jingjia', null, 'CRON', '22 56 9 4 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":1764466513923801088}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-04 09:42:59', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('231', '2', '2万吨成品砂石(1764466513923801088)_修改项目竞拍状态为已结束定时任务', '2024-03-04 09:42:59', '2024-03-04 09:42:59', 'jingjia', null, 'CRON', '0 48 9 5 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":1764466513923801088}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-04 09:42:59', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('232', '2', '2万吨成品砂石(1764466513923801088)_检查项目在竞拍时长内是否有人出价定时任务', '2024-03-04 09:42:59', '2024-03-04 09:42:59', 'jingjia', null, 'CRON', '50 47 9 4 3 ? 2024', 'DO_NOTHING', 'FIRST', 'checkProjectBidStatusJobHandler', '{\"projectId\":1764466513923801088}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-04 09:42:59', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('233', '2', '测试(1764839215079620608)_修改项目竞拍状态为交易中定时任务', '2024-03-05 10:24:06', '2024-03-05 10:24:06', 'jingjia', null, 'CRON', '25 23 10 6 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":1764839215079620608}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-05 10:24:06', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('234', '2', '测试(1764839215079620608)_修改项目竞拍状态为公示中定时任务', '2024-03-05 10:24:07', '2024-03-05 10:24:07', 'jingjia', null, 'CRON', '25 28 10 6 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":1764839215079620608}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-05 10:24:07', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('235', '2', '测试(1764839215079620608)_修改项目竞拍状态为已结束定时任务', '2024-03-05 10:24:07', '2024-03-05 10:24:07', 'jingjia', null, 'CRON', '25 28 10 7 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":1764839215079620608}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-05 10:24:07', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('236', '2', '测试(1764839215079620608)_检查项目在竞拍时长内是否有人出价定时任务', '2024-03-05 10:24:07', '2024-03-05 10:24:07', 'jingjia', null, 'CRON', '15 28 10 6 3 ? 2024', 'DO_NOTHING', 'FIRST', 'checkProjectBidStatusJobHandler', '{\"projectId\":1764839215079620608}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-05 10:24:07', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('237', '2', '5万吨砂石成品（HYTZ-2403-1-5WT）(1768481872154722304)_修改项目竞拍状态为交易中定时任务', '2024-03-15 11:41:21', '2024-03-15 11:41:21', 'jingjia', null, 'CRON', '0 0 14 15 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusJyzJobHandler', '{\"projectId\":1768481872154722304}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-15 11:41:21', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('238', '2', '5万吨砂石成品（HYTZ-2403-1-5WT）(1768481872154722304)_修改项目竞拍状态为公示中定时任务', '2024-03-15 11:41:21', '2024-03-15 11:41:21', 'jingjia', null, 'CRON', '0 10 14 15 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusGszJobHandler', '{\"projectId\":1768481872154722304}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-15 11:41:21', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('239', '2', '5万吨砂石成品（HYTZ-2403-1-5WT）(1768481872154722304)_修改项目竞拍状态为已结束定时任务', '2024-03-15 11:41:22', '2024-03-15 11:41:22', 'jingjia', null, 'CRON', '0 10 14 16 3 ? 2024', 'DO_NOTHING', 'FIRST', 'updateProjectAuctionStatusYjsJobHandler', '{\"projectId\":1768481872154722304}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-15 11:41:22', null, '0', '0', '0');
INSERT INTO `xxl_job_info` VALUES ('240', '2', '5万吨砂石成品（HYTZ-2403-1-5WT）(1768481872154722304)_检查项目在竞拍时长内是否有人出价定时任务', '2024-03-15 11:41:23', '2024-03-15 11:41:23', 'jingjia', null, 'CRON', '50 9 14 15 3 ? 2024', 'DO_NOTHING', 'FIRST', 'checkProjectBidStatusJobHandler', '{\"projectId\":1768481872154722304}', 'SERIAL_EXECUTION', '0', '0', 'BEAN', null, null, '2024-03-15 11:41:23', null, '0', '0', '0');

-- ----------------------------
-- Table structure for xxl_job_lock
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_lock`;
CREATE TABLE `xxl_job_lock` (
  `lock_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '锁名称',
  PRIMARY KEY (`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of xxl_job_lock
-- ----------------------------
INSERT INTO `xxl_job_lock` VALUES ('schedule_lock');

-- ----------------------------
-- Table structure for xxl_job_log
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_log`;
CREATE TABLE `xxl_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `job_group` int NOT NULL COMMENT '执行器主键ID',
  `job_id` int NOT NULL COMMENT '任务，主键ID',
  `executor_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '执行器地址，本次执行的地址',
  `executor_handler` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '执行器任务handler',
  `executor_param` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '执行器任务参数',
  `executor_sharding_param` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '执行器任务分片参数，格式如 1/2',
  `executor_fail_retry_count` int NOT NULL DEFAULT '0' COMMENT '失败重试次数',
  `trigger_time` datetime DEFAULT NULL COMMENT '调度-时间',
  `trigger_code` int NOT NULL COMMENT '调度-结果',
  `trigger_msg` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci COMMENT '调度-日志',
  `handle_time` datetime DEFAULT NULL COMMENT '执行-时间',
  `handle_code` int NOT NULL COMMENT '执行-状态',
  `handle_msg` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci COMMENT '执行-日志',
  `alarm_status` tinyint NOT NULL DEFAULT '0' COMMENT '告警状态：0-默认、1-无需告警、2-告警成功、3-告警失败',
  PRIMARY KEY (`id`),
  KEY `I_trigger_time` (`trigger_time`) USING BTREE,
  KEY `I_handle_code` (`handle_code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3203 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of xxl_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for xxl_job_log_report
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_log_report`;
CREATE TABLE `xxl_job_log_report` (
  `id` int NOT NULL AUTO_INCREMENT,
  `trigger_day` datetime DEFAULT NULL COMMENT '调度-时间',
  `running_count` int NOT NULL DEFAULT '0' COMMENT '运行中-日志数量',
  `suc_count` int NOT NULL DEFAULT '0' COMMENT '执行成功-日志数量',
  `fail_count` int NOT NULL DEFAULT '0' COMMENT '执行失败-日志数量',
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_trigger_day` (`trigger_day`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of xxl_job_log_report
-- ----------------------------
INSERT INTO `xxl_job_log_report` VALUES ('1', '2023-12-26 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('2', '2023-12-25 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('3', '2023-12-24 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('4', '2023-12-27 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('5', '2023-12-28 00:00:00', '0', '14', '2', null);
INSERT INTO `xxl_job_log_report` VALUES ('6', '2023-12-29 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('7', '2023-12-30 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('8', '2023-12-31 00:00:00', '0', '11', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('9', '2024-01-01 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('10', '2024-01-02 00:00:00', '0', '4', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('11', '2024-01-03 00:00:00', '0', '3', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('12', '2024-01-04 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('13', '2024-01-05 00:00:00', '0', '6', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('14', '2024-01-06 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('15', '2024-01-07 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('16', '2024-01-08 00:00:00', '0', '2', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('17', '2024-01-09 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('18', '2024-01-10 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('19', '2024-01-11 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('20', '2024-01-12 00:00:00', '0', '2', '10', null);
INSERT INTO `xxl_job_log_report` VALUES ('21', '2024-01-16 00:00:00', '0', '6', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('22', '2024-01-15 00:00:00', '0', '18', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('23', '2024-01-14 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('24', '2024-01-17 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('25', '2024-01-18 00:00:00', '0', '2', '6', null);
INSERT INTO `xxl_job_log_report` VALUES ('26', '2024-01-19 00:00:00', '0', '0', '3', null);
INSERT INTO `xxl_job_log_report` VALUES ('27', '2024-01-20 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('28', '2024-01-21 00:00:00', '0', '1', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('29', '2024-01-22 00:00:00', '0', '2', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('30', '2024-01-23 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('31', '2024-01-24 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('32', '2024-01-25 00:00:00', '0', '1', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('33', '2024-01-26 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('34', '2024-01-27 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('35', '2024-01-28 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('36', '2024-01-29 00:00:00', '0', '4', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('37', '2024-01-30 00:00:00', '0', '4', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('38', '2024-01-31 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('39', '2024-02-01 00:00:00', '0', '2', '2', null);
INSERT INTO `xxl_job_log_report` VALUES ('40', '2024-02-02 00:00:00', '0', '4', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('41', '2024-02-03 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('42', '2024-02-04 00:00:00', '0', '1', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('43', '2024-02-05 00:00:00', '0', '1', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('44', '2024-02-06 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('45', '2024-02-07 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('46', '2024-02-08 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('47', '2024-02-09 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('48', '2024-02-10 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('49', '2024-02-11 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('50', '2024-02-12 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('51', '2024-02-13 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('52', '2024-02-14 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('53', '2024-02-15 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('54', '2024-02-16 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('55', '2024-02-17 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('56', '2024-02-18 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('57', '2024-02-19 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('58', '2024-02-20 00:00:00', '0', '4', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('59', '2024-02-21 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('60', '2024-02-22 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('61', '2024-02-23 00:00:00', '0', '4', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('62', '2024-02-24 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('63', '2024-02-25 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('64', '2024-02-26 00:00:00', '0', '3', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('65', '2024-02-27 00:00:00', '0', '6', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('66', '2024-02-28 00:00:00', '0', '2', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('67', '2024-02-29 00:00:00', '0', '9', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('68', '2024-03-01 00:00:00', '0', '42', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('69', '2024-03-02 00:00:00', '0', '3', '11', null);
INSERT INTO `xxl_job_log_report` VALUES ('70', '2024-03-03 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('71', '2024-03-04 00:00:00', '0', '6', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('72', '2024-03-05 00:00:00', '0', '2', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('73', '2024-03-06 00:00:00', '0', '3', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('74', '2024-03-07 00:00:00', '0', '1', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('75', '2024-03-08 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('76', '2024-03-09 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('77', '2024-03-10 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('78', '2024-03-11 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('79', '2024-03-12 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('80', '2024-03-13 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('81', '2024-03-14 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('82', '2024-03-15 00:00:00', '0', '3', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('83', '2024-03-16 00:00:00', '0', '1', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('84', '2024-03-17 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('85', '2024-03-18 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('86', '2024-03-19 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('87', '2024-03-20 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('88', '2024-03-21 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('89', '2024-03-22 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('90', '2024-03-23 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('91', '2024-03-24 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('92', '2024-03-25 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('93', '2024-03-26 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('94', '2024-03-27 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('95', '2024-03-28 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('96', '2024-03-29 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('97', '2024-03-30 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('98', '2024-03-31 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('99', '2024-04-01 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('100', '2024-04-02 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('101', '2024-04-03 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('102', '2024-04-04 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('103', '2024-04-05 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('104', '2024-04-06 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('105', '2024-04-07 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('106', '2024-04-08 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('107', '2024-04-09 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('108', '2024-04-10 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('109', '2024-04-11 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('110', '2024-04-12 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('111', '2024-04-13 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('112', '2024-04-14 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('113', '2024-04-15 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('114', '2024-04-16 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('115', '2024-04-17 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('116', '2024-04-18 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('117', '2024-04-19 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('118', '2024-04-20 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('119', '2024-04-21 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('120', '2024-04-22 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('121', '2024-04-23 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('122', '2024-04-24 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('123', '2024-04-25 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('124', '2024-04-26 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('125', '2024-04-27 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('126', '2024-04-28 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('127', '2024-04-29 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('128', '2024-04-30 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('129', '2024-05-01 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('130', '2024-05-02 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('131', '2024-05-03 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('132', '2024-05-04 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('133', '2024-05-05 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('134', '2024-05-06 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('135', '2024-05-07 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('136', '2024-05-08 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('137', '2024-05-09 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('138', '2024-05-10 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('139', '2024-05-11 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('140', '2024-05-12 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('141', '2024-05-13 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('142', '2024-05-14 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('143', '2024-05-15 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('144', '2024-05-16 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('145', '2024-05-17 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('146', '2024-05-18 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('147', '2024-05-19 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('148', '2024-05-20 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('149', '2024-05-21 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('150', '2024-05-22 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('151', '2024-05-23 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('152', '2024-05-24 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('153', '2024-05-25 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('154', '2024-05-26 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('155', '2024-05-27 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('156', '2024-05-28 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('157', '2024-05-29 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('158', '2024-05-30 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('159', '2024-05-31 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('160', '2024-06-01 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('161', '2024-06-02 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('162', '2024-06-03 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('163', '2024-06-04 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('164', '2024-06-05 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('165', '2024-06-06 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('166', '2024-06-07 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('167', '2024-06-08 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('168', '2024-06-09 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('169', '2024-06-10 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('170', '2024-06-11 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('171', '2024-06-12 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('172', '2024-06-13 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('173', '2024-06-14 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('174', '2024-06-15 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('175', '2024-06-16 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('176', '2024-06-17 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('177', '2024-06-18 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('178', '2024-06-19 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('179', '2024-06-20 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('180', '2024-06-21 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('181', '2024-06-22 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('182', '2024-06-23 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('183', '2024-06-24 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('184', '2024-06-25 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('185', '2024-06-26 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('186', '2024-06-27 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('187', '2024-06-28 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('188', '2024-06-29 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('189', '2024-06-30 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('190', '2024-07-01 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('191', '2024-07-02 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('192', '2024-07-03 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('193', '2024-07-04 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('194', '2024-07-05 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('195', '2024-07-06 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('196', '2024-07-07 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('197', '2024-07-08 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('198', '2024-07-09 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('199', '2024-07-10 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('200', '2024-07-11 00:00:00', '0', '0', '0', null);
INSERT INTO `xxl_job_log_report` VALUES ('201', '2024-07-12 00:00:00', '0', '0', '0', null);

-- ----------------------------
-- Table structure for xxl_job_logglue
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_logglue`;
CREATE TABLE `xxl_job_logglue` (
  `id` int NOT NULL AUTO_INCREMENT,
  `job_id` int NOT NULL COMMENT '任务，主键ID',
  `glue_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'GLUE类型',
  `glue_source` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci COMMENT 'GLUE源代码',
  `glue_remark` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'GLUE备注',
  `add_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of xxl_job_logglue
-- ----------------------------

-- ----------------------------
-- Table structure for xxl_job_registry
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_registry`;
CREATE TABLE `xxl_job_registry` (
  `id` int NOT NULL AUTO_INCREMENT,
  `registry_group` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `registry_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `registry_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `i_g_k_v` (`registry_group`,`registry_key`,`registry_value`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=261 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of xxl_job_registry
-- ----------------------------
INSERT INTO `xxl_job_registry` VALUES ('259', 'EXECUTOR', 'bid-service', 'http://172.17.0.15:9988/', '2024-07-12 11:51:27');
INSERT INTO `xxl_job_registry` VALUES ('260', 'EXECUTOR', 'bid-service', 'http://172.17.0.15:9988/', '2024-07-12 11:51:27');

-- ----------------------------
-- Table structure for xxl_job_user
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_user`;
CREATE TABLE `xxl_job_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '账号',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码',
  `role` tinyint NOT NULL COMMENT '角色：0-普通用户、1-管理员',
  `permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '权限：执行器ID列表，多个逗号分割',
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of xxl_job_user
-- ----------------------------
INSERT INTO `xxl_job_user` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '1', null);
