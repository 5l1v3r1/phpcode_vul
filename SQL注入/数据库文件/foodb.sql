-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2020 �?03 �?08 �?07:03
-- 服务器版本: 5.5.53
-- PHP 版本: 5.6.27

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `foodb`
--
CREATE DATABASE `foodb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `foodb`;

-- --------------------------------------------------------

--
-- 表的结构 `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `news`
--

INSERT INTO `news` (`id`, `title`, `value`) VALUES
(1, '共和国70年教育督导的五个精彩瞬间', '教育督导是教育管理的重要组成部分，同时也是现代教育治理体系的重要组成部分。作为新中国成立以来教育部最早设立的“一厅五司”之一（原名视导司），教育督导系统开展的教育督导工作在推动教育改革与发展中发挥了重要的作用。'),
(2, '自信与反思：从PISA2018看我国四省市的教育管理', '近期，OECD（经济合作与发展组织）公布了北京、上海、江苏、浙江四省市参加PISA2018的结果，引发了社会的广泛关注。PISA对参测国家（地区）15岁在校学生的阅读、数学、科学素养等核心素养进行测评，并对影响学生素养的关键因素进行问卷调查。通过PISA，我们不仅可以了解当前学生的学习与教师的教学，还可以基于数据研判四省市教育改革发展趋势。');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'admin', '123456'),
(2, 'owner', 'abcdefg'),
(3, 'guest', 'qwert!@#$'),
(100, 'test', 'asdfghjkl'),
(888, ''' union select 1,user(),3 -- ', '111111');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
