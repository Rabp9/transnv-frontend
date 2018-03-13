-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: robertobocanegra.com    Database: rabp99_transnv
-- ------------------------------------------------------
-- Server version	5.5.5-10.2.13-MariaDB-cll-lve

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cabeceras`
--

LOCK TABLES `cabeceras` WRITE;
/*!40000 ALTER TABLE `cabeceras` DISABLE KEYS */;
INSERT INTO `cabeceras` VALUES (1,'quienes-somos-cabecera','cabecera-hFV4o8qY.jpg'),(2,'historia-cabecera','cabecera-2wonXAOG.jpg'),(3,'servicio-cabecera','cabecera-WT4qcsk9.jpg'),(4,'noticia-cabecera','cabecera-RtPBABw9.jpg'),(5,'directorio-cabecera','cabecera-CWon2E0B.jpg'),(6,'ubicacion-cabecera','cabecera-6kCUV5yw.jpg'),(7,'quienes-somos-img','cabecera-sudHm0n6.jpg'),(8,'historia-img','cabecera-HdbOFmAG.jpg'),(9,'directorio-img','cabecera-LBiqnAoc.jpg'),(10,'ubicacion-img','cabecera-JZsLeefd.jpg');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Empresa X','cliente-JxndBm2W.png','Trujillo','12345678911',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactos`
--

