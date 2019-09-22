-- MySQL dump 10.16  Distrib 10.1.25-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: echannel
-- ------------------------------------------------------
-- Server version	10.1.25-MariaDB

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
-- Current Database: `echannel`
--

/*!40000 DROP DATABASE IF EXISTS `echannel`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `echannel` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `echannel`;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) DEFAULT NULL,
  `pass` varchar(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `NIC` varchar(10) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `address` varchar(50) NOT NULL,
  PRIMARY KEY (`userID`),
  UNIQUE KEY `uname` (`uname`),
  UNIQUE KEY `NIC` (`NIC`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_contact`
--

DROP TABLE IF EXISTS `admin_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_contact` (
  `userID` int(11) NOT NULL,
  `phone` varchar(10) NOT NULL,
  PRIMARY KEY (`userID`,`phone`),
  UNIQUE KEY `phone` (`phone`),
  CONSTRAINT `fk_a_c` FOREIGN KEY (`userID`) REFERENCES `admin` (`userID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_contact`
--

LOCK TABLES `admin_contact` WRITE;
/*!40000 ALTER TABLE `admin_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_login`
--

DROP TABLE IF EXISTS `admin_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_login` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `pass` varchar(50) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_login`
--

LOCK TABLES `admin_login` WRITE;
/*!40000 ALTER TABLE `admin_login` DISABLE KEYS */;
INSERT INTO `admin_login` VALUES (1,'123','ruzaik','ruzaik@gmail.com');
/*!40000 ALTER TABLE `admin_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointment` (
  `appID` int(11) NOT NULL AUTO_INCREMENT,
  `appDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `day` int(11) NOT NULL,
  `time` varchar(5) NOT NULL,
  `hosp` varchar(50) DEFAULT NULL,
  `pID` int(11) DEFAULT NULL,
  `dID` int(11) DEFAULT NULL,
  PRIMARY KEY (`appID`),
  KEY `fk_pid1` (`pID`),
  KEY `fk_did1` (`dID`),
  CONSTRAINT `fk_did1` FOREIGN KEY (`dID`) REFERENCES `doctor` (`userID`) ON UPDATE CASCADE,
  CONSTRAINT `fk_pid1` FOREIGN KEY (`pID`) REFERENCES `patient` (`userID`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES (1,'2018-05-16 05:00:01',2,'08:34','Kurunegala',NULL,NULL),(2,'2018-06-29 17:35:06',4,'09:34','peradeniya',1,1);
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backup_recover_status`
--

DROP TABLE IF EXISTS `backup_recover_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backup_recover_status` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `backup` varchar(30) DEFAULT NULL,
  `recover` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backup_recover_status`
--

LOCK TABLES `backup_recover_status` WRITE;
/*!40000 ALTER TABLE `backup_recover_status` DISABLE KEYS */;
INSERT INTO `backup_recover_status` VALUES (1,NULL,'2018/05/16');
/*!40000 ALTER TABLE `backup_recover_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctor` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) DEFAULT NULL,
  `pass` varchar(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `NIC` varchar(10) DEFAULT NULL,
  `MID` varchar(10) DEFAULT NULL,
  `spec` varchar(20) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `address` varchar(50) NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  `available` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`userID`),
  UNIQUE KEY `uname` (`uname`),
  UNIQUE KEY `NIC` (`NIC`),
  UNIQUE KEY `MID` (`MID`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (1,'dilshan','1234','dilshan','123456V','3233mid','eye','mohomadruzaik@gmail.com',12,'kurunegala',1,'unbanned');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor_contact`
--

DROP TABLE IF EXISTS `doctor_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctor_contact` (
  `userID` int(11) NOT NULL,
  `phone` varchar(10) NOT NULL,
  PRIMARY KEY (`userID`,`phone`),
  UNIQUE KEY `phone` (`phone`),
  CONSTRAINT `fk_d_c` FOREIGN KEY (`userID`) REFERENCES `doctor` (`userID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor_contact`
--

LOCK TABLES `doctor_contact` WRITE;
/*!40000 ALTER TABLE `doctor_contact` DISABLE KEYS */;
INSERT INTO `doctor_contact` VALUES (1,'077119119');
/*!40000 ALTER TABLE `doctor_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor_hospital`
--

DROP TABLE IF EXISTS `doctor_hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctor_hospital` (
  `dID` int(11) NOT NULL,
  `hospital` varchar(50) NOT NULL,
  `day` int(11) NOT NULL,
  `time` varchar(5) NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`dID`,`hospital`,`price`,`day`,`time`),
  CONSTRAINT `fk_did` FOREIGN KEY (`dID`) REFERENCES `doctor` (`userID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor_hospital`
--

LOCK TABLES `doctor_hospital` WRITE;
/*!40000 ALTER TABLE `doctor_hospital` DISABLE KEYS */;
/*!40000 ALTER TABLE `doctor_hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(20) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `event` varchar(100) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manage`
--

DROP TABLE IF EXISTS `manage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manage` (
  `uID` int(11) NOT NULL,
  `adID` int(11) NOT NULL,
  PRIMARY KEY (`uID`,`adID`),
  KEY `fk_adid` (`adID`),
  CONSTRAINT `fk_adid` FOREIGN KEY (`adID`) REFERENCES `admin` (`userID`) ON UPDATE CASCADE,
  CONSTRAINT `fk_uid1` FOREIGN KEY (`uID`) REFERENCES `doctor` (`userID`) ON UPDATE CASCADE,
  CONSTRAINT `fk_uid2` FOREIGN KEY (`uID`) REFERENCES `patient` (`userID`) ON UPDATE CASCADE,
  CONSTRAINT `fk_uid3` FOREIGN KEY (`uID`) REFERENCES `admin` (`userID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manage`
--

LOCK TABLES `manage` WRITE;
/*!40000 ALTER TABLE `manage` DISABLE KEYS */;
/*!40000 ALTER TABLE `manage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medhistory`
--

DROP TABLE IF EXISTS `medhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medhistory` (
  `mhID` int(11) NOT NULL AUTO_INCREMENT,
  `descrip` varchar(200) NOT NULL,
  `pID` int(11) NOT NULL,
  `MID` varchar(10) NOT NULL,
  PRIMARY KEY (`mhID`),
  KEY `fk_pid` (`pID`),
  KEY `fk_mid` (`MID`),
  CONSTRAINT `fk_mid` FOREIGN KEY (`MID`) REFERENCES `doctor` (`MID`) ON UPDATE CASCADE,
  CONSTRAINT `fk_pid` FOREIGN KEY (`pID`) REFERENCES `patient` (`userID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medhistory`
--

LOCK TABLES `medhistory` WRITE;
/*!40000 ALTER TABLE `medhistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `medhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) DEFAULT NULL,
  `pass` varchar(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `NIC` varchar(10) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `address` varchar(50) NOT NULL,
  PRIMARY KEY (`userID`),
  UNIQUE KEY `uname` (`uname`),
  UNIQUE KEY `NIC` (`NIC`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'dilsha','123','dilsha','9632990','ruzaik@gmail.com',12,'kuunraha');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_contact`
--

DROP TABLE IF EXISTS `patient_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient_contact` (
  `userID` int(11) NOT NULL,
  `phone` varchar(10) NOT NULL,
  PRIMARY KEY (`userID`,`phone`),
  UNIQUE KEY `phone` (`phone`),
  CONSTRAINT `fk_p_c` FOREIGN KEY (`userID`) REFERENCES `patient` (`userID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_contact`
--

LOCK TABLES `patient_contact` WRITE;
/*!40000 ALTER TABLE `patient_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment` (
  `transactionID` int(11) NOT NULL AUTO_INCREMENT,
  `pTime` datetime DEFAULT CURRENT_TIMESTAMP,
  `amount` double NOT NULL,
  `pID` int(11) DEFAULT NULL,
  PRIMARY KEY (`transactionID`),
  KEY `fk_pay1` (`pID`),
  CONSTRAINT `fk_pay1` FOREIGN KEY (`pID`) REFERENCES `patient` (`userID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-16 17:55:08
