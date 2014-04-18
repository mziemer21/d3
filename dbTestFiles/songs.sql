-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 18, 2014 at 04:43 AM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `d3_development`
--

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE IF NOT EXISTS `songs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `artist` varchar(255) DEFAULT NULL,
  `album` varchar(255) DEFAULT NULL,
  `duration` time DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `fccClean` tinyint(1) DEFAULT NULL,
  `is_qDrive` tinyint(1) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL,
  `review` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `artist`, `album`, `duration`, `quality`, `fccClean`, `is_qDrive`, `location`, `format`, `review`, `created_at`, `updated_at`) VALUES
(1, 'Smooth Sailing', 'Queens of the Stone Age', '...Like Clockwork', '00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Fashion', 'David Bowie', 'Scary Monsters & Super Creeps', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Kill All Hippies', 'Primal Scream', 'XTRMNTR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'New You', 'My Bloody Valentine', 'MBV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Lay Me Low', 'Nick Cave & The Bad Seeds', 'Let Love In', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Shot By Both Sides', 'Magazine', 'Real Life', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Be Quiet Mt. Heart Attack!', 'Liars', 'Drum''s Not Dead', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Too Real To Feel', 'Loop', 'Heaven''s End', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Reverence', 'The Jesus & Mary Chain\r\n', 'Honey''s Dead', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Roving Eye', 'James Chance & The Contortions', 'Buy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Funtime', 'Iggy Pop', 'The Idiot', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Big Sleep', 'The Icarus Line', 'Penance Soirée', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'I Can''t Control Myself', 'The Horrors', 'Primary Colours', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
