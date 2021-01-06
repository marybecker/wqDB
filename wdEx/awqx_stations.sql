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
  KEY `createUser` (`createUser`),
  KEY `lastUpdateUser` (`lastUpdateUser`),
  CONSTRAINT `horizCollectMeth` FOREIGN KEY (`horizCollectMethod`) REFERENCES `horizontalcollectionmethod` (`Name`),
  CONSTRAINT `locType` FOREIGN KEY (`locationType`) REFERENCES `monitoringlocationtype` (`Name`),
  CONSTRAINT `stations_ibfk_1` FOREIGN KEY (`horizRefDatum`) REFERENCES `horizontalreferencedatum` (`Name`),
  CONSTRAINT `stations_ibfk_2` FOREIGN KEY (`stateCd`) REFERENCES `state` (`Code`),
  CONSTRAINT `stations_ibfk_3` FOREIGN KEY (`munName`) REFERENCES `municipalities` (`Name`),
  CONSTRAINT `stations_ibfk_4` FOREIGN KEY (`subBasin`) REFERENCES `subbasin` (`SubBasin`),
  CONSTRAINT `stations_ibfk_5` FOREIGN KEY (`createUser`) REFERENCES `contacts` (`ContactID`),
  CONSTRAINT `stations_ibfk_6` FOREIGN KEY (`lastUpdateUser`) REFERENCES `contacts` (`ContactID`),
  CONSTRAINT `xlong_outOfBounds` CHECK (((`xlong` >= -(73.8)) and (`xlong` < -(71.8)))),
  CONSTRAINT `ylat_outOfBounds` CHECK (((`ylat` >= 40.8) and (`ylat` < 42.3)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stations`
--

LOCK TABLES `stations` WRITE;
/*!40000 ALTER TABLE `stations` DISABLE KEYS */;
INSERT INTO `stations` VALUES (16788,'KEELER BROOK','Above Flax Hill Rd','River/Stream',41.092,-73.4397,24000,'Unknown','NAD83','CT','NORWALK',7401,'Needs','2009-01-12 00:00:00','AAarrestad','2014-01-12 12:58:00','AAarrestad'),(15294,'Norwalk River','downstream Rte 33 behind Red Rooster Pub','River/Stream',41.1954,-73.4321,24000,'Interpolation-Map','NAD83','CT','WILTON',7300,'CT7300-00_02','2003-09-22 00:00:00','AAarrestad','2019-10-13 13:39:00','AAarrestad'),(16649,'FARMILL RIVER','100 M US Jct of Yutaka Trail and Manhasset Rd','River/Stream',41.2633,-73.1047,24000,'Unknown','NAD83','CT','STRATFORD',6025,'Needs','2009-01-12 00:00:00','AAarrestad','2010-03-00 00:00:00','AAarrestad'),(19955,'NNT to Saugatuck River','US of State HWY 53 (Redding Rd)','River/Stream',41.2997,-73.3997,0,'Interpolation-Satellite','WGS84','CT','REDDING',7200,'','2017-09-27 15:06:00','AAarrestad','2017-09-15 15:29:00','AAarrestad'),(18447,'West River','between Laurel ridge and alma drive at bend close to route 77','River/Stream',41.3312,-72.7066,0,'Interpolation-Satellite','WGS84','CT','GUILFORD',5110,'5110.0','2013-01-28 14:24:00','AAarrestad','2018-05-10 10:55:00','AAarrestad'),(15274,'Sargent River','At Sperry Rd','River/Stream',41.384,-72.988,24000,'Interpolation-Map','NAD83','CT','WOODBRIDGE',5303,'CT5303-00_01','2003-09-22 00:00:00','AAarrestad','2010-03-00 00:00:00','AAarrestad'),(19956,'Limekiln Brook','Adjacent to Plumtrees Road','River/Stream',41.3919,-73.3909,0,'Interpolation-Satellite','WGS84','CT','BETHEL',6606,'','2017-09-27 15:10:00','AAarrestad','2017-09-15 15:29:00','AAarrestad'),(19933,'Thompson Brook','Behind Mystic Valley Hunt Club, above two impounded ponds','River/Stream',41.4019,-72.0443,0,'Interpolation-Satellite','WGS84','CT','LEDYARD',2107,'','2017-09-13 16:05:00','AAarrestad','2017-09-16 16:33:00','AAarrestad'),(17324,'Latimer Brook','behind St Mathias Church','River/Stream',41.4073,-72.2217,24000,'Interpolation-Map','NAD83','CT','EAST LYME',2202,'needs','2009-11-20 00:00:00','AAarrestad','2010-03-00 00:00:00','AAarrestad'),(20128,'Susquetonscut Brook','Upstream Murphy Road','River/Stream',41.5806,-72.1395,0,'Interpolation-Satellite','WGS84','CT','FRANKLIN',3907,'','2018-10-30 09:57:00','AAarrestad','2018-10-10 10:04:00','AAarrestad'),(18921,'Shepaug River, Unnamed Tributary to','100 m above mouth','River/Stream Perennial',41.6057,-73.3397,0,'Interpolation-Satellite','WGS84','CT','WASHINGTON',6700,'','2015-09-18 10:30:00','AAarrestad','2017-09-15 15:35:00','AAarrestad'),(19938,'Mint Brook','Adjacent the Airline Trail and Rt 207','River/Stream',41.6406,-72.3389,0,'Interpolation-Satellite','WGS84','CT','HEBRON',4701,'','2017-09-19 13:33:00','AAarrestad','2019-05-15 15:37:00','AAarrestad'),(19957,'Merryall Brook','~160 M US of Indian Trail Road','River/Stream',41.6517,-73.4467,0,'Interpolation-Satellite','WGS84','CT','NEW MILFORD',6501,'','2017-09-27 15:16:00','AAarrestad','2017-09-15 15:30:00','AAarrestad'),(20127,'Pequabuck River','In between Rt 72 and Waterbury Rd','River/Stream',41.6701,-72.9691,0,'Interpolation-Satellite','WGS84','CT','BRISTOL',4315,'','2018-10-30 09:44:00','AAarrestad','2018-10-09 09:56:00','AAarrestad'),(14392,'Pequabuck River','adjacent USGS Gage upstream of Central Avenue','River/Stream',41.6738,-72.8977,24000,'Interpolation-Map','NAD83','CT','BRISTOL',4315,'CT4315-00_02','1999-03-02 00:00:00','AAarrestad','2010-03-00 00:00:00','AAarrestad'),(19940,'Gunn Brook','Adjacent State Hwy 45 in Cornwall','River/Stream',41.8,-73.379,0,'Interpolation-Satellite','WGS84','CT','CORNWALL',6000,'','2017-09-20 15:08:00','AAarrestad','2017-09-15 15:09:00','AAarrestad'),(16873,'MOUNT HOPE RIVER','US of rte 89','River/Stream',41.8814,-72.1639,24000,'Unknown','NAD83','CT','ASHFORD',3206,'CT3206-00_02','2009-01-12 00:00:00','AAarrestad','2010-03-00 00:00:00','AAarrestad'),(20129,'Ocain Brook','Adj Rt 63','River/Stream',41.8994,-73.2649,0,'Interpolation-Satellite','WGS84','CT','GOSHEN',6200,'','2018-10-30 10:07:00','AAarrestad','2018-10-10 10:08:00','AAarrestad'),(19931,'Charters Brook','Adjacent Shenipsit Lake Road','River/Stream',41.9033,-72.4056,0,'Interpolation-Satellite','WGS84','CT','TOLLAND',4501,'','2017-09-05 13:28:00','AAarrestad','2017-09-13 13:28:00','AAarrestad'),(20123,'Labonte Brook','Adjacent Babcock Road','River/Stream',41.9036,-72.3077,0,'Interpolation-Satellite','WGS84','CT','WILLINGTON',3100,'','2018-10-22 14:16:00','AAarrestad','2018-10-14 14:18:00','AAarrestad'),(20124,'NNT to Sucker Brook','Adj Rt 263','River/Stream',41.9169,-73.1154,0,'Interpolation-Satellite','WGS84','CT','WINCHESTER',4302,'','2018-10-22 14:23:00','AAarrestad','2018-10-09 09:39:00','AAarrestad'),(20122,'Deming Brook','850m upstream Under Mountain Road','River/Stream',41.9706,-73.2947,0,'Interpolation-Satellite','WGS84','CT','CANAAN',6202,'','2018-10-16 16:31:00','AAarrestad','2018-10-16 16:31:00','AAarrestad');
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

-- Dump completed on 2021-01-06 18:24:55
