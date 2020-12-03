-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 02, 2020 at 04:02 PM
-- Server version: 5.7.31
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
CREATE TABLE IF NOT EXISTS `cars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `model` varchar(25) NOT NULL,
  `description` varchar(500) NOT NULL,
  `image` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `name`, `model`, `description`, `image`) VALUES
(1, 'Mini', 'Cooper Hatchback', 'Engine type - Number of cylinders :	Inline 4\r\nEngine Code :	-\r\nFuel type :	Petrol\r\nFuel System :	MPI\r\nEngine Alignment :	Transverse', 'r50.jpg'),
(2, 'Mini', 'Cooper Convertible', 'Fuel Consumption - Economy - Combined:	8.4 L/100km\r\n34 mpg UK / 28 mpg US\r\nRange :	595 Km or 370 miles\r\nFuel Tank Capacity :	50 L\r\n11 UK gallons\r\n13.2 US gallons\r\nCO2 emissions :	202 g/Km (Mini)', 'r52.jpg'),
(3, 'Mini', 'Cooper S Convertible', 'Engine type - Number of cylinders :	Inline 4\r\nWheelbase :	247 cm or 97.24 inches\r\nLength :	366 cm or 144.09 inches\r\nWidth :	169 cm or 66.54 inches\r\nHeight :	142 cm or 55.91 inches\r\n', 'r53.jpg'),
(4, 'Mini', 'Cooper Clubman', 'ARAI Mileage15.6 kmpl\r\nCity Mileage10.3 kmpl\r\nFuel Type PetrolEngine \r\nDisplacement (cc)1598Max Power (bhp@rpm)120.7bhp@6000rpm', 'r55.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
