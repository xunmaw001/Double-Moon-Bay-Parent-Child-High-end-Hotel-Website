/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50553
 Source Host           : localhost:3306
 Source Schema         : jsppg6y3

 Target Server Type    : MySQL
 Target Server Version : 50553
 File Encoding         : 65001

 Date: 22/10/2020 16:43:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for chat
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) NULL DEFAULT NULL COMMENT '管理员id',
  `ask` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '提问',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复',
  `isreply` int(11) NULL DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1602839997212 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '客服聊天表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of chat
-- ----------------------------
INSERT INTO `chat` VALUES (1, '2020-10-16 12:04:48', 1, 1, '提问1', '回复1', 1);
INSERT INTO `chat` VALUES (2, '2020-10-16 12:04:48', 2, 2, '提问2', '回复2', 2);
INSERT INTO `chat` VALUES (3, '2020-10-16 12:04:48', 3, 3, '提问3', '回复3', 3);
INSERT INTO `chat` VALUES (1602839997211, '2020-10-16 17:19:56', 1602838630129, NULL, '‍客服 你好\r\n', '你好\r\n', 1);

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '配置文件' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 'picture1', 'http://localhost:8080/jspPG6Y3/upload/1602840376921.jpg');
INSERT INTO `config` VALUES (2, 'picture2', 'http://localhost:8080/jspPG6Y3/upload/1602821974145.jpg');
INSERT INTO `config` VALUES (3, 'picture3', 'http://localhost:8080/jspPG6Y3/upload/1602821980960.jpg');
INSERT INTO `config` VALUES (4, 'picture4', 'http://localhost:8080/jspPG6Y3/upload/1602821987832.jpg');
INSERT INTO `config` VALUES (5, 'picture5', 'http://localhost:8080/jspPG6Y3/upload/1602821995557.jpg');
INSERT INTO `config` VALUES (6, 'homepage', NULL);

-- ----------------------------
-- Table structure for discussfangxingjieshao
-- ----------------------------
DROP TABLE IF EXISTS `discussfangxingjieshao`;
CREATE TABLE `discussfangxingjieshao`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '房型介绍评论表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of discussfangxingjieshao
-- ----------------------------
INSERT INTO `discussfangxingjieshao` VALUES (1, '2020-10-16 12:04:50', 1, '评论内容1', 1);
INSERT INTO `discussfangxingjieshao` VALUES (2, '2020-10-16 12:04:50', 2, '评论内容2', 2);
INSERT INTO `discussfangxingjieshao` VALUES (3, '2020-10-16 12:04:50', 3, '评论内容3', 3);

-- ----------------------------
-- Table structure for discussjiudianzhoubian
-- ----------------------------
DROP TABLE IF EXISTS `discussjiudianzhoubian`;
CREATE TABLE `discussjiudianzhoubian`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '酒店周边评论表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of discussjiudianzhoubian
-- ----------------------------
INSERT INTO `discussjiudianzhoubian` VALUES (1, '2020-10-16 12:04:50', 1, '评论内容1', 1);
INSERT INTO `discussjiudianzhoubian` VALUES (2, '2020-10-16 12:04:50', 2, '评论内容2', 2);
INSERT INTO `discussjiudianzhoubian` VALUES (3, '2020-10-16 12:04:50', 3, '评论内容3', 3);

