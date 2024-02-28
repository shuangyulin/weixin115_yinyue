/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm28wqy
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm28wqy` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm28wqy`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm28wqy/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm28wqy/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm28wqy/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discussgequxinxi` */

DROP TABLE IF EXISTS `discussgequxinxi`;

CREATE TABLE `discussgequxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617716364048 DEFAULT CHARSET=utf8 COMMENT='歌曲信息评论表';

/*Data for the table `discussgequxinxi` */

insert  into `discussgequxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (81,'2021-04-06 21:26:39',1,1,'用户名1','评论内容1','回复内容1'),(82,'2021-04-06 21:26:39',2,2,'用户名2','评论内容2','回复内容2'),(83,'2021-04-06 21:26:39',3,3,'用户名3','评论内容3','回复内容3'),(84,'2021-04-06 21:26:39',4,4,'用户名4','评论内容4','回复内容4'),(85,'2021-04-06 21:26:39',5,5,'用户名5','评论内容5','回复内容5'),(86,'2021-04-06 21:26:39',6,6,'用户名6','评论内容6','回复内容6'),(1617715890018,'2021-04-06 21:31:29',26,1617715872158,'1','XXX',''),(1617716364047,'2021-04-06 21:39:23',25,1617715872158,'1','真好听','');

/*Table structure for table `gequfenlei` */

DROP TABLE IF EXISTS `gequfenlei`;

CREATE TABLE `gequfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='歌曲分类';

/*Data for the table `gequfenlei` */

insert  into `gequfenlei`(`id`,`addtime`,`leixing`) values (51,'2021-04-06 21:26:39','抒情'),(52,'2021-04-06 21:26:39','类型2'),(53,'2021-04-06 21:26:39','类型3'),(54,'2021-04-06 21:26:39','类型4'),(55,'2021-04-06 21:26:39','类型5'),(56,'2021-04-06 21:26:39','类型6');

/*Table structure for table `gequxinxi` */

DROP TABLE IF EXISTS `gequxinxi`;

CREATE TABLE `gequxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gequmingcheng` varchar(200) NOT NULL COMMENT '歌曲名称',
  `gequfenlei` varchar(200) DEFAULT NULL COMMENT '歌曲分类',
  `zhuanjimingcheng` varchar(200) DEFAULT NULL COMMENT '专辑名称',
  `faxingfang` varchar(200) DEFAULT NULL COMMENT '发行方',
  `geshou` varchar(200) DEFAULT NULL COMMENT '歌手',
  `bofangshizhang` varchar(200) DEFAULT NULL COMMENT '播放时长',
  `yinpin` varchar(200) DEFAULT NULL COMMENT '音频',
  `geci` longtext COMMENT '歌词',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='歌曲信息';

/*Data for the table `gequxinxi` */

insert  into `gequxinxi`(`id`,`addtime`,`gequmingcheng`,`gequfenlei`,`zhuanjimingcheng`,`faxingfang`,`geshou`,`bofangshizhang`,`yinpin`,`geci`,`fengmian`,`clicktime`,`clicknum`) values (21,'2021-04-06 21:26:39','挪威的森林','类型1','XXXXX','XXX','伍佰','20分钟','','<p>XXXXX</p>','http://localhost:8080/ssm28wqy/upload/gequxinxi_fengmian1.jpg','2021-04-06 21:35:55',4),(22,'2021-04-06 21:26:39','歌曲名称2','歌曲分类2','专辑名称2','发行方2','歌手2','播放时长2','','歌词2','http://localhost:8080/ssm28wqy/upload/gequxinxi_fengmian2.jpg','2021-04-06 21:26:39',2),(23,'2021-04-06 21:26:39','歌曲名称3','歌曲分类3','专辑名称3','发行方3','歌手3','播放时长3','','歌词3','http://localhost:8080/ssm28wqy/upload/gequxinxi_fengmian3.jpg','2021-04-06 21:26:39',3),(24,'2021-04-06 21:26:39','歌曲名称4','歌曲分类4','专辑名称4','发行方4','歌手4','播放时长4','','歌词4','http://localhost:8080/ssm28wqy/upload/gequxinxi_fengmian4.jpg','2021-04-06 21:26:39',4),(25,'2021-04-06 21:26:39','歌曲名称5','歌曲分类5','专辑名称5','发行方5','歌手5','播放时长5','','歌词5','http://localhost:8080/ssm28wqy/upload/gequxinxi_fengmian5.jpg','2021-04-06 21:40:19',8),(26,'2021-04-06 21:26:39','歌曲名称6','歌曲分类6','专辑名称6','发行方6','歌手6','播放时长6','','歌词6','http://localhost:8080/ssm28wqy/upload/gequxinxi_fengmian6.jpg','2021-04-06 21:40:17',11);

