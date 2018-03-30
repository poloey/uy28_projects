-- MySQL dump 10.13  Distrib 5.7.20, for osx10.13 (x86_64)
--
-- Host: localhost    Database: srms
-- ------------------------------------------------------
-- Server version	5.7.20

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','5ebe2294ecd0e0f08eab7690d2a6ee69','2018-03-27 18:33:25');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblclasses`
--

DROP TABLE IF EXISTS `tblclasses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblclasses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` varchar(80) DEFAULT NULL,
  `ClassNameNumeric` int(4) NOT NULL,
  `Section` varchar(5) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblclasses`
--

LOCK TABLES `tblclasses` WRITE;
/*!40000 ALTER TABLE `tblclasses` DISABLE KEYS */;
INSERT INTO `tblclasses` VALUES (1,'First',1,'C','2017-06-06 16:52:33','2017-06-07 05:53:47'),(2,'Second',2,'A','2017-06-06 17:21:20','2017-06-06 17:21:38'),(4,'Fourth',4,'C','2017-06-07 09:20:23','0000-00-00 00:00:00'),(5,'Sixth',6,'A','2017-06-07 09:35:08','0000-00-00 00:00:00'),(6,'Sixth',6,'B','2017-08-28 18:42:41','2017-08-28 18:43:02'),(7,'Seventh',7,'B','2017-08-28 18:52:00','2017-08-28 18:52:15'),(8,'Eight',8,'A','2017-08-28 19:21:05','2017-08-28 19:21:24');
/*!40000 ALTER TABLE `tblclasses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblresult`
--

DROP TABLE IF EXISTS `tblresult`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblresult` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `StudentId` int(11) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblresult`
--

LOCK TABLES `tblresult` WRITE;
/*!40000 ALTER TABLE `tblresult` DISABLE KEYS */;
INSERT INTO `tblresult` VALUES (2,1,1,2,100,'2017-08-24 17:54:09','2017-08-28 18:34:32'),(3,1,1,1,80,'2017-08-24 17:54:09','2017-08-28 18:34:25'),(4,1,1,5,78,'2017-08-24 17:54:09','2017-08-28 18:34:26'),(5,1,1,4,60,'2017-08-24 17:54:09','2017-08-28 18:34:26'),(6,2,4,2,90,'2017-08-28 18:38:18',NULL),(7,2,4,1,75,'2017-08-28 18:38:18',NULL),(8,2,4,5,56,'2017-08-28 18:38:18','2017-08-28 19:26:42'),(9,2,4,4,80,'2017-08-28 18:38:18','2017-08-28 19:26:42'),(10,4,7,2,54,'2017-08-28 18:56:21','2017-08-28 19:03:10'),(11,4,7,1,85,'2017-08-28 18:56:21',NULL),(12,4,7,5,55,'2017-08-28 18:56:21','2017-08-28 19:03:10'),(13,4,7,7,65,'2017-08-28 18:56:21','2017-08-28 19:03:10'),(14,5,8,2,75,'2017-08-28 19:25:07',NULL),(15,5,8,1,56,'2017-08-28 19:25:07',NULL),(16,5,8,5,52,'2017-08-28 19:25:07',NULL),(17,5,8,4,80,'2017-08-28 19:25:07',NULL);
/*!40000 ALTER TABLE `tblresult` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblstudents`
--

