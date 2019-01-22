-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: localhost    Database: misquedadas
-- ------------------------------------------------------
-- Server version	5.7.23-0ubuntu0.18.04.1

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
-- Current Database: `misquedadas`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `misquedadas` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `misquedadas`;

--
-- Table structure for table `asiste`
--

DROP TABLE IF EXISTS `asiste`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asiste` (
  `nombre` varchar(30) NOT NULL,
  `que` varchar(30) NOT NULL,
  PRIMARY KEY (`nombre`,`que`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asiste`
--

LOCK TABLES `asiste` WRITE;
/*!40000 ALTER TABLE `asiste` DISABLE KEYS */;
INSERT INTO `asiste` VALUES ('Carlos','Café antes de Álgebra'),('Carlos','Fiesta Fin de Exámenes'),('Carlos','Planificación Curso IA'),('Carlos','Telecode 2019'),('Cristina','Fiesta Fin de Exámenes'),('Cristina','Reunión Asociación BEST'),('Cristina','Telecode 2019'),('Efrén','Café antes de Álgebra'),('Efrén','Cumpleaños de Noelia'),('Efrén','Fiesta Fin de Exámenes'),('Efrén','Planificación Curso IA'),('Efrén','Reunión Asociación BEST'),('Efrén','Telecode 2019'),('Gustavo','Café antes de Álgebra'),('Gustavo','Cumpleaños de Noelia'),('Gustavo','Fiesta Fin de Exámenes'),('Gustavo','Telecode 2019'),('Marcos','Cumpleaños de Noelia'),('Marcos','Fiesta Fin de Exámenes'),('Marcos','Reunión Asociación BEST'),('Marcos','Telecode 2019'),('Noelia','Cumpleaños de Noelia'),('Noelia','Fiesta Fin de Exámenes'),('Noelia','Reunión Asociación BEST'),('Noelia','Telecode 2019');
/*!40000 ALTER TABLE `asiste` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quedada`
--

DROP TABLE IF EXISTS `quedada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quedada` (
  `que` varchar(30) NOT NULL,
  `dia` date NOT NULL,
  `hora` time NOT NULL,
  `direccion` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`que`),
  KEY `direccion` (`direccion`),
  CONSTRAINT `quedada_ibfk_1` FOREIGN KEY (`direccion`) REFERENCES `sitio` (`direccion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quedada`
--

LOCK TABLES `quedada` WRITE;
/*!40000 ALTER TABLE `quedada` DISABLE KEYS */;
INSERT INTO `quedada` VALUES ('Café antes de Álgebra','2019-02-06','08:10:00','Cafetería ETSIT'),('Cumpleaños de Noelia','2019-02-27','17:26:00','Parque de Atracciones'),('Fiesta Fin de Exámenes','2019-01-21','23:15:00','Teatro Kapital'),('Planificación Curso IA','2019-02-19','13:45:00','WeWork Castellana'),('Reunión Asociación BEST','2019-03-14','10:25:00','Rectorado UPM Edif. B'),('Telecode 2019','2019-02-16','09:30:00','ETSIT Aula Magna');
/*!40000 ALTER TABLE `quedada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sitio`
--

DROP TABLE IF EXISTS `sitio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sitio` (
  `direccion` varchar(30) NOT NULL,
  `coordenadas` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`direccion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sitio`
--

LOCK TABLES `sitio` WRITE;
/*!40000 ALTER TABLE `sitio` DISABLE KEYS */;
INSERT INTO `sitio` VALUES ('Cafetería ETSIT','40.452378, -3.726213'),('ETSIT Aula Magna','40.452658, -3.726201'),('Parque de Atracciones','40.41359, -3.7520700000000033'),('Rectorado UPM Edif. B','40.448776, -3.7192662999999584'),('Teatro Kapital','40.409773, -3.693173'),('WeWork Castellana','40.435460, -3.689628');
/*!40000 ALTER TABLE `sitio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `nombre` varchar(30) NOT NULL,
  `clave` varchar(30) NOT NULL,
  `imagen` varchar(30) NOT NULL DEFAULT 'usuario.jpg',
  `edad` int(11) DEFAULT NULL,
  PRIMARY KEY (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES ('admin','admin0000','admin.jpg',1),('Carlos','carlos1234','usuario.jpg',18),('Cristina','cris1234','cristina.jpg',18),('Efrén','efren1234','efren.jpg',18),('Gustavo','gus1234','gustavo.jpg',20),('Marcos','marcos1234','marcos.jpg',18),('Noelia','noe1234','noelia.jpg',19);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-22 22:21:06
