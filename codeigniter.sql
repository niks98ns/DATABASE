-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 09, 2020 at 03:29 PM
-- Server version: 5.7.29
-- PHP Version: 7.3.15-3+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codeigniter`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `picture` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `picture`, `name`, `email`) VALUES
(1, '', 'download.png', 'Nikhil Sharma'),
(2, 'download.png', 'Nikhil Sharma', 'manu@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobile_number` int(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `password`, `mobile_number`, `image`, `gender`, `dob`, `address`) VALUES
(36, 'nikhill', 'sharma', 'root@gmail.com', 'hms@2019', 23456, 'page.jpg', 'male', '1998-11-12', 'xyz'),
(37, 'rohit', 'sharma', 'root@gmail.com', 'hms@2019', 23456, 'banner_designs.png', 'male', '1998-11-12', 'xyz'),
(38, 'himanshu', 'sharma', 'root@gmail.com', 'capability1.png', 23456, 'capability1.png', 'male', '1998-11-12', 'xyz'),
(39, 'bmmbvkj', 'jvhvk', 'hvkk@gmail.com', 'hvkkv', 768789, 'flyers.png', 'male', '2020-01-11', '@gmail.com'),
(40, 'ankush', 'sharma', 'nk@gmail.com', 'hms@2019', 3, 'logo.png', 'male', '2020-01-11', 'mohali'),
(42, 'y', 'z', 'y@gmail.com', 'hms@2019', 12345678, 'news-grid.jpg', 'female', '2020-01-15', 'xyz'),
(43, 'y', 'z', 'y@gmail.com', 'hms@2019', 12345678, 'page.jpg', 'male', '2020-01-15', 'xyz'),
(44, 'ritu', 'sharma', 'root@gmail.com', '123', 112345, 'web_design.png', 'female', '1998-11-12', 'gfhhjlk'),
(45, 'uuu', 'ghh', 'vcnbn@gmail.com', 'wert', 54678, '1.svg', 'male', '2020-01-08', 'bv nm'),
(46, 'nnnn', 'fcgvhbjn', 'gvb@gmail.com', 'hms@2019', 3456789, '1.svg', 'male', '1998-11-12', 'fdghjk');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
