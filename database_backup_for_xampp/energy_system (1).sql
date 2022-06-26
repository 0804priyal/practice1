-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2022 at 10:03 AM
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
-- Database: `sankey_chart`
--

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
(1, '2019', 'Oil', 'Transformation(fossil fuels)', 50, '2022-05-27 15:52:29', '2022-05-27 15:52:29'),
(2, '2019', 'Oil', 'Electricity', 50, '2022-05-27 15:52:29', '2022-05-27 15:52:29'),
(3, '2019', 'Transformation(fossil fuels)', 'Industry', 50, '2022-05-27 15:52:29', '2022-05-27 15:52:29'),
(4, '2019', 'Transformation(fossil fuels)', 'Transport', 150, '2022-05-27 15:52:29', '2022-05-27 15:52:29'),
(5, '2019', 'Transformation(fossil fuels)', 'Buildings', 20, '2022-05-27 15:52:29', '2022-05-27 15:52:29'),
(6, '2019', 'Transformation(fossil fuels)', 'Conversion losses', 67, '2022-05-27 15:52:29', '2022-05-27 15:52:29'),
(7, '2019', 'Transformation(fossil fuels)', 'Losses and own use', 200, '2022-05-27 15:52:29', '2022-05-27 15:52:29'),
(8, '2019', 'Transformation(fossil fuels)', 'Other', 200, '2022-05-27 15:52:29', '2022-05-27 15:52:29'),
(9, '2019', 'Electricity', 'Industry', 50, '2022-05-27 15:52:30', '2022-05-27 15:52:30'),
(10, '2019', 'Electricity', 'Transport', 150, '2022-05-27 15:52:30', '2022-05-27 15:52:30'),
(11, '2019', 'Electricity', 'Buildings', 20, '2022-05-27 15:52:30', '2022-05-27 15:52:30'),
(12, '2019', 'Electricity', 'Conversion losses', 67, '2022-05-27 15:52:30', '2022-05-27 15:52:30'),
(13, '2019', 'Electricity', 'Losses and own use', 200, '2022-05-27 15:52:30', '2022-05-27 15:52:30'),
(14, '2019', 'Electricity', 'Other', 200, '2022-05-27 15:52:30', '2022-05-27 15:52:30'),
(15, 'STEPS', 'Coal', 'Transformation(fossil fuels)', 100, '2022-05-28 18:26:19', '2022-05-28 18:26:19'),
(16, 'STEPS', 'Coal', 'Electricity', 100, '2022-05-28 18:26:21', '2022-05-28 18:26:21'),
(17, 'STEPS', 'Transformation(fossil fuels)', 'Industry', 50, '2022-05-28 18:26:21', '2022-05-28 18:26:21'),
(18, 'STEPS', 'Transformation(fossil fuels)', 'Transport', 100, '2022-05-28 18:26:21', '2022-05-28 18:26:21'),
(19, 'STEPS', 'Transformation(fossil fuels)', 'Buildings', 20, '2022-05-28 18:26:21', '2022-05-28 18:26:21'),
(20, 'STEPS', 'Transformation(fossil fuels)', 'Conversion losses', 50, '2022-05-28 18:26:21', '2022-05-28 18:26:21'),
(21, 'STEPS', 'Transformation(fossil fuels)', 'Losses and own use', 200, '2022-05-28 18:26:21', '2022-05-28 18:26:21'),
(22, 'STEPS', 'Transformation(fossil fuels)', 'Other', 210, '2022-05-28 18:26:21', '2022-05-28 18:26:21'),
(23, 'STEPS', 'Electricity', 'Industry', 50, '2022-05-28 18:26:21', '2022-05-28 18:26:21'),
(24, 'STEPS', 'Electricity', 'Transport', 100, '2022-05-28 18:26:22', '2022-05-28 18:26:22'),
(25, 'STEPS', 'Electricity', 'Buildings', 20, '2022-05-28 18:26:22', '2022-05-28 18:26:22'),
(26, 'STEPS', 'Electricity', 'Conversion losses', 50, '2022-05-28 18:26:22', '2022-05-28 18:26:22'),
(27, 'STEPS', 'Electricity', 'Losses and own use', 200, '2022-05-28 18:26:22', '2022-05-28 18:26:22'),
(28, 'STEPS', 'Electricity', 'Other', 210, '2022-05-28 18:26:22', '2022-05-28 18:26:22'),
(29, 'IVC', 'Oil', 'Transformation(fossil fuels)', 100, '2022-05-28 18:27:09', '2022-05-28 18:27:09'),
(30, 'IVC', 'Oil', 'Electricity', 100, '2022-05-28 18:27:10', '2022-05-28 18:27:10'),
(31, 'IVC', 'Transformation(fossil fuels)', 'Industry', 50, '2022-05-28 18:27:10', '2022-05-28 18:27:10'),
(32, 'IVC', 'Transformation(fossil fuels)', 'Transport', 150, '2022-05-28 18:27:10', '2022-05-28 18:27:10'),
(33, 'IVC', 'Transformation(fossil fuels)', 'Buildings', 100, '2022-05-28 18:27:10', '2022-05-28 18:27:10'),
(34, 'IVC', 'Transformation(fossil fuels)', 'Conversion losses', 50, '2022-05-28 18:27:10', '2022-05-28 18:27:10'),
(35, 'IVC', 'Transformation(fossil fuels)', 'Losses and own use', 120, '2022-05-28 18:27:10', '2022-05-28 18:27:10'),
(36, 'IVC', 'Transformation(fossil fuels)', 'Other', 120, '2022-05-28 18:27:10', '2022-05-28 18:27:10'),
(37, 'IVC', 'Electricity', 'Industry', 50, '2022-05-28 18:27:10', '2022-05-28 18:27:10'),
(38, 'IVC', 'Electricity', 'Transport', 150, '2022-05-28 18:27:10', '2022-05-28 18:27:10'),
(39, 'IVC', 'Electricity', 'Buildings', 100, '2022-05-28 18:27:10', '2022-05-28 18:27:10'),
(40, 'IVC', 'Electricity', 'Conversion losses', 50, '2022-05-28 18:27:10', '2022-05-28 18:27:10'),
(41, 'IVC', 'Electricity', 'Losses and own use', 120, '2022-05-28 18:27:10', '2022-05-28 18:27:10'),
(42, 'IVC', 'Electricity', 'Other', 120, '2022-05-28 18:27:10', '2022-05-28 18:27:10'),
(43, 'SDS', 'Modern Renewables', 'Transformation(fossil fuels)', 100, '2022-05-28 18:27:43', '2022-05-28 18:27:43'),
(44, 'SDS', 'Modern Renewables', 'Electricity', 100, '2022-05-28 18:27:43', '2022-05-28 18:27:43'),
(45, 'SDS', 'Transformation(fossil fuels)', 'Industry', 50, '2022-05-28 18:27:43', '2022-05-28 18:27:43'),
(46, 'SDS', 'Transformation(fossil fuels)', 'Transport', 200, '2022-05-28 18:27:43', '2022-05-28 18:27:43'),
(47, 'SDS', 'Transformation(fossil fuels)', 'Buildings', 100, '2022-05-28 18:27:43', '2022-05-28 18:27:43'),
(48, 'SDS', 'Transformation(fossil fuels)', 'Conversion losses', 20, '2022-05-28 18:27:43', '2022-05-28 18:27:43'),
(49, 'SDS', 'Transformation(fossil fuels)', 'Losses and own use', 25, '2022-05-28 18:27:43', '2022-05-28 18:27:43'),
(50, 'SDS', 'Transformation(fossil fuels)', 'Other', 210, '2022-05-28 18:27:43', '2022-05-28 18:27:43'),
(51, 'SDS', 'Electricity', 'Industry', 50, '2022-05-28 18:27:43', '2022-05-28 18:27:43'),
(52, 'SDS', 'Electricity', 'Transport', 200, '2022-05-28 18:27:43', '2022-05-28 18:27:43'),
(53, 'SDS', 'Electricity', 'Buildings', 100, '2022-05-28 18:27:44', '2022-05-28 18:27:44'),
(54, 'SDS', 'Electricity', 'Conversion losses', 20, '2022-05-28 18:27:44', '2022-05-28 18:27:44'),
(55, 'SDS', 'Electricity', 'Losses and own use', 25, '2022-05-28 18:27:44', '2022-05-28 18:27:44'),
(56, 'SDS', 'Electricity', 'Other', 210, '2022-05-28 18:27:44', '2022-05-28 18:27:44'),
(57, '2019', 'Natural Gas', 'Transformation(fossil fuels)', 100, '2022-05-28 18:29:04', '2022-05-28 18:29:04'),
(58, '2019', 'Natural Gas', 'Electricity', 100, '2022-05-28 18:29:04', '2022-05-28 18:29:04'),
(59, '2019', 'Transformation(fossil fuels)', 'Industry', 50, '2022-05-28 18:29:04', '2022-05-28 18:29:04'),
(60, '2019', 'Transformation(fossil fuels)', 'Transport', 200, '2022-05-28 18:29:04', '2022-05-28 18:29:04'),
(61, '2019', 'Transformation(fossil fuels)', 'Buildings', 100, '2022-05-28 18:29:05', '2022-05-28 18:29:05'),
(62, '2019', 'Transformation(fossil fuels)', 'Conversion losses', 20, '2022-05-28 18:29:05', '2022-05-28 18:29:05'),
(63, '2019', 'Transformation(fossil fuels)', 'Losses and own use', 120, '2022-05-28 18:29:05', '2022-05-28 18:29:05'),
(64, '2019', 'Transformation(fossil fuels)', 'Other', 120, '2022-05-28 18:29:05', '2022-05-28 18:29:05'),
(65, '2019', 'Electricity', 'Industry', 50, '2022-05-28 18:29:05', '2022-05-28 18:29:05'),
(66, '2019', 'Electricity', 'Transport', 200, '2022-05-28 18:29:05', '2022-05-28 18:29:05'),
(67, '2019', 'Electricity', 'Buildings', 100, '2022-05-28 18:29:05', '2022-05-28 18:29:05'),
(68, '2019', 'Electricity', 'Conversion losses', 20, '2022-05-28 18:29:05', '2022-05-28 18:29:05'),
(69, '2019', 'Electricity', 'Losses and own use', 120, '2022-05-28 18:29:05', '2022-05-28 18:29:05'),
(70, '2019', 'Electricity', 'Other', 120, '2022-05-28 18:29:05', '2022-05-28 18:29:05'),
(71, '2019', 'Natural Gas', 'Transformation(fossil fuels)', 100, '2022-05-28 18:31:14', '2022-05-28 18:31:14'),
(72, '2019', 'Natural Gas', 'Electricity', 100, '2022-05-28 18:31:16', '2022-05-28 18:31:16'),
(73, '2019', 'Transformation(fossil fuels)', 'Industry', 150, '2022-05-28 18:31:16', '2022-05-28 18:31:16'),
(74, '2019', 'Transformation(fossil fuels)', 'Transport', 10, '2022-05-28 18:31:16', '2022-05-28 18:31:16'),
(75, '2019', 'Transformation(fossil fuels)', 'Buildings', 20, '2022-05-28 18:31:16', '2022-05-28 18:31:16'),
(76, '2019', 'Transformation(fossil fuels)', 'Conversion losses', 67, '2022-05-28 18:31:16', '2022-05-28 18:31:16'),
(77, '2019', 'Transformation(fossil fuels)', 'Losses and own use', 25, '2022-05-28 18:31:16', '2022-05-28 18:31:16'),
(78, '2019', 'Transformation(fossil fuels)', 'Other', 120, '2022-05-28 18:31:16', '2022-05-28 18:31:16'),
(79, '2019', 'Electricity', 'Industry', 150, '2022-05-28 18:31:16', '2022-05-28 18:31:16'),
(80, '2019', 'Electricity', 'Transport', 10, '2022-05-28 18:31:16', '2022-05-28 18:31:16'),
(81, '2019', 'Electricity', 'Buildings', 20, '2022-05-28 18:31:17', '2022-05-28 18:31:17'),
(82, '2019', 'Electricity', 'Conversion losses', 67, '2022-05-28 18:31:17', '2022-05-28 18:31:17'),
(83, '2019', 'Electricity', 'Losses and own use', 25, '2022-05-28 18:31:17', '2022-05-28 18:31:17'),
(84, '2019', 'Electricity', 'Other', 120, '2022-05-28 18:31:17', '2022-05-28 18:31:17'),
(85, '2019', 'Coal', 'Transformation(fossil fuels)', 200, '2022-05-28 18:32:15', '2022-05-28 18:32:15'),
(86, '2019', 'Coal', 'Electricity', 200, '2022-05-28 18:32:15', '2022-05-28 18:32:15'),
(87, '2019', 'Transformation(fossil fuels)', 'Industry', 150, '2022-05-28 18:32:16', '2022-05-28 18:32:16'),
(88, '2019', 'Transformation(fossil fuels)', 'Transport', 150, '2022-05-28 18:32:16', '2022-05-28 18:32:16'),
(89, '2019', 'Transformation(fossil fuels)', 'Buildings', 20, '2022-05-28 18:32:16', '2022-05-28 18:32:16'),
(90, '2019', 'Transformation(fossil fuels)', 'Conversion losses', 100, '2022-05-28 18:32:16', '2022-05-28 18:32:16'),
(91, '2019', 'Transformation(fossil fuels)', 'Losses and own use', 25, '2022-05-28 18:32:16', '2022-05-28 18:32:16'),
(92, '2019', 'Transformation(fossil fuels)', 'Other', 80, '2022-05-28 18:32:16', '2022-05-28 18:32:16'),
(93, '2019', 'Electricity', 'Industry', 150, '2022-05-28 18:32:16', '2022-05-28 18:32:16'),
(94, '2019', 'Electricity', 'Transport', 150, '2022-05-28 18:32:16', '2022-05-28 18:32:16'),
(95, '2019', 'Electricity', 'Buildings', 20, '2022-05-28 18:32:16', '2022-05-28 18:32:16'),
(96, '2019', 'Electricity', 'Conversion losses', 100, '2022-05-28 18:32:16', '2022-05-28 18:32:16'),
(97, '2019', 'Electricity', 'Losses and own use', 25, '2022-05-28 18:32:16', '2022-05-28 18:32:16'),
(98, '2019', 'Electricity', 'Other', 80, '2022-05-28 18:32:16', '2022-05-28 18:32:16'),
(99, '2019', 'Nuclear', 'Transformation(fossil fuels)', 400, '2022-05-28 18:34:10', '2022-05-28 18:34:10'),
(100, '2019', 'Nuclear', 'Electricity', 400, '2022-05-28 18:34:11', '2022-05-28 18:34:11'),
(101, '2019', 'Transformation(fossil fuels)', 'Industry', 150, '2022-05-28 18:34:11', '2022-05-28 18:34:11'),
(102, '2019', 'Transformation(fossil fuels)', 'Transport', 150, '2022-05-28 18:34:11', '2022-05-28 18:34:11'),
(103, '2019', 'Transformation(fossil fuels)', 'Buildings', 100, '2022-05-28 18:34:11', '2022-05-28 18:34:11'),
(104, '2019', 'Transformation(fossil fuels)', 'Conversion losses', 120, '2022-05-28 18:34:11', '2022-05-28 18:34:11'),
(105, '2019', 'Transformation(fossil fuels)', 'Losses and own use', 200, '2022-05-28 18:34:11', '2022-05-28 18:34:11'),
(106, '2019', 'Transformation(fossil fuels)', 'Other', 80, '2022-05-28 18:34:11', '2022-05-28 18:34:11'),
(107, '2019', 'Electricity', 'Industry', 150, '2022-05-28 18:34:11', '2022-05-28 18:34:11'),
(108, '2019', 'Electricity', 'Transport', 150, '2022-05-28 18:34:11', '2022-05-28 18:34:11'),
(109, '2019', 'Electricity', 'Buildings', 100, '2022-05-28 18:34:11', '2022-05-28 18:34:11'),
(110, '2019', 'Electricity', 'Conversion losses', 120, '2022-05-28 18:34:11', '2022-05-28 18:34:11'),
(111, '2019', 'Electricity', 'Losses and own use', 200, '2022-05-28 18:34:11', '2022-05-28 18:34:11'),
(112, '2019', 'Electricity', 'Other', 80, '2022-05-28 18:34:11', '2022-05-28 18:34:11'),
(113, '2019', 'Oil', 'Transformation(fossil fuels)', 500, '2022-05-28 18:36:03', '2022-05-28 18:36:03'),
(114, '2019', 'Oil', 'Electricity', 500, '2022-05-28 18:36:05', '2022-05-28 18:36:05'),
(115, '2019', 'Transformation(fossil fuels)', 'Industry', 50, '2022-05-28 18:36:05', '2022-05-28 18:36:05'),
(116, '2019', 'Transformation(fossil fuels)', 'Transport', 150, '2022-05-28 18:36:05', '2022-05-28 18:36:05'),
(117, '2019', 'Transformation(fossil fuels)', 'Buildings', 20, '2022-05-28 18:36:05', '2022-05-28 18:36:05'),
(118, '2019', 'Transformation(fossil fuels)', 'Conversion losses', 67, '2022-05-28 18:36:05', '2022-05-28 18:36:05'),
(119, '2019', 'Transformation(fossil fuels)', 'Losses and own use', 25, '2022-05-28 18:36:05', '2022-05-28 18:36:05'),
(120, '2019', 'Transformation(fossil fuels)', 'Other', 80, '2022-05-28 18:36:05', '2022-05-28 18:36:05'),
(121, '2019', 'Electricity', 'Industry', 50, '2022-05-28 18:36:05', '2022-05-28 18:36:05'),
(122, '2019', 'Electricity', 'Transport', 150, '2022-05-28 18:36:06', '2022-05-28 18:36:06'),
(123, '2019', 'Electricity', 'Buildings', 20, '2022-05-28 18:36:06', '2022-05-28 18:36:06'),
(124, '2019', 'Electricity', 'Conversion losses', 67, '2022-05-28 18:36:06', '2022-05-28 18:36:06'),
(125, '2019', 'Electricity', 'Losses and own use', 25, '2022-05-28 18:36:06', '2022-05-28 18:36:06'),
(126, '2019', 'Electricity', 'Other', 80, '2022-05-28 18:36:06', '2022-05-28 18:36:06'),
(127, '2019', 'Traditional use of biomass', 'Transformation(fossil fuels)', 30, '2022-06-04 09:21:26', '2022-06-04 09:21:26'),
(128, '2019', 'Traditional use of biomass', 'Electricity', 30, '2022-06-04 09:21:26', '2022-06-04 09:21:26'),
(129, '2019', 'Transformation(fossil fuels)', 'Industry', 89, '2022-06-04 09:21:26', '2022-06-04 09:21:26'),
(130, '2019', 'Transformation(fossil fuels)', 'Transport', 6, '2022-06-04 09:21:26', '2022-06-04 09:21:26'),
(131, '2019', 'Transformation(fossil fuels)', 'Buildings', 3, '2022-06-04 09:21:26', '2022-06-04 09:21:26'),
(132, '2019', 'Transformation(fossil fuels)', 'Conversion losses', 45, '2022-06-04 09:21:26', '2022-06-04 09:21:26'),
(133, '2019', 'Transformation(fossil fuels)', 'Losses and own use', 12, '2022-06-04 09:21:26', '2022-06-04 09:21:26'),
(134, '2019', 'Transformation(fossil fuels)', 'Other', 22, '2022-06-04 09:21:26', '2022-06-04 09:21:26'),
(135, '2019', 'Electricity', 'Industry', 89, '2022-06-04 09:21:26', '2022-06-04 09:21:26'),
(136, '2019', 'Electricity', 'Transport', 6, '2022-06-04 09:21:26', '2022-06-04 09:21:26'),
(137, '2019', 'Electricity', 'Buildings', 3, '2022-06-04 09:21:26', '2022-06-04 09:21:26'),
(138, '2019', 'Electricity', 'Conversion losses', 45, '2022-06-04 09:21:26', '2022-06-04 09:21:26'),
(139, '2019', 'Electricity', 'Losses and own use', 12, '2022-06-04 09:21:26', '2022-06-04 09:21:26'),
(140, '2019', 'Electricity', 'Other', 22, '2022-06-04 09:21:26', '2022-06-04 09:21:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `energy_system`
--
ALTER TABLE `energy_system`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `energy_system`
--
ALTER TABLE `energy_system`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