/*Table structure for table `huiyuanbanli` */

DROP TABLE IF EXISTS `huiyuanbanli`;

CREATE TABLE `huiyuanbanli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `huiyuanmingcheng` varchar(200) DEFAULT NULL COMMENT '会员名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `huiyuanjiage` int(11) DEFAULT NULL COMMENT '会员价格',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617716378495 DEFAULT CHARSET=utf8 COMMENT='会员办理';

/*Data for the table `huiyuanbanli` */

insert  into `huiyuanbanli`(`id`,`addtime`,`zhanghao`,`xingming`,`huiyuanmingcheng`,`leixing`,`huiyuanjiage`,`tupian`,`sfsh`,`shhf`,`ispay`,`userid`) values (41,'2021-04-06 21:26:39','账号1','姓名1','会员名称1','类型1',1,'http://localhost:8080/ssm28wqy/upload/huiyuanbanli_tupian1.jpg','是','','未支付',1),(42,'2021-04-06 21:26:39','账号2','姓名2','会员名称2','类型2',2,'http://localhost:8080/ssm28wqy/upload/huiyuanbanli_tupian2.jpg','是','','未支付',2),(43,'2021-04-06 21:26:39','账号3','姓名3','会员名称3','类型3',3,'http://localhost:8080/ssm28wqy/upload/huiyuanbanli_tupian3.jpg','是','','未支付',3),(44,'2021-04-06 21:26:39','账号4','姓名4','会员名称4','类型4',4,'http://localhost:8080/ssm28wqy/upload/huiyuanbanli_tupian4.jpg','是','','未支付',4),(45,'2021-04-06 21:26:39','账号5','姓名5','会员名称5','类型5',5,'http://localhost:8080/ssm28wqy/upload/huiyuanbanli_tupian5.jpg','是','','未支付',5),(46,'2021-04-06 21:26:39','账号6','姓名6','会员名称6','类型6',6,'http://localhost:8080/ssm28wqy/upload/huiyuanbanli_tupian6.jpg','是','','未支付',6),(1617715915623,'2021-04-06 21:31:55','1','1','会员名称1','类型1',1,'http://localhost:8080/ssm28wqy/upload/huiyuanyouhui_tupian1.jpg','是','办理成功','已支付',1617715872158),(1617716378494,'2021-04-06 21:39:37','1','1','会员名称1','类型1',1,'http://localhost:8080/ssm28wqy/upload/huiyuanyouhui_tupian1.jpg','','','已支付',1617715872158);

/*Table structure for table `huiyuanxinxi` */

DROP TABLE IF EXISTS `huiyuanxinxi`;

CREATE TABLE `huiyuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `huiyuankahao` varchar(200) DEFAULT NULL COMMENT '会员卡号',
  `huiyuanleixing` varchar(200) DEFAULT NULL COMMENT '会员类型',
  `huiyuandengji` int(11) DEFAULT NULL COMMENT '会员等级',
  `banlishijian` date DEFAULT NULL COMMENT '办理时间',
  `daoqishijian` date DEFAULT NULL COMMENT '到期时间',
  `beizhu` longtext COMMENT '备注',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `huiyuankahao` (`huiyuankahao`)
) ENGINE=InnoDB AUTO_INCREMENT=1617716295330 DEFAULT CHARSET=utf8 COMMENT='会员信息';

/*Data for the table `huiyuanxinxi` */

insert  into `huiyuanxinxi`(`id`,`addtime`,`zhanghao`,`xingming`,`huiyuankahao`,`huiyuanleixing`,`huiyuandengji`,`banlishijian`,`daoqishijian`,`beizhu`,`tupian`,`userid`) values (61,'2021-04-06 21:26:39','账号1','姓名1','会员卡号1','会员类型1',1,'2021-04-06','2021-04-06','备注1','http://localhost:8080/ssm28wqy/upload/huiyuanxinxi_tupian1.jpg',1),(62,'2021-04-06 21:26:39','账号2','姓名2','会员卡号2','会员类型2',2,'2021-04-06','2021-04-06','备注2','http://localhost:8080/ssm28wqy/upload/huiyuanxinxi_tupian2.jpg',2),(63,'2021-04-06 21:26:39','账号3','姓名3','会员卡号3','会员类型3',3,'2021-04-06','2021-04-06','备注3','http://localhost:8080/ssm28wqy/upload/huiyuanxinxi_tupian3.jpg',3),(64,'2021-04-06 21:26:39','账号4','姓名4','会员卡号4','会员类型4',4,'2021-04-06','2021-04-06','备注4','http://localhost:8080/ssm28wqy/upload/huiyuanxinxi_tupian4.jpg',4),(65,'2021-04-06 21:26:39','账号5','姓名5','会员卡号5','会员类型5',5,'2021-04-06','2021-04-06','备注5','http://localhost:8080/ssm28wqy/upload/huiyuanxinxi_tupian5.jpg',5),(66,'2021-04-06 21:26:39','账号6','姓名6','会员卡号6','会员类型6',6,'2021-04-06','2021-04-06','备注6','http://localhost:8080/ssm28wqy/upload/huiyuanxinxi_tupian6.jpg',6),(1617716295329,'2021-04-06 21:38:14','1','1','1617716281032','XXX',2,'2021-04-07','2021-04-14','x\'x','',NULL);