-- ----------------------------
-- Table structure for discusskefangxinxi
-- ----------------------------
DROP TABLE IF EXISTS `discusskefangxinxi`;
CREATE TABLE `discusskefangxinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1602839827943 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '客房信息评论表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of discusskefangxinxi
-- ----------------------------
INSERT INTO `discusskefangxinxi` VALUES (1, '2020-10-16 12:04:49', 1, '评论内容1', 1);
INSERT INTO `discusskefangxinxi` VALUES (2, '2020-10-16 12:04:49', 2, '评论内容2', 2);
INSERT INTO `discusskefangxinxi` VALUES (3, '2020-10-16 12:04:49', 3, '评论内容3', 3);
INSERT INTO `discusskefangxinxi` VALUES (1602838709281, '2020-10-16 16:58:28', 1602821836081, '还行', 1602838630129);
INSERT INTO `discusskefangxinxi` VALUES (1602839827942, '2020-10-16 17:17:07', 1602837680451, '挺好看的额', 1602838630129);

-- ----------------------------
-- Table structure for discussqinzihuodong
-- ----------------------------
DROP TABLE IF EXISTS `discussqinzihuodong`;
CREATE TABLE `discussqinzihuodong`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1602839868479 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '亲子活动评论表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of discussqinzihuodong
-- ----------------------------
INSERT INTO `discussqinzihuodong` VALUES (1, '2020-10-16 12:04:49', 1, '评论内容1', 1);
INSERT INTO `discussqinzihuodong` VALUES (2, '2020-10-16 12:04:49', 2, '评论内容2', 2);
INSERT INTO `discussqinzihuodong` VALUES (3, '2020-10-16 12:04:50', 3, '评论内容3', 3);
INSERT INTO `discussqinzihuodong` VALUES (1602839868478, '2020-10-16 17:17:48', 1602822454994, '带小孩子参加很好', 1602838630129);

-- ----------------------------
-- Table structure for fangxingjieshao
-- ----------------------------
DROP TABLE IF EXISTS `fangxingjieshao`;
CREATE TABLE `fangxingjieshao`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `biaoti` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `kefangleixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客房类型',
  `kefangzhaopian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客房照片',
  `kefangjieshao` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '客房介绍',
  `thumbsupnum` int(11) NULL DEFAULT 0 COMMENT '赞',
  `crazilynum` int(11) NULL DEFAULT 0 COMMENT '踩',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1602840279064 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '房型介绍' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fangxingjieshao
-- ----------------------------
INSERT INTO `fangxingjieshao` VALUES (1602837165531, '2020-10-16 16:32:45', '阳阳亲子房介绍', '阳阳主题亲子房', 'http://localhost:8080/jspPG6Y3/upload/1602839655037.jpg', '窗明几净  优雅舒bai适  富丽堂皇  宾至如归金碧辉煌 高大雄伟 小巧玲珑 别具一格古色古香 雅俗共赏 宽敞明亮 屋舍俨然优雅不俗 古色古香 青砖壁瓦 琼楼玉宇 雕栏玉砌夕阳的余晖散落在塞纳河面上,复古式的大理石砌成的教堂伫立在岸旁.远处,近处,前方,都轰隆隆地发着沉闷的马达声；路边,船上,掺和这有节奏的奏乐,依旧有三两个游客行人在琐琐屑屑地交谈着.一座平拱长桥给它添上了富有生命意义的符号.夜登上了舞台,天边最后的光芒消失殆尽,越过河面,灯的亮已照了夜的黑.埃菲尔铁塔闪烁着世人给它披上的光芒,只是如此地发着光,却映亮了头顶漆黑的夜.有回到家的温馨，有伸懒腰时的舒服天有情，夜夜星光灿烂；地有情，日日锦绣团员人有情，处处欢声笑语；酒店有情，这里高朋满座。沐浴过皓洁的明月感受着家一样的温暖希望您在这渡过美丽而又难忘每一天。酒店的成长，犹如二岁孩童的成长一般，离不开顾客的呵护与关爱；酒店的成长，犹如茁壮成长的幼苗一般，离不开各位员工的辛勤与耕耘。\r\n', 1, 0);
INSERT INTO `fangxingjieshao` VALUES (1602840279063, '2020-10-16 17:24:38', '阳阳亲子房2介绍', '汽车王子主题亲子房', 'http://localhost:8080/jspPG6Y3/upload/1602840276687.jpg', '测试\r\n', 0, 0);

-- ----------------------------
-- Table structure for jianshaofangyuan
-- ----------------------------
DROP TABLE IF EXISTS `jianshaofangyuan`;
CREATE TABLE `jianshaofangyuan`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `kefangbianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客房编号',
  `kefangleixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客房类型',
  `shengyufangjian` int(11) NULL DEFAULT NULL COMMENT '剩余房间',
  `dengjiriqi` date NULL DEFAULT NULL COMMENT '登记日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1602840138007 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '减少房源' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of jianshaofangyuan
-- ----------------------------
INSERT INTO `jianshaofangyuan` VALUES (1602822075180, '2020-10-16 12:21:14', '1602821687', '阳阳主题亲子房', 7, '2020-10-16');
INSERT INTO `jianshaofangyuan` VALUES (1602840138006, '2020-10-16 17:22:17', '1602821687', '阳阳主题亲子房', 3, '2020-10-16');

-- ----------------------------
-- Table structure for jiudiancaiwu
-- ----------------------------
DROP TABLE IF EXISTS `jiudiancaiwu`;
CREATE TABLE `jiudiancaiwu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `caiwubiaoti` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '财务标题',
  `nianfen` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年份',
  `yuefen` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '月份',
  `kefangshouru` int(11) NULL DEFAULT NULL COMMENT '客房收入',
  `qitashouru` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其他收入',
  `shourujine` int(11) NULL DEFAULT NULL COMMENT '收入金额',
  `zhichujine` int(11) NULL DEFAULT NULL COMMENT '支出金额',
  `jieyujine` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '结余金额',
  `dengjiriqi` date NULL DEFAULT NULL COMMENT '登记日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1602840342268 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '酒店财务' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of jiudiancaiwu
