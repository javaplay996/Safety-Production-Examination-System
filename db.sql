/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmp0797
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmp0797` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmp0797`;

/*Table structure for table `chengjixinxi` */

DROP TABLE IF EXISTS `chengjixinxi`;

CREATE TABLE `chengjixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `zhuguandefen` int(11) NOT NULL COMMENT '主观得分',
  `keguandefen` int(11) NOT NULL COMMENT '客观得分',
  `zongfen` int(11) NOT NULL COMMENT '总分',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1620652961339 DEFAULT CHARSET=utf8 COMMENT='成绩信息';

/*Data for the table `chengjixinxi` */

insert  into `chengjixinxi`(`id`,`addtime`,`bianhao`,`mingcheng`,`xuehao`,`xueshengxingming`,`zhuguandefen`,`keguandefen`,`zongfen`,`fabushijian`) values (61,'2021-05-10 21:13:46','编号1','名称1','学号1','学生姓名1',1,1,1,'2021-05-10 21:13:46');
insert  into `chengjixinxi`(`id`,`addtime`,`bianhao`,`mingcheng`,`xuehao`,`xueshengxingming`,`zhuguandefen`,`keguandefen`,`zongfen`,`fabushijian`) values (62,'2021-05-10 21:13:46','编号2','名称2','学号2','学生姓名2',2,2,2,'2021-05-10 21:13:46');
insert  into `chengjixinxi`(`id`,`addtime`,`bianhao`,`mingcheng`,`xuehao`,`xueshengxingming`,`zhuguandefen`,`keguandefen`,`zongfen`,`fabushijian`) values (63,'2021-05-10 21:13:46','编号3','名称3','学号3','学生姓名3',3,3,3,'2021-05-10 21:13:46');
insert  into `chengjixinxi`(`id`,`addtime`,`bianhao`,`mingcheng`,`xuehao`,`xueshengxingming`,`zhuguandefen`,`keguandefen`,`zongfen`,`fabushijian`) values (64,'2021-05-10 21:13:46','编号4','名称4','学号4','学生姓名4',4,4,4,'2021-05-10 21:13:46');
insert  into `chengjixinxi`(`id`,`addtime`,`bianhao`,`mingcheng`,`xuehao`,`xueshengxingming`,`zhuguandefen`,`keguandefen`,`zongfen`,`fabushijian`) values (65,'2021-05-10 21:13:46','编号5','名称5','学号5','学生姓名5',5,5,5,'2021-05-10 21:13:46');
insert  into `chengjixinxi`(`id`,`addtime`,`bianhao`,`mingcheng`,`xuehao`,`xueshengxingming`,`zhuguandefen`,`keguandefen`,`zongfen`,`fabushijian`) values (66,'2021-05-10 21:13:46','编号6','名称6','学号6','学生姓名6',6,6,6,'2021-05-10 21:13:46');
insert  into `chengjixinxi`(`id`,`addtime`,`bianhao`,`mingcheng`,`xuehao`,`xueshengxingming`,`zhuguandefen`,`keguandefen`,`zongfen`,`fabushijian`) values (1620652961338,'2021-05-10 21:22:40','1620652942601','数学测试成绩','2','刘倩',20,40,60,'2021-05-10 21:22:22');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmp0797/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssmp0797/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssmp0797/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `exampaper` */

DROP TABLE IF EXISTS `exampaper`;

CREATE TABLE `exampaper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `name` varchar(200) NOT NULL COMMENT '试卷名称',
  `time` int(11) NOT NULL COMMENT '考试时长(分钟)',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '试卷状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620652774885 DEFAULT CHARSET=utf8 COMMENT='试卷表';

/*Data for the table `exampaper` */

insert  into `exampaper`(`id`,`addtime`,`name`,`time`,`status`) values (1620652774884,'2021-05-10 21:19:34','数学测试题',60,1);

/*Table structure for table `examquestion` */

DROP TABLE IF EXISTS `examquestion`;

