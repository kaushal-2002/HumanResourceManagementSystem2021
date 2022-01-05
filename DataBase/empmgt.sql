-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: empmgt
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `addsalary`
--

DROP TABLE IF EXISTS `addsalary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addsalary` (
  `email` varchar(255) DEFAULT NULL,
  `month` varchar(45) DEFAULT NULL,
  `year` varchar(45) DEFAULT NULL,
  `amount` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addsalary`
--

LOCK TABLES `addsalary` WRITE;
/*!40000 ALTER TABLE `addsalary` DISABLE KEYS */;
INSERT INTO `addsalary` VALUES ('zinidevaza@mailinator.net','November','2018','3432'),('winypasyvy@mailinator.net','February','2018','12334324'),('hulugi@mailinator.com','October','2018','132423'),('juxa@mailinator.net','December','2018','214234'),('gefineleh@mailinator.net','April','2018','132443535');
/*!40000 ALTER TABLE `addsalary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','password'),(2,'bhupi','123'),(3,'bhupi1','123456'),(4,'bhupi3','123456');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `did` int NOT NULL AUTO_INCREMENT,
  `dname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'Cs'),(2,'Medical'),(3,'.net'),(4,'OpenSource');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eleave`
--

DROP TABLE IF EXISTS `eleave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eleave` (
  `lid` int NOT NULL AUTO_INCREMENT,
  `email` varchar(45) DEFAULT NULL,
  `des` varchar(45) DEFAULT NULL,
  `fdate` varchar(45) DEFAULT NULL,
  `tdate` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eleave`
--

LOCK TABLES `eleave` WRITE;
/*!40000 ALTER TABLE `eleave` DISABLE KEYS */;
INSERT INTO `eleave` VALUES (1,'zyqebab@mailinator.net','fgegege','04/22/2019','06/22/2019','Approved');
/*!40000 ALTER TABLE `eleave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `eid` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `fatherName` varchar(255) DEFAULT NULL,
  `motherNmae` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `doj` varchar(255) DEFAULT NULL,
  `caddress` varchar(255) DEFAULT NULL,
  `paddress` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `cnumber` varchar(255) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `pskill` varchar(255) DEFAULT NULL,
  `sskill` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`eid`),
  UNIQUE KEY `eid_UNIQUE` (`eid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Emma Baird','Mallory Rowe','Esse enim est culpa','Pariatur Tempore d','Felix Chapman','Nobis quis voluptate','Employee','.net','Esse enim est culpa','Aliquip officia quib','Pa$$w0rd!','nileryg@mailinator.com','947','Qui quibusdam totam ','Ipsam earum ut ex do','Voluptatem Sed dolo','Facilis laboris obca','123'),(2,'Ria Goodwin','Sonia Mcmahon','Harum consequuntur r','Male','Mona Wilkins','Ratione officia enim','Manager','Medical','Eos similique nisi l','Ullam nulla aut quia','Et sunt ducimus ass','jigawaqeri@mailinator.com','378','Voluptas rerum sed i','Voluptas doloribus n','Fugiat ducimus nis','Qui vel sunt est ne','Pa$$w0rd!');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;






--
-- Table structure for table `timesheet`
--

DROP TABLE IF EXISTS `timesheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timesheet` (
  `email` varchar(255) DEFAULT NULL,
  `tittle` varchar(255) DEFAULT NULL,
  `des` varchar(255) DEFAULT NULL,
  `hours` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timesheet`
--

LOCK TABLES `timesheet` WRITE;
/*!40000 ALTER TABLE `timesheet` DISABLE KEYS */;
INSERT INTO `timesheet` VALUES ('wokabyma@mailinator.net','Commodo laborum ut voluptas adipisci sequi nisi quae distinctio Labore mollitia duis eos dicta hic nulla inventore','Assumenda quo maxime tenetur asperiores odit nulla facilis libero alias magni id ut et pariatur Suscipit','12','25-Jul-1982'),('zyqebab@mailinator.net','jjjjjjjjjjjj','jjjjjhj','78','Thu Jan 17 16:48:38 IST 2019'),('qukozimyxa@mailinator.com','dgfhd','ghfghfgh','78','Thu Jan 17 18:03:13 IST 2019'),('sanojenu@mailinator.com','Fugit aut odio qui ','Quas mollit qui volu','Aliquam lorem eius t','28-Jun-1973'),('nileryg@mailinator.com','dfgdsg','Enter the Wdgdsgsork Description...','5','Mon Mar 29 11:28:38 IST 2021');
/*!40000 ALTER TABLE `timesheet` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-24 21:32:28