-- ----------------------------
INSERT INTO `jiudiancaiwu` VALUES (1602837371046, '2020-10-16 16:36:10', '2020年第一季结束', '2020', '十月份', 60000, '门票收入', 2000, 4520, '57480', '2020-10-16');
INSERT INTO `jiudiancaiwu` VALUES (1602840342267, '2020-10-16 17:25:42', '2020年9月财务', '2020', '九月份', 5000, '其他', 30000, 2222, '32778', '2020-10-16');

-- ----------------------------
-- Table structure for jiudianzhoubian
-- ----------------------------
DROP TABLE IF EXISTS `jiudianzhoubian`;
CREATE TABLE `jiudianzhoubian`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `jingdianmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '景点名称',
  `jingdianleixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '景点类型',
  `jingdianfengmian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '景点封面',
  `kaifangshijian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '开放时间',
  `jingdiandizhi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '景点地址',
  `jingdianjieshao` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '景点介绍',
  `thumbsupnum` int(11) NULL DEFAULT 0 COMMENT '赞',
  `crazilynum` int(11) NULL DEFAULT 0 COMMENT '踩',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1602840305911 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '酒店周边' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of jiudianzhoubian
-- ----------------------------
INSERT INTO `jiudianzhoubian` VALUES (1602837304863, '2020-10-16 16:35:04', '客天下', '亲子', 'http://localhost:8080/jspPG6Y3/upload/1602839665779.jpg', '全天24小时', 'xx省xx市xx县xx路', '兴宁明代古城墙坐落于如今的兴宁市兴城镇北门，据史料记载，明成化三年冬天（1467年），兴宁知县秦宏奏报朝廷核准重建县城，改土垣为砖城，于第二年夏天建成。古城墙分为西北城墙、东北城墙、东南城墙及西城墙，总长1264米，城高1.85丈、周长626丈、雉堞903个，环城掘濠，深0.7丈、宽2丈。在嘉靖四年(1525年)，加建四个城门楼，并更名东门为平远门，西门为阜成门，南门为迎薰门，北门为拱辰门。\r\n', 0, 0);
INSERT INTO `jiudianzhoubian` VALUES (1602840305910, '2020-10-16 17:25:05', '旅游景点', '湖泊', 'http://localhost:8080/jspPG6Y3/upload/1602840302356.jpg', '全天24小时', 'xx省xx市xx县xx路', '', 0, 0);

-- ----------------------------
-- Table structure for kefangleibie
-- ----------------------------
DROP TABLE IF EXISTS `kefangleibie`;
CREATE TABLE `kefangleibie`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `kefangleixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客房类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1602840090121 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '客房类别' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kefangleibie
-- ----------------------------
INSERT INTO `kefangleibie` VALUES (1602821582213, '2020-10-16 12:13:01', '阳阳主题亲子房');
INSERT INTO `kefangleibie` VALUES (1602821609912, '2020-10-16 12:13:29', '海底寻宝主题亲子房');
INSERT INTO `kefangleibie` VALUES (1602821628618, '2020-10-16 12:13:48', '人鱼公主主题亲子房');
INSERT INTO `kefangleibie` VALUES (1602821641592, '2020-10-16 12:14:01', '赛车手主题亲子房');
INSERT INTO `kefangleibie` VALUES (1602821654594, '2020-10-16 12:14:13', '汽车王子主题亲子房');
INSERT INTO `kefangleibie` VALUES (1602821671599, '2020-10-16 12:14:30', '诺丽主题亲子房');
INSERT INTO `kefangleibie` VALUES (1602840090120, '2020-10-16 17:21:29', '爱洛斯-紫');

