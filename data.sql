-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.6.5-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for dulieuquanlifb
CREATE DATABASE IF NOT EXISTS `dulieuquanlifb` /*!40100 DEFAULT CHARACTER SET utf8mb3 */;
USE `dulieuquanlifb`;

-- Dumping structure for table dulieuquanlifb.account
CREATE TABLE IF NOT EXISTS `account` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table dulieuquanlifb.account: ~3 rows (approximately)
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` (`username`, `password`, `role`) VALUES
	('admin', '123', 'admin'),
	('agency1', '123', 'agency1'),
	('agency2', '123', 'agency2');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;

-- Dumping structure for table dulieuquanlifb.agency1
CREATE TABLE IF NOT EXISTS `agency1` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `position` varchar(20) NOT NULL,
  `pay1h` int(6) NOT NULL,
  `payOT` int(6) NOT NULL,
  `workingHours` int(11) DEFAULT NULL,
  `hoursOT` int(11) DEFAULT NULL,
  `salary` double DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table dulieuquanlifb.agency1: ~8 rows (approximately)
/*!40000 ALTER TABLE `agency1` DISABLE KEYS */;
INSERT INTO `agency1` (`id`, `code`, `name`, `position`, `pay1h`, `payOT`, `workingHours`, `hoursOT`, `salary`) VALUES
	(1, 'CN1-SM', 'A', 'Store Manager', 50000, 35000, 0, 0, 0),
	(2, 'CN1-L1', 'B', 'Leader', 25000, 30000, 0, 0, 0),
	(4, 'CN1-S1', 'D', 'Staff', 20000, 22000, 0, 0, 0),
	(5, 'CN1-S2', 'E', 'Staff', 20000, 22000, 0, 0, 0),
	(6, 'CN1-S3', 'F', 'Staff', 20000, 22000, 0, 0, 0),
	(7, 'CN1-S4', 'G', 'Staff', 20000, 22000, 0, 0, 0),
	(12, 'CN1-T2', 'T', 'Trainer', 18000, 20000, 0, 0, 0),
	(13, 'CN1-T1', 'O', 'Trainer', 18000, 20000, 0, 0, 0);
/*!40000 ALTER TABLE `agency1` ENABLE KEYS */;

-- Dumping structure for table dulieuquanlifb.agency2
CREATE TABLE IF NOT EXISTS `agency2` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `position` varchar(20) NOT NULL,
  `pay1h` int(6) NOT NULL,
  `payOT` int(6) NOT NULL,
  `workingHours` int(11) DEFAULT NULL,
  `hoursOT` int(11) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table dulieuquanlifb.agency2: ~9 rows (approximately)
/*!40000 ALTER TABLE `agency2` DISABLE KEYS */;
INSERT INTO `agency2` (`id`, `code`, `name`, `position`, `pay1h`, `payOT`, `workingHours`, `hoursOT`, `salary`) VALUES
	(1, 'CN2-QL', 'Y', 'Store Manager', 50000, 35000, 0, 0, 0),
	(2, 'CN2-L1', 'X', 'Leader', 25000, 30000, 0, 0, 0),
	(4, 'CN2-S1', 'H', 'Staff', 20000, 22000, 0, 0, 0),
	(5, 'CN2-S2', 'K', 'Staff', 20000, 22000, 0, 0, 0),
	(6, 'CN2-S3', 'A', 'Staff', 20000, 22000, 0, 0, 0),
	(7, 'CN2-S4', 'B', 'Staff', 20000, 22000, 0, 0, 0),
	(8, 'CN2-S5', 'E', 'Staff', 20000, 22000, 0, 0, 0),
	(13, 'CN2-T2', 'M', 'Trainer', 18000, 20000, 0, 0, 0),
	(15, 'CN2-T4', 'H', 'Trainer', 18000, 20000, 0, 0, 0);
/*!40000 ALTER TABLE `agency2` ENABLE KEYS */;

-- Dumping structure for table dulieuquanlifb.coffee
CREATE TABLE IF NOT EXISTS `coffee` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `code` varchar(4) NOT NULL,
  `image` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(200) NOT NULL,
  `size` varchar(2) NOT NULL,
  `price` int(15) NOT NULL,
  `grCoffee` int(5) NOT NULL,
  `freshMilk` int(5) NOT NULL,
  `condensedMilk` int(5) NOT NULL,
  `sugar` int(5) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table dulieuquanlifb.coffee: ~8 rows (approximately)
/*!40000 ALTER TABLE `coffee` DISABLE KEYS */;
INSERT INTO `coffee` (`id`, `code`, `image`, `name`, `size`, `price`, `grCoffee`, `freshMilk`, `condensedMilk`, `sugar`) VALUES
	(1, 'C01', 'https://benefitsuses.com/wp-content/uploads/2020/05/istock-157528129.jpg\r\n', 'Black Coffee\r\n', 'S', 35000, 18, 0, 0, 10),
	(2, 'C02', 'https://benefitsuses.com/wp-content/uploads/2020/05/istock-157528129.jpg\r\n', 'Black Coffee\r\n', 'M', 45000, 30, 0, 0, 20),
	(3, 'C03', 'https://img.aws.livestrongcdn.com/ls-article-image-673/ds-photo/getty/article/181/79/477867294.jpg\r\n', 'Milk Coffee\r\n', 'S', 38000, 18, 0, 30, 0),
	(4, 'C04', 'https://img.aws.livestrongcdn.com/ls-article-image-673/ds-photo/getty/article/181/79/477867294.jpg\r\n', 'Milk Coffee\r\n', 'M', 48000, 30, 0, 40, 0),
	(5, 'C05', 'https://plantres.com.mx/wp-content/uploads/2020/03/CafeLatte.jpg\r\n', 'Latte\r\n', 'S', 49000, 18, 120, 0, 10),
	(6, 'C06', 'http://cafeflavour.com/wp-content/uploads/2016/11/cappuccino-1609895_1920.jpg\r\n', 'Cappuccino\r\n', 'S', 49000, 18, 120, 0, 10),
	(7, 'C07', 'https://www.luckybelly.com/wp-content/uploads/2020/08/Where-does-the-Flat-White-come-from.jpg\r\n', 'White Coffee\r\n', 'S', 45000, 18, 80, 20, 0),
	(8, 'C08', 'https://www.luckybelly.com/wp-content/uploads/2020/08/Where-does-the-Flat-White-come-from.jpg\r\n', 'White Coffee\r\n', 'M', 55000, 30, 100, 30, 0);
/*!40000 ALTER TABLE `coffee` ENABLE KEYS */;

-- Dumping structure for table dulieuquanlifb.coffee2
CREATE TABLE IF NOT EXISTS `coffee2` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `code` varchar(4) NOT NULL,
  `image` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(200) NOT NULL,
  `size` varchar(2) NOT NULL,
  `price` int(15) NOT NULL,
  `grCoffee` int(5) NOT NULL,
  `freshMilk` int(5) NOT NULL,
  `condensedMilk` int(5) NOT NULL,
  `sugar` int(5) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table dulieuquanlifb.coffee2: ~8 rows (approximately)
/*!40000 ALTER TABLE `coffee2` DISABLE KEYS */;
INSERT INTO `coffee2` (`id`, `code`, `image`, `name`, `size`, `price`, `grCoffee`, `freshMilk`, `condensedMilk`, `sugar`) VALUES
	(1, 'C01', 'https://benefitsuses.com/wp-content/uploads/2020/05/istock-157528129.jpg\r\n', 'Black Coffee\r\n', 'S', 35000, 18, 0, 0, 10),
	(2, 'C02', 'https://benefitsuses.com/wp-content/uploads/2020/05/istock-157528129.jpg\r\n', 'Black Coffee\r\n', 'M', 45000, 30, 0, 0, 20),
	(3, 'C03', 'https://img.aws.livestrongcdn.com/ls-article-image-673/ds-photo/getty/article/181/79/477867294.jpg\r\n', 'Milk Coffee\r\n', 'S', 38000, 18, 0, 30, 0),
	(4, 'C04', 'https://img.aws.livestrongcdn.com/ls-article-image-673/ds-photo/getty/article/181/79/477867294.jpg\r\n', 'Milk Coffee\r\n', 'M', 48000, 30, 0, 40, 0),
	(5, 'C05', 'https://plantres.com.mx/wp-content/uploads/2020/03/CafeLatte.jpg\r\n', 'Latte\r\n', 'S', 49000, 18, 120, 0, 10),
	(6, 'C06', 'http://cafeflavour.com/wp-content/uploads/2016/11/cappuccino-1609895_1920.jpg\r\n', 'Cappuccino\r\n', 'S', 49000, 18, 120, 0, 10),
	(7, 'C07', 'https://www.luckybelly.com/wp-content/uploads/2020/08/Where-does-the-Flat-White-come-from.jpg\r\n', 'White Coffee\r\n', 'S', 45000, 18, 80, 20, 0),
	(8, 'C08', 'https://www.luckybelly.com/wp-content/uploads/2020/08/Where-does-the-Flat-White-come-from.jpg\r\n', 'White Coffee\r\n', 'M', 55000, 30, 100, 30, 0);
/*!40000 ALTER TABLE `coffee2` ENABLE KEYS */;

-- Dumping structure for table dulieuquanlifb.milktea
CREATE TABLE IF NOT EXISTS `milktea` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `code` varchar(4) NOT NULL,
  `image` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `size` varchar(2) NOT NULL,
  `price` int(15) NOT NULL,
  `typeofTea` varchar(30) NOT NULL,
  `mlTea` int(5) NOT NULL,
  `condensedMilk` int(5) NOT NULL,
  `typeofSyrup` varchar(30) NOT NULL,
  `mlSyrup` int(5) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table dulieuquanlifb.milktea: ~10 rows (approximately)
/*!40000 ALTER TABLE `milktea` DISABLE KEYS */;
INSERT INTO `milktea` (`id`, `code`, `image`, `name`, `size`, `price`, `typeofTea`, `mlTea`, `condensedMilk`, `typeofSyrup`, `mlSyrup`) VALUES
	(3, 'M01', 'https://chinmilktea.vn/public/upload/images/hinhsanpham/tra-sua-dau-tay-58891616125982.JPG\r\n', 'Caramel Milk Tea\r\n', 'S', 42000, 'Green Tea ', 80, 30, 'Caramel', 10),
	(4, 'M02', 'https://chinmilktea.vn/public/upload/images/hinhsanpham/tra-sua-dau-tay-58891616125982.JPG\r\n', 'Caramel Milk Tea\r\n', 'M', 52000, 'Green Tea ', 120, 40, 'Caramel', 20),
	(5, 'M03', 'https://i.ytimg.com/vi/bsZAIV9o1UE/maxresdefault.jpg\r\n', 'Matcha Latte\r\n', 'S', 45000, 'Green Tea', 80, 40, 'Matcha', 10),
	(6, 'M04', 'https://i.ytimg.com/vi/bsZAIV9o1UE/maxresdefault.jpg\r\n', 'Matcha Latte\r\n', 'M', 55000, 'Green Tea', 120, 50, 'Matcha', 20),
	(7, 'M05', 'https://i5.chefiso.com/srv/images/coffee-jelly-drink-600x400.jpg', 'Almond Milk Tea\r\n', 'S', 42000, 'Oolong Tea', 80, 30, 'Almond', 10),
	(8, 'M06', 'https://i5.chefiso.com/srv/images/coffee-jelly-drink-600x400.jpg', 'Almond Milk Tea\r\n', 'M', 52000, 'Oolong Tea', 120, 40, 'Almond', 20),
	(9, 'M07', 'https://www.bartender.edu.vn/wp-content/uploads/2020/04/tra-sua-socola.jpg\r\n', 'Chocolate Milk Tea\r\n', 'S', 45000, 'Green Tea', 80, 40, 'Chocolate', 10),
	(10, 'M08', 'https://www.bartender.edu.vn/wp-content/uploads/2020/04/tra-sua-socola.jpg\r\n', 'Chocolate Milk Tea\r\n', 'M', 55000, 'Green Tea', 120, 50, 'Chocolate', 20),
	(11, 'M09', 'https://thumbs.dreamstime.com/b/homemade-strawberry-milk-bubble-tea-tapioca-173911118.jpg', 'Strawberry Milk Tea\r\n', 'S', 42000, 'Oolong Tea', 80, 30, 'Strawberry', 10),
	(12, 'M10', 'https://thumbs.dreamstime.com/b/homemade-strawberry-milk-bubble-tea-tapioca-173911118.jpg', 'Strawberry Milk Tea\r\n', 'M', 52000, 'Oolong Tea', 120, 40, 'Strawberry', 20);
/*!40000 ALTER TABLE `milktea` ENABLE KEYS */;

-- Dumping structure for table dulieuquanlifb.milktea2
CREATE TABLE IF NOT EXISTS `milktea2` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `code` varchar(4) NOT NULL,
  `image` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `size` varchar(2) NOT NULL,
  `price` int(15) NOT NULL,
  `typeofTea` varchar(30) NOT NULL,
  `mlTea` int(5) NOT NULL,
  `condensedMilk` int(5) NOT NULL,
  `typeofSyrup` varchar(30) NOT NULL,
  `mlSyrup` int(5) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table dulieuquanlifb.milktea2: ~10 rows (approximately)
/*!40000 ALTER TABLE `milktea2` DISABLE KEYS */;
INSERT INTO `milktea2` (`id`, `code`, `image`, `name`, `size`, `price`, `typeofTea`, `mlTea`, `condensedMilk`, `typeofSyrup`, `mlSyrup`) VALUES
	(3, 'M01', 'https://chinmilktea.vn/public/upload/images/hinhsanpham/tra-sua-dau-tay-58891616125982.JPG\r\n', 'Caramel Milk Tea\r\n', 'S', 42000, 'Green Tea ', 80, 30, 'Caramel', 10),
	(4, 'M02', 'https://chinmilktea.vn/public/upload/images/hinhsanpham/tra-sua-dau-tay-58891616125982.JPG\r\n', 'Caramel Milk Tea\r\n', 'M', 52000, 'Green Tea ', 120, 40, 'Caramel', 20),
	(5, 'M03', 'https://i.ytimg.com/vi/bsZAIV9o1UE/maxresdefault.jpg\r\n', 'Matcha Latte\r\n', 'S', 45000, 'Green Tea', 80, 40, 'Matcha', 10),
	(6, 'M04', 'https://i.ytimg.com/vi/bsZAIV9o1UE/maxresdefault.jpg\r\n', 'Matcha Latte\r\n', 'M', 55000, 'Green Tea', 120, 50, 'Matcha', 20),
	(7, 'M05', 'https://yummynotes.net/wp-content/uploads/2021/08/Homemade-Coffee-Jelly-Recipe.jpg', 'Almond Milk Tea\r\n', 'S', 42000, 'Oolong Tea', 80, 30, 'Almond', 10),
	(8, 'M06', 'https://yummynotes.net/wp-content/uploads/2021/08/Homemade-Coffee-Jelly-Recipe.jpg', 'Almond Milk Tea\r\n', 'M', 52000, 'Oolong Tea', 120, 40, 'Almond', 20),
	(9, 'M07', 'https://www.bartender.edu.vn/wp-content/uploads/2020/04/tra-sua-socola.jpg\r\n', 'Chocolate Milk Tea\r\n', 'S', 45000, 'Green Tea', 80, 40, 'Chocolate', 10),
	(10, 'M08', 'https://www.bartender.edu.vn/wp-content/uploads/2020/04/tra-sua-socola.jpg\r\n', 'Chocolate Milk Tea\r\n', 'M', 55000, 'Green Tea', 120, 50, 'Chocolate', 20),
	(11, 'M09', 'https://shottbeverages.com/wp-content/uploads/2020/08/strawbeery_bubble-tea.jpg', 'Strawberry Milk Tea\r\n', 'S', 42000, 'Oolong Tea', 80, 30, 'Strawberry', 10),
	(12, 'M10', 'https://shottbeverages.com/wp-content/uploads/2020/08/strawbeery_bubble-tea.jpg', 'Strawberry Milk Tea\r\n', 'M', 52000, 'Oolong Tea', 120, 40, 'Strawberry', 20);
/*!40000 ALTER TABLE `milktea2` ENABLE KEYS */;

-- Dumping structure for table dulieuquanlifb.salescoffee
CREATE TABLE IF NOT EXISTS `salescoffee` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `code` varchar(4) NOT NULL,
  `image` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(200) NOT NULL,
  `size` varchar(2) NOT NULL,
  `price` int(15) NOT NULL,
  `grCoffee` int(5) NOT NULL,
  `freshMilk` int(5) NOT NULL,
  `condensedMilk` int(5) NOT NULL,
  `sugar` int(5) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total` double DEFAULT 0,
  `quantityNew` int(11) NOT NULL,
  `imgCoffee` varchar(200) DEFAULT NULL,
  `imgFreshMilk` varchar(200) DEFAULT NULL,
  `imgSugar` varchar(200) DEFAULT NULL,
  `imgMoney` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table dulieuquanlifb.salescoffee: ~8 rows (approximately)
