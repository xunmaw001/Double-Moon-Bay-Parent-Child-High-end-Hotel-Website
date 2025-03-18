DROP DATABASE IF EXISTS jspPG6Y3;

CREATE DATABASE jspPG6Y3 default character set utf8mb4 collate utf8mb4_general_ci;

USE jspPG6Y3;

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`yonghuming` varchar(200)  UNIQUE   COMMENT '用户名',
	`mima` varchar(200)    COMMENT '密码',
	`xingming` varchar(200)    COMMENT '姓名',
	`xingbie` varchar(200)    COMMENT '性别',
	`lianxidianhua` varchar(200)    COMMENT '联系电话',
	`dianziyouxiang` varchar(200)    COMMENT '电子邮箱',
	`shenfenzhenghao` varchar(200)    COMMENT '身份证号',
	`gerenzhaopian` varchar(200)    COMMENT '个人照片',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户';

INSERT INTO yonghu(yonghuming,mima,xingming,xingbie,lianxidianhua,dianziyouxiang,shenfenzhenghao,gerenzhaopian) VALUES('用户1','123456','姓名1','男','020-89819991','773890001@qq.com','440300199101010001','yonghu_gerenzhaopian1');
INSERT INTO yonghu(yonghuming,mima,xingming,xingbie,lianxidianhua,dianziyouxiang,shenfenzhenghao,gerenzhaopian) VALUES('用户2','123456','姓名2','男','020-89819992','773890002@qq.com','440300199202020002','yonghu_gerenzhaopian2');
INSERT INTO yonghu(yonghuming,mima,xingming,xingbie,lianxidianhua,dianziyouxiang,shenfenzhenghao,gerenzhaopian) VALUES('用户3','123456','姓名3','男','020-89819993','773890003@qq.com','440300199303030003','yonghu_gerenzhaopian3');


DROP TABLE IF EXISTS `kefangleibie`;

CREATE TABLE `kefangleibie` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`kefangleixing` varchar(200)    COMMENT '客房类型',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客房类别';

INSERT INTO kefangleibie(kefangleixing) VALUES('客房类型1');
INSERT INTO kefangleibie(kefangleixing) VALUES('客房类型2');
INSERT INTO kefangleibie(kefangleixing) VALUES('客房类型3');


DROP TABLE IF EXISTS `kefangxinxi`;

