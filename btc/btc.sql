/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : btc

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2018-05-26 13:49:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `movesay_admin`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_admin`;
CREATE TABLE `movesay_admin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `username` char(16) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `moble` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `last_login_time` int(11) unsigned NOT NULL,
  `last_login_ip` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员表';

-- ----------------------------
-- Records of movesay_admin
-- ----------------------------
INSERT INTO `movesay_admin` VALUES ('1', 'admin', 'admin', '多比特', '', 'd739613c65b5aa6e6499a840e2fd10fe', '0', '0', '0', '0', '0', '1');
INSERT INTO `movesay_admin` VALUES ('2', '15116880039@163.com', 'guanli', '管理员', '15116880039', 'd739613c65b5aa6e6499a840e2fd10fe', '0', '0', '0', '0', '0', '1');
INSERT INTO `movesay_admin` VALUES ('3', '1331@qq.com', 'admin1', '12345', '13655074562', 'd739613c65b5aa6e6499a840e2fd10fe', '0', '0', '0', '0', '0', '1');

-- ----------------------------
-- Table structure for `movesay_adver`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_adver`;
CREATE TABLE `movesay_adver` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `url` varchar(255) NOT NULL,
  `img` varchar(250) NOT NULL,
  `type` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='广告图片表';

-- ----------------------------
-- Records of movesay_adver
-- ----------------------------
INSERT INTO `movesay_adver` VALUES ('6', '', '', '5b08146dc5fb4.jpg', '', '0', '1527256175', '1527256177', '1');
INSERT INTO `movesay_adver` VALUES ('5', '', '', '5b081462256b1.jpg', '', '0', '1527256164', '1527256166', '1');
INSERT INTO `movesay_adver` VALUES ('4', '', '', '5b08145514e0e.jpg', '', '0', '1527256152', '1527256154', '1');

-- ----------------------------
-- Table structure for `movesay_appads`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_appads`;
CREATE TABLE `movesay_appads` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `content` varchar(256) NOT NULL,
  `url` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `block_id` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='广告图片表';

-- ----------------------------
-- Records of movesay_appads
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_appadsblock`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_appadsblock`;
CREATE TABLE `movesay_appadsblock` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `content` varchar(256) NOT NULL,
  `rank` varchar(256) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `remain` varchar(255) DEFAULT '3',
  `type` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='广告图片表';

-- ----------------------------
-- Records of movesay_appadsblock
-- ----------------------------
INSERT INTO `movesay_appadsblock` VALUES ('1', 'wap广告', 'wap广告', '1', '/Upload/app/58eb489aa0fe6.jpg', '', '', '0', '0', '0', '1');

-- ----------------------------
-- Table structure for `movesay_appc`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_appc`;
CREATE TABLE `movesay_appc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `web_name` varchar(64) DEFAULT NULL,
  `web_title` varchar(64) DEFAULT NULL,
  `web_icp` varchar(64) DEFAULT NULL,
  `index_img` varchar(256) DEFAULT NULL,
  `pay` varchar(256) DEFAULT NULL,
  `withdraw_notice` varchar(256) DEFAULT NULL,
  `charge_notice` varchar(256) DEFAULT NULL,
  `show_coin` varchar(255) DEFAULT NULL,
  `show_market` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of movesay_appc
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_app_log`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_app_log`;
CREATE TABLE `movesay_app_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `type` varchar(64) NOT NULL,
  `content` varchar(255) NOT NULL,
  `addtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of movesay_app_log
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_app_vip`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_app_vip`;
CREATE TABLE `movesay_app_vip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(255) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `rule` text,
  `times` int(11) DEFAULT NULL,
  `price_num` varchar(255) DEFAULT NULL,
  `price_coin` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `addtime` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of movesay_app_vip
-- ----------------------------
INSERT INTO `movesay_app_vip` VALUES ('1', '1', 'VIP会员卡', '[{\"id\":\"1\",\"num\":1000}]', '100', '100', '3', '1', '1476004810');

-- ----------------------------
-- Table structure for `movesay_app_vipuser`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_app_vipuser`;
CREATE TABLE `movesay_app_vipuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `vip_id` int(11) NOT NULL,
  `addtime` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of movesay_app_vipuser
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_article`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_article`;
CREATE TABLE `movesay_article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  `adminid` int(10) unsigned NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 NOT NULL,
  `hits` int(11) unsigned NOT NULL,
  `footer` int(11) unsigned NOT NULL,
  `index` int(11) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `img` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `type` (`type`),
  KEY `adminid` (`adminid`)
) ENGINE=MyISAM AUTO_INCREMENT=159 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of movesay_article
-- ----------------------------
INSERT INTO `movesay_article` VALUES ('157', '行业资讯行业资讯行业资讯行业资讯', '行业资讯行业资讯行业资讯行业资讯行业资讯行业资讯行业资讯行业资讯行业资讯行业资讯行业资讯行业资讯行业资讯行业资讯行业资讯行业资讯行业资讯行业资讯行业资讯行业资讯行业资讯行业资讯行业资讯行业资讯行业资讯行业资讯行业资讯行业资讯行业资讯行业资讯行业资讯行业资讯行业资讯行业资讯', '1', 'bbb', '0', '1', '1', '0', '1527255956', '1527255955', '1', '');
INSERT INTO `movesay_article` VALUES ('158', '官方公告官方公告官方公告官方公告', '官方公告官方公告官方公告官方公告官方公告官方公告官方公告官方公告官方公告官方公告官方公告官方公告官方公告官方公告官方公告官方公告官方公告官方公告官方公告官方公告官方公告官方公告官方公告官方公告官方公告官方公告官方公告官方公告官方公告官方公告官方公告官方公告官方公告官方公告官方公告官方公告', '1', 'aaa', '0', '1', '1', '0', '1527255983', '1527255982', '1', '');

-- ----------------------------
-- Table structure for `movesay_article_type`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_article_type`;
CREATE TABLE `movesay_article_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 NOT NULL,
  `remark` varchar(50) CHARACTER SET utf8 NOT NULL,
  `index` varchar(50) CHARACTER SET utf8 NOT NULL,
  `footer` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `shang` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of movesay_article_type
-- ----------------------------
INSERT INTO `movesay_article_type` VALUES ('1', '公司简介', '公司简介', '行业资讯', '0', '1', 'aboutus', '<br />\r\n&nbsp; &nbsp; &nbsp; 多比特交易平台(www.BTC131.com)由深圳区链网络科技有限公司于2016年10月创办，公司注册资本500万，2016年11月正式上线。上线之初即获得天使资金投资，投资的60%用于平台推广和宣传,其核心团队由多个关注虚拟货币多年的技术人员组成.<br />\r\n&nbsp; &nbsp; &nbsp;多比特交易平台是面向中国的虚拟货币交易平台，我们致力于为您提供安全、快捷、稳定的虚拟货币交易，秉承谷歌“不作恶”的原则，让大家都能在这里获取安全交易。多比特交易平台在行业内率先实现了 100% 的数字币和法币的数量均为公开透明的。及时的展示和公布平台的会员数。<br />\r\n&nbsp; &nbsp;&nbsp;在发展过程中，我们不仅成了一个团队。我们成了对这项事业有着共同热爱的好朋友！我们所有的员工都具备顶尖资质，能够为每一位客户提供最高水平的服务和个性化方案。我们的团队提供7X12小时的服务，因此让每个客户快乐稳定和优质的交易体验。<br />\r\n<br />', '1', '1480224496', '1480224497', '1');
INSERT INTO `movesay_article_type` VALUES ('2', 'xiazai', '下载中心', '最新公告', '0', '1', '', '', '3', '0', '0', '1');
INSERT INTO `movesay_article_type` VALUES ('3', 'help', '帮助中心', '帮助中心', '0', '1', '', '', '2', '0', '0', '1');
INSERT INTO `movesay_article_type` VALUES ('4', 'aboutus', '关于我们', '关于我们', '0', '1', '', '', '1', '0', '0', '1');
INSERT INTO `movesay_article_type` VALUES ('5', '联系我们', '联系我们', '', '0', '1', 'aboutus', '请发送邮箱至kefu@26bi.com', '2', '1480224546', '1480224548', '1');
INSERT INTO `movesay_article_type` VALUES ('6', '加入我们', '加入我们', '', '0', '1', 'aboutus', '<p>\r\n	招聘PHP程序员数名 要求3年以上PHP开发经验\r\n</p>\r\n<p>\r\n	市场推广业务员数名 &nbsp; 要求1年以上经验\r\n</p>\r\n<p>\r\n	客服人员数名 要求2年以上客服经验\r\n</p>\r\n<p>\r\n	&nbsp;联系邮箱zhaopin@26bi.com\r\n</p>', '4', '1480865835', '1480865836', '1');
INSERT INTO `movesay_article_type` VALUES ('7', '法律声明', '法律声明', '', '0', '1', 'aboutus', '《虚拟币交易平台--多比特交易平台用户服务协议》<br />\r\n一、总则<br />\r\n1.1、 用户在使用虚拟币交易平台服务前，应当仔细阅读《多比特交易平台网用户服务协议》（以下<br />\r\n简称“本协议”）的全部内容，对于本协议中的加重字体、斜体、下划线、颜色标记等条款<br />\r\n需重点阅读、理解。<br />\r\n1.2、 多比特交易平台（http://www.btc131.com）所提供的各项服务的所有权和运作权均归深圳市区链网络科技有限公司（以下简称“多比特”）所有。<br />\r\n1.3、 用户应当同意本协议的全部条款并按照页面上的提示完成全部的注册程序。用户在进<br />\r\n行注册程序过程中点击\"注册\"按钮即表示用户与多比特交易平台达成以下协议，完全接受本协议项下<br />\r\n的全部条款，本协议即在用户与多比特交易平台之间产生法律效力，对双方均具有法律约束力。<br />\r\n1.4、 用户注册成功后，多比特交易平台将给予每个用户一个用户帐号及相应的密码，该用户帐号和<br />\r\n密码由用户负责保管；用户应当对以其用户帐号进行的所有活动和事件负法律责任。<br />\r\n1.5、 《多比特交易平台用户服务协议》、单项服务条款、全部活动条款及公告可由多比特交易平台随时更<br />\r\n新，且无需另行通知。多比特交易平台有权对上述条款进行修改，修改后的协议一旦公布即有效替代<br />\r\n原有协议。用户可随时查询最新协议。用户在使用多比特交易平台提供的各项服务之前，应仔细阅读<br />\r\n本协议及本协议不可分割的各项服务协议。用户在使用相关服务时,应关注并遵守其所适用<br />\r\n的相关条款。用户如不同意本服务协议及/或随时对其的修改，不得访问或使用本网站相关<br />\r\n服务；用户一旦使用多比特交易平台服务，即视为用户已了解并完全同意本协议及其他服务条款中的<br />\r\n各项内容，包括多比特交易平台对本协议及其他服务条款随时所做的任何修改，并成为多比特交易平台用户。<br />\r\n二、用户资格及注册<br />\r\n2.1、 用户应为具有完全民事权利能力和民事行为能力的自然人、法人，或是能够独立承担<br />\r\n民事责任能力的其他组织。用户若不具有前述规定的法律能力资格，须经法定代理人同意或<br />\r\n由法定代理人代理，或是得到有权主体授权后进行注册、交易。或虽不具有完全民事权利能<br />\r\n力和行为能力,但点击同意注册按钮， 多比特交易平台即视为经其法定代理人同意并由其法定代理人<br />\r\n代理注册及完成交易等服务内容的操作。<br />\r\n2.2、 用户使用多比特交易平台提供的网络平台服务前，应自行准备如下设备并承担如下开支：<br />\r\n2.2.1、 自行配备上网的所需设备，包括个人电脑、调制解调器或其他必备上网装置；<br />\r\n2.2.2、 自行负担个人上网所支付的与此服务有关的电话费用、网络费用等。<br />\r\n2.3、 用户点击“同意以下协议并注册”按钮，则视为用户同意本协议的所有条款，且具有<br />\r\n浏览多比特交易平台平台相关信息、提交买单、合理交易等使用多比特交易平台提供的全部服务的权利能力和<br />\r\n行为能力，同意承担由此带来的全部法律责任。<br />\r\n<br />\r\n2.4、 用户注册、使用多比特交易平台不得出于非法或破坏多比特交易平台交易秩序的目的，用户保证向比特<br />\r\n儿提交的全部信息真实、准确和完整，不存在盗用、借用、买入非本人手机号码、电子邮箱<br />\r\n等进行注册、虚假交易和作弊交易的行为，用户若存在上述违规行为，多比特交易平台有权取消其交<br />\r\n易资格及因参加交易活动所获权益，并停止服务、封停帐号。如该违规行为给多比特交易平台造成损<br />\r\n失的，多比特交易平台保留追究赔偿及诉至法律解决的权利。<br />\r\n2.5、 用户注册成功后，应妥善保管其多比特交易平台平台帐户及密码，定期或不定期修改密码，在<br />\r\n每次使用多比特交易平台服务完毕后及时退出帐户，以确保帐户安全。用户不得将多比特交易平台平台帐户出<br />\r\n借、转让或用作其他非法用途，否则因帐户未妥善保管而造成损失的，用户应承担相应法律<br />\r\n责任。<br />\r\n三、用户个人信息保护<br />\r\n3.1、本协议所称之多比特交易平台用户信息是指符合法律、法规及相关规定，并符合下述范围的信<br />\r\n息：<br />\r\n3.1.1、用户注册多比特交易平台或申请多比特交易平台会员卡时，向多比特交易平台提供的个人信息；<br />\r\n3.1.2、用户在使用多比特交易平台服务、参加网站活动或访问网站网页时，多比特交易平台自动接收并记录的<br />\r\n用户浏览器端或手机客户端数据，包括但不限于 IP 地址、网站 Cookie 中的资料及用户要求<br />\r\n取用的网页记录；<br />\r\n3.1.3、多比特交易平台从商业伙伴处合法获取的用户个人信息；<br />\r\n3.1.4、其它多比特交易平台通过合法途径获取的用户个人信息。<br />\r\n3.2、多比特交易平台承诺：非经法定原因或用户事先许可，多比特交易平台不会向任何第三方透露用户的密<br />\r\n码、姓名、身份证，手机号码等非公开信息。并对用户信息中涉及识别用户个人身份和用户个人隐私<br />\r\n的信息进行保护，承诺在未获得用户许可的情况下，不会将用户的上述信息对外公开或提供<br />\r\n给任何第三方，但以下情况除外：<br />\r\n3.2.1、经用户同意向用户本人或其他第三方披露；<br />\r\n3.2.2、经用户同意公开其个人资料，享受为其提供的产品和服务；<br />\r\n3.2.3、根据法律、法规等相关规定，或行政机构要求，向行政、司法机构或其他法律规定的<br />\r\n第三方披露；<br />\r\n3.2.4、其它多比特交易平台根据法律、法规等相关规定进行的披露。<br />\r\n四、服务的提供、修改及终止<br />\r\n<br />\r\n4.1、用户可根据本协议及多比特交易平台公布的相关使用规则，查阅在多比特交易平台平台上发布的交易及<br />\r\n相关资料，通过多比特交易平台平台交易具体的金融服务产品等有关活动，及多比特交易平台现有及将来可能<br />\r\n提供的其他服务。<br />\r\n4.2、用户在使用多比特交易平台提供的上述服务时，应遵守本协议及多比特交易平台的相关使用规则，遵守<br />\r\n自愿、平等、公平及诚实信用原则，不利用多比特交易平台平台侵犯他人合法权益及谋取不正当利益，<br />\r\n不扰乱网上交易的正常秩序。<br />\r\n4.3、用户在接受多比特交易平台各项服务的同时，同意接受多比特交易平台网提供的各类信息服务。用户在<br />\r\n此授权多比特交易平台可以向其电子邮件、手机、通信地址等发送商业信息。用户有权选择不接受比<br />\r\n特儿提供的各类信息服务，并进入多比特交易平台相关页面进行更改。<br />\r\n4.4、多比特交易平台会尽全力维护平台的正常运行，以向用户提供持续、稳定、安全、顺畅的服务。<br />\r\n但用户理解并同意：多比特交易平台对服务页面进行改版、升级网站系统、增加服务功能等须中断服<br />\r\n务的操作时，有权暂时中断服务。<br />\r\n4.5、多比特交易平台保留随时修改或中断服务而不需通知用户的权利。多比特交易平台有权行使修改或中断<br />\r\n服务的权利，不需对用户或任何无直接关系的第三方负责。<br />\r\n4.6、用户对本协议的修改有异议，或对多比特交易平台的服务不满，可以行使如下权利：<br />\r\n4.6.1、停止使用多比特交易平台的网络服务；<br />\r\n4.6.2、通过客服等渠道告知多比特交易平台停止对其服务。结束服务后，用户使用多比特交易平台网络服务的<br />\r\n权利立即终止。在此情况下，多比特交易平台没有义务传送任何未处理的信息或未完成的服务给用户<br />\r\n或任何无直接关系的第三方。<br />\r\n五、用户权利<br />\r\n5.1、用户的用户名、密码和安全性<br />\r\n5.1.1、用户有权选择是否成为多比特交易平台会员，用户选择成为多比特交易平台注册用户的，可自行创建、<br />\r\n修改昵称。用户名和昵称的命名及使用应遵守相关法律法规并符合网络道德。用户名和昵称<br />\r\n中不能含有任何侮辱、威胁、淫秽、谩骂等侵害他人合法权益的文字。<br />\r\n5.1.2、用户一旦注册成功，成为多比特交易平台的会员，将得到用户名（用户邮箱）和密码，并对以<br />\r\n此组用户名和密码登入系统后所发生的所有活动和事件负责，自行承担一切使用该用户名的<br />\r\n言语、行为等而直接或者间接导致的法律责任。<br />\r\n5.1.3、用户有义务妥善保管多比特交易平台网账号、用户名和密码、短信验证码、谷哥验证码，用户<br />\r\n将对用户名和密码、和谷哥密钥安全负全部责任。因用户原因导致用户名或密码、谷哥密钥<br />\r\n泄露而造成的任何法律后果由用户本人负责，由于用户自身原因泄露这些信息导致的财产损<br />\r\n失，本站不负相关责任。由于本站是交易网站，登录密码、提现密码、交易密码、短信密码、<br />\r\n谷哥密码等不得使用相同密码，否则会有安全隐患，相关责任由用户自身承担。<br />\r\n5.1.4、用户密码遗失的，可以通过注册电子邮箱发送的链接重置密码，以手机号码注册的用<br />\r\n户可以凭借手机号码找回原密码。用户若发现任何非法使用用户名或存在其他安全漏洞的情<br />\r\n况，应立即告知多比特交易平台。<br />\r\n5.1.5、多比特交易平台不会向任何用户索取密码，不会让用户往任何非本站交易中心里提供的帐户、<br />\r\nbtc/ltc 充值地址打款，请大家不要相信任何多比特交易平台打折、优惠等诈骗信息，往非 btc/ltc 交易<br />\r\n中心提供的账户、地址里打款或币造成的损失本站不负责任。<br />\r\n5.2、用户有权根据网站相关规定，在发布信息等贡献后，取得多比特交易平台给予的奖励；<br />\r\n5.3、用户有权修改其个人账户中各项可修改信息，自行选择昵称和录入介绍性文字，自行<br />\r\n决定是否提供非必填项的内容；<br />\r\n5.4、用户有权参加多比特交易平台社区，并发表符合国家法律规定，并符合多比特交易平台社区规则的文章<br />\r\n及观点；<br />\r\n5.5、用户有权根据网站相关规定，获得多比特交易平台给与的奖励（如社区学分、徽章等）；<br />\r\n5.6、用户有权参加多比特交易平台组织提供的各项线上、线下活动；<br />\r\n5.7、用户有权根据多比特交易平台网站规定，享受多比特交易平台提供的其它各类服务。<br />\r\n六、用户义务<br />\r\n6.1 用户可以在多比特交易平台平台发布对商品或交易服务的评价信息，并可对其进行适当的修<br />\r\n改、删除，但不得不得利用本站危害国家安全、泄露国家秘密，不得侵犯国家社会集体的和<br />\r\n公民的合法权益，不得利用本站制作、复制和传播下列信息：<br />\r\n6.1.1、 反对宪法所确定的基本原则，煽动、抗拒、破坏宪法和法律、行政法规实施的；<br />\r\n6.1.2、 煽动颠覆国家政权，推翻社会主义制度，煽动、分裂国家，破坏国家统一的；<br />\r\n6.1.3、 损害国家荣誉和利益的；<br />\r\n6.1.4、 煽动民族仇恨、民族歧视，破坏民族团结的；<br />\r\n6.1.5、 任何包含对种族、性别、宗教、地域内容等歧视的；<br />\r\n6.1.6、 捏造或者歪曲事实，散布谣言，扰乱社会秩序的；<br />\r\n6.1.7、 宣扬封建迷信、邪教、淫秽、色情、赌博、暴力、凶杀、恐怖、教唆犯罪的；<br />\r\n<br />\r\n6.1.8、 公然侮辱他人或者捏造事实诽谤他人的，或者进行其他恶意攻击的；<br />\r\n6.1.9、 损害国家机关信誉的；<br />\r\n6.1.10、其他违反宪法和法律行政法规的。<br />\r\n6.1.11、进行商业广告行为的<br />\r\n6.2、用户不得通过任何手段恶意注册多比特交易平台网站帐号，包括但不限于以牟利、炒作、套现、<br />\r\n获奖等为目的多个账号注册。用户亦不得盗用其他用户帐号。如用户违反上述规定，则比特<br />\r\n儿网有权直接采取一切必要的措施，包括但不限于删除用户发布的内容、取消用户在网站获<br />\r\n得的星级、荣誉以及虚拟财富，暂停或查封用户帐号，取消因违规所获利益，乃至通过诉讼<br />\r\n形式追究用户法律责任等。<br />\r\n6.3、禁止用户将多比特交易平台网任何形式作为从事各种非法活动的场所、平台或媒介。未经比特<br />\r\n儿的授权或许可，用户不得借用本站的名义从事任何商业活动，也不得以任何形式将多比特交易平台<br />\r\n作为从事商业活动的场所、平台或媒介。如用户违反上述规定，则多比特交易平台有权直接采取一切<br />\r\n必要的措施，包括但不限于删除用户发布的内容、取消用户在网站获得的星级、荣誉以及虚<br />\r\n拟财富，暂停或查封用户帐号，取消因违规所获利益，乃至通过诉讼形式追究用户法律责任<br />\r\n等。<br />\r\n6.4、用户在多比特交易平台以各种形式发布的一切信息，均应符合国家法律法规等相关规定及网站<br />\r\n相关规定，符合社会公序良俗，并不侵犯任何第三方主体的合法权益，否则用户自行承担因<br />\r\n此产生的一切法律后果，且多比特交易平台因此受到的损失，有权向用户追偿。<br />\r\n七、责任限制与免责<br />\r\n7.1、不论在任何情况下，多比特交易平台对由于互联网正常的设备维护，互联网络连接故障，电脑、<br />\r\n通讯或其他系统的故障，网络攻击，电力故障，罢工，暴乱，骚乱，灾难性天气（如火灾、<br />\r\n洪水、风暴等），爆炸，战争，政府行为，司法行政机关的命令或第三方的不作为而造成的<br />\r\n不能履行或延迟履行服务不承担责任。<br />\r\n7.2、多比特交易平台作为“网络服务提供者”的第三方平台，不担保网站平台上的信息及服务能充<br />\r\n分满足用户的需求。对于用户在接受多比特交易平台的服务过程中可能遇到的错误、侮辱、诽谤、不<br />\r\n作为、淫秽、色情或亵渎事件，多比特交易平台不承担法律责任。<br />\r\n7.3、基于互联网的特殊性，多比特交易平台也不担保服务不会受中断，对服务的及时性、安全性都<br />\r\n不作担保，不承担非因多比特交易平台导致的责任。<br />\r\n7.4、多比特交易平台力图使用户能对本网站进行安全访问和使用，但多比特交易平台不声明也不保证本网站<br />\r\n或其服务器是不含病毒或其它潜在有害因素的；因此用户应使用业界公认的软件查杀任何自<br />\r\n多比特交易平台下载文件中的病毒。用户须自行辨别真伪，谨慎预防风险。<br />\r\n<br />\r\n7.5、多比特交易平台不对用户所发布信息的保存、修改、删除或储存失败负责。对网站上的非因比<br />\r\n特儿故意所导致的排字错误、疏忽等不承担责任。用户须自行辨别真伪，谨慎预防风险。<br />\r\n7.6、多比特交易平台有权但无义务，改善或更正本网站任何部分之疏漏、错误。<br />\r\n7.7、除非多比特交易平台以书面形式明确约定，多比特交易平台对于用户以任何方式（包括但不限于包含、<br />\r\n经由、连接或下载）从本网站所获得的任何内容信息，包括但不限于广告等，不保证其准确<br />\r\n性、完整性、可靠性；对于用户因本网站上的内容信息而购买、获取的任何产品、服务、信<br />\r\n息或资料，多比特交易平台不承担责任。用户自行承担使用本网站信息内容所导致的风险。<br />\r\n7.8、多比特交易平台内所有用户所发表的用户评论，仅代表用户个人观点，并不表示本网站赞同其<br />\r\n观点或证实其描述，本网站不承担用户评论引发的任何法律责任。<br />\r\n7.9、多比特交易平台有权删除多比特交易平台网内各类不符合法律或协议规定的信息，而保留不通知用户的<br />\r\n权利。<br />\r\n7.10、所有发给用户的通告，多比特交易平台都将通过正式的页面公告、站内信、电子邮件、客服电<br />\r\n话、手机短信或常规的信件送达。任何非经多比特交易平台正规渠道获得的中奖、优惠等活动或信息，<br />\r\n多比特交易平台不承担法律责任。<br />\r\n7.11、多比特交易平台有权根据市场情况调整充值、提现、交易等手续费费率，有权决定免费推广期<br />\r\n的终止。<br />\r\n八、法律管辖和适用<br />\r\n8.1、 本协议的订立、执行和解释及争议的解决均应适用中华人民共和国大陆地区的法律管<br />\r\n辖。<br />\r\n8.2、如发生本协议条款与上述法律相抵触时，则这些条款将完全按上述法律规定重新解释，<br />\r\n但不影响其它合法条款对用户产生的法律效力和影响。<br />\r\n8.3、 本协议的规定是可分割的，如本协议任何规定被裁定为无效或不可执行，则该规定可<br />\r\n被删除，不影响其余条款的继续执行。<br />\r\n8.4、 如双方就本协议内容或其执行发生任何争议，双方应尽力友好协商解决；协商不成时，<br />\r\n任何一方均可向多比特交易平台所在地人民法院提起诉讼。<br />\r\n8.5、本协议是多比特交易平台与用户注册成为多比特交易平台用户，使用多比特交易平台服务之间的重要法律文件，<br />\r\n多比特交易平台或者用户的任何其他书面或者口头意思表示与本协议不一致的，均应当以本协议为<br />\r\n准。<br />\r\n多比特交易平台平台深圳区链网络科技有限公司保留最终解释权。<br />\r\n<br />\r\n九、附则<br />\r\n本协议除以上正文部分外，还包括多比特交易平台平台发布的各项服务规则、产品使用规则、页面提<br />\r\n示提醒等，各项服务规则与本协议具有同等法律效力，为本协议不可分割的重要组成部分。<br />\r\n服务规则包括但不限 《多比特交易平台用户协议》、 《网络交易服务规则》、 《多比特交易平台平台使用规<br />\r\n则》、 《隐私声明》、 《反作弊声明》、 《用户交易体验承诺》、 《网购服务》等。其他<br />\r\n交易服务规则。<br />\r\n<br />', '4', '1480224641', '1480224643', '1');
INSERT INTO `movesay_article_type` VALUES ('8', '免责声明', '免责声明', '', '0', '1', 'aboutus', '根椐人民银行等有关部委的相关规定，比特币等数字货币系特殊的虚拟商品，作为互联网上的商品买卖行为，普通民众在自担风险的前提下拥有参与的自由。数字货币行业目前存在很多不确定，不可控的风险因素（如预挖、暴涨暴跌、庄家操控、团队解散、技术缺陷等），导致交易具有极高的风险。多比特交易平台仅为数字货币等虚拟商品的爱好者提供一个自由的网上交换平台，对在多比特交易平台交换的数字货币等虚拟商品的来源、价值，网站运营方不承担任何审查、担保、赔偿的法律责任。', '5', '1480224678', '1480224679', '1');
INSERT INTO `movesay_article_type` VALUES ('9', '注册协议', '注册协议', '', '0', '1', 'aboutus', '根椐人民银行等有关部委的相关规定，比特币等数字货币系特殊的虚拟商品，作为互联网上的商品买卖行为，普通民众在自担风险的前提下拥有参与的自由。数字货币行业目前存在很多不确定，不可控的风险因素（如预挖、暴涨暴跌、庄家操控、团队解散、技术缺陷等），导致交易具有极高的风险。土豪时代网仅为数字货币等虚拟商品的爱好者提供一个自由的网上交换平台，对在土豪时代网平台交换的数字货币等虚拟商品的来源、价值，网站运营方不承担任何审查、担保、赔偿的法律责任。<br />\r\n<br />\r\n<br />\r\n<br />\r\n请您务必注意以下几点：<br />\r\n<br />\r\n<br />\r\n<br />\r\n1.警惕虚假宣传，不要听信任何币值会永远上涨的宣传，数字货币作为一种虚拟商品，具有极高的风险，很可能出现价值归零的情况。<br />\r\n<br />\r\n2.对于推广和运营方的市场承诺，需要谨慎判别，目前并没有相关法律能保证其兑现承诺，投币网不会对任何数字货币进行背书和承诺。<br />\r\n<br />\r\n3.坚决拒绝多层次传销组织，在我国参与该类组织是违法行为，造成的一切后果自负，平台将配合相关执法部门的要求进行调查、取证。<br />\r\n<br />\r\n4.根据《中华人民共和国反洗钱法》等有关法律规定，严格禁止利用平台进行洗钱等违法犯罪活动，平台将配合相关执法部门的要求进行调查、取证。<br />\r\n<br />\r\n5.数字货币和数字积分等虚拟商品所对应的实物财产和持有者享有的权利存在因发行方等义务相关方破产，关闭或违法犯罪等其他经营风险导致无法兑现的风险。<br />\r\n<br />\r\n6.在投币网注册参与交换的用户，应保证注册身份信息的真实、准确，保证拟交换的数字货币等虚拟商品的来源合法。因信息不真实造成的任何问题，平台概不负责。<br />\r\n<br />\r\n7.因国家法律，法规及政策性文件的制定和修改，导致数字货币等虚拟商品的交易被暂停或者禁止的，由此导致的全部损失由用户自行承担。<br />\r\n<br />\r\n8.请控制风险，不要投入超过您风险承受能力的资金，不要购买您所不了解的数字货币，数字积分等虚拟商品。<br />', '6', '1480224705', '1480224707', '1');
INSERT INTO `movesay_article_type` VALUES ('10', '注册指南', '注册指南', '', '0', '1', 'help', '<img src=\"/Upload/article/583a700024ba4.png\" alt=\"\" />', '1', '1480224781', '1480224782', '1');
INSERT INTO `movesay_article_type` VALUES ('11', '交易指南', '交易指南', '', '0', '1', 'help', '<img src=\"/Upload/article/595c4cacea4d4.png\" alt=\"\" />', '2', '1480224756', '1480224757', '1');
INSERT INTO `movesay_article_type` VALUES ('12', '充值指南', '充值指南', '', '0', '1', 'help', '<p>\r\n	<img src=\"/Upload/article/595c50201c4ee.jpg\" alt=\"\" />\r\n</p>\r\n<p>\r\n	<img src=\"/Upload/article/595c502cad444.jpg\" alt=\"\" />\r\n</p>\r\n<p>\r\n	<img src=\"/Upload/article/595c50375957e.jpg\" alt=\"\" />\r\n</p>', '3', '1481117610', '1481117612', '1');
INSERT INTO `movesay_article_type` VALUES ('13', '充值限额', '充值限额', '', '0', '1', 'help', '<span style=\"color:#CC33E5;font-size:14px;\"><span style=\"font-size:14px;line-height:normal;color:#CC33E5;\">最小充值100最大充值10</span></span><span><span style=\"font-size:14px;line-height:normal;\"><span style=\"color:#CC33E5;font-size:14px;\"></span><span style=\"color:#CC33E5;font-size:14px;\">0000 请通过本人支付宝充值</span></span></span><span style=\"color:#CC33E5;font-size:14px;\"></span>', '4', '1481177606', '1481177607', '1');
INSERT INTO `movesay_article_type` VALUES ('14', '提现指南', '提现指南', '', '0', '1', 'help', '<h3 style=\"font-family:\'Microsoft YaHei\';font-weight:500;font-size:24px;background-color:#FFFFFF;\">\r\n	提现须知\r\n</h3>\r\n<p style=\"color:#999999;font-family:\'Microsoft YaHei\';font-size:14px;background-color:#FFFFFF;\">\r\n	1. 提现手续费率1％，每笔提现最低收费2元 。\r\n</p>\r\n<p style=\"color:#999999;font-family:\'Microsoft YaHei\';font-size:14px;background-color:#FFFFFF;\">\r\n	2. 单笔提现限额100元——50000元。\r\n</p>\r\n<p style=\"color:#999999;font-family:\'Microsoft YaHei\';font-size:14px;background-color:#FFFFFF;\">\r\n	3. 银行卡提现24小时内到帐，在已汇出24小时后 仍未收到款项，请联系客服。\r\n</p>', '5', '1480501522', '1480501524', '1');
INSERT INTO `movesay_article_type` VALUES ('15', 'aa', '虚拟币钱包下载', '', '0', '1', 'xiazai', '测试数据', '1', '0', '0', '0');
INSERT INTO `movesay_article_type` VALUES ('16', '浏览器下载', '浏览器下载', '', '0', '1', 'xiazai', '<p style=\"color:#333333;font-family:微软雅黑, \'Microsoft YaHei\';font-size:14px;background-color:#FFFFFF;\">\r\n	<img src=\"/Upload/article/595efc1b51b6c.jpg\" alt=\"\" />&nbsp;Internet Explorer 9 &nbsp;&nbsp;<a href=\"http://www.microsoft.com/zh-cn/download/internet-explorer.aspx\" target=\"_blank\">官网下载</a> \r\n</p>\r\n<p style=\"color:#333333;font-family:微软雅黑, \'Microsoft YaHei\';font-size:14px;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:微软雅黑, \'Microsoft YaHei\';font-size:14px;background-color:#FFFFFF;\">\r\n	<img src=\"/Upload/article/595efc227f7d8.jpg\" alt=\"\" />Chrome 谷歌浏览器&nbsp; &nbsp;<a href=\"https://www.google.com/intl/zh-CN/chrome/browser/\" target=\"_blank\">官网下载</a> \r\n</p>\r\n<p style=\"color:#333333;font-family:微软雅黑, \'Microsoft YaHei\';font-size:14px;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#333333;font-family:微软雅黑, \'Microsoft YaHei\';font-size:14px;background-color:#FFFFFF;\">\r\n	<img src=\"/Upload/article/595efc2a2b912.jpg\" alt=\"\" />FireFox 火狐 浏览器&nbsp;&nbsp;&nbsp;<a href=\"http://www.firefox.com.cn/\" target=\"_blank\">官网下载</a> \r\n</p>\r\n<div style=\"margin:0px;padding:0px;border:0px;color:#333333;font-family:微软雅黑, \'Microsoft YaHei\';font-size:14px;background-color:#FFFFFF;\">\r\n</div>', '2', '1480224804', '1480224805', '1');
INSERT INTO `movesay_article_type` VALUES ('17', '新币上线申请', '新币上线申请', '', '0', '1', 'xiazai', '<p>\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <img src=\"/Upload/article/595efbc4187e5.png\" alt=\"\" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n</p>\r\n<p>\r\n	<span style=\"color:#CC33E5;line-height:1.5;\">&nbsp; 请发邮件 <span style=\"color:#CC33E5;\">kefu@26bi.com&nbsp;</span>联系工作人员，合作愉快！！！</span> \r\n</p>', '3', '1480224952', '1480224955', '1');
INSERT INTO `movesay_article_type` VALUES ('18', 'dd', '工具下载', '', '0', '1', 'xiazai', '测试数据', '4', '0', '0', '0');
INSERT INTO `movesay_article_type` VALUES ('19', 'aaa', '官方公告', '', '1', '0', '', '', '1', '0', '0', '1');
INSERT INTO `movesay_article_type` VALUES ('20', 'bbb', '行业资讯', '', '1', '0', '', '', '2', '0', '0', '1');
INSERT INTO `movesay_article_type` VALUES ('21', '币友说币', '币友说币', '', '1', '0', '', '', '3', '1480224089', '1480224091', '1');

