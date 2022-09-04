/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3306
 Source Schema         : nkhg

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 04/09/2022 21:54:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (1, 'staff_info', '员工信息表', NULL, NULL, 'StaffInfo', 'crud', 'com.ruoyi.epms', 'epms', 'staffInfo', '员工信息管理', 'yw', '0', '/', '{\"parentMenuId\":\"2000\"}', 'admin', '2022-08-12 15:25:13', '', '2022-08-13 05:19:48', NULL);
INSERT INTO `gen_table` VALUES (2, 'penalty_information', '处罚信息表', NULL, NULL, 'PenaltyInformation', 'crud', 'com.ruoyi.epms', 'epms', 'punishment', '处罚信息', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2000\"}', 'admin', '2022-08-13 06:20:12', '', '2022-08-13 06:59:43', NULL);
INSERT INTO `gen_table` VALUES (3, 'penalty_list', '处罚类别明细表', NULL, NULL, 'PenaltyList', 'crud', 'com.ruoyi.emps', 'epms', 'data', '处罚类别明细', 'yw', '0', '/', '{}', 'admin', '2022-09-03 17:49:37', '', '2022-09-04 14:18:12', NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (1, '1', 'id', '员工id', 'int', 'Long', 'id', '1', '1', '0', NULL, '0', NULL, '0', 'EQ', 'input', '', 1, 'admin', '2022-08-12 15:25:13', '', '2022-08-13 05:19:48');
INSERT INTO `gen_table_column` VALUES (2, '1', 'name', '姓名', 'varchar(100)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2022-08-12 15:25:13', '', '2022-08-13 05:19:48');
INSERT INTO `gen_table_column` VALUES (3, '1', 'sex', '性别', 'int', 'Long', 'sex', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'select', 'sys_user_sex', 3, 'admin', '2022-08-12 15:25:13', '', '2022-08-13 05:19:48');
INSERT INTO `gen_table_column` VALUES (4, '1', 'id_card', '身份证', 'varchar(50)', 'String', 'idCard', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2022-08-12 15:25:13', '', '2022-08-13 05:19:48');
INSERT INTO `gen_table_column` VALUES (5, '1', 'birthday', '出生日期', 'timestamp', 'Date', 'birthday', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'datetime', '', 5, 'admin', '2022-08-12 15:25:13', '', '2022-08-13 05:19:48');
INSERT INTO `gen_table_column` VALUES (6, '1', 'corp', '机构', 'int', 'Long', 'corp', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'corp_name', 6, 'admin', '2022-08-12 15:25:13', '', '2022-08-13 05:19:48');
INSERT INTO `gen_table_column` VALUES (7, '1', 'info_url', '干部信息表url', 'varchar(512)', 'String', 'infoUrl', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'fileUpload', '', 7, 'admin', '2022-08-12 15:25:13', '', '2022-08-13 05:19:48');
INSERT INTO `gen_table_column` VALUES (8, '2', 'id', '编号', 'int', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-08-13 06:20:12', '', '2022-08-13 06:59:43');
INSERT INTO `gen_table_column` VALUES (9, '2', 'staff_id', '员工编号', 'int', 'Long', 'staffId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2022-08-13 06:20:12', '', '2022-08-13 06:59:43');
INSERT INTO `gen_table_column` VALUES (10, '2', 'edcuation', '学历', 'int', 'Long', 'edcuation', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'select', 'user_education', 3, 'admin', '2022-08-13 06:20:12', '', '2022-08-13 06:59:43');
INSERT INTO `gen_table_column` VALUES (11, '2', 'political_status', '政治面貌', 'int', 'Long', 'politicalStatus', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'select', 'political_status', 4, 'admin', '2022-08-13 06:20:12', '', '2022-08-13 06:59:43');
INSERT INTO `gen_table_column` VALUES (12, '2', 'punishment_agency', '处罚机构', 'int', 'Long', 'punishmentAgency', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'punishment_agency', 5, 'admin', '2022-08-13 06:20:12', '', '2022-08-13 06:59:43');
INSERT INTO `gen_table_column` VALUES (13, '2', 'institution_name', '被处罚时所在机构名称', 'varchar(255)', 'String', 'institutionName', '0', '0', '1', '1', '1', '1', NULL, 'LIKE', 'input', '', 6, 'admin', '2022-08-13 06:20:12', '', '2022-08-13 06:59:43');
INSERT INTO `gen_table_column` VALUES (14, '2', 'institutional_level', '被处罚时所在机构层级', 'int', 'Long', 'institutionalLevel', '0', '0', '1', '1', '1', NULL, NULL, 'EQ', 'select', 'institutional_level', 7, 'admin', '2022-08-13 06:20:12', '', '2022-08-13 06:59:43');
INSERT INTO `gen_table_column` VALUES (15, '2', 'department', '被处罚时所在机构部门', 'varchar(255)', 'String', 'department', '0', '0', '1', '1', '1', NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2022-08-13 06:20:12', '', '2022-08-13 06:59:43');
INSERT INTO `gen_table_column` VALUES (16, '2', 'post', '被处罚时岗位、职务', 'varchar(255)', 'String', 'post', '0', '0', '1', '1', '1', NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2022-08-13 06:20:12', '', '2022-08-13 06:59:43');
INSERT INTO `gen_table_column` VALUES (17, '2', 'qualifications', '是否具有理事、监事、高管任职资格', 'bit(1)', 'Integer', 'qualifications', '0', '0', '1', '1', '1', NULL, NULL, 'EQ', 'radio', '', 10, 'admin', '2022-08-13 06:20:12', '', '2022-08-13 06:59:43');
INSERT INTO `gen_table_column` VALUES (18, '2', 'file_no', '任职资格文件号', 'varchar(255)', 'String', 'fileNo', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2022-08-13 06:20:12', '', '2022-08-13 06:59:43');
INSERT INTO `gen_table_column` VALUES (19, '2', 'work_time', '任职时间', 'varchar(255)', 'String', 'workTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2022-08-13 06:20:12', '', '2022-08-13 06:59:43');
INSERT INTO `gen_table_column` VALUES (20, '2', 'fact', '违法违纪基本事实', 'varchar(2048)', 'String', 'fact', '0', '0', '1', '1', '1', NULL, NULL, 'EQ', 'textarea', '', 13, 'admin', '2022-08-13 06:20:12', '', '2022-08-13 06:59:43');
INSERT INTO `gen_table_column` VALUES (21, '2', 'basis', '处罚依据', 'varchar(2048)', 'String', 'basis', '0', '0', '1', '1', '1', NULL, NULL, 'EQ', 'textarea', '', 14, 'admin', '2022-08-13 06:20:12', '', '2022-08-13 06:59:43');
INSERT INTO `gen_table_column` VALUES (22, '3', 'id', 'ID', 'int', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-09-03 17:49:37', '', '2022-09-04 14:18:12');
INSERT INTO `gen_table_column` VALUES (23, '3', 'penalty_info_id', '处罚明细ID', 'int', 'Long', 'penaltyInfoId', '0', '0', '1', '1', NULL, NULL, NULL, 'EQ', 'input', '', 2, 'admin', '2022-09-03 17:49:37', '', '2022-09-04 14:18:12');
INSERT INTO `gen_table_column` VALUES (24, '3', 'penalty_type', '处罚类型', 'int', 'Long', 'penaltyType', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', '', 3, 'admin', '2022-09-03 17:49:37', '', '2022-09-04 14:18:12');
INSERT INTO `gen_table_column` VALUES (25, '3', 'penalty_data', '处罚子项', 'int', 'Long', 'penaltyData', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2022-09-03 17:49:37', '', '2022-09-04 14:18:12');
INSERT INTO `gen_table_column` VALUES (26, '3', 'penalty_time', '处罚时间', 'datetime', 'Date', 'penaltyTime', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'datetime', '', 5, 'admin', '2022-09-03 17:49:37', '', '2022-09-04 14:18:12');
INSERT INTO `gen_table_column` VALUES (27, '3', 'penalty_range', '时间长度', 'varchar(32)', 'String', 'penaltyRange', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 6, 'admin', '2022-09-03 17:49:37', '', '2022-09-04 14:18:12');
INSERT INTO `gen_table_column` VALUES (28, '3', 'penalty_ends', '结束时间', 'datetime', 'Date', 'penaltyEnds', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'datetime', '', 7, 'admin', '2022-09-03 17:49:37', '', '2022-09-04 14:18:12');
INSERT INTO `gen_table_column` VALUES (29, '3', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '1', NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2022-09-03 17:49:37', '', '2022-09-04 14:18:12');
INSERT INTO `gen_table_column` VALUES (30, '3', 'modify_time', '修改时间', 'datetime', 'Date', 'modifyTime', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2022-09-03 17:49:37', '', '2022-09-04 14:18:12');

-- ----------------------------
-- Table structure for penalty_information
-- ----------------------------
DROP TABLE IF EXISTS `penalty_information`;
CREATE TABLE `penalty_information`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `staff_id` int NOT NULL COMMENT '员工编号',
  `edcuation` int NOT NULL COMMENT '学历',
  `political_status` int NOT NULL COMMENT '政治面貌',
  `punishment_agency` int NOT NULL COMMENT '处罚机构',
  `institution_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '被处罚时所在机构名称',
  `institutional_level` int NOT NULL COMMENT '被处罚时所在机构层级',
  `department` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '被处罚时所在机构部门',
  `post` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '被处罚时岗位、职务',
  `qualifications` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否具有理事、监事、高管任职资格',
  `file_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '任职资格文件号',
  `work_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '任职时间',
  `fact` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '违法违纪基本事实',
  `basis` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '处罚依据',
  `user_id` int NOT NULL COMMENT '创建人',
  `dept_id` int NOT NULL COMMENT '创建机构',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '处罚信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of penalty_information
-- ----------------------------
INSERT INTO `penalty_information` VALUES (5, 5, 1, 1, 3, 'dddd', 2, 'ttttt', 'eeddd66', '0', NULL, NULL, 'hhhh11', 'kkkkk', 0, 0, NULL, '2022-09-03 16:31:24');
INSERT INTO `penalty_information` VALUES (6, 10, 0, 1, 5, '营业部', 3, '营业部', '客户经理', '1', '10086', '2021-2025', '领导是否健康绿色的姐夫克里斯蒂姐夫开了手机打开链接发到家哦IEu往日藕粉监考老师的讲课了附近的私哦副i哦微风努力肯定是姐夫来德克士姐夫了空加快立法的技术开发廉价的索科洛夫监控力度斯捷克洛夫圣诞节快乐放假哦为u肉i和法律手段姐夫离开', '为金融额外加入姐1夫离开都是姐夫来的是姐夫浪费了多少看姐夫龙神的姐夫快乐的u饿哦为i入额我i入房间里看书的房间里看到宋鄂无任何方式打开房间联社肯德基', 103, 203, NULL, '2022-09-03 15:42:50');
INSERT INTO `penalty_information` VALUES (7, 9, 2, 3, 1, '营业部', 2, '营业部', '员工', '0', NULL, NULL, '将斯库拉多夫反反复复反反复复反反复复', '史蒂夫看见了零2零落落零零落落零零落落零零落落零零落落零零落落零零落落', 103, 203, NULL, '2022-08-28 23:13:22');
INSERT INTO `penalty_information` VALUES (8, 7, 1, 1, 4, '官渡农合行', 3, '阿拉支行', '员工', '0', NULL, NULL, '肥嘟嘟的点点滴滴点点滴滴', '呃呃呃呃呃呃呃呃呃呃呃呃呃呃3', 102, 202, NULL, '2022-08-28 23:13:26');
INSERT INTO `penalty_information` VALUES (9, 4, 1, 1, 3, '111111111111', 2, '2222222222222222', '333333333333333', '1', '10254', '2021-2025', '4444444444444444', '445555555555555555555555', 1, 103, '2022-08-28 23:13:52', '2022-09-03 16:44:45');

-- ----------------------------
-- Table structure for penalty_list
-- ----------------------------
DROP TABLE IF EXISTS `penalty_list`;
CREATE TABLE `penalty_list`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `penalty_info_id` int NOT NULL COMMENT '处罚明细ID',
  `penalty_type` int NOT NULL COMMENT '处罚类型',
  `penalty_data` int NOT NULL COMMENT '处罚子项',
  `penalty_time` datetime NOT NULL COMMENT '处罚时间',
  `penalty_range` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '时间长度',
  `penalty_ends` datetime NOT NULL COMMENT '结束时间',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `modify_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '处罚类别明细表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of penalty_list
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob NULL COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `QRTZ_BLOB_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'Blob类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '日历信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `QRTZ_CRON_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'Cron类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint NOT NULL COMMENT '触发的时间',
  `sched_time` bigint NOT NULL COMMENT '定时器制定的时间',
  `priority` int NOT NULL COMMENT '优先级',
  `state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '状态',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '已触发的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务组名',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '任务详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '存储的悲观锁信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '暂停的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '调度器状态表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `QRTZ_SIMPLE_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '简单触发器的信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int NULL DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int NULL DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint NULL DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint NULL DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `QRTZ_SIMPROP_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '同步机制的行锁表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint NULL DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint NULL DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int NULL DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器的类型',
  `start_time` bigint NOT NULL COMMENT '开始时间',
  `end_time` bigint NULL DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint NULL DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `QRTZ_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '触发器详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for staff_info
-- ----------------------------
DROP TABLE IF EXISTS `staff_info`;
CREATE TABLE `staff_info`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '员工id',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '姓名',
  `sex` int NOT NULL COMMENT '性别',
  `id_card` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '身份证',
  `birthday` timestamp NOT NULL COMMENT '出生日期',
  `corp` int NOT NULL COMMENT '机构',
  `info_url` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '干部信息表url',
  `user_id` int NOT NULL COMMENT '创建者',
  `dept_id` int NOT NULL COMMENT '创建部门',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '员工信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of staff_info
-- ----------------------------
INSERT INTO `staff_info` VALUES (1, '张三', 0, '530111198512142312', '2013-08-13 00:00:00', 13, 'http://localhost:8080/epms/punishment/cover', 0, 0, NULL, NULL);
INSERT INTO `staff_info` VALUES (2, '二狗', 1, '531254524584525', '2018-08-06 00:00:00', 2, NULL, 0, 0, NULL, NULL);
INSERT INTO `staff_info` VALUES (3, '李建波', 0, '110223790813697', '2022-04-14 00:00:00', 0, NULL, 0, 0, NULL, NULL);
INSERT INTO `staff_info` VALUES (4, '崔秀芝', 1, '110225196403026127', '2009-08-12 00:00:00', 1, NULL, 0, 0, NULL, NULL);
INSERT INTO `staff_info` VALUES (5, '丁瑞', 0, '530111199709382729', '2011-08-08 00:00:00', 5, NULL, 0, 0, NULL, NULL);
INSERT INTO `staff_info` VALUES (6, '操蛋', 2, '5302229383938293828832', '2022-08-08 00:00:00', 15, NULL, 1, 103, '2022-08-24 13:12:12', '2022-08-24 13:13:35');
INSERT INTO `staff_info` VALUES (7, '菜狗', 1, '12345678909876', '2011-08-15 00:00:00', 1, NULL, 102, 202, '2022-08-24 13:23:03', NULL);
INSERT INTO `staff_info` VALUES (8, '我对你们的', 0, '47937489374983', '2014-08-05 00:00:00', 1, NULL, 102, 202, '2022-08-24 13:23:27', NULL);
INSERT INTO `staff_info` VALUES (9, '三狗', 0, '5302349494050599393', '2009-08-04 00:00:00', 15, NULL, 103, 203, '2022-08-25 12:35:18', NULL);
INSERT INTO `staff_info` VALUES (10, '四狗', 1, '530123458694038392', '2012-08-07 00:00:00', 15, NULL, 103, 203, '2022-08-25 12:35:44', NULL);

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2022-08-12 14:34:28', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2022-08-12 14:34:28', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2022-08-12 14:34:28', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'Y', 'admin', '2022-08-12 14:34:28', '', NULL, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2022-08-12 14:34:28', '', NULL, '是否开启注册用户功能（true开启，false关闭）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 204 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '昆明市联社', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-08-12 14:34:27', 'admin', '2022-08-24 04:39:13');
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '昆明市联社', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-08-12 14:34:27', 'admin', '2022-08-24 04:39:43');
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2022-08-12 14:34:27', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '市联社-内控合规部', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-08-12 14:34:27', 'admin', '2022-08-24 04:43:30');
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2022-08-12 14:34:27', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2022-08-12 14:34:27', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2022-08-12 14:34:27', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2022-08-12 14:34:27', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2022-08-12 14:34:27', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2022-08-12 14:34:27', '', NULL);
INSERT INTO `sys_dept` VALUES (200, 100, '0,100', '官渡农合行', 2, NULL, NULL, NULL, '0', '0', 'admin', '2022-08-24 04:40:16', '', NULL);
INSERT INTO `sys_dept` VALUES (201, 100, '0,100', '西山联社', 3, NULL, NULL, NULL, '0', '0', 'admin', '2022-08-24 04:40:29', '', NULL);
INSERT INTO `sys_dept` VALUES (202, 200, '0,100,200', '官渡-内控合规部', 0, NULL, NULL, NULL, '0', '0', 'admin', '2022-08-24 04:40:46', 'admin', '2022-08-24 04:43:42');
INSERT INTO `sys_dept` VALUES (203, 101, '0,100,101', '市联社-营业部', 2, NULL, NULL, NULL, '0', '0', 'admin', '2022-08-24 05:25:48', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 136 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2022-08-12 14:34:28', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2022-08-12 14:34:28', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2022-08-12 14:34:28', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2022-08-12 14:34:28', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2022-08-12 14:34:28', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2022-08-12 14:34:28', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2022-08-12 14:34:28', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2022-08-12 14:34:28', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2022-08-12 14:34:28', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2022-08-12 14:34:28', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2022-08-12 14:34:28', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2022-08-12 14:34:28', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2022-08-12 14:34:28', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2022-08-12 14:34:28', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2022-08-12 14:34:28', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2022-08-12 14:34:28', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2022-08-12 14:34:28', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-08-12 14:34:28', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (19, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-08-12 14:34:28', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (20, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-08-12 14:34:28', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (21, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2022-08-12 14:34:28', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (22, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-08-12 14:34:28', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (23, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-08-12 14:34:28', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (24, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-08-12 14:34:28', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (25, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-08-12 14:34:28', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (26, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-08-12 14:34:28', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (27, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2022-08-12 14:34:28', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (28, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2022-08-12 14:34:28', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (100, 0, '市联社', '0', 'corp_name', NULL, NULL, 'N', '0', 'admin', '2022-08-12 15:27:46', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (101, 1, '官渡农合行', '1', 'corp_name', NULL, NULL, 'N', '0', 'admin', '2022-08-12 15:28:01', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (102, 2, '西山联社', '2', 'corp_name', NULL, NULL, 'N', '0', 'admin', '2022-08-12 15:28:14', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (103, 3, '五华联社', '3', 'corp_name', NULL, NULL, 'N', '0', 'admin', '2022-08-12 15:28:29', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (104, 4, '盘龙联社', '4', 'corp_name', NULL, NULL, 'N', '0', 'admin', '2022-08-12 15:28:40', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (105, 5, '安宁联社', '5', 'corp_name', NULL, NULL, 'N', '0', 'admin', '2022-08-12 15:28:49', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (106, 6, '呈贡联社', '6', 'corp_name', NULL, NULL, 'N', '0', 'admin', '2022-08-12 15:29:01', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (107, 7, '晋宁联社', '7', 'corp_name', NULL, NULL, 'N', '0', 'admin', '2022-08-12 15:29:13', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (108, 8, '宜良联社', '8', 'corp_name', NULL, NULL, 'N', '0', 'admin', '2022-08-12 15:29:24', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (109, 9, '石林联社', '9', 'corp_name', NULL, NULL, 'N', '0', 'admin', '2022-08-12 15:29:41', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (110, 10, '嵩明农商行', '10', 'corp_name', NULL, NULL, 'N', '0', 'admin', '2022-08-12 15:29:54', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (111, 11, '禄劝联社', '11', 'corp_name', NULL, NULL, 'N', '0', 'admin', '2022-08-12 15:30:05', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (112, 12, '富民联社', '12', 'corp_name', NULL, NULL, 'N', '0', 'admin', '2022-08-12 15:30:15', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (113, 13, '东川联社', '13', 'corp_name', NULL, NULL, 'N', '0', 'admin', '2022-08-12 15:30:27', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (114, 14, '寻甸农商行', '14', 'corp_name', NULL, NULL, 'N', '0', 'admin', '2022-08-12 15:30:39', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (115, 15, '市联社营业部', '15', 'corp_name', NULL, NULL, 'N', '0', 'admin', '2022-08-12 15:30:51', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (116, 0, '中共党员', '0', 'political_status', NULL, 'default', 'N', '0', 'admin', '2022-08-13 06:24:50', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (117, 1, '共青团员', '1', 'political_status', NULL, 'default', 'N', '0', 'admin', '2022-08-13 06:25:09', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (118, 2, '民主党派', '2', 'political_status', NULL, 'default', 'N', '0', 'admin', '2022-08-13 06:25:23', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (119, 3, '群众', '3', 'political_status', NULL, 'default', 'N', '0', 'admin', '2022-08-13 06:25:41', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (120, 0, '公安', '0', 'punishment_agency', NULL, 'default', 'N', '0', 'admin', '2022-08-13 06:30:10', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (121, 1, '法院', '1', 'punishment_agency', NULL, 'default', 'N', '0', 'admin', '2022-08-13 06:30:23', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (122, 2, '检察院', '2', 'punishment_agency', NULL, 'default', 'N', '0', 'admin', '2022-08-13 06:30:34', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (123, 3, '人民银行', '3', 'punishment_agency', NULL, 'default', 'N', '0', 'admin', '2022-08-13 06:30:47', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (124, 4, '银保监', '4', 'punishment_agency', NULL, 'default', 'N', '0', 'admin', '2022-08-13 06:31:03', 'admin', '2022-08-13 06:33:40', NULL);
INSERT INTO `sys_dict_data` VALUES (125, 5, '外管局', '5', 'punishment_agency', NULL, 'default', 'N', '0', 'admin', '2022-08-13 06:33:57', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (126, 6, '本机构', '6', 'punishment_agency', NULL, 'default', 'N', '0', 'admin', '2022-08-13 06:34:14', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (127, 7, '劳务派遣公司', '7', 'punishment_agency', NULL, 'default', 'N', '0', 'admin', '2022-08-13 06:34:33', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (128, 0, '省级', '0', 'institutional_level', NULL, 'default', 'N', '0', 'admin', '2022-08-13 06:38:03', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (129, 1, '市级', '1', 'institutional_level', NULL, 'default', 'N', '0', 'admin', '2022-08-13 06:38:15', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (130, 2, '县级', '2', 'institutional_level', NULL, 'default', 'N', '0', 'admin', '2022-08-13 06:38:44', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (131, 3, '支行', '3', 'institutional_level', NULL, 'default', 'N', '0', 'admin', '2022-08-13 06:39:16', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (132, 3, '分社', '4', 'institutional_level', NULL, 'default', 'N', '0', 'admin', '2022-08-13 06:39:28', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (133, 0, '研究生及以上', '0', 'user_education', NULL, 'default', 'N', '0', 'admin', '2022-08-13 06:41:15', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (134, 1, '本科', '1', 'user_education', NULL, 'default', 'N', '0', 'admin', '2022-08-13 06:41:22', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (135, 2, '大专及以下', '2', 'user_education', NULL, 'default', 'N', '0', 'admin', '2022-08-13 06:41:34', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 105 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2022-08-12 14:34:28', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2022-08-12 14:34:28', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2022-08-12 14:34:28', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2022-08-12 14:34:28', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2022-08-12 14:34:28', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2022-08-12 14:34:28', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2022-08-12 14:34:28', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2022-08-12 14:34:28', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2022-08-12 14:34:28', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2022-08-12 14:34:28', '', NULL, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (100, '机构名称', 'corp_name', '0', 'admin', '2022-08-12 15:26:19', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (101, '政治面貌', 'political_status', '0', 'admin', '2022-08-13 06:24:17', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (102, '处罚机构', 'punishment_agency', '0', 'admin', '2022-08-13 06:27:16', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (103, '机构层级', 'institutional_level', '0', 'admin', '2022-08-13 06:37:18', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (104, '学历', 'user_education', '0', 'admin', '2022-08-13 06:40:56', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2022-08-12 14:34:28', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2022-08-12 14:34:28', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2022-08-12 14:34:28', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 165 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Safari', 'Mac OS X', '0', '登录成功', '2022-08-12 15:12:08');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-08-12 15:14:16');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Safari', 'Mac OS X', '0', '登录成功', '2022-08-12 16:35:06');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码错误', '2022-08-12 16:38:55');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-08-12 16:38:58');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Safari', 'Mac OS X', '1', '验证码错误', '2022-08-12 17:13:05');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Safari', 'Mac OS X', '0', '登录成功', '2022-08-12 17:13:10');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-08-13 05:12:48');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-08-13 07:38:24');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-08-13 08:54:24');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-08-15 01:31:18');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-08-15 13:58:05');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-08-16 04:54:39');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-08-16 10:56:30');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '退出成功', '2022-08-16 11:22:08');
INSERT INTO `sys_logininfor` VALUES (115, 'cs01', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '登录用户：cs01 不存在', '2022-08-16 11:22:17');
INSERT INTO `sys_logininfor` VALUES (116, '测试用户', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '登录用户：测试用户 不存在', '2022-08-16 11:22:31');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-08-16 11:22:44');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '退出成功', '2022-08-16 11:23:37');
INSERT INTO `sys_logininfor` VALUES (119, 'cs01', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-08-16 11:23:49');
INSERT INTO `sys_logininfor` VALUES (120, 'cs01', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '退出成功', '2022-08-16 11:24:44');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码已失效', '2022-08-22 04:17:35');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-08-22 04:17:42');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-08-23 04:35:45');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-08-23 05:38:54');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-08-24 04:36:31');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '退出成功', '2022-08-24 04:44:11');
INSERT INTO `sys_logininfor` VALUES (127, 'gd01', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '密码输入错误1次', '2022-08-24 04:44:20');
INSERT INTO `sys_logininfor` VALUES (128, 'gd01', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '用户不存在/密码错误', '2022-08-24 04:44:20');
INSERT INTO `sys_logininfor` VALUES (129, 'gd01', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-08-24 04:44:34');
INSERT INTO `sys_logininfor` VALUES (130, 'gd01', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '退出成功', '2022-08-24 04:44:47');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-08-24 04:44:51');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '退出成功', '2022-08-24 05:22:04');
INSERT INTO `sys_logininfor` VALUES (133, 'gd01', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '密码输入错误1次', '2022-08-24 05:22:11');
INSERT INTO `sys_logininfor` VALUES (134, 'gd01', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '用户不存在/密码错误', '2022-08-24 05:22:11');
INSERT INTO `sys_logininfor` VALUES (135, 'gd01', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '验证码错误', '2022-08-24 05:22:13');
INSERT INTO `sys_logininfor` VALUES (136, 'gd01', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-08-24 05:22:20');
INSERT INTO `sys_logininfor` VALUES (137, 'gd01', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '退出成功', '2022-08-24 05:23:39');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-08-24 05:23:44');
INSERT INTO `sys_logininfor` VALUES (139, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '退出成功', '2022-08-24 05:26:46');
INSERT INTO `sys_logininfor` VALUES (140, 'yyb01', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '登录用户：yyb01 不存在', '2022-08-24 05:26:57');
INSERT INTO `sys_logininfor` VALUES (141, 'yyb', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '1', '登录用户：yyb 不存在', '2022-08-24 05:27:08');
INSERT INTO `sys_logininfor` VALUES (142, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-08-24 05:27:14');
INSERT INTO `sys_logininfor` VALUES (143, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '退出成功', '2022-08-24 05:27:32');
INSERT INTO `sys_logininfor` VALUES (144, '营业部', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-08-24 05:27:44');
INSERT INTO `sys_logininfor` VALUES (145, '营业部', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '退出成功', '2022-08-24 05:27:53');
INSERT INTO `sys_logininfor` VALUES (146, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-08-24 05:27:56');
INSERT INTO `sys_logininfor` VALUES (147, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '退出成功', '2022-08-24 05:28:19');
INSERT INTO `sys_logininfor` VALUES (148, '营业部', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-08-24 05:28:30');
INSERT INTO `sys_logininfor` VALUES (149, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-08-25 04:17:52');
INSERT INTO `sys_logininfor` VALUES (150, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '退出成功', '2022-08-25 04:34:27');
INSERT INTO `sys_logininfor` VALUES (151, '营业部', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-08-25 04:34:40');
INSERT INTO `sys_logininfor` VALUES (152, '营业部', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '退出成功', '2022-08-25 04:38:37');
INSERT INTO `sys_logininfor` VALUES (153, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-08-25 04:38:41');
INSERT INTO `sys_logininfor` VALUES (154, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '退出成功', '2022-08-25 04:38:50');
INSERT INTO `sys_logininfor` VALUES (155, 'gd01', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-08-25 04:39:02');
INSERT INTO `sys_logininfor` VALUES (156, 'gd01', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '退出成功', '2022-08-25 04:39:59');
INSERT INTO `sys_logininfor` VALUES (157, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-08-25 04:40:06');
INSERT INTO `sys_logininfor` VALUES (158, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-08-25 05:19:04');
INSERT INTO `sys_logininfor` VALUES (159, '营业部', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-08-28 22:19:10');
INSERT INTO `sys_logininfor` VALUES (160, '营业部', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-28 22:19:14');
INSERT INTO `sys_logininfor` VALUES (161, '营业部', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-08-28 22:19:33');
INSERT INTO `sys_logininfor` VALUES (162, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-28 22:19:40');
INSERT INTO `sys_logininfor` VALUES (163, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-09-03 15:34:20');
INSERT INTO `sys_logininfor` VALUES (164, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-09-04 14:10:01');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '路由参数',
  `is_frame` int NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2025 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, 'system', NULL, '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2022-08-12 14:34:27', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, 'monitor', NULL, '', 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2022-08-12 14:34:27', '', NULL, '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, 'tool', NULL, '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2022-08-12 14:34:27', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, '若依官网', 0, 4, 'http://ruoyi.vip', NULL, '', 0, 0, 'M', '1', '1', '', 'guide', 'admin', '2022-08-12 14:34:27', 'admin', '2022-08-12 15:43:29', '若依官网地址');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2022-08-12 14:34:27', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2022-08-12 14:34:27', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2022-08-12 14:34:27', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2022-08-12 14:34:27', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2022-08-12 14:34:27', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2022-08-12 14:34:27', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2022-08-12 14:34:27', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2022-08-12 14:34:27', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2022-08-12 14:34:27', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2022-08-12 14:34:27', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2022-08-12 14:34:27', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2022-08-12 14:34:27', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2022-08-12 14:34:27', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2022-08-12 14:34:27', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '缓存列表', 2, 6, 'cacheList', 'monitor/cache/list', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2022-08-12 14:34:27', '', NULL, '缓存列表菜单');
INSERT INTO `sys_menu` VALUES (115, '表单构建', 3, 1, 'build', 'tool/build/index', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2022-08-12 14:34:27', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (116, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2022-08-12 14:34:27', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (117, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2022-08-12 14:34:27', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2022-08-12 14:34:27', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2022-08-12 14:34:27', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '日志导出', 500, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '登录查询', 501, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录删除', 501, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '日志导出', 501, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '账户解锁', 501, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 6, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 115, 1, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 115, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 115, 3, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 115, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 115, 4, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 115, 5, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2000, '员工处罚管理', 0, 5, 'staff', NULL, NULL, 1, 0, 'M', '0', '0', NULL, 'peoples', 'admin', '2022-08-12 15:43:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2013, '员工信息管理', 2000, 1, 'staffInfo', 'epms/staffInfo/index', NULL, 1, 0, 'C', '0', '0', 'epms:staffInfo:list', '#', 'admin', '2022-08-12 16:31:03', '', NULL, '员工信息管理菜单');
INSERT INTO `sys_menu` VALUES (2014, '员工信息管理查询', 2013, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'epms:staffInfo:query', '#', 'admin', '2022-08-12 16:31:03', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2015, '员工信息管理新增', 2013, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'epms:staffInfo:add', '#', 'admin', '2022-08-12 16:31:03', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2016, '员工信息管理修改', 2013, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'epms:staffInfo:edit', '#', 'admin', '2022-08-12 16:31:03', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2017, '员工信息管理删除', 2013, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'epms:staffInfo:remove', '#', 'admin', '2022-08-12 16:31:03', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2018, '员工信息管理导出', 2013, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'epms:staffInfo:export', '#', 'admin', '2022-08-12 16:31:03', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2019, '处罚信息', 2000, 1, 'punishment', 'epms/punishment/index', NULL, 1, 0, 'C', '0', '0', 'epms:punishment:list', '#', 'admin', '2022-08-13 06:48:12', '', NULL, '处罚信息菜单');
INSERT INTO `sys_menu` VALUES (2020, '处罚信息查询', 2019, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'epms:punishment:query', '#', 'admin', '2022-08-13 06:48:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2021, '处罚信息新增', 2019, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'epms:punishment:add', '#', 'admin', '2022-08-13 06:48:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2022, '处罚信息修改', 2019, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'epms:punishment:edit', '#', 'admin', '2022-08-13 06:48:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2023, '处罚信息删除', 2019, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'epms:punishment:remove', '#', 'admin', '2022-08-13 06:48:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2024, '处罚信息导出', 2019, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'epms:punishment:export', '#', 'admin', '2022-08-13 06:48:12', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2022-08-12 14:34:28', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2022-08-12 14:34:28', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 305 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '\"staff_info\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-12 15:25:13');
INSERT INTO `sys_oper_log` VALUES (101, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"机构名称\",\"dictType\":\"corp_name\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-12 15:26:19');
INSERT INTO `sys_oper_log` VALUES (102, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"市联社\",\"dictSort\":0,\"dictType\":\"corp_name\",\"dictValue\":\"0\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-12 15:27:46');
INSERT INTO `sys_oper_log` VALUES (103, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"官渡农合行\",\"dictSort\":1,\"dictType\":\"corp_name\",\"dictValue\":\"1\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-12 15:28:01');
INSERT INTO `sys_oper_log` VALUES (104, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"西山联社\",\"dictSort\":2,\"dictType\":\"corp_name\",\"dictValue\":\"2\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-12 15:28:14');
INSERT INTO `sys_oper_log` VALUES (105, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"五华联社\",\"dictSort\":3,\"dictType\":\"corp_name\",\"dictValue\":\"3\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-12 15:28:29');
INSERT INTO `sys_oper_log` VALUES (106, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"盘龙联社\",\"dictSort\":4,\"dictType\":\"corp_name\",\"dictValue\":\"4\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-12 15:28:40');
INSERT INTO `sys_oper_log` VALUES (107, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"安宁联社\",\"dictSort\":5,\"dictType\":\"corp_name\",\"dictValue\":\"5\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-12 15:28:49');
INSERT INTO `sys_oper_log` VALUES (108, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"呈贡联社\",\"dictSort\":6,\"dictType\":\"corp_name\",\"dictValue\":\"6\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-12 15:29:01');
INSERT INTO `sys_oper_log` VALUES (109, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"晋宁联社\",\"dictSort\":7,\"dictType\":\"corp_name\",\"dictValue\":\"7\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-12 15:29:13');
INSERT INTO `sys_oper_log` VALUES (110, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"宜良联社\",\"dictSort\":8,\"dictType\":\"corp_name\",\"dictValue\":\"8\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-12 15:29:24');
INSERT INTO `sys_oper_log` VALUES (111, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"石林联社\",\"dictSort\":9,\"dictType\":\"corp_name\",\"dictValue\":\"9\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-12 15:29:41');
INSERT INTO `sys_oper_log` VALUES (112, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"嵩明农商行\",\"dictSort\":10,\"dictType\":\"corp_name\",\"dictValue\":\"10\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-12 15:29:54');
INSERT INTO `sys_oper_log` VALUES (113, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"禄劝联社\",\"dictSort\":11,\"dictType\":\"corp_name\",\"dictValue\":\"11\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-12 15:30:05');
INSERT INTO `sys_oper_log` VALUES (114, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"富民联社\",\"dictSort\":12,\"dictType\":\"corp_name\",\"dictValue\":\"12\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-12 15:30:15');
INSERT INTO `sys_oper_log` VALUES (115, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"东川联社\",\"dictSort\":13,\"dictType\":\"corp_name\",\"dictValue\":\"13\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-12 15:30:27');
INSERT INTO `sys_oper_log` VALUES (116, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"寻甸农商行\",\"dictSort\":14,\"dictType\":\"corp_name\",\"dictValue\":\"14\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-12 15:30:39');
INSERT INTO `sys_oper_log` VALUES (117, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"市联社营业部\",\"dictSort\":15,\"dictType\":\"corp_name\",\"dictValue\":\"15\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-12 15:30:51');
INSERT INTO `sys_oper_log` VALUES (118, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"peoples\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"员工处罚管理\",\"menuType\":\"M\",\"orderNum\":5,\"params\":{},\"parentId\":0,\"path\":\"staff\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-12 15:43:18');
INSERT INTO `sys_oper_log` VALUES (119, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2022-08-12 14:34:27\",\"icon\":\"guide\",\"isCache\":\"0\",\"isFrame\":\"0\",\"menuId\":4,\"menuName\":\"若依官网\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"http://ruoyi.vip\",\"perms\":\"\",\"query\":\"\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-12 15:43:29');
INSERT INTO `sys_oper_log` VALUES (120, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"staff-info\",\"className\":\"StaffInfo\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"员工id\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2022-08-12 15:25:13\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isEdit\":\"0\",\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isList\":\"0\",\"isPk\":\"1\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":2,\"columnName\":\"name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2022-08-12 15:25:13\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Sex\",\"columnComment\":\"性别\",\"columnId\":3,\"columnName\":\"sex\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2022-08-12 15:25:13\",\"dictType\":\"sys_user_sex\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"sex\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"IdCard\",\"columnComment\":\"身份证\",\"columnId\":4,\"columnName\":\"id_card\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2022-08-12 15:25:13\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"ja', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-12 15:45:20');
INSERT INTO `sys_oper_log` VALUES (121, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"staff-info\",\"className\":\"StaffInfo\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"员工id\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2022-08-12 15:25:13\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isEdit\":\"0\",\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isList\":\"0\",\"isPk\":\"1\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2022-08-12 15:45:20\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":2,\"columnName\":\"name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2022-08-12 15:25:13\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2022-08-12 15:45:20\",\"usableColumn\":false},{\"capJavaField\":\"Sex\",\"columnComment\":\"性别\",\"columnId\":3,\"columnName\":\"sex\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2022-08-12 15:25:13\",\"dictType\":\"sys_user_sex\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"sex\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2022-08-12 15:45:20\",\"usableColumn\":false},{\"capJavaField\":\"IdCard\",\"columnComment\":\"身份证\",\"columnId\":4,\"columnName\":\"id_card\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2022-08-12 15:25:13\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-12 15:45:49');
INSERT INTO `sys_oper_log` VALUES (122, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-08-12 15:45:53');
INSERT INTO `sys_oper_log` VALUES (123, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"staff_info\",\"className\":\"StaffInfo\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"员工id\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2022-08-12 15:25:13\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isEdit\":\"0\",\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isList\":\"0\",\"isPk\":\"1\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2022-08-12 15:45:49\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":2,\"columnName\":\"name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2022-08-12 15:25:13\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2022-08-12 15:45:49\",\"usableColumn\":false},{\"capJavaField\":\"Sex\",\"columnComment\":\"性别\",\"columnId\":3,\"columnName\":\"sex\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2022-08-12 15:25:13\",\"dictType\":\"sys_user_sex\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"sex\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2022-08-12 15:45:49\",\"usableColumn\":false},{\"capJavaField\":\"IdCard\",\"columnComment\":\"身份证\",\"columnId\":4,\"columnName\":\"id_card\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2022-08-12 15:25:13\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-12 15:53:18');
INSERT INTO `sys_oper_log` VALUES (124, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"staff_info\",\"className\":\"StaffInfo\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"员工id\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2022-08-12 15:25:13\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isEdit\":\"0\",\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isList\":\"0\",\"isPk\":\"1\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2022-08-12 15:53:18\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":2,\"columnName\":\"name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2022-08-12 15:25:13\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2022-08-12 15:53:18\",\"usableColumn\":false},{\"capJavaField\":\"Sex\",\"columnComment\":\"性别\",\"columnId\":3,\"columnName\":\"sex\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2022-08-12 15:25:13\",\"dictType\":\"sys_user_sex\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"sex\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2022-08-12 15:53:18\",\"usableColumn\":false},{\"capJavaField\":\"IdCard\",\"columnComment\":\"身份证\",\"columnId\":4,\"columnName\":\"id_card\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2022-08-12 15:25:13\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-12 15:53:29');
INSERT INTO `sys_oper_log` VALUES (125, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2001', '127.0.0.1', '内网IP', '{menuId=2001}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":500}', 0, NULL, '2022-08-12 15:53:42');
INSERT INTO `sys_oper_log` VALUES (126, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2002', '127.0.0.1', '内网IP', '{menuId=2002}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-12 15:53:49');
INSERT INTO `sys_oper_log` VALUES (127, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2003', '127.0.0.1', '内网IP', '{menuId=2003}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-12 15:53:51');
INSERT INTO `sys_oper_log` VALUES (128, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2004', '127.0.0.1', '内网IP', '{menuId=2004}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-12 15:53:53');
INSERT INTO `sys_oper_log` VALUES (129, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2005', '127.0.0.1', '内网IP', '{menuId=2005}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-12 15:53:54');
INSERT INTO `sys_oper_log` VALUES (130, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2006', '127.0.0.1', '内网IP', '{menuId=2006}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-12 15:53:57');
INSERT INTO `sys_oper_log` VALUES (131, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2001', '127.0.0.1', '内网IP', '{menuId=2001}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-12 15:53:59');
INSERT INTO `sys_oper_log` VALUES (132, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"staff_info\",\"className\":\"StaffInfo\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"员工id\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2022-08-12 15:25:13\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isEdit\":\"0\",\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isList\":\"0\",\"isPk\":\"1\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2022-08-12 15:53:29\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":2,\"columnName\":\"name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2022-08-12 15:25:13\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2022-08-12 15:53:29\",\"usableColumn\":false},{\"capJavaField\":\"Sex\",\"columnComment\":\"性别\",\"columnId\":3,\"columnName\":\"sex\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2022-08-12 15:25:13\",\"dictType\":\"sys_user_sex\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"sex\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2022-08-12 15:53:29\",\"usableColumn\":false},{\"capJavaField\":\"IdCard\",\"columnComment\":\"身份证\",\"columnId\":4,\"columnName\":\"id_card\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2022-08-12 15:25:13\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-12 15:54:18');
INSERT INTO `sys_oper_log` VALUES (133, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-08-12 15:54:32');
INSERT INTO `sys_oper_log` VALUES (134, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"staffInfo\",\"className\":\"StaffInfo\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"员工id\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2022-08-12 15:25:13\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isEdit\":\"0\",\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isList\":\"0\",\"isPk\":\"1\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2022-08-12 15:54:17\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":2,\"columnName\":\"name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2022-08-12 15:25:13\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2022-08-12 15:54:17\",\"usableColumn\":false},{\"capJavaField\":\"Sex\",\"columnComment\":\"性别\",\"columnId\":3,\"columnName\":\"sex\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2022-08-12 15:25:13\",\"dictType\":\"sys_user_sex\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"sex\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2022-08-12 15:54:17\",\"usableColumn\":false},{\"capJavaField\":\"IdCard\",\"columnComment\":\"身份证\",\"columnId\":4,\"columnName\":\"id_card\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2022-08-12 15:25:13\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-12 15:57:53');
INSERT INTO `sys_oper_log` VALUES (135, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-08-12 15:58:09');
INSERT INTO `sys_oper_log` VALUES (136, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-epms/staffInfo/index\",\"createTime\":\"2022-08-12 16:02:25\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2007,\"menuName\":\"员工信息\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"ruoyi-epms\",\"perms\":\"ruoyi-epms:staffInfo:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-12 16:08:42');
INSERT INTO `sys_oper_log` VALUES (137, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-epms/staffInfo/index\",\"createTime\":\"2022-08-12 16:02:25\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2007,\"menuName\":\"员工信息\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"ruoyi-epms\",\"perms\":\"ruoyi-epms:staffInfo:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-12 16:10:16');
INSERT INTO `sys_oper_log` VALUES (138, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2012', '127.0.0.1', '内网IP', '{menuId=2012}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-12 16:27:24');
INSERT INTO `sys_oper_log` VALUES (139, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2011', '127.0.0.1', '内网IP', '{menuId=2011}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-12 16:27:26');
INSERT INTO `sys_oper_log` VALUES (140, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2010', '127.0.0.1', '内网IP', '{menuId=2010}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-12 16:27:28');
INSERT INTO `sys_oper_log` VALUES (141, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2009', '127.0.0.1', '内网IP', '{menuId=2009}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-12 16:27:29');
INSERT INTO `sys_oper_log` VALUES (142, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2008', '127.0.0.1', '内网IP', '{menuId=2008}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-12 16:27:32');
INSERT INTO `sys_oper_log` VALUES (143, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2007', '127.0.0.1', '内网IP', '{menuId=2007}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-12 16:27:34');
INSERT INTO `sys_oper_log` VALUES (144, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"staffInfo\",\"className\":\"StaffInfo\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"员工id\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2022-08-12 15:25:13\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isEdit\":\"0\",\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isList\":\"0\",\"isPk\":\"1\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2022-08-12 15:57:53\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":2,\"columnName\":\"name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2022-08-12 15:25:13\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2022-08-12 15:57:53\",\"usableColumn\":false},{\"capJavaField\":\"Sex\",\"columnComment\":\"性别\",\"columnId\":3,\"columnName\":\"sex\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2022-08-12 15:25:13\",\"dictType\":\"sys_user_sex\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"sex\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2022-08-12 15:57:53\",\"usableColumn\":false},{\"capJavaField\":\"IdCard\",\"columnComment\":\"身份证\",\"columnId\":4,\"columnName\":\"id_card\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2022-08-12 15:25:13\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-12 16:29:16');
INSERT INTO `sys_oper_log` VALUES (145, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-08-12 16:29:28');
INSERT INTO `sys_oper_log` VALUES (146, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"staffInfo\",\"className\":\"StaffInfo\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"员工id\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2022-08-12 15:25:13\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isEdit\":\"0\",\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isList\":\"0\",\"isPk\":\"1\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2022-08-12 16:29:16\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":2,\"columnName\":\"name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2022-08-12 15:25:13\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2022-08-12 16:29:16\",\"usableColumn\":false},{\"capJavaField\":\"Sex\",\"columnComment\":\"性别\",\"columnId\":3,\"columnName\":\"sex\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2022-08-12 15:25:13\",\"dictType\":\"sys_user_sex\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"sex\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2022-08-12 16:29:16\",\"usableColumn\":false},{\"capJavaField\":\"IdCard\",\"columnComment\":\"身份证\",\"columnId\":4,\"columnName\":\"id_card\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2022-08-12 15:25:13\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-13 05:13:17');
INSERT INTO `sys_oper_log` VALUES (147, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-08-13 05:13:20');
INSERT INTO `sys_oper_log` VALUES (148, '员工信息管理', 1, 'com.ruoyi.epms.controller.StaffInfoController.add()', 'POST', 1, 'admin', NULL, '/epms/staffInfo', '127.0.0.1', '内网IP', '{\"birthday\":\"2013-08-13 00:00:00\",\"corp\":13,\"id\":1,\"idCard\":\"530111198512142312\",\"name\":\"张三\",\"params\":{},\"sex\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-13 05:17:27');
INSERT INTO `sys_oper_log` VALUES (149, '员工信息管理', 1, 'com.ruoyi.epms.controller.StaffInfoController.add()', 'POST', 1, 'admin', NULL, '/epms/staffInfo', '127.0.0.1', '内网IP', '{\"birthday\":\"2018-08-06 00:00:00\",\"corp\":2,\"id\":2,\"idCard\":\"531254524584525\",\"name\":\"二狗\",\"params\":{},\"sex\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-13 05:17:56');
INSERT INTO `sys_oper_log` VALUES (150, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"staffInfo\",\"className\":\"StaffInfo\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"员工id\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2022-08-12 15:25:13\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isEdit\":\"0\",\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2022-08-13 05:13:17\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":2,\"columnName\":\"name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2022-08-12 15:25:13\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2022-08-13 05:13:17\",\"usableColumn\":false},{\"capJavaField\":\"Sex\",\"columnComment\":\"性别\",\"columnId\":3,\"columnName\":\"sex\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2022-08-12 15:25:13\",\"dictType\":\"sys_user_sex\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"sex\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2022-08-13 05:13:17\",\"usableColumn\":false},{\"capJavaField\":\"IdCard\",\"columnComment\":\"身份证\",\"columnId\":4,\"columnName\":\"id_card\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2022-08-12 15:25:13\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-13 05:19:07');
INSERT INTO `sys_oper_log` VALUES (151, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"staffInfo\",\"className\":\"StaffInfo\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"员工id\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2022-08-12 15:25:13\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"1\",\"isPk\":\"1\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2022-08-13 05:19:07\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":2,\"columnName\":\"name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2022-08-12 15:25:13\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2022-08-13 05:19:07\",\"usableColumn\":false},{\"capJavaField\":\"Sex\",\"columnComment\":\"性别\",\"columnId\":3,\"columnName\":\"sex\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2022-08-12 15:25:13\",\"dictType\":\"sys_user_sex\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"sex\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2022-08-13 05:19:07\",\"usableColumn\":false},{\"capJavaField\":\"IdCard\",\"columnComment\":\"身份证\",\"columnId\":4,\"columnName\":\"id_card\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2022-08-12 15:25:13\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-13 05:19:48');
INSERT INTO `sys_oper_log` VALUES (152, '员工信息管理', 5, 'com.ruoyi.epms.controller.StaffInfoController.export()', 'POST', 1, 'admin', NULL, '/epms/staffInfo/export', '127.0.0.1', '内网IP', '{\"params\":{}}', NULL, 0, NULL, '2022-08-13 05:25:26');
INSERT INTO `sys_oper_log` VALUES (153, '员工信息管理', 2, 'com.ruoyi.epms.controller.StaffInfoController.edit()', 'PUT', 1, 'admin', NULL, '/epms/staffInfo', '127.0.0.1', '内网IP', '{\"birthday\":\"2013-08-13 00:00:00\",\"corp\":13,\"id\":1,\"idCard\":\"530111198512142312\",\"infoUrl\":\"\",\"name\":\"张三\",\"params\":{},\"sex\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-13 05:55:41');
INSERT INTO `sys_oper_log` VALUES (154, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '\"penalty_information\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-13 06:20:12');
INSERT INTO `sys_oper_log` VALUES (155, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"information\",\"className\":\"PenaltyInformation\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"编号\",\"columnId\":8,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2022-08-13 06:20:12\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"StaffId\",\"columnComment\":\"员工编号\",\"columnId\":9,\"columnName\":\"staff_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2022-08-13 06:20:12\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"staffId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Edcuation\",\"columnComment\":\"学历\",\"columnId\":10,\"columnName\":\"edcuation\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2022-08-13 06:20:12\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isRequired\":\"1\",\"javaField\":\"edcuation\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"PoliticalStatus\",\"columnComment\":\"政治面貌\",\"columnId\":11,\"columnName\":\"political_status\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2022-08-13 06:20:12\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"radio\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isRequired\":\"1\",\"javaField\":\"politicalStatus\",\"javaType\":\"Long\",\"list\":true,\"pa', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-13 06:22:50');
INSERT INTO `sys_oper_log` VALUES (156, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"政治面貌\",\"dictType\":\"political_status\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-13 06:24:17');
INSERT INTO `sys_oper_log` VALUES (157, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"中共党员\",\"dictSort\":0,\"dictType\":\"political_status\",\"dictValue\":\"0\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-13 06:24:50');
INSERT INTO `sys_oper_log` VALUES (158, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"共青团员\",\"dictSort\":1,\"dictType\":\"political_status\",\"dictValue\":\"1\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-13 06:25:09');
INSERT INTO `sys_oper_log` VALUES (159, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"民主党派\",\"dictSort\":2,\"dictType\":\"political_status\",\"dictValue\":\"2\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-13 06:25:23');
INSERT INTO `sys_oper_log` VALUES (160, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"群众\",\"dictSort\":3,\"dictType\":\"political_status\",\"dictValue\":\"3\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-13 06:25:41');
INSERT INTO `sys_oper_log` VALUES (161, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"处罚机构\",\"dictType\":\"punishment_agency\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-13 06:27:16');
INSERT INTO `sys_oper_log` VALUES (162, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"公安\",\"dictSort\":0,\"dictType\":\"punishment_agency\",\"dictValue\":\"0\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-13 06:30:10');
INSERT INTO `sys_oper_log` VALUES (163, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"法院\",\"dictSort\":1,\"dictType\":\"punishment_agency\",\"dictValue\":\"1\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-13 06:30:24');
INSERT INTO `sys_oper_log` VALUES (164, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"检察院\",\"dictSort\":2,\"dictType\":\"punishment_agency\",\"dictValue\":\"2\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-13 06:30:35');
INSERT INTO `sys_oper_log` VALUES (165, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"人民银行\",\"dictSort\":3,\"dictType\":\"punishment_agency\",\"dictValue\":\"3\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-13 06:30:47');
INSERT INTO `sys_oper_log` VALUES (166, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"银监会\",\"dictSort\":4,\"dictType\":\"punishment_agency\",\"dictValue\":\"4\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-13 06:31:03');
INSERT INTO `sys_oper_log` VALUES (167, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2022-08-13 06:31:03\",\"default\":false,\"dictCode\":124,\"dictLabel\":\"银保监\",\"dictSort\":4,\"dictType\":\"punishment_agency\",\"dictValue\":\"4\",\"isDefault\":\"N\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-13 06:33:40');
INSERT INTO `sys_oper_log` VALUES (168, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"外管局\",\"dictSort\":5,\"dictType\":\"punishment_agency\",\"dictValue\":\"5\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-13 06:33:57');
INSERT INTO `sys_oper_log` VALUES (169, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"本机构\",\"dictSort\":6,\"dictType\":\"punishment_agency\",\"dictValue\":\"6\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-13 06:34:14');
INSERT INTO `sys_oper_log` VALUES (170, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"劳务派遣公司\",\"dictSort\":7,\"dictType\":\"punishment_agency\",\"dictValue\":\"7\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-13 06:34:33');
INSERT INTO `sys_oper_log` VALUES (171, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"机构层级\",\"dictType\":\"institutional_level\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-13 06:37:18');
INSERT INTO `sys_oper_log` VALUES (172, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"省级\",\"dictSort\":0,\"dictType\":\"institutional_level\",\"dictValue\":\"0\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-13 06:38:03');
INSERT INTO `sys_oper_log` VALUES (173, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"市级\",\"dictSort\":1,\"dictType\":\"institutional_level\",\"dictValue\":\"1\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-13 06:38:15');
INSERT INTO `sys_oper_log` VALUES (174, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"县级\",\"dictSort\":2,\"dictType\":\"institutional_level\",\"dictValue\":\"2\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-13 06:38:44');
INSERT INTO `sys_oper_log` VALUES (175, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"支行\",\"dictSort\":3,\"dictType\":\"institutional_level\",\"dictValue\":\"3\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-13 06:39:16');
INSERT INTO `sys_oper_log` VALUES (176, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"分社\",\"dictSort\":3,\"dictType\":\"institutional_level\",\"dictValue\":\"4\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-13 06:39:28');
INSERT INTO `sys_oper_log` VALUES (177, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"学历\",\"dictType\":\"user_education\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-13 06:40:56');
INSERT INTO `sys_oper_log` VALUES (178, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"研究生及以上\",\"dictSort\":0,\"dictType\":\"user_education\",\"dictValue\":\"0\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-13 06:41:15');
INSERT INTO `sys_oper_log` VALUES (179, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"本科\",\"dictSort\":1,\"dictType\":\"user_education\",\"dictValue\":\"1\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-13 06:41:23');
INSERT INTO `sys_oper_log` VALUES (180, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"大专及以下\",\"dictSort\":2,\"dictType\":\"user_education\",\"dictValue\":\"2\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-13 06:41:34');
INSERT INTO `sys_oper_log` VALUES (181, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"information\",\"className\":\"PenaltyInformation\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"编号\",\"columnId\":8,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2022-08-13 06:20:12\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2022-08-13 06:22:50\",\"usableColumn\":false},{\"capJavaField\":\"StaffId\",\"columnComment\":\"员工编号\",\"columnId\":9,\"columnName\":\"staff_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2022-08-13 06:20:12\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"staffId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2022-08-13 06:22:50\",\"usableColumn\":false},{\"capJavaField\":\"Edcuation\",\"columnComment\":\"学历\",\"columnId\":10,\"columnName\":\"edcuation\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2022-08-13 06:20:12\",\"dictType\":\"user_education\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isRequired\":\"1\",\"javaField\":\"edcuation\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2022-08-13 06:22:50\",\"usableColumn\":false},{\"capJavaField\":\"PoliticalStatus\",\"columnComment\":\"政治面貌\",\"columnId\":11,\"columnName\":\"political_status\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2022-08-13 06:20:12\",\"dictType\":\"political_status\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-13 06:44:16');
INSERT INTO `sys_oper_log` VALUES (182, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"punishment\",\"className\":\"PenaltyInformation\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"编号\",\"columnId\":8,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2022-08-13 06:20:12\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2022-08-13 06:44:15\",\"usableColumn\":false},{\"capJavaField\":\"StaffId\",\"columnComment\":\"员工编号\",\"columnId\":9,\"columnName\":\"staff_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2022-08-13 06:20:12\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"staffId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2022-08-13 06:44:15\",\"usableColumn\":false},{\"capJavaField\":\"Edcuation\",\"columnComment\":\"学历\",\"columnId\":10,\"columnName\":\"edcuation\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2022-08-13 06:20:12\",\"dictType\":\"user_education\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isRequired\":\"1\",\"javaField\":\"edcuation\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2022-08-13 06:44:15\",\"usableColumn\":false},{\"capJavaField\":\"PoliticalStatus\",\"columnComment\":\"政治面貌\",\"columnId\":11,\"columnName\":\"political_status\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2022-08-13 06:20:12\",\"dictType\":\"political_status\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-13 06:44:52');
INSERT INTO `sys_oper_log` VALUES (183, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-08-13 06:44:54');
INSERT INTO `sys_oper_log` VALUES (184, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"punishment\",\"className\":\"PenaltyInformation\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"编号\",\"columnId\":8,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2022-08-13 06:20:12\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2022-08-13 06:44:52\",\"usableColumn\":false},{\"capJavaField\":\"StaffId\",\"columnComment\":\"员工编号\",\"columnId\":9,\"columnName\":\"staff_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2022-08-13 06:20:12\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"staffId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2022-08-13 06:44:52\",\"usableColumn\":false},{\"capJavaField\":\"Edcuation\",\"columnComment\":\"学历\",\"columnId\":10,\"columnName\":\"edcuation\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2022-08-13 06:20:12\",\"dictType\":\"user_education\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isRequired\":\"1\",\"javaField\":\"edcuation\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2022-08-13 06:44:52\",\"usableColumn\":false},{\"capJavaField\":\"PoliticalStatus\",\"columnComment\":\"政治面貌\",\"columnId\":11,\"columnName\":\"political_status\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2022-08-13 06:20:12\",\"dictType\":\"political_status\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-13 06:59:43');
INSERT INTO `sys_oper_log` VALUES (185, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-08-13 06:59:49');
INSERT INTO `sys_oper_log` VALUES (186, '处罚信息', 1, 'com.ruoyi.epms.controller.PenaltyInformationController.add()', 'POST', 1, 'admin', NULL, '/epms/punishment', '127.0.0.1', '内网IP', '{\"basis\":\"宪法\",\"department\":\"保卫部\",\"edcuation\":1,\"fact\":\"嫖娼\",\"id\":1,\"institutionName\":\"营业部\",\"institutionalLevel\":1,\"params\":{},\"politicalStatus\":0,\"post\":\"员工\",\"punishmentAgency\":1,\"qualifications\":0,\"staffId\":10021}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-13 09:12:41');
INSERT INTO `sys_oper_log` VALUES (187, '处罚信息', 2, 'com.ruoyi.epms.controller.PenaltyInformationController.edit()', 'PUT', 1, 'admin', NULL, '/epms/punishment', '127.0.0.1', '内网IP', '{\"basis\":\"宪法\",\"department\":\"保卫部\",\"edcuation\":1,\"fact\":\"嫖娼\",\"fileNo\":\"12035\",\"id\":1,\"institutionName\":\"营业部\",\"institutionalLevel\":1,\"params\":{},\"politicalStatus\":0,\"post\":\"员工\",\"punishmentAgency\":1,\"qualifications\":0,\"staffId\":10021,\"workTime\":\"2012-2302\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-13 09:13:45');
INSERT INTO `sys_oper_log` VALUES (188, '处罚信息', 1, 'com.ruoyi.epms.controller.PenaltyInformationController.add()', 'POST', 1, 'admin', NULL, '/epms/punishment', '127.0.0.1', '内网IP', '{\"basis\":\"《xxx员工异常行为管理规范》\",\"department\":\"保卫部\",\"edcuation\":1,\"fact\":\"赌博\",\"id\":2,\"institutionName\":\"xx支行\",\"institutionalLevel\":4,\"params\":{},\"politicalStatus\":0,\"post\":\"员工\",\"punishmentAgency\":5,\"qualifications\":0,\"staffId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-15 14:45:48');
INSERT INTO `sys_oper_log` VALUES (189, '员工信息管理', 1, 'com.ruoyi.epms.controller.StaffInfoController.add()', 'POST', 1, 'admin', NULL, '/epms/staffInfo', '127.0.0.1', '内网IP', '{\"birthday\":\"2022-04-14 00:00:00\",\"corp\":0,\"id\":3,\"idCard\":\"110223790813697\",\"name\":\"李建波\",\"params\":{},\"sex\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-15 14:51:56');
INSERT INTO `sys_oper_log` VALUES (190, '员工信息管理', 1, 'com.ruoyi.epms.controller.StaffInfoController.add()', 'POST', 1, 'admin', NULL, '/epms/staffInfo', '127.0.0.1', '内网IP', '{\"birthday\":\"2009-08-12 00:00:00\",\"corp\":1,\"id\":4,\"idCard\":\"110225196403026127\",\"name\":\"崔秀芝\",\"params\":{},\"sex\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-15 14:52:22');
INSERT INTO `sys_oper_log` VALUES (191, '处罚信息', 1, 'com.ruoyi.epms.controller.PenaltyInformationController.add()', 'POST', 1, 'admin', NULL, '/epms/punishment', '127.0.0.1', '内网IP', '{\"basis\":\"艰苦奋斗睡懒觉哦IE五日理解放假的快乐撒放假的快乐撒UI哦认为如额外i偶然封疆大吏开始放假快乐\",\"department\":\"xxxx部门\",\"edcuation\":2,\"fact\":\"的是非得失姐夫家的酸辣粉绝对是六块腹肌飞机克里斯朵夫家里可是大姐夫开了饭饭就困了大煞风景哦为u肉i问发来看电视剧哭了惹u我i金融违法就能独立思考姐夫离开\",\"id\":3,\"institutionName\":\"xx联社\",\"institutionalLevel\":3,\"params\":{},\"politicalStatus\":3,\"post\":\"员工\",\"punishmentAgency\":4,\"qualifications\":0,\"staffId\":4}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-15 14:54:36');
INSERT INTO `sys_oper_log` VALUES (192, '处罚信息', 3, 'com.ruoyi.epms.controller.PenaltyInformationController.remove()', 'DELETE', 1, 'admin', NULL, '/epms/punishment/1', '127.0.0.1', '内网IP', '{ids=1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-16 05:16:46');
INSERT INTO `sys_oper_log` VALUES (193, '处罚信息', 1, 'com.ruoyi.epms.controller.PenaltyInformationController.add()', 'POST', 1, 'admin', NULL, '/epms/punishment', '127.0.0.1', '内网IP', '{\"basis\":\"阿胶为i认为u染发剂打算离开姐夫i我二附近的苏里科夫家里看电视姐夫来看待送i为u让你分离的时刻降温哦i人违反纪律的时刻姐夫离开阿胶为i容我二姐夫流口水大家佛i我耳机里放点开始降温哦人姐夫克赖斯基哦额晚饭\",\"department\":\"保卫部\",\"edcuation\":0,\"fact\":\"否监考老师的姐夫离开都是姐夫离开的世界里疯狂的叫索科洛夫放假滴漏式咖啡机里肯定是姐夫看了多少发多少六块腹肌都是来看姐夫离开大煞风景扣篮大赛风急浪大快速反击独立思考姐夫i哦额捂热我姐夫离开都是姐夫快乐房间里看书的飞机哦微风你的身份流口水的姐夫来问姐夫了几位老人挤哦我二姐夫流口水的交流看法\",\"fileNo\":\"xxxx号\",\"id\":4,\"institutionName\":\"xx联社\",\"institutionalLevel\":1,\"params\":{},\"politicalStatus\":2,\"post\":\"经理\",\"punishmentAgency\":3,\"qualifications\":0,\"staffId\":2,\"workTime\":\"2021-2090\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-16 05:18:01');
INSERT INTO `sys_oper_log` VALUES (194, '处罚信息', 3, 'com.ruoyi.epms.controller.PenaltyInformationController.remove()', 'DELETE', 1, 'admin', NULL, '/epms/punishment/2,4', '127.0.0.1', '内网IP', '{ids=2,4}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-16 05:29:09');
INSERT INTO `sys_oper_log` VALUES (195, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2000,2013,2014,2015,2016,2017,2018,2019,2020,2021,2022,2023,2024],\"params\":{},\"roleId\":100,\"roleKey\":\"punishment\",\"roleName\":\"处罚管理人员\",\"roleSort\":\"1\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-16 11:20:42');
INSERT INTO `sys_oper_log` VALUES (196, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":101,\"email\":\"123@qq.com\",\"nickName\":\"测试人员\",\"params\":{},\"phonenumber\":\"18214582526\",\"postIds\":[4],\"roleIds\":[100],\"sex\":\"0\",\"status\":\"0\",\"userId\":100,\"userName\":\"测试人员\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-16 11:21:39');
INSERT INTO `sys_oper_log` VALUES (197, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-08-16 11:21:39\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":101,\"deptName\":\"深圳总公司\",\"leader\":\"若依\",\"orderNum\":1,\"params\":{},\"parentId\":100,\"status\":\"0\"},\"deptId\":101,\"email\":\"123@qq.com\",\"loginIp\":\"\",\"nickName\":\"cs01\",\"params\":{},\"phonenumber\":\"18214582526\",\"postIds\":[4],\"roleIds\":[100],\"roles\":[{\"admin\":false,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":100,\"roleKey\":\"punishment\",\"roleName\":\"处罚管理人员\",\"roleSort\":\"1\",\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":100,\"userName\":\"测试人员\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-16 11:21:56');
INSERT INTO `sys_oper_log` VALUES (198, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/100', '127.0.0.1', '内网IP', '{userIds=100}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-16 11:22:57');
INSERT INTO `sys_oper_log` VALUES (199, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":100,\"email\":\"222@qq.com\",\"nickName\":\"测试\",\"params\":{},\"phonenumber\":\"18224363728\",\"postIds\":[4],\"roleIds\":[100],\"sex\":\"0\",\"status\":\"0\",\"userId\":101,\"userName\":\"cs01\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-16 11:23:29');
INSERT INTO `sys_oper_log` VALUES (200, '员工信息管理', 1, 'com.ruoyi.epms.controller.StaffInfoController.add()', 'POST', 1, 'cs01', NULL, '/epms/staffInfo', '127.0.0.1', '内网IP', '{\"birthday\":\"2011-08-08 00:00:00\",\"corp\":5,\"id\":5,\"idCard\":\"530111199709382729\",\"name\":\"丁瑞\",\"params\":{},\"sex\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-16 11:24:35');
INSERT INTO `sys_oper_log` VALUES (201, '处罚信息', 1, 'com.ruoyi.epms.controller.PenaltyInformationController.add()', 'POST', 1, 'admin', NULL, '/epms/punishment', '127.0.0.1', '内网IP', '{\"basis\":\"kkkkk\",\"department\":\"ttttt\",\"edcuation\":0,\"fact\":\"hhhh\",\"id\":5,\"institutionName\":\"dddd\",\"institutionalLevel\":2,\"params\":{},\"politicalStatus\":1,\"post\":\"eeddd\",\"punishmentAgency\":3,\"qualifications\":0,\"staffId\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-22 04:18:20');
INSERT INTO `sys_oper_log` VALUES (202, '处罚信息', 5, 'com.ruoyi.epms.controller.PenaltyInformationController.export()', 'POST', 1, 'admin', NULL, '/epms/punishment/export', '127.0.0.1', '内网IP', '{\"params\":{}}', NULL, 0, NULL, '2022-08-23 04:36:01');
INSERT INTO `sys_oper_log` VALUES (203, '处罚信息', 5, 'com.ruoyi.epms.controller.PenaltyInformationController.export()', 'POST', 1, 'admin', NULL, '/epms/punishment/export', '127.0.0.1', '内网IP', '{\"params\":{}}', NULL, 0, NULL, '2022-08-23 04:37:16');
INSERT INTO `sys_oper_log` VALUES (204, '处罚信息', 5, 'com.ruoyi.epms.controller.PenaltyInformationController.export()', 'POST', 1, 'admin', NULL, '/epms/punishment/export', '127.0.0.1', '内网IP', '{\"params\":{}}', NULL, 0, NULL, '2022-08-23 04:37:43');
INSERT INTO `sys_oper_log` VALUES (205, '处罚信息', 2, 'com.ruoyi.epms.controller.PenaltyInformationController.edit()', 'PUT', 1, 'admin', NULL, '/epms/punishment', '127.0.0.1', '内网IP', '{\"basis\":\"kkkkk\",\"department\":\"ttttt\",\"edcuation\":0,\"fact\":\"hhhh\",\"id\":5,\"institutionName\":\"dddd\",\"institutionalLevel\":2,\"params\":{},\"politicalStatus\":1,\"post\":\"eeddd66\",\"punishmentAgency\":3,\"qualifications\":0,\"staffId\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-23 05:39:59');
INSERT INTO `sys_oper_log` VALUES (206, '处罚信息', 3, 'com.ruoyi.epms.controller.PenaltyInformationController.remove()', 'DELETE', 1, 'admin', NULL, '/epms/punishment/3', '127.0.0.1', '内网IP', '{ids=3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-23 05:52:11');
INSERT INTO `sys_oper_log` VALUES (207, '处罚信息', 5, 'com.ruoyi.epms.controller.PenaltyInformationController.toExcel()', 'GET', 1, 'admin', NULL, '/epms/punishment/cover', '127.0.0.1', '内网IP', '{}', NULL, 1, 'com.alibaba.druid.support.http.WebStatFilter$StatHttpServletResponseWrapper cannot be cast to java.io.OutputStream', '2022-08-23 05:52:33');
INSERT INTO `sys_oper_log` VALUES (208, '处罚信息', 5, 'com.ruoyi.epms.controller.PenaltyInformationController.toExcel()', 'GET', 1, 'admin', NULL, '/epms/punishment/cover', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-08-23 05:56:16');
INSERT INTO `sys_oper_log` VALUES (209, '处罚信息', 5, 'com.ruoyi.epms.controller.PenaltyInformationController.toExcel()', 'GET', 1, 'admin', NULL, '/epms/punishment/cover', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-08-23 05:56:26');
INSERT INTO `sys_oper_log` VALUES (210, '处罚信息', 5, 'com.ruoyi.epms.controller.PenaltyInformationController.toExcel()', 'GET', 1, 'admin', NULL, '/epms/punishment/cover', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-08-23 05:56:28');
INSERT INTO `sys_oper_log` VALUES (211, '处罚信息', 5, 'com.ruoyi.epms.controller.PenaltyInformationController.toExcel()', 'GET', 1, 'admin', NULL, '/epms/punishment/cover', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-08-23 05:56:50');
INSERT INTO `sys_oper_log` VALUES (212, '处罚信息', 5, 'com.ruoyi.epms.controller.PenaltyInformationController.toExcel()', 'POST', 1, 'admin', NULL, '/epms/punishment/cover', '127.0.0.1', '内网IP', '', NULL, 0, NULL, '2022-08-23 06:01:51');
INSERT INTO `sys_oper_log` VALUES (213, '处罚信息', 5, 'com.ruoyi.epms.controller.PenaltyInformationController.toExcel()', 'POST', 1, 'admin', NULL, '/epms/punishment/cover', '127.0.0.1', '内网IP', '', NULL, 0, NULL, '2022-08-23 06:04:53');
INSERT INTO `sys_oper_log` VALUES (214, '处罚信息', 5, 'com.ruoyi.epms.controller.PenaltyInformationController.toExcel()', 'POST', 1, 'admin', NULL, '/epms/punishment/cover', '127.0.0.1', '内网IP', '', NULL, 0, NULL, '2022-08-23 06:08:01');
INSERT INTO `sys_oper_log` VALUES (215, '处罚信息', 5, 'com.ruoyi.epms.controller.PenaltyInformationController.toExcel()', 'POST', 1, 'admin', NULL, '/epms/punishment/cover', '127.0.0.1', '内网IP', '', NULL, 1, 'Invalid cell range, having lastRow < firstRow || lastCol < firstCol, had rows 2 >= 0 or cells 3 >= 4', '2022-08-23 06:11:13');
INSERT INTO `sys_oper_log` VALUES (216, '处罚信息', 5, 'com.ruoyi.epms.controller.PenaltyInformationController.toExcel()', 'POST', 1, 'admin', NULL, '/epms/punishment/cover', '127.0.0.1', '内网IP', '', NULL, 0, NULL, '2022-08-23 06:14:04');
INSERT INTO `sys_oper_log` VALUES (217, '处罚信息', 5, 'com.ruoyi.epms.controller.PenaltyInformationController.toExcel()', 'POST', 1, 'admin', NULL, '/epms/punishment/cover', '127.0.0.1', '内网IP', '', NULL, 0, NULL, '2022-08-23 06:21:07');
INSERT INTO `sys_oper_log` VALUES (218, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/101', '127.0.0.1', '内网IP', '{deptId=101}', '{\"msg\":\"存在下级部门,不允许删除\",\"code\":500}', 0, NULL, '2022-08-24 04:37:30');
INSERT INTO `sys_oper_log` VALUES (219, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/109', '127.0.0.1', '内网IP', '{deptId=109}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-24 04:37:34');
INSERT INTO `sys_oper_log` VALUES (220, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/108', '127.0.0.1', '内网IP', '{deptId=108}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-24 04:37:36');
INSERT INTO `sys_oper_log` VALUES (221, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/102', '127.0.0.1', '内网IP', '{deptId=102}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-24 04:37:39');
INSERT INTO `sys_oper_log` VALUES (222, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/107', '127.0.0.1', '内网IP', '{deptId=107}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-24 04:37:41');
INSERT INTO `sys_oper_log` VALUES (223, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/106', '127.0.0.1', '内网IP', '{deptId=106}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-24 04:37:43');
INSERT INTO `sys_oper_log` VALUES (224, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/105', '127.0.0.1', '内网IP', '{deptId=105}', '{\"msg\":\"部门存在用户,不允许删除\",\"code\":500}', 0, NULL, '2022-08-24 04:37:45');
INSERT INTO `sys_oper_log` VALUES (225, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/101', '127.0.0.1', '内网IP', '{userIds=101}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-24 04:38:08');
INSERT INTO `sys_oper_log` VALUES (226, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-08-12 14:34:27\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":105,\"deptName\":\"测试部门\",\"leader\":\"若依\",\"orderNum\":3,\"params\":{},\"parentId\":101,\"status\":\"0\"},\"deptId\":100,\"email\":\"ry@qq.com\",\"loginDate\":\"2022-08-12 14:34:27\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"若依\",\"params\":{},\"phonenumber\":\"15666666666\",\"postIds\":[2],\"remark\":\"测试员\",\"roleIds\":[2],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":\"2\",\"status\":\"0\"}],\"sex\":\"1\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":2,\"userName\":\"ry\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-24 04:38:21');
INSERT INTO `sys_oper_log` VALUES (227, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/105', '127.0.0.1', '内网IP', '{deptId=105}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-24 04:38:28');
INSERT INTO `sys_oper_log` VALUES (228, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/104', '127.0.0.1', '内网IP', '{deptId=104}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-24 04:38:29');
INSERT INTO `sys_oper_log` VALUES (229, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/103', '127.0.0.1', '内网IP', '{deptId=103}', '{\"msg\":\"部门存在用户,不允许删除\",\"code\":500}', 0, NULL, '2022-08-24 04:38:31');
INSERT INTO `sys_oper_log` VALUES (230, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0\",\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2022-08-12 14:34:27\",\"delFlag\":\"0\",\"deptId\":100,\"deptName\":\"昆明市联社\",\"email\":\"ry@qq.com\",\"leader\":\"若依\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-24 04:39:13');
INSERT INTO `sys_oper_log` VALUES (231, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100\",\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2022-08-12 14:34:27\",\"delFlag\":\"0\",\"deptId\":101,\"deptName\":\"昆明市联社\",\"email\":\"ry@qq.com\",\"leader\":\"若依\",\"orderNum\":1,\"params\":{},\"parentId\":100,\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-24 04:39:43');
INSERT INTO `sys_oper_log` VALUES (232, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,101\",\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2022-08-12 14:34:27\",\"delFlag\":\"0\",\"deptId\":103,\"deptName\":\"内控合规部\",\"email\":\"ry@qq.com\",\"leader\":\"若依\",\"orderNum\":1,\"params\":{},\"parentId\":101,\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-24 04:39:59');
INSERT INTO `sys_oper_log` VALUES (233, '部门管理', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100\",\"children\":[],\"createBy\":\"admin\",\"deptName\":\"官渡农合行\",\"orderNum\":2,\"params\":{},\"parentId\":100,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-24 04:40:16');
INSERT INTO `sys_oper_log` VALUES (234, '部门管理', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100\",\"children\":[],\"createBy\":\"admin\",\"deptName\":\"西山联社\",\"orderNum\":3,\"params\":{},\"parentId\":100,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-24 04:40:29');
INSERT INTO `sys_oper_log` VALUES (235, '部门管理', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,200\",\"children\":[],\"createBy\":\"admin\",\"deptName\":\"内控合规部\",\"orderNum\":0,\"params\":{},\"parentId\":200,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-24 04:40:46');
INSERT INTO `sys_oper_log` VALUES (236, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-08-12 14:34:27\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"昆明市联社\",\"leader\":\"若依\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"status\":\"0\"},\"deptId\":100,\"email\":\"ry@qq.com\",\"loginDate\":\"2022-08-12 14:34:27\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"若依\",\"params\":{},\"phonenumber\":\"15666666666\",\"postIds\":[4],\"remark\":\"测试员\",\"roleIds\":[2],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":\"2\",\"status\":\"0\"}],\"sex\":\"1\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":2,\"userName\":\"ry\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-24 04:41:47');
INSERT INTO `sys_oper_log` VALUES (237, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":202,\"nickName\":\"官渡\",\"params\":{},\"postIds\":[4],\"roleIds\":[100],\"sex\":\"0\",\"status\":\"0\",\"userId\":102,\"userName\":\"gd01\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-24 04:42:26');
INSERT INTO `sys_oper_log` VALUES (238, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-08-12 14:34:27\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"昆明市联社\",\"leader\":\"若依\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"status\":\"0\"},\"deptId\":103,\"email\":\"ry@qq.com\",\"loginDate\":\"2022-08-12 14:34:27\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"若依\",\"params\":{},\"phonenumber\":\"15666666666\",\"postIds\":[4],\"remark\":\"测试员\",\"roleIds\":[2],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":\"2\",\"status\":\"0\"}],\"sex\":\"1\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":2,\"userName\":\"ry\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-24 04:42:45');
INSERT INTO `sys_oper_log` VALUES (239, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,101\",\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2022-08-12 14:34:27\",\"delFlag\":\"0\",\"deptId\":103,\"deptName\":\"市联社-内控合规部\",\"email\":\"ry@qq.com\",\"leader\":\"若依\",\"orderNum\":1,\"params\":{},\"parentId\":101,\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-24 04:43:31');
INSERT INTO `sys_oper_log` VALUES (240, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,200\",\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2022-08-24 04:40:46\",\"delFlag\":\"0\",\"deptId\":202,\"deptName\":\"官渡-内控合规部\",\"orderNum\":0,\"params\":{},\"parentId\":200,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-24 04:43:42');
INSERT INTO `sys_oper_log` VALUES (241, '员工信息管理', 1, 'com.ruoyi.epms.controller.StaffInfoController.add()', 'POST', 1, 'admin', NULL, '/epms/staffInfo', '127.0.0.1', '内网IP', '{\"birthday\":\"1993-08-10 00:00:00\",\"corp\":15,\"createTime\":\"2022-08-24T12:58:59.535+08:00\",\"deptId\":103,\"idCard\":\"5301234567898393\",\"name\":\"操蛋\",\"params\":{},\"sex\":0,\"userId\":1}', NULL, 1, '\n### Error updating database.  Cause: java.sql.SQLException: Field \'user_id\' doesn\'t have a default value\n### The error may exist in file [/Users/yw/编程/java/RuoYi-Vue/ruoyi-epms/target/classes/mapper/epms/StaffInfoMapper.xml]\n### The error may involve com.ruoyi.epms.mapper.StaffInfoMapper.insertStaffInfo-Inline\n### The error occurred while setting parameters\n### SQL: insert into staff_info          ( name,             sex,             id_card,             birthday,             corp )           values ( ?,             ?,             ?,             ?,             ? )\n### Cause: java.sql.SQLException: Field \'user_id\' doesn\'t have a default value\n; Field \'user_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'user_id\' doesn\'t have a default value', '2022-08-24 04:58:59');
INSERT INTO `sys_oper_log` VALUES (242, '员工信息管理', 1, 'com.ruoyi.epms.controller.StaffInfoController.add()', 'POST', 1, 'admin', NULL, '/epms/staffInfo', '127.0.0.1', '内网IP', '{\"birthday\":\"1993-08-10 00:00:00\",\"corp\":15,\"createTime\":\"2022-08-24T12:59:04.568+08:00\",\"deptId\":103,\"idCard\":\"5301234567898393\",\"name\":\"操蛋\",\"params\":{},\"sex\":0,\"userId\":1}', NULL, 1, '\n### Error updating database.  Cause: java.sql.SQLException: Field \'user_id\' doesn\'t have a default value\n### The error may exist in file [/Users/yw/编程/java/RuoYi-Vue/ruoyi-epms/target/classes/mapper/epms/StaffInfoMapper.xml]\n### The error may involve com.ruoyi.epms.mapper.StaffInfoMapper.insertStaffInfo-Inline\n### The error occurred while setting parameters\n### SQL: insert into staff_info          ( name,             sex,             id_card,             birthday,             corp )           values ( ?,             ?,             ?,             ?,             ? )\n### Cause: java.sql.SQLException: Field \'user_id\' doesn\'t have a default value\n; Field \'user_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'user_id\' doesn\'t have a default value', '2022-08-24 04:59:04');
INSERT INTO `sys_oper_log` VALUES (243, '员工信息管理', 1, 'com.ruoyi.epms.controller.StaffInfoController.add()', 'POST', 1, 'admin', NULL, '/epms/staffInfo', '127.0.0.1', '内网IP', '{\"birthday\":\"1993-08-10 00:00:00\",\"corp\":15,\"createTime\":\"2022-08-24T12:59:33.779+08:00\",\"deptId\":103,\"idCard\":\"5301234567898393\",\"name\":\"操蛋\",\"params\":{},\"sex\":0,\"userId\":1}', NULL, 1, '\n### Error updating database.  Cause: java.sql.SQLException: Field \'user_id\' doesn\'t have a default value\n### The error may exist in file [/Users/yw/编程/java/RuoYi-Vue/ruoyi-epms/target/classes/mapper/epms/StaffInfoMapper.xml]\n### The error may involve com.ruoyi.epms.mapper.StaffInfoMapper.insertStaffInfo-Inline\n### The error occurred while setting parameters\n### SQL: insert into staff_info          ( name,             sex,             id_card,             birthday,             corp )           values ( ?,             ?,             ?,             ?,             ? )\n### Cause: java.sql.SQLException: Field \'user_id\' doesn\'t have a default value\n; Field \'user_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'user_id\' doesn\'t have a default value', '2022-08-24 05:00:29');
INSERT INTO `sys_oper_log` VALUES (244, '员工信息管理', 1, 'com.ruoyi.epms.controller.StaffInfoController.add()', 'POST', 1, 'admin', NULL, '/epms/staffInfo', '127.0.0.1', '内网IP', '{\"birthday\":\"1993-08-10 00:00:00\",\"corp\":15,\"createTime\":\"2022-08-24T13:06:45.766+08:00\",\"deptId\":103,\"idCard\":\"5301234567898393\",\"name\":\"操蛋\",\"params\":{},\"sex\":0,\"userId\":1}', NULL, 1, '\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'dept_id\n            create_time ) \n         values ( \'操蛋\',\n            0,\n  \' at line 9\n### The error may exist in file [/Users/yw/编程/java/RuoYi-Vue/ruoyi-epms/target/classes/mapper/epms/StaffInfoMapper.xml]\n### The error may involve com.ruoyi.epms.mapper.StaffInfoMapper.insertStaffInfo-Inline\n### The error occurred while setting parameters\n### SQL: insert into staff_info          ( name,             sex,             id_card,             birthday,             corp,                          user_id             dept_id             create_time )           values ( ?,             ?,             ?,             ?,             ?,                          ?             ?             ? )\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'dept_id\n            create_time ) \n         values ( \'操蛋\',\n            0,\n  \' at line 9\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'dept_id\n            create_time ) \n         values ( \'操蛋\',\n            0,\n  \' at line 9', '2022-08-24 05:06:45');
INSERT INTO `sys_oper_log` VALUES (245, '员工信息管理', 1, 'com.ruoyi.epms.controller.StaffInfoController.add()', 'POST', 1, 'admin', NULL, '/epms/staffInfo', '127.0.0.1', '内网IP', '{\"birthday\":\"2022-08-09 00:00:00\",\"corp\":15,\"createTime\":\"2022-08-24T13:07:13.512+08:00\",\"deptId\":103,\"idCard\":\"3424234234234234234\",\"name\":\"操蛋\",\"params\":{},\"sex\":1,\"userId\":1}', NULL, 1, '\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'dept_id\n            create_time ) \n         values ( \'操蛋\',\n            1,\n  \' at line 9\n### The error may exist in file [/Users/yw/编程/java/RuoYi-Vue/ruoyi-epms/target/classes/mapper/epms/StaffInfoMapper.xml]\n### The error may involve com.ruoyi.epms.mapper.StaffInfoMapper.insertStaffInfo-Inline\n### The error occurred while setting parameters\n### SQL: insert into staff_info          ( name,             sex,             id_card,             birthday,             corp,                          user_id             dept_id             create_time )           values ( ?,             ?,             ?,             ?,             ?,                          ?             ?             ? )\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'dept_id\n            create_time ) \n         values ( \'操蛋\',\n            1,\n  \' at line 9\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'dept_id\n            create_time ) \n         values ( \'操蛋\',\n            1,\n  \' at line 9', '2022-08-24 05:07:13');
INSERT INTO `sys_oper_log` VALUES (246, '员工信息管理', 1, 'com.ruoyi.epms.controller.StaffInfoController.add()', 'POST', 1, 'admin', NULL, '/epms/staffInfo', '127.0.0.1', '内网IP', '{\"birthday\":\"2022-08-09 00:00:00\",\"corp\":15,\"createTime\":\"2022-08-24T13:10:59.519+08:00\",\"deptId\":103,\"idCard\":\"3424234234234234234\",\"name\":\"操蛋\",\"params\":{},\"sex\":1,\"userId\":1}', NULL, 1, '\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'103\n            \'2022-08-24 13:10:59.519\' )\' at line 18\n### The error may exist in file [/Users/yw/编程/java/RuoYi-Vue/ruoyi-epms/target/classes/mapper/epms/StaffInfoMapper.xml]\n### The error may involve com.ruoyi.epms.mapper.StaffInfoMapper.insertStaffInfo-Inline\n### The error occurred while setting parameters\n### SQL: insert into staff_info          ( name,             sex,             id_card,             birthday,             corp,                          user_id,             dept_id,             create_time )           values ( ?,             ?,             ?,             ?,             ?,                          ?             ?             ? )\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'103\n            \'2022-08-24 13:10:59.519\' )\' at line 18\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'103\n            \'2022-08-24 13:10:59.519\' )\' at line 18', '2022-08-24 05:10:59');
INSERT INTO `sys_oper_log` VALUES (247, '员工信息管理', 1, 'com.ruoyi.epms.controller.StaffInfoController.add()', 'POST', 1, 'admin', NULL, '/epms/staffInfo', '127.0.0.1', '内网IP', '{\"birthday\":\"2022-08-02 00:00:00\",\"corp\":15,\"createTime\":\"2022-08-24T13:12:11.89+08:00\",\"deptId\":103,\"id\":6,\"idCard\":\"5302229383938293828832\",\"name\":\"操蛋\",\"params\":{},\"sex\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-24 05:12:11');
INSERT INTO `sys_oper_log` VALUES (248, '员工信息管理', 2, 'com.ruoyi.epms.controller.StaffInfoController.edit()', 'PUT', 1, 'admin', NULL, '/epms/staffInfo', '127.0.0.1', '内网IP', '{\"birthday\":\"2022-08-08 00:00:00\",\"corp\":15,\"id\":6,\"idCard\":\"5302229383938293828832\",\"modifyTime\":\"2022-08-24T13:12:30.658+08:00\",\"name\":\"操蛋\",\"params\":{},\"sex\":0}', NULL, 1, '\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\'2022-08-24 13:12:30.658\' \n        where id = 6\' at line 11\n### The error may exist in file [/Users/yw/编程/java/RuoYi-Vue/ruoyi-epms/target/classes/mapper/epms/StaffInfoMapper.xml]\n### The error may involve com.ruoyi.epms.mapper.StaffInfoMapper.updateStaffInfo-Inline\n### The error occurred while setting parameters\n### SQL: update staff_info          SET name = ?,             sex = ?,             id_card = ?,             birthday = ?,             corp = ?,                                                                 ?          where id = ?\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\'2022-08-24 13:12:30.658\' \n        where id = 6\' at line 11\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\'2022-08-24 13:12:30.658\' \n        where id = 6\' at line 11', '2022-08-24 05:12:30');
INSERT INTO `sys_oper_log` VALUES (249, '员工信息管理', 2, 'com.ruoyi.epms.controller.StaffInfoController.edit()', 'PUT', 1, 'admin', NULL, '/epms/staffInfo', '127.0.0.1', '内网IP', '{\"birthday\":\"2022-08-08 00:00:00\",\"corp\":15,\"id\":6,\"idCard\":\"5302229383938293828832\",\"modifyTime\":\"2022-08-24T13:13:28.49+08:00\",\"name\":\"操蛋\",\"params\":{},\"sex\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-24 05:13:28');
INSERT INTO `sys_oper_log` VALUES (250, '员工信息管理', 2, 'com.ruoyi.epms.controller.StaffInfoController.edit()', 'PUT', 1, 'admin', NULL, '/epms/staffInfo', '127.0.0.1', '内网IP', '{\"birthday\":\"2022-08-08 00:00:00\",\"corp\":15,\"id\":6,\"idCard\":\"5302229383938293828832\",\"modifyTime\":\"2022-08-24T13:13:34.801+08:00\",\"name\":\"操蛋\",\"params\":{},\"sex\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-24 05:13:34');
INSERT INTO `sys_oper_log` VALUES (251, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2022-08-16 11:20:42\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"roleId\":100,\"roleKey\":\"punishment\",\"roleName\":\"处罚管理人员\",\"roleSort\":\"1\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-24 05:21:29');
INSERT INTO `sys_oper_log` VALUES (252, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2022-08-16 11:20:42\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"roleId\":100,\"roleKey\":\"punishment\",\"roleName\":\"处罚管理人员\",\"roleSort\":\"1\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-24 05:21:40');
INSERT INTO `sys_oper_log` VALUES (253, '员工信息管理', 1, 'com.ruoyi.epms.controller.StaffInfoController.add()', 'POST', 1, 'gd01', NULL, '/epms/staffInfo', '127.0.0.1', '内网IP', '{\"birthday\":\"2011-08-15 00:00:00\",\"corp\":1,\"createTime\":\"2022-08-24T13:23:03.06+08:00\",\"deptId\":202,\"id\":7,\"idCard\":\"12345678909876\",\"name\":\"菜狗\",\"params\":{},\"sex\":1,\"userId\":102}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-24 05:23:03');
INSERT INTO `sys_oper_log` VALUES (254, '员工信息管理', 1, 'com.ruoyi.epms.controller.StaffInfoController.add()', 'POST', 1, 'gd01', NULL, '/epms/staffInfo', '127.0.0.1', '内网IP', '{\"birthday\":\"2014-08-05 00:00:00\",\"corp\":1,\"createTime\":\"2022-08-24T13:23:26.823+08:00\",\"deptId\":202,\"id\":8,\"idCard\":\"47937489374983\",\"name\":\"我对你们的\",\"params\":{},\"sex\":0,\"userId\":102}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-24 05:23:26');
INSERT INTO `sys_oper_log` VALUES (255, '部门管理', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,101\",\"children\":[],\"createBy\":\"admin\",\"deptName\":\"市联社-营业部\",\"orderNum\":2,\"params\":{},\"parentId\":101,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-24 05:25:48');
INSERT INTO `sys_oper_log` VALUES (256, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2022-08-16 11:20:42\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"roleId\":100,\"roleKey\":\"punishment\",\"roleName\":\"处罚管理人员\",\"roleSort\":\"1\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-24 05:26:12');
INSERT INTO `sys_oper_log` VALUES (257, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":203,\"nickName\":\"yyb01\",\"params\":{},\"postIds\":[],\"roleIds\":[],\"status\":\"0\",\"userId\":103,\"userName\":\"营业部\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-24 05:26:41');
INSERT INTO `sys_oper_log` VALUES (258, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-08-24 05:26:41\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":203,\"deptName\":\"市联社-营业部\",\"orderNum\":2,\"params\":{},\"parentId\":101,\"status\":\"0\"},\"deptId\":203,\"email\":\"\",\"loginDate\":\"2022-08-24 13:27:45\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"yyb01\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[4],\"roleIds\":[100],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":103,\"userName\":\"营业部\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-24 05:28:16');
INSERT INTO `sys_oper_log` VALUES (259, '员工信息管理', 1, 'com.ruoyi.epms.controller.StaffInfoController.add()', 'POST', 1, '营业部', NULL, '/epms/staffInfo', '127.0.0.1', '内网IP', '{\"birthday\":\"2009-08-04 00:00:00\",\"corp\":15,\"createTime\":\"2022-08-25T12:35:18.277+08:00\",\"deptId\":203,\"id\":9,\"idCard\":\"5302349494050599393\",\"name\":\"三狗\",\"params\":{},\"sex\":0,\"userId\":103}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-25 04:35:18');
INSERT INTO `sys_oper_log` VALUES (260, '员工信息管理', 1, 'com.ruoyi.epms.controller.StaffInfoController.add()', 'POST', 1, '营业部', NULL, '/epms/staffInfo', '127.0.0.1', '内网IP', '{\"birthday\":\"2012-08-07 00:00:00\",\"corp\":15,\"createTime\":\"2022-08-25T12:35:44.36+08:00\",\"deptId\":203,\"id\":10,\"idCard\":\"530123458694038392\",\"name\":\"四狗\",\"params\":{},\"sex\":1,\"userId\":103}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-25 04:35:44');
INSERT INTO `sys_oper_log` VALUES (261, '处罚信息', 1, 'com.ruoyi.epms.controller.PenaltyInformationController.add()', 'POST', 1, '营业部', NULL, '/epms/punishment', '127.0.0.1', '内网IP', '{\"basis\":\"为金融额外加入姐夫离开都是姐夫来的是姐夫浪费了多少看姐夫龙神的姐夫快乐的u饿哦为i入额我i入房间里看书的房间里看到宋鄂无任何方式打开房间联社肯德基\",\"department\":\"营业部\",\"deptId\":203,\"edcuation\":0,\"fact\":\"领导是否健康绿色的姐夫克里斯蒂姐夫开了手机打开链接发到家哦IEu往日藕粉监考老师的讲课了附近的私哦副i哦微风努力肯定是姐夫来德克士姐夫了空加快立法的技术开发廉价的索科洛夫监控力度斯捷克洛夫圣诞节快乐放假哦为u肉i和法律手段姐夫离开\",\"id\":6,\"institutionName\":\"市联社营业部\",\"institutionalLevel\":3,\"params\":{},\"politicalStatus\":1,\"post\":\"客户经理\",\"punishmentAgency\":5,\"qualifications\":0,\"staffId\":10,\"userId\":103}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-25 04:37:39');
INSERT INTO `sys_oper_log` VALUES (262, '处罚信息', 1, 'com.ruoyi.epms.controller.PenaltyInformationController.add()', 'POST', 1, '营业部', NULL, '/epms/punishment', '127.0.0.1', '内网IP', '{\"basis\":\"史蒂夫看见了零零落落零零落落零零落落零零落落零零落落零零落落零零落落\",\"department\":\"营业部\",\"deptId\":203,\"edcuation\":2,\"fact\":\"将斯库拉多夫反反复复反反复复反反复复\",\"id\":7,\"institutionName\":\"营业部\",\"institutionalLevel\":2,\"params\":{},\"politicalStatus\":3,\"post\":\"员工\",\"punishmentAgency\":1,\"qualifications\":0,\"staffId\":9,\"userId\":103}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-25 04:38:21');
INSERT INTO `sys_oper_log` VALUES (263, '处罚信息', 2, 'com.ruoyi.epms.controller.PenaltyInformationController.edit()', 'PUT', 1, '营业部', NULL, '/epms/punishment', '127.0.0.1', '内网IP', '{\"basis\":\"为金融额外加入姐夫离开都是姐夫来的是姐夫浪费了多少看姐夫龙神的姐夫快乐的u饿哦为i入额我i入房间里看书的房间里看到宋鄂无任何方式打开房间联社肯德基\",\"department\":\"营业部\",\"edcuation\":0,\"fact\":\"领导是否健康绿色的姐夫克里斯蒂姐夫开了手机打开链接发到家哦IEu往日藕粉监考老师的讲课了附近的私哦副i哦微风努力肯定是姐夫来德克士姐夫了空加快立法的技术开发廉价的索科洛夫监控力度斯捷克洛夫圣诞节快乐放假哦为u肉i和法律手段姐夫离开\",\"id\":6,\"institutionName\":\"营业部\",\"institutionalLevel\":3,\"params\":{},\"politicalStatus\":1,\"post\":\"客户经理\",\"punishmentAgency\":5,\"qualifications\":0,\"staffId\":10}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-25 04:38:33');
INSERT INTO `sys_oper_log` VALUES (264, '处罚信息', 1, 'com.ruoyi.epms.controller.PenaltyInformationController.add()', 'POST', 1, 'gd01', NULL, '/epms/punishment', '127.0.0.1', '内网IP', '{\"basis\":\"呃呃呃呃呃呃呃呃呃呃呃呃呃呃\",\"department\":\"阿拉支行\",\"deptId\":202,\"edcuation\":1,\"fact\":\"肥嘟嘟的点点滴滴点点滴滴\",\"id\":8,\"institutionName\":\"官渡农合行\",\"institutionalLevel\":3,\"params\":{},\"politicalStatus\":1,\"post\":\"员工\",\"punishmentAgency\":4,\"qualifications\":0,\"staffId\":7,\"userId\":102}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-25 04:39:56');
INSERT INTO `sys_oper_log` VALUES (265, '处罚信息', 5, 'com.ruoyi.epms.controller.PenaltyInformationController.toExcel()', 'POST', 1, 'admin', NULL, '/epms/punishment/cover', '127.0.0.1', '内网IP', '', NULL, 0, NULL, '2022-08-25 05:16:44');
INSERT INTO `sys_oper_log` VALUES (266, '处罚信息', 5, 'com.ruoyi.epms.controller.PenaltyInformationController.toExcel()', 'POST', 1, 'admin', NULL, '/epms/punishment/cover', '127.0.0.1', '内网IP', '', NULL, 0, NULL, '2022-08-25 05:17:17');
INSERT INTO `sys_oper_log` VALUES (267, '处罚信息', 5, 'com.ruoyi.epms.controller.PenaltyInformationController.toExcel()', 'POST', 1, 'admin', NULL, '/epms/punishment/cover', '127.0.0.1', '内网IP', '', NULL, 0, NULL, '2022-08-25 05:18:24');
INSERT INTO `sys_oper_log` VALUES (268, '处罚信息', 5, 'com.ruoyi.epms.controller.PenaltyInformationController.toExcel()', 'POST', 1, 'admin', NULL, '/epms/punishment/cover', '127.0.0.1', '内网IP', '', NULL, 0, NULL, '2022-08-25 05:19:09');
INSERT INTO `sys_oper_log` VALUES (269, '处罚信息', 5, 'com.ruoyi.epms.controller.PenaltyInformationController.toExcel()', 'POST', 1, 'admin', NULL, '/epms/punishment/cover', '127.0.0.1', '内网IP', '', NULL, 0, NULL, '2022-08-25 05:29:25');
INSERT INTO `sys_oper_log` VALUES (270, '处罚信息', 5, 'com.ruoyi.epms.controller.PenaltyInformationController.toExcel()', 'POST', 1, 'admin', NULL, '/epms/punishment/cover', '127.0.0.1', '内网IP', '5', NULL, 0, NULL, '2022-08-25 05:37:26');
INSERT INTO `sys_oper_log` VALUES (271, '处罚信息', 5, 'com.ruoyi.epms.controller.PenaltyInformationController.toExcel()', 'POST', 1, 'admin', NULL, '/epms/punishment/cover', '127.0.0.1', '内网IP', '6', NULL, 0, NULL, '2022-08-25 05:39:37');
INSERT INTO `sys_oper_log` VALUES (272, '处罚信息', 5, 'com.ruoyi.epms.controller.PenaltyInformationController.toExcel()', 'POST', 1, 'admin', NULL, '/epms/punishment/cover', '127.0.0.1', '内网IP', '5', NULL, 0, NULL, '2022-08-25 05:43:50');
INSERT INTO `sys_oper_log` VALUES (273, '处罚信息', 5, 'com.ruoyi.epms.controller.PenaltyInformationController.toExcel()', 'POST', 1, 'admin', NULL, '/epms/punishment/cover', '127.0.0.1', '内网IP', '5', NULL, 0, NULL, '2022-08-25 05:43:53');
INSERT INTO `sys_oper_log` VALUES (274, '处罚信息', 5, 'com.ruoyi.epms.controller.PenaltyInformationController.toExcel()', 'POST', 1, 'admin', NULL, '/epms/punishment/cover', '127.0.0.1', '内网IP', '5', NULL, 0, NULL, '2022-08-25 05:44:00');
INSERT INTO `sys_oper_log` VALUES (275, '处罚信息', 5, 'com.ruoyi.epms.controller.PenaltyInformationController.toExcel()', 'POST', 1, 'admin', NULL, '/epms/punishment/cover', '127.0.0.1', '内网IP', '5', NULL, 0, NULL, '2022-08-25 05:46:06');
INSERT INTO `sys_oper_log` VALUES (276, '处罚信息', 5, 'com.ruoyi.epms.controller.PenaltyInformationController.toExcel()', 'POST', 1, 'admin', NULL, '/epms/punishment/cover', '127.0.0.1', '内网IP', '5', NULL, 0, NULL, '2022-08-25 05:47:27');
INSERT INTO `sys_oper_log` VALUES (277, '处罚信息', 5, 'com.ruoyi.epms.controller.PenaltyInformationController.toExcel()', 'POST', 1, 'admin', NULL, '/epms/punishment/cover', '127.0.0.1', '内网IP', '5', NULL, 0, NULL, '2022-08-25 05:47:31');
INSERT INTO `sys_oper_log` VALUES (278, '处罚信息', 5, 'com.ruoyi.epms.controller.PenaltyInformationController.toExcel()', 'POST', 1, 'admin', NULL, '/epms/punishment/cover', '127.0.0.1', '内网IP', '5', NULL, 0, NULL, '2022-08-25 05:53:02');
INSERT INTO `sys_oper_log` VALUES (279, '处罚信息', 5, 'com.ruoyi.epms.controller.PenaltyInformationController.toExcel()', 'POST', 1, 'admin', NULL, '/epms/punishment/cover', '127.0.0.1', '内网IP', '6', NULL, 0, NULL, '2022-08-25 05:53:13');
INSERT INTO `sys_oper_log` VALUES (280, '处罚信息', 5, 'com.ruoyi.epms.controller.PenaltyInformationController.toExcel()', 'POST', 1, 'admin', NULL, '/epms/punishment/cover', '127.0.0.1', '内网IP', '5', NULL, 0, NULL, '2022-08-25 05:53:52');
INSERT INTO `sys_oper_log` VALUES (281, '处罚信息', 5, 'com.ruoyi.epms.controller.PenaltyInformationController.toExcel()', 'POST', 1, 'admin', NULL, '/epms/punishment/cover', '127.0.0.1', '内网IP', '6', NULL, 0, NULL, '2022-08-25 05:54:26');
INSERT INTO `sys_oper_log` VALUES (282, '处罚信息', 5, 'com.ruoyi.epms.controller.PenaltyInformationController.toExcel()', 'POST', 1, 'admin', NULL, '/epms/punishment/cover', '127.0.0.1', '内网IP', '7', NULL, 0, NULL, '2022-08-25 05:54:38');
INSERT INTO `sys_oper_log` VALUES (283, '处罚信息', 5, 'com.ruoyi.epms.controller.PenaltyInformationController.export()', 'POST', 1, 'admin', NULL, '/epms/punishment/export', '127.0.0.1', '内网IP', '{\"params\":{}}', NULL, 0, NULL, '2022-08-28 22:57:54');
INSERT INTO `sys_oper_log` VALUES (284, '处罚信息', 5, 'com.ruoyi.epms.controller.PenaltyInformationController.toExcel()', 'POST', 1, 'admin', NULL, '/epms/punishment/cover', '127.0.0.1', '内网IP', '{\"params\":{},\"staffId\":6}', NULL, 0, NULL, '2022-08-28 23:00:14');
INSERT INTO `sys_oper_log` VALUES (285, '处罚信息', 5, 'com.ruoyi.epms.controller.PenaltyInformationController.toExcel()', 'POST', 1, 'admin', NULL, '/epms/punishment/cover', '127.0.0.1', '内网IP', '{\"params\":{},\"staffId\":8}', NULL, 0, NULL, '2022-08-28 23:01:47');
INSERT INTO `sys_oper_log` VALUES (286, '处罚信息', 5, 'com.ruoyi.epms.controller.PenaltyInformationController.toExcel()', 'POST', 1, 'admin', NULL, '/epms/punishment/cover', '127.0.0.1', '内网IP', '{\"params\":{},\"staffId\":7}', NULL, 0, NULL, '2022-08-28 23:11:44');
INSERT INTO `sys_oper_log` VALUES (287, '处罚信息', 2, 'com.ruoyi.epms.controller.PenaltyInformationController.edit()', 'PUT', 1, 'admin', NULL, '/epms/punishment', '127.0.0.1', '内网IP', '{\"basis\":\"kkkkk\",\"department\":\"ttttt\",\"edcuation\":0,\"fact\":\"hhhh11\",\"id\":5,\"institutionName\":\"dddd\",\"institutionalLevel\":2,\"modifyTime\":\"2022-08-28T23:13:02.405+08:00\",\"params\":{},\"politicalStatus\":1,\"post\":\"eeddd66\",\"punishmentAgency\":3,\"qualifications\":0,\"staffId\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-28 23:13:02');
INSERT INTO `sys_oper_log` VALUES (288, '处罚信息', 2, 'com.ruoyi.epms.controller.PenaltyInformationController.edit()', 'PUT', 1, 'admin', NULL, '/epms/punishment', '127.0.0.1', '内网IP', '{\"basis\":\"为金融额外加入姐1夫离开都是姐夫来的是姐夫浪费了多少看姐夫龙神的姐夫快乐的u饿哦为i入额我i入房间里看书的房间里看到宋鄂无任何方式打开房间联社肯德基\",\"department\":\"营业部\",\"edcuation\":0,\"fact\":\"领导是否健康绿色的姐夫克里斯蒂姐夫开了手机打开链接发到家哦IEu往日藕粉监考老师的讲课了附近的私哦副i哦微风努力肯定是姐夫来德克士姐夫了空加快立法的技术开发廉价的索科洛夫监控力度斯捷克洛夫圣诞节快乐放假哦为u肉i和法律手段姐夫离开\",\"id\":6,\"institutionName\":\"营业部\",\"institutionalLevel\":3,\"modifyTime\":\"2022-08-28T23:13:16.663+08:00\",\"params\":{},\"politicalStatus\":1,\"post\":\"客户经理\",\"punishmentAgency\":5,\"qualifications\":0,\"staffId\":10}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-28 23:13:16');
INSERT INTO `sys_oper_log` VALUES (289, '处罚信息', 2, 'com.ruoyi.epms.controller.PenaltyInformationController.edit()', 'PUT', 1, 'admin', NULL, '/epms/punishment', '127.0.0.1', '内网IP', '{\"basis\":\"史蒂夫看见了零2零落落零零落落零零落落零零落落零零落落零零落落零零落落\",\"department\":\"营业部\",\"edcuation\":2,\"fact\":\"将斯库拉多夫反反复复反反复复反反复复\",\"id\":7,\"institutionName\":\"营业部\",\"institutionalLevel\":2,\"modifyTime\":\"2022-08-28T23:13:22.181+08:00\",\"params\":{},\"politicalStatus\":3,\"post\":\"员工\",\"punishmentAgency\":1,\"qualifications\":0,\"staffId\":9}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-28 23:13:22');
INSERT INTO `sys_oper_log` VALUES (290, '处罚信息', 2, 'com.ruoyi.epms.controller.PenaltyInformationController.edit()', 'PUT', 1, 'admin', NULL, '/epms/punishment', '127.0.0.1', '内网IP', '{\"basis\":\"呃呃呃呃呃呃呃呃呃呃呃呃呃呃3\",\"department\":\"阿拉支行\",\"edcuation\":1,\"fact\":\"肥嘟嘟的点点滴滴点点滴滴\",\"id\":8,\"institutionName\":\"官渡农合行\",\"institutionalLevel\":3,\"modifyTime\":\"2022-08-28T23:13:25.558+08:00\",\"params\":{},\"politicalStatus\":1,\"post\":\"员工\",\"punishmentAgency\":4,\"qualifications\":0,\"staffId\":7}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-28 23:13:25');
INSERT INTO `sys_oper_log` VALUES (291, '处罚信息', 1, 'com.ruoyi.epms.controller.PenaltyInformationController.add()', 'POST', 1, 'admin', NULL, '/epms/punishment', '127.0.0.1', '内网IP', '{\"basis\":\"445555555555555555555555\",\"createTime\":\"2022-08-28T23:13:52.065+08:00\",\"department\":\"2222222222222222\",\"deptId\":103,\"edcuation\":1,\"fact\":\"4444444444444444\",\"id\":9,\"institutionName\":\"111111111111\",\"institutionalLevel\":2,\"params\":{},\"politicalStatus\":1,\"post\":\"333333333333333\",\"punishmentAgency\":3,\"qualifications\":0,\"staffId\":5,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-28 23:13:52');
INSERT INTO `sys_oper_log` VALUES (292, '处罚信息', 2, 'com.ruoyi.epms.controller.PenaltyInformationController.edit()', 'PUT', 1, 'admin', NULL, '/epms/punishment', '127.0.0.1', '内网IP', '{\"basis\":\"为金融额外加入姐1夫离开都是姐夫来的是姐夫浪费了多少看姐夫龙神的姐夫快乐的u饿哦为i入额我i入房间里看书的房间里看到宋鄂无任何方式打开房间联社肯德基\",\"department\":\"营业部\",\"edcuation\":0,\"fact\":\"领导是否健康绿色的姐夫克里斯蒂姐夫开了手机打开链接发到家哦IEu往日藕粉监考老师的讲课了附近的私哦副i哦微风努力肯定是姐夫来德克士姐夫了空加快立法的技术开发廉价的索科洛夫监控力度斯捷克洛夫圣诞节快乐放假哦为u肉i和法律手段姐夫离开\",\"fileNo\":\"10086\",\"id\":6,\"institutionName\":\"营业部\",\"institutionalLevel\":3,\"modifyTime\":\"2022-09-03T15:42:50.249+08:00\",\"params\":{},\"politicalStatus\":1,\"post\":\"客户经理\",\"punishmentAgency\":5,\"qualifications\":0,\"staffId\":10,\"workTime\":\"2021-2025\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-03 15:42:50');
INSERT INTO `sys_oper_log` VALUES (293, '处罚信息', 2, 'com.ruoyi.epms.controller.PenaltyInformationController.edit()', 'PUT', 1, 'admin', NULL, '/epms/punishment', '127.0.0.1', '内网IP', '{\"basis\":\"445555555555555555555555\",\"department\":\"2222222222222222\",\"edcuation\":1,\"fact\":\"4444444444444444\",\"id\":9,\"institutionName\":\"111111111111\",\"institutionalLevel\":2,\"modifyTime\":\"2022-09-03T15:47:33.904+08:00\",\"params\":{},\"politicalStatus\":1,\"post\":\"333333333333333\",\"punishmentAgency\":3,\"qualifications\":0,\"staffId\":5}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-03 15:47:33');
INSERT INTO `sys_oper_log` VALUES (294, '处罚信息', 2, 'com.ruoyi.epms.controller.PenaltyInformationController.edit()', 'PUT', 1, 'admin', NULL, '/epms/punishment', '127.0.0.1', '内网IP', '{\"basis\":\"445555555555555555555555\",\"department\":\"2222222222222222\",\"edcuation\":1,\"fact\":\"4444444444444444\",\"id\":9,\"institutionName\":\"111111111111\",\"institutionalLevel\":2,\"modifyTime\":\"2022-09-03T15:47:40.491+08:00\",\"params\":{},\"politicalStatus\":1,\"post\":\"333333333333333\",\"punishmentAgency\":3,\"qualifications\":0,\"staffId\":4}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-03 15:47:40');
INSERT INTO `sys_oper_log` VALUES (295, '处罚信息', 2, 'com.ruoyi.epms.controller.PenaltyInformationController.edit()', 'PUT', 1, 'admin', NULL, '/epms/punishment', '127.0.0.1', '内网IP', '{\"basis\":\"445555555555555555555555\",\"department\":\"2222222222222222\",\"edcuation\":1,\"fact\":\"4444444444444444\",\"id\":9,\"institutionName\":\"111111111111\",\"institutionalLevel\":2,\"modifyTime\":\"2022-09-03T15:47:52.928+08:00\",\"params\":{},\"politicalStatus\":1,\"post\":\"333333333333333\",\"punishmentAgency\":3,\"qualifications\":0,\"staffId\":5}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-03 15:47:52');
INSERT INTO `sys_oper_log` VALUES (296, '处罚信息', 2, 'com.ruoyi.epms.controller.PenaltyInformationController.edit()', 'PUT', 1, 'admin', NULL, '/epms/punishment', '127.0.0.1', '内网IP', '{\"basis\":\"445555555555555555555555\",\"department\":\"2222222222222222\",\"edcuation\":1,\"fact\":\"4444444444444444\",\"fileNo\":\"10254\",\"id\":9,\"institutionName\":\"111111111111\",\"institutionalLevel\":2,\"modifyTime\":\"2022-09-03T15:48:09.193+08:00\",\"params\":{},\"politicalStatus\":1,\"post\":\"333333333333333\",\"punishmentAgency\":3,\"qualifications\":0,\"staffId\":5,\"workTime\":\"2021-2025\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-03 15:48:09');
INSERT INTO `sys_oper_log` VALUES (297, '处罚信息', 2, 'com.ruoyi.epms.controller.PenaltyInformationController.edit()', 'PUT', 1, 'admin', NULL, '/epms/punishment', '127.0.0.1', '内网IP', '{\"basis\":\"kkkkk\",\"department\":\"ttttt\",\"edcuation\":1,\"fact\":\"hhhh11\",\"id\":5,\"institutionName\":\"dddd\",\"institutionalLevel\":2,\"modifyTime\":\"2022-09-03T16:31:08.552+08:00\",\"params\":{},\"politicalStatus\":1,\"post\":\"eeddd66\",\"punishmentAgency\":3,\"qualifications\":0,\"staffId\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-03 16:31:08');
INSERT INTO `sys_oper_log` VALUES (298, '处罚信息', 2, 'com.ruoyi.epms.controller.PenaltyInformationController.edit()', 'PUT', 1, 'admin', NULL, '/epms/punishment', '127.0.0.1', '内网IP', '{\"basis\":\"kkkkk\",\"department\":\"ttttt\",\"edcuation\":1,\"fact\":\"hhhh11\",\"id\":5,\"institutionName\":\"dddd\",\"institutionalLevel\":2,\"modifyTime\":\"2022-09-03T16:31:23.864+08:00\",\"params\":{},\"politicalStatus\":1,\"post\":\"eeddd66\",\"punishmentAgency\":3,\"qualifications\":0,\"staffId\":5}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-03 16:31:23');
INSERT INTO `sys_oper_log` VALUES (299, '处罚信息', 2, 'com.ruoyi.epms.controller.PenaltyInformationController.edit()', 'PUT', 1, 'admin', NULL, '/epms/punishment', '127.0.0.1', '内网IP', '{\"basis\":\"445555555555555555555555\",\"department\":\"2222222222222222\",\"edcuation\":1,\"fact\":\"4444444444444444\",\"fileNo\":\"10254\",\"id\":9,\"institutionName\":\"111111111111\",\"institutionalLevel\":2,\"modifyTime\":\"2022-09-03T16:34:54.346+08:00\",\"params\":{},\"politicalStatus\":1,\"post\":\"333333333333333\",\"punishmentAgency\":3,\"qualifications\":0,\"staffId\":4,\"workTime\":\"2021-2025\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-03 16:34:54');
INSERT INTO `sys_oper_log` VALUES (300, '处罚信息', 2, 'com.ruoyi.epms.controller.PenaltyInformationController.edit()', 'PUT', 1, 'admin', NULL, '/epms/punishment', '127.0.0.1', '内网IP', '{\"basis\":\"445555555555555555555555\",\"department\":\"2222222222222222\",\"edcuation\":1,\"fact\":\"4444444444444444\",\"fileNo\":\"10254\",\"id\":9,\"institutionName\":\"111111111111\",\"institutionalLevel\":2,\"modifyTime\":\"2022-09-03T16:44:44.969+08:00\",\"params\":{},\"politicalStatus\":1,\"post\":\"333333333333333\",\"punishmentAgency\":3,\"qualifications\":1,\"workTime\":\"2021-2025\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-03 16:44:45');
INSERT INTO `sys_oper_log` VALUES (301, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '\"penalty_list\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-03 17:49:37');
INSERT INTO `sys_oper_log` VALUES (302, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"list\",\"className\":\"PenaltyList\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":22,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2022-09-03 17:49:37\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"PenaltyInfoId\",\"columnComment\":\"处罚明细ID\",\"columnId\":23,\"columnName\":\"penalty_info_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2022-09-03 17:49:37\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"0\",\"isRequired\":\"1\",\"javaField\":\"penaltyInfoId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"PenaltyType\",\"columnComment\":\"处罚类型\",\"columnId\":24,\"columnName\":\"penalty_type\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2022-09-03 17:49:37\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"penaltyType\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"PenaltyData\",\"columnComment\":\"处罚子项\",\"columnId\":25,\"columnName\":\"penalty_data\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2022-09-03 17:49:37\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"penaltyData\",\"javaType\":\"Long\",\"list\":true,\"param', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-03 17:51:29');
INSERT INTO `sys_oper_log` VALUES (303, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"data\",\"className\":\"PenaltyList\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":22,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2022-09-03 17:49:37\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2022-09-03 17:51:29\",\"usableColumn\":false},{\"capJavaField\":\"PenaltyInfoId\",\"columnComment\":\"处罚明细ID\",\"columnId\":23,\"columnName\":\"penalty_info_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2022-09-03 17:49:37\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"0\",\"isRequired\":\"1\",\"javaField\":\"penaltyInfoId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2022-09-03 17:51:29\",\"usableColumn\":false},{\"capJavaField\":\"PenaltyType\",\"columnComment\":\"处罚类型\",\"columnId\":24,\"columnName\":\"penalty_type\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2022-09-03 17:49:37\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"penaltyType\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2022-09-03 17:51:29\",\"usableColumn\":false},{\"capJavaField\":\"PenaltyData\",\"columnComment\":\"处罚子项\",\"columnId\":25,\"columnName\":\"penalty_data\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2022-09-03 17:49:37\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-09-04 14:18:12');
INSERT INTO `sys_oper_log` VALUES (304, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-09-04 14:18:16');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2022-08-12 14:34:27', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2022-08-12 14:34:27', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2022-08-12 14:34:27', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2022-08-12 14:34:27', '', NULL, '普通角色');
INSERT INTO `sys_role` VALUES (100, '处罚管理人员', 'punishment', 1, '4', 1, 1, '0', '0', 'admin', '2022-08-16 11:20:42', '', '2022-08-24 05:26:12', NULL);

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 116);
INSERT INTO `sys_role_menu` VALUES (2, 117);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);
INSERT INTO `sys_role_menu` VALUES (100, 2000);
INSERT INTO `sys_role_menu` VALUES (100, 2013);
INSERT INTO `sys_role_menu` VALUES (100, 2014);
INSERT INTO `sys_role_menu` VALUES (100, 2015);
INSERT INTO `sys_role_menu` VALUES (100, 2016);
INSERT INTO `sys_role_menu` VALUES (100, 2017);
INSERT INTO `sys_role_menu` VALUES (100, 2018);
INSERT INTO `sys_role_menu` VALUES (100, 2019);
INSERT INTO `sys_role_menu` VALUES (100, 2020);
INSERT INTO `sys_role_menu` VALUES (100, 2021);
INSERT INTO `sys_role_menu` VALUES (100, 2022);
INSERT INTO `sys_role_menu` VALUES (100, 2023);
INSERT INTO `sys_role_menu` VALUES (100, 2024);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 104 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2022-09-04 14:10:02', 'admin', '2022-08-12 14:34:27', '', '2022-09-04 14:10:01', '管理员');
INSERT INTO `sys_user` VALUES (2, 103, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2022-08-12 14:34:27', 'admin', '2022-08-12 14:34:27', 'admin', '2022-08-24 04:42:45', '测试员');
INSERT INTO `sys_user` VALUES (100, 101, '测试人员', 'cs01', '00', '123@qq.com', '18214582526', '0', '', '$2a$10$fdHgvftDvuFhN20nZBOB0uWHq.88Sztbmqa7Qm6/GC0BRMeN.2vhi', '0', '2', '', NULL, 'admin', '2022-08-16 11:21:39', 'admin', '2022-08-16 11:21:56', NULL);
INSERT INTO `sys_user` VALUES (101, 100, 'cs01', '测试', '00', '222@qq.com', '18224363728', '0', '', '$2a$10$cPq15m0K1apDnWYj.JBIHuL31HqzmyxzzGaRxxbbkbrrV4IMoDmIe', '0', '2', '127.0.0.1', '2022-08-16 19:23:49', 'admin', '2022-08-16 11:23:29', '', '2022-08-16 11:23:49', NULL);
INSERT INTO `sys_user` VALUES (102, 202, 'gd01', '官渡', '00', '', '', '0', '', '$2a$10$UPLKN3yzroJxZqY6R9Lt9.MPFch6m.2u3lLg2AR1Yboj2TT.Z0QkW', '0', '0', '127.0.0.1', '2022-08-25 12:39:03', 'admin', '2022-08-24 04:42:26', '', '2022-08-25 04:39:02', NULL);
INSERT INTO `sys_user` VALUES (103, 203, '营业部', 'yyb01', '00', '', '', '0', '', '$2a$10$xLEvpmNqZQXMqvOt6.39t.3dgrrePogDUJ5bvq2eoI02BKjMRZlf2', '0', '0', '127.0.0.1', '2022-08-28 22:19:15', 'admin', '2022-08-24 05:26:41', 'admin', '2022-08-28 22:19:14', NULL);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 4);
INSERT INTO `sys_user_post` VALUES (102, 4);
INSERT INTO `sys_user_post` VALUES (103, 4);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (102, 100);
INSERT INTO `sys_user_role` VALUES (103, 100);

SET FOREIGN_KEY_CHECKS = 1;
