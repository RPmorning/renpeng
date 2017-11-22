/*
SQLyog v10.2 
MySQL - 5.5.53 : Database - renpeng
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`kerui` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `renpeng`;

/*Table structure for table `rp_article` */

DROP TABLE IF EXISTS `rp_article`;

CREATE TABLE `rp_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `desc` varchar(200) NOT NULL DEFAULT '' COMMENT '摘要',
  `tag` varchar(50) DEFAULT '' COMMENT '标签',
  `author` varchar(20) NOT NULL COMMENT '作者',
  `source` varchar(20) NOT NULL DEFAULT '未知' COMMENT '来源',
  `cover` varchar(100) NOT NULL DEFAULT '' COMMENT '封面图',
  `content` longtext NOT NULL COMMENT '内容',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序（同级有效）',
  `hide` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否隐藏',
  `view` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '浏览量',
  `member_id` int(10) unsigned NOT NULL COMMENT '发布人ID',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `member_id` (`member_id`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `rp_article` */

insert  into `rp_article`(`id`,`name`,`desc`,`tag`,`author`,`source`,`cover`,`content`,`sort`,`hide`,`view`,`member_id`,`create_time`,`update_time`,`status`) values (1,'《淡写年华》','','','不知','网络','20171109\\ebc9fb0a64e1ddc3715cb848fc17d3e4.jpg','<p><span style=\"color: rgb(79, 93, 65); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;许我们的心里藏有一个海洋，流出来的却是两行清泪，可我并不感到孤单，我只是简单地喜欢书写凄凉。曾经我们敷衍的情绪，在别人记忆的曲线里渐行渐远渐无言。难道曾经的悸动，只是岁月留给我一个人的错觉，我有点不相信自己的眼睛。我没有哭泣，只是学会了思念而已。</span><br style=\"color: rgb(79, 93, 65); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(79, 93, 65); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">&nbsp;</span><br style=\"color: rgb(79, 93, 65); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(79, 93, 65); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp; &nbsp; 曾经我们也有过如海子一般“面朝大海，春暖花开”的美好愿景，曾经我们也为“那一年”的往事刻骨铭心，曾经我们也不知道忙碌夜夜狂欢，曾经我们也有过假装欺骗自己……在我们过去的时光里，一件件悲伤的、快乐的往事像一粒粒珍珠般串联在一起，构成了我们如花似玉的年华。</span><br style=\"color: rgb(79, 93, 65); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(79, 93, 65); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">&nbsp;</span><br style=\"color: rgb(79, 93, 65); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(79, 93, 65); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp; &nbsp; 回首似水流年，内心莫名的宁静，也许是我们的心慢慢变老渐渐远离年轻。曾经，我们会为某件事伤心欲绝，也会为某件事欢心跳跃，我们会爱某个人爱到死去活来，我们也会恨某个人恨到不能自己，我们可以爱，我们可以恨，但我们不可以漫不经心。然而，年华像风里的白桦叶一般被风弄得沙沙作响，可我们现在的心平静得就像溪水般缓缓流淌，原来谁都可以不用顾忌着谁，原来谁都可以忘记离合悲欢，谁都可以简单地生活。</span></p>',0,0,0,0,1510218108,1510276088,1);

/*Table structure for table `rp_asset` */

DROP TABLE IF EXISTS `rp_asset`;

CREATE TABLE `rp_asset` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `file_size` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小,单位B',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:可用,0:不可用',
  `download_times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '下载次数',
  `file_key` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件惟一码',
  `filename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '文件名',
  `file_path` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件路径,相对于upload目录,可以为url',
  `file_md5` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件md5值',
  `file_sha1` varchar(40) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `suffix` varchar(10) NOT NULL DEFAULT '' COMMENT '文件后缀名,不包括点',
  `more` text COMMENT '其它详细信息,JSON格式',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COMMENT='资源表';

/*Data for the table `rp_asset` */

insert  into `rp_asset`(`id`,`user_id`,`file_size`,`create_time`,`status`,`download_times`,`file_key`,`filename`,`file_path`,`file_md5`,`file_sha1`,`suffix`,`more`) values (1,1,160063,1497921108,1,0,'29fe3e8de8d7981e31dac53c260a2c01af335679ede634d86990ca0930280cc6','ssh2.png','20170620\\c25fbf4bbb6097b66e291a43ca6fe370.png','29fe3e8de8d7981e31dac53c260a2c01','44a60cb71fddaeea5565793e61c334a896966ebc','png',NULL),(2,1,18061,1497924689,1,0,'885ddbef713bf83e4b38962510940a7c2297e43772a6082175fc41d7c026f7c6','timg.jpg','20170620\\4224c01ef3632add3801aa877055a62d.jpg','885ddbef713bf83e4b38962510940a7c','f804ac528a810ed9377f11cf6fc30edf9f34d432','jpg',NULL),(3,1,78289,1497940822,1,0,'164ff8be488ab939e890c02898f534177c7ae158de33a65fb5207ca389b9de1a','ssh.png','20170620\\137c7ae972a5a764406e2b26e01ce1d9.png','164ff8be488ab939e890c02898f53417','d718922231d6dd718c6a3b4377e712d3d6c15920','png',NULL),(4,1,18061,1498093258,1,0,'885ddbef713bf83e4b38962510940a7c2297e43772a6082175fc41d7c026f7c6','timg.jpg','20170622/09ed3f37f3968760bc294c1320d763c5.jpg','885ddbef713bf83e4b38962510940a7c','f804ac528a810ed9377f11cf6fc30edf9f34d432','jpg',NULL),(5,1,18061,1498113592,1,0,'885ddbef713bf83e4b38962510940a7c2297e43772a6082175fc41d7c026f7c6','timg.jpg','20170622/5eeb056b08add7418b894571f8871bb8.jpg','885ddbef713bf83e4b38962510940a7c','f804ac528a810ed9377f11cf6fc30edf9f34d432','jpg',NULL),(6,1,18061,1498118125,1,0,'885ddbef713bf83e4b38962510940a7c2297e43772a6082175fc41d7c026f7c6','timg.jpg','20170622/ac9b0c5f875dfc249a157dd85af04f00.jpg','885ddbef713bf83e4b38962510940a7c','f804ac528a810ed9377f11cf6fc30edf9f34d432','jpg',NULL),(7,1,18061,1498439294,1,0,'885ddbef713bf83e4b38962510940a7c2297e43772a6082175fc41d7c026f7c6','timg.jpg','20170626/c2f21179c48b9be34859f7d6c71872f5.jpg','885ddbef713bf83e4b38962510940a7c','f804ac528a810ed9377f11cf6fc30edf9f34d432','jpg',NULL),(8,1,160063,1498439382,1,0,'29fe3e8de8d7981e31dac53c260a2c01af335679ede634d86990ca0930280cc6','ssh2.png','20170626/acddf92b0a9cf88c5c3448183a6709f5.png','29fe3e8de8d7981e31dac53c260a2c01','44a60cb71fddaeea5565793e61c334a896966ebc','png',NULL),(9,1,160063,1498439497,1,0,'29fe3e8de8d7981e31dac53c260a2c01af335679ede634d86990ca0930280cc6','ssh2.png','20170626/fa595c9c9e80a7f69e21b81646bd82bd.png','29fe3e8de8d7981e31dac53c260a2c01','44a60cb71fddaeea5565793e61c334a896966ebc','png',NULL),(10,1,18061,1498439549,1,0,'885ddbef713bf83e4b38962510940a7c2297e43772a6082175fc41d7c026f7c6','timg.jpg','20170626/dfbb1d1750a6b5161f1f1a6654659e44.jpg','885ddbef713bf83e4b38962510940a7c','f804ac528a810ed9377f11cf6fc30edf9f34d432','jpg',NULL),(11,1,69754,1498459286,1,0,'dd1110b4de762a7bbfa80be9ba27e06e09d627766962351702f251b2adc42095','20160309033914461.jpg','20170626\\afd4ac0cfcc315f839b14aad6d69d1bc.jpg','dd1110b4de762a7bbfa80be9ba27e06e','708f6434854b417e57a57fd038e5b0d8908516af','jpg',NULL),(12,1,83662,1498459340,1,0,'fc59521c9718cf913c43c388337d1d95fa5644306612bb9aaf0c79303a0ede18','20160121030401369.jpg','20170626\\734ffd7ca5e2967005f7e895309f0f2b.jpg','fc59521c9718cf913c43c388337d1d95','a69ebfa9124b9b791493d1d59f4db19d31d663aa','jpg',NULL),(13,1,67225,1498459409,1,0,'62ea70776dc4dbda2326604a99247f3f13b4139014cf4fa8532a8dbcddb98a91','20151215043625878.jpg','20170626\\ec7a18aa02f467079602aefc33f2ff9e.jpg','62ea70776dc4dbda2326604a99247f3f','1bd50458bcd4e78584362890ba10c47b2da01c1a','jpg',NULL),(14,1,88745,1498459453,1,0,'fe5434df4a55fd8c583a0e19a8b203da4e76e5e2e660f4a349e406dbd4988404','20151116093528920.jpg','20170626\\646f386defb5ab76a08d5e63282dd19f.jpg','fe5434df4a55fd8c583a0e19a8b203da','a31ad469e8281f0898d2e01888916a84a2e1a88a','jpg',NULL),(15,1,94144,1498459553,1,0,'9ca8ae5272c93b957a5dc9cf279eb5fe0980166cd734bfa9bb045fa71ae49786','20151021052758131.png','20170626\\5f9cd29947fe194f58c6113ba4c1cfdf.png','9ca8ae5272c93b957a5dc9cf279eb5fe','81418680761406c34968ad8af6eb26ed28ed3812','png',NULL),(16,1,145470,1498459790,1,0,'18b45f1313154a86f3fce0cffdc996b5aba83692d182e294cab97d9f4f879449','20151021051800496.png','20170626\\28e6189c2b4aba6081075a40fbe53874.png','18b45f1313154a86f3fce0cffdc996b5','41dd6e99abf3a35c635643697c78c4554c10950f','png',NULL),(17,1,278850,1498459847,1,0,'c03f0093baf0f7ac13d2bef18fa9b21f28adb44f0c7384cea36e5c2d129a671a','20151021043258941.png','20170626/648fcd57f95c19a3542d1b2864c4804b.png','c03f0093baf0f7ac13d2bef18fa9b21f','acd4e8005d0e64727b9d7aa32d66cc51be9c0334','png',NULL),(18,1,283670,1498459895,1,0,'282ee26fe39aa9392775a34e0dc1685affb871de736f8988ddbc6bef7d77821b','20151021043317313.png','20170626/884f10af8cd30ef4413f5157f42b6d16.png','282ee26fe39aa9392775a34e0dc1685a','6d638dc408f35725af6987012c13456daaa634bd','png',NULL),(19,1,363810,1498459939,1,0,'93135609e472634bce375ea8bd6b33654412832c844735bbcf930ae98920cc15','20151021043404134.png','20170626/1c979b672418c3552b1f983e2dc0d072.png','93135609e472634bce375ea8bd6b3365','0e9773a1ec88a963e09487d653989d9e3a238a86','png',NULL),(20,1,28162,1498460078,1,0,'20f10e96fbd7617b28cac9d43569c8cab151da4af4c42e34a7f5ad893f6c1191','20141212033416126.jpg','20170626\\3e096b5125bc2d08e6cea37de12698f1.jpg','20f10e96fbd7617b28cac9d43569c8ca','d2f09e2f245945107677283400d70bb961ee2ea9','jpg',NULL),(21,1,81038,1498460128,1,0,'6bf391e497d82b4b29c03b8f20a6b0cab7da90e3ec52a54e013b5ab8e2ceafd4','20140603091355985.jpg','20170626\\d4bf678e6a34d88781bba06abfcc6769.jpg','6bf391e497d82b4b29c03b8f20a6b0ca','e853953f6adcb02297f6bab613ba50c00bd02e7a','jpg',NULL),(22,1,43988,1498460228,1,0,'ecf3d583d886cdb6f24a3d9043aa60ee534c5a1f10261fa97f0754a76a5f47c9','20130625040809858.jpg','20170626/aa7d82410541dd4f1a09f4c262016db2.jpg','ecf3d583d886cdb6f24a3d9043aa60ee','affd903492ca502cc9625aac106d18cb722444d5','jpg',NULL),(23,1,47680,1498460251,1,0,'76d8d37ec64dcc0400c4174a00d08033a3d7212d9fcf52c4894481dd8387fe46','20130625040838348.jpg','20170626/5660a5a01b1e532d7299e24af4f4861e.jpg','76d8d37ec64dcc0400c4174a00d08033','6f2ab37107a12b9af16abe1044e7b4073301e04f','jpg',NULL),(24,1,43489,1498460289,1,0,'fbbbd44d77a0c8e65bab31997a653859a507436800d4a06040c20dd8e89a08e2','20130625040855168.jpg','20170626/b06c152b436f81d46d6017086e3fb742.jpg','fbbbd44d77a0c8e65bab31997a653859','ed03a283a9044cf14091fc1787c25dc9e7320b13','jpg',NULL),(25,1,54113,1498460349,1,0,'12717c7f1bbcb1ceb8091b9938073062719c5fb0f4d453ac15e3a8d45668f68d','20130524025239413.jpg','20170626/50362d66af658989f85b863231ee75c5.jpg','12717c7f1bbcb1ceb8091b9938073062','69ff77579d61260f415ab8a21caf5af83257f696','jpg',NULL),(26,1,56293,1498460391,1,0,'321e2936ec864a791da6fc1e326b87ef81839fad20e4eb445b467fbf5b2f0b7c','20130524025315187.jpg','20170626/080950de1d85e2296fe5ef8462bedded.jpg','321e2936ec864a791da6fc1e326b87ef','e621c373fd8082a3e0027a8c3e0b212359e2b7e1','jpg',NULL),(27,1,30682,1498460439,1,0,'620c89b7187fc8b80099df542614131cc66232a73c02370298669d6a3176f2ab','20130524025726487.jpg','20170626/05f222a3583f08af02e7e4cfd209510d.jpg','620c89b7187fc8b80099df542614131c','7e006dfb8d48f3fcfef47e86a79e0e273f21ddcc','jpg',NULL),(28,1,128888,1498461849,1,0,'1a923cfff0b9b13ea12980b0eccbe104890d837c10fae72506b6c5574224ed88','20130315045549182.jpg','20170626/07f58e217a49a3345faa09dc6246d3ff.jpg','1a923cfff0b9b13ea12980b0eccbe104','7f32b0ec9064e5f2568d120cf85bf7651306f04d','jpg',NULL),(29,1,128888,1498461858,1,0,'1a923cfff0b9b13ea12980b0eccbe104890d837c10fae72506b6c5574224ed88','20130315045549182.jpg','20170626/ea2af416ed39669e22f66c076f948390.jpg','1a923cfff0b9b13ea12980b0eccbe104','7f32b0ec9064e5f2568d120cf85bf7651306f04d','jpg',NULL),(30,1,117293,1498461902,1,0,'8e910c78466978b1530cfdf073fe86a2424c4f289122c870c69fb8bd66d007a0','20130315045549561.jpg','20170626/285b8fbe501326b029dbf3cf03a4604e.jpg','8e910c78466978b1530cfdf073fe86a2','3ab7c7ff755a92a313788c5e3e95e1ffc2ee7d45','jpg',NULL),(31,1,105799,1498462230,1,0,'a21e0da3c8e894ccfc07469528284a5a26e761333159aff0218fc757d17047c7','20130315045549404.jpg','20170626/fe3a17a8903cb7c61cac0c30bdd1c553.jpg','a21e0da3c8e894ccfc07469528284a5a','fbb98cacf48c7556a9c2e0ab2101b769a7b1e454','jpg',NULL),(32,1,129628,1498462558,1,0,'bdf8b0e14839a5a7192fed3cec3d2697f57751480d18e3adf40f47a2d6f08dfd','20130315045550457.jpg','20170626/c1c0b02dd7eec2ca9c8c3f5a11be1c0c.jpg','bdf8b0e14839a5a7192fed3cec3d2697','d27aff11ab911fcf110b948214798768d3beaa5b','jpg',NULL),(33,1,111937,1498462618,1,0,'6b565a010937a93f5afedf86384a37bbdef25096b4a03442e5b84460f106f36a','20130315045550625.jpg','20170626/78dc6c9dd7b76dfcd5d3d08a42d91390.jpg','6b565a010937a93f5afedf86384a37bb','887c1af9bb57805f7f5642448bb8dda236dda50a','jpg',NULL),(34,1,125472,1498462780,1,0,'4376e38a35fd99354661df44207265ed2326b9e4e1d6cff25fd8101bf1b8a7d9','20130315045551419.jpg','20170626/901a24ecd9370edd73eb615f9575786a.jpg','4376e38a35fd99354661df44207265ed','1da3258b0aa7d410ba4ecbf763c2ca30265bf443','jpg',NULL),(35,1,125472,1498462801,1,0,'4376e38a35fd99354661df44207265ed2326b9e4e1d6cff25fd8101bf1b8a7d9','20130315045551419.jpg','20170626/db19db4965daf550cec7b13b9aa09d07.jpg','4376e38a35fd99354661df44207265ed','1da3258b0aa7d410ba4ecbf763c2ca30265bf443','jpg',NULL),(36,1,991354,1498523675,1,0,'80f37f9613a5fcb77579e0058fe9bc746dbc172acf19f5f7ccc0ad8c06402a47','20141222031838375.jpg','20170627\\c28e683ea81a4a3e54a7cfef03d7cd17.jpg','80f37f9613a5fcb77579e0058fe9bc74','b540f36ce473963fda553aac8f8aecc87133c4f2','jpg',NULL),(37,1,1010994,1498527179,1,0,'64f8c83b3e0c7926298bb056b1a15ac50f59ddc4b91b8e2b11a50a46d1844676','20141222031756412.jpg','20170627/7430c04307be54a3c87f35c3e035b5a1.jpg','64f8c83b3e0c7926298bb056b1a15ac5','f2bfd24c8b50e4c7d7387e4868611949e616e874','jpg',NULL),(38,1,914562,1498527303,1,0,'df65b395135654384e1e34ddb7c66a2b85fcd93aa75651f0dd50d98334d6e5fc','20141222031905357.jpg','20170627/643131b181843ca979ac4469b3a5c0cc.jpg','df65b395135654384e1e34ddb7c66a2b','7f96d3d5cde4d7633af3563e8f24b5bcb0268f09','jpg',NULL),(39,1,75748,1498548152,1,0,'89167c9ac961e1645461eb74dbd226029bc160b5dfadf9f916dcf964b94a2e8d','20120614105209514.jpg','20170627/6c7aaa08c6c2874dc367dffbb7838e75.jpg','89167c9ac961e1645461eb74dbd22602','de50b1d5a4cb0bb904d37b2c663fb1a68811f44c','jpg',NULL),(40,1,13011,1498548201,1,0,'4a0ef2dd635ada8dcafb63db3c93826fe579014d1c071fc718bc2957857d6280','20120612035007488.jpg','20170627\\451ea1d1f4bc2de8e15d7a860767e604.jpg','4a0ef2dd635ada8dcafb63db3c93826f','b4accbb39325e50020de93eb23839d9f13bfa779','jpg',NULL),(41,1,77011,1498548412,1,0,'00c5add88b0f1a6bb6c646830c5c1237d7b6ff3cebad87d34f11d14974b774ad','gaoxinjishu.jpg','20170627/dd7340c95be9691c69ff4dec35ad00d6.jpg','00c5add88b0f1a6bb6c646830c5c1237','6236db1244503d2975415b306c356cf4c14194ae','jpg',NULL),(42,1,171062,1498548450,1,0,'ad5b62ad332fe3f34a5d3d9a792ebd1257ebfffe8c22eed1d58afaa863e47e56','zhengshu.jpg','20170627/f78850babfe3f6c55c4ddb316b2dcebf.jpg','ad5b62ad332fe3f34a5d3d9a792ebd12','e9b1d65fcd39a4c5b41be7202031a9a60ba415d1','jpg',NULL),(43,1,170354,1498548800,1,0,'9cb39aa9c738334ef3e0bf70f430c3c9a58844f21005f98bb4347a2b35a0397d','lishidanwei.png','20170627/e0a6d8861f03874ad330ce818c0de829.png','9cb39aa9c738334ef3e0bf70f430c3c9','67f172ae44cae9b82cb17ac34320eab871552926','png',NULL),(44,1,686098,1498548835,1,0,'b0dc1fcc19b9dcfa4560160c5039f72526d64f8a9de235a6207d1fcff8ccda58','xitongjicheng_1.jpg','20170627/bfb7ddead5add7ab10e7258af1362f66.jpg','b0dc1fcc19b9dcfa4560160c5039f725','9af9939014d7724df80208b9a9872266b3eb9deb','jpg',NULL),(45,1,182063,1498548864,1,0,'a8e2557a20fef521905bb349a0ec3e6a8b268619d343ea8d4897a78f6fcbd9de','xitongjicheng.png','20170627/d9e7a6b1fb49ba7bd00dfd5a23f81c26.png','a8e2557a20fef521905bb349a0ec3e6a','1e8936ad39c0597fec940b3333ae4b8fb0bd1a2c','png',NULL),(46,1,158586,1498548890,1,0,'10d2d1421fe0c4718efd9e83a467c51805f0c398ff658e603a621d81842fc398','cofa.png','20170627/bc43ad738a3479ab5f459747d772af05.png','10d2d1421fe0c4718efd9e83a467c518','48c914308dfae22b82e6caacf0117909a3578e76','png',NULL),(47,1,97526,1498548906,1,0,'aa065ec20fd074b8e1ee47c3934fe36f5ec62d85c366af523d4a0a5cb5215b30','shangmaoliutong.png','20170627/4583e47b06fdf7a08013d61ab40df52c.png','aa065ec20fd074b8e1ee47c3934fe36f','38e6724da09ad39b1f742da96b2812c8ee6a6bb1','png',NULL),(48,1,149805,1498548922,1,0,'17270325a6555e222ff38cd03f01e5333e7161586c64bc3d1cace2fe7d7da371','scdians.png','20170627/c390b26c4cac044beca561b0d9191bc6.png','17270325a6555e222ff38cd03f01e533','6a160a24e5d2cb8f5ebd699be331ca6109515126','png',NULL),(49,1,115658,1498548937,1,0,'2da2c653030d9d5eaa73a74a712fdf4acc6b827e1bf2486380b5cf2742259a9a','sceca.png','20170627/a4d23ca7db0209d303d40ebf1825d92a.png','2da2c653030d9d5eaa73a74a712fdf4a','18ccac13c49a34e07bd86321b6d4fe60dd78b752','png',NULL),(50,1,121289,1498548952,1,0,'7787573dfef235fd2ebfd7943b0b996c5a23249f4fe700bcc735ec537c308a92','chengxingshijia.png','20170627/bfce55408d952446d45542faf29cc08f.png','7787573dfef235fd2ebfd7943b0b996c','1ecdfce2f1a9cd1d359c1a479ace8e468a1d5e81','png',NULL),(51,1,142452,1498548970,1,0,'8e40956d2a7731fbbf00057d86deba6a49d4f0742a06b0be55fb002e23d2c8dc','dianzixiehui.png','20170627/3609451fac378811e639f3cdaeab3fe1.png','8e40956d2a7731fbbf00057d86deba6a','e84c85636a02cd9a441e6b1036afe29493354e78','png',NULL),(52,1,54898,1498548983,1,0,'3d751fecfecb3620c8d6a53252ae1813667b0b40bdb8f68b7ace417c91a915b2','cnas11.png','20170627/23a12fc317664a24baf3ef4628c73ece.png','3d751fecfecb3620c8d6a53252ae1813','31a759bdf8726521c0c7ef439d3e71e3c7aae20e','png',NULL),(53,1,130159,1498548999,1,0,'a26af8b5e1dfb6201ded8de672250969160066f79d66d61a037af2fbdfd2fea3','myqy.png','20170627/d4edd5b75f50e9be962520d01a801d1e.png','a26af8b5e1dfb6201ded8de672250969','9d1fde241455615ad0c2c13d73e9ad46fa80fc85','png',NULL),(54,1,402079,1498550456,1,0,'40d73a478a1c1f21f53f9a0ce630f19c7a60acdd4b92f96e6aa087ab9afe2826','banner21.jpg','20170627/40e5b66fdd997b162a9b3065855f94b7.jpg','40d73a478a1c1f21f53f9a0ce630f19c','267158cbb7acc2e0dd08c396318480cecf0dc8e5','jpg',NULL),(55,1,326137,1498550526,1,0,'99f019ae010f8dd2242c63f47d88df82a099856a852c2f43965ff90bc74f3bdf','banner3.jpg','20170627/3ab3263df3ac3bf389201706a7a18a5d.jpg','99f019ae010f8dd2242c63f47d88df82','cbcba47d55ec962f29e062d35a0d7dc65c0d9e7d','jpg',NULL),(56,1,98944,1498554923,1,0,'d0fb7cf5fea62d47f731130e5e02541f258574f6987ec75aec5bf4158a1f95bc','{500E1832-2FD6-42E4-9557-87BDA6D69E32}.png','20170627/62dc4e42517b506d2c92333e0f43b16e.png','d0fb7cf5fea62d47f731130e5e02541f','3f9b5e7c20e8a4c20afc1e7e186c9bac4f45cea3','png',NULL),(57,1,1110,1498555296,1,0,'eaa46de19f22d84a4c2c86d0d2846cf6155c88dd6c305282f12d6cdeaf0bec21','tg_clients_2.gif','20170627/42da399fcbb8cd6de42f4ba8046bcd62.gif','eaa46de19f22d84a4c2c86d0d2846cf6','3b8ca631c621614bd0432b8478af23331f6a5d0f','gif',NULL),(58,1,2952,1498555308,1,0,'aacbfdcfba1a7fb33b2d691392ea8a07eff1efc846cdf3c467311296e0661619','tg_clients_1.gif','20170627/a60f63cbc4abf9458d2db5ebd030d9ba.gif','aacbfdcfba1a7fb33b2d691392ea8a07','d83fae3cddafd39d231235f564a57eb6b74b658d','gif',NULL),(59,1,3891,1498555342,1,0,'3ed7585da6738b8090a1b313296571f032c7305a1827f54cfef5417ab574b28e','tg_clients_4.gif','20170627/1149b3b4af2fa5b9a78644b2dca2be0a.gif','3ed7585da6738b8090a1b313296571f0','a77692642ab3d000e23be846495bca76d5784291','gif',NULL),(60,1,1248,1498555368,1,0,'b058f318639b5736b18f6c0b8bbbb1a6846f5ecab30b8c4dc15aaa74bf32b1f5','tg_clients_5.gif','20170627/a2b4df2308e11930f8dc1bee42756efd.gif','b058f318639b5736b18f6c0b8bbbb1a6','c844cefdb29cfccd5e53406e93dc1be650e48e58','gif',NULL),(61,1,3101,1498555380,1,0,'6d7151b8a24b3ac3969ac4c917496d719b6e477edffc7c97a393ff05888a9816','tg_clients_6.gif','20170627/76ed2ce2bdc4b3f12fee9748f09d4813.gif','6d7151b8a24b3ac3969ac4c917496d71','4095ffc78b8d9c13391355da7924b67e5e09de7f','gif',NULL),(62,1,2421,1498555745,1,0,'b9e9fd2d423d8b018381cb920e9f1c3259e4fdc11b5d96c7d734bbc4da600db1','tg_clients_7.gif','20170627/523a53b8acd3c14bb22775f137958e7b.gif','b9e9fd2d423d8b018381cb920e9f1c32','2ff9589986d53364a563b7ff933d5ba7a6dbc858','gif',NULL),(63,1,3499,1498555761,1,0,'f959221ae2a4536801f2a5d947b3c83abced80919af0c4df67d4c8d3a70e3e58','tg_clients_8.gif','20170627/48421ab662a7ce67e257ca1e9f00c099.gif','f959221ae2a4536801f2a5d947b3c83a','49eaf9113bb7805578d1ccb38cf005d8b06f3b1c','gif',NULL),(64,1,1321,1498555769,1,0,'c81558263d9f0bc3f0e100d3c8b7587001e8bd1ca999f453302b954b885f6c96','tg_clients_9.gif','20170627/e3c43f3ab0c9420cdef2a37360787357.gif','c81558263d9f0bc3f0e100d3c8b75870','d2609ebd5960b2a491a2f600133d5ed25df4e11a','gif',NULL),(65,1,4113,1498555786,1,0,'1f5f1f63f5d42e9ffcbfe46057a1e6eb3db9c19a52438e13816f005d812d11f0','tg_clients_10.gif','20170627/0ab1473b062f771662d37972049ee692.gif','1f5f1f63f5d42e9ffcbfe46057a1e6eb','a64d8f708261c029bc923e96f09e605e08af1e57','gif',NULL),(66,1,2214,1498555798,1,0,'d1a5f1b2fed4dbc359a98d2f387304f7a5215f557d8ca270da46e720cf623aba','tg_clients_11.gif','20170627/28ed82226c54744a862700c6a6e79d04.gif','d1a5f1b2fed4dbc359a98d2f387304f7','d1e81e1a85e26bcaa610991754d6b5a15fa4ab32','gif',NULL),(67,1,3580,1498555821,1,0,'2ac2d41f46b8f84c8aa4ec21e5974e5f6e3cbc9af8870413a9b88f3794b14cac','tg_clients_13.gif','20170627/53eebda6aad2f816f69a3d8e626cb55d.gif','2ac2d41f46b8f84c8aa4ec21e5974e5f','33a5a67468d7c3f9c447c619fa716afd1b502c54','gif',NULL),(68,1,13725,1498555845,1,0,'171292e98b485075e6d132e451eafc616506abb8ce187f2b5672f86740192d24','20111018015501159.jpg','20170627/91c931333b3dd40c01842481c8f4e31c.jpg','171292e98b485075e6d132e451eafc61','21ff6de97a98c6c9451da27ccf2db2785b49bc5d','jpg',NULL),(69,1,3529,1498555856,1,0,'43d5d07f6dc58d80df9dbff1b37ec68f1f229ea59ff6896de330479d7da08565','tg_clients_15.gif','20170627/fdfc8b923047aab6c1c895998a02f243.gif','43d5d07f6dc58d80df9dbff1b37ec68f','0ab36e284ac9c64ebb2c272d046ee37bf6c47c2e','gif',NULL),(70,1,2894,1498555870,1,0,'e21fec5e4cb6c633c90070bb0a20dcc915b5f1129ee1de71d8bdc7eca45738cd','tg_clients_16.gif','20170627/46d17f34d17f9b8f133c94cdb32b8f5e.gif','e21fec5e4cb6c633c90070bb0a20dcc9','eddf36e7598006b4375e02e0191426c52e43f4df','gif',NULL),(71,1,3220,1498555889,1,0,'42025dcbcf571108c12562e3c3689504db4e1504c6045a17d91f6d27635590f0','tg_clients_17.gif','20170627/f722e60ddf08e9edd66d57ce0a3b1912.gif','42025dcbcf571108c12562e3c3689504','d25619e232b6a92e9adda54259e5bba897ea5d90','gif',NULL),(72,1,2602,1498555915,1,0,'aeabc39ce28eabfc82ddb3b9165815ecb49b7bc5a5dc8c9d5b14802d503b63ff','tg_clients_18.gif','20170627/e8e70b5f82da732ad4fe61c6801135e2.gif','aeabc39ce28eabfc82ddb3b9165815ec','d1ae087df2c3a20b55e05c707584f0873d703014','gif',NULL),(73,1,18341,1498555923,1,0,'c1aee21be2bd191e626924fc9f8d31adbe4e1c156187016dfdece654989d5ffd','20111018015214435.jpg','20170627/70b5fec6e7365bcaa0a9ec61c7c5ea1a.jpg','c1aee21be2bd191e626924fc9f8d31ad','301d04e49dadb39d1fd8a1b97e021cc218a6598b','jpg',NULL),(74,1,15300,1498555929,1,0,'e0e6233e5724f42523cf856b5a5fbe4171adc07a727f0869c87716473bd2718d','20111018015351922.jpg','20170627/74c2b60d7e6036d74b3b9619b077181a.jpg','e0e6233e5724f42523cf856b5a5fbe41','d8a5c9e88063525f9f9de0bd6a5a82d28cfe90ce','jpg',NULL),(75,1,4159,1498555946,1,0,'656b3f952bebe8da404dd05b37fda653db8e05d64704056add827205ad0d1ffd','tg_clients_14.gif','20170627/231127e2f680d9a3a350f5c8db4c51b2.gif','656b3f952bebe8da404dd05b37fda653','e8b7bc8005b162d426d30da1acf45c6deb80b1f7','gif',NULL),(76,1,3277,1498556004,1,0,'4a3e058034947f7c7b8301ac940b4bf6b0b6bf4c1e50bf0b57b9c331daef63ce','qhtf.jpg','20170627/cc64db98e4d5edfeabae5cd3291f8a2d.jpg','4a3e058034947f7c7b8301ac940b4bf6','0051baaac6923634aa1a95156315a7c2a82057bf','jpg',NULL),(77,1,79420,1498609873,1,0,'c4d367e12d13fd7745ce8d4c629995010c4c2ba5b8a8e52f32b04dfd93e14778','{A9F8D48A-4C3E-4201-8BA8-DE93AAAB1055}.png','20170628/1b2a1444ca536a9a7271ba665399adcc.png','c4d367e12d13fd7745ce8d4c62999501','5403237908b225b0c53ef9db2af6d2db57e09465','png',NULL),(78,1,274230,1498613015,1,0,'46490490af65133fc5e6186ab21c8b373e4114e164416b7f131ff94b866f0751','aa.jpg','20170628\\b9529ffa0d301499c381f569ef2b9d7f.jpg','46490490af65133fc5e6186ab21c8b37','8bfdebe0f5384e17616ae71a9e36de8d9b84fb7a','jpg',NULL),(79,1,740900,1498613807,1,0,'637cd6f873aa42bfcbdf0a2553c30533ffda79386b86b3b7a30991a1b1a9c7fe','{FA3F14F8-05A8-45BE-8CE0-4E67F70A572C}.png','20170628\\c20b67090404c34a42be9bb9cd2d5395.png','637cd6f873aa42bfcbdf0a2553c30533','711d32a56761158a529652f52ef96acee1d3a1b8','png',NULL),(80,1,9359,1498628776,1,0,'d7412c56c0807da65549da2597acff36d1434fad1edc9839965fbdb817ab860a','BHGvxGuvxeKdLNglDkhT+K8AAAuClQBfl5pAAAAAASUVORK5CYII=.png','20170628\\92ecf979eea905e267522c5a5353fd2b.png','d7412c56c0807da65549da2597acff36','4748e2de29c052df7950bbe469f61476d993b1f8','png',NULL),(81,1,8051,1498629283,1,0,'95a6a318888ec08814db4881dabfdafa627f093a209231fdd8cdc8fb951a7748','L8AA2AwQkH9q9TMAAAAASUVORK5CYII=.png','20170628\\bc5415c3ce0ff16238423174a0e5d090.png','95a6a318888ec08814db4881dabfdafa','ed6a34e53ee043e20fe7e8ec29003f16048593e3','png',NULL),(82,1,124175,1499065450,1,0,'f1db4c433f4f57f8c3587aa74bdd090ed52c23ef57723f2c0ed049eb25d5f0e9','xx.jpg','20170703/cc638a238a655ff869c5b17bde181d20.jpg','f1db4c433f4f57f8c3587aa74bdd090e','14bda83f86e809ead58b3de8b87a60f1e9630270','jpg',NULL),(83,1,589746,1499133660,1,0,'7a0495c2433208a3856a0444ff43d01c05e61f980364ca167aca028b95b436f0','{760555FD-A137-4B15-9BC2-63353589F9B1}.png','20170704/b4ab72cad449efa51187e1f5b33f4641.png','7a0495c2433208a3856a0444ff43d01c','ff574b182ec9993707c122b3eba8f98a9113aef4','png',NULL),(84,1,191549,1499219791,1,0,'591706219c43dff262f8019f1b30263092e7cd8bae5c4381b71a208cf52be353','{9F811676-C884-456D-A9E8-A183EFDF355F}.png','20170705/32d1538d61bc4d89860e9b48c640dbdc.png','591706219c43dff262f8019f1b302630','02160388f61b810be7d07c83819991fb2e3f5b90','png',NULL),(85,1,48925,1510211677,1,0,'0cecc71277f590b8c13d4723745df4a4bf56a5039704b1c7b8de61bd5f625ed3','030619512M3.jpg','20171109\\75ed4c5f864ec09c02862f4c97f17417.jpg','0cecc71277f590b8c13d4723745df4a4','29aad7caddf6dfca6a80606a5638f660af23be48','jpg',NULL),(86,1,7794,1510219713,1,0,'30fc762d1d4f66fd3d29f90bc3e008e2245255504463cef9c6a287a8683d6174','1.jpg','20171109\\ebc9fb0a64e1ddc3715cb848fc17d3e4.jpg','30fc762d1d4f66fd3d29f90bc3e008e2','6838ab7ecf0f8e4657aad451af59162beb3c1a7c','jpg',NULL);

/*Table structure for table `rp_category` */

DROP TABLE IF EXISTS `rp_category`;

CREATE TABLE `rp_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '深度',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '类型 0内部栏目 1单网页 2外部链接',
  `model_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '模型ID',
  `url` char(100) NOT NULL DEFAULT '' COMMENT '链接地址',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序（同级有效）',
  `is_nav` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否在导航显示',
  `hide` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否隐藏',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;

/*Data for the table `rp_category` */

/*Table structure for table `rp_config` */

DROP TABLE IF EXISTS `rp_config`;

CREATE TABLE `rp_config` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL COMMENT '配置名',
  `option_value` longtext NOT NULL COMMENT '配置值',
  `autoload` int(2) NOT NULL DEFAULT '1' COMMENT '是否自动加载',
  `option_lang` varchar(10) NOT NULL DEFAULT 'zh-cn',
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='全站配置表';

/*Data for the table `rp_config` */

insert  into `rp_config`(`option_id`,`option_name`,`option_value`,`autoload`,`option_lang`) values (1,'site_options','{\"site_name\":\"\\u4efb\\u9e4f\",\"site_keywords\":\"\\u4efb\\u9e4f\\u4e2a\\u4eba\\u7f51\\u7ad9\",\"site_desc\":\"\\u4efb\\u9e4f\\u4e2a\\u4eba\\u7f51\\u7ad9\",\"site_phone\":\"0000000\",\"site_QQ\":\"18382106376\",\"site_copy\":\"\\u4efb\\u9e4f\",\"site_login_bg\":\"\",\"site_beian\":\"\\u4efb\\u9e4f\\u4e2a\\u4eba\\u7f51\\u7ad9\"}',1,'zh-cn');

/*Table structure for table `rp_link` */

DROP TABLE IF EXISTS `rp_link`;

CREATE TABLE `rp_link` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL,
  `create_time` int(10) NOT NULL,
  `update_time` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `rp_link` */

insert  into `rp_link`(`id`,`title`,`url`,`create_time`,`update_time`,`status`) values (1,'个人博客地址','http://www.cnblogs.com/RPmorning/',1510215625,1510215625,1),(2,'个人Github地址','https://github.com/RPmorning',1510215647,1510215647,1),(3,'烧IT','http://www.shaoit.com/',1510215670,1510215670,1);

/*Table structure for table `rp_member` */

DROP TABLE IF EXISTS `rp_member`;

CREATE TABLE `rp_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` char(16) NOT NULL COMMENT '用户名',
  `password` char(32) NOT NULL COMMENT '密码',
  `realname` char(16) NOT NULL DEFAULT '' COMMENT '人员名称',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '性别',
  `qq` char(10) DEFAULT NULL COMMENT 'qq号',
  `position` varchar(20) DEFAULT NULL COMMENT '职务',
  `desc` varchar(250) DEFAULT NULL COMMENT '人员描述',
  `mobile_phone` char(15) DEFAULT NULL COMMENT '移动电话',
  `office_phone` char(20) DEFAULT NULL COMMENT '办公电话',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '用户状态',
  `reg_ip` bigint(20) NOT NULL DEFAULT '0' COMMENT '注册IP',
  `reg_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '注册时间',
  `last_login_ip` bigint(20) NOT NULL DEFAULT '0' COMMENT '最后登录IP',
  `last_login_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='会员表';

/*Data for the table `rp_member` */

insert  into `rp_member`(`id`,`username`,`password`,`realname`,`sex`,`qq`,`position`,`desc`,`mobile_phone`,`office_phone`,`status`,`reg_ip`,`reg_time`,`last_login_ip`,`last_login_time`) values (1,'renpeng','1396b883c3efd35a0269907e02421437','超级管理员',0,'513494629','IT工程师','帅','18382106376','',1,3232238869,1494378129,2130706433,1511253316);

/*Table structure for table `rp_menu` */

DROP TABLE IF EXISTS `rp_menu`;

CREATE TABLE `rp_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '深度',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序（同级有效）',
  `url` char(100) NOT NULL DEFAULT '' COMMENT '链接地址',
  `tip` varchar(255) NOT NULL DEFAULT '' COMMENT '提示',
  `icon` varchar(100) NOT NULL DEFAULT '' COMMENT '图标',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`),
  KEY `pid` (`pid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

