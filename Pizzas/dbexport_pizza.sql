-- MySQL dump 10.13  Distrib 5.7.30, for Win64 (x86_64)
--
-- Host: localhost    Database: pizza
-- ------------------------------------------------------
-- Server version	5.7.30-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `telephone` char(10) NOT NULL,
  `nom` varchar(200) NOT NULL,
  `adresse` varchar(200) NOT NULL,
  `note` text,
  PRIMARY KEY (`telephone`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES ('0468556324','Patricia Malloin','29 Boulevard Clemenceau 33000 Bordeaux',''),('0567249934','Emmanuel Debout','34 Impasse Malraux 86000 Poitiers',''),('0567452388','Françoise Marvelle','10 Place du Champ de Mars 86000 Poitiers','Mauvais payeur'),('0673924655','Alain Repoit','45 rue de la République 86000 Poitiers',''),('0679664389','Nicolas Bataille','5 Avenue du général de Gaulle 86000 Poitiers','Sonner chez Madame Billote'),('0756238766','Patrick Jouet','57 bis rue du Poitou 86000 Poitiers','Livrer toujours après 20h');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commandes`
--

DROP TABLE IF EXISTS `commandes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commandes` (
  `id_commande` int(11) NOT NULL,
  `telephone` char(10) NOT NULL,
  `date_commande` date DEFAULT NULL,
  `prix` float(8,2) DEFAULT NULL,
  `remise` int(11) DEFAULT NULL,
  `prix_total` float(8,2) DEFAULT NULL,
  `date_livraison` date DEFAULT NULL,
  `note` text,
  PRIMARY KEY (`id_commande`),
  KEY `passe_commande_fk` (`telephone`),
  CONSTRAINT `fk_passe_commande` FOREIGN KEY (`telephone`) REFERENCES `clients` (`telephone`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commandes`
--

LOCK TABLES `commandes` WRITE;
/*!40000 ALTER TABLE `commandes` DISABLE KEYS */;
INSERT INTO `commandes` VALUES (20200001,'0679664389','2020-09-01',40.00,0,40.00,'2020-09-01',NULL),(20200002,'0567452388','2020-09-01',23.50,0,23.50,'2020-09-01',NULL),(20200003,'0673924655','2020-09-01',48.00,0,48.00,'2020-09-01',NULL),(20200004,'0567249934','2020-09-01',35.75,0,35.75,'2020-09-01',NULL),(20200005,'0756238766','2020-09-01',75.00,10,67.50,'2020-09-01',NULL),(20200006,'0468556324','2020-09-01',79.75,10,71.78,'2020-09-01',NULL),(20200007,'0679664389','2020-09-07',19.00,0,19.00,'2020-09-07',NULL),(20200008,'0567452388','2020-09-07',15.00,0,15.00,'2020-09-07',NULL),(20200009,'0673924655','2020-09-07',11.75,0,11.75,'2020-09-07',NULL),(20200010,'0567249934','2020-09-07',51.00,0,51.00,'2020-09-07',NULL),(20200011,'0673924655','2020-11-07',66.00,10,59.40,'2020-11-07',NULL),(20200012,'0567249934','2020-11-07',11.75,0,11.75,'2020-11-07',NULL),(20200013,'0756238766','2020-11-07',15.00,0,15.00,'2020-11-07',NULL),(20200014,'0468556324','2020-11-07',37.75,0,37.75,'2020-11-07',NULL);
/*!40000 ALTER TABLE `commandes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredients`
--

DROP TABLE IF EXISTS `ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingredients` (
  `id_ingredient` int(11) NOT NULL,
  `ingredient` varchar(200) NOT NULL,
  PRIMARY KEY (`id_ingredient`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredients`
--

LOCK TABLES `ingredients` WRITE;
/*!40000 ALTER TABLE `ingredients` DISABLE KEYS */;
INSERT INTO `ingredients` VALUES (1000,'Pâte à Pizza'),(2000,'Coulis de tomate'),(3001,'Jambon de parme'),(3002,'Thon'),(3003,'Viande hachée'),(4001,'Fromage rapé'),(4002,'Fromage de chèvre'),(4003,'Gorgonzola'),(4004,'Crème fraiche'),(5001,'Champignon'),(5002,'Oignons épluchés'),(5003,'Olives'),(5004,'Artichaut');
/*!40000 ALTER TABLE `ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lignes_commandes`
--

DROP TABLE IF EXISTS `lignes_commandes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lignes_commandes` (
  `id_commande` int(11) NOT NULL,
  `id_pizza` int(11) NOT NULL,
  `ligne` int(11) DEFAULT NULL,
  `quantite` int(11) DEFAULT NULL,
  `montant` float(8,2) DEFAULT NULL,
  PRIMARY KEY (`id_commande`,`id_pizza`),
  KEY `lignes_commandes_fk` (`id_commande`),
  KEY `lignes_commandes2_fk` (`id_pizza`),
  CONSTRAINT `fk_lignes_commandes` FOREIGN KEY (`id_commande`) REFERENCES `commandes` (`id_commande`),
  CONSTRAINT `fk_lignes_commandes2` FOREIGN KEY (`id_pizza`) REFERENCES `pizzas` (`id_pizza`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lignes_commandes`
--

LOCK TABLES `lignes_commandes` WRITE;
/*!40000 ALTER TABLE `lignes_commandes` DISABLE KEYS */;
INSERT INTO `lignes_commandes` VALUES (20200001,1003,2,2,25.00),(20200001,3003,1,1,15.00),(20200002,4003,1,2,23.50),(20200003,1003,3,2,25.00),(20200003,2002,1,1,10.50),(20200003,3002,2,1,12.50),(20200004,3003,2,1,15.00),(20200004,4001,1,1,9.00),(20200004,4003,3,1,11.75),(20200005,3003,1,5,75.00),(20200006,1003,1,2,25.00),(20200006,2003,2,1,13.00),(20200006,3003,3,2,30.00),(20200006,4003,4,1,11.75),(20200007,2001,1,1,9.00),(20200007,3001,2,1,10.00),(20200008,3003,1,1,15.00),(20200009,4003,1,1,11.75),(20200010,1003,1,2,25.00),(20200010,2003,2,2,26.00),(20200011,3003,1,3,45.00),(20200011,4002,2,2,21.00),(20200012,4003,1,1,11.75),(20200013,3003,1,1,15.00),(20200014,2003,2,2,26.00),(20200014,4003,1,1,11.75);
/*!40000 ALTER TABLE `lignes_commandes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pizza_ingredients`
--

DROP TABLE IF EXISTS `pizza_ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pizza_ingredients` (
  `id_ingredient` int(11) NOT NULL,
  `id_pizza` int(11) NOT NULL,
  `quantite` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_ingredient`,`id_pizza`),
  KEY `pizza_ingredients_fk` (`id_ingredient`),
  KEY `pizza_ingredients2_fk` (`id_pizza`),
  CONSTRAINT `fk_pizza_ingredients` FOREIGN KEY (`id_ingredient`) REFERENCES `ingredients` (`id_ingredient`),
  CONSTRAINT `fk_pizza_ingredients2` FOREIGN KEY (`id_pizza`) REFERENCES `pizzas` (`id_pizza`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pizza_ingredients`
--

LOCK TABLES `pizza_ingredients` WRITE;
/*!40000 ALTER TABLE `pizza_ingredients` DISABLE KEYS */;
INSERT INTO `pizza_ingredients` VALUES (1000,1001,150),(1000,1002,200),(1000,1003,300),(1000,2001,150),(1000,2002,200),(1000,2003,300),(1000,3001,150),(1000,3002,200),(1000,3003,300),(1000,4001,150),(1000,4002,200),(1000,4003,300),(2000,1001,75),(2000,1002,120),(2000,1003,180),(2000,2001,75),(2000,2002,120),(2000,2003,180),(2000,3001,75),(2000,3002,120),(2000,3003,180),(2000,4001,75),(2000,4002,120),(2000,4003,180),(3001,1001,30),(3001,1002,45),(3001,1003,75),(3001,2001,30),(3001,2002,45),(3001,2003,75),(3002,4001,30),(3002,4002,45),(4001,1001,35),(4001,1002,60),(4001,1003,120),(4001,3001,15),(4001,3002,25),(4001,3003,40),(4001,4001,15),(4001,4002,25),(4002,3001,15),(4002,3002,25),(4002,3003,40),(4003,3001,15),(4003,3002,25),(4003,3003,40),(4004,3001,15),(4004,3002,25),(4004,3003,40),(5001,1001,40),(5001,1002,70),(5001,1003,90),(5001,2001,40),(5001,2002,70),(5001,2003,90),(5002,2001,30),(5002,2002,45),(5002,2003,60),(5003,1001,10),(5003,1002,15),(5003,1003,20),(5003,2001,10),(5003,2002,15),(5003,2003,20),(5003,4001,10),(5003,4002,15),(5004,2001,35),(5004,2002,60),(5004,2003,120);
/*!40000 ALTER TABLE `pizza_ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pizzas`
--

DROP TABLE IF EXISTS `pizzas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pizzas` (
  `id_pizza` int(11) NOT NULL,
  `nom` varchar(200) NOT NULL,
  `taille` int(11) DEFAULT NULL,
  `prix` float(8,2) DEFAULT NULL,
  PRIMARY KEY (`id_pizza`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pizzas`
--

LOCK TABLES `pizzas` WRITE;
/*!40000 ALTER TABLE `pizzas` DISABLE KEYS */;
INSERT INTO `pizzas` VALUES (1001,'Pizza Napolitaine',1,8.50),(1002,'Pizza Napolitaine',2,10.00),(1003,'Pizza Napolitaine',3,12.50),(2001,'Pizza Reine',1,9.00),(2002,'Pizza Reine',2,10.50),(2003,'Pizza Reine',3,13.00),(3001,'Pizza 3 Fromages',1,10.00),(3002,'Pizza 3 Fromages',2,12.50),(3003,'Pizza 3 Fromages',3,15.00),(4001,'Pizza au Thon',1,9.00),(4002,'Pizza au Thon',2,10.50),(4003,'Pizza au Thon',3,11.75);
/*!40000 ALTER TABLE `pizzas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-05 15:12:13