CREATE TABLE `kefangxinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`kefangbianhao` varchar(200)  UNIQUE   COMMENT '客房编号',
	`kefangleixing` varchar(200)    COMMENT '客房类型',
	`kefangleibie` varchar(200)    COMMENT '客房类别',
	`kefangzhaopian` varchar(200)    COMMENT '客房照片',
	`kefangmianji` varchar(200)    COMMENT '客房面积',
	`kefanglouceng` varchar(200)    COMMENT '客房楼层',
	`mianfeikuandai` varchar(200)    COMMENT '免费宽带',
	`menshijia` int    COMMENT '门市价',
	`shengyufangjian` int    COMMENT '剩余房间',
	`kefangjieshao` longtext    COMMENT '客房介绍',
	`thumbsupnum` int   default '0' COMMENT '赞',
	`crazilynum` int   default '0' COMMENT '踩',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客房信息';

INSERT INTO kefangxinxi(kefangbianhao,kefangleixing,kefangleibie,kefangzhaopian,kefangmianji,kefanglouceng,mianfeikuandai,menshijia,shengyufangjian,kefangjieshao,thumbsupnum,crazilynum) VALUES('客房编号1','客房类型1','含早餐','kefangxinxi_kefangzhaopian1','客房面积1','客房楼层1','有线宽带',1,1,'客房介绍1',1,1);
INSERT INTO kefangxinxi(kefangbianhao,kefangleixing,kefangleibie,kefangzhaopian,kefangmianji,kefanglouceng,mianfeikuandai,menshijia,shengyufangjian,kefangjieshao,thumbsupnum,crazilynum) VALUES('客房编号2','客房类型2','含早餐','kefangxinxi_kefangzhaopian2','客房面积2','客房楼层2','有线宽带',2,2,'客房介绍2',2,2);
INSERT INTO kefangxinxi(kefangbianhao,kefangleixing,kefangleibie,kefangzhaopian,kefangmianji,kefanglouceng,mianfeikuandai,menshijia,shengyufangjian,kefangjieshao,thumbsupnum,crazilynum) VALUES('客房编号3','客房类型3','含早餐','kefangxinxi_kefangzhaopian3','客房面积3','客房楼层3','有线宽带',3,3,'客房介绍3',3,3);


DROP TABLE IF EXISTS `zengjiafangyuan`;

CREATE TABLE `zengjiafangyuan` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`kefangbianhao` varchar(200)    COMMENT '客房编号',
	`kefangleixing` varchar(200)    COMMENT '客房类型',
	`shengyufangjian` int    COMMENT '剩余房间',
	`dengjiriqi` date    COMMENT '登记日期',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='增加房源';

INSERT INTO zengjiafangyuan(kefangbianhao,kefangleixing,shengyufangjian,dengjiriqi) VALUES('客房编号1','客房类型1',1,CURRENT_TIMESTAMP);
INSERT INTO zengjiafangyuan(kefangbianhao,kefangleixing,shengyufangjian,dengjiriqi) VALUES('客房编号2','客房类型2',2,CURRENT_TIMESTAMP);
INSERT INTO zengjiafangyuan(kefangbianhao,kefangleixing,shengyufangjian,dengjiriqi) VALUES('客房编号3','客房类型3',3,CURRENT_TIMESTAMP);


DROP TABLE IF EXISTS `jianshaofangyuan`;

CREATE TABLE `jianshaofangyuan` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`kefangbianhao` varchar(200)    COMMENT '客房编号',
	`kefangleixing` varchar(200)    COMMENT '客房类型',
	`shengyufangjian` int    COMMENT '剩余房间',
	`dengjiriqi` date    COMMENT '登记日期',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='减少房源';

INSERT INTO jianshaofangyuan(kefangbianhao,kefangleixing,shengyufangjian,dengjiriqi) VALUES('客房编号1','客房类型1',1,CURRENT_TIMESTAMP);
INSERT INTO jianshaofangyuan(kefangbianhao,kefangleixing,shengyufangjian,dengjiriqi) VALUES('客房编号2','客房类型2',2,CURRENT_TIMESTAMP);
INSERT INTO jianshaofangyuan(kefangbianhao,kefangleixing,shengyufangjian,dengjiriqi) VALUES('客房编号3','客房类型3',3,CURRENT_TIMESTAMP);


DROP TABLE IF EXISTS `kefangyuding`;

CREATE TABLE `kefangyuding` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`kefangleixing` varchar(200)    COMMENT '客房类型',
	`kefangleibie` varchar(200)    COMMENT '客房类别',
	`menshijia` varchar(200)    COMMENT '门市价',
	`shengyufangjian` varchar(200)    COMMENT '剩余房间',
	`yudingshuliang` int    COMMENT '预定数量',
	`ruzhutianshu` int    COMMENT '入住天数',
	`ruzhuriqi` date    COMMENT '入住日期',
	`shifujine` varchar(200)    COMMENT '实付金额',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`xingming` varchar(200)    COMMENT '姓名',
	`lianxidianhua` varchar(200)    COMMENT '联系电话',
	`yudingshijian` datetime    COMMENT '预定时间',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	`ispay` varchar(200)   default '未支付' COMMENT '是否支付',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客房预订';

INSERT INTO kefangyuding(kefangleixing,kefangleibie,menshijia,shengyufangjian,yudingshuliang,ruzhutianshu,ruzhuriqi,shifujine,yonghuming,xingming,lianxidianhua,yudingshijian,sfsh,shhf,ispay) VALUES('客房类型1','客房类别1','门市价1','剩余房间1',1,1,CURRENT_TIMESTAMP,'实付金额1','用户名1','姓名1','联系电话1',CURRENT_TIMESTAMP,'否','','未支付');
INSERT INTO kefangyuding(kefangleixing,kefangleibie,menshijia,shengyufangjian,yudingshuliang,ruzhutianshu,ruzhuriqi,shifujine,yonghuming,xingming,lianxidianhua,yudingshijian,sfsh,shhf,ispay) VALUES('客房类型2','客房类别2','门市价2','剩余房间2',2,2,CURRENT_TIMESTAMP,'实付金额2','用户名2','姓名2','联系电话2',CURRENT_TIMESTAMP,'否','','未支付');
INSERT INTO kefangyuding(kefangleixing,kefangleibie,menshijia,shengyufangjian,yudingshuliang,ruzhutianshu,ruzhuriqi,shifujine,yonghuming,xingming,lianxidianhua,yudingshijian,sfsh,shhf,ispay) VALUES('客房类型3','客房类别3','门市价3','剩余房间3',3,3,CURRENT_TIMESTAMP,'实付金额3','用户名3','姓名3','联系电话3',CURRENT_TIMESTAMP,'否','','未支付');


DROP TABLE IF EXISTS `shebeixinxi`;

CREATE TABLE `shebeixinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`shebeibianhao` varchar(200)  UNIQUE   COMMENT '设备编号',
	`shebeimingcheng` varchar(200)    COMMENT '设备名称',
	`shebeitupian` varchar(200)    COMMENT '设备图片',
	`shiyongquyu` varchar(200)    COMMENT '使用区域',
	`shebeizhuangtai` varchar(200)    COMMENT '设备状态',
	`shebeixiangqing` longtext    COMMENT '设备详情',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='设备信息';

