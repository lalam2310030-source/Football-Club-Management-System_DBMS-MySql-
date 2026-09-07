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
-- Table structure for table `winsaward`
--

DROP TABLE IF EXISTS `winsaward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `winsaward` (
  `award_id` int NOT NULL,
  `person_id` int DEFAULT NULL,
  `team_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`award_id`),
  KEY `person_id` (`person_id`),
  KEY `team_name` (`team_name`),
  CONSTRAINT `winsaward_ibfk_1` FOREIGN KEY (`award_id`) REFERENCES `awards` (`award_id`) ON DELETE CASCADE,
  CONSTRAINT `winsaward_ibfk_2` FOREIGN KEY (`person_id`) REFERENCES `athlete` (`person_id`) ON DELETE CASCADE,
  CONSTRAINT `winsaward_ibfk_3` FOREIGN KEY (`team_name`) REFERENCES `team` (`team_name`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `winsaward`
--

LOCK TABLES `winsaward` WRITE;
/*!40000 ALTER TABLE `winsaward` DISABLE KEYS */;
INSERT INTO `winsaward` VALUES (1,2,NULL),(2,32,NULL),(3,25,NULL),(4,NULL,'Coquitlam Sharks'),(5,NULL,'Surrey Titans'),(6,2,NULL);
/*!40000 ALTER TABLE `winsaward` ENABLE KEYS */;
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
