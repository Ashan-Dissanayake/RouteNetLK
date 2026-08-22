CREATE DATABASE  IF NOT EXISTS `routenetlk` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `routenetlk`;
-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: routenetlk
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branch` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `docreated` date NOT NULL,
  `branchtype_id` int NOT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `branchstatus_id` int NOT NULL,
  `deleted` bit(1) DEFAULT NULL,
  `regionaloffice_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_bramch_branchstatus1_idx` (`branchstatus_id`),
  KEY `fk_branch_branchtype1_idx` (`branchtype_id`),
  KEY `fk_branch_regionaloffice1_idx` (`regionaloffice_id`),
  CONSTRAINT `fk_bramch_branchstatus1` FOREIGN KEY (`branchstatus_id`) REFERENCES `branchstatus` (`id`),
  CONSTRAINT `fk_branch_branchtype1` FOREIGN KEY (`branchtype_id`) REFERENCES `branchtype` (`id`),
  CONSTRAINT `fk_branch_regionaloffice1` FOREIGN KEY (`regionaloffice_id`) REFERENCES `regionaloffice` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch`
--

LOCK TABLES `branch` WRITE;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` VALUES (1,'Colombo Depot','CLM0001','No. 200, Kirula Road, Colombo 05','0117555555','clm@sltb.lk','1958-07-01',1,NULL,1,_binary '\0',1),(2,'Maharagama Depot','MAH0001','Maharagama','0114775030','mah@sltb.lk','1962-03-15',2,NULL,1,_binary '\0',1),(3,'Pettah Depot','PET0001','Pettah','0114775030','pet@sltb.lk','1965-05-20',3,NULL,2,_binary '\0',1),(4,'Ratmalana Workshop','RAT0001','Ratmalana','0114775030','rat@sltb.lk','1968-09-10',4,NULL,1,_binary '\0',1),(5,'Moratuwa Depot','MOR0001','Moratuwa','0114775030','mor@sltb.lk','1970-02-14',2,NULL,1,_binary '\0',1),(6,'Homagama Depot','HOM0001','Homagama','0114775030','hom@sltb.lk','1972-06-11',3,NULL,1,_binary '\0',1),(7,'Batticaloa Depot','BAT0001','Batticaloa','0674775041','bat@sltb.lk','1962-03-15',2,NULL,1,_binary '\0',2),(8,'Kalmunai Depot','KAL0001','Kalmunai','0674775041','kal@sltb.lk','1964-06-18',3,NULL,1,_binary '\0',2),(9,'Ampara Depot','AMP0001','Ampara','0674775041','amp@sltb.lk','1965-05-20',2,NULL,1,_binary '\0',2),(10,'Trincomalee Depot','TRI0001','Trincomalee','0674775041','tri@sltb.lk','1967-08-30',3,NULL,2,_binary '\0',2),(11,'Kaluwanchikudy Depot','KAL0002','Kaluwanchikudy','0674775041','kal2@sltb.lk','1968-09-10',2,NULL,1,_binary '\0',2),(12,'Eravur Depot','ERA0001','Eravur','0674775041','era@sltb.lk','1970-02-14',4,NULL,1,_binary '\0',2),(13,'Gampaha Depot','GAM0001','Gampaha','0334775031','gam@sltb.lk','1965-05-20',2,NULL,1,_binary '\0',3),(14,'Negombo Depot','NEG0001','Negombo','0334775031','neg@sltb.lk','1967-08-30',3,NULL,1,_binary '\0',3),(15,'Minuwangoda Depot','MIN0001','Minuwangoda','0334775031','min@sltb.lk','1968-09-10',2,NULL,1,_binary '\0',3),(16,'Veyangoda Depot','VEY0001','Veyangoda','0334775031','vey@sltb.lk','1969-10-25',2,NULL,1,_binary '\0',3),(17,'Divulapitiya Depot','DIV0001','Divulapitiya','0334775031','div@sltb.lk','1970-02-14',3,NULL,2,_binary '\0',3),(18,'Ja-Ela Workshop','JAE0001','Ja-Ela','0334775031','jae@sltb.lk','1972-06-11',4,NULL,1,_binary '\0',3),(19,'Kalutara Depot','KAL0001','Kalutara','0342223456','kal@sltb.lk','1968-09-10',2,NULL,1,_binary '\0',4),(20,'Panadura Depot','PAN0001','Panadura','0342234567','pan@sltb.lk','1969-10-25',3,NULL,1,_binary '\0',4),(21,'Horana Depot','HOR0001','Horana','0342245678','hor@sltb.lk','1970-02-14',2,NULL,1,_binary '\0',4),(22,'Mathugama Depot','MAT0002','Mathugama','0342256789','mat2@sltb.lk','1972-06-11',2,NULL,1,_binary '\0',4),(23,'Bandaragama Depot','BAN0002','Bandaragama','0342267890','ban2@sltb.lk','1973-08-20',3,NULL,2,_binary '\0',4),(24,'Kalutara Workshop','KAL0002','Kalutara','0342278901','kal2@sltb.lk','1975-01-05',4,NULL,1,_binary '\0',4),(25,'Kandy Depot','KAN0001','Kandy','081-2223456','kan@sltb.lk','1959-11-05',2,NULL,1,_binary '\0',5),(26,'Peradeniya Depot','PER0001','Peradeniya','0812234567','per@sltb.lk','1961-02-12',3,NULL,1,_binary '\0',5),(27,'Katugastota Depot','KAT0001','Katugastota','0812245678','kat@sltb.lk','1963-04-18',2,NULL,1,_binary '\0',5),(28,'Gampola Depot','GAM0002','Gampola','0812256789','gam2@sltb.lk','1965-07-22',2,NULL,1,_binary '\0',5),(29,'Nawalapitiya Depot','NAW0001','Nawalapitiya','0812267890','naw@sltb.lk','1967-09-30',3,NULL,2,_binary '\0',5),(30,'Kandy Workshop','KAN0002','Kandy','0812278901','kan2@sltb.lk','1969-11-15',4,NULL,1,_binary '\0',5),(31,'Jaffna Depot','JAF0001','Jaffna','0212223456','jaf@sltb.lk','1961-02-12',2,NULL,1,_binary '\0',6),(32,'Kilinochchi Depot','KIL0001','Kilinochchi','0212234567','kil@sltb.lk','1964-06-18',3,NULL,1,_binary '\0',6),(33,'Mannar Depot','MAN0001','Mannar','0212245678','man@sltb.lk','1966-03-22',2,NULL,1,_binary '\0',6),(34,'Vavuniya Depot','VAV0001','Vavuniya','0242256789','vav@sltb.lk','1968-07-14',2,NULL,1,_binary '\0',6),(35,'Point Pedro Depot','POI0001','Point Pedro','0212267890','poi@sltb.lk','1970-01-10',3,NULL,2,_binary '\0',6),(36,'Jaffna Workshop','JAF0002','Jaffna','0212278901','jaf2@sltb.lk','1972-05-05',4,NULL,1,_binary '\0',6),(37,'Nuwara Eliya Depot','NUW0001','Nuwara Eliya','0522223456','nuw@sltb.lk','1964-06-18',2,NULL,1,_binary '\0',7),(38,'Hatton Depot','HAT0001','Hatton','0512234567','hat@sltb.lk','1966-12-09',3,NULL,1,_binary '\0',7),(39,'Talawakelle Depot','TAL0001','Talawakelle','0522245678','tal@sltb.lk','1968-05-22',2,NULL,1,_binary '\0',7),(40,'Nanu Oya Depot','NAN0001','Nanu Oya','0522256789','nan@sltb.lk','1970-07-14',2,NULL,1,_binary '\0',7),(41,'Kotagala Depot','KOT0001','Kotagala','0512267890','kot@sltb.lk','1972-09-30',3,NULL,2,_binary '\0',7),(42,'Nuwara Eliya Workshop','NUW0002','Nuwara Eliya','0522278901','nuw2@sltb.lk','1974-11-15',4,NULL,1,_binary '\0',7),(43,'Anuradhapura Depot','ANU0001','Anuradhapura','0252223456','anu@sltb.lk','1960-04-22',2,NULL,1,_binary '\0',8),(44,'Polonnaruwa Depot','POL0001','Polonnaruwa','0272234567','pol@sltb.lk','1967-08-30',3,NULL,1,_binary '\0',8),(45,'Medawachchiya Depot','MED0001','Medawachchiya','0252245678','med@sltb.lk','1969-05-15',2,NULL,1,_binary '\0',8),(46,'Kekirawa Depot','KEK0001','Kekirawa','0252256789','kek@sltb.lk','1971-07-20',2,NULL,1,_binary '\0',8),(47,'Trincomalee Road Depot','TRR0001','Trincomalee Road, Anuradhapura','0252267890','trr@sltb.lk','1973-09-10',3,NULL,2,_binary '\0',8),(48,'Anuradhapura Workshop','ANU0002','Anuradhapura','0252278901','anu2@sltb.lk','1975-11-05',4,NULL,1,_binary '\0',8),(49,'Ratnapura Depot','RAT0001','Ratnapura','0452223456','rat@sltb.lk','1967-08-30',2,NULL,1,_binary '\0',9),(50,'Kegalle Depot','KEG0001','Kegalle','0352234567','keg@sltb.lk','1969-10-25',3,NULL,1,_binary '\0',9),(51,'Balangoda Depot','BAL0001','Balangoda','0452245678','bal@sltb.lk','1971-03-12',2,NULL,1,_binary '\0',9),(52,'Embilipitiya Depot','EMB0001','Embilipitiya','0472256789','emb@sltb.lk','1973-06-18',2,NULL,1,_binary '\0',9),(53,'Ruwanwella Depot','RUW0001','Ruwanwella','0352267890','ruw@sltb.lk','1975-09-05',3,NULL,2,_binary '\0',9),(54,'Ratnapura Workshop','RAT0002','Ratnapura','0452278901','rat2@sltb.lk','1977-11-22',4,NULL,1,_binary '\0',9),(55,'Matara Depot','MAT0001','Matara','0412223456','mat@sltb.lk','1963-01-14',2,NULL,1,_binary '\0',10),(56,'Galle Depot','GAL0001','Galle','0912234567','gal@sltb.lk','1965-05-20',3,NULL,1,_binary '\0',10),(57,'Hambantota Depot','HAM0001','Hambantota','0472245678','ham@sltb.lk','1967-07-22',2,NULL,1,_binary '\0',10),(58,'Tangalle Depot','TAN0001','Tangalle','0472256789','tan@sltb.lk','1969-09-18',2,NULL,1,_binary '\0',10),(59,'Deniyaya Depot','DEN0001','Deniyaya','0412267890','den@sltb.lk','1971-11-05',3,NULL,2,_binary '\0',10),(60,'Galle Workshop','GAL0002','Galle','0912278901','gal2@sltb.lk','1973-12-20',4,NULL,1,_binary '\0',10),(61,'Badulla Depot','BAD0001','Badulla','0552223456','bad@sltb.lk','1966-12-09',2,NULL,1,_binary '\0',11),(62,'Bandarawela Depot','BAN0001','Bandarawela','0572234567','ban@sltb.lk','1968-09-10',3,NULL,1,_binary '\0',11),(63,'Welimada Depot','WEL0001','Welimada','0552245678','wel@sltb.lk','1970-03-15',2,NULL,1,_binary '\0',11),(64,'Haputale Depot','HAP0001','Haputale','0572256789','hap@sltb.lk','1972-06-20',2,NULL,1,_binary '\0',11),(65,'Mahiyanganaya Depot','MAH0002','Mahiyanganaya','0552267890','mah2@sltb.lk','1974-08-05',3,NULL,2,_binary '\0',11),(66,'Badulla Workshop','BAD0002','Badulla','0552278901','bad2@sltb.lk','1976-11-12',4,NULL,1,_binary '\0',11),(67,'Kurunegala Depot','KUR0001','Kurunegala','0372223456','kur@sltb.lk','1969-10-25',2,NULL,1,_binary '\0',12),(68,'Kuliyapitiya Depot','KUL0001','Kuliyapitiya','0372234567','kul@sltb.lk','1970-02-14',3,NULL,1,_binary '\0',12),(69,'Pannala Depot','PAN0002','Pannala','0372245678','pan2@sltb.lk','1972-04-18',2,NULL,1,_binary '\0',12),(70,'Maho Depot','MAH0003','Maho','0372256789','mah3@sltb.lk','1974-06-22',2,NULL,1,_binary '\0',12),(71,'Wariyapola Depot','WAR0001','Wariyapola','0372267890','war@sltb.lk','1976-08-30',3,NULL,2,_binary '\0',12),(72,'Kurunegala Workshop','KUR0002','Kurunegala','0372278901','kur2@sltb.lk','1978-11-12',4,NULL,1,_binary '\0',12);
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branchstatus`
--

DROP TABLE IF EXISTS `branchstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branchstatus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branchstatus`
--