CREATE TABLE `examquestion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `paperid` bigint(20) NOT NULL COMMENT '所属试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `type` bigint(20) DEFAULT '0' COMMENT '试题类型，0：单选题 1：多选题 2：判断题 3：填空题（暂不考虑多项填空）',
  `sequence` bigint(20) DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620652853448 DEFAULT CHARSET=utf8 COMMENT='试题表';

/*Data for the table `examquestion` */

insert  into `examquestion`(`id`,`addtime`,`paperid`,`papername`,`questionname`,`options`,`score`,`answer`,`analysis`,`type`,`sequence`) values (1620652803310,'2021-05-10 21:20:02',1620652774884,'数学测试题','11111','[{\"text\":\"A.1\",\"code\":\"A\"},{\"text\":\"B.2\",\"code\":\"B\"},{\"text\":\"C.3\",\"code\":\"C\"},{\"text\":\"D.4\",\"code\":\"D\"}]',20,'A','1111',0,1);
insert  into `examquestion`(`id`,`addtime`,`paperid`,`papername`,`questionname`,`options`,`score`,`answer`,`analysis`,`type`,`sequence`) values (1620652816693,'2021-05-10 21:20:16',1620652774884,'数学测试题','2222222','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',20,'A','2122121',2,2);
insert  into `examquestion`(`id`,`addtime`,`paperid`,`papername`,`questionname`,`options`,`score`,`answer`,`analysis`,`type`,`sequence`) values (1620652842674,'2021-05-10 21:20:42',1620652774884,'数学测试题','3333','[{\"text\":\"A.1\",\"code\":\"A\"},{\"text\":\"B.2\",\"code\":\"B\"},{\"text\":\"C.3\",\"code\":\"C\"},{\"text\":\"D.4\",\"code\":\"D\"}]',20,'A,B,C,D','3333',1,3);
insert  into `examquestion`(`id`,`addtime`,`paperid`,`papername`,`questionname`,`options`,`score`,`answer`,`analysis`,`type`,`sequence`) values (1620652853447,'2021-05-10 21:20:52',1620652774884,'数学测试题','4444','[]',20,'1','1111',3,4);

/*Table structure for table `examrecord` */

DROP TABLE IF EXISTS `examrecord`;

CREATE TABLE `examrecord` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `paperid` bigint(20) NOT NULL COMMENT '试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionid` bigint(20) NOT NULL COMMENT '试题id（外键）',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `myscore` bigint(20) NOT NULL DEFAULT '0' COMMENT '试题得分',
  `myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620652907143 DEFAULT CHARSET=utf8 COMMENT='考试记录表';

/*Data for the table `examrecord` */

insert  into `examrecord`(`id`,`addtime`,`userid`,`username`,`paperid`,`papername`,`questionid`,`questionname`,`options`,`score`,`answer`,`analysis`,`myscore`,`myanswer`) values (1620652897545,'2021-05-10 21:21:37',1620652656051,NULL,1620652774884,'数学测试题',1620652803310,'11111','[{\"text\":\"A.1\",\"code\":\"A\"},{\"text\":\"B.2\",\"code\":\"B\"},{\"text\":\"C.3\",\"code\":\"C\"},{\"text\":\"D.4\",\"code\":\"D\"}]',20,'A','1111',20,'A');
insert  into `examrecord`(`id`,`addtime`,`userid`,`username`,`paperid`,`papername`,`questionid`,`questionname`,`options`,`score`,`answer`,`analysis`,`myscore`,`myanswer`) values (1620652899781,'2021-05-10 21:21:39',1620652656051,NULL,1620652774884,'数学测试题',1620652816693,'2222222','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',20,'A','2122121',0,'B');
insert  into `examrecord`(`id`,`addtime`,`userid`,`username`,`paperid`,`papername`,`questionid`,`questionname`,`options`,`score`,`answer`,`analysis`,`myscore`,`myanswer`) values (1620652903885,'2021-05-10 21:21:43',1620652656051,NULL,1620652774884,'数学测试题',1620652842674,'3333','[{\"text\":\"A.1\",\"code\":\"A\"},{\"text\":\"B.2\",\"code\":\"B\"},{\"text\":\"C.3\",\"code\":\"C\"},{\"text\":\"D.4\",\"code\":\"D\"}]',20,'A,B,C,D','3333',20,'A,B,C,D');
insert  into `examrecord`(`id`,`addtime`,`userid`,`username`,`paperid`,`papername`,`questionid`,`questionname`,`options`,`score`,`answer`,`analysis`,`myscore`,`myanswer`) values (1620652907142,'2021-05-10 21:21:47',1620652656051,NULL,1620652774884,'数学测试题',1620652853447,'4444','[]',20,'1','1111',0,'2');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`touxiang`,`youxiang`,`dianhua`) values (21,'2021-05-10 21:13:46','1','1','刘老师','女','http://localhost:8080/ssmp0797/upload/jiaoshi_touxiang1.jpg','773890001@qq.com','13823888881');
insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`touxiang`,`youxiang`,`dianhua`) values (22,'2021-05-10 21:13:46','教师2','123456','教师姓名2','男','http://localhost:8080/ssmp0797/upload/jiaoshi_touxiang2.jpg','773890002@qq.com','13823888882');
insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`touxiang`,`youxiang`,`dianhua`) values (23,'2021-05-10 21:13:46','教师3','123456','教师姓名3','男','http://localhost:8080/ssmp0797/upload/jiaoshi_touxiang3.jpg','773890003@qq.com','13823888883');
insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`touxiang`,`youxiang`,`dianhua`) values (24,'2021-05-10 21:13:46','教师4','123456','教师姓名4','男','http://localhost:8080/ssmp0797/upload/jiaoshi_touxiang4.jpg','773890004@qq.com','13823888884');
insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`touxiang`,`youxiang`,`dianhua`) values (25,'2021-05-10 21:13:46','教师5','123456','教师姓名5','男','http://localhost:8080/ssmp0797/upload/jiaoshi_touxiang5.jpg','773890005@qq.com','13823888885');
insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`touxiang`,`youxiang`,`dianhua`) values (26,'2021-05-10 21:13:46','教师6','123456','教师姓名6','男','http://localhost:8080/ssmp0797/upload/jiaoshi_touxiang6.jpg','773890006@qq.com','13823888886');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','xx0c1abzh5xqpzob9105yjeg82jzgadg','2021-05-10 21:16:39','2021-05-10 22:23:15');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,21,'1','jiaoshi','管理员','c5ez0p60t4kj3y6w58uxsg97iv0y5rmm','2021-05-10 21:18:20','2021-05-10 22:22:04');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,1620652656051,'2','xuesheng','学生','mav7m5d39tyd7rdi997fp5mxy0z58np1','2021-05-10 21:20:58','2021-05-10 22:20:59');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-10 21:13:46');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1620652656052 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`nianling`,`youxiang`,`shouji`) values (11,'2021-05-10 21:13:46','1','1','学生姓名1','男','http://localhost:8080/ssmp0797/upload/xuesheng_touxiang1.jpg','年龄1','773890001@qq.com','13823888881');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`nianling`,`youxiang`,`shouji`) values (12,'2021-05-10 21:13:46','学生2','123456','学生姓名2','男','http://localhost:8080/ssmp0797/upload/xuesheng_touxiang2.jpg','年龄2','773890002@qq.com','13823888882');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`nianling`,`youxiang`,`shouji`) values (13,'2021-05-10 21:13:46','学生3','123456','学生姓名3','男','http://localhost:8080/ssmp0797/upload/xuesheng_touxiang3.jpg','年龄3','773890003@qq.com','13823888883');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`nianling`,`youxiang`,`shouji`) values (14,'2021-05-10 21:13:46','学生4','123456','学生姓名4','男','http://localhost:8080/ssmp0797/upload/xuesheng_touxiang4.jpg','年龄4','773890004@qq.com','13823888884');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`nianling`,`youxiang`,`shouji`) values (15,'2021-05-10 21:13:46','学生5','123456','学生姓名5','男','http://localhost:8080/ssmp0797/upload/xuesheng_touxiang5.jpg','年龄5','773890005@qq.com','13823888885');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`nianling`,`youxiang`,`shouji`) values (16,'2021-05-10 21:13:46','学生6','123456','学生姓名6','男','http://localhost:8080/ssmp0797/upload/xuesheng_touxiang6.jpg','年龄6','773890006@qq.com','13823888886');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`nianling`,`youxiang`,`shouji`) values (1620652656051,'2021-05-10 21:17:36','2','1','刘倩','女','http://localhost:8080/ssmp0797/upload/1620652868564.jpg','22','1121212@15.com','15214121411');

/*Table structure for table `zhuguantihuida` */

DROP TABLE IF EXISTS `zhuguantihuida`;

CREATE TABLE `zhuguantihuida` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shijuanmingcheng` varchar(200) DEFAULT NULL COMMENT '试卷名称',
  `timu` longtext NOT NULL COMMENT '题目',
  `kemu` varchar(200) NOT NULL COMMENT '科目',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `daan` longtext COMMENT '答案',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620652886876 DEFAULT CHARSET=utf8 COMMENT='主观题回答';

