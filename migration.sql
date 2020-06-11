-- --------------------------------------------------------
-- Anfitrião:                    127.0.0.1
-- Versão do servidor:           5.6.45-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Versão:              10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
update mysql.user set plugin='' where user='root';
SET PASSWORD FOR 'root'@'localhost' = PASSWORD('yolo');

-- Dumping database structure for webeng_pedestrians
DROP DATABASE IF EXISTS `webeng_pedestrians`;
CREATE DATABASE IF NOT EXISTS `webeng_pedestrians` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `webeng_pedestrians`;

-- Dumping structure for table webeng_pedestrians.pedestrians
DROP TABLE IF EXISTS `pedestrians`;
CREATE TABLE IF NOT EXISTS `pedestrians` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table webeng_pedestrians.pedestrians: ~3 rows (approximately)
DELETE FROM `pedestrians`;
/*!40000 ALTER TABLE `pedestrians` DISABLE KEYS */;
INSERT INTO `pedestrians` (`id`, `latitude`, `longitude`) VALUES
	(1, 41.55869090909091, -8.397317272727273),
	(2, 41.563356521006455, -8.420526981353762),
	(3, 41.557929150357175, -8.40059280395508),
	(4, 41.55217334403412, -8.429903984069826),
	(5, 41.55913385159771, -8.406922817230226);
/*!40000 ALTER TABLE `pedestrians` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