/*Table structure for table `huiyuanyouhui` */

DROP TABLE IF EXISTS `huiyuanyouhui`;

CREATE TABLE `huiyuanyouhui` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huiyuanmingcheng` varchar(200) DEFAULT NULL COMMENT '会员名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `youhuixiangmu` longtext COMMENT '优惠项目',
  `huiyuanjiage` int(11) DEFAULT NULL COMMENT '会员价格',
  `banlixuzhi` longtext COMMENT '办理须知',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617716241625 DEFAULT CHARSET=utf8 COMMENT='会员优惠';

/*Data for the table `huiyuanyouhui` */

insert  into `huiyuanyouhui`(`id`,`addtime`,`huiyuanmingcheng`,`leixing`,`youhuixiangmu`,`huiyuanjiage`,`banlixuzhi`,`tupian`) values (31,'2021-04-06 21:26:39','会员名称1','类型1','优惠项目1',1,'办理须知1','http://localhost:8080/ssm28wqy/upload/huiyuanyouhui_tupian1.jpg'),(32,'2021-04-06 21:26:39','会员名称2','类型2','优惠项目2',2,'办理须知2','http://localhost:8080/ssm28wqy/upload/huiyuanyouhui_tupian2.jpg'),(33,'2021-04-06 21:26:39','会员名称3','类型3','优惠项目3',3,'办理须知3','http://localhost:8080/ssm28wqy/upload/huiyuanyouhui_tupian3.jpg'),(34,'2021-04-06 21:26:39','会员名称4','类型4','优惠项目4',4,'办理须知4','http://localhost:8080/ssm28wqy/upload/huiyuanyouhui_tupian4.jpg'),(35,'2021-04-06 21:26:39','会员名称5','类型5','优惠项目5',5,'办理须知5','http://localhost:8080/ssm28wqy/upload/huiyuanyouhui_tupian5.jpg'),(36,'2021-04-06 21:26:39','会员名称6','类型6','优惠项目6',6,'办理须知6','http://localhost:8080/ssm28wqy/upload/huiyuanyouhui_tupian6.jpg'),(1617716241624,'2021-04-06 21:37:21','至尊VIP','包年','XXXXXX',200,'XXXX','');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617716356361 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1617715885271,'2021-04-06 21:31:24',1617715872158,26,'gequxinxi','歌曲名称6','http://localhost:8080/ssm28wqy/upload/gequxinxi_fengmian6.jpg'),(1617716356360,'2021-04-06 21:39:16',1617715872158,25,'gequxinxi','歌曲名称5','http://localhost:8080/ssm28wqy/upload/gequxinxi_fengmian5.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1617715872158,'1','yonghu','用户','tbwjf7x0iv7rmr4ikvygwviq7en287md','2021-04-06 21:31:17','2021-04-06 22:39:06'),(2,1,'abo','users','管理员','c8zhakyrott8qlcfdmmntb8i8zcd0aub','2021-04-06 21:35:30','2021-04-06 22:35:31');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-06 21:26:39');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1617715872159 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`tupian`) values (11,'2021-04-06 21:26:39','用户1','123456','姓名1','女','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/ssm28wqy/upload/yonghu_tupian1.jpg'),(12,'2021-04-06 21:26:39','用户2','123456','姓名2','男','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/ssm28wqy/upload/yonghu_tupian2.jpg'),(13,'2021-04-06 21:26:39','用户3','123456','姓名3','男','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/ssm28wqy/upload/yonghu_tupian3.jpg'),(14,'2021-04-06 21:26:39','用户4','123456','姓名4','男','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/ssm28wqy/upload/yonghu_tupian4.jpg'),(15,'2021-04-06 21:26:39','用户5','123456','姓名5','男','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/ssm28wqy/upload/yonghu_tupian5.jpg'),(16,'2021-04-06 21:26:39','用户6','123456','姓名6','男','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/ssm28wqy/upload/yonghu_tupian6.jpg'),(1617715872158,'2021-04-06 21:31:12','1','1','1','女','15687954254',NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