/*Data for the table `zhuguantihuida` */

insert  into `zhuguantihuida`(`id`,`addtime`,`shijuanmingcheng`,`timu`,`kemu`,`xuehao`,`xueshengxingming`,`daan`) values (41,'2021-05-10 21:13:46','试卷名称1','题目1','科目1','学号1','学生姓名1','答案1');
insert  into `zhuguantihuida`(`id`,`addtime`,`shijuanmingcheng`,`timu`,`kemu`,`xuehao`,`xueshengxingming`,`daan`) values (42,'2021-05-10 21:13:46','试卷名称2','题目2','科目2','学号2','学生姓名2','答案2');
insert  into `zhuguantihuida`(`id`,`addtime`,`shijuanmingcheng`,`timu`,`kemu`,`xuehao`,`xueshengxingming`,`daan`) values (43,'2021-05-10 21:13:46','试卷名称3','题目3','科目3','学号3','学生姓名3','答案3');
insert  into `zhuguantihuida`(`id`,`addtime`,`shijuanmingcheng`,`timu`,`kemu`,`xuehao`,`xueshengxingming`,`daan`) values (44,'2021-05-10 21:13:46','试卷名称4','题目4','科目4','学号4','学生姓名4','答案4');
insert  into `zhuguantihuida`(`id`,`addtime`,`shijuanmingcheng`,`timu`,`kemu`,`xuehao`,`xueshengxingming`,`daan`) values (45,'2021-05-10 21:13:46','试卷名称5','题目5','科目5','学号5','学生姓名5','答案5');
insert  into `zhuguantihuida`(`id`,`addtime`,`shijuanmingcheng`,`timu`,`kemu`,`xuehao`,`xueshengxingming`,`daan`) values (46,'2021-05-10 21:13:46','试卷名称6','题目6','科目6','学号6','学生姓名6','答案6');
insert  into `zhuguantihuida`(`id`,`addtime`,`shijuanmingcheng`,`timu`,`kemu`,`xuehao`,`xueshengxingming`,`daan`) values (1620652886875,'2021-05-10 21:21:26','数学试卷','题目1测试，这里可以发布一些相关题目信息，','数学','2','刘倩','测试。。。。');

