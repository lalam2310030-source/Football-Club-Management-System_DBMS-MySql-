-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: footballmanagment
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `coach`
--

DROP TABLE IF EXISTS `coach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coach` (
  `person_id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `height` float DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `phone_number` bigint DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `date_started` date DEFAULT NULL,
  `current_team` varchar(100) NOT NULL,
  `specialization` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`person_id`),
  UNIQUE KEY `phone_number` (`phone_number`),
  UNIQUE KEY `email` (`email`),
  KEY `current_team` (`current_team`),
  CONSTRAINT `coach_ibfk_1` FOREIGN KEY (`current_team`) REFERENCES `team` (`team_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coach`
--

LOCK TABLES `coach` WRITE;
/*!40000 ALTER TABLE `coach` DISABLE KEYS */;
INSERT INTO `coach` VALUES (1,'Daniel Lee','1985-04-15',178,80,6048234567,'daniel.lee@soccer.com','567 Birch St, Vancouver','2000-07-10','Vancouver Vipers','Head Coach'),(2,'Olivia Johnson','1992-09-25',168,64,7788345678,'olivia.johnson@soccer.com','890 Elm St, Vancouver','2010-03-18','Vancouver Vipers','Assistant Coach'),(3,'William Smith','1988-11-03',182,84,6048456789,'william.smith@soccer.com','123 Cedar St, Vancouver','2005-12-05','Richmond Thunder','Head Coach'),(4,'Sophia Brown','1995-07-19',170,68,7788567890,'sophia.brown@soccer.com','456 Fir St, Vancouver','2018-02-14','Richmond Thunder','Assistant Coach'),(5,'James Anderson','1982-03-12',188,88,6048678901,'james.anderson@soccer.com','789 Pine St, Vancouver','2002-09-22','Burnaby Warriors','Head Coach'),(6,'Simon Roach','1998-05-29',175,64,6045889120,'simon.roach@soccer.com','932 Red Oak St, Vancouver','2015-06-30','Burnaby Warriors','Assistant Coach'),(7,'Madeline Bills','1987-08-14',168,58,7781029391,'madeline.bills@soccer.com','402 Ocean View Rd, Vancouver','2004-04-03','Surrey Titans','Head Coach'),(8,'Rachel Chu','1990-01-02',170,51,7789203019,'rachel.chu@soccer.com','102 Panther Lane, Vancouver','2009-11-12','Surrey Titans','Assistant Coach'),(9,'Oscar Rodriguez','1986-12-08',206,101,7780192939,'oscar.rodriguez@soccer.com','882 Parker Drive, Vancouver','2007-07-27','Coquitlam Sharks','Head Coach'),(10,'Natalie Nguyen','1994-04-23',185,81,6047789102,'natalie.nguyen@soccer.com','721 Red Roof Way, Vancouver','2013-01-19','Coquitlam Sharks','Assistant Coach'),(11,'Robert Barns','1983-06-17',178,102,6042102939,'robert.barns@soccer.com','900 Frankfurt Rd, Vancouver','2001-10-09','Langley Bears','Head Coach'),(12,'Bill Bacon','1997-10-30',150,71,7781920392,'bill.bacon@soccer.com','562 Fox Den Lane, Vancouver','2014-08-07','Langley Bears','Assistant Coach');
/*!40000 ALTER TABLE `coach` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-22 14:25:27
