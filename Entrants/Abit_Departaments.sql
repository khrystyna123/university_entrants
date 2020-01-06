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
-- Table structure for table `Departaments`
--

DROP TABLE IF EXISTS `Departaments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Departaments` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `vnz_id` int(6) unsigned DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `faculty` varchar(50) DEFAULT NULL,
  `program` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vnz_departaments` (`vnz_id`),
  CONSTRAINT `vnz_departaments` FOREIGN KEY (`vnz_id`) REFERENCES `VNZs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Departaments`
--

LOCK TABLES `Departaments` WRITE;
/*!40000 ALTER TABLE `Departaments` DISABLE KEYS */;
INSERT INTO `Departaments` VALUES (1,1,'Computer Sciense','Mathematic and Informatic','System analisys'),(2,2,'Marketing','Econom','Marketing'),(3,3,'Foreign Language','Social Sciense','Foreign Language'),(4,4,'Marketing','Econom','Marketing'),(5,5,'Organic Chemistry','Chemistry','Pharmaceutical Chemistry'),(6,6,'Surgery','Faculty 1','Surgery'),(7,7,'Anatomy','Medical','Normal Anatomy'),(8,8,'Mathematical Analisys','Math, Fisics and IT','Mathematical Analisys'),(9,9,'Computer Sciense','Computer Information Technology','Software Engineering'),(10,10,'Managment','Economic and Business','Managment'),(11,1,'International Economy','Econom','international  Economic Relations'),(12,1,'History of Ukraine','Historical','History and Archeology'),(13,2,'Foreign Languages','Law','Foreign Languages'),(14,4,'Biochemistry','Biological','Biochemistry'),(15,4,'History of Ukraine','Historical','Contemporary History of Ukraine'),(16,5,'Economic Theory','Economic','Economic Theory'),(17,8,'Biochemistry','Biological','Biochemistry'),(18,8,'History of Ukraine','History and Philosophy','Contemporary History of Ukraine');
/*!40000 ALTER TABLE `Departaments` ENABLE KEYS */;
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
