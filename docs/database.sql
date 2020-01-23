CREATE DATABASE  IF NOT EXISTS `test_node` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `test_node`;
-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: test_node
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `rate` float DEFAULT NULL,
  `credits` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'Computer architecture','Tech & support',22.35,4,1,'http://localhost:8000/images/arch.jpg','2020-01-23 06:13:30','2020-01-23 06:13:30'),(2,'Coffe time','Justin Mann Consulting',0,3,1,'http://localhost:8000/images/coffe.jpg','2020-01-23 06:18:25','2020-01-23 06:18:25'),(3,'Learn Finance','United banks',15.99,4,2,'http://localhost:8000/images/finance.jpg','2020-01-23 06:20:48','2020-01-23 06:20:48'),(4,'Guitar lessons','Music school',9.99,3.5,3,'http://localhost:8000/images/guitar.jpg','2020-01-23 06:24:08','2020-01-23 06:24:08'),(5,'Good care','Balance education',12.99,4,1,'http://localhost:8000/images/health.jpg','2020-01-23 06:25:28','2020-01-23 06:25:28'),(6,'Java EE','Java company',15.5,4,2,'http://localhost:8000/images/java.jpg','2020-01-23 06:26:07','2020-01-23 06:26:07'),(7,'Learn JavaScript','Experts developers',9.99,4.5,3,'http://localhost:8000/images/javascript.jpg','2020-01-23 06:27:25','2020-01-23 06:27:25'),(8,'Mobile development','Experts developers',0,4,1,'http://localhost:8000/images/mobile.jpg','2020-01-23 06:28:07','2020-01-23 06:28:07'),(9,'How to make a good picture','Cinema guys',29.99,5,2,'http://localhost:8000/images/photo.jpg','2020-01-23 06:29:24','2020-01-23 06:29:24'),(10,'Python course','Experts developers',15.99,5,3,'http://localhost:8000/images/python.jpg','2020-01-23 07:01:54','2020-01-23 07:01:54'),(11,'10 reasons why working in a team is important','Balance education',0,4.5,1,'http://localhost:8000/images/teamwork.jpg','2020-01-23 07:03:18','2020-01-23 07:03:18'),(12,'Piano lessons','Music school',9.99,4,2,'http://localhost:8000/images/piano.jpg','2020-01-23 07:03:51','2020-01-23 07:03:51'),(13,'Test1','A test',9.99,4,2,'http://localhost:8000/images/arch.jpg','2020-01-23 17:39:31','2020-01-23 17:39:31'),(14,'Test2','A test',9.99,4,2,'http://localhost:8000/images/arch.jpg','2020-01-23 17:39:35','2020-01-23 17:39:35'),(15,'Test3','A test',9.99,4,2,'http://localhost:8000/images/arch.jpg','2020-01-23 17:39:38','2020-01-23 17:39:38'),(16,'Test4','A test',9.99,4,2,'http://localhost:8000/images/arch.jpg','2020-01-23 17:39:40','2020-01-23 17:39:40'),(17,'Test5','A test',9.99,4,2,'http://localhost:8000/images/arch.jpg','2020-01-23 17:39:43','2020-01-23 17:39:43'),(18,'Test1','A test',9.99,4,2,'http://localhost:8000/images/coffe.jpg','2020-01-23 17:39:49','2020-01-23 17:39:49'),(19,'Test2','A test',9.99,4,2,'http://localhost:8000/images/coffe.jpg','2020-01-23 17:39:51','2020-01-23 17:39:51'),(20,'Test3','A test',9.99,4,2,'http://localhost:8000/images/coffe.jpg','2020-01-23 17:39:53','2020-01-23 17:39:53'),(21,'Test4','A test',9.99,4,2,'http://localhost:8000/images/coffe.jpg','2020-01-23 17:39:56','2020-01-23 17:39:56'),(22,'Test5','A test',9.99,4,2,'http://localhost:8000/images/coffe.jpg','2020-01-23 17:39:59','2020-01-23 17:39:59'),(23,'Test1','A test',9.99,4,2,'http://localhost:8000/images/finance.jpg','2020-01-23 17:40:05','2020-01-23 17:40:05'),(24,'Test2','A test',9.99,4,2,'http://localhost:8000/images/finance.jpg','2020-01-23 17:40:07','2020-01-23 17:40:07'),(25,'Test3','A test',9.99,4,2,'http://localhost:8000/images/finance.jpg','2020-01-23 17:40:09','2020-01-23 17:40:09'),(26,'Test4','A test',9.99,4,2,'http://localhost:8000/images/finance.jpg','2020-01-23 17:40:13','2020-01-23 17:40:13'),(27,'Test5','A test',9.99,4,2,'http://localhost:8000/images/finance.jpg','2020-01-23 17:40:15','2020-01-23 17:40:15'),(28,'Test1','A test',0,4,2,'http://localhost:8000/images/guitar.jpg','2020-01-23 17:40:24','2020-01-23 17:40:24'),(29,'Test2','A test',0,4,2,'http://localhost:8000/images/guitar.jpg','2020-01-23 17:40:28','2020-01-23 17:40:28'),(30,'Test3','A test',0,4,2,'http://localhost:8000/images/guitar.jpg','2020-01-23 17:40:30','2020-01-23 17:40:30'),(31,'Test4','A test',0,4,2,'http://localhost:8000/images/guitar.jpg','2020-01-23 17:40:32','2020-01-23 17:40:32'),(32,'Test5','A test',0,4,2,'http://localhost:8000/images/guitar.jpg','2020-01-23 17:40:34','2020-01-23 17:40:34'),(33,'Test1','A test',14.35,4,2,'http://localhost:8000/images/health.jpg','2020-01-23 17:40:48','2020-01-23 17:40:48'),(34,'Test2','A test',14.35,4,2,'http://localhost:8000/images/health.jpg','2020-01-23 17:40:51','2020-01-23 17:40:51'),(35,'Test3','A test',14.35,4,2,'http://localhost:8000/images/health.jpg','2020-01-23 17:40:53','2020-01-23 17:40:53'),(36,'Test4','A test',14.35,4,2,'http://localhost:8000/images/health.jpg','2020-01-23 17:40:55','2020-01-23 17:40:55'),(37,'Test5','A test',14.35,4,2,'http://localhost:8000/images/health.jpg','2020-01-23 17:40:57','2020-01-23 17:40:57'),(38,'Test1','A test',18.99,4,2,'http://localhost:8000/images/java.jpg','2020-01-23 17:41:19','2020-01-23 17:41:19'),(39,'Test2','A test',18.99,4,2,'http://localhost:8000/images/java.jpg','2020-01-23 17:41:21','2020-01-23 17:41:21'),(40,'Test3','A test',18.99,4,2,'http://localhost:8000/images/java.jpg','2020-01-23 17:41:23','2020-01-23 17:41:23'),(41,'Test4','A test',18.99,4,2,'http://localhost:8000/images/java.jpg','2020-01-23 17:41:25','2020-01-23 17:41:25'),(42,'Test5','A test',18.99,4,2,'http://localhost:8000/images/java.jpg','2020-01-23 17:41:28','2020-01-23 17:41:28'),(43,'Test1','A test',18.99,4,2,'http://localhost:8000/images/javascript.jpg','2020-01-23 17:41:41','2020-01-23 17:41:41'),(44,'Test2','A test',18.99,3.5,2,'http://localhost:8000/images/javascript.jpg','2020-01-23 17:41:48','2020-01-23 17:41:48'),(45,'Test3','A test',18.99,3.5,2,'http://localhost:8000/images/javascript.jpg','2020-01-23 17:41:50','2020-01-23 17:41:50'),(46,'Test4','A test',18.99,3.5,2,'http://localhost:8000/images/javascript.jpg','2020-01-23 17:41:52','2020-01-23 17:41:52'),(47,'Test5','A test',18.99,3.5,2,'http://localhost:8000/images/javascript.jpg','2020-01-23 17:41:54','2020-01-23 17:41:54'),(48,'Test1','A test',18.99,3.5,2,'http://localhost:8000/images/mobile.jpg','2020-01-23 17:42:02','2020-01-23 17:42:02'),(49,'Test2','A test',18.99,3.5,2,'http://localhost:8000/images/mobile.jpg','2020-01-23 17:42:04','2020-01-23 17:42:04'),(50,'Test3','A test',18.99,3.5,2,'http://localhost:8000/images/mobile.jpg','2020-01-23 17:42:06','2020-01-23 17:42:06'),(51,'Test4','A test',18.99,3.5,2,'http://localhost:8000/images/mobile.jpg','2020-01-23 17:42:07','2020-01-23 17:42:07'),(52,'Test5','A test',18.99,3.5,2,'http://localhost:8000/images/mobile.jpg','2020-01-23 17:42:09','2020-01-23 17:42:09'),(53,'Test1','A test',22.99,2,2,'http://localhost:8000/images/photo.jpg','2020-01-23 17:42:29','2020-01-23 17:42:29'),(54,'Test2','A test',22.99,2,3,'http://localhost:8000/images/photo.jpg','2020-01-23 17:42:35','2020-01-23 17:42:35'),(55,'Test3','A test',22.99,2,3,'http://localhost:8000/images/photo.jpg','2020-01-23 17:42:37','2020-01-23 17:42:37'),(56,'Test4','A test',22.99,2,3,'http://localhost:8000/images/photo.jpg','2020-01-23 17:42:39','2020-01-23 17:42:39'),(57,'Test5','A test',22.99,2,3,'http://localhost:8000/images/photo.jpg','2020-01-23 17:42:40','2020-01-23 17:42:40'),(58,'Test1','A test',22.99,2,3,'http://localhost:8000/images/piano.jpg','2020-01-23 17:42:50','2020-01-23 17:42:50'),(59,'Test2','A test',22.99,2,3,'http://localhost:8000/images/piano.jpg','2020-01-23 17:42:52','2020-01-23 17:42:52'),(60,'Test3','A test',22.99,2,3,'http://localhost:8000/images/piano.jpg','2020-01-23 17:42:53','2020-01-23 17:42:53'),(61,'Test4','A test',22.99,2,3,'http://localhost:8000/images/piano.jpg','2020-01-23 17:42:58','2020-01-23 17:42:58'),(62,'Test5','A test',22.99,2,3,'http://localhost:8000/images/piano.jpg','2020-01-23 17:43:01','2020-01-23 17:43:01'),(63,'Test1','A test',15.5,5,3,'http://localhost:8000/images/python.jpg','2020-01-23 17:44:40','2020-01-23 17:44:40'),(64,'Test2','A test',15.5,5,3,'http://localhost:8000/images/python.jpg','2020-01-23 17:44:44','2020-01-23 17:44:44'),(65,'Test3','A test',15.5,5,3,'http://localhost:8000/images/python.jpg','2020-01-23 17:44:46','2020-01-23 17:44:46'),(66,'Test4','A test',15.5,5,3,'http://localhost:8000/images/python.jpg','2020-01-23 17:44:48','2020-01-23 17:44:48'),(67,'Test5','A test',15.5,5,3,'http://localhost:8000/images/python.jpg','2020-01-23 17:44:50','2020-01-23 17:44:50'),(68,'Test1','A test',15.5,5,3,'http://localhost:8000/images/teamwork.jpg','2020-01-23 17:44:59','2020-01-23 17:44:59'),(69,'Test2','A test',15.5,5,3,'http://localhost:8000/images/teamwork.jpg','2020-01-23 17:45:01','2020-01-23 17:45:01'),(70,'Test3','A test',15.5,5,3,'http://localhost:8000/images/teamwork.jpg','2020-01-23 17:45:03','2020-01-23 17:45:03'),(71,'Test4','A test',15.5,5,3,'http://localhost:8000/images/teamwork.jpg','2020-01-23 17:45:05','2020-01-23 17:45:05'),(72,'Test5','A test',15.5,5,3,'http://localhost:8000/images/teamwork.jpg','2020-01-23 17:45:06','2020-01-23 17:45:06');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequelizemeta`
--

DROP TABLE IF EXISTS `sequelizemeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequelizemeta`
--

LOCK TABLES `sequelizemeta` WRITE;
/*!40000 ALTER TABLE `sequelizemeta` DISABLE KEYS */;
INSERT INTO `sequelizemeta` VALUES ('20200123012911-create-course.js');
/*!40000 ALTER TABLE `sequelizemeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'test_node'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-23 13:54:14
