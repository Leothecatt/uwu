-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: actividad2
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `vinculacion_instructor`
--

DROP TABLE IF EXISTS `vinculacion_instructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vinculacion_instructor` (
  `id` int NOT NULL,
  `id_anio` int NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `id_vinculacion` int NOT NULL,
  `id_instructor` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_anio` (`id_anio`),
  UNIQUE KEY `fecha_inicio` (`fecha_inicio`),
  UNIQUE KEY `fecha_fin` (`fecha_fin`),
  UNIQUE KEY `id_vinculacion` (`id_vinculacion`),
  UNIQUE KEY `id_instructor` (`id_instructor`),
  CONSTRAINT `fk_ani_viins` FOREIGN KEY (`id_anio`) REFERENCES `anio` (`id`),
  CONSTRAINT `fk_ins_vinins` FOREIGN KEY (`id_instructor`) REFERENCES `instructor` (`id`),
  CONSTRAINT `fk_vin_vinisn` FOREIGN KEY (`id_vinculacion`) REFERENCES `vinculacion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vinculacion_instructor`
--

LOCK TABLES `vinculacion_instructor` WRITE;
/*!40000 ALTER TABLE `vinculacion_instructor` DISABLE KEYS */;
/*!40000 ALTER TABLE `vinculacion_instructor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-23 11:35:03
