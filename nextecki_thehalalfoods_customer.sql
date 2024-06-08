-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 08, 2024 at 10:03 PM
-- Server version: 10.5.24-MariaDB-cll-lve
-- PHP Version: 8.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nextecki_thehalalfoods_customer`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
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
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'customer02@foodie.com', 'customer02@foodie.com', NULL, '$2y$10$m9IJRm.zOdDRI6PQYRIXxe2CFRBpmKXkLE6zqe6BQ8A49VP6pkZfa', 'Sw8t0xMbL7vAl8npqFAwFtt4ccvZLLF3pKtPExvl9P6JBIIbV1MJ3rwpj0sX', '2022-04-21 01:57:26', '2022-04-21 01:57:26'),
(2, 'customer03@foodie.com', 'customer03@foodie.com', NULL, '$2y$10$eEV8ku1h.1U4F.LQQFwCyOWptmOwgdg1SkZ8pZYrnyWXzp1yT4jwe', 'qwyNxqX7kgHoDQaYZaG5EAzqGwoXGrrozx2YeZALJUbHy09mWka77xeWCBzG', '2022-04-26 07:17:50', '2022-04-26 07:17:50'),
(3, 'deepesh@thenexteck.com', 'deepesh@thenexteck.com', NULL, '$2y$10$c3Fhz5anl94ra7Vn3Q0gQezApcmokU7bOTN8ikZjKKT3Y2rbSezdC', 'FxbGaz15F7zC3VXhc3LS0CzLNMIxjmZ8JMnEdSvGBJwKouDcruCQn1U4W6Af', '2024-04-10 04:37:00', '2024-04-10 04:37:00'),
(4, 'rafmoo@live.co.uk', 'rafmoo@live.co.uk', NULL, '$2y$10$.c0/lwtPpjabFTzIQuS3i.IfPMxfhd1HYALe17tHrHrLnA4UGmnz.', '9m0HMTWrLlfCmGQASSRFI9fnVdHmCR8tlyPQ2sB1f8vuEfBQFKl0t8AtHcuy', '2024-04-23 20:45:13', '2024-04-23 20:45:13'),
(5, 'rafmoo123@gmail.com', 'rafmoo123@gmail.com', NULL, '$2y$10$B8USDEkkB6g2jvdmFKqrsuUrJgiY9fukGnIYhu/vHx69wz0qj9v62', '0pdamuJUuz55U6Q6fJGTT58knmtmefS4294f9eVgR589b7kbJEJm1p5dHHIe', '2024-05-25 15:01:55', '2024-05-25 15:01:55');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_users`
--

CREATE TABLE `vendor_users` (
  `id` int(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `vendor_users`
--

INSERT INTO `vendor_users` (`id`, `user_id`, `uuid`, `email`) VALUES
(1, '1', 'pi6nJpYI86fRCgfFdkhtluFx5mf1', 'customer02@foodie.com'),
(2, '2', 'May2lqVBE5h4ybPHyNPbxKbORfr1', 'customer03@foodie.com'),
(3, '3', 'O4Aqzg6A2aTnT2MACZSkQRLX5AH3', 'deepesh@thenexteck.com'),
(4, '4', 'BZ3ClHDwc2hrTxzQvRRrTqS48eR2', 'rafmoo@live.co.uk'),
(5, '5', 'zkY24oQt8iQY6bdYw8WrjNGXvX12', 'rafmoo123@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_users`
--
ALTER TABLE `vendor_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vendor_users`
--
ALTER TABLE `vendor_users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
