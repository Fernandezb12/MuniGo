-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: munigo
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Table structure for table `admin_interface_theme`
--

DROP TABLE IF EXISTS `admin_interface_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_interface_theme` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_visible` tinyint(1) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `logo_visible` tinyint(1) NOT NULL,
  `css_header_background_color` varchar(10) NOT NULL,
  `title_color` varchar(10) NOT NULL,
  `css_header_text_color` varchar(10) NOT NULL,
  `css_header_link_color` varchar(10) NOT NULL,
  `css_header_link_hover_color` varchar(10) NOT NULL,
  `css_module_background_color` varchar(10) NOT NULL,
  `css_module_text_color` varchar(10) NOT NULL,
  `css_module_link_color` varchar(10) NOT NULL,
  `css_module_link_hover_color` varchar(10) NOT NULL,
  `css_module_rounded_corners` tinyint(1) NOT NULL,
  `css_generic_link_color` varchar(10) NOT NULL,
  `css_generic_link_hover_color` varchar(10) NOT NULL,
  `css_save_button_background_color` varchar(10) NOT NULL,
  `css_save_button_background_hover_color` varchar(10) NOT NULL,
  `css_save_button_text_color` varchar(10) NOT NULL,
  `css_delete_button_background_color` varchar(10) NOT NULL,
  `css_delete_button_background_hover_color` varchar(10) NOT NULL,
  `css_delete_button_text_color` varchar(10) NOT NULL,
  `list_filter_dropdown` tinyint(1) NOT NULL,
  `related_modal_active` tinyint(1) NOT NULL,
  `related_modal_background_color` varchar(10) NOT NULL,
  `related_modal_rounded_corners` tinyint(1) NOT NULL,
  `logo_color` varchar(10) NOT NULL,
  `recent_actions_visible` tinyint(1) NOT NULL,
  `favicon` varchar(100) NOT NULL,
  `related_modal_background_opacity` varchar(5) NOT NULL,
  `env_name` varchar(50) NOT NULL,
  `env_visible_in_header` tinyint(1) NOT NULL,
  `env_color` varchar(10) NOT NULL,
  `env_visible_in_favicon` tinyint(1) NOT NULL,
  `related_modal_close_button_visible` tinyint(1) NOT NULL,
  `language_chooser_active` tinyint(1) NOT NULL,
  `language_chooser_display` varchar(10) NOT NULL,
  `list_filter_sticky` tinyint(1) NOT NULL,
  `form_pagination_sticky` tinyint(1) NOT NULL,
  `form_submit_sticky` tinyint(1) NOT NULL,
  `css_module_background_selected_color` varchar(10) NOT NULL,
  `css_module_link_selected_color` varchar(10) NOT NULL,
  `logo_max_height` smallint unsigned NOT NULL,
  `logo_max_width` smallint unsigned NOT NULL,
  `foldable_apps` tinyint(1) NOT NULL,
  `language_chooser_control` varchar(20) NOT NULL,
  `list_filter_highlight` tinyint(1) NOT NULL,
  `list_filter_removal_links` tinyint(1) NOT NULL,
  `show_fieldsets_as_tabs` tinyint(1) NOT NULL,
  `show_inlines_as_tabs` tinyint(1) NOT NULL,
  `css_generic_link_active_color` varchar(10) NOT NULL,
  `collapsible_stacked_inlines` tinyint(1) NOT NULL,
  `collapsible_stacked_inlines_collapsed` tinyint(1) NOT NULL,
  `collapsible_tabular_inlines` tinyint(1) NOT NULL,
  `collapsible_tabular_inlines_collapsed` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_interface_theme_name_30bda70f_uniq` (`name`),
  CONSTRAINT `admin_interface_theme_chk_1` CHECK ((`logo_max_height` >= 0)),
  CONSTRAINT `admin_interface_theme_chk_2` CHECK ((`logo_max_width` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_interface_theme`
--

LOCK TABLES `admin_interface_theme` WRITE;
/*!40000 ALTER TABLE `admin_interface_theme` DISABLE KEYS */;
INSERT INTO `admin_interface_theme` VALUES (3,'MuniGo',1,'Django administration',1,'',1,'#0C4B33','#F5DD5D','#44B78B','#FFFFFF','#C9F0DD','#44B78B','#FFFFFF','#FFFFFF','#C9F0DD',1,'#0C3C26','#156641','#0C4B33','#0C3C26','#FFFFFF','#BA2121','#A41515','#FFFFFF',1,1,'#000000',1,'#FFFFFF',1,'','0.3','Admin MuniGo',1,'#1DC452',0,1,1,'name',1,0,0,'#FFFFCC','#FFFFFF',100,400,1,'minimal-select',1,0,0,0,'#29B864',0,1,0,1);
/*!40000 ALTER TABLE `admin_interface_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add alerta',7,'add_alerta'),(26,'Can change alerta',7,'change_alerta'),(27,'Can delete alerta',7,'delete_alerta'),(28,'Can view alerta',7,'view_alerta'),(29,'Can add comunicado',8,'add_comunicado'),(30,'Can change comunicado',8,'change_comunicado'),(31,'Can delete comunicado',8,'delete_comunicado'),(32,'Can view comunicado',8,'view_comunicado'),(33,'Can add contacto emergencia',9,'add_contactoemergencia'),(34,'Can change contacto emergencia',9,'change_contactoemergencia'),(35,'Can delete contacto emergencia',9,'delete_contactoemergencia'),(36,'Can view contacto emergencia',9,'view_contactoemergencia'),(37,'Can add evento',10,'add_evento'),(38,'Can change evento',10,'change_evento'),(39,'Can delete evento',10,'delete_evento'),(40,'Can view evento',10,'view_evento'),(41,'Can add recoleccion basura',11,'add_recoleccionbasura'),(42,'Can change recoleccion basura',11,'change_recoleccionbasura'),(43,'Can delete recoleccion basura',11,'delete_recoleccionbasura'),(44,'Can view recoleccion basura',11,'view_recoleccionbasura'),(45,'Can add servicio municipal',12,'add_serviciomunicipal'),(46,'Can change servicio municipal',12,'change_serviciomunicipal'),(47,'Can delete servicio municipal',12,'delete_serviciomunicipal'),(48,'Can view servicio municipal',12,'view_serviciomunicipal'),(49,'Can add usuario',13,'add_usuario'),(50,'Can change usuario',13,'change_usuario'),(51,'Can delete usuario',13,'delete_usuario'),(52,'Can view usuario',13,'view_usuario'),(53,'Can add alerta',14,'add_alerta'),(54,'Can change alerta',14,'change_alerta'),(55,'Can delete alerta',14,'delete_alerta'),(56,'Can view alerta',14,'view_alerta'),(57,'Can add comunicado',15,'add_comunicado'),(58,'Can change comunicado',15,'change_comunicado'),(59,'Can delete comunicado',15,'delete_comunicado'),(60,'Can view comunicado',15,'view_comunicado'),(61,'Can add contacto emergencia',16,'add_contactoemergencia'),(62,'Can change contacto emergencia',16,'change_contactoemergencia'),(63,'Can delete contacto emergencia',16,'delete_contactoemergencia'),(64,'Can view contacto emergencia',16,'view_contactoemergencia'),(65,'Can add evento',17,'add_evento'),(66,'Can change evento',17,'change_evento'),(67,'Can delete evento',17,'delete_evento'),(68,'Can view evento',17,'view_evento'),(69,'Can add recoleccion basura',18,'add_recoleccionbasura'),(70,'Can change recoleccion basura',18,'change_recoleccionbasura'),(71,'Can delete recoleccion basura',18,'delete_recoleccionbasura'),(72,'Can view recoleccion basura',18,'view_recoleccionbasura'),(73,'Can add servicio municipal',19,'add_serviciomunicipal'),(74,'Can change servicio municipal',19,'change_serviciomunicipal'),(75,'Can delete servicio municipal',19,'delete_serviciomunicipal'),(76,'Can view servicio municipal',19,'view_serviciomunicipal'),(77,'Can add usuario',20,'add_usuario'),(78,'Can change usuario',20,'change_usuario'),(79,'Can delete usuario',20,'delete_usuario'),(80,'Can view usuario',20,'view_usuario'),(81,'Can add Theme',21,'add_theme'),(82,'Can change Theme',21,'change_theme'),(83,'Can delete Theme',21,'delete_theme'),(84,'Can view Theme',21,'view_theme');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$870000$OYmHQ5uMusV0EXIVax4G7m$qedsLKsdVpnzWaNGkW3olJaXsK/BWe3/dKd7nM0Q1gU=','2024-09-07 22:56:17.454965',1,'juan','','','juan@admin.com',1,1,'2024-09-04 18:46:12.780239'),(2,'pbkdf2_sha256$870000$VgN2eHnrv9wkRHslWP3zc9$jjGhnJ0cK7fYbtpcTpicyIF53MnstTliSPKXOiXyUrk=','2024-09-07 22:59:16.136162',1,'daniel','','','daniel@admin.com',1,1,'2024-09-07 22:58:30.816874');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_alerta`
--

DROP TABLE IF EXISTS `dashboard_alerta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_alerta` (
  `id_alerta` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(150) NOT NULL,
  `descripcion` longtext NOT NULL,
  `fecha_emision` datetime(6) NOT NULL,
  `ubicacion` varchar(255) NOT NULL,
  `icono` varchar(100) NOT NULL,
  `tipo_alerta` varchar(50) NOT NULL,
  `imagenes` json NOT NULL,
  PRIMARY KEY (`id_alerta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_alerta`
--

LOCK TABLES `dashboard_alerta` WRITE;
/*!40000 ALTER TABLE `dashboard_alerta` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_alerta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_comunicado`
--

DROP TABLE IF EXISTS `dashboard_comunicado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_comunicado` (
  `id_comunicado` int NOT NULL AUTO_INCREMENT,
  `entidad` varchar(100) NOT NULL,
  `avatar_entidad` varchar(100) NOT NULL,
  `texto_comunicado` longtext NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `fecha_publicacion` datetime(6) NOT NULL,
  `likes` int unsigned NOT NULL,
  `compartido` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_comunicado`),
  CONSTRAINT `dashboard_comunicado_chk_1` CHECK ((`likes` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_comunicado`
--

LOCK TABLES `dashboard_comunicado` WRITE;
/*!40000 ALTER TABLE `dashboard_comunicado` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_comunicado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_contactoemergencia`
--

DROP TABLE IF EXISTS `dashboard_contactoemergencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_contactoemergencia` (
  `id_contacto` int NOT NULL AUTO_INCREMENT,
  `nombre_servicio` varchar(100) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `icono` varchar(100) NOT NULL,
  `fecha_creacion` datetime(6) NOT NULL,
  PRIMARY KEY (`id_contacto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_contactoemergencia`
--

LOCK TABLES `dashboard_contactoemergencia` WRITE;
/*!40000 ALTER TABLE `dashboard_contactoemergencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_contactoemergencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_evento`
--

DROP TABLE IF EXISTS `dashboard_evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_evento` (
  `id_evento` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(150) NOT NULL,
  `descripcion` longtext NOT NULL,
  `fecha_evento` date NOT NULL,
  `hora_evento` time(6) NOT NULL,
  `ubicacion` varchar(255) NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `favorito` tinyint(1) NOT NULL,
  `fecha_creacion` datetime(6) NOT NULL,
  PRIMARY KEY (`id_evento`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_evento`
--

LOCK TABLES `dashboard_evento` WRITE;
/*!40000 ALTER TABLE `dashboard_evento` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_recoleccionbasura`
--

DROP TABLE IF EXISTS `dashboard_recoleccionbasura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_recoleccionbasura` (
  `id_contacto` int NOT NULL AUTO_INCREMENT,
  `nombre_servicio` varchar(100) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `icono` varchar(100) NOT NULL,
  `fecha_creacion` datetime(6) NOT NULL,
  PRIMARY KEY (`id_contacto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_recoleccionbasura`
--

LOCK TABLES `dashboard_recoleccionbasura` WRITE;
/*!40000 ALTER TABLE `dashboard_recoleccionbasura` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_recoleccionbasura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_serviciomunicipal`
--

DROP TABLE IF EXISTS `dashboard_serviciomunicipal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_serviciomunicipal` (
  `id_servicio` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` longtext NOT NULL,
  `tipo_servicio` varchar(50) NOT NULL,
  `ubicacion` varchar(255) NOT NULL,
  `contacto` varchar(100) NOT NULL,
  `icono` varchar(100) NOT NULL,
  `fecha_creacion` datetime(6) NOT NULL,
  PRIMARY KEY (`id_servicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_serviciomunicipal`
--

LOCK TABLES `dashboard_serviciomunicipal` WRITE;
/*!40000 ALTER TABLE `dashboard_serviciomunicipal` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_serviciomunicipal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_usuario`
--

DROP TABLE IF EXISTS `dashboard_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_usuario` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `fecha_registro` datetime(6) NOT NULL,
  `rol` varchar(20) NOT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `telefono` (`telefono`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_usuario`
--

LOCK TABLES `dashboard_usuario` WRITE;
/*!40000 ALTER TABLE `dashboard_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-09-04 23:58:36.035988','1','Usuario object (1)',1,'[{\"added\": {}}]',13,1),(2,'2024-09-05 00:03:53.111462','1','Evento object (1)',1,'[{\"added\": {}}]',10,1),(3,'2024-09-06 15:50:48.694042','2','MuniGo',1,'[{\"added\": {}}]',21,1),(4,'2024-09-06 15:51:24.797900','2','MuniGo',3,'',21,1),(5,'2024-09-06 16:04:34.604089','3','MuniGo',1,'[{\"added\": {}}]',21,1),(6,'2024-09-06 16:06:27.422880','3','MuniGo',2,'[{\"changed\": {\"fields\": [\"Name\", \"Color\"]}}]',21,1),(7,'2024-09-06 16:08:10.959812','3','MuniGo',2,'[{\"changed\": {\"fields\": [\"Name\", \"Visible in header (marker and name)\"]}}]',21,1),(8,'2024-09-06 16:08:23.748980','3','MuniGo',2,'[{\"changed\": {\"fields\": [\"Visible in favicon (marker)\"]}}]',21,1),(9,'2024-09-06 16:08:37.002718','3','MuniGo',2,'[{\"changed\": {\"fields\": [\"Visible in favicon (marker)\"]}}]',21,1),(10,'2024-09-06 16:08:49.336700','3','MuniGo',2,'[{\"changed\": {\"fields\": [\"Visible in header (marker and name)\", \"Visible in favicon (marker)\"]}}]',21,1),(11,'2024-09-06 16:09:26.311252','3','MuniGo',2,'[{\"changed\": {\"fields\": [\"Display\"]}}]',21,1),(12,'2024-09-06 16:09:43.281996','3','MuniGo',2,'[{\"changed\": {\"fields\": [\"Control\"]}}]',21,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(21,'admin_interface','theme'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'dashboard','alerta'),(8,'dashboard','comunicado'),(9,'dashboard','contactoemergencia'),(10,'dashboard','evento'),(11,'dashboard','recoleccionbasura'),(12,'dashboard','serviciomunicipal'),(13,'dashboard','usuario'),(14,'home','alerta'),(15,'home','comunicado'),(16,'home','contactoemergencia'),(17,'home','evento'),(18,'home','recoleccionbasura'),(19,'home','serviciomunicipal'),(20,'home','usuario'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-09-04 18:20:29.191371'),(2,'auth','0001_initial','2024-09-04 18:20:31.250634'),(3,'admin','0001_initial','2024-09-04 18:20:31.819105'),(4,'admin','0002_logentry_remove_auto_add','2024-09-04 18:20:31.854170'),(5,'admin','0003_logentry_add_action_flag_choices','2024-09-04 18:20:31.878687'),(6,'contenttypes','0002_remove_content_type_name','2024-09-04 18:20:32.139454'),(7,'auth','0002_alter_permission_name_max_length','2024-09-04 18:20:32.361787'),(8,'auth','0003_alter_user_email_max_length','2024-09-04 18:20:32.445125'),(9,'auth','0004_alter_user_username_opts','2024-09-04 18:20:32.485162'),(10,'auth','0005_alter_user_last_login_null','2024-09-04 18:20:32.685085'),(11,'auth','0006_require_contenttypes_0002','2024-09-04 18:20:32.695468'),(12,'auth','0007_alter_validators_add_error_messages','2024-09-04 18:20:32.716910'),(13,'auth','0008_alter_user_username_max_length','2024-09-04 18:20:32.920628'),(14,'auth','0009_alter_user_last_name_max_length','2024-09-04 18:20:33.142099'),(15,'auth','0010_alter_group_name_max_length','2024-09-04 18:20:33.212569'),(16,'auth','0011_update_proxy_permissions','2024-09-04 18:20:33.229774'),(17,'auth','0012_alter_user_first_name_max_length','2024-09-04 18:20:33.443451'),(18,'dashboard','0001_initial','2024-09-04 18:20:33.964540'),(19,'sessions','0001_initial','2024-09-04 18:20:34.084362'),(20,'home','0001_initial','2024-09-06 15:32:05.015840'),(21,'admin_interface','0001_initial','2024-09-06 15:48:35.824774'),(22,'admin_interface','0002_add_related_modal','2024-09-06 15:48:36.385876'),(23,'admin_interface','0003_add_logo_color','2024-09-06 15:48:36.682606'),(24,'admin_interface','0004_rename_title_color','2024-09-06 15:48:36.752641'),(25,'admin_interface','0005_add_recent_actions_visible','2024-09-06 15:48:36.847759'),(26,'admin_interface','0006_bytes_to_str','2024-09-06 15:48:36.932856'),(27,'admin_interface','0007_add_favicon','2024-09-06 15:48:37.217612'),(28,'admin_interface','0008_change_related_modal_background_opacity_type','2024-09-06 15:48:37.435946'),(29,'admin_interface','0009_add_enviroment','2024-09-06 15:48:37.698858'),(30,'admin_interface','0010_add_localization','2024-09-06 15:48:37.732428'),(31,'admin_interface','0011_add_environment_options','2024-09-06 15:48:38.097523'),(32,'admin_interface','0012_update_verbose_names','2024-09-06 15:48:38.115238'),(33,'admin_interface','0013_add_related_modal_close_button','2024-09-06 15:48:38.227677'),(34,'admin_interface','0014_name_unique','2024-09-06 15:48:38.331485'),(35,'admin_interface','0015_add_language_chooser_active','2024-09-06 15:48:38.442326'),(36,'admin_interface','0016_add_language_chooser_display','2024-09-06 15:48:38.577768'),(37,'admin_interface','0017_change_list_filter_dropdown','2024-09-06 15:48:38.594071'),(38,'admin_interface','0018_theme_list_filter_sticky','2024-09-06 15:48:38.697577'),(39,'admin_interface','0019_add_form_sticky','2024-09-06 15:48:38.887993'),(40,'admin_interface','0020_module_selected_colors','2024-09-06 15:48:39.125333'),(41,'admin_interface','0021_file_extension_validator','2024-09-06 15:48:39.142641'),(42,'admin_interface','0022_add_logo_max_width_and_height','2024-09-06 15:48:39.782740'),(43,'admin_interface','0023_theme_foldable_apps','2024-09-06 15:48:39.903951'),(44,'admin_interface','0024_remove_theme_css','2024-09-06 15:48:39.971782'),(45,'admin_interface','0025_theme_language_chooser_control','2024-09-06 15:48:40.125481'),(46,'admin_interface','0026_theme_list_filter_highlight','2024-09-06 15:48:40.268678'),(47,'admin_interface','0027_theme_list_filter_removal_links','2024-09-06 15:48:40.401746'),(48,'admin_interface','0028_theme_show_fieldsets_as_tabs_and_more','2024-09-06 15:48:40.622397'),(49,'admin_interface','0029_theme_css_generic_link_active_color','2024-09-06 15:48:40.772670'),(50,'admin_interface','0030_theme_collapsible_stacked_inlines_and_more','2024-09-06 15:48:41.202764');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('1kcsnfcl4jug9d7f91nzyaw8pavkrref','.eJxVjEEOwiAQRe_C2hAGBItL9z0DGZhBqgaS0q6MdzckXej2v_f-WwTctxL2zmtYSFwFiNPvFjE9uQ5AD6z3JlOr27pEORR50C7nRvy6He7fQcFeRg1RA4JV2ZpEF8DECX1WYImc05OzwCZ74zLj2aD2CXR0AHlS7Nmh-HwB7u04Hg:1smhCs:UJO0KbqRENR2go3hXJsZ1J09ZZ5A7cmCJizLMEqsZL4','2024-09-20 22:13:30.163675'),('rudc82sk4a9tz21dzrg5fofr6zfk7zy4','.eJxVjMsOwiAQRf-FtSHQGYS6dN9vIMNjpGogKe3K-O_apAvd3nPOfQlP21r81vPi5yQuYhCn3y1QfOS6g3Snemsytrouc5C7Ig_a5dRSfl4P9--gUC_fmixAdqAdW0fAYALzyDzYsyYVs9MWCREBaUwpGmUNJpcZI-hRDS6K9wfhsDey:1sn4Oi:7qNt25k6xHHRGA7maKp9bUCcOjF7AhiNrpm7_-HOGH8','2024-09-21 22:59:16.153934');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_alerta`
--

DROP TABLE IF EXISTS `home_alerta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_alerta` (
  `id_alerta` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(150) NOT NULL,
  `descripcion` longtext NOT NULL,
  `fecha_emision` datetime(6) NOT NULL,
  `ubicacion` varchar(255) NOT NULL,
  `icono` varchar(100) NOT NULL,
  `tipo_alerta` varchar(50) NOT NULL,
  `imagenes` json NOT NULL,
  PRIMARY KEY (`id_alerta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_alerta`
--

LOCK TABLES `home_alerta` WRITE;
/*!40000 ALTER TABLE `home_alerta` DISABLE KEYS */;
/*!40000 ALTER TABLE `home_alerta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_comunicado`
--

DROP TABLE IF EXISTS `home_comunicado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_comunicado` (
  `id_comunicado` int NOT NULL AUTO_INCREMENT,
  `entidad` varchar(100) NOT NULL,
  `avatar_entidad` varchar(100) NOT NULL,
  `texto_comunicado` longtext NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `fecha_publicacion` datetime(6) NOT NULL,
  `likes` int unsigned NOT NULL,
  `compartido` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_comunicado`),
  CONSTRAINT `home_comunicado_chk_1` CHECK ((`likes` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_comunicado`
--

LOCK TABLES `home_comunicado` WRITE;
/*!40000 ALTER TABLE `home_comunicado` DISABLE KEYS */;
/*!40000 ALTER TABLE `home_comunicado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_contactoemergencia`
--

DROP TABLE IF EXISTS `home_contactoemergencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_contactoemergencia` (
  `id_contacto` int NOT NULL AUTO_INCREMENT,
  `nombre_servicio` varchar(100) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `icono` varchar(100) NOT NULL,
  `fecha_creacion` datetime(6) NOT NULL,
  PRIMARY KEY (`id_contacto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_contactoemergencia`
--

LOCK TABLES `home_contactoemergencia` WRITE;
/*!40000 ALTER TABLE `home_contactoemergencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `home_contactoemergencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_evento`
--

DROP TABLE IF EXISTS `home_evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_evento` (
  `id_evento` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(150) NOT NULL,
  `descripcion` longtext NOT NULL,
  `fecha_evento` date NOT NULL,
  `hora_evento` time(6) NOT NULL,
  `ubicacion` varchar(255) NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `favorito` tinyint(1) NOT NULL,
  `fecha_creacion` datetime(6) NOT NULL,
  PRIMARY KEY (`id_evento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_evento`
--

LOCK TABLES `home_evento` WRITE;
/*!40000 ALTER TABLE `home_evento` DISABLE KEYS */;
/*!40000 ALTER TABLE `home_evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_recoleccionbasura`
--

DROP TABLE IF EXISTS `home_recoleccionbasura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_recoleccionbasura` (
  `id_contacto` int NOT NULL AUTO_INCREMENT,
  `nombre_servicio` varchar(100) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `icono` varchar(100) NOT NULL,
  `fecha_creacion` datetime(6) NOT NULL,
  PRIMARY KEY (`id_contacto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_recoleccionbasura`
--

LOCK TABLES `home_recoleccionbasura` WRITE;
/*!40000 ALTER TABLE `home_recoleccionbasura` DISABLE KEYS */;
/*!40000 ALTER TABLE `home_recoleccionbasura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_serviciomunicipal`
--

DROP TABLE IF EXISTS `home_serviciomunicipal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_serviciomunicipal` (
  `id_servicio` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` longtext NOT NULL,
  `tipo_servicio` varchar(50) NOT NULL,
  `ubicacion` varchar(255) NOT NULL,
  `contacto` varchar(100) NOT NULL,
  `icono` varchar(100) NOT NULL,
  `fecha_creacion` datetime(6) NOT NULL,
  PRIMARY KEY (`id_servicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_serviciomunicipal`
--

LOCK TABLES `home_serviciomunicipal` WRITE;
/*!40000 ALTER TABLE `home_serviciomunicipal` DISABLE KEYS */;
/*!40000 ALTER TABLE `home_serviciomunicipal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_usuario`
--

DROP TABLE IF EXISTS `home_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_usuario` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `fecha_registro` datetime(6) NOT NULL,
  `rol` varchar(20) NOT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `telefono` (`telefono`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_usuario`
--

LOCK TABLES `home_usuario` WRITE;
/*!40000 ALTER TABLE `home_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `home_usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-07 18:03:29
