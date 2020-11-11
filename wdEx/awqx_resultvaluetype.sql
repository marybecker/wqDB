-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: awqx
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `resultvaluetype`
--

DROP TABLE IF EXISTS `resultvaluetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resultvaluetype` (
  `Domain` text,
  `Unique Identifier` int DEFAULT NULL,
  `Name` varchar(20) NOT NULL,
  `Description` text,
  `Last Change Date` datetime DEFAULT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resultvaluetype`
--

LOCK TABLES `resultvaluetype` WRITE;
/*!40000 ALTER TABLE `resultvaluetype` DISABLE KEYS */;
INSERT INTO `resultvaluetype` VALUES ('Result Value Type',1,'Actual','existing now; present; current:','2012-10-15 10:57:47'),('Result Value Type',5,'Blank Corrected Calc','The data were blank corrected using the recommended procedure detailed in the analytical method.','2009-09-10 08:25:25'),('Result Value Type',3,'Calculated','To ascertain by computation or determined by mathematical calculation, evaluating, and reasoning.','2012-10-15 10:57:47'),('Result Value Type',4,'Control Adjusted','requirements are determined from the control test data','2008-07-18 11:56:55'),('Result Value Type',2,'Estimated','Approximation, educated guess, or projection of a quantity based on experience and/or information available at the time, and the cheapest (and least accurate) type of modeling.','2012-10-15 10:57:47');
/*!40000 ALTER TABLE `resultvaluetype` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-11  9:29:43
