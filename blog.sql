-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 08, 2019 at 09:54 AM
-- Server version: 5.1.71-community-log
-- PHP Version: 5.4.45

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `bg_adminuser`
--

CREATE TABLE IF NOT EXISTS `bg_adminuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员id',
  `name` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `level` int(11) NOT NULL DEFAULT '1' COMMENT '管理员等级',
  `truename` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tel` varchar(11) DEFAULT '13036694676',
  `addtime` int(50) NOT NULL COMMENT '添加时间',
  `icons` varchar(255) NOT NULL DEFAULT '"1.jpg"',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `bg_adminuser`
--

INSERT INTO `bg_adminuser` (`id`, `name`, `pass`, `level`, `truename`, `email`, `tel`, `addtime`, `icons`) VALUES
(1, 'admin', '28bfcf057ec5a48f18c3154c1f2bd324', 0, 'liuhaoqiang', '201444233@qq.com', '13036694676', 1527172929, '1.jpg'),
(10, 'tqtqtq', '7fef6171469e80d32c0559f88b377245', 1, '谭倩', '1005830935@qq.com', '18582596706', 1531894462, '"1.jpg"');

-- --------------------------------------------------------

--
-- Table structure for table `bg_article`
--

CREATE TABLE IF NOT EXISTS `bg_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `readss` int(10) unsigned NOT NULL,
  `class` int(10) unsigned NOT NULL COMMENT '1-php 2-mysql 3-web 4-others',
  `describle` varchar(255) NOT NULL,
  `content` mediumtext NOT NULL,
  `back` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '0表示回收',
  `user` varchar(50) NOT NULL COMMENT '发布者',
  `addtime` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `class` (`class`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=124 ;

--
-- Dumping data for table `bg_article`
--

INSERT INTO `bg_article` (`id`, `title`, `readss`, `class`, `describle`, `content`, `back`, `user`, `addtime`) VALUES
(41, 'web.config添加伪静态规则实现页面的301', 94, 1, '伪静态', '&lt;p&gt;伪静态：实现www.xxx.com/index.html &amp;nbsp;301到www.xxx.com。&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&amp;lt;?xml version=&amp;quot;1.0&amp;quot; encoding=&amp;quot;UTF-8&amp;quot;?&amp;gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;lt;configuration&amp;gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;lt;system.webServer&amp;gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;lt;rewrite&amp;gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;lt;rules&amp;gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;lt;rule name=&amp;quot;301Redirect&amp;quot; stopProcessing=&amp;quot;true&amp;quot;&amp;gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;lt;match url=&amp;quot;^(.*)&amp;quot; ignoreCase=&amp;quot;false&amp;quot; /&amp;gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;lt;conditions logicalGrouping=&amp;quot;MatchAll&amp;quot;&amp;gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;lt;add input=&amp;quot;{URL}&amp;quot; pattern=&amp;quot;^/index.html$&amp;quot; /&amp;gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;lt;/conditions&amp;gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;lt;action type=&amp;quot;Redirect&amp;quot; url=&amp;quot;http://www.xxx.com&amp;quot; redirectType=&amp;quot;Permanent&amp;quot;&amp;nbsp; /&amp;gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;lt;/rule&amp;gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;lt;/rules&amp;gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;lt;/rewrite&amp;gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;lt;/system.webServer&amp;gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;lt;/configuration&amp;gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 0, 'admin', '1543221620'),
(120, 'asdf', 9, 2, 'asdfa', '&lt;p&gt;asdfasdf&lt;/p&gt;', 1, 'admin', '1546421414'),
(121, 'mysql is good!', 4, 2, 'mysql', '&lt;p&gt;lalalalalalalalala&amp;nbsp; 我是卖包的小画家。mysql&lt;br/&gt;&lt;/p&gt;', 1, 'admin', '1546760373'),
(122, 'php是世界上最好的语言', 49, 1, 'php 语言', '&lt;p&gt;您好啊！&lt;/p&gt;&lt;pre class=&quot;brush:php;toolbar:false&quot;&gt;function&amp;nbsp;upfile($file){\r\n\r\n	$error=$file[&amp;#39;file&amp;#39;][&amp;#39;error&amp;#39;];\r\n\r\n	if($error==4){\r\n		echo&amp;nbsp;&amp;quot;请选择需要上传的文件&amp;quot;;\r\n		exit;\r\n	}\r\n\r\n	if($error==1){\r\n		echo&amp;nbsp;&amp;quot;超过上传大小&amp;quot;;\r\n		exit;\r\n	}\r\n\r\n	$size=1*1024*1024;\r\n\r\n	if($file[&amp;#39;file&amp;#39;][&amp;#39;size&amp;#39;]&amp;gt;$size){\r\n		echo&amp;nbsp;&amp;quot;超过1M,禁止上传&amp;quot;;\r\n		exit;\r\n	}\r\n	//运行上传的文件类型\r\n	$ftype=array(&amp;#39;png&amp;#39;,&amp;#39;jpeg&amp;#39;,&amp;#39;jpg&amp;#39;);\r\n\r\n	$name=$file[&amp;#39;file&amp;#39;][&amp;#39;name&amp;#39;];\r\n	\r\n	$arr=explode(&amp;#39;.&amp;#39;,$name);\r\n\r\n	$ext=array_pop($arr);\r\n\r\n	if(!in_array($ext,&amp;nbsp;$ftype)){\r\n\r\n		echo&amp;nbsp;&amp;quot;只允许上传png&amp;nbsp;jpeg&amp;nbsp;jpg格式的文件&amp;quot;;\r\n		exit;\r\n	}\r\n	date_default_timezone_set(&amp;#39;Asia/Shanghai&amp;#39;);\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;\r\n	$date=date(&amp;#39;Ymd&amp;#39;,time());\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;//根据日期生成对应的上传图片目录\r\n	$path=&amp;#39;./static/image&amp;#39;.&amp;quot;/&amp;quot;.$date;\r\n\r\n	if(!file_exists($path)){\r\n		mkdir($path);\r\n	}\r\n\r\n	$newf=time().mt_rand().&amp;quot;.&amp;quot;.$ext;\r\n\r\n	$imgpath=$path.&amp;quot;/&amp;quot;.$newf;\r\n	move_uploaded_file($file[&amp;#39;file&amp;#39;][&amp;#39;tmp_name&amp;#39;],$imgpath);\r\n	return&amp;nbsp;$imgpath;\r\n}&lt;/pre&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 1, 'admin', '1546840594'),
(123, 'windows下php5.3、php5.4、php5.5、php5.6安装memcache', 63, 1, 'memcache', '&lt;p&gt;1、准备软件&lt;/p&gt;&lt;p&gt;memcache官方下载地址&lt;/p&gt;&lt;p&gt;a、php扩展dll官方下载地址:http://pecl.php.net/package/memcache/3.0.8/windows&lt;/p&gt;&lt;p&gt;b、memcache软件下载地址:https://pan.baidu.com/s/1wc4S_B1IWxl3XGRtwIvXjw&lt;/p&gt;&lt;p&gt;2、本例以php5.4安装为例，其他都雷同。&lt;/p&gt;&lt;p&gt;a、安装memcache软件。&lt;/p&gt;&lt;p&gt;将下载的memcache解压。然后打开dos窗口。切换到memcache所在目录。&lt;/p&gt;&lt;p&gt;执行memcache.exe -d install （此处需要使用管理员权限打开dos才行）&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20190106/1546780491996788.png&quot;/&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;b、安装完成之后需要启动memcache。&lt;/p&gt;&lt;p&gt;启动:memcache.exe -d start&amp;nbsp;（此处需要使用管理员权限打开dos才行）&lt;/p&gt;&lt;p&gt;暂停:memcache.exe -d stop&amp;nbsp;&amp;nbsp;（此处需要使用管理员权限打开dos才行）&lt;/p&gt;&lt;p&gt;c、php安装memcache扩展&lt;/p&gt;&lt;p&gt;1、找到php的安装目录，将php_memcache.dll放到ext目录，然后打开php.ini，在文件尾部添加extension=php_memcache.dll，然后重启web服务即可。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 1, 'admin', '1546852533');

-- --------------------------------------------------------

--
-- Table structure for table `bg_comment`
--

CREATE TABLE IF NOT EXISTS `bg_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) NOT NULL,
  `uid` int(11) NOT NULL COMMENT '评论用户',
  `aid` int(11) NOT NULL COMMENT '文章ID',
  `addtime` int(255) NOT NULL COMMENT '评论时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bg_links`
--

CREATE TABLE IF NOT EXISTS `bg_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `linkname` varchar(255) NOT NULL COMMENT '链接名',
  `url` varchar(255) NOT NULL COMMENT '地址',
  `user` varchar(50) NOT NULL COMMENT '添加人',
  `addtime` int(50) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bg_user`
--

CREATE TABLE IF NOT EXISTS `bg_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT '"还没有添加邮箱"',
  `tel` varchar(50) DEFAULT '"还没有添加电话"',
  `addtime` int(255) NOT NULL,
  `icons` varchar(255) DEFAULT '1.jpg',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
