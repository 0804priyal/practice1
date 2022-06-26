-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2022 at 10:01 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dms`
--

-- --------------------------------------------------------

--
-- Table structure for table `photo`
--

CREATE TABLE `photo` (
  `photoid` int(11) NOT NULL,
  `location` varchar(150) NOT NULL,
  `alldepartment` varchar(250) NOT NULL,
  `department1` varchar(250) NOT NULL,
  `department2` varchar(250) NOT NULL,
  `Createddate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photo`
--

INSERT INTO `photo` (`photoid`, `location`, `alldepartment`, `department1`, `department2`, `Createddate`) VALUES
(1, 'upload/1654539723_ACM_schedule2563__1653478523__1653578700.pdf', 'Public(All department)', 'Department One', 'Department Two', '2022-06-06 23:52:03'),
(2, 'upload/1654540914_chrome.exe', 'Public(All department)', '', '', '2022-06-07 00:11:54'),
(3, 'upload/1654576066_chrome.exe', '', '', '', '2022-06-07 09:57:46'),
(4, 'upload/1654576066_chrome.VisualElementsManifest.xml', '', '', '', '2022-06-07 09:57:46'),
(5, 'upload/1654576066_chrome_proxy.exe', '', '', '', '2022-06-07 09:57:46'),
(6, 'upload/1654576066_master_preferences', '', '', '', '2022-06-07 09:57:46'),
(7, 'upload/1654582461_master_preferences', '', '', '', '2022-06-07 11:44:21'),
(8, 'upload/1654582461_master_preferences', '', '', '', '2022-06-07 11:44:21'),
(9, 'upload/1654586126_assass.jpg', '', '', '', '2022-06-07 12:45:26'),
(10, 'upload/1654586157_signto_offer_letter.pdf', '', '', '', '2022-06-07 12:45:57'),
(11, 'upload/1654586157_Sinagutre.png', '', '', '', '2022-06-07 12:45:57'),
(12, 'upload/1654586158_ticket.pdf', '', '', '', '2022-06-07 12:45:58'),
(13, 'upload/1654598511_assass.jpg', 'Public(All department)', 'Department One', 'Department Two', '2022-06-07 16:11:51'),
(14, 'upload/1656142443_sms2.sql', 'Public(All department)', '', '', '2022-06-25 13:04:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`photoid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `photo`
--
ALTER TABLE `photo`
  MODIFY `photoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