-- ----------------------------
-- Table structure for kefangxinxi
-- ----------------------------
DROP TABLE IF EXISTS `kefangxinxi`;
CREATE TABLE `kefangxinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `kefangbianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客房编号',
  `kefangleixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客房类型',
  `kefangleibie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客房类别',
  `kefangzhaopian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客房照片',
  `kefangmianji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客房面积',
  `kefanglouceng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客房楼层',
  `mianfeikuandai` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '免费宽带',
  `menshijia` int(11) NULL DEFAULT NULL COMMENT '门市价',
  `shengyufangjian` int(11) NULL DEFAULT NULL COMMENT '剩余房间',
  `kefangjieshao` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '客房介绍',
  `thumbsupnum` int(11) NULL DEFAULT 0 COMMENT '赞',
  `crazilynum` int(11) NULL DEFAULT 0 COMMENT '踩',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `kefangbianhao`(`kefangbianhao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1602840126702 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '客房信息' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kefangxinxi
-- ----------------------------
INSERT INTO `kefangxinxi` VALUES (1602821836081, '2020-10-16 12:17:15', '1602821687', '阳阳主题亲子房', '含早餐', 'http://localhost:8080/jspPG6Y3/upload/1602821787795.jpg', '30平米', '2-4楼', '无线宽带', 600, 16, '<img src=\"http://localhost:8080/jspPG6Y3/upload/1602821826593.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspPG6Y3/upload/1602821826593.jpg\"><img src=\"http://localhost:8080/jspPG6Y3/upload/1602821830741.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspPG6Y3/upload/1602821830741.jpg\">\r\n', 1, 0);
INSERT INTO `kefangxinxi` VALUES (1602837680451, '2020-10-16 16:41:20', '1602837652', '海底寻宝主题亲子房', '含晚餐', 'http://localhost:8080/jspPG6Y3/upload/1602839518528.jpg', '30平米', '2-4楼', '有线宽带', 500, 30, '<img src=\"http://localhost:8080/jspPG6Y3/upload/1602839526763.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspPG6Y3/upload/1602839526763.jpg\"><img src=\"http://localhost:8080/jspPG6Y3/upload/1602839530566.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspPG6Y3/upload/1602839530566.jpg\">\r\n', 1, 0);
INSERT INTO `kefangxinxi` VALUES (1602837732759, '2020-10-16 16:42:12', '1602837710', '诺丽主题亲子房', '含晚餐', 'http://localhost:8080/jspPG6Y3/upload/1602839541505.jpg', '30平米', '2-4楼', '无线宽带', 600, 10, '<img src=\"http://localhost:8080/jspPG6Y3/upload/1602839547421.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspPG6Y3/upload/1602839547421.jpg\">\r\n', 0, 0);
INSERT INTO `kefangxinxi` VALUES (1602837789037, '2020-10-16 16:43:08', '1602837735', '人鱼公主主题亲子房', '含三餐', 'http://localhost:8080/jspPG6Y3/upload/1602839556349.jpg', '30平米', '2-4楼', '有线宽带', 600, 7, '<img src=\"http://localhost:8080/jspPG6Y3/upload/1602839561372.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspPG6Y3/upload/1602839561372.jpg\">\r\n', 0, 0);
INSERT INTO `kefangxinxi` VALUES (1602840126701, '2020-10-16 17:22:06', '1602840099', '爱洛斯-紫', '含三餐', 'http://localhost:8080/jspPG6Y3/upload/1602840107284.jpg', '20平米', '2-4楼', '有线宽带', 800, 5, '<img src=\"http://localhost:8080/jspPG6Y3/upload/1602840125378.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspPG6Y3/upload/1602840125378.jpg\">\r\n', 0, 0);