/*Table structure for table `zhuguantipingfen` */

DROP TABLE IF EXISTS `zhuguantipingfen`;

CREATE TABLE `zhuguantipingfen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shijuanmingcheng` varchar(200) DEFAULT NULL COMMENT '试卷名称',
  `timu` varchar(200) DEFAULT NULL COMMENT '题目',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `defen` int(11) DEFAULT NULL COMMENT '得分',
  `jieshi` longtext COMMENT '解释',
  `shijian` datetime DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620652937934 DEFAULT CHARSET=utf8 COMMENT='主观题评分';

/*Data for the table `zhuguantipingfen` */

insert  into `zhuguantipingfen`(`id`,`addtime`,`shijuanmingcheng`,`timu`,`xuehao`,`xueshengxingming`,`defen`,`jieshi`,`shijian`) values (51,'2021-05-10 21:13:46','试卷名称1','题目1','学号1','学生姓名1',1,'解释1','2021-05-10 21:13:46');
insert  into `zhuguantipingfen`(`id`,`addtime`,`shijuanmingcheng`,`timu`,`xuehao`,`xueshengxingming`,`defen`,`jieshi`,`shijian`) values (52,'2021-05-10 21:13:46','试卷名称2','题目2','学号2','学生姓名2',2,'解释2','2021-05-10 21:13:46');
insert  into `zhuguantipingfen`(`id`,`addtime`,`shijuanmingcheng`,`timu`,`xuehao`,`xueshengxingming`,`defen`,`jieshi`,`shijian`) values (53,'2021-05-10 21:13:46','试卷名称3','题目3','学号3','学生姓名3',3,'解释3','2021-05-10 21:13:46');
insert  into `zhuguantipingfen`(`id`,`addtime`,`shijuanmingcheng`,`timu`,`xuehao`,`xueshengxingming`,`defen`,`jieshi`,`shijian`) values (54,'2021-05-10 21:13:46','试卷名称4','题目4','学号4','学生姓名4',4,'解释4','2021-05-10 21:13:46');
insert  into `zhuguantipingfen`(`id`,`addtime`,`shijuanmingcheng`,`timu`,`xuehao`,`xueshengxingming`,`defen`,`jieshi`,`shijian`) values (55,'2021-05-10 21:13:46','试卷名称5','题目5','学号5','学生姓名5',5,'解释5','2021-05-10 21:13:46');
insert  into `zhuguantipingfen`(`id`,`addtime`,`shijuanmingcheng`,`timu`,`xuehao`,`xueshengxingming`,`defen`,`jieshi`,`shijian`) values (56,'2021-05-10 21:13:46','试卷名称6','题目6','学号6','学生姓名6',6,'解释6','2021-05-10 21:13:46');
insert  into `zhuguantipingfen`(`id`,`addtime`,`shijuanmingcheng`,`timu`,`xuehao`,`xueshengxingming`,`defen`,`jieshi`,`shijian`) values (1620652937933,'2021-05-10 21:22:17','数学试卷','题目1测试，这里可以发布一些相关题目信息，','2','刘倩',20,'测试','2021-05-10 21:22:06');

