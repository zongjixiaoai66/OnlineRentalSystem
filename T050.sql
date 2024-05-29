/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t050`;
CREATE DATABASE IF NOT EXISTS `t050` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t050`;

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='地址';

DELETE FROM `address`;
INSERT INTO `address` (`id`, `addtime`, `userid`, `address`, `name`, `phone`, `isdefault`) VALUES
	(1, '2021-04-04 15:32:56', 1, '宇宙银河系金星1号', '金某', '13823888881', '是'),
	(2, '2021-04-04 15:32:56', 2, '宇宙银河系木星1号', '木某', '13823888882', '是'),
	(3, '2021-04-04 15:32:56', 3, '宇宙银河系水星1号', '水某', '13823888883', '是'),
	(4, '2021-04-04 15:32:56', 4, '宇宙银河系火星1号', '火某', '13823888884', '是'),
	(5, '2021-04-04 15:32:56', 5, '宇宙银河系土星1号', '土某', '13823888885', '是'),
	(6, '2021-04-04 15:32:56', 6, '宇宙银河系月球1号', '月某', '13823888886', '是');

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint NOT NULL COMMENT '用户id',
  `goodid` bigint NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1705496162567 DEFAULT CHARSET=utf8mb3 COMMENT='购物车表';

DELETE FROM `cart`;
INSERT INTO `cart` (`id`, `addtime`, `tablename`, `userid`, `goodid`, `goodname`, `picture`, `buynumber`, `price`, `discountprice`) VALUES
	(1705496162566, '2024-01-17 12:56:01', 'shangpinxinxi', 11, 33, '商品名称3', 'http://localhost:8080/springbootyf10w/upload/shangpinxinxi_tupian3.jpg', 1, 99.9, 0);

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springbootyf10w/upload/picture1.jpg'),
	(2, 'picture2', 'http://localhost:8080/springbootyf10w/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springbootyf10w/upload/picture3.jpg'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `dingdanxinxi`;
CREATE TABLE IF NOT EXISTS `dingdanxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanhao` varchar(200) DEFAULT NULL COMMENT '订单号',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `shangjiamingcheng` varchar(200) DEFAULT NULL COMMENT '商家名称',
  `yuezujiage` int DEFAULT NULL COMMENT '月租价格',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `zulinyuezhang` int DEFAULT NULL COMMENT '租赁月长',
  `jine` int DEFAULT NULL COMMENT '金额',
  `dingdanzhuangtai` varchar(200) DEFAULT NULL COMMENT '订单状态',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanhao` (`dingdanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1617550438768 DEFAULT CHARSET=utf8mb3 COMMENT='订单信息';

DELETE FROM `dingdanxinxi`;
INSERT INTO `dingdanxinxi` (`id`, `addtime`, `dingdanhao`, `shangpinmingcheng`, `shangpinleixing`, `tupian`, `shangjiazhanghao`, `shangjiamingcheng`, `yuezujiage`, `zhanghao`, `xingming`, `shouji`, `dizhi`, `zulinyuezhang`, `jine`, `dingdanzhuangtai`, `sfsh`, `shhf`, `ispay`) VALUES
	(51, '2021-04-04 15:32:56', '订单号1', '商品名称1', '商品类型1', 'http://localhost:8080/springbootyf10w/upload/dingdanxinxi_tupian1.jpg', '商家账号1', '商家名称1', 1, '账号1', '姓名1', '13823888881', '地址1', 1, 1, '未接单', '是', '', '未支付'),
	(52, '2021-04-04 15:32:56', '订单号2', '商品名称2', '商品类型2', 'http://localhost:8080/springbootyf10w/upload/dingdanxinxi_tupian2.jpg', '商家账号2', '商家名称2', 2, '账号2', '姓名2', '13823888882', '地址2', 2, 2, '未接单', '是', '', '未支付'),
	(53, '2021-04-04 15:32:56', '订单号3', '商品名称3', '商品类型3', 'http://localhost:8080/springbootyf10w/upload/dingdanxinxi_tupian3.jpg', '商家账号3', '商家名称3', 3, '账号3', '姓名3', '13823888883', '地址3', 3, 3, '未接单', '是', '', '未支付'),
	(54, '2021-04-04 15:32:56', '订单号4', '商品名称4', '商品类型4', 'http://localhost:8080/springbootyf10w/upload/dingdanxinxi_tupian4.jpg', '商家账号4', '商家名称4', 4, '账号4', '姓名4', '13823888884', '地址4', 4, 4, '未接单', '是', '', '未支付'),
	(55, '2021-04-04 15:32:56', '订单号5', '商品名称5', '商品类型5', 'http://localhost:8080/springbootyf10w/upload/dingdanxinxi_tupian5.jpg', '商家账号5', '商家名称5', 5, '账号5', '姓名5', '13823888885', '地址5', 5, 5, '未接单', '是', '', '未支付'),
	(56, '2021-04-04 15:32:56', '订单号6', '商品名称6', '商品类型6', 'http://localhost:8080/springbootyf10w/upload/dingdanxinxi_tupian6.jpg', '商家账号6', '商家名称6', 6, '账号6', '姓名6', '13823888886', '地址6', 6, 6, '未接单', '是', '', '未支付'),
	(1617550438767, '2021-04-04 15:33:57', '20214423335126196253', '商品名称6', '商品类型6', 'http://localhost:8080/springbootyf10w/upload/shangpinxinxi_tupian6.jpg', '商家账号6', '商家名称6', 6, '用户1', '姓名1', '13823888881', '1', 5, 30, '未接单', '否', NULL, '已支付');

DROP TABLE IF EXISTS `discussshangpinxinxi`;
CREATE TABLE IF NOT EXISTS `discussshangpinxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb3 COMMENT='商品信息评论表';

DELETE FROM `discussshangpinxinxi`;
INSERT INTO `discussshangpinxinxi` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(141, '2021-04-04 15:32:56', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(142, '2021-04-04 15:32:56', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(143, '2021-04-04 15:32:56', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(144, '2021-04-04 15:32:56', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(145, '2021-04-04 15:32:56', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(146, '2021-04-04 15:32:56', 6, 6, '用户名6', '评论内容6', '回复内容6');

DROP TABLE IF EXISTS `fahuodingdan`;
CREATE TABLE IF NOT EXISTS `fahuodingdan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanhao` varchar(200) DEFAULT NULL COMMENT '订单号',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `shangjiamingcheng` varchar(200) DEFAULT NULL COMMENT '商家名称',
  `yuezujiage` int DEFAULT NULL COMMENT '月租价格',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `zulinyuezhang` int DEFAULT NULL COMMENT '租赁月长',
  `jine` int DEFAULT NULL COMMENT '金额',
  `dingdanzhuangtai` varchar(200) DEFAULT NULL COMMENT '订单状态',
  `reversetime` datetime DEFAULT NULL COMMENT '倒计结束时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb3 COMMENT='发货订单';

DELETE FROM `fahuodingdan`;
INSERT INTO `fahuodingdan` (`id`, `addtime`, `dingdanhao`, `shangpinmingcheng`, `shangpinleixing`, `tupian`, `shangjiazhanghao`, `shangjiamingcheng`, `yuezujiage`, `zhanghao`, `xingming`, `shouji`, `dizhi`, `zulinyuezhang`, `jine`, `dingdanzhuangtai`, `reversetime`) VALUES
	(61, '2021-04-04 15:32:56', '订单号1', '商品名称1', '商品类型1', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '商家账号1', '商家名称1', 1, '账号1', '姓名1', '13823888881', '地址1', 1, 1, '发货中', '2021-04-05 00:00:00'),
	(62, '2021-04-04 15:32:56', '订单号2', '商品名称2', '商品类型2', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '商家账号2', '商家名称2', 2, '账号2', '姓名2', '13823888882', '地址2', 2, 2, '发货中', '2021-04-05 00:00:00'),
	(63, '2021-04-04 15:32:56', '订单号3', '商品名称3', '商品类型3', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '商家账号3', '商家名称3', 3, '账号3', '姓名3', '13823888883', '地址3', 3, 3, '发货中', '2021-04-05 00:00:00'),
	(64, '2021-04-04 15:32:56', '订单号4', '商品名称4', '商品类型4', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '商家账号4', '商家名称4', 4, '账号4', '姓名4', '13823888884', '地址4', 4, 4, '发货中', '2021-04-05 00:00:00'),
	(65, '2021-04-04 15:32:56', '订单号5', '商品名称5', '商品类型5', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '商家账号5', '商家名称5', 5, '账号5', '姓名5', '13823888885', '地址5', 5, 5, '发货中', '2021-04-05 00:00:00'),
	(66, '2021-04-04 15:32:56', '订单号6', '商品名称6', '商品类型6', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '商家账号6', '商家名称6', 6, '账号6', '姓名6', '13823888886', '地址6', 6, 6, '发货中', '2021-04-05 00:00:00');

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint NOT NULL COMMENT '用户id',
  `goodid` bigint NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='订单';

DELETE FROM `orders`;

DROP TABLE IF EXISTS `shangjia`;
CREATE TABLE IF NOT EXISTS `shangjia` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangjiazhanghao` varchar(200) NOT NULL COMMENT '商家账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `shangjiamingcheng` varchar(200) NOT NULL COMMENT '商家名称',
  `jingyingfanwei` varchar(200) DEFAULT NULL COMMENT '经营范围',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `lianxidianhua` varchar(200) NOT NULL COMMENT '联系电话',
  `shangjiajieshao` longtext COMMENT '商家介绍',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangjiazhanghao` (`shangjiazhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COMMENT='商家';

DELETE FROM `shangjia`;
INSERT INTO `shangjia` (`id`, `addtime`, `shangjiazhanghao`, `mima`, `shangjiamingcheng`, `jingyingfanwei`, `tupian`, `lianxidianhua`, `shangjiajieshao`, `money`) VALUES
	(21, '2021-04-04 15:32:56', '商家1', '123456', '商家名称1', '经营范围1', 'http://localhost:8080/springbootyf10w/upload/shangjia_tupian1.jpg', '13823888881', '商家介绍1', 100),
	(22, '2021-04-04 15:32:56', '商家2', '123456', '商家名称2', '经营范围2', 'http://localhost:8080/springbootyf10w/upload/shangjia_tupian2.jpg', '13823888882', '商家介绍2', 100),
	(23, '2021-04-04 15:32:56', '商家3', '123456', '商家名称3', '经营范围3', 'http://localhost:8080/springbootyf10w/upload/shangjia_tupian3.jpg', '13823888883', '商家介绍3', 100),
	(24, '2021-04-04 15:32:56', '商家4', '123456', '商家名称4', '经营范围4', 'http://localhost:8080/springbootyf10w/upload/shangjia_tupian4.jpg', '13823888884', '商家介绍4', 100),
	(25, '2021-04-04 15:32:56', '商家5', '123456', '商家名称5', '经营范围5', 'http://localhost:8080/springbootyf10w/upload/shangjia_tupian5.jpg', '13823888885', '商家介绍5', 100),
	(26, '2021-04-04 15:32:56', '商家6', '123456', '商家名称6', '经营范围6', 'http://localhost:8080/springbootyf10w/upload/shangjia_tupian6.jpg', '13823888886', '商家介绍6', 100);

DROP TABLE IF EXISTS `shangpinfenlei`;
CREATE TABLE IF NOT EXISTS `shangpinfenlei` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3 COMMENT='商品分类';

DELETE FROM `shangpinfenlei`;
INSERT INTO `shangpinfenlei` (`id`, `addtime`, `shangpinfenlei`) VALUES
	(41, '2021-04-04 15:32:56', '商品分类1'),
	(42, '2021-04-04 15:32:56', '商品分类2'),
	(43, '2021-04-04 15:32:56', '商品分类3'),
	(44, '2021-04-04 15:32:56', '商品分类4'),
	(45, '2021-04-04 15:32:56', '商品分类5'),
	(46, '2021-04-04 15:32:56', '商品分类6');

DROP TABLE IF EXISTS `shangpinxinxi`;
CREATE TABLE IF NOT EXISTS `shangpinxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shangpinjianjie` longtext COMMENT '商品简介',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `shangjiamingcheng` varchar(200) DEFAULT NULL COMMENT '商家名称',
  `xinyuzhi` int DEFAULT NULL COMMENT '信誉值',
  `yuezujiage` int DEFAULT NULL COMMENT '月租价格',
  `thumbsupnum` int DEFAULT '0' COMMENT '赞',
  `crazilynum` int DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  `onelimittimes` int DEFAULT '-1' COMMENT '单限',
  `alllimittimes` int DEFAULT '-1' COMMENT '库存',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 COMMENT='商品信息';

DELETE FROM `shangpinxinxi`;
INSERT INTO `shangpinxinxi` (`id`, `addtime`, `shangpinmingcheng`, `shangpinleixing`, `tupian`, `shangpinjianjie`, `shangpinxiangqing`, `shangjiazhanghao`, `shangjiamingcheng`, `xinyuzhi`, `yuezujiage`, `thumbsupnum`, `crazilynum`, `clicktime`, `clicknum`, `price`, `onelimittimes`, `alllimittimes`) VALUES
	(31, '2021-04-04 15:32:56', '商品名称1', '商品类型1', 'http://localhost:8080/springbootyf10w/upload/shangpinxinxi_tupian1.jpg', '商品简介1', '商品详情1', '商家账号1', '商家名称1', 1, 1, 1, 1, '2024-01-17 22:21:27', 2, 99.9, 1, 99),
	(32, '2021-04-04 15:32:56', '商品名称2', '商品类型2', 'http://localhost:8080/springbootyf10w/upload/shangpinxinxi_tupian2.jpg', '商品简介2', '商品详情2', '商家账号2', '商家名称2', 2, 2, 2, 2, '2024-01-17 20:52:20', 3, 99.9, 2, 99),
	(33, '2021-04-04 15:32:56', '商品名称3', '商品类型3', 'http://localhost:8080/springbootyf10w/upload/shangpinxinxi_tupian3.jpg', '商品简介3', '商品详情3', '商家账号3', '商家名称3', 3, 3, 3, 3, '2024-01-17 20:55:52', 4, 99.9, 3, 99),
	(34, '2021-04-04 15:32:56', '商品名称4', '商品类型4', 'http://localhost:8080/springbootyf10w/upload/shangpinxinxi_tupian4.jpg', '商品简介4', '商品详情4', '商家账号4', '商家名称4', 4, 4, 4, 4, '2021-04-04 23:32:56', 4, 99.9, 4, 99),
	(35, '2021-04-04 15:32:56', '商品名称5', '商品类型5', 'http://localhost:8080/springbootyf10w/upload/shangpinxinxi_tupian5.jpg', '商品简介5', '商品详情5', '商家账号5', '商家名称5', 5, 5, 5, 5, '2021-04-04 23:32:56', 5, 99.9, 5, 99),
	(36, '2021-04-04 15:32:56', '商品名称6', '商品类型6', 'http://localhost:8080/springbootyf10w/upload/shangpinxinxi_tupian6.jpg', '商品简介6', '商品详情6', '商家账号6', '商家名称6', 6, 6, 6, 6, '2021-04-04 23:34:01', 8, 99.9, 6, 99);

DROP TABLE IF EXISTS `storeup`;
CREATE TABLE IF NOT EXISTS `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='收藏表';

DELETE FROM `storeup`;

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 11, '用户1', 'yonghu', '用户', 'a4z1c14g67cxqs49vphtwv7h50gnbo9s', '2021-04-04 15:33:47', '2024-01-17 15:22:38'),
	(2, 1, 'admin', 'users', '管理员', 'ets1urcwt9957wtdwrjnj76qzklmqjx0', '2024-01-17 12:51:25', '2024-01-17 15:22:30');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-04-04 15:32:56');

DROP TABLE IF EXISTS `wanchengdingdan`;
CREATE TABLE IF NOT EXISTS `wanchengdingdan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanhao` varchar(200) DEFAULT NULL COMMENT '订单号',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `shangjiamingcheng` varchar(200) DEFAULT NULL COMMENT '商家名称',
  `yuezujiage` int DEFAULT NULL COMMENT '月租价格',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `zulinyuezhang` int DEFAULT NULL COMMENT '租赁月长',
  `jine` int DEFAULT NULL COMMENT '金额',
  `dingdanzhuangtai` varchar(200) DEFAULT NULL COMMENT '订单状态',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb3 COMMENT='完成订单';

DELETE FROM `wanchengdingdan`;
INSERT INTO `wanchengdingdan` (`id`, `addtime`, `dingdanhao`, `shangpinmingcheng`, `shangpinleixing`, `tupian`, `shangjiazhanghao`, `shangjiamingcheng`, `yuezujiage`, `zhanghao`, `xingming`, `shouji`, `dizhi`, `zulinyuezhang`, `jine`, `dingdanzhuangtai`, `sfsh`, `shhf`) VALUES
	(81, '2021-04-04 15:32:56', '订单号1', '商品名称1', '商品类型1', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '商家账号1', '商家名称1', 1, '账号1', '姓名1', '13823888881', '地址1', 1, 1, '归还中', '是', ''),
	(82, '2021-04-04 15:32:56', '订单号2', '商品名称2', '商品类型2', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '商家账号2', '商家名称2', 2, '账号2', '姓名2', '13823888882', '地址2', 2, 2, '归还中', '是', ''),
	(83, '2021-04-04 15:32:56', '订单号3', '商品名称3', '商品类型3', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '商家账号3', '商家名称3', 3, '账号3', '姓名3', '13823888883', '地址3', 3, 3, '归还中', '是', ''),
	(84, '2021-04-04 15:32:56', '订单号4', '商品名称4', '商品类型4', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '商家账号4', '商家名称4', 4, '账号4', '姓名4', '13823888884', '地址4', 4, 4, '归还中', '是', ''),
	(85, '2021-04-04 15:32:56', '订单号5', '商品名称5', '商品类型5', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '商家账号5', '商家名称5', 5, '账号5', '姓名5', '13823888885', '地址5', 5, 5, '归还中', '是', ''),
	(86, '2021-04-04 15:32:56', '订单号6', '商品名称6', '商品类型6', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '商家账号6', '商家名称6', 6, '账号6', '姓名6', '13823888886', '地址6', 6, 6, '归还中', '是', '');

DROP TABLE IF EXISTS `xinyuzhi`;
CREATE TABLE IF NOT EXISTS `xinyuzhi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangjiazhanghao` varchar(200) NOT NULL COMMENT '商家账号',
  `shangjiamingcheng` varchar(200) NOT NULL COMMENT '商家名称',
  `lianxidianhua` varchar(200) NOT NULL COMMENT '联系电话',
  `xinyuzhi` varchar(200) DEFAULT NULL COMMENT '信誉值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb3 COMMENT='信誉值';

DELETE FROM `xinyuzhi`;
INSERT INTO `xinyuzhi` (`id`, `addtime`, `shangjiazhanghao`, `shangjiamingcheng`, `lianxidianhua`, `xinyuzhi`) VALUES
	(91, '2021-04-04 15:32:56', '商家账号1', '商家名称1', '13823888881', '信誉值1'),
	(92, '2021-04-04 15:32:56', '商家账号2', '商家名称2', '13823888882', '信誉值2'),
	(93, '2021-04-04 15:32:56', '商家账号3', '商家名称3', '13823888883', '信誉值3'),
	(94, '2021-04-04 15:32:56', '商家账号4', '商家名称4', '13823888884', '信誉值4'),
	(95, '2021-04-04 15:32:56', '商家账号5', '商家名称5', '13823888885', '信誉值5'),
	(96, '2021-04-04 15:32:56', '商家账号6', '商家名称6', '13823888886', '信誉值6');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `addtime`, `zhanghao`, `mima`, `xingming`, `xingbie`, `shouji`, `youxiang`, `zhaopian`, `money`) VALUES
	(11, '2021-04-04 15:32:56', '用户1', '123456', '姓名1', '男', '13823888881', '773890001@qq.com', 'http://localhost:8080/springbootyf10w/upload/yonghu_zhaopian1.jpg', 100),
	(12, '2021-04-04 15:32:56', '用户2', '123456', '姓名2', '男', '13823888882', '773890002@qq.com', 'http://localhost:8080/springbootyf10w/upload/yonghu_zhaopian2.jpg', 100),
	(13, '2021-04-04 15:32:56', '用户3', '123456', '姓名3', '男', '13823888883', '773890003@qq.com', 'http://localhost:8080/springbootyf10w/upload/yonghu_zhaopian3.jpg', 100),
	(14, '2021-04-04 15:32:56', '用户4', '123456', '姓名4', '男', '13823888884', '773890004@qq.com', 'http://localhost:8080/springbootyf10w/upload/yonghu_zhaopian4.jpg', 100),
	(15, '2021-04-04 15:32:56', '用户5', '123456', '姓名5', '男', '13823888885', '773890005@qq.com', 'http://localhost:8080/springbootyf10w/upload/yonghu_zhaopian5.jpg', 100),
	(16, '2021-04-04 15:32:56', '用户6', '123456', '姓名6', '男', '13823888886', '773890006@qq.com', 'http://localhost:8080/springbootyf10w/upload/yonghu_zhaopian6.jpg', 100);

DROP TABLE IF EXISTS `zujiedingdan`;
CREATE TABLE IF NOT EXISTS `zujiedingdan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanhao` varchar(200) DEFAULT NULL COMMENT '订单号',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `shangjiamingcheng` varchar(200) DEFAULT NULL COMMENT '商家名称',
  `yuezujiage` int DEFAULT NULL COMMENT '月租价格',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `zulinyuezhang` int DEFAULT NULL COMMENT '租赁月长',
  `jine` int DEFAULT NULL COMMENT '金额',
  `dingdanzhuangtai` varchar(200) DEFAULT NULL COMMENT '订单状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb3 COMMENT='租借订单';

DELETE FROM `zujiedingdan`;
INSERT INTO `zujiedingdan` (`id`, `addtime`, `dingdanhao`, `shangpinmingcheng`, `shangpinleixing`, `tupian`, `shangjiazhanghao`, `shangjiamingcheng`, `yuezujiage`, `zhanghao`, `xingming`, `shouji`, `dizhi`, `zulinyuezhang`, `jine`, `dingdanzhuangtai`) VALUES
	(71, '2021-04-04 15:32:56', '订单号1', '商品名称1', '商品类型1', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '商家账号1', '商家名称1', 1, '账号1', '姓名1', '13823888881', '地址1', 1, 1, '租借中'),
	(72, '2021-04-04 15:32:56', '订单号2', '商品名称2', '商品类型2', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '商家账号2', '商家名称2', 2, '账号2', '姓名2', '13823888882', '地址2', 2, 2, '租借中'),
	(73, '2021-04-04 15:32:56', '订单号3', '商品名称3', '商品类型3', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '商家账号3', '商家名称3', 3, '账号3', '姓名3', '13823888883', '地址3', 3, 3, '租借中'),
	(74, '2021-04-04 15:32:56', '订单号4', '商品名称4', '商品类型4', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '商家账号4', '商家名称4', 4, '账号4', '姓名4', '13823888884', '地址4', 4, 4, '租借中'),
	(75, '2021-04-04 15:32:56', '订单号5', '商品名称5', '商品类型5', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '商家账号5', '商家名称5', 5, '账号5', '姓名5', '13823888885', '地址5', 5, 5, '租借中'),
	(76, '2021-04-04 15:32:56', '订单号6', '商品名称6', '商品类型6', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '商家账号6', '商家名称6', 6, '账号6', '姓名6', '13823888886', '地址6', 6, 6, '租借中');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
