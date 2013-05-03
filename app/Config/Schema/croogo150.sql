/*
Navicat MySQL Data Transfer

Source Server         : DB
Source Server Version : 50516
Source Host           : localhost:3306
Source Database       : croogo150

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2013-05-03 16:43:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `acos`
-- ----------------------------
DROP TABLE IF EXISTS `acos`;
CREATE TABLE `acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=275 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of acos
-- ----------------------------
INSERT INTO `acos` VALUES ('1', null, '', null, 'controllers', '1', '462');
INSERT INTO `acos` VALUES ('2', '208', '', null, 'Attachments', '129', '140');
INSERT INTO `acos` VALUES ('3', '2', '', null, 'admin_index', '130', '131');
INSERT INTO `acos` VALUES ('4', '2', '', null, 'admin_add', '132', '133');
INSERT INTO `acos` VALUES ('5', '2', '', null, 'admin_edit', '134', '135');
INSERT INTO `acos` VALUES ('6', '2', '', null, 'admin_delete', '136', '137');
INSERT INTO `acos` VALUES ('7', '2', '', null, 'admin_browse', '138', '139');
INSERT INTO `acos` VALUES ('8', '206', '', null, 'Blocks', '37', '54');
INSERT INTO `acos` VALUES ('9', '8', '', null, 'admin_index', '38', '39');
INSERT INTO `acos` VALUES ('10', '8', '', null, 'admin_add', '40', '41');
INSERT INTO `acos` VALUES ('11', '8', '', null, 'admin_edit', '42', '43');
INSERT INTO `acos` VALUES ('12', '8', '', null, 'admin_delete', '44', '45');
INSERT INTO `acos` VALUES ('13', '8', '', null, 'admin_moveup', '46', '47');
INSERT INTO `acos` VALUES ('14', '8', '', null, 'admin_movedown', '48', '49');
INSERT INTO `acos` VALUES ('15', '8', '', null, 'admin_process', '50', '51');
INSERT INTO `acos` VALUES ('16', '209', '', null, 'Comments', '143', '158');
INSERT INTO `acos` VALUES ('17', '16', '', null, 'admin_index', '144', '145');
INSERT INTO `acos` VALUES ('18', '16', '', null, 'admin_edit', '146', '147');
INSERT INTO `acos` VALUES ('19', '16', '', null, 'admin_delete', '148', '149');
INSERT INTO `acos` VALUES ('20', '16', '', null, 'admin_process', '150', '151');
INSERT INTO `acos` VALUES ('21', '16', '', null, 'index', '152', '153');
INSERT INTO `acos` VALUES ('22', '16', '', null, 'add', '154', '155');
INSERT INTO `acos` VALUES ('23', '16', '', null, 'delete', '156', '157');
INSERT INTO `acos` VALUES ('24', '210', '', null, 'Contacts', '161', '174');
INSERT INTO `acos` VALUES ('25', '24', '', null, 'admin_index', '162', '163');
INSERT INTO `acos` VALUES ('26', '24', '', null, 'admin_add', '164', '165');
INSERT INTO `acos` VALUES ('27', '24', '', null, 'admin_edit', '166', '167');
INSERT INTO `acos` VALUES ('28', '24', '', null, 'admin_delete', '168', '169');
INSERT INTO `acos` VALUES ('29', '24', '', null, 'view', '170', '171');
INSERT INTO `acos` VALUES ('30', '208', '', null, 'FileManager', '107', '128');
INSERT INTO `acos` VALUES ('31', '30', '', null, 'admin_index', '108', '109');
INSERT INTO `acos` VALUES ('32', '30', '', null, 'admin_browse', '110', '111');
INSERT INTO `acos` VALUES ('33', '30', '', null, 'admin_editfile', '112', '113');
INSERT INTO `acos` VALUES ('34', '30', '', null, 'admin_upload', '114', '115');
INSERT INTO `acos` VALUES ('35', '30', '', null, 'admin_delete_file', '116', '117');
INSERT INTO `acos` VALUES ('36', '30', '', null, 'admin_delete_directory', '118', '119');
INSERT INTO `acos` VALUES ('37', '30', '', null, 'admin_rename', '120', '121');
INSERT INTO `acos` VALUES ('38', '30', '', null, 'admin_create_directory', '122', '123');
INSERT INTO `acos` VALUES ('39', '30', '', null, 'admin_create_file', '124', '125');
INSERT INTO `acos` VALUES ('40', '30', '', null, 'admin_chmod', '126', '127');
INSERT INTO `acos` VALUES ('41', '213', '', null, 'Languages', '271', '286');
INSERT INTO `acos` VALUES ('42', '41', '', null, 'admin_index', '272', '273');
INSERT INTO `acos` VALUES ('43', '41', '', null, 'admin_add', '274', '275');
INSERT INTO `acos` VALUES ('44', '41', '', null, 'admin_edit', '276', '277');
INSERT INTO `acos` VALUES ('45', '41', '', null, 'admin_delete', '278', '279');
INSERT INTO `acos` VALUES ('46', '41', '', null, 'admin_moveup', '280', '281');
INSERT INTO `acos` VALUES ('47', '41', '', null, 'admin_movedown', '282', '283');
INSERT INTO `acos` VALUES ('48', '41', '', null, 'admin_select', '284', '285');
INSERT INTO `acos` VALUES ('49', '212', '', null, 'Links', '231', '248');
INSERT INTO `acos` VALUES ('50', '49', '', null, 'admin_index', '232', '233');
INSERT INTO `acos` VALUES ('51', '49', '', null, 'admin_add', '234', '235');
INSERT INTO `acos` VALUES ('52', '49', '', null, 'admin_edit', '236', '237');
INSERT INTO `acos` VALUES ('53', '49', '', null, 'admin_delete', '238', '239');
INSERT INTO `acos` VALUES ('54', '49', '', null, 'admin_moveup', '240', '241');
INSERT INTO `acos` VALUES ('55', '49', '', null, 'admin_movedown', '242', '243');
INSERT INTO `acos` VALUES ('56', '49', '', null, 'admin_process', '244', '245');
INSERT INTO `acos` VALUES ('57', '212', '', null, 'Menus', '221', '230');
INSERT INTO `acos` VALUES ('58', '57', '', null, 'admin_index', '222', '223');
INSERT INTO `acos` VALUES ('59', '57', '', null, 'admin_add', '224', '225');
INSERT INTO `acos` VALUES ('60', '57', '', null, 'admin_edit', '226', '227');
INSERT INTO `acos` VALUES ('61', '57', '', null, 'admin_delete', '228', '229');
INSERT INTO `acos` VALUES ('62', '210', '', null, 'Messages', '175', '184');
INSERT INTO `acos` VALUES ('63', '62', '', null, 'admin_index', '176', '177');
INSERT INTO `acos` VALUES ('64', '62', '', null, 'admin_edit', '178', '179');
INSERT INTO `acos` VALUES ('65', '62', '', null, 'admin_delete', '180', '181');
INSERT INTO `acos` VALUES ('66', '62', '', null, 'admin_process', '182', '183');
INSERT INTO `acos` VALUES ('67', '211', '', null, 'Nodes', '187', '218');
INSERT INTO `acos` VALUES ('68', '67', '', null, 'admin_index', '188', '189');
INSERT INTO `acos` VALUES ('69', '67', '', null, 'admin_create', '190', '191');
INSERT INTO `acos` VALUES ('70', '67', '', null, 'admin_add', '192', '193');
INSERT INTO `acos` VALUES ('71', '67', '', null, 'admin_edit', '194', '195');
INSERT INTO `acos` VALUES ('72', '67', '', null, 'admin_update_paths', '196', '197');
INSERT INTO `acos` VALUES ('73', '67', '', null, 'admin_delete', '198', '199');
INSERT INTO `acos` VALUES ('74', '67', '', null, 'admin_delete_meta', '200', '201');
INSERT INTO `acos` VALUES ('75', '67', '', null, 'admin_add_meta', '202', '203');
INSERT INTO `acos` VALUES ('76', '67', '', null, 'admin_process', '204', '205');
INSERT INTO `acos` VALUES ('77', '67', '', null, 'index', '206', '207');
INSERT INTO `acos` VALUES ('78', '67', '', null, 'term', '208', '209');
INSERT INTO `acos` VALUES ('79', '67', '', null, 'promoted', '210', '211');
INSERT INTO `acos` VALUES ('80', '67', '', null, 'search', '212', '213');
INSERT INTO `acos` VALUES ('81', '67', '', null, 'view', '214', '215');
INSERT INTO `acos` VALUES ('82', '206', '', null, 'Regions', '55', '64');
INSERT INTO `acos` VALUES ('83', '82', '', null, 'admin_index', '56', '57');
INSERT INTO `acos` VALUES ('84', '82', '', null, 'admin_add', '58', '59');
INSERT INTO `acos` VALUES ('85', '82', '', null, 'admin_edit', '60', '61');
INSERT INTO `acos` VALUES ('86', '82', '', null, 'admin_delete', '62', '63');
INSERT INTO `acos` VALUES ('87', '215', '', null, 'Roles', '363', '372');
INSERT INTO `acos` VALUES ('88', '87', '', null, 'admin_index', '364', '365');
INSERT INTO `acos` VALUES ('89', '87', '', null, 'admin_add', '366', '367');
INSERT INTO `acos` VALUES ('90', '87', '', null, 'admin_edit', '368', '369');
INSERT INTO `acos` VALUES ('91', '87', '', null, 'admin_delete', '370', '371');
INSERT INTO `acos` VALUES ('92', '213', '', null, 'Settings', '251', '270');
INSERT INTO `acos` VALUES ('93', '92', '', null, 'admin_dashboard', '252', '253');
INSERT INTO `acos` VALUES ('94', '92', '', null, 'admin_index', '254', '255');
INSERT INTO `acos` VALUES ('95', '92', '', null, 'admin_view', '256', '257');
INSERT INTO `acos` VALUES ('96', '92', '', null, 'admin_add', '258', '259');
INSERT INTO `acos` VALUES ('97', '92', '', null, 'admin_edit', '260', '261');
INSERT INTO `acos` VALUES ('98', '92', '', null, 'admin_delete', '262', '263');
INSERT INTO `acos` VALUES ('99', '92', '', null, 'admin_prefix', '264', '265');
INSERT INTO `acos` VALUES ('100', '92', '', null, 'admin_moveup', '266', '267');
INSERT INTO `acos` VALUES ('101', '92', '', null, 'admin_movedown', '268', '269');
INSERT INTO `acos` VALUES ('102', '214', '', null, 'Terms', '289', '302');
INSERT INTO `acos` VALUES ('103', '102', '', null, 'admin_index', '290', '291');
INSERT INTO `acos` VALUES ('104', '102', '', null, 'admin_add', '292', '293');
INSERT INTO `acos` VALUES ('105', '102', '', null, 'admin_edit', '294', '295');
INSERT INTO `acos` VALUES ('106', '102', '', null, 'admin_delete', '296', '297');
INSERT INTO `acos` VALUES ('107', '102', '', null, 'admin_moveup', '298', '299');
INSERT INTO `acos` VALUES ('108', '102', '', null, 'admin_movedown', '300', '301');
INSERT INTO `acos` VALUES ('110', '214', '', null, 'Types', '303', '312');
INSERT INTO `acos` VALUES ('111', '110', '', null, 'admin_index', '304', '305');
INSERT INTO `acos` VALUES ('112', '110', '', null, 'admin_add', '306', '307');
INSERT INTO `acos` VALUES ('113', '110', '', null, 'admin_edit', '308', '309');
INSERT INTO `acos` VALUES ('114', '110', '', null, 'admin_delete', '310', '311');
INSERT INTO `acos` VALUES ('115', '215', '', null, 'Users', '329', '362');
INSERT INTO `acos` VALUES ('116', '115', '', null, 'admin_index', '330', '331');
INSERT INTO `acos` VALUES ('117', '115', '', null, 'admin_add', '332', '333');
INSERT INTO `acos` VALUES ('118', '115', '', null, 'admin_edit', '334', '335');
INSERT INTO `acos` VALUES ('119', '115', '', null, 'admin_reset_password', '336', '337');
INSERT INTO `acos` VALUES ('120', '115', '', null, 'admin_delete', '338', '339');
INSERT INTO `acos` VALUES ('121', '115', '', null, 'admin_login', '340', '341');
INSERT INTO `acos` VALUES ('122', '115', '', null, 'admin_logout', '342', '343');
INSERT INTO `acos` VALUES ('123', '115', '', null, 'index', '344', '345');
INSERT INTO `acos` VALUES ('124', '115', '', null, 'add', '346', '347');
INSERT INTO `acos` VALUES ('125', '115', '', null, 'activate', '348', '349');
INSERT INTO `acos` VALUES ('126', '115', '', null, 'edit', '350', '351');
INSERT INTO `acos` VALUES ('127', '115', '', null, 'forgot', '352', '353');
INSERT INTO `acos` VALUES ('128', '115', '', null, 'reset', '354', '355');
INSERT INTO `acos` VALUES ('129', '115', '', null, 'login', '356', '357');
INSERT INTO `acos` VALUES ('130', '115', '', null, 'logout', '358', '359');
INSERT INTO `acos` VALUES ('131', '115', '', null, 'view', '360', '361');
INSERT INTO `acos` VALUES ('132', '214', '', null, 'Vocabularies', '313', '326');
INSERT INTO `acos` VALUES ('133', '132', '', null, 'admin_index', '314', '315');
INSERT INTO `acos` VALUES ('134', '132', '', null, 'admin_add', '316', '317');
INSERT INTO `acos` VALUES ('135', '132', '', null, 'admin_edit', '318', '319');
INSERT INTO `acos` VALUES ('136', '132', '', null, 'admin_delete', '320', '321');
INSERT INTO `acos` VALUES ('142', '205', '', null, 'AclActions', '13', '26');
INSERT INTO `acos` VALUES ('143', '142', '', null, 'admin_index', '14', '15');
INSERT INTO `acos` VALUES ('144', '142', '', null, 'admin_add', '16', '17');
INSERT INTO `acos` VALUES ('145', '142', '', null, 'admin_edit', '18', '19');
INSERT INTO `acos` VALUES ('146', '142', '', null, 'admin_delete', '20', '21');
INSERT INTO `acos` VALUES ('147', '142', '', null, 'admin_move', '22', '23');
INSERT INTO `acos` VALUES ('148', '142', '', null, 'admin_generate', '24', '25');
INSERT INTO `acos` VALUES ('154', '205', '', null, 'AclPermissions', '27', '34');
INSERT INTO `acos` VALUES ('155', '154', '', null, 'admin_index', '28', '29');
INSERT INTO `acos` VALUES ('156', '154', '', null, 'admin_toggle', '30', '31');
INSERT INTO `acos` VALUES ('162', '207', '', null, 'ExtensionsLocales', '67', '78');
INSERT INTO `acos` VALUES ('163', '162', '', null, 'admin_index', '68', '69');
INSERT INTO `acos` VALUES ('164', '162', '', null, 'admin_activate', '70', '71');
INSERT INTO `acos` VALUES ('165', '162', '', null, 'admin_add', '72', '73');
INSERT INTO `acos` VALUES ('166', '162', '', null, 'admin_edit', '74', '75');
INSERT INTO `acos` VALUES ('167', '162', '', null, 'admin_delete', '76', '77');
INSERT INTO `acos` VALUES ('168', '207', '', null, 'ExtensionsPlugins', '79', '90');
INSERT INTO `acos` VALUES ('169', '168', '', null, 'admin_index', '80', '81');
INSERT INTO `acos` VALUES ('170', '168', '', null, 'admin_add', '82', '83');
INSERT INTO `acos` VALUES ('171', '168', '', null, 'admin_delete', '84', '85');
INSERT INTO `acos` VALUES ('172', '207', '', null, 'ExtensionsThemes', '91', '104');
INSERT INTO `acos` VALUES ('173', '172', '', null, 'admin_index', '92', '93');
INSERT INTO `acos` VALUES ('174', '172', '', null, 'admin_activate', '94', '95');
INSERT INTO `acos` VALUES ('175', '172', '', null, 'admin_add', '96', '97');
INSERT INTO `acos` VALUES ('176', '172', '', null, 'admin_editor', '98', '99');
INSERT INTO `acos` VALUES ('177', '172', '', null, 'admin_save', '100', '101');
INSERT INTO `acos` VALUES ('178', '172', '', null, 'admin_delete', '102', '103');
INSERT INTO `acos` VALUES ('179', '1', null, null, 'Translate', '2', '11');
INSERT INTO `acos` VALUES ('180', '179', null, null, 'Translate', '3', '10');
INSERT INTO `acos` VALUES ('181', '180', null, null, 'admin_index', '4', '5');
INSERT INTO `acos` VALUES ('182', '180', null, null, 'admin_edit', '6', '7');
INSERT INTO `acos` VALUES ('183', '180', null, null, 'admin_delete', '8', '9');
INSERT INTO `acos` VALUES ('205', '1', null, null, 'Acl', '12', '35');
INSERT INTO `acos` VALUES ('206', '1', null, null, 'Blocks', '36', '65');
INSERT INTO `acos` VALUES ('207', '1', null, null, 'Extensions', '66', '105');
INSERT INTO `acos` VALUES ('208', '1', null, null, 'FileManager', '106', '141');
INSERT INTO `acos` VALUES ('209', '1', null, null, 'Comments', '142', '159');
INSERT INTO `acos` VALUES ('210', '1', null, null, 'Contacts', '160', '185');
INSERT INTO `acos` VALUES ('211', '1', null, null, 'Nodes', '186', '219');
INSERT INTO `acos` VALUES ('212', '1', null, null, 'Menus', '220', '249');
INSERT INTO `acos` VALUES ('213', '1', null, null, 'Settings', '250', '287');
INSERT INTO `acos` VALUES ('214', '1', null, null, 'Taxonomy', '288', '327');
INSERT INTO `acos` VALUES ('215', '1', null, null, 'Users', '328', '373');
INSERT INTO `acos` VALUES ('216', '154', null, null, 'admin_upgrade', '32', '33');
INSERT INTO `acos` VALUES ('217', '8', null, null, 'admin_toggle', '52', '53');
INSERT INTO `acos` VALUES ('220', '24', null, null, 'captcha', '172', '173');
INSERT INTO `acos` VALUES ('222', '168', null, null, 'admin_toggle', '86', '87');
INSERT INTO `acos` VALUES ('223', '168', null, null, 'admin_migrate', '88', '89');
INSERT INTO `acos` VALUES ('224', '49', null, null, 'admin_toggle', '246', '247');
INSERT INTO `acos` VALUES ('225', '1', null, null, 'Meta', '374', '375');
INSERT INTO `acos` VALUES ('226', '1', null, null, 'Migrations', '376', '377');
INSERT INTO `acos` VALUES ('227', '67', null, null, 'admin_toggle', '216', '217');
INSERT INTO `acos` VALUES ('228', '1', null, null, 'Search', '378', '379');
INSERT INTO `acos` VALUES ('229', '132', null, null, 'admin_moveup', '322', '323');
INSERT INTO `acos` VALUES ('230', '132', null, null, 'admin_movedown', '324', '325');
INSERT INTO `acos` VALUES ('231', '1', null, null, 'Tinymce', '380', '381');
INSERT INTO `acos` VALUES ('232', null, null, null, '', null, null);
INSERT INTO `acos` VALUES ('233', '1', null, null, 'Service', '382', '401');
INSERT INTO `acos` VALUES ('234', '233', null, null, 'Service', '383', '400');
INSERT INTO `acos` VALUES ('235', '234', null, null, 'view', '384', '385');
INSERT INTO `acos` VALUES ('236', '234', null, null, 'admin_index', '386', '387');
INSERT INTO `acos` VALUES ('237', '234', null, null, 'admin_add', '388', '389');
INSERT INTO `acos` VALUES ('238', '234', null, null, 'admin_edit', '390', '391');
INSERT INTO `acos` VALUES ('239', '234', null, null, 'admin_delete', '392', '393');
INSERT INTO `acos` VALUES ('241', '234', null, null, 'admin_link', '394', '395');
INSERT INTO `acos` VALUES ('242', '234', null, null, 'index', '396', '397');
INSERT INTO `acos` VALUES ('243', '234', null, null, 'slug', '398', '399');
INSERT INTO `acos` VALUES ('244', '1', null, null, 'News', '402', '425');
INSERT INTO `acos` VALUES ('245', '244', null, null, 'News', '403', '424');
INSERT INTO `acos` VALUES ('246', '245', null, null, 'admin_link', '404', '405');
INSERT INTO `acos` VALUES ('247', '245', null, null, 'index', '406', '407');
INSERT INTO `acos` VALUES ('248', '245', null, null, 'view', '408', '409');
INSERT INTO `acos` VALUES ('249', '245', null, null, 'admin_index', '410', '411');
INSERT INTO `acos` VALUES ('250', '245', null, null, 'admin_add', '412', '413');
INSERT INTO `acos` VALUES ('251', '245', null, null, 'admin_edit', '414', '415');
INSERT INTO `acos` VALUES ('252', '245', null, null, 'admin_delete', '416', '417');
INSERT INTO `acos` VALUES ('253', '245', null, null, 'slug', '418', '419');
INSERT INTO `acos` VALUES ('254', '245', null, null, 'getRecursive', '420', '421');
INSERT INTO `acos` VALUES ('255', '245', null, null, 'categories', '422', '423');
INSERT INTO `acos` VALUES ('256', '1', null, null, 'Products', '426', '449');
INSERT INTO `acos` VALUES ('257', '256', null, null, 'Products', '427', '448');
INSERT INTO `acos` VALUES ('259', '257', null, null, 'index', '428', '429');
INSERT INTO `acos` VALUES ('260', '257', null, null, 'view', '430', '431');
INSERT INTO `acos` VALUES ('261', '257', null, null, 'randomProduct', '432', '433');
INSERT INTO `acos` VALUES ('262', '257', null, null, 'listImage', '434', '435');
INSERT INTO `acos` VALUES ('263', '257', null, null, 'admin_index', '436', '437');
INSERT INTO `acos` VALUES ('264', '257', null, null, 'admin_add', '438', '439');
INSERT INTO `acos` VALUES ('265', '257', null, null, 'admin_edit', '440', '441');
INSERT INTO `acos` VALUES ('266', '257', null, null, 'admin_delete', '442', '443');
INSERT INTO `acos` VALUES ('267', '257', null, null, 'slug', '444', '445');
INSERT INTO `acos` VALUES ('268', '257', null, null, 'getRecursive', '446', '447');
INSERT INTO `acos` VALUES ('269', '1', null, null, 'Support', '450', '461');
INSERT INTO `acos` VALUES ('270', '269', null, null, 'Support', '451', '460');
INSERT INTO `acos` VALUES ('271', '270', null, null, 'admin_index', '452', '453');
INSERT INTO `acos` VALUES ('272', '270', null, null, 'admin_add', '454', '455');
INSERT INTO `acos` VALUES ('273', '270', null, null, 'admin_edit', '456', '457');
INSERT INTO `acos` VALUES ('274', '270', null, null, 'admin_delete', '458', '459');

-- ----------------------------
-- Table structure for `aros`
-- ----------------------------
DROP TABLE IF EXISTS `aros`;
CREATE TABLE `aros` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of aros
-- ----------------------------
INSERT INTO `aros` VALUES ('1', '2', 'Role', '1', 'Role-admin', '3', '6');
INSERT INTO `aros` VALUES ('2', '3', 'Role', '2', 'Role-registered', '2', '7');
INSERT INTO `aros` VALUES ('3', null, 'Role', '3', 'Role-public', '1', '8');
INSERT INTO `aros` VALUES ('4', '1', 'User', '1', 'admin', '4', '5');

-- ----------------------------
-- Table structure for `aros_acos`
-- ----------------------------
DROP TABLE IF EXISTS `aros_acos`;
CREATE TABLE `aros_acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `aro_id` int(10) NOT NULL,
  `aco_id` int(10) NOT NULL,
  `_create` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `_read` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `_update` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `_delete` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of aros_acos
-- ----------------------------
INSERT INTO `aros_acos` VALUES ('1', '2', '23', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('2', '2', '22', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('3', '2', '21', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('4', '3', '21', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('5', '3', '22', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('6', '2', '29', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('7', '3', '29', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('8', '2', '77', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('9', '2', '78', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('10', '2', '79', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('11', '2', '80', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('12', '2', '81', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('13', '3', '77', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('14', '3', '78', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('15', '3', '79', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('16', '3', '80', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('17', '3', '81', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('18', '2', '123', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('19', '3', '124', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('20', '3', '125', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('21', '2', '126', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('22', '3', '127', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('23', '3', '128', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('24', '3', '129', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('25', '2', '130', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('26', '2', '131', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('27', '3', '131', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('28', '3', '187', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('29', '2', '187', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('30', '3', '191', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('31', '2', '191', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('32', '3', '195', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('33', '2', '195', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('34', '3', '199', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('35', '2', '199', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('36', '3', '203', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('37', '2', '203', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('38', '2', '220', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('39', '3', '220', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('40', '2', '166', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('41', '2', '165', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('42', '3', '165', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('43', '3', '166', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('44', '2', '164', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('45', '3', '164', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('46', '2', '239', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('47', '2', '238', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('48', '2', '237', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('49', '2', '236', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('50', '2', '235', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('52', '2', '241', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('53', '3', '242', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('54', '2', '242', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('55', '2', '243', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('56', '3', '243', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('57', '3', '241', '-1', '-1', '-1', '-1');
INSERT INTO `aros_acos` VALUES ('58', '3', '238', '-1', '-1', '-1', '-1');
INSERT INTO `aros_acos` VALUES ('59', '3', '247', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('60', '3', '248', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('61', '2', '246', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('62', '2', '247', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('63', '2', '248', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('64', '2', '249', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('65', '2', '250', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('66', '2', '251', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('67', '2', '252', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('68', '2', '253', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('69', '2', '255', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('70', '2', '254', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('71', '3', '255', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('72', '3', '253', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('73', '3', '252', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('74', '3', '254', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('75', '3', '251', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('76', '3', '250', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('77', '3', '235', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('78', '3', '246', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('79', '3', '249', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('80', '3', '259', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('81', '3', '260', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('83', '2', '259', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('84', '2', '261', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('85', '2', '260', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('86', '2', '262', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('87', '2', '263', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('88', '2', '264', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('89', '2', '265', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('90', '2', '266', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('91', '2', '267', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('92', '2', '268', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('93', '3', '261', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('94', '3', '262', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('95', '3', '267', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('96', '3', '268', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('97', '2', '167', '1', '1', '1', '1');
INSERT INTO `aros_acos` VALUES ('98', '2', '163', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for `blocks`
-- ----------------------------
DROP TABLE IF EXISTS `blocks`;
CREATE TABLE `blocks` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `region_id` int(20) DEFAULT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `show_title` tinyint(1) NOT NULL DEFAULT '1',
  `class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `weight` int(11) DEFAULT NULL,
  `element` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `visibility_roles` text COLLATE utf8_unicode_ci,
  `visibility_paths` text COLLATE utf8_unicode_ci,
  `visibility_php` text COLLATE utf8_unicode_ci,
  `params` text COLLATE utf8_unicode_ci,
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `block_alias` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of blocks
-- ----------------------------
INSERT INTO `blocks` VALUES ('3', '4', 'About', 'about', 'This is the content of your block. Can be modified in admin panel.', '1', '', '1', '2', '', '', '', '', '', '2009-12-20 03:07:39', '2009-07-26 17:13:14');
INSERT INTO `blocks` VALUES ('5', '4', 'Meta', 'meta', '[menu:meta]', '1', '', '1', '6', '', '', '', '', '', '2009-12-22 05:17:39', '2009-09-12 06:36:22');
INSERT INTO `blocks` VALUES ('6', '4', 'Blogroll', 'blogroll', '[menu:blogroll]', '1', '', '1', '4', '', '', '', '', '', '2009-12-20 03:07:33', '2009-09-12 23:33:27');
INSERT INTO `blocks` VALUES ('7', '4', 'Categories', 'categories', '[vocabulary:categories type=\"blog\"]', '1', '', '1', '3', '', '', '', '', '', '2009-12-20 03:07:36', '2009-10-03 16:52:50');
INSERT INTO `blocks` VALUES ('8', '4', 'Search', 'search', '', '0', '', '1', '1', 'Nodes.search', '', '', '', '', '2009-12-20 03:07:39', '2009-12-20 03:07:27');
INSERT INTO `blocks` VALUES ('9', '4', 'Recent Posts', 'recent_posts', '[node:recent_posts conditions=\"Node.type:blog\" order=\"Node.id DESC\" limit=\"5\"]', '1', '', '1', '5', '', '', '', '', '', '2010-04-08 21:09:31', '2009-12-22 05:17:32');
INSERT INTO `blocks` VALUES ('10', '19', 'BLK - LS Menu Footer', 'blk-ls-menu-footer', '[menu:main]', '0', '', '1', null, '', '', '', null, '', '2013-04-23 05:19:35', '2013-04-23 04:12:15');
INSERT INTO `blocks` VALUES ('11', '20', 'BLK - LS Contact Footer', 'blk-ls-contact-footer', '[element:footer-contact]', '0', '', '1', null, '', '', '', null, '', '2013-04-23 05:19:49', '2013-04-23 04:29:27');
INSERT INTO `blocks` VALUES ('12', '21', 'BLK - LS Linked Footer', 'blk-ls-linked-footer', '[menu:mn-ls-menu-footer]', '0', '', '1', null, '', '', '', null, '', '2013-04-23 04:55:24', '2013-04-23 04:50:29');
INSERT INTO `blocks` VALUES ('13', '22', 'BLK - LS Menu Footer', 'blk-ls-statistic-footer', '[element:footer-statistic]', '0', '', '1', null, '', '', '', null, '', '2013-04-23 05:13:14', '2013-04-23 05:13:14');
INSERT INTO `blocks` VALUES ('14', '26', 'BLK - LS Product Category', 'blk-ls-product-category', '[menu:mn-ls-product-category]', '0', '', '1', null, '', '', '', null, '', '2013-04-23 06:47:17', '2013-04-23 05:28:19');
INSERT INTO `blocks` VALUES ('15', '27', 'BLK - LS Service Category', 'blk-ls-service-category', '[menu:mn-ls-service]', '0', '', '1', null, '', '', '', null, '', '2013-04-23 06:53:27', '2013-04-23 05:59:07');
INSERT INTO `blocks` VALUES ('16', '25', 'BLK - LS Header Contact', 'blk-ls-header-contact', '[element:header-contact]', '0', '', '1', null, '', '', '', null, '', '2013-04-23 06:21:14', '2013-04-23 06:19:06');
INSERT INTO `blocks` VALUES ('17', '28', 'BLK - LS Service Relative', 'blk-ls-service-relative', '', '0', '', '1', null, '', '', '', null, '', '2013-04-23 11:19:05', '2013-04-23 11:05:07');
INSERT INTO `blocks` VALUES ('18', '3', 'BLK - LS News Relative', 'blk-ls-news-relative', '[node:news_relative conditions=\"Node.type:page;Node.status:1;Node.parent_id:11\" order=\"Node.id DESC\" limit=\"5\"]', '0', '', '1', null, '', '', '', null, '', '2013-04-23 11:20:01', '2013-04-23 11:20:01');

-- ----------------------------
-- Table structure for `comments`
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `parent_id` int(20) DEFAULT NULL,
  `node_id` int(20) NOT NULL,
  `user_id` int(20) NOT NULL DEFAULT '0',
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `comment_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'comment',
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('1', null, '1', '0', 'Mr Croogo', 'email@example.com', 'http://www.croogo.org', '127.0.0.1', '', 'Hi, this is the first comment.', null, '1', '0', 'blog', 'comment', '1', '2', '2009-12-25 12:00:00', '2009-12-25 12:00:00');

-- ----------------------------
-- Table structure for `contacts`
-- ----------------------------
DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `address2` text COLLATE utf8_unicode_ci,
  `state` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message_status` tinyint(1) NOT NULL DEFAULT '1',
  `message_archive` tinyint(1) NOT NULL DEFAULT '1',
  `message_count` int(11) NOT NULL DEFAULT '0',
  `message_spam_protection` tinyint(1) NOT NULL DEFAULT '0',
  `message_captcha` tinyint(1) NOT NULL DEFAULT '0',
  `message_notify` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of contacts
-- ----------------------------
INSERT INTO `contacts` VALUES ('1', 'Contact', 'contact', '', '', '', '', '', '', '', '', '', '', 'you@your-site.com', '1', '0', '0', '0', '0', '1', '1', '2009-10-07 22:07:49', '2009-09-16 01:45:17');
INSERT INTO `contacts` VALUES ('11', 'aaaaa', '', 'aaaaa', 'aaaaaa', null, null, null, null, null, null, null, null, 'khoi@mailinator.com', '1', '1', '0', '0', '0', '1', '1', '2013-04-24 09:44:11', '2013-04-24 09:44:11');
INSERT INTO `contacts` VALUES ('16', 'erwe', '', 'werw', 'rwer', null, null, null, null, null, null, null, null, 'wer@gmail.com', '1', '1', '0', '0', '0', '1', '1', '2013-04-24 10:15:56', '2013-04-24 10:15:56');
INSERT INTO `contacts` VALUES ('31', 'dsf', '', 'sdfdsf', 'sdfdsf', null, null, null, null, null, null, null, null, 'acblsd@gmail.com', '1', '1', '0', '0', '0', '1', '1', '2013-04-27 13:49:26', '2013-04-27 13:49:26');
INSERT INTO `contacts` VALUES ('32', 'a', '', 'lkdlfs', 'abcd', null, null, null, null, null, null, null, null, 'abcd@mailinator.com', '1', '1', '0', '0', '0', '1', '1', '2013-05-02 22:22:19', '2013-05-02 22:22:19');
INSERT INTO `contacts` VALUES ('33', 'gui cai coi', '', 'kok', 'ok', null, null, null, null, null, null, null, null, 'abcd@mailinator.com', '1', '1', '0', '0', '0', '1', '1', '2013-05-03 16:03:09', '2013-05-03 16:03:09');

-- ----------------------------
-- Table structure for `counters`
-- ----------------------------
DROP TABLE IF EXISTS `counters`;
CREATE TABLE `counters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_visit` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of counters
-- ----------------------------
INSERT INTO `counters` VALUES ('57', '127.0.0.1', '2013-04-25 11:19:31');
INSERT INTO `counters` VALUES ('58', '127.0.0.2', '2013-04-22 11:19:31');
INSERT INTO `counters` VALUES ('59', '127.0.0.1', '2013-04-25 11:34:37');
INSERT INTO `counters` VALUES ('60', '127.0.0.1', '2013-04-25 11:52:25');
INSERT INTO `counters` VALUES ('61', '127.0.0.1', '2013-04-25 12:33:36');
INSERT INTO `counters` VALUES ('62', '127.0.0.1', '2013-04-25 13:18:47');
INSERT INTO `counters` VALUES ('63', '127.0.0.1', '2013-04-25 13:33:54');
INSERT INTO `counters` VALUES ('64', '127.0.0.1', '2013-04-25 13:49:06');
INSERT INTO `counters` VALUES ('65', '127.0.0.1', '2013-04-25 14:04:15');
INSERT INTO `counters` VALUES ('66', '127.0.0.1', '2013-04-25 14:20:44');
INSERT INTO `counters` VALUES ('67', '127.0.0.1', '2013-04-25 15:13:41');
INSERT INTO `counters` VALUES ('68', '127.0.0.1', '2013-04-25 15:29:31');
INSERT INTO `counters` VALUES ('69', '127.0.0.1', '2013-04-25 15:45:01');
INSERT INTO `counters` VALUES ('70', '127.0.0.1', '2013-04-25 16:00:09');
INSERT INTO `counters` VALUES ('71', '127.0.0.1', '2013-04-25 16:15:14');
INSERT INTO `counters` VALUES ('72', '127.0.0.1', '2013-04-25 16:30:36');
INSERT INTO `counters` VALUES ('73', '127.0.0.1', '2013-04-25 16:45:45');
INSERT INTO `counters` VALUES ('74', '127.0.0.1', '2013-04-25 17:14:48');
INSERT INTO `counters` VALUES ('75', '127.0.0.1', '2013-04-25 19:07:21');
INSERT INTO `counters` VALUES ('76', '127.0.0.1', '2013-04-25 19:49:43');
INSERT INTO `counters` VALUES ('77', '127.0.0.1', '2013-04-25 21:53:26');
INSERT INTO `counters` VALUES ('78', '127.0.0.1', '2013-04-25 22:14:13');
INSERT INTO `counters` VALUES ('79', '127.0.0.1', '2013-04-25 22:29:16');
INSERT INTO `counters` VALUES ('80', '127.0.0.1', '2013-04-25 22:44:17');
INSERT INTO `counters` VALUES ('81', '127.0.0.1', '2013-04-25 23:11:49');
INSERT INTO `counters` VALUES ('82', '127.0.0.1', '2013-04-25 23:27:06');
INSERT INTO `counters` VALUES ('83', '127.0.0.1', '2013-04-25 23:42:43');
INSERT INTO `counters` VALUES ('84', '127.0.0.1', '2013-04-26 00:00:34');
INSERT INTO `counters` VALUES ('85', '127.0.0.1', '2013-04-26 00:20:20');
INSERT INTO `counters` VALUES ('86', '127.0.0.1', '2013-04-26 00:35:20');
INSERT INTO `counters` VALUES ('87', '127.0.0.1', '2013-04-26 00:50:28');
INSERT INTO `counters` VALUES ('88', '127.0.0.1', '2013-04-26 01:06:36');
INSERT INTO `counters` VALUES ('89', '127.0.0.1', '2013-04-26 01:22:05');
INSERT INTO `counters` VALUES ('90', '127.0.0.1', '2013-04-26 01:37:15');
INSERT INTO `counters` VALUES ('91', '127.0.0.1', '2013-04-26 20:39:01');
INSERT INTO `counters` VALUES ('92', '127.0.0.1', '2013-04-26 22:04:36');
INSERT INTO `counters` VALUES ('93', '127.0.0.1', '2013-04-26 22:33:54');
INSERT INTO `counters` VALUES ('94', '127.0.0.1', '2013-04-27 11:41:23');
INSERT INTO `counters` VALUES ('95', '127.0.0.1', '2013-04-27 12:08:25');
INSERT INTO `counters` VALUES ('96', '127.0.0.1', '2013-04-27 13:49:13');
INSERT INTO `counters` VALUES ('97', '127.0.0.1', '2013-04-27 14:15:57');
INSERT INTO `counters` VALUES ('98', '127.0.0.1', '2013-04-27 15:58:58');
INSERT INTO `counters` VALUES ('99', '127.0.0.1', '2013-04-27 23:23:59');
INSERT INTO `counters` VALUES ('100', '127.0.0.1', '2013-04-27 23:44:18');
INSERT INTO `counters` VALUES ('101', '127.0.0.1', '2013-04-28 00:12:38');
INSERT INTO `counters` VALUES ('102', '127.0.0.1', '2013-04-28 00:37:46');
INSERT INTO `counters` VALUES ('103', '127.0.0.1', '2013-04-28 01:33:51');
INSERT INTO `counters` VALUES ('104', '127.0.0.1', '2013-04-28 07:00:20');
INSERT INTO `counters` VALUES ('105', '127.0.0.1', '2013-04-28 10:17:38');
INSERT INTO `counters` VALUES ('106', '127.0.0.1', '2013-04-28 10:50:46');
INSERT INTO `counters` VALUES ('107', '127.0.0.1', '2013-04-28 11:07:51');
INSERT INTO `counters` VALUES ('108', '127.0.0.1', '2013-04-28 15:22:30');
INSERT INTO `counters` VALUES ('109', '127.0.0.1', '2013-04-28 15:50:52');
INSERT INTO `counters` VALUES ('110', '127.0.0.1', '2013-04-28 16:19:41');
INSERT INTO `counters` VALUES ('111', '127.0.0.1', '2013-04-28 16:35:09');
INSERT INTO `counters` VALUES ('112', '127.0.0.1', '2013-04-28 16:50:17');
INSERT INTO `counters` VALUES ('113', '127.0.0.1', '2013-04-28 19:08:10');
INSERT INTO `counters` VALUES ('114', '127.0.0.1', '2013-04-29 11:28:35');
INSERT INTO `counters` VALUES ('115', '127.0.0.1', '2013-04-29 11:45:04');
INSERT INTO `counters` VALUES ('116', '127.0.0.1', '2013-04-29 13:48:36');
INSERT INTO `counters` VALUES ('117', '127.0.0.1', '2013-04-29 17:09:35');
INSERT INTO `counters` VALUES ('118', '127.0.0.1', '2013-04-29 20:34:29');
INSERT INTO `counters` VALUES ('119', '127.0.0.1', '2013-04-29 20:34:29');
INSERT INTO `counters` VALUES ('120', '127.0.0.1', '2013-04-29 22:28:41');
INSERT INTO `counters` VALUES ('121', '127.0.0.1', '2013-04-29 22:43:41');
INSERT INTO `counters` VALUES ('122', '127.0.0.1', '2013-04-29 22:58:46');
INSERT INTO `counters` VALUES ('123', '127.0.0.1', '2013-04-29 23:13:49');
INSERT INTO `counters` VALUES ('124', '127.0.0.1', '2013-04-29 23:29:34');
INSERT INTO `counters` VALUES ('125', '127.0.0.1', '2013-04-30 00:38:55');
INSERT INTO `counters` VALUES ('126', '127.0.0.1', '2013-04-30 00:56:01');
INSERT INTO `counters` VALUES ('127', '127.0.0.1', '2013-04-30 01:11:02');
INSERT INTO `counters` VALUES ('128', '127.0.0.1', '2013-04-30 01:45:30');
INSERT INTO `counters` VALUES ('129', '127.0.0.1', '2013-04-30 13:16:52');
INSERT INTO `counters` VALUES ('130', '127.0.0.1', '2013-04-30 14:14:21');
INSERT INTO `counters` VALUES ('131', '127.0.0.1', '2013-04-30 21:11:33');
INSERT INTO `counters` VALUES ('132', '127.0.0.1', '2013-04-30 21:26:38');
INSERT INTO `counters` VALUES ('133', '127.0.0.1', '2013-05-01 00:35:16');
INSERT INTO `counters` VALUES ('134', '127.0.0.1', '2013-05-01 01:05:37');
INSERT INTO `counters` VALUES ('135', '127.0.0.1', '2013-05-01 01:55:07');
INSERT INTO `counters` VALUES ('136', '127.0.0.1', '2013-05-01 02:11:00');
INSERT INTO `counters` VALUES ('137', '127.0.0.1', '2013-05-01 08:15:55');
INSERT INTO `counters` VALUES ('138', '127.0.0.1', '2013-05-01 11:17:08');
INSERT INTO `counters` VALUES ('139', '127.0.0.1', '2013-05-01 11:36:53');
INSERT INTO `counters` VALUES ('140', '127.0.0.1', '2013-05-01 11:53:05');
INSERT INTO `counters` VALUES ('141', '127.0.0.1', '2013-05-01 13:03:56');
INSERT INTO `counters` VALUES ('142', '127.0.0.1', '2013-05-01 13:19:48');
INSERT INTO `counters` VALUES ('143', '127.0.0.1', '2013-05-01 14:04:35');
INSERT INTO `counters` VALUES ('144', '127.0.0.1', '2013-05-01 14:19:39');
INSERT INTO `counters` VALUES ('145', '127.0.0.1', '2013-05-01 14:35:44');
INSERT INTO `counters` VALUES ('146', '127.0.0.1', '2013-05-01 14:51:46');
INSERT INTO `counters` VALUES ('147', '127.0.0.1', '2013-05-01 15:06:50');
INSERT INTO `counters` VALUES ('148', '127.0.0.1', '2013-05-01 15:21:50');
INSERT INTO `counters` VALUES ('149', '127.0.0.1', '2013-05-01 15:37:09');
INSERT INTO `counters` VALUES ('150', '127.0.0.1', '2013-05-01 15:52:14');
INSERT INTO `counters` VALUES ('151', '127.0.0.1', '2013-05-01 16:07:20');
INSERT INTO `counters` VALUES ('152', '127.0.0.1', '2013-05-01 16:22:21');
INSERT INTO `counters` VALUES ('153', '127.0.0.1', '2013-05-01 16:39:06');
INSERT INTO `counters` VALUES ('154', '127.0.0.1', '2013-05-01 16:54:07');
INSERT INTO `counters` VALUES ('155', '127.0.0.1', '2013-05-01 19:10:42');
INSERT INTO `counters` VALUES ('156', '127.0.0.1', '2013-05-01 20:41:46');
INSERT INTO `counters` VALUES ('157', '127.0.0.1', '2013-05-01 20:56:49');
INSERT INTO `counters` VALUES ('158', '127.0.0.1', '2013-05-02 10:53:51');
INSERT INTO `counters` VALUES ('159', '127.0.0.1', '2013-05-02 11:13:04');
INSERT INTO `counters` VALUES ('160', '127.0.0.1', '2013-05-02 11:31:38');
INSERT INTO `counters` VALUES ('161', '127.0.0.1', '2013-05-02 11:48:58');
INSERT INTO `counters` VALUES ('162', '127.0.0.1', '2013-05-02 12:39:42');
INSERT INTO `counters` VALUES ('163', '127.0.0.1', '2013-05-02 13:03:24');
INSERT INTO `counters` VALUES ('164', '127.0.0.1', '2013-05-02 13:18:30');
INSERT INTO `counters` VALUES ('165', '127.0.0.1', '2013-05-02 14:06:29');
INSERT INTO `counters` VALUES ('166', '127.0.0.1', '2013-05-02 14:24:08');
INSERT INTO `counters` VALUES ('167', '127.0.0.1', '2013-05-02 14:40:03');
INSERT INTO `counters` VALUES ('168', '127.0.0.1', '2013-05-02 14:55:04');
INSERT INTO `counters` VALUES ('169', '127.0.0.1', '2013-05-02 20:01:59');
INSERT INTO `counters` VALUES ('170', '127.0.0.1', '2013-05-02 20:16:59');
INSERT INTO `counters` VALUES ('171', '127.0.0.1', '2013-05-02 20:32:10');
INSERT INTO `counters` VALUES ('172', '127.0.0.1', '2013-05-02 21:45:52');
INSERT INTO `counters` VALUES ('173', '127.0.0.1', '2013-05-02 22:02:17');
INSERT INTO `counters` VALUES ('174', '127.0.0.1', '2013-05-02 22:17:23');
INSERT INTO `counters` VALUES ('175', '127.0.0.1', '2013-05-02 23:00:26');
INSERT INTO `counters` VALUES ('176', '127.0.0.1', '2013-05-02 23:17:05');
INSERT INTO `counters` VALUES ('177', '127.0.0.1', '2013-05-02 23:44:05');
INSERT INTO `counters` VALUES ('178', '127.0.0.1', '2013-05-03 08:50:33');
INSERT INTO `counters` VALUES ('179', '127.0.0.1', '2013-05-03 09:10:11');
INSERT INTO `counters` VALUES ('180', '127.0.0.1', '2013-05-03 09:25:50');
INSERT INTO `counters` VALUES ('181', '127.0.0.1', '2013-05-03 10:00:40');
INSERT INTO `counters` VALUES ('182', '127.0.0.1', '2013-05-03 10:16:51');
INSERT INTO `counters` VALUES ('183', '127.0.0.1', '2013-05-03 10:31:52');
INSERT INTO `counters` VALUES ('184', '127.0.0.1', '2013-05-03 10:58:46');
INSERT INTO `counters` VALUES ('185', '127.0.0.1', '2013-05-03 11:14:30');
INSERT INTO `counters` VALUES ('186', '127.0.0.1', '2013-05-03 11:29:32');
INSERT INTO `counters` VALUES ('187', '127.0.0.1', '2013-05-03 11:44:58');
INSERT INTO `counters` VALUES ('188', '127.0.0.1', '2013-05-03 13:03:07');
INSERT INTO `counters` VALUES ('189', '127.0.0.1', '2013-05-03 13:27:46');
INSERT INTO `counters` VALUES ('190', '127.0.0.1', '2013-05-03 13:42:55');
INSERT INTO `counters` VALUES ('191', '127.0.0.1', '2013-05-03 13:58:02');
INSERT INTO `counters` VALUES ('192', '127.0.0.1', '2013-05-03 14:17:21');
INSERT INTO `counters` VALUES ('193', '127.0.0.1', '2013-05-03 14:32:22');
INSERT INTO `counters` VALUES ('194', '127.0.0.1', '2013-05-03 15:23:36');
INSERT INTO `counters` VALUES ('195', '127.0.0.1', '2013-05-03 15:39:14');
INSERT INTO `counters` VALUES ('196', '127.0.0.1', '2013-05-03 15:54:15');
INSERT INTO `counters` VALUES ('197', '127.0.0.1', '2013-05-03 16:32:16');

-- ----------------------------
-- Table structure for `i18n`
-- ----------------------------
DROP TABLE IF EXISTS `i18n`;
CREATE TABLE `i18n` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `locale` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `foreign_key` int(10) NOT NULL,
  `field` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `locale` (`locale`),
  KEY `model` (`model`),
  KEY `row_id` (`foreign_key`),
  KEY `field` (`field`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of i18n
-- ----------------------------
INSERT INTO `i18n` VALUES ('18', 'vn', 'Link', '7', 'title', 'Trang chủ');
INSERT INTO `i18n` VALUES ('19', 'vn', 'Link', '7', 'description', '');
INSERT INTO `i18n` VALUES ('20', 'eng', 'Link', '7', 'title', 'Home');
INSERT INTO `i18n` VALUES ('21', 'eng', 'Link', '7', 'description', '');
INSERT INTO `i18n` VALUES ('22', 'eng', 'Link', '8', 'title', 'About');
INSERT INTO `i18n` VALUES ('23', 'eng', 'Link', '8', 'description', '');
INSERT INTO `i18n` VALUES ('24', 'eng', 'Link', '20', 'title', 'Service');
INSERT INTO `i18n` VALUES ('25', 'eng', 'Link', '20', 'description', '');
INSERT INTO `i18n` VALUES ('26', 'eng', 'Link', '24', 'title', 'Product');
INSERT INTO `i18n` VALUES ('27', 'eng', 'Link', '24', 'description', '');
INSERT INTO `i18n` VALUES ('28', 'eng', 'Link', '25', 'title', 'Price');
INSERT INTO `i18n` VALUES ('29', 'eng', 'Link', '25', 'description', '');
INSERT INTO `i18n` VALUES ('30', 'eng', 'Link', '26', 'title', 'News');
INSERT INTO `i18n` VALUES ('31', 'eng', 'Link', '26', 'description', '');
INSERT INTO `i18n` VALUES ('32', 'eng', 'Link', '69', 'title', 'Contact');
INSERT INTO `i18n` VALUES ('33', 'eng', 'Link', '69', 'description', '');
INSERT INTO `i18n` VALUES ('34', 'eng', 'Node', '3', 'title', 'About');
INSERT INTO `i18n` VALUES ('35', 'eng', 'Node', '3', 'excerpt', 'TRANSLATE: Chào mừng bạn đã đến với website Congtyvietin.vn!\r\nBạn đang muốn tìm một đối tác in ấn chuyên nghiệp và đáng tin cậy để có thể cộng tác lâu dài với giá cả hợp lý?');
INSERT INTO `i18n` VALUES ('36', 'eng', 'Node', '3', 'body', '<p><strong><br />&nbsp;TRANSLATE: C&ocirc;ng ty In Ấn Việt In</strong>&nbsp;được th&agrave;nh lập bởi những chuy&ecirc;n gia đầy t&acirc;m huyết.&nbsp;Việt In ch&uacute;ng t&ocirc;i lu&ocirc;n quan t&acirc;m chăm s&oacute;c h&igrave;nh ảnh thương hiệu của bạn bởi thương hiệu l&agrave; t&agrave;i sản gi&aacute; trị nhất m&agrave; bạn c&oacute; được sau bao nhi&ecirc;u kh&oacute; khăn g&acirc;y dựng tr&ecirc;n thương trường. Đ&oacute; l&agrave; sứ mệnh đầy tự h&agrave;o của ch&uacute;ng t&ocirc;i.</p>\r\n<p>Tại Việt In, đội ngũ của ch&uacute;ng t&ocirc;i đ&atilde; c&oacute; nhiều kinh nghiệm ở tất cả c&aacute;c kh&acirc;u của qu&aacute; tr&igrave;nh s&aacute;ng tạo từ lập kế hoạch, thiết kế s&aacute;ng tạo, in ấn, sản xuất chương tr&igrave;nh. Từ việc ph&aacute;t triển một thương hiệu th&agrave;nh c&ocirc;ng đến việc tạo lập một thương hiệu s&aacute;ng tạo bất kể y&ecirc;u cầu của bạn ra sao, ch&uacute;ng t&ocirc;i đều thực hiện tốt c&ocirc;ng việc của m&igrave;nh.</p>\r\n<p>Qua nhiều năm hoạt động c&aacute;c nh&acirc;n sự chủ chốt của ch&uacute;ng t&ocirc;i c&oacute; được nhiều kinh nghiệm l&agrave;m việc trong c&aacute;c lĩnh vực mỹ thuật ứng dụng, hoạ sỹ thiết kế, mỹ thuật c&ocirc;ng nghiệp, ph&aacute;t triển website&hellip; Nhiều giải thưởng về t&iacute;nh s&aacute;ng tạo đ&atilde; đạt được bởi c&aacute;c họa sỹ v&agrave; chuy&ecirc;n vi&ecirc;n thiết kế.&nbsp;Ch&uacute;ng t&ocirc;i hiểu r&otilde; gi&aacute; trị của thương hiệu v&agrave; những giải ph&aacute;p hiệu quả đầy s&aacute;ng tạo để tạo dựng v&agrave; gia tăng gi&aacute; trị thương hiệu v&agrave; hệ thống nhận diện thương hiệu của bạn. V&igrave; thế ch&uacute;ng t&ocirc;i lu&ocirc;n sẵn s&agrave;ng để c&ugrave;ng trải nghiệm với c&ugrave;ng bạn.</p>\r\n<p>Việt In l&agrave; một nh&agrave; cung cấp nh&atilde;n hiệu, h&agrave;ng h&oacute;a, bao b&igrave; từ kh&acirc;u đầu ti&ecirc;n đến kh&acirc;u cuối c&ugrave;ng, kh&ocirc;ng những ở địa bạn Th&agrave;nh phố Hồ Ch&iacute; Minh, m&agrave; c&ograve;n ở những tỉnh th&agrave;nh l&acirc;n cận.</p>\r\n<p><em>Congtyvietin.vn</em>&nbsp;l&agrave;&nbsp;<a title=\"Kh&aacute;i niệm website\" href=\"http://www.vietsol.net/thiet-ke-website/khai-niem-website/\" target=\"_blank\">website</a>&nbsp;cung cấp th&ocirc;ng tin dịch vụ in ấn, thiết kế mẫu của&nbsp;<em>C&ocirc;ng Ty Việt In</em>. Website của ch&uacute;ng t&ocirc;i được th&agrave;nh lập với mục đ&iacute;ch tạo ra một k&ecirc;nh th&ocirc;ng tin về lĩnh vực in ấn nhằm phục vụ Qu&yacute; kh&aacute;ch h&agrave;ng tốt nhất trong thời đại kỹ thuật số hiện nay. Để t&igrave;m hiểu về lĩnh vực in ấn v&agrave; c&aacute;c dịch vụ m&agrave; ch&uacute;ng t&ocirc;i cung cấp, Qu&yacute; kh&aacute;ch c&oacute; thể truy cập v&agrave;o c&aacute;c&nbsp;<a title=\"Dịch vụ cung cấp t&ecirc;n miền\" href=\"http://www.vietsol.net/ten-mien/\" target=\"_blank\">t&ecirc;n miền (domain)</a>&nbsp;dưới đ&acirc;y:</p>\r\n<ol>\r\n<li>CongtyVietIn.vn (T&ecirc;n miền ch&iacute;nh thức của ch&uacute;ng t&ocirc;i)</li>\r\n<li>CongtyVietIn.com.vn</li>\r\n<li>CongtyVietIn.com</li>\r\n</ol>\r\n<p>Sau đ&acirc;y l&agrave; th&ocirc;ng tin tổng quan về c&aacute;c dịch vụ thiết kế, in ấn Việt In cung cấp tới kh&aacute;ch h&agrave;ng:</p>\r\n<p>- Thiết kế tạo d&aacute;ng v&agrave; tạo mẫu&nbsp;<a title=\"In bao b&igrave; - hộp giấy TPHCM\" href=\"http://www.congtyvietin.vn/san-pham-in-an/in-bao-bi-hop-giay-tphcm.html\" target=\"_blank\">sản phẩm in bao b&igrave; giấy</a>.</p>\r\n<p>- Thiết kế hệ thống nhận diện thương hiệu.</p>\r\n<p>-&nbsp;<a href=\"http://www.congtyvietin.vn/tu-van-in-an/chi-tiet/in-offset-la-gi-20/\" target=\"_blank\">In offset</a>&nbsp;tr&ecirc;n bao b&igrave; giấy.</p>\r\n<p>-&nbsp;<a href=\"http://www.congtyvietin.vn/san-pham-in-an/in-decal-nhan-giay.html\" target=\"_blank\">In offset decal nh&atilde;n sản phẩm</a>,&nbsp;<a href=\"http://www.congtyvietin.vn/san-pham-in-an/in-to-roi-to-gap.html\" target=\"_blank\">tờ rơi, tờ bướm</a>,&nbsp;<a href=\"http://www.congtyvietin.vn/san-pham-in-an/in-catalogue.html\" target=\"_blank\">catalogue</a>, brochure, name card...</p>\r\n<p>- In tem m&atilde; vạch,&nbsp;<a href=\"http://www.congtyvietin.vn/san-pham-in-an/in-catalogue.html\" target=\"_blank\">tem bảo h&agrave;nh</a>&nbsp;tr&ecirc;n tất cả c&aacute;c loại giấy Decal.</p>\r\n<p>-&nbsp;<a href=\"http://www.congtyvietin.vn/san-pham-in-an/in-catalogue.html\" target=\"_blank\">In biểu mẫu tr&ecirc;n giấy nhiều li&ecirc;n (Carboless)</a>.</p>\r\n<p>-&nbsp;<a href=\"http://www.congtyvietin.vn/san-pham-in-an/in-catalogue.html\" target=\"_blank\">In offset chuyển nhiệt</a>&nbsp;bằng m&aacute;y in offset khổ lớn.</p>\r\n<p>- Thiết kế độc quyền sổ tay, lịch, thiệp...</p>\r\n<p>- Sản phẩm bao b&igrave; giấy in offset 4 m&agrave;u tr&ecirc;n c&aacute;c loại giấy Duplex, giấy Ivory, giấy Couche.&nbsp;Bao b&igrave; in bồi 02 lớp giấy Duplex.</p>\r\n<p>- In lịch tờ, lịch nhiều tờ, lịch để b&agrave;n, catalogue v&agrave; c&aacute;c ấn phẩm quảng c&aacute;o. C&aacute;c loại nhẫn giấy Decal.</p>\r\n<p>Cảm ơn Qu&yacute; Kh&aacute;ch đ&atilde; d&agrave;nh thời gian để t&igrave;m hiểu về th&ocirc;ng tin v&agrave; dịch vụ của C&ocirc;ng ty ch&uacute;ng t&ocirc;i!</p>');
INSERT INTO `i18n` VALUES ('37', 'eng', 'Service', '11', 'title', 'Translate - Dương Triệu Vũ phi môtô lên sân khấu Cặp đôi hoàn hảo');
INSERT INTO `i18n` VALUES ('38', 'eng', 'Service', '11', 'excerpt', 'Translate - Nam ca sĩ và Thanh Thúy mang nguyên chiếc xe phân khối lớn làm đạo cụ cho màn trình diễn trong liveshow 9 Cặp đôi hoàn hảo.\r\n');
INSERT INTO `i18n` VALUES ('39', 'eng', 'Service', '11', 'body', '12123');
INSERT INTO `i18n` VALUES ('43', 'eng', 'Node', '15', 'title', 'Translate - Bộ sưu tập những thiết kế bao bì ấn tượng');
INSERT INTO `i18n` VALUES ('44', 'eng', 'Node', '15', 'excerpt', 'Thiết kế bao bì là một công việc rất thú vị. Kiểu dáng đẹp có thể là điểm nhấn của sản phẩm đối với khách hàng.');
INSERT INTO `i18n` VALUES ('45', 'eng', 'Node', '15', 'body', '<p>Thiết kế bao b&igrave; l&agrave; một c&ocirc;ng việc rất th&uacute; vị. Kiểu d&aacute;ng đẹp c&oacute; thể l&agrave; điểm nhấn của sản phẩm đối với kh&aacute;ch h&agrave;ng.</p>\r\n<p><img title=\"Mẫu thiết kế bao b&igrave; in ấn tượng\" src=\"http://www.congtyvietin.vn/uploads/news/thiet-ke-bao-bi-in-an-tuong.jpg\" border=\"0\" alt=\"Mẫu thiết kế bao b&igrave; in ấn tượng\" width=\"560\" height=\"212\" /></p>\r\n<p><strong>1. Conto Figueira</strong></p>\r\n<p><img title=\"Mẫu thiết kế bao b&igrave; in ấn tượng\" src=\"http://www.congtyvietin.vn/uploads/news/thiet-ke-bao-bi-in-an-tuong-1.jpg\" border=\"0\" alt=\"Mẫu thiết kế bao b&igrave; in ấn tượng\" width=\"560\" height=\"354\" /></p>\r\n<p><strong>2. Katerina Teterkina</strong></p>\r\n<p><img title=\"Mẫu thiết kế bao b&igrave; in ấn tượng\" src=\"http://www.congtyvietin.vn/uploads/news/thiet-ke-bao-bi-in-an-tuong-2.jpg\" border=\"0\" alt=\"Mẫu thiết kế bao b&igrave; in ấn tượng\" width=\"560\" height=\"354\" /></p>\r\n<p><strong>3. Dependable</strong></p>\r\n<p><strong><img title=\"Mẫu thiết kế bao b&igrave; in ấn tượng\" src=\"http://www.congtyvietin.vn/uploads/news/thiet-ke-bao-bi-in-an-tuong-3.jpg\" border=\"0\" alt=\"Mẫu thiết kế bao b&igrave; in ấn tượng\" width=\"560\" height=\"354\" /></strong></p>');
INSERT INTO `i18n` VALUES ('47', 'eng', 'Support', '1', 'title', 'Adviser 1');
INSERT INTO `i18n` VALUES ('48', 'vie', 'Support', '1', 'title', 'Tư vấn 1');
INSERT INTO `i18n` VALUES ('49', 'eng', 'Support', '2', 'title', 'Adviser 2');
INSERT INTO `i18n` VALUES ('50', 'eng', 'Support', '3', 'title', 'Adviser 3');
INSERT INTO `i18n` VALUES ('51', 'eng', 'Support', '5', 'title', 'Adviser 4');
INSERT INTO `i18n` VALUES ('52', 'eng', 'Product', '51', 'title', 'Print envelopes');
INSERT INTO `i18n` VALUES ('60', 'eng', 'Newstb', '38', 'title', 'TR - Những màn pháo hoa ấn tượng tại Đà Nẵng ');
INSERT INTO `i18n` VALUES ('61', 'eng', 'Newstb', '38', 'excerpt', '5 đội gồm Mỹ, Nhật Bản, Italia, Nga và chủ nhà Đà Nẵng đã có những màn trình diễn đẹp mắt tại thành phố ánh sáng, được người xem thán phục. ');
INSERT INTO `i18n` VALUES ('62', 'eng', 'Newstb', '38', 'description', '<table id=\"tbl1\" border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3b/be/41/a9/doi_my_2.jpg\" border=\"1\" alt=\"D&agrave;nh giải nhất cuộc tr&igrave;nh diễn lần n&agrave;y,\" width=\"400\" height=\"600\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Gi&agrave;nh giải nhất cuộc tr&igrave;nh diễn lần n&agrave;y, \"D&aacute;ng em đ&ecirc;m  nay\" của đội Mỹ đ&atilde; chinh phục được ban gi&aacute;m khảo v&agrave; h&agrave;ng chục ngh&igrave;n kh&aacute;n  giả. Nh&igrave;n từ xa, ph&aacute;o hoa của đội Mỹ kết hợp t&agrave;i t&igrave;nh với hiệu ứng &aacute;nh  s&aacute;ng.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table id=\"tbl2\" border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3b/be/41/a9/doi_my1.jpg\" border=\"1\" alt=\"Nh&igrave;n từ khu vực kh&aacute;n đ&agrave;i, đội Mỹ kết hợp t&agrave;i t&igrave;nh những l&agrave;n ph&aacute;o dưới mặt nước đến sự\" width=\"400\" height=\"600\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Nh&igrave;n từ khu vực kh&aacute;n đ&agrave;i, đội Mỹ kết hợp m&agrave;n ph&aacute;o dưới mặt nước với m&agrave;n biểu diễn tr&ecirc;n kh&ocirc;ng trung.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table id=\"tbl5\" border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3b/be/41/a9/nhat.jpg\" border=\"1\" alt=\"Tạo th&agrave;nh những c&acirc;y hoa theo chủ đề\" width=\"400\" height=\"600\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Đội Nhật Bản khai hỏa đầu ti&ecirc;n trong đ&ecirc;m tr&igrave;nh diễn  thứ hai (30/4) v&agrave; ấn tượng với những đợt ph&aacute;o v&uacute;t cao, tạo th&agrave;nh những  c&acirc;y hoa theo chủ đề \"Một khu vườn tr&ecirc;n bầu trời\".</td>\r\n</tr>\r\n</tbody>\r\n</table>');
INSERT INTO `i18n` VALUES ('63', 'eng', 'Link', '68', 'title', 'Print Technical');
INSERT INTO `i18n` VALUES ('64', 'eng', 'Link', '68', 'description', '');
INSERT INTO `i18n` VALUES ('65', 'eng', 'Link', '27', 'title', 'Printing News');
INSERT INTO `i18n` VALUES ('66', 'eng', 'Link', '27', 'description', '');
INSERT INTO `i18n` VALUES ('67', 'eng', 'Product', '39', 'title', 'TR - Áo thun in hình hàng Thái Lan');
INSERT INTO `i18n` VALUES ('68', 'eng', 'Product', '39', 'excerpt', 'Tổng thống Mỹ Barack Obama bảo vệ cách thức xử lý của ông đối với cuộc khủng hoảng tại Syria, vụ đánh bom tại thành phố Boston và đề cập nhiều vấn đề khác trong cuộc họp báo trong ngày thứ 100 của nhiệm kỳ thứ hai.');
INSERT INTO `i18n` VALUES ('69', 'eng', 'Product', '39', 'description', '<table id=\"tbl0\" border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3b/be/41/a7/obama_0.jpg\" alt=\"Tổng thống Barack Obama trong cuộc họp b&aacute;o nh&acirc;n dịp 100 ng&agrave;y trong nhiệm kỳ hai của &ocirc;ng h&ocirc;m 30/4. Ảnh: AFP.\" width=\"460\" height=\"327\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Tổng thống Barack Obama trong cuộc họp b&aacute;o nh&acirc;n dịp 100 ng&agrave;y trong nhiệm kỳ hai của &ocirc;ng h&ocirc;m 30/4. Ảnh: <em>AFP</em>.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Trong cuộc họp b&aacute;o h&ocirc;m 30/4, &ocirc;ng chủ Nh&agrave; Trắng b&aacute;c bỏ  luận điệu của những người k&ecirc;u gọi Mỹ tăng cường mức độ can dự v&agrave;o cuộc  khủng hoảng tại Syria. &Ocirc;ng khẳng định bằng chứng về việc Tổng thống  Syria sử dụng vũ kh&iacute; h&oacute;a học sẽ l&agrave; một yếu tố khiến Mỹ phải xem x&eacute;t khả  năng can thiệp, song Washington sẽ kh&ocirc;ng kết luận một c&aacute;ch vội v&agrave;ng, <em>AP</em> đưa tin.</p>\r\n<p class=\"Normal\">\"Ch&uacute;ng ta kh&ocirc;ng biết c&aacute;ch thức, thời gian, đối tượng  sử dụng những vũ kh&iacute; h&oacute;a học tại Syria. Mỹ chưa c&oacute; đủ bằng chứng để hiểu  những sự việc đ&atilde; diễn ra. T&ocirc;i muốn đảm bảo rằng t&ocirc;i c&oacute; sự thật\", Obama  n&oacute;i.</p>\r\n<p class=\"Normal\">&Ocirc;ng Obama giải th&iacute;ch rằng, nếu Mỹ vội v&agrave;ng kết luận  ch&iacute;nh phủ Syria sử dụng chất độc thần kinh khi chưa c&oacute; bằng chứng đ&aacute;ng  tin cậy th&igrave; Nh&agrave; Trắng sẽ kh&ocirc;ng thể nhận sự ủng hộ của cộng đồng quốc tế  khi can thiệp v&agrave;o Syria.</p>\r\n<p class=\"Normal\">\"V&igrave; thế ch&uacute;ng ta phải xử l&yacute; sự việc n&agrave;y một c&aacute;ch thận trọng\", &ocirc;ng nhận định.</p>\r\n<p class=\"Normal\">Một số nghị sĩ Cộng h&ograve;a n&oacute;i vụ đ&aacute;nh bom giải marathon  tại th&agrave;nh phố Boston l&agrave; một thất bại của giới t&igrave;nh b&aacute;o Mỹ. Nhưng Obama  b&aacute;c bỏ lập luận của họ. Theo &ocirc;ng, c&aacute;c nh&agrave; điều tra đ&atilde; thể hiện nỗ lực  phi thường trong qu&aacute; tr&igrave;nh t&igrave;m kiếm thủ phạm của vụ đ&aacute;nh bom v&agrave; l&yacute; do  khiến Tamerlan v&agrave; Dzhokhar Tsarnaev, hai nghi phạm của vụ khủng bố, k&iacute;ch  nổ hai quả bom khiến ba người chết v&agrave; gần 300 người bị thương.</p>\r\n<p class=\"Normal\">\"Việc Tamerlan Tsarnaev nhiễm tư tưởng Hồi gi&aacute;o cực  đoan cho thấy hiểm họa ng&agrave;y c&agrave;ng tăng từ những người tự trở th&agrave;nh phần  tử cực đoan tại Mỹ. Những người đ&oacute; kh&ocirc;ng hề c&oacute; mối li&ecirc;n hệ với c&aacute;c tổ  chức khủng bố\", &ocirc;ng n&oacute;i.</p>\r\n<p class=\"Normal\">Tổng thống Mỹ nhắc lại một cam kết m&agrave; &ocirc;ng đưa ra trong  chiến dịch vận động tranh cử năm 2008: Đ&oacute;ng cửa nh&agrave; t&ugrave; ở vịnh  Guantanamo. \"Mỹ phải đ&oacute;ng cửa nh&agrave; t&ugrave; Guantanamo. Ch&uacute;ng ta n&ecirc;n hiểu rằng  Guantanamo kh&ocirc;ng thể gi&uacute;p Mỹ trở n&ecirc;n an to&agrave;n hơn\", &ocirc;ng khẳng định.</p>');

-- ----------------------------
-- Table structure for `languages`
-- ----------------------------
DROP TABLE IF EXISTS `languages`;
CREATE TABLE `languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `native` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `weight` int(11) DEFAULT NULL,
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of languages
-- ----------------------------
INSERT INTO `languages` VALUES ('1', 'English', 'English', 'eng', '1', '1', '2009-11-02 21:37:38', '2009-11-02 20:52:00');
INSERT INTO `languages` VALUES ('2', 'Vietnamese', 'Vietnam', 'vie', '1', null, '2013-04-25 14:22:44', '2013-04-25 11:51:15');

-- ----------------------------
-- Table structure for `links`
-- ----------------------------
DROP TABLE IF EXISTS `links`;
CREATE TABLE `links` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `parent_id` int(20) DEFAULT NULL,
  `menu_id` int(20) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  `visibility_roles` text COLLATE utf8_unicode_ci,
  `params` text COLLATE utf8_unicode_ci,
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of links
-- ----------------------------
INSERT INTO `links` VALUES ('5', null, '4', 'About', 'about', '', 'plugin:nodes/controller:nodes/action:view/type:page/slug:about', '', '', '1', '3', '4', '', '', '2009-10-06 23:14:21', '2009-08-19 12:23:33');
INSERT INTO `links` VALUES ('6', null, '4', 'Contact', 'contact', '', 'plugin:contacts/controller:contacts/action:view/contact', '', '', '1', '5', '6', '', '', '2009-10-06 23:14:45', '2009-08-19 12:34:56');
INSERT INTO `links` VALUES ('7', null, '3', 'Trang chủ', 'home', '', '/', '', '', '1', '5', '6', '', '', '2013-05-02 10:03:06', '2009-09-06 21:32:54');
INSERT INTO `links` VALUES ('8', null, '3', 'Giới thiệu', 'about', '', 'plugin:nodes/controller:nodes/action:view/type:page/slug:gioi-thieu', '', '', '1', '7', '10', '', '', '2013-04-22 18:16:26', '2009-09-06 21:34:57');
INSERT INTO `links` VALUES ('10', null, '5', 'Site Admin', 'site-admin', '', '/admin', '', '', '1', '1', '2', '', '', '2009-09-12 06:34:09', '2009-09-12 06:34:09');
INSERT INTO `links` VALUES ('11', null, '5', 'Log out', 'log-out', '', '/plugin:users/controller:users/action:logout', '', '', '1', '7', '8', '[\"1\",\"2\"]', '', '2009-09-12 06:35:22', '2009-09-12 06:34:41');
INSERT INTO `links` VALUES ('12', null, '6', 'Croogo', 'croogo', '', 'http://www.croogo.org', '', '', '1', '3', '4', '', '', '2009-09-12 23:31:59', '2009-09-12 23:31:59');
INSERT INTO `links` VALUES ('14', null, '6', 'CakePHP', 'cakephp', '', 'http://www.cakephp.org', '', '', '1', '1', '2', '', '', '2009-10-07 03:25:25', '2009-09-12 23:38:43');
INSERT INTO `links` VALUES ('16', null, '5', 'Entries (RSS)', 'entries-rss', '', '/promoted.rss', '', '', '1', '3', '4', '', '', '2009-10-27 17:46:22', '2009-10-27 17:46:22');
INSERT INTO `links` VALUES ('17', null, '5', 'Comments (RSS)', 'comments-rss', '', '/comments.rss', '', '', '1', '5', '6', '', '', '2009-10-27 17:46:54', '2009-10-27 17:46:54');
INSERT INTO `links` VALUES ('18', '8', '3', 'Thư ngỏ', '', '', 'plugin:nodes/controller:nodes/action:view/type:page/slug:thu-ngo', '', '', '1', '8', '9', '', '', '2013-04-23 20:14:43', '2013-04-22 18:54:49');
INSERT INTO `links` VALUES ('20', null, '3', 'Service', '', '', '/dich-vu.html', '', '', '1', '11', '24', '', '', '2013-05-03 15:54:16', '2013-04-22 18:55:46');
INSERT INTO `links` VALUES ('21', '20', '3', 'In offset giá rẻ', '', '', '/dich-vu/in-offset-gia-re-39', '', '', '1', '12', '13', '', '', '2013-05-01 15:21:01', '2013-04-22 18:56:09');
INSERT INTO `links` VALUES ('22', '20', '3', 'In decal TP.HCM', '', '', '/dich-vu/in-decal-tphcm-38', '', '', '1', '14', '15', '', '', '2013-05-01 15:21:09', '2013-04-22 18:56:30');
INSERT INTO `links` VALUES ('23', '20', '3', 'In offset chuyển nhiệt', '', '', '/dich-vu/in-offset-chuyen-nhiet-37', '', '', '1', '16', '17', '', '', '2013-05-01 15:21:19', '2013-04-22 18:57:03');
INSERT INTO `links` VALUES ('24', null, '3', 'Product', '', '', '/san-pham.html', '', '', '1', '25', '26', '', '', '2013-05-03 15:53:24', '2013-04-22 18:57:16');
INSERT INTO `links` VALUES ('25', null, '3', 'Bảng giá', '', '', 'plugin:nodes/controller:nodes/action:view/type:page/slug:bang-gia', '', '', '1', '27', '28', '', '', '2013-04-23 20:20:01', '2013-04-22 18:57:28');
INSERT INTO `links` VALUES ('26', null, '3', 'News', '', '', '/tin-tuc.html', '', '', '1', '29', '34', '', '', '2013-05-03 15:54:31', '2013-04-22 18:57:47');
INSERT INTO `links` VALUES ('27', '26', '3', 'Tin tức ngành in', '', '', '/tin-tuc/tin-tuc-nganh-in-46', '', '', '1', '30', '31', '', '', '2013-05-02 11:23:04', '2013-04-22 18:58:11');
INSERT INTO `links` VALUES ('29', null, '7', 'Dịch vụ thiết kế web', '', '', 'http://www.vietsol.net/thiet-ke-website/', '', '', '1', '1', '2', '', '', '2013-04-23 04:46:00', '2013-04-23 04:46:00');
INSERT INTO `links` VALUES ('30', null, '7', 'Máy phát điện', '', '', 'http://mayphatdiennamnguyen.com', '', '', '1', '3', '4', '', '', '2013-04-23 04:46:33', '2013-04-23 04:46:33');
INSERT INTO `links` VALUES ('31', null, '7', 'Ếch thịt', '', '', 'http://www.echgiong.com/san-pham/ech-thit-tuoi-song.html', '', '', '1', '5', '6', '', '', '2013-04-23 04:46:55', '2013-04-23 04:46:55');
INSERT INTO `links` VALUES ('32', null, '7', 'Nhím thịt', '', '', 'http://www.echgiong.com/mua-ban-nhim-thit-nhim-giong.html', '', '', '1', '7', '8', '', '', '2013-04-23 04:47:11', '2013-04-23 04:47:11');
INSERT INTO `links` VALUES ('33', null, '7', 'Phong thủy lạc việt', '', '', 'http://www.phongthuylacviet.org.vn', '', '', '1', '9', '10', '', '', '2013-04-23 04:47:29', '2013-04-23 04:47:29');
INSERT INTO `links` VALUES ('34', null, '7', 'Xem ngày tốt xấu', '', '', 'http://www.lyhocdongphuong.org.vn/apps/xem-ngay-tot-xau.php', '', '', '1', '11', '12', '', '', '2013-04-23 04:48:10', '2013-04-23 04:48:10');
INSERT INTO `links` VALUES ('35', null, '7', 'Vnexpress.net', '', '', 'Vnexpress.net', '', '', '1', '13', '14', '', '', '2013-04-23 04:48:26', '2013-04-23 04:48:26');
INSERT INTO `links` VALUES ('36', null, '7', 'LaBan.vn', '', '', 'laban.vn', '', '', '1', '15', '16', '', '', '2013-04-23 04:48:36', '2013-04-23 04:48:36');
INSERT INTO `links` VALUES ('37', null, '7', 'TuoiTre.vn', '', '', 'tuoitre.vn', '', '', '1', '17', '18', '', '', '2013-04-23 04:49:02', '2013-04-23 04:49:02');
INSERT INTO `links` VALUES ('38', null, '7', 'DanTri.com', '', '', 'dantri.com', '', '', '1', '19', '20', '', '', '2013-04-23 04:49:14', '2013-04-23 04:49:14');
INSERT INTO `links` VALUES ('39', null, '7', 'ZendVN.com', '', '', 'zendvn.com', '', '', '1', '21', '22', '', '', '2013-04-23 04:56:11', '2013-04-23 04:56:11');
INSERT INTO `links` VALUES ('40', null, '7', 'PCWorld.com.vn', '', '', 'pcworld.com.vn', '', '', '1', '23', '24', '', '', '2013-04-23 04:56:23', '2013-04-23 04:56:23');
INSERT INTO `links` VALUES ('41', null, '7', 'Vietnamworks.com', '', '', 'vietnamworks.com', '', '', '1', '25', '26', '', '', '2013-04-23 04:56:44', '2013-04-23 04:56:44');
INSERT INTO `links` VALUES ('42', null, '7', 'vieclam.24h.com.vn', '', '', 'vieclam.24h.com.vn', '', '', '1', '27', '28', '', '', '2013-04-23 04:56:56', '2013-04-23 04:56:56');
INSERT INTO `links` VALUES ('43', null, '7', 'Careerlink.com', '', '', 'careerlink.com', '', '', '1', '29', '30', '', '', '2013-04-23 04:57:29', '2013-04-23 04:57:29');
INSERT INTO `links` VALUES ('44', null, '8', 'In catalogue', '', '', '/san-pham/in-catalogue-46', '', '', '1', '1', '2', '', '', '2013-05-02 22:12:53', '2013-04-23 05:30:59');
INSERT INTO `links` VALUES ('45', null, '8', 'In bao bì TP.HCM', '', '', '/san-pham/in-bao-bi-tphcm-47', '', '', '1', '3', '4', '', '', '2013-05-02 22:16:17', '2013-04-23 05:31:12');
INSERT INTO `links` VALUES ('46', null, '8', 'In decal nhãn giấy', '', '', '/san-pham/in-decal-nhan-giay-50', '', '', '1', '5', '6', '', '', '2013-05-02 22:16:31', '2013-04-23 05:31:29');
INSERT INTO `links` VALUES ('47', null, '8', 'In bao thư', '', '', '/san-pham/in-bao-thu-51', '', '', '1', '7', '8', '', '', '2013-05-02 22:16:43', '2013-04-23 05:31:43');
INSERT INTO `links` VALUES ('48', null, '9', 'In áo thun', '', '', '/dich-vu/in-ao-thun-40', '', '', '1', '1', '2', '', '', '2013-05-01 15:23:54', '2013-04-23 06:50:51');
INSERT INTO `links` VALUES ('49', null, '9', 'In offset giá rẻ', '', '', '/dich-vu/in-offset-gia-re-39', '', '', '1', '3', '4', '', '', '2013-05-01 15:24:02', '2013-04-23 06:51:04');
INSERT INTO `links` VALUES ('50', null, '9', 'In decal TP.HCM', '', '', '/dich-vu/in-decal-tphcm-38', '', '', '1', '5', '6', '', '', '2013-05-01 15:24:10', '2013-04-23 06:51:16');
INSERT INTO `links` VALUES ('51', null, '9', 'In offset chuyển nhiệt ', '', '', '/dich-vu/in-offset-chuyen-nhiet-37', '', '', '1', '7', '8', '', '', '2013-05-01 15:24:19', '2013-04-23 06:51:27');
INSERT INTO `links` VALUES ('52', null, '9', 'Nhận in gia công giá rẻ', '', '', '/dich-vu/nhan-in-gia-cong-gia-re-36', '', '', '1', '9', '10', '', '', '2013-05-01 15:24:30', '2013-04-23 06:51:38');
INSERT INTO `links` VALUES ('53', null, '9', 'Cán màng nhiệt', '', '', '/dich-vu/can-mang-nhiet-35', '', '', '1', '11', '12', '', '', '2013-05-01 15:24:39', '2013-04-23 06:51:49');
INSERT INTO `links` VALUES ('54', null, '8', 'In tem bảo hành', '', '', '/san-pham/in-tem-bao-hanh-52', '', '', '1', '9', '10', '', '', '2013-05-02 22:16:52', '2013-04-23 06:52:10');
INSERT INTO `links` VALUES ('56', null, '8', 'In tờ rơi - tờ gấp', '', '', '/san-pham/in-to-roi---to-gap-53', '', '', '1', '11', '12', '', '', '2013-05-02 22:17:01', '2013-04-23 06:52:35');
INSERT INTO `links` VALUES ('57', null, '8', 'In poster', '', '', '/san-pham/in-poster-54', '', '', '1', '13', '14', '', '', '2013-05-02 22:17:12', '2013-04-23 06:52:47');
INSERT INTO `links` VALUES ('58', null, '8', 'In thiệp', '', '', '/san-pham/in-thiep-55', '', '', '1', '15', '16', '', '', '2013-05-02 22:17:24', '2013-04-23 06:57:01');
INSERT INTO `links` VALUES ('59', null, '8', 'In phiếu quà tặng', '', '', '/san-pham/in-phieu-qua-tang-56', '', '', '1', '17', '18', '', '', '2013-05-02 22:17:34', '2013-04-23 06:57:15');
INSERT INTO `links` VALUES ('60', null, '8', 'In danh thiếp', '', '', '/san-pham/in-danh-thiep-57', '', '', '1', '19', '20', '', '', '2013-05-02 22:17:44', '2013-04-23 06:57:28');
INSERT INTO `links` VALUES ('61', null, '8', 'In bìa đựng hồ sơ', '', '', '/san-pham/in-bia-dung-ho-so-58', '', '', '1', '21', '22', '', '', '2013-05-02 22:17:57', '2013-04-23 06:57:41');
INSERT INTO `links` VALUES ('62', null, '8', 'In bản tin', '', '', 'plugin:nodes/controller:nodes/action:view/type:page/slug:san-pham', '', '', '1', '23', '24', '', '', '2013-04-25 04:36:14', '2013-04-23 06:57:56');
INSERT INTO `links` VALUES ('63', null, '8', 'In túi giấy - hộp giấy', '', '', 'plugin:nodes/controller:nodes/action:view/type:page/slug:san-pham', '', '', '1', '25', '26', '', '', '2013-04-25 04:36:18', '2013-04-23 06:58:05');
INSERT INTO `links` VALUES ('64', null, '8', 'In biểu mẫu / carbonless', '', '', 'plugin:nodes/controller:nodes/action:view/type:page/slug:san-pham', '', '', '1', '27', '28', '', '', '2013-04-25 04:36:23', '2013-04-23 06:58:14');
INSERT INTO `links` VALUES ('65', '20', '3', 'In áo thun', '', '', '/dich-vu/in-ao-thun-40', '', '', '1', '18', '19', '', '', '2013-05-01 15:21:29', '2013-04-23 08:32:36');
INSERT INTO `links` VALUES ('66', '20', '3', 'Nhận in gia công giá rẻ', '', '', '/dich-vu/nhan-in-gia-cong-gia-re-36', '', '', '1', '20', '21', '', '', '2013-05-01 15:21:38', '2013-04-23 11:03:04');
INSERT INTO `links` VALUES ('67', '20', '3', 'Cán màng nhiệt', '', '', '/dich-vu/can-mang-nhiet-35', '', '', '1', '22', '23', '', '', '2013-05-01 15:21:47', '2013-04-23 11:03:25');
INSERT INTO `links` VALUES ('68', '26', '3', 'Kỹ thuật in ấn', '', '', '/tin-tuc/ky-thuat-in-an-47', '', '', '1', '32', '33', '', '', '2013-05-02 11:23:13', '2013-04-23 12:27:33');
INSERT INTO `links` VALUES ('69', null, '3', 'Contact', '', '', '/lien-he.html', '', '', '1', '35', '36', '', '', '2013-05-03 16:02:14', '2013-04-24 05:50:54');

-- ----------------------------
-- Table structure for `menus`
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `weight` int(11) DEFAULT NULL,
  `link_count` int(11) NOT NULL,
  `params` text COLLATE utf8_unicode_ci,
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menu_alias` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES ('3', 'Main Menu', 'main', '', '', '1', null, '16', '', '2009-08-19 12:21:06', '2009-07-22 01:49:53');
INSERT INTO `menus` VALUES ('4', 'Footer', 'footer', '', '', '1', null, '2', '', '2009-08-19 12:22:42', '2009-08-19 12:22:42');
INSERT INTO `menus` VALUES ('5', 'Meta', 'meta', '', '', '1', null, '4', '', '2009-09-12 06:33:29', '2009-09-12 06:33:29');
INSERT INTO `menus` VALUES ('6', 'Blogroll', 'blogroll', '', '', '1', null, '2', '', '2009-09-12 23:30:24', '2009-09-12 23:30:24');
INSERT INTO `menus` VALUES ('7', 'LS Menu Footer', 'mn-ls-menu-footer', '', '', '1', null, '15', '', '2013-04-23 04:44:38', '2013-04-23 04:44:11');
INSERT INTO `menus` VALUES ('8', 'LS Product Category', 'mn-ls-product-category', '', '', '1', null, '14', '', '2013-04-23 05:29:46', '2013-04-23 05:29:46');
INSERT INTO `menus` VALUES ('9', 'LS Service', 'mn-ls-service', '', '', '1', null, '6', '', '2013-04-23 06:00:20', '2013-04-23 06:00:19');

-- ----------------------------
-- Table structure for `messages`
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `message_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of messages
-- ----------------------------

-- ----------------------------
-- Table structure for `meta`
-- ----------------------------
DROP TABLE IF EXISTS `meta`;
CREATE TABLE `meta` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `model` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Node',
  `foreign_key` int(20) DEFAULT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `weight` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of meta
-- ----------------------------
INSERT INTO `meta` VALUES ('1', 'Node', '1', 'meta_keywords', 'key1, key2', null);

-- ----------------------------
-- Table structure for `newstbs`
-- ----------------------------
DROP TABLE IF EXISTS `newstbs`;
CREATE TABLE `newstbs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `images` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent` int(1) DEFAULT '1',
  `updated` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of newstbs
-- ----------------------------
INSERT INTO `newstbs` VALUES ('1', 'Tin tức', '', '', '', 'tin-tuc', '/tin-tuc.html', '0', '2000-00-00 14:32:37', '2000-05-01 14:32:37', '1');
INSERT INTO `newstbs` VALUES ('11', 'Vợ nghi phạm đánh bom Boston không nhận xác chồng', 'Người vợ góa của Tamerlan Tsarnaev, nghi phạm đánh bom giải chạy marathon tại thành phố Boston, muốn giới chức Mỹ trao xác của y cho gia đình.', '<table id=\"tbl0\" border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3b/be/41/a4/katherine_russell_5.jpg\" alt=\"Katherine Russell, vợ của Tamerlan Tsarnaev, rời khỏi văn ph&ograve;ng của luật sư\" width=\"380\" height=\"562\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Katherine Russell, vợ của Tamerlan Tsarnaev, rời khỏi  văn ph&ograve;ng của luật sư Amato DeLuca tại th&agrave;nh phố Providence, bang Rhode  Island h&ocirc;m 29/4. Luật sư DeLuca đi b&ecirc;n cạnh c&ocirc;. Ảnh: <em>AP</em>.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">C&aacute;c nh&agrave; điều tra đ&atilde; thẩm vấn Katherine Russell, vợ của  Tamerlan, để t&igrave;m hiểu qu&aacute; tr&igrave;nh chế tạo bom của hai anh em Tsarnave v&agrave;  liệu ai đ&oacute; gi&uacute;p họ hay kh&ocirc;ng.</p>\r\n<p class=\"Normal\">\"Katherine Russell muốn gia đ&igrave;nh Tsarnave nhận x&aacute;c của  Tamerlan. Ch&uacute;ng t&ocirc;i sẽ th&ocirc;ng b&aacute;o tới nh&agrave; chức tr&aacute;ch về nguyện vọng của  c&ocirc; ấy\", <em>Reuters</em> dẫn lời Amato DeLuca, một luật sư của Katherine Russell.</p>\r\n<p class=\"Normal\">Ch&uacute; của Tamerlan Tsarnaev l&agrave; &ocirc;ng Ruslan Tsarni h&ocirc;m qua  cho biết gia đ&igrave;nh sẽ nhận thi thể của anh ta. \"Tất nhi&ecirc;n, c&aacute;c th&agrave;nh  vi&ecirc;n gia đ&igrave;nh sẽ nhận lấy c&aacute;i x&aacute;c. Ch&uacute;ng t&ocirc;i sẽ l&agrave;m điều đ&oacute;. Ch&uacute;ng t&ocirc;i  sẽ l&agrave;m điều đ&oacute;. Gia đ&igrave;nh vẫn l&agrave; gia đ&igrave;nh\".</p>\r\n<p class=\"Normal\">&Ocirc;ng Tsarni kh&ocirc;ng n&oacute;i th&ecirc;m chi tiết về việc nhận lại  thi h&agrave;i. Tsarnaev đ&atilde; được kh&aacute;m nghiệm ph&aacute;p y xong v&agrave; đang nằm tại ph&ograve;ng  kh&aacute;m nghiệm của giới chức. Nguy&ecirc;n nh&acirc;n ch&iacute;nh x&aacute;c dẫn đến c&aacute;i chết của y  đ&atilde; được x&aacute;c định v&agrave; sẽ được c&ocirc;ng bố sau khi y trở về với gia đ&igrave;nh.</p>\r\n<p class=\"Normal\">Cha mẹ của Tamerlan hiện vẫn ở Nga, nhưng y c&ograve;n những người họ h&agrave;ng kh&aacute;c ở Mỹ, trong đ&oacute; c&oacute; &ocirc;ng ch&uacute; Tsarni.</p>\r\n<p class=\"Normal\">Người vợ g&oacute;a 24 tuổi đ&atilde; trở về th&agrave;nh phố Providence,  bang Rhode Island để sống với bố, mẹ. C&aacute;c chuy&ecirc;n gia của Cục Điều tra  li&ecirc;n bang Mỹ (FBI) đ&atilde; gặp c&ocirc; v&agrave;i giờ trong tuần trước. \"Trong những ng&agrave;y  tới, Katherine sẽ tiếp tục gặp lực lượng h&agrave;nh ph&aacute;p để hỗ trợ qu&aacute; tr&igrave;nh  điều tra của họ\", DeLuca n&oacute;i th&ecirc;m.</p>', '/uploads/facebook-cap-nhat-bang-emoticon-moi.png', 'vo-nghi-pham-danh-bom-boston-khong-nhan-xac-chong', '/tin-tuc/vo-nghi-pham-danh-bom-boston-khong-nhan-xac-chong-11.html', '46', '2013-05-03 16:37:56', '2013-04-24 09:44:11', '1');
INSERT INTO `newstbs` VALUES ('35', ' Rooney đòi nói chuyện thẳng thắn với Ferguson', 'Sự xuất hiện của Robert Lewandowski hoặc Radamel Falcao có thể đẩy tiền đạo người Anh khỏi sân Old Trafford trong kỳ chuyển nhượng hè.', '<p>&nbsp; Nguồn tin ri&ecirc;ng của tờ Telegraph (Anh) s&aacute;ng nay cho biết, Wayne Rooney  đ&atilde; y&ecirc;u cầu một cuộc n&oacute;i chuyện thẳng thắn với HLV Alex Ferguson trước  khi đ&agrave;m ph&aacute;n gia hạn hợp đồng. Nội dung cuộc n&oacute;i chuyện sẽ xoay quanh  việc Sir Alex phải đảm bảo cho R10 một suất đ&aacute; ch&iacute;nh tr&ecirc;n h&agrave;ng tiền đạo.</p>\r\n<p>Vị tr&iacute; của Rooney ở MU bắt đầu lung lay khi Robin Van Persie xuất hiện  v&agrave; li&ecirc;n tục ghi b&agrave;n cho đội b&oacute;ng mới. Mất dần cơ hội chơi tr&ecirc;n h&agrave;ng tiền  đạo, ch&acirc;n s&uacute;t số một đội tuyển Anh lắm l&uacute;c phải ra s&acirc;n trong vai tr&ograve;  tiền vệ c&ocirc;ng.</p>\r\n<table class=\"tplCaption\" border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://l.f1.img.vnexpress.net/2013/05/01/rooney-jpg-1367413943_500x0.jpg\" alt=\"rooney-jpg-1367413943_500x0.jpg\" width=\"500\" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>T&igrave;nh h&igrave;nh của Rooney c&agrave;ng đ&aacute;ng lo hơn khi c&oacute; tin Sir Alex đang muốn bổ  sung một tiền đạo đẳng cấp cho MU. Nếu như tin đồn l&agrave; đ&uacute;ng th&igrave; mục ti&ecirc;u  của &ocirc;ng l&agrave; một trong hai c&aacute;i t&ecirc;n đang nổi đ&igrave;nh nổi đ&aacute;m, Robert  Lewandowski v&agrave; Radamel Falcao.</p>\r\n<p>Theo Telegraph, chỉ khi Sir Alex đảm bảo một suất tiền đạo đ&aacute; ch&iacute;nh,  Rooney mới đồng &yacute; đ&agrave;m ph&aacute;n gia hạn hợp đồng. Hiện R10 c&ograve;n hai năm hợp  đồng với mức lương 250.000 bảng/tuần.</p>\r\n<p>Trong trường hợp kh&ocirc;ng đạt được &yacute; nguyện, c&oacute; khả năng Rooney sẽ ra đi.  Đ&iacute;ch đến c&oacute; thể l&agrave; một trong ba CLB Chelsea, PSG hoặc Man City.</p>', '/uploads/517ec53d-dff0-40b1-8ab6-1b8c1c47f2e6-thumb_6.jpg', '-rooney-doi-noi-chuyen-thang-than-voi-ferguson', '/tin-tuc/-rooney-doi-noi-chuyen-thang-than-voi-ferguson-35.html', '46', '2013-05-03 16:38:25', '2013-04-29 21:32:54', '1');
INSERT INTO `newstbs` VALUES ('36', 'Những smartphone màn hình rộng giá tốt', 'Kích thước màn hình của điện thoại ngày càng rộng hơn, nhiều model xấp xỉ trên dưới 5 inch giá bán khá hấp dẫn khi nằm ở phân khúc tầm trung từ 5 cho tới 10 triệu đồng. ', '<p class=\"Normal\">&nbsp; Nếu như năm ngo&aacute;i, người d&ugrave;ng phải bỏ tới hơn 13, 14 triệu đồng để c&oacute;  thể sở hữu được một chiếc smartphone Android c&oacute; m&agrave;n h&igrave;nh rộng tầm hơn 5  inch như Note hay Note II th&igrave; năm ngay, nhiều nh&agrave; sản xuất đang tấn c&ocirc;ng  thị trường smartphone tầm trung với nhiều sản phẩm m&agrave;n h&igrave;nh rộng xấp xỉ  5 inch hoặc lớn hơn. Thậm ch&iacute;, c&oacute; model m&agrave;n h&igrave;nh 5 inch nhưng gi&aacute; chưa  tới 5 triệu đồng, hay&nbsp; được trang bị cả m&agrave;n h&igrave;nh Full HD 5 inch nhưng  ni&ecirc;m yết chưa đến 10 triệu đồng.</p>\r\n<p class=\"Normal\">X&eacute;t về gi&aacute; c&ugrave;ng với những c&ocirc;ng nghệ, chất lượng v&agrave; độ lớn của m&agrave;n h&igrave;nh,  dưới đ&acirc;y l&agrave; những smartphone (ch&iacute;nh h&atilde;ng) m&agrave;n h&igrave;nh rộng c&oacute; gi&aacute; hấp dẫn  nhất tr&ecirc;n thị trường hiện nay.</p>\r\n<p class=\"subtitle\"><a href=\"http://sohoa.vnexpress.net/oppo-find-5/topic-9121.html\">Oppo Find 5 (9,9 triệu đồng)</a></p>\r\n<table class=\"tplCaption\" border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://l.f5.img.vnexpress.net/2013/05/01/IMG-0035-JPG-1367383454_500x0.jpg\" alt=\"IMG-0035-JPG-1367383454_500x0.jpg\" width=\"500\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">FInd 5 sở hữu m&agrave;n h&igrave;nh đẹp với độ ph&acirc;n giải Full HD. Ảnh: <em>Tuấn Anh.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">X&eacute;t về mức gi&aacute; v&agrave; chất lượng m&agrave;n h&igrave;nh, Find 5 l&agrave; chiếc smartphone g&acirc;y  nhiều ch&uacute; &yacute; khi sở hữu m&agrave;n h&igrave;nh đẹp, sắc n&eacute;t với độ ph&acirc;n giải Full HD v&agrave;  k&iacute;ch thước 5 inch, trong khi so với c&aacute;c đối thủ c&ugrave;ng k&iacute;ch thước v&agrave; cấu  h&igrave;nh như Xperia Z, ZL th&igrave; gi&aacute; thấp hơn kh&aacute; nhiều.</p>\r\n<p class=\"Normal\">Find 5 sở hữu chip l&otilde;i tứ Qualcomm Snapdragon S4 Pro c&ugrave;ng RAM 2 GB,  camera 13 megapixel sử dụng cảm biến Exmor RS đời mới c&ugrave;ng thiết kế  nguy&ecirc;n khối hấp dẫn. M&aacute;y chạy Android 4.1.2 với giao diện ri&ecirc;ng.</p>', '/uploads/wip_f100_wrecker_textured_1x.jpg', 'nhung-smartphone-man-hinh-rong-gia-tot', '/tin-tuc/nhung-smartphone-man-hinh-rong-gia-tot-36.html', '1', '2013-05-03 16:37:46', '2013-04-29 22:26:55', '1');
INSERT INTO `newstbs` VALUES ('37', 'Khuyến mãi \'khủng\' để xả hàng tồn kho ', 'Do tình hình khó khăn, nhiều doanh nghiệp, đơn vị kinh doanh đành phải khuyến mãi, giảm giá trên 50%, dù theo luật điều này là không được phép.', '<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"100%\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3b/be/3e/92/bang.jpg\" border=\"1\" alt=\"\" width=\"490\" height=\"383\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\" align=\"left\">Theo Nghị định 37/2006 quy định chi tiết  Luật thương mại, mức giảm gi&aacute; tối đa với h&agrave;ng h&oacute;a dịch vụ trong một  chương tr&igrave;nh khuyến m&atilde;i, giảm gi&aacute; kh&ocirc;ng được vượt qu&aacute; 50% gi&aacute; trị h&agrave;ng  h&oacute;a (trừ trường hợp h&igrave;nh thức khuyến m&atilde;i h&agrave;ng mẫu để kh&aacute;ch d&ugrave;ng thử  kh&ocirc;ng phải trả tiền). Tuy nhi&ecirc;n, trong bối cảnh kh&oacute; khăn hiện nay, nhiều  chủ doanh nghiệp đ&atilde; tận dụng khuyến m&atilde;i l&ecirc;n đến 70%. Ảnh chụp tại một  cửa h&agrave;ng ở quận 7.</td>\r\n</tr>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3b/be/3e/92/bang-3.jpg\" border=\"1\" alt=\"\" width=\"350\" height=\"448\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\" align=\"left\">Một cửa h&agrave;ng b&aacute;n quần &aacute;o tr&ecirc;n đường Nguyễn Đ&igrave;nh Chiểu, quận 3 trưng bảng sale 60% ra hẳn lề đường nhằm thu h&uacute;t kh&aacute;ch.</td>\r\n</tr>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3b/be/3e/92/bang-7.jpg\" border=\"1\" alt=\"\" width=\"490\" height=\"331\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\" align=\"left\">Chi&ecirc;u giảm gi&aacute; để xả h&agrave;ng với gi&aacute; trị l&ecirc;n đến 50-70%.</td>\r\n</tr>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3b/be/3e/92/bang-6.jpg\" border=\"1\" alt=\"\" width=\"350\" height=\"500\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\" align=\"left\">Một cửa h&agrave;ng để biển khuyến m&atilde;i sau tủ  k&iacute;nh với gi&aacute; ưu đ&atilde;i trong th&aacute;ng 4 giảm 70%. Hầu hết c&aacute;c chủ cửa h&agrave;ng  khuyến m&atilde;i \"khủng\" tr&ecirc;n đều cho biết m&igrave;nh chỉ giảm gi&aacute; 60-70% đối với  h&agrave;ng tồn kho, c&ograve;n đồ mới th&igrave; kh&ocirc;ng.&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', '/uploads/grandmother-at-a-party_1x.jpg', 'khuyen-mai-\'khung\'-de-xa-hang-ton-kho-', '/tin-tuc/khuyen-mai-\'khung\'-de-xa-hang-ton-kho--37.html', '46', '2013-05-03 16:38:23', '2013-04-30 02:03:09', '1');
INSERT INTO `newstbs` VALUES ('38', 'TR - Những màn pháo hoa ấn tượng tại Đà Nẵng ', '5 đội gồm Mỹ, Nhật Bản, Italia, Nga và chủ nhà Đà Nẵng đã có những màn trình diễn đẹp mắt tại thành phố ánh sáng, được người xem thán phục. ', '<table id=\"tbl1\" border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3b/be/41/a9/doi_my_2.jpg\" border=\"1\" alt=\"D&agrave;nh giải nhất cuộc tr&igrave;nh diễn lần n&agrave;y,\" width=\"400\" height=\"600\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Gi&agrave;nh giải nhất cuộc tr&igrave;nh diễn lần n&agrave;y, \"D&aacute;ng em đ&ecirc;m  nay\" của đội Mỹ đ&atilde; chinh phục được ban gi&aacute;m khảo v&agrave; h&agrave;ng chục ngh&igrave;n kh&aacute;n  giả. Nh&igrave;n từ xa, ph&aacute;o hoa của đội Mỹ kết hợp t&agrave;i t&igrave;nh với hiệu ứng &aacute;nh  s&aacute;ng.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table id=\"tbl2\" border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3b/be/41/a9/doi_my1.jpg\" border=\"1\" alt=\"Nh&igrave;n từ khu vực kh&aacute;n đ&agrave;i, đội Mỹ kết hợp t&agrave;i t&igrave;nh những l&agrave;n ph&aacute;o dưới mặt nước đến sự\" width=\"400\" height=\"600\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Nh&igrave;n từ khu vực kh&aacute;n đ&agrave;i, đội Mỹ kết hợp m&agrave;n ph&aacute;o dưới mặt nước với m&agrave;n biểu diễn tr&ecirc;n kh&ocirc;ng trung.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table id=\"tbl5\" border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3b/be/41/a9/nhat.jpg\" border=\"1\" alt=\"Tạo th&agrave;nh những c&acirc;y hoa theo chủ đề\" width=\"400\" height=\"600\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Đội Nhật Bản khai hỏa đầu ti&ecirc;n trong đ&ecirc;m tr&igrave;nh diễn  thứ hai (30/4) v&agrave; ấn tượng với những đợt ph&aacute;o v&uacute;t cao, tạo th&agrave;nh những  c&acirc;y hoa theo chủ đề \"Một khu vườn tr&ecirc;n bầu trời\".</td>\r\n</tr>\r\n</tbody>\r\n</table>', '/uploads/icon_fril_1x.png', 'tr---nhung-man-phao-hoa-an-tuong-tai-da-nang-', '/tin-tuc/tr---nhung-man-phao-hoa-an-tuong-tai-da-nang--38.html', '36', '2013-05-03 16:37:41', '2013-04-30 02:07:18', '1');
INSERT INTO `newstbs` VALUES ('39', 'Obama tổng kết 1 năm xây dựng và phát triển1', 'Tổng thống Mỹ Barack Obama bảo vệ cách thức xử lý của ông đối với cuộc khủng hoảng tại Syria, vụ đánh bom tại thành phố Boston và đề cập nhiều vấn đề khác trong cuộc họp báo trong ngày thứ 100 của nhiệm kỳ thứ hai.', '<table id=\"tbl0\" border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3b/be/41/a7/obama_0.jpg\" alt=\"Tổng thống Barack Obama trong cuộc họp b&aacute;o nh&acirc;n dịp 100 ng&agrave;y trong nhiệm kỳ hai của &ocirc;ng h&ocirc;m 30/4. Ảnh: AFP.\" width=\"460\" height=\"327\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Tổng thống Barack Obama trong cuộc họp b&aacute;o nh&acirc;n dịp 100 ng&agrave;y trong nhiệm kỳ hai của &ocirc;ng h&ocirc;m 30/4. Ảnh: <em>AFP</em>.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Trong cuộc họp b&aacute;o h&ocirc;m 30/4, &ocirc;ng chủ Nh&agrave; Trắng b&aacute;c bỏ  luận điệu của những người k&ecirc;u gọi Mỹ tăng cường mức độ can dự v&agrave;o cuộc  khủng hoảng tại Syria. &Ocirc;ng khẳng định bằng chứng về việc Tổng thống  Syria sử dụng vũ kh&iacute; h&oacute;a học sẽ l&agrave; một yếu tố khiến Mỹ phải xem x&eacute;t khả  năng can thiệp, song Washington sẽ kh&ocirc;ng kết luận một c&aacute;ch vội v&agrave;ng, <em>AP</em> đưa tin.</p>\r\n<p class=\"Normal\">\"Ch&uacute;ng ta kh&ocirc;ng biết c&aacute;ch thức, thời gian, đối tượng  sử dụng những vũ kh&iacute; h&oacute;a học tại Syria. Mỹ chưa c&oacute; đủ bằng chứng để hiểu  những sự việc đ&atilde; diễn ra. T&ocirc;i muốn đảm bảo rằng t&ocirc;i c&oacute; sự thật\", Obama  n&oacute;i.</p>\r\n<p class=\"Normal\">&Ocirc;ng Obama giải th&iacute;ch rằng, nếu Mỹ vội v&agrave;ng kết luận  ch&iacute;nh phủ Syria sử dụng chất độc thần kinh khi chưa c&oacute; bằng chứng đ&aacute;ng  tin cậy th&igrave; Nh&agrave; Trắng sẽ kh&ocirc;ng thể nhận sự ủng hộ của cộng đồng quốc tế  khi can thiệp v&agrave;o Syria.</p>\r\n<p class=\"Normal\">\"V&igrave; thế ch&uacute;ng ta phải xử l&yacute; sự việc n&agrave;y một c&aacute;ch thận trọng\", &ocirc;ng nhận định.</p>\r\n<p class=\"Normal\">Một số nghị sĩ Cộng h&ograve;a n&oacute;i vụ đ&aacute;nh bom giải marathon  tại th&agrave;nh phố Boston l&agrave; một thất bại của giới t&igrave;nh b&aacute;o Mỹ. Nhưng Obama  b&aacute;c bỏ lập luận của họ. Theo &ocirc;ng, c&aacute;c nh&agrave; điều tra đ&atilde; thể hiện nỗ lực  phi thường trong qu&aacute; tr&igrave;nh t&igrave;m kiếm thủ phạm của vụ đ&aacute;nh bom v&agrave; l&yacute; do  khiến Tamerlan v&agrave; Dzhokhar Tsarnaev, hai nghi phạm của vụ khủng bố, k&iacute;ch  nổ hai quả bom khiến ba người chết v&agrave; gần 300 người bị thương.</p>\r\n<p class=\"Normal\">\"Việc Tamerlan Tsarnaev nhiễm tư tưởng Hồi gi&aacute;o cực  đoan cho thấy hiểm họa ng&agrave;y c&agrave;ng tăng từ những người tự trở th&agrave;nh phần  tử cực đoan tại Mỹ. Những người đ&oacute; kh&ocirc;ng hề c&oacute; mối li&ecirc;n hệ với c&aacute;c tổ  chức khủng bố\", &ocirc;ng n&oacute;i.</p>\r\n<p class=\"Normal\">Tổng thống Mỹ nhắc lại một cam kết m&agrave; &ocirc;ng đưa ra trong  chiến dịch vận động tranh cử năm 2008: Đ&oacute;ng cửa nh&agrave; t&ugrave; ở vịnh  Guantanamo. \"Mỹ phải đ&oacute;ng cửa nh&agrave; t&ugrave; Guantanamo. Ch&uacute;ng ta n&ecirc;n hiểu rằng  Guantanamo kh&ocirc;ng thể gi&uacute;p Mỹ trở n&ecirc;n an to&agrave;n hơn\", &ocirc;ng khẳng định.</p>', '/uploads/weatherly_1x.png', 'obama-tong-ket-1-nam-xay-dung-va-phat-trien1', '/tin-tuc/obama-tong-ket-1-nam-xay-dung-va-phat-trien1-39.html', '47', '2013-05-03 16:38:27', '2013-04-30 02:09:35', '1');
INSERT INTO `newstbs` VALUES ('40', 'Thêm người tử vong sau tai nạn xe đầu kéo tông ôtô khách', 'Tối 30/4, cháu Phạm Văn Đức (12 tuổi, trú Hà Tĩnh) bị thương sau tai nạn đã tử vong tại Bệnh viện Trung ương Huế, nâng số người thiệt mạng lên 6. ', '<p class=\"Normal\">Ch&aacute;u Đức bị chấn thương sọ n&atilde;o nặng, được đưa v&agrave;o Bệnh  viện Trung ương Huế v&agrave;o chiều 30/4. C&ugrave;ng với Đức, 5 nạn nh&acirc;n kh&aacute;c,  trong đ&oacute; c&oacute; t&agrave;i xế xe kh&aacute;ch L&ecirc; Đ&igrave;nh Chinh (32 tuổi) đ&atilde; tử vong. Người  nh&agrave; c&aacute;c nạn nh&acirc;n đ&atilde; đến Bệnh viện Đa khoa v&agrave; Bệnh viện Trung ương Huế để  đưa thi thể về qu&ecirc; an t&aacute;ng.</p>\r\n<table id=\"tbl0\" border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3b/be/41/b1/chet1.jpg\" border=\"1\" alt=\"C&aacute;c nạn nh&acirc;n sau vụ tai nạn kinh ho&agrave;ng đang được c&aacute;c y, b&aacute;c sĩ chăm s&oacute;c. Ảnh: Phong Sơn\" width=\"495\" height=\"350\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">C&aacute;c nạn nh&acirc;n sau vụ tai nạn đang được c&aacute;c y, b&aacute;c sĩ chăm s&oacute;c. Ảnh: <em>Phong Sơn</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Hiện tại Bệnh viện Trung ương Huế c&ograve;n 7 nạn nh&acirc;n bị  thương nặng đang được điều trị, trong đ&oacute; c&oacute; 3 d&igrave; ch&aacute;u trong một gia  đ&igrave;nh. Thượng t&aacute; Cao Thanh Hải, Ph&oacute; ch&aacute;nh Văn ph&ograve;ng C&ocirc;ng an tỉnh Thừa  Thi&ecirc;n - Huế cho biết, c&ocirc;ng an đang tạm giữ t&agrave;i xế xe đầu k&eacute;o L&ecirc; Thất  T&ugrave;ng (36 tuổi, tr&uacute; quận T&acirc;n B&igrave;nh, TP HCM) để phục vụ c&ocirc;ng t&aacute;c điều tra  nguy&ecirc;n nh&acirc;n tai nạn.</p>\r\n<p class=\"Normal\">Trước đ&oacute; khoảng 13h ng&agrave;y 30/4, xe kh&aacute;ch 30 chỗ biển H&agrave;  Tĩnh đang lưu th&ocirc;ng tr&ecirc;n quốc lộ 1A. Đến x&atilde; Phong An (Phong Điền, Thừa  Thi&ecirc;n - Huế), xe kh&aacute;ch bị xe đầu k&eacute;o biển TP HCM do L&ecirc; Thất T&ugrave;ng cầm l&aacute;i  lấn l&agrave;n t&ocirc;ng trực diện. Hai xe lật xuống ruộng l&agrave;m 4 người tử vong tại  chỗ, 2 người tử vong tại Bệnh viện Trung ương Huế, 7 nạn nh&acirc;n kh&aacute;c trọng  thương.</p>\r\n<table id=\"tbl1\" border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3b/be/41/b1/chet2.jpg\" border=\"1\" alt=\"Hiện trường vụ tai nạn trong ng&agrave;y nghỉ lễ khiến 6 người tử vong. Ảnh: Phong Sơn\" width=\"495\" height=\"350\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Hiện trường vụ tai nạn. Ảnh:<em> Phong Sơn</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Chủ tịch tỉnh Thừa Thi&ecirc;n - Huế Nguyễn Văn Cao v&agrave; l&atilde;nh  đạo huyện Phong Điền đ&atilde; đến hiện trường chỉ đạo xử l&yacute; vụ tai nạn v&agrave; hỗ  trợ mỗi nạn nh&acirc;n tử vong 4 triệu đồng, người bị thương 2 triệu đồng.</p>', '/uploads/thumb_17.jpg', 'them-nguoi-tu-vong-sau-tai-nan-xe-dau-keo-tong-oto-khach', '/tin-tuc/them-nguoi-tu-vong-sau-tai-nan-xe-dau-keo-tong-oto-khach-40.html', '47', '2013-05-03 16:37:52', '2013-04-30 02:10:35', '1');
INSERT INTO `newstbs` VALUES ('43', 'MC truyền hình giả công an chặn bắt xe', 'Một MC của Trung tâm Truyền hình Việt Nam tại tỉnh Phú Yên bị bắt khi đang cùng học sinh lớp 12 giả danh công an chặn xe người đi đường.', '<p class=\"Normal\">Ng&agrave;y 30/4, thượng t&aacute; Nguyễn T&acirc;m Niệm, Ph&oacute;  c&ocirc;ng an huyện Tuy An (Ph&uacute; Y&ecirc;n), cho biết đang điều tra việc &ocirc;ng L&ecirc;  Thoại Kỳ, người dẫn chương tr&igrave;nh của Trung t&acirc;m Truyền h&igrave;nh Việt Nam tại  Ph&uacute; Y&ecirc;n (VTV Ph&uacute; Y&ecirc;n) c&ugrave;ng Phan Nguyễn Ho&agrave;i Nam (học sinh lớp 12, TP Tuy  H&ograve;a, Ph&uacute; Y&ecirc;n) mặc cảnh phục, giả danh c&ocirc;ng an ra đường chặn xe kiểm  tra. Cả hai đang bị c&ocirc;ng an tạm giữ phục vụ điều tra.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"left\">\r\n<tbody>\r\n<tr>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Kỳ v&agrave; Nam tại cơ quan c&ocirc;ng an.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Theo &ocirc;ng Nguyễn Đ&igrave;nh C&ocirc;ng, Chủ tịch UBND  x&atilde; An H&ograve;a (huyện Tuy An), tối 29/4, lực lượng c&ocirc;ng an x&atilde; n&agrave;y bắt quả  tang Kỳ c&ugrave;ng Nam mặc sắc phục c&ocirc;ng an đang chặn bắt, kiểm tra giấy tờ  hai xe m&aacute;y. Cả hai được đưa về trụ sở c&ocirc;ng an x&atilde; để l&agrave;m việc.</p>\r\n<p class=\"Normal\">Tại trụ sở c&ocirc;ng an x&atilde;, biết Kỳ v&agrave; Nam l&agrave;  c&ocirc;ng an giả, nhiều người giận dữ, đ&ograve;i x&ocirc;ng v&agrave;o đ&aacute;nh. \"Nhiều người d&acirc;n  địa phương phản &aacute;nh hai người n&agrave;y đ&atilde; nhiều lần mặc đồ c&ocirc;ng an đứng chặn  đường bắt xe, kiểm tra giấy tờ của rất nhiều người. Do nghi ngờ n&ecirc;n họ  b&aacute;o c&ocirc;ng an theo d&otilde;i...\", &ocirc;ng C&ocirc;ng n&oacute;i.</p>\r\n<p class=\"Normal\">Ph&oacute; C&ocirc;ng an huyện Tuy An cho biết, bước  đầu, Kỳ khai l&agrave; đ&oacute;ng giả c&ocirc;ng an để đi t&aacute;c nghiệp về đề t&agrave;i an to&agrave;n giao  th&ocirc;ng. Tuy nhi&ecirc;n, theo nhiều người d&acirc;n từng bị chặn xe, họ chưa bao giờ  thấy Kỳ d&ugrave;ng m&aacute;y quay hay m&aacute;y ảnh để t&aacute;c nghiệp.</p>\r\n<p class=\"Normal\">&Ocirc;ng Trần Thanh Hưng, Ph&oacute; gi&aacute;m đốc VTV Ph&uacute;  Y&ecirc;n, cho biết L&ecirc; Thoại Kỳ l&agrave; nh&acirc;n vi&ecirc;n hợp đồng vụ việc của cơ quan  n&agrave;y, c&oacute; nộp hồ sơ để cơ quan quản l&yacute;. Nhiệm vụ ch&iacute;nh của Kỳ l&agrave; dẫn  chương tr&igrave;nh thời sự, ngo&agrave;i ra c&ograve;n được ph&acirc;n c&ocirc;ng bi&ecirc;n tập, thực hiện  một số chuy&ecirc;n đề với sự gi&aacute;m s&aacute;t của VTV Ph&uacute; Y&ecirc;n.</p>\r\n<p class=\"Normal\">\"C&ocirc;ng nhận rằng Thoại Kỳ l&agrave; bộ mặt của  đ&agrave;i nhưng chưa được k&yacute; hợp đồng ch&iacute;nh thức do chưa tốt nghiệp đại học.  Việc &ocirc;ng Kỳ giả danh c&ocirc;ng an đi t&aacute;c nghiệp hay l&agrave;m g&igrave;, ch&uacute;ng t&ocirc;i ho&agrave;n  to&agrave;n kh&ocirc;ng biết cũng như kh&ocirc;ng hề ph&acirc;n c&ocirc;ng. Kỳ phải chịu tr&aacute;ch nhiệm  trước ph&aacute;p luật về việc l&agrave;m của m&igrave;nh\" &ocirc;ng Hưng n&oacute;i.</p>\r\n<p class=\"Normal\">L&atilde;nh đạo VTV Ph&uacute; Y&ecirc;n cho hay, kh&ocirc;ng biết hai bộ cảnh phục m&agrave; Kỳ v&agrave; Nam mặc để đ&oacute;ng giả c&ocirc;ng an lấy từ đ&acirc;u ra.&nbsp;</p>', '/uploads/thumb_10.jpg', 'mc-truyen-hinh-gia-cong-an-chan-bat-xe', '/tin-tuc/mc-truyen-hinh-gia-cong-an-chan-bat-xe-43.html', '47', '2013-05-03 16:38:22', '2013-05-01 20:37:15', '1');
INSERT INTO `newstbs` VALUES ('46', 'Tin tức ngành in', '', '', '', 'tin-tuc-nganh-in', '/tin-tuc/tin-tuc-nganh-in-46.html', '1', '2013-05-03 16:38:30', '2013-05-01 21:22:58', '1');
INSERT INTO `newstbs` VALUES ('47', 'Kỹ thuật in ấn', '', '', '', 'ky-thuat-in-an', '/tin-tuc/ky-thuat-in-an-47.html', '1', '2013-05-03 16:38:31', '2013-05-01 21:23:32', '1');

-- ----------------------------
-- Table structure for `nodes`
-- ----------------------------
DROP TABLE IF EXISTS `nodes`;
CREATE TABLE `nodes` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `parent_id` int(20) DEFAULT NULL,
  `user_id` int(20) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `mime_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment_status` int(1) NOT NULL DEFAULT '1',
  `comment_count` int(11) DEFAULT '0',
  `promote` tinyint(1) NOT NULL DEFAULT '0',
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `terms` text COLLATE utf8_unicode_ci,
  `sticky` tinyint(1) NOT NULL DEFAULT '0',
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  `visibility_roles` text COLLATE utf8_unicode_ci,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'node',
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of nodes
-- ----------------------------
INSERT INTO `nodes` VALUES ('1', null, '1', 'Hello World', 'hello-world', '<p>Welcome to Croogo. This is your first post. You can edit or delete it from the admin panel.</p>', '', '1', '', '2', '1', '1', '/blog/hello-world', '{\"1\":\"uncategorized\"}', '0', '1', '2', '', 'blog', '2009-12-25 11:00:00', '2009-12-25 11:00:00');
INSERT INTO `nodes` VALUES ('3', null, '1', 'Giới thiệu', 'gioi-thieu', '<p><strong><br />&nbsp;TRANSLATE: C&ocirc;ng ty In Ấn Việt In</strong>&nbsp;được th&agrave;nh lập bởi những chuy&ecirc;n gia đầy t&acirc;m huyết.&nbsp;Việt In ch&uacute;ng t&ocirc;i lu&ocirc;n quan t&acirc;m chăm s&oacute;c h&igrave;nh ảnh thương hiệu của bạn bởi thương hiệu l&agrave; t&agrave;i sản gi&aacute; trị nhất m&agrave; bạn c&oacute; được sau bao nhi&ecirc;u kh&oacute; khăn g&acirc;y dựng tr&ecirc;n thương trường. Đ&oacute; l&agrave; sứ mệnh đầy tự h&agrave;o của ch&uacute;ng t&ocirc;i.</p>\r\n<p>Tại Việt In, đội ngũ của ch&uacute;ng t&ocirc;i đ&atilde; c&oacute; nhiều kinh nghiệm ở tất cả c&aacute;c kh&acirc;u của qu&aacute; tr&igrave;nh s&aacute;ng tạo từ lập kế hoạch, thiết kế s&aacute;ng tạo, in ấn, sản xuất chương tr&igrave;nh. Từ việc ph&aacute;t triển một thương hiệu th&agrave;nh c&ocirc;ng đến việc tạo lập một thương hiệu s&aacute;ng tạo bất kể y&ecirc;u cầu của bạn ra sao, ch&uacute;ng t&ocirc;i đều thực hiện tốt c&ocirc;ng việc của m&igrave;nh.</p>\r\n<p>Qua nhiều năm hoạt động c&aacute;c nh&acirc;n sự chủ chốt của ch&uacute;ng t&ocirc;i c&oacute; được nhiều kinh nghiệm l&agrave;m việc trong c&aacute;c lĩnh vực mỹ thuật ứng dụng, hoạ sỹ thiết kế, mỹ thuật c&ocirc;ng nghiệp, ph&aacute;t triển website&hellip; Nhiều giải thưởng về t&iacute;nh s&aacute;ng tạo đ&atilde; đạt được bởi c&aacute;c họa sỹ v&agrave; chuy&ecirc;n vi&ecirc;n thiết kế.&nbsp;Ch&uacute;ng t&ocirc;i hiểu r&otilde; gi&aacute; trị của thương hiệu v&agrave; những giải ph&aacute;p hiệu quả đầy s&aacute;ng tạo để tạo dựng v&agrave; gia tăng gi&aacute; trị thương hiệu v&agrave; hệ thống nhận diện thương hiệu của bạn. V&igrave; thế ch&uacute;ng t&ocirc;i lu&ocirc;n sẵn s&agrave;ng để c&ugrave;ng trải nghiệm với c&ugrave;ng bạn.</p>\r\n<p>Việt In l&agrave; một nh&agrave; cung cấp nh&atilde;n hiệu, h&agrave;ng h&oacute;a, bao b&igrave; từ kh&acirc;u đầu ti&ecirc;n đến kh&acirc;u cuối c&ugrave;ng, kh&ocirc;ng những ở địa bạn Th&agrave;nh phố Hồ Ch&iacute; Minh, m&agrave; c&ograve;n ở những tỉnh th&agrave;nh l&acirc;n cận.</p>\r\n<p><em>Congtyvietin.vn</em>&nbsp;l&agrave;&nbsp;<a title=\"Kh&aacute;i niệm website\" href=\"http://www.vietsol.net/thiet-ke-website/khai-niem-website/\" target=\"_blank\">website</a>&nbsp;cung cấp th&ocirc;ng tin dịch vụ in ấn, thiết kế mẫu của&nbsp;<em>C&ocirc;ng Ty Việt In</em>. Website của ch&uacute;ng t&ocirc;i được th&agrave;nh lập với mục đ&iacute;ch tạo ra một k&ecirc;nh th&ocirc;ng tin về lĩnh vực in ấn nhằm phục vụ Qu&yacute; kh&aacute;ch h&agrave;ng tốt nhất trong thời đại kỹ thuật số hiện nay. Để t&igrave;m hiểu về lĩnh vực in ấn v&agrave; c&aacute;c dịch vụ m&agrave; ch&uacute;ng t&ocirc;i cung cấp, Qu&yacute; kh&aacute;ch c&oacute; thể truy cập v&agrave;o c&aacute;c&nbsp;<a title=\"Dịch vụ cung cấp t&ecirc;n miền\" href=\"http://www.vietsol.net/ten-mien/\" target=\"_blank\">t&ecirc;n miền (domain)</a>&nbsp;dưới đ&acirc;y:</p>\r\n<ol>\r\n<li>CongtyVietIn.vn (T&ecirc;n miền ch&iacute;nh thức của ch&uacute;ng t&ocirc;i)</li>\r\n<li>CongtyVietIn.com.vn</li>\r\n<li>CongtyVietIn.com</li>\r\n</ol>\r\n<p>Sau đ&acirc;y l&agrave; th&ocirc;ng tin tổng quan về c&aacute;c dịch vụ thiết kế, in ấn Việt In cung cấp tới kh&aacute;ch h&agrave;ng:</p>\r\n<p>- Thiết kế tạo d&aacute;ng v&agrave; tạo mẫu&nbsp;<a title=\"In bao b&igrave; - hộp giấy TPHCM\" href=\"http://www.congtyvietin.vn/san-pham-in-an/in-bao-bi-hop-giay-tphcm.html\" target=\"_blank\">sản phẩm in bao b&igrave; giấy</a>.</p>\r\n<p>- Thiết kế hệ thống nhận diện thương hiệu.</p>\r\n<p>-&nbsp;<a href=\"http://www.congtyvietin.vn/tu-van-in-an/chi-tiet/in-offset-la-gi-20/\" target=\"_blank\">In offset</a>&nbsp;tr&ecirc;n bao b&igrave; giấy.</p>\r\n<p>-&nbsp;<a href=\"http://www.congtyvietin.vn/san-pham-in-an/in-decal-nhan-giay.html\" target=\"_blank\">In offset decal nh&atilde;n sản phẩm</a>,&nbsp;<a href=\"http://www.congtyvietin.vn/san-pham-in-an/in-to-roi-to-gap.html\" target=\"_blank\">tờ rơi, tờ bướm</a>,&nbsp;<a href=\"http://www.congtyvietin.vn/san-pham-in-an/in-catalogue.html\" target=\"_blank\">catalogue</a>, brochure, name card...</p>\r\n<p>- In tem m&atilde; vạch,&nbsp;<a href=\"http://www.congtyvietin.vn/san-pham-in-an/in-catalogue.html\" target=\"_blank\">tem bảo h&agrave;nh</a>&nbsp;tr&ecirc;n tất cả c&aacute;c loại giấy Decal.</p>\r\n<p>-&nbsp;<a href=\"http://www.congtyvietin.vn/san-pham-in-an/in-catalogue.html\" target=\"_blank\">In biểu mẫu tr&ecirc;n giấy nhiều li&ecirc;n (Carboless)</a>.</p>\r\n<p>-&nbsp;<a href=\"http://www.congtyvietin.vn/san-pham-in-an/in-catalogue.html\" target=\"_blank\">In offset chuyển nhiệt</a>&nbsp;bằng m&aacute;y in offset khổ lớn.</p>\r\n<p>- Thiết kế độc quyền sổ tay, lịch, thiệp...</p>\r\n<p>- Sản phẩm bao b&igrave; giấy in offset 4 m&agrave;u tr&ecirc;n c&aacute;c loại giấy Duplex, giấy Ivory, giấy Couche.&nbsp;Bao b&igrave; in bồi 02 lớp giấy Duplex.</p>\r\n<p>- In lịch tờ, lịch nhiều tờ, lịch để b&agrave;n, catalogue v&agrave; c&aacute;c ấn phẩm quảng c&aacute;o. C&aacute;c loại nhẫn giấy Decal.</p>\r\n<p>Cảm ơn Qu&yacute; Kh&aacute;ch đ&atilde; d&agrave;nh thời gian để t&igrave;m hiểu về th&ocirc;ng tin v&agrave; dịch vụ của C&ocirc;ng ty ch&uacute;ng t&ocirc;i!</p>', 'Tại Việt In, đội ngũ của chúng tôi đã có nhiều kinh nghiệm ở tất cả các khâu của quá trình sáng tạo từ lập kế hoạch, thiết kế sáng tạo, in ấn, sản xuất chương trình. Từ việc phát triển một thương hiệu thành công đến việc tạo lập một thương hiệu sáng tạo bất kể yêu cầu của bạn ra sao, chúng tôi đều thực hiện tốt công việc của mình.\r\n\r\nQua nhiều năm hoạt động các nhân sự chủ chốt của chúng tôi có được nhiều kinh nghiệm làm việc trong các lĩnh vực mỹ thuật ứng dụng, hoạ sỹ thiết kế, mỹ thuật công nghiệp, phát triển website… Nhiều giải thưởng về tính sáng tạo đã đạt được bởi các họa sỹ và chuyên viên thiết kế. Chúng tôi hiểu rõ giá trị của thương hiệu và những giải pháp hiệu quả đầy sáng tạo để tạo dựng và gia tăng giá trị thương hiệu và hệ thống nhận diện thương hiệu của bạn. Vì thế chúng tôi luôn sẵn sàng để cùng trải nghiệm với cùng bạn.\r\n\r\nViệt In là một nhà cung cấp nhãn hiệu, hàng hóa, bao bì từ khâu đầu tiên đến khâu cuối cùng, không những ở địa bạn Thành phố Hồ Chí Minh, mà còn ở những tỉnh thành lân cận.\r\n\r\nCongtyvietin.vn là website cung cấp thông tin dịch vụ in ấn, thiết kế mẫu của Công Ty Việt In. Website của chúng tôi được thành lập với mục đích tạo ra một kênh thông tin về lĩnh vực in ấn nhằm phục vụ Quý khách hàng tốt nhất trong thời đại kỹ thuật số hiện nay. ', '1', null, '1', '0', '0', '/gioi-thieu', null, '0', '1', '4', '', 'page', '2013-05-03 10:30:53', '0000-00-00 00:00:00');
INSERT INTO `nodes` VALUES ('4', null, '0', '39154034_1', '39154034_1.jpg', '', null, '0', 'image/jpeg', '1', '0', '0', '/uploads/39154034_1.jpg', null, '0', '1', '2', null, 'attachment', '2013-04-23 05:23:52', '2013-04-23 05:23:52');
INSERT INTO `nodes` VALUES ('15', '16', '1', 'Bộ sưu tập những thiết kế bao bì ấn tượng', 'bo-suu-tap-nhung-thiet-ke-bao-bi-an-tuong', '<p>Thiết kế bao b&igrave; l&agrave; một c&ocirc;ng việc rất th&uacute; vị. Kiểu d&aacute;ng đẹp c&oacute; thể l&agrave; điểm nhấn của sản phẩm đối với kh&aacute;ch h&agrave;ng.</p>\r\n<p><img title=\"Mẫu thiết kế bao b&igrave; in ấn tượng\" src=\"http://www.congtyvietin.vn/uploads/news/thiet-ke-bao-bi-in-an-tuong.jpg\" border=\"0\" alt=\"Mẫu thiết kế bao b&igrave; in ấn tượng\" width=\"560\" height=\"212\" /></p>\r\n<p><strong>1. Conto Figueira</strong></p>\r\n<p><img title=\"Mẫu thiết kế bao b&igrave; in ấn tượng\" src=\"http://www.congtyvietin.vn/uploads/news/thiet-ke-bao-bi-in-an-tuong-1.jpg\" border=\"0\" alt=\"Mẫu thiết kế bao b&igrave; in ấn tượng\" width=\"560\" height=\"354\" /></p>\r\n<p><strong>2. Katerina Teterkina</strong></p>\r\n<p><img title=\"Mẫu thiết kế bao b&igrave; in ấn tượng\" src=\"http://www.congtyvietin.vn/uploads/news/thiet-ke-bao-bi-in-an-tuong-2.jpg\" border=\"0\" alt=\"Mẫu thiết kế bao b&igrave; in ấn tượng\" width=\"560\" height=\"354\" /></p>\r\n<p><strong>3. Dependable</strong></p>\r\n<p><strong><img title=\"Mẫu thiết kế bao b&igrave; in ấn tượng\" src=\"http://www.congtyvietin.vn/uploads/news/thiet-ke-bao-bi-in-an-tuong-3.jpg\" border=\"0\" alt=\"Mẫu thiết kế bao b&igrave; in ấn tượng\" width=\"560\" height=\"354\" /></strong></p>', 'Thiết kế bao bì là một công việc rất thú vị. Kiểu dáng đẹp có thể là điểm nhấn của sản phẩm đối với khách hàng.', '1', null, '1', '0', '0', '/page/bo-suu-tap-nhung-thiet-ke-bao-bi-an-tuong', null, '0', '19', '20', '', 'page', '2013-04-23 21:25:24', '0000-00-00 00:00:00');
INSERT INTO `nodes` VALUES ('16', '18', '1', 'Tin tức ngành In', 'tin-tuc-nganh-in', '', '', '1', null, '1', '0', '0', '/page/tin-tuc-nganh-in', null, '0', '18', '25', '', 'page', '2013-04-23 20:28:50', '0000-00-00 00:00:00');
INSERT INTO `nodes` VALUES ('17', '18', '1', 'Kỹ thuật in ấn', 'ky-thuat-in-an', '', '', '1', null, '1', '0', '0', '/page/ky-thuat-in-an', null, '0', '6', '17', '', 'page', '2013-04-23 12:18:33', '0000-00-00 00:00:00');
INSERT INTO `nodes` VALUES ('18', null, '1', 'Tin tức', 'tin-tuc', '', '', '1', null, '1', '0', '0', '/page/tin-tuc', null, '0', '5', '26', '', 'page', '2013-04-23 12:18:25', '0000-00-00 00:00:00');
INSERT INTO `nodes` VALUES ('19', '17', '1', 'Phân biệt các loại mực in và chất lượng từng loại mực in ', 'phan-bit-cac-loi-mc-in-va-cht-lung-tng-loi-mc-in', '<p>Ng&agrave;y nay với nhiều kỹ thuật v&agrave; c&ocirc;ng nghệ tinh vi, mực in cũng c&oacute; thể  l&agrave;m giả l&agrave;m ảnh hưởng đến chất lượng th&agrave;nh phẩm sau in. V&igrave; vậy, kh&aacute;ch  h&agrave;ng khi mua mực in cần lưu &yacute; v&agrave; ph&acirc;n biệt r&otilde; c&aacute;c loại mực in để kh&ocirc;ng  bị nhầm lẫn...</p>\r\n<p><strong>1 &ndash; Mực in ch&iacute;nh h&atilde;ng</strong></p>\r\n<p><img title=\"Mực in ch&iacute;nh h&atilde;ng\" src=\"http://www.congtyvietin.vn/uploads/news/muc-in-chinh-hang.jpg\" border=\"0\" alt=\"Mực in ch&iacute;nh h&atilde;ng\" width=\"250\" height=\"250\" /></p>\r\n<p><span>Mực in ch&iacute;nh h&atilde;ng</span></p>\r\n<p>Hầu như mọi người đều cho rằng mực in ch&iacute;nh h&atilde;ng gi&aacute; rất mắc, nhưng  ta  kh&ocirc;ng n&ecirc;n chỉ lo nh&igrave;n về gi&aacute; tiền m&agrave; h&atilde;y nh&igrave;n theo hướng kh&aacute;c, mực  in  ch&iacute;nh h&atilde;ng bao giờ chất lượng cũng l&agrave; tốt nhất,  n&oacute; gi&uacute;p bạn in được   nhiều loại giấy kh&aacute;c nhau c&oacute; chất lượng đẹp, r&otilde;, lượng trang in ra  được  nhiều. Ngo&agrave;i ra hiện nay , c&aacute;c hộp mực in phun ch&iacute;nh h&atilde;ng cũng  kh&ocirc;ng qu&aacute;  mắc như mọi người nghĩ, v&iacute; dụ hộp mực in HP 703 ( h&igrave;nh tr&ecirc;n )  gi&aacute;  khoảng 200k  c&oacute; thể in được khoảng 600 trang, t&iacute;nh ra bạn tốn  kh&ocirc;ng qu&aacute;  500Đ cho 1 trang trắng đen ( độ phủ 5%).</p>\r\n<p><strong>2 &ndash; Mực đổ, mực bơm, mực x&agrave;i lại, mực t&aacute;i chế&hellip;</strong></p>\r\n<p><img title=\"Mực bơm, mực t&aacute;i chế, mực đổ\" src=\"http://www.congtyvietin.vn/uploads/news/muc-bom-muc-tai-che.jpg\" border=\"0\" alt=\"Mực bơm, mực t&aacute;i chế, mực đổ\" width=\"350\" height=\"350\" /></p>\r\n<p><span>Mực bơm, mực t&aacute;i chế, mực đổ</span></p>\r\n<p>Loại mực n&agrave;y đa số được người VN d&ugrave;ng v&igrave; gi&aacute; th&agrave;nh rất rẻ, chừng v&agrave;i   chục đến v&agrave;i trăm ng&agrave;n nhưng về chất lượng nếu so với mực ch&iacute;nh h&atilde;ng  th&igrave;  chắc chắn kh&ocirc;ng bằng, số lượng trang in &iacute;t hơn v&agrave; cũng kh&ocirc;ng đủ  ti&ecirc;u  chuẩn về m&ocirc;i trường, khi x&agrave;i mực bơm, đa phần sẽ gặp trục trặc sau  khi  bơm mực như lỗi in ra bị vệt đen&hellip;Đa số người d&ugrave;ng chọn x&agrave;i mực bơm  v&igrave; để  in tr&ecirc;n loại giấy A4, in c&aacute;c loại t&agrave;i liệu thường. C&ograve;n nếu muốn  in c&aacute;c  văn bản b&aacute;o c&aacute;o c&ocirc;ng việc; t&agrave;i liệu quan trọng, c&oacute; h&igrave;nh ảnh&hellip; v&agrave;  in tr&ecirc;n  nhiều loại giấy kh&aacute;c nhau như  h&oacute;a đơn, thiệp&hellip; th&igrave; thường họ  chọn x&agrave;i  mực ch&iacute;nh h&atilde;ng để cho chất lượng tốt nhất.</p>\r\n<p><strong>3 &ndash; Mực in ch&iacute;nh h&atilde;ng giả mạo</strong></p>\r\n<p><img title=\"Mực in ch&iacute;nh h&atilde;ng giả mạo\" src=\"http://www.congtyvietin.vn/uploads/news/muc-in-chinh-hang-gia-mao.jpg\" border=\"0\" alt=\"Mực in ch&iacute;nh h&atilde;ng giả mạo\" width=\"450\" height=\"300\" /></p>\r\n<p><span>Mực in ch&iacute;nh h&atilde;ng giả mạo</span></p>\r\n<p>Đ&acirc;y l&agrave; loại mực mới c&oacute; tr&ecirc;n thị trường VN gần đ&acirc;y, về bề ngo&agrave;i nếu  kh&ocirc;ng  ch&uacute; &yacute; kỹ th&igrave; kh&ocirc;ng kh&aacute;c g&igrave; c&aacute;c hộp mực in ch&iacute;nh h&atilde;ng. Về chất  lượng th&igrave;  c&aacute;c hộp mực giả n&agrave;y c&oacute; chất lượng k&eacute;m hơn nhiều so với hộp  mực in thật,  c&oacute; thể n&oacute;i chất lượng cũng chỉ ngang hay hơn mực bơm 1  ch&uacute;t, nhưng gi&aacute;  b&aacute;n lại c&oacute; khi bằng hay rẻ hơn hộp mực thật rất &iacute;t,  ch&iacute;nh v&igrave; thế đ&atilde; l&agrave;m  cho kh&ocirc;ng &iacute;t người bị lừa v&agrave; mua nhầm. C&aacute;c h&atilde;ng m&aacute;y  in cũng đưa ra c&aacute;c  biện ph&aacute;p để gi&uacute;p người d&ugrave;ng kh&ocirc;ng bị mua nhầm mực  giả như nh&igrave;n Tem,  Logo&hellip;Hoặc thậm ch&iacute; l&agrave; check số seri tr&ecirc;n Web hay điện  thoại Smartphone  như  trường hợp ở c&aacute;c hộp mực in h&atilde;ng HP.</p>', 'Ngày nay với nhiều kỹ thuật và công nghệ tinh vi, mực in cũng có thể làm giả làm ảnh hưởng đến chất lượng thành phẩm sau in. Vì vậy, khách hàng khi mua mực in cần lưu ý và phân biệt rõ các loại mực in để không bị nhầm lẫn...', '1', null, '1', '0', '0', '/page/phan-bit-cac-loi-mc-in-va-cht-lung-tng-loi-mc-in', null, '0', '7', '8', '', 'page', '2013-04-23 21:26:00', '0000-00-00 00:00:00');
INSERT INTO `nodes` VALUES ('20', '17', '1', 'Thiết kế Brochure hiệu quả phải đáp ứng các tiêu chí gì ?', 'thit-k-brochure-hiu-qu-phi-dap-ng-cac-tieu-chi-gi', '<p>Ngo&agrave;i Website, Brochure l&agrave; đại diện quan trọng nhất của c&ocirc;ng ty trước  kh&aacute;ch h&agrave;ng khi bạn kh&ocirc;ng c&oacute; mặt tại đ&oacute;. Sức mạnh b&aacute;n h&agrave;ng v&agrave; gi&aacute; trị  thương hiệu của Brochure c&oacute; được khi n&oacute; được soạn v&agrave; thiết kế đ&uacute;ng mức.</p>\r\n<p>Sức mạnh b&aacute;n h&agrave;ng v&agrave; gi&aacute; trị thương hiệu của Brochure c&oacute; được khi n&oacute;  được soạn v&agrave; thiết kế đứng mức. N&oacute; phải ph&ugrave; hợp với chiến lược  Marketing, ng&agrave;nh h&agrave;ng chủ lực, đối tượng chủ yếu n&agrave;o sẽ đọc Brochure.</p>\r\n<p>Nghi&ecirc;n cứu, t&igrave;m hiểu, thu thập những Brochure của c&aacute;c c&ocirc;ng ty kh&aacute;c  c&agrave;ng nhiều c&agrave;ng tốt, đặc biệt l&agrave; những c&ocirc;ng ty lớn c&ugrave;ng lĩnh vực hoạt  động với c&ocirc;ng ty bạn.</p>\r\n<p><img title=\"Thiết kế Brochure hiệu quả, đ&uacute;ng ti&ecirc;u chuẩn\" src=\"http://www.congtyvietin.vn/uploads/news/thiet-ke-brochure-hieu-qua-can-tieu-chi-gi.jpg\" border=\"0\" alt=\"Thiết kế Brochure hiệu quả, đ&uacute;ng ti&ecirc;u chuẩn\" width=\"500\" height=\"367\" /></p>\r\n<p><span>Thiết kế Brochure hiệu quả, đ&uacute;ng ti&ecirc;u chuẩn</span></p>\r\n<p><strong>Một quyển Brochure thường đạt được một cho đến ba mục ti&ecirc;u sau đ&acirc;y:</strong></p>\r\n<h2>\r\n<p><span>1. Giới thiệu c&ocirc;ng ty:</span></p>\r\n</h2>\r\n<p>Thường l&agrave; tờ A4 gấp 3, cho đến dạng trung khoảng từ 4 đến 6 tờ A4  lu&ocirc;n b&igrave;a. Trong đ&oacute; ta thấy lời giới thiệu c&ocirc;ng ty, lĩnh vực hoạt động,  ng&agrave;nh nghề kinh doanh, một số mặt h&agrave;ng v&agrave; dịch vụ điển h&igrave;nh; những lời  quảng c&aacute;o, cam kết cũng như th&ocirc;ng tin li&ecirc;n hệ&hellip;</p>\r\n<p>Bạn h&atilde;y suy nghĩ v&agrave; t&igrave;m ra những &yacute; tưởng v&agrave; nội dung kh&aacute;c biệt. L&uacute;c  đ&oacute; bạn sẽ thiết kế Brochure ấn tượng hơn, thời thượng hơn, dễ đọc v&agrave;  giấy đẹp hơn&hellip;. Ngo&agrave;i ra cũng n&ecirc;n x&aacute;c định Brochure n&agrave;y sẽ gửi cho ai v&agrave;  bằng c&aacute;ch n&agrave;o.</p>\r\n<h2>\r\n<p><span>2. Th&ocirc;ng b&aacute;o, quảng b&aacute; cho kh&aacute;ch h&agrave;ng biết một điều g&igrave; thật đặc biệt:</span></p>\r\n</h2>\r\n<p>Những c&ocirc;ng ty lớn, đ&atilde; c&oacute; thương hiệu thường in Brochure kiểu n&agrave;y.  Chẳng hạn, quyển Brochure đ&oacute; c&oacute; thể giới thiệu về một cải tiến quan  trọng sắp được tung ra cho d&ograve;ng sản phẩm X đang c&oacute; mặt tr&ecirc;n thị trường,  hay một chương tr&igrave;nh khuyến m&atilde;i lớn với nhiều giải thưởng lớn v&agrave; hấp  dẫn&hellip;</p>\r\n<p>C&ocirc;ng ty bạn c&oacute; l&agrave;m những Brochure tương tự như vậy kh&ocirc;ng? Vậy bạn h&atilde;y  xem x&eacute;t đến t&acirc;m l&yacute; kh&aacute;ch h&agrave;ng( người sẽ đọc Brochure), khả năng t&agrave;i  ch&iacute;nh của m&igrave;nh để c&acirc;n nhắc n&ecirc;n l&agrave;m Brochure hướng sản phẩm hay Brochure  hướng thương hiệu hay cả hai.</p>\r\n<p>Những mặt h&agrave;ng bạn đang b&aacute;n, kh&aacute;ch h&agrave;ng cũng c&oacute; thể t&igrave;m được trong  c&aacute;c cửa h&agrave;ng kh&aacute;c. Vậy phải chọn một v&agrave;i h&igrave;nh sản phẩm cao cấp nhất,  h&igrave;nh c&agrave;ng sống động c&agrave;ng hay. Bạn lo rằng qu&aacute; &iacute;t sản phẩm sẽ kh&ocirc;ng đủ  th&ocirc;ng tin. Đ&acirc;y l&agrave; Brochure chứ kh&ocirc;ng phải cataloge. Kh&aacute;ch h&agrave;ng tự nhi&ecirc;n  suy nghĩ v&agrave; li&ecirc;n tưởng đến những sản phẩm v&agrave; dịch vụ c&oacute; li&ecirc;n quan đến  nhau. Họ sẽ gọi điện v&agrave; tới cửa h&agrave;ng của bạn. Đ&oacute; l&agrave; kết quả bạn đang  mong muốn.</p>\r\n<h2>\r\n<p><span>3. Hướng dẫn kh&aacute;ch h&agrave;ng về dịch vụ hay sản phẩm:</span></p>\r\n</h2>\r\n<p>Thường gặp ở những c&ocirc;ng ty kinh doanh những mặt h&agrave;ng v&agrave; dịch vụ nhiều  chất x&aacute;m: c&ocirc;ng ty kỹ thuật cao, trung t&acirc;m đ&agrave;o tạo, dịch vụ chăm s&oacute;c sức  khỏe&hellip;.Nếu bạn tr&igrave;nh b&agrave;y hay, đ&aacute;p ứng được nhu cầu t&igrave;m hiểu của kh&aacute;ch  h&agrave;ng th&igrave; Brochure đ&atilde; th&agrave;nh c&ocirc;ng hơn ph&acirc;n nửa. Vấn đề c&ograve;n lại l&agrave; trao cho  ai v&agrave; trao trong l&uacute;c n&agrave;o?</p>', 'Ngoài Website, Brochure là đại diện quan trọng nhất của công ty trước khách hàng khi bạn không có mặt tại đó. Sức mạnh bán hàng và giá trị thương hiệu của Brochure có được khi nó được soạn và thiết kế đúng mức.', '1', null, '1', '0', '0', '/page/thit-k-brochure-hiu-qu-phi-dap-ng-cac-tieu-chi-gi', null, '0', '11', '12', '', 'page', '2013-04-23 21:26:07', '0000-00-00 00:00:00');
INSERT INTO `nodes` VALUES ('21', '17', '1', 'Kinh nghiệm in ấn hiệu quả', 'kinh-nghim-in-n-hiu-qu', '<p>Bất kể bạn đang muốn tạo ra một t&agrave;i liệu kiểu g&igrave;, c&oacute; v&agrave;i nguy&ecirc;n  tắc  in ấn dễ d&agrave;ng thực hiện c&oacute; thể gi&uacute;p bạn đạt được kết quả tốt nhất.</p>\r\n<p><strong>In ấn hiệu quả</strong></p>\r\n<p>Tạo   một t&agrave;i liệu đẹp c&oacute; nghĩa l&agrave; phải kết hợp nhiều yếu tố kh&aacute;c  nhau từ  rất  nhiều c&aacute;c chọn lựa. Ở một chừng mực n&agrave;o đ&oacute;, thao t&aacute;c in  mực l&ecirc;n  giấy  chỉ l&agrave; một bước nhỏ trong một quy tr&igrave;nh phức tạp trong đ&oacute;  bạn cần  phải  quyết định nhiều điều, trong khi r&otilde; r&agrave;ng kết quả chất  lượng sau  c&ugrave;ng rất  quan trọng.</p>\r\n<h2>\r\n<p><span>1. Chọn đ&uacute;ng phong c&aacute;ch in ấn</span></p>\r\n</h2>\r\n<p>Thao t&aacute;c  tr&igrave;nh b&agrave;y một t&agrave;i liệu phải  được thực hiện độc lập với  thao t&aacute;c chuẩn  bị nội dung của t&agrave;i liệu đ&oacute;.  Bằng c&aacute;ch n&agrave;y, bạn c&oacute; thể  tập trung v&agrave;o  điều bạn muốn tr&igrave;nh b&agrave;y trước  ti&ecirc;n, rồi sau đ&oacute; mới quyết  định xem t&agrave;i  liệu sẽ c&oacute; dạng như thế n&agrave;o.</p>\r\n<p>Trong khi  ở mặt n&agrave;y kh&ocirc;ng c&oacute; quy tắc  cứng nhắc n&agrave;o để theo, điều  quan trọng nhất  cần l&agrave;m l&agrave; phải lưu &yacute; đến  đối tượng m&agrave; bạn muốn tiếp  cận: một t&agrave;i liệu  trang trọng kh&ocirc;ng thể n&agrave;o  l&agrave; một c&aacute;ch hay để l&ocirc;i  cuốn kh&aacute;ch mời đến dự  tiệc sinh nhật của bạn, v&agrave;  một tập s&aacute;ch nhỏ in  đầy chuyện vui với một  h&igrave;nh thức kh&ocirc;ng nghi&ecirc;m t&uacute;c sẽ  kh&ocirc;ng thể n&agrave;o  th&iacute;ch hợp cho một hội nghị  chuy&ecirc;n đề y học.Phần mềm xử l&yacute;  văn bản của  bạn c&oacute; lẽ l&agrave; điểm xuất ph&aacute;t  tuyệt vời để kết hợp &yacute; tưởng  lại với nhau.</p>\r\n<p><img title=\"Kinh nghiệm in ấn hiệu quả\" src=\"http://www.congtyvietin.vn/uploads/news/kinh-nghiem-in-an-hieu-qua-1.jpg\" border=\"0\" alt=\"Kinh nghiệm in ấn hiệu quả\" width=\"500\" height=\"154\" /></p>\r\n<p>Trong khi  về mặt kỹ thuật, đ&oacute; kh&ocirc;ng  phải l&agrave; một m&ocirc;i trường thiết kế  th&iacute;ch đ&aacute;ng,  nhiều chương tr&igrave;nh n&agrave;y c&oacute;  thể tiếp cận được v&agrave; c&oacute; nhiều  mẫu t&agrave;i liệu để  gi&uacute;p bạn bắt đầu thu thập &yacute;  tưởng cho mọi thứ, từ  những tờ quảng c&aacute;o  cho đến c&aacute;c bảng b&aacute;o c&aacute;o. Bạn  cũng c&oacute; thể t&igrave;m thấy  th&ecirc;m mẫu ở tr&ecirc;n  mạng, chẳng hạn, Microsoft cung cấp  hẳn một bộ sưu tập  nhiều mẫu  (template) qua trang web hỗ trợ cho Office  của  Microsoft.Nếu bạn c&oacute;  ch&uacute;t &iacute;t thời gian v&agrave; th&iacute;ch đọc, bạn sẽ thấy c&oacute;   kh&ocirc;ng thiếu g&igrave; s&aacute;ch v&agrave;  c&aacute;c trang web cung cấp &yacute; tưởng về c&aacute;ch tạo tất   cả c&aacute;c loại t&agrave;i liệu.  Chỉ cần t&igrave;m tr&ecirc;n Google hay Amazon, bạn sẽ t&igrave;m   được một nguồn v&ocirc; hạn  c&aacute;c kh&aacute;i niệm bạn c&oacute; thể r&uacute;t ra được.</p>\r\n<h2>\r\n<p><span>2. Chọn font chữ</span></p>\r\n</h2>\r\n<p>Khi chọn  font ch&iacute;nh (body font) cho  t&agrave;i liệu của bạn, bạn n&ecirc;n cố  gắng nắm bắt  nội dung m&agrave; văn bản diễn đạt.  Th&iacute; dụ, font Serif thường  dễ đọc tr&ecirc;n  giấy hơn font Sans-Serif. Tương tự  như thế, một font &ldquo;viết  tay&rdquo; như  Comic Sans sẽ thường đưa đến kết quả  chẳng tốt đẹp g&igrave;, nếu  bạn muốn t&agrave;i  liệu của bạn tr&ocirc;ng giống như được  viết tay, th&igrave; cứ viết  n&oacute; bằng  tay.Tuy nhi&ecirc;n, vấn đề lớn nhất m&agrave; bạn gặp  phải khi chọn font  l&agrave; c&oacute; qu&aacute;  nhiều font để bạn chọn.</p>\r\n<p>Theo kinh  nghiệm, tốt hơn hết l&agrave; n&ecirc;n  bảo thủ v&agrave; t&igrave;m một font dễ  đọc, bắt đầu với  những font c&oacute; mặc định tr&ecirc;n  m&aacute;y t&iacute;nh của bạn rồi mở  rộng t&igrave;m kiếm th&ecirc;m  tr&ecirc;n mạng.Cũng c&oacute; nhiều trang  web tr&ecirc;n đ&oacute; bạn c&oacute;  thể t&igrave;m thấy c&aacute;c font  miễn ph&iacute; &ndash; th&iacute; dụ, DaFont.com   v&agrave;TheLeagueofMoveableType.com.</p>\r\n<h2>\r\n<p><span>3. Chọn h&igrave;nh ảnh</span></p>\r\n</h2>\r\n<p>Th&ecirc;m một  v&agrave;i h&igrave;nh ảnh cũng l&agrave; một c&aacute;ch  hay để trau chuốt t&agrave;i liệu  của bạn. Nhưng  đ&aacute;ng tiếc l&agrave; việc tạo đồ họa  v&agrave; chụp ảnh rất tốn thời  gian, v&agrave; kh&ocirc;ng  phải ai cũng chuy&ecirc;n về việc  n&agrave;y.May mắn l&agrave; c&oacute; nhiều  nguồn t&agrave;i nguy&ecirc;n  tr&ecirc;n mạng.</p>\r\n<p><img title=\"Kinh nghiệm in ấn hiệu quả - h&igrave;nh 2\" src=\"http://www.congtyvietin.vn/uploads/news/kinh-nghiem-in-an-hieu-qua-2.jpg\" border=\"0\" alt=\"Kinh nghiệm in ấn hiệu quả - h&igrave;nh 2\" width=\"500\" height=\"378\" /></p>\r\n<p>Th&iacute; dụ,  Microsoft c&oacute; cả một bộ sưu tập  c&aacute;c mẫu họa (clipart) để  người d&ugrave;ng  Office sử dụng.Nếu bạn th&iacute;ch ảnh  chụp, bạn c&oacute; thể t&igrave;m tr&ecirc;n  một trong  những trang web kho lưu trữ h&igrave;nh  ảnh. C&oacute; v&agrave;i trang cung cấp  ảnh miễn  ph&iacute;, trong khi c&aacute;c trang kh&aacute;c c&oacute;  t&iacute;nh ph&iacute; sử dụng c&aacute;c h&igrave;nh vẽ  v&agrave; ảnh  chụp, gi&aacute; thay đổi t&ugrave;y theo chất  lượng v&agrave; độ ph&acirc;n giải. Thường  th&igrave; bạn  c&oacute; thể t&igrave;m tr&ecirc;n Flickr.com h&agrave;ng  ngh&igrave;n h&igrave;nh ảnh miễn ph&iacute; sử  dụng theo  bản quyền Creative Commons.D&ugrave; bạn  chọn theo c&aacute;ch n&agrave;o, điều  quan trọng  l&agrave; bạn phải thấu hiểu điều kiện bản  quyền của h&igrave;nh ảnh  trước khi bạn  d&ugrave;ng n&oacute;. Sử dụng h&igrave;nh ảnh bất hợp ph&aacute;p,  d&ugrave; cố &yacute; hay  kh&ocirc;ng, c&oacute; thể bị xử  phạt, v&agrave; nhiều c&ocirc;ng ty cấp ph&eacute;p lưu trữ  đang truy  l&ugrave;ng rất gắt những  người vi phạm quy tắc bản quyền. Nếu nghi  ngờ, bạn  h&atilde;y email cho nh&agrave;  nhiếp ảnh để hỏi cho chắc.</p>\r\n<h2>\r\n<p><span>4. Chọn đ&uacute;ng m&aacute;y in</span></p>\r\n</h2>\r\n<p>Mỗi loại  m&aacute;y in th&iacute;ch hợp hơn cho mỗi  loại nội dung cụ thể. Th&iacute; dụ,  m&aacute;y in phun  d&ugrave;ng tốt hơn để in ảnh so với  m&aacute;y in laser m&agrave;u, trong khi  đ&oacute; m&aacute;y in  laser d&ugrave;ng tốt hơn để in văn bản  v&agrave; t&agrave;i liệu đen trắng. Đ&oacute;  l&agrave; n&oacute;i chung  m&agrave; th&ocirc;i, v&igrave; nhiều m&aacute;y in phun in  ra văn bản đẹp v&agrave; một  v&agrave;i m&aacute;y laser  m&agrave;u in ra h&igrave;nh ảnh tốt.Nếu bạn kh&ocirc;ng  biết chắc phải chọn  loại m&aacute;y in  n&agrave;o v&agrave; khả năng t&agrave;i ch&iacute;nh của bạn cho  ph&eacute;p, tốt hơn bạn  n&ecirc;n rảo qua c&aacute;c  cửa hiệu in gần nhất v&agrave; y&ecirc;u cầu họ tư  vấn gi&uacute;p bạn (v&agrave;  nếu c&oacute; thể th&igrave;  xin v&agrave;i mẫu in).Dĩ nhi&ecirc;n, chuẩn bị trước  cũng hữu &iacute;ch,  nhất l&agrave; nếu bạn  muốn t&agrave;i liệu của m&igrave;nh được in một c&aacute;ch  chuy&ecirc;n  nghiệp. H&atilde;y nhớ bạn phải  biết c&aacute;c từ ngữ in ấn ph&ugrave; hợp, v&agrave; bạn  phải  lưu t&agrave;i liệu của bạn theo  định dạng m&agrave; cửa hiệu in c&oacute; thể đọc m&agrave;  kh&ocirc;ng  cần phải d&ugrave;ng font hay  phần mềm đặc biệt.</p>', 'Bất kể bạn đang muốn tạo ra một tài liệu kiểu gì, có vài nguyên tắc in ấn dễ dàng thực hiện có thể giúp bạn đạt được kết quả tốt nhất.', '1', null, '1', '0', '0', '/page/kinh-nghim-in-n-hiu-qu', null, '0', '9', '10', '', 'page', '2013-04-23 21:26:16', '0000-00-00 00:00:00');
INSERT INTO `nodes` VALUES ('22', '17', '1', 'Thiết kế logo như thế nào là hiệu quả?', 'thiet-ke-logo-nhu-the-nao-la-hieu-qua', '<p>Logo xuất hiện ở khắp  nơi, từ namecard cho tới website hay tr&ecirc;n sản  phẩm của bạn, rơi v&agrave;o tầm  ngắm của kh&aacute;ch h&agrave;ng, nh&agrave; cung cấp v&agrave; b&aacute;o ch&iacute;.  N&oacute;i c&aacute;ch kh&aacute;c, logo được  bất cứ ai c&oacute; mối quan hệ với c&ocirc;ng ty bạn ch&uacute; &yacute;  tới v&agrave; l&agrave; ấn tượng đầu  ti&ecirc;n của họ về c&ocirc;ng ty. Ch&iacute;nh v&igrave; sự ảnh hưởng  ngầm n&agrave;y, logo của bạn  buộc phải thiết kế sao cho tạo được ấn tượng tốt  về c&ocirc;ng ty. Giới thiệu  c&ocirc;ng ty một c&aacute;ch r&otilde; r&agrave;ng v&agrave; ấn tượng, bạn sẽ  được nhắc đến như một nh&agrave;  chuy&ecirc;n nghiệp trong lĩnh vực của m&igrave;nh. Dưới  đ&acirc;y l&agrave; c&aacute;c ti&ecirc;u ch&iacute; gi&uacute;p c&aacute;c  nh&agrave; doanh nghiệp đ&aacute;nh gi&aacute; được chất lượng  của logo m&igrave;nh.</p>\r\n<p><img title=\"Thiết kế logo như thế n&agrave;o l&agrave; hiệu quả?\" src=\"http://www.congtyvietin.vn/uploads/news/thiet-ke-logo-the-nao-la-hieu-qua.jpg\" border=\"0\" alt=\"Thiết kế logo như thế n&agrave;o l&agrave; hiệu quả?\" width=\"360\" height=\"261\" /></p>\r\n<p><span>Thiết kế logo như thế n&agrave;o l&agrave; hiệu quả?</span></p>\r\n<p><strong> </strong></p>\r\n<p><strong>Logo n&ecirc;n phản &aacute;nh c&ocirc;ng ty theo c&aacute;ch trung thực nhất</strong></p>\r\n<p>Ấn  tượng r&otilde; r&agrave;ng nhưng bạn thường ngạc nhi&ecirc;n khi biết c&oacute; bao nhi&ecirc;u  chủ  doanh nghiệp muốn &ldquo;giống như&rdquo; đối thủ cạnh tranh. Nếu logo của bạn  chứa  một biểu tượng, n&oacute; n&ecirc;n gắn với ng&agrave;nh m&agrave; bạn đang kinh doanh, gắn  với t&ecirc;n  của c&ocirc;ng ty bạn, đặc t&iacute;nh x&aacute;c định về c&ocirc;ng ty hay lợi thế cạnh  tranh m&agrave;  bạn c&oacute;. Nhưng kh&ocirc;ng v&igrave; thế m&agrave; giống với logo đối thủ.</p>\r\n<p><strong>Tr&aacute;nh qu&aacute; chi tiết</strong></p>\r\n<p>Những  logo đơn giản được nhận ra v&agrave; ghi nhớ nhanh hơn những logo  phức tạp.  Những đường kẻ v&agrave; chữ đậm biểu hiện tốt hơn c&aacute;c chi tiết mờ  nhạt v&agrave; tất  nhi&ecirc;n g&acirc;y ấn tượng mạnh hơn.</p>\r\n<p>Tuy vậy, bạn kh&ocirc;ng n&ecirc;n thiết kế một  logo giản dị th&aacute;i qu&aacute;. Một logo  tốt phải thể hiện điều g&igrave; đ&oacute; bất ngờ  hoặc duy nhất m&agrave; kh&ocirc;ng cần phải  ph&oacute;ng đại. H&atilde;y thử tham khảo biểu tượng  của một nh&agrave; chuy&ecirc;n nghiệp:  McDonald&rsquo;s, Nike, Prudential. H&atilde;y ch&uacute; &yacute; t&igrave;m  hiểu logo của họ đơn giản  m&agrave; hấp dẫn đến thế n&agrave;o. Bất cứ ai tr&ecirc;n đường  với cơn đ&oacute;i cồn c&agrave;o cũng  đều hiểu được sức mạnh của những biểu tượng  logo hết sức r&agrave;nh mạch n&agrave;y.</p>\r\n<p><strong>Logo vẫn đẹp khi được in bằng m&agrave;u đen trắng.</strong></p>\r\n<p>Nếu  logo kh&ocirc;ng sắc n&eacute;t khi in m&agrave;u đen trắng, n&oacute; cũng sẽ rất kh&oacute;  thuyết phục  nếu được in bằng bất cứ m&agrave;u n&agrave;o kh&aacute;c. V&agrave; in m&agrave;u thường đắt  hơn in đen  trắng.</p>\r\n<p>D&ugrave; phi&ecirc;n bản ch&iacute;nh của logo n&agrave;y rất nhiều m&agrave;u sắc, bản đơn sắc vẫn thể hiện được r&otilde; r&agrave;ng tinh thần của logo.</p>\r\n<p><strong>Đảm bảo để logo c&oacute; thể ph&oacute;ng to, thu nhỏ t&ugrave;y th&iacute;ch</strong></p>\r\n<p>Logo  phải thỏa m&atilde;n tối ưu về mặt thẩm mỹ ở bất kỳ k&iacute;ch cỡ n&agrave;o, to,  nhỏ hay  trung b&igrave;nh. L&agrave;m thế n&agrave;o logo vẫn r&otilde; r&agrave;ng khi in tr&ecirc;n namecard  lẫn tr&ecirc;n  billboard h&agrave;ng chục m&eacute;t.</p>\r\n<p><strong>Logo n&ecirc;n được thiết kế sao cho c&acirc;n bằng</strong></p>\r\n<p><strong> </strong>N&oacute;i  một c&aacute;ch dễ hiểu nhất l&agrave; logo của bạn phải  &ldquo;vừa mắt&rdquo; người nh&igrave;n, phần  n&agrave;y kh&ocirc;ng lấn &aacute;t phần kia. M&agrave;u sắc v&agrave; chi  tiết kh&ocirc;ng t&aacute;ch khỏi nhau để  kh&ocirc;ng tạo n&ecirc;n một logo kh&ocirc;ng c&acirc;n xứng. M&agrave;u  sắc, đường n&eacute;t, h&igrave;nh khối l&agrave;  ba yếu tố quyết định đến t&iacute;nh c&acirc;n bằng  của một logo. Ngo&agrave;i ra biểu tượng  v&agrave; kiểu chữ trong logo cũng cần h&agrave;i  ho&agrave; với nhau. Chẳng hạn, biểu tượng  thể hiện sự trang nh&atilde; th&igrave; font chữ  cho t&ecirc;n gọi cũng phải như thế.</p>\r\n<p>Th&agrave;nh c&ocirc;ng khi thiết kế logo c&ograve;n được đ&aacute;nh gi&aacute; qua tuổi thọ của logo.  Ngo&agrave;i ra bạn cần lưu &yacute; 3 dạng  của logo: EPS để in ấn, JPG v&agrave; GIF để  hiển thị tr&ecirc;n website.</p>\r\n<p>Đừng  bao giờ thiết kế hay thay đổi lại logo của bạn nếu kh&ocirc;ng thực sự  cần  thiết. Nếu bạn muốn l&agrave;m cho n&oacute; sinh động hơn tr&ecirc;n website cũng c&oacute;  thể  chấp nhận được nhưng kh&ocirc;ng n&ecirc;n l&agrave;m mất đi c&aacute;i cốt l&otilde;i của logo. Khi  n&agrave;o  bạn bắt đầu cảm thấy nh&agrave;m ch&aacute;n với logo của ch&iacute;nh m&igrave;nh, l&uacute;c đấy c&oacute;  thể  l&agrave; thời điểm để tạo ấn tượng mới đối với kh&aacute;ch h&agrave;ng.&nbsp;</p>', 'Logo xuất hiện ở khắp nơi, từ namecard cho tới website hay trên sản phẩm của bạn, rơi vào tầm ngắm của khách hàng, nhà cung cấp và báo chí. ', '1', null, '1', '0', '0', '/page/thiet-ke-logo-nhu-the-nao-la-hieu-qua', null, '0', '13', '14', '', 'page', '2013-04-23 21:26:22', '0000-00-00 00:00:00');
INSERT INTO `nodes` VALUES ('23', '17', '1', 'Vài khái niệm sai lệch, nhầm lẫn trong in Offset khô', 'vai-khai-niem-sai-lech-nham-lan-trong-in-offset-kho', '<p>Trong lĩnh vực kỹ thuật đặc biệt n&agrave;y, chỉ tồn tại rất &iacute;t c&aacute;c t&agrave;i liệu   chuy&ecirc;n ng&agrave;nh nghi&ecirc;m chỉnh, đ&aacute;ng để tham khảo, c&oacute; thể bời v&igrave; n&oacute; sẽ bị  đa  phần c&aacute;c người trong giới in nhầm lẫn. Ngay cả c&aacute;c nguồn t&agrave;i liệu  ch&iacute;nh  thống của giảng vi&ecirc;n c&aacute;c trường đại học cũng một phần n&agrave;o đ&oacute; bị  t&aacute;c  động từ c&aacute;c nh&agrave; chế tạo thiết bị in v&agrave; do đ&oacute; cũng kh&ocirc;ng ch&iacute;nh x&aacute;c  lắm.</p>\r\n<p>Điều n&agrave;y dẫn đến một v&agrave;i lời giải th&iacute;ch, phỏng đo&aacute;n, giả thuyết kh&ocirc;ng   x&aacute;c thực hoặc lẫn lộn v&ocirc; t&igrave;nh được chấp nhận. Từ l&iacute; do đặc biệt n&agrave;y,  sẽ  rất hữu &iacute;ch cho những người \"ngoại đạo\" cũng như trong giới \"in\" một  sự  định hướng r&otilde; rệt về điểm kh&aacute;c biệt giữa Offset \"kh&ocirc;\" v&agrave; những  phương ph&aacute;p na n&aacute;,  tương tự như n&oacute;.</p>\r\n<p><strong>1/ C&aacute;c c&aacute;ch gọi kh&aacute;c của \"Phương ph&aacute;p Offset kh&ocirc;\" (Trockenoffset)</strong></p>\r\n<p>Thuật ngữ n&agrave;y d&ugrave;ng để chỉ sự truyền mực gi&aacute;n tiếp cho phương ph&aacute;p in  cao  (Flexo, Letterpress) v&agrave; v&igrave; thế rất v&ocirc; l&iacute; khi ta xếp phương ph&aacute;p n&agrave;y  v&agrave;o dạng in  Offset \"kh&ocirc;\".</p>\r\n<p>Trong tiếng Anh người ta ph&acirc;n biệt giữa waterless Offset v&agrave; Letterset   (Letter Offset). Ngay cả tiếng Việt của ta cũng thế, khi dịch ra th&igrave;   nghe l&agrave; <a title=\"in offset\" href=\"http://www.congtyvietin.vn/dich-vu-in-an/in-offset-gia-re.html\">in offset</a> \"kh&ocirc;\" n&ecirc;n hẳn nhi&ecirc;n sẽ c&oacute; một sự nhầm lẫn trong đ&oacute;  giữa Offset \"kh&ocirc;\"  thật sự v&agrave; phương ph&aacute;p in kh&aacute;c. Ở Đức, người ta ph&acirc;n biệt ra  giữa  Wasserloser Offset (Offset \"kh&ocirc;\" đ&uacute;ng nghĩa) v&agrave; Trockenoffset  (Flexo,  Letterpress gi&aacute;n tiếp), nhưng chữ Trocken cũng c&oacute; nghĩa l&agrave; kh&ocirc;  trong  tiếng Việt.</p>\r\n<p>Sự nhầm lẫn c&ograve;n diễn ra với cả c&ocirc;ng thức mực in cho 2 loại in tr&ecirc;n v&igrave; cả 2 c&ugrave;ng l&agrave; mực in c&oacute; độ nhớt cao.</p>\r\n<p><img title=\"Một số kh&aacute;i niệm sai lệch, nhầm lẫn trong in offset kh&ocirc;\" src=\"http://www.congtyvietin.vn/uploads/news/mot-so-khai-niem-sai-lech-nham-lan-trong-in-offset-kho.jpg\" border=\"0\" alt=\"Một số kh&aacute;i niệm sai lệch, nhầm lẫn trong in offset kh&ocirc;\" width=\"297\" height=\"425\" /></p>\r\n<p><span>Một số kh&aacute;i niệm sai lệch, nhầm lẫn trong in offset kh&ocirc;</span></p>\r\n<p><strong>2/ C&aacute;ch gọi kh&aacute;c : \"Phương ph&aacute;p Offset kh&ocirc;ng d&ugrave;ng DDLA<strong>\"</strong> (Offset ohne Feuchtmittel)</strong></p>\r\n<p>Về mặt l&iacute; thuyết, ta c&oacute; thể sử dụng 1 Dung Dịch (DD) chất lỏng xin  tạm gọi l&agrave; DD  ph&acirc;n t&aacute;ch (Trennmittel) trong mực in Offset \"kh&ocirc;\", nghĩa  l&agrave; trở lại với  dạng \"nhũ tương in\". DD ph&acirc;n t&aacute;ch tại v&ograve;ng lăn thứ nhất  sẽ được truyền  l&ecirc;n bề mặt Silikon v&agrave; sẽ ngăn chặn mực in kh&ocirc;ng b&aacute;m l&ecirc;n  đ&oacute;. Đ&acirc;y l&agrave; một  th&iacute; nghiệm m&ocirc; phỏng của h&atilde;ng Sun Chemical Hartmann, v&agrave;  đ&atilde; được tr&igrave;nh  b&agrave;y, xuất bản (\"weak fluid boundary layer\", WFBL). Với sự  trợ gi&uacute;p của  dầu Silikon, giả thuyết n&agrave;y c&oacute; vẻ hợp l&yacute;, v&agrave; do đ&oacute; dầu  Silikon n&agrave;y lại  l&agrave;&hellip;một Dung Dịch L&agrave;m Ẩm (DDLA).</p>\r\n<p><strong>3/ C&aacute;ch gọi kh&aacute;c của \"Phương ph&aacute;p Offset kh&ocirc;ng c&oacute; hệ thống DDLA\" (feuchtwerkloser Offsetdruck)</strong></p>\r\n<p>C&aacute;c nh&agrave; chế tạo mực in đ&atilde; c&oacute; nhiều tiến h&agrave;nh thử nghiệm, chế tạo loại   mực in 2 trong 1, tức l&agrave; chứa sẵn DDLA b&ecirc;n trong n&oacute;, hay n&oacute;i đ&uacute;ng hơn   l&agrave; \"nhũ tương in\". Từ đ&oacute; ta chỉ c&ograve;n 1 loại DD \"nhũ tương in\" duy nhất  m&agrave;  kh&ocirc;ng cần đến hệ thống DDLA. Tuy nhi&ecirc;n những thử nghiệm n&agrave;y kh&ocirc;ng  thể  tồn tại được khi đem ra thương mại h&oacute;a.</p>\r\n<p><strong>4/ Dầu kho&aacute;ng được sử dụng như l&agrave; DD ph&acirc;n t&aacute;ch</strong></p>\r\n<p>C&aacute;c th&iacute; nghiệm giả thuyết về DD ph&acirc;n t&aacute;ch chỉ c&oacute; thể được ứng dụng   chế tạo \"nhũ tương in\" như việc sử dụng dầu Silikon cho mực in. Dầu   kho&aacute;ng (Mineral&ouml;l) trong mực Offset \"kh&ocirc;\" c&oacute; sức căng bề mặt khoảng 27   [mN/m] v&agrave; dầu lanh (Lein&ouml;l) với sức căng bề mặt 30 [mN/m] sẽ kh&ocirc;ng bao   giờ li&ecirc;n kết được bề mặt Silikon với sức căng bề mặt chỉ 20 [mN/m].</p>\r\n<p>Ngo&agrave;i ra, dầu kho&aacute;ng cũng chỉ th&iacute;ch hợp cho phần tử in, c&oacute; khả năng   b&aacute;m l&ecirc;n n&oacute; v&agrave; kh&ocirc;ng c&oacute; khả năng tạo li&ecirc;n kết với v&ugrave;ng kh&ocirc;ng in, v&igrave; dầu   kho&aacute;ng l&agrave; 1 th&agrave;nh phần ch&iacute;nh của mực in, ở đ&acirc;y c&oacute; thể xem l&agrave; phần xương   sống của mực in.</p>\r\n<p><strong>5/ PP Offset \"kh&ocirc;\" bằng phương ph&aacute;p in l&otilde;m kh&ocirc;ng dao gạt\"</strong><strong> </strong></p>\r\n<p>PP in Offset \"kh&ocirc;\" cho ra h&igrave;nh ảnh in sắc n&eacute;t v&agrave; &iacute;t hiện tượng gia   tăng tầng thứ v&igrave; điểm in nắm thấp hơn so với phần tử kh&ocirc;ng in, nghĩa l&agrave;   c&oacute; đặc t&iacute;nh của PP in l&otilde;m.</p>\r\n<p>Ngược lại, trong in Offset \"ướt\", điểm tram về mặt thực tiễn vẫn nằm   cao hơn phần tử kh&ocirc;ng in v&agrave; do đ&oacute; cũng c&oacute; sự t&aacute;c động cơ học đến hạt   tram như ở PP in cao (Flexo,&hellip;), nghĩa l&agrave; hạt tram sẽ bị &eacute;p ph&igrave;nh to ra   c&aacute;c bi&ecirc;n (Quetschr&auml;nder). Đ&acirc;y lại l&agrave; điểm sai r&otilde; rệt, bởi v&igrave; thực tế c&oacute;   những bản in Offset \"ướt\"m&agrave; tr&ecirc;n đ&oacute; phần tử in vẫn&hellip;.nằm thấp hơn phần  tử  kh&ocirc;ng in, ti&ecirc;u biểu l&agrave; bản in cầu tạo từ nhiều kim loại   (Mehrmetallplatten : bản 2 lớp Kim loại Bimetall,&hellip;). V&igrave; thế người ta   kh&ocirc;ng thể t&aacute;i tạo được tram 300 đường/cm. Điều n&agrave;y được giải th&iacute;ch ở   c&aacute;ch chế tạo phần tử in. Đ&acirc;y l&agrave; những phương ph&aacute;p kh&ocirc;ng thể nhầm lẫn   trong in phẳng.</p>\r\n<p><strong>6/ Offset kh&ocirc; th&acirc;n thiện với m&ocirc;i trường</strong></p>\r\n<p>Một thực tế phải c&ocirc;ng nhận l&agrave; kh&ocirc;ng c&oacute; qu&aacute; tr&igrave;nh kỹ thuật n&agrave;o lại c&oacute;   thể th&acirc;n thiện với m&ocirc;i trường được. Cụ thể ho&aacute; hơn ch&uacute;ng ta phải ph&acirc;n   biệt r&otilde; giữa những t&aacute;c động c&oacute; t&iacute;nh cần thiết v&agrave; c&oacute; &yacute; nghĩa, cũng như   lớn v&agrave; nhỏ. T&aacute;c hại của Isopropanol l&agrave; điểm ch&iacute;nh trong sự c&acirc;n bằng,   nhưng cũng c&oacute; PP in Offset \"ướt\" kh&ocirc;ng d&ugrave;ng c&ocirc;n Isopropanol. T&aacute;c hại của   nước thải cũng l&agrave; một trường hợp điển h&igrave;nh cho l&iacute; lẽ kinh tế, bởi v&igrave;   những ngừơi thợ in chuy&ecirc;n nghiệp lu&ocirc;n biết c&aacute;ch xử l&iacute; nước thải một c&aacute;ch   ch&iacute;nh x&aacute;c m&agrave; kh&ocirc;ng đổ trực tiếp ra hệ thống k&ecirc;nh nước, s&ocirc;ng ao hồ hay   hệ thống tho&aacute;t nuớc. Đ&aacute;ng tiếc l&agrave; điều n&agrave;y vẫn chưa được ch&uacute; trọng lắm,   nhất l&agrave; với c&aacute;c nh&agrave; in ở Việt nam.</p>', 'Trong lĩnh vực kỹ thuật đặc biệt này, chỉ tồn tại rất ít các tài liệu chuyên ngành nghiêm chỉnh, đáng để tham khảo, có thể bời vì nó sẽ bị đa phần các người trong giới in nhầm lẫn.', '1', null, '1', '0', '0', '/page/vai-khai-niem-sai-lech-nham-lan-trong-in-offset-kho', null, '0', '15', '16', '', 'page', '2013-04-23 21:26:31', '0000-00-00 00:00:00');
INSERT INTO `nodes` VALUES ('24', '16', '1', 'In áo thun theo yêu cầu', 'in-ao-thun-theo-yeu-cau', '<p>Để đ&aacute;p ứng nhu cầu <strong><a title=\"In &aacute;o thun\" href=\"http://www.congtyvietin.vn/dich-vu-in-an/in-ao-thun.html\">in &aacute;o thun</a></strong> của từng nh&oacute;m kh&aacute;ch h&agrave;ng, ngo&agrave;i dịch vụ in &aacute;o thun theo mẫu, <span>C&ocirc;ng ty Việt in</span> ch&uacute;ng t&ocirc;i c&ograve;n cung cấp th&ecirc;m dịch vụ <strong><a title=\"In &aacute;o thun theo y&ecirc;u cầu\" href=\"http://www.congtyvietin.vn/thong-tin-kien-thuc-in-an/chi-tiet/in-ao-thun-theo-yeu-cau-148/\">In &aacute;o thun theo y&ecirc;u cầu</a></strong>.</p>\r\n<p>Khi kh&aacute;ch h&agrave;ng c&oacute; nhu cầu in với số lượng lớn, qu&yacute; kh&aacute;ch c&oacute; thể đưa  ra y&ecirc;u cầu về mẫu in, về chất liệu vải với ch&uacute;ng t&ocirc;i. Ch&uacute;ng t&ocirc;i sẽ khảo  s&aacute;t v&agrave; tư vấn cặn kẽ. Ch&uacute;ng t&ocirc;i kh&ocirc;ng thể cập nhật gi&aacute; cụ thể của dịch  vụ n&agrave;y bởi gi&aacute; th&agrave;nh của mỗi sản phẩm &aacute;o thun c&ograve;n phụ thuộc v&agrave;o c&aacute;c yếu  tố (số lượng, mẫu in, loại vải để in, thời gian in&hellip;).</p>\r\n<p>Ch&uacute;ng t&ocirc;i lu&ocirc;n đầu tư, cập nhật c&aacute;c thiết bị kĩ thuật hiện đại ti&ecirc;n  tiến nhất đồng thời trao dồi c&aacute;c kĩ năng thiết kế v&agrave; n&acirc;ng cao &yacute; tưởng  nhằm đ&aacute;p ứng những mong đợi của kh&aacute;ch h&agrave;ng một c&aacute;ch hiệu quả v&agrave; tốt  nhất. Qu&yacute; kh&aacute;ch h&agrave;ng c&oacute; thể in bất k&igrave; h&igrave;nh ảnh n&agrave;o l&ecirc;n mặt &aacute;o thun: từ  logo, slogan, t&ecirc;n c&ocirc;ng ty, t&ecirc;n sản phẩm cho đến những th&ocirc;ng điệp độc đ&aacute;o  hay những h&igrave;nh ảnh m&agrave; kh&aacute;ch h&agrave;ng y&ecirc;u th&iacute;ch&hellip;</p>\r\n<p>Để tiết kiệm thời gian m&agrave; vẫn đ&aacute;p ứng được hiệu quả của kh&aacute;ch h&agrave;ng, <span>C&ocirc;ng ty Việt In</span> cần qu&yacute; kh&aacute;ch x&aacute;c định một số mục ti&ecirc;u trước khi sử dụng dịch vụ in &aacute;o thun theo y&ecirc;u cầu:</p>\r\n<h2><span>1. Loại sản phẩm in &aacute;o thun:</span></h2>\r\n<p>- In&nbsp;quảng c&aacute;o (Logo, Slogan, t&ecirc;n c&ocirc;ng ty hay t&ecirc;n sản phẩm).</p>\r\n<p>- In &aacute;o thun l&agrave;m qu&agrave; tặng khuyến m&atilde;i.</p>\r\n<p>- In&nbsp;đồng phục cho c&aacute;c trường lớp, c&ocirc;ng ty, nh&agrave; h&agrave;ng, kh&aacute;ch sạn, qu&aacute;n ăn.</p>\r\n<p>- In &aacute;o lớp, &aacute;o nh&oacute;m, &aacute;o c&acirc;u lạc bộ.</p>\r\n<p>- In&nbsp;&aacute;o cặp, &aacute;o đ&ocirc;i&hellip;.</p>\r\n<h2><span>2. Liệu vải in &aacute;o thun:</span></h2>\r\n<p>- 100% cotton.</p>\r\n<p>- Vải sợi dệt.</p>\r\n<p>- Vải sợi pha.</p>\r\n<p>- Vải PE.</p>\r\n<p>- Vải c&aacute; sấu cotton&hellip;</p>\r\n<h2><span>3. Mẫu in &aacute;o thun v&agrave; m&agrave;u sắc &aacute;o thun:</span></h2>\r\n<p>- Ch&uacute;ng t&ocirc;i cần biết mẫu in v&agrave; m&agrave;u &aacute;o như thế n&agrave;o để c&oacute; thể dự đo&aacute;n  m&agrave;u sắc của mẫu in khi in l&ecirc;n &aacute;o sẽ thay đổi ra sao (theo nguy&ecirc;n tắc pha  trộn m&agrave;u). Mẫu in phức tạp hay đơn giản để c&oacute; thể ước lượng được thời  gian cho ra th&agrave;nh phẩm. Từ đ&oacute;, c&oacute; thể tư vấn cho kh&aacute;ch h&agrave;ng một c&aacute;ch cụ  thể.</p>\r\n<p>- Qu&yacute; kh&aacute;ch c&oacute; thể t&igrave;m mẫu tr&ecirc;n internet hoặc li&ecirc;n hệ với bộ phận thiết kế mẫu của c&ocirc;ng ty ch&uacute;ng t&ocirc;i.</p>\r\n<h2><span>4. Số lượng in &aacute;o thun:</span></h2>\r\n<p>- Ch&uacute;ng t&ocirc;i lu&ocirc;n ưu đ&atilde;i gi&aacute; cho những kh&aacute;ch h&agrave;ng in &aacute;o thun với số lượng lớn.</p>\r\n<p>Nếu kh&aacute;ch h&agrave;ng c&oacute; nhu cầu, vui l&ograve;ng li&ecirc;n hệ ngay với ch&uacute;ng t&ocirc;i để  biết th&ecirc;m th&ocirc;ng tin chi tiết. Ch&uacute;ng t&ocirc;i sẽ tư vấn v&agrave; giải đ&aacute;p mọi thắc  mắc của qu&yacute; kh&aacute;ch h&agrave;ng trong thời gian sớm nhất.</p>\r\n<p>Ch&acirc;n th&agrave;nh cảm ơn Qu&yacute; kh&aacute;ch đ&atilde; quan t&acirc;m đến <strong>dịch vụ&nbsp;In &aacute;o thun theo y&ecirc;u cầu</strong> của ch&uacute;ng t&ocirc;i.</p>\r\n<p><img title=\"In &aacute;o thun theo y&ecirc;u cầu\" src=\"http://www.congtyvietin.vn/uploads/in_ao_thun/in-ao-thun-50.jpg\" border=\"0\" alt=\"In &aacute;o thun theo y&ecirc;u cầu\" width=\"450\" height=\"743\" /></p>\r\n<p><img title=\"In &aacute;o thun quảng c&aacute;o\" src=\"http://www.congtyvietin.vn/uploads/in_ao_thun/in-ao-thun-quang-cao.jpg\" border=\"0\" alt=\"In &aacute;o thun quảng c&aacute;o\" width=\"450\" height=\"500\" /></p>\r\n<p><img title=\"In &aacute;o thun theo y&ecirc;u cầu\" src=\"http://www.congtyvietin.vn/uploads/in_ao_thun/in-ao-thun-49.jpg\" border=\"0\" alt=\"In &aacute;o thun theo y&ecirc;u cầu\" width=\"450\" height=\"650\" /></p>\r\n<p><em>In &aacute;o thun theo y&ecirc;u cầu</em></p>', 'Để đáp ứng nhu cầu in áo thun của từng nhóm khách hàng, ngoài dịch vụ in áo thun theo mẫu, Công ty Việt in chúng tôi còn cung cấp thêm dịch vụ In áo thun theo yêu cầu.', '1', null, '1', '0', '0', '/page/in-ao-thun-theo-yeu-cau', null, '0', '21', '22', '', 'page', '2013-04-23 21:23:27', '0000-00-00 00:00:00');
INSERT INTO `nodes` VALUES ('26', '16', '1', 'In áo thun giá rẻ khỏe khoắn, năng động', 'in-ao-thun-gia-re-khoe-khon-nang-dong', '<p>Thời trang đ&ocirc;i khi kh&ocirc;ng cần sự cầu kỳ, di&ecirc;m d&uacute;a m&agrave; vẫn tạo n&ecirc;n phong c&aacute;ch. Với những dịch vụ <strong><a title=\"in &aacute;o thun gi&aacute; rẻ\" href=\"http://www.congtyvietin.vn/thong-tin-kien-thuc-in-an/chi-tiet/in-ao-thun-gia-re-khoe-khoan-nang-dong-146/\">in &aacute;o thun gi&aacute; rẻ</a></strong>, bạn sẽ c&oacute; một style ri&ecirc;ng, v&ocirc; c&ugrave;ng tươi tắn, năng động. Để xinh đẹp hơn trong mắt mọi người, theo quan điểm của dịch vụ <strong><a title=\"in &aacute;o thun\" href=\"http://www.congtyvietin.vn/dich-vu-in-an/in-ao-thun.html\">in &aacute;o thun</a></strong> Việt In l&agrave; điều kh&ocirc;ng qu&aacute; kh&oacute; khăn.</p>\r\n<p>Với c&aacute;c c&ocirc; n&agrave;ng tuổi teen thường y&ecirc;u th&iacute;ch c&aacute;c trang phục gọn  g&agrave;ng, đơn giản như quần jeans, quần short kết hợp với &aacute;o thun. Nhất l&agrave;  với t&iacute;nh chất kh&iacute; hậu, thời tiết ở ph&iacute;a Nam kh&aacute; ổn định n&ecirc;n style n&agrave;y  cũng được c&aacute;c n&agrave;ng S&agrave;i th&agrave;nh kh&aacute; y&ecirc;u th&iacute;ch. Những trang phục n&agrave;y tuy  thiết kế đơn giản nhưng với t&ocirc;ng m&agrave;u s&aacute;ng, m&agrave;u nổi bật vẫn mang đến cho  bạn g&aacute;i n&eacute;t trẻ trung, năng động v&agrave; khỏe khoắn.</p>\r\n<p>H&atilde;y c&ugrave;ng <strong>dịch vụ in &aacute;o thun Việt In</strong> điểm qua một số c&aacute;ch mix đồ như dưới đ&acirc;y bạn nh&eacute;.<em> </em></p>\r\n<div><img title=\"In &aacute;o thun gi&aacute; rẻ 01\" src=\"http://www.congtyvietin.vn/uploads/in_ao_thun/in_ao_thun_gia_re_01.jpg\" border=\"0\" alt=\"In &aacute;o thun gi&aacute; rẻ 01\" width=\"580\" height=\"871\" /></div>\r\n<div><img title=\"in &aacute;o thun gi&aacute; rẻ 02\" src=\"http://www.congtyvietin.vn/uploads/in_ao_thun/in_ao_thun_gia_re_02.jpg\" border=\"0\" alt=\"in &aacute;o thun gi&aacute; rẻ 02\" width=\"580\" height=\"835\" /></div>\r\n<p><img title=\"in &aacute;o thun gi&aacute; rẻ 03\" src=\"http://www.congtyvietin.vn/uploads/in_ao_thun/in_ao_thun_gia_re_03.jpg\" border=\"0\" alt=\"in &aacute;o thun gi&aacute; rẻ 03\" width=\"580\" height=\"831\" /></p>\r\n<p><img title=\"in &aacute;o thun gi&aacute; rẻ 04\" src=\"http://www.congtyvietin.vn/uploads/in_ao_thun/in_ao_thun_gia_re_04.jpg\" border=\"0\" alt=\"in &aacute;o thun gi&aacute; rẻ 04\" width=\"580\" height=\"826\" /></p>\r\n<p><img title=\"in &aacute;o thun gi&aacute; rẻ 05\" src=\"http://www.congtyvietin.vn/uploads/in_ao_thun/in_ao_thun_gia_re_05.jpg\" border=\"0\" alt=\"in &aacute;o thun gi&aacute; rẻ 05\" width=\"580\" height=\"849\" /></p>\r\n<p><img src=\"http://www.congtyvietin.vn/uploads/in_ao_thun/in-ao-thun-6.jpg\" border=\"0\" alt=\"\" width=\"580\" height=\"458\" /></p>\r\n<p><img src=\"http://www.congtyvietin.vn/uploads/in_ao_thun/in-ao-thun-2.jpg\" border=\"0\" alt=\"\" width=\"580\" height=\"761\" /></p>\r\n<p><img src=\"http://www.congtyvietin.vn/uploads/in_ao_thun/in-ao-thun-23.jpg\" border=\"0\" alt=\"\" width=\"580\" height=\"713\" /></p>\r\n<p>Việc phối hợp giữa quần jean lửng v&agrave; &aacute;o thun rất ph&ugrave; hợp với ngoại h&igrave;nh c&aacute;c bạn teen nữ. H&atilde;y c&ugrave;ng dịch vụ <strong>in &aacute;o thun gi&aacute; rẻ</strong> Việt In mang lại sự tự tin năng động cho bạn nh&eacute;.</p>', 'Thời trang đôi khi không cần sự cầu kỳ, diêm dúa mà vẫn tạo nên phong cách. Với những dịch vụ in áo thun giá rẻ, bạn sẽ có một style riêng, vô cùng tươi tắn, năng động.', '1', null, '1', '0', '0', '/page/in-ao-thun-gia-re-khoe-khon-nang-dong', null, '0', '23', '24', '', 'page', '2013-04-23 21:24:57', '0000-00-00 00:00:00');
INSERT INTO `nodes` VALUES ('27', '3', '1', 'Thư ngỏ', 'thu-ngo', '<p>K&iacute;nh gửi Qu&yacute; Kh&aacute;ch h&agrave;ng!</p>\r\n<p>Trước hết, thay mặt <strong><a title=\"Giới thiệu C&ocirc;ng ty In Ấn Việt In\" href=\"http://www.congtyvietin.vn/cong-ty-in-an-viet-in.html\" target=\"_blank\">C&ocirc;ng ty IN ẤN VIỆT IN</a></strong> xin gửi lời ch&agrave;o tr&acirc;n trọng đến  Qu&yacute; Kh&aacute;ch H&agrave;ng. K&iacute;nh ch&uacute;c Qu&yacute; Vị gặt   h&aacute;i nhiều th&agrave;nh c&ocirc;ng v&agrave; th&agrave;nh đạt  trong hoạt động kinh doanh.&nbsp;C&ocirc;ng ty  ch&uacute;ng t&ocirc;i hoạt động v&agrave; kinh doanh trong ng&agrave;nh <strong><a href=\"http://www.congtyvietin.vn/san-pham-in-an/in-bao-bi-hop-giay.html\" target=\"_blank\">IN ẤN TR&Ecirc;N BAO B&Igrave; GIẤY</a></strong> v&agrave; <strong><a href=\"http://www.congtyvietin.vn/dich-vu-in-an/in-offset-chuyen-nhiet.html\" target=\"_blank\">IN OFFSET C&Aacute;C LOẠI</a></strong>.    Trong qu&aacute; tr&igrave;nh h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển, ch&uacute;ng t&ocirc;i lu&ocirc;n n&acirc;ng cao  tinh   thần tr&aacute;ch nhiệm qua từng sản phẩm, nhằm phục vụ tốt hơn nhu cầu  ng&agrave;y   c&agrave;ng cao của Qu&yacute; Kh&aacute;ch, như một định hướng cho sự tồn tại v&agrave; ph&aacute;t  triển   của C&ocirc;ng ty VIỆT IN ch&uacute;ng t&ocirc;i.</p>\r\n<p>L&agrave; một C&ocirc;ng ty In ấn chuy&ecirc;n nghiệp v&agrave; hoạt động về lĩnh vực in ấn trong nhiều năm, <a href=\"http://www.congtyvietin.vn/san-pham-in-an/\" target=\"_blank\">sản phẩm in ấn</a> v&agrave; dịch vụ của ch&uacute;ng t&ocirc;i cung cấp đa dạng v&agrave; nhiều h&igrave;nh thức như:&nbsp;<a href=\"http://www.congtyvietin.vn/san-pham-in-an/in-danh-thiep.html\" target=\"_blank\">Danh  thiếp</a>, <a href=\"http://www.congtyvietin.vn/san-pham-in-an/in-bieu-mau-carbonless.html\" target=\"_blank\">biểu mẫu văn ph&ograve;ng</a> (Phiếu xuất - nhập kho, phiếu ra v&agrave;o  cổng,  bi&ecirc;n nhận b&aacute;n h&agrave;ng...), giấy ti&ecirc;u đề, tem, nh&atilde;n, <a href=\"http://www.congtyvietin.vn/san-pham-in-an/in-bao-thu.html\" target=\"_blank\">bao thư</a>,  <a href=\"http://www.congtyvietin.vn/san-pham-in-an/in-catalogue.html\" target=\"_blank\">catalogue</a>,  folder, brochure, lịch, sổ tay, <a href=\"http://www.congtyvietin.vn/san-pham-in-an/in-thiep.html\" target=\"_blank\">thiệp ch&uacute;c mừng, thiệp mời</a>,  bằng khen,  giấy chứng nhận, bao b&igrave;, <a href=\"http://www.congtyvietin.vn/san-pham-in-an/in-thiep.html\" target=\"_blank\">t&uacute;i x&aacute;ch giấy</a>.</p>\r\n<p><span><strong>Đặc biệt:</strong></span> Qu&yacute; Kh&aacute;ch c&oacute; nhu cầu về in chuyển nhiệt tr&ecirc;n vải thun. Với  c&ocirc;ng nghệ  v&agrave; m&aacute;y m&oacute;c được đầu tư hiện đại, c&ugrave;ng với đội ngũ nh&acirc;n  vi&ecirc;n  chuy&ecirc;n  nghiệp v&agrave; l&agrave;nh nghề trong l&atilde;nh vực thiết kế, in ấn. Với tinh thần &ldquo;phục  vụ trong h&acirc;n hoan&rdquo;,  c&ocirc;ng ty ch&uacute;ng t&ocirc;i lu&ocirc;n mang đến cho Qu&yacute; Kh&aacute;ch H&agrave;ng  những sản phẩm mang  <span><strong>T&Iacute;NH MỸ THUẬT CAO NHẤT - CHẤT LƯỢNG CAO NHẤT - THỜI GIAN GIAO H&Agrave;NG NHANH  NHẤT</strong></span> v&agrave; <span><strong>GI&Aacute; TH&Agrave;NH HỢP L&Yacute; NHẤT</strong></span>.</p>\r\n<p>Ch&uacute;ng t&ocirc;i lu&ocirc;n sẳn s&agrave;ng để phục vụ Qu&yacute; Kh&aacute;ch. H&atilde;y li&ecirc;n hệ với ch&uacute;ng t&ocirc;i khi bạn c&oacute; nhu cầu về lĩnh vực in ấn.</p>\r\n<p>Tr&acirc;n trọng k&iacute;nh ch&agrave;o!</p>\r\n<p><strong>BGD C&ocirc;ng ty Việt IN</strong></p>', '', '1', null, '1', '0', '0', '/page/thu-ngo', null, '0', '2', '3', '', 'page', '2013-04-23 20:13:27', '0000-00-00 00:00:00');
INSERT INTO `nodes` VALUES ('28', null, '1', 'Bảng giá', 'bang-gia', '<div class=\"contents\">\r\n<table border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr class=\"tr_title\" style=\"background-color: #f5f5f4; background-position: initial initial; background-repeat: initial initial;\">\r\n<td width=\"163\">\r\n<p><strong>SỐ LƯỢNG IN</strong></p>\r\n</td>\r\n<td width=\"192\">\r\n<p><strong>KHỔ IN</strong></p>\r\n</td>\r\n<td width=\"120\">\r\n<p><strong>ĐƠN GI&Aacute;</strong></p>\r\n</td>\r\n<td width=\"144\">\r\n<p><strong>TH&Agrave;NH TIỀN</strong></p>\r\n</td>\r\n<td width=\"108\">\r\n<p><strong>GHI CH&Uacute;</strong></p>\r\n</td>\r\n</tr>\r\n<tr style=\"background-color: #eeeeed; background-position: initial initial; background-repeat: initial initial;\">\r\n<td width=\"163\">\r\n<p>001-3.000 tờ</p>\r\n</td>\r\n<td width=\"192\">\r\n<p>39 x 54 cm đến 43 x 65 cm</p>\r\n</td>\r\n<td width=\"120\">\r\n<p>250.000 đ/kẽm</p>\r\n</td>\r\n<td width=\"144\">\r\n<p>1.000.000đ / 4 kẽm</p>\r\n</td>\r\n<td width=\"108\">\r\n<p>Chưa VAT 10%</p>\r\n</td>\r\n</tr>\r\n<tr style=\"background-color: #f5f5f4; background-position: initial initial; background-repeat: initial initial;\">\r\n<td width=\"163\">\r\n<p>3.001 -5000 tờ</p>\r\n</td>\r\n<td width=\"192\">\r\n<p>39 x 54 cm đến 43 x 65 cm</p>\r\n</td>\r\n<td width=\"120\">\r\n<p>250.000 đ/kẽm</p>\r\n</td>\r\n<td width=\"144\">\r\n<p>1.000.000đ / 4 kẽm</p>\r\n</td>\r\n<td width=\"108\">\r\n<p>Chưa VAT 10%</p>\r\n</td>\r\n</tr>\r\n<tr style=\"background-color: #eeeeed; background-position: initial initial; background-repeat: initial initial;\">\r\n<td width=\"163\">\r\n<p>&gt; 5.000 tờ</p>\r\n</td>\r\n<td width=\"192\">\r\n<p>39 x 54 cm đến 43 x 65 cm</p>\r\n</td>\r\n<td width=\"120\">\r\n<p>60 đ/m&agrave;u</p>\r\n</td>\r\n<td width=\"144\">\r\n<p>200 đ/tờ (01 mặt)</p>\r\n</td>\r\n<td width=\"108\">\r\n<p>Chưa VAT 10%</p>\r\n</td>\r\n</tr>\r\n<tr style=\"background-color: #f5f5f4; background-position: initial initial; background-repeat: initial initial;\">\r\n<td width=\"163\">\r\n<p>001-3.000 tờ</p>\r\n</td>\r\n<td width=\"192\">\r\n<p>54 x 79 cm (trở xuống)</p>\r\n</td>\r\n<td width=\"120\">\r\n<p>250.000 đ/kẽm</p>\r\n</td>\r\n<td width=\"144\">\r\n<p>1.000.000đ / 4 kẽm</p>\r\n</td>\r\n<td width=\"108\">\r\n<p>Chưa VAT 10%</p>\r\n</td>\r\n</tr>\r\n<tr style=\"background-color: #eeeeed; background-position: initial initial; background-repeat: initial initial;\">\r\n<td width=\"163\">\r\n<p>3.001 -5.000 tờ</p>\r\n</td>\r\n<td width=\"192\">\r\n<p>54 x 79 cm (trở xuống)</p>\r\n</td>\r\n<td width=\"120\">\r\n<p>275.000 đ/kẽm</p>\r\n</td>\r\n<td width=\"144\">\r\n<p>1.100.000đ / 4 kẽm</p>\r\n</td>\r\n<td width=\"108\">\r\n<p>Chưa VAT 10%</p>\r\n</td>\r\n</tr>\r\n<tr style=\"background-color: #f5f5f4; background-position: initial initial; background-repeat: initial initial;\">\r\n<td width=\"163\">\r\n<p>&gt; 5.000 tờ</p>\r\n</td>\r\n<td width=\"192\">\r\n<p>54 x 79 cm (trở xuống)</p>\r\n</td>\r\n<td width=\"120\">\r\n<p>60 đ / m&agrave;u</p>\r\n</td>\r\n<td width=\"144\">\r\n<p>240 đ/tờ (01 mặt)</p>\r\n</td>\r\n<td width=\"108\">\r\n<p>Chưa VAT 10%</p>\r\n</td>\r\n</tr>\r\n<tr style=\"background-color: #eeeeed; background-position: initial initial; background-repeat: initial initial;\">\r\n<td width=\"163\">\r\n<p>001- 3.000 tờ</p>\r\n</td>\r\n<td width=\"192\">\r\n<p>65 x 86 cm (trở xuống)</p>\r\n</td>\r\n<td width=\"120\">\r\n<p>300.000 đ/kẽm</p>\r\n</td>\r\n<td width=\"144\">\r\n<p>1.200.000đ / 4 kẽm</p>\r\n</td>\r\n<td width=\"108\">\r\n<p>Chưa VAT 10%</p>\r\n</td>\r\n</tr>\r\n<tr style=\"background-color: #f5f5f4; background-position: initial initial; background-repeat: initial initial;\">\r\n<td width=\"163\">\r\n<p>3.001 - 5.000 tờ</p>\r\n</td>\r\n<td width=\"192\">\r\n<p>65 x 86 cm (trở xuống)</p>\r\n</td>\r\n<td width=\"120\">\r\n<p>350.000 đ/kẽm</p>\r\n</td>\r\n<td width=\"144\">\r\n<p>1.400.000đ / 4 kẽm</p>\r\n</td>\r\n<td width=\"108\">\r\n<p>Chưa VAT 10%</p>\r\n</td>\r\n</tr>\r\n<tr style=\"background-color: #eeeeed; background-position: initial initial; background-repeat: initial initial;\">\r\n<td width=\"163\">\r\n<p>5.001- 10.000 tờ</p>\r\n</td>\r\n<td width=\"192\">\r\n<p>65 x 86 cm (trở xuống)</p>\r\n</td>\r\n<td width=\"120\">\r\n<p>70 đ / m&agrave;u</p>\r\n</td>\r\n<td width=\"144\">\r\n<p>280 đ/tờ (01 mặt)</p>\r\n</td>\r\n<td width=\"108\">\r\n<p>Chưa VAT 10%</p>\r\n</td>\r\n</tr>\r\n<tr style=\"background-color: #f5f5f4; background-position: initial initial; background-repeat: initial initial;\">\r\n<td width=\"163\">\r\n<p>10.001- 20.000 tờ</p>\r\n</td>\r\n<td width=\"192\">\r\n<p>65 x 86 cm (trở xuống)</p>\r\n</td>\r\n<td width=\"120\">\r\n<p>65 đ / m&agrave;u</p>\r\n</td>\r\n<td width=\"144\">\r\n<p>260 đ/tờ (01 mặt)</p>\r\n</td>\r\n<td width=\"108\">\r\n<p>Chưa VAT 10%</p>\r\n</td>\r\n</tr>\r\n<tr style=\"background-color: #eeeeed; background-position: initial initial; background-repeat: initial initial;\">\r\n<td width=\"163\">\r\n<p>&gt; 20.000 tờ</p>\r\n</td>\r\n<td width=\"192\">\r\n<p>65 x 86 cm (trở xuống)</p>\r\n</td>\r\n<td width=\"120\">\r\n<p>60 đ / m&agrave;u</p>\r\n</td>\r\n<td width=\"144\">\r\n<p>240 đ/tờ (01 mặt)</p>\r\n</td>\r\n<td width=\"108\">\r\n<p>Chưa VAT 10%</p>\r\n</td>\r\n</tr>\r\n<tr style=\"background-color: #f5f5f4; background-position: initial initial; background-repeat: initial initial;\">\r\n<td width=\"163\">\r\n<p>001-3.000 tờ</p>\r\n</td>\r\n<td width=\"192\">\r\n<p>&gt; 65x 86 cm</p>\r\n</td>\r\n<td width=\"120\">\r\n<p>450.000/kẽm</p>\r\n</td>\r\n<td width=\"144\">\r\n<p>1.800.000 / 4kẽm</p>\r\n</td>\r\n<td width=\"108\">\r\n<p>Chưa VAT 10%</p>\r\n</td>\r\n</tr>\r\n<tr style=\"background-color: #eeeeed; background-position: initial initial; background-repeat: initial initial;\">\r\n<td width=\"163\">\r\n<p>3.001&ndash; 5.000 tờ</p>\r\n</td>\r\n<td width=\"192\">\r\n<p>&gt; 65x 86 cm</p>\r\n</td>\r\n<td width=\"120\">\r\n<p>500.000/kẽm</p>\r\n</td>\r\n<td width=\"144\">\r\n<p>2.000.000 / 4kẽm</p>\r\n</td>\r\n<td width=\"108\">\r\n<p>Chưa VAT 10%</p>\r\n</td>\r\n</tr>\r\n<tr style=\"background-color: #f5f5f4; background-position: initial initial; background-repeat: initial initial;\">\r\n<td colspan=\"5\" width=\"727\" valign=\"top\">\r\n<p><strong><em>Đơn gi&aacute; tr&ecirc;n chưa bao gồm VAT   (10%) v&agrave; ph&iacute; v&acirc;n chuyển </em></strong></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>', '', '1', null, '1', '0', '0', '/page/bang-gia', null, '0', '27', '28', '', 'page', '2013-04-23 20:19:41', '0000-00-00 00:00:00');
INSERT INTO `nodes` VALUES ('31', null, '1', 'Sản phẩm', 'san-pham', '', '', '1', null, '1', '0', '0', '/page/san-pham', null, '0', '29', '30', '', 'page', '2013-04-25 02:35:14', '0000-00-00 00:00:00');
INSERT INTO `nodes` VALUES ('33', null, '1', 'Chi tiết sản phẩm', 'chi-tiet-san-pham', '', '', '1', null, '1', '0', '0', '/page/chi-tiet-san-pham', null, '0', '31', '32', '', 'page', '2013-04-25 04:15:12', '0000-00-00 00:00:00');
INSERT INTO `nodes` VALUES ('34', null, '0', 'screenshot', 'screenshot.png', '', null, '0', 'image/png', '1', '0', '0', '/uploads/screenshot.png', null, '0', '3', '4', null, 'attachment', '2013-04-29 12:48:56', '2013-04-29 12:48:56');
INSERT INTO `nodes` VALUES ('35', null, '0', 'thumb_6', 'thumb_6.jpg', '', null, '0', 'image/jpeg', '1', '0', '0', '/uploads/thumb_6.jpg', null, '0', '5', '6', null, 'attachment', '2013-04-29 15:15:33', '2013-04-29 15:15:33');
INSERT INTO `nodes` VALUES ('36', null, '0', 'vegetables_fruits_1x', 'vegetables_fruits_1x.png', '', null, '0', 'image/png', '1', '0', '0', '/uploads/vegetables_fruits_1x.png', null, '0', '5', '6', null, 'attachment', '2013-04-29 20:41:08', '2013-04-29 20:41:08');
INSERT INTO `nodes` VALUES ('37', null, '0', 'android-icons-set', 'android-icons-set.png', '', null, '0', 'image/png', '1', '0', '0', '/uploads/android-icons-set.png', null, '0', '5', '6', null, 'attachment', '2013-04-29 20:42:53', '2013-04-29 20:42:53');
INSERT INTO `nodes` VALUES ('45', null, '0', 'mobile_homed', 'mobile_homed.jpg', '', null, '0', 'image/jpeg', '1', '0', '0', '/uploads/mobile_homed.jpg', null, '0', '5', '6', null, 'attachment', '2013-04-29 21:11:19', '2013-04-29 21:11:19');
INSERT INTO `nodes` VALUES ('46', null, '0', 'wip_f100_wrecker_textured_1x', 'wip_f100_wrecker_textured_1x.jpg', '', null, '0', 'image/jpeg', '1', '0', '0', '/uploads/wip_f100_wrecker_textured_1x.jpg', null, '0', '5', '6', null, 'attachment', '2013-04-29 22:27:54', '2013-04-29 22:27:54');
INSERT INTO `nodes` VALUES ('47', null, '0', 'grandmother-at-a-party_1x', 'grandmother-at-a-party_1x.jpg', '', null, '0', 'image/jpeg', '1', '0', '0', '/uploads/grandmother-at-a-party_1x.jpg', null, '0', '7', '8', null, 'attachment', '2013-04-30 02:02:59', '2013-04-30 02:02:59');
INSERT INTO `nodes` VALUES ('48', null, '0', 'icon_fril_1x', 'icon_fril_1x.png', '', null, '0', 'image/png', '1', '0', '0', '/uploads/icon_fril_1x.png', null, '0', '9', '10', null, 'attachment', '2013-04-30 02:07:00', '2013-04-30 02:07:00');
INSERT INTO `nodes` VALUES ('49', null, '0', 'thumb_1', 'thumb_1.jpg', '', null, '0', 'image/jpeg', '1', '0', '0', '/uploads/thumb_1.jpg', null, '0', '11', '12', null, 'attachment', '2013-04-30 02:07:56', '2013-04-30 02:07:56');
INSERT INTO `nodes` VALUES ('50', null, '0', 'satellite_study_1x', 'satellite_study_1x.png', '', null, '0', 'image/png', '1', '0', '0', '/uploads/satellite_study_1x.png', null, '0', '13', '14', null, 'attachment', '2013-04-30 02:08:06', '2013-04-30 02:08:06');
INSERT INTO `nodes` VALUES ('51', null, '0', 'thumb_4', 'thumb_4.jpg', '', null, '0', 'image/jpeg', '1', '0', '0', '/uploads/thumb_4.jpg', null, '0', '15', '16', null, 'attachment', '2013-04-30 02:08:15', '2013-04-30 02:08:15');
INSERT INTO `nodes` VALUES ('52', null, '0', 'thumb_3', 'thumb_3.jpg', '', null, '0', 'image/jpeg', '1', '0', '0', '/uploads/thumb_3.jpg', null, '0', '17', '18', null, 'attachment', '2013-04-30 02:08:24', '2013-04-30 02:08:24');
INSERT INTO `nodes` VALUES ('53', null, '0', 'thumb_7', 'thumb_7.jpg', '', null, '0', 'image/jpeg', '1', '0', '0', '/uploads/thumb_7.jpg', null, '0', '19', '20', null, 'attachment', '2013-04-30 02:08:31', '2013-04-30 02:08:31');
INSERT INTO `nodes` VALUES ('54', null, '0', 'thumb_6', '517ec53d-dff0-40b1-8ab6-1b8c1c47f2e6-thumb_6.jpg', '', null, '0', 'image/jpeg', '1', '0', '0', '/uploads/517ec53d-dff0-40b1-8ab6-1b8c1c47f2e6-thumb_6.jpg', null, '0', '21', '22', null, 'attachment', '2013-04-30 02:08:45', '2013-04-30 02:08:45');
INSERT INTO `nodes` VALUES ('55', null, '0', 'thumb_3', '517ec548-a838-4ea7-9286-1b8c1c47f2e6-thumb_3.jpg', '', null, '0', 'image/jpeg', '1', '0', '0', '/uploads/517ec548-a838-4ea7-9286-1b8c1c47f2e6-thumb_3.jpg', null, '0', '23', '24', null, 'attachment', '2013-04-30 02:08:56', '2013-04-30 02:08:56');
INSERT INTO `nodes` VALUES ('57', null, '0', 'facebook-cap-nhat-bang-emoticon-moi', 'facebook-cap-nhat-bang-emoticon-moi.png', '', null, '0', 'image/png', '1', '0', '0', '/uploads/facebook-cap-nhat-bang-emoticon-moi.png', null, '0', '23', '24', null, 'attachment', '2013-04-30 20:38:24', '2013-04-30 20:38:24');
INSERT INTO `nodes` VALUES ('58', null, '0', 'thumb_17', 'thumb_17.jpg', '', null, '0', 'image/jpeg', '1', '0', '0', '/uploads/thumb_17.jpg', null, '0', '25', '26', null, 'attachment', '2013-04-30 20:38:57', '2013-04-30 20:38:57');
INSERT INTO `nodes` VALUES ('59', null, '0', 'thumb_10', 'thumb_10.jpg', '', null, '0', 'image/jpeg', '1', '0', '0', '/uploads/thumb_10.jpg', null, '0', '27', '28', null, 'attachment', '2013-05-01 20:37:07', '2013-05-01 20:37:07');
INSERT INTO `nodes` VALUES ('60', null, '0', 'thumb_9', 'thumb_9.jpg', '', null, '0', 'image/jpeg', '1', '0', '0', '/uploads/thumb_9.jpg', null, '0', '29', '30', null, 'attachment', '2013-05-01 20:58:21', '2013-05-01 20:58:21');
INSERT INTO `nodes` VALUES ('61', null, '0', 'weatherly_1x', 'weatherly_1x.png', '', null, '0', 'image/png', '1', '0', '0', '/uploads/weatherly_1x.png', null, '0', '29', '30', null, 'attachment', '2013-05-02 07:34:06', '2013-05-02 07:34:06');
INSERT INTO `nodes` VALUES ('62', null, '0', 'logo', 'logo.jpg', '', null, '0', 'image/jpeg', '1', '0', '0', '/uploads/logo.jpg', null, '0', '31', '32', null, 'attachment', '2013-05-03 13:10:38', '2013-05-03 13:10:38');
INSERT INTO `nodes` VALUES ('63', null, '0', 'chim-vang', 'images (1).jpg', '', '', '0', 'image/jpeg', '1', '0', '0', '/uploads/images (1).jpg', null, '0', '33', '34', null, 'attachment', '2013-05-03 13:21:54', '2013-05-03 13:20:25');
INSERT INTO `nodes` VALUES ('64', null, '0', 'bird Animal Wallpaper', 'bird Animal Wallpaper.jpg', '', null, '0', 'image/jpeg', '1', '0', '0', '/uploads/bird Animal Wallpaper.jpg', null, '0', '35', '36', null, 'attachment', '2013-05-03 13:22:46', '2013-05-03 13:22:46');
INSERT INTO `nodes` VALUES ('65', null, '0', 'birds-the-animal-kingdom-250702_1024_768', 'birds-the-animal-kingdom-250702_1024_768.jpg', '', null, '0', 'image/jpeg', '1', '0', '0', '/uploads/birds-the-animal-kingdom-250702_1024_768.jpg', null, '0', '37', '38', null, 'attachment', '2013-05-03 13:22:52', '2013-05-03 13:22:52');
INSERT INTO `nodes` VALUES ('66', null, '0', 'animal_1', 'animal_1.jpg', '', null, '0', 'image/jpeg', '1', '0', '0', '/uploads/animal_1.jpg', null, '0', '39', '40', null, 'attachment', '2013-05-03 13:22:58', '2013-05-03 13:22:58');
INSERT INTO `nodes` VALUES ('67', null, '0', 'animal_101', 'animal_101.jpg', '', null, '0', 'image/jpeg', '1', '0', '0', '/uploads/animal_101.jpg', null, '0', '41', '42', null, 'attachment', '2013-05-03 13:23:06', '2013-05-03 13:23:06');
INSERT INTO `nodes` VALUES ('68', null, '0', 'images', 'images.jpg', '', null, '0', 'image/jpeg', '1', '0', '0', '/uploads/images.jpg', null, '0', '43', '44', null, 'attachment', '2013-05-03 13:23:14', '2013-05-03 13:23:14');
INSERT INTO `nodes` VALUES ('69', null, '0', 'kids-sad-horses-x-funny-animal-picture-beautiful-animals-261932', 'kids-sad-horses-x-funny-animal-picture-beautiful-animals-261932.jpg', '', null, '0', 'image/jpeg', '1', '0', '0', '/uploads/kids-sad-horses-x-funny-animal-picture-beautiful-animals-261932.jpg', null, '0', '45', '46', null, 'attachment', '2013-05-03 13:23:26', '2013-05-03 13:23:26');
INSERT INTO `nodes` VALUES ('70', null, '0', 'pink_animal-wide', 'pink_animal-wide.jpg', '', null, '0', 'image/jpeg', '1', '0', '0', '/uploads/pink_animal-wide.jpg', null, '0', '47', '48', null, 'attachment', '2013-05-03 13:23:34', '2013-05-03 13:23:34');
INSERT INTO `nodes` VALUES ('71', null, '0', 'images', '51835802-7ff0-408a-a743-13c01c47f2e6-images.jpg', '', null, '0', 'image/jpeg', '1', '0', '0', '/uploads/51835802-7ff0-408a-a743-13c01c47f2e6-images.jpg', null, '0', '49', '50', null, 'attachment', '2013-05-03 13:24:02', '2013-05-03 13:24:02');
INSERT INTO `nodes` VALUES ('72', null, '0', 'images (1)', '51835892-f844-44f1-97c5-13c01c47f2e6-images (1).jpg', '', null, '0', 'image/jpeg', '1', '0', '0', '/uploads/51835892-f844-44f1-97c5-13c01c47f2e6-images (1).jpg', null, '0', '51', '52', null, 'attachment', '2013-05-03 13:26:26', '2013-05-03 13:26:26');
INSERT INTO `nodes` VALUES ('73', null, '0', 'pet-animal-dog_7', 'pet-animal-dog_7.jpg', '', null, '0', 'image/jpeg', '1', '0', '0', '/uploads/pet-animal-dog_7.jpg', null, '0', '53', '54', null, 'attachment', '2013-05-03 13:26:55', '2013-05-03 13:26:55');
INSERT INTO `nodes` VALUES ('74', null, '0', 'images (2)', 'images (2).jpg', '', null, '0', 'image/jpeg', '1', '0', '0', '/uploads/images (2).jpg', null, '0', '55', '56', null, 'attachment', '2013-05-03 13:27:22', '2013-05-03 13:27:22');

-- ----------------------------
-- Table structure for `nodes_taxonomies`
-- ----------------------------
DROP TABLE IF EXISTS `nodes_taxonomies`;
CREATE TABLE `nodes_taxonomies` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `node_id` int(20) NOT NULL DEFAULT '0',
  `taxonomy_id` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of nodes_taxonomies
-- ----------------------------
INSERT INTO `nodes_taxonomies` VALUES ('1', '1', '1');

-- ----------------------------
-- Table structure for `products`
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `images` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent` int(1) DEFAULT '1',
  `imglistid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', 'Sản phẩm', '', '', '', 'san-pham', '/san-pham.html', '0', null, '2000-00-00 00:00:00', '2000-00-00 00:00:00', '1');
INSERT INTO `products` VALUES ('11', 'Vợ nghi phạm đánh bom Boston không nhận xác chồng', 'Người vợ góa của Tamerlan Tsarnaev, nghi phạm đánh bom giải chạy marathon tại thành phố Boston, muốn giới chức Mỹ trao xác của y cho gia đình.', '<table id=\"tbl0\" border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3b/be/41/a4/katherine_russell_5.jpg\" alt=\"Katherine Russell, vợ của Tamerlan Tsarnaev, rời khỏi văn ph&ograve;ng của luật sư\" width=\"380\" height=\"562\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Katherine Russell, vợ của Tamerlan Tsarnaev, rời khỏi  văn ph&ograve;ng của luật sư Amato DeLuca tại th&agrave;nh phố Providence, bang Rhode  Island h&ocirc;m 29/4. Luật sư DeLuca đi b&ecirc;n cạnh c&ocirc;. Ảnh: <em>AP</em>.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">C&aacute;c nh&agrave; điều tra đ&atilde; thẩm vấn Katherine Russell, vợ của  Tamerlan, để t&igrave;m hiểu qu&aacute; tr&igrave;nh chế tạo bom của hai anh em Tsarnave v&agrave;  liệu ai đ&oacute; gi&uacute;p họ hay kh&ocirc;ng.</p>\r\n<p class=\"Normal\">\"Katherine Russell muốn gia đ&igrave;nh Tsarnave nhận x&aacute;c của  Tamerlan. Ch&uacute;ng t&ocirc;i sẽ th&ocirc;ng b&aacute;o tới nh&agrave; chức tr&aacute;ch về nguyện vọng của  c&ocirc; ấy\", <em>Reuters</em> dẫn lời Amato DeLuca, một luật sư của Katherine Russell.</p>\r\n<p class=\"Normal\">Ch&uacute; của Tamerlan Tsarnaev l&agrave; &ocirc;ng Ruslan Tsarni h&ocirc;m qua  cho biết gia đ&igrave;nh sẽ nhận thi thể của anh ta. \"Tất nhi&ecirc;n, c&aacute;c th&agrave;nh  vi&ecirc;n gia đ&igrave;nh sẽ nhận lấy c&aacute;i x&aacute;c. Ch&uacute;ng t&ocirc;i sẽ l&agrave;m điều đ&oacute;. Ch&uacute;ng t&ocirc;i  sẽ l&agrave;m điều đ&oacute;. Gia đ&igrave;nh vẫn l&agrave; gia đ&igrave;nh\".</p>\r\n<p class=\"Normal\">&Ocirc;ng Tsarni kh&ocirc;ng n&oacute;i th&ecirc;m chi tiết về việc nhận lại  thi h&agrave;i. Tsarnaev đ&atilde; được kh&aacute;m nghiệm ph&aacute;p y xong v&agrave; đang nằm tại ph&ograve;ng  kh&aacute;m nghiệm của giới chức. Nguy&ecirc;n nh&acirc;n ch&iacute;nh x&aacute;c dẫn đến c&aacute;i chết của y  đ&atilde; được x&aacute;c định v&agrave; sẽ được c&ocirc;ng bố sau khi y trở về với gia đ&igrave;nh.</p>\r\n<p class=\"Normal\">Cha mẹ của Tamerlan hiện vẫn ở Nga, nhưng y c&ograve;n những người họ h&agrave;ng kh&aacute;c ở Mỹ, trong đ&oacute; c&oacute; &ocirc;ng ch&uacute; Tsarni.</p>\r\n<p class=\"Normal\">Người vợ g&oacute;a 24 tuổi đ&atilde; trở về th&agrave;nh phố Providence,  bang Rhode Island để sống với bố, mẹ. C&aacute;c chuy&ecirc;n gia của Cục Điều tra  li&ecirc;n bang Mỹ (FBI) đ&atilde; gặp c&ocirc; v&agrave;i giờ trong tuần trước. \"Trong những ng&agrave;y  tới, Katherine sẽ tiếp tục gặp lực lượng h&agrave;nh ph&aacute;p để hỗ trợ qu&aacute; tr&igrave;nh  điều tra của họ\", DeLuca n&oacute;i th&ecirc;m.</p>', '/uploads/grandmother-at-a-party_1x.jpg', 'vo-nghi-pham-danh-bom-boston-khong-nhan-xac-chong', '/san-pham/vo-nghi-pham-danh-bom-boston-khong-nhan-xac-chong-11.html', '46', '61,60,58,57,54,61,59,50,49,48,45,', '2013-05-03 16:42:50', '2013-04-24 09:44:11', '1');
INSERT INTO `products` VALUES ('35', ' Rooney đòi nói chuyện thẳng thắn với Ferguson', 'Sự xuất hiện của Robert Lewandowski hoặc Radamel Falcao có thể đẩy tiền đạo người Anh khỏi sân Old Trafford trong kỳ chuyển nhượng hè.', '<p>&nbsp; Nguồn tin ri&ecirc;ng của tờ Telegraph (Anh) s&aacute;ng nay cho biết, Wayne Rooney  đ&atilde; y&ecirc;u cầu một cuộc n&oacute;i chuyện thẳng thắn với HLV Alex Ferguson trước  khi đ&agrave;m ph&aacute;n gia hạn hợp đồng. Nội dung cuộc n&oacute;i chuyện sẽ xoay quanh  việc Sir Alex phải đảm bảo cho R10 một suất đ&aacute; ch&iacute;nh tr&ecirc;n h&agrave;ng tiền đạo.</p>\r\n<p>Vị tr&iacute; của Rooney ở MU bắt đầu lung lay khi Robin Van Persie xuất hiện  v&agrave; li&ecirc;n tục ghi b&agrave;n cho đội b&oacute;ng mới. Mất dần cơ hội chơi tr&ecirc;n h&agrave;ng tiền  đạo, ch&acirc;n s&uacute;t số một đội tuyển Anh lắm l&uacute;c phải ra s&acirc;n trong vai tr&ograve;  tiền vệ c&ocirc;ng.</p>\r\n<table class=\"tplCaption\" border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://l.f1.img.vnexpress.net/2013/05/01/rooney-jpg-1367413943_500x0.jpg\" alt=\"rooney-jpg-1367413943_500x0.jpg\" width=\"500\" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>T&igrave;nh h&igrave;nh của Rooney c&agrave;ng đ&aacute;ng lo hơn khi c&oacute; tin Sir Alex đang muốn bổ  sung một tiền đạo đẳng cấp cho MU. Nếu như tin đồn l&agrave; đ&uacute;ng th&igrave; mục ti&ecirc;u  của &ocirc;ng l&agrave; một trong hai c&aacute;i t&ecirc;n đang nổi đ&igrave;nh nổi đ&aacute;m, Robert  Lewandowski v&agrave; Radamel Falcao.</p>\r\n<p>Theo Telegraph, chỉ khi Sir Alex đảm bảo một suất tiền đạo đ&aacute; ch&iacute;nh,  Rooney mới đồng &yacute; đ&agrave;m ph&aacute;n gia hạn hợp đồng. Hiện R10 c&ograve;n hai năm hợp  đồng với mức lương 250.000 bảng/tuần.</p>\r\n<p>Trong trường hợp kh&ocirc;ng đạt được &yacute; nguyện, c&oacute; khả năng Rooney sẽ ra đi.  Đ&iacute;ch đến c&oacute; thể l&agrave; một trong ba CLB Chelsea, PSG hoặc Man City.</p>', '/uploads/517ec53d-dff0-40b1-8ab6-1b8c1c47f2e6-thumb_6.jpg', '-rooney-doi-noi-chuyen-thang-than-voi-ferguson', '/san-pham/-rooney-doi-noi-chuyen-thang-than-voi-ferguson-35.html', '46', '', '2013-05-03 16:42:52', '2013-04-29 21:32:54', '1');
INSERT INTO `products` VALUES ('36', 'Những smartphone màn hình rộng giá tốt', 'Kích thước màn hình của điện thoại ngày càng rộng hơn, nhiều model xấp xỉ trên dưới 5 inch giá bán khá hấp dẫn khi nằm ở phân khúc tầm trung từ 5 cho tới 10 triệu đồng. ', '<p class=\"Normal\">&nbsp; Nếu như năm ngo&aacute;i, người d&ugrave;ng phải bỏ tới hơn 13, 14 triệu đồng để c&oacute;  thể sở hữu được một chiếc smartphone Android c&oacute; m&agrave;n h&igrave;nh rộng tầm hơn 5  inch như Note hay Note II th&igrave; năm ngay, nhiều nh&agrave; sản xuất đang tấn c&ocirc;ng  thị trường smartphone tầm trung với nhiều sản phẩm m&agrave;n h&igrave;nh rộng xấp xỉ  5 inch hoặc lớn hơn. Thậm ch&iacute;, c&oacute; model m&agrave;n h&igrave;nh 5 inch nhưng gi&aacute; chưa  tới 5 triệu đồng, hay&nbsp; được trang bị cả m&agrave;n h&igrave;nh Full HD 5 inch nhưng  ni&ecirc;m yết chưa đến 10 triệu đồng.</p>\r\n<p class=\"Normal\">X&eacute;t về gi&aacute; c&ugrave;ng với những c&ocirc;ng nghệ, chất lượng v&agrave; độ lớn của m&agrave;n h&igrave;nh,  dưới đ&acirc;y l&agrave; những smartphone (ch&iacute;nh h&atilde;ng) m&agrave;n h&igrave;nh rộng c&oacute; gi&aacute; hấp dẫn  nhất tr&ecirc;n thị trường hiện nay.</p>\r\n<p class=\"subtitle\"><a href=\"http://sohoa.vnexpress.net/oppo-find-5/topic-9121.html\">Oppo Find 5 (9,9 triệu đồng)</a></p>\r\n<table class=\"tplCaption\" border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://l.f5.img.vnexpress.net/2013/05/01/IMG-0035-JPG-1367383454_500x0.jpg\" alt=\"IMG-0035-JPG-1367383454_500x0.jpg\" width=\"500\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">FInd 5 sở hữu m&agrave;n h&igrave;nh đẹp với độ ph&acirc;n giải Full HD. Ảnh: <em>Tuấn Anh.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">X&eacute;t về mức gi&aacute; v&agrave; chất lượng m&agrave;n h&igrave;nh, Find 5 l&agrave; chiếc smartphone g&acirc;y  nhiều ch&uacute; &yacute; khi sở hữu m&agrave;n h&igrave;nh đẹp, sắc n&eacute;t với độ ph&acirc;n giải Full HD v&agrave;  k&iacute;ch thước 5 inch, trong khi so với c&aacute;c đối thủ c&ugrave;ng k&iacute;ch thước v&agrave; cấu  h&igrave;nh như Xperia Z, ZL th&igrave; gi&aacute; thấp hơn kh&aacute; nhiều.</p>\r\n<p class=\"Normal\">Find 5 sở hữu chip l&otilde;i tứ Qualcomm Snapdragon S4 Pro c&ugrave;ng RAM 2 GB,  camera 13 megapixel sử dụng cảm biến Exmor RS đời mới c&ugrave;ng thiết kế  nguy&ecirc;n khối hấp dẫn. M&aacute;y chạy Android 4.1.2 với giao diện ri&ecirc;ng.</p>', '/uploads/wip_f100_wrecker_textured_1x.jpg', 'nhung-smartphone-man-hinh-rong-gia-tot', '/san-pham/nhung-smartphone-man-hinh-rong-gia-tot-36.html', '46', '', '2013-05-03 16:42:53', '2013-04-29 22:26:55', '1');
INSERT INTO `products` VALUES ('37', 'Khuyến mãi \'khủng\' để xả hàng tồn kho ', 'Do tình hình khó khăn, nhiều doanh nghiệp, đơn vị kinh doanh đành phải khuyến mãi, giảm giá trên 50%, dù theo luật điều này là không được phép.', '<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"100%\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3b/be/3e/92/bang.jpg\" border=\"1\" alt=\"\" width=\"490\" height=\"383\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\" align=\"left\">Theo Nghị định 37/2006 quy định chi tiết  Luật thương mại, mức giảm gi&aacute; tối đa với h&agrave;ng h&oacute;a dịch vụ trong một  chương tr&igrave;nh khuyến m&atilde;i, giảm gi&aacute; kh&ocirc;ng được vượt qu&aacute; 50% gi&aacute; trị h&agrave;ng  h&oacute;a (trừ trường hợp h&igrave;nh thức khuyến m&atilde;i h&agrave;ng mẫu để kh&aacute;ch d&ugrave;ng thử  kh&ocirc;ng phải trả tiền). Tuy nhi&ecirc;n, trong bối cảnh kh&oacute; khăn hiện nay, nhiều  chủ doanh nghiệp đ&atilde; tận dụng khuyến m&atilde;i l&ecirc;n đến 70%. Ảnh chụp tại một  cửa h&agrave;ng ở quận 7.</td>\r\n</tr>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3b/be/3e/92/bang-3.jpg\" border=\"1\" alt=\"\" width=\"350\" height=\"448\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\" align=\"left\">Một cửa h&agrave;ng b&aacute;n quần &aacute;o tr&ecirc;n đường Nguyễn Đ&igrave;nh Chiểu, quận 3 trưng bảng sale 60% ra hẳn lề đường nhằm thu h&uacute;t kh&aacute;ch.</td>\r\n</tr>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3b/be/3e/92/bang-7.jpg\" border=\"1\" alt=\"\" width=\"490\" height=\"331\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\" align=\"left\">Chi&ecirc;u giảm gi&aacute; để xả h&agrave;ng với gi&aacute; trị l&ecirc;n đến 50-70%.</td>\r\n</tr>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3b/be/3e/92/bang-6.jpg\" border=\"1\" alt=\"\" width=\"350\" height=\"500\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\" align=\"left\">Một cửa h&agrave;ng để biển khuyến m&atilde;i sau tủ  k&iacute;nh với gi&aacute; ưu đ&atilde;i trong th&aacute;ng 4 giảm 70%. Hầu hết c&aacute;c chủ cửa h&agrave;ng  khuyến m&atilde;i \"khủng\" tr&ecirc;n đều cho biết m&igrave;nh chỉ giảm gi&aacute; 60-70% đối với  h&agrave;ng tồn kho, c&ograve;n đồ mới th&igrave; kh&ocirc;ng.&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', '/uploads/grandmother-at-a-party_1x.jpg', 'khuyen-mai-\'khung\'-de-xa-hang-ton-kho-', '/san-pham/khuyen-mai-\'khung\'-de-xa-hang-ton-kho--37.html', '46', '', '2013-05-03 16:42:55', '2013-04-30 02:03:09', '1');
INSERT INTO `products` VALUES ('38', 'Những màn pháo hoa ấn tượng tại Đà Nẵng ', '5 đội gồm Mỹ, Nhật Bản, Italia, Nga và chủ nhà Đà Nẵng đã có những màn trình diễn đẹp mắt tại thành phố ánh sáng, được người xem thán phục. ', '<table id=\"tbl1\" border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3b/be/41/a9/doi_my_2.jpg\" border=\"1\" alt=\"D&agrave;nh giải nhất cuộc tr&igrave;nh diễn lần n&agrave;y,\" width=\"400\" height=\"600\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Gi&agrave;nh giải nhất cuộc tr&igrave;nh diễn lần n&agrave;y, \"D&aacute;ng em đ&ecirc;m  nay\" của đội Mỹ đ&atilde; chinh phục được ban gi&aacute;m khảo v&agrave; h&agrave;ng chục ngh&igrave;n kh&aacute;n  giả. Nh&igrave;n từ xa, ph&aacute;o hoa của đội Mỹ kết hợp t&agrave;i t&igrave;nh với hiệu ứng &aacute;nh  s&aacute;ng.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table id=\"tbl2\" border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3b/be/41/a9/doi_my1.jpg\" border=\"1\" alt=\"Nh&igrave;n từ khu vực kh&aacute;n đ&agrave;i, đội Mỹ kết hợp t&agrave;i t&igrave;nh những l&agrave;n ph&aacute;o dưới mặt nước đến sự\" width=\"400\" height=\"600\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Nh&igrave;n từ khu vực kh&aacute;n đ&agrave;i, đội Mỹ kết hợp m&agrave;n ph&aacute;o dưới mặt nước với m&agrave;n biểu diễn tr&ecirc;n kh&ocirc;ng trung.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table id=\"tbl5\" border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3b/be/41/a9/nhat.jpg\" border=\"1\" alt=\"Tạo th&agrave;nh những c&acirc;y hoa theo chủ đề\" width=\"400\" height=\"600\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Đội Nhật Bản khai hỏa đầu ti&ecirc;n trong đ&ecirc;m tr&igrave;nh diễn  thứ hai (30/4) v&agrave; ấn tượng với những đợt ph&aacute;o v&uacute;t cao, tạo th&agrave;nh những  c&acirc;y hoa theo chủ đề \"Một khu vườn tr&ecirc;n bầu trời\".</td>\r\n</tr>\r\n</tbody>\r\n</table>', '/uploads/icon_fril_1x.png', 'nhung-man-phao-hoa-an-tuong-tai-da-nang-', '/san-pham/nhung-man-phao-hoa-an-tuong-tai-da-nang--38.html', '46', '', '2013-05-03 16:42:56', '2013-04-30 02:07:18', '1');
INSERT INTO `products` VALUES ('39', 'TR - Áo thun in hình hàng Thái Lan', 'Tổng thống Mỹ Barack Obama bảo vệ cách thức xử lý của ông đối với cuộc khủng hoảng tại Syria, vụ đánh bom tại thành phố Boston và đề cập nhiều vấn đề khác trong cuộc họp báo trong ngày thứ 100 của nhiệm kỳ thứ hai.', '<table id=\"tbl0\" border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3b/be/41/a7/obama_0.jpg\" alt=\"Tổng thống Barack Obama trong cuộc họp b&aacute;o nh&acirc;n dịp 100 ng&agrave;y trong nhiệm kỳ hai của &ocirc;ng h&ocirc;m 30/4. Ảnh: AFP.\" width=\"460\" height=\"327\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Tổng thống Barack Obama trong cuộc họp b&aacute;o nh&acirc;n dịp 100 ng&agrave;y trong nhiệm kỳ hai của &ocirc;ng h&ocirc;m 30/4. Ảnh: <em>AFP</em>.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Trong cuộc họp b&aacute;o h&ocirc;m 30/4, &ocirc;ng chủ Nh&agrave; Trắng b&aacute;c bỏ  luận điệu của những người k&ecirc;u gọi Mỹ tăng cường mức độ can dự v&agrave;o cuộc  khủng hoảng tại Syria. &Ocirc;ng khẳng định bằng chứng về việc Tổng thống  Syria sử dụng vũ kh&iacute; h&oacute;a học sẽ l&agrave; một yếu tố khiến Mỹ phải xem x&eacute;t khả  năng can thiệp, song Washington sẽ kh&ocirc;ng kết luận một c&aacute;ch vội v&agrave;ng, <em>AP</em> đưa tin.</p>\r\n<p class=\"Normal\">\"Ch&uacute;ng ta kh&ocirc;ng biết c&aacute;ch thức, thời gian, đối tượng  sử dụng những vũ kh&iacute; h&oacute;a học tại Syria. Mỹ chưa c&oacute; đủ bằng chứng để hiểu  những sự việc đ&atilde; diễn ra. T&ocirc;i muốn đảm bảo rằng t&ocirc;i c&oacute; sự thật\", Obama  n&oacute;i.</p>\r\n<p class=\"Normal\">&Ocirc;ng Obama giải th&iacute;ch rằng, nếu Mỹ vội v&agrave;ng kết luận  ch&iacute;nh phủ Syria sử dụng chất độc thần kinh khi chưa c&oacute; bằng chứng đ&aacute;ng  tin cậy th&igrave; Nh&agrave; Trắng sẽ kh&ocirc;ng thể nhận sự ủng hộ của cộng đồng quốc tế  khi can thiệp v&agrave;o Syria.</p>\r\n<p class=\"Normal\">\"V&igrave; thế ch&uacute;ng ta phải xử l&yacute; sự việc n&agrave;y một c&aacute;ch thận trọng\", &ocirc;ng nhận định.</p>\r\n<p class=\"Normal\">Một số nghị sĩ Cộng h&ograve;a n&oacute;i vụ đ&aacute;nh bom giải marathon  tại th&agrave;nh phố Boston l&agrave; một thất bại của giới t&igrave;nh b&aacute;o Mỹ. Nhưng Obama  b&aacute;c bỏ lập luận của họ. Theo &ocirc;ng, c&aacute;c nh&agrave; điều tra đ&atilde; thể hiện nỗ lực  phi thường trong qu&aacute; tr&igrave;nh t&igrave;m kiếm thủ phạm của vụ đ&aacute;nh bom v&agrave; l&yacute; do  khiến Tamerlan v&agrave; Dzhokhar Tsarnaev, hai nghi phạm của vụ khủng bố, k&iacute;ch  nổ hai quả bom khiến ba người chết v&agrave; gần 300 người bị thương.</p>\r\n<p class=\"Normal\">\"Việc Tamerlan Tsarnaev nhiễm tư tưởng Hồi gi&aacute;o cực  đoan cho thấy hiểm họa ng&agrave;y c&agrave;ng tăng từ những người tự trở th&agrave;nh phần  tử cực đoan tại Mỹ. Những người đ&oacute; kh&ocirc;ng hề c&oacute; mối li&ecirc;n hệ với c&aacute;c tổ  chức khủng bố\", &ocirc;ng n&oacute;i.</p>\r\n<p class=\"Normal\">Tổng thống Mỹ nhắc lại một cam kết m&agrave; &ocirc;ng đưa ra trong  chiến dịch vận động tranh cử năm 2008: Đ&oacute;ng cửa nh&agrave; t&ugrave; ở vịnh  Guantanamo. \"Mỹ phải đ&oacute;ng cửa nh&agrave; t&ugrave; Guantanamo. Ch&uacute;ng ta n&ecirc;n hiểu rằng  Guantanamo kh&ocirc;ng thể gi&uacute;p Mỹ trở n&ecirc;n an to&agrave;n hơn\", &ocirc;ng khẳng định.</p>', '/uploads/weatherly_1x.png', 'tr---ao-thun-in-hinh-hang-thai-lan', '/san-pham/tr---ao-thun-in-hinh-hang-thai-lan-39.html', '46', '61,60,58,57,54,61,59,50,49,48,45,', '2013-05-03 16:42:47', '2013-04-30 02:09:35', '1');
INSERT INTO `products` VALUES ('40', 'Thêm người tử vong sau tai nạn xe đầu kéo tông ôtô khách', 'Tối 30/4, cháu Phạm Văn Đức (12 tuổi, trú Hà Tĩnh) bị thương sau tai nạn đã tử vong tại Bệnh viện Trung ương Huế, nâng số người thiệt mạng lên 6. ', '<p class=\"Normal\">Ch&aacute;u Đức bị chấn thương sọ n&atilde;o nặng, được đưa v&agrave;o Bệnh  viện Trung ương Huế v&agrave;o chiều 30/4. C&ugrave;ng với Đức, 5 nạn nh&acirc;n kh&aacute;c,  trong đ&oacute; c&oacute; t&agrave;i xế xe kh&aacute;ch L&ecirc; Đ&igrave;nh Chinh (32 tuổi) đ&atilde; tử vong. Người  nh&agrave; c&aacute;c nạn nh&acirc;n đ&atilde; đến Bệnh viện Đa khoa v&agrave; Bệnh viện Trung ương Huế để  đưa thi thể về qu&ecirc; an t&aacute;ng.</p>\r\n<table id=\"tbl0\" border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3b/be/41/b1/chet1.jpg\" border=\"1\" alt=\"C&aacute;c nạn nh&acirc;n sau vụ tai nạn kinh ho&agrave;ng đang được c&aacute;c y, b&aacute;c sĩ chăm s&oacute;c. Ảnh: Phong Sơn\" width=\"495\" height=\"350\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">C&aacute;c nạn nh&acirc;n sau vụ tai nạn đang được c&aacute;c y, b&aacute;c sĩ chăm s&oacute;c. Ảnh: <em>Phong Sơn</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Hiện tại Bệnh viện Trung ương Huế c&ograve;n 7 nạn nh&acirc;n bị  thương nặng đang được điều trị, trong đ&oacute; c&oacute; 3 d&igrave; ch&aacute;u trong một gia  đ&igrave;nh. Thượng t&aacute; Cao Thanh Hải, Ph&oacute; ch&aacute;nh Văn ph&ograve;ng C&ocirc;ng an tỉnh Thừa  Thi&ecirc;n - Huế cho biết, c&ocirc;ng an đang tạm giữ t&agrave;i xế xe đầu k&eacute;o L&ecirc; Thất  T&ugrave;ng (36 tuổi, tr&uacute; quận T&acirc;n B&igrave;nh, TP HCM) để phục vụ c&ocirc;ng t&aacute;c điều tra  nguy&ecirc;n nh&acirc;n tai nạn.</p>\r\n<p class=\"Normal\">Trước đ&oacute; khoảng 13h ng&agrave;y 30/4, xe kh&aacute;ch 30 chỗ biển H&agrave;  Tĩnh đang lưu th&ocirc;ng tr&ecirc;n quốc lộ 1A. Đến x&atilde; Phong An (Phong Điền, Thừa  Thi&ecirc;n - Huế), xe kh&aacute;ch bị xe đầu k&eacute;o biển TP HCM do L&ecirc; Thất T&ugrave;ng cầm l&aacute;i  lấn l&agrave;n t&ocirc;ng trực diện. Hai xe lật xuống ruộng l&agrave;m 4 người tử vong tại  chỗ, 2 người tử vong tại Bệnh viện Trung ương Huế, 7 nạn nh&acirc;n kh&aacute;c trọng  thương.</p>\r\n<table id=\"tbl1\" border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3b/be/41/b1/chet2.jpg\" border=\"1\" alt=\"Hiện trường vụ tai nạn trong ng&agrave;y nghỉ lễ khiến 6 người tử vong. Ảnh: Phong Sơn\" width=\"495\" height=\"350\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Hiện trường vụ tai nạn. Ảnh:<em> Phong Sơn</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Chủ tịch tỉnh Thừa Thi&ecirc;n - Huế Nguyễn Văn Cao v&agrave; l&atilde;nh  đạo huyện Phong Điền đ&atilde; đến hiện trường chỉ đạo xử l&yacute; vụ tai nạn v&agrave; hỗ  trợ mỗi nạn nh&acirc;n tử vong 4 triệu đồng, người bị thương 2 triệu đồng.</p>', '/uploads/thumb_17.jpg', 'them-nguoi-tu-vong-sau-tai-nan-xe-dau-keo-tong-oto-khach', '/san-pham/them-nguoi-tu-vong-sau-tai-nan-xe-dau-keo-tong-oto-khach-40.html', '47', '', '2013-05-03 16:42:58', '2013-04-30 02:10:35', '1');
INSERT INTO `products` VALUES ('43', 'MC truyền hình giả công an chặn bắt xe', 'Một MC của Trung tâm Truyền hình Việt Nam tại tỉnh Phú Yên bị bắt khi đang cùng học sinh lớp 12 giả danh công an chặn xe người đi đường.', '<p class=\"Normal\">Ng&agrave;y 30/4, thượng t&aacute; Nguyễn T&acirc;m Niệm, Ph&oacute;  c&ocirc;ng an huyện Tuy An (Ph&uacute; Y&ecirc;n), cho biết đang điều tra việc &ocirc;ng L&ecirc;  Thoại Kỳ, người dẫn chương tr&igrave;nh của Trung t&acirc;m Truyền h&igrave;nh Việt Nam tại  Ph&uacute; Y&ecirc;n (VTV Ph&uacute; Y&ecirc;n) c&ugrave;ng Phan Nguyễn Ho&agrave;i Nam (học sinh lớp 12, TP Tuy  H&ograve;a, Ph&uacute; Y&ecirc;n) mặc cảnh phục, giả danh c&ocirc;ng an ra đường chặn xe kiểm  tra. Cả hai đang bị c&ocirc;ng an tạm giữ phục vụ điều tra.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"left\">\r\n<tbody>\r\n<tr>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Kỳ v&agrave; Nam tại cơ quan c&ocirc;ng an.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Theo &ocirc;ng Nguyễn Đ&igrave;nh C&ocirc;ng, Chủ tịch UBND  x&atilde; An H&ograve;a (huyện Tuy An), tối 29/4, lực lượng c&ocirc;ng an x&atilde; n&agrave;y bắt quả  tang Kỳ c&ugrave;ng Nam mặc sắc phục c&ocirc;ng an đang chặn bắt, kiểm tra giấy tờ  hai xe m&aacute;y. Cả hai được đưa về trụ sở c&ocirc;ng an x&atilde; để l&agrave;m việc.</p>\r\n<p class=\"Normal\">Tại trụ sở c&ocirc;ng an x&atilde;, biết Kỳ v&agrave; Nam l&agrave;  c&ocirc;ng an giả, nhiều người giận dữ, đ&ograve;i x&ocirc;ng v&agrave;o đ&aacute;nh. \"Nhiều người d&acirc;n  địa phương phản &aacute;nh hai người n&agrave;y đ&atilde; nhiều lần mặc đồ c&ocirc;ng an đứng chặn  đường bắt xe, kiểm tra giấy tờ của rất nhiều người. Do nghi ngờ n&ecirc;n họ  b&aacute;o c&ocirc;ng an theo d&otilde;i...\", &ocirc;ng C&ocirc;ng n&oacute;i.</p>\r\n<p class=\"Normal\">Ph&oacute; C&ocirc;ng an huyện Tuy An cho biết, bước  đầu, Kỳ khai l&agrave; đ&oacute;ng giả c&ocirc;ng an để đi t&aacute;c nghiệp về đề t&agrave;i an to&agrave;n giao  th&ocirc;ng. Tuy nhi&ecirc;n, theo nhiều người d&acirc;n từng bị chặn xe, họ chưa bao giờ  thấy Kỳ d&ugrave;ng m&aacute;y quay hay m&aacute;y ảnh để t&aacute;c nghiệp.</p>\r\n<p class=\"Normal\">&Ocirc;ng Trần Thanh Hưng, Ph&oacute; gi&aacute;m đốc VTV Ph&uacute;  Y&ecirc;n, cho biết L&ecirc; Thoại Kỳ l&agrave; nh&acirc;n vi&ecirc;n hợp đồng vụ việc của cơ quan  n&agrave;y, c&oacute; nộp hồ sơ để cơ quan quản l&yacute;. Nhiệm vụ ch&iacute;nh của Kỳ l&agrave; dẫn  chương tr&igrave;nh thời sự, ngo&agrave;i ra c&ograve;n được ph&acirc;n c&ocirc;ng bi&ecirc;n tập, thực hiện  một số chuy&ecirc;n đề với sự gi&aacute;m s&aacute;t của VTV Ph&uacute; Y&ecirc;n.</p>\r\n<p class=\"Normal\">\"C&ocirc;ng nhận rằng Thoại Kỳ l&agrave; bộ mặt của  đ&agrave;i nhưng chưa được k&yacute; hợp đồng ch&iacute;nh thức do chưa tốt nghiệp đại học.  Việc &ocirc;ng Kỳ giả danh c&ocirc;ng an đi t&aacute;c nghiệp hay l&agrave;m g&igrave;, ch&uacute;ng t&ocirc;i ho&agrave;n  to&agrave;n kh&ocirc;ng biết cũng như kh&ocirc;ng hề ph&acirc;n c&ocirc;ng. Kỳ phải chịu tr&aacute;ch nhiệm  trước ph&aacute;p luật về việc l&agrave;m của m&igrave;nh\" &ocirc;ng Hưng n&oacute;i.</p>\r\n<p class=\"Normal\">L&atilde;nh đạo VTV Ph&uacute; Y&ecirc;n cho hay, kh&ocirc;ng biết hai bộ cảnh phục m&agrave; Kỳ v&agrave; Nam mặc để đ&oacute;ng giả c&ocirc;ng an lấy từ đ&acirc;u ra.&nbsp;</p>', '/uploads/thumb_10.jpg', 'mc-truyen-hinh-gia-cong-an-chan-bat-xe', '/san-pham/mc-truyen-hinh-gia-cong-an-chan-bat-xe-43.html', '47', '', '2013-05-03 16:42:59', '2013-05-01 20:37:15', '1');
INSERT INTO `products` VALUES ('46', 'In catalogue', '', '', '/uploads/thumb_1.jpg', 'in-catalogue', '/san-pham/in-catalogue-46.html', '1', '', '2013-05-03 16:42:49', '2013-05-01 21:22:58', '1');
INSERT INTO `products` VALUES ('47', 'In bao bì TP.HCM', '', '', '/uploads/images (2).jpg', 'in-bao-bi-tphcm', '/san-pham/in-bao-bi-tphcm-47.html', '1', '', '2013-05-03 15:50:08', '2013-05-01 21:23:32', '1');
INSERT INTO `products` VALUES ('50', 'In decal nhãn giấy', '', '', '/uploads/pet-animal-dog_7.jpg', 'in-decal-nhan-giay', '/san-pham/in-decal-nhan-giay-50.html', '1', '', '2013-05-03 16:41:36', '2013-05-02 14:06:22', '1');
INSERT INTO `products` VALUES ('51', 'In bao bì', '', '', '/uploads/51835892-f844-44f1-97c5-13c01c47f2e6-images (1).jpg', 'in-bao-bi', '/san-pham/in-bao-bi-51.html', '1', '', '2013-05-03 16:42:25', '2013-05-02 14:06:44', '1');
INSERT INTO `products` VALUES ('52', 'In tem bảo hành', '', '', '/uploads/images (1).jpg', 'in-tem-bao-hanh', '/san-pham/in-tem-bao-hanh-52.html', '1', '', '2013-05-03 16:42:35', '2013-05-02 14:06:52', '1');
INSERT INTO `products` VALUES ('53', 'In tờ rơi - tờ gấp', '', '', '/uploads/bird Animal Wallpaper.jpg', 'in-to-roi---to-gap', '/san-pham/in-to-roi---to-gap-53.html', '1', '', '2013-05-03 16:42:36', '2013-05-02 14:07:01', '1');
INSERT INTO `products` VALUES ('54', 'In poster', '', '', '/uploads/birds-the-animal-kingdom-250702_1024_768.jpg', 'in-poster', '/san-pham/in-poster-54.html', '1', '', '2013-05-03 16:42:38', '2013-05-02 14:07:07', '1');
INSERT INTO `products` VALUES ('55', 'In thiệp', '', '', '/uploads/animal_1.jpg', 'in-thiep', '/san-pham/in-thiep-55.html', '1', '', '2013-05-03 16:42:40', '2013-05-02 14:07:13', '1');
INSERT INTO `products` VALUES ('56', 'In phiếu quà tặng', '', '', '/uploads/animal_101.jpg', 'in-phieu-qua-tang', '/san-pham/in-phieu-qua-tang-56.html', '1', '', '2013-05-03 16:42:42', '2013-05-02 14:07:22', '1');
INSERT INTO `products` VALUES ('57', 'In danh thiếp', '', '', '/uploads/images.jpg', 'in-danh-thiep', '/san-pham/in-danh-thiep-57.html', '1', '', '2013-05-03 16:42:44', '2013-05-02 14:07:28', '1');
INSERT INTO `products` VALUES ('58', 'In bìa đựng hồ sơ', '', '', '/uploads/kids-sad-horses-x-funny-animal-picture-beautiful-animals-261932.jpg', 'in-bia-dung-ho-so', '/san-pham/in-bia-dung-ho-so-58.html', '1', '', '2013-05-03 16:42:46', '2013-05-02 14:07:35', '1');
INSERT INTO `products` VALUES ('59', 'In bản tin', '', '', '/uploads/pink_animal-wide.jpg', 'in-ban-tin', '/san-pham/in-ban-tin-59', '1', '', '2013-05-03 13:24:33', '2013-05-02 14:07:42', '1');
INSERT INTO `products` VALUES ('60', 'In túi giấy - hộp giấy', '', '', '/uploads/51835802-7ff0-408a-a743-13c01c47f2e6-images.jpg', 'in-tui-giay---hop-giay', '/san-pham/in-tui-giay---hop-giay-60', '1', '', '2013-05-03 13:24:25', '2013-05-02 14:07:48', '1');
INSERT INTO `products` VALUES ('61', 'In biểu mẫu / carbonless', '', '', '/uploads/images (1).jpg', 'in-bieu-mau--carbonless', '/san-pham/in-bieu-mau--carbonless-61', '1', '', '2013-05-03 13:22:11', '2013-05-02 14:07:54', '1');

-- ----------------------------
-- Table structure for `regions`
-- ----------------------------
DROP TABLE IF EXISTS `regions`;
CREATE TABLE `regions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `block_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `region_alias` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of regions
-- ----------------------------
INSERT INTO `regions` VALUES ('3', 'none', 'none', '', '1');
INSERT INTO `regions` VALUES ('4', 'right', 'right', '', '6');
INSERT INTO `regions` VALUES ('6', 'left', 'left', '', '0');
INSERT INTO `regions` VALUES ('7', 'header', 'header', '', '0');
INSERT INTO `regions` VALUES ('8', 'footer', 'footer', '', '0');
INSERT INTO `regions` VALUES ('9', 'region1', 'region1', '', '0');
INSERT INTO `regions` VALUES ('10', 'region2', 'region2', '', '0');
INSERT INTO `regions` VALUES ('11', 'region3', 'region3', '', '0');
INSERT INTO `regions` VALUES ('12', 'region4', 'region4', '', '0');
INSERT INTO `regions` VALUES ('13', 'region5', 'region5', '', '0');
INSERT INTO `regions` VALUES ('14', 'region6', 'region6', '', '0');
INSERT INTO `regions` VALUES ('15', 'region7', 'region7', '', '0');
INSERT INTO `regions` VALUES ('16', 'region8', 'region8', '', '0');
INSERT INTO `regions` VALUES ('17', 'region9', 'region9', '', '0');
INSERT INTO `regions` VALUES ('19', 'rg-ls-menu-footer', 'rg-ls-menu-footer', null, '1');
INSERT INTO `regions` VALUES ('20', 'rg-ls-contact-footer', 'rg-ls-contact-footer', null, '1');
INSERT INTO `regions` VALUES ('21', 'rg-ls-linked-footer	', 'rg-ls-linked-footer', null, '1');
INSERT INTO `regions` VALUES ('22', 'rg-ls-statistic-footer', 'rg-ls-statistic-footer', null, '1');
INSERT INTO `regions` VALUES ('23', 'rg-ls-support', 'rg-ls-support', null, '0');
INSERT INTO `regions` VALUES ('24', 'rg-ls-left', 'rg-ls-left', null, '0');
INSERT INTO `regions` VALUES ('25', 'rg-ls-header-contact', 'rg-ls-header-contact', null, '1');
INSERT INTO `regions` VALUES ('26', 'rg-ls-product-category', 'rg-ls-product-category', null, '1');
INSERT INTO `regions` VALUES ('27', 'rg-ls-service-category', 'rg-ls-service-category', null, '1');
INSERT INTO `regions` VALUES ('28', 'rg-ls-service-relative', 'rg-ls-service-relative', null, '1');

-- ----------------------------
-- Table structure for `roles`
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `role_alias` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'Admin', 'admin', '2009-04-05 00:10:34', '2009-04-05 00:10:34');
INSERT INTO `roles` VALUES ('2', 'Registered', 'registered', '2009-04-05 00:10:50', '2009-04-06 05:20:38');
INSERT INTO `roles` VALUES ('3', 'Public', 'public', '2009-04-05 00:12:38', '2009-04-07 01:41:45');

-- ----------------------------
-- Table structure for `roles_users`
-- ----------------------------
DROP TABLE IF EXISTS `roles_users`;
CREATE TABLE `roles_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `granted_by` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pk_role_users` (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of roles_users
-- ----------------------------

-- ----------------------------
-- Table structure for `schema_migrations`
-- ----------------------------
DROP TABLE IF EXISTS `schema_migrations`;
CREATE TABLE `schema_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of schema_migrations
-- ----------------------------
INSERT INTO `schema_migrations` VALUES ('1', 'InitMigrations', 'Migrations', '2013-04-22 18:13:15');
INSERT INTO `schema_migrations` VALUES ('2', 'ConvertVersionToClassNames', 'Migrations', '2013-04-22 18:13:15');
INSERT INTO `schema_migrations` VALUES ('3', 'IncreaseClassNameLength', 'Migrations', '2013-04-22 18:13:16');
INSERT INTO `schema_migrations` VALUES ('4', 'FirstMigrationSettings', 'Settings', '2013-04-22 18:13:16');
INSERT INTO `schema_migrations` VALUES ('5', 'FirstMigrationAcl', 'Acl', '2013-04-22 18:13:16');
INSERT INTO `schema_migrations` VALUES ('6', 'FirstMigrationBlocks', 'Blocks', '2013-04-22 18:13:17');
INSERT INTO `schema_migrations` VALUES ('7', 'FirstMigrationComments', 'Comments', '2013-04-22 18:13:17');
INSERT INTO `schema_migrations` VALUES ('8', 'FirstMigrationContacts', 'Contacts', '2013-04-22 18:13:17');
INSERT INTO `schema_migrations` VALUES ('9', 'FirstMigrationMenus', 'Menus', '2013-04-22 18:13:17');
INSERT INTO `schema_migrations` VALUES ('10', 'FirstMigrationMeta', 'Meta', '2013-04-22 18:13:17');
INSERT INTO `schema_migrations` VALUES ('11', 'FirstMigrationNodes', 'Nodes', '2013-04-22 18:13:18');
INSERT INTO `schema_migrations` VALUES ('12', 'FirstMigrationTaxonomy', 'Taxonomy', '2013-04-22 18:13:18');
INSERT INTO `schema_migrations` VALUES ('13', 'FirstMigrationUsers', 'Users', '2013-04-22 18:13:19');
INSERT INTO `schema_migrations` VALUES ('14', 'FirstMigrationTranslate', 'Translate', '2013-04-24 08:22:02');

-- ----------------------------
-- Table structure for `services`
-- ----------------------------
DROP TABLE IF EXISTS `services`;
CREATE TABLE `services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `images` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent` tinyint(1) DEFAULT '1',
  `updated` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of services
-- ----------------------------
INSERT INTO `services` VALUES ('1', 'Dịch vụ', '', '', '', 'dich-vu', '/dich-vu.html', '0', '2000-00-00 14:32:37', '2000-05-01 14:32:37', '1');
INSERT INTO `services` VALUES ('11', 'Dương Triệu Vũ phi môtô lên sân khấu Cặp đôi hoàn hảo', ' Nam ca sĩ và Thanh Thúy mang nguyên chiếc xe phân khối lớn làm đạo cụ cho màn trình diễn trong liveshow 9 Cặp đôi hoàn hảo.\r\n', '<p>B&aacute;n kết Cặp đ&ocirc;i ho&agrave;n hảo 2013 diễn ra tối 28/4, tại TP HCM. Kh&aacute;n giả ấn tượng với m&agrave;n d&agrave;n dựng c&ocirc;ng phu của Dương Triệu Vũ v&agrave; Thanh Th&uacute;y trong tiết mục \"Anh kh&ocirc;ng cần\". Họ l&agrave;m tốt phần h&aacute;t lẫn phần diễn xuất. \"Anh kh&ocirc;ng cần\" l&agrave; một bản \"hit\" của Dương Triệu Vũ, do nhạc sĩ Ki&ecirc;n Trần s&aacute;ng t&aacute;c. Ca kh&uacute;c n&agrave;y được anh đưa v&agrave;o album \"Si&ecirc;u nh&acirc;n\" năm 2011.</p>\r\n<p>&nbsp;</p>\r\n<table class=\"tplCaption\" border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://l.f9.img.vnexpress.net/2013/04/29/14-jpg-1367192901-1367193874_500x0.jpg\" alt=\"14-jpg-1367192901-1367193874_500x0.jpg\" width=\"480\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Cởi bỏ n&eacute;t hoang dại, c&aacute; t&iacute;nh ban đầu, họ trở về h&igrave;nh ảnh của những n&ocirc;ng d&acirc;n miền qu&ecirc; hiền l&agrave;nh ch&acirc;n chất h&aacute;t ca kh&uacute;c \"Ru lại c&acirc;u h&ograve; - Vọng cổ buồn\". Nhạc sĩ L&ecirc; Minh Sơn n&oacute;i: &ldquo;Nếu so s&aacute;nh hai tiết mục của c&aacute;c bạn, giữa một chiếc xe m&aacute;y v&agrave; một giỏ cua th&igrave; t&ocirc;i th&iacute;ch giỏ cua hơn&rdquo;. (<a href=\"http://giaitri.vnexpress.net/video/video-truyen-hinh/duong-trieu-vu-va-thanh-thuy-hat-ru-lai-cau-ho-2740932.html?p=1\" target=\"_blank\">xem clip</a>)</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class=\"tplCaption\" border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://l.f9.img.vnexpress.net/2013/04/29/6-jpg-1367192337-1367192528_500x0.jpg\" alt=\"6-jpg-1367192337-1367192528_500x0.jpg\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">C&aacute;t Phượng v&agrave; Phan Đinh T&ugrave;ng h&oacute;a th&agrave;nh đ&ocirc;i gi&agrave; y&ecirc;u th&iacute;ch văn nghệ. Cả hai chọn ca kh&uacute;c \"O sole mio\" với m&agrave;n tr&igrave;nh diễn h&agrave;i hước vui nhộn. C&aacute;t Phượng được kh&aacute;n giả cổ vũ nhiệt t&igrave;nh khi mạnh dạn thể hiện chất giọng. L&ecirc; Minh Sơn cho rằng, chung kết&nbsp;Cặp đ&ocirc;i ho&agrave;n hảo m&agrave; thiếu đ&ocirc;i n&agrave;y sẽ rất buồn. (<a href=\"http://giaitri.vnexpress.net/video/video-truyen-hinh/cat-phuong-va-phan-dinh-tung-hat-mat-troi-cua-toi-2740931.html?p=1\" target=\"_blank\">xem clip</a>)</td>\r\n</tr>\r\n</tbody>\r\n</table>', '/uploads/39154034_1.jpg', 'duong-trieu-vu-phi-moto-len-san-khau-cap-doi-hoan-hao', '/dich-vu/duong-trieu-vu-phi-moto-len-san-khau-cap-doi-hoan-hao-11.html', '1', '2013-05-03 16:40:18', '2013-04-24 09:44:11', '1');
INSERT INTO `services` VALUES ('35', 'Cán màng nhiệt', 'Sau khi VnExpress.net phản ánh xe khách Hoàng Phương nhồi nhét 90 người, chở gấp đôi quy định, Đội cảnh sát giao thông số 12 (Công an Hà Nội) cử lực lượng kiểm soát và đã phát hiện xe này.\r\n', '<p class=\"Normal\">Tối 28/4, tại trụ sở Đội cảnh s&aacute;t giao th&ocirc;ng số 12, đại diện nh&agrave; xe cho rằng do nhu cầu đi lại tăng cao trong dịp nghỉ lễ n&ecirc;n bắt th&ecirc;m kh&aacute;ch tr&ecirc;n dọc đường, thu qu&aacute; quy định 30.000 đồng một người. H&atilde;ng nhận lỗi v&agrave; y&ecirc;u cầu l&aacute;i xe l&agrave;m kiểm điểm.</p>\r\n<p class=\"Normal\">Trao đổi với ph&oacute;ng vi&ecirc;n, trung t&aacute; Vũ Văn Ngoại (Đội ph&oacute; đội CSGT số 12) cho biết, hiện xe bị tạm lưu tại trụ sở Đội để phục vụ điều tra. Trước mắt, Đội lập bi&ecirc;n bản xử phạt nh&agrave; xe do chở vượt số người v&agrave; thu tiền cao (v&eacute; 95.000 nhưng thu của kh&aacute;ch 125.000 đồng).</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3b/be/41/53/hoang-phuong-480.jpg\" alt=\"\" width=\"480\" height=\"360\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Chiếc xe chở qu&aacute; số h&agrave;nh kh&aacute;ch quy định bị tạm giữ.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Trước đ&oacute;, độc giả của&nbsp;<em>VnExpress.net</em>&nbsp;phản &aacute;nh, s&aacute;ng 28/4, xe kh&aacute;ch Ho&agrave;ng Phương xuất bến Mỹ Đ&igrave;nh (H&agrave; Nội) trong t&igrave;nh trạng kh&ocirc;ng c&ograve;n ghế trống. Dọc đường, xe tiếp tục bắt kh&aacute;ch v&agrave; nhồi nh&eacute;t tới gần 90 người, vượt qua tất cả c&aacute;c trạm cảnh s&aacute;t giao th&ocirc;ng từ H&agrave; Nội về Thanh H&oacute;a.</p>', '/uploads/vegetables_fruits_1x.png', 'can-mang-nhiet', '/dich-vu/can-mang-nhiet-35.html', '1', '2013-05-03 16:40:46', '2013-04-29 21:32:54', '1');
INSERT INTO `services` VALUES ('36', 'Nhận in gia công giá rẻ', 'Nữ diễn viên \'Giao lộ định mệnh\' kết hôn cùng chú rể Việt kiều hơn cô hai tuổi. Lễ cưới đẹp như mơ của cả hai diễn ra tại Phan Thiết ngày 28/4.\r\n', '<table class=\"tplCaption\" border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://l.f9.img.vnexpress.net/2013/04/29/tang-bao-quyen-24pg-jpg-1367221691_500x0.jpg\" alt=\"tang-bao-quyen-24pg-jpg-1367221691_500x0\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Gia đ&igrave;nh ch&uacute; rể trao cho mẹ c&ocirc; d&acirc;u (tr&aacute;i) số tiền tượng trưng để tri &acirc;n c&ocirc;ng ơn dưỡng dục cho họ nh&agrave; trai c&oacute; c&ocirc; d&acirc;u xinh, ngoan hiền. Mẹ của Tăng Bảo Quy&ecirc;n đ&atilde; tặng lại m&oacute;n qu&agrave;&nbsp;cho đ&ocirc;i vợ chồng trẻ.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class=\"tplCaption\" border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><br /><img src=\"http://backend.editor.vnexpress.net/kcfinder/upload/images/_private/mailien@vnexpress.net/2013/04/19-jpg-1367226621-500x0-jpg%5B1180086080%5D.jpg\" alt=\"19-jpg-1367226621-500x0-jpg[1180086080].\" width=\"400\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Mẹ chồng nữ diễn vi&ecirc;n rất x&uacute;c động khi gửi lời nhắn nhủ đến c&aacute;c con. B&agrave; cho biết rất hạnh ph&uacute;c khi c&oacute; được con d&acirc;u xinh ngoan như Tăng Bảo Quy&ecirc;n. Ảnh:&nbsp;<em>Long Thủy</em>.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class=\"tplCaption\" border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><br /><img src=\"http://l.f9.img.vnexpress.net/2013/04/29/1-jpg-1367223910-1367224223_500x0.jpg\" alt=\"1-jpg-1367223910-1367224223_500x0.jpg\" width=\"490\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">B&agrave; ngoại ch&uacute; rể (phải) đại diện gia đ&igrave;nh nh&agrave; trai tặng cho c&ocirc; d&acirc;u bộ trang sức bằng ngọc trai sang trọng.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class=\"tplCaption\" border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://l.f9.img.vnexpress.net/2013/04/29/tang-bao-quyen-8-jpg-1367221692_500x0.jpg\" alt=\"tang-bao-quyen-8-jpg-1367221692_500x0.jp\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Tăng Bảo Quy&ecirc;n cho biết, Trần Landon Ng&acirc;n l&agrave; người c&ocirc; cảm thấy b&igrave;nh y&ecirc;n v&agrave; tin tưởng nhất khi được ở b&ecirc;n cạnh. Anh lu&ocirc;n d&agrave;nh cho c&ocirc; những cử chỉ chăm s&oacute;c &acirc;n cần, chu to&agrave;n mọi việc cũng như c&ugrave;ng c&ocirc; giải quyết những kh&oacute; khăn trong cuộc sống.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class=\"tplCaption\" border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://l.f9.img.vnexpress.net/2013/04/29/tang-bao-quyen-25-jpg-1367221692_500x0.jpg\" alt=\"tang-bao-quyen-25-jpg-1367221692_500x0.j\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Những nghi thức cưới của cả hai diễn ra tr&ecirc;n b&atilde;i c&aacute;t trắng b&ecirc;n bờ biển v&agrave; h&agrave;ng dừa r&igrave; r&agrave;o đặc trưng vẻ đẹp của Phan Thiết. Gia đ&igrave;nh hai họ chỉ mời khoảng 80 kh&aacute;ch l&agrave; người nh&agrave;, bạn b&egrave; th&acirc;n thiết c&ugrave;ng về đ&acirc;y tham dự lễ cưới v&agrave; chung vui.</td>\r\n</tr>\r\n</tbody>\r\n</table>', '/uploads/wip_f100_wrecker_textured_1x.jpg', 'nhan-in-gia-cong-gia-re', '/dich-vu/nhan-in-gia-cong-gia-re-36.html', '1', '2013-05-03 16:40:44', '2013-04-29 22:26:55', '1');
INSERT INTO `services` VALUES ('37', 'In offset chuyển nhiệt', 'Ngày 29/4, bác sĩ Nguyễn Bá Hy, Giám đốc Bệnh viện Đa khoa Lâm Đồng xác nhận bệnh nhân Nguyễn Đình Bửu, 53 tuổi, có kết quả xét nghiệm dương tính với cúm A/H1N1. Bệnh nhân đang được cách ly. \r\n', '<p class=\"Normal\"><span>&Ocirc;ng Bửu đang l&agrave; bảo vệ cho một kh&aacute;ch sạn ở Đ&agrave; Lạt.&nbsp;</span><span>Ng&agrave;y 24/4, &ocirc;ng Bửu nhập viện trong t&igrave;nh trạng sức khỏe yếu nhanh, sốt cao, ho k&eacute;o d&agrave;i&hellip; B&aacute;c sĩ Bệnh viện Đa khoa L&acirc;m Đồng theo d&otilde;i v&agrave; li&ecirc;n tục l&agrave;m c&aacute;c &nbsp;x&eacute;t nghiệm, ph&aacute;t hiện bệnh nh&acirc;n bị nhiễm c&uacute;m H1N1.</span></p>\r\n<p class=\"Normal\"><span>Theo b&aacute;c sĩ Hy, hiện bệnh viện đ&atilde; chuyển bệnh nh&acirc;n tới khu c&aacute;ch ly của khoa Nhiệt đới để điều trị. Đến nay, bệnh nh&acirc;n vẫn kh&ocirc;ng c&oacute; dấu hiệu nặng th&ecirc;m nhưng vẫn đang được c&aacute;c b&aacute;c sĩ t&iacute;ch cực theo d&otilde;i, điều trị. Chưa r&otilde; nguồn bệnh l&acirc;y lan cho &ocirc;ng Bửu.</span></p>\r\n<p>C&ugrave;ng thời điểm nhập viện với bệnh nh&acirc;n Bửu, c&oacute; hai bệnh nh&acirc;n kh&aacute;c cũng c&oacute; những biểu hiện tương tự. Qua một thời gian theo d&otilde;i kh&ocirc;ng c&oacute; dấu hiệu nhiễm c&uacute;m A/H1N1, một người đ&atilde; được xuất viện, bệnh nh&acirc;n c&ograve;n lại đang được theo d&otilde;i v&agrave; điều trị.&nbsp;</p>\r\n<p>Bộ Y tế vừa cảnh b&aacute;o c&uacute;m H1N1 đang b&ugrave;ng l&ecirc;n mạnh mẽ với 3 trường hợp tử vong, kể từ đầu năm đến nay.</p>', '/uploads/grandmother-at-a-party_1x.jpg', 'in-offset-chuyen-nhiet', '/dich-vu/in-offset-chuyen-nhiet-37.html', '1', '2013-05-03 16:40:43', '2013-04-30 02:03:09', '1');
INSERT INTO `services` VALUES ('38', 'In decal TP.HCM', '8h15 sáng nay, khi ghi đầy đủ thông tin cá nhân và ký tên vào phía sau hai mảnh rách của tờ vé số trúng thưởng, ông Tùng đã được nhận tiền.\r\n', '<p class=\"Normal\">Tại trụ sở C&ocirc;ng ty Xổ số kiến thiết tỉnh Ki&ecirc;n Giang, n&ocirc;ng d&acirc;n Dương Văn T&ugrave;ng ở x&atilde; Mỹ Kh&aacute;nh, TP Long Xuy&ecirc;n (An Giang) được nữ nh&acirc;n vi&ecirc;n trả thưởng hướng dẫn điền th&ocirc;ng tin c&aacute; nh&acirc;n v&agrave; k&yacute; t&ecirc;n v&agrave;o hai mảnh r&aacute;ch của tờ v&eacute; số tr&uacute;ng giải khuyến kh&iacute;ch trị gi&aacute; 100 triệu đồng. Đ&egrave;n cực t&iacute;m bật l&ecirc;n rọi tờ v&eacute; v&agrave; đối chiếu c&ugrave;i lưu, nh&acirc;n vi&ecirc;n c&ocirc;ng ty x&aacute;c nhận v&eacute; thật.</p>\r\n<p class=\"Normal\"><span style=\"color: #000000;\">Sau khi trừ thuế, &ocirc;ng T&ugrave;ng cầm tr&ecirc;n tay hơn 90 triệu đồng. Số tiền n&agrave;y chủ nh&acirc;n dự định trả nợ khoảng 50 triệu, d&agrave;nh một &iacute;t mua quần &aacute;o mới cho vợ con, c&ograve;n lại t&iacute;ch c&oacute;p để gia đ&igrave;nh sử dụng khi cần thiết.</span><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<div><span style=\"color: #000000;\"><br /></span></div>', '/uploads/icon_fril_1x.png', 'in-decal-tphcm', '/dich-vu/in-decal-tphcm-38.html', '1', '2013-05-03 16:40:42', '2013-04-30 02:07:18', '1');
INSERT INTO `services` VALUES ('39', 'In offset giá rẻ', 'Do gây tai nạn làm 2 người chết và hơn chục nạn nhân bị thương, bác sĩ Trần Anh Huy bị VKSND TP HCM phê chuẩn lệnh bắt giam theo yêu cầu của gia đình bị hại để phục vụ điều tra.\r\n', '<p class=\"Normal\">V&agrave;i th&aacute;ng trước, &ocirc;ng Trần Anh Huy (43 tuổi, b&aacute;c sĩ Bệnh viện Nhi đồng 1) bị TAND TP HCM x&eacute;t xử về tội Vi phạm c&aacute;c quy định về điều khiển giao th&ocirc;ng đường bộ. Theo c&aacute;o trạng, chiều 7/10/2011, khi l&aacute;i xe tr&ecirc;n đường L&yacute; Th&aacute;i Tổ, quận 10, &ocirc;ng Huy g&acirc;y tai nạn đ&acirc;m li&ecirc;n ho&agrave;n v&agrave;o 16 &ocirc;t&ocirc;, xe m&aacute;y l&agrave;m 2 người chết, hơn chục người bị thương.</p>\r\n<p class=\"Normal\">Tự b&agrave;o chữa tại phi&ecirc;n t&ograve;a h&ocirc;m đ&oacute;, &ocirc;ng Huy đưa ra nhiều t&agrave;i liệu cho rằng nguy&ecirc;n nh&acirc;n tai nạn do lỗi kỹ thuật của h&atilde;ng Toyota.</p>\r\n<p class=\"Normal\">C&ograve;n theo đại diện h&atilde;ng xe, kết quả gi&aacute;m định kết luận xe bị lỗi về phần c&ocirc;ng tắc đ&egrave;n chứ kh&ocirc;ng li&ecirc;n quan vụ tai nạn. Kết quả gi&aacute;m định của Ph&acirc;n viện khoa học h&igrave;nh sự Bộ C&ocirc;ng an được chủ tọa c&ocirc;ng bố tại t&ograve;a cho thấy &ocirc;t&ocirc; của &ocirc;ng Huy kh&ocirc;ng hỏng phanh.</p>\r\n<p class=\"Normal\">Trước những quan điểm tr&aacute;i ngược n&agrave;y, HĐXX đ&atilde; ho&atilde;n phi&ecirc;n t&ograve;a, trả hồ sơ điều tra bổ sung để l&agrave;m r&otilde; việc c&oacute; hay kh&ocirc;ng yếu tố lỗi kỹ thuật của xe dẫn đến tai nạn.</p>\r\n<p class=\"Normal\">Ngay sau đ&oacute;, gia đ&igrave;nh c&aacute;c nạn nh&acirc;n c&oacute; đơn gửi cơ quan tố tụng y&ecirc;u cầu bắt giam &ocirc;ng Huy, cho rằng người g&acirc;y tai nạn đặc biệt nghi&ecirc;m trọng m&agrave; kh&ocirc;ng bị bắt giam l&agrave; \"kh&ocirc;ng đ&uacute;ng ph&aacute;p luật\".</p>', '/uploads/thumb_1.jpg', 'in-offset-gia-re', '/dich-vu/in-offset-gia-re-39.html', '1', '2013-05-03 16:40:40', '2013-04-30 02:09:35', '1');
INSERT INTO `services` VALUES ('40', 'In áo thun', 'Từng màn pháo hoa sáng rực trên bầu trời sông Hàn (Đà Nẵng) trong sự háo hức của hàng vạn người dân và du khách. Đêm đầu tiên của cuộc thi trình diễn pháo hoa, ba đội Nga, Việt Nam và Italia đã gây ấn tượng mạnh.\r\n', '<p class=\"Normal\">\"V&ugrave;ng n&agrave;y l&agrave;m ruộng chỉ được một vụ l&uacute;a trong năm, mỗi c&ocirc;ng (1.000 m2) thu hoạch khoảng 20 giạ (tương đương 400 kg) chứ kh&ocirc;ng nhiều. D&agrave;nh dụm được tiền x&acirc;y nh&agrave; mồ khang trang th&igrave; con ch&aacute;u l&agrave;m ăn mau kh&aacute; giả\", con trai cụ Mười Ba chia sẻ.</p>\r\n<p class=\"Normal\">Tương tự, &ocirc;ng T&ocirc; Kiệt (phường 7, TP C&agrave; Mau) đặc biệt quan t&acirc;m đến nơi an nghỉ của người qu&aacute; cố n&ecirc;n 5 năm trước &ocirc;ng t&igrave;m mua thửa đất rộng tr&ecirc;n 5.000 m2 nằm cạnh quốc lộ 1A ở x&atilde; Ph&uacute; Hưng (C&aacute;i Nước, C&agrave; Mau) với gi&aacute; hơn 100 triệu đồng. Khi cha ng&atilde; bệnh qua đời, &ocirc;ng c&ugrave;ng c&aacute;c anh, chị x&acirc;y T&ocirc; - Triệu mộ vi&ecirc;n cho đấng sinh th&agrave;nh tr&ecirc;n 800 triệu đồng. C&aacute;ch đ&oacute; v&agrave;i bước ch&acirc;n, nh&agrave; mộ của ch&aacute;u &ocirc;ng Kiệt cũng đang được x&acirc;y v&agrave;i trăm triệu.</p>', '/uploads/thumb_17.jpg', 'in-ao-thun', '/dich-vu/in-ao-thun-40.html', '1', '2013-05-03 16:40:38', '2013-04-30 02:10:35', '1');

-- ----------------------------
-- Table structure for `settings`
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `key` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `input_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `editable` tinyint(1) NOT NULL DEFAULT '1',
  `weight` int(11) DEFAULT NULL,
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES ('6', 'Site.title', 'Loc Son Company', '', '', '', '1', '1', '');
INSERT INTO `settings` VALUES ('7', 'Site.tagline', '', '', '', 'textarea', '1', '2', '');
INSERT INTO `settings` VALUES ('9', 'Site.status', '1', '', '', 'checkbox', '1', '4', '');
INSERT INTO `settings` VALUES ('12', 'Meta.robots', 'index, follow', '', '', '', '1', '5', '');
INSERT INTO `settings` VALUES ('13', 'Meta.keywords', 'lộc sơn, in ấn, gia công, dịch vụ, in offset, in giá rẽ, công nghệ hiện đại, uy tín, chất lượng', '', '', 'textarea', '1', '6', '');
INSERT INTO `settings` VALUES ('14', 'Meta.description', 'Công ty in ấn Việt in chuyên cung cấp các dịch vụ in ấn, in gia công, in offset giá rẽ với công nghệ hiện đại và chất lượng tốt nhất', '', '', 'textarea', '1', '7', '');
INSERT INTO `settings` VALUES ('15', 'Meta.generator', 'Croogo - Content Management System', '', '', '', '0', '8', '');
INSERT INTO `settings` VALUES ('16', 'Service.akismet_key', '', '', '', '', '1', '10', '');
INSERT INTO `settings` VALUES ('17', 'Service.recaptcha_public_key', '6LekltcSAAAAAL7eNIyZ4o4ANTDqpz53pefVCbks', '', '', '', '1', '11', '');
INSERT INTO `settings` VALUES ('18', 'Service.recaptcha_private_key', '6LekltcSAAAAAOjVh1eBtp5p75FcGMxaH2O5uTlD', '', '', '', '1', '12', '');
INSERT INTO `settings` VALUES ('19', 'Service.akismet_url', '', '', '', '', '1', '9', '');
INSERT INTO `settings` VALUES ('20', 'Site.theme', 'locson', '', '', '', '0', '13', '');
INSERT INTO `settings` VALUES ('21', 'Site.feed_url', '', '', '', '', '0', '14', '');
INSERT INTO `settings` VALUES ('22', 'Reading.nodes_per_page', '5', '', '', '', '1', '15', '');
INSERT INTO `settings` VALUES ('23', 'Writing.wysiwyg', '1', 'Enable WYSIWYG editor', '', 'checkbox', '1', '16', '');
INSERT INTO `settings` VALUES ('24', 'Comment.level', '1', '', 'levels deep (threaded comments)', '', '1', '17', '');
INSERT INTO `settings` VALUES ('25', 'Comment.feed_limit', '10', '', 'number of comments to show in feed', '', '1', '18', '');
INSERT INTO `settings` VALUES ('26', 'Site.locale', 'eng', '', '', 'text', '0', '19', '');
INSERT INTO `settings` VALUES ('27', 'Reading.date_time_format', 'D, M d Y H:i:s', '', '', '', '1', '20', '');
INSERT INTO `settings` VALUES ('28', 'Comment.date_time_format', 'M d, Y', '', '', '', '1', '21', '');
INSERT INTO `settings` VALUES ('29', 'Site.timezone', '0', '', 'zero (0) for GMT', '', '1', '3', '');
INSERT INTO `settings` VALUES ('32', 'Hook.bootstraps', 'Settings,Comments,Contacts,Nodes,Meta,Menus,Users,Blocks,Taxonomy,FileManager,Tinymce,Translate,PlgService,Service,News,Products,Support', '', '', '', '0', '22', '');
INSERT INTO `settings` VALUES ('33', 'Comment.email_notification', '1', 'Enable email notification', '', 'checkbox', '1', '23', '');
INSERT INTO `settings` VALUES ('34', 'Access Control.multiRole', '0', 'Enable Multiple Roles', '', 'checkbox', '1', '24', '');
INSERT INTO `settings` VALUES ('35', 'Access Control.rowLevel', '0', 'Row Level Access Control', '', 'checkbox', '1', '25', '');
INSERT INTO `settings` VALUES ('36', 'Access Control.models', '', 'Models with Row Level Acl', 'Select models to activate Row Level Access Control on', 'multiple', '1', '25', 'multiple=checkbox\roptions={\"Nodes.Node\": \"Node\", \"Blocks.Block\": \"Block\", \"Menus.Menu\": \"Menu\", \"Menus.Link\": \"Link\"}');
INSERT INTO `settings` VALUES ('37', 'Croogo.version', '1.5.0\n', '', '', '', '0', '26', '');
INSERT INTO `settings` VALUES ('38', 'Map.Longtitude', '10.790383', '', '', '', '0', null, '');
INSERT INTO `settings` VALUES ('39', 'Map.Latitude', '106.658229', '', '', '', '0', null, '');
INSERT INTO `settings` VALUES ('40', 'Intro.images', '/uploads/thumb_4.jpg', '', '', '', '0', null, '');
INSERT INTO `settings` VALUES ('42', 'Site.address', '76 CMT8, P17, Q3, Tp.HCM', '', '', '', '0', null, '');
INSERT INTO `settings` VALUES ('43', 'Site.email', 'locson@gmail.com', '', '', '', '0', null, '');
INSERT INTO `settings` VALUES ('44', 'Site.phone', '0192.928.892', '', '', '', '0', null, '');
INSERT INTO `settings` VALUES ('45', 'Site.copyright', 'Copyright &copy 2013 by LocSon Company', '', '', '', '0', null, '');
INSERT INTO `settings` VALUES ('46', 'Product.feature', '46,11,35,36,37,38,39,40,43,50,51,52,53,54,55,56,', '', '', '', '0', null, '');
INSERT INTO `settings` VALUES ('47', 'Site.logo', '/uploads/logo.jpg', '', '', '', '0', null, '');
INSERT INTO `settings` VALUES ('48', 'Site.footerinfo', '<p><b>Cty Cổ Phần Việt In</b></p>\r\n    <p>Địa chỉ: 423/29 Lạc Long Quân, Phường 5, Q.11, TP.HCM</p>\r\n    <p>Điện thoại: 08.3975.6726 - Fax: 08.3975.2451</p>\r\n    <p>Email: <a href=\"mailto:kinhdoanh@congtyvietin.com\">kinhdoanh@congtyvietin.com</a> - <a href=\"mailto:sale@congtyvietin.com\">sale@congtyvietin.com</a></p>', '', '', '', '0', null, '');
INSERT INTO `settings` VALUES ('49', 'Site.headerinfo', '<p>Việt In quan tâm chăm sóc hình ảnh thương hiệu của bạn bởi thương hiệu là tài sản giá trị nhất mà bạn có được sau bao nhiêu khó khăn gây dựng trên thương trường.</p>\r\n<p><strong>Đó là sứ mệnh đầy tự hào của chúng tôi.</strong></p>\r\n<p>Địa chỉ: 423/29 Lạc Long Quân, Phường 5, Q.11, TP.HCM</p>\r\n<p>Hotline: 08.3975.6726 - Fax: 08.3975.2451</p>\r\n', '', '', '', '0', null, '');

-- ----------------------------
-- Table structure for `supports`
-- ----------------------------
DROP TABLE IF EXISTS `supports`;
CREATE TABLE `supports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `yahoo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of supports
-- ----------------------------
INSERT INTO `supports` VALUES ('1', 'Tư vấn 1', 'tuvan1@gmail.com', '2302930293', 'tuvan1', 'tuvan1', '2000-05-01 14:32:37', '2013-05-02 22:53:57', '1');
INSERT INTO `supports` VALUES ('2', 'Tư vấn 2', 'tuvan2@gmail.com', '029302930', 'tuvan2', 'tuvan2', '2013-05-02 22:49:38', '2013-05-02 22:54:07', '1');
INSERT INTO `supports` VALUES ('3', 'Tư vấn 3', 'tuvan3@gmail.com', '092039203', 'tuvan3', 'tuvan3', '2013-05-02 22:52:44', '2013-05-02 22:52:44', '1');
INSERT INTO `supports` VALUES ('5', 'Tư vấn 4', 'tuvan4@gmail.com', '0293092093', 'tuvan4', 'tuvan4', '2013-05-02 22:53:29', '2013-05-02 23:17:43', '1');

-- ----------------------------
-- Table structure for `taxonomies`
-- ----------------------------
DROP TABLE IF EXISTS `taxonomies`;
CREATE TABLE `taxonomies` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `parent_id` int(20) DEFAULT NULL,
  `term_id` int(10) NOT NULL,
  `vocabulary_id` int(10) NOT NULL,
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of taxonomies
-- ----------------------------
INSERT INTO `taxonomies` VALUES ('1', null, '1', '1', '1', '2');
INSERT INTO `taxonomies` VALUES ('2', null, '2', '1', '3', '4');
INSERT INTO `taxonomies` VALUES ('3', null, '3', '2', '1', '2');

-- ----------------------------
-- Table structure for `terms`
-- ----------------------------
DROP TABLE IF EXISTS `terms`;
CREATE TABLE `terms` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of terms
-- ----------------------------
INSERT INTO `terms` VALUES ('1', 'Uncategorized', 'uncategorized', '', '2009-07-22 03:38:43', '2009-07-22 03:34:56');
INSERT INTO `terms` VALUES ('2', 'Announcements', 'announcements', '', '2010-05-16 23:57:06', '2009-07-22 03:45:37');
INSERT INTO `terms` VALUES ('3', 'mytag', 'mytag', '', '2009-08-26 14:42:43', '2009-08-26 14:42:43');

-- ----------------------------
-- Table structure for `types`
-- ----------------------------
DROP TABLE IF EXISTS `types`;
CREATE TABLE `types` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `format_show_author` tinyint(1) NOT NULL DEFAULT '1',
  `format_show_date` tinyint(1) NOT NULL DEFAULT '1',
  `comment_status` int(1) NOT NULL DEFAULT '1',
  `comment_approve` tinyint(1) NOT NULL DEFAULT '1',
  `comment_spam_protection` tinyint(1) NOT NULL DEFAULT '0',
  `comment_captcha` tinyint(1) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8_unicode_ci,
  `plugin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type_alias` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of types
-- ----------------------------
INSERT INTO `types` VALUES ('1', 'Page', 'page', 'A page is a simple method for creating and displaying information that rarely changes, such as an \"About us\" section of a website. By default, a page entry does not allow visitor comments.', '0', '0', '0', '1', '0', '0', '', '', '2009-09-09 00:23:24', '2009-09-02 18:06:27');
INSERT INTO `types` VALUES ('2', 'Blog', 'blog', 'A blog entry is a single post to an online journal, or blog.', '1', '1', '2', '1', '0', '0', '', '', '2009-09-15 12:15:43', '2009-09-02 18:20:44');
INSERT INTO `types` VALUES ('4', 'Node', 'node', 'Default content type.', '1', '1', '2', '1', '0', '0', '', '', '2009-10-06 21:53:15', '2009-09-05 23:51:56');

-- ----------------------------
-- Table structure for `types_vocabularies`
-- ----------------------------
DROP TABLE IF EXISTS `types_vocabularies`;
CREATE TABLE `types_vocabularies` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type_id` int(10) NOT NULL,
  `vocabulary_id` int(10) NOT NULL,
  `weight` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of types_vocabularies
-- ----------------------------
INSERT INTO `types_vocabularies` VALUES ('24', '4', '1', null);
INSERT INTO `types_vocabularies` VALUES ('25', '4', '2', null);
INSERT INTO `types_vocabularies` VALUES ('30', '2', '1', null);
INSERT INTO `types_vocabularies` VALUES ('31', '2', '2', null);

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `username` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activation_key` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8_unicode_ci,
  `timezone` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '1', 'admin', '2279c8b945de6a4d23b15124148d8bb5d5173a71', 'admin', '', null, 'caec65bf60adf96fe7da3ca7783ebbf7', null, null, '0', '1', '2013-04-22 18:13:37', '2013-04-22 18:13:37');

-- ----------------------------
-- Table structure for `vocabularies`
-- ----------------------------
DROP TABLE IF EXISTS `vocabularies`;
CREATE TABLE `vocabularies` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `multiple` tinyint(1) NOT NULL DEFAULT '0',
  `tags` tinyint(1) NOT NULL DEFAULT '0',
  `plugin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vocabulary_alias` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of vocabularies
-- ----------------------------
INSERT INTO `vocabularies` VALUES ('1', 'Categories', 'categories', '', '0', '1', '0', '', '1', '2010-05-17 20:03:11', '2009-07-22 02:16:21');
INSERT INTO `vocabularies` VALUES ('2', 'Tags', 'tags', '', '0', '1', '0', '', '2', '2010-05-17 20:03:11', '2009-07-22 02:16:34');
