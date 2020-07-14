-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 14, 2020 at 06:09 AM
-- Server version: 5.7.28
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `credit_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `transfer`
--

DROP TABLE IF EXISTS `transfer`;
CREATE TABLE IF NOT EXISTS `transfer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` varchar(30) DEFAULT NULL,
  `receiver` varchar(30) DEFAULT NULL,
  `trans_credit` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transfer`
--

INSERT INTO `transfer` (`id`, `sender`, `receiver`, `trans_credit`) VALUES
(20, 'user5@gmail.com', 'user8@gmail.com', 50),
(19, 'user2@gmail.com', 'user1@gmail.com', 100),
(18, 'user2@gmail.com', 'user1@gmail.com', 100),
(17, 'user1@gmail.com', 'user2@gmail.com', 10),
(21, 'user5@gmail.com', 'user8@gmail.com', 50),
(22, 'user5@gmail.com', 'user8@gmail.com', 50),
(23, 'user5@gmail.com', 'user8@gmail.com', 50),
(24, 'user2@gmail.com', 'user1@gmail.com', 10);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `e_mail` varchar(30) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `e_mail`, `name`, `credit`) VALUES
(1, 'user1@gmail.com', 'user 1', 300),
(2, 'user2@gmail.com', 'user 2', 900),
(3, 'user3@gmail.com', 'user 3', 150),
(4, 'user4@gmail.com', 'user 4', 200),
(5, 'user5@gmail.com', 'user 5', 1800),
(6, 'user6@gmail.com', 'user 6', 278),
(7, 'user7@gmail.com', 'user 7', 360),
(8, 'user8@gmail.com', 'user 8', 700),
(9, 'user9@gmail.com', 'user 9', 5000),
(10, 'user10@gmail.com', 'user 10', 570);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
