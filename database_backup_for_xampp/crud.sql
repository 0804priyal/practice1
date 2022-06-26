-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2022 at 10:00 AM
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
-- Database: `crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `name`, `email`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Sandeep Kumar', 'sandpkumar186@gmail.com', 'HNo 81, Rajpuram Callonay, Chipayana Bugur', '2022-06-04 09:16:36', '2022-06-04 09:16:36'),
(2, 'Sandeep Kumar1111', 'sandpkumar186@gmail.com', 'HNo 81, Rajpuram Callonay, Chipayana Bugur', '2022-06-04 09:18:51', '2022-06-04 09:18:51'),
(3, 'Sandeep Kumar3334', 'sandpkumar186@gmail.com11', 'HNo 81, Rajpuram Callonay, Chipayana Bugur', '2022-06-04 09:22:56', '2022-06-04 09:22:56'),
(4, 'Sandeep Kumar1233', 'sandpkumar181126@gmail.com', 'HNo 81, Rajpuram Callonay, Chipayana Bugur', '2022-06-04 09:24:59', '2022-06-04 09:24:59'),
(5, 'Sandeep Kumar12', 'sandpkumar186@gmail.com', 'HNo 81, Rajpuram Callonay, Chipayana Bugur', '2022-06-04 09:27:14', '2022-06-04 09:27:14'),
(6, 'Sandeep Kumar44777', 'sandpkumar186@gmail.com', 'HNo 81, Rajpuram Callonay, Chipayana Bugur', '2022-06-04 11:12:57', '2022-06-04 11:12:57'),
(7, 'Sandeep Kumar', 'sandpkumar186@gmail.com', 'HNo 81, Rajpuram Callonay, Chipayana Bugur', '2022-06-04 11:14:28', '2022-06-04 11:14:28'),
(8, 'Sandeep Kumar222344', 'sandpkumar186@gmail.com', 'HNo 81, Rajpuram Callonay, Chipayana Bugur', '2022-06-04 12:31:22', '2022-06-04 12:31:22'),
(9, 'Sandeep Kumar222344', 'sandpkumar186@gmail.com', 'HNo 81, Rajpuram Callonay, Chipayana Bugur', '2022-06-04 12:39:02', '2022-06-04 12:39:02'),
(10, 'Sandeep Kumar222344', 'sandpkumar186@gmail.com', 'HNo 81, Rajpuram Callonay, Chipayana Bugur', '2022-06-04 12:39:43', '2022-06-04 12:39:43'),
(11, 'Sandeep Kumar', 'sandpkumar186@gmail.com', 'HNo 81, Rajpuram Callonay, Chipayana Bugur', '2022-06-04 12:42:44', '2022-06-04 12:42:44'),
(12, 'Sandeep Kumar', 'sandpkumar186@gmail.com', 'HNo 81, Rajpuram Callonay, Chipayana Bugur', '2022-06-04 12:42:51', '2022-06-04 12:42:51'),
(13, 'Sandeep Kumar', 'sandpkumar186@gmail.com', 'HNo 81, Rajpuram Callonay, Chipayana Bugur', '2022-06-04 12:43:14', '2022-06-04 12:43:14'),
(14, 'Sandeep Kumar', 'sandpkumar186@gmail.com', 'HNo 81, Rajpuram Callonay, Chipayana Bugur', '2022-06-04 12:44:12', '2022-06-04 12:44:12'),
(15, 'Sandeep Kumar', 'sandpkumar186@gmail.com', 'HNo 81, Rajpuram Callonay, Chipayana Bugur', '2022-06-04 12:44:41', '2022-06-04 12:44:41'),
(16, 'Sandeep Kumar', 'sandpkumar186@gmail.com', 'HNo 81, Rajpuram Callonay, Chipayana Bugur', '2022-06-04 12:47:00', '2022-06-04 12:47:00'),
(17, 'Sandeep Kumar', 'sandpkumar186@gmail.com', 'HNo 81, Rajpuram Callonay, Chipayana Bugur', '2022-06-04 12:49:03', '2022-06-04 12:49:03'),
(18, 'Sandeep Kumar', 'sandpkumar186@gmail.com', 'HNo 81, Rajpuram Callonay, Chipayana Bugur', '2022-06-04 12:50:12', '2022-06-04 12:50:12'),
(19, 'Sandeep Kumar', 'sandpkumar186@gmail.com', 'HNo 81, Rajpuram Callonay, Chipayana Bugur', '2022-06-04 12:50:18', '2022-06-04 12:50:18'),
(20, 'Sandeep Kumar', 'sandpkumar186@gmail.com', 'HNo 81, Rajpuram Callonay, Chipayana Bugur', '2022-06-04 12:51:00', '2022-06-04 12:51:00'),
(21, 'Sandeep Kumar321321132', 'sandpkumar186@gmail.com', 'HNo 81, Rajpuram Callonay, Chipayana Bugur', '2022-06-04 12:51:30', '2022-06-04 12:51:30'),
(22, 'Sandeep Kumar', 'sandpkumar186@gmail.com', 'HNo 81, Rajpuram Callonay, Chipayana Bugur', '2022-06-04 12:52:39', '2022-06-04 12:52:39'),
(23, 'Sandeep Kumar', 'sandpkumar186@gmail.com', 'HNo 81, Rajpuram Callonay, Chipayana Bugur', '2022-06-04 12:58:21', '2022-06-04 12:58:21'),
(24, 'Sandeep Kumar', 'sandpkumar186@gmail.com', 'HNo 81, Rajpuram Callonay, Chipayana Bugur', '2022-06-04 13:04:54', '2022-06-04 13:04:54'),
(25, 'Sandeep Kumar11', 'sandpkumar186@gmail.com', 'HNo 81, Rajpuram Callonay, Chipayana Bugur', '2022-06-05 04:16:03', '2022-06-05 04:16:03'),
(26, 'Sandeep Kumar', 'sandpkumar186@gmail.com', 'HNo 81, Rajpuram Callonay, Chipayana Bugur', '2022-06-05 04:16:31', '2022-06-05 04:16:31'),
(27, 'Sandeep Kumar11222', 'sandpkumar186@gmail.com', 'HNo 81, Rajpuram Callonay, Chipayana Bugur', '2022-06-05 04:17:10', '2022-06-05 04:44:07'),
(28, 'Sandeep Kumar', 'sandpkumar186@gmail.com', 'HNo 81, Rajpuram Callonay, Chipayana Bugur', '2022-06-05 04:45:22', '2022-06-05 04:45:22'),
(29, 'Sandeep Kumar', 'sandpkumar186@gmail.com', 'HNo 81, Rajpuram Callonay, Chipayana Bugur', '2022-06-05 04:48:48', '2022-06-05 04:48:48'),
(30, 'Sandeep Kumar111', 'sandpkumar186@gmail.com', 'HNo 81, Rajpuram Callonay, Chipayana Bugur', '2022-06-05 05:04:46', '2022-06-05 05:49:58');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `email`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Sandeep Kumar111', 'sandpkumar186@gmail.com', 'HNo 81, Rajpuram Callonay, Chipayana Bugur', '2022-06-04 08:20:39', '2022-06-04 08:20:48'),
(2, 'Sandeep Kumar1222222', 'sandpkumar186@gmail.com111', 'HNo 81, Rajpuram Callonay, Chipayana Bugur11', '2022-06-04 08:33:19', '2022-06-04 08:33:19'),
(3, 'Sandeep Kumar', 'sandpkumar186@gmail.com', 'HNo 81, Rajpuram Callonay, Chipayana Bugur', '2022-06-04 08:55:42', '2022-06-04 08:55:42'),
(4, 'Sandeep Kumar', 'sandpkumar186@gmail.com', 'HNo 81, Rajpuram Callonay, Chipayana Bugur', '2022-06-04 09:04:49', '2022-06-04 09:04:49'),
(5, 'Sandeep Kumar', 'sandpkumar186@gmail.com', 'HNo 81, Rajpuram Callonay, Chipayana Bugur', '2022-06-04 11:34:13', '2022-06-04 11:34:13'),
(6, 'Sandeep Kumar2112211252', 'sandpkumar186@gmail.com', 'HNo 81, Rajpuram Callonay, Chipayana Bugur', '2022-06-04 11:34:20', '2022-06-05 04:30:51');

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
(5, '2022_06_04_134256_create_companies_table', 1),
(7, '2022_06_04_140824_create_blogs_table', 2);

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
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
