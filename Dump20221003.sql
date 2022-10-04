CREATE DATABASE  IF NOT EXISTS `bssventas` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bssventas`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: bssventas
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
-- Table structure for table `abono_proveedor`
--

DROP TABLE IF EXISTS `abono_proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abono_proveedor` (
  `idabono` int NOT NULL AUTO_INCREMENT,
  `idcuenta` int DEFAULT NULL,
  `abono` decimal(12,2) DEFAULT NULL,
  `observacion` varchar(60) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idabono`),
  KEY `fk_abono` (`idcuenta`),
  CONSTRAINT `fk_abono` FOREIGN KEY (`idcuenta`) REFERENCES `cuenta_proveedor` (`idcuenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abono_proveedor`
--

LOCK TABLES `abono_proveedor` WRITE;
/*!40000 ALTER TABLE `abono_proveedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `abono_proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ajuste`
--

DROP TABLE IF EXISTS `ajuste`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ajuste` (
  `id` int NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ajuste`
--

LOCK TABLES `ajuste` WRITE;
/*!40000 ALTER TABLE `ajuste` DISABLE KEYS */;
INSERT INTO `ajuste` VALUES (1,'BssVentas','Punto de ventas');
/*!40000 ALTER TABLE `ajuste` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `idcliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `telefono` int DEFAULT NULL,
  `direccion` varchar(60) DEFAULT NULL,
  `sexo` varchar(15) DEFAULT NULL,
  `nit` varchar(16) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idcliente`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Diego Abel','Péres Gomez',8080808,'90909098','Hombre','CF','Activo'),(2,'Melany Aide','Péres Gomez',88976789,'89452343','Mujer','CF','Activo'),(4,'oscar','de leon',2323,'2323','Hombre','CF','Activo'),(5,'Fernando Alonso','Gomez García',52357823,'San Francisco el Alto','Hombre','89gsdg','Activo'),(6,'jjhjkhkljh','hjjhkjh',98088889,'88998789','Hombre','8890vdv','Activo'),(7,'Oscar Guillermo','Gomez Juarez',12345678,'989889','Hombre','r80324\'2','Activo'),(8,'Emilio ','García',89646,'54039','Hombre','grgjo','Activo'),(9,'Hercules','Gomez',543534,'555','Hombre','553453','Activo'),(10,'Fernando','Ramos',57859,'3957','Hombre','795','Activo'),(11,'Alejandro','Perez',49544,'5345','Hombre','5iu54','Activo'),(14,'carlos','Slim',78623590,'53985739','Hombre','gh39','Activo'),(15,'Oscar','Gome',35353254,'Xela','Hombre','5345325235','Activo');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colocacion`
--

DROP TABLE IF EXISTS `colocacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colocacion` (
  `idColocacion` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `estado` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`idColocacion`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colocacion`
--

LOCK TABLES `colocacion` WRITE;
/*!40000 ALTER TABLE `colocacion` DISABLE KEYS */;
INSERT INTO `colocacion` VALUES (1,'Sector 1 izquierdo','Activo'),(2,'Sector 2 derecho','Activo'),(3,'sector 10 derecho','Activo'),(4,'sector 20 derecha','Activo');
/*!40000 ALTER TABLE `colocacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuenta_proveedor`
--

DROP TABLE IF EXISTS `cuenta_proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuenta_proveedor` (
  `idcuenta` int NOT NULL AUTO_INCREMENT,
  `idproveedor` int DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `total` decimal(12,2) DEFAULT NULL,
  `total_abono` decimal(12,2) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idcuenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuenta_proveedor`
--

LOCK TABLES `cuenta_proveedor` WRITE;
/*!40000 ALTER TABLE `cuenta_proveedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `cuenta_proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_factura`
--

DROP TABLE IF EXISTS `detalle_factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_factura` (
  `iddetalle` int NOT NULL AUTO_INCREMENT,
  `id_factura` int DEFAULT NULL,
  `id_producto` int DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `precio` decimal(8,2) DEFAULT NULL,
  `subtotal` decimal(8,2) DEFAULT NULL,
  `idlote` decimal(16,0) DEFAULT NULL,
  PRIMARY KEY (`iddetalle`),
  KEY `fk_producto_idx` (`id_producto`),
  KEY `fk_factura_idx` (`id_factura`),
  CONSTRAINT `fk_factura` FOREIGN KEY (`id_factura`) REFERENCES `factura` (`idfactura`),
  CONSTRAINT `fk_producto` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`idproducto`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_factura`
--

LOCK TABLES `detalle_factura` WRITE;
/*!40000 ALTER TABLE `detalle_factura` DISABLE KEYS */;
INSERT INTO `detalle_factura` VALUES (3,1,2,5,55.00,275.00,NULL),(4,1,2,5,55.00,275.00,NULL),(6,1,2,3,55.00,165.00,NULL),(7,2,2,3,55.00,165.00,5),(8,2,2,3,55.00,165.00,5),(9,3,40,1,30.00,30.00,10),(10,3,2,1,40.00,40.00,12),(11,4,34,1,110.00,110.00,6),(12,4,84524931,1,50.00,50.00,18),(13,5,34,1,110.00,110.00,6),(14,5,84524930,1,50.00,50.00,5),(15,6,40,1,30.00,30.00,10),(16,6,2,1,40.00,40.00,12),(17,7,84524930,1,50.00,50.00,5),(18,7,34,1,95.00,95.00,6),(19,7,2,1,40.00,40.00,12),(20,7,40,1,18.00,18.00,10),(21,7,84524931,1,40.00,40.00,18),(22,8,84524931,1,50.00,50.00,18),(23,8,40,1,30.00,30.00,10),(24,9,40,1,30.00,30.00,10),(25,10,40,1,30.00,30.00,10),(26,11,2,1,40.00,40.00,12),(27,12,2,1,40.00,40.00,12),(28,13,2,1,40.00,40.00,12),(29,13,40,2,30.00,60.00,10),(30,13,84524930,1,50.00,50.00,5),(31,13,34,1,110.00,110.00,6),(32,13,84524931,1,50.00,50.00,18),(33,14,40,1,30.00,30.00,10),(34,14,34,1,110.00,110.00,6),(35,15,2,1,40.00,40.00,12),(36,16,2,1,40.00,40.00,12),(37,16,34,1,110.00,110.00,6),(38,17,40,1,30.00,30.00,10),(39,18,34,1,110.00,110.00,6),(40,18,2,1,40.00,40.00,12),(41,18,40,1,30.00,30.00,10),(42,19,84524930,1,50.00,50.00,5),(43,19,34,1,110.00,110.00,6),(44,20,34,1,110.00,110.00,6),(45,21,2,1,40.00,40.00,12),(46,21,34,1,110.00,110.00,6),(47,22,40,1,30.00,30.00,10),(48,22,34,1,110.00,110.00,6),(49,23,40,2,30.00,60.00,10),(50,24,34,1,110.00,110.00,6),(51,24,40,1,30.00,30.00,10),(52,25,84524931,1,50.00,50.00,18),(53,25,40,1,30.00,30.00,10),(54,26,34,1,110.00,110.00,6),(55,26,34,1,110.00,110.00,6),(56,26,84524931,1,50.00,50.00,18),(57,28,34,1,110.00,110.00,6),(58,28,84524930,1,50.00,50.00,5),(59,29,84524930,1,50.00,50.00,5),(60,30,34,1,110.00,110.00,6),(61,31,40,1,30.00,30.00,10),(62,32,84524930,2,50.00,100.00,5),(63,33,40,1,30.00,30.00,10),(64,34,84524930,1,50.00,50.00,5),(65,35,40,1,30.00,30.00,10),(66,36,34,1,110.00,110.00,6),(67,37,34,1,110.00,110.00,6),(68,38,34,1,110.00,110.00,6),(69,39,40,1,30.00,30.00,10),(70,40,40,1,30.00,30.00,10),(71,41,40,1,30.00,30.00,10),(72,42,84524930,1,50.00,50.00,5),(73,42,34,1,110.00,110.00,6),(74,42,84524930,1,50.00,50.00,5),(75,42,34,6,110.00,660.00,6),(76,44,40,1,30.00,30.00,10),(77,45,34,2,110.00,220.00,6),(78,46,40,1,30.00,30.00,10),(79,47,40,1,30.00,30.00,10),(80,48,2,1,130.00,130.00,26),(81,49,40,1,30.00,30.00,10),(82,50,2,1,130.00,130.00,26),(83,51,84524931,1,50.00,50.00,18),(84,52,40,1,30.00,30.00,10),(85,52,2,1,130.00,130.00,26),(86,52,40,1,30.00,30.00,10),(87,52,2,2,130.00,260.00,26),(88,54,84524932,1,90.00,90.00,27),(89,54,84524933,1,88.00,88.00,29),(90,55,84524931,1,50.00,50.00,18),(91,55,2,1,130.00,130.00,26),(92,55,40,1,30.00,30.00,10),(93,55,34,1,110.00,110.00,6),(94,55,1278471294,1,7.00,7.00,32),(95,56,40,1,30.00,30.00,10),(96,56,2,1,130.00,130.00,26),(97,57,84524931,1,50.00,50.00,18),(98,58,84524931,1,50.00,50.00,18),(99,58,40,1,30.00,30.00,10),(100,58,2,1,130.00,130.00,26),(101,60,2,1,9.00,9.00,33),(102,61,2,1,9.00,9.00,33),(103,62,34,1,110.00,110.00,6),(104,63,2,1,130.00,130.00,26),(105,64,2,1,130.00,130.00,26),(106,65,2,1,9.00,9.00,33),(107,66,34,1,110.00,110.00,6),(108,67,2,1,130.00,130.00,26),(109,68,2,1,130.00,130.00,26),(110,69,2,1,130.00,130.00,26),(111,70,2,1,9.00,9.00,33),(112,71,40,1,30.00,30.00,10),(113,72,2,1,9.00,9.00,33),(114,73,2,1,9.00,9.00,33),(115,74,2,1,9.00,9.00,33),(116,75,2,1,9.00,9.00,33),(117,76,2,1,9.00,9.00,33),(118,77,2,1,9.00,9.00,33),(119,78,2,1,9.00,9.00,33),(120,79,2,1,9.00,9.00,33),(121,80,2,1,9.00,9.00,33),(122,81,2,1,9.00,9.00,33),(123,82,2,1,9.00,9.00,33),(124,83,2,1,9.00,9.00,33),(125,84,2,1,9.00,9.00,33),(126,85,2,1,9.00,9.00,33),(127,86,2,1,9.00,9.00,33),(128,87,2,1,9.00,9.00,33),(129,88,2,1,9.00,9.00,33),(130,89,2,1,9.00,9.00,33),(131,90,2,1,9.00,9.00,33),(132,91,2,1,9.00,9.00,33),(133,92,2,1,9.00,9.00,33),(134,93,2,1,9.00,9.00,33),(135,94,2,2,130.00,260.00,26),(136,95,2,1,9.00,9.00,33),(137,96,2,1,9.00,9.00,33),(138,97,2,1,9.00,9.00,33),(139,98,2,1,9.00,9.00,33),(140,99,2,1,9.00,9.00,33);
/*!40000 ALTER TABLE `detalle_factura` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insertar_factura_total` AFTER INSERT ON `detalle_factura` FOR EACH ROW BEGIN
declare subtotales decimal(8,2);
select sum(subtotal) into subtotales from detalle_factura where id_factura=new.id_factura;
update factura set total=subtotales where idfactura=new.id_factura;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `remove_stock` AFTER INSERT ON `detalle_factura` FOR EACH ROW BEGIN
declare restante int;
UPDATE lote 
SET cantidad =cantidad - NEW.cantidad
WHERE idlote = NEW.idlote and idproducto = NEW.id_producto;
select cantidad into restante  from lote where idproducto=new.id_producto and idlote=new.idlote;
if restante <= 0 then
update lote set estado ="No Activo" where idproducto=new.id_producto and idlote=new.idlote;
end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `remove_stock_bu` BEFORE UPDATE ON `detalle_factura` FOR EACH ROW begin
update lote set cantidad=cantidad + old.cantidad where idproducto=old.id_producto and idlote=new.idlote;
if old.cantidad >0 then
update lote set estado="Activo" where idproducto =old.id_producto and idlote=old.idlote;
end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `actualizar_factura_au` AFTER UPDATE ON `detalle_factura` FOR EACH ROW begin 
declare subtotales decimal(8,2);
select sum(subtotal) into subtotales from detalle_factura where id_factura =old.id_factura;
update factura set total=subtotales where idfactura =old.id_factura;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `remove_stock_au` AFTER UPDATE ON `detalle_factura` FOR EACH ROW begin
declare restante int;
update lote set cantidad= cantidad - new.cantidad where idproducto=new.id_producto and idlote=new.idlote;

select cantidad into restante  from lote where idproducto=new.id_producto and idlote=new.idlote;
if restante <=0 then
update lote set estado ="No Activo" where idproducto=new.id_producto and idlote=new.idlote;
end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `delete_factura_bd` BEFORE DELETE ON `detalle_factura` FOR EACH ROW begin
declare subtotales decimal(8,2);
select old.subtotal into subtotales from detalle_factura where iddetalle=old.iddetalle;
update factura set total=total-subtotales where idfactura=old.id_factura;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `remove_stock_bd` BEFORE DELETE ON `detalle_factura` FOR EACH ROW begin

update lote  set cantidad=cantidad + old.cantidad where idproducto=old.id_producto and idlote=old.idlote;
if old.cantidad >0 then
update lote set estado="Activo" where idproducto =old.id_producto and idlote=old.idlote;
end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado` (
  `idempleado` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `dpi` varchar(13) DEFAULT NULL,
  `telefono` int DEFAULT NULL,
  `estado` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`idempleado`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,'Julio Cesar','Gomez','San Francisco el alto','154232',12345,'Activo'),(2,'Jose ','Hernández','San Cristobal','5454253425532',23534253,'Activo');
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `removeusuario_au` AFTER UPDATE ON `empleado` FOR EACH ROW begin
 if new.estado = 'No Activo' then
 delete  from usuario where idempleado =new.idempleado;
 end if;
 end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `factura`
--

DROP TABLE IF EXISTS `factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `factura` (
  `idfactura` int NOT NULL AUTO_INCREMENT,
  `idcliente` int DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `motivo_anulacion` varchar(45) DEFAULT NULL,
  `total` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`idfactura`),
  KEY `fk_clilente_idx` (`idcliente`),
  CONSTRAINT `fk_clilente` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`idcliente`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura`
--

LOCK TABLES `factura` WRITE;
/*!40000 ALTER TABLE `factura` DISABLE KEYS */;
INSERT INTO `factura` VALUES (1,1,'2021-05-28 11:06:26','Vendido',NULL,715.00),(2,1,'2021-06-23 11:06:26','Vendido',NULL,330.00),(3,1,'2021-06-25 22:59:56','Vendido',NULL,70.00),(4,1,'2021-06-25 23:01:41','Vendido',NULL,160.00),(5,1,'2021-06-25 23:01:58','Vendido',NULL,160.00),(6,1,'2021-06-25 23:04:34','Vendido',NULL,70.00),(7,1,'2021-06-26 17:21:02','Vendido',NULL,243.00),(8,1,'2021-06-27 00:00:02','Vendido',NULL,80.00),(9,1,'2021-06-27 00:02:17','Vendido',NULL,30.00),(10,1,'2021-06-27 00:05:18','Vendido',NULL,30.00),(11,1,'2021-06-27 00:07:13','Vendido',NULL,40.00),(12,1,'2021-06-27 00:08:01','Vendido',NULL,40.00),(13,1,'2021-06-27 00:14:19','Vendido',NULL,310.00),(14,1,'2021-06-28 09:53:10','Vendido',NULL,140.00),(15,1,'2021-06-28 10:13:10','Vendido',NULL,40.00),(16,1,'2021-06-28 10:35:02','Vendido',NULL,150.00),(17,1,'2021-06-28 10:35:27','Vendido',NULL,30.00),(18,1,'2021-06-28 10:38:08','Vendido',NULL,180.00),(19,1,'2021-06-28 10:43:33','Vendido',NULL,160.00),(20,1,'2021-06-28 10:43:55','Vendido',NULL,110.00),(21,1,'2021-06-28 10:46:06','Vendido',NULL,150.00),(22,1,'2021-06-28 10:51:25','Vendido',NULL,140.00),(23,1,'2021-06-28 10:53:23','Vendido',NULL,60.00),(24,1,'2021-06-28 10:54:42','Vendido',NULL,140.00),(25,1,'2021-06-28 10:54:58','Vendido',NULL,80.00),(26,1,'2021-06-28 10:58:53','Vendido',NULL,270.00),(27,1,'2021-06-28 10:59:01','Vendido',NULL,NULL),(28,1,'2021-06-28 10:59:10','Vendido',NULL,160.00),(29,1,'2021-06-28 11:01:56','Vendido',NULL,50.00),(30,1,'2021-06-28 11:08:11','Vendido',NULL,110.00),(31,1,'2021-06-28 11:18:29','Vendido',NULL,30.00),(32,1,'2021-06-28 16:00:33','Vendido',NULL,100.00),(33,1,'2021-06-28 16:14:59','Vendido',NULL,30.00),(34,1,'2021-06-28 16:15:51','Vendido',NULL,50.00),(35,1,'2021-06-28 16:16:32','Vendido',NULL,30.00),(36,1,'2021-06-28 16:21:20','Vendido',NULL,110.00),(37,1,'2021-06-28 16:25:20','Vendido',NULL,110.00),(38,1,'2021-06-28 16:25:45','Vendido',NULL,110.00),(39,1,'2021-06-28 16:28:16','Vendido',NULL,30.00),(40,1,'2021-06-28 16:29:41','Vendido',NULL,30.00),(41,1,'2021-06-28 16:36:59','Vendido',NULL,30.00),(42,1,'2021-06-28 18:55:06','Vendido',NULL,870.00),(43,1,'2021-06-28 19:00:48','Vendido',NULL,NULL),(44,1,'2021-06-28 19:01:20','Vendido',NULL,30.00),(45,1,'2021-06-28 19:03:35','Vendido',NULL,220.00),(46,1,'2021-06-28 21:14:17','Vendido',NULL,30.00),(47,1,'2021-06-28 21:16:14','Vendido',NULL,30.00),(48,1,'2021-06-28 21:19:08','Vendido',NULL,130.00),(49,1,'2021-06-28 21:20:45','Vendido',NULL,30.00),(50,1,'2021-06-28 21:23:00','Vendido',NULL,130.00),(51,1,'2021-06-28 21:25:14','Vendido',NULL,50.00),(52,1,'2021-06-28 22:04:06','Vendido',NULL,450.00),(53,1,'2021-06-28 22:04:24','Vendido',NULL,NULL),(54,4,'2021-06-29 21:33:14','Vendido',NULL,178.00),(55,1,'2021-08-05 16:07:29','Vendido',NULL,327.00),(56,1,'2022-09-05 18:09:14','Vendido',NULL,160.00),(57,1,'2022-09-05 18:40:04','Vendido',NULL,50.00),(58,1,'2022-09-12 23:31:53','Vendido',NULL,210.00),(59,1,'2022-10-01 19:11:19','Vendido','',NULL),(60,1,'2022-10-01 19:21:20','Vendido','',9.00),(61,1,'2022-10-01 19:22:20','Vendido','',9.00),(62,1,'2022-10-01 19:22:29','Vendido','',110.00),(63,1,'2022-10-02 17:37:56','Vendido','',130.00),(64,1,'2022-10-02 17:39:15','Vendido','',130.00),(65,1,'2022-10-03 00:01:53','Vendido','',9.00),(66,1,'2022-10-03 00:04:44','Vendido','',110.00),(67,1,'2022-10-03 00:06:02','Vendido','',130.00),(68,1,'2022-10-03 00:07:25','Vendido','',130.00),(69,1,'2022-10-03 00:11:46','Vendido','',130.00),(70,1,'2022-10-03 00:11:53','Vendido','',9.00),(71,1,'2022-10-03 00:12:26','Vendido','',30.00),(72,1,'2022-10-03 00:12:44','Vendido','',9.00),(73,1,'2022-10-03 00:13:14','Vendido','',9.00),(74,1,'2022-10-03 11:15:26','Vendido','',9.00),(75,1,'2022-10-03 15:45:12','Vendido','',9.00),(76,1,'2022-10-03 15:46:00','Vendido','',9.00),(77,1,'2022-10-03 15:46:09','Vendido','',9.00),(78,1,'2022-10-03 15:51:40','Vendido','',9.00),(79,1,'2022-10-03 15:52:58','Vendido','',9.00),(80,1,'2022-10-03 15:56:44','Vendido','',9.00),(81,1,'2022-10-03 15:58:30','Vendido','',9.00),(82,1,'2022-10-03 15:58:50','Vendido','',9.00),(83,1,'2022-10-03 15:59:13','Vendido','',9.00),(84,1,'2022-10-03 16:10:59','Vendido','',9.00),(85,1,'2022-10-03 16:15:36','Vendido','',9.00),(86,1,'2022-10-03 16:16:51','Vendido','',9.00),(87,1,'2022-10-03 16:20:52','Vendido','',9.00),(88,1,'2022-10-03 16:23:37','Vendido','',9.00),(89,1,'2022-10-03 16:28:11','Vendido','',9.00),(90,1,'2022-10-03 16:28:46','Vendido','',9.00),(91,1,'2022-10-03 18:27:56','Vendido','',9.00),(92,1,'2022-10-03 18:29:00','Vendido','',9.00),(93,1,'2022-10-03 18:29:21','Vendido','',9.00),(94,1,'2022-10-03 18:55:26','Vendido','',260.00),(95,1,'2022-10-03 19:00:26','Vendido','',9.00),(96,1,'2022-10-03 19:01:30','Vendido','',9.00),(97,1,'2022-10-03 19:07:47','Vendido','',9.00),(98,1,'2022-10-03 19:10:15','Vendido','',9.00),(99,1,'2022-10-03 19:15:05','Vendido','',9.00);
/*!40000 ALTER TABLE `factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lote`
--

DROP TABLE IF EXISTS `lote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lote` (
  `idlote` int NOT NULL AUTO_INCREMENT,
  `idproducto` int DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `precio_compra` decimal(8,2) DEFAULT NULL,
  `precio_mayorista` decimal(8,2) DEFAULT NULL,
  `precio_unidad` decimal(8,2) DEFAULT NULL,
  `estado` varchar(16) DEFAULT NULL,
  `vence` date DEFAULT NULL,
  PRIMARY KEY (`idlote`),
  KEY `fk_loteproducto_idx` (`idproducto`),
  CONSTRAINT `fk_loteproducto` FOREIGN KEY (`idproducto`) REFERENCES `producto` (`idproducto`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lote`
--

LOCK TABLES `lote` WRITE;
/*!40000 ALTER TABLE `lote` DISABLE KEYS */;
INSERT INTO `lote` VALUES (5,84524930,-1,30.00,40.00,50.00,'No Activo',NULL),(6,34,21,90.00,95.00,110.00,'Activo',NULL),(10,40,18,15.00,18.00,30.00,'Activo',NULL),(12,2,0,20.00,25.00,40.00,'No Activo',NULL),(18,84524931,10,20.00,30.00,50.00,'Activo',NULL),(26,2,0,90.00,110.00,130.00,'No Activo','2023-08-02'),(27,84524932,89,90.00,80.00,90.00,'Activo',NULL),(28,7879,3,3.00,4.00,5.00,'Activo',NULL),(29,84524933,6,8.00,9.00,88.00,'Activo',NULL),(30,84524934,8,8.00,8.00,8.00,'Activo',NULL),(31,84524935,9,8.00,8.00,8.00,'Activo',NULL),(32,1278471294,6,7.00,7.00,7.00,'Activo',NULL),(33,2,68,9.00,9.00,9.00,'Activo','2024-02-02'),(34,42412,20,3.00,15.00,20.00,'Activo',NULL),(35,1278471295,23,20.00,30.00,40.00,'Activo',NULL),(37,2,3,4.00,8.00,9.00,'Activo','2023-06-02'),(38,1278471296,10,5.00,10.00,12.00,'Activo','2023-08-02');
/*!40000 ALTER TABLE `lote` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `stock_ai` AFTER INSERT ON `lote` FOR EACH ROW begin
declare cantidadtotal int;
select sum(cantidad) into cantidadtotal from lote where idproducto=new.idproducto and estado="Activo";
update producto set stock = cantidadtotal
where idproducto = new.idproducto;  
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `stock_au` AFTER UPDATE ON `lote` FOR EACH ROW begin
declare cantidadtotal int;
select sum(cantidad) into cantidadtotal from lote where idproducto=new.idproducto and estado="Activo";
update producto set stock = cantidadtotal
where idproducto = new.idproducto;  
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `stock_ad` AFTER DELETE ON `lote` FOR EACH ROW begin
declare cantidadtotal int;
select sum(cantidad) into cantidadtotal from lote where idproducto=old.idproducto and estado="Activo";
update producto set stock = cantidadtotal
where idproducto = old.idproducto;  
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `modulo`
--

DROP TABLE IF EXISTS `modulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modulo` (
  `idmodulo` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idmodulo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modulo`
--

LOCK TABLES `modulo` WRITE;
/*!40000 ALTER TABLE `modulo` DISABLE KEYS */;
INSERT INTO `modulo` VALUES (1,'Cliente'),(2,'Empleado'),(3,'Informe'),(4,'Permiso'),(5,'Producto'),(6,'Venta'),(7,'Ajuste'),(8,'Cuentas'),(9,'Colocacion'),(10,'Proveedor');
/*!40000 ALTER TABLE `modulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `mostrar_producto`
--

DROP TABLE IF EXISTS `mostrar_producto`;
/*!50001 DROP VIEW IF EXISTS `mostrar_producto`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `mostrar_producto` AS SELECT 
 1 AS `idproducto`,
 1 AS `nombre`,
 1 AS `presentacion`,
 1 AS `especificacion`,
 1 AS `stock`,
 1 AS `precio_unidad`,
 1 AS `idlote`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `numero_orden`
--

DROP TABLE IF EXISTS `numero_orden`;
/*!50001 DROP VIEW IF EXISTS `numero_orden`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `numero_orden` AS SELECT 
 1 AS `numero_orden`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `permiso`
--

DROP TABLE IF EXISTS `permiso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permiso` (
  `idpermiso` int NOT NULL AUTO_INCREMENT,
  `idempleado` int DEFAULT NULL,
  `idmodulo` int DEFAULT NULL,
  `permiso` int DEFAULT NULL,
  PRIMARY KEY (`idpermiso`),
  KEY `fk_modulo` (`idmodulo`),
  KEY `fk_permiso` (`idempleado`),
  CONSTRAINT `fk_modulo` FOREIGN KEY (`idmodulo`) REFERENCES `modulo` (`idmodulo`),
  CONSTRAINT `fk_permiso` FOREIGN KEY (`idempleado`) REFERENCES `empleado` (`idempleado`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permiso`
--

LOCK TABLES `permiso` WRITE;
/*!40000 ALTER TABLE `permiso` DISABLE KEYS */;
INSERT INTO `permiso` VALUES (1,1,1,1),(2,1,2,1),(3,1,3,1),(4,1,4,1),(5,1,5,1),(6,1,6,1),(7,1,7,1),(8,1,8,1),(9,1,9,1),(10,1,10,1);
/*!40000 ALTER TABLE `permiso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `idproducto` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) DEFAULT NULL,
  `presentacion` varchar(45) DEFAULT NULL,
  `especificacion` varchar(60) DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `cantidad_maxima` int DEFAULT NULL,
  `cantidad_minima` int DEFAULT NULL,
  `estado` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`idproducto`)
) ENGINE=InnoDB AUTO_INCREMENT=1278471298 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'Bocinas bluetoth ','xcv','100 wts color negro',NULL,5,1,'No Activo'),(2,'Funda de telefono','Samsung s8','silicon color negro',71,20,2,'Activo'),(34,'Funda para telefono','huawei y8','color gris  ',21,30,2,'Activo'),(40,'Cargar para telefono','tipo normal','5 v. color negro',18,20,1,'Activo'),(7879,'jjkhkj','jjkj','kjjkjh',3,23,3,'Activo'),(42412,'cable rojos','mdf','150 mts',20,20,1,'Activo'),(84524930,'Usb tipo c','dxl','color negro, largo de 2mts',NULL,20,2,'Activo'),(84524931,'cargadores ','tipo c','color negro',10,20,1,'Activo'),(84524932,'ñjkjlkj','kjlkjlk','fklhdlkfkl',89,90,3,'Activo'),(84524933,'kjdfkjgj','skjfgkjsdg','gjsdgkjsdjkgg',6,8,8,'Activo'),(84524934,'hgskjhg','hgskjghj','ghdgkjshgkjh',8,8,8,'Activo'),(84524935,'hhjdkhjkg','jhkjh','hjhjkhjh',9,9,9,'Activo'),(1278471294,'hdfkjfgh','jghfjdghj','hgjghjkhge',6,7,7,'Activo'),(1278471295,'mouse','argom tech','color negro',23,23,1,'Activo'),(1278471296,'Penicilina','Inyectable','5 ml',10,8,2,'Activo'),(1278471297,'Panadol','sobres','extra fuerte',NULL,9,2,'Activo');
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `idProveedor` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `telefono` int DEFAULT NULL,
  `compania` varchar(45) DEFAULT NULL,
  `direccion` varchar(60) DEFAULT NULL,
  `estado` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`idProveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'Diego Carlos','Hernandez Hernandez',45450578,'Accesos gt','Quetzaltenango, Guatemala','Activo'),(2,'oscar ','gomez sa',90,'','','Activo'),(3,'ghkjsghks','gjhgjdsghg',8998,'','','Activo'),(4,'ghkjgh','gjhdsgh',111,'dgkjdgggggggggggg','jgskjkgsgjs','Activo'),(5,'jkghskjhgs','hgsgjkahgk',848484,'jgnskgn','gsdgsdddddddddgh','Activo'),(6,'nkjnkj','hjkhkj',888,'jkjkjhjk','jhjkhjkhkj','No Activo'),(7,'carlos','Slim',87879809,'9','789','Activo');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idusuario` int NOT NULL AUTO_INCREMENT,
  `idempleado` int DEFAULT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  `pass` varchar(115) DEFAULT NULL,
  PRIMARY KEY (`idusuario`),
  KEY `fk_usuario` (`idempleado`),
  CONSTRAINT `fk_usuario` FOREIGN KEY (`idempleado`) REFERENCES `empleado` (`idempleado`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,1,'usuario','f8032d5cae3de20fcec887f395ec9a6a');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vista_producto_invetario`
--

DROP TABLE IF EXISTS `vista_producto_invetario`;
/*!50001 DROP VIEW IF EXISTS `vista_producto_invetario`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_producto_invetario` AS SELECT 
 1 AS `idproducto`,
 1 AS `producto`,
 1 AS `stock`,
 1 AS `precio_compra`,
 1 AS `subtotal`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'bssventas'
--

--
-- Dumping routines for database 'bssventas'
--
/*!50003 DROP PROCEDURE IF EXISTS `consulta_producto_vendido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `consulta_producto_vendido`(
in id_fac int , 
in fech1 date,
in fech2 date,
in accion varchar(10))
begin

 DECLARE EXIT HANDLER FOR SQLEXCEPTION
 BEGIN
 SHOW ERRORS LIMIT 1;
RESIGNAL;
 ROLLBACK;
 END; 
 DECLARE EXIT HANDLER FOR SQLWARNING
 BEGIN
 SHOW WARNINGS LIMIT 1;
RESIGNAL;
 ROLLBACK;
 END;
START TRANSACTION;
case accion
when 'hoy' then
select  d.id_producto, sum(d.cantidad) as cantidad_vendida, concat( p.nombre,' ',p.presentacion, ' ',p.especificacion) as nombre
 from  factura f inner join  detalle_factura d on d.id_factura=f.idfactura
 inner join producto p on p.idproducto = d.id_producto
 where date(f.fecha) =curdate()   and f.estado='Vendido' 
 group by d.id_producto order by cantidad_vendida desc;
 

  
 when 'semana' then
 select  d.id_producto, sum(d.cantidad) as cantidad_vendida, concat( p.nombre,' ',p.presentacion, ' ',p.especificacion) as nombre
 from  factura f inner join  detalle_factura d on d.id_factura=f.idfactura
 inner join producto p on p.idproducto = d.id_producto
 where date(f.fecha) >=( curdate()  - interval 7 day)  and f.estado='Vendido' 
 group by d.id_producto order by cantidad_vendida desc;
 
 when 'mes' then
 select  d.id_producto, sum(d.cantidad) as cantidad_vendida, concat( p.nombre,' ',p.presentacion, ' ',p.especificacion) as nombre
 from  factura f inner join  detalle_factura d on d.id_factura=f.idfactura
 inner join producto p on p.idproducto = d.id_producto
 where date(f.fecha) >=( curdate()  - interval 30 day)  and f.estado='Vendido' 
 group by d.id_producto order by cantidad_vendida desc;
 
 when 'rango' then
 select  d.id_producto, sum(d.cantidad) as cantidad_vendida, concat( p.nombre,' ',p.presentacion, ' ',p.especificacion) as nombre
 from  factura f inner join  detalle_factura d on d.id_factura=f.idfactura
 inner join producto p on p.idproducto = d.id_producto
 where date(f.fecha) between fech1 and fech2  and f.estado='Vendido' 
 group by d.id_producto order by cantidad_vendida desc;
 
end case;

commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `consulta_ventas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `consulta_ventas`(
in id_fac int , 
in fech1 date,
in fech2 date,
in accion varchar(10))
begin

 DECLARE EXIT HANDLER FOR SQLEXCEPTION
 BEGIN
 SHOW ERRORS LIMIT 1;
RESIGNAL;
 ROLLBACK;
 END; 
 DECLARE EXIT HANDLER FOR SQLWARNING
 BEGIN
 SHOW WARNINGS LIMIT 1;
RESIGNAL;
 ROLLBACK;
 END;
START TRANSACTION;
case accion
when 'dia'then 
select f.idfactura, f.fecha, concat(c.nombre,' ',c.apellido,' ') as cliente, f.total
from factura f  inner join cliente c on c.idCliente = f.idcliente 
where date(f.fecha) = curdate() and  f.estado ='Vendido' ; 

when 'semana'then 
select f.idfactura, f.fecha, concat(c.nombre,' ',c.apellido,' ') as cliente, f.total
from factura f  inner join cliente c on c.idCliente = f.idcliente 
where date(f.fecha) >= (curdate() - INTERVAL 7 DAY) and f.estado ='Vendido' ; 

when 'mes'then 
select f.idfactura, f.fecha, concat(c.nombre,' ',c.apellido,' ') as cliente, f.total
from factura f  inner join cliente c on c.idCliente = f.idcliente 
where date(f.fecha) >= (curdate() - INTERVAL 30 DAY) and f.estado ='Vendido' ; 

when 'rango' then  
select
  f.idfactura,
        f.fecha,
        concat(c.nombre, ' ',c.apellido, ' ')as cliente,
        f.total
        from  factura f join cliente c on  c.idCliente=f.idcliente
        where
          ((CAST(f.fecha AS DATE) BETWEEN fech1 AND fech2))
        order by f.fecha;
/*/funcional con funcione y vista 
select * from (select @f1:= fech1 p, @f2 := fech2 f)p, ventas_x_rango;*/
/*/select * from  ventas_x_rango;*/

when 'ventaxmes'then 
select sum(total) as total, week(fecha)  as nombre
from factura   
where estado ='Vendido' and fecha >= (curdate()-interval 4 week) group by week(fecha);

when 'ventaxsem'then 
select sum(total) as total, dayname(fecha) as nombre
from factura   
where estado ='Vendido' and fecha >= (curdate()-interval 7 day) group by day(fecha);

when 'ventaxanio'then 
select sum(total) as total, monthname(fecha) as nombre
from factura   
where estado ='Vendido' and fecha >= (curdate()-interval 12 month) group by month(fecha);

when 'ventaxrand'then 
select sum(total) as total, dayname(fecha) as nombre
from factura   
where estado ='Vendido' and fecha between fech1 and fech2 group by day(fecha);

when 'ventaxrans'then 
select sum(total) as total, week(fecha) as nombre
from factura   
where estado ='Vendido' and fecha between fech1 and fech2 group by week(fecha);

when 'ventaxranm'then 
select sum(total) as total, monthname(fecha) as nombre
from factura   
where estado ='Vendido' and fecha between fech1 and fech2 group by month(fecha);


when 'ventas'then 
select f.idfactura, f.fecha, concat(c.nombre,' ',c.apellidos,' ') as cliente, f.total
from factura f  inner join cliente c on c.idCliente = f.idcliente 
where f.estado ='v' ; 

when 'query' then 
select d.iddetalle, d.id_factura, d.id_producto, d.cantidad, d.precio, d.subtotal, d.id_lote from  
detalle_factura d inner join factura f on estado='Vendido' and f.idfactura =d.id_factura where d.id_factura = id_fac ;

when 'grango' then
/**select ventas,compra,(ventas - compra) as ganacia from (select @f1:= fech1 p, @f2 :=fech2 f)p, ganacia_x_rango;*/
 SELECT 
        SUM(d.subtotal) AS ventas,
        SUM((d.cantidad * l.precio_compra)) AS compra,
		(SUM(d.subtotal) - SUM((d.cantidad * l.precio_compra))) as ganancia
    FROM
        factura f
        JOIN detalle_factura d ON f.idfactura = d.id_factura
        join lote l on l.idproducto = d.id_producto
    WHERE
        ((CAST(f.fecha AS DATE) BETWEEN fech1 AND fech2)
            AND (f.estado = 'Vendido'));


when 'gdia' then
/*SELECT ventas,compra,(ventas - compra) as ganacia FROM ganacia_dia;*/
 SELECT 
        SUM(d.subtotal) AS ventas,
        SUM((d.cantidad * l.precio_compra)) AS compra,
        (SUM(d.subtotal) - SUM((d.cantidad * l.precio_compra))) as ganancia
    FROM
        ((factura f
        JOIN detalle_factura d ON ((f.idfactura = d.id_factura)))
        JOIN lote l ON ((  l.idproducto = d.id_producto)))
    WHERE
        ((CAST(f.fecha AS DATE) = CURDATE())
            AND (f.estado = 'Vendido'));
when 'gsemana' then
/*SELECT ventas,compra,(ventas - compra) as ganacia FROM ganancia_semana;*/
 SELECT 
        SUM(d.subtotal) AS ventas,
        SUM((d.cantidad * l.precio_compra)) AS compra,
		(SUM(d.subtotal) - SUM((d.cantidad * l.precio_compra))) as ganancia
    FROM
        ((factura f
        JOIN detalle_factura d ON ((f.idfactura = d.id_factura)))
        JOIN lote l ON ((  l.idproducto = d.id_producto)))
    WHERE
        ((CAST(f.fecha AS DATE) >= (CURDATE() - INTERVAL 7 DAY))
            AND (f.estado = 'Vendido'));

when 'gmes' then
/**SELECT ventas,compra,(ventas - compra) as ganacia FROM ganancia_mes;*/
   SELECT 
        SUM(d.subtotal) AS ventas,
        SUM((d.cantidad * l.precio_compra)) AS compra,
		(SUM(d.subtotal) - SUM((d.cantidad * l.precio_compra))) as ganancia
    FROM
        ((factura f
        JOIN detalle_factura d ON ((f.idfactura = d.id_factura)))
        JOIN lote l ON ((l.idproducto = d.id_producto)))
    WHERE
        ((CAST(f.fecha AS DATE) >= (CURDATE() - INTERVAL 30 DAY))
            AND (f.estado = 'Vendido'));
end case;
commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ingreso_abono` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ingreso_abono`(
in _idabono integer,
in _idcuenta integer,
in _abono decimal(12,2),
in _observacion varchar(60),
in _estado varchar(10),
in accion varchar(10)
)
begin
declare exit handler for sqlexception
begin 
show errors limit 1;
resignal;
rollback;
end;
declare exit handler for sqlwarning
begin 
show warnings limit 1;
resignal;
rollback;
end;
start transaction;
case accion 
when 'new'  then
insert into abono_proveedor(idcuenta, abono,observacion,estado) values(_idcuenta, _abono,_observacion,_estado);
when 'update' then 
update abono_proveedor set idcuenta=_idcuenta, abono=_abono,observacion=_observacion, estado=_estado where
idabono=_idabono;
when 'delete' then
delete from abono_proveedor where idabono=_idabono;
when 'view' then
select *from abono_proveedor;
end case;
commit;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ingreso_ajuste` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ingreso_ajuste`(
in _nombre varchar(100),
in _descripcion varchar(120),
in accion varchar(10)
)
begin
declare exit handler for sqlexception 
begin
show errors limit 1;
resignal;
rollback;
end;
declare exit handler for sqlwarning
begin 
show warnings limit 1;
resignal;
rollback;
end;
start transaction;
case accion 
when 'new' then
insert into ajuste(id,nombre,descripcion)values(1,
_nombre,_descripcion,_direccion,_diasmora,_mora);
when 'update' then
update ajuste set
nombre=_nombre,descripcion=_descripcion
where id =1;
when'view' then
select *from ajuste;
end case;
commit;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ingreso_cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ingreso_cliente`(
in _idcliente int(16),
in _nombre varchar(60),
in _apellido varchar(45), 
in _telefono int(12),
in _direccion varchar(60),
in _sexo varchar(15),
in _nit varchar(16),
in _estado varchar (10),
in accion varchar(10)
)
begin
 DECLARE EXIT HANDLER FOR SQLEXCEPTION
 BEGIN
 SHOW ERRORS LIMIT 1;
RESIGNAL;
 ROLLBACK;
 END; 
 DECLARE EXIT HANDLER FOR SQLWARNING
 BEGIN
 SHOW WARNINGS LIMIT 1;
RESIGNAL;
 ROLLBACK;
 END;
START TRANSACTION;
case accion
when 'new' then  
insert into cliente (idcliente, nombre, apellido, telefono,direccion, sexo,nit, estado)
values (_idcliente, _nombre,_apellido,_telefono,_direccion,_sexo,_nit,_estado);


when 'update' then
update cliente
set nombre=_nombre, apellido=_apellido, telefono= _telefono,direccion=_direccion, 
 sexo=_sexo, nit=_nit, estado=_estado
  where idcliente = _idcliente;

when 'viewone'then
select *from cliente where idcliente = _idcliente;

when 'view' then
select *from cliente;


when 'viewlast' then
select *from cliente order by idcliente desc;

when 'delete'then
delete  from  cliente  where idcliente = _idcliente;
end case;
commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ingreso_colocacion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ingreso_colocacion`(
in _idColocacion int(11),
in _nombre varchar(45),
in _estado varchar(16),
in accion varchar(10)
)
begin
 DECLARE EXIT HANDLER FOR SQLEXCEPTION
 BEGIN
 SHOW ERRORS LIMIT 1;
RESIGNAL;
 ROLLBACK;
 END; 
 DECLARE EXIT HANDLER FOR SQLWARNING
 BEGIN
 SHOW WARNINGS LIMIT 1;
RESIGNAL;
 ROLLBACK;
 END;
START TRANSACTION;
case accion
when 'new' then  
insert into colocacion (idColocacion, nombre,estado)
values (_idColocacion, _nombre,_estado);


when 'update' then
update colocacion
set nombre=_nombre,
estado=_estado
  where idColocacion = _idColocacion;

when 'viewone'then
select *from colocacion where idColocacion = _idColocacion;

when 'viewall' then
select *from colocacion;

when 'viewlast' then
select *from colocacion order by idColocacion desc;

when 'delete'then
update colocacion set estado=_estado where idColocacion = _idColocacion;
end case;
commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ingreso_cuenta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ingreso_cuenta`(
in _idcuenta integer,
in _idproveedor integer,
in _fecha datetime,
in _total decimal(12,2),
in _estado varchar(10),
in accion varchar(10)
)
begin
declare exit handler for sqlexception
begin
show errors limit 1;
resignal;
rollback;
end;
declare exit handler for sqlwarning
begin
show warnings limit 1;
resignal;
rollback;
end;
start transaction;
case accion
when 'new' then
insert into cuenata_proveedor(idproveedor, fecha,total,estado)  values(_idproveedor, _fecha,_total,_estado);
when 'update' then
update cuenta_proveedor set idproveedor=_idproveedor, fecha=_fecha, total=_total, estado=_estado
where idcuenta=_idcuenta;
when 'view' then
select p.nombre, p.apellido, p.direccion, c.* from  cuenta_proveedor c inner join proveedor p
on p.idproveedor =c.idproveedor where estado="Activo";
when 'delete'  then
delete from cuenta_proveedor where idcuenta=_idcuenta;
end case;
commit;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ingreso_detallefactura` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ingreso_detallefactura`(
in _iddetalle int(11),
in _id_factura int(11),
in _id_producto int(11), 
in _cantidad int(11),
in _precio decimal(8,2),
in _idlote int(11), 
in accion varchar(10)
)
begin
declare _cod_fac int;
 DECLARE EXIT HANDLER FOR SQLEXCEPTION
 BEGIN
 SHOW ERRORS LIMIT 1;
RESIGNAL;
 ROLLBACK;
 END; 
 DECLARE EXIT HANDLER FOR SQLWARNING
 BEGIN
 SHOW WARNINGS LIMIT 1;
RESIGNAL;
 ROLLBACK;
 END;
START TRANSACTION;
case accion
when 'new' then  
select max(idfactura) into _cod_fac from factura;
insert into detalle_factura (iddetalle, id_factura, id_producto, cantidad,precio,subtotal,idlote)
values (_iddetalle, _id_factura,_id_producto,_cantidad,_precio,_cantidad * _precio,_idlote);


when 'update' then
update detalle_factura
set id_factura=_id_factura, id_producto=_id_producto, cantidad= _cantidad,precio=_precio, 
subtotal=_cantidad * _precio, idlote=_idlote
  where iddetalle = _iddetalle;

when 'viewone'then
select *from detalle_factura where iddetalle = _iddetalle;

when 'viewall' then
select *from detalle_factura;

when 'delete'then
delete  from  detalle_factura  where iddetalle = _iddetalle;
end case;
commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ingreso_empleado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ingreso_empleado`(
in _idempleado integer,
in _nombre varchar(100),
in _apellido varchar(100),
in _direccion varchar(100),
in _telefono integer(8),
in _dpi varchar(13),
in _estado varchar(10),
in accion varchar(10)
)
begin
declare exit handler for sqlexception
begin
show errors limit 1;
resignal;
rollback;
end;
declare exit handler for sqlwarning
begin
show warnings limit 1;
resignal;
rollback;
end;
start transaction;
case accion
when 'new' then
insert into empleado (nombre,apellido,direccion,telefono,dpi,estado) values(_nombre,_apellido,_direccion,_telefono,_dpi,_estado);
when 'update' then
update empleado set nombre=_nombre, apellido=_apellido, direccion=_direccion, dpi=_dpi, telefono=_telefono, estado=_estado
where idempleado=_idempleado;
when 'delete' then
update usuario  set estado ='No activo' where idempleado=_idempleado;
when 'view' then 
select * from empleado;
end case;
commit;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ingreso_factura` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ingreso_factura`(
in _idfactura int(16),
in _idcliente int(11),
in _motivo_anulacion varchar(45),
in _estado varchar(20),
in accion varchar(10)
)
begin
 DECLARE EXIT HANDLER FOR SQLEXCEPTION
 BEGIN
 SHOW ERRORS LIMIT 1;
RESIGNAL;
 ROLLBACK;
 END; 
 DECLARE EXIT HANDLER FOR SQLWARNING
 BEGIN
 SHOW WARNINGS LIMIT 1;
RESIGNAL;
 ROLLBACK;
 END;
START TRANSACTION;
case accion
when 'new' then  
insert into factura (idfactura, idcliente,fecha,motivo_anulacion,estado)
values (_idfactura,_idcliente,current_timestamp(),_motivo_anulacion,_estado);
select max(idfactura) as idfactura from factura;


when 'update' then
update factura
set idcliente=_idcliente, fecha=current_timestamp(), estado= _estado, motivo_anulacion=_motivo_anulacion
  where idfactura = _idfactura;

when 'viewone'then
select *from factura where idfactura = _idfactura;

when 'viewall' then
select *from factura;

end case;
commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ingreso_lote` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ingreso_lote`(
in _idlote int(16),
in _idproducto int(16),
in _cantidad int(16), 
in _precio_compra decimal(8,2),
in _precio_mayorista decimal(8,2),
in _precio_unidad decimal(8,2),
in _estado varchar(16),
in _vence date,
in accion varchar(10)
)
begin
declare codigoproducto int;
 DECLARE EXIT HANDLER FOR SQLEXCEPTION
 BEGIN
 SHOW ERRORS LIMIT 1;
RESIGNAL;
 ROLLBACK;
 END; 
 DECLARE EXIT HANDLER FOR SQLWARNING
 BEGIN
 SHOW WARNINGS LIMIT 1;
RESIGNAL;
 ROLLBACK;
 END;
START TRANSACTION;
case accion
when 'new' then  
if _idproducto <= 0 then
select max(idproducto) into codigoproducto from producto;
insert into lote (idlote, idproducto, cantidad, precio_compra,precio_mayorista,  precio_unidad, estado,vence)
values (_idlote, codigoproducto,_cantidad,_precio_compra,_precio_mayorista,_precio_unidad, _estado,_vence);
elseif _idproducto > 0 then
insert into lote (idlote, idproducto, cantidad, precio_compra,precio_mayorista, precio_unidad, estado,vence)
values (_idlote, _idproducto,_cantidad,_precio_compra,_precio_mayorista,_precio_unidad, _estado,_vence);

end if; 

when 'update' then
update lote
set idproducto=_idproducto, cantidad=_cantidad, precio_compra= _precio_compra,precio_mayorista=_precio_mayorista, 
 precio_unidad=_precio_unidad, estado=_estado, vence=_vence
  where idlote = _idlote;
  
  when 'add' then
update lote
set  cantidad=cantidad + _cantidad
  where idlote = _idlote and idproducto=_idproducto;

when 'view'then
select concat(p.nombre,' ',p.presentacion,' ',p.especificacion) as nombre, l.*
from lote l inner join producto p on p.idproducto=l.idproducto 
where l.idproducto=_idproducto and l.estado="Activo";

when 'viewall' then
select *from lote;


when 'delete'then
delete  from lote where idlote = _idlote ;
end case;
commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ingreso_modulo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ingreso_modulo`(
in _idmodulo integer,
in _nombre varchar(15),
in accion varchar(10)
)
begin 
declare exit handler for sqlexception
begin 
show  errors limit 1;
resignal;
rollback;
end;
declare exit handler for sqlwarning
begin
show warnings limit 1;
resignal;
rollback;
end;
start transaction;
case accion 
when'new' then
insert into modulo(nombre) values (_nombre);
when 'update' then
update modulo set nombre=_nombre where idmodulo=_idmodulo;
when 'view' then
select *from modulo;
end case;
commit;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ingreso_permiso` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ingreso_permiso`(
in _idpermiso integer,
in _idempleado integer,
in _idmodulo integer,
in _permiso integer,
in accion varchar(10)
)
begin
declare exit handler for sqlexception
begin 
show errors limit 1;
resignal;
rollback;
end;
declare exit handler for sqlwarning
begin
show warnings limit 1;
resignal;
rollback;
end;
start transaction;
case accion
when 'new' then
insert into permiso(idempleado,idmodulo,permiso) values(_idempleado,_idmodulo,_permiso);
when 'update' then
update permiso set permiso=_permiso where idpermiso=_idpermiso and idempleado=_idempleado;
when 'view' then
select p.idpermiso, p.idempleado, p.idmodulo, p.permiso, m.nombre from permiso p 
inner join modulo m on m.idmodulo=p.idmodulo
where idempleado =_idempleado;
when 'delete' then
delete from permiso where idpermiso =_idpermiso;
end case;
commit;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ingreso_producto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ingreso_producto`(
in _idproducto int(16),
in _nombre varchar(60),
in _presentacion varchar(45), 
in _especificacion varchar(60),
in _cantidad_maxima int(11),
in _cantidad_minima int(11),
in _estado varchar(16),
in accion varchar(10)
)
begin
 DECLARE EXIT HANDLER FOR SQLEXCEPTION
 BEGIN
 SHOW ERRORS LIMIT 1;
RESIGNAL;
 ROLLBACK;
 END; 
 DECLARE EXIT HANDLER FOR SQLWARNING
 BEGIN
 SHOW WARNINGS LIMIT 1;
RESIGNAL;
 ROLLBACK;
 END;
START TRANSACTION;
case accion
when 'new' then  
insert into producto (idproducto, nombre, presentacion, especificacion,cantidad_maxima, cantidad_minima,estado)
values (_idproducto, _nombre,_presentacion,_especificacion,_cantidad_maxima,_cantidad_minima,_estado);


when 'update' then
update producto
set nombre=_nombre, presentacion=_presentacion, especificacion= _especificacion,
cantidad_maxima=_cantidad_maxima, cantidad_minima=_cantidad_minima,
estado=_estado
  where idproducto = _idproducto;

when 'viewall'then
select a.*, count(l.idlote) as lote
 from producto a
left join  lote l on l.idproducto= a.idproducto  and l.cantidad > 0
where a.estado = "Activo" group by a.idproducto;

when 'view' then
select a.*, 
d.idlote, d.cantidad, d.precio_compra,d.precio_mayorista,d.precio_unidad,
d.estado as statuslote, d.vence
 from producto a
left join  lote d on d.idproducto= a.idproducto  and d.cantidad > 0
where a.estado = "Activo";



when 'delete'then
update producto set estado=_estado where idproducto = _idproducto;
end case;
commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ingreso_proveedor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ingreso_proveedor`(
in _idProveedor int(16),
in _nombre varchar(60),
in _apellido varchar(45), 
in _telefono int(12),
in _compania varchar(45),
in _direccion varchar(60),
in _estado varchar(16),
in accion varchar(10)
)
begin
 DECLARE EXIT HANDLER FOR SQLEXCEPTION
 BEGIN
 SHOW ERRORS LIMIT 1;
RESIGNAL;
 ROLLBACK;
 END; 
 DECLARE EXIT HANDLER FOR SQLWARNING
 BEGIN
 SHOW WARNINGS LIMIT 1;
RESIGNAL;
 ROLLBACK;
 END;
START TRANSACTION;
case accion
when 'new' then  
insert into proveedor (idProveedor, nombre, apellido, telefono, compania, direccion, estado)
values (_idProveedor, _nombre,_apellido,_telefono,_compania,_direccion,_estado);


when 'update' then
update proveedor
set nombre=_nombre, apellido=_apellido, telefono= _telefono, compania=_compania,
direccion=_direccion, sexo=_sexo, estado=_estado
  where idProveedor = _idProveedor;

when 'viewone'then
select *from proveedor where idProveedor = _idProveedor;

when 'viewall' then
select *from proveedor;

when 'viewlast' then
select *from proveedor order by idProveedor desc;

when 'delete'then
update proveedor set estado=_estado where idProveedor = _idProveedor;
end case;
commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ingreso_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ingreso_usuario`(
in _idusuario integer,
in _idempleado integer,
in _usuario varchar(100),
in _pass varchar(115),
in accion varchar(10)
)
begin
declare exit handler  for sqlexception 
begin
show errors limit 1;
resignal;
rollback;
end;
declare exit handler for sqlwarning
begin
show warnings limit 1;
resignal;
rollback;
end;
start transaction;
case accion 
when 'new' then
insert into usuario(idempleado,usuario,pass) values(_idempleado,_usuario,_pass);
when 'update' then
update usuario  set usuario=_usuario, pass=_pass where idusuario=_idusuario and idempleado=_idempleado;
when 'delete' then
delete from usuario where idusuario=_idusuario;
when 'view' then 
select *from usuario where idempleado=_idempleado;
when 'login' then
select e.nombre, e.apellido, u.idempleado,  u.idusuario from usuario u 
inner join empleado e on e.idempleado=u.idempleado where
u.usuario = _usuario and u.pass=_pass;
end case;
commit;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `mostrar_producto`
--

/*!50001 DROP VIEW IF EXISTS `mostrar_producto`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `mostrar_producto` AS select distinct `p`.`idproducto` AS `idproducto`,`p`.`nombre` AS `nombre`,`p`.`presentacion` AS `presentacion`,`p`.`especificacion` AS `especificacion`,`p`.`stock` AS `stock`,`l`.`precio_unidad` AS `precio_unidad`,`l`.`idlote` AS `idlote` from (`producto` `p` join `lote` `l` on(((`l`.`idproducto` = `p`.`idproducto`) and (`l`.`estado` = 'Activo')))) where (`p`.`estado` = 'Activo') order by `p`.`nombre` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `numero_orden`
--

/*!50001 DROP VIEW IF EXISTS `numero_orden`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `numero_orden` AS select (max(`factura`.`idfactura`) + 1) AS `numero_orden` from `factura` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_producto_invetario`
--

/*!50001 DROP VIEW IF EXISTS `vista_producto_invetario`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_producto_invetario` AS select `a`.`idproducto` AS `idproducto`,concat(`a`.`nombre`,' ',`a`.`presentacion`,' ',`a`.`especificacion`) AS `producto`,`a`.`stock` AS `stock`,`b`.`precio_compra` AS `precio_compra`,(`b`.`precio_compra` * `a`.`stock`) AS `subtotal` from (`producto` `a` left join `lote` `b` on(((`b`.`idproducto` = `a`.`idproducto`) and (`b`.`estado` = 'Activo')))) where (`a`.`estado` = 'Activo') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-03 19:18:31
