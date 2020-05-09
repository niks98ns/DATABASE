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
-- Database: `MULTIPLE_AUTH`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminns`
--

CREATE TABLE `adminns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `adminns`
--

INSERT INTO `adminns` (`id`, `first_name`, `last_name`, `email`, `password`, `image`, `created_at`, `updated_at`) VALUES
(1, 'nikhil', 'sharma', 'nikhil@gmail.com', 'nikhil', 'Admin/6NKuHXTcT7NUMBeYnD9HkI1mH3UPfWPJSvGajdaK.jpeg', '2020-04-13 06:24:28', '2020-04-13 06:29:07');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_super` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `is_super`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$W7eDSNzthEhpoOF4humrRu5ffCZ7hg3fHO0DAHo4nloXD91vTRAXi', 0, NULL, '2020-04-16 00:21:56', '2020-04-16 00:21:56');

-- --------------------------------------------------------

--
-- Table structure for table `countaries`
--

CREATE TABLE `countaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countaries`
--

INSERT INTO `countaries` (`id`, `name`, `short_code`, `created_at`, `updated_at`) VALUES
(1, 'USA', 'USA', NULL, NULL),
(2, 'UAE', 'UAE', NULL, NULL),
(3, 'India', 'IND', NULL, NULL),
(4, 'Australia', 'AUS', NULL, NULL),
(5, 'New zeeland', 'NZL', NULL, NULL),
(6, 'Japan', 'JPN', NULL, NULL);

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
(9, '2020_04_13_032212_create_admins_table', 2),
(10, '2020_04_13_032434_create_students_table', 2),
(11, '2020_04_13_032551_create_teachers_table', 2),
(12, '2020_04_13_084542_create_adminns_table', 3),
(13, '2020_04_13_090251_create_studentts_table', 3),
(14, '2020_04_13_090322_create_teacherrs_table', 3),
(15, '2020_04_13_091522_create_countaries_table', 3),
(16, '2020_04_13_091549_create_states_table', 3),
(17, '2020_04_14_060303_create_student_classes_table', 4),
(18, '2020_04_14_060400_create_student_works_table', 4),
(19, '2020_04_14_115459_create_teacher_student_classes_table', 5),
(20, '2020_04_14_150219_add_student_class_id_to_students', 6),
(22, '2020_04_14_150444_add_student_class_id_to_studentts', 7),
(23, '2020_04_15_054549_add_student_class_id_to_teacherrs', 8),
(26, '2020_04_15_094855_add_work_id_to_teacher_student_classes', 9),
(27, '2020_04_15_121327_add_student_class_id_to_student_works', 10),
(28, '2020_04_16_085049_add_studentt_id_to_student_works', 11);

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
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `short_code`, `created_at`, `updated_at`) VALUES
(1, 'Haryana', 'HAR', NULL, NULL),
(2, 'Assam', 'ASM', NULL, NULL),
(3, 'GOA', 'GOA', NULL, NULL),
(4, 'Himachal Pradesh', 'HP', NULL, NULL),
(5, 'Jammu & Kashmir', 'JK', NULL, NULL),
(6, 'Maharashtra', 'MHS', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_editor` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `password`, `is_editor`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nikhil Sharma', 'nikhil@gmail.com', '$2y$10$DHXQeBfXmBSryV9XQNU4WuYj0Q2NyaOzfCeoBXedXxKQIEjYKgPMW', 0, NULL, '2020-04-16 00:27:54', '2020-04-16 00:27:54');

-- --------------------------------------------------------

--
-- Table structure for table `studentts`
--

CREATE TABLE `studentts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aadhar_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doa` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countary_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student_class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `studentts`
--

INSERT INTO `studentts` (`id`, `first_name`, `last_name`, `email`, `password`, `father_name`, `mother_name`, `aadhar_id`, `age`, `dob`, `doa`, `image`, `gender`, `address`, `city`, `state_id`, `countary_id`, `created_at`, `updated_at`, `student_class_id`) VALUES
(1, 'ajay', 'sharma', 'ajay@gmai.com', 'ajay', 'parvesh', 'maya', '234567', '21', '1998-11-12', '1998-11-12', 'Student/3bc5500MAU6uwGSTtltUOtdCiOuAx58N81RLSFvk.jpeg', 'male', 'jahu', 'hmpr', '4', '3', '2020-04-14 23:11:52', '2020-04-14 23:11:52', 1),
(2, 'raman', 'sharma', 'raman@gmail.com', 'erty', 'karan', 'sita', '23456ui', '21', '1998-11-12', '1998-11-12', 'Student/z2s0b6IvFvWovtkThgNtrENsyNp849JmYWLhnipY.jpeg', 'male', 'fgh', 'xyz', '1', '1', '2020-04-15 02:12:14', '2020-04-15 02:12:14', 3),
(3, 'rohit', 'sharma', 'rohit@gmail.com', 'rohit', 'rajinder', 'santosh', '1234567890', '25', '1998-11-12', '1998-11-12', 'Student/ME9CTIbm3W4kCXUh1Yc6AFvCmeciPBqn5CHd9Snf.jpeg', 'male', 'jahu', 'hmpr', '1', '1', '2020-04-16 03:04:09', '2020-04-16 03:04:09', 2);