-- ----------------------------
-- Table structure for kefangyuding
-- ----------------------------
DROP TABLE IF EXISTS `kefangyuding`;
CREATE TABLE `kefangyuding`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `kefangleixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客房类型',
  `kefangleibie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客房类别',
  `menshijia` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '门市价',
  `shengyufangjian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '剩余房间',
  `yudingshuliang` int(11) NULL DEFAULT NULL COMMENT '预定数量',
  `ruzhutianshu` int(11) NULL DEFAULT NULL COMMENT '入住天数',
  `ruzhuriqi` date NULL DEFAULT NULL COMMENT '入住日期',
  `shifujine` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实付金额',
  `yonghuming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `lianxidianhua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `yudingshijian` datetime NULL DEFAULT NULL COMMENT '预定时间',
  `sfsh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审核回复',
  `ispay` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1602839845898 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '客房预订' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kefangyuding
-- ----------------------------
INSERT INTO `kefangyuding` VALUES (1602838693421, '2020-10-16 16:58:12', '阳阳主题亲子房', '含早餐', '600', '10', 2, 2, '2020-10-17', '2400', '001', '张三', '13800000000', '2020-10-16 16:58:10', '是', '欢迎入住', '已支付');
INSERT INTO `kefangyuding` VALUES (1602839845897, '2020-10-16 17:17:25', '海底寻宝主题亲子房', '含晚餐', '500', '30', 2, 3, '2020-10-17', '3000', '001', '张三', '13800000000', '2020-10-16 17:17:25', '', '', '');

-- ----------------------------
-- Table structure for menpiaoyuding
-- ----------------------------
DROP TABLE IF EXISTS `menpiaoyuding`;
CREATE TABLE `menpiaoyuding`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `yonghuming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `huodongmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '活动名称',
  `huodongleixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '活动类型',
  `menpiaojiage` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '门票价格',
  `kaishishijian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '开始时间',
  `jieshushijian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '结束时间',
  `canjiarenshu` int(11) NULL DEFAULT NULL COMMENT '参加人数',
  `shifujine` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实付金额',
  `sfsh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审核回复',
  `ispay` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1602839876101 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '门票预定' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of menpiaoyuding
-- ----------------------------
INSERT INTO `menpiaoyuding` VALUES (1602839876100, '2020-10-16 17:17:55', '001', '张三', '双月湾儿童舞会小剧场', '舞会小剧场', '100', '2020-10-16', '2020-10-18', 3, '300', '是', '1', '已支付');

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '留言人用户名',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '留言内容',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1602839905811 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '留言板' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of messages
-- ----------------------------
INSERT INTO `messages` VALUES (1602839901068, '2020-10-16 17:18:20', 1602838630129, '001', '很好', '谢谢');
INSERT INTO `messages` VALUES (1602839905810, '2020-10-16 17:18:25', 1602838630129, '001', '很好', NULL);

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1602837615804 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '新闻资讯' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (1602837556481, '2020-10-16 16:39:16', '2020年10月最新优惠', 'http://localhost:8080/jspPG6Y3/upload/1602839691743.jpg', '<img src=\"http://localhost:8080/jspPG6Y3/upload/1602839697265.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspPG6Y3/upload/1602839697265.jpg\">\r\n');
INSERT INTO `news` VALUES (1602837588964, '2020-10-16 16:39:48', '关于我们', 'http://localhost:8080/jspPG6Y3/upload/1602839712665.jpg', '关于我们关于我们\r\n');
INSERT INTO `news` VALUES (1602837615803, '2020-10-16 16:40:14', '酒店简介', 'http://localhost:8080/jspPG6Y3/upload/1602839725959.jpg', '<img src=\"http://localhost:8080/jspPG6Y3/upload/1602839730897.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspPG6Y3/upload/1602839730897.jpg\">\r\n');