/*Data for the table `rp_menu` */

insert  into `rp_menu`(`id`,`name`,`pid`,`level`,`sort`,`url`,`tip`,`icon`,`status`) values (1,'系统管理',0,1,1,'admin/index/index','0','icon-system',1),(2,'网站配置',1,2,2,'admin/config/index','0','icon-member',1),(3,'用户管理',1,2,3,'admin/member/index','0','icon-content',1),(4,'内容管理',0,1,4,'admin/portal/index','0','icon-system',1),(6,'产品中心',4,2,6,'admin/product/index','0','icon-web',1),(9,'友情链接',4,2,9,'admin/link/index','0','icon-web',1),(7,'文章中心',4,2,7,'admin/article/index','0','icon-web',1),(8,'单页管理',4,2,8,'admin/page/index','0','icon-system',1),(5,'栏目管理',4,2,5,'admin/category/index','0','icon-auth',1);

/*Table structure for table `rp_page` */

DROP TABLE IF EXISTS `rp_page`;

CREATE TABLE `rp_page` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` longtext NOT NULL,
  `create_time` int(10) NOT NULL,
  `update_time` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `rp_page` */

/*Table structure for table `rp_product` */

DROP TABLE IF EXISTS `rp_product`;

CREATE TABLE `rp_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `p_title` varchar(30) NOT NULL,
  `category_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cover` varchar(100) NOT NULL DEFAULT '""',
  `description` varchar(200) NOT NULL DEFAULT '""',
  `p_text` longtext NOT NULL,
  `create_time` int(10) NOT NULL,
  `update_time` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `rp_product` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;