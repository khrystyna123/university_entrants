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
-- Temporary view structure for view `ZNO_Points`
--

DROP TABLE IF EXISTS `ZNO_Points`;
/*!50001 DROP VIEW IF EXISTS `ZNO_Points`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ZNO_Points` AS SELECT 
 1 AS `ZNO`,
 1 AS `Average_point`,
 1 AS `Number_of_students`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Entrants_under_18`
--

DROP TABLE IF EXISTS `Entrants_under_18`;
/*!50001 DROP VIEW IF EXISTS `Entrants_under_18`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Entrants_under_18` AS SELECT 
 1 AS `id`,
 1 AS `lastname`,
 1 AS `firstname`,
 1 AS `surname`,
 1 AS `date_of_birth`,
 1 AS `address`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `University`
--

DROP TABLE IF EXISTS `University`;
/*!50001 DROP VIEW IF EXISTS `University`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `University` AS SELECT 
 1 AS `University`,
 1 AS `Faculty`,
 1 AS `Department`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Application`
--

DROP TABLE IF EXISTS `Application`;
/*!50001 DROP VIEW IF EXISTS `Application`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Application` AS SELECT 
 1 AS `Last_name`,
 1 AS `First_name`,
 1 AS `Surname`,
 1 AS `Departament`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Applications_count`
--

DROP TABLE IF EXISTS `Applications_count`;
/*!50001 DROP VIEW IF EXISTS `Applications_count`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Applications_count` AS SELECT 
 1 AS `VNZ`,
 1 AS `Number_of_applications`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `ZNO_Points`
--

/*!50001 DROP VIEW IF EXISTS `ZNO_Points`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ZNO_Points` (`ZNO`,`Average_point`,`Number_of_students`) AS select `z`.`subject` AS `subject`,avg(`p`.`point`) AS `average`,count(`p`.`zno_id`) AS `count(p.zno_id)` from (`ZNOs` `z` join `Points` `p`) where (`p`.`zno_id` = `z`.`id`) group by `z`.`subject` order by `average` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Entrants_under_18`
--

/*!50001 DROP VIEW IF EXISTS `Entrants_under_18`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `Entrants_under_18` AS select `e`.`id` AS `id`,`e`.`lastname` AS `lastname`,`e`.`firstname` AS `firstname`,`e`.`surname` AS `surname`,`e`.`date_of_birth` AS `date_of_birth`,`e`.`address` AS `address` from `Entrants` `e` where (`e`.`date_of_birth` > '2000-08-01') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `University`
--

/*!50001 DROP VIEW IF EXISTS `University`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `University` (`University`,`Faculty`,`Department`) AS select `v`.`name` AS `name`,`d`.`faculty` AS `faculty`,`d`.`name` AS `name` from (`VNZs` `v` join `Departaments` `d`) where (`v`.`id` = `d`.`vnz_id`) order by `v`.`name`,`d`.`faculty`,`d`.`name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Application`
--

/*!50001 DROP VIEW IF EXISTS `Application`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `Application` (`Last_name`,`First_name`,`Surname`,`Departament`) AS select `e`.`lastname` AS `lastname`,`e`.`firstname` AS `firstname`,`e`.`surname` AS `surname`,`d`.`name` AS `name` from ((`Entrants` `e` join `Departaments` `d`) join `Departaments_Entrants` `de`) where ((`d`.`id` = `de`.`departaments_id`) and (`e`.`id` = `de`.`entrants_id`)) order by `e`.`lastname`,`e`.`firstname` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Applications_count`
--

/*!50001 DROP VIEW IF EXISTS `Applications_count`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `Applications_count` (`VNZ`,`Number_of_applications`) AS select `v`.`name` AS `name`,(select count(`e`.`id`) from ((`Departaments` `d` join `Departaments_Entrants` `de`) join `Entrants` `e`) where ((`e`.`id` = `de`.`entrants_id`) and (`d`.`id` = `de`.`departaments_id`) and (`d`.`vnz_id` = `v`.`id`))) AS `num` from `VNZs` `v` order by (select count(`e`.`id`) from ((`Departaments` `d` join `Departaments_Entrants` `de`) join `Entrants` `e`) where ((`e`.`id` = `de`.`entrants_id`) and (`d`.`id` = `de`.`departaments_id`) and (`d`.`vnz_id` = `v`.`id`))) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'Abit'
--

--
-- Dumping routines for database 'Abit'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-03  7:18:17
