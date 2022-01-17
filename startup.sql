-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2022 at 04:52 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `startup`
--

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `perks` text DEFAULT NULL,
  `backer_count` int(11) DEFAULT NULL,
  `goal_amount` int(11) DEFAULT NULL,
  `current_amount` int(11) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`id`, `user_id`, `name`, `short_description`, `description`, `perks`, `backer_count`, `goal_amount`, `current_amount`, `slug`, `created_at`, `updated_at`) VALUES
(1, 1, 'campaign satu', 'short description', 'longgggg description', 'perks satu, perks dua, perks tiga', 0, 100000000, 0, 'campaign satu', '2022-01-07 22:07:27', '2022-01-07 22:07:27'),
(2, 1, 'campaign dua', 'short aaaaaaaaaaaaaaa', 'long aaaaaaaaaaaaaaaaaaaaaaa', 'a , b , c', 0, 200000000, 0, 'campaign dua', '2022-01-07 22:09:32', '2022-01-07 22:09:32'),
(3, 2, 'campaign tiga', 'shorttttt nihhhh', 'long nihhhhhhhhhhhhhhhhhhhhh', '1, 2, 3, 4', 0, 300000000, 0, 'campaign tiga', '2022-01-07 22:09:32', '2022-01-07 22:09:32');

-- --------------------------------------------------------

--
-- Table structure for table `campaign_images`
--

CREATE TABLE `campaign_images` (
  `id` int(11) UNSIGNED NOT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `is_primary` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `campaign_images`
--

INSERT INTO `campaign_images` (`id`, `campaign_id`, `file_name`, `is_primary`, `created_at`, `updated_at`) VALUES
(1, 1, 'satu.jpg', 0, '2022-01-07 22:23:28', '2022-01-07 22:23:28'),
(2, 1, 'dua.jpg', 0, '2022-01-07 22:26:02', '2022-01-07 22:26:02'),
(3, 1, 'tiga.jpg', 1, '2022-01-07 22:26:41', '2022-01-07 22:26:41');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) UNSIGNED NOT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `avatar_file_name` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `occupation`, `email`, `password_hash`, `avatar_file_name`, `role`, `token`, `created_at`, `updated_at`) VALUES
(1, 'dodi', 'sasasas', 'dodi@gmail.com', '$2a$04$qbCzA/p9R2DRTsN99WGe/Oybv6fuZ16dIPjSE/sgJ5Of10yUHWlGe', NULL, 'user', NULL, '2022-01-04 22:42:59', '2022-01-06 23:43:13'),
(2, 'dodi3', 'testJwt', 'postman@gmail.com', '$2a$04$0TXxsFELY.FniKpuJY6EW.oWUZVDYF.qUgpLhrbXLL/zdd38PGZ1y', 'images/2-ASUS.png', 'user', NULL, '2022-01-05 21:53:35', '2022-01-06 23:49:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign_images`
--
ALTER TABLE `campaign_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `campaign_images`
--
ALTER TABLE `campaign_images`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
