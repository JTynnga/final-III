-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: uni
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB

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
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classes` (
  `id_class` int(11) NOT NULL AUTO_INCREMENT,
  `name_class` varchar(250) NOT NULL,
  PRIMARY KEY (`id_class`),
  UNIQUE KEY `UNIQUE_name_class` (`name_class`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES (7,'Algebra'),(14,'Aritmética'),(13,'Artistica'),(16,'astronomia'),(1,'Biología'),(2,'Biomedicina'),(8,'Ciencia de materiales'),(9,'Ciencias Ambientales'),(10,'Ciencias Básicas'),(11,'Ciencias de la tierra'),(5,'Geometria'),(3,'Guarani'),(17,'laravel nivel i'),(15,'lenguaje y literatura'),(6,'Trigonometría');
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info`
--

DROP TABLE IF EXISTS `info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info` (
  `id_info` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `birthday` date DEFAULT NULL,
  `teacher_class` int(5) DEFAULT NULL,
  `state` tinyint(1) NOT NULL,
  `DNI` int(20) DEFAULT NULL,
  `id_rol` int(6) NOT NULL,
  PRIMARY KEY (`id_info`),
  UNIQUE KEY `UNIQUE_email` (`email`) USING BTREE,
  UNIQUE KEY `id_info_2` (`id_info`),
  UNIQUE KEY `id_info` (`id_info`) USING BTREE,
  UNIQUE KEY `UNIQUE_DNI` (`DNI`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info`
--

LOCK TABLES `info` WRITE;
/*!40000 ALTER TABLE `info` DISABLE KEYS */;
INSERT INTO `info` VALUES (2,'profesor','4','profe@gmail.com','','Calle los profesores','2013-04-10',1,1,79999985,2),(3,'rolando','reategui','alumno01@gmail.com','','Jr. Los Proceres N° 458 - Urb. 09 de Abril - Tarapoto','2023-08-01',NULL,1,9998965,3),(4,'herbert','orellana','alumno02@gmail.com','herbert','Calle sin nombre y sin numero','2023-07-19',NULL,1,7237117,3),(5,'alumno03','Juan','alumno@alumno','alumno','Calle 03','2013-05-02',NULL,1,7288285,3),(11,'profe02','sor','maestro@maestro','','los colifores','0000-00-00',2,1,NULL,2),(33,'jose teodoro','ynga chiroque','jose.ynga@gmail.com','','Jr. Los Proceres N° 458 - Urb. 09 de Abril - Tarapoto','2023-08-25',NULL,1,1149518,3),(36,'jose','ynga','admin@admin','admin','jr. los floripondios 555','1964-01-01',1,1,56598945,1),(37,'joaquin','sabina','joaquin@joaquin','','Jr. Los Proceres N° 458 - Urb. 09 de Abril - Tarapoto','2023-08-09',NULL,1,NULL,0),(38,'ursula','jimenez','ursula@ursula','123','Jr. Los Proceres N° 458 - Urb. 09 de Abril - Tarapoto','2023-08-01',NULL,1,NULL,0);
/*!40000 ALTER TABLE `info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info_classes`
--

DROP TABLE IF EXISTS `info_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info_classes` (
  `id_info_fk` int(11) NOT NULL,
  `id_class_fk` int(11) NOT NULL,
  `grade` int(4) DEFAULT NULL,
  `messages` varchar(255) DEFAULT NULL,
  KEY `FK_info` (`id_info_fk`),
  KEY `FK_class` (`id_class_fk`),
  CONSTRAINT `FK_class` FOREIGN KEY (`id_class_fk`) REFERENCES `classes` (`id_class`),
  CONSTRAINT `FK_info` FOREIGN KEY (`id_info_fk`) REFERENCES `info` (`id_info`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_classes`
--

LOCK TABLES `info_classes` WRITE;
/*!40000 ALTER TABLE `info_classes` DISABLE KEYS */;
INSERT INTO `info_classes` VALUES (5,1,50,NULL),(3,13,NULL,NULL),(3,2,98,'hola que tal'),(3,8,NULL,NULL),(3,9,NULL,NULL),(3,10,NULL,NULL),(3,11,NULL,NULL),(3,6,NULL,NULL),(3,5,NULL,NULL),(3,3,NULL,NULL),(3,1,NULL,'Se revisara mañana'),(3,14,NULL,NULL),(4,8,NULL,NULL),(4,9,NULL,NULL),(4,10,NULL,NULL),(4,11,NULL,NULL),(4,5,NULL,NULL),(4,3,NULL,NULL),(4,6,NULL,NULL),(4,14,NULL,NULL),(4,7,NULL,NULL),(4,1,NULL,NULL);
/*!40000 ALTER TABLE `info_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id_rol` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_rol` varchar(100) NOT NULL,
  PRIMARY KEY (`id_rol`),
  UNIQUE KEY `nombre_rol` (`nombre_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'ADMINISTRADOR'),(3,'ALUMNO'),(2,'MAESTRO');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-11 16:18:20
