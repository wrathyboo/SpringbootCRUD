CREATE DATABASE  IF NOT EXISTS `c2110h2_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `c2110h2_db`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: c2110h2_db
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
                            `id` int NOT NULL AUTO_INCREMENT,
                            `age` int DEFAULT NULL,
                            `name` varchar(255) DEFAULT NULL,
                            PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--


--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
                            `stu_id` int NOT NULL AUTO_INCREMENT,
                            `address` varchar(255) DEFAULT NULL,
                            `birthday` datetime(6) DEFAULT NULL,
                            `class_name` varchar(255) DEFAULT NULL,
                            `full_name` varchar(255) DEFAULT NULL,
                            `gender` bit(1) DEFAULT NULL,
                            `updated_at` datetime(6) DEFAULT NULL,
                            `created_at` datetime(6) DEFAULT NULL,
                            PRIMARY KEY (`stu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

INSERT INTO `students` VALUES (3,'Nho Quan - Ninh Bình','2002-05-07 00:00:00.000000','C2110H2','Nguyễn Đức Anh',_binary '',NULL,'2023-06-10 11:36:15.000000'),(4,'Yên Thủy - Hòa Bình','2002-11-25 00:00:00.000000','C2202I1','Lê Hải Yến',_binary '\0',NULL,'2023-06-10 11:36:15.000000'),(5,'Phổ Yên - Thái Nguyên','2002-06-06 00:00:00.000000','C2202I1','Phạm Đức Mạnh',_binary '',NULL,'2023-06-10 11:36:15.000000'),(6,'Ý Yên - Nam Định','2002-10-02 00:00:00.000000','C2110H2','Bùi Tiến Nam',_binary '',NULL,'2023-06-10 11:36:15.000000'),(7,'Sông Công - Thái Nguyên','2023-02-26 00:00:00.000000','C2011H1','Phạm Quốc Anh',_binary '',NULL,'2023-06-10 11:36:15.000000'),(8,'Quảng Ninh',NULL,'C2110H2','Vũ Ngọc Anh Tú',_binary '',NULL,'2023-06-10 11:36:15.000000'),(9,'Quốc Oai - Hà Nội','2023-02-27 00:00:00.000000','C2002M','Phạm Thị Hiền',_binary '\0',NULL,'2023-06-10 11:36:15.000000'),(10,'Quốc Oai - Hà Nội','2023-02-27 00:00:00.000000','C2002M','Phạm Thị Hiền',_binary '\0',NULL,'2023-06-10 11:36:15.000000'),(12,'Quảng Ninh',NULL,'C2110H2','Jennifer Smith',_binary '\0',NULL,'2023-06-10 11:36:15.000000'),(13,'Nho Quan - Ninh Bình','2002-05-07 00:00:00.000000','C2110H5','Nguyễn Van A',_binary '',NULL,NULL),(14,'Nho Quan - Ninh Bình','2002-05-07 00:00:00.000000','C2110H5','Nguyễn Van A',_binary '\0',NULL,NULL),(15,'Nho Quan - Ninh Bình','2002-05-07 00:00:00.000000','C2110H5','Nguyễn Van C',_binary '','2023-06-10 13:30:18.914836',NULL),(16,'Nho Quan - Ninh Bình','2002-05-07 00:00:00.000000','C2110H5','Nguyễn Van 10',_binary '','2023-06-10 13:31:12.146566','2023-06-10 13:31:12.146566');
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-10 13:43:32
