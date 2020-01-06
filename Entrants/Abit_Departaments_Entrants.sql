CREATE DATABASE  IF NOT EXISTS `Abit` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `Abit`;
-- MySQL dump 10.13  Distrib 8.0.18, for Linux (x86_64)
--
-- Host: localhost    Database: Abit
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `Departaments_Entrants`
--

DROP TABLE IF EXISTS `Departaments_Entrants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Departaments_Entrants` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `entrants_id` int(6) unsigned DEFAULT NULL,
  `departaments_id` int(6) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entrants_id` (`entrants_id`),
  KEY `departaments_id` (`departaments_id`),
  CONSTRAINT `Departaments_Entrants_ibfk_1` FOREIGN KEY (`entrants_id`) REFERENCES `Entrants` (`id`),
  CONSTRAINT `Departaments_Entrants_ibfk_2` FOREIGN KEY (`departaments_id`) REFERENCES `Departaments` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Departaments_Entrants`
--

LOCK TABLES `Departaments_Entrants` WRITE;
/*!40000 ALTER TABLE `Departaments_Entrants` DISABLE KEYS */;
INSERT INTO `Departaments_Entrants` VALUES (1,1,1),(2,1,8),(3,1,9),(4,2,2),(5,3,10),(6,4,6),(7,4,7),(8,5,4),(9,6,3),(10,6,8),(11,7,5),(12,8,5),(13,9,10),(14,10,1),(15,10,8),(16,3,11),(17,2,12),(18,9,13),(19,4,15),(20,5,16),(21,3,18);
/*!40000 ALTER TABLE `Departaments_Entrants` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-03  7:18:17