DROP TABLE IF EXISTS `tblstudents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblstudents` (
  `StudentId` int(11) NOT NULL AUTO_INCREMENT,
  `StudentName` varchar(100) NOT NULL,
  `RollId` varchar(100) NOT NULL,
  `StudentEmail` varchar(100) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `DOB` varchar(100) NOT NULL,
  `ClassId` int(11) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Status` int(1) NOT NULL,
  PRIMARY KEY (`StudentId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblstudents`
--

LOCK TABLES `tblstudents` WRITE;
/*!40000 ALTER TABLE `tblstudents` DISABLE KEYS */;
INSERT INTO `tblstudents` VALUES (1,'parvez','46456','parvez@gmail.com','Female','1995-03-03',1,'2017-06-12 10:30:57','2018-03-27 18:34:41',1),(2,'helal','10861','helal@gmail.com','Male','1995-02-02',4,'2017-08-19 19:18:28','2018-03-27 18:34:45',0),(3,'shoag','2626','shoag@gmail.com','Male','2014-08-06',6,'2017-08-28 18:45:31','2018-03-27 18:34:49',1),(4,'rakib','990','rakib@gmail.com','Male','2001-02-03',7,'2017-08-28 18:54:58','2018-03-27 18:34:54',1),(5,'main uddin','122','main@gmail.com','Male','2002-02-03',8,'2017-08-28 19:23:53','2018-03-27 18:34:58',1);
/*!40000 ALTER TABLE `tblstudents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblsubjectcombination`
--

DROP TABLE IF EXISTS `tblsubjectcombination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblsubjectcombination` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ClassId` int(11) NOT NULL,
  `SubjectId` int(11) NOT NULL,
  `status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Updationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsubjectcombination`
--

LOCK TABLES `tblsubjectcombination` WRITE;
/*!40000 ALTER TABLE `tblsubjectcombination` DISABLE KEYS */;
INSERT INTO `tblsubjectcombination` VALUES (3,2,5,1,'2017-06-07 11:16:56','2017-06-07 11:16:56'),(4,1,2,1,'2017-06-12 06:46:32','2017-06-12 06:46:32'),(5,1,4,1,'2017-06-12 06:46:35','2017-06-12 06:46:35'),(6,1,5,1,'2017-06-12 06:46:40','2017-06-12 06:46:40'),(8,4,4,1,'2017-08-26 03:21:27','2017-08-26 03:21:27'),(10,4,1,1,'2017-08-26 03:22:05','2017-08-26 03:22:05'),(12,4,2,1,'2017-08-26 03:22:15','2017-08-26 03:22:15'),(13,4,5,1,'2017-08-26 03:22:20','2017-08-26 03:22:20'),(14,6,1,1,'2017-08-28 18:44:06','2017-08-28 18:44:06'),(15,6,2,1,'2017-08-28 18:44:12','2017-08-28 18:44:12'),(16,6,4,1,'2017-08-28 18:44:18','2017-08-28 18:44:18'),(17,6,6,1,'2017-08-28 18:44:23','2017-08-28 18:44:23'),(18,7,1,1,'2017-08-28 18:53:12','2017-08-28 18:53:12'),(19,7,7,1,'2017-08-28 18:53:19','2017-08-28 18:53:19'),(20,7,2,1,'2017-08-28 18:53:38','2017-08-28 18:53:38'),(21,7,6,1,'2017-08-28 18:53:44','2017-08-28 18:53:44'),(22,7,5,0,'2017-08-28 18:53:50','2017-08-28 18:53:50'),(23,8,1,1,'2017-08-28 19:22:25','2017-08-28 19:22:25'),(24,8,2,1,'2017-08-28 19:22:31','2017-08-28 19:22:31'),(25,8,4,1,'2017-08-28 19:22:36','2017-08-28 19:22:36'),(26,8,6,1,'2017-08-28 19:22:42','2017-08-28 19:22:42'),(27,8,5,0,'2017-08-28 19:22:47','2017-08-28 19:22:47');
/*!40000 ALTER TABLE `tblsubjectcombination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblsubjects`
--

DROP TABLE IF EXISTS `tblsubjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblsubjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `SubjectName` varchar(100) NOT NULL,
  `SubjectCode` varchar(100) NOT NULL,
  `Creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsubjects`
--

LOCK TABLES `tblsubjects` WRITE;
/*!40000 ALTER TABLE `tblsubjects` DISABLE KEYS */;
INSERT INTO `tblsubjects` VALUES (1,'Maths','MTH01','2017-06-07 09:23:57','2017-06-07 09:46:54'),(2,'English','ENG11','2017-06-07 09:24:25','0000-00-00 00:00:00'),(4,'Science','SC1','2017-06-07 09:36:15','0000-00-00 00:00:00'),(5,'Music','MS','2017-06-07 09:36:23','0000-00-00 00:00:00'),(6,'Social Studies','SS08','2017-08-28 18:43:29','2017-08-28 18:43:45'),(7,'Physics','PH03','2017-08-28 18:52:41','2017-08-28 18:52:55'),(8,'Chemistry','CH65','2017-08-28 19:21:46','2017-08-28 19:22:14');
/*!40000 ALTER TABLE `tblsubjects` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-28  0:48:32
