-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-07-15 18:41:44
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `buyer`
--

-- --------------------------------------------------------

--
-- 表的结构 `tr_blank`
--

CREATE TABLE IF NOT EXISTS `tr_blank` (
  `blank` int(11) NOT NULL AUTO_INCREMENT,
  `info` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`blank`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tr_buy`
--

CREATE TABLE IF NOT EXISTS `tr_buy` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `money` int(11) NOT NULL,
  `url` text CHARACTER SET utf8 NOT NULL COMMENT '付款链接或者账号',
  `info` text CHARACTER SET utf8 NOT NULL COMMENT '留言',
  `ctime` int(11) NOT NULL,
  `utime` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `comment` longtext CHARACTER SET utf8 NOT NULL,
  `del` int(11) NOT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tr_level`
--

CREATE TABLE IF NOT EXISTS `tr_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` int(11) NOT NULL,
  `point` float NOT NULL,
  `precent` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `tr_level`
--

INSERT INTO `tr_level` (`id`, `level`, `point`, `precent`) VALUES
(1, 1, 100, 99),
(2, 2, 1000, 98),
(3, 3, 2000, 97),
(4, 4, 3000, 96),
(5, 5, 4000, 96),
(6, 6, 5000, 96),
(7, 7, 6000, 95),
(8, 8, 7000, 95),
(9, 9, 8000, 95),
(10, 10, 9000, 94);

-- --------------------------------------------------------

--
-- 表的结构 `tr_phone`
--

CREATE TABLE IF NOT EXISTS `tr_phone` (
  `xid` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(128) NOT NULL,
  `code` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `ip` varchar(128) NOT NULL,
  `num` int(11) NOT NULL,
  PRIMARY KEY (`xid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `tr_phone`
--

INSERT INTO `tr_phone` (`xid`, `phone`, `code`, `time`, `ip`, `num`) VALUES
(2, '12123123123', 778630, 1500048028, '212.23.23.1', 4),
(3, '12123123123', 747310, 1500048070, '22.23.23.1', 3);

-- --------------------------------------------------------

--
-- 表的结构 `tr_post`
--

CREATE TABLE IF NOT EXISTS `tr_post` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET utf8 NOT NULL,
  `info` text CHARACTER SET utf8 NOT NULL,
  `tag` text CHARACTER SET utf8 NOT NULL,
  `del` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `utime` int(11) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tr_site`
--

CREATE TABLE IF NOT EXISTS `tr_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8 NOT NULL,
  `title` text CHARACTER SET utf8 NOT NULL,
  `keywords` text CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `icp` text CHARACTER SET utf8 NOT NULL,
  `count` text CHARACTER SET utf8 NOT NULL,
  `line` text CHARACTER SET utf8 NOT NULL,
  `wechat` text CHARACTER SET utf8 NOT NULL,
  `history` longtext CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tr_temple`
--

CREATE TABLE IF NOT EXISTS `tr_temple` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `pay_name` text CHARACTER SET utf8 NOT NULL,
  `pay_image` text CHARACTER SET utf8 NOT NULL,
  `pay_info` text CHARACTER SET utf8 NOT NULL,
  `pay_url` text CHARACTER SET utf8 NOT NULL,
  `time` int(11) NOT NULL,
  `del` int(11) NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tr_user`
--

CREATE TABLE IF NOT EXISTS `tr_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `is_true` int(11) NOT NULL,
  `name` varchar(128) CHARACTER SET utf8 NOT NULL,
  `true_name` varchar(128) CHARACTER SET utf8 NOT NULL,
  `salt` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `phone` varchar(128) NOT NULL,
  `is_phone` int(11) NOT NULL COMMENT '是否验证成功',
  `email` varchar(128) CHARACTER SET utf8 NOT NULL,
  `code` varchar(64) NOT NULL COMMENT '验证邮箱',
  `is_email` int(11) NOT NULL,
  `idcard_image` text CHARACTER SET utf8 NOT NULL,
  `idcard_info` text CHARACTER SET utf8 NOT NULL,
  `idcode_bumber` varchar(128) NOT NULL,
  `sex` int(11) NOT NULL,
  `is_idcard` int(11) NOT NULL,
  `s_type` text CHARACTER SET utf8 NOT NULL,
  `s_image` text CHARACTER SET utf8 NOT NULL,
  `is_s` int(11) NOT NULL,
  `bank` text CHARACTER SET utf8 NOT NULL,
  `is_bank` int(11) NOT NULL,
  `point` int(11) NOT NULL COMMENT '购买金额',
  `history` longtext CHARACTER SET utf8 NOT NULL,
  `del` int(11) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tr_verify`
--

CREATE TABLE IF NOT EXISTS `tr_verify` (
  `vid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1身份证 2第二证件 3银行卡',
  `ctime` int(11) NOT NULL,
  `done` int(11) NOT NULL COMMENT '完成时间',
  PRIMARY KEY (`vid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
