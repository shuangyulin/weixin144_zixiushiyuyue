/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmdxie0
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmdxie0` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmdxie0`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmdxie0/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmdxie0/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmdxie0/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `gonggaotongzhi` */

DROP TABLE IF EXISTS `gonggaotongzhi`;

CREATE TABLE `gonggaotongzhi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `gonggaoneirong` longtext COMMENT '公告内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='公告通知';

/*Data for the table `gonggaotongzhi` */

insert  into `gonggaotongzhi`(`id`,`addtime`,`biaoti`,`tupian`,`gonggaoneirong`,`faburiqi`) values (21,'2021-04-21 21:53:33','标题1','http://localhost:8080/ssmdxie0/upload/gonggaotongzhi_tupian1.jpg','公告内容1','2021-04-21'),(22,'2021-04-21 21:53:33','标题2','http://localhost:8080/ssmdxie0/upload/gonggaotongzhi_tupian2.jpg','公告内容2','2021-04-21'),(23,'2021-04-21 21:53:33','标题3','http://localhost:8080/ssmdxie0/upload/gonggaotongzhi_tupian3.jpg','公告内容3','2021-04-21'),(24,'2021-04-21 21:53:33','标题4','http://localhost:8080/ssmdxie0/upload/gonggaotongzhi_tupian4.jpg','公告内容4','2021-04-21'),(25,'2021-04-21 21:53:33','标题5','http://localhost:8080/ssmdxie0/upload/gonggaotongzhi_tupian5.jpg','公告内容5','2021-04-21'),(26,'2021-04-21 21:53:33','标题6','http://localhost:8080/ssmdxie0/upload/gonggaotongzhi_tupian6.jpg','公告内容6','2021-04-21');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-21 21:53:33');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueshenghao` varchar(200) NOT NULL COMMENT '学生号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xueshenghao` (`xueshenghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xueshenghao`,`mima`,`xueshengxingming`,`touxiang`,`xingbie`,`banji`,`shoujihaoma`) values (11,'2021-04-21 21:53:33','学生1','123456','学生姓名1','http://localhost:8080/ssmdxie0/upload/xuesheng_touxiang1.jpg','男','班级1','13823888881'),(12,'2021-04-21 21:53:33','学生2','123456','学生姓名2','http://localhost:8080/ssmdxie0/upload/xuesheng_touxiang2.jpg','男','班级2','13823888882'),(13,'2021-04-21 21:53:33','学生3','123456','学生姓名3','http://localhost:8080/ssmdxie0/upload/xuesheng_touxiang3.jpg','男','班级3','13823888883'),(14,'2021-04-21 21:53:33','学生4','123456','学生姓名4','http://localhost:8080/ssmdxie0/upload/xuesheng_touxiang4.jpg','男','班级4','13823888884'),(15,'2021-04-21 21:53:33','学生5','123456','学生姓名5','http://localhost:8080/ssmdxie0/upload/xuesheng_touxiang5.jpg','男','班级5','13823888885'),(16,'2021-04-21 21:53:33','学生6','123456','学生姓名6','http://localhost:8080/ssmdxie0/upload/xuesheng_touxiang6.jpg','男','班级6','13823888886');

/*Table structure for table `yuyuequxiao` */

DROP TABLE IF EXISTS `yuyuequxiao`;

CREATE TABLE `yuyuequxiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zixiushimingcheng` varchar(200) DEFAULT NULL COMMENT '自修室名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `yuyueshijian` varchar(200) DEFAULT NULL COMMENT '预约时间',
  `zuoweihao` varchar(200) DEFAULT NULL COMMENT '座位号',
  `quxiaoshijian` datetime DEFAULT NULL COMMENT '取消时间',
  `quxiaoyuanyin` varchar(200) DEFAULT NULL COMMENT '取消原因',
  `xueshenghao` varchar(200) DEFAULT NULL COMMENT '学生号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='预约取消';

/*Data for the table `yuyuequxiao` */

insert  into `yuyuequxiao`(`id`,`addtime`,`zixiushimingcheng`,`tupian`,`yuyueshijian`,`zuoweihao`,`quxiaoshijian`,`quxiaoyuanyin`,`xueshenghao`,`xueshengxingming`,`shoujihaoma`,`sfsh`,`shhf`,`userid`) values (51,'2021-04-21 21:53:33','自修室名称1','http://localhost:8080/ssmdxie0/upload/yuyuequxiao_tupian1.jpg','预约时间1','座位号1','2021-04-21 21:53:33','取消原因1','学生号1','学生姓名1','手机号码1','是','',1),(52,'2021-04-21 21:53:33','自修室名称2','http://localhost:8080/ssmdxie0/upload/yuyuequxiao_tupian2.jpg','预约时间2','座位号2','2021-04-21 21:53:33','取消原因2','学生号2','学生姓名2','手机号码2','是','',2),(53,'2021-04-21 21:53:33','自修室名称3','http://localhost:8080/ssmdxie0/upload/yuyuequxiao_tupian3.jpg','预约时间3','座位号3','2021-04-21 21:53:33','取消原因3','学生号3','学生姓名3','手机号码3','是','',3),(54,'2021-04-21 21:53:33','自修室名称4','http://localhost:8080/ssmdxie0/upload/yuyuequxiao_tupian4.jpg','预约时间4','座位号4','2021-04-21 21:53:33','取消原因4','学生号4','学生姓名4','手机号码4','是','',4),(55,'2021-04-21 21:53:33','自修室名称5','http://localhost:8080/ssmdxie0/upload/yuyuequxiao_tupian5.jpg','预约时间5','座位号5','2021-04-21 21:53:33','取消原因5','学生号5','学生姓名5','手机号码5','是','',5),(56,'2021-04-21 21:53:33','自修室名称6','http://localhost:8080/ssmdxie0/upload/yuyuequxiao_tupian6.jpg','预约时间6','座位号6','2021-04-21 21:53:33','取消原因6','学生号6','学生姓名6','手机号码6','是','',6);

