-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2019 at 02:41 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

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
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_07_09_054957_create_users_table', 1),
(3, '2019_07_09_084048_create_shares_table', 2);

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
-- Table structure for table `shares`
--

CREATE TABLE `shares` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `share_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `share_price` int(11) NOT NULL,
  `share_qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shares`
--

INSERT INTO `shares` (`id`, `share_name`, `share_price`, `share_qty`, `created_at`, `updated_at`) VALUES
(3, '11', 1, 1, '2019-07-09 01:37:34', '2019-07-09 01:37:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, '1', '1', '1@email.com', '$2y$10$tvbQ0r0TqcdAkT1Rm6zMnubhkU/6tBRBeEVhtXdISaaFFbTH2xxDW', NULL, '2019-07-08 22:04:19', '2019-07-08 22:04:19'),
(4, '2', '2', '2@email.com', '$2y$10$EsiG.ybq5XYn2.9EsKyEauopIb9G0ncZTc1vt8lOhC0c5po58gn3O', NULL, '2019-07-08 22:32:40', '2019-07-08 22:32:40'),
(5, '3', '3', '3@email.com', '$2y$10$nF1hrlUVxMa21a1VIdltmeRm3Xc7GW6BzFPVQslVlo0coWotcgnQm', NULL, '2019-07-08 22:36:03', '2019-07-08 22:36:03'),
(6, '4', '4', '4@email.com', '$2y$10$3huwlJI5kykXd3zG1VbUo.puUvIU9M7NU2bvF1r9V2Kd/KcPEziQK', NULL, '2019-07-08 23:38:28', '2019-07-08 23:38:28'),
(7, 'a', 'a', 'a@email.com', '$2y$10$2FNfz.GuxSo6VCk3VpXG5eaq5V1RN10BTN9Ex.RJYKDVfYlz6hPTe', NULL, '2019-07-09 00:06:02', '2019-07-09 00:06:02'),
(8, 'est', '23we', 't@test.com', '$2y$10$kwHblQb7.LOTkM/QYk5tbO/iAaqtDaqWRi9eyl11NI8fIcv46v0Wa', NULL, '2019-07-09 00:09:13', '2019-07-09 00:09:13'),
(9, 'BB', 'b', 'b@email.com', '$2y$10$fzacX5ui52KnR8dEp/SiH.HBp4JNfB/8xUGJ6sxKzqhHzZbrvKM9K', NULL, '2019-08-12 16:31:36', '2019-08-12 16:31:36');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `shares`
--
ALTER TABLE `shares`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shares`
--
ALTER TABLE `shares`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