-- ----------------------------
-- Table structure for qinzihuodong
-- ----------------------------
DROP TABLE IF EXISTS `qinzihuodong`;
CREATE TABLE `qinzihuodong`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `huodongmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '活动名称',
  `huodongleixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '活动类型',
  `huodongfengmian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '活动封面',
  `menpiaojiage` int(11) NULL DEFAULT NULL COMMENT '门票价格',
  `huodongdidian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '活动地点',
  `kaishishijian` date NULL DEFAULT NULL COMMENT '开始时间',
  `jieshushijian` date NULL DEFAULT NULL COMMENT '结束时间',
  `huodongxiangqing` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '活动详情',
  `thumbsupnum` int(11) NULL DEFAULT 0 COMMENT '赞',
  `crazilynum` int(11) NULL DEFAULT 0 COMMENT '踩',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1602840237002 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '亲子活动' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qinzihuodong
-- ----------------------------
INSERT INTO `qinzihuodong` VALUES (1602822454994, '2020-10-16 12:27:34', '双月湾儿童舞会小剧场', '舞会小剧场', 'http://localhost:8080/jspPG6Y3/upload/1602822412253.jpg', 100, '酒店右侧大厅', '2020-10-16', '2020-10-18', '<img src=\"http://localhost:8080/jspPG6Y3/upload/1602822452610.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspPG6Y3/upload/1602822452610.jpg\">\r\n', 1, 0);
INSERT INTO `qinzihuodong` VALUES (1602837829000, '2020-10-16 16:43:48', '双月湾杂技表扬小剧场', '杂技小剧场', 'http://localhost:8080/jspPG6Y3/upload/1602839601579.jpg', 100, '酒店右侧大厅', '2020-10-16', '2020-10-17', '<img src=\"http://localhost:8080/jspPG6Y3/upload/1602839605767.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspPG6Y3/upload/1602839605767.jpg\">\r\n', 0, 0);
INSERT INTO `qinzihuodong` VALUES (1602837873370, '2020-10-16 16:44:32', '双月湾亲子活动区', '儿童娱乐部', 'http://localhost:8080/jspPG6Y3/upload/1602839621008.jpg', 0, '酒店右侧大厅', '2020-10-16', '2020-10-31', '<img src=\"http://localhost:8080/jspPG6Y3/upload/1602839627114.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspPG6Y3/upload/1602839627114.jpg\">\r\n', 0, 0);
INSERT INTO `qinzihuodong` VALUES (1602837905718, '2020-10-16 16:45:05', '双月湾儿童娱乐区', '儿童娱乐部', 'http://localhost:8080/jspPG6Y3/upload/1602839636749.jpg', 0, '酒店右侧大厅', '2020-10-16', '2020-10-16', '<img src=\"http://localhost:8080/jspPG6Y3/upload/1602839640931.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspPG6Y3/upload/1602839640931.jpg\">\r\n', 0, 0);
INSERT INTO `qinzihuodong` VALUES (1602840237001, '2020-10-16 17:23:56', '双月湾儿童综合活动区', '儿童娱乐部', 'http://localhost:8080/jspPG6Y3/upload/1602840226575.jpg', 20, '酒店右侧大厅', '2020-10-16', '2020-10-17', '测试\r\n', 0, 0);

-- ----------------------------
-- Table structure for shebeixinxi
-- ----------------------------
DROP TABLE IF EXISTS `shebeixinxi`;
CREATE TABLE `shebeixinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `shebeibianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '设备编号',
  `shebeimingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '设备名称',
  `shebeitupian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '设备图片',
  `shiyongquyu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '使用区域',
  `shebeizhuangtai` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '设备状态',
  `shebeixiangqing` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '设备详情',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `shebeibianhao`(`shebeibianhao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1602840192978 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '设备信息' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of shebeixinxi
