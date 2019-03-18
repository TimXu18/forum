# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.61)
# Database: forum
# Generation Time: 2019-03-18 11:49:06 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table activities
# ------------------------------------------------------------

DROP TABLE IF EXISTS `activities`;

CREATE TABLE `activities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subject_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `subject_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activities_subject_id_index` (`subject_id`),
  KEY `activities_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `activities` WRITE;
/*!40000 ALTER TABLE `activities` DISABLE KEYS */;

INSERT INTO `activities` (`id`, `subject_id`, `user_id`, `subject_type`, `type`, `created_at`, `updated_at`)
VALUES
	(1,31,61,'App\\Reply','created_reply','2018-02-03 12:03:08','2018-02-03 12:03:08'),
	(2,32,61,'App\\Reply','created_reply','2018-02-03 12:03:44','2018-02-03 12:03:44'),
	(3,33,62,'App\\Reply','created_reply','2018-02-03 12:05:03','2018-02-03 12:05:03'),
	(4,34,63,'App\\Reply','created_reply','2018-03-10 04:54:21','2018-03-10 04:54:21'),
	(5,35,63,'App\\Reply','created_reply','2018-03-10 06:04:28','2018-03-10 06:04:28'),
	(6,36,63,'App\\Reply','created_reply','2018-03-10 06:32:51','2018-03-10 06:32:51'),
	(7,37,63,'App\\Reply','created_reply','2018-03-10 06:33:02','2018-03-10 06:33:02'),
	(8,38,63,'App\\Reply','created_reply','2018-03-10 06:33:07','2018-03-10 06:33:07'),
	(9,39,63,'App\\Reply','created_reply','2018-03-10 06:34:55','2018-03-10 06:34:55'),
	(10,40,61,'App\\Reply','created_reply','2018-03-10 06:35:15','2018-03-10 06:35:15'),
	(12,42,61,'App\\Reply','created_reply','2018-03-10 06:35:59','2018-03-10 06:35:59'),
	(13,43,63,'App\\Reply','created_reply','2018-03-11 06:16:25','2018-03-11 06:16:25'),
	(14,44,63,'App\\Reply','created_reply','2018-03-11 06:17:21','2018-03-11 06:17:21'),
	(15,45,63,'App\\Reply','created_reply','2018-03-11 06:44:21','2018-03-11 06:44:21'),
	(16,46,63,'App\\Reply','created_reply','2018-03-11 07:07:07','2018-03-11 07:07:07'),
	(17,47,63,'App\\Reply','created_reply','2018-03-11 07:07:17','2018-03-11 07:07:17'),
	(18,48,63,'App\\Reply','created_reply','2018-03-11 07:07:29','2018-03-11 07:07:29'),
	(20,50,61,'App\\Reply','created_reply','2018-03-11 23:10:46','2018-03-11 23:10:46'),
	(21,51,61,'App\\Reply','created_reply','2018-03-11 23:22:03','2018-03-11 23:22:03'),
	(22,52,61,'App\\Reply','created_reply','2018-03-12 00:47:39','2018-03-12 00:47:39'),
	(23,53,61,'App\\Reply','created_reply','2018-03-12 06:47:31','2018-03-12 06:47:31'),
	(24,54,61,'App\\Reply','created_reply','2018-03-30 07:01:48','2018-03-30 07:01:48'),
	(25,55,61,'App\\Reply','created_reply','2018-03-30 07:01:53','2018-03-30 07:01:53'),
	(26,56,61,'App\\Reply','created_reply','2018-03-30 08:14:00','2018-03-30 08:14:00'),
	(27,57,61,'App\\Reply','created_reply','2018-03-30 08:14:02','2018-03-30 08:14:02'),
	(28,58,61,'App\\Reply','created_reply','2018-03-30 08:14:06','2018-03-30 08:14:06'),
	(29,59,61,'App\\Reply','created_reply','2018-03-30 08:15:36','2018-03-30 08:15:36'),
	(30,60,61,'App\\Reply','created_reply','2018-03-30 08:15:39','2018-03-30 08:15:39'),
	(31,61,61,'App\\Reply','created_reply','2018-03-30 08:15:43','2018-03-30 08:15:43'),
	(32,62,61,'App\\Reply','created_reply','2018-03-30 08:20:09','2018-03-30 08:20:09'),
	(33,63,61,'App\\Reply','created_reply','2018-03-30 08:20:11','2018-03-30 08:20:11'),
	(34,64,61,'App\\Reply','created_reply','2018-03-30 08:26:09','2018-03-30 08:26:09'),
	(35,65,61,'App\\Reply','created_reply','2018-03-30 08:26:12','2018-03-30 08:26:12'),
	(38,68,61,'App\\Reply','created_reply','2018-03-30 08:30:29','2018-03-30 08:30:29'),
	(39,69,61,'App\\Reply','created_reply','2018-03-30 08:31:40','2018-03-30 08:31:40'),
	(42,72,61,'App\\Reply','created_reply','2018-03-30 08:31:47','2018-03-30 08:31:47'),
	(43,73,61,'App\\Reply','created_reply','2018-03-30 08:31:57','2018-03-30 08:31:57'),
	(47,77,61,'App\\Reply','created_reply','2018-03-30 08:32:34','2018-03-30 08:32:34'),
	(48,78,61,'App\\Reply','created_reply','2018-03-30 08:32:37','2018-03-30 08:32:37'),
	(49,79,61,'App\\Reply','created_reply','2018-03-30 08:32:41','2018-03-30 08:32:41'),
	(50,80,61,'App\\Reply','created_reply','2018-03-30 08:32:43','2018-03-30 08:32:43'),
	(51,81,61,'App\\Reply','created_reply','2018-03-30 08:32:55','2018-03-30 08:32:55'),
	(52,82,61,'App\\Reply','created_reply','2018-03-30 08:32:57','2018-03-30 08:32:57'),
	(53,83,61,'App\\Reply','created_reply','2018-03-30 08:33:36','2018-03-30 08:33:36'),
	(54,84,61,'App\\Reply','created_reply','2018-03-30 08:33:38','2018-03-30 08:33:38'),
	(55,85,61,'App\\Reply','created_reply','2018-03-30 08:33:42','2018-03-30 08:33:42'),
	(56,86,61,'App\\Reply','created_reply','2018-03-30 08:34:03','2018-03-30 08:34:03'),
	(57,87,61,'App\\Reply','created_reply','2018-03-30 08:34:07','2018-03-30 08:34:07'),
	(58,88,61,'App\\Reply','created_reply','2018-03-30 08:36:49','2018-03-30 08:36:49'),
	(59,89,61,'App\\Reply','created_reply','2018-03-30 08:40:47','2018-03-30 08:40:47'),
	(60,90,61,'App\\Reply','created_reply','2018-03-30 08:49:09','2018-03-30 08:49:09'),
	(61,31,61,'App\\Thread','created_thread','2018-03-30 12:52:39','2018-03-30 12:52:39'),
	(62,91,61,'App\\Reply','created_reply','2018-03-30 13:10:48','2018-03-30 13:10:48'),
	(63,32,61,'App\\Thread','created_thread','2018-03-30 13:11:04','2018-03-30 13:11:04'),
	(64,92,61,'App\\Reply','created_reply','2018-04-01 00:22:56','2018-04-01 00:22:56'),
	(65,93,61,'App\\Reply','created_reply','2018-04-07 02:14:44','2018-04-07 02:14:44'),
	(66,94,61,'App\\Reply','created_reply','2018-04-07 02:20:30','2018-04-07 02:20:30'),
	(67,95,61,'App\\Reply','created_reply','2018-04-07 02:31:58','2018-04-07 02:31:58'),
	(68,96,61,'App\\Reply','created_reply','2018-04-07 08:15:39','2018-04-07 08:15:39'),
	(72,100,61,'App\\Reply','created_reply','2018-04-08 07:48:29','2018-04-08 07:48:29'),
	(73,101,61,'App\\Reply','created_reply','2018-04-08 07:48:47','2018-04-08 07:48:47'),
	(74,102,61,'App\\Reply','created_reply','2018-04-08 07:49:42','2018-04-08 07:49:42'),
	(78,104,62,'App\\Reply','created_reply','2019-03-18 11:44:07','2019-03-18 11:44:07'),
	(80,105,62,'App\\Reply','created_reply','2019-03-18 11:44:55','2019-03-18 11:44:55');

