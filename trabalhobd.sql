CREATE DATABASE  IF NOT EXISTS `trabalhobd` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `trabalhobd`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: trabalhobd
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `cadastro`
--

DROP TABLE IF EXISTS `cadastro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cadastro` (
  `id_cadastro` int NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL,
  PRIMARY KEY (`id_cadastro`),
  CONSTRAINT `cadastro_ibfk_1` FOREIGN KEY (`id_cadastro`) REFERENCES `crianca` (`id_crianca`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cadastro`
--

LOCK TABLES `cadastro` WRITE;
/*!40000 ALTER TABLE `cadastro` DISABLE KEYS */;
INSERT INTO `cadastro` VALUES (11,'msp.maria@gmail.com','*********'),(12,'andrey@gmail.com:playgame1','********'),(13,'Em1.jone2@outlook.com','**********'),(14,'paul.wili42@gmail.com','*******'),(15,'santos.pedr0@hotmail.com','**********'),(16,'sof.ferrari541@outlook.com','*******');
/*!40000 ALTER TABLE `cadastro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carta`
--

DROP TABLE IF EXISTS `carta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carta` (
  `id_carta` int NOT NULL AUTO_INCREMENT,
  `descricao_presente` varchar(1000) NOT NULL,
  PRIMARY KEY (`id_carta`),
  CONSTRAINT `carta_ibfk_1` FOREIGN KEY (`id_carta`) REFERENCES `cadastro` (`id_cadastro`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carta`
--

LOCK TABLES `carta` WRITE;
/*!40000 ALTER TABLE `carta` DISABLE KEYS */;
INSERT INTO `carta` VALUES (11,'Papai Noel meu sonho é ganhar uma LOL Surprise '),(12,'Tenho 8 anos, queria muito ganhar um trenini'),(13,'Querido Papai Noel boa noite queria ganhar uma bicicleta '),(14,'Oi eu sou o Paul tenho 5 anos sou um menino muito bonzinho. Gostaria de ganhar um carrinho de controle remoto'),(15,'Querido Papai Noel nesse natal eu me comportei muito então queria ganhar uma motinha para andar com meus amigos '),(16,'Querido Papai tenho um grande sonho de ser uma Pizzaiola pra isso eu queria ganhar um play-doh de fazer pizza');
/*!40000 ALTER TABLE `carta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crianca`
--

DROP TABLE IF EXISTS `crianca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crianca` (
  `id_crianca` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `sobrenome` varchar(100) NOT NULL,
  `idade` int NOT NULL,
  `ende_pais` varchar(50) NOT NULL,
  `ende_estado` varchar(50) NOT NULL,
  `ende_municipio` varchar(50) NOT NULL,
  `ende_bairro` varchar(50) NOT NULL,
  `ende_rua` varchar(50) NOT NULL,
  `ende_lougrador` int NOT NULL,
  PRIMARY KEY (`id_crianca`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crianca`
--

LOCK TABLES `crianca` WRITE;
/*!40000 ALTER TABLE `crianca` DISABLE KEYS */;
INSERT INTO `crianca` VALUES (11,'Maria','Silva Pereira',9,'Brasil ','Rio Grande do Sul','Viamão','Esmeralda','Onze de Junho',3220),(12,'Andrey ','Petrov Popova',8,'Russia','Altai','Barnaul','Kalinin','Rua Lenina',6580),(13,'Emily','Wilson Jones',8,'EUA','Colorado','Boulder','Gunbarrel','Niwot Road',3269),(14,'Paul','Clark Wiliams',5,'EUA','Arizona','Eloy','Palo Verde','Iris Avenue',2209),(15,'Pedro','Santos de Lima',6,'Brasil','Minas Gerais','Serra da Saudade','Vila Esperança','Rua São José',9872),(16,'Sofia','Ferrari Marinho',7,'Itália','Abruzos','Chieta','Via Roma','Via Roma',3692);
/*!40000 ALTER TABLE `crianca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `presente`
--

DROP TABLE IF EXISTS `presente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `presente` (
  `id_presente` int NOT NULL AUTO_INCREMENT,
  `pedido` varchar(50) NOT NULL,
  `quantidade` int NOT NULL,
  `data_entregue` datetime NOT NULL,
  `hora_entregue` double NOT NULL,
  PRIMARY KEY (`id_presente`),
  CONSTRAINT `presente_ibfk_1` FOREIGN KEY (`id_presente`) REFERENCES `carta` (`id_carta`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `presente`
--

LOCK TABLES `presente` WRITE;
/*!40000 ALTER TABLE `presente` DISABLE KEYS */;
INSERT INTO `presente` VALUES (11,'LOL Surprise',3,'2025-12-24 00:00:00',5.47),(12,'Trenini',1,'2025-12-24 00:00:00',2.29),(13,'Bicicleta',1,'2025-12-24 00:00:00',4.38),(14,'Carrinho de controle remoto',1,'2025-12-24 00:00:00',4.5),(15,'Motinha eletrica',1,'2025-12-24 00:00:00',5.2),(16,'Play-doh Kitchen',1,'2025-12-24 00:00:00',3.1);
/*!40000 ALTER TABLE `presente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-03  0:12:57