INSERT INTO shebeixinxi(shebeibianhao,shebeimingcheng,shebeitupian,shiyongquyu,shebeizhuangtai,shebeixiangqing) VALUES('设备编号1','设备名称1','shebeixinxi_shebeitupian1','使用区域1','空闲','设备详情1');
INSERT INTO shebeixinxi(shebeibianhao,shebeimingcheng,shebeitupian,shiyongquyu,shebeizhuangtai,shebeixiangqing) VALUES('设备编号2','设备名称2','shebeixinxi_shebeitupian2','使用区域2','空闲','设备详情2');
INSERT INTO shebeixinxi(shebeibianhao,shebeimingcheng,shebeitupian,shiyongquyu,shebeizhuangtai,shebeixiangqing) VALUES('设备编号3','设备名称3','shebeixinxi_shebeitupian3','使用区域3','空闲','设备详情3');


DROP TABLE IF EXISTS `qinzihuodong`;

CREATE TABLE `qinzihuodong` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`huodongmingcheng` varchar(200)    COMMENT '活动名称',
	`huodongleixing` varchar(200)    COMMENT '活动类型',
	`huodongfengmian` varchar(200)    COMMENT '活动封面',
	`menpiaojiage` int    COMMENT '门票价格',
	`huodongdidian` varchar(200)    COMMENT '活动地点',
	`kaishishijian` date    COMMENT '开始时间',
	`jieshushijian` date    COMMENT '结束时间',
	`huodongxiangqing` longtext    COMMENT '活动详情',
	`thumbsupnum` int   default '0' COMMENT '赞',
	`crazilynum` int   default '0' COMMENT '踩',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='亲子活动';

INSERT INTO qinzihuodong(huodongmingcheng,huodongleixing,huodongfengmian,menpiaojiage,huodongdidian,kaishishijian,jieshushijian,huodongxiangqing,thumbsupnum,crazilynum) VALUES('活动名称1','儿童娱乐部','qinzihuodong_huodongfengmian1',1,'活动地点1',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,'活动详情1',1,1);
INSERT INTO qinzihuodong(huodongmingcheng,huodongleixing,huodongfengmian,menpiaojiage,huodongdidian,kaishishijian,jieshushijian,huodongxiangqing,thumbsupnum,crazilynum) VALUES('活动名称2','儿童娱乐部','qinzihuodong_huodongfengmian2',2,'活动地点2',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,'活动详情2',2,2);
INSERT INTO qinzihuodong(huodongmingcheng,huodongleixing,huodongfengmian,menpiaojiage,huodongdidian,kaishishijian,jieshushijian,huodongxiangqing,thumbsupnum,crazilynum) VALUES('活动名称3','儿童娱乐部','qinzihuodong_huodongfengmian3',3,'活动地点3',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,'活动详情3',3,3);


DROP TABLE IF EXISTS `menpiaoyuding`;

