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
-- Table structure for table `locatedin`
--

DROP TABLE IF EXISTS `locatedin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locatedin` (
  `game_id` int NOT NULL,
  `venue_address` varchar(100) NOT NULL,
  PRIMARY KEY (`game_id`,`venue_address`),
  KEY `venue_address` (`venue_address`),
  CONSTRAINT `locatedin_ibfk_1` FOREIGN KEY (`game_id`) REFERENCES `game` (`game_id`) ON DELETE CASCADE,
  CONSTRAINT `locatedin_ibfk_2` FOREIGN KEY (`venue_address`) REFERENCES `venue` (`venue_address`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locatedin`
--

LOCK TABLES `locatedin` WRITE;
/*!40000 ALTER TABLE `locatedin` DISABLE KEYS */;
INSERT INTO `locatedin` VALUES (13,'1923 River Road, Langley'),(6,'5101 Maple Lane, Surrey'),(1,'5123 Main Street, Vancouver'),(4,'5123 Main Street, Vancouver'),(7,'5123 Main Street, Vancouver'),(10,'5123 Main Street, Vancouver'),(3,'5234 Pine Street, Coquitlam'),(15,'5234 Pine Street, Coquitlam'),(5,'5456 Oak Avenue, Richmond'),(9,'5456 Oak Avenue, Richmond'),(12,'5456 Oak Avenue, Richmond'),(14,'5456 Oak Avenue, Richmond'),(2,'5789 Elm Road, Burnaby'),(8,'5789 Elm Road, Burnaby'),(11,'5789 Elm Road, Burnaby');
/*!40000 ALTER TABLE `locatedin` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-22 14:25:26