/*Table structure for table `zixiushi` */

DROP TABLE IF EXISTS `zixiushi`;

CREATE TABLE `zixiushi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zixiushimingcheng` varchar(200) DEFAULT NULL COMMENT '自修室名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `guimo` varchar(200) DEFAULT NULL COMMENT '规模',
  `zuoweishu` varchar(200) DEFAULT NULL COMMENT '座位数',
  `kaifangshijian` varchar(200) DEFAULT NULL COMMENT '开放时间',
  `peitaosheshi` varchar(200) DEFAULT NULL COMMENT '配套设施',
  `zixiushixiangqing` longtext COMMENT '自修室详情',
  `weizhi` varchar(200) DEFAULT NULL COMMENT '位置',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='自修室';

/*Data for the table `zixiushi` */

insert  into `zixiushi`(`id`,`addtime`,`zixiushimingcheng`,`tupian`,`guimo`,`zuoweishu`,`kaifangshijian`,`peitaosheshi`,`zixiushixiangqing`,`weizhi`) values (31,'2021-04-21 21:53:33','自修室名称1','http://localhost:8080/ssmdxie0/upload/zixiushi_tupian1.jpg','小型','座位数1','开放时间1','配套设施1','自修室详情1','位置1'),(32,'2021-04-21 21:53:33','自修室名称2','http://localhost:8080/ssmdxie0/upload/zixiushi_tupian2.jpg','小型','座位数2','开放时间2','配套设施2','自修室详情2','位置2'),(33,'2021-04-21 21:53:33','自修室名称3','http://localhost:8080/ssmdxie0/upload/zixiushi_tupian3.jpg','小型','座位数3','开放时间3','配套设施3','自修室详情3','位置3'),(34,'2021-04-21 21:53:33','自修室名称4','http://localhost:8080/ssmdxie0/upload/zixiushi_tupian4.jpg','小型','座位数4','开放时间4','配套设施4','自修室详情4','位置4'),(35,'2021-04-21 21:53:33','自修室名称5','http://localhost:8080/ssmdxie0/upload/zixiushi_tupian5.jpg','小型','座位数5','开放时间5','配套设施5','自修室详情5','位置5'),(36,'2021-04-21 21:53:33','自修室名称6','http://localhost:8080/ssmdxie0/upload/zixiushi_tupian6.jpg','小型','座位数6','开放时间6','配套设施6','自修室详情6','位置6');

/*Table structure for table `zuoweiyuyue` */

DROP TABLE IF EXISTS `zuoweiyuyue`;

CREATE TABLE `zuoweiyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zixiushimingcheng` varchar(200) DEFAULT NULL COMMENT '自修室名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `yuyueshijian` datetime DEFAULT NULL COMMENT '预约时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `xueshenghao` varchar(200) DEFAULT NULL COMMENT '学生号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='座位预约';

/*Data for the table `zuoweiyuyue` */

insert  into `zuoweiyuyue`(`id`,`addtime`,`zixiushimingcheng`,`tupian`,`yuyueshijian`,`beizhu`,`xueshenghao`,`xueshengxingming`,`shoujihaoma`,`sfsh`,`shhf`,`userid`) values (41,'2021-04-21 21:53:33','自修室名称1','http://localhost:8080/ssmdxie0/upload/zuoweiyuyue_tupian1.jpg','2021-04-21 21:53:33','备注1','学生号1','学生姓名1','手机号码1','是','',1),(42,'2021-04-21 21:53:33','自修室名称2','http://localhost:8080/ssmdxie0/upload/zuoweiyuyue_tupian2.jpg','2021-04-21 21:53:33','备注2','学生号2','学生姓名2','手机号码2','是','',2),(43,'2021-04-21 21:53:33','自修室名称3','http://localhost:8080/ssmdxie0/upload/zuoweiyuyue_tupian3.jpg','2021-04-21 21:53:33','备注3','学生号3','学生姓名3','手机号码3','是','',3),(44,'2021-04-21 21:53:33','自修室名称4','http://localhost:8080/ssmdxie0/upload/zuoweiyuyue_tupian4.jpg','2021-04-21 21:53:33','备注4','学生号4','学生姓名4','手机号码4','是','',4),(45,'2021-04-21 21:53:33','自修室名称5','http://localhost:8080/ssmdxie0/upload/zuoweiyuyue_tupian5.jpg','2021-04-21 21:53:33','备注5','学生号5','学生姓名5','手机号码5','是','',5),(46,'2021-04-21 21:53:33','自修室名称6','http://localhost:8080/ssmdxie0/upload/zuoweiyuyue_tupian6.jpg','2021-04-21 21:53:33','备注6','学生号6','学生姓名6','手机号码6','是','',6);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
