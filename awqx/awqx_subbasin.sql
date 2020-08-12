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
-- Table structure for table `subbasin`
--

DROP TABLE IF EXISTS `subbasin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subbasin` (
  `SUB_BAS_SEQ` int DEFAULT NULL,
  `Sub_Reg_Seq` int DEFAULT NULL,
  `SubBasin` int NOT NULL,
  `Description` text,
  `LU_Reg_Basin` int DEFAULT NULL,
  `LU_Maj_Basin` int DEFAULT NULL,
  `Last_Changed_Date` datetime DEFAULT NULL,
  `Inactive` int DEFAULT NULL,
  PRIMARY KEY (`SubBasin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subbasin`
--

LOCK TABLES `subbasin` WRITE;
/*!40000 ALTER TABLE `subbasin` DISABLE KEYS */;
INSERT INTO `subbasin` VALUES (337,0,0,'Long Island Sound',NULL,NULL,'2010-02-05 15:37:56',0),(1,2,1000,'Pawcatuck River',1534,1510,'2009-05-21 10:01:44',0),(2,3,1001,'Wyassup Brook',1534,1510,'2009-05-21 10:01:44',0),(3,4,1002,'Green Fall River',1534,1510,'2009-05-21 10:01:44',0),(4,5,1003,'Ashaway River',1534,1510,'2009-05-21 10:01:44',0),(5,6,1004,'Shunock River',1534,1510,'2009-05-21 10:01:44',0),(6,7,1100,'Wood River',1557,1510,'2009-05-21 10:01:44',0),(7,8,1101,'Brushy Brook',1557,1510,'2009-05-21 10:01:44',0),(8,9,2000,'Southeast Shoreline',1547,1512,'2009-05-21 10:01:44',0),(9,10,2101,'Anguilla Brook',1546,1512,'2009-05-21 10:01:44',0),(10,11,2102,'Copps Brook',1546,1512,'2009-05-21 10:01:44',0),(11,12,2103,'Williams Brook',1546,1512,'2009-05-21 10:01:44',0),(12,13,2104,'Whitford Brook',1546,1512,'2009-05-21 10:01:44',0),(13,14,2105,'Haleys Brook',1546,1512,'2009-05-21 10:01:44',0),(14,15,2106,'Mystic River',1546,1512,'2009-05-21 10:01:44',0),(15,16,2107,'Great Brook',1546,1512,'2009-05-21 10:01:44',0),(16,17,2201,'Jordan Brook',1548,1512,'2009-05-21 10:01:44',0),(17,18,2202,'Latimer Brook',1548,1512,'2009-05-21 10:01:44',0),(18,19,2203,'Oil Mill Brook',1548,1512,'2009-05-21 10:01:44',0),(19,20,2204,'Niantic River',1548,1512,'2009-05-21 10:01:44',0),(20,21,2205,'Pattagansett River',1548,1512,'2009-05-21 10:01:44',0),(21,22,2206,'Bride Brook',1548,1512,'2009-05-21 10:01:44',0),(22,23,2207,'Fourmile River',1548,1512,'2009-05-21 10:01:44',0),(23,24,3000,'Thames River',1555,1514,'2009-05-21 10:01:44',0),(24,25,3001,'Trading Cove Brook',1555,1514,'2009-05-21 10:01:44',0),(25,26,3002,'Shewville Brook',1555,1514,'2009-05-21 10:01:44',0),(26,27,3003,'Poquetanuck Brook',1555,1514,'2009-05-21 10:01:44',0),(27,28,3004,'Oxoboxo Brook',1555,1514,'2009-05-21 10:01:44',0),(28,29,3005,'Stony Brook',1555,1514,'2009-05-21 10:01:44',0),(29,30,3006,'Hunts Brook',1555,1514,'2009-05-21 10:01:44',0),(30,31,3100,'Willimantic River',1556,1514,'2009-05-21 10:01:44',0),(31,32,3101,'Edson Brook',1556,1514,'2009-05-21 10:01:44',0),(32,33,3102,'Middle River',1556,1514,'2009-05-21 10:01:44',0),(33,34,3103,'Furnace Brook',1556,1514,'2009-05-21 10:01:44',0),(34,35,3104,'Roaring Brook',1556,1514,'2009-05-21 10:01:44',0),(35,36,3105,'Mill Brook',1556,1514,'2009-05-21 10:01:44',0),(36,37,3106,'Skungamaug River',1556,1514,'2009-05-21 10:01:44',0),(37,38,3107,'Burnap Brook',1556,1514,'2009-05-21 10:01:44',0),(38,39,3108,'Hop River',1556,1514,'2009-05-21 10:01:44',0),(39,40,3109,'Giffords Brook',1556,1514,'2009-05-21 10:01:44',0),(40,41,3110,'Tenmile River',1556,1514,'2009-05-21 10:01:44',0),(41,42,3200,'Natchaug River',1529,1514,'2009-05-21 10:01:44',0),(42,43,3201,'Bungee Brook',1529,1514,'2009-05-21 10:01:44',0),(43,44,3202,'Still River',1529,1514,'2009-05-21 10:01:44',0),(44,45,3203,'Bigelow Brook',1529,1514,'2009-05-21 10:01:44',0),(45,46,3204,'Stonehouse Brook',1529,1514,'2009-05-21 10:01:44',0),(46,47,3205,'Squaw Hollow Brook',1529,1514,'2009-05-21 10:01:44',0),(47,48,3206,'Mount Hope River',1529,1514,'2009-05-21 10:01:44',0),(48,49,3207,'Fenton River',1529,1514,'2009-05-21 10:01:44',0),(49,50,3208,'Sawmill Brook',1529,1514,'2009-05-21 10:01:44',0),(50,51,3300,'French River',1523,1514,'2009-05-21 10:01:44',0),(51,52,3301,'Mill Brook',1523,1514,'2009-05-21 10:01:44',0),(52,53,3400,'Fivemile River',1522,1514,'2009-05-21 10:01:44',0),(53,54,3401,'Rocky Brook',1522,1514,'2009-05-21 10:01:44',0),(54,55,3402,'Mary Brown Brook',1522,1514,'2009-05-21 10:01:44',0),(55,56,3403,'Cady Brook',1522,1514,'2009-05-21 10:01:44',0),(56,57,3404,'Whetstone Brook',1522,1514,'2009-05-21 10:01:44',0),(57,58,3500,'Moosup River',1528,1514,'2009-05-21 10:01:44',0),(58,59,3501,'Quanduck Brook',1528,1514,'2009-05-21 10:01:44',0),(59,60,3502,'Snake Meadow Brook',1528,1514,'2009-05-21 10:01:44',0),(60,61,3503,'Ekonk Brook',1528,1514,'2009-05-21 10:01:44',0),(61,62,3600,'Pachaug River',1532,1514,'2009-05-21 10:01:44',0),(62,63,3601,'Great Meadow Brook',1532,1514,'2009-05-21 10:01:44',0),(63,64,3602,'Mount Misery Brook',1532,1514,'2009-05-21 10:01:44',0),(64,65,3603,'Denison Brook',1532,1514,'2009-05-21 10:01:44',0),(65,66,3604,'Myron Kinney Brook',1532,1514,'2009-05-21 10:01:44',0),(66,67,3605,'Billings Brook',1532,1514,'2009-05-21 10:01:44',0),(67,68,3700,'Quinebaug River',1536,1514,'2009-05-21 10:01:44',0),(68,69,3701,'Hamilton Reservoir Brook',1536,1514,'2009-05-21 10:01:44',0),(69,70,3702,'Breakneck Brook',1536,1514,'2009-05-21 10:01:44',0),(70,71,3703,'Hatchet Brook',1536,1514,'2009-05-21 10:01:44',0),(71,72,3704,'Cohasse Brook',1536,1514,'2009-05-21 10:01:44',0),(72,73,3705,'Lebanon Brook',1536,1514,'2009-05-21 10:01:44',0),(73,74,3706,'English Neighborhood Brook',1536,1514,'2009-05-21 10:01:44',0),(74,75,3707,'Mill Brook',1536,1514,'2009-05-21 10:01:44',0),(75,76,3708,'Little River',1536,1514,'2009-05-21 10:01:44',0),(76,77,3709,'Wappoquia Brook',1536,1514,'2009-05-21 10:01:44',0),(77,78,3710,'Mashamoquet Brook',1536,1514,'2009-05-21 10:01:44',0),(78,79,3711,'Blackwell Brook',1536,1514,'2009-05-21 10:01:44',0),(79,80,3712,'Fry Brook',1536,1514,'2009-05-21 10:01:44',0),(80,81,3713,'Mill Brook',1536,1514,'2009-05-21 10:01:44',0),(81,82,3714,'Kitt Brook',1536,1514,'2009-05-21 10:01:44',0),(82,83,3715,'Cory Brook',1536,1514,'2009-05-21 10:01:44',0),(83,84,3716,'Broad Brook',1536,1514,'2009-05-21 10:01:44',0),(84,85,3717,'Choate Brook',1536,1514,'2009-05-21 10:01:44',0),(85,86,3800,'Shetucket River',1542,1514,'2009-05-21 10:01:44',0),(86,87,3801,'Indian Hollow Brook',1542,1514,'2009-05-21 10:01:44',0),(87,88,3802,'Beaver Brook',1542,1514,'2009-05-21 10:01:44',0),(88,89,3803,'Merrick Brook',1542,1514,'2009-05-21 10:01:44',0),(89,90,3804,'Beaver Brook',1542,1514,'2009-05-21 10:01:44',0),(90,91,3805,'Little River',1542,1514,'2009-05-21 10:01:44',0),(91,92,3900,'Yantic River',1558,1514,'2009-05-21 10:01:44',0),(92,93,3901,'Exeter Brook',1558,1514,'2009-05-21 10:01:44',0),(93,94,3902,'Bartlett Brook',1558,1514,'2009-05-21 10:01:44',0),(94,95,3903,'Sherman Brook',1558,1514,'2009-05-21 10:01:44',0),(95,96,3904,'Deep River',1558,1514,'2009-05-21 10:01:44',0),(96,97,3905,'Pease Brook',1558,1514,'2009-05-21 10:01:44',0),(97,98,3906,'Gardner Brook',1558,1514,'2009-05-21 10:01:44',0),(98,99,3907,'Susquetonscut Brook',1558,1514,'2009-05-21 10:01:44',0),(99,100,4000,'Connecticut River',1518,1507,'2009-05-21 10:01:44',0),(100,101,4001,'Great Brook',1518,1507,'2009-05-21 10:01:44',0),(101,102,4002,'Threemile Brook',1518,1507,'2009-05-21 10:01:44',0),(102,103,4003,'Freshwater Brook',1518,1507,'2009-05-21 10:01:44',0),(103,104,4004,'Podunk River',1518,1507,'2009-05-21 10:01:44',0),(104,105,4005,'Folly Brook',1518,1507,'2009-05-21 10:01:44',0),(105,106,4006,'Salmon Brook',1518,1507,'2009-05-21 10:01:44',0),(106,107,4007,'Hubbard Brook',1518,1507,'2009-05-21 10:01:44',0),(107,108,4008,'Cold Brook',1518,1507,'2009-05-21 10:01:44',0),(108,109,4009,'Roaring Brook',1518,1507,'2009-05-21 10:01:44',0),(109,110,4010,'Goff Brook',1518,1507,'2009-05-21 10:01:44',0),(110,111,4011,'Reservoir Brook',1518,1507,'2009-05-21 10:01:44',0),(111,112,4012,'Carr Brook',1518,1507,'2009-05-21 10:01:44',0),(112,113,4013,'Sumner Brook',1518,1507,'2009-05-21 10:01:44',0),(113,114,4014,'Higganum Creek',1518,1507,'2009-05-21 10:01:44',0),(114,115,4015,'Mill Creek',1518,1507,'2009-05-21 10:01:44',0),(115,116,4016,'Whalebone Creek',1518,1507,'2009-05-21 10:01:44',0),(116,117,4017,'Chester Creek',1518,1507,'2009-05-21 10:01:44',0),(117,118,4018,'Deep River',1518,1507,'2009-05-21 10:01:44',0),(118,119,4019,'Falls River',1518,1507,'2009-05-21 10:01:44',0),(119,120,4020,'Lieutenant River',1518,1507,'2009-05-21 10:01:44',0),(120,121,4021,'Black Hall River',1518,1507,'2009-05-21 10:01:44',0),(121,122,4100,'Stony Brook',1553,1507,'2009-05-21 10:01:44',0),(122,123,4101,'Muddy Brook',1553,1507,'2009-05-21 10:01:44',0),(123,124,4200,'Scantic River',1540,1507,'2009-05-21 10:01:44',0),(124,125,4201,'Watchaug Brook',1540,1507,'2009-05-21 10:01:44',0),(125,126,4202,'Gillettes Brook',1540,1507,'2009-05-21 10:01:44',0),(126,127,4203,'Gulf Stream',1540,1507,'2009-05-21 10:01:44',0),(127,128,4204,'Abbey Brook',1540,1507,'2009-05-21 10:01:44',0),(128,129,4205,'Buckhorn Brook',1540,1507,'2009-05-21 10:01:44',0),(129,130,4206,'Broad Brook',1540,1507,'2009-05-21 10:01:44',0),(130,131,4207,'Ketch Brook',1540,1507,'2009-05-21 10:01:44',0),(131,132,4300,'Farmington River',1521,1507,'2009-05-21 10:01:44',0),(132,133,4301,'Slocum Brook',1521,1507,'2009-05-21 10:01:44',0),(133,134,4302,'Mad River',1521,1507,'2009-05-21 10:01:44',0),(134,135,4303,'Still River',1521,1507,'2009-05-21 10:01:44',0),(135,136,4304,'Sandy Brook',1521,1507,'2009-05-21 10:01:44',0),(136,137,4305,'Morgan Brook',1521,1507,'2009-05-21 10:01:44',0),(137,138,4306,'Valley Brook',1521,1507,'2009-05-21 10:01:44',0),(138,139,4307,'Hubbard Brook',1521,1507,'2009-05-21 10:01:44',0),(139,140,4308,'East Branch Farmington River',1521,1507,'2009-05-21 10:01:44',0),(140,141,4309,'Cherry Brook',1521,1507,'2009-05-21 10:01:44',0),(141,142,4310,'Nepaug River',1521,1507,'2009-05-21 10:01:44',0),(142,143,4311,'Burlington Brook',1521,1507,'2009-05-21 10:01:44',0),(143,144,4312,'Roaring Brook',1521,1507,'2009-05-21 10:01:44',0),(144,145,4313,'Poland River',1521,1507,'2009-05-21 10:01:44',0),(145,146,4314,'Copper Mine Brook',1521,1507,'2009-05-21 10:01:44',0),(146,147,4315,'Pequabuck River',1521,1507,'2009-05-21 10:01:44',0),(147,148,4316,'Thompson Brook',1521,1507,'2009-05-21 10:01:44',0),(148,149,4317,'Nod Brook',1521,1507,'2009-05-21 10:01:44',0),(149,150,4318,'Hop Brook',1521,1507,'2009-05-21 10:01:44',0),(150,151,4319,'West Branch Salmon Brook',1521,1507,'2009-05-21 10:01:44',0),(151,152,4320,'Salmon Brook',1521,1507,'2009-05-21 10:01:44',0),(152,153,4321,'Mill Brook',1521,1507,'2009-05-21 10:01:44',0),(153,154,4400,'Park River',1533,1507,'2009-05-21 10:01:44',0),(154,155,4401,'Bass Brook',1533,1507,'2009-05-21 10:01:44',0),(155,156,4402,'Piper Brook',1533,1507,'2009-05-21 10:01:44',0),(156,157,4403,'Trout Brook',1533,1507,'2009-05-21 10:01:44',0),(157,158,4404,'North Branch Park River',1533,1507,'2009-05-21 10:01:44',0),(158,159,4500,'Hockanum River',1524,1507,'2009-05-21 10:01:44',0),(159,160,4501,'Charters Brook',1524,1507,'2009-05-21 10:01:44',0),(160,161,4502,'Marsh Brook',1524,1507,'2009-05-21 10:01:44',0),(161,162,4503,'Tankerhoosen River',1524,1507,'2009-05-21 10:01:44',0),(162,163,4504,'South Fork Hockanum River',1524,1507,'2009-05-21 10:01:44',0),(163,164,4600,'Mattabesset River',1527,1507,'2009-05-21 10:01:44',0),(164,165,4601,'Belcher Brook',1527,1507,'2009-05-21 10:01:44',0),(165,166,4602,'Willow Brook',1527,1507,'2009-05-21 10:01:44',0),(166,167,4603,'Webster Brook',1527,1507,'2009-05-21 10:01:44',0),(167,168,4604,'Sawmill Brook',1527,1507,'2009-05-21 10:01:44',0),(168,169,4605,'Allyn Brook',1527,1507,'2009-05-21 10:01:44',0),(169,170,4606,'Sawmill Brook',1527,1507,'2009-05-21 10:01:44',0),(170,171,4607,'Coginchaug River',1527,1507,'2009-05-21 10:01:44',0),(171,172,4700,'Salmon River',1538,1507,'2009-05-21 10:01:44',0),(172,173,4701,'Raymond Brook',1538,1507,'2009-05-21 10:01:44',0),(173,174,4702,'Judd Brook',1538,1507,'2009-05-21 10:01:44',0),(174,175,4703,'Meadow Brook',1538,1507,'2009-05-21 10:01:44',0),(175,176,4704,'Pine Brook',1538,1507,'2009-05-21 10:01:44',0),(176,177,4705,'Jeremy River',1538,1507,'2009-05-21 10:01:44',0),(177,178,4706,'Fawn Brook',1538,1507,'2009-05-21 10:01:44',0),(178,179,4707,'Blackledge River',1538,1507,'2009-05-21 10:01:44',0),(179,180,4708,'Dickinson Creek',1538,1507,'2009-05-21 10:01:44',0),(180,181,4709,'Pine Brook',1538,1507,'2009-05-21 10:01:44',0),(181,182,4710,'Moodus River',1538,1507,'2009-05-21 10:01:44',0),(182,183,4800,'Eightmile River',1520,1507,'2009-05-21 10:01:44',0),(183,184,4801,'Harris Brook',1520,1507,'2009-05-21 10:01:44',0),(184,185,4802,'East Branch Eightmile River',1520,1507,'2009-05-21 10:01:44',0),(185,186,4803,'Beaver Brook',1520,1507,'2009-05-21 10:01:44',0),(186,187,5000,'South Central Shoreline',1544,1511,'2009-05-21 10:01:44',0),(187,188,5101,'Oyster River',1543,1511,'2009-05-21 10:01:44',0),(188,189,5102,'Patchogue River',1543,1511,'2009-05-21 10:01:44',0),(189,190,5103,'Menunketesuck River',1543,1511,'2009-05-21 10:01:44',0),(190,191,5104,'Indian River',1543,1511,'2009-05-21 10:01:44',0),(191,192,5105,'Chatfield Hollow Brook',1543,1511,'2009-05-21 10:01:44',0),(192,193,5106,'Hammonasset River',1543,1511,'2009-05-21 10:01:44',0),(193,194,5107,'Neck River',1543,1511,'2009-05-21 10:01:44',0),(194,195,5108,'East River',1543,1511,'2009-05-21 10:01:44',0),(195,196,5109,'Sluice Creek',1543,1511,'2009-05-21 10:01:44',0),(196,197,5110,'West River',1543,1511,'2009-05-21 10:01:44',0),(197,198,5111,'Branford River',1543,1511,'2009-05-21 10:01:44',0),(198,199,5112,'Farm River',1543,1511,'2009-05-21 10:01:44',0),(199,200,5200,'Quinnipiac River',1537,1511,'2009-05-21 10:01:44',0),(200,201,5201,'Eightmile River',1537,1511,'2009-05-21 10:01:44',0),(201,202,5202,'Tenmile River',1537,1511,'2009-05-21 10:01:44',0),(202,203,5203,'Misery Brook',1537,1511,'2009-05-21 10:01:44',0),(203,204,5204,'Broad Brook',1537,1511,'2009-05-21 10:01:44',0),(204,205,5205,'Sodom Brook',1537,1511,'2009-05-21 10:01:44',0),(205,206,5206,'Harbor Brook',1537,1511,'2009-05-21 10:01:44',0),(206,207,5207,'Wharton Brook',1537,1511,'2009-05-21 10:01:44',0),(207,208,5208,'Muddy River',1537,1511,'2009-05-21 10:01:44',0),(208,209,5301,'Willow Brook',1545,1511,'2009-05-21 10:01:44',0),(209,210,5302,'Mill River',1545,1511,'2009-05-21 10:01:44',0),(210,211,5303,'Sargent River',1545,1511,'2009-05-21 10:01:44',0),(211,212,5304,'Wintergreen Brook',1545,1511,'2009-05-21 10:01:44',0),(212,213,5305,'West River',1545,1511,'2009-05-21 10:01:44',0),(213,214,5306,'Indian River',1545,1511,'2009-05-21 10:01:44',0),(214,215,5307,'Wepawaug River',1545,1511,'2009-05-21 10:01:44',0),(215,216,6000,'Housatonic River',1526,1508,'2009-05-21 10:01:44',0),(216,217,6001,'Sages Ravine Brook',1526,1508,'2009-05-21 10:01:44',0),(217,218,6002,'Schenob Brook',1526,1508,'2009-05-21 10:01:44',0),(218,219,6003,'Andrus Brook',1526,1508,'2009-05-21 10:01:44',0),(219,220,6004,'Konkapot River',1526,1508,'2009-05-21 10:01:44',0),(220,221,6005,'Factory Brook',1526,1508,'2009-05-21 10:01:44',0),(221,222,6006,'Spruce Swamp Creek',1526,1508,'2009-05-21 10:01:44',0),(222,223,6007,'Salmon Creek',1526,1508,'2009-05-21 10:01:44',0),(223,224,6008,'Mill Brook',1526,1508,'2009-05-21 10:01:44',0),(224,225,6009,'Carse Brook',1526,1508,'2009-05-21 10:01:44',0),(225,226,6010,'Furnace Brook',1526,1508,'2009-05-21 10:01:44',0),(226,227,6011,'Guinea Brook',1526,1508,'2009-05-21 10:01:44',0),(227,228,6012,'Kent Falls Brook',1526,1508,'2009-05-21 10:01:44',0),(228,229,6013,'Cobble Brook',1526,1508,'2009-05-21 10:01:44',0),(229,230,6014,'Bog Hollow Brook',1526,1508,'2009-05-21 10:01:44',0),(230,231,6015,'Macedonia Brook',1526,1508,'2009-05-21 10:01:44',0),(231,232,6016,'Womenshenuk Brook',1526,1508,'2009-05-21 10:01:44',0),(232,233,6017,'Morrissey Brook',1526,1508,'2009-05-21 10:01:44',0),(233,234,6018,'Pond Brook',1526,1508,'2009-05-21 10:01:44',0),(234,235,6019,'Deep Brook',1526,1508,'2009-05-21 10:01:44',0),(235,236,6020,'Pootatuck River',1526,1508,'2009-05-21 10:01:44',0),(236,237,6021,'Kettletown Brook',1526,1508,'2009-05-21 10:01:44',0),(237,238,6022,'Halfway River',1526,1508,'2009-05-21 10:01:44',0),(238,239,6023,'Eightmile Brook',1526,1508,'2009-05-21 10:01:44',0),(239,240,6024,'Means Brook',1526,1508,'2009-05-21 10:01:44',0),(240,241,6025,'Farmill River',1526,1508,'2009-05-21 10:01:44',0),(241,242,6026,'Pumpkin Ground Brook',1526,1508,'2009-05-21 10:01:44',0),(242,243,6100,'Blackberry River',1516,1508,'2009-05-21 10:01:44',0),(243,244,6101,'Whiting River',1516,1508,'2009-05-21 10:01:44',0),(244,245,6200,'Hollenbeck River',1525,1508,'2009-05-21 10:01:44',0),(245,246,6201,'Brown Brook',1525,1508,'2009-05-21 10:01:44',0),(246,247,6202,'Wangum Lake Brook',1525,1508,'2009-05-21 10:01:44',0),(247,248,6300,'Tenmile River',1554,1508,'2009-05-21 10:01:44',0),(248,249,6301,'Indian Lake Creek',1554,1508,'2009-05-21 10:01:44',0),(249,250,6302,'Mill Brook',1554,1508,'2009-05-21 10:01:44',0),(250,251,6303,'Webatuck Creek',1554,1508,'2009-05-21 10:01:44',0),(251,252,6304,'Deuel Hollow Brook',1554,1508,'2009-05-21 10:01:44',0),(252,253,6305,'Mill River',1554,1508,'2009-05-21 10:01:44',0),(253,254,6306,'Swamp River',1554,1508,'2009-05-21 10:01:44',0),(254,255,6400,'Lake Candlewood',1517,1508,'2009-05-21 10:01:44',0),(255,256,6401,'Sawmill Brook',1517,1508,'2009-05-21 10:01:44',0),(256,257,6402,'Ball Pond Brook',1517,1508,'2009-05-21 10:01:44',0),(257,258,6500,'West Aspetuck River',1515,1508,'2009-05-21 10:01:44',0),(258,259,6501,'Merryall Brook',1515,1508,'2009-05-21 10:01:44',0),(259,260,6502,'East Aspetuck River',1515,1508,'2009-05-21 10:01:44',0),(260,261,6600,'Still River',1552,1508,'2009-05-21 10:01:44',0),(261,262,6601,'Miry Brook',1552,1508,'2009-05-21 10:01:44',0),(262,263,6602,'Boggs Pond Brook',1552,1508,'2009-05-21 10:01:44',0),(263,264,6603,'Padanaram Brook',1552,1508,'2009-05-21 10:01:44',0),(264,265,6604,'Sympaug Brook',1552,1508,'2009-05-21 10:01:44',0),(265,266,6605,'East Swamp Brook',1552,1508,'2009-05-21 10:01:44',0),(266,267,6606,'Limekiln Brook',1552,1508,'2009-05-21 10:01:44',0),(267,268,6700,'Shepaug River',1541,1508,'2009-05-21 10:01:44',0),(268,269,6701,'Marshepaug River',1541,1508,'2009-05-21 10:01:44',0),(269,270,6702,'West Branch Shepaug River',1541,1508,'2009-05-21 10:01:44',0),(270,271,6703,'West Branch Bantam River',1541,1508,'2009-05-21 10:01:44',0),(271,272,6704,'Butternut Brook',1541,1508,'2009-05-21 10:01:44',0),(272,273,6705,'Bantam River',1541,1508,'2009-05-21 10:01:44',0),(273,274,6706,'Jacks Brook',1541,1508,'2009-05-21 10:01:44',0),(274,275,6800,'Pomperaug River',1535,1508,'2009-05-21 10:01:44',0),(275,276,6801,'East Spring Brook',1535,1508,'2009-05-21 10:01:44',0),(276,277,6802,'Nonewaug River',1535,1508,'2009-05-21 10:01:44',0),(277,278,6803,'Sprain Brook',1535,1508,'2009-05-21 10:01:44',0),(278,279,6804,'Weekeepeemee River',1535,1508,'2009-05-21 10:01:44',0),(279,280,6805,'Hesseky Brook',1535,1508,'2009-05-21 10:01:44',0),(280,281,6806,'Transylvania Brook',1535,1508,'2009-05-21 10:01:44',0),(281,282,6900,'Naugatuck River',1530,1508,'2009-05-21 10:01:44',0),(282,283,6901,'Hall Meadow Brook',1530,1508,'2009-05-21 10:01:44',0),(283,284,6902,'Hart Brook',1530,1508,'2009-05-21 10:01:44',0),(284,285,6903,'Nickel Mine Brook',1530,1508,'2009-05-21 10:01:44',0),(285,286,6904,'West Branch Naugatuck River',1530,1508,'2009-05-21 10:01:44',0),(286,287,6905,'East Branch Naugatuck River',1530,1508,'2009-05-21 10:01:44',0),(287,288,6906,'Spruce Brook',1530,1508,'2009-05-21 10:01:44',0),(288,289,6907,'Rock Brook',1530,1508,'2009-05-21 10:01:44',0),(289,290,6908,'Leadmine Brook',1530,1508,'2009-05-21 10:01:44',0),(290,291,6909,'Northfield Brook',1530,1508,'2009-05-21 10:01:44',0),(291,292,6910,'Branch Brook',1530,1508,'2009-05-21 10:01:44',0),(292,293,6911,'Hancock Brook',1530,1508,'2009-05-21 10:01:44',0),(293,294,6912,'Steele Brook',1530,1508,'2009-05-21 10:01:44',0),(294,295,6913,'Beaver Pond Brook',1530,1508,'2009-05-21 10:01:44',0),(295,296,6914,'Mad River',1530,1508,'2009-05-21 10:01:44',0),(296,297,6915,'Fulling Mill Brook',1530,1508,'2009-05-21 10:01:44',0),(297,298,6916,'Hop Brook',1530,1508,'2009-05-21 10:01:44',0),(298,299,6917,'Long Meadow Pond Brook',1530,1508,'2009-05-21 10:01:44',0),(299,300,6918,'Beacon Hill Brook',1530,1508,'2009-05-21 10:01:44',0),(300,301,6919,'Bladens River',1530,1508,'2009-05-21 10:01:44',0),(301,302,6920,'Little River',1530,1508,'2009-05-21 10:01:44',0),(302,303,7000,'Southwest Shoreline',1550,1513,'2009-05-21 10:01:44',0),(303,304,7101,'Lewis Gut',1549,1513,'2009-05-21 10:01:44',0),(304,305,7102,'Bruce Brook',1549,1513,'2009-05-21 10:01:44',0),(305,306,7103,'Yellow Mill Channel',1549,1513,'2009-05-21 10:01:44',0),(306,307,7104,'Booth Hill Brook',1549,1513,'2009-05-21 10:01:44',0),(307,308,7105,'Pequonnock River',1549,1513,'2009-05-21 10:01:44',0),(308,309,7106,'Ash Creek',1549,1513,'2009-05-21 10:01:44',0),(309,310,7107,'Cricker Brook',1549,1513,'2009-05-21 10:01:44',0),(310,311,7108,'Mill River',1549,1513,'2009-05-21 10:01:44',0),(311,312,7109,'Sasco Brook',1549,1513,'2009-05-21 10:01:44',0),(312,313,7200,'Saugatuck River',1539,1513,'2009-05-21 10:01:44',0),(313,314,7201,'Little River',1539,1513,'2009-05-21 10:01:44',0),(314,315,7202,'Aspetuck River',1539,1513,'2009-05-21 10:01:44',0),(315,316,7203,'West Branch Saugatuck River',1539,1513,'2009-05-21 10:01:44',0),(316,317,7300,'Norwalk River',1531,1513,'2009-05-21 10:01:44',0),(317,318,7301,'Comstock Brook',1531,1513,'2009-05-21 10:01:44',0),(318,319,7302,'Silvermine River',1531,1513,'2009-05-21 10:01:44',0),(319,320,7401,'Fivemile River',1551,1513,'2009-05-21 10:01:44',0),(320,321,7402,'Darien River',1551,1513,'2009-05-21 10:01:44',0),(321,322,7403,'Noroton River',1551,1513,'2009-05-21 10:01:44',0),(322,323,7404,'Mill River',1551,1513,'2009-05-21 10:01:44',0),(323,324,7405,'Rippowam River',1551,1513,'2009-05-21 10:01:44',0),(324,325,7406,'East Branch Mianus River',1551,1513,'2009-05-21 10:01:44',0),(325,326,7407,'Mianus River',1551,1513,'2009-05-21 10:01:44',0),(326,327,7408,'Greenwich Creek',1551,1513,'2009-05-21 10:01:44',0),(327,328,7409,'Horseneck Brook',1551,1513,'2009-05-21 10:01:44',0),(328,329,7410,'East Branch Byram River',1551,1513,'2009-05-21 10:01:44',0),(329,330,7411,'Byram River',1551,1513,'2009-05-21 10:01:44',0),(330,331,7412,'Blind Brook',1551,1513,'2009-05-21 10:01:44',0),(331,332,8100,'Croton River',1519,1509,'2009-05-21 10:01:44',0),(332,333,8101,'Quaker Brook',1519,1509,'2009-05-21 10:01:44',0),(333,334,8102,'Corner Pond Brook',1519,1509,'2009-05-21 10:01:44',0),(334,335,8103,'East Branch Croton River',1519,1509,'2009-05-21 10:01:44',0),(335,336,8104,'Titicus River',1519,1509,'2009-05-21 10:01:44',0),(336,337,8105,'Waccabuc River',1519,1509,'2009-05-21 10:01:44',0);
/*!40000 ALTER TABLE `subbasin` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-12 17:46:04