-- ----------------------------
-- Table structure for `movesay_auth_extend`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_auth_extend`;
CREATE TABLE `movesay_auth_extend` (
  `group_id` mediumint(10) unsigned NOT NULL COMMENT '用户id',
  `extend_id` mediumint(8) unsigned NOT NULL COMMENT '扩展表中数据的id',
  `type` tinyint(1) unsigned NOT NULL COMMENT '扩展类型标识 1:栏目分类权限;2:模型权限',
  UNIQUE KEY `group_extend_type` (`group_id`,`extend_id`,`type`),
  KEY `uid` (`group_id`),
  KEY `group_id` (`extend_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of movesay_auth_extend
-- ----------------------------
INSERT INTO `movesay_auth_extend` VALUES ('1', '1', '1');
INSERT INTO `movesay_auth_extend` VALUES ('1', '1', '2');
INSERT INTO `movesay_auth_extend` VALUES ('1', '2', '1');
INSERT INTO `movesay_auth_extend` VALUES ('1', '2', '2');
INSERT INTO `movesay_auth_extend` VALUES ('1', '3', '1');
INSERT INTO `movesay_auth_extend` VALUES ('1', '3', '2');
INSERT INTO `movesay_auth_extend` VALUES ('1', '4', '1');
INSERT INTO `movesay_auth_extend` VALUES ('1', '37', '1');

