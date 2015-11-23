-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.9-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.3.0.5013
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for parts
CREATE DATABASE IF NOT EXISTS `parts` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `parts`;


-- Dumping structure for table parts.case
CREATE TABLE IF NOT EXISTS `case` (
  `ID` tinyint(4) NOT NULL,
  `Name` tinytext NOT NULL,
  `Form` tinyint(4) NOT NULL,
  `Gaming` tinyint(4) NOT NULL,
  `Casual` tinyint(4) NOT NULL,
  `Pro` tinyint(4) NOT NULL,
  `Price` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ID = Internal ID of this item\r\nName = Product name\r\nForm = 0 (ATX), 1 (Micro ATX), 2 (Mini ITX)\r\nGaming = Processing power level in gaming\r\nCasual = processing power level in casual\r\nPro = Processing power level in professional\r\nPrice = price';

-- Dumping data for table parts.case: ~0 rows (approximately)
/*!40000 ALTER TABLE `case` DISABLE KEYS */;
/*!40000 ALTER TABLE `case` ENABLE KEYS */;


-- Dumping structure for table parts.cooler
CREATE TABLE IF NOT EXISTS `cooler` (
  `ID` tinyint(4) NOT NULL,
  `Name` tinytext NOT NULL,
  `Type` tinyint(4) NOT NULL,
  `Price` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ID = Internal ID of this item\r\nName = Product name\r\nType = 0 (not-K), 1 (Core i5-xxxxK) or 2 (Core i7-xxxxK or xxxxX)\r\nPrice = Price';

-- Dumping data for table parts.cooler: ~3 rows (approximately)
/*!40000 ALTER TABLE `cooler` DISABLE KEYS */;
INSERT INTO `cooler` (`ID`, `Name`, `Type`, `Price`) VALUES
	(1, 'Cooler Master Geminll M4', 1, 38),
	(2, 'Corsair Hydro Series H60', 2, 60),
	(0, 'Stock Cooler', 0, 0);
/*!40000 ALTER TABLE `cooler` ENABLE KEYS */;


-- Dumping structure for table parts.cpu
CREATE TABLE IF NOT EXISTS `cpu` (
  `ID` tinyint(4) NOT NULL,
  `Name` tinytext NOT NULL,
  `Socket` smallint(6) NOT NULL,
  `Power` smallint(6) NOT NULL,
  `CoolerType` tinyint(4) NOT NULL,
  `TamType` tinyint(4) DEFAULT NULL,
  `Gaming` tinyint(4) NOT NULL,
  `Casual` tinyint(4) NOT NULL,
  `Pro` tinyint(4) NOT NULL,
  `Price` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ID = Internal ID of this item\r\nName = Product name\r\nSocket = 1150 (Haswell), 1151 (Skylake) or 2011 (Haswell-E/Xeon)\r\nPower = Power needed in watt\r\nCoolerType = 0 (not-K), 1 (Core i5-xxxxK) or 2 (Core i7-xxxxK or xxxxX)\r\nRamType = 0 (DDR3), 1 (DDR4)\r\nGaming = Processing power level in gaming\r\nCasual = processing power level in casual\r\nPro = Processing power level in professional\r\nPrice = price';

-- Dumping data for table parts.cpu: ~12 rows (approximately)
/*!40000 ALTER TABLE `cpu` DISABLE KEYS */;
INSERT INTO `cpu` (`ID`, `Name`, `Socket`, `Power`, `CoolerType`, `TamType`, `Gaming`, `Casual`, `Pro`, `Price`) VALUES
	(1, 'Intel Pentium G3240', 1150, 53, 0, 0, 0, 1, 0, 60),
	(2, 'Intel Pentium G3460', 1150, 53, 0, 0, 0, 2, 0, 70),
	(3, 'Intel Core i3-4170', 1150, 54, 0, 0, 0, 3, 0, 125),
	(4, 'Intel Core i5-4440', 1150, 84, 0, 0, 1, 0, 0, 180),
	(5, 'Intel Core i5-4460', 1150, 84, 0, 0, 0, 4, 0, 190),
	(6, 'Intel Core i5-4570', 1150, 84, 0, 0, 2, 0, 0, 200),
	(7, 'Intel Core i5-4670', 1150, 84, 0, 0, 0, 5, 0, 223),
	(8, 'Intel Core i5-6500', 1151, 65, 0, 1, 3, 0, 0, 205),
	(9, 'Intel Core i5-6600K', 1151, 91, 1, 1, 4, 0, 0, 270),
	(10, 'Intel Core i7-4790', 1150, 84, 0, 0, 5, 0, 0, 310),
	(11, 'Intel Core i7-6700K', 1151, 91, 2, 1, 6, 0, 0, 400),
	(12, 'Intel Core i7-5960X', 2011, 140, 2, 1, 7, 0, 0, 1050);
/*!40000 ALTER TABLE `cpu` ENABLE KEYS */;


-- Dumping structure for table parts.gpu
CREATE TABLE IF NOT EXISTS `gpu` (
  `ID` tinyint(4) NOT NULL,
  `Name` tinytext NOT NULL,
  `Vram` tinytext NOT NULL,
  `Power` smallint(6) NOT NULL,
  `Gaming` tinyint(4) NOT NULL,
  `Casual` tinyint(4) NOT NULL,
  `Pro` tinyint(4) NOT NULL,
  `Price` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ID = Internal ID of this item\r\nName = Product name\r\nPower = Power needed in watt\r\nGaming = Processing power level in gaming\r\nCasual = processing power level in casual\r\nPro = Processing power level in professional\r\nPrice = price';

-- Dumping data for table parts.gpu: ~6 rows (approximately)
/*!40000 ALTER TABLE `gpu` DISABLE KEYS */;
INSERT INTO `gpu` (`ID`, `Name`, `Vram`, `Power`, `Gaming`, `Casual`, `Pro`, `Price`) VALUES
	(1, 'ASUS GeForce GTX 750 Ti', '2GB GDDR5', 150, 1, 0, 0, 130),
	(2, 'ASUS GeForce GTX 960', '4GB GDDR5', 120, 3, 0, 0, 240),
	(3, 'EVGA GeForce GTX 980', '4GB GDDR5', 165, 6, 0, 0, 510),
	(4, 'EVGA GeFroce GTX 980 Ti', '6GB GDDR5', 165, 7, 0, 0, 650),
	(5, 'EVGA GeForce GT 740', '2GB GDDR5', 64, 0, 5, 0, 90),
	(0, 'Integrated Intel HD Graphics', 'N/A', 0, 0, 1, 0, 0);
/*!40000 ALTER TABLE `gpu` ENABLE KEYS */;


-- Dumping structure for table parts.hdd
CREATE TABLE IF NOT EXISTS `hdd` (
  `ID` tinyint(4) NOT NULL,
  `Name` tinytext NOT NULL,
  `Capacity` smallint(6) NOT NULL,
  `Power` smallint(6) NOT NULL,
  `Storage` tinyint(4) NOT NULL,
  `Gaming` tinyint(4) NOT NULL,
  `Casual` tinyint(4) NOT NULL,
  `Pro` tinyint(4) NOT NULL,
  `Price` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ID = Internal ID of this item\r\nName = Product name\r\nCapacity = Size of HDD (GB)\r\nPower = Power needed in watt\r\nStorage = Storage level\r\nGaming = Processing power level in gaming\r\nCasual = processing power level in casual\r\nPro = Processing power level in professional\r\nPrice = price';

-- Dumping data for table parts.hdd: ~0 rows (approximately)
/*!40000 ALTER TABLE `hdd` DISABLE KEYS */;
/*!40000 ALTER TABLE `hdd` ENABLE KEYS */;


-- Dumping structure for table parts.motherboard
CREATE TABLE IF NOT EXISTS `motherboard` (
  `ID` tinyint(4) NOT NULL,
  `Name` tinytext NOT NULL,
  `Form` tinyint(4) NOT NULL,
  `Socket` smallint(6) NOT NULL,
  `Gaming` tinyint(4) NOT NULL,
  `Casual` tinyint(4) NOT NULL,
  `Pro` tinyint(4) NOT NULL,
  `Price` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ID = Internal ID of this item\r\nName = Product name\r\nForm = 0 (ATX), 1 (Micro ATX), 2 (Mini ITX)\r\nSocket = 1150 (Haswell), 1151 (Skylake) or 2011 (Haswell-E/Xeon)\r\nGaming = Processing power level in gaming\r\nCasual = processing power level in casual\r\nPro = Processing power level in professional\r\nPrice = price';

-- Dumping data for table parts.motherboard: ~5 rows (approximately)
/*!40000 ALTER TABLE `motherboard` DISABLE KEYS */;
INSERT INTO `motherboard` (`ID`, `Name`, `Form`, `Socket`, `Gaming`, `Casual`, `Pro`, `Price`) VALUES
	(1, 'MSI Z97 PC Mate', 0, 1150, 1, 0, 0, 80),
	(2, 'Gigabyte FA-B85M-D3H', 1, 1150, 1, 0, 0, 73),
	(3, 'ASRock H97M-ITX/ac', 2, 1150, 1, 1, 0, 95),
	(4, 'MSI B85-G43 Gaming', 0, 1150, 0, 1, 0, 70),
	(5, 'MSI H81-P33', 1, 1150, 0, 1, 0, 45);
/*!40000 ALTER TABLE `motherboard` ENABLE KEYS */;


-- Dumping structure for table parts.optical
CREATE TABLE IF NOT EXISTS `optical` (
  `ID` tinyint(4) NOT NULL,
  `Name` tinytext NOT NULL,
  `Type` tinyint(4) NOT NULL,
  `Power` smallint(6) NOT NULL,
  `Gaming` tinyint(4) NOT NULL,
  `Casual` tinyint(4) NOT NULL,
  `Pro` tinyint(4) NOT NULL,
  `Price` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ID = Internal ID of this item\r\nName = Product name\r\nType = 0 (DVD), 1 (BD)\r\nPower = Power needed in watt\r\nGaming = Processing power level in gaming\r\nCasual = processing power level in casual\r\nPro = Processing power level in professional\r\nPrice = price';

-- Dumping data for table parts.optical: ~0 rows (approximately)
/*!40000 ALTER TABLE `optical` DISABLE KEYS */;
/*!40000 ALTER TABLE `optical` ENABLE KEYS */;


-- Dumping structure for table parts.psu
CREATE TABLE IF NOT EXISTS `psu` (
  `ID` tinyint(4) NOT NULL,
  `Name` tinytext NOT NULL,
  `Power` smallint(6) NOT NULL,
  `Gaming` tinyint(4) NOT NULL,
  `Casual` tinyint(4) NOT NULL,
  `Pro` tinyint(4) NOT NULL,
  `Price` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ID = Internal ID of this item\r\nName = Product name\r\nPower = Maximum power (Watt)\r\nGaming = Processing power level in gaming\r\nCasual = processing power level in casual\r\nPro = Processing power level in professional\r\nPrice = price';

-- Dumping data for table parts.psu: ~0 rows (approximately)
/*!40000 ALTER TABLE `psu` DISABLE KEYS */;
/*!40000 ALTER TABLE `psu` ENABLE KEYS */;


-- Dumping structure for table parts.ram
CREATE TABLE IF NOT EXISTS `ram` (
  `ID` tinyint(4) NOT NULL,
  `Name` tinytext NOT NULL,
  `Capacity` tinyint(4) NOT NULL,
  `Type` tinyint(4) NOT NULL,
  `Power` smallint(6) NOT NULL,
  `Gaming` tinyint(4) NOT NULL,
  `Casual` tinyint(4) NOT NULL,
  `Pro` tinyint(4) NOT NULL,
  `Price` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ID = Internal ID of this item\r\nName = Product name\r\nCapacity = Size of ram (GB)\r\nType = 0 (DDR3), 1 (DDR4)\r\nPower = Power needed in watt\r\nGaming = Processing power level in gaming\r\nCasual = processing power level in casual\r\nPro = Processing power level in professional\r\nPrice = price';

-- Dumping data for table parts.ram: ~6 rows (approximately)
/*!40000 ALTER TABLE `ram` DISABLE KEYS */;
INSERT INTO `ram` (`ID`, `Name`, `Capacity`, `Type`, `Power`, `Gaming`, `Casual`, `Pro`, `Price`) VALUES
	(1, 'Crucial Ballistix Sport 2x4GB DDR3-1600', 8, 0, 0, 1, 3, 0, 40),
	(2, 'Corsair Vengeance Pro 2x8GB DDR3-2400', 16, 0, 0, 5, 0, 0, 70),
	(3, 'Crucial Ballistix Sport 2x4GB DDR4-2400', 8, 1, 0, 4, 0, 0, 53),
	(4, 'Corsair Vengeance LPX 2x8GB DDR4-2666', 16, 1, 0, 6, 0, 0, 88),
	(5, 'Corsair Vengeance LPX 4x8GB DDR4-2400', 32, 1, 0, 7, 0, 0, 190),
	(6, 'Crucial Ballistix Sport 1x4GB DDR3-1600', 4, 0, 0, 0, 1, 0, 23);
/*!40000 ALTER TABLE `ram` ENABLE KEYS */;


-- Dumping structure for table parts.ssd
CREATE TABLE IF NOT EXISTS `ssd` (
  `ID` tinyint(4) NOT NULL,
  `Name` tinytext NOT NULL,
  `Capacity` smallint(6) NOT NULL,
  `Type` tinyint(4) NOT NULL,
  `Power` smallint(6) NOT NULL,
  `Storage` tinyint(4) NOT NULL,
  `Gaming` tinyint(4) NOT NULL,
  `Casual` tinyint(4) NOT NULL,
  `Pro` tinyint(4) NOT NULL,
  `Price` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ID = Internal ID of this item\r\nName = Product name\r\nCapacity = Size of SSD (GB)\r\nType = 0 (SATA III), 1 (PCI-E)\r\nPower = Power needed in watt\r\nStorage = Storage level\r\nGaming = Processing power level in gaming\r\nCasual = processing power level in casual\r\nPro = Processing power level in professional\r\nPrice = price';

-- Dumping data for table parts.ssd: ~0 rows (approximately)
/*!40000 ALTER TABLE `ssd` DISABLE KEYS */;
/*!40000 ALTER TABLE `ssd` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
