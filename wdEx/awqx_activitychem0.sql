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
  `ProjectIdentifier` varchar(50) NOT NULL,
  `staSeq` int NOT NULL,
  `ActivityIdentifier` varchar(55) NOT NULL,
  `ActivityTypeCode` varchar(70) NOT NULL,
  `ActivityMediaName` varchar(20) NOT NULL,
  `ActivityMediaSubdivisionName` varchar(60) DEFAULT NULL,
  `ActivityStartDate` date NOT NULL,
  `ActivityTime` time NOT NULL,
  `ActivityTimeZoneCodetimezone` varchar(4) DEFAULT NULL,
  `SampleCollectionMethodIdentifier` varchar(35) NOT NULL,
  `SampleCollectionEquipmentName` varchar(60) DEFAULT NULL,
  `SampleCollectionEquipmentCommentText` varchar(4000) DEFAULT NULL,
  `ActivityConductingOrganizationText` varchar(120) DEFAULT NULL,
  `ActivityCommentText` varchar(4000) DEFAULT NULL,
  `ActContactLead` varchar(50) NOT NULL,
  `ActFieldCrew` varchar(4000) DEFAULT NULL,
  `SamplePreparationMethodIdentifier` varchar(35) DEFAULT NULL,
  `ActivityRelativeDepthName` varchar(30) DEFAULT NULL,
  `ActivityDepthMeasureValue` decimal(5,2) DEFAULT NULL,
  `ActivityDepthMeasureUnitCode` varchar(12) DEFAULT NULL,
  `InstreamLocation` int DEFAULT NULL,
  `LabAccession` varchar(50) NOT NULL,
  `LaboratoryName` varchar(60) NOT NULL,
  `createDate` datetime NOT NULL,
  `createUser` varchar(50) NOT NULL,
  `lastUpdateDate` datetime DEFAULT NULL,
  `lastUpdateUser` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`staSeq`,`ActivityStartDate`,`ActivityTime`,`ActivityTypeCode`,`SampleCollectionMethodIdentifier`),
  KEY `ProjectIdentifier` (`ProjectIdentifier`),
  KEY `ActivityTypeCode` (`ActivityTypeCode`),
  KEY `ActivityMediaName` (`ActivityMediaName`),
  KEY `ActivityMediaSubdivisionName` (`ActivityMediaSubdivisionName`),
  KEY `ActivityTimeZoneCodetimezone` (`ActivityTimeZoneCodetimezone`),
  KEY `SampleCollectionMethodIdentifier` (`SampleCollectionMethodIdentifier`),
  KEY `SampleCollectionEquipmentName` (`SampleCollectionEquipmentName`),
  KEY `ActContactLead` (`ActContactLead`),
  KEY `createUser` (`createUser`),
  KEY `lastUpdateUser` (`lastUpdateUser`),
  KEY `ActivityRelativeDepthName` (`ActivityRelativeDepthName`),
  KEY `ActivityDepthMeasureUnitCode` (`ActivityDepthMeasureUnitCode`),
  KEY `InstreamLocation` (`InstreamLocation`),
  CONSTRAINT `activitychem_ibfk_1` FOREIGN KEY (`ProjectIdentifier`) REFERENCES `projects` (`ProjectIdentifier`),
  CONSTRAINT `activitychem_ibfk_10` FOREIGN KEY (`createUser`) REFERENCES `contacts` (`ContactID`),
  CONSTRAINT `activitychem_ibfk_11` FOREIGN KEY (`lastUpdateUser`) REFERENCES `contacts` (`ContactID`),
  CONSTRAINT `activitychem_ibfk_12` FOREIGN KEY (`ActivityRelativeDepthName`) REFERENCES `activityrelativedepth` (`Name`),
  CONSTRAINT `activitychem_ibfk_13` FOREIGN KEY (`ActivityDepthMeasureUnitCode`) REFERENCES `measurementunit` (`Code`),
  CONSTRAINT `activitychem_ibfk_14` FOREIGN KEY (`InstreamLocation`) REFERENCES `instreamlocation` (`N`),
  CONSTRAINT `activitychem_ibfk_2` FOREIGN KEY (`staSeq`) REFERENCES `stations` (`staSeq`),
  CONSTRAINT `activitychem_ibfk_3` FOREIGN KEY (`ActivityTypeCode`) REFERENCES `activitytype` (`Code`),
  CONSTRAINT `activitychem_ibfk_4` FOREIGN KEY (`ActivityMediaName`) REFERENCES `activitymedia` (`Name`),
  CONSTRAINT `activitychem_ibfk_5` FOREIGN KEY (`ActivityMediaSubdivisionName`) REFERENCES `activitymediasubdivision` (`Name`),
  CONSTRAINT `activitychem_ibfk_6` FOREIGN KEY (`ActivityTimeZoneCodetimezone`) REFERENCES `timezone` (`Code`),
  CONSTRAINT `activitychem_ibfk_7` FOREIGN KEY (`SampleCollectionMethodIdentifier`) REFERENCES `samplecollectionmethod` (`ID`),
  CONSTRAINT `activitychem_ibfk_8` FOREIGN KEY (`SampleCollectionEquipmentName`) REFERENCES `samplecollectionequipment` (`Name`),
  CONSTRAINT `activitychem_ibfk_9` FOREIGN KEY (`ActContactLead`) REFERENCES `contacts` (`ContactID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activitychem`
--

LOCK TABLES `activitychem` WRITE;
/*!40000 ALTER TABLE `activitychem` DISABLE KEYS */;
INSERT INTO `activitychem` VALUES ('benthicAlgABM',14392,'14392-QCFR-20190719-084500-CHEM-0.1m','Quality Control Sample-Field Replicate','Water','Surface Water','2019-07-19','08:45:00','EDT','grabSampleSurfaceChemistry','Water Bottle','Plastic Bottle','ctdeepWplrAbm','','WTokarz','JCorso','','Surface',0.10,'m',3,'190273-003','CESE','2020-12-29 11:58:01','MBecker','2020-12-29 11:58:01','MBecker'),('benthicAlgABM',14392,'14392-SR-20190719-084500-CHEM-0.1m','Sample-Routine','Water','Surface Water','2019-07-19','08:45:00','EDT','grabSampleSurfaceChemistry','Water Bottle','Plastic Bottle','ctdeepWplrAbm','','WTokarz','JCorso','','Surface',0.10,'m',3,'190273-002','CESE','2020-12-29 11:58:01','MBecker','2020-12-29 11:58:01','MBecker'),('benthicAlgABM',15274,'15274-SR-20190723-104500-CHEM-0.1m','Sample-Routine','Water','Surface Water','2019-07-23','10:45:00','EDT','grabSampleSurfaceChemistry','Water Bottle','Plastic Bottle','ctdeepWplrAbm','','WTokarz','JCorso','','Surface',0.10,'m',3,'190273-004','CESE','2020-12-29 11:58:01','MBecker','2020-12-29 11:58:01','MBecker'),('benthicAlgABM',15294,'15294-SR-20190705-130000-CHEM-0.1m','Sample-Routine','Water','Surface Water','2019-07-05','13:00:00','EDT','grabSampleSurfaceChemistry','Water Bottle','Plastic Bottle','ctdeepWplrAbm','','WTokarz','JCorso','','Surface',0.10,'m',3,'190219-010','CESE','2020-12-29 11:58:01','MBecker','2020-12-29 11:58:01','MBecker'),('benthicAlgABM',16649,'16649-SR-20190726-153000-CHEM-0.1m','Sample-Routine','Water','Surface Water','2019-07-26','15:30:00','EDT','grabSampleSurfaceChemistry','Water Bottle','Plastic Bottle','ctdeepWplrAbm','','WTokarz','JCorso','','Surface',0.10,'m',3,'190273-012','CESE','2020-12-29 11:58:01','MBecker','2020-12-29 11:58:01','MBecker'),('benthicAlgABM',16788,'16788-SR-20190705-130000-CHEM-0.1m','Sample-Routine','Water','Surface Water','2019-07-05','13:00:00','EDT','grabSampleSurfaceChemistry','Water Bottle','Plastic Bottle','ctdeepWplrAbm','','WTokarz','JCorso','','Surface',0.10,'m',3,'190219-009','CESE','2020-12-29 11:58:01','MBecker','2020-12-29 11:58:01','MBecker'),('benthicAlgABM',16873,'16873-QCFR-20190618-130000-CHEM-0.1m','Quality Control Sample-Field Replicate','Water','Surface Water','2019-06-18','13:00:00','EDT','grabSampleSurfaceChemistry','Water Bottle','Plastic Bottle','ctdeepWplrAbm','','WTokarz','JCorso','','Surface',0.10,'m',3,'190219-004','CESE','2020-12-29 11:58:01','MBecker','2020-12-29 11:58:01','MBecker'),('benthicAlgABM',16873,'16873-SR-20190618-130000-CHEM-0.1m','Sample-Routine','Water','Surface Water','2019-06-18','13:00:00','EDT','grabSampleSurfaceChemistry','Water Bottle','Plastic Bottle','ctdeepWplrAbm','','WTokarz','JCorso','','Surface',0.10,'m',3,'190219-003','CESE','2020-12-29 11:58:01','MBecker','2020-12-29 11:58:01','MBecker'),('benthicAlgABM',17324,'17324-SR-20190619-120000-CHEM-0.1m','Sample-Routine','Water','Surface Water','2019-06-19','12:00:00','EDT','grabSampleSurfaceChemistry','Water Bottle','Plastic Bottle','ctdeepWplrAbm','','WTokarz','JCorso','','Surface',0.10,'m',3,'190219-006','CESE','2020-12-29 11:58:01','MBecker','2020-12-29 11:58:01','MBecker'),('benthicAlgABM',18447,'18447-SR-20190723-122000-CHEM-0.1m','Sample-Routine','Water','Surface Water','2019-07-23','12:20:00','EDT','grabSampleSurfaceChemistry','Water Bottle','Plastic Bottle','ctdeepWplrAbm','','WTokarz','JCorso','','Surface',0.10,'m',3,'190273-005','CESE','2020-12-29 11:58:01','MBecker','2020-12-29 11:58:01','MBecker'),('benthicAlgABM',18921,'18921-SR-20190726-131500-CHEM-0.1m','Sample-Routine','Water','Surface Water','2019-07-26','13:15:00','EDT','grabSampleSurfaceChemistry','Water Bottle','Plastic Bottle','ctdeepWplrAbm','','WTokarz','JCorso','','Surface',0.10,'m',3,'190273-011','CESE','2020-12-29 11:58:01','MBecker','2020-12-29 11:58:01','MBecker'),('benthicAlgABM',19931,'19931-SR-20190618-102100-CHEM-0.1m','Sample-Routine','Water','Surface Water','2019-06-18','10:21:00','EDT','grabSampleSurfaceChemistry','Water Bottle','Plastic Bottle','ctdeepWplrAbm','','WTokarz','JCorso','','Surface',0.10,'m',3,'190219-001','CESE','2020-12-29 11:58:01','MBecker','2020-12-29 11:58:01','MBecker'),('benthicAlgABM',19933,'19933-SR-20190619-103000-CHEM-0.1m','Sample-Routine','Water','Surface Water','2019-06-19','10:30:00','EDT','grabSampleSurfaceChemistry','Water Bottle','Plastic Bottle','ctdeepWplrAbm','','WTokarz','JCorso','','Surface',0.10,'m',3,'190219-005','CESE','2020-12-29 11:58:01','MBecker','2020-12-29 11:58:01','MBecker'),('benthicAlgABM',19938,'19938-SR-20190619-144000-CHEM-0.1m','Sample-Routine','Water','Surface Water','2019-06-19','14:40:00','EDT','grabSampleSurfaceChemistry','Water Bottle','Plastic Bottle','ctdeepWplrAbm','','WTokarz','JCorso','','Surface',0.10,'m',3,'190219-008','CESE','2020-12-29 11:58:01','MBecker','2020-12-29 11:58:01','MBecker'),('benthicAlgABM',19940,'19940-SR-20190726-101500-CHEM-0.1m','Sample-Routine','Water','Surface Water','2019-07-26','10:15:00','EDT','grabSampleSurfaceChemistry','Water Bottle','Plastic Bottle','ctdeepWplrAbm','','WTokarz','JCorso','','Surface',0.10,'m',3,'190273-009','CESE','2020-12-29 11:58:01','MBecker','2020-12-29 11:58:01','MBecker'),('benthicAlgABM',19955,'19955-SR-20190705-140000-CHEM-0.1m','Sample-Routine','Water','Surface Water','2019-07-05','14:00:00','EDT','grabSampleSurfaceChemistry','Water Bottle','Plastic Bottle','ctdeepWplrAbm','','WTokarz','JCorso','','Surface',0.10,'m',3,'190219-011','CESE','2020-12-29 11:58:01','MBecker','2020-12-29 11:58:01','MBecker'),('benthicAlgABM',19956,'19956-SR-20190705-144500-CHEM-0.1m','Sample-Routine','Water','Surface Water','2019-07-05','14:45:00','EDT','grabSampleSurfaceChemistry','Water Bottle','Plastic Bottle','ctdeepWplrAbm','','WTokarz','JCorso','','Surface',0.10,'m',3,'190219-012','CESE','2020-12-29 11:58:01','MBecker','2020-12-29 11:58:01','MBecker'),('benthicAlgABM',19957,'19957-SR-20190726-113000-CHEM-0.1m','Sample-Routine','Water','Surface Water','2019-07-26','11:30:00','EDT','grabSampleSurfaceChemistry','Water Bottle','Plastic Bottle','ctdeepWplrAbm','','WTokarz','JCorso','','Surface',0.10,'m',3,'190273-010','CESE','2020-12-29 11:58:01','MBecker','2020-12-29 11:58:01','MBecker'),('benthicAlgABM',20122,'20122-SR-20190724-120000-CHEM-0.1m','Sample-Routine','Water','Surface Water','2019-07-24','12:00:00','EDT','grabSampleSurfaceChemistry','Water Bottle','Plastic Bottle','ctdeepWplrAbm','','WTokarz','JCorso','','Surface',0.10,'m',3,'190273-006','CESE','2020-12-29 11:58:01','MBecker','2020-12-29 11:58:01','MBecker'),('benthicAlgABM',20123,'20123-SR-20190618-114500-CHEM-0.1m','Sample-Routine','Water','Surface Water','2019-06-18','11:45:00','EDT','grabSampleSurfaceChemistry','Water Bottle','Plastic Bottle','ctdeepWplrAbm','','WTokarz','JCorso','','Surface',0.10,'m',3,'190219-002','CESE','2020-12-29 11:58:01','MBecker','2020-12-29 11:58:01','MBecker'),('benthicAlgABM',20124,'20124-SR-20190724-154500-CHEM-0.1m','Sample-Routine','Water','Surface Water','2019-07-24','15:45:00','EDT','grabSampleSurfaceChemistry','Water Bottle','Plastic Bottle','ctdeepWplrAbm','','WTokarz','JCorso','','Surface',0.10,'m',3,'190273-008','CESE','2020-12-29 11:58:01','MBecker','2020-12-29 11:58:01','MBecker'),('benthicAlgABM',20127,'20127-SR-20190719-074500-CHEM-0.1m','Sample-Routine','Water','Surface Water','2019-07-19','07:45:00','EDT','grabSampleSurfaceChemistry','Water Bottle','Plastic Bottle','ctdeepWplrAbm','','WTokarz','JCorso','','Surface',0.10,'m',3,'190273-001','CESE','2020-12-29 11:58:01','MBecker','2020-12-29 11:58:01','MBecker'),('benthicAlgABM',20128,'20128-SR-20190619-131500-CHEM-0.1m','Sample-Routine','Water','Surface Water','2019-06-19','13:15:00','EDT','grabSampleSurfaceChemistry','Water Bottle','Plastic Bottle','ctdeepWplrAbm','','WTokarz','JCorso','','Surface',0.10,'m',3,'190219-007','CESE','2020-12-29 11:58:01','MBecker','2020-12-29 11:58:01','MBecker'),('benthicAlgABM',20129,'20129-SR-20190724-141500-CHEM-0.1m','Sample-Routine','Water','Surface Water','2019-07-24','14:15:00','EDT','grabSampleSurfaceChemistry','Water Bottle','Plastic Bottle','ctdeepWplrAbm','','WTokarz','JCorso','','Surface',0.10,'m',3,'190273-007','CESE','2020-12-29 11:58:01','MBecker','2020-12-29 11:58:01','MBecker');
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

-- Dump completed on 2021-01-06 18:24:52
