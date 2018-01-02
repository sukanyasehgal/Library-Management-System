CREATE DATABASE  IF NOT EXISTS `library_books` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `library_books`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: library_books
-- ------------------------------------------------------
-- Server version	5.0.22-community-nt

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
-- Not dumping tablespaces as no INFORMATION_SCHEMA.FILES table on this server
--

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `code` varchar(10) NOT NULL,
  `name` varchar(50) default NULL,
  `category` varchar(20) default NULL,
  `author` varchar(50) default NULL,
  `total_copies_in_library` int(10) default NULL,
  `copies_available` int(10) default NULL,
  `image` varchar(50) default NULL,
  PRIMARY KEY  (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES ('cs1','Algorithm to Live By','Computer Science','Brian Christian and Tom Griffiths',2,2,'Algorithm to Live By.jpg'),('cs2','Computer Science (Cambridge IGCSC)','Computer Science','David Watson and Helen Williams',1,1,'Computer Science (Cambridge IGCSC).jpg'),('cs3','Introduction to Algorithms','Computer Science','Thomas H. Cormen',4,4,'Introduction to Algorithms.jpg'),('m1','Managing Multimedia','Multimedia','Elaine England',2,2,'Managing Multimedia.jpg'),('m2','Multimedia Programming for Windows','Multimedia','Steve Rimmer',1,1,'Multimedia Programming for Windows.jpg'),('p1','Begining Linux Programming','Programming','Richard Blum',5,5,'Begining Linux Programming.jpg'),('p2','iOS 8 Programming Fundamentals with Swift','Programming','Matt Neuburg',2,2,'iOS 8 Programming Fundamentals with Swift.png'),('p3','Programming in Python 3','Programming','Mark Summerfield',3,3,'Programming in Python 3.jpg'),('p4','Programming with C','Programming','Byron Gottfried',6,6,'Programming with C.jpg');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_details`
--

DROP TABLE IF EXISTS `admin_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_details` (
  `admin_username` varchar(20) NOT NULL default '',
  `admin_password` varchar(20) default NULL,
  PRIMARY KEY  (`admin_username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_details`
--

LOCK TABLES `admin_details` WRITE;
/*!40000 ALTER TABLE `admin_details` DISABLE KEYS */;
INSERT INTO `admin_details` VALUES ('admin','admin');
/*!40000 ALTER TABLE `admin_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-04  9:57:09
