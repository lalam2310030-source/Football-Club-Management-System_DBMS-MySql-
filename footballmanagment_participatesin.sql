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
-- Table structure for table `participatesin`
--

DROP TABLE IF EXISTS `participatesin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participatesin` (
  `game_id` int NOT NULL,
  `team_1` varchar(100) DEFAULT NULL,
  `team_2` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`game_id`),
  KEY `team_1` (`team_1`),
  KEY `team_2` (`team_2`),
  CONSTRAINT `participatesin_ibfk_1` FOREIGN KEY (`team_1`) REFERENCES `team` (`team_name`) ON DELETE CASCADE,
  CONSTRAINT `participatesin_ibfk_2` FOREIGN KEY (`team_2`) REFERENCES `team` (`team_name`) ON DELETE CASCADE,
  CONSTRAINT `participatesin_ibfk_3` FOREIGN KEY (`game_id`) REFERENCES `game` (`game_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participatesin`
--

LOCK TABLES `participatesin` WRITE;
/*!40000 ALTER TABLE `participatesin` DISABLE KEYS */;
INSERT INTO `participatesin` VALUES (1,'Vancouver Vipers','Richmond Thunder'),(2,'Burnaby Warriors','Surrey Titans'),(3,'Coquitlam Sharks','Langley Bears'),(4,'Vancouver Vipers','Burnaby Warriors'),(5,'Richmond Thunder','Coquitlam Sharks'),(6,'Surrey Titans','Langley Bears'),(7,'Vancouver Vipers','Surrey Titans'),(8,'Burnaby Warriors','Coquitlam Sharks'),(9,'Richmond Thunder','Langley Bears'),(10,'Vancouver Vipers','Coquitlam Sharks'),(11,'Burnaby Warriors','Langley Bears'),(12,'Richmond Thunder','Surrey Titans'),(13,'Langley Bears','Vancouver Vipers'),(14,'Richmond Thunder','Burnaby Warriors'),(15,'Coquitlam Sharks','Surrey Titans');
/*!40000 ALTER TABLE `participatesin` ENABLE KEYS */;
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
