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
-- Database: `kaametnet_chart`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `user_name`, `password`, `mobile`) VALUES
(1, 'Admin', 'admin@12345', '7982695919');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `title`) VALUES
(1, 'UK'),
(2, 'US'),
(3, 'India');

-- --------------------------------------------------------

--
-- Table structure for table `energy_consumption`
--

CREATE TABLE `energy_consumption` (
  `id` int(11) NOT NULL,
  `primary_energy` varchar(255) NOT NULL,
  `electricity_generation` varchar(255) NOT NULL,
  `Residential` varchar(255) NOT NULL,
  `Commercial` varchar(255) NOT NULL,
  `Industrial` varchar(255) NOT NULL,
  `Transportation` varchar(255) NOT NULL,
  `Total` varchar(255) NOT NULL,
  `increase` varchar(255) NOT NULL,
  `decrease` varchar(255) NOT NULL,
  `yid` int(11) NOT NULL,
  `cid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `energy_consumption`
--

INSERT INTO `energy_consumption` (`id`, `primary_energy`, `electricity_generation`, `Residential`, `Commercial`, `Industrial`, `Transportation`, `Total`, `increase`, `decrease`, `yid`, `cid`) VALUES
(1, 'Solar', '0.61', '0.1', '0.22', '0.03', '0.00', '0.35', '', '', 4, 1),
(2, 'Nuclear\r\n', '8.44\r\n', '0.00', '0.00', '0.00', '0.00', '8.44\r\n', '', '', 4, 1),
(3, 'Hydro\r\n', '2.67\r\n', '0.00', '0.00', '0.02\r\n', '0.00', '2.69\r\n', '', '', 4, 1),
(4, 'Wind\r\n', '2.53\r\n', '0.00', '0.00', '0.00', '0.00', '2.53\r\n', '', '', 4, 1),
(5, 'Geothermal', '0.15', '0.04', '0.00', '0.027', '0.00', '0.067', '', '', 4, 1),
(6, 'Natural gas\r\n', '11\r\n', '5.15\r\n', '3.61\r\n', '10.4\r\n', '0.87\r\n', '31.03\r\n', '', '', 4, 1),
(7, 'Coal\r\n', '12.1\r\n', '0.00', '0.02\r\n', '1.2', '0.00', '13.32\r\n', '0.5', '', 4, 1),
(8, 'Biomass \r\n', '0.5\r\n', '0.52\r\n', '0.15\r\n', '2.55\r\n', '1.41\r\n', '5.13\r\n', '', '', 4, 1),
(9, 'Petroleum', '0.24', '0.96', '0.85', '8.86', '26', '36.91', '', '', 4, 1),
(10, 'Total Primary Energy input for different purpose\r\n', '38.24\r\n', '6.77\r\n', '4.85\r\n', '23.087\r\n', '28.28\r\n', '101.227\r\n', '', '', 4, 1),
(11, 'Primary energy rejected during the process\r\n', '25.3\r\n', '0.00', '0.00', '0.00', '0.00', '25.3\r\n', '', '', 4, 1),
(12, 'Net Primary used\r\n', '12.94\r\n', '6.77\r\n', '4.85\r\n', '23.087\r\n', '28.28\r\n', '75.927\r\n', '', '', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `energy_consumptions`
--

CREATE TABLE `energy_consumptions` (
  `id` int(11) NOT NULL,
  `primary_energy` varchar(30) NOT NULL,
  `Transformation` varchar(30) NOT NULL,
  `Electricity` varchar(30) NOT NULL,
  `Industry` varchar(30) NOT NULL,
  `Transport` varchar(35) NOT NULL,
  `Buildings` varchar(35) NOT NULL,
  `Other` varchar(30) NOT NULL,
  `Conversion_losses` varchar(30) NOT NULL,
  `Losses_and_own_use` varchar(35) NOT NULL,
  `Total` varchar(30) NOT NULL,
  `Increase` varchar(255) NOT NULL,
  `Decrese` varchar(255) NOT NULL,
  `yid` int(11) NOT NULL,
  `cid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `energy_consumptions`
--

INSERT INTO `energy_consumptions` (`id`, `primary_energy`, `Transformation`, `Electricity`, `Industry`, `Transport`, `Buildings`, `Other`, `Conversion_losses`, `Losses_and_own_use`, `Total`, `Increase`, `Decrese`, `yid`, `cid`) VALUES
(1, 'Coal', '230', '311', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '541', '0.5%', '', 1, 3),
(2, 'Natural gas', '137', '28', '0.00', '0.00', '0.00', '0.00', '0.00', '9', '174', '', '', 1, 3),
(3, 'Oil', '409', '2', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '411', '', '', 1, 3),
(4, 'Nuclear', '0.00', '58', '0.00', '0.00', '0', '0', '0', '0', '58', '', '', 1, 3),
(5, 'Modern renewables', '0', '222', '64', '17', '19', '0', '0', '4', '326', '', '', 1, 3),
(6, 'Traditional use of biomass', '0', '0', '0', '0', '63', '0', '0', '0', '63', '', '', 1, 3),
(7, 'Transformation(fossil fuels)', '0', '0', '407', '217', '70', '39', '0', '42', '775', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `energy_consumptionss`
--

CREATE TABLE `energy_consumptionss` (
  `id` int(11) NOT NULL,
  `primary_energy` varchar(255) NOT NULL,
  `Transformation` varchar(255) NOT NULL,
  `Electricity` varchar(255) NOT NULL,
  `Industry` varchar(255) NOT NULL,
  `Transport` varchar(255) NOT NULL,
  `Buildings` varchar(255) NOT NULL,
  `Other` varchar(255) NOT NULL,
  `Conversion_losses` varchar(255) NOT NULL,
  `Losses_and_own_use` varchar(255) NOT NULL,
  `Total` varchar(255) NOT NULL,
  `Increase` varchar(255) NOT NULL,
  `Decrese` varchar(255) NOT NULL,
  `yid` int(11) NOT NULL,
  `cid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `energy_consumptionss`
--

INSERT INTO `energy_consumptionss` (`id`, `primary_energy`, `Transformation`, `Electricity`, `Industry`, `Transport`, `Buildings`, `Other`, `Conversion_losses`, `Losses_and_own_use`, `Total`, `Increase`, `Decrese`, `yid`, `cid`) VALUES
(1, 'Coal', '230', '311', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '541', '', '', 1, 3),
(2, 'Natural gas', '119', '52', '0.00', '0.00', '0.00', '0.00', '0.00', '14', '185', '', '', 1, 3),
(3, 'Oil', '266', '2', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '268', '', '', 1, 3),
(4, 'Nuclear', '0.00', '6', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '64', '', '', 2, 3),
(5, 'Modern renewables', '0.00', '314', '52', '26', '25', '0.00', '0.00', '4', '417', '', '', 1, 3),
(6, 'Traditional use of biomass', '0.00', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '', '', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `energy_system`
--

CREATE TABLE `energy_system` (
  `id` int(10) NOT NULL,
  `type` varchar(250) NOT NULL,
  `level1` varchar(250) NOT NULL,
  `level2` varchar(250) NOT NULL,
  `weight` int(10) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `energy_system`
--

INSERT INTO `energy_system` (`id`, `type`, `level1`, `level2`, `weight`, `create_date`, `update_date`) VALUES
(1, '2019', 'Oil', 'Transformation(fossil fuels)', 240, '2022-05-26 14:05:44', '2022-05-27 03:34:04'),
(2, '2019', 'Oil', 'Electricity', 3, '2022-05-26 14:05:44', '2022-05-27 03:34:20'),
(3, '2019', 'Coal', 'Losses and own use', 0, '2022-05-26 14:07:12', '2022-05-26 14:07:12'),
(4, '2019', 'Coal', 'Transformation(fossil fuels)', 135, '2022-05-26 14:07:12', '2022-05-27 03:34:53'),
(5, '2019', 'Coal', 'Electricity', 278, '2022-05-26 14:08:03', '2022-05-27 03:35:08'),
(6, '2019', 'Natural gas', 'Transformation(fossil fuels)', 40, '2022-05-26 14:08:03', '2022-05-27 03:35:24'),
(7, '2019', 'Natural gas', 'Electricity', 15, '2022-05-26 14:08:42', '2022-05-27 03:35:48'),
(8, '2019', 'Nuclear', 'Electricity', 10, '2022-05-26 14:08:42', '2022-05-27 03:36:13'),
(10, '2019', 'Electricity', 'Losses and own use', 32, '2022-05-26 14:10:13', '2022-05-27 03:38:37'),
(11, '2019', 'Electricity', 'Transport', 2, '2022-05-26 14:11:00', '2022-05-27 03:39:22'),
(12, '2019', 'Electricity', 'Buildings', 42, '2022-05-26 14:11:00', '2022-05-27 03:40:01'),
(13, '2019', 'Transformation(fossil fuels)', 'Industry', 195, '2022-05-26 14:11:53', '2022-05-27 03:42:32'),
(14, '2019', 'Transformation(fossil fuels)', 'Transport', 105, '2022-05-26 14:11:53', '2022-05-27 03:42:48'),
(15, '2019', 'Transformation(fossil fuels)', 'Buildings', 54, '2022-05-26 14:12:28', '2022-05-27 03:43:05'),
(16, '2019', 'Transformation(fossil fuels)', 'Other', 31, '2022-05-26 14:12:28', '2022-05-27 03:43:21'),
(17, '2019', 'Transformation(fossil fuels)', 'Losses and own use', 29, '2022-05-26 14:13:21', '2022-05-27 03:43:37'),
(18, '2019', 'Modern renewables', 'Losses and own use', 49, '2022-05-26 14:13:21', '2022-05-27 03:43:52'),
(19, '2019', 'Modern renewables', 'Electricity', 49, '2022-05-26 14:14:01', '2022-05-27 03:44:58'),
(20, '2019', 'Modern renewables', 'Industry', 33, '2022-05-26 14:14:01', '2022-05-27 03:45:44'),
(21, '2019', 'Modern renewables', 'Transport', 25, '2022-05-26 14:14:45', '2022-05-27 03:48:00'),
(22, '2019', 'Traditional use of biomass', 'Buildings', 29, '2022-05-26 14:14:45', '2022-05-27 03:50:11'),
(23, '2019', 'Modern renewables', 'Buildings', 8, '2022-05-27 03:40:37', '2022-05-27 03:48:57'),
(24, '2019', 'Electricity', 'Other', 18, '2022-05-27 03:41:19', '2022-05-27 03:41:19'),
(25, '2019', 'Electricity', 'conversion losses', 219, '2022-05-27 03:42:01', '2022-05-27 03:42:01'),
(26, '2019', 'New energy', 'Electricity', 113, '2022-05-27 03:49:41', '2022-05-27 03:49:41');

-- --------------------------------------------------------

--
-- Table structure for table `evolution_of_energy_system`
--

CREATE TABLE `evolution_of_energy_system` (
  `id` int(11) NOT NULL,
  `category` varchar(250) NOT NULL,
  `energy_type` varchar(250) NOT NULL,
  `transformation` varchar(250) NOT NULL,
  `electricity` varchar(250) NOT NULL,
  `industry` varchar(250) NOT NULL,
  `transport` varchar(250) NOT NULL,
  `buildings` varchar(250) NOT NULL,
  `conversion_losses` varchar(250) NOT NULL,
  `losses_and_own_use` varchar(250) NOT NULL,
  `other` varchar(250) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `evolution_of_energy_system`
--

INSERT INTO `evolution_of_energy_system` (`id`, `category`, `energy_type`, `transformation`, `electricity`, `industry`, `transport`, `buildings`, `conversion_losses`, `losses_and_own_use`, `other`, `create_date`, `update_date`) VALUES
(1, '2019', 'Oil', 'Transformation(fossil fuels)', 'Electricity', 'Industry', 'Transport', 'Buildings', 'Conversion losses', 'Losses and own use', 'Other', '2022-05-26 06:59:53', '2022-05-26 06:59:53'),
(2, 'STEPS', 'Coal', 'Transformation(fossil fuels)', 'Electricity', 'Industry', 'Transport', 'Buildings', 'Conversion losses', 'Losses and own use', 'Other', '2022-05-26 07:29:52', '2022-05-26 07:29:52'),
(3, 'SDS', 'Coal1', 'Transformation(fossil fuels)', 'Electricity', 'Industry', 'Transport', 'Buildings', 'Conversion losses', 'Losses and own use', 'Other', '2022-05-26 07:47:33', '2022-05-26 07:47:33'),
(4, 'SDS', 'Coal1', 'Transformation(fossil fuels)', 'Electricity', 'Industry', 'Transport', 'Buildings', 'Conversion losses', 'Losses and own use', 'Other', '2022-05-26 07:48:08', '2022-05-26 07:48:08'),
(5, 'SDS', 'Coal1', 'Transformation(fossil fuels)', 'Electricity', 'Industry', 'Transport', 'Buildings', 'Conversion losses', 'Losses and own use', 'Other', '2022-05-26 07:48:29', '2022-05-26 07:48:29');

-- --------------------------------------------------------

--
-- Table structure for table `sectorwise_consumption`
--

CREATE TABLE `sectorwise_consumption` (
  `id` int(11) NOT NULL,
  `primary_energy` varchar(255) NOT NULL,
  `Residential` varchar(255) NOT NULL,
  `Commercial` varchar(255) NOT NULL,
  `Industrial` varchar(255) NOT NULL,
  `Transportation` varchar(255) NOT NULL,
  `Total` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sectorwise_consumption`
--

INSERT INTO `sectorwise_consumption` (`id`, `primary_energy`, `Residential`, `Commercial`, `Industrial`, `Transportation`, `Total`) VALUES
(1, 'Solar\r\n', '0.1', '0.22', '0.03', '0.00', '0.35'),
(2, 'Nuclear\r\n', '0.00', '0.00', '0.00', '0.00', '0.00'),
(3, 'Hydro', '0.00', '0.00', '0.02', '0.00', '0.02'),
(4, 'Wind', '0.00', '0.00', '0.00', '0.00', '0.00'),
(5, 'Geothermal\r\n', '0.04', '0.00', '0.027', '0.00', '0.067'),
(6, 'Natural gas\r\n', '5.15\r\n', '3.61\r\n', '10.4\r\n', '0.87\r\n', '20.03\r\n'),
(7, 'Coal\r\n', '0.00', '0.02\r\n', '1.2\r\n', '0.00', '1.22\r\n'),
(8, 'Biomass \r\n', '0.52\r\n', '0.15\r\n', '2.55\r\n', '1.41\r\n', '4.63\r\n'),
(9, 'Petroleum\r\n', '0.96\r\n', '0.85\r\n', '8.86\r\n', '26\r\n', '36.67\r\n'),
(10, 'Electricity\r\n', '5\r\n', '4.7\r\n', '3.25\r\n', '0.03\r\n', '12.98\r\n'),
(11, 'Total\r\n', '11.77\r\n', '9.55\r\n', '26.337\r\n\r\n', '28.31\r\n', '75.967\r\n'),
(12, 'Energy rejected during the process\r\n', '4.16\r\n', '3.31\r\n', '13.4\r\n', '22.4', '43.27\r\n'),
(13, 'Energy used in Energy services\r\n', '7.61\r\n', '6.24\r\n', '12.937\r\n', '5.91\r\n', '32.697\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `sectorwise_consumptions`
--

CREATE TABLE `sectorwise_consumptions` (
  `id` int(11) NOT NULL,
  `primary_energy` varchar(30) NOT NULL,
  `Transformation` varchar(40) NOT NULL,
  `Electricity` varchar(30) NOT NULL,
  `Industry` varchar(30) NOT NULL,
  `Transport` varchar(40) NOT NULL,
  `Buildings` varchar(40) NOT NULL,
  `Other` varchar(30) NOT NULL,
  `Conversion_losses` varchar(30) NOT NULL,
  `Losses_and_own_use` varchar(30) NOT NULL,
  `Total` varchar(30) NOT NULL,
  `Increase` varchar(255) NOT NULL,
  `Decrese` varchar(255) NOT NULL,
  `yid` int(11) NOT NULL,
  `cid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sectorwise_consumptions`
--

INSERT INTO `sectorwise_consumptions` (`id`, `primary_energy`, `Transformation`, `Electricity`, `Industry`, `Transport`, `Buildings`, `Other`, `Conversion_losses`, `Losses_and_own_use`, `Total`, `Increase`, `Decrese`, `yid`, `cid`) VALUES
(1, 'Coal', '135', '278', '0', '0', '0', '0', '0', '0', '413', '', '', 0, 0),
(2, 'Oil', '240', '3', '0', '0', '0', '0', '0', '0', '243', '', '', 0, 0),
(3, 'Natural gas', '40', '15', '0', '0', '0', '0', '0', '0', '55', '', '', 0, 0),
(4, 'Nuclear', '0', '10', '0', '0', '0', '0', '0', '0', '10', '', '', 0, 0),
(5, 'Modern Renewables', '0', '49', '33', '1', '8', '0', '0', '4', '95', '', '', 0, 0),
(6, 'Traditional use of biomass', '0', '0', '0', '0', '113', '0', '0', '0', '113', '', '', 0, 0),
(7, 'Transformation (fossil fuels)', '0', '0', '195', '105', '54', '31', '0', '29', '414', '', '', 0, 0),
(8, 'Electricity', '0', '0', '41', '2', '42', '18', '219', '32', '354', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `usenergy_consumption`
--

CREATE TABLE `usenergy_consumption` (
  `id` int(11) NOT NULL,
  `primary_energy` varchar(255) NOT NULL,
  `electricity_generation` varchar(255) NOT NULL,
  `Residential` varchar(255) NOT NULL,
  `Commercial` varchar(255) NOT NULL,
  `Industrial` varchar(255) NOT NULL,
  `Transportation` varchar(255) NOT NULL,
  `Total` varchar(255) NOT NULL,
  `increase` varchar(255) NOT NULL,
  `decrease` varchar(255) NOT NULL,
  `YEAR` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usenergy_consumption`
--

INSERT INTO `usenergy_consumption` (`id`, `primary_energy`, `electricity_generation`, `Residential`, `Commercial`, `Industrial`, `Transportation`, `Total`, `increase`, `decrease`, `YEAR`) VALUES
(1, 'Solar', '0.61', '0.1', '0.22', '0.03', '0.00', '0.96', '', '', '2022'),
(2, 'Nuclear\r\n', '8.44\r\n', '0.00', '0.00', '0.00', '0.00', '8.44\r\n', '', '', '2022'),
(3, 'Hydro\r\n', '2.67\r\n', '0.00', '0.00', '0.02\r\n', '0.00', '2.69\r\n', '', '', '2022'),
(4, 'Wind\r\n', '2.53\r\n', '0.00', '0.00', '0.00', '0.00', '2.53\r\n', '', '', '2022'),
(5, 'Geothermal', '0.15', '0.04', '0.00', '0.027', '0.00', '0.067', '', '', '2022'),
(6, 'Natural gas\r\n', '11\r\n', '5.15\r\n', '3.61\r\n', '10.4\r\n', '0.87\r\n', '31.03\r\n', '', '', '2022'),
(7, 'Coal\r\n', '12.1\r\n', '0.00', '0.02\r\n', '1.2', '0.00', '13.32\r\n', '', '', '2022'),
(8, 'Biomass \r\n', '0.5\r\n', '0.52\r\n', '0.15\r\n', '2.55\r\n', '1.41\r\n', '5.13\r\n', '', '', '2022'),
(9, 'Petroleum', '0.24', '0.96', '0.85', '8.86', '26', '36.91', '', '', '2022'),
(10, 'Total Primary Energy input for different purpose\r\n', '38.24\r\n', '6.77\r\n', '4.85\r\n', '23.087\r\n', '28.28\r\n', '101.227\r\n', '', '', '2022'),
(11, 'Primary energy rejected during the process\r\n', '25.3\r\n', '0.00', '0.00', '0.00', '0.00', '25.3\r\n', '', '', '2022'),
(12, 'Net Primary used\r\n', '12.94\r\n', '6.77\r\n', '4.85\r\n', '23.087\r\n', '28.28\r\n', '75.927\r\n', '', '', '2022');

-- --------------------------------------------------------

--
-- Table structure for table `ussectorwise_consumption`
--

CREATE TABLE `ussectorwise_consumption` (
  `id` int(11) NOT NULL,
  `primary_energy` varchar(255) NOT NULL,
  `Residential` varchar(255) NOT NULL,
  `Commercial` varchar(255) NOT NULL,
  `Industrial` varchar(255) NOT NULL,
  `Transportation` varchar(255) NOT NULL,
  `Total` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ussectorwise_consumption`
--

INSERT INTO `ussectorwise_consumption` (`id`, `primary_energy`, `Residential`, `Commercial`, `Industrial`, `Transportation`, `Total`) VALUES
(1, 'Solar\r\n', '0.1', '0.22', '0.03', '0.00', '0.35'),
(2, 'Nuclear\r\n', '0.00', '0.00', '0.00', '0.00', '0.00'),
(3, 'Hydro', '0.00', '0.00', '0.02', '0.00', '0.02'),
(4, 'Wind', '0.00', '0.00', '0.00', '0.00', '0.00'),
(5, 'Geothermal\r\n', '0.04', '0.00', '0.027', '0.00', '0.067'),
(6, 'Natural gas\r\n', '5.15\r\n', '3.61\r\n', '10.4\r\n', '0.87\r\n', '20.03\r\n'),
(7, 'Coal\r\n', '0.00', '0.02\r\n', '1.2\r\n', '0.00', '1.22\r\n'),
(8, 'Biomass \r\n', '0.52\r\n', '0.15\r\n', '2.55\r\n', '1.41\r\n', '4.63\r\n'),
(9, 'Petroleum\r\n', '0.96\r\n', '0.85\r\n', '8.86\r\n', '26\r\n', '36.67\r\n'),
(10, 'Electricity\r\n', '5\r\n', '4.7\r\n', '3.25\r\n', '0.03\r\n', '12.98\r\n'),
(11, 'Total\r\n', '11.77\r\n', '9.55\r\n', '26.337\r\n\r\n', '28.31\r\n', '75.967\r\n'),
(12, 'Energy rejected during the process\r\n', '4.16\r\n', '3.31\r\n', '13.4\r\n', '22.4', '43.27\r\n'),
(13, 'Energy used in Energy services\r\n', '7.61\r\n', '6.24\r\n', '12.937\r\n', '5.91\r\n', '32.697\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `year`
--

CREATE TABLE `year` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `year`
--

INSERT INTO `year` (`id`, `title`) VALUES
(1, '2019'),
(2, '2020'),
(3, '2021'),
(4, '2022'),
(5, '2023'),
(6, '2040');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `energy_consumption`
--
ALTER TABLE `energy_consumption`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `energy_consumptions`
--
ALTER TABLE `energy_consumptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `energy_consumptionss`
--
ALTER TABLE `energy_consumptionss`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `energy_system`
--
ALTER TABLE `energy_system`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `evolution_of_energy_system`
--
ALTER TABLE `evolution_of_energy_system`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sectorwise_consumption`
--
ALTER TABLE `sectorwise_consumption`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sectorwise_consumptions`
--
ALTER TABLE `sectorwise_consumptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usenergy_consumption`
--
ALTER TABLE `usenergy_consumption`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ussectorwise_consumption`
--
ALTER TABLE `ussectorwise_consumption`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `year`
--
ALTER TABLE `year`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `energy_consumption`
--
ALTER TABLE `energy_consumption`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `energy_consumptions`
--
ALTER TABLE `energy_consumptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `energy_consumptionss`
--
ALTER TABLE `energy_consumptionss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `energy_system`
--
ALTER TABLE `energy_system`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `evolution_of_energy_system`
--
ALTER TABLE `evolution_of_energy_system`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sectorwise_consumption`
--
ALTER TABLE `sectorwise_consumption`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sectorwise_consumptions`
--
ALTER TABLE `sectorwise_consumptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `usenergy_consumption`
--
ALTER TABLE `usenergy_consumption`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ussectorwise_consumption`
--
ALTER TABLE `ussectorwise_consumption`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `year`
--
ALTER TABLE `year`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
