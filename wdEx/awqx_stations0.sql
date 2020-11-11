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
-- Table structure for table `stations`
--

DROP TABLE IF EXISTS `stations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stations` (
  `staSeq` int NOT NULL,
  `locationName` varchar(255) NOT NULL,
  `locationDescription` varchar(255) DEFAULT NULL,
  `locationType` varchar(45) NOT NULL,
  `ylat` float NOT NULL,
  `xlong` float NOT NULL,
  `sourceMapScale` int NOT NULL,
  `horizCollectMethod` varchar(70) NOT NULL,
  `horizRefDatum` varchar(6) NOT NULL,
  `stateCd` varchar(4) NOT NULL,
  `munName` varchar(50) NOT NULL,
  `subBasin` int NOT NULL,
  `adbSegID` varchar(20) DEFAULT NULL,
  `createDate` datetime NOT NULL,
  `createUser` varchar(50) NOT NULL,
  `lastUpdateDate` datetime DEFAULT NULL,
  `lastUpdateUser` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ylat`,`xlong`),
  UNIQUE KEY `staSeq` (`staSeq`),
  KEY `locType` (`locationType`),
  KEY `horizCollectMeth` (`horizCollectMethod`),
  KEY `horizRefDatum` (`horizRefDatum`),
  KEY `stateCd` (`stateCd`),
  KEY `munName` (`munName`),
  KEY `subBasin` (`subBasin`),
  CONSTRAINT `horizCollectMeth` FOREIGN KEY (`horizCollectMethod`) REFERENCES `horizontalcollectionmethod` (`Name`),
  CONSTRAINT `locType` FOREIGN KEY (`locationType`) REFERENCES `monitoringlocationtype` (`Name`),
  CONSTRAINT `stations_ibfk_1` FOREIGN KEY (`horizRefDatum`) REFERENCES `horizontalreferencedatum` (`Name`),
  CONSTRAINT `stations_ibfk_2` FOREIGN KEY (`stateCd`) REFERENCES `state` (`Code`),
  CONSTRAINT `stations_ibfk_3` FOREIGN KEY (`munName`) REFERENCES `municipalities` (`Name`),
  CONSTRAINT `stations_ibfk_4` FOREIGN KEY (`subBasin`) REFERENCES `subbasin` (`SubBasin`),
  CONSTRAINT `ylat_ck` CHECK (((`ylat` > 40.9) and (`ylat` < 42.11)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stations`
--

LOCK TABLES `stations` WRITE;
/*!40000 ALTER TABLE `stations` DISABLE KEYS */;
INSERT INTO `stations` VALUES (2,'Aspetuck River','Downstream Bayberry Lane','River/Stream',41.1864,-73.3429,24000,'Unknown','NAD83','CT','WESTPORT',7202,'CT7202-00_01','2020-08-16 10:00:49','deepuser',NULL,NULL),(5,'Testing River','downstream Smokey Hollow Road','River/Stream',41.1864,-73.3428,24000,'Interpolation-Map','NAD83','CT','MORRIS',6705,'CT6705-00_01','2020-08-16 10:00:49','deepuser',NULL,NULL),(1,'Aspetuck River','Downstream Bayberry Lane','River/Stream',41.31,-73.3,24000,'Unknown','NAD83','CT','WESTPORT',7202,'CT7202-00_01','2020-08-16 09:57:03','deepuser',NULL,NULL),(17529,'Stony Brook','DS Route 234','River/Stream',41.3719,-71.9069,24000,'Unknown','NAD83','CT','STONINGTON',2000,'Needs','2004-04-22 00:00:00','Beauchene','2004-05-13 00:00:00','Beauchene'),(6,'A River','Downstream Bayberry Lane','River/Stream',41.3975,-73.398,24000,'Unknown','NAD83','CT','WESTPORT',7202,'CT7202-00_01','1999-01-01 12:00:00','deepuser',NULL,NULL),(17572,'Roaring Brook','at Woodland Street','River/Stream',41.6705,-72.5649,24000,'Unknown','NAD83','CT','GLASTONBURY',4009,'Needs','2004-03-24 00:00:00','Beauchene','2004-05-13 00:00:00','Beauchene'),(4,'Bantam River','downstream Smokey Hollow Road','River/Stream',41.6884,-73.2668,24000,'Interpolation-Map','NAD83','CT','MORRIS',6705,'CT6705-00_01','2020-08-16 10:00:49','deepuser',NULL,NULL),(3,'Bantam River','upstream Morris Hill Road/Stoddard Road','River/Stream',41.7122,-73.2457,24000,'Interpolation-Map','NAD83','CT','LITCHFIELD',6705,'CT6705-00_02','2020-08-16 10:00:49','deepuser',NULL,NULL),(17554,'Skungamaug River','at Route 195 crossing','River/Stream',41.8623,-72.3634,24000,'Unknown','NAD83','CT','TOLLAND',3106,'Needs','2004-03-11 00:00:00','Beauchene','2004-05-13 00:00:00','Beauchene'),(17555,'Skungamaug River, unknown pipe','downstream pipe discharge at Old Cathole Road crossing','River/Stream',41.8737,-72.3514,24000,'Unknown','NAD83','CT','TOLLAND',3106,'Needs','2004-03-17 00:00:00','Beauchene','2004-05-13 00:00:00','Beauchene');
/*!40000 ALTER TABLE `stations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-11  9:29:44