LOCK TABLES `branchstatus` WRITE;
/*!40000 ALTER TABLE `branchstatus` DISABLE KEYS */;
INSERT INTO `branchstatus` VALUES (1,'Active'),(2,'Suspended'),(3,'Closed');
/*!40000 ALTER TABLE `branchstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branchtype`
--

DROP TABLE IF EXISTS `branchtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branchtype` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branchtype`
--

LOCK TABLES `branchtype` WRITE;
/*!40000 ALTER TABLE `branchtype` DISABLE KEYS */;
INSERT INTO `branchtype` VALUES (1,'Central'),(2,'General'),(3,'Sub Depot'),(4,'Workshop Depot');
/*!40000 ALTER TABLE `branchtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bustype`
--

DROP TABLE IF EXISTS `bustype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bustype` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bustype`
--

LOCK TABLES `bustype` WRITE;
/*!40000 ALTER TABLE `bustype` DISABLE KEYS */;
INSERT INTO `bustype` VALUES (1,'AA'),(2,'A+'),(3,'A'),(4,'B'),(5,'B+'),(6,'C'),(7,'D'),(8,'E');
/*!40000 ALTER TABLE `bustype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `codetype`
--

DROP TABLE IF EXISTS `codetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `codetype` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codetype`
--

LOCK TABLES `codetype` WRITE;
/*!40000 ALTER TABLE `codetype` DISABLE KEYS */;
INSERT INTO `codetype` VALUES (1,'EMPLOYEE'),(2,'DRIVER'),(3,'CONDUCTOR'),(4,'PART_REQUEST'),(5,'GRN'),(6,'VEHICLE_SERVICE'),(7,'BRANCH');
/*!40000 ALTER TABLE `codetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conditionrate`
--

DROP TABLE IF EXISTS `conditionrate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conditionrate` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conditionrate`
--

LOCK TABLES `conditionrate` WRITE;
/*!40000 ALTER TABLE `conditionrate` DISABLE KEYS */;
INSERT INTO `conditionrate` VALUES (1,'Excellent'),(2,'Good'),(3,'Fair'),(4,'Poor');
/*!40000 ALTER TABLE `conditionrate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conductor`
--

DROP TABLE IF EXISTS `conductor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conductor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int DEFAULT NULL,
  `number` char(12) NOT NULL,
  `domedicalissued` date DEFAULT NULL,
  `domedicalexpired` date DEFAULT NULL,
  `routefamiliaritylevel_id` int NOT NULL,
  `crewstatus_id` int NOT NULL,
  `totaldutyminute` int DEFAULT NULL,
  `user_id` int NOT NULL,
  `branch_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `number_UNIQUE` (`number`),
  UNIQUE KEY `employee_id_UNIQUE` (`employee_id`),
  KEY `fk_conductor_routefamiliaritylevel1_idx` (`routefamiliaritylevel_id`),
  KEY `fk_conductor_crewstatus1_idx` (`crewstatus_id`),
  KEY `fk_conductor_employee1_idx` (`employee_id`),
  KEY `fk_conductor_user1_idx` (`user_id`),
  KEY `fk_conductor_branch1_idx` (`branch_id`),
  CONSTRAINT `fk_conductor_branch1` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`),
  CONSTRAINT `fk_conductor_crewstatus1` FOREIGN KEY (`crewstatus_id`) REFERENCES `crewstatus` (`id`),
  CONSTRAINT `fk_conductor_employee1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`),
  CONSTRAINT `fk_conductor_routefamiliaritylevel1` FOREIGN KEY (`routefamiliaritylevel_id`) REFERENCES `routefamiliaritylevel` (`id`),
  CONSTRAINT `fk_conductor_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conductor`
--

LOCK TABLES `conductor` WRITE;
/*!40000 ALTER TABLE `conductor` DISABLE KEYS */;
INSERT INTO `conductor` VALUES (1,65,'CON-0001','2026-07-07','2027-01-07',1,1,NULL,5,1),(2,67,'CON-0002','2026-07-07','2027-01-07',1,1,NULL,5,1),(3,68,'CON-0003','2026-03-31','2026-09-30',1,1,NULL,5,1),(4,70,'CON-0004','2026-04-07','2026-10-07',1,1,NULL,5,1),(5,120,'CON-0005','2026-04-14','2026-10-14',1,1,NULL,5,1),(6,109,'CON-0006','2026-05-12','2026-11-12',1,1,NULL,5,1),(7,105,'CON-0007','2026-03-02','2026-09-02',1,1,NULL,5,1),(8,119,'CON-0008','2026-07-15','2027-01-15',1,1,NULL,5,1),(9,118,'CON-0009','2026-06-30','2026-12-31',1,1,NULL,5,1),(10,66,'CON-0010','2026-07-15','2027-01-15',1,1,NULL,5,1),(11,121,'CON-0011','2026-07-08','2027-01-08',1,1,NULL,5,1);
/*!40000 ALTER TABLE `conductor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crewstatus`
--

DROP TABLE IF EXISTS `crewstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crewstatus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crewstatus`
--

LOCK TABLES `crewstatus` WRITE;
/*!40000 ALTER TABLE `crewstatus` DISABLE KEYS */;
INSERT INTO `crewstatus` VALUES (1,'Eligible'),(2,'Ineligible'),(3,'Active'),(4,'Inactive');
/*!40000 ALTER TABLE `crewstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'Operations'),(2,'Engineering and Technical'),(3,'Administrative'),(4,'Finance and Revenue'),(5,'Stores Department');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `designation`
--

DROP TABLE IF EXISTS `designation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `designation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `designation`
--

LOCK TABLES `designation` WRITE;
/*!40000 ALTER TABLE `designation` DISABLE KEYS */;
INSERT INTO `designation` VALUES (1,'Driver'),(2,'Conductor'),(3,'Mechanic'),(4,'Depot Manager'),(6,'Supervisory'),(7,'Clerical'),(8,'Operations Officer'),(9,'Maintenance Officer'),(10,'Assistant Manager'),(11,'Finance Officer'),(12,'Inventory Officer');
/*!40000 ALTER TABLE `designation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docsequance`
--

DROP TABLE IF EXISTS `docsequance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docsequance` (
  `id` int NOT NULL AUTO_INCREMENT,
  `lastvalue` int DEFAULT NULL,
  `version` int DEFAULT NULL,
  `periodkey` varchar(45) DEFAULT NULL,
  `codetype_id` int NOT NULL,
  `scope_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_docsequance_codetype1_idx` (`codetype_id`),
  KEY `fk_docsequance_scope1_idx` (`scope_id`),
  CONSTRAINT `fk_docsequance_codetype1` FOREIGN KEY (`codetype_id`) REFERENCES `codetype` (`id`),
  CONSTRAINT `fk_docsequance_scope1` FOREIGN KEY (`scope_id`) REFERENCES `scope` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docsequance`
--

LOCK TABLES `docsequance` WRITE;
/*!40000 ALTER TABLE `docsequance` DISABLE KEYS */;
INSERT INTO `docsequance` VALUES (1,2,NULL,NULL,7,1),(2,628,NULL,NULL,1,1),(6,10,NULL,NULL,2,1),(8,11,NULL,NULL,3,1);
/*!40000 ALTER TABLE `docsequance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int DEFAULT NULL,
  `number` char(12) NOT NULL,
  `licensenumber` char(12) NOT NULL,
  `dolicenseissued` date DEFAULT NULL,
  `dolicenseexpired` date DEFAULT NULL,
  `domedicalissued` date DEFAULT NULL,
  `domedicalexpired` date DEFAULT NULL,
  `licensecategory_id` int NOT NULL,
  `crewstatus_id` int NOT NULL,
  `routefamiliaritylevel_id` int NOT NULL,
  `totaldutyminute` int DEFAULT NULL,
  `user_id` int NOT NULL,
  `branch_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `number_UNIQUE` (`number`),
  UNIQUE KEY `licensenumber_UNIQUE` (`licensenumber`),
  UNIQUE KEY `employee_id_UNIQUE` (`employee_id`),
  KEY `fk_driver_licensecategory1_idx` (`licensecategory_id`),
  KEY `fk_driver_crewstatus1_idx` (`crewstatus_id`),
  KEY `fk_driver_employee1_idx` (`employee_id`),
  KEY `fk_driver_routefamiliaritylevel1_idx` (`routefamiliaritylevel_id`),
  KEY `fk_driver_user1_idx` (`user_id`),
  KEY `fk_driver_branch1_idx` (`branch_id`),
  CONSTRAINT `fk_driver_branch1` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`),
  CONSTRAINT `fk_driver_crewstatus1` FOREIGN KEY (`crewstatus_id`) REFERENCES `crewstatus` (`id`),
  CONSTRAINT `fk_driver_employee1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`),
  CONSTRAINT `fk_driver_licensecategory1` FOREIGN KEY (`licensecategory_id`) REFERENCES `licensecategory` (`id`),
  CONSTRAINT `fk_driver_routefamiliaritylevel1` FOREIGN KEY (`routefamiliaritylevel_id`) REFERENCES `routefamiliaritylevel` (`id`),
  CONSTRAINT `fk_driver_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
INSERT INTO `driver` VALUES (1,1,'DRV-0001','B1048293','2025-07-22','2029-07-22','2026-05-11','2026-11-11',1,1,1,NULL,5,1),(3,2,'DRV-0002','B9235312','2024-08-22','2028-08-22','2026-05-22','2026-11-22',2,1,1,NULL,5,1),(4,3,'DRV-0003','B9387311','2024-06-11','2028-06-11','2026-06-22','2026-12-22',2,1,1,NULL,5,1),(5,4,'DRV-0004','B6375924','2023-07-12','2027-07-12','2026-04-06','2026-10-06',1,1,1,NULL,5,1),(6,5,'DRV-0005','B7464829','2023-01-01','2027-01-01','2026-02-02','2026-08-02',2,1,1,NULL,5,1),(7,6,'DRV-0006','B0974884','2024-06-04','2028-06-04','2026-03-10','2026-09-10',2,1,1,NULL,5,1),(8,7,'DRV-0007','B0033314','2024-10-07','2028-10-07','2026-05-10','2026-11-10',1,1,1,NULL,5,1),(9,8,'DRV-0008','B4542105','2025-06-09','2029-06-09','2026-07-14','2027-01-14',2,1,1,NULL,5,1),(10,12,'DRV-0009','B5784680','2024-12-12','2028-12-12','2026-03-30','2026-09-30',2,1,1,NULL,5,1),(11,23,'DRV-0010','B8862541','2025-10-13','2029-10-13','2026-07-14','2027-01-14',2,1,1,NULL,5,1);
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `id` int NOT NULL AUTO_INCREMENT,
  `number` char(10) NOT NULL,
  `fullname` varchar(45) NOT NULL,
  `callingname` varchar(45) NOT NULL,
  `nic` char(12) NOT NULL,
  `gender_id` int NOT NULL,
  `mobile` char(10) NOT NULL,
  `email` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `emergencycontact` char(10) NOT NULL,
  `image` longblob,
  `branch_id` int NOT NULL,
  `department_id` int NOT NULL,
  `designation_id` int NOT NULL,
  `employeetype_id` int NOT NULL,
  `doj` date NOT NULL,
  `employeestatus_id` int NOT NULL,
  `deleted` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `number_UNIQUE` (`number`),
  UNIQUE KEY `nic_UNIQUE` (`nic`),
  UNIQUE KEY `mobile_UNIQUE` (`mobile`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `fk_employee_gender1_idx` (`gender_id`),
  KEY `fk_employee_employeetype1_idx` (`employeetype_id`),
  KEY `fk_employee_designation1_idx` (`designation_id`),
  KEY `fk_employee_employeestatus1_idx` (`employeestatus_id`),
  KEY `fk_employee_department1_idx` (`department_id`),
  KEY `fk_employee_branch1_idx` (`branch_id`),
  CONSTRAINT `fk_employee_branch1` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`),
  CONSTRAINT `fk_employee_department1` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`),
  CONSTRAINT `fk_employee_designation1` FOREIGN KEY (`designation_id`) REFERENCES `designation` (`id`),
  CONSTRAINT `fk_employee_employeestatus1` FOREIGN KEY (`employeestatus_id`) REFERENCES `employeestatus` (`id`),
  CONSTRAINT `fk_employee_employeetype1` FOREIGN KEY (`employeetype_id`) REFERENCES `employeetype` (`id`),
  CONSTRAINT `fk_employee_gender1` FOREIGN KEY (`gender_id`) REFERENCES `gender` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=429 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'EMP-0253','Ashan Karunathilaka','Ashan','902346723V',1,'0774437741','AshanEMP-0253@sltb.lk','No 25, Main Street, Colombo','0719961395',NULL,1,1,1,1,'2024-07-23',1,_binary '\0'),(2,'EMP-0255','Ashan Wijethunga','Ashan','973075441V',1,'0777130618','AshanEMP-0255@sltb.lk','No 33, Colombo Road, Gampaha','0717141642',NULL,1,1,1,1,'2022-07-23',1,_binary '\0'),(3,'EMP-0257','Pathum Ekanayake','Pathum','842912851V',1,'0779800692','PathumEkanayakeEMP-0257@sltb.lk','No 33, Kiridiwela Road, Pepiliyana','0711535827',NULL,1,1,1,1,'2016-07-23',1,_binary '\0'),(4,'EMP-0259','Kasun Fernendo','Kasun','960664494V',1,'0773008109','KasunFernendoEMP-0259@sltb.lk','No 25, Main Street, Colombo','0714623582',NULL,1,1,1,1,'2025-07-23',1,_binary '\0'),(5,'EMP-0261','Dinesh Fernendo','Dinesh','942291786V',1,'0775750234','DineshFernendoEMP-0261@sltb.lk','No 45, Station Road, Kurunegala','0714946311',NULL,1,1,1,1,'2022-07-23',1,_binary '\0'),(6,'EMP-0263','Pathum Ekanayake','Pathum','910819218V',1,'0776754087','PathumEkanayakeEMP-0263@sltb.lk','No 33, Kiridiwela Road, Pepiliyana','0714173418',NULL,1,1,1,1,'2021-07-23',1,_binary '\0'),(7,'EMP-0265','Pathum Karunathilaka','Pathum','840377490V',1,'0771760326','PathumKarunathilakaEMP-0265@sltb.lk','No 33, Colombo Road, Gampaha','0716018161',NULL,1,1,1,1,'2020-07-23',1,_binary '\0'),(8,'EMP-0267','RuwanKarunathilaka','Ruwan','990919599V',1,'0779496590','RuwanKarunathilakaEMP-0267@sltb.lk','No 78, New Town, Anuradhapura','0714807533',NULL,1,1,1,1,'2016-07-23',1,_binary '\0'),(9,'EMP-0269','NimalDissanayake','Nima','901147805V',1,'0778403494','NimalDissanayakeEMP-0279@sltb.lk','No 45, Station Road, Kurunegala','0717182651',NULL,1,1,1,1,'2022-07-23',1,_binary '\0'),(10,'EMP-0271','KasunPerera','Kasun','832355908V',1,'0771480278','KasunPereraEMP-0271@sltb.lk','No 33, Colombo Road, Gampaha','0711781037',NULL,1,1,1,1,'2025-07-23',1,_binary '\0'),(11,'EMP-0273','RuwanEkanayake','Ruwan','853202184V',1,'0779351938','RuwanEkanayakeEMP-0273@sltb.lk','No 47, Kandy Road, Dambulla','0712646200',NULL,1,1,1,1,'2022-07-23',1,_binary '\0'),(12,'EMP-0275','NimalFernendo','Nimal','852498046V',1,'0771371492','NimalFernendoEMP-0275@sltb.lk','No 78, New Town, Anuradhapura','0712478495',NULL,1,1,1,1,'2020-07-23',1,_binary '\0'),(13,'EMP-0277','AshanKarunathilaka','Ashan','820877511V',1,'0779174074','AshanKarunathilakaEMP-0278@sltb.lk','No 47, Kandy Road, Dambulla','0711857309',NULL,1,1,1,1,'2018-07-23',1,_binary '\0'),(14,'EMP-0279','KamalDissanayake','Kama','802747991V',1,'0773458587','KamalDissanayakeEMP-0280@sltb.lk','No 33, Colombo Road, Gampaha','0714473594',NULL,1,1,1,1,'2017-07-23',1,_binary '\0'),(15,'EMP-0281','SunilWijethunga','Sunil','931943891V',1,'0771388627','SunilWijethungaEMP-0282@sltb.lk','No 12, Temple Road, Kandy','0711433954',NULL,1,1,1,1,'2023-07-23',1,_binary '\0'),(16,'EMP-0283','SamanFernendo','Saman','882064178V',1,'0775735164','SamanFernendoEMP-0284@sltb.lk','No 45, Station Road, Kurunegala','0719370847',NULL,1,1,1,1,'2022-07-23',1,_binary '\0'),(17,'EMP-0285','RuwanDissanayake','Ruwan','891536921V',1,'0773814964','RuwanDissanayakeEMP-0286@sltb.lk','No 78, New Town, Anuradhapura','0717009858',NULL,1,1,1,1,'2016-07-23',1,_binary '\0'),(18,'EMP-0287','PathumDissanayake','Pathum','890433206V',1,'0775701870','PathumDissanayakeEMP-0288@sltb.lk','No 33, Colombo Road, Gampaha','0714989487',NULL,1,1,1,1,'2021-07-23',1,_binary '\0'),(19,'EMP-0289','AshanWijethunga','Ashan','861369802V',1,'0772170423','AshanWijethungaEMP-0290@sltb.lk','No 45, Station Road, Kurunegala','0714637524',NULL,1,1,1,1,'2019-07-23',1,_binary '\0'),(20,'EMP-0291','SamanFernendo','Saman','933348243V',1,'0779601381','SamanFernendoEMP-0292@sltb.lk','No 45, Station Road, Kurunegala','0711357234',NULL,1,1,1,1,'2017-07-23',1,_binary '\0'),(21,'EMP-0293','KasunDissanayake','Kasun','920583858V',1,'0775097058','KasunDissanayakeEMP-0294@sltb.lk','No 33, Kiridiwela Road, Pepiliyana','0714393268',NULL,1,1,1,2,'2027-03-23',1,_binary '\0'),(22,'EMP-0295','RuwanWijethunga','Ruwan','900513217V',1,'0779694563','RuwanWijethungaEMP-0296@sltb.lk','No 78, New Town, Anuradhapura','0718884414',NULL,1,1,1,2,'2027-02-23',1,_binary '\0'),(23,'EMP-0297','SamanWijethunga','Saman','932187946V',1,'0776197323','SamanWijethungaEMP-0298@sltb.lk','No 33, Kiridiwela Road, Pepiliyana','0715069482',NULL,1,1,1,2,'2026-09-23',1,_binary '\0'),(24,'EMP-0299','ChamaraDissanayake','Chamara','982748908V',1,'0779086677','ChamaraDissanayakeEMP-0300@sltb.lk','No 78, New Town, Anuradhapura','0719276915',NULL,1,1,1,2,'2026-10-23',1,_binary '\0'),(25,'EMP-0301','KamalDissanayake','Kamal','891253852V',1,'0779148815','KamalDissanayakeEMP-0302@sltb.lk','No 33, Kiridiwela Road, Pepiliyana','0711113779',NULL,1,1,1,2,'2027-05-23',1,_binary '\0'),(26,'EMP-0303','KasunWijethunga','Kasun','950568169V',1,'0776278956','KasunWijethungaEMP-0304@sltb.lk','No 25, Main Street, Colombo','0714124877',NULL,1,1,1,1,'2019-07-23',2,_binary '\0'),(27,'EMP-0305','ChamaraFernendo','Chamara','970468885V',1,'0775095657','ChamaraFernendoEMP-0306@sltb.lk','No 12, Temple Road, Kandy','0712599130',NULL,1,1,1,1,'2016-07-23',2,_binary '\0'),(28,'EMP-0307','SunilKarunathilaka','Sunil','981281582V',1,'0776850915','SunilKarunathilakaEMP-0308@sltb.lk','No 78, New Town, Anuradhapura','0713181322',NULL,1,1,1,1,'2017-07-23',3,_binary '\0'),(29,'EMP-0309','NimalFernendo','Nimal','992612152V',1,'0776820318','NimalFernendoEMP-0310@sltb.lk','No 12, Temple Road, Kandy','0712938256',NULL,1,1,1,1,'2022-07-23',3,_binary '\0'),(30,'EMP-0311','ChamaraKarunathilaka','Chamara','922954996V',1,'0775853931','ChamaraKarunathilakaEMP-0312@sltb.lk','No 25, Main Street, Colombo','0714587246',NULL,1,1,1,1,'2018-07-23',4,_binary '\0'),(31,'EMP-0313','RuwanFernendo','Ruwan','931111767V',1,'0772331437','RuwanFernendoEMP-0314@sltb.lk','No 45, Station Road, Kurunegala','0714880887',NULL,1,1,1,1,'2021-07-23',4,_binary '\0'),(32,'EMP-0315','DineshEkanayake','Dinesh','951167352V',1,'0772676821','DineshEkanayakeEMP-0316@sltb.lk','No 33, Colombo Road, Gampaha','0719527441',NULL,1,1,1,1,'2019-07-23',4,_binary '\0'),(33,'EMP-0317','Ruwan Fernendo','Ruwan','992968092V',1,'0779247102','RuwanFernendoEMP-0318@sltb.lk','No 47, Kandy Road, Dambulla','0719893596',NULL,2,1,1,1,'2021-07-23',2,_binary '\0'),(34,'EMP-0319','Saman Wijethunga','Saman','942246217V',1,'0773161629','SamanWijethungaEMP-0320@sltb.lk','No 78, New Town, Anuradhapura','0711315448',NULL,2,1,1,1,'2025-07-23',2,_binary '\0'),(35,'EMP-0321','Chamara Dissanayake','Chamara','913588662V',1,'0773312584','ChamaraDissanayakeEMP-0322@sltb.lk','No 45, Station Road, Kurunegala','0715134613',NULL,2,1,1,1,'2021-07-23',3,_binary '\0'),(36,'EMP-0323','Kamal Dissanayake','Kamal','902877214V',1,'0778464214','KamalDissanayakeEMP-0324@sltb.lk','No 25, Main Street, Colombo','0711473410',NULL,2,1,1,1,'2017-07-23',3,_binary '\0'),(37,'EMP-0325','Nimal Fernendo','Nimal','822005647V',1,'0778480931','NimalFernendoEMP-0326@sltb.lk','No 45, Station Road, Kurunegala','0716145452',NULL,2,1,1,1,'2021-07-23',4,_binary '\0'),(38,'EMP-0327','DineshKarunathilaka','Dinesh','971648090V',1,'0771532229','DineshKarunathilakaEMP-0328@sltb.lk','No 47, Kandy Road, Dambulla','0713928181',NULL,2,1,1,1,'2016-07-23',4,_binary '\0'),(39,'EMP-0329','PathumFernendo','Pathum','841758426V',1,'0773750655','PathumFernendoEMP-0330@sltb.lk','No 33, Kalutara Road, Horana','0714417185',NULL,2,1,1,1,'2019-07-23',4,_binary '\0'),(40,'EMP-0331','KamalWijethunga','Kama','912823255V',1,'0774876226','KamalWijethungaEMP-0332@sltb.lk','No 33, Kalutara Road, Horana','0712509437',NULL,2,1,1,2,'2027-04-23',1,_binary '\0'),(41,'EMP-0333','SamanFernendo','Saman','942349899V',1,'0772544881','SamanFernendoEMP-0334@sltb.lk','No 33, Kalutara Road, Horana','0717774683',NULL,2,1,1,2,'2026-08-23',1,_binary '\0'),(42,'EMP-0335','DineshKarunathilaka','Dinesh','970602883V',1,'0771241429','DineshKarunathilakaEMP-0336@sltb.lk','No 47, Kandy Road, Dambulla','0712112802',NULL,2,1,1,2,'2027-03-23',1,_binary '\0'),(43,'EMP-0337','PathumPerera','Pathum','920718384V',1,'0774700449','PathumPereraEMP-0338@sltb.lk','No 33, Colombo Road, Gampaha','0718217170',NULL,2,1,1,2,'2027-04-23',1,_binary '\0'),(44,'EMP-0339','AshanPerera','Ashan','861595524V',1,'0775666369','AshanPereraEMP-0340@sltb.lk','No 33, Kiridiwela Road, Pepiliyana','0713116740',NULL,2,1,1,2,'2026-11-23',1,_binary '\0'),(45,'EMP-0341','KasunEkanayake','Kasun','821723983V',1,'0779491112','KasunEkanayakeEMP-0342@sltb.lk','No 45, Station Road, Kurunegala','0712552745',NULL,2,1,1,1,'2022-07-23',1,_binary '\0'),(46,'EMP-0343','RuwanWijethunga','Ruwan','961529567V',1,'0774661312','RuwanWijethungaEMP-0344@sltb.lk','No 78, New Town, Anuradhapura','0712703532',NULL,2,1,1,1,'2023-07-23',1,_binary '\0'),(47,'EMP-0345','NimalPerera','Nimal','862597695V',1,'0779163460','NimalPereraEMP-0346@sltb.lk','No 78, New Town, Anuradhapura','0715934595',NULL,2,1,1,1,'2022-07-23',1,_binary '\0'),(48,'EMP-0347','AshanKarunathilaka','Ashan','991936651V',1,'0771458744','AshanKarunathilakaEMP-0348@sltb.lk','No 12, Temple Road, Kandy','0712820291',NULL,2,1,1,1,'2018-07-23',1,_binary '\0'),(49,'EMP-0349','DineshDissanayake','Dinesh','900469703V',1,'0772372560','DineshDissanayakeEMP-0350@sltb.lk','No 33, Kalutara Road, Horana','0718110052',NULL,2,1,1,1,'2016-07-23',1,_binary '\0'),(50,'EMP-0351','SamanPerera','Saman','871118715V',1,'0777425066','SamanPereraEMP-0352@sltb.lk','No 25, Main Street, Colombo','0718006852',NULL,2,1,1,1,'2019-07-23',1,_binary '\0'),(51,'EMP-0353','DineshWijethunga','Dinesh','960124564V',1,'0776366561','DineshWijethungaEMP-0354@sltb.lk','No 33, Colombo Road, Gampaha','0719524858',NULL,2,1,1,1,'2023-07-23',1,_binary '\0'),(52,'EMP-0355','DineshFernendo','Dinesh','970794513V',1,'0778521321','DineshFernendoEMP-0356@sltb.lk','No 12, Temple Road, Kandy','0715823392',NULL,2,1,1,1,'2021-07-23',1,_binary '\0'),(53,'EMP-0357','AshanPerera','Ashan','830646056V',1,'0774706017','AshanPereraEMP-0358@sltb.lk','No 25, Main Street, Colombo','0716776664',NULL,2,1,1,1,'2020-07-23',1,_binary '\0'),(54,'EMP-0359','NimalWijethunga','Nima','900347166V',1,'0771649987','NimalWijethungaEMP-0360@sltb.lk','No 45, Station Road, Kurunegala','0711692746',NULL,2,1,1,1,'2021-07-23',1,_binary '\0'),(55,'EMP-0361','DineshFernendo','Dinesh','890927077V',1,'0771282595','DineshFernendoEMP-0362@sltb.lk','No 47, Kandy Road, Dambulla','0714742354',NULL,2,1,1,1,'2021-07-23',1,_binary '\0'),(56,'EMP-0363','SamanKarunathilaka','Saman','961102465V',1,'0772158693','SamanKarunathilakaEMP-0364@sltb.lk','No 25, Main Street, Colombo','0711225504',NULL,2,1,1,1,'2016-07-23',1,_binary '\0'),(57,'EMP-0365','SunilFernendo','Sunil','803485708V',1,'0778332633','SunilFernendoEMP-0366@sltb.lk','No 45, Station Road, Kurunegala','0714541182',NULL,2,1,1,1,'2016-07-23',1,_binary '\0'),(58,'EMP-0367','DineshWijethunga','Dinesh','900767113V',1,'0774145699','DineshWijethungaEMP-0368@sltb.lk','No 12, Temple Road, Kandy','0711758270',NULL,2,1,1,1,'2017-07-23',1,_binary '\0'),(59,'EMP-0369','SamanDissanayake','Saman','922601784V',1,'0777871977','SamanDissanayakeEMP-0370@sltb.lk','No 45, Station Road, Kurunegala','0715882319',NULL,2,1,1,1,'2022-07-23',1,_binary '\0'),(60,'EMP-0371','PathumEkanayake','Pathum','820137678V',1,'0773878173','PathumEkanayakeEMP-0372@sltb.lk','No 33, Kalutara Road, Horana','0718645095',NULL,2,1,1,1,'2016-07-23',1,_binary '\0'),(61,'EMP-0373','PathumFernendo','Pathum','970875213V',1,'0778025062','PathumFernendoEMP-0374@sltb.lk','No 47, Kandy Road, Dambulla','0712550293',NULL,2,1,1,1,'2019-07-23',1,_binary '\0'),(62,'EMP-0375','KasunEkanayake','Kasun','970169818V',1,'0775587972','KasunEkanayakeEMP-0376@sltb.lk','No 33, Colombo Road, Gampaha','0711490841',NULL,2,1,1,1,'2016-07-23',1,_binary '\0'),(63,'EMP-0377','SunilPerera','Suni','960599139V',1,'0771744099','SunilPereraEMP-0378@sltb.lk','No 33, Colombo Road, Gampaha','0714987293',NULL,2,1,1,1,'2018-07-23',1,_binary '\0'),(64,'EMP-0379','PathumWijethunga','Pathum','841912756V',1,'0771817026','PathumWijethungaEMP-0380@sltb.lk','No 33, Colombo Road, Gampaha','0719806644',NULL,2,1,1,1,'2018-07-23',1,_binary '\0'),(65,'EMP-0381','Kamal Fernendo','Kamal','996118934V',1,'0778317871','KamalEMP-0382@sltb.lk','No 45, Station Road, Kurunegala','0718959449',NULL,1,1,2,1,'2025-07-23',1,_binary '\0'),(66,'EMP-0383','Kamal Fernendo','Kamal','932389275V',1,'0777873758','KamalEMP-0384@sltb.lk','No 45, Station Road, Kurunegala','0713116552',NULL,1,1,2,1,'2020-07-23',1,_binary '\0'),(67,'EMP-0385','Dinesh Karunathilaka','Dinesh','852275882V',1,'0777342523','DineshEMP-0386@sltb.lk','No 12, Temple Road, Kandy','0718513153',NULL,1,1,2,1,'2016-07-23',1,_binary '\0'),(68,'EMP-0387','Pathum Ekanayake','Pathum','951104025V',1,'0777723878','PathumEMP-0388@sltb.lk','No 47, Kandy Road, Dambulla','0711129978',NULL,1,1,2,1,'2016-07-23',1,_binary '\0'),(69,'EMP-0389','Dinesh Fernendo','Dinesh','887556602V',1,'0778621016','DineshEMP-0390@sltb.lk','No 47, Kandy Road, Dambulla','0718761645',NULL,1,1,2,1,'2024-07-23',1,_binary '\0'),(70,'EMP-0391','Ruwan Ekanayake','Ruwan','872484255V',1,'0772871112','RuwanEMP-0392@sltb.lk','No 33, Kiridiwela Road, Pepiliyana','0713862143',NULL,1,1,2,1,'2018-07-23',1,_binary '\0'),(71,'EMP-0393','Kamal Dissanayake','Kamal','960544687V',1,'0778847790','KamalEMP-0394@sltb.lk','No 12, Temple Road, Kandy','0714712378',NULL,1,1,2,1,'2025-07-23',1,_binary '\0'),(72,'EMP-0395','Nimal Karunathilaka','Nimal','872597205V',1,'0776913377','NimalEMP-0396@sltb.lk','No 78, New Town, Anuradhapura','0711731327',NULL,1,1,2,1,'2017-07-23',1,_binary '\0'),(73,'EMP-0397','Pathum Perera','Pathum','995298865V',1,'0773738529','PathumEMP-0398@sltb.lk','No 47, Kandy Road, Dambulla','0716010379',NULL,1,1,2,1,'2025-07-23',1,_binary '\0'),(74,'EMP-0399','Dinesh Perera','Dinesh','843263125V',1,'0773039521','DineshEMP-0400@sltb.lk','No 78, New Town, Anuradhapura','0711652272',NULL,1,1,2,1,'2023-07-23',1,_binary '\0'),(75,'EMP-0401','Pathum Wijethunga','Pathum','862885047V',1,'0777794441','PathumEMP-0402@sltb.lk','No 12, Temple Road, Kandy','0711244553',NULL,1,1,2,1,'2022-07-23',1,_binary '\0'),(76,'EMP-0403','Dinesh Fernendo','Dinesh','822115121V',1,'0777233429','DineshEMP-0404@sltb.lk','No 47, Kandy Road, Dambulla','0711274410',NULL,1,1,2,1,'2018-07-23',1,_binary '\0'),(77,'EMP-0405','Dinesh Fernendo','Dinesh','905868217V',1,'0776054471','DineshEMP-0406@sltb.lk','No 25, Main Street, Colombo','0714492542',NULL,1,1,2,1,'2020-07-23',1,_binary '\0'),(78,'EMP-0407','Ruwan Fernendo','Ruwan','913235647V',1,'0779324488','RuwanEMP-0408@sltb.lk','No 78, New Town, Anuradhapura','0714549203',NULL,1,1,2,1,'2022-07-23',1,_binary '\0'),(79,'EMP-0409','Kasun Ekanayake','Kasun','863199513V',1,'0772330233','KasunEMP-0410@sltb.lk','No 78, New Town, Anuradhapura','0718509270',NULL,1,1,2,1,'2018-07-23',1,_binary '\0'),(80,'EMP-0411','Ruwan Perera','Ruwan','951065723V',1,'0778819851','RuwanEMP-0412@sltb.lk','No 47, Kandy Road, Dambulla','0713725228',NULL,1,1,2,1,'2018-07-23',1,_binary '\0'),(81,'EMP-0413','Ashan Karunathilaka','Ashan','967721254V',1,'0779824726','AshanEMP-0414@sltb.lk','No 47, Kandy Road, Dambulla','0713535738',NULL,1,1,2,1,'2016-07-23',1,_binary '\0'),(82,'EMP-0415','Kamal Karunathilaka','Kamal','980165334V',1,'0775858204','KamalEMP-0416@sltb.lk','No 33, Kalutara Road, Horana','0716945214',NULL,1,1,2,1,'2022-07-23',1,_binary '\0'),(83,'EMP-0417','Dinesh Perera','Dinesh','833493382V',1,'0778827229','DineshEMP-0418@sltb.lk','No 33, Colombo Road, Gampaha','0715045841',NULL,1,1,2,1,'2017-07-23',1,_binary '\0'),(84,'EMP-0419','Pathum Fernendo','Pathum','880146456V',1,'0771256363','PathumEMP-0420@sltb.lk','No 33, Kalutara Road, Horana','0712818093',NULL,1,1,2,1,'2024-07-23',1,_binary '\0'),(85,'EMP-0421','Saman Ekanayake','Saman','878222009V',1,'0778591033','SamanEMP-0422@sltb.lk','No 33, Kiridiwela Road, Pepiliyana','0712139005',NULL,2,1,2,1,'2022-07-23',1,_binary '\0'),(86,'EMP-0423','Saman Ekanayake','Saman','920084591V',1,'0772959644','SamanEMP-0424@sltb.lk','No 25, Main Street, Colombo','0718486295',NULL,2,1,2,1,'2025-07-23',1,_binary '\0'),(87,'EMP-0425','Dinesh Ekanayake','Dinesh','903488699V',1,'0778613061','DineshEMP-0426@sltb.lk','No 47, Kandy Road, Dambulla','0714477679',NULL,2,1,2,1,'2024-07-23',1,_binary '\0'),(88,'EMP-0427','Kamal Wijethunga','Kamal','961987558V',1,'0777960073','KamalEMP-0428@sltb.lk','No 45, Station Road, Kurunegala','0714072871',NULL,2,1,2,1,'2022-07-23',1,_binary '\0'),(89,'EMP-0429','Ruwanthi Fernendo','Ruwanthi','848317982V',2,'0773383716','RuwanthiEMP-0430@sltb.lk','No 33, Colombo Road, Gampaha','0716320298',NULL,2,1,2,1,'2024-07-23',1,_binary '\0'),(90,'EMP-0431','Ashan Dissanayake','Ashan','933629327V',1,'0777848444','AshanEMP-0432@sltb.lk','No 78, New Town, Anuradhapura','0711503839',NULL,2,1,2,1,'2024-07-23',1,_binary '\0'),(91,'EMP-0433','Nimal Ekanayake','Nimal','830776250V',1,'0772340409','NimalEMP-0434@sltb.lk','No 12, Temple Road, Kandy','0718648803',NULL,2,1,2,1,'2016-07-23',1,_binary '\0'),(92,'EMP-0435','Dinesh Fernendo','Dinesh','883292396V',1,'0779919660','DineshEMP-0436@sltb.lk','No 33, Colombo Road, Gampaha','0711331635',NULL,2,1,2,1,'2019-07-23',1,_binary '\0'),(93,'EMP-0437','Ashani Dissanayake','Ashani','968457031V',2,'0772324713','AshaniEMP-0438@sltb.lk','No 47, Kandy Road, Dambulla','0716798885',NULL,2,1,2,1,'2017-07-23',1,_binary '\0'),(94,'EMP-0439','Saman Ekanayake','Saman','970269029V',1,'0773344189','SamanEMP-0440@sltb.lk','No 33, Colombo Road, Gampaha','0712438533',NULL,2,1,2,1,'2023-07-23',1,_binary '\0'),(95,'EMP-0441','Kamal Wijethunga','Kamal','871888118V',1,'0777991542','KamalEMP-0442@sltb.lk','No 25, Main Street, Colombo','0714788911',NULL,2,1,2,1,'2023-07-23',1,_binary '\0'),(96,'EMP-0443','Ashan Karunathilaka','Ashan','923371080V',1,'0779088480','AshanEMP-0444@sltb.lk','No 25, Main Street, Colombo','0712651861',NULL,2,1,2,1,'2021-07-23',1,_binary '\0'),(97,'EMP-0445','Dilani Karunathilaka','Dilani','875105708V',2,'0777340012','DilaniEMP-0446@sltb.lk','No 25, Main Street, Colombo','0713494894',NULL,2,1,2,1,'2024-07-23',1,_binary '\0'),(98,'EMP-0447','Ruwan Wijethunga','Ruwan','980468983V',1,'0771634846','RuwanEMP-0448@sltb.lk','No 33, Kiridiwela Road, Pepiliyana','0716467407',NULL,2,1,2,1,'2022-07-23',1,_binary '\0'),(99,'EMP-0449','Kasun Karunathilaka','Kasun','881983667V',1,'0779862274','KasunEMP-0450@sltb.lk','No 25, Main Street, Colombo','0718018592',NULL,2,1,2,1,'2025-07-23',1,_binary '\0'),(100,'EMP-0451','Ashan Ekanayake','Ashan','963461344V',1,'0774979773','AshanEMP-0452@sltb.lk','No 47, Kandy Road, Dambulla','0716507512',NULL,2,1,2,1,'2020-07-23',1,_binary '\0'),(101,'EMP-0453','Kamala Fernendo','Kamala','958476029V',2,'0772376068','KamalaEMP-0454@sltb.lk','No 33, Kiridiwela Road, Pepiliyana','0718511374',NULL,2,1,2,1,'2024-07-23',1,_binary '\0'),(102,'EMP-0455','Pathum Fernendo','Pathum','811336571V',1,'0772322498','PathumEMP-0456@sltb.lk','No 25, Main Street, Colombo','0713853695',NULL,2,1,2,1,'2016-07-23',1,_binary '\0'),(103,'EMP-0457','Saman Karunathilaka','Saman','892007390V',1,'0772613685','SamanEMP-0458@sltb.lk','No 45, Station Road, Kurunegala','0711007276',NULL,2,1,2,1,'2016-07-23',1,_binary '\0'),(104,'EMP-0459','Dinesh Fernendo','Dinesh','872958964V',1,'0779729053','DineshEMP-0460@sltb.lk','No 45, Station Road, Kurunegala','0715365668',NULL,2,1,2,1,'2018-07-23',1,_binary '\0'),(105,'EMP-0461','Sunila Fernendo','Sunila','815982607V',2,'0779045447','SunilaEMP-0462@sltb.lk','No 33, Kiridiwela Road, Pepiliyana','0718643200',NULL,1,1,2,2,'2027-03-23',1,_binary '\0'),(106,'EMP-0463','Dinesh Perera','Dinesh','950534354V',1,'0771945086','DineshEMP-0464@sltb.lk','No 33, Kalutara Road, Horana','0712663698',NULL,1,1,2,2,'2027-05-23',1,_binary '\0'),(107,'EMP-0465','Pathum Ekanayake','Pathum','950078355V',1,'0773651078','PathumEMP-0466@sltb.lk','No 33, Kalutara Road, Horana','0717850970',NULL,1,1,2,2,'2027-03-23',1,_binary '\0'),(108,'EMP-0467','Ashan Karunathilaka','Ashan','812781374V',1,'0779421184','AshanEMP-0468@sltb.lk','No 12, Temple Road, Kandy','0719285729',NULL,1,1,2,2,'2026-12-23',1,_binary '\0'),(109,'EMP-0469','Sachini Dissanayake','Sachini','875369228V',2,'0773979913','SachiniEMP-0470@sltb.lk','No 45, Station Road, Kurunegala','0719695351',NULL,1,1,2,2,'2026-08-23',1,_binary '\0'),(110,'EMP-0471','Tharushi Perera','Tharushi','946858735V',2,'0772809901','TharushiEMP-0472@sltb.lk','No 78, New Town, Anuradhapura','0718584819',NULL,2,1,2,2,'2027-05-23',1,_binary '\0'),(111,'EMP-0473','Dinesh Karunathilaka','Dinesh','951036256V',1,'0771994980','DineshEMP-0474@sltb.lk','No 47, Kandy Road, Dambulla','0711387898',NULL,2,1,2,2,'2026-08-23',1,_binary '\0'),(112,'EMP-0475','Sunil Dissanayake','Sunil','881261341V',1,'0775673639','SunilEMP-0476@sltb.lk','No 33, Colombo Road, Gampaha','0711282008',NULL,2,1,2,2,'2026-12-23',1,_binary '\0'),(113,'EMP-0477','Dinesh Fernendo','Dinesh','892234001V',1,'0777567477','DineshEMP-0478@sltb.lk','No 33, Colombo Road, Gampaha','0711173093',NULL,2,1,2,2,'2027-01-23',1,_binary '\0'),(114,'EMP-0479','Kasuni Wijethunga','Kasuni','885311324V',2,'0773331163','KasuniEMP-0480@sltb.lk','No 47, Kandy Road, Dambulla','0717810624',NULL,2,1,2,2,'2026-11-23',1,_binary '\0'),(115,'EMP-0481','Kasuni Perera','Kasuni','966282373V',2,'0773122096','KasuniEMP-0482@sltb.lk','No 78, New Town, Anuradhapura','0718745968',NULL,1,1,2,1,'2026-11-23',2,_binary '\0'),(116,'EMP-0483','Ashan Karunathilaka','Ashan','852888443V',1,'0772778569','AshanEMP-0484@sltb.lk','No 78, New Town, Anuradhapura','0718340586',NULL,1,1,2,1,'2026-10-23',2,_binary '\0'),(117,'EMP-0485','Saman Ekanayake','Saman','950581011V',1,'0771934984','SamanEMP-0486@sltb.lk','No 12, Temple Road, Kandy','0716481804',NULL,1,1,2,1,'2026-12-23',3,_binary '\0'),(118,'EMP-0487','Ashan Ekanayake','Ashan','860733793V',1,'0776103221','AshanEMP-0488@sltb.lk','No 47, Kandy Road, Dambulla','0719717596',NULL,1,1,2,1,'2027-02-23',3,_binary '\0'),(119,'EMP-0489','Ruwani Dissanayake','Ruwani','838024149V',2,'0773992288','RuwaniEMP-0490@sltb.lk','No 12, Temple Road, Kandy','0719357564',NULL,1,1,2,1,'2026-12-23',4,_binary '\0'),(120,'EMP-0491','Sunil Wijethunga','Sunil','940399408V',1,'0772716335','SunilEMP-0492@sltb.lk','No 12, Temple Road, Kandy','0718562653',NULL,1,1,2,1,'2026-10-23',4,_binary '\0'),(121,'EMP-0493','Dinesh Karunathilaka','Dinesh','960727492V',1,'0775916854','DineshEMP-0494@sltb.lk','No 45, Station Road, Kurunegala','0714635547',NULL,1,1,2,1,'2026-12-23',4,_binary '\0'),(122,'EMP-0495','Amasha Ekanayake','Amasha','866783107V',2,'0774252057','AmashaEMP-0496@sltb.lk','No 33, Kiridiwela Road, Pepiliyana','0711728545',NULL,2,1,2,1,'2027-03-23',2,_binary '\0'),(123,'EMP-0497','Chamara Dissanayake','Chamara','923652908V',1,'0773776857','ChamaraEMP-0498@sltb.lk','No 12, Temple Road, Kandy','0716723648',NULL,2,1,2,1,'2026-12-23',2,_binary '\0'),(124,'EMP-0499','Ashan Karunathilaka','Ashan','881167672V',1,'0775765978','AshanEMP-0500@sltb.lk','No 47, Kandy Road, Dambulla','0717753653',NULL,2,1,2,1,'2026-08-23',3,_binary '\0'),(125,'EMP-0501','Chamara Dissanayake','Chamara','852828118V',1,'0772424696','ChamaraEMP-0502@sltb.lk','No 33, Kalutara Road, Horana','0719408799',NULL,2,1,2,1,'2027-01-23',3,_binary '\0'),(126,'EMP-0503','Uvindi Ekanayake','Uvindi','965094754V',2,'0776924014','UvindiEMP-0504@sltb.lk','No 45, Station Road, Kurunegala','0711108402',NULL,2,1,2,1,'2026-09-23',4,_binary '\0'),(127,'EMP-0505','Kamal Perera','Kamal','902819194V',1,'0778653108','KamalEMP-0506@sltb.lk','No 78, New Town, Anuradhapura','0714480992',NULL,2,1,2,1,'2026-08-23',4,_binary '\0'),(128,'EMP-0507','Ruwan Dissanayake','Ruwan','963451107V',1,'0775509295','RuwanEMP-0508@sltb.lk','No 12, Temple Road, Kandy','0715173051',NULL,2,1,2,1,'2026-12-23',4,_binary '\0'),(129,'EMP-0509','Sanduni Fernendo','Sanduni','926463059V',2,'0773777829','SanduniEMP-0510@sltb.lk','No 45, Station Road, Kurunegala','0714644294',NULL,1,2,3,1,'2026-12-23',1,_binary '\0'),(130,'EMP-0511','Nimal Perera','Nimal','912224262V',1,'0773851428','NimalEMP-0512@sltb.lk','No 78, New Town, Anuradhapura','0714206134',NULL,1,2,3,1,'2026-10-23',1,_binary '\0'),(131,'EMP-0513','Nimal Fernendo','Nimal','832418966V',1,'0779466590','NimalEMP-0514@sltb.lk','No 25, Main Street, Colombo','0717842662',NULL,1,2,3,1,'2027-05-23',1,_binary '\0'),(132,'EMP-0515','Chamara Dissanayake','Chamara','871278572V',1,'0777179546','ChamaraEMP-0516@sltb.lk','No 45, Station Road, Kurunegala','0719513185',NULL,1,2,3,1,'2026-09-23',1,_binary '\0'),(133,'EMP-0517','Umashi Perera','Umashi','817037980V',2,'0778593456','UmashiEMP-0518@sltb.lk','No 47, Kandy Road, Dambulla','0713353515',NULL,1,2,3,1,'2026-08-23',1,_binary '\0'),(134,'EMP-0519','Minuri Ekanayake','Minuri','935576968V',2,'0779625000','MinuriEMP-0520@sltb.lk','No 78, New Town, Anuradhapura','0719957783',NULL,2,2,3,1,'2027-03-23',1,_binary '\0'),(135,'EMP-0521','Saman Wijethunga','Saman','860463939V',1,'0775066354','SamanEMP-0522@sltb.lk','No 33, Kalutara Road, Horana','0719537032',NULL,2,2,3,1,'2026-09-23',1,_binary '\0'),(136,'EMP-0523','Saman Dissanayake','Saman','950974556V',1,'0778924054','SamanEMP-0524@sltb.lk','No 33, Kiridiwela Road, Pepiliyana','0719545370',NULL,2,2,3,1,'2026-10-23',1,_binary '\0'),(137,'EMP-0525','Chamara Dissanayake','Chamara','891071496V',1,'0779025045','ChamaraEMP-0526@sltb.lk','No 12, Temple Road, Kandy','0715505232',NULL,2,2,3,1,'2027-05-23',1,_binary '\0'),(138,'EMP-0527','Nadeesha Ekanayake','Nadeesha','886018379V',2,'0775707594','NadeeshaEMP-0528@sltb.lk','No 25, Main Street, Colombo','0715891072',NULL,2,2,3,1,'2026-10-23',1,_binary '\0'),(139,'EMP-0529','Nadeesha Karunathilaka','Nadeesha','837705481V',2,'0772196640','NadeeshaEMP-0530@sltb.lk','No 33, Kalutara Road, Horana','0717371623',NULL,1,1,4,1,'2026-08-23',1,_binary '\0'),(140,'EMP-0531','Nimal Perera','Nimal','910368145V',1,'0779965038','NimalEMP-0532@sltb.lk','No 47, Kandy Road, Dambulla','0718971895',NULL,1,1,4,1,'2027-02-23',1,_binary '\0'),(141,'EMP-0533','Dinesh Perera','Dinesh','983324099V',1,'0772770381','DineshEMP-0534@sltb.lk','No 33, Kiridiwela Road, Pepiliyana','0716129695',NULL,1,1,4,1,'2027-05-23',1,_binary '\0'),(142,'EMP-0535','Tharushi Ekanayake','Tharushi','837072632V',2,'0775374024','TharushiEMP-0536@sltb.lk','No 78, New Town, Anuradhapura','0713085012',NULL,2,1,4,1,'2026-09-23',1,_binary '\0'),(143,'EMP-0537','Ashan Wijethunga','Ashan','823567261V',1,'0772005880','AshanEMP-0538@sltb.lk','No 33, Kalutara Road, Horana','0718929844',NULL,2,1,4,1,'2026-09-23',1,_binary '\0'),(144,'EMP-0539','Nimal Perera','Nimal','852599399V',1,'0771840289','NimalEMP-0540@sltb.lk','No 78, New Town, Anuradhapura','0711592710',NULL,2,1,4,1,'2026-11-23',1,_binary '\0'),(145,'EMP-0541','Amasha Perera','Amasha','985052291V',2,'0772060970','AmashaEMP-0542@sltb.lk','No 47, Kandy Road, Dambulla','0719387707',NULL,1,1,8,1,'2027-01-23',1,_binary '\0'),(146,'EMP-0543','Ashan Karunathilaka','Ashan','980896175V',1,'0776719639','AshanEMP-0544@sltb.lk','No 33, Kalutara Road, Horana','0715326703',NULL,1,1,8,1,'2026-11-23',1,_binary '\0'),(147,'EMP-0545','Kasun Karunathilaka','Kasun','832938909V',1,'0772572456','KasunEMP-0546@sltb.lk','No 33, Kiridiwela Road, Pepiliyana','0712769243',NULL,1,1,8,1,'2027-04-23',1,_binary '\0'),(148,'EMP-0547','Umashi Dissanayake','Umashi','915363514V',2,'0778771607','UmashiEMP-0548@sltb.lk','No 25, Main Street, Colombo','0718877335',NULL,2,1,8,1,'2027-05-23',1,_binary '\0'),(149,'EMP-0549','Kamal Dissanayake','Kamal','990153074V',1,'0776787978','KamalEMP-0550@sltb.lk','No 25, Main Street, Colombo','0719214717',NULL,2,1,8,1,'2027-01-23',1,_binary '\0'),(150,'EMP-0551','Saman Fernendo','Saman','961278363V',1,'0776957131','SamanEMP-0552@sltb.lk','No 33, Colombo Road, Gampaha','0712794302',NULL,2,1,8,1,'2027-05-23',1,_binary '\0'),(151,'EMP-0553','Sanduni Ekanayake','Sanduni','916745102V',2,'0777506412','SanduniEMP-0554@sltb.lk','No 47, Kandy Road, Dambulla','0714164364',NULL,1,2,9,1,'2027-03-23',1,_binary '\0'),(152,'EMP-0555','Chamara Dissanayake','Chamara','930288012V',1,'0773718042','ChamaraEMP-0556@sltb.lk','No 45, Station Road, Kurunegala','0718066188',NULL,1,2,9,1,'2027-04-23',1,_binary '\0'),(153,'EMP-0557','Tharushi Perera','Tharushi','958614375V',2,'0776105038','TharushiEMP-0558@sltb.lk','No 25, Main Street, Colombo','0715189873',NULL,2,2,9,1,'2027-03-23',1,_binary '\0'),(154,'EMP-0559','Dinesh Perera','Dinesh','881728700V',1,'0777966441','DineshEMP-0560@sltb.lk','No 47, Kandy Road, Dambulla','0716031670',NULL,2,2,9,1,'2026-09-23',1,_binary '\0'),(155,'EMP-0561','Amasha Fernendo','Amasha','977409634V',2,'0772422031','AmashaEMP-0562@sltb.lk','No 47, Kandy Road, Dambulla','0711026376',NULL,1,2,6,1,'2027-03-23',1,_binary '\0'),(156,'EMP-0563','Nimal Fernendo','Nimal','973619793V',1,'0779057683','NimalEMP-0564@sltb.lk','No 33, Kiridiwela Road, Pepiliyana','0716224890',NULL,1,2,6,1,'2027-04-23',1,_binary '\0'),(157,'EMP-0565','Ashan Perera','Ashan','853043608V',1,'0777835631','AshanEMP-0566@sltb.lk','No 33, Kiridiwela Road, Pepiliyana','0712867228',NULL,1,2,6,1,'2026-11-23',1,_binary '\0'),(158,'EMP-0567','Kamal Fernendo','Kamal','961411757V',1,'0772654125','KamalEMP-0568@sltb.lk','No 33, Kalutara Road, Horana','0717574474',NULL,1,2,6,1,'2027-04-23',1,_binary '\0'),(159,'EMP-0569','Uvindi Karunathilaka','Uvindi','916693498V',2,'0775909113','UvindiEMP-0570@sltb.lk','No 47, Kandy Road, Dambulla','0711603462',NULL,2,2,6,1,'2027-01-23',1,_binary '\0'),(160,'EMP-0571','Dinesh Wijethunga','Dinesh','842882366V',1,'0777625670','DineshEMP-0572@sltb.lk','No 45, Station Road, Kurunegala','0717113116',NULL,2,2,6,1,'2027-01-23',1,_binary '\0'),(161,'EMP-0573','Chamara Karunathilaka','Chamara','982732334V',1,'0776628137','ChamaraEMP-0574@sltb.lk','No 33, Kiridiwela Road, Pepiliyana','0711094869',NULL,2,2,6,1,'2026-12-23',1,_binary '\0'),(162,'EMP-0575','Dinesh Wijethunga','Dinesh','861186512V',1,'0776290608','DineshEMP-0576@sltb.lk','No 12, Temple Road, Kandy','0717741906',NULL,2,2,6,1,'2027-05-23',1,_binary '\0'),(163,'EMP-0577','Tharushi Wijethunga','Tharushi','888032933V',2,'0779185809','TharushiEMP-0578@sltb.lk','No 25, Main Street, Colombo','0717757641',NULL,1,5,12,1,'2027-03-23',1,_binary '\0'),(164,'EMP-0579','Kamal Dissanayake','Kamal','862183002V',1,'0779640566','KamalEMP-0580@sltb.lk','No 33, Kalutara Road, Horana','0718188225',NULL,1,5,12,1,'2026-11-23',1,_binary '\0'),(165,'EMP-0581','Imesha Perera','Imesha','955721798V',2,'0772696631','ImeshaEMP-0582@sltb.lk','No 33, Kiridiwela Road, Pepiliyana','0711432707',NULL,2,5,12,1,'2026-12-23',1,_binary '\0'),(166,'EMP-0583','Ashan Perera','Ashan','801709895V',1,'0774711881','AshanEMP-0584@sltb.lk','No 33, Kiridiwela Road, Pepiliyana','0713600870',NULL,2,5,12,1,'2027-02-23',1,_binary '\0'),(167,'EMP-0585','Dilani Ekanayake','Dilani','916571746V',2,'0775032739','DilaniEMP-0586@sltb.lk','No 45, Station Road, Kurunegala','0715395091',NULL,1,5,7,1,'2026-12-23',1,_binary '\0'),(168,'EMP-0587','Ashan Karunathilaka','Ashan','992671678V',1,'0777120012','AshanEMP-0588@sltb.lk','No 12, Temple Road, Kandy','0717820741',NULL,1,5,7,1,'2026-09-23',1,_binary '\0'),(169,'EMP-0589','Amasha Fernendo','Amasha','808302638V',2,'0775713800','AmashaEMP-0590@sltb.lk','No 33, Kalutara Road, Horana','0714562840',NULL,2,5,7,1,'2027-04-23',1,_binary '\0'),(170,'EMP-0591','Saman Dissanayake','Saman','910201432V',1,'0773597057','SamanEMP-0592@sltb.lk','No 47, Kandy Road, Dambulla','0713601661',NULL,2,5,7,1,'2027-03-23',1,_binary '\0'),(171,'EMP-0593','Imesha Perera','Imesha','816267136V',2,'0771965481','ImeshaEMP-0594@sltb.lk','No 78, New Town, Anuradhapura','0718688403',NULL,1,3,10,1,'2027-03-23',1,_binary '\0'),(172,'EMP-0595','Ashan Karunathilaka','Ashan','840638142V',1,'0772101987','AshanEMP-0596@sltb.lk','No 33, Colombo Road, Gampaha','0715520206',NULL,1,3,10,1,'2027-03-23',1,_binary '\0'),(173,'EMP-0597','Saman Karunathilaka','Saman','811167255V',1,'0779236955','SamanEMP-0598@sltb.lk','No 33, Kiridiwela Road, Pepiliyana','0718816924',NULL,1,3,10,1,'2026-10-23',1,_binary '\0'),(174,'EMP-0599','Nadeesha Ekanayake','Nadeesha','825938116V',2,'0772880911','NadeeshaEMP-0600@sltb.lk','No 47, Kandy Road, Dambulla','0713938848',NULL,2,3,10,1,'2027-03-23',1,_binary '\0'),(175,'EMP-0601','Saman Ekanayake','Saman','813096776V',1,'0778140454','SamanEMP-0602@sltb.lk','No 45, Station Road, Kurunegala','0711217059',NULL,2,3,10,1,'2026-10-23',1,_binary '\0'),(176,'EMP-0603','Sunil Karunathilaka','Sunil','881685739V',1,'0773705387','SunilEMP-0604@sltb.lk','No 78, New Town, Anuradhapura','0718638604',NULL,2,3,10,1,'2027-02-23',1,_binary '\0'),(177,'EMP-0605','Dilani Karunathilaka','Dilani','806411227V',2,'0773191127','DilaniEMP-0606@sltb.lk','No 33, Kalutara Road, Horana','0711213271',NULL,1,4,11,1,'2027-03-23',1,_binary '\0'),(178,'EMP-0607','Ashan Ekanayake','Ashan','882847830V',1,'0776899898','AshanEMP-0608@sltb.lk','No 25, Main Street, Colombo','0718486033',NULL,1,4,11,1,'2027-02-23',1,_binary '\0'),(179,'EMP-0609','Nimal Wijethunga','Nimal','960027490V',1,'0775111778','NimalEMP-0610@sltb.lk','No 33, Kiridiwela Road, Pepiliyana','0715394538',NULL,1,4,11,1,'2026-11-23',1,_binary '\0'),(180,'EMP-0611','Sanduni Fernendo','Sanduni','867654876V',2,'0774408449','SanduniEMP-0612@sltb.lk','No 33, Kalutara Road, Horana','0718985057',NULL,2,4,11,1,'2026-08-23',1,_binary '\0'),(181,'EMP-0613','Kasun Perera','Kasun','973354388V',1,'0775624602','KasunEMP-0614@sltb.lk','No 45, Station Road, Kurunegala','0714295900',NULL,2,4,11,1,'2026-09-23',1,_binary '\0'),(182,'EMP-0615','Chamara Dissanayake','Chamara','922795445V',1,'0779178433','ChamaraEMP-0616@sltb.lk','No 25, Main Street, Colombo','0714736596',NULL,2,4,11,1,'2027-04-23',1,_binary '\0'),(183,'EMP-0617','Sachini Fernendo','Sachini','956285656V',2,'0778212091','SachiniEMP-0618@sltb.lk','No 78, New Town, Anuradhapura','0711984692',NULL,1,4,7,1,'2026-12-23',1,_binary '\0'),(184,'EMP-0619','Sunil Karunathilaka','Sunil','962269093V',1,'0774781764','SunilEMP-0620@sltb.lk','No 47, Kandy Road, Dambulla','0719765412',NULL,1,4,7,1,'2026-10-23',1,_binary '\0'),(185,'EMP-0621','Imesha Wijethunga','Imesha','857392333V',2,'0776771803','ImeshaEMP-0622@sltb.lk','No 33, Kiridiwela Road, Pepiliyana','0713646105',NULL,2,4,7,1,'2027-01-23',1,_binary '\0'),(186,'EMP-0623','Nimal Dissanayake','Nimal','900434891V',1,'0771456636','NimalEMP-0624@sltb.lk','No 33, Kiridiwela Road, Pepiliyana','0717564548',NULL,2,4,7,1,'2026-10-23',1,_binary '\0'),(287,'EMP-624','Harsha Abeykoon','Harsha','19951147635',1,'0772904713','harshaEMP-624@sltb.lk','No 90, Hospital Road, Galle','0741315154',NULL,3,2,6,1,'2016-04-17',4,_binary '\0'),(288,'EMP-625','Mahesh Kumara','Mahesh','19812149833',1,'0791811971','maheshEMP-625@sltb.lk','No 78, Peradeniya Road, Kandy','0717252758',NULL,3,3,10,1,'2019-01-27',2,_binary '\0'),(289,'EMP-626','Gayan Dissanayake','Gayan','19908133972',2,'0796593886','gayanEMP-626@sltb.lk','No 56, Negombo Road, Chilaw','0776793950',NULL,3,1,1,1,'2015-11-24',1,_binary '\0'),(290,'EMP-627','Isuri Madushani','Isuri','19742788074',2,'0706247423','isuriEMP-627@sltb.lk','No 55, Badulla Road, Bandarawela','0755654086',NULL,3,3,10,1,'2010-10-02',2,_binary '\0'),(291,'EMP-628','Chathura Ranasinghe','Chathura','19851395686',2,'0707123222','chathuraEMP-628@sltb.lk','No 56, Negombo Road, Chilaw','0705996661',NULL,3,4,11,1,'2016-03-22',3,_binary '\0'),(292,'EMP-629','Dilani Weerasinghe','Dilani','19775197564',2,'0787152900','dilaniEMP-629@sltb.lk','No 44, Panadura Road, Kalutara','0767532337',NULL,3,1,1,2,'2014-04-07',1,_binary '\0'),(293,'EMP-630','Nimali Fernando','Nimali','19921865962',2,'0779050466','nimaliEMP-630@sltb.lk','No 88, High Level Road, Nugegoda','0718003660',NULL,3,2,6,1,'2010-07-10',2,_binary '\0'),(294,'EMP-631','Chathura Ranasinghe','Chathura','19874793051',1,'0701013590','chathuraEMP-631@sltb.lk','No 21, Temple Road, Matara','0724726402',NULL,3,5,12,2,'2022-05-08',3,_binary '\0'),(295,'EMP-632','Mahesh Kumara','Mahesh','19813295315',1,'0797054001','maheshEMP-632@sltb.lk','No 67, Polonnaruwa Road, Hingurakgoda','0703533411',NULL,3,1,8,1,'2005-09-13',4,_binary '\0'),(296,'EMP-633','Kasun Silva','Kasun','19784019248',2,'0758860383','kasunEMP-633@sltb.lk','No 19, Batticaloa Road, Ampara','0794254824',NULL,3,4,11,1,'2018-02-09',4,_binary '\0'),(297,'EMP-634','Sunil Perera','Sunil','19824970043',1,'0745937767','sunilEMP-634@sltb.lk','No 11, Station Road, Jaffna','0704090399',NULL,3,3,10,1,'2011-01-06',2,_binary '\0'),(298,'EMP-635','Ruwan Jayasinghe','Ruwan','19637368100',2,'0751194095','ruwanEMP-635@sltb.lk','No 67, Polonnaruwa Road, Hingurakgoda','0762834640',NULL,3,5,7,1,'2012-05-07',2,_binary '\0'),(299,'EMP-636','Gayan Dissanayake','Gayan','19964727604',2,'0765090522','gayanEMP-636@sltb.lk','No 12, Kandy Road, Kurunegala','0785730193',NULL,3,1,2,1,'2006-06-22',1,_binary '\0'),(300,'EMP-637','Nimali Fernando','Nimali','19838526868',2,'0773065401','nimaliEMP-637@sltb.lk','No 90, Hospital Road, Galle','0702207921',NULL,3,2,3,1,'2012-03-06',1,_binary '\0'),(301,'EMP-638','Sajith Gunawardena','Sajith','19859951482',2,'0788546053','sajithEMP-638@sltb.lk','No 19, Batticaloa Road, Ampara','0718200076',NULL,3,2,3,1,'2011-01-01',4,_binary '\0'),(302,'EMP-639','Nimali Fernando','Nimali','19757483947',1,'0772086052','nimaliEMP-639@sltb.lk','No 34, Main Street, Anuradhapura','0781399745',NULL,3,1,1,1,'2010-05-11',2,_binary '\0'),(303,'EMP-640','Sanduni Wickramasinghe','Sanduni','19793525406',2,'0719819438','sanduniEMP-640@sltb.lk','No 32, Trincomalee Road, Kantale','0751703045',NULL,3,5,12,1,'2013-02-28',1,_binary '\0'),(304,'EMP-641','Nadeesha Karunaratne','Nadeesha','19627453068',2,'0756511648','nadeeshaEMP-641@sltb.lk','No 21, Temple Road, Matara','0706627182',NULL,3,1,4,1,'2012-08-23',2,_binary '\0'),(305,'EMP-642','Harsha Abeykoon','Harsha','19772571942',2,'0709938724','harshaEMP-642@sltb.lk','No 32, Trincomalee Road, Kantale','0766841248',NULL,3,5,12,1,'2022-02-01',4,_binary '\0'),(306,'EMP-643','Kasun Silva','Kasun','19833585941',1,'0771634991','kasunEMP-643@sltb.lk','No 19, Batticaloa Road, Ampara','0721736749',NULL,3,5,7,1,'2011-06-20',2,_binary '\0'),(307,'EMP-644','Nimali Fernando','Nimali','19934063728',2,'0774824514','nimaliEMP-644@sltb.lk','No 55, Badulla Road, Bandarawela','0771226306',NULL,3,5,12,1,'2016-05-14',1,_binary '\0'),(308,'EMP-645','Sajith Gunawardena','Sajith','20009125904',2,'0767940953','sajithEMP-645@sltb.lk','No 11, Station Road, Jaffna','0746471814',NULL,3,2,6,1,'2019-05-03',3,_binary '\0'),(309,'EMP-646','Tharushi Senanayake','Tharushi','19674933430',2,'0763267484','tharushiEMP-646@sltb.lk','No 45, Galle Road, Colombo','0702986595',NULL,3,2,6,1,'2012-01-11',1,_binary '\0'),(310,'EMP-647','Sanduni Wickramasinghe','Sanduni','19863263863',1,'0758155984','sanduniEMP-647@sltb.lk','No 90, Hospital Road, Galle','0796222895',NULL,3,4,11,1,'2019-05-31',4,_binary '\0'),(311,'EMP-648','Mahesh Kumara','Mahesh','19618914714',2,'0715330896','maheshEMP-648@sltb.lk','No 11, Station Road, Jaffna','0726695386',NULL,3,1,8,1,'2008-11-19',4,_binary '\0'),(312,'EMP-649','Kasun Silva','Kasun','20003677911',1,'0758065915','kasunEMP-649@sltb.lk','No 45, Galle Road, Colombo','0768178768',NULL,3,5,12,1,'2005-03-10',2,_binary '\0'),(313,'EMP-650','Kasun Silva','Kasun','19931672023',1,'0751604961','kasunEMP-650@sltb.lk','No 11, Station Road, Jaffna','0704021206',NULL,3,4,7,1,'2008-12-21',1,_binary '\0'),(314,'EMP-651','Sanduni Wickramasinghe','Sanduni','19821006899',1,'0722753434','sanduniEMP-651@sltb.lk','No 88, High Level Road, Nugegoda','0751820858',NULL,3,5,7,1,'2012-01-21',2,_binary '\0'),(315,'EMP-652','Sunil Perera','Sunil','19743505339',1,'0793680387','sunilEMP-652@sltb.lk','No 23, Dambulla Road, Matale','0744975195',NULL,3,5,7,1,'2009-07-22',1,_binary '\0'),(316,'EMP-653','Kasun Silva','Kasun','19983213732',2,'0724140675','kasunEMP-653@sltb.lk','No 32, Trincomalee Road, Kantale','0702235972',NULL,3,3,10,1,'2011-06-23',1,_binary '\0'),(317,'EMP-654','Dilani Weerasinghe','Dilani','19974391020',2,'0778064915','dilaniEMP-654@sltb.lk','No 23, Dambulla Road, Matale','0708923834',NULL,3,5,12,1,'2006-03-07',4,_binary '\0'),(318,'EMP-655','Tharushi Senanayake','Tharushi','19734444184',2,'0768288218','tharushiEMP-655@sltb.lk','No 19, Batticaloa Road, Ampara','0792610500',NULL,3,4,11,1,'2021-10-03',3,_binary '\0'),(319,'EMP-656','Chathura Ranasinghe','Chathura','19829397283',1,'0776987177','chathuraEMP-656@sltb.lk','No 78, Peradeniya Road, Kandy','0757400184',NULL,3,4,11,1,'2014-03-30',1,_binary '\0'),(320,'EMP-657','Ruwan Jayasinghe','Ruwan','20008406590',2,'0722512920','ruwanEMP-657@sltb.lk','No 21, Temple Road, Matara','0772165755',NULL,3,2,6,1,'2021-02-11',2,_binary '\0'),(321,'EMP-658','Sunil Perera','Sunil','19783285492',2,'0713369829','sunilEMP-658@sltb.lk','No 12, Kandy Road, Kurunegala','0745698337',NULL,3,5,7,1,'2019-05-13',3,_binary '\0'),(322,'EMP-659','Sajith Gunawardena','Sajith','19815892905',1,'0771776332','sajithEMP-659@sltb.lk','No 19, Batticaloa Road, Ampara','0785207270',NULL,3,5,7,1,'2008-03-12',3,_binary '\0'),(323,'EMP-660','Piumi Rathnayake','Piumi','19882034230',2,'0713726864','piumiEMP-660@sltb.lk','No 34, Main Street, Anuradhapura','0722312714',NULL,3,4,7,1,'2018-05-31',4,_binary '\0'),(324,'EMP-661','Mahesh Kumara','Mahesh','19856967902',2,'0763225888','maheshEMP-661@sltb.lk','No 90, Hospital Road, Galle','0779707090',NULL,3,2,9,1,'2017-04-21',1,_binary '\0'),(325,'EMP-662','Kasun Silva','Kasun','19881531298',2,'0726040304','kasunEMP-662@sltb.lk','No 21, Temple Road, Matara','0745996063',NULL,3,1,4,2,'2020-06-14',4,_binary '\0'),(326,'EMP-663','Tharushi Senanayake','Tharushi','19741070293',1,'0719465912','tharushiEMP-663@sltb.lk','No 21, Temple Road, Matara','0727460284',NULL,3,4,11,2,'2016-06-21',2,_binary '\0'),(327,'EMP-664','Sajith Gunawardena','Sajith','19905148421',1,'0704601216','sajithEMP-664@sltb.lk','No 34, Main Street, Anuradhapura','0795107962',NULL,3,1,4,1,'2015-06-16',3,_binary '\0'),(328,'EMP-665','Gayan Dissanayake','Gayan','19966464285',1,'0724750108','gayanEMP-665@sltb.lk','No 23, Dambulla Road, Matale','0766123940',NULL,3,3,10,1,'2019-08-30',3,_binary '\0'),(329,'EMP-666','Harsha Abeykoon','Harsha','19969084428',2,'0703392317','harshaEMP-666@sltb.lk','No 19, Batticaloa Road, Ampara','0712002903',NULL,3,5,12,1,'2018-02-16',3,_binary '\0'),(330,'EMP-667','Nimali Fernando','Nimali','19815446871',1,'0777852118','nimaliEMP-667@sltb.lk','No 78, Peradeniya Road, Kandy','0753966331',NULL,3,3,10,1,'2021-04-25',4,_binary '\0'),(331,'EMP-668','Chathura Ranasinghe','Chathura','19667948954',2,'0718682966','chathuraEMP-668@sltb.lk','No 11, Station Road, Jaffna','0782822535',NULL,3,4,7,2,'2007-08-01',2,_binary '\0'),(332,'EMP-669','Piumi Rathnayake','Piumi','19798161472',2,'0762827640','piumiEMP-669@sltb.lk','No 45, Galle Road, Colombo','0754436056',NULL,3,1,2,1,'2015-05-02',1,_binary '\0'),(333,'EMP-670','Nimali Fernando','Nimali','19719781812',2,'0766974598','nimaliEMP-670@sltb.lk','No 44, Panadura Road, Kalutara','0703993730',NULL,3,4,11,1,'2016-11-21',4,_binary '\0'),(334,'EMP-671','Isuri Madushani','Isuri','19676724701',1,'0729394216','isuriEMP-671@sltb.lk','No 67, Polonnaruwa Road, Hingurakgoda','0776406248',NULL,3,4,11,1,'2009-12-14',2,_binary '\0'),(335,'EMP-672','Nimali Fernando','Nimali','19959216645',1,'0794325066','nimaliEMP-672@sltb.lk','No 88, High Level Road, Nugegoda','0778742900',NULL,3,3,10,1,'2006-08-21',1,_binary '\0'),(336,'EMP-673','Mahesh Kumara','Mahesh','19622627666',2,'0761353018','maheshEMP-673@sltb.lk','No 12, Kandy Road, Kurunegala','0721970403',NULL,3,1,4,1,'2008-11-21',2,_binary '\0'),(337,'EMP-674','Ruwan Jayasinghe','Ruwan','19978983425',1,'0718491773','ruwanEMP-674@sltb.lk','No 45, Galle Road, Colombo','0769679674',NULL,3,4,7,1,'2018-05-05',4,_binary '\0'),(338,'EMP-675','Gayan Dissanayake','Gayan','19866976089',1,'0759463515','gayanEMP-675@sltb.lk','No 23, Dambulla Road, Matale','0792396194',NULL,3,3,10,1,'2016-06-01',2,_binary '\0'),(339,'EMP-676','Sunil Perera','Sunil','19648658104',2,'0742062228','sunilEMP-676@sltb.lk','No 88, High Level Road, Nugegoda','0771820313',NULL,3,1,8,1,'2007-02-05',1,_binary '\0'),(340,'EMP-677','Sanduni Wickramasinghe','Sanduni','19629455930',2,'0718662262','sanduniEMP-677@sltb.lk','No 21, Temple Road, Matara','0748335319',NULL,3,5,7,1,'2020-05-05',4,_binary '\0'),(341,'EMP-678','Isuri Madushani','Isuri','19885919874',2,'0768465146','isuriEMP-678@sltb.lk','No 55, Badulla Road, Bandarawela','0728494171',NULL,3,5,12,1,'2006-01-06',4,_binary '\0'),(342,'EMP-679','Sajith Gunawardena','Sajith','19952930859',1,'0776191423','sajithEMP-679@sltb.lk','No 21, Temple Road, Matara','0759937693',NULL,3,3,10,1,'2005-11-28',2,_binary '\0'),(343,'EMP-680','Nadeesha Karunaratne','Nadeesha','19689452482',2,'0754212957','nadeeshaEMP-680@sltb.lk','No 45, Galle Road, Colombo','0787741969',NULL,3,3,10,1,'2010-03-12',1,_binary '\0'),(344,'EMP-681','Sunil Perera','Sunil','19919236474',2,'0789115313','sunilEMP-681@sltb.lk','No 67, Polonnaruwa Road, Hingurakgoda','0749334715',NULL,3,1,8,1,'2017-07-20',1,_binary '\0'),(345,'EMP-682','Nimali Fernando','Nimali','19802595013',1,'0741201245','nimaliEMP-682@sltb.lk','No 21, Temple Road, Matara','0791256771',NULL,3,2,6,1,'2017-09-12',2,_binary '\0'),(346,'EMP-683','Sunil Perera','Sunil','19687045767',1,'0776941624','sunilEMP-683@sltb.lk','No 78, Peradeniya Road, Kandy','0789839248',NULL,3,5,12,1,'2019-09-16',1,_binary '\0'),(347,'EMP-684','Tharushi Senanayake','Tharushi','19732680676',2,'0764329083','tharushiEMP-684@sltb.lk','No 78, Peradeniya Road, Kandy','0762550350',NULL,3,2,9,1,'2007-12-14',4,_binary '\0'),(348,'EMP-685','Piumi Rathnayake','Piumi','19809311424',2,'0711630076','piumiEMP-685@sltb.lk','No 19, Batticaloa Road, Ampara','0715385933',NULL,3,1,8,1,'2010-09-01',1,_binary '\0'),(349,'EMP-686','Gayan Dissanayake','Gayan','19863649009',1,'0781649261','gayanEMP-686@sltb.lk','No 34, Main Street, Anuradhapura','0721489454',NULL,3,4,7,1,'2006-07-28',1,_binary '\0'),(350,'EMP-687','Mahesh Kumara','Mahesh','19871001848',2,'0725208316','maheshEMP-687@sltb.lk','No 90, Hospital Road, Galle','0787229832',NULL,3,1,2,1,'2019-06-19',3,_binary '\0'),(351,'EMP-688','Isuri Madushani','Isuri','19742687392',2,'0707550446','isuriEMP-688@sltb.lk','No 55, Badulla Road, Bandarawela','0775575451',NULL,3,1,2,1,'2013-05-22',3,_binary '\0'),(352,'EMP-689','Tharushi Senanayake','Tharushi','19706598472',2,'0779404534','tharushiEMP-689@sltb.lk','No 21, Temple Road, Matara','0708372275',NULL,3,3,10,1,'2017-02-16',2,_binary '\0'),(353,'EMP-690','Nimali Fernando','Nimali','19601215215',1,'0702773520','nimaliEMP-690@sltb.lk','No 90, Hospital Road, Galle','0713056180',NULL,3,1,8,1,'2022-12-28',4,_binary '\0'),(354,'EMP-691','Sajith Gunawardena','Sajith','19667784922',2,'0716321258','sajithEMP-691@sltb.lk','No 90, Hospital Road, Galle','0745492683',NULL,3,5,7,1,'2012-11-12',3,_binary '\0'),(355,'EMP-692','Tharushi Senanayake','Tharushi','19759743351',1,'0722916489','tharushiEMP-692@sltb.lk','No 67, Polonnaruwa Road, Hingurakgoda','0781293581',NULL,3,1,1,1,'2019-06-30',4,_binary '\0'),(356,'EMP-693','Sajith Gunawardena','Sajith','19704395334',2,'0724883820','sajithEMP-693@sltb.lk','No 23, Dambulla Road, Matale','0729263409',NULL,3,5,12,1,'2010-02-09',1,_binary '\0'),(357,'EMP-694','Nimali Fernando','Nimali','19804659628',2,'0795708918','nimaliEMP-694@sltb.lk','No 19, Batticaloa Road, Ampara','0702294667',NULL,3,5,12,1,'2007-03-11',1,_binary '\0'),(358,'EMP-695','Sanduni Wickramasinghe','Sanduni','19952369951',1,'0708899875','sanduniEMP-695@sltb.lk','No 88, High Level Road, Nugegoda','0717826385',NULL,3,2,9,1,'2009-10-11',3,_binary '\0'),(359,'EMP-696','Kasun Silva','Kasun','19877150831',1,'0704227192','kasunEMP-696@sltb.lk','No 90, Hospital Road, Galle','0794627045',NULL,3,2,6,1,'2022-08-31',2,_binary '\0'),(360,'EMP-697','Ruwan Jayasinghe','Ruwan','19741141564',2,'0719350645','ruwanEMP-697@sltb.lk','No 32, Trincomalee Road, Kantale','0777477582',NULL,3,5,7,1,'2018-05-02',4,_binary '\0'),(361,'EMP-698','Tharushi Senanayake','Tharushi','19874185462',2,'0772839321','tharushiEMP-698@sltb.lk','No 23, Dambulla Road, Matale','0796807406',NULL,3,2,3,1,'2014-10-25',3,_binary '\0'),(362,'EMP-699','Dilani Weerasinghe','Dilani','19777167378',2,'0758402016','dilaniEMP-699@sltb.lk','No 44, Panadura Road, Kalutara','0713918404',NULL,3,1,4,1,'2015-06-08',3,_binary '\0'),(363,'EMP-700','Mahesh Kumara','Mahesh','19708708090',2,'0767430217','maheshEMP-700@sltb.lk','No 44, Panadura Road, Kalutara','0785570427',NULL,3,1,2,2,'2021-04-11',3,_binary '\0'),(364,'EMP-701','Sanduni Wickramasinghe','Sanduni','19751551909',1,'0759311475','sanduniEMP-701@sltb.lk','No 56, Negombo Road, Chilaw','0786949056',NULL,3,4,11,1,'2011-10-06',1,_binary '\0'),(365,'EMP-702','Chathura Ranasinghe','Chathura','20009368396',2,'0712880708','chathuraEMP-702@sltb.lk','No 19, Batticaloa Road, Ampara','0773446910',NULL,3,3,10,1,'2017-07-04',1,_binary '\0'),(366,'EMP-703','Isuri Madushani','Isuri','19741966460',2,'0714899906','isuriEMP-703@sltb.lk','No 32, Trincomalee Road, Kantale','0752190234',NULL,3,4,7,1,'2007-12-31',4,_binary '\0'),(367,'EMP-704','Nadeesha Karunaratne','Nadeesha','19961713108',2,'0716762905','nadeeshaEMP-704@sltb.lk','No 12, Kandy Road, Kurunegala','0701905836',NULL,3,5,12,2,'2021-08-31',1,_binary '\0'),(368,'EMP-705','Sunil Perera','Sunil','19626696088',2,'0721371822','sunilEMP-705@sltb.lk','No 12, Kandy Road, Kurunegala','0725973288',NULL,3,3,10,1,'2014-09-17',4,_binary '\0'),(369,'EMP-706','Nadeesha Karunaratne','Nadeesha','19915409389',1,'0752625070','nadeeshaEMP-706@sltb.lk','No 32, Trincomalee Road, Kantale','0786497756',NULL,3,3,10,1,'2018-11-09',3,_binary '\0'),(370,'EMP-707','Chathura Ranasinghe','Chathura','19974830864',2,'0789144643','chathuraEMP-707@sltb.lk','No 23, Dambulla Road, Matale','0719720684',NULL,3,1,2,1,'2014-09-27',3,_binary '\0'),(371,'EMP-708','Mahesh Kumara','Mahesh','19746033447',1,'0719750688','maheshEMP-708@sltb.lk','No 55, Badulla Road, Bandarawela','0702454743',NULL,3,3,10,1,'2016-02-28',1,_binary '\0'),(372,'EMP-709','Harsha Abeykoon','Harsha','19905072473',1,'0783504958','harshaEMP-709@sltb.lk','No 32, Trincomalee Road, Kantale','0724269514',NULL,3,4,7,1,'2014-06-18',4,_binary '\0'),(373,'EMP-710','Gayan Dissanayake','Gayan','19732626353',1,'0745954376','gayanEMP-710@sltb.lk','No 90, Hospital Road, Galle','0754407582',NULL,3,5,12,1,'2016-06-03',3,_binary '\0'),(374,'EMP-711','Chathura Ranasinghe','Chathura','19972701498',2,'0743397435','chathuraEMP-711@sltb.lk','No 21, Temple Road, Matara','0724503559',NULL,3,2,3,1,'2010-03-09',1,_binary '\0'),(375,'EMP-712','Kasun Silva','Kasun','19661029113',1,'0753423303','kasunEMP-712@sltb.lk','No 88, High Level Road, Nugegoda','0769857898',NULL,3,5,12,1,'2007-07-14',1,_binary '\0'),(376,'EMP-713','Ruwan Jayasinghe','Ruwan','19866256350',2,'0776967551','ruwanEMP-713@sltb.lk','No 67, Polonnaruwa Road, Hingurakgoda','0714379872',NULL,3,3,10,2,'2016-10-06',4,_binary '\0'),(377,'EMP-714','Nadeesha Karunaratne','Nadeesha','19695370496',2,'0765303454','nadeeshaEMP-714@sltb.lk','No 19, Batticaloa Road, Ampara','0778380341',NULL,3,1,8,1,'2013-03-06',2,_binary '\0'),(378,'EMP-715','Chathura Ranasinghe','Chathura','19847460745',1,'0754397102','chathuraEMP-715@sltb.lk','No 56, Negombo Road, Chilaw','0744237997',NULL,3,3,10,1,'2012-01-24',1,_binary '\0'),(379,'EMP-716','Dilani Weerasinghe','Dilani','19829938399',1,'0749051739','dilaniEMP-716@sltb.lk','No 67, Polonnaruwa Road, Hingurakgoda','0766830852',NULL,3,1,8,1,'2022-02-23',3,_binary '\0'),(380,'EMP-717','Nimali Fernando','Nimali','19613213549',1,'0776496092','nimaliEMP-717@sltb.lk','No 88, High Level Road, Nugegoda','0726185060',NULL,3,1,4,1,'2013-06-11',3,_binary '\0'),(381,'EMP-718','Mahesh Kumara','Mahesh','19973928679',1,'0726562270','maheshEMP-718@sltb.lk','No 19, Batticaloa Road, Ampara','0755456717',NULL,3,1,2,1,'2010-07-09',1,_binary '\0'),(382,'EMP-719','Ruwan Jayasinghe','Ruwan','19893057387',1,'0765561488','ruwanEMP-719@sltb.lk','No 32, Trincomalee Road, Kantale','0795102791',NULL,3,2,6,1,'2008-04-16',2,_binary '\0'),(383,'EMP-720','Isuri Madushani','Isuri','19671677750',2,'0794724431','isuriEMP-720@sltb.lk','No 21, Temple Road, Matara','0718421811',NULL,3,4,11,1,'2012-12-23',4,_binary '\0'),(384,'EMP-721','Ruwan Jayasinghe','Ruwan','19654446105',1,'0757759853','ruwanEMP-721@sltb.lk','No 88, High Level Road, Nugegoda','0716577387',NULL,3,4,11,1,'2010-06-25',1,_binary '\0'),(385,'EMP-722','Harsha Abeykoon','Harsha','19848453569',1,'0754530482','harshaEMP-722@sltb.lk','No 90, Hospital Road, Galle','0705671530',NULL,3,4,11,1,'2005-12-15',3,_binary '\0'),(386,'EMP-723','Dilani Weerasinghe','Dilani','19787050619',1,'0704596723','dilaniEMP-723@sltb.lk','No 34, Main Street, Anuradhapura','0766515321',NULL,3,1,4,1,'2011-04-30',3,_binary '\0'),(388,'EMP-724','Nilakshi de Silva','Nilakshi','19879378204',2,'0751229011','nilakshiEMP-724@sltb.lk','No 61, Kurunegala Road, Narammala','0792335243',NULL,4,3,10,1,'2006-10-24',1,_binary '\0'),(389,'EMP-725','Wanindu Hasaranga','Wanindu','19859483428',2,'0766097063','waninduEMP-725@sltb.lk','No 5, A9 Road, Habarana','0727010972',NULL,4,5,12,1,'2012-05-13',3,_binary '\0'),(390,'EMP-726','Sugandika Kumari','Sugandika','19801847134',2,'0757518360','sugandikaEMP-726@sltb.lk','No 15/A, Horana Road, Alubomulla','0749523077',NULL,4,3,10,1,'2017-10-05',3,_binary '\0'),(391,'EMP-727','Dinesh Chandimal','Dinesh','19962439271',1,'0771371331','dineshEMP-727@sltb.lk','No 42, Avissawella Road, Maharagama','0766009955',NULL,4,3,10,1,'2021-02-09',3,_binary '\0'),(392,'EMP-728','Charith Asalanka','Charith','19738553999',1,'0787870897','charithEMP-728@sltb.lk','No 37, New Town, Polonnaruwa','0762093503',NULL,4,5,7,1,'2016-09-17',2,_binary '\0'),(393,'EMP-729','Harshitha Samarawickrama','Harshitha','19611589350',2,'0723827671','harshithaEMP-729@sltb.lk','No 37, New Town, Polonnaruwa','0756685562',NULL,4,2,3,1,'2016-06-30',4,_binary '\0'),(394,'EMP-730','Nilakshi de Silva','Nilakshi','19828979097',1,'0767444406','nilakshiEMP-730@sltb.lk','No 105, Puttalam Road, Nikaweratiya','0743908052',NULL,4,2,6,1,'2009-05-01',3,_binary '\0'),(395,'EMP-731','Roshan Perera','Roshan','19679545297',1,'0783255405','roshanEMP-731@sltb.lk','No 37, New Town, Polonnaruwa','0701935955',NULL,4,5,12,1,'2013-04-30',4,_binary '\0'),(396,'EMP-732','Pathum Nissanka','Pathum','19684757709',1,'0726928571','pathumEMP-732@sltb.lk','No 19, Matara Road, Weligama','0767176054',NULL,4,4,7,1,'2010-04-06',4,_binary '\0'),(397,'EMP-733','Harshitha Samarawickrama','Harshitha','19832102139',1,'0712591587','harshithaEMP-733@sltb.lk','No 73, Beach Road, Hikkaduwa','0753105642',NULL,4,5,7,2,'2008-04-18',3,_binary '\0'),(398,'EMP-734','Shehan Jayawardena','Shehan','19836614200',2,'0777335029','shehanEMP-734@sltb.lk','No 37, New Town, Polonnaruwa','0774198068',NULL,4,1,8,1,'2009-03-24',4,_binary '\0'),(399,'EMP-735','Asitha Fernando','Asitha','19941655145',1,'0776054684','asithaEMP-735@sltb.lk','No 204, Palali Road, Jaffna','0791106633',NULL,4,3,10,1,'2010-01-16',3,_binary '\0'),(400,'EMP-736','Shehan Jayawardena','Shehan','19695383918',2,'0746330647','shehanEMP-736@sltb.lk','No 92, Colombo Road, Gampaha','0743744846',NULL,4,4,7,1,'2008-06-29',4,_binary '\0'),(401,'EMP-737','Charith Asalanka','Charith','19613845913',1,'0761876417','charithEMP-737@sltb.lk','No 15/A, Horana Road, Alubomulla','0742822745',NULL,4,4,11,1,'2008-11-25',1,_binary '\0'),(402,'EMP-738','Charith Asalanka','Charith','19786253911',1,'0763080884','charithEMP-738@sltb.lk','No 5, A9 Road, Habarana','0754798529',NULL,4,5,12,1,'2007-12-24',1,_binary '\0'),(403,'EMP-739','Wanindu Hasaranga','Wanindu','19814047570',2,'0765418522','waninduEMP-739@sltb.lk','No 92, Colombo Road, Gampaha','0719582889',NULL,4,3,10,1,'2022-10-03',1,_binary '\0'),(404,'EMP-740','Kavinda Bandara','Kavinda','19675308803',1,'0706219407','kavindaEMP-740@sltb.lk','No 66, Harbour Road, Trincomalee','0706901979',NULL,4,4,7,1,'2007-08-27',4,_binary '\0'),(405,'EMP-741','Kavisha Dilhari','Kavisha','19943331041',1,'0748890929','kavishaEMP-741@sltb.lk','No 84, Katugastota Road, Kandy','0784712801',NULL,4,4,7,1,'2016-09-01',4,_binary '\0'),(406,'EMP-742','Pathum Nissanka','Pathum','19708194416',2,'0787811843','pathumEMP-742@sltb.lk','No 15/A, Horana Road, Alubomulla','0792949095',NULL,4,2,9,1,'2006-02-17',2,_binary '\0'),(407,'EMP-743','Kavinda Bandara','Kavinda','19717165608',2,'0756327783','kavindaEMP-743@sltb.lk','No 15/A, Horana Road, Alubomulla','0778982037',NULL,4,1,8,2,'2012-08-26',1,_binary '\0'),(408,'EMP-744','Harshitha Samarawickrama','Harshitha','19962205360',2,'0712419927','harshithaEMP-744@sltb.lk','No 61, Kurunegala Road, Narammala','0762328002',NULL,4,4,7,1,'2009-02-14',4,_binary '\0'),(409,'EMP-745','Wanindu Hasaranga','Wanindu','19761889233',1,'0775244967','waninduEMP-745@sltb.lk','No 84, Katugastota Road, Kandy','0721374560',NULL,4,1,4,1,'2008-05-11',2,_binary '\0'),(410,'EMP-746','Roshan Perera','Roshan','19739649379',1,'0772630831','roshanEMP-746@sltb.lk','No 73, Beach Road, Hikkaduwa','0755853674',NULL,4,1,1,1,'2012-09-26',2,_binary '\0'),(411,'EMP-747','Kavinda Bandara','Kavinda','19915388239',1,'0776186849','kavindaEMP-747@sltb.lk','No 14, Kalmunai Road, Batticaloa','0705050924',NULL,4,5,12,1,'2017-07-14',1,_binary '\0'),(412,'EMP-748','Anushka Sanjeewani','Anushka','19906108354',2,'0747543581','anushkaEMP-748@sltb.lk','No 15/A, Horana Road, Alubomulla','0752278563',NULL,4,1,1,2,'2018-03-31',3,_binary '\0'),(413,'EMP-749','Kavisha Dilhari','Kavisha','19822597370',2,'0725886601','kavishaEMP-749@sltb.lk','No 84, Katugastota Road, Kandy','0759160243',NULL,4,1,2,1,'2009-11-11',1,_binary '\0'),(414,'EMP-750','Kavinda Bandara','Kavinda','19675495905',1,'0756236739','kavindaEMP-750@sltb.lk','No 5, A9 Road, Habarana','0772672491',NULL,4,4,7,1,'2010-02-13',2,_binary '\0'),(415,'EMP-751','Roshan Perera','Roshan','19717546754',2,'0799904261','roshanEMP-751@sltb.lk','No 15/A, Horana Road, Alubomulla','0724360951',NULL,4,2,9,1,'2018-08-22',3,_binary '\0'),(416,'EMP-752','Chamari Athapaththu','Chamari','19715558572',2,'0749545321','chamariEMP-752@sltb.lk','No 73, Beach Road, Hikkaduwa','0792706336',NULL,4,3,10,1,'2022-10-23',4,_binary '\0'),(417,'EMP-753','Hiruni Silva','Hiruni','19606386376',2,'0793163675','hiruniEMP-753@sltb.lk','No 92, Colombo Road, Gampaha','0789023585',NULL,4,3,10,1,'2008-04-12',1,_binary '\0'),(418,'EMP-754','Shehan Jayawardena','Shehan','19661506474',2,'0715512047','shehanEMP-754@sltb.lk','No 61, Kurunegala Road, Narammala','0721534462',NULL,4,4,11,1,'2016-11-13',2,_binary '\0'),(419,'EMP-755','Harshitha Samarawickrama','Harshitha','19924922910',2,'0783406999','harshithaEMP-755@sltb.lk','No 19, Matara Road, Weligama','0748990277',NULL,4,3,10,1,'2016-02-17',2,_binary '\0'),(420,'EMP-756','Wanindu Hasaranga','Wanindu','19694496013',1,'0706845323','waninduEMP-756@sltb.lk','No 73, Beach Road, Hikkaduwa','0716374293',NULL,4,4,7,1,'2019-05-16',3,_binary '\0'),(421,'EMP-757','Harshitha Samarawickrama','Harshitha','19609225229',1,'0759099162','harshithaEMP-757@sltb.lk','No 92, Colombo Road, Gampaha','0762706682',NULL,4,3,10,1,'2005-09-28',1,_binary '\0'),(422,'EMP-758','Dinesh Chandimal','Dinesh','19909152177',1,'0762527400','dineshEMP-758@sltb.lk','No 92, Colombo Road, Gampaha','0783846796',NULL,4,4,11,1,'2021-03-23',2,_binary '\0'),(423,'EMP-759','Nilakshi de Silva','Nilakshi','19705974027',1,'0785319126','nilakshiEMP-759@sltb.lk','No 61, Kurunegala Road, Narammala','0747906860',NULL,4,5,7,1,'2020-10-28',1,_binary '\0'),(424,'EMP-760','Shehan Jayawardena','Shehan','19948705838',2,'0719250252','shehanEMP-760@sltb.lk','No 15/A, Horana Road, Alubomulla','0767455808',NULL,4,4,7,1,'2010-11-22',3,_binary '\0'),(425,'EMP-761','Nilakshi de Silva','Nilakshi','19752746759',1,'0745604481','nilakshiEMP-761@sltb.lk','No 204, Palali Road, Jaffna','0788371585',NULL,4,2,3,1,'2016-09-02',4,_binary '\0'),(426,'EMP-762','Wanindu Hasaranga','Wanindu','19847179658',2,'0778120348','waninduEMP-762@sltb.lk','No 204, Palali Road, Jaffna','0795445372',NULL,4,3,10,2,'2008-01-23',3,_binary '\0'),(428,'EMP-0627','Minuri Navoddika','Navo','200264578451',2,'0716548754','NavoEMP-0628@sltb.lk','Walpola,Papiliyawela','0571412488',NULL,1,4,7,1,'2026-07-01',1,_binary '\0');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeestatus`
--

DROP TABLE IF EXISTS `employeestatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employeestatus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeestatus`
--

LOCK TABLES `employeestatus` WRITE;
/*!40000 ALTER TABLE `employeestatus` DISABLE KEYS */;
INSERT INTO `employeestatus` VALUES (1,'Active'),(2,'Suspend'),(3,'Resigned'),(4,'On leave');
/*!40000 ALTER TABLE `employeestatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeetype`
--

DROP TABLE IF EXISTS `employeetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employeetype` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeetype`
--

LOCK TABLES `employeetype` WRITE;
/*!40000 ALTER TABLE `employeetype` DISABLE KEYS */;
INSERT INTO `employeetype` VALUES (1,'Permanent'),(2,'Contract'),(3,'Temporary'),(4,'Probationers'),(5,'Casual');
/*!40000 ALTER TABLE `employeetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `farecollection`
--

DROP TABLE IF EXISTS `farecollection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `farecollection` (
  `id` int NOT NULL AUTO_INCREMENT,
  `branch_id` int NOT NULL,
  `tripexecution_id` int NOT NULL,
  `ticketmachine_id` int NOT NULL,
  `totaltickets` int DEFAULT NULL,
  `cashcollected` decimal(10,2) DEFAULT NULL,
  `digitalpayments` decimal(10,2) DEFAULT NULL,
  `isreconciled` bit(1) DEFAULT NULL,
  `tocollected` time DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_farecollection_branch1_idx` (`branch_id`),
  KEY `fk_farecollection_ticketmachine1_idx` (`ticketmachine_id`),
  KEY `fk_farecollection_tripexecution1_idx` (`tripexecution_id`),
  KEY `fk_farecollection_user1_idx` (`user_id`),
  CONSTRAINT `fk_farecollection_branch1` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`),
  CONSTRAINT `fk_farecollection_ticketmachine1` FOREIGN KEY (`ticketmachine_id`) REFERENCES `ticketmachine` (`id`),
  CONSTRAINT `fk_farecollection_tripexecution1` FOREIGN KEY (`tripexecution_id`) REFERENCES `tripexecution` (`id`),
  CONSTRAINT `fk_farecollection_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `farecollection`
--

LOCK TABLES `farecollection` WRITE;
/*!40000 ALTER TABLE `farecollection` DISABLE KEYS */;
/*!40000 ALTER TABLE `farecollection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fueltype`
--

DROP TABLE IF EXISTS `fueltype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fueltype` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fueltype`
--

LOCK TABLES `fueltype` WRITE;
/*!40000 ALTER TABLE `fueltype` DISABLE KEYS */;
INSERT INTO `fueltype` VALUES (1,'Disel');
/*!40000 ALTER TABLE `fueltype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gender`
--

DROP TABLE IF EXISTS `gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gender` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gender`
--

LOCK TABLES `gender` WRITE;
/*!40000 ALTER TABLE `gender` DISABLE KEYS */;
INSERT INTO `gender` VALUES (1,'Male'),(2,'Female'),(3,'Other');
/*!40000 ALTER TABLE `gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grn`
--

DROP TABLE IF EXISTS `grn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grn` (
  `id` int NOT NULL AUTO_INCREMENT,
  `branch_id` int NOT NULL,
  `partrequest_id` int NOT NULL,
  `number` varchar(45) DEFAULT NULL,
  `doreceived` date DEFAULT NULL,
  `remarks` text,
  `grnstatus_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_grn_branch1_idx` (`branch_id`),
  KEY `fk_grn_grnstatus1_idx` (`grnstatus_id`),
  KEY `fk_grn_partrequest1_idx` (`partrequest_id`),
  KEY `fk_grn_user1_idx` (`user_id`),
  CONSTRAINT `fk_grn_branch1` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`),
  CONSTRAINT `fk_grn_grnstatus1` FOREIGN KEY (`grnstatus_id`) REFERENCES `grnstatus` (`id`),
  CONSTRAINT `fk_grn_partrequest1` FOREIGN KEY (`partrequest_id`) REFERENCES `partrequest` (`id`),
  CONSTRAINT `fk_grn_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grn`
--

LOCK TABLES `grn` WRITE;
/*!40000 ALTER TABLE `grn` DISABLE KEYS */;
INSERT INTO `grn` VALUES (1,1,1,'GRN-20260725-001','2026-07-25','All items fully received',3,8),(2,1,1,'GRN-20260725-001','2026-07-26','All items fully received',3,8),(3,1,2,'GRN-20260725-002','2026-07-26','All items fully received',3,8),(4,1,3,'GRN-20260725-003','2026-07-26','All items fully received',3,8),(5,1,4,'GRN-20260725-004','2026-07-26','All items fully received',3,8),(6,1,5,'GRN-20260725-005','2026-07-26','Draft GRN for shock absorbers',1,8);
/*!40000 ALTER TABLE `grn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grnpartrequestitem`
--

DROP TABLE IF EXISTS `grnpartrequestitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grnpartrequestitem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `grn_id` int NOT NULL,
  `partrequestitem_id` int NOT NULL,
  `quantity` decimal(10,3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_grn_has_partrequestitem_partrequestitem1_idx` (`partrequestitem_id`),
  KEY `fk_grn_has_partrequestitem_grn1_idx` (`grn_id`),
  CONSTRAINT `fk_grn_has_partrequestitem_grn1` FOREIGN KEY (`grn_id`) REFERENCES `grn` (`id`),
  CONSTRAINT `fk_grn_has_partrequestitem_partrequestitem1` FOREIGN KEY (`partrequestitem_id`) REFERENCES `partrequestitem` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grnpartrequestitem`
--

LOCK TABLES `grnpartrequestitem` WRITE;
/*!40000 ALTER TABLE `grnpartrequestitem` DISABLE KEYS */;
INSERT INTO `grnpartrequestitem` VALUES (1,1,1,5.000),(2,1,2,2.000),(3,1,1,10.000),(4,2,2,20.000),(5,3,3,5.000),(6,4,4,8.000),(7,5,5,12.000);
/*!40000 ALTER TABLE `grnpartrequestitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grnstatus`
--

DROP TABLE IF EXISTS `grnstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grnstatus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grnstatus`
--

LOCK TABLES `grnstatus` WRITE;
/*!40000 ALTER TABLE `grnstatus` DISABLE KEYS */;
INSERT INTO `grnstatus` VALUES (1,'Draft'),(2,'Partially Received'),(3,'Received');
/*!40000 ALTER TABLE `grnstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incident`
--

DROP TABLE IF EXISTS `incident`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `incident` (
  `id` int NOT NULL AUTO_INCREMENT,
  `branch_id` int NOT NULL,
  `tripexecution_id` int NOT NULL,
  `incidenttype_id` int NOT NULL,
  `regionalarea_id` int NOT NULL,
  `toreported` time DEFAULT NULL,
  `doreported` date DEFAULT NULL,
  `odometeratincident` int DEFAULT NULL,
  `remarks` varchar(45) DEFAULT NULL,
  `incidentstatus_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_incident_incidenttype1_idx` (`incidenttype_id`),
  KEY `fk_incident_incidentstatus1_idx` (`incidentstatus_id`),
  KEY `fk_incident_tripexecution1_idx` (`tripexecution_id`),
  KEY `fk_incident_regionaloffice1_idx` (`regionalarea_id`),
  KEY `fk_incident_user1_idx` (`user_id`),
  KEY `fk_incident_branch1_idx` (`branch_id`),
  CONSTRAINT `fk_incident_branch1` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`),
  CONSTRAINT `fk_incident_incidentstatus1` FOREIGN KEY (`incidentstatus_id`) REFERENCES `incidentstatus` (`id`),
  CONSTRAINT `fk_incident_incidenttype1` FOREIGN KEY (`incidenttype_id`) REFERENCES `incidenttype` (`id`),
  CONSTRAINT `fk_incident_regionaloffice1` FOREIGN KEY (`regionalarea_id`) REFERENCES `regionaloffice` (`id`),
  CONSTRAINT `fk_incident_tripexecution1` FOREIGN KEY (`tripexecution_id`) REFERENCES `tripexecution` (`id`),
  CONSTRAINT `fk_incident_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incident`
--

LOCK TABLES `incident` WRITE;
/*!40000 ALTER TABLE `incident` DISABLE KEYS */;
/*!40000 ALTER TABLE `incident` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incidentstatus`
--

DROP TABLE IF EXISTS `incidentstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `incidentstatus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incidentstatus`
--

LOCK TABLES `incidentstatus` WRITE;
/*!40000 ALTER TABLE `incidentstatus` DISABLE KEYS */;
INSERT INTO `incidentstatus` VALUES (1,'Reported'),(2,'In Progress'),(3,'Vehicle Recovery'),(4,'Pending Allocation'),(5,'Resolved'),(6,'Closed');
/*!40000 ALTER TABLE `incidentstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incidenttype`
--

DROP TABLE IF EXISTS `incidenttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `incidenttype` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incidenttype`
--

LOCK TABLES `incidenttype` WRITE;
/*!40000 ALTER TABLE `incidenttype` DISABLE KEYS */;
INSERT INTO `incidenttype` VALUES (1,'Mechanical Breakdown'),(2,'Accident'),(3,'Tyre Puncture'),(4,'Medical '),(5,'Weather');
/*!40000 ALTER TABLE `incidenttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incidentvehicleallocation`
--

DROP TABLE IF EXISTS `incidentvehicleallocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `incidentvehicleallocation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `incident_id` int NOT NULL,
  `vehicle_id` int NOT NULL,
  `providedbranch_id` int NOT NULL,
  `incidentvehicleallocationstatus_id` int NOT NULL,
  `doassigned` datetime DEFAULT NULL,
  `doreleased` datetime DEFAULT NULL,
  `user_id` int NOT NULL,
  `branch_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_incidentvehicleallocation_incident1_idx` (`incident_id`),
  KEY `fk_incidentvehicleallocation_vehicle1_idx` (`vehicle_id`),
  KEY `fk_incidentvehicleallocation_branch1_idx` (`providedbranch_id`),
  KEY `fk_incidentvehicleallocation_incidentvehicleallocationstatu_idx` (`incidentvehicleallocationstatus_id`),
  KEY `fk_incidentvehicleallocation_user1_idx` (`user_id`),
  KEY `fk_incidentvehicleallocation_branch2_idx` (`branch_id`),
  CONSTRAINT `fk_incidentvehicleallocation_branch1` FOREIGN KEY (`providedbranch_id`) REFERENCES `branch` (`id`),
  CONSTRAINT `fk_incidentvehicleallocation_branch2` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`),
  CONSTRAINT `fk_incidentvehicleallocation_incident1` FOREIGN KEY (`incident_id`) REFERENCES `incident` (`id`),
  CONSTRAINT `fk_incidentvehicleallocation_incidentvehicleallocationstatus1` FOREIGN KEY (`incidentvehicleallocationstatus_id`) REFERENCES `incidentvehicleallocationstatus` (`id`),
  CONSTRAINT `fk_incidentvehicleallocation_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `fk_incidentvehicleallocation_vehicle1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incidentvehicleallocation`
--

LOCK TABLES `incidentvehicleallocation` WRITE;
/*!40000 ALTER TABLE `incidentvehicleallocation` DISABLE KEYS */;
/*!40000 ALTER TABLE `incidentvehicleallocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incidentvehicleallocationstatus`
--

DROP TABLE IF EXISTS `incidentvehicleallocationstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `incidentvehicleallocationstatus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incidentvehicleallocationstatus`
--

LOCK TABLES `incidentvehicleallocationstatus` WRITE;
/*!40000 ALTER TABLE `incidentvehicleallocationstatus` DISABLE KEYS */;
INSERT INTO `incidentvehicleallocationstatus` VALUES (1,'Assigned'),(2,'In Progress'),(3,'Released'),(4,'Cancelled');
/*!40000 ALTER TABLE `incidentvehicleallocationstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `licensecategory`
--

DROP TABLE IF EXISTS `licensecategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `licensecategory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `licensecategory`
--

LOCK TABLES `licensecategory` WRITE;
/*!40000 ALTER TABLE `licensecategory` DISABLE KEYS */;
INSERT INTO `licensecategory` VALUES (1,'D'),(2,'D1');
/*!40000 ALTER TABLE `licensecategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `make`
--

DROP TABLE IF EXISTS `make`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `make` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `make`
--

LOCK TABLES `make` WRITE;
/*!40000 ALTER TABLE `make` DISABLE KEYS */;
INSERT INTO `make` VALUES (1,'Ashok Leyland'),(2,'Tata'),(3,'Isuzu'),(4,'Mercedes-Benz'),(5,'Metro'),(6,'AEC'),(7,'Hino'),(8,'Mitsubishi'),(9,'Volvo'),(10,'Greatewall'),(11,'Youtong'),(12,'Kinlong');
/*!40000 ALTER TABLE `make` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model`
--

DROP TABLE IF EXISTS `model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `make_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_model_make1_idx` (`make_id`),
  CONSTRAINT `fk_model_make1` FOREIGN KEY (`make_id`) REFERENCES `make` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model`
--

LOCK TABLES `model` WRITE;
/*!40000 ALTER TABLE `model` DISABLE KEYS */;
INSERT INTO `model` VALUES (1,'Ashok Leyland 12M RE',1),(2,'Ashok Leyland Viking 193',1),(3,'Ashok Leyland Viking 210 Turbo',1),(4,'Ashok Leyland Comet Minior',1),(5,'Ashok Leyland Viking 222 Hinopower',1),(6,'Ashok Leyland Stag bus',1),(7,'TATA LP 1510/52',2),(8,'TATA LPO 1313/55',2),(9,'TATA LP 1210/36',2),(10,'TATA LP 1210/52',2),(11,'TATA LP 1510/36',2),(12,'TATA LPO 1313/47',2),(13,'TATA LP 909/36',2);
/*!40000 ALTER TABLE `model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module`
--

DROP TABLE IF EXISTS `module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `module` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module`
--

LOCK TABLES `module` WRITE;
/*!40000 ALTER TABLE `module` DISABLE KEYS */;
INSERT INTO `module` VALUES (1,'User'),(2,'Branch'),(3,'Employee'),(4,'Driver'),(5,'Vehicle'),(6,'Route'),(7,'Permit'),(8,'Trip'),(9,'Trip Execution'),(10,'Roster'),(11,'Incident'),(12,'Incident Vehicle Allocation'),(13,'Fare Collection'),(14,'Spare Part'),(15,'Spare Part Request'),(16,'GRN'),(17,'Vehicle Service'),(18,'Dashboard'),(19,'Roster Shift Assignment'),(20,'Conductor'),(21,'Privilege'),(22,'Report');
/*!40000 ALTER TABLE `module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification` (
  `id` int NOT NULL AUTO_INCREMENT,
  `branch_id` int NOT NULL,
  `user_id` int NOT NULL,
  `role_id` int NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `message` text,
  `isread` bit(1) DEFAULT b'0',
  `tocreated` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_table1_branch1_idx` (`branch_id`),
  KEY `fk_table1_user1_idx` (`user_id`),
  KEY `fk_table1_role1_idx` (`role_id`),
  CONSTRAINT `fk_table1_branch1` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`),
  CONSTRAINT `fk_table1_role1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `fk_table1_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opcalender`
--

DROP TABLE IF EXISTS `opcalender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `opcalender` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `mon` bit(1) DEFAULT NULL,
  `tue` bit(1) DEFAULT NULL,
  `wed` bit(1) DEFAULT NULL,
  `thu` bit(1) DEFAULT NULL,
  `fri` bit(1) DEFAULT NULL,
  `sat` bit(1) DEFAULT NULL,
  `sun` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opcalender`
--

LOCK TABLES `opcalender` WRITE;
/*!40000 ALTER TABLE `opcalender` DISABLE KEYS */;
INSERT INTO `opcalender` VALUES (1,'Daily',_binary '',_binary '',_binary '',_binary '',_binary '',_binary '',_binary ''),(2,'Weekday Only',_binary '',_binary '',_binary '',_binary '',_binary '',_binary '\0',_binary '\0'),(3,'Weekend Only',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary ''),(4,'Mon-Wed-Fri',_binary '',_binary '\0',_binary '',_binary '\0',_binary '',_binary '\0',_binary '\0'),(5,'Tue-Thu-Sat',_binary '\0',_binary '',_binary '\0',_binary '',_binary '\0',_binary '',_binary '\0'),(6,'Sunday Only',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '');
/*!40000 ALTER TABLE `opcalender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation`
--

DROP TABLE IF EXISTS `operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `operation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `displayname` varchar(45) DEFAULT NULL,
  `operation` varchar(45) DEFAULT NULL,
  `module_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_operation_module1_idx` (`module_id`),
  CONSTRAINT `fk_operation_module1` FOREIGN KEY (`module_id`) REFERENCES `module` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation`
--

LOCK TABLES `operation` WRITE;
/*!40000 ALTER TABLE `operation` DISABLE KEYS */;
INSERT INTO `operation` VALUES (1,'View Users','view',1),(2,'Add User','add',1),(3,'Update User','update',1),(4,'Delete User','delete',1),(5,'View Branch','view',2),(6,'Add Branch','add',2),(7,'Update Branch','update',2),(8,'Delete Branch','delete',2),(9,'View Employee','view',3),(10,'Add Employee','add',3),(11,'Update Employee','update',3),(12,'Delete Employee','delete',3),(13,'View Driver','view',4),(14,'Add Driver','add',4),(15,'Update Driver','update',4),(17,'View Vehicle','view',5),(18,'Add Vehicle','add',5),(19,'Update Vehicle','update',5),(20,'Delete Vehicle','delete',5),(21,'View Route','view',6),(22,'Add Route','add',6),(23,'Update Route','update',6),(24,'Delete Route','delete',6),(25,'View Permit','view',7),(26,'Add Permit','add',7),(27,'Update Permit','update',7),(28,'Delete Permit','delete',7),(29,'View Trip','view',8),(30,'Add Trip','add',8),(33,'View','view',9),(34,'Initialize','initialize',9),(35,'Generate  Ass','generate-assignments',9),(36,'checked in ','checked-in',9),(37,'View Roster','view',10),(41,'View Incident','view',11),(42,'Add Incident','add',11),(43,'In Progress','start',11),(44,'V ehicleRecovery','recovery',11),(45,'View Incident Vehicle Allocation','view',12),(46,'Add Incident Vehicle Allocation','add',12),(47,'In Progress','in progress',12),(48,'Released','released',12),(49,'View Fare Collection','view',13),(50,'Add Fare Collection','add',13),(51,'ReconcileFare Collection','reconcile',13),(53,'View Spare Part','view',14),(54,'Add Spare Part','add',14),(55,'Update Spare Part','update',14),(56,'Delete Spare Part','delete',14),(57,'View  Request','view',15),(58,'Add  Request','add',15),(59,'Update Request','update',15),(60,'Approve Request','approve',15),(61,'View GRN','view',16),(63,'Update GRN','update',16),(65,'View Service','view',17),(66,'Add Service','add',17),(67,'Start Service','start',17),(68,'Hold Service','hold',17),(69,'View Dashboard','view',18),(70,'Permit Transfer','transfer',7),(71,'Trip Activate','activate',8),(72,'Trip Suspend','suspend',8),(73,'Trip Discontinue','discontinue',8),(74,'Diispatched ','dispatched',9),(75,'Arrived','arrived',9),(76,'Breakdown ','breakdown',9),(77,'Complete ','completed',9),(78,'Cancelled ','cancelled',9),(80,'Roster Shift Ass View','view',19),(81,'Generate','generate',19),(82,'Approved','approved',19),(83,'Cancelled','cancelled',19),(84,'Ppending Allocation','pending allocation',11),(85,'Incident Resolve','resolve',11),(86,'Incident Close','close',11),(87,'Cancelled','cancelled',12),(88,'Reject Request','reject',15),(89,'Complete Service','complete',17),(90,'Conductor View','view',20),(91,'Conductor Add','add',20),(92,'Conductor Update','update',20),(93,'Privilege View','view',21),(94,'Privilege Assign','assign',21),(95,'Privilege Revoke','revoke',21),(96,'Add Roster','add',10),(97,'Report View','view',22);
/*!40000 ALTER TABLE `operation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `originterminal`
--

DROP TABLE IF EXISTS `originterminal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `originterminal` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `originterminal`
--

LOCK TABLES `originterminal` WRITE;
/*!40000 ALTER TABLE `originterminal` DISABLE KEYS */;
INSERT INTO `originterminal` VALUES (1,'Colombo','Colombo'),(2,'Rajagiriya','Rajagiriya'),(3,'Kirindiwela','Kirindiwela'),(4,'Sigiriya','Sigiriya'),(5,'Gampaha','Gampaha'),(6,'Avissawella','Avissawella'),(7,'Matale','Matale'),(8,'Kandy','Kandy'),(9,'Matara','Matara'),(10,'Kataragama','Kataragama'),(11,'jaffna','jaffna'),(12,'Panadura','Panadura'),(13,'Moratuwa','Moratuwa'),(14,'Padukka','Padukka');
/*!40000 ALTER TABLE `originterminal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `part`
--

DROP TABLE IF EXISTS `part`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `part` (
  `id` int NOT NULL AUTO_INCREMENT,
  `branch_id` int NOT NULL,
  `partmaster_id` int NOT NULL,
  `qoh` decimal(10,3) DEFAULT NULL,
  `maxlevel` decimal(10,3) DEFAULT NULL,
  `rop` decimal(10,3) DEFAULT NULL,
  `dolastordered` date DEFAULT NULL,
  `remarks` text,
  `partstatus_id` int NOT NULL,
  `deleted` bit(1) DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_part_partstatus1_idx` (`partstatus_id`),
  KEY `fk_part_branch1_idx` (`branch_id`),
  KEY `fk_part_partmaster1_idx` (`partmaster_id`),
  KEY `fk_part_user1_idx` (`user_id`),
  CONSTRAINT `fk_part_branch1` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`),
  CONSTRAINT `fk_part_partmaster1` FOREIGN KEY (`partmaster_id`) REFERENCES `partmaster` (`id`),
  CONSTRAINT `fk_part_partstatus1` FOREIGN KEY (`partstatus_id`) REFERENCES `partstatus` (`id`),
  CONSTRAINT `fk_part_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `part`
--

LOCK TABLES `part` WRITE;
/*!40000 ALTER TABLE `part` DISABLE KEYS */;
INSERT INTO `part` VALUES (1,1,1,50.000,100.000,20.000,'2026-07-01','Brake pads stocked',1,_binary '\0',8),(2,1,2,10.000,50.000,15.000,'2026-07-02','Oil filters running low',2,_binary '\0',8),(3,1,3,0.000,30.000,10.000,'2026-06-28','Clutch plates out of stock',3,_binary '\0',8),(4,1,4,5.000,40.000,10.000,'2026-07-03','Radiator hoses limited',2,_binary '\0',8),(5,1,5,25.000,60.000,15.000,'2026-07-04','Shock absorbers available',1,_binary '\0',8),(6,1,6,0.000,20.000,5.000,'2026-06-30','Headlight bulbs decommissioned',4,_binary '\0',8),(7,1,7,12.000,40.000,10.000,'2026-07-05','Door handles stocked',1,_binary '\0',8),(8,1,8,200.000,500.000,100.000,'2026-07-06','Engine oil bulk available',1,_binary '\0',8),(9,1,9,8.000,50.000,15.000,'2026-07-07','Air filters low stock',2,_binary '\0',8),(10,1,10,0.000,10.000,5.000,'2026-06-29','Gearbox assemblies out of stock',3,_binary '\0',8),(11,1,1,60.000,100.000,20.000,'2026-07-08','Brake pads replenished',1,_binary '\0',8),(12,1,2,5.000,50.000,15.000,'2026-07-09','Oil filters nearly empty',2,_binary '\0',8),(13,1,3,0.000,30.000,10.000,'2026-07-10','Clutch plates still out',3,_binary '\0',8),(14,1,4,15.000,40.000,10.000,'2026-07-11','Radiator hoses restocked',1,_binary '\0',8),(15,1,5,30.000,60.000,15.000,'2026-07-12','Shock absorbers available',1,_binary '\0',8),(16,1,6,0.000,20.000,5.000,'2026-07-13','Headlight bulbs discontinued',4,_binary '\0',8),(17,1,7,20.000,40.000,10.000,'2026-07-14','Door handles replenished',1,_binary '\0',8),(18,1,8,150.000,500.000,100.000,'2026-07-15','Engine oil stock updated',1,_binary '\0',8),(19,1,9,2.000,50.000,15.000,'2026-07-16','Air filters critical low',2,_binary '\0',8),(20,1,10,0.000,10.000,5.000,'2026-07-17','Gearbox assemblies still out',3,_binary '\0',8),(21,1,1,0.000,100.000,20.000,'2026-07-20','Brake pads out of stock',3,_binary '\0',8),(22,1,2,0.000,50.000,15.000,'2026-07-21','Oil filters out of stock',3,_binary '\0',8),(23,1,3,0.000,30.000,10.000,'2026-07-22','Clutch plates out of stock',3,_binary '\0',8),(24,1,4,0.000,40.000,10.000,'2026-07-23','Radiator hoses out of stock',3,_binary '\0',8),(25,1,5,0.000,60.000,15.000,'2026-07-24','Shock absorbers out of stock',3,_binary '\0',8);
/*!40000 ALTER TABLE `part` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partcategory`
--

DROP TABLE IF EXISTS `partcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partcategory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partcategory`
--

LOCK TABLES `partcategory` WRITE;
/*!40000 ALTER TABLE `partcategory` DISABLE KEYS */;
INSERT INTO `partcategory` VALUES (1,'Engine Parts'),(2,'Brake System'),(3,'Electrical Components'),(4,'Suspension Parts'),(5,'Body Parts'),(6,'Lubricants'),(7,'Filters'),(8,'Transmission Parts');
/*!40000 ALTER TABLE `partcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partmaster`
--

DROP TABLE IF EXISTS `partmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partmaster` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sku` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `partcategory_id` int NOT NULL,
  `unitofmeasure_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_partmaster_partcategory1_idx` (`partcategory_id`),
  KEY `fk_partmaster_unitofmeasure1_idx` (`unitofmeasure_id`),
  CONSTRAINT `fk_partmaster_partcategory1` FOREIGN KEY (`partcategory_id`) REFERENCES `partcategory` (`id`),
  CONSTRAINT `fk_partmaster_unitofmeasure1` FOREIGN KEY (`unitofmeasure_id`) REFERENCES `unitofmeasure` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partmaster`
--

LOCK TABLES `partmaster` WRITE;
/*!40000 ALTER TABLE `partmaster` DISABLE KEYS */;
INSERT INTO `partmaster` VALUES (1,'SKU-001','Brake Pad',2,1),(2,'SKU-002','Engine Oil Filter',7,1),(3,'SKU-003','Clutch Plate',8,5),(4,'SKU-004','Radiator Hose',1,3),(5,'SKU-005','Shock Absorber',4,1),(6,'SKU-006','Headlight Bulb',3,1),(7,'SKU-007','Door Handle',5,1),(8,'SKU-008','Engine Oil',6,2),(9,'SKU-009','Air Filter',7,1),(10,'SKU-010','Gearbox Assembly',8,5);
/*!40000 ALTER TABLE `partmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partrequest`
--

DROP TABLE IF EXISTS `partrequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partrequest` (
  `id` int NOT NULL AUTO_INCREMENT,
  `branch_id` int NOT NULL,
  `number` varchar(45) DEFAULT NULL,
  `dorequested` date DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `partrequeststatus_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_request_branch1_idx` (`branch_id`),
  KEY `fk_partrequest_partrequeststatus1_idx` (`partrequeststatus_id`),
  KEY `fk_partrequest_user1_idx` (`user_id`),
  CONSTRAINT `fk_partrequest_partrequeststatus1` FOREIGN KEY (`partrequeststatus_id`) REFERENCES `partrequeststatus` (`id`),
  CONSTRAINT `fk_partrequest_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `fk_request_branch1` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partrequest`
--

LOCK TABLES `partrequest` WRITE;
/*!40000 ALTER TABLE `partrequest` DISABLE KEYS */;
INSERT INTO `partrequest` VALUES (1,1,'REQ-20260725-001','2026-07-25','Requesting out of stock parts for urgent maintenance',1,8),(2,1,'REQ-20260725-001','2026-07-25','Request brake pads urgently',1,8),(3,1,'REQ-20260725-002','2026-07-25','Request oil filters urgently',1,8),(4,1,'REQ-20260725-003','2026-07-25','Request clutch plates urgently',1,8),(5,1,'REQ-20260725-004','2026-07-25','Request radiator hoses urgently',1,8),(6,1,'REQ-20260725-005','2026-07-25','Request shock absorbers urgently',1,8);
/*!40000 ALTER TABLE `partrequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partrequestitem`
--

DROP TABLE IF EXISTS `partrequestitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partrequestitem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `partrequest_id` int NOT NULL,
  `part_id` int NOT NULL,
  `quantity` decimal(10,3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_partrequest_has_part_part1_idx` (`part_id`),
  KEY `fk_partrequest_has_part_partrequest1_idx` (`partrequest_id`),
  CONSTRAINT `fk_partrequest_has_part_part1` FOREIGN KEY (`part_id`) REFERENCES `part` (`id`),
  CONSTRAINT `fk_partrequest_has_part_partrequest1` FOREIGN KEY (`partrequest_id`) REFERENCES `partrequest` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partrequestitem`
--

LOCK TABLES `partrequestitem` WRITE;
/*!40000 ALTER TABLE `partrequestitem` DISABLE KEYS */;
INSERT INTO `partrequestitem` VALUES (1,1,3,5.000),(2,1,10,2.000),(3,1,1,10.000),(4,2,2,20.000),(5,3,3,5.000),(6,4,4,8.000),(7,5,5,12.000);
/*!40000 ALTER TABLE `partrequestitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partrequeststatus`
--

DROP TABLE IF EXISTS `partrequeststatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partrequeststatus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partrequeststatus`
--

LOCK TABLES `partrequeststatus` WRITE;
/*!40000 ALTER TABLE `partrequeststatus` DISABLE KEYS */;
INSERT INTO `partrequeststatus` VALUES (1,'Pending'),(2,'Approved'),(3,'Rejected'),(4,'Completed');
/*!40000 ALTER TABLE `partrequeststatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partstatus`
--

DROP TABLE IF EXISTS `partstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partstatus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partstatus`
--

LOCK TABLES `partstatus` WRITE;
/*!40000 ALTER TABLE `partstatus` DISABLE KEYS */;
INSERT INTO `partstatus` VALUES (1,'Available'),(2,'Low stock'),(3,'Out of stock'),(4,'Decommissioned');
/*!40000 ALTER TABLE `partstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permite`
--

DROP TABLE IF EXISTS `permite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permite` (
  `id` int NOT NULL AUTO_INCREMENT,
  `branch_id` int NOT NULL,
  `route_id` int NOT NULL,
  `number` char(16) DEFAULT NULL,
  `vehicle_id` int NOT NULL,
  `doissued` date DEFAULT NULL,
  `doexpired` date DEFAULT NULL,
  `notripsperday` int DEFAULT NULL,
  `permitestatus_id` int NOT NULL,
  `servicetype_id` int NOT NULL,
  `durationminutes` int DEFAULT NULL,
  `deleted` bit(1) DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_permite_branch1_idx` (`branch_id`),
  KEY `fk_permite_permitestatus1_idx` (`permitestatus_id`),
  KEY `fk_permite_servicetype1_idx` (`servicetype_id`),
  KEY `fk_permite_vehicle1_idx` (`vehicle_id`),
  KEY `fk_permite_route1_idx` (`route_id`),
  KEY `fk_permite_user1_idx` (`user_id`),
  CONSTRAINT `fk_permite_branch1` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`),
  CONSTRAINT `fk_permite_permitestatus1` FOREIGN KEY (`permitestatus_id`) REFERENCES `permitestatus` (`id`),
  CONSTRAINT `fk_permite_route1` FOREIGN KEY (`route_id`) REFERENCES `route` (`id`),
  CONSTRAINT `fk_permite_servicetype1` FOREIGN KEY (`servicetype_id`) REFERENCES `servicetype` (`id`),
  CONSTRAINT `fk_permite_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `fk_permite_vehicle1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permite`
--

LOCK TABLES `permite` WRITE;
/*!40000 ALTER TABLE `permite` DISABLE KEYS */;
INSERT INTO `permite` VALUES (1,1,1,'4578',1,'2025-09-14','2026-09-14',2,1,1,NULL,_binary '\0',5),(2,1,1,'7845',2,'2025-10-10','2026-10-10',2,1,1,NULL,_binary '\0',5),(3,1,2,'8874',3,'2025-10-10','2026-10-10',2,1,1,NULL,_binary '\0',5),(4,1,3,'9875',3,'2025-11-06','2026-11-06',1,1,3,NULL,_binary '\0',5),(5,1,8,'8975',4,'2025-08-20','2026-08-20',3,1,1,NULL,_binary '\0',5),(6,1,10,'7731',6,'2025-10-10','2026-10-10',5,1,1,NULL,_binary '\0',5),(7,1,5,'7700',10,'2025-11-06','2026-11-06',1,1,4,NULL,_binary '\0',5),(8,1,4,'1203',9,'2025-10-08','2026-10-08',2,1,3,NULL,_binary '\0',5),(9,1,8,'A9005',7,'2026-07-26','2027-07-26',3,3,3,NULL,_binary '\0',5),(10,2,3,'A5547',14,'2026-04-06','2027-04-06',1,3,1,NULL,_binary '\0',5),(11,3,4,'2225',32,'2025-08-29','2026-08-29',2,2,1,NULL,_binary '\0',5),(12,4,8,'1745',45,'2025-05-29','2026-05-29',3,4,3,NULL,_binary '\0',5),(13,2,7,'5225',15,'2026-05-07','2027-05-07',4,1,4,NULL,_binary '\0',5),(14,1,6,'F5792',8,'2026-02-20','2026-02-20',4,2,1,NULL,_binary '\0',5),(15,2,1,'F1715',29,'2025-09-03','2026-09-03',2,4,4,NULL,_binary '\0',5),(16,3,2,'5008',39,'2026-07-25','2027-07-25',2,2,4,NULL,_binary '\0',5),(17,2,1,'4396',16,'2026-05-12','2027-05-12',2,2,3,NULL,_binary '\0',5),(18,4,7,'F5088',48,'2026-05-20','2027-05-20',4,4,4,NULL,_binary '\0',5),(19,3,8,'A2022',33,'2026-07-06','2027-07-06',3,2,3,NULL,_binary '\0',5),(20,2,5,'F5775',29,'2025-11-14','2026-11-14',1,1,1,NULL,_binary '\0',5),(21,2,2,'A8489',16,'2026-07-22','2027-07-22',2,1,3,NULL,_binary '\0',5),(22,2,1,'7023',12,'2026-06-07','2027-06-07',2,4,1,NULL,_binary '\0',5),(23,3,3,'A1223',36,'2025-09-05','2026-09-05',1,1,4,NULL,_binary '\0',5),(24,3,5,'F9669',37,'2026-01-31','2027-01-31',1,4,1,NULL,_binary '\0',5),(25,2,8,'F8495',19,'2026-03-03','2027-03-03',3,4,1,NULL,_binary '\0',5),(26,2,2,'9028',18,'2026-04-08','2027-04-08',2,2,4,NULL,_binary '\0',5),(27,2,4,'A9648',18,'2025-12-25','2026-12-25',2,3,4,NULL,_binary '\0',5),(28,3,10,'2200',41,'2026-03-24','2026-03-24',5,4,4,NULL,_binary '\0',5),(29,2,1,'1672',31,'2026-07-12','2027-07-12',2,4,1,NULL,_binary '\0',5),(30,4,7,'4831',46,'2025-08-24','2026-08-24',4,2,1,NULL,_binary '\0',5),(31,2,4,'A1545',16,'2026-09-03','2027-09-03',2,3,3,NULL,_binary '\0',5),(32,2,4,'7131',25,'2026-10-13','2027-10-13',2,1,4,NULL,_binary '\0',5),(33,4,5,'8909',47,'2025-08-01','2026-08-01',1,1,1,NULL,_binary '\0',5),(34,3,10,'3770',40,'2026-07-31','2027-07-31',5,1,4,NULL,_binary '\0',5),(35,2,10,'8962',16,'2025-11-06','2026-11-06',5,4,3,NULL,_binary '\0',5),(36,3,2,'6493',34,'2025-08-29','2026-08-29',2,2,1,NULL,_binary '\0',5),(37,2,7,'6478',26,'2025-09-30','2026-09-30',4,1,4,NULL,_binary '\0',5),(38,4,1,'3208',46,'2026-06-02','2027-06-02',2,4,3,NULL,_binary '\0',5),(39,2,3,'F5343',20,'2025-08-06','2026-08-06',1,4,1,NULL,_binary '\0',5),(40,4,8,'4162',46,'2026-02-26','2026-02-26',3,3,3,NULL,_binary '\0',5),(41,4,1,'1462',42,'2026-05-01','2027-05-01',2,4,1,NULL,_binary '\0',5),(42,2,9,'A7721',28,'2026-05-19','2026-05-19',5,4,3,NULL,_binary '\0',5),(43,1,8,'5006',2,'2025-08-17','2026-08-17',3,1,3,NULL,_binary '\0',5),(44,3,7,'A5035',38,'2026-06-18','2027-06-18',4,1,1,NULL,_binary '\0',5),(45,2,1,'8612',14,'2026-04-06','2027-04-06',2,1,4,NULL,_binary '\0',5),(46,3,3,'A3824',37,'2026-07-11','2027-07-11',1,1,1,NULL,_binary '\0',5),(47,1,1,'7938',5,'2025-08-07','2026-08-07',2,2,3,NULL,_binary '\0',5),(48,1,6,'A5052',4,'2025-11-22','2026-11-22',4,2,4,NULL,_binary '\0',5),(49,4,1,'7850',47,'2025-11-06','2026-11-06',2,4,3,NULL,_binary '\0',5),(50,2,7,'2827',18,'2025-12-10','2026-12-10',4,3,4,NULL,_binary '\0',5),(51,2,8,'7811',18,'2026-06-21','2026-06-21',3,2,4,NULL,_binary '\0',5),(52,2,3,'6653',22,'2026-03-23','2027-03-23',1,3,3,NULL,_binary '\0',5),(53,4,3,'F6905',46,'2025-10-16','2026-10-16',1,1,4,NULL,_binary '\0',5),(54,4,9,'F8680',50,'2026-04-24','2026-04-24',5,4,4,NULL,_binary '\0',5),(55,2,10,'F1859',28,'2025-09-29','2026-09-29',5,2,3,NULL,_binary '\0',5),(56,1,7,'4978',7,'2026-07-28','2027-07-28',4,2,1,NULL,_binary '\0',5),(57,3,9,'A8461',36,'2026-05-01','2027-05-01',5,2,3,NULL,_binary '\0',5),(58,2,7,'6707',19,'2026-03-12','2027-01-26',4,3,4,NULL,_binary '\0',5);
/*!40000 ALTER TABLE `permite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permitestatus`
--

DROP TABLE IF EXISTS `permitestatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permitestatus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permitestatus`
--

LOCK TABLES `permitestatus` WRITE;
/*!40000 ALTER TABLE `permitestatus` DISABLE KEYS */;
INSERT INTO `permitestatus` VALUES (1,'Active'),(2,'Expired'),(3,'Suspended'),(4,'Transferred');
/*!40000 ALTER TABLE `permitestatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privilege`
--

DROP TABLE IF EXISTS `privilege`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `privilege` (
  `id` int NOT NULL AUTO_INCREMENT,
  `authority` varchar(45) DEFAULT NULL,
  `role_id` int NOT NULL,
  `module_id` int NOT NULL,
  `operation_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_privilege_role1_idx` (`role_id`),
  KEY `fk_privilege_module1_idx` (`module_id`),
  KEY `fk_privilege_operation1_idx` (`operation_id`),
  CONSTRAINT `fk_privilege_module1` FOREIGN KEY (`module_id`) REFERENCES `module` (`id`),
  CONSTRAINT `fk_privilege_operation1` FOREIGN KEY (`operation_id`) REFERENCES `operation` (`id`),
  CONSTRAINT `fk_privilege_role1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privilege`
--

LOCK TABLES `privilege` WRITE;
/*!40000 ALTER TABLE `privilege` DISABLE KEYS */;
INSERT INTO `privilege` VALUES (5,'user-view',5,1,1),(6,'user-add',5,1,2),(7,'user-update',5,1,3),(8,'user-delete',5,1,4),(9,'branch-view',5,2,5),(10,'branch-add',5,2,6),(11,'branch-update',5,2,7),(12,'branch-delete',5,2,8),(13,'employee-view',5,3,9),(14,'employee-add',5,3,10),(15,'employee-update',5,3,11),(16,'employee-delete',5,3,12),(17,'crew-view',5,4,13),(18,'crew-add',5,4,14),(19,'crew-update',5,4,15),(21,'vehicle-view',5,5,17),(22,'vehicle-add',5,5,18),(23,'vehicle-update',5,5,19),(24,'vehicle-delete',5,5,20),(29,'permit-view',5,7,25),(30,'permit-add',5,7,26),(31,'permit-update',5,7,27),(32,'permit-delete',5,7,28),(33,'trip-view',5,8,29),(34,'trip-add',5,8,30),(37,'trip-execution-view',5,9,33),(38,'trip-execution-add',5,9,34),(39,'trip-execution-update',5,9,35),(40,'trip-execution-delete',5,9,36),(41,'roster-view',5,10,37),(45,'incident-view',5,11,41),(46,'incident-add',5,11,42),(49,'incident-vehicle-allocation-view',5,12,45),(50,'incident-vehicle-allocation-add',5,12,46),(51,'incident-vehicle-allocation-update',5,12,47),(52,'incident-vehicle-allocation-delete',5,12,48),(53,'fare-collection-view',5,13,49),(54,'fare-collection-add',5,13,50),(55,'fare-collection-update',5,13,51),(57,'spare-part-view',5,14,53),(58,'spare-part-add',5,14,54),(59,'spare-part-update',5,14,55),(60,'spare-part-delete',5,14,56),(61,'spare-part-request-view',5,15,57),(62,'spare-part-request-add',5,15,58),(63,'spare-part-request-update',5,15,59),(64,'spare-part-request-delete',5,15,60),(65,'grn-view',5,16,61),(69,'vehicle-service-view',5,17,65),(70,'vehicle-service-add',5,17,66),(71,'vehicle-service-update',5,17,67),(72,'vehicle-service-delete',5,17,68),(73,'dashboard-view',5,18,69),(74,'dashboard-view',1,18,69),(75,'branch-view',1,2,5),(76,'branch-update',1,2,7),(77,'branch-view',2,2,5),(78,'branch-view',3,2,5),(79,'branch-view',4,2,5),(80,'employee-view',1,3,9),(81,'employee-add',1,3,10),(82,'employee-update',1,3,11),(83,'employee-delete',1,3,12),(84,'vehicle-view',1,5,17),(85,'vehicle-view',2,5,17),(86,'vehicle-view',3,5,17),(87,'vehicle-add',1,5,18),(88,'vehicle-update',1,5,19),(89,'vehicle-update',3,5,19),(90,'vehicle-delete',1,5,20),(91,'permit-view',1,7,25),(92,'permit-view',2,7,25),(93,'permit-add',1,7,26),(94,'permit-transfer',1,7,70),(95,'permit-transfer',5,7,70),(96,'trip-view',1,8,29),(97,'trip-view',2,8,29),(98,'trip-add',1,8,30),(99,'trip-add',2,8,30),(100,'trip-activate',1,8,71),(101,'trip-activate',2,8,71),(102,'trip-activate',5,8,71),(103,'trip-suspend',5,8,72),(104,'trip-discontinue',5,8,73),(105,'trip-suspend',1,8,72),(106,'trip-suspend',2,8,72),(107,'trip-discontinue',1,8,73),(108,'trip-discontinue',2,8,73),(109,'trip-execution-view',1,9,33),(110,'trip-execution-view',2,9,33),(111,'trip-execution-initialize',2,9,34),(112,'trip-execution-generate-assignments',2,9,35),(113,'trip-execution-checked-in',2,9,36),(114,'trip-execution-dispatched',2,9,74),(115,'trip-execution-arrived',2,9,75),(116,'trip-execution-breakdown',2,9,76),(117,'trip-execution-completed',2,9,77),(118,'trip-execution-cancelled',2,9,78),(119,'trip-execution-dispatched',5,9,74),(120,'trip-execution-arrived',5,9,75),(121,'trip-execution-breakdown',5,9,76),(122,'trip-execution-completed',5,9,77),(123,'trip-execution-cancelled',5,9,78),(126,'roster-view',1,10,37),(127,'roster-view',2,10,37),(128,'incident-view',1,11,41),(129,'incident-view',2,11,41),(130,'incident-view',3,11,41),(134,'incident-add',2,11,42),(135,'incident-start',2,11,43),(136,'incident-recovery',2,11,44),(137,'incident-pending allocation',2,11,84),(138,'incident-resolve',2,11,85),(139,'incident-close',2,11,86),(140,'incident-close',5,11,86),(141,'incident-resolve',5,11,85),(142,'incident-pending allocation',5,11,84),(143,'incident-recovery',5,11,44),(144,'incident-start',5,11,43),(145,'roster-shift-assignment-view',1,19,80),(146,'roster-shift-assignment-view',5,19,80),(147,'roster-shift-assignment-view',2,19,80),(148,'roster-shift-assignment-generate',1,19,81),(149,'roster-shift-assignment-approved',1,19,82),(150,'roster-shift-assignment-cancelled',1,19,83),(151,'roster-shift-assignment-generate',5,19,81),(152,'roster-shift-assignment-approved',5,19,82),(153,'roster-shift-assignment-cancelled',5,19,83),(158,'vehicle-service-view',1,17,65),(159,'vehicle-service-view',3,17,65),(160,'grn-view',1,16,61),(161,'grn-view',4,16,61),(162,'spare-part-request-view',1,15,57),(163,'part-request-view',4,15,57),(164,'part-view',4,14,53),(166,'fare-collection-view',1,13,49),(167,'incident-vehicle-allocation-view',1,12,45),(168,'incident-vehicle-allocation-view',2,12,45),(169,'incident-vehicle-allocation-add',2,12,46),(170,'incident-vehicle-allocation-in-progress',2,12,47),(171,'incident-vehicle-allocation-released',2,12,48),(172,'incident-vehicle-allocation-cancelled',2,12,87),(173,'incident-vehicle-allocation-cancelled',5,12,87),(174,'fare-collection-add',1,13,50),(175,'fare-collection-reconcile',1,13,51),(176,'part-add',4,14,54),(177,'part-update',4,14,55),(178,'part-delete',4,14,56),(179,'spare-part-view',1,14,53),(180,'part-request-add',4,15,58),(181,'part-request-update',4,15,59),(182,'part-request-approve',4,15,60),(183,'part-request-reject',4,15,88),(184,'spare-part-request-reject',5,15,88),(185,'grn-update',5,16,63),(186,'vehicle-service-complete',5,17,89),(187,'vehicle-service-add',3,17,66),(188,'vehicle-service-start',3,17,67),(189,'vehicle-service-hold',3,17,68),(190,'vehicle-service-complete',3,17,89),(191,'user-view',6,1,1),(192,'user-add',6,1,2),(193,'user-update',6,1,3),(194,'user-delete',6,1,4),(197,'branch-view',6,2,5),(198,'branch-add',6,2,6),(199,'branch-update',6,2,7),(200,'branch-delete',6,2,8),(201,'employee-view',6,3,9),(202,'employee-add',6,3,10),(203,'employee-update',6,3,11),(204,'employee-delete',6,3,12),(205,'driver-view',1,4,13),(206,'driver-add',1,4,14),(207,'driver-update',1,4,15),(208,'conductor-view',5,20,90),(209,'conductor-add',5,20,91),(210,'conductor-update',5,20,92),(211,'conductor-update',1,20,92),(212,'conductor-add',1,20,91),(213,'conductor-view',1,20,90),(214,'privilege-view',5,21,93),(215,'privilege-assign',5,21,94),(216,'privilege-revoke',5,21,95),(217,'privilege-revoke',6,21,95),(218,'privilege-assign',6,21,94),(219,'privilege-view',6,21,93),(220,'report-view',1,22,97),(221,'report-view',5,22,97),(222,'roster-add',1,10,96),(223,'roster-add',5,10,96);
/*!40000 ALTER TABLE `privilege` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regionaloffice`
--

DROP TABLE IF EXISTS `regionaloffice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `regionaloffice` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regionaloffice`
--

LOCK TABLES `regionaloffice` WRITE;
/*!40000 ALTER TABLE `regionaloffice` DISABLE KEYS */;
INSERT INTO `regionaloffice` VALUES (1,'Colombo'),(2,'Eastern'),(3,'Gampaha'),(4,'Kalutara'),(5,'Kandy'),(6,'Northern'),(7,'Nuwara-Eliya'),(8,'Rajarata'),(9,'Sabaragamuwa'),(10,'Southern'),(11,'Uva'),(12,'Wayamba');
/*!40000 ALTER TABLE `regionaloffice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Depot Manager'),(2,'Operations Officer'),(3,'Maintenance Officer'),(4,'Inventory Officer'),(5,'Super Admin'),(6,'System Admin');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roster`
--

DROP TABLE IF EXISTS `roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roster` (
  `id` int NOT NULL AUTO_INCREMENT,
  `branch_id` int NOT NULL,
  `dostartofweek` date DEFAULT NULL,
  `doendofweek` date DEFAULT NULL,
  `deleted` bit(1) DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_roster_branch1_idx` (`branch_id`),
  KEY `fk_roster_user1_idx` (`user_id`),
  CONSTRAINT `fk_roster_branch1` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`),
  CONSTRAINT `fk_roster_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roster`
--

LOCK TABLES `roster` WRITE;
/*!40000 ALTER TABLE `roster` DISABLE KEYS */;
INSERT INTO `roster` VALUES (1,1,'2026-07-25','2026-07-31',_binary '\0',5);
/*!40000 ALTER TABLE `roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rostershift`
--

DROP TABLE IF EXISTS `rostershift`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rostershift` (
  `id` int NOT NULL AUTO_INCREMENT,
  `roster_id` int NOT NULL,
  `shift_id` int NOT NULL,
  `doshift` date DEFAULT NULL,
  `designation_id` int NOT NULL,
  `requiredemployeecount` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_roster_has_shift_shift1_idx` (`shift_id`),
  KEY `fk_roster_has_shift_roster1_idx` (`roster_id`),
  KEY `fk_rostershift_designation1_idx` (`designation_id`),
  CONSTRAINT `fk_roster_has_shift_roster1` FOREIGN KEY (`roster_id`) REFERENCES `roster` (`id`),
  CONSTRAINT `fk_roster_has_shift_shift1` FOREIGN KEY (`shift_id`) REFERENCES `shift` (`id`),
  CONSTRAINT `fk_rostershift_designation1` FOREIGN KEY (`designation_id`) REFERENCES `designation` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rostershift`
--

LOCK TABLES `rostershift` WRITE;
/*!40000 ALTER TABLE `rostershift` DISABLE KEYS */;
INSERT INTO `rostershift` VALUES (1,1,1,'2026-07-25',1,2),(2,1,1,'2026-07-25',2,2),(3,1,2,'2026-07-25',1,3),(4,1,2,'2026-07-25',2,3),(5,1,3,'2026-07-25',1,2),(6,1,3,'2026-07-25',2,2),(7,1,4,'2026-07-25',1,3),(8,1,4,'2026-07-25',2,3),(9,1,1,'2026-07-26',1,2),(10,1,1,'2026-07-26',2,2),(11,1,2,'2026-07-26',1,3),(12,1,2,'2026-07-26',2,3),(13,1,3,'2026-07-26',1,2),(14,1,3,'2026-07-26',2,2),(15,1,4,'2026-07-26',1,3),(16,1,4,'2026-07-26',2,3),(17,1,1,'2026-07-27',1,2),(18,1,1,'2026-07-27',2,2),(19,1,2,'2026-07-27',1,3),(20,1,2,'2026-07-27',2,3),(21,1,3,'2026-07-27',1,2),(22,1,3,'2026-07-27',2,2),(23,1,4,'2026-07-27',1,3),(24,1,4,'2026-07-27',2,3),(25,1,1,'2026-07-28',1,2),(26,1,1,'2026-07-28',2,2),(27,1,2,'2026-07-28',1,3),(28,1,2,'2026-07-28',2,3),(29,1,3,'2026-07-28',1,2),(30,1,3,'2026-07-28',2,2),(31,1,4,'2026-07-28',1,3),(32,1,4,'2026-07-28',2,3),(33,1,1,'2026-07-29',1,2),(34,1,1,'2026-07-29',2,2),(35,1,2,'2026-07-29',1,3),(36,1,2,'2026-07-29',2,3),(37,1,3,'2026-07-29',1,2),(38,1,3,'2026-07-29',2,2),(39,1,4,'2026-07-29',1,3),(40,1,4,'2026-07-29',2,3),(41,1,1,'2026-07-30',1,2),(42,1,1,'2026-07-30',2,2),(43,1,2,'2026-07-30',1,3),(44,1,2,'2026-07-30',2,3),(45,1,3,'2026-07-30',1,2),(46,1,3,'2026-07-30',2,2),(47,1,4,'2026-07-30',1,3),(48,1,4,'2026-07-30',2,3),(49,1,1,'2026-07-31',1,2),(50,1,1,'2026-07-31',2,2),(51,1,2,'2026-07-31',1,3),(52,1,2,'2026-07-31',2,3),(53,1,3,'2026-07-31',1,2),(54,1,3,'2026-07-31',2,2),(55,1,4,'2026-07-31',1,3),(56,1,4,'2026-07-31',2,3);
/*!40000 ALTER TABLE `rostershift` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rostershiftassignment`
--

DROP TABLE IF EXISTS `rostershiftassignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rostershiftassignment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rostershift_id` int NOT NULL,
  `employee_id` int DEFAULT NULL,
  `rostershiftassignmentstatus_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_rostershift_has_employee_employee1_idx` (`employee_id`),
  KEY `fk_rostershift_has_employee_rostershift1_idx` (`rostershift_id`),
  KEY `fk_rostershiftassignment_rostershiftassignmentstatus1_idx` (`rostershiftassignmentstatus_id`),
  CONSTRAINT `fk_rostershift_has_employee_employee1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`),
  CONSTRAINT `fk_rostershift_has_employee_rostershift1` FOREIGN KEY (`rostershift_id`) REFERENCES `rostershift` (`id`),
  CONSTRAINT `fk_rostershiftassignment_rostershiftassignmentstatus1` FOREIGN KEY (`rostershiftassignmentstatus_id`) REFERENCES `rostershiftassignmentstatus` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=561 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rostershiftassignment`
--

LOCK TABLES `rostershiftassignment` WRITE;
/*!40000 ALTER TABLE `rostershiftassignment` DISABLE KEYS */;
INSERT INTO `rostershiftassignment` VALUES (1,1,71,4),(2,1,12,4),(3,2,13,2),(4,2,84,2),(5,3,13,2),(6,3,3,2),(7,3,21,2),(8,4,65,2),(9,4,107,2),(10,4,108,2),(11,5,18,2),(12,5,20,2),(13,6,80,2),(14,6,75,2),(15,7,7,2),(16,7,15,2),(17,7,2,2),(18,8,70,2),(19,8,82,2),(20,8,65,2),(21,9,108,2),(22,9,4,2),(23,10,81,2),(24,10,79,2),(25,11,16,2),(26,11,22,2),(27,11,13,2),(28,12,69,2),(29,12,107,2),(30,12,67,2),(31,13,18,2),(32,13,16,2),(33,14,73,2),(34,14,66,2),(35,15,24,2),(36,15,9,2),(37,15,18,2),(38,16,109,2),(39,16,65,2),(40,16,73,2),(41,17,9,2),(42,17,6,2),(43,18,75,2),(44,18,80,2),(45,19,17,2),(46,19,19,2),(47,19,4,2),(48,20,74,2),(49,20,66,2),(50,20,79,2),(51,21,21,2),(52,21,7,2),(53,22,73,2),(54,22,83,2),(55,23,12,2),(56,23,21,2),(57,23,14,2),(58,24,83,2),(59,24,73,2),(60,24,22,2),(61,25,5,2),(62,25,20,2),(63,26,72,2),(64,26,78,2),(65,27,24,2),(66,27,24,2),(67,27,16,2),(68,28,68,2),(69,28,83,2),(70,28,81,2),(71,29,25,2),(72,29,3,2),(73,30,80,2),(74,30,67,2),(75,31,15,2),(76,31,23,2),(77,31,1,2),(78,32,106,2),(79,32,105,2),(80,32,79,2),(81,33,19,2),(82,33,1,2),(83,34,81,2),(84,34,68,2),(85,35,4,2),(86,35,6,2),(87,35,13,2),(88,36,80,2),(89,36,106,2),(90,36,109,2),(91,37,2,2),(92,37,1,2),(93,38,66,2),(94,38,78,2),(95,39,10,2),(96,39,10,2),(97,39,20,2),(98,40,84,2),(99,40,65,2),(100,40,75,2),(101,41,10,2),(102,41,9,2),(103,42,78,2),(104,42,69,2),(105,43,17,2),(106,43,11,2),(107,43,7,2),(108,44,108,2),(109,44,79,2),(110,44,67,2),(111,45,2,2),(112,45,14,2),(113,46,71,2),(114,46,75,2),(115,47,65,2),(116,47,15,2),(117,47,4,2),(118,48,73,2),(119,48,83,2),(120,48,66,2),(121,49,12,2),(122,49,15,2),(123,50,68,2),(124,50,76,2),(125,51,8,2),(126,51,6,2),(127,51,7,2),(128,52,68,2),(129,52,81,2),(130,52,71,2),(131,53,15,2),(132,53,11,2),(133,54,70,2),(134,54,105,2),(135,55,2,2),(136,55,9,2),(137,55,21,2),(138,56,78,2),(139,56,69,2),(140,56,71,2),(141,1,19,7),(142,1,7,7),(143,2,72,2),(144,2,21,2),(145,3,9,2),(146,3,22,2),(147,3,12,2),(148,4,73,2),(149,4,71,2),(150,4,84,2),(151,5,11,2),(152,5,7,2),(153,6,84,2),(154,6,106,2),(155,7,13,2),(156,7,3,2),(157,7,22,2),(158,8,78,2),(159,8,105,2),(160,8,82,2),(161,9,6,2),(162,9,5,2),(163,10,105,2),(164,10,73,2),(165,11,11,2),(166,11,6,2),(167,11,20,2),(168,12,70,2),(169,12,81,2),(170,12,74,2),(171,13,20,2),(172,13,12,2),(173,14,77,2),(174,14,74,2),(175,15,12,2),(176,15,13,2),(177,15,16,2),(178,16,4,2),(179,16,74,2),(180,16,107,2),(181,17,14,2),(182,17,17,2),(183,18,72,2),(184,18,71,2),(185,19,11,2),(186,19,24,2),(187,19,25,2),(188,20,73,2),(189,20,108,2),(190,20,71,2),(191,21,5,2),(192,21,4,2),(193,22,69,2),(194,22,82,2),(195,23,22,2),(196,23,19,2),(197,23,3,2),(198,24,8,2),(199,24,83,2),(200,24,65,2),(201,25,24,2),(202,25,17,2),(203,26,84,2),(204,26,106,2),(205,27,20,2),(206,27,19,2),(207,27,16,2),(208,28,69,2),(209,28,79,2),(210,28,71,2),(211,29,12,2),(212,29,13,2),(213,30,78,2),(214,30,79,2),(215,31,24,2),(216,31,10,2),(217,31,14,2),(218,32,109,2),(219,32,73,2),(220,32,75,2),(221,33,3,2),(222,33,25,2),(223,34,77,2),(224,34,67,2),(225,35,21,2),(226,35,8,2),(227,35,6,2),(228,36,65,2),(229,36,76,2),(230,36,107,2),(231,37,22,2),(232,37,11,2),(233,38,106,2),(234,38,80,2),(235,39,14,2),(236,39,19,2),(237,39,8,2),(238,40,107,2),(239,40,75,2),(240,40,77,2),(241,41,14,2),(242,41,25,2),(243,42,67,2),(244,42,72,2),(245,43,8,2),(246,43,1,2),(247,43,25,2),(248,44,69,2),(249,44,82,2),(250,44,109,2),(251,45,5,2),(252,45,23,2),(253,46,78,2),(254,46,76,2),(255,47,76,2),(256,47,13,2),(257,47,5,2),(258,48,67,2),(259,48,78,2),(260,48,66,2),(261,49,1,2),(262,49,16,2),(263,50,81,2),(264,50,70,2),(265,51,12,2),(266,51,17,2),(267,51,10,2),(268,52,82,2),(269,52,79,2),(270,52,74,2),(271,53,2,2),(272,53,11,2),(273,54,108,2),(274,54,82,2),(275,55,80,2),(276,55,1,2),(277,55,8,2),(278,56,68,2),(279,56,74,2),(280,56,77,2),(281,1,1,2),(282,1,2,2),(283,2,65,2),(284,2,67,2),(285,3,3,2),(286,3,4,2),(287,3,5,2),(288,4,68,2),(289,4,70,2),(290,4,109,2),(291,5,6,2),(292,5,7,2),(293,6,105,2),(294,6,66,2),(295,7,8,2),(296,7,12,2),(297,7,23,2),(298,8,65,2),(299,8,67,2),(300,8,68,2),(301,9,1,2),(302,9,2,2),(303,10,70,2),(304,10,109,2),(305,11,3,2),(306,11,4,2),(307,11,5,2),(308,12,105,2),(309,12,66,2),(310,12,65,2),(311,13,6,2),(312,13,7,2),(313,14,67,2),(314,14,68,2),(315,15,8,2),(316,15,12,2),(317,15,23,2),(318,16,70,2),(319,16,109,2),(320,16,105,2),(321,17,1,2),(322,17,2,2),(323,18,66,2),(324,18,65,2),(325,19,3,2),(326,19,4,2),(327,19,5,2),(328,20,67,2),(329,20,68,2),(330,20,70,2),(331,21,6,2),(332,21,7,2),(333,22,109,2),(334,22,105,2),(335,23,8,2),(336,23,12,2),(337,23,23,2),(338,24,66,2),(339,24,65,2),(340,24,67,2),(341,25,1,2),(342,25,2,2),(343,26,68,2),(344,26,70,2),(345,27,3,2),(346,27,4,2),(347,27,5,2),(348,28,109,2),(349,28,105,2),(350,28,66,2),(351,29,6,2),(352,29,7,2),(353,30,65,2),(354,30,67,2),(355,31,8,2),(356,31,12,2),(357,31,23,2),(358,32,68,2),(359,32,70,2),(360,32,109,2),(361,33,1,2),(362,33,2,2),(363,34,105,2),(364,34,66,2),(365,35,3,2),(366,35,4,2),(367,35,5,2),(368,36,65,2),(369,36,67,2),(370,36,68,2),(371,37,6,2),(372,37,7,2),(373,38,70,2),(374,38,109,2),(375,39,8,2),(376,39,12,2),(377,39,23,2),(378,40,105,2),(379,40,66,2),(380,40,65,2),(381,41,1,2),(382,41,2,2),(383,42,67,2),(384,42,68,2),(385,43,3,2),(386,43,4,2),(387,43,5,2),(388,44,70,2),(389,44,109,2),(390,44,105,2),(391,45,6,2),(392,45,7,2),(393,46,66,2),(394,46,65,2),(395,47,8,2),(396,47,12,2),(397,47,23,2),(398,48,67,2),(399,48,68,2),(400,48,70,2),(401,49,1,2),(402,49,2,2),(403,50,109,2),(404,50,105,2),(405,51,3,2),(406,51,4,2),(407,51,5,2),(408,52,66,2),(409,52,65,2),(410,52,67,2),(411,53,6,2),(412,53,7,2),(413,54,68,2),(414,54,70,2),(415,55,8,2),(416,55,12,2),(417,55,23,2),(418,56,109,2),(419,56,105,2),(420,56,66,2),(421,1,NULL,1),(422,1,NULL,1),(423,2,NULL,1),(424,2,NULL,1),(425,3,NULL,1),(426,3,NULL,1),(427,3,NULL,1),(428,4,NULL,1),(429,4,NULL,1),(430,4,NULL,1),(431,5,NULL,1),(432,5,NULL,1),(433,6,NULL,1),(434,6,NULL,1),(435,7,NULL,1),(436,7,NULL,1),(437,7,NULL,1),(438,8,NULL,1),(439,8,NULL,1),(440,8,NULL,1),(441,9,NULL,1),(442,9,NULL,1),(443,10,NULL,1),(444,10,NULL,1),(445,11,NULL,1),(446,11,NULL,1),(447,11,NULL,1),(448,12,NULL,1),(449,12,NULL,1),(450,12,NULL,1),(451,13,NULL,1),(452,13,NULL,1),(453,14,NULL,1),(454,14,NULL,1),(455,15,NULL,1),(456,15,NULL,1),(457,15,NULL,1),(458,16,NULL,1),(459,16,NULL,1),(460,16,NULL,1),(461,17,NULL,1),(462,17,NULL,1),(463,18,NULL,1),(464,18,NULL,1),(465,19,NULL,1),(466,19,NULL,1),(467,19,NULL,1),(468,20,NULL,1),(469,20,NULL,1),(470,20,NULL,1),(471,21,NULL,1),(472,21,NULL,1),(473,22,NULL,1),(474,22,NULL,1),(475,23,NULL,1),(476,23,NULL,1),(477,23,NULL,1),(478,24,NULL,1),(479,24,NULL,1),(480,24,NULL,1),(481,25,NULL,1),(482,25,NULL,1),(483,26,NULL,1),(484,26,NULL,1),(485,27,NULL,1),(486,27,NULL,1),(487,27,NULL,1),(488,28,NULL,1),(489,28,NULL,1),(490,28,NULL,1),(491,29,NULL,1),(492,29,NULL,1),(493,30,NULL,1),(494,30,NULL,1),(495,31,NULL,1),(496,31,NULL,1),(497,31,NULL,1),(498,32,NULL,1),(499,32,NULL,1),(500,32,NULL,1),(501,33,NULL,1),(502,33,NULL,1),(503,34,NULL,1),(504,34,NULL,1),(505,35,NULL,1),(506,35,NULL,1),(507,35,NULL,1),(508,36,NULL,1),(509,36,NULL,1),(510,36,NULL,1),(511,37,NULL,1),(512,37,NULL,1),(513,38,NULL,1),(514,38,NULL,1),(515,39,NULL,1),(516,39,NULL,1),(517,39,NULL,1),(518,40,NULL,1),(519,40,NULL,1),(520,40,NULL,1),(521,41,NULL,1),(522,41,NULL,1),(523,42,NULL,1),(524,42,NULL,1),(525,43,NULL,1),(526,43,NULL,1),(527,43,NULL,1),(528,44,NULL,1),(529,44,NULL,1),(530,44,NULL,1),(531,45,NULL,1),(532,45,NULL,1),(533,46,NULL,1),(534,46,NULL,1),(535,47,NULL,1),(536,47,NULL,1),(537,47,NULL,1),(538,48,NULL,1),(539,48,NULL,1),(540,48,NULL,1),(541,49,NULL,1),(542,49,NULL,1),(543,50,NULL,1),(544,50,NULL,1),(545,51,NULL,1),(546,51,NULL,1),(547,51,NULL,1),(548,52,NULL,1),(549,52,NULL,1),(550,52,NULL,1),(551,53,NULL,1),(552,53,NULL,1),(553,54,NULL,1),(554,54,NULL,1),(555,55,NULL,1),(556,55,NULL,1),(557,55,NULL,1),(558,56,NULL,1),(559,56,NULL,1),(560,56,NULL,1);
/*!40000 ALTER TABLE `rostershiftassignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rostershiftassignmentstatus`
--

DROP TABLE IF EXISTS `rostershiftassignmentstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rostershiftassignmentstatus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rostershiftassignmentstatus`
--

LOCK TABLES `rostershiftassignmentstatus` WRITE;
/*!40000 ALTER TABLE `rostershiftassignmentstatus` DISABLE KEYS */;
INSERT INTO `rostershiftassignmentstatus` VALUES (1,'Draft'),(2,'Proposed'),(3,'Published'),(4,'Confirmed'),(5,'In-Progress'),(6,'Completed'),(7,'Canceled'),(8,'Absent');
/*!40000 ALTER TABLE `rostershiftassignmentstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `route`
--

DROP TABLE IF EXISTS `route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `route` (
  `id` int NOT NULL AUTO_INCREMENT,
  `number` varchar(45) DEFAULT NULL,
  `origin` varchar(45) DEFAULT NULL,
  `destination` varchar(45) DEFAULT NULL,
  `distancekm` decimal(5,1) DEFAULT NULL,
  `routetype_id` int NOT NULL,
  `mingapminutes` int DEFAULT NULL,
  `waypoints` json DEFAULT NULL,
  `requiredroutefamiliaritylevel_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_route_routetype1_idx` (`routetype_id`),
  KEY `fk_route_routefamiliaritylevel1_idx` (`requiredroutefamiliaritylevel_id`),
  CONSTRAINT `fk_route_routefamiliaritylevel1` FOREIGN KEY (`requiredroutefamiliaritylevel_id`) REFERENCES `routefamiliaritylevel` (`id`),
  CONSTRAINT `fk_route_routetype1` FOREIGN KEY (`routetype_id`) REFERENCES `routetype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route`
--

LOCK TABLES `route` WRITE;
/*!40000 ALTER TABLE `route` DISABLE KEYS */;
INSERT INTO `route` VALUES (1,'1','Colombo','Kandy',115.5,1,15,NULL,3),(2,'2','Colombo','Matara',118.5,1,10,NULL,3),(3,'32','Colombo','Kataragama',263.0,1,20,NULL,3),(4,'8','Colombo','Matale',142.0,1,30,NULL,3),(5,'87','Colombo','Jaffna',395.0,1,45,NULL,3),(6,'100','Colombo','Panadura ',27.0,2,5,NULL,2),(7,'101','Colombo','Moratuwa ',19.0,2,5,NULL,1),(8,'122','Colombo','Avissawella',49.0,2,8,NULL,2),(9,'125','Colombo','Padukka ',33.0,2,10,NULL,1),(10,'225','Colombo','Kirindiwela ',38.0,2,30,NULL,1);
/*!40000 ALTER TABLE `route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `routebranch`
--

DROP TABLE IF EXISTS `routebranch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `routebranch` (
  `id` int NOT NULL AUTO_INCREMENT,
  `branch_id` int NOT NULL,
  `route_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_route_has_branch_branch1_idx` (`branch_id`),
  KEY `fk_route_has_branch_route1_idx` (`route_id`),
  CONSTRAINT `fk_route_has_branch_branch1` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`),
  CONSTRAINT `fk_route_has_branch_route1` FOREIGN KEY (`route_id`) REFERENCES `route` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `routebranch`
--

LOCK TABLES `routebranch` WRITE;
/*!40000 ALTER TABLE `routebranch` DISABLE KEYS */;
INSERT INTO `routebranch` VALUES (10,1,1),(11,1,2),(12,1,3),(13,1,4),(14,1,5),(15,1,6),(16,1,7),(17,1,8),(18,1,9),(19,1,10);
/*!40000 ALTER TABLE `routebranch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `routefamiliaritylevel`
--

DROP TABLE IF EXISTS `routefamiliaritylevel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `routefamiliaritylevel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `routefamiliaritylevel`
--

LOCK TABLES `routefamiliaritylevel` WRITE;
/*!40000 ALTER TABLE `routefamiliaritylevel` DISABLE KEYS */;
INSERT INTO `routefamiliaritylevel` VALUES (1,'Low'),(2,'Medium'),(3,'High');
/*!40000 ALTER TABLE `routefamiliaritylevel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `routetype`
--

DROP TABLE IF EXISTS `routetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `routetype` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `routetype`
--

LOCK TABLES `routetype` WRITE;
/*!40000 ALTER TABLE `routetype` DISABLE KEYS */;
INSERT INTO `routetype` VALUES (1,'Inter provincial'),(2,'Intra provincial');
/*!40000 ALTER TABLE `routetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scope`
--

DROP TABLE IF EXISTS `scope`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scope` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scope`
--

LOCK TABLES `scope` WRITE;
/*!40000 ALTER TABLE `scope` DISABLE KEYS */;
INSERT INTO `scope` VALUES (1,'GLOBAL'),(2,'CLM0001'),(3,'KND0001'),(4,'ANG0001');
/*!40000 ALTER TABLE `scope` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicetype`
--

DROP TABLE IF EXISTS `servicetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicetype` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicetype`
--

LOCK TABLES `servicetype` WRITE;
/*!40000 ALTER TABLE `servicetype` DISABLE KEYS */;
INSERT INTO `servicetype` VALUES (1,'Normal'),(3,'Luxury'),(4,'Super luxury');
/*!40000 ALTER TABLE `servicetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shift`
--

DROP TABLE IF EXISTS `shift`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shift` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `tostart` time DEFAULT NULL,
  `toend` time DEFAULT NULL,
  `shiftstatus_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_shift_shiftstatus1_idx` (`shiftstatus_id`),
  CONSTRAINT `fk_shift_shiftstatus1` FOREIGN KEY (`shiftstatus_id`) REFERENCES `shiftstatus` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shift`
--

LOCK TABLES `shift` WRITE;
/*!40000 ALTER TABLE `shift` DISABLE KEYS */;
INSERT INTO `shift` VALUES (1,'Morning Peak','04:00:00','10:00:00',1),(2,'Day Shift','10:00:00','16:00:00',1),(3,'Evening Peak','16:00:00','22:00:00',1),(4,'Night Shift','22:00:00','04:00:00',1);
/*!40000 ALTER TABLE `shift` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shiftstatus`
--

DROP TABLE IF EXISTS `shiftstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shiftstatus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shiftstatus`
--

LOCK TABLES `shiftstatus` WRITE;
/*!40000 ALTER TABLE `shiftstatus` DISABLE KEYS */;
INSERT INTO `shiftstatus` VALUES (1,'Active'),(2,'Inactive');
/*!40000 ALTER TABLE `shiftstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticketmachine`
--

DROP TABLE IF EXISTS `ticketmachine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticketmachine` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `branch_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ticketmachine_branch1_idx` (`branch_id`),
  CONSTRAINT `fk_ticketmachine_branch1` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticketmachine`
--

LOCK TABLES `ticketmachine` WRITE;
/*!40000 ALTER TABLE `ticketmachine` DISABLE KEYS */;
INSERT INTO `ticketmachine` VALUES (1,'TKM-ANG-001',1),(2,'TKM-ANG-002',1),(3,'TKM-ANG-003',1),(4,'TKM-AVS-001',1),(5,'TKM-AVS-002',2),(6,'TKM-AVS-003',2);
/*!40000 ALTER TABLE `ticketmachine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trip`
--

DROP TABLE IF EXISTS `trip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trip` (
  `id` int NOT NULL AUTO_INCREMENT,
  `branch_id` int NOT NULL,
  `triptype_id` int NOT NULL,
  `permite_id` int NOT NULL,
  `todepature` time DEFAULT NULL,
  `toarrival` time DEFAULT NULL,
  `breakminutes` int DEFAULT NULL,
  `remarks` varchar(45) DEFAULT NULL,
  `tripstatus_id` int NOT NULL,
  `originterminal_id` int NOT NULL,
  `opcalender_id` int NOT NULL,
  `user_id` int NOT NULL,
  `shift_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_trip_permite1_idx` (`permite_id`),
  KEY `fk_trip_triptype1_idx` (`triptype_id`),
  KEY `fk_trip_branch1_idx` (`branch_id`),
  KEY `fk_trip_tripstatus1_idx` (`tripstatus_id`),
  KEY `fk_trip_originterminal1_idx` (`originterminal_id`),
  KEY `fk_trip_user1_idx` (`user_id`),
  KEY `fk_trip_opcalender1_idx` (`opcalender_id`),
  KEY `fk_trip_shift1_idx` (`shift_id`),
  CONSTRAINT `fk_trip_branch1` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`),
  CONSTRAINT `fk_trip_opcalender1` FOREIGN KEY (`opcalender_id`) REFERENCES `opcalender` (`id`),
  CONSTRAINT `fk_trip_originterminal1` FOREIGN KEY (`originterminal_id`) REFERENCES `originterminal` (`id`),
  CONSTRAINT `fk_trip_permite1` FOREIGN KEY (`permite_id`) REFERENCES `permite` (`id`),
  CONSTRAINT `fk_trip_shift1` FOREIGN KEY (`shift_id`) REFERENCES `shift` (`id`),
  CONSTRAINT `fk_trip_tripstatus1` FOREIGN KEY (`tripstatus_id`) REFERENCES `tripstatus` (`id`),
  CONSTRAINT `fk_trip_triptype1` FOREIGN KEY (`triptype_id`) REFERENCES `triptype` (`id`),
  CONSTRAINT `fk_trip_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trip`
--

LOCK TABLES `trip` WRITE;
/*!40000 ALTER TABLE `trip` DISABLE KEYS */;
INSERT INTO `trip` VALUES (1,1,1,1,'08:00:00','11:00:00',NULL,NULL,2,1,1,4,1),(2,1,1,2,'08:00:00','11:00:00',NULL,NULL,1,1,1,4,1);
/*!40000 ALTER TABLE `trip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tripexecution`
--

DROP TABLE IF EXISTS `tripexecution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tripexecution` (
  `id` int NOT NULL AUTO_INCREMENT,
  `branch_id` int NOT NULL,
  `trip_id` int NOT NULL,
  `vehicle_id` int DEFAULT NULL,
  `driver_id` int DEFAULT NULL,
  `conductor_id` int DEFAULT NULL,
  `doservice` date DEFAULT NULL,
  `toactualdeparture` time DEFAULT NULL,
  `toactualarrival` time DEFAULT NULL,
  `startodometer` int DEFAULT NULL,
  `endodometer` int DEFAULT NULL,
  `passengercount` int DEFAULT NULL,
  `tripno` int DEFAULT NULL,
  `remarks` varchar(45) DEFAULT NULL,
  `tripexecutionstatus_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tripexecution_trip1_idx` (`trip_id`),
  KEY `fk_tripexecution_vehicle1_idx` (`vehicle_id`),
  KEY `fk_tripexecution_branch1_idx` (`branch_id`),
  KEY `fk_tripexecution_driver1_idx` (`driver_id`),
  KEY `fk_tripexecution_conductor1_idx` (`conductor_id`),
  KEY `fk_tripexecution_tripexecutionstatus1_idx` (`tripexecutionstatus_id`),
  KEY `fk_tripexecution_user1_idx` (`user_id`),
  CONSTRAINT `fk_tripexecution_branch1` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`),
  CONSTRAINT `fk_tripexecution_conductor1` FOREIGN KEY (`conductor_id`) REFERENCES `conductor` (`id`),
  CONSTRAINT `fk_tripexecution_driver1` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`id`),
  CONSTRAINT `fk_tripexecution_trip1` FOREIGN KEY (`trip_id`) REFERENCES `trip` (`id`),
  CONSTRAINT `fk_tripexecution_tripexecutionstatus1` FOREIGN KEY (`tripexecutionstatus_id`) REFERENCES `tripexecutionstatus` (`id`),
  CONSTRAINT `fk_tripexecution_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `fk_tripexecution_vehicle1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tripexecution`
--

LOCK TABLES `tripexecution` WRITE;
/*!40000 ALTER TABLE `tripexecution` DISABLE KEYS */;
/*!40000 ALTER TABLE `tripexecution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tripexecutionstatus`
--

DROP TABLE IF EXISTS `tripexecutionstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tripexecutionstatus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tripexecutionstatus`
--

LOCK TABLES `tripexecutionstatus` WRITE;
/*!40000 ALTER TABLE `tripexecutionstatus` DISABLE KEYS */;
INSERT INTO `tripexecutionstatus` VALUES (1,'Scheduled'),(2,'Checked In'),(3,'Dispatched'),(5,'Arrived'),(6,'Breakdown'),(8,'Cancelled'),(9,'Completed');
/*!40000 ALTER TABLE `tripexecutionstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tripstatus`
--

DROP TABLE IF EXISTS `tripstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tripstatus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tripstatus`
--

LOCK TABLES `tripstatus` WRITE;
/*!40000 ALTER TABLE `tripstatus` DISABLE KEYS */;
INSERT INTO `tripstatus` VALUES (1,'Draft'),(2,'Active'),(3,'Suspended'),(4,'Discontinued');
/*!40000 ALTER TABLE `tripstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `triptype`
--

DROP TABLE IF EXISTS `triptype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `triptype` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `triptype`
--

LOCK TABLES `triptype` WRITE;
/*!40000 ALTER TABLE `triptype` DISABLE KEYS */;
INSERT INTO `triptype` VALUES (1,'General'),(4,'Special'),(5,'Overnight');
/*!40000 ALTER TABLE `triptype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unitofmeasure`
--

DROP TABLE IF EXISTS `unitofmeasure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unitofmeasure` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unitofmeasure`
--

LOCK TABLES `unitofmeasure` WRITE;
/*!40000 ALTER TABLE `unitofmeasure` DISABLE KEYS */;
INSERT INTO `unitofmeasure` VALUES (1,'Nos'),(2,'Liters'),(3,'Meters'),(4,'Kilograms'),(5,'Sets');
/*!40000 ALTER TABLE `unitofmeasure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `usertype_id` int NOT NULL,
  `userstatus_id` int NOT NULL,
  `accountlocked` bit(1) DEFAULT NULL,
  `recoverycode` varchar(45) DEFAULT NULL,
  `recoverycodeexpiration` timestamp NULL DEFAULT NULL,
  `recoverycodeused` bit(1) DEFAULT NULL,
  `remarks` text,
  PRIMARY KEY (`id`),
  KEY `fk_user_employee1_idx` (`employee_id`),
  KEY `fk_user_usertype1_idx` (`usertype_id`),
  KEY `fk_user_userstatus1_idx` (`userstatus_id`),
  CONSTRAINT `fk_user_employee1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`),
  CONSTRAINT `fk_user_userstatus1` FOREIGN KEY (`userstatus_id`) REFERENCES `userstatus` (`id`),
  CONSTRAINT `fk_user_usertype1` FOREIGN KEY (`usertype_id`) REFERENCES `usertype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (3,1,'admincolombo','$2a$10$P1XUhergqQQ3mVxiM/3LWecCSFYBFuFMlGMDerLqeiyvaZaczLK56',1,1,_binary '\0',NULL,NULL,NULL,NULL),(4,2,'superadmincolombo','$2a$10$Ku9ZSESkQNlnfb9gGhSn2ef.kiAOkX8MDcpMGgPn5OiyYmmP.tYQa',1,1,_binary '\0',NULL,NULL,NULL,NULL),(5,3,'dmcolombo','$2a$10$Dc0iu7hutEh2YrYZ3UyBOu9IMpjjz656PUJUzFeS9Thx.U5FNF5fC',1,1,_binary '\0',NULL,NULL,NULL,NULL),(6,4,'oocolombo','$2a$10$VtNtPMTjIQYc0p89JFdPauDO5vqkixS3xdMKzMm1IeMhs6W3DFHha',1,1,_binary '\0',NULL,NULL,NULL,NULL),(7,5,'mocolombo','$2a$10$HlU2mRamtoxBjiyJGvV02uLPFMapGLZeZc2er2w40dRN5WfHqByhK',1,1,_binary '\0',NULL,NULL,NULL,NULL),(8,8,'iocolombo','$2a$10$qH.BL0Dbmy7kpY2lMdkJsu8pgSdmMzrrZEVoT1ptxSBF8di48N1pS',1,1,_binary '\0',NULL,NULL,NULL,NULL),(10,186,'adminmaharagama','$2a$10$/mkE2r4.VVUgmQF89.qybelbo1Si7JQcyzy5bSeMEojCzOh08NeNu',1,1,_binary '\0',NULL,NULL,NULL,NULL),(11,185,'superadminmaharagama','$2a$10$PxiaSXVdFtadxlX0Ks4QkuOUeK5Wl8R7ErPkwyCDUqWHsV.OJlV0O',1,1,_binary '\0',NULL,NULL,NULL,NULL),(12,182,'dmmaharagama','$2a$10$889VkXmpZv7FznS0Sum6b.2BG6TfqB8FSzSjwhhule.AXqxom4csO',1,1,_binary '\0',NULL,NULL,NULL,NULL),(13,181,'oomaharagama','$2a$10$f9cZ0gV7wGNw7Wu.DV836eR475wgyEQb87eE0Fiv0UI6sfiBqBJMG',1,1,_binary '\0',NULL,NULL,NULL,NULL),(14,180,'momaharagama','$2a$10$J/Nmw6fTTX5SZZ6/lX4L8eyTD23GjsOe7NlOQysg96ufkT1AmO5hm',1,1,_binary '\0',NULL,NULL,NULL,NULL),(15,176,'iomaharagama','$2a$10$VIw1mEdYe2nWyKfZbCcaSOGSI0m1BiFOtI59NK22uXwR7gAdOh46e',1,1,_binary '\0',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userrole`
--

DROP TABLE IF EXISTS `userrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userrole` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_has_role_role1_idx` (`role_id`),
  KEY `fk_user_has_role_user1_idx` (`user_id`),
  CONSTRAINT `fk_user_has_role_role1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `fk_user_has_role_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userrole`
--

LOCK TABLES `userrole` WRITE;
/*!40000 ALTER TABLE `userrole` DISABLE KEYS */;
INSERT INTO `userrole` VALUES (5,3,6),(6,4,5),(7,5,1),(8,6,2),(9,7,3),(10,8,4);
/*!40000 ALTER TABLE `userrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userstatus`
--

DROP TABLE IF EXISTS `userstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userstatus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userstatus`
--

LOCK TABLES `userstatus` WRITE;
/*!40000 ALTER TABLE `userstatus` DISABLE KEYS */;
INSERT INTO `userstatus` VALUES (1,'Active'),(2,'Locked'),(3,'Inactive');
/*!40000 ALTER TABLE `userstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usertype`
--

DROP TABLE IF EXISTS `usertype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usertype` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usertype`
--

LOCK TABLES `usertype` WRITE;
/*!40000 ALTER TABLE `usertype` DISABLE KEYS */;
INSERT INTO `usertype` VALUES (1,'Internal'),(2,'External'),(3,'System');
/*!40000 ALTER TABLE `usertype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle` (
  `id` int NOT NULL AUTO_INCREMENT,
  `branch_id` int NOT NULL,
  `number` char(7) NOT NULL,
  `model_id` int NOT NULL,
  `bustype_id` int NOT NULL,
  `mileage` int DEFAULT NULL,
  `fueltype_id` int NOT NULL,
  `conditionrate_id` int NOT NULL,
  `vehiclestatus_id` int NOT NULL,
  `remarks` varchar(45) DEFAULT NULL,
  `deleted` bit(1) DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `number_UNIQUE` (`number`),
  KEY `fk_vehicle_conditionrate1_idx` (`conditionrate_id`),
  KEY `fk_vehicle_vehiclestatus1_idx` (`vehiclestatus_id`),
  KEY `fk_vehicle_fueltype1_idx` (`fueltype_id`),
  KEY `fk_vehicle_branch1_idx` (`branch_id`),
  KEY `fk_vehicle_bustype1_idx` (`bustype_id`),
  KEY `fk_vehicle_model1_idx` (`model_id`),
  KEY `fk_vehicle_user1_idx` (`user_id`),
  CONSTRAINT `fk_vehicle_branch1` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`),
  CONSTRAINT `fk_vehicle_bustype1` FOREIGN KEY (`bustype_id`) REFERENCES `bustype` (`id`),
  CONSTRAINT `fk_vehicle_conditionrate1` FOREIGN KEY (`conditionrate_id`) REFERENCES `conditionrate` (`id`),
  CONSTRAINT `fk_vehicle_fueltype1` FOREIGN KEY (`fueltype_id`) REFERENCES `fueltype` (`id`),
  CONSTRAINT `fk_vehicle_model1` FOREIGN KEY (`model_id`) REFERENCES `model` (`id`),
  CONSTRAINT `fk_vehicle_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `fk_vehicle_vehiclestatus1` FOREIGN KEY (`vehiclestatus_id`) REFERENCES `vehiclestatus` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES (1,1,'NE-2765',1,2,115,1,2,1,NULL,_binary '\0',5),(2,1,'ND-8645',2,3,0,1,1,1,NULL,_binary '\0',5),(3,1,'NC-1209',5,3,49,1,2,1,NULL,_binary '\0',5),(4,1,'NA-0827',10,3,0,1,3,1,NULL,_binary '\0',5),(5,1,'NA-0822',13,4,0,1,2,1,NULL,_binary '\0',5),(6,1,'NB-8812',10,4,0,1,2,1,NULL,_binary '\0',5),(7,1,'NF-9076',1,2,263,1,1,1,NULL,_binary '\0',5),(8,1,'NG-0911',1,2,0,1,1,1,NULL,_binary '\0',5),(9,1,'NG-0012',1,2,0,1,1,1,NULL,_binary '\0',5),(10,1,'NH-0021',1,3,0,1,2,1,NULL,_binary '\0',5),(12,2,'NX-5877',8,1,276070,1,4,2,NULL,_binary '\0',5),(13,2,'NY-5660',10,6,107090,1,4,2,NULL,_binary '\0',5),(14,2,'NZ-5579',4,6,168309,1,2,2,NULL,_binary '\0',5),(15,2,'NI-9261',4,7,156607,1,1,2,NULL,_binary '\0',5),(16,2,'NP-9945',2,3,76254,1,3,3,NULL,_binary '\0',5),(17,2,'NN-2529',8,3,276658,1,2,5,NULL,_binary '\0',5),(18,2,'NE-6464',5,3,214522,1,2,1,NULL,_binary '\0',5),(19,2,'NH-3582',10,5,265352,1,3,1,NULL,_binary '\0',5),(20,2,'NX-7053',7,4,110794,1,1,1,NULL,_binary '\0',5),(21,2,'NO-6381',10,3,108762,1,2,5,NULL,_binary '\0',5),(22,2,'NF-7523',1,7,98551,1,1,2,NULL,_binary '\0',5),(23,2,'NF-7492',7,2,163024,1,3,5,NULL,_binary '\0',5),(24,2,'NV-6563',3,7,218547,1,1,5,NULL,_binary '\0',5),(25,2,'NY-4359',10,5,262020,1,4,2,NULL,_binary '\0',5),(26,2,'NX-4160',9,8,285254,1,1,6,NULL,_binary '\0',5),(27,2,'NO-2382',4,6,61415,1,1,5,NULL,_binary '\0',5),(28,2,'NF-3014',12,4,293585,1,2,3,NULL,_binary '\0',5),(29,2,'NU-9901',7,1,182585,1,1,1,NULL,_binary '\0',5),(30,2,'NI-9154',3,1,285084,1,2,2,NULL,_binary '\0',5),(31,2,'NY-8660',9,6,246448,1,2,1,NULL,_binary '\0',5),(32,3,'NR-7899',9,6,155654,1,2,2,NULL,_binary '\0',5),(33,3,'NS-2842',13,8,116259,1,2,2,NULL,_binary '\0',5),(34,3,'NJ-1112',4,7,53912,1,4,3,NULL,_binary '\0',5),(35,3,'NG-7032',12,8,285000,1,3,5,NULL,_binary '\0',5),(36,3,'NE-4838',13,5,165630,1,2,1,NULL,_binary '\0',5),(37,3,'NH-7648',2,6,288924,1,2,5,NULL,_binary '\0',5),(38,3,'NS-1075',11,8,142802,1,2,5,NULL,_binary '\0',5),(39,3,'NS-8382',5,6,167578,1,3,4,NULL,_binary '\0',5),(40,3,'NB-4735',1,4,240161,1,1,6,NULL,_binary '\0',5),(41,3,'NS-7688',1,3,83919,1,3,6,NULL,_binary '\0',5),(42,4,'NT-9078',3,8,197204,1,3,2,NULL,_binary '\0',5),(43,4,'NO-1128',11,3,237136,1,3,2,NULL,_binary '\0',5),(44,4,'NR-9431',12,1,187788,1,2,1,NULL,_binary '\0',5),(45,4,'NV-3184',10,6,250358,1,1,5,NULL,_binary '\0',5),(46,4,'NK-4400',13,5,206303,1,2,1,NULL,_binary '\0',5),(47,4,'NE-4084',2,7,274576,1,1,5,NULL,_binary '\0',5),(48,4,'NJ-5995',4,8,86139,1,2,4,NULL,_binary '\0',5),(49,4,'NH-6482',10,3,260718,1,1,1,NULL,_binary '\0',5),(50,4,'NU-6537',1,5,127662,1,4,5,NULL,_binary '\0',5),(51,4,'NG-7151',8,4,285632,1,4,5,NULL,_binary '\0',5),(52,1,'NH-1234',1,3,NULL,1,2,1,NULL,_binary '\0',5);
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicleservice`
--

DROP TABLE IF EXISTS `vehicleservice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicleservice` (
  `id` int NOT NULL AUTO_INCREMENT,
  `branch_id` int NOT NULL,
  `number` varchar(45) DEFAULT NULL,
  `vehicle_id` int NOT NULL,
  `vehicleservicetype_id` int NOT NULL,
  `incident_id` int DEFAULT NULL,
  `vehicleservicestatus_id` int NOT NULL,
  `vehicleservicepriority_id` int NOT NULL,
  `docreated` date DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_vehicleservice_vehicle1_idx` (`vehicle_id`),
  KEY `fk_vehicleservice_vehicleservicetype1_idx` (`vehicleservicetype_id`),
  KEY `fk_vehicleservice_vehicleservicepriority1_idx` (`vehicleservicepriority_id`),
  KEY `fk_vehicleservice_incident1_idx` (`incident_id`),
  KEY `fk_vehicleservice_branch1_idx` (`branch_id`),
  KEY `fk_vehicleservice_vehicleservicestatus1_idx` (`vehicleservicestatus_id`),
  KEY `fk_vehicleservice_user1_idx` (`user_id`),
  CONSTRAINT `fk_vehicleservice_branch1` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`),
  CONSTRAINT `fk_vehicleservice_incident1` FOREIGN KEY (`incident_id`) REFERENCES `incident` (`id`),
  CONSTRAINT `fk_vehicleservice_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `fk_vehicleservice_vehicle1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`id`),
  CONSTRAINT `fk_vehicleservice_vehicleservicepriority1` FOREIGN KEY (`vehicleservicepriority_id`) REFERENCES `vehicleservicepriority` (`id`),
  CONSTRAINT `fk_vehicleservice_vehicleservicestatus1` FOREIGN KEY (`vehicleservicestatus_id`) REFERENCES `vehicleservicestatus` (`id`),
  CONSTRAINT `fk_vehicleservice_vehicleservicetype1` FOREIGN KEY (`vehicleservicetype_id`) REFERENCES `vehicleservicetype` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicleservice`
--

LOCK TABLES `vehicleservice` WRITE;
/*!40000 ALTER TABLE `vehicleservice` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicleservice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicleserviceexecution`
--

DROP TABLE IF EXISTS `vehicleserviceexecution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicleserviceexecution` (
  `id` int NOT NULL AUTO_INCREMENT,
  `branch_id` int NOT NULL,
  `vehicleservice_id` int NOT NULL,
  `dostarted` date DEFAULT NULL,
  `doend` date DEFAULT NULL,
  `remarks` text,
  `startodometer` int DEFAULT NULL,
  `nextserviceinkm` int DEFAULT NULL,
  `maintechnician_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_vehicleserviceschedule_vehicleservice1_idx` (`vehicleservice_id`),
  KEY `fk_vehicleserviceschedule_employee1_idx` (`maintechnician_id`),
  KEY `fk_vehicleserviceschedule_branch1_idx` (`branch_id`),
  KEY `fk_vehicleserviceschedule_user1_idx` (`user_id`),
  CONSTRAINT `fk_vehicleserviceschedule_branch1` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`),
  CONSTRAINT `fk_vehicleserviceschedule_employee1` FOREIGN KEY (`maintechnician_id`) REFERENCES `employee` (`id`),
  CONSTRAINT `fk_vehicleserviceschedule_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `fk_vehicleserviceschedule_vehicleservice1` FOREIGN KEY (`vehicleservice_id`) REFERENCES `vehicleservice` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicleserviceexecution`
--

LOCK TABLES `vehicleserviceexecution` WRITE;
/*!40000 ALTER TABLE `vehicleserviceexecution` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicleserviceexecution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicleservicepart`
--

DROP TABLE IF EXISTS `vehicleservicepart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicleservicepart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `vehicleservice_id` int NOT NULL,
  `part_id` int NOT NULL,
  `quantity` decimal(10,3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_vehicleservice_has_part_part1_idx` (`part_id`),
  KEY `fk_vehicleservice_has_part_vehicleservice1_idx` (`vehicleservice_id`),
  CONSTRAINT `fk_vehicleservice_has_part_part1` FOREIGN KEY (`part_id`) REFERENCES `part` (`id`),
  CONSTRAINT `fk_vehicleservice_has_part_vehicleservice1` FOREIGN KEY (`vehicleservice_id`) REFERENCES `vehicleservice` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicleservicepart`
--

LOCK TABLES `vehicleservicepart` WRITE;
/*!40000 ALTER TABLE `vehicleservicepart` DISABLE KEYS */;
INSERT INTO `vehicleservicepart` VALUES (1,1,3,2.000),(2,2,4,1.000),(3,3,5,4.000),(4,4,2,2.000),(5,5,1,8.000),(6,1,1,8.000),(7,2,2,2.000),(8,3,3,5.000),(9,4,4,1.000),(10,5,5,4.000);
/*!40000 ALTER TABLE `vehicleservicepart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicleservicepriority`
--

DROP TABLE IF EXISTS `vehicleservicepriority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicleservicepriority` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicleservicepriority`
--

LOCK TABLES `vehicleservicepriority` WRITE;
/*!40000 ALTER TABLE `vehicleservicepriority` DISABLE KEYS */;
INSERT INTO `vehicleservicepriority` VALUES (1,'Critical'),(2,'High'),(3,'Medium'),(4,'Low');
/*!40000 ALTER TABLE `vehicleservicepriority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicleservicestatus`
--

DROP TABLE IF EXISTS `vehicleservicestatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicleservicestatus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicleservicestatus`
--

LOCK TABLES `vehicleservicestatus` WRITE;
/*!40000 ALTER TABLE `vehicleservicestatus` DISABLE KEYS */;
INSERT INTO `vehicleservicestatus` VALUES (1,'Pending'),(2,'In Progress'),(3,'On Hold Parts'),(4,'Complete'),(5,'Cancelled');
/*!40000 ALTER TABLE `vehicleservicestatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicleservicetype`
--

DROP TABLE IF EXISTS `vehicleservicetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicleservicetype` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicleservicetype`
--

LOCK TABLES `vehicleservicetype` WRITE;
/*!40000 ALTER TABLE `vehicleservicetype` DISABLE KEYS */;
INSERT INTO `vehicleservicetype` VALUES (1,'Routing Preventive'),(2,'Breakdown Repair'),(3,'Accident Repair'),(4,'Engine Overhaul'),(5,'Anual Fitness');
/*!40000 ALTER TABLE `vehicleservicetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehiclestatus`
--

DROP TABLE IF EXISTS `vehiclestatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehiclestatus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehiclestatus`
--

LOCK TABLES `vehiclestatus` WRITE;
/*!40000 ALTER TABLE `vehiclestatus` DISABLE KEYS */;
INSERT INTO `vehiclestatus` VALUES (1,'Available'),(2,'Allocated'),(3,'In Operation'),(4,'Maintenance'),(5,'Breakdown'),(6,'Decommissioned');
/*!40000 ALTER TABLE `vehiclestatus` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-08-19 16:06:40
