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



-- Dumping structure for table parts.case
CREATE TABLE IF NOT EXISTS `case` (
  `ID` tinyint(4) NOT NULL,
  `Name` tinytext NOT NULL,
  `Form` tinyint(4) NOT NULL,
  `Gaming` tinyint(4) NOT NULL,
  `Casual` tinyint(4) NOT NULL,
  `Pro` tinyint(4) NOT NULL,
  `Price` smallint(6) NOT NULL,
  `Image` tinytext NOT NULL
);
-- Dumping data for table parts.case: ~5 rows (approximately)
/*!40000 ALTER TABLE `case` DISABLE KEYS */;
INSERT INTO `case` (`ID`, `Name`, `Form`, `Gaming`, `Casual`, `Pro`, `Price`,`Image`) VALUES
	(1, 'Rosewill Rise ATX', 0, 0, 1, 0, 75,'Rosewill-Rise-ATX.jpg'),
	(2, 'Thermaltake Chaser Series MK-1', 0, 1, 0, 0, 150,'Thermaltake-Chaser-Series.png'),
	(3, 'Rosewill Blackhawk', 1, 1, 1, 0, 90,'Rosewill-Blackhawk.jpg'),
	(4, 'SilverStone SST-PS07B', 2, 1, 1, 0, 75,'SilverStone-SST-PS07B.jpg'),
	(5, 'Raijintek Metis Aluminum', 3, 1, 1, 0, 60,'Raijintek-Metis-Aluminum.jpg');
/*!40000 ALTER TABLE `case` ENABLE KEYS */;


-- Dumping structure for table parts.cooler
CREATE TABLE IF NOT EXISTS `cooler` (
  `ID` tinyint(4) NOT NULL,
  `Name` tinytext NOT NULL,
  `Type` tinyint(4) NOT NULL,
  `Price` smallint(6) NOT NULL,
  `Image` tinytext NOT NULL
);

-- Dumping data for table parts.cooler: ~3 rows (approximately)
/*!40000 ALTER TABLE `cooler` DISABLE KEYS */;
INSERT INTO `cooler` (`ID`, `Name`, `Type`, `Price`,`Image`) VALUES
	(1, 'Cooler Master Geminll M4', 1, 38,'CoolerMaster-Geminii-M4.png'),
	(2, 'Corsair Hydro Series H60', 2, 60,'H60.png'),
	(0, 'Stock Cooler', 0, 0,'none');
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
  `Price` smallint(6) NOT NULL,
  `Image` tinytext NOT NULL
) ;

-- Dumping data for table parts.cpu: ~12 rows (approximately)
/*!40000 ALTER TABLE `cpu` DISABLE KEYS */;
INSERT INTO `cpu` (`ID`, `Name`, `Socket`, `Power`, `CoolerType`, `TamType`, `Gaming`, `Casual`, `Pro`, `Price`,`Image`) VALUES
	(1, 'Intel Pentium G3240', 1150, 53, 0, 0, 0, 1, 0, 60,'Haswell-Pentium.png'),
	(2, 'Intel Pentium G3460', 1150, 53, 0, 0, 0, 2, 0, 70,'Haswell-Pentium.png'),
	(3, 'Intel Core i3-4170', 1150, 54, 0, 0, 0, 3, 0, 125,'Haswell-i3.png'),
	(4, 'Intel Core i5-4440', 1150, 84, 0, 0, 1, 0, 0, 180,'Haswell-i5.png'),
	(5, 'Intel Core i5-4460', 1150, 84, 0, 0, 0, 4, 0, 190,'Haswell-i5.png'),
	(6, 'Intel Core i5-4570', 1150, 84, 0, 0, 2, 0, 0, 200,'Haswell-i5.png'),
	(7, 'Intel Core i5-4670', 1150, 84, 0, 0, 0, 5, 0, 223,'Haswell-i5.png'),
	(8, 'Intel Core i5-6500', 1151, 65, 0, 1, 3, 0, 0, 205,'Skylake-i5.png'),
	(9, 'Intel Core i5-6600K', 1151, 91, 1, 1, 4, 0, 0, 270,'Skylake-i5.png'),
	(10, 'Intel Core i7-4790', 1150, 84, 0, 0, 5, 0, 0, 310,'Haswell-i7.png'),
	(11, 'Intel Core i7-6700K', 1151, 91, 2, 1, 6, 0, 0, 400,'Skylake-i7.png'),
	(12, 'Intel Core i7-5960X', 2011, 140, 2, 1, 7, 0, 0, 1050,'Haswell-Extreme-i7.png');
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
  `Price` smallint(6) NOT NULL,
  `Image` tinytext NOT NULL
) ;