-- --------------------------------------------------------

--
-- Table structure for table `student_classes`
--

CREATE TABLE `student_classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_classes`
--

INSERT INTO `student_classes` (`id`, `class`, `section`, `created_at`, `updated_at`) VALUES
(1, 'First', 'a', '2020-04-15 07:38:31', '2020-04-15 07:38:31'),
(2, 'Second', 'b', '2020-04-15 07:38:39', '2020-04-15 07:38:39'),
(3, 'Third', 'c', '2020-04-15 07:38:47', '2020-04-15 07:38:47');

-- --------------------------------------------------------

--
-- Table structure for table `student_works`
--

CREATE TABLE `student_works` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student_class_id` int(11) NOT NULL,
  `studentt_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_works`
--

INSERT INTO `student_works` (`id`, `title`, `description`, `created_at`, `updated_at`, `student_class_id`, `studentt_id`) VALUES
(1, 'laravel', 'learn migrations', '2020-04-15 06:52:03', '2020-04-15 06:52:03', 1, 2),
(2, 'laravel', 'payment gateway', '2020-04-15 06:52:18', '2020-04-15 06:52:18', 2, 1),
(3, 'post one', 'feedback testing', '2020-04-15 06:52:30', '2020-04-15 06:52:30', 3, 2),
(4, 'relationships', 'learn about relationships', '2020-04-16 03:33:30', '2020-04-16 03:33:30', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `teacherrs`
--

CREATE TABLE `teacherrs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `experience` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aadhar_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student_class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacherrs`
--

INSERT INTO `teacherrs` (`id`, `first_name`, `last_name`, `email`, `password`, `address`, `age`, `experience`, `aadhar_id`, `dob`, `gender`, `created_at`, `updated_at`, `student_class_id`) VALUES
(1, 'som', 'sharma', 'somdutt@gmail.com', 'som', 'skt', '41', '4years', '1234567', '1998-11-12', 'male', '2020-04-15 07:35:51', '2020-04-15 07:35:51', 1),
(2, 'tarun', 'sharma', 'tarun@gmail.com', 'tarun', 'jahu', '51', '3years', '12345678', '1998-11-12', 'male', '2020-04-15 07:36:57', '2020-04-15 07:36:57', 2),
(3, 'harish', 'sharma', 'harish@gmail.com', 'harish', 'una', '23', '2years', '2345678', '1998-11-12', 'male', '2020-04-15 07:38:03', '2020-04-15 07:38:03', 3);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_editor` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `email`, `password`, `is_editor`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'som', 'somdutt@gmail.com', '$2y$10$rgsotLQimJnl.P9mz0ni..Rrx7QSRPSCrEx8NbFNE48KJt9FcSiRK', 0, NULL, '2020-04-16 00:29:01', '2020-04-16 00:29:01');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_student_classes`
--

CREATE TABLE `teacher_student_classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `student_class_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `work_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacher_student_classes`
--

INSERT INTO `teacher_student_classes` (`id`, `teacher_id`, `student_class_id`, `created_at`, `updated_at`, `work_id`) VALUES
(1, 1, 1, '2020-04-15 04:52:52', '2020-04-15 04:52:52', 1),
(2, 1, 3, '2020-04-15 04:59:51', '2020-04-15 04:59:51', 2);

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
(1, 'manu', 'manu@gmail.com', NULL, '$2y$10$Q9B68QS52.cXs7Qy4U6gvueRzLh6e4qN1u9rMZ9LQ15zNjldgeatO', NULL, '2020-04-15 23:45:42', '2020-04-15 23:45:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminns`
--
ALTER TABLE `adminns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `countaries`
--
ALTER TABLE `countaries`
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
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_email_unique` (`email`);

--
-- Indexes for table `studentts`
--
ALTER TABLE `studentts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_classes`
--
ALTER TABLE `student_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_works`
--
ALTER TABLE `student_works`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacherrs`
--
ALTER TABLE `teacherrs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `teachers_email_unique` (`email`);

--
-- Indexes for table `teacher_student_classes`
--
ALTER TABLE `teacher_student_classes`
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
-- AUTO_INCREMENT for table `adminns`
--
ALTER TABLE `adminns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `countaries`
--
ALTER TABLE `countaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `studentts`
--
ALTER TABLE `studentts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `student_classes`
--
ALTER TABLE `student_classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `student_works`
--
ALTER TABLE `student_works`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `teacherrs`
--
ALTER TABLE `teacherrs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `teacher_student_classes`
--
ALTER TABLE `teacher_student_classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
