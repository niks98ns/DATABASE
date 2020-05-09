-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 09, 2020 at 03:30 PM
-- Server version: 5.7.29
-- PHP Version: 7.3.15-3+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `foods`
--

CREATE TABLE `foods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `food_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `food_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `restaurant_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `foods`
--

INSERT INTO `foods` (`id`, `food_name`, `price`, `status`, `food_type`, `created_at`, `updated_at`, `restaurant_id`) VALUES
(1, 'Smosha', '30', 'Available', 'Veg', '2020-04-02 23:49:03', '2020-04-02 23:49:03', 1),
(2, 'Cold Drink', '30', 'Available', 'Veg', '2020-04-02 23:49:32', '2020-04-02 23:49:32', 2),
(3, 'Spring Roll', '50', 'Available', 'Veg', '2020-04-02 23:49:58', '2020-04-02 23:49:58', 2),
(4, 'Pizza', '250', 'Available', 'Non-Veg', '2020-04-02 23:50:17', '2020-04-02 23:50:17', 3),
(5, 'Momos', '50', 'Available', 'Non-Veg', '2020-04-02 23:53:25', '2020-04-02 23:53:25', 4),
(6, 'Momos', '30', 'Available', 'Veg', '2020-04-03 01:46:14', '2020-04-03 01:46:14', 1),
(7, 'Smosha', '30', 'Available', 'Veg', '2020-04-03 01:52:33', '2020-04-03 01:52:33', 1),
(8, 'Shakes', '30', 'Available', 'Veg', '2020-04-03 02:07:07', '2020-04-03 02:07:07', 1),
(9, 'Cold Drink', '30', 'Un-Available', 'Veg', '2020-04-03 06:40:24', '2020-04-03 06:40:24', 1),
(10, 'Smosha', '50', 'Available', 'Veg', '2020-04-05 07:41:58', '2020-04-05 07:41:58', 2);

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
(3, '2020_03_29_052551_create_foods_table', 2),
(4, '2020_03_29_053423_create_restaurants_table', 2),
(5, '2020_03_29_071242_add_restaurant_id_to_foods', 3),
(6, '2020_03_30_070704_add_restaurant_image_to_restaurants', 4),
(9, '2020_03_30_122748_create_user_orders_table', 5),
(12, '2020_04_01_053928_create_user_orders_table', 6),
(14, '2020_04_01_063357_add_user_id_to_user_orders', 7),
(16, '2020_04_01_064649_add_food_id_to_user_orders', 8),
(18, '2020_04_03_125305_create_restaurant_users', 9);

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
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `restaurant_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`id`, `name`, `email`, `password`, `address`, `user_id`, `created_at`, `updated_at`, `restaurant_image`) VALUES
(1, 'Vaishno Dhaba', 'niks98ns@gmail.com', '2345567', '5phase', '1', '2020-04-02 23:46:42', '2020-04-03 02:29:11', 'restaurants/2EsVeJvy8uuXGeX6ikYuajGchaNeIxVmRH2D7Ylt.jpeg'),
(2, 'Bhena Da Dhaba', 'manu@gmail.com', '1234567890', '5phase', '1', '2020-04-02 23:47:07', '2020-04-02 23:47:07', 'restaurants/INO7xkKIMWPcDzqHn8xvdQBm1aQO5h3QOXlKM4rU.jpeg'),
(3, 'Captain Saim\'s', 'rohit@gmail.com', '1234567890', '3phase', '1', '2020-04-02 23:47:30', '2020-04-02 23:47:30', 'restaurants/L0JoL3GENGy8eqHG3Kh9VOx04BQUxaFuXGQQlOCo.jpeg'),
(4, 'Punjabi Dhaba', 'xyz@gmail.com', '1234567890', '4phase', '1', '2020-04-02 23:47:56', '2020-04-02 23:47:56', 'restaurants/LXKf0xPocsnzfsnDYNdKxloM5KJBaeknKrHtktsP.jpeg'),
(5, 'Captain Saim\'s', 'dxgfhj@gmail.com', 'gfhjk', 'xcvbn', '1', '2020-04-14 11:54:42', '2020-04-14 11:54:42', 'restaurants/GK4uXMGGQ69dwu7W6LW5yqyXwuIugR2UfwUdNEv7.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_users`
--

CREATE TABLE `restaurant_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurant_users`
--

