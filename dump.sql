-- MySQL dump 10.13  Distrib 8.0.32, for macos12.6 (arm64)
--
-- Host: localhost    Database: myefrei
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `_prisma_migrations`
--

DROP TABLE IF EXISTS `_prisma_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `applied_steps_count` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_prisma_migrations`
--

LOCK TABLES `_prisma_migrations` WRITE;
/*!40000 ALTER TABLE `_prisma_migrations` DISABLE KEYS */;
INSERT INTO `_prisma_migrations` VALUES ('27515870-5248-4f78-8941-6f417287649c','925750dc6f8dd89018f429c2230f40389e8bb453f80ca238b6dc2ccbc743fb57','2023-05-12 13:17:51.902','20230512131544_add_start_end_time_on_cours',NULL,NULL,'2023-05-12 13:17:51.843',1),('55d542b0-d078-47f2-a97b-b70cda25cb26','60cb0b3a29ffbfd112912d21c085fa592a0e6cab72fb82f8f98233091b741718','2023-05-12 13:17:51.843','20230512092308_create_db',NULL,NULL,'2023-05-12 13:17:51.729',1);
/*!40000 ALTER TABLE `_prisma_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cours`
--

DROP TABLE IF EXISTS `Cours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cours` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matiereId` int NOT NULL,
  `formateurId` int NOT NULL,
  `salleId` int NOT NULL,
  `groupeId` int NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `endTime` datetime(3) NOT NULL,
  `startTime` datetime(3) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Cours_name_key` (`name`),
  KEY `Cours_matiereId_fkey` (`matiereId`),
  KEY `Cours_formateurId_fkey` (`formateurId`),
  KEY `Cours_salleId_fkey` (`salleId`),
  KEY `Cours_groupeId_fkey` (`groupeId`),
  CONSTRAINT `Cours_formateurId_fkey` FOREIGN KEY (`formateurId`) REFERENCES `Formateur` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `Cours_groupeId_fkey` FOREIGN KEY (`groupeId`) REFERENCES `Groupe` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `Cours_matiereId_fkey` FOREIGN KEY (`matiereId`) REFERENCES `Matiere` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `Cours_salleId_fkey` FOREIGN KEY (`salleId`) REFERENCES `Salle` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cours`
--

LOCK TABLES `Cours` WRITE;
/*!40000 ALTER TABLE `Cours` DISABLE KEYS */;
INSERT INTO `Cours` VALUES (2,'Cours 2',2,2,2,2,'2023-05-12 13:17:53.130','2023-05-12 13:17:53.130','2023-04-11 11:00:00.000','2023-04-11 09:00:00.000'),(3,'Cours 3',3,3,3,3,'2023-05-12 13:17:53.130','2023-05-12 13:17:53.130','2023-04-12 11:00:00.000','2023-04-12 09:00:00.000'),(4,'Cours 4',4,4,4,4,'2023-05-12 13:17:53.130','2023-05-12 13:17:53.130','2023-04-13 11:00:00.000','2023-04-13 09:00:00.000'),(5,'Cours 5',5,5,5,5,'2023-05-12 13:17:53.130','2023-05-12 13:17:53.130','2023-04-14 11:00:00.000','2023-04-14 09:00:00.000'),(6,'Est-ce que c\'est bon pour vous ? ',1,1,1,1,'2023-05-12 13:37:44.780','2023-05-12 13:57:07.636','2023-05-01 08:00:00.000','2023-05-01 07:00:00.000');
/*!40000 ALTER TABLE `Cours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Eleve`
--

DROP TABLE IF EXISTS `Eleve`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Eleve` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `groupeId` int NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Eleve_groupeId_fkey` (`groupeId`),
  CONSTRAINT `Eleve_groupeId_fkey` FOREIGN KEY (`groupeId`) REFERENCES `Groupe` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Eleve`
--

LOCK TABLES `Eleve` WRITE;
/*!40000 ALTER TABLE `Eleve` DISABLE KEYS */;
INSERT INTO `Eleve` VALUES (1,'Ludwig','Reilly',3,'2023-05-12 13:17:53.136','2023-05-12 13:17:53.136'),(2,'Helena','Gleason',3,'2023-05-12 13:17:53.136','2023-05-12 13:17:53.136'),(3,'Veronica','Davis',4,'2023-05-12 13:17:53.136','2023-05-12 13:17:53.136'),(4,'Jevon','Koepp',2,'2023-05-12 13:17:53.136','2023-05-12 13:17:53.136'),(5,'Alice','Hilpert',3,'2023-05-12 13:17:53.136','2023-05-12 13:17:53.136'),(6,'Jody','Wintheiser',2,'2023-05-12 13:17:53.136','2023-05-12 13:17:53.136'),(7,'Carmen','Ritchie',4,'2023-05-12 13:17:53.136','2023-05-12 13:17:53.136'),(8,'Donald','O\'Hara',5,'2023-05-12 13:17:53.136','2023-05-12 13:17:53.136'),(9,'Elinore','Jakubowski',2,'2023-05-12 13:17:53.136','2023-05-12 13:17:53.136'),(10,'Delphine','Haag',1,'2023-05-12 13:17:53.136','2023-05-12 13:17:53.136');
/*!40000 ALTER TABLE `Eleve` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Formateur`
--

DROP TABLE IF EXISTS `Formateur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Formateur` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Formateur`
--

LOCK TABLES `Formateur` WRITE;
/*!40000 ALTER TABLE `Formateur` DISABLE KEYS */;
INSERT INTO `Formateur` VALUES (1,'Connor','Boyle','2023-05-12 13:17:53.124','2023-05-12 13:17:53.124'),(2,'Fidel','Murray','2023-05-12 13:17:53.124','2023-05-12 13:17:53.124'),(3,'Juliana','McGlynn-Parisian','2023-05-12 13:17:53.124','2023-05-12 13:17:53.124'),(4,'Joaquin','O\'Hara','2023-05-12 13:17:53.124','2023-05-12 13:17:53.124'),(5,'Zachery','Simonis','2023-05-12 13:17:53.124','2023-05-12 13:17:53.124'),(6,'Jérémie','Barrière','2023-05-12 14:04:50.522','2023-05-12 14:04:50.522');
/*!40000 ALTER TABLE `Formateur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Groupe`
--

DROP TABLE IF EXISTS `Groupe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Groupe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `promotionId` int NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Groupe_name_key` (`name`),
  KEY `Groupe_promotionId_fkey` (`promotionId`),
  CONSTRAINT `Groupe_promotionId_fkey` FOREIGN KEY (`promotionId`) REFERENCES `Promotion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Groupe`
--

LOCK TABLES `Groupe` WRITE;
/*!40000 ALTER TABLE `Groupe` DISABLE KEYS */;
INSERT INTO `Groupe` VALUES (1,'G1',2,'2023-05-12 13:17:53.127','2023-05-12 13:18:45.664'),(2,'G2',1,'2023-05-12 13:17:53.127','2023-05-12 13:17:53.127'),(3,'G3',2,'2023-05-12 13:17:53.127','2023-05-12 13:17:53.127'),(4,'G4',2,'2023-05-12 13:17:53.127','2023-05-12 13:17:53.127'),(5,'G5',2,'2023-05-12 13:17:53.127','2023-05-12 13:17:53.127');
/*!40000 ALTER TABLE `Groupe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Matiere`
--

DROP TABLE IF EXISTS `Matiere`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Matiere` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Matiere_name_key` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Matiere`
--

LOCK TABLES `Matiere` WRITE;
/*!40000 ALTER TABLE `Matiere` DISABLE KEYS */;
INSERT INTO `Matiere` VALUES (1,'NestJS','2023-05-12 13:17:53.116','2023-05-12 13:17:53.116'),(2,'ReactJS','2023-05-12 13:17:53.116','2023-05-12 13:17:53.116'),(3,'NodeJS','2023-05-12 13:17:53.116','2023-05-12 13:17:53.116'),(4,'Anglais','2023-05-12 13:17:53.116','2023-05-12 13:17:53.116'),(5,'Communication','2023-05-12 13:17:53.116','2023-05-12 13:17:53.116');
/*!40000 ALTER TABLE `Matiere` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Note`
--

DROP TABLE IF EXISTS `Note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Note` (
  `id` int NOT NULL AUTO_INCREMENT,
  `note` int NOT NULL,
  `eleveId` int NOT NULL,
  `matiereId` int NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Note_matiereId_fkey` (`matiereId`),
  KEY `Note_eleveId_fkey` (`eleveId`),
  CONSTRAINT `Note_eleveId_fkey` FOREIGN KEY (`eleveId`) REFERENCES `Eleve` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Note_matiereId_fkey` FOREIGN KEY (`matiereId`) REFERENCES `Matiere` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Note`
--

LOCK TABLES `Note` WRITE;
/*!40000 ALTER TABLE `Note` DISABLE KEYS */;
INSERT INTO `Note` VALUES (1,14,1,1,'2023-05-12 13:17:53.139','2023-05-12 14:51:33.625'),(2,8,1,5,'2023-05-12 13:17:53.139','2023-05-12 13:17:53.139'),(3,10,2,1,'2023-05-12 13:17:53.139','2023-05-12 13:17:53.139'),(4,14,2,1,'2023-05-12 13:17:53.139','2023-05-12 13:17:53.139'),(5,18,3,1,'2023-05-12 13:17:53.139','2023-05-12 13:17:53.139'),(6,0,3,2,'2023-05-12 13:17:53.139','2023-05-12 13:17:53.139'),(7,4,4,4,'2023-05-12 13:17:53.139','2023-05-12 13:17:53.139'),(8,20,4,3,'2023-05-12 13:17:53.139','2023-05-12 13:17:53.139'),(9,14,5,5,'2023-05-12 13:17:53.139','2023-05-12 13:17:53.139'),(10,2,5,5,'2023-05-12 13:17:53.139','2023-05-12 13:17:53.139'),(11,7,6,5,'2023-05-12 13:17:53.139','2023-05-12 13:17:53.139'),(12,5,6,4,'2023-05-12 13:17:53.139','2023-05-12 13:17:53.139'),(13,9,7,5,'2023-05-12 13:17:53.139','2023-05-12 13:17:53.139'),(14,14,7,3,'2023-05-12 13:17:53.139','2023-05-12 13:17:53.139'),(15,14,8,1,'2023-05-12 13:17:53.139','2023-05-12 13:17:53.139'),(16,18,8,1,'2023-05-12 13:17:53.139','2023-05-12 13:17:53.139'),(17,20,9,3,'2023-05-12 13:17:53.139','2023-05-12 13:17:53.139'),(18,19,9,4,'2023-05-12 13:17:53.139','2023-05-12 13:17:53.139'),(19,4,10,4,'2023-05-12 13:17:53.139','2023-05-12 13:17:53.139'),(20,9,10,5,'2023-05-12 13:17:53.139','2023-05-12 13:17:53.139'),(21,18,1,1,'2023-05-12 14:40:52.817','2023-05-12 14:40:52.817');
/*!40000 ALTER TABLE `Note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Promotion`
--

DROP TABLE IF EXISTS `Promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Promotion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Promotion_name_key` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Promotion`
--

LOCK TABLES `Promotion` WRITE;
/*!40000 ALTER TABLE `Promotion` DISABLE KEYS */;
INSERT INTO `Promotion` VALUES (1,'Dev Manager FullStack','2023-05-12 13:17:53.101','2023-05-12 13:17:53.101'),(2,'Data Ingenering','2023-05-12 13:17:53.101','2023-05-12 13:17:53.101'),(3,'Origine du droit','2023-05-12 15:01:54.385','2023-05-12 15:01:54.385');
/*!40000 ALTER TABLE `Promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Salle`
--

DROP TABLE IF EXISTS `Salle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Salle` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Salle_name_key` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Salle`
--

LOCK TABLES `Salle` WRITE;
/*!40000 ALTER TABLE `Salle` DISABLE KEYS */;
INSERT INTO `Salle` VALUES (1,'B001','2023-05-12 13:17:53.120','2023-05-12 13:17:53.120'),(2,'B002','2023-05-12 13:17:53.120','2023-05-12 13:17:53.120'),(3,'B003','2023-05-12 13:17:53.120','2023-05-12 13:17:53.120'),(4,'B004','2023-05-12 13:17:53.120','2023-05-12 13:17:53.120'),(5,'B005','2023-05-12 13:17:53.120','2023-05-12 13:17:53.120'),(6,'B123','2023-05-12 15:21:28.822','2023-05-12 15:21:53.308');
/*!40000 ALTER TABLE `Salle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-14  0:14:39
