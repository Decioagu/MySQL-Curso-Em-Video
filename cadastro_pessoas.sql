CREATE DATABASE  IF NOT EXISTS `cadastro` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cadastro`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: cadastro
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `pessoas`
--

DROP TABLE IF EXISTS `pessoas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoas` (
  `id_pessoas` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(16) NOT NULL,
  `nascimento` date NOT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `peso` decimal(5,2) unsigned DEFAULT NULL,
  `altura` decimal(3,2) unsigned DEFAULT NULL,
  `pais` varchar(20) DEFAULT 'Brasil',
  `cursopreferido` int DEFAULT NULL,
  `profissao` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_pessoas`),
  UNIQUE KEY `cpf` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoas`
--

LOCK TABLES `pessoas` WRITE;
/*!40000 ALTER TABLE `pessoas` DISABLE KEYS */;
INSERT INTO `pessoas` VALUES (1,'Décio','104.509.587-79','1981-05-15','M',80.90,1.84,'Brasil',1,NULL),(2,'Mara','564.678.164-90','1964-02-19','F',71.00,1.80,'Brasil',5,NULL),(3,'Ana','109.564.789-09','2018-10-09','F',21.21,1.04,'Brasil',8,NULL),(4,'Luana','098.231.908-56','1984-11-17','F',66.00,1.63,'Alemanha',7,NULL),(5,'Maria','189.555.829-89','1983-10-09','F',78.21,1.78,'Brasil',5,NULL),(6,'Rafael','289.675.869-32','1993-12-03','M',81.24,1.85,'Brasil',8,NULL),(7,'Marcele','239.467.435-29','1994-12-14','F',62.21,1.64,'Brasil',13,NULL),(8,'Filipe','232.786.324-30','1993-03-15','M',65.24,1.64,'Brasil',4,NULL),(9,'Luciana','169.098.372-87','1999-04-23','F',69.03,1.67,'Brasil',1,NULL),(10,'Pedro','111.233.674-56','1989-05-11','M',78.00,1.77,'Brasil',2,NULL);
/*!40000 ALTER TABLE `pessoas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-21 23:07:52
