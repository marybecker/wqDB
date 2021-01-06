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
-- Table structure for table `analyticalmethodcontext`
--

DROP TABLE IF EXISTS `analyticalmethodcontext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `analyticalmethodcontext` (
  `Domain` text,
  `Unique Identifier` int DEFAULT NULL,
  `Code` varchar(120) NOT NULL,
  `Name` text,
  `Last Change Date` datetime DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analyticalmethodcontext`
--

LOCK TABLES `analyticalmethodcontext` WRITE;
/*!40000 ALTER TABLE `analyticalmethodcontext` DISABLE KEYS */;
INSERT INTO `analyticalmethodcontext` VALUES ('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',25,'ABRAXIS LLC','Abraxis LLC 54 Steamwhistle Drive Warminster, PA 18974 Phone: 215-357-3911 www.abraxiskits.com','2012-03-06 03:13:00'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',29,'AFS','American Fisheries Society','2013-07-31 07:00:00'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',54391,'AGILENT','AGILENT','2019-08-09 08:10:32'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',1,'AOAC','Association of Official Analytical Chemists','2006-08-11 08:23:00'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',2,'APHA','American Public Health Association (Standards Methods - SM)','2006-08-11 08:23:00'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',701,'APHA (1991)','APHA American Public Health Association Standards Methods publication year 1991','2018-03-30 03:13:45'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',700,'APHA (1997)','APHA American Public Health Association Standards Methods publication year 1997','2018-03-30 03:13:45'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',703,'APHA (1999)','APHA American Public Health Association Standards Methods publication year 1999','2018-03-30 03:13:45'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',704,'APHA (2000)','APHA American Public Health Association Standards Methods publication year 2000','2018-03-30 03:13:45'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',705,'APHA (2001)','APHA American Public Health Association Standards Methods publication year 2001','2018-03-30 03:13:45'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',706,'APHA (2001) Rev 1.1','APHA American Public Health Association Standards Methods publication year 2001 Rev 1.1','2018-03-30 03:13:45'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',702,'APHA (2011)','APHA American Public Health Association Standards Methods publication year 2011','2018-03-30 03:13:45'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',68,'APHA_SM19ED','APHA American Public Health Association Standards Methods 19th Edition','2014-12-09 12:07:05'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',18,'APHA_SM20ED','APHA American Public Health Association Standards Methods 20th Edition','2007-09-07 09:00:00'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',22,'APHA_SM21ED','APHA American Public Health Association Standards Methods 21th Edition','2008-08-01 08:13:56'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',69,'APHA_SM22ED','APHA American Public Health Association Standards Methods 22th Edition','2014-12-16 12:08:52'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',26,'ASA(2ND ED.)','American Society of Agronomy (Methods Of Soil Analysis, Part 2 - Chemical and Microbiological Properties)','2012-05-31 05:17:29'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',70,'ASM','American Society for Microbiology','2019-03-21 03:11:28'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',3,'ASTM','American Society for Testing of Materials','2006-08-11 08:23:00'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',714,'ASTM (1987)','American Society for Testing of Materials 1987','2018-03-30 03:00:00'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',712,'ASTM (2011)','American Society for Testing of Materials 2011','2018-03-30 03:14:15'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',713,'ASTM (2012)','American Society for Testing of Materials 2012','2018-03-30 03:14:15'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',62,'BEACON','Beacon Analytical Systems, Inc\r\n 82 Industrial Park Road\r\n Saco, Maine 04072\r\nURL: http://www.beaconkits.com/','2014-12-04 12:13:11'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',31,'BIOO','Bioo Scientific','2013-07-31 07:00:00'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',73,'BL','BRAN AND LUEBBE METHODs','2015-03-09 03:15:50'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',77,'CAHFS','California Animal Health and Food Safety Lab\r\ncontact info:\r\nLinda S. Aston, PhD \r\n(530) 754-5610 \r\nlaston@ucdavis.edu ','2015-10-26 10:06:20'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',28,'CCE','California Current Ecosystem ','2012-12-20 12:15:36'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',32,'CDC','Center Disease Control and Prevention','2013-07-31 07:00:00'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',74,'CHEVRON','Chevron','2015-06-04 06:10:27'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',66,'CSIRO','CSIRO Australia Phone: +61 3 9545 2176  Fax: +61 3 9545 2175 URL: http://www.csiro.au/  Email - Enquiries@csiro.au','2014-12-04 12:14:47'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',75,'DOE','Department of Energy Environmental Measurements Laboratory','2015-07-22 07:10:17'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',4,'ENV/CANADA','Environment Canada, Technology Development Branch','2006-08-11 08:23:00'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',67,'ENVCANADA-AWQMSD','Environment Canada  Atlantic Water Quality Monitoring and Surveillance Division  Dartmouth, NS B2Y 1N6','2014-12-04 12:14:47'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',34,'ENVCANADA-NWRI','National Water Research Institute http://www.ec.gc.ca/inre-nwri/','2013-07-31 07:00:00'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',35,'ENVIROLOGIX','EnviroLogix Inc.','2013-07-31 07:00:00'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',5,'FISON','Fisons Instruments Co, Applied Research Labs Division','2014-03-01 03:21:00'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',6,'HACH','Hach Chemical Company','2006-08-11 08:23:00'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',17,'IDEXX','IDEXX Laboratories','2007-09-07 09:11:37'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',7,'IL/SWSD','Illinois State Water Survey','2006-08-11 08:23:00'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',8,'ISO','International Organization for Standardization','2006-08-11 08:23:00'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',27,'LACHAT','Lachat Instruments -- A Hach Company Brand','2012-08-21 08:00:00'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',60,'LaMOTTE','LaMOTTE','2014-10-28 10:00:00'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',23,'LECK MITCHELL','Mitchell Method - Leck Mitchell, PhD, PE, 656 Independence Valley Dr., Grand Junction, CO 81507','2010-06-10 06:15:33'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',57,'LEGENDRE','Legendre, P. and Legendre, L.','2013-07-31 07:00:00'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',36,'MD DNR','Maryland Department of Natural Resources','2013-07-31 07:00:00'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',37,'MI DEQ SURFACE WATER','Michigan Department of Environmental Quality','2013-07-31 07:00:00'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',38,'MICROLOGY LABS','Micrology Laboratories L.L.C.','2013-07-31 07:00:00'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',39,'MODIFIED COLITAG','CPI International','2013-07-31 07:00:00'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',40,'MWI','Modern Water Inc.','2013-07-31 07:00:00'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',9,'NCASI','Nat. Council, Paper Industry for Air & Stream Improvement','2006-08-11 08:23:00'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',30,'NCL','North Coast Laboratories','2015-06-04 06:10:36'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',10,'NIOSH','National Institute for Occupational Safety and Health','2006-08-11 08:23:00'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',41,'NIWA','National Institute of Water and Atmospheric Research Ltd','2013-07-31 07:00:00'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',42,'NPS','National Parks service','2013-07-31 07:00:00'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',43,'NTU UK','Nottingham Trent University','2013-07-31 07:00:00'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',78,'NZME-NIWA','The New Zealand Ministry for the Environment, NIWA, P.O. Box 8602, Christchurch, New Zealand','2016-09-09 09:13:18'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',44,'O-I-ANALYTICAL','OI Analytical','2013-07-31 07:00:00'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',45,'OK ST U','Oklahoma State University','2013-07-31 07:00:00'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',46,'ORNL','Oak Ridge National Laboratory','2013-07-31 07:00:00'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',79,'PACE LABS','Pace Analytical Services, LLC','2019-06-24 06:08:30'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',47,'PALINTEST LTD','Palintest Ltd','2013-07-31 07:00:00'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',48,'PRACTICAL STATS','Practical Stats','2013-07-31 07:00:00'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',54789,'RSC','Royal Society of Chemistry rsc.org','2020-05-18 05:17:18'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',54330,'Source Molecular','Source Molecular - https://sourcemolecular.com','2019-07-09 07:14:58'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',49,'SWAN ANALYTISCHE','SWAN Analytische Instrumente AG','2013-07-31 07:00:00'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',50,'SYNGENTA','Syngenta Crop Protection','2013-07-31 07:00:00'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',51,'SYSTEA SCIENTIFIC','Systea Scientific, LLC','2013-07-31 07:00:00'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',632,'TDH LAB','Tennessee Department of Health (TDH) Laboratory Services consists Microbiology Laboratory and Environmental Laboratory.','2016-02-04 02:13:06'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',58,'Technicon','Technicon Industrial Systems','2013-11-18 11:13:00'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',52,'THERMO-SCIENTIFIC','Thermo-Scientific','2013-07-31 07:00:00'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',76,'TIMBERLINE','Timberline Instruments by Askew Scientific Consulting LLC','2015-08-03 08:09:30'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',72,'TNRCC','TEXAS NATURAL RESOURCE CONSERVATION COMMISSION','2014-03-28 03:00:00'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',59,'Turner Designs','Turner Designs','2014-05-20 05:00:00'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',54469,'TVA','Tennessee Valley Authority','2019-09-17 09:12:18'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',56,'UBC','University of British Columbia, Professor Emeritus Department of Zoology','2013-07-31 07:00:00'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',53,'UC-DAVIS','University of California, Dept. LAWR','2013-07-31 07:00:00'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',24,'USDA','United States Department of Agriculture','2011-03-25 03:10:09'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',11,'USDOC/NOAA','USDOC, National Oceanographic and Atmospheric Adm.','2006-08-11 08:23:00'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',12,'USDOE/ASD','US Department of Energy, Analytical Services Div.','2006-08-11 08:23:00'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',13,'USDOE/EML','US-DOE, Environmental Measurements Lab, New York City, NY','2006-08-11 08:23:00'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',33,'USDOE/RESL','U.S. Department of Energy Radiological and Environmental Services Laboratory','2013-07-31 07:00:00'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',14,'USDOI/USGS','US-DOI, Geological Survey','2006-08-11 08:23:00'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',15,'USEPA','U.S. Environmental Protection Agency','2006-08-11 08:23:00'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',711,'USEPA Rev (1974)','U.S. Environmental Protection Agency Revision year 1974','2018-03-30 03:13:45'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',709,'USEPA Rev 2.0','U.S. Environmental Protection Agency Revision 2.0','2018-03-30 03:13:45'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',708,'USEPA Rev 2.1','U.S. Environmental Protection Agency Revision 2.1','2018-03-30 03:13:45'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',710,'USEPA Rev 2.2','U.S. Environmental Protection Agency Revision 2.2','2018-03-30 03:13:45'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',707,'USEPA Rev 5.4','U.S. Environmental Protection Agency Revision 5.4','2018-03-30 03:13:45'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',16,'USFDA','USFDA, Management Methods Branch/DMS Food and Drug Adm.','2006-08-11 08:23:00'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',54,'WDNR FISH HABITAT','State of Wisconsin, Department of Natural Resources Bureau of Fisheries Management and Habitat Protection','2013-07-31 07:00:00'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',55,'WEST INC','WEST Inc','2013-07-31 07:00:00'),('Analytical Method Context(ResultAnalyticalMethod/MethodIdentifierContext)',61,'YSI','YSI INCORPORATED','2014-12-04 12:13:50');
/*!40000 ALTER TABLE `analyticalmethodcontext` ENABLE KEYS */;
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
