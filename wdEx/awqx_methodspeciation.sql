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
-- Table structure for table `methodspeciation`
--

DROP TABLE IF EXISTS `methodspeciation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `methodspeciation` (
  `Domain` text,
  `Unique Identifier` int DEFAULT NULL,
  `Name` varchar(20) NOT NULL,
  `Description` text,
  `Last Change Date` datetime DEFAULT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `methodspeciation`
--

LOCK TABLES `methodspeciation` WRITE;
/*!40000 ALTER TABLE `methodspeciation` DISABLE KEYS */;
INSERT INTO `methodspeciation` VALUES ('Method Speciation(MethodSpeciationName)',317,'as Al','Aluminium is a chemical element with the symbol Al and atomic number 13. It is a silvery-white, soft, non-magnetic and ductile metal in the boron group. By mass, aluminium makes up about 8% of the Earth\'s crust, where it is the third most abundant element and also the most abundant metal.','2020-04-19 04:10:49'),('Method Speciation(MethodSpeciationName)',33,'as ANC','acid neutralizing capacity is a measure for the overall buffering capacity against acidification for a solution, e.g. surface water or soil water.\r\nANC is defined dynamically as the amount of acid needed to change the pH value from the sample\'s value to a chosen different value.','2016-04-05 04:12:18'),('Method Speciation(MethodSpeciationName)',22,'as As','A naturally occurring element that is widely distributed in the Earth\'s crust. It is found in water, air, food, and soil.','2014-07-31 07:00:00'),('Method Speciation(MethodSpeciationName)',318,'as Atrazine','Atrazine is a herbicide of the triazine class. It is used to prevent pre- and postemergence broadleaf weeds in crops such as maize and sugarcane and on turf, such as golf courses and residential lawns.','2020-04-19 04:10:11'),('Method Speciation(MethodSpeciationName)',18,'as B','Boron exists as a dark brown to black powder or as an extremely hard, jet-black to silver-gray, brittle, lustrous, metal-like element. It is extracted chiefly from kernite and borax and used in flares, propellant mixtures, nuclear reactor control elements, abrasives, and hard metallic alloys.','2014-07-31 07:00:00'),('Method Speciation(MethodSpeciationName)',157,'as Br','Bromine is a chemical element with atomic number 35. and atomic weight 79.904 u ± 0.001 u.  It is the third-lightest halogen.','2017-04-26 04:14:12'),('Method Speciation(MethodSpeciationName)',32,'as C','Carbon is a chemical element with atomic number 6. and atomic weight 12.011 u Â± 0.0006 u. It is the first element in group 14 (carbon group).','2016-01-12 01:10:17'),('Method Speciation(MethodSpeciationName)',25,'as C3H6O2','Methyl acetate, also known as MeOAc, acetic acid methyl ester or methyl ethanoate, is a carboxylate ester with the formula CHâ‚ƒCOOCHâ‚ƒ. Molar mass: 74.08 g/mol','2014-07-31 07:00:00'),('Method Speciation(MethodSpeciationName)',117,'as Ca','Calcium is a chemical element with atomic number 20, and atomic weight 40.078(4 u ± 0.0006 u. It is the first element in group 2 (alkaline earth metals).','2017-02-28 02:12:57'),('Method Speciation(MethodSpeciationName)',12,'as CaCO3','Calcium carbonate is a common substance found in rocks in all parts of the world, and is the main component of shells of marine organisms, snails, coal balls, pearls, and eggshells. It is the active ingredient in agricultural lime, and is created when Ca ions in hard water react with carbonate ions creating limescale.','2009-07-23 07:08:35'),('Method Speciation(MethodSpeciationName)',137,'as CDOM','is the optically measurable component of the dissolved organic matter in water. CDOM most strongly absorbs short wavelength light ranging from blue to ultraviolet, whereas pure water absorbs longer wavelength red light. Therefore, non-turbid water with little or no CDOM appears blue. The color of water will range through green, yellow-green, and brown as CDOM increases.','2017-03-30 03:13:04'),('Method Speciation(MethodSpeciationName)',319,'as Chlorophyll','Chlorophyll is one of the most important pigments in nature. Through the process of… The chlorophyll molecule consists of a central magnesium atom surrounded by a nitrogen-containing structure called a porphyrin ring; attached to the ring is a long carbon-hydrogen side chain, known as a phytol chain','2020-04-19 04:10:28'),('Method Speciation(MethodSpeciationName)',320,'as Chlorophyll a','Chlorophyll a is a specific form of chlorophyll used in oxygenic photosynthesis. It absorbs most energy from wavelengths of violet-blue and orange-red light. It also reflects green-yellow light, and as such contributes to the observed green color of most plants.','2020-04-19 04:10:59'),('Method Speciation(MethodSpeciationName)',19,'as Cl','Chlorine is a chemical element with symbol Cl and atomic number 17. The second-lightest of the halogens, it appears between fluorine and bromine in the periodic table Chlorine is a nonmetal and a yellow-green gas at room temperature.','2014-07-31 07:00:00'),('Method Speciation(MethodSpeciationName)',299,'as Co','Cobalt is a chemical element with the symbol Co and atomic number 27. Like nickel, cobalt is found in the Earth\'s crust only in chemically combined form, save for small deposits found in alloys of natural meteoric iron. The free element, produced by reductive smelting, is a hard, lustrous, silver-gray metal.','2020-04-14 04:08:19'),('Method Speciation(MethodSpeciationName)',15,'as CO3','Carbonate a salt of carbonic acid (H2CO3), characterized by the presence of the carbonate ion, a polyatomic ion with the formula of CO 2− 3.','2009-09-17 09:09:40'),('Method Speciation(MethodSpeciationName)',198,'as Color','Color or colour is the characteristic of human visual perception described through color categories.. Specify the color at which analyte is determined.  For research purposes or when analyte values are to be compared  among laboratories, vary or modify the analyte measure value of a given water over a wide range and record each corresponding color response.','2017-12-13 12:12:34'),('Method Speciation(MethodSpeciationName)',177,'as Cr','Chromium is a chemical element with atomic number 24, and atomic weight 51.9961 u ± 0.0006 u. It is the first element in group 6.','2017-11-08 11:10:05'),('Method Speciation(MethodSpeciationName)',24,'as DPA','Docosapentaenoic acid designates any straight chain 22:5 fatty acid, that is a straight chain open chain type of polyunsaturated fatty acid which contains 22 carbons and 5 double bonds','2014-07-31 07:00:00'),('Method Speciation(MethodSpeciationName)',129,'as EPAR_S','Light, photosynthetic active radiation (PAR)','2018-04-20 04:08:08'),('Method Speciation(MethodSpeciationName)',130,'as EPARD_Z','Light, photosynthetic active radiation at depth (PAR) CALCULATED','2018-04-20 04:08:08'),('Method Speciation(MethodSpeciationName)',131,'as EPARU_Z','Light, photosynthetic active radiation at depth (PAR)','2018-04-20 04:08:08'),('Method Speciation(MethodSpeciationName)',30,'as ESBTU','Samples were assigned to risk categories according to ESBTU(FCV,43) values: no-risk (< or = 1), low (>1 - < or = 2), low-medium (>2 - < or = 3), medium (>3 - < or = 5) and high-risk (>5).','2015-12-21 12:14:43'),('Method Speciation(MethodSpeciationName)',20,'as F','Fluorine is a chemical element with the symbol F and atomic number 9. It is the lightest halogen and exists as a highly toxic pale yellow diatomic gas at standard conditions. As the most electronegative element, it is extremely reactive, as it reacts with almost all other elements, except for helium and neon.','2014-07-31 07:00:00'),('Method Speciation(MethodSpeciationName)',297,'as Fe','Iron is a transition metal and atomic number 26, It is by mass the most common element on Earth, forming much of Earth\'s outer and inner core. lustrous metallic with a grayish tinge','2020-04-14 04:08:46'),('Method Speciation(MethodSpeciationName)',300,'as Gd','Gadolinium is a chemical element with the symbol Gd and atomic number 64. Gadolinium is a silvery-white metal when oxidation is removed. It is only slightly malleable and is a ductile rare-earth element. Gadolinium reacts with atmospheric oxygen or moisture slowly to form a black coating.','2020-04-14 04:08:00'),('Method Speciation(MethodSpeciationName)',17,'as H','Hydrogen is the chemical element with the symbol H and atomic number 1. With a standard atomic weight of 1.008, hydrogen is the lightest element in the periodic table. Hydrogen is the most abundant chemical substance in the Universe, constituting roughly 75% of all baryonic mass.','2014-07-31 07:00:00'),('Method Speciation(MethodSpeciationName)',196,'as H2O','H2O is the molecular formula of water.It shows the molecular composition of water. In H2O , H stands for hydrogen. And O for oxygen.Thus it means that water is composed of 2 atoms of hydrogen and one atom of oxygen,bonded together by a chemical bond.','2019-02-28 02:00:00'),('Method Speciation(MethodSpeciationName)',14,'as HCO3','Bicarbonate s an intermediate form in the deprotonation of carbonic acid. It is a polyatomic anion with the chemical formula HCO⁻ ₃. Bicarbonate serves a crucial biochemical role in the physiological pH buffering system. ','2009-09-17 09:09:34');
/*!40000 ALTER TABLE `methodspeciation` ENABLE KEYS */;
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
