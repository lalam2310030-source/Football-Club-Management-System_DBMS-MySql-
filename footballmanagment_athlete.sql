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
-- Table structure for table `athlete`
--

DROP TABLE IF EXISTS `athlete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `athlete` (
  `person_id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `height` float DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `phone_number` bigint DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `date_started` date DEFAULT NULL,
  `jersey_num` int DEFAULT NULL,
  `current_team` varchar(100) NOT NULL,
  `salary` int DEFAULT NULL,
  PRIMARY KEY (`person_id`),
  UNIQUE KEY `phone_number` (`phone_number`),
  UNIQUE KEY `email` (`email`),
  KEY `current_team` (`current_team`),
  KEY `jersey_num` (`jersey_num`),
  CONSTRAINT `athlete_ibfk_1` FOREIGN KEY (`current_team`) REFERENCES `team` (`team_name`),
  CONSTRAINT `athlete_ibfk_2` FOREIGN KEY (`jersey_num`) REFERENCES `positiondetails` (`PositionID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `athlete`
--

LOCK TABLES `athlete` WRITE;
/*!40000 ALTER TABLE `athlete` DISABLE KEYS */;
INSERT INTO `athlete` VALUES (1,'John Doe','1989-12-05',178,77,6041234567,'john.doe@soccer.com','123 Main St, Vancouver','2006-11-30',1,'Vancouver Vipers',60000),(2,'Jane Smith','1993-04-30',170,68,8778980912,'jane.smith@soccer.com','123 Oak St, Vancouver','2014-09-07',2,'Vancouver Vipers',70000),(3,'Mike Johnson','1980-06-14',188,91,6041820192,'mike.johnson@soccer.com','461 Fir St, Vancouver','2000-04-18',3,'Vancouver Vipers',120000),(4,'Michelle Zhu','1987-02-09',178,82,7781920391,'michell.zhu@soccer.com','192 Oats Rd, Vancouver','2010-10-10',4,'Vancouver Vipers',100000),(5,'Michael Dune','1993-09-12',203,132,6045129102,'michael.dune@soccer.com','101 Chem Drive, Vancouver','2011-03-18',5,'Vancouver Vipers',500000),(6,'Serena Storm','1985-11-20',170,56,7889129301,'serena.storm@soccer.com','783 Balsam St, Vancouver','2005-02-05',6,'Vancouver Vipers',190000),(7,'Daniel Kee','1991-07-06',178,76,6045919203,'daniel.kee@soccer.com','912 Mark Lane, Vancouver','2018-08-14',7,'Vancouver Vipers',1200000),(8,'Emily Carr','1988-03-19',170,86,8778902183,'emily.carr@soccer.com','281 Fox St, Vancouver','2002-12-22',8,'Vancouver Vipers',80000),(9,'Jason Bills','1996-05-02',130,39,7781029301,'jason.bills@soccer.com','292 Blue Drive, Vancouver','2015-12-30',9,'Vancouver Vipers',180000),(10,'Rachel Jordan','1982-07-16',175,67,6045881923,'rachel.jordan@soccer.com','778 Phone St, Vancouver','2004-06-03',10,'Vancouver Vipers',175000),(11,'Rick Tord','1998-11-25',183,78,7786758192,'rick.tord@soccer.com','182 Dubious Lane, Vancouver','2009-07-12',11,'Vancouver Vipers',250000),(12,'Billy Bob','1981-01-03',198,127,6045557892,'billy.bob@socer.com','872 Fire Lane, Vancouver','2007-09-27',1,'Richmond Thunder',280000),(13,'Danielle Chu','1994-06-28',163,56,7789901203,'danielle.chu@soccer.com','897 Key St, Vancouver','2013-04-19',2,'Richmond Thunder',3400000),(14,'Darren Sam','1989-08-11',185,84,6045589102,'darren.sam@soccer.com','291 Bin Rd, Vancouver','2001-08-09',3,'Richmond Thunder',120000),(15,'Cynthia Game','1995-12-14',168,59,6049012930,'cynthia.game@soccer.com','448 Elm Rd, Vancouver','2016-01-07',4,'Richmond Thunder',190000),(16,'Mark Nguyen','1984-02-28',185,82,7781920192,'mark.nguyen@soccer.com','909 Flower Dr, Vancouver','2003-09-14',5,'Richmond Thunder',1700000),(17,'Jillian Prim','1990-04-10',173,51,6047781029,'jillian.prim@soccer.com','180 Priority St, Vancouver','2019-02-21',6,'Richmond Thunder',2000000),(18,'Simon Jones','1986-10-21',216,44,7786521829,'simon.jones@soccer.com','728 Current Dr, Vancouver','2006-07-16',7,'Richmond Thunder',70000),(19,'Adora Park','1992-02-03',157,45,6045781029,'adora.park@soccer.com','182 Princeton Way, Vancouver','2009-05-14',8,'Richmond Thunder',900000),(20,'Matt Dracos','1983-08-26',198,94,7785648189,'matt.dracos@soccer.com','994 Slogan Dr, Vancouver','2017-08-25',9,'Richmond Thunder',90000),(21,'Heidi Gram','1997-01-09',173,36,6048891203,'heidi.gram@soccer.com','444 Dragon Rd, Vancouver','2006-04-30',10,'Richmond Thunder',170000),(22,'Jeremy Lim','1980-12-23',170,67,7786541092,'jeremy.lim@soccer.com','182 Basket Way, Vancouver','2014-11-07',11,'Richmond Thunder',240000),(23,'Parker Fin','1986-04-17',168,53,6057810293,'parker.fin@soccer.com','982 Bingo St, Vancouver','2000-11-18',1,'Burnaby Warriors',170000),(24,'Lauren Shim','1992-09-15',163,40,8778718211,'lauren.shim@soccer.com','821 Heart Way, Vancouver','2008-10-01',2,'Burnaby Warriors',256000),(25,'Markus Duff','1988-11-23',203,86,6045579012,'markus.duff@soccer.com','192 Rock Lane, Vancouver','2012-06-12',3,'Burnaby Warriors',400000),(26,'Fiora Moon','1995-07-09',170,64,7786541297,'fiora.moon@soccer.com','872 Piano Dr, Vancouver','2005-08-23',4,'Burnaby Warriors',187000),(27,'Wolf Sun','1982-03-26',107,61,6045709908,'wolf.sun@soccer.com','126 Error Rd, Vancouver','2017-04-05',5,'Burnaby Warriors',80000),(28,'MJ Heart','1998-06-12',168,45,7781112345,'mj.heart@soccer.com','988 Nest Way, Vancouver','2003-02-14',6,'Burnaby Warriors',190000),(29,'Jordan Tan','1987-08-28',229,70,6048990765,'jordan.tan@soccer.com','444 Bike Lane, Vancouver','2014-10-30',7,'Burnaby Warriors',761000),(30,'Ellie Howling','1990-02-15',115,40,7789912232,'ellie.howling@soccer.com','291 Desk Rd, Vancouver','2009-03-01',8,'Burnaby Warriors',19000),(31,'Darius Wong','1986-12-21',216,77,7786098801,'darius.wong@soccer.com','321 Turn St, Vancouver','2006-09-20',9,'Burnaby Warriors',172000),(32,'Delilah Kim','1994-05-06',168,36,6045578901,'delilah.kim@soccer.com','124 Function Rd, Vancouver','2010-12-10',10,'Burnaby Warriors',900000),(33,'Francis David','1983-07-01',201,101,7786543389,'francis.david@soccer.com','127 Bacon St, Vancouver','2001-01-15',11,'Burnaby Warriors',876000),(34,'Adam Desmond','1997-11-13',178,65,6045578896,'adam.desmond@soccer.com','778 Philosophy Lane, Vancouver','2015-07-17',1,'Surrey Titans',178000),(35,'Brittany Peterson','1981-01-27',137,59,7786129993,'brittany.peterson@soccer.com','560 Canuck St, Vancouver','2004-11-08',2,'Surrey Titans',200000),(36,'Ryan Son','1999-03-10',231,84,6046678901,'ryan.son@soccer.com','329 Jensen Way, Vancouver','2018-06-25',3,'Surrey Titans',678000),(37,'Georgia Cheng','1984-07-21',180,59,8778019812,'georgia.cheng@soccer.com','008 Armour Dr, Vancouver','2007-03-03',4,'Surrey Titans',192000),(38,'Jared Sinew','1991-04-03',196,139,6040580095,'jared.sinew@soccer.com','776 Corpus Lane, Vancouver','2012-08-14',5,'Surrey Titans',70800),(39,'Ashley Shu','1996-09-17',168,54,7783220119,'ashley.shu@soccer.com','887 Compass Rd, Vancouver','2002-05-20',6,'Surrey Titans',1000000),(40,'Lucas Man','1989-12-30',203,38,6048571002,'lucas.man@soccer.com','812 Lead Dr, Vancouver','2016-04-09',7,'Surrey Titans',240000),(41,'Sherry Van','1993-05-15',188,50,7780091435,'sherry.van@soccer.com','441 Floor Rd, Vancouver','2008-01-12',8,'Surrey Titans',700000),(42,'Vincent Lu','1980-07-29',178,43,6044478990,'vincent.lu@soccer.com','128 Douglas Dr, Vancouver','2011-09-27',9,'Surrey Titans',860000),(43,'Mary Jane','1987-02-27',180,49,7787563299,'mary.jane@soccer.com','888 Thunder Rd, Vancouver','2005-06-22',10,'Surrey Titans',978000),(44,'Jason Billy','1993-09-20',180,57,6049890071,'jason.billy@soccer.com','449 Apple St, Vancouver','2017-01-05',11,'Surrey Titans',170000),(45,'Harry Ford','1985-11-18',188,71,7786543090,'harry.ford@soccer.com','192 Falcon Dr, Vancouver','2003-12-14',1,'Coquitlam Sharks',16700000),(46,'Ruth North','1991-07-12',137,149,6045589012,'ruth.north@soccer.com','514 Fox Way, Vancouver','2014-07-30',2,'Coquitlam Sharks',40000),(47,'Luke Sky','1988-03-25',203,241,7786543998,'luke.sky@soccer.com','123 Force Lane, Vancouver','2009-05-01',3,'Coquitlam Sharks',990000),(48,'Noon Locomotion','1996-05-18',137,68,7780091002,'noon.locomotion@soccer.com','443 Train Rd, Vancouver','2006-10-20',4,'Coquitlam Sharks',54600),(49,'Parker Jones','1982-07-26',178,190,6041123009,'parker.jones@soccer.com','652 Stone Lane, Vancouver','2011-01-10',5,'Coquitlam Sharks',981000),(50,'Jamie Flame','1998-11-27',180,167,7784439012,'jamie.flame@soccer.com','332 Yang St, Vancouver','2001-02-15',6,'Coquitlam Sharks',728000),(51,'Dennis Honda','1981-01-09',195,136,6045589900,'dennis.honda@soccer.com','126 Arch Way, Vancouver','2015-08-17',7,'Coquitlam Sharks',971000),(52,'Karina Allen','1994-07-27',178,94,7786519822,'karina.allen@soccer.com','349 Synchronization Lane, Vancouver','2004-12-08',8,'Coquitlam Sharks',144000),(53,'John Under','1989-09-15',146,119,6045567124,'john.under@soccer.com','448 Dream Rd, Vancouver','2018-07-25',9,'Coquitlam Sharks',322900),(54,'Alicia Yoo','1995-11-18',168,120,7781129945,'alicia.yoo@soccer.com','229 Ocean Rd, Vancouver','2007-04-03',10,'Coquitlam Sharks',890000),(55,'Cameron Jonas','1984-03-30',185,146,7781009020,'cameron.jones@soccer.com','776 Sting St, Vancouver','2012-09-14',11,'Coquitlam Sharks',750000),(56,'James Fort','1990-07-17',210,156,6049125567,'james.fort@soccer.com','554 Knob Rd, Vancouver','2002-06-20',1,'Langley Bears',150000),(57,'Ivana Lee','1986-09-02',137,144,7786990001,'ivana.lee@soccer.com','447 Jelly Way, Vancouver','2016-05-09',2,'Langley Bears',800000),(58,'Jim Gear','1992-02-04',180,239,6045578990,'jim.gear@soccer.com','761 Willow Drive, Vancouver','2008-02-12',3,'Langley Bears',60000),(59,'Sophia Turn','1983-08-23',163,129,8786654888,'sophia.turn@soccer.com','551 Sunflower Way, Vancouver','2011-10-27',4,'Langley Bears',765000),(60,'Andrew Lim','1997-01-19',196,178,6049980073,'andrew.lim@soccer.com','060 Focus St, Vancouver','2005-07-22',5,'Langley Bears',236000),(61,'Evelyn Crow','1980-12-03',137,144,7786527778,'evelyn.crow@soccer.com','445 Gold Lane, Vancouver','2017-02-05',6,'Langley Bears',743000),(62,'Tim Shore','1986-04-15',203,345,6045590087,'tim.shore@soccer.com','112 Plane Rd, Vancouver','2004-01-14',7,'Langley Bears',76500),(63,'Rebecca Salvador','1992-09-30',157,100,6048891112,'rebecca.salvador@soccer.com','887 Leaf Way, Vancouver','2015-07-30',8,'Langley Bears',106700),(64,'Jean Fargo','1988-11-07',168,178,7782234778,'jean.fargo@soccer.com','119 Boar Dr, Vancouver','2010-05-01',9,'Langley Bears',178000),(65,'Selena An','1995-07-12',144,110,6045009122,'selena.an@soccer.com','132 Stores Way, Vancouver','2006-11-20',10,'Langley Bears',1780000),(66,'Ahmed Tom','1982-03-06',188,143,7786223489,'ahmed.tom@soccer.com','443 Manager St. Vancouver','2011-02-10',11,'Langley Bears',166500),(67,'Simon Fraser','1988-07-12',121,106,6049175567,'simon.fraser@soccer.com','888 Machine Rd, Vancouver','2012-06-23',1,'Langley Bears',170000),(68,'Marie So','2000-09-02',181,145,7786990101,'marie.so@soccer.com','409 Pillar Lane, Vancouver','2016-08-08',2,'Langley Bears',600000),(69,'Jayden Jay','1998-12-04',209,59,6045579990,'jayden.jay@soccer.com','561 Heather Drive, Vancouver','2008-07-12',3,'Langley Bears',60500),(70,'Jordan Barber','1963-08-24',156,89,8778625488,'jordan.barber@soccer.com','760 Daisy Way, Vancouver','2001-10-27',4,'Langley Bears',795000),(71,'Phil Robins','1998-05-29',197,190,6049980077,'phil.robins@soccer.com','440 Rogue Way, Vancouver','2021-07-20',5,'Langley Bears',341000),(72,'Esther Swan','1971-02-28',147,146,7786527078,'esther.swan@soccer.com','822 Silver St, Vancouver','2017-08-05',6,'Langley Bears',980000);
/*!40000 ALTER TABLE `athlete` ENABLE KEYS */;
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