-- ----------------------------
INSERT INTO `shebeixinxi` VALUES (1602822211298, '2020-10-16 12:23:30', '1602822166', '洗衣机', 'http://localhost:8080/jspPG6Y3/upload/1602839572316.jpg', '酒店大堂工作间', '空闲', '');
INSERT INTO `shebeixinxi` VALUES (1602822237960, '2020-10-16 12:23:57', '1602822217', '烘干机', 'http://localhost:8080/jspPG6Y3/upload/1602839580213.jpg', '酒店大堂工作间', '占用', '');
INSERT INTO `shebeixinxi` VALUES (1602822261975, '2020-10-16 12:24:21', '1602822240', '折叠机', 'http://localhost:8080/jspPG6Y3/upload/1602839586889.jpg', '酒店大堂工作间', '维护', '');
INSERT INTO `shebeixinxi` VALUES (1602840192977, '2020-10-16 17:23:12', '1602840180', '洗衣机1', 'http://localhost:8080/jspPG6Y3/upload/1602840187168.jpg', '酒店大堂工作间', '维护', '');

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) NULL DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1602839981507 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收藏表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of storeup
-- ----------------------------
INSERT INTO `storeup` VALUES (1, '2020-10-16 12:04:48', 1, 1, '表名1', '收藏名称1', 'storeup_picture1');
INSERT INTO `storeup` VALUES (2, '2020-10-16 12:04:48', 2, 2, '表名2', '收藏名称2', 'storeup_picture2');
INSERT INTO `storeup` VALUES (3, '2020-10-16 12:04:48', 3, 3, '表名3', '收藏名称3', 'storeup_picture3');
INSERT INTO `storeup` VALUES (1602838677690, '2020-10-16 16:57:57', 1602838630129, 1602821836081, 'kefangxinxi', '600', 'http://localhost:8080/jspPG6Y3/upload/1602821787795.jpg');
INSERT INTO `storeup` VALUES (1602839816185, '2020-10-16 17:16:56', 1602838630129, 1602837680451, 'kefangxinxi', '500', 'http://localhost:8080/jspPG6Y3/upload/1602839518528.jpg');
INSERT INTO `storeup` VALUES (1602839981506, '2020-10-16 17:19:41', 1602838630129, 1602837304863, 'jiudianzhoubian', '客天下', 'http://localhost:8080/jspPG6Y3/upload/1602839665779.jpg');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'token表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 1, 'abo', 'users', '管理员', 'jgmynopi6nf0lwob0z4ltie7v6e23d5z', '2020-10-16 12:06:27', '2020-10-16 18:20:34');
INSERT INTO `token` VALUES (2, 1602838630129, '001', 'yonghu', '用户', 'ya6mlwv7c13dyv9p2lbr594wzj0ls6oc', '2020-10-16 16:57:16', '2020-10-16 18:16:41');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'abo', 'abo', '管理员', '2020-10-16 12:04:51');
INSERT INTO `users` VALUES (2, 'fwy', 'fwy', '管理员', '2020-10-16 17:27:18');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `yonghuming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `dianziyouxiang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电子邮箱',
  `shenfenzhenghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号',
  `gerenzhaopian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '个人照片',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `yonghuming`(`yonghuming`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1602840068602 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES (1602838630129, '2020-10-16 16:57:10', '001', '001', '张三', '女', '13800000000', '123@qq.com', '441400000000000000', 'http://localhost:8080/jspPG6Y3/upload/1602839497850.png');
INSERT INTO `yonghu` VALUES (1602840068601, '2020-10-16 17:21:08', '002', '001', '李四', NULL, '12300000000', '123@qq.com', '441400000000000000', NULL);

-- ----------------------------
-- Table structure for zengjiafangyuan
-- ----------------------------
DROP TABLE IF EXISTS `zengjiafangyuan`;
CREATE TABLE `zengjiafangyuan`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `kefangbianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客房编号',
  `kefangleixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客房类型',
  `shengyufangjian` int(11) NULL DEFAULT NULL COMMENT '剩余房间',
  `dengjiriqi` date NULL DEFAULT NULL COMMENT '登记日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1602840149058 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '增加房源' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of zengjiafangyuan
-- ----------------------------
INSERT INTO `zengjiafangyuan` VALUES (1602822055384, '2020-10-16 12:20:55', '1602821687', '阳阳主题亲子房', 10, '2020-10-16');
INSERT INTO `zengjiafangyuan` VALUES (1602840149057, '2020-10-16 17:22:28', '1602821687', '阳阳主题亲子房', 9, '2020-10-16');

SET FOREIGN_KEY_CHECKS = 1;
