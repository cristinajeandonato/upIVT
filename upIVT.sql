-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2015 at 11:23 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `upivt`
--

-- --------------------------------------------------------

--
-- Table structure for table `markers`
--

CREATE TABLE IF NOT EXISTS `markers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `address` varchar(80) NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL,
  `type` varchar(30) NOT NULL,
  `picture` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `markers`
--

INSERT INTO `markers` (`id`, `name`, `address`, `lat`, `lng`, `type`, `picture`) VALUES
(1, 'Arts and Sciences Building', 'University of the Philippines Cebu, Gorordo Avenue, Lahug, Cebu City, 6000', 10.323338, 123.899513, 'building', ''),
(2, 'Administration Building', 'University of the Philippines Cebu, Gorordo Avenue, Lahug, Cebu City, 6000', 10.322326, 123.898247, 'building', 'assets/images/admin_building.jpg'),
(3, 'Undergraduate Building', 'University of the Philippines Cebu, Gorordo Avenue, Lahug, Cebu City, 6000', 10.323399, 123.897850, 'building', ''),
(4, 'Management Cluster Building', 'University of the Philippines Cebu, Gorordo Avenue, Lahug, Cebu City, 6000', 10.322805, 123.897713, 'building', ''),
(5, 'GP Building', 'University of the Philippines Cebu, Gorordo Avenue, Lahug, Cebu City, 6000', 10.322543, 123.897873, 'building', ''),
(6, 'Library Building', 'University of the Philippines Cebu, Gorordo Avenue, Lahug, Cebu City, 6000', 10.321445, 123.897987, 'library', ''),
(7, 'Guest House', 'University of the Philippines Cebu, Gorordo Avenue, Lahug, Cebu City, 6000', 10.321725, 123.897652, 'housing', ''),
(8, 'Dorm 1', 'University of the Philippines Cebu, Gorordo Avenue, Lahug, Cebu City, 6000', 10.321939, 123.897690, 'housing', ''),
(9, 'Tacloban Dorm', 'University of the Philippines Cebu, Gorordo Avenue, Lahug, Cebu City, 6000', 10.322018, 123.897682, 'housing', ''),
(10, 'High School', '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ', 10.321898, 123.899673, 'building', ''),
(11, 'Campus Development Maintenance Office (CDMO)', '', 0.000000, 0.000000, '', ''),
(12, 'Health Services Unit', '', 0.000000, 0.000000, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `offices`
--

CREATE TABLE IF NOT EXISTS `offices` (
  `office_id` int(60) NOT NULL AUTO_INCREMENT,
  `office_name` varchar(80) NOT NULL,
  `description` varchar(255) NOT NULL,
  `current_head` varchar(80) NOT NULL,
  `marker_id` int(60) NOT NULL,
  `picture` varchar(120) NOT NULL,
  PRIMARY KEY (`office_id`),
  KEY `marker_id` (`marker_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `offices`
--

INSERT INTO `offices` (`office_id`, `office_name`, `description`, `current_head`, `marker_id`, `picture`) VALUES
(1, 'Office of the Dean', '', 'Atty. Liza Corro', 2, ''),
(4, 'Office of the Associate Dean for Academic Affairs', '', 'Dr. Lorna S. Almocera', 2, ''),
(5, 'Office of the Associate Dean for Administration', '', 'Dr. Tiffany Adelaine Tan', 2, ''),
(6, 'Office of the College Secretary and Registrar', '', 'Dr. Patricia Anne Nazareno', 2, ''),
(7, 'Arts and Humanities Cluster', '', 'Prof. Lilia Tio', 3, ''),
(8, 'Business Management Cluster', '', 'Dr. Marie Jane Matero', 4, ''),
(9, 'Sciences Cluster', '', 'Dr. Jonnifer Sinogaya', 3, ''),
(10, 'Social Sciences Cluster', '', 'Prof. Lilia Tio', 1, ''),
(11, 'Department of Computer Science', '', 'Prof. Kurt Junshean Espinosa', 1, ''),
(12, 'Office of the Highschool Principal', '', 'Dr. Aurelio Vilbar', 10, ''),
(13, 'Public/Alumni Affairs/IPO', '', 'Prof. January Yap', 2, ''),
(14, 'Arts and Culture', '', 'Dr. Catherine Rodel', 3, ''),
(15, 'Central Visayas Studies Center', '', 'Prof. Yuleta Orillo', 1, ''),
(16, 'Interactive Learning Center and Learning Resource Center', '', 'Prof. Liberty Baay', 2, ''),
(17, 'Gender and Development Office', '', 'Dr. Weena Gera', 2, ''),
(18, 'National Service Training Program', '', 'Prof. Regletto Aldrich Imbong', 2, ''),
(19, 'Library', '', 'Ms. Mylah Pedrano', 6, ''),
(20, 'Office of Student Affairs', '', 'Prof. May Christina Bugash', 2, ''),
(21, 'Accounting Office', '', 'Ms Jannette Lepiten', 2, ''),
(22, 'Budget Office', '', 'Dr. Marie Jane Matero', 2, ''),
(23, 'Cash Section', '', 'Ms. Rita Binagatan', 2, ''),
(24, 'CAmpus Development Maintenance Office', '', 'Engr. Albert Bascon', 11, ''),
(25, 'Computer Services Unit', '', 'Mr. Van Owen Sesaldo', 1, ''),
(26, 'Human Resource Development Office', '', 'Ms. Rebecca Bayawa', 2, ''),
(27, 'Health Services Unit', '', 'Dr. Lorel Dee', 12, ''),
(28, 'Campus Safety and Security Office', '', 'Mr. Jeremias R. Bajada', 2, ''),
(29, 'Supply and Property Management Office', '', 'Mr. Virgilio Nuñez', 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE IF NOT EXISTS `places` (
  `place_id` int(60) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`place_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`place_id`, `name`, `description`, `picture`, `type`) VALUES
(1, 'Administration Building', NULL, NULL, NULL),
(2, 'Oble Square', NULL, NULL, NULL),
(3, 'Arts and Sciences Building', NULL, NULL, NULL),
(4, 'Undergraduate Building', NULL, NULL, NULL),
(5, 'Management Cluster Building', NULL, NULL, NULL),
(6, 'GP Buildings', NULL, NULL, NULL),
(7, 'Health Services', NULL, NULL, NULL),
(8, 'Library', NULL, NULL, NULL),
(9, 'Dorm', NULL, NULL, NULL),
(10, 'Guest House', NULL, NULL, NULL),
(11, 'Canteen', NULL, NULL, NULL),
(12, 'Basketball Court', NULL, NULL, NULL),
(13, 'Soccer Field', NULL, NULL, NULL),
(14, 'AS Field', NULL, NULL, NULL),
(15, 'Volleyball Court', NULL, NULL, NULL),
(16, 'High School Division', NULL, NULL, NULL),
(17, 'CDMO', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(60) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `offices`
--
ALTER TABLE `offices`
  ADD CONSTRAINT `offices_ibfk_1` FOREIGN KEY (`marker_id`) REFERENCES `markers` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