/*Table structure for table `zhuguantixinxi` */

DROP TABLE IF EXISTS `zhuguantixinxi`;

CREATE TABLE `zhuguantixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shijuanmingcheng` varchar(200) NOT NULL COMMENT '试卷名称',
  `kemu` varchar(200) NOT NULL COMMENT '科目',
  `timu` longtext NOT NULL COMMENT '题目',
  `fenzhi` varchar(200) NOT NULL COMMENT '分值',
  `yaoqiu` longtext COMMENT '要求',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='主观题信息';

/*Data for the table `zhuguantixinxi` */

insert  into `zhuguantixinxi`(`id`,`addtime`,`shijuanmingcheng`,`kemu`,`timu`,`fenzhi`,`yaoqiu`) values (31,'2021-05-10 21:13:46','数学试卷','数学','题目1测试，这里可以发布一些相关题目信息，','40分','要求1测试，这里的所有内容都是用用于测试功能的都是可以自行添加修改删除替换的。。。');
insert  into `zhuguantixinxi`(`id`,`addtime`,`shijuanmingcheng`,`kemu`,`timu`,`fenzhi`,`yaoqiu`) values (32,'2021-05-10 21:13:46','试卷名称2','科目2','题目2','分值2','要求2');
insert  into `zhuguantixinxi`(`id`,`addtime`,`shijuanmingcheng`,`kemu`,`timu`,`fenzhi`,`yaoqiu`) values (33,'2021-05-10 21:13:46','试卷名称3','科目3','题目3','分值3','要求3');
insert  into `zhuguantixinxi`(`id`,`addtime`,`shijuanmingcheng`,`kemu`,`timu`,`fenzhi`,`yaoqiu`) values (34,'2021-05-10 21:13:46','试卷名称4','科目4','题目4','分值4','要求4');
insert  into `zhuguantixinxi`(`id`,`addtime`,`shijuanmingcheng`,`kemu`,`timu`,`fenzhi`,`yaoqiu`) values (35,'2021-05-10 21:13:46','试卷名称5','科目5','题目5','分值5','要求5');
insert  into `zhuguantixinxi`(`id`,`addtime`,`shijuanmingcheng`,`kemu`,`timu`,`fenzhi`,`yaoqiu`) values (36,'2021-05-10 21:13:46','试卷名称6','科目6','题目6','分值6','要求6');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
