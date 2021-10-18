-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.14-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.1.0.6116
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for fms_db
CREATE DATABASE IF NOT EXISTS `fms_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `fms_db`;

-- Dumping structure for table fms_db.files
CREATE TABLE IF NOT EXISTS `files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `user_id` int(30) NOT NULL,
  `folder_id` int(30) NOT NULL,
  `file_type` varchar(50) NOT NULL,
  `file_path` text NOT NULL,
  `is_public` tinyint(1) DEFAULT 0,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table fms_db.files: ~5 rows (approximately)
DELETE FROM `files`;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
INSERT INTO `files` (`id`, `name`, `description`, `user_id`, `folder_id`, `file_type`, `file_path`, `is_public`, `date_updated`) VALUES
	(1, 'sample pdf file', 'Sample file uploaded', 1, 1, 'pdf', '1600320360_1600314660_sample.pdf', 1, '2020-09-17 16:22:26'),
	(3, 'sample', 'Sample PDF Document', 3, 9, 'pdf', '1600330200_sample.pdf', 1, '2021-10-17 10:42:43'),
	(11, 'anang', '', 1, 41, 'PNG', '1632205440_anang.PNG', 0, '2021-09-21 13:24:29'),
	(13, 'New playlist', '', 1, 0, 'zpl', '1634440560_New playlist.zpl', 0, '2021-10-17 10:16:43'),
	(14, 'webview', '', 3, 0, 'PNG', '1634442180_webview.PNG', 1, '2021-10-17 10:43:34'),
	(15, 'Chattahoochee (Extended Mix)', '', 3, 0, 'mp3', '1634469780_Chattahoochee (Extended Mix).mp3', 1, '2021-10-17 18:23:19');
/*!40000 ALTER TABLE `files` ENABLE KEYS */;

-- Dumping structure for table fms_db.folders
CREATE TABLE IF NOT EXISTS `folders` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `user_id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `parent_id` int(30) NOT NULL DEFAULT 0,
  `path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table fms_db.folders: ~7 rows (approximately)
DELETE FROM `folders`;
/*!40000 ALTER TABLE `folders` DISABLE KEYS */;
INSERT INTO `folders` (`id`, `user_id`, `name`, `parent_id`, `path`) VALUES
	(6, 1, 'New Folder', 1, NULL),
	(7, 1, 'Folder 1', 1, NULL),
	(8, 1, 'test folder', 7, NULL),
	(14, 1, 'superadmin', 10, NULL);
/*!40000 ALTER TABLE `folders` ENABLE KEYS */;

-- Dumping structure for table fms_db.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1+admin , 2 = users',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table fms_db.users: ~3 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`) VALUES
	(1, 'Administrator', 'admin', 'admin123', 1),
	(2, 'John Smith', 'jsmith', 'admin123', 1),
	(3, 'Sample User', 'sample', 'user123', 2);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
