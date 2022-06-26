-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2022 at 10:02 AM
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
-- Database: `mykitche_kitchen_tech`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `billno` varchar(30) DEFAULT NULL,
  `item` varchar(150) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` double NOT NULL,
  `amount` double NOT NULL,
  `brand` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `start_time` time NOT NULL,
  `preparation_time` time NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `billno`, `item`, `qty`, `price`, `amount`, `brand`, `status`, `start_time`, `preparation_time`, `updated_at`, `created_at`) VALUES
(1, 'MFB570', 'Chicken Momos (6 Pcs)', 1, 169, 169, 'Panda Momos', 'close', '18:40:14', '18:47:46', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(2, 'MFB570', 'Mix Veg Momos (6 Pc)', 1, 149, 149, 'Panda Momos', 'close', '18:40:14', '18:47:54', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(3, 'MFB571', 'Chicken Momos - 6 Pcs', 3, 169, 507, 'MomoGuy', 'close', '18:42:01', '18:48:03', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(6, 'MFB573', 'Cutlery', 1, 10, 10, 'Sanskari Biryani', 'close', '18:42:22', '18:49:05', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(7, 'MFB574', 'Cutlery', 1, 10, 10, 'Sanskari Biryani', 'close', '18:43:52', '18:52:57', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(8, 'MFB575', 'Cutlery', 1, 10, 10, 'Sanskari Biryani', 'close', '18:44:46', '18:53:03', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(9, 'MFB576', 'Cutlery', 1, 10, 10, 'Sanskari Biryani', 'close', '18:45:22', '18:53:08', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(10, 'MFB577', 'Cutlery', 1, 10, 10, 'Sanskari Biryani', 'close', '18:46:52', '18:53:15', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(11, 'MFB572', 'Cutlery', 1, 10, 10, 'Sanskari Biryani', 'close', '18:49:24', '18:52:27', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(12, 'MFB578', 'Chilli Chicken Paratha', 1, 299, 299, 'Pind Da Paratha	', 'close', '18:53:38', '18:54:08', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(13, 'MFB579', 'Chicken Momos (6 Pcs)', 2, 169, 338, 'Panda Momos', 'close', '19:07:24', '12:15:03', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(14, 'MFB580', 'Chicken Cheese Momos - 6 Pcs', 1, 219, 219, 'MomoGuy', 'close', '19:12:42', '12:15:44', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(15, 'MFB580', 'Butter Chicken Momos - 6 Pcs', 1, 219, 219, 'MomoGuy', 'close', '19:12:42', '12:34:10', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(16, 'MFB581', 'Non Veg Burger Momo Combo', 1, 349, 349, 'Panda Momos', 'close', '19:31:09', '14:02:47', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(17, 'MFB581', 'Peri Peri Chicken Momo Burger', 1, 199, 199, 'Panda Momos', 'close', '19:31:09', '14:03:14', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(18, 'MFB582', 'Pan Fried Chicken Tikka Momos (6 Pcs)', 1, 209, 209, 'Panda Momos', 'close', '19:55:53', '14:05:06', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(19, 'MFB582', 'Chicken Tikka Momos (6 Pcs)', 1, 199, 199, 'Panda Momos', 'close', '19:55:53', '14:05:19', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(20, 'MFB582', 'Mango Milkshake (300 ml)', 1, 119, 119, 'Panda Momos', 'close', '19:55:53', '14:06:46', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(21, 'MFB583', 'Cutlery', 1, 10, 10, 'Sanskari Biryani', 'close', '20:15:28', '14:06:58', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(22, 'MFB584', 'Cutlery', 1, 10, 10, 'Sanskari Biryani', 'close', '20:16:26', '14:07:12', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(23, 'MFB585', 'Cutlery', 1, 10, 10, 'Sanskari Biryani', 'close', '20:17:07', '14:07:20', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(24, 'MFB586', 'Non Veg Burger Momo Combo', 1, 349, 349, 'MomoGuy', 'close', '20:17:27', '14:07:27', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(25, 'MFB587', 'Cutlery', 1, 10, 10, 'Sanskari Biryani', 'close', '20:17:53', '14:07:35', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(26, 'MFB588', 'Butter Chicken Biryani', 1, 319, 319, 'Badmaash Biryani', 'close', '20:59:25', '14:07:45', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(27, 'MFB589', 'Butter Chicken Biryani', 1, 319, 319, 'Badmaash Biryani', 'close', '21:03:56', '14:07:53', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(28, 'MFB590', 'Butter Chicken Biryani', 1, 349, 349, 'Biriyani Hazir Ho', 'close', '21:07:02', '14:08:01', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(29, 'MFB591', 'Paneer Tikka Biryani', 1, 319, 319, 'Badmaash Biryani', 'close', '21:27:34', '14:09:35', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(30, 'MFB592', 'Milkshake - Ferrero Rocher Brownie', 1, 199, 199, 'Maa Ki Khichdi', 'close', '21:55:03', '14:09:44', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(31, 'MFB592', 'Vanilla Kitkat Shake', 1, 149, 149, 'Maa Ki Khichdi', 'close', '21:55:03', '14:09:55', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(32, 'MFB592', 'Strawberry Milkshake', 1, 129, 129, 'Maa Ki Khichdi', 'close', '21:55:03', '14:10:43', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(33, 'MFB593', 'Mango Milkshake', 1, 129, 129, 'Maa Ki Khichdi', 'close', '22:43:35', '14:19:33', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(34, 'MFB593', 'Choco Chips Brownie', 1, 129, 129, 'Maa Ki Khichdi', 'close', '22:43:35', '14:19:39', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(35, 'MFB594', 'Achari Paneer Paratha', 1, 239, 239, 'Pind Da Paratha	', 'close', '11:33:34', '14:19:47', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(38, 'MFB595', 'Mutton Dum Biryani Almight Special', 1, 499, 499, 'Almighty Biryani', 'close', '12:13:29', '14:20:07', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(39, 'MFB596', 'Assorted Premium Veg Momos', 1, 209, 209, 'Panda Momos', 'close', '12:31:24', '14:20:14', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(40, 'MFB597', 'Lasooni Palak Khichdi (Curd, Papad, Pickle)', 1, 129, 129, 'Maa Ki Khichdi', 'close', '12:40:12', '14:20:20', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(41, 'MFB597', 'Masala Chaas', 1, 89, 89, 'Maa Ki Khichdi', 'close', '12:40:12', '14:20:27', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(42, 'MFB598', 'Chicken Momo Burger', 1, 159, 159, 'Panda Momos', 'close', '14:32:17', '14:35:16', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(43, 'MFB599', 'Paneer Tikka (5 Pcs)', 1, 299, 299, 'Almighty Biryani', 'close', '14:36:57', '14:54:47', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(44, 'MFB600', 'Chicken Momos - 6 Pcs', 1, 169, 169, 'MomoGuy', 'close', '15:20:25', '15:47:34', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(45, 'MFB601', 'Lasooni Palak Khichdi (Curd, Papad, Pickle)', 1, 189, 189, 'Khichdi Paradise', 'close', '15:33:29', '15:48:01', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(46, 'MFB601', 'Oreo Brownie', 1, 149, 149, 'Khichdi Paradise', 'close', '15:33:29', '15:48:33', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(47, 'MFB602', 'Mix Veg Momos - 6 Pcs', 1, 149, 149, 'MomoGuy', 'close', '15:54:42', '15:58:41', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(48, 'MFB602', 'Pan Fried Paneer Tikka Momos (6 Pc)', 1, 239, 239, 'MomoGuy', 'close', '15:54:42', '16:30:09', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(49, 'MFB602', 'Pan Fried Corn and Cheese Momos (6 Pc)', 1, 239, 239, 'MomoGuy', 'close', '15:54:42', '16:30:16', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(50, 'MFB602', 'Veg Schezwan Momos - 6 Pcs', 1, 189, 189, 'MomoGuy', 'close', '15:54:42', '16:30:38', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(51, 'MFB603', 'Mushroom Momos - 6 Pcs', 1, 229, 229, 'MomoGuy', 'close', '15:57:29', '15:58:05', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(52, 'MFB603', 'Veg Makhani Momos - 6 Pcs', 1, 199, 199, 'MomoGuy', 'close', '15:57:29', '15:59:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(53, 'MFB604', 'Chicken Dum Biryani Almight Special', 1, 359, 359, 'Almighty Biryani', 'close', '15:58:00', '15:58:12', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(54, 'MFB605', 'Chicken Momos (6 Pcs)', 1, 169, 169, 'Panda Momos', 'close', '18:16:16', '17:27:04', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(55, 'MFB606', 'Corn and Cheese Momos - 6 Pcs', 1, 229, 229, 'MomoGuy', 'close', '21:26:35', '11:17:34', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(56, 'MFB606', 'Veg Schezwan Momos - 6 Pcs', 1, 189, 189, 'MomoGuy', 'close', '21:26:35', '11:18:06', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(57, 'MFB606', 'Chicken Momos - 6 Pcs', 1, 169, 169, 'MomoGuy', 'open', '21:26:35', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(58, 'MFB606', 'Chicken Peri Peri Momos - 6 Pcs', 1, 199, 199, 'MomoGuy', 'open', '21:26:35', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(59, 'MFB607', 'Paneer Makhani Biryani', 1, 319, 319, 'Badmaash Biryani', 'open', '21:44:58', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(60, 'MFB608', 'Lasooni Palak Khichdi (Curd, Papad, Pickle)', 1, 189, 189, 'Khichdi Paradise', 'open', '22:46:01', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(61, 'MFB608', 'Oreo Brownie', 1, 149, 149, 'Khichdi Paradise', 'open', '22:46:01', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(62, 'MFB609', 'Delectable Mix Veg Paratha', 1, 199, 199, 'Pind Da Paratha	', 'open', '11:42:27', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(63, 'MFB610', 'Pan Fried Veg Schezwan Momos (6 Pcs)', 1, 199, 199, 'Panda Momos', 'open', '13:38:42', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(64, 'MFB610', 'Paneer Tikka Momo Burger', 1, 149, 149, 'Panda Momos', 'open', '13:38:42', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(65, 'MFB611', 'Paneer Tikka Biryani Almight Special', 1, 399, 399, 'Almighty Biryani', 'open', '14:23:32', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(66, 'MFB612', 'Cold Coffee', 1, 179, 179, 'Pind Da Paratha	', 'open', '17:45:48', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(67, 'MFB613', 'Chicken Dum Biryani Almight Special', 1, 359, 359, 'Almighty Biryani', 'open', '19:14:12', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(68, 'MFB614', 'Chicken Momos (6 Pcs)', 1, 169, 169, 'Panda Momos', 'open', '20:42:11', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(69, 'MFB615', 'Delectable Mix Veg Paratha', 1, 249, 249, 'Sanskari Paratha	', 'open', '20:51:27', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(70, 'MFB616', 'Mast Gobi Paratha', 1, 229, 229, 'Sanskari Paratha	', 'open', '21:04:16', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(71, 'MFB617', 'Paneer Tikka Biryani', 1, 319, 319, 'Sanskari Biryani', 'open', '22:43:49', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(72, 'MFB618', 'Lasooni Palak Khichdi (Curd, Papad, Pickle)', 1, 129, 129, 'Maa Ki Khichdi', 'open', '11:49:24', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(73, 'MFB619', 'Achari Paneer Paratha', 1, 239, 239, 'Pind Da Paratha	', 'open', '12:47:59', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(74, 'MFB620', 'Lasooni Tadka Combo', 1, 229, 229, 'Maa Ki Khichdi', 'open', '13:00:32', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(75, 'MFB621', 'Paneer Tikka Biryani', 1, 349, 349, 'Biriyani Hazir Ho', 'open', '13:05:57', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(76, 'MFB622', 'Peri Peri Chicken Momo Burger', 1, 199, 199, 'Panda Momos', 'open', '13:06:12', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(77, 'MFB622', 'Paneer Tikka Momo Burger', 1, 149, 149, 'Panda Momos', 'open', '13:06:12', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(78, 'MFB623', 'Paneer Tikka Biryani Almight Special', 1, 399, 399, 'Almighty Biryani', 'open', '13:30:08', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(79, 'MFB624', 'Assorted Premium Veg Momos', 1, 209, 209, 'Panda Momos', 'open', '14:14:21', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(80, 'MFB625', 'Paneer Tikka Biryani', 1, 319, 319, 'Badmaash Biryani', 'open', '14:56:46', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(81, 'MFB626', 'Chicken Dum Biryani Almight Special', 4, 359, 1436, 'Almighty Biryani', 'open', '15:47:40', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(82, 'MFB627', 'Corn and Cheese Jain Momos (6 Pc)', 1, 219, 219, 'Panda Momos', 'open', '17:34:24', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(83, 'MFB627', 'Mix Veg Momos (6 Pc)', 1, 149, 149, 'Panda Momos', 'open', '17:34:24', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(84, 'MFB628', 'Pickle', 3, 20, 60, 'Almighty Biryani', 'open', '18:09:59', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(85, 'MFB629', 'Pickle', 3, 20, 60, 'Khichdi Paradise', 'open', '18:12:15', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(86, 'MFB630', 'Pickle', 3, 20, 60, 'Maa Ki Khichdi', 'open', '18:12:34', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(87, 'MFB631', 'Pickle', 3, 20, 60, 'MBA In Khichdi', 'open', '18:18:14', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(88, 'MFB632', 'Schezwan Sauce', 3, 20, 60, 'MomoGuy', 'open', '18:18:32', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(89, 'MFB633', 'Schezwan Sauce', 3, 20, 60, 'Panda Momos', 'open', '18:20:04', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(90, 'MFB634', 'Pickle', 3, 20, 60, 'Pind Da Paratha	', 'open', '18:24:41', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(91, 'MFB635', 'Pickle', 3, 20, 60, 'Sanskari Paratha	', 'open', '18:26:33', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(92, 'MFB636', 'Ketchup (2 pcs)', 3, 20, 60, 'Seedha Sada Samosa	', 'open', '18:28:43', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(93, 'MFB637', 'Assorted Premium Non Veg Momos', 1, 249, 249, 'Panda Momos', 'open', '19:12:14', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(94, 'MFB637', 'Butter Chicken Momo Burger', 1, 219, 219, 'Panda Momos', 'open', '19:12:14', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(95, 'MFB637', 'Chicken Cheese Momos (6 Pcs)', 1, 219, 219, 'Panda Momos', 'open', '19:12:14', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(96, 'MFB638', 'Lasooni Tadka Combo', 1, 229, 229, 'Maa Ki Khichdi', 'open', '20:04:31', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(97, 'MFB639', 'Mix Veg Momos (6 Pc)', 2, 149, 298, 'Panda Momos', 'open', '22:09:35', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(98, 'MFB640', 'Delectable Mix Veg Paratha', 1, 249, 249, 'Sanskari Paratha	', 'open', '22:19:47', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(99, 'MFB641', 'Chicken Momo Burger', 1, 159, 159, 'MomoGuy', 'open', '22:29:53', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(100, 'MFB641', 'Vanilla milk shake (300 Ml)', 1, 119, 119, 'MomoGuy', 'open', '22:29:53', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(101, 'MFB642', 'Deep Fried Chicken Momos (6 Pc)', 1, 189, 189, 'MomoGuy', 'open', '22:32:35', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(102, 'MFB642', 'Chocolate milkshake (300 Ml)', 1, 119, 119, 'MomoGuy', 'open', '22:32:35', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(103, 'MFB643', 'Chilli Chicken Paratha', 1, 239, 239, 'Pind Da Paratha	', 'open', '11:23:20', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(104, 'MFB644', 'Lasooni Palak Khichdi (Curd, Papad, Pickle)', 1, 189, 189, 'Khichdi Paradise', 'open', '14:09:28', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(105, 'MFB645', 'Chicken Momo Burger', 2, 159, 318, 'MomoGuy', 'open', '16:48:45', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(106, 'MFB645', 'Butterscotch milkshake (300 Ml)', 1, 119, 119, 'MomoGuy', 'open', '16:48:45', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(107, 'MFB645', 'Chocolate milkshake (300 Ml)', 1, 119, 119, 'MomoGuy', 'open', '16:48:45', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(108, 'MFB646', 'Paneer Makhani Biryani', 1, 319, 319, 'Sanskari Biryani', 'open', '18:54:50', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(109, 'MFB647', 'Chicken Momos - 6 Pcs', 1, 169, 169, 'MomoGuy', 'open', '20:23:52', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(110, 'MFB648', 'Pan Fried Chicken Tikka Momos (6 Pcs)', 1, 209, 209, 'Panda Momos', 'open', '20:24:10', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(111, 'MFB649', 'Moong Dal Halwa', 1, 149, 149, 'Maa Ki Khichdi', 'open', '20:43:25', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(112, 'MFB649', 'Lasooni Palak Khichdi (Curd, Papad, Pickle)', 1, 129, 129, 'Maa Ki Khichdi', 'open', '20:43:25', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(113, 'MFB650', 'Mutton Dum Biryani Almight Special', 4, 449, 1796, 'Almighty Biryani', 'open', '21:05:05', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(114, 'MFB651', 'Lasooni Palak Khichdi (Curd, Papad, Pickle)', 1, 129, 129, 'Maa Ki Khichdi', 'open', '21:08:35', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(115, 'MFB651', 'Butterscotch Milkshake', 1, 129, 129, 'Maa Ki Khichdi', 'open', '21:08:35', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(116, 'MFB652', 'Special Mutton Dum Biryani', 1, 449, 449, 'Badmaash Biryani', 'open', '21:11:48', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(117, 'MFB652', 'Special Veg Dum Biryani', 1, 309, 309, 'Badmaash Biryani', 'open', '21:11:48', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(118, 'MFB653', 'Spicy Chicken Tikka Biryani Almight Special', 1, 359, 359, 'Almighty Biryani', 'open', '21:14:05', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(119, 'MFB654', 'Chilli Chicken Paratha', 1, 239, 239, 'Pind Da Paratha	', 'open', '22:02:29', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(120, 'MFB655', 'Mix Veg Momos (6 Pc)', 1, 149, 149, 'Panda Momos', 'open', '22:41:41', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(121, 'MFB656', 'Paneer Makhani Biryani', 1, 319, 319, 'Badmaash Biryani', 'open', '11:05:58', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(122, 'MFB657', 'Ghee Roast Paneer Paratha', 1, 239, 239, 'Pind Da Paratha	', 'open', '12:45:22', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(123, 'MFB658', 'Delectable Mix Veg Paratha', 1, 199, 199, 'Pind Da Paratha	', 'open', '12:45:52', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(124, 'MFB659', 'Chicken Keema Samosa (2 Pc)', 1, 139, 139, 'Seedha Sada Samosa	', 'open', '12:48:03', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(125, 'MFB659', 'Chocolate Milkshake', 1, 119, 119, 'Seedha Sada Samosa	', 'open', '12:48:03', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(126, 'MFB659', 'Cold Coffee', 1, 89, 89, 'Seedha Sada Samosa	', 'open', '12:48:03', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(127, 'MFB660', 'Spicy Chicken Tikka Biryani Almight Special', 1, 359, 359, 'Almighty Biryani', 'open', '12:54:47', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(128, 'MFB661', 'Paneer Makhani Biryani', 1, 319, 319, 'Badmaash Biryani', 'open', '15:01:36', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(129, 'MFB661', 'Special Paneer Makhni Biryani', 1, 359, 359, 'Badmaash Biryani', 'open', '15:01:36', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(130, 'MFB662', 'Lasooni Palak Khichdi (Curd, Papad, Pickle)', 2, 189, 378, 'Khichdi Paradise', 'open', '15:38:20', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(131, 'MFB662', 'Moong Dal Halwa', 1, 149, 149, 'Khichdi Paradise', 'open', '15:38:20', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(132, 'MFB663', 'Veg Dum Biryani Almight Special', 1, 309, 309, 'Almighty Biryani', 'open', '16:00:18', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(133, 'MFB664', 'Mutton Seekh Kebab (6 Pcs)', 1, 329, 329, 'Badmaash Biryani', 'open', '16:52:12', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(134, 'MFB664', 'Death By Brownie Shake', 1, 209, 209, 'Badmaash Biryani', 'open', '16:52:12', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(135, 'MFB665', 'Special Mutton Dum Biryani', 1, 449, 449, 'Badmaash Biryani', 'open', '17:57:25', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(136, 'MFB666', 'Chicken Momos (6 Pcs)', 1, 169, 169, 'Panda Momos', 'open', '18:24:33', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(137, 'MFB666', 'Pan Fried Chicken Peri Peri Momos (6 Pcs)', 1, 209, 209, 'Panda Momos', 'open', '18:24:33', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(138, 'MFB667', 'Lasooni Palak Khichdi (Curd, Papad, Pickle)', 1, 189, 189, 'Khichdi Paradise', 'open', '19:19:40', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(139, 'MFB668', 'Lasooni Palak Khichdi (Curd, Papad, Pickle)', 1, 189, 189, 'Khichdi Paradise', 'open', '19:51:05', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(140, 'MFB668', 'Masala Chaas', 1, 89, 89, 'Khichdi Paradise', 'open', '19:51:05', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(141, 'MFB669', 'Lasooni Palak Khichdi (Curd, Papad, Pickle)', 1, 189, 189, 'Khichdi Paradise', 'open', '21:25:07', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(142, 'MFB670', 'Deep Fried Paneer Tikka Momos (6 Pcs)', 1, 249, 249, 'Panda Momos', 'open', '22:27:14', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(143, 'MFB670', 'Paneer Tikka Momo Burger', 1, 149, 149, 'Panda Momos', 'open', '22:27:14', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(144, 'MFB671', 'Chicken Schezwan Gravy Momos (5 Pcs)', 1, 249, 249, 'Panda Momos', 'open', '22:35:31', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(145, 'MFB671', 'Peri Peri Chicken Momo Burger', 1, 199, 199, 'Panda Momos', 'open', '22:35:31', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(146, 'MFB672', 'Mast Gobi Paratha', 1, 179, 179, 'Pind Da Paratha	', 'open', '12:20:47', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(147, 'MFB672', 'Delectable Mix Veg Paratha', 1, 199, 199, 'Pind Da Paratha	', 'open', '12:20:47', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(148, 'MFB673', 'Paneer Makhani Biryani', 1, 319, 319, 'Sanskari Biryani', 'open', '12:24:48', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(149, 'MFB674', 'Special Spicy Chicken Tikka Biryani', 1, 359, 359, 'Badmaash Biryani', 'open', '12:40:55', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(150, 'MFB675', 'Pan Fried Butter Chicken Momos (6 Pcs)', 1, 229, 229, 'Panda Momos', 'open', '13:24:48', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(151, 'MFB675', 'Chocolate Momos (1 Pc)', 1, 79, 79, 'Panda Momos', 'open', '13:24:48', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(152, 'MFB676', 'Mutton Momos (6 Pcs)', 1, 279, 279, 'Panda Momos', 'open', '13:30:24', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(153, 'MFB676', 'Chicken Momos (6 Pcs)', 1, 169, 169, 'Panda Momos', 'open', '13:30:24', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(154, 'MFB677', 'Spicy Chicken Tikka Biryani Almight Special', 1, 399, 399, 'Almighty Biryani', 'open', '13:47:36', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(155, 'MFB678', 'Mix Veg Momo Burger', 1, 149, 149, 'MomoGuy', 'open', '16:47:20', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(156, 'MFB679', 'Chicken Momos (6 Pcs)', 1, 169, 169, 'Panda Momos', 'open', '17:24:51', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(157, 'MFB679', 'Deep Fried Prawn Momos (6 Pcs)', 1, 299, 299, 'Panda Momos', 'open', '17:24:51', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(158, 'MFB679', 'Deep Fried Butter Chicken Momos (6 Pcs)', 1, 239, 239, 'Panda Momos', 'open', '17:24:51', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(159, 'MFB680', 'Mix Veg Momos (6 Pc)', 2, 149, 298, 'Panda Momos', 'open', '17:24:55', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(160, 'MFB680', 'Pan Fried Mix Veg Momos (6 Pcs)', 1, 159, 159, 'Panda Momos', 'open', '17:24:55', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(161, 'MFB681', 'Chicken Momo Burger', 1, 159, 159, 'MomoGuy', 'open', '17:30:32', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(162, 'MFB681', 'Pan Fried Chicken Cheese Momos (6 Pc)', 1, 229, 229, 'MomoGuy', 'open', '17:30:32', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(163, 'MFB682', 'Chicken Keema Samosa (2 Pc)', 2, 139, 278, 'Seedha Sada Samosa	', 'open', '18:48:05', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(164, 'MFB682', 'Chicken Bhuna Samosa (2 Pc)', 1, 129, 129, 'Seedha Sada Samosa	', 'open', '18:48:05', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(165, 'MFB683', 'Chicken Cheese Momos (6 Pcs)', 1, 219, 219, 'Panda Momos', 'open', '19:02:22', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(166, 'MFB683', 'Pan Fried Chicken Tikka Momos (6 Pcs)', 1, 209, 209, 'Panda Momos', 'open', '19:02:22', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(167, 'MFB684', 'Lasooni Palak Khichdi (Curd, Papad, Pickle)', 1, 189, 189, 'MBA In Khichdi', 'open', '19:48:43', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(168, 'MFB684', 'Oreo Brownie', 1, 149, 149, 'MBA In Khichdi', 'open', '19:48:43', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(169, 'MFB685', 'Corn and Cheese Momos (6 Pc)', 1, 229, 229, 'Panda Momos', 'open', '20:15:41', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(170, 'MFB685', 'Veg Makhani Momos (6 Pcs)', 1, 199, 199, 'Panda Momos', 'open', '20:15:41', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(171, 'MFB685', 'Pan Fried Mix Veg Momos (6 Pcs)', 1, 159, 159, 'Panda Momos', 'open', '20:15:41', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(172, 'MFB686', 'Paneer Tikka Momo Burger', 1, 149, 149, 'MomoGuy', 'open', '20:31:08', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(173, 'MFB686', 'Mix Veg Momos - 6 Pcs', 1, 149, 149, 'MomoGuy', 'open', '20:31:08', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(174, 'MFB686', 'Tofu Momo Burger', 1, 139, 139, 'MomoGuy', 'open', '20:31:08', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(175, 'MFB687', 'Fantastic Four Waffle Pizza', 1, 329, 329, 'Wack Waffle Pizza', 'open', '21:05:12', '00:00:00', '2022-05-23 14:57:33', '2022-05-23 14:57:33'),
(176, 'MFB575', 'Chicken Momos (6 Pcs)', 12, 500, 1600, 'Panda Momos', 'close', '18:40:14', '18:47:46', '2022-05-23 09:40:24', '2022-05-23 09:40:24'),
(177, 'MFB575', 'Chicken Momos (6 Pcs)', 12, 500, 1600, 'Panda Momos', 'close', '18:40:14', '18:47:46', '2022-05-23 12:29:34', '2022-05-23 12:29:34'),
(178, 'MFB575122', 'Chicken Momos (6 Pcs)', 1212, 50011, 1600, 'Panda Momos', 'close', '18:40:14', '18:47:46', '2022-05-23 12:29:51', '2022-05-23 12:29:51'),
(179, 'MFB575122', 'Chicken Momos (6 Pcs)', 1212, 50011, 1600, 'Panda Momos', 'close', '18:40:14', '18:47:46', '2022-05-23 12:30:07', '2022-05-23 12:30:07'),
(180, 'MFB575122112', 'Chicken Momos (6 Pcs)', 120, 1001, 1600, 'Panda Momos', 'close', '18:40:14', '18:47:46', '2022-05-23 12:56:29', '2022-05-23 12:56:29'),
(181, 'MFB575122112', 'Chicken Momos (6 Pcs)', 120, 1001, 1600, 'Panda Momos', 'close', '18:40:14', '18:47:46', '2022-05-23 12:58:54', '2022-05-23 12:58:54'),
(182, 'MFB575122112', 'Chicken Momos (6 Pcs)', 120, 1001, 1600, 'Panda Momos', 'close', '18:40:14', '18:47:46', '2022-05-23 13:05:03', '2022-05-23 13:05:03'),
(183, 'SEWWB575122112', 'Chicken Momos (6 Pcs)', 120, 1001, 1600, 'Panda Momos', 'close', '18:40:14', '18:47:46', '2022-05-23 13:05:15', '2022-05-23 13:05:15'),
(184, 'SEWWB575122112', 'Chicken Momos (6 Pcs)', 120, 1001, 1600, 'Panda Momos', 'close', '18:40:14', '18:47:46', '2022-05-31 03:39:44', '2022-05-31 03:39:44'),
(185, '22SEWWB575122112', 'Chicken Momos (6 Pcs)', 1201, 10011, 1600, 'Panda Momos', 'close', '18:40:14', '18:47:46', '2022-05-31 03:45:05', '2022-05-31 03:45:05');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_05_18_051025_create_students_table', 1),
(7, '2022_05_19_141656_create_products_table', 2),
(13, '2022_05_20_144409_orders', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Jeet', 'Hello', '2022-05-19 10:04:48', '2022-05-19 10:04:48'),
(2, 'Sandeep', 'This is sandeep', '2022-05-19 10:08:17', '2022-05-19 10:08:17'),
(3, 'Jeet', 'This is Jeet', '2022-05-19 10:36:55', '2022-05-19 10:36:55'),
(4, 'Jeet Patel', 'This is description', '2022-05-19 10:40:03', '2022-05-19 10:40:03'),
(5, 'AmarJeet', 'This is description', '2022-05-19 10:40:12', '2022-05-19 10:40:12'),
(6, 'AmarJeet', 'This is description', '2022-05-19 12:26:13', '2022-05-19 12:26:13'),
(7, 'Sandip Kumar', 'I am from Allahabad', '2022-05-19 12:26:42', '2022-05-19 12:26:42'),
(8, 'Sandip Kumar2', 'I am from Allahabad', '2022-05-19 12:36:23', '2022-05-19 12:36:23'),
(9, 'Sandip Kumar2', 'I am from Allahabad', '2022-05-19 12:59:11', '2022-05-19 12:59:11'),
(10, 'Raju kumar', 'I am from Allahabad', '2022-05-19 12:59:33', '2022-05-19 12:59:33'),
(11, 'Raju kumar', 'I am from Allahabad', '2022-05-20 07:23:35', '2022-05-20 07:23:35'),
(12, 'Raju kumar222', 'I am from Allahabad', '2022-05-20 10:32:27', '2022-05-20 10:32:27'),
(13, 'Raju kumar222', 'I am from Allahabad', '2022-05-20 10:33:22', '2022-05-20 10:33:22'),
(14, 'Raju kumar2244', 'I am from Allahabad', '2022-05-20 10:33:28', '2022-05-20 10:33:28'),
(15, 'Raju kumar2244', 'I am from Allahabad', '2022-05-20 10:39:13', '2022-05-20 10:39:13');

-- --------------------------------------------------------

--
-- Table structure for table `reciepts`
--

CREATE TABLE `reciepts` (
  `id` int(11) NOT NULL,
  `entity` varchar(50) DEFAULT NULL,
  `invoiceNumber` varchar(30) NOT NULL,
  `brand` varchar(150) NOT NULL,
  `billno` varchar(30) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  `fromName` varchar(100) NOT NULL,
  `grandtotal` varchar(40) DEFAULT NULL,
  `totalqty` int(11) DEFAULT NULL,
  `subtotal` decimal(9,2) DEFAULT NULL,
  `discount` decimal(9,2) DEFAULT NULL,
  `package` decimal(9,2) DEFAULT NULL,
  `sgst` decimal(9,2) DEFAULT NULL,
  `cgst` decimal(9,2) DEFAULT NULL,
  `sgstperc` varchar(50) DEFAULT NULL,
  `cgstperc` varchar(50) DEFAULT NULL,
  `gst_tax_total` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reciepts`
