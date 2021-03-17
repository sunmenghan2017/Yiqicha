/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.7.1-m11 : Database - eqicha
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`eqicha` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `eqicha`;

/*Table structure for table `bangdan` */

DROP TABLE IF EXISTS `bangdan`;

CREATE TABLE `bangdan` (
  `bangdanid` varchar(20) NOT NULL,
  `bangdanname` varchar(20) NOT NULL,
  `bangdancontent` varchar(10000) NOT NULL,
  `bangdanintro` varchar(10000) NOT NULL,
  PRIMARY KEY (`bangdanid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `bangdan` */

insert  into `bangdan`(`bangdanid`,`bangdanname`,`bangdancontent`,`bangdanintro`) values ('b1','2020年度金融企业TOP10','捷信消费金融有限公司，马上消费金融股份有限公司，招联消费金融有限公司，中银消费金融有限公司，兴业消费金融股份公司，中邮消费金融有限公司，杭银消费金融公司，海尔消费金融有限公司，锦程消费金融有限责任公司，苏宁消费金融有限公司（排名不分先后）','2020年是消费金融变局的一年，全年5家消费金融公司获批筹建，一波巨头相继进场， 截至目前，持牌消费金融公司已达30家。自2010年首批4家消费金融公司试点牌照下发，10 年间，消费金融发展几经波折。'),('b2','2020年中国创新软件企业TOP5','华为技术有限公司，阿里巴巴（中国）有限公司，中国通信服务股份有限公司，海尔集团公司，用友网络科技股份有限公司','这份榜单基于近十年的行业和重点企业的运行数据，通过对规模、效益、质量、技术、研发和社会责任等多维度指标，进行模型计算而来，旨在科学准确反映软件和信息技术服务企业的运行情况和竞争力水平。'),('b3','2020中国独角兽品牌TOP10','蚂蚁集团，字节跳动，滴滴出行，菜鸟网络，快手科技，小红书，VIPKID，度小满金融，优必选科技，京东物流','据2020年中国独角兽企业TOP10品牌榜单显示：蚂蚁集团、字节跳动、滴滴出行、菜鸟网络、快手科技、小红书、VIPKID、度小满金融、优必选科技以及京东物流上榜。据了解，2020独角兽企业品牌榜是通过对全球公开大数据进行专业深度的分析，综合品牌的媒体指数、社交指数和好感度计算出的品牌综合影响力指数，由封面研究院联合中译语通推出，通过数据报告为新经济发展提供智力支持。');

/*Table structure for table `collect` */

DROP TABLE IF EXISTS `collect`;

CREATE TABLE `collect` (
  `collectid` varchar(20) NOT NULL,
  `tipstitle` varchar(20) NOT NULL,
  `userid` varchar(20) NOT NULL,
  PRIMARY KEY (`collectid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `collect` */

insert  into `collect`(`collectid`,`tipstitle`,`userid`) values ('ci774723','m123456','u123456'),('ci657372','m123456','u654321');

/*Table structure for table `company` */

DROP TABLE IF EXISTS `company`;

CREATE TABLE `company` (
  `companyid` varchar(20) CHARACTER SET utf8 NOT NULL,
  `companyname` varchar(50) CHARACTER SET utf8 NOT NULL,
  `personname` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `companypos` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `zhiwei` varchar(20) DEFAULT NULL,
  `projectname` varchar(20) DEFAULT NULL,
  `companytel` varchar(20) DEFAULT NULL,
  `companyintro` varchar(100) DEFAULT NULL,
  `companylogo` tinyblob,
  `newsid` varchar(50) DEFAULT NULL,
  `companytime` time(6) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`companyid`,`companyname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf32;

/*Data for the table `company` */

insert  into `company`(`companyid`,`companyname`,`personname`,`companypos`,`zhiwei`,`projectname`,`companytel`,`companyintro`,`companylogo`,`newsid`,`companytime`,`city`) values ('c1','百度','李彦宏','北京市朝阳区胜利西街20号','创始人','百度','111111','百度以“用科技让复杂的世界更简单”为使命，以“成为最懂用户，并能帮助人们成长的全球顶级高科技公司”为愿景。',NULL,'n1','00:20:00.000000','北京'),('c2','北京字节跳动科技有限公司','张一鸣','北京市海淀区知春路甲48号2号楼10A室','创始人','抖音','222222','京字节跳动科技有限公司，成立于2012年3月，是最早将人工智能应用于移动互联网场景的科技企业之一，是中国北京的一家信息科技公司，地址位于北京市海淀区知春路甲48号 [1]  。公司以建设“全球创作与交',NULL,'n2',NULL,NULL),('c4','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('c5','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `denglu` */

DROP TABLE IF EXISTS `denglu`;

CREATE TABLE `denglu` (
  `userid` varchar(20) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `denglu` */

insert  into `denglu`(`userid`) values ('u123456'),('u654321');

/*Table structure for table `manager` */

DROP TABLE IF EXISTS `manager`;

CREATE TABLE `manager` (
  `mid` varchar(20) NOT NULL,
  `mname` varchar(20) NOT NULL,
  `mrealname` varchar(20) NOT NULL,
  `msex` char(10) NOT NULL,
  `mtel` varchar(50) NOT NULL,
  `memail` varchar(50) NOT NULL,
  `mpwd` varchar(50) NOT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `manager` */

insert  into `manager`(`mid`,`mname`,`mrealname`,`msex`,`mtel`,`memail`,`mpwd`) values ('m123456','小李','李梦雪','女','62367248','6452376@qq.com','123456'),('m654321','小郑','郑雨露','女','75983747','9868577@qq.com','654321');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `newsid` varchar(20) NOT NULL,
  `newstitle` varchar(10000) NOT NULL,
  `newscontent` longtext NOT NULL,
  `newstime` time(6) NOT NULL,
  `companyname` varchar(50) NOT NULL,
  PRIMARY KEY (`newsid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `news` */

insert  into `news`(`newsid`,`newstitle`,`newscontent`,`newstime`,`companyname`) values ('n1','百度百度百度百度百度','百度百度百度百度百度百度百度百度百度百度','00:20:21.300000','百度'),('n2','字节跳动字节跳动','字节跳动字节跳动字节跳动字节跳动字节跳动字节跳动字节跳动字节跳动字节跳动字节跳动字节跳动字节跳动北京字节跳动科技有限公司北京字节跳动科技有限公司北京字节跳动科技有限公司北京字节跳动科技有限公司','00:20:21.300000','北京字节跳动科技有限公司');

/*Table structure for table `person` */

DROP TABLE IF EXISTS `person`;

CREATE TABLE `person` (
  `personid` varchar(20) NOT NULL,
  `personname` varchar(20) NOT NULL,
  `companyname` varchar(50) NOT NULL,
  `zhiwei` varchar(50) NOT NULL,
  `personintro` mediumtext NOT NULL,
  `persontel` varchar(20) DEFAULT NULL,
  `ishot` tinyint(1) NOT NULL,
  `projectname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`personid`,`personname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `person` */

insert  into `person`(`personid`,`personname`,`companyname`,`zhiwei`,`personintro`,`persontel`,`ishot`,`projectname`) values ('p1','张三','百度','创始人','李彦宏（Robin Li），男，汉族，无党派人士，1968年11月出生，山西阳泉人。百度创始人、董事长兼首席执行官（CEO）。','暂无',1,'百度'),('p2','张一鸣 ','北京字节跳动科技有限公司','创始人、CEO','张一鸣，男，1983年出生于福建省龙岩市永定区，客家人 [1-2]  ，南开大学毕业，北京字节跳动科技有限公司创始人、CEO，今日头条创始人、原CEO。','暂无',1,'抖音');

/*Table structure for table `project` */

DROP TABLE IF EXISTS `project`;

CREATE TABLE `project` (
  `projectid` varchar(20) NOT NULL,
  `projectname` varchar(20) NOT NULL,
  `personname` varchar(20) DEFAULT NULL,
  `projectintro` varchar(100) NOT NULL,
  `companyname` varchar(20) NOT NULL,
  PRIMARY KEY (`projectid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `project` */

insert  into `project`(`projectid`,`projectname`,`personname`,`projectintro`,`companyname`) values ('pr1','百度','李彦宏','百度app一般指百度。百度是一款有7亿用户在使用的手机“搜索+资讯”客户端，“有事搜一搜，没事看一看”，依托百度网页、百度图片、百度新闻、百度知道、百度百科、百度地图、百度音乐、百度视频等专业垂直搜索','百度公司'),('co463267','我就得不好。','u654321','','');

/*Table structure for table `tips` */

DROP TABLE IF EXISTS `tips`;

CREATE TABLE `tips` (
  `tipsid` varchar(20) NOT NULL,
  `tipstitle` varchar(20) NOT NULL,
  `tipscontent` varchar(20) NOT NULL,
  PRIMARY KEY (`tipsid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tips` */

insert  into `tips`(`tipsid`,`tipstitle`,`tipscontent`) values ('t1','国际收支差额','一 国国际收支差额既受汇率变化的影响，又'),('t2','利率','利率上升一资本流入一本币需求上升一本币升'),('t3','通货膨胀','通货膨胀率升高一货币购买力下降一 纸币对'),('t4','财政货币政策','短期：扩张性的财政、货币政策造成的巨额财'),('t5','投机资本','对汇率作用是复杂多样切捉摸不定。有时会使');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `userid` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `usertel` varchar(50) NOT NULL,
  `userpwd` varchar(50) NOT NULL,
  `userauatar` tinyblob,
  `companyname` varchar(50) DEFAULT NULL,
  `isloading` tinyint(1) NOT NULL,
  `userzhiwei` varchar(20) DEFAULT NULL,
  `tipsid` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`userid`,`username`,`usertel`,`userpwd`,`isloading`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`userid`,`username`,`usertel`,`userpwd`,`userauatar`,`companyname`,`isloading`,`userzhiwei`,`tipsid`) values ('u123456','小黄','123456','123456','����\0JFIF\0\0H\0H\0\0��\0C\0\r	\n\n\r\n\r \' .)10.)-,3:J>36F7,-@WAFLNRSR2>ZaZP`JQRO��\0C&&O5-5OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO��\0��\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0C\0	\0!1AQa\"q�25R��#%T','280',1,NULL,NULL),('u654321','小孙','654321','654321','����\0JFIF\0,,\0\0��\0C\0		\n\r\Z\Z $.\' \",#(7),01444\'9=82<.342��\0C			\r\r2!!22222222222222222222222222222222222222222222222222��\0��\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0��\0C\0\0\0!1A\"Qaq�2��#B��','0',0,NULL,NULL);

/*Table structure for table `xinzeng` */

DROP TABLE IF EXISTS `xinzeng`;

CREATE TABLE `xinzeng` (
  `xinzengid` varchar(20) NOT NULL,
  `xinzengtitle` varchar(20) NOT NULL,
  `xinzengcontent` varchar(100) NOT NULL,
  PRIMARY KEY (`xinzengid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `xinzeng` */

insert  into `xinzeng`(`xinzengid`,`xinzengtitle`,`xinzengcontent`) values ('xin1','工业新增企业',''),('xin2','教育新增企业','教育公司1，教育公司2，教育公司3，教育公司4，');

/*Table structure for table `zhaopin` */

DROP TABLE IF EXISTS `zhaopin`;

CREATE TABLE `zhaopin` (
  `zhaopinid` varchar(20) NOT NULL,
  `zhiwei` varchar(20) NOT NULL,
  `yaoqiu` varchar(100) NOT NULL,
  `companyname` varchar(50) NOT NULL,
  `userid` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`zhaopinid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `zhaopin` */

insert  into `zhaopin`(`zhaopinid`,`zhiwei`,`yaoqiu`,`companyname`,`userid`) values ('z1','英语讲师','英语好责任心强本科','猿辅导',''),('z2','前端工程师','前端好前端好','百度',NULL),('z3','https://liwenroul.gi','100','199',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
