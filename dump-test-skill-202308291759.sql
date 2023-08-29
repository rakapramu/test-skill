-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: test-skill
-- ------------------------------------------------------
-- Server version	8.0.30

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2023_08_29_035603_create_products_table',1),(6,'2023_08_29_035617_create_transactions_table',1);
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
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint NOT NULL,
  `stock` bigint NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Ariane Bradtke',12822,31,'Nihil ut soluta.',NULL,NULL),(2,'Dr. Jeramy Miller PhD',55609,33,'Voluptatem quia praesentium dolorem.',NULL,NULL),(3,'Joaquin McClure DDS',73184,99,'Blanditiis atque voluptates.',NULL,NULL),(4,'Doris Prohaska',34633,85,'Est dolores ea officiis.',NULL,NULL),(5,'Tyler Flatley',14585,62,'Voluptas nobis maiores.',NULL,NULL),(6,'Dr. Candace Konopelski',24751,99,'Pariatur ab eligendi.',NULL,NULL),(7,'Amiya Cronin',20248,23,'Voluptas rerum dolor rerum.',NULL,NULL),(8,'Amos Schneider',23093,13,'Sunt rerum vero.',NULL,NULL),(9,'Candido Kunze',92046,44,'Magnam consequatur ut.',NULL,NULL),(10,'Mr. Leonardo Kirlin',26872,56,'Error praesentium.',NULL,NULL),(11,'Lee Kutch',77631,89,'Earum dolores ipsa.',NULL,NULL),(12,'Marge Hansen',82258,42,'Provident odit omnis facilis.',NULL,NULL),(13,'Timmothy Pagac',10230,47,'Officia minima consectetur.',NULL,NULL),(14,'Kristin Ullrich',85543,84,'Dolorem saepe dignissimos.',NULL,NULL),(15,'Mr. Carlos Reichert V',33192,14,'Et vitae corporis.',NULL,NULL),(16,'Diana Kuhn',63790,33,'Culpa dolores commodi quia repudiandae.',NULL,NULL),(17,'Giovanny Pfannerstill',56554,53,'Incidunt aut quibusdam.',NULL,NULL),(18,'Patrick Shields',25696,22,'Consequatur repellat dignissimos.',NULL,NULL),(19,'Maude Corwin DVM',40441,15,'Voluptas in mollitia.',NULL,NULL),(20,'Zelda Breitenberg',47572,59,'Quas dicta consectetur fugiat.',NULL,NULL),(21,'Ferne Lehner',35430,67,'A nobis iste.',NULL,NULL),(22,'Aylin Glover Jr.',54261,63,'Alias magnam dolores at.',NULL,NULL),(23,'Lucious Thompson',84866,65,'Quam nisi sed possimus.',NULL,NULL),(24,'Mr. Ansel Labadie',76210,11,'Expedita non consectetur aliquam.',NULL,NULL),(25,'Dr. Cassandra Ruecker',32576,47,'Eius dolore nulla.',NULL,NULL),(26,'Josie Schoen',53586,24,'Occaecati voluptates aut.',NULL,NULL),(27,'Flossie Leannon',12614,61,'Aut vel eaque et.',NULL,NULL),(28,'Alfonzo Stark',93944,72,'Nihil dolor.',NULL,NULL),(29,'Carolina Gulgowski',24195,21,'Cum et et molestiae.',NULL,NULL),(30,'Dr. Stuart Runte',70336,83,'Aliquid dicta incidunt soluta odit.',NULL,NULL),(31,'Dr. Earl Hoppe I',59296,82,'Pariatur at excepturi explicabo.',NULL,NULL),(32,'Archibald Wilderman II',79389,56,'Numquam delectus beatae architecto rem.',NULL,NULL),(33,'Eric Predovic',29227,70,'Provident voluptates et voluptas.',NULL,NULL),(34,'Haskell Ritchie',47634,93,'Eius quos amet.',NULL,NULL),(35,'Prof. Stanford Lakin',66060,13,'Et deleniti quibusdam.',NULL,NULL),(36,'Dr. Gina Bogisich',86161,50,'Dolor beatae dolorem labore.',NULL,NULL),(37,'Mr. Afton Nikolaus',49884,14,'Debitis aliquam labore.',NULL,NULL),(38,'Mrs. Taryn Collins III',36915,38,'Reprehenderit non distinctio.',NULL,NULL),(39,'Concepcion Okuneva',36220,60,'Velit doloremque aliquid quia.',NULL,NULL),(40,'Ms. Annie Lang Jr.',76501,95,'Vel qui.',NULL,NULL),(41,'Major Pfannerstill',11902,50,'Rerum et natus.',NULL,NULL),(42,'Jana Grant',15687,61,'Voluptatibus culpa et error.',NULL,NULL),(43,'Dr. Otto Jast',73932,62,'Nisi voluptates recusandae dolores.',NULL,NULL),(44,'Richie Aufderhar',76997,56,'Natus omnis quo.',NULL,NULL),(45,'Dr. Muhammad Rath V',54364,81,'Est sunt est nisi.',NULL,NULL),(46,'Tavares Homenick',11701,49,'Et consequatur debitis dignissimos.',NULL,NULL),(47,'Bailee Stark',65253,71,'Omnis ratione neque provident.',NULL,NULL),(48,'Hardy Kub',27893,81,'Consequatur voluptatem quisquam.',NULL,NULL),(49,'Filiberto Metz',61307,33,'Voluptatem exercitationem hic dolorum.',NULL,NULL),(50,'Eldred Quitzon',22487,81,'Harum beatae facere iure.',NULL,NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint NOT NULL,
  `quantity` int NOT NULL,
  `payment_amount` bigint NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transactions_product_id_foreign` (`product_id`),
  CONSTRAINT `transactions_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
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
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'test-skill'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-29 17:59:55
