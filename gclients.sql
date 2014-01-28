CREATE DATABASE  IF NOT EXISTS `gclients` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `gclients`;
-- MySQL dump 10.13  Distrib 5.5.34, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: gclients
-- ------------------------------------------------------
-- Server version	5.5.34-0ubuntu0.13.10.1

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
-- Table structure for table `Fourni`
--

DROP TABLE IF EXISTS `Fourni`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fourni` (
  `numfourni` int(11) NOT NULL,
  `idarticle` int(11) NOT NULL,
  `date` date NOT NULL DEFAULT '2014-01-26',
  `prix_achat` double DEFAULT NULL,
  `quantité` int(11) DEFAULT NULL,
  PRIMARY KEY (`numfourni`,`idarticle`,`date`),
  KEY `fk_Fourni_Fournisseurs1_idx` (`numfourni`),
  KEY `fk_Fourni_article1_idx` (`idarticle`),
  CONSTRAINT `fk_Fourni_Fournisseurs1` FOREIGN KEY (`numfourni`) REFERENCES `Fournisseurs` (`numfourni`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fourni_article1` FOREIGN KEY (`idarticle`) REFERENCES `article` (`id_article`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fourni`
--

LOCK TABLES `Fourni` WRITE;
/*!40000 ALTER TABLE `Fourni` DISABLE KEYS */;
INSERT INTO `Fourni` VALUES (1,200,'2014-01-27',9999,10),(1,202,'2014-02-26',897,1),(1,301,'2013-01-01',20000,1),(2,301,'2012-08-12',20000,1),(2,444,'2013-01-01',5000,3);
/*!40000 ALTER TABLE `Fourni` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fournisseurs`
--

DROP TABLE IF EXISTS `Fournisseurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fournisseurs` (
  `numfourni` int(11) NOT NULL,
  `nom` varchar(25) NOT NULL,
  `ville` varchar(25) NOT NULL,
  `statut` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`numfourni`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fournisseurs`
--

LOCK TABLES `Fournisseurs` WRITE;
/*!40000 ALTER TABLE `Fournisseurs` DISABLE KEYS */;
INSERT INTO `Fournisseurs` VALUES (1,'nom1','ville1','statut1'),(2,'nom2','ville2','statut2'),(3,'nom3','ville3','statut3'),(4,'nom4','Rabat','statut4');
/*!40000 ALTER TABLE `Fournisseurs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `id_article` int(3) NOT NULL,
  `designation` varchar(80) NOT NULL,
  `prix_unite` float NOT NULL,
  `qte_stock` int(2) NOT NULL,
  PRIMARY KEY (`id_article`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (200,'Tapis',100,30),(201,'Lecteur Disk',1025.7,2),(202,'Imprimante matricielle',3210.25,15),(203,'Imprimante laser',7000,2),(204,'Souris',700,10),(205,'Disque dur',1200,9),(207,'Imprimante jet d\'encre',5524.5,6),(208,'Clavier',3000,27),(209,'Carte vidéo',220.5,3),(210,'Modem',3420.5,12),(212,'CD.ROM',310,10),(213,'Carte mère',725.6,7),(214,'Scanner',12000,4),(217,'Kit multimédia',325,15),(222,'Mise à jour office 97 standard',3020,5),(301,'Serveur HP',14720,5),(444,'Ordinateur HP',15000,2);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `id_client` int(6) NOT NULL,
  `nom` varchar(15) NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `ville` varchar(15) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  PRIMARY KEY (`id_client`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (21489,'SAHEL','6,bd hassany','rabat','(07)95.25.14'),(23156,'MIKOU','15,bd 2mars','casablanca','(02)94.22.36'),(57423,'ADAMI','27,bd zerktouni','casablanca','(02)30.34.55'),(80877,'CHENAOUI','28, bd md V','casablanca','(02)43.02.57'),(105874,'ALAOUI','73,avenue lalla yacout','casablanca','(02)29.65.14'),(110175,'BENYAHYA','23,rue la fayette','casablanca','(02)30.28.51'),(210279,'CHAKIR','354,bd d\'anfa','casablanca','(02)90.31.07'),(326598,'BENMOUSA','13,bd my ismail','casablanca','(02)32.12.55'),(336941,'BENAZOUZ','13, bd My youssef','rabat','(07)82.15.33'),(365722,'OUMARI','55, rue faidi khalifa','marrakech','(04)24.13.90'),(657251,'RIAD','84, bd 11 janvier','rabat','(07)30.38.55'),(698725,'MANSOUR','12,avenue des FAR','fes','(05)27.69.87'),(987265,'IDRISSI','99,rue colbert','oujda','(06)61.25.33'),(987542,'BORJA','62, hay el hana','fes','(05)80.37.08'),(998750,'FARABI','53,maarif','kenitra','(07)98.25.47');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commandes`
--

DROP TABLE IF EXISTS `commandes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commandes` (
  `num_com` int(3) NOT NULL,
  `id_client` int(6) NOT NULL,
  `date_com` date NOT NULL,
  PRIMARY KEY (`num_com`),
  KEY `id_client` (`id_client`),
  CONSTRAINT `commandes_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `clients` (`id_client`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commandes`
--

LOCK TABLES `commandes` WRITE;
/*!40000 ALTER TABLE `commandes` DISABLE KEYS */;
INSERT INTO `commandes` VALUES (123,21489,'1995-01-23'),(124,21489,'1995-01-24'),(125,110175,'1995-03-08'),(159,105874,'1995-11-10'),(208,105874,'1995-08-02'),(349,80877,'1995-06-23'),(789,336941,'1996-02-07'),(854,210279,'1995-05-15'),(937,21489,'1995-08-13'),(971,110175,'1995-06-28'),(979,110175,'1996-01-01');
/*!40000 ALTER TABLE `commandes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ligne_cmd`
--

DROP TABLE IF EXISTS `ligne_cmd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ligne_cmd` (
  `num_ligne` int(4) NOT NULL,
  `num_com` int(3) NOT NULL,
  `id_article` int(3) NOT NULL,
  `qte_com` int(2) NOT NULL,
  PRIMARY KEY (`num_ligne`),
  KEY `num_com` (`num_com`,`id_article`),
  KEY `id_article` (`id_article`),
  CONSTRAINT `ligne_cmd_ibfk_2` FOREIGN KEY (`id_article`) REFERENCES `article` (`id_article`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ligne_cmd_ibfk_1` FOREIGN KEY (`num_com`) REFERENCES `commandes` (`num_com`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ligne_cmd`
--

LOCK TABLES `ligne_cmd` WRITE;
/*!40000 ALTER TABLE `ligne_cmd` DISABLE KEYS */;
INSERT INTO `ligne_cmd` VALUES (1236,208,217,1),(1729,789,222,5),(2547,159,444,9),(4549,937,301,7),(5852,971,214,12),(9482,349,210,14);
/*!40000 ALTER TABLE `ligne_cmd` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-01-27 10:25:32