/*!40000 ALTER TABLE `salescoffee` DISABLE KEYS */;
INSERT INTO `salescoffee` (`id`, `code`, `image`, `name`, `size`, `price`, `grCoffee`, `freshMilk`, `condensedMilk`, `sugar`, `quantity`, `total`, `quantityNew`, `imgCoffee`, `imgFreshMilk`, `imgSugar`, `imgMoney`) VALUES
	(1, 'C01', 'https://benefitsuses.com/wp-content/uploads/2020/05/istock-157528129.jpg', 'Black Coffee', 'S', 35000, 18, 0, 0, 10, 0, 0, 1, 'https://salt.tikicdn.com/cache/550x550/ts/product/58/bf/85/50976303907b0d02c43fc9528a342087.jpg', 'https://bizweb.dktcdn.net/100/398/159/products/dalat-milk-co-duong.png?v=1598516142870', 'https://mondowine.fr/1616-large_default/sugar-killed-biere-blonde-bio-33-cl.jpg', 'https://tse1.mm.bing.net/th?id=OIP.iZr3nqthgBWD7eLjc2ky3AHaHa&pid=Api&P=0&w=300&h=300'),
	(2, 'C02', 'https://benefitsuses.com/wp-content/uploads/2020/05/istock-157528129.jpg\r\n', 'Black Coffee\r\n', 'M', 45000, 30, 0, 0, 20, 0, 0, 1, 'https://salt.tikicdn.com/cache/550x550/ts/product/58/bf/85/50976303907b0d02c43fc9528a342087.jpg', 'https://bizweb.dktcdn.net/100/398/159/products/dalat-milk-co-duong.png?v=1598516142870', 'https://mondowine.fr/1616-large_default/sugar-killed-biere-blonde-bio-33-cl.jpg', 'https://tse1.mm.bing.net/th?id=OIP.iZr3nqthgBWD7eLjc2ky3AHaHa&pid=Api&P=0&w=300&h=300'),
	(3, 'C03', 'https://img.aws.livestrongcdn.com/ls-article-image-673/ds-photo/getty/article/181/79/477867294.jpg\r\n', 'Milk Coffee\r\n', 'S', 38000, 18, 0, 30, 0, 0, 0, 1, 'https://salt.tikicdn.com/cache/550x550/ts/product/58/bf/85/50976303907b0d02c43fc9528a342087.jpg', 'https://bizweb.dktcdn.net/100/398/159/products/dalat-milk-co-duong.png?v=1598516142870', 'https://mondowine.fr/1616-large_default/sugar-killed-biere-blonde-bio-33-cl.jpg', 'https://tse1.mm.bing.net/th?id=OIP.iZr3nqthgBWD7eLjc2ky3AHaHa&pid=Api&P=0&w=300&h=300'),
	(4, 'C04', 'https://img.aws.livestrongcdn.com/ls-article-image-673/ds-photo/getty/article/181/79/477867294.jpg\r\n', 'Milk Coffee\r\n', 'M', 48000, 30, 0, 40, 0, 0, 0, 1, 'https://salt.tikicdn.com/cache/550x550/ts/product/58/bf/85/50976303907b0d02c43fc9528a342087.jpg', 'https://bizweb.dktcdn.net/100/398/159/products/dalat-milk-co-duong.png?v=1598516142870', 'https://mondowine.fr/1616-large_default/sugar-killed-biere-blonde-bio-33-cl.jpg', 'https://tse1.mm.bing.net/th?id=OIP.iZr3nqthgBWD7eLjc2ky3AHaHa&pid=Api&P=0&w=300&h=300'),
	(5, 'C05', 'https://plantres.com.mx/wp-content/uploads/2020/03/CafeLatte.jpg\r\n', 'Latte\r\n', 'S', 49000, 18, 120, 0, 10, 0, 0, 1, 'https://salt.tikicdn.com/cache/550x550/ts/product/58/bf/85/50976303907b0d02c43fc9528a342087.jpg', 'https://bizweb.dktcdn.net/100/398/159/products/dalat-milk-co-duong.png?v=1598516142870', 'https://mondowine.fr/1616-large_default/sugar-killed-biere-blonde-bio-33-cl.jpg', 'https://tse1.mm.bing.net/th?id=OIP.iZr3nqthgBWD7eLjc2ky3AHaHa&pid=Api&P=0&w=300&h=300'),
	(6, 'C06', 'http://cafeflavour.com/wp-content/uploads/2016/11/cappuccino-1609895_1920.jpg\r\n', 'Cappuccino\r\n', 'S', 49000, 18, 120, 0, 10, 0, 0, 1, 'https://salt.tikicdn.com/cache/550x550/ts/product/58/bf/85/50976303907b0d02c43fc9528a342087.jpg', 'https://bizweb.dktcdn.net/100/398/159/products/dalat-milk-co-duong.png?v=1598516142870', 'https://mondowine.fr/1616-large_default/sugar-killed-biere-blonde-bio-33-cl.jpg', 'https://tse1.mm.bing.net/th?id=OIP.iZr3nqthgBWD7eLjc2ky3AHaHa&pid=Api&P=0&w=300&h=300'),
	(7, 'C07', 'https://www.luckybelly.com/wp-content/uploads/2020/08/Where-does-the-Flat-White-come-from.jpg\r\n', 'White Coffee\r\n', 'S', 45000, 18, 80, 20, 0, 0, 0, 1, 'https://salt.tikicdn.com/cache/550x550/ts/product/58/bf/85/50976303907b0d02c43fc9528a342087.jpg', 'https://bizweb.dktcdn.net/100/398/159/products/dalat-milk-co-duong.png?v=1598516142870', 'https://mondowine.fr/1616-large_default/sugar-killed-biere-blonde-bio-33-cl.jpg', 'https://tse1.mm.bing.net/th?id=OIP.iZr3nqthgBWD7eLjc2ky3AHaHa&pid=Api&P=0&w=300&h=300'),
	(8, 'C08', 'https://www.luckybelly.com/wp-content/uploads/2020/08/Where-does-the-Flat-White-come-from.jpg\r\n', 'White Coffee\r\n', 'M', 55000, 30, 100, 30, 0, 0, 0, 1, 'https://salt.tikicdn.com/cache/550x550/ts/product/58/bf/85/50976303907b0d02c43fc9528a342087.jpg', 'https://bizweb.dktcdn.net/100/398/159/products/dalat-milk-co-duong.png?v=1598516142870', 'https://mondowine.fr/1616-large_default/sugar-killed-biere-blonde-bio-33-cl.jpg', 'https://tse1.mm.bing.net/th?id=OIP.iZr3nqthgBWD7eLjc2ky3AHaHa&pid=Api&P=0&w=300&h=300');