-- ----------------------------
-- Table structure for `movesay_auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_auth_group`;
CREATE TABLE `movesay_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户组id,自增主键',
  `module` varchar(20) NOT NULL COMMENT '用户组所属模块',
  `type` tinyint(4) NOT NULL COMMENT '组类型',
  `title` char(20) NOT NULL DEFAULT '' COMMENT '用户组中文名称',
  `description` varchar(80) NOT NULL DEFAULT '' COMMENT '描述信息',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '用户组状态：为1正常，为0禁用,-1为删除',
  `rules` varchar(500) NOT NULL DEFAULT '' COMMENT '用户组拥有的规则id，多个规则 , 隔开',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of movesay_auth_group
-- ----------------------------
INSERT INTO `movesay_auth_group` VALUES ('2', 'admin', '1', '财务管理组', '拥有网站资金相关的权限', '-1', '431');
INSERT INTO `movesay_auth_group` VALUES ('3', 'admin', '1', '超级管理员', '超级管理员组,拥有系统所有权限', '1', '2059,2060,2062,2063,2064,2065,2066,2067,2068,2069,2070,2071,2072,2073,2074,2075,2076,2077,2078,2079,2080,2081,2082,2086,2087,2088,2089,2090,2091,2092,2093,2094,2095,2096,2097,2098,2099,2100,2101,2102,2103,2104,2105,2106,2107,2108,2109,2110,2111,2112,2113,2114,2115,2116,2117,2118,2119,2120,2121,2122,2123,2124,2125,2126,2127,2128,2129,2130,2131,2132,2135,2136,2137,2140,2141,2144,2145,2146,2147,2148,2149,2150,2151,2152,2153,2154,2155,2156,2159,2162,2163,2164,2165,2166,2167,2168,2169,2170,2171,2172,');
INSERT INTO `movesay_auth_group` VALUES ('4', 'admin', '1', '资讯管理员', '拥有网站文章资讯相关权限11', '-1', '');
INSERT INTO `movesay_auth_group` VALUES ('5', 'admin', '1', '资讯管理员', '拥有网站文章资讯相关权限', '1', '');
INSERT INTO `movesay_auth_group` VALUES ('6', 'admin', '1', '财务管理组', '拥有网站资金相关的权限333', '1', '1671,1686,1687,1740,1741,1742,1743,1763,1765,1779,1780,1805,1806,1826,1827,1828,1832,1840,1841');
INSERT INTO `movesay_auth_group` VALUES ('10', 'admin', '1', '财务管理组', '拥有网站资金相关的权限333', '1', '');
INSERT INTO `movesay_auth_group` VALUES ('11', 'admin', '1', 'ceshi', '', '1', '');

-- ----------------------------
-- Table structure for `movesay_auth_group_access`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_auth_group_access`;
CREATE TABLE `movesay_auth_group_access` (
  `uid` int(10) unsigned NOT NULL COMMENT '用户id',
  `group_id` mediumint(8) unsigned NOT NULL COMMENT '用户组id',
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of movesay_auth_group_access
-- ----------------------------
INSERT INTO `movesay_auth_group_access` VALUES ('1', '11');
INSERT INTO `movesay_auth_group_access` VALUES ('2', '3');
INSERT INTO `movesay_auth_group_access` VALUES ('3', '2');

-- ----------------------------
-- Table structure for `movesay_auth_rule`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_auth_rule`;
CREATE TABLE `movesay_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `module` varchar(20) NOT NULL COMMENT '规则所属module',
  `type` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1-url;2-主菜单',
  `name` char(80) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识',
  `title` char(20) NOT NULL DEFAULT '' COMMENT '规则中文描述',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效,1:有效)',
  `condition` varchar(300) NOT NULL DEFAULT '' COMMENT '规则附加条件',
  PRIMARY KEY (`id`),
  KEY `module` (`module`,`status`,`type`)
) ENGINE=MyISAM AUTO_INCREMENT=2245 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of movesay_auth_rule
-- ----------------------------
INSERT INTO `movesay_auth_rule` VALUES ('425', 'admin', '1', 'Admin/article/add', '新增', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('427', 'admin', '1', 'Admin/article/setStatus', '改变状态', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('428', 'admin', '1', 'Admin/article/update', '保存', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('429', 'admin', '1', 'Admin/article/autoSave', '保存草稿', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('430', 'admin', '1', 'Admin/article/move', '移动', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('432', 'admin', '2', 'Admin/Article/mydocument', '内容', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('437', 'admin', '1', 'Admin/Trade/config', '交易配置', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('449', 'admin', '1', 'Admin/Index/operate', '市场统计', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('455', 'admin', '1', 'Admin/Issue/config', '认购配置', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('457', 'admin', '1', 'Admin/Index/database/type/export', '数据备份', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('461', 'admin', '1', 'Admin/Article/chat', '聊天列表', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('464', 'admin', '1', 'Admin/Index/database/type/import', '数据还原', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('471', 'admin', '1', 'Admin/Mytx/config', '提现配置', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('472', 'admin', '2', 'Admin/Mytx/index', '提现', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('473', 'admin', '1', 'Admin/Config/market', '市场配置', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('477', 'admin', '1', 'Admin/User/myzr', '转入虚拟币', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('479', 'admin', '1', 'Admin/User/myzc', '转出虚拟币', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('482', 'admin', '2', 'Admin/ExtA/index', '扩展', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('488', 'admin', '1', 'Admin/Auth_manager/createGroup', '新增用户组', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('499', 'admin', '1', 'Admin/ExtA/index', '扩展管理', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('509', 'admin', '1', 'Admin/Article/adver_edit', '编辑', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('510', 'admin', '1', 'Admin/Article/adver_status', '修改', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('513', 'admin', '1', 'Admin/Issue/index_edit', '认购编辑', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('514', 'admin', '1', 'Admin/Issue/index_status', '认购修改', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('515', 'admin', '1', 'Admin/Article/chat_edit', '编辑', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('516', 'admin', '1', 'Admin/Article/chat_status', '修改', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('517', 'admin', '1', 'Admin/User/coin_edit', 'coin修改', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('519', 'admin', '1', 'Admin/Mycz/type_status', '状态修改', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('520', 'admin', '1', 'Admin/Issue/log_status', '认购状态', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('521', 'admin', '1', 'Admin/Issue/log_jiedong', '认购解冻', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('522', 'admin', '1', 'Admin/Tools/database/type/export', '数据备份', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('525', 'admin', '1', 'Admin/Config/coin_edit', '编辑', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('526', 'admin', '1', 'Admin/Config/coin_add', '编辑币种', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('527', 'admin', '1', 'Admin/Config/coin_status', '状态修改', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('528', 'admin', '1', 'Admin/Config/market_edit', '编辑', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('530', 'admin', '1', 'Admin/Tools/database/type/import', '数据还原', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('541', 'admin', '2', 'Admin/Trade/config', '交易', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('569', 'admin', '1', 'Admin/ADVERstatus', '修改', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('570', 'admin', '1', 'Admin/Tradelog/index', '交易记录', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('585', 'admin', '1', 'Admin/Config/mycz', '充值配置', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('590', 'admin', '1', 'Admin/Mycztype/index', '充值类型', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('600', 'admin', '1', 'Admin/Usergoods/index', '用户联系地址', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1379', 'admin', '1', 'Admin/Bazaar/index', '集市管理', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1405', 'admin', '1', 'Admin/Bazaar/config', '集市配置', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1425', 'admin', '1', 'Admin/Bazaar/log', '集市记录', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1451', 'admin', '1', 'Admin/Bazaar/invit', '集市推广', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2189', 'admin', '1', 'Admin/Tools/exportExcel', '导出Excel', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2188', 'admin', '1', 'Admin/Tools/excel', '导出数据库', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2187', 'admin', '1', 'Admin/Tools/import', '还原数据库', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2186', 'admin', '1', 'Admin/Tools/export', '备份数据库', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2185', 'admin', '1', 'Admin/Tools/del', '删除备份文件', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2184', 'admin', '1', 'Admin/Tools/repair', '修复表', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2183', 'admin', '1', 'Admin/Tools/optimize', '优化表', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2182', 'admin', '1', 'Admin/Tools/invoke', '其他模块调用', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2181', 'admin', '1', 'Admin/Config/market_add', '状态修改', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2180', 'admin', '1', 'Admin/Market/edit', '编辑市场', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2179', 'admin', '1', 'Admin/Coin/status', '状态修改', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2178', 'admin', '1', 'Admin/Coin/edit', '编辑', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2177', 'admin', '1', 'Admin/Config/bank_edit', '编辑', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2176', 'admin', '1', 'Admin/Config/bank', '银行配置', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2175', 'admin', '1', 'Admin/Cloud/game', '应用管理', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2174', 'admin', '1', 'Admin/Money/fee', '理财明细', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2173', 'admin', '1', 'Admin/Huafei/type', '充值金额', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2172', 'admin', '1', 'Admin/Fenhong/index', '分红管理', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2171', 'admin', '1', 'Admin/Shop/type', '商品类型', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2170', 'admin', '1', 'Admin/App/ads_list/block_id/1', 'WAP广告板块', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2169', 'admin', '1', 'Admin/User/auth', '权限列表', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2168', 'admin', '1', 'Admin/Finance/mytxExcel', '导出选中', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2167', 'admin', '1', 'Admin/Finance/myczType', '人民币充值方式', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2166', 'admin', '1', 'Admin/Trade/chat', '交易聊天', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2165', 'admin', '1', 'Admin/Article/adver', '广告管理', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2164', 'admin', '1', 'Admin/Tools/qianbao', '钱包检查', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2163', 'admin', '1', 'Admin/Tools/queue', '服务器队列', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2162', 'admin', '1', 'Admin/Config/contact', '客服配置', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2161', 'admin', '1', 'Admin/Mycztype/status', '状态修改', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2160', 'admin', '1', 'Admin/Mycz/status', '修改', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2159', 'admin', '1', 'Admin/Usercoin/edit', '财产修改', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2158', 'admin', '1', 'Admin/Chat/status', '修改', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2157', 'admin', '1', 'Admin/Chat/edit', '编辑', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2156', 'admin', '1', 'Admin/Index/market', '市场统计', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2155', 'admin', '1', 'Admin/Money/log', '理财日志', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2154', 'admin', '1', 'Admin/Shop/config', '商城配置', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2153', 'admin', '1', 'Admin/App/vip_config_list', 'APP等级', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2152', 'admin', '1', 'Admin/User/admin', '管理员管理', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2151', 'admin', '1', 'Admin/Tools/dataImport', '还原数据库', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2150', 'admin', '1', 'Admin/Tools/dataExport', '备份数据库', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2149', 'admin', '1', 'Admin/Finance/mytxStatus', '修改状态', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2148', 'admin', '1', 'Admin/Finance/myczTypeImage', '上传图片', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2147', 'admin', '1', 'Admin/Finance/myczTypeStatus', '状态修改', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2146', 'admin', '1', 'Admin/Finance/mycz', '人民币充值', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2145', 'admin', '1', 'Admin/Article/type', '文章类型', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2144', 'admin', '1', 'Admin/Index/coin', '币种统计', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2143', 'admin', '1', 'Admin/Link/status', '修改', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2142', 'admin', '1', 'Admin/Link/edit', '编辑', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2141', 'admin', '1', 'Admin/Invit/config', '推广配置', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2140', 'admin', '1', 'Admin/Config/moble', '短信配置', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2139', 'admin', '1', 'Admin/Issue/status', '认购修改', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2138', 'admin', '1', 'Admin/Issue/edit', '认购编辑', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2137', 'admin', '1', 'Admin/Trade/log', '成交记录', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2136', 'admin', '1', 'Admin/User/index_status', '修改', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2135', 'admin', '1', 'Admin/User/index_edit', '编辑', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2134', 'admin', '1', 'Admin/Adver/status', '修改', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2133', 'admin', '1', 'Admin/Adver/edit', '编辑', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2132', 'admin', '1', 'Admin/Article/images', '上传图片', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2131', 'admin', '1', 'Admin/User/award', '中奖管理', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2130', 'admin', '1', 'Admin/Issue/log', '认购记录', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2129', 'admin', '1', 'Admin/Issue/index', '认购管理', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2128', 'admin', '1', 'Admin/Money/index', '理财管理', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2127', 'admin', '1', 'Admin/Vote/type', '投票类型', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2126', 'admin', '1', 'Admin/Vote/index', '投票记录', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2125', 'admin', '1', 'Admin/Huafei/config', '充值配置', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2124', 'admin', '1', 'Admin/Huafei/index', '充值记录', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2123', 'admin', '1', 'Admin/Shop/index', '商品管理', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2122', 'admin', '1', 'Admin/App/config', 'APP配置', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2121', 'admin', '1', 'Admin/Operate/index', '推广奖励', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2120', 'admin', '1', 'Admin/User/authUserRemove', '成员授权解除', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2119', 'admin', '1', 'Admin/User/authUserAdd', '成员授权增加', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2118', 'admin', '1', 'Admin/User/authUser', '成员授权', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2117', 'admin', '1', 'Admin/User/authAccessUp', '访问授权修改', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2116', 'admin', '1', 'Admin/User/authAccess', '访问授权', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2115', 'admin', '1', 'Admin/Article/adverEdit', '编辑添加', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2114', 'admin', '1', 'Admin/Article/linkEdit', '编辑添加', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2113', 'admin', '1', 'Admin/Article/typeEdit', '编辑添加', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2112', 'admin', '1', 'Admin/User/goodsStatus', '修改状态', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2111', 'admin', '1', 'Admin/User/goodsEdit', '编辑添加', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2110', 'admin', '1', 'Admin/User/coinLog', '财产统计', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2109', 'admin', '1', 'Admin/User/coinEdit', '编辑添加', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2108', 'admin', '1', 'Admin/User/bankStatus', '修改状态', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2107', 'admin', '1', 'Admin/User/bankEdit', '编辑添加', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2106', 'admin', '1', 'Admin/User/qianbaoStatus', '修改状态', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2105', 'admin', '1', 'Admin/User/qianbaoEdit', '编辑添加', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2104', 'admin', '1', 'Admin/User/logStatus', '修改状态', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2103', 'admin', '1', 'Admin/User/logEdit', '编辑添加', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2102', 'admin', '1', 'Admin/User/authStart', '重新初始化权限', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2101', 'admin', '1', 'Admin/User/authStatus', '修改状态', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('1967', 'admin', '1', 'Admin/App/adsblock_list', 'APP广告板块', '-1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2100', 'admin', '1', 'Admin/User/authEdit', '编辑添加', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2099', 'admin', '1', 'Admin/User/adminStatus', '修改状态', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2098', 'admin', '1', 'Admin/User/adminEdit', '编辑添加', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2097', 'admin', '1', 'Admin/User/status', '修改状态', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2096', 'admin', '1', 'Admin/User/edit', '编辑添加', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2095', 'admin', '1', 'Admin/Tools/index', '清理缓存', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2094', 'admin', '1', 'Admin/Finance/myczTypeEdit', '编辑添加', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2093', 'admin', '1', 'Admin/Finance/index', '财务明细', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2092', 'admin', '1', 'Admin/Articletype/edit', '编辑', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2091', 'admin', '1', 'AdminUser/edit', '后台用户编辑', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2090', 'admin', '1', 'AdminUser/add', '后台用户新增', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2089', 'admin', '1', 'AdminUser/status', '后台用户状态', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2088', 'admin', '1', 'AdminUser/detail', '后台用户详情', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2087', 'admin', '1', 'Admin/Config/index', '基本配置', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2086', 'admin', '1', 'Admin/Trade/index', '委托管理', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2085', 'admin', '1', 'Admin/Finance/type_status', '状态修改', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2084', 'admin', '1', 'Admin/Finance/type', '类型', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2083', 'admin', '1', 'Admin/Finance/config', '配置', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2082', 'admin', '1', 'Admin/User/config', '用户配置', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2081', 'admin', '1', 'Admin/User/index', '用户管理', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2080', 'admin', '1', 'Admin/Text/status', '修改', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2079', 'admin', '1', 'Admin/Text/edit', '编辑', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2078', 'admin', '1', 'Admin/Text/index', '提示文字', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2077', 'admin', '1', 'Admin/Article/edit', '编辑添加', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2076', 'admin', '1', 'Admin/Article/index', '文章管理', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2075', 'admin', '1', 'Admin/Index/index', '系统概览', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2074', 'admin', '2', 'Admin/Cloud/index', '扩展', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2073', 'admin', '2', 'Admin/Tools/index', '工具', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2072', 'admin', '2', 'Admin/Operate/index', '运营', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2071', 'admin', '2', 'Admin/Config/index', '设置', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2070', 'admin', '2', 'Admin/Game/index', '应用', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2069', 'admin', '2', 'Admin/Trade/index', '交易', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2068', 'admin', '2', 'Admin/Finance/index', '财务', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2067', 'admin', '2', 'Admin/User/index', '用户', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2066', 'admin', '2', 'Admin/Article/index', '内容', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2065', 'admin', '2', 'Admin/Index/index', '系统', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2064', 'admin', '1', 'Admin/User/setpwd', '修改管理员密码', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2063', 'admin', '1', 'Admin/Login/loginout', '用户退出', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2062', 'admin', '1', 'Admin/Login/index', '用户登录', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2061', 'admin', '1', 'Admin/Shop/images', '图片', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2060', 'admin', '1', 'Admin/Trade/chexiao', '撤销挂单', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2059', 'admin', '1', 'Admin/Trade/status', '修改状态', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2058', 'admin', '1', 'Admin/AuthManager/addToModel', '模型添加到用户组', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2057', 'admin', '1', 'Admin/AuthManager/addToCategory', '分类添加到用户组', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2056', 'admin', '1', 'Admin/AuthManager/removeFromGroup', '用户组移除', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2055', 'admin', '1', 'Admin/AuthManager/addToGroup', '添加到用户组', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2054', 'admin', '1', 'Admin/AuthManager/group', '用户组', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2053', 'admin', '1', 'Admin/AuthManager/tree', '成员列表授权', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2052', 'admin', '1', 'Admin/AuthManager/user', '成员授权', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2051', 'admin', '1', 'Admin/AuthManager/category', '分类授权', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2050', 'admin', '1', 'Admin/AuthManager/access', '访问授权', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2049', 'admin', '1', 'Admin/AuthManager/changeStatus', '改变状态', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2048', 'admin', '1', 'Admin/AuthManager/writeGroup', '更新用户组', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2047', 'admin', '1', 'Admin/AuthManager/editgroup', '编辑用户组', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2046', 'admin', '1', 'Admin/AuthManager/createGroup', '新增用户组', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2190', 'admin', '1', 'Admin/Tools/importExecl', '导入Excel', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2191', 'admin', '1', 'Admin/User/detail', '用户详情', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2192', 'admin', '1', 'Admin/Trade/comment', '币种评论', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2193', 'admin', '1', 'Admin/Article/link', '友情链接', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2194', 'admin', '1', 'Admin/User/log', '登陆日志', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2195', 'admin', '1', 'Admin/Finance/mytx', '人民币提现', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2196', 'admin', '1', 'Admin/Finance/mytxChuli', '正在处理', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2197', 'admin', '1', 'Admin/Config/coin', '币种配置', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2198', 'admin', '1', 'Admin/App/ads_user', 'APP广告用户', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2199', 'admin', '1', 'Admin/Cloud/theme', '主题模板', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2200', 'admin', '1', 'Admin/Shop/coin', '付款方式', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2201', 'admin', '1', 'Admin/Huafei/coin', '付款方式', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2202', 'admin', '1', 'Admin/Mytx/status', '状态修改', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2203', 'admin', '1', 'Admin/Mytx/excel', '取消', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2204', 'admin', '1', 'Admin/Mytx/exportExcel', '导入excel', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2205', 'admin', '1', 'Admin/Menu/index', '菜单管理', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2206', 'admin', '1', 'Admin/Menu/sort', '排序', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2207', 'admin', '1', 'Admin/Menu/add', '添加', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2208', 'admin', '1', 'Admin/Menu/edit', '编辑', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2209', 'admin', '1', 'Admin/Menu/del', '删除', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2210', 'admin', '1', 'Admin/Menu/toogleHide', '是否隐藏', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2211', 'admin', '1', 'Admin/Menu/toogleDev', '是否开发', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2212', 'admin', '1', 'Admin/Menu/importFile', '导入文件', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2213', 'admin', '1', 'Admin/Menu/import', '导入', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2214', 'admin', '1', 'Admin/Config/text', '提示文字', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2215', 'admin', '1', 'Admin/User/qianbao', '用户钱包', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2216', 'admin', '1', 'Admin/Trade/market', '交易市场', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2217', 'admin', '1', 'Admin/Finance/mytxConfig', '人民币提现配置', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2218', 'admin', '1', 'Admin/Finance/mytxChexiao', '撤销提现', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2219', 'admin', '1', 'Admin/Cloud/kefu', '客服代码', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2220', 'admin', '1', 'Admin/Cloud/kefuUp', '使用', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2221', 'admin', '1', 'Admin/Shop/log', '购物记录', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2222', 'admin', '1', 'Admin/Fenhong/log', '分红记录', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2223', 'admin', '1', 'Admin/Config/qita', '其他配置', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2224', 'admin', '1', 'Admin/User/bank', '提现地址', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2225', 'admin', '1', 'Admin/Trade/invit', '交易推荐', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2226', 'admin', '1', 'Admin/Finance/myzr', '虚拟币转入', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2227', 'admin', '1', 'Admin/Finance/mytxQueren', '确认提现', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2228', 'admin', '1', 'Admin/Finance/myzcQueren', '确认转出', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2229', 'admin', '1', 'Admin/Shop/goods', '收货地址', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2230', 'admin', '1', 'Admin/Verify/code', '图形验证码', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2231', 'admin', '1', 'Admin/Verify/mobile', '手机验证码', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2232', 'admin', '1', 'Admin/Verify/email', '邮件验证码', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2233', 'admin', '1', 'Admin/User/coin', '用户财产', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2234', 'admin', '1', 'Admin/Finance/myzc', '虚拟币转出', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2235', 'admin', '1', 'Admin/Config/daohang', '导航配置', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2236', 'admin', '1', 'Admin/User/myzc_qr', '确认转出', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2237', 'admin', '1', 'Admin/User/goods', '联系地址', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2238', 'admin', '1', 'Admin/Article/status', '修改状态', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2239', 'admin', '1', 'Admin/Finance/myczStatus', '修改状态', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2240', 'admin', '1', 'Admin/Finance/myczQueren', '确认到账', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2241', 'admin', '1', 'Admin/Article/typeStatus', '修改状态', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2242', 'admin', '1', 'Admin/Article/linkStatus', '修改状态', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2243', 'admin', '1', 'Admin/Article/adverStatus', '修改状态', '1', '');
INSERT INTO `movesay_auth_rule` VALUES ('2244', 'admin', '1', 'Admin/Article/adverImage', '上传图片', '1', '');

-- ----------------------------
-- Table structure for `movesay_bazaar`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_bazaar`;
CREATE TABLE `movesay_bazaar` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `coin` varchar(50) NOT NULL,
  `price` decimal(20,8) unsigned NOT NULL,
  `num` decimal(20,8) unsigned NOT NULL,
  `deal` decimal(20,8) unsigned NOT NULL,
  `mum` decimal(20,8) unsigned NOT NULL,
  `fee` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='集市交易表';

-- ----------------------------
-- Records of movesay_bazaar
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_bazaar_config`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_bazaar_config`;
CREATE TABLE `movesay_bazaar_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `market` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '市场名称',
  `price_min` decimal(20,8) unsigned NOT NULL COMMENT '最小交易价格',
  `price_max` decimal(20,8) unsigned NOT NULL COMMENT '最大交易价格',
  `num_mix` decimal(20,8) unsigned NOT NULL COMMENT '最小交易数量',
  `num_max` decimal(20,8) unsigned NOT NULL COMMENT '最大交易数量',
  `invit_coin` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '上家赠送币种',
  `invit_1` decimal(20,8) unsigned NOT NULL COMMENT '一代赠送比例',
  `invit_2` decimal(20,8) unsigned NOT NULL COMMENT '二代赠送比例',
  `invit_3` decimal(20,8) unsigned NOT NULL COMMENT '三代赠送比例',
  `fee` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '手续费',
  `default` tinyint(2) unsigned NOT NULL COMMENT '默认',
  `sort` int(11) unsigned NOT NULL COMMENT '排序',
  `addtime` int(11) unsigned NOT NULL COMMENT '添加时间',
  `endtime` int(11) unsigned NOT NULL COMMENT '编辑时间',
  `status` tinyint(2) unsigned NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `coinname` (`market`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of movesay_bazaar_config
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_bazaar_invit`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_bazaar_invit`;
CREATE TABLE `movesay_bazaar_invit` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `invit` int(11) unsigned NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `type` varchar(50) CHARACTER SET utf8 NOT NULL,
  `num` decimal(20,8) unsigned NOT NULL,
  `mum` decimal(20,8) unsigned NOT NULL,
  `fee` decimal(20,8) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of movesay_bazaar_invit
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_bazaar_log`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_bazaar_log`;
CREATE TABLE `movesay_bazaar_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `peerid` int(11) unsigned NOT NULL,
  `coin` varchar(50) NOT NULL,
  `price` decimal(20,8) unsigned NOT NULL,
  `num` decimal(20,8) unsigned NOT NULL,
  `mum` decimal(20,8) unsigned NOT NULL,
  `fee` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`),
  KEY `peerid` (`peerid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='集市交易记录表';

-- ----------------------------
-- Records of movesay_bazaar_log
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_category`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_category`;
CREATE TABLE `movesay_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `name` varchar(30) NOT NULL COMMENT '标志',
  `title` varchar(50) NOT NULL COMMENT '标题',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序（同级有效）',
  `list_row` tinyint(3) unsigned NOT NULL DEFAULT '10' COMMENT '列表每页行数',
  `meta_title` varchar(50) NOT NULL DEFAULT '' COMMENT 'SEO的网页标题',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `template_index` varchar(100) NOT NULL COMMENT '频道页模板',
  `template_lists` varchar(100) NOT NULL COMMENT '列表页模板',
  `template_detail` varchar(100) NOT NULL COMMENT '详情页模板',
  `template_edit` varchar(100) NOT NULL COMMENT '编辑页模板',
  `model` varchar(100) NOT NULL DEFAULT '' COMMENT '关联模型',
  `type` varchar(100) NOT NULL DEFAULT '' COMMENT '允许发布的内容类型',
  `link_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '外链',
  `allow_publish` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否允许发布内容',
  `display` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '可见性',
  `reply` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否允许回复',
  `check` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '发布的文章是否需要审核',
  `reply_model` varchar(100) NOT NULL DEFAULT '',
  `extend` text NOT NULL COMMENT '扩展设置',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '数据状态',
  `icon` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类图标',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_name` (`name`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='分类表';

-- ----------------------------
-- Records of movesay_category
-- ----------------------------
INSERT INTO `movesay_category` VALUES ('1', 'blog', '博客', '0', '0', '10', '', '', '', '', '', '', '', '2', '2,1', '0', '0', '1', '0', '0', '1', '', '1379474947', '1382701539', '1', '0');
INSERT INTO `movesay_category` VALUES ('2', 'default_blog', '默认分类', '1', '1', '10', '', '', '', '', '', '', '', '2', '2,1,3', '0', '1', '1', '0', '1', '1', '', '1379475028', '1386839751', '1', '31');

-- ----------------------------
-- Table structure for `movesay_chat`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_chat`;
CREATE TABLE `movesay_chat` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` varchar(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='文字聊天表';

-- ----------------------------
-- Records of movesay_chat
-- ----------------------------
INSERT INTO `movesay_chat` VALUES ('1', '5', '18673419184', 'IC', '0', '1498289020', '0', '1');
INSERT INTO `movesay_chat` VALUES ('2', '5', '18673419184', '涨势不错', '0', '1498289040', '0', '1');

-- ----------------------------
-- Table structure for `movesay_coin`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_coin`;
CREATE TABLE `movesay_coin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `img` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `fee_bili` varchar(50) NOT NULL,
  `endtime` int(11) unsigned NOT NULL COMMENT '',
  `addtime` int(11) unsigned NOT NULL,
  `status` int(4) unsigned NOT NULL,
  `fee_meitian` varchar(200) NOT NULL COMMENT '每天限制',
  `dj_zj` varchar(200) NOT NULL,
  `dj_dk` varchar(200) NOT NULL,
  `dj_yh` varchar(200) NOT NULL,
  `dj_mm` varchar(200) NOT NULL,
  `zr_zs` varchar(50) NOT NULL,
  `zr_jz` varchar(50) NOT NULL,
  `zr_dzz` varchar(50) NOT NULL,
  `zr_dz` varchar(50) NOT NULL,
  `zr_sm` varchar(50) NOT NULL,
  `zc_sm` varchar(50) NOT NULL,
  `zc_fee` varchar(50) NOT NULL,
  `zc_user` varchar(50) NOT NULL,
  `zc_min` varchar(50) NOT NULL,
  `zc_max` varchar(50) NOT NULL,
  `zc_jz` varchar(50) NOT NULL,
  `zc_zd` varchar(50) NOT NULL,
  `js_yw` varchar(50) NOT NULL,
  `js_sm` text NOT NULL,
  `js_qb` varchar(50) NOT NULL,
  `js_ym` varchar(50) NOT NULL,
  `js_gw` varchar(50) NOT NULL,
  `js_lt` varchar(50) NOT NULL,
  `js_wk` varchar(50) NOT NULL,
  `cs_yf` varchar(50) NOT NULL,
  `cs_sf` varchar(50) NOT NULL,
  `cs_fb` varchar(50) NOT NULL,
  `cs_qk` varchar(50) NOT NULL,
  `cs_zl` varchar(50) NOT NULL,
  `cs_cl` varchar(50) NOT NULL,
  `cs_zm` varchar(50) NOT NULL,
  `cs_nd` varchar(50) NOT NULL,
  `cs_jl` varchar(50) NOT NULL,
  `cs_ts` varchar(50) NOT NULL,
  `cs_bz` varchar(50) NOT NULL,
  `tp_zs` varchar(50) NOT NULL,
  `tp_js` varchar(50) NOT NULL,
  `tp_yy` varchar(50) NOT NULL,
  `tp_qj` varchar(50) NOT NULL,
  `movesay_coinaddress` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='币种配置表';

-- ----------------------------
-- Records of movesay_coin
-- ----------------------------
INSERT INTO `movesay_coin` VALUES ('1', 'cny', 'rmb', '人民币', 'cny.png', '0', '0', '0', '0', '1', '', '182.254.134.191', '0', '0', '0', '0', '1', '', '1', '0', '0', '0', '', '0', '10000', '1', '10', 'ndd', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `movesay_coin` VALUES ('21', 'ltc', 'rgb', '莱特币', '5b080ed3a9691.png', '0', '0', '0', '0', '1', '', '', '', '', '', '0', '1', '', '1', '', '', '0', '', '0', '10000', '1', '10', 'ltc', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `movesay_coin` VALUES ('22', 'btc', 'qbb', '比特币', '5b080ec85d91a.png', '0', '0', '0', '0', '1', '', '', '', '', '', '0', '1', '', '1', '', '', '0', '', '0', '10000', '1', '10', 'btc', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '11111111113333333333');

-- ----------------------------
-- Table structure for `movesay_coin_comment`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_coin_comment`;
CREATE TABLE `movesay_coin_comment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `content` varchar(500) NOT NULL,
  `cjz` int(11) unsigned NOT NULL,
  `tzy` int(11) unsigned NOT NULL,
  `xcd` int(11) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movesay_coin_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_coin_json`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_coin_json`;
CREATE TABLE `movesay_coin_json` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `data` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of movesay_coin_json
-- ----------------------------
INSERT INTO `movesay_coin_json` VALUES ('43', 'btc', '[17.1247,0,null,null]', '', '0', '1504281599', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('44', 'btc', '[17.1247,0,null,null]', '', '0', '1504367999', '0', '0');
INSERT INTO `movesay_coin_json` VALUES ('45', 'btc', '[17.1247,0,null,null]', '', '0', '1504454399', '0', '0');

-- ----------------------------
-- Table structure for `movesay_config`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_config`;
CREATE TABLE `movesay_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `footer_logo` varchar(200) NOT NULL COMMENT ' ',
  `huafei_zidong` varchar(200) NOT NULL COMMENT '名称',
  `kefu` varchar(200) NOT NULL,
  `huafei_openid` varchar(200) NOT NULL COMMENT '名称',
  `huafei_appkey` varchar(200) NOT NULL COMMENT '名称',
  `index_lejimum` varchar(200) NOT NULL COMMENT '设置',
  `login_verify` varchar(200) NOT NULL COMMENT '设置',
  `fee_meitian` varchar(200) NOT NULL COMMENT '设置',
  `top_name` varchar(200) NOT NULL COMMENT '设置',
  `web_name` varchar(200) NOT NULL,
  `web_title` varchar(200) NOT NULL,
  `web_logo` varchar(200) NOT NULL,
  `web_llogo_small` varchar(200) NOT NULL,
  `web_keywords` text NOT NULL,
  `web_description` text NOT NULL,
  `web_close` text NOT NULL,
  `web_close_cause` text NOT NULL,
  `web_icp` text NOT NULL,
  `web_cnzz` text NOT NULL,
  `web_ren` text NOT NULL,
  `web_reg` text NOT NULL,
  `market_mr` text NOT NULL,
  `xnb_mr` text NOT NULL,
  `rmb_mr` text NOT NULL,
  `web_waring` text NOT NULL,
  `qq_3479015851_issue_waring` text NOT NULL,
  `moble_type` text NOT NULL,
  `moble_url` text NOT NULL,
  `moble_user` text NOT NULL,
  `moble_pwd` text NOT NULL,
  `contact_moble` text NOT NULL,
  `contact_weibo` text NOT NULL,
  `contact_tqq` text NOT NULL,
  `contact_qq` text NOT NULL,
  `contact_qqun` text NOT NULL,
  `contact_weixin` text NOT NULL,
  `contact_weixin_img` text NOT NULL,
  `contact_app_img` text NOT NULL,
  `contact_email` text NOT NULL,
  `contact_alipay` text NOT NULL,
  `contact_alipay_img` text NOT NULL,
  `contact_bank` text NOT NULL,
  `user_truename` text NOT NULL,
  `user_moble` text NOT NULL,
  `user_alipay` text NOT NULL,
  `user_bank` text NOT NULL,
  `user_text_truename` text NOT NULL,
  `user_text_moble` text NOT NULL,
  `user_text_alipay` text NOT NULL,
  `user_text_bank` text NOT NULL,
  `user_text_log` text NOT NULL,
  `user_text_password` text NOT NULL,
  `user_text_paypassword` text NOT NULL,
  `mytx_min` text NOT NULL,
  `mytx_max` text NOT NULL,
  `mytx_bei` text NOT NULL,
  `mytx_coin` text NOT NULL,
  `mytx_fee` text NOT NULL,
  `trade_min` text NOT NULL,
  `trade_max` text NOT NULL,
  `trade_limit` text NOT NULL,
  `trade_text_log` text NOT NULL,
  `issue_ci` text NOT NULL,
  `issue_jian` text NOT NULL,
  `issue_min` text NOT NULL,
  `issue_max` text NOT NULL,
  `money_min` text NOT NULL,
  `money_max` text NOT NULL,
  `money_bei` text NOT NULL,
  `money_text_index` text NOT NULL,
  `money_text_log` text NOT NULL,
  `money_text_type` text NOT NULL,
  `invit_type` text NOT NULL,
  `invit_fee1` text NOT NULL,
  `invit_fee2` text NOT NULL,
  `invit_fee3` text NOT NULL,
  `invit_text_txt` text NOT NULL,
  `invit_text_log` text NOT NULL,
  `index_notice_1` text NOT NULL,
  `index_notice_11` text NOT NULL,
  `index_notice_2` text NOT NULL,
  `index_notice_22` text NOT NULL,
  `index_notice_3` text NOT NULL,
  `index_notice_33` text NOT NULL,
  `index_notice_4` text NOT NULL,
  `index_notice_44` text NOT NULL,
  `text_footer` text NOT NULL,
  `shop_text_index` text NOT NULL,
  `shop_text_log` text NOT NULL,
  `shop_text_addr` text NOT NULL,
  `shop_text_view` text NOT NULL,
  `huafei_text_index` text NOT NULL,
  `huafei_text_log` text NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  `shop_coin` varchar(200) NOT NULL COMMENT '计算方式',
  `shop_logo` varchar(200) NOT NULL COMMENT '商城LOGO',
  `shop_login` varchar(200) NOT NULL COMMENT '是否要登陆',
  `index_html` varchar(50) DEFAULT NULL,
  `trade_hangqing` varchar(50) DEFAULT NULL,
  `trade_moshi` varchar(50) DEFAULT NULL,
  `reg_award` varchar(10) DEFAULT NULL,
  `reg_award_coin` varchar(50) DEFAULT NULL,
  `reg_award_num` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统配置表';

-- ----------------------------
-- Records of movesay_config
-- ----------------------------
INSERT INTO `movesay_config` VALUES ('1', '5b080f80640b8.png', '1', 'c', '', '', '1', '1', '', '您好，欢迎来到多比特交11易平台-专业数字资产交易平台', '比特币', '比特币交易平台_安全的莱特币比特币交易网 _虚拟货币交易-', '5b080b2e39413.png', '59545ad7bac91.png', '比特币交易平台，买比特币，比特币价格，比特币行情走势，莱特币交易平台，买莱特币，莱特币价格，莱特币行情走势，以太坊交易平台，买以太坊，以太坊价格，以太坊行情走势', '比特币交易平台是中国最大的比特币(BTC)、莱特币(LTC)、以太坊(ETH)交易平台之一，坚持为数字资产交易者提供，专业、安全、快捷的交易服务。', '1', '升级中...', '京ICP备11000943号-2', '1', '100', '<div style=\"text-align:center;\">\r\n	<div style=\"text-align:left;\">\r\n		根椐人民银行等有关部委的相关规定，比特币等数字货币系特殊的虚拟商品，作为互联网上的商品买卖行为，普通民众在自担风险的前提下拥有参与的自由。数字货币行业目前存在很多不确定，不可控的风险因素（如预挖、暴涨暴跌、庄家操控、团队解散、技术缺陷等），导致交易具有极高的风险。多比特交易平台仅为数字货币等虚拟商品的爱好者提供一个自由的网上交换平台，对在多比特交易平台交换的数字货币等虚拟商品的来源、价值，网站运营方不承担任何审查、担保、赔偿的法律责任。<br />\r\n<br />\r\n<br />\r\n<br />\r\n请您务必注意以下几点：<br />\r\n<br />\r\n<br />\r\n<br />\r\n1.警惕虚假宣传，不要听信任何币值会永远上涨的宣传，数字货币作为一种虚拟商品，具有极高的风险，很可能出现价值归零的情况。<br />\r\n<br />\r\n2.对于推广和运营方的市场承诺，需要谨慎判别，目前并没有相关法律能保证其兑现承诺，<span>多比特交易平台</span>不会对任何数字货币进行背书和承诺。<br />\r\n<br />\r\n3.坚决拒绝多层次传销组织，在我国参与该类组织是违法行为，造成的一切后果自负，平台将配合相关执法部门的要求进行调查、取证。<br />\r\n<br />\r\n4.根据《中华人民共和国反洗钱法》等有关法律规定，严格禁止利用平台进行洗钱等违法犯罪活动，平台将配合相关执法部门的要求进行调查、取证。<br />\r\n<br />\r\n5.数字货币和数字积分等虚拟商品所对应的实物财产和持有者享有的权利存在因发行方等义务相关方破产，关闭或违法犯罪等其他经营风险导致无法兑现的风险。<br />\r\n<br />\r\n6.在<span>多比特交易平台</span>注册参与交换的用户，应保证注册身份信息的真实、准确，保证拟交换的数字货币等虚拟商品的来源合法。因信息不真实造成的任何问题，平台概不负责。<br />\r\n<br />\r\n7.因国家法律，法规及政策性文件的制定和修改，导致数字货币等虚拟商品的交易被暂停或者禁止的，由此导致的全部损失由用户自行承担。<br />\r\n<br />\r\n8.请控制风险，不要投入超过您风险承受能力的资金，不要购买您所不了解的数字货币，数字积分等虚拟商品。<br />\r\n<br />\r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span style=\"color:#337FE5;\"></span> \r\n	</div>\r\n</div>\r\n<p>\r\n	<span style=\"font-size:10px;color:#E56600;\"></span> \r\n</p>', 'btc_ndd', 'btc', 'cny', '<p>\r\n	风险警告：根椐人民银行等有关部委的相关规定，比特币等数字货币系特殊的虚拟商品，作为互联网上的商品买卖行为，普通民众在自担风险的前提下拥有参与的自由。数字货币行业目前存在很多不确定，不可控的风险因素（如预挖、暴涨暴跌、庄家操控、团队解散、技术缺陷等），导致交易具有极高的风险。<span>多比特交易平台</span>仅为数字货币等虚拟商品的爱好者提供一个自由的网上交换平台，对在<span><span>多比特交易平台</span></span>交换的数字货币等虚拟商品的来源、价值，网站运营方不承担任何审查、担保、赔偿的法律责任，如果您不能接受，请不要进行交易！\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '新认购风险提示不投入超过风险承受能力的资金，不投资不了解的数字资产，不听信任何以<span><span>多比特交易平台</span></span>名义推荐买币投资的宣传，坚决抵制传销、电信诈骗和洗钱套汇等违法行为。', '1', 'http://utf8.sms.webchinese.cn', 'duanxinxiaozi', 'abe43d4cab48d7b415d4', 'kefu@26bi.com', 'http://weibo.com/movesay', '', '2997094872', '532614672', 'jubaopen', '59282b1874c15.png', '595119b5a00a5.png', '83839140@qq.com', '83839140@qq.com', '56f98e6d7245d.jpg', '中国银行|动说科技|0000 0000 0000 0000', '2', '2', '2', '2', '&lt;span&gt;&lt;span&gt;会员您好,务必正确填写好自己的真实姓名和真实身份证号码.&lt;/span&gt;&lt;/span&gt;', '&lt;span&gt;会员您好,务必用自己的手机号码进行手机认证,认证以后可以用来接收验证码.&lt;/span&gt;', '&lt;span&gt;会员您好,务必正确填写支付宝 &amp;nbsp;真实姓名（与实名认证姓名相同）和支付宝账号,后期提现唯一依据.&lt;/span&gt;', '&lt;span&gt;会员您好,&lt;/span&gt;&lt;span&gt;&lt;span&gt;务必正确填写银行卡信息 提现唯一依据.&lt;/span&gt;&lt;span&gt;&lt;/span&gt;&lt;/span&gt;', '&lt;span&gt;自己以往操作和登录及登录地点的相关记录.&lt;/span&gt;', '&lt;span&gt;会员您好,修改登录密码以后请不要忘记.若不记得旧登录密码,请点击--&lt;/span&gt;&lt;span style=&quot;color:#EE33EE;&quot;&gt;忘记密码&lt;/span&gt;', '&lt;span&gt;会员您好,修改交易密码以后请不要忘记.若不记得旧交易密码,请点击--&lt;/span&gt;&lt;span style=&quot;color:#EE33EE;&quot;&gt;忘记密码&lt;/span&gt;', '100', '50000', '100', 'cny', '0.3', '1', '10000000', '10', '&lt;span&gt;&lt;span&gt;你委托买入或者卖出成功交易后的记录.&lt;/span&gt;&lt;/span&gt;', '5', '24', '1', '100000', '100', '100000', '100', '理财首页', '理财记录', '理财类型', '1', '5', '3', '2', '中国人自己的虚拟币交易市场', '&lt;span&gt;&lt;span&gt;查看自己推广的好友,请点击&lt;/span&gt;&lt;span style=&quot;color:#EE33EE;&quot;&gt;“+”&lt;/span&gt;&lt;span&gt;,同时正确引导好友实名认证以及买卖,赚取推广收益和交易手续费.&lt;/span&gt;&lt;/span&gt;', '系统可靠', '银行级用户数据加密、动态身份验证多级风险识别控制，保障交易安全', '系统可靠', '账户多层加密，分布式服务器离线存储，即时隔离备份数据，确保安全', '快捷方便', '充值即时、提现迅速，每秒万单的高性能交易引擎，保证一切快捷方便', '服务专业', '热忱的客服工作人员和24小时的技术团队随时为您的账户安全保驾护航', '&lt;p&gt;\r\n	&lt;a href=&quot;/Article/index/type/aboutus.html&quot; target=&quot;_blank&quot;&gt;/Article/index/type/aboutus.html&lt;/a&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;lt;a href=&quot;&lt;a href=&quot;/Article/index/type/aboutus.html&quot; target=&quot;_blank&quot;&gt;/Article/index/type/aboutus.html&lt;/a&gt;&quot;&amp;gt;关于我们&amp;lt;/a&amp;gt;\r\n&lt;/p&gt;\r\n|&lt;br /&gt;\r\n&amp;lt;a href=&quot;/Article/index/type/aboutus.html&quot;&amp;gt;联系我们&amp;lt;/a&amp;gt;&lt;br /&gt;\r\n|&lt;br /&gt;\r\n&amp;lt;a href=&quot;/Article/index/type/aboutus.html&quot;&amp;gt;资质证明&amp;lt;/a&amp;gt;&lt;br /&gt;\r\n|&lt;br /&gt;\r\n&amp;lt;a href=&quot;/Article/index/type/aboutus.html&quot;&amp;gt;用户协议&amp;lt;/a&amp;gt;&lt;br /&gt;\r\n|&lt;br /&gt;\r\n&amp;lt;a href=&quot;/Article/index/type/aboutus.html&quot;&amp;gt;法律声明&amp;lt;/a&amp;gt;&lt;br /&gt;\r\n&amp;lt;p style=&quot;margin-top: 5px;text-align: center;&quot;&amp;gt;&lt;br /&gt;\r\nCopyright &amp;copy; 2016&lt;br /&gt;\r\n&amp;lt;a href=&quot;/&quot;&amp;gt;{$C[\'web_name\']}交易平台 &amp;lt;/a&amp;gt;&lt;br /&gt;\r\nAll Rights Reserved.&lt;br /&gt;\r\n&amp;lt;a href=&quot;http://www.miibeian.gov.cn/&quot;&amp;gt;{$C[\'web_icp\']}&amp;lt;/a&amp;gt;{$C[\'web_cnzz\']|htmlspecialchars_decode}&lt;br /&gt;\r\n&lt;br /&gt;\r\n&amp;lt;/p&amp;gt;&lt;br /&gt;\r\n&amp;lt;p class=&quot;clear1&quot; id=&quot;ut646&quot; style=&quot;margin-top: 10px;text-align: center;&quot;&amp;gt;&lt;br /&gt;\r\n&amp;lt;a href=&quot;http://webscan.360.cn/index/checkwebsite/url/www.zuocoin.com&quot; target=&quot;_blank&quot;&amp;gt;&amp;lt;img border=&quot;0&quot; width=&quot;83&quot; height=&quot;31&quot; src=&quot;http://img.webscan.360.cn/status/pai/hash/a272bae5f02b1df25be2c1d9d0b251f7&quot;/&amp;gt;&amp;lt;/a&amp;gt;&lt;br /&gt;\r\n&amp;lt;a href=&quot;http://www.szfw.org/&quot; target=&quot;_blank&quot; id=&quot;ut118&quot; class=&quot;margin10&quot;&amp;gt;&lt;br /&gt;\r\n&amp;lt;img src=&quot;__UPLOAD__/footer/footer_2.png&quot;&amp;gt;&lt;br /&gt;\r\n&amp;lt;/a&amp;gt;&lt;br /&gt;\r\n&amp;lt;a href=&quot;http://www.miibeian.gov.cn/&quot; target=&quot;_blank&quot; id=&quot;ut119&quot; class=&quot;margin10&quot;&amp;gt;&lt;br /&gt;\r\n&amp;lt;img src=&quot;__UPLOAD__/footer/footer_3.png&quot;&amp;gt;&lt;br /&gt;\r\n&amp;lt;/a&amp;gt;&lt;br /&gt;\r\n&amp;lt;a href=&quot;http://www.cyberpolice.cn/&quot; target=&quot;_blank&quot; id=&quot;ut120&quot; class=&quot;margin10&quot;&amp;gt;&lt;br /&gt;\r\n&amp;lt;img src=&quot;__UPLOAD__/footer/footer_4.png&quot;&amp;gt;&lt;br /&gt;\r\n&amp;lt;/a&amp;gt;&lt;br /&gt;\r\n&amp;lt;/p&amp;gt;&lt;br /&gt;', '', '', '', '', '', '', '1467383018', '0', '', '/Upload/shop/591d36d289371.png', '0', 'b', '1', '0', '1', 'ndd', '10');

-- ----------------------------
-- Table structure for `movesay_daohang`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_daohang`;
CREATE TABLE `movesay_daohang` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `title` varchar(255) NOT NULL COMMENT '名称',
  `url` varchar(255) NOT NULL COMMENT 'url',
  `sort` int(11) unsigned NOT NULL COMMENT '排序',
  `addtime` int(11) unsigned NOT NULL COMMENT '添加时间',
  `endtime` int(11) unsigned NOT NULL COMMENT '编辑时间',
  `status` tinyint(4) NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of movesay_daohang
-- ----------------------------
INSERT INTO `movesay_daohang` VALUES ('1', 'finance', '财务中心', 'Finance/index', '1', '0', '0', '1');
INSERT INTO `movesay_daohang` VALUES ('2', 'user', '安全中心', 'User/index', '2', '0', '0', '1');
INSERT INTO `movesay_daohang` VALUES ('3', 'Issue', '应用中心', 'Issue/index', '3', '0', '0', '0');
INSERT INTO `movesay_daohang` VALUES ('4', 'article', '公告中心', 'Article/index', '7', '0', '0', '0');
INSERT INTO `movesay_daohang` VALUES ('6', 'shop', '购物中心', 'Shop/index', '5', '0', '0', '1');
INSERT INTO `movesay_daohang` VALUES ('7', 'vote', '新币投票', 'Vote/index', '6', '0', '0', '1');
INSERT INTO `movesay_daohang` VALUES ('8', 'Issue', 'ICO中心', 'Issue/buy/id/4', '4', '1474183878', '0', '1');
INSERT INTO `movesay_daohang` VALUES ('9', '推广返佣', '推广返佣', 'promote/index.html', '4', '1480423054', '0', '-1');
INSERT INTO `movesay_daohang` VALUES ('10', 'article', '公告中心', 'Article/index', '0', '1480823236', '0', '-1');
INSERT INTO `movesay_daohang` VALUES ('11', 'THC夺宝岛', 'THC夺宝岛', 'Duobao\\index.html', '5', '1481470482', '0', '-1');
INSERT INTO `movesay_daohang` VALUES ('12', '欢乐抽奖', '欢乐抽奖', 'award/index.html', '5', '1482891983', '0', '-1');

-- ----------------------------
-- Table structure for `movesay_fenhong`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_fenhong`;
CREATE TABLE `movesay_fenhong` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `coinjian` varchar(50) NOT NULL,
  `num` decimal(20,8) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movesay_fenhong
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_fenhong_log`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_fenhong_log`;
CREATE TABLE `movesay_fenhong_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `coinjian` varchar(50) NOT NULL,
  `fenzong` varchar(50) NOT NULL,
  `fenchi` varchar(50) NOT NULL,
  `price` decimal(20,8) unsigned NOT NULL,
  `num` decimal(20,8) unsigned NOT NULL,
  `mum` decimal(20,8) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `userid` int(11) unsigned NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  KEY `name` (`name`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movesay_fenhong_log
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_finance`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_finance`;
CREATE TABLE `movesay_finance` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `userid` int(11) unsigned NOT NULL COMMENT '用户id',
  `coinname` varchar(50) NOT NULL COMMENT '币种',
  `num_a` decimal(20,8) unsigned NOT NULL COMMENT '之前正常',
  `num_b` decimal(20,8) unsigned NOT NULL COMMENT '之前冻结',
  `num` decimal(20,8) unsigned NOT NULL COMMENT '之前总计',
  `fee` decimal(20,8) unsigned NOT NULL COMMENT '操作数量',
  `type` varchar(50) NOT NULL COMMENT '操作类型',
  `name` varchar(50) NOT NULL COMMENT '操作名称',
  `nameid` int(11) NOT NULL COMMENT '操作详细',
  `remark` varchar(50) NOT NULL COMMENT '操作备注',
  `mum_a` decimal(20,8) unsigned NOT NULL COMMENT '剩余正常',
  `mum_b` decimal(20,8) unsigned NOT NULL COMMENT '剩余冻结',
  `mum` decimal(20,8) unsigned NOT NULL COMMENT '剩余总计',
  `move` varchar(50) NOT NULL COMMENT '附加',
  `addtime` int(11) unsigned NOT NULL COMMENT '添加时间',
  `status` tinyint(4) unsigned NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `coinname` (`coinname`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=1587 DEFAULT CHARSET=utf8 COMMENT='财务记录表';

-- ----------------------------
-- Records of movesay_finance
-- ----------------------------
INSERT INTO `movesay_finance` VALUES ('1501', '22', 'cny', '100.00000000', '0.00000000', '100.00000000', '100.00000000', '2', 'mytx', '2', '人民币提现-申请提现', '0.00000000', '0.00000000', '0.00000000', '618ee7876217a9fad8c6cb1c198b5825', '1510674773', '0');
INSERT INTO `movesay_finance` VALUES ('1502', '1', 'cny', '0.00000000', '0.00000000', '0.00000000', '90.90000000', '1', 'trade', '283815', '交易中心-交易撤销btc_ltc', '0.00000000', '0.00000000', '0.00000000', '1f86003887c590ef4ec8b1299447e8d3', '1511937636', '1');
INSERT INTO `movesay_finance` VALUES ('1503', '1', 'cny', '1000.00000000', '0.00000000', '1000.00000000', '100.00001000', '2', 'trade', '283833', '交易中心-委托买入-市场ltc_cny', '899.99999000', '100.00001000', '1000.00000000', '88443d83c5a90cd97cc020e80dc1b29d', '1525843961', '0');
INSERT INTO `movesay_finance` VALUES ('1504', '1', 'cny', '899.99999000', '100.00001000', '1000.00000000', '100.00001000', '2', 'tradelog', '262472', '交易中心-成功买入-市场ltc_cny', '899.99999000', '0.00000000', '899.99999000', '84d38728cc79dce04845ee86f40f1ef3', '1525843976', '1');
INSERT INTO `movesay_finance` VALUES ('1505', '1', 'cny', '899.99999000', '0.00000000', '899.99999000', '100.00001000', '1', 'tradelog', '262472', '交易中心-成功卖出-市场ltc_cny', '1000.00000000', '0.00000000', '1000.00000000', 'aa0a1fbc7a879fd7eb33682551171b52', '1525843976', '1');
INSERT INTO `movesay_finance` VALUES ('1506', '1', 'cny', '999663.21131953', '336.78868047', '1000000.00000000', '31.76865885', '2', 'tradelog', '262473', '交易中心-成功买入-市场ltc_cny', '999663.21131953', '305.02002162', '999968.23134115', '679ca336079b593dea94bf24b661d41f', '1526633763', '0');
INSERT INTO `movesay_finance` VALUES ('1507', '1', 'cny', '999663.21131953', '305.02002162', '999968.23134115', '31.76865885', '1', 'tradelog', '262473', '交易中心-成功卖出-市场ltc_cny', '999694.97997838', '305.02002162', '1000000.00000000', '5485e0adacd9975e392660406f74fb25', '1526633763', '1');
INSERT INTO `movesay_finance` VALUES ('1508', '1', 'cny', '999282.66975674', '717.33024326', '1000000.00000000', '22.77882882', '2', 'tradelog', '262474', '交易中心-成功买入-市场ltc_cny', '999282.66975674', '694.55141444', '999977.22117118', '99cb017114634388c71bfe2f05e1f120', '1526633790', '1');
INSERT INTO `movesay_finance` VALUES ('1509', '2', 'cny', '999993.21637678', '6.78362322', '1000000.00000000', '22.77882882', '1', 'tradelog', '262474', '交易中心-成功卖出-市场ltc_cny', '1000015.99520560', '6.78362322', '1000022.77882880', '859f3290fee33cd01e0c779c501a49cf', '1526633790', '0');
INSERT INTO `movesay_finance` VALUES ('1510', '1', 'cny', '999282.66975674', '694.55141444', '999977.22117118', '110.75282560', '2', 'tradelog', '262475', '交易中心-成功买入-市场ltc_cny', '999282.66975674', '583.79858884', '999866.46834558', 'e0f20b4687737abea2d9bb2340e62555', '1526633790', '1');
INSERT INTO `movesay_finance` VALUES ('1511', '2', 'cny', '1000015.99520560', '6.78362322', '1000022.77882880', '110.75282560', '1', 'tradelog', '262475', '交易中心-成功卖出-市场ltc_cny', '1000126.74803120', '6.78362322', '1000133.53165440', '57148913c518fb4560006acd72402150', '1526633790', '0');
INSERT INTO `movesay_finance` VALUES ('1512', '1', 'cny', '999282.66975674', '583.79858884', '999866.46834558', '176.93235384', '2', 'tradelog', '262476', '交易中心-成功买入-市场ltc_cny', '999282.66975674', '406.86623500', '999689.53599174', 'c922ec4f1d30bf11393814ff5984809a', '1526633793', '1');
INSERT INTO `movesay_finance` VALUES ('1513', '1', 'cny', '999282.66975674', '406.86623500', '999689.53599174', '176.93235384', '1', 'tradelog', '262476', '交易中心-成功卖出-市场ltc_cny', '999459.60211058', '406.86623500', '999866.46834558', '812314ae00bd19bb95c0f7149e84fa42', '1526633793', '1');
INSERT INTO `movesay_finance` VALUES ('1514', '1', 'cny', '999459.60211058', '406.86623500', '999866.46834558', '7.77089264', '2', 'tradelog', '262477', '交易中心-成功买入-市场ltc_cny', '999459.60211058', '399.09534236', '999858.69745294', '00e08d73a30eed639a512f3229e715cb', '1526633809', '1');
INSERT INTO `movesay_finance` VALUES ('1515', '2', 'cny', '1000126.74803120', '6.78362322', '1000133.53165440', '7.77089264', '1', 'tradelog', '262477', '交易中心-成功卖出-市场ltc_cny', '1000134.51892384', '6.78362322', '1000141.30254710', 'eb62e82060b227e1f93a6ff241430340', '1526633809', '0');
INSERT INTO `movesay_finance` VALUES ('1516', '1', 'cny', '999440.35183175', '418.34562119', '999858.69745294', '60.96815504', '2', 'tradelog', '262478', '交易中心-成功买入-市场ltc_cny', '999440.35183175', '357.37746615', '999797.72929790', '3bde2bc14399204423022890838a2696', '1526633974', '1');
INSERT INTO `movesay_finance` VALUES ('1517', '1', 'cny', '999440.35183175', '357.37746615', '999797.72929790', '60.96815504', '1', 'tradelog', '262478', '交易中心-成功卖出-市场ltc_cny', '999501.31998679', '357.37746615', '999858.69745294', '6c74ec18e303996bcb9a17221b77e6f6', '1526633974', '1');
INSERT INTO `movesay_finance` VALUES ('1518', '1', 'cny', '999501.31998679', '357.37746615', '999858.69745294', '19.25027883', '2', 'tradelog', '262479', '交易中心-成功买入-市场ltc_cny', '999501.31998679', '338.12718732', '999839.44717411', '09a9e1191ae399070e1b12f294976d4c', '1526633974', '1');
INSERT INTO `movesay_finance` VALUES ('1519', '1', 'cny', '999501.31998679', '338.12718732', '999839.44717411', '19.25027883', '1', 'tradelog', '262479', '交易中心-成功卖出-市场ltc_cny', '999520.57026562', '338.12718732', '999858.69745294', '787729e05ad402c812b39144e9492d16', '1526633974', '1');
INSERT INTO `movesay_finance` VALUES ('1520', '1', 'cny', '999520.57026562', '338.12718732', '999858.69745294', '168.38892738', '2', 'tradelog', '262480', '交易中心-成功买入-市场ltc_cny', '999520.57026562', '169.73825994', '999690.30852556', '3ec0f614f8a7f5a1545b88b1421d7d0d', '1526633984', '1');
INSERT INTO `movesay_finance` VALUES ('1521', '1', 'cny', '999520.57026562', '169.73825994', '999690.30852556', '168.38892738', '1', 'tradelog', '262480', '交易中心-成功卖出-市场ltc_cny', '999688.95919300', '169.73825994', '999858.69745294', '0670f5cceee34f0aa157ff54d4755cd9', '1526633984', '1');
INSERT INTO `movesay_finance` VALUES ('1522', '2', 'cny', '999967.22727340', '174.07527366', '1000141.30254710', '159.79987242', '2', 'tradelog', '262481', '交易中心-成功买入-市场ltc_cny', '999967.22727340', '14.27540124', '999981.50267464', '726b1482b0d96bc58596f960b74d8245', '1526633992', '1');
INSERT INTO `movesay_finance` VALUES ('1523', '1', 'cny', '999688.95919300', '169.73825994', '999858.69745294', '159.79987242', '1', 'tradelog', '262481', '交易中心-成功卖出-市场ltc_cny', '999848.75906542', '169.73825994', '1000018.49732540', '77108afc813c9d3046499aff2647127a', '1526633992', '0');
INSERT INTO `movesay_finance` VALUES ('1524', '1', 'cny', '999848.75906542', '169.73825994', '1000018.49732540', '169.73825994', '2', 'tradelog', '262482', '交易中心-成功买入-市场ltc_cny', '999848.75906542', '0.00000000', '999848.75906542', 'da5bf347f18c48bdbed32da1bf0f5ea2', '1526634026', '1');
INSERT INTO `movesay_finance` VALUES ('1525', '2', 'cny', '999974.71905142', '6.78362322', '999981.50267464', '169.73825994', '1', 'tradelog', '262482', '交易中心-成功卖出-市场ltc_cny', '1000144.45731136', '6.78362322', '1000151.24093460', '1c5d6bfa9198062c644874fb82f90074', '1526634026', '0');
INSERT INTO `movesay_finance` VALUES ('1526', '2', 'cny', '999931.73437036', '219.50656422', '1000151.24093460', '31.76865885', '2', 'tradelog', '262483', '交易中心-成功买入-市场ltc_cny', '999931.73437036', '187.73790537', '1000119.47227570', 'b16d96d9eb6ad3c33bef532f03b2c6ff', '1526634095', '1');
INSERT INTO `movesay_finance` VALUES ('1527', '1', 'cny', '999848.75906542', '0.00000000', '999848.75906542', '31.76865885', '1', 'tradelog', '262483', '交易中心-成功卖出-市场ltc_cny', '999880.52772427', '0.00000000', '999880.52772427', '4f53fecf270304478c57a6acf06834ad', '1526634095', '0');
INSERT INTO `movesay_finance` VALUES ('1528', '2', 'cny', '1000105.69772851', '13.77454722', '1000119.47227570', '1.67052200', '2', 'tradelog', '262484', '交易中心-成功买入-市场ltc_cny', '1000105.69772851', '12.10402522', '1000117.80175370', 'd1f8708252449b40f138b61dea222d0f', '1526634096', '1');
INSERT INTO `movesay_finance` VALUES ('1529', '2', 'cny', '1000105.69772851', '12.10402522', '1000117.80175370', '1.67052200', '1', 'tradelog', '262484', '交易中心-成功卖出-市场ltc_cny', '1000107.36825051', '12.10402522', '1000119.47227570', '3f7c44e7ff1502f31882f214000d2f4c', '1526634096', '1');
INSERT INTO `movesay_finance` VALUES ('1530', '2', 'cny', '1000082.80874790', '36.66352783', '1000119.47227570', '9.27509800', '2', 'tradelog', '262485', '交易中心-成功买入-市场ltc_cny', '1000082.80874790', '27.38842983', '1000110.19717770', 'daa2166553e114a26dff3dd830eaf658', '1526634097', '1');
INSERT INTO `movesay_finance` VALUES ('1531', '2', 'cny', '1000082.80874790', '27.38842983', '1000110.19717770', '9.27509800', '1', 'tradelog', '262485', '交易中心-成功卖出-市场ltc_cny', '1000092.08384590', '27.38842983', '1000119.47227570', '025d08db552d4d6c2b5d31d23aac091d', '1526634097', '1');
INSERT INTO `movesay_finance` VALUES ('1532', '2', 'cny', '1000103.51793730', '15.95433843', '1000119.47227570', '6.07124127', '2', 'tradelog', '262486', '交易中心-成功买入-市场ltc_cny', '1000103.51793730', '9.88309716', '1000113.40103450', 'a656e5b5d93806254deeafd082c22c8b', '1526634098', '1');
INSERT INTO `movesay_finance` VALUES ('1533', '1', 'cny', '999880.52772427', '0.00000000', '999880.52772427', '6.07124127', '1', 'tradelog', '262486', '交易中心-成功卖出-市场ltc_cny', '999886.59896554', '0.00000000', '999886.59896554', '757aabe513119ded8b5df58560b2dece', '1526634098', '0');
INSERT INTO `movesay_finance` VALUES ('1534', '1', 'cny', '999849.14795418', '37.45101136', '999886.59896554', '13.14634384', '2', 'tradelog', '262487', '交易中心-成功买入-市场ltc_cny', '999849.14795418', '24.30466752', '999873.45262170', 'b87fe3c0f242d22846705a68a106ad7d', '1526634103', '1');
INSERT INTO `movesay_finance` VALUES ('1535', '1', 'cny', '999849.14795418', '24.30466752', '999873.45262170', '13.14634384', '1', 'tradelog', '262487', '交易中心-成功卖出-市场ltc_cny', '999862.29429802', '24.30466752', '999886.59896554', '4ca8d8cb03ffa3cd654f2c18fa5404c1', '1526634103', '1');
INSERT INTO `movesay_finance` VALUES ('1536', '1', 'cny', '999339.69082390', '546.90814164', '999886.59896554', '21.97140515', '2', 'tradelog', '262488', '交易中心-成功买入-市场ltc_cny', '999339.69082390', '524.93673649', '999864.62756039', 'aa46576427e5b9326dba111b039aa880', '1526634121', '1');
INSERT INTO `movesay_finance` VALUES ('1537', '1', 'cny', '999339.69082390', '524.93673649', '999864.62756039', '21.97140515', '1', 'tradelog', '262488', '交易中心-成功卖出-市场ltc_cny', '999361.66222905', '524.93673649', '999886.59896554', '7039f3231434264786273a63a3e47260', '1526634121', '1');
INSERT INTO `movesay_finance` VALUES ('1538', '1', 'cny', '999435.95780485', '450.64116069', '999886.59896554', '108.24341800', '2', 'tradelog', '262489', '交易中心-成功买入-市场ltc_cny', '999435.95780485', '342.39774269', '999778.35554754', 'f28f8a01e1b35dd28f9981488fd273aa', '1526634121', '1');
INSERT INTO `movesay_finance` VALUES ('1539', '2', 'cny', '1000106.61741124', '6.78362322', '1000113.40103450', '108.24341800', '1', 'tradelog', '262489', '交易中心-成功卖出-市场ltc_cny', '1000214.86082924', '6.78362322', '1000221.64445250', '65ba3064df2fa23ea6df7a6c1d5b076a', '1526634121', '0');
INSERT INTO `movesay_finance` VALUES ('1540', '1', 'cny', '999766.78387239', '11.57167515', '999778.35554754', '7.84207335', '2', 'tradelog', '262490', '交易中心-成功买入-市场ltc_cny', '999766.78387239', '3.72960180', '999770.51347419', '9e8e0b589653cdd787dd8c44ceba937c', '1526634122', '1');
INSERT INTO `movesay_finance` VALUES ('1541', '1', 'cny', '999766.78387239', '3.72960180', '999770.51347419', '7.84207335', '1', 'tradelog', '262490', '交易中心-成功卖出-市场ltc_cny', '999774.62594574', '3.72960180', '999778.35554754', 'f271f3a00e3a9eedf2e57d2f1853deb4', '1526634122', '1');
INSERT INTO `movesay_finance` VALUES ('1542', '1', 'cny', '999640.69442108', '137.66112646', '999778.35554754', '112.80264567', '2', 'tradelog', '262491', '交易中心-成功买入-市场ltc_cny', '999640.69442108', '24.85848079', '999665.55290187', 'e17e0d02b9f8168c0cb7124f3666cb60', '1526634200', '1');
INSERT INTO `movesay_finance` VALUES ('1543', '1', 'cny', '999640.69442108', '24.85848079', '999665.55290187', '112.80264567', '1', 'tradelog', '262491', '交易中心-成功卖出-市场ltc_cny', '999753.49706675', '24.85848079', '999778.35554754', '5215b733d90a5c706cde548765d99706', '1526634200', '1');
INSERT INTO `movesay_finance` VALUES ('1544', '1', 'cny', '999552.79041279', '225.56513475', '999778.35554754', '27.51228450', '2', 'tradelog', '262492', '交易中心-成功买入-市场ltc_cny', '999552.79041279', '198.05285025', '999750.84326304', 'ede66f5d330f22a99aebb544d4dd7f5c', '1526634245', '1');
INSERT INTO `movesay_finance` VALUES ('1545', '1', 'cny', '999552.79041279', '198.05285025', '999750.84326304', '27.51228450', '1', 'tradelog', '262492', '交易中心-成功卖出-市场ltc_cny', '999580.30269729', '198.05285025', '999778.35554754', 'b4d38c92edb712c503bad114f85a6041', '1526634245', '1');
INSERT INTO `movesay_finance` VALUES ('1546', '2', 'cny', '1000155.86446010', '65.77999236', '1000221.64445250', '19.89456088', '2', 'tradelog', '262493', '交易中心-成功买入-市场ltc_cny', '1000155.86446010', '45.88543148', '1000201.74989160', '01cbf32739d7d069e23096fa10015696', '1526634263', '1');
INSERT INTO `movesay_finance` VALUES ('1547', '1', 'cny', '999778.35554754', '0.00000000', '999778.35554754', '19.89456088', '1', 'tradelog', '262493', '交易中心-成功卖出-市场ltc_cny', '999798.25010842', '0.00000000', '999798.25010842', '4df0db71d433bafa8d7500f5847b09e3', '1526634263', '0');
INSERT INTO `movesay_finance` VALUES ('1548', '1', 'cny', '999760.79909706', '37.45101136', '999798.25010842', '22.87717936', '2', 'tradelog', '262494', '交易中心-成功买入-市场ltc_cny', '999760.79909706', '14.57383200', '999775.37292906', 'd82d018b3fdc19da3a0cf644cf70c58b', '1526634272', '1');
INSERT INTO `movesay_finance` VALUES ('1549', '1', 'cny', '999760.79909706', '14.57383200', '999775.37292906', '22.87717936', '1', 'tradelog', '262494', '交易中心-成功卖出-市场ltc_cny', '999783.67627642', '14.57383200', '999798.25010842', '64ae1b264d80fb4f8983f22298bf0b17', '1526634272', '1');
INSERT INTO `movesay_finance` VALUES ('1550', '2', 'cny', '1000084.74202698', '117.00786460', '1000201.74989160', '1.68143791', '2', 'tradelog', '262495', '交易中心-成功买入-市场ltc_cny', '1000084.74202698', '115.32642669', '1000200.06845370', '4f288d679f1dd7923c9e7cee08ed5240', '1526634290', '1');
INSERT INTO `movesay_finance` VALUES ('1551', '1', 'cny', '999798.25010842', '0.00000000', '999798.25010842', '1.68143791', '1', 'tradelog', '262495', '交易中心-成功卖出-市场ltc_cny', '999799.93154633', '0.00000000', '999799.93154633', '7de5e3e9a3bc00fd8bb5ddf3a682e07e', '1526634290', '0');
INSERT INTO `movesay_finance` VALUES ('1552', '2', 'cny', '999852.04764899', '348.02080468', '1000200.06845370', '196.81893576', '2', 'tradelog', '262496', '交易中心-成功买入-市场ltc_cny', '999852.04764899', '151.20186892', '1000003.24951790', 'f088be80039479125a412bd18c5b1166', '1526634357', '1');
INSERT INTO `movesay_finance` VALUES ('1553', '1', 'cny', '999798.44262303', '1.48892330', '999799.93154633', '196.81893576', '1', 'tradelog', '262496', '交易中心-成功卖出-市场ltc_cny', '999995.26155879', '1.48892330', '999996.75048209', '89ec138f357c1b0313cf567a78747ddc', '1526634357', '0');
INSERT INTO `movesay_finance` VALUES ('1554', '2', 'cny', '999849.62995143', '153.61956648', '1000003.24951790', '28.69839928', '2', 'tradelog', '262497', '交易中心-成功买入-市场ltc_cny', '999849.62995143', '124.92116720', '999974.55111863', '44f656144e22ce00f8969dd495a2d208', '1526634394', '1');
INSERT INTO `movesay_finance` VALUES ('1555', '2', 'cny', '999849.62995143', '124.92116720', '999974.55111863', '28.69839928', '1', 'tradelog', '262497', '交易中心-成功卖出-市场ltc_cny', '999878.32835071', '124.92116720', '1000003.24951790', '4b6a17d7636452bded5e7beedb48ee2e', '1526634394', '1');
INSERT INTO `movesay_finance` VALUES ('1556', '2', 'cny', '999878.32835071', '124.92116720', '1000003.24951790', '84.38472168', '2', 'tradelog', '262498', '交易中心-成功买入-市场ltc_cny', '999878.32835071', '40.53644552', '999918.86479623', '64cfe5932597e298168af72cf9f4cd7c', '1526634394', '1');
INSERT INTO `movesay_finance` VALUES ('1557', '2', 'cny', '999878.32835071', '40.53644552', '999918.86479623', '84.38472168', '1', 'tradelog', '262498', '交易中心-成功卖出-市场ltc_cny', '999962.71307239', '40.53644552', '1000003.24951790', 'fa225f1bafd5c9979e4643c129c26966', '1526634395', '1');
INSERT INTO `movesay_finance` VALUES ('1558', '2', 'cny', '999962.71307239', '40.53644552', '1000003.24951790', '24.02459946', '2', 'tradelog', '262499', '交易中心-成功买入-市场ltc_cny', '999962.71307239', '16.51184606', '999979.22491845', '28abb3af4eafda36376442fa75048c80', '1526634402', '1');
INSERT INTO `movesay_finance` VALUES ('1559', '2', 'cny', '999962.71307239', '16.51184606', '999979.22491845', '24.02459946', '1', 'tradelog', '262499', '交易中心-成功卖出-市场ltc_cny', '999986.73767185', '16.51184606', '1000003.24951790', '99fc72081048eeb0d1bf5c4fd4c02b6b', '1526634402', '1');
INSERT INTO `movesay_finance` VALUES ('1560', '1', 'cny', '999995.26155879', '1.48892330', '999996.75048209', '0.30691650', '2', 'tradelog', '262500', '交易中心-成功买入-市场ltc_cny', '999995.26155879', '1.18200680', '999996.44356559', '3d97d998e2397ca56a14459a78cfdeb0', '1526634402', '1');
INSERT INTO `movesay_finance` VALUES ('1561', '2', 'cny', '999986.73767185', '16.51184606', '1000003.24951790', '0.30691650', '1', 'tradelog', '262500', '交易中心-成功卖出-市场ltc_cny', '999987.04458835', '16.51184606', '1000003.55643440', '2a340a0f489b6ef661b7313cb700bf67', '1526634402', '0');
INSERT INTO `movesay_finance` VALUES ('1562', '2', 'cny', '999987.04458835', '16.51184606', '1000003.55643440', '6.78362322', '2', 'tradelog', '262501', '交易中心-成功买入-市场ltc_cny', '999987.04458835', '9.72822284', '999996.77281119', '9131a6071c9832e58e7fbd3dd3eeec3e', '1526634402', '1');
INSERT INTO `movesay_finance` VALUES ('1563', '2', 'cny', '999987.04458835', '9.72822284', '999996.77281119', '6.78362322', '1', 'tradelog', '262501', '交易中心-成功卖出-市场ltc_cny', '999993.82821157', '9.72822284', '1000003.55643440', '829fb3f27b0b3a0b6b7e492129e46f55', '1526634402', '1');
INSERT INTO `movesay_finance` VALUES ('1564', '2', 'cny', '999993.82821157', '9.72822284', '1000003.55643440', '9.72822284', '2', 'tradelog', '262502', '交易中心-成功买入-市场ltc_cny', '999993.82821157', '0.00000000', '999993.82821157', '2b3c955a50e93d0e53f6d46259f53976', '1526634402', '1');
INSERT INTO `movesay_finance` VALUES ('1565', '2', 'cny', '999993.82821157', '0.00000000', '999993.82821157', '9.72822284', '1', 'tradelog', '262502', '交易中心-成功卖出-市场ltc_cny', '1000003.55643441', '0.00000000', '1000003.55643440', '25a33d6a4784b0b5891077e6dd85d652', '1526634402', '1');
INSERT INTO `movesay_finance` VALUES ('1566', '1', 'cny', '999995.26155879', '1.18200680', '999996.44356559', '1.18200680', '2', 'tradelog', '262503', '交易中心-成功买入-市场ltc_cny', '999995.26155879', '0.00000000', '999995.26155879', '33b9b6fba7acb9d995020feabeb9c5b5', '1526634402', '1');
INSERT INTO `movesay_finance` VALUES ('1567', '2', 'cny', '1000003.55643441', '0.00000000', '1000003.55643440', '1.18200680', '1', 'tradelog', '262503', '交易中心-成功卖出-市场ltc_cny', '1000004.73844121', '0.00000000', '1000004.73844120', 'f8a9ab8e28e070cc5eaccdb6fa6d0dc6', '1526634402', '0');
INSERT INTO `movesay_finance` VALUES ('1568', '1', 'cny', '1067624.90418383', '0.00000000', '1067624.90418380', '1111.00000000', '2', 'trade', '284024', '交易中心-委托买入-市场btc_cny', '1066513.90418383', '1111.00000000', '1067624.90418380', '8838aacafac4870b24baef35d37ea7a0', '1526634509', '0');
INSERT INTO `movesay_finance` VALUES ('1569', '1', 'cny', '1170871.04026739', '0.00000000', '1170871.04026740', '0.00000000', '1', 'trade', '284201', '交易中心-交易撤销btc_cny', '1170871.04026739', '0.00000000', '1170871.04026740', 'c1b74497b4ba124db30a6d4caa564921', '1526634641', '0');
INSERT INTO `movesay_finance` VALUES ('1570', '1', 'cny', '1562982.46678375', '0.00000000', '1562982.46678380', '0.00000000', '1', 'trade', '285033', '交易中心-交易撤销btc_cny', '1562982.46678375', '0.00000000', '1562982.46678380', '826a12c55a2444ddb4c73ed88a7e7901', '1526635292', '0');
INSERT INTO `movesay_finance` VALUES ('1571', '1', 'cny', '1567277.14076852', '0.00000000', '1567277.14076850', '0.00000000', '1', 'trade', '285031', '交易中心-交易撤销btc_cny', '1567277.14076852', '0.00000000', '1567277.14076850', '9149962794923e13d7131a3d52b07865', '1526635294', '0');
INSERT INTO `movesay_finance` VALUES ('1572', '2', 'cny', '1549110.96994253', '0.00000000', '1549110.96994250', '0.00000000', '1', 'trade', '285059', '交易中心-交易撤销btc_cny', '1549110.96994253', '0.00000000', '1549110.96994250', '7867a340b2cbf674c0cfd6bec97de010', '1526635309', '0');
INSERT INTO `movesay_finance` VALUES ('1573', '1', 'cny', '1723750.45071926', '0.00000000', '1723750.45071930', '1100.00000000', '2', 'trade', '285420', '交易中心-委托买入-市场btc_cny', '1722650.45071926', '1100.00000000', '1723750.45071930', '4e60e1ba15d302a684d2f70429d92245', '1526636123', '0');
INSERT INTO `movesay_finance` VALUES ('1574', '1', 'cny', '1722650.45071926', '1100.00000000', '1723750.45071930', '1221.00000000', '2', 'trade', '285421', '交易中心-委托买入-市场btc_cny', '1721429.45071926', '2321.00000000', '1723750.45071930', '6d7e2248945448a0a082575993e74ed6', '1526636130', '1');
INSERT INTO `movesay_finance` VALUES ('1575', '1', 'cny', '1721429.45071926', '2321.00000000', '1723750.45071930', '2244.00000000', '2', 'trade', '285422', '交易中心-委托买入-市场btc_cny', '1719185.45071926', '4565.00000000', '1723750.45071930', '326002e4dce85de3386e80362ec610b8', '1526636142', '1');
INSERT INTO `movesay_finance` VALUES ('1576', '1', 'cny', '1719185.45071926', '4565.00000000', '1723750.45071930', '111.00000000', '2', 'tradelog', '262504', '交易中心-成功买入-市场btc_cny', '1719185.45071926', '4454.00000000', '1723639.45071930', '2bcbedf9129338046ae5cf25ea21736a', '1526636154', '1');
INSERT INTO `movesay_finance` VALUES ('1577', '1', 'cny', '1719185.45071926', '4454.00000000', '1723639.45071930', '111.00000000', '1', 'tradelog', '262504', '交易中心-成功卖出-市场btc_cny', '1719296.45071926', '4454.00000000', '1723750.45071930', '8c8a6c5e0edd58e034d32b262664a91f', '1526636154', '1');
INSERT INTO `movesay_finance` VALUES ('1578', '1', 'cny', '1719296.45071926', '4454.00000000', '1723750.45071930', '200.00000000', '2', 'trade', '285425', '交易中心-委托买入-市场ltc_cny', '1719096.45071926', '4654.00000000', '1723750.45071930', '99b4fafc2be0380a211217faefbbc455', '1526636186', '1');
INSERT INTO `movesay_finance` VALUES ('1579', '1', 'cny', '1719096.45071926', '4654.00000000', '1723750.45071930', '200.00000000', '2', 'tradelog', '262505', '交易中心-成功买入-市场ltc_cny', '1719096.45071926', '4454.00000000', '1723550.45071930', '0371db55975307dda9aa1f6d22f002ec', '1526636204', '1');
INSERT INTO `movesay_finance` VALUES ('1580', '1', 'cny', '1719096.45071926', '4454.00000000', '1723550.45071930', '200.00000000', '1', 'tradelog', '262505', '交易中心-成功卖出-市场ltc_cny', '1719296.45071926', '4454.00000000', '1723750.45071930', 'bd58749f37c5aab5186c82012336d97d', '1526636204', '1');
INSERT INTO `movesay_finance` VALUES ('1581', '1', 'cny', '1719296.45071926', '4454.00000000', '1723750.45071930', '210.00000000', '2', 'trade', '285428', '交易中心-委托买入-市场ltc_cny', '1719086.45071926', '4664.00000000', '1723750.45071930', 'bb63fbe1c4dd3c5c0b997dc08ed10fca', '1526636210', '1');
INSERT INTO `movesay_finance` VALUES ('1582', '1', 'cny', '1719086.45071926', '4664.00000000', '1723750.45071930', '222.00000000', '2', 'trade', '285429', '交易中心-委托买入-市场ltc_cny', '1718864.45071926', '4886.00000000', '1723750.45071930', '0022c18337093cf876c857cb6d2b4632', '1526636214', '1');
INSERT INTO `movesay_finance` VALUES ('1583', '1', 'cny', '1718864.45071926', '4886.00000000', '1723750.45071930', '122.00000000', '2', 'trade', '285431', '交易中心-委托买入-市场btc_cny', '1718742.45071926', '5008.00000000', '1723750.45071930', 'c5b51bed6df3ee2af49282127b98a64f', '1526636333', '1');
INSERT INTO `movesay_finance` VALUES ('1584', '1', 'cny', '1718742.45071926', '5008.00000000', '1723750.45071930', '122.00000000', '2', 'tradelog', '262506', '交易中心-成功买入-市场btc_cny', '1718742.45071926', '4886.00000000', '1723628.45071930', 'd006a992cdcc44af8d1155c25b22a252', '1526636333', '1');
INSERT INTO `movesay_finance` VALUES ('1585', '1', 'cny', '1718742.45071926', '4886.00000000', '1723628.45071930', '122.00000000', '1', 'tradelog', '262506', '交易中心-成功卖出-市场btc_cny', '1718864.45071926', '4886.00000000', '1723750.45071930', 'dd3aeeef2c0f0f0507d1acbd348ccbff', '1526636333', '1');
INSERT INTO `movesay_finance` VALUES ('1586', '2', 'cny', '1656179.98385229', '0.00000000', '1656179.98385230', '100.00000000', '2', 'issue', '6', '认购中心-立即认购', '1656119.98385229', '0.00000000', '1656119.98385230', '9cd1e99dd5392f9c34a9f04acc22e2c7', '1527252773', '0');

-- ----------------------------
-- Table structure for `movesay_finance_copy`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_finance_copy`;
CREATE TABLE `movesay_finance_copy` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `userid` int(11) unsigned NOT NULL COMMENT '用户id',
  `coinname` varchar(50) NOT NULL COMMENT '币种',
  `num_a` decimal(20,8) unsigned NOT NULL COMMENT '之前正常',
  `num_b` decimal(20,8) unsigned NOT NULL COMMENT '之前冻结',
  `num` decimal(20,8) unsigned NOT NULL COMMENT '之前总计',
  `fee` decimal(20,8) unsigned NOT NULL COMMENT '操作数量',
  `type` varchar(50) NOT NULL COMMENT '操作类型',
  `name` varchar(50) NOT NULL COMMENT '操作名称',
  `nameid` int(11) NOT NULL COMMENT '操作详细',
  `remark` varchar(50) NOT NULL COMMENT '操作备注',
  `mum_a` decimal(20,8) unsigned NOT NULL COMMENT '剩余正常',
  `mum_b` decimal(20,8) unsigned NOT NULL COMMENT '剩余冻结',
  `mum` decimal(20,8) unsigned NOT NULL COMMENT '剩余总计',
  `move` varchar(50) NOT NULL COMMENT '附加',
  `addtime` int(11) unsigned NOT NULL COMMENT '添加时间',
  `status` tinyint(4) unsigned NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `coinname` (`coinname`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=558 DEFAULT CHARSET=utf8 COMMENT='财务记录表';

-- ----------------------------
-- Records of movesay_finance_copy
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_footer`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_footer`;
CREATE TABLE `movesay_footer` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `img` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `remark` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movesay_footer
-- ----------------------------
INSERT INTO `movesay_footer` VALUES ('1', '1', '关于我们', '/Article/index/type/aboutus.html', '', '1', '', '1', '111', '0', '1');
INSERT INTO `movesay_footer` VALUES ('2', '1', '联系我们', '/Article/index/type/aboutus.html', '', '1', '', '1', '111', '0', '1');
INSERT INTO `movesay_footer` VALUES ('3', '1', '资质证明', '/Article/index/type/aboutus.html', '', '1', '', '1', '111', '0', '1');
INSERT INTO `movesay_footer` VALUES ('4', '1', '用户协议', '/Article/index/type/aboutus.html', '', '1', '', '1', '111', '0', '1');
INSERT INTO `movesay_footer` VALUES ('5', '1', '法律声明', '/Article/index/type/aboutus.html', '', '1', '', '1', '111', '0', '1');
INSERT INTO `movesay_footer` VALUES ('6', '1', '1', '/', 'footer_1.png', '2', '', '1', '111', '0', '1');
INSERT INTO `movesay_footer` VALUES ('7', '1', '1', 'http://www.szfw.org/', 'footer_2.png', '2', '', '1', '111', '0', '1');
INSERT INTO `movesay_footer` VALUES ('8', '1', '1', 'http://www.miibeian.gov.cn/', 'footer_3.png', '2', '', '1', '111', '0', '1');
INSERT INTO `movesay_footer` VALUES ('9', '1', '1', 'http://www.cyberpolice.cn/', 'footer_4.png', '2', '', '1', '111', '0', '1');

-- ----------------------------
-- Table structure for `movesay_huafei`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_huafei`;
CREATE TABLE `movesay_huafei` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `userid` int(11) unsigned NOT NULL,
  `moble` varchar(255) NOT NULL,
  `num` int(11) unsigned NOT NULL,
  `type` varchar(50) NOT NULL,
  `mum` decimal(20,8) NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movesay_huafei
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_huafei_coin`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_huafei_coin`;
CREATE TABLE `movesay_huafei_coin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `coinname` varchar(50) NOT NULL,
  `price` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of movesay_huafei_coin
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_huafei_type`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_huafei_type`;
CREATE TABLE `movesay_huafei_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of movesay_huafei_type
-- ----------------------------
INSERT INTO `movesay_huafei_type` VALUES ('1', '10', '10元话费充值', '1');
INSERT INTO `movesay_huafei_type` VALUES ('2', '20', '20元话费充值', '1');
INSERT INTO `movesay_huafei_type` VALUES ('3', '30', '30元话费充值', '1');
INSERT INTO `movesay_huafei_type` VALUES ('4', '50', '50元话费充值', '1');
INSERT INTO `movesay_huafei_type` VALUES ('5', '100', '100元话费充值', '1');
INSERT INTO `movesay_huafei_type` VALUES ('6', '300', '300元话费充值', '1');

-- ----------------------------
-- Table structure for `movesay_invit`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_invit`;
CREATE TABLE `movesay_invit` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `invit` int(11) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `num` decimal(20,8) unsigned NOT NULL,
  `mum` decimal(20,8) unsigned NOT NULL,
  `fee` decimal(20,8) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `invit` (`invit`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='推广奖励表';

-- ----------------------------
-- Records of movesay_invit
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_issue`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_issue`;
CREATE TABLE `movesay_issue` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `buycoin` varchar(50) NOT NULL,
  `num` bigint(20) unsigned NOT NULL,
  `deal` int(11) unsigned NOT NULL,
  `price` decimal(20,8) unsigned NOT NULL,
  `limit` int(11) unsigned NOT NULL,
  `time` varchar(255) NOT NULL,
  `tian` varchar(255) NOT NULL,
  `ci` varchar(255) NOT NULL,
  `jian` varchar(255) NOT NULL,
  `min` varchar(255) NOT NULL,
  `max` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `invit_coin` varchar(50) NOT NULL,
  `invit_1` varchar(50) NOT NULL,
  `invit_2` varchar(50) NOT NULL,
  `invit_3` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `image` varchar(100) NOT NULL,
  `tuijian` tinyint(1) NOT NULL DEFAULT '2',
  `paixu` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `name` (`name`),
  KEY `coinname` (`coinname`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='认购发行表';

-- ----------------------------
-- Records of movesay_issue
-- ----------------------------
INSERT INTO `movesay_issue` VALUES ('2', '羚羊币LYC众筹', 'ltc', 'cny', '10000000', '100', '0.60000000', '10000000', '2018-05-25 20:52:40', '30', '0', '0', '', '', '<h1 class=\"crowd_rule_t\" style=\"font-family:\'Microsoft YaHei\', Arial, Helvetica, sans-serif;color:#333333;font-size:16px;font-weight:normal;\">\r\n	众筹规则\r\n</h1>\r\n<div class=\"crowd_rule_con crowd_asch_con\" style=\"margin:0px;padding:0px;border:0px;font-family:\'Microsoft YaHei\', Arial, Helvetica, sans-serif;color:#333333;font-size:14px;\">\r\n	<div style=\"margin:0px;padding:0px;border:0px;\">\r\n		<div style=\"margin:0px;padding:0px;border:0px;\">\r\n			<span style=\"color:#FF0000;font-size:18px;\"> 众筹规则 羚羊币众筹说明<br />\r\n<br />\r\n1，LYC羚羊币采取众筹奖励机制，推荐新玩家参与众筹可获得奖励百分之五，奖励立即发放到账户。<br />\r\n<br />\r\n2，众筹的LYC羚羊币代币，将于开盘前一日晚上0点开启释放10%，之后每五天释放15%。<br />\r\n<br />\r\n<br />\r\n3，羚羊币（LYC）支持最小众筹单位为200枚，且每个用户只能众筹40000枚<br />\r\n<br />\r\n<br />\r\n4,，羚羊币（LYC）开盘时间待定，请关注众币网官方公告</span> \r\n		</div>\r\n	</div>\r\n</div>', 'cny', '10', '5', '3', '0', '1527252762', '0', '1', '594e9bf5545c5.png', '2', '1');
INSERT INTO `movesay_issue` VALUES ('3', '优WiFi - 去中心的无线营销节点', 'ltc', 'ndd', '10000000', '5200000', '0.35000000', '10000000', '2018-05-07 21:30:54', '21', '0', '0', '100', '10000000', '<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;font-size:14px;background-color:#FFFFFF;\">\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\"><span style=\"font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;font-weight:700;\"><span style=\"font-size:16px;color:#FF0000;\">温馨提示:</span></span><br />\r\n</span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\">加密货币和数字资产的价格会因为多种原因（包括政府干预、市场环境和投机行为等）出现不可预测的波动。购买数字货币或资产存在风险，收益或亏损都由用户自行承担，多比特交易平台对此不承担任何责任。</span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<br />\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\">正式众筹时间为2017年7月10日 15:00至2017年7月31日 15:00，<span style=\"font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;color:#FF0000;\"><span style=\"font-weight:700;\">并于7月8日下午16：00开启锁定投资</span></span>，敬请期待！</span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<br />\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<img src=\"http://www.26bi.com/Upload/article/595bce05689a2.png\" alt=\"\" />\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\"></span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;text-align:center;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';font-size:16px;color:#FF0000;\">（考虑到价格波动，具体兑换价格当天可能会略有调整）</span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';font-size:16px;\"><br />\r\n</span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';font-size:18px;\"><span style=\"font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;font-weight:700;\"><span style=\"color:#00B0F0;\">资金分配说明：</span></span></span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<br />\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\">本次总计代币量10亿UBC，公开发售50%，计划募集3500000CNY（或对等以太币），早期投资人占比10%，基金会保留25%，创业团队15%（分五年解禁）。本次认购如超标未能投上的将会退回到账户上。</span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\">优币官网：</span><a href=\"http://www.5uwifi.com/\">www.5uwifi.com</a>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<br />\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';font-size:16px;\"><br />\r\n</span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\"></span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;text-align:center;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;font-weight:700;\"><span style=\"font-family:微软雅黑, \'Microsoft YaHei\';font-size:18px;\">优WiFi是什么</span></span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\"><br />\r\n</span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\"></span>\r\n	</p>\r\n	<hr />\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<br />\r\n<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\"></span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\">优WiFi，基于云端的无线营销设备，让用户、商户和广告主互动起来。国内品牌为优WiFi，国外品牌为MobiPromo。</span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\"><br />\r\n</span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<img src=\"http://www.26bi.com/Upload/article/595bca20cbc8c.png\" alt=\"\" />\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<br />\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\">优WiFi营销节点遍布全球，目前已进入马耳他、美国、南非、马来西亚、孟加拉、印度尼西亚、缅甸、印度、菲律宾、英国、迪拜、香港、澳门等地。</span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<br />\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\">优WiFi的独特之处在于，它的互动方式不依赖于任何特定网站。只要用户连接优WiFi，就能收到用户需要的定制化信息，包括品牌广告、附近优惠券、交友信息、景点介绍、附近演出信息等。互动形式包括图片、视频、画中画、调查问卷等。</span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\"><br />\r\n</span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;text-align:center;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\"><img src=\"http://www.26bi.com/Upload/article/595bca38dedb9.png\" alt=\"\" /></span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<br />\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\">节点上的用户既是信息受众，也是信息传播者，我们可以与他们互动，也可以引导用户相互互动。商户安装优WiFi设备，即拥有了全天候营销团队，优WiFi一方面帮助广告主/商户提升营业额，另一方面让用户更惬意地享受生活。</span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<br />\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\">基于优WiFi互动的灵活性，我们可以逐步推出各种链接网内B与B之间、B与C之间、C与C之间的各种互动，如B与B之间互相推送广告，B与C之间在线活动设计，C与C之间直播或游戏环节的设计，这些都可以在优WiFi独特的技术平台之上搭建。</span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\"><br />\r\n</span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;text-align:center;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;font-size:18px;\"><span style=\"font-weight:700;\"><span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\">优WiFi系统概览</span></span></span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\"><br />\r\n</span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\"></span>\r\n	</p>\r\n	<hr />\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<br />\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;text-align:center;background-color:#FFFFFF;\">\r\n		<img src=\"http://www.26bi.com/Upload/article/595bca50ee1dd.png\" alt=\"\" />\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\"><br />\r\n</span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;font-size:18px;\"><span style=\"font-weight:700;\"><span style=\"font-family:微软雅黑, \'Microsoft YaHei\';color:#00B0F0;\">优WiFi区块链技术深度应用</span></span></span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<br />\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\">基于优WiFi在全球节点的分布，资金到位后将利用区块链技术对各节点进行升级改造，加大对区块链技术应用的投入，使各节点数据可追踪，可作为大型分布式任务处理的节点，未来使用区块链技术在视频分发、金融服务等方面做延伸。</span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<br />\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\">基于全球数以百万计的营销节点，利用区块链技术对商户进行管理，商户使用优币进行支付，用户在使用优WiFi的过程中参与互动获取积分/优币，进而使用优币兑换商户产品及服务。优WiFi的区块链技术使得所有节点数据可追溯，确保交易各方操作安全简单，参与各方回报清晰可信，可以确信，优WiFi产业链将成为数字货币应用的典型案例。</span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\"><br />\r\n</span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;text-align:center;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;font-weight:700;\"><span style=\"font-family:微软雅黑, \'Microsoft YaHei\';font-size:18px;\">团队介绍</span></span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\"><br />\r\n</span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\"></span>\r\n	</p>\r\n	<hr />\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<br />\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;text-align:center;background-color:#FFFFFF;\">\r\n		<img src=\"http://www.26bi.com/Upload/article/595bca6433324.png\" alt=\"\" />\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;text-align:center;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\">吴斌，男，项目创始人，清华大学电机系毕业。大学期间开始创业，对项目方向及风险有清醒认识，同时对搭建及培养创业团队、公司运营管理有成功的经验。</span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\"><br />\r\n</span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;text-align:center;background-color:#FFFFFF;\">\r\n		<img src=\"http://www.26bi.com/Upload/article/595bca75093c1.png\" alt=\"\" />\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;text-align:center;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\">Ola Johannes Lind，男，海外市场推广总监。国籍瑞典，在美国学习和工作，管理学学位，互联网及移动互联网的营销管理经验丰富。</span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\"><br />\r\n</span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;text-align:center;background-color:#FFFFFF;\">\r\n		<img src=\"http://www.26bi.com/Upload/article/595bca8451b6c.png\" alt=\"\" />\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;text-align:center;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\">刘吉东，男，CTO。从事软件系统研发工作，曾任BEA讲师、Oracle中国区首席技术分析师、三峡高科、清华紫光软件等公司顾问。主持开发过多个移动互联网商业项目。</span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\"><br />\r\n</span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;text-align:center;background-color:#FFFFFF;\">\r\n		<img src=\"http://www.26bi.com/Upload/article/595bca932f61b.png\" alt=\"\" />\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;text-align:center;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\">William Tait，男，产品总监。澳大利亚国籍，互联网产品设计与开发经验丰富。</span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<br />\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;text-align:center;background-color:#FFFFFF;\">\r\n		<img src=\"http://www.26bi.com/Upload/article/595bcaa52b912.png\" alt=\"\" />\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;text-align:center;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\">吴春花，女，COO。清华大学机械系毕业，运营管理、商务管理经验丰富，曾从事市场策划、广告类项目运营等工作，有很强的项目运营经验。</span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\"> </span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;text-align:center;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;font-size:18px;\"><span style=\"font-weight:700;\"><span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\">顾问团队</span></span></span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;font-size:18px;\"><span style=\"font-weight:700;\"><span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\"><br />\r\n</span></span></span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;font-size:18px;\"><span style=\"font-weight:700;\"><span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\"></span></span></span>\r\n	</p>\r\n	<hr />\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<br />\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;text-align:center;background-color:#FFFFFF;\">\r\n		<img src=\"http://www.26bi.com/Upload/article/595bcab460f90.png\" alt=\"\" />\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;text-align:center;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\">王彬生，男，微金融50人论坛执委、中国社会科学院研究生院特聘教授。</span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\"><br />\r\n</span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;text-align:center;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\"><img src=\"http://www.26bi.com/Upload/article/595bcac6d73a7.png\" alt=\"\" /></span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;text-align:center;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\">张海晖，男，区块链联合发展组织 秘书长。</span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\"><br />\r\n</span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;text-align:center;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\"><img src=\"http://www.26bi.com/Upload/article/595bcad923f00.png\" alt=\"\" /></span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;text-align:center;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\">二宝（郭宏才），男，天使投资人。</span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\"></span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;text-align:center;background-color:#FFFFFF;\">\r\n		<img src=\"http://www.26bi.com/Upload/article/595bcaedc7f83.png\" alt=\"\" />\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;text-align:center;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\">金忠，男，大成律师事务所合伙人。</span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\"><br />\r\n</span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;text-align:center;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\"><img src=\"http://www.26bi.com/Upload/article/595bcaf52b912.png\" alt=\"\" /></span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;text-align:center;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\">初壮，男，中信信睿宝CEO。</span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\"><br />\r\n</span>\r\n	</p>\r\n	<p style=\"font-family:Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', sans-serif, 宋体;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';color:#FF0000;\">风险提示：建议您本人认真阅读白皮书，投资炒币是早期并具有高风险的事物，投资和参与需谨慎。</span>\r\n	</p>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', 'ndd', '3', '2', '1', '0', '1525757617', '0', '0', '595b0a8c853b2.png', '2', '0');
INSERT INTO `movesay_issue` VALUES ('4', 'wwwww', 'btc', 'rmb', '100000', '0', '0.10000000', '100', '2018-05-08 13:36:50', '2', '0', '0', '100', '10000', '', 'rmb', '', '', '', '0', '1525758320', '0', '0', '', '1', '0');

-- ----------------------------
-- Table structure for `movesay_issue_log`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_issue_log`;
CREATE TABLE `movesay_issue_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `buycoin` varchar(50) NOT NULL,
  `price` decimal(20,8) unsigned NOT NULL,
  `num` int(20) unsigned NOT NULL,
  `mum` decimal(20,8) unsigned NOT NULL,
  `ci` int(11) unsigned NOT NULL,
  `jian` varchar(255) NOT NULL,
  `unlock` int(11) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='认购记录表';

-- ----------------------------
-- Records of movesay_issue_log
-- ----------------------------
INSERT INTO `movesay_issue_log` VALUES ('1', '6', '羚羊币LYC众筹', 'lyc', 'cny', '0.30000000', '100', '30.00000000', '0', '0', '1', '0', '1498324834', '1498324834', '0');
INSERT INTO `movesay_issue_log` VALUES ('2', '6', '羚羊币LYC众筹', 'lyc', 'cny', '0.30000000', '1000', '300.00000000', '0', '0', '1', '0', '1498324882', '1498324882', '0');
INSERT INTO `movesay_issue_log` VALUES ('3', '6', '羚羊币LYC众筹', 'lyc', 'cny', '0.30000000', '9000', '2700.00000000', '0', '0', '1', '0', '1498324920', '1498324920', '0');
INSERT INTO `movesay_issue_log` VALUES ('4', '6', '羚羊币LYC众筹', 'lyc', 'cny', '0.30000000', '40000', '12000.00000000', '0', '0', '1', '0', '1498325093', '1498325093', '0');
INSERT INTO `movesay_issue_log` VALUES ('5', '5', '优WiFi - 去中心的无线营销节点', 'ubc', 'cny', '0.35000000', '130000', '45500.00000000', '0', '0', '1', '0', '1500471216', '1500471216', '0');
INSERT INTO `movesay_issue_log` VALUES ('6', '2', '羚羊币LYC众筹', 'ltc', 'cny', '0.60000000', '100', '60.00000000', '0', '0', '1', '0', '1527252773', '1527252773', '0');

-- ----------------------------
-- Table structure for `movesay_link`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_link`;
CREATE TABLE `movesay_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `img` varchar(200) NOT NULL,
  `mytx` varchar(200) NOT NULL,
  `remark` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COMMENT='常用银行地址';

-- ----------------------------
-- Records of movesay_link
-- ----------------------------
INSERT INTO `movesay_link` VALUES ('10', '虚拟币信息中文网', '虚拟币信息中文网', 'http://www.chinabtcltc.com/', '594116ee57b8c.png', '', '', '0', '1452503344', '1480225439', '1');
INSERT INTO `movesay_link` VALUES ('13', '币行', '币行', 'https://www.okcoin.cn', '59411573763d4.png', '', '', '0', '1452503422', '1480225269', '1');
INSERT INTO `movesay_link` VALUES ('18', '比特币资讯网', '比特币资讯网', 'http://www.bitcoin86.com/', '5941165c9c62e.png', '', '', '0', '1497110400', '1497110400', '1');
INSERT INTO `movesay_link` VALUES ('19', '币看网', '币看网', 'http://bitkan.com/price', '59411631c2888.png', '', '', '0', '1497110400', '1497110400', '1');
INSERT INTO `movesay_link` VALUES ('20', '玩币族', '玩币族', 'http://www.wanbizu.com/', '593d123fca29a.png', '', '', '0', '1497110400', '1497110400', '1');
INSERT INTO `movesay_link` VALUES ('21', '元宝网', '元宝网', 'http://www.ybcoin.com/', '594115e557b8c.png', '', '', '0', '1497110400', '1497110400', '1');
INSERT INTO `movesay_link` VALUES ('22', '比特币100', '比特币100', 'https://www.btc100.com/', '593d1360aba52.png', '', '', '0', '1497110400', '1497110400', '1');
INSERT INTO `movesay_link` VALUES ('24', 'P网', 'P网', 'https://poloniex.com/', '594118c2079cf.png', '', '', '0', '1433692800', '1433865600', '1');
INSERT INTO `movesay_link` VALUES ('25', 'B网', 'B网', 'https://bittrex.com/', '5941187166fb0.png', '', '', '0', '1497110400', '1497110400', '1');
INSERT INTO `movesay_link` VALUES ('27', 'sosobtc', 'sosobtc', 'https://www.sosobtc.com/', '5941179826217.png', '', '', '0', '1497110400', '1497110400', '1');
INSERT INTO `movesay_link` VALUES ('28', '比特币咨讯网', '比特币咨讯网', 'http://www.bitcoin86.com/', '59410e227a0dd.png', '', '', '0', '1465833600', '1465833600', '1');
INSERT INTO `movesay_link` VALUES ('29', '聚币网', '聚币网', 'https://www.jubi.com/', '59410e79f41fd.png', '', '', '0', '1497435737', '1497435738', '1');
INSERT INTO `movesay_link` VALUES ('30', '比特儿', '比特儿', 'https://bter.com/', '59410ecc5f59e.png', '', '', '0', '1465899864', '1465833600', '1');
INSERT INTO `movesay_link` VALUES ('31', '中国比特币', '中国比特币', 'https://www.chbtc.com/', '59410f19cdfa3.png', '', '', '0', '1434384000', '1434384000', '1');
INSERT INTO `movesay_link` VALUES ('32', '比特币中国', '比特币中国', 'https://www.btcchina.com/', '59410f69cdfa3.png', '', '', '0', '1434556800', '1434556800', '1');
INSERT INTO `movesay_link` VALUES ('33', '比特币之家', '比特币之家', 'http://www.btc798.com/', '5941100cd1cac.png', '', '', '0', '1434643200', '1434643200', '1');
INSERT INTO `movesay_link` VALUES ('34', '元宝网', '元宝网', 'https://www.yuanbao.com/index', '5941105dbeb7f.png', '', '', '0', '1434038400', '1434038400', '1');
INSERT INTO `movesay_link` VALUES ('36', '币久网', '币久网', 'https://www.btc9.com/Index', '594111357dde6.png', '', '', '0', '1434384000', '1434384000', '1');
INSERT INTO `movesay_link` VALUES ('37', '巴比特资讯', '巴比特资讯', 'http://www.8btc.com/', '594111dd89501.png', '', '', '0', '1497369600', '1497283200', '1');

-- ----------------------------
-- Table structure for `movesay_log`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_log`;
CREATE TABLE `movesay_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(20,8) unsigned NOT NULL,
  `num` int(20) unsigned NOT NULL,
  `mum` decimal(20,8) unsigned NOT NULL,
  `unlock` int(11) unsigned NOT NULL,
  `ci` int(11) unsigned NOT NULL,
  `recycle` int(11) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`),
  KEY `coinname` (`coinname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movesay_log
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_market`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_market`;
CREATE TABLE `movesay_market` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `round` varchar(255) NOT NULL,
  `fee_buy` varchar(255) NOT NULL,
  `fee_sell` varchar(255) NOT NULL,
  `buy_min` varchar(255) NOT NULL,
  `buy_max` varchar(255) NOT NULL,
  `sell_min` varchar(255) NOT NULL,
  `sell_max` varchar(255) NOT NULL,
  `trade_min` varchar(255) NOT NULL,
  `trade_max` varchar(255) NOT NULL,
  `invit_buy` varchar(50) NOT NULL,
  `invit_sell` varchar(50) NOT NULL,
  `invit_1` varchar(50) NOT NULL,
  `invit_2` varchar(50) NOT NULL,
  `invit_3` varchar(50) NOT NULL,
  `zhang` varchar(255) NOT NULL,
  `die` varchar(255) NOT NULL,
  `hou_price` varchar(255) NOT NULL,
  `tendency` varchar(1000) NOT NULL,
  `trade` int(11) unsigned NOT NULL,
  `new_price` decimal(20,8) unsigned NOT NULL,
  `buy_price` decimal(20,8) unsigned NOT NULL,
  `sell_price` decimal(20,8) unsigned NOT NULL,
  `min_price` decimal(20,8) unsigned NOT NULL,
  `max_price` decimal(20,8) unsigned NOT NULL,
  `volume` decimal(20,8) unsigned NOT NULL,
  `change` decimal(20,8) NOT NULL,
  `api_min` decimal(20,8) unsigned NOT NULL,
  `api_max` decimal(20,8) unsigned NOT NULL,
  `begintrade` varchar(20) NOT NULL,
  `endtrade` varchar(20) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `jiaoyiqu` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='行情配置表';

-- ----------------------------
-- Records of movesay_market
-- ----------------------------
INSERT INTO `movesay_market` VALUES ('19', 'ltc_cny', '4', '', '', '0.00000000000001', '10000', '1', '10000', '0.1', '10000', '1', '1', '', '', '', '', '', '200.00000000', '[[1526997166,0],[1527011566,0],[1527025966,0],[1527040366,0],[1527054766,0],[1527069166,0],[1527083566,0],[1527097966,0],[1527112366,0],[1527126766,0],[1527141166,0],[1527155566,0],[1527169966,0],[1527184366,0],[1527198766,0],[1527213166,0],[1527227566,0],[1527241966,0],[1527256366,0]]', '1', '200.00000000', '0.00000000', '230.00000000', '200.00000000', '200.00000000', '1.00000000', '0.00000000', '0.00000000', '0.00000000', '00:00:00', '23:59:00', '0', '0', '0', '1', '0');
INSERT INTO `movesay_market` VALUES ('20', 'btc_cny', '6', '', '', '0.00000000000001', '10000', '1', '10000', '1', '10000', '1', '1', '', '', '', '', '', '122.00000000', '[[1526997166,0],[1527011566,0],[1527025966,0],[1527040366,0],[1527054766,0],[1527069166,0],[1527083566,0],[1527097966,0],[1527112366,0],[1527126766,0],[1527141166,0],[1527155566,0],[1527169966,0],[1527184366,0],[1527198766,0],[1527213166,0],[1527227566,0],[1527241966,0],[1527256366,0]]', '1', '122.00000000', '111.00000000', '122.00000000', '111.00000000', '122.00000000', '2.00000000', '0.00000000', '0.00000000', '0.00000000', '00:00:00', '23:59:00', '0', '0', '0', '1', '0');

-- ----------------------------
-- Table structure for `movesay_market_json`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_market_json`;
CREATE TABLE `movesay_market_json` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `data` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=168 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of movesay_market_json
-- ----------------------------
INSERT INTO `movesay_market_json` VALUES ('167', 'btc_cny', '', '', '0', '1505923199', '0', '0');

-- ----------------------------
-- Table structure for `movesay_menu`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_menu`;
CREATE TABLE `movesay_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文档ID',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序（同级有效）',
  `url` char(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `hide` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否隐藏',
  `tip` varchar(255) NOT NULL DEFAULT '' COMMENT '提示',
  `group` varchar(50) DEFAULT '' COMMENT '分组',
  `is_dev` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否仅开发者模式可见',
  `ico_name` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=452 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of movesay_menu
-- ----------------------------
INSERT INTO `movesay_menu` VALUES ('1', '系统', '0', '1', 'Index/index', '0', '', '', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('2', '内容', '0', '1', 'Article/index', '0', '', '', '0', 'list-alt');
INSERT INTO `movesay_menu` VALUES ('3', '用户', '0', '1', 'User/index', '0', '', '', '0', 'user');
INSERT INTO `movesay_menu` VALUES ('4', '财务', '0', '1', 'Finance/index', '0', '', '', '0', 'th-list');
INSERT INTO `movesay_menu` VALUES ('5', '交易', '0', '1', 'Trade/index', '0', '', '', '0', 'stats');
INSERT INTO `movesay_menu` VALUES ('6', '应用', '0', '1', 'Game/index', '0', '', '', '0', 'globe');
INSERT INTO `movesay_menu` VALUES ('7', '设置', '0', '1', 'Config/index', '0', '', '', '0', 'cog');
INSERT INTO `movesay_menu` VALUES ('8', '运营', '0', '1', 'Operate/index', '0', '', '', '0', 'share');
INSERT INTO `movesay_menu` VALUES ('9', '工具', '0', '1', 'Tools/index', '0', '', '', '0', 'wrench');
INSERT INTO `movesay_menu` VALUES ('10', '扩展', '0', '1', 'Cloud/index', '0', '', '', '0', 'tasks');
INSERT INTO `movesay_menu` VALUES ('11', '系统概览', '1', '1', 'Index/index', '0', '', '系统', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('12', '市场统计', '1', '3', 'Index/market', '0', '', '系统', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('13', '文章管理', '2', '1', 'Article/index', '0', '', '内容', '0', 'list-alt');
INSERT INTO `movesay_menu` VALUES ('14', '编辑添加', '13', '1', 'Article/edit', '1', '', '内容', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('15', '修改状态', '13', '100', 'Article/status', '1', '', '内容', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('16', '上传图片', '13', '2', 'Article/images', '1', '', '内容管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('18', '编辑', '17', '2', 'Adver/edit', '1', '', '内容管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('19', '修改', '17', '2', 'Adver/status', '1', '', '内容管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('21', '编辑', '20', '3', 'Chat/edit', '1', '', '聊天管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('22', '修改', '20', '3', 'Chat/status', '1', '', '聊天管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('23', '提示文字', '2', '1', 'Text/index', '1', '', '提示管理', '0', 'exclamation-sign');
INSERT INTO `movesay_menu` VALUES ('24', '编辑', '23', '1', 'Text/edit', '1', '', '提示管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('25', '修改', '23', '1', 'Text/status', '1', '', '提示管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('26', '用户管理', '3', '1', 'User/index', '0', '', '用户', '0', 'user');
INSERT INTO `movesay_menu` VALUES ('32', '确认转出', '26', '8', 'User/myzc_qr', '1', '', '用户管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('33', '用户配置', '3', '1', 'User/config', '1', '', '前台用户管理', '0', 'cog');
INSERT INTO `movesay_menu` VALUES ('34', '编辑', '33', '2', 'User/index_edit', '1', '', '用户管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('35', '修改', '33', '2', 'User/index_status', '1', '', '用户管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('37', '财产修改', '26', '3', 'Usercoin/edit', '1', '', '用户管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('39', '新增用户组', '38', '0', 'AuthManager/createGroup', '1', '', '权限管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('40', '编辑用户组', '38', '0', 'AuthManager/editgroup', '1', '', '权限管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('41', '更新用户组', '38', '0', 'AuthManager/writeGroup', '1', '', '权限管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('42', '改变状态', '38', '0', 'AuthManager/changeStatus', '1', '', '权限管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('43', '访问授权', '38', '0', 'AuthManager/access', '1', '', '权限管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('44', '分类授权', '38', '0', 'AuthManager/category', '1', '', '权限管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('45', '成员授权', '38', '0', 'AuthManager/user', '1', '', '权限管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('46', '成员列表授权', '38', '0', 'AuthManager/tree', '1', '', '权限管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('47', '用户组', '38', '0', 'AuthManager/group', '1', '', '权限管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('48', '添加到用户组', '38', '0', 'AuthManager/addToGroup', '1', '', '权限管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('49', '用户组移除', '38', '0', 'AuthManager/removeFromGroup', '1', '', '权限管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('50', '分类添加到用户组', '38', '0', 'AuthManager/addToCategory', '1', '', '权限管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('51', '模型添加到用户组', '38', '0', 'AuthManager/addToModel', '1', '', '权限管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('53', '配置', '52', '1', 'Finance/config', '1', '', '', '0', '0');
INSERT INTO `movesay_menu` VALUES ('55', '类型', '52', '1', 'Finance/type', '1', '', '', '0', '0');
INSERT INTO `movesay_menu` VALUES ('56', '状态修改', '52', '1', 'Finance/type_status', '1', '', '', '0', '0');
INSERT INTO `movesay_menu` VALUES ('60', '修改', '57', '3', 'Mycz/status', '1', '', '充值管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('61', '状态修改', '57', '3', 'Mycztype/status', '1', '', '充值管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('64', '状态修改', '62', '5', 'Mytx/status', '1', '', '提现管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('65', '取消', '62', '5', 'Mytx/excel', '1', '', '提现管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('66', '导入excel', '9', '5', 'Mytx/exportExcel', '1', '', '提现管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('68', '委托管理', '5', '1', 'Trade/index', '0', '', '交易', '0', 'stats');
INSERT INTO `movesay_menu` VALUES ('69', '成交记录', '5', '2', 'Trade/log', '0', '', '交易', '0', 'stats');
INSERT INTO `movesay_menu` VALUES ('70', '修改状态', '68', '0', 'Trade/status', '1', '', '交易管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('71', '撤销挂单', '68', '0', 'Trade/chexiao', '1', '', '交易管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('74', '认购编辑', '72', '2', 'Issue/edit', '1', '', '认购管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('75', '认购修改', '72', '2', 'Issue/status', '1', '', '认购管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('79', '基本配置', '7', '1', 'Config/index', '0', '', '设置', '0', 'cog');
INSERT INTO `movesay_menu` VALUES ('180', '备份数据库', '9', '2', 'Tools/dataExport', '0', '', '工具', '0', 'wrench');
INSERT INTO `movesay_menu` VALUES ('81', '客服配置', '7', '3', 'Config/contact', '0', '', '设置', '0', 'cog');
INSERT INTO `movesay_menu` VALUES ('82', '银行配置', '79', '4', 'Config/bank', '0', '', '网站配置', '0', 'credit-card');
INSERT INTO `movesay_menu` VALUES ('83', '编辑', '82', '4', 'Config/bank_edit', '1', '', '网站配置', '0', '0');
INSERT INTO `movesay_menu` VALUES ('85', '编辑', '84', '4', 'Coin/edit', '0', '', '网站配置', '0', '0');
INSERT INTO `movesay_menu` VALUES ('87', '状态修改', '84', '4', 'Coin/status', '1', '', '网站配置', '0', '0');
INSERT INTO `movesay_menu` VALUES ('89', '编辑市场', '88', '4', 'Market/edit', '0', '', '', '0', '0');
INSERT INTO `movesay_menu` VALUES ('91', '状态修改', '88', '4', 'Config/market_add', '1', '', '', '0', '0');
INSERT INTO `movesay_menu` VALUES ('92', '图形验证码', '95', '7', 'Verify/code', '1', '', '网站配置', '0', '0');
INSERT INTO `movesay_menu` VALUES ('93', '手机验证码', '95', '7', 'Verify/mobile', '1', '', '网站配置', '0', '0');
INSERT INTO `movesay_menu` VALUES ('94', '邮件验证码', '95', '7', 'Verify/email', '1', '', '网站配置', '0', '0');
INSERT INTO `movesay_menu` VALUES ('95', '其他配置', '7', '6', 'Config/qita', '0', '', '设置', '0', 'cog');
INSERT INTO `movesay_menu` VALUES ('97', '推广配置', '8', '2', 'Invit/config', '1', '', '推广管理', '0', 'cog');
INSERT INTO `movesay_menu` VALUES ('101', '其他模块调用', '9', '4', 'Tools/invoke', '1', '', '其他', '0', '0');
INSERT INTO `movesay_menu` VALUES ('102', '优化表', '9', '4', 'Tools/optimize', '1', '', '其他', '0', '0');
INSERT INTO `movesay_menu` VALUES ('103', '修复表', '9', '4', 'Tools/repair', '1', '', '其他', '0', '0');
INSERT INTO `movesay_menu` VALUES ('104', '删除备份文件', '9', '4', 'Tools/del', '1', '', '其他', '0', '0');
INSERT INTO `movesay_menu` VALUES ('105', '备份数据库', '9', '4', 'Tools/export', '1', '', '其他', '0', '');
INSERT INTO `movesay_menu` VALUES ('106', '还原数据库', '9', '4', 'Tools/import', '1', '', '其他', '0', '0');
INSERT INTO `movesay_menu` VALUES ('107', '导出数据库', '9', '4', 'Tools/excel', '1', '', '其他', '0', '0');
INSERT INTO `movesay_menu` VALUES ('108', '导出Excel', '9', '4', 'Tools/exportExcel', '1', '', '其他', '0', '0');
INSERT INTO `movesay_menu` VALUES ('109', '导入Excel', '9', '4', 'Tools/importExecl', '1', '', '其他', '0', '0');
INSERT INTO `movesay_menu` VALUES ('115', '图片', '111', '0', 'Shop/images', '0', '', '云购商城', '0', '0');
INSERT INTO `movesay_menu` VALUES ('116', '菜单管理', '7', '5', 'Menu/index', '1', '', '开发组', '0', 'list');
INSERT INTO `movesay_menu` VALUES ('117', '排序', '116', '5', 'Menu/sort', '0', '', '开发组', '0', '0');
INSERT INTO `movesay_menu` VALUES ('118', '添加', '116', '5', 'Menu/add', '0', '', '开发组', '0', '0');
INSERT INTO `movesay_menu` VALUES ('119', '编辑', '116', '5', 'Menu/edit', '0', '', '开发组', '0', '0');
INSERT INTO `movesay_menu` VALUES ('120', '删除', '116', '5', 'Menu/del', '0', '', '开发组', '0', '0');
INSERT INTO `movesay_menu` VALUES ('121', '是否隐藏', '116', '5', 'Menu/toogleHide', '0', '', '开发组', '0', '0');
INSERT INTO `movesay_menu` VALUES ('122', '是否开发', '116', '5', 'Menu/toogleDev', '0', '', '开发组', '0', '0');
INSERT INTO `movesay_menu` VALUES ('123', '导入文件', '7', '5', 'Menu/importFile', '1', '', '开发组', '0', 'log-in');
INSERT INTO `movesay_menu` VALUES ('124', '导入', '7', '5', 'Menu/import', '1', '', '开发组', '0', 'log-in');
INSERT INTO `movesay_menu` VALUES ('127', '用户登录', '3', '0', 'Login/index', '1', '', '用户配置', '0', '0');
INSERT INTO `movesay_menu` VALUES ('128', '用户退出', '3', '0', 'Login/loginout', '1', '', '用户配置', '0', '0');
INSERT INTO `movesay_menu` VALUES ('129', '修改管理员密码', '3', '0', 'User/setpwd', '1', '', '用户', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('131', '用户详情', '3', '4', 'User/detail', '1', '', '前台用户管理', '0', 'time');
INSERT INTO `movesay_menu` VALUES ('132', '后台用户详情', '3', '1', 'AdminUser/detail', '1', '', '后台用户管理', '0', 'th-list');
INSERT INTO `movesay_menu` VALUES ('133', '后台用户状态', '3', '1', 'AdminUser/status', '1', '', '后台用户管理', '0', 'th-list');
INSERT INTO `movesay_menu` VALUES ('134', '后台用户新增', '3', '1', 'AdminUser/add', '1', '', '后台用户管理', '0', 'th-list');
INSERT INTO `movesay_menu` VALUES ('135', '后台用户编辑', '3', '1', 'AdminUser/edit', '1', '', '后台用户管理', '0', 'th-list');
INSERT INTO `movesay_menu` VALUES ('138', '编辑', '2', '1', 'Articletype/edit', '1', '', '内容管理', '0', 'list-alt');
INSERT INTO `movesay_menu` VALUES ('140', '编辑', '139', '2', 'Link/edit', '1', '', '内容管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('141', '修改', '139', '2', 'Link/status', '1', '', '内容管理', '0', '0');
INSERT INTO `movesay_menu` VALUES ('155', '服务器队列', '9', '3', 'Tools/queue', '0', '', '工具', '0', 'wrench');
INSERT INTO `movesay_menu` VALUES ('156', '钱包检查', '9', '3', 'Tools/qianbao', '1', '', '工具', '0', 'wrench');
INSERT INTO `movesay_menu` VALUES ('157', '币种统计', '1', '2', 'Index/coin', '0', '', '系统', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('163', '提示文字', '7', '5', 'Config/text', '0', '', '设置', '0', 'cog');
INSERT INTO `movesay_menu` VALUES ('220', '币种评论', '5', '4', 'Trade/comment', '0', '', '交易', '0', 'stats');
INSERT INTO `movesay_menu` VALUES ('278', '文章类型', '2', '2', 'Article/type', '0', '', '内容', '0', 'list-alt');
INSERT INTO `movesay_menu` VALUES ('279', '广告管理', '2', '3', 'Article/adver', '0', '', '内容', '0', 'list-alt');
INSERT INTO `movesay_menu` VALUES ('280', '友情链接', '2', '4', 'Article/link', '0', '', '内容', '0', 'list-alt');
INSERT INTO `movesay_menu` VALUES ('282', '登陆日志', '3', '4', 'User/log', '0', '', '用户', '0', 'user');
INSERT INTO `movesay_menu` VALUES ('283', '用户钱包', '3', '5', 'User/qianbao', '0', '', '用户', '0', 'user');
INSERT INTO `movesay_menu` VALUES ('284', '提现地址', '3', '6', 'User/bank', '0', '', '用户', '0', 'user');
INSERT INTO `movesay_menu` VALUES ('285', '用户财产', '3', '7', 'User/coin', '0', '', '用户', '0', 'user');
INSERT INTO `movesay_menu` VALUES ('286', '联系地址', '3', '8', 'User/goods', '0', '', '用户', '0', 'user');
INSERT INTO `movesay_menu` VALUES ('287', '交易聊天', '5', '3', 'Trade/chat', '0', '', '交易', '0', 'stats');
INSERT INTO `movesay_menu` VALUES ('288', '交易市场', '5', '5', 'Trade/market', '0', '', '交易', '0', 'stats');
INSERT INTO `movesay_menu` VALUES ('289', '交易推荐', '5', '6', 'Trade/invit', '0', '', '交易', '0', 'stats');
INSERT INTO `movesay_menu` VALUES ('290', '财务明细', '4', '1', 'Finance/index', '0', '', '财务', '0', 'th-list');
INSERT INTO `movesay_menu` VALUES ('291', '人民币充值', '4', '2', 'Finance/mycz', '0', '', '财务', '0', 'th-list');
INSERT INTO `movesay_menu` VALUES ('292', '人民币充值方式', '4', '3', 'Finance/myczType', '0', '', '财务', '0', 'th-list');
INSERT INTO `movesay_menu` VALUES ('293', '人民币提现', '4', '4', 'Finance/mytx', '0', '', '财务', '0', 'th-list');
INSERT INTO `movesay_menu` VALUES ('294', '人民币提现配置', '4', '5', 'Finance/mytxConfig', '0', '', '财务', '0', 'th-list');
INSERT INTO `movesay_menu` VALUES ('295', '虚拟币转入', '4', '6', 'Finance/myzr', '0', '', '财务', '0', 'th-list');
INSERT INTO `movesay_menu` VALUES ('296', '虚拟币转出', '4', '7', 'Finance/myzc', '0', '', '财务', '0', 'th-list');
INSERT INTO `movesay_menu` VALUES ('297', '修改状态', '291', '100', 'Finance/myczStatus', '1', '', '财务', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('298', '确认到账', '291', '100', 'Finance/myczQueren', '1', '', '财务', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('299', '编辑添加', '292', '1', 'Finance/myczTypeEdit', '1', '', '财务', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('300', '状态修改', '292', '2', 'Finance/myczTypeStatus', '1', '', '财务', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('301', '上传图片', '292', '2', 'Finance/myczTypeImage', '1', '', '财务', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('302', '修改状态', '293', '2', 'Finance/mytxStatus', '1', '', '财务', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('303', '导出选中', '293', '3', 'Finance/mytxExcel', '1', '', '财务', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('304', '正在处理', '293', '4', 'Finance/mytxChuli', '1', '', '财务', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('305', '撤销提现', '293', '5', 'Finance/mytxChexiao', '1', '', '财务', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('306', '确认提现', '293', '6', 'Finance/mytxQueren', '1', '', '财务', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('307', '确认转出', '296', '6', 'Finance/myzcQueren', '1', '', '财务', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('309', '清理缓存', '9', '1', 'Tools/index', '0', '', '工具', '0', 'wrench');
INSERT INTO `movesay_menu` VALUES ('310', '备份数据库', '9', '2', 'Tools/dataExport', '1', '', '工具', '0', 'wrench');
INSERT INTO `movesay_menu` VALUES ('311', '还原数据库', '9', '2', 'Tools/dataImport', '1', '', '工具', '0', 'wrench');
INSERT INTO `movesay_menu` VALUES ('312', '管理员管理', '3', '2', 'User/admin', '0', '', '用户', '0', 'user');
INSERT INTO `movesay_menu` VALUES ('313', '权限列表', '3', '3', 'User/auth', '0', '', '用户', '0', 'user');
INSERT INTO `movesay_menu` VALUES ('314', '编辑添加', '26', '1', 'User/edit', '1', '', '用户', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('315', '修改状态', '26', '1', 'User/status', '1', '', '用户', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('316', '编辑添加', '312', '1', 'User/adminEdit', '1', '', '用户', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('317', '修改状态', '312', '1', 'User/adminStatus', '1', '', '用户', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('318', '编辑添加', '313', '1', 'User/authEdit', '1', '', '用户', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('319', '修改状态', '313', '1', 'User/authStatus', '1', '', '用户', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('320', '重新初始化权限', '313', '1', 'User/authStart', '1', '', '用户', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('321', '编辑添加', '282', '1', 'User/logEdit', '1', '', '用户', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('322', '修改状态', '282', '1', 'User/logStatus', '1', '', '用户', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('323', '编辑添加', '283', '1', 'User/qianbaoEdit', '1', '', '用户', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('324', '修改状态', '283', '1', 'User/qianbaoStatus', '1', '', '用户', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('325', '编辑添加', '284', '1', 'User/bankEdit', '1', '', '用户', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('326', '修改状态', '284', '1', 'User/bankStatus', '1', '', '用户', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('327', '编辑添加', '285', '1', 'User/coinEdit', '1', '', '用户', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('328', '财产统计', '285', '1', 'User/coinLog', '1', '', '用户', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('329', '编辑添加', '286', '1', 'User/goodsEdit', '1', '', '用户', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('330', '修改状态', '286', '1', 'User/goodsStatus', '1', '', '用户', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('331', '编辑添加', '278', '1', 'Article/typeEdit', '1', '', '内容', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('332', '修改状态', '278', '100', 'Article/typeStatus', '1', '', '内容', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('333', '编辑添加', '280', '1', 'Article/linkEdit', '1', '', '内容', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('334', '修改状态', '280', '100', 'Article/linkStatus', '1', '', '内容', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('335', '编辑添加', '279', '1', 'Article/adverEdit', '1', '', '内容', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('336', '修改状态', '279', '100', 'Article/adverStatus', '1', '', '内容', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('337', '上传图片', '279', '100', 'Article/adverImage', '1', '', '内容', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('375', '客服代码', '10', '5', 'Cloud/kefu', '1', '', '扩展', '0', 'tasks');
INSERT INTO `movesay_menu` VALUES ('376', '使用', '375', '5', 'Cloud/kefuUp', '1', '', '扩展', '0', 'tasks');
INSERT INTO `movesay_menu` VALUES ('377', '访问授权', '313', '1', 'User/authAccess', '1', '', '用户', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('378', '访问授权修改', '313', '1', 'User/authAccessUp', '1', '', '用户', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('379', '成员授权', '313', '1', 'User/authUser', '1', '', '用户', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('380', '成员授权增加', '313', '1', 'User/authUserAdd', '1', '', '用户', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('381', '成员授权解除', '313', '1', 'User/authUserRemove', '1', '', '用户', '0', 'home');
INSERT INTO `movesay_menu` VALUES ('382', '币种配置', '7', '4', 'Config/coin', '0', '', '设置', '0', 'cog');
INSERT INTO `movesay_menu` VALUES ('383', '推广奖励', '8', '1', 'Operate/index', '0', '', '', '0', 'share');
INSERT INTO `movesay_menu` VALUES ('384', 'APP配置', '8', '1', 'App/config', '1', '', 'APP管理', '0', 'time');
INSERT INTO `movesay_menu` VALUES ('385', 'APP等级', '8', '2', 'App/vip_config_list', '1', '', 'APP管理', '0', 'time');
INSERT INTO `movesay_menu` VALUES ('386', 'WAP广告板块', '8', '3', 'Admin/App/ads_list/block_id/1', '0', '', 'WAP管理', '0', 'time');
INSERT INTO `movesay_menu` VALUES ('387', 'APP广告用户', '8', '4', 'App/ads_user', '1', '', 'APP管理', '0', 'time');
INSERT INTO `movesay_menu` VALUES ('388', '导航配置', '7', '7', 'Config/daohang', '0', '', '设置', '0', 'cog');
INSERT INTO `movesay_menu` VALUES ('418', '主题模板', '10', '4', 'Cloud/theme', '0', '', '扩展', '0', 'tasks');
INSERT INTO `movesay_menu` VALUES ('425', '商品管理', '6', '1', 'Shop/index', '0', '', '商城管理', '0', 'globe');
INSERT INTO `movesay_menu` VALUES ('426', '商城配置', '6', '2', 'Shop/config', '0', '', '商城管理', '0', 'globe');
INSERT INTO `movesay_menu` VALUES ('427', '商品类型', '6', '3', 'Shop/type', '0', '', '商城管理', '0', 'globe');
INSERT INTO `movesay_menu` VALUES ('428', '付款方式', '6', '4', 'Shop/coin', '0', '', '商城管理', '0', 'globe');
INSERT INTO `movesay_menu` VALUES ('429', '购物记录', '6', '5', 'Shop/log', '0', '', '商城管理', '0', 'globe');
INSERT INTO `movesay_menu` VALUES ('430', '收货地址', '6', '6', 'Shop/goods', '0', '', '商城管理', '0', 'globe');
INSERT INTO `movesay_menu` VALUES ('433', '分红管理', '6', '3', 'Fenhong/index', '0', '', '分红管理', '0', 'globe');
INSERT INTO `movesay_menu` VALUES ('434', '分红记录', '6', '5', 'Fenhong/log', '0', '', '分红管理', '0', 'globe');
INSERT INTO `movesay_menu` VALUES ('435', '充值记录', '6', '1', 'Huafei/index', '1', '', '话费充值', '0', 'globe');
INSERT INTO `movesay_menu` VALUES ('436', '充值配置', '6', '1', 'Huafei/config', '1', '', '话费充值', '0', 'globe');
INSERT INTO `movesay_menu` VALUES ('437', '充值金额', '6', '3', 'Huafei/type', '1', '', '话费充值', '0', 'globe');
INSERT INTO `movesay_menu` VALUES ('438', '付款方式', '6', '4', 'Huafei/coin', '1', '', '话费充值', '0', 'globe');
INSERT INTO `movesay_menu` VALUES ('439', '投票记录', '6', '1', 'Vote/index', '0', '', '新币投票', '0', 'globe');
INSERT INTO `movesay_menu` VALUES ('440', '投票类型', '6', '1', 'Vote/type', '0', '', '新币投票', '0', 'globe');
INSERT INTO `movesay_menu` VALUES ('441', '理财管理', '6', '1', 'Money/index', '1', '', '理财管理', '0', 'globe');
INSERT INTO `movesay_menu` VALUES ('442', '理财日志', '6', '2', 'Money/log', '1', '', '理财管理', '0', 'globe');
INSERT INTO `movesay_menu` VALUES ('443', '理财明细', '6', '3', 'Money/fee', '1', '', '理财管理', '0', 'globe');
INSERT INTO `movesay_menu` VALUES ('448', '认购管理', '6', '1', 'Issue/index', '0', '', '认购管理', '0', 'globe');
INSERT INTO `movesay_menu` VALUES ('449', '认购记录', '6', '1', 'Issue/log', '0', '', '认购管理', '0', 'globe');
INSERT INTO `movesay_menu` VALUES ('80', '短信配置', '7', '2', 'Config/moble', '0', '', '设置', '0', 'cog');
INSERT INTO `movesay_menu` VALUES ('451', '应用管理', '10', '3', 'Cloud/game', '1', '', '扩展', '0', 'tasks');

-- ----------------------------
-- Table structure for `movesay_message`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_message`;
CREATE TABLE `movesay_message` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL,
  `type` varchar(50) NOT NULL,
  `remark` varchar(50) NOT NULL,
  `addip` varchar(200) NOT NULL,
  `addr` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movesay_message
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_message_log`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_message_log`;
CREATE TABLE `movesay_message_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL,
  `type` varchar(50) NOT NULL,
  `remark` varchar(50) NOT NULL,
  `addip` varchar(200) NOT NULL,
  `addr` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movesay_message_log
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_money`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_money`;
CREATE TABLE `movesay_money` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `num` bigint(20) unsigned NOT NULL DEFAULT '0',
  `deal` int(11) unsigned NOT NULL DEFAULT '0',
  `tian` int(11) unsigned NOT NULL,
  `fee` int(11) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='投资理财表';

-- ----------------------------
-- Records of movesay_money
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_money_fee`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_money_fee`;
CREATE TABLE `movesay_money_fee` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `money_id` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `num` int(6) NOT NULL,
  `content` varchar(255) NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movesay_money_fee
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_money_log`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_money_log`;
CREATE TABLE `movesay_money_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `num` int(11) unsigned NOT NULL,
  `fee` decimal(20,8) unsigned NOT NULL,
  `feea` decimal(20,8) unsigned NOT NULL,
  `tian` int(11) unsigned NOT NULL,
  `tiana` int(11) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  `money_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='理财记录表';

-- ----------------------------
-- Records of movesay_money_log
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_mycz`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_mycz`;
CREATE TABLE `movesay_mycz` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `num` float(11,2) unsigned NOT NULL,
  `mum` float(11,2) unsigned NOT NULL,
  `type` varchar(50) NOT NULL,
  `tradeno` varchar(50) NOT NULL,
  `remark` varchar(250) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COMMENT='充值记录表';

-- ----------------------------
-- Records of movesay_mycz
-- ----------------------------
INSERT INTO `movesay_mycz` VALUES ('84', '1', '100.13', '0.00', 'bank', 'BM963542', '', '0', '1525844635', '0', '3');

-- ----------------------------
-- Table structure for `movesay_mycz_invit`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_mycz_invit`;
CREATE TABLE `movesay_mycz_invit` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `userid` int(11) unsigned NOT NULL COMMENT '用户id',
  `invitid` int(11) unsigned NOT NULL COMMENT '推荐人id',
  `num` decimal(20,2) unsigned NOT NULL COMMENT '操作金额',
  `fee` decimal(20,8) unsigned NOT NULL COMMENT '赠送金额',
  `coinname` varchar(50) NOT NULL COMMENT '赠送币种',
  `mum` decimal(20,8) unsigned NOT NULL COMMENT '到账金额',
  `remark` varchar(250) NOT NULL COMMENT '备注',
  `sort` int(11) unsigned NOT NULL COMMENT '排序',
  `addtime` int(11) unsigned NOT NULL COMMENT '添加时间',
  `endtime` int(11) unsigned NOT NULL COMMENT '编辑时间',
  `status` tinyint(4) NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='充值赠送';

-- ----------------------------
-- Records of movesay_mycz_invit
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_mycz_type`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_mycz_type`;
CREATE TABLE `movesay_mycz_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `max` varchar(200) NOT NULL COMMENT '名称',
  `min` varchar(200) NOT NULL COMMENT '名称',
  `kaihu` varchar(200) NOT NULL COMMENT '名称',
  `truename` varchar(200) NOT NULL COMMENT '名称',
  `name` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `img` varchar(50) NOT NULL,
  `extra` varchar(50) NOT NULL,
  `remark` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='充值类型';

-- ----------------------------
-- Records of movesay_mycz_type
-- ----------------------------
INSERT INTO `movesay_mycz_type` VALUES ('1', '500000', '100', '支付宝', '石保海', 'alipay', '支付宝扫码支付', '', 'duobite88@163.com', '', '5954b348058fd.jpg', '', '需要在联系方式里面设置支付宝账号', '0', '0', '0', '1');
INSERT INTO `movesay_mycz_type` VALUES ('2', '', '100', '天津建设分行', '石保海', 'weixin', '网银转账支付', '', '6217000066004286519', '123456', '5953bc33b8e0e.png', '', '需要在联系方式里面设置微信账号', '0', '0', '0', '0');
INSERT INTO `movesay_mycz_type` VALUES ('3', '100000000', '100', '天津市建设银行分行', '石保海', 'bank', '网银转账支付', '', '6217000066004286519', '', '595236399750d.png', '', '需要在联系方式里面按照格式天数收款银行账号', '0', '0', '0', '1');

-- ----------------------------
-- Table structure for `movesay_mytx`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_mytx`;
CREATE TABLE `movesay_mytx` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `num` int(11) unsigned NOT NULL,
  `fee` decimal(20,2) unsigned NOT NULL,
  `mum` decimal(20,2) unsigned NOT NULL,
  `truename` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `bank` varchar(250) NOT NULL,
  `bankprov` varchar(50) NOT NULL,
  `bankcity` varchar(50) NOT NULL,
  `bankaddr` varchar(50) NOT NULL,
  `bankcard` varchar(200) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='提现记录表';

-- ----------------------------
-- Records of movesay_mytx
-- ----------------------------
INSERT INTO `movesay_mytx` VALUES ('2', '22', '100', '0.30', '99.70', '测试', '111', '农业银行', '山东', '聊城', '1111', '6217001820008493383', '0', '1510674773', '0', '0');

-- ----------------------------
-- Table structure for `movesay_myzc`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_myzc`;
CREATE TABLE `movesay_myzc` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `username` varchar(200) NOT NULL,
  `coinname` varchar(200) NOT NULL,
  `txid` varchar(200) NOT NULL,
  `num` decimal(20,8) unsigned NOT NULL,
  `fee` decimal(20,8) unsigned NOT NULL,
  `mum` decimal(20,8) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`),
  KEY `coinname` (`coinname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movesay_myzc
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_myzc_fee`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_myzc_fee`;
CREATE TABLE `movesay_myzc_fee` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `username` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `coinname` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `txid` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `fee` decimal(20,8) NOT NULL,
  `num` decimal(20,8) unsigned NOT NULL,
  `mum` decimal(20,8) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of movesay_myzc_fee
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_myzr`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_myzr`;
CREATE TABLE `movesay_myzr` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `username` varchar(200) NOT NULL,
  `coinname` varchar(200) NOT NULL,
  `txid` varchar(200) NOT NULL,
  `num` decimal(20,8) unsigned NOT NULL,
  `mum` decimal(20,8) unsigned NOT NULL,
  `fee` decimal(20,8) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`),
  KEY `coinname` (`coinname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movesay_myzr
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_pool`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_pool`;
CREATE TABLE `movesay_pool` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `ico` varchar(50) NOT NULL,
  `price` decimal(20,8) unsigned NOT NULL,
  `tian` int(11) unsigned NOT NULL,
  `limit` varchar(50) NOT NULL,
  `power` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='矿机类型表';

-- ----------------------------
-- Records of movesay_pool
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_pool_log`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_pool_log`;
CREATE TABLE `movesay_pool_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `ico` varchar(50) NOT NULL,
  `price` decimal(20,8) unsigned NOT NULL,
  `tian` int(11) unsigned NOT NULL,
  `limit` varchar(50) NOT NULL,
  `power` varchar(50) NOT NULL,
  `num` int(11) unsigned NOT NULL,
  `use` int(11) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='矿机管理';

-- ----------------------------
-- Records of movesay_pool_log
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_prompt`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_prompt`;
CREATE TABLE `movesay_prompt` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `img` varchar(200) NOT NULL,
  `mytx` varchar(200) NOT NULL,
  `remark` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movesay_prompt
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_shop`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_shop`;
CREATE TABLE `movesay_shop` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `coinlist` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `buycoin` varchar(255) NOT NULL DEFAULT 'cny',
  `price` decimal(20,2) unsigned NOT NULL DEFAULT '0.00',
  `num` decimal(20,0) unsigned NOT NULL DEFAULT '0',
  `deal` decimal(20,0) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `max` varchar(255) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `market_price` decimal(20,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '市场价',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `status` (`status`),
  KEY `deal` (`deal`),
  KEY `price` (`price`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='商城商品表';

-- ----------------------------
-- Records of movesay_shop
-- ----------------------------
INSERT INTO `movesay_shop` VALUES ('8', '全网通4g无线路由器 移动电信联通直插sim卡三网3g插卡 随身wifi', '', '/Upload/shop/594a8d7fc5173.jpg', 'dzc', 'cny', '100.00', '1200', '875', '<div style=\"text-align:center;\">\r\n	<a><img align=\"absmiddle\" src=\"https://img.alicdn.com/imgextra/i2/1757674797/TB2owaCur4npuFjSZFmXXXl4FXa_!!1757674797.jpg\" class=\"img-ks-lazyload\" /><img align=\"absmiddle\" src=\"https://img.alicdn.com/imgextra/i3/1757674797/TB2wckPqYRkpuFjSspmXXc.9XXa_!!1757674797.jpg\" class=\"img-ks-lazyload\" /><img align=\"absmiddle\" src=\"https://img.alicdn.com/imgextra/i2/1757674797/TB24SZTq88lpuFjSspaXXXJKpXa_!!1757674797.jpg\" class=\"img-ks-lazyload\" /><img align=\"absmiddle\" src=\"https://img.alicdn.com/imgextra/i4/1757674797/TB2QIVDuCVmpuFjSZFFXXcZApXa_!!1757674797.jpg\" class=\"img-ks-lazyload\" /><img align=\"absmiddle\" src=\"https://img.alicdn.com/imgextra/i4/1757674797/TB23T1dustnpuFjSZFvXXbcTpXa_!!1757674797.jpg\" class=\"img-ks-lazyload\" /><img align=\"absmiddle\" src=\"https://img.alicdn.com/imgextra/i4/1757674797/TB2SAUwq84lpuFjy1zjXXcAKpXa_!!1757674797.jpg\" class=\"img-ks-lazyload\" /><img align=\"absmiddle\" src=\"https://img.alicdn.com/imgextra/i3/1757674797/TB2kKn3q9BjpuFjSsplXXa5MVXa_!!1757674797.jpg\" class=\"img-ks-lazyload\" /><img align=\"absmiddle\" src=\"https://img.alicdn.com/imgextra/i1/1757674797/TB2yaCjuC0mpuFjSZPiXXbssVXa_!!1757674797.jpg\" class=\"img-ks-lazyload\" /><img align=\"absmiddle\" src=\"https://img.alicdn.com/imgextra/i2/1757674797/TB27TrIq8NkpuFjy0FaXXbRCVXa_!!1757674797.jpg\" class=\"img-ks-lazyload\" /><img align=\"absmiddle\" src=\"https://img.alicdn.com/imgextra/i1/1757674797/TB2o5rTqYBkpuFjy1zkXXbSpFXa_!!1757674797.jpg\" class=\"img-ks-lazyload\" /><img align=\"absmiddle\" src=\"https://img.alicdn.com/imgextra/i2/1757674797/TB2PRR_uEhnpuFjSZFEXXX0PFXa_!!1757674797.jpg\" class=\"img-ks-lazyload\" /><img align=\"absmiddle\" src=\"https://img.alicdn.com/imgextra/i3/1757674797/TB2TqGnuCFmpuFjSZFrXXayOXXa_!!1757674797.jpg\" class=\"img-ks-lazyload\" /></a><span style=\"line-height:1.5;\"></span>\r\n</div>', '', '4', '1498058176', '1498058176', '1', '255.00');
INSERT INTO `movesay_shop` VALUES ('5', 'Apple MacBook 新款12英寸笔记本电脑 玫瑰金 Intel Core M5 8G+512G', '', '/Upload/shop/594a87556d5a4.jpg', 'dzc', 'cny', '8000.00', '499', '152', '<div style=\"text-align:center;\">\r\n	<br />\r\n</div>\r\n<div style=\"text-align:center;\">\r\n	<br />\r\n</div>\r\n<div style=\"text-align:center;\">\r\n	<img alt=\"\" id=\"00fbe017f3954288b43ccbdf346cf1a1 \" class=\"\" src=\"https://img30.360buyimg.com/popWaterMark/jfs/t3079/55/6161330437/222587/61ac481f/589d695eNc8969690.jpg\" /><img alt=\"\" id=\"a799691871f745269b4151aec52338e8 \" class=\"\" src=\"https://img30.360buyimg.com/popWaterMark/jfs/t3049/343/5501797445/1462033/588020cb/587356d3N06c4c2b2.jpg\" />\r\n</div>', '', '1', '1498056560', '1498056560', '1', '10200.22');
INSERT INTO `movesay_shop` VALUES ('6', 'Apple iMac 27英寸一体机（四核Core i5 处理器/8GB内存/1TB Fusion Drive/RP570显卡/5K屏 MNE92CH/A）', '', '/Upload/shop/594a8894a692b.png', 'dzc', 'cny', '12400.00', '300', '121', '<div style=\"text-align:center;\">\r\n	<img width=\"750\" height=\"842\" alt=\"\" class=\"\" src=\"https://img13.360buyimg.com/cms/jfs/t6460/345/302688864/173795/53f1cc5/593d0e0dNb648e06c.jpg\" /><span style=\"line-height:1.5;\"> </span><img width=\"750\" height=\"933\" alt=\"\" class=\"\" src=\"https://img13.360buyimg.com/cms/jfs/t5803/252/3530807541/135255/cb5368bb/593d0e07Nb0cf7fc2.jpg\" /><span style=\"line-height:1.5;\"> </span><img width=\"750\" height=\"706\" alt=\"\" class=\"\" src=\"https://img13.360buyimg.com/cms/jfs/t6073/136/2218318828/86873/7701464e/593d0e14N7460679e.jpg\" /><span style=\"line-height:1.5;\"> </span><img width=\"750\" height=\"812\" alt=\"\" class=\"\" src=\"https://img14.360buyimg.com/cms/jfs/t6484/70/291607053/128593/8f425631/593d0e17N650b19d5.jpg\" /><span style=\"line-height:1.5;\"> </span><img width=\"750\" height=\"1355\" alt=\"\" class=\"\" src=\"https://img13.360buyimg.com/cms/jfs/t5659/257/3440941835/173340/771538a5/593d0e1aN93f54644.jpg\" /><span style=\"line-height:1.5;\"> </span><img width=\"750\" height=\"787\" alt=\"\" class=\"\" src=\"https://img11.360buyimg.com/cms/jfs/t5650/62/3497605743/144139/ad219a22/593d0e1dNa2c55472.jpg\" /><span style=\"line-height:1.5;\"> </span><img width=\"750\" height=\"751\" alt=\"\" class=\"\" src=\"https://img14.360buyimg.com/cms/jfs/t6046/186/2219410439/71112/eee60cca/593d0e20Ndd064045.jpg\" /><span style=\"line-height:1.5;\"> </span><img width=\"750\" height=\"929\" alt=\"\" class=\"\" src=\"https://img13.360buyimg.com/cms/jfs/t6658/316/291440514/125161/98db5504/593d0e23Ne0d998a5.jpg\" />\r\n</div>\r\n<div style=\"text-align:center;\">\r\n	<img width=\"750\" height=\"875\" alt=\"\" class=\"\" src=\"https://img11.360buyimg.com/cms/jfs/t6343/205/286550543/264141/b42b820c/593d0e25N7e5a3986.jpg\" />\r\n</div>', '', '2', '1498056920', '1498056920', '1', '14530.00');
INSERT INTO `movesay_shop` VALUES ('7', 'Apple iPhone 7 Plus (A1661) 128G 黑色 移动联通电信4G手机', '', '/Upload/shop/594a8acc0dfc3.jpg', 'dzc', 'cny', '6000.00', '500', '368', '<div style=\"text-align:center;\">\r\n	<span style=\"line-height:1.5;\"></span><img alt=\"\" id=\"f6a9a9518e33456b812daf1c00c63834 \" class=\"\" src=\"https://img30.360buyimg.com/popWaterMark/jfs/t3292/30/4768230111/183978/11cad8a1/585c8d4eN8ea09fd1.jpg\" /><span style=\"line-height:1.5;color:#666666;font-family:\'microsoft yahei\';background-color:#FFFFFF;\"> </span><span style=\"line-height:1.5;\"> </span><img alt=\"\" id=\"5e3e76baf549497e8ffb9c556637f09a \" class=\"\" src=\"https://img30.360buyimg.com/popWaterMark/jfs/t3895/67/778722904/79349/a01672ba/585c8d50N7d1894ff.jpg\" /><span style=\"line-height:1.5;color:#666666;font-family:\'microsoft yahei\';background-color:#FFFFFF;\"> </span>\r\n</div>\r\n<div style=\"text-align:center;\">\r\n	<img alt=\"\" id=\"d72aa482ca53492e8afa50db3c5ef506 \" class=\"\" src=\"https://img30.360buyimg.com/popWaterMark/jfs/t3838/91/2460327314/80707/2a438a5d/585c8d51N1bed7310.jpg\" /><span style=\"line-height:1.5;color:#666666;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">  </span>\r\n</div>\r\n<div style=\"text-align:center;\">\r\n	<img alt=\"\" id=\"aa72d2ea34044b81926a84681b7da4d4 \" class=\"\" src=\"https://img30.360buyimg.com/popWaterMark/jfs/t3178/184/4913735687/65167/4c2882d1/585c9166N812f4aac.jpg\" /><span style=\"line-height:1.5;color:#666666;font-family:\'microsoft yahei\';background-color:#FFFFFF;\"> </span>\r\n</div>\r\n<div style=\"text-align:center;\">\r\n	<img alt=\"\" id=\"63073f9811764441a4a44ee45ab0372e \" class=\"\" src=\"https://img30.360buyimg.com/popWaterMark/jfs/t3907/174/754041960/140151/d9389dda/585c916aN1205a28f.jpg\" /><span style=\"line-height:1.5;color:#666666;font-family:\'microsoft yahei\';background-color:#FFFFFF;\"></span><img alt=\"\" id=\"63aded6804dc4ad0868e3a62c2f647a7 \" class=\"\" src=\"https://img30.360buyimg.com/popWaterMark/jfs/t3832/4/2474483495/75741/c027ade1/585c8d54N919a467e.jpg\" /><span style=\"line-height:1.5;color:#666666;font-family:\'microsoft yahei\';background-color:#FFFFFF;\"> </span>\r\n</div>\r\n<div style=\"text-align:center;\">\r\n	<img alt=\"\" id=\"211b94d60dc24b719b50f5def63959fa \" class=\"\" src=\"https://img30.360buyimg.com/popWaterMark/jfs/t3940/21/789643287/102336/ad12671e/585c8d56N48aebbfe.jpg\" /><span style=\"line-height:1.5;color:#666666;font-family:\'microsoft yahei\';background-color:#FFFFFF;\"> </span>\r\n</div>\r\n<div style=\"text-align:center;\">\r\n	<img alt=\"\" id=\"080697aab9454e2eb45e754969238a1c \" class=\"\" src=\"https://img30.360buyimg.com/popWaterMark/jfs/t3889/80/789414003/95909/fe6b0524/585c8d57Ncb94dc04.jpg\" />\r\n</div>\r\n<span style=\"line-height:1.5;\"></span>', '', '3', '1498057501', '1498057501', '1', '6488.00');

-- ----------------------------
-- Table structure for `movesay_shop_addr`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_shop_addr`;
CREATE TABLE `movesay_shop_addr` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `truename` varchar(50) NOT NULL DEFAULT '0',
  `moble` varchar(500) NOT NULL,
  `name` varchar(500) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movesay_shop_addr
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_shop_coin`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_shop_coin`;
CREATE TABLE `movesay_shop_coin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `shopid` int(11) unsigned NOT NULL COMMENT '商品id',
  `cny` varchar(50) NOT NULL COMMENT '人民币',
  `qlc` varchar(200) NOT NULL,
  `tsc` varchar(200) NOT NULL,
  `qkc` varchar(200) NOT NULL,
  `ttc` varchar(200) NOT NULL,
  `gsc` varchar(200) NOT NULL,
  `mile` varchar(200) NOT NULL,
  `ltc` varchar(200) NOT NULL,
  `btc` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shopid` (`shopid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='商品付款方式表';

-- ----------------------------
-- Records of movesay_shop_coin
-- ----------------------------
INSERT INTO `movesay_shop_coin` VALUES ('5', '5', '', '', '', '', '', '', '', '', '');
INSERT INTO `movesay_shop_coin` VALUES ('6', '6', '', '', '', '', '', '', '', '', '');
INSERT INTO `movesay_shop_coin` VALUES ('7', '7', '', '', '', '', '', '', '', '', '');
INSERT INTO `movesay_shop_coin` VALUES ('8', '8', '', '', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for `movesay_shop_log`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_shop_log`;
CREATE TABLE `movesay_shop_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) NOT NULL,
  `shopid` varchar(50) NOT NULL,
  `price` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000',
  `coinname` varchar(50) NOT NULL DEFAULT '0.00',
  `num` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000',
  `mum` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000',
  `addr` varchar(50) NOT NULL DEFAULT '0.0000',
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `xuyao` decimal(20,8) unsigned NOT NULL COMMENT '价',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='购物记录表';

-- ----------------------------
-- Records of movesay_shop_log
-- ----------------------------
INSERT INTO `movesay_shop_log` VALUES ('1', '6', '1', '8888.00000000', 'cny', '1.00000000', '8888.00000000', '的额|13187249117|得到', '0', '1498021665', '0', '2', '8888.00000000');
INSERT INTO `movesay_shop_log` VALUES ('2', '6', '2', '4500.00000000', 'cny', '1.00000000', '4500.00000000', '的额|13187249117|得到', '0', '1498021711', '0', '2', '4500.00000000');
INSERT INTO `movesay_shop_log` VALUES ('3', '5', '5', '8000.00000000', 'cny', '1.00000000', '8000.00000000', '吴先生|18675646546|白云区', '0', '1498057768', '0', '1', '8000.00000000');

-- ----------------------------
-- Table structure for `movesay_shop_type`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_shop_type`;
CREATE TABLE `movesay_shop_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `remark` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商品分类';

-- ----------------------------
-- Records of movesay_shop_type
-- ----------------------------
INSERT INTO `movesay_shop_type` VALUES ('1', 'bjp', '保健品', '保健品', '1', '1475942400', '1475942400', '1');
INSERT INTO `movesay_shop_type` VALUES ('2', 'ryp', '日用品', '日用品', '2', '1476115200', '1476115200', '1');
INSERT INTO `movesay_shop_type` VALUES ('3', 'dzc', '电子产品', '电子产品', '1', '1498055821', '1498055821', '1');

-- ----------------------------
-- Table structure for `movesay_text`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_text`;
CREATE TABLE `movesay_text` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movesay_text
-- ----------------------------
INSERT INTO `movesay_text` VALUES ('1', 'game_vote', '37', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>37请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1469733741', '0', '0');
INSERT INTO `movesay_text` VALUES ('2', 'finance_index', '36财务中心', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span><span style=\"color:#CC33E5;\">财务中心</span><span style=\"color:#CC33E5;\"></span></span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\"><span style=\"color:#EE33EE;\"></span></span>', '0', '1475325266', '0', '1');
INSERT INTO `movesay_text` VALUES ('3', 'finance_myzr', '34土豪币钱包地址', '<span style=\"color:#CC33E5;line-height:21px;background-color:#FFFFFF;\"><span style=\"color:#CC33E5;\"><span style=\"color:#CC33E5;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;line-height:normal;background-color:#FFFFFF;\">土豪币钱包地址</span></span></span>', '0', '1475325312', '0', '1');
INSERT INTO `movesay_text` VALUES ('4', 'finance_myzc', '33转出虚拟币', '<p>\r\n	<span style=\"color:#CC33E5;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;font-size:14px;line-height:21px;background-color:#FFFFFF;\">转出说明：</span> \r\n</p>\r\n<p>\r\n	<span style=\"color:#333333;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;font-size:20px;line-height:21px;background-color:#FFFFFF;\"><span style=\"font-size:14px;color:#CC33E5;\">1：为了安全，转出是由人工</span><span style=\"font-size:14px;color:#CC33E5;\">处理，您提交后我们会在短时间内为你处理</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"color:#CC33E5;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;font-size:14px;line-height:21px;background-color:#FFFFFF;\">2：为了加快转币速度，我们会为每次转币支付网络费，但由于网络的不确定性，部分转币仍会较慢，请耐心等待</span> \r\n</p>\r\n<p>\r\n	<span style=\"color:#CC33E5;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;font-size:12px;line-height:21px;background-color:#FFFFFF;\"><span style=\"font-size:14px;color:#CC33E5;\">3：转出的服务费为每次</span><span class=\"coin-feerate\" style=\"font-weight:700;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;color:#CC33E5;line-height:24px;font-size:14px;background-color:#FFFFFF;\">1.00%</span></span>\r\n</p>\r\n<p>\r\n	<span style=\"color:#CC33E5;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;font-size:12px;line-height:21px;background-color:#FFFFFF;\"><span class=\"coin-feerate\" style=\"font-weight:700;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;color:#333333;line-height:24px;background-color:#FFFFFF;\"><span style=\"color:#333333;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;line-height:24px;background-color:#FFFFFF;\"><span style=\"font-size:14px;color:#CC33E5;\">4：转出</span></span></span></span><span style=\"font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;line-height:24px;font-weight:700;font-size:14px;color:#CC33E5;background-color:#FFFFFF;\">虚拟币</span><span style=\"font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;line-height:24px;font-weight:700;color:#CC33E5;font-size:14px;background-color:#FFFFFF;\">的单次不低于</span><span class=\"coin-min\" style=\"font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;line-height:24px;font-weight:700;color:#CC33E5;font-size:14px;background-color:#FFFFFF;\">10</span><span style=\"font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;line-height:24px;font-weight:700;color:#CC33E5;font-size:14px;background-color:#FFFFFF;\">，不高于</span><span class=\"coin-limit\" style=\"font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;line-height:24px;font-weight:700;color:#CC33E5;font-size:14px;background-color:#FFFFFF;\">300000</span><span style=\"font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;line-height:24px;font-weight:700;font-size:14px;color:#CC33E5;background-color:#FFFFFF;\"></span>\r\n</p>', '0', '1475325321', '0', '1');
INSERT INTO `movesay_text` VALUES ('5', 'finance_mywt', '32委托管理', '<span style=\"color:#CC33E5;\"><span style=\"line-height:21px;color:#CC33E5;background-color:#FFFFFF;\">请在此查询您的委托记录</span></span>', '0', '1475325496', '0', '0');
INSERT INTO `movesay_text` VALUES ('6', 'finance_mycj', '30成交查询', '<span style=\"color:#9933E5;font-size:14px;\"><span style=\"line-height:21px;color:#9933E5;font-size:14px;background-color:#FFFFFF;\">查询全部买入卖出的成交记录</span></span>', '0', '1475325508', '0', '1');
INSERT INTO `movesay_text` VALUES ('7', 'finance_mycz', '29人民币充值', '<span style=\"color:#9933E5;line-height:21px;\"><span style=\"color:#9933E5;\"><span style=\"color:#9933E5;font-family:\'Microsoft YaHei\';font-size:14px;line-height:34px;\">只允许使用本人的支付宝进行</span></span></span><span style=\"color:#0096E0;line-height:21px;\"><span><span style=\"color:#FF0D00;font-family:\'Microsoft YaHei\';font-size:14px;line-height:34px;\"><span style=\"color:#9933E5;\"></span><span style=\"color:#9933E5;\">转账充值，请确保汇款人姓名与帐号注册的身份证姓名一致</span></span></span></span><span style=\"color:#9933E5;font-family:\'Microsoft YaHei\';font-size:14px;line-height:34px;\">。充值限额100至50000，充值到账时间为每天早上：09点至11点 &nbsp;-下午16点至18点，请提前做好充值准备</span>', '0', '1475325515', '0', '1');
INSERT INTO `movesay_text` VALUES ('8', 'user_index', '28安全中心', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span><span style=\"color:#CC33E5;line-height:21px;background-color:#FFFFFF;\">请在安全中心邦定您的手机跟支付宝等</span></span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\"><span style=\"color:#EE33EE;\"></span></span>', '0', '1475325658', '0', '1');
INSERT INTO `movesay_text` VALUES ('9', 'finance_mytx', '27人民币提现', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span> \r\n<h3 style=\"font-family:\'Microsoft YaHei\';font-weight:500;font-size:24px;background-color:#FFFFFF;\">\r\n	<span style=\"color:#9933E5;\">提现须知</span> \r\n</h3>\r\n<p style=\"color:#999999;font-family:\'Microsoft YaHei\';font-size:14px;background-color:#FFFFFF;\">\r\n	1. 提现手续费率1％，每笔提现最低收费2元 。\r\n</p>\r\n<p style=\"color:#999999;font-family:\'Microsoft YaHei\';font-size:14px;background-color:#FFFFFF;\">\r\n	2. 单笔提现限额100元——50000元。\r\n</p>\r\n<p style=\"color:#999999;font-family:\'Microsoft YaHei\';font-size:14px;background-color:#FFFFFF;\">\r\n	3. 人民币提现12小时内到帐，在已汇出12小时后 仍未收到款项，请联系客服。\r\n</p>\r\n</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\"><span style=\"color:#EE33EE;\"></span></span>', '0', '1475325679', '0', '1');
INSERT INTO `movesay_text` VALUES ('10', 'user_moble', '26手机绑定', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span> \r\n<h1 style=\"font-weight:normal;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;font-size:20px;color:#333333;background-color:#FFFFFF;\">\r\n	<span style=\"color:#9933E5;\">请绑定您的手机方便进行充值与提现</span> \r\n</h1>\r\n</span></span>', '0', '1475351892', '0', '1');
INSERT INTO `movesay_text` VALUES ('11', 'finance_mytj', '25推荐用户', '<span style=\"color:#9933E5;line-height:21px;font-size:14px;background-color:#FFFFFF;\"><span style=\"color:#9933E5;font-size:14px;\"><span style=\"color:#9933E5;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;line-height:30.8px;font-size:14px;background-color:#FFFFFF;\">这是您的专用邀请码：<span style=\"color:#666666;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;font-size:14px;line-height:normal;background-color:#FFFFFF;\">奖励下线金额三级分红:一代0.3% 二代0.2% 三代0.1</span></span></span></span>', '0', '1475352280', '0', '1');
INSERT INTO `movesay_text` VALUES ('12', 'finance_mywd', '24我的推荐', '<span style=\"color:#CC33E5;\"><span style=\"line-height:21px;color:#CC33E5;background-color:#FFFFFF;\">查询自己下家推荐的人员信息</span></span>', '0', '1475352284', '0', '1');
INSERT INTO `movesay_text` VALUES ('13', 'finance_myjp', '23我的奖品', '<span><span style=\"line-height:21px;color:#CC33E5;background-color:#FFFFFF;\">下级充值奖励查看</span></span><span style=\"color:#CC33E5;\"></span>', '0', '1475352285', '0', '1');
INSERT INTO `movesay_text` VALUES ('14', 'game_issue', '22认购中心', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span><span style=\"color:#CC33E5;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;line-height:30px;background-color:#FFFFFF;\">土豪币众筹时间：</span><span style=\"font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;color:#CC33E5;line-height:30px;background-color:#FFFFFF;\">12</span><span style=\"color:#CC33E5;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;line-height:30px;background-color:#FFFFFF;\">月</span><span style=\"font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;color:#CC33E5;line-height:30px;background-color:#FFFFFF;\">12</span><span style=\"color:#CC33E5;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;line-height:30px;background-color:#FFFFFF;\">日</span><span style=\"font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;color:#CC33E5;line-height:30px;background-color:#FFFFFF;\">20:00</span><span style=\"color:#CC33E5;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;line-height:30px;background-color:#FFFFFF;\">至</span><span style=\"font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;color:#CC33E5;line-height:30px;background-color:#FFFFFF;\">12</span><span style=\"color:#CC33E5;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;line-height:30px;background-color:#FFFFFF;\">月</span><span style=\"font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;color:#CC33E5;line-height:30px;background-color:#FFFFFF;\">15</span><span style=\"color:#CC33E5;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;line-height:30px;background-color:#FFFFFF;\">日</span><span style=\"font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;color:#CC33E5;line-height:30px;background-color:#FFFFFF;\">22:00</span><span style=\"color:#CC33E5;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;line-height:30px;background-color:#FFFFFF;\">共四天</span></span></span><span style=\"color:#0096E0;line-height:21px;\"><span><span style=\"color:#E53333;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;line-height:30px;\"><span style=\"font-size:16px;color:#E53333;\">（限购总量200W币）</span></span></span></span>', '0', '1475352288', '0', '1');
INSERT INTO `movesay_text` VALUES ('15', 'game_issue_log', '21认购记录', '<span><span style=\"line-height:21px;background-color:#FFFFFF;\">查询您的认购数量记录</span></span>', '0', '1475352293', '0', '1');
INSERT INTO `movesay_text` VALUES ('16', 'game_fenhong', '20', '<br />', '0', '1475352294', '0', '0');
INSERT INTO `movesay_text` VALUES ('17', 'game_fenhong_log', '19分红记录', '<span><span style=\"font-size:14px;color:#9933E5;\">持有</span><span style=\"color:#9933E5;font-size:14px;\">分红币</span><span style=\"font-size:14px;color:#9933E5;\">（</span><span style=\"font-size:14px;color:#9933E5;\">THC</span><span style=\"font-size:14px;color:#9933E5;\">）每周六分红为：平台交易</span><span style=\"font-size:14px;color:#9933E5;\">THC</span><span style=\"font-size:14px;color:#9933E5;\">币成交额收入的</span><span style=\"font-size:14px;color:#9933E5;\">0.5%.</span><span style=\"font-size:14px;color:#9933E5;\">每天分红时间10：00至14：00官方会发放到个人</span></span><span><span style=\"font-size:14px;\"></span><span style=\"font-size:14px;\"></span><span style=\"font-size:14px;\"></span><span style=\"font-size:14px;\"></span><span style=\"font-size:14px;\"></span><span style=\"font-size:14px;\"></span><span style=\"font-size:14px;\"></span><span style=\"font-size:14px;\"></span><span style=\"font-size:14px;\"></span><span style=\"font-size:14px;color:#9933E5;\"><span>账户</span></span></span>', '0', '1475352296', '0', '1');
INSERT INTO `movesay_text` VALUES ('18', 'game_money', '18', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>18请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1475352297', '0', '0');
INSERT INTO `movesay_text` VALUES ('19', 'game_money_log', '17', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>17请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1475352298', '0', '0');
INSERT INTO `movesay_text` VALUES ('20', 'user_paypassword', '16修改交易密码', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span> \r\n<h1 style=\"font-weight:normal;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;font-size:20px;color:#333333;background-color:#FFFFFF;\">\r\n	<span style=\"color:#9933E5;\">请在下面修改您的交易密码</span> \r\n</h1>\r\n</span></span>', '0', '1475352694', '0', '1');
INSERT INTO `movesay_text` VALUES ('21', 'user_password', '69', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1475352695', '0', '0');
INSERT INTO `movesay_text` VALUES ('22', 'user_nameauth', '15实名认证', '<span style=\"color:#9933E5;\"><span style=\"line-height:21px;color:#9933E5;background-color:#FFFFFF;\">请您实名注册如有错误请联系客服进行修改</span></span>', '0', '1475352696', '0', '1');
INSERT INTO `movesay_text` VALUES ('23', 'user_tpwdset', '交易密码输入设置', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>\r\n<h1 style=\"font-weight:normal;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;font-size:20px;color:#333333;background-color:#FFFFFF;\">\r\n	<span style=\"color:#CC33E5;\">请牢记您的交易密码</span>\r\n</h1>\r\n</span></span>', '0', '1475352698', '0', '1');
INSERT INTO `movesay_text` VALUES ('24', 'game_shop', '13', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>13请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1475352702', '0', '0');
INSERT INTO `movesay_text` VALUES ('25', 'game_issue_buy', '12', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>12请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1475352722', '0', '0');
INSERT INTO `movesay_text` VALUES ('26', 'game_huafei', '11话费充值', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>\r\n<h1 style=\"font-weight:normal;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;font-size:20px;color:#333333;background-color:#FFFFFF;\">\r\n	<span style=\"color:#CC33E5;\">话费充值目前不开放</span>\r\n</h1>\r\n</span></span>', '0', '1475359119', '0', '0');
INSERT INTO `movesay_text` VALUES ('27', 'user_bank', '支付宝管理', '<span style=\"font-size:14px;color:#CC33E5;\">请绑定您的的支付宝一但绑定不可修改</span>', '0', '1475359192', '0', '1');
INSERT INTO `movesay_text` VALUES ('28', 'user_qianbao', '9钱包地址管理', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>\r\n<h1 style=\"font-weight:normal;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;font-size:20px;color:#333333;background-color:#FFFFFF;\">\r\n	<span style=\"color:#CC33E5;\">目前还不提供转入转出钱包</span>\r\n</h1>\r\n</span></span>', '0', '1475359195', '0', '1');
INSERT INTO `movesay_text` VALUES ('29', 'user_log', '8', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>8请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1475359241', '0', '0');
INSERT INTO `movesay_text` VALUES ('30', 'user_ga', '7', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>7请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1475395398', '0', '0');
INSERT INTO `movesay_text` VALUES ('31', 'user_alipay', '6绑定支付宝', '<span style=\"color:#CC33E5;line-height:21px;background-color:#FFFFFF;\"><span style=\"color:#CC33E5;\"><span style=\"color:#CC33E5;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;line-height:34px;background-color:#FFFFFF;\">请绑定您的真实支付宝</span></span></span>', '0', '1475395410', '0', '1');
INSERT INTO `movesay_text` VALUES ('32', 'user_goods', '5联系地址管理', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>\r\n<h1 style=\"font-weight:normal;font-family:tahoma, \'Microsoft YaHei\', Arial, Helvetica, sans-serif;font-size:20px;color:#333333;background-color:#FFFFFF;\">\r\n	<span style=\"color:#CC33E5;\">联系地址填写好后期会推出一元夺宝游戏以便收货</span>\r\n</h1>\r\n</span></span>', '0', '1475395413', '0', '1');
INSERT INTO `movesay_text` VALUES ('33', 'game_shop_view', '3', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>3请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1476000366', '0', '0');
INSERT INTO `movesay_text` VALUES ('34', 'game_shop_log', '2', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>2请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1476002906', '0', '0');
INSERT INTO `movesay_text` VALUES ('35', 'game_shop_goods', '1', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>1请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1476002907', '0', '0');
INSERT INTO `movesay_text` VALUES ('36', 'finance_myaward', '', '<span style=\"color:#0096E0;line-height:21px;background-color:#FFFFFF;\"><span>请在后台修改此处内容</span></span><span style=\"color:#0096E0;line-height:21px;font-family:\'Microsoft Yahei\', \'Sim sun\', tahoma, \'Helvetica,Neue\', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;\">,<span style=\"color:#EE33EE;\">详细信息</span></span>', '0', '1482927855', '0', '1');

-- ----------------------------
-- Table structure for `movesay_trade`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_trade`;
CREATE TABLE `movesay_trade` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `market` varchar(50) NOT NULL,
  `price` decimal(20,8) unsigned NOT NULL,
  `num` decimal(20,8) unsigned NOT NULL,
  `deal` decimal(20,8) unsigned NOT NULL,
  `mum` decimal(20,8) unsigned NOT NULL,
  `fee` decimal(20,8) unsigned NOT NULL,
  `type` tinyint(2) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `market` (`market`,`type`,`status`),
  KEY `num` (`num`,`deal`),
  KEY `status` (`status`),
  KEY `market_2` (`market`)
) ENGINE=MyISAM AUTO_INCREMENT=285436 DEFAULT CHARSET=utf8 COMMENT='交易下单表';

-- ----------------------------
-- Records of movesay_trade
-- ----------------------------
INSERT INTO `movesay_trade` VALUES ('285420', '1', 'btc_cny', '100.00000000', '11.00000000', '0.00000000', '1100.00000000', '0.00000000', '1', '0', '1526636123', '0', '0');
INSERT INTO `movesay_trade` VALUES ('285421', '1', 'btc_cny', '111.00000000', '11.00000000', '1.00000000', '1221.00000000', '0.00000000', '1', '0', '1526636130', '0', '0');
INSERT INTO `movesay_trade` VALUES ('285422', '1', 'btc_cny', '102.00000000', '22.00000000', '0.00000000', '2244.00000000', '0.00000000', '1', '0', '1526636142', '0', '0');
INSERT INTO `movesay_trade` VALUES ('285423', '1', 'btc_cny', '111.00000000', '1.00000000', '1.00000000', '111.00000000', '0.00000000', '2', '0', '1526636154', '0', '1');
INSERT INTO `movesay_trade` VALUES ('285424', '1', 'btc_cny', '122.00000000', '11.00000000', '1.00000000', '1342.00000000', '0.00000000', '2', '0', '1526636165', '0', '0');
INSERT INTO `movesay_trade` VALUES ('285425', '1', 'ltc_cny', '200.00000000', '1.00000000', '1.00000000', '200.00000000', '0.00000000', '1', '0', '1526636186', '0', '1');
INSERT INTO `movesay_trade` VALUES ('285426', '1', 'ltc_cny', '230.00000000', '1.00000000', '0.00000000', '230.00000000', '0.00000000', '2', '0', '1526636191', '0', '0');
INSERT INTO `movesay_trade` VALUES ('285427', '1', 'ltc_cny', '200.00000000', '1.00000000', '1.00000000', '200.00000000', '0.00000000', '2', '0', '1526636204', '0', '1');
INSERT INTO `movesay_trade` VALUES ('285428', '1', 'ltc_cny', '210.00000000', '1.00000000', '0.00000000', '210.00000000', '0.00000000', '1', '0', '1526636210', '0', '0');
INSERT INTO `movesay_trade` VALUES ('285429', '1', 'ltc_cny', '222.00000000', '1.00000000', '0.00000000', '222.00000000', '0.00000000', '1', '0', '1526636214', '0', '0');
INSERT INTO `movesay_trade` VALUES ('285430', '1', 'btc_cny', '123.00000000', '23.00000000', '0.00000000', '2829.00000000', '0.00000000', '2', '0', '1526636319', '0', '0');
INSERT INTO `movesay_trade` VALUES ('285431', '1', 'btc_cny', '122.00000000', '1.00000000', '1.00000000', '122.00000000', '0.00000000', '1', '0', '1526636333', '0', '1');
INSERT INTO `movesay_trade` VALUES ('285432', '1', 'ltc_cny', '233.00000000', '21.00000000', '0.00000000', '4893.00000000', '0.00000000', '2', '0', '1526636356', '0', '0');
INSERT INTO `movesay_trade` VALUES ('285433', '1', 'btc_cny', '1.00000000', '376.74000000', '0.00000000', '376.74000000', '0.00000000', '1', '0', '1526641169', '0', '0');
INSERT INTO `movesay_trade` VALUES ('285434', '1', 'btc_cny', '1.00000000', '376.74000000', '0.00000000', '376.74000000', '0.00000000', '1', '0', '1526646918', '0', '0');
INSERT INTO `movesay_trade` VALUES ('285435', '1', 'ltc_cny', '0.36750000', '193.78660000', '0.00000000', '71.21657550', '0.00000000', '1', '0', '1526647444', '0', '0');

-- ----------------------------
-- Table structure for `movesay_trade_json`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_trade_json`;
CREATE TABLE `movesay_trade_json` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `market` varchar(100) NOT NULL,
  `data` varchar(500) NOT NULL,
  `type` varchar(100) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `market` (`market`)
) ENGINE=MyISAM AUTO_INCREMENT=422893 DEFAULT CHARSET=utf8 COMMENT='交易图表表';

-- ----------------------------
-- Records of movesay_trade_json
-- ----------------------------
INSERT INTO `movesay_trade_json` VALUES ('422629', 'btc_cny', '[1526636154,\"1.00000000\",\"111.00000000\",\"111.00000000\",\"111.00000000\",\"111.00000000\"]', '1', '0', '1526636154', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422630', 'btc_cny', '[1526635980,\"1.00000000\",\"111.00000000\",\"111.00000000\",\"111.00000000\",\"111.00000000\"]', '3', '0', '1526635980', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422631', 'btc_cny', '[1526636100,\"2.00000000\",\"111.00000000\",\"122.00000000\",\"111.00000000\",\"122.00000000\"]', '5', '0', '1526636100', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422632', 'btc_cny', '[1526635800,\"2.00000000\",\"111.00000000\",\"122.00000000\",\"111.00000000\",\"122.00000000\"]', '10', '0', '1526635800', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422633', 'btc_cny', '[1526635800,\"2.00000000\",\"111.00000000\",\"122.00000000\",\"111.00000000\",\"122.00000000\"]', '15', '0', '1526635800', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422634', 'btc_cny', '[1526635800,\"2.00000000\",\"111.00000000\",\"122.00000000\",\"111.00000000\",\"122.00000000\"]', '30', '0', '1526635800', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422635', 'btc_cny', '[1526634000,\"2.00000000\",\"111.00000000\",\"122.00000000\",\"111.00000000\",\"122.00000000\"]', '60', '0', '1526634000', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422636', 'btc_cny', '[1526634000,\"2.00000000\",\"111.00000000\",\"122.00000000\",\"111.00000000\",\"122.00000000\"]', '120', '0', '1526634000', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422637', 'btc_cny', '[1526634000,\"2.00000000\",\"111.00000000\",\"122.00000000\",\"111.00000000\",\"122.00000000\"]', '240', '0', '1526634000', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422638', 'btc_cny', '[1526634000,\"2.00000000\",\"111.00000000\",\"122.00000000\",\"111.00000000\",\"122.00000000\"]', '360', '0', '1526634000', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422639', 'btc_cny', '[1526634000,\"2.00000000\",\"111.00000000\",\"122.00000000\",\"111.00000000\",\"122.00000000\"]', '720', '0', '1526634000', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422640', 'btc_cny', '[1526634000,\"2.00000000\",\"111.00000000\",\"122.00000000\",\"111.00000000\",\"122.00000000\"]', '1440', '0', '1526634000', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422641', 'btc_cny', '[1526634000,\"2.00000000\",\"111.00000000\",\"122.00000000\",\"111.00000000\",\"122.00000000\"]', '10080', '0', '1526634000', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422642', 'btc_cny', '[1526636160,\"1.00000000\",\"122.00000000\",\"122.00000000\",\"122.00000000\",\"122.00000000\"]', '3', '0', '1526636160', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422643', 'ltc_cny', '[1526636204,\"1.00000000\",\"200.00000000\",\"200.00000000\",\"200.00000000\",\"200.00000000\"]', '1', '0', '1526636204', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422644', 'ltc_cny', '[1526636160,\"1.00000000\",\"200.00000000\",\"200.00000000\",\"200.00000000\",\"200.00000000\"]', '3', '0', '1526636160', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422645', 'ltc_cny', '[1526636100,\"1.00000000\",\"200.00000000\",\"200.00000000\",\"200.00000000\",\"200.00000000\"]', '5', '0', '1526636100', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422646', 'ltc_cny', '[1526635800,\"1.00000000\",\"200.00000000\",\"200.00000000\",\"200.00000000\",\"200.00000000\"]', '10', '0', '1526635800', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422647', 'ltc_cny', '[1526635800,\"1.00000000\",\"200.00000000\",\"200.00000000\",\"200.00000000\",\"200.00000000\"]', '15', '0', '1526635800', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422648', 'ltc_cny', '[1526635800,\"1.00000000\",\"200.00000000\",\"200.00000000\",\"200.00000000\",\"200.00000000\"]', '30', '0', '1526635800', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422649', 'ltc_cny', '[1526634000,\"1.00000000\",\"200.00000000\",\"200.00000000\",\"200.00000000\",\"200.00000000\"]', '60', '0', '1526634000', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422650', 'ltc_cny', '[1526634000,\"1.00000000\",\"200.00000000\",\"200.00000000\",\"200.00000000\",\"200.00000000\"]', '120', '0', '1526634000', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422651', 'ltc_cny', '[1526634000,\"1.00000000\",\"200.00000000\",\"200.00000000\",\"200.00000000\",\"200.00000000\"]', '240', '0', '1526634000', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422652', 'ltc_cny', '[1526634000,\"1.00000000\",\"200.00000000\",\"200.00000000\",\"200.00000000\",\"200.00000000\"]', '360', '0', '1526634000', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422653', 'ltc_cny', '[1526634000,\"1.00000000\",\"200.00000000\",\"200.00000000\",\"200.00000000\",\"200.00000000\"]', '720', '0', '1526634000', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422654', 'ltc_cny', '[1526634000,\"1.00000000\",\"200.00000000\",\"200.00000000\",\"200.00000000\",\"200.00000000\"]', '1440', '0', '1526634000', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422655', 'ltc_cny', '[1526634000,\"1.00000000\",\"200.00000000\",\"200.00000000\",\"200.00000000\",\"200.00000000\"]', '10080', '0', '1526634000', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422656', 'ltc_cny', '', '1', '0', '1526636264', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422657', 'btc_cny', '', '1', '0', '1526636214', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422658', 'btc_cny', '[1526636274,\"1.00000000\",\"122.00000000\",\"122.00000000\",\"122.00000000\",\"122.00000000\"]', '1', '0', '1526636274', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422659', 'btc_cny', '', '1', '0', '1526636334', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422660', 'ltc_cny', '', '3', '0', '1526636340', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422661', 'ltc_cny', '', '5', '0', '1526636400', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422662', 'ltc_cny', '', '10', '0', '1526636400', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422663', 'ltc_cny', '', '15', '0', '1526636700', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422664', 'ltc_cny', '', '30', '0', '1526637600', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422665', 'ltc_cny', '', '60', '0', '1526637600', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422666', 'ltc_cny', '', '120', '0', '1526641200', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422667', 'ltc_cny', '', '240', '0', '1526648400', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422668', 'ltc_cny', '', '360', '0', '1526655600', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422669', 'ltc_cny', '', '720', '0', '1526677200', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422670', 'ltc_cny', '', '720', '0', '1526720400', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422671', 'ltc_cny', '', '720', '0', '1526763600', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422672', 'ltc_cny', '', '720', '0', '1526806800', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422673', 'ltc_cny', '', '720', '0', '1526850000', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422674', 'ltc_cny', '', '720', '0', '1526893200', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422675', 'ltc_cny', '', '720', '0', '1526936400', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422676', 'ltc_cny', '', '720', '0', '1526979600', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422677', 'ltc_cny', '', '720', '0', '1527022800', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422678', 'ltc_cny', '', '720', '0', '1527066000', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422679', 'ltc_cny', '', '720', '0', '1527109200', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422680', 'ltc_cny', '', '720', '0', '1527152400', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422681', 'ltc_cny', '', '720', '0', '1527195600', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422682', 'ltc_cny', '', '720', '0', '1527238800', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422683', 'ltc_cny', '', '1440', '0', '1526720400', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422684', 'ltc_cny', '', '1440', '0', '1526806800', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422685', 'ltc_cny', '', '1440', '0', '1526893200', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422686', 'ltc_cny', '', '1440', '0', '1526979600', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422687', 'ltc_cny', '', '1440', '0', '1527066000', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422688', 'ltc_cny', '', '1440', '0', '1527152400', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422689', 'ltc_cny', '', '1440', '0', '1527238800', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422690', 'ltc_cny', '', '10080', '0', '1527238800', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422691', 'btc_cny', '', '3', '0', '1526636340', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422692', 'btc_cny', '', '3', '0', '1526636520', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422693', 'btc_cny', '', '3', '0', '1526636700', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422694', 'btc_cny', '', '3', '0', '1526636880', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422695', 'btc_cny', '', '3', '0', '1526637060', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422696', 'btc_cny', '', '3', '0', '1526637240', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422697', 'btc_cny', '', '3', '0', '1526637420', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422698', 'btc_cny', '', '3', '0', '1526637600', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422699', 'btc_cny', '', '3', '0', '1526637780', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422700', 'btc_cny', '', '3', '0', '1526637960', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422701', 'btc_cny', '', '3', '0', '1526638140', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422702', 'btc_cny', '', '3', '0', '1526638320', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422703', 'btc_cny', '', '3', '0', '1526638500', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422704', 'btc_cny', '', '3', '0', '1526638680', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422705', 'btc_cny', '', '3', '0', '1526638860', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422706', 'btc_cny', '', '3', '0', '1526639040', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422707', 'btc_cny', '', '3', '0', '1526639220', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422708', 'btc_cny', '', '3', '0', '1526639400', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422709', 'btc_cny', '', '3', '0', '1526639580', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422710', 'btc_cny', '', '3', '0', '1526639760', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422711', 'btc_cny', '', '5', '0', '1526636400', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422712', 'btc_cny', '', '5', '0', '1526636700', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422713', 'btc_cny', '', '5', '0', '1526637000', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422714', 'btc_cny', '', '5', '0', '1526637300', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422715', 'btc_cny', '', '5', '0', '1526637600', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422716', 'btc_cny', '', '5', '0', '1526637900', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422717', 'btc_cny', '', '5', '0', '1526638200', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422718', 'btc_cny', '', '5', '0', '1526638500', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422719', 'btc_cny', '', '5', '0', '1526638800', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422720', 'btc_cny', '', '5', '0', '1526639100', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422721', 'btc_cny', '', '5', '0', '1526639400', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422722', 'btc_cny', '', '5', '0', '1526639700', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422723', 'btc_cny', '', '5', '0', '1526640000', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422724', 'btc_cny', '', '5', '0', '1526640300', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422725', 'btc_cny', '', '5', '0', '1526640600', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422726', 'btc_cny', '', '5', '0', '1526640900', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422727', 'btc_cny', '', '5', '0', '1526641200', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422728', 'btc_cny', '', '5', '0', '1526641500', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422729', 'btc_cny', '', '5', '0', '1526641800', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422730', 'btc_cny', '', '5', '0', '1526642100', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422731', 'btc_cny', '', '10', '0', '1526636400', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422732', 'btc_cny', '', '10', '0', '1526637000', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422733', 'btc_cny', '', '10', '0', '1526637600', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422734', 'btc_cny', '', '10', '0', '1526638200', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422735', 'btc_cny', '', '10', '0', '1526638800', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422736', 'btc_cny', '', '10', '0', '1526639400', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422737', 'btc_cny', '', '10', '0', '1526640000', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422738', 'btc_cny', '', '10', '0', '1526640600', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422739', 'btc_cny', '', '10', '0', '1526641200', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422740', 'btc_cny', '', '10', '0', '1526641800', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422741', 'btc_cny', '', '10', '0', '1526642400', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422742', 'btc_cny', '', '10', '0', '1526643000', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422743', 'btc_cny', '', '10', '0', '1526643600', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422744', 'btc_cny', '', '10', '0', '1526644200', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422745', 'btc_cny', '', '10', '0', '1526644800', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422746', 'btc_cny', '', '10', '0', '1526645400', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422747', 'btc_cny', '', '10', '0', '1526646000', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422748', 'btc_cny', '', '10', '0', '1526646600', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422749', 'btc_cny', '', '10', '0', '1526647200', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422750', 'btc_cny', '', '10', '0', '1526647800', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422751', 'btc_cny', '', '15', '0', '1526636700', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422752', 'btc_cny', '', '15', '0', '1526637600', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422753', 'btc_cny', '', '15', '0', '1526638500', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422754', 'btc_cny', '', '15', '0', '1526639400', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422755', 'btc_cny', '', '15', '0', '1526640300', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422756', 'btc_cny', '', '15', '0', '1526641200', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422757', 'btc_cny', '', '15', '0', '1526642100', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422758', 'btc_cny', '', '15', '0', '1526643000', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422759', 'btc_cny', '', '15', '0', '1526643900', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422760', 'btc_cny', '', '15', '0', '1526644800', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422761', 'btc_cny', '', '15', '0', '1526645700', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422762', 'btc_cny', '', '15', '0', '1526646600', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422763', 'btc_cny', '', '15', '0', '1526647500', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422764', 'btc_cny', '', '15', '0', '1526648400', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422765', 'btc_cny', '', '15', '0', '1526649300', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422766', 'btc_cny', '', '15', '0', '1526650200', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422767', 'btc_cny', '', '15', '0', '1526651100', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422768', 'btc_cny', '', '15', '0', '1526652000', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422769', 'btc_cny', '', '15', '0', '1526652900', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422770', 'btc_cny', '', '15', '0', '1526653800', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422771', 'btc_cny', '', '30', '0', '1526637600', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422772', 'btc_cny', '', '30', '0', '1526639400', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422773', 'btc_cny', '', '30', '0', '1526641200', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422774', 'btc_cny', '', '30', '0', '1526643000', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422775', 'btc_cny', '', '30', '0', '1526644800', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422776', 'btc_cny', '', '30', '0', '1526646600', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422777', 'btc_cny', '', '30', '0', '1526648400', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422778', 'btc_cny', '', '30', '0', '1526650200', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422779', 'btc_cny', '', '30', '0', '1526652000', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422780', 'btc_cny', '', '30', '0', '1526653800', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422781', 'btc_cny', '', '30', '0', '1526655600', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422782', 'btc_cny', '', '30', '0', '1526657400', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422783', 'btc_cny', '', '30', '0', '1526659200', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422784', 'btc_cny', '', '30', '0', '1526661000', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422785', 'btc_cny', '', '30', '0', '1526662800', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422786', 'btc_cny', '', '30', '0', '1526664600', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422787', 'btc_cny', '', '30', '0', '1526666400', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422788', 'btc_cny', '', '30', '0', '1526668200', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422789', 'btc_cny', '', '30', '0', '1526670000', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422790', 'btc_cny', '', '30', '0', '1526671800', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422791', 'btc_cny', '', '60', '0', '1526637600', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422792', 'btc_cny', '', '60', '0', '1526641200', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422793', 'btc_cny', '', '60', '0', '1526644800', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422794', 'btc_cny', '', '60', '0', '1526648400', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422795', 'btc_cny', '', '60', '0', '1526652000', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422796', 'btc_cny', '', '60', '0', '1526655600', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422797', 'btc_cny', '', '60', '0', '1526659200', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422798', 'btc_cny', '', '60', '0', '1526662800', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422799', 'btc_cny', '', '60', '0', '1526666400', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422800', 'btc_cny', '', '60', '0', '1526670000', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422801', 'btc_cny', '', '60', '0', '1526673600', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422802', 'btc_cny', '', '60', '0', '1526677200', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422803', 'btc_cny', '', '60', '0', '1526680800', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422804', 'btc_cny', '', '60', '0', '1526684400', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422805', 'btc_cny', '', '60', '0', '1526688000', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422806', 'btc_cny', '', '60', '0', '1526691600', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422807', 'btc_cny', '', '60', '0', '1526695200', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422808', 'btc_cny', '', '60', '0', '1526698800', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422809', 'btc_cny', '', '60', '0', '1526702400', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422810', 'btc_cny', '', '60', '0', '1526706000', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422811', 'btc_cny', '', '120', '0', '1526641200', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422812', 'btc_cny', '', '120', '0', '1526648400', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422813', 'btc_cny', '', '120', '0', '1526655600', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422814', 'btc_cny', '', '120', '0', '1526662800', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422815', 'btc_cny', '', '120', '0', '1526670000', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422816', 'btc_cny', '', '120', '0', '1526677200', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422817', 'btc_cny', '', '120', '0', '1526684400', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422818', 'btc_cny', '', '120', '0', '1526691600', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422819', 'btc_cny', '', '120', '0', '1526698800', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422820', 'btc_cny', '', '120', '0', '1526706000', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422821', 'btc_cny', '', '120', '0', '1526713200', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422822', 'btc_cny', '', '120', '0', '1526720400', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422823', 'btc_cny', '', '120', '0', '1526727600', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422824', 'btc_cny', '', '120', '0', '1526734800', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422825', 'btc_cny', '', '120', '0', '1526742000', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422826', 'btc_cny', '', '120', '0', '1526749200', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422827', 'btc_cny', '', '120', '0', '1526756400', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422828', 'btc_cny', '', '120', '0', '1526763600', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422829', 'btc_cny', '', '120', '0', '1526770800', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422830', 'btc_cny', '', '120', '0', '1526778000', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422831', 'btc_cny', '', '240', '0', '1526648400', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422832', 'btc_cny', '', '240', '0', '1526662800', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422833', 'btc_cny', '', '240', '0', '1526677200', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422834', 'btc_cny', '', '240', '0', '1526691600', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422835', 'btc_cny', '', '240', '0', '1526706000', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422836', 'btc_cny', '', '240', '0', '1526720400', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422837', 'btc_cny', '', '240', '0', '1526734800', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422838', 'btc_cny', '', '240', '0', '1526749200', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422839', 'btc_cny', '', '240', '0', '1526763600', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422840', 'btc_cny', '', '240', '0', '1526778000', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422841', 'btc_cny', '', '240', '0', '1526792400', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422842', 'btc_cny', '', '240', '0', '1526806800', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422843', 'btc_cny', '', '240', '0', '1526821200', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422844', 'btc_cny', '', '240', '0', '1526835600', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422845', 'btc_cny', '', '240', '0', '1526850000', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422846', 'btc_cny', '', '240', '0', '1526864400', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422847', 'btc_cny', '', '240', '0', '1526878800', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422848', 'btc_cny', '', '240', '0', '1526893200', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422849', 'btc_cny', '', '240', '0', '1526907600', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422850', 'btc_cny', '', '240', '0', '1526922000', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422851', 'btc_cny', '', '360', '0', '1526655600', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422852', 'btc_cny', '', '360', '0', '1526677200', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422853', 'btc_cny', '', '360', '0', '1526698800', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422854', 'btc_cny', '', '360', '0', '1526720400', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422855', 'btc_cny', '', '360', '0', '1526742000', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422856', 'btc_cny', '', '360', '0', '1526763600', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422857', 'btc_cny', '', '360', '0', '1526785200', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422858', 'btc_cny', '', '360', '0', '1526806800', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422859', 'btc_cny', '', '360', '0', '1526828400', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422860', 'btc_cny', '', '360', '0', '1526850000', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422861', 'btc_cny', '', '360', '0', '1526871600', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422862', 'btc_cny', '', '360', '0', '1526893200', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422863', 'btc_cny', '', '360', '0', '1526914800', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422864', 'btc_cny', '', '360', '0', '1526936400', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422865', 'btc_cny', '', '360', '0', '1526958000', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422866', 'btc_cny', '', '360', '0', '1526979600', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422867', 'btc_cny', '', '360', '0', '1527001200', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422868', 'btc_cny', '', '360', '0', '1527022800', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422869', 'btc_cny', '', '360', '0', '1527044400', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422870', 'btc_cny', '', '360', '0', '1527066000', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422871', 'btc_cny', '', '720', '0', '1526677200', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422872', 'btc_cny', '', '720', '0', '1526720400', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422873', 'btc_cny', '', '720', '0', '1526763600', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422874', 'btc_cny', '', '720', '0', '1526806800', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422875', 'btc_cny', '', '720', '0', '1526850000', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422876', 'btc_cny', '', '720', '0', '1526893200', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422877', 'btc_cny', '', '720', '0', '1526936400', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422878', 'btc_cny', '', '720', '0', '1526979600', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422879', 'btc_cny', '', '720', '0', '1527022800', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422880', 'btc_cny', '', '720', '0', '1527066000', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422881', 'btc_cny', '', '720', '0', '1527109200', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422882', 'btc_cny', '', '720', '0', '1527152400', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422883', 'btc_cny', '', '720', '0', '1527195600', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422884', 'btc_cny', '', '720', '0', '1527238800', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422885', 'btc_cny', '', '1440', '0', '1526720400', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422886', 'btc_cny', '', '1440', '0', '1526806800', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422887', 'btc_cny', '', '1440', '0', '1526893200', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422888', 'btc_cny', '', '1440', '0', '1526979600', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422889', 'btc_cny', '', '1440', '0', '1527066000', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422890', 'btc_cny', '', '1440', '0', '1527152400', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422891', 'btc_cny', '', '1440', '0', '1527238800', '0', '0');
INSERT INTO `movesay_trade_json` VALUES ('422892', 'btc_cny', '', '10080', '0', '1527238800', '0', '0');

-- ----------------------------
-- Table structure for `movesay_trade_log`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_trade_log`;
CREATE TABLE `movesay_trade_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `peerid` int(11) unsigned NOT NULL,
  `market` varchar(50) NOT NULL,
  `price` decimal(20,8) unsigned NOT NULL,
  `num` decimal(20,8) unsigned NOT NULL,
  `mum` decimal(20,8) unsigned NOT NULL,
  `fee_buy` decimal(20,8) unsigned NOT NULL,
  `fee_sell` decimal(20,8) unsigned NOT NULL,
  `type` tinyint(2) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`),
  KEY `peerid` (`peerid`),
  KEY `main` (`market`,`status`,`addtime`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=262507 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movesay_trade_log
-- ----------------------------
INSERT INTO `movesay_trade_log` VALUES ('262504', '1', '1', 'btc_cny', '111.00000000', '1.00000000', '111.00000000', '0.00000000', '0.00000000', '2', '0', '1526636154', '0', '1');
INSERT INTO `movesay_trade_log` VALUES ('262505', '1', '1', 'ltc_cny', '200.00000000', '1.00000000', '200.00000000', '0.00000000', '0.00000000', '2', '0', '1526636204', '0', '1');
INSERT INTO `movesay_trade_log` VALUES ('262506', '1', '1', 'btc_cny', '122.00000000', '1.00000000', '122.00000000', '0.00000000', '0.00000000', '1', '0', '1526636333', '0', '1');

-- ----------------------------
-- Table structure for `movesay_ucenter_member`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_ucenter_member`;
CREATE TABLE `movesay_ucenter_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `last_login_ip` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of movesay_ucenter_member
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_user`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_user`;
CREATE TABLE `movesay_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `moble` varchar(50) NOT NULL,
  `mobletime` int(11) unsigned NOT NULL,
  `password` varchar(32) NOT NULL,
  `tpwdsetting` varchar(32) NOT NULL,
  `paypassword` varchar(32) NOT NULL,
  `invit_1` varchar(50) NOT NULL,
  `invit_2` varchar(50) NOT NULL,
  `invit_3` varchar(50) NOT NULL,
  `truename` varchar(32) NOT NULL,
  `idcard` varchar(32) NOT NULL,
  `idcardauth` tinyint(1) NOT NULL DEFAULT '0',
  `idcardimg1` varchar(100) DEFAULT NULL,
  `idcardimg2` varchar(100) DEFAULT NULL,
  `idcardinfo` varchar(500) DEFAULT NULL,
  `logins` int(11) unsigned NOT NULL,
  `ga` varchar(50) NOT NULL,
  `addip` varchar(50) NOT NULL,
  `addr` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `alipay` varchar(200) DEFAULT NULL COMMENT '支付宝',
  `invit` varchar(50) NOT NULL,
  `token` varchar(50) DEFAULT NULL,
  `awardid` int(2) NOT NULL DEFAULT '0',
  `awardstatus` smallint(1) NOT NULL DEFAULT '0',
  `awardname` varchar(100) DEFAULT NULL,
  `awardNumAll` int(10) NOT NULL DEFAULT '0',
  `awardNumToday` int(10) NOT NULL DEFAULT '0',
  `awardTotalToday` int(10) NOT NULL DEFAULT '0',
  `awardtime` int(11) NOT NULL DEFAULT '0',
  `regaward` tinyint(1) NOT NULL DEFAULT '0',
  `usertype` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of movesay_user
-- ----------------------------
INSERT INTO `movesay_user` VALUES ('1', 'admin', '13655074562', '1511937442', 'e10adc3949ba59abbe56e057f20f883e', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', '111', '11111111', '1', null, null, '', '9', '', '', '', '0', '1511937513', '0', '1', null, null, 'BVQHAD', '64e588f7eb8ed4b1f04a149b37c0d4a6', '0', '0', '无奖品', '0', '0', '0', '0', '0', '0');
INSERT INTO `movesay_user` VALUES ('3', 'admin1', '', '0', 'e10adc3949ba59abbe56e057f20f883e', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', '', '', '0', null, null, null, '0', '', '', '', '0', '0', '0', '0', null, null, '', null, '0', '0', null, '0', '0', '0', '0', '0', '0');
INSERT INTO `movesay_user` VALUES ('2', '13086322508', '13086322508', '1525839750', 'e10adc3949ba59abbe56e057f20f883e', '1', '9cbf8a4dcb8e30682b927f352d6559a0', '0', '0', '0', '测试', '511023199104094053', '0', null, null, null, '2', '', '127.0.0.1', '未分配或者内网IP', '0', '1525839750', '0', '1', null, null, 'GAIDNX', 'd06c3755ba57f118fcd5d57afbf4bbe8', '0', '0', null, '0', '0', '0', '0', '1', '0');

-- ----------------------------
-- Table structure for `movesay_user_award`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_user_award`;
CREATE TABLE `movesay_user_award` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL DEFAULT '0',
  `awardname` varchar(100) NOT NULL DEFAULT '',
  `status` int(1) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL DEFAULT '0',
  `dealtime` int(11) NOT NULL DEFAULT '0',
  `awardid` int(2) NOT NULL DEFAULT '0',
  `username` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movesay_user_award
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_user_bank`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_user_bank`;
CREATE TABLE `movesay_user_bank` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `name` varchar(200) NOT NULL,
  `bank` varchar(200) NOT NULL,
  `bankprov` varchar(200) NOT NULL,
  `bankcity` varchar(200) NOT NULL,
  `bankaddr` varchar(200) NOT NULL,
  `bankcard` varchar(200) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movesay_user_bank
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_user_bank_type`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_user_bank_type`;
CREATE TABLE `movesay_user_bank_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `img` varchar(200) NOT NULL,
  `mytx` varchar(200) NOT NULL,
  `remark` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='常用银行地址';

-- ----------------------------
-- Records of movesay_user_bank_type
-- ----------------------------
INSERT INTO `movesay_user_bank_type` VALUES ('1', 'boc', '中国银行', 'http://www.boc.cn/', 'img_56937003683ce.jpg', '', '', '0', '1452503043', '0', '1');
INSERT INTO `movesay_user_bank_type` VALUES ('2', 'abc', '农业银行', 'http://www.abchina.com/cn/', 'img_569370458b18d.jpg', '', '', '0', '1452503109', '0', '1');
INSERT INTO `movesay_user_bank_type` VALUES ('3', 'bccb', '北京银行', 'http://www.bankofbeijing.com.cn/', 'img_569370588dcdc.jpg', '', '', '0', '1452503128', '0', '1');
INSERT INTO `movesay_user_bank_type` VALUES ('4', 'ccb', '建设银行', 'http://www.ccb.com/', 'img_5693709bbd20f.jpg', '', '', '0', '1452503195', '0', '1');
INSERT INTO `movesay_user_bank_type` VALUES ('5', 'ceb', '光大银行', 'http://www.bankofbeijing.com.cn/', 'img_569370b207cc8.jpg', '', '', '0', '1452503218', '0', '1');
INSERT INTO `movesay_user_bank_type` VALUES ('6', 'cib', '兴业银行', 'http://www.cib.com.cn/cn/index.html', 'img_569370d29bf59.jpg', '', '', '0', '1452503250', '0', '1');
INSERT INTO `movesay_user_bank_type` VALUES ('7', 'citic', '中信银行', 'http://www.ecitic.com/', 'img_569370fb7a1b3.jpg', '', '', '0', '1452503291', '0', '1');
INSERT INTO `movesay_user_bank_type` VALUES ('8', 'cmb', '招商银行', 'http://www.cmbchina.com/', 'img_5693710a9ac9c.jpg', '', '', '0', '1452503306', '0', '1');
INSERT INTO `movesay_user_bank_type` VALUES ('9', 'cmbc', '民生银行', 'http://www.cmbchina.com/', 'img_5693711f97a9d.jpg', '', '', '0', '1452503327', '0', '1');
INSERT INTO `movesay_user_bank_type` VALUES ('10', 'comm', '交通银行', 'http://www.bankcomm.com/BankCommSite/default.shtml', 'img_5693713076351.jpg', '', '', '0', '1452503344', '0', '1');
INSERT INTO `movesay_user_bank_type` VALUES ('11', 'gdb', '广发银行', 'http://www.cgbchina.com.cn/', 'img_56937154bebc5.jpg', '', '', '0', '1452503380', '0', '1');
INSERT INTO `movesay_user_bank_type` VALUES ('12', 'icbc', '工商银行', 'http://www.icbc.com.cn/icbc/', 'img_56937162db7f5.jpg', '', '', '0', '1452503394', '0', '1');
INSERT INTO `movesay_user_bank_type` VALUES ('13', 'psbc', '邮政银行', 'http://www.psbc.com/portal/zh_CN/index.html', 'img_5693717eefaa3.jpg', '', '', '0', '1452503422', '0', '1');
INSERT INTO `movesay_user_bank_type` VALUES ('14', 'spdb', '浦发银行', 'http://www.spdb.com.cn/chpage/c1/', 'img_5693718f1d70e.jpg', '', '', '0', '1452503439', '0', '1');
INSERT INTO `movesay_user_bank_type` VALUES ('15', 'szpab', '平安银行', 'http://bank.pingan.com/', '56c2e4c9aff85.jpg', '', '', '0', '1455613129', '0', '1');
INSERT INTO `movesay_user_bank_type` VALUES ('16', 'alipay', '支付宝', 'http://www.alipay.com', '', '', '', '0', '1452503439', '0', '1');

-- ----------------------------
-- Table structure for `movesay_user_coin`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_user_coin`;
CREATE TABLE `movesay_user_coin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL,
  `cny` decimal(20,8) unsigned NOT NULL,
  `cnyd` decimal(20,8) unsigned NOT NULL,
  `mile` decimal(20,8) unsigned NOT NULL,
  `miled` decimal(20,8) unsigned NOT NULL,
  `mileb` varchar(200) NOT NULL,
  `ltc` decimal(20,8) unsigned NOT NULL,
  `ltcd` decimal(20,8) unsigned NOT NULL,
  `ltcb` varchar(200) NOT NULL,
  `btc` decimal(20,8) unsigned NOT NULL,
  `btcd` decimal(20,8) unsigned NOT NULL,
  `btcb` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='用户币种表';

-- ----------------------------
-- Records of movesay_user_coin
-- ----------------------------
INSERT INTO `movesay_user_coin` VALUES ('2', '2', '1656119.98385229', '0.00000000', '0.00000000', '0.00000000', '', '890051.35370000', '110122.59480002', '', '896319.86000000', '103680.14000000', '347ea7de861df2998237ae613d1defe5');
INSERT INTO `movesay_user_coin` VALUES ('1', '1', '1718039.75414376', '5710.69657550', '0.00000000', '0.00000000', '', '904159.70060000', '95795.16390000', '', '903227.84000000', '96772.16000000', '');
INSERT INTO `movesay_user_coin` VALUES ('3', '3', '1000000.00000000', '0.00000000', '0.00000000', '0.00000000', '', '1000000.00000000', '0.00000000', '6aad6707454a30c260122c069846056e', '1000000.00000000', '0.00000000', '3d9ec9bc6a0c32523ae8d26b5c12fff7');

-- ----------------------------
-- Table structure for `movesay_user_goods`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_user_goods`;
CREATE TABLE `movesay_user_goods` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `name` varchar(200) NOT NULL,
  `truename` varchar(200) NOT NULL,
  `idcard` varchar(200) NOT NULL,
  `moble` varchar(200) NOT NULL,
  `addr` varchar(200) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  `prov` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movesay_user_goods
-- ----------------------------
INSERT INTO `movesay_user_goods` VALUES ('3', '6', '得到', '的额', '', '13187249117', '得到', '0', '1498021647', '0', '1', '山西', '阳泉');
INSERT INTO `movesay_user_goods` VALUES ('4', '5', '广东', '吴先生', '', '18675646546', '白云区', '0', '1498057746', '0', '1', '广东', '广州');

-- ----------------------------
-- Table structure for `movesay_user_log`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_user_log`;
CREATE TABLE `movesay_user_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL,
  `type` varchar(200) NOT NULL,
  `remark` varchar(200) NOT NULL,
  `addip` varchar(200) NOT NULL,
  `addr` varchar(200) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=181 DEFAULT CHARSET=utf8 COMMENT='用户记录表';

-- ----------------------------
-- Records of movesay_user_log
-- ----------------------------
INSERT INTO `movesay_user_log` VALUES ('167', '1', '登录', '通过手机号登录', '127.0.0.1', '未分配或者内网IP', '0', '1511937525', '0', '1');
INSERT INTO `movesay_user_log` VALUES ('168', '23', '登录', '通过手机号登录', '127.0.0.1', '未分配或者内网IP', '0', '1511937716', '0', '1');
INSERT INTO `movesay_user_log` VALUES ('169', '23', '登录', '通过手机号登录', '127.0.0.1', '未分配或者内网IP', '0', '1511951286', '0', '1');
INSERT INTO `movesay_user_log` VALUES ('170', '23', '登录', '通过手机号登录', '127.0.0.1', '未分配或者内网IP', '0', '1511953684', '0', '1');
INSERT INTO `movesay_user_log` VALUES ('171', '1', '登录', '通过手机号登录', '127.0.0.1', '未分配或者内网IP', '0', '1525699876', '0', '1');
INSERT INTO `movesay_user_log` VALUES ('172', '1', '登录', '通过手机号登录', '127.0.0.1', '未分配或者内网IP', '0', '1525701718', '0', '1');
INSERT INTO `movesay_user_log` VALUES ('173', '1', '登录', '通过手机号登录', '127.0.0.1', '未分配或者内网IP', '0', '1525757540', '0', '1');
INSERT INTO `movesay_user_log` VALUES ('174', '1', '登录', '通过手机号登录', '127.0.0.1', '未分配或者内网IP', '0', '1525776831', '0', '1');
INSERT INTO `movesay_user_log` VALUES ('175', '1', '登录', '通过手机号登录', '127.0.0.1', '未分配或者内网IP', '0', '1525837532', '0', '1');
INSERT INTO `movesay_user_log` VALUES ('176', '1', '登录', '通过手机号登录', '127.0.0.1', '未分配或者内网IP', '0', '1525843804', '0', '1');
INSERT INTO `movesay_user_log` VALUES ('177', '1', '登录', '通过用户名登录', '127.0.0.1', '未分配或者内网IP', '0', '1525859945', '0', '1');
INSERT INTO `movesay_user_log` VALUES ('178', '1', '登录', '通过手机号登录', '127.0.0.1', '未分配或者内网IP', '0', '1526634485', '0', '1');
INSERT INTO `movesay_user_log` VALUES ('179', '2', '登录', '通过手机号登录', '127.0.0.1', '未分配或者内网IP', '0', '1527252127', '0', '1');
INSERT INTO `movesay_user_log` VALUES ('180', '2', '登录', '通过手机号登录', '127.0.0.1', '未分配或者内网IP', '0', '1527256775', '0', '1');

-- ----------------------------
-- Table structure for `movesay_user_qianbao`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_user_qianbao`;
CREATE TABLE `movesay_user_qianbao` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `coinname` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `addr` varchar(200) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`),
  KEY `coinname` (`coinname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户钱包表';

-- ----------------------------
-- Records of movesay_user_qianbao
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_user_shopaddr`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_user_shopaddr`;
CREATE TABLE `movesay_user_shopaddr` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `truename` varchar(200) NOT NULL DEFAULT '0',
  `moble` varchar(500) NOT NULL,
  `name` varchar(500) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movesay_user_shopaddr
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_version`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_version`;
CREATE TABLE `movesay_version` (
  `name` varchar(50) NOT NULL COMMENT '版本号',
  `number` int(11) NOT NULL COMMENT '序列号，一般用日期数字标示',
  `title` varchar(50) NOT NULL COMMENT '版本名',
  `create_time` int(11) NOT NULL COMMENT '发布时间',
  `update_time` int(11) NOT NULL COMMENT '更新的时间',
  `log` text NOT NULL COMMENT '更新日志',
  `url` varchar(150) NOT NULL COMMENT '链接到的远程文章',
  `is_current` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`name`),
  KEY `id` (`number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='自动更新表';

-- ----------------------------
-- Records of movesay_version
-- ----------------------------

-- ----------------------------
-- Table structure for `movesay_version_game`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_version_game`;
CREATE TABLE `movesay_version_game` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `gongsi` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT '名称',
  `shuoming` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT '名称',
  `class` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT '名称',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `number` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='应用管理表';

-- ----------------------------
-- Records of movesay_version_game
-- ----------------------------
INSERT INTO `movesay_version_game` VALUES ('1', 'movesay', '网上商城', 'shop', 'shop', '网上商城', '1');

-- ----------------------------
-- Table structure for `movesay_vote`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_vote`;
CREATE TABLE `movesay_vote` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `type` int(20) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of movesay_vote
-- ----------------------------
INSERT INTO `movesay_vote` VALUES ('9', '5', 'ETC', '以太经典', '1', '0', '1498199292', '0', '1');
INSERT INTO `movesay_vote` VALUES ('6', '5', 'ETC', '以太经典', '1', '0', '1498199284', '0', '1');
INSERT INTO `movesay_vote` VALUES ('7', '5', 'ETC', '以太经典', '1', '0', '1498199287', '0', '1');
INSERT INTO `movesay_vote` VALUES ('8', '5', 'ETC', '以太经典', '1', '0', '1498199290', '0', '1');
INSERT INTO `movesay_vote` VALUES ('10', '5', 'ETC', '以太经典', '1', '0', '1498199295', '0', '1');
INSERT INTO `movesay_vote` VALUES ('11', '5', 'ETC', '以太经典', '1', '0', '1498199298', '0', '1');
INSERT INTO `movesay_vote` VALUES ('12', '5', 'ETC', '以太经典', '1', '0', '1498199301', '0', '1');
INSERT INTO `movesay_vote` VALUES ('13', '5', 'ETC', '以太经典', '1', '0', '1498199304', '0', '1');
INSERT INTO `movesay_vote` VALUES ('14', '5', 'ETC', '以太经典', '2', '0', '1498199307', '0', '1');
INSERT INTO `movesay_vote` VALUES ('15', '5', 'ETC', '以太经典', '1', '0', '1498199309', '0', '1');
INSERT INTO `movesay_vote` VALUES ('16', '5', 'ETC', '以太经典', '1', '0', '1498199313', '0', '1');
INSERT INTO `movesay_vote` VALUES ('17', '5', 'ETC', '以太经典', '1', '0', '1499397318', '0', '1');
INSERT INTO `movesay_vote` VALUES ('18', '5', 'ETC', '以太经典', '1', '0', '1499397321', '0', '1');
INSERT INTO `movesay_vote` VALUES ('19', '5', 'ETC', '以太经典', '1', '0', '1499397324', '0', '1');
INSERT INTO `movesay_vote` VALUES ('20', '5', 'ETC', '以太经典', '1', '0', '1499397327', '0', '1');
INSERT INTO `movesay_vote` VALUES ('21', '5', 'ETC', '以太经典', '1', '0', '1499397331', '0', '1');
INSERT INTO `movesay_vote` VALUES ('22', '5', 'ETC', '以太经典', '1', '0', '1499397336', '0', '1');
INSERT INTO `movesay_vote` VALUES ('23', '7', 'ETC', '以太经典', '1', '0', '1505920226', '0', '1');
INSERT INTO `movesay_vote` VALUES ('24', '1', 'ETC', '以太经典', '1', '0', '1525844705', '0', '1');
INSERT INTO `movesay_vote` VALUES ('25', '1', 'ETC', '以太经典', '1', '0', '1525844720', '0', '1');

-- ----------------------------
-- Table structure for `movesay_vote_type`
-- ----------------------------
DROP TABLE IF EXISTS `movesay_vote_type`;
CREATE TABLE `movesay_vote_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `coinname` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '状态',
  `img` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `zhichi` bigint(20) unsigned DEFAULT '0',
  `fandui` bigint(20) unsigned DEFAULT '0',
  `zongji` bigint(20) unsigned DEFAULT '0',
  `bili` float DEFAULT '0',
  `votecoin` varchar(50) NOT NULL,
  `assumnum` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of movesay_vote_type
-- ----------------------------
INSERT INTO `movesay_vote_type` VALUES ('2', 'ETC', '以太经典', '1', null, '0', '0', '0', '0', 'cny', '1');