-- Dumping data for table parts.gpu: ~6 rows (approximately)
/*!40000 ALTER TABLE `gpu` DISABLE KEYS */;
INSERT INTO `gpu` (`ID`, `Name`, `Vram`, `Power`, `Gaming`, `Casual`, `Pro`, `Price`,`Image`) VALUES
	(1, 'ASUS GeForce GTX 750 Ti', '2GB GDDR5', 150, 1, 0, 0, 130,'geforce-gtx-750-ti.png'),
	(2, 'ASUS GeForce GTX 960', '4GB GDDR5', 120, 2, 0, 0, 240,'geforce-gtx-960.png'),
	(3, 'EVGA GeForce GTX 980', '4GB GDDR5', 165, 3, 0, 0, 510,'GeForce-GTX-980.png'),
	(4, 'EVGA GeFroce GTX 980 Ti', '6GB GDDR5', 165, 4, 0, 0, 650,'geforce-gtx-980-ti.png'),
	(5, 'EVGA GeForce GT 740', '2GB GDDR5', 64, 0, 5, 0, 90,'geforce-gtx-750-ti.png'),
	(0, 'Integrated Intel HD Graphics', 'N/A', 0, 0, 1, 0, 0,'none');
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
  `Price` smallint(6) NOT NULL,
  `Image` tinytext NOT NULL
) ;

-- Dumping data for table parts.hdd: ~3 rows (approximately)
/*!40000 ALTER TABLE `hdd` DISABLE KEYS */;
INSERT INTO `hdd` (`ID`, `Name`, `Capacity`, `Power`, `Storage`, `Gaming`, `Casual`, `Pro`, `Price`,`Image`) VALUES
	(1, 'Seagate 7200RPM 1TB', 1000, 10, 1, 1, 1, 0, 48,'Seagate-Constellation.jpg'),
	(2, 'Seagate 7200RPM 2TB', 2000, 10, 2, 1, 1, 0, 72,'Seagate-Constellation.jpg'),
	(3, 'Seagate 7200RPM 3TB', 4000, 10, 3, 1, 0, 0, 116,'Seagate-Constellation.jpg');
/*!40000 ALTER TABLE `hdd` ENABLE KEYS */;


-- Dumping structure for table parts.motherboard
CREATE TABLE IF NOT EXISTS `motherboard` (
  `ID` tinyint(4) NOT NULL,
  `Name` tinytext NOT NULL,
  `Form` tinyint(4) NOT NULL,
  `Socket` smallint(6) NOT NULL,
  `Power` smallint(6) NOT NULL,
  `Gaming` tinyint(4) NOT NULL,
  `Casual` tinyint(4) NOT NULL,
  `Pro` tinyint(4) NOT NULL,
  `Price` smallint(6) NOT NULL,
  `Image` tinytext NOT NULL
);

-- Dumping data for table parts.motherboard: ~5 rows (approximately)
/*!40000 ALTER TABLE `motherboard` DISABLE KEYS */;
INSERT INTO `motherboard` (`ID`, `Name`, `Form`, `Socket`, `Power`, `Gaming`, `Casual`, `Pro`, `Price`,`Image`) VALUES
	(1, 'MSI Z97 PC Mate', 0, 1150, 50, 1, 0, 0, 80,'MSI-Z97-PC-Mate.png'),
	(2, 'Gigabyte FA-B85M-D3H', 2, 1150, 50, 1, 0, 0, 73,'Gigabyte-GA-B85M-D3H.png'),
	(3, 'ASRock H97M-ITX/ac', 3, 1150, 50, 1, 1, 0, 95,'ASRock-H97M-ITXac.png'),
	(4, 'MSI B85-G43 Gaming', 0, 1150, 50, 0, 1, 0, 70,'MSI-B85-G43-Gaming.png'),
	(5, 'MSI H81-P33', 2, 1150, 50, 0, 1, 0, 45,'MSI-H81-P33.png');
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
) ;

-- Dumping data for table parts.optical: ~2 rows (approximately)
/*!40000 ALTER TABLE `optical` DISABLE KEYS */;
INSERT INTO `optical` (`ID`, `Name`, `Type`, `Power`, `Gaming`, `Casual`, `Pro`, `Price`) VALUES
	(1, 'ASUS 24X DVD Burner', 0, 0, 1, 1, 0, 20),
	(2, 'LG 16X Blu-Ray Burner', 1, 0, 0, 0, 0, 59);
/*!40000 ALTER TABLE `optical` ENABLE KEYS */;


