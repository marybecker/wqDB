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
-- Table structure for table `activitychem`
--

DROP TABLE IF EXISTS `activitychem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activitychem` (
  `ActivityIdentifier` varchar(55) NOT NULL,
  `ActivityRelativeDepthName` varchar(30) DEFAULT NULL,
  `ActivityDepthMeasureValue` decimal(5,2) DEFAULT NULL,
  `ActivityDepthMeasureUnitCode` varchar(12) DEFAULT NULL,
  `InstreamLocation` varchar(30) DEFAULT NULL,
  `LabAccession` varchar(50) NOT NULL,
  PRIMARY KEY (`ActivityIdentifier`),
  KEY `ActivityRelativeDepthName` (`ActivityRelativeDepthName`),
  KEY `ActivityDepthMeasureUnitCode` (`ActivityDepthMeasureUnitCode`),
  KEY `InstreamLocation` (`InstreamLocation`),
  CONSTRAINT `activitychem_ibfk_1` FOREIGN KEY (`ActivityRelativeDepthName`) REFERENCES `activityrelativedepth` (`Name`),
  CONSTRAINT `activitychem_ibfk_2` FOREIGN KEY (`ActivityDepthMeasureUnitCode`) REFERENCES `measurementunit` (`Code`),
  CONSTRAINT `activitychem_ibfk_3` FOREIGN KEY (`InstreamLocation`) REFERENCES `instreamlocation` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activitychem`
--

LOCK TABLES `activitychem` WRITE;
/*!40000 ALTER TABLE `activitychem` DISABLE KEYS */;
/*!40000 ALTER TABLE `activitychem` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-11  9:29:38
