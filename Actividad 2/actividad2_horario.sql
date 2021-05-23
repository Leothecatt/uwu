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
-- Table structure for table `horario`
--

DROP TABLE IF EXISTS `horario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horario` (
  `id` int NOT NULL,
  `hora_inicio` time NOT NULL,
  `id_ficha_has_trimestre` int NOT NULL,
  `id_instructor` int NOT NULL,
  `id_dia` int NOT NULL,
  `id_ambiente` int NOT NULL,
  `id_version_horario` int NOT NULL,
  `hora_fin` date NOT NULL,
  `id_modalidad` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hora_inicio` (`hora_inicio`),
  UNIQUE KEY `id_ficha_has_trimestre` (`id_ficha_has_trimestre`),
  UNIQUE KEY `id_instructor` (`id_instructor`),
  UNIQUE KEY `id_dia` (`id_dia`),
  UNIQUE KEY `id_ambiente` (`id_ambiente`),
  UNIQUE KEY `id_version_horario` (`id_version_horario`),
  UNIQUE KEY `hora_fin` (`hora_fin`),
  KEY `fk_mod_hor` (`id_modalidad`),
  CONSTRAINT `fk_ambi_hor` FOREIGN KEY (`id_ambiente`) REFERENCES `ambiente` (`id`),
  CONSTRAINT `fk_di_hor` FOREIGN KEY (`id_dia`) REFERENCES `dia` (`id`),
  CONSTRAINT `fk_fitri_hor` FOREIGN KEY (`id_ficha_has_trimestre`) REFERENCES `ficha_has_trimestre` (`id`),
  CONSTRAINT `fk_ins_hor` FOREIGN KEY (`id_instructor`) REFERENCES `instructor` (`id`),
  CONSTRAINT `fk_mod_hor` FOREIGN KEY (`id_modalidad`) REFERENCES `modalidad` (`id`),
  CONSTRAINT `fk_verhor_hor` FOREIGN KEY (`id_version_horario`) REFERENCES `version_horario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horario`
--

LOCK TABLES `horario` WRITE;
/*!40000 ALTER TABLE `horario` DISABLE KEYS */;
/*!40000 ALTER TABLE `horario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-23 11:35:16
