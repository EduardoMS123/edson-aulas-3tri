CREATE DATABASE  IF NOT EXISTS `db_livraria` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_livraria`;
-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: localhost    Database: db_livraria
-- ------------------------------------------------------
-- Server version	8.0.33-0ubuntu0.20.04.2

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
-- Table structure for table `Tb_CLIENTE`
--

DROP TABLE IF EXISTS `Tb_CLIENTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tb_CLIENTE` (
  `cod_cliente` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `telefone_1` varchar(14) DEFAULT NULL,
  `telefone_2` varchar(14) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `rua` varchar(50) NOT NULL,
  `bairro` varchar(20) NOT NULL,
  `cidade` varchar(15) NOT NULL,
  `estado` varchar(15) NOT NULL,
  PRIMARY KEY (`cod_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tb_CLIENTE`
--

LOCK TABLES `Tb_CLIENTE` WRITE;
/*!40000 ALTER TABLE `Tb_CLIENTE` DISABLE KEYS */;
INSERT INTO `Tb_CLIENTE` VALUES (1,'Ana Paula Silva','43999999001','43988880001','anasilva@email.com','Rua das flores 56','Centro','Londrina','PR'),(2,'Carlos Eduardo','43999999221','43988770001','carlinhos123edu@email.com','Av. Paulista 200','Bela Vista','São Paulo','SP'),(3,'Mariano Santos Souza','43999999001',NULL,'marimariano098@email.com','Av. Afrânio Peixoto 124','Lobato','Salvador','BH'),(4,'Mirian Carvalho Santos','43999999001','43988880001','mirian.carvalho@email.com','Rua das Águas 900','Centro','Maringá','PR'),(5,'Júlia Maria Jundiair','43999999001',NULL,'Jujudopix@email.com','Rua piriri pororó','Mulho','Rio Branco','AC');
/*!40000 ALTER TABLE `Tb_CLIENTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tb_EDITORA`
--

DROP TABLE IF EXISTS `Tb_EDITORA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tb_EDITORA` (
  `cod_editora` int NOT NULL AUTO_INCREMENT,
  `telefone1` varchar(14) NOT NULL,
  `telefone2` varchar(14) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `nome_contato` varchar(50) NOT NULL,
  PRIMARY KEY (`cod_editora`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tb_EDITORA`
--

LOCK TABLES `Tb_EDITORA` WRITE;
/*!40000 ALTER TABLE `Tb_EDITORA` DISABLE KEYS */;
/*!40000 ALTER TABLE `Tb_EDITORA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tb_ESTOQUE`
--

DROP TABLE IF EXISTS `Tb_ESTOQUE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tb_ESTOQUE` (
  `cod_livro` int NOT NULL,
  `qtb_estoque` int NOT NULL,
  PRIMARY KEY (`cod_livro`),
  CONSTRAINT `fk_estoque_livro` FOREIGN KEY (`cod_livro`) REFERENCES `tb_livro` (`cod_livro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tb_ESTOQUE`
--

LOCK TABLES `Tb_ESTOQUE` WRITE;
/*!40000 ALTER TABLE `Tb_ESTOQUE` DISABLE KEYS */;
/*!40000 ALTER TABLE `Tb_ESTOQUE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tb_ITEM_PEDIDO`
--

DROP TABLE IF EXISTS `Tb_ITEM_PEDIDO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tb_ITEM_PEDIDO` (
  `cod_pedido` int NOT NULL,
  `cod_livro` int NOT NULL,
  `tb_pedido` int NOT NULL,
  `valor_item` decimal(10,2) NOT NULL,
  PRIMARY KEY (`cod_pedido`,`cod_livro`),
  KEY `fk_item_livro` (`cod_livro`),
  CONSTRAINT `fk_item_livro` FOREIGN KEY (`cod_livro`) REFERENCES `tb_livro` (`cod_livro`),
  CONSTRAINT `fk_item_pedido` FOREIGN KEY (`cod_pedido`) REFERENCES `tb_pedido` (`cod_pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tb_ITEM_PEDIDO`
--

LOCK TABLES `Tb_ITEM_PEDIDO` WRITE;
/*!40000 ALTER TABLE `Tb_ITEM_PEDIDO` DISABLE KEYS */;
/*!40000 ALTER TABLE `Tb_ITEM_PEDIDO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tb_PESSOA_FISICA`
--

DROP TABLE IF EXISTS `Tb_PESSOA_FISICA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tb_PESSOA_FISICA` (
  `cod_cliente` int NOT NULL,
  `CPF` varchar(15) NOT NULL,
  `rg` varchar(15) NOT NULL,
  PRIMARY KEY (`cod_cliente`),
  CONSTRAINT `fk_pf_cliente` FOREIGN KEY (`cod_cliente`) REFERENCES `Tb_CLIENTE` (`cod_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tb_PESSOA_FISICA`
--

LOCK TABLES `Tb_PESSOA_FISICA` WRITE;
/*!40000 ALTER TABLE `Tb_PESSOA_FISICA` DISABLE KEYS */;
/*!40000 ALTER TABLE `Tb_PESSOA_FISICA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tb_PESSOA_JURIDICA`
--

DROP TABLE IF EXISTS `Tb_PESSOA_JURIDICA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tb_PESSOA_JURIDICA` (
  `cod_cliente` int NOT NULL,
  `cnpj` varchar(20) NOT NULL,
  `ie` varchar(20) NOT NULL,
  PRIMARY KEY (`cod_cliente`),
  CONSTRAINT `fk_pj_cliente` FOREIGN KEY (`cod_cliente`) REFERENCES `Tb_CLIENTE` (`cod_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tb_PESSOA_JURIDICA`
--

LOCK TABLES `Tb_PESSOA_JURIDICA` WRITE;
/*!40000 ALTER TABLE `Tb_PESSOA_JURIDICA` DISABLE KEYS */;
/*!40000 ALTER TABLE `Tb_PESSOA_JURIDICA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_livro`
--

DROP TABLE IF EXISTS `tb_livro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_livro` (
  `cod_livro` int NOT NULL AUTO_INCREMENT,
  `valor` decimal(10,2) NOT NULL,
  `ano_publicacao` int NOT NULL,
  `categoria` varchar(25) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `isbn` varchar(25) NOT NULL,
  `autor` varchar(25) NOT NULL,
  `cod_editora` int NOT NULL,
  PRIMARY KEY (`cod_livro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_livro`
--

LOCK TABLES `tb_livro` WRITE;
/*!40000 ALTER TABLE `tb_livro` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_livro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pedido`
--

DROP TABLE IF EXISTS `tb_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_pedido` (
  `cod_pedido` int NOT NULL AUTO_INCREMENT,
  `data` date NOT NULL,
  `valor_pedido` decimal(10,2) NOT NULL,
  `cod_cliente` int NOT NULL,
  PRIMARY KEY (`cod_pedido`),
  KEY `fk_pedido_cliente` (`cod_cliente`),
  CONSTRAINT `fk_pedido_cliente` FOREIGN KEY (`cod_cliente`) REFERENCES `Tb_CLIENTE` (`cod_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pedido`
--

LOCK TABLES `tb_pedido` WRITE;
/*!40000 ALTER TABLE `tb_pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_pedido` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-03 11:50:23