INSERT INTO `restaurant_users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'nikhil', 'nikhil@gmail.com', '$2y$10$lhpHGx43.Kd8kn/AVPImH.A4JU5mpeXKZ404wVpX1aajIGJSnRYQi', '2020-04-08 06:06:47', '2020-04-08 06:06:47'),
(2, 'manu', 'manu@gmail.com', '$2y$10$m03owKIGsIyoTMTnCd/0HuWa.e9UdylEQXDHvG/ZdMEeTRS56iNEK', '2020-04-08 06:07:07', '2020-04-08 06:07:07'),
(3, 'mom', 'mom@gmail.com', '$2y$10$fNtEeC9o1M4fGSuVuhp/wOcTN7rZlKW2bS8Cr8n81ofqLxqBP7hsW', '2020-04-08 06:56:16', '2020-04-08 06:56:16'),
(4, 'mk', 'mk@gmail.com', '$2y$10$DFl7T7md6p5WOv4iTqVq2.gnRJx4Dp5uSHoe9PGMvOGTaYL2qoUxK', '2020-04-08 07:35:40', '2020-04-08 07:35:40'),
(5, 'mk', 'mk@gmail.com', '$2y$10$mH/XGKqQMA7JR2FizcKMx.3gBIU5Hoe0.BV.HILWfARg152c3LlVW', '2020-04-08 07:35:51', '2020-04-08 07:35:51'),
(6, 'nk', 'nk@gmail.com', '$2y$10$cP.y11ZQ6Nm5PxB66/EL/e7D4dWTkaTVZXpG2mDbxN/9BL2vPRrTe', '2020-04-08 11:08:45', '2020-04-08 11:08:45'),
(7, 'demo', 'demo@gmail.com', '$2y$10$KPvsw7.SWtOGC.dFk3A3eO76KECt80Oa651qLRzPN9yl60FYDP9V6', '2020-04-09 01:24:05', '2020-04-09 01:24:05');

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
(1, 'Nikhil Sharma', 'nikhilsharma.hmsadroit@gmail.com', NULL, '$2y$10$wBH/VbKijhlxLLO7QKQjo.RWmQcRyNXr6otBHPvjgFQMkeidpDh1e', NULL, '2020-04-10 01:24:18', '2020-04-10 01:24:18'),
(2, 'manusharma', 'manu@gmail.com', NULL, '$2y$10$a/wq9qzU2ndhcs3ZKbHAWe5nTe21qQICvvWcTlo8UrT9BBIWRUIZu', NULL, '2020-04-10 01:25:38', '2020-04-10 01:25:38');

-- --------------------------------------------------------

--
-- Table structure for table `user_orders`
--

CREATE TABLE `user_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `food_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `food_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_orders`
--

INSERT INTO `user_orders` (`id`, `status`, `food_type`, `restaurant_id`, `created_at`, `updated_at`, `user_id`, `food_id`) VALUES
(1, 'Available', 'Veg', 1, '2020-04-02 23:51:40', '2020-04-02 23:51:40', 1, 3),
(2, 'Available', 'Veg', 3, '2020-04-02 23:52:28', '2020-04-02 23:52:28', 1, 4),
(3, 'Available', 'Veg', 3, '2020-04-02 23:53:56', '2020-04-02 23:53:56', 1, 5),
(4, 'Available', 'Veg', 3, '2020-04-02 23:59:34', '2020-04-02 23:59:34', 2, 2),
(5, 'Un-Available', 'Veg', 1, '2020-04-03 00:23:00', '2020-04-03 00:23:00', 2, 5),
(6, 'Available', 'Veg', 3, '2020-04-03 00:38:30', '2020-04-03 00:38:30', 2, 1),
(7, 'Available', 'Veg', 3, '2020-04-03 00:41:27', '2020-04-03 00:41:27', 2, 3),
(8, 'Available', 'Veg', 2, '2020-04-03 00:51:44', '2020-04-03 00:51:44', 2, 2),
(9, 'Available', 'Veg', 1, '2020-04-03 00:52:51', '2020-04-03 00:52:51', 2, 2),
(10, 'Un-Available', 'Non-Veg', 3, '2020-04-03 00:57:22', '2020-04-03 00:57:22', 2, 2),
(11, 'Available', 'Non-Veg', 1, '2020-04-03 01:03:41', '2020-04-03 01:03:41', 2, 3),
(12, 'Un-Available', 'Veg', 1, '2020-04-03 02:03:01', '2020-04-03 02:03:01', 2, 2),
(13, 'Available', 'Non-Veg', 1, '2020-04-03 02:29:27', '2020-04-03 02:29:27', 2, 2),
(14, 'Available', 'Veg', 1, '2020-04-03 02:46:52', '2020-04-03 02:46:52', 2, 2),
(15, 'Available', 'Non-Veg', 1, '2020-04-03 02:48:42', '2020-04-03 02:48:42', 2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_users`
--
ALTER TABLE `restaurant_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_orders`
--
ALTER TABLE `user_orders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `foods`
--
ALTER TABLE `foods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `restaurant_users`
--
ALTER TABLE `restaurant_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_orders`
--
ALTER TABLE `user_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