/*!40000 ALTER TABLE `salescoffee` ENABLE KEYS */;

-- Dumping structure for table dulieuquanlifb.salescoffee2
CREATE TABLE IF NOT EXISTS `salescoffee2` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `code` varchar(4) NOT NULL,
  `image` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(200) NOT NULL,
  `size` varchar(2) NOT NULL,
  `price` int(15) NOT NULL,
  `grCoffee` int(5) NOT NULL,
  `freshMilk` int(5) NOT NULL,
  `condensedMilk` int(5) NOT NULL,
  `sugar` int(5) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total` double DEFAULT 0,
  `quantityNew` int(11) NOT NULL,
  `imgCoffee` varchar(200) DEFAULT NULL,
  `imgFreshMilk` varchar(200) DEFAULT NULL,
  `imgSugar` varchar(200) DEFAULT NULL,
  `imgMoney` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table dulieuquanlifb.salescoffee2: ~8 rows (approximately)
/*!40000 ALTER TABLE `salescoffee2` DISABLE KEYS */;
INSERT INTO `salescoffee2` (`id`, `code`, `image`, `name`, `size`, `price`, `grCoffee`, `freshMilk`, `condensedMilk`, `sugar`, `quantity`, `total`, `quantityNew`, `imgCoffee`, `imgFreshMilk`, `imgSugar`, `imgMoney`) VALUES
	(1, 'C01', 'https://benefitsuses.com/wp-content/uploads/2020/05/istock-157528129.jpg', 'Black Coffee', 'S', 35000, 18, 0, 0, 10, 0, 0, 1, 'https://salt.tikicdn.com/cache/550x550/ts/product/58/bf/85/50976303907b0d02c43fc9528a342087.jpg', 'https://bizweb.dktcdn.net/100/398/159/products/dalat-milk-co-duong.png?v=1598516142870', 'https://mondowine.fr/1616-large_default/sugar-killed-biere-blonde-bio-33-cl.jpg', 'https://tse1.mm.bing.net/th?id=OIP.iZr3nqthgBWD7eLjc2ky3AHaHa&pid=Api&P=0&w=300&h=300'),
	(2, 'C02', 'https://benefitsuses.com/wp-content/uploads/2020/05/istock-157528129.jpg\r\n', 'Black Coffee\r\n', 'M', 45000, 30, 0, 0, 20, 0, 0, 1, 'https://salt.tikicdn.com/cache/550x550/ts/product/58/bf/85/50976303907b0d02c43fc9528a342087.jpg', 'https://bizweb.dktcdn.net/100/398/159/products/dalat-milk-co-duong.png?v=1598516142870', 'https://mondowine.fr/1616-large_default/sugar-killed-biere-blonde-bio-33-cl.jpg', 'https://tse1.mm.bing.net/th?id=OIP.iZr3nqthgBWD7eLjc2ky3AHaHa&pid=Api&P=0&w=300&h=300'),
	(3, 'C03', 'https://img.aws.livestrongcdn.com/ls-article-image-673/ds-photo/getty/article/181/79/477867294.jpg\r\n', 'Milk Coffee\r\n', 'S', 38000, 18, 0, 30, 0, 0, 0, 1, 'https://salt.tikicdn.com/cache/550x550/ts/product/58/bf/85/50976303907b0d02c43fc9528a342087.jpg', 'https://bizweb.dktcdn.net/100/398/159/products/dalat-milk-co-duong.png?v=1598516142870', 'https://mondowine.fr/1616-large_default/sugar-killed-biere-blonde-bio-33-cl.jpg', 'https://tse1.mm.bing.net/th?id=OIP.iZr3nqthgBWD7eLjc2ky3AHaHa&pid=Api&P=0&w=300&h=300'),
	(4, 'C04', 'https://img.aws.livestrongcdn.com/ls-article-image-673/ds-photo/getty/article/181/79/477867294.jpg\r\n', 'Milk Coffee\r\n', 'M', 48000, 30, 0, 40, 0, 0, 0, 1, 'https://salt.tikicdn.com/cache/550x550/ts/product/58/bf/85/50976303907b0d02c43fc9528a342087.jpg', 'https://bizweb.dktcdn.net/100/398/159/products/dalat-milk-co-duong.png?v=1598516142870', 'https://mondowine.fr/1616-large_default/sugar-killed-biere-blonde-bio-33-cl.jpg', 'https://tse1.mm.bing.net/th?id=OIP.iZr3nqthgBWD7eLjc2ky3AHaHa&pid=Api&P=0&w=300&h=300'),
	(5, 'C05', 'https://plantres.com.mx/wp-content/uploads/2020/03/CafeLatte.jpg\r\n', 'Latte\r\n', 'S', 49000, 18, 120, 0, 10, 0, 0, 1, 'https://salt.tikicdn.com/cache/550x550/ts/product/58/bf/85/50976303907b0d02c43fc9528a342087.jpg', 'https://bizweb.dktcdn.net/100/398/159/products/dalat-milk-co-duong.png?v=1598516142870', 'https://mondowine.fr/1616-large_default/sugar-killed-biere-blonde-bio-33-cl.jpg', 'https://tse1.mm.bing.net/th?id=OIP.iZr3nqthgBWD7eLjc2ky3AHaHa&pid=Api&P=0&w=300&h=300'),
	(6, 'C06', 'http://cafeflavour.com/wp-content/uploads/2016/11/cappuccino-1609895_1920.jpg\r\n', 'Cappuccino\r\n', 'S', 49000, 18, 120, 0, 10, 0, 0, 1, 'https://salt.tikicdn.com/cache/550x550/ts/product/58/bf/85/50976303907b0d02c43fc9528a342087.jpg', 'https://bizweb.dktcdn.net/100/398/159/products/dalat-milk-co-duong.png?v=1598516142870', 'https://mondowine.fr/1616-large_default/sugar-killed-biere-blonde-bio-33-cl.jpg', 'https://tse1.mm.bing.net/th?id=OIP.iZr3nqthgBWD7eLjc2ky3AHaHa&pid=Api&P=0&w=300&h=300'),
	(7, 'C07', 'https://www.luckybelly.com/wp-content/uploads/2020/08/Where-does-the-Flat-White-come-from.jpg\r\n', 'White Coffee\r\n', 'S', 45000, 18, 80, 20, 0, 0, 0, 1, 'https://salt.tikicdn.com/cache/550x550/ts/product/58/bf/85/50976303907b0d02c43fc9528a342087.jpg', 'https://bizweb.dktcdn.net/100/398/159/products/dalat-milk-co-duong.png?v=1598516142870', 'https://mondowine.fr/1616-large_default/sugar-killed-biere-blonde-bio-33-cl.jpg', 'https://tse1.mm.bing.net/th?id=OIP.iZr3nqthgBWD7eLjc2ky3AHaHa&pid=Api&P=0&w=300&h=300'),
	(8, 'C08', 'https://www.luckybelly.com/wp-content/uploads/2020/08/Where-does-the-Flat-White-come-from.jpg\r\n', 'White Coffee\r\n', 'M', 55000, 30, 100, 30, 0, 0, 0, 1, 'https://salt.tikicdn.com/cache/550x550/ts/product/58/bf/85/50976303907b0d02c43fc9528a342087.jpg', 'https://bizweb.dktcdn.net/100/398/159/products/dalat-milk-co-duong.png?v=1598516142870', 'https://mondowine.fr/1616-large_default/sugar-killed-biere-blonde-bio-33-cl.jpg', 'https://tse1.mm.bing.net/th?id=OIP.iZr3nqthgBWD7eLjc2ky3AHaHa&pid=Api&P=0&w=300&h=300');
/*!40000 ALTER TABLE `salescoffee2` ENABLE KEYS */;

-- Dumping structure for table dulieuquanlifb.salesmilktea
CREATE TABLE IF NOT EXISTS `salesmilktea` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `code` varchar(4) NOT NULL,
  `image` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `size` varchar(2) NOT NULL,
  `price` int(15) NOT NULL,
  `typeofTea` varchar(30) NOT NULL,
  `mlTea` int(5) NOT NULL,
  `condensedMilk` int(5) NOT NULL,
  `typeofSyrup` varchar(30) NOT NULL,
  `mlSyrup` int(5) NOT NULL,
  `total` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `quantityNew` int(11) DEFAULT NULL,
  `imgTea` varchar(200) DEFAULT NULL,
  `imgSyrup` varchar(200) DEFAULT NULL,
  `imgMilk` varchar(200) DEFAULT NULL,
  `imgMoney` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table dulieuquanlifb.salesmilktea: ~10 rows (approximately)
/*!40000 ALTER TABLE `salesmilktea` DISABLE KEYS */;
INSERT INTO `salesmilktea` (`id`, `code`, `image`, `name`, `size`, `price`, `typeofTea`, `mlTea`, `condensedMilk`, `typeofSyrup`, `mlSyrup`, `total`, `quantity`, `quantityNew`, `imgTea`, `imgSyrup`, `imgMilk`, `imgMoney`) VALUES
	(3, 'M01', 'https://chinmilktea.vn/public/upload/images/hinhsanpham/tra-sua-dau-tay-58891616125982.JPG\r\n', 'Caramel Milk Tea\r\n', 'S', 42000, 'Green Tea ', 80, 30, 'Caramel', 10, 0, 0, 1, 'https://bizweb.dktcdn.net/thumb/1024x1024/100/339/090/products/mint-mistique-20foil.jpg?v=1548650737353', 'https://www.1stincoffee.com/media/catalog/product/c/a/caramel.jpg', 'https://s1.storage.5giay.vn/image/2017/09/20170924_d865f18f68424c4f60ad47b3c0ea9e56_1506231833.JPG', 'https://tse1.mm.bing.net/th?id=OIP.iZr3nqthgBWD7eLjc2ky3AHaHa&pid=Api&P=0&w=300&h=300'),
	(4, 'M02', 'https://chinmilktea.vn/public/upload/images/hinhsanpham/tra-sua-dau-tay-58891616125982.JPG\r\n', 'Caramel Milk Tea\r\n', 'M', 52000, 'Green Tea ', 120, 40, 'Caramel', 20, 0, 0, 1, 'https://bizweb.dktcdn.net/thumb/1024x1024/100/339/090/products/mint-mistique-20foil.jpg?v=1548650737353', 'https://www.1stincoffee.com/media/catalog/product/c/a/caramel.jpg', 'https://s1.storage.5giay.vn/image/2017/09/20170924_d865f18f68424c4f60ad47b3c0ea9e56_1506231833.JPG', 'https://tse1.mm.bing.net/th?id=OIP.iZr3nqthgBWD7eLjc2ky3AHaHa&pid=Api&P=0&w=300&h=300'),
	(5, 'M03', 'https://i.ytimg.com/vi/bsZAIV9o1UE/maxresdefault.jpg\r\n', 'Matcha Latte\r\n', 'S', 45000, 'Green Tea', 80, 40, 'Matcha', 10, 0, 0, 1, 'https://bizweb.dktcdn.net/thumb/1024x1024/100/339/090/products/mint-mistique-20foil.jpg?v=1548650737353', 'https://a1coffee.net/media/catalog/product/m/a/matcha.green.tea.jpg', 'https://s1.storage.5giay.vn/image/2017/09/20170924_d865f18f68424c4f60ad47b3c0ea9e56_1506231833.JPG', 'https://tse1.mm.bing.net/th?id=OIP.iZr3nqthgBWD7eLjc2ky3AHaHa&pid=Api&P=0&w=300&h=300'),
	(6, 'M04', 'https://i.ytimg.com/vi/bsZAIV9o1UE/maxresdefault.jpg\r\n', 'Matcha Latte\r\n', 'M', 55000, 'Green Tea', 120, 50, 'Matcha', 20, 0, 0, 1, 'https://bizweb.dktcdn.net/thumb/1024x1024/100/339/090/products/mint-mistique-20foil.jpg?v=1548650737353', 'https://a1coffee.net/media/catalog/product/m/a/matcha.green.tea.jpg', 'https://s1.storage.5giay.vn/image/2017/09/20170924_d865f18f68424c4f60ad47b3c0ea9e56_1506231833.JPG', 'https://tse1.mm.bing.net/th?id=OIP.iZr3nqthgBWD7eLjc2ky3AHaHa&pid=Api&P=0&w=300&h=300'),
	(7, 'M05', 'https://cachlambep.net/wp-content/uploads/2020/12/cach-lam-tra-sua-dai-loan.jpg\r\n', 'Almond Milk Tea\r\n', 'S', 42000, 'Oolong Tea', 80, 30, 'Almond', 10, 0, 0, 1, 'https://product.hstatic.net/200000326747/product/goi-tra-oolong-ngoc-thao-loai-cao-cap-250gr-03_2095ce13b82b4d349066c45613fcaf01.jpg', 'https://i5.walmartimages.com/asr/cb0c4d58-e1dd-4f2f-be07-00a577d8fd29_1.5785a8de85a162835ffdb168cc4e7146.jpeg', 'https://s1.storage.5giay.vn/image/2017/09/20170924_d865f18f68424c4f60ad47b3c0ea9e56_1506231833.JPG', 'https://tse1.mm.bing.net/th?id=OIP.iZr3nqthgBWD7eLjc2ky3AHaHa&pid=Api&P=0&w=300&h=300'),
	(8, 'M06', 'https://cachlambep.net/wp-content/uploads/2020/12/cach-lam-tra-sua-dai-loan.jpg\r\n', 'Almond Milk Tea\r\n', 'M', 52000, 'Oolong Tea', 120, 40, 'Almond', 20, 0, 0, 1, 'https://product.hstatic.net/200000326747/product/goi-tra-oolong-ngoc-thao-loai-cao-cap-250gr-03_2095ce13b82b4d349066c45613fcaf01.jpg', 'https://i5.walmartimages.com/asr/cb0c4d58-e1dd-4f2f-be07-00a577d8fd29_1.5785a8de85a162835ffdb168cc4e7146.jpeg', 'https://s1.storage.5giay.vn/image/2017/09/20170924_d865f18f68424c4f60ad47b3c0ea9e56_1506231833.JPG', 'https://tse1.mm.bing.net/th?id=OIP.iZr3nqthgBWD7eLjc2ky3AHaHa&pid=Api&P=0&w=300&h=300'),
	(9, 'M07', 'https://www.bartender.edu.vn/wp-content/uploads/2020/04/tra-sua-socola.jpg\r\n', 'Chocolate Milk Tea\r\n', 'S', 45000, 'Green Tea', 80, 40, 'Chocolate', 10, 0, 0, 1, 'https://bizweb.dktcdn.net/thumb/1024x1024/100/339/090/products/mint-mistique-20foil.jpg?v=1548650737353', 'https://i5.walmartimages.com/asr/3eac4925-ec22-4bc2-a303-30557e18091b_1.7b2f454ddb0d2db5ef4cb55ef0f2761d.jpeg', 'https://s1.storage.5giay.vn/image/2017/09/20170924_d865f18f68424c4f60ad47b3c0ea9e56_1506231833.JPG', 'https://tse1.mm.bing.net/th?id=OIP.iZr3nqthgBWD7eLjc2ky3AHaHa&pid=Api&P=0&w=300&h=300'),
	(10, 'M08', 'https://www.bartender.edu.vn/wp-content/uploads/2020/04/tra-sua-socola.jpg\r\n', 'Chocolate Milk Tea\r\n', 'M', 55000, 'Green Tea', 120, 50, 'Chocolate', 20, 0, 0, 1, 'https://bizweb.dktcdn.net/thumb/1024x1024/100/339/090/products/mint-mistique-20foil.jpg?v=1548650737353', 'https://i5.walmartimages.com/asr/3eac4925-ec22-4bc2-a303-30557e18091b_1.7b2f454ddb0d2db5ef4cb55ef0f2761d.jpeg', 'https://s1.storage.5giay.vn/image/2017/09/20170924_d865f18f68424c4f60ad47b3c0ea9e56_1506231833.JPG', 'https://tse1.mm.bing.net/th?id=OIP.iZr3nqthgBWD7eLjc2ky3AHaHa&pid=Api&P=0&w=300&h=300'),
	(11, 'M09', 'http://giaykiyomi.net/wp-content/uploads/2016/03/cach-lam-tra-sua-dau-tay-hat-tran-chau-thom-ngon-mat-lanh-giai-nhiet-ngay-he-5.jpg\r\n', 'Strawberry Milk Tea\r\n', 'S', 42000, 'Oolong Tea', 80, 30, 'Strawberry', 10, 0, 0, 1, 'https://product.hstatic.net/200000326747/product/goi-tra-oolong-ngoc-thao-loai-cao-cap-250gr-03_2095ce13b82b4d349066c45613fcaf01.jpg', 'https://i5.walmartimages.com/asr/54846d1e-de65-4d79-b049-4aa6d391e7ac_1.550055c54f20aebe8c2ea54e9200b008.jpeg', 'https://s1.storage.5giay.vn/image/2017/09/20170924_d865f18f68424c4f60ad47b3c0ea9e56_1506231833.JPG', 'https://tse1.mm.bing.net/th?id=OIP.iZr3nqthgBWD7eLjc2ky3AHaHa&pid=Api&P=0&w=300&h=300'),
	(12, 'M10', 'http://giaykiyomi.net/wp-content/uploads/2016/03/cach-lam-tra-sua-dau-tay-hat-tran-chau-thom-ngon-mat-lanh-giai-nhiet-ngay-he-5.jpg\r\n', 'Strawberry Milk Tea\r\n', 'M', 52000, 'Oolong Tea', 120, 40, 'Strawberry', 20, 0, 0, 1, 'https://product.hstatic.net/200000326747/product/goi-tra-oolong-ngoc-thao-loai-cao-cap-250gr-03_2095ce13b82b4d349066c45613fcaf01.jpg', 'https://i5.walmartimages.com/asr/54846d1e-de65-4d79-b049-4aa6d391e7ac_1.550055c54f20aebe8c2ea54e9200b008.jpeg', 'https://s1.storage.5giay.vn/image/2017/09/20170924_d865f18f68424c4f60ad47b3c0ea9e56_1506231833.JPG', 'https://tse1.mm.bing.net/th?id=OIP.iZr3nqthgBWD7eLjc2ky3AHaHa&pid=Api&P=0&w=300&h=300');
/*!40000 ALTER TABLE `salesmilktea` ENABLE KEYS */;

-- Dumping structure for table dulieuquanlifb.salesmilktea2
CREATE TABLE IF NOT EXISTS `salesmilktea2` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `code` varchar(4) NOT NULL,
  `image` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `size` varchar(2) NOT NULL,
  `price` int(15) NOT NULL,
  `typeofTea` varchar(30) NOT NULL,
  `mlTea` int(5) NOT NULL,
  `condensedMilk` int(5) NOT NULL,
  `typeofSyrup` varchar(30) NOT NULL,
  `mlSyrup` int(5) NOT NULL,
  `total` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `quantityNew` int(11) DEFAULT NULL,
  `imgTea` varchar(200) DEFAULT NULL,
  `imgSyrup` varchar(200) DEFAULT NULL,
  `imgMilk` varchar(200) DEFAULT NULL,
  `imgMoney` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table dulieuquanlifb.salesmilktea2: ~10 rows (approximately)
/*!40000 ALTER TABLE `salesmilktea2` DISABLE KEYS */;
INSERT INTO `salesmilktea2` (`id`, `code`, `image`, `name`, `size`, `price`, `typeofTea`, `mlTea`, `condensedMilk`, `typeofSyrup`, `mlSyrup`, `total`, `quantity`, `quantityNew`, `imgTea`, `imgSyrup`, `imgMilk`, `imgMoney`) VALUES
	(3, 'M01', 'https://chinmilktea.vn/public/upload/images/hinhsanpham/tra-sua-dau-tay-58891616125982.JPG\r\n', 'Caramel Milk Tea\r\n', 'S', 42000, 'Green Tea ', 80, 30, 'Caramel', 10, 0, 0, 1, 'https://bizweb.dktcdn.net/thumb/1024x1024/100/339/090/products/mint-mistique-20foil.jpg?v=1548650737353', 'https://www.1stincoffee.com/media/catalog/product/c/a/caramel.jpg', 'https://s1.storage.5giay.vn/image/2017/09/20170924_d865f18f68424c4f60ad47b3c0ea9e56_1506231833.JPG', 'https://tse1.mm.bing.net/th?id=OIP.iZr3nqthgBWD7eLjc2ky3AHaHa&pid=Api&P=0&w=300&h=300'),
	(4, 'M02', 'https://chinmilktea.vn/public/upload/images/hinhsanpham/tra-sua-dau-tay-58891616125982.JPG\r\n', 'Caramel Milk Tea\r\n', 'M', 52000, 'Green Tea ', 120, 40, 'Caramel', 20, 0, 0, 1, 'https://bizweb.dktcdn.net/thumb/1024x1024/100/339/090/products/mint-mistique-20foil.jpg?v=1548650737353', 'https://www.1stincoffee.com/media/catalog/product/c/a/caramel.jpg', 'https://s1.storage.5giay.vn/image/2017/09/20170924_d865f18f68424c4f60ad47b3c0ea9e56_1506231833.JPG', 'https://tse1.mm.bing.net/th?id=OIP.iZr3nqthgBWD7eLjc2ky3AHaHa&pid=Api&P=0&w=300&h=300'),
	(5, 'M03', 'https://i.ytimg.com/vi/bsZAIV9o1UE/maxresdefault.jpg\r\n', 'Matcha Latte\r\n', 'S', 45000, 'Green Tea', 80, 40, 'Matcha', 10, 0, 0, 1, 'https://bizweb.dktcdn.net/thumb/1024x1024/100/339/090/products/mint-mistique-20foil.jpg?v=1548650737353', 'https://a1coffee.net/media/catalog/product/m/a/matcha.green.tea.jpg', 'https://s1.storage.5giay.vn/image/2017/09/20170924_d865f18f68424c4f60ad47b3c0ea9e56_1506231833.JPG', 'https://tse1.mm.bing.net/th?id=OIP.iZr3nqthgBWD7eLjc2ky3AHaHa&pid=Api&P=0&w=300&h=300'),
	(6, 'M04', 'https://i.ytimg.com/vi/bsZAIV9o1UE/maxresdefault.jpg\r\n', 'Matcha Latte\r\n', 'M', 55000, 'Green Tea', 120, 50, 'Matcha', 20, 0, 0, 1, 'https://bizweb.dktcdn.net/thumb/1024x1024/100/339/090/products/mint-mistique-20foil.jpg?v=1548650737353', 'https://a1coffee.net/media/catalog/product/m/a/matcha.green.tea.jpg', 'https://s1.storage.5giay.vn/image/2017/09/20170924_d865f18f68424c4f60ad47b3c0ea9e56_1506231833.JPG', 'https://tse1.mm.bing.net/th?id=OIP.iZr3nqthgBWD7eLjc2ky3AHaHa&pid=Api&P=0&w=300&h=300'),
	(7, 'M05', 'https://cachlambep.net/wp-content/uploads/2020/12/cach-lam-tra-sua-dai-loan.jpg\r\n', 'Almond Milk Tea\r\n', 'S', 42000, 'Oolong Tea', 80, 30, 'Almond', 10, 0, 0, 1, 'https://product.hstatic.net/200000326747/product/goi-tra-oolong-ngoc-thao-loai-cao-cap-250gr-03_2095ce13b82b4d349066c45613fcaf01.jpg', 'https://i5.walmartimages.com/asr/cb0c4d58-e1dd-4f2f-be07-00a577d8fd29_1.5785a8de85a162835ffdb168cc4e7146.jpeg', 'https://s1.storage.5giay.vn/image/2017/09/20170924_d865f18f68424c4f60ad47b3c0ea9e56_1506231833.JPG', 'https://tse1.mm.bing.net/th?id=OIP.iZr3nqthgBWD7eLjc2ky3AHaHa&pid=Api&P=0&w=300&h=300'),
	(8, 'M06', 'https://cachlambep.net/wp-content/uploads/2020/12/cach-lam-tra-sua-dai-loan.jpg\r\n', 'Almond Milk Tea\r\n', 'M', 52000, 'Oolong Tea', 120, 40, 'Almond', 20, 0, 0, 1, 'https://product.hstatic.net/200000326747/product/goi-tra-oolong-ngoc-thao-loai-cao-cap-250gr-03_2095ce13b82b4d349066c45613fcaf01.jpg', 'https://i5.walmartimages.com/asr/cb0c4d58-e1dd-4f2f-be07-00a577d8fd29_1.5785a8de85a162835ffdb168cc4e7146.jpeg', 'https://s1.storage.5giay.vn/image/2017/09/20170924_d865f18f68424c4f60ad47b3c0ea9e56_1506231833.JPG', 'https://tse1.mm.bing.net/th?id=OIP.iZr3nqthgBWD7eLjc2ky3AHaHa&pid=Api&P=0&w=300&h=300'),
	(9, 'M07', 'https://www.bartender.edu.vn/wp-content/uploads/2020/04/tra-sua-socola.jpg\r\n', 'Chocolate Milk Tea\r\n', 'S', 45000, 'Green Tea', 80, 40, 'Chocolate', 10, 0, 0, 1, 'https://bizweb.dktcdn.net/thumb/1024x1024/100/339/090/products/mint-mistique-20foil.jpg?v=1548650737353', 'https://i5.walmartimages.com/asr/3eac4925-ec22-4bc2-a303-30557e18091b_1.7b2f454ddb0d2db5ef4cb55ef0f2761d.jpeg', 'https://s1.storage.5giay.vn/image/2017/09/20170924_d865f18f68424c4f60ad47b3c0ea9e56_1506231833.JPG', 'https://tse1.mm.bing.net/th?id=OIP.iZr3nqthgBWD7eLjc2ky3AHaHa&pid=Api&P=0&w=300&h=300'),
	(10, 'M08', 'https://www.bartender.edu.vn/wp-content/uploads/2020/04/tra-sua-socola.jpg\r\n', 'Chocolate Milk Tea\r\n', 'M', 55000, 'Green Tea', 120, 50, 'Chocolate', 20, 0, 0, 1, 'https://bizweb.dktcdn.net/thumb/1024x1024/100/339/090/products/mint-mistique-20foil.jpg?v=1548650737353', 'https://i5.walmartimages.com/asr/3eac4925-ec22-4bc2-a303-30557e18091b_1.7b2f454ddb0d2db5ef4cb55ef0f2761d.jpeg', 'https://s1.storage.5giay.vn/image/2017/09/20170924_d865f18f68424c4f60ad47b3c0ea9e56_1506231833.JPG', 'https://tse1.mm.bing.net/th?id=OIP.iZr3nqthgBWD7eLjc2ky3AHaHa&pid=Api&P=0&w=300&h=300'),
	(11, 'M09', 'http://giaykiyomi.net/wp-content/uploads/2016/03/cach-lam-tra-sua-dau-tay-hat-tran-chau-thom-ngon-mat-lanh-giai-nhiet-ngay-he-5.jpg\r\n', 'Strawberry Milk Tea\r\n', 'S', 42000, 'Oolong Tea', 80, 30, 'Strawberry', 10, 0, 0, 1, 'https://product.hstatic.net/200000326747/product/goi-tra-oolong-ngoc-thao-loai-cao-cap-250gr-03_2095ce13b82b4d349066c45613fcaf01.jpg', 'https://i5.walmartimages.com/asr/54846d1e-de65-4d79-b049-4aa6d391e7ac_1.550055c54f20aebe8c2ea54e9200b008.jpeg', 'https://s1.storage.5giay.vn/image/2017/09/20170924_d865f18f68424c4f60ad47b3c0ea9e56_1506231833.JPG', 'https://tse1.mm.bing.net/th?id=OIP.iZr3nqthgBWD7eLjc2ky3AHaHa&pid=Api&P=0&w=300&h=300'),
	(12, 'M10', 'http://giaykiyomi.net/wp-content/uploads/2016/03/cach-lam-tra-sua-dau-tay-hat-tran-chau-thom-ngon-mat-lanh-giai-nhiet-ngay-he-5.jpg\r\n', 'Strawberry Milk Tea\r\n', 'M', 52000, 'Oolong Tea', 120, 40, 'Strawberry', 20, 0, 0, 1, 'https://product.hstatic.net/200000326747/product/goi-tra-oolong-ngoc-thao-loai-cao-cap-250gr-03_2095ce13b82b4d349066c45613fcaf01.jpg', 'https://i5.walmartimages.com/asr/54846d1e-de65-4d79-b049-4aa6d391e7ac_1.550055c54f20aebe8c2ea54e9200b008.jpeg', 'https://s1.storage.5giay.vn/image/2017/09/20170924_d865f18f68424c4f60ad47b3c0ea9e56_1506231833.JPG', 'https://tse1.mm.bing.net/th?id=OIP.iZr3nqthgBWD7eLjc2ky3AHaHa&pid=Api&P=0&w=300&h=300');
/*!40000 ALTER TABLE `salesmilktea2` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
