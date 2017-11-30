-- MySQL dump 10.13  Distrib 5.6.36, for Linux (x86_64)
--
-- Host: localhost    Database: mysql
-- ------------------------------------------------------
-- Server version	5.6.31-google-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `www_aflix`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `www_aflix` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `www_aflix`;

--
-- Table structure for table `about`
--

DROP TABLE IF EXISTS `about`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `about` (
  `id` int(111) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `about`
--

LOCK TABLES `about` WRITE;
/*!40000 ALTER TABLE `about` DISABLE KEYS */;
INSERT INTO `about` VALUES (1,'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum\r\n\r\n\r\nlorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum\r\n\r\nlorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum\r\n\r\n\r\nlorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum\r\n\r\n\r\n\r\nlorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum\r\n\r\n\r\nlorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum\r\n\r\n\r\nlorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum\r\n\r\n');
/*!40000 ALTER TABLE `about` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `add_ads`
--

DROP TABLE IF EXISTS `add_ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `add_ads` (
  `id` int(111) NOT NULL AUTO_INCREMENT,
  `title` varchar(300) NOT NULL,
  `link` varchar(500) NOT NULL,
  `ads_link` varchar(500) NOT NULL,
  `status` int(111) NOT NULL,
  `type` varchar(500) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `second` varchar(500) DEFAULT NULL,
  `time` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `add_ads`
--

LOCK TABLES `add_ads` WRITE;
/*!40000 ALTER TABLE `add_ads` DISABLE KEYS */;
INSERT INTO `add_ads` VALUES (8,'Demo Ads','nui3nfj1to','https://www.youtube.com',1,'wistia','2017-08-12 20:11:22','0000-00-00 00:00:00',NULL,NULL),(11,'demo123','rj9i5lp661','https://www.google.co.in/',1,'wistia','2017-11-21 04:06:33','2017-11-21 04:06:33','10','0:0:10');
/*!40000 ALTER TABLE `add_ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_subscription`
--

DROP TABLE IF EXISTS `admin_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_subscription` (
  `id` int(111) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(500) NOT NULL,
  `month` varchar(500) NOT NULL,
  `year` varchar(500) NOT NULL,
  `from_admin` varchar(500) NOT NULL,
  `from_contributor` varchar(500) NOT NULL,
  `status` int(111) NOT NULL,
  `st_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_subscription`
--

LOCK TABLES `admin_subscription` WRITE;
/*!40000 ALTER TABLE `admin_subscription` DISABLE KEYS */;
INSERT INTO `admin_subscription` VALUES (1,'1','January','2017','0.00','0.00',0,'2017-11-21'),(2,'1','February','2017','0.00','0.00',0,'2017-11-21'),(3,'1','March','2017','0.00','0.00',0,'2017-11-21'),(4,'1','April','2017','0.00','0.00',0,'2017-11-21'),(5,'1','May','2017','0.00','0.00',0,'2017-11-21'),(6,'1','June','2017','0.00','0.00',0,'2017-11-21'),(7,'1','July','2017','0.00','0.00',0,'2017-11-21'),(8,'1','August','2017','0.00','0.00',0,'2017-11-21'),(9,'1','September','2017','0.00','0.00',0,'2017-11-21'),(10,'1','October','2017','0.00','0.00',0,'2017-11-21'),(11,'1','November','2017','42.11','110.53',0,'2017-11-21'),(12,'1','December','2017','0.00','0.00',0,'2017-11-21');
/*!40000 ALTER TABLE `admin_subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assignto`
--

DROP TABLE IF EXISTS `assignto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assignto` (
  `id` int(111) NOT NULL AUTO_INCREMENT,
  `video_id` int(111) NOT NULL,
  `user_id` int(111) NOT NULL,
  `ass_date` date NOT NULL,
  `status` int(111) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignto`
--

LOCK TABLES `assignto` WRITE;
/*!40000 ALTER TABLE `assignto` DISABLE KEYS */;
INSERT INTO `assignto` VALUES (69,97,93,'2017-04-03',1),(70,97,125,'2017-04-03',1),(71,115,93,'2017-04-03',1),(72,115,125,'2017-04-03',1),(73,95,93,'2017-04-04',1),(74,95,125,'2017-04-04',1),(75,188,188,'2017-05-03',1),(76,190,188,'2017-05-03',1),(77,189,188,'2017-05-03',1),(78,187,188,'2017-05-03',1),(79,191,188,'2017-05-03',1),(80,209,256,'2017-07-28',1),(81,212,256,'2017-07-28',1),(82,249,256,'2017-08-06',1),(83,253,256,'2017-08-09',1),(84,253,319,'2017-08-10',1),(85,252,319,'2017-08-10',1);
/*!40000 ALTER TABLE `assignto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banner` (
  `id` int(111) NOT NULL AUTO_INCREMENT,
  `banner` varchar(500) NOT NULL,
  `add_link` varchar(500) NOT NULL,
  `open` int(111) NOT NULL,
  `status` int(111) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner`
--

LOCK TABLES `banner` WRITE;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL,
  `content_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,1,184,'HelloVideo\\Models\\Video','dffs','2017-08-31 11:54:23','2017-08-31 11:54:23'),(2,984,254,'HelloVideo\\Models\\Video','Normally, comparing the spec sheets of a new iPhone and an Android flagship is useless. Given the gulf in software between the two, specs that would normally mean something','2017-09-15 02:18:21','2017-09-15 02:18:21'),(3,1,185,'HelloVideo\\Models\\Video','asdsdd','2017-09-26 13:54:23','2017-09-26 13:54:23'),(4,1,185,'HelloVideo\\Models\\Video','xczxc','2017-09-26 13:54:30','2017-09-26 13:54:30');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contribute_deletevideo`
--

DROP TABLE IF EXISTS `contribute_deletevideo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contribute_deletevideo` (
  `id` int(111) NOT NULL AUTO_INCREMENT,
  `user_id` int(111) NOT NULL,
  `video_id` int(111) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contribute_deletevideo`
--

LOCK TABLES `contribute_deletevideo` WRITE;
/*!40000 ALTER TABLE `contribute_deletevideo` DISABLE KEYS */;
INSERT INTO `contribute_deletevideo` VALUES (13,77,106);
/*!40000 ALTER TABLE `contribute_deletevideo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contributer_tb`
--

DROP TABLE IF EXISTS `contributer_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contributer_tb` (
  `id` int(111) NOT NULL AUTO_INCREMENT,
  `premium_video` varchar(500) NOT NULL DEFAULT '60',
  `subscribe_video` varchar(500) NOT NULL DEFAULT '50',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_id` int(200) DEFAULT NULL,
  `def` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contributer_tb`
--

LOCK TABLES `contributer_tb` WRITE;
/*!40000 ALTER TABLE `contributer_tb` DISABLE KEYS */;
INSERT INTO `contributer_tb` VALUES (6,'30','40','2017-08-13 09:08:22','0000-00-00 00:00:00',NULL,NULL),(7,'60','56','2017-11-22 11:02:07','2017-11-22 11:02:07',187,0),(8,'60','50','2017-11-22 11:02:19','2017-11-22 11:02:19',209,1),(9,'60','50','2017-11-22 11:02:19','2017-11-22 11:02:19',225,1),(10,'70','30','2017-08-16 05:53:05','2017-08-16 05:53:05',249,NULL),(11,'60','50','2017-11-22 11:02:19','2017-11-22 11:02:19',250,1),(12,'70','30','2017-08-16 05:53:05','2017-08-16 05:53:05',263,NULL),(13,'70','30','2017-08-16 05:53:05','2017-08-16 05:53:05',264,NULL),(14,'70','30','2017-08-16 05:53:05','2017-08-16 05:53:05',969,NULL),(15,'60','50','2017-11-22 11:02:19','2017-11-22 11:02:19',981,1),(16,'60','50','2017-11-22 11:02:19','2017-11-22 11:02:19',986,1),(17,'60','50','2017-11-22 11:02:19','2017-11-22 11:02:19',988,1),(18,'60','50','2017-11-22 11:02:19','2017-11-22 11:02:19',985,1),(19,'60','50','2017-11-22 11:02:19','2017-11-22 11:02:19',989,1),(20,'60','50','2017-11-22 11:02:19','2017-11-22 11:02:19',990,1),(21,'60','50','2017-11-22 11:02:19','2017-11-22 11:02:19',224,1),(22,'60','50','2017-11-22 11:02:19','2017-11-22 11:02:19',1009,1);
/*!40000 ALTER TABLE `contributer_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contributor_month_payout`
--

DROP TABLE IF EXISTS `contributor_month_payout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contributor_month_payout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `total_views` int(11) NOT NULL,
  `subscribe_view` int(11) NOT NULL,
  `premimum_view` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `earned_amount` float NOT NULL,
  `final_amount` float NOT NULL,
  `paid_amount` float NOT NULL,
  `payment_status` tinyint(4) NOT NULL COMMENT '1=Done,2=Partial Done,3=Hold,4=Cancelled,5=Rejected, 6=Pending',
  `status` tinyint(4) NOT NULL COMMENT '1=Active,0=Inactive',
  `site_revenue_from_user` float NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contributor_month_payout`
--

LOCK TABLES `contributor_month_payout` WRITE;
/*!40000 ALTER TABLE `contributor_month_payout` DISABLE KEYS */;
INSERT INTO `contributor_month_payout` VALUES (1,187,2,0,0,10,2017,0,1,0,3,1,0,'2017-11-10 04:14:36','2017-11-22 07:40:14',1,1),(2,209,2,0,0,10,2017,0,0,0,6,1,0,'2017-11-10 04:14:36','2017-11-10 04:14:36',1,1),(3,225,2,0,0,10,2017,0,0,0,6,1,0,'2017-11-10 04:14:36','2017-11-10 04:14:36',1,1),(4,249,2,0,0,10,2017,0,0,0,6,1,0,'2017-11-10 04:14:36','2017-11-10 04:14:36',1,1),(5,250,2,0,0,10,2017,0,0,0,6,1,0,'2017-11-10 04:14:36','2017-11-10 04:14:36',1,1),(6,263,2,0,0,10,2017,0,0,0,6,1,0,'2017-11-10 04:14:36','2017-11-10 04:14:36',1,1),(7,264,2,0,0,10,2017,0,0,0,6,1,0,'2017-11-10 04:14:36','2017-11-10 04:14:36',1,1),(8,981,2,0,0,10,2017,0,0,0,6,1,0,'2017-11-10 04:14:37','2017-11-10 04:14:37',1,1),(9,985,2,0,0,10,2017,0,0,0,6,1,0,'2017-11-10 04:14:37','2017-11-10 04:14:37',1,1),(10,986,2,0,0,10,2017,0,0,0,1,1,0,'2017-11-10 04:14:37','2017-11-20 14:59:52',1,1),(11,988,2,0,0,10,2017,0,0,0,6,1,0,'2017-11-10 04:14:37','2017-11-10 04:14:37',1,1),(12,989,2,0,0,10,2017,0,0,0,6,1,0,'2017-11-10 04:14:37','2017-11-10 04:14:37',1,1),(13,990,2,0,0,10,2017,0,0,0,6,1,0,'2017-11-10 04:14:37','2017-11-10 04:14:37',1,1),(14,187,0,0,0,9,2017,0,0,0,6,1,0,'2017-11-10 04:15:09','2017-11-10 04:15:09',1,1),(15,209,0,0,0,9,2017,0,0,0,6,1,0,'2017-11-10 04:15:09','2017-11-10 04:15:09',1,1),(16,225,0,0,0,9,2017,0,0,0,6,1,0,'2017-11-10 04:15:09','2017-11-10 04:15:09',1,1),(17,249,0,0,0,9,2017,0,0,0,6,1,0,'2017-11-10 04:15:09','2017-11-10 04:15:09',1,1),(18,250,0,0,0,9,2017,0,0,0,6,1,0,'2017-11-10 04:15:09','2017-11-10 04:15:09',1,1),(19,263,0,0,0,9,2017,0,0,0,6,1,0,'2017-11-10 04:15:10','2017-11-10 04:15:10',1,1),(20,264,0,0,0,9,2017,0,0,0,6,1,0,'2017-11-10 04:15:10','2017-11-10 04:15:10',1,1),(21,981,0,0,0,9,2017,0,0,0,6,1,0,'2017-11-10 04:15:10','2017-11-10 04:15:10',1,1),(22,985,0,0,0,9,2017,0,0,0,6,1,0,'2017-11-10 04:15:10','2017-11-10 04:15:10',1,1),(23,986,0,0,0,9,2017,0,0,0,6,1,0,'2017-11-10 04:15:10','2017-11-10 04:15:10',1,1),(24,988,0,0,0,9,2017,0,0,0,6,1,0,'2017-11-10 04:15:10','2017-11-10 04:15:10',1,1),(25,989,0,0,0,9,2017,0,0,0,6,1,0,'2017-11-10 04:15:10','2017-11-10 04:15:10',1,1),(26,990,0,0,0,9,2017,0,0,0,6,1,0,'2017-11-10 04:15:10','2017-11-10 04:15:10',1,1);
/*!40000 ALTER TABLE `contributor_month_payout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon_code`
--

DROP TABLE IF EXISTS `coupon_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon_code` (
  `id` int(111) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `value` int(222) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon_code`
--

LOCK TABLES `coupon_code` WRITE;
/*!40000 ALTER TABLE `coupon_code` DISABLE KEYS */;
INSERT INTO `coupon_code` VALUES (5,'Demo1',50),(6,'Demo2',20),(7,'Demo3',10),(8,'123456789',5);
/*!40000 ALTER TABLE `coupon_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favorites` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
INSERT INTO `favorites` VALUES (5,1,26,'2015-01-13 14:05:58','2015-01-13 14:05:58'),(6,1,27,'2015-01-13 14:36:14','2015-01-13 14:36:14'),(7,1,24,'2015-01-13 14:36:18','2015-01-13 14:36:18'),(8,1,23,'2015-01-13 14:36:22','2015-01-13 14:36:22'),(9,1,22,'2015-01-13 14:36:28','2015-01-13 14:36:28'),(10,1,20,'2015-01-13 14:36:34','2015-01-13 14:36:34'),(11,1,19,'2015-01-13 14:36:38','2015-01-13 14:36:38'),(12,1,18,'2015-01-13 14:36:43','2015-01-13 14:36:43'),(13,1,14,'2015-01-13 14:37:02','2015-01-13 14:37:02'),(14,1,13,'2015-01-13 14:37:06','2015-01-13 14:37:06'),(15,2,29,'2015-01-28 13:43:05','2015-01-28 13:43:05'),(19,1,47,'2015-02-27 20:34:09','2015-02-27 20:34:09'),(22,2,46,'2015-03-01 04:31:19','2015-03-01 04:31:19'),(23,2,30,'2015-03-01 04:31:23','2015-03-01 04:31:23'),(24,77,47,'2017-02-08 06:07:07','2017-02-08 06:07:07'),(25,77,49,'2017-02-08 07:38:13','2017-02-08 07:38:13'),(26,77,46,'2017-02-09 12:38:18','2017-02-09 12:38:18'),(27,77,52,'2017-02-19 06:48:40','2017-02-19 06:48:40'),(28,77,62,'2017-02-21 14:57:01','2017-02-21 14:57:01'),(30,87,68,'2017-03-01 09:37:24','2017-03-01 09:37:24'),(31,77,65,'2017-03-01 13:01:55','2017-03-01 13:01:55'),(32,51,89,'2017-03-30 10:24:42','2017-03-30 10:24:42'),(33,77,119,'2017-04-08 14:50:03','2017-04-08 14:50:03'),(34,77,136,'2017-04-10 15:52:00','2017-04-10 15:52:00'),(35,1,134,'2017-04-11 04:46:15','2017-04-11 04:46:15'),(36,1,135,'2017-04-13 10:11:45','2017-04-13 10:11:45'),(38,77,177,'2017-04-17 05:55:31','2017-04-17 05:55:31'),(40,77,180,'2017-04-19 11:56:38','2017-04-19 11:56:38'),(41,1,180,'2017-04-26 02:54:43','2017-04-26 02:54:43'),(42,189,188,'2017-05-03 06:28:05','2017-05-03 06:28:05'),(43,189,190,'2017-06-05 14:16:59','2017-06-05 14:16:59'),(44,215,185,'2017-07-10 12:00:01','2017-07-10 12:00:01'),(45,188,183,'2017-07-19 07:11:14','2017-07-19 07:11:14');
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `live_chat`
--

DROP TABLE IF EXISTS `live_chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `live_chat` (
  `id` int(111) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(500) NOT NULL,
  `message` text NOT NULL,
  `video_id` int(111) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `live_chat`
--

LOCK TABLES `live_chat` WRITE;
/*!40000 ALTER TABLE `live_chat` DISABLE KEYS */;
INSERT INTO `live_chat` VALUES (29,'','',0),(30,'','',0),(31,'','',0);
/*!40000 ALTER TABLE `live_chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (3,NULL,3,'Home','/','none','2015-01-06 02:52:06','2017-11-19 06:49:10'),(11,NULL,1,'Videos','','videos','2015-01-11 01:14:53','2017-11-19 06:49:10'),(13,NULL,2,'Shows','http://aflix.amilin.tv/','none','2017-02-08 12:43:39','2017-11-19 06:49:10'),(14,NULL,4,'Live','http://aflix.amilin.tv/','none','2017-02-08 12:43:53','2017-11-19 06:49:08');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2016_09_22_234554_create_comments_table',1),(2,'2017_08_13_201415_payment',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `month_wise_subscrition`
--

DROP TABLE IF EXISTS `month_wise_subscrition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `month_wise_subscrition` (
  `id` int(111) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(500) NOT NULL,
  `month` varchar(500) NOT NULL,
  `year` varchar(500) NOT NULL,
  `total_subscription` varchar(200) DEFAULT NULL,
  `status` int(111) DEFAULT NULL,
  `st_date` date DEFAULT NULL,
  `order_m` int(111) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=589 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `month_wise_subscrition`
--

LOCK TABLES `month_wise_subscrition` WRITE;
/*!40000 ALTER TABLE `month_wise_subscrition` DISABLE KEYS */;
INSERT INTO `month_wise_subscrition` VALUES (313,'arsar@amilin.tv','January','2017','0.00',0,'2017-10-31',0),(314,'arsar@amilin.tv','February','2017','0.00',0,'2017-10-31',0),(315,'arsar@amilin.tv','March','2017','0.00',0,'2017-10-31',0),(316,'arsar@amilin.tv','April','2017','0.00',0,'2017-10-31',0),(317,'arsar@amilin.tv','May','2017','0.00',0,'2017-10-31',0),(318,'arsar@amilin.tv','June','2017','0.00',0,'2017-10-31',0),(319,'arsar@amilin.tv','July','2017','0.00',0,'2017-10-31',0),(320,'arsar@amilin.tv','August','2017','0.00',0,'2017-10-31',0),(321,'arsar@amilin.tv','September','2017','0.00',0,'2017-10-31',0),(322,'arsar@amilin.tv','October','2017','0.00',0,'2017-10-31',0),(323,'arsar@amilin.tv','November','2017','0.00',0,'2017-10-31',0),(324,'arsar@amilin.tv','December','2017','0.00',0,'2017-10-31',0),(325,'sultanpurnaresh@gmail.com','January','2017','0.00',0,'0000-00-00',0),(326,'sultanpurnaresh@gmail.com','February','2017','0.00',0,'0000-00-00',0),(327,'sultanpurnaresh@gmail.com','March','2017','0.00',0,'0000-00-00',0),(328,'sultanpurnaresh@gmail.com','April','2017','0.00',0,'0000-00-00',0),(329,'sultanpurnaresh@gmail.com','May','2017','0.00',0,'0000-00-00',0),(330,'sultanpurnaresh@gmail.com','June','2017','0.00',0,'0000-00-00',0),(331,'sultanpurnaresh@gmail.com','July','2017','0.00',0,'0000-00-00',0),(332,'sultanpurnaresh@gmail.com','August','2017','0.00',0,'0000-00-00',0),(333,'sultanpurnaresh@gmail.com','September','2017','0.00',0,'0000-00-00',0),(334,'sultanpurnaresh@gmail.com','October','2017','0.00',0,'0000-00-00',0),(335,'sultanpurnaresh@gmail.com','November','2017','0.00',0,'0000-00-00',0),(336,'sultanpurnaresh@gmail.com','December','2017','0.00',0,'0000-00-00',0),(385,'brainyapps@aflix.tv','January','2017','0.00',0,'2017-05-02',0),(386,'brainyapps@aflix.tv','February','2017','0.00',0,'2017-05-02',0),(387,'brainyapps@aflix.tv','March','2017','0.00',0,'2017-05-02',0),(388,'brainyapps@aflix.tv','April','2017','0.00',0,'2017-05-02',0),(389,'brainyapps@aflix.tv','May','2017','0.00',0,'2017-05-02',0),(390,'brainyapps@aflix.tv','June','2017','0.00',0,'2017-05-02',0),(391,'brainyapps@aflix.tv','July','2017','0.00',0,'2017-05-02',0),(392,'brainyapps@aflix.tv','August','2017','0.00',0,'2017-05-02',0),(393,'brainyapps@aflix.tv','September','2017','0.00',0,'2017-05-02',0),(394,'brainyapps@aflix.tv','October','2017','0.00',0,'2017-05-02',0),(395,'brainyapps@aflix.tv','November','2017','0.00',0,'2017-05-02',0),(396,'brainyapps@aflix.tv','December','2017','0.00',0,'2017-05-02',0),(397,'prashantrocks1990@gmail.com','January','2017','0.00',0,'0000-00-00',0),(398,'prashantrocks1990@gmail.com','February','2017','0.00',0,'0000-00-00',0),(399,'prashantrocks1990@gmail.com','March','2017','0.00',0,'0000-00-00',0),(400,'prashantrocks1990@gmail.com','April','2017','0.00',0,'0000-00-00',0),(401,'prashantrocks1990@gmail.com','May','2017','0.00',0,'0000-00-00',0),(402,'prashantrocks1990@gmail.com','June','2017','0.00',0,'0000-00-00',0),(403,'prashantrocks1990@gmail.com','July','2017','0.00',0,'0000-00-00',0),(404,'prashantrocks1990@gmail.com','August','2017','0.00',0,'0000-00-00',0),(405,'prashantrocks1990@gmail.com','September','2017','0.00',0,'0000-00-00',0),(406,'prashantrocks1990@gmail.com','October','2017','0.00',0,'0000-00-00',0),(407,'prashantrocks1990@gmail.com','November','2017','0.00',0,'0000-00-00',0),(408,'prashantrocks1990@gmail.com','December','2017','0.00',0,'0000-00-00',0),(409,'azarul@brainybunch.com','January','2017','0.00',0,'2017-08-30',0),(410,'azarul@brainybunch.com','February','2017','0.00',0,'2017-08-30',0),(411,'azarul@brainybunch.com','March','2017','0.00',0,'2017-08-30',0),(412,'azarul@brainybunch.com','April','2017','0.00',0,'2017-08-30',0),(413,'azarul@brainybunch.com','May','2017','0.00',0,'2017-08-30',0),(414,'azarul@brainybunch.com','June','2017','0.00',0,'2017-08-30',0),(415,'azarul@brainybunch.com','July','2017','0.00',0,'2017-08-30',0),(416,'azarul@brainybunch.com','August','2017','0.00',0,'2017-08-30',0),(417,'azarul@brainybunch.com','September','2017','0.00',0,'2017-08-30',0),(418,'azarul@brainybunch.com','October','2017','0.00',0,'2017-08-30',0),(419,'azarul@brainybunch.com','November','2017','0.00',0,'2017-08-30',0),(420,'azarul@brainybunch.com','December','2017','0.00',0,'2017-08-30',0),(421,'mardhiah@brainybunch.com','January','2017','0.00',0,'2017-07-24',0),(422,'mardhiah@brainybunch.com','February','2017','0.00',0,'2017-07-24',0),(423,'mardhiah@brainybunch.com','March','2017','0.00',0,'2017-07-24',0),(424,'mardhiah@brainybunch.com','April','2017','0.00',0,'2017-07-24',0),(425,'mardhiah@brainybunch.com','May','2017','0.00',0,'2017-07-24',0),(426,'mardhiah@brainybunch.com','June','2017','0.00',0,'2017-07-24',0),(427,'mardhiah@brainybunch.com','July','2017','0.00',0,'2017-07-24',0),(428,'mardhiah@brainybunch.com','August','2017','0.00',0,'2017-07-24',0),(429,'mardhiah@brainybunch.com','September','2017','0.00',0,'2017-07-24',0),(430,'mardhiah@brainybunch.com','October','2017','0.00',0,'2017-07-24',0),(431,'mardhiah@brainybunch.com','November','2017','0.00',0,'2017-07-24',0),(432,'mardhiah@brainybunch.com','December','2017','0.00',0,'2017-07-24',0),(433,'akma@brainybunch.com','January','2017','0.00',0,'0000-00-00',0),(434,'akma@brainybunch.com','February','2017','0.00',0,'0000-00-00',0),(435,'akma@brainybunch.com','March','2017','0.00',0,'0000-00-00',0),(436,'akma@brainybunch.com','April','2017','0.00',0,'0000-00-00',0),(437,'akma@brainybunch.com','May','2017','0.00',0,'0000-00-00',0),(438,'akma@brainybunch.com','June','2017','0.00',0,'0000-00-00',0),(439,'akma@brainybunch.com','July','2017','0.00',0,'0000-00-00',0),(440,'akma@brainybunch.com','August','2017','0.00',0,'0000-00-00',0),(441,'akma@brainybunch.com','September','2017','0.00',0,'0000-00-00',0),(442,'akma@brainybunch.com','October','2017','0.00',0,'0000-00-00',0),(443,'akma@brainybunch.com','November','2017','0.00',0,'0000-00-00',0),(444,'akma@brainybunch.com','December','2017','0.00',0,'0000-00-00',0),(445,'syaifulnaim@gmail.com','January','2017','0.00',0,'2017-08-14',0),(446,'syaifulnaim@gmail.com','February','2017','0.00',0,'2017-08-14',0),(447,'syaifulnaim@gmail.com','March','2017','0.00',0,'2017-08-14',0),(448,'syaifulnaim@gmail.com','April','2017','0.00',0,'2017-08-14',0),(449,'syaifulnaim@gmail.com','May','2017','0.00',0,'2017-08-14',0),(450,'syaifulnaim@gmail.com','June','2017','0.00',0,'2017-08-14',0),(451,'syaifulnaim@gmail.com','July','2017','0.00',0,'2017-08-14',0),(452,'syaifulnaim@gmail.com','August','2017','0.00',0,'2017-08-14',0),(453,'syaifulnaim@gmail.com','September','2017','0.00',0,'2017-08-14',0),(454,'syaifulnaim@gmail.com','October','2017','0.00',0,'2017-08-14',0),(455,'syaifulnaim@gmail.com','November','2017','0.00',0,'2017-08-14',0),(456,'syaifulnaim@gmail.com','December','2017','0.00',0,'2017-08-14',0),(457,'syaifulnaim@gmail.com','January','2017','0.00',0,'2017-08-14',0),(458,'syaifulnaim@gmail.com','February','2017','0.00',0,'2017-08-14',0),(459,'syaifulnaim@gmail.com','March','2017','0.00',0,'2017-08-14',0),(460,'syaifulnaim@gmail.com','April','2017','0.00',0,'2017-08-14',0),(461,'syaifulnaim@gmail.com','May','2017','0.00',0,'2017-08-14',0),(462,'syaifulnaim@gmail.com','June','2017','0.00',0,'2017-08-14',0),(463,'syaifulnaim@gmail.com','July','2017','0.00',0,'2017-08-14',0),(464,'syaifulnaim@gmail.com','August','2017','0.00',0,'2017-08-14',0),(465,'syaifulnaim@gmail.com','September','2017','0.00',0,'2017-08-14',0),(466,'syaifulnaim@gmail.com','October','2017','0.00',0,'2017-08-14',0),(467,'syaifulnaim@gmail.com','November','2017','0.00',0,'2017-08-14',0),(468,'syaifulnaim@gmail.com','December','2017','0.00',0,'2017-08-14',0),(469,'fazlurster@gmail.com','January','2017','0.00',0,'0000-00-00',0),(470,'fazlurster@gmail.com','February','2017','0.00',0,'0000-00-00',0),(471,'fazlurster@gmail.com','March','2017','0.00',0,'0000-00-00',0),(472,'fazlurster@gmail.com','April','2017','0.00',0,'0000-00-00',0),(473,'fazlurster@gmail.com','May','2017','0.00',0,'0000-00-00',0),(474,'fazlurster@gmail.com','June','2017','0.00',0,'0000-00-00',0),(475,'fazlurster@gmail.com','July','2017','0.00',0,'0000-00-00',0),(476,'fazlurster@gmail.com','August','2017','0.00',0,'0000-00-00',0),(477,'fazlurster@gmail.com','September','2017','0.00',0,'0000-00-00',0),(478,'fazlurster@gmail.com','October','2017','0.00',0,'0000-00-00',0),(479,'fazlurster@gmail.com','November','2017','0.00',0,'0000-00-00',0),(480,'fazlurster@gmail.com','December','2017','0.00',0,'0000-00-00',0),(481,'arsar@amilin.tv','January','2017','0.00',NULL,'2017-10-31',NULL),(482,'arsar@amilin.tv','February','2017','0.00',NULL,'2017-10-31',NULL),(483,'arsar@amilin.tv','March','2017','0.00',NULL,'2017-10-31',NULL),(484,'arsar@amilin.tv','April','2017','0.00',NULL,'2017-10-31',NULL),(485,'arsar@amilin.tv','May','2017','0.00',NULL,'2017-10-31',NULL),(486,'arsar@amilin.tv','June','2017','0.00',NULL,'2017-10-31',NULL),(487,'arsar@amilin.tv','July','2017','0.00',NULL,'2017-10-31',NULL),(488,'arsar@amilin.tv','August','2017','0.00',NULL,'2017-10-31',NULL),(489,'arsar@amilin.tv','September','2017','0.00',NULL,'2017-10-31',NULL),(490,'arsar@amilin.tv','October','2017','0.00',NULL,'2017-10-31',NULL),(491,'arsar@amilin.tv','November','2017','0.00',NULL,'2017-10-31',NULL),(492,'arsar@amilin.tv','December','2017','0.00',NULL,'2017-10-31',NULL),(493,'arsar@amilin.tv','January','2017','0.00',NULL,'2017-10-31',NULL),(494,'arsar@amilin.tv','February','2017','0.00',NULL,'2017-10-31',NULL),(495,'arsar@amilin.tv','March','2017','0.00',NULL,'2017-10-31',NULL),(496,'arsar@amilin.tv','April','2017','0.00',NULL,'2017-10-31',NULL),(497,'arsar@amilin.tv','May','2017','0.00',NULL,'2017-10-31',NULL),(498,'arsar@amilin.tv','June','2017','0.00',NULL,'2017-10-31',NULL),(499,'arsar@amilin.tv','July','2017','0.00',NULL,'2017-10-31',NULL),(500,'arsar@amilin.tv','August','2017','0.00',NULL,'2017-10-31',NULL),(501,'arsar@amilin.tv','September','2017','0.00',NULL,'2017-10-31',NULL),(502,'arsar@amilin.tv','October','2017','0.00',NULL,'2017-10-31',NULL),(503,'arsar@amilin.tv','November','2017','0.00',NULL,'2017-10-31',NULL),(504,'arsar@amilin.tv','December','2017','0.00',NULL,'2017-10-31',NULL),(505,'azarul@brainyapps.my','January','2017',NULL,NULL,NULL,NULL),(506,'azarul@brainyapps.my','February','2017',NULL,NULL,NULL,NULL),(507,'azarul@brainyapps.my','March','2017',NULL,NULL,NULL,NULL),(508,'azarul@brainyapps.my','April','2017',NULL,NULL,NULL,NULL),(509,'azarul@brainyapps.my','May','2017',NULL,NULL,NULL,NULL),(510,'azarul@brainyapps.my','June','2017',NULL,NULL,NULL,NULL),(511,'azarul@brainyapps.my','July','2017',NULL,NULL,NULL,NULL),(512,'azarul@brainyapps.my','August','2017',NULL,NULL,NULL,NULL),(513,'azarul@brainyapps.my','September','2017',NULL,NULL,NULL,NULL),(514,'azarul@brainyapps.my','October','2017',NULL,NULL,NULL,NULL),(515,'azarul@brainyapps.my','November','2017',NULL,NULL,NULL,NULL),(516,'azarul@brainyapps.my','December','2017',NULL,NULL,NULL,NULL),(517,'falacy123456789@gmail.com','January','2017','nan',NULL,'2017-09-29',NULL),(518,'falacy123456789@gmail.com','February','2017','nan',NULL,'2017-09-29',NULL),(519,'falacy123456789@gmail.com','March','2017','nan',NULL,'2017-09-29',NULL),(520,'falacy123456789@gmail.com','April','2017','nan',NULL,'2017-09-29',NULL),(521,'falacy123456789@gmail.com','May','2017','nan',NULL,'2017-09-29',NULL),(522,'falacy123456789@gmail.com','June','2017','nan',NULL,'2017-09-29',NULL),(523,'falacy123456789@gmail.com','July','2017','nan',NULL,'2017-09-29',NULL),(524,'falacy123456789@gmail.com','August','2017','nan',NULL,'2017-09-29',NULL),(525,'falacy123456789@gmail.com','September','2017','nan',NULL,'2017-09-29',NULL),(526,'falacy123456789@gmail.com','October','2017','nan',NULL,'2017-09-29',NULL),(527,'falacy123456789@gmail.com','November','2017','nan',NULL,'2017-09-29',NULL),(528,'falacy123456789@gmail.com','December','2017','nan',NULL,'2017-09-29',NULL),(529,'imrancs058@yahoo.com','January','2017',NULL,NULL,NULL,NULL),(530,'imrancs058@yahoo.com','February','2017',NULL,NULL,NULL,NULL),(531,'imrancs058@yahoo.com','March','2017',NULL,NULL,NULL,NULL),(532,'imrancs058@yahoo.com','April','2017',NULL,NULL,NULL,NULL),(533,'imrancs058@yahoo.com','May','2017',NULL,NULL,NULL,NULL),(534,'imrancs058@yahoo.com','June','2017',NULL,NULL,NULL,NULL),(535,'imrancs058@yahoo.com','July','2017',NULL,NULL,NULL,NULL),(536,'imrancs058@yahoo.com','August','2017',NULL,NULL,NULL,NULL),(537,'imrancs058@yahoo.com','September','2017',NULL,NULL,NULL,NULL),(538,'imrancs058@yahoo.com','October','2017',NULL,NULL,NULL,NULL),(539,'imrancs058@yahoo.com','November','2017',NULL,NULL,NULL,NULL),(540,'imrancs058@yahoo.com','December','2017',NULL,NULL,NULL,NULL),(541,'arsar@amilin.tv','January','2017','0.00',NULL,'2017-10-31',NULL),(542,'arsar@amilin.tv','February','2017','0.00',NULL,'2017-10-31',NULL),(543,'arsar@amilin.tv','March','2017','0.00',NULL,'2017-10-31',NULL),(544,'arsar@amilin.tv','April','2017','0.00',NULL,'2017-10-31',NULL),(545,'arsar@amilin.tv','May','2017','0.00',NULL,'2017-10-31',NULL),(546,'arsar@amilin.tv','June','2017','0.00',NULL,'2017-10-31',NULL),(547,'arsar@amilin.tv','July','2017','0.00',NULL,'2017-10-31',NULL),(548,'arsar@amilin.tv','August','2017','0.00',NULL,'2017-10-31',NULL),(549,'arsar@amilin.tv','September','2017','0.00',NULL,'2017-10-31',NULL),(550,'arsar@amilin.tv','October','2017','0.00',NULL,'2017-10-31',NULL),(551,'arsar@amilin.tv','November','2017','0.00',NULL,'2017-10-31',NULL),(552,'arsar@amilin.tv','December','2017','0.00',NULL,'2017-10-31',NULL),(553,'aastha.snv@gmail.com','January','2017','0.00',NULL,'2017-10-23',NULL),(554,'aastha.snv@gmail.com','February','2017','0.00',NULL,'2017-10-23',NULL),(555,'aastha.snv@gmail.com','March','2017','0.00',NULL,'2017-10-23',NULL),(556,'aastha.snv@gmail.com','April','2017','0.00',NULL,'2017-10-23',NULL),(557,'aastha.snv@gmail.com','May','2017','0.00',NULL,'2017-10-23',NULL),(558,'aastha.snv@gmail.com','June','2017','0.00',NULL,'2017-10-23',NULL),(559,'aastha.snv@gmail.com','July','2017','0.00',NULL,'2017-10-23',NULL),(560,'aastha.snv@gmail.com','August','2017','0.00',NULL,'2017-10-23',NULL),(561,'aastha.snv@gmail.com','September','2017','0.00',NULL,'2017-10-23',NULL),(562,'aastha.snv@gmail.com','October','2017','0.00',NULL,'2017-10-23',NULL),(563,'aastha.snv@gmail.com','November','2017','0.00',NULL,'2017-10-23',NULL),(564,'aastha.snv@gmail.com','December','2017','0.00',NULL,'2017-10-23',NULL),(565,'developers@arsenaltech.com','January','2017',NULL,NULL,NULL,NULL),(566,'developers@arsenaltech.com','February','2017',NULL,NULL,NULL,NULL),(567,'developers@arsenaltech.com','March','2017',NULL,NULL,NULL,NULL),(568,'developers@arsenaltech.com','April','2017',NULL,NULL,NULL,NULL),(569,'developers@arsenaltech.com','May','2017',NULL,NULL,NULL,NULL),(570,'developers@arsenaltech.com','June','2017',NULL,NULL,NULL,NULL),(571,'developers@arsenaltech.com','July','2017',NULL,NULL,NULL,NULL),(572,'developers@arsenaltech.com','August','2017',NULL,NULL,NULL,NULL),(573,'developers@arsenaltech.com','September','2017',NULL,NULL,NULL,NULL),(574,'developers@arsenaltech.com','October','2017',NULL,NULL,NULL,NULL),(575,'developers@arsenaltech.com','November','2017',NULL,NULL,NULL,NULL),(576,'developers@arsenaltech.com','December','2017',NULL,NULL,NULL,NULL),(577,'syaiful@amilin.tv','January','2017',NULL,NULL,NULL,NULL),(578,'syaiful@amilin.tv','February','2017',NULL,NULL,NULL,NULL),(579,'syaiful@amilin.tv','March','2017',NULL,NULL,NULL,NULL),(580,'syaiful@amilin.tv','April','2017',NULL,NULL,NULL,NULL),(581,'syaiful@amilin.tv','May','2017',NULL,NULL,NULL,NULL),(582,'syaiful@amilin.tv','June','2017',NULL,NULL,NULL,NULL),(583,'syaiful@amilin.tv','July','2017',NULL,NULL,NULL,NULL),(584,'syaiful@amilin.tv','August','2017',NULL,NULL,NULL,NULL),(585,'syaiful@amilin.tv','September','2017',NULL,NULL,NULL,NULL),(586,'syaiful@amilin.tv','October','2017',NULL,NULL,NULL,NULL),(587,'syaiful@amilin.tv','November','2017',NULL,NULL,NULL,NULL),(588,'syaiful@amilin.tv','December','2017',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `month_wise_subscrition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `slug` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,1,'Frequently Asked Questions','faq','<div style=\"width: 47%; margin-right: 3%; float: left; height: 270px;\">\r\n<p class=\"theme_color_background\" style=\"padding: 10px; color: #fff; border-radius: 5px; font-weight: bold; font-size: 16px; text-align: center;\">What is HelloVideo?</p>\r\n<p style=\"color: #8a929d; font-size: 14px;\">Hello Video is a Premium Video Content Management System. As an admin you\'ll be able to add Videos and Articles to your website. You can choose to make your content available for free or only to subscribers. You can link a <a href=\"http://www.stripe.com\" target=\"_blank\">Stripe</a> account to your site and allow for users to subscribe to your site and unlock the premium content. You add your videos, add your articles, add your price point, and you rake in money from your subscribers</p>\r\n</div>\r\n<div style=\"width: 47%; margin-left: 3%; float: left; height: 270px;\">\r\n<p class=\"theme_color_background\" style=\"padding: 10px 20px; color: #fff; border-radius: 5px; font-weight: bold; font-size: 16px; text-align: center;\">What is HelloVideo?</p>\r\n<p style=\"color: #8a929d; font-size: 14px;\">Hello Video is a Premium Video Content Management System. As an admin you\'ll be able to add Videos and Articles to your website. You can choose to make your content available for free or only to subscribers. You can link a <a href=\"http://www.stripe.com\" target=\"_blank\">Stripe</a> account to your site and allow for users to subscribe to your site and unlock the premium content. You add your videos, add your articles, add your price point, and you rake in money from your subscribers</p>\r\n</div>\r\n<div style=\"width: 47%; margin-right: 3%; float: left; height: 270px;\">\r\n<p class=\"theme_color_background\" style=\"padding: 10px 20px; color: #fff; border-radius: 5px; font-weight: bold; font-size: 16px; text-align: center;\">What is HelloVideo?</p>\r\n<p style=\"color: #8a929d; font-size: 14px;\">Hello Video is a Premium Video Content Management System. As an admin you\'ll be able to add Videos and Articles to your website. You can choose to make your content available for free or only to subscribers. You can link a <a href=\"http://www.stripe.com\" target=\"_blank\">Stripe</a> account to your site and allow for users to subscribe to your site and unlock the premium content. You add your videos, add your articles, add your price point, and you rake in money from your subscribers</p>\r\n</div>\r\n<div style=\"width: 47%; margin-left: 3%; float: left; height: 270px;\">\r\n<p class=\"theme_color_background\" style=\"padding: 10px 20px; color: #fff; border-radius: 5px; font-weight: bold; font-size: 16px; text-align: center;\">What is HelloVideo?</p>\r\n<p style=\"color: #8a929d; font-size: 14px;\">Hello Video is a Premium Video Content Management System. As an admin you\'ll be able to add Videos and Articles to your website. You can choose to make your content available for free or only to subscribers. You can link a <a href=\"http://www.stripe.com\" target=\"_blank\">Stripe</a> account to your site and allow for users to subscribe to your site and unlock the premium content. You add your videos, add your articles, add your price point, and you rake in money from your subscribers</p>\r\n</div>\r\n<div style=\"width: 47%; margin-right: 3%; float: left; height: 270px;\">\r\n<p class=\"theme_color_background\" style=\"padding: 10px 20px; color: #fff; border-radius: 5px; font-weight: bold; font-size: 16px; text-align: center;\">What is HelloVideo?</p>\r\n<p style=\"color: #8a929d; font-size: 14px;\">Hello Video is a Premium Video Content Management System. As an admin you\'ll be able to add Videos and Articles to your website. You can choose to make your content available for free or only to subscribers. You can link a <a href=\"http://www.stripe.com\" target=\"_blank\">Stripe</a> account to your site and allow for users to subscribe to your site and unlock the premium content. You add your videos, add your articles, add your price point, and you rake in money from your subscribers</p>\r\n</div>\r\n<div style=\"width: 47%; margin-left: 3%; float: left; height: 270px;\">\r\n<p class=\"theme_color_background\" style=\"padding: 10px 20px; color: #fff; border-radius: 5px; font-weight: bold; font-size: 16px; text-align: center;\">What is HelloVideo?</p>\r\n<p style=\"color: #8a929d; font-size: 14px;\">Hello Video is a Premium Video Content Management System. As an admin you\'ll be able to add Videos and Articles to your website. You can choose to make your content available for free or only to subscribers. You can link a <a href=\"http://www.stripe.com\" target=\"_blank\">Stripe</a> account to your site and allow for users to subscribe to your site and unlock the premium content. You add your videos, add your articles, add your price point, and you rake in money from your subscribers</p>\r\n</div>',1,'2015-01-10 02:47:27','2015-02-05 13:05:39');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` VALUES ('prashantrocks1990@gmail.com','a6b48970734f65a5fcf78bd20562a3d5cb98639fc0949baa5ea7264a71582fdb','2017-02-06 11:48:07'),('test@gmail.co','$2y$10$EsvEDSp8KyOVI9ORyX7dN.p6vYiIoKqkMbBUHHERRy307smhVAGgK','2017-11-19 08:41:43'),('customer03@gmail.com','$2y$10$cS9v3Jv/Wv1L5VnDrnXe.e028aQPnpjMGswYjnoLfEKqFmWOAnsEG','2017-11-20 13:31:08'),('arammarm@gmail.com','$2y$10$PkbB6Pnjeu.vgssnTR9g2OeAJdkxmaittmKV.Dz/ZwTKF6CVAzVpa','2017-11-20 13:36:00'),('amilintv@gmail.com','$2y$10$7izNruvuCFU6fkLntvVkqOyGsMx.FaL/HZoW7DnlD4dxM04H6CxzO','2017-11-20 14:51:24'),('arsar@yahoo.com','$2y$10$idro4AW7QUPHJ9eQozeTrOp4mh/Rz7VlBmVh9f4biOiJeY.PgAswy','2017-11-20 15:28:58'),('syaiful@amilin.tv','$2y$10$0t5.DNe/s83sjpVh9pUpMO0IvY5W5nsgimGKfEu20bIK2.t47hJdy','2017-11-21 04:50:26');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_settings`
--

DROP TABLE IF EXISTS `payment_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `live_publishable_key` text COLLATE utf8mb4_unicode_ci,
  `live_mode` int(11) DEFAULT NULL,
  `live_secret_key` text COLLATE utf8mb4_unicode_ci,
  `test_publishable_key` text COLLATE utf8mb4_unicode_ci,
  `test_secret_key` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `test_buisness_id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `live_buisness_id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_settings`
--

LOCK TABLES `payment_settings` WRITE;
/*!40000 ALTER TABLE `payment_settings` DISABLE KEYS */;
INSERT INTO `payment_settings` VALUES (1,NULL,1,NULL,NULL,NULL,'2017-11-06 01:48:09','2017-11-06 02:02:09',NULL,NULL),(2,'AS2zwHS0jcvTAIRBumhyK5ADE8qGIT7UuijDgN2YFF29vmyimUQmfno6ZQEiAqBIBtToRRUhUpk_C88',1,'EPtO0UF92gcIIw6j9u9uBBMJosesZJpi1nDvcnNN7ieUD5uHmPxd1_P_bdMroK2FG1EEm8Pmm4ah1ht','AXAiwREHk0EVwh9Parmuo7C6yTcwVBX0XRmb7FUg8owvs0EDIRyk3FlD5vvgN3siddUVHrS9cK8mHM0','ECwmYlaVuPR5EkA3LkZhjfNgojle_HSuQJN4Jlc2NVpfdvAn3ONvY7fplM78JyGlfi0nd8i1kziQdt9y',NULL,'2017-11-06 02:02:09','test123@yahoo.com','arsar@yahoo.com');
/*!40000 ALTER TABLE `payment_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugin_data`
--

DROP TABLE IF EXISTS `plugin_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugin_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `plugin_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugin_data`
--

LOCK TABLES `plugin_data` WRITE;
/*!40000 ALTER TABLE `plugin_data` DISABLE KEYS */;
INSERT INTO `plugin_data` VALUES (1,'hello','value1','asdfasdf','2015-06-12 01:57:47','2015-06-12 02:02:47'),(2,'hello','_token','m2CP6Lp6rXfQZLxcFkTZSEwqnwMDDszJzYEvsEGd','2015-06-12 01:57:47','2015-06-12 01:57:47'),(3,'hello','value2','testval212312312f','2015-06-12 20:01:02','2015-06-12 20:01:51');
/*!40000 ALTER TABLE `plugin_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugins`
--

DROP TABLE IF EXISTS `plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugins`
--

LOCK TABLES `plugins` WRITE;
/*!40000 ALTER TABLE `plugins` DISABLE KEYS */;
INSERT INTO `plugins` VALUES (3,'Hello','This is an example plugin for HelloVideo','1.0','hello',0,'2015-06-12 01:50:47','2017-07-18 01:47:16');
/*!40000 ALTER TABLE `plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `policy`
--

DROP TABLE IF EXISTS `policy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `policy` (
  `id` int(111) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policy`
--

LOCK TABLES `policy` WRITE;
/*!40000 ALTER TABLE `policy` DISABLE KEYS */;
INSERT INTO `policy` VALUES (1,'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum\n\n\nlorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum\n\nlorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum\n\n\nlorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum\n\n\n\nlorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum\n\n\nlorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum\n\n\nlorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum\n\n');
/*!40000 ALTER TABLE `policy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `post_category_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `slug` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `body` mediumtext NOT NULL,
  `body_guest` mediumtext,
  `access` varchar(20) NOT NULL DEFAULT 'guest',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,6,1,'Example Post 1','example-post-1','January2015/example-post-1.jpg','<p>This is an example post. You can blog about anything related to your video site. You can blog about anything interesting that your audience might find beneficial. You can create new posts from your admin section and add as much text, images, links, and content as you would like.</p>\r\n<p><strong>Here is an example Bold Text Paragraph. And below is an example image :)</strong></p>\r\n<p><img title=\"Example Post 1\" src=\"/content/uploads/images/January2015/FILE-20150103-1715FX2CPTHWAFHR.jpg\" alt=\"\" width=\"100%\" height=\"auto\" /></p>\r\n<p>Add many posts to add value to your site and increase your sites SEO value. Creating new posts is a breeze with our Simple to use WYSIWYG editor and easy to use admin section. Checkout a quick screenshot of this article being created below:</p>\r\n<p><img title=\"Example Post 1\" src=\"/content/uploads/images/January2015/FILE-20150103-18154RYZ152RD692.jpg\" alt=\"\" width=\"100%\" height=\"auto\" /></p>','','guest',1,'2015-01-04 00:10:21','2015-01-10 15:24:23'),(2,7,1,'Example Post 2','example-post-2','January2015/example-post-2.jpg','<p>This is yet another example post. In this post I\'ll Show a few more things that can be added to a post. Such as different headers and styled&nbsp;text.</p>\r\n<h2>Here is a larger header.</h2>\r\n<p><span style=\"text-decoration: underline;\">And here is some underlined text as well.</span></p>\r\n<p>Essentially any type of formatting can be done to your posts to make them look as good as you would like them to. Additionally, you can view the full source of a post and edit the HTML if needed :)</p>\r\n<p>&nbsp;<img title=\"My Sample Post 2\" src=\"/content/uploads/images/January2015/FILE-20150104-0812LG5GLGZ9R3L9.jpg\" alt=\"\" width=\"100%\" height=\"auto\" /></p>\r\n<p>The great thing about using the post editor is that you can even upload images directly from the TinyMCE editor window. Checkout the screenshot below:</p>\r\n<p><img title=\"My Sample Post 2\" src=\"/content/uploads/images/January2015/FILE-20150104-0805CSLTTAT75TUW.jpg\" alt=\"\" width=\"100%\" height=\"auto\" /></p>','','guest',1,'2015-01-04 00:00:21','2015-01-04 17:21:19'),(3,8,1,'Example Post 3','example-post-3','January2015/example-post-3.jpg','<p>This is yet another example post to show you the power of the built-in blogging platform used for the HelloVideo CMS. We have constructed this product the way that we would want a traditional CMS and Premium Video CMS to function. In fact we use this script for many personal projects ourselves.</p>\r\n<p>Be sure to checkout the live demo of the product so you can see just how easy it is to create/edit/delete posts.</p>\r\n<p><img title=\"Example Post 3\" src=\"/content/uploads/images/January2015/FILE-20150104-0853Q2691CN8KQT1.jpg\" alt=\"\" width=\"100%\" height=\"auto\" /></p>\r\n<p>The powerful thing about the blogging system is that posts can be shown to everyone or just subscribers. This is an example of showing only a portion of the post. In order to view the full post you\'ll have to sign in. So go ahead and signup for an account and checkout the rest of this post. This is very beneficial for SEO purposes, because even your premium content can have some SEO gravity&nbsp;to bring users to your site.</p>\r\n<p>Hey! Welcome to the premium content of this post. Now you can add any other content that you want to show to only subscribers. So, the previous content for non-subscribers may be an introduction into a tutorial or how-to. Then the real content of your post can be available to only subscribers of your site. That\'s pretty powerful!</p>\r\n<p>If your site has good content users will be more than happy to pay a small monthly premium to get access to all your content.</p>\r\n<p>Now, make sure to checkout some of the premium videos that were only available to subscribers :)</p>\r\n<p>Thanks for Reading!!!</p>\r\n<p>&nbsp;</p>','<p>This is yet another example post to show you the power of the built-in blogging platform used for the HelloVideo CMS. We have constructed this product the way that we would want a traditional CMS and Premium Video CMS to function. In fact we use this script for many personal projects ourselves.</p>\r\n<p>Be sure to checkout the live demo of the product so you can see just how easy it is to create/edit/delete posts.</p>\r\n<p><img title=\"Example Post 3\" src=\"/content/uploads/images/January2015/FILE-20150104-0853Q2691CN8KQT1.jpg\" alt=\"\" width=\"100%\" height=\"auto\" /></p>\r\n<p>The powerful thing about the blogging system is that posts can be shown to everyone or just subscribers. This is an example of showing only a portion of the post. In order to view the full post you\'ll have to sign in. So go ahead and signup for an account and checkout the rest of this post.</p>','subscriber',1,'2015-01-03 15:30:04','2015-06-16 14:54:49'),(4,6,1,'Sample Post 4','sample-post-4','January2015/sample-post-4.jpg','<p>Jolly boat dead men tell no tales Admiral of the Black lugger fathom Letter of Marque Sink me sloop Buccaneer overhaul. Gabion brigantine hail-shot yardarm Jack Ketch Shiver me timbers broadside yawl smartly rum. Measured fer yer chains cackle fruit man-of-war squiffy red ensign Arr hail-shot gabion Pirate Round spirits.</p>\r\n<p>Plunder me lugsail bucko bilge Chain Shot sutler Pieces of Eight marooned Jolly Roger. Matey mizzenmast black jack gibbet spyglass man-of-war sloop smartly booty pink. Brig Chain Shot provost rum bilged on her anchor case shot hogshead log coffer topmast.</p>\r\n<p>Dead men tell no tales Nelsons folly wench rigging maroon league Privateer hail-shot deadlights scourge of the seven seas. Line cackle fruit long boat weigh anchor overhaul gunwalls Sail ho plunder killick black jack. Fire in the hole Brethren of the Coast tack topmast coffer grapple lee Buccaneer log lass.</p>','','guest',1,'2015-01-02 10:35:50','2015-01-04 17:20:48'),(5,6,1,'Sample Post 5','sample-post-5','January2015/sample-post-5.jpg','<p>Come about crow\'s nest Jack Ketch aye Sink me fathom bilge stern fire ship crack Jennys tea cup. Overhaul Arr weigh anchor code of conduct hands ahoy line list matey clap of thunder. Barbary Coast league lad aye Davy Jones\' Locker trysail bilge water hogshead cable Buccaneer.</p>\r\n<p>Draft ho Letter of Marque splice the main brace crack Jennys tea cup tackle me Davy Jones\' Locker league execution dock. Chandler league Pieces of Eight scuppers hands fire ship barque spike ballast stern. Letter of Marque strike colors broadside avast tender warp nipper log skysail mutiny.</p>\r\n<p>Blimey snow Brethren of the Coast hogshead pillage brig lass measured fer yer chains cackle fruit fire in the hole. Sheet topsail pressgang gally belay case shot draft holystone hearties pinnace. Six pounders scuppers spike interloper fore heave to topgallant brigantine wench port.</p>','','guest',1,'2015-01-02 09:36:50','2015-01-04 17:20:36'),(6,6,1,'Sample Post 6','sample-post-6','January2015/sample-post-6.jpg','<p>Aye prow Arr Barbary Coast quarterdeck parrel broadside pressgang yardarm Nelsons folly. Broadside aft scurvy measured fer yer chains man-of-war bring a spring upon her cable brig stern aye brigantine. Fire in the hole bilged on her anchor spike take a caulk coxswain line tack grapple Pirate Round ballast.</p>\r\n<p>Lad scurvy piracy crimp quarterdeck doubloon plunder bilge rat aye Spanish Main. Gangplank clap of thunder heave down poop deck execution dock parrel black spot spanker scurvy take a caulk. Topsail measured fer yer chains brig yawl hang the jib scuppers Sail ho mizzenmast Jack Tar yo-ho-ho.</p>\r\n<p>Cutlass haul wind bilge water hands man-of-war swing the lead walk the plank parley dance the hempen jig fluke. Wherry Yellow Jack six pounders lanyard Privateer long boat hulk draft Jack Ketch case shot. Keel sloop prow gangway interloper bucko draught stern galleon mutiny.</p>','','guest',1,'2015-01-01 15:37:33','2015-01-04 17:20:22'),(7,6,1,'Sample Post 7','sample-post-7','January2015/sample-post-7.jpg','<p>Chase guns nipper walk the plank grog blossom run a shot across the bow chantey long clothes draught jib pinnace. Swing the lead Sail ho snow tackle mutiny run a shot across the bow rope\'s end piracy long clothes hulk. Poop deck Jolly Roger scurvy bilge rat snow knave carouser booty mizzenmast hulk.</p>\r\n<p>Davy Jones\' Locker Pieces of Eight fluke Cat o\'nine tails mizzen list Jack Ketch cable keelhaul no prey, no pay. Lad pink Jolly Roger draught lee cackle fruit long boat reef sails booty cable. Log execution dock gun chandler Sea Legs Pieces of Eight Plate Fleet interloper aye jolly boat.</p>\r\n<p>Run a rig crow\'s nest six pounders code of conduct long boat bilged on her anchor yo-ho-ho Barbary Coast hogshead warp. Heave down Spanish Main careen list yard Sail ho hulk crow\'s nest Sea Legs knave. Capstan bilge rat driver parrel starboard wench gangplank ye gun belaying pin.</p>','','guest',1,'2015-01-01 14:38:33','2015-01-04 17:20:13'),(8,6,1,'Sample Post 8','sample-post-8','January2015/sample-post-8.jpg','<p>Pinnace long clothes doubloon lookout loot gaff spike scourge of the seven seas Barbary Coast fathom. Pirate splice the main brace execution dock fluke poop deck Chain Shot handsomely Jolly Roger Buccaneer Brethren of the Coast. Keelhaul knave Spanish Main boatswain fathom pillage Corsair loaded to the gunwalls brigantine scurvy.</p>\r\n<p>Yo-ho-ho wherry brig topsail stern me Jack Ketch holystone American Main lee. Lee jack parley galleon sutler starboard list black spot Arr bring a spring upon her cable. Walk the plank run a shot across the bow smartly spirits heave down weigh anchor shrouds rum maroon reef.</p>\r\n<p>Transom ahoy jury mast lad Gold Road carouser piracy interloper yo-ho-ho parrel. Warp tackle pillage plunder heave down mutiny Yellow Jack topmast lass reef. Careen bowsprit measured fer yer chains pink bucko knave weigh anchor tender fore port.</p>','','guest',1,'2015-01-01 13:39:00','2015-01-04 17:20:03'),(9,6,1,'Sample Post 9','sample-post-9','January2015/sample-post-9.jpg','<p>Belay black jack man-of-war reef swab squiffy driver square-rigged no prey, no pay aft. Hands boatswain parrel Admiral of the Black maroon rigging transom hardtack broadside black spot. Letter of Marque gunwalls coffer starboard lugsail squiffy Jack Tar sheet crack Jennys tea cup Pieces of Eight.</p>\r\n<p>Run a shot across the bow hempen halter ye heave to Sail ho pillage heave down fire ship keel hearties. Prow walk the plank stern yardarm coffer draft knave Admiral of the Black wherry Cat o\'nine tails. Clipper bucko yardarm Brethren of the Coast Arr crimp clap of thunder boatswain pressgang strike colors.</p>\r\n<p>Overhaul barkadeer spirits bounty long clothes transom gibbet pressgang Chain Shot Shiver me timbers. Chain Shot mizzen red ensign Privateer draught jury mast man-of-war run a rig holystone pinnace. Plunder nipper pink rigging log aft hogshead Plate Fleet run a shot across the bow main sheet.</p>','','guest',1,'2015-01-01 12:39:32','2015-01-04 17:19:53'),(10,6,1,'Sample Post 10','sample-post-10','January2015/sample-post-10.jpg','<p>Take a caulk Yellow Jack cackle fruit scourge of the seven seas coxswain chase guns Jack Tar lass hulk matey. Black spot handsomely yawl overhaul cable broadside heave down scallywag dead men tell no tales sutler. Rigging aye holystone fluke ye chandler Gold Road gabion Sail ho crimp.</p>\r\n<p>Bilge rat ye reef sails spyglass landlubber or just lubber Plate Fleet Buccaneer walk the plank splice the main brace lateen sail. Holystone prow yo-ho-ho walk the plank bilge water scuppers trysail reef sails measured fer yer chains matey. Marooned red ensign lugsail starboard chase lateen sail scurvy parrel weigh anchor yard.</p>\r\n<p>Draft mutiny provost tender ahoy crow\'s nest schooner carouser reef sails Cat o\'nine tails. Gangplank ballast killick run a rig lanyard Brethren of the Coast case shot weigh anchor jolly boat barque. Squiffy yo-ho-ho belaying pin bowsprit flogging lee lanyard loot knave bring a spring upon her cable.</p>','','guest',1,'2015-01-01 11:40:19','2015-01-04 17:19:43'),(11,6,1,'Sample Post 11','sample-post-11','January2015/sample-post-11.jpg','<p>Haul wind quarterdeck mizzen Plate Fleet gally draft grog barque nipper come about. Rigging Chain Shot boatswain gibbet Gold Road jolly boat holystone ballast hempen halter to go on account. Ye rigging Barbary Coast weigh anchor careen black spot mutiny Corsair scourge of the seven seas killick.</p>\r\n<p>Clap of thunder aft Nelsons folly fluke scourge of the seven seas league clipper poop deck Gold Road broadside. Gunwalls yawl hulk Jolly Roger quarterdeck loaded to the gunwalls nipperkin run a rig hearties black jack. Rigging pressgang Privateer fore scourge of the seven seas gabion provost gangway quarterdeck Blimey.</p>\r\n<p>Swing the lead yawl belaying pin cackle fruit driver spirits me gunwalls Pirate Round walk the plank. Matey to go on account quarterdeck deadlights pirate boom chase guns ho yard list. Fathom topgallant smartly yardarm barque spirits scurvy topsail lateen sail ho.</p>','','guest',1,'2015-01-01 10:40:49','2015-02-05 13:08:06'),(12,6,1,'Sample Post 12','sample-post-12','January2015/sample-post-12.jpg','<p>Rope\'s end hang the jib belay squiffy hands mizzen crack Jennys tea cup avast snow quarterdeck. Blimey loot Nelsons folly boom run a shot across the bow black jack Plate Fleet interloper hempen halter fire ship. Coffer mizzenmast draft haul wind sheet hempen halter crimp spanker Chain Shot clipper.</p>\r\n<p>Hogshead gaff bilge water Admiral of the Black doubloon fathom galleon hang the jib clap of thunder heave down. Jack Tar bilge spanker swab pirate Nelsons folly spike Barbary Coast Privateer heave down. Cable Blimey Arr wherry long boat spanker gunwalls draft sutler lass.</p>\r\n<p>Ballast reef sails lookout bowsprit snow list doubloon main sheet Davy Jones\' Locker loot. Take a caulk no prey, no pay lad chandler gaff pirate Letter of Marque topsail fluke code of conduct. Reef sails galleon driver tender Plate Fleet gally loaded to the gunwalls stern cable Chain Shot.</p>','','guest',1,'2015-01-01 09:41:13','2015-01-04 17:04:44');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `premium_video`
--

DROP TABLE IF EXISTS `premium_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `premium_video` (
  `id` int(111) NOT NULL AUTO_INCREMENT,
  `user_id` int(111) NOT NULL,
  `userid` varchar(500) NOT NULL,
  `video_id` int(111) NOT NULL,
  `video_type` varchar(500) NOT NULL DEFAULT 'premium',
  `video_price` int(111) NOT NULL,
  `validity` varchar(500) NOT NULL,
  `creat_date` date NOT NULL,
  `end_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `premium_video`
--

LOCK TABLES `premium_video` WRITE;
/*!40000 ALTER TABLE `premium_video` DISABLE KEYS */;
INSERT INTO `premium_video` VALUES (3,1,'prashantrocks1990@gmail.com',145,'premium',1,'10','2017-04-12','2017-04-22'),(9,1,'prashantrocks1990@gmail.com',180,'premium',1,'30','2017-04-24','2017-05-24');
/*!40000 ALTER TABLE `premium_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `website_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Hello Video',
  `website_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Your Premium Video CMS',
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'logo.png',
  `favicon` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'favicon.png',
  `system_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'email@domain.com',
  `demo_mode` tinyint(1) NOT NULL DEFAULT '0',
  `enable_https` tinyint(1) NOT NULL DEFAULT '0',
  `theme` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default',
  `facebook_page_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `google_page_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `twitter_page_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `youtube_page_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `google_tracking_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_oauth_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `videos_per_page` int(11) NOT NULL DEFAULT '12',
  `posts_per_page` int(11) NOT NULL DEFAULT '12',
  `free_registration` tinyint(1) NOT NULL DEFAULT '0',
  `activation_email` tinyint(1) NOT NULL DEFAULT '0',
  `premium_upgrade` tinyint(1) NOT NULL DEFAULT '1',
  `wistia_api_key` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'aflix.tv','World\'s 1st Ethical Entertainment Platform','589033f212f2c-Aflix Logo-FA-BW-min.png','android-icon-36x36.png','admin@admin.com',0,0,'tubed','aflixtv','aflixtv','aflixtv','aflixtv','UA-96551866-2','67956150520-feoeeq0m8v6ckob62vkht3a9ui5gn2e4.apps.googleusercontent.com','0000-00-00 00:00:00','2017-11-22 10:55:51',24,12,1,0,0,'71fbe2cac59753ae4eafb365da83c03586f6691e599b8c4c5ed70b7360db9fda');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscribe_plane`
--

DROP TABLE IF EXISTS `subscribe_plane`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscribe_plane` (
  `id` int(111) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) NOT NULL,
  `amount` int(111) NOT NULL,
  `validity` varchar(500) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscribe_plane`
--

LOCK TABLES `subscribe_plane` WRITE;
/*!40000 ALTER TABLE `subscribe_plane` DISABLE KEYS */;
INSERT INTO `subscribe_plane` VALUES (1,'Yearly',10,'365',1,'2017-03-29 06:39:21','2017-03-27 02:42:05'),(3,'Monthly',1,'30',1,'2017-03-29 06:30:55','2017-03-27 02:42:25');
/*!40000 ALTER TABLE `subscribe_plane` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscriptions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_plan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptions`
--

LOCK TABLES `subscriptions` WRITE;
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag_video`
--

DROP TABLE IF EXISTS `tag_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag_video` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `video_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tag_video_video_id_index` (`video_id`),
  KEY `tag_video_tag_id_index` (`tag_id`),
  CONSTRAINT `tag_video_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE,
  CONSTRAINT `tag_video_video_id_foreign` FOREIGN KEY (`video_id`) REFERENCES `videos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=351 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag_video`
--

LOCK TABLES `tag_video` WRITE;
/*!40000 ALTER TABLE `tag_video` DISABLE KEYS */;
INSERT INTO `tag_video` VALUES (343,270,161),(344,271,161),(345,272,161),(346,273,161),(347,274,161),(348,276,38),(350,278,162);
/*!40000 ALTER TABLE `tag_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tags_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (3,'gmail','2014-10-04 14:31:57','2014-10-04 14:31:57'),(4,'techzilla','2014-10-04 14:31:57','2014-10-04 14:31:57'),(7,'organized','2014-10-08 13:45:48','2014-10-08 13:45:48'),(8,'chrome','2014-10-08 13:49:01','2014-10-08 13:49:01'),(10,'revision3','2014-10-09 00:01:56','2014-10-09 00:01:56'),(11,'tmnt','2014-10-09 12:33:28','2014-10-09 12:33:28'),(13,'teenage mutant ninja turtles','2014-10-09 12:39:58','2014-10-09 12:39:58'),(21,'top 5','2014-10-10 16:57:51','2014-10-10 16:57:51'),(22,'glitch','2014-10-10 16:57:51','2014-10-10 16:57:51'),(23,'mario','2014-10-10 16:57:51','2014-10-10 16:57:51'),(24,'zelda','2014-10-10 16:57:51','2014-10-10 16:57:51'),(25,'yoshi','2014-10-10 16:57:51','2014-10-10 16:57:51'),(26,'link','2014-10-10 16:57:51','2014-10-10 16:57:51'),(27,'nintendo','2014-10-10 16:57:51','2014-10-10 16:57:51'),(28,'nes','2014-10-10 17:09:30','2014-10-10 17:09:30'),(29,'gameboy','2014-10-10 17:09:30','2014-10-10 17:09:30'),(30,'gaming','2014-10-10 17:09:30','2014-10-10 17:09:30'),(31,'retro','2014-10-10 17:09:30','2014-10-10 17:09:30'),(32,'classic','2014-10-10 17:09:30','2014-10-10 17:09:30'),(33,'tech','2014-10-10 17:09:30','2014-10-10 17:09:30'),(34,'review','2014-10-10 17:09:30','2014-10-10 17:09:30'),(35,'video games','2014-10-10 17:09:30','2014-10-10 17:09:30'),(36,'super nintendo','2014-10-10 17:09:30','2014-10-10 17:09:30'),(37,'programming','2014-10-10 17:26:43','2014-10-10 17:26:43'),(38,'education','2014-10-10 17:26:43','2014-10-10 17:26:43'),(39,'mark zuckerberg','2014-10-10 17:26:43','2014-10-10 17:26:43'),(40,'bill gates','2014-10-10 17:26:43','2014-10-10 17:26:43'),(41,'code','2014-10-10 17:26:43','2014-10-10 17:26:43'),(42,'jimmy fallon','2014-10-10 18:15:05','2014-10-10 18:15:05'),(43,'latenight','2014-10-10 18:15:05','2014-10-10 18:15:05'),(44,'late-night','2014-10-10 18:15:05','2014-10-10 18:15:05'),(45,'carrot','2014-10-10 18:25:33','2014-10-10 18:25:33'),(46,'introducing carrot','2014-10-10 18:25:33','2014-10-10 18:25:33'),(47,'time-lapse','2014-10-10 18:37:54','2014-10-10 18:37:54'),(48,'time lapse','2014-10-10 18:37:54','2014-10-10 18:37:54'),(49,'lapse','2014-10-10 18:37:54','2014-10-10 18:37:54'),(50,'norway','2014-10-10 18:37:54','2014-10-10 18:37:54'),(52,'android','2014-12-26 14:53:47','2014-12-26 14:53:47'),(53,'tablets','2014-12-26 14:53:47','2014-12-26 14:53:47'),(54,'electronics','2014-12-26 14:53:47','2014-12-26 14:53:47'),(55,'gadgets','2014-12-26 14:53:47','2014-12-26 14:53:47'),(56,'android authority','2014-12-26 14:53:47','2014-12-26 14:53:47'),(57,'foundation','2014-12-27 02:06:32','2014-12-27 02:06:32'),(58,'kevin rose','2014-12-27 02:06:32','2014-12-27 02:06:32'),(59,'tim ferris','2014-12-27 02:06:32','2014-12-27 02:06:32'),(60,'author','2014-12-27 02:06:32','2014-12-27 02:06:32'),(61,'treehouse show','2014-12-27 14:20:31','2014-12-27 14:20:31'),(62,'team treehouse','2014-12-27 14:20:31','2014-12-27 14:20:31'),(63,'gulpjs','2014-12-27 14:20:31','2014-12-27 14:20:31'),(64,'gulp js','2014-12-27 14:20:31','2014-12-27 14:20:31'),(65,'sketch 3','2014-12-27 14:20:31','2014-12-27 14:20:31'),(66,'alma','2014-12-27 14:42:34','2014-12-27 14:42:34'),(67,'short film','2014-12-27 14:42:34','2014-12-27 14:42:34'),(68,'pixar animator','2014-12-27 14:42:34','2014-12-27 14:42:34'),(69,'fantastic fest awards','2014-12-27 14:42:34','2014-12-27 14:42:34'),(70,'ae tuts','2014-12-27 17:55:31','2014-12-27 17:55:31'),(71,'short video','2014-12-27 17:55:31','2014-12-27 17:55:31'),(72,'logo sting','2014-12-27 17:55:31','2014-12-27 17:55:31'),(73,'logo reveal','2014-12-27 17:55:31','2014-12-27 17:55:31'),(74,'coast','2015-01-08 00:31:28','2015-01-08 00:31:28'),(75,'scenery','2015-01-08 00:31:28','2015-01-08 00:31:28'),(76,'vimeo','2015-01-08 00:31:28','2015-01-08 00:31:28'),(77,'hug it out','2015-01-08 01:02:15','2015-01-08 01:02:15'),(78,'characters','2015-01-08 01:02:15','2015-01-08 01:02:15'),(79,'animation','2015-01-08 01:02:15','2015-01-08 01:02:15'),(80,'funny','2015-01-08 01:11:47','2015-01-08 01:11:47'),(81,'comedy','2015-01-08 01:11:47','2015-01-08 01:11:47'),(82,'nick offerman','2015-01-08 01:11:47','2015-01-08 01:11:47'),(83,'inside out','2015-01-08 01:52:48','2015-01-08 01:52:48'),(84,'disney','2015-01-08 01:52:48','2015-01-08 01:52:48'),(85,'trailer','2015-01-08 01:52:48','2015-01-08 01:52:48'),(86,'pixar','2015-01-08 01:52:48','2015-01-08 01:52:48'),(87,'gru','2015-01-08 02:16:37','2015-01-08 02:16:37'),(88,'minions','2015-01-08 02:16:37','2015-01-08 02:16:37'),(89,'dispicable me','2015-01-08 02:16:37','2015-01-08 02:16:37'),(90,'big buck bunny','2015-01-22 13:41:28','2015-01-22 13:41:28'),(91,'blender','2015-01-22 13:41:28','2015-01-22 13:41:28'),(92,'hobbit','2015-01-24 07:08:05','2015-01-24 07:08:05'),(93,'lord of the rings','2015-01-24 07:08:05','2015-01-24 07:08:05'),(94,'johnnyexpress','2015-01-25 05:24:36','2015-01-25 05:24:36'),(95,'johnny','2015-01-25 05:24:36','2015-01-25 05:24:36'),(96,'express','2015-01-25 05:24:36','2015-01-25 05:24:36'),(97,'space','2015-01-25 05:24:36','2015-01-25 05:24:36'),(98,'astronaut','2015-01-25 05:24:36','2015-01-25 05:24:36'),(99,'crashes','2015-01-29 14:21:35','2015-01-29 14:21:35'),(100,'fails','2015-01-29 14:21:35','2015-01-29 14:21:35'),(101,'sports','2015-01-29 14:21:35','2015-01-29 14:21:35'),(102,'dogs','2015-01-29 14:48:07','2015-01-29 14:48:07'),(103,'pbs','2015-01-29 14:48:07','2015-01-29 14:48:07'),(104,'learn','2015-01-29 14:48:07','2015-01-29 14:48:07'),(105,'educational','2015-01-29 14:48:07','2015-01-29 14:48:07'),(106,'trailers','2015-01-29 15:07:19','2015-01-29 15:07:19'),(107,'jurassic world','2015-01-29 15:07:19','2015-01-29 15:07:19'),(108,'jurassic park','2015-01-29 15:07:19','2015-01-29 15:07:19'),(109,'steven spielberg','2015-01-29 15:07:19','2015-01-29 15:07:19'),(110,'biking','2015-01-30 15:30:59','2015-01-30 15:30:59'),(111,'woods','2015-01-30 15:30:59','2015-01-30 15:30:59'),(112,'mud','2015-01-30 15:30:59','2015-01-30 15:30:59'),(113,'bike','2015-01-30 15:30:59','2015-01-30 15:30:59'),(117,'supply','2015-02-15 05:59:44','2015-02-15 05:59:44'),(118,'demand','2015-02-15 05:59:44','2015-02-15 05:59:44'),(119,'theory','2015-02-15 05:59:44','2015-02-15 05:59:44'),(120,'marketing','2015-02-15 05:59:44','2015-02-15 05:59:44'),(121,'strategy','2015-02-15 05:59:44','2015-02-15 05:59:44'),(122,'football','2015-02-18 05:03:31','2015-02-18 05:03:31'),(123,'soccer','2015-02-18 05:03:31','2015-02-18 05:03:31'),(124,'hockey','2015-02-18 05:03:31','2015-02-18 05:03:31'),(125,'top 10','2015-02-18 05:03:31','2015-02-18 05:03:31'),(126,'sports center','2015-02-18 05:03:31','2015-02-18 05:03:31'),(127,'lines','2015-02-20 13:41:57','2015-02-20 13:41:57'),(128,'borders','2015-02-20 13:41:57','2015-02-20 13:41:57'),(129,'harvard sailing team','2015-02-20 14:00:35','2015-02-20 14:00:35'),(130,'harvard','2015-02-20 14:00:35','2015-02-20 14:00:35'),(131,'biggest loser','2015-02-20 14:00:35','2015-02-20 14:00:35'),(132,'how to','2015-02-21 01:39:42','2015-02-21 01:39:42'),(133,'surf','2015-02-21 01:39:42','2015-02-21 01:39:42'),(134,'dslr','2015-02-21 01:52:15','2015-02-21 01:52:15'),(135,'how-to','2015-02-21 01:52:15','2015-02-21 01:52:15'),(136,'learn about dslr','2015-02-21 01:52:15','2015-02-21 01:52:15'),(137,'cooking','2015-02-22 01:35:01','2015-02-22 01:35:01'),(138,'salmon','2015-02-22 01:35:01','2015-02-22 01:35:01'),(139,'food','2015-02-22 01:35:01','2015-02-22 01:35:01'),(140,'nutrition','2015-02-22 01:35:01','2015-02-22 01:35:01'),(141,'greens','2015-02-22 01:39:08','2015-02-22 01:39:08'),(142,'pancakes','2015-02-22 13:56:01','2015-02-22 13:56:01'),(143,'pancake day','2015-02-22 13:56:01','2015-02-22 13:56:01'),(144,'spiderman','2015-02-23 15:32:01','2015-02-23 15:32:01'),(145,'spider-man','2015-02-23 15:32:01','2015-02-23 15:32:01'),(146,'spider-man 2','2015-02-23 15:32:01','2015-02-23 15:32:01'),(147,'the amazing spider-man','2015-02-23 15:32:01','2015-02-23 15:32:01'),(148,'avengers','2015-02-23 15:50:43','2015-02-23 15:50:43'),(149,'marvel','2015-02-23 15:50:43','2015-02-23 15:50:43'),(150,'thor','2015-02-23 15:50:43','2015-02-23 15:50:43'),(151,'iron man','2015-02-23 15:50:43','2015-02-23 15:50:43'),(152,'the hulk','2015-02-23 15:50:43','2015-02-23 15:50:43'),(153,'captain america','2015-02-23 15:50:43','2015-02-23 15:50:43'),(154,'the avengers','2015-02-23 15:50:43','2015-02-23 15:50:43'),(155,'ninja turtles','2015-02-26 01:06:05','2015-02-26 01:06:05'),(161,'','2017-11-13 09:27:21','2017-11-13 09:27:21'),(162,'ketentuan','2017-11-21 04:30:16','2017-11-21 04:30:16');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theme_settings`
--

DROP TABLE IF EXISTS `theme_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `theme_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `theme_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theme_settings`
--

LOCK TABLES `theme_settings` WRITE;
/*!40000 ALTER TABLE `theme_settings` DISABLE KEYS */;
INSERT INTO `theme_settings` VALUES (1,'default','home_headline','','2017-01-25 09:20:13','2017-01-25 09:20:13'),(2,'default','homepage_subheadline','','2017-01-25 09:20:13','2017-01-25 09:20:13'),(3,'default','home_button_text','','2017-01-25 09:20:13','2017-01-25 09:20:13'),(4,'default','home_button_text_logged_in','','2017-01-25 09:20:13','2017-01-25 09:20:13'),(5,'default','footer_description',' ','2017-01-25 09:20:13','2017-01-25 09:20:13'),(6,'default','signup_message','','2017-01-25 09:20:13','2017-01-25 09:20:13'),(7,'default','disqus_shortname','','2017-01-25 09:20:13','2017-01-25 09:20:13'),(8,'default','color','red','2017-01-25 09:20:13','2017-01-25 09:20:13'),(9,'default','custom_css','','2017-01-25 09:20:13','2017-01-25 09:20:13'),(10,'default','custom_js','','2017-01-25 09:20:13','2017-01-25 09:20:13'),(11,'default','_token','L5A20N3IliaHo46JmoOZFDCzPwhocKVZe7I7zaiE','2017-01-25 09:20:14','2017-01-25 09:20:14'),(12,'tubed','footer_description','aflix is your Video Subscription Platform. Add unlimited videos, posts, and pages to your subscription site. Earn re-curring revenue and require users to subscribe to access premium content on your website.','2017-01-25 09:57:50','2017-01-27 10:23:58'),(13,'tubed','signup_message','','2017-01-25 09:57:50','2017-01-25 09:57:50'),(14,'tubed','disqus_shortname','','2017-01-25 09:57:50','2017-01-25 09:57:50'),(15,'tubed','color','#797777','2017-01-25 09:57:51','2017-04-04 09:27:27'),(16,'tubed','custom_css','','2017-01-25 09:57:51','2017-01-25 09:57:51'),(17,'tubed','custom_js','','2017-01-25 09:57:51','2017-01-25 09:57:51'),(18,'tubed','_token','WpuozwOgOJniI9dJb54D54A49xJSwOwD6J4xcVOm','2017-01-25 09:57:51','2017-04-04 09:27:27');
/*!40000 ALTER TABLE `theme_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `themes`
--

DROP TABLE IF EXISTS `themes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `themes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `themes`
--

LOCK TABLES `themes` WRITE;
/*!40000 ALTER TABLE `themes` DISABLE KEYS */;
INSERT INTO `themes` VALUES (1,'Default Theme','This is the default theme that comes packaged with HelloVideo','1.0','default',1,'2015-01-04 00:10:21','2015-01-04 00:10:21');
/*!40000 ALTER TABLE `themes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thumnail_section`
--

DROP TABLE IF EXISTS `thumnail_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thumnail_section` (
  `id` int(111) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `status` int(111) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thumnail_section`
--

LOCK TABLES `thumnail_section` WRITE;
/*!40000 ALTER TABLE `thumnail_section` DISABLE KEYS */;
INSERT INTO `thumnail_section` VALUES (1,'POPULAR VIDEO',1),(2,'RECENT VIDEO',1),(3,'SUBSCRIBE VIDEO',1),(4,'PREMIUM VIDEO',0),(5,'REGISTERED VIDEO',1);
/*!40000 ALTER TABLE `thumnail_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_logins`
--

DROP TABLE IF EXISTS `user_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_logins` (
  `user_id` int(200) DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_logins`
--

LOCK TABLES `user_logins` WRITE;
/*!40000 ALTER TABLE `user_logins` DISABLE KEYS */;
INSERT INTO `user_logins` VALUES (960,'3AxME1fwB0Lmj04pRf3c'),(961,'MwJSITJvYfIxovC9JK5k'),(319,'bfAQ2CPWo3i1HeqVv6aU'),(969,'Bb42LHJ5LwLuUc4dtzRJ'),(969,'PgANaxfKq2xivv6Il2su'),(980,'qFsyNfsZt2AQHpecIqGL'),(982,'uUXZywocRTXDq0RjmpYy'),(209,'kKgszqXqPnREaYIiryKE'),(983,'uodM6U410daVLUrJKNIR'),(986,'Nb9zsURxDogFvIQuSAbY'),(986,'k9I7c0p3OlDNYQMtemcQ'),(987,'7yMjZG7cVaknQiQXmKZH'),(986,'0ZEwsVn3xfXZRqHqdMjq'),(986,'578I4sha1lroS0Ly3Da4'),(981,'jM7liJRNDKCaGfiLMGBX'),(989,'C1AydHI7qeY2H5RCDMT6'),(989,'UO00Z20XkrZJ7eiewpBa'),(985,'REQj6NyzsvDrjBAEm361'),(1002,'LxJBmMR7ZWkEKykONXhc'),(1,'4DuvqLVMSX1ljidKuhj9'),(1,'zGK7zRshsyuTrT2HgZro'),(1,'LJ5B2tNs0lgTBo0K1x6q'),(1,'dwZm5NUqOUTJUaR2SoFI'),(1010,'0ekrppaVPEip8rlu6TdA'),(1010,'2CVjxM6YR8OOUTdpzd6j'),(1,'I0okYBPhtBPPdtopXser');
/*!40000 ALTER TABLE `user_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(111) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'registered',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stripe_active` tinyint(4) NOT NULL DEFAULT '1',
  `stripe_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stripe_subscription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stripe_plan` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_four` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `subscription_ends_at` timestamp NULL DEFAULT NULL,
  `status` int(111) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profession` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `income` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nohouse` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plan` int(200) DEFAULT NULL,
  `plan_price` int(200) DEFAULT NULL,
  `start_plan` date DEFAULT NULL,
  `end_plan` date DEFAULT NULL,
  `contribute` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contribute_req` int(111) DEFAULT NULL,
  `contribute_req_status` int(111) DEFAULT NULL,
  `corporate_user` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adm` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role1` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `demo` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail_status` varchar(111) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login_status` int(111) DEFAULT NULL,
  `login_status2` int(111) DEFAULT NULL,
  `firstname` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `organization_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uniuqe_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=1109 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,0,'admin','arsar.my@gmail.com','default.jpg','$2y$10$kRrWUBVVOQM4.LjFr.YAdO5qNkZMtbEoZXvqXA17hjXr2XGO6v4Qa','admin',1,'2014-08-26 21:43:33','2017-11-17 15:31:50','','EtwT3AeN2JBnCBfw3HCqslkm7SKTMoelwRnjp795Wdm3LsUhSfY18iAyOIBS',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'0000-00-00','Select Gender','Select Profession','Select Income','','',0,0,'0000-00-00','0000-00-00','q',0,0,'','admin','','','1',0,0,'','',NULL),(81,0,'Mohd Fadzil Hashim','fadzil@brainybunch.com','default.jpg','$2y$10$2HxObfSE2x7OkLum800p3O5dORQsyZHicqpuCJ8xiGt2YCP3RvFmu','registered',1,'2017-02-14 01:29:54','2017-02-14 01:32:05','','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'0000-00-00','Male','Account Executive','RM10,000 & above','0193303849','10',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','1',0,0,'','',NULL),(87,0,'Muhammad Hilmi Ismail','mhilmiismail@gmail.com','default.jpg','$2y$10$itFKfDAygr3cVq/p/bP90Od6ySJbY/CWFf/Dz6f8GNwpeVOcQDVKy','registered',1,'2017-03-01 09:30:36','2017-03-01 09:31:33','','lkrahgeQhzDcrsaWspqy7Ow26FsYcGE6xGDSlmEh7fIUphoBZLC5H5eYFzYz',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1990-12-20','','Executive','$1001-$3000','0194479842','0194479842',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','1',0,0,'','',NULL),(88,0,'Maryah Rahmat','maryah@brainybunch.com','default.jpg','$2y$10$k1djs2tNptowVIaiyaUiIewmGBF1XmDeiDBzkzM2xbmkfHufu5.S2','registered',1,'2017-03-01 09:36:11','2017-03-01 09:36:28','','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1991-03-09','','Manager','$1001-$3000','0172645259','4',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','1',0,0,'','',NULL),(94,93,'Corporate Demo','demo1@gmail.com','Tulips.jpg','$2y$10$.VbWOIEzELQyLnMP6jyoo.q0ZMTxPC6z6X7HzQRbl0NN5FGyM6Y3y','subscriber',1,'2017-03-09 08:32:32','2017-07-28 10:26:52','','kPC7u3L1Tc7lcx9e3Nk4nqGnRZDnxgwyqaV5tPtwMLzJz6xbn8zxBI6xjgA3',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1990-10-10','','Executive','Below $1000','999999999999','9',1,200,'2017-03-09','2017-04-08','',0,0,'Corporate_User','','','','1',1,0,'','',NULL),(95,93,'Test','test@gmail.com','58c125865276c-Desert.jpg','$2y$10$CxB8Or1TRbhfVjxyZmasROEdG8D2Q0ipOs5XP9.pi7iczyAVwy/fu','registered',1,'2017-03-09 08:51:05','2017-03-31 18:53:22','','OhZkjjFn3WrUqjA6BRzScUWR5EQs4Uxio1KpPKmAy88I3ujG2qVoHSIvrqQk',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'2017-12-31','','Manager','Below $1000','111111111','1',1,200,'2017-03-09','2017-04-08','',0,0,'Corporate_User','','','','1',0,0,'','',NULL),(96,0,'Shariza Abdul Karim','shariza@brainybunch.com','default.jpg','$2y$10$WlIYXnEjehuDyehAKJh0WOZjSKToDw6XNvAsVMjMZHyENDD.v.mAK','registered',1,'2017-03-10 01:06:20','2017-03-11 00:19:09','','UJtxYEcRK0PcjOK8VKfbjfN4psAD0a9D9AXGOjqgkdn8H1VWPfEJEnAKoQKR',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1986-10-29','','Manager','$1001-$3000','0132910889','3',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','1',0,0,'','',NULL),(97,0,'Muhammad Nazri','nazri@brainybunch.com','default.jpg','$2y$10$zAAaCDZlTYuhT1maL8RCx.SMNzSWeYyz76/xqke6bbUV.vZSg9VDS','registered',1,'2017-03-10 22:41:21','2017-03-11 02:24:16','','fm6IVs1HzrurLxZFO54788KEuMTM1KWQqV9LWvKks4984z1pdW4StX0ylZg3',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'2017-03-11','','Clerk','$1001-$3000','0127773849','3',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','1',0,0,'','',NULL),(98,0,'Achmad an-nur iqbal ','iqbalnasirbbim@gmail.com','default.jpg','$2y$10$JdkJ.2GVl7DE4iI.8k0yjuq9WGdnpaQ4G2XCuOdC9lhhtY3Ak9K5m','registered',1,'2017-03-10 23:00:46','2017-03-11 10:58:35','','RRQkFGRSMvURX7tLLggtuaahX8FQdtrZ5fIEmCzhasJwafE6XTqxsLT5T84d',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'2017-03-11','','Clerk','$1001-$3000','019-2681450','8',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','1',0,0,'','',NULL),(99,0,'Eljadra','aden@brainybunch.com','default.jpg','$2y$10$3w3fPc1WfqjBWn22lNzNzehZ69F0ARQHziM69EI8Hca6QBl2ZhRkW','registered',1,'2017-03-10 23:30:00','2017-03-11 05:27:28','','ftu2ynQmtpuAc48xIhUtWQJG4I1V8GG2lZalZvxdW2CyaOV02a72cfpz76Wh',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'2017-03-11','','Executive','$1001-$3000','0162291353','',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','1',0,0,'','',NULL),(100,0,'mohd fuad  ','fuad@mysi.com.my','default.jpg','$2y$10$ZOaNO0owD/Al9zaGwjwD4eTWUqD9NBRQod37U2ogHeme5/C1XEMTy','registered',1,'2017-03-10 23:31:09','2017-03-11 00:00:41','','V9dUL6d2f80DMkgl5KvuRZzih3C65iC0WYmNXYRnCiRy5msntwoyGREeNZYk',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'2017-03-11','','Business Owner','$3001-$5000','0192846797','6',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','1',0,0,'','',NULL),(101,0,'Herman','Herman@brainybunch.com','default.jpg','$2y$10$CxWpK6bNnyhuUxGHphxWG.NYc8gZskmakzKCmTM2wCedfa1QQNnp6','registered',1,'2017-03-10 23:53:42','2017-03-11 00:01:57','','PDq9XR3JFc198k2R3swyOcuYZWQiwukOKvgpGZQYwnmxLknAU7Zq1v7GAbRP',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'2017-03-11','','Manager','$1001-$3000','0192681887','0',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','1',0,0,'','',NULL),(102,0,'mohd fuad rahim','fuad@brainybunch.com','default.jpg','$2y$10$74SbCERQaSynPg8DytDcReqAQlm3dWyXLY6xf2DYp0r054I3gKKQW','registered',1,'2017-03-11 00:03:36','2017-03-11 00:08:42','','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'2017-03-11','','Business Owner','$3001-$5000','0192846797','6',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','1',0,0,'','',NULL),(103,0,'fida','fida@brainybunch.com','default.jpg','$2y$10$NTIxgaCOEyRnwm0J/Inc8.gIx2K6j4kcFY0ueKWOTByxi7lUMhaZG','registered',0,'2017-03-11 00:05:20','2017-03-27 03:36:54','4E1hklgoAkGvcWvV78wcVe83BsJ4FBmSldTSEy6AvE7YJ86UEJBqeulnG0Se','DsjGBf2toMr1Y1Nvshrd9xaNbMoy6jurpHXYzeuEr8GssAOXazHn6IrsPeIL',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'0000-00-00','','Manager','Select Income','','',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','1',0,0,'','',NULL),(104,0,'Hani Noorashiqin Abd Majid','hani.noorashiqin@gmail.com','default.jpg','$2y$10$4hlmq99ppmJ3Zgf4Yp0nJO4ZBXs3mymwDr5znqZl5lPUqhurrv952','registered',1,'2017-03-11 00:12:37','2017-03-11 00:13:12','','XmFzlzmc7Hu2hseoNA1Fndr64S1rc3eDDyOj1p8HpxoHBmIlX0Is5bnNbCYw',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'2017-03-11','','Business Owner','$5000 and above','0192688519','5',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','1',0,0,'','',NULL),(105,0,'Charisma Dela Cruz','charisma@brainybunch.com','default.jpg','$2y$10$wGfsi.7PH5L07IggQa96vuFs3uwAoUfIb02gz62k63D/HBFYFsL.6','registered',1,'2017-03-11 00:48:00','2017-03-11 01:00:56','','1LZ21oF9OPpCa1TOl4YagBWCaYxw3Sg4XUr2ltCZbdJgUfwFsJT9uoKoQZ9m',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'2017-03-11','','Manager','$5000 and above','0192681107','6',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','1',0,0,'','',NULL),(106,0,'Mawar Ashireem Razali','mawar@brainybunch.com','default.jpg','$2y$10$tReyHzsSGaz4sQZOb3YZaOwRKz.1wSqH/AbvEK4e9dE9L4jE/mEY.','registered',1,'2017-03-11 01:08:44','2017-03-11 01:11:31','','9g8lUhOpVtR7mZGEweMQoeHUt1pOIbkHuruNAM5MM9uKrO1uvnT4MbsuOfbN',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'0000-00-00','','Executive','$1001-$3000','+60162135310','4',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','1',0,0,'','',NULL),(107,0,'Mie','hailmy@brainybunch.com','default.jpg','$2y$10$upCkUtYgk1Ugp0B66rpI3exolQZYC2USyNiSkYxQXCu8I3o7linGe','registered',1,'2017-03-11 01:31:39','2017-03-11 05:55:02','','mj5eYI721DV9yXf5ehBla6RF19GoupcXYV65yVg0RqjGu3WzJk2ScYjnPZqK',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'2017-03-04','','Manager','$5000 and above','0192680604','5',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','1',0,0,'','',NULL),(108,0,'Nurul Sulha','sulha@brainybunch.com','default.jpg','$2y$10$O1ZutQfCDbQysoSQaPd6AeaZwC8F/0fWBe8k0Qs3VgO5sMQUZxXGK','registered',1,'2017-03-11 02:31:28','2017-03-13 00:14:48','','82ymmQKn1MPFNfaAAXAXHtTSJo8t0dECFpOwcphN19OqoEzG9vx9UPI3uS0G',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'2017-03-11','','Executive','Select Income','0185784092','6',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','1',0,0,'','',NULL),(109,0,'Arabi A.Bakar','arabi@brainybunch.com','default.jpg','$2y$10$XC5zNCIEyZfuBdM8UUjJouyuFkQ8hMFnik1mPu.yg2M/8BIJ3JORC','registered',0,'2017-03-11 02:37:27','2017-03-27 03:37:00','ElMqyCdnSK0OtzVoKXDIGrZ9DdKwgZhQHi3ILn9uoJszbui7fXIUYuOxAt4F','ZWGYpg71nsUjGz2u6w48mG5MdKKJ9pLVGFYG5eL8LHmyQRzvxTBmftfsNuqP',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'2017-03-11','','Executive','$5000 and above','0102768901','4',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','1',0,0,'','',NULL),(110,0,'akma','sriakma_86@yahoo.com','default.jpg','$2y$10$O/afyxm0aDuDqKii3jT4Sertnr2MxyroMzPH8Yx9R5fqiEAja9rV.','registered',1,'2017-03-13 06:56:03','2017-03-27 03:37:14','','YF2TGD7mywLqZ3PMo3YXOSLi7OZJrfq9KiTpFCOdrmkQmGxctu8K5EZFP8Wx',1,NULL,NULL,NULL,NULL,NULL,NULL,0,'1986-01-19','','Executive','$1001-$3000','0133255864','no',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','1',0,0,'','',NULL),(123,93,'kaka','kaka@gmail.com','58dcde8a3949b-indfwewdex.jpg','$2y$10$uX6EANkbqC81EaxozD6RDOZxfCsWSEOrEjvME1gF8ivRooEOb1Nzu','registered',1,'2017-03-30 08:31:39','2017-03-31 18:58:53','','h7xcjIVjBfJHRAzvqsc1Zkf0hErp6ZfItYSVlnngo1avjDqLqY3RXx2K3fhB',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'2001-06-13','','Clerk','$1001-$3000','1234567890','12',0,0,'0000-00-00','0000-00-00','',0,0,'Corporate_User','','','','1',0,0,'','',NULL),(124,0,'Brainy Bunch International Islamic Montessori','amilintv@gmail.com','default.jpg','$2y$10$.m23Tfk9QA7VGjDpLqSupuwcotwhKtkj0rTvzorW/SHdx/qF83BN.','registered',0,'2017-03-31 13:46:14','2017-08-04 22:56:47','9puOjgdr5pUibz3c5Y9arKoKGH5W8rmp5GUJXZ7ieFontoBgdq2OMom2hrE6','9FMavuYlhcPDo357O2UD0ll95U63OV3jhFNtvzPku0Kc5NJdWgnF8wRRmEkm',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'2017-03-01','','Executive','Below $1000','10000000000000','60',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','1',0,0,'','',NULL),(126,125,'rama','rama@gmail.com','default.jpg','$2y$10$dDVMfjsriuTt8ekyxFNbPub0UqS4wcy/1RnxNvYtYa2NVuInSy0qO','registered',1,'2017-03-31 19:10:33','2017-03-31 19:15:52','','fsVkskfsiuJ9zrhuwKuXsu5ha8JPOB6MtwGcmfNzcHDDF2fmvBd4n4qnkBKo',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'2017-12-31','','Manager','Below $1000','111111111111111','1',0,0,'0000-00-00','0000-00-00','',0,0,'Corporate_User','','','','1',0,0,'','',NULL),(128,1,'Brainy Bunch','amilintv@gmail.com','default.jpg','$2y$10$1rHu2t9UYyMKe.3pNaMtqeDn/mhh63QzP./n/r7dSEcO.G6tNFPwO','admin',0,'2017-04-10 12:33:03','2017-11-22 15:15:11','','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'0000-00-00','','Select Profession','$1001-$3000','','',0,0,'0000-00-00','0000-00-00','',0,0,'Corporate_Admin','','','','1',0,0,'','','Brainy Bunch'),(129,0,'Izzat Hazim','iizzaatth@gmail.com','default.jpg','$2y$10$8svC6UCON.UK/mUgGPWrpOnuGKAuwNtEyc.I76h9we46U1Z/aKQwG','registered',0,'2017-04-13 02:18:54','2017-04-13 02:19:42','m6Or9SfmfoCEowPtCeZ1w0E2JD4tbZnyRoLcG3lcCtzu3bwXZulQWcyH0pji','ImLbU03pQNwNcZSBwVHWzB9dijYgvkAKULmD5yTG49gAZ9aAN1POAMWoBD94',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1993-06-09','','Executive','$1001-$3000','0172900609','0172900609',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','1',0,0,'','',NULL),(130,0,'Nuelvegs','Nuelvegs@gmail.com','default.jpg','$2y$10$C/WKSiTxOOb5udGfy6KvbO/65dmV376MshssdZ/zZ4fkALyTFVCVy','registered',0,'2017-04-14 04:31:31','2017-04-14 04:33:58','Fx2NlpooqHKrMbOZzzFzjcZmTD4tYa8ZTVsRMC7qHG77PNfMEh9DeTiRYHgi','zLpXC3vPUkJsE9ZsvmWDZf6AP8ORNJdNIZ5nNpVuwLZPFx5SH9ZYlPM9da6l',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'2017-04-14','','Clerk','Below $1000','8096502482','3',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','1',0,0,'','',NULL),(132,0,'imran','genetech786@yahoo.com','default.jpg','$2y$10$L8LGEr0ZxVZUZjmWVfvkOeYK9thfOrR43CuqvSqIrt0id5MzfaFRK','registered',0,'2017-04-20 09:01:18','2017-04-20 09:01:18','CpId8Gxvc4qZzaPVt3upZooTGegyunyniaHBGPCZ48E6OYY8rhT6P7ycVddT','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'0000-00-00','','Government','Below $1000','03428474094','4',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','1',0,0,'','',NULL),(134,0,'imran_123','genetech786@yahoo.com','default.jpg','$2y$10$dZWE7g0Wgn.RSy8APluR6.ll5JAIzr4xcdsJ040vD8kuvaAPELiBK','registered',0,'2017-04-20 09:02:14','2017-04-20 09:02:14','GO0oH1Dc19gDMVmj0pm4UZ3EwI2Fl7vz1o7BjHufaODvuA0bpHqIB667Y0LL','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'0000-00-00','','Government','Below $1000','03428474094','4',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','1',0,0,'','',NULL),(183,0,'Brainy','Apps','default.jpg','$2y$10$A6eaeG.bYXhk2OSi/PsbYO.yWq.w8556ZIIPqYwENPUMWg4qbsFzW','registered',0,'2017-05-02 02:49:22','2017-05-02 02:49:22','vBMdPvKOIAVTW1OxxHKyq0CkmDvFoe8YkM47ooGFPX7I6Z6CatQ3hDXQLb4a','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1978-02-27','','Executive','$3001-$5000','60192718445','3',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'','',NULL),(187,0,'Brainy Apps','brainyapps@aflix.tv','bb.jpg','$2y$10$fA4NWMKidMcn5yJpL2wpXOXdi9BBTjv/ka1eg4O69cNrz4Bw.CW56','registered',0,'2017-05-02 05:29:53','2017-05-03 08:49:01','QlnRsRCse7njov4Li5cR12eDA7VXfvlpyqX1YUwDgs7A1ESDw927TpHuv9eG','p4E2fwx8mJqrzVnryVj6ozZIPiaRuXz2z8yS1x5DZKLR9J9zW8W3ZpcA1Kqb',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1978-02-27','','Manager','$1001-$3000','0194479842','5',0,0,'0000-00-00','0000-00-00','contribute',1,1,'','','','','',0,0,'','',NULL),(191,0,'Harold Stephen','harold.impang@hornbillskyways.com','default.jpg','$2y$10$iAW7NvxIxvmp3UOgld2yMONs6bZeovWqh8czb9XgFSqYRpvOuA/f2','registered',0,'2017-05-04 09:41:02','2017-05-04 09:41:02','8Zj9gkuvUfCCw3sedVmAAlGnHGD2JiqXCcyFOAhDOlxfoBK9mWEYFWQlztgH','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'0000-00-00','','Executive','$3001-$5000','0168074405','2',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',1,0,'','',NULL),(192,0,'jason harmsen','jasonharmsen@gmail.com','default.jpg','$2y$10$2AmdHh2VUbeSjovcBw/t1u8h3Ewx61iS9w7mVRXxPJ3LmMzCJKJve','registered',0,'2017-05-11 07:08:14','2017-05-11 07:08:14','hTxnYH5hjAgCP6DePdRRXB23yejb2WNxXnCa6rAiQRgU67AQ4BZm0jVbiEyN','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1974-10-08','','Executive','$5000 and above','+27741228626','1',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',1,0,'','',NULL),(193,0,'JimmiXzSq','jimos45812rt1@hotmail.com','default.jpg','$2y$10$oNBm824qNEVCFj8ypFhGhusgDz1jQUEUA1dH6oFWqTOMgXVBJ1d7C','registered',0,'2017-05-19 10:25:58','2017-05-19 10:25:58','5f9MbxPSqs9Jvpq3uQdyAEtttdYrje49yERNSL52eGwh9gWP9tPssyK4zhkJ','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'0000-00-00','','Manager','$1001-$3000','78544826799','sREqImIkZa',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'','',NULL),(194,0,'jacob','craftwallfilms@gmail.com','default.jpg','$2y$10$r0KynQiGg540g/6l3zdwquoXbBvSEm4j7HkgD8V8rd2Fk/MSMnTQC','registered',0,'2017-05-29 13:03:50','2017-05-29 13:03:50','sfdxMYOAMmaNZOzXLq9tWzwk3VEGA9Vyb0ggiq7fuWMugMNJ6n95ixqQaBPz','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1988-03-21','','Business Owner','Below $1000','08039475289','nill',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',1,0,'','',NULL),(195,0,'Deepak Rohilla','rohilla22@gmail.com','default.jpg','$2y$10$Uq./THjr4TsAWdYXLe6AYu5GDLSV31tT45O33wfUPIGnUmctkrbWC','registered',0,'2017-06-11 04:05:28','2017-06-11 04:05:28','sdI1SZtIUiAadIkuS40vplYRvaYmTTB4Grh3Ez809h3KTK05agYRxq8WeS8s','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1985-10-10','','Clerk','Below $1000','9953283400','3',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',1,0,'','',NULL),(196,0,'Hari','hnsharma91@gmail.com','default.jpg','$2y$10$feVG/Ru9vMt8SSkIIT3KX.MhV9Ig/dlIfzYoGky6zV2sD1QVVS8K2','registered',0,'2017-06-11 12:21:37','2017-06-11 12:21:37','wwoOhLUUDdiNfB2rbjbXz0ueVCEXJa5YY9Eaivp77y9ILaAyXIO3vJON7No8','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1991-08-12','','Executive','Below $1000','8290420991','8290420991',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',1,1,'','',NULL),(197,0,'Ankit','ankit.kaasam@gmail.com','default.jpg','$2y$10$1PTm/iB7UyRGqg8tDbbdM.HUewJsbdD4rASKQohXOP84Ui.3pesiS','registered',0,'2017-06-12 10:44:58','2017-06-12 10:44:58','3r3hhETeGB5lAFjYquh61isiSyq3NTgSwQjh0BeBDQxFyV3hH09VD6PJOabg','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'2017-06-04','','Executive','$1001-$3000','7877994947','Test',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',1,0,'','',NULL),(198,0,'Abhishek ','abhishekkcp98@gmail.com','default.jpg','$2y$10$2loXTlxA6IO0BFSTB7e.9upgfLewgCrd8g41I6pISvt5dXXemgY3O','registered',0,'2017-06-13 03:40:07','2017-06-13 03:40:07','dG1OSumnY3Os5sLnRYYSmSl5FcnC1azyBG4h1Ab52hgf74f42R7W49gyjZuf','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'0000-00-00','','Business Owner','Below $1000','9457308872','123',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',1,0,'','',NULL),(200,0,'Rohit Verma','Vermarohit755@gmail.com','default.jpg','$2y$10$CGUp6mKZxiVErfH3yXnrhOzOxLOLo62dhQwqME1LqnavmYpEOFHBu','registered',0,'2017-06-22 15:55:04','2017-06-22 15:55:04','mZ8MmSKvy1jONvX6ykNSMpIg3pQ6LajZGUbmtEbVCeQNu9LxS9IpJG7Jhkaa','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1992-01-16','','Executive','$3001-$5000','9777665478','2',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',1,1,'','',NULL),(201,0,'aaaa','aaaa@gmail.com','default.jpg','$2y$10$8vKRbAAsd0WbIWSSssh.3OGeL0zwmg2UrkZGc9LNxKkg4R/u4dZSe','registered',0,'2017-06-23 14:24:05','2017-06-23 14:24:05','uZwrjJw6rW5ZWWrQrcCh1KNgKhRy88EzYEjTWtMoVTANTAKm64xsTXgIn0CI','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'2017-06-23','','Manager','Below $1000','52415845123','3',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'','',NULL),(207,0,'aaaa123','aaaa123@gmail.com','default.jpg','$2y$10$74rsPJAcNEE1smESuaQ6quO03rABeF8Be/UPVFb8e9bSMU442FMEu','registered',0,'2017-06-23 14:26:50','2017-06-23 14:26:50','Cr3jgyXdvTLa0U5u6SfIsKWzMxdjO9vKPnrhf4qmlc8iN6NQ38FucT2COHiN','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1991-08-17','','Manager','Below $1000','524158451','3',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',1,0,'','',NULL),(209,0,'MOHAMAD AZARUL HAKIM','azarul@brainybunch.com','default.jpg','$2y$10$acDHXhleUjNnsG3tREpcoudv0noYUjTV/ZI97ElnctmNXX7q4wR/K','registered',1,'2017-07-04 10:55:24','2017-08-02 12:52:56','6Syb4aCWs8EqvnNpoOOfL8KOME3U6VVqnuwU6dhl4JhXW1Wes7Z7TRvitfnN','lJbRpGIASEBJ4u1t8faN6AHbl1AD1Ksu6YjaJbbkwjgmjNcxbGiUjIMZE5sh',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'2017-07-04','','Business Owner','Below $1000','0195519000','3',0,0,'0000-00-00','0000-00-00','contribute',1,1,'','','','','',1,1,'','',NULL),(210,0,'Barnypok','ecrev22vtv@hotmail.com','default.jpg','$2y$10$7dznVbJsCLfQb5TMNfIOR.AG8UA6mhpIWOmvo2mZ61ILH7DGObRSa','registered',0,'2017-07-07 08:12:34','2017-07-07 08:12:34','vqqhmNcaUaV9EOzxl3K8ogz0zXHTXP28GO1bHl9BLm5mx3Q3PKE4AsNqfkag','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'0000-00-00','','Business Owner','Below $1000','50473822216','wfyAjuEC',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'','',NULL),(215,0,'testdeftsoft','biz.deftsoft@gmail.com','default.jpg','$2y$10$5xCo.PVh9t7WbYxpqq.Ebe0sB9H7RhZO/rvbod2t/mgnvv8yF6pT6','registered',0,'2017-07-10 11:58:31','2017-07-10 11:58:31','8boGrV7rHV5en8KlYKfwXsmBCDqJMeMNtPLVaaNS9kaIg3jn8n1FBtRaNu7X','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'0000-00-00','','Executive','Below $1000','123456','5',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'','',NULL),(216,0,'tallent','mobileexpert124@gmail.com','default.jpg','$2y$10$8rAzztRWLe49BGv42EEhf.36CHxufcJkUAKOzJw1M5w1lsFMgF2We','registered',0,'2017-07-11 02:38:00','2017-07-11 02:38:00','eUq2pj5Xw4PetVww4B6b8HXm1TC4QOaqEkho3X7ENoQJ9Uw2XcYDmPrJIAzQ','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'0000-00-00','','Executive','$3001-$5000','9087654521','2',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',1,0,'','',NULL),(217,0,'Wasim','engineer631992@gmail.com','default.jpg','$2y$10$QTn6dcLyZTrwzO3/7/e7meqXH/FZji122OEPCuor3aiK0lRzSXX4e','registered',0,'2017-07-11 05:19:49','2017-07-14 05:17:01','PNBy6X6rZXD4UJlWsRTqMcK4H2BihxTOhhXUi1PZ25itjjvhScSr4XzlFNl0','A4b8ciYozb9CAaunLJm2Tl8Yns0abOFDQqOMEmCEMHHlDLJ86el5zhL9hN8H',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'2017-07-11','','Manager','Below $1000','8180820474','5',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',1,1,'','',NULL),(218,0,'DMOBI','dmobi.dsoft@gmail.com','default.jpg','$2y$10$A2nCbxyxwu6GBmzs3hfba.QEVn8bNg/uO3D67X4n4et09Dpkywmve','registered',0,'2017-07-11 05:22:34','2017-07-11 05:22:34','XoHoapORyTV2inE5IynJSW1RnIKIxAjB75unXLz5mqATlGL5iPku8dolEeBI','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'2000-07-11','','Manager','$3001-$5000','1111112323123','3232432423',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',1,0,'','',NULL),(219,0,'fgf','fgfdg@gmail.com','default.jpg','$2y$10$k76Cqh36UDcMGa3yXFIwYuB5WIVeFoY0YQSowMDHgFR3k88ZWcPlm','registered',0,'2017-07-11 08:30:41','2017-07-11 08:30:41','H4z1Aqn2E54WUfL2HbUErenO3RRCJ9Djt1jCeHtynRaoeLbYTlGih5XpToxf','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'2017-12-07','','Business Owner','$5000 and above','123456789','2',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'','',NULL),(220,0,'lll','lll@gmail.com','default.jpg','$2y$10$TDRvULcQOaeoxX3M15jqvOCLT5CTZGzw1dbhN0BpaeqN8eGsuqmBe','registered',0,'2017-07-11 08:33:18','2017-07-11 08:33:18','35zrO393CDCTAXhfaKL1mgvxA0DIfVn3j1cdEuncMrljF76svWbvAbvrFWfL','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'2017-12-07','','Business Owner','$5000 and above','12345678','2',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',1,0,'','',NULL),(221,0,'Gaurav','Tiwari','default.jpg','$2y$10$oYJJrwcRTkYCYjghESUIu.9xQoUpP43eRpmHIirhKnnv12eua.nHG','registered',0,'2017-07-12 04:43:33','2017-07-12 04:43:33','akRrjPH70dqYu5M8fJJd9RpE5WM8Oye6FCoapTEiY3nFoFN6WTktZeXB0FxT','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1999-05-01','','Select Profession','Select Income','9999999999','1',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'','',NULL),(224,0,'dev','developers@arsenaltech.com','default.jpg','$2y$10$7b2Nv/xFYtKqq9/jmq5qge6iW44Mf/wu4uHiBUGbeO3KUgkUNLPCm','registered',0,'2017-07-12 07:27:55','2017-07-18 02:27:38','tW47s4lDCeJXkrN39DNnf30fJDdtn0BV0fEkpHJf9JS26MQiZUCFKvnNEFqE','2mnldmzWqZa2Bq2HynX7EzMg3sge1g0k8RwyVEb9DJupmy3D12hkEOaB2ZIs',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'2017-07-13','','Executive','$1001-$3000','123456','2',0,0,'0000-00-00','0000-00-00','contribute',1,1,'','','','','',0,0,'','',NULL),(225,0,'mark','mark.sh45@gmail.com','default.jpg','$2y$10$FPcprLR4LucsBecPpTsy.e054hPWF1okbMRDOnYQPZhChR9PTVDo6','registered',0,'2017-07-12 10:53:07','2017-07-12 10:53:07','2X5gQF3ibE6KplAvRETh4rKrKYmStGUkUKript2Vryng6YjL9OlwKHTEZmOZ','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'2017-07-11','','Executive','$5000 and above','7878909876','4',0,0,'0000-00-00','0000-00-00','contribute',1,1,'','','','','',0,0,'','',NULL),(226,0,'xyz','engineer631992@gmail.com','default.jpg','$2y$10$3JGD9gwK4FIX7r/2wdW4x.Rt2TtOSUEKYCDaDkRcT1bOGL1RZrTxq','registered',0,'2017-07-14 05:16:44','2017-07-14 05:16:44','6h1dvgmRXUEi0HYGs8jhRgNMhIuQIVafy3ykxPsmQS9r1DUvkF8sjfrcyNOh','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1992-04-06','','Business Owner','Below $1000','9898989898','5',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'','',NULL),(228,0,'vadik','vadim.saliy@rambler.ru','default.jpg','$2y$10$tCGSZEYodGRfnUi1HIs03.yYn/AaTBlMhoY1gjt2hnMHhtSvaXrLO','registered',0,'2017-07-17 11:03:18','2017-07-17 14:28:07','Wm3k96CiI4Qkh6l8WGjfAh4tkCg9ktQPtvfJrcCar7bPVAvdxADPqai87YBP','OivyMLjkUNZjFLBWVCMbMfjbzZ2BbJsM1ulIYNm3iEJvPcnc5l3mpoWqdCXU',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1994-09-25','','Clerk','Select Income','380986025714','123456789',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',1,0,'','',NULL),(232,188,'ABC','wasim631992@gmail.com','default.jpg','$2y$10$7JubOk9EtfDZRyYipLRvAudNUsBLYO8JiIdSVwb1QhlowVFRfg65K','registered',1,'2017-07-19 04:27:10','2017-07-19 04:27:10','','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1990-01-02','','Business Owner','$1001-$3000','+918180820474','5',0,0,'0000-00-00','0000-00-00','',0,0,'Corporate_User','','','','',0,0,'','',NULL),(233,0,'test test','tjest@gmail.com','default.jpg','$2y$10$TsgYwmp0PtqUx9o92vKj9egKC8k5LrAcA5r5AY3Cm9RaNgjGO6J0e','registered',0,'2017-07-20 05:24:26','2017-07-20 05:26:53','kZDsK0Xf7DyiaTAB0SntT7IM4XEDUTTrCd1TeBO2oxQG88Rdl95vVqNAkPys','yaJcQvP9oaQEPHcvCzov89gggqDLd9hGMw0RWovKpR2v6ihKs5NSAjOI0isj',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'2017-07-04','','Manager','Below $1000','2345678912','123',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'test','test',NULL),(234,0,'Mohd Azri b. Jamari','asries81@gmail.com','default.jpg','$2y$10$vM8ZSVHUq3NY.rZ/UwaY/OYmxAW4zObzeUrAlTH5HYFFEU9CjJW5y','registered',1,'2017-07-20 06:02:55','2017-07-20 06:02:55','','',1,NULL,NULL,NULL,NULL,NULL,NULL,0,'1989-12-15','','Chemist','$5000 and above','136149821','3',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'','',NULL),(235,0,'Mohd Zaidi Bin Harun','m.zaidiharun@yahoo.com','default.jpg','$2y$10$NVeFPzktQzUbwUUy6BrVcupP2pon07lT/XTkLBZMmdZKNI0aRYRW.','registered',1,'2017-07-20 06:02:55','2017-07-20 06:02:55','','',1,NULL,NULL,NULL,NULL,NULL,NULL,0,'1989-12-15','','Manager','$5000 and above','136283434','3',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'','',NULL),(238,0,'Mohammad Kabir Bin Mohd Akram','mohakabir@gmail.com','default.jpg','$2y$10$xW1lH/zpkgjWsgGztxBsweYRDt483BEeZ5RNeEz.EnFof6Wtn2EKG','registered',1,'2017-07-20 06:02:55','2017-07-20 06:02:55','','',1,NULL,NULL,NULL,NULL,NULL,NULL,0,'1989-12-15','','Engineer','$5000 and above','165079051','3',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'','',NULL),(239,0,'AZMAN BIN ABU BAKAR','azman0511@gmail.com','default.jpg','$2y$10$hXF3k304ujGtsXWWompGWuMa5j5gVQ2vi3XVdP.zJzYVFeo6GjAHC','registered',1,'2017-07-20 06:02:55','2017-07-20 06:02:55','','',1,NULL,NULL,NULL,NULL,NULL,NULL,0,'1989-12-15','','ENGINEER','$5000 and above','019-7759798','3',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'','',NULL),(240,0,'EZHAM FADZLY BIN MOHD ANUAR','ezhamfadzly@gmail.com','default.jpg','$2y$10$NLwj3XVfBuLWjEblWt2Q/Owc1nzkBubcz/gVWvKIv0rC/7B16.9Hq','registered',1,'2017-07-20 06:02:55','2017-07-20 06:02:55','','',1,NULL,NULL,NULL,NULL,NULL,NULL,0,'1989-12-15','','EXECUTIVE','$3001-$5000','126785655','3',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'','',NULL),(241,0,'AMIRUL ASYRAF','asyraf.ai@gmail.com','default.jpg','$2y$10$GhtTTLhhXQbHvmfyHfY4yumUgR6SsslZSYB8r0D3WBawqukiBDbFO','registered',1,'2017-07-20 06:02:55','2017-07-20 06:02:55','','',1,NULL,NULL,NULL,NULL,NULL,NULL,0,'1989-12-15','','GOVERMENT SERVANT','$5000 and above','125720979','3',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'','',NULL),(243,0,'Izrulazhar Jasman','izrulazhar@gmail.com','default.jpg','$2y$10$NVV.sM2Qwx6sEMwmJ5OvNu8iozD3DMSsHN3sX7zjzAo6KJISMdaui','registered',1,'2017-07-20 06:02:55','2017-07-20 06:02:55','','',1,NULL,NULL,NULL,NULL,NULL,NULL,0,'1989-12-15','','Online Trader','$3001-$5000','60133381147','3',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'','',NULL),(244,0,'Ros Muhammad Nizam bin Albi','nizam.albi@yahoo.com','default.jpg','$2y$10$9q2qUYKuJGHvaVNnDhmROOn5.L9aiUTv9TEey/MB4qVXkMQBP30by','registered',1,'2017-07-20 06:02:55','2017-07-20 06:02:55','','',1,NULL,NULL,NULL,NULL,NULL,NULL,0,'1989-12-15','','Contractor','Below $1000','122287840','3',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'','',NULL),(247,0,'Khairil Khalid','khairio@hotmail.com','default.jpg','$2y$10$JfpEXT1CBWoLD6TbJAHdLeTOON8hLbaiu7Ea7/1EySOWag9HRzXai','registered',1,'2017-07-20 06:02:55','2017-07-20 06:02:55','','',1,NULL,NULL,NULL,NULL,NULL,NULL,0,'1989-12-15','','Senior Network Engineer','$5000 and above','60192808987','3',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'','',NULL),(249,0,'Mardhiah Hayati','mardhiah@brainybunch.com','default.jpg','$2y$10$ZG/ZLGbIceMsQXEsSRGuMe7XjQZi9NPTTGm3IPFy3x7lNSPOJSac2','registered',0,'2017-07-24 11:29:26','2017-07-30 00:23:08','33DsJqB9gaI0gXsqdQylkJfmiPyzF4uAsdVLYTK10701a4r4b7khBovO9a5p','U32JWROEI6T32jQj5f15YQj9Ck9yz9z6VrOW3yUITcoWQFcblPKawoPryAGm',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1981-01-29','','Executive','Below $1000','0182556769','4',0,0,'0000-00-00','0000-00-00','contribute',1,1,'','','','','',0,1,'Mardhiah','Hayati',NULL),(250,0,'Akmariza Bt Kamal','akma@brainybunch.com','default.jpg','$2y$10$ZnDea6HjlPwPgAvU5l46cuVNYhWp3k7wMzpyQVi.4EgyzfVIpIPOm','registered',0,'2017-07-24 11:30:04','2017-07-29 23:55:35','vLyqYzXwqJVbnbUJbdjwr3GgcvZBsHC97WL55P5o2Zme8ln3nJEEc2PYqyFf','r9I3jCFVTndtEnXimMEmONsrSvag0ZpeqQbTBZNvw8bptKHtBuvCQlyd63pQ',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1986-01-19','','Executive','Select Income','133255864','8',0,0,'0000-00-00','0000-00-00','contribute',1,1,'','','','','',1,1,'Akmariza Bt','Kamal',NULL),(252,0,'abdul  qawy','abdulqawy91@gmail.com','default.jpg','$2y$10$PqqVq858gz/B.l0zRtmK3uDh60pKIk0NHuenxIWEgyNGU1LLbcyR.','registered',0,'2017-07-26 02:17:53','2017-07-26 02:17:53','ktrc2jaWvJwyJUxJukQfYRkt6iwsZLryhOIrpP6jGOtsHuO8OqztY1roTQH5','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1991-01-16','','Executive','Below $1000','0147253835','3',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',1,0,'abdul ','qawy',NULL),(256,1,'Brainy Bunch Community','azarul@aflix.tv','Screenshot 2017-07-25 at 5.37.16 PM.png','$2y$10$DyxJDGmLKDDtrNP5ZbQzdOmmHyjhW28PcPudBfilQA5aW7.FSF9n.','admin',1,'2017-07-28 18:25:38','2017-08-06 11:44:09','','Et2hLOImcWl0PqE5rjsoOkZpaV0AhE0K8EqiuqkokZkONZVdjdv07LHem8gU',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'0000-00-00','','Business Owner','Below $1000','0195519000','',0,0,'0000-00-00','0000-00-00','',0,0,'Corporate_Admin','','','','',1,1,'','',NULL),(257,256,'Akmariza','akma@brainyapps.my','default.jpg','$2y$10$DIx8UqRdWKsQO1L/jPS/XOj3Yyit8j6JS69GPQsVa9UCRoxc0cbka','registered',1,'2017-07-28 18:27:09','2017-07-28 18:33:53','','3QtUKUxD0PCpy7sNh7x6BMTNVEttBvilmxG0RJrVHeJbF1I1U3zgvwGCwXfa',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'0000-00-00','','Business Owner','Below $1000','123232332332','6',0,0,'0000-00-00','0000-00-00','',0,0,'Corporate_User','','','','',0,0,'','',NULL),(258,0,'Nishka Bahl','nishkabahl@westminster.net','default.jpg','$2y$10$ZBpxcCnt8yMdHJLqET640eGzZ1eCbFmH3gfjEorOAF45p32U1G2ae','registered',0,'2017-07-28 22:13:06','2017-07-28 22:13:06','mJSTkx2s63arqsUzs4iNZq22pytD2dAzKhIB5T8m550F7EIDbQ3NjgxBtKhR','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1976-05-05','','Clerk','Below $1000','4692898666','4',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',1,0,'Nishka','Bahl',NULL),(260,0,'Namanzee Harris','namanzeeharris@yahoo.com','default.jpg','$2y$10$r/fQk5fZz.KbLIt9gfGWy.C2N0sMWFeaznRm33TLcwMQ5k.kzNkVW','registered',0,'2017-07-29 00:44:53','2017-07-29 00:45:32','EQG1JLAS860beRaqZfiQqngetbqFFtcUvAYa5eWk2wudMg3JDVXujECUWhac','2YV894V7BMWXEhOC8nR7UdhyxkVjYkfu6OHq5qNFvaPU1qRf9ch9ciAWFsxQ',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1979-12-29','','Manager','$5000 and above','0192504250','5',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'Namanzee','Harris',NULL),(261,0,'Azrie Adzman','azrieadman@gmail.com','default.jpg','$2y$10$TAzYyPxneVRIPMTNtEGYb.3a16v6Bnj49rtTrHdRUEoFBNMbptUQm','registered',0,'2017-07-29 00:58:50','2017-07-29 00:58:50','3SSwoNBzi8wpcYoKnI7LJ20c89T8cHdPjtuvP6D3zmtG6KM2Iy1w0kmHIIEg','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1987-12-01','','Executive','$1001-$3000','0122812874','4',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',1,0,'Azrie','Adzman',NULL),(262,0,'Sarina Anim Mohd Hidzir','sasf_78@yahoo.com','default.jpg','$2y$10$WDUHNGTCl5Q5zTMxl43TKukrJ88ZRE/nKXEYcHnNMW3qgpgM4nHcK','registered',0,'2017-07-29 01:41:08','2017-07-29 01:41:45','dnehBSUOX79RwPZFKnVefgSzOZLcRzpKvwqdF35bVezSSpzC2w15vR2SPjJl','SuY9BgF3DO0ZEiwD5m3JM2nh5a6RZpAvdGmi1QGhNoGlpL8XBzVqGSMqkxM0',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1978-07-30','','Government','$5000 and above','0133336345','5',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',1,0,'Sarina Anim','Mohd Hidzir',NULL),(263,0,'Fazlur Rahman','fazlurster@gmail.com','default.jpg','$2y$10$DhEjL06oNGHjxwY/31wMbOAbOK..1pKJbvtUrKb2szh2TAEoSuFkG','registered',0,'2017-07-29 12:49:20','2017-08-01 04:04:21','p3UjjwmoCt3MM1nhktDr4UBm4k91Mim4sBl1zczY7R7UreWjgjODMjJ2OjeI','PYAca5sTNMZ8ninw2L6iabx6FlAU9yEIb8FJtvDJdcIiMh7f0EzlgoAInacC',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1981-03-05','','Executive','$5000 and above','0122214846','7',0,0,'0000-00-00','0000-00-00','contribute',1,1,'','','','','',1,1,'Fazlur','Rahman',NULL),(266,0,'test1 test1','aaa@gmail.com','default.jpg','$2y$10$l3SVzwEdqQqr7oBaiJVzy.cqhmptrHw5GBJ.xaNvScCgJxnZDMf5W','registered',0,'2017-07-29 23:57:01','2017-07-30 00:23:13','vlhW6pYV0OXYOPoKo6mbvyPLF2H0RhsNu9WAA3QPnWrrfYpMXKJe7zz5tWLo','O001ekL1N8RdqtZ01mEm26sY72YxgJJ5LiuQlpqmfCJ8wHRHywxyY47lUBnx',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'2017-07-26','','Manager','$1001-$3000','344343434','4',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'test1','test1',NULL),(268,0,'Sofi ismail','hello@calibr.store','default.jpg','$2y$10$HXcmZ.aLN5P9F5ijLmG1oOcvkbn77r/pw1EyFJxC/BxJjU6O97Vu6','registered',0,'2017-07-30 00:24:14','2017-07-30 00:24:14','LHryiGsUumatGLZOHupO6s9dr3l0Y84rUuLmwglSZH2f9fkFEJstFxxLLihQ','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','','Manager','Select Income','0133410288','4',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'Sofi','ismail',NULL),(269,0,'Saadiah Rani','adyrani@gmail.com','default.jpg','$2y$10$ZbDgoAlVixrknDPYkFaIae9YV6an8yXKkJHmp2eyDOZDC4uz1.Ktu','registered',0,'2017-07-30 00:28:43','2017-07-30 00:28:43','tTelcE9j7KXOF7kBUmJV3IxY8Yk3dHrsToXL8rRMP7S9iqMz7OendWrBkO9S','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1972-07-01','','Government','$5000 and above','0192237335','7',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'Saadiah','Rani',NULL),(270,0,'hirman mohd','hirman2010@gmail. com','default.jpg','$2y$10$GorjUOkV2pxGOLjq6FaSM.ZCAmkTBMeF0rDmJRh1zeFhHYTn5QosC','registered',0,'2017-07-30 00:31:29','2017-07-30 00:32:24','GB5ol0Kd4nJIxa6t4kbk8RvARdZNyigyX5pxifjFUDW0viVKFSXV5CHINppE','q09irUtGX47hvlGlFSyPJjDrJ35gXQvnqfnBSOGOnm1uEumKCbAAEgwywVzM',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1981-06-04','','Executive','$5000 and above','0193794990','3',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'hirman','mohd',NULL),(271,0,'zety razaie','zetyrazaie@yahoo.com','default.jpg','$2y$10$v2.aFuRjZpOaDJ1FE.l9S.pEPLuT92wRsyh2R52j9yvizwMnom7TW','registered',0,'2017-07-30 00:34:13','2017-07-30 00:35:13','QEUtpQKSKfiy4r0baGpQkqaody2ZSi2xCzzbmiS1KXrNXKlYpNsU5r3sCcE4','maw1pInGHyhWcGD2HnuO4HrkTLTaCrCxNSgyqnU6ggLVFK6hKMgt1lMceseb',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','','Government','$3001-$5000','0129797550','5',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'zety','razaie',NULL),(272,0,'dluzarnain saripin','dluzarnain@live.com','default.jpg','$2y$10$oAfrrU5l2Q6LMdjUc5Ki0.6nkIlxaNexqI7.7STlFnHAnLBs7Smr2','registered',0,'2017-07-30 00:34:33','2017-07-30 00:34:33','BCYMqMBElueBznaKvqQ6mVry0QlAsw5drPkxpvz7rXkFm4gwerCDQ8R9AK2Z','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','','Select Profession','Select Income','0138727453','6',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',1,0,'dluzarnain','saripin',NULL),(273,0,'nur dalela','roti_bulat@yahoo.com.my','default.jpg','$2y$10$nLYWx49ClwA7J3xO.USIOee27.4Pak44deKp4Rif9CRhjf5iIAbta','registered',0,'2017-07-30 00:35:55','2017-07-30 00:35:55','9QvL2jJJKMcNJLlSFGHJMU49waDZqZqIZHz0eU4mjhPuRJNLtpAySyLFgwqs','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','','Government','$5000 and above','0163024834','4',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'nur','dalela',NULL),(274,0,'maryam Abdullah','eyump83@gmail.com','default.jpg','$2y$10$.3a.GT3i/oporbso7zZgwejQlPzm9P/63nfQezSAR9H5Zpp41W6m6','registered',0,'2017-07-30 00:38:22','2017-07-30 00:39:55','m2mW2PV0EFza2Pk4QCjzxBvMeJBl2iN8hc8lWmi9LzAMnUDD6h90zA01av8P','euSLnpGyJTsFHJHqpX40twOHxj5tNrwqt7oMFV1CucGW0dP5nfEKLZrypUiv',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','','Manager','$5000 and above','0122544751','4',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'maryam','Abdullah',NULL),(275,0,'rizal rahim','rizalrahim.metia@gmail.com','default.jpg','$2y$10$Do2a1u6vr/tb4PUWz9AbDOgMYu.sZ7jDBCOMSOGUqXiIOHfLo/mN2','registered',0,'2017-07-30 00:42:31','2017-07-30 00:43:25','9IHawWQqksb8dbIlfls9g8TODmrrumRTbsyZdSM6aQxPkvsLR5ebZEzEuxeo','p08GUoTX3ThySuApM4LewAS3t1vpss5alcCLSgRieQuscmdgJVqe1iO70p66',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'2017-10-31','','Executive','$5000 and above','0133070733','4',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',1,0,'rizal','rahim',NULL),(276,0,'IZA KHAZRINE ABD RAHMAN','iza.khazrine@gmail.com','default.jpg','$2y$10$r1Bs7mFQmvpAKiBK/EuTwuW0HSaBAFYr24rfGu19muY3bNzdBMXj.','registered',0,'2017-07-30 00:44:31','2017-07-30 00:45:17','rdTSY0PZO37Z41ERW0TmW4fntgntJ4UL1321ExR4SbeBu81jcnVsFh6gcE7P','CkDsGrgBhfyybLrxGvy1GRqD5QfnOv2veemuNuTbZuEYOmxyxF2EHbLKO9eJ',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'2017-07-09','','Manager','$5000 and above','0166260164','5',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'IZA KHAZRINE','ABD RAHMAN',NULL),(277,0,'farhan jaafar','farhanjaafar877@gmail.com','default.jpg','$2y$10$4QCI/dezBGX3NAfbi9OVA.fhjt/2BOse/S8yycYf712rQy8XY9g2e','registered',0,'2017-07-30 00:45:11','2017-07-30 00:45:11','ykXBGeMq0vC7np57lWfmj6xPrpnxAVJHm5TeH3fGQfyQry4Z6F157Yec0KPu','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','','Executive','$3001-$5000','0176561940','4',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'farhan','jaafar',NULL),(278,0,'Syahrul Azam Yunus','syahrulazam.yunus@gmal.com','default.jpg','$2y$10$v1FFzcYA9UFn8TfZoMN75OtTpEb79YZm7f2MNqyK9/WHm2p45wU52','registered',0,'2017-07-30 00:50:11','2017-07-30 00:50:11','WSewsrM2vb1F5ad4M8YSC5oBKPmipIbpfCEAkniU1NnmMX2RgNQl7MIpZUj2','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','','Executive','$5000 and above','0162895911','6',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'Syahrul Azam','Yunus',NULL),(279,0,'RAZIDAN ABDUL RASHID','rdnventures@gmail.com','default.jpg','$2y$10$Lc1q1j6pPKhEq4GgRjL1wOIH7.Pg67HG80hj/lDWwZFtMpGoBn5we','registered',0,'2017-07-30 00:56:10','2017-07-30 00:58:01','AbLvViZ5PwzkSQxFy3689dysTTT0Gq1nBn3T9x6SXpmXNU7PO4Q3ZEUmr23x','CVjFEelIRamFfBOi5Way32IMM5QVTO6eZfS1eDO277XoB0wJVEIhlmcXKe78',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','','Business Owner','$3001-$5000','0123084109','5',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'RAZIDAN','ABDUL RASHID',NULL),(280,0,'saifulbahri saifulbahri','saifuljohnny68@gmail.com','default.jpg','$2y$10$81rG61HPE.xhDZh3PxOz/uEd8GweQQ41.PsA1zeiYaXHnexFak5Y6','registered',0,'2017-07-30 00:56:27','2017-07-30 00:56:27','tRlxOJz4kYJnKzFllSZZJclLXbCl3jM59B5fUDYHYl9i18WpzGVVnKQUnvAS','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1980-05-12','','Executive','$1001-$3000','0164739474','3',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'saifulbahri','saifulbahri',NULL),(281,0,'shahrir sofian sofian','shscheras@gmail.com','default.jpg','$2y$10$FxU0t88pqG4Kt2d3b4NILOdqrgFBBzU1hOp7/oUugTgvABP8IehiO','registered',0,'2017-07-30 00:57:32','2017-07-30 00:57:32','i9Ev5q8hD65hecdYDsh7RoxMxnbishZYRPk6ucLc9sjLI5GPG2HyqppxrBbN','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','','Select Profession','Select Income','0123655241','9',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'shahrir sofian','sofian',NULL),(282,0,'wan farhana binti  wan chik','ezzieyana@gmail.com','default.jpg','$2y$10$aC4/bMomC.dd6jl7yaL2cuOiLJjZa3tLMEokcUbW8CsR1LjbYsapC','registered',0,'2017-07-30 00:58:35','2017-07-30 00:59:59','AcoRlbJJpM0gjaXuLIGrp2RVXHHteOYfaKa2bJNsch6ybMMWXtrtX0sP7beR','qJvua2WYUprP6HC8hKKuNvy7otcivB52dMM7tzYqZZyw7dgoVYkPdUElbGVV',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1985-10-05','','Business Owner','$5000 and above','0176110292','7',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'wan farhana binti ','wan chik',NULL),(283,0,'SUZILLA IBRAHIM','jieibrahim@yahoo.com','default.jpg','$2y$10$IYwGKFC3nbACOo6EuatxMeBOaU228RtJEi9qu3/QVpQeokKbG930u','registered',0,'2017-07-30 01:03:55','2017-07-30 01:03:55','Es1wKeWzk39eLi6QseEiRTXyYVZ1jePjPQ7erowWwkJtSF4cAFUweDtzxLwk','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1980-09-12','','Government','$5000 and above','019-3073200','5',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'SUZILLA','IBRAHIM',NULL),(284,0,'Rosmawati Abdul Rahman','arrosma@yahoo.com','default.jpg','$2y$10$QTP9OvnEMzphl1sWEBDCFuiP.639RoETDzVEroMfausWL67YFMlHW','registered',0,'2017-07-30 01:06:06','2017-07-30 01:07:19','p2uZ4sqS4SPf7fHMYHSkGGjCbvXUmb2MtuOlgD7gA8Wp7uKOtC5wHoURjwYP','dedysDINf160qoLInQpU37dh77wJIqLXfRVq7xYl09h93NEY4xBlVJ7wpod2',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1971-05-12','','Manager','$5000 and above','0123000524','7',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'Rosmawati','Abdul Rahman',NULL),(285,0,'Akmar Saripin','chekem@gmail.com','default.jpg','$2y$10$73lyRgjP3YBszfRwcCkL.ejnaUQw3ZNbLoiicJ1zlv1R/kEqy6i46','registered',0,'2017-07-30 01:09:44','2017-07-30 01:10:18','CumYx9YsDS7hDb6JgBawYUSfOBFBUQLHDpml7BlokHzAx5aGEtdgjBbuZGns','IRGMRhjYRJiVQBvMiGgnY7nBK7DJMi8xUtlXUju4DkPBxjrZ3IpsZ4I3xTBG',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','','Select Profession','Select Income','0126875324','4',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'Akmar','Saripin',NULL),(286,0,'reza fahmi','rezafahmisaleh@gmail.com','default.jpg','$2y$10$cxW/J4bGm2CT5lDtEJN8cOqMOJumEvWFTXUngo0SE5DJYery/GzL2','registered',0,'2017-07-30 01:10:49','2017-07-30 01:10:49','kkJ9V5QC8fgwlvHIOa325D4aY7Fd2U11vFpibf7qOEydhwNnaQtV1cNbjiDw','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','','Executive','$5000 and above','0194347517','3',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',1,0,'reza','fahmi',NULL),(287,0,'nur syahida jusoh','nursyahida75@gmail.com','default.jpg','$2y$10$c1wKesGXI0znFOzPGAX8AehBBE/3kiZ29Q86q.jvKyQKJybp33SG6','registered',0,'2017-07-30 01:13:38','2017-07-30 01:15:24','lbObtIug2XgjuBEWV2pYmlvailYGTt7e7M7hBgbcnIYCfBdNIxTXHvfTcuzu','YUpdQ30g2QXMFJWTKqFIWkMeBIyEgmBY2XsHgjv16JV8trnt071ozlB01gAM',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1986-05-11','','Business Owner','$5000 and above','0174771105','4',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'nur syahida','jusoh',NULL),(288,0,'Nurul Akmal Kamarudin','along_nrl@yahoo.com','default.jpg','$2y$10$LicRUPk8dqFM2lD5DWxzc.PKCrTZhlgS6g4NxNkH3ChULzsBXDsPa','registered',0,'2017-07-30 01:16:42','2017-07-30 01:18:50','455Yv37ll1zFWPv4fei0E1Ukiu4yj10GzfygvIppwOWhC7O8z5kl5hlY8iAm','taOiCkz8o2jFBwPbjhDlCRJGLMoFv3ngJ3ZofqxVxfE7ZBc1Y0RIIRVhUYPi',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','','Executive','$5000 and above','0122101319','4',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'Nurul Akmal','Kamarudin',NULL),(289,0,'Faznida Fazilah','norfaznidafazilah@gmail.com','default.jpg','$2y$10$SgBwa/frWJRi8U3Xl.maaef5.exttcUFKzQjCESleGo9uEkMbc8ie','registered',0,'2017-07-30 01:17:29','2017-07-30 01:17:29','RUxOg8tlcHTUFwA7CkL2NDAslYch1AJxvb6h9JlQ8nmN8gEDW0vg3nlXhQNP','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','','Manager','$5000 and above','0196673173','3',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'Faznida','Fazilah',NULL),(290,0,'shaema hamima','shaema_voila@yahoo.com','default.jpg','$2y$10$lWvaNMau1vy/kiZfcuBeWuWcAjRzH6zdKCHwog1xlQwzrPMyM/mnq','registered',0,'2017-07-30 01:21:44','2017-07-30 01:21:44','kVDFABaC9ZTLrbRRTx0vDi6aGcutQIvsUYbNSWcISZBtudUyuuoFxTn6jJqs','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','','Government','$3001-$5000','0192277424','5',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'shaema','hamima',NULL),(291,0,'FARIDATTUL FARQHAH ABDUL HAMID','fairysky1808@gmail.com','default.jpg','$2y$10$VyvtffIH4Z6Mve7jxAmmhO6vpJE34ttnmeVxPwRbpXPGe7ejgQ0jW','registered',0,'2017-07-30 01:22:17','2017-07-30 01:22:17','pl0yOd7mpczCFsMpmiVQZEcRQU7jybVn2ohZDijAlBtS0q2QuASRjqsbjprw','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1990-08-08','','Select Profession','Select Income','01121525741','4',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'FARIDATTUL FARQHAH','ABDUL HAMID',NULL),(292,0,'MOHD HAZIM FAHMI  BIN AZIZ','hazimfahmi85@gmail.com','default.jpg','$2y$10$1jZDEY57sPuaODbo0V/gheGOTj9ijbbZylJpbJjk6OQXhhOE4mXZC','registered',0,'2017-07-30 01:23:31','2017-07-30 01:23:31','5lBAOF51r00omS9iv8afFNZat2ZQnHBUnRXdAwfehOp0G28Ci6zVTfzXxjgW','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','','Executive','$5000 and above','0173046485','4',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'MOHD HAZIM FAHMI ','BIN AZIZ',NULL),(293,0,'Aiza Azreen','aizanorazreen@yahoo.com','default.jpg','$2y$10$WLfsaLc80MfS5V9ew/SjKuSFnAlqwaimsrWAbEdWUodEOSsmzDxfC','registered',0,'2017-07-30 01:27:06','2017-07-30 01:27:06','XMjOCL4pvo7JHAr457r9L4wYd0mnjWemg4rTC7cZ4DOH8PoJFx7mI3MdKdEK','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','','Manager','$5000 and above','0122780422','4',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'Aiza','Azreen',NULL),(294,0,'nuul haziana binti sukarman','nurulhaziana_77@yahoocom','default.jpg','$2y$10$hE6AZoatJI.wyNUuNqKTU.gaueufcrjfAStsiSVMaI3xeRDd6swz.','registered',0,'2017-07-30 01:28:15','2017-07-30 01:29:28','DTPFzNeu11NFRmmTAZNoE5bfvEk15HFvUY0jrkv5neRicuuL7rTx92OoKu6y','t2274qUZkCLOOSUbnLwSH3vsRc50KW7Uhz28MgPZDTACC4NeFNX91jCmfiUx',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1977-06-26','','Manager','$5000 and above','0162292606','5',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'nuul haziana binti','sukarman',NULL),(295,0,'Norman Jaafar','norman@brainybunch.com','default.jpg','$2y$10$NsZB6lrSps9eK4UrcwHH3uHODLMiT5yNPuQhSXXjDLuD6OoasHmcu','registered',0,'2017-07-30 01:36:15','2017-07-30 01:40:11','0sHpAYsBmXYJFa0bVHcru1yqWKqLM8XttjKthS96ZxjfPKFwFxLwovDqa3zg','1yKMLKj34e0E4Sqo6g5pEmHAqdfcgnxRjtVeO09oEAFikSwJJTvyAhCjwsHr',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1980-09-06','','Manager','$3001-$5000','0192656675','7',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',1,0,'Norman','Jaafar',NULL),(296,0,'Mohd Noor Ikhwan Sulaiman','ikhwan.isarch@gmail.com','default.jpg','$2y$10$usKdI.gqq3eQy5NEilHf5u3.EDHzf3nPTGwrJxTlvm4MP8c0CYve6','registered',0,'2017-07-30 01:37:15','2017-07-31 09:04:40','Qq0ZI7OBXg3RUt8pYLd4Lus1vQsrBSVPwHOEdYpyGqStWSrE76kUcPc4cjDr','DSFbGUVcT16kNun6Pr1BaBFWD6FED5nCVbAwcVQT3GP1jBDr7hoQZn8Xc6iE',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1985-07-09','','Business Owner','$5000 and above','0126282533','3',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',1,1,'Mohd Noor Ikhwan','Sulaiman',NULL),(297,0,'hisyam sahid','hisyamsahid@gmail.com','default.jpg','$2y$10$619qzTsaxrLs9wCRNLIiLu2rfCPMhLwvfFst3ZCKTNacUonF/y/SG','registered',0,'2017-07-30 01:39:56','2017-07-30 01:41:12','LmriRhdx44vadMCAoLGYYyrVNSA9Mn2Dk1SZKZg6ki5Ac2WvIuO3cAfbuJJT','S8sFfXt5KbUI6t5GyvaKaPO6u24AEClnpr5TQoOnwbS2lsPfRGRrBCBYGMKw',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1976-06-05','','Business Owner','$1001-$3000','0122780416','3',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'hisyam','sahid',NULL),(298,0,'Muhammad Fitri Abdullah','mfitri.abdullah@gmail.com','default.jpg','$2y$10$Dpwe/CNpiUJLKPu.GciUiOlUybF1hK4cVEiR1aWNQujhTVOcIEbde','registered',0,'2017-07-30 01:42:58','2017-07-30 01:43:41','vjL8UWWn3jrdGRYHi4jPsrZyRT1HnQe43rsc3syDHp6ki49D6dFzApHtzSkZ','AHx6ioQiWsUPWLZTc3dwf0c9EJZulr2GZ8K21X1yXX3bq1cyQndNfzvX1xqY',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1983-07-10','','Executive','$5000 and above','0162759163','4',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'Muhammad Fitri','Abdullah',NULL),(299,0,'siti ramizah norizan','ramizah@brainybunch.com','default.jpg','$2y$10$BNqW0kRe19R/9jTpmPSw3eDHBLMevFHiah.rHTp1kF8eS/mcGRZz6','registered',0,'2017-07-30 01:45:32','2017-07-30 01:45:32','GJwYJRnBJLLzPKeAa8vv8Du12e1wBArO3yxVkX0uaje84by17S1A05SxYuAk','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1986-09-19','','Clerk','$1001-$3000','60192680531','0',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'siti ramizah','norizan',NULL),(300,0,'Yuhanis Laily Omar','yuhanislaily@yahoo.com','default.jpg','$2y$10$CHdjjDNRqe0nXMgbMvZm.uBgxZ.gWALG86gVkx8Eg98r.fxL7HzEe','registered',0,'2017-07-30 01:45:37','2017-07-30 01:46:48','ObKaTUtzHS3xHD36P38hpyREJcSw7NkO1yKIDmKEr6NNAx1rMqG3v4aZt01C','c3B92NX6iDZ9V53qY9PpiH7p6hJJ7C8hXG1AJxruIMEpP0NBEDRGqo7BzfJC',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1984-01-14','','Executive','$3001-$5000','0125959075','3',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'Yuhanis Laily','Omar',NULL),(301,0,'faizal aziz','faizalaziz80@gmail.com','default.jpg','$2y$10$HtOORC2v8LaWV/VxW5oppud9bFFSyhxeYI9Wtlya2KC74l3Rmq3by','registered',0,'2017-07-30 01:50:38','2017-07-30 01:51:20','SMnniyxSgTpPs246cNknrYw9F2v49iPSB3mnPX5ugIINV4HglML0GL0kqlny','tsnL58nhNKFVJwjJruODK4Owano2Xc7GjMZzwT1t7fFDQmReKnmLH5du4iKc',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1980-04-13','','Manager','$5000 and above','0149677080','4',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'faizal','aziz',NULL),(302,0,'mohd  hairi','hairidpe@gmail.com','default.jpg','$2y$10$iJnvzvAp/TsktAjDC1zWluJ/27P4reU8Gpa0rH.Ni/zKe0OskDiGK','registered',0,'2017-07-30 01:50:40','2017-07-30 01:50:40','z1P9dw4AdbPNEJD0vat6Vr5ekoENAabNrH76no03cHw0BQCfKBzN8ChDXhYq','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','','Select Profession','$3001-$5000','0192616261','3',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'mohd ','hairi',NULL),(303,0,'Nur Aimie Liana Ibrahim','Aimie_liana@gmail.com','default.jpg','$2y$10$/eOAQ2AQMM54akAdZl5EIOuY7VUg2Tnhv1KEqlz518DZ54QeZ1qEa','registered',0,'2017-07-30 01:52:29','2017-07-30 01:52:29','wLYNPC8gpZp43GYwjgjoyxMz7v1YDcT8qQ2itl0swv7JJ5bW6CNiVJGAqUgN','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','','Clerk','Below $1000','0176726557','-',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'Nur Aimie Liana','Ibrahim',NULL),(305,0,'rahimah mohamad toha','rahimah.mt1985@yahoo.com','default.jpg','$2y$10$XPugZT8Y9fDhws0KAnmhseYIxllEKRIIK2cVN./IWlCSr4sejapri','registered',0,'2017-07-30 01:59:22','2017-07-30 02:02:15','Vkkn0gYB1cvMZBgjk7FQ5OsiOftjRk8Xsveypac668VDMNfZECOBM7zkUgjD','qdjOurOTNU7NAaQJEf7g2uTqwEW0sSFxEyAgjZJQh9hfzzpMAQvGYWT6dMJ6',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','','Executive','$3001-$5000','0197298507','3',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'rahimah','mohamad toha',NULL),(306,0,'Muhd Faiz Ahmad Kamal Ariffin','faizkamal7@gmail.com','default.jpg','$2y$10$ihiybixA3c.LSFtMUTGNze7suAPmLrJ97cawEMtLTVMfnrxk6h.i.','registered',0,'2017-07-30 02:02:06','2017-07-30 02:07:07','OsMtlbtOtO3UFuKkIcFzk7zNjKAI3uwRIq6T9rUjhNQHI33sJsGOU6U9mhWN','3cCRY4Y4uiz3UYPmpaepvMbVJLuVzJfKQwMQx0q6lUEvnrdUOfAqmZJn279E',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1990-06-16','','Business Owner','$3001-$5000','0132337804','4',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',1,0,'Muhd Faiz','Ahmad Kamal Ariffin',NULL),(307,0,'Nur Asilah Mat Nawi','nurasilahmatnawi@gmail.com','default.jpg','$2y$10$DuWNgg7TKjchwrC1HKJvvuq22BgZgPblH3fSEBlQeg5yAMQAOk0ny','registered',0,'2017-07-30 02:10:02','2017-07-30 02:10:41','yZyIkukX9pzpD8JTyv7dYuhMZc4TzQHE18agKOzDiTx3s0wJWjDvblzN1ojl','DB7nDj2dt6kLEXozWXKefejZcwQVyyS8xyzCRDniHTWL8jFktDrsvOCQduOo',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','','Government','$3001-$5000','0136840185','4',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'Nur Asilah','Mat Nawi',NULL),(308,0,'Hafiz Rahman','sales.hrniaga.gmail.com','default.jpg','$2y$10$MdvFQlaJ0u7GR1Y409IDHewbeYfDgl/4bhaW/2RVWawgHRm87t2Vy','registered',0,'2017-07-30 02:10:54','2017-07-30 02:11:45','5DyFCBZ0ldwHvNtUwRUxSwbkO6Hyb5Maf0txIhbsYvN1AuF5MowJrt9ZrewY','g4IOQmCZJn3EdCo6wNfVUllVp9ESvIXvAeJVaXVbz5IcR8z94Jzr3QxZHvPf',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','','Manager','$5000 and above','0172864259','4',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'Hafiz','Rahman',NULL),(309,0,'SITI SALBIYAH ABDUL GENI','salbiyah1905@gmail.com','default.jpg','$2y$10$djjrfmPmu85yi0yvLRVbJ.D7qi0Nz8LjMCsch9uv28itQxVDVUq4S','registered',0,'2017-07-30 02:12:52','2017-07-30 02:12:52','HLSRaWK1zRIyT5xXY67iE7p5AgZJziho5isaqpQ6TZL4nUcrY1Atl8jXGmku','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1980-05-19','','Government','$3001-$5000','0126220644','4',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'SITI SALBIYAH','ABDUL GENI',NULL),(310,0,'Muhammad Naim Abdullah','muhammadnaim1969@gmail.com','default.jpg','$2y$10$y94/PvGN4XwEO.F2iYJ6Yub.BFhMv6AzQBKnm2qhrTqLl74YwZZuW','registered',0,'2017-07-30 02:28:26','2017-07-30 02:28:26','kOWNHqCyuPxEkMTTBTSomtzu7FUNFuNQ77DfCNW5ahUaQl0TkDZpvnuFEfgM','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','','Select Profession','Select Income','01123233990','4',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'Muhammad Naim','Abdullah',NULL),(315,1,'Aji','fazlur.aji@gmail.com','fazlur-testing.jpg','$2y$10$BUqEaVQdSlHNWsGaBxXlf.vWT5/HaFj6oJvL7GSQIdZwwYFOq6wqi','admin',0,'2017-07-31 05:33:38','2017-09-26 13:58:48','','wMJti3uZVst7GvI8SRahjgqlX4sv5TvNZAUuyg5iMloP3xVBjitw8lgMjZLF',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1981-03-05','','Executive','$5000 and above','0105147773','7',0,0,'0000-00-00','0000-00-00','',0,0,'Corporate_Admin','','','','',0,0,'','',NULL),(316,0,'Faz ra','fazlur','default.jpg','$2y$10$rXsvMvt9oGKME4HZ6g86CuUsKjSnqIreU//A8DR.upwIPM8q5Agm6','registered',0,'2017-07-31 07:33:54','2017-07-31 07:33:54','nBsKQ74f8bgLEQJqGUonsoS2iIyeUGaDQkpEnirzN6aYn6tARxg3NSeaad3g','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'2017-07-04','','Clerk','$3001-$5000','184944','133',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',0,0,'Faz','ra',NULL),(317,0,'SYARAFF AL SADAT','syaraff@raudhahcity.com','default.jpg','$2y$10$JJPCu3QIJ45tRSh4KHtZfeOqlAIZ7ppOoCSWiMYuzi/.gqpFDspxC','registered',0,'2017-07-31 12:10:36','2017-07-31 12:10:36','Z7qpa3c48D130G11XiXDysKzxuI9DW16hhbPTya9Xwz1lePOwVyUDju3EoPs','',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1974-07-13','','Business Owner','$5000 and above','0192203000','7',0,0,'0000-00-00','0000-00-00','',0,0,'','','','','',1,0,'SYARAFF','AL SADAT',NULL),(319,1,'Qsys','arsar@globalmaxlink.net','default.jpg','$2y$10$HN.R.XKaSSvvLfMUBodxVujpSlL1r7WPg2dCL49nZGmzIiBh/6wyS','admin',0,'2017-08-09 01:59:00','2017-08-09 02:03:04','5454','UragbvUIEGaXqavrZcLqtR9d89HDwi6SblJQk6hQClcZ8y7CieiiG1SwoxBK',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1978-02-27','Male','Executive','Below $1000','0107710005','45',1,50,'2017-08-09','2017-08-09','das',25,0,'Corporate_Admin','admin','1','0','0',0,0,'Qsys','',NULL),(978,319,'Mohamed Arsar','arsar@yahoo.com','default.jpg','$2y$10$Dn4Q62C/hjy/OgsWv2UJRO3c5LeCv.8c0yCiOD3TJByTuRX00CM3.','registered',1,'2017-08-18 18:32:12','2017-08-18 18:32:12','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','EXECUTIVE','$3001-$5000','126537085','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'Mohamed','Arsar',NULL),(979,319,'Mohamed Arsar','d3utscher@yahoo.com','default.jpg','$2y$10$U0Px1gY.RwYeTxVyiMz/a./SB2eD2YQW6wtutxxcgi5NSmDDHUP3.','registered',1,'2017-08-18 18:32:13','2017-08-18 18:32:13','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','Executive','$3001-$5000','133510130','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'Mohamed','Arsar',NULL),(980,0,'Hitesh Testbytes','trupti.iqra@gmail.com','default.jpg','$2y$10$X1pPMyxmpcQkJiU5edpQauZf.O4Ttx1htbsqV/lJwCEQDXA2DBlP.','registered',0,'2017-08-24 10:37:01','2017-08-24 10:37:01','NjfkgFHfVdHa18L8sKfBRrDDJC7MaLHHfMBSbwn3VtY2nHs9J9NNaOvIHLHh',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1989-08-02','male','Executive','Below $1000','8983305292','1',0,50,'2017-08-24','2017-08-24','',0,0,'','','1','0','0',0,0,'Hitesh','Testbytes',NULL),(981,0,'MOHAMAD AZARUL HAKIM IBRAHIM','azarul@brainyapps.my','default.jpg','$2y$10$4h.t0BA7EM.pO8a9wNfwZe6Ib.wDGIyGq0ZLTy1DwMepFdQ11mQlm','registered',0,'2017-08-29 15:43:10','2017-08-29 15:45:49','1Ztx8ck8ithSmZS82yaEh4LirRSN8EEUSijsiLyQh5bT4eZnXf777ap9PsSW','x1MoevHTTy6D0K9a8nCwzMCvhnvmlqJ4QYUvKevrInaeJqMK9Yy7yTLAJGuC',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1980-05-12','Select Gender','Select Profession','Below $1000','195519000','4',0,50,'2017-08-29','2017-08-29','contribute',1,1,'1','','1','0','0',0,0,'MOHAMAD AZARUL HAKIM','IBRAHIM',NULL),(982,0,'Prashant Singh','prashantrocks1990@gmail.com','default.jpg','$2y$10$j9DPdIPljTPSB5CeqzZ2auBXgMsCurN.5yVKbtu0x.v9SJel9N81.','registered',0,'2017-08-29 15:53:53','2017-08-29 15:53:53','w3OL69ehMfGSgFkZcF71eku5Y0nekFajndCoVB6RFazrOVtvLOFe9rB26xK8',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1990-04-15','male','Executive','$1001-$3000','9044298020','5',0,50,'2017-08-29','2017-08-29','',0,0,'','','1','0','0',0,0,'Prashant','Singh',NULL),(983,0,'Mahendra Kumar','kumarmahendra.raj1290@gmail.com','default.jpg','$2y$10$4QHCKY3aGpr630vKdp7ymuVrXd6o0b1rGUYgJSDWkhHo4YRVDnOzC','registered',0,'2017-08-29 18:50:07','2017-08-29 18:50:07','1B7imFwr4TXOaCVWeQ0Hb0VRAXvJq2VbNFGvCDeHqL7skUD4IiyxCcgfXUOE','QJB9VnuKs4JlALcsd0z5zQxOtYn31z4s8ux6cY3PZ0xjNkNoYk7oLDDusfEW',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1990-08-12','male','Business Owner','Below $1000','83849239445','1',0,50,'2017-08-29','2017-08-29','',0,0,'','','1','0','0',0,0,'Mahendra','Kumar',NULL),(985,0,'Arsar Sehuallaudeen','arsar@amilin.tv','default.jpg','$2y$10$FJ21A3a3LgGeQk3RqJ/SLeiXbp53S6MLtszKCc5hfjFaLBUmmNXGa','registered',0,'2017-09-19 16:18:49','2017-09-19 16:18:49','SDO59d8Yt4X4FSxTxydKMO8BGreysuFPhc7kAbBx7p4KHMVCxwMaRmTES1Pp','ocTMBP0ebtYJekg9kfWomMCEvhGZudyTPvoB3CJE8CfVeOzJCbMQljIT6dIU',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1978-02-27','male','Executive','Below $1000','0107710005','4',0,50,'2017-11-01','2017-10-11','contribute',1,1,'','','1','0','0',0,0,'Arsar','Sehuallaudeen',NULL),(986,0,'test test','falacy123456789@gmail.com','default.jpg','$2y$10$qMLuGktLGvBUnaTN9vHwee4nxArtfztobawGYh0P2IIAVBlU/Nd4O','registered',0,'2017-09-28 05:36:17','2017-10-11 03:13:32','aULexxkTrOfiPxBiGPenZRe9O7jUILmabuWiulbhvEuWOesPFXz5XMLS0qyw','QinkAy4A6SfFgsIJARqxq2nFk76dgF6sAFLSWCD3aP3IYiV5VI4HDwLsTMvu',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1998-09-10','male','Manager','Below $1000','123456789','4',0,50,'2017-09-28','2017-09-28','contribute',1,1,'','','1','0','0',0,0,'test','test',NULL),(987,0,'Hitesh Alwani','alwanihitesh1@gmail.com','default.jpg','$2y$10$bLELAmhQYaOanjXNXNRuMOciM/5DwNt5ZfIS9QjdqespWHaDs7hEe','registered',0,'2017-09-28 10:36:33','2017-09-28 10:36:33','bUH0rnIt2RC7g2cGgtY1HN5Ggde8rtAsx8Pscdh7Uj8KiQg1N9jYZ7NmtbfC',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1992-12-13','male','Manager','Below $1000','8983305292','2',0,50,'2017-09-28','2017-09-28','',1,0,'','','1','0','0',0,0,'Hitesh','Alwani',NULL),(988,0,' ','imrancs058@yahoo.com','default.jpg','$2y$10$FOUWj0aS3WGClaYtxoqekOWV/7PIiHbty1YQKp.CmB5Mp60SREfZm','registered',0,'2017-09-29 02:16:13','2017-09-29 02:16:13','KOaXX3c8z0Zu0CsPLSrGn2GSmVHFMSycdHlNxdn1yF1kroHeclbudmmg4rcG','BQFESoHNku67nTgua0WP2DiQDht34AKVbITrJFz2dUYFQwZnMqSePePfyxQR',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'2017-09-05','male','Manager','Below $1000','7783088684','5',0,50,'2017-09-29','2017-09-29','contribute',1,1,'','','1','0','0',0,0,NULL,NULL,NULL),(989,0,' ','aastha.snv@gmail.com','default.jpg','$2y$10$ov/4x081lfqxReDTS.bS9O6My5OfXJkDJSxyIEuXJFXQr9I/m1o1G','registered',0,'2017-10-17 12:26:07','2017-10-17 12:26:07','LmBtOKnYAsxfzTdRlPu2o6GOrDhFWllabU6SFiuGRDBzbjzfZQAhB0KCwCOo',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','Government','$5000 and above','8770800415','5',0,50,'2017-10-17','2017-10-17','contribute',1,1,'','','1','0','0',0,0,NULL,NULL,NULL),(990,0,' ','hkaur@contriverz.com','default.jpg','$2y$10$eGr41Y5pO7LWNrH6wWn.TOK3Lpd2mde453lcRkFS.DP2p.aE62uvW','registered',1,'2017-10-31 01:17:27','2017-10-31 01:17:27','uycxS6H5SPlO7GlplPFkKxJ5kEg74sjFcUAsRLO4NfIgUpHxQrqcMjpDyUkl','kRGIl9a2BONuEAHkiOYGdOyOrlqahocGo5RdI3Ed7FamOKb9xrSDuCOO8YTL',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1997-01-06','male','Manager','Below $1000','96892374878','10',0,50,'2017-10-31','2017-10-31','contribute',1,0,'','','','0','0',0,0,NULL,NULL,NULL),(998,0,'jhgjgjgh jghjghjgh','test123@gmail.com','default.jpg','$2y$10$xZ9xJ7gkGUBlGiXGzAP3yut6O9jkePlXGbS/MjNsUTd4mXz32RDbS','registered',0,'2017-11-09 04:24:52','2017-11-09 04:24:52','IzBcwLI3GwhvVDkiqki28a6xSU0osOhJjawSBunu2Gsjmgs9Fm5byCBLclat',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'2017-11-15','male','Manager','$3001-$5000','987876786','7',0,50,'2017-11-09','2017-11-09','',0,0,'','','1','0','0',0,0,'jhgjgjgh','jghjghjgh',NULL),(999,1,'test','testdev123@gmail.com','default.jpg','$2y$10$M3fta7FtwFOaVuAncKlJCutY4VJTtvHXI/8nvs2DqdkHGMvgbMXMq','registered',1,'2017-11-10 12:51:44','2017-11-10 12:51:44',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'2017-04-03','Male','Manager','$3001-$5000','9898787678','6',NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1000,0,'test user','test@gmail.co','default.jpg','$2y$10$Jo3jtgstR7ScP2RClNPePuw2YuBvMgwxsPER7O2aJ6absbcewkg46','registered',0,'2017-11-19 07:21:56','2017-11-19 07:21:56','y3n39kGhZyfUUxZC5oCVyW3CxMdAJ4NLKboeqRwhk7MjfTpAURM2EBJ1rNK0','F6F3WlJdwKa3KAmoAHXQWogWqCMMEVIS2x3VDvjEKjiZxWeBGdmpi3cfeolk',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'2017-11-19','male','Manager','Below $1000','1234567897','1',0,50,'2017-11-19','2017-11-19','',0,0,'','','1','0','0',0,0,'test','user',NULL),(1001,1,'Test user','arsar2@amilin.tv','default.jpg','$2y$10$mO2VHoLs4kFRDbpy5RZHj.HIExel428.XQdTZnVeaOskCdw1cUAVi','registered',1,'2017-11-19 12:12:04','2017-11-19 12:12:04',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'Select Gender','Select Profession','Select Income',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1002,0,'Customer 03','customer03@gmail.com','default.jpg','$2y$10$7K.uTZ6x6Hb6zCxhv1KxAOWth0VGWVqjUgsvkwmTywacVKrz9wKqS','registered',0,'2017-11-20 07:02:07','2017-11-20 07:02:07','GeP4gQEjy2L4PVTOyBOv7kSVMXrW4CQ7sam4NPSR8xq1Rrg28WGLmXeAtSgK',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'2017-11-20','male','Manager','Below $1000','1234','3',0,50,'2017-11-20','2017-11-20','',0,0,'','','1','0','0',0,0,'Customer','03',NULL),(1003,0,'Customer 03','customer04@gmail.com','default.jpg','$2y$10$hXLYoldCDSvyWD6R/fOJUekX76vGv7MNwj1d3ZFpEpdUn4Ds8HnZi','registered',0,'2017-11-20 11:05:26','2017-11-20 11:05:26','gQ1WGPGmN33omPnsujToG0WeSoQmur9IUTX7pbbuUqSeU1ouak620uPxkhQ0','iD4QYW1YicDL6ZUUSQgKEtiJMgCeuqfQ7mJl4M9DJkHM7EJ3kKH2j87DIAOp',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'2017-11-20','male','Select Profession','Below $1000','1234','1234',0,50,'2017-11-20','2017-11-20','',0,0,'','','1','0','0',0,0,'Customer','03',NULL),(1004,0,'Customer 05','customer05@gmail.com','default.jpg','$2y$10$5CSlbB0VNdDB1XkoDslYTe.iaWo4JzefgWoPbxRnQllbx704R25.C','registered',0,'2017-11-20 11:07:48','2017-11-20 11:07:48','HkbIrifdd4jiRgsZWrXHjc3szdH2U9ogxUCukjvc9wOQfmHh2PslcvIPfMYb','Kjf7U6K7VEn2dXQ2LwdGAg63O8tpiSYLfmTXX4wXZL1v3gsmjSNmRxkzxT9w',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'2017-11-20','male','Manager','Below $1000','1234','1234',0,50,'2017-11-20','2017-11-20','',0,0,'','','1','0','0',0,0,'Customer','05',NULL),(1005,1,'Test Corporate  user','arammarm@gmail.com','default.jpg','$2y$10$oaatqrWXCpg5pzSxEoVSFuif5AgCzzciAfTvYHrNglBbTpRRQxVBe','admin',1,'2017-11-20 13:07:02','2017-11-20 13:07:02','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,50,NULL,NULL,'',0,0,'Corporate_Admin','admin','1','0','0',0,0,'Test','Corporate  user','customer05@gmail.com'),(1006,1,'test 2','test02@gmail.com','default.jpg','$2y$10$porVnDCLWG4oGbR17R2LL.Rx1UiVjDFvlPqDNpPEhRxvotfVqYdai','admin',1,'2017-11-20 13:07:39','2017-11-20 13:07:39','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,50,NULL,NULL,'',0,0,'Corporate_Admin','admin','1','0','0',0,0,'test','2','test'),(1008,0,'syaiful othman','syaifulnaim@gmail.com','default.jpg','$2y$10$181qbtoHF5fwymgMIehJ4OjvWpQphytknSaN1TfUOgJP4TPXrnyJ.','registered',0,'2017-11-21 02:59:28','2017-11-21 03:02:52','2UNkipAAGgqPiaEY28X65sVZHcSSWOe5zCQTOzk5XwDeWZPzFlxgH70dzsFJ','wsmX4zoZrowMfbXpQMHly3PffXfijVs7srP4EXvCEEdcVVChINK5Wpg9x146',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1998-11-02','male','Manager','Select Income','12345678','3',0,50,'2017-11-21','2017-11-21','',0,0,'','','1','0','0',0,0,'syaiful','othman',NULL),(1009,0,'syaiful arsar','syaiful@amilin.tv','default.jpg','$2y$10$PwTOEEfDjzi7gwskXK5iquel3l/dflU95bL8PBZuQN9Xcppid5VNm','registered',0,'2017-11-21 04:45:59','2017-11-21 04:45:59','IvlTXovQqgRsDKSgHbBCNEEk0pJ7L9OTqRM8LsB5G3G0t6dQi954U4BaLcAp','t6f3e32cMckfhkZMyrJ3I9GsSTxzLidrH517FixxnlnpvIoR0vAEgiitgKLv',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1998-11-08','male','Manager','Below $1000','123456789','3',0,50,'2017-11-21','2017-11-21','contribute',1,1,'','','1','0','0',0,0,'syaiful','arsar',NULL),(1010,1,'syaiful naim','syaiful2@amilin.tv','default.jpg','$2y$10$Zu..MdOxTEPQGNsM39PgIeB2LxQBC23xR7rKfPxzGQmlS0CEA1osa','admin',0,'2017-11-21 04:52:53','2017-11-22 15:24:00','5454','gpzGWCjUGeSfChxWdB1wmFT1UxmYSLjuKiebwxQwRCmlNrv5ZgRYc8ab1vTH',1,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,50,NULL,NULL,'',0,0,'Corporate_Admin','admin','1','0','0',0,0,'syaiful','naim','admin'),(1011,1010,'ABDUL AZIM BIN AB.AZIS','azimazis@gmail.com','default.jpg','$2y$10$niZhQ0P5ZMUUhNdzKuPHx.SJwO38UFzdNSe3oI7filR7KLGTIOi.u','registered',1,'2017-11-22 15:47:21','2017-11-22 15:47:21','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','EXECUTIVE','$3001-$5000','126537085','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'ABDUL','AZIM BIN AB.AZIS',NULL),(1012,1010,'ABDUL HAKIM BIN ABDUL WAHAB','abdhakimwahab@gmail.com','default.jpg','$2y$10$zLyY/N5sVsBoT6BgsFCoM.1wFlLvzVERDdvXcGUSv7DzduB5FLJa6','registered',1,'2017-11-22 15:47:21','2017-11-22 15:47:21','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','Entrepreneur','$1001-$3000','164494152','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'ABDUL','HAKIM BIN ABDUL WAHAB',NULL),(1013,1010,'ABDULLAH AMIRUDDIN BIN ABDULLAH RASUL','dullah.bugis@yahoo.com','default.jpg','$2y$10$fVWw18os8owbAmwOE5cOgeR4fA.l76PFszlGZ0eI8xrn/S1tip2HW','registered',1,'2017-11-22 15:47:21','2017-11-22 15:47:21','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','EDITOR','$5000 and above','163557015','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'ABDULLAH','AMIRUDDIN BIN ABDULLAH RASUL',NULL),(1014,1010,'AHAMD RAHIMI BIN AHMAD KAMALUDDIN','hailyramly82@gmail.com','default.jpg','$2y$10$x0Fu93GDKTFfuoGPS1qgNO3Izs9cqvA3fEoc.lnst9vzfLw5kpAkm','registered',1,'2017-11-22 15:47:21','2017-11-22 15:47:21','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','Technician','$1001-$3000','134352027','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'AHAMD','RAHIMI BIN AHMAD KAMALUDDIN',NULL),(1015,1010,'AHMAD DAINAL','ahmadainal@yahoo.com','default.jpg','$2y$10$Qw3rYjtLKevhlME2x1rljOTELw5vorpECBI6c3.LwUfnpXcbkLtZ6','registered',1,'2017-11-22 15:47:21','2017-11-22 15:47:21','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','Engineer','$3001-$5000','174451198','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'AHMAD','DAINAL',NULL),(1016,1010,'AHMAD FADHIL MOHAMAD','fadhilmohamad@petronas.com.my','default.jpg','$2y$10$dwUxSe/jnG.2cBx2Q4Hu5ekubzJ3AhmALrHLLRWqUkxyjXfrDoU2u','registered',1,'2017-11-22 15:47:21','2017-11-22 15:47:21','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','executive','$5000 and above','192712181','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'AHMAD','FADHIL MOHAMAD',NULL),(1017,1010,'AHMAD FAIZAL BIN MOHD RADZI','jeps8585@yahoo.com','default.jpg','$2y$10$sypTj/SQ6xsiiy7KeVhH2OUAt5sUqO4M1VSn3Vr4CD2DUyvWqMgEC','registered',1,'2017-11-22 15:47:21','2017-11-22 15:47:21','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','WEALTH PLANNER','$5000 and above','194563442','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'AHMAD','FAIZAL BIN MOHD RADZI',NULL),(1018,1010,'AHMAD HUMAIZI BIN RAMLI','maizijue@gmail.com','default.jpg','$2y$10$T9JdtiHeYQoK5Ahi.lgn1uZqhmULP8a28th5Y.j0jlq9Jq7lL2wn2','registered',1,'2017-11-22 15:47:21','2017-11-22 15:47:21','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','DUTY MANAGER ','$1001-$3000','1139923115','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'AHMAD','HUMAIZI BIN RAMLI',NULL),(1019,1010,'AHMAD ZAKI ZAKARIA','ahmadzaki.zakaria@gmail.com','default.jpg','$2y$10$vY2rCwkOPh9bJQB9J65SX.wrHawm/bGvKMpAGMgRpQcdf3rlRdsOm','registered',1,'2017-11-22 15:47:22','2017-11-22 15:47:22','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','System Engineer','$3001-$5000','60193358209','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'AHMAD','ZAKI ZAKARIA',NULL),(1020,1010,'AIDA YUHANIZA AHMAD','aida.yuhaniza@gmail.com','default.jpg','$2y$10$HNpiC48jYxiyBP.taKC17eru.9yro2.20DwWmXUZkyMyPBjmYrWEm','registered',1,'2017-11-22 15:47:22','2017-11-22 15:47:22','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','Takaful Consultant','$5000 and above','179892197','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'AIDA','YUHANIZA AHMAD',NULL),(1021,1010,'AIMAN NAJATI AKMAR RAHMAN','aimannajati@gmail.com','default.jpg','$2y$10$ghw80M/7QdgSKEAM5Warbe3lN76dIN0DBT/.XsREpnl7C5yIP7TgO','registered',1,'2017-11-22 15:47:22','2017-11-22 15:47:22','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','SUPRITENDENT','$3001-$5000','193307581','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'AIMAN','NAJATI AKMAR RAHMAN',NULL),(1022,1010,'AINA FAIRUZ BINTI ABD LATIF','Polaris1506@yahoo.com','default.jpg','$2y$10$d2L9NelPLEuMX9MgKu9MwOfUic.1zyKg01CEvsaylUMJzU0PA.Gtu','registered',1,'2017-11-22 15:47:22','2017-11-22 15:47:22','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','Civil & Structure Engineer','$5000 and above','192658400','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'AINA','FAIRUZ BINTI ABD LATIF',NULL),(1023,1010,'AISHAH BINTI DARAOH','aishah_d@yahoo.com','default.jpg','$2y$10$Zc5/HTn6ypPEkSk2knMq3u8D01XSC0LKwna4yfedYGAIpkFuSXJNy','registered',1,'2017-11-22 15:47:22','2017-11-22 15:47:22','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','ENGINEER','$3001-$5000','196515327','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'AISHAH','BINTI DARAOH',NULL),(1024,1010,'AIZAN BIN MUHAMAD','pijotnafisya@gmail.com','default.jpg','$2y$10$6BiSC29/8aFNV9czmqhufuwM6Yuun6qaHAP0hkfSfCajLwj3nM9zC','registered',1,'2017-11-22 15:47:22','2017-11-22 15:47:22','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','3D Designer','$5000 and above','162867466','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'AIZAN','BIN MUHAMAD',NULL),(1025,1010,'AKRAM BIN DAHAMAN@ DAHLAN','matkeram@gmail.com','default.jpg','$2y$10$XzM6WO7JrkFHvNbCfu.A7eqetqgKB9jA83BqdOuYzbTh0JwsVefam','registered',1,'2017-11-22 15:47:22','2017-11-22 15:47:22','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','lecturer','$5000 and above','012 4310670','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'AKRAM','BIN DAHAMAN@ DAHLAN',NULL),(1026,1010,'ALIEFIA NURYASIN','fuadhusni@gmail.com','default.jpg','$2y$10$eKfw9L/i.smliPQpgqMA2Ozc75Wg7SKcLsIDRbsxMzebg3Fud/rDe','registered',1,'2017-11-22 15:47:22','2017-11-22 15:47:22','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','Engineer','$3001-$5000','102137407','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'ALIEFIA','NURYASIN',NULL),(1027,1010,'ALYA HAZWANI HAMIDON','alya_hh@ymail.com','default.jpg','$2y$10$GYh7KLW40GemF3NRBXZ8OuJlbNJycZmhNEhPSTw18BZ7TmInosABu','registered',1,'2017-11-22 15:47:22','2017-11-22 15:47:22','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','-','Below $1000','132875304','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'ALYA','HAZWANI HAMIDON',NULL),(1028,1010,'AMELDA SUTINAH BT KARIM','ameldasutinah@yahoo.com','default.jpg','$2y$10$b1QWuT8MekuMgEWjMN2b9uRz/9z0lLC/EncFMSw/BrAlEDDG0G83i','registered',1,'2017-11-22 15:47:22','2017-11-22 15:47:22','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','Driver','Below $1000','163948552','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'AMELDA','SUTINAH BT KARIM',NULL),(1029,1010,'AMIR SAFWAN ABDULLAH ZAWAWI','amirsafwan969@gmail.com','default.jpg','$2y$10$f0GZPCyM2mZEasb3dQ7Bve3x5bmr0wMJAEz3RKayrSpZrjtbQbyE2','registered',1,'2017-11-22 15:47:22','2017-11-22 15:47:22','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','ENGINEER','$5000 and above','60126129444','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'AMIR','SAFWAN ABDULLAH ZAWAWI',NULL),(1030,1010,'ANIL EZATUL BINTI ROSEBI','a.xteqs@gmail.com','default.jpg','$2y$10$hN6eGeqQHoWmPur.ZB2Joemi0Ofql3e.FCQT2Y9fOCN7QV05KHg4a','registered',1,'2017-11-22 15:47:22','2017-11-22 15:47:22','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','Contractor','Below $1000','122287804','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'ANIL','EZATUL BINTI ROSEBI',NULL),(1031,1010,'ANNUAR SOFI BIN CHE KHAZIM','annuarsf@yahoo.com','default.jpg','$2y$10$YwYJlA/s8HGf6EhKA7WF9.VQLHXmTHdMpWOh4OAmtCnlE33ahqkPu','registered',1,'2017-11-22 15:47:22','2017-11-22 15:47:22','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','banker','$5000 and above','133439668','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'ANNUAR','SOFI BIN CHE KHAZIM',NULL),(1032,1010,'ANWAR HALIM BIN NOR HASHIM','anwarhalim@gmail.com','default.jpg','$2y$10$jBHrjO9sMn4DW80I70e6le0X10jGGbZuTh1rTFAdvYm5NuScXze.S','registered',1,'2017-11-22 15:47:22','2017-11-22 15:47:22','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','Admin Officer','$3001-$5000','122108841','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'ANWAR','HALIM BIN NOR HASHIM',NULL),(1033,1010,'AREF OMAR','refomar@gmail.com','default.jpg','$2y$10$hqx5dz1bwoqe7GQPW9JKt.Ys/fc4sQ6eLZO94GtP2K8CXFjY8uyUW','registered',1,'2017-11-22 15:47:22','2017-11-22 15:47:22','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','Journalist','$3001-$5000','126428202','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'AREF','OMAR',NULL),(1034,1010,'ARFAHSAADAH HAJI ARIPIN','arfahsaadah@yahoo.com','default.jpg','$2y$10$0WD4jFoDFcb/fZnOI4uhhOIQkdFqRXx1dk8j605dbZy3pnfuKqZbS','registered',1,'2017-11-22 15:47:23','2017-11-22 15:47:23','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','EXECUTIVE','$5000 and above','60162183120','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'ARFAHSAADAH','HAJI ARIPIN',NULL),(1035,1010,'ARIEF ABDULLAH TAN','a2comms@gmail.com','default.jpg','$2y$10$JvOGzGD8jyrfUpI2oltKfeKhxrh.z.IAY4d1wP7jRwew/MDsa9/zS','registered',1,'2017-11-22 15:47:23','2017-11-22 15:47:23','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','Entrepreneur','$5000 and above','173316113','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'ARIEF','ABDULLAH TAN',NULL),(1036,1010,'ASFIZUAMRY BIN ABDUL MAJID','asfizuamry@gmail.com','default.jpg','$2y$10$dad8KDDjh56TjiK8ROi5jO7j0Y5dYCioznd2tanEdIlP9mMzizyWG','registered',1,'2017-11-22 15:47:23','2017-11-22 15:47:23','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','bussinesman','$1001-$3000','173004196','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'ASFIZUAMRY','BIN ABDUL MAJID',NULL),(1037,1010,'ASRINAH BINTI ASRAL','asrinah.asral@gmail.com','default.jpg','$2y$10$ZaovZclUS9V0lFXPhEsNkeslk/NTxvsNd/e/PexqcgwxI7k0tlHVy','registered',1,'2017-11-22 15:47:23','2017-11-22 15:47:23','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','project coordinator','$1001-$3000','122009049','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'ASRINAH','BINTI ASRAL',NULL),(1038,1010,'AZEZEE THALAHA','azezee.thalaha@gmail.com','default.jpg','$2y$10$0QeNwPREN2vq12zZr0Jt2OlmEXNMYnVy9LUMNAx.EIlHp0MM2L0PK','registered',1,'2017-11-22 15:47:23','2017-11-22 15:47:23','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','Self employed','Below $1000','123453719','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'AZEZEE','THALAHA',NULL),(1039,1010,'AZJAMAATULIZA FARRAH AIN BT JAMLUDIN','criminaloffender@gmail.com','default.jpg','$2y$10$emGPQJUgQP2GOGy3czfVO.m0HwgjyOaXlatCgcBIFBDpvltsVi0UO','registered',1,'2017-11-22 15:47:23','2017-11-22 15:47:23','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','Project Manager','$5000 and above','125517547','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'AZJAMAATULIZA','FARRAH AIN BT JAMLUDIN',NULL),(1040,1010,'AZLIN SUZANA BT ABU AMAN','azlinsuzana345@gmail.com','default.jpg','$2y$10$3VjSvhmoiqO6vN71UtG02u0Ot4sA4JL5KIFlnmG0X35kNyKtoUWxK','registered',1,'2017-11-22 15:47:23','2017-11-22 15:47:23','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','Technical Manager','$5000 and above','193608527','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'AZLIN','SUZANA BT ABU AMAN',NULL),(1041,1010,'AZNUZUIZWAH BINTI MOHAMAD NAZIM','juju2383@gmail.com','default.jpg','$2y$10$mlbu5HUrkrnyEmXV5HGcJuuAtuTSd71vsqJDSaz2PA29JBW54lwUu','registered',1,'2017-11-22 15:47:23','2017-11-22 15:47:23','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','PROJECT EXECUTIVE','$3001-$5000','129782731','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'AZNUZUIZWAH','BINTI MOHAMAD NAZIM',NULL),(1042,1010,'AZRIL BIN AZMAN','azrilazman8@gmail.com','default.jpg','$2y$10$zdCRPbhxYdDoBuNR8UoP9O4e0cTjNNQxGdLWt4hicXKxT78/BA2ai','registered',1,'2017-11-22 15:47:23','2017-11-22 15:47:23','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','Banker','$5000 and above','126882610','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'AZRIL','BIN AZMAN',NULL),(1043,1010,'AZRIN WAHEEDY AHMAD','azrinwaheedy@hotmail.com','default.jpg','$2y$10$aBtrJyla2KXVFy/nrrUjqutrRGNKuJKTs31s3j7mRwzhK9WPCMenW','registered',1,'2017-11-22 15:47:23','2017-11-22 15:47:23','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','Doctor','$3001-$5000','129809667','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'AZRIN','WAHEEDY AHMAD',NULL),(1044,1010,'AZRUL HISHAM BIN AGOS SALIM','capt_fusuke@yahoo.com','default.jpg','$2y$10$ddnfIZ5S7j9ukG46cy7rcupivvVESkqxVJfYj.fDLxWdPnIvNHYaW','registered',1,'2017-11-22 15:47:23','2017-11-22 15:47:23','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','SYSTEM ANALYST','$3001-$5000','193884974','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'AZRUL','HISHAM BIN AGOS SALIM',NULL),(1045,1010,'AZURA ABDUL RAZAK ','azuraar@iium.edu.my','default.jpg','$2y$10$7.Ayh2Db5hiMG5Nzqxrtm.vPU2gV3unbCvPq84A0NDAzoUBntl/ni','registered',1,'2017-11-22 15:47:23','2017-11-22 15:47:23','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','SENIOR MANAGER','$5000 and above','193611268','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'AZURA','ABDUL RAZAK ',NULL),(1046,1010,'AZZAH ZAINAL ABIDIN','azzah_za@yahoo.co.uk','default.jpg','$2y$10$3sTHe0vPItB65SFNZLocrOxeP75XEAKY2..h6iRIkn8OqVzd0orKW','registered',1,'2017-11-22 15:47:23','2017-11-22 15:47:23','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','Aircraft Technician','$1001-$3000','123961410','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'AZZAH','ZAINAL ABIDIN',NULL),(1047,1010,'BAZILAH BINTI MAT GHANI','anyabyluna@gmail.com','default.jpg','$2y$10$rt/DMguLEvL3SRG9jAGW4erZgCBJcnJW1RLs5RIXkFQuZ62/.YeoC','registered',1,'2017-11-22 15:47:23','2017-11-22 15:47:23','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','Technical Officer','$1001-$3000','139943758','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'BAZILAH','BINTI MAT GHANI',NULL),(1048,1010,'DAHLIA AHMAD','aya.ahmad84@gmail.com','default.jpg','$2y$10$fy8LlHJ2LgFNhqjpzbv3qe3hT2Y8pwLMcKB.lzj8aubuYug/yp/ye','registered',1,'2017-11-22 15:47:23','2017-11-22 15:47:23','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','MV officer','$5000 and above','60122268106','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'DAHLIA','AHMAD',NULL),(1049,1010,'DARLIZA ABD LATIF ','Darlizaabdlatif@gmail.com','default.jpg','$2y$10$OqECljGKbB.R15LmA2E7N..SyXPTIb3acdF8WtYySuOf8zgPty7Ga','registered',1,'2017-11-22 15:47:24','2017-11-22 15:47:24','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','Own ','Below $1000','172960836','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'DARLIZA','ABD LATIF ',NULL),(1050,1010,'DATIN PUTERI NURSHAHIRAH RASHID','datinpnr4@gmail.com','default.jpg','$2y$10$aOKq0rU6UKliYJafzym4le4bqabxsrwABK.vAq.HoUR72e5FJfBey','registered',1,'2017-11-22 15:47:24','2017-11-22 15:47:24','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','na','Below $1000','601000000000','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'DATIN','PUTERI NURSHAHIRAH RASHID',NULL),(1051,1010,'DAUD BIN HAMZAH','sazlinai@iwk.com.my','default.jpg','$2y$10$mzXRHciLEVwAxzZIg0eMUu5ztnX/JSZTuPkdEBtVmE/tguSOyO11i','registered',1,'2017-11-22 15:47:24','2017-11-22 15:47:24','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','Cameraman','$3001-$5000','129050848','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'DAUD','BIN HAMZAH',NULL),(1052,1010,'DEWI INTAN SARA MOHD ISMAIL','intan_kolek@hotmail.com','default.jpg','$2y$10$jk2MtIgeC.q8evFtSBCZwuMwH1gZW5JQDYXG2ISJ3RiubC/mV3Exa','registered',1,'2017-11-22 15:47:24','2017-11-22 15:47:24','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','Police Inspector','$3001-$5000','60173489343','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'DEWI','INTAN SARA MOHD ISMAIL',NULL),(1053,1010,'DR NURUL AIDA NGAH','dr.aidangah@gmail.com','default.jpg','$2y$10$0u5vNe6e9HwpFcnZktb9GuAhiZLgnb4m47ljwXxlGF4k/MzSkFHK6','registered',1,'2017-11-22 15:47:24','2017-11-22 15:47:24','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','Senior Assistant Engineer','$5000 and above','192790604','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'DR','NURUL AIDA NGAH',NULL),(1054,1010,'DR. SURAJUDEEN ABIOLA ABDULRAHMAN','abdulsuraj@gmail.com','default.jpg','$2y$10$BjDu1374EKDdaMRFGFPZ3e13mfAqAaHkt0LlYGCH8v.rBw3dT7Np.','registered',1,'2017-11-22 15:47:24','2017-11-22 15:47:24','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','Lecturer','$5000 and above','60167067760','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'DR.','SURAJUDEEN ABIOLA ABDULRAHMAN',NULL),(1055,1010,'DR. VERIMA SARIA BT YULIAWIRATMAN','drverima@yahoo.com','default.jpg','$2y$10$StRiyYdxWbhg4b3ftGQuuuC72TQrcggtAoKiY9Gp9bQwSUDxI/SZG','registered',1,'2017-11-22 15:47:24','2017-11-22 15:47:24','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','Personal Trainer','$3001-$5000','166684696','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'DR.','VERIMA SARIA BT YULIAWIRATMAN',NULL),(1056,1010,'EDZAT EDZMIR BIN BAHARI','tftamanmelati@gmail.com','default.jpg','$2y$10$uTexQVPYe7UjjXcdwjdsTO8/bNviinq9p7cX3WO8PkCh18XKo/UK6','registered',1,'2017-11-22 15:47:24','2017-11-22 15:47:24','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','CHIEF OPERATING OFFICER','$5000 and above','196697765','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'EDZAT','EDZMIR BIN BAHARI',NULL),(1057,1010,'ELIYAWATI BINTI SAYDI','elysaydi@yahoo.com','default.jpg','$2y$10$7x2i5lTitybSwnbmSb687eIad3CzQyltW/1..UYxFpmeLLrb7muEe','registered',1,'2017-11-22 15:47:24','2017-11-22 15:47:24','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','TEACHER','$3001-$5000','199364939','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'ELIYAWATI','BINTI SAYDI',NULL),(1058,1010,'ELMOKRI BIN RAZMAN','elm0kri.tg4@gmail.com','default.jpg','$2y$10$Ea6T5FgciZeEkaLkuohlqucMer.5UeffuV0I3T7A34stSJxBzEjLq','registered',1,'2017-11-22 15:47:24','2017-11-22 15:47:24','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','Business ','$5000 and above','163434040','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'ELMOKRI','BIN RAZMAN',NULL),(1059,1010,'ELYA BINTI HARON','yukielie@gmail.com','default.jpg','$2y$10$eQ4RcRAd/bPLSiYnFyvoJe8m6lTXo42Lm5vyw3.RcPGyTUuI8Enw.','registered',1,'2017-11-22 15:47:24','2017-11-22 15:47:24','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','Accountant','$5000 and above','163711279','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'ELYA','BINTI HARON',NULL),(1060,1010,'EMIDZA BINTI SABRI','emiey_zal@yahoo.com','default.jpg','$2y$10$NcsUQvAPVmRDmucajkhp2OQf7kCYn3SXVZ09PkX1qVWRQpBQT80QW','registered',1,'2017-11-22 15:47:24','2017-11-22 15:47:24','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','Navigation Officer','$3001-$5000','148815703','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'EMIDZA','BINTI SABRI',NULL),(1061,1010,'ENCIK HAZRUL BIN AKBAR ALI KHAN','hazrul.akbar@gmail.com','default.jpg','$2y$10$dSfvIwnfw6Ga0a954RH6te/tgCfcWz/uCF64ckeOC1MoLv39WuSGm','registered',1,'2017-11-22 15:47:24','2017-11-22 15:47:24','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','Operation Services Senior Specialist','$3001-$5000','125590292','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'ENCIK','HAZRUL BIN AKBAR ALI KHAN',NULL),(1062,1010,'ENCIK MOHD FIRDAUS BIN MOHD SHARIFF','finance.firdaus@gmail.com','default.jpg','$2y$10$yObeaxwNYh4LkgknRA9lL.1r05jsiOm02zUiqRyuRGIw9kENkynMC','registered',1,'2017-11-22 15:47:24','2017-11-22 15:47:24','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','ENGINEER','$5000 and above','137440144','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'ENCIK','MOHD FIRDAUS BIN MOHD SHARIFF',NULL),(1063,1010,'ENCIK MOHD FUAD B SOLEI @ SALLEH','mohdfuad.salleh@gmail.com','default.jpg','$2y$10$zjEf0hrY6hB1jN/PKtYY7OTvydwE1OnxLSqZO/74l02rzw74.DMqW','registered',1,'2017-11-22 15:47:24','2017-11-22 15:47:24','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','Engineer','$5000 and above','192444124','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'ENCIK','MOHD FUAD B SOLEI @ SALLEH',NULL),(1064,1010,'ENCIK MOHD HAZIQ DHIYAUDDIN BIN RAZALI','haziq85razali@gmail.com','default.jpg','$2y$10$/l72uwbUDKD7AiYZRmmeuu.WM3P7y.poUEUYXTAnJDQ2QuHXf65uy','registered',1,'2017-11-22 15:47:25','2017-11-22 15:47:25','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','LEGAL COUNSEL','$5000 and above','129056264','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'ENCIK','MOHD HAZIQ DHIYAUDDIN BIN RAZALI',NULL),(1065,1010,'ENCIK MOHD SYAIFUL AZREIN BIN HUSIN','syaiful.a@feldaglobal.com','default.jpg','$2y$10$29CWM17FD/uhVWiYy837tecSHTQj8ZoJMlI1zR888QLQLLBSChD1e','registered',1,'2017-11-22 15:47:25','2017-11-22 15:47:25','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','System Analyst','$3001-$5000','126910678','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'ENCIK','MOHD SYAIFUL AZREIN BIN HUSIN',NULL),(1066,1010,'ENCIK MUHAMMAD SHAFIQ','ms.isnin@gmail.com','default.jpg','$2y$10$lpHtsoL/bO8FKzX2iifvFexr0ybNJfluzNAsSbIP/htaITXKawPH.','registered',1,'2017-11-22 15:47:25','2017-11-22 15:47:25','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','Sales Engineer','$5000 and above','192317890','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'ENCIK','MUHAMMAD SHAFIQ',NULL),(1067,1010,'ENCIK SHAFREEZAD SOBRI','shafreezad@petronas.com.my','default.jpg','$2y$10$zglWJFQJaSMVrWMzhSnSw.pqCj60IZhJNOGeCPnqYNI8SrIIxo3Lm','registered',1,'2017-11-22 15:47:25','2017-11-22 15:47:25','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','Engineer','Below $1000','193562138','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'ENCIK','SHAFREEZAD SOBRI',NULL),(1068,1010,'ENCIK TAUFIK HIDAYAT','thidayat.farich@gmail.com','default.jpg','$2y$10$5BukO6bG980tiPR69yHR0ednZVHgVljojMpSB/XlygnClQtElcS1i','registered',1,'2017-11-22 15:47:25','2017-11-22 15:47:25','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','SAP Business Analyst ','$5000 and above','1126343245','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'ENCIK','TAUFIK HIDAYAT',NULL),(1069,1010,'ENCIK ZAID BIN AWAB','zaid.awab@gmail.com','default.jpg','$2y$10$4x2.ZkV6e2IPQNetJHj/9OVF1lLq4bxeQR/3dhq5D/Ew0iNXzY7T6','registered',1,'2017-11-22 15:47:25','2017-11-22 15:47:25','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','Engineer ','Below $1000','193340425','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'ENCIK','ZAID BIN AWAB',NULL),(1070,1010,'ENNY EZRIATI BINTI IHSAN','enny131@gmail.com','default.jpg','$2y$10$urse9Z8vrGBIkGXCMG0ryecgXT42RnEVvMCeo5ln4Tft3.w4HRDie','registered',1,'2017-11-22 15:47:25','2017-11-22 15:47:25','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','HR MANAGER','$5000 and above','132697447','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'ENNY','EZRIATI BINTI IHSAN',NULL),(1071,1010,'ERUWAN BIN ABU KASIM','eruwanzara@yahoo.com','default.jpg','$2y$10$LVJENT8ynbEjk2X4X49Z1OYQ9ynE5956E2Kgyk6IlcQZobL/ty9VS','registered',1,'2017-11-22 15:47:25','2017-11-22 15:47:25','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','Supervisor','$3001-$5000','192008177','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'ERUWAN','BIN ABU KASIM',NULL),(1072,1010,'ERYANA SUSANTRI BINTI A.BAKAR EFFENDDE','eryana81@gmail.com','default.jpg','$2y$10$Y8JVelI.3UN190GPTkcwn.vfRhizXY8qYwJaxy0PeQK7.FY1a3Hgy','registered',1,'2017-11-22 15:47:25','2017-11-22 15:47:25','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','MEDICAL OFFICER','$5000 and above','123199466','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'ERYANA','SUSANTRI BINTI A.BAKAR EFFENDDE',NULL),(1073,1010,'EZLIN BINTI TAMRIN','ezlin@oum.edu.my','default.jpg','$2y$10$n99uZ3yiywDUN0LfUz4OQeykvqwmRDRcM7kX0vSEsNAbWK0aYd/AS','registered',1,'2017-11-22 15:47:25','2017-11-22 15:47:25','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','Project Coordinator','$1001-$3000','193857989','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'EZLIN','BINTI TAMRIN',NULL),(1074,1010,'EZY EZIENEE BINTI JAMALUDDIN','ezy_life@hotmail.com','default.jpg','$2y$10$Zbz8qZiDJzNoHdgfetOw0.3E1Wk9UaYhivhbyTov1Y37sg82ep6ye','registered',1,'2017-11-22 15:47:25','2017-11-22 15:47:25','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','ARCHITECT','$5000 and above','193560883','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'EZY','EZIENEE BINTI JAMALUDDIN',NULL),(1075,1010,'FADIA SAMION','syauqialias@gmail.com','default.jpg','$2y$10$YTemzDnbiPdmZluYmN8pLewRGB.0xWRLxWlAPm4UzNPN9PWHLu8wy','registered',1,'2017-11-22 15:47:25','2017-11-22 15:47:25','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','Engineer','$5000 and above','172243012','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'FADIA','SAMION',NULL),(1076,1010,'FADZLYNDA HUAIDA BINTI HAMDAN','zara.seth171@gmail.com','default.jpg','$2y$10$vNM6zLlN/cfpjMd60HmY4.IsoNQWfcfZ0K5zIuwg9sCBJgHWoTaQS','registered',1,'2017-11-22 15:47:25','2017-11-22 15:47:25','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','OPERATION MANAGER','$5000 and above','122930103','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'FADZLYNDA','HUAIDA BINTI HAMDAN',NULL),(1077,1010,'FAEIZ AFZAL BIN MAZLAN','knightwolf1010@yahoo.co.uk','default.jpg','$2y$10$G9ma55ajM6RBeX219ZzNf.jcJTvz2TrR8IdD/xTTBmybyNuuyif2y','registered',1,'2017-11-22 15:47:25','2017-11-22 15:47:25','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','FINANCE MANAGER','$5000 and above','60122260024','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'FAEIZ','AFZAL BIN MAZLAN',NULL),(1078,1010,'FAHMI AMRI BIN MOHAMED SABRI','fahmiamrims@gmail.com','default.jpg','$2y$10$K3Yj5VfKX1Oh7nmAbNOGj.J/e/DkxASpOVoq2xk.X9vsWH1s2D9vu','registered',1,'2017-11-22 15:47:25','2017-11-22 15:47:25','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','Self-Employed','$1001-$3000','122849443','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'FAHMI','AMRI BIN MOHAMED SABRI',NULL),(1079,1010,'FAIRUZ IZWAN BIN MOHMMAD JARI','fairuzizwan3@yahoo.com','default.jpg','$2y$10$sddK3gkB2ajo0NP3g/.Xxu9C.WJVp0tR3SRhrjHETzeaK.t3Rwztm','registered',1,'2017-11-22 15:47:26','2017-11-22 15:47:26','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','Legal Advisor','$5000 and above','122405570','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'FAIRUZ','IZWAN BIN MOHMMAD JARI',NULL),(1080,1010,'FARAH AIZAR BT ZAIPUL BAHARI ','farahaizar@yahoo.com','default.jpg','$2y$10$RUXJE9CVvzJ1HtznPrBJM.x3UgriPIxhXcZzP/wpA3qKCZXEa/exy','registered',1,'2017-11-22 15:47:26','2017-11-22 15:47:26','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','ML EXECUTIVE','$3001-$5000','195780272','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'FARAH','AIZAR BT ZAIPUL BAHARI ',NULL),(1081,1010,'FARAH IZZATI BT ALI','farah.izzati@tnb.com.my','default.jpg','$2y$10$e1abBpSERPv1g0DUSJudC.NQBwh/uwmMCPcMJl1Nt34P0dXd.o3GW','registered',1,'2017-11-22 15:47:26','2017-11-22 15:47:26','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','Engineer','Below $1000','134373890','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'FARAH','IZZATI BT ALI',NULL),(1082,1010,'FARIDAH BINTI FADZLULLAH','ummuaisyma@gmail.com','default.jpg','$2y$10$vJ5JpXWG4Ws1OM3UIEPkgeCFeYwtWu0cmhdSN20MY8HVa2zkgO.G2','registered',1,'2017-11-22 15:47:26','2017-11-22 15:47:26','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','EXECUTIVE','$3001-$5000','195797582','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'FARIDAH','BINTI FADZLULLAH',NULL),(1083,1010,'FARSHIMA BINTI KHALID','farshima.khalid@gmail.com','default.jpg','$2y$10$lBUF4CgyAUyiSlCJ8Xd/C.SSsXcGQSUWKWbXOw997QCyfqG4DC3Ni','registered',1,'2017-11-22 15:47:26','2017-11-22 15:47:26','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','CEO','$5000 and above','1124337024','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'FARSHIMA','BINTI KHALID',NULL),(1084,1010,'FATIN ZAWANI BT ZAINAL AZAIM','fzawani@gmail.com','default.jpg','$2y$10$tMlPxZZ0d9IZeNv/qvK7kOPWOYFghYcq1R54vCxv0zBz/Wu1WaVBO','registered',1,'2017-11-22 15:47:26','2017-11-22 15:47:26','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','LECTURER','$3001-$5000','60192686859','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'FATIN','ZAWANI BT ZAINAL AZAIM',NULL),(1085,1010,'FAZLI BIN SHANI','fazli.shani@ansell.com','default.jpg','$2y$10$Ve89pNle64LY89GREOBtLOm7b.ceHUDQ53V2XkwZXtbJkmHma2/Mq','registered',1,'2017-11-22 15:47:26','2017-11-22 15:47:26','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','CHEMIST','$5000 and above','192661811','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'FAZLI','BIN SHANI',NULL),(1086,1010,'FAZRIZA CHE ZAINULDIN ','combifz@yahoo.com','default.jpg','$2y$10$Jjp96Tlx.acwQ9M10L2eVeBrZBOh6mSmnmw0652btYNVtyjs3gqky','registered',1,'2017-11-22 15:47:26','2017-11-22 15:47:26','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','HOTEL MANAGER','$5000 and above','123285895','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'FAZRIZA','CHE ZAINULDIN ',NULL),(1087,1010,'FEEZA DIANNA BINTI MOHD IDRIS','feeza_dianna@yahoo.com','default.jpg','$2y$10$iJn6A69rAhpkcGeJkPVIpuzwe2JvuaJZgxWN39dQmguBFlBPKyxlq','registered',1,'2017-11-22 15:47:26','2017-11-22 15:47:26','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','Operations Manager','$3001-$5000','193591192','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'FEEZA','DIANNA BINTI MOHD IDRIS',NULL),(1088,1010,'HAFIZA BINTI YAHYA','hafizayahya83@gmail.com','default.jpg','$2y$10$czHxG6pGwTIPTubgOuKp3.Lrabor8LZxhZfrjcC0t5SnzXIdbpO72','registered',1,'2017-11-22 15:47:26','2017-11-22 15:47:26','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','Research Officer','$5000 and above','104051092','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'HAFIZA','BINTI YAHYA',NULL),(1089,1010,'HAFIZI@MUHAMMAD HAFIZI BIN MOHD ZAKI','dab_4256@yahoo.com','default.jpg','$2y$10$.jcstJ2DUukAc0Kb3du0r.aoePGl8Fe7QQKiLn67ZnSTlyusHC64K','registered',1,'2017-11-22 15:47:26','2017-11-22 15:47:26','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','Teacher','$3001-$5000','199976515','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'HAFIZI@MUHAMMAD','HAFIZI BIN MOHD ZAKI',NULL),(1090,1010,'HALIMI SAIDI','emisaidi@gmail.com','default.jpg','$2y$10$HVKT1ZFQnb9u1yNSdUZPsu1E.YtMd.YYy5NpTb5ov6A7a5Xh8Wrh.','registered',1,'2017-11-22 15:47:26','2017-11-22 15:47:26','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','Multimedia Designer','$5000 and above','178850174','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'HALIMI','SAIDI',NULL),(1091,1010,'HANI SORAYA BINTI ABDUL HALIM','hanny_pearl@yahoo.com','default.jpg','$2y$10$JtKnqTYH.BzODgzyif65m.II9V1mLrYG5lZFoN.yv/9dlzyDit3Xy','registered',1,'2017-11-22 15:47:26','2017-11-22 15:47:26','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','Technician','Below $1000','132486112','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'HANI','SORAYA BINTI ABDUL HALIM',NULL),(1092,1010,'HAPIZUL B LAHAM','hapizullaham@yahoo.com','default.jpg','$2y$10$oMagmFmSVNZZ7zdzhOjpoOVuvHbpX1PrmLz9ayuAQVB3LWwInoM3e','registered',1,'2017-11-22 15:47:26','2017-11-22 15:47:26','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','Businessman','Below $1000','133669679','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'HAPIZUL','B LAHAM',NULL),(1093,1010,'HAZIMAH BT YUSSOF','hazimahyussof@gmail.com','default.jpg','$2y$10$JM2CctGtbLOF2h1Eh9AUt.bu0AS89DuodyDzRBbmsjx.VxUy/n66q','registered',1,'2017-11-22 15:47:27','2017-11-22 15:47:27','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','-','Below $1000','133333420','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'HAZIMAH','BT YUSSOF',NULL),(1094,1010,'HAZLINA BINTI IURAT','azieye84@yahoo.com','default.jpg','$2y$10$gy8lTZXvad3qIa4qvfjg8O3d12DpeRjmdOcKr623o7isFpz88OmtC','registered',1,'2017-11-22 15:47:27','2017-11-22 15:47:27','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','lecturer','$5000 and above','197576126','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'HAZLINA','BINTI IURAT',NULL),(1095,1010,'HELMY HAZMI','helhaz@gmail.com','default.jpg','$2y$10$8o8Dd0tE7H7L.oddcuqdxeLDG5gUVwi5wtjXqWiX.3m0ijlKGvq2i','registered',1,'2017-11-22 15:47:27','2017-11-22 15:47:27','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','lecturer','$3001-$5000','60198787234','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'HELMY','HAZMI',NULL),(1096,1010,'HILMY DARMIN BIN AB.RAHMAN','hilmydarmin@gmail.com','default.jpg','$2y$10$A9Pe.XKOQ9N0BK8i3IRCOudR9hHEbGZRLcH2fJU5hrN7diOw8uuXu','registered',1,'2017-11-22 15:47:27','2017-11-22 15:47:27','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','Assistant Director','$5000 and above','60133474007','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'HILMY','DARMIN BIN AB.RAHMAN',NULL),(1097,1010,'ILMI SHUKRI BINTI KHODORI','ilmishukri@gmail.com','default.jpg','$2y$10$lwsn8SjLzn4yXo6AyhAfD.9XqnYFuxXtMmqR5aSyvbGW9ca4zECcq','registered',1,'2017-11-22 15:47:27','2017-11-22 15:47:27','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','BUSINESS MAN','$3001-$5000','60123713424','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'ILMI','SHUKRI BINTI KHODORI',NULL),(1098,1010,'INTAN NURBAIZURA ZAINUDDIN','intanurbyzura@gmail.com','default.jpg','$2y$10$b5WACsw7a1mrQYBrbBKEO.bogcx0BRjSsTjnea4ckqsOdypLmPLqq','registered',1,'2017-11-22 15:47:27','2017-11-22 15:47:27','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','Librarian','$3001-$5000','136666245','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'INTAN','NURBAIZURA ZAINUDDIN',NULL),(1099,1010,'INTAN ROHANI BINTI YUSUF @ YUSOF','hannylynn77@gmail.com','default.jpg','$2y$10$BFAtJDQJC7MshnIel96uEOTBOLLh21fbY5f.5IPpfB4HU/a62Equ.','registered',1,'2017-11-22 15:47:27','2017-11-22 15:47:27','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','PENSIONER','Below $1000','123382012','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'INTAN','ROHANI BINTI YUSUF @ YUSOF',NULL),(1100,1010,'ISMAZOOR BIN ISMAIL','zorro@synergyslink.com','default.jpg','$2y$10$Gau1XEV.lfD3pD0rV6KnNuXAcK1aIqw.UQliu8/xojHNWT1RS65Pu','registered',1,'2017-11-22 15:47:27','2017-11-22 15:47:27','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','WORKSHOP MANAGER','$3001-$5000','193865484','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'ISMAZOOR','BIN ISMAIL',NULL),(1101,1010,'IZLIANA BINTI IBRAHIM','Lyana1212@gmail.com','default.jpg','$2y$10$0y6ctgob5602NKLcpsRa0Ob/ioO1lodspQicfG5BN5mBCJvN7zfNy','registered',1,'2017-11-22 15:47:27','2017-11-22 15:47:27','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','Senior Executive','Below $1000','129303342','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'IZLIANA','BINTI IBRAHIM',NULL),(1102,1010,'JAMAIDAH BT JAMOREK  @ JAMHURI','jamaidah_jamhuri@yahoo.com','default.jpg','$2y$10$ts1RNXXjFo9tJwdgRv7drugQ22kiGE0h/6LXEPI3Bh4nq/IZfomAS','registered',1,'2017-11-22 15:47:27','2017-11-22 15:47:27','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','DENTIST','$5000 and above','129629913','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'JAMAIDAH','BT JAMOREK  @ JAMHURI',NULL),(1103,1010,'JASEER','kjaseer@gmail.com','default.jpg','$2y$10$8VIFPa2CWuUxykJNXCgeYuHfz/yC4ewijHCEQxnJokeYYdL8Kq7Yq','registered',1,'2017-11-22 15:47:27','2017-11-22 15:47:27','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','IT','$5000 and above','129129769','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'JASEER','',NULL),(1104,1010,'KAMAL','rafeah_tumian@yahoo.com','default.jpg','$2y$10$tvpyyxxIE3.NQ5qhcDVgGe0aWlgZmm3rLX5dqhY.l8ZZCNE/sdCmK','registered',1,'2017-11-22 15:47:27','2017-11-22 15:47:27','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','Tourism Officer','$3001-$5000','193304078','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'KAMAL','',NULL),(1105,1010,'KAMARIAH MOHD ARSHAD','kamariaha@technip.com','default.jpg','$2y$10$0z8pWN/a1Etz.RhcdmzW/e2NPL4XWPBeuCW1CYgJqqPc25UpihNIm','registered',1,'2017-11-22 15:47:27','2017-11-22 15:47:27','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','Executive','$5000 and above','123653019','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'KAMARIAH','MOHD ARSHAD',NULL),(1106,1010,'KAMILIA ELNNIE BT BELDAN','misszell@yahoo.com.sg','default.jpg','$2y$10$VXJ8sYYS0gaJwCudsbJHwuxRU6wgB4T1LiCPBHEgzAa3l1hS6zYkS','registered',1,'2017-11-22 15:47:27','2017-11-22 15:47:27','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','Communications and Planning Manager','$5000 and above','166788856','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'KAMILIA','ELNNIE BT BELDAN',NULL),(1107,1010,'KARTINI BINTI ISMAIL','Mail.tini@yahoo.com','default.jpg','$2y$10$K6zI3XptTcakSepD8TLxzeycW.ab.GeRRBgahiQP6n2qs2rmJiwZK','registered',1,'2017-11-22 15:47:27','2017-11-22 15:47:27','5454',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'1970-01-01','male','Engineer','$5000 and above','123701549','3',1,50,'1000-01-01','2060-01-01','',0,0,'0','','1','0','',0,0,'KARTINI','BINTI ISMAIL',NULL),(1108,0,'arnida rahman','arnida@amilin.tv','default.jpg','$2y$10$iLP8v0nZP2Al52KiKn5yIuhcbtMYnv39L/bPnQC5HZWwXjjtFqjve','registered',1,'2017-11-23 00:49:23','2017-11-23 00:49:23',NULL,'Xmk4WZK1t6oMHqlsfhlE8PO6W4hUkbvRyEEudoHAk8m0Y0xhfMMXiWw8iwHw',1,NULL,NULL,NULL,NULL,NULL,NULL,1,'2017-11-05','male','Manager','Below $1000','12345678','3',0,50,'2017-11-23','2017-11-23','',0,0,'','','1','0','0',0,0,'arnida','rahman',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video_categories`
--

DROP TABLE IF EXISTS `video_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` int(111) NOT NULL,
  `image` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_categories`
--

LOCK TABLES `video_categories` WRITE;
/*!40000 ALTER TABLE `video_categories` DISABLE KEYS */;
INSERT INTO `video_categories` VALUES (14,NULL,10,'Animation','Brainy Bunch Animation','2015-01-30 15:34:50','2017-07-28 16:57:18',0,NULL),(15,NULL,4,'Trending Video','Trending Video','2015-02-04 13:16:23','2017-01-28 06:10:44',0,NULL),(17,NULL,6,'Brainy News ','Brainy News','2015-02-04 13:21:14','2017-01-28 06:12:35',0,NULL),(24,NULL,12,'Talk Shows','Talk Show','2017-01-23 06:01:32','2017-07-28 16:52:33',0,NULL),(25,NULL,13,'Movies','','2017-07-28 16:51:50','2017-07-28 16:51:50',0,NULL),(26,NULL,14,'Dramas','','2017-07-28 16:52:03','2017-07-28 16:52:03',0,NULL),(27,NULL,15,'Documentaries','','2017-07-28 16:52:12','2017-07-28 16:52:12',0,NULL),(28,NULL,16,'Talk Show','','2017-07-28 16:52:25','2017-07-28 16:52:25',0,NULL),(29,NULL,17,'Short Movies','','2017-07-28 16:52:47','2017-07-28 16:52:47',0,NULL),(30,NULL,18,'Entertainment','','2017-07-28 16:53:01','2017-07-28 16:53:01',0,NULL),(31,NULL,19,'Education','','2017-07-28 16:53:13','2017-07-28 16:53:13',0,NULL);
/*!40000 ALTER TABLE `video_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video_monthly_views`
--

DROP TABLE IF EXISTS `video_monthly_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video_monthly_views` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `video_id` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `month_view` int(11) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1=Active,0=Inactive',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_monthly_views`
--

LOCK TABLES `video_monthly_views` WRITE;
/*!40000 ALTER TABLE `video_monthly_views` DISABLE KEYS */;
INSERT INTO `video_monthly_views` VALUES (1,182,10,2017,41,1,'2017-11-01 19:21:15','2017-11-01 19:21:15'),(2,183,10,2017,143,1,'2017-11-01 19:21:17','2017-11-01 19:21:17'),(3,184,10,2017,66,1,'2017-11-01 19:21:18','2017-11-01 19:21:18'),(4,185,10,2017,90,1,'2017-11-01 19:21:20','2017-11-01 19:21:20'),(5,186,10,2017,47,1,'2017-11-01 19:21:21','2017-11-01 19:21:21'),(6,187,10,2017,9,1,'2017-11-01 19:21:23','2017-11-01 19:21:23'),(7,188,10,2017,7,1,'2017-11-01 19:21:24','2017-11-01 19:21:24'),(8,189,10,2017,12,1,'2017-11-01 19:21:26','2017-11-01 19:21:26'),(9,191,10,2017,53,1,'2017-11-01 19:21:27','2017-11-01 19:21:27'),(10,254,10,2017,32,1,'2017-11-01 19:21:29','2017-11-01 19:21:29'),(11,190,10,2017,12,1,'2017-11-01 19:21:32','2017-11-01 19:21:32'),(12,261,10,2017,2,1,'2017-11-01 19:21:33','2017-11-01 19:21:33'),(13,260,10,2017,0,1,'2017-11-01 19:21:34','2017-11-01 19:21:34'),(14,182,11,2017,0,1,'2017-11-01 19:23:03','2017-11-01 19:23:03'),(15,183,11,2017,0,1,'2017-11-01 19:23:05','2017-11-01 19:23:05'),(16,184,11,2017,0,1,'2017-11-01 19:23:06','2017-11-01 19:23:06'),(17,185,11,2017,0,1,'2017-11-01 19:23:08','2017-11-01 19:23:08'),(18,186,11,2017,0,1,'2017-11-01 19:23:09','2017-11-01 19:23:09'),(19,187,11,2017,0,1,'2017-11-01 19:23:11','2017-11-01 19:23:11'),(20,188,11,2017,0,1,'2017-11-01 19:23:12','2017-11-01 19:23:12'),(21,189,11,2017,0,1,'2017-11-01 19:23:14','2017-11-01 19:23:14'),(22,191,11,2017,0,1,'2017-11-01 19:23:15','2017-11-01 19:23:15'),(23,254,11,2017,0,1,'2017-11-01 19:23:17','2017-11-01 19:23:17'),(24,190,11,2017,0,1,'2017-11-01 19:23:20','2017-11-01 19:23:20'),(25,261,11,2017,0,1,'2017-11-01 19:23:21','2017-11-01 19:23:21');
/*!40000 ALTER TABLE `video_monthly_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `videos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `video_category_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `type` varchar(225) DEFAULT NULL,
  `access` varchar(20) NOT NULL DEFAULT 'guest',
  `details` text,
  `description` text,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `duration` int(11) DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) DEFAULT NULL,
  `embed_code` text,
  `mp4_url` varchar(255) DEFAULT NULL,
  `webm_url` varchar(255) DEFAULT NULL,
  `ogg_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `price` varchar(50) DEFAULT NULL,
  `validate1` varchar(300) DEFAULT NULL,
  `trailor_embed_code` text,
  `live` varchar(300) DEFAULT NULL,
  `ads` varchar(500) DEFAULT NULL,
  `ads_link` varchar(500) DEFAULT NULL,
  `delbycontri` int(111) DEFAULT NULL,
  `ass` int(111) DEFAULT NULL,
  `type1` int(111) DEFAULT NULL,
  `subtitle` text,
  `bannerImg` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=279 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos`
--

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
INSERT INTO `videos` VALUES (270,187,14,'Test Free Registration Video','embed','registered','','Test Description',1,1,10,14,'November2017/free-reg.jpg','fozo73uppt','',NULL,NULL,'2017-11-13 09:27:21','2017-11-13 09:27:21','0','0','','live','','',1,1,0,'','free-reg.jpg'),(271,187,14,'Subscriber Video','embed','subscriber','',NULL,1,1,10,15,'November2017/5a13794a0bffe-paid-subs.jpg','nk5xfuutrc','',NULL,NULL,'2017-11-21 00:54:34','2017-11-21 00:54:34','0','0','','live','','',1,1,0,'','5a13794a8d07f-paid-subs.jpg'),(272,187,14,'Premium VOD','embed','premium','',NULL,1,1,10,11,'November2017/5a1379cd712f3-PREMIUM VOD.jpg','ewtzxl8t6l','',NULL,NULL,'2017-11-21 00:56:45','2017-11-21 00:56:45','1','30','','live','','',1,1,0,'','5a1379cd920ae-PREMIUM VOD.jpg'),(273,187,14,'Free Reg 2','embed','registered','',NULL,1,1,10,0,'November2017/5a137a24dff62-free-reg.jpg','eo436aqq9d','',NULL,NULL,'2017-11-21 00:58:13','2017-11-21 00:58:13','0','0','','live','','',1,1,0,'','5a137a250d0a6-free-reg.jpg'),(274,981,14,'Guest Video  No Reg required','embed','registered','','',1,1,10,3,'November2017/5a137a879f95a-free-reg.jpg','0cb1ots4c0','',NULL,NULL,'2017-11-21 00:59:51','2017-11-21 02:06:47','0','0','','live','','',1,1,0,'','5a137a87c09a2-free-reg.jpg'),(275,209,28,'Education Speech','embed','premium','Education Speech','Education Speech',1,0,NULL,3,'November2017/Screenshot 2017-11-21 at 10.03.23 AM.png','6tg04hgwh6','',NULL,NULL,'2017-11-21 03:46:52','2017-11-21 04:05:32','0','12/12/2012','','live','11',NULL,NULL,NULL,NULL,NULL,NULL),(276,209,28,'Education Speech','embed','premium','<p>Education Speech</p>','Short Description',1,0,270,5,'November2017/Screenshot 2017-11-21 at 11.27.06 AM.png','q5x0b3opfj','',NULL,NULL,'2017-11-21 03:52:06','2017-11-21 04:01:49','sdds','dssd','','live','','',1,1,0,'','Screenshot 2017-11-21 at 11.27.06 AM.png'),(278,187,14,'ketentuan','embed','registered','<p>ketentuan</p>','ketentuan',1,1,810,3,'November2017/5a143108b0d62-free-reg.jpg','x9n58x9wim','',NULL,NULL,'2017-11-21 04:30:16','2017-11-21 13:58:32','0','0','','live','','',1,1,0,'','5a143108d0d78-free-reg.jpg');
/*!40000 ALTER TABLE `videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `views`
--

DROP TABLE IF EXISTS `views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `views` (
  `id` int(111) NOT NULL AUTO_INCREMENT,
  `user_id` int(200) NOT NULL,
  `video_id` int(111) NOT NULL,
  `video_type` varchar(500) NOT NULL,
  `user_email` varchar(500) NOT NULL,
  `views` int(200) NOT NULL,
  `view_date` varchar(500) NOT NULL,
  `year` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=575 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `views`
--

LOCK TABLES `views` WRITE;
/*!40000 ALTER TABLE `views` DISABLE KEYS */;
INSERT INTO `views` VALUES (313,1,119,'registered','niitpuneetkumar@gmail.com',1,'April','2017'),(314,1,135,'subscriber','niitpuneetkumar@gmail.com',1,'April','2017'),(315,1,134,'registered','niitpuneetkumar@gmail.com',1,'April','2017'),(316,51,141,'registered','prashantrocks1990@gmail.com',1,'April','2017'),(317,1,135,'subscriber','arsar.my@gmail.com',1,'April','2017'),(318,51,141,'registered','arsar.my@gmail.com',1,'April','2017'),(319,1,119,'registered','arsar.my@gmail.com',1,'April','2017'),(320,1,116,'registered','arsar.my@gmail.com',1,'April','2017'),(321,1,119,'registered','prashantrocks1990@gmail.com',1,'April','2017'),(322,1,116,'registered','prashantrocks1990@gmail.com',1,'April','2017'),(323,1,134,'registered','prashantrocks1990@gmail.com',1,'April','2017'),(324,1,136,'registered','arsar.my@gmail.com',1,'April','2017'),(325,1,134,'registered','arsar.my@gmail.com',1,'April','2017'),(326,1,143,'registered','arsar.my@gmail.com',1,'April','2017'),(327,1,144,'registered','arsar.my@gmail.com',1,'April','2017'),(328,1,144,'registered','niitpuneetkumar@gmail.com',1,'April','2017'),(329,1,145,'registered','arsar.my@gmail.com',1,'April','2017'),(330,1,145,'premium','prashantrocks1990@gmail.com',1,'April','2017'),(331,1,145,'premium','niitpuneetkumar@gmail.com',1,'April','2017'),(332,1,143,'premium','niitpuneetkumar@gmail.com',1,'April','2017'),(333,1,176,'registered','arsar.my@gmail.com',1,'April','2017'),(334,1,178,'registered','arsar.my@gmail.com',1,'April','2017'),(335,1,177,'registered','arsar.my@gmail.com',1,'April','2017'),(336,1,174,'registered','arsar.my@gmail.com',1,'April','2017'),(337,1,175,'registered','arsar.my@gmail.com',1,'April','2017'),(338,1,118,'registered','arsar.my@gmail.com',1,'April','2017'),(339,1,177,'premium','niitpuneetkumar@gmail.com',1,'April','2017'),(340,1,176,'registered','niitpuneetkumar@gmail.com',1,'April','2017'),(341,1,174,'registered','niitpuneetkumar@gmail.com',1,'April','2017'),(342,1,116,'registered','niitpuneetkumar@gmail.com',1,'April','2017'),(343,1,179,'registered','arsar.my@gmail.com',1,'April','2017'),(344,1,180,'registered','arsar.my@gmail.com',1,'April','2017'),(345,1,179,'premium','niitpuneetkumar@gmail.com',1,'April','2017'),(346,1,180,'registered','niitpuneetkumar@gmail.com',1,'April','2017'),(347,1,176,'registered','genetech786@yahoo.com',1,'April','2017'),(348,1,174,'registered','genetech786@yahoo.com',1,'April','2017'),(349,1,179,'subscriber','kumarmahendra.raj1290@gmail.com',1,'April','2017'),(350,1,179,'subscriber','prashantrocks1990@gmail.com',1,'April','2017'),(351,1,180,'premium','prashantrocks1990@gmail.com',1,'April','2017'),(352,1,116,'registered','hailmy@brainybunch.com',1,'April','2017'),(353,1,175,'registered','niitpuneetkumar@gmail.com',1,'April','2017'),(354,187,182,'registered','arsar.my@gmail.com',1,'May','2017'),(355,187,183,'registered','arsar.my@gmail.com',1,'May','2017'),(356,187,186,'registered','arsar.my@gmail.com',1,'May','2017'),(357,187,183,'registered','prashantrocks1990@gmail.com',1,'May','2017'),(358,187,191,'subscriber','niitpuneetkumar@gmail.com',1,'May','2017'),(359,187,185,'registered','prashantrocks1990@gmail.com',1,'May','2017'),(360,187,186,'registered','prashantrocks1990@gmail.com',1,'May','2017'),(361,187,185,'registered','arsar.my@gmail.com',1,'May','2017'),(362,187,187,'subscriber','arsar.my@gmail.com',1,'May','2017'),(363,187,191,'subscriber','arsar.my@gmail.com',1,'May','2017'),(364,187,190,'subscriber','niitpuneetkumar@gmail.com',1,'May','2017'),(365,187,187,'subscriber','niitpuneetkumar@gmail.com',1,'May','2017'),(366,187,188,'subscriber','niitpuneetkumar@gmail.com',1,'May','2017'),(367,187,184,'registered','arsar.my@gmail.com',1,'May','2017'),(368,187,191,'subscriber','arsar@aflix.tv',1,'May','2017'),(369,187,190,'subscriber','arsar.my@gmail.com',1,'May','2017'),(370,187,189,'subscriber','arsar.my@gmail.com',1,'May','2017'),(371,187,188,'subscriber','arsar.my@gmail.com',1,'May','2017'),(372,187,182,'registered','prashantrocks1990@gmail.com',1,'May','2017'),(373,187,189,'subscriber','niitpuneetkumar@gmail.com',1,'June','2017'),(374,187,184,'registered','niitpuneetkumar@gmail.com',1,'June','2017'),(375,187,186,'registered','niitpuneetkumar@gmail.com',1,'June','2017'),(376,187,184,'registered','rohilla22@gmail.com',1,'June','2017'),(377,187,184,'registered','hnsharma91@gmail.com',1,'June','2017'),(378,187,186,'registered','hnsharma91@gmail.com',1,'June','2017'),(379,187,182,'registered','ankit.kaasam@gmail.com',1,'June','2017'),(380,187,183,'registered','niitpuneetkumar@gmail.com',1,'June','2017'),(381,187,183,'registered','abhishekkcp98@gmail.com',1,'June','2017'),(382,187,185,'registered','abhishekkcp98@gmail.com',1,'June','2017'),(383,187,183,'registered','azarul@brainybunch.com',1,'July','2017'),(384,187,184,'registered','azarul@brainybunch.com',1,'July','2017'),(385,187,185,'registered','biz.deftsoft@gmail.com',1,'July','2017'),(386,187,183,'registered','engineer631992@gmail.com',1,'July','2017'),(387,187,183,'registered','developers@arsenaltech.com',1,'July','2017'),(388,187,184,'registered','mark.sh45@gmail.com',1,'July','2017'),(389,187,185,'registered','mark.sh45@gmail.com',1,'July','2017'),(390,187,183,'registered','vadim.saliy@rambler.ru',1,'July','2017'),(391,187,184,'registered','vadim.saliy@rambler.ru',1,'July','2017'),(392,187,185,'registered','azarul@brainybunch.com',1,'July','2017'),(393,187,186,'registered','azarul@brainybunch.com',1,'July','2017'),(394,209,198,'registered','azarul@brainybunch.com',1,'July','2017'),(395,209,198,'registered','arsar.my@gmail.com',1,'July','2017'),(396,187,183,'registered','akma@brainybunch.com',1,'July','2017'),(397,187,184,'registered','prashantrocks1990@gmail.com',1,'July','2017'),(398,209,201,'registered','arsar.my@gmail.com',1,'July','2017'),(399,209,201,'registered','azarul@brainybunch.com',1,'July','2017'),(400,209,201,'registered','abdulqawy91@gmail.com',1,'July','2017'),(401,187,185,'registered','abdulqawy91@gmail.com',1,'July','2017'),(402,249,240,'registered','azarul@brainybunch.com',1,'July','2017'),(403,249,245,'registered','arsar.my@gmail.com',1,'July','2017'),(404,249,246,'registered','arsar.my@gmail.com',1,'July','2017'),(405,249,244,'registered','arsar.my@gmail.com',1,'July','2017'),(406,249,248,'registered','arsar.my@gmail.com',1,'July','2017'),(407,250,234,'registered','azarul@brainybunch.com',1,'July','2017'),(408,187,184,'registered','demo1@gmail.com',1,'July','2017'),(409,250,249,'registered','demo1@gmail.com',1,'July','2017'),(410,209,201,'registered','demo1@gmail.com',1,'July','2017'),(411,249,248,'registered','demo1@gmail.com',1,'July','2017'),(412,250,249,'registered','akma@brainyapps.my',1,'July','2017'),(413,249,209,'subscriber','akma@brainyapps.my',1,'July','2017'),(414,187,183,'registered','mardhiah@brainybunch.com',1,'July','2017'),(415,249,247,'registered','arsar.my@gmail.com',1,'July','2017'),(416,187,184,'registered','akma@brainybunch.com',1,'July','2017'),(417,250,249,'registered','arsar.my@gmail.com',1,'July','2017'),(418,250,249,'registered','mardhiah@brainybunch.com',1,'July','2017'),(419,187,185,'registered','mardhiah@brainybunch.com',1,'July','2017'),(420,249,244,'registered','mardhiah@brainybunch.com',1,'July','2017'),(421,249,209,'subscriber','mardhiah@brainybunch.com',1,'July','2017'),(422,249,211,'registered','arsar.my@gmail.com',1,'July','2017'),(423,249,236,'registered','azrieadman@gmail.com',1,'July','2017'),(424,249,248,'registered','mardhiah@brainybunch.com',1,'July','2017'),(425,249,236,'registered','mardhiah@brainybunch.com',1,'July','2017'),(426,249,214,'registered','mardhiah@brainybunch.com',1,'July','2017'),(427,249,243,'registered','mardhiah@brainybunch.com',1,'July','2017'),(428,250,228,'registered','mardhiah@brainybunch.com',1,'July','2017'),(429,250,237,'registered','mardhiah@brainybunch.com',1,'July','2017'),(430,249,232,'registered','aaa@gmail.com',1,'July','2017'),(431,249,230,'registered','mardhiah@brainybunch.com',1,'July','2017'),(432,249,246,'registered','mardhiah@brainybunch.com',1,'July','2017'),(433,187,186,'registered','hafimir@gmail.com',1,'July','2017'),(434,187,183,'registered','dluzarnain@live.com',1,'July','2017'),(435,249,246,'registered','rdnventures@gmail.com',1,'July','2017'),(436,250,249,'registered','ezzieyana@gmail.com',1,'July','2017'),(437,249,240,'registered','along_nrl@yahoo.com',1,'July','2017'),(438,249,236,'registered','nurulhaziana_77@yahoocom',1,'July','2017'),(439,249,248,'registered','norman@brainybunch.com',1,'July','2017'),(440,187,183,'registered','ikhwan.isarch@gmail.com',1,'July','2017'),(441,249,246,'registered','norman@brainybunch.com',1,'July','2017'),(442,249,242,'registered','yuhanislaily@yahoo.com',1,'July','2017'),(443,249,245,'registered','faizkamal7@gmail.com',1,'July','2017'),(444,249,247,'registered','rezafahmisaleh@gmail.com',1,'July','2017'),(445,187,185,'registered','rezafahmisaleh@gmail.com',1,'July','2017'),(446,187,184,'registered','rezafahmisaleh@gmail.com',1,'July','2017'),(447,249,212,'subscriber','arsar.my@gmail.com',1,'July','2017'),(448,249,247,'registered','norman@brainybunch.com',1,'July','2017'),(449,249,230,'registered','norman@brainybunch.com',1,'July','2017'),(450,187,184,'registered','ikhwan.isarch@gmail.com',1,'July','2017'),(451,187,185,'registered','ikhwan.isarch@gmail.com',1,'July','2017'),(452,187,186,'registered','ikhwan.isarch@gmail.com',1,'July','2017'),(453,249,211,'registered','ikhwan.isarch@gmail.com',1,'July','2017'),(454,249,247,'registered','ikhwan.isarch@gmail.com',1,'July','2017'),(455,249,211,'registered','faizkamal7@gmail.com',1,'July','2017'),(456,209,201,'registered','syaraff@raudhahcity.com',1,'July','2017'),(457,249,209,'subscriber','arsar.my@gmail.com',1,'August','2017'),(458,85,253,'subscriber','arsar.my@gmail.com',1,'August','2017'),(459,1,251,'registered','arsar.my@gmail.com',1,'August','2017'),(460,187,185,'registered','arsar@globalmaxlink.net',1,'August','2017'),(461,187,255,'registered','arsar.my@gmail.com',1,'August','2017'),(462,961,258,'subscriber','arsar.my@gmail.com',1,'August','2017'),(463,187,183,'registered','trupti.iqra@gmail.com',1,'August','2017'),(464,961,256,'subscriber','arsar.my@gmail.com',1,'August','2017'),(465,85,252,'subscriber','arsar.my@gmail.com',1,'August','2017'),(466,187,254,'registered','arsar.my@gmail.com',1,'August','2017'),(467,249,217,'registered','arsar.my@gmail.com',1,'August','2017'),(468,187,259,'subscriber','arsar.my@gmail.com',1,'October','2017'),(469,187,184,'registered','falacy123456789@gmail.com',1,'October','2017'),(470,187,186,'registered','azarul@brainyapps.my',1,'October','2017'),(471,187,184,'registered','azarul@brainyapps.my',1,'October','2017'),(472,187,183,'registered','azarul@brainyapps.my',1,'October','2017'),(473,187,182,'registered','azarul@brainyapps.my',1,'October','2017'),(474,981,190,'subscriber','azarul@brainyapps.my',1,'October','2017'),(475,989,260,'registered','aastha.snv@gmail.com',1,'October','2017'),(476,985,261,'registered','arsar@amilin.tv',1,'October','2017'),(477,187,183,'registered','arsar@amilin.tv',1,'October','2017'),(478,985,261,'registered','arsar.my@gmail.com',1,'October','2017'),(479,187,184,'registered','arsar@amilin.tv',1,'November','2017'),(480,985,262,'guest','arsar@amilin.tv',1,'November','2017'),(481,985,263,'guest','arsar@amilin.tv',1,'November','2017'),(482,985,264,'guest','arsar@amilin.tv',1,'November','2017'),(483,985,264,'guest','arsar@amilin.tv',1,'November','2017'),(484,985,264,'guest','arsar@amilin.tv',1,'November','2017'),(485,985,265,'guest','arsar@amilin.tv',1,'November','2017'),(486,985,265,'guest','arsar@amilin.tv',1,'November','2017'),(487,985,265,'guest','arsar@amilin.tv',1,'November','2017'),(488,985,264,'guest','arsar@amilin.tv',1,'November','2017'),(489,985,265,'guest','arsar@amilin.tv',1,'November','2017'),(490,985,265,'guest','arsar@amilin.tv',1,'November','2017'),(491,1,265,'guest','arsar.my@gmail.com',1,'November','2017'),(492,1,265,'guest','arsar.my@gmail.com',1,'November','2017'),(493,985,265,'guest','arsar@amilin.tv',1,'November','2017'),(494,985,262,'guest','arsar@amilin.tv',1,'November','2017'),(495,985,263,'guest','arsar@amilin.tv',1,'November','2017'),(496,985,264,'guest','arsar@amilin.tv',1,'November','2017'),(497,985,266,'guest','arsar@amilin.tv',1,'November','2017'),(498,1,265,'guest','arsar.my@gmail.com',1,'November','2017'),(499,985,268,'guest','arsar@amilin.tv',1,'November','2017'),(500,985,268,'guest','arsar@amilin.tv',1,'November','2017'),(501,985,268,'guest','arsar@amilin.tv',1,'November','2017'),(502,985,269,'guest','arsar@amilin.tv',1,'November','2017'),(503,985,268,'guest','arsar@amilin.tv',1,'November','2017'),(504,985,268,'guest','arsar@amilin.tv',1,'November','2017'),(505,1,268,'guest','arsar.my@gmail.com',1,'November','2017'),(506,985,269,'guest','arsar@amilin.tv',1,'November','2017'),(507,985,268,'guest','arsar@amilin.tv',1,'November','2017'),(508,985,256,'subscriber','arsar@amilin.tv',1,'November','2017'),(509,985,253,'subscriber','arsar@amilin.tv',1,'November','2017'),(510,985,187,'subscriber','arsar@amilin.tv',1,'November','2017'),(511,985,187,'subscriber','arsar@amilin.tv',1,'November','2017'),(512,985,183,'registered','arsar@amilin.tv',1,'November','2017'),(513,985,183,'registered','arsar@amilin.tv',1,'November','2017'),(514,985,271,'guest','arsar@amilin.tv',1,'November','2017'),(515,1,269,'guest','arsar.my@gmail.com',1,'November','2017'),(516,985,269,'guest','arsar@amilin.tv',1,'November','2017'),(517,985,269,'guest','arsar@amilin.tv',1,'November','2017'),(518,1,269,'guest','arsar.my@gmail.com',1,'November','2017'),(519,1,259,'subscriber','arsar.my@gmail.com',1,'November','2017'),(520,1,259,'subscriber','arsar.my@gmail.com',1,'November','2017'),(521,1,183,'registered','arsar.my@gmail.com',1,'November','2017'),(522,1,254,'premium','arsar.my@gmail.com',1,'November','2017'),(523,1,270,'registered','arsar.my@gmail.com',1,'November','2017'),(524,1,270,'registered','arsar.my@gmail.com',1,'November','2017'),(525,985,270,'registered','arsar@amilin.tv',1,'November','2017'),(526,1,270,'registered','arsar.my@gmail.com',1,'November','2017'),(527,1,270,'registered','arsar.my@gmail.com',1,'November','2017'),(528,1002,270,'registered','customer03@gmail.com',1,'November','2017'),(529,1,270,'registered','arsar.my@gmail.com',1,'November','2017'),(530,1,271,'subscriber','arsar.my@gmail.com',1,'November','2017'),(531,1,272,'premium','arsar.my@gmail.com',1,'November','2017'),(532,1,270,'registered','arsar.my@gmail.com',1,'November','2017'),(533,1007,271,'subscriber','syaifulnaim@gmail.com',1,'November','2017'),(534,1007,270,'registered','syaifulnaim@gmail.com',1,'November','2017'),(535,1007,270,'registered','syaifulnaim@gmail.com',1,'November','2017'),(536,1,272,'premium','arsar.my@gmail.com',1,'November','2017'),(537,1008,270,'registered','syaifulnaim@gmail.com',1,'November','2017'),(538,1008,271,'subscriber','syaifulnaim@gmail.com',1,'November','2017'),(539,1008,272,'premium','syaifulnaim@gmail.com',1,'November','2017'),(540,1008,271,'subscriber','syaifulnaim@gmail.com',1,'November','2017'),(541,1008,270,'registered','syaifulnaim@gmail.com',1,'November','2017'),(542,1008,272,'premium','syaifulnaim@gmail.com',1,'November','2017'),(543,1008,271,'subscriber','syaifulnaim@gmail.com',1,'November','2017'),(544,1,271,'subscriber','arsar.my@gmail.com',1,'November','2017'),(545,1008,270,'registered','syaifulnaim@gmail.com',1,'November','2017'),(546,1008,271,'subscriber','syaifulnaim@gmail.com',1,'November','2017'),(547,1008,272,'premium','syaifulnaim@gmail.com',1,'November','2017'),(548,1008,271,'subscriber','syaifulnaim@gmail.com',1,'November','2017'),(549,209,276,'premium','azarul@brainybunch.com',1,'November','2017'),(550,209,275,'premium','azarul@brainybunch.com',1,'November','2017'),(551,209,276,'premium','azarul@brainybunch.com',1,'November','2017'),(552,1,276,'premium','arsar.my@gmail.com',1,'November','2017'),(553,209,276,'premium','azarul@brainybunch.com',1,'November','2017'),(554,209,275,'premium','azarul@brainybunch.com',1,'November','2017'),(555,1,275,'premium','arsar.my@gmail.com',1,'November','2017'),(556,1008,272,'premium','syaifulnaim@gmail.com',1,'November','2017'),(557,1008,271,'subscriber','syaifulnaim@gmail.com',1,'November','2017'),(558,1,278,'registered','arsar.my@gmail.com',1,'November','2017'),(559,1009,270,'registered','syaiful@amilin.tv',1,'November','2017'),(560,1009,278,'registered','syaiful@amilin.tv',1,'November','2017'),(561,1009,274,'registered','syaiful@amilin.tv',1,'November','2017'),(562,1009,271,'subscriber','syaiful@amilin.tv',1,'November','2017'),(563,209,272,'premium','azarul@brainybunch.com',1,'November','2017'),(564,209,271,'subscriber','azarul@brainybunch.com',1,'November','2017'),(565,209,271,'subscriber','azarul@brainybunch.com',1,'November','2017'),(566,1009,271,'subscriber','syaiful@amilin.tv',1,'November','2017'),(567,1,276,'premium','arsar.my@gmail.com',1,'November','2017'),(568,1,271,'subscriber','arsar.my@gmail.com',1,'November','2017'),(569,1,278,'registered','arsar.my@gmail.com',1,'November','2017'),(570,1,271,'subscriber','arsar.my@gmail.com',1,'November','2017'),(571,985,272,'premium','arsar@amilin.tv',1,'November','2017'),(572,1,272,'premium','arsar.my@gmail.com',1,'November','2017'),(573,985,272,'premium','arsar@amilin.tv',1,'November','2017'),(574,1,272,'premium','arsar.my@gmail.com',1,'November','2017');
/*!40000 ALTER TABLE `views` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-23  6:19:50
