-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: May 21, 2025 at 06:34 AM
-- Server version: 10.6.5-MariaDB
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `templedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `poojas`
--

DROP TABLE IF EXISTS `poojas`;
CREATE TABLE IF NOT EXISTS `poojas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `temple_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `temple_id` (`temple_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `poojas`
--

INSERT INTO `poojas` (`id`, `temple_id`, `name`, `price`) VALUES
(1, 1, 'Usha Pooja', 150),
(2, 1, 'Noon Pooja', 200),
(3, 1, 'Athazha Pooja', 250),
(4, 2, 'Ganapathi Homam', 100),
(5, 2, 'Neyyabhishekam', 300),
(6, 2, 'Malar Nivedyam', 120),
(7, 3, 'Deeparadhana', 80),
(8, 3, 'Guruthi Pooja', 180),
(9, 3, 'Bhagavathi Seva', 150),
(10, 4, 'Pushpanjali', 60),
(11, 4, 'Archana', 50),
(12, 4, 'Kumkumarchana', 100),
(13, 5, 'Shivarchana', 200),
(14, 5, 'Abhishekam', 250),
(15, 5, 'Neeranjanam', 90),
(16, 6, 'Uruli Kamazhthal', 600),
(17, 6, 'Noorum Palum', 150),
(18, 6, 'Sarpabali', 350),
(19, 7, 'Bali Tharpanam', 250),
(20, 7, 'Annadanam', 100),
(21, 7, 'Neyvilakku', 120),
(22, 8, 'Kalamezhuthu Pattu', 500),
(23, 8, 'Pushpanjali', 80),
(24, 8, 'Thrikalapooja', 150),
(25, 9, 'Vellattam', 200),
(26, 9, 'Thiruvappana', 250),
(27, 9, 'Payasam Nivedyam', 100),
(28, 10, 'Usha Pooja', 150),
(29, 10, 'Nivedyam', 60),
(30, 10, 'Thrimadhuram', 90);

-- --------------------------------------------------------

--
-- Table structure for table `temples`
--

DROP TABLE IF EXISTS `temples`;
CREATE TABLE IF NOT EXISTS `temples` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temples`
--

INSERT INTO `temples` (`id`, `name`, `location`, `district`) VALUES
(1, 'Sree Krishna Temple', 'Guruvayoor', 'Thrissur'),
(2, 'Sabarimala Ayyappa Temple', 'Sabarimala', 'Pathanamthitta'),
(3, 'Chottanikkara Devi Temple', 'Chottanikkara', 'Ernakulam'),
(4, 'Attukal Bhagavathy Temple', 'Thiruvananthapuram', 'Thiruvananthapuram'),
(5, 'Vaikom Mahadeva Temple', 'Vaikom', 'Kottayam'),
(6, 'Mannarasala Nagaraja Temple', 'Haripad', 'Alappuzha'),
(7, 'Thirunelli Temple', 'Wayanad', 'Wayanad'),
(8, 'Lokanarkavu Temple', 'Vadakara', 'Kozhikode'),
(9, 'Parassinikkadavu Muthappan Temple', 'Kannur', 'Kannur'),
(10, 'Kaviyoor Mahadeva Temple', 'Kaviyoor', 'Pathanamthitta');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
