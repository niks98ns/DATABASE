-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 09, 2020 at 03:32 PM
-- Server version: 5.7.29
-- PHP Version: 7.3.15-3+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `countaries`
--

CREATE TABLE `countaries` (
  `id` int(10) UNSIGNED NOT NULL,
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
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` int(10) UNSIGNED NOT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `month`, `description`, `created_at`, `updated_at`, `student_id`, `user_id`) VALUES
(1, '2', 'feedback testing', '2019-07-28 23:38:58', '2019-07-28 23:38:58', 1, 1),
(2, '10', 'check', '2019-07-28 23:39:06', '2019-07-28 23:39:06', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `guardians`
--

CREATE TABLE `guardians` (
  `id` int(10) UNSIGNED NOT NULL,
  `father_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_occupation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_occupation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guardians`
--

INSERT INTO `guardians` (`id`, `father_name`, `father_image`, `father_occupation`, `mother_name`, `mother_image`, `mother_occupation`, `created_at`, `updated_at`, `student_id`) VALUES
(1, 'parkash', '164609_1585041487.jpg', 'private employee', 'Ritu Thakur', '164623_1585041487.jpg', 'housewife', '2019-07-28 23:39:36', '2020-03-24 03:48:07', 1);

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
(3, '2019_04_30_045348_create_classes_table', 1),
(5, '2019_05_01_122448_create_countaries_table', 1),
(6, '2019_05_01_122512_create_states_table', 1),
(7, '2019_05_06_042800_create_schools_table', 1),
(8, '2019_05_11_061145_create_student_class_students_table', 1),
(9, '2019_05_28_074712_create_school_sessions_table', 1),
(10, '2019_05_28_115246_change_school_session_to_school_session_id_tostudent_class_students_table', 1),
(11, '2019_05_29_042912_create_guardians_table', 1),
(12, '2019_05_30_053427_add_student_id_to_guardians', 1),
(13, '2019_05_30_104617_create_feedbacks_table', 1),
(14, '2019_06_06_004309_add_student_id_to_feedbacks', 1),
(15, '2019_06_06_090548_add_user_id_to_feedbacks', 1),
(16, '2019_06_08_110436_create_works_table', 1),
(17, '2019_06_12_041612_add_student_class_id_to_works', 1),
(18, '2019_07_20_042652_create_teachers_table', 1),
(20, '2019_07_26_134718_create_teacher_student_classes_table', 1),
(23, '2019_07_29_052119_add_student_class_id_to_teachers', 2),
(35, '2019_08_03_104655_add_teacher_id_to_classes', 5),
(36, '2019_08_05_075522_create_student_fees_table', 5),
(37, '2019_08_05_101531_add_student_class_id_to_student_fees', 5),
(38, '2019_08_06_060109_create_teacher_student_fees_table', 5),
(41, '2019_08_19_135544_create_students_table', 7),
(42, '2019_08_19_140150_add_status_to_students', 8),
(43, '2019_08_19_140445_add_student_class_id_to_students', 9);

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
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_opening` datetime NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` int(11) NOT NULL,
  `countary_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `school_sessions`
--

CREATE TABLE `school_sessions` (
  `id` int(10) UNSIGNED NOT NULL,
  `session_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `school_sessions`
--

INSERT INTO `school_sessions` (`id`, `session_year`, `created_at`, `updated_at`) VALUES
(1, '2019-2020', '2019-07-28 23:40:56', '2019-07-28 23:40:56'),
(2, '2020 - 2021', '2019-07-28 23:41:05', '2019-07-28 23:41:05'),
(3, '2021 - 2022', '2019-07-28 23:41:15', '2019-07-28 23:41:15'),
(4, '2022 - 2023', '2019-07-28 23:41:25', '2019-07-28 23:41:25'),
(5, '2023 - 2024', '2019-07-28 23:41:36', '2019-07-28 23:41:36'),
(6, '2024 - 2025', '2019-07-28 23:41:42', '2019-07-28 23:41:42');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(10) UNSIGNED NOT NULL,
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
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aadhar_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` datetime NOT NULL,
  `doa` datetime NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` int(11) NOT NULL,
  `countary_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `student_class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `father_name`, `mother_name`, `aadhar_id`, `dob`, `doa`, `photo`, `gender`, `address`, `city`, `state_id`, `countary_id`, `created_at`, `updated_at`, `status`, `student_class_id`) VALUES
(1, 'nikhil', 'sharma', 'niks98ns@gmail.com', 'mom', 'mom', '3545687', '1998-11-12 00:00:00', '1998-11-12 00:00:00', 'IMG-20180312-WA0000_1566223608.jpg', 'male', 'hmpr', 'hgcjh', 1, 1, '2019-08-19 08:36:48', '2019-08-19 08:36:48', 0, 1),
(2, 'rohit', 'thakur', 'rohit@gmail.com', 'v', 'vjhkjh', '547687', '1998-11-12 00:00:00', '1998-11-12 00:00:00', 'IMG-20180312-WA0000_1566223687.jpg', 'male', 'gjhj', 'hjgj', 1, 1, '2019-08-19 08:38:07', '2019-08-19 08:38:07', 0, 2),
(3, 'nvnm', 'cvh', 'nbvn@gmail.com', 'hghj', 'cghjh', '65', '1998-05-06 00:00:00', '1998-06-05 00:00:00', 'IMG-20180312-WA0000_1566223771.jpg', 'male', 'bv', 'jvh', 1, 1, '2019-08-19 08:39:31', '2019-08-19 08:39:31', 1, 3),
(4, 'test', 'hcghmj', 'hcgh@gmail.com', 'fhgh', 'hgcjh', '6576', '1998-05-05 00:00:00', '1998-06-05 00:00:00', 'IMG-20180312-WA0000_1566274480.jpg', 'male', 'fcchghg', 'hcgh', 1, 1, '2019-08-19 09:16:04', '2019-08-19 22:44:40', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `student_classes`
--

CREATE TABLE `student_classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_classes`
--

INSERT INTO `student_classes` (`id`, `title`, `section`, `created_at`, `updated_at`, `teacher_id`) VALUES
(1, '1', 'a', '2019-08-01 06:25:30', '2019-08-12 23:24:49', 1),
(2, '1', 'b', '2019-08-01 06:26:46', '2019-08-12 23:25:12', 2),
(3, '1', 'c', '2019-08-01 06:28:20', '2019-08-12 23:25:23', 3);

-- --------------------------------------------------------

--
-- Table structure for table `student_class_students`
--

CREATE TABLE `student_class_students` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `school_session_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_class_students`
--

INSERT INTO `student_class_students` (`id`, `student_class_id`, `student_id`, `school_session_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '1', '2019-08-01 06:25:56', '2019-08-01 06:25:56'),
(2, 2, 2, '1', '2019-08-01 06:30:00', '2019-08-01 06:30:00'),
(3, 1, 3, '2', '2019-08-02 00:47:08', '2019-08-12 22:56:48'),
(4, 1, 4, '2', '2019-08-02 00:47:26', '2019-08-02 00:47:26'),
(5, 3, 4, '3', '2019-08-02 04:24:45', '2019-08-02 04:24:45'),
(6, 2, 6, '1', '2019-08-05 00:00:28', '2019-08-12 22:56:25'),
(7, 2, 5, '5', '2019-08-12 22:57:22', '2019-08-12 22:57:22'),
(8, 2, 7, '2', '2019-08-13 02:08:32', '2019-08-13 02:08:32'),
(9, 3, 8, '6', '2019-08-13 02:09:05', '2019-08-13 02:09:05'),
(10, 2, 9, '2', '2019-08-18 23:42:51', '2019-08-18 23:42:51'),
(11, 2, 14, '2', '2019-08-19 01:32:29', '2019-08-19 01:32:29');

-- --------------------------------------------------------

--
-- Table structure for table `student_fees`
--

CREATE TABLE `student_fees` (
  `id` int(10) UNSIGNED NOT NULL,
  `class_fees` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student_class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_fees`
--

INSERT INTO `student_fees` (`id`, `class_fees`, `created_at`, `updated_at`, `student_class_id`) VALUES
(1, '8000', '2019-08-12 23:26:08', '2019-08-12 23:26:08', 1),
(2, '6100', '2019-08-12 23:26:23', '2019-08-12 23:26:23', 2),
(3, '2100', '2019-08-12 23:26:42', '2019-08-12 23:26:42', 3);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `experience` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aadhar_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` datetime NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student_class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `first_name`, `last_name`, `email`, `age`, `experience`, `aadhar_id`, `dob`, `gender`, `address`, `created_at`, `updated_at`, `student_class_id`) VALUES
(1, 'rahul', 'sharmaa', 'rahul@gmail.com', '32', '3', '2435465', '1998-11-12 00:00:00', 'male', 'chd', '2019-08-01 06:25:00', '2019-08-03 05:23:01', 1),
(2, 'nikhil', 'sharma', 'niks98ns@gmail.com', '21', '1', '15456', '1998-11-12 00:00:00', 'male', 'fhcghgjh', '2019-08-01 06:27:23', '2019-08-01 06:27:23', 2),
(3, 'ajay', 'sharma', 'ajay@gmail.com', '21', '1', '53456', '1998-11-12 00:00:00', 'male', 'dhghj', '2019-08-01 06:27:56', '2019-08-01 06:27:56', 3),
(4, 'gfjgh', 'gcjvh', 'vh@gmail.com', '54', '4', '2345', '1998-04-04 00:00:00', 'male', 'nnmmb', '2019-08-03 07:12:36', '2019-08-03 07:12:36', 4);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_student_classes`
--

CREATE TABLE `teacher_student_classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `teacher_id` int(10) UNSIGNED NOT NULL,
  `student_class_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacher_student_classes`
--

INSERT INTO `teacher_student_classes` (`id`, `teacher_id`, `student_class_id`, `created_at`, `updated_at`) VALUES
(36, 3, 5, '2019-07-30 01:08:40', '2019-07-30 01:08:40'),
(37, 3, 3, '2019-07-30 01:08:49', '2019-07-30 01:08:49'),
(38, 6, 5, '2019-07-30 01:09:18', '2019-07-30 01:09:18'),
(39, 6, 7, '2019-07-30 01:10:09', '2019-07-30 01:10:09'),
(40, 6, 4, '2019-07-30 01:10:13', '2019-07-30 01:10:13'),
(41, 6, 5, '2019-07-30 01:10:19', '2019-07-30 01:10:19'),
(42, 6, 5, '2019-07-30 01:11:15', '2019-07-30 01:11:15'),
(43, 4, 5, '2019-07-30 01:11:35', '2019-07-30 01:11:35'),
(44, 4, 4, '2019-07-30 01:11:56', '2019-07-30 01:11:56'),
(45, 7, 2, '2019-07-30 01:15:45', '2019-07-30 01:15:45'),
(46, 7, 4, '2019-07-30 01:19:08', '2019-07-30 01:19:08'),
(47, 1, 2, '2019-07-30 01:35:55', '2019-07-30 01:35:55'),
(48, 1, 2, '2019-08-01 02:06:52', '2019-08-01 02:06:52'),
(49, 1, 2, '2019-08-01 06:31:27', '2019-08-01 06:31:27'),
(50, 3, 1, '2019-08-02 07:27:35', '2019-08-02 07:27:35'),
(51, 1, 2, '2019-08-06 00:24:18', '2019-08-06 00:24:18'),
(52, 1, 1, '2020-03-18 06:21:36', '2020-03-18 06:21:36'),
(53, 1, 1, '2020-04-10 11:14:56', '2020-04-10 11:14:56'),
(54, 1, 3, '2020-04-14 05:18:57', '2020-04-14 05:18:57');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_student_fees`
--

CREATE TABLE `teacher_student_fees` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_fee_id` int(10) UNSIGNED NOT NULL,
  `student_class_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacher_student_fees`
--

INSERT INTO `teacher_student_fees` (`id`, `student_fee_id`, `student_class_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2019-08-12 23:27:29', '2019-08-12 23:27:29'),
(2, 2, 3, '2019-08-12 23:27:47', '2019-08-12 23:27:47'),
(3, 1, 1, '2019-08-12 23:27:57', '2019-08-12 23:27:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'nikhil', 'sharma', 'niks98ns@gmail.com', '$2y$10$FGUZFYXInhkox6PwX96lWOhT2lIPzvu4b.lyHSisx.7KsVxxyaabe', 'pONx7GiiLNXfzQHVeifdTxGAyzavpfpUtQUDeLRP7MEmZjomIFNDa5qrxml0', '2019-07-28 23:34:13', '2019-07-28 23:34:13'),
(2, 'nikhil', 'sharma', 'nikhilsharma.hmsadroit@gmail.com', '$2y$10$XfRcXPgROzrVvxd3GQBKJ.lDXig5MUo2E7fmfkyMQptiM9LhZpXpO', NULL, '2020-03-24 03:45:59', '2020-03-24 03:45:59'),
(3, 'manu', 'sharma', 'manu@gmail.com', '$2y$10$YZLLOW1wsEqY3XOqyhcDreKZk9A7escBIcEMPWV9iflb3blJaBK.W', NULL, '2020-04-15 05:11:19', '2020-04-15 05:11:19');

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE `works` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student_class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `works`
--

INSERT INTO `works` (`id`, `title`, `description`, `created_at`, `updated_at`, `student_class_id`) VALUES
(1, 'post one laravel', 'feedback testing11', '2019-07-29 00:50:52', '2019-07-29 04:56:54', 1),
(2, 'post1', 'check', '2019-07-29 00:51:08', '2019-07-29 01:00:10', 2),
(3, 'ufyuli;o', 'hlgjkj;l', '2019-07-29 00:57:46', '2019-07-29 00:57:46', 2),
(4, 'post one', 'check0', '2019-07-29 04:57:12', '2019-07-29 05:01:20', 4),
(5, 'migrations', 'database', '2019-07-29 05:00:29', '2019-07-29 05:00:29', 3),
(6, 'seeds', 'tables', '2019-07-29 05:01:09', '2019-07-29 05:01:09', 6),
(7, 'posts', 'check', '2019-07-29 22:58:15', '2019-07-29 22:58:15', 5),
(8, 'k', 'hvj', '2019-07-31 23:53:37', '2019-07-31 23:53:37', 1),
(9, 'hidden', 'id', '2019-08-01 04:23:42', '2019-08-01 04:23:42', 7),
(10, 'bn', 'hj,', '2019-08-01 04:39:46', '2019-08-01 04:39:46', 1),
(11, 'dw', 'ssd', '2019-08-03 06:56:50', '2019-08-03 06:56:50', 2),
(12, 'nikhil', 'sharma', '2020-04-15 08:42:25', '2020-04-15 08:42:25', 1),
(13, 'zxcvbnm', '1234567890', '2020-04-15 08:45:04', '2020-04-15 08:45:04', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countaries`
--
ALTER TABLE `countaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guardians`
--
ALTER TABLE `guardians`
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
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school_sessions`
--
ALTER TABLE `school_sessions`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `student_classes`
--
ALTER TABLE `student_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_class_students`
--
ALTER TABLE `student_class_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_fees`
--
ALTER TABLE `student_fees`
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
-- Indexes for table `teacher_student_fees`
--
ALTER TABLE `teacher_student_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countaries`
--
ALTER TABLE `countaries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `guardians`
--
ALTER TABLE `guardians`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `school_sessions`
--
ALTER TABLE `school_sessions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `student_classes`
--
ALTER TABLE `student_classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `student_class_students`
--
ALTER TABLE `student_class_students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `student_fees`
--
ALTER TABLE `student_fees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `teacher_student_classes`
--
ALTER TABLE `teacher_student_classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `teacher_student_fees`
--
ALTER TABLE `teacher_student_fees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `works`
--
ALTER TABLE `works`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
