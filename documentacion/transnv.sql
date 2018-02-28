-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: transnv
-- ------------------------------------------------------
-- Server version	5.7.14

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
-- Table structure for table `cabeceras`
--

DROP TABLE IF EXISTS `cabeceras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cabeceras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(60) NOT NULL,
  `imagen` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cabeceras`
--

LOCK TABLES `cabeceras` WRITE;
/*!40000 ALTER TABLE `cabeceras` DISABLE KEYS */;
INSERT INTO `cabeceras` VALUES (1,'quienes-somos-cabecera',NULL),(2,'historia-cabecera',NULL),(3,'noticia-cabecera',NULL),(4,'directorio-cabecera',NULL),(5,'ubicacion-cabecera',NULL),(6,'quienes-somos-img',NULL),(7,'historia-img',NULL),(8,'directorio-img',NULL),(9,'ubicacion-img',NULL),(10,'nuestra-flota-cabecera','cabecera-Ilo3oohn.jpg'),(11,'nuestro-personal-cabecera','cabecera-3MPQrUmE.png'),(12,'certificaciones-cabecera','cabecera-1NYuAcev.png');
/*!40000 ALTER TABLE `cabeceras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `razon_social` varchar(90) NOT NULL,
  `imagen` varchar(60) NOT NULL,
  `ciudad` varchar(60) DEFAULT NULL,
  `ruc` char(11) DEFAULT NULL,
  `estado_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`estado_id`),
  KEY `fk_clientes_estados1_idx` (`estado_id`),
  CONSTRAINT `fk_clientes_estados1` FOREIGN KEY (`estado_id`) REFERENCES `estados` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactos`
--

DROP TABLE IF EXISTS `contactos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contactos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_completo` varchar(90) NOT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `imagen` varchar(60) DEFAULT NULL,
  `estado_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`estado_id`),
  KEY `fk_contactos_estados1_idx` (`estado_id`),
  CONSTRAINT `fk_contactos_estados1` FOREIGN KEY (`estado_id`) REFERENCES `estados` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactos`
--

LOCK TABLES `contactos` WRITE;
/*!40000 ALTER TABLE `contactos` DISABLE KEYS */;
/*!40000 ALTER TABLE `contactos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `controller_roles`
--

DROP TABLE IF EXISTS `controller_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `controller_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `controller_id` int(11) NOT NULL,
  `rol_id` int(11) NOT NULL,
  `permiso` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`,`controller_id`,`rol_id`),
  KEY `fk_controller_roles_controllers_idx` (`controller_id`),
  KEY `fk_controller_roles_roles1_idx` (`rol_id`),
  CONSTRAINT `fk_controller_roles_controllers` FOREIGN KEY (`controller_id`) REFERENCES `controllers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_controller_roles_roles1` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controller_roles`
--

LOCK TABLES `controller_roles` WRITE;
/*!40000 ALTER TABLE `controller_roles` DISABLE KEYS */;
INSERT INTO `controller_roles` VALUES (1,1,1,1),(2,2,1,1),(3,3,1,1),(4,4,1,1),(5,5,1,1),(6,6,1,1),(7,7,1,1),(8,8,1,1),(9,9,1,1),(10,10,1,1),(11,11,1,1);
/*!40000 ALTER TABLE `controller_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `controllers`
--

DROP TABLE IF EXISTS `controllers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `controllers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(60) NOT NULL,
  `controller_name` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controllers`
--

LOCK TABLES `controllers` WRITE;
/*!40000 ALTER TABLE `controllers` DISABLE KEYS */;
INSERT INTO `controllers` VALUES (1,'Información General','infos'),(2,'Nosotros','nosotros'),(3,'Slides','slides'),(4,'Clientes','clientes'),(5,'Servicios','servicios'),(6,'Noticias','noticias'),(7,'Contáctanos','contactanos'),(8,'Cabeceras','cabeceras'),(9,'Roles','roles'),(10,'Usuarios','users'),(11,'Directorio','directorio');
/*!40000 ALTER TABLE `controllers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estados`
--

DROP TABLE IF EXISTS `estados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estados`
--

LOCK TABLES `estados` WRITE;
/*!40000 ALTER TABLE `estados` DISABLE KEYS */;
INSERT INTO `estados` VALUES (1,'activo'),(2,'inactivo');
/*!40000 ALTER TABLE `estados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infos`
--

DROP TABLE IF EXISTS `infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `infos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dato` varchar(90) NOT NULL,
  `value` text,
  `tipo` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infos`
--

LOCK TABLES `infos` WRITE;
/*!40000 ALTER TABLE `infos` DISABLE KEYS */;
INSERT INTO `infos` VALUES (1,'quienes_somos_mensaje',NULL,'p'),(2,'historia_mensaje',NULL,'p'),(3,'directorio_mensaje',NULL,'p'),(4,'ubicacion_mensaje',NULL,'p'),(5,'telefono',NULL,'t'),(6,'email',NULL,'t'),(7,'facebook_link',NULL,'t'),(8,'transnv_resumen',NULL,'p'),(9,'enlace_1_titulo',NULL,'t'),(10,'enlace_2_titulo',NULL,'t'),(11,'enlace_3_titulo',NULL,'t'),(12,'enlace_1_link',NULL,'t'),(13,'enlace_2_link',NULL,'t'),(14,'enlace_3_link',NULL,'t'),(15,'twitter_link',NULL,'t'),(16,'direccion',NULL,'t'),(17,'copyright',NULL,'p'),(18,'quienes_somos',NULL,'p'),(19,'mision',NULL,'p'),(20,'vision',NULL,'p'),(21,'historia',NULL,'p'),(22,'ubicacion_lat_long',NULL,'t'),(23,'nuestra_flota_mensaje','<p>dsadsadsadsa sad</p>','p'),(24,'nuestro_personal_mensaje',NULL,'p'),(25,'nuestra_flota','<div class=\"row\">\n<div class=\"col-sm-3\">\n<h3>Equipamiento y Seguridad</h3>\n<ul>\n<li>Extintores PQS</li>\n<li>Extintor de Cabina</li>\n<li>Botiqu&iacute;n implementado</li>\n<li>Conos de Seguridad</li>\n<li>Tri&aacute;ngulos</li>\n<li>Circulina destellante</li>\n<li>Salchichas contenedora de derrames</li>\n<li>Linterna Anti chispa</li>\n<li>Pico y Palana Anti chispa</li>\n<li>M&aacute;scara Respiradora</li>\n<li>Tacos de Madera y Estacas</li>\n<li>Pa&ntilde;os Absorbentes</li>\n<li>Sacos de Polietileno</li>\n<li>Arn&eacute;s con 2 l&iacute;neas de vida</li>\n<li>Rollo de Cinta Peligro</li>\n<li>KIT AE</li>\n<li>Entre otros</li>\n</ul>\n</div>\n<div class=\"col-sm-9\">\n<p>N&amp;V SAC cuenta con un gran n&uacute;mero de unidades apropiadas a todas las condiciones terrestres del Per&uacute;: VOLVO, INTERNATIONAL, FREIGHTLINER, MERCEDES y MACK</p>\n<p>Nuestras unidades cuentan con las siguientes caracter&iacute;sticas:</p>\n<ul>\n<li>Motores de Inyecci&oacute;n Electr&oacute;nica.</li>\n<li>Sistema de Frenos ABS (6S/6M).</li>\n<li>Velocidad M&aacute;xima Regulada.</li>\n<li>Sistema de Posicionamiento Global (GPS).</li>\n</ul>\n<p>Esta nueva generaci&oacute;n de veh&iacute;culos incrementan el rendimiento en conducci&oacute;n, as&iacute; mismo favorece al Medio Ambiente por cuanto los veh&iacute;culos son m&iacute;nimos (Respetan normas Europeas y Americanas).</p>\n</div>\n</div>','p'),(26,'nuestro_personal','<div class=\"row\">\n<div class=\"col-sm-3\"><img class=\"img-responsive\" src=\"http://localhost:8000/transnv-backend/img/infos/info-Noxgrx7j.png\" alt=\"\" width=\"716\" height=\"568\" /><br /><img class=\"img-responsive\" src=\"http://localhost:8000/transnv-backend/img/infos/info-Iyw1wC05.png\" alt=\"\" width=\"715\" height=\"556\" /></div>\n<div class=\"col-sm-9\">\n<p>N&amp;V SAC cuenta con personal de flota con experiencia en el manejo de unidades de transporte, brindando confianza para el traslado de su producto. Cumplimos con los reglamentos establecidos por los clientes y proveedores</p>\n<p>El personal es continuamente calificado, bajo la supervisi&oacute;n y entrenamiento de nuestra &Aacute;rea de Seguridad, la cual implementa constantemente cursos de actualizaci&oacute;n y capacitaci&oacute;n tales como:</p>\n<ul>\n<li>Control de incidentes con materiales peligrosos</li>\n<li>Haz Mat, niveles I, II y III</li>\n<li>Manejo Defensivo</li>\n<li>Primeros Auxilios</li>\n<li>Entre otros</li>\n</ul>\n</div>\n</div>','p'),(27,'certificaciones','<div class=\"row\">\n<div class=\"col-sm-12\">\n<p class=\"text-justify\">Somos una empresa de transporte terrestre de materiales peligrosos y productos para diferentes sectores industriales en el Per&uacute;, prestamos un servicio diferenciado, acorde a las necesidades de nuestros clientes, cumpliendo con las exigentes certificaciones internacionales ISO 9001, OHSAS 18001, ISO 14001,ISO 39001,ISO 28000, BASC y C&oacute;digo de Cianuro.</p>\n</div>\n</div>\n<div class=\"row\">\n<div class=\"col-sm-3\"><img class=\"img-responsive\" src=\"http://localhost:8000/transnv-backend/img/infos/info-nv5LTZnB.png\" alt=\"\" width=\"421\" height=\"605\" /></div>\n<div class=\"col-sm-3\"><img class=\"img-responsive\" src=\"http://localhost:8000/transnv-backend/img/infos/info-cqJfNmJo.png\" width=\"421\" height=\"605\" /></div>\n<div class=\"col-sm-3\"><img class=\"img-responsive\" src=\"http://localhost:8000/transnv-backend/img/infos/info-vMFSIi2l.png\" width=\"421\" height=\"605\" /></div>\n<div class=\"col-sm-3\"><img class=\"img-responsive\" src=\"http://localhost:8000/transnv-backend/img/infos/info-H3m5b1ew.png\" width=\"421\" height=\"605\" /></div>\n</div>\n<p>&nbsp;</p>\n<div class=\"row\">\n<div class=\"col-sm-3\"><img class=\"img-responsive\" src=\"http://localhost:8000/transnv-backend/img/infos/info-L50pSUU4.png\" width=\"421\" height=\"605\" /></div>\n<div class=\"col-sm-3 col-sm-offset-1\"><img class=\"img-responsive\" src=\"http://localhost:8000/transnv-backend/img/infos/info-TMLvk4ka.png\" width=\"421\" height=\"605\" /></div>\n<div class=\"col-sm-4 col-sm-offset-1\"><img class=\"img-responsive\" src=\"http://localhost:8000/transnv-backend/img/infos/info-564H8RNl.png\" width=\"421\" height=\"605\" /></div>\n</div>\n<p>&nbsp;</p>\n<div class=\"row\">\n<div class=\"col-sm-12\">\n<p class=\"text-justify\">Nos destacamos por nuestra gesti&oacute;n innovadora para poder ofrecer servicios altamente especializados, mediante la aplicaci&oacute;n de nuevas tecnolog&iacute;as, la seguridad de nuestras operaciones, la gesti&oacute;n eficiente de procesos y el buen desempe&ntilde;o de nuestros colaboradores altamente calificados.</p>\n</div>\n</div>','p'),(28,'polizas_seguros','<p>&nbsp;dsa dsa dsad as dsa dsa d</p>','p');
/*!40000 ALTER TABLE `infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `noticias`
--

DROP TABLE IF EXISTS `noticias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `noticias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(60) NOT NULL,
  `subtitulo` varchar(90) DEFAULT NULL,
  `resumen` text,
  `contenido` text,
  `portada` varchar(60) DEFAULT NULL,
  `estado_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`estado_id`),
  KEY `fk_noticias_estados1_idx` (`estado_id`),
  CONSTRAINT `fk_noticias_estados1` FOREIGN KEY (`estado_id`) REFERENCES `estados` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noticias`
--

LOCK TABLES `noticias` WRITE;
/*!40000 ALTER TABLE `noticias` DISABLE KEYS */;
/*!40000 ALTER TABLE `noticias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(60) NOT NULL,
  `estado_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`estado_id`),
  KEY `fk_roles_estados1_idx` (`estado_id`),
  CONSTRAINT `fk_roles_estados1` FOREIGN KEY (`estado_id`) REFERENCES `estados` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Administrador',1);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicios`
--

DROP TABLE IF EXISTS `servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(60) NOT NULL,
  `subtitulo` varchar(90) DEFAULT NULL,
  `resumen` text,
  `contenido` text,
  `portada` varchar(60) DEFAULT NULL,
  `estado_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`estado_id`),
  KEY `fk_servicios_estados1_idx` (`estado_id`),
  CONSTRAINT `fk_servicios_estados1` FOREIGN KEY (`estado_id`) REFERENCES `estados` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicios`
--

LOCK TABLES `servicios` WRITE;
/*!40000 ALTER TABLE `servicios` DISABLE KEYS */;
/*!40000 ALTER TABLE `servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slides`
--

DROP TABLE IF EXISTS `slides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slides` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(45) DEFAULT NULL,
  `imagen` varchar(60) NOT NULL,
  `orden` int(11) DEFAULT NULL,
  `estado_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`estado_id`),
  KEY `fk_slides_estados1_idx` (`estado_id`),
  CONSTRAINT `fk_slides_estados1` FOREIGN KEY (`estado_id`) REFERENCES `estados` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slides`
--

LOCK TABLES `slides` WRITE;
/*!40000 ALTER TABLE `slides` DISABLE KEYS */;
/*!40000 ALTER TABLE `slides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rol_id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(120) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `estado_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`rol_id`,`estado_id`),
  KEY `fk_users_roles1_idx` (`rol_id`),
  KEY `fk_users_estados1_idx` (`estado_id`),
  CONSTRAINT `fk_users_estados1` FOREIGN KEY (`estado_id`) REFERENCES `estados` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_roles1` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'admin','$2y$10$d9jEoXrUzl3xw6mJQEbZcOEMjnSXH17P6un4atIiHQzz1.t0fhEhG','admin@transnv.com',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-28 17:38:17
