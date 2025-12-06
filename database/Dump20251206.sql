-- MySQL dump 10.13  Distrib 8.0.41, for macos15 (arm64)
--
-- Host: 127.0.0.1    Database: laravel
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `champion_hes`
--

DROP TABLE IF EXISTS `champion_hes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `champion_hes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `he1` varchar(45) DEFAULT NULL,
  `he2` varchar(45) DEFAULT NULL,
  `he3` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `champion_hes`
--

LOCK TABLES `champion_hes` WRITE;
/*!40000 ALTER TABLE `champion_hes` DISABLE KEYS */;
INSERT INTO `champion_hes` VALUES (1,'Aurelion Sol','7','Ác Long','Targon',NULL),(2,'Baron Nashor','7','Hư Không','Tai Ương',NULL),(3,'Brock','7','Ixtal',NULL,NULL),(4,'Ryze','7','Cổ Ngữ',NULL,NULL),(5,'Sylas','7','Kẻ Phá Xiềng','Pháp Sư','Vệ Quân'),(6,'Zaahen','7','Darkin','Bất Tử',NULL),(7,'Aatrox','5','Darkin','Quỷ Kiếm','Đồ Tể'),(8,'Annie','5','Đứa Trẻ Bóng Tối','Pháp Sư',NULL),(9,'Azir','5','Shurima','Hoàng Đế','Nhiễu Loạn'),(10,'Fiddlesticks','5','Bù Nhìn','Chinh Phạt',NULL),(11,'Galio','5','Demacia','Siêu Hùng',NULL),(12,'Kindred','5','Vĩnh Hằng','Cực Tốc',NULL),(13,'Lucian & Senna','5','Linh Hồn','Xạ Thủ',NULL),(14,'Mel','5','Noxus','Nhiễu Loạn',NULL),(15,'Ornn','5','Thần Rèn','Cảnh Vệ\nCảnh Vệ\nCảnh Vệ',NULL),(16,'Sett','5','Ionia\n','Đại Ca',NULL),(17,'Shyvana','5','Long Nữ','Dũng Sĩ',NULL),(18,'T-Hex','5','Cơ Giáp Hex','Piltover','Xạ Thủ'),(19,'Tahm Kench','5','Bilgewater','Phàm Ăn','Đấu Sĩ'),(20,'Thresh','5','Đảo Bóng Đêm','Cảnh Vệ',NULL),(21,'Volibear','5','Freljord\nFreljord','Đấu Sĩ\n',NULL),(22,'Xerath','5','Shurima','Thăng Hoa',NULL),(23,'Ziggs','5','Zaun','Yordle','Viễn Kích'),(24,'Zilean','5','Giám Hộ','Thuật Sĩ',NULL),(25,'Ambessa','4','Noxus','Chinh Phạt',NULL),(26,'Bel\'Veth','4','Hư Không','Đồ Tể\nĐồ Tể',NULL),(27,'Braum','4','Freljord','Cảnh Vệ',NULL),(28,'Diana','4','Targon',NULL,NULL),(29,'Fizz','4','Bilgewater','Yordle',NULL),(30,'Garen','4','Demacia','Vệ Quân',NULL),(31,'Kai\'Sa','4','Cộng Sinh','Hư Không','Viễn Kích'),(32,'Kalista','4','Đảo Bóng Đêm','Chinh Phạt',NULL),(33,'Lissandra','4','Freljord','Thuật Sĩ',NULL),(34,'Lux','4','Demacia','Pháp Sư',NULL),(35,'Miss Fortune','4','Bilgewater','Xạ Thủ',NULL),(36,'Nasus','4','Shurima',NULL,NULL),(37,'Ngộ Không','4','Ionia','Đấu Sĩ',NULL),(38,'Nidalee','4','Ixtal','Nữ Thợ Săn',NULL),(39,'Renekton','4','Shurima',NULL,NULL),(40,'Seraphine','4','Piltover','Nhiễu Loạn',NULL),(41,'Singed','4','Zaun','Dũng Sĩ',NULL),(42,'Skarner','4','Ixtal',NULL,NULL),(43,'Swain','4','Noxus','Pháp Sư','Dũng Sĩ'),(44,'Sứ Giả Khe Nứt','4','Hư Không','Đấu Sĩ',NULL),(45,'Taric','4','Targon',NULL,NULL),(46,'Veigar','4','Yordle','Pháp Sư',NULL),(47,'Warwick','4','Zaun','Cực Tốc',NULL),(48,'Yone','4','Ionia','Đồ Tể',NULL),(49,'Yunara','4','Ionia','Cực Tốc',NULL),(50,'Ahri','3','Ionia','Pháp Sư',NULL),(51,'Darius','3','Noxus','Vệ Quân',NULL),(52,'Dr. Mundo','3','Zaun','Đấu Sĩ',NULL),(53,'Draven','3','Noxus','Cực Tốc',NULL),(54,'Gangplank','3','Bilgewater','Đồ Tể','Chinh Phạt'),(55,'Gwen','3','Đảo Bóng Đêm','Nhiễu Loạn',NULL),(56,'Jinx','3','Zaun','Xạ Thủ',NULL),(57,'Kennen','3','Ionia','Yordle','Vệ Quân'),(58,'Kobuko & Yuumi','3','Yordle','Đấu Sĩ','Thuật Sĩ'),(59,'LeBlanc','3','Noxus','Thuật Sĩ',NULL),(60,'Leona','3','Targon',NULL,NULL),(61,'Loris','3','Piltover','Cảnh Vệ',NULL),(62,'Malzahar','3','Hư Không','Nhiễu Loạn',NULL),(63,'Milio','3','Ixtal','Thuật Sĩ',NULL),(64,'Nautilus','3','Bilgewater','Dũng Sĩ','Cảnh Vệ'),(65,'Sejuani','3','Freljord','Vệ Quân',NULL),(66,'Vayne','3','Demacia','Viễn Kích',NULL),(67,'Zoe','3','Targon',NULL,NULL),(68,'Aphelios','2','Targon',NULL,NULL),(69,'Ashe','2','Freljord','Cực Tốc',NULL),(70,'Bard','2','Ông Bụt',NULL,NULL),(71,'Cho\'Gath','2','Hư Không','Dũng Sĩ',NULL),(72,'Ekko','2','Zaun','Nhiễu Loạn',NULL),(73,'Graves','2','Bilgewater','Xạ Thủ',NULL),(74,'Neeko','2','Ixtal','Pháp Sư','Vệ Quân'),(75,'Orianna','2','Piltover','Thuật Sĩ',NULL),(76,'Poppy','2','Demacia','Yordle','Dũng Sĩ'),(77,'Rek\'Sai','2','Hư Không','Chinh Phạt',NULL),(78,'Sion','2','Noxus','Đấu Sĩ',NULL),(79,'Teemo','2','Yordle','Viễn Kích',NULL),(80,'Tristana','2','Yordle','Xạ Thủ',NULL),(81,'Tryndamere','2','Freljord','Đồ Tể',NULL),(82,'Twisted Fate','2','Bilgewater','Cực Tốc',NULL),(83,'Vi','2','Piltover','Zaun','Vệ Quân'),(84,'Xin Zhao','2','Demacia','Ionia','Cảnh Vệ'),(85,'Yasuo','2','Ionia','Đồ Tể',NULL),(86,'Yorick','2','Đảo Bóng Đêm','Cảnh Vệ',NULL),(87,'Anivia','1','Freljord','Thuật Sĩ',NULL),(88,'Blitzcrank','1','Zaun','Dũng Sĩ',NULL),(89,'Briar','1','Noxus','Đồ Tể','Dũng Sĩ'),(90,'Caitlyn','1','Piltover','Viễn Kích',NULL),(91,'Illaoi','1','Bilgewater','Đấu Sĩ',NULL),(92,'Jarvan IV\nJarvan IV\nJarvan IV','1','Demacia','Vệ Quân',NULL),(93,'Jhin','1','Ionia','Xạ Thủ',NULL),(94,'Kog\'Maw','1','Hư Không','Pháp Sư','Viễn Kích'),(95,'Lulu','1','Yordle','Pháp Sư',NULL),(96,'Qiyana','1','Ixtal','Đồ Tể',NULL),(97,'Rumble','1','Yordle','Vệ Quân',NULL),(98,'Shen','1','Ionia','Đấu Sĩ',NULL),(99,'Sona','1','Demacia\nDemacia','Thuật Sĩ',NULL),(100,'Viego','1','Đảo Bóng Đêm','Cực Tốc',NULL);
/*!40000 ALTER TABLE `champion_hes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `champions`
--

DROP TABLE IF EXISTS `champions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `champions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dmg_basic` double NOT NULL DEFAULT '0',
  `dmg_ulti_physical` double NOT NULL DEFAULT '0',
  `dmg_ulti_magic` double NOT NULL DEFAULT '0',
  `per_dmg_physical` double NOT NULL DEFAULT '0',
  `per_dmg_magic` double NOT NULL DEFAULT '0',
  `armor_physical` double NOT NULL DEFAULT '0',
  `armor_magic` double NOT NULL DEFAULT '0',
  `health` double NOT NULL DEFAULT '0',
  `mana` double NOT NULL DEFAULT '0',
  `speed` double NOT NULL DEFAULT '0',
  `crit` double NOT NULL DEFAULT '0',
  `suck_blood` double NOT NULL DEFAULT '0',
  `per_armor_physical` double NOT NULL DEFAULT '0',
  `per_armor_magic` double NOT NULL DEFAULT '0',
  `per_health` double NOT NULL DEFAULT '0',
  `per_mana` double NOT NULL DEFAULT '0',
  `per_speed` double NOT NULL DEFAULT '0',
  `per_crit` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `champions`
--

LOCK TABLES `champions` WRITE;
/*!40000 ALTER TABLE `champions` DISABLE KEYS */;
INSERT INTO `champions` VALUES (1,'Anivia',30,0,325,0,0,0,0,0,40,0.7,0.25,0,0,0,0,0,0,0,NULL,NULL);
/*!40000 ALTER TABLE `champions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hes`
--

DROP TABLE IF EXISTS `hes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `he` varchar(45) DEFAULT NULL,
  `dong` varchar(45) DEFAULT NULL,
  `bac` varchar(45) DEFAULT NULL,
  `vang` varchar(45) DEFAULT NULL,
  `kimcuong` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hes`
--

LOCK TABLES `hes` WRITE;
/*!40000 ALTER TABLE `hes` DISABLE KEYS */;
INSERT INTO `hes` VALUES (1,'Bilgewater','3','5','7','10'),(2,'Chinh Phạt\n','2','3','4','5'),(3,'Cảnh Vệ','2','3','4','5'),(4,'Cực Tốc','2','3','4','5'),(5,'Darkin','1','2','3',NULL),(6,'Demacia','3','5','7','11'),(7,'Dũng Sĩ','2','4','6',NULL),(8,'Freljord','3','5','7',NULL),(9,'Hư Không','2','4','6','9'),(10,'Ionia','3','5','7','10'),(11,'Ixtal','3','5','7',NULL),(12,'Nhiễu Loạn','2',NULL,'4',NULL),(13,'Noxus','3','5','7','10'),(14,'Pháp Sư\n','2','4','6',NULL),(15,'Piltover','2','4','6',NULL),(16,'Shurima','2',NULL,'3','4'),(17,'Thuật Sĩ','2',NULL,'4',NULL),(18,'Viễn Kích','2','3','4','5'),(19,'Vệ Quân','2','4','6',NULL),(20,'Xạ Thủ','2',NULL,'4',NULL),(21,'Yordle','2','4','8','10'),(22,'Zaun','3','5','7',NULL),(23,'Đảo Bóng Đêm','2','3','4','5'),(24,'Đấu Sĩ','2','4','6',NULL),(25,'Đồ Tể','2','4','6',NULL);
/*!40000 ALTER TABLE `hes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dmg_physical` double DEFAULT NULL,
  `dmg_magic` double DEFAULT NULL,
  `armor_physical` double DEFAULT NULL,
  `armor_magic` double DEFAULT NULL,
  `health` double DEFAULT NULL,
  `mana` double DEFAULT NULL,
  `speed` double DEFAULT NULL,
  `suck_blood` double DEFAULT NULL,
  `per_crit` double DEFAULT NULL,
  `per_dmg_physical` double DEFAULT NULL,
  `per_dmg_magic` double DEFAULT NULL,
  `per_armor_physical` double DEFAULT NULL,
  `per_armor_magic` double DEFAULT NULL,
  `per_health` double DEFAULT NULL,
  `per_mana` double DEFAULT NULL,
  `per_speed` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `per_dmg_physical_final` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `per_dmg_magic_final` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `per_dmg_reduce` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amplification` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,'cuongdao',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.1,NULL,NULL,NULL,NULL,0.1,NULL,NULL,NULL,NULL,NULL,NULL),(2,'gangbaothach',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.35,NULL,0.35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'huyetkiem',NULL,NULL,NULL,20,NULL,NULL,NULL,0.2,NULL,0.15,0.15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'giapmau',NULL,NULL,NULL,NULL,500,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'truonghuvo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'buaxanh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.15,0.15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0.1','0.1',NULL,NULL),(7,'giapgai',NULL,NULL,65,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.9,NULL,NULL,NULL,NULL,NULL,NULL,'0.05',NULL),(8,'deathblade',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0.1');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2025_11_24_124526_create_champions_table',1),(5,'2025_11_24_124534_create_items_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('jR4I18vPKkV15IY96jOZYhzY6OEFxBd3V0WHIg8d',NULL,'192.168.65.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRm1weUZrMlg1c1o1Wml0NWtaZm5TMzlEVUpsMXUzUTVZemEzWGhqeCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MTMxOiJodHRwOi8vbG9jYWxob3N0Lz9jaGFtcGlvbj1hbml2aWEmZW5lbXk9YW5pdmlhJml0ZW1zQ2hhbXBpb24lNUIwJTVEPXF1eSVFMSVCQiU4MW4lMjB0ciVDNiVCMCVFMSVCQiVBM25nJTIwdGhpJUMzJUFBbiUyMHRoJUUxJUJBJUE3biI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1764066708),('TqQilsaBe0k4le54hjL5IvejTEO1vDWSa5KlGmNd',NULL,'192.168.65.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoieEdjZ3BjZ09VaUhnNG1YU1JtYnhjTnZndVlPRHBvNUdWemVmOGhVbyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3QvdGVzdCI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1764822358);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2025-12-06 15:41:11