-- Dumping structure for table parts.psu
CREATE TABLE IF NOT EXISTS `psu` (
  `ID` tinyint(4) NOT NULL,
  `Name` tinytext NOT NULL,
  `Power` smallint(6) NOT NULL,
  `Gaming` tinyint(4) NOT NULL,
  `Casual` tinyint(4) NOT NULL,
  `Pro` tinyint(4) NOT NULL,
  `Price` smallint(6) NOT NULL,
  `Image` tinytext NOT NULL
) ;

-- Dumping data for table parts.psu: ~8 rows (approximately)
/*!40000 ALTER TABLE `psu` DISABLE KEYS */;
INSERT INTO `psu` (`ID`, `Name`, `Power`, `Gaming`, `Casual`, `Pro`, `Price`,`Image`) VALUES
	(1, 'Corsair CX430', 430, 1, 1, 1, 43,'Corsair-CX-Series.png'),
	(2, 'Corsair CX500', 500, 1, 1, 1, 53,'Corsair-CX-Series.png'),
	(3, 'Corsair CX600', 600, 1, 1, 1, 65,'Corsair-CX-Series.png'),
	(4, 'Corsair CX750', 750, 1, 1, 1, 70,'Corsair-CX-Series.png'),
	(5, 'Corsair HX850i', 850, 1, 1, 1, 160,'Corsair HX1000i.png'),
	(6, 'Corsair HX1000i', 1000, 1, 1, 1, 190,'Corsair HX1000i.png'),
	(7, 'Corsair AX1200i', 1200, 1, 1, 1, 300,'Corsair-AX1200i.png'),
	(8, 'Corsair AX1500i', 1500, 1, 1, 1, 410,'Corsair-AX1500i.png');
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
  `Price` smallint(6) NOT NULL,
  `Image` tinytext NOT NULL
) ;

-- Dumping data for table parts.ram: ~6 rows (approximately)
/*!40000 ALTER TABLE `ram` DISABLE KEYS */;
INSERT INTO `ram` (`ID`, `Name`, `Capacity`, `Type`, `Power`, `Gaming`, `Casual`, `Pro`, `Price`,`Image`) VALUES
	(1, 'Crucial Ballistix Sport 2x4GB DDR3-1600', 8, 0, 0, 1, 3, 0, 40,'Crucial-Ballistix-Sport-DDR3.png'),
	(2, 'Corsair Vengeance Pro 2x8GB DDR3-2400', 16, 0, 0, 5, 0, 0, 70,'Corsair-Vengeance-Pro-ddr3.png'),
	(3, 'Crucial Ballistix Sport 2x4GB DDR4-2400', 8, 1, 0, 4, 0, 0, 53,'Crucial-Ballistix-DDR4.png'),
	(4, 'Corsair Vengeance LPX 2x8GB DDR4-2666', 16, 1, 0, 6, 0, 0, 88,'Corsair-Vengeance-LPX-ddr4.png'),
	(5, 'Corsair Vengeance LPX 4x8GB DDR4-2400', 32, 1, 0, 7, 0, 0, 190,'Corsair-Vengeance-LPX-ddr4.png'),
	(6, 'Crucial Ballistix Sport 1x4GB DDR3-1600', 4, 0, 0, 0, 1, 0, 23,'Crucial-Ballistix-Sport-DDR3.png');
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
  `Price` smallint(6) NOT NULL,
  `Image` tinytext NOT NULL
) ;

-- Dumping data for table parts.ssd: ~5 rows (approximately)
/*!40000 ALTER TABLE `ssd` DISABLE KEYS */;
INSERT INTO `ssd` (`ID`, `Name`, `Capacity`, `Type`, `Power`, `Storage`, `Gaming`, `Casual`, `Pro`, `Price`,`Image`) VALUES
	(1, 'SanDisk Z400s 128GB', 128, 0, 0, 1, 1, 3, 0, 50,'Sandisk-Z400s.png'),
	(2, 'SanDisk Z400s 256GB', 256, 0, 0, 2, 1, 0, 0, 80,'Sandisk-Z400s.png'),
	(3, 'Samsung 850 Evo 120GB', 120, 0, 0, 1, 3, 0, 0, 70,'Samsung-850-Evo.png'),
	(4, 'Samsung 850 Evo 250GB', 250, 0, 0, 2, 3, 0, 0, 97,'Samsung-850-Evo.png'),
	(5, 'Samsung 850 Evo 500GB', 500, 0, 0, 3, 3, 0, 0, 175,'Samsung-850-Evo.png');
/*!40000 ALTER TABLE `ssd` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
