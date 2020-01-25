-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: 157.179.16.28    Database: trainworkshop
-- ------------------------------------------------------
-- Server version	5.6.43

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
use lab;
--
-- Table structure for table `job_title`
--

DROP TABLE IF EXISTS `job_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_title` (
  `job_title_code` varchar(3) NOT NULL,
  `job_title_name` varchar(50) NOT NULL,
  `job_type` varchar(1) NOT NULL,
  PRIMARY KEY (`job_title_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_title`
--

LOCK TABLES `job_title` WRITE;
/*!40000 ALTER TABLE `job_title` DISABLE KEYS */;
INSERT INTO `job_title` VALUES ('001','General Manager','M'),('002','Department Manager','M'),('003','Sales','O'),('004','Programmer','O'),('005','System Analyst','O'),('006','Operator','O');
/*!40000 ALTER TABLE `job_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `department_code` varchar(3) NOT NULL,
  `department_name` varchar(50) NOT NULL,
  `status` varchar(1) DEFAULT NULL,
  `province` varchar(200) DEFAULT NULL,
  `budget` int(11) DEFAULT NULL,
  `telephone` varchar(200) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`department_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES ('001','Sale','Y','Brazil',5,'hgyh','123123'),('002','IT','Y','บางแสน',50,'0000000000',NULL),('003','HR','N','สวัสดีครับ',666666,'0011223311113',NULL),('004','CDGSystem','N',NULL,123400,'234234234',NULL),('005','PG','N',NULL,12340,'234234234',NULL),('006','PM','Y','Brazil',50000000,'0123456789',NULL),('007','GM','Y','Brazil',50000000,'0123456789',NULL),('012','pre-sale','Y','Brazil',50000000,'0123456789',NULL),('013','SA','Y','Brazilsdfsdf',50000000,'0123456789',NULL),('014','4','4','4',4,'4','4'),('015','5','5','5',5,'5','5'),('016','13','N','Bangkok',13,'12, 13, 13','13');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `PERSON_ID` varchar(13) CHARACTER SET utf8 NOT NULL COMMENT 'เลขบัตร',
  `FIRST_NAME` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT 'ชื่อ',
  `LAST_NAME` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT 'นามสกุล',
  PRIMARY KEY (`PERSON_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES ('1000000000009','John','Wick'),('1000000000010','Sarah','Connor'),('1000000000011','John','Connor');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill`
--

DROP TABLE IF EXISTS `skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skill` (
  `skill_id` varchar(5) NOT NULL,
  `employee_id` varchar(5) NOT NULL,
  `skill_name` varchar(50) NOT NULL,
  `skill_desc` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`skill_id`),
  KEY `employee_id` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill`
--

LOCK TABLES `skill` WRITE;
/*!40000 ALTER TABLE `skill` DISABLE KEYS */;
INSERT INTO `skill` VALUES ('00001','00006','Java','Basic java'),('00002','00006','Java web application','JSF, JSP and Servlet'),('00003','00006','Java Enterprise','EJB3.1'),('00004','00006','XML','XML, XSD and XSL'),('00005','00007','Web services','SOAP and REST'),('00006','00007','SOA','SOA'),('00008','00005','BPMN','BPMN Design'),('00010','00001','wefef','Negotiaton Skill'),('00012','00002','Convincing Skill','213'),('00013','00002','Negotiaton Skill','ddddddddddd'),('00014','00004','Convincing Skill','4757'),('00015','00004','Negotiaton Skill','fdasfdsa'),('00019','00003','Strategic Selling Skill','123[['),('00020','00009','Service mind',''),('00021','00009','Convincing Skill',''),('00022','00009','Negotiaton Skill',''),('00023','00009','php','dsds'),('00024','00003','123411','14123'),('00030','00001','นนน','ยpp'),('00031','00003','123','123'),('00036','00001','12312','12312345'),('00038','00001','wer','werwer'),('00043','00001','wefasdfasdf','wefasdfasdf'),('00044','00001','asdf','asdf'),('00045','00001','dfg','dfgdfg'),('00046','00001','asd',NULL),('00047','00001','fasdf','fasdfa'),('00048','00005','fsda','fsdaf'),('00049','00005','fdasf','fdasfdas'),('00050','00005','fdsafa','fsdafasdfda'),('00051','00005','\'\';','\'\'\'\''),('00052','00005','ffasdf','\'\'\'\'fsdafadsf'),('00053','00005',']\';lk\'','\';l\''),('00054','00004','fdsaf','fsdafasdfsda'),('00055','00004','mvnb','nbvmnb'),('00056','00001','อิอิasdfasdfasdf','ขำ sdf'),('00057','00011','77777','56567777'),('00058','00001','godstr','+10str'),('00059','00001','wefefaaa','Negotiaton Skill'),('00060','00001','อิอิasdfasdf','ขำ'),('00061','00001','wereeeee','werwer'),('00062','00001','firewall','Negotiaton Skill'),('00063','00001','อิอิsdfasdf','ขำ'),('00064','00001','sadfasdfasdfasdf','12312345'),('00065','00001','asdasdfasdfasdfasdfasdf',NULL),('00066','00001','asdfasdf2222222','asdfasdfasdf'),('00067','00001','asdasdfasdfasdfasdfasdf','asdfasdf'),('00068','00001','a','a'),('00069','00001','a','a'),('00070','00001','นนน','ยยยssss'),('00071','00001','23123123','er123123'),('00072','00001','a11','a'),('00073','00001','111','111'),('00074','00001','a123123123','a'),('00075','00002','test','test'),('00076','00002','test','testAAAA'),('00077','00002','testTTT','test'),('00078','00002','testTTT','testaaa'),('00079','00002','test','testAAAA'),('00083','00001','qwe','qwe'),('00084','00001','1123123123123','2'),('00085','00002','asdf','asdf'),('00086','00001','aaa','ssss'),('00087','00020','123','213'),('00089','00029','ทักษะการพูด','ระดับดี'),('00090','00029','ทักษะการอ่าน','ระดับดี'),('00091','00029','ทักษะการเป็นผู้นำ','ระดับดีมาก'),('00092','00029','ทักษะการแสดงออก','ระดับปานกลาง'),('00093','00029','ความรับผิดชอบ','ระดับดีมาก');
/*!40000 ALTER TABLE `skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_account`
--

DROP TABLE IF EXISTS `bank_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank_account` (
  `ACCOUNT_NAME` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT 'ผู้ใช้งาน',
  `MONEY` decimal(20,2) NOT NULL COMMENT 'เงิน',
  `PERSON_ID` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT 'ผู้ใช้งาน',
  PRIMARY KEY (`ACCOUNT_NAME`),
  KEY `PERSON_ID` (`PERSON_ID`),
  CONSTRAINT `bank_account_ibfk_1` FOREIGN KEY (`PERSON_ID`) REFERENCES `person` (`PERSON_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_account`
--

LOCK TABLES `bank_account` WRITE;
/*!40000 ALTER TABLE `bank_account` DISABLE KEYS */;
INSERT INTO `bank_account` VALUES ('A',1000.00,'1000000000009'),('B',2000.00,'1000000000010'),('C',1000.00,'1000000000009'),('D',0.00,'1000000000010');
/*!40000 ALTER TABLE `bank_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atm_transaction`
--

DROP TABLE IF EXISTS `atm_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atm_transaction` (
  `ID` varchar(255) NOT NULL COMMENT 'pk',
  `ACCOUNT_NAME` varchar(255) NOT NULL COMMENT 'ผู้ใช้งาน',
  `MONEY` decimal(20,2) NOT NULL COMMENT 'เงิน',
  `ACTION_NAME` varchar(255) NOT NULL COMMENT 'ธุระกรรม',
  PRIMARY KEY (`ID`),
  KEY `ACCOUNT_NAME` (`ACCOUNT_NAME`),
  CONSTRAINT `atm_transaction_ibfk_1` FOREIGN KEY (`ACCOUNT_NAME`) REFERENCES `bank_account` (`ACCOUNT_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atm_transaction`
--

LOCK TABLES `atm_transaction` WRITE;
/*!40000 ALTER TABLE `atm_transaction` DISABLE KEYS */;
INSERT INTO `atm_transaction` VALUES ('001','A',1000.00,'DEPOSIT'),('002','A',1000.00,'WITHDRAW'),('003','B',1000.00,'WITHDRAW'),('256231ea-0631-427c-a687-20a9d646f938','C',1000.00,'WITHDRAW');
/*!40000 ALTER TABLE `atm_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `employee_id` varchar(5) NOT NULL,
  `title` varchar(5) DEFAULT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `department_code` varchar(3) NOT NULL,
  `job_title_code` varchar(3) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`employee_id`),
  KEY `department_code` (`department_code`),
  KEY `job_title_code` (`job_title_code`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`department_code`) REFERENCES `department` (`department_code`),
  CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`job_title_code`) REFERENCES `job_title` (`job_title_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('00002',NULL,'Jennifer','Lawrence','M','002','001',NULL),('00003','MR','Gabriella','Reinger','M','002','002','Viewpoint, Inc. 8820 Wilshire Blvd Suite 220 Beverly Hills, CA 90211-2618 US213'),('00004',NULL,'Anad','Beckinsale','F','002','002',NULL),('00005','MR','Tom','Cruise','M','001','001','1111 Calle Vista Dr, Beverly Hills, CA 90210'),('00006','MR','Khadija','Wahlberg','M','002','004','Leverage Management 3030 Pennsylvania Avenue Santa Monica, CA 90404 USA'),('00007','MR','Robert','Downey Jr.','M','002','004','Pinewood Atlanta Studios 461 Sandy Creek Road Fayetteville, GA 30214 USA'),('00009','MRS','Mariska','Hargitay','F','003','006','Wolf Films Pier 62 2nd Floor, Suite 215 23rd St. & Hudson River Park New York, NY 10011 USA'),('00011','MISS','Amelia','Larkin','F','003','006','36963 Rosie Track'),('00018','MR','Richard','Florida ','M','002','001','75014 Schiller Burg'),('00019','MR','Vivienne','McDermott','M','001','001','91681 Elliot Avenue'),('00020','MR','Maudie','Dorothy ','M','001','001','7177 Rohan Circles'),('00025','MR','Arvel ','Connelly','M','003','001','7287 Bergnaum Well'),('00029','MR','Julio ','Romaguera','M','001','002','5084 Cara Turnpike'),('00030',NULL,'Anthony','Macky','M','002','002',NULL);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-24 17:25:26
