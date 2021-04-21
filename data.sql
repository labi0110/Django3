-- MySQL dump 10.13  Distrib 8.0.23, for osx10.16 (x86_64)
--
-- Host: localhost    Database: security_web_db
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add blog category',7,'add_blogcategory'),(26,'Can change blog category',7,'change_blogcategory'),(27,'Can delete blog category',7,'delete_blogcategory'),(28,'Can view blog category',7,'view_blogcategory'),(29,'Can add blog',8,'add_blog'),(30,'Can change blog',8,'change_blog'),(31,'Can delete blog',8,'delete_blog'),(32,'Can view blog',8,'view_blog'),(33,'Can add read num',9,'add_readnum'),(34,'Can change read num',9,'change_readnum'),(35,'Can delete read num',9,'delete_readnum'),(36,'Can view read num',9,'view_readnum'),(37,'Can add read num',10,'add_readnum'),(38,'Can change read num',10,'change_readnum'),(39,'Can delete read num',10,'delete_readnum'),(40,'Can view read num',10,'view_readnum'),(41,'Can add read detail',11,'add_readdetail'),(42,'Can change read detail',11,'change_readdetail'),(43,'Can delete read detail',11,'delete_readdetail'),(44,'Can view read detail',11,'view_readdetail'),(45,'Can add comment',12,'add_comment'),(46,'Can change comment',12,'change_comment'),(47,'Can delete comment',12,'delete_comment'),(48,'Can view comment',12,'view_comment'),(49,'Can add likes record',13,'add_likesrecord'),(50,'Can change likes record',13,'change_likesrecord'),(51,'Can delete likes record',13,'delete_likesrecord'),(52,'Can view likes record',13,'view_likesrecord'),(53,'Can add likes count',14,'add_likescount'),(54,'Can change likes count',14,'change_likescount'),(55,'Can delete likes count',14,'delete_likescount'),(56,'Can view likes count',14,'view_likescount'),(57,'Can add profile',15,'add_profile'),(58,'Can change profile',15,'change_profile'),(59,'Can delete profile',15,'delete_profile'),(60,'Can view profile',15,'view_profile');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$216000$ZMNYYNg16sQe$/ZUJ29EGJoaFZ7clIu+i3LeZz0HhrYCmiwpMEylJG+U=','2021-03-20 15:24:46.000000',1,'jiayue.liang','','','jiayue0110@yahoo.co.jp',1,1,'2020-12-22 13:28:54.000000'),(2,'pbkdf2_sha256$216000$PbpZuOp399dg$fUxBZkE7Dr/754hTEoJBdeMua+1fi61bDarjsxhkjpo=','2021-01-20 14:50:14.000000',0,'jiayue','','','',0,1,'2021-01-20 14:50:14.000000'),(3,'pbkdf2_sha256$216000$sLKIy2jNBCUb$Hy0jXLEDYormFQaj/zhKsQEX35FC9SjiHRpw+qrJkJ0=','2021-03-03 15:34:15.216000',0,'labi0110','','','jiayue0110@gmail.com',0,1,'2021-02-27 13:39:41.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_blog`
--

DROP TABLE IF EXISTS `blog_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_blog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `last_updated_time` datetime(6) NOT NULL,
  `author_id` int NOT NULL,
  `blog_category_id` int NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_blog_author_id_8791af69_fk_auth_user_id` (`author_id`),
  KEY `blog_blog_blog_category_id_570a3b98_fk_blog_blogcategory_id` (`blog_category_id`),
  CONSTRAINT `blog_blog_author_id_8791af69_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `blog_blog_blog_category_id_570a3b98_fk_blog_blogcategory_id` FOREIGN KEY (`blog_category_id`) REFERENCES `blog_blogcategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_blog`
--

LOCK TABLES `blog_blog` WRITE;
/*!40000 ALTER TABLE `blog_blog` DISABLE KEYS */;
INSERT INTO `blog_blog` VALUES (2,'<p><strong>XXX</strong></p>','2020-12-22 14:05:44.985000','2021-01-11 13:41:51.184000',1,1,'One'),(3,'11','2020-12-23 15:31:31.613000','2020-12-23 15:31:31.613000',1,1,'22'),(4,'name = models.CharField(max_length=50)\r\n执行：python manage.py makemirations出现以下错误：\r\n\r\n\r\nYou are trying to add a non-nullable field \'name\' to contact without a default; we can\'t do that (the database needs something to populate existing rows).\r\nPlease select a fix:\r\n 1) Provide a one-off default now (will be set on all existing rows with a null value for this column)\r\n 2) Quit, and let me add a default in models.py\r\nSelect an option: \r\n\r\n\r\n解决方法：\r\n先给\'name\'任意初始值：name = models.CharField(max_length=50, default=\'abc\')\r\n然后执行：python manage.py makemirations\r\n再执行：python manage.py migrate\r\n\r\n\r\n再将default删去，即执行：name = models.CharField(max_length=50)\r\n执行：python manage.py makemirations\r\n再执行：python manage.py migrate\r\n\r\n\r\n解决！\r\n\r\n\r\n\r\n注意：在开发过程中，数据库同步误操作之后，难免会遇到后面不能同步成功的情况，解决这个问题的一个简单粗暴方法是把migrations目录下的脚本（除__init__.py之外）全部删掉，再把数据库删掉之后创建一个新的数据库，数据库同步操作再重新做一遍。','2020-12-24 14:19:06.018000','2020-12-24 14:19:06.018000',1,1,'长博客'),(5,'XXXXXXXXXXX','2020-12-25 16:34:25.764000','2020-12-25 16:34:25.764000',1,1,'测试科普'),(6,'aaaa','2020-12-25 16:35:08.902000','2020-12-25 16:35:08.903000',1,2,'测试科普2'),(7,'xxxxxxxxxxxxxxxxxxx','2021-01-04 15:04:17.287000','2021-01-04 15:04:17.287000',1,1,'shell模式下创建的标题'),(8,'xxx* 1','2021-01-04 15:37:54.096000','2021-01-04 15:37:54.096000',1,1,'shell下的第1篇文章'),(9,'xxx* 2','2021-01-04 15:37:54.103000','2021-01-04 15:37:54.103000',1,1,'shell下的第2篇文章'),(10,'xxx* 3','2021-01-04 15:37:54.106000','2021-01-04 15:37:54.106000',1,1,'shell下的第3篇文章'),(11,'xxx* 4','2021-01-04 15:37:54.108000','2021-01-04 15:37:54.108000',1,1,'shell下的第4篇文章'),(12,'xxx* 5','2021-01-04 15:37:54.111000','2021-01-04 15:37:54.111000',1,1,'shell下的第5篇文章'),(13,'xxx* 6','2021-01-04 15:37:54.120000','2021-01-04 15:37:54.120000',1,1,'shell下的第6篇文章'),(14,'xxx* 7','2021-01-04 15:37:54.123000','2021-01-04 15:37:54.123000',1,1,'shell下的第7篇文章'),(15,'xxx* 8','2021-01-04 15:37:54.126000','2021-01-04 15:37:54.126000',1,1,'shell下的第8篇文章'),(16,'xxx* 9','2021-01-04 15:37:54.129000','2021-01-04 15:37:54.129000',1,1,'shell下的第9篇文章'),(17,'xxx* 10','2021-01-04 15:37:54.131000','2021-01-04 15:37:54.131000',1,1,'shell下的第10篇文章'),(18,'xxx* 11','2021-01-04 15:37:54.133000','2021-01-04 15:37:54.133000',1,1,'shell下的第11篇文章'),(19,'xxx* 12','2021-01-04 15:37:54.135000','2021-01-04 15:37:54.135000',1,1,'shell下的第12篇文章'),(20,'xxx* 13','2021-01-04 15:37:54.137000','2021-01-04 15:37:54.137000',1,1,'shell下的第13篇文章'),(21,'xxx* 14','2021-01-04 15:37:54.139000','2021-01-04 15:37:54.139000',1,1,'shell下的第14篇文章'),(22,'xxx* 15','2021-01-04 15:37:54.142000','2021-01-04 15:37:54.142000',1,1,'shell下的第15篇文章'),(23,'xxx* 16','2021-01-04 15:37:54.144000','2021-01-04 15:37:54.144000',1,1,'shell下的第16篇文章'),(24,'xxx* 17','2021-01-04 15:37:54.146000','2021-01-04 15:37:54.146000',1,1,'shell下的第17篇文章'),(25,'xxx* 18','2021-01-04 15:37:54.148000','2021-01-04 15:37:54.148000',1,1,'shell下的第18篇文章'),(26,'xxx* 19','2021-01-04 15:37:54.151000','2021-01-04 15:37:54.151000',1,1,'shell下的第19篇文章'),(27,'xxx* 20','2021-01-04 15:37:54.153000','2021-01-04 15:37:54.153000',1,1,'shell下的第20篇文章'),(28,'xxx* 21','2021-01-04 15:37:54.155000','2021-01-04 15:37:54.155000',1,1,'shell下的第21篇文章'),(29,'xxx* 22','2021-01-04 15:37:54.156000','2021-01-04 15:37:54.157000',1,1,'shell下的第22篇文章'),(30,'xxx* 23','2021-01-04 15:37:54.158000','2021-01-04 15:37:54.158000',1,1,'shell下的第23篇文章'),(31,'xxx* 24','2021-01-04 15:37:54.160000','2021-01-04 15:37:54.160000',1,1,'shell下的第24篇文章'),(32,'xxx* 25','2021-01-04 15:37:54.161000','2021-01-04 15:37:54.161000',1,1,'shell下的第25篇文章'),(33,'xxx* 26','2021-01-04 15:37:54.163000','2021-01-04 15:37:54.163000',1,1,'shell下的第26篇文章'),(34,'xxx* 27','2021-01-04 15:37:54.165000','2021-01-04 15:37:54.165000',1,1,'shell下的第27篇文章'),(35,'xxx* 28','2021-01-04 15:37:54.166000','2021-01-04 15:37:54.166000',1,1,'shell下的第28篇文章'),(36,'xxx* 29','2021-01-04 15:37:54.168000','2021-01-04 15:37:54.168000',1,1,'shell下的第29篇文章');
/*!40000 ALTER TABLE `blog_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_blogcategory`
--

DROP TABLE IF EXISTS `blog_blogcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_blogcategory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_blogcategory`
--

LOCK TABLES `blog_blogcategory` WRITE;
/*!40000 ALTER TABLE `blog_blogcategory` DISABLE KEYS */;
INSERT INTO `blog_blogcategory` VALUES (1,'新闻'),(2,'科普'),(3,'其他');
/*!40000 ALTER TABLE `blog_blogcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_comment`
--

DROP TABLE IF EXISTS `comment_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment_comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `object_id` int unsigned NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_date` datetime(6) NOT NULL,
  `content_type_id` int NOT NULL,
  `user_id` int NOT NULL,
  `parent_id` int DEFAULT NULL,
  `reply_to_id` int DEFAULT NULL,
  `root_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_comment_user_id_6078e57b_fk_auth_user_id` (`user_id`),
  KEY `comment_comment_content_type_id_fbfb9793_fk_django_co` (`content_type_id`),
  KEY `comment_comment_parent_id_b612524c_fk_comment_comment_id` (`parent_id`),
  KEY `comment_comment_reply_to_id_e0adcef8_fk_auth_user_id` (`reply_to_id`),
  KEY `comment_comment_root_id_28721811_fk_comment_comment_id` (`root_id`),
  CONSTRAINT `comment_comment_content_type_id_fbfb9793_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `comment_comment_parent_id_b612524c_fk_comment_comment_id` FOREIGN KEY (`parent_id`) REFERENCES `comment_comment` (`id`),
  CONSTRAINT `comment_comment_reply_to_id_e0adcef8_fk_auth_user_id` FOREIGN KEY (`reply_to_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `comment_comment_root_id_28721811_fk_comment_comment_id` FOREIGN KEY (`root_id`) REFERENCES `comment_comment` (`id`),
  CONSTRAINT `comment_comment_user_id_6078e57b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `comment_comment_chk_1` CHECK ((`object_id` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_comment`
--

LOCK TABLES `comment_comment` WRITE;
/*!40000 ALTER TABLE `comment_comment` DISABLE KEYS */;
INSERT INTO `comment_comment` VALUES (6,37,'123','2021-01-17 13:13:34.606000',8,1,NULL,NULL,NULL),(7,37,'xxxx','2021-01-17 13:44:53.826000',8,1,NULL,NULL,NULL),(8,35,'xx','2021-01-22 18:38:56.009000',8,1,NULL,NULL,NULL),(9,35,'xxx','2021-01-23 17:26:30.683000',8,1,NULL,NULL,NULL),(10,35,'xxx','2021-01-23 17:26:33.432000',8,1,NULL,NULL,NULL),(11,35,'<p>xxx</p>','2021-01-24 10:59:23.347000',8,1,NULL,NULL,NULL),(12,35,'<p>abc</p>','2021-01-24 10:59:42.604000',8,1,NULL,NULL,NULL),(13,35,'<p>xx</p>','2021-01-24 11:05:49.375000',8,1,NULL,NULL,NULL),(14,35,'<p>xxx</p>','2021-01-24 11:46:11.343000',8,1,NULL,NULL,NULL),(15,35,'<p>xxx</p>','2021-01-24 11:49:54.200000',8,1,NULL,NULL,NULL),(16,35,'<p>xxx</p>','2021-01-24 12:03:22.827000',8,1,NULL,NULL,NULL),(17,35,'<p>12343</p>','2021-01-24 12:18:58.500000',8,1,NULL,NULL,NULL),(18,35,'<p>12343</p>','2021-01-24 12:19:03.954000',8,1,NULL,NULL,NULL),(19,35,'<p>xxx</p>','2021-01-24 12:33:08.191000',8,1,NULL,NULL,NULL),(20,35,'<p>xxx</p>','2021-01-24 12:33:18.530000',8,1,NULL,NULL,NULL),(21,35,'<p>xxx</p>','2021-01-24 12:33:25.057000',8,1,NULL,NULL,NULL),(22,35,'<p>xxx</p>','2021-01-24 12:33:28.687000',8,1,NULL,NULL,NULL),(23,35,'<p>xxx</p>','2021-01-24 12:33:36.701000',8,1,NULL,NULL,NULL),(24,35,'<p>xxx</p>','2021-01-24 12:33:55.968000',8,1,NULL,NULL,NULL),(25,35,'<p>xxx</p>','2021-01-24 12:38:12.855000',8,1,NULL,NULL,NULL),(26,35,'<p>xxx</p>','2021-01-24 12:38:56.625000',8,1,NULL,NULL,NULL),(27,35,'<p>xxx</p>','2021-01-24 12:45:02.344000',8,1,NULL,NULL,NULL),(28,35,'<p>xxx</p>','2021-01-24 12:45:04.857000',8,1,NULL,NULL,NULL),(29,35,'<p>xxx</p>','2021-01-24 12:51:12.668000',8,1,NULL,NULL,NULL),(30,35,'<p>xxx</p>','2021-01-24 12:51:37.161000',8,1,NULL,NULL,NULL),(31,36,'<p>zxx</p>','2021-01-24 13:08:20.131000',8,1,NULL,NULL,NULL),(32,36,'<p>zxx</p>','2021-01-24 13:11:21.640000',8,1,NULL,NULL,NULL),(33,36,'<p>avc</p>','2021-01-24 14:24:41.001000',8,1,NULL,NULL,NULL),(34,36,'<p>123avc</p>','2021-01-24 14:28:00.525000',8,1,NULL,NULL,NULL),(35,35,'<p>xxxx</p>','2021-01-24 14:29:01.234000',8,1,NULL,NULL,NULL),(36,35,'<p>avx</p>','2021-01-24 14:37:08.679000',8,1,NULL,NULL,NULL),(37,35,'<p>xxx</p>','2021-01-24 14:51:40.608000',8,1,NULL,NULL,NULL),(38,35,'<p>1234578</p>','2021-01-24 14:51:54.605000',8,1,NULL,NULL,NULL),(39,35,'<p>1234578</p>','2021-01-24 14:53:22.645000',8,1,NULL,NULL,NULL),(40,35,'<p>xx</p>','2021-01-24 15:06:01.581000',8,1,NULL,NULL,NULL),(41,35,'<p>xx</p>','2021-01-24 15:08:20.608000',8,1,NULL,NULL,NULL),(42,35,'<p>xx</p>','2021-01-24 15:15:51.529000',8,1,NULL,NULL,NULL),(43,35,'<p>labi</p>','2021-01-24 15:16:23.084000',8,1,NULL,NULL,NULL),(44,35,'<p>xxx</p>','2021-01-24 15:21:35.094000',8,1,NULL,NULL,NULL),(45,35,'<p>xxx</p>','2021-01-24 15:23:13.033000',8,1,NULL,NULL,NULL),(46,35,'<p>xxx</p>','2021-01-24 15:26:30.295000',8,1,NULL,NULL,NULL),(47,35,'<p>xxx</p>','2021-01-25 14:57:58.588000',8,1,NULL,NULL,NULL),(48,35,'<p>xxx</p>','2021-01-25 15:01:22.450000',8,1,NULL,NULL,NULL),(49,35,'<p>xxx</p>','2021-01-25 15:02:03.893000',8,1,NULL,NULL,NULL),(50,35,'reply','2021-01-25 15:02:19.578000',8,1,43,1,43),(51,35,'<p>xx</p>','2021-01-28 15:06:07.316000',8,1,8,1,8),(52,35,'<p>123423</p>','2021-01-30 18:15:25.847000',8,1,51,1,8),(53,35,'<p>123423</p>','2021-01-30 18:15:27.686000',8,1,51,1,8),(54,35,'<p>123423</p>','2021-01-30 18:15:28.302000',8,1,51,1,8),(55,35,'<p>123423</p>','2021-01-30 18:15:30.620000',8,1,51,1,8),(56,35,'<p>123423</p>','2021-01-30 18:17:03.501000',8,1,51,1,8),(57,35,'<p>12344</p>','2021-01-30 18:17:08.676000',8,1,56,1,8),(58,33,'<p>123</p>','2021-02-01 15:59:48.154000',8,1,NULL,NULL,NULL),(59,36,'<p>第二条</p>\r\n\r\n<p>&nbsp;</p>','2021-02-01 16:16:35.630000',8,1,NULL,NULL,NULL),(60,36,'<p>dd</p>','2021-02-01 16:16:45.833000',8,1,59,1,59),(61,36,'<p>测试timestamp</p>','2021-02-02 14:52:15.232000',8,1,NULL,NULL,NULL),(62,36,'<p>继续测试timestamp</p>','2021-02-02 15:09:42.206000',8,1,NULL,NULL,NULL),(63,36,'<p>再来一次</p>','2021-02-02 15:11:41.462000',8,1,NULL,NULL,NULL),(64,36,'<p>测试</p>','2021-02-02 15:13:03.472000',8,1,NULL,NULL,NULL),(65,36,'<p>try</p>','2021-02-02 15:13:20.944000',8,1,NULL,NULL,NULL),(67,36,'<p>xxxx</p>','2021-02-02 15:15:03.984000',8,1,NULL,NULL,NULL),(68,36,'<p>xxxx</p>','2021-02-02 15:15:06.603000',8,1,NULL,NULL,NULL),(69,36,'<p>xxxx</p>','2021-02-02 15:15:08.605000',8,1,NULL,NULL,NULL),(70,36,'<p>xxxx</p>','2021-02-02 15:15:09.137000',8,1,NULL,NULL,NULL),(71,36,'<p>xxxx</p>','2021-02-02 15:15:09.332000',8,1,NULL,NULL,NULL),(72,36,'<p>xxxx</p>','2021-02-02 15:15:09.521000',8,1,NULL,NULL,NULL),(73,36,'<p>xxxx</p>','2021-02-02 15:15:09.755000',8,1,NULL,NULL,NULL),(74,36,'<p>xxxx</p>','2021-02-02 15:15:10.639000',8,1,NULL,NULL,NULL),(75,36,'<p>xxxx</p>','2021-02-02 15:15:10.890000',8,1,NULL,NULL,NULL),(76,36,'<p>xx</p>','2021-02-02 15:15:19.414000',8,1,NULL,NULL,NULL),(77,36,'<p>xxxx</p>','2021-02-02 15:19:24.810000',8,1,NULL,NULL,NULL),(78,36,'<p>xxxx</p>','2021-02-02 15:20:04.884000',8,1,NULL,NULL,NULL),(79,36,'<p>xx</p>','2021-02-02 15:20:13.706000',8,1,NULL,NULL,NULL),(80,36,'<p>123</p>','2021-02-02 15:20:17.999000',8,1,NULL,NULL,NULL),(81,36,'<p>xx</p>','2021-02-02 15:24:41.066000',8,1,NULL,NULL,NULL),(82,36,'<p>zzz</p>','2021-02-11 16:04:36.852000',8,1,80,1,80),(83,36,'<p>xxx</p>','2021-02-11 16:04:45.960000',8,1,82,1,80),(84,36,'<p>123</p>','2021-02-14 14:46:27.735000',8,1,NULL,NULL,NULL),(85,36,'<p>123</p>','2021-02-14 14:50:29.044000',8,1,NULL,NULL,NULL),(86,36,'<p>test</p>','2021-02-14 14:51:06.804000',8,1,NULL,NULL,NULL),(87,36,'<p>text</p>','2021-02-14 14:54:32.414000',8,1,NULL,NULL,NULL),(88,35,'<p>text</p>','2021-02-14 14:56:58.721000',8,1,NULL,NULL,NULL),(89,35,'<p>text</p>','2021-02-14 15:01:53.703000',8,1,NULL,NULL,NULL),(90,35,'<p>text</p>','2021-02-14 15:02:07.782000',8,1,NULL,NULL,NULL),(91,35,'<p>tst</p>','2021-02-14 15:02:55.914000',8,1,88,1,88),(92,35,'<p>text</p>','2021-02-14 15:04:27.403000',8,1,NULL,NULL,NULL),(93,35,'<p>123</p>','2021-02-14 15:04:37.367000',8,1,92,1,92),(94,35,'<p>123</p>','2021-02-14 15:04:48.714000',8,1,NULL,NULL,NULL),(95,35,'<p>sd</p>','2021-02-14 15:04:53.811000',8,1,94,1,94),(96,35,'<p>123</p>','2021-02-14 15:05:51.896000',8,1,NULL,NULL,NULL),(97,35,'<p>asd</p>','2021-02-14 15:05:56.782000',8,1,96,1,96),(98,35,'<p>xxx</p>','2021-02-14 15:06:58.541000',8,1,NULL,NULL,NULL),(99,35,'<p>gss</p>','2021-02-14 15:12:24.745000',8,1,NULL,NULL,NULL),(100,35,'<p>text</p>','2021-02-14 15:30:10.536000',8,1,NULL,NULL,NULL),(101,35,'<p>xas</p>','2021-02-14 15:32:57.107000',8,1,NULL,NULL,NULL),(102,35,'<p>anx</p>','2021-02-14 15:33:28.991000',8,1,NULL,NULL,NULL),(103,36,'<p>asd</p>','2021-02-14 15:43:32.500000',8,1,NULL,NULL,NULL),(104,36,'<p>asx</p>','2021-02-14 15:46:09.697000',8,1,NULL,NULL,NULL),(105,36,'<p>oasid</p>','2021-02-14 15:47:34.724000',8,1,NULL,NULL,NULL),(106,36,'<p>asx</p>','2021-02-14 15:54:22.772000',8,1,NULL,NULL,NULL),(107,36,'<p>123</p>','2021-03-20 15:26:50.723000',8,1,NULL,NULL,NULL),(108,36,'<p>123</p>','2021-03-20 15:27:09.183000',8,1,NULL,NULL,NULL),(109,36,'<p>123</p>','2021-03-20 15:31:10.008000',8,1,NULL,NULL,NULL),(110,36,'<p>abv</p>','2021-03-20 15:31:21.771000',8,1,NULL,NULL,NULL),(111,36,'<p>123</p>','2021-03-20 15:33:26.273000',8,1,31,1,31),(112,36,'<p>test</p>','2021-03-20 15:44:43.632000',8,1,74,1,74),(113,36,'<p>多线程测试</p>','2021-03-20 16:14:39.200000',8,1,NULL,NULL,NULL),(114,36,'<p>多线程测试回复</p>','2021-03-20 16:14:57.534000',8,1,113,1,113),(115,36,'<p>继续测试回复</p>','2021-03-20 16:18:16.924000',8,1,114,1,113),(116,36,'<p>abc</p>','2021-03-20 16:46:24.426000',8,1,NULL,NULL,NULL),(117,36,'<p>html邮件测试</p>','2021-03-20 16:47:30.662000',8,1,NULL,NULL,NULL),(118,36,'<p>html测试</p>\r\n\r\n<p>&nbsp;</p>','2021-03-20 16:52:39.291000',8,1,NULL,NULL,NULL),(119,36,'<p>测试</p>','2021-03-20 17:38:10.915000',8,1,NULL,NULL,NULL),(120,36,'<p>pdb调试</p>','2021-03-20 17:39:14.649000',8,1,NULL,NULL,NULL),(121,36,'<p>asd</p>','2021-03-20 17:44:09.810000',8,1,NULL,NULL,NULL),(122,36,'<p>asd</p>','2021-03-20 17:45:02.533000',8,1,NULL,NULL,NULL),(123,36,'<p>asbd</p>','2021-03-20 17:46:53.907000',8,1,NULL,NULL,NULL),(124,36,'<p>pdb测试</p>\r\n\r\n<p>&nbsp;</p>','2021-03-20 17:51:04.202000',8,1,NULL,NULL,NULL),(125,36,'<p>pdb测试</p>\r\n\r\n<p>&nbsp;</p>','2021-03-20 17:59:37.548000',8,1,NULL,NULL,NULL),(126,36,'<p>pdb测试</p>\r\n\r\n<p>&nbsp;</p>','2021-03-20 18:00:46.060000',8,1,NULL,NULL,NULL),(127,36,'<p>context测试</p>','2021-03-21 13:47:33.292000',8,1,NULL,NULL,NULL),(128,36,'<p>测试</p>','2021-03-21 13:52:24.060000',8,1,NULL,NULL,NULL),(129,36,'<p>utf-8问题测试</p>','2021-03-21 13:55:35.184000',8,1,NULL,NULL,NULL),(130,36,'<p>转移测试</p>\r\n\r\n<p>&nbsp;</p>','2021-03-21 14:06:08.126000',8,1,NULL,NULL,NULL),(131,36,'<p>关闭自动转义测试</p>','2021-03-21 14:09:49.791000',8,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `comment_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-12-22 13:54:40.188000','1','BlogCategory object (1)',1,'[{\"added\": {}}]',7,1),(2,'2020-12-22 13:55:12.073000','1','Blog object (1)',1,'[{\"added\": {}}]',8,1),(3,'2020-12-22 13:58:30.480000','1','Blog object (1)',3,'',8,1),(4,'2020-12-22 14:05:11.652000','1','Blog object (1)',1,'[{\"added\": {}}]',8,1),(5,'2020-12-22 14:05:26.759000','1','Blog object (1)',3,'',8,1),(6,'2020-12-22 14:05:44.987000','2','Blog object (2)',1,'[{\"added\": {}}]',8,1),(7,'2020-12-22 14:09:43.372000','2','科普',1,'[{\"added\": {}}]',7,1),(8,'2020-12-23 15:21:39.874000','2','Blog object (2)',2,'[]',8,1),(9,'2020-12-23 15:25:42.940000','2','Blog object (2)',2,'[]',8,1),(10,'2020-12-23 15:25:49.490000','2','Blog object (2)',2,'[]',8,1),(11,'2020-12-23 15:28:31.332000','2','Blog object (2)',2,'[]',8,1),(12,'2020-12-23 15:31:31.614000','3','Blog object (3)',1,'[{\"added\": {}}]',8,1),(13,'2020-12-24 14:19:06.021000','4','Blog object (4)',1,'[{\"added\": {}}]',8,1),(14,'2020-12-25 16:34:25.768000','5','Blog object (5)',1,'[{\"added\": {}}]',8,1),(15,'2020-12-25 16:35:08.904000','6','Blog object (6)',1,'[{\"added\": {}}]',8,1),(16,'2021-01-10 15:06:33.729000','2','<Blog:One>',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',8,1),(17,'2021-01-10 15:07:30.382000','2','<Blog:One>',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',8,1),(18,'2021-01-10 15:35:20.194000','37','<Blog:shell下的第30篇文章>',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',8,1),(19,'2021-01-10 15:35:27.931000','37','<Blog:shell下的第30篇文章>',2,'[]',8,1),(20,'2021-01-10 16:47:38.735000','37','<Blog:shell下的第30篇文章>',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',8,1),(21,'2021-01-10 18:43:23.965000','1','ReadNum object (1)',1,'[{\"added\": {}}]',9,1),(22,'2021-01-11 13:22:45.530000','1','ReadNum object (1)',1,'[{\"added\": {}}]',10,1),(23,'2021-01-11 13:41:31.008000','37','<Blog:shell下的第30篇文章>',2,'[]',8,1),(24,'2021-01-11 13:41:51.185000','2','<Blog:One>',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',8,1),(25,'2021-01-15 13:33:16.215000','5','ReadDetail object (5)',1,'[{\"added\": {}}]',11,1),(26,'2021-01-15 13:34:16.170000','7','ReadNum object (7)',1,'[{\"added\": {}}]',10,1),(27,'2021-01-15 18:00:13.402000','7','ReadNum object (7)',2,'[]',10,1),(28,'2021-01-15 18:00:33.644000','1','ReadNum object (1)',3,'',10,1),(29,'2021-01-17 13:08:31.126000','4','Comment object (4)',3,'',12,1),(30,'2021-01-17 13:08:36.158000','3','Comment object (3)',3,'',12,1),(31,'2021-01-17 13:08:39.764000','2','Comment object (2)',3,'',12,1),(32,'2021-01-17 13:08:44.312000','1','Comment object (1)',3,'',12,1),(33,'2021-01-17 13:11:36.062000','5','Comment object (5)',3,'',12,1),(34,'2021-01-22 17:09:09.225000','3','其他',1,'[{\"added\": {}}]',7,1),(35,'2021-01-22 17:46:40.667000','15','ReadDetail object (15)',3,'',11,1),(36,'2021-01-22 17:47:42.675000','6','ReadNum object (6)',3,'',10,1),(37,'2021-01-22 17:48:45.636000','37','<Blog:shell下的第30篇文章>',3,'',8,1),(38,'2021-01-26 15:51:55.731000','50','reply',2,'[{\"changed\": {\"fields\": [\"Text\", \"Root\", \"Parent\", \"Reply to\"]}}]',12,1),(39,'2021-01-26 15:52:22.587000','50','reply',2,'[{\"changed\": {\"fields\": [\"Reply to\"]}}]',12,1),(40,'2021-01-26 16:08:36.853000','50','reply',2,'[]',12,1),(41,'2021-01-26 16:09:20.407000','50','reply',2,'[{\"changed\": {\"fields\": [\"Root\", \"Parent\"]}}]',12,1),(42,'2021-02-02 15:52:23.173000','66','<p>时间</p>',3,'',12,1),(43,'2021-02-02 15:52:42.706000','82','<p>xx</p>',3,'',12,1),(44,'2021-02-20 18:59:30.246000','1','<Profile>:labi0110 for jiayue.liang',1,'[{\"added\": {}}]',15,1),(45,'2021-02-26 16:51:56.869000','2','jiayue',2,'[{\"changed\": {\"fields\": [\"Email address\"]}}]',4,1),(46,'2021-02-26 16:52:06.266000','1','jiayue.liang',2,'[{\"changed\": {\"fields\": [\"Email address\"]}}]',4,1),(47,'2021-03-03 15:17:51.081000','3','labi0110',2,'[{\"changed\": {\"fields\": [\"Email address\"]}}]',4,1),(48,'2021-03-20 15:25:47.076000','3','labi0110',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',4,1),(49,'2021-03-20 15:26:28.076000','1','jiayue.liang',2,'[{\"changed\": {\"fields\": [\"Email address\"]}}]',4,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(8,'blog','blog'),(7,'blog','blogcategory'),(9,'blog','readnum'),(12,'comment','comment'),(5,'contenttypes','contenttype'),(14,'likes','likescount'),(13,'likes','likesrecord'),(11,'read_statistics','readdetail'),(10,'read_statistics','readnum'),(6,'sessions','session'),(15,'user','profile');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-03-22 14:32:44.383251'),(2,'auth','0001_initial','2021-03-22 14:32:44.456654'),(3,'admin','0001_initial','2021-03-22 14:32:44.613291'),(4,'admin','0002_logentry_remove_auto_add','2021-03-22 14:32:44.665412'),(5,'admin','0003_logentry_add_action_flag_choices','2021-03-22 14:32:44.674683'),(6,'contenttypes','0002_remove_content_type_name','2021-03-22 14:32:44.726616'),(7,'auth','0002_alter_permission_name_max_length','2021-03-22 14:32:44.756673'),(8,'auth','0003_alter_user_email_max_length','2021-03-22 14:32:44.779679'),(9,'auth','0004_alter_user_username_opts','2021-03-22 14:32:44.788830'),(10,'auth','0005_alter_user_last_login_null','2021-03-22 14:32:44.818314'),(11,'auth','0006_require_contenttypes_0002','2021-03-22 14:32:44.821925'),(12,'auth','0007_alter_validators_add_error_messages','2021-03-22 14:32:44.831887'),(13,'auth','0008_alter_user_username_max_length','2021-03-22 14:32:44.872764'),(14,'auth','0009_alter_user_last_name_max_length','2021-03-22 14:32:44.960148'),(15,'auth','0010_alter_group_name_max_length','2021-03-22 14:32:44.996571'),(16,'auth','0011_update_proxy_permissions','2021-03-22 14:32:45.023734'),(17,'auth','0012_alter_user_first_name_max_length','2021-03-22 14:32:45.092170'),(18,'blog','0001_initial','2021-03-22 14:32:45.121693'),(19,'blog','0002_auto_20201222_1335','2021-03-22 14:32:45.190604'),(20,'blog','0003_auto_20201222_1341','2021-03-22 14:32:45.256058'),(21,'blog','0004_auto_20201222_1348','2021-03-22 14:32:45.299406'),(22,'blog','0005_blog_title','2021-03-22 14:32:45.323768'),(23,'blog','0006_auto_20201222_1404','2021-03-22 14:32:45.334761'),(24,'blog','0007_auto_20201223_1527','2021-03-22 14:32:45.344088'),(25,'blog','0008_auto_20210104_1551','2021-03-22 14:32:45.354486'),(26,'blog','0009_auto_20210110_1533','2021-03-22 14:32:45.363245'),(27,'blog','0010_auto_20210110_1701','2021-03-22 14:32:45.393907'),(28,'blog','0011_auto_20210110_1824','2021-03-22 14:32:45.439776'),(29,'blog','0012_auto_20210110_1842','2021-03-22 14:32:45.497428'),(30,'blog','0013_delete_readnum','2021-03-22 14:32:45.506572'),(31,'blog','0014_auto_20210205_0111','2021-03-22 14:32:45.589664'),(32,'comment','0001_initial','2021-03-22 14:32:45.609388'),(33,'comment','0002_auto_20210117_1317','2021-03-22 14:32:45.675476'),(34,'comment','0003_comment_parent_id','2021-03-22 14:32:45.699682'),(35,'comment','0004_auto_20210126_0048','2021-03-22 14:32:45.755137'),(36,'comment','0005_auto_20210127_0033','2021-03-22 14:32:45.843206'),(37,'comment','0006_auto_20210127_0047','2021-03-22 14:32:45.928251'),(38,'comment','0007_auto_20210205_0111','2021-03-22 14:32:46.119646'),(39,'likes','0001_initial','2021-03-22 14:32:46.163157'),(40,'read_statistics','0001_initial','2021-03-22 14:32:46.234223'),(41,'read_statistics','0002_readdetail','2021-03-22 14:32:46.278123'),(42,'read_statistics','0003_readdetail_read_detail','2021-03-22 14:32:46.318835'),(43,'read_statistics','0004_auto_20210122_1732','2021-03-22 14:32:46.394264'),(44,'read_statistics','0005_auto_20210205_0111','2021-03-22 14:32:46.442848'),(45,'sessions','0001_initial','2021-03-22 14:32:46.456763'),(46,'user','0001_initial','2021-03-22 14:32:46.490383');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0pp4r1qovm5j10p7f723ouvjet2d3axe','.eJxVjEEOwiAQRe_C2hCGtgy4dO8ZyAxMpGogKe3KeHdt0oVu_3vvv1SkbS1x67LEOauzAnX63ZjSQ-oO8p3qrenU6rrMrHdFH7Tra8vyvBzu30GhXr41IQ0egkk5YHAQrDMixOgSOAeABB5YGJENkDgJI1ucAuZEkx_sqN4fzbU3Rw:1lC3I3:f4C7E2iRR2YHfCemXfkR_u2KA739UTyaqXrSxqNu5ZQ','2021-03-02 16:33:31.348000'),('18g191ke6nn41zj3rtmnmpnj1i76cdlp','.eJxVjEEOwiAQRe_C2hCGtgy4dO8ZyAxMpGogKe3KeHdt0oVu_3vvv1SkbS1x67LEOauzAnX63ZjSQ-oO8p3qrenU6rrMrHdFH7Tra8vyvBzu30GhXr41IQ0egkk5YHAQrDMixOgSOAeABB5YGJENkDgJI1ucAuZEkx_sqN4fzbU3Rw:1l4R0j:to1f6ZmOHc6_ybc3x44D6iruPxaV2cHxf6JGnbeZFy0','2021-02-09 16:16:09.924000'),('28gonfljn80cjd0qoz247jqipd39ngxq','.eJxVjEEOwiAQRe_C2hCGtgy4dO8ZyAxMpGogKe3KeHdt0oVu_3vvv1SkbS1x67LEOauzAnX63ZjSQ-oO8p3qrenU6rrMrHdFH7Tra8vyvBzu30GhXr41IQ0egkk5YHAQrDMixOgSOAeABB5YGJENkDgJI1ucAuZEkx_sqN4fzbU3Rw:1lAyaZ:IUKqqzzuP50EBfVUs7avnc5blbajtH44qFKXjNpc78I','2021-02-27 17:20:11.574000'),('3uvfoutqr4bzzrmtxk4kw3qkf8pc2lb3','.eJxVjEEOwiAQRe_C2hCGtgy4dO8ZyAxMpGogKe3KeHdt0oVu_3vvv1SkbS1x67LEOauzAnX63ZjSQ-oO8p3qrenU6rrMrHdFH7Tra8vyvBzu30GhXr41IQ0egkk5YHAQrDMixOgSOAeABB5YGJENkDgJI1ucAuZEkx_sqN4fzbU3Rw:1l43Gp:rzbJfzC5I1SoLJsXH34N7tY5DXL4incJxlP0YIj1-BI','2021-02-08 14:55:11.011000'),('51n9o1oi5xcknrnevhbswjstkehtaprp','.eJxVjbkOwjAQRP_FNbKyObwxJSUSJbW1a6-IIdhSDhrEv-NIKaCdN_PmrRyty-DWWSYXgzoqUIffjMk_JG0g3CndsvY5LVNkvVX0Tmd9yUHG0979Eww0D2VNSE0PtvLBojVga1OJEKPxYAwAEvTAwohcAYkR23KNncXgqeubui1Sjik4eVIcnS93RXqF80t9vp8gP3k:1lFIaF:wdkP3TV8g7ja0sStA1Q7-7DjKxkOHT-AhuWHg0mfQSY','2021-03-11 15:29:43.825000'),('6ugst12g87u7rwhid8mbbvrb9z22hvrc','.eJxVjEEOwiAQRe_C2hCGtgy4dO8ZyAxMpGogKe3KeHdt0oVu_3vvv1SkbS1x67LEOauzAnX63ZjSQ-oO8p3qrenU6rrMrHdFH7Tra8vyvBzu30GhXr41IQ0egkk5YHAQrDMixOgSOAeABB5YGJENkDgJI1ucAuZEkx_sqN4fzbU3Rw:1lC3PX:GOtmKr1e-CL6x0kuSqcez11idQQJBtRJOB4O6YTGQDc','2021-03-02 16:41:15.638000'),('7qhlpi7g0qpq2zijpuv705xmpma2i8xt','.eJxVjEEOwiAQRe_C2hCGtgy4dO8ZyAxMpGogKe3KeHdt0oVu_3vvv1SkbS1x67LEOauzAnX63ZjSQ-oO8p3qrenU6rrMrHdFH7Tra8vyvBzu30GhXr41IQ0egkk5YHAQrDMixOgSOAeABB5YGJENkDgJI1ucAuZEkx_sqN4fzbU3Rw:1krhvo:SsQPsaJUqbm74pw2Ft2GpWU9PuFYmkWLganGqXITBW4','2021-01-05 13:42:28.639000'),('7u63v23bcfw5f9xi5rg6toidihd5o9wi','.eJxVjEEOwiAQRe_C2hCGtgy4dO8ZyAxMpGogKe3KeHdt0oVu_3vvv1SkbS1x67LEOauzAnX63ZjSQ-oO8p3qrenU6rrMrHdFH7Tra8vyvBzu30GhXr41IQ0egkk5YHAQrDMixOgSOAeABB5YGJENkDgJI1ucAuZEkx_sqN4fzbU3Rw:1lC2jW:2HJjKCI8920dMFCAW2IRnZeLHFFpsVxwxYWGeYUopHQ','2021-03-02 15:57:50.645000'),('9jzj2pru7vbe44ojssv27jrue64ctsb3','.eJxVjEEOwiAQRe_C2hCGtgy4dO8ZyAxMpGogKe3KeHdt0oVu_3vvv1SkbS1x67LEOauzAnX63ZjSQ-oO8p3qrenU6rrMrHdFH7Tra8vyvBzu30GhXr41IQ0egkk5YHAQrDMixOgSOAeABB5YGJENkDgJI1ucAuZEkx_sqN4fzbU3Rw:1l2yoe:KUWZ60iEINYzr-tM1xfCsWWP8hAw6Fvmqk-fXPNEO4E','2021-02-05 15:57:40.199000'),('9s9lcec6xn1pmrtr83xczo07gr38lyxo','.eJxVjEEOwiAQRe_C2hCGtgy4dO8ZyAxMpGogKe3KeHdt0oVu_3vvv1SkbS1x67LEOauzAnX63ZjSQ-oO8p3qrenU6rrMrHdFH7Tra8vyvBzu30GhXr41IQ0egkk5YHAQrDMixOgSOAeABB5YGJENkDgJI1ucAuZEkx_sqN4fzbU3Rw:1lDq5R:GE469_cwGjeVkzXl6xJ9Z-URj2rRrUoFBDZYq8CtrNs','2021-03-07 14:51:53.138000'),('9xt0q75zkuxsfdqlgy3hs76z4qkn5t9u','.eJxVjEEOwiAQRe_C2hCGtgy4dO8ZyAxMpGogKe3KeHdt0oVu_3vvv1SkbS1x67LEOauzAnX63ZjSQ-oO8p3qrenU6rrMrHdFH7Tra8vyvBzu30GhXr41IQ0egkk5YHAQrDMixOgSOAeABB5YGJENkDgJI1ucAuZEkx_sqN4fzbU3Rw:1lC2DA:2_CIob2J45b0odJq7a4RJDjbwhbMbXJKUopdHfVka5E','2021-03-02 15:24:24.054000'),('anbswjodbw0tlqitiot4ad8hy54bv7zu','.eJxVjcsKwjAQRf8lawmdPjKNS1eCCP5BmEkGG60J9LES_90UutDtPfee-1aO1mVw6yyTi0EdFajDb8bkn5I2EB6U7ln7nJYpst4qeqezvuYg42nv_gkGmoeyJqSmB1v5YNEasLWpRIjReDAGAAl6YGFEroDEiG25xs5i8NT1Td0WKccUnLwojs6XuyK9nS9Zfb6fZD-F:1lFhAP:jOOrTUb-O2h153HOmaBokks5OIr7XT_FcWhMoVWkees','2021-03-12 17:44:41.948000'),('b5a7qda7ybmvdcyaudp1fw6vifblfj6i','.eJxVjEEOwiAQRe_C2hCGtgy4dO8ZyAxMpGogKe3KeHdt0oVu_3vvv1SkbS1x67LEOauzAnX63ZjSQ-oO8p3qrenU6rrMrHdFH7Tra8vyvBzu30GhXr41IQ0egkk5YHAQrDMixOgSOAeABB5YGJENkDgJI1ucAuZEkx_sqN4fzbU3Rw:1l3gNq:arXvFux8Wh57848pjZNB3g3gkndOPdcNQtg-Pe3s2rk','2021-02-07 14:28:54.983000'),('bu1q0i9jswwwmxs1f3dbrqa4oszwlwl1','.eJxVjEEOwiAQRe_C2hCGtgy4dO8ZyAxMpGogKe3KeHdt0oVu_3vvv1SkbS1x67LEOauzAnX63ZjSQ-oO8p3qrenU6rrMrHdFH7Tra8vyvBzu30GhXr41IQ0egkk5YHAQrDMixOgSOAeABB5YGJENkDgJI1ucAuZEkx_sqN4fzbU3Rw:1lAydz:aAMQCMiw7pFLUYybwM16STaTxWEJTQzy_ASIGL-39fQ','2021-02-27 17:23:43.339000'),('c72pb283q2wyp7oha3gnao38h02kr128','.eJxVjEEOwiAQRe_C2hCGtgy4dO8ZyAxMpGogKe3KeHdt0oVu_3vvv1SkbS1x67LEOauzAnX63ZjSQ-oO8p3qrenU6rrMrHdFH7Tra8vyvBzu30GhXr41IQ0egkk5YHAQrDMixOgSOAeABB5YGJENkDgJI1ucAuZEkx_sqN4fzbU3Rw:1lC2EZ:djAjRfWYUCM97eTck_aqXwbtpgTynzhveNgucTeQFZk','2021-03-02 15:25:51.272000'),('cgoa4u0jsv2g3iaztuo99w2vd4bp1cjo','.eJxVjEEOwiAQRe_C2hCGtgy4dO8ZyAxMpGogKe3KeHdt0oVu_3vvv1SkbS1x67LEOauzAnX63ZjSQ-oO8p3qrenU6rrMrHdFH7Tra8vyvBzu30GhXr41IQ0egkk5YHAQrDMixOgSOAeABB5YGJENkDgJI1ucAuZEkx_sqN4fzbU3Rw:1l58pP:1Q4jO2xLJI3Fg91uijAsmLBhvYef-xLTH9xAk_yHZ_Q','2021-02-11 15:03:23.067000'),('co9vbsu4vahqllahw42geishgir49cap','.eJxVjEEOwiAQRe_C2hCGtgy4dO8ZyAxMpGogKe3KeHdt0oVu_3vvv1SkbS1x67LEOauzAnX63ZjSQ-oO8p3qrenU6rrMrHdFH7Tra8vyvBzu30GhXr41IQ0egkk5YHAQrDMixOgSOAeABB5YGJENkDgJI1ucAuZEkx_sqN4fzbU3Rw:1lC2XZ:Ia8puPkm80wobxmEnOweNs54MU3nNHfek9jm173R94Y','2021-03-02 15:45:29.258000'),('d9ya00r1rs1bk0yogkw4k1ebxqbyopjv','.eJxVjEEOwiAQRe_C2hCGtgy4dO8ZyAxMpGogKe3KeHdt0oVu_3vvv1SkbS1x67LEOauzAnX63ZjSQ-oO8p3qrenU6rrMrHdFH7Tra8vyvBzu30GhXr41IQ0egkk5YHAQrDMixOgSOAeABB5YGJENkDgJI1ucAuZEkx_sqN4fzbU3Rw:1l43NN:guI4cCKEA652KtQrZkUsrrSi9cfTsfU-KT1vkdrFwuU','2021-02-08 15:01:57.309000'),('e3mwb7aif8vn8vdiuojedpskg0arohk5','.eJxVjEEOwiAQRe_C2hCGtgy4dO8ZyAxMpGogKe3KeHdt0oVu_3vvv1SkbS1x67LEOauzAnX63ZjSQ-oO8p3qrenU6rrMrHdFH7Tra8vyvBzu30GhXr41IQ0egkk5YHAQrDMixOgSOAeABB5YGJENkDgJI1ucAuZEkx_sqN4fzbU3Rw:1l3gjk:mof7NgIEYgfWd02-Lxb5iptLZEvlluidB_QNMBZUgBY','2021-02-07 14:51:32.593000'),('e5f3koqgw097hcytvwuj2wicvfs5k92b','.eJxVjEEOwiAQRe_C2hCGtgy4dO8ZyAxMpGogKe3KeHdt0oVu_3vvv1SkbS1x67LEOauzAnX63ZjSQ-oO8p3qrenU6rrMrHdFH7Tra8vyvBzu30GhXr41IQ0egkk5YHAQrDMixOgSOAeABB5YGJENkDgJI1ucAuZEkx_sqN4fzbU3Rw:1l0PDY:rwtu9NEhm2FlYEAsX_gCFthq1WJ1hlQ-NEstAX29Nt8','2021-01-29 13:32:44.053000'),('ee2tgckxk4ea0ychp895x31sl4s4f8fl','e30:1lC3Oq:DyMb_xqRXEV2Vc2fxz-mt6Ppr6annofZHaPgRwX0jx4','2021-03-02 16:40:32.908000'),('eo9mcd48en05ddn5i1rvrk3snjvl3yej','.eJxVjEEOwiAQRe_C2hCGtgy4dO8ZyAxMpGogKe3KeHdt0oVu_3vvv1SkbS1x67LEOauzAnX63ZjSQ-oO8p3qrenU6rrMrHdFH7Tra8vyvBzu30GhXr41IQ0egkk5YHAQrDMixOgSOAeABB5YGJENkDgJI1ucAuZEkx_sqN4fzbU3Rw:1l0oWK:GBOaP4WQfaKV-aUmNAB1_XZRVvVl8sBilssM3Ep0w_A','2021-01-30 16:33:48.028000'),('g3qaqsujfcoqrkb2zjlzmlgbf38xt1ar','.eJxVjEEOwiAQRe_C2hCGtgy4dO8ZyAxMpGogKe3KeHdt0oVu_3vvv1SkbS1x67LEOauzAnX63ZjSQ-oO8p3qrenU6rrMrHdFH7Tra8vyvBzu30GhXr41IQ0egkk5YHAQrDMixOgSOAeABB5YGJENkDgJI1ucAuZEkx_sqN4fzbU3Rw:1l3dbW:4BIhFmVnYa-X1hFvSREBgy4JxZXhKWxG5gtris9dmiY','2021-02-07 11:30:50.642000'),('hm2924gwpg6y514px7iuhjfdltojve6n','.eJxVjEEOwiAQRe_C2hCGtgy4dO8ZyAxMpGogKe3KeHdt0oVu_3vvv1SkbS1x67LEOauzAnX63ZjSQ-oO8p3qrenU6rrMrHdFH7Tra8vyvBzu30GhXr41IQ0egkk5YHAQrDMixOgSOAeABB5YGJENkDgJI1ucAuZEkx_sqN4fzbU3Rw:1ks64d:yatEI9INjLp15VewPxGqTx5BND8N7Xx3kJUilXj_FVI','2021-01-06 15:29:11.809000'),('hnw0xn6jmfppcu4vp5ear0ctxpt93kw0','.eJxVjEEOwiAQRe_C2hCGtgy4dO8ZyAxMpGogKe3KeHdt0oVu_3vvv1SkbS1x67LEOauzAnX63ZjSQ-oO8p3qrenU6rrMrHdFH7Tra8vyvBzu30GhXr41IQ0egkk5YHAQrDMixOgSOAeABB5YGJENkDgJI1ucAuZEkx_sqN4fzbU3Rw:1lAyZA:paWNA8MljH0s83C6AEgDrCOghK_JCc3EzMGtVYrjYq8','2021-02-27 17:18:44.346000'),('ixvka4nl46suqumsmo531p92le6w2ljk','.eJxVjEEOwiAQRe_C2hCGtgy4dO8ZyAxMpGogKe3KeHdt0oVu_3vvv1SkbS1x67LEOauzAnX63ZjSQ-oO8p3qrenU6rrMrHdFH7Tra8vyvBzu30GhXr41IQ0egkk5YHAQrDMixOgSOAeABB5YGJENkDgJI1ucAuZEkx_sqN4fzbU3Rw:1l7hZz:ff8TPgbBJbXfoY8oAOFynjtJSoHee4oXl2lKkmtPG7w','2021-02-18 16:34:03.173000'),('j4shd0pxh97pk6d4qqb3e764oz5aft4e','.eJxVjEEOwiAQRe_C2hCGtgy4dO8ZyAxMpGogKe3KeHdt0oVu_3vvv1SkbS1x67LEOauzAnX63ZjSQ-oO8p3qrenU6rrMrHdFH7Tra8vyvBzu30GhXr41IQ0egkk5YHAQrDMixOgSOAeABB5YGJENkDgJI1ucAuZEkx_sqN4fzbU3Rw:1l3hNa:kNWX7X4NOvFSbrHkhumeVfsdjDb0jYNFsDf3JpUxDLk','2021-02-07 15:32:42.656000'),('l89aq7dde3n8dy48b4x96io4xfv1vnr0','.eJxVjEEOwiAQRe_C2hCGtgy4dO8ZyAxMpGogKe3KeHdt0oVu_3vvv1SkbS1x67LEOauzAnX63ZjSQ-oO8p3qrenU6rrMrHdFH7Tra8vyvBzu30GhXr41IQ0egkk5YHAQrDMixOgSOAeABB5YGJENkDgJI1ucAuZEkx_sqN4fzbU3Rw:1lADkA:e3hvmelTb8EpAebvJ6pO7tQn1cojHEowGLz2BmOhTuQ','2021-02-25 15:18:58.766000'),('li6icdguz7w89nuucgp7lr6d1zt7b3sn','.eJxVjEEOwiAQRe_C2hCGtgy4dO8ZyAxMpGogKe3KeHdt0oVu_3vvv1SkbS1x67LEOauzAnX63ZjSQ-oO8p3qrenU6rrMrHdFH7Tra8vyvBzu30GhXr41IQ0egkk5YHAQrDMixOgSOAeABB5YGJENkDgJI1ucAuZEkx_sqN4fzbU3Rw:1l4mor:NL7aaiFu1JBwPfcDYaEiu1KmRNs3J19uN1wtm-qQQx0','2021-02-10 15:33:21.263000'),('n4yzzd02vwseh4et8ib20hqkxr76hux3','e30:1l0oVx:vLUoIXWk6N6aiG1heWL_OXsa7min-HJFYXl00TCUlyA','2021-01-30 16:33:25.451000'),('nqlkgnlb5jlffz0t9w3cke6o3amg2l0d','.eJxVjEEOwiAQRe_C2hCGtgy4dO8ZyAxMpGogKe3KeHdt0oVu_3vvv1SkbS1x67LEOauzAnX63ZjSQ-oO8p3qrenU6rrMrHdFH7Tra8vyvBzu30GhXr41IQ0egkk5YHAQrDMixOgSOAeABB5YGJENkDgJI1ucAuZEkx_sqN4fzbU3Rw:1lBJYQ:yK5kQF58_ZdzVpBJsqeIswg5-JkIWgSUNlEuvSn4Hm0','2021-02-28 15:43:22.645000'),('ompory1buhptwa5xz83f1zimhv6n9y2g','.eJxVjEEOwiAQRe_C2hCGtgy4dO8ZyAxMpGogKe3KeHdt0oVu_3vvv1SkbS1x67LEOauzAnX63ZjSQ-oO8p3qrenU6rrMrHdFH7Tra8vyvBzu30GhXr41IQ0egkk5YHAQrDMixOgSOAeABB5YGJENkDgJI1ucAuZEkx_sqN4fzbU3Rw:1lAylW:Ac90Qv9JmQ7_p-NKYZqyVbBI4P7grwkrocURIIT2iIg','2021-02-27 17:31:30.115000'),('pcfz00f560ty1sksfyi81aknq3zn35sv','.eJxVjEEOwiAQRe_C2hCGtgy4dO8ZyAxMpGogKe3KeHdt0oVu_3vvv1SkbS1x67LEOauzAnX63ZjSQ-oO8p3qrenU6rrMrHdFH7Tra8vyvBzu30GhXr41IQ0egkk5YHAQrDMixOgSOAeABB5YGJENkDgJI1ucAuZEkx_sqN4fzbU3Rw:1l43ol:iJRnA4UjtkOvP9PcqfhYfzLvb7ZFlS71TbrqPxoQnl8','2021-02-08 15:30:15.265000'),('permzmq7ggy3py3oys43wpc00juea3ym','.eJxVjEEOwiAQRe_C2hCGtgy4dO8ZyAxMpGogKe3KeHdt0oVu_3vvv1SkbS1x67LEOauzAnX63ZjSQ-oO8p3qrenU6rrMrHdFH7Tra8vyvBzu30GhXr41IQ0egkk5YHAQrDMixOgSOAeABB5YGJENkDgJI1ucAuZEkx_sqN4fzbU3Rw:1lAD3K:uYLd-0GgF1osDIl2yPIjHIgpAsuPIv3esbThfkax4Fg','2021-02-25 14:34:42.423000'),('po0josulou19owf8gr5sguwkrnf19los','.eJxVjEEOwiAQRe_C2hCGtgy4dO8ZyAxMpGogKe3KeHdt0oVu_3vvv1SkbS1x67LEOauzAnX63ZjSQ-oO8p3qrenU6rrMrHdFH7Tra8vyvBzu30GhXr41IQ0egkk5YHAQrDMixOgSOAeABB5YGJENkDgJI1ucAuZEkx_sqN4fzbU3Rw:1l3hCh:0ASZ2jebW71w1VFuMhg07OCDKegp4ZBAwawIjQPfKzU','2021-02-07 15:21:27.141000'),('qtuz51j2mh8e3bqfknwqk3zldxegj9ry','.eJxVjEEOwiAQRe_C2hCGtgy4dO8ZyAxMpGogKe3KeHdt0oVu_3vvv1SkbS1x67LEOauzAnX63ZjSQ-oO8p3qrenU6rrMrHdFH7Tra8vyvBzu30GhXr41IQ0egkk5YHAQrDMixOgSOAeABB5YGJENkDgJI1ucAuZEkx_sqN4fzbU3Rw:1lC3DL:SVXOYOdXnBL_NWz18j9rElaONFmD2Wa91aTK-L9U60g','2021-03-02 16:28:39.968000'),('qw5staoe5olxuhx61993f57zytmf5qrb','.eJxVjDsOwyAQBe9CHSEWL9i4TJ8zIHaB2PkYydhVlLuHSG7cvpl5H1HTEj2XmPw2v5MYwQL2gwGHF-HDvk1-r2n1cxSj6MRpo8DPVjcQH2G5F8ll2daZ5F-RB63y1s5f18M9HUyhTq12BCqxy456HoAG3edkSAMRQbAEFhmNdoAKFGZk4xJ22WpWxnZAVnx_Fsc_zQ:1lHTVv:DtxyGfASqNeXb1BCNJV0VizeJsu3SSe1czFSh3Jhi_0','2021-03-17 15:34:15.219000'),('qwj24fnlgbhuxis23if584xx1c1xa3xa','.eJxVjEEOwiAQRe_C2hCGtgy4dO8ZyAxMpGogKe3KeHdt0oVu_3vvv1SkbS1x67LEOauzAnX63ZjSQ-oO8p3qrenU6rrMrHdFH7Tra8vyvBzu30GhXr41IQ0egkk5YHAQrDMixOgSOAeABB5YGJENkDgJI1ucAuZEkx_sqN4fzbU3Rw:1lAE82:vHQPJIbfGP9aBrP8oaqqYmuUSpD2a-wl8ah4KvutoiI','2021-02-25 15:43:38.468000'),('rc2zgvh712iz6vcxnv6nv6ai71ctwjgn','.eJxVjEEOwiAQRe_C2hCGtgy4dO8ZyAxMpGogKe3KeHdt0oVu_3vvv1SkbS1x67LEOauzAnX63ZjSQ-oO8p3qrenU6rrMrHdFH7Tra8vyvBzu30GhXr41IQ0egkk5YHAQrDMixOgSOAeABB5YGJENkDgJI1ucAuZEkx_sqN4fzbU3Rw:1l3NkL:tS8tJfOG_B-u95qRUG92j5V0mI13YP-H9czHAfk6WgE','2021-02-06 18:34:53.791000'),('s89xja7i80rhrc4nkvn6o4wzzggzx96i','.eJxVjEEOwiAQRe_C2hCGtgy4dO8ZyAxMpGogKe3KeHdt0oVu_3vvv1SkbS1x67LEOauzAnX63ZjSQ-oO8p3qrenU6rrMrHdFH7Tra8vyvBzu30GhXr41IQ0egkk5YHAQrDMixOgSOAeABB5YGJENkDgJI1ucAuZEkx_sqN4fzbU3Rw:1l3dqC:-0ZgMfON-hFD6gm6FHY3Z3swgdzJbqrb2WdOcK-WOPY','2021-02-07 11:46:00.091000'),('tunqn8vi6jmj3xd91fjg8po7tafmzz7l','.eJxVjEEOwiAQRe_C2hCGtgy4dO8ZyAxMpGogKe3KeHdt0oVu_3vvv1SkbS1x67LEOauzAnX63ZjSQ-oO8p3qrenU6rrMrHdFH7Tra8vyvBzu30GhXr41IQ0egkk5YHAQrDMixOgSOAeABB5YGJENkDgJI1ucAuZEkx_sqN4fzbU3Rw:1l3h7c:4pFR-upY6OiAJk9u_Dqrc2NzUuD2WWC5puYhz979VcI','2021-02-07 15:16:12.244000'),('ur6vh730e6qxi4tpt4vs907vsdyk4rg7','.eJxVjEsSgjAQBe-SNUUxEDKJS_ecITVJRj4qsQjowvLuxpIN2-7X7y0ucel5tQ9K6RWXYH0MLE5i0s9OFCLx_Ed2He-ZgwKJWirUhbC0rYPdEi92DDkBcWCO_DXXWYSJ5j6WPs7rMrryNyl3m8oun9_O-_ZwMFAack1IjQZT-WDQKDC1qpjJofKgFAASaHDsEF0FxIqNdDW2BoOnVje1FJ8v_YxKXQ:1lHTGD:0WJsoPfJrBbrVLlr_VleiOCcCmhLnAO7YUQMQR6YA2k','2021-03-17 15:18:01.557000'),('uu92rbxhprp4c8bwmwq2dfa0rs48xhwb','.eJxVjEEOwiAQRe_C2hCGtgy4dO8ZyAxMpGogKe3KeHdt0oVu_3vvv1SkbS1x67LEOauzAnX63ZjSQ-oO8p3qrenU6rrMrHdFH7Tra8vyvBzu30GhXr41IQ0egkk5YHAQrDMixOgSOAeABB5YGJENkDgJI1ucAuZEkx_sqN4fzbU3Rw:1l3euD:JWwZBXR-voXCDcfjnzusQgFc4LTWQnnwQn9Xsvb_ed4','2021-02-07 12:54:13.921000'),('vwwfjg8t5s1s8bzigmqb5ima4ds17njs','.eJxVjEEOwiAQRe_C2hCGtgy4dO8ZyAxMpGogKe3KeHdt0oVu_3vvv1SkbS1x67LEOauzAnX63ZjSQ-oO8p3qrenU6rrMrHdFH7Tra8vyvBzu30GhXr41IQ0egkk5YHAQrDMixOgSOAeABB5YGJENkDgJI1ucAuZEkx_sqN4fzbU3Rw:1lNdU3:AIv1RiMpSX4eEiROI-zsL6CAdNGoNltzOWEr4jsLI-M','2021-04-03 15:25:47.086000'),('yaqrz6vdfe3cdcntglxafisiuer820nd','.eJxVjEEOwiAQRe_C2hCGtgy4dO8ZyAxMpGogKe3KeHdt0oVu_3vvv1SkbS1x67LEOauzAnX63ZjSQ-oO8p3qrenU6rrMrHdFH7Tra8vyvBzu30GhXr41IQ0egkk5YHAQrDMixOgSOAeABB5YGJENkDgJI1ucAuZEkx_sqN4fzbU3Rw:1l6xfB:oXgV2DMh59t7D6nsXu4jeVsGn6BlPmbwKbbQs1cpk2M','2021-02-16 15:32:21.467000'),('yjesrxtoipe9wva765ajngvllsbwki8k','.eJxVjEEOwiAQRe_C2hCGtgy4dO8ZyAxMpGogKe3KeHdt0oVu_3vvv1SkbS1x67LEOauzAnX63ZjSQ-oO8p3qrenU6rrMrHdFH7Tra8vyvBzu30GhXr41IQ0egkk5YHAQrDMixOgSOAeABB5YGJENkDgJI1ucAuZEkx_sqN4fzbU3Rw:1lAynb:Xz1UCEKvF34e1Nd1iUexcX-4nyFqjmiZJiB_KoACmz8','2021-02-27 17:33:39.007000'),('yog2p4gocvlo3c9lj7af8ujzqen5mj4m','.eJxVjEEOwiAQRe_C2hCGtgy4dO8ZyAxMpGogKe3KeHdt0oVu_3vvv1SkbS1x67LEOauzAnX63ZjSQ-oO8p3qrenU6rrMrHdFH7Tra8vyvBzu30GhXr41IQ0egkk5YHAQrDMixOgSOAeABB5YGJENkDgJI1ucAuZEkx_sqN4fzbU3Rw:1l6xlC:SSEk7Baqckzav2a5ow4jBCJn-87LFPfSOItlu49DHEU','2021-02-16 15:38:34.408000'),('ytoux3rz7qkrdlmkwx4arunvpdawbubw','.eJxVjEEOwiAQRe_C2hCGtgy4dO8ZyAxMpGogKe3KeHdt0oVu_3vvv1SkbS1x67LEOauzAnX63ZjSQ-oO8p3qrenU6rrMrHdFH7Tra8vyvBzu30GhXr41IQ0egkk5YHAQrDMixOgSOAeABB5YGJENkDgJI1ucAuZEkx_sqN4fzbU3Rw:1l3f6e:nRHDj6h58GzMVMPxbTXSiRGXM5xXvi-6NsB9Apak79E','2021-02-07 13:07:04.370000'),('yx4x1u87t78b4ew5d0zjzby10e1miyys','.eJxVjEEOwiAQRe_C2hCGtgy4dO8ZyAxMpGogKe3KeHdt0oVu_3vvv1SkbS1x67LEOauzAnX63ZjSQ-oO8p3qrenU6rrMrHdFH7Tra8vyvBzu30GhXr41IQ0egkk5YHAQrDMixOgSOAeABB5YGJENkDgJI1ucAuZEkx_sqN4fzbU3Rw:1kycFO:ez-1ZNksM7tNoFxgGqp65ND1MC6Ool8DILFyzi01EBI','2021-01-24 15:03:14.889000');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes_likescount`
--

DROP TABLE IF EXISTS `likes_likescount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes_likescount` (
  `id` int NOT NULL AUTO_INCREMENT,
  `object_id` int unsigned NOT NULL,
  `liked_num` int NOT NULL,
  `content_type_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `likes_likescount_content_type_id_63daaf6d_fk_django_co` (`content_type_id`),
  CONSTRAINT `likes_likescount_content_type_id_63daaf6d_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `likes_likescount_chk_1` CHECK ((`object_id` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes_likescount`
--

LOCK TABLES `likes_likescount` WRITE;
/*!40000 ALTER TABLE `likes_likescount` DISABLE KEYS */;
INSERT INTO `likes_likescount` VALUES (1,36,1,8),(2,35,1,8),(3,34,0,8),(4,33,0,8),(5,32,0,8),(6,81,0,12),(7,80,1,12),(8,79,0,12),(9,78,0,12),(10,77,0,12),(11,76,0,12),(12,75,0,12),(13,74,0,12),(14,73,0,12),(15,72,0,12),(16,71,0,12),(17,70,0,12),(18,69,0,12),(19,68,0,12),(20,67,0,12),(21,65,0,12),(22,64,0,12),(23,63,0,12),(24,62,0,12),(25,61,0,12),(26,59,0,12),(27,60,0,12),(28,34,0,12),(29,33,0,12),(30,32,0,12),(31,31,0,12),(32,82,0,12),(33,83,0,12),(34,49,0,12),(35,48,0,12),(36,47,0,12),(37,46,0,12),(38,45,0,12),(39,44,0,12),(40,43,0,12),(41,50,0,12),(42,42,0,12),(43,41,0,12),(44,40,0,12),(45,39,0,12),(46,38,0,12),(47,37,0,12),(48,36,0,12),(49,35,0,12),(50,30,0,12),(51,29,0,12),(52,28,0,12),(53,27,0,12),(54,26,0,12),(55,25,0,12),(56,24,0,12),(57,23,0,12),(58,22,0,12),(59,21,0,12),(60,20,0,12),(61,19,0,12),(62,18,0,12),(63,17,0,12),(64,16,0,12),(65,15,0,12),(66,14,0,12),(67,13,0,12),(68,12,0,12),(69,11,0,12),(70,10,0,12),(71,9,0,12),(72,8,0,12),(73,51,0,12),(74,52,0,12),(75,53,0,12),(76,54,0,12),(77,55,0,12),(78,56,0,12),(79,57,0,12),(80,84,0,12),(81,85,0,12),(82,86,0,12),(83,87,0,12),(84,88,1,12),(85,90,0,12),(86,89,0,12),(87,91,0,12),(88,92,0,12),(89,93,0,12),(90,94,0,12),(91,95,0,12),(92,96,1,12),(93,97,0,12),(94,98,1,12),(95,99,1,12),(96,100,1,12),(97,101,0,12),(98,102,0,12),(99,103,1,12),(100,104,0,12),(101,105,0,12),(102,106,1,12),(103,110,0,12),(104,109,0,12),(105,108,0,12),(106,107,0,12),(107,112,0,12),(108,111,0,12),(109,113,0,12),(110,114,0,12),(111,115,0,12),(112,117,0,12),(113,116,0,12),(114,121,0,12),(115,120,0,12),(116,119,0,12),(117,118,0,12),(118,123,0,12),(119,122,0,12),(120,126,0,12),(121,125,0,12),(122,124,0,12),(123,129,0,12),(124,128,0,12),(125,127,0,12),(126,6,0,8),(127,5,0,8),(128,4,0,8),(129,3,0,8),(130,2,0,8);
/*!40000 ALTER TABLE `likes_likescount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes_likesrecord`
--

DROP TABLE IF EXISTS `likes_likesrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes_likesrecord` (
  `id` int NOT NULL AUTO_INCREMENT,
  `object_id` int unsigned NOT NULL,
  `liked_time` datetime(6) NOT NULL,
  `content_type_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `likes_likesrecord_content_type_id_673500f9_fk_django_co` (`content_type_id`),
  KEY `likes_likesrecord_user_id_7fb8ada3_fk_auth_user_id` (`user_id`),
  CONSTRAINT `likes_likesrecord_content_type_id_673500f9_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `likes_likesrecord_user_id_7fb8ada3_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `likes_likesrecord_chk_1` CHECK ((`object_id` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes_likesrecord`
--

LOCK TABLES `likes_likesrecord` WRITE;
/*!40000 ALTER TABLE `likes_likesrecord` DISABLE KEYS */;
INSERT INTO `likes_likesrecord` VALUES (14,80,'2021-02-11 16:04:31.773000',12,1),(23,36,'2021-02-13 17:00:50.627000',8,1),(43,35,'2021-02-13 17:33:44.162000',8,1),(44,88,'2021-02-14 15:02:43.985000',12,1),(51,96,'2021-02-14 15:06:00.943000',12,1),(61,98,'2021-02-14 15:07:28.545000',12,1),(68,99,'2021-02-14 15:15:29.107000',12,1),(69,100,'2021-02-14 15:30:12.128000',12,1),(77,103,'2021-02-14 15:43:33.922000',12,1),(87,106,'2021-02-14 15:54:23.676000',12,1);
/*!40000 ALTER TABLE `likes_likesrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_cache_table`
--

DROP TABLE IF EXISTS `my_cache_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `my_cache_table` (
  `cache_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires` datetime(6) NOT NULL,
  PRIMARY KEY (`cache_key`),
  KEY `my_cache_table_expires` (`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_cache_table`
--

LOCK TABLES `my_cache_table` WRITE;
/*!40000 ALTER TABLE `my_cache_table` DISABLE KEYS */;
INSERT INTO `my_cache_table` VALUES (':1:hot_blogs_for_7_days','gAWVDwsAAAAAAACMFmRqYW5nby5kYi5tb2RlbHMucXVlcnmUjAhRdWVyeVNldJSTlCmBlH2UKIwFbW9kZWyUjAtibG9nLm1vZGVsc5SMBEJsb2eUk5SMA19kYpROjAZfaGludHOUfZSMBl9xdWVyeZSMGmRqYW5nby5kYi5tb2RlbHMuc3FsLnF1ZXJ5lIwFUXVlcnmUk5QpgZR9lCiMEV9jb25zdHJ1Y3Rvcl9hcmdzlGgIhZR9lIaUaAVoCIwOYWxpYXNfcmVmY291bnSUfZQojAlibG9nX2Jsb2eUSwSMGnJlYWRfc3RhdGlzdGljc19yZWFkZGV0YWlslEsDdYwJYWxpYXNfbWFwlH2UKGgYjCNkamFuZ28uZGIubW9kZWxzLnNxbC5kYXRhc3RydWN0dXJlc5SMCUJhc2VUYWJsZZSTlCmBlH2UKIwKdGFibGVfbmFtZZRoGIwLdGFibGVfYWxpYXOUaBh1YmgZaByMBEpvaW6Uk5QpgZR9lChoIWgZjAxwYXJlbnRfYWxpYXOUaBhoImgZjAlqb2luX3R5cGWUjApJTk5FUiBKT0lOlIwJam9pbl9jb2xzlIwCaWSUjAlvYmplY3RfaWSUhpSFlIwKam9pbl9maWVsZJSMImRqYW5nby5jb250cmliLmNvbnRlbnR0eXBlcy5maWVsZHOUjApHZW5lcmljUmVslJOUKYGUfZQojAVmaWVsZJSMF2RqYW5nby5kYi5tb2RlbHMuZmllbGRzlIwLX2xvYWRfZmllbGSUk5SMBGJsb2eUaAeMDHJlYWRfZGV0YWlsc5SHlFKUaAWMFnJlYWRfc3RhdGlzdGljcy5tb2RlbHOUjApSZWFkRGV0YWlslJOUjAxyZWxhdGVkX25hbWWUjAErlIwScmVsYXRlZF9xdWVyeV9uYW1llE6MEGxpbWl0X2Nob2ljZXNfdG+UfZSMC3BhcmVudF9saW5rlImMCW9uX2RlbGV0ZZSMGWRqYW5nby5kYi5tb2RlbHMuZGVsZXRpb26UjApET19OT1RISU5HlJOUjAtzeW1tZXRyaWNhbJSJjAhtdWx0aXBsZZSIjA1yZWxhdGVkX21vZGVslGgIdWKMCG51bGxhYmxllIiMEWZpbHRlcmVkX3JlbGF0aW9ulE51YnWMCmFsaWFzX2NvbHOUiIwQZXh0ZXJuYWxfYWxpYXNlc5R9lIwJdGFibGVfbWFwlH2UKGgYXZRoGGFoGV2UaBlhdYwMZGVmYXVsdF9jb2xzlImMEGRlZmF1bHRfb3JkZXJpbmeUiIwRc3RhbmRhcmRfb3JkZXJpbmeUiIwMdXNlZF9hbGlhc2VzlI+UjBBmaWx0ZXJfaXNfc3RpY2t5lImMCHN1YnF1ZXJ5lImMBnNlbGVjdJSMHGRqYW5nby5kYi5tb2RlbHMuZXhwcmVzc2lvbnOUjANDb2yUk5QpgZR9lChoEmgYaDhoOWgHaCuHlFKUhpR9lIaUjAxvdXRwdXRfZmllbGSUaGSMBWFsaWFzlGgYjAZ0YXJnZXSUaGSMCGlkZW50aXR5lChoYGhpaBiGlGhqjAlibG9nLkJsb2eUaCuGlIaUaGhOhpR0lHViaGApgZR9lChoEmgYaDhoOWgHjAV0aXRsZZSHlFKUhpR9lIaUaGhodmhpaBhoamh2aGsoaGBoaWgYhpRoaowJYmxvZy5CbG9nlGh0hpSGlGhoToaUdJR1YoaUjAV3aGVyZZSMGmRqYW5nby5kYi5tb2RlbHMuc3FsLndoZXJllIwJV2hlcmVOb2RllJOUKYGUfZQojAhjaGlsZHJlbpRdlCiMGGRqYW5nby5kYi5tb2RlbHMubG9va3Vwc5SMEkdyZWF0ZXJUaGFuT3JFcXVhbJSTlCmBlH2UKIwDbGhzlGhgKYGUfZQoaBJoGWg4jA9yZWFkX3N0YXRpc3RpY3OUaD6MBGRhdGWUh5RSlIaUfZSGlGhoaJRoaWgZaGpolIwSY29udGFpbnNfYWdncmVnYXRllIl1YowDcmhzlIwIZGF0ZXRpbWWUjARkYXRllJOUQwQH5QMPlIWUUpSMFGJpbGF0ZXJhbF90cmFuc2Zvcm1zlF2UaJiJdWJoiYwITGVzc1RoYW6Uk5QpgZR9lChojmiPaJlonEMEB+UDFpSFlFKUaKBdlGiYiXViZYwJY29ubmVjdG9ylIwDQU5ElIwHbmVnYXRlZJSJaJiJdWKMC3doZXJlX2NsYXNzlGiEjAhncm91cF9ieZRoYWhyhpSMCG9yZGVyX2J5lIwNLXJlYWRfbnVtX3N1bZSFlIwIbG93X21hcmuUSwCMCWhpZ2hfbWFya5RLB4wIZGlzdGluY3SUiYwPZGlzdGluY3RfZmllbGRzlCmMEXNlbGVjdF9mb3JfdXBkYXRllImMGHNlbGVjdF9mb3JfdXBkYXRlX25vd2FpdJSJjB1zZWxlY3RfZm9yX3VwZGF0ZV9za2lwX2xvY2tlZJSJjBRzZWxlY3RfZm9yX3VwZGF0ZV9vZpQpjA5zZWxlY3RfcmVsYXRlZJSJjAltYXhfZGVwdGiUSwWMDXZhbHVlc19zZWxlY3SUaCtodIaUjAthbm5vdGF0aW9uc5R9lIwMcmVhZF9udW1fc3VtlIwbZGphbmdvLmRiLm1vZGVscy5hZ2dyZWdhdGVzlIwDU3VtlJOUKYGUfZQoaBKMFnJlYWRfZGV0YWlsc19fcmVhZF9udW2UhZR9lIaUaLWJjAZmaWx0ZXKUTowSc291cmNlX2V4cHJlc3Npb25zlF2UaGApgZR9lChoEmgZaDhokWg+jAhyZWFkX251bZSHlFKUhpR9lIaUaGho0mhpaBloamjSjBVfb3V0cHV0X2ZpZWxkX29yX25vbmWUaNJomIl1YmGMBWV4dHJhlH2UjAppc19zdW1tYXJ5lIloaGjSaGsoaMSMC2V4cHJlc3Npb25zlGjHhZSGlGi1iYaUaMtOhpRo1ymGlHSUdWJzjBZhbm5vdGF0aW9uX3NlbGVjdF9tYXNrlI+UKGjBkIwYX2Fubm90YXRpb25fc2VsZWN0X2NhY2hllH2UaMFoxXOMCmNvbWJpbmF0b3KUTowOY29tYmluYXRvcl9hbGyUiYwQY29tYmluZWRfcXVlcmllc5QpaNd9lIwRZXh0cmFfc2VsZWN0X21hc2uUj5SME19leHRyYV9zZWxlY3RfY2FjaGWUTowMZXh0cmFfdGFibGVzlCmMDmV4dHJhX29yZGVyX2J5lCmMEGRlZmVycmVkX2xvYWRpbmeUKJGUiIaUjBNfZmlsdGVyZWRfcmVsYXRpb25zlH2UjA1leHBsYWluX3F1ZXJ5lImMDmV4cGxhaW5fZm9ybWF0lE6MD2V4cGxhaW5fb3B0aW9uc5R9lIwNX2xvb2t1cF9qb2luc5RdlChoGGgZZYwKYmFzZV90YWJsZZRoGHVijA1fcmVzdWx0X2NhY2hllF2UjA5fc3RpY2t5X2ZpbHRlcpSJjApfZm9yX3dyaXRllImMGV9wcmVmZXRjaF9yZWxhdGVkX2xvb2t1cHOUKYwOX3ByZWZldGNoX2RvbmWUiYwWX2tub3duX3JlbGF0ZWRfb2JqZWN0c5R9lIwPX2l0ZXJhYmxlX2NsYXNzlGgAjA5WYWx1ZXNJdGVyYWJsZZSTlIwHX2ZpZWxkc5RoK2h0hpSMEl9kZWZlcl9uZXh0X2ZpbHRlcpSJjBBfZGVmZXJyZWRfZmlsdGVylE6MD19kamFuZ29fdmVyc2lvbpSMBTMuMS4zlHViLg==','2021-03-22 15:33:15.000000');
/*!40000 ALTER TABLE `my_cache_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `read_statistics_readdetail`
--

DROP TABLE IF EXISTS `read_statistics_readdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `read_statistics_readdetail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `read_num` int NOT NULL,
  `object_id` int unsigned NOT NULL,
  `content_type_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `read_statistics_read_content_type_id_589c7d92_fk_django_co` (`content_type_id`),
  CONSTRAINT `read_statistics_read_content_type_id_589c7d92_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `read_statistics_readdetail_chk_1` CHECK ((`object_id` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `read_statistics_readdetail`
--

LOCK TABLES `read_statistics_readdetail` WRITE;
/*!40000 ALTER TABLE `read_statistics_readdetail` DISABLE KEYS */;
INSERT INTO `read_statistics_readdetail` VALUES (1,'2021-01-12',1,33,8),(2,'2021-01-12',1,32,8),(5,'2021-01-14',5,20,8),(6,'2021-01-15',1,35,8),(7,'2021-01-15',1,15,8),(8,'2021-01-15',1,20,8),(10,'2021-01-16',1,36,8),(11,'2021-01-17',1,36,8),(12,'2021-01-18',1,36,8),(14,'2021-01-21',1,20,8),(16,'2021-01-22',5,35,8),(17,'2021-01-23',1,35,8),(18,'2021-01-24',9,35,8),(19,'2021-01-24',2,36,8),(20,'2021-01-25',3,35,8),(21,'2021-01-26',1,35,8),(22,'2021-01-27',1,35,8),(23,'2021-01-28',1,35,8),(24,'2021-02-01',1,33,8),(25,'2021-02-01',2,36,8),(26,'2021-02-02',2,36,8),(27,'2021-02-04',1,36,8),(28,'2021-02-11',11,36,8),(29,'2021-02-11',1,35,8),(30,'2021-02-13',6,35,8),(31,'2021-02-13',2,36,8),(32,'2021-02-14',2,36,8),(33,'2021-02-14',1,35,8),(34,'2021-02-15',2,36,8),(35,'2021-02-15',1,35,8),(36,'2021-02-16',7,36,8),(37,'2021-02-18',1,36,8),(38,'2021-02-21',1,36,8),(39,'2021-03-20',1,36,8);
/*!40000 ALTER TABLE `read_statistics_readdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `read_statistics_readnum`
--

DROP TABLE IF EXISTS `read_statistics_readnum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `read_statistics_readnum` (
  `id` int NOT NULL AUTO_INCREMENT,
  `read_num` int NOT NULL,
  `object_id` int unsigned NOT NULL,
  `content_type_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `read_statistics_read_content_type_id_560f0f39_fk_django_co` (`content_type_id`),
  CONSTRAINT `read_statistics_read_content_type_id_560f0f39_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `read_statistics_readnum_chk_1` CHECK ((`object_id` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `read_statistics_readnum`
--

LOCK TABLES `read_statistics_readnum` WRITE;
/*!40000 ALTER TABLE `read_statistics_readnum` DISABLE KEYS */;
INSERT INTO `read_statistics_readnum` VALUES (2,39,36,8),(3,32,35,8),(4,2,33,8),(5,1,32,8),(7,7,20,8),(8,1,15,8);
/*!40000 ALTER TABLE `read_statistics_readnum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_profile`
--

DROP TABLE IF EXISTS `user_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_profile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nickname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `user_profile_user_id_8fdce8e2_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profile`
--

LOCK TABLES `user_profile` WRITE;
/*!40000 ALTER TABLE `user_profile` DISABLE KEYS */;
INSERT INTO `user_profile` VALUES (1,'蜡笔',1);
/*!40000 ALTER TABLE `user_profile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-26  0:33:07