LOCK TABLES `contactos` WRITE;
/*!40000 ALTER TABLE `contactos` DISABLE KEYS */;
INSERT INTO `contactos` VALUES (1,'Juan Ramirez','123456748','jramirez@tansnv.com','contacto-3CWxKCL2.jpg',1);
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
  `value` text DEFAULT NULL,
  `tipo` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infos`
--

LOCK TABLES `infos` WRITE;
/*!40000 ALTER TABLE `infos` DISABLE KEYS */;
INSERT INTO `infos` VALUES (1,'quienes_somos_mensaje','<p>En N&amp;V SAC estamos atentos a las necesidades del mercado para brindarle un servicio de calidad, eficiencia y con el respaldo de equipos a la vanguardia de la tecnolog&iacute;a.</p>','p'),(2,'historia_mensaje','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In placerat tellus id quam accumsan dignissim. Suspendisse mollis erat ante, non consequat sem auctor vitae.</p>','p'),(3,'directorio_mensaje','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In placerat tellus id quam accumsan dignissim.</p>','p'),(4,'ubicacion_mensaje','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In placerat tellus id quam accumsan dignissim.</p>','p'),(5,'telefono','948524605','t'),(6,'email','contacto@transnv.com','t'),(7,'facebook_link','https://www.facebook.com/pages/Empresa-NV-SAC/123735981615571','t'),(8,'transnv_resumen','<p>En N&amp;V SAC estamos atentos a las necesidades del mercado para brindarle un servicio de calidad, eficiencia y con el respaldo de equipos a la vanguardia de la tecnolog&iacute;a.<br />En N&amp;V SAC nos preocupamos por el desarrollo sostenible, con propuestas amigables y responsables para el medio ambiente.</p>','p'),(9,'ubicacion_codigo',NULL,'p'),(10,'enlace_1_titulo','Google','t'),(11,'enlace_2_titulo','Google','t'),(12,'enlace_3_titulo','Google','t'),(13,'enlace_1_link','www.google.com','t'),(14,'enlace_2_link','www.google.com','t'),(15,'enlace_3_link','www.google.com','t'),(16,'twitter_link','ww.twitter.com','t'),(17,'direccion','Jr. Carmin 568 - Urb. Los Pajaritos','t'),(18,'copyright','<p>Copyright - Todos los Derechos Reservados - 2018</p>','p'),(19,'quienes_somos','<p>En N&amp;V SAC estamos atentos a las necesidades del mercado para brindarle un servicio de calidad, eficiencia y con el respaldo de equipos a la vanguardia de la tecnolog&iacute;a.</p>\n<p>En N&amp;V SAC nos preocupamos por el desarrollo sostenible, con propuestas amigables y responsables para el medio ambiente.<br />Nuestra constante capacitaci&oacute;n al personal, nos permite tener un staff altamente calificado y competitivo, seg&uacute;n las exigencias de sus necesidades, para brindarle el mejor servicio personalizado las veinticuatro horas, de los trecientos sesenta y cinco d&iacute;as del a&ntilde;o.</p>\n<p>M&aacute;s de 20 a&ntilde;os de experiencia cubriendo las rutas de norte, centro y sur del Per&uacute;, nos acreditan como una empresa confiable para el transporte de sus productos.</p>','p'),(20,'mision','<p>Somos una empresa de transporte terrestre orientado a las operaciones Log&iacute;sticas, conformando un equipo s&oacute;lido y calificado, quienes garantizamos la satisfacci&oacute;n de nuestros clientes y colaboradores, promoviendo valores y responsabilidad social.</p>','p'),(21,'vision','<p>Ser la empresa de transporte de carga l&iacute;der a Nivel Regional. Consolidarnos como su mejor operador log&iacute;stico.</p>','p'),(22,'historia','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed et odio eget libero ullamcorper tempus mattis vel tortor. Pellentesque vulputate, dolor sit amet pharetra dictum, mauris eros pharetra libero, vitae iaculis erat enim quis felis. Nullam porttitor velit eget nibh lacinia malesuada. Etiam pellentesque auctor consequat. Etiam ligula justo, fermentum non lectus sit amet, pretium suscipit lorem. Nam porta, elit non hendrerit gravida, sem massa viverra ex, eu pellentesque diam urna sagittis felis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum dapibus posuere enim eget auctor. Ut nec dui vitae sem fermentum porta. Integer consequat massa volutpat consectetur egestas. Nulla commodo diam lorem, non tristique mi posuere quis.</p>','p'),(23,'ubicacion_code','<iframe\n  width=\"600\"\n  height=\"450\"\n  frameborder=\"0\" style=\"border:0\"\n  src=\"https://www.google.com/maps/embed/v1/place?key= AIzaSyBphWxOjqdFrovtk9kOGVhXE_9kfPh2rZ0 \n    &q=Space+Needle,Seattle+WA\" allowfullscreen>\n</iframe>','t');
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
  `resumen` text DEFAULT NULL,
  `contenido` text DEFAULT NULL,
  `portada` varchar(60) DEFAULT NULL,
  `estado_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`estado_id`),
  KEY `fk_noticias_estados1_idx` (`estado_id`),
  CONSTRAINT `fk_noticias_estados1` FOREIGN KEY (`estado_id`) REFERENCES `estados` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noticias`
--

LOCK TABLES `noticias` WRITE;
/*!40000 ALTER TABLE `noticias` DISABLE KEYS */;
INSERT INTO `noticias` VALUES (1,'Noticia 1','Noticia','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vehicula orci dolor, ac vulputate mi auctor a. Nullam dictum, leo quis fermentum consectetur, ligula tellus cursus nisl, et convallis risus leo eu massa.&nbsp;</p>','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vehicula orci dolor, ac vulputate mi auctor a. Nullam dictum, leo quis fermentum consectetur, ligula tellus cursus nisl, et convallis risus leo eu massa. Integer rutrum pulvinar arcu nec tempor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce massa elit, faucibus id sem sit amet, ultricies rutrum est. Sed ut condimentum est, in posuere metus. Donec in tortor eget sem imperdiet egestas. Fusce dignissim sem vitae risus interdum laoreet. Donec rutrum sem quis ullamcorper accumsan. Nulla neque eros, commodo in accumsan quis, rutrum vitae nulla. Nam eget est eu libero gravida euismod. Curabitur facilisis mauris quis augue tincidunt maximus.&nbsp;</p>','noticia-gpZkKn7R.jpg',1),(2,'Noticia 2','Noticia 2 sub','<p>ipsum dolor sit amet, consectetur adipiscing elit. Ut vehicula orci dolor, ac vulputate mi auctor a. Nullam dictum, leo quis fermentum consectetur, ligula tellus cursus nisl, et convallis risus leo eu massa.&nbsp;</p>','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vehicula orci dolor, ac vulputate mi auctor a. Nullam dictum, leo quis fermentum consectetur, ligula tellus cursus nisl, et convallis risus leo eu massa. Integer rutrum pulvinar arcu nec tempor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce massa elit, faucibus id sem sit amet, ultricies rutrum est. Sed ut condimentum est, in posuere metus. Donec in tortor eget sem imperdiet egestas. Fusce dignissim sem vitae risus interdum laoreet. Donec rutrum sem quis ullamcorper accumsan. Nulla neque eros, commodo in accumsan quis, rutrum vitae nulla. Nam eget est eu libero gravida euismod. Curabitur facilisis mauris quis augue tincidunt maximus.&nbsp;</p>','noticia-BHoXrwR6.jpg',1),(3,'Noticia 3','Noticia 3 sub','<p>ipsum dolor sit amet, consectetur adipiscing elit. Ut vehicula orci dolor, ac vulputate mi auctor a. Nullam dictum, leo quis fermentum consectetur, ligula tellus cursus nisl, et convallis risus leo eu massa.&nbsp;</p>','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vehicula orci dolor, ac vulputate mi auctor a. Nullam dictum, leo quis fermentum consectetur, ligula tellus cursus nisl, et convallis risus leo eu massa. Integer rutrum pulvinar arcu nec tempor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce massa elit, faucibus id sem sit amet, ultricies rutrum est. Sed ut condimentum est, in posuere metus. Donec in tortor eget sem imperdiet egestas. Fusce dignissim sem vitae risus interdum laoreet. Donec rutrum sem quis ullamcorper accumsan. Nulla neque eros, commodo in accumsan quis, rutrum vitae nulla. Nam eget est eu libero gravida euismod. Curabitur facilisis mauris quis augue tincidunt maximus.&nbsp;</p>','noticia-vBTRBA8P.jpg',1);
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
  `resumen` text DEFAULT NULL,
  `contenido` text DEFAULT NULL,
  `portada` varchar(60) DEFAULT NULL,
  `estado_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`estado_id`),
  KEY `fk_servicios_estados1_idx` (`estado_id`),
  CONSTRAINT `fk_servicios_estados1` FOREIGN KEY (`estado_id`) REFERENCES `estados` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicios`
--

LOCK TABLES `servicios` WRITE;
/*!40000 ALTER TABLE `servicios` DISABLE KEYS */;
INSERT INTO `servicios` VALUES (1,'TRANSPORTE MATERIALES PELIGROSOS','','<p>Contamos con CISTERNAS para el transporte de todo tipo de HIDROCARBUROS, Di&eacute;sel, Gasohol, Nafta, Alcohol et&iacute;lico, Residual, etc.</p>','<div class=\"row\">\n<div class=\"col-sm-3\"><img class=\"img-responsive\" src=\"http://transnv.robertobocanegra.com/api/img/servicios/pages/servicio-AuCu3u4b.jpg\" /></div>\n<div class=\"col-sm-9 align-middle\">\n<p>Contamos con CISTERNAS para el transporte de todo tipo de HIDROCARBUROS, Di&eacute;sel, Gasohol, Nafta, Alcohol et&iacute;lico, Residual, etc.</p>\n<p>Con capacidades de: 9000,9200,9400,10000,10500,1100gal.</p>\n<p>Con compartimentos de 1 a 7 espacios.</p>\n<p>Implementaci&oacute;n del m&aacute;s alto est&aacute;ndar para nuestros clientes de las minas m&aacute;s importantes del Per&uacute;.</p>\n</div>\n</div>\n<p>&nbsp;</p>\n<div class=\"row\">\n<div class=\"col-sm-3\"><img class=\"img-responsive\" src=\"http://transnv.robertobocanegra.com/api/img/servicios/pages/servicio-ZjO9c9G8.jpg\" /></div>\n<div class=\"col-sm-9\">\n<p>Transporte de GLP</p>\n</div>\n</div>\n<div class=\"row\">\n<div class=\"col-sm-3\"><img class=\"img-responsive\" src=\"http://transnv.robertobocanegra.com/api/img/servicios/pages/servicio-hV94E2zG.jpg\" /></div>\n<div class=\"col-sm-9\">\n<p>Servicio de transporte en BOMBONAS, para el traslado de &Oacute;xido de Calcio</p>\n</div>\n</div>','servicio-xIxY0xC7.jpg',1),(2,'TRANSPORTE INSUMOS QUIMICOS CONTROLADOS','','<p>Transporte de CAL, a las principales minas del Norte del pa&iacute;s. Adem&aacute;s podemos realizar el transporte de diferentes cargas tanto de ida y retorno.</p>','<div class=\"row\">\n<div class=\"col-sm-3\"><img class=\"img-responsive\" src=\"http://transnv.robertobocanegra.com/api/img/servicios/pages/servicio-eG9iXKqm.jpg\" alt=\"\" /></div>\n<div class=\"col-sm-9\">\n<p>Transporte de CAL, a las principales minas del Norte del pa&iacute;s.</p>\n</div>\n</div>\n<p>&nbsp;</p>\n<div class=\"row\">\n<div class=\"col-sm-3\"><img class=\"img-responsive\" src=\"http://transnv.robertobocanegra.com/api/img/servicios/pages/servicio-VEfEi2ga.jpg\" alt=\"\" /></div>\n<div class=\"col-sm-9\">\n<p><strong>Veh&iacute;culos multiprop&oacute;sito</strong></p>\n<p>Podemos realizar el transporte de diferentes cargas tanto de ida y retorno, ya que contamos con semirremolques especialmente acondicionados para este tipo de operaci&oacute;n, el dise&ntilde;o lo realizamos acorde a las necesidades de transporte del cliente.</p>\n</div>\n</div>','servicio-h38eL064.jpg',1),(3,'TRANSPORTE DE MATERIALES',NULL,'<p>Contamos con unidades de Semitrailer Plataforma,&nbsp;Unidades especiales para transporte de mercader&iacute;as de valor</p>','<div class=\"row\">\n<div class=\"col-sm-3\"><img class=\"img-responsive\" src=\"http://transnv.robertobocanegra.com/api/img/servicios/pages/servicio-l6On4QdZ.jpg\" alt=\"\" />\n<p>&nbsp;</p>\n<img class=\"img-responsive\" src=\"http://transnv.robertobocanegra.com/api/img/servicios/pages/servicio-VU4RcoKQ.jpg\" alt=\"\" /></div>\n<div class=\"col-sm-9\">\n<p><strong>PLATAFORMAS:</strong><br /> Contamos con unidades de Semitrailer Plataforma, ideales para transportar rollos de geomembranas, tuber&iacute;as PVC, equipos medianos y peque&ntilde;os, contenedores, m&oacute;dulos y otros materiales de construcci&oacute;n.</p>\n</div>\n</div>\n<p>&nbsp;</p>\n<div class=\"row\">\n<div class=\"col-sm-3\"><img class=\"img-responsive\" src=\"http://transnv.robertobocanegra.com/api/img/servicios/pages/servicio-2AIU8v2r.jpg\" alt=\"\" /></div>\n<div class=\"col-sm-9\">\n<p><strong>FURGONES:</strong><br /> Unidades especiales para transporte de mercader&iacute;as de valor</p>\n</div>\n</div>','servicio-xsadGaJh.jpg',1),(4,'TRANSPORTE EN CAMAS BAJA',NULL,'<p>Contamos con unidades de Semitrailer CAMABAJA</p>','<div class=\"row\">\n<div class=\"col-sm-3\"><img class=\"img-responsive\" src=\"http://transnv.robertobocanegra.com/api/img/servicios/pages/servicio-EqJu4Ggg.jpg\" alt=\"\" /></div>\n<div class=\"col-sm-9\">&nbsp;</div>\n</div>\n<p>&nbsp;</p>\n<div class=\"row\">\n<div class=\"col-sm-3\"><img class=\"img-responsive\" src=\"http://transnv.robertobocanegra.com/api/img/servicios/pages/servicio-ssfo6sMl.jpg\" alt=\"\" /></div>\n<div class=\"col-sm-9\">\n<p><strong>TRANSPORTE EN CAMAS BAJA</strong><br /> Contamos con unidades de Semitrailer CAMABAJA, ideales para transportar equipos medianos y grandes.</p>\n</div>\n</div>\n<p>&nbsp;</p>\n<div class=\"row\">\n<div class=\"col-sm-3\"><img class=\"img-responsive\" src=\"http://transnv.robertobocanegra.com/api/img/servicios/pages/servicio-TcHnBbZN.jpg\" alt=\"\" /></div>\n<div class=\"col-sm-9\">&nbsp;</div>\n</div>','servicio-TFUqneb7.jpg',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slides`
--

LOCK TABLES `slides` WRITE;
/*!40000 ALTER TABLE `slides` DISABLE KEYS */;
INSERT INTO `slides` VALUES (1,'Image 1','slide-D1A00bna.jpg',NULL,1),(2,'Image 2','slide-PDxMHFCh.jpg',NULL,1);
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

-- Dump completed on 2018-03-13 10:30:37
