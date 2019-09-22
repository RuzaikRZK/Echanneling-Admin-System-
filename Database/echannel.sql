/*
Navicat MySQL Data Transfer

Source Server         : RZKTechnologyD
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : echannel

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-06-13 21:37:36
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
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

-- ----------------------------
-- Records of admin
-- ----------------------------

-- ----------------------------
-- Table structure for `admin_contact`
-- ----------------------------
DROP TABLE IF EXISTS `admin_contact`;
CREATE TABLE `admin_contact` (
  `userID` int(11) NOT NULL,
  `phone` varchar(10) NOT NULL,
  PRIMARY KEY (`userID`,`phone`),
  UNIQUE KEY `phone` (`phone`),
  CONSTRAINT `fk_a_c` FOREIGN KEY (`userID`) REFERENCES `admin` (`userID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of admin_contact
-- ----------------------------

-- ----------------------------
-- Table structure for `admin_login`
-- ----------------------------
DROP TABLE IF EXISTS `admin_login`;
CREATE TABLE `admin_login` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `pass` varchar(50) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `random` int(40) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of admin_login
-- ----------------------------
INSERT INTO `admin_login` VALUES ('2', '\"Î=\"”^hçå1ø«<“”', 'ruzaik', 'mohomadruzaik@gmail.com', '262953');

-- ----------------------------
-- Table structure for `appointment`
-- ----------------------------
DROP TABLE IF EXISTS `appointment`;
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of appointment
-- ----------------------------
INSERT INTO `appointment` VALUES ('12', '2018-06-05 23:47:56', '2', '2.30', 'ku', null, '1');

-- ----------------------------
-- Table structure for `backup_recover_status`
-- ----------------------------
DROP TABLE IF EXISTS `backup_recover_status`;
CREATE TABLE `backup_recover_status` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `backup` varchar(30) DEFAULT NULL,
  `recover` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of backup_recover_status
-- ----------------------------
INSERT INTO `backup_recover_status` VALUES ('1', '2018/06/11', '2018/06/10');

-- ----------------------------
-- Table structure for `doctor`
-- ----------------------------
DROP TABLE IF EXISTS `doctor`;
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

-- ----------------------------
-- Records of doctor
-- ----------------------------
INSERT INTO `doctor` VALUES ('1', 'dilshan', '1234', 'dilshas', '123456V', '3233mid', 'eye', 'mohomadruzaik@gmail.com', '12', 'kurunegala', '1', 'unbanned');

-- ----------------------------
-- Table structure for `doctor_contact`
-- ----------------------------
DROP TABLE IF EXISTS `doctor_contact`;
CREATE TABLE `doctor_contact` (
  `userID` int(11) NOT NULL,
  `phone` varchar(10) NOT NULL,
  PRIMARY KEY (`userID`,`phone`),
  UNIQUE KEY `phone` (`phone`),
  CONSTRAINT `fk_d_c` FOREIGN KEY (`userID`) REFERENCES `doctor` (`userID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of doctor_contact
-- ----------------------------
INSERT INTO `doctor_contact` VALUES ('1', '077119119');

-- ----------------------------
-- Table structure for `doctor_hospital`
-- ----------------------------
DROP TABLE IF EXISTS `doctor_hospital`;
CREATE TABLE `doctor_hospital` (
  `dID` int(11) NOT NULL,
  `hospital` varchar(50) NOT NULL,
  `day` int(11) NOT NULL,
  `time` varchar(5) NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`dID`,`hospital`,`price`,`day`,`time`),
  CONSTRAINT `fk_did` FOREIGN KEY (`dID`) REFERENCES `doctor` (`userID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of doctor_hospital
-- ----------------------------

-- ----------------------------
-- Table structure for `event`
-- ----------------------------
DROP TABLE IF EXISTS `event`;
CREATE TABLE `event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(20) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `event` varchar(100) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of event
-- ----------------------------

-- ----------------------------
-- Table structure for `manage`
-- ----------------------------
DROP TABLE IF EXISTS `manage`;
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

-- ----------------------------
-- Records of manage
-- ----------------------------

-- ----------------------------
-- Table structure for `medhistory`
-- ----------------------------
DROP TABLE IF EXISTS `medhistory`;
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

-- ----------------------------
-- Records of medhistory
-- ----------------------------

-- ----------------------------
-- Table structure for `patient`
-- ----------------------------
DROP TABLE IF EXISTS `patient`;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of patient
-- ----------------------------

-- ----------------------------
-- Table structure for `patient_contact`
-- ----------------------------
DROP TABLE IF EXISTS `patient_contact`;
CREATE TABLE `patient_contact` (
  `userID` int(11) NOT NULL,
  `phone` varchar(10) NOT NULL,
  PRIMARY KEY (`userID`,`phone`),
  UNIQUE KEY `phone` (`phone`),
  CONSTRAINT `fk_p_c` FOREIGN KEY (`userID`) REFERENCES `patient` (`userID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of patient_contact
-- ----------------------------

-- ----------------------------
-- Table structure for `payment`
-- ----------------------------
DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment` (
  `transactionID` int(11) NOT NULL AUTO_INCREMENT,
  `pTime` datetime DEFAULT CURRENT_TIMESTAMP,
  `amount` double NOT NULL,
  `pID` int(11) DEFAULT NULL,
  PRIMARY KEY (`transactionID`),
  KEY `fk_pay1` (`pID`),
  CONSTRAINT `fk_pay1` FOREIGN KEY (`pID`) REFERENCES `patient` (`userID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of payment
-- ----------------------------
