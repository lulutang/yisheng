/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50505
Source Host           : 127.0.0.1:3306
Source Database       : tpadmin

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-08-02 16:26:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tp_admin_access`
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_access`;
CREATE TABLE `tp_admin_access` (
  `role_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `node_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pid` smallint(6) unsigned NOT NULL DEFAULT '0',
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tp_admin_access
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_admin_group`
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_group`;
CREATE TABLE `tp_admin_group` (
  `id` smallint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '' COMMENT 'icon小图标',
  `sort` int(11) unsigned NOT NULL DEFAULT '50',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tp_admin_group
-- ----------------------------
INSERT INTO `tp_admin_group` VALUES ('1', '系统管理', '&#xe61d;', '2', '1', '', '0', '1450752856', '1481180175');
INSERT INTO `tp_admin_group` VALUES ('2', '工具', '&#xe616;', '1', '1', '', '0', '1501041684', '1501041746');
INSERT INTO `tp_admin_group` VALUES ('3', '数据列表', '&#xe616;', '3', '1', '', '0', '1450752856', '1450752856');

-- ----------------------------
-- Table structure for `tp_admin_node`
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_node`;
CREATE TABLE `tp_admin_node` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `group_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '节点类型，1-控制器 | 0-方法',
  `sort` smallint(6) unsigned NOT NULL DEFAULT '50',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `level` (`level`),
  KEY `pid` (`pid`),
  KEY `status` (`status`),
  KEY `name` (`name`),
  KEY `isdelete` (`isdelete`),
  KEY `sort` (`sort`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tp_admin_node
-- ----------------------------
INSERT INTO `tp_admin_node` VALUES ('1', '0', '1', 'Admin', '后台管理', '后台管理，不可更改', '1', '1', '1', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('2', '1', '1', 'AdminGroup', '分组管理', ' ', '2', '1', '1', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('3', '1', '1', 'AdminNode', '节点管理', ' ', '2', '1', '2', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('4', '1', '1', 'AdminRole', '角色管理', ' ', '2', '1', '3', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('5', '1', '1', 'AdminUser', '用户管理', '', '2', '1', '4', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('6', '1', '0', 'Index', '首页', '', '2', '1', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('7', '6', '0', 'welcome', '欢迎页', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('8', '6', '0', 'index', '未定义', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('9', '1', '2', 'Generate', '代码自动生成', '', '2', '1', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('10', '1', '2', 'Demo/excel', 'Excel一键导出', '', '2', '0', '2', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('11', '1', '2', 'Demo/download', '下载', '', '2', '0', '3', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('12', '1', '2', 'Demo/downloadImage', '远程图片下载', '', '2', '0', '4', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('13', '1', '2', 'Demo/mail', '邮件发送', '', '2', '0', '5', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('14', '1', '2', 'Demo/qiniu', '七牛上传', '', '2', '0', '6', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('15', '1', '2', 'Demo/hashids', 'ID加密', '', '2', '0', '7', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('16', '1', '2', 'Demo/layer', '丰富弹层', '', '2', '0', '8', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('17', '1', '2', 'Demo/tableFixed', '表格溢出', '', '2', '0', '9', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('18', '1', '2', 'Demo/ueditor', '百度编辑器', '', '2', '0', '10', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('19', '1', '2', 'Demo/imageUpload', '图片上传', '', '2', '0', '11', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('20', '1', '2', 'Demo/qrcode', '二维码生成', '', '2', '0', '12', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('21', '1', '1', 'NodeMap', '节点图', '', '2', '1', '5', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('22', '1', '1', 'WebLog', '操作日志', '', '2', '1', '6', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('23', '1', '1', 'LoginLog', '登录日志', '', '2', '1', '7', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('59', '1', '2', 'one.two.three.Four/index', '多级节点', '', '2', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('24', '23', '0', 'index', '首页', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('25', '22', '0', 'index', '列表', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('26', '22', '0', 'detail', '详情', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('27', '21', '0', 'load', '自动导入', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('28', '21', '0', 'index', '首页', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('29', '5', '0', 'add', '添加', '', '3', '0', '51', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('30', '21', '0', 'edit', '编辑', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('31', '21', '0', 'deleteForever', '永久删除', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('32', '9', '0', 'index', '首页', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('33', '9', '0', 'generate', '生成方法', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('34', '5', '0', 'password', '修改密码', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('35', '5', '0', 'index', '首页', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('36', '5', '0', 'add', '添加', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('37', '5', '0', 'edit', '编辑', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('38', '4', '0', 'user', '用户列表', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('39', '4', '0', 'access', '授权', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('40', '4', '0', 'index', '首页', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('41', '4', '0', 'add', '添加', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('42', '4', '0', 'edit', '编辑', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('43', '4', '0', 'forbid', '默认禁用操作', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('44', '4', '0', 'resume', '默认恢复操作', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('45', '3', '0', 'load', '节点快速导入测试', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('46', '3', '0', 'index', '首页', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('47', '3', '0', 'add', '添加', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('48', '3', '0', 'edit', '编辑', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('49', '3', '0', 'forbid', '默认禁用操作', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('50', '3', '0', 'resume', '默认恢复操作', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('51', '2', '0', 'index', '首页', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('52', '2', '0', 'add', '添加', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('53', '2', '0', 'edit', '编辑', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('54', '2', '0', 'forbid', '默认禁用操作', '', '3', '0', '51', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('55', '2', '0', 'resume', '默认恢复操作', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('56', '1', '2', 'one', '一级菜单', '', '2', '1', '13', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('60', '56', '2', 'two', '二级', '', '3', '1', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('61', '60', '2', 'three', '三级菜单', '', '4', '1', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('62', '61', '2', 'Four', '四级菜单', '', '5', '1', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('67', '1', '3', 'yisheng', '医生列表', '', '1', '1', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('68', '1', '3', 'huanzhe', '患者列表', '', '2', '1', '50', '1', '0');

-- ----------------------------
-- Table structure for `tp_admin_node_load`
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_node_load`;
CREATE TABLE `tp_admin_node_load` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '名称',
  `status` tinyint(4) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='节点快速导入';

-- ----------------------------
-- Records of tp_admin_node_load
-- ----------------------------
INSERT INTO `tp_admin_node_load` VALUES ('4', '编辑', 'edit', '1');
INSERT INTO `tp_admin_node_load` VALUES ('5', '添加', 'add', '1');
INSERT INTO `tp_admin_node_load` VALUES ('6', '首页', 'index', '1');
INSERT INTO `tp_admin_node_load` VALUES ('7', '删除', 'delete', '1');

-- ----------------------------
-- Table structure for `tp_admin_role`
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_role`;
CREATE TABLE `tp_admin_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '名称',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parentId` (`pid`),
  KEY `status` (`status`),
  KEY `isdelete` (`isdelete`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tp_admin_role
-- ----------------------------
INSERT INTO `tp_admin_role` VALUES ('1', '0', '领导组', ' ', '1', '0', '1208784792', '1254325558');
INSERT INTO `tp_admin_role` VALUES ('2', '0', '网编组', ' ', '0', '0', '1215496283', '1454049929');

-- ----------------------------
-- Table structure for `tp_admin_role_user`
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_role_user`;
CREATE TABLE `tp_admin_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of tp_admin_role_user
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_admin_user`
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_user`;
CREATE TABLE `tp_admin_user` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `account` char(32) NOT NULL DEFAULT '',
  `realname` varchar(255) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `last_login_time` int(11) unsigned NOT NULL DEFAULT '0',
  `last_login_ip` char(15) NOT NULL DEFAULT '',
  `login_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '',
  `mobile` char(11) NOT NULL DEFAULT '',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '50',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `accountpassword` (`account`,`password`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tp_admin_user
-- ----------------------------
INSERT INTO `tp_admin_user` VALUES ('1', 'admin', '超级管理员', 'e10adc3949ba59abbe56e057f20f883e', '1501490135', '127.0.0.1', '389', 'tianpian0805@gmail.com', '13121126169', '我是超级管理员', '1', '0', '1222907803', '1451033528');
INSERT INTO `tp_admin_user` VALUES ('2', 'demo', '测试', 'e10adc3949ba59abbe56e057f20f883e', '1481206367', '127.0.0.1', '5', '', '', '', '1', '0', '1476777133', '1477399793');

-- ----------------------------
-- Table structure for `tp_file`
-- ----------------------------
DROP TABLE IF EXISTS `tp_file`;
CREATE TABLE `tp_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '文件类型，1-image | 2-file',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '文件名',
  `original` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `domain` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL DEFAULT '',
  `size` int(10) unsigned NOT NULL DEFAULT '0',
  `mtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_file
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_login_log`
-- ----------------------------
DROP TABLE IF EXISTS `tp_login_log`;
CREATE TABLE `tp_login_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `login_ip` char(15) NOT NULL DEFAULT '',
  `login_location` varchar(255) NOT NULL DEFAULT '',
  `login_browser` varchar(255) NOT NULL DEFAULT '',
  `login_os` varchar(255) NOT NULL DEFAULT '',
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_login_log
-- ----------------------------
INSERT INTO `tp_login_log` VALUES ('1', '1', '127.0.0.1', '本机地址 本机地址  ', 'Firefox(54.0)', 'Windows 10', '2017-07-17 15:10:10');
INSERT INTO `tp_login_log` VALUES ('2', '1', '127.0.0.1', '本机地址 本机地址  ', 'Chrome(59.0.3071.86)', 'Windows 10', '2017-07-27 17:23:23');
INSERT INTO `tp_login_log` VALUES ('3', '1', '127.0.0.1', '本机地址 本机地址  ', 'Firefox(54.0)', 'Windows 10', '2017-07-27 17:47:00');
INSERT INTO `tp_login_log` VALUES ('4', '1', '127.0.0.1', '本机地址 本机地址  ', 'Firefox(54.0)', 'Windows 10', '2017-07-31 16:35:35');

-- ----------------------------
-- Table structure for `tp_node_map`
-- ----------------------------
DROP TABLE IF EXISTS `tp_node_map`;
CREATE TABLE `tp_node_map` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(255) NOT NULL DEFAULT '' COMMENT '模块',
  `controller` varchar(255) NOT NULL DEFAULT '' COMMENT '控制器',
  `action` varchar(255) NOT NULL DEFAULT '' COMMENT '方法',
  `method` char(6) NOT NULL DEFAULT '' COMMENT '请求方式',
  `comment` varchar(255) NOT NULL DEFAULT '' COMMENT '节点图描述',
  PRIMARY KEY (`id`),
  KEY `map` (`method`,`module`,`controller`,`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='节点图';

-- ----------------------------
-- Records of tp_node_map
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_one_two_three_four`
-- ----------------------------
DROP TABLE IF EXISTS `tp_one_two_three_four`;
CREATE TABLE `tp_one_two_three_four` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '四级控制器主键',
  `field1` varchar(255) DEFAULT NULL COMMENT '字段一',
  `option` varchar(255) DEFAULT NULL COMMENT '选填',
  `select` varchar(255) DEFAULT NULL COMMENT '下拉框',
  `radio` varchar(255) DEFAULT NULL COMMENT '单选',
  `checkbox` varchar(255) DEFAULT NULL COMMENT '复选框',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `textarea` varchar(255) DEFAULT NULL COMMENT '文本域',
  `date` varchar(255) DEFAULT NULL COMMENT '日期',
  `mobile` varchar(255) DEFAULT NULL COMMENT '手机号',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `sort` smallint(5) DEFAULT '50' COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态，1-正常 | 0-禁用',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '删除状态，1-删除 | 0-正常',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `sort` (`sort`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='四级控制器';

-- ----------------------------
-- Records of tp_one_two_three_four
-- ----------------------------
INSERT INTO `tp_one_two_three_four` VALUES ('1', 'yuan1994', 'tpadmin', '2', '1', null, '2222', 'https://github.com/yuan1994/tpadmin', '2016-12-07', '13012345678', 'tianpian0805@gmail.com', '50', '1', '0', '1481947278', '1481947353');

-- ----------------------------
-- Table structure for `tp_pnjs`
-- ----------------------------
DROP TABLE IF EXISTS `tp_pnjs`;
CREATE TABLE `tp_pnjs` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(9) NOT NULL,
  `username` char(50) NOT NULL DEFAULT '',
  `day` char(11) DEFAULT '0',
  `fangshi` char(15) DEFAULT '',
  `tizhong` varchar(10) DEFAULT '0',
  `key1` varchar(60) DEFAULT '50' COMMENT '是否下发验证码验证成功',
  `val1` varchar(60) DEFAULT '0',
  `val11` varchar(60) DEFAULT '0',
  `allday` varchar(20) DEFAULT NULL,
  `notpn` varchar(20) DEFAULT NULL,
  `pn` varchar(20) DEFAULT NULL,
  `anjisuan` varchar(20) DEFAULT NULL,
  `zhifangru` varchar(20) DEFAULT NULL,
  `pnna` varchar(20) DEFAULT NULL,
  `pnk` varchar(20) DEFAULT NULL,
  `pntime` varchar(20) DEFAULT NULL,
  `pnsudu` varchar(20) DEFAULT NULL,
  `pntangsu` varchar(20) DEFAULT NULL,
  `key2` varchar(20) DEFAULT NULL,
  `val2` varchar(20) DEFAULT NULL,
  `key3` varchar(20) DEFAULT NULL,
  `val3` varchar(20) DEFAULT NULL,
  `key4` varchar(20) DEFAULT NULL,
  `val4` varchar(20) DEFAULT NULL,
  `key5` varchar(20) DEFAULT NULL,
  `val5` varchar(20) DEFAULT NULL,
  `key6` varchar(20) DEFAULT NULL,
  `val6` varchar(20) DEFAULT NULL,
  `key7` varchar(20) DEFAULT NULL,
  `val7` varchar(20) DEFAULT NULL,
  `lvna` varchar(20) DEFAULT NULL,
  `lvk` varchar(20) DEFAULT NULL,
  `tangnl` varchar(20) DEFAULT NULL,
  `aanl` varchar(20) DEFAULT NULL,
  `fatnl` varchar(20) DEFAULT NULL,
  `nainl` varchar(20) DEFAULT NULL,
  `pnnl` varchar(20) DEFAULT NULL,
  `zongnl` varchar(20) DEFAULT NULL,
  `shentouya` varchar(20) DEFAULT NULL,
  `tangnudu` varchar(20) DEFAULT NULL,
  `zhangli` varchar(20) DEFAULT NULL,
  `anjisuan1` varchar(20) DEFAULT NULL,
  `zhifangru1` varchar(20) DEFAULT NULL,
  `te20` varchar(20) DEFAULT NULL,
  `te21` varchar(20) DEFAULT NULL,
  `te22` varchar(20) DEFAULT NULL,
  `te23` varchar(20) DEFAULT NULL,
  `add_time` int(11) DEFAULT NULL,
  `ip` varchar(40) DEFAULT NULL,
  `country` varchar(40) DEFAULT NULL,
  `province` varchar(40) DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tp_pnjs
-- ----------------------------
INSERT INTO `tp_pnjs` VALUES ('4', '3', 'tangl', '1天', '外周静脉', 'tangl', '足月儿奶', '1', 'q3h', '1', '1', '-8.0', '0', '0', '1', '1', '1', '-8.0', '1', '50', '1.2', '5', '-10.7', '', '1.0', '', '1.0', '6', '', '20', '', '-0.3', '-0.2', '86.7%', '0.0%', '0.0%', '5.4', '0.3', '5.7', '154.3', '-0.8%', '1/3', '', '', '', '', '', '', '1500974962', null, null, null, null);
INSERT INTO `tp_pnjs` VALUES ('5', '3', 'tangll', '1天', '中心静脉', 'tangll', '足月儿奶', '11', 'q3h', '12', '12', '692.0', '2.5', '1.5', '12', '12', '12', '57.7', '12', '50', '1632.5', '5', '-4920.4', '', '66.0', '', '26.4', '6', '2750.0', '20', '495.0', '463.3', '20.8', '59.5%', '17.2%', '23.3%', '59.0', '3831.9', '59.0', '8891.4', '82.4%', '1/', '2.5', '1.5', '132.0', '26.4', '', '', '1500975395', null, null, null, null);
INSERT INTO `tp_pnjs` VALUES ('6', '3', 'tangll', '2天', '外周静脉', 'tangll', '足月儿奶', '12', 'q3h', '1', '1', '-31.0', '1', '1.5', '12', '12', '1', '-31.0', '1', '50', '75.6', '5', '-676.6', '', '66.0', '', '26.4', '6', '-15.5', '20', '495.0', '-1.0', '-0.9', '1.8%', '-0.4%', '98.6%', '64.3', '903.2', '14.7', '-4986.3', '-12.8%', '1/3', '-0.0', '1.5', '', '', '', '', '1501036526', '127.0.0.1', null, null, null);
INSERT INTO `tp_pnjs` VALUES ('7', '3', 'tangll', '3天', '外周静脉', 'tangll', '足月儿奶', '12', 'q3h', '1', '1', '-31.0', '1', '1.5', '12', '12', '1', '-31.0', '1', '50', '75.6', '5', '-676.6', '', '66.0', '', '26.4', '6', '-15.5', '20', '495.0', '-1.0', '-0.9', '1.8%', '-0.4%', '98.6%', '64.3', '903.2', '14.7', '-4986.3', '-12.8%', '1/3', '-0.0', '1.5', '', '', '', '', '1501036539', '127.0.0.1', null, null, null);
INSERT INTO `tp_pnjs` VALUES ('8', '3', 'tangll', '4天', '外周静脉', 'tangll', '足月儿奶', '12', 'q3h', '1', '1', '-31.0', '1', '1.5', '12', '12', '1', '-31.0', '1', '50', '75.6', '5', '-676.6', '', '66.0', '', '26.4', '6', '-15.5', '20', '495.0', '-1.0', '-0.9', '1.8%', '-0.4%', '98.6%', '64.3', '903.2', '14.7', '-4986.3', '-12.8%', '1/3', '-0.0', '1.5', '', '', '', '', '1501036544', '127.0.0.1', null, null, null);
INSERT INTO `tp_pnjs` VALUES ('9', '3', 'tangll', '5天', '外周静脉', 'tangll', '足月儿奶', '12', 'q3h', '1', '1', '-31.0', '1', '1.5', '12', '12', '1', '-31.0', '1', '50', '75.6', '5', '-676.6', '', '66.0', '', '26.4', '6', '-15.5', '20', '495.0', '-1.0', '-0.9', '1.8%', '-0.4%', '98.6%', '64.3', '903.2', '14.7', '-4986.3', '-12.8%', '1/3', '-0.0', '1.5', '', '', '', '', '1501036549', '127.0.0.1', null, null, null);
INSERT INTO `tp_pnjs` VALUES ('10', '3', 'tangll', '6天', '外周静脉', 'tangll', '足月儿奶', '12', 'q3h', '1', '1', '-31.0', '1', '1.5', '12', '12', '1', '-31.0', '1', '50', '75.6', '5', '-676.6', '', '66.0', '', '26.4', '6', '-15.5', '20', '495.0', '-1.0', '-0.9', '1.8%', '-0.4%', '98.6%', '64.3', '903.2', '14.7', '-4986.3', '-12.8%', '1/3', '-0.0', '1.5', '', '', '', '', '1501036554', '127.0.0.1', null, null, null);
INSERT INTO `tp_pnjs` VALUES ('11', '3', 'tangll', '7天', '外周静脉', 'tangll', '足月儿奶', '12', 'q3h', '1', '1', '-31.0', '1', '1.5', '12', '12', '1', '-31.0', '1', '50', '75.6', '5', '-676.6', '', '66.0', '', '26.4', '6', '-15.5', '20', '495.0', '-1.0', '-0.9', '1.8%', '-0.4%', '98.6%', '64.3', '903.2', '14.7', '-4986.3', '-12.8%', '1/3', '-0.0', '1.5', '', '', '', '', '1501036558', '127.0.0.1', null, null, null);
INSERT INTO `tp_pnjs` VALUES ('12', '3', 'tanglll', '1天', '中心静脉', '45', '足月儿奶', '123', 'q3h', '1', '1', '-940.0', '1', '1', '1', '2', '1', '-940.0', '1', '50', '217.3', '5', '-2119.3', '', '45.0', '', '18.0', '6.74', '642.9', '30', '150.0', '26.3', '-28.2', '1.8%', '30.2%', '68.0%', '659.3', '595.8', '27.9', '-107.0', '-0.3%', '1/-4', '1.0', '1.0', '90.0', '18.0', '', '-940.0', '1501041123', '127.0.0.1', '中国', '北京', '北京');
INSERT INTO `tp_pnjs` VALUES ('13', '3', 'tanglll', '2天', '中心静脉', '45', '足月儿奶', '123', 'q3h', '1', '1', '-940.0', '1', '1', '1', '2', '1', '-940.0', '1', '50', '217.3', '5', '-2119.3', '', '45.0', '', '18.0', '6.74', '642.9', '30', '150.0', '26.3', '-28.2', '1.8%', '30.2%', '68.0%', '659.3', '595.8', '27.9', '-107.0', '-0.3%', '1/-4', '1.0', '1.0', '90.0', '18.0', '', '-940.0', '1501041129', '127.0.0.1', '中国', '北京', '北京');
INSERT INTO `tp_pnjs` VALUES ('14', '3', 'tanglll', '3天', '中心静脉', '45', '足月儿奶', '123', 'q3h', '1', '1', '-940.0', '1', '1', '1', '2', '1', '-940.0', '1', '50', '217.3', '5', '-2119.3', '', '45.0', '', '18.0', '6.74', '642.9', '30', '150.0', '26.3', '-28.2', '1.8%', '30.2%', '68.0%', '659.3', '595.8', '27.9', '-107.0', '-0.3%', '1/-4', '1.0', '1.0', '90.0', '18.0', '', '-940.0', '1501041134', '127.0.0.1', '中国', '北京', '北京');

-- ----------------------------
-- Table structure for `tp_send_code`
-- ----------------------------
DROP TABLE IF EXISTS `tp_send_code`;
CREATE TABLE `tp_send_code` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `mobile` char(11) NOT NULL DEFAULT '',
  `code` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '50' COMMENT '是否验证1已验证',
  `use_time` int(11) unsigned NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tp_send_code
-- ----------------------------
INSERT INTO `tp_send_code` VALUES ('1', '13121126169', '1500275410', '1', '0', '1222907803');
INSERT INTO `tp_send_code` VALUES ('2', '', '1481206367', '1', '0', '1476777133');
INSERT INTO `tp_send_code` VALUES ('3', '18811216533', '237054', '0', '0', '1500886661');
INSERT INTO `tp_send_code` VALUES ('4', '18811216533', '781124', '0', '0', '1500887018');
INSERT INTO `tp_send_code` VALUES ('5', '18811216533', '766952', '0', '0', '1500888728');
INSERT INTO `tp_send_code` VALUES ('6', '18811216533', '644702', '0', '0', '1500888789');
INSERT INTO `tp_send_code` VALUES ('7', '18811216533', '524099', '0', '0', '1500888916');
INSERT INTO `tp_send_code` VALUES ('8', '18811216533', '189373', '0', '0', '1500888937');
INSERT INTO `tp_send_code` VALUES ('9', '18811216533', '196432', '0', '0', '1500889064');
INSERT INTO `tp_send_code` VALUES ('10', '18811216533', '614270', '0', '0', '1500889068');
INSERT INTO `tp_send_code` VALUES ('11', '18811216533', '638247', '0', '0', '1500889113');
INSERT INTO `tp_send_code` VALUES ('12', '18811216533', '622290', '0', '0', '1500890430');
INSERT INTO `tp_send_code` VALUES ('13', '18811216533', '556179', '0', '0', '1500892806');
INSERT INTO `tp_send_code` VALUES ('14', '18811216533', '761102', '0', '0', '1500892872');
INSERT INTO `tp_send_code` VALUES ('15', '18811216533', '795462', '0', '0', '1500894790');
INSERT INTO `tp_send_code` VALUES ('16', '18811216533', '832376', '0', '0', '1500895715');
INSERT INTO `tp_send_code` VALUES ('17', '18811216533', '153997', '0', '0', '1500895765');
INSERT INTO `tp_send_code` VALUES ('18', '18811216533', '783239', '0', '0', '1500895792');
INSERT INTO `tp_send_code` VALUES ('19', '18811216533', '918096', '0', '0', '1500895857');
INSERT INTO `tp_send_code` VALUES ('20', '18811216533', '371005', '0', '0', '1500895937');
INSERT INTO `tp_send_code` VALUES ('21', '18811216533', '943447', '0', '0', '1500895988');
INSERT INTO `tp_send_code` VALUES ('22', '18811216533', '537750', '0', '0', '1500896142');
INSERT INTO `tp_send_code` VALUES ('23', '18811216533', '650717', '0', '0', '1500896181');
INSERT INTO `tp_send_code` VALUES ('24', '18811216533', '687548', '1', '0', '1500896193');
INSERT INTO `tp_send_code` VALUES ('25', '18811216533', '694635', '1', '0', '1501209456');
INSERT INTO `tp_send_code` VALUES ('26', '18811216533', '630364', '0', '0', '1501213457');
INSERT INTO `tp_send_code` VALUES ('27', '18811216533', '676974', '0', '0', '1501213467');
INSERT INTO `tp_send_code` VALUES ('28', '18811216533', '455847', '0', '0', '1501213489');
INSERT INTO `tp_send_code` VALUES ('29', '18811216533', '582656', '0', '0', '1501213494');
INSERT INTO `tp_send_code` VALUES ('30', '18811216533', '440850', '0', '0', '1501213696');

-- ----------------------------
-- Table structure for `tp_user`
-- ----------------------------
DROP TABLE IF EXISTS `tp_user`;
CREATE TABLE `tp_user` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `mobile` char(11) NOT NULL DEFAULT '',
  `last_login_time` int(11) unsigned NOT NULL DEFAULT '0',
  `last_login_ip` char(15) NOT NULL DEFAULT '',
  `login_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '50' COMMENT '是否下发验证码验证成功',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `country` varchar(40) DEFAULT NULL,
  `province` varchar(40) DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tp_user
-- ----------------------------
INSERT INTO `tp_user` VALUES ('1', '13121126169', '1500275410', '127.0.0.1', '386', '1', '0', '1222907803', null, null, null);
INSERT INTO `tp_user` VALUES ('2', '', '1481206367', '127.0.0.1', '5', '1', '0', '1476777133', null, null, null);
INSERT INTO `tp_user` VALUES ('3', '18811216533', '1501209480', '127.0.0.1', '12', '0', '0', '1500894714', '本地', '本地', '本地');

-- ----------------------------
-- Table structure for `tp_user_login_log`
-- ----------------------------
DROP TABLE IF EXISTS `tp_user_login_log`;
CREATE TABLE `tp_user_login_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `login_ip` char(15) NOT NULL DEFAULT '',
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `country` varchar(40) DEFAULT NULL,
  `province` varchar(40) DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_user_login_log
-- ----------------------------
INSERT INTO `tp_user_login_log` VALUES ('1', '1', '127.0.0.1', '2017-07-17 15:10:10', null, null, null, null);
INSERT INTO `tp_user_login_log` VALUES ('2', '3', '127.0.0.1', '2017-07-27 17:50:59', '本地', '本地', '本地', '18811216533');
INSERT INTO `tp_user_login_log` VALUES ('3', '3', '127.0.0.1', '2017-07-28 10:38:00', '本地', '本地', '本地', null);

-- ----------------------------
-- Table structure for `tp_web_log_001`
-- ----------------------------
DROP TABLE IF EXISTS `tp_web_log_001`;
CREATE TABLE `tp_web_log_001` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `uid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `ip` char(15) NOT NULL DEFAULT '' COMMENT '访客ip',
  `location` varchar(255) NOT NULL DEFAULT '' COMMENT '访客地址',
  `os` varchar(255) NOT NULL DEFAULT '' COMMENT '操作系统',
  `browser` varchar(255) NOT NULL DEFAULT '' COMMENT '浏览器',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT 'url',
  `module` varchar(255) NOT NULL DEFAULT '' COMMENT '模块',
  `controller` varchar(255) NOT NULL DEFAULT '' COMMENT '控制器',
  `action` varchar(255) NOT NULL DEFAULT '' COMMENT '方法',
  `method` char(6) NOT NULL DEFAULT '' COMMENT '请求方式',
  `data` text COMMENT '请求的param数据，serialize后的',
  `create_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `ip` (`ip`),
  KEY `create_at` (`create_at`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=1210 DEFAULT CHARSET=utf8 COMMENT='网站日志';

-- ----------------------------
-- Records of tp_web_log_001
-- ----------------------------
INSERT INTO `tp_web_log_001` VALUES ('1', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1500275265');
INSERT INTO `tp_web_log_001` VALUES ('2', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1500275265');
INSERT INTO `tp_web_log_001` VALUES ('3', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/pub/checklogin.html', 'admin', 'Pub', 'checklogin', 'POST', 'a:3:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"dn5e\";}', '1500275410');
INSERT INTO `tp_web_log_001` VALUES ('4', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1500275411');
INSERT INTO `tp_web_log_001` VALUES ('5', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1500275411');
INSERT INTO `tp_web_log_001` VALUES ('6', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1500278385');
INSERT INTO `tp_web_log_001` VALUES ('7', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1500278385');
INSERT INTO `tp_web_log_001` VALUES ('8', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1500278414');
INSERT INTO `tp_web_log_001` VALUES ('9', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1500278415');
INSERT INTO `tp_web_log_001` VALUES ('10', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1500278468');
INSERT INTO `tp_web_log_001` VALUES ('11', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1500278469');
INSERT INTO `tp_web_log_001` VALUES ('12', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1500278484');
INSERT INTO `tp_web_log_001` VALUES ('13', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1500278485');
INSERT INTO `tp_web_log_001` VALUES ('14', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1500278497');
INSERT INTO `tp_web_log_001` VALUES ('15', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1500278498');
INSERT INTO `tp_web_log_001` VALUES ('16', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500517365');
INSERT INTO `tp_web_log_001` VALUES ('17', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500519905');
INSERT INTO `tp_web_log_001` VALUES ('18', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500520019');
INSERT INTO `tp_web_log_001` VALUES ('19', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1500863180');
INSERT INTO `tp_web_log_001` VALUES ('20', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1500863180');
INSERT INTO `tp_web_log_001` VALUES ('21', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500863253');
INSERT INTO `tp_web_log_001` VALUES ('22', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/index', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500863271');
INSERT INTO `tp_web_log_001` VALUES ('23', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1500863317');
INSERT INTO `tp_web_log_001` VALUES ('24', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1500863318');
INSERT INTO `tp_web_log_001` VALUES ('25', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500863323');
INSERT INTO `tp_web_log_001` VALUES ('26', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500863840');
INSERT INTO `tp_web_log_001` VALUES ('27', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500863942');
INSERT INTO `tp_web_log_001` VALUES ('28', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500864097');
INSERT INTO `tp_web_log_001` VALUES ('29', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500864148');
INSERT INTO `tp_web_log_001` VALUES ('30', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500864213');
INSERT INTO `tp_web_log_001` VALUES ('31', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500864217');
INSERT INTO `tp_web_log_001` VALUES ('32', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500864279');
INSERT INTO `tp_web_log_001` VALUES ('33', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500864281');
INSERT INTO `tp_web_log_001` VALUES ('34', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500864283');
INSERT INTO `tp_web_log_001` VALUES ('35', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500864829');
INSERT INTO `tp_web_log_001` VALUES ('36', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500864831');
INSERT INTO `tp_web_log_001` VALUES ('37', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500864843');
INSERT INTO `tp_web_log_001` VALUES ('38', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500864878');
INSERT INTO `tp_web_log_001` VALUES ('39', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500865509');
INSERT INTO `tp_web_log_001` VALUES ('40', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pn', 'home', 'Index', 'pn', 'GET', 'a:0:{}', '1500865522');
INSERT INTO `tp_web_log_001` VALUES ('41', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pn', 'home', 'Index', 'pn', 'GET', 'a:0:{}', '1500865676');
INSERT INTO `tp_web_log_001` VALUES ('42', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pn', 'home', 'Index', 'pn', 'GET', 'a:0:{}', '1500865685');
INSERT INTO `tp_web_log_001` VALUES ('43', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500865886');
INSERT INTO `tp_web_log_001` VALUES ('44', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500865888');
INSERT INTO `tp_web_log_001` VALUES ('45', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500865889');
INSERT INTO `tp_web_log_001` VALUES ('46', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500866304');
INSERT INTO `tp_web_log_001` VALUES ('47', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500866305');
INSERT INTO `tp_web_log_001` VALUES ('48', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1500866313');
INSERT INTO `tp_web_log_001` VALUES ('49', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500866317');
INSERT INTO `tp_web_log_001` VALUES ('50', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pn.html', 'home', 'Index', 'pn', 'GET', 'a:0:{}', '1500866318');
INSERT INTO `tp_web_log_001` VALUES ('51', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500866321');
INSERT INTO `tp_web_log_001` VALUES ('52', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1500866322');
INSERT INTO `tp_web_log_001` VALUES ('53', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500866324');
INSERT INTO `tp_web_log_001` VALUES ('54', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500866327');
INSERT INTO `tp_web_log_001` VALUES ('55', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/ywjs', 'home', 'Index', 'ywjs', 'GET', 'a:0:{}', '1500866329');
INSERT INTO `tp_web_log_001` VALUES ('56', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500867288');
INSERT INTO `tp_web_log_001` VALUES ('57', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500867289');
INSERT INTO `tp_web_log_001` VALUES ('58', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1500867291');
INSERT INTO `tp_web_log_001` VALUES ('59', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500867297');
INSERT INTO `tp_web_log_001` VALUES ('60', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pn.html', 'home', 'Index', 'pn', 'GET', 'a:0:{}', '1500867298');
INSERT INTO `tp_web_log_001` VALUES ('61', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pn.html', 'home', 'Index', 'pn', 'GET', 'a:0:{}', '1500867603');
INSERT INTO `tp_web_log_001` VALUES ('62', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500867618');
INSERT INTO `tp_web_log_001` VALUES ('63', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1500867619');
INSERT INTO `tp_web_log_001` VALUES ('64', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1500867768');
INSERT INTO `tp_web_log_001` VALUES ('65', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500867779');
INSERT INTO `tp_web_log_001` VALUES ('66', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1500867780');
INSERT INTO `tp_web_log_001` VALUES ('67', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500867782');
INSERT INTO `tp_web_log_001` VALUES ('68', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pn.html', 'home', 'Index', 'pn', 'GET', 'a:0:{}', '1500867782');
INSERT INTO `tp_web_log_001` VALUES ('69', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500867785');
INSERT INTO `tp_web_log_001` VALUES ('70', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1500867787');
INSERT INTO `tp_web_log_001` VALUES ('71', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500867794');
INSERT INTO `tp_web_log_001` VALUES ('72', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1500867797');
INSERT INTO `tp_web_log_001` VALUES ('73', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500867798');
INSERT INTO `tp_web_log_001` VALUES ('74', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500867799');
INSERT INTO `tp_web_log_001` VALUES ('75', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/ywjs', 'home', 'Index', 'ywjs', 'GET', 'a:0:{}', '1500867800');
INSERT INTO `tp_web_log_001` VALUES ('76', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500867804');
INSERT INTO `tp_web_log_001` VALUES ('77', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500875289');
INSERT INTO `tp_web_log_001` VALUES ('78', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500875290');
INSERT INTO `tp_web_log_001` VALUES ('79', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500877089');
INSERT INTO `tp_web_log_001` VALUES ('80', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500877750');
INSERT INTO `tp_web_log_001` VALUES ('81', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500878917');
INSERT INTO `tp_web_log_001` VALUES ('82', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500878917');
INSERT INTO `tp_web_log_001` VALUES ('83', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500878983');
INSERT INTO `tp_web_log_001` VALUES ('84', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500879138');
INSERT INTO `tp_web_log_001` VALUES ('85', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500879146');
INSERT INTO `tp_web_log_001` VALUES ('86', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500879146');
INSERT INTO `tp_web_log_001` VALUES ('87', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500879146');
INSERT INTO `tp_web_log_001` VALUES ('88', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500879147');
INSERT INTO `tp_web_log_001` VALUES ('89', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500879147');
INSERT INTO `tp_web_log_001` VALUES ('90', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500879157');
INSERT INTO `tp_web_log_001` VALUES ('91', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500879180');
INSERT INTO `tp_web_log_001` VALUES ('92', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500879180');
INSERT INTO `tp_web_log_001` VALUES ('93', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500879182');
INSERT INTO `tp_web_log_001` VALUES ('94', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500879214');
INSERT INTO `tp_web_log_001` VALUES ('95', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500879295');
INSERT INTO `tp_web_log_001` VALUES ('96', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879299');
INSERT INTO `tp_web_log_001` VALUES ('97', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879303');
INSERT INTO `tp_web_log_001` VALUES ('98', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879303');
INSERT INTO `tp_web_log_001` VALUES ('99', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879303');
INSERT INTO `tp_web_log_001` VALUES ('100', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879317');
INSERT INTO `tp_web_log_001` VALUES ('101', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879318');
INSERT INTO `tp_web_log_001` VALUES ('102', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879318');
INSERT INTO `tp_web_log_001` VALUES ('103', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879318');
INSERT INTO `tp_web_log_001` VALUES ('104', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879336');
INSERT INTO `tp_web_log_001` VALUES ('105', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879337');
INSERT INTO `tp_web_log_001` VALUES ('106', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879337');
INSERT INTO `tp_web_log_001` VALUES ('107', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879347');
INSERT INTO `tp_web_log_001` VALUES ('108', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879349');
INSERT INTO `tp_web_log_001` VALUES ('109', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879349');
INSERT INTO `tp_web_log_001` VALUES ('110', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879349');
INSERT INTO `tp_web_log_001` VALUES ('111', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879352');
INSERT INTO `tp_web_log_001` VALUES ('112', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879352');
INSERT INTO `tp_web_log_001` VALUES ('113', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879352');
INSERT INTO `tp_web_log_001` VALUES ('114', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879354');
INSERT INTO `tp_web_log_001` VALUES ('115', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879354');
INSERT INTO `tp_web_log_001` VALUES ('116', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879355');
INSERT INTO `tp_web_log_001` VALUES ('117', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879360');
INSERT INTO `tp_web_log_001` VALUES ('118', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879361');
INSERT INTO `tp_web_log_001` VALUES ('119', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500879374');
INSERT INTO `tp_web_log_001` VALUES ('120', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879395');
INSERT INTO `tp_web_log_001` VALUES ('121', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879396');
INSERT INTO `tp_web_log_001` VALUES ('122', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879397');
INSERT INTO `tp_web_log_001` VALUES ('123', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879397');
INSERT INTO `tp_web_log_001` VALUES ('124', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500881911');
INSERT INTO `tp_web_log_001` VALUES ('125', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500883874');
INSERT INTO `tp_web_log_001` VALUES ('126', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500887235');
INSERT INTO `tp_web_log_001` VALUES ('127', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500888126');
INSERT INTO `tp_web_log_001` VALUES ('128', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500888224');
INSERT INTO `tp_web_log_001` VALUES ('129', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500888225');
INSERT INTO `tp_web_log_001` VALUES ('130', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500888225');
INSERT INTO `tp_web_log_001` VALUES ('131', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500888369');
INSERT INTO `tp_web_log_001` VALUES ('132', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500888469');
INSERT INTO `tp_web_log_001` VALUES ('133', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500888780');
INSERT INTO `tp_web_log_001` VALUES ('134', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500888905');
INSERT INTO `tp_web_log_001` VALUES ('135', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500888927');
INSERT INTO `tp_web_log_001` VALUES ('136', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500888951');
INSERT INTO `tp_web_log_001` VALUES ('137', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500889105');
INSERT INTO `tp_web_log_001` VALUES ('138', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500890300');
INSERT INTO `tp_web_log_001` VALUES ('139', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500890300');
INSERT INTO `tp_web_log_001` VALUES ('140', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500890422');
INSERT INTO `tp_web_log_001` VALUES ('141', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500892444');
INSERT INTO `tp_web_log_001` VALUES ('142', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500892444');
INSERT INTO `tp_web_log_001` VALUES ('143', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500892500');
INSERT INTO `tp_web_log_001` VALUES ('144', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500892555');
INSERT INTO `tp_web_log_001` VALUES ('145', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500892747');
INSERT INTO `tp_web_log_001` VALUES ('146', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500892790');
INSERT INTO `tp_web_log_001` VALUES ('147', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500892864');
INSERT INTO `tp_web_log_001` VALUES ('148', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500893052');
INSERT INTO `tp_web_log_001` VALUES ('149', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500893067');
INSERT INTO `tp_web_log_001` VALUES ('150', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500893106');
INSERT INTO `tp_web_log_001` VALUES ('151', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500893278');
INSERT INTO `tp_web_log_001` VALUES ('152', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500893494');
INSERT INTO `tp_web_log_001` VALUES ('153', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500893521');
INSERT INTO `tp_web_log_001` VALUES ('154', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500893702');
INSERT INTO `tp_web_log_001` VALUES ('155', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500893744');
INSERT INTO `tp_web_log_001` VALUES ('156', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500893790');
INSERT INTO `tp_web_log_001` VALUES ('157', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500893790');
INSERT INTO `tp_web_log_001` VALUES ('158', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500893790');
INSERT INTO `tp_web_log_001` VALUES ('159', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500893823');
INSERT INTO `tp_web_log_001` VALUES ('160', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500893857');
INSERT INTO `tp_web_log_001` VALUES ('161', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500893875');
INSERT INTO `tp_web_log_001` VALUES ('162', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500893876');
INSERT INTO `tp_web_log_001` VALUES ('163', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500893918');
INSERT INTO `tp_web_log_001` VALUES ('164', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500894031');
INSERT INTO `tp_web_log_001` VALUES ('165', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500894128');
INSERT INTO `tp_web_log_001` VALUES ('166', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500894187');
INSERT INTO `tp_web_log_001` VALUES ('167', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500894219');
INSERT INTO `tp_web_log_001` VALUES ('168', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500894260');
INSERT INTO `tp_web_log_001` VALUES ('169', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500894289');
INSERT INTO `tp_web_log_001` VALUES ('170', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500894484');
INSERT INTO `tp_web_log_001` VALUES ('171', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500894527');
INSERT INTO `tp_web_log_001` VALUES ('172', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500894715');
INSERT INTO `tp_web_log_001` VALUES ('173', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500894746');
INSERT INTO `tp_web_log_001` VALUES ('174', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/index', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500894782');
INSERT INTO `tp_web_log_001` VALUES ('175', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500894782');
INSERT INTO `tp_web_log_001` VALUES ('176', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500894875');
INSERT INTO `tp_web_log_001` VALUES ('177', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500894878');
INSERT INTO `tp_web_log_001` VALUES ('178', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500894890');
INSERT INTO `tp_web_log_001` VALUES ('179', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500895006');
INSERT INTO `tp_web_log_001` VALUES ('180', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500895030');
INSERT INTO `tp_web_log_001` VALUES ('181', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500895319');
INSERT INTO `tp_web_log_001` VALUES ('182', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500895332');
INSERT INTO `tp_web_log_001` VALUES ('183', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500895340');
INSERT INTO `tp_web_log_001` VALUES ('184', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/index', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500895368');
INSERT INTO `tp_web_log_001` VALUES ('185', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/index', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500895374');
INSERT INTO `tp_web_log_001` VALUES ('186', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/index', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500895385');
INSERT INTO `tp_web_log_001` VALUES ('187', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500895484');
INSERT INTO `tp_web_log_001` VALUES ('188', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500895710');
INSERT INTO `tp_web_log_001` VALUES ('189', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500895759');
INSERT INTO `tp_web_log_001` VALUES ('190', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500895787');
INSERT INTO `tp_web_log_001` VALUES ('191', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500895851');
INSERT INTO `tp_web_log_001` VALUES ('192', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500895931');
INSERT INTO `tp_web_log_001` VALUES ('193', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500895981');
INSERT INTO `tp_web_log_001` VALUES ('194', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500896103');
INSERT INTO `tp_web_log_001` VALUES ('195', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500896127');
INSERT INTO `tp_web_log_001` VALUES ('196', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500896175');
INSERT INTO `tp_web_log_001` VALUES ('197', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500896175');
INSERT INTO `tp_web_log_001` VALUES ('198', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500896175');
INSERT INTO `tp_web_log_001` VALUES ('199', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500896175');
INSERT INTO `tp_web_log_001` VALUES ('200', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500896175');
INSERT INTO `tp_web_log_001` VALUES ('201', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500896209');
INSERT INTO `tp_web_log_001` VALUES ('202', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500896210');
INSERT INTO `tp_web_log_001` VALUES ('203', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500947131');
INSERT INTO `tp_web_log_001` VALUES ('204', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500947140');
INSERT INTO `tp_web_log_001` VALUES ('205', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500947146');
INSERT INTO `tp_web_log_001` VALUES ('206', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1500947168');
INSERT INTO `tp_web_log_001` VALUES ('207', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1500947796');
INSERT INTO `tp_web_log_001` VALUES ('208', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500947963');
INSERT INTO `tp_web_log_001` VALUES ('209', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1500947965');
INSERT INTO `tp_web_log_001` VALUES ('210', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500953568');
INSERT INTO `tp_web_log_001` VALUES ('211', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1500953570');
INSERT INTO `tp_web_log_001` VALUES ('212', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1500953736');
INSERT INTO `tp_web_log_001` VALUES ('213', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1500953785');
INSERT INTO `tp_web_log_001` VALUES ('214', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1500953816');
INSERT INTO `tp_web_log_001` VALUES ('215', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1500953906');
INSERT INTO `tp_web_log_001` VALUES ('216', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1500970890');
INSERT INTO `tp_web_log_001` VALUES ('217', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1500970958');
INSERT INTO `tp_web_log_001` VALUES ('218', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1500971073');
INSERT INTO `tp_web_log_001` VALUES ('219', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1500971074');
INSERT INTO `tp_web_log_001` VALUES ('220', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1500971108');
INSERT INTO `tp_web_log_001` VALUES ('221', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1500974303');
INSERT INTO `tp_web_log_001` VALUES ('222', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1500974617');
INSERT INTO `tp_web_log_001` VALUES ('223', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1500974689');
INSERT INTO `tp_web_log_001` VALUES ('224', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1500974858');
INSERT INTO `tp_web_log_001` VALUES ('225', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1500975352');
INSERT INTO `tp_web_log_001` VALUES ('226', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500975406');
INSERT INTO `tp_web_log_001` VALUES ('227', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500975408');
INSERT INTO `tp_web_log_001` VALUES ('228', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pn.html', 'home', 'Index', 'pn', 'GET', 'a:0:{}', '1500975409');
INSERT INTO `tp_web_log_001` VALUES ('229', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500975412');
INSERT INTO `tp_web_log_001` VALUES ('230', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1500975414');
INSERT INTO `tp_web_log_001` VALUES ('231', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500975721');
INSERT INTO `tp_web_log_001` VALUES ('232', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1500975747');
INSERT INTO `tp_web_log_001` VALUES ('233', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1500975760');
INSERT INTO `tp_web_log_001` VALUES ('234', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1500975761');
INSERT INTO `tp_web_log_001` VALUES ('235', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1500975761');
INSERT INTO `tp_web_log_001` VALUES ('236', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1500975761');
INSERT INTO `tp_web_log_001` VALUES ('237', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1500975762');
INSERT INTO `tp_web_log_001` VALUES ('238', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1500975817');
INSERT INTO `tp_web_log_001` VALUES ('239', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1500975882');
INSERT INTO `tp_web_log_001` VALUES ('240', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500976207');
INSERT INTO `tp_web_log_001` VALUES ('241', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500976234');
INSERT INTO `tp_web_log_001` VALUES ('242', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500976254');
INSERT INTO `tp_web_log_001` VALUES ('243', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500976260');
INSERT INTO `tp_web_log_001` VALUES ('244', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500976263');
INSERT INTO `tp_web_log_001` VALUES ('245', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pn.html', 'home', 'Index', 'pn', 'GET', 'a:0:{}', '1500976264');
INSERT INTO `tp_web_log_001` VALUES ('246', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500976265');
INSERT INTO `tp_web_log_001` VALUES ('247', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1500976266');
INSERT INTO `tp_web_log_001` VALUES ('248', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500976268');
INSERT INTO `tp_web_log_001` VALUES ('249', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500976360');
INSERT INTO `tp_web_log_001` VALUES ('250', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500976920');
INSERT INTO `tp_web_log_001` VALUES ('251', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500976930');
INSERT INTO `tp_web_log_001` VALUES ('252', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500976936');
INSERT INTO `tp_web_log_001` VALUES ('253', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500977143');
INSERT INTO `tp_web_log_001` VALUES ('254', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index?mobile=18811216533', 'home', 'Index', 'index', 'GET', 'a:1:{s:6:\"mobile\";s:11:\"18811216533\";}', '1500977143');
INSERT INTO `tp_web_log_001` VALUES ('255', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500977146');
INSERT INTO `tp_web_log_001` VALUES ('256', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1500977669');
INSERT INTO `tp_web_log_001` VALUES ('257', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist?keyword=12312313', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:7:\"keyword\";s:8:\"12312313\";}', '1500977677');
INSERT INTO `tp_web_log_001` VALUES ('258', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist?keyword=', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:7:\"keyword\";s:0:\"\";}', '1500977680');
INSERT INTO `tp_web_log_001` VALUES ('259', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist?keyword=werwerwer', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:7:\"keyword\";s:9:\"werwerwer\";}', '1500977685');
INSERT INTO `tp_web_log_001` VALUES ('260', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist?keyword=', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:7:\"keyword\";s:0:\"\";}', '1500977688');
INSERT INTO `tp_web_log_001` VALUES ('261', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist?keyword=123123123', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:7:\"keyword\";s:9:\"123123123\";}', '1500977693');
INSERT INTO `tp_web_log_001` VALUES ('262', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist?keyword=123123123', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:7:\"keyword\";s:9:\"123123123\";}', '1500977733');
INSERT INTO `tp_web_log_001` VALUES ('263', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist?keyword=123123123', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:7:\"keyword\";s:9:\"123123123\";}', '1500977736');
INSERT INTO `tp_web_log_001` VALUES ('264', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist?keyword=', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:7:\"keyword\";s:0:\"\";}', '1500977743');
INSERT INTO `tp_web_log_001` VALUES ('265', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist?keyword=', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:7:\"keyword\";s:0:\"\";}', '1500977746');
INSERT INTO `tp_web_log_001` VALUES ('266', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist?%3Cscript%3Evar%20localStorage%20=%20window.localStorage;var%20mobile=%20localStorage.getItem(%27mobile%27);%20mobile;%3C/script%3E', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:25:\"<script>var_localStorage_\";s:87:\" window.localStorage;var mobile= localStorage.getItem(\'mobile\'); mobile;&lt;/script&gt;\";}', '1500978522');
INSERT INTO `tp_web_log_001` VALUES ('267', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist?%3Cscript%3Evar%20localStorage%20=%20window.localStorage;var%20mobile=%20localStorage.getItem(%27mobile%27);%20mobile;%3C/script%3E', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:25:\"<script>var_localStorage_\";s:87:\" window.localStorage;var mobile= localStorage.getItem(\'mobile\'); mobile;&lt;/script&gt;\";}', '1500978588');
INSERT INTO `tp_web_log_001` VALUES ('268', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500978671');
INSERT INTO `tp_web_log_001` VALUES ('269', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500978673');
INSERT INTO `tp_web_log_001` VALUES ('270', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1500978674');
INSERT INTO `tp_web_log_001` VALUES ('271', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist?keyword=tang', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:7:\"keyword\";s:4:\"tang\";}', '1500978684');
INSERT INTO `tp_web_log_001` VALUES ('272', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pninfo?id=5', 'home', 'Index', 'pninfo', 'GET', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1500978689');
INSERT INTO `tp_web_log_001` VALUES ('273', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist?keyword=tang', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:7:\"keyword\";s:4:\"tang\";}', '1500978703');
INSERT INTO `tp_web_log_001` VALUES ('274', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1500978705');
INSERT INTO `tp_web_log_001` VALUES ('275', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500978710');
INSERT INTO `tp_web_log_001` VALUES ('276', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/ywjs', 'home', 'Index', 'ywjs', 'GET', 'a:0:{}', '1500978712');
INSERT INTO `tp_web_log_001` VALUES ('277', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500978722');
INSERT INTO `tp_web_log_001` VALUES ('278', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/ywjs', 'home', 'Index', 'ywjs', 'GET', 'a:0:{}', '1500978724');
INSERT INTO `tp_web_log_001` VALUES ('279', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/ywjs', 'home', 'Index', 'ywjs', 'GET', 'a:0:{}', '1500978848');
INSERT INTO `tp_web_log_001` VALUES ('280', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500979044');
INSERT INTO `tp_web_log_001` VALUES ('281', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500979046');
INSERT INTO `tp_web_log_001` VALUES ('282', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1500979047');
INSERT INTO `tp_web_log_001` VALUES ('283', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500979056');
INSERT INTO `tp_web_log_001` VALUES ('284', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pn.html', 'home', 'Index', 'pn', 'GET', 'a:0:{}', '1500979057');
INSERT INTO `tp_web_log_001` VALUES ('285', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500979061');
INSERT INTO `tp_web_log_001` VALUES ('286', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1500979276');
INSERT INTO `tp_web_log_001` VALUES ('287', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pninfo?id=5', 'home', 'Index', 'pninfo', 'GET', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1500979279');
INSERT INTO `tp_web_log_001` VALUES ('288', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pninfo?id=5', 'home', 'Index', 'pninfo', 'GET', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1500979395');
INSERT INTO `tp_web_log_001` VALUES ('289', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist?keyword=', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:7:\"keyword\";s:0:\"\";}', '1501034721');
INSERT INTO `tp_web_log_001` VALUES ('290', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pninfo?id=5', 'home', 'Index', 'pninfo', 'GET', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1501034723');
INSERT INTO `tp_web_log_001` VALUES ('291', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/pninfo?id=5', 'home', 'Index', 'pninfo', 'GET', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1501034735');
INSERT INTO `tp_web_log_001` VALUES ('292', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/pninfo?id=5', 'home', 'Index', 'pninfo', 'GET', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1501035007');
INSERT INTO `tp_web_log_001` VALUES ('293', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/pnlist', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1501036060');
INSERT INTO `tp_web_log_001` VALUES ('294', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1501036071');
INSERT INTO `tp_web_log_001` VALUES ('295', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1501036073');
INSERT INTO `tp_web_log_001` VALUES ('296', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1501036074');
INSERT INTO `tp_web_log_001` VALUES ('297', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist?keyword=', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:7:\"keyword\";s:0:\"\";}', '1501036085');
INSERT INTO `tp_web_log_001` VALUES ('298', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/pnlist?keyword=', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:7:\"keyword\";s:0:\"\";}', '1501036092');
INSERT INTO `tp_web_log_001` VALUES ('299', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist?keyword=', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:7:\"keyword\";s:0:\"\";}', '1501036461');
INSERT INTO `tp_web_log_001` VALUES ('300', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1501036471');
INSERT INTO `tp_web_log_001` VALUES ('301', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1501036473');
INSERT INTO `tp_web_log_001` VALUES ('302', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501036481');
INSERT INTO `tp_web_log_001` VALUES ('303', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1501036652');
INSERT INTO `tp_web_log_001` VALUES ('304', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1501036654');
INSERT INTO `tp_web_log_001` VALUES ('305', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pninfo?username=tangll', 'home', 'Index', 'pninfo', 'GET', 'a:1:{s:8:\"username\";s:6:\"tangll\";}', '1501036661');
INSERT INTO `tp_web_log_001` VALUES ('306', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pninfo?username=tangll', 'home', 'Index', 'pninfo', 'GET', 'a:1:{s:8:\"username\";s:6:\"tangll\";}', '1501037344');
INSERT INTO `tp_web_log_001` VALUES ('307', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1501037621');
INSERT INTO `tp_web_log_001` VALUES ('308', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1501037623');
INSERT INTO `tp_web_log_001` VALUES ('309', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501037625');
INSERT INTO `tp_web_log_001` VALUES ('310', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pninfo?username=tangll', 'home', 'Index', 'pninfo', 'GET', 'a:1:{s:8:\"username\";s:6:\"tangll\";}', '1501037913');
INSERT INTO `tp_web_log_001` VALUES ('311', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pninfo?username=tangll', 'home', 'Index', 'pninfo', 'GET', 'a:1:{s:8:\"username\";s:6:\"tangll\";}', '1501038013');
INSERT INTO `tp_web_log_001` VALUES ('312', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pninfo?username=tangll', 'home', 'Index', 'pninfo', 'GET', 'a:1:{s:8:\"username\";s:6:\"tangll\";}', '1501038024');
INSERT INTO `tp_web_log_001` VALUES ('313', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pninfo?username=tangll', 'home', 'Index', 'pninfo', 'GET', 'a:1:{s:8:\"username\";s:6:\"tangll\";}', '1501038062');
INSERT INTO `tp_web_log_001` VALUES ('314', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pninfo?username=tangll', 'home', 'Index', 'pninfo', 'GET', 'a:1:{s:8:\"username\";s:6:\"tangll\";}', '1501038859');
INSERT INTO `tp_web_log_001` VALUES ('315', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pninfo?username=tangll', 'home', 'Index', 'pninfo', 'GET', 'a:1:{s:8:\"username\";s:6:\"tangll\";}', '1501038864');
INSERT INTO `tp_web_log_001` VALUES ('316', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pninfo?username=tangll', 'home', 'Index', 'pninfo', 'GET', 'a:1:{s:8:\"username\";s:6:\"tangll\";}', '1501039071');
INSERT INTO `tp_web_log_001` VALUES ('317', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pninfo?username=tangll', 'home', 'Index', 'pninfo', 'GET', 'a:1:{s:8:\"username\";s:6:\"tangll\";}', '1501039201');
INSERT INTO `tp_web_log_001` VALUES ('318', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pninfo?username=tangll', 'home', 'Index', 'pninfo', 'GET', 'a:1:{s:8:\"username\";s:6:\"tangll\";}', '1501039201');
INSERT INTO `tp_web_log_001` VALUES ('319', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pninfo?username=tangll', 'home', 'Index', 'pninfo', 'GET', 'a:1:{s:8:\"username\";s:6:\"tangll\";}', '1501039210');
INSERT INTO `tp_web_log_001` VALUES ('320', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1501039218');
INSERT INTO `tp_web_log_001` VALUES ('321', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1501039434');
INSERT INTO `tp_web_log_001` VALUES ('322', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist?keyword=asasd', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:7:\"keyword\";s:5:\"asasd\";}', '1501039443');
INSERT INTO `tp_web_log_001` VALUES ('323', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist?keyword=asasd', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:7:\"keyword\";s:5:\"asasd\";}', '1501039477');
INSERT INTO `tp_web_log_001` VALUES ('324', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist?keyword=asasd', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:7:\"keyword\";s:5:\"asasd\";}', '1501039510');
INSERT INTO `tp_web_log_001` VALUES ('325', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist?keyword=asasd', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:7:\"keyword\";s:5:\"asasd\";}', '1501039510');
INSERT INTO `tp_web_log_001` VALUES ('326', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist?keyword=', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:7:\"keyword\";s:0:\"\";}', '1501039544');
INSERT INTO `tp_web_log_001` VALUES ('327', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist?keyword=', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:7:\"keyword\";s:0:\"\";}', '1501039569');
INSERT INTO `tp_web_log_001` VALUES ('328', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist?keyword=', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:7:\"keyword\";s:0:\"\";}', '1501039570');
INSERT INTO `tp_web_log_001` VALUES ('329', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist?keyword=asasd', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:7:\"keyword\";s:5:\"asasd\";}', '1501039579');
INSERT INTO `tp_web_log_001` VALUES ('330', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist?keyword=asasd', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:7:\"keyword\";s:5:\"asasd\";}', '1501039580');
INSERT INTO `tp_web_log_001` VALUES ('331', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist?keyword=asasd', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:7:\"keyword\";s:5:\"asasd\";}', '1501039595');
INSERT INTO `tp_web_log_001` VALUES ('332', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1501041329');
INSERT INTO `tp_web_log_001` VALUES ('333', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501041335');
INSERT INTO `tp_web_log_001` VALUES ('334', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index?mobile=18811216533', 'home', 'Index', 'index', 'GET', 'a:1:{s:6:\"mobile\";s:11:\"18811216533\";}', '1501041335');
INSERT INTO `tp_web_log_001` VALUES ('335', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1501041337');
INSERT INTO `tp_web_log_001` VALUES ('336', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501041339');
INSERT INTO `tp_web_log_001` VALUES ('337', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1501041348');
INSERT INTO `tp_web_log_001` VALUES ('338', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pn.html', 'home', 'Index', 'pn', 'GET', 'a:0:{}', '1501041349');
INSERT INTO `tp_web_log_001` VALUES ('339', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1501041350');
INSERT INTO `tp_web_log_001` VALUES ('340', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1501041351');
INSERT INTO `tp_web_log_001` VALUES ('341', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pninfo?username=tanglll', 'home', 'Index', 'pninfo', 'GET', 'a:1:{s:8:\"username\";s:7:\"tanglll\";}', '1501041355');
INSERT INTO `tp_web_log_001` VALUES ('342', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501041391');
INSERT INTO `tp_web_log_001` VALUES ('343', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501041391');
INSERT INTO `tp_web_log_001` VALUES ('344', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501041416');
INSERT INTO `tp_web_log_001` VALUES ('345', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501041555');
INSERT INTO `tp_web_log_001` VALUES ('346', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501041555');
INSERT INTO `tp_web_log_001` VALUES ('347', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501041559');
INSERT INTO `tp_web_log_001` VALUES ('348', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501041560');
INSERT INTO `tp_web_log_001` VALUES ('349', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501041567');
INSERT INTO `tp_web_log_001` VALUES ('350', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1501041574');
INSERT INTO `tp_web_log_001` VALUES ('351', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_group/add.html', 'admin', 'AdminGroup', 'add', 'GET', 'a:0:{}', '1501041581');
INSERT INTO `tp_web_log_001` VALUES ('352', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_group/add.html', 'admin', 'AdminGroup', 'add', 'GET', 'a:0:{}', '1501041615');
INSERT INTO `tp_web_log_001` VALUES ('353', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_group/add.html', 'admin', 'AdminGroup', 'add', 'POST', 'a:6:{s:2:\"id\";s:0:\"\";s:4:\"name\";s:12:\"医生列表\";s:4:\"icon\";s:37:\"&amp;#xe611; .Hui-iconfont-usergroup2\";s:4:\"sort\";s:2:\"50\";s:6:\"status\";s:1:\"1\";s:6:\"remark\";s:0:\"\";}', '1501041685');
INSERT INTO `tp_web_log_001` VALUES ('354', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1501041685');
INSERT INTO `tp_web_log_001` VALUES ('355', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_group/edit/id/3.html', 'admin', 'AdminGroup', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1501041691');
INSERT INTO `tp_web_log_001` VALUES ('356', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_group/edit/id/3.html', 'admin', 'AdminGroup', 'edit', 'POST', 'a:6:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:12:\"医生列表\";s:4:\"icon\";s:17:\"&amp;amp;#xe611; \";s:4:\"sort\";s:2:\"50\";s:6:\"status\";s:1:\"1\";s:6:\"remark\";s:0:\"\";}', '1501041701');
INSERT INTO `tp_web_log_001` VALUES ('357', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1501041702');
INSERT INTO `tp_web_log_001` VALUES ('358', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501041706');
INSERT INTO `tp_web_log_001` VALUES ('359', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501041707');
INSERT INTO `tp_web_log_001` VALUES ('360', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1501041710');
INSERT INTO `tp_web_log_001` VALUES ('361', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_group/edit/id/3.html', 'admin', 'AdminGroup', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1501041716');
INSERT INTO `tp_web_log_001` VALUES ('362', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_group/edit/id/2.html', 'admin', 'AdminGroup', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1501041734');
INSERT INTO `tp_web_log_001` VALUES ('363', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_group/edit/id/3.html', 'admin', 'AdminGroup', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1501041740');
INSERT INTO `tp_web_log_001` VALUES ('364', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_group/edit/id/3.html', 'admin', 'AdminGroup', 'edit', 'POST', 'a:6:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:12:\"医生列表\";s:4:\"icon\";s:12:\"&amp;#xe616;\";s:4:\"sort\";s:2:\"50\";s:6:\"status\";s:1:\"1\";s:6:\"remark\";s:0:\"\";}', '1501041746');
INSERT INTO `tp_web_log_001` VALUES ('365', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1501041746');
INSERT INTO `tp_web_log_001` VALUES ('366', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_group/saveOrder', 'admin', 'AdminGroup', 'saveorder', 'POST', 'a:1:{s:4:\"sort\";a:3:{i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"1\";}}', '1501041770');
INSERT INTO `tp_web_log_001` VALUES ('367', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501041773');
INSERT INTO `tp_web_log_001` VALUES ('368', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501041774');
INSERT INTO `tp_web_log_001` VALUES ('369', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1501041799');
INSERT INTO `tp_web_log_001` VALUES ('370', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1501041800');
INSERT INTO `tp_web_log_001` VALUES ('371', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1501041800');
INSERT INTO `tp_web_log_001` VALUES ('372', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"2\";}', '1501041828');
INSERT INTO `tp_web_log_001` VALUES ('373', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1501041832');
INSERT INTO `tp_web_log_001` VALUES ('374', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1501041832');
INSERT INTO `tp_web_log_001` VALUES ('375', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"0\";}', '1501041833');
INSERT INTO `tp_web_log_001` VALUES ('376', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"0\";}', '1501041840');
INSERT INTO `tp_web_log_001` VALUES ('377', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1501041845');
INSERT INTO `tp_web_log_001` VALUES ('378', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_role/index.html', 'admin', 'AdminRole', 'index', 'GET', 'a:0:{}', '1501041848');
INSERT INTO `tp_web_log_001` VALUES ('379', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1501041853');
INSERT INTO `tp_web_log_001` VALUES ('380', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1501041853');
INSERT INTO `tp_web_log_001` VALUES ('381', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1501041853');
INSERT INTO `tp_web_log_001` VALUES ('382', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1501041854');
INSERT INTO `tp_web_log_001` VALUES ('383', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501041898');
INSERT INTO `tp_web_log_001` VALUES ('384', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501041901');
INSERT INTO `tp_web_log_001` VALUES ('385', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/login_log/index.html', 'admin', 'LoginLog', 'index', 'GET', 'a:0:{}', '1501041913');
INSERT INTO `tp_web_log_001` VALUES ('386', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/web_log/index.html', 'admin', 'WebLog', 'index', 'GET', 'a:0:{}', '1501041916');
INSERT INTO `tp_web_log_001` VALUES ('387', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/node_map/index.html', 'admin', 'NodeMap', 'index', 'GET', 'a:0:{}', '1501041924');
INSERT INTO `tp_web_log_001` VALUES ('388', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1501041924');
INSERT INTO `tp_web_log_001` VALUES ('389', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_role/index.html', 'admin', 'AdminRole', 'index', 'GET', 'a:0:{}', '1501041926');
INSERT INTO `tp_web_log_001` VALUES ('390', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1501041927');
INSERT INTO `tp_web_log_001` VALUES ('391', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1501041927');
INSERT INTO `tp_web_log_001` VALUES ('392', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1501041928');
INSERT INTO `tp_web_log_001` VALUES ('393', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1501041929');
INSERT INTO `tp_web_log_001` VALUES ('394', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"0\";}', '1501041951');
INSERT INTO `tp_web_log_001` VALUES ('395', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"0\";}', '1501041961');
INSERT INTO `tp_web_log_001` VALUES ('396', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1501041966');
INSERT INTO `tp_web_log_001` VALUES ('397', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1501041966');
INSERT INTO `tp_web_log_001` VALUES ('398', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501044392');
INSERT INTO `tp_web_log_001` VALUES ('399', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501044392');
INSERT INTO `tp_web_log_001` VALUES ('400', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501044432');
INSERT INTO `tp_web_log_001` VALUES ('401', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501044432');
INSERT INTO `tp_web_log_001` VALUES ('402', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501050139');
INSERT INTO `tp_web_log_001` VALUES ('403', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501050139');
INSERT INTO `tp_web_log_001` VALUES ('404', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501050476');
INSERT INTO `tp_web_log_001` VALUES ('405', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501050476');
INSERT INTO `tp_web_log_001` VALUES ('406', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501050524');
INSERT INTO `tp_web_log_001` VALUES ('407', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501050524');
INSERT INTO `tp_web_log_001` VALUES ('408', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1501050537');
INSERT INTO `tp_web_log_001` VALUES ('409', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_group/edit/id/3.html', 'admin', 'AdminGroup', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1501050542');
INSERT INTO `tp_web_log_001` VALUES ('410', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_group/edit/id/3.html', 'admin', 'AdminGroup', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1501050550');
INSERT INTO `tp_web_log_001` VALUES ('411', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_group/saveOrder', 'admin', 'AdminGroup', 'saveorder', 'POST', 'a:1:{s:4:\"sort\";a:2:{i:1;s:1:\"2\";i:3;s:1:\"1\";}}', '1501050553');
INSERT INTO `tp_web_log_001` VALUES ('412', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1501050560');
INSERT INTO `tp_web_log_001` VALUES ('413', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1501050560');
INSERT INTO `tp_web_log_001` VALUES ('414', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1501050560');
INSERT INTO `tp_web_log_001` VALUES ('415', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:2:\"63\";}', '1501050575');
INSERT INTO `tp_web_log_001` VALUES ('416', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1501050581');
INSERT INTO `tp_web_log_001` VALUES ('417', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1501050581');
INSERT INTO `tp_web_log_001` VALUES ('418', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:2:\"63\";}', '1501050583');
INSERT INTO `tp_web_log_001` VALUES ('419', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1501050607');
INSERT INTO `tp_web_log_001` VALUES ('420', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1501050607');
INSERT INTO `tp_web_log_001` VALUES ('421', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1501050607');
INSERT INTO `tp_web_log_001` VALUES ('422', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"0\";}', '1501050612');
INSERT INTO `tp_web_log_001` VALUES ('423', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/add?pid=0', 'admin', 'AdminNode', 'add', 'GET', 'a:1:{s:3:\"pid\";s:1:\"0\";}', '1501050626');
INSERT INTO `tp_web_log_001` VALUES ('424', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/add', 'admin', 'AdminNode', 'add', 'POST', 'a:9:{s:2:\"id\";s:0:\"\";s:3:\"pid\";s:1:\"0\";s:5:\"level\";s:1:\"1\";s:8:\"group_id\";s:1:\"3\";s:5:\"title\";s:12:\"医生列表\";s:4:\"name\";s:7:\"yisheng\";s:4:\"type\";s:1:\"1\";s:4:\"sort\";s:2:\"50\";s:6:\"status\";s:1:\"1\";}', '1501050658');
INSERT INTO `tp_web_log_001` VALUES ('425', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1501050658');
INSERT INTO `tp_web_log_001` VALUES ('426', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1501050659');
INSERT INTO `tp_web_log_001` VALUES ('427', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"0\";}', '1501050659');
INSERT INTO `tp_web_log_001` VALUES ('428', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:2:\"64\";}', '1501050662');
INSERT INTO `tp_web_log_001` VALUES ('429', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501050669');
INSERT INTO `tp_web_log_001` VALUES ('430', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501050669');
INSERT INTO `tp_web_log_001` VALUES ('431', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1501050672');
INSERT INTO `tp_web_log_001` VALUES ('432', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1501050675');
INSERT INTO `tp_web_log_001` VALUES ('433', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1501050675');
INSERT INTO `tp_web_log_001` VALUES ('434', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1501050675');
INSERT INTO `tp_web_log_001` VALUES ('435', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:2:\"64\";}', '1501050676');
INSERT INTO `tp_web_log_001` VALUES ('436', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1501050691');
INSERT INTO `tp_web_log_001` VALUES ('437', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1501050692');
INSERT INTO `tp_web_log_001` VALUES ('438', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1501050692');
INSERT INTO `tp_web_log_001` VALUES ('439', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/add?pid=0', 'admin', 'AdminNode', 'add', 'GET', 'a:1:{s:3:\"pid\";s:1:\"0\";}', '1501050711');
INSERT INTO `tp_web_log_001` VALUES ('440', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/add', 'admin', 'AdminNode', 'add', 'POST', 'a:9:{s:2:\"id\";s:0:\"\";s:3:\"pid\";s:1:\"0\";s:5:\"level\";s:1:\"1\";s:8:\"group_id\";s:1:\"3\";s:5:\"title\";s:12:\"医生列表\";s:4:\"name\";s:7:\"yisheng\";s:4:\"type\";s:1:\"1\";s:4:\"sort\";s:2:\"50\";s:6:\"status\";s:1:\"1\";}', '1501050725');
INSERT INTO `tp_web_log_001` VALUES ('441', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1501050725');
INSERT INTO `tp_web_log_001` VALUES ('442', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1501050726');
INSERT INTO `tp_web_log_001` VALUES ('443', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1501050726');
INSERT INTO `tp_web_log_001` VALUES ('444', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:2:\"65\";}', '1501050727');
INSERT INTO `tp_web_log_001` VALUES ('445', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/add?pid=0', 'admin', 'AdminNode', 'add', 'GET', 'a:1:{s:3:\"pid\";s:1:\"0\";}', '1501050729');
INSERT INTO `tp_web_log_001` VALUES ('446', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/add', 'admin', 'AdminNode', 'add', 'POST', 'a:9:{s:2:\"id\";s:0:\"\";s:3:\"pid\";s:1:\"0\";s:5:\"level\";s:1:\"1\";s:8:\"group_id\";s:1:\"3\";s:5:\"title\";s:12:\"医生列表\";s:4:\"name\";s:4:\"list\";s:4:\"type\";s:1:\"0\";s:4:\"sort\";s:2:\"50\";s:6:\"status\";s:1:\"1\";}', '1501050752');
INSERT INTO `tp_web_log_001` VALUES ('447', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1501050753');
INSERT INTO `tp_web_log_001` VALUES ('448', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:2:\"65\";}', '1501050753');
INSERT INTO `tp_web_log_001` VALUES ('449', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:2:\"66\";}', '1501050757');
INSERT INTO `tp_web_log_001` VALUES ('450', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:2:\"65\";}', '1501050759');
INSERT INTO `tp_web_log_001` VALUES ('451', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501050800');
INSERT INTO `tp_web_log_001` VALUES ('452', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501050801');
INSERT INTO `tp_web_log_001` VALUES ('453', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1501050804');
INSERT INTO `tp_web_log_001` VALUES ('454', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1501050805');
INSERT INTO `tp_web_log_001` VALUES ('455', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1501050806');
INSERT INTO `tp_web_log_001` VALUES ('456', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1501050806');
INSERT INTO `tp_web_log_001` VALUES ('457', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:2:\"65\";}', '1501050814');
INSERT INTO `tp_web_log_001` VALUES ('458', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:2:\"66\";}', '1501050816');
INSERT INTO `tp_web_log_001` VALUES ('459', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_role/index.html', 'admin', 'AdminRole', 'index', 'GET', 'a:0:{}', '1501050848');
INSERT INTO `tp_web_log_001` VALUES ('460', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1501050848');
INSERT INTO `tp_web_log_001` VALUES ('461', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1501050849');
INSERT INTO `tp_web_log_001` VALUES ('462', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1501050849');
INSERT INTO `tp_web_log_001` VALUES ('463', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1501050883');
INSERT INTO `tp_web_log_001` VALUES ('464', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1501050886');
INSERT INTO `tp_web_log_001` VALUES ('465', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1501050886');
INSERT INTO `tp_web_log_001` VALUES ('466', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1501050889');
INSERT INTO `tp_web_log_001` VALUES ('467', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/edit?id=51', 'admin', 'AdminNode', 'edit', 'GET', 'a:1:{s:2:\"id\";s:2:\"51\";}', '1501050905');
INSERT INTO `tp_web_log_001` VALUES ('468', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/node_map/index.html', 'admin', 'NodeMap', 'index', 'GET', 'a:0:{}', '1501050941');
INSERT INTO `tp_web_log_001` VALUES ('469', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/web_log/index.html', 'admin', 'WebLog', 'index', 'GET', 'a:0:{}', '1501050944');
INSERT INTO `tp_web_log_001` VALUES ('470', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/login_log/index.html', 'admin', 'LoginLog', 'index', 'GET', 'a:0:{}', '1501050945');
INSERT INTO `tp_web_log_001` VALUES ('471', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1501050947');
INSERT INTO `tp_web_log_001` VALUES ('472', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_role/index.html', 'admin', 'AdminRole', 'index', 'GET', 'a:0:{}', '1501050948');
INSERT INTO `tp_web_log_001` VALUES ('473', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1501050951');
INSERT INTO `tp_web_log_001` VALUES ('474', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1501050952');
INSERT INTO `tp_web_log_001` VALUES ('475', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1501050952');
INSERT INTO `tp_web_log_001` VALUES ('476', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"0\";}', '1501050962');
INSERT INTO `tp_web_log_001` VALUES ('477', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/add?pid=0', 'admin', 'AdminNode', 'add', 'GET', 'a:1:{s:3:\"pid\";s:1:\"0\";}', '1501050978');
INSERT INTO `tp_web_log_001` VALUES ('478', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/add', 'admin', 'AdminNode', 'add', 'POST', 'a:9:{s:2:\"id\";s:0:\"\";s:3:\"pid\";s:1:\"0\";s:5:\"level\";s:1:\"1\";s:8:\"group_id\";s:1:\"0\";s:5:\"title\";s:12:\"医生列表\";s:4:\"name\";s:7:\"yisheng\";s:4:\"type\";s:1:\"1\";s:4:\"sort\";s:2:\"50\";s:6:\"status\";s:1:\"1\";}', '1501051001');
INSERT INTO `tp_web_log_001` VALUES ('479', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1501051002');
INSERT INTO `tp_web_log_001` VALUES ('480', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1501051002');
INSERT INTO `tp_web_log_001` VALUES ('481', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"0\";}', '1501051002');
INSERT INTO `tp_web_log_001` VALUES ('482', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1501051004');
INSERT INTO `tp_web_log_001` VALUES ('483', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1501051004');
INSERT INTO `tp_web_log_001` VALUES ('484', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:2:\"67\";}', '1501051006');
INSERT INTO `tp_web_log_001` VALUES ('485', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:2:\"67\";}', '1501051010');
INSERT INTO `tp_web_log_001` VALUES ('486', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501051047');
INSERT INTO `tp_web_log_001` VALUES ('487', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501051048');
INSERT INTO `tp_web_log_001` VALUES ('488', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1501051050');
INSERT INTO `tp_web_log_001` VALUES ('489', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1501051051');
INSERT INTO `tp_web_log_001` VALUES ('490', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1501051052');
INSERT INTO `tp_web_log_001` VALUES ('491', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1501051052');
INSERT INTO `tp_web_log_001` VALUES ('492', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:2:\"67\";}', '1501051054');
INSERT INTO `tp_web_log_001` VALUES ('493', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501051700');
INSERT INTO `tp_web_log_001` VALUES ('494', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501051700');
INSERT INTO `tp_web_log_001` VALUES ('495', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501051996');
INSERT INTO `tp_web_log_001` VALUES ('496', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501051997');
INSERT INTO `tp_web_log_001` VALUES ('497', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501052272');
INSERT INTO `tp_web_log_001` VALUES ('498', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501052273');
INSERT INTO `tp_web_log_001` VALUES ('499', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501052292');
INSERT INTO `tp_web_log_001` VALUES ('500', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501052293');
INSERT INTO `tp_web_log_001` VALUES ('501', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501052320');
INSERT INTO `tp_web_log_001` VALUES ('502', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501052321');
INSERT INTO `tp_web_log_001` VALUES ('503', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501052328');
INSERT INTO `tp_web_log_001` VALUES ('504', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501052329');
INSERT INTO `tp_web_log_001` VALUES ('505', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501053795');
INSERT INTO `tp_web_log_001` VALUES ('506', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501053796');
INSERT INTO `tp_web_log_001` VALUES ('507', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501054009');
INSERT INTO `tp_web_log_001` VALUES ('508', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501054009');
INSERT INTO `tp_web_log_001` VALUES ('509', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501054067');
INSERT INTO `tp_web_log_001` VALUES ('510', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501054068');
INSERT INTO `tp_web_log_001` VALUES ('511', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501054138');
INSERT INTO `tp_web_log_001` VALUES ('512', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501054139');
INSERT INTO `tp_web_log_001` VALUES ('513', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501054192');
INSERT INTO `tp_web_log_001` VALUES ('514', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501054192');
INSERT INTO `tp_web_log_001` VALUES ('515', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501054224');
INSERT INTO `tp_web_log_001` VALUES ('516', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501054224');
INSERT INTO `tp_web_log_001` VALUES ('517', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501057092');
INSERT INTO `tp_web_log_001` VALUES ('518', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501057093');
INSERT INTO `tp_web_log_001` VALUES ('519', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501057213');
INSERT INTO `tp_web_log_001` VALUES ('520', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501057214');
INSERT INTO `tp_web_log_001` VALUES ('521', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501057233');
INSERT INTO `tp_web_log_001` VALUES ('522', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501057234');
INSERT INTO `tp_web_log_001` VALUES ('523', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501057253');
INSERT INTO `tp_web_log_001` VALUES ('524', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501057269');
INSERT INTO `tp_web_log_001` VALUES ('525', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501057655');
INSERT INTO `tp_web_log_001` VALUES ('526', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501057657');
INSERT INTO `tp_web_log_001` VALUES ('527', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501057659');
INSERT INTO `tp_web_log_001` VALUES ('528', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501057992');
INSERT INTO `tp_web_log_001` VALUES ('529', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501058014');
INSERT INTO `tp_web_log_001` VALUES ('530', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501058043');
INSERT INTO `tp_web_log_001` VALUES ('531', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501058044');
INSERT INTO `tp_web_log_001` VALUES ('532', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501058046');
INSERT INTO `tp_web_log_001` VALUES ('533', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501058074');
INSERT INTO `tp_web_log_001` VALUES ('534', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501058074');
INSERT INTO `tp_web_log_001` VALUES ('535', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501058076');
INSERT INTO `tp_web_log_001` VALUES ('536', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501058245');
INSERT INTO `tp_web_log_001` VALUES ('537', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501058247');
INSERT INTO `tp_web_log_001` VALUES ('538', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501058254');
INSERT INTO `tp_web_log_001` VALUES ('539', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501058291');
INSERT INTO `tp_web_log_001` VALUES ('540', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501058294');
INSERT INTO `tp_web_log_001` VALUES ('541', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501058295');
INSERT INTO `tp_web_log_001` VALUES ('542', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501058295');
INSERT INTO `tp_web_log_001` VALUES ('543', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501058296');
INSERT INTO `tp_web_log_001` VALUES ('544', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501058314');
INSERT INTO `tp_web_log_001` VALUES ('545', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501058342');
INSERT INTO `tp_web_log_001` VALUES ('546', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501058362');
INSERT INTO `tp_web_log_001` VALUES ('547', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501058588');
INSERT INTO `tp_web_log_001` VALUES ('548', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501058794');
INSERT INTO `tp_web_log_001` VALUES ('549', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501058819');
INSERT INTO `tp_web_log_001` VALUES ('550', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501059055');
INSERT INTO `tp_web_log_001` VALUES ('551', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1501059174');
INSERT INTO `tp_web_log_001` VALUES ('552', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501059801');
INSERT INTO `tp_web_log_001` VALUES ('553', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501059802');
INSERT INTO `tp_web_log_001` VALUES ('554', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501059889');
INSERT INTO `tp_web_log_001` VALUES ('555', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501059971');
INSERT INTO `tp_web_log_001` VALUES ('556', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501059974');
INSERT INTO `tp_web_log_001` VALUES ('557', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501059975');
INSERT INTO `tp_web_log_001` VALUES ('558', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501060063');
INSERT INTO `tp_web_log_001` VALUES ('559', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501060087');
INSERT INTO `tp_web_log_001` VALUES ('560', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501060099');
INSERT INTO `tp_web_log_001` VALUES ('561', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html?mobile=21653', 'admin', 'Yisheng', 'index', 'GET', 'a:1:{s:6:\"mobile\";s:5:\"21653\";}', '1501060141');
INSERT INTO `tp_web_log_001` VALUES ('562', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html?mobile=21653', 'admin', 'Yisheng', 'index', 'GET', 'a:1:{s:6:\"mobile\";s:5:\"21653\";}', '1501060145');
INSERT INTO `tp_web_log_001` VALUES ('563', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1501060736');
INSERT INTO `tp_web_log_001` VALUES ('564', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1501060738');
INSERT INTO `tp_web_log_001` VALUES ('565', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pninfo?username=tanglll', 'home', 'Index', 'pninfo', 'GET', 'a:1:{s:8:\"username\";s:7:\"tanglll\";}', '1501060739');
INSERT INTO `tp_web_log_001` VALUES ('566', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501061063');
INSERT INTO `tp_web_log_001` VALUES ('567', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html?p=2', 'admin', 'Huanzhe', 'index', 'GET', 'a:1:{s:1:\"p\";s:1:\"2\";}', '1501061067');
INSERT INTO `tp_web_log_001` VALUES ('568', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html?p=1', 'admin', 'Huanzhe', 'index', 'GET', 'a:1:{s:1:\"p\";s:1:\"1\";}', '1501061069');
INSERT INTO `tp_web_log_001` VALUES ('569', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501061100');
INSERT INTO `tp_web_log_001` VALUES ('570', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501061150');
INSERT INTO `tp_web_log_001` VALUES ('571', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501061152');
INSERT INTO `tp_web_log_001` VALUES ('572', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501061183');
INSERT INTO `tp_web_log_001` VALUES ('573', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501061195');
INSERT INTO `tp_web_log_001` VALUES ('574', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501061197');
INSERT INTO `tp_web_log_001` VALUES ('575', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html?username=tang', 'admin', 'Huanzhe', 'index', 'GET', 'a:1:{s:8:\"username\";s:4:\"tang\";}', '1501061210');
INSERT INTO `tp_web_log_001` VALUES ('576', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html?username=tang', 'admin', 'Huanzhe', 'index', 'GET', 'a:1:{s:8:\"username\";s:4:\"tang\";}', '1501061311');
INSERT INTO `tp_web_log_001` VALUES ('577', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html?username=ang', 'admin', 'Huanzhe', 'index', 'GET', 'a:1:{s:8:\"username\";s:3:\"ang\";}', '1501061321');
INSERT INTO `tp_web_log_001` VALUES ('578', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501061417');
INSERT INTO `tp_web_log_001` VALUES ('579', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501061629');
INSERT INTO `tp_web_log_001` VALUES ('580', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html?p=2', 'admin', 'Huanzhe', 'index', 'GET', 'a:1:{s:1:\"p\";s:1:\"2\";}', '1501062663');
INSERT INTO `tp_web_log_001` VALUES ('581', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html?p=1', 'admin', 'Huanzhe', 'index', 'GET', 'a:1:{s:1:\"p\";s:1:\"1\";}', '1501062664');
INSERT INTO `tp_web_log_001` VALUES ('582', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501062754');
INSERT INTO `tp_web_log_001` VALUES ('583', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501062764');
INSERT INTO `tp_web_log_001` VALUES ('584', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501062835');
INSERT INTO `tp_web_log_001` VALUES ('585', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501062858');
INSERT INTO `tp_web_log_001` VALUES ('586', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info.html', 'admin', 'Huanzhe', 'info', 'GET', 'a:0:{}', '1501063402');
INSERT INTO `tp_web_log_001` VALUES ('587', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info.html', 'admin', 'Huanzhe', 'info', 'GET', 'a:0:{}', '1501063422');
INSERT INTO `tp_web_log_001` VALUES ('588', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info.html', 'admin', 'Huanzhe', 'info', 'GET', 'a:0:{}', '1501063590');
INSERT INTO `tp_web_log_001` VALUES ('589', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501063730');
INSERT INTO `tp_web_log_001` VALUES ('590', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info.html', 'admin', 'Huanzhe', 'info', 'GET', 'a:0:{}', '1501063732');
INSERT INTO `tp_web_log_001` VALUES ('591', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info.html', 'admin', 'Huanzhe', 'info', 'GET', 'a:0:{}', '1501063793');
INSERT INTO `tp_web_log_001` VALUES ('592', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html?username=', 'admin', 'Huanzhe', 'index', 'GET', 'a:1:{s:8:\"username\";s:0:\"\";}', '1501064073');
INSERT INTO `tp_web_log_001` VALUES ('593', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info.html', 'admin', 'Huanzhe', 'info', 'GET', 'a:0:{}', '1501064074');
INSERT INTO `tp_web_log_001` VALUES ('594', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501064077');
INSERT INTO `tp_web_log_001` VALUES ('595', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501064077');
INSERT INTO `tp_web_log_001` VALUES ('596', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501064080');
INSERT INTO `tp_web_log_001` VALUES ('597', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501064082');
INSERT INTO `tp_web_log_001` VALUES ('598', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info.html', 'admin', 'Huanzhe', 'info', 'GET', 'a:0:{}', '1501064083');
INSERT INTO `tp_web_log_001` VALUES ('599', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501064163');
INSERT INTO `tp_web_log_001` VALUES ('600', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501064164');
INSERT INTO `tp_web_log_001` VALUES ('601', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501064165');
INSERT INTO `tp_web_log_001` VALUES ('602', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501064205');
INSERT INTO `tp_web_log_001` VALUES ('603', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501064205');
INSERT INTO `tp_web_log_001` VALUES ('604', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501064206');
INSERT INTO `tp_web_log_001` VALUES ('605', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=4', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1501064307');
INSERT INTO `tp_web_log_001` VALUES ('606', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=4', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1501064350');
INSERT INTO `tp_web_log_001` VALUES ('607', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=4', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1501064366');
INSERT INTO `tp_web_log_001` VALUES ('608', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=4', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1501064495');
INSERT INTO `tp_web_log_001` VALUES ('609', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=4', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1501064527');
INSERT INTO `tp_web_log_001` VALUES ('610', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=4', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1501064547');
INSERT INTO `tp_web_log_001` VALUES ('611', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=4', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1501064611');
INSERT INTO `tp_web_log_001` VALUES ('612', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=4', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1501064626');
INSERT INTO `tp_web_log_001` VALUES ('613', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=4', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1501064646');
INSERT INTO `tp_web_log_001` VALUES ('614', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501064659');
INSERT INTO `tp_web_log_001` VALUES ('615', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501064660');
INSERT INTO `tp_web_log_001` VALUES ('616', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501064674');
INSERT INTO `tp_web_log_001` VALUES ('617', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501064676');
INSERT INTO `tp_web_log_001` VALUES ('618', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=4', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1501064677');
INSERT INTO `tp_web_log_001` VALUES ('619', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=4', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1501064690');
INSERT INTO `tp_web_log_001` VALUES ('620', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501064762');
INSERT INTO `tp_web_log_001` VALUES ('621', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html?p=2', 'admin', 'Huanzhe', 'index', 'GET', 'a:1:{s:1:\"p\";s:1:\"2\";}', '1501064831');
INSERT INTO `tp_web_log_001` VALUES ('622', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=11', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"11\";}', '1501064833');
INSERT INTO `tp_web_log_001` VALUES ('623', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html?p=1', 'admin', 'Huanzhe', 'index', 'GET', 'a:1:{s:1:\"p\";s:1:\"1\";}', '1501064841');
INSERT INTO `tp_web_log_001` VALUES ('624', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501064858');
INSERT INTO `tp_web_log_001` VALUES ('625', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501064911');
INSERT INTO `tp_web_log_001` VALUES ('626', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=4', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1501064936');
INSERT INTO `tp_web_log_001` VALUES ('627', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501065024');
INSERT INTO `tp_web_log_001` VALUES ('628', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501065024');
INSERT INTO `tp_web_log_001` VALUES ('629', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501065026');
INSERT INTO `tp_web_log_001` VALUES ('630', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501065027');
INSERT INTO `tp_web_log_001` VALUES ('631', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501065039');
INSERT INTO `tp_web_log_001` VALUES ('632', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501065040');
INSERT INTO `tp_web_log_001` VALUES ('633', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501065116');
INSERT INTO `tp_web_log_001` VALUES ('634', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501065124');
INSERT INTO `tp_web_log_001` VALUES ('635', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501065171');
INSERT INTO `tp_web_log_001` VALUES ('636', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501065172');
INSERT INTO `tp_web_log_001` VALUES ('637', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501065174');
INSERT INTO `tp_web_log_001` VALUES ('638', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1501065188');
INSERT INTO `tp_web_log_001` VALUES ('639', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1501065188');
INSERT INTO `tp_web_log_001` VALUES ('640', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1501065190');
INSERT INTO `tp_web_log_001` VALUES ('641', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1501065192');
INSERT INTO `tp_web_log_001` VALUES ('642', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501065194');
INSERT INTO `tp_web_log_001` VALUES ('643', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501065321');
INSERT INTO `tp_web_log_001` VALUES ('644', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501065352');
INSERT INTO `tp_web_log_001` VALUES ('645', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501065379');
INSERT INTO `tp_web_log_001` VALUES ('646', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501065380');
INSERT INTO `tp_web_log_001` VALUES ('647', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501065382');
INSERT INTO `tp_web_log_001` VALUES ('648', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501065383');
INSERT INTO `tp_web_log_001` VALUES ('649', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501065451');
INSERT INTO `tp_web_log_001` VALUES ('650', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501065469');
INSERT INTO `tp_web_log_001` VALUES ('651', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501065498');
INSERT INTO `tp_web_log_001` VALUES ('652', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501065900');
INSERT INTO `tp_web_log_001` VALUES ('653', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501065969');
INSERT INTO `tp_web_log_001` VALUES ('654', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=13', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"13\";}', '1501065979');
INSERT INTO `tp_web_log_001` VALUES ('655', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=9', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:1:\"9\";}', '1501065983');
INSERT INTO `tp_web_log_001` VALUES ('656', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=7', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:1:\"7\";}', '1501065986');
INSERT INTO `tp_web_log_001` VALUES ('657', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=5', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1501065989');
INSERT INTO `tp_web_log_001` VALUES ('658', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=10', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"10\";}', '1501065992');
INSERT INTO `tp_web_log_001` VALUES ('659', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501121953');
INSERT INTO `tp_web_log_001` VALUES ('660', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501121954');
INSERT INTO `tp_web_log_001` VALUES ('661', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501124253');
INSERT INTO `tp_web_log_001` VALUES ('662', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501124388');
INSERT INTO `tp_web_log_001` VALUES ('663', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501124401');
INSERT INTO `tp_web_log_001` VALUES ('664', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501124424');
INSERT INTO `tp_web_log_001` VALUES ('665', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501124466');
INSERT INTO `tp_web_log_001` VALUES ('666', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501124523');
INSERT INTO `tp_web_log_001` VALUES ('667', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501124561');
INSERT INTO `tp_web_log_001` VALUES ('668', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501124848');
INSERT INTO `tp_web_log_001` VALUES ('669', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501125770');
INSERT INTO `tp_web_log_001` VALUES ('670', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501125806');
INSERT INTO `tp_web_log_001` VALUES ('671', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501126323');
INSERT INTO `tp_web_log_001` VALUES ('672', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501126331');
INSERT INTO `tp_web_log_001` VALUES ('673', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501126388');
INSERT INTO `tp_web_log_001` VALUES ('674', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501126388');
INSERT INTO `tp_web_log_001` VALUES ('675', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501126468');
INSERT INTO `tp_web_log_001` VALUES ('676', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501126469');
INSERT INTO `tp_web_log_001` VALUES ('677', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501128002');
INSERT INTO `tp_web_log_001` VALUES ('678', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501128003');
INSERT INTO `tp_web_log_001` VALUES ('679', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1501137997');
INSERT INTO `tp_web_log_001` VALUES ('680', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1501138017');
INSERT INTO `tp_web_log_001` VALUES ('681', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login?mobile=null', 'home', 'Index', 'login', 'GET', 'a:1:{s:6:\"mobile\";s:4:\"null\";}', '1501138017');
INSERT INTO `tp_web_log_001` VALUES ('682', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/index', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1501138030');
INSERT INTO `tp_web_log_001` VALUES ('683', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/index', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1501138125');
INSERT INTO `tp_web_log_001` VALUES ('684', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login?mobile=null', 'home', 'Index', 'login', 'GET', 'a:1:{s:6:\"mobile\";s:4:\"null\";}', '1501138125');
INSERT INTO `tp_web_log_001` VALUES ('685', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/index', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1501138138');
INSERT INTO `tp_web_log_001` VALUES ('686', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/index', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1501138153');
INSERT INTO `tp_web_log_001` VALUES ('687', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login?mobile=null', 'home', 'Index', 'login', 'GET', 'a:1:{s:6:\"mobile\";s:4:\"null\";}', '1501138153');
INSERT INTO `tp_web_log_001` VALUES ('688', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501138982');
INSERT INTO `tp_web_log_001` VALUES ('689', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501138982');
INSERT INTO `tp_web_log_001` VALUES ('690', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'IE(7.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501138993');
INSERT INTO `tp_web_log_001` VALUES ('691', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'IE(7.0)', 'http://admin.tll.com/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1501138993');
INSERT INTO `tp_web_log_001` VALUES ('692', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'IE(7.0)', 'http://admin.tll.com/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1501139008');
INSERT INTO `tp_web_log_001` VALUES ('693', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501140311');
INSERT INTO `tp_web_log_001` VALUES ('694', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501140424');
INSERT INTO `tp_web_log_001` VALUES ('695', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501140426');
INSERT INTO `tp_web_log_001` VALUES ('696', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html?p=2', 'admin', 'Huanzhe', 'index', 'GET', 'a:1:{s:1:\"p\";s:1:\"2\";}', '1501140437');
INSERT INTO `tp_web_log_001` VALUES ('697', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html?username=l', 'admin', 'Huanzhe', 'index', 'GET', 'a:1:{s:8:\"username\";s:1:\"l\";}', '1501140441');
INSERT INTO `tp_web_log_001` VALUES ('698', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html?p=2', 'admin', 'Huanzhe', 'index', 'GET', 'a:1:{s:1:\"p\";s:1:\"2\";}', '1501140444');
INSERT INTO `tp_web_log_001` VALUES ('699', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html?p=1', 'admin', 'Huanzhe', 'index', 'GET', 'a:1:{s:1:\"p\";s:1:\"1\";}', '1501140450');
INSERT INTO `tp_web_log_001` VALUES ('700', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501140894');
INSERT INTO `tp_web_log_001` VALUES ('701', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501140904');
INSERT INTO `tp_web_log_001` VALUES ('702', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501140908');
INSERT INTO `tp_web_log_001` VALUES ('703', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501141214');
INSERT INTO `tp_web_log_001` VALUES ('704', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501141214');
INSERT INTO `tp_web_log_001` VALUES ('705', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501141553');
INSERT INTO `tp_web_log_001` VALUES ('706', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501141553');
INSERT INTO `tp_web_log_001` VALUES ('707', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501141632');
INSERT INTO `tp_web_log_001` VALUES ('708', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501141632');
INSERT INTO `tp_web_log_001` VALUES ('709', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501141735');
INSERT INTO `tp_web_log_001` VALUES ('710', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501141735');
INSERT INTO `tp_web_log_001` VALUES ('711', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501141748');
INSERT INTO `tp_web_log_001` VALUES ('712', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501141749');
INSERT INTO `tp_web_log_001` VALUES ('713', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501141775');
INSERT INTO `tp_web_log_001` VALUES ('714', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501141775');
INSERT INTO `tp_web_log_001` VALUES ('715', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1501142918');
INSERT INTO `tp_web_log_001` VALUES ('716', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login?mobile=null', 'home', 'Index', 'login', 'GET', 'a:1:{s:6:\"mobile\";s:4:\"null\";}', '1501142933');
INSERT INTO `tp_web_log_001` VALUES ('717', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1501142936');
INSERT INTO `tp_web_log_001` VALUES ('718', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login?mobile=null', 'home', 'Index', 'login', 'GET', 'a:1:{s:6:\"mobile\";s:4:\"null\";}', '1501142936');
INSERT INTO `tp_web_log_001` VALUES ('719', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pn', 'home', 'Index', 'pn', 'GET', 'a:0:{}', '1501142944');
INSERT INTO `tp_web_log_001` VALUES ('720', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pnjs', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501142947');
INSERT INTO `tp_web_log_001` VALUES ('721', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pnjs', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501142975');
INSERT INTO `tp_web_log_001` VALUES ('722', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pnjs', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501142978');
INSERT INTO `tp_web_log_001` VALUES ('723', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pnjs', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501142978');
INSERT INTO `tp_web_log_001` VALUES ('724', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pnjs', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501142992');
INSERT INTO `tp_web_log_001` VALUES ('725', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pn', 'home', 'Index', 'pn', 'GET', 'a:0:{}', '1501143150');
INSERT INTO `tp_web_log_001` VALUES ('726', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login?mobile=null', 'home', 'Index', 'login', 'GET', 'a:1:{s:6:\"mobile\";s:4:\"null\";}', '1501143152');
INSERT INTO `tp_web_log_001` VALUES ('727', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pn', 'home', 'Index', 'pn', 'GET', 'a:0:{}', '1501143162');
INSERT INTO `tp_web_log_001` VALUES ('728', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pnjs', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501143167');
INSERT INTO `tp_web_log_001` VALUES ('729', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1501143192');
INSERT INTO `tp_web_log_001` VALUES ('730', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1501143224');
INSERT INTO `tp_web_log_001` VALUES ('731', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pnjs', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501143246');
INSERT INTO `tp_web_log_001` VALUES ('732', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1501143430');
INSERT INTO `tp_web_log_001` VALUES ('733', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login?mobile=null', 'home', 'Index', 'login', 'GET', 'a:1:{s:6:\"mobile\";s:4:\"null\";}', '1501143430');
INSERT INTO `tp_web_log_001` VALUES ('734', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501143856');
INSERT INTO `tp_web_log_001` VALUES ('735', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pnjs', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501143864');
INSERT INTO `tp_web_log_001` VALUES ('736', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501143900');
INSERT INTO `tp_web_log_001` VALUES ('737', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501143905');
INSERT INTO `tp_web_log_001` VALUES ('738', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501146750');
INSERT INTO `tp_web_log_001` VALUES ('739', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501146799');
INSERT INTO `tp_web_log_001` VALUES ('740', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/admin', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501147383');
INSERT INTO `tp_web_log_001` VALUES ('741', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1501147383');
INSERT INTO `tp_web_log_001` VALUES ('742', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/admin/pub/checklogin.html', 'admin', 'Pub', 'checklogin', 'POST', 'a:3:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"b57f\";}', '1501147394');
INSERT INTO `tp_web_log_001` VALUES ('743', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/admin/pub/checklogin.html', 'admin', 'Pub', 'checklogin', 'POST', 'a:3:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"vywk\";}', '1501147403');
INSERT INTO `tp_web_log_001` VALUES ('744', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501147403');
INSERT INTO `tp_web_log_001` VALUES ('745', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501147403');
INSERT INTO `tp_web_log_001` VALUES ('746', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501147406');
INSERT INTO `tp_web_log_001` VALUES ('747', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501147673');
INSERT INTO `tp_web_log_001` VALUES ('748', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501147703');
INSERT INTO `tp_web_log_001` VALUES ('749', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501147703');
INSERT INTO `tp_web_log_001` VALUES ('750', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501147705');
INSERT INTO `tp_web_log_001` VALUES ('751', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501147705');
INSERT INTO `tp_web_log_001` VALUES ('752', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501147924');
INSERT INTO `tp_web_log_001` VALUES ('753', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501147938');
INSERT INTO `tp_web_log_001` VALUES ('754', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/admin/yisheng/info?uid=2', 'admin', 'Yisheng', 'info', 'GET', 'a:1:{s:3:\"uid\";s:1:\"2\";}', '1501147989');
INSERT INTO `tp_web_log_001` VALUES ('755', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/admin/yisheng/info?uid=2', 'admin', 'Yisheng', 'info', 'GET', 'a:1:{s:3:\"uid\";s:1:\"2\";}', '1501148019');
INSERT INTO `tp_web_log_001` VALUES ('756', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501148308');
INSERT INTO `tp_web_log_001` VALUES ('757', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501148629');
INSERT INTO `tp_web_log_001` VALUES ('758', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501148630');
INSERT INTO `tp_web_log_001` VALUES ('759', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501148631');
INSERT INTO `tp_web_log_001` VALUES ('760', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501148632');
INSERT INTO `tp_web_log_001` VALUES ('761', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501148810');
INSERT INTO `tp_web_log_001` VALUES ('762', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1501148811');
INSERT INTO `tp_web_log_001` VALUES ('763', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/pub/checklogin.html', 'admin', 'Pub', 'checklogin', 'POST', 'a:3:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"ecqx\";}', '1501148820');
INSERT INTO `tp_web_log_001` VALUES ('764', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501148820');
INSERT INTO `tp_web_log_001` VALUES ('765', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501148820');
INSERT INTO `tp_web_log_001` VALUES ('766', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501148824');
INSERT INTO `tp_web_log_001` VALUES ('767', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/info?uid=3', 'admin', 'Yisheng', 'info', 'GET', 'a:1:{s:3:\"uid\";s:1:\"3\";}', '1501149035');
INSERT INTO `tp_web_log_001` VALUES ('768', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/info?uid=3', 'admin', 'Yisheng', 'info', 'GET', 'a:1:{s:3:\"uid\";s:1:\"3\";}', '1501149068');
INSERT INTO `tp_web_log_001` VALUES ('769', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/info?uid=3', 'admin', 'Yisheng', 'info', 'GET', 'a:1:{s:3:\"uid\";s:1:\"3\";}', '1501149071');
INSERT INTO `tp_web_log_001` VALUES ('770', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501149203');
INSERT INTO `tp_web_log_001` VALUES ('771', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501149204');
INSERT INTO `tp_web_log_001` VALUES ('772', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501149206');
INSERT INTO `tp_web_log_001` VALUES ('773', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/info?uid=3', 'admin', 'Yisheng', 'info', 'GET', 'a:1:{s:3:\"uid\";s:1:\"3\";}', '1501149250');
INSERT INTO `tp_web_log_001` VALUES ('774', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501149281');
INSERT INTO `tp_web_log_001` VALUES ('775', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501149453');
INSERT INTO `tp_web_log_001` VALUES ('776', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501149475');
INSERT INTO `tp_web_log_001` VALUES ('777', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501149538');
INSERT INTO `tp_web_log_001` VALUES ('778', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501149579');
INSERT INTO `tp_web_log_001` VALUES ('779', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501149580');
INSERT INTO `tp_web_log_001` VALUES ('780', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1501149580');
INSERT INTO `tp_web_log_001` VALUES ('781', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501149581');
INSERT INTO `tp_web_log_001` VALUES ('782', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501149581');
INSERT INTO `tp_web_log_001` VALUES ('783', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501149583');
INSERT INTO `tp_web_log_001` VALUES ('784', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501149583');
INSERT INTO `tp_web_log_001` VALUES ('785', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501149598');
INSERT INTO `tp_web_log_001` VALUES ('786', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501149598');
INSERT INTO `tp_web_log_001` VALUES ('787', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/demo/excel.html', 'admin', 'Demo', 'excel', 'GET', 'a:0:{}', '1501149601');
INSERT INTO `tp_web_log_001` VALUES ('788', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501149639');
INSERT INTO `tp_web_log_001` VALUES ('789', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'POST', 'a:0:{}', '1501149642');
INSERT INTO `tp_web_log_001` VALUES ('790', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501149829');
INSERT INTO `tp_web_log_001` VALUES ('791', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501149830');
INSERT INTO `tp_web_log_001` VALUES ('792', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501149832');
INSERT INTO `tp_web_log_001` VALUES ('793', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html?username=', 'admin', 'Huanzhe', 'index', 'GET', 'a:1:{s:8:\"username\";s:0:\"\";}', '1501149833');
INSERT INTO `tp_web_log_001` VALUES ('794', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/demo/excel.html', 'admin', 'Demo', 'excel', 'GET', 'a:0:{}', '1501149871');
INSERT INTO `tp_web_log_001` VALUES ('795', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501149902');
INSERT INTO `tp_web_log_001` VALUES ('796', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501149903');
INSERT INTO `tp_web_log_001` VALUES ('797', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501150177');
INSERT INTO `tp_web_log_001` VALUES ('798', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501150177');
INSERT INTO `tp_web_log_001` VALUES ('799', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501150178');
INSERT INTO `tp_web_log_001` VALUES ('800', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501150178');
INSERT INTO `tp_web_log_001` VALUES ('801', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501150217');
INSERT INTO `tp_web_log_001` VALUES ('802', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501150218');
INSERT INTO `tp_web_log_001` VALUES ('803', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501150239');
INSERT INTO `tp_web_log_001` VALUES ('804', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'POST', 'a:0:{}', '1501150280');
INSERT INTO `tp_web_log_001` VALUES ('805', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/export', 'admin', 'Huanzhe', 'export', 'GET', 'a:0:{}', '1501150283');
INSERT INTO `tp_web_log_001` VALUES ('806', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501150422');
INSERT INTO `tp_web_log_001` VALUES ('807', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/export', 'admin', 'Huanzhe', 'export', 'GET', 'a:0:{}', '1501150425');
INSERT INTO `tp_web_log_001` VALUES ('808', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/export', 'admin', 'Huanzhe', 'export', 'GET', 'a:0:{}', '1501150777');
INSERT INTO `tp_web_log_001` VALUES ('809', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501150854');
INSERT INTO `tp_web_log_001` VALUES ('810', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/export', 'admin', 'Huanzhe', 'export', 'GET', 'a:0:{}', '1501150855');
INSERT INTO `tp_web_log_001` VALUES ('811', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501151283');
INSERT INTO `tp_web_log_001` VALUES ('812', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501151283');
INSERT INTO `tp_web_log_001` VALUES ('813', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151288');
INSERT INTO `tp_web_log_001` VALUES ('814', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151289');
INSERT INTO `tp_web_log_001` VALUES ('815', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151289');
INSERT INTO `tp_web_log_001` VALUES ('816', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151289');
INSERT INTO `tp_web_log_001` VALUES ('817', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151290');
INSERT INTO `tp_web_log_001` VALUES ('818', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151290');
INSERT INTO `tp_web_log_001` VALUES ('819', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151290');
INSERT INTO `tp_web_log_001` VALUES ('820', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151290');
INSERT INTO `tp_web_log_001` VALUES ('821', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151291');
INSERT INTO `tp_web_log_001` VALUES ('822', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151291');
INSERT INTO `tp_web_log_001` VALUES ('823', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151291');
INSERT INTO `tp_web_log_001` VALUES ('824', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151292');
INSERT INTO `tp_web_log_001` VALUES ('825', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151292');
INSERT INTO `tp_web_log_001` VALUES ('826', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151292');
INSERT INTO `tp_web_log_001` VALUES ('827', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151292');
INSERT INTO `tp_web_log_001` VALUES ('828', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151293');
INSERT INTO `tp_web_log_001` VALUES ('829', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151293');
INSERT INTO `tp_web_log_001` VALUES ('830', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151293');
INSERT INTO `tp_web_log_001` VALUES ('831', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151293');
INSERT INTO `tp_web_log_001` VALUES ('832', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151294');
INSERT INTO `tp_web_log_001` VALUES ('833', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151294');
INSERT INTO `tp_web_log_001` VALUES ('834', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151294');
INSERT INTO `tp_web_log_001` VALUES ('835', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151295');
INSERT INTO `tp_web_log_001` VALUES ('836', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151295');
INSERT INTO `tp_web_log_001` VALUES ('837', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151295');
INSERT INTO `tp_web_log_001` VALUES ('838', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151295');
INSERT INTO `tp_web_log_001` VALUES ('839', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151296');
INSERT INTO `tp_web_log_001` VALUES ('840', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151296');
INSERT INTO `tp_web_log_001` VALUES ('841', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151296');
INSERT INTO `tp_web_log_001` VALUES ('842', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151296');
INSERT INTO `tp_web_log_001` VALUES ('843', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151297');
INSERT INTO `tp_web_log_001` VALUES ('844', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151297');
INSERT INTO `tp_web_log_001` VALUES ('845', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151297');
INSERT INTO `tp_web_log_001` VALUES ('846', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151297');
INSERT INTO `tp_web_log_001` VALUES ('847', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151298');
INSERT INTO `tp_web_log_001` VALUES ('848', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151298');
INSERT INTO `tp_web_log_001` VALUES ('849', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151298');
INSERT INTO `tp_web_log_001` VALUES ('850', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151298');
INSERT INTO `tp_web_log_001` VALUES ('851', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151299');
INSERT INTO `tp_web_log_001` VALUES ('852', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151299');
INSERT INTO `tp_web_log_001` VALUES ('853', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151299');
INSERT INTO `tp_web_log_001` VALUES ('854', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151299');
INSERT INTO `tp_web_log_001` VALUES ('855', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151300');
INSERT INTO `tp_web_log_001` VALUES ('856', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151300');
INSERT INTO `tp_web_log_001` VALUES ('857', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151300');
INSERT INTO `tp_web_log_001` VALUES ('858', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151300');
INSERT INTO `tp_web_log_001` VALUES ('859', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151301');
INSERT INTO `tp_web_log_001` VALUES ('860', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151301');
INSERT INTO `tp_web_log_001` VALUES ('861', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151301');
INSERT INTO `tp_web_log_001` VALUES ('862', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151302');
INSERT INTO `tp_web_log_001` VALUES ('863', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151302');
INSERT INTO `tp_web_log_001` VALUES ('864', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151302');
INSERT INTO `tp_web_log_001` VALUES ('865', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151302');
INSERT INTO `tp_web_log_001` VALUES ('866', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151303');
INSERT INTO `tp_web_log_001` VALUES ('867', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151303');
INSERT INTO `tp_web_log_001` VALUES ('868', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151303');
INSERT INTO `tp_web_log_001` VALUES ('869', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151304');
INSERT INTO `tp_web_log_001` VALUES ('870', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151304');
INSERT INTO `tp_web_log_001` VALUES ('871', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151304');
INSERT INTO `tp_web_log_001` VALUES ('872', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151304');
INSERT INTO `tp_web_log_001` VALUES ('873', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151305');
INSERT INTO `tp_web_log_001` VALUES ('874', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151305');
INSERT INTO `tp_web_log_001` VALUES ('875', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151305');
INSERT INTO `tp_web_log_001` VALUES ('876', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151305');
INSERT INTO `tp_web_log_001` VALUES ('877', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151306');
INSERT INTO `tp_web_log_001` VALUES ('878', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151306');
INSERT INTO `tp_web_log_001` VALUES ('879', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151306');
INSERT INTO `tp_web_log_001` VALUES ('880', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151306');
INSERT INTO `tp_web_log_001` VALUES ('881', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151307');
INSERT INTO `tp_web_log_001` VALUES ('882', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151307');
INSERT INTO `tp_web_log_001` VALUES ('883', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151307');
INSERT INTO `tp_web_log_001` VALUES ('884', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151307');
INSERT INTO `tp_web_log_001` VALUES ('885', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151308');
INSERT INTO `tp_web_log_001` VALUES ('886', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151308');
INSERT INTO `tp_web_log_001` VALUES ('887', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151308');
INSERT INTO `tp_web_log_001` VALUES ('888', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151309');
INSERT INTO `tp_web_log_001` VALUES ('889', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151309');
INSERT INTO `tp_web_log_001` VALUES ('890', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151309');
INSERT INTO `tp_web_log_001` VALUES ('891', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151309');
INSERT INTO `tp_web_log_001` VALUES ('892', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151310');
INSERT INTO `tp_web_log_001` VALUES ('893', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151310');
INSERT INTO `tp_web_log_001` VALUES ('894', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151310');
INSERT INTO `tp_web_log_001` VALUES ('895', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151311');
INSERT INTO `tp_web_log_001` VALUES ('896', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151311');
INSERT INTO `tp_web_log_001` VALUES ('897', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151311');
INSERT INTO `tp_web_log_001` VALUES ('898', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151312');
INSERT INTO `tp_web_log_001` VALUES ('899', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151312');
INSERT INTO `tp_web_log_001` VALUES ('900', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151312');
INSERT INTO `tp_web_log_001` VALUES ('901', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151313');
INSERT INTO `tp_web_log_001` VALUES ('902', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151313');
INSERT INTO `tp_web_log_001` VALUES ('903', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151313');
INSERT INTO `tp_web_log_001` VALUES ('904', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151313');
INSERT INTO `tp_web_log_001` VALUES ('905', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151314');
INSERT INTO `tp_web_log_001` VALUES ('906', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151314');
INSERT INTO `tp_web_log_001` VALUES ('907', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151314');
INSERT INTO `tp_web_log_001` VALUES ('908', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151314');
INSERT INTO `tp_web_log_001` VALUES ('909', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151315');
INSERT INTO `tp_web_log_001` VALUES ('910', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151315');
INSERT INTO `tp_web_log_001` VALUES ('911', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151315');
INSERT INTO `tp_web_log_001` VALUES ('912', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151316');
INSERT INTO `tp_web_log_001` VALUES ('913', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151316');
INSERT INTO `tp_web_log_001` VALUES ('914', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151316');
INSERT INTO `tp_web_log_001` VALUES ('915', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151316');
INSERT INTO `tp_web_log_001` VALUES ('916', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151317');
INSERT INTO `tp_web_log_001` VALUES ('917', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151317');
INSERT INTO `tp_web_log_001` VALUES ('918', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151317');
INSERT INTO `tp_web_log_001` VALUES ('919', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151317');
INSERT INTO `tp_web_log_001` VALUES ('920', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151318');
INSERT INTO `tp_web_log_001` VALUES ('921', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151318');
INSERT INTO `tp_web_log_001` VALUES ('922', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151318');
INSERT INTO `tp_web_log_001` VALUES ('923', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151318');
INSERT INTO `tp_web_log_001` VALUES ('924', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151319');
INSERT INTO `tp_web_log_001` VALUES ('925', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151319');
INSERT INTO `tp_web_log_001` VALUES ('926', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151319');
INSERT INTO `tp_web_log_001` VALUES ('927', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151320');
INSERT INTO `tp_web_log_001` VALUES ('928', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151320');
INSERT INTO `tp_web_log_001` VALUES ('929', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151320');
INSERT INTO `tp_web_log_001` VALUES ('930', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151320');
INSERT INTO `tp_web_log_001` VALUES ('931', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151321');
INSERT INTO `tp_web_log_001` VALUES ('932', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151321');
INSERT INTO `tp_web_log_001` VALUES ('933', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151321');
INSERT INTO `tp_web_log_001` VALUES ('934', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151321');
INSERT INTO `tp_web_log_001` VALUES ('935', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151322');
INSERT INTO `tp_web_log_001` VALUES ('936', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151322');
INSERT INTO `tp_web_log_001` VALUES ('937', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151322');
INSERT INTO `tp_web_log_001` VALUES ('938', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151322');
INSERT INTO `tp_web_log_001` VALUES ('939', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151323');
INSERT INTO `tp_web_log_001` VALUES ('940', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151323');
INSERT INTO `tp_web_log_001` VALUES ('941', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151323');
INSERT INTO `tp_web_log_001` VALUES ('942', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151324');
INSERT INTO `tp_web_log_001` VALUES ('943', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151324');
INSERT INTO `tp_web_log_001` VALUES ('944', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151324');
INSERT INTO `tp_web_log_001` VALUES ('945', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151325');
INSERT INTO `tp_web_log_001` VALUES ('946', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151325');
INSERT INTO `tp_web_log_001` VALUES ('947', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151325');
INSERT INTO `tp_web_log_001` VALUES ('948', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151325');
INSERT INTO `tp_web_log_001` VALUES ('949', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151326');
INSERT INTO `tp_web_log_001` VALUES ('950', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151326');
INSERT INTO `tp_web_log_001` VALUES ('951', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151326');
INSERT INTO `tp_web_log_001` VALUES ('952', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151327');
INSERT INTO `tp_web_log_001` VALUES ('953', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151327');
INSERT INTO `tp_web_log_001` VALUES ('954', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151327');
INSERT INTO `tp_web_log_001` VALUES ('955', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151327');
INSERT INTO `tp_web_log_001` VALUES ('956', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151328');
INSERT INTO `tp_web_log_001` VALUES ('957', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151328');
INSERT INTO `tp_web_log_001` VALUES ('958', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151328');
INSERT INTO `tp_web_log_001` VALUES ('959', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151328');
INSERT INTO `tp_web_log_001` VALUES ('960', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151329');
INSERT INTO `tp_web_log_001` VALUES ('961', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151329');
INSERT INTO `tp_web_log_001` VALUES ('962', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151329');
INSERT INTO `tp_web_log_001` VALUES ('963', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151329');
INSERT INTO `tp_web_log_001` VALUES ('964', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151330');
INSERT INTO `tp_web_log_001` VALUES ('965', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151330');
INSERT INTO `tp_web_log_001` VALUES ('966', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151330');
INSERT INTO `tp_web_log_001` VALUES ('967', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151331');
INSERT INTO `tp_web_log_001` VALUES ('968', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151331');
INSERT INTO `tp_web_log_001` VALUES ('969', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151331');
INSERT INTO `tp_web_log_001` VALUES ('970', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151331');
INSERT INTO `tp_web_log_001` VALUES ('971', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151332');
INSERT INTO `tp_web_log_001` VALUES ('972', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151332');
INSERT INTO `tp_web_log_001` VALUES ('973', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151332');
INSERT INTO `tp_web_log_001` VALUES ('974', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151332');
INSERT INTO `tp_web_log_001` VALUES ('975', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151333');
INSERT INTO `tp_web_log_001` VALUES ('976', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151333');
INSERT INTO `tp_web_log_001` VALUES ('977', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151333');
INSERT INTO `tp_web_log_001` VALUES ('978', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151333');
INSERT INTO `tp_web_log_001` VALUES ('979', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151334');
INSERT INTO `tp_web_log_001` VALUES ('980', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151334');
INSERT INTO `tp_web_log_001` VALUES ('981', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151334');
INSERT INTO `tp_web_log_001` VALUES ('982', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151335');
INSERT INTO `tp_web_log_001` VALUES ('983', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151335');
INSERT INTO `tp_web_log_001` VALUES ('984', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151335');
INSERT INTO `tp_web_log_001` VALUES ('985', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151336');
INSERT INTO `tp_web_log_001` VALUES ('986', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151336');
INSERT INTO `tp_web_log_001` VALUES ('987', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151336');
INSERT INTO `tp_web_log_001` VALUES ('988', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151336');
INSERT INTO `tp_web_log_001` VALUES ('989', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151337');
INSERT INTO `tp_web_log_001` VALUES ('990', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151337');
INSERT INTO `tp_web_log_001` VALUES ('991', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151337');
INSERT INTO `tp_web_log_001` VALUES ('992', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151338');
INSERT INTO `tp_web_log_001` VALUES ('993', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151338');
INSERT INTO `tp_web_log_001` VALUES ('994', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151338');
INSERT INTO `tp_web_log_001` VALUES ('995', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151338');
INSERT INTO `tp_web_log_001` VALUES ('996', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151339');
INSERT INTO `tp_web_log_001` VALUES ('997', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151339');
INSERT INTO `tp_web_log_001` VALUES ('998', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151339');
INSERT INTO `tp_web_log_001` VALUES ('999', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151339');
INSERT INTO `tp_web_log_001` VALUES ('1000', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151340');
INSERT INTO `tp_web_log_001` VALUES ('1001', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151340');
INSERT INTO `tp_web_log_001` VALUES ('1002', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151340');
INSERT INTO `tp_web_log_001` VALUES ('1003', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151340');
INSERT INTO `tp_web_log_001` VALUES ('1004', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151341');
INSERT INTO `tp_web_log_001` VALUES ('1005', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151341');
INSERT INTO `tp_web_log_001` VALUES ('1006', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151341');
INSERT INTO `tp_web_log_001` VALUES ('1007', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151342');
INSERT INTO `tp_web_log_001` VALUES ('1008', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151342');
INSERT INTO `tp_web_log_001` VALUES ('1009', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151343');
INSERT INTO `tp_web_log_001` VALUES ('1010', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151343');
INSERT INTO `tp_web_log_001` VALUES ('1011', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151343');
INSERT INTO `tp_web_log_001` VALUES ('1012', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151343');
INSERT INTO `tp_web_log_001` VALUES ('1013', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151344');
INSERT INTO `tp_web_log_001` VALUES ('1014', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151344');
INSERT INTO `tp_web_log_001` VALUES ('1015', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151344');
INSERT INTO `tp_web_log_001` VALUES ('1016', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151344');
INSERT INTO `tp_web_log_001` VALUES ('1017', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151345');
INSERT INTO `tp_web_log_001` VALUES ('1018', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151345');
INSERT INTO `tp_web_log_001` VALUES ('1019', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151345');
INSERT INTO `tp_web_log_001` VALUES ('1020', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151346');
INSERT INTO `tp_web_log_001` VALUES ('1021', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151346');
INSERT INTO `tp_web_log_001` VALUES ('1022', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151346');
INSERT INTO `tp_web_log_001` VALUES ('1023', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151346');
INSERT INTO `tp_web_log_001` VALUES ('1024', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151347');
INSERT INTO `tp_web_log_001` VALUES ('1025', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151347');
INSERT INTO `tp_web_log_001` VALUES ('1026', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151347');
INSERT INTO `tp_web_log_001` VALUES ('1027', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151347');
INSERT INTO `tp_web_log_001` VALUES ('1028', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151348');
INSERT INTO `tp_web_log_001` VALUES ('1029', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151348');
INSERT INTO `tp_web_log_001` VALUES ('1030', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151348');
INSERT INTO `tp_web_log_001` VALUES ('1031', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151348');
INSERT INTO `tp_web_log_001` VALUES ('1032', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151349');
INSERT INTO `tp_web_log_001` VALUES ('1033', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151349');
INSERT INTO `tp_web_log_001` VALUES ('1034', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151349');
INSERT INTO `tp_web_log_001` VALUES ('1035', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151349');
INSERT INTO `tp_web_log_001` VALUES ('1036', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151350');
INSERT INTO `tp_web_log_001` VALUES ('1037', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151350');
INSERT INTO `tp_web_log_001` VALUES ('1038', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151351');
INSERT INTO `tp_web_log_001` VALUES ('1039', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151351');
INSERT INTO `tp_web_log_001` VALUES ('1040', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151351');
INSERT INTO `tp_web_log_001` VALUES ('1041', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151352');
INSERT INTO `tp_web_log_001` VALUES ('1042', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151352');
INSERT INTO `tp_web_log_001` VALUES ('1043', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151352');
INSERT INTO `tp_web_log_001` VALUES ('1044', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151353');
INSERT INTO `tp_web_log_001` VALUES ('1045', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151353');
INSERT INTO `tp_web_log_001` VALUES ('1046', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151353');
INSERT INTO `tp_web_log_001` VALUES ('1047', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151353');
INSERT INTO `tp_web_log_001` VALUES ('1048', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151354');
INSERT INTO `tp_web_log_001` VALUES ('1049', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151377');
INSERT INTO `tp_web_log_001` VALUES ('1050', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151377');
INSERT INTO `tp_web_log_001` VALUES ('1051', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151378');
INSERT INTO `tp_web_log_001` VALUES ('1052', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151378');
INSERT INTO `tp_web_log_001` VALUES ('1053', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151378');
INSERT INTO `tp_web_log_001` VALUES ('1054', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151378');
INSERT INTO `tp_web_log_001` VALUES ('1055', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151379');
INSERT INTO `tp_web_log_001` VALUES ('1056', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151379');
INSERT INTO `tp_web_log_001` VALUES ('1057', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151379');
INSERT INTO `tp_web_log_001` VALUES ('1058', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151379');
INSERT INTO `tp_web_log_001` VALUES ('1059', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151380');
INSERT INTO `tp_web_log_001` VALUES ('1060', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151380');
INSERT INTO `tp_web_log_001` VALUES ('1061', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151380');
INSERT INTO `tp_web_log_001` VALUES ('1062', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151381');
INSERT INTO `tp_web_log_001` VALUES ('1063', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151381');
INSERT INTO `tp_web_log_001` VALUES ('1064', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151381');
INSERT INTO `tp_web_log_001` VALUES ('1065', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151381');
INSERT INTO `tp_web_log_001` VALUES ('1066', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151382');
INSERT INTO `tp_web_log_001` VALUES ('1067', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151382');
INSERT INTO `tp_web_log_001` VALUES ('1068', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151382');
INSERT INTO `tp_web_log_001` VALUES ('1069', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151382');
INSERT INTO `tp_web_log_001` VALUES ('1070', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151383');
INSERT INTO `tp_web_log_001` VALUES ('1071', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151383');
INSERT INTO `tp_web_log_001` VALUES ('1072', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151383');
INSERT INTO `tp_web_log_001` VALUES ('1073', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151383');
INSERT INTO `tp_web_log_001` VALUES ('1074', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151384');
INSERT INTO `tp_web_log_001` VALUES ('1075', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151384');
INSERT INTO `tp_web_log_001` VALUES ('1076', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151384');
INSERT INTO `tp_web_log_001` VALUES ('1077', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151385');
INSERT INTO `tp_web_log_001` VALUES ('1078', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151385');
INSERT INTO `tp_web_log_001` VALUES ('1079', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151385');
INSERT INTO `tp_web_log_001` VALUES ('1080', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151385');
INSERT INTO `tp_web_log_001` VALUES ('1081', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151386');
INSERT INTO `tp_web_log_001` VALUES ('1082', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151386');
INSERT INTO `tp_web_log_001` VALUES ('1083', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151386');
INSERT INTO `tp_web_log_001` VALUES ('1084', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151386');
INSERT INTO `tp_web_log_001` VALUES ('1085', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151387');
INSERT INTO `tp_web_log_001` VALUES ('1086', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151387');
INSERT INTO `tp_web_log_001` VALUES ('1087', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151387');
INSERT INTO `tp_web_log_001` VALUES ('1088', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151388');
INSERT INTO `tp_web_log_001` VALUES ('1089', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151388');
INSERT INTO `tp_web_log_001` VALUES ('1090', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151388');
INSERT INTO `tp_web_log_001` VALUES ('1091', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151388');
INSERT INTO `tp_web_log_001` VALUES ('1092', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151396');
INSERT INTO `tp_web_log_001` VALUES ('1093', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151437');
INSERT INTO `tp_web_log_001` VALUES ('1094', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index?mobile=18811216533', 'home', 'Index', 'index', 'GET', 'a:1:{s:6:\"mobile\";s:11:\"18811216533\";}', '1501151438');
INSERT INTO `tp_web_log_001` VALUES ('1095', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index?mobile=18811216533', 'home', 'Index', 'index', 'GET', 'a:1:{s:6:\"mobile\";s:11:\"18811216533\";}', '1501151484');
INSERT INTO `tp_web_log_001` VALUES ('1096', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151490');
INSERT INTO `tp_web_log_001` VALUES ('1097', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index?mobile=18811216533', 'home', 'Index', 'index', 'GET', 'a:1:{s:6:\"mobile\";s:11:\"18811216533\";}', '1501151490');
INSERT INTO `tp_web_log_001` VALUES ('1098', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1501151497');
INSERT INTO `tp_web_log_001` VALUES ('1099', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501151499');
INSERT INTO `tp_web_log_001` VALUES ('1100', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501151742');
INSERT INTO `tp_web_log_001` VALUES ('1101', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501151757');
INSERT INTO `tp_web_log_001` VALUES ('1102', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501151776');
INSERT INTO `tp_web_log_001` VALUES ('1103', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501151788');
INSERT INTO `tp_web_log_001` VALUES ('1104', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501151824');
INSERT INTO `tp_web_log_001` VALUES ('1105', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501151827');
INSERT INTO `tp_web_log_001` VALUES ('1106', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501151940');
INSERT INTO `tp_web_log_001` VALUES ('1107', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501151943');
INSERT INTO `tp_web_log_001` VALUES ('1108', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501151943');
INSERT INTO `tp_web_log_001` VALUES ('1109', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501151943');
INSERT INTO `tp_web_log_001` VALUES ('1110', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501151944');
INSERT INTO `tp_web_log_001` VALUES ('1111', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501151944');
INSERT INTO `tp_web_log_001` VALUES ('1112', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501151944');
INSERT INTO `tp_web_log_001` VALUES ('1113', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501151944');
INSERT INTO `tp_web_log_001` VALUES ('1114', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501151945');
INSERT INTO `tp_web_log_001` VALUES ('1115', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501151945');
INSERT INTO `tp_web_log_001` VALUES ('1116', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501151945');
INSERT INTO `tp_web_log_001` VALUES ('1117', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501151945');
INSERT INTO `tp_web_log_001` VALUES ('1118', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501151946');
INSERT INTO `tp_web_log_001` VALUES ('1119', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501151946');
INSERT INTO `tp_web_log_001` VALUES ('1120', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501151947');
INSERT INTO `tp_web_log_001` VALUES ('1121', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1501152157');
INSERT INTO `tp_web_log_001` VALUES ('1122', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1501152158');
INSERT INTO `tp_web_log_001` VALUES ('1123', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1501152233');
INSERT INTO `tp_web_log_001` VALUES ('1124', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1501152257');
INSERT INTO `tp_web_log_001` VALUES ('1125', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1501152267');
INSERT INTO `tp_web_log_001` VALUES ('1126', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1501152418');
INSERT INTO `tp_web_log_001` VALUES ('1127', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pninfo?username=tanglll', 'home', 'Index', 'pninfo', 'GET', 'a:1:{s:8:\"username\";s:7:\"tanglll\";}', '1501152419');
INSERT INTO `tp_web_log_001` VALUES ('1128', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1501152426');
INSERT INTO `tp_web_log_001` VALUES ('1129', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1501152445');
INSERT INTO `tp_web_log_001` VALUES ('1130', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1501152452');
INSERT INTO `tp_web_log_001` VALUES ('1131', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1501152468');
INSERT INTO `tp_web_log_001` VALUES ('1132', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501152470');
INSERT INTO `tp_web_log_001` VALUES ('1133', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501206765');
INSERT INTO `tp_web_log_001` VALUES ('1134', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501206765');
INSERT INTO `tp_web_log_001` VALUES ('1135', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501206939');
INSERT INTO `tp_web_log_001` VALUES ('1136', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501206940');
INSERT INTO `tp_web_log_001` VALUES ('1137', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501206941');
INSERT INTO `tp_web_log_001` VALUES ('1138', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501206941');
INSERT INTO `tp_web_log_001` VALUES ('1139', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501206944');
INSERT INTO `tp_web_log_001` VALUES ('1140', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501206944');
INSERT INTO `tp_web_log_001` VALUES ('1141', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1501206998');
INSERT INTO `tp_web_log_001` VALUES ('1142', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501207004');
INSERT INTO `tp_web_log_001` VALUES ('1143', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501207004');
INSERT INTO `tp_web_log_001` VALUES ('1144', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1501208322');
INSERT INTO `tp_web_log_001` VALUES ('1145', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1501208323');
INSERT INTO `tp_web_log_001` VALUES ('1146', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pninfo?username=tanglll', 'home', 'Index', 'pninfo', 'GET', 'a:1:{s:8:\"username\";s:7:\"tanglll\";}', '1501208326');
INSERT INTO `tp_web_log_001` VALUES ('1147', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501208342');
INSERT INTO `tp_web_log_001` VALUES ('1148', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501208371');
INSERT INTO `tp_web_log_001` VALUES ('1149', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501208403');
INSERT INTO `tp_web_log_001` VALUES ('1150', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501208419');
INSERT INTO `tp_web_log_001` VALUES ('1151', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501208428');
INSERT INTO `tp_web_log_001` VALUES ('1152', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=12', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"12\";}', '1501208442');
INSERT INTO `tp_web_log_001` VALUES ('1153', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501208471');
INSERT INTO `tp_web_log_001` VALUES ('1154', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501209055');
INSERT INTO `tp_web_log_001` VALUES ('1155', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1501209078');
INSERT INTO `tp_web_log_001` VALUES ('1156', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1501209080');
INSERT INTO `tp_web_log_001` VALUES ('1157', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501209081');
INSERT INTO `tp_web_log_001` VALUES ('1158', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1501209437');
INSERT INTO `tp_web_log_001` VALUES ('1159', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1501209449');
INSERT INTO `tp_web_log_001` VALUES ('1160', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/login?mobile=null', 'home', 'Index', 'login', 'GET', 'a:1:{s:6:\"mobile\";s:4:\"null\";}', '1501209449');
INSERT INTO `tp_web_log_001` VALUES ('1161', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/index', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1501209480');
INSERT INTO `tp_web_log_001` VALUES ('1162', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501209486');
INSERT INTO `tp_web_log_001` VALUES ('1163', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/info?uid=3', 'admin', 'Yisheng', 'info', 'GET', 'a:1:{s:3:\"uid\";s:1:\"3\";}', '1501209489');
INSERT INTO `tp_web_log_001` VALUES ('1164', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1501209927');
INSERT INTO `tp_web_log_001` VALUES ('1165', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1501209928');
INSERT INTO `tp_web_log_001` VALUES ('1166', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pninfo?username=tanglll', 'home', 'Index', 'pninfo', 'GET', 'a:1:{s:8:\"username\";s:7:\"tanglll\";}', '1501209931');
INSERT INTO `tp_web_log_001` VALUES ('1167', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pninfo?username=tanglll', 'home', 'Index', 'pninfo', 'GET', 'a:1:{s:8:\"username\";s:7:\"tanglll\";}', '1501209931');
INSERT INTO `tp_web_log_001` VALUES ('1168', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1501211555');
INSERT INTO `tp_web_log_001` VALUES ('1169', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1501211675');
INSERT INTO `tp_web_log_001` VALUES ('1170', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pninfo?username=tanglll', 'home', 'Index', 'pninfo', 'GET', 'a:1:{s:8:\"username\";s:7:\"tanglll\";}', '1501212823');
INSERT INTO `tp_web_log_001` VALUES ('1171', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1501212825');
INSERT INTO `tp_web_log_001` VALUES ('1172', '1', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1501212837');
INSERT INTO `tp_web_log_001` VALUES ('1173', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1501212864');
INSERT INTO `tp_web_log_001` VALUES ('1174', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/login?mobile=null', 'home', 'Index', 'login', 'GET', 'a:1:{s:6:\"mobile\";s:4:\"null\";}', '1501212865');
INSERT INTO `tp_web_log_001` VALUES ('1175', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/login?mobile=null', 'home', 'Index', 'login', 'GET', 'a:1:{s:6:\"mobile\";s:4:\"null\";}', '1501212898');
INSERT INTO `tp_web_log_001` VALUES ('1176', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/login?mobile=null', 'home', 'Index', 'login', 'GET', 'a:1:{s:6:\"mobile\";s:4:\"null\";}', '1501213076');
INSERT INTO `tp_web_log_001` VALUES ('1177', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/login?mobile=null', 'home', 'Index', 'login', 'GET', 'a:1:{s:6:\"mobile\";s:4:\"null\";}', '1501213104');
INSERT INTO `tp_web_log_001` VALUES ('1178', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/login?mobile=null', 'home', 'Index', 'login', 'GET', 'a:1:{s:6:\"mobile\";s:4:\"null\";}', '1501213188');
INSERT INTO `tp_web_log_001` VALUES ('1179', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/login?mobile=null', 'home', 'Index', 'login', 'GET', 'a:1:{s:6:\"mobile\";s:4:\"null\";}', '1501213452');
INSERT INTO `tp_web_log_001` VALUES ('1180', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/login?mobile=null', 'home', 'Index', 'login', 'GET', 'a:1:{s:6:\"mobile\";s:4:\"null\";}', '1501213465');
INSERT INTO `tp_web_log_001` VALUES ('1181', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/login?mobile=null', 'home', 'Index', 'login', 'GET', 'a:1:{s:6:\"mobile\";s:4:\"null\";}', '1501213485');
INSERT INTO `tp_web_log_001` VALUES ('1182', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/login?mobile=null', 'home', 'Index', 'login', 'GET', 'a:1:{s:6:\"mobile\";s:4:\"null\";}', '1501213691');
INSERT INTO `tp_web_log_001` VALUES ('1183', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1501228587');
INSERT INTO `tp_web_log_001` VALUES ('1184', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1501228588');
INSERT INTO `tp_web_log_001` VALUES ('1185', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1501228588');
INSERT INTO `tp_web_log_001` VALUES ('1186', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"2\";}', '1501228589');
INSERT INTO `tp_web_log_001` VALUES ('1187', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501489921');
INSERT INTO `tp_web_log_001` VALUES ('1188', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index?mobile=18811216533', 'home', 'Index', 'index', 'GET', 'a:1:{s:6:\"mobile\";s:11:\"18811216533\";}', '1501489921');
INSERT INTO `tp_web_log_001` VALUES ('1189', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index?mobile=18811216533', 'home', 'Index', 'index', 'GET', 'a:1:{s:6:\"mobile\";s:11:\"18811216533\";}', '1501490072');
INSERT INTO `tp_web_log_001` VALUES ('1190', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501490128');
INSERT INTO `tp_web_log_001` VALUES ('1191', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1501490128');
INSERT INTO `tp_web_log_001` VALUES ('1192', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/pub/checklogin.html', 'admin', 'Pub', 'checklogin', 'POST', 'a:3:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"dpiy\";}', '1501490135');
INSERT INTO `tp_web_log_001` VALUES ('1193', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501490135');
INSERT INTO `tp_web_log_001` VALUES ('1194', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501490136');
INSERT INTO `tp_web_log_001` VALUES ('1195', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501490476');
INSERT INTO `tp_web_log_001` VALUES ('1196', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501490476');
INSERT INTO `tp_web_log_001` VALUES ('1197', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501490478');
INSERT INTO `tp_web_log_001` VALUES ('1198', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html?p=2', 'admin', 'Huanzhe', 'index', 'GET', 'a:1:{s:1:\"p\";s:1:\"2\";}', '1501490484');
INSERT INTO `tp_web_log_001` VALUES ('1199', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501490579');
INSERT INTO `tp_web_log_001` VALUES ('1200', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1501490595');
INSERT INTO `tp_web_log_001` VALUES ('1201', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501490600');
INSERT INTO `tp_web_log_001` VALUES ('1202', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501490600');
INSERT INTO `tp_web_log_001` VALUES ('1203', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501490607');
INSERT INTO `tp_web_log_001` VALUES ('1204', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1501490607');
INSERT INTO `tp_web_log_001` VALUES ('1205', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501490617');
INSERT INTO `tp_web_log_001` VALUES ('1206', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501490619');
INSERT INTO `tp_web_log_001` VALUES ('1207', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/demo/excel.html', 'admin', 'Demo', 'excel', 'GET', 'a:0:{}', '1501490622');
INSERT INTO `tp_web_log_001` VALUES ('1208', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1501490921');
INSERT INTO `tp_web_log_001` VALUES ('1209', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1501490922');

-- ----------------------------
-- Table structure for `tp_web_log_all`
-- ----------------------------
DROP TABLE IF EXISTS `tp_web_log_all`;
CREATE TABLE `tp_web_log_all` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `uid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `ip` char(15) NOT NULL DEFAULT '' COMMENT '访客ip',
  `location` varchar(255) NOT NULL DEFAULT '' COMMENT '访客地址',
  `os` varchar(255) NOT NULL DEFAULT '' COMMENT '操作系统',
  `browser` varchar(255) NOT NULL DEFAULT '' COMMENT '浏览器',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT 'url',
  `module` varchar(255) NOT NULL DEFAULT '' COMMENT '模块',
  `controller` varchar(255) NOT NULL DEFAULT '' COMMENT '控制器',
  `action` varchar(255) NOT NULL DEFAULT '' COMMENT '方法',
  `method` char(6) NOT NULL DEFAULT '' COMMENT '请求方式',
  `data` text COMMENT '请求的param数据，serialize后的',
  `create_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`) USING BTREE,
  KEY `ip` (`ip`) USING BTREE,
  KEY `create_at` (`create_at`) USING BTREE
) ENGINE=MRG_MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC INSERT_METHOD=LAST UNION=(`tp_web_log_001`) COMMENT='网站日志';

-- ----------------------------
-- Records of tp_web_log_all
-- ----------------------------
INSERT INTO `tp_web_log_all` VALUES ('1', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1500275265');
INSERT INTO `tp_web_log_all` VALUES ('2', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1500275265');
INSERT INTO `tp_web_log_all` VALUES ('3', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/pub/checklogin.html', 'admin', 'Pub', 'checklogin', 'POST', 'a:3:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"dn5e\";}', '1500275410');
INSERT INTO `tp_web_log_all` VALUES ('4', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1500275411');
INSERT INTO `tp_web_log_all` VALUES ('5', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1500275411');
INSERT INTO `tp_web_log_all` VALUES ('6', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1500278385');
INSERT INTO `tp_web_log_all` VALUES ('7', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1500278385');
INSERT INTO `tp_web_log_all` VALUES ('8', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1500278414');
INSERT INTO `tp_web_log_all` VALUES ('9', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1500278415');
INSERT INTO `tp_web_log_all` VALUES ('10', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1500278468');
INSERT INTO `tp_web_log_all` VALUES ('11', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1500278469');
INSERT INTO `tp_web_log_all` VALUES ('12', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1500278484');
INSERT INTO `tp_web_log_all` VALUES ('13', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1500278485');
INSERT INTO `tp_web_log_all` VALUES ('14', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1500278497');
INSERT INTO `tp_web_log_all` VALUES ('15', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1500278498');
INSERT INTO `tp_web_log_all` VALUES ('16', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500517365');
INSERT INTO `tp_web_log_all` VALUES ('17', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500519905');
INSERT INTO `tp_web_log_all` VALUES ('18', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500520019');
INSERT INTO `tp_web_log_all` VALUES ('19', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1500863180');
INSERT INTO `tp_web_log_all` VALUES ('20', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1500863180');
INSERT INTO `tp_web_log_all` VALUES ('21', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500863253');
INSERT INTO `tp_web_log_all` VALUES ('22', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/index', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500863271');
INSERT INTO `tp_web_log_all` VALUES ('23', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1500863317');
INSERT INTO `tp_web_log_all` VALUES ('24', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1500863318');
INSERT INTO `tp_web_log_all` VALUES ('25', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500863323');
INSERT INTO `tp_web_log_all` VALUES ('26', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500863840');
INSERT INTO `tp_web_log_all` VALUES ('27', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500863942');
INSERT INTO `tp_web_log_all` VALUES ('28', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500864097');
INSERT INTO `tp_web_log_all` VALUES ('29', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500864148');
INSERT INTO `tp_web_log_all` VALUES ('30', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500864213');
INSERT INTO `tp_web_log_all` VALUES ('31', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500864217');
INSERT INTO `tp_web_log_all` VALUES ('32', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500864279');
INSERT INTO `tp_web_log_all` VALUES ('33', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500864281');
INSERT INTO `tp_web_log_all` VALUES ('34', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500864283');
INSERT INTO `tp_web_log_all` VALUES ('35', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500864829');
INSERT INTO `tp_web_log_all` VALUES ('36', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500864831');
INSERT INTO `tp_web_log_all` VALUES ('37', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500864843');
INSERT INTO `tp_web_log_all` VALUES ('38', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500864878');
INSERT INTO `tp_web_log_all` VALUES ('39', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500865509');
INSERT INTO `tp_web_log_all` VALUES ('40', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pn', 'home', 'Index', 'pn', 'GET', 'a:0:{}', '1500865522');
INSERT INTO `tp_web_log_all` VALUES ('41', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pn', 'home', 'Index', 'pn', 'GET', 'a:0:{}', '1500865676');
INSERT INTO `tp_web_log_all` VALUES ('42', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pn', 'home', 'Index', 'pn', 'GET', 'a:0:{}', '1500865685');
INSERT INTO `tp_web_log_all` VALUES ('43', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500865886');
INSERT INTO `tp_web_log_all` VALUES ('44', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500865888');
INSERT INTO `tp_web_log_all` VALUES ('45', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500865889');
INSERT INTO `tp_web_log_all` VALUES ('46', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500866304');
INSERT INTO `tp_web_log_all` VALUES ('47', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500866305');
INSERT INTO `tp_web_log_all` VALUES ('48', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1500866313');
INSERT INTO `tp_web_log_all` VALUES ('49', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500866317');
INSERT INTO `tp_web_log_all` VALUES ('50', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pn.html', 'home', 'Index', 'pn', 'GET', 'a:0:{}', '1500866318');
INSERT INTO `tp_web_log_all` VALUES ('51', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500866321');
INSERT INTO `tp_web_log_all` VALUES ('52', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1500866322');
INSERT INTO `tp_web_log_all` VALUES ('53', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500866324');
INSERT INTO `tp_web_log_all` VALUES ('54', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500866327');
INSERT INTO `tp_web_log_all` VALUES ('55', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/ywjs', 'home', 'Index', 'ywjs', 'GET', 'a:0:{}', '1500866329');
INSERT INTO `tp_web_log_all` VALUES ('56', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500867288');
INSERT INTO `tp_web_log_all` VALUES ('57', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500867289');
INSERT INTO `tp_web_log_all` VALUES ('58', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1500867291');
INSERT INTO `tp_web_log_all` VALUES ('59', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500867297');
INSERT INTO `tp_web_log_all` VALUES ('60', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pn.html', 'home', 'Index', 'pn', 'GET', 'a:0:{}', '1500867298');
INSERT INTO `tp_web_log_all` VALUES ('61', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pn.html', 'home', 'Index', 'pn', 'GET', 'a:0:{}', '1500867603');
INSERT INTO `tp_web_log_all` VALUES ('62', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500867618');
INSERT INTO `tp_web_log_all` VALUES ('63', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1500867619');
INSERT INTO `tp_web_log_all` VALUES ('64', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1500867768');
INSERT INTO `tp_web_log_all` VALUES ('65', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500867779');
INSERT INTO `tp_web_log_all` VALUES ('66', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1500867780');
INSERT INTO `tp_web_log_all` VALUES ('67', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500867782');
INSERT INTO `tp_web_log_all` VALUES ('68', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pn.html', 'home', 'Index', 'pn', 'GET', 'a:0:{}', '1500867782');
INSERT INTO `tp_web_log_all` VALUES ('69', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500867785');
INSERT INTO `tp_web_log_all` VALUES ('70', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1500867787');
INSERT INTO `tp_web_log_all` VALUES ('71', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500867794');
INSERT INTO `tp_web_log_all` VALUES ('72', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1500867797');
INSERT INTO `tp_web_log_all` VALUES ('73', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500867798');
INSERT INTO `tp_web_log_all` VALUES ('74', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500867799');
INSERT INTO `tp_web_log_all` VALUES ('75', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/ywjs', 'home', 'Index', 'ywjs', 'GET', 'a:0:{}', '1500867800');
INSERT INTO `tp_web_log_all` VALUES ('76', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500867804');
INSERT INTO `tp_web_log_all` VALUES ('77', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500875289');
INSERT INTO `tp_web_log_all` VALUES ('78', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500875290');
INSERT INTO `tp_web_log_all` VALUES ('79', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500877089');
INSERT INTO `tp_web_log_all` VALUES ('80', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500877750');
INSERT INTO `tp_web_log_all` VALUES ('81', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500878917');
INSERT INTO `tp_web_log_all` VALUES ('82', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500878917');
INSERT INTO `tp_web_log_all` VALUES ('83', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500878983');
INSERT INTO `tp_web_log_all` VALUES ('84', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500879138');
INSERT INTO `tp_web_log_all` VALUES ('85', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500879146');
INSERT INTO `tp_web_log_all` VALUES ('86', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500879146');
INSERT INTO `tp_web_log_all` VALUES ('87', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500879146');
INSERT INTO `tp_web_log_all` VALUES ('88', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500879147');
INSERT INTO `tp_web_log_all` VALUES ('89', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500879147');
INSERT INTO `tp_web_log_all` VALUES ('90', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500879157');
INSERT INTO `tp_web_log_all` VALUES ('91', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500879180');
INSERT INTO `tp_web_log_all` VALUES ('92', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500879180');
INSERT INTO `tp_web_log_all` VALUES ('93', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500879182');
INSERT INTO `tp_web_log_all` VALUES ('94', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500879214');
INSERT INTO `tp_web_log_all` VALUES ('95', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500879295');
INSERT INTO `tp_web_log_all` VALUES ('96', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879299');
INSERT INTO `tp_web_log_all` VALUES ('97', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879303');
INSERT INTO `tp_web_log_all` VALUES ('98', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879303');
INSERT INTO `tp_web_log_all` VALUES ('99', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879303');
INSERT INTO `tp_web_log_all` VALUES ('100', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879317');
INSERT INTO `tp_web_log_all` VALUES ('101', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879318');
INSERT INTO `tp_web_log_all` VALUES ('102', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879318');
INSERT INTO `tp_web_log_all` VALUES ('103', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879318');
INSERT INTO `tp_web_log_all` VALUES ('104', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879336');
INSERT INTO `tp_web_log_all` VALUES ('105', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879337');
INSERT INTO `tp_web_log_all` VALUES ('106', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879337');
INSERT INTO `tp_web_log_all` VALUES ('107', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879347');
INSERT INTO `tp_web_log_all` VALUES ('108', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879349');
INSERT INTO `tp_web_log_all` VALUES ('109', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879349');
INSERT INTO `tp_web_log_all` VALUES ('110', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879349');
INSERT INTO `tp_web_log_all` VALUES ('111', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879352');
INSERT INTO `tp_web_log_all` VALUES ('112', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879352');
INSERT INTO `tp_web_log_all` VALUES ('113', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879352');
INSERT INTO `tp_web_log_all` VALUES ('114', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879354');
INSERT INTO `tp_web_log_all` VALUES ('115', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879354');
INSERT INTO `tp_web_log_all` VALUES ('116', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879355');
INSERT INTO `tp_web_log_all` VALUES ('117', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879360');
INSERT INTO `tp_web_log_all` VALUES ('118', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879361');
INSERT INTO `tp_web_log_all` VALUES ('119', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500879374');
INSERT INTO `tp_web_log_all` VALUES ('120', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879395');
INSERT INTO `tp_web_log_all` VALUES ('121', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879396');
INSERT INTO `tp_web_log_all` VALUES ('122', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879397');
INSERT INTO `tp_web_log_all` VALUES ('123', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/ajaxsend', 'home', 'Index', 'ajaxsend', 'GET', 'a:0:{}', '1500879397');
INSERT INTO `tp_web_log_all` VALUES ('124', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500881911');
INSERT INTO `tp_web_log_all` VALUES ('125', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500883874');
INSERT INTO `tp_web_log_all` VALUES ('126', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500887235');
INSERT INTO `tp_web_log_all` VALUES ('127', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500888126');
INSERT INTO `tp_web_log_all` VALUES ('128', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500888224');
INSERT INTO `tp_web_log_all` VALUES ('129', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500888225');
INSERT INTO `tp_web_log_all` VALUES ('130', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500888225');
INSERT INTO `tp_web_log_all` VALUES ('131', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500888369');
INSERT INTO `tp_web_log_all` VALUES ('132', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500888469');
INSERT INTO `tp_web_log_all` VALUES ('133', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500888780');
INSERT INTO `tp_web_log_all` VALUES ('134', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500888905');
INSERT INTO `tp_web_log_all` VALUES ('135', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500888927');
INSERT INTO `tp_web_log_all` VALUES ('136', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500888951');
INSERT INTO `tp_web_log_all` VALUES ('137', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500889105');
INSERT INTO `tp_web_log_all` VALUES ('138', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500890300');
INSERT INTO `tp_web_log_all` VALUES ('139', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500890300');
INSERT INTO `tp_web_log_all` VALUES ('140', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500890422');
INSERT INTO `tp_web_log_all` VALUES ('141', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500892444');
INSERT INTO `tp_web_log_all` VALUES ('142', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500892444');
INSERT INTO `tp_web_log_all` VALUES ('143', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500892500');
INSERT INTO `tp_web_log_all` VALUES ('144', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500892555');
INSERT INTO `tp_web_log_all` VALUES ('145', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500892747');
INSERT INTO `tp_web_log_all` VALUES ('146', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500892790');
INSERT INTO `tp_web_log_all` VALUES ('147', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500892864');
INSERT INTO `tp_web_log_all` VALUES ('148', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500893052');
INSERT INTO `tp_web_log_all` VALUES ('149', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500893067');
INSERT INTO `tp_web_log_all` VALUES ('150', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500893106');
INSERT INTO `tp_web_log_all` VALUES ('151', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500893278');
INSERT INTO `tp_web_log_all` VALUES ('152', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500893494');
INSERT INTO `tp_web_log_all` VALUES ('153', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500893521');
INSERT INTO `tp_web_log_all` VALUES ('154', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500893702');
INSERT INTO `tp_web_log_all` VALUES ('155', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500893744');
INSERT INTO `tp_web_log_all` VALUES ('156', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500893790');
INSERT INTO `tp_web_log_all` VALUES ('157', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500893790');
INSERT INTO `tp_web_log_all` VALUES ('158', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500893790');
INSERT INTO `tp_web_log_all` VALUES ('159', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500893823');
INSERT INTO `tp_web_log_all` VALUES ('160', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500893857');
INSERT INTO `tp_web_log_all` VALUES ('161', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500893875');
INSERT INTO `tp_web_log_all` VALUES ('162', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500893876');
INSERT INTO `tp_web_log_all` VALUES ('163', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500893918');
INSERT INTO `tp_web_log_all` VALUES ('164', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500894031');
INSERT INTO `tp_web_log_all` VALUES ('165', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500894128');
INSERT INTO `tp_web_log_all` VALUES ('166', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500894187');
INSERT INTO `tp_web_log_all` VALUES ('167', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500894219');
INSERT INTO `tp_web_log_all` VALUES ('168', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500894260');
INSERT INTO `tp_web_log_all` VALUES ('169', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500894289');
INSERT INTO `tp_web_log_all` VALUES ('170', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500894484');
INSERT INTO `tp_web_log_all` VALUES ('171', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500894527');
INSERT INTO `tp_web_log_all` VALUES ('172', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500894715');
INSERT INTO `tp_web_log_all` VALUES ('173', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500894746');
INSERT INTO `tp_web_log_all` VALUES ('174', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/index', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500894782');
INSERT INTO `tp_web_log_all` VALUES ('175', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500894782');
INSERT INTO `tp_web_log_all` VALUES ('176', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500894875');
INSERT INTO `tp_web_log_all` VALUES ('177', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500894878');
INSERT INTO `tp_web_log_all` VALUES ('178', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500894890');
INSERT INTO `tp_web_log_all` VALUES ('179', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500895006');
INSERT INTO `tp_web_log_all` VALUES ('180', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500895030');
INSERT INTO `tp_web_log_all` VALUES ('181', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500895319');
INSERT INTO `tp_web_log_all` VALUES ('182', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500895332');
INSERT INTO `tp_web_log_all` VALUES ('183', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500895340');
INSERT INTO `tp_web_log_all` VALUES ('184', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/index', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500895368');
INSERT INTO `tp_web_log_all` VALUES ('185', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/index', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500895374');
INSERT INTO `tp_web_log_all` VALUES ('186', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/index', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500895385');
INSERT INTO `tp_web_log_all` VALUES ('187', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500895484');
INSERT INTO `tp_web_log_all` VALUES ('188', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500895710');
INSERT INTO `tp_web_log_all` VALUES ('189', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500895759');
INSERT INTO `tp_web_log_all` VALUES ('190', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500895787');
INSERT INTO `tp_web_log_all` VALUES ('191', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500895851');
INSERT INTO `tp_web_log_all` VALUES ('192', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500895931');
INSERT INTO `tp_web_log_all` VALUES ('193', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500895981');
INSERT INTO `tp_web_log_all` VALUES ('194', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500896103');
INSERT INTO `tp_web_log_all` VALUES ('195', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500896127');
INSERT INTO `tp_web_log_all` VALUES ('196', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500896175');
INSERT INTO `tp_web_log_all` VALUES ('197', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500896175');
INSERT INTO `tp_web_log_all` VALUES ('198', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500896175');
INSERT INTO `tp_web_log_all` VALUES ('199', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500896175');
INSERT INTO `tp_web_log_all` VALUES ('200', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500896175');
INSERT INTO `tp_web_log_all` VALUES ('201', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500896209');
INSERT INTO `tp_web_log_all` VALUES ('202', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500896210');
INSERT INTO `tp_web_log_all` VALUES ('203', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500947131');
INSERT INTO `tp_web_log_all` VALUES ('204', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500947140');
INSERT INTO `tp_web_log_all` VALUES ('205', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500947146');
INSERT INTO `tp_web_log_all` VALUES ('206', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1500947168');
INSERT INTO `tp_web_log_all` VALUES ('207', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1500947796');
INSERT INTO `tp_web_log_all` VALUES ('208', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500947963');
INSERT INTO `tp_web_log_all` VALUES ('209', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1500947965');
INSERT INTO `tp_web_log_all` VALUES ('210', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500953568');
INSERT INTO `tp_web_log_all` VALUES ('211', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1500953570');
INSERT INTO `tp_web_log_all` VALUES ('212', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1500953736');
INSERT INTO `tp_web_log_all` VALUES ('213', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1500953785');
INSERT INTO `tp_web_log_all` VALUES ('214', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1500953816');
INSERT INTO `tp_web_log_all` VALUES ('215', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1500953906');
INSERT INTO `tp_web_log_all` VALUES ('216', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1500970890');
INSERT INTO `tp_web_log_all` VALUES ('217', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1500970958');
INSERT INTO `tp_web_log_all` VALUES ('218', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1500971073');
INSERT INTO `tp_web_log_all` VALUES ('219', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1500971074');
INSERT INTO `tp_web_log_all` VALUES ('220', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1500971108');
INSERT INTO `tp_web_log_all` VALUES ('221', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1500974303');
INSERT INTO `tp_web_log_all` VALUES ('222', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1500974617');
INSERT INTO `tp_web_log_all` VALUES ('223', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1500974689');
INSERT INTO `tp_web_log_all` VALUES ('224', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1500974858');
INSERT INTO `tp_web_log_all` VALUES ('225', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1500975352');
INSERT INTO `tp_web_log_all` VALUES ('226', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500975406');
INSERT INTO `tp_web_log_all` VALUES ('227', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500975408');
INSERT INTO `tp_web_log_all` VALUES ('228', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pn.html', 'home', 'Index', 'pn', 'GET', 'a:0:{}', '1500975409');
INSERT INTO `tp_web_log_all` VALUES ('229', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500975412');
INSERT INTO `tp_web_log_all` VALUES ('230', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1500975414');
INSERT INTO `tp_web_log_all` VALUES ('231', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500975721');
INSERT INTO `tp_web_log_all` VALUES ('232', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1500975747');
INSERT INTO `tp_web_log_all` VALUES ('233', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1500975760');
INSERT INTO `tp_web_log_all` VALUES ('234', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1500975761');
INSERT INTO `tp_web_log_all` VALUES ('235', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1500975761');
INSERT INTO `tp_web_log_all` VALUES ('236', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1500975761');
INSERT INTO `tp_web_log_all` VALUES ('237', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1500975762');
INSERT INTO `tp_web_log_all` VALUES ('238', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1500975817');
INSERT INTO `tp_web_log_all` VALUES ('239', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1500975882');
INSERT INTO `tp_web_log_all` VALUES ('240', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500976207');
INSERT INTO `tp_web_log_all` VALUES ('241', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500976234');
INSERT INTO `tp_web_log_all` VALUES ('242', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500976254');
INSERT INTO `tp_web_log_all` VALUES ('243', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500976260');
INSERT INTO `tp_web_log_all` VALUES ('244', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500976263');
INSERT INTO `tp_web_log_all` VALUES ('245', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pn.html', 'home', 'Index', 'pn', 'GET', 'a:0:{}', '1500976264');
INSERT INTO `tp_web_log_all` VALUES ('246', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500976265');
INSERT INTO `tp_web_log_all` VALUES ('247', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1500976266');
INSERT INTO `tp_web_log_all` VALUES ('248', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500976268');
INSERT INTO `tp_web_log_all` VALUES ('249', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500976360');
INSERT INTO `tp_web_log_all` VALUES ('250', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500976920');
INSERT INTO `tp_web_log_all` VALUES ('251', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500976930');
INSERT INTO `tp_web_log_all` VALUES ('252', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500976936');
INSERT INTO `tp_web_log_all` VALUES ('253', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1500977143');
INSERT INTO `tp_web_log_all` VALUES ('254', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index?mobile=18811216533', 'home', 'Index', 'index', 'GET', 'a:1:{s:6:\"mobile\";s:11:\"18811216533\";}', '1500977143');
INSERT INTO `tp_web_log_all` VALUES ('255', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500977146');
INSERT INTO `tp_web_log_all` VALUES ('256', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1500977669');
INSERT INTO `tp_web_log_all` VALUES ('257', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist?keyword=12312313', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:7:\"keyword\";s:8:\"12312313\";}', '1500977677');
INSERT INTO `tp_web_log_all` VALUES ('258', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist?keyword=', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:7:\"keyword\";s:0:\"\";}', '1500977680');
INSERT INTO `tp_web_log_all` VALUES ('259', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist?keyword=werwerwer', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:7:\"keyword\";s:9:\"werwerwer\";}', '1500977685');
INSERT INTO `tp_web_log_all` VALUES ('260', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist?keyword=', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:7:\"keyword\";s:0:\"\";}', '1500977688');
INSERT INTO `tp_web_log_all` VALUES ('261', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist?keyword=123123123', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:7:\"keyword\";s:9:\"123123123\";}', '1500977693');
INSERT INTO `tp_web_log_all` VALUES ('262', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist?keyword=123123123', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:7:\"keyword\";s:9:\"123123123\";}', '1500977733');
INSERT INTO `tp_web_log_all` VALUES ('263', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist?keyword=123123123', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:7:\"keyword\";s:9:\"123123123\";}', '1500977736');
INSERT INTO `tp_web_log_all` VALUES ('264', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist?keyword=', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:7:\"keyword\";s:0:\"\";}', '1500977743');
INSERT INTO `tp_web_log_all` VALUES ('265', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist?keyword=', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:7:\"keyword\";s:0:\"\";}', '1500977746');
INSERT INTO `tp_web_log_all` VALUES ('266', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist?%3Cscript%3Evar%20localStorage%20=%20window.localStorage;var%20mobile=%20localStorage.getItem(%27mobile%27);%20mobile;%3C/script%3E', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:25:\"<script>var_localStorage_\";s:87:\" window.localStorage;var mobile= localStorage.getItem(\'mobile\'); mobile;&lt;/script&gt;\";}', '1500978522');
INSERT INTO `tp_web_log_all` VALUES ('267', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist?%3Cscript%3Evar%20localStorage%20=%20window.localStorage;var%20mobile=%20localStorage.getItem(%27mobile%27);%20mobile;%3C/script%3E', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:25:\"<script>var_localStorage_\";s:87:\" window.localStorage;var mobile= localStorage.getItem(\'mobile\'); mobile;&lt;/script&gt;\";}', '1500978588');
INSERT INTO `tp_web_log_all` VALUES ('268', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500978671');
INSERT INTO `tp_web_log_all` VALUES ('269', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500978673');
INSERT INTO `tp_web_log_all` VALUES ('270', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1500978674');
INSERT INTO `tp_web_log_all` VALUES ('271', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist?keyword=tang', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:7:\"keyword\";s:4:\"tang\";}', '1500978684');
INSERT INTO `tp_web_log_all` VALUES ('272', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pninfo?id=5', 'home', 'Index', 'pninfo', 'GET', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1500978689');
INSERT INTO `tp_web_log_all` VALUES ('273', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist?keyword=tang', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:7:\"keyword\";s:4:\"tang\";}', '1500978703');
INSERT INTO `tp_web_log_all` VALUES ('274', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1500978705');
INSERT INTO `tp_web_log_all` VALUES ('275', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500978710');
INSERT INTO `tp_web_log_all` VALUES ('276', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/ywjs', 'home', 'Index', 'ywjs', 'GET', 'a:0:{}', '1500978712');
INSERT INTO `tp_web_log_all` VALUES ('277', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500978722');
INSERT INTO `tp_web_log_all` VALUES ('278', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/ywjs', 'home', 'Index', 'ywjs', 'GET', 'a:0:{}', '1500978724');
INSERT INTO `tp_web_log_all` VALUES ('279', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/ywjs', 'home', 'Index', 'ywjs', 'GET', 'a:0:{}', '1500978848');
INSERT INTO `tp_web_log_all` VALUES ('280', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1500979044');
INSERT INTO `tp_web_log_all` VALUES ('281', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500979046');
INSERT INTO `tp_web_log_all` VALUES ('282', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1500979047');
INSERT INTO `tp_web_log_all` VALUES ('283', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500979056');
INSERT INTO `tp_web_log_all` VALUES ('284', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pn.html', 'home', 'Index', 'pn', 'GET', 'a:0:{}', '1500979057');
INSERT INTO `tp_web_log_all` VALUES ('285', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1500979061');
INSERT INTO `tp_web_log_all` VALUES ('286', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1500979276');
INSERT INTO `tp_web_log_all` VALUES ('287', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pninfo?id=5', 'home', 'Index', 'pninfo', 'GET', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1500979279');
INSERT INTO `tp_web_log_all` VALUES ('288', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pninfo?id=5', 'home', 'Index', 'pninfo', 'GET', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1500979395');
INSERT INTO `tp_web_log_all` VALUES ('289', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist?keyword=', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:7:\"keyword\";s:0:\"\";}', '1501034721');
INSERT INTO `tp_web_log_all` VALUES ('290', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pninfo?id=5', 'home', 'Index', 'pninfo', 'GET', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1501034723');
INSERT INTO `tp_web_log_all` VALUES ('291', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/pninfo?id=5', 'home', 'Index', 'pninfo', 'GET', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1501034735');
INSERT INTO `tp_web_log_all` VALUES ('292', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/pninfo?id=5', 'home', 'Index', 'pninfo', 'GET', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1501035007');
INSERT INTO `tp_web_log_all` VALUES ('293', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/pnlist', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1501036060');
INSERT INTO `tp_web_log_all` VALUES ('294', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1501036071');
INSERT INTO `tp_web_log_all` VALUES ('295', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1501036073');
INSERT INTO `tp_web_log_all` VALUES ('296', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1501036074');
INSERT INTO `tp_web_log_all` VALUES ('297', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist?keyword=', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:7:\"keyword\";s:0:\"\";}', '1501036085');
INSERT INTO `tp_web_log_all` VALUES ('298', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/pnlist?keyword=', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:7:\"keyword\";s:0:\"\";}', '1501036092');
INSERT INTO `tp_web_log_all` VALUES ('299', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist?keyword=', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:7:\"keyword\";s:0:\"\";}', '1501036461');
INSERT INTO `tp_web_log_all` VALUES ('300', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1501036471');
INSERT INTO `tp_web_log_all` VALUES ('301', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1501036473');
INSERT INTO `tp_web_log_all` VALUES ('302', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501036481');
INSERT INTO `tp_web_log_all` VALUES ('303', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1501036652');
INSERT INTO `tp_web_log_all` VALUES ('304', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1501036654');
INSERT INTO `tp_web_log_all` VALUES ('305', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pninfo?username=tangll', 'home', 'Index', 'pninfo', 'GET', 'a:1:{s:8:\"username\";s:6:\"tangll\";}', '1501036661');
INSERT INTO `tp_web_log_all` VALUES ('306', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pninfo?username=tangll', 'home', 'Index', 'pninfo', 'GET', 'a:1:{s:8:\"username\";s:6:\"tangll\";}', '1501037344');
INSERT INTO `tp_web_log_all` VALUES ('307', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1501037621');
INSERT INTO `tp_web_log_all` VALUES ('308', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1501037623');
INSERT INTO `tp_web_log_all` VALUES ('309', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501037625');
INSERT INTO `tp_web_log_all` VALUES ('310', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pninfo?username=tangll', 'home', 'Index', 'pninfo', 'GET', 'a:1:{s:8:\"username\";s:6:\"tangll\";}', '1501037913');
INSERT INTO `tp_web_log_all` VALUES ('311', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pninfo?username=tangll', 'home', 'Index', 'pninfo', 'GET', 'a:1:{s:8:\"username\";s:6:\"tangll\";}', '1501038013');
INSERT INTO `tp_web_log_all` VALUES ('312', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pninfo?username=tangll', 'home', 'Index', 'pninfo', 'GET', 'a:1:{s:8:\"username\";s:6:\"tangll\";}', '1501038024');
INSERT INTO `tp_web_log_all` VALUES ('313', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pninfo?username=tangll', 'home', 'Index', 'pninfo', 'GET', 'a:1:{s:8:\"username\";s:6:\"tangll\";}', '1501038062');
INSERT INTO `tp_web_log_all` VALUES ('314', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pninfo?username=tangll', 'home', 'Index', 'pninfo', 'GET', 'a:1:{s:8:\"username\";s:6:\"tangll\";}', '1501038859');
INSERT INTO `tp_web_log_all` VALUES ('315', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pninfo?username=tangll', 'home', 'Index', 'pninfo', 'GET', 'a:1:{s:8:\"username\";s:6:\"tangll\";}', '1501038864');
INSERT INTO `tp_web_log_all` VALUES ('316', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pninfo?username=tangll', 'home', 'Index', 'pninfo', 'GET', 'a:1:{s:8:\"username\";s:6:\"tangll\";}', '1501039071');
INSERT INTO `tp_web_log_all` VALUES ('317', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pninfo?username=tangll', 'home', 'Index', 'pninfo', 'GET', 'a:1:{s:8:\"username\";s:6:\"tangll\";}', '1501039201');
INSERT INTO `tp_web_log_all` VALUES ('318', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pninfo?username=tangll', 'home', 'Index', 'pninfo', 'GET', 'a:1:{s:8:\"username\";s:6:\"tangll\";}', '1501039201');
INSERT INTO `tp_web_log_all` VALUES ('319', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pninfo?username=tangll', 'home', 'Index', 'pninfo', 'GET', 'a:1:{s:8:\"username\";s:6:\"tangll\";}', '1501039210');
INSERT INTO `tp_web_log_all` VALUES ('320', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1501039218');
INSERT INTO `tp_web_log_all` VALUES ('321', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1501039434');
INSERT INTO `tp_web_log_all` VALUES ('322', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist?keyword=asasd', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:7:\"keyword\";s:5:\"asasd\";}', '1501039443');
INSERT INTO `tp_web_log_all` VALUES ('323', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist?keyword=asasd', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:7:\"keyword\";s:5:\"asasd\";}', '1501039477');
INSERT INTO `tp_web_log_all` VALUES ('324', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist?keyword=asasd', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:7:\"keyword\";s:5:\"asasd\";}', '1501039510');
INSERT INTO `tp_web_log_all` VALUES ('325', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist?keyword=asasd', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:7:\"keyword\";s:5:\"asasd\";}', '1501039510');
INSERT INTO `tp_web_log_all` VALUES ('326', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist?keyword=', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:7:\"keyword\";s:0:\"\";}', '1501039544');
INSERT INTO `tp_web_log_all` VALUES ('327', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist?keyword=', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:7:\"keyword\";s:0:\"\";}', '1501039569');
INSERT INTO `tp_web_log_all` VALUES ('328', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist?keyword=', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:7:\"keyword\";s:0:\"\";}', '1501039570');
INSERT INTO `tp_web_log_all` VALUES ('329', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist?keyword=asasd', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:7:\"keyword\";s:5:\"asasd\";}', '1501039579');
INSERT INTO `tp_web_log_all` VALUES ('330', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist?keyword=asasd', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:7:\"keyword\";s:5:\"asasd\";}', '1501039580');
INSERT INTO `tp_web_log_all` VALUES ('331', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist?keyword=asasd', 'home', 'Index', 'pnlist', 'GET', 'a:1:{s:7:\"keyword\";s:5:\"asasd\";}', '1501039595');
INSERT INTO `tp_web_log_all` VALUES ('332', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1501041329');
INSERT INTO `tp_web_log_all` VALUES ('333', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501041335');
INSERT INTO `tp_web_log_all` VALUES ('334', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index?mobile=18811216533', 'home', 'Index', 'index', 'GET', 'a:1:{s:6:\"mobile\";s:11:\"18811216533\";}', '1501041335');
INSERT INTO `tp_web_log_all` VALUES ('335', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1501041337');
INSERT INTO `tp_web_log_all` VALUES ('336', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501041339');
INSERT INTO `tp_web_log_all` VALUES ('337', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1501041348');
INSERT INTO `tp_web_log_all` VALUES ('338', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pn.html', 'home', 'Index', 'pn', 'GET', 'a:0:{}', '1501041349');
INSERT INTO `tp_web_log_all` VALUES ('339', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1501041350');
INSERT INTO `tp_web_log_all` VALUES ('340', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1501041351');
INSERT INTO `tp_web_log_all` VALUES ('341', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pninfo?username=tanglll', 'home', 'Index', 'pninfo', 'GET', 'a:1:{s:8:\"username\";s:7:\"tanglll\";}', '1501041355');
INSERT INTO `tp_web_log_all` VALUES ('342', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501041391');
INSERT INTO `tp_web_log_all` VALUES ('343', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501041391');
INSERT INTO `tp_web_log_all` VALUES ('344', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501041416');
INSERT INTO `tp_web_log_all` VALUES ('345', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501041555');
INSERT INTO `tp_web_log_all` VALUES ('346', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501041555');
INSERT INTO `tp_web_log_all` VALUES ('347', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501041559');
INSERT INTO `tp_web_log_all` VALUES ('348', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501041560');
INSERT INTO `tp_web_log_all` VALUES ('349', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501041567');
INSERT INTO `tp_web_log_all` VALUES ('350', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1501041574');
INSERT INTO `tp_web_log_all` VALUES ('351', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_group/add.html', 'admin', 'AdminGroup', 'add', 'GET', 'a:0:{}', '1501041581');
INSERT INTO `tp_web_log_all` VALUES ('352', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_group/add.html', 'admin', 'AdminGroup', 'add', 'GET', 'a:0:{}', '1501041615');
INSERT INTO `tp_web_log_all` VALUES ('353', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_group/add.html', 'admin', 'AdminGroup', 'add', 'POST', 'a:6:{s:2:\"id\";s:0:\"\";s:4:\"name\";s:12:\"医生列表\";s:4:\"icon\";s:37:\"&amp;#xe611; .Hui-iconfont-usergroup2\";s:4:\"sort\";s:2:\"50\";s:6:\"status\";s:1:\"1\";s:6:\"remark\";s:0:\"\";}', '1501041685');
INSERT INTO `tp_web_log_all` VALUES ('354', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1501041685');
INSERT INTO `tp_web_log_all` VALUES ('355', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_group/edit/id/3.html', 'admin', 'AdminGroup', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1501041691');
INSERT INTO `tp_web_log_all` VALUES ('356', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_group/edit/id/3.html', 'admin', 'AdminGroup', 'edit', 'POST', 'a:6:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:12:\"医生列表\";s:4:\"icon\";s:17:\"&amp;amp;#xe611; \";s:4:\"sort\";s:2:\"50\";s:6:\"status\";s:1:\"1\";s:6:\"remark\";s:0:\"\";}', '1501041701');
INSERT INTO `tp_web_log_all` VALUES ('357', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1501041702');
INSERT INTO `tp_web_log_all` VALUES ('358', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501041706');
INSERT INTO `tp_web_log_all` VALUES ('359', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501041707');
INSERT INTO `tp_web_log_all` VALUES ('360', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1501041710');
INSERT INTO `tp_web_log_all` VALUES ('361', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_group/edit/id/3.html', 'admin', 'AdminGroup', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1501041716');
INSERT INTO `tp_web_log_all` VALUES ('362', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_group/edit/id/2.html', 'admin', 'AdminGroup', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1501041734');
INSERT INTO `tp_web_log_all` VALUES ('363', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_group/edit/id/3.html', 'admin', 'AdminGroup', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1501041740');
INSERT INTO `tp_web_log_all` VALUES ('364', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_group/edit/id/3.html', 'admin', 'AdminGroup', 'edit', 'POST', 'a:6:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:12:\"医生列表\";s:4:\"icon\";s:12:\"&amp;#xe616;\";s:4:\"sort\";s:2:\"50\";s:6:\"status\";s:1:\"1\";s:6:\"remark\";s:0:\"\";}', '1501041746');
INSERT INTO `tp_web_log_all` VALUES ('365', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1501041746');
INSERT INTO `tp_web_log_all` VALUES ('366', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_group/saveOrder', 'admin', 'AdminGroup', 'saveorder', 'POST', 'a:1:{s:4:\"sort\";a:3:{i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"1\";}}', '1501041770');
INSERT INTO `tp_web_log_all` VALUES ('367', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501041773');
INSERT INTO `tp_web_log_all` VALUES ('368', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501041774');
INSERT INTO `tp_web_log_all` VALUES ('369', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1501041799');
INSERT INTO `tp_web_log_all` VALUES ('370', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1501041800');
INSERT INTO `tp_web_log_all` VALUES ('371', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1501041800');
INSERT INTO `tp_web_log_all` VALUES ('372', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"2\";}', '1501041828');
INSERT INTO `tp_web_log_all` VALUES ('373', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1501041832');
INSERT INTO `tp_web_log_all` VALUES ('374', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1501041832');
INSERT INTO `tp_web_log_all` VALUES ('375', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"0\";}', '1501041833');
INSERT INTO `tp_web_log_all` VALUES ('376', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"0\";}', '1501041840');
INSERT INTO `tp_web_log_all` VALUES ('377', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1501041845');
INSERT INTO `tp_web_log_all` VALUES ('378', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_role/index.html', 'admin', 'AdminRole', 'index', 'GET', 'a:0:{}', '1501041848');
INSERT INTO `tp_web_log_all` VALUES ('379', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1501041853');
INSERT INTO `tp_web_log_all` VALUES ('380', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1501041853');
INSERT INTO `tp_web_log_all` VALUES ('381', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1501041853');
INSERT INTO `tp_web_log_all` VALUES ('382', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1501041854');
INSERT INTO `tp_web_log_all` VALUES ('383', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501041898');
INSERT INTO `tp_web_log_all` VALUES ('384', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501041901');
INSERT INTO `tp_web_log_all` VALUES ('385', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/login_log/index.html', 'admin', 'LoginLog', 'index', 'GET', 'a:0:{}', '1501041913');
INSERT INTO `tp_web_log_all` VALUES ('386', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/web_log/index.html', 'admin', 'WebLog', 'index', 'GET', 'a:0:{}', '1501041916');
INSERT INTO `tp_web_log_all` VALUES ('387', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/node_map/index.html', 'admin', 'NodeMap', 'index', 'GET', 'a:0:{}', '1501041924');
INSERT INTO `tp_web_log_all` VALUES ('388', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1501041924');
INSERT INTO `tp_web_log_all` VALUES ('389', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_role/index.html', 'admin', 'AdminRole', 'index', 'GET', 'a:0:{}', '1501041926');
INSERT INTO `tp_web_log_all` VALUES ('390', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1501041927');
INSERT INTO `tp_web_log_all` VALUES ('391', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1501041927');
INSERT INTO `tp_web_log_all` VALUES ('392', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1501041928');
INSERT INTO `tp_web_log_all` VALUES ('393', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1501041929');
INSERT INTO `tp_web_log_all` VALUES ('394', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"0\";}', '1501041951');
INSERT INTO `tp_web_log_all` VALUES ('395', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"0\";}', '1501041961');
INSERT INTO `tp_web_log_all` VALUES ('396', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1501041966');
INSERT INTO `tp_web_log_all` VALUES ('397', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1501041966');
INSERT INTO `tp_web_log_all` VALUES ('398', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501044392');
INSERT INTO `tp_web_log_all` VALUES ('399', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501044392');
INSERT INTO `tp_web_log_all` VALUES ('400', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501044432');
INSERT INTO `tp_web_log_all` VALUES ('401', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501044432');
INSERT INTO `tp_web_log_all` VALUES ('402', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501050139');
INSERT INTO `tp_web_log_all` VALUES ('403', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501050139');
INSERT INTO `tp_web_log_all` VALUES ('404', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501050476');
INSERT INTO `tp_web_log_all` VALUES ('405', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501050476');
INSERT INTO `tp_web_log_all` VALUES ('406', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501050524');
INSERT INTO `tp_web_log_all` VALUES ('407', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501050524');
INSERT INTO `tp_web_log_all` VALUES ('408', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1501050537');
INSERT INTO `tp_web_log_all` VALUES ('409', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_group/edit/id/3.html', 'admin', 'AdminGroup', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1501050542');
INSERT INTO `tp_web_log_all` VALUES ('410', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_group/edit/id/3.html', 'admin', 'AdminGroup', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1501050550');
INSERT INTO `tp_web_log_all` VALUES ('411', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_group/saveOrder', 'admin', 'AdminGroup', 'saveorder', 'POST', 'a:1:{s:4:\"sort\";a:2:{i:1;s:1:\"2\";i:3;s:1:\"1\";}}', '1501050553');
INSERT INTO `tp_web_log_all` VALUES ('412', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1501050560');
INSERT INTO `tp_web_log_all` VALUES ('413', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1501050560');
INSERT INTO `tp_web_log_all` VALUES ('414', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1501050560');
INSERT INTO `tp_web_log_all` VALUES ('415', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:2:\"63\";}', '1501050575');
INSERT INTO `tp_web_log_all` VALUES ('416', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1501050581');
INSERT INTO `tp_web_log_all` VALUES ('417', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1501050581');
INSERT INTO `tp_web_log_all` VALUES ('418', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:2:\"63\";}', '1501050583');
INSERT INTO `tp_web_log_all` VALUES ('419', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1501050607');
INSERT INTO `tp_web_log_all` VALUES ('420', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1501050607');
INSERT INTO `tp_web_log_all` VALUES ('421', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1501050607');
INSERT INTO `tp_web_log_all` VALUES ('422', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"0\";}', '1501050612');
INSERT INTO `tp_web_log_all` VALUES ('423', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/add?pid=0', 'admin', 'AdminNode', 'add', 'GET', 'a:1:{s:3:\"pid\";s:1:\"0\";}', '1501050626');
INSERT INTO `tp_web_log_all` VALUES ('424', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/add', 'admin', 'AdminNode', 'add', 'POST', 'a:9:{s:2:\"id\";s:0:\"\";s:3:\"pid\";s:1:\"0\";s:5:\"level\";s:1:\"1\";s:8:\"group_id\";s:1:\"3\";s:5:\"title\";s:12:\"医生列表\";s:4:\"name\";s:7:\"yisheng\";s:4:\"type\";s:1:\"1\";s:4:\"sort\";s:2:\"50\";s:6:\"status\";s:1:\"1\";}', '1501050658');
INSERT INTO `tp_web_log_all` VALUES ('425', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1501050658');
INSERT INTO `tp_web_log_all` VALUES ('426', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1501050659');
INSERT INTO `tp_web_log_all` VALUES ('427', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"0\";}', '1501050659');
INSERT INTO `tp_web_log_all` VALUES ('428', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:2:\"64\";}', '1501050662');
INSERT INTO `tp_web_log_all` VALUES ('429', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501050669');
INSERT INTO `tp_web_log_all` VALUES ('430', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501050669');
INSERT INTO `tp_web_log_all` VALUES ('431', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1501050672');
INSERT INTO `tp_web_log_all` VALUES ('432', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1501050675');
INSERT INTO `tp_web_log_all` VALUES ('433', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1501050675');
INSERT INTO `tp_web_log_all` VALUES ('434', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1501050675');
INSERT INTO `tp_web_log_all` VALUES ('435', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:2:\"64\";}', '1501050676');
INSERT INTO `tp_web_log_all` VALUES ('436', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1501050691');
INSERT INTO `tp_web_log_all` VALUES ('437', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1501050692');
INSERT INTO `tp_web_log_all` VALUES ('438', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1501050692');
INSERT INTO `tp_web_log_all` VALUES ('439', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/add?pid=0', 'admin', 'AdminNode', 'add', 'GET', 'a:1:{s:3:\"pid\";s:1:\"0\";}', '1501050711');
INSERT INTO `tp_web_log_all` VALUES ('440', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/add', 'admin', 'AdminNode', 'add', 'POST', 'a:9:{s:2:\"id\";s:0:\"\";s:3:\"pid\";s:1:\"0\";s:5:\"level\";s:1:\"1\";s:8:\"group_id\";s:1:\"3\";s:5:\"title\";s:12:\"医生列表\";s:4:\"name\";s:7:\"yisheng\";s:4:\"type\";s:1:\"1\";s:4:\"sort\";s:2:\"50\";s:6:\"status\";s:1:\"1\";}', '1501050725');
INSERT INTO `tp_web_log_all` VALUES ('441', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1501050725');
INSERT INTO `tp_web_log_all` VALUES ('442', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1501050726');
INSERT INTO `tp_web_log_all` VALUES ('443', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1501050726');
INSERT INTO `tp_web_log_all` VALUES ('444', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:2:\"65\";}', '1501050727');
INSERT INTO `tp_web_log_all` VALUES ('445', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/add?pid=0', 'admin', 'AdminNode', 'add', 'GET', 'a:1:{s:3:\"pid\";s:1:\"0\";}', '1501050729');
INSERT INTO `tp_web_log_all` VALUES ('446', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/add', 'admin', 'AdminNode', 'add', 'POST', 'a:9:{s:2:\"id\";s:0:\"\";s:3:\"pid\";s:1:\"0\";s:5:\"level\";s:1:\"1\";s:8:\"group_id\";s:1:\"3\";s:5:\"title\";s:12:\"医生列表\";s:4:\"name\";s:4:\"list\";s:4:\"type\";s:1:\"0\";s:4:\"sort\";s:2:\"50\";s:6:\"status\";s:1:\"1\";}', '1501050752');
INSERT INTO `tp_web_log_all` VALUES ('447', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1501050753');
INSERT INTO `tp_web_log_all` VALUES ('448', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:2:\"65\";}', '1501050753');
INSERT INTO `tp_web_log_all` VALUES ('449', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:2:\"66\";}', '1501050757');
INSERT INTO `tp_web_log_all` VALUES ('450', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:2:\"65\";}', '1501050759');
INSERT INTO `tp_web_log_all` VALUES ('451', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501050800');
INSERT INTO `tp_web_log_all` VALUES ('452', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501050801');
INSERT INTO `tp_web_log_all` VALUES ('453', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1501050804');
INSERT INTO `tp_web_log_all` VALUES ('454', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1501050805');
INSERT INTO `tp_web_log_all` VALUES ('455', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1501050806');
INSERT INTO `tp_web_log_all` VALUES ('456', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1501050806');
INSERT INTO `tp_web_log_all` VALUES ('457', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:2:\"65\";}', '1501050814');
INSERT INTO `tp_web_log_all` VALUES ('458', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:2:\"66\";}', '1501050816');
INSERT INTO `tp_web_log_all` VALUES ('459', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_role/index.html', 'admin', 'AdminRole', 'index', 'GET', 'a:0:{}', '1501050848');
INSERT INTO `tp_web_log_all` VALUES ('460', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1501050848');
INSERT INTO `tp_web_log_all` VALUES ('461', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1501050849');
INSERT INTO `tp_web_log_all` VALUES ('462', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1501050849');
INSERT INTO `tp_web_log_all` VALUES ('463', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1501050883');
INSERT INTO `tp_web_log_all` VALUES ('464', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1501050886');
INSERT INTO `tp_web_log_all` VALUES ('465', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1501050886');
INSERT INTO `tp_web_log_all` VALUES ('466', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1501050889');
INSERT INTO `tp_web_log_all` VALUES ('467', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/edit?id=51', 'admin', 'AdminNode', 'edit', 'GET', 'a:1:{s:2:\"id\";s:2:\"51\";}', '1501050905');
INSERT INTO `tp_web_log_all` VALUES ('468', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/node_map/index.html', 'admin', 'NodeMap', 'index', 'GET', 'a:0:{}', '1501050941');
INSERT INTO `tp_web_log_all` VALUES ('469', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/web_log/index.html', 'admin', 'WebLog', 'index', 'GET', 'a:0:{}', '1501050944');
INSERT INTO `tp_web_log_all` VALUES ('470', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/login_log/index.html', 'admin', 'LoginLog', 'index', 'GET', 'a:0:{}', '1501050945');
INSERT INTO `tp_web_log_all` VALUES ('471', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1501050947');
INSERT INTO `tp_web_log_all` VALUES ('472', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_role/index.html', 'admin', 'AdminRole', 'index', 'GET', 'a:0:{}', '1501050948');
INSERT INTO `tp_web_log_all` VALUES ('473', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1501050951');
INSERT INTO `tp_web_log_all` VALUES ('474', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1501050952');
INSERT INTO `tp_web_log_all` VALUES ('475', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1501050952');
INSERT INTO `tp_web_log_all` VALUES ('476', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"0\";}', '1501050962');
INSERT INTO `tp_web_log_all` VALUES ('477', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/add?pid=0', 'admin', 'AdminNode', 'add', 'GET', 'a:1:{s:3:\"pid\";s:1:\"0\";}', '1501050978');
INSERT INTO `tp_web_log_all` VALUES ('478', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/add', 'admin', 'AdminNode', 'add', 'POST', 'a:9:{s:2:\"id\";s:0:\"\";s:3:\"pid\";s:1:\"0\";s:5:\"level\";s:1:\"1\";s:8:\"group_id\";s:1:\"0\";s:5:\"title\";s:12:\"医生列表\";s:4:\"name\";s:7:\"yisheng\";s:4:\"type\";s:1:\"1\";s:4:\"sort\";s:2:\"50\";s:6:\"status\";s:1:\"1\";}', '1501051001');
INSERT INTO `tp_web_log_all` VALUES ('479', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1501051002');
INSERT INTO `tp_web_log_all` VALUES ('480', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1501051002');
INSERT INTO `tp_web_log_all` VALUES ('481', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"0\";}', '1501051002');
INSERT INTO `tp_web_log_all` VALUES ('482', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1501051004');
INSERT INTO `tp_web_log_all` VALUES ('483', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1501051004');
INSERT INTO `tp_web_log_all` VALUES ('484', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:2:\"67\";}', '1501051006');
INSERT INTO `tp_web_log_all` VALUES ('485', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:2:\"67\";}', '1501051010');
INSERT INTO `tp_web_log_all` VALUES ('486', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501051047');
INSERT INTO `tp_web_log_all` VALUES ('487', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501051048');
INSERT INTO `tp_web_log_all` VALUES ('488', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1501051050');
INSERT INTO `tp_web_log_all` VALUES ('489', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1501051051');
INSERT INTO `tp_web_log_all` VALUES ('490', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1501051052');
INSERT INTO `tp_web_log_all` VALUES ('491', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1501051052');
INSERT INTO `tp_web_log_all` VALUES ('492', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:2:\"67\";}', '1501051054');
INSERT INTO `tp_web_log_all` VALUES ('493', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501051700');
INSERT INTO `tp_web_log_all` VALUES ('494', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501051700');
INSERT INTO `tp_web_log_all` VALUES ('495', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501051996');
INSERT INTO `tp_web_log_all` VALUES ('496', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501051997');
INSERT INTO `tp_web_log_all` VALUES ('497', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501052272');
INSERT INTO `tp_web_log_all` VALUES ('498', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501052273');
INSERT INTO `tp_web_log_all` VALUES ('499', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501052292');
INSERT INTO `tp_web_log_all` VALUES ('500', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501052293');
INSERT INTO `tp_web_log_all` VALUES ('501', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501052320');
INSERT INTO `tp_web_log_all` VALUES ('502', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501052321');
INSERT INTO `tp_web_log_all` VALUES ('503', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501052328');
INSERT INTO `tp_web_log_all` VALUES ('504', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501052329');
INSERT INTO `tp_web_log_all` VALUES ('505', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501053795');
INSERT INTO `tp_web_log_all` VALUES ('506', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501053796');
INSERT INTO `tp_web_log_all` VALUES ('507', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501054009');
INSERT INTO `tp_web_log_all` VALUES ('508', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501054009');
INSERT INTO `tp_web_log_all` VALUES ('509', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501054067');
INSERT INTO `tp_web_log_all` VALUES ('510', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501054068');
INSERT INTO `tp_web_log_all` VALUES ('511', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501054138');
INSERT INTO `tp_web_log_all` VALUES ('512', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501054139');
INSERT INTO `tp_web_log_all` VALUES ('513', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501054192');
INSERT INTO `tp_web_log_all` VALUES ('514', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501054192');
INSERT INTO `tp_web_log_all` VALUES ('515', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501054224');
INSERT INTO `tp_web_log_all` VALUES ('516', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501054224');
INSERT INTO `tp_web_log_all` VALUES ('517', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501057092');
INSERT INTO `tp_web_log_all` VALUES ('518', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501057093');
INSERT INTO `tp_web_log_all` VALUES ('519', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501057213');
INSERT INTO `tp_web_log_all` VALUES ('520', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501057214');
INSERT INTO `tp_web_log_all` VALUES ('521', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501057233');
INSERT INTO `tp_web_log_all` VALUES ('522', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501057234');
INSERT INTO `tp_web_log_all` VALUES ('523', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501057253');
INSERT INTO `tp_web_log_all` VALUES ('524', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501057269');
INSERT INTO `tp_web_log_all` VALUES ('525', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501057655');
INSERT INTO `tp_web_log_all` VALUES ('526', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501057657');
INSERT INTO `tp_web_log_all` VALUES ('527', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501057659');
INSERT INTO `tp_web_log_all` VALUES ('528', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501057992');
INSERT INTO `tp_web_log_all` VALUES ('529', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501058014');
INSERT INTO `tp_web_log_all` VALUES ('530', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501058043');
INSERT INTO `tp_web_log_all` VALUES ('531', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501058044');
INSERT INTO `tp_web_log_all` VALUES ('532', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501058046');
INSERT INTO `tp_web_log_all` VALUES ('533', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501058074');
INSERT INTO `tp_web_log_all` VALUES ('534', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501058074');
INSERT INTO `tp_web_log_all` VALUES ('535', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501058076');
INSERT INTO `tp_web_log_all` VALUES ('536', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501058245');
INSERT INTO `tp_web_log_all` VALUES ('537', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501058247');
INSERT INTO `tp_web_log_all` VALUES ('538', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501058254');
INSERT INTO `tp_web_log_all` VALUES ('539', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501058291');
INSERT INTO `tp_web_log_all` VALUES ('540', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501058294');
INSERT INTO `tp_web_log_all` VALUES ('541', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501058295');
INSERT INTO `tp_web_log_all` VALUES ('542', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501058295');
INSERT INTO `tp_web_log_all` VALUES ('543', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501058296');
INSERT INTO `tp_web_log_all` VALUES ('544', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501058314');
INSERT INTO `tp_web_log_all` VALUES ('545', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501058342');
INSERT INTO `tp_web_log_all` VALUES ('546', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501058362');
INSERT INTO `tp_web_log_all` VALUES ('547', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501058588');
INSERT INTO `tp_web_log_all` VALUES ('548', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501058794');
INSERT INTO `tp_web_log_all` VALUES ('549', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501058819');
INSERT INTO `tp_web_log_all` VALUES ('550', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501059055');
INSERT INTO `tp_web_log_all` VALUES ('551', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1501059174');
INSERT INTO `tp_web_log_all` VALUES ('552', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501059801');
INSERT INTO `tp_web_log_all` VALUES ('553', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501059802');
INSERT INTO `tp_web_log_all` VALUES ('554', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501059889');
INSERT INTO `tp_web_log_all` VALUES ('555', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501059971');
INSERT INTO `tp_web_log_all` VALUES ('556', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501059974');
INSERT INTO `tp_web_log_all` VALUES ('557', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501059975');
INSERT INTO `tp_web_log_all` VALUES ('558', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501060063');
INSERT INTO `tp_web_log_all` VALUES ('559', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501060087');
INSERT INTO `tp_web_log_all` VALUES ('560', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501060099');
INSERT INTO `tp_web_log_all` VALUES ('561', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html?mobile=21653', 'admin', 'Yisheng', 'index', 'GET', 'a:1:{s:6:\"mobile\";s:5:\"21653\";}', '1501060141');
INSERT INTO `tp_web_log_all` VALUES ('562', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html?mobile=21653', 'admin', 'Yisheng', 'index', 'GET', 'a:1:{s:6:\"mobile\";s:5:\"21653\";}', '1501060145');
INSERT INTO `tp_web_log_all` VALUES ('563', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1501060736');
INSERT INTO `tp_web_log_all` VALUES ('564', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1501060738');
INSERT INTO `tp_web_log_all` VALUES ('565', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pninfo?username=tanglll', 'home', 'Index', 'pninfo', 'GET', 'a:1:{s:8:\"username\";s:7:\"tanglll\";}', '1501060739');
INSERT INTO `tp_web_log_all` VALUES ('566', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501061063');
INSERT INTO `tp_web_log_all` VALUES ('567', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html?p=2', 'admin', 'Huanzhe', 'index', 'GET', 'a:1:{s:1:\"p\";s:1:\"2\";}', '1501061067');
INSERT INTO `tp_web_log_all` VALUES ('568', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html?p=1', 'admin', 'Huanzhe', 'index', 'GET', 'a:1:{s:1:\"p\";s:1:\"1\";}', '1501061069');
INSERT INTO `tp_web_log_all` VALUES ('569', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501061100');
INSERT INTO `tp_web_log_all` VALUES ('570', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501061150');
INSERT INTO `tp_web_log_all` VALUES ('571', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501061152');
INSERT INTO `tp_web_log_all` VALUES ('572', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501061183');
INSERT INTO `tp_web_log_all` VALUES ('573', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501061195');
INSERT INTO `tp_web_log_all` VALUES ('574', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501061197');
INSERT INTO `tp_web_log_all` VALUES ('575', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html?username=tang', 'admin', 'Huanzhe', 'index', 'GET', 'a:1:{s:8:\"username\";s:4:\"tang\";}', '1501061210');
INSERT INTO `tp_web_log_all` VALUES ('576', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html?username=tang', 'admin', 'Huanzhe', 'index', 'GET', 'a:1:{s:8:\"username\";s:4:\"tang\";}', '1501061311');
INSERT INTO `tp_web_log_all` VALUES ('577', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html?username=ang', 'admin', 'Huanzhe', 'index', 'GET', 'a:1:{s:8:\"username\";s:3:\"ang\";}', '1501061321');
INSERT INTO `tp_web_log_all` VALUES ('578', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501061417');
INSERT INTO `tp_web_log_all` VALUES ('579', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501061629');
INSERT INTO `tp_web_log_all` VALUES ('580', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html?p=2', 'admin', 'Huanzhe', 'index', 'GET', 'a:1:{s:1:\"p\";s:1:\"2\";}', '1501062663');
INSERT INTO `tp_web_log_all` VALUES ('581', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html?p=1', 'admin', 'Huanzhe', 'index', 'GET', 'a:1:{s:1:\"p\";s:1:\"1\";}', '1501062664');
INSERT INTO `tp_web_log_all` VALUES ('582', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501062754');
INSERT INTO `tp_web_log_all` VALUES ('583', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501062764');
INSERT INTO `tp_web_log_all` VALUES ('584', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501062835');
INSERT INTO `tp_web_log_all` VALUES ('585', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501062858');
INSERT INTO `tp_web_log_all` VALUES ('586', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info.html', 'admin', 'Huanzhe', 'info', 'GET', 'a:0:{}', '1501063402');
INSERT INTO `tp_web_log_all` VALUES ('587', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info.html', 'admin', 'Huanzhe', 'info', 'GET', 'a:0:{}', '1501063422');
INSERT INTO `tp_web_log_all` VALUES ('588', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info.html', 'admin', 'Huanzhe', 'info', 'GET', 'a:0:{}', '1501063590');
INSERT INTO `tp_web_log_all` VALUES ('589', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501063730');
INSERT INTO `tp_web_log_all` VALUES ('590', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info.html', 'admin', 'Huanzhe', 'info', 'GET', 'a:0:{}', '1501063732');
INSERT INTO `tp_web_log_all` VALUES ('591', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info.html', 'admin', 'Huanzhe', 'info', 'GET', 'a:0:{}', '1501063793');
INSERT INTO `tp_web_log_all` VALUES ('592', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html?username=', 'admin', 'Huanzhe', 'index', 'GET', 'a:1:{s:8:\"username\";s:0:\"\";}', '1501064073');
INSERT INTO `tp_web_log_all` VALUES ('593', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info.html', 'admin', 'Huanzhe', 'info', 'GET', 'a:0:{}', '1501064074');
INSERT INTO `tp_web_log_all` VALUES ('594', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501064077');
INSERT INTO `tp_web_log_all` VALUES ('595', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501064077');
INSERT INTO `tp_web_log_all` VALUES ('596', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501064080');
INSERT INTO `tp_web_log_all` VALUES ('597', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501064082');
INSERT INTO `tp_web_log_all` VALUES ('598', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info.html', 'admin', 'Huanzhe', 'info', 'GET', 'a:0:{}', '1501064083');
INSERT INTO `tp_web_log_all` VALUES ('599', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501064163');
INSERT INTO `tp_web_log_all` VALUES ('600', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501064164');
INSERT INTO `tp_web_log_all` VALUES ('601', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501064165');
INSERT INTO `tp_web_log_all` VALUES ('602', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501064205');
INSERT INTO `tp_web_log_all` VALUES ('603', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501064205');
INSERT INTO `tp_web_log_all` VALUES ('604', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501064206');
INSERT INTO `tp_web_log_all` VALUES ('605', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=4', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1501064307');
INSERT INTO `tp_web_log_all` VALUES ('606', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=4', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1501064350');
INSERT INTO `tp_web_log_all` VALUES ('607', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=4', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1501064366');
INSERT INTO `tp_web_log_all` VALUES ('608', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=4', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1501064495');
INSERT INTO `tp_web_log_all` VALUES ('609', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=4', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1501064527');
INSERT INTO `tp_web_log_all` VALUES ('610', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=4', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1501064547');
INSERT INTO `tp_web_log_all` VALUES ('611', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=4', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1501064611');
INSERT INTO `tp_web_log_all` VALUES ('612', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=4', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1501064626');
INSERT INTO `tp_web_log_all` VALUES ('613', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=4', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1501064646');
INSERT INTO `tp_web_log_all` VALUES ('614', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501064659');
INSERT INTO `tp_web_log_all` VALUES ('615', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501064660');
INSERT INTO `tp_web_log_all` VALUES ('616', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501064674');
INSERT INTO `tp_web_log_all` VALUES ('617', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501064676');
INSERT INTO `tp_web_log_all` VALUES ('618', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=4', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1501064677');
INSERT INTO `tp_web_log_all` VALUES ('619', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=4', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1501064690');
INSERT INTO `tp_web_log_all` VALUES ('620', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501064762');
INSERT INTO `tp_web_log_all` VALUES ('621', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html?p=2', 'admin', 'Huanzhe', 'index', 'GET', 'a:1:{s:1:\"p\";s:1:\"2\";}', '1501064831');
INSERT INTO `tp_web_log_all` VALUES ('622', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=11', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"11\";}', '1501064833');
INSERT INTO `tp_web_log_all` VALUES ('623', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html?p=1', 'admin', 'Huanzhe', 'index', 'GET', 'a:1:{s:1:\"p\";s:1:\"1\";}', '1501064841');
INSERT INTO `tp_web_log_all` VALUES ('624', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501064858');
INSERT INTO `tp_web_log_all` VALUES ('625', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501064911');
INSERT INTO `tp_web_log_all` VALUES ('626', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=4', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1501064936');
INSERT INTO `tp_web_log_all` VALUES ('627', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501065024');
INSERT INTO `tp_web_log_all` VALUES ('628', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501065024');
INSERT INTO `tp_web_log_all` VALUES ('629', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501065026');
INSERT INTO `tp_web_log_all` VALUES ('630', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501065027');
INSERT INTO `tp_web_log_all` VALUES ('631', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501065039');
INSERT INTO `tp_web_log_all` VALUES ('632', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501065040');
INSERT INTO `tp_web_log_all` VALUES ('633', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501065116');
INSERT INTO `tp_web_log_all` VALUES ('634', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501065124');
INSERT INTO `tp_web_log_all` VALUES ('635', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501065171');
INSERT INTO `tp_web_log_all` VALUES ('636', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501065172');
INSERT INTO `tp_web_log_all` VALUES ('637', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501065174');
INSERT INTO `tp_web_log_all` VALUES ('638', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1501065188');
INSERT INTO `tp_web_log_all` VALUES ('639', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1501065188');
INSERT INTO `tp_web_log_all` VALUES ('640', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1501065190');
INSERT INTO `tp_web_log_all` VALUES ('641', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1501065192');
INSERT INTO `tp_web_log_all` VALUES ('642', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501065194');
INSERT INTO `tp_web_log_all` VALUES ('643', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501065321');
INSERT INTO `tp_web_log_all` VALUES ('644', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501065352');
INSERT INTO `tp_web_log_all` VALUES ('645', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501065379');
INSERT INTO `tp_web_log_all` VALUES ('646', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501065380');
INSERT INTO `tp_web_log_all` VALUES ('647', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501065382');
INSERT INTO `tp_web_log_all` VALUES ('648', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501065383');
INSERT INTO `tp_web_log_all` VALUES ('649', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501065451');
INSERT INTO `tp_web_log_all` VALUES ('650', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501065469');
INSERT INTO `tp_web_log_all` VALUES ('651', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501065498');
INSERT INTO `tp_web_log_all` VALUES ('652', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501065900');
INSERT INTO `tp_web_log_all` VALUES ('653', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501065969');
INSERT INTO `tp_web_log_all` VALUES ('654', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=13', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"13\";}', '1501065979');
INSERT INTO `tp_web_log_all` VALUES ('655', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=9', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:1:\"9\";}', '1501065983');
INSERT INTO `tp_web_log_all` VALUES ('656', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=7', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:1:\"7\";}', '1501065986');
INSERT INTO `tp_web_log_all` VALUES ('657', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=5', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1501065989');
INSERT INTO `tp_web_log_all` VALUES ('658', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=10', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"10\";}', '1501065992');
INSERT INTO `tp_web_log_all` VALUES ('659', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501121953');
INSERT INTO `tp_web_log_all` VALUES ('660', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501121954');
INSERT INTO `tp_web_log_all` VALUES ('661', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501124253');
INSERT INTO `tp_web_log_all` VALUES ('662', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501124388');
INSERT INTO `tp_web_log_all` VALUES ('663', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501124401');
INSERT INTO `tp_web_log_all` VALUES ('664', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501124424');
INSERT INTO `tp_web_log_all` VALUES ('665', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501124466');
INSERT INTO `tp_web_log_all` VALUES ('666', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501124523');
INSERT INTO `tp_web_log_all` VALUES ('667', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501124561');
INSERT INTO `tp_web_log_all` VALUES ('668', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501124848');
INSERT INTO `tp_web_log_all` VALUES ('669', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501125770');
INSERT INTO `tp_web_log_all` VALUES ('670', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501125806');
INSERT INTO `tp_web_log_all` VALUES ('671', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501126323');
INSERT INTO `tp_web_log_all` VALUES ('672', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501126331');
INSERT INTO `tp_web_log_all` VALUES ('673', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501126388');
INSERT INTO `tp_web_log_all` VALUES ('674', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501126388');
INSERT INTO `tp_web_log_all` VALUES ('675', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501126468');
INSERT INTO `tp_web_log_all` VALUES ('676', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501126469');
INSERT INTO `tp_web_log_all` VALUES ('677', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501128002');
INSERT INTO `tp_web_log_all` VALUES ('678', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501128003');
INSERT INTO `tp_web_log_all` VALUES ('679', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1501137997');
INSERT INTO `tp_web_log_all` VALUES ('680', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1501138017');
INSERT INTO `tp_web_log_all` VALUES ('681', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login?mobile=null', 'home', 'Index', 'login', 'GET', 'a:1:{s:6:\"mobile\";s:4:\"null\";}', '1501138017');
INSERT INTO `tp_web_log_all` VALUES ('682', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/index', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1501138030');
INSERT INTO `tp_web_log_all` VALUES ('683', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/index', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1501138125');
INSERT INTO `tp_web_log_all` VALUES ('684', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login?mobile=null', 'home', 'Index', 'login', 'GET', 'a:1:{s:6:\"mobile\";s:4:\"null\";}', '1501138125');
INSERT INTO `tp_web_log_all` VALUES ('685', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/index', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1501138138');
INSERT INTO `tp_web_log_all` VALUES ('686', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/index', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1501138153');
INSERT INTO `tp_web_log_all` VALUES ('687', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login?mobile=null', 'home', 'Index', 'login', 'GET', 'a:1:{s:6:\"mobile\";s:4:\"null\";}', '1501138153');
INSERT INTO `tp_web_log_all` VALUES ('688', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501138982');
INSERT INTO `tp_web_log_all` VALUES ('689', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501138982');
INSERT INTO `tp_web_log_all` VALUES ('690', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'IE(7.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501138993');
INSERT INTO `tp_web_log_all` VALUES ('691', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'IE(7.0)', 'http://admin.tll.com/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1501138993');
INSERT INTO `tp_web_log_all` VALUES ('692', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'IE(7.0)', 'http://admin.tll.com/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1501139008');
INSERT INTO `tp_web_log_all` VALUES ('693', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501140311');
INSERT INTO `tp_web_log_all` VALUES ('694', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501140424');
INSERT INTO `tp_web_log_all` VALUES ('695', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501140426');
INSERT INTO `tp_web_log_all` VALUES ('696', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html?p=2', 'admin', 'Huanzhe', 'index', 'GET', 'a:1:{s:1:\"p\";s:1:\"2\";}', '1501140437');
INSERT INTO `tp_web_log_all` VALUES ('697', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html?username=l', 'admin', 'Huanzhe', 'index', 'GET', 'a:1:{s:8:\"username\";s:1:\"l\";}', '1501140441');
INSERT INTO `tp_web_log_all` VALUES ('698', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html?p=2', 'admin', 'Huanzhe', 'index', 'GET', 'a:1:{s:1:\"p\";s:1:\"2\";}', '1501140444');
INSERT INTO `tp_web_log_all` VALUES ('699', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html?p=1', 'admin', 'Huanzhe', 'index', 'GET', 'a:1:{s:1:\"p\";s:1:\"1\";}', '1501140450');
INSERT INTO `tp_web_log_all` VALUES ('700', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501140894');
INSERT INTO `tp_web_log_all` VALUES ('701', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501140904');
INSERT INTO `tp_web_log_all` VALUES ('702', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501140908');
INSERT INTO `tp_web_log_all` VALUES ('703', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501141214');
INSERT INTO `tp_web_log_all` VALUES ('704', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501141214');
INSERT INTO `tp_web_log_all` VALUES ('705', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501141553');
INSERT INTO `tp_web_log_all` VALUES ('706', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501141553');
INSERT INTO `tp_web_log_all` VALUES ('707', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501141632');
INSERT INTO `tp_web_log_all` VALUES ('708', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501141632');
INSERT INTO `tp_web_log_all` VALUES ('709', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501141735');
INSERT INTO `tp_web_log_all` VALUES ('710', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501141735');
INSERT INTO `tp_web_log_all` VALUES ('711', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501141748');
INSERT INTO `tp_web_log_all` VALUES ('712', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501141749');
INSERT INTO `tp_web_log_all` VALUES ('713', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501141775');
INSERT INTO `tp_web_log_all` VALUES ('714', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501141775');
INSERT INTO `tp_web_log_all` VALUES ('715', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1501142918');
INSERT INTO `tp_web_log_all` VALUES ('716', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login?mobile=null', 'home', 'Index', 'login', 'GET', 'a:1:{s:6:\"mobile\";s:4:\"null\";}', '1501142933');
INSERT INTO `tp_web_log_all` VALUES ('717', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1501142936');
INSERT INTO `tp_web_log_all` VALUES ('718', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login?mobile=null', 'home', 'Index', 'login', 'GET', 'a:1:{s:6:\"mobile\";s:4:\"null\";}', '1501142936');
INSERT INTO `tp_web_log_all` VALUES ('719', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pn', 'home', 'Index', 'pn', 'GET', 'a:0:{}', '1501142944');
INSERT INTO `tp_web_log_all` VALUES ('720', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pnjs', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501142947');
INSERT INTO `tp_web_log_all` VALUES ('721', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pnjs', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501142975');
INSERT INTO `tp_web_log_all` VALUES ('722', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pnjs', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501142978');
INSERT INTO `tp_web_log_all` VALUES ('723', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pnjs', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501142978');
INSERT INTO `tp_web_log_all` VALUES ('724', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pnjs', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501142992');
INSERT INTO `tp_web_log_all` VALUES ('725', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pn', 'home', 'Index', 'pn', 'GET', 'a:0:{}', '1501143150');
INSERT INTO `tp_web_log_all` VALUES ('726', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login?mobile=null', 'home', 'Index', 'login', 'GET', 'a:1:{s:6:\"mobile\";s:4:\"null\";}', '1501143152');
INSERT INTO `tp_web_log_all` VALUES ('727', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pn', 'home', 'Index', 'pn', 'GET', 'a:0:{}', '1501143162');
INSERT INTO `tp_web_log_all` VALUES ('728', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pnjs', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501143167');
INSERT INTO `tp_web_log_all` VALUES ('729', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1501143192');
INSERT INTO `tp_web_log_all` VALUES ('730', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1501143224');
INSERT INTO `tp_web_log_all` VALUES ('731', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pnjs', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501143246');
INSERT INTO `tp_web_log_all` VALUES ('732', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1501143430');
INSERT INTO `tp_web_log_all` VALUES ('733', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login?mobile=null', 'home', 'Index', 'login', 'GET', 'a:1:{s:6:\"mobile\";s:4:\"null\";}', '1501143430');
INSERT INTO `tp_web_log_all` VALUES ('734', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501143856');
INSERT INTO `tp_web_log_all` VALUES ('735', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/pnjs', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501143864');
INSERT INTO `tp_web_log_all` VALUES ('736', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501143900');
INSERT INTO `tp_web_log_all` VALUES ('737', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501143905');
INSERT INTO `tp_web_log_all` VALUES ('738', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501146750');
INSERT INTO `tp_web_log_all` VALUES ('739', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501146799');
INSERT INTO `tp_web_log_all` VALUES ('740', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/admin', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501147383');
INSERT INTO `tp_web_log_all` VALUES ('741', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1501147383');
INSERT INTO `tp_web_log_all` VALUES ('742', '0', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/admin/pub/checklogin.html', 'admin', 'Pub', 'checklogin', 'POST', 'a:3:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"b57f\";}', '1501147394');
INSERT INTO `tp_web_log_all` VALUES ('743', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/admin/pub/checklogin.html', 'admin', 'Pub', 'checklogin', 'POST', 'a:3:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"vywk\";}', '1501147403');
INSERT INTO `tp_web_log_all` VALUES ('744', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501147403');
INSERT INTO `tp_web_log_all` VALUES ('745', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501147403');
INSERT INTO `tp_web_log_all` VALUES ('746', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501147406');
INSERT INTO `tp_web_log_all` VALUES ('747', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501147673');
INSERT INTO `tp_web_log_all` VALUES ('748', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501147703');
INSERT INTO `tp_web_log_all` VALUES ('749', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501147703');
INSERT INTO `tp_web_log_all` VALUES ('750', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501147705');
INSERT INTO `tp_web_log_all` VALUES ('751', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501147705');
INSERT INTO `tp_web_log_all` VALUES ('752', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501147924');
INSERT INTO `tp_web_log_all` VALUES ('753', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501147938');
INSERT INTO `tp_web_log_all` VALUES ('754', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/admin/yisheng/info?uid=2', 'admin', 'Yisheng', 'info', 'GET', 'a:1:{s:3:\"uid\";s:1:\"2\";}', '1501147989');
INSERT INTO `tp_web_log_all` VALUES ('755', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/admin/yisheng/info?uid=2', 'admin', 'Yisheng', 'info', 'GET', 'a:1:{s:3:\"uid\";s:1:\"2\";}', '1501148019');
INSERT INTO `tp_web_log_all` VALUES ('756', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501148308');
INSERT INTO `tp_web_log_all` VALUES ('757', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501148629');
INSERT INTO `tp_web_log_all` VALUES ('758', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501148630');
INSERT INTO `tp_web_log_all` VALUES ('759', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501148631');
INSERT INTO `tp_web_log_all` VALUES ('760', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501148632');
INSERT INTO `tp_web_log_all` VALUES ('761', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501148810');
INSERT INTO `tp_web_log_all` VALUES ('762', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1501148811');
INSERT INTO `tp_web_log_all` VALUES ('763', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/pub/checklogin.html', 'admin', 'Pub', 'checklogin', 'POST', 'a:3:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"ecqx\";}', '1501148820');
INSERT INTO `tp_web_log_all` VALUES ('764', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501148820');
INSERT INTO `tp_web_log_all` VALUES ('765', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501148820');
INSERT INTO `tp_web_log_all` VALUES ('766', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501148824');
INSERT INTO `tp_web_log_all` VALUES ('767', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/info?uid=3', 'admin', 'Yisheng', 'info', 'GET', 'a:1:{s:3:\"uid\";s:1:\"3\";}', '1501149035');
INSERT INTO `tp_web_log_all` VALUES ('768', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/info?uid=3', 'admin', 'Yisheng', 'info', 'GET', 'a:1:{s:3:\"uid\";s:1:\"3\";}', '1501149068');
INSERT INTO `tp_web_log_all` VALUES ('769', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/info?uid=3', 'admin', 'Yisheng', 'info', 'GET', 'a:1:{s:3:\"uid\";s:1:\"3\";}', '1501149071');
INSERT INTO `tp_web_log_all` VALUES ('770', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501149203');
INSERT INTO `tp_web_log_all` VALUES ('771', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501149204');
INSERT INTO `tp_web_log_all` VALUES ('772', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501149206');
INSERT INTO `tp_web_log_all` VALUES ('773', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/info?uid=3', 'admin', 'Yisheng', 'info', 'GET', 'a:1:{s:3:\"uid\";s:1:\"3\";}', '1501149250');
INSERT INTO `tp_web_log_all` VALUES ('774', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501149281');
INSERT INTO `tp_web_log_all` VALUES ('775', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501149453');
INSERT INTO `tp_web_log_all` VALUES ('776', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501149475');
INSERT INTO `tp_web_log_all` VALUES ('777', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501149538');
INSERT INTO `tp_web_log_all` VALUES ('778', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501149579');
INSERT INTO `tp_web_log_all` VALUES ('779', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501149580');
INSERT INTO `tp_web_log_all` VALUES ('780', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1501149580');
INSERT INTO `tp_web_log_all` VALUES ('781', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501149581');
INSERT INTO `tp_web_log_all` VALUES ('782', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501149581');
INSERT INTO `tp_web_log_all` VALUES ('783', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501149583');
INSERT INTO `tp_web_log_all` VALUES ('784', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501149583');
INSERT INTO `tp_web_log_all` VALUES ('785', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501149598');
INSERT INTO `tp_web_log_all` VALUES ('786', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501149598');
INSERT INTO `tp_web_log_all` VALUES ('787', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/demo/excel.html', 'admin', 'Demo', 'excel', 'GET', 'a:0:{}', '1501149601');
INSERT INTO `tp_web_log_all` VALUES ('788', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501149639');
INSERT INTO `tp_web_log_all` VALUES ('789', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'POST', 'a:0:{}', '1501149642');
INSERT INTO `tp_web_log_all` VALUES ('790', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501149829');
INSERT INTO `tp_web_log_all` VALUES ('791', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501149830');
INSERT INTO `tp_web_log_all` VALUES ('792', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501149832');
INSERT INTO `tp_web_log_all` VALUES ('793', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html?username=', 'admin', 'Huanzhe', 'index', 'GET', 'a:1:{s:8:\"username\";s:0:\"\";}', '1501149833');
INSERT INTO `tp_web_log_all` VALUES ('794', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/demo/excel.html', 'admin', 'Demo', 'excel', 'GET', 'a:0:{}', '1501149871');
INSERT INTO `tp_web_log_all` VALUES ('795', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501149902');
INSERT INTO `tp_web_log_all` VALUES ('796', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501149903');
INSERT INTO `tp_web_log_all` VALUES ('797', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501150177');
INSERT INTO `tp_web_log_all` VALUES ('798', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501150177');
INSERT INTO `tp_web_log_all` VALUES ('799', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501150178');
INSERT INTO `tp_web_log_all` VALUES ('800', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501150178');
INSERT INTO `tp_web_log_all` VALUES ('801', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501150217');
INSERT INTO `tp_web_log_all` VALUES ('802', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501150218');
INSERT INTO `tp_web_log_all` VALUES ('803', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501150239');
INSERT INTO `tp_web_log_all` VALUES ('804', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'POST', 'a:0:{}', '1501150280');
INSERT INTO `tp_web_log_all` VALUES ('805', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/export', 'admin', 'Huanzhe', 'export', 'GET', 'a:0:{}', '1501150283');
INSERT INTO `tp_web_log_all` VALUES ('806', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501150422');
INSERT INTO `tp_web_log_all` VALUES ('807', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/export', 'admin', 'Huanzhe', 'export', 'GET', 'a:0:{}', '1501150425');
INSERT INTO `tp_web_log_all` VALUES ('808', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/export', 'admin', 'Huanzhe', 'export', 'GET', 'a:0:{}', '1501150777');
INSERT INTO `tp_web_log_all` VALUES ('809', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501150854');
INSERT INTO `tp_web_log_all` VALUES ('810', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/export', 'admin', 'Huanzhe', 'export', 'GET', 'a:0:{}', '1501150855');
INSERT INTO `tp_web_log_all` VALUES ('811', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501151283');
INSERT INTO `tp_web_log_all` VALUES ('812', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501151283');
INSERT INTO `tp_web_log_all` VALUES ('813', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151288');
INSERT INTO `tp_web_log_all` VALUES ('814', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151289');
INSERT INTO `tp_web_log_all` VALUES ('815', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151289');
INSERT INTO `tp_web_log_all` VALUES ('816', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151289');
INSERT INTO `tp_web_log_all` VALUES ('817', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151290');
INSERT INTO `tp_web_log_all` VALUES ('818', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151290');
INSERT INTO `tp_web_log_all` VALUES ('819', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151290');
INSERT INTO `tp_web_log_all` VALUES ('820', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151290');
INSERT INTO `tp_web_log_all` VALUES ('821', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151291');
INSERT INTO `tp_web_log_all` VALUES ('822', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151291');
INSERT INTO `tp_web_log_all` VALUES ('823', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151291');
INSERT INTO `tp_web_log_all` VALUES ('824', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151292');
INSERT INTO `tp_web_log_all` VALUES ('825', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151292');
INSERT INTO `tp_web_log_all` VALUES ('826', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151292');
INSERT INTO `tp_web_log_all` VALUES ('827', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151292');
INSERT INTO `tp_web_log_all` VALUES ('828', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151293');
INSERT INTO `tp_web_log_all` VALUES ('829', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151293');
INSERT INTO `tp_web_log_all` VALUES ('830', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151293');
INSERT INTO `tp_web_log_all` VALUES ('831', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151293');
INSERT INTO `tp_web_log_all` VALUES ('832', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151294');
INSERT INTO `tp_web_log_all` VALUES ('833', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151294');
INSERT INTO `tp_web_log_all` VALUES ('834', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151294');
INSERT INTO `tp_web_log_all` VALUES ('835', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151295');
INSERT INTO `tp_web_log_all` VALUES ('836', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151295');
INSERT INTO `tp_web_log_all` VALUES ('837', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151295');
INSERT INTO `tp_web_log_all` VALUES ('838', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151295');
INSERT INTO `tp_web_log_all` VALUES ('839', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151296');
INSERT INTO `tp_web_log_all` VALUES ('840', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151296');
INSERT INTO `tp_web_log_all` VALUES ('841', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151296');
INSERT INTO `tp_web_log_all` VALUES ('842', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151296');
INSERT INTO `tp_web_log_all` VALUES ('843', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151297');
INSERT INTO `tp_web_log_all` VALUES ('844', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151297');
INSERT INTO `tp_web_log_all` VALUES ('845', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151297');
INSERT INTO `tp_web_log_all` VALUES ('846', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151297');
INSERT INTO `tp_web_log_all` VALUES ('847', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151298');
INSERT INTO `tp_web_log_all` VALUES ('848', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151298');
INSERT INTO `tp_web_log_all` VALUES ('849', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151298');
INSERT INTO `tp_web_log_all` VALUES ('850', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151298');
INSERT INTO `tp_web_log_all` VALUES ('851', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151299');
INSERT INTO `tp_web_log_all` VALUES ('852', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151299');
INSERT INTO `tp_web_log_all` VALUES ('853', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151299');
INSERT INTO `tp_web_log_all` VALUES ('854', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151299');
INSERT INTO `tp_web_log_all` VALUES ('855', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151300');
INSERT INTO `tp_web_log_all` VALUES ('856', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151300');
INSERT INTO `tp_web_log_all` VALUES ('857', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151300');
INSERT INTO `tp_web_log_all` VALUES ('858', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151300');
INSERT INTO `tp_web_log_all` VALUES ('859', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151301');
INSERT INTO `tp_web_log_all` VALUES ('860', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151301');
INSERT INTO `tp_web_log_all` VALUES ('861', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151301');
INSERT INTO `tp_web_log_all` VALUES ('862', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151302');
INSERT INTO `tp_web_log_all` VALUES ('863', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151302');
INSERT INTO `tp_web_log_all` VALUES ('864', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151302');
INSERT INTO `tp_web_log_all` VALUES ('865', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151302');
INSERT INTO `tp_web_log_all` VALUES ('866', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151303');
INSERT INTO `tp_web_log_all` VALUES ('867', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151303');
INSERT INTO `tp_web_log_all` VALUES ('868', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151303');
INSERT INTO `tp_web_log_all` VALUES ('869', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151304');
INSERT INTO `tp_web_log_all` VALUES ('870', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151304');
INSERT INTO `tp_web_log_all` VALUES ('871', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151304');
INSERT INTO `tp_web_log_all` VALUES ('872', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151304');
INSERT INTO `tp_web_log_all` VALUES ('873', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151305');
INSERT INTO `tp_web_log_all` VALUES ('874', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151305');
INSERT INTO `tp_web_log_all` VALUES ('875', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151305');
INSERT INTO `tp_web_log_all` VALUES ('876', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151305');
INSERT INTO `tp_web_log_all` VALUES ('877', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151306');
INSERT INTO `tp_web_log_all` VALUES ('878', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151306');
INSERT INTO `tp_web_log_all` VALUES ('879', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151306');
INSERT INTO `tp_web_log_all` VALUES ('880', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151306');
INSERT INTO `tp_web_log_all` VALUES ('881', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151307');
INSERT INTO `tp_web_log_all` VALUES ('882', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151307');
INSERT INTO `tp_web_log_all` VALUES ('883', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151307');
INSERT INTO `tp_web_log_all` VALUES ('884', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151307');
INSERT INTO `tp_web_log_all` VALUES ('885', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151308');
INSERT INTO `tp_web_log_all` VALUES ('886', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151308');
INSERT INTO `tp_web_log_all` VALUES ('887', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151308');
INSERT INTO `tp_web_log_all` VALUES ('888', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151309');
INSERT INTO `tp_web_log_all` VALUES ('889', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151309');
INSERT INTO `tp_web_log_all` VALUES ('890', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151309');
INSERT INTO `tp_web_log_all` VALUES ('891', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151309');
INSERT INTO `tp_web_log_all` VALUES ('892', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151310');
INSERT INTO `tp_web_log_all` VALUES ('893', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151310');
INSERT INTO `tp_web_log_all` VALUES ('894', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151310');
INSERT INTO `tp_web_log_all` VALUES ('895', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151311');
INSERT INTO `tp_web_log_all` VALUES ('896', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151311');
INSERT INTO `tp_web_log_all` VALUES ('897', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151311');
INSERT INTO `tp_web_log_all` VALUES ('898', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151312');
INSERT INTO `tp_web_log_all` VALUES ('899', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151312');
INSERT INTO `tp_web_log_all` VALUES ('900', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151312');
INSERT INTO `tp_web_log_all` VALUES ('901', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151313');
INSERT INTO `tp_web_log_all` VALUES ('902', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151313');
INSERT INTO `tp_web_log_all` VALUES ('903', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151313');
INSERT INTO `tp_web_log_all` VALUES ('904', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151313');
INSERT INTO `tp_web_log_all` VALUES ('905', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151314');
INSERT INTO `tp_web_log_all` VALUES ('906', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151314');
INSERT INTO `tp_web_log_all` VALUES ('907', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151314');
INSERT INTO `tp_web_log_all` VALUES ('908', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151314');
INSERT INTO `tp_web_log_all` VALUES ('909', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151315');
INSERT INTO `tp_web_log_all` VALUES ('910', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151315');
INSERT INTO `tp_web_log_all` VALUES ('911', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151315');
INSERT INTO `tp_web_log_all` VALUES ('912', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151316');
INSERT INTO `tp_web_log_all` VALUES ('913', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151316');
INSERT INTO `tp_web_log_all` VALUES ('914', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151316');
INSERT INTO `tp_web_log_all` VALUES ('915', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151316');
INSERT INTO `tp_web_log_all` VALUES ('916', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151317');
INSERT INTO `tp_web_log_all` VALUES ('917', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151317');
INSERT INTO `tp_web_log_all` VALUES ('918', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151317');
INSERT INTO `tp_web_log_all` VALUES ('919', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151317');
INSERT INTO `tp_web_log_all` VALUES ('920', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151318');
INSERT INTO `tp_web_log_all` VALUES ('921', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151318');
INSERT INTO `tp_web_log_all` VALUES ('922', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151318');
INSERT INTO `tp_web_log_all` VALUES ('923', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151318');
INSERT INTO `tp_web_log_all` VALUES ('924', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151319');
INSERT INTO `tp_web_log_all` VALUES ('925', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151319');
INSERT INTO `tp_web_log_all` VALUES ('926', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151319');
INSERT INTO `tp_web_log_all` VALUES ('927', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151320');
INSERT INTO `tp_web_log_all` VALUES ('928', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151320');
INSERT INTO `tp_web_log_all` VALUES ('929', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151320');
INSERT INTO `tp_web_log_all` VALUES ('930', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151320');
INSERT INTO `tp_web_log_all` VALUES ('931', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151321');
INSERT INTO `tp_web_log_all` VALUES ('932', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151321');
INSERT INTO `tp_web_log_all` VALUES ('933', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151321');
INSERT INTO `tp_web_log_all` VALUES ('934', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151321');
INSERT INTO `tp_web_log_all` VALUES ('935', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151322');
INSERT INTO `tp_web_log_all` VALUES ('936', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151322');
INSERT INTO `tp_web_log_all` VALUES ('937', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151322');
INSERT INTO `tp_web_log_all` VALUES ('938', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151322');
INSERT INTO `tp_web_log_all` VALUES ('939', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151323');
INSERT INTO `tp_web_log_all` VALUES ('940', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151323');
INSERT INTO `tp_web_log_all` VALUES ('941', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151323');
INSERT INTO `tp_web_log_all` VALUES ('942', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151324');
INSERT INTO `tp_web_log_all` VALUES ('943', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151324');
INSERT INTO `tp_web_log_all` VALUES ('944', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151324');
INSERT INTO `tp_web_log_all` VALUES ('945', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151325');
INSERT INTO `tp_web_log_all` VALUES ('946', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151325');
INSERT INTO `tp_web_log_all` VALUES ('947', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151325');
INSERT INTO `tp_web_log_all` VALUES ('948', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151325');
INSERT INTO `tp_web_log_all` VALUES ('949', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151326');
INSERT INTO `tp_web_log_all` VALUES ('950', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151326');
INSERT INTO `tp_web_log_all` VALUES ('951', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151326');
INSERT INTO `tp_web_log_all` VALUES ('952', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151327');
INSERT INTO `tp_web_log_all` VALUES ('953', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151327');
INSERT INTO `tp_web_log_all` VALUES ('954', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151327');
INSERT INTO `tp_web_log_all` VALUES ('955', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151327');
INSERT INTO `tp_web_log_all` VALUES ('956', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151328');
INSERT INTO `tp_web_log_all` VALUES ('957', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151328');
INSERT INTO `tp_web_log_all` VALUES ('958', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151328');
INSERT INTO `tp_web_log_all` VALUES ('959', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151328');
INSERT INTO `tp_web_log_all` VALUES ('960', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151329');
INSERT INTO `tp_web_log_all` VALUES ('961', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151329');
INSERT INTO `tp_web_log_all` VALUES ('962', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151329');
INSERT INTO `tp_web_log_all` VALUES ('963', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151329');
INSERT INTO `tp_web_log_all` VALUES ('964', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151330');
INSERT INTO `tp_web_log_all` VALUES ('965', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151330');
INSERT INTO `tp_web_log_all` VALUES ('966', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151330');
INSERT INTO `tp_web_log_all` VALUES ('967', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151331');
INSERT INTO `tp_web_log_all` VALUES ('968', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151331');
INSERT INTO `tp_web_log_all` VALUES ('969', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151331');
INSERT INTO `tp_web_log_all` VALUES ('970', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151331');
INSERT INTO `tp_web_log_all` VALUES ('971', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151332');
INSERT INTO `tp_web_log_all` VALUES ('972', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151332');
INSERT INTO `tp_web_log_all` VALUES ('973', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151332');
INSERT INTO `tp_web_log_all` VALUES ('974', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151332');
INSERT INTO `tp_web_log_all` VALUES ('975', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151333');
INSERT INTO `tp_web_log_all` VALUES ('976', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151333');
INSERT INTO `tp_web_log_all` VALUES ('977', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151333');
INSERT INTO `tp_web_log_all` VALUES ('978', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151333');
INSERT INTO `tp_web_log_all` VALUES ('979', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151334');
INSERT INTO `tp_web_log_all` VALUES ('980', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151334');
INSERT INTO `tp_web_log_all` VALUES ('981', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151334');
INSERT INTO `tp_web_log_all` VALUES ('982', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151335');
INSERT INTO `tp_web_log_all` VALUES ('983', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151335');
INSERT INTO `tp_web_log_all` VALUES ('984', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151335');
INSERT INTO `tp_web_log_all` VALUES ('985', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151336');
INSERT INTO `tp_web_log_all` VALUES ('986', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151336');
INSERT INTO `tp_web_log_all` VALUES ('987', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151336');
INSERT INTO `tp_web_log_all` VALUES ('988', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151336');
INSERT INTO `tp_web_log_all` VALUES ('989', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151337');
INSERT INTO `tp_web_log_all` VALUES ('990', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151337');
INSERT INTO `tp_web_log_all` VALUES ('991', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151337');
INSERT INTO `tp_web_log_all` VALUES ('992', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151338');
INSERT INTO `tp_web_log_all` VALUES ('993', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151338');
INSERT INTO `tp_web_log_all` VALUES ('994', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151338');
INSERT INTO `tp_web_log_all` VALUES ('995', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151338');
INSERT INTO `tp_web_log_all` VALUES ('996', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151339');
INSERT INTO `tp_web_log_all` VALUES ('997', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151339');
INSERT INTO `tp_web_log_all` VALUES ('998', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151339');
INSERT INTO `tp_web_log_all` VALUES ('999', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151339');
INSERT INTO `tp_web_log_all` VALUES ('1000', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151340');
INSERT INTO `tp_web_log_all` VALUES ('1001', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151340');
INSERT INTO `tp_web_log_all` VALUES ('1002', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151340');
INSERT INTO `tp_web_log_all` VALUES ('1003', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151340');
INSERT INTO `tp_web_log_all` VALUES ('1004', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151341');
INSERT INTO `tp_web_log_all` VALUES ('1005', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151341');
INSERT INTO `tp_web_log_all` VALUES ('1006', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151341');
INSERT INTO `tp_web_log_all` VALUES ('1007', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151342');
INSERT INTO `tp_web_log_all` VALUES ('1008', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151342');
INSERT INTO `tp_web_log_all` VALUES ('1009', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151343');
INSERT INTO `tp_web_log_all` VALUES ('1010', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151343');
INSERT INTO `tp_web_log_all` VALUES ('1011', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151343');
INSERT INTO `tp_web_log_all` VALUES ('1012', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151343');
INSERT INTO `tp_web_log_all` VALUES ('1013', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151344');
INSERT INTO `tp_web_log_all` VALUES ('1014', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151344');
INSERT INTO `tp_web_log_all` VALUES ('1015', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151344');
INSERT INTO `tp_web_log_all` VALUES ('1016', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151344');
INSERT INTO `tp_web_log_all` VALUES ('1017', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151345');
INSERT INTO `tp_web_log_all` VALUES ('1018', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151345');
INSERT INTO `tp_web_log_all` VALUES ('1019', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151345');
INSERT INTO `tp_web_log_all` VALUES ('1020', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151346');
INSERT INTO `tp_web_log_all` VALUES ('1021', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151346');
INSERT INTO `tp_web_log_all` VALUES ('1022', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151346');
INSERT INTO `tp_web_log_all` VALUES ('1023', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151346');
INSERT INTO `tp_web_log_all` VALUES ('1024', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151347');
INSERT INTO `tp_web_log_all` VALUES ('1025', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151347');
INSERT INTO `tp_web_log_all` VALUES ('1026', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151347');
INSERT INTO `tp_web_log_all` VALUES ('1027', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151347');
INSERT INTO `tp_web_log_all` VALUES ('1028', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151348');
INSERT INTO `tp_web_log_all` VALUES ('1029', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151348');
INSERT INTO `tp_web_log_all` VALUES ('1030', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151348');
INSERT INTO `tp_web_log_all` VALUES ('1031', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151348');
INSERT INTO `tp_web_log_all` VALUES ('1032', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151349');
INSERT INTO `tp_web_log_all` VALUES ('1033', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151349');
INSERT INTO `tp_web_log_all` VALUES ('1034', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151349');
INSERT INTO `tp_web_log_all` VALUES ('1035', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151349');
INSERT INTO `tp_web_log_all` VALUES ('1036', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151350');
INSERT INTO `tp_web_log_all` VALUES ('1037', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151350');
INSERT INTO `tp_web_log_all` VALUES ('1038', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151351');
INSERT INTO `tp_web_log_all` VALUES ('1039', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151351');
INSERT INTO `tp_web_log_all` VALUES ('1040', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151351');
INSERT INTO `tp_web_log_all` VALUES ('1041', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151352');
INSERT INTO `tp_web_log_all` VALUES ('1042', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151352');
INSERT INTO `tp_web_log_all` VALUES ('1043', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151352');
INSERT INTO `tp_web_log_all` VALUES ('1044', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151353');
INSERT INTO `tp_web_log_all` VALUES ('1045', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151353');
INSERT INTO `tp_web_log_all` VALUES ('1046', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151353');
INSERT INTO `tp_web_log_all` VALUES ('1047', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151353');
INSERT INTO `tp_web_log_all` VALUES ('1048', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151354');
INSERT INTO `tp_web_log_all` VALUES ('1049', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151377');
INSERT INTO `tp_web_log_all` VALUES ('1050', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151377');
INSERT INTO `tp_web_log_all` VALUES ('1051', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151378');
INSERT INTO `tp_web_log_all` VALUES ('1052', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151378');
INSERT INTO `tp_web_log_all` VALUES ('1053', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151378');
INSERT INTO `tp_web_log_all` VALUES ('1054', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151378');
INSERT INTO `tp_web_log_all` VALUES ('1055', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151379');
INSERT INTO `tp_web_log_all` VALUES ('1056', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151379');
INSERT INTO `tp_web_log_all` VALUES ('1057', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151379');
INSERT INTO `tp_web_log_all` VALUES ('1058', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151379');
INSERT INTO `tp_web_log_all` VALUES ('1059', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151380');
INSERT INTO `tp_web_log_all` VALUES ('1060', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151380');
INSERT INTO `tp_web_log_all` VALUES ('1061', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151380');
INSERT INTO `tp_web_log_all` VALUES ('1062', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151381');
INSERT INTO `tp_web_log_all` VALUES ('1063', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151381');
INSERT INTO `tp_web_log_all` VALUES ('1064', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151381');
INSERT INTO `tp_web_log_all` VALUES ('1065', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151381');
INSERT INTO `tp_web_log_all` VALUES ('1066', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151382');
INSERT INTO `tp_web_log_all` VALUES ('1067', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151382');
INSERT INTO `tp_web_log_all` VALUES ('1068', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151382');
INSERT INTO `tp_web_log_all` VALUES ('1069', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151382');
INSERT INTO `tp_web_log_all` VALUES ('1070', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151383');
INSERT INTO `tp_web_log_all` VALUES ('1071', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151383');
INSERT INTO `tp_web_log_all` VALUES ('1072', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151383');
INSERT INTO `tp_web_log_all` VALUES ('1073', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151383');
INSERT INTO `tp_web_log_all` VALUES ('1074', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151384');
INSERT INTO `tp_web_log_all` VALUES ('1075', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151384');
INSERT INTO `tp_web_log_all` VALUES ('1076', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151384');
INSERT INTO `tp_web_log_all` VALUES ('1077', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151385');
INSERT INTO `tp_web_log_all` VALUES ('1078', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151385');
INSERT INTO `tp_web_log_all` VALUES ('1079', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151385');
INSERT INTO `tp_web_log_all` VALUES ('1080', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151385');
INSERT INTO `tp_web_log_all` VALUES ('1081', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151386');
INSERT INTO `tp_web_log_all` VALUES ('1082', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151386');
INSERT INTO `tp_web_log_all` VALUES ('1083', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151386');
INSERT INTO `tp_web_log_all` VALUES ('1084', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151386');
INSERT INTO `tp_web_log_all` VALUES ('1085', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151387');
INSERT INTO `tp_web_log_all` VALUES ('1086', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151387');
INSERT INTO `tp_web_log_all` VALUES ('1087', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151387');
INSERT INTO `tp_web_log_all` VALUES ('1088', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151388');
INSERT INTO `tp_web_log_all` VALUES ('1089', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151388');
INSERT INTO `tp_web_log_all` VALUES ('1090', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151388');
INSERT INTO `tp_web_log_all` VALUES ('1091', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151388');
INSERT INTO `tp_web_log_all` VALUES ('1092', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151396');
INSERT INTO `tp_web_log_all` VALUES ('1093', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151437');
INSERT INTO `tp_web_log_all` VALUES ('1094', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index?mobile=18811216533', 'home', 'Index', 'index', 'GET', 'a:1:{s:6:\"mobile\";s:11:\"18811216533\";}', '1501151438');
INSERT INTO `tp_web_log_all` VALUES ('1095', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index?mobile=18811216533', 'home', 'Index', 'index', 'GET', 'a:1:{s:6:\"mobile\";s:11:\"18811216533\";}', '1501151484');
INSERT INTO `tp_web_log_all` VALUES ('1096', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501151490');
INSERT INTO `tp_web_log_all` VALUES ('1097', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index?mobile=18811216533', 'home', 'Index', 'index', 'GET', 'a:1:{s:6:\"mobile\";s:11:\"18811216533\";}', '1501151490');
INSERT INTO `tp_web_log_all` VALUES ('1098', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1501151497');
INSERT INTO `tp_web_log_all` VALUES ('1099', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501151499');
INSERT INTO `tp_web_log_all` VALUES ('1100', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501151742');
INSERT INTO `tp_web_log_all` VALUES ('1101', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501151757');
INSERT INTO `tp_web_log_all` VALUES ('1102', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501151776');
INSERT INTO `tp_web_log_all` VALUES ('1103', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501151788');
INSERT INTO `tp_web_log_all` VALUES ('1104', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501151824');
INSERT INTO `tp_web_log_all` VALUES ('1105', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501151827');
INSERT INTO `tp_web_log_all` VALUES ('1106', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501151940');
INSERT INTO `tp_web_log_all` VALUES ('1107', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501151943');
INSERT INTO `tp_web_log_all` VALUES ('1108', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501151943');
INSERT INTO `tp_web_log_all` VALUES ('1109', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501151943');
INSERT INTO `tp_web_log_all` VALUES ('1110', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501151944');
INSERT INTO `tp_web_log_all` VALUES ('1111', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501151944');
INSERT INTO `tp_web_log_all` VALUES ('1112', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501151944');
INSERT INTO `tp_web_log_all` VALUES ('1113', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501151944');
INSERT INTO `tp_web_log_all` VALUES ('1114', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501151945');
INSERT INTO `tp_web_log_all` VALUES ('1115', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501151945');
INSERT INTO `tp_web_log_all` VALUES ('1116', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501151945');
INSERT INTO `tp_web_log_all` VALUES ('1117', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501151945');
INSERT INTO `tp_web_log_all` VALUES ('1118', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501151946');
INSERT INTO `tp_web_log_all` VALUES ('1119', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501151946');
INSERT INTO `tp_web_log_all` VALUES ('1120', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501151947');
INSERT INTO `tp_web_log_all` VALUES ('1121', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1501152157');
INSERT INTO `tp_web_log_all` VALUES ('1122', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1501152158');
INSERT INTO `tp_web_log_all` VALUES ('1123', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1501152233');
INSERT INTO `tp_web_log_all` VALUES ('1124', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1501152257');
INSERT INTO `tp_web_log_all` VALUES ('1125', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1501152267');
INSERT INTO `tp_web_log_all` VALUES ('1126', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1501152418');
INSERT INTO `tp_web_log_all` VALUES ('1127', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pninfo?username=tanglll', 'home', 'Index', 'pninfo', 'GET', 'a:1:{s:8:\"username\";s:7:\"tanglll\";}', '1501152419');
INSERT INTO `tp_web_log_all` VALUES ('1128', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1501152426');
INSERT INTO `tp_web_log_all` VALUES ('1129', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1501152445');
INSERT INTO `tp_web_log_all` VALUES ('1130', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1501152452');
INSERT INTO `tp_web_log_all` VALUES ('1131', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1501152468');
INSERT INTO `tp_web_log_all` VALUES ('1132', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501152470');
INSERT INTO `tp_web_log_all` VALUES ('1133', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501206765');
INSERT INTO `tp_web_log_all` VALUES ('1134', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501206765');
INSERT INTO `tp_web_log_all` VALUES ('1135', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501206939');
INSERT INTO `tp_web_log_all` VALUES ('1136', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501206940');
INSERT INTO `tp_web_log_all` VALUES ('1137', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501206941');
INSERT INTO `tp_web_log_all` VALUES ('1138', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501206941');
INSERT INTO `tp_web_log_all` VALUES ('1139', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501206944');
INSERT INTO `tp_web_log_all` VALUES ('1140', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501206944');
INSERT INTO `tp_web_log_all` VALUES ('1141', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1501206998');
INSERT INTO `tp_web_log_all` VALUES ('1142', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501207004');
INSERT INTO `tp_web_log_all` VALUES ('1143', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501207004');
INSERT INTO `tp_web_log_all` VALUES ('1144', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1501208322');
INSERT INTO `tp_web_log_all` VALUES ('1145', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1501208323');
INSERT INTO `tp_web_log_all` VALUES ('1146', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pninfo?username=tanglll', 'home', 'Index', 'pninfo', 'GET', 'a:1:{s:8:\"username\";s:7:\"tanglll\";}', '1501208326');
INSERT INTO `tp_web_log_all` VALUES ('1147', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501208342');
INSERT INTO `tp_web_log_all` VALUES ('1148', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501208371');
INSERT INTO `tp_web_log_all` VALUES ('1149', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501208403');
INSERT INTO `tp_web_log_all` VALUES ('1150', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501208419');
INSERT INTO `tp_web_log_all` VALUES ('1151', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501208428');
INSERT INTO `tp_web_log_all` VALUES ('1152', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=12', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"12\";}', '1501208442');
INSERT INTO `tp_web_log_all` VALUES ('1153', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501208471');
INSERT INTO `tp_web_log_all` VALUES ('1154', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/info?id=14', 'admin', 'Huanzhe', 'info', 'GET', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1501209055');
INSERT INTO `tp_web_log_all` VALUES ('1155', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1501209078');
INSERT INTO `tp_web_log_all` VALUES ('1156', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1501209080');
INSERT INTO `tp_web_log_all` VALUES ('1157', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnjs.html', 'home', 'Index', 'pnjs', 'GET', 'a:0:{}', '1501209081');
INSERT INTO `tp_web_log_all` VALUES ('1158', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1501209437');
INSERT INTO `tp_web_log_all` VALUES ('1159', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1501209449');
INSERT INTO `tp_web_log_all` VALUES ('1160', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/login?mobile=null', 'home', 'Index', 'login', 'GET', 'a:1:{s:6:\"mobile\";s:4:\"null\";}', '1501209449');
INSERT INTO `tp_web_log_all` VALUES ('1161', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/index', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1501209480');
INSERT INTO `tp_web_log_all` VALUES ('1162', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501209486');
INSERT INTO `tp_web_log_all` VALUES ('1163', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/info?uid=3', 'admin', 'Yisheng', 'info', 'GET', 'a:1:{s:3:\"uid\";s:1:\"3\";}', '1501209489');
INSERT INTO `tp_web_log_all` VALUES ('1164', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/menu', 'home', 'Index', 'menu', 'GET', 'a:0:{}', '1501209927');
INSERT INTO `tp_web_log_all` VALUES ('1165', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pnlist.html', 'home', 'Index', 'pnlist', 'GET', 'a:0:{}', '1501209928');
INSERT INTO `tp_web_log_all` VALUES ('1166', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pninfo?username=tanglll', 'home', 'Index', 'pninfo', 'GET', 'a:1:{s:8:\"username\";s:7:\"tanglll\";}', '1501209931');
INSERT INTO `tp_web_log_all` VALUES ('1167', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pninfo?username=tanglll', 'home', 'Index', 'pninfo', 'GET', 'a:1:{s:8:\"username\";s:7:\"tanglll\";}', '1501209931');
INSERT INTO `tp_web_log_all` VALUES ('1168', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1501211555');
INSERT INTO `tp_web_log_all` VALUES ('1169', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1501211675');
INSERT INTO `tp_web_log_all` VALUES ('1170', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/pninfo?username=tanglll', 'home', 'Index', 'pninfo', 'GET', 'a:1:{s:8:\"username\";s:7:\"tanglll\";}', '1501212823');
INSERT INTO `tp_web_log_all` VALUES ('1171', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1501212825');
INSERT INTO `tp_web_log_all` VALUES ('1172', '1', '127.0.0.1', '本机地址 本机地址  ', 'Mac', 'Safari(601.1)', 'http://admin.tll.com/home.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1501212837');
INSERT INTO `tp_web_log_all` VALUES ('1173', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1501212864');
INSERT INTO `tp_web_log_all` VALUES ('1174', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/login?mobile=null', 'home', 'Index', 'login', 'GET', 'a:1:{s:6:\"mobile\";s:4:\"null\";}', '1501212865');
INSERT INTO `tp_web_log_all` VALUES ('1175', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/login?mobile=null', 'home', 'Index', 'login', 'GET', 'a:1:{s:6:\"mobile\";s:4:\"null\";}', '1501212898');
INSERT INTO `tp_web_log_all` VALUES ('1176', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/login?mobile=null', 'home', 'Index', 'login', 'GET', 'a:1:{s:6:\"mobile\";s:4:\"null\";}', '1501213076');
INSERT INTO `tp_web_log_all` VALUES ('1177', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/login?mobile=null', 'home', 'Index', 'login', 'GET', 'a:1:{s:6:\"mobile\";s:4:\"null\";}', '1501213104');
INSERT INTO `tp_web_log_all` VALUES ('1178', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/login?mobile=null', 'home', 'Index', 'login', 'GET', 'a:1:{s:6:\"mobile\";s:4:\"null\";}', '1501213188');
INSERT INTO `tp_web_log_all` VALUES ('1179', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/login?mobile=null', 'home', 'Index', 'login', 'GET', 'a:1:{s:6:\"mobile\";s:4:\"null\";}', '1501213452');
INSERT INTO `tp_web_log_all` VALUES ('1180', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/login?mobile=null', 'home', 'Index', 'login', 'GET', 'a:1:{s:6:\"mobile\";s:4:\"null\";}', '1501213465');
INSERT INTO `tp_web_log_all` VALUES ('1181', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/login?mobile=null', 'home', 'Index', 'login', 'GET', 'a:1:{s:6:\"mobile\";s:4:\"null\";}', '1501213485');
INSERT INTO `tp_web_log_all` VALUES ('1182', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/home/index/login?mobile=null', 'home', 'Index', 'login', 'GET', 'a:1:{s:6:\"mobile\";s:4:\"null\";}', '1501213691');
INSERT INTO `tp_web_log_all` VALUES ('1183', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1501228587');
INSERT INTO `tp_web_log_all` VALUES ('1184', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1501228588');
INSERT INTO `tp_web_log_all` VALUES ('1185', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1501228588');
INSERT INTO `tp_web_log_all` VALUES ('1186', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"2\";}', '1501228589');
INSERT INTO `tp_web_log_all` VALUES ('1187', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/login.html', 'home', 'Index', 'login', 'GET', 'a:0:{}', '1501489921');
INSERT INTO `tp_web_log_all` VALUES ('1188', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index?mobile=18811216533', 'home', 'Index', 'index', 'GET', 'a:1:{s:6:\"mobile\";s:11:\"18811216533\";}', '1501489921');
INSERT INTO `tp_web_log_all` VALUES ('1189', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home/index/index?mobile=18811216533', 'home', 'Index', 'index', 'GET', 'a:1:{s:6:\"mobile\";s:11:\"18811216533\";}', '1501490072');
INSERT INTO `tp_web_log_all` VALUES ('1190', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501490128');
INSERT INTO `tp_web_log_all` VALUES ('1191', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1501490128');
INSERT INTO `tp_web_log_all` VALUES ('1192', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/pub/checklogin.html', 'admin', 'Pub', 'checklogin', 'POST', 'a:3:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"dpiy\";}', '1501490135');
INSERT INTO `tp_web_log_all` VALUES ('1193', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501490135');
INSERT INTO `tp_web_log_all` VALUES ('1194', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501490136');
INSERT INTO `tp_web_log_all` VALUES ('1195', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501490476');
INSERT INTO `tp_web_log_all` VALUES ('1196', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501490476');
INSERT INTO `tp_web_log_all` VALUES ('1197', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501490478');
INSERT INTO `tp_web_log_all` VALUES ('1198', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html?p=2', 'admin', 'Huanzhe', 'index', 'GET', 'a:1:{s:1:\"p\";s:1:\"2\";}', '1501490484');
INSERT INTO `tp_web_log_all` VALUES ('1199', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501490579');
INSERT INTO `tp_web_log_all` VALUES ('1200', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/home.html', 'home', 'Index', 'index', 'GET', 'a:0:{}', '1501490595');
INSERT INTO `tp_web_log_all` VALUES ('1201', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501490600');
INSERT INTO `tp_web_log_all` VALUES ('1202', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1501490600');
INSERT INTO `tp_web_log_all` VALUES ('1203', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1501490607');
INSERT INTO `tp_web_log_all` VALUES ('1204', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1501490607');
INSERT INTO `tp_web_log_all` VALUES ('1205', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/yisheng/index.html', 'admin', 'Yisheng', 'index', 'GET', 'a:0:{}', '1501490617');
INSERT INTO `tp_web_log_all` VALUES ('1206', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/huanzhe/index.html', 'admin', 'Huanzhe', 'index', 'GET', 'a:0:{}', '1501490619');
INSERT INTO `tp_web_log_all` VALUES ('1207', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Firefox(54.0)', 'http://admin.tll.com/admin/demo/excel.html', 'admin', 'Demo', 'excel', 'GET', 'a:0:{}', '1501490622');
INSERT INTO `tp_web_log_all` VALUES ('1208', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1501490921');
INSERT INTO `tp_web_log_all` VALUES ('1209', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(59.0.3071.86)', 'http://admin.tll.com/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1501490922');
