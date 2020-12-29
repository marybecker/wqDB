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
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `ContactID` varchar(50) NOT NULL,
  `Title` text,
  `Name_Prefix` text,
  `Firstname` text,
  `Middlename` text,
  `Lastname` text,
  `Name_Suffix` text,
  `Last_Change_Date` datetime DEFAULT NULL,
  `Inactive` int DEFAULT NULL,
  PRIMARY KEY (`ContactID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES ('AAarrestad','EA Intern','','Ansel','','Aarrestad','','2016-03-11 10:49:00',0),('ABeitler',NULL,NULL,'Amber',NULL,'Beitler',NULL,'2009-01-15 15:21:00',1),('ABurcroff','','','Ann','','Burcroff','','2009-03-24 10:07:00',0),('ACarrasquillo','','','Amanda','','Carrasquillo','','2009-07-24 07:53:00',1),('ADavis','Seasonal','','Abby','','Davis','','2018-04-30 10:21:00',0),('AEge',NULL,NULL,'Amanda',NULL,'Ege',NULL,'2009-01-15 15:21:00',1),('AFriebus','','','Andy','','Friebus','','2019-05-15 14:24:00',0),('AGriggs','','','Alisa','','Griggs','','2010-01-08 14:13:00',0),('AIacobucci','','','Albert','A','Iacobucci','','2011-03-29 11:48:00',0),('AKnocklein',NULL,NULL,'Allison',NULL,'Knocklein',NULL,'2009-01-15 15:21:00',1),('ALadotski','','','Al','','Ladotski','','2009-04-15 14:27:00',1),('ALetendre',NULL,NULL,'Anne',NULL,'Letendre',NULL,'2009-01-15 15:21:00',0),('AMurray','','','Ashley','','Murray','','2015-05-13 12:42:00',0),('BChampagne','Seasonal','','Bill','','Champagne','','2013-05-23 09:50:00',0),('BEltz','','','Brian','','Eltz','','2011-12-12 10:42:00',0),('BGondek','Seasonal','','Brooke','','Gondek','','2018-04-30 10:20:00',0),('BGould',NULL,NULL,'Billie',NULL,'Gould',NULL,'2009-01-15 15:21:00',1),('BGregoire','Seasonal','','Bruce','','Gregoire','','2011-12-22 11:38:00',0),('BHoward',NULL,NULL,'Bob',NULL,'Howard',NULL,'2009-01-15 15:21:00',1),('BHurlburt',NULL,NULL,'Brian',NULL,'Hurlburt',NULL,'2009-01-15 15:21:00',1),('BJacobs',NULL,NULL,'Bob',NULL,'Jacobs',NULL,'2009-01-15 15:21:00',0),('BJennes',NULL,NULL,'Brian',NULL,'Jennes',NULL,'2009-01-15 15:21:00',0),('BLorentson','','','Bob','','Lorentson','','2009-03-24 12:29:00',0),('BMurphy',NULL,NULL,'Brian',NULL,'Murphy',NULL,'2009-01-15 15:21:00',0),('BPietro','Seasonal','','Brittney','','Pietro','','2013-05-23 09:52:00',0),('CBellucci',NULL,NULL,'Chris',NULL,'Bellucci',NULL,'2009-01-15 15:21:00',0),('CBlais',NULL,NULL,'Chris',NULL,'Blais',NULL,'2009-01-15 15:21:00',1),('CBoland','Seasonal','','Caitlin','','Boland','','2014-07-02 16:07:00',0),('CButton',NULL,NULL,'Charles',NULL,'Button',NULL,'2009-01-15 15:21:00',0),('CCataldi','Seasonal','','Carriel','','Cataldi','','2016-06-27 07:57:00',0),('CGerke',NULL,NULL,'Chris',NULL,'Gerke',NULL,'2009-01-15 15:21:00',0),('CLee',NULL,NULL,'Charles',NULL,'Lee',NULL,'2009-01-15 15:21:00',0),('CMalik',NULL,NULL,'Christopher',NULL,'Malik',NULL,'2009-01-15 15:21:00',0),('CMcDowell',NULL,NULL,'Christopher',NULL,'McDowell',NULL,'2009-01-15 15:21:00',0),('CMotasky',NULL,NULL,'Craig',NULL,'Motasky',NULL,'2009-01-15 15:21:00',0),('COlsen',NULL,NULL,'Christine',NULL,'Olsen',NULL,'2009-01-15 15:21:00',0),('CPapp','','','Carol','','Papp','','2009-03-24 10:07:00',0),('CPenn',NULL,NULL,'Colin',NULL,'Penn',NULL,'2009-01-15 15:21:00',1),('CPerkins',NULL,NULL,'Christopher',NULL,'Perkins',NULL,'2009-01-15 15:21:00',0),('CReady',NULL,NULL,'Colette',NULL,'Ready',NULL,'2009-01-15 15:21:00',1),('CSchmidt',NULL,NULL,'Ceala',NULL,'Schmidt',NULL,'2009-01-15 15:21:00',0),('CShah',NULL,NULL,'Chirayu',NULL,'Shah',NULL,'2009-01-15 15:21:00',1),('CShields','Seasonal','','Carly','','Shields','','2011-06-02 07:56:00',0),('CSullivan','','','Christopher','','Sullivan','','2010-11-23 10:31:00',0),('CVeilleux',NULL,NULL,'Carl',NULL,'Veilleux',NULL,'2009-01-15 15:21:00',0),('CYoder','','','Chris','','Yoder','','2016-04-06 13:36:00',0),('DBurnes','Seasonal','','Devin','','Burnes','','2020-05-21 16:07:00',0),('DDoyle',NULL,NULL,'Desmond',NULL,'Doyle',NULL,'2009-01-15 15:21:00',1),('DGonyea',NULL,NULL,'Don',NULL,'Gonyea',NULL,'2009-01-15 15:21:00',1),('DHolland',NULL,NULL,'Dan',NULL,'Holland',NULL,'2009-01-15 15:21:00',1),('DJordan',NULL,NULL,'Dave',NULL,'Jordan',NULL,'2009-01-15 15:21:00',1),('DKahn',NULL,NULL,'Diba',NULL,'Kahn',NULL,'2009-01-15 15:21:00',0),('DLeighton',NULL,NULL,'Dave',NULL,'Leighton',NULL,'2009-01-15 15:21:00',1),('DMattus',NULL,NULL,'Dan',NULL,'Mattus',NULL,'2009-01-15 15:21:00',1),('DMysling',NULL,NULL,'Donald',NULL,'Mysling',NULL,'2009-01-15 15:21:00',0),('DPacileo','Marine Fisheries Program','','Deb','','Pacileo','','2018-12-24 10:05:00',0),('DRankin',NULL,NULL,'Don',NULL,'Rankin',NULL,'2009-01-15 15:21:00',0),('DRosa','','','Dave','','Rosa','','2011-05-26 13:50:00',0),('DSeremet',NULL,NULL,'Dan',NULL,'Seremet',NULL,'2009-01-15 15:21:00',1),('DWynalski',NULL,NULL,'Dawn',NULL,'Wynalski',NULL,'2009-01-15 15:21:00',1),('EBedan','','','Erik','','Bedan','','2011-05-26 08:18:00',0),('EBrown',NULL,NULL,'Enna',NULL,'Brown',NULL,'2009-01-15 15:21:00',1),('EFinger',NULL,NULL,'Ed',NULL,'Finger',NULL,'2009-01-15 15:21:00',0),('EHale',NULL,NULL,'Eric',NULL,'Hale',NULL,'2009-01-15 15:21:00',0),('EKremer',NULL,'Dr.','Elise',NULL,'Kremer',NULL,'2008-12-18 00:00:00',0),('EMachowski',NULL,NULL,'Ed',NULL,'Machowski',NULL,'2009-01-15 15:21:00',0),('EMcCollumn',NULL,NULL,'Erin',NULL,'McCollumn',NULL,'2009-01-15 15:21:00',0),('EO\'Donnell',NULL,NULL,'Eileen',NULL,'O\'Donnell',NULL,'2009-01-15 15:21:00',0),('EPasay','Seasonal','','Eric','','Pasay','','2018-04-30 10:22:00',1),('EPelletier','Seasonal','','Ellie','','Pelletier','','2011-06-02 07:55:00',0),('EPizzuto','','','Ernie','','Pizzuto','','2009-03-17 10:47:00',0),('EThomas',NULL,NULL,'Eric',NULL,'Thomas',NULL,'2009-01-15 15:21:00',0),('EvThomas',NULL,NULL,'Evan',NULL,'Thomas',NULL,'2009-01-15 15:21:00',1),('GBell',NULL,NULL,'George',NULL,'Bell',NULL,'2009-01-15 15:21:00',1),('GHoffman','','','Guy','','Hoffman','','2012-09-26 09:01:00',0),('GLeonard',NULL,NULL,'Gerold',NULL,'Leonard',NULL,'2009-01-15 15:21:00',0),('GMattus',NULL,NULL,'Greg',NULL,'Mattus',NULL,'2009-01-15 15:21:00',1),('HCrahen',NULL,NULL,'Heidi',NULL,'Crahen',NULL,'2009-01-15 15:21:00',1),('HKinney','Seasonal','','Heather','','Kinney','','2011-05-26 16:37:00',0),('HPallein','Seasonal','','Hannah','','Pallein','','2013-05-23 09:51:00',0),('IDavis',NULL,NULL,'Ingrid',NULL,'Davis',NULL,'2009-01-15 15:21:00',0),('JBrawerman',NULL,NULL,'Jane',NULL,'Brawerman',NULL,'2009-01-15 15:21:00',0),('JCiaburri','Seasonal','','John','','Ciaburri','','2016-05-17 14:21:00',0),('JCorso','Seasonal','','Joel','','Corso','','2017-06-05 10:02:00',0),('JDavis',NULL,NULL,'Justin',NULL,'Davis',NULL,'2009-01-15 15:21:00',0),('JFlaherty',NULL,NULL,'Jason',NULL,'Flaherty',NULL,'2009-01-15 15:21:00',1),('JGorneault',NULL,NULL,'Janice',NULL,'Gorneault',NULL,'2009-01-15 15:21:00',1),('JHovius',NULL,NULL,'Joe',NULL,'Hovius',NULL,'2009-01-15 15:21:00',0),('JHudak',NULL,NULL,'John',NULL,'Hudak',NULL,'2009-01-15 15:21:00',0),('JKlug',NULL,NULL,'Jen',NULL,'Klug',NULL,'2009-01-15 15:21:00',0),('JKoproski','Seasonal','','Joseph','','Koproski','','2012-11-09 09:49:00',0),('JLee',NULL,NULL,'Judy',NULL,'Lee',NULL,'2009-01-15 15:21:00',1),('JMurray',NULL,NULL,'Jerinne',NULL,'Murray',NULL,'2009-01-15 15:21:00',1),('JNason','Seasonal','','Jessica','L.','Nason','','2011-05-26 16:38:00',0),('JNestico',NULL,NULL,'Joe',NULL,'Nestico',NULL,'2009-01-15 15:21:00',0),('JOlesweski',NULL,NULL,'Joe',NULL,'Olesweski',NULL,'2009-01-15 15:21:00',1),('JPerry',NULL,NULL,'Jane',NULL,'Perry',NULL,'2009-01-15 15:21:00',1),('JPilo',NULL,NULL,'Jean',NULL,'Pilo',NULL,'2009-01-15 15:21:00',0),('JRoberts','Fisheries Biologist','','Jacqueline','','Roberts','','2018-09-28 11:53:00',0),('JRussell',NULL,NULL,'Joanne',NULL,'Russell',NULL,'2009-01-15 15:21:00',0),('JSeymour',NULL,NULL,'Jane',NULL,'Seymour',NULL,'2009-01-15 15:21:00',0),('JTellier','','','Josh','','Tellier','','2019-06-24 11:51:00',0),('JWaite',NULL,NULL,'Jill',NULL,'Waite',NULL,'2009-01-15 15:21:00',1),('JWesolowski',NULL,NULL,'John',NULL,'Wesolowski',NULL,'2009-01-15 15:21:00',0),('JWiggins','CARE Program','','Justin','A','Wiggins','','2018-09-17 09:14:00',0),('JWolff',NULL,NULL,'Josh',NULL,'Wolff',NULL,'2009-01-15 15:21:00',1),('KAllen','','','Karen','','Allen','','2013-12-10 09:08:00',0),('KBarrett',NULL,NULL,'Kevin',NULL,'Barrett',NULL,'2009-01-15 15:21:00',1),('KBeaulieu','Biologist','','Karen','','Beaulieu','','2017-04-19 09:03:00',0),('KBishop','Seasonal','','Karen','','Bishop','','2018-04-30 10:17:00',0),('KEvancha',NULL,NULL,'Kristen',NULL,'Evancha',NULL,'2009-01-15 15:21:00',1),('KFusconi',NULL,NULL,'Kevin',NULL,'Fusconi',NULL,'2009-01-15 15:21:00',1),('KGottschall','Marine Fisheries Program','','Kurt','','Gottschall','','2018-12-24 10:05:00',0),('KHardesty','','','Kayla','','Hardesty','','2019-08-06 13:47:00',0),('KIsch',NULL,NULL,'Kristin',NULL,'Isch',NULL,'2009-01-15 15:21:00',1),('KKuloweic',NULL,NULL,'Keith',NULL,'Kuloweic',NULL,'2009-01-15 15:21:00',1),('KLaMarr',NULL,NULL,'Katie',NULL,'LaMarr',NULL,'2009-01-15 15:21:00',1),('KLi','Seasonal','','Kevin','','Li','','2020-06-03 09:16:00',0),('KMartin',NULL,NULL,'Kirsten',NULL,'Martin',NULL,'2009-01-15 15:21:00',0),('KNee','Seasonal','','Katie','','Nee','','2019-07-25 13:41:00',0),('KO\'Brien',NULL,NULL,'Katie',NULL,'O\'Brien',NULL,'2009-01-15 15:21:00',0),('KScully',NULL,NULL,'Kenneth',NULL,'Scully',NULL,'2009-01-15 15:21:00',1),('KStreich',NULL,NULL,'Kelly',NULL,'Streich',NULL,'2009-01-15 15:21:00',0),('LBluege','Seasonal','','Lana','','Bluege','','2016-05-17 14:20:00',0),('LDoss',NULL,NULL,'Laurie',NULL,'Doss',NULL,'2009-01-15 15:21:00',0),('LDunbar',NULL,NULL,'Lee',NULL,'Dunbar',NULL,'2009-01-15 15:21:00',0),('LGalvin','Seasonal','','Leslie','','Galvin','','2011-05-26 16:46:00',0),('LHalpin','Seasonal','','Lisa','','Halpin','','2013-05-23 09:49:00',0),('LRice','','','Laura','','Rice','','2015-06-11 10:49:00',0),('LTurcotte','','','Lucas','','Turcotte','','2018-11-05 15:49:00',0),('LWahle',NULL,NULL,'Lisa',NULL,'Wahle',NULL,'2009-01-15 15:21:00',1),('MAllen','Seasonal','','Matt','','Allen','','2014-07-02 16:05:00',0),('MBeauchene','EA3','','Mike','','Beauchene','','2012-02-15 12:49:00',0),('MBecker','','','Mary','','Becker','','2015-02-20 09:32:00',0),('MBlais','Supervising Sanitary Engi','','Mellissa','','Blais','','2014-06-11 09:18:00',0),('MButts',NULL,NULL,'Marla',NULL,'Butts',NULL,'2009-01-15 15:21:00',1),('MComerford','Research Assistant','','Michele','','Comerford','','2012-09-26 09:00:00',0),('MCzarnowski','','','Melissa','','Czarnowski','','2015-05-13 12:40:00',0),('MDynduick',NULL,NULL,'Mike',NULL,'Dynduick',NULL,'2009-01-15 15:21:00',0),('MGates','','','Matt','','Gates','','2012-06-04 12:15:00',0),('MGillard',NULL,NULL,'Michelle',NULL,'Gillard',NULL,'2009-01-15 15:21:00',1),('MGoodwin',NULL,NULL,'Mike',NULL,'Goodwin',NULL,'2009-01-15 15:21:00',0),('MGosselin','Seasonal','','Mindy','','Gosselin','','2018-04-30 10:22:00',1),('MHazlet',NULL,NULL,'Mary',NULL,'Hazlet',NULL,'2009-01-15 15:21:00',1),('MHealy',NULL,NULL,'Michael',NULL,'Healy',NULL,'2009-01-15 15:21:00',1),('MHoover',NULL,NULL,'Marshall',NULL,'Hoover',NULL,'2009-01-15 15:21:00',0),('MHumphreys',NULL,NULL,'Michael',NULL,'Humphreys',NULL,'2009-01-15 15:21:00',0),('MKrajewski','Seasonal','','Marlene','','Krajewski','','2018-04-30 10:18:00',0),('MLyman',NULL,NULL,'Matt',NULL,'Lyman',NULL,'2009-01-15 15:21:00',0),('MMorrison',NULL,NULL,'Meghan',NULL,'Morrison',NULL,'2009-01-15 15:21:00',1),('MNeidleinger',NULL,NULL,'Matt',NULL,'Neidleinger',NULL,'2009-01-15 15:21:00',1),('MRuta Lally','','','Meghan','','Ruta Lally','','2014-12-18 13:41:00',0),('MSinnamon',NULL,NULL,'Maria',NULL,'Sinnamon',NULL,'2009-01-15 15:21:00',1),('MSmith',NULL,NULL,'Mara',NULL,'Smith',NULL,'2009-01-15 15:21:00',1),('NFlahive','Seasonal','','Neil','','Flahive','','2014-07-02 16:06:00',0),('NHagstrom',NULL,NULL,'Neal',NULL,'Hagstrom',NULL,'2009-01-15 15:21:00',0),('NKaputa',NULL,NULL,'Nick',NULL,'Kaputa',NULL,'2009-01-15 15:21:00',1),('PCoughlin',NULL,NULL,'Paula',NULL,'Coughlin',NULL,'2009-01-15 15:21:00',0),('PHogan',NULL,NULL,'Pat',NULL,'Hogan',NULL,'2009-01-15 15:21:00',1),('PZaidel','Seasonal','','Peter','','Zaidel','','2014-07-02 16:06:00',0),('RBurnham','Seasonal','','Rebecca','Lynn','Burnham','','2011-05-26 08:19:00',0),('RCournoyer','Seasonal','','Rose','','Cournoyer','','2011-05-26 16:49:00',0),('RGatter-Evarts',NULL,NULL,'Rose',NULL,'Gatter-Evarts',NULL,'2009-01-15 15:21:00',0),('RHarris',NULL,NULL,'Richard',NULL,'Harris',NULL,'2009-01-15 15:21:00',0),('RLangan',NULL,NULL,'Rita',NULL,'Langan',NULL,'2009-01-15 15:21:00',0),('RLincoln','Seasonal','','Ryan','','Lincoln','','2016-05-17 14:18:00',0),('RParley',NULL,NULL,'Rod',NULL,'Parley',NULL,'2009-01-15 15:21:00',0),('RSchmid','Seasonal','','Rachel','','Schmid','','2010-11-23 10:29:00',0),('SCalebrese',NULL,NULL,'Stan',NULL,'Calebrese',NULL,'2009-01-15 15:21:00',0),('SDimock','','','Spencer','','Dimock','','2014-07-21 10:37:00',0),('SE','Seasonal','','Saroeun','','E','','2012-06-05 15:08:00',0),('SFranklin','','','Sara','','Franklin','','2012-09-26 12:21:00',0),('SGreen',NULL,NULL,'Shelly',NULL,'Green',NULL,'2009-01-15 15:21:00',0),('SHarold',NULL,NULL,'Sally',NULL,'Harold',NULL,'2009-01-15 15:21:00',0),('SLanigan',NULL,NULL,'Sue',NULL,'Lanigan',NULL,'2009-01-15 15:21:00',0),('SMerchant',NULL,NULL,'Steven',NULL,'Merchant',NULL,'2009-01-15 15:21:00',1),('SPeterson',NULL,NULL,'Susan',NULL,'Peterson',NULL,'2009-01-15 15:21:00',0),('SSprague','Seasonal','','Savannah','','Sprague','','2016-05-17 14:19:00',0),('SSynder',NULL,NULL,'Sally',NULL,'Synder',NULL,'2009-01-15 15:21:00',1),('SWiess',NULL,NULL,'Sandy',NULL,'Wiess',NULL,'2009-01-15 15:21:00',0),('TBarry','Supervising Biologist','','Tim','','Barry','','2016-08-30 08:37:00',0),('TBateman','Seasonal','','Tim','','Bateman','','2016-06-27 07:59:00',0),('TBOURRET','CARE Program','','Thomas','E','BOURRET','','2018-09-17 09:16:00',0),('TCiarlante','Seasonal','','Thomas','','Ciarlante','','2018-04-30 10:21:00',1),('TFakelaide','Sanitary Engineer 2','','Toyin','','Fakelaide','','2014-06-11 09:19:00',0),('THaze',NULL,NULL,'Tom',NULL,'Haze',NULL,'2009-01-15 15:21:00',0),('TLizotte','EA III','','Tracy','','Lizotte','','2011-11-23 10:01:00',0),('TO\'Conner',NULL,NULL,'Tom',NULL,'O\'Conner',NULL,'2009-01-15 15:21:00',0),('TSavoy','Fisheries Biologist','','Tom','','Savoy','','2018-09-28 11:52:00',0),('TWildman','','','Tim','','Wildman','','2017-06-09 14:53:00',0),('VThornberg','Seasonal','','Vanessa','','Thornberg','','2019-05-15 14:22:00',0),('WCruz','','','Will','','Cruz','','2009-03-24 13:46:00',1),('WOros','','','Will','','Oros','','2009-03-24 08:38:00',0),('WTokarz',NULL,NULL,'Walter',NULL,'Tokarz',NULL,'2009-01-15 15:21:00',0);
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-29 18:48:08