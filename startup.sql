-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2021 at 12:35 AM
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
(1, 'yami sukehiro', 'programmer', 'sukehiro@gmail.com', 'testaja', 'ava.jpg', 'user', NULL, '2021-05-18 01:18:17', '2021-05-18 01:18:17'),
(2, 'asta', 'ui/ux', 'asta@gmail.com', 'testaja', 'ava1.jpg', 'user', NULL, '2021-05-18 01:20:22', '2021-05-18 01:20:22'),
(3, 'Coba', '', '', '', '', NULL, NULL, '2021-05-18 02:52:56', '2021-05-18 02:52:56'),
(4, 'Tes simpan dari service', 'anak anak', 'contoh@gmail.com', '$2a$04$YqvL2t8Qim.H68XM.NU8wOQsNRg4IG.ZfnBKjulG/0E8J361cewA2', '', 'user', NULL, '2021-05-18 03:26:01', '2021-05-18 03:26:01'),
(5, 'Name dari POSTMAN', 'ui/ux', 'email@gmail.com', '$2a$04$JuUjcZ5j4W1HccBslFrCv.atLuk5qv4QbQrJ2S/UgqJgJUkkPP2Rm', '', 'user', NULL, '2021-05-18 04:11:47', '2021-05-18 04:11:47'),
(8, 'Name dari POSTMAN ke2', 'ui/ux ke2', 'email2@gmail.com', '$2a$04$.hs/OW38N6fNB8PUbQX9hOx.pmjiX.yRpwipbik/2oi1PRJWMjkdS', '', 'user', NULL, '2021-05-18 04:36:57', '2021-05-18 04:36:57'),
(9, 'Name dari POSTMAN ke3', 'ui/ux ke3', 'email3@gmail.com', '$2a$04$XG4sG3.fJ7ZohZD.43qzZuI4fvV3vUpBxahChEO72FvFZUCg/6oEy', '', 'user', NULL, '2021-05-18 04:41:06', '2021-05-18 04:41:06'),
(10, 'Name dari POSTMAN ke4', 'ui/ux ke4', 'email4@gmail.com', '$2a$04$EBOrL9cRbAR4.0zD24E3l.CVxl.2a1DoJqTPFZoh3PTkBPiI/qdW.', '', 'user', NULL, '2021-05-18 04:53:56', '2021-05-18 04:53:56'),
(11, 'Name dari POSTMAN ke4', 'ui/ux ke4', 'email4@gmail.com', '$2a$04$sQ.K7ci7gWfx9v6Z16gYXOU6UbOrCh9Rleuy./x80SHxVGVUvhKkW', '', 'user', NULL, '2021-05-18 04:57:08', '2021-05-18 04:57:08'),
(12, 'Name dari POSTMAN ke4', 'ui/ux ke4', 'email4@gmail.com', '$2a$04$oz/gugM4f21CYClT2RZb0OI1zL9ASQEuDvDea3FF8ZWz4nWJRGs6W', '', 'user', NULL, '2021-05-18 05:01:54', '2021-05-18 05:01:54'),
(13, 'Name dari POSTMAN ke4', 'ui/ux ke4', 'email4@gmail.com', '$2a$04$resaBUNTyrvvBripsfdO1uUPRXCDsJsgx7PzFngXUV8k0TvdBs6JW', '', 'user', NULL, '2021-05-18 05:02:00', '2021-05-18 05:02:00'),
(14, 'Name dari POSTMAN ke4', 'ui/ux ke4', 'email4@gmail.com', '$2a$04$hd1A2xjL9GNNfor2Yp4agOOW8oc1RigbWFoF8lY2dTOLCeKv8.14u', '', 'user', NULL, '2021-05-18 05:02:25', '2021-05-18 05:02:25'),
(15, 'Name dari POSTMAN ke4', 'ui/ux ke4', 'email4@gmail.com', '$2a$04$xuoGqS2dbKMdV.mkU.R24.CuvFZrW5.x5okHv./Cs2ETDzU2Ya01m', '', 'user', NULL, '2021-05-18 05:03:01', '2021-05-18 05:03:01');

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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campaign_images`
--
ALTER TABLE `campaign_images`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
