-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: blog
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

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
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'javascript this','函数调用位置决定this绑定\r\n','2018-01-04 09:14:17'),(2,'javascript prototype','原型，原型链','2018-01-04 09:16:11'),(3,'java','java开发','2018-01-04 09:17:09'),(4,'测试文章','this is a test post!','2018-01-05 08:59:48'),(5,'funny','f u n n y,funny!','2018-01-05 09:00:20'),(6,'funny','f u n n y , funny!','2018-01-05 09:00:47'),(7,'天气','weather','2018-01-05 09:01:04'),(8,'武器','wappen','2018-01-05 09:01:33'),(9,'123','都是发大水发大水发生的','2018-01-05 09:01:51'),(10,'Develop','this is a song!\r\n','2018-01-06 03:51:32'),(11,'复仇者联盟','漫威 Marvel','2018-01-06 03:52:00'),(12,'今天下雨','今天下雨，大雾','2018-01-08 02:11:28'),(13,'下班文章','临下班前的测试文章','2018-01-08 10:16:15'),(14,'7~8','今天有点冷','2018-01-09 03:24:03'),(15,'转暖','气温稍微上升','2018-01-10 07:58:00'),(16,'今天天晴','今天天气转晴，但还是冷','2018-01-11 10:12:41'),(17,'Yan can','if Yan can cook, so you can.','2018-01-11 10:13:54'),(18,'Yan Can','If Yan can cook, so you can.','2018-01-11 10:14:18'),(19,'回暖','天气开始回暖，空气污染也加重。','2018-01-15 02:37:08'),(20,'回暖','温度开始回暖，空气污染开始加重。','2018-01-15 02:37:40'),(21,'下班','下班走人','2018-01-15 10:28:35'),(22,'中午好困','中午吃太饱，好困！','2018-01-16 07:54:22'),(23,'午饭很饱','午饭吃米粉','2018-01-17 10:21:07'),(24,'今天很暖','几天穿2件衣服就好，哈哈！','2018-01-18 08:14:02'),(25,'星期五打酱油','打酱油，修改一次！','2018-01-19 07:01:02'),(26,'有点感冒','昨晚火锅，今天好像有点感冒，头痛','2018-01-22 06:35:13'),(27,'严重的雾霾','今天空气污染非常严重，能见度好低','2018-01-23 03:06:38'),(28,'春节过后第一天上班','春节过后第一天上班，走了好几位员工','2018-02-26 03:29:03'),(32,'备份','今天备份一下数据','2018-02-27 02:30:19');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-27 10:32:46