/*!40000 ALTER TABLE `activities` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table channels
# ------------------------------------------------------------

DROP TABLE IF EXISTS `channels`;

CREATE TABLE `channels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `channels` WRITE;
/*!40000 ALTER TABLE `channels` DISABLE KEYS */;

INSERT INTO `channels` (`id`, `name`, `slug`, `created_at`, `updated_at`)
VALUES
	(1,'saepe','saepe','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(2,'reprehenderit','reprehenderit','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(3,'libero','libero','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(4,'enim','enim','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(5,'fugit','fugit','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(6,'quis','quis','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(7,'nesciunt','nesciunt','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(8,'neque','neque','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(9,'dolorem','dolorem','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(10,'blanditiis','blanditiis','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(11,'fugit','fugit','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(12,'earum','earum','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(13,'aut','aut','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(14,'quis','quis','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(15,'aut','aut','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(16,'perspiciatis','perspiciatis','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(17,'dolorem','dolorem','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(18,'consectetur','consectetur','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(19,'rerum','rerum','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(20,'aperiam','aperiam','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(21,'corrupti','corrupti','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(22,'consequatur','consequatur','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(23,'accusamus','accusamus','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(24,'similique','similique','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(25,'esse','esse','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(26,'voluptates','voluptates','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(27,'repellendus','repellendus','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(28,'velit','velit','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(29,'tempora','tempora','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(30,'blanditiis','blanditiis','2018-02-03 02:03:37','2018-02-03 02:03:37');

/*!40000 ALTER TABLE `channels` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table favorites
# ------------------------------------------------------------

DROP TABLE IF EXISTS `favorites`;

CREATE TABLE `favorites` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `favorited_id` int(10) unsigned NOT NULL,
  `favorited_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `favorites_user_id_favorited_id_favorited_type_unique` (`user_id`,`favorited_id`,`favorited_type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(161,'2014_10_12_000000_create_users_table',1),
	(162,'2014_10_12_100000_create_password_resets_table',1),
	(163,'2017_08_05_124022_create_threads_table',1),
	(164,'2017_08_05_125057_create_replies_table',1),
	(165,'2017_08_13_062357_create_channels_table',1),
	(166,'2017_09_02_230600_create_favorites_table',1),
	(167,'2017_09_23_031038_create_activities_table',1),
	(168,'2018_01_06_135135_create_thread_subscriptions_table',1),
	(169,'2018_01_20_052637_create_notifications_table',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table notifications
# ------------------------------------------------------------

DROP TABLE IF EXISTS `notifications`;

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` int(10) unsigned NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_id_notifiable_type_index` (`notifiable_id`,`notifiable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;

INSERT INTO `notifications` (`id`, `type`, `notifiable_id`, `notifiable_type`, `data`, `read_at`, `created_at`, `updated_at`)
VALUES
	('0179a457-9525-431d-ad00-7a116e1797dc','App\\Notifications\\ThreadWasUpdated',61,'App\\User','{\"message\":\"janedoe replied to Dolores dolores nulla et molestias inventore nisi.\",\"link\":\"\\/threads\\/saepe\\/1#reply-38\"}','2018-03-10 06:33:14','2018-03-10 06:33:07','2018-03-10 06:33:14'),
	('05a1102a-91ac-4feb-8289-f6a59ec6b0cb','App\\Notifications\\ThreadWasUpdated',61,'App\\User','{\"message\":\"janedoe replied to Dolores dolores nulla et molestias inventore nisi.\",\"link\":\"\\/threads\\/saepe\\/1#reply-43\"}',NULL,'2018-03-11 06:16:25','2018-03-11 06:16:25'),
	('0f8a19ff-4ec1-4dce-abe5-13106225769c','App\\Notifications\\ThreadWasUpdated',61,'App\\User','{\"message\":\"janedoe replied to Dolores dolores nulla et molestias inventore nisi.\",\"link\":\"\\/threads\\/saepe\\/1#reply-37\"}','2018-03-10 06:33:40','2018-03-10 06:33:02','2018-03-10 06:33:40'),
	('1995e988-db8f-44b7-b452-418a3332a598','App\\Notifications\\ThreadWasUpdated',62,'App\\User','{\"message\":\"tim replied to Voluptate sed laborum expedita ratione provident fugit debitis.\",\"link\":\"\\/threads\\/fugit\\/5#reply-94\"}','2018-04-07 02:32:41','2018-04-07 02:20:30','2018-04-07 02:32:41'),
	('2e374899-f559-443f-b205-395cd7b57a8c','App\\Notifications\\ThreadWasUpdated',61,'App\\User','{\"message\":\"janedoe replied to Dolores dolores nulla et molestias inventore nisi.\",\"link\":\"\\/threads\\/saepe\\/1#reply-36\"}','2018-03-10 06:33:26','2018-03-10 06:32:51','2018-03-10 06:33:26'),
	('5bef30af-47d7-4786-99bb-3d55147a4780','App\\Notifications\\YouWereMentioned',62,'App\\User','{\"message\":\"tim mentioned you in Magni in est soluta id libero.\",\"link\":\"\\/threads\\/libero\\/3#reply-92\"}','2018-04-07 02:32:45','2018-04-01 00:22:56','2018-04-07 02:32:45'),
	('6d7717d2-9013-49c1-90ab-46efac0a9675','App\\Notifications\\YouWereMentioned',62,'App\\User','{\"message\":\"tim mentioned you in Aspernatur laudantium cumque quos vel numquam et sit.\",\"link\":\"\\/threads\\/blanditiis\\/10#reply-102\"}',NULL,'2018-04-08 07:49:42','2018-04-08 07:49:42'),
	('75321d28-0517-417f-a332-6b284a8e4580','App\\Notifications\\ThreadWasUpdated',62,'App\\User','{\"message\":\"tim replied to Ullam et dolore exercitationem laborum alias rerum enim.\",\"link\":\"\\/threads\\/neque\\/8#reply-95\"}','2018-04-07 02:32:12','2018-04-07 02:31:58','2018-04-07 02:32:12'),
	('aac57623-c3b5-47d0-bd44-9feeaa1cc64b','App\\Notifications\\ThreadWasUpdated',61,'App\\User','{\"message\":\"janedoe replied to Dolores dolores nulla et molestias inventore nisi.\",\"link\":\"\\/threads\\/saepe\\/1#reply-35\"}','2018-03-10 06:24:26','2018-03-10 06:04:28','2018-03-10 06:24:26'),
	('eddc1df1-87bb-4b03-8e4e-590c9124f8ac','App\\Notifications\\YouWereMentioned',62,'App\\User','{\"message\":\"tim mentioned you in Voluptate sed laborum expedita ratione provident fugit debitis.\",\"link\":\"\\/threads\\/fugit\\/5#reply-93\"}','2018-04-07 02:32:23','2018-04-07 02:14:44','2018-04-07 02:32:23'),
	('f0ddf904-b7b5-4413-8043-76a68d53f2be','App\\Notifications\\ThreadWasUpdated',62,'App\\User','{\"message\":\"tim replied to Ullam et dolore exercitationem laborum alias rerum enim.\",\"link\":\"\\/threads\\/neque\\/8#reply-96\"}',NULL,'2018-04-07 08:15:39','2018-04-07 08:15:39');

/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table replies
# ------------------------------------------------------------

DROP TABLE IF EXISTS `replies`;

CREATE TABLE `replies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `thread_id` int(11) NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `replies` WRITE;
/*!40000 ALTER TABLE `replies` DISABLE KEYS */;

INSERT INTO `replies` (`id`, `user_id`, `thread_id`, `body`, `created_at`, `updated_at`)
VALUES
	(1,31,1,'Voluptatem id similique expedita et qui hic quia. Quia laborum illum quia facere quia molestiae. Unde eos possimus nihil repellendus et.','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(2,32,1,'Fuga occaecati voluptas vel dolores beatae ut. Laborum rerum harum vero. Maiores est excepturi natus inventore deserunt. Quidem quo animi consequatur molestiae nobis nihil vitae voluptatem.','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(3,33,1,'Maiores veritatis aut a esse odit. Accusamus ipsam velit possimus ut. Porro rerum laudantium quam nihil quos. Et ut ea officiis commodi laboriosam dolorem.','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(4,34,1,'A distinctio laborum vitae. Aut rem excepturi optio et. Eos unde neque sit dicta distinctio tempora ullam. Deserunt eligendi deserunt maiores minus sequi iure sint accusamus.','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(5,35,1,'Cumque non esse aperiam voluptate. Et sed natus molestiae et. Aut ducimus libero laudantium sint et voluptates.','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(6,36,1,'In qui enim similique accusamus eum. Perspiciatis voluptatum et et qui ducimus rem nihil sed. Vitae fugiat consequuntur velit esse.','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(7,37,1,'Et architecto reprehenderit rerum velit qui dolor omnis. Temporibus nostrum possimus nulla praesentium. Quaerat explicabo voluptatibus quis vel. Fugiat aliquid voluptates aliquid commodi ut numquam dolorem.','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(8,38,1,'Velit vel autem iusto beatae eveniet voluptate. Laudantium ratione nam officiis dolores sit nostrum veniam aut. Illo sed odio atque praesentium exercitationem fuga quo laboriosam.','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(9,39,1,'Vitae qui et magni voluptatem aut itaque. Quibusdam et omnis omnis dolorem cumque sequi velit. Qui sunt dolorum sunt eius assumenda.','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(10,40,1,'Repellendus aperiam est adipisci ad rerum est ut. Est facilis quos omnis consequatur aspernatur ad est. Optio quaerat sed architecto iure. Sit itaque enim ullam qui error ea debitis facilis.','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(11,41,1,'Eius amet nostrum dolore est in aut fuga. Placeat voluptatem facere voluptas non et.','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(12,42,1,'Debitis quas error ea pariatur. Tempora cum saepe magnam iste possimus. Omnis ut voluptatem aut ratione. Amet temporibus eos dolores error.','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(13,43,1,'Ullam perspiciatis corporis voluptas qui. Et laborum distinctio labore. Quia voluptatem fugit quo velit dolores magni ipsam. Nihil perferendis non dolorum ea.','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(14,44,1,'Reiciendis rerum atque numquam necessitatibus est atque. Vel ut ab nesciunt non. Est vero repudiandae molestiae officiis cupiditate dignissimos. Magni voluptas adipisci hic.','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(15,45,1,'Ullam sint tempore rerum et ab. Ea ut rerum amet tempora voluptatem rerum. Placeat praesentium quia dolores dolorum voluptatem consequatur.','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(16,46,1,'Aut quae vitae voluptates praesentium. Sit aliquid mollitia eum nihil quia aspernatur saepe quae. Consequatur velit magnam ut harum similique quibusdam ipsa.','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(17,47,1,'In rerum et aliquam dolore minus. Ad laborum debitis voluptatum fuga. Doloribus porro ipsa itaque.','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(18,48,1,'Recusandae quasi voluptate velit sed ut fuga iure esse. Excepturi hic voluptas dolorem nostrum facilis aliquam. Non laboriosam a in culpa ipsum qui ipsum. Totam qui beatae quod ab blanditiis.','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(19,49,1,'Dolor voluptates nam consectetur rerum. Aut ad dolorum consequatur quos. Itaque cum et ut qui. Voluptas distinctio blanditiis enim et.','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(20,50,1,'Et pariatur unde eligendi voluptatem facere consequatur deleniti ab. Id autem tenetur enim. Possimus quia omnis modi officiis ullam et. Nostrum consequuntur dolorem et est sunt. Sit architecto facere quasi nihil.','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(21,51,1,'Praesentium consequatur omnis provident sed. Qui autem vel architecto sequi officiis quas. Odit alias vel eligendi voluptas voluptas fugit.','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(22,52,1,'Eaque saepe quia doloremque. Ut voluptatibus eos nobis dolorum. Atque praesentium rerum iusto ut recusandae. Soluta aut doloremque quia voluptatum doloremque inventore magni.','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(23,53,1,'Sit consequatur excepturi accusantium iste quo nihil deserunt expedita. Voluptates dolore et voluptatibus voluptates consequatur. Iure maxime ad ex dignissimos numquam hic blanditiis.','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(24,54,1,'Ipsam voluptatem aut cum atque perferendis numquam praesentium. Fugiat nesciunt facere asperiores aut est error ullam. Vel et non voluptas ut voluptate accusantium enim.','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(25,55,1,'Doloribus fuga aspernatur natus non nisi similique aliquid. Et sed et qui occaecati animi. Nemo laborum ut enim delectus ut sequi quae quia. Reiciendis qui maiores cum cupiditate.','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(26,56,1,'Expedita enim et odio rerum illo. Suscipit recusandae aperiam quod deserunt. Sit ex voluptas blanditiis accusamus.','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(27,57,1,'Suscipit quia perferendis dolor beatae inventore quae. Nobis facere mollitia qui aut laudantium quo tempore culpa. Enim unde placeat aspernatur rem.','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(28,58,1,'Maxime quos ipsam aliquid omnis. Sapiente vel cupiditate iste ex aut nobis enim. Recusandae est et optio ipsam vel sit. Consequatur et perferendis provident et.','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(29,59,1,'Repellat reprehenderit deserunt qui ipsa autem veniam eaque eum. Voluptatem et quisquam amet qui error. Doloremque provident eum voluptatem quasi explicabo velit nesciunt corrupti. Et maiores deleniti rerum aut consequatur natus est harum.','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(30,60,1,'Omnis repellat est rem quas. Corrupti sunt quo eum nobis consequatur est. Nostrum neque doloremque reiciendis quas necessitatibus reprehenderit.','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(31,61,1,'test comment','2018-02-03 12:03:08','2018-02-03 12:03:08'),
	(32,61,1,'sdddggg','2018-02-03 12:03:44','2018-02-03 12:03:44'),
	(33,62,1,'ssdddffggg','2018-02-03 12:05:03','2018-02-03 12:05:03'),
	(34,63,1,'hi tim, replay messge','2018-03-10 04:54:21','2018-03-10 04:54:21'),
	(35,63,1,'HI TIM, second reply','2018-03-10 06:04:28','2018-03-10 06:04:28'),
	(36,63,1,'reply1','2018-03-10 06:32:51','2018-03-10 06:32:51'),
	(37,63,1,'relpy2','2018-03-10 06:33:02','2018-03-10 06:33:02'),
	(38,63,1,'reply 3','2018-03-10 06:33:07','2018-03-10 06:33:07'),
	(39,63,1,'reply4','2018-03-10 06:34:55','2018-03-10 06:34:55'),
	(40,61,1,'tim reply1','2018-03-10 06:35:15','2018-03-10 06:35:15'),
	(42,61,1,'tim reply2','2018-03-10 06:35:59','2018-03-10 06:35:59'),
	(43,63,1,'Hi tim, new reply!','2018-03-11 06:16:25','2018-03-11 06:16:25'),
	(44,63,5,'reply 1','2018-03-11 06:17:21','2018-03-11 06:17:21'),
	(45,63,2,'asdasda','2018-03-11 06:44:21','2018-03-11 06:44:21'),
	(46,63,2,'sdfsdsdf','2018-03-11 07:07:07','2018-03-11 07:07:07'),
	(47,63,2,'gdfgdf','2018-03-11 07:07:17','2018-03-11 07:07:17'),
	(48,63,2,'fghfg','2018-03-11 07:07:29','2018-03-11 07:07:29'),
	(50,61,3,'sdfsdsdd','2018-03-11 23:10:46','2018-03-11 23:10:46'),
	(51,61,6,'hhggh','2018-03-11 23:22:03','2018-03-11 23:22:03'),
	(52,61,6,'this is proper message updategggg','2018-03-12 00:47:39','2018-03-12 00:51:47'),
	(53,61,2,'dfgdfgdfg','2018-03-12 06:47:31','2018-03-12 06:47:31'),
	(54,61,1,'ddsss','2018-03-30 07:01:48','2018-03-30 07:01:48'),
	(55,61,1,'ffggg','2018-03-30 07:01:53','2018-03-30 07:01:53'),
	(56,61,1,'sdfsdf','2018-03-30 08:14:00','2018-03-30 08:14:00'),
	(57,61,1,'fdgdfgdgdf','2018-03-30 08:14:02','2018-03-30 08:14:02'),
	(58,61,1,'fgdgdfgdf','2018-03-30 08:14:06','2018-03-30 08:14:06'),
	(59,61,1,'sdfsdf','2018-03-30 08:15:36','2018-03-30 08:15:36'),
	(60,61,1,'sdfs','2018-03-30 08:15:39','2018-03-30 08:15:39'),
	(61,61,1,'fgdgfdgdfg','2018-03-30 08:15:43','2018-03-30 08:15:43'),
	(62,61,2,'fdsfs','2018-03-30 08:20:09','2018-03-30 08:20:09'),
	(63,61,2,'dfgfd','2018-03-30 08:20:11','2018-03-30 08:20:11'),
	(64,61,1,'sdfsdf','2018-03-30 08:26:09','2018-03-30 08:26:09'),
	(65,61,1,'jkjkkjkj','2018-03-30 08:26:12','2018-03-30 08:26:12'),
	(68,61,7,'sdfsdf','2018-03-30 08:30:29','2018-03-30 08:30:29'),
	(69,61,7,'sdfsdf','2018-03-30 08:31:40','2018-03-30 08:31:40'),
	(72,61,7,'aaassss','2018-03-30 08:31:47','2018-03-30 08:31:47'),
	(73,61,7,'fff','2018-03-30 08:31:57','2018-03-30 08:31:57'),
	(77,61,7,'sdfddss','2018-03-30 08:32:34','2018-03-30 08:32:34'),
	(78,61,7,'asdasd','2018-03-30 08:32:37','2018-03-30 08:32:37'),
	(79,61,7,'gfgdf','2018-03-30 08:32:41','2018-03-30 08:32:41'),
	(80,61,7,'sdasd','2018-03-30 08:32:43','2018-03-30 08:32:43'),
	(81,61,7,'sdfsf','2018-03-30 08:32:55','2018-03-30 08:32:55'),
	(82,61,7,'asdadsad','2018-03-30 08:32:57','2018-03-30 08:32:57'),
	(83,61,4,'sdfsdf','2018-03-30 08:33:36','2018-03-30 08:33:36'),
	(84,61,4,'fghfhhghfg','2018-03-30 08:33:38','2018-03-30 08:33:38'),
	(85,61,4,'dfgdfgdfgfd','2018-03-30 08:33:42','2018-03-30 08:33:42'),
	(86,61,4,'dfgdfgfdgfdg','2018-03-30 08:34:03','2018-03-30 08:34:03'),
	(87,61,4,'asdasdsda','2018-03-30 08:34:07','2018-03-30 08:34:07'),
	(88,61,7,'sdfsdf','2018-03-30 08:36:49','2018-03-30 08:36:49'),
	(89,61,7,'fsdfdftt','2018-03-30 08:40:47','2018-03-30 08:40:47'),
	(90,61,7,'dfssdf','2018-03-30 08:49:09','2018-03-30 08:49:09'),
	(91,61,31,'dfgdfgdf','2018-03-30 13:10:48','2018-03-30 13:10:48'),
	(92,61,3,'how are you doing @test1','2018-04-01 00:22:56','2018-04-01 00:22:56'),
	(93,61,5,'this is test mention user reply to @test1','2018-04-07 02:14:44','2018-04-07 02:14:44'),
	(94,61,5,'this is test subscribe user notification reply','2018-04-07 02:20:30','2018-04-07 02:20:30'),
	(95,61,8,'tim test subscribe user notification reply','2018-04-07 02:31:58','2018-04-07 02:31:58'),
	(96,61,8,'gj','2018-04-07 08:15:39','2018-04-07 08:30:25'),
	(100,61,10,'hello <a href=\"/profiles/Kate\">@Kate</a>','2018-04-08 07:48:29','2018-04-08 07:48:29'),
	(101,61,10,'hello <a href=\"/profiles/test1\">@test1</a>','2018-04-08 07:48:47','2018-04-08 07:48:47'),
	(102,61,10,'hello <a href=\"/profiles/test1.\">@test1.</a>','2018-04-08 07:49:42','2018-04-08 07:49:42'),
	(104,62,2,'test1114432332','2019-03-18 11:44:07','2019-03-18 11:44:24'),
	(105,62,32,'oooi','2019-03-18 11:44:55','2019-03-18 11:44:55');

/*!40000 ALTER TABLE `replies` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table thread_subscriptions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `thread_subscriptions`;

CREATE TABLE `thread_subscriptions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `thread_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `thread_subscriptions_user_id_thread_id_unique` (`user_id`,`thread_id`),
  KEY `thread_subscriptions_thread_id_foreign` (`thread_id`),
  CONSTRAINT `thread_subscriptions_thread_id_foreign` FOREIGN KEY (`thread_id`) REFERENCES `threads` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `thread_subscriptions` WRITE;
/*!40000 ALTER TABLE `thread_subscriptions` DISABLE KEYS */;

INSERT INTO `thread_subscriptions` (`id`, `thread_id`, `user_id`, `created_at`, `updated_at`)
VALUES
	(2,1,61,'2018-03-10 06:35:09','2018-03-10 06:35:09'),
	(3,5,62,'2018-04-07 02:15:24','2018-04-07 02:15:24'),
	(4,8,62,'2018-04-07 02:31:34','2018-04-07 02:31:34'),
	(5,2,62,'2019-03-18 11:43:51','2019-03-18 11:43:51'),
	(6,1,62,'2019-03-18 11:45:11','2019-03-18 11:45:11');

/*!40000 ALTER TABLE `thread_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table threads
# ------------------------------------------------------------

DROP TABLE IF EXISTS `threads`;

CREATE TABLE `threads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `channel_id` int(10) unsigned NOT NULL,
  `replies_count` int(10) unsigned NOT NULL DEFAULT '0',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `threads` WRITE;
/*!40000 ALTER TABLE `threads` DISABLE KEYS */;

INSERT INTO `threads` (`id`, `user_id`, `channel_id`, `replies_count`, `body`, `title`, `created_at`, `updated_at`)
VALUES
	(1,61,1,52,'Aut esse cumque vero quo qui cupiditate soluta. Qui aut dolorem at quod amet corporis nostrum. Rerum distinctio doloremque et culpa nostrum quidem. Neque harum aut odit sunt quos omnis.','Dolores dolores nulla et molestias inventore nisi.','2018-02-03 02:03:37','2018-03-30 08:26:12'),
	(2,2,2,8,'Porro quod molestiae eum animi in. Id odit voluptatum voluptatem reiciendis sit officiis aliquam ratione. Reprehenderit est sapiente cumque. Quis rem tenetur possimus quam.','Laudantium laboriosam corrupti hic ut est excepturi.','2018-02-03 02:03:37','2019-03-18 11:44:07'),
	(3,3,3,2,'Qui enim consequatur blanditiis ad omnis eveniet vero. Repellendus delectus enim placeat vel cupiditate quibusdam. Delectus rerum ut vel voluptatum excepturi eos.','Magni in est soluta id libero.','2018-02-03 02:03:37','2018-04-01 00:22:56'),
	(4,4,4,5,'Ipsum tenetur fuga voluptatem sunt consequuntur et provident doloremque. Modi dolorem consectetur ipsam. Et ea quibusdam temporibus ut est recusandae.','Aut qui pariatur et fugit tempore.','2018-02-03 02:03:37','2018-03-30 08:34:07'),
	(5,5,5,3,'Omnis similique enim ducimus doloribus accusantium sit nihil. Quia eos explicabo dolores aperiam. Odio aut voluptas exercitationem.','Voluptate sed laborum expedita ratione provident fugit debitis.','2018-02-03 02:03:37','2018-04-07 02:20:30'),
	(6,6,6,2,'Est iure saepe debitis blanditiis praesentium minima. Cum possimus vel omnis molestias velit nemo dolore iusto. Nobis autem assumenda totam cum suscipit ea placeat.','In deserunt ex vel fuga ad.','2018-02-03 02:03:37','2018-03-12 00:47:39'),
	(7,7,7,13,'Et aut blanditiis odio corporis. Repellat aut aspernatur ut quod quia ea ab.','Natus nostrum enim hic aut quae.','2018-02-03 02:03:37','2018-03-30 08:49:09'),
	(8,8,8,2,'Maiores atque totam maxime laudantium harum animi qui. Sit vitae vitae saepe quos fugiat. Facilis quos sed asperiores corrupti. Dolores labore cum repellendus ipsa non tempora similique. Est magni ea corrupti quo sit.','Ullam et dolore exercitationem laborum alias rerum enim.','2018-02-03 02:03:37','2018-04-07 08:15:39'),
	(9,9,9,0,'Sint magnam laboriosam unde. Inventore tenetur soluta quae ea qui. Dolor non enim aperiam qui voluptas fugit doloribus et. Non rerum ut error velit.','Reprehenderit assumenda dolor ea pariatur recusandae nisi eos.','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(10,10,10,3,'Ut qui ducimus quos dolorem explicabo. Ad nostrum qui et hic autem. Harum consectetur nesciunt culpa nam. Eligendi ducimus voluptatem sit a laborum.','Aspernatur laudantium cumque quos vel numquam et sit.','2018-02-03 02:03:37','2018-04-08 07:49:42'),
	(11,11,11,0,'Assumenda est in eveniet consequatur. Dolorem in et sed similique sit voluptatem. Soluta sit eaque eum iste voluptatibus dolores perspiciatis. Quas veritatis accusantium dolor harum. Doloremque nostrum ut ea architecto voluptatem voluptatem laudantium iusto.','Qui voluptatem sed neque provident.','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(12,12,12,0,'Sapiente iure non et in ea. Placeat quia asperiores aut odio nam. Magnam magnam tempora ea ipsum est id similique ab.','Vero voluptatem doloremque distinctio labore repudiandae.','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(13,13,13,0,'Iste est earum placeat dolor. Officiis qui qui molestias qui qui voluptas quis atque. Officia ut a illo tempore fugiat cupiditate impedit inventore. Neque at et voluptatem commodi libero optio pariatur.','Aliquam quo doloremque necessitatibus asperiores maxime ab.','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(14,14,14,0,'Numquam dolore minus quo et omnis occaecati. Quo delectus delectus omnis ut. Quod autem odit quo sunt commodi doloribus quasi illum. Hic beatae numquam dolores voluptate non quae quas. Non asperiores accusantium quia eaque corporis.','Eos iste velit pariatur dolor enim.','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(15,15,15,0,'Et fugiat id repellat neque voluptatibus amet. Officia repudiandae aliquam voluptatum. Et facilis fugit eos dolorem odit harum.','Cupiditate et quia pariatur ut illum eveniet.','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(16,16,16,0,'Fugiat ea qui optio consequatur vero doloremque. Consequatur quam ut ut aut omnis iusto doloremque voluptate.','Ad quaerat saepe eos laborum ut.','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(17,17,17,0,'Quis architecto dignissimos ullam nobis dicta ut. Hic et sit sit quo veniam beatae. Maxime esse aut quo non dignissimos aut et quod.','Iusto id voluptates delectus nesciunt.','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(18,18,18,0,'Corporis quia iure eaque voluptate rerum dolorem blanditiis. Rerum corrupti id veniam dolores. Sed deserunt quam ipsam ex et et. Eligendi earum sit aut ut. Id eos laboriosam ut itaque.','Culpa eius repellat esse sunt aut numquam odit.','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(19,19,19,0,'Voluptatibus aut debitis harum et. Voluptatem voluptas quasi repellendus aut animi praesentium totam. Vitae cupiditate nobis dolores eos consequatur voluptate. Ad rerum a soluta ab sint delectus alias.','Enim praesentium repellendus aperiam.','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(20,20,20,0,'Unde mollitia dolores aspernatur. Vitae dolores et quo quia iure. Quia mollitia quia aut blanditiis voluptatem quas ut.','Esse autem voluptate nisi qui ducimus placeat consequuntur.','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(21,21,21,0,'Sunt sunt impedit repellat. Iure unde deleniti ipsa et debitis vitae nihil. Quia deleniti qui impedit corrupti eveniet a blanditiis aspernatur. Velit est sit molestiae illum blanditiis.','Quas est sunt necessitatibus earum nostrum sapiente.','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(22,22,22,0,'Quia impedit numquam esse ut. Non aperiam et iusto praesentium. Minima animi minima recusandae beatae et explicabo.','Illum ipsum ratione ea hic autem.','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(23,23,23,0,'Dolores porro laborum nostrum cupiditate ipsam eius est totam. Ex doloribus et error dolorem. Qui deleniti nihil quia dolor assumenda quo. Sed et nisi sed sunt consequuntur odio.','Consequatur sunt architecto qui aut distinctio.','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(24,24,24,0,'Adipisci a qui eum esse porro qui voluptatem. Officia placeat illo quae aliquam. Eius quia dolorum qui ex et.','Autem eveniet labore dolores officia sint amet cumque.','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(25,25,25,0,'Enim voluptatem quibusdam iste est ut et ut. Expedita delectus quasi illo iusto quo nemo dignissimos. Quam dolorem repellendus hic ut dolores dolores enim. Reiciendis similique eligendi magnam dolorum necessitatibus.','Et optio inventore dolores aperiam.','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(26,26,26,0,'Maxime vel sed et qui. Quo enim doloremque ipsa enim repellat itaque. Sed corporis quo eos veritatis vel consequatur. Libero voluptatem deserunt aut repudiandae voluptatem sit. Dolores reprehenderit et unde dolor doloribus.','Sunt ut qui modi porro.','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(27,27,27,0,'Assumenda autem quia suscipit beatae nam. Facere culpa quis in cumque repellat odit libero quo.','Enim asperiores quaerat eaque et ipsum dolore voluptatem consequatur.','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(28,28,28,0,'Praesentium doloribus esse quibusdam reiciendis. Odio odit molestiae at autem. Doloribus omnis earum molestiae nihil. Deleniti ea eum tempore. Doloremque et et dolorem hic perferendis.','Esse ipsum non sit officiis.','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(29,29,29,0,'Voluptate sint vel aut vero ut. Accusamus consectetur ut incidunt. Cum illum reiciendis quidem magnam ducimus tempore voluptatem est.','Et cumque consequatur debitis ipsa quia aut quas.','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(30,30,30,0,'Ut dolor commodi et eveniet facere corporis nemo. Similique possimus ipsam odit laudantium magni. Est laboriosam eos et et.','Enim et iste aliquid magni ratione tempore.','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(31,61,2,1,'sdfsdfsdf','ffgfd','2018-03-30 12:52:39','2018-03-30 13:10:48'),
	(32,61,2,1,'fggffggf','saas','2018-03-30 13:11:04','2019-03-18 11:44:55');

/*!40000 ALTER TABLE `threads` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'Brock Tromp DVM','leila03@example.com','$2y$10$Pr7QyveJvYgf8Izo0yDGxOIKAcecc1rb70Ikws/H.yW4Hq7z/PVAi','MYsXIFq2Br','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(2,'Willy Rosenbaum','lindgren.mylene@example.org','$2y$10$Pr7QyveJvYgf8Izo0yDGxOIKAcecc1rb70Ikws/H.yW4Hq7z/PVAi','mV9wFPRhR7','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(3,'Raven Wuckert','orpha.cummerata@example.com','$2y$10$Pr7QyveJvYgf8Izo0yDGxOIKAcecc1rb70Ikws/H.yW4Hq7z/PVAi','hxlTQVHq6H','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(4,'Raven Huels','shaniya78@example.org','$2y$10$Pr7QyveJvYgf8Izo0yDGxOIKAcecc1rb70Ikws/H.yW4Hq7z/PVAi','11HhAFtKKw','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(5,'Susana Kemmer IV','leonora.bednar@example.com','$2y$10$Pr7QyveJvYgf8Izo0yDGxOIKAcecc1rb70Ikws/H.yW4Hq7z/PVAi','WvhNvKKXyn','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(6,'Modesta Hyatt','carrie.murazik@example.org','$2y$10$Pr7QyveJvYgf8Izo0yDGxOIKAcecc1rb70Ikws/H.yW4Hq7z/PVAi','NTo13s6f5y','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(7,'Amya Jenkins V','shanny10@example.net','$2y$10$Pr7QyveJvYgf8Izo0yDGxOIKAcecc1rb70Ikws/H.yW4Hq7z/PVAi','pXHYBhYM8D','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(8,'Jalyn Schaden','fred.ledner@example.com','$2y$10$Pr7QyveJvYgf8Izo0yDGxOIKAcecc1rb70Ikws/H.yW4Hq7z/PVAi','i1Zv4IYaDc','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(9,'Ms. Leonor Gibson','jacobs.monroe@example.com','$2y$10$Pr7QyveJvYgf8Izo0yDGxOIKAcecc1rb70Ikws/H.yW4Hq7z/PVAi','0GTQE4xbuR','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(10,'Ronny Orn','ghettinger@example.net','$2y$10$Pr7QyveJvYgf8Izo0yDGxOIKAcecc1rb70Ikws/H.yW4Hq7z/PVAi','VBCZebtOTv','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(11,'Lisa Prohaska','adela59@example.net','$2y$10$Pr7QyveJvYgf8Izo0yDGxOIKAcecc1rb70Ikws/H.yW4Hq7z/PVAi','yzDAmxGUyL','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(12,'Mrs. Loraine Bartoletti','rerdman@example.com','$2y$10$Pr7QyveJvYgf8Izo0yDGxOIKAcecc1rb70Ikws/H.yW4Hq7z/PVAi','snf0tdkOeB','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(13,'Jaylen Schuster','lockman.angelita@example.com','$2y$10$Pr7QyveJvYgf8Izo0yDGxOIKAcecc1rb70Ikws/H.yW4Hq7z/PVAi','Rt9JslrbaN','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(14,'Benny Gusikowski','presley.hegmann@example.com','$2y$10$Pr7QyveJvYgf8Izo0yDGxOIKAcecc1rb70Ikws/H.yW4Hq7z/PVAi','MeFrkfq2CJ','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(15,'Prof. Julius Hamill I','kwaters@example.net','$2y$10$Pr7QyveJvYgf8Izo0yDGxOIKAcecc1rb70Ikws/H.yW4Hq7z/PVAi','fzhC9k9aJZ','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(16,'Annamae Gulgowski','cward@example.net','$2y$10$Pr7QyveJvYgf8Izo0yDGxOIKAcecc1rb70Ikws/H.yW4Hq7z/PVAi','RbOJmqbRVX','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(17,'Breanna Weber','emmy.spinka@example.org','$2y$10$Pr7QyveJvYgf8Izo0yDGxOIKAcecc1rb70Ikws/H.yW4Hq7z/PVAi','oUEGucsynt','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(18,'Stewart Halvorson','harmon12@example.net','$2y$10$Pr7QyveJvYgf8Izo0yDGxOIKAcecc1rb70Ikws/H.yW4Hq7z/PVAi','xKF9WVbDeo','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(19,'Larry Durgan','omckenzie@example.com','$2y$10$Pr7QyveJvYgf8Izo0yDGxOIKAcecc1rb70Ikws/H.yW4Hq7z/PVAi','LlHF8YQMYp','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(20,'Kendrick Kshlerin','efrain04@example.net','$2y$10$Pr7QyveJvYgf8Izo0yDGxOIKAcecc1rb70Ikws/H.yW4Hq7z/PVAi','ARXEmSxmAS','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(21,'Caitlyn Mosciski','rluettgen@example.com','$2y$10$Pr7QyveJvYgf8Izo0yDGxOIKAcecc1rb70Ikws/H.yW4Hq7z/PVAi','6L2WovywQe','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(22,'Dr. Sabryna Jacobs','jerrod99@example.net','$2y$10$Pr7QyveJvYgf8Izo0yDGxOIKAcecc1rb70Ikws/H.yW4Hq7z/PVAi','GnqI3FwMaW','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(23,'Angel Grady','spredovic@example.com','$2y$10$Pr7QyveJvYgf8Izo0yDGxOIKAcecc1rb70Ikws/H.yW4Hq7z/PVAi','apAA31PnkJ','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(24,'Alison Shanahan','xlittel@example.org','$2y$10$Pr7QyveJvYgf8Izo0yDGxOIKAcecc1rb70Ikws/H.yW4Hq7z/PVAi','JQjqD4dkFx','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(25,'Felicia Jerde','eichmann.koby@example.net','$2y$10$Pr7QyveJvYgf8Izo0yDGxOIKAcecc1rb70Ikws/H.yW4Hq7z/PVAi','Iq4XoJBKFA','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(26,'Tianna Stanton','lbotsford@example.com','$2y$10$Pr7QyveJvYgf8Izo0yDGxOIKAcecc1rb70Ikws/H.yW4Hq7z/PVAi','tSiFxl60E3','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(27,'Mr. Jarrett Pacocha Jr.','gilda.hand@example.net','$2y$10$Pr7QyveJvYgf8Izo0yDGxOIKAcecc1rb70Ikws/H.yW4Hq7z/PVAi','gsXdxqhekv','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(28,'Mr. Bobbie Grady II','reymundo.sanford@example.net','$2y$10$Pr7QyveJvYgf8Izo0yDGxOIKAcecc1rb70Ikws/H.yW4Hq7z/PVAi','n4V6JmHJh5','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(29,'Vincent Brakus','dean.lubowitz@example.org','$2y$10$Pr7QyveJvYgf8Izo0yDGxOIKAcecc1rb70Ikws/H.yW4Hq7z/PVAi','hSW1Qrvt4F','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(30,'Miss Josefina Runte','mayra.turner@example.org','$2y$10$Pr7QyveJvYgf8Izo0yDGxOIKAcecc1rb70Ikws/H.yW4Hq7z/PVAi','lo4mT92SwH','2018-02-03 02:03:37','2018-02-03 02:03:37'),
	(31,'Mrs. Gerry Lakin','jules.schumm@example.org','$2y$10$74k0ybUYM0LLbzJxlqHKCuntcNnKdEUo3fPqHozB0m6V4wSZ63lpu','F7XLu1mhzx','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(32,'Marcos Bradtke','dgleason@example.net','$2y$10$74k0ybUYM0LLbzJxlqHKCuntcNnKdEUo3fPqHozB0m6V4wSZ63lpu','WtQNexFNIA','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(33,'Laverna Larkin','fcummerata@example.com','$2y$10$74k0ybUYM0LLbzJxlqHKCuntcNnKdEUo3fPqHozB0m6V4wSZ63lpu','7pASPoG9hc','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(34,'Jonatan Stiedemann','okon.ardella@example.org','$2y$10$74k0ybUYM0LLbzJxlqHKCuntcNnKdEUo3fPqHozB0m6V4wSZ63lpu','MWiiVL63LZ','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(35,'Destany Bayer','agreen@example.com','$2y$10$74k0ybUYM0LLbzJxlqHKCuntcNnKdEUo3fPqHozB0m6V4wSZ63lpu','j65ATLKgFU','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(36,'Mr. Dawson Bins Sr.','fvon@example.net','$2y$10$74k0ybUYM0LLbzJxlqHKCuntcNnKdEUo3fPqHozB0m6V4wSZ63lpu','PBTKuTqZko','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(37,'Prof. Darrel Ruecker MD','prunolfsdottir@example.com','$2y$10$74k0ybUYM0LLbzJxlqHKCuntcNnKdEUo3fPqHozB0m6V4wSZ63lpu','H2NrOiXvq0','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(38,'Major Doyle','millie33@example.com','$2y$10$74k0ybUYM0LLbzJxlqHKCuntcNnKdEUo3fPqHozB0m6V4wSZ63lpu','zI3R1Dh7GS','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(39,'Jerod Schultz IV','davonte42@example.com','$2y$10$74k0ybUYM0LLbzJxlqHKCuntcNnKdEUo3fPqHozB0m6V4wSZ63lpu','nq9h4i7wry','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(40,'Mohammad Kris IV','conroy.alanna@example.org','$2y$10$74k0ybUYM0LLbzJxlqHKCuntcNnKdEUo3fPqHozB0m6V4wSZ63lpu','H0AfkIUsvU','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(41,'Alessandro Johnston III','ayden71@example.net','$2y$10$74k0ybUYM0LLbzJxlqHKCuntcNnKdEUo3fPqHozB0m6V4wSZ63lpu','8CU6ruvpWJ','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(42,'Darryl Keebler','yschuppe@example.net','$2y$10$74k0ybUYM0LLbzJxlqHKCuntcNnKdEUo3fPqHozB0m6V4wSZ63lpu','IdRm0Azoxq','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(43,'Frederick Gerhold II','yvonne.jones@example.net','$2y$10$74k0ybUYM0LLbzJxlqHKCuntcNnKdEUo3fPqHozB0m6V4wSZ63lpu','ZkF1wWIyTt','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(44,'Treva Ernser','gutmann.vicenta@example.com','$2y$10$74k0ybUYM0LLbzJxlqHKCuntcNnKdEUo3fPqHozB0m6V4wSZ63lpu','rGAjyGcbrB','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(45,'Kiana Russel Jr.','howell.lincoln@example.com','$2y$10$74k0ybUYM0LLbzJxlqHKCuntcNnKdEUo3fPqHozB0m6V4wSZ63lpu','LxzfWwAdiI','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(46,'Dr. Clark Hane MD','hills.doris@example.org','$2y$10$74k0ybUYM0LLbzJxlqHKCuntcNnKdEUo3fPqHozB0m6V4wSZ63lpu','kWibzBAFRC','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(47,'Jed Haley MD','willow93@example.com','$2y$10$74k0ybUYM0LLbzJxlqHKCuntcNnKdEUo3fPqHozB0m6V4wSZ63lpu','jjJQOEsMfx','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(48,'Liliane Orn','wfriesen@example.net','$2y$10$74k0ybUYM0LLbzJxlqHKCuntcNnKdEUo3fPqHozB0m6V4wSZ63lpu','A6PkAqXVhS','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(49,'Dr. Gwendolyn Lang','ajerde@example.org','$2y$10$74k0ybUYM0LLbzJxlqHKCuntcNnKdEUo3fPqHozB0m6V4wSZ63lpu','BKZm9TTjbD','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(50,'Margarita Tremblay','ledner.rosalind@example.net','$2y$10$74k0ybUYM0LLbzJxlqHKCuntcNnKdEUo3fPqHozB0m6V4wSZ63lpu','BpkLjtOLYT','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(51,'Kamren Mante','erich62@example.net','$2y$10$74k0ybUYM0LLbzJxlqHKCuntcNnKdEUo3fPqHozB0m6V4wSZ63lpu','fW2TqHMEOX','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(52,'Heaven Hilll V','darmstrong@example.com','$2y$10$74k0ybUYM0LLbzJxlqHKCuntcNnKdEUo3fPqHozB0m6V4wSZ63lpu','888y5MeqbA','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(53,'Miss Audra Metz IV','caroline.yundt@example.net','$2y$10$74k0ybUYM0LLbzJxlqHKCuntcNnKdEUo3fPqHozB0m6V4wSZ63lpu','lVltHikfqy','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(54,'Lavinia Schmitt','eve.abshire@example.com','$2y$10$74k0ybUYM0LLbzJxlqHKCuntcNnKdEUo3fPqHozB0m6V4wSZ63lpu','xM6EDBMoYS','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(55,'Ms. Jessica Mraz','hoppe.melyna@example.com','$2y$10$74k0ybUYM0LLbzJxlqHKCuntcNnKdEUo3fPqHozB0m6V4wSZ63lpu','J8ptd1k6S9','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(56,'Dr. Karlie Buckridge Jr.','lily.hessel@example.net','$2y$10$74k0ybUYM0LLbzJxlqHKCuntcNnKdEUo3fPqHozB0m6V4wSZ63lpu','qbL8RKsrML','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(57,'Mrs. Rachel Wisoky Jr.','keyon06@example.net','$2y$10$74k0ybUYM0LLbzJxlqHKCuntcNnKdEUo3fPqHozB0m6V4wSZ63lpu','6GJP53u5iz','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(58,'Kayley Thiel','keeling.lloyd@example.org','$2y$10$74k0ybUYM0LLbzJxlqHKCuntcNnKdEUo3fPqHozB0m6V4wSZ63lpu','PNRreIdbOU','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(59,'Mrs. Nichole Watsica','xaltenwerth@example.net','$2y$10$74k0ybUYM0LLbzJxlqHKCuntcNnKdEUo3fPqHozB0m6V4wSZ63lpu','qMcMOPZPm7','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(60,'Prof. Shawna Corkery Sr.','jacinthe.corkery@example.net','$2y$10$74k0ybUYM0LLbzJxlqHKCuntcNnKdEUo3fPqHozB0m6V4wSZ63lpu','warMzJHZhz','2018-02-03 03:03:58','2018-02-03 03:03:58'),
	(61,'tim','tim@example.com','$2y$10$VTaAxrFow4BYO1CgczytE.bM01N14TzjTj0ZvZiIa3bYp5hbJeNK2','UewzwyGNhK6WhNLUPtLVpMfzQKBUqVeBHoC2XkdujImaWG8wQjVV0VPmShkv','2018-02-03 12:01:31','2018-02-03 12:01:31'),
	(62,'test1','test1@example.com','$2y$10$cajuqoB3sNX107fugpFVP..dy9j2/0aMrwhZ5a3tjF/tF4Gcr1yJO','daPUKBMwOZS4LDw288kQ67SaVURyqc9mOxFwZpmfrdDEA54Fw2QK6NskEXHG','2018-02-03 12:04:52','2018-02-03 12:04:52'),
	(63,'janedoe','janedoe@example.com','$2y$10$G5IAojR1JjDYFUjfqTY2o./RxEAKxXAdYVKz524w/5pRXD5nK/H0i','wsxAXPTfi1hnzwSICDusUHSks5pEa01G4Tl8E0YoIr2FEUlLgMP52Rh4KkQb','2018-03-10 04:52:52','2018-03-10 04:52:52');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
