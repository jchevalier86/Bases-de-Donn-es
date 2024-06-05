-- MariaDB dump 10.19  Distrib 10.5.15-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: parc
-- ------------------------------------------------------
-- Server version	10.5.15-MariaDB-0+deb11u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `installer`
--

DROP TABLE IF EXISTS `installer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `installer` (
  `nposte` varchar(7) NOT NULL,
  `nlog` varchar(5) NOT NULL,
  `numins` int(11) NOT NULL,
  `dateins` datetime DEFAULT NULL,
  `delai` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`nposte`,`nlog`),
  KEY `installer_fk` (`nposte`),
  KEY `installer2_fk` (`nlog`),
  CONSTRAINT `fk_installer` FOREIGN KEY (`nposte`) REFERENCES `poste` (`nposte`),
  CONSTRAINT `fk_installer2` FOREIGN KEY (`nlog`) REFERENCES `logiciel` (`nlog`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `installer`
--

LOCK TABLES `installer` WRITE;
/*!40000 ALTER TABLE `installer` DISABLE KEYS */;
INSERT INTO `installer` VALUES ('p01','log4',1,'2012-12-15 00:00:00',0),('p01','log5',2,'2012-12-15 00:00:00',0),('p01','log6',3,'2012-12-15 00:00:00',0),('p02','log1',22,'2005-04-07 00:00:00',0),('p03','log4',4,'2012-12-15 00:00:00',0),('p03','log5',5,'2012-12-15 00:00:00',0),('p03','log6',6,'2012-12-15 00:00:00',0),('p04','log4',30,'2012-03-03 00:00:00',0),('p04','log5',31,'2012-03-03 00:00:00',0),('p04','log7',32,'2012-03-03 00:00:00',0),('p05','log4',33,'2012-03-03 00:00:00',0),('p05','log5',34,'2012-03-03 00:00:00',0),('p05','log7',35,'2012-03-03 00:00:00',0),('p06','log2',23,'2009-03-02 00:00:00',0),('p07','log4',7,'2012-12-15 00:00:00',0),('p07','log5',8,'2012-12-15 00:00:00',0),('p07','log6',9,'2012-12-15 00:00:00',0),('p08','log1',24,'2005-04-07 00:00:00',0),('p09','log4',36,'2012-03-03 00:00:00',0),('p09','log5',37,'2012-03-03 00:00:00',0),('p09','log7',38,'2012-03-03 00:00:00',0),('p10','log4',39,'2012-03-03 00:00:00',0),('p10','log5',40,'2012-03-03 00:00:00',0),('p10','log7',41,'2012-03-03 00:00:00',0),('p11','log3',57,'2012-07-12 00:00:00',0),('p12','log4',10,'2012-12-15 00:00:00',0),('p12','log5',11,'2012-12-15 00:00:00',0),('p12','log6',12,'2012-12-15 00:00:00',0),('p13','log2',25,'2009-03-02 00:00:00',0),('p14','log1',26,'2005-04-07 00:00:00',0),('p15','log4',42,'2012-03-03 00:00:00',0),('p15','log5',43,'2012-03-03 00:00:00',0),('p15','log7',44,'2012-03-03 00:00:00',0),('p16','log2',27,'2009-03-02 00:00:00',0),('p17','log4',45,'2012-03-03 00:00:00',0),('p17','log5',46,'2012-03-03 00:00:00',0),('p17','log7',47,'2012-03-03 00:00:00',0),('p18','log4',48,'2012-03-03 00:00:00',0),('p18','log5',49,'2012-03-03 00:00:00',0),('p18','log7',50,'2012-03-03 00:00:00',0),('p19','log4',13,'2012-12-15 00:00:00',0),('p19','log5',14,'2012-12-15 00:00:00',0),('p19','log6',15,'2012-12-15 00:00:00',0),('p20','log1',28,'2005-04-07 00:00:00',0),('p21','log3',58,'2012-07-12 00:00:00',0),('p22','log3',59,'2012-12-15 00:00:00',0),('p23','log2',29,'2009-03-02 00:00:00',0),('p24','log4',16,'2012-12-15 00:00:00',0),('p24','log5',17,'2012-12-15 00:00:00',0),('p24','log6',18,'2012-12-15 00:00:00',0),('p25','log4',19,'2012-12-15 00:00:00',0),('p25','log5',20,'2012-12-15 00:00:00',0),('p25','log6',21,'2012-12-15 00:00:00',0),('p26','log3',60,'2009-03-02 00:00:00',0),('p27','log4',51,'2012-03-03 00:00:00',0),('p27','log5',52,'2012-03-03 00:00:00',0),('p27','log7',53,'2012-03-03 00:00:00',0),('p28','log4',54,'2012-03-03 00:00:00',0),('p28','log5',55,'2012-03-03 00:00:00',0),('p28','log7',56,'2012-06-03 00:00:00',0);
/*!40000 ALTER TABLE `installer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logiciel`
--

DROP TABLE IF EXISTS `logiciel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logiciel` (
  `nlog` varchar(5) NOT NULL,
  `nomlog` varchar(20) NOT NULL,
  `dateach` datetime DEFAULT NULL,
  `version` varchar(7) DEFAULT NULL,
  `typelp` varchar(9) NOT NULL,
  `prix` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`nlog`),
  KEY `tylog_fk` (`typelp`),
  CONSTRAINT `fk_tylog` FOREIGN KEY (`typelp`) REFERENCES `types` (`typelp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logiciel`
--

LOCK TABLES `logiciel` WRITE;
/*!40000 ALTER TABLE `logiciel` DISABLE KEYS */;
INSERT INTO `logiciel` VALUES ('log1','Oracle 6','2012-06-06 00:00:00','6.2','UNIX',3000.00),('log2','Oracle 8','2016-12-01 00:00:00','8i','UNIX',7200.00),('log3','SQL Server','2008-09-13 00:00:00','7','PCNT',2700.00),('log4','Sage One','2017-06-18 00:00:00','5.6','PCNT',8700.00),('log5','Pack Office','2019-12-12 00:00:00','2016','PCWS',5000.00),('log6','Gestok','2006-07-08 00:00:00','3.2','PCNT',6700.00),('log7','DreamWeaver','2012-03-22 00:00:00','7.4','PCWS',230.00);
/*!40000 ALTER TABLE `logiciel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poste`
--

DROP TABLE IF EXISTS `poste`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poste` (
  `nposte` varchar(7) NOT NULL,
  `nomposte` varchar(20) NOT NULL,
  `indip` varchar(11) NOT NULL,
  `ad` varchar(3) DEFAULT NULL,
  `typelp` varchar(9) NOT NULL,
  `nsalle` varchar(7) NOT NULL,
  PRIMARY KEY (`nposte`),
  KEY `comporte_fk` (`nsalle`),
  KEY `alimente_fk` (`indip`),
  KEY `typoste_fk` (`typelp`),
  CONSTRAINT `fk_alimente` FOREIGN KEY (`indip`) REFERENCES `segment` (`indip`),
  CONSTRAINT `fk_comporte` FOREIGN KEY (`nsalle`) REFERENCES `salle` (`nsalle`),
  CONSTRAINT `fk_typoste` FOREIGN KEY (`typelp`) REFERENCES `types` (`typelp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poste`
--

LOCK TABLES `poste` WRITE;
/*!40000 ALTER TABLE `poste` DISABLE KEYS */;
INSERT INTO `poste` VALUES ('p01','Poste 1','130.120.80','01','TX','s01'),('p02','Poste 2','130.120.80','02','UNIX','s01'),('p03','Poste 3','130.120.80','03','TX','s01'),('p04','Poste 4','130.120.80','04','PCWS','s02'),('p05','Poste 5','130.120.80','05','PCWS','s02'),('p06','Poste 6','130.120.80','06','UNIX','s03'),('p07','Poste 7','130.120.80','07','TX','s03'),('p08','Poste 8','130.120.81','01','UNIX','s11'),('p09','Poste 9','130.120.81','02','PCWS','s11'),('p10','Poste 10','130.120.81','03','PCWS','s11'),('p11','Poste 11','130.120.81','04','PCNT','s12'),('p12','Poste 12','130.120.81','05','TX','s12'),('p13','Poste 13','130.120.81','06','UNIX','s12'),('p14','Poste 14','130.120.81','07','UNIX','s12'),('p15','Poste 15','130.120.81','08','PCWS','s13'),('p16','Poste 16','130.120.81','09','UNIX','s13'),('p17','Poste 17','130.120.82','01','PCWS','s21'),('p18','Poste 18','130.120.82','02','PCWS','s21'),('p19','Poste 19','130.120.82','03','TX','s21'),('p20','Poste 20','130.120.82','04','UNIX','s22'),('p21','Poste 21','130.120.82','05','PCNT','s22'),('p22','Poste 22','130.120.83','01','PCNT','s31'),('p23','Poste 23','130.120.83','02','UNIX','s31'),('p24','Poste 24','130.120.83','03','TX','s31'),('p25','Poste 25','130.120.83','04','TX','s32'),('p26','Poste 26','130.120.83','05','PCNT','s32'),('p27','Poste 27','130.120.83','06','PCWS','s32'),('p28','Poste 28','130.120.83','07','PCWS','s32');
/*!40000 ALTER TABLE `poste` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salle`
--

DROP TABLE IF EXISTS `salle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salle` (
  `nsalle` varchar(7) NOT NULL,
  `nomsalle` varchar(20) NOT NULL,
  `nbposte` smallint(6) DEFAULT NULL,
  `indip` varchar(11) NOT NULL,
  PRIMARY KEY (`nsalle`),
  KEY `possede_fk` (`indip`),
  CONSTRAINT `fk_possede` FOREIGN KEY (`indip`) REFERENCES `segment` (`indip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salle`
--

LOCK TABLES `salle` WRITE;
/*!40000 ALTER TABLE `salle` DISABLE KEYS */;
INSERT INTO `salle` VALUES ('s01','Salle 1',3,'130.120.80'),('s02','Salle 2',2,'130.120.80'),('s03','Salle 3',2,'130.120.80'),('s11','Salle 11',3,'130.120.81'),('s12','Salle 12',4,'130.120.81'),('s13','Salle 13',2,'130.120.81'),('s21','Salle 21',3,'130.120.82'),('s22','Salle 22',2,'130.120.82'),('s31','Salle 31',3,'130.120.83'),('s32','Salle 32',4,'130.120.83');
/*!40000 ALTER TABLE `salle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `segment`
--

DROP TABLE IF EXISTS `segment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `segment` (
  `indip` varchar(11) NOT NULL,
  `nomsegment` varchar(20) NOT NULL,
  `etage` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`indip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `segment`
--

LOCK TABLES `segment` WRITE;
/*!40000 ALTER TABLE `segment` DISABLE KEYS */;
INSERT INTO `segment` VALUES ('130.120.80','Brin RDC',0),('130.120.81','Brin 1er ?tage',1),('130.120.82','Brin 2?me ?tage',2),('130.120.83','Brin 3?me ?tage',3);
/*!40000 ALTER TABLE `segment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `types`
--

DROP TABLE IF EXISTS `types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `types` (
  `typelp` varchar(9) NOT NULL,
  `nomtype` varchar(20) NOT NULL,
  PRIMARY KEY (`typelp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `types`
--

LOCK TABLES `types` WRITE;
/*!40000 ALTER TABLE `types` DISABLE KEYS */;
INSERT INTO `types` VALUES ('NC','Network Computer'),('PCNT','PC Windows NT'),('PCWS','PC Windows'),('TX','Terminal x-Xindows'),('UNIX','Syst?me Unix');
/*!40000 ALTER TABLE `types` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-06 11:59:20