--

INSERT INTO `reciepts` (`id`, `entity`, `invoiceNumber`, `brand`, `billno`, `name`, `date`, `fromName`, `grandtotal`, `totalqty`, `subtotal`, `discount`, `package`, `sgst`, `cgst`, `sgstperc`, `cgstperc`, `gst_tax_total`, `created_at`, `updated_at`) VALUES
(1, '', '135345596225', 'Panda Momos', 'MFB570', 'SWIGGY', '2022-05-11 17:30:18', '', '184.9', 2, '318.00', '-143.10', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(2, '', '135349013465', 'MomoGuy', 'MFB571', 'SWIGGY', '2022-05-11 18:26:55', '', '348', 1, '507.00', '-169.00', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(4, '', '135349940116', 'Sanskari Biryani', 'MFB573', 'SWIGGY', '2022-05-11 18:42:22', '', '20', 1, '10.00', '0.00', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(5, '', '135350027887', 'Sanskari Biryani', 'MFB574', 'SWIGGY', '2022-05-11 18:43:51', '', '20', 1, '10.00', '0.00', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(6, '', '135350083611', 'Sanskari Biryani', 'MFB575', 'SWIGGY', '2022-05-11 18:44:45', '', '20', 1, '10.00', '0.00', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(7, '', '135350118782', 'Sanskari Biryani', 'MFB576', 'SWIGGY', '2022-05-11 18:45:21', '', '20', 1, '10.00', '0.00', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(8, '', '135350206727', 'Sanskari Biryani', 'MFB577', 'SWIGGY', '2022-05-11 18:46:52', '', '20', 1, '10.00', '0.00', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(9, '', '135349895681', 'Sanskari Biryani', 'MFB572', 'SWIGGY', '2022-05-11 18:41:37', '', '20', 1, '10.00', '0.00', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(10, '', '4038427193', 'Pind Da Paratha	', 'MFB578', 'Jonas J Kamicheril', '2022-05-11 18:53:38', '', '125.3', 1, '299.00', '-173.70', '0.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(11, '', '135351417577', 'Panda Momos', 'MFB579', 'SWIGGY', '2022-05-11 19:07:23', '', '195.9', 1, '338.00', '-152.10', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(12, '', '4044456963', 'MomoGuy', 'MFB580', 'Ansel Sonal Lobo', '2022-05-11 19:12:41', '', '266.2', 2, '527.00', '-260.80', '0.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(13, '', '135352785200', 'Panda Momos', 'MFB581', 'SWIGGY', '2022-05-11 19:31:09', '', '311.4', 2, '548.00', '-246.60', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(14, '', '4043452104', 'Panda Momos', 'MFB582', 'Yeshashwini Acharya', '2022-05-11 19:55:53', '', '232.2', 3, '527.00', '-294.80', '0.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(15, '', '135355525763', 'Sanskari Biryani', 'MFB583', 'SWIGGY', '2022-05-11 20:15:28', '', '20', 1, '10.00', '0.00', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(16, '', '135355584397', 'Sanskari Biryani', 'MFB584', 'SWIGGY', '2022-05-11 20:16:26', '', '20', 1, '10.00', '0.00', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(17, '', '135355624957', 'Sanskari Biryani', 'MFB585', 'SWIGGY', '2022-05-11 20:17:07', '', '20', 1, '10.00', '0.00', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(18, '', '135355603639', 'MomoGuy', 'MFB586', 'SWIGGY', '2022-05-11 20:17:26', '', '359', 1, '349.00', '0.00', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(19, '', '135355670897', 'Sanskari Biryani', 'MFB587', 'SWIGGY', '2022-05-11 20:17:53', '', '20', 1, '10.00', '0.00', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(20, '', '135358122405', 'Badmaash Biryani', 'MFB588', 'SWIGGY', '2022-05-11 20:59:24', '', '207.35', 1, '319.00', '-111.65', '0.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(21, '', '135358383255', 'Badmaash Biryani', 'MFB589', 'SWIGGY', '2022-05-11 21:03:56', '', '319', 1, '319.00', '0.00', '0.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(22, '', '135358575655', 'Biriyani Hazir Ho', 'MFB590', 'SWIGGY', '2022-05-11 21:07:01', '', '201.95', 1, '349.00', '-157.05', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(23, '', '135359799488', 'Badmaash Biryani', 'MFB591', 'SWIGGY', '2022-05-11 21:27:34', '', '195.2', 1, '319.00', '-123.80', '0.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(24, '', '4046125989', 'Maa Ki Khichdi', 'MFB592', 'Vaibhav', '2022-05-11 21:55:03', '', '202.2', 3, '477.00', '-274.80', '0.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(25, '', '135364392284', 'Maa Ki Khichdi', 'MFB593', 'SWIGGY', '2022-05-11 22:43:34', '', '184', 2, '258.00', '-84.00', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(26, '', '135410587735', 'Pind Da Paratha	', 'MFB594', 'SWIGGY', '2022-05-12 11:33:34', '', '165', 1, '239.00', '-84.00', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(28, 'Ghost Kitchen', '4038477480', 'Almighty Biryani', 'MFB595', 'Jayakar', '2022-05-12 12:13:28', '', '215.4', 1, '499.00', '-283.60', '0.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(29, 'Ghost Kitchen', '135414043559', 'Panda Momos', 'MFB596', 'SWIGGY', '2022-05-12 12:31:23', '', '135', 1, '209.00', '-84.00', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(30, 'Ghost Kitchen', '4034722008', 'Maa Ki Khichdi', 'MFB597', 'Shreyansh Patni', '2022-05-12 12:40:11', '', '75.86', 2, '218.00', '-142.14', '0.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(31, 'Ghost Kitchen', '4046893683', 'Panda Momos', 'MFB598', 'Sumith', '2022-05-12 14:32:16', '', '92.22', 1, '159.00', '-66.78', '0.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(32, 'Ghost Kitchen', '4046998327', 'Almighty Biryani', 'MFB599', 'Keerthi Raju', '2022-05-12 14:36:56', '', '104.05', 1, '299.00', '-194.95', '0.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(33, 'Ghost Kitchen', '135424221524', 'MomoGuy', 'MFB600', 'SWIGGY', '2022-05-12 15:20:24', '', '108.02', 1, '169.00', '-70.98', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(34, 'Ghost Kitchen', '135424926086', 'Khichdi Paradise', 'MFB601', 'SWIGGY', '2022-05-12 15:33:28', '', '220.41', 2, '338.00', '-127.59', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(35, 'Ghost Kitchen', '4042203137', 'MomoGuy', 'MFB602', 'Kowshik Sai', '2022-05-12 15:54:42', '', '405.6', 4, '816.00', '-410.40', '0.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(36, 'Ghost Kitchen', '4037093378', 'MomoGuy', 'MFB603', 'Ramchander Raman', '2022-05-12 15:57:29', '', '172.8', 2, '428.00', '-255.20', '0.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(37, 'Ghost Kitchen', '135426457957', 'Almighty Biryani', 'MFB604', 'SWIGGY', '2022-05-12 15:58:00', '', '207.45', 1, '359.00', '-161.55', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(38, 'Ghost Kitchen', '135434743522', 'Panda Momos', 'MFB605', 'SWIGGY', '2022-05-12 18:16:15', '', '108.02', 1, '169.00', '-70.98', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(39, 'Ghost Kitchen', '135446176233', 'MomoGuy', 'MFB606', 'SWIGGY', '2022-05-12 21:26:34', '', '442.3', 4, '786.00', '-353.70', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(40, 'Ghost Kitchen', '135447290367', 'Badmaash Biryani', 'MFB607', 'SWIGGY', '2022-05-12 21:44:57', '', '175.45', 1, '319.00', '-143.55', '0.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(41, 'Ghost Kitchen', '135450960153', 'Khichdi Paradise', 'MFB608', 'SWIGGY', '2022-05-12 22:46:01', '', '348', 2, '338.00', '0.00', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(42, 'Ghost Kitchen', '135497459622', 'Pind Da Paratha	', 'MFB609', 'SWIGGY', '2022-05-13 11:42:26', '', '125.42', 1, '199.00', '-83.58', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(43, 'Ghost Kitchen', '4046360511', 'Panda Momos', 'MFB610', 'Richa Sancheti', '2022-05-13 13:38:41', '', '124.8', 2, '348.00', '-223.20', '0.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(44, 'Ghost Kitchen', '4032214137', 'Almighty Biryani', 'MFB611', 'Shweta', '2022-05-13 14:23:32', '', '155.4', 1, '399.00', '-243.60', '0.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(45, 'Ghost Kitchen', '4047185067', 'Pind Da Paratha	', 'MFB612', 'Shainee Baliyarsingh', '2022-05-13 17:45:47', '', '103.82', 1, '179.00', '-75.18', '0.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(46, 'Ghost Kitchen', '135524514412', 'Almighty Biryani', 'MFB613', 'SWIGGY', '2022-05-13 19:14:11', '', '243.35', 1, '359.00', '-125.65', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(47, 'Ghost Kitchen', '135529854312', 'Panda Momos', 'MFB614', 'SWIGGY', '2022-05-13 20:42:10', '', '108.02', 1, '169.00', '-70.98', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(48, 'Ghost Kitchen', '135530461296', 'Sanskari Paratha	', 'MFB615', 'SWIGGY', '2022-05-13 20:51:26', '', '175', 1, '249.00', '-84.00', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(49, 'Ghost Kitchen', '135531228207', 'Sanskari Paratha	', 'MFB616', 'SWIGGY', '2022-05-13 21:04:16', '', '155', 1, '229.00', '-84.00', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(50, 'Ghost Kitchen', '135537201896', 'Sanskari Biryani', 'MFB617', 'SWIGGY', '2022-05-13 22:43:48', '', '217.35', 1, '319.00', '-111.65', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(51, 'Ghost Kitchen', '135584334945', 'Maa Ki Khichdi', 'MFB618', 'SWIGGY', '2022-05-14 11:49:23', '', '144', 1, '218.00', '-84.00', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(52, 'Ghost Kitchen', '135587877464', 'Pind Da Paratha	', 'MFB619', 'SWIGGY', '2022-05-14 12:47:59', '', '165', 1, '239.00', '-84.00', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(53, 'Ghost Kitchen', '4048305420', 'Maa Ki Khichdi', 'MFB620', 'Azarruddin Shamshuddin Mulani', '2022-05-14 13:00:32', '', '79.69', 1, '229.00', '-149.31', '0.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(54, 'Ghost Kitchen', '4049287924', 'Biriyani Hazir Ho', 'MFB621', 'Rahul Ram', '2022-05-14 13:05:57', '', '125.4', 1, '349.00', '-223.60', '0.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(55, 'Ghost Kitchen', '4049492130', 'Panda Momos', 'MFB622', 'Vansh Rajput', '2022-05-14 13:06:12', '', '118.8', 2, '348.00', '-229.20', '0.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(56, 'Ghost Kitchen', '4049502893', 'Almighty Biryani', 'MFB623', 'Shubham Singh', '2022-05-14 13:30:08', '', '239.4', 1, '399.00', '-159.60', '0.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(57, 'Ghost Kitchen', '4042194147', 'Panda Momos', 'MFB624', 'Geetham Pasumarty', '2022-05-14 14:14:20', '', '125.4', 1, '209.00', '-83.60', '0.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(58, 'Ghost Kitchen', '135595589764', 'Badmaash Biryani', 'MFB625', 'SWIGGY', '2022-05-14 14:56:45', '', '175.45', 1, '319.00', '-143.55', '0.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(59, 'Ghost Kitchen', '135598632076', 'Almighty Biryani', 'MFB626', 'SWIGGY', '2022-05-14 15:47:39', '', '799.8', 1, '1436.00', '-646.20', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(60, 'Ghost Kitchen', '135605035613', 'Panda Momos', 'MFB627', 'SWIGGY', '2022-05-14 17:34:23', '', '249.2', 2, '368.00', '-128.80', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(61, 'Ghost Kitchen', '4032439778', 'Almighty Biryani', 'MFB628', 'Disha Agicha', '2022-05-14 18:09:58', '', '60', 1, '60.00', '0.00', '0.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(62, 'Ghost Kitchen', '4052140646', 'Khichdi Paradise', 'MFB629', 'Sadaf Badgujar', '2022-05-14 18:12:15', '', '60', 1, '60.00', '0.00', '0.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(63, 'Ghost Kitchen', '4049297319', 'Maa Ki Khichdi', 'MFB630', 'Disha Agicha', '2022-05-14 18:12:34', '', '60', 1, '60.00', '0.00', '0.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(64, 'Ghost Kitchen', '4051057155', 'MBA In Khichdi', 'MFB631', 'Disha Agicha', '2022-05-14 18:18:14', '', '60', 1, '60.00', '0.00', '0.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(65, 'Ghost Kitchen', '4050931616', 'MomoGuy', 'MFB632', 'Sadaf Badgujar', '2022-05-14 18:18:32', '', '60', 1, '60.00', '0.00', '0.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(66, 'Ghost Kitchen', '4030360346', 'Panda Momos', 'MFB633', 'Sadaf Badgujar', '2022-05-14 18:20:04', '', '60', 1, '60.00', '0.00', '0.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(67, 'Ghost Kitchen', '4051333377', 'Pind Da Paratha	', 'MFB634', 'Kavita Foodie', '2022-05-14 18:24:41', '', '60', 1, '60.00', '0.00', '0.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(68, 'Ghost Kitchen', '4031616000', 'Sanskari Paratha	', 'MFB635', 'Kavita Foodie', '2022-05-14 18:26:33', '', '60', 1, '60.00', '0.00', '0.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(69, 'Ghost Kitchen', '4046666338', 'Seedha Sada Samosa	', 'MFB636', 'Kavita Foodie', '2022-05-14 18:28:43', '', '60', 1, '60.00', '0.00', '0.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(70, 'Ghost Kitchen', '4051658987', 'Panda Momos', 'MFB637', 'Abbaas Zaidi', '2022-05-14 19:12:14', '', '328.2', 3, '687.01', '-358.81', '0.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(71, 'Ghost Kitchen', '4052481297', 'Maa Ki Khichdi', 'MFB638', 'Harish Abhi', '2022-05-14 20:04:31', '', '79.69', 1, '229.00', '-149.31', '0.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(72, 'Ghost Kitchen', '4043031705', 'Panda Momos', 'MFB639', 'Archana Rathi', '2022-05-14 22:09:35', '', '103.7', 1, '298.00', '-194.30', '0.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(73, 'Ghost Kitchen', '135622145737', 'Sanskari Paratha	', 'MFB640', 'SWIGGY', '2022-05-14 22:19:46', '', '175', 1, '249.00', '-84.00', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(74, 'Ghost Kitchen', '4050181660', 'MomoGuy', 'MFB641', 'Imaaz Hamza', '2022-05-14 22:29:52', '', '96.74', 2, '278.00', '-181.26', '0.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(75, 'Ghost Kitchen', '4039778037', 'MomoGuy', 'MFB642', 'Smith Parkhe', '2022-05-14 22:32:35', '', '107.18', 2, '308.00', '-200.82', '0.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(76, 'Ghost Kitchen', '135669179041', 'Pind Da Paratha	', 'MFB643', 'SWIGGY', '2022-05-15 11:23:19', '', '165', 1, '239.00', '-84.00', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(77, 'Ghost Kitchen', '135679165274', 'Khichdi Paradise', 'MFB644', 'SWIGGY', '2022-05-15 14:09:27', '', '119.62', 1, '189.00', '-79.38', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(78, 'Ghost Kitchen', '4052395357', 'MomoGuy', 'MFB645', 'Yogesh Kumar', '2022-05-15 16:48:44', '', '249.6', 3, '556.00', '-306.40', '0.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(79, 'Ghost Kitchen', '135696254010', 'Sanskari Biryani', 'MFB646', 'SWIGGY', '2022-05-15 18:54:50', '', '217.35', 1, '319.00', '-111.65', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(80, 'Ghost Kitchen', '135701630228', 'MomoGuy', 'MFB647', 'SWIGGY', '2022-05-15 20:23:52', '', '108.02', 1, '169.00', '-70.98', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(81, 'Ghost Kitchen', '4046338755', 'Panda Momos', 'MFB648', 'Lirotsala Mongzar', '2022-05-15 20:24:09', '', '125.4', 1, '209.00', '-83.60', '0.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(82, 'Ghost Kitchen', '4054229097', 'Maa Ki Khichdi', 'MFB649', 'Azarruddin Shamshuddin Mulani', '2022-05-15 20:43:24', '', '91.74', 2, '278.00', '-186.26', '0.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(83, 'Ghost Kitchen', '135704063576', 'Almighty Biryani', 'MFB650', 'SWIGGY', '2022-05-15 21:05:04', '', '1177.4', 1, '1796.00', '-628.60', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(84, 'Ghost Kitchen', '4047072429', 'Maa Ki Khichdi', 'MFB651', 'Harish Abhi', '2022-05-15 21:08:34', '', '85.14', 2, '258.00', '-172.86', '0.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(85, 'Ghost Kitchen', '135704449408', 'Badmaash Biryani', 'MFB652', 'SWIGGY', '2022-05-15 21:11:48', '', '416.91', 2, '758.00', '-341.09', '0.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(86, 'Ghost Kitchen', '135704643648', 'Almighty Biryani', 'MFB653', 'SWIGGY', '2022-05-15 21:14:04', '', '207.45', 1, '359.00', '-161.55', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(87, 'Ghost Kitchen', '135707324626', 'Pind Da Paratha	', 'MFB654', 'SWIGGY', '2022-05-15 22:02:29', '', '165', 1, '239.00', '-84.00', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(88, 'Ghost Kitchen', '135709882717', 'Panda Momos', 'MFB655', 'SWIGGY', '2022-05-15 22:41:40', '', '159', 1, '149.00', '0.00', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(89, 'Ghost Kitchen', '4045732314', 'Badmaash Biryani', 'MFB656', 'Chethan', '2022-05-16 11:05:57', '', '201.4', 1, '319.00', '-127.60', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(90, 'Ghost Kitchen', '135760505582', 'Pind Da Paratha	', 'MFB657', 'SWIGGY', '2022-05-16 12:45:21', '', '165', 1, '239.00', '-84.00', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(91, 'Ghost Kitchen', '135760550137', 'Pind Da Paratha	', 'MFB658', 'SWIGGY', '2022-05-16 12:45:52', '', '125.42', 1, '199.00', '-83.58', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(92, 'Ghost Kitchen', '4052381232', 'Seedha Sada Samosa	', 'MFB659', 'Sahil Sharma', '2022-05-16 12:48:02', '', '162.9', 3, '346.99', '-194.09', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(93, 'Ghost Kitchen', '135761039848', 'Almighty Biryani', 'MFB660', 'SWIGGY', '2022-05-16 12:54:47', '', '207.45', 1, '359.00', '-161.55', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(94, 'Ghost Kitchen', '135768692153', 'Badmaash Biryani', 'MFB661', 'SWIGGY', '2022-05-16 15:01:35', '', '372.91', 2, '678.00', '-305.09', '0.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(95, 'Ghost Kitchen', '135770860314', 'Khichdi Paradise', 'MFB662', 'SWIGGY', '2022-05-16 15:38:19', '', '352.55', 2, '527.00', '-184.45', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(96, 'Ghost Kitchen', '135772217775', 'Almighty Biryani', 'MFB663', 'SWIGGY', '2022-05-16 16:00:18', '', '179.95', 1, '309.00', '-139.05', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(97, 'Ghost Kitchen', '4046967015', 'Badmaash Biryani', 'MFB664', 'Naufal Nazar', '2022-05-16 16:52:12', '', '248.8', 2, '538.00', '-299.20', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(98, 'Ghost Kitchen', '135779211858', 'Badmaash Biryani', 'MFB665', 'SWIGGY', '2022-05-16 17:57:24', '', '246.95', 1, '449.00', '-202.05', '0.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(99, 'Ghost Kitchen', '135780830960', 'Panda Momos', 'MFB666', 'SWIGGY', '2022-05-16 18:24:33', '', '255.7', 2, '378.00', '-132.30', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(100, 'Ghost Kitchen', '135784115995', 'Khichdi Paradise', 'MFB667', 'SWIGGY', '2022-05-16 19:19:40', '', '199', 1, '189.00', '0.00', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(101, 'Ghost Kitchen', '4044277991', 'Khichdi Paradise', 'MFB668', 'Dharmendra Banthia', '2022-05-16 19:51:05', '', '123.8', 2, '327.00', '-213.20', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(102, 'Ghost Kitchen', '135791654394', 'Khichdi Paradise', 'MFB669', 'SWIGGY', '2022-05-16 21:25:06', '', '119.62', 1, '189.00', '-79.38', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(103, 'Ghost Kitchen', '135795415621', 'Panda Momos', 'MFB670', 'SWIGGY', '2022-05-16 22:27:13', '', '268.7', 2, '398.00', '-139.30', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(104, 'Ghost Kitchen', '4054844127', 'Panda Momos', 'MFB671', 'Sajith', '2022-05-16 22:35:30', '', '194.8', 2, '448.00', '-263.20', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(105, 'Ghost Kitchen', '135845417034', 'Pind Da Paratha	', 'MFB672', 'SWIGGY', '2022-05-17 12:20:46', '', '282.16', 2, '378.00', '-105.84', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(106, 'Ghost Kitchen', '135845666622', 'Sanskari Biryani', 'MFB673', 'SWIGGY', '2022-05-17 12:24:47', '', '185.45', 1, '319.00', '-143.55', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(107, 'Ghost Kitchen', '135846636673', 'Badmaash Biryani', 'MFB674', 'SWIGGY', '2022-05-17 12:40:55', '', '197.45', 1, '359.00', '-161.55', '0.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(108, 'Ghost Kitchen', '135849256237', 'Panda Momos', 'MFB675', 'SWIGGY', '2022-05-17 13:24:47', '', '179.4', 2, '308.00', '-138.60', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(109, 'Ghost Kitchen', '4053785297', 'Panda Momos', 'MFB676', 'Tlaxlinochtl', '2022-05-17 13:30:24', '', '194.8', 2, '448.00', '-263.20', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(110, 'Ghost Kitchen', '4054085289', 'Almighty Biryani', 'MFB677', 'Bhavana', '2022-05-17 13:47:35', '', '165.4', 1, '399.00', '-243.60', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(111, 'Ghost Kitchen', '4058661085', 'MomoGuy', 'MFB678', 'Diksha Vijayvergia', '2022-05-17 16:47:19', '', '96.42', 1, '149.00', '-62.58', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(112, 'Ghost Kitchen', '135863662071', 'Panda Momos', 'MFB679', 'SWIGGY', '2022-05-17 17:24:50', '', '440.4', 3, '707.00', '-276.60', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(113, 'Ghost Kitchen', '135863691726', 'Panda Momos', 'MFB680', 'SWIGGY', '2022-05-17 17:24:54', '', '318', 2, '457.00', '-149.00', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(114, 'Ghost Kitchen', '135863965504', 'MomoGuy', 'MFB681', 'SWIGGY', '2022-05-17 17:30:31', '', '223.4', 2, '388.00', '-174.60', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(115, 'Ghost Kitchen', '4045269014', 'Seedha Sada Samosa	', 'MFB682', 'Sujay Raj', '2022-05-17 18:48:04', '', '210.9', 2, '407.00', '-206.10', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(116, 'Ghost Kitchen', '4055503361', 'Panda Momos', 'MFB683', 'Abhisekh Ghosh', '2022-05-17 19:02:22', '', '182.8', 2, '428.00', '-255.20', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(117, 'Ghost Kitchen', '135872197018', 'MBA In Khichdi', 'MFB684', 'SWIGGY', '2022-05-17 19:48:42', '', '195.9', 2, '338.00', '-152.10', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(118, 'Ghost Kitchen', '4058930933', 'Panda Momos', 'MFB685', 'Bhargav Kothadia', '2022-05-17 20:15:40', '', '278.2', 3, '587.00', '-318.80', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(119, 'Ghost Kitchen', '4053818579', 'MomoGuy', 'MFB686', 'Pallavi Tandon', '2022-05-17 20:31:08', '', '182.2', 3, '437.01', '-264.81', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(120, 'Ghost Kitchen', '135876887568', 'Wack Waffle Pizza', 'MFB687', 'SWIGGY', '2022-05-17 21:05:11', '', '301.2', 1, '448.00', '-156.80', '10.00', NULL, NULL, NULL, NULL, '0', '2022-05-23 14:10:54', '2022-05-23 14:10:54'),
(121, 'test entity', '123456', 'My Brand', '123490', 'saneep', '2022-05-23 14:19:41', 'saneep', '1200', 5, '1400.00', '100.00', '10.00', '126.00', '126.00', '9', '9', '252', '2022-05-23 08:49:41', '2022-05-23 08:49:41'),
(122, 'new entity', '1653315745', 'My Brand', '123491', 'Jeet', '2022-05-23 14:22:25', 'Jeet', '1200', 5, '1400.00', '100.00', '10.00', '126.00', '126.00', '9', '9', '252', '2022-05-23 08:52:25', '2022-05-23 08:52:25'),
(123, 'new entity 1', '1653316582', 'My Brand 2', '123493', 'Manish', '2022-05-23 14:36:22', 'Manish', '1500', 5, '1600.00', '50.00', '10.00', '144.00', '144.00', '9', '9', '288', '2022-05-23 09:06:22', '2022-05-23 09:06:22'),
(124, 'new entity 2', '1653316650', 'My Brand 3', '123494', 'Manish', '2022-05-23 14:37:30', 'Manish', '1600', 5, '1600.00', '50.00', '10.00', '144.00', '144.00', '9', '9', '288', '2022-05-23 09:07:30', '2022-05-23 09:07:30'),
(125, 'new entity 222', '1653328570', 'My Brand 32', '1234942', 'Manish2', '2022-05-23 17:56:10', 'Manish2', '1600', 5, '1600.00', '50.00', '10.00', '144.00', '144.00', '9', '9', '288', '2022-05-23 12:26:12', '2022-05-23 12:26:12'),
(126, 'new entity 222', '1653330985', 'My Brand 32', '1234942', 'Manish2', '2022-05-23 18:36:25', 'Manish2', '1600', 5, '1600.00', '50.00', '10.00', '144.00', '144.00', '9', '9', '288', '2022-05-23 13:06:25', '2022-05-23 13:06:25'),
(127, 'new entity 222', '1653395346', 'My Brand 32', '1234942', 'Manish2', '2022-05-24 12:29:06', 'Manish2', '1600', 5, '1600.00', '50.00', '10.00', '144.00', '144.00', '9', '9', '288', '2022-05-24 06:59:06', '2022-05-24 06:59:06');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  `bill_no` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `packaging` varchar(100) NOT NULL,
  `discount` float(11,2) NOT NULL,
  `tax` float(11,2) NOT NULL,
  `total_sales` int(11) NOT NULL,
  `no_of_skus` int(11) NOT NULL,
  `time_taken` varchar(100) NOT NULL,
  `time_sku` varchar(50) NOT NULL,
  `no_of_kots` int(11) DEFAULT NULL,
  `total_sales_skume_taken` int(11) DEFAULT NULL,
  `item` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `brand`, `date`, `bill_no`, `amount`, `packaging`, `discount`, `tax`, `total_sales`, `no_of_skus`, `time_taken`, `time_sku`, `no_of_kots`, `total_sales_skume_taken`, `item`) VALUES
(1, 'Panda Momos', '2022-05-11 17:30:18', 'MFB570', '169', '10.00', -143.10, 0.00, 322, 2, '7.63', '3.815', 0, 0, 'Chicken Momos (6 Pcs)'),
(2, 'Panda Momos', '2022-05-11 17:30:18', 'MFB570', '149', '10.00', -143.10, 0.00, 302, 2, '7.77', '3.885', 0, 0, 'Mix Veg Momos (6 Pc)'),
(3, 'MomoGuy', '2022-05-11 18:26:55', 'MFB571', '169', '10.00', -169.00, 0.00, 348, 1, '6.15', '6.15', 0, 0, 'Chicken Momos - 6 Pcs'),
(4, 'Sanskari Biryani', '2022-05-11 18:42:22', 'MFB573', '10', '10.00', 0.00, 0.00, 20, 1, '6.83', '6.83', 0, 0, 'Cutlery'),
(5, 'Sanskari Biryani', '2022-05-11 18:41:37', 'MFB572', '10', '10.00', 0.00, 0.00, 20, 1, '8.65', '8.65', 0, 0, 'Cutlery'),
(6, 'Sanskari Biryani', '2022-05-11 18:43:51', 'MFB574', '10', '10.00', 0.00, 0.00, 20, 1, '9.18', '9.18', 0, 0, 'Cutlery'),
(7, 'Sanskari Biryani', '2022-05-11 18:44:45', 'MFB575', '10', '10.00', 0.00, 0.00, 20, 1, '8.37', '8.37', 0, 0, 'Cutlery'),
(8, 'Sanskari Biryani', '2022-05-11 18:45:21', 'MFB576', '10', '10.00', 0.00, 0.00, 20, 1, '7.87', '7.87', 0, 0, 'Cutlery'),
(9, 'Sanskari Biryani', '2022-05-11 18:46:52', 'MFB577', '10', '10.00', 0.00, 0.00, 20, 1, '6.47', '6.47', 0, 0, 'Cutlery'),
(10, 'Pind Da Paratha	', '2022-05-11 18:53:38', 'MFB578', '299', '0.00', -173.70, 0.00, 473, 1, '0.63', '0.63', 0, 0, 'Chilli Chicken Paratha'),
(11, 'Panda Momos', '2022-05-11 19:07:23', 'MFB579', '169', '10.00', -152.10, 0.00, 331, 1, '411.55', '411.55', 0, 0, 'Chicken Momos (6 Pcs)'),
(12, 'MomoGuy', '2022-05-11 19:12:41', 'MFB580', '219', '0.00', -260.80, 0.00, 480, 2, '416.23', '208.115', 0, 0, 'Chicken Cheese Momos - 6 Pcs'),
(13, 'MomoGuy', '2022-05-11 19:12:41', 'MFB580', '219', '0.00', -260.80, 0.00, 480, 2, '309.33', '154.665', 0, 0, 'Butter Chicken Momos - 6 Pcs'),
(14, 'Panda Momos', '2022-05-11 19:31:09', 'MFB581', '349', '10.00', -246.60, 0.00, 606, 2, '327.62', '163.81', 0, 0, 'Non Veg Burger Momo Combo'),
(15, 'Panda Momos', '2022-05-11 19:31:09', 'MFB581', '199', '10.00', -246.60, 0.00, 456, 2, '327.15', '163.575', 0, 0, 'Peri Peri Chicken Momo Burger'),
(16, 'Panda Momos', '2022-05-11 19:55:53', 'MFB582', '209', '0.00', -294.80, 0.00, 504, 3, '350.02', '116.67333333333', 0, 0, 'Pan Fried Chicken Tikka Momos (6 Pcs)'),
(17, 'Panda Momos', '2022-05-11 19:55:53', 'MFB582', '199', '0.00', -294.80, 0.00, 494, 3, '349.77', '116.59', 0, 0, 'Chicken Tikka Momos (6 Pcs)'),
(18, 'Panda Momos', '2022-05-11 19:55:53', 'MFB582', '119', '0.00', -294.80, 0.00, 414, 3, '348.33', '116.11', 0, 0, 'Mango Milkshake (300 ml)'),
(19, 'Sanskari Biryani', '2022-05-11 20:15:28', 'MFB583', '10', '10.00', 0.00, 0.00, 20, 1, '367.68', '367.68', 0, 0, 'Cutlery'),
(20, 'Sanskari Biryani', '2022-05-11 20:16:26', 'MFB584', '10', '10.00', 0.00, 0.00, 20, 1, '368.5', '368.5', 0, 0, 'Cutlery'),
(21, 'Sanskari Biryani', '2022-05-11 20:17:07', 'MFB585', '10', '10.00', 0.00, 0.00, 20, 1, '369.08', '369.08', 0, 0, 'Cutlery'),
(22, 'MomoGuy', '2022-05-11 20:17:26', 'MFB586', '349', '10.00', 0.00, 0.00, 359, 1, '369.25', '369.25', 0, 0, 'Non Veg Burger Momo Combo'),
(23, 'Sanskari Biryani', '2022-05-11 20:17:53', 'MFB587', '10', '10.00', 0.00, 0.00, 20, 1, '369.53', '369.53', 0, 0, 'Cutlery'),
(24, 'Badmaash Biryani', '2022-05-11 20:59:24', 'MFB588', '319', '0.00', -111.65, 0.00, 431, 1, '410.93', '410.93', 0, 0, 'Butter Chicken Biryani'),
(25, 'Badmaash Biryani', '2022-05-11 21:03:56', 'MFB589', '319', '0.00', 0.00, 0.00, 319, 1, '415.32', '415.32', 0, 0, 'Butter Chicken Biryani'),
(26, 'Biriyani Hazir Ho', '2022-05-11 21:07:01', 'MFB590', '349', '10.00', -157.05, 0.00, 516, 1, '418.28', '418.28', 0, 0, 'Butter Chicken Biryani'),
(27, 'Badmaash Biryani', '2022-05-11 21:27:34', 'MFB591', '319', '0.00', -123.80, 0.00, 443, 1, '437.25', '437.25', 0, 0, 'Paneer Tikka Biryani'),
(28, 'Maa Ki Khichdi', '2022-05-11 21:55:03', 'MFB592', '199', '0.00', -274.80, 0.00, 474, 3, '464.58', '154.86', 0, 0, 'Milkshake - Ferrero Rocher Brownie'),
(29, 'Maa Ki Khichdi', '2022-05-11 21:55:03', 'MFB592', '149', '0.00', -274.80, 0.00, 424, 3, '464.4', '154.8', 0, 0, 'Vanilla Kitkat Shake'),
(30, 'Maa Ki Khichdi', '2022-05-11 21:55:03', 'MFB592', '129', '0.00', -274.80, 0.00, 404, 3, '463.63', '154.54333333333', 0, 0, 'Strawberry Milkshake'),
(31, 'Maa Ki Khichdi', '2022-05-11 22:43:34', 'MFB593', '129', '10.00', -84.00, 0.00, 223, 2, '503.33', '251.665', 0, 0, 'Mango Milkshake'),
(32, 'Maa Ki Khichdi', '2022-05-11 22:43:34', 'MFB593', '129', '10.00', -84.00, 0.00, 223, 2, '503.23', '251.615', 0, 0, 'Choco Chips Brownie'),
(33, 'Pind Da Paratha	', '2022-05-12 11:33:34', 'MFB594', '239', '10.00', -84.00, 0.00, 333, 1, '167.03', '167.03', 0, 0, 'Achari Paneer Paratha'),
(34, 'Pind Da Paratha	', '2022-05-12 11:33:34', 'MFB594', '239', '10.00', -84.00, 0.00, 333, 1, '167.1', '167.1', 0, 0, 'Achari Paneer Paratha'),
(35, 'Almighty Biryani', '2022-05-12 12:13:28', 'MFB595', '499', '0.00', -283.60, 0.00, 783, 1, '127.35', '127.35', 0, 0, 'Mutton Dum Biryani Almight Special'),
(36, 'Panda Momos', '2022-05-12 12:31:23', 'MFB596', '209', '10.00', -84.00, 0.00, 303, 1, '109.53', '109.53', 0, 0, 'Assorted Premium Veg Momos'),
(37, 'Maa Ki Khichdi', '2022-05-12 12:40:11', 'MFB597', '129', '0.00', -142.14, 0.00, 271, 2, '100.85', '50.425', 0, 0, 'Lasooni Palak Khichdi (Curd, Papad, Pickle)'),
(38, 'Maa Ki Khichdi', '2022-05-12 12:40:11', 'MFB597', '89', '0.00', -142.14, 0.00, 231, 2, '100.97', '50.485', 0, 0, 'Masala Chaas'),
(39, 'Panda Momos', '2022-05-12 14:32:16', 'MFB598', '159', '0.00', -66.78, 0.00, 226, 1, '3.5', '3.5', 0, 0, 'Chicken Momo Burger'),
(40, 'Almighty Biryani', '2022-05-12 14:36:56', 'MFB599', '299', '0.00', -194.95, 0.00, 494, 1, '18.02', '18.02', 0, 0, 'Paneer Tikka (5 Pcs)'),
(41, 'MomoGuy', '2022-05-12 15:20:24', 'MFB600', '169', '10.00', -70.98, 0.00, 250, 1, '27.2', '27.2', 0, 0, 'Chicken Momos - 6 Pcs'),
(42, 'Khichdi Paradise', '2022-05-12 15:33:28', 'MFB601', '189', '10.00', -127.59, 0.00, 327, 2, '14.57', '7.285', 0, 0, 'Lasooni Palak Khichdi (Curd, Papad, Pickle)'),
(43, 'Khichdi Paradise', '2022-05-12 15:33:28', 'MFB601', '149', '10.00', -127.59, 0.00, 287, 2, '15.13', '7.565', 0, 0, 'Oreo Brownie'),
(44, 'MomoGuy', '2022-05-12 15:57:29', 'MFB603', '229', '0.00', -255.20, 0.00, 484, 2, '3.38', '1.69', 0, 0, 'Mushroom Momos - 6 Pcs'),
(45, 'Almighty Biryani', '2022-05-12 15:58:00', 'MFB604', '359', '10.00', -161.55, 0.00, 531, 1, '3.52', '3.52', 0, 0, 'Chicken Dum Biryani Almight Special'),
(46, 'MomoGuy', '2022-05-12 15:57:29', 'MFB603', '199', '0.00', -255.20, 0.00, 454, 2, '35.28', '17.64', 0, 0, 'Veg Makhani Momos - 6 Pcs'),
(47, 'MomoGuy', '2022-05-12 15:54:42', 'MFB602', '149', '0.00', -410.40, 0.00, 559, 4, '35.42', '8.855', 0, 0, 'Mix Veg Momos - 6 Pcs'),
(48, 'MomoGuy', '2022-05-12 15:54:42', 'MFB602', '239', '0.00', -410.40, 0.00, 649, 4, '35.55', '8.8875', 0, 0, 'Pan Fried Paneer Tikka Momos (6 Pc)'),
(49, 'MomoGuy', '2022-05-12 15:54:42', 'MFB602', '239', '0.00', -410.40, 0.00, 649, 4, '35.68', '8.92', 0, 0, 'Pan Fried Corn and Cheese Momos (6 Pc)'),
(50, 'MomoGuy', '2022-05-12 15:54:42', 'MFB602', '189', '0.00', -410.40, 0.00, 599, 4, '36.03', '9.0075', 0, 0, 'Veg Schezwan Momos - 6 Pcs'),
(51, 'Panda Momos', '2022-05-12 18:16:15', 'MFB605', '169', '10.00', -70.98, 0.00, 250, 1, '49.07', '49.07', 0, 0, 'Chicken Momos (6 Pcs)'),
(52, 'MomoGuy', '2022-05-12 21:26:34', 'MFB606', '229', '10.00', -353.70, 0.00, 593, 4, '608.85', '152.2125', 0, 0, 'Corn and Cheese Momos - 6 Pcs'),
(53, 'MomoGuy', '2022-05-12 21:26:34', 'MFB606', '189', '10.00', -353.70, 0.00, 553, 4, '608.3', '152.075', 0, 0, 'Veg Schezwan Momos - 6 Pcs');

-- --------------------------------------------------------

--
-- Table structure for table `screen`
--

CREATE TABLE `screen` (
  `id` int(11) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `bill_no` varchar(20) NOT NULL,
  `ofrom` varchar(255) NOT NULL,
  `items` varchar(255) NOT NULL,
  `start_time` time NOT NULL,
  `preperation_time` time NOT NULL,
  `completed_time` time NOT NULL,
  `duration` float(11,2) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `screen`
--

INSERT INTO `screen` (`id`, `brand`, `bill_no`, `ofrom`, `items`, `start_time`, `preperation_time`, `completed_time`, `duration`, `status`) VALUES
(1, 'Panda Momos', 'MFB570', 'SWIGGY', 'Chicken Momos (6 Pcs)', '18:40:14', '18:47:46', '18:47:52', 7.63, 'close'),
(2, 'Panda Momos', 'MFB570', 'SWIGGY', 'Mix Veg Momos (6 Pc)', '18:40:14', '18:47:54', '18:48:00', 7.77, 'close'),
(3, 'MomoGuy', 'MFB571', 'SWIGGY', 'Chicken Momos - 6 Pcs', '18:42:01', '18:48:03', '18:48:10', 6.15, 'close'),
(4, 'Sanskari Biryani', 'MFB573', 'SWIGGY', 'Cutlery', '18:42:22', '18:49:05', '18:49:12', 6.83, 'close'),
(5, 'Sanskari Biryani', 'MFB572', 'SWIGGY', 'Cutlery', '18:43:52', '18:52:27', '18:52:31', 8.65, 'close'),
(6, 'Sanskari Biryani', 'MFB574', 'SWIGGY', 'Cutlery', '18:43:52', '18:52:57', '18:53:03', 9.18, 'close'),
(7, 'Sanskari Biryani', 'MFB575', 'SWIGGY', 'Cutlery', '18:44:46', '18:53:03', '18:53:08', 8.37, 'close'),
(8, 'Sanskari Biryani', 'MFB576', 'SWIGGY', 'Cutlery', '18:45:22', '18:53:08', '18:53:14', 7.87, 'close'),
(9, 'Sanskari Biryani', 'MFB577', 'SWIGGY', 'Cutlery', '18:46:52', '18:53:15', '18:53:20', 6.47, 'close'),
(10, 'Pind Da Paratha	', 'MFB578', 'Jonas J Kamicheril', 'Chilli Chicken Paratha', '18:53:38', '18:54:08', '18:54:16', 0.63, 'close'),
(11, 'Panda Momos', 'MFB579', 'SWIGGY', 'Chicken Momos (6 Pcs)', '19:07:24', '12:15:03', '12:15:51', 411.55, 'close'),
(12, 'MomoGuy', 'MFB580', 'Ansel Sonal Lobo', 'Chicken Cheese Momos - 6 Pcs', '19:12:42', '12:15:44', '12:16:28', 416.23, 'close'),
(13, 'MomoGuy', 'MFB580', 'Ansel Sonal Lobo', 'Butter Chicken Momos - 6 Pcs', '19:12:42', '12:34:10', '14:03:22', 309.33, 'close'),
(14, 'Panda Momos', 'MFB581', 'SWIGGY', 'Non Veg Burger Momo Combo', '19:31:09', '14:02:47', '14:03:32', 327.62, 'close'),
(15, 'Panda Momos', 'MFB581', 'SWIGGY', 'Peri Peri Chicken Momo Burger', '19:31:09', '14:03:14', '14:04:00', 327.15, 'close'),
(16, 'Panda Momos', 'MFB582', 'Yeshashwini Acharya', 'Pan Fried Chicken Tikka Momos (6 Pcs)', '19:55:53', '14:05:06', '14:05:52', 350.02, 'close'),
(17, 'Panda Momos', 'MFB582', 'Yeshashwini Acharya', 'Chicken Tikka Momos (6 Pcs)', '19:55:53', '14:05:19', '14:06:07', 349.77, 'close'),
(18, 'Panda Momos', 'MFB582', 'Yeshashwini Acharya', 'Mango Milkshake (300 ml)', '19:55:53', '14:06:46', '14:07:33', 348.33, 'close'),
(19, 'Sanskari Biryani', 'MFB583', 'SWIGGY', 'Cutlery', '20:15:28', '14:06:58', '14:07:47', 367.68, 'close'),
(20, 'Sanskari Biryani', 'MFB584', 'SWIGGY', 'Cutlery', '20:16:26', '14:07:12', '14:07:56', 368.50, 'close'),
(21, 'Sanskari Biryani', 'MFB585', 'SWIGGY', 'Cutlery', '20:17:07', '14:07:20', '14:08:02', 369.08, 'close'),
(22, 'MomoGuy', 'MFB586', 'SWIGGY', 'Non Veg Burger Momo Combo', '20:17:27', '14:07:27', '14:08:12', 369.25, 'close'),
(23, 'Sanskari Biryani', 'MFB587', 'SWIGGY', 'Cutlery', '20:17:53', '14:07:35', '14:08:21', 369.53, 'close'),
(24, 'Badmaash Biryani', 'MFB588', 'SWIGGY', 'Butter Chicken Biryani', '20:59:25', '14:07:45', '14:08:29', 410.93, 'close'),
(25, 'Badmaash Biryani', 'MFB589', 'SWIGGY', 'Butter Chicken Biryani', '21:03:56', '14:07:53', '14:08:37', 415.32, 'close'),
(26, 'Biriyani Hazir Ho', 'MFB590', 'SWIGGY', 'Butter Chicken Biryani', '21:07:02', '14:08:01', '14:08:45', 418.28, 'close'),
(27, 'Badmaash Biryani', 'MFB591', 'SWIGGY', 'Paneer Tikka Biryani', '21:27:34', '14:09:35', '14:10:19', 437.25, 'close'),
(28, 'Maa Ki Khichdi', 'MFB592', 'Vaibhav', 'Milkshake - Ferrero Rocher Brownie', '21:55:03', '14:09:44', '14:10:28', 464.58, 'close'),
(29, 'Maa Ki Khichdi', 'MFB592', 'Vaibhav', 'Vanilla Kitkat Shake', '21:55:03', '14:09:55', '14:10:39', 464.40, 'close'),
(30, 'Maa Ki Khichdi', 'MFB592', 'Vaibhav', 'Strawberry Milkshake', '21:55:03', '14:10:43', '14:11:25', 463.63, 'close'),
(31, 'Maa Ki Khichdi', 'MFB593', 'SWIGGY', 'Mango Milkshake', '22:43:35', '14:19:33', '14:20:15', 503.33, 'close'),
(32, 'Maa Ki Khichdi', 'MFB593', 'SWIGGY', 'Choco Chips Brownie', '22:43:35', '14:19:39', '14:20:21', 503.23, 'close'),
(33, 'Pind Da Paratha	', 'MFB594', 'SWIGGY', 'Achari Paneer Paratha', '11:33:34', '14:19:47', '14:20:36', 167.03, 'close'),
(34, 'Pind Da Paratha	', 'MFB594', 'SWIGGY', 'Achari Paneer Paratha', '11:33:34', '14:19:47', '14:20:40', 167.10, 'close'),
(35, 'Almighty Biryani', 'MFB595', 'Jayakar', 'Mutton Dum Biryani Almight Special', '12:13:29', '14:20:07', '14:20:50', 127.35, 'close'),
(36, 'Panda Momos', 'MFB596', 'SWIGGY', 'Assorted Premium Veg Momos', '12:31:24', '14:20:14', '14:20:56', 109.53, 'close'),
(37, 'Maa Ki Khichdi', 'MFB597', 'Shreyansh Patni', 'Lasooni Palak Khichdi (Curd, Papad, Pickle)', '12:40:12', '14:20:20', '14:21:03', 100.85, 'close'),
(38, 'Maa Ki Khichdi', 'MFB597', 'Shreyansh Patni', 'Masala Chaas', '12:40:12', '14:20:27', '14:21:10', 100.97, 'close'),
(39, 'Panda Momos', 'MFB598', 'Sumith', 'Chicken Momo Burger', '14:32:17', '14:35:16', '14:35:47', 3.50, 'close'),
(40, 'Almighty Biryani', 'MFB599', 'Keerthi Raju', 'Paneer Tikka (5 Pcs)', '14:36:57', '14:54:47', '14:54:58', 18.02, 'close'),
(41, 'MomoGuy', 'MFB600', 'SWIGGY', 'Chicken Momos - 6 Pcs', '15:20:25', '15:47:34', '15:47:37', 27.20, 'close'),
(42, 'Khichdi Paradise', 'MFB601', 'SWIGGY', 'Lasooni Palak Khichdi (Curd, Papad, Pickle)', '15:33:29', '15:48:01', '15:48:03', 14.57, 'close'),
(43, 'Khichdi Paradise', 'MFB601', 'SWIGGY', 'Oreo Brownie', '15:33:29', '15:48:33', '15:48:37', 15.13, 'close'),
(44, 'MomoGuy', 'MFB603', 'Ramchander Raman', 'Mushroom Momos - 6 Pcs', '15:54:42', '15:58:05', '15:58:05', 3.38, 'close'),
(45, 'Almighty Biryani', 'MFB604', 'SWIGGY', 'Chicken Dum Biryani Almight Special', '15:54:42', '15:58:12', '15:58:13', 3.52, 'close'),
(46, 'MomoGuy', 'MFB603', 'Ramchander Raman', 'Veg Makhani Momos - 6 Pcs', '15:54:42', '15:59:00', '16:29:59', 35.28, 'close'),
(47, 'MomoGuy', 'MFB602', 'Kowshik Sai', 'Mix Veg Momos - 6 Pcs', '15:54:42', '15:58:41', '16:30:07', 35.42, 'close'),
(48, 'MomoGuy', 'MFB602', 'Kowshik Sai', 'Pan Fried Paneer Tikka Momos (6 Pc)', '15:54:42', '16:30:09', '16:30:15', 35.55, 'close'),
(49, 'MomoGuy', 'MFB602', 'Kowshik Sai', 'Pan Fried Corn and Cheese Momos (6 Pc)', '15:54:42', '16:30:16', '16:30:23', 35.68, 'close'),
(50, 'MomoGuy', 'MFB602', 'Kowshik Sai', 'Veg Schezwan Momos - 6 Pcs', '15:54:42', '16:30:38', '16:30:44', 36.03, 'close'),
(51, 'Panda Momos', 'MFB605', 'SWIGGY', 'Chicken Momos (6 Pcs)', '18:16:16', '17:27:04', '17:27:12', 49.07, 'close'),
(52, 'MomoGuy', 'MFB606', 'SWIGGY', 'Corn and Cheese Momos - 6 Pcs', '21:26:35', '11:17:34', '11:17:44', 608.85, 'close'),
(53, 'MomoGuy', 'MFB606', 'SWIGGY', 'Veg Schezwan Momos - 6 Pcs', '21:26:35', '11:18:06', '11:18:17', 608.30, 'close');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'sandeep', 'sandeep@gmail.com', NULL, '$2y$10$ekJI3W1bikAXwr9ZwTa96uDOBLYpnebZ27o.U.wmGZTJ/tMmhxWFa', NULL, '2022-05-23 10:23:59', '2022-05-23 10:23:59'),
(2, 'Sandip', 'sandeep12@gmail.com', NULL, '$2y$10$jNAezBh7z/xwksziTJPkRuezeIqa6f5x.CUrx2awsxyK13Gsc7FFe', NULL, '2022-05-23 12:12:53', '2022-05-23 12:12:53'),
(3, 'Sandip', 'sandip@gmail.com', NULL, '$2y$10$1Of39dX1rRi7HdKD9BL2mev0ET3Eu22N76SAEyfM6lPayFXYpA0ty', NULL, '2022-05-23 12:20:10', '2022-05-23 12:20:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reciepts`
--
ALTER TABLE `reciepts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `screen`
--
ALTER TABLE `screen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `reciepts`
--
ALTER TABLE `reciepts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `screen`
--
ALTER TABLE `screen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