CREATE TABLE `menpiaoyuding` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`yonghuming` varchar(200)    COMMENT '用户名',
	`xingming` varchar(200)    COMMENT '姓名',
	`huodongmingcheng` varchar(200)    COMMENT '活动名称',
	`huodongleixing` varchar(200)    COMMENT '活动类型',
	`menpiaojiage` varchar(200)    COMMENT '门票价格',
	`kaishishijian` varchar(200)    COMMENT '开始时间',
	`jieshushijian` varchar(200)    COMMENT '结束时间',
	`canjiarenshu` int    COMMENT '参加人数',
	`shifujine` varchar(200)    COMMENT '实付金额',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	`ispay` varchar(200)   default '未支付' COMMENT '是否支付',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='门票预定';

INSERT INTO menpiaoyuding(yonghuming,xingming,huodongmingcheng,huodongleixing,menpiaojiage,kaishishijian,jieshushijian,canjiarenshu,shifujine,sfsh,shhf,ispay) VALUES('用户名1','姓名1','活动名称1','活动类型1','门票价格1','开始时间1','结束时间1',1,'实付金额1','否','','未支付');
INSERT INTO menpiaoyuding(yonghuming,xingming,huodongmingcheng,huodongleixing,menpiaojiage,kaishishijian,jieshushijian,canjiarenshu,shifujine,sfsh,shhf,ispay) VALUES('用户名2','姓名2','活动名称2','活动类型2','门票价格2','开始时间2','结束时间2',2,'实付金额2','否','','未支付');
INSERT INTO menpiaoyuding(yonghuming,xingming,huodongmingcheng,huodongleixing,menpiaojiage,kaishishijian,jieshushijian,canjiarenshu,shifujine,sfsh,shhf,ispay) VALUES('用户名3','姓名3','活动名称3','活动类型3','门票价格3','开始时间3','结束时间3',3,'实付金额3','否','','未支付');


DROP TABLE IF EXISTS `fangxingjieshao`;

CREATE TABLE `fangxingjieshao` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`biaoti` varchar(200)    COMMENT '标题',
	`kefangleixing` varchar(200)    COMMENT '客房类型',
	`kefangzhaopian` varchar(200)    COMMENT '客房照片',
	`kefangjieshao` longtext    COMMENT '客房介绍',
	`thumbsupnum` int   default '0' COMMENT '赞',
	`crazilynum` int   default '0' COMMENT '踩',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='房型介绍';

INSERT INTO fangxingjieshao(biaoti,kefangleixing,kefangzhaopian,kefangjieshao,thumbsupnum,crazilynum) VALUES('标题1','客房类型1','fangxingjieshao_kefangzhaopian1','客房介绍1',1,1);
INSERT INTO fangxingjieshao(biaoti,kefangleixing,kefangzhaopian,kefangjieshao,thumbsupnum,crazilynum) VALUES('标题2','客房类型2','fangxingjieshao_kefangzhaopian2','客房介绍2',2,2);
INSERT INTO fangxingjieshao(biaoti,kefangleixing,kefangzhaopian,kefangjieshao,thumbsupnum,crazilynum) VALUES('标题3','客房类型3','fangxingjieshao_kefangzhaopian3','客房介绍3',3,3);


DROP TABLE IF EXISTS `jiudianzhoubian`;

CREATE TABLE `jiudianzhoubian` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`jingdianmingcheng` varchar(200)    COMMENT '景点名称',
	`jingdianleixing` varchar(200)    COMMENT '景点类型',
	`jingdianfengmian` varchar(200)    COMMENT '景点封面',
	`kaifangshijian` varchar(200)    COMMENT '开放时间',
	`jingdiandizhi` varchar(200)    COMMENT '景点地址',
	`jingdianjieshao` longtext    COMMENT '景点介绍',
	`thumbsupnum` int   default '0' COMMENT '赞',
	`crazilynum` int   default '0' COMMENT '踩',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='酒店周边';

INSERT INTO jiudianzhoubian(jingdianmingcheng,jingdianleixing,jingdianfengmian,kaifangshijian,jingdiandizhi,jingdianjieshao,thumbsupnum,crazilynum) VALUES('景点名称1','亲子','jiudianzhoubian_jingdianfengmian1','开放时间1','景点地址1','景点介绍1',1,1);
INSERT INTO jiudianzhoubian(jingdianmingcheng,jingdianleixing,jingdianfengmian,kaifangshijian,jingdiandizhi,jingdianjieshao,thumbsupnum,crazilynum) VALUES('景点名称2','亲子','jiudianzhoubian_jingdianfengmian2','开放时间2','景点地址2','景点介绍2',2,2);
INSERT INTO jiudianzhoubian(jingdianmingcheng,jingdianleixing,jingdianfengmian,kaifangshijian,jingdiandizhi,jingdianjieshao,thumbsupnum,crazilynum) VALUES('景点名称3','亲子','jiudianzhoubian_jingdianfengmian3','开放时间3','景点地址3','景点介绍3',3,3);


