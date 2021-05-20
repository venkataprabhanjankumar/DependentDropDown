-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add person details',7,'add_persondetails'),(26,'Can change person details',7,'change_persondetails'),(27,'Can delete person details',7,'delete_persondetails'),(28,'Can view person details',7,'view_persondetails'),(29,'Can add state',8,'add_state'),(30,'Can change state',8,'change_state'),(31,'Can delete state',8,'delete_state'),(32,'Can view state',8,'view_state'),(33,'Can add country',9,'add_country'),(34,'Can change country',9,'change_country'),(35,'Can delete country',9,'delete_country'),(36,'Can view country',9,'view_country'),(37,'Can add district',10,'add_district'),(38,'Can change district',10,'change_district'),(39,'Can delete district',10,'delete_district'),(40,'Can view district',10,'view_district'),(41,'Can add city',11,'add_city'),(42,'Can change city',11,'change_city'),(43,'Can delete city',11,'delete_city'),(44,'Can view city',11,'view_city');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$260000$ZXPRC4Gf7MgHMg8uEEU53d$KlJJ3p96qf6Nxz0JJxFkUVobdJpudHyn8jz8Cjy41HQ=','2021-05-13 04:50:56.948154',1,'prabhanjan_kumar_','','','venkataprabhanjankumar@gmail.com',1,1,'2021-05-13 04:50:13.570144');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-05-13 04:55:25.416238','1','India',1,'[{\"added\": {}}]',9,1),(2,'2021-05-13 04:55:43.207664','1','AndhraPradesh',1,'[{\"added\": {}}]',8,1),(3,'2021-05-13 04:56:06.237274','2','Telangana',1,'[{\"added\": {}}]',8,1),(4,'2021-05-13 04:57:31.436270','1','Prabhanjan Kumar',1,'[{\"added\": {}}]',7,1),(5,'2021-05-13 06:40:37.840441','2','USA',1,'[{\"added\": {}}]',9,1),(6,'2021-05-13 06:41:08.128404','3','NewYork',1,'[{\"added\": {}}]',8,1),(7,'2021-05-13 06:41:26.207584','4','Califonia',1,'[{\"added\": {}}]',8,1),(8,'2021-05-13 10:22:13.143578','1','Krishna',1,'[{\"added\": {}}]',10,1),(9,'2021-05-13 10:22:28.382997','2','Godavari',1,'[{\"added\": {}}]',10,1),(10,'2021-05-13 10:23:54.599638','1','Avanigadda',1,'[{\"added\": {}}]',11,1),(11,'2021-05-13 10:24:28.105113','2','Vijayawada',1,'[{\"added\": {}}]',11,1),(12,'2021-05-13 10:24:45.784663','3','Bimavaram',1,'[{\"added\": {}}]',11,1),(13,'2021-05-13 10:24:59.238028','4','Vizag',1,'[{\"added\": {}}]',11,1),(14,'2021-05-13 10:25:49.339564','3','Adilabad',1,'[{\"added\": {}}]',10,1),(15,'2021-05-13 10:26:15.294198','4','Hyderabad',1,'[{\"added\": {}}]',10,1),(16,'2021-05-13 10:45:13.288233','5','XyNewYork',1,'[{\"added\": {}}]',10,1),(17,'2021-05-13 10:47:49.871096','6','XZNewYork',1,'[{\"added\": {}}]',10,1),(18,'2021-05-13 10:48:09.016683','7','XyCalifonia',1,'[{\"added\": {}}]',10,1),(19,'2021-05-13 10:48:33.645831','8','XzCalifonia',1,'[{\"added\": {}}]',10,1),(20,'2021-05-13 12:53:01.884894','1','Prabhanjan Kumar',2,'[{\"changed\": {\"fields\": [\"District\", \"City\"]}}]',7,1),(21,'2021-05-13 14:19:01.545881','2','prabhanjan',3,'',7,1),(22,'2021-05-13 16:44:47.415442','5','Nirmal',1,'[{\"added\": {}}]',11,1),(23,'2021-05-13 16:45:00.449534','6','Chennur',1,'[{\"added\": {}}]',11,1),(24,'2021-05-13 16:45:49.858593','7','Uppal',1,'[{\"added\": {}}]',11,1),(25,'2021-05-13 16:46:28.147767','8','Secendrabad',1,'[{\"added\": {}}]',11,1),(26,'2021-05-13 16:46:54.915033','9','XyNewWorkCity1',1,'[{\"added\": {}}]',11,1),(27,'2021-05-13 16:47:15.918846','10','XyNewWorkCity2',1,'[{\"added\": {}}]',11,1),(28,'2021-05-13 16:47:35.013534','11','XzNewWorkCity1',1,'[{\"added\": {}}]',11,1),(29,'2021-05-13 16:47:53.042805','12','XzNewWorkCity2',1,'[{\"added\": {}}]',11,1),(30,'2021-05-13 16:48:28.179454','13','XyCalifoniaCity1',1,'[{\"added\": {}}]',11,1),(31,'2021-05-13 16:48:42.178862','14','XyCalifoniaCity2',1,'[{\"added\": {}}]',11,1),(32,'2021-05-13 16:49:03.582397','15','XzCalifoniaCity1',1,'[{\"added\": {}}]',11,1),(33,'2021-05-13 16:49:21.909556','16','XzCalifoniaCity2',1,'[{\"added\": {}}]',11,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(11,'register','city'),(9,'register','country'),(10,'register','district'),(7,'register','persondetails'),(8,'register','state'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-05-13 04:48:05.117340'),(2,'auth','0001_initial','2021-05-13 04:48:05.737531'),(3,'admin','0001_initial','2021-05-13 04:48:05.879439'),(4,'admin','0002_logentry_remove_auto_add','2021-05-13 04:48:05.895883'),(5,'admin','0003_logentry_add_action_flag_choices','2021-05-13 04:48:05.895883'),(6,'contenttypes','0002_remove_content_type_name','2021-05-13 04:48:06.162388'),(7,'auth','0002_alter_permission_name_max_length','2021-05-13 04:48:06.253887'),(8,'auth','0003_alter_user_email_max_length','2021-05-13 04:48:06.285686'),(9,'auth','0004_alter_user_username_opts','2021-05-13 04:48:06.285686'),(10,'auth','0005_alter_user_last_login_null','2021-05-13 04:48:06.364578'),(11,'auth','0006_require_contenttypes_0002','2021-05-13 04:48:06.364578'),(12,'auth','0007_alter_validators_add_error_messages','2021-05-13 04:48:06.380312'),(13,'auth','0008_alter_user_username_max_length','2021-05-13 04:48:06.443545'),(14,'auth','0009_alter_user_last_name_max_length','2021-05-13 04:48:06.506872'),(15,'auth','0010_alter_group_name_max_length','2021-05-13 04:48:06.522568'),(16,'auth','0011_update_proxy_permissions','2021-05-13 04:48:06.538445'),(17,'auth','0012_alter_user_first_name_max_length','2021-05-13 04:48:06.600985'),(18,'sessions','0001_initial','2021-05-13 04:48:06.648202'),(19,'register','0001_initial','2021-05-13 04:48:50.889147'),(20,'register','0002_city_district','2021-05-13 10:17:39.743358'),(21,'register','0003_auto_20210513_1821','2021-05-13 12:52:00.359783');
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
INSERT INTO `django_session` VALUES ('8i8kizxotrfabvfdrxkqrlitdblzxau7','.eJxVjEEOwiAQRe_C2pCBCUhcuvcMZIYBqRpISrtqvLs26UK3_733NxVpXWpcR57jJOqijDr9bkzpmdsO5EHt3nXqbZkn1ruiDzr0rUt-XQ_376DSqN8awREURrSOLZwhFEOFwHu0QsZmAicUbCmQxSeykggxGWThDBJYvT_hszix:1lh3JI:AdS7bXVwXsB5PI01mhHNeYRMCXKr5rHow5Gfmq2Q98o','2021-05-27 04:50:56.952803');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register_city`
--

DROP TABLE IF EXISTS `register_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `register_city` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cityName` varchar(40) NOT NULL,
  `city_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `register_city_city_id_0504adb4_fk_register_district_id` (`city_id`),
  CONSTRAINT `register_city_city_id_0504adb4_fk_register_district_id` FOREIGN KEY (`city_id`) REFERENCES `register_district` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register_city`
--

LOCK TABLES `register_city` WRITE;
/*!40000 ALTER TABLE `register_city` DISABLE KEYS */;
INSERT INTO `register_city` VALUES (1,'Avanigadda',1),(2,'Vijayawada',1),(3,'Bimavaram',2),(4,'Vizag',2),(5,'Nirmal',3),(6,'Chennur',3),(7,'Uppal',4),(8,'Secendrabad',4),(9,'XyNewWorkCity1',5),(10,'XyNewWorkCity2',5),(11,'XzNewWorkCity1',6),(12,'XzNewWorkCity2',6),(13,'XyCalifoniaCity1',7),(14,'XyCalifoniaCity2',7),(15,'XzCalifoniaCity1',8),(16,'XzCalifoniaCity2',8);
/*!40000 ALTER TABLE `register_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register_country`
--

DROP TABLE IF EXISTS `register_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `register_country` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `countryName` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register_country`
--

LOCK TABLES `register_country` WRITE;
/*!40000 ALTER TABLE `register_country` DISABLE KEYS */;
INSERT INTO `register_country` VALUES (1,'India'),(2,'USA');
/*!40000 ALTER TABLE `register_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register_district`
--

DROP TABLE IF EXISTS `register_district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `register_district` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `districtName` varchar(40) NOT NULL,
  `district_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `register_district_district_id_56e9f1e3_fk_register_state_id` (`district_id`),
  CONSTRAINT `register_district_district_id_56e9f1e3_fk_register_state_id` FOREIGN KEY (`district_id`) REFERENCES `register_state` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register_district`
--

LOCK TABLES `register_district` WRITE;
/*!40000 ALTER TABLE `register_district` DISABLE KEYS */;
INSERT INTO `register_district` VALUES (1,'Krishna',1),(2,'Godavari',1),(3,'Adilabad',2),(4,'Hyderabad',2),(5,'XyNewYork',3),(6,'XZNewYork',3),(7,'XyCalifonia',4),(8,'XzCalifonia',4);
/*!40000 ALTER TABLE `register_district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register_persondetails`
--

DROP TABLE IF EXISTS `register_persondetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `register_persondetails` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `country` varchar(40) NOT NULL,
  `state` varchar(40) NOT NULL,
  `city` varchar(40) NOT NULL,
  `district` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register_persondetails`
--

LOCK TABLES `register_persondetails` WRITE;
/*!40000 ALTER TABLE `register_persondetails` DISABLE KEYS */;
INSERT INTO `register_persondetails` VALUES (1,'Prabhanjan Kumar','2021-05-02','India','AndhraPradesh','Avanigadda','Krishna'),(3,'Sampath','2021-05-02','India','AndhraPradesh','Vijayawada','Krishna'),(4,'Ramesh','2021-05-02','India','AndhraPradesh','Bimavaram','Godavari'),(5,'Ramesh','2021-05-02','India','AndhraPradesh','Vijayawada','Krishna'),(6,'Ravi','2021-05-23','India','AndhraPradesh','Vizag','Godavari'),(7,'Pandu','2021-05-09','India','AndhraPradesh','Vizag','Godavari'),(8,'Pandu','2021-05-09','India','AndhraPradesh','Vizag','Godavari'),(9,'Pandu','2021-05-09','India','AndhraPradesh','Vizag','Godavari'),(10,'Pandu','2021-05-09','India','AndhraPradesh','Vizag','Godavari'),(11,'Pandu','2021-05-09','India','AndhraPradesh','Vizag','Godavari'),(12,'Pandu','2021-05-09','India','AndhraPradesh','Vizag','Godavari'),(13,'Pandu','2021-05-09','India','AndhraPradesh','Vizag','Godavari'),(14,'Prabhanjan Kumar','2021-05-22','India','AndhraPradesh','Vijayawada','Krishna'),(15,'Prabhanjan Kumar','2021-05-22','India','AndhraPradesh','Vijayawada','Krishna'),(16,'prabhanjan','2021-05-09','India','AndhraPradesh','Vijayawada','Krishna'),(17,'prabhanjan','2021-05-09','India','AndhraPradesh','Vijayawada','Krishna'),(18,'prabhanjan','2021-05-09','India','AndhraPradesh','Vijayawada','Krishna'),(19,'prabhanjan','2021-05-16','India','AndhraPradesh','Avanigadda','Krishna'),(20,'Prabhanjan Kumar','2021-05-26','USA','Califonia','XzCalifoniaCity2','XzCalifonia'),(21,'Ramesh','2021-05-26','India','Telangana','Uppal','Hyderabad'),(22,'Ramesh','2021-05-26','USA','NewYork','XzNewWorkCity2','XZNewYork'),(23,'Ramesh Babu','2011-12-16','USA','Califonia','XyCalifoniaCity1','XyCalifonia');
/*!40000 ALTER TABLE `register_persondetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register_state`
--

DROP TABLE IF EXISTS `register_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `register_state` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `stateName` varchar(40) NOT NULL,
  `country_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `register_state_country_id_30a34f8c_fk_register_country_id` (`country_id`),
  CONSTRAINT `register_state_country_id_30a34f8c_fk_register_country_id` FOREIGN KEY (`country_id`) REFERENCES `register_country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register_state`
--

LOCK TABLES `register_state` WRITE;
/*!40000 ALTER TABLE `register_state` DISABLE KEYS */;
INSERT INTO `register_state` VALUES (1,'AndhraPradesh',1),(2,'Telangana',1),(3,'NewYork',2),(4,'Califonia',2);
/*!40000 ALTER TABLE `register_state` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-13 22:31:36
