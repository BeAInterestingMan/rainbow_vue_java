/*
Navicat MySQL Data Transfer

Source Server         : 腾讯云
Source Server Version : 50727
Source Host           : 129.211.60.109:3306
Source Database       : rainbow

Target Server Type    : MYSQL
Target Server Version : 50727
File Encoding         : 65001

Date: 2019-10-28 14:56:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `ID` varchar(100) NOT NULL COMMENT '菜单/按钮ID',
  `PARENT_ID` varchar(50) NOT NULL COMMENT '上级菜单ID',
  `MENU_NAME` varchar(50) NOT NULL COMMENT '菜单/按钮名称',
  `URL` varchar(50) DEFAULT NULL COMMENT '菜单URL',
  `PERMISSION` varchar(50) DEFAULT NULL COMMENT '权限标识',
  `COMPONENT` varchar(50) DEFAULT NULL COMMENT 'VUE 组件名称  动态加载路由',
  `ICON` varchar(50) DEFAULT NULL COMMENT '图标',
  `TYPE` char(2) NOT NULL COMMENT '类型 0菜单 1按钮',
  `SORT` bigint(20) DEFAULT NULL COMMENT '排序',
  `STATUS` varchar(2) DEFAULT NULL COMMENT '状态：0-正常，1-不可用',
  `CREATOR` varchar(100) DEFAULT NULL COMMENT '修改时间',
  `CREATOR_NAME` varchar(100) DEFAULT NULL,
  `CREATE_TIME` date DEFAULT NULL,
  `UPDATOR` varchar(100) DEFAULT NULL,
  `UPDATOR_NAME` varchar(100) DEFAULT NULL,
  `UPDATE_TIME` date DEFAULT NULL,
  `REMARK` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='菜单表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '0', '系统管理', '/system', 'system:apexwww', '/home', 'fa fa-windows', '0', '1', '0', null, null, null, null, null, null, null);
INSERT INTO `sys_menu` VALUES ('3', '1', '用户管理', '/system/user', 'user:view', '/system/user/user', 'fa fa-address-card-o', '0', '1', '0', null, null, null, null, null, null, null);
INSERT INTO `sys_menu` VALUES ('4', '1', '角色管理', '/system/role', 'role:view', '/system/role/role', '', '0', '2', '0', null, null, null, null, null, null, null);
INSERT INTO `sys_menu` VALUES ('5', '1', '菜单管理', '/system/menu', 'menu:view', '/system/menu/menu', '', '0', '3', '0', null, null, null, null, null, null, null);
INSERT INTO `sys_menu` VALUES ('6', '1', '部门管理', '/system/dept', 'dept:view', '/system/dept/dept', '', '0', '4', '0', null, null, null, null, null, null, null);
INSERT INTO `sys_menu` VALUES ('7', '0', '字典管理', '/system/student', null, '/system/dept/student', null, '0', '5', '0', null, null, null, null, null, null, null);
INSERT INTO `sys_menu` VALUES ('8', '0', '系统监控', '/system/grade', null, '/system/dept/grade', null, '0', '6', '0', null, null, null, null, null, null, null);
INSERT INTO `sys_menu` VALUES ('9', '0', 'redis监控', '/system/rdis', null, '/system/dept/redis', null, '0', '7', '0', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `ID` varchar(100) NOT NULL COMMENT '角色ID',
  `NAME` varchar(100) NOT NULL COMMENT '角色名称',
  `STATUS` varchar(100) NOT NULL DEFAULT '0' COMMENT '状态：0-正常，1-不可用',
  `CREATOR` varchar(100) DEFAULT NULL COMMENT '修改时间',
  `CREATOR_NAME` varchar(100) DEFAULT NULL,
  `CREATE_TIME` date DEFAULT NULL,
  `UPDATOR` varchar(100) DEFAULT NULL,
  `UPDATOR_NAME` varchar(100) DEFAULT NULL,
  `UPDATE_TIME` date DEFAULT NULL,
  `REMARK` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '系统管理员', '0', '', null, null, null, null, null, '系统管理员，拥有所有操作权限 ^_^');
INSERT INTO `sys_role` VALUES ('2', '注册账户', '0', '', null, null, null, null, null, '注册账户，拥有查看，新增权限（新增用户除外）和导出Excel权限');
INSERT INTO `sys_role` VALUES ('77', 'Redis监控员', '0', null, null, null, null, null, null, '负责Redis模块');
INSERT INTO `sys_role` VALUES ('78', '系统监控员', '0', null, null, null, null, null, null, '负责整个系统监控模块');
INSERT INTO `sys_role` VALUES ('79', '跑批人员', '0', null, null, null, null, null, null, '负责任务调度跑批模块');
INSERT INTO `sys_role` VALUES ('80', '开发人员', '0', null, null, null, null, null, null, '拥有代码生成模块的权限');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `ROLE_ID` bigint(20) NOT NULL COMMENT '角色ID',
  `MENU_ID` bigint(20) NOT NULL COMMENT '菜单/按钮ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('2', '1');
INSERT INTO `sys_role_menu` VALUES ('2', '3');
INSERT INTO `sys_role_menu` VALUES ('2', '161');
INSERT INTO `sys_role_menu` VALUES ('2', '4');
INSERT INTO `sys_role_menu` VALUES ('2', '14');
INSERT INTO `sys_role_menu` VALUES ('2', '162');
INSERT INTO `sys_role_menu` VALUES ('2', '5');
INSERT INTO `sys_role_menu` VALUES ('2', '17');
INSERT INTO `sys_role_menu` VALUES ('2', '163');
INSERT INTO `sys_role_menu` VALUES ('2', '6');
INSERT INTO `sys_role_menu` VALUES ('2', '20');
INSERT INTO `sys_role_menu` VALUES ('2', '164');
INSERT INTO `sys_role_menu` VALUES ('2', '2');
INSERT INTO `sys_role_menu` VALUES ('2', '8');
INSERT INTO `sys_role_menu` VALUES ('2', '10');
INSERT INTO `sys_role_menu` VALUES ('2', '170');
INSERT INTO `sys_role_menu` VALUES ('2', '136');
INSERT INTO `sys_role_menu` VALUES ('2', '172');
INSERT INTO `sys_role_menu` VALUES ('2', '113');
INSERT INTO `sys_role_menu` VALUES ('2', '114');
INSERT INTO `sys_role_menu` VALUES ('2', '127');
INSERT INTO `sys_role_menu` VALUES ('2', '128');
INSERT INTO `sys_role_menu` VALUES ('2', '129');
INSERT INTO `sys_role_menu` VALUES ('2', '130');
INSERT INTO `sys_role_menu` VALUES ('2', '131');
INSERT INTO `sys_role_menu` VALUES ('2', '101');
INSERT INTO `sys_role_menu` VALUES ('2', '102');
INSERT INTO `sys_role_menu` VALUES ('2', '173');
INSERT INTO `sys_role_menu` VALUES ('2', '109');
INSERT INTO `sys_role_menu` VALUES ('2', '174');
INSERT INTO `sys_role_menu` VALUES ('2', '137');
INSERT INTO `sys_role_menu` VALUES ('2', '138');
INSERT INTO `sys_role_menu` VALUES ('2', '139');
INSERT INTO `sys_role_menu` VALUES ('2', '115');
INSERT INTO `sys_role_menu` VALUES ('2', '132');
INSERT INTO `sys_role_menu` VALUES ('2', '133');
INSERT INTO `sys_role_menu` VALUES ('2', '135');
INSERT INTO `sys_role_menu` VALUES ('2', '134');
INSERT INTO `sys_role_menu` VALUES ('2', '126');
INSERT INTO `sys_role_menu` VALUES ('2', '159');
INSERT INTO `sys_role_menu` VALUES ('2', '116');
INSERT INTO `sys_role_menu` VALUES ('2', '117');
INSERT INTO `sys_role_menu` VALUES ('2', '119');
INSERT INTO `sys_role_menu` VALUES ('2', '120');
INSERT INTO `sys_role_menu` VALUES ('2', '121');
INSERT INTO `sys_role_menu` VALUES ('2', '122');
INSERT INTO `sys_role_menu` VALUES ('2', '123');
INSERT INTO `sys_role_menu` VALUES ('2', '118');
INSERT INTO `sys_role_menu` VALUES ('2', '125');
INSERT INTO `sys_role_menu` VALUES ('2', '167');
INSERT INTO `sys_role_menu` VALUES ('2', '168');
INSERT INTO `sys_role_menu` VALUES ('2', '169');
INSERT INTO `sys_role_menu` VALUES ('77', '2');
INSERT INTO `sys_role_menu` VALUES ('77', '113');
INSERT INTO `sys_role_menu` VALUES ('77', '114');
INSERT INTO `sys_role_menu` VALUES ('78', '2');
INSERT INTO `sys_role_menu` VALUES ('78', '8');
INSERT INTO `sys_role_menu` VALUES ('78', '23');
INSERT INTO `sys_role_menu` VALUES ('78', '10');
INSERT INTO `sys_role_menu` VALUES ('78', '24');
INSERT INTO `sys_role_menu` VALUES ('78', '170');
INSERT INTO `sys_role_menu` VALUES ('78', '136');
INSERT INTO `sys_role_menu` VALUES ('78', '171');
INSERT INTO `sys_role_menu` VALUES ('78', '172');
INSERT INTO `sys_role_menu` VALUES ('78', '113');
INSERT INTO `sys_role_menu` VALUES ('78', '114');
INSERT INTO `sys_role_menu` VALUES ('78', '127');
INSERT INTO `sys_role_menu` VALUES ('78', '128');
INSERT INTO `sys_role_menu` VALUES ('78', '129');
INSERT INTO `sys_role_menu` VALUES ('78', '130');
INSERT INTO `sys_role_menu` VALUES ('78', '131');
INSERT INTO `sys_role_menu` VALUES ('79', '101');
INSERT INTO `sys_role_menu` VALUES ('79', '102');
INSERT INTO `sys_role_menu` VALUES ('79', '103');
INSERT INTO `sys_role_menu` VALUES ('79', '104');
INSERT INTO `sys_role_menu` VALUES ('79', '105');
INSERT INTO `sys_role_menu` VALUES ('79', '106');
INSERT INTO `sys_role_menu` VALUES ('79', '107');
INSERT INTO `sys_role_menu` VALUES ('79', '108');
INSERT INTO `sys_role_menu` VALUES ('79', '173');
INSERT INTO `sys_role_menu` VALUES ('79', '109');
INSERT INTO `sys_role_menu` VALUES ('79', '110');
INSERT INTO `sys_role_menu` VALUES ('79', '174');
INSERT INTO `sys_role_menu` VALUES ('80', '137');
INSERT INTO `sys_role_menu` VALUES ('80', '138');
INSERT INTO `sys_role_menu` VALUES ('80', '165');
INSERT INTO `sys_role_menu` VALUES ('80', '139');
INSERT INTO `sys_role_menu` VALUES ('80', '166');
INSERT INTO `sys_role_menu` VALUES ('1', '1');
INSERT INTO `sys_role_menu` VALUES ('1', '3');
INSERT INTO `sys_role_menu` VALUES ('1', '11');
INSERT INTO `sys_role_menu` VALUES ('1', '12');
INSERT INTO `sys_role_menu` VALUES ('1', '13');
INSERT INTO `sys_role_menu` VALUES ('1', '160');
INSERT INTO `sys_role_menu` VALUES ('1', '161');
INSERT INTO `sys_role_menu` VALUES ('1', '4');
INSERT INTO `sys_role_menu` VALUES ('1', '14');
INSERT INTO `sys_role_menu` VALUES ('1', '15');
INSERT INTO `sys_role_menu` VALUES ('1', '16');
INSERT INTO `sys_role_menu` VALUES ('1', '162');
INSERT INTO `sys_role_menu` VALUES ('1', '5');
INSERT INTO `sys_role_menu` VALUES ('1', '17');
INSERT INTO `sys_role_menu` VALUES ('1', '18');
INSERT INTO `sys_role_menu` VALUES ('1', '19');
INSERT INTO `sys_role_menu` VALUES ('1', '163');
INSERT INTO `sys_role_menu` VALUES ('1', '6');
INSERT INTO `sys_role_menu` VALUES ('1', '20');
INSERT INTO `sys_role_menu` VALUES ('1', '21');
INSERT INTO `sys_role_menu` VALUES ('1', '22');
INSERT INTO `sys_role_menu` VALUES ('1', '164');
INSERT INTO `sys_role_menu` VALUES ('1', '2');
INSERT INTO `sys_role_menu` VALUES ('1', '8');
INSERT INTO `sys_role_menu` VALUES ('1', '23');
INSERT INTO `sys_role_menu` VALUES ('1', '10');
INSERT INTO `sys_role_menu` VALUES ('1', '24');
INSERT INTO `sys_role_menu` VALUES ('1', '170');
INSERT INTO `sys_role_menu` VALUES ('1', '136');
INSERT INTO `sys_role_menu` VALUES ('1', '171');
INSERT INTO `sys_role_menu` VALUES ('1', '172');
INSERT INTO `sys_role_menu` VALUES ('1', '113');
INSERT INTO `sys_role_menu` VALUES ('1', '114');
INSERT INTO `sys_role_menu` VALUES ('1', '127');
INSERT INTO `sys_role_menu` VALUES ('1', '128');
INSERT INTO `sys_role_menu` VALUES ('1', '129');
INSERT INTO `sys_role_menu` VALUES ('1', '130');
INSERT INTO `sys_role_menu` VALUES ('1', '131');
INSERT INTO `sys_role_menu` VALUES ('1', '101');
INSERT INTO `sys_role_menu` VALUES ('1', '102');
INSERT INTO `sys_role_menu` VALUES ('1', '103');
INSERT INTO `sys_role_menu` VALUES ('1', '104');
INSERT INTO `sys_role_menu` VALUES ('1', '105');
INSERT INTO `sys_role_menu` VALUES ('1', '106');
INSERT INTO `sys_role_menu` VALUES ('1', '107');
INSERT INTO `sys_role_menu` VALUES ('1', '108');
INSERT INTO `sys_role_menu` VALUES ('1', '173');
INSERT INTO `sys_role_menu` VALUES ('1', '109');
INSERT INTO `sys_role_menu` VALUES ('1', '110');
INSERT INTO `sys_role_menu` VALUES ('1', '174');
INSERT INTO `sys_role_menu` VALUES ('1', '137');
INSERT INTO `sys_role_menu` VALUES ('1', '138');
INSERT INTO `sys_role_menu` VALUES ('1', '165');
INSERT INTO `sys_role_menu` VALUES ('1', '139');
INSERT INTO `sys_role_menu` VALUES ('1', '166');
INSERT INTO `sys_role_menu` VALUES ('1', '115');
INSERT INTO `sys_role_menu` VALUES ('1', '132');
INSERT INTO `sys_role_menu` VALUES ('1', '133');
INSERT INTO `sys_role_menu` VALUES ('1', '135');
INSERT INTO `sys_role_menu` VALUES ('1', '134');
INSERT INTO `sys_role_menu` VALUES ('1', '126');
INSERT INTO `sys_role_menu` VALUES ('1', '159');
INSERT INTO `sys_role_menu` VALUES ('1', '116');
INSERT INTO `sys_role_menu` VALUES ('1', '117');
INSERT INTO `sys_role_menu` VALUES ('1', '119');
INSERT INTO `sys_role_menu` VALUES ('1', '120');
INSERT INTO `sys_role_menu` VALUES ('1', '121');
INSERT INTO `sys_role_menu` VALUES ('1', '122');
INSERT INTO `sys_role_menu` VALUES ('1', '123');
INSERT INTO `sys_role_menu` VALUES ('1', '118');
INSERT INTO `sys_role_menu` VALUES ('1', '125');
INSERT INTO `sys_role_menu` VALUES ('1', '167');
INSERT INTO `sys_role_menu` VALUES ('1', '168');
INSERT INTO `sys_role_menu` VALUES ('1', '169');
INSERT INTO `sys_role_menu` VALUES ('2', '7');
INSERT INTO `sys_role_menu` VALUES ('2', '8');
INSERT INTO `sys_role_menu` VALUES ('2', '9');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '用户ID',
  `USERNAME` varchar(50) NOT NULL COMMENT '用户名',
  `PASSWORD` varchar(128) NOT NULL COMMENT '密码',
  `EMAIL` varchar(128) DEFAULT NULL COMMENT '邮箱',
  `MOBILE` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `STATUS` char(1) NOT NULL COMMENT '状态 0有效 1锁定',
  `LAST_LOGIN_TIME` datetime DEFAULT NULL COMMENT '最近访问时间',
  `SEX` char(1) DEFAULT NULL COMMENT '性别 0男 1女 2保密',
  `IS_TAB` char(1) DEFAULT NULL COMMENT '是否开启tab，0关闭 1开启',
  `THEME` varchar(10) DEFAULT NULL COMMENT '主题',
  `AVATAR` varchar(255) DEFAULT NULL COMMENT '头像',
  `DESCRIPTION` varchar(100) DEFAULT NULL COMMENT '描述',
  `SALT` varchar(255) CHARACTER SET utf8 COLLATE utf8_romanian_ci DEFAULT NULL COMMENT '盐值',
  `CREATOR` varchar(100) DEFAULT NULL COMMENT '修改时间',
  `CREATOR_NAME` varchar(100) DEFAULT NULL,
  `CREATE_TIME` date DEFAULT NULL,
  `UPDATOR` varchar(100) DEFAULT NULL,
  `UPDATOR_NAME` varchar(100) DEFAULT NULL,
  `UPDATE_TIME` date DEFAULT NULL,
  `REMARK` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', 'df655ad8d3229f3269fad2a8bab59b6c', 'mrbird@qq.com', '17788888888', '0', '2019-06-14 20:54:13', '0', '1', 'white', '', '我是帅比作者。', null, null, null, null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('2', 'Scott', '1d685729d113cfd03872f154939bee1c', 'scott@gmail.com', '17722222222', '0', '2019-06-14 21:05:47', '0', '1', 'black', 'gaOngJwsRYRaVAuXXcmB.png', '我是scott。', null, null, null, null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('3', 'Reina', '1461afff857c02afbfb768aa3771503d', 'Reina@hotmail.com', '17711111111', '0', '2019-06-14 21:08:26', '1', '1', 'black', '5997fedcc7bd4cffbd350b40d1b5b987.jpg', '由于公款私用，已被封禁。', null, null, null, null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('4', 'Micaela', '9f2daa2c7bed6870fcbb5b9a51d6300e', 'Micaela@163.com', '17733333333', '0', '2019-06-14 21:10:37', '0', '0', 'white', '20180414165909.jpg', '我叫米克拉', null, null, null, null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('5', 'Jana', '176679b77b3c3e352bd3b30ddc81083e', 'Jana@126.com', '17744444444', '0', '2019-06-14 21:12:32', '1', '1', 'white', '20180414165821.jpg', '大家好，我叫简娜', null, null, null, null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('6', 'Georgie', 'dffc683378cdaa015a0ee9554c532225', 'Georgie@qq.com', '17766666666', '0', '2019-06-14 21:16:11', '2', '0', 'black', 'BiazfanxmamNRoxxVxka.png', '生产执行rm -rf *，账号封禁T T', null, null, null, null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('7', 'Margot', '31379841b9f4bfde22b8b40471e9a6ce', 'Margot@qq.com', '13444444444', '0', '2019-06-14 21:18:07', '1', '1', 'white', '20180414165834.jpg', '大家好我叫玛戈', null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `USER_ID` bigint(20) NOT NULL COMMENT '用户ID',
  `ROLE_ID` bigint(20) NOT NULL COMMENT '角色ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('2', '2');
INSERT INTO `sys_user_role` VALUES ('3', '77');
INSERT INTO `sys_user_role` VALUES ('4', '78');
INSERT INTO `sys_user_role` VALUES ('5', '79');
INSERT INTO `sys_user_role` VALUES ('6', '80');
INSERT INTO `sys_user_role` VALUES ('7', '78');
INSERT INTO `sys_user_role` VALUES ('7', '79');
INSERT INTO `sys_user_role` VALUES ('7', '80');
INSERT INTO `sys_user_role` VALUES ('1', '2');

-- ----------------------------
-- Function structure for findDeptChildren
-- ----------------------------
DROP FUNCTION IF EXISTS `findDeptChildren`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `findDeptChildren`(rootId INT) RETURNS varchar(4000) CHARSET utf8
BEGIN
    DECLARE sTemp VARCHAR(4000);
    DECLARE sTempChd VARCHAR(4000);
    SET sTemp = '$';
    SET sTempChd = CAST(rootId as CHAR);
    WHILE sTempChd is not null DO
        SET sTemp = CONCAT(sTemp,',',sTempChd);
    SELECT GROUP_CONCAT(dept_id) INTO sTempChd FROM t_dept
    WHERE FIND_IN_SET(parent_id,sTempChd)>0;
END WHILE;
RETURN sTemp;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for findMenuChildren
-- ----------------------------
DROP FUNCTION IF EXISTS `findMenuChildren`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `findMenuChildren`(rootId INT) RETURNS varchar(4000) CHARSET utf8
BEGIN
    DECLARE sTemp VARCHAR(4000);
    DECLARE sTempChd VARCHAR(4000);
    SET sTemp = '$';
    SET sTempChd = CAST(rootId as CHAR);
    WHILE sTempChd is not null DO
        SET sTemp = CONCAT(sTemp,',',sTempChd);
    SELECT GROUP_CONCAT(menu_id) INTO sTempChd FROM t_menu
    WHERE FIND_IN_SET(parent_id,sTempChd)>0;
END WHILE;
RETURN sTemp;
END
;;
DELIMITER ;