DROP TABLE IF EXISTS `jiudiancaiwu`;

CREATE TABLE `jiudiancaiwu` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`caiwubiaoti` varchar(200)    COMMENT '财务标题',
	`nianfen` varchar(200)    COMMENT '年份',
	`yuefen` varchar(200)    COMMENT '月份',
	`kefangshouru` int    COMMENT '客房收入',
	`qitashouru` varchar(200)    COMMENT '其他收入',
	`shourujine` int    COMMENT '收入金额',
	`zhichujine` int    COMMENT '支出金额',
	`jieyujine` varchar(200)    COMMENT '结余金额',
	`dengjiriqi` date    COMMENT '登记日期',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='酒店财务';

INSERT INTO jiudiancaiwu(caiwubiaoti,nianfen,yuefen,kefangshouru,qitashouru,shourujine,zhichujine,jieyujine,dengjiriqi) VALUES('财务标题1','年份1','一月份',1,'其他收入1',1,1,'结余金额1',CURRENT_TIMESTAMP);
INSERT INTO jiudiancaiwu(caiwubiaoti,nianfen,yuefen,kefangshouru,qitashouru,shourujine,zhichujine,jieyujine,dengjiriqi) VALUES('财务标题2','年份2','一月份',2,'其他收入2',2,2,'结余金额2',CURRENT_TIMESTAMP);
INSERT INTO jiudiancaiwu(caiwubiaoti,nianfen,yuefen,kefangshouru,qitashouru,shourujine,zhichujine,jieyujine,dengjiriqi) VALUES('财务标题3','年份3','一月份',3,'其他收入3',3,3,'结余金额3',CURRENT_TIMESTAMP);


DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`userid` bigint NOT NULL   COMMENT '用户id',
	`adminid` bigint    COMMENT '管理员id',
	`ask` longtext    COMMENT '提问',
	`reply` longtext    COMMENT '回复',
	`isreply` int    COMMENT '是否回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客服聊天表';

INSERT INTO chat(userid,adminid,ask,reply,isreply) VALUES(1,1,'提问1','回复1',1);
INSERT INTO chat(userid,adminid,ask,reply,isreply) VALUES(2,2,'提问2','回复2',2);
INSERT INTO chat(userid,adminid,ask,reply,isreply) VALUES(3,3,'提问3','回复3',3);


DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`userid` bigint NOT NULL   COMMENT '用户id',
	`refid` bigint    COMMENT '收藏id',
	`tablename` varchar(200)    COMMENT '表名',
	`name` varchar(200) NOT NULL   COMMENT '收藏名称',
	`picture` varchar(200) NOT NULL   COMMENT '收藏图片',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

INSERT INTO storeup(userid,refid,tablename,name,picture) VALUES(1,1,'表名1','收藏名称1','storeup_picture1');
INSERT INTO storeup(userid,refid,tablename,name,picture) VALUES(2,2,'表名2','收藏名称2','storeup_picture2');
INSERT INTO storeup(userid,refid,tablename,name,picture) VALUES(3,3,'表名3','收藏名称3','storeup_picture3');


DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`title` varchar(200) NOT NULL   COMMENT '标题',
	`picture` varchar(200) NOT NULL   COMMENT '图片',
	`content` longtext NOT NULL   COMMENT '内容',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

INSERT INTO news(title,picture,content) VALUES('标题1','news_picture1','内容1');
INSERT INTO news(title,picture,content) VALUES('标题2','news_picture2','内容2');
INSERT INTO news(title,picture,content) VALUES('标题3','news_picture3','内容3');


DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`userid` bigint NOT NULL   COMMENT '留言人id',
	`username` varchar(200)    COMMENT '留言人用户名',
	`content` longtext NOT NULL   COMMENT '留言内容',
	`reply` longtext    COMMENT '回复内容',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='留言板';

