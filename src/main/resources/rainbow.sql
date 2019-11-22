/*
Navicat MySQL Data Transfer

Source Server         : 腾讯云
Source Server Version : 50727
Source Host           : 129.211.60.109:3306
Source Database       : rainbow

Target Server Type    : MYSQL
Target Server Version : 50727
File Encoding         : 65001

Date: 2019-11-22 15:03:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` varchar(100) DEFAULT NULL COMMENT '日志记录表主键',
  `username` varchar(100) DEFAULT NULL COMMENT '用户名',
  `action_description` varchar(255) DEFAULT NULL COMMENT '操作描述',
  `class_name` varchar(100) DEFAULT NULL COMMENT '请求的类名',
  `params` varchar(1000) DEFAULT NULL COMMENT '请求的参数',
  `ip` varchar(100) DEFAULT NULL COMMENT '用户ip',
  `operate_time` datetime DEFAULT NULL COMMENT '请求时间',
  `nickname` varchar(100) DEFAULT NULL COMMENT '昵称',
  `method_name` varchar(100) DEFAULT NULL COMMENT '方法名',
  `operate_type` varchar(50) DEFAULT NULL COMMENT '日志类型'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('684685378a0e4e30adfffb646c1d782a', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '127.0.0.1', '2019-11-14 16:27:27', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('1cf0cb2590fa4e209753550db8abd968', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '127.0.0.1', '2019-11-14 16:34:27', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('b682a0dbcbe64f9db45cd7118287d996', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '127.0.0.1', '2019-11-14 16:37:32', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('0da9f7a4318e40519777353da0f777c0', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '127.0.0.1', '2019-11-14 16:38:59', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('e49d2e8498644f9faa19512f54de418b', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '127.0.0.1', '2019-11-14 16:50:20', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('98f8b320a1054f349935558972812271', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '127.0.0.1', '2019-11-14 16:50:30', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('69e2a38b168f425d9c489363ddbbfdcb', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '127.0.0.1', '2019-11-15 08:49:34', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('277fa329ec034e109e0c91864b649f5c', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '127.0.0.1', '2019-11-15 08:49:38', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('4e96a9e21bb64a158df3b4e36c77ce97', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '127.0.0.1', '2019-11-15 16:14:00', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('98214bc6549a47b4b2ab4847526b5a75', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '127.0.0.1', '2019-11-15 16:55:13', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('98eafc9b1bf24db3a3e91f3d78a63618', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"2\" pageSize: \"3\" nickname: \"\"', '127.0.0.1', '2019-11-15 16:55:15', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('60ac2c5e6d8e45d2a5b1e2523743092a', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"3\" pageSize: \"3\" nickname: \"\"', '127.0.0.1', '2019-11-15 16:55:16', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('2c7da1ee155c447b96f5cc3862eaf7bc', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"4\" pageSize: \"3\" nickname: \"\"', '127.0.0.1', '2019-11-15 16:55:17', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('c737222c4e1b470b97e07d497d4271d7', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '127.0.0.1', '2019-11-15 16:55:19', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('85809cec33ee4736befbdec7ca37493f', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '127.0.0.1', '2019-11-18 11:08:50', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('e222f63feae14684a0a406202b372355', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '127.0.0.1', '2019-11-18 11:08:54', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('91bee125efd446ce9accdb58bb962f06', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '127.0.0.1', '2019-11-18 11:37:03', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('ce954d18bb0d4c80b373407b0a18f49f', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '127.0.0.1', '2019-11-18 11:38:15', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('386ce135d21049369a733c4fbec7cca6', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '127.0.0.1', '2019-11-18 11:39:52', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('25c008f0485c41abac68d1d7943e9af4', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '127.0.0.1', '2019-11-18 11:40:32', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('7aff2c254e744742883dd51a80b92bf6', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '127.0.0.1', '2019-11-18 11:40:34', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('d41629d1a87d4410b394721fb421f658', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '127.0.0.1', '2019-11-18 11:40:55', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('51cf656b946f40a589c2b8fde1833025', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '127.0.0.1', '2019-11-18 14:45:13', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('365eb93068a14d5694d74490ebb18038', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '127.0.0.1', '2019-11-18 14:45:15', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('bca993bd63e2450c9e40e0fab160bd2e', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '127.0.0.1', '2019-11-18 16:10:19', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('fb5b4ddd9b0246d4a8cbff48ffc82135', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '127.0.0.1', '2019-11-18 16:23:12', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('6b083032f99c4e3bbd217b615f12eacf', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '127.0.0.1', '2019-11-18 16:25:17', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('8d62303996b74a72b817e976738d0985', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '127.0.0.1', '2019-11-18 16:47:20', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('a13a6ea766e5418d8909ca060e812a50', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '127.0.0.1', '2019-11-18 16:47:39', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('9ee7543ec5af443b9b0c7869983bd7d2', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '127.0.0.1', '2019-11-18 16:47:44', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('6d86a23d1b9d49b893b0ca09cb147e87', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '127.0.0.1', '2019-11-18 16:57:15', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('104b6e72e56546719d156cbde5da3625', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '127.0.0.1', '2019-11-18 17:07:39', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('92ad662a832641de8e8affc567896854', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '127.0.0.1', '2019-11-18 17:07:42', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('0e074f9af9684158b425c35b381ab60d', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '127.0.0.1', '2019-11-18 17:07:44', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('77667951ef1e4315b2ccb8e82cb66770', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '127.0.0.1', '2019-11-18 17:08:08', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('13944fac6934474bb7a753b20c02dbd6', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '127.0.0.1', '2019-11-20 15:19:09', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('a40aec85c1f9487a816883cf28f4cd1f', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '127.0.0.1', '2019-11-20 15:22:56', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('f727c0d47bda44fd82a5e021944c68fb', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '127.0.0.1', '2019-11-20 15:22:58', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('86f89e4d65f34738a22dec3991212f1a', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '127.0.0.1', '2019-11-20 15:23:10', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('f0918258a36a421b90ca606c36afa330', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '127.0.0.1', '2019-11-20 16:34:55', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('e8a58311434446809cabb52c9fef5e71', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '127.0.0.1', '2019-11-20 16:34:57', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('70b76768e56143ee8abaa12e1e0ec065', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '127.0.0.1', '2019-11-20 17:02:08', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('96c8a0de796748098de6a3c29fdb6eaf', 'admin', '菜单列表', 'com.liuhu.rainbow.system.controller.MenuController', ' currentPage: \"1\" pageSize: \"5\" name: \"\" parentId: \"\"', '127.0.0.1', '2019-11-21 17:13:46', '令狐冲', 'getAllMenusTable', '3');
INSERT INTO `sys_log` VALUES ('f278b19d2a574083a28dfbf4908fea65', 'admin', '菜单列表', 'com.liuhu.rainbow.system.controller.MenuController', ' currentPage: \"1\" pageSize: \"5\" name: \"\" parentId: \"\"', '127.0.0.1', '2019-11-21 17:14:41', '令狐冲', 'getAllMenusTable', '3');
INSERT INTO `sys_log` VALUES ('fc6e8f0faf324c658a83bae3afc6ec33', 'admin', '菜单列表', 'com.liuhu.rainbow.system.controller.MenuController', ' currentPage: \"1\" pageSize: \"5\" name: \"\" parentId: \"\"', '10.1.74.44', '2019-11-21 17:25:30', '令狐冲', 'getAllMenusTable', '3');
INSERT INTO `sys_log` VALUES ('39799cb5fd914bb59902b6d83ffbda5e', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '10.1.74.44', '2019-11-21 17:25:33', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('4a4e7a0da34048f19dbd7db3ffc468ac', 'admin', '菜单列表', 'com.liuhu.rainbow.system.controller.MenuController', ' currentPage: \"1\" pageSize: \"5\" name: \"\" parentId: \"\"', '10.1.74.44', '2019-11-21 17:26:06', '令狐冲', 'getAllMenusTable', '3');
INSERT INTO `sys_log` VALUES ('80b6801e9e1c4b49ba7da1bce041633d', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '10.1.74.44', '2019-11-21 17:26:08', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('5070a61a83894cfb8827686d52f49bd2', 'admin', '保存用户所属角色', 'com.liuhu.rainbow.system.controller.UserController', ' roleIds: \"[Ljava.lang.String;@5446d7f0\" userId: \"2\"', '10.1.74.44', '2019-11-21 17:26:27', '令狐冲', 'saveUserRoles', '0');
INSERT INTO `sys_log` VALUES ('72304b8eb7604b6a80bc37d19d848db9', 'admin', '更新用户状态', 'com.liuhu.rainbow.system.controller.UserController', ' status: \"0\" id: \"2\"', '10.1.74.44', '2019-11-21 17:26:34', '令狐冲', 'updateStatus', '2');
INSERT INTO `sys_log` VALUES ('3f7739b90b40434f9742d028d51c5289', 'admin', '更新用户状态', 'com.liuhu.rainbow.system.controller.UserController', ' status: \"1\" id: \"2\"', '10.1.74.44', '2019-11-21 17:26:35', '令狐冲', 'updateStatus', '2');
INSERT INTO `sys_log` VALUES ('9e3c756255aa4bdb940dedf25e4678b7', 'admin', '更新用户状态', 'com.liuhu.rainbow.system.controller.UserController', ' status: \"0\" id: \"2\"', '10.1.74.44', '2019-11-21 17:26:36', '令狐冲', 'updateStatus', '2');
INSERT INTO `sys_log` VALUES ('039ed5af35a944edb8eee9bf3ffdd9a7', 'admin', '更新用户状态', 'com.liuhu.rainbow.system.controller.UserController', ' status: \"1\" id: \"2\"', '10.1.74.44', '2019-11-21 17:26:37', '令狐冲', 'updateStatus', '2');
INSERT INTO `sys_log` VALUES ('2dfa370d33c04b69a9b6efaf2591bd14', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '10.1.74.44', '2019-11-21 17:27:35', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('9956efaf868a46e5bb5477506d038035', 'admin', '更新用户状态', 'com.liuhu.rainbow.system.controller.UserController', ' status: \"1\" id: \"1\"', '10.1.74.44', '2019-11-21 17:27:39', '令狐冲', 'updateStatus', '2');
INSERT INTO `sys_log` VALUES ('6e25abe970ad46ff8c86ff3a7a912274', 'admin', '更新用户状态', 'com.liuhu.rainbow.system.controller.UserController', ' status: \"1\" id: \"1\"', '10.1.74.44', '2019-11-21 17:27:41', '令狐冲', 'updateStatus', '2');
INSERT INTO `sys_log` VALUES ('3812b39fd2264e0e9ae99fe952b0a539', 'admin', '更新用户状态', 'com.liuhu.rainbow.system.controller.UserController', ' status: \"0\" id: \"2\"', '10.1.74.44', '2019-11-21 17:27:43', '令狐冲', 'updateStatus', '2');
INSERT INTO `sys_log` VALUES ('7f863b7594bb42f0b3d033090a1f8c12', 'admin', '更新用户状态', 'com.liuhu.rainbow.system.controller.UserController', ' status: \"1\" id: \"2\"', '10.1.74.44', '2019-11-21 17:27:44', '令狐冲', 'updateStatus', '2');
INSERT INTO `sys_log` VALUES ('bee9c0b66cb54903b847f0307580d702', 'admin', '更新用户状态', 'com.liuhu.rainbow.system.controller.UserController', ' status: \"1\" id: \"213\"', '10.1.74.44', '2019-11-21 17:27:46', '令狐冲', 'updateStatus', '2');
INSERT INTO `sys_log` VALUES ('95309032786f460993c0027004bab216', 'admin', '更新用户状态', 'com.liuhu.rainbow.system.controller.UserController', ' status: \"0\" id: \"213\"', '10.1.74.44', '2019-11-21 17:27:47', '令狐冲', 'updateStatus', '2');
INSERT INTO `sys_log` VALUES ('f762b2eac7f644b5be1570fc470cd0ff', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"2\" pageSize: \"3\" nickname: \"\"', '10.1.74.44', '2019-11-21 17:27:54', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('51288b0f62ba457e853580e5d219bac0', 'admin', '菜单列表', 'com.liuhu.rainbow.system.controller.MenuController', ' currentPage: \"1\" pageSize: \"5\" name: \"\" parentId: \"\"', '10.1.74.45', '2019-11-21 17:28:00', '令狐冲', 'getAllMenusTable', '3');
INSERT INTO `sys_log` VALUES ('fd6d73bbec6c45a8b0eaacc4d5c5721c', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"3\" pageSize: \"3\" nickname: \"\"', '10.1.74.44', '2019-11-21 17:28:00', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('53817d13956a4ee79c2ae3ed7a018618', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '10.1.74.45', '2019-11-21 17:28:00', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('8ff55b7e864f46ffa2fe5c6203c09d13', 'admin', '查询角色列表分页', 'com.liuhu.rainbow.system.controller.RoleController', ' currentPage: \"1\" pageSize: \"5\" name: \"\"', '10.1.74.45', '2019-11-21 17:28:02', '令狐冲', 'selectRoleWithPage', '3');
INSERT INTO `sys_log` VALUES ('b732b55c245845278b241d12f0b5283b', 'admin', '菜单列表', 'com.liuhu.rainbow.system.controller.MenuController', ' currentPage: \"1\" pageSize: \"5\" name: \"\" parentId: \"\"', '10.1.74.45', '2019-11-21 17:28:07', '令狐冲', 'getAllMenusTable', '3');
INSERT INTO `sys_log` VALUES ('7acb59277f6c4537890b68fbfcf6ff74', 'admin', '菜单列表', 'com.liuhu.rainbow.system.controller.MenuController', ' currentPage: \"1\" pageSize: \"5\" name: \"\" parentId: \"\"', '10.1.74.45', '2019-11-22 09:23:06', '令狐冲', 'getAllMenusTable', '3');
INSERT INTO `sys_log` VALUES ('058782f520ee4293b95bbd6aec4f837b', 'admin', '菜单列表', 'com.liuhu.rainbow.system.controller.MenuController', ' currentPage: \"1\" pageSize: \"5\" name: \"\" parentId: \"\"', '10.1.74.45', '2019-11-22 09:25:22', '令狐冲', 'getAllMenusTable', '3');
INSERT INTO `sys_log` VALUES ('b4780451a35a4b35b1ee21b93a26fbe2', 'admin', '菜单列表', 'com.liuhu.rainbow.system.controller.MenuController', ' currentPage: \"1\" pageSize: \"5\" name: \"\" parentId: \"\"', '10.1.74.45', '2019-11-22 09:35:01', '令狐冲', 'getAllMenusTable', '3');
INSERT INTO `sys_log` VALUES ('079c2ce6553748d1a350042355e479db', 'admin', '菜单列表', 'com.liuhu.rainbow.system.controller.MenuController', ' currentPage: \"1\" pageSize: \"5\" name: \"\" parentId: \"\"', '10.1.74.45', '2019-11-22 09:47:30', '令狐冲', 'getAllMenusTable', '3');
INSERT INTO `sys_log` VALUES ('730850019b2f4113ba7b4ff56d4ceb27', 'admin', '菜单列表', 'com.liuhu.rainbow.system.controller.MenuController', ' currentPage: \"1\" pageSize: \"5\" name: \"\" parentId: \"\"', '10.1.74.45', '2019-11-22 10:04:43', '令狐冲', 'getAllMenusTable', '3');
INSERT INTO `sys_log` VALUES ('516d4228fed0467b9de101ff28286058', 'admin', '菜单列表', 'com.liuhu.rainbow.system.controller.MenuController', ' currentPage: \"1\" pageSize: \"5\" name: \"\" parentId: \"\"', '10.1.74.45', '2019-11-22 10:13:17', '令狐冲', 'getAllMenusTable', '3');
INSERT INTO `sys_log` VALUES ('93aacfdb62304e249d1ac7e2fc4e4f29', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '10.1.74.45', '2019-11-22 10:13:19', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('6c31d3a294854819b15d8896c664628d', 'admin', '查询角色列表分页', 'com.liuhu.rainbow.system.controller.RoleController', ' currentPage: \"1\" pageSize: \"5\" name: \"\"', '10.1.74.45', '2019-11-22 10:13:20', '令狐冲', 'selectRoleWithPage', '3');
INSERT INTO `sys_log` VALUES ('d297cd117e8b4ace989bd4f28501bb04', 'admin', '菜单列表', 'com.liuhu.rainbow.system.controller.MenuController', ' currentPage: \"1\" pageSize: \"5\" name: \"\" parentId: \"\"', '10.1.74.45', '2019-11-22 10:13:28', '令狐冲', 'getAllMenusTable', '3');
INSERT INTO `sys_log` VALUES ('cd9681c6990d447b922adbb92c0f363d', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '10.1.74.45', '2019-11-22 10:13:29', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('e91061c9951f4925a5e628a2e3dd52a8', 'admin', '菜单列表', 'com.liuhu.rainbow.system.controller.MenuController', ' currentPage: \"1\" pageSize: \"5\" name: \"\" parentId: \"\"', '10.1.74.45', '2019-11-22 10:16:39', '令狐冲', 'getAllMenusTable', '3');
INSERT INTO `sys_log` VALUES ('1c9adfc88ffc4029ac095e452b2fe7e9', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '10.1.74.45', '2019-11-22 10:16:40', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('474fb56597564722892e941181dbf1c0', 'admin', '菜单列表', 'com.liuhu.rainbow.system.controller.MenuController', ' currentPage: \"1\" pageSize: \"5\" name: \"\" parentId: \"\"', '10.1.74.45', '2019-11-22 10:36:30', '令狐冲', 'getAllMenusTable', '3');
INSERT INTO `sys_log` VALUES ('4ab7fe53b1f54196b163543847005924', 'admin', '菜单列表', 'com.liuhu.rainbow.system.controller.MenuController', ' currentPage: \"1\" pageSize: \"5\" name: \"\" parentId: \"\"', '10.1.74.45', '2019-11-22 10:36:32', '令狐冲', 'getAllMenusTable', '3');
INSERT INTO `sys_log` VALUES ('01d7b1e2661a4d7298c3207a5461bd1f', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '10.1.74.45', '2019-11-22 10:36:34', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('01b1a006b9134a3e81069dfb3d39ed09', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '10.1.74.45', '2019-11-22 10:36:36', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('7359327c10484b4093a73d22e0dc460d', 'admin', '菜单列表', 'com.liuhu.rainbow.system.controller.MenuController', ' currentPage: \"1\" pageSize: \"5\" name: \"\" parentId: \"\"', '10.1.74.45', '2019-11-22 10:37:37', '令狐冲', 'getAllMenusTable', '3');
INSERT INTO `sys_log` VALUES ('5e2f9077704d42a0bdaf52f41f76c27a', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '10.1.74.45', '2019-11-22 10:37:38', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('261e37dbe75743bea58a343effb0c036', 'admin', '菜单列表', 'com.liuhu.rainbow.system.controller.MenuController', ' currentPage: \"1\" pageSize: \"5\" name: \"\" parentId: \"\"', '10.1.74.45', '2019-11-22 10:37:41', '令狐冲', 'getAllMenusTable', '3');
INSERT INTO `sys_log` VALUES ('d9b711b0a45b4012a7bf0d4ecdd87264', 'admin', '菜单列表', 'com.liuhu.rainbow.system.controller.MenuController', ' currentPage: \"1\" pageSize: \"5\" name: \"\" parentId: \"\"', '10.1.74.45', '2019-11-22 10:37:54', '令狐冲', 'getAllMenusTable', '3');
INSERT INTO `sys_log` VALUES ('0230ae5b36584368a6db16901de35a8f', 'admin', '菜单列表', 'com.liuhu.rainbow.system.controller.MenuController', ' currentPage: \"1\" pageSize: \"5\" name: \"\" parentId: \"\"', '10.1.74.45', '2019-11-22 10:42:02', '令狐冲', 'getAllMenusTable', '3');
INSERT INTO `sys_log` VALUES ('8d8177d3c023429f8fe8a4b1a0eb0795', 'admin', '菜单列表', 'com.liuhu.rainbow.system.controller.MenuController', ' currentPage: \"1\" pageSize: \"5\" name: \"\" parentId: \"\"', '10.1.74.45', '2019-11-22 10:42:42', '令狐冲', 'getAllMenusTable', '3');
INSERT INTO `sys_log` VALUES ('37d8eb5f9ede49948f62b81280a1909d', 'admin', '菜单列表', 'com.liuhu.rainbow.system.controller.MenuController', ' currentPage: \"1\" pageSize: \"5\" name: \"\" parentId: \"\"', '10.1.74.45', '2019-11-22 10:42:51', '令狐冲', 'getAllMenusTable', '3');
INSERT INTO `sys_log` VALUES ('2ea7fbb1bdf846d5ae750faa68308730', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '10.1.74.45', '2019-11-22 10:42:55', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('e4d453d91cc1406495e74e522a8c6b2c', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '10.1.74.45', '2019-11-22 10:42:58', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('c4642e9c407b44fe9791fed91e8f1566', 'admin', '查询角色列表分页', 'com.liuhu.rainbow.system.controller.RoleController', ' currentPage: \"1\" pageSize: \"5\" name: \"\"', '10.1.74.45', '2019-11-22 10:43:01', '令狐冲', 'selectRoleWithPage', '3');
INSERT INTO `sys_log` VALUES ('d6c3e64d6ec0478b9f952ac07c32e005', 'admin', '查询角色列表分页', 'com.liuhu.rainbow.system.controller.RoleController', ' currentPage: \"1\" pageSize: \"5\" name: \"\"', '10.1.74.45', '2019-11-22 10:43:04', '令狐冲', 'selectRoleWithPage', '3');
INSERT INTO `sys_log` VALUES ('7edc6bb0546645e98e19522861dadebf', 'admin', '查询角色列表分页', 'com.liuhu.rainbow.system.controller.RoleController', ' currentPage: \"1\" pageSize: \"5\" name: \"\"', '10.1.74.45', '2019-11-22 10:43:57', '令狐冲', 'selectRoleWithPage', '3');
INSERT INTO `sys_log` VALUES ('15164fabd4364109925e601a39ab7bc0', 'admin', '菜单列表', 'com.liuhu.rainbow.system.controller.MenuController', ' currentPage: \"1\" pageSize: \"5\" name: \"\" parentId: \"\"', '10.1.74.45', '2019-11-22 10:44:42', '令狐冲', 'getAllMenusTable', '3');
INSERT INTO `sys_log` VALUES ('3e7701718821401583cfcbeeb2683612', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '10.1.74.45', '2019-11-22 10:44:43', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('f10bee3191244bc0a62afcf6188c01b1', 'admin', '查询角色列表分页', 'com.liuhu.rainbow.system.controller.RoleController', ' currentPage: \"1\" pageSize: \"5\" name: \"\"', '10.1.74.45', '2019-11-22 10:44:44', '令狐冲', 'selectRoleWithPage', '3');
INSERT INTO `sys_log` VALUES ('3e45e40b81ee49cd8447a6082c045801', 'admin', '菜单列表', 'com.liuhu.rainbow.system.controller.MenuController', ' currentPage: \"1\" pageSize: \"5\" name: \"\" parentId: \"\"', '10.1.74.45', '2019-11-22 10:44:51', '令狐冲', 'getAllMenusTable', '3');
INSERT INTO `sys_log` VALUES ('880a969e90f847199da1a0e9fd00d412', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '10.1.74.45', '2019-11-22 10:44:52', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('158e228194b949d4a92e65f0e78b4c0b', 'admin', '菜单列表', 'com.liuhu.rainbow.system.controller.MenuController', ' currentPage: \"1\" pageSize: \"5\" name: \"\" parentId: \"\"', '10.1.74.45', '2019-11-22 10:45:04', '令狐冲', 'getAllMenusTable', '3');
INSERT INTO `sys_log` VALUES ('f560482dc7ca4a20a00263f2885897b1', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '10.1.74.45', '2019-11-22 10:45:05', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('6d675e8d7bdd4a0bbaa9dd9d3bdf1b61', 'admin', '菜单列表', 'com.liuhu.rainbow.system.controller.MenuController', ' currentPage: \"1\" pageSize: \"5\" name: \"\" parentId: \"\"', '10.1.74.45', '2019-11-22 10:46:34', '令狐冲', 'getAllMenusTable', '3');
INSERT INTO `sys_log` VALUES ('33ad75e41590408c97d518b129b7896c', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '10.1.74.45', '2019-11-22 10:46:40', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('42dbd4d748c341b190711abe0cb124e6', 'admin', '菜单列表', 'com.liuhu.rainbow.system.controller.MenuController', ' currentPage: \"1\" pageSize: \"5\" name: \"\" parentId: \"\"', '10.1.74.45', '2019-11-22 10:46:50', '令狐冲', 'getAllMenusTable', '3');
INSERT INTO `sys_log` VALUES ('02a822ae841f42e4a07292875250e06c', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '10.1.74.45', '2019-11-22 10:46:51', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('eaaf530c33f7496c9a59f56e27065f86', 'admin', '查询角色列表分页', 'com.liuhu.rainbow.system.controller.RoleController', ' currentPage: \"1\" pageSize: \"5\" name: \"\"', '10.1.74.45', '2019-11-22 10:46:53', '令狐冲', 'selectRoleWithPage', '3');
INSERT INTO `sys_log` VALUES ('b392d3f114064f6ca8c1c6271c2928a4', 'admin', '查询角色列表分页', 'com.liuhu.rainbow.system.controller.RoleController', ' currentPage: \"1\" pageSize: \"5\" name: \"\"', '10.1.74.45', '2019-11-22 10:46:55', '令狐冲', 'selectRoleWithPage', '3');
INSERT INTO `sys_log` VALUES ('730efda7b8244ec7a263fcb64cd6989e', 'admin', '菜单列表', 'com.liuhu.rainbow.system.controller.MenuController', ' currentPage: \"1\" pageSize: \"5\" name: \"\" parentId: \"\"', '10.1.74.45', '2019-11-22 10:47:10', '令狐冲', 'getAllMenusTable', '3');
INSERT INTO `sys_log` VALUES ('2cafb4eee2584a0db82915b340395af2', 'admin', '菜单列表', 'com.liuhu.rainbow.system.controller.MenuController', ' currentPage: \"1\" pageSize: \"5\" name: \"\" parentId: \"\"', '10.1.74.45', '2019-11-22 11:03:08', '令狐冲', 'getAllMenusTable', '3');
INSERT INTO `sys_log` VALUES ('80d3329a80004ae5acd17705e3a76131', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '10.1.74.45', '2019-11-22 11:03:09', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('5e31120400f240e693c6b61174f8fb58', 'admin', '菜单列表', 'com.liuhu.rainbow.system.controller.MenuController', ' currentPage: \"1\" pageSize: \"5\" name: \"\" parentId: \"\"', '10.1.74.45', '2019-11-22 11:03:19', '令狐冲', 'getAllMenusTable', '3');
INSERT INTO `sys_log` VALUES ('3e43f9df95de4d328d900959e44bb099', 'admin', '菜单列表', 'com.liuhu.rainbow.system.controller.MenuController', ' currentPage: \"1\" pageSize: \"5\" name: \"\" parentId: \"\"', '10.1.74.45', '2019-11-22 11:03:31', '令狐冲', 'getAllMenusTable', '3');
INSERT INTO `sys_log` VALUES ('1ebd3afc6ded4d5b83195cb9703041d9', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '10.1.74.45', '2019-11-22 11:03:31', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('7560e9b5647d4b8ab306faeaa88ca89a', 'admin', '菜单列表', 'com.liuhu.rainbow.system.controller.MenuController', ' currentPage: \"1\" pageSize: \"5\" name: \"\" parentId: \"\"', '10.1.74.45', '2019-11-22 11:06:22', '令狐冲', 'getAllMenusTable', '3');
INSERT INTO `sys_log` VALUES ('ec1e1d02a812451aa8cf6c2a5a7bb9cb', 'admin', '菜单列表', 'com.liuhu.rainbow.system.controller.MenuController', ' currentPage: \"1\" pageSize: \"5\" name: \"\" parentId: \"\"', '10.1.74.45', '2019-11-22 11:07:43', '令狐冲', 'getAllMenusTable', '3');
INSERT INTO `sys_log` VALUES ('a4f20d8e95de449fbb4cec74cfb46a1d', 'admin', '菜单列表', 'com.liuhu.rainbow.system.controller.MenuController', ' currentPage: \"1\" pageSize: \"5\" name: \"\" parentId: \"\"', '10.1.74.45', '2019-11-22 11:14:34', '令狐冲', 'getAllMenusTable', '3');
INSERT INTO `sys_log` VALUES ('8896c2c3b74c40b9bcf92f3d7d5698ea', 'admin', '菜单列表', 'com.liuhu.rainbow.system.controller.MenuController', ' currentPage: \"1\" pageSize: \"5\" name: \"\" parentId: \"\"', '10.1.74.45', '2019-11-22 11:14:56', '令狐冲', 'getAllMenusTable', '3');
INSERT INTO `sys_log` VALUES ('a87b73b90c3c48c5a2531b6020fb70e0', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '10.1.74.45', '2019-11-22 11:15:19', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('f362090ea51247e98c30d41b0b2853bd', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '10.1.74.45', '2019-11-22 11:17:58', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('177fdd43357747c4be09618c91ec4000', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '10.1.74.45', '2019-11-22 11:18:05', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('b518e397f7f7490dbed5e7bdba9e3055', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '10.1.74.45', '2019-11-22 11:18:31', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('56ba272f2fac4d9a83b6323810b8574f', 'admin', '菜单列表', 'com.liuhu.rainbow.system.controller.MenuController', ' currentPage: \"1\" pageSize: \"5\" name: \"\" parentId: \"\"', '10.1.74.45', '2019-11-22 11:18:41', '令狐冲', 'getAllMenusTable', '3');
INSERT INTO `sys_log` VALUES ('90aa6ba72b6141cab3cc1437956bae42', 'admin', '菜单列表', 'com.liuhu.rainbow.system.controller.MenuController', ' currentPage: \"1\" pageSize: \"5\" name: \"\" parentId: \"\"', '10.1.74.45', '2019-11-22 11:19:57', '令狐冲', 'getAllMenusTable', '3');
INSERT INTO `sys_log` VALUES ('42a5c5216d924300bd6f2fd4941b8917', 'admin', '菜单列表', 'com.liuhu.rainbow.system.controller.MenuController', ' currentPage: \"1\" pageSize: \"5\" name: \"\" parentId: \"\"', '10.1.74.45', '2019-11-22 11:20:17', '令狐冲', 'getAllMenusTable', '3');
INSERT INTO `sys_log` VALUES ('77e7089cade648bbb57fa770776f9af6', 'admin', '菜单列表', 'com.liuhu.rainbow.system.controller.MenuController', ' currentPage: \"1\" pageSize: \"5\" name: \"\" parentId: \"\"', '10.1.74.45', '2019-11-22 11:20:46', '令狐冲', 'getAllMenusTable', '3');
INSERT INTO `sys_log` VALUES ('67d3e1292cd0489abd774b880413713f', 'admin', '菜单列表', 'com.liuhu.rainbow.system.controller.MenuController', ' currentPage: \"1\" pageSize: \"5\" name: \"\" parentId: \"\"', '10.1.74.45', '2019-11-22 11:21:46', '令狐冲', 'getAllMenusTable', '3');
INSERT INTO `sys_log` VALUES ('62685f37287e4cef8ecbe62245eec339', 'admin', '菜单列表', 'com.liuhu.rainbow.system.controller.MenuController', ' currentPage: \"1\" pageSize: \"5\" name: \"\" parentId: \"\"', '10.1.74.45', '2019-11-22 11:22:01', '令狐冲', 'getAllMenusTable', '3');
INSERT INTO `sys_log` VALUES ('2a866b1b92eb41aba647372d7d4bf441', 'admin', '菜单列表', 'com.liuhu.rainbow.system.controller.MenuController', ' currentPage: \"1\" pageSize: \"5\" name: \"\" parentId: \"\"', '10.1.74.45', '2019-11-22 11:22:16', '令狐冲', 'getAllMenusTable', '3');
INSERT INTO `sys_log` VALUES ('3c8e094eabde4a068ee74ef8933d060d', 'admin', '菜单列表', 'com.liuhu.rainbow.system.controller.MenuController', ' currentPage: \"1\" pageSize: \"5\" name: \"\" parentId: \"\"', '10.1.74.45', '2019-11-22 11:23:55', '令狐冲', 'getAllMenusTable', '3');
INSERT INTO `sys_log` VALUES ('beb6c4766fb247f7b3063e860e51efd9', 'admin', '查询角色列表分页', 'com.liuhu.rainbow.system.controller.RoleController', ' currentPage: \"1\" pageSize: \"5\" name: \"\"', '10.1.74.45', '2019-11-22 11:30:41', '令狐冲', 'selectRoleWithPage', '3');
INSERT INTO `sys_log` VALUES ('b21d0b4c1ff2457a84b91399c3729ca2', 'admin', '查询角色列表分页', 'com.liuhu.rainbow.system.controller.RoleController', ' currentPage: \"1\" pageSize: \"5\" name: \"\"', '10.1.74.45', '2019-11-22 11:30:57', '令狐冲', 'selectRoleWithPage', '3');
INSERT INTO `sys_log` VALUES ('a5de603529904f53a947409f0b8eec71', 'admin', '菜单列表', 'com.liuhu.rainbow.system.controller.MenuController', ' currentPage: \"1\" pageSize: \"5\" name: \"\" parentId: \"\"', '10.1.74.45', '2019-11-22 11:31:30', '令狐冲', 'getAllMenusTable', '3');
INSERT INTO `sys_log` VALUES ('6289770af65d4389be30123b5cc3443e', 'admin', '操作日志分页', 'com.liuhu.rainbow.system.controller.LogController', ' currentPage: \"1\" pageSize: \"5\" pageSize: \"5\" currentPage: \"1\"', '10.1.74.45', '2019-11-22 11:31:45', '令狐冲', 'selectLogWithPage', '3');
INSERT INTO `sys_log` VALUES ('697a6b59010248f2b7906b797388156f', 'admin', '操作日志分页', 'com.liuhu.rainbow.system.controller.LogController', ' currentPage: \"2\" pageSize: \"5\" pageSize: \"5\" currentPage: \"2\"', '10.1.74.45', '2019-11-22 11:31:59', '令狐冲', 'selectLogWithPage', '3');
INSERT INTO `sys_log` VALUES ('297dbfed7b5f4708adddc5c8d7b04aa8', 'admin', '操作日志分页', 'com.liuhu.rainbow.system.controller.LogController', ' currentPage: \"3\" pageSize: \"5\" pageSize: \"5\" currentPage: \"3\"', '10.1.74.45', '2019-11-22 11:32:00', '令狐冲', 'selectLogWithPage', '3');
INSERT INTO `sys_log` VALUES ('f42d8442368041b182035ced5f2a5a4e', 'admin', '操作日志分页', 'com.liuhu.rainbow.system.controller.LogController', ' currentPage: \"4\" pageSize: \"5\" pageSize: \"5\" currentPage: \"4\"', '10.1.74.45', '2019-11-22 11:32:01', '令狐冲', 'selectLogWithPage', '3');
INSERT INTO `sys_log` VALUES ('acbb0be57b20443b9cfb2b05a5a28d95', 'admin', '操作日志分页', 'com.liuhu.rainbow.system.controller.LogController', ' currentPage: \"5\" pageSize: \"5\" pageSize: \"5\" currentPage: \"5\"', '10.1.74.45', '2019-11-22 11:32:02', '令狐冲', 'selectLogWithPage', '3');
INSERT INTO `sys_log` VALUES ('97cde32dade347df80b3846d1b448876', 'admin', '操作日志分页', 'com.liuhu.rainbow.system.controller.LogController', ' currentPage: \"7\" pageSize: \"5\" pageSize: \"5\" currentPage: \"7\"', '10.1.74.45', '2019-11-22 11:32:02', '令狐冲', 'selectLogWithPage', '3');
INSERT INTO `sys_log` VALUES ('5950eb05b6df4eabb7067dcacf710fd0', 'admin', '操作日志分页', 'com.liuhu.rainbow.system.controller.LogController', ' currentPage: \"28\" pageSize: \"5\" pageSize: \"5\" currentPage: \"28\"', '10.1.74.45', '2019-11-22 11:32:04', '令狐冲', 'selectLogWithPage', '3');
INSERT INTO `sys_log` VALUES ('49872180a6554d598059bd7a9b42213c', 'admin', '操作日志分页', 'com.liuhu.rainbow.system.controller.LogController', ' currentPage: \"25\" pageSize: \"5\" pageSize: \"5\" currentPage: \"25\"', '10.1.74.45', '2019-11-22 11:32:06', '令狐冲', 'selectLogWithPage', '3');
INSERT INTO `sys_log` VALUES ('395250538d064c8eab99515b5bf5de2a', 'admin', '操作日志分页', 'com.liuhu.rainbow.system.controller.LogController', ' currentPage: \"28\" pageSize: \"5\" pageSize: \"5\" currentPage: \"28\"', '10.1.74.45', '2019-11-22 11:32:08', '令狐冲', 'selectLogWithPage', '3');
INSERT INTO `sys_log` VALUES ('baacd4fd011b41a3a0f99c2300e65545', 'admin', '操作日志分页', 'com.liuhu.rainbow.system.controller.LogController', ' currentPage: \"1\" pageSize: \"5\" pageSize: \"5\" currentPage: \"1\"', '10.1.74.45', '2019-11-22 11:33:11', '令狐冲', 'selectLogWithPage', '3');
INSERT INTO `sys_log` VALUES ('ce84759cf8f448f0936190411f1796a9', 'admin', '操作日志分页', 'com.liuhu.rainbow.system.controller.LogController', ' currentPage: \"1\" pageSize: \"5\" pageSize: \"5\" currentPage: \"1\"', '10.1.74.45', '2019-11-22 11:33:49', '令狐冲', 'selectLogWithPage', '3');
INSERT INTO `sys_log` VALUES ('5a36e200c5aa4bde9ac22eedeea842d0', 'admin', '操作日志分页', 'com.liuhu.rainbow.system.controller.LogController', ' currentPage: \"4\" pageSize: \"5\" pageSize: \"5\" currentPage: \"4\"', '10.1.74.45', '2019-11-22 11:33:57', '令狐冲', 'selectLogWithPage', '3');
INSERT INTO `sys_log` VALUES ('9a2f1503f55040e4a8491e27100f76aa', 'admin', '操作日志分页', 'com.liuhu.rainbow.system.controller.LogController', ' currentPage: \"5\" pageSize: \"5\" pageSize: \"5\" currentPage: \"5\"', '10.1.74.45', '2019-11-22 11:33:57', '令狐冲', 'selectLogWithPage', '3');
INSERT INTO `sys_log` VALUES ('3175768735964024b143b34c86fa2475', 'admin', '菜单列表', 'com.liuhu.rainbow.system.controller.MenuController', ' currentPage: \"1\" pageSize: \"5\" name: \"\" parentId: \"\"', '10.1.74.45', '2019-11-22 11:34:07', '令狐冲', 'getAllMenusTable', '3');
INSERT INTO `sys_log` VALUES ('e27f304039314d878f2e2c276662323a', 'admin', '操作日志分页', 'com.liuhu.rainbow.system.controller.LogController', ' currentPage: \"1\" pageSize: \"5\" pageSize: \"5\" currentPage: \"1\"', '10.1.74.45', '2019-11-22 11:34:13', '令狐冲', 'selectLogWithPage', '3');
INSERT INTO `sys_log` VALUES ('f9e8dae67f314a68adbcf57c1a7a5f61', 'admin', '菜单列表', 'com.liuhu.rainbow.system.controller.MenuController', ' currentPage: \"1\" pageSize: \"5\" name: \"\" parentId: \"\"', '10.1.74.45', '2019-11-22 11:34:17', '令狐冲', 'getAllMenusTable', '3');
INSERT INTO `sys_log` VALUES ('e3decb4623bf4fe285db4263b3de90f7', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '10.1.74.45', '2019-11-22 11:34:20', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('7babc41b018d4127a27c35c3c0a72121', 'admin', '查询角色列表分页', 'com.liuhu.rainbow.system.controller.RoleController', ' currentPage: \"1\" pageSize: \"5\" name: \"\"', '10.1.74.45', '2019-11-22 11:34:38', '令狐冲', 'selectRoleWithPage', '3');
INSERT INTO `sys_log` VALUES ('1ae54c78158f434690a981c27e827c8f', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '10.1.74.45', '2019-11-22 11:35:20', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('8d42a67605294f7aa6057d86eb164d04', 'admin', '菜单列表', 'com.liuhu.rainbow.system.controller.MenuController', ' currentPage: \"1\" pageSize: \"5\" name: \"\" parentId: \"\"', '10.1.74.45', '2019-11-22 11:35:21', '令狐冲', 'getAllMenusTable', '3');
INSERT INTO `sys_log` VALUES ('c5fb1d39e6a042579b4f69ed18c47dc3', 'admin', '查询角色列表分页', 'com.liuhu.rainbow.system.controller.RoleController', ' currentPage: \"1\" pageSize: \"5\" name: \"\"', '10.1.74.45', '2019-11-22 11:35:23', '令狐冲', 'selectRoleWithPage', '3');
INSERT INTO `sys_log` VALUES ('d96ddf1212a44ed692b97fa95d861c82', 'admin', '查询角色列表分页', 'com.liuhu.rainbow.system.controller.RoleController', ' currentPage: \"1\" pageSize: \"5\" name: \"\"', '10.1.74.45', '2019-11-22 11:36:20', '令狐冲', 'selectRoleWithPage', '3');
INSERT INTO `sys_log` VALUES ('b6c7430c3a0a438e87fe913e52a7a2aa', 'admin', '查询角色列表分页', 'com.liuhu.rainbow.system.controller.RoleController', ' currentPage: \"1\" pageSize: \"5\" name: \"\"', '10.1.74.45', '2019-11-22 11:36:31', '令狐冲', 'selectRoleWithPage', '3');
INSERT INTO `sys_log` VALUES ('bcbf67efc9194f4fa0e63f3649281ec7', 'admin', '查询角色列表分页', 'com.liuhu.rainbow.system.controller.RoleController', ' currentPage: \"1\" pageSize: \"5\" name: \"\"', '10.1.74.45', '2019-11-22 11:37:46', '令狐冲', 'selectRoleWithPage', '3');
INSERT INTO `sys_log` VALUES ('81b7927a27e449b083f1b0ed1988eb67', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '10.1.74.45', '2019-11-22 11:38:03', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('1f75f1366da945caa362d8f4a102efa9', 'admin', '菜单列表', 'com.liuhu.rainbow.system.controller.MenuController', ' currentPage: \"1\" pageSize: \"5\" name: \"\" parentId: \"\"', '10.1.74.45', '2019-11-22 11:38:05', '令狐冲', 'getAllMenusTable', '3');
INSERT INTO `sys_log` VALUES ('90b1381ad8a8454f938df1ea8d37224a', 'admin', '菜单列表', 'com.liuhu.rainbow.system.controller.MenuController', ' currentPage: \"1\" pageSize: \"5\" name: \"\" parentId: \"\"', '10.1.74.45', '2019-11-22 11:38:23', '令狐冲', 'getAllMenusTable', '3');
INSERT INTO `sys_log` VALUES ('1cb38eb5d1a440d5aeb3b25e1088c059', 'admin', '菜单列表', 'com.liuhu.rainbow.system.controller.MenuController', ' currentPage: \"1\" pageSize: \"5\" name: \"\" parentId: \"\"', '10.1.74.45', '2019-11-22 13:40:47', '令狐冲', 'getAllMenusTable', '3');
INSERT INTO `sys_log` VALUES ('d41b587a0f624131a1f992af6d64abcf', 'admin', '菜单列表', 'com.liuhu.rainbow.system.controller.MenuController', ' currentPage: \"1\" pageSize: \"5\" name: \"\" parentId: \"\"', '10.1.74.45', '2019-11-22 13:41:58', '令狐冲', 'getAllMenusTable', '3');
INSERT INTO `sys_log` VALUES ('8bcbb97cfd984f188c582043fd10b7b2', 'admin', '菜单列表', 'com.liuhu.rainbow.system.controller.MenuController', ' currentPage: \"1\" pageSize: \"5\" name: \"\" parentId: \"\"', '10.1.74.45', '2019-11-22 14:07:15', '令狐冲', 'getAllMenusTable', '3');
INSERT INTO `sys_log` VALUES ('fd4a3c9005b34aeba4241b3880ae0c4e', 'admin', '查询用户列表', 'com.liuhu.rainbow.system.controller.UserController', ' currentPage: \"1\" pageSize: \"3\" nickname: \"\"', '10.1.74.45', '2019-11-22 14:07:26', '令狐冲', 'getUserList', '3');
INSERT INTO `sys_log` VALUES ('e0c264ecf99342b2a8167cb6b2fe6d8d', 'admin', '查询角色列表分页', 'com.liuhu.rainbow.system.controller.RoleController', ' currentPage: \"1\" pageSize: \"5\" name: \"\"', '10.1.74.45', '2019-11-22 14:07:36', '令狐冲', 'selectRoleWithPage', '3');
INSERT INTO `sys_log` VALUES ('7a31f3a62ba04c2e96b0cf9251cd5b5f', 'admin', '操作日志分页', 'com.liuhu.rainbow.system.controller.LogController', ' currentPage: \"1\" pageSize: \"5\" pageSize: \"5\" currentPage: \"1\"', '10.1.74.45', '2019-11-22 14:07:57', '令狐冲', 'selectLogWithPage', '3');

-- ----------------------------
-- Table structure for sys_login_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_login_log`;
CREATE TABLE `sys_login_log` (
  `id` varchar(50) NOT NULL COMMENT '唯一主键',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `login_time` datetime DEFAULT NULL COMMENT '登陆时间',
  `location` varchar(255) DEFAULT NULL COMMENT '登陆地址',
  `ip` varchar(255) DEFAULT NULL COMMENT '登陆ip',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_login_log
-- ----------------------------
INSERT INTO `sys_login_log` VALUES ('0240635b731e443a83dd96e3f10b8cef', 'admin', '2019-11-22 09:25:19', '', '10.1.74.45');
INSERT INTO `sys_login_log` VALUES ('08d071075c9c4ad8942a1de93e3c426f', 'admin', '2019-11-22 13:56:55', '', '10.1.74.45');
INSERT INTO `sys_login_log` VALUES ('1', 'admin', '2019-11-21 15:00:25', '21', '212');
INSERT INTO `sys_login_log` VALUES ('1cad0c00d4354f6ea90a9d79e0b462d5', 'admin', '2019-11-22 14:06:48', '', '10.1.74.45');
INSERT INTO `sys_login_log` VALUES ('1d1104556a264d97a2d653466a3de33b', 'admin', '2019-11-22 10:12:47', '', '10.1.74.45');
INSERT INTO `sys_login_log` VALUES ('1d7e3e2c2da84625880e3703c93220f5', 'admin', '2019-11-22 10:01:48', '', '10.1.74.45');
INSERT INTO `sys_login_log` VALUES ('1e533a75119e4c2f8e55fb14f96576f2', 'admin', '2019-11-21 17:25:25', '', '10.1.74.44');
INSERT INTO `sys_login_log` VALUES ('2', 'admin', '2019-11-20 15:00:38', '23', '121');
INSERT INTO `sys_login_log` VALUES ('24cc5198998e48ed9f730cac87890935', 'admin', '2019-11-22 10:46:31', '', '10.1.74.45');
INSERT INTO `sys_login_log` VALUES ('25a36f70f0734e08a3a395565a890308', 'admin', '2019-11-22 11:03:06', '', '10.1.74.45');
INSERT INTO `sys_login_log` VALUES ('3347346f6f324bb489031405955e9aa6', 'admin', '2019-11-21 16:11:58', '', '127.0.0.1');
INSERT INTO `sys_login_log` VALUES ('3a4ba26050034d648b39a5740305d0b6', 'admin', '2019-11-22 13:50:28', '', '10.1.74.45');
INSERT INTO `sys_login_log` VALUES ('3c241681c37b4cffac3d3ac42b734c31', 'admin', '2019-11-22 13:56:32', '', '10.1.74.45');
INSERT INTO `sys_login_log` VALUES ('415af329c5904a86861144ec32233def', 'admin', '2019-11-22 09:18:37', '', '10.1.74.45');
INSERT INTO `sys_login_log` VALUES ('43e71772787340da8a68a1a48bd14db0', 'admin', '2019-11-21 17:06:18', '', '127.0.0.1');
INSERT INTO `sys_login_log` VALUES ('4b4fbbddef8b449db1b00bb4e2cf7814', 'admin', '2019-11-22 10:41:59', '', '10.1.74.45');
INSERT INTO `sys_login_log` VALUES ('5d421933e2c94c1dbd90a7ec295bdb3b', 'admin', '2019-11-22 11:19:54', '', '10.1.74.45');
INSERT INTO `sys_login_log` VALUES ('5eac3e9059424c638b7d5235c568f45d', 'admin', '2019-11-22 09:47:27', '', '10.1.74.45');
INSERT INTO `sys_login_log` VALUES ('5ecb217ea6f34eb5922e6825b89c7b06', 'admin', '2019-11-21 15:30:07', '', '127.0.0.1');
INSERT INTO `sys_login_log` VALUES ('6510845fc0984720a3d1e28102e7c497', 'admin', '2019-11-22 10:27:00', '', '10.1.74.45');
INSERT INTO `sys_login_log` VALUES ('740f50a4b9f448178c20bdc3396610b2', 'admin', '2019-11-22 13:53:54', '', '10.1.74.45');
INSERT INTO `sys_login_log` VALUES ('763953e7a4d043b1b9454feec1c8487b', 'admin', '2019-11-22 10:35:38', '', '10.1.74.45');
INSERT INTO `sys_login_log` VALUES ('7976383aaca44500b1fb644acbfdbcb6', 'admin', '2019-11-21 17:13:42', '', '127.0.0.1');
INSERT INTO `sys_login_log` VALUES ('871912350baf4bf4847605b06138a479', 'admin', '2019-11-21 15:38:11', '', '127.0.0.1');
INSERT INTO `sys_login_log` VALUES ('87e999c82f764e228ed9be8658501568', 'admin', '2019-11-22 09:23:02', '', '10.1.74.45');
INSERT INTO `sys_login_log` VALUES ('901e9e14766245958e50e4b2278968a1', 'admin', '2019-11-22 13:40:41', '', '10.1.74.45');
INSERT INTO `sys_login_log` VALUES ('ac4d29b7530d44e89a99128cde4d6488', 'admin', '2019-11-22 10:30:22', '', '10.1.74.45');
INSERT INTO `sys_login_log` VALUES ('b5a5f1d66934416ab1fb3eda3fe4bf66', 'admin', '2019-11-22 10:13:15', '', '10.1.74.45');
INSERT INTO `sys_login_log` VALUES ('bbfd0e0a6f11454285788298e3232818', 'admin', '2019-11-21 17:23:43', '', '10.1.74.45');
INSERT INTO `sys_login_log` VALUES ('bee01f998b474a8f9d363b80d93f14d4', 'admin', '2019-11-21 17:14:39', '', '127.0.0.1');
INSERT INTO `sys_login_log` VALUES ('c19303e17da14bfab83461f20b9fe45f', 'admin', '2019-11-22 11:18:37', '', '10.1.74.45');
INSERT INTO `sys_login_log` VALUES ('c52d743a9d4142a588b053cce1f5d5c3', 'admin', '2019-11-22 10:24:07', '', '10.1.74.45');
INSERT INTO `sys_login_log` VALUES ('c5d861e374e64582beba2102113ee2a7', 'admin', '2019-11-22 10:37:30', '', '10.1.74.45');
INSERT INTO `sys_login_log` VALUES ('cff0e639414440429d72d9e0bd651ae3', 'admin', '2019-11-22 10:15:58', '', '10.1.74.45');
INSERT INTO `sys_login_log` VALUES ('d031c00cc2714bb09ebd3775a533478a', 'admin', '2019-11-22 10:12:48', '', '10.1.74.45');
INSERT INTO `sys_login_log` VALUES ('d1d651c3bea540ec83e015fa57d98829', 'admin', '2019-11-22 11:58:09', '', '10.1.74.45');
INSERT INTO `sys_login_log` VALUES ('d76795287f3b46b7a36dfdbaf744482f', 'admin', '2019-11-22 10:32:47', '', '10.1.74.45');
INSERT INTO `sys_login_log` VALUES ('d9654d87b2744a319f5606363aeaa9a9', 'admin', '2019-11-22 09:58:59', '', '10.1.74.45');
INSERT INTO `sys_login_log` VALUES ('ddb94dd3f1e64b0d861e7ef57313ca60', 'admin', '2019-11-22 13:49:04', '', '10.1.74.45');
INSERT INTO `sys_login_log` VALUES ('ef47c9fd148f4ceb8c8f29da265c305e', 'admin', '2019-11-22 10:11:15', '', '10.1.74.45');
INSERT INTO `sys_login_log` VALUES ('fcbe7d352b1c472791c33fc6871d9944', 'admin', '2019-11-22 09:05:33', '', '10.1.74.45');
INSERT INTO `sys_login_log` VALUES ('ff039d6a743549a3bf4155ba285dc978', 'admin', '2019-11-22 10:44:39', '', '10.1.74.45');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `ID` varchar(255) NOT NULL COMMENT '菜单/按钮ID',
  `PARENT_ID` varchar(50) NOT NULL COMMENT '上级菜单ID',
  `NAME` varchar(50) NOT NULL COMMENT '菜单/按钮名称',
  `PATH` varchar(50) DEFAULT NULL COMMENT '菜单URL',
  `PERMISSION` varchar(50) DEFAULT NULL COMMENT '权限标识',
  `COMPONENT` varchar(50) DEFAULT NULL COMMENT 'VUE 组件名称  动态加载路由',
  `ICON` varchar(50) DEFAULT NULL COMMENT '图标',
  `TYPE` char(2) NOT NULL COMMENT '类型 0菜单 1按钮',
  `SORT` bigint(20) DEFAULT NULL COMMENT '排序',
  `STATUS` varchar(2) DEFAULT '0' COMMENT '状态：0-正常，1-不可用',
  `CREATOR` varchar(100) DEFAULT NULL COMMENT '修改时间',
  `CREATOR_NAME` varchar(100) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `UPDATOR` varchar(100) DEFAULT NULL,
  `UPDATOR_NAME` varchar(100) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `REMARK` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='菜单表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '0', '系统管理', '/system', 'system:apexwww', '/layout', 'el-icon-setting', '0', '2', '0', null, null, '2019-11-12 03:03:02', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('10', '0', '日志管理', '/log', null, '/layout', 'el-icon-tickets', '0', '8', '0', null, null, '2019-11-23 15:17:34', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('155', '55', '中国地图', '/other/chinaMap', null, '/other/map/chinaMap', 'el-icon-s-flag', '0', null, '0', null, null, null, null, null, null, null);
INSERT INTO `sys_menu` VALUES ('156', '55', '世界地图', '/other/worldMap', null, '/other/map/worldMap', 'el-icon-s-finance', '0', null, '0', null, null, null, null, null, null, null);
INSERT INTO `sys_menu` VALUES ('212121', '7', '系统参数', '/config/systemLog', null, '/system/config/systemLog', 'el-icon-postcard', '0', '50', '0', null, null, null, null, null, null, null);
INSERT INTO `sys_menu` VALUES ('3', '1', '用户管理', '/system/user', 'user:view', '/system/user/user', 'el-icon-user-solid', '0', '11', '0', null, null, '2019-11-03 15:17:30', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('4', '1', '角色管理', '/system/role', 'role:view', '/system/role/role', 'el-icon-coordinate', '0', '99', '0', null, null, '2019-11-23 15:17:26', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('5', '1', '菜单管理', '/system/menu', 'menu:view', '/system/menu/menu', 'el-icon-s-unfold', '0', '3', '0', null, null, '2019-11-08 15:17:22', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('55', '0', '其他功能', '/other', null, '/layout', 'el-icon-s-open', '0', '110', '0', null, null, null, null, null, null, null);
INSERT INTO `sys_menu` VALUES ('66', '0', '数据统计', '/dataStatistics', null, '/layout', 'el-icon-s-data\r\nel-icon-s-data\r\nel-icon-s-data', '0', '66', '0', null, null, null, null, null, null, null);
INSERT INTO `sys_menu` VALUES ('7', '0', '参数管理', '/config', null, '/layout', 'el-icon-aim', '0', '5', '0', null, null, '2019-11-13 15:17:15', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('8', '0', '系统监控', '/monitoring', null, '/layout', 'el-icon-s-release', '0', '6', '0', null, null, '2019-11-13 15:17:04', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('9', '8', 'redis监控', '/monitoring/redis', null, '/monitoring/redis', 'el-icon-message-solid', '0', '7', '0', null, null, '2019-11-20 15:18:13', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('999', '0', '系统首页', '/layout', null, '/info', 'el-icon-s-home', '0', '1', '0', null, null, null, null, null, null, null);
INSERT INTO `sys_menu` VALUES ('fc674361825a48ab8c10232e540f58f0', '10', '系统日志', '/log/systemLog', null, '/system/log/systemLog', 'el-icon-notebook-2', '0', '25', '0', '1', 'admin', '2019-11-14 16:42:08', '1', 'admin', '2019-11-14 16:42:08', null);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `ID` varchar(255) NOT NULL COMMENT '角色ID',
  `NAME` varchar(100) NOT NULL COMMENT '角色名称',
  `STATUS` varchar(100) NOT NULL DEFAULT '0' COMMENT '状态：0-正常，1-不可用',
  `CREATOR` varchar(100) DEFAULT NULL COMMENT '创建人ID',
  `CREATOR_NAME` varchar(100) DEFAULT NULL COMMENT '创建人姓名',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建人时间',
  `UPDATOR` varchar(100) DEFAULT NULL COMMENT '修改人ID',
  `UPDATOR_NAME` varchar(100) DEFAULT NULL COMMENT '修改人姓名',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `REMARK` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '系统管理员', '0', 'admin', '系统管理员', '2019-11-01 21:00:00', '1', 'admin', '2019-11-13 21:21:11', '系统管理员，拥有所有操作权限 ^_^');
INSERT INTO `sys_role` VALUES ('100', '测试', '0', 'admin', '系统管理员', '2019-11-22 15:28:47', '1', 'admin', '2019-11-12 12:21:00', '212121111');
INSERT INTO `sys_role` VALUES ('103', '测试角色', '0', 'admin', '系统管理员', '2019-11-12 15:28:41', null, null, '2019-11-13 15:27:50', null);
INSERT INTO `sys_role` VALUES ('2', '注册账户', '0', 'admin', '系统管理员', '2019-11-07 21:04:00', null, null, '2019-11-13 15:28:06', '注册账户，拥有查看，新增权限（新增用户除外）和导出Excel权限');
INSERT INTO `sys_role` VALUES ('369', '游客', '0', 'admin', '系统管理员', '2019-11-13 02:32:00', null, null, '2019-11-03 15:28:08', '系统游客');
INSERT INTO `sys_role` VALUES ('77', 'Redis监控员', '0', 'admin', '系统管理员', '2019-11-14 00:12:00', null, null, '2019-11-29 15:28:11', '负责Redis模块');
INSERT INTO `sys_role` VALUES ('78', '系统监控员', '0', 'admin', '系统管理员', '2019-11-15 00:00:00', null, null, '2019-11-30 15:28:14', '负责整个系统监控模块');
INSERT INTO `sys_role` VALUES ('79', '跑批人员', '0', 'admin', '系统管理员', '2019-11-16 01:00:00', null, null, '2019-11-01 15:28:17', '负责任务调度跑批模块');
INSERT INTO `sys_role` VALUES ('80', '开发人员', '0', 'admin', '系统管理员', '2019-11-26 12:23:00', null, null, '2019-11-01 15:28:21', '拥有代码生成模块的权限');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `ROLE_ID` varchar(255) NOT NULL COMMENT '角色ID',
  `MENU_ID` varchar(255) NOT NULL COMMENT '菜单/按钮ID'
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
INSERT INTO `sys_role_menu` VALUES ('80', '137');
INSERT INTO `sys_role_menu` VALUES ('80', '138');
INSERT INTO `sys_role_menu` VALUES ('80', '165');
INSERT INTO `sys_role_menu` VALUES ('80', '139');
INSERT INTO `sys_role_menu` VALUES ('80', '166');
INSERT INTO `sys_role_menu` VALUES ('2', '8');
INSERT INTO `sys_role_menu` VALUES ('369', '1');
INSERT INTO `sys_role_menu` VALUES ('369', '2');
INSERT INTO `sys_role_menu` VALUES ('369', '3');
INSERT INTO `sys_role_menu` VALUES ('369', '7');
INSERT INTO `sys_role_menu` VALUES ('369', '8');
INSERT INTO `sys_role_menu` VALUES ('369', '9');
INSERT INTO `sys_role_menu` VALUES ('79', '8');
INSERT INTO `sys_role_menu` VALUES ('79', '9');
INSERT INTO `sys_role_menu` VALUES ('79', '10');
INSERT INTO `sys_role_menu` VALUES ('100', '3');
INSERT INTO `sys_role_menu` VALUES ('100', '4');
INSERT INTO `sys_role_menu` VALUES ('100', '5');
INSERT INTO `sys_role_menu` VALUES ('100', '6');
INSERT INTO `sys_role_menu` VALUES ('1', '55');
INSERT INTO `sys_role_menu` VALUES ('1', '155');
INSERT INTO `sys_role_menu` VALUES ('1', '156');
INSERT INTO `sys_role_menu` VALUES ('1', '999');
INSERT INTO `sys_role_menu` VALUES ('1', '1');
INSERT INTO `sys_role_menu` VALUES ('1', '5');
INSERT INTO `sys_role_menu` VALUES ('1', '3');
INSERT INTO `sys_role_menu` VALUES ('1', '4');
INSERT INTO `sys_role_menu` VALUES ('1', '7');
INSERT INTO `sys_role_menu` VALUES ('1', '212121');
INSERT INTO `sys_role_menu` VALUES ('1', '8');
INSERT INTO `sys_role_menu` VALUES ('1', '9');
INSERT INTO `sys_role_menu` VALUES ('1', '10');
INSERT INTO `sys_role_menu` VALUES ('1', 'fc674361825a48ab8c10232e540f58f0');
INSERT INTO `sys_role_menu` VALUES ('1', '66');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `ID` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '用户ID',
  `NICKNAME` varchar(100) DEFAULT '' COMMENT '昵称',
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
  `CREATE_TIME` datetime DEFAULT NULL,
  `UPDATOR` varchar(100) DEFAULT NULL,
  `UPDATOR_NAME` varchar(100) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `REMARK` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '令狐冲', 'admin', 'df655ad8d3229f3269fad2a8bab59b6c', 'melo@qq.com', '17788888888', '0', '2019-06-14 20:54:13', '0', '1', 'white', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3541654755,135670228&fm=26&gp=0.jpg', '我是帅比作者。', null, null, null, '2019-10-08 00:00:00', null, null, '2019-11-06 15:15:35', null);
INSERT INTO `sys_user` VALUES ('2', '爱的魔力转圈圈', 'Scott', '1d685729d113cfd03872f154939bee1c', 'scott@gmail.com', '17722222222', '1', '2019-06-14 21:05:47', '0', '1', 'black', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=3895241078,4003563952&fm=26&gp=0.jpg', '我是scott。', null, null, null, '2019-10-09 00:00:00', null, null, '2019-11-21 15:15:39', null);
INSERT INTO `sys_user` VALUES ('213', '詹姆斯', 'james', '12121', '369@qq.com', '2121', '1', null, '1', null, null, null, null, null, null, null, null, null, null, '2019-11-22 15:15:42', null);
INSERT INTO `sys_user` VALUES ('3', '西门吹雪', 'west', '7f9af8620ffbe6601d1d611a9321cfcf', 'West@qq.com', '13444444444', '1', '2019-10-30 16:46:58', '1', '1', 'white', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1231051567,4086354986&fm=26&gp=0.jpg', null, null, null, null, '2019-10-10 00:00:00', null, null, '2019-11-23 15:15:45', null);
INSERT INTO `sys_user` VALUES ('4', '李四', 'Micaela', '9f2daa2c7bed6870fcbb5b9a51d6300e', 'Micaela@163.com', '17733333333', '0', '2019-06-14 21:10:37', '0', '0', 'white', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3738324299,1361227017&fm=26&gp=0.jpg', '我叫米克拉', null, null, null, '2019-10-11 00:00:00', null, null, '2019-11-19 15:15:48', null);
INSERT INTO `sys_user` VALUES ('4cfdfb5bf6c74ed08c7a1d42e9a86130', '杨过', 'yang', 'c3d91b0a6c3100ed272eaae279ca2c27', '15691111@qq.com', '1595651412211112222', '1', null, '0', null, null, null, null, null, '1', null, '2019-10-31 14:15:45', '1', 'admin', '2019-11-08 14:36:06', null);
INSERT INTO `sys_user` VALUES ('5', '小李子', 'Jana', '176679b77b3c3e352bd3b30ddc81083e', 'Jana@126.com', '17744444444', '0', '2019-06-14 21:12:32', '1', '1', 'white', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1675575355,3273145649&fm=26&gp=0.jpg', '大家好，我叫简娜', null, null, null, '2019-10-19 00:00:00', null, null, '2019-11-12 15:15:51', null);
INSERT INTO `sys_user` VALUES ('6', '付敏', 'Georgie', 'dffc683378cdaa015a0ee9554c532225', 'Georgie@qq.com', '17766666666', '0', '2019-06-14 21:16:11', '1', '0', 'black', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=339776857,3862571302&fm=26&gp=0.jpg', '生产执行rm -rf *，账号封禁T T', null, null, null, '2019-10-20 00:00:00', null, null, '2019-11-14 15:15:56', null);
INSERT INTO `sys_user` VALUES ('7', '张无忌', 'Margot', '31379841b9f4bfde22b8b40471e9a6ce', 'Margot@qq.com', '13444444444', '0', '2019-06-14 21:18:07', '1', '1', 'white', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1231051567,4086354986&fm=26&gp=0.jpg', '大家好我叫玛戈', null, null, null, '2019-10-02 00:00:00', null, null, '2019-11-22 15:15:54', null);
INSERT INTO `sys_user` VALUES ('722cff7719204182bd611c50e7ac9980', '艾伦', 'ailun', 'b566da4eb1bdae033ea84a9bda8b7391', '1649@qq.com', '15956514721', '0', null, '0', null, null, null, null, null, '1', null, '2019-10-31 14:06:46', '1', null, '2019-10-31 14:06:46', null);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `USER_ID` varchar(255) NOT NULL COMMENT '用户ID',
  `ROLE_ID` varchar(255) NOT NULL COMMENT '角色ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('4', '4');
INSERT INTO `sys_user_role` VALUES ('7', '7');
INSERT INTO `sys_user_role` VALUES ('7', '1');
INSERT INTO `sys_user_role` VALUES ('7', '9');
INSERT INTO `sys_user_role` VALUES ('6', '78');
INSERT INTO `sys_user_role` VALUES ('3', '78');
INSERT INTO `sys_user_role` VALUES ('3', '2');
INSERT INTO `sys_user_role` VALUES ('5', '1');
INSERT INTO `sys_user_role` VALUES ('5', '78');
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('1', '78');
INSERT INTO `sys_user_role` VALUES ('1', '79');
INSERT INTO `sys_user_role` VALUES ('722cff7719204182bd611c50e7ac9980', '369');
INSERT INTO `sys_user_role` VALUES ('722cff7719204182bd611c50e7ac9980', '77');
INSERT INTO `sys_user_role` VALUES ('722cff7719204182bd611c50e7ac9980', '78');
INSERT INTO `sys_user_role` VALUES ('212', '1');
INSERT INTO `sys_user_role` VALUES ('213', '1');
INSERT INTO `sys_user_role` VALUES ('4cfdfb5bf6c74ed08c7a1d42e9a86130', '369');
INSERT INTO `sys_user_role` VALUES ('2', '77');
INSERT INTO `sys_user_role` VALUES ('2', '78');
INSERT INTO `sys_user_role` VALUES ('2', '79');
INSERT INTO `sys_user_role` VALUES ('2', '369');
INSERT INTO `sys_user_role` VALUES ('2', '2');
INSERT INTO `sys_user_role` VALUES ('2', '103');
INSERT INTO `sys_user_role` VALUES ('2', '100');
INSERT INTO `sys_user_role` VALUES ('2', '1');

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