INSERT INTO messages(userid,username,content,reply) VALUES(1,'留言人用户名1','留言内容1','回复内容1');
INSERT INTO messages(userid,username,content,reply) VALUES(2,'留言人用户名2','留言内容2','回复内容2');
INSERT INTO messages(userid,username,content,reply) VALUES(3,'留言人用户名3','留言内容3','回复内容3');


DROP TABLE IF EXISTS `discusskefangxinxi`;

CREATE TABLE `discusskefangxinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`refid` bigint NOT NULL   COMMENT '关联表id',
	`content` varchar(200) NOT NULL   COMMENT '评论内容',
	`userid` bigint NOT NULL   COMMENT '用户id',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客房信息评论表';

INSERT INTO discusskefangxinxi(refid,content,userid) VALUES(1,'评论内容1',1);
INSERT INTO discusskefangxinxi(refid,content,userid) VALUES(2,'评论内容2',2);
INSERT INTO discusskefangxinxi(refid,content,userid) VALUES(3,'评论内容3',3);


DROP TABLE IF EXISTS `discussqinzihuodong`;

CREATE TABLE `discussqinzihuodong` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`refid` bigint NOT NULL   COMMENT '关联表id',
	`content` varchar(200) NOT NULL   COMMENT '评论内容',
	`userid` bigint NOT NULL   COMMENT '用户id',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='亲子活动评论表';

INSERT INTO discussqinzihuodong(refid,content,userid) VALUES(1,'评论内容1',1);
INSERT INTO discussqinzihuodong(refid,content,userid) VALUES(2,'评论内容2',2);
INSERT INTO discussqinzihuodong(refid,content,userid) VALUES(3,'评论内容3',3);


DROP TABLE IF EXISTS `discussfangxingjieshao`;

CREATE TABLE `discussfangxingjieshao` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`refid` bigint NOT NULL   COMMENT '关联表id',
	`content` varchar(200) NOT NULL   COMMENT '评论内容',
	`userid` bigint NOT NULL   COMMENT '用户id',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='房型介绍评论表';

INSERT INTO discussfangxingjieshao(refid,content,userid) VALUES(1,'评论内容1',1);
INSERT INTO discussfangxingjieshao(refid,content,userid) VALUES(2,'评论内容2',2);
INSERT INTO discussfangxingjieshao(refid,content,userid) VALUES(3,'评论内容3',3);


DROP TABLE IF EXISTS `discussjiudianzhoubian`;

CREATE TABLE `discussjiudianzhoubian` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`refid` bigint NOT NULL   COMMENT '关联表id',
	`content` varchar(200) NOT NULL   COMMENT '评论内容',
	`userid` bigint NOT NULL   COMMENT '用户id',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='酒店周边评论表';

INSERT INTO discussjiudianzhoubian(refid,content,userid) VALUES(1,'评论内容1',1);
INSERT INTO discussjiudianzhoubian(refid,content,userid) VALUES(2,'评论内容2',2);
INSERT INTO discussjiudianzhoubian(refid,content,userid) VALUES(3,'评论内容3',3);



DROP TABLE IF EXISTS `config`;

CREATE TABLE `config`(
	`id` bigint NOT NULL AUTO_INCREMENT,
	`name` varchar(100) NOT NULL COMMENT '配置参数名称',
	`value` varchar(100) COMMENT '配置参数值',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

insert into config(id,name) values(1,'picture1');
insert into config(id,name) values(2,'picture2');
insert into config(id,name) values(3,'picture3');
insert into config(id,name) values(4,'picture4');
insert into config(id,name) values(5,'picture5');
insert into config(id,name) values(6,'homepage');


DROP TABLE IF EXISTS `users`;

CREATE TABLE `users`(
	`id` bigint NOT NULL AUTO_INCREMENT,
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`password` varchar(100) NOT NULL COMMENT '密码',
	`role` varchar(100) default '管理员' COMMENT '角色',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

insert into users(id,username, password) values(1,'abo','abo');

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token`(
	`id` bigint NOT NULL AUTO_INCREMENT,
	`userid` bigint NOT NULL COMMENT '用户id',
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`tablename` varchar(100) COMMENT '表名',
	`role` varchar(100) COMMENT '角色',
	`token` varchar(200) NOT NULL COMMENT '密码',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	`expiratedtime` timestamp COMMENT '过期时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

