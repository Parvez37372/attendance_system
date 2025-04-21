-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 18, 2025 at 12:23 PM
-- Server version: 10.11.10-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u705109916_employee`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `userid`, `password`) VALUES
(1, 'Naveen123', 'Naveen@321');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `employee_id`, `date`, `status`, `time`) VALUES
(93, '00009', '2025-04-16', 'Present', '2025-04-16 09:54:31'),
(94, '00012', '2025-04-16', 'Present', '2025-04-16 09:54:39'),
(95, '00017', '2025-04-16', 'Present', '2025-04-16 09:59:08'),
(96, '00016', '2025-04-16', 'Present', '2025-04-16 10:31:21'),
(97, '00015', '2025-04-16', 'Present', '2025-04-16 10:19:35'),
(98, '00014', '2025-04-16', 'Present', '2025-04-16 10:20:24'),
(99, '00018', '2025-04-16', 'Present', '2025-04-16 21:18:09'),
(100, '00008', '2025-04-16', 'Present', '2025-04-16 21:24:32'),
(101, '00013', '2025-04-16', 'Present', '2025-04-16 21:44:05'),
(102, '00012', '2025-04-17', 'Present', '2025-04-17 09:53:53'),
(103, '00015', '2025-04-17', 'Present', '2025-04-17 09:56:16'),
(104, '00014', '2025-04-17', 'Present', '2025-04-17 09:56:53'),
(105, '00017', '2025-04-17', 'Present', '2025-04-17 09:57:21'),
(106, '00016', '2025-04-17', 'Present', '2025-04-17 09:58:07'),
(107, '00011', '2025-04-16', 'Absent', '2025-04-17 05:09:08'),
(108, '00009', '2025-04-17', 'Present', '2025-04-17 12:15:52'),
(109, '00018', '2025-04-17', 'Present', '2025-04-17 20:52:14'),
(110, '00011', '2025-04-17', 'Present', '2025-04-17 20:56:48'),
(111, '00013', '2025-04-17', 'Present', '2025-04-17 21:27:56'),
(112, '00012', '2025-04-18', 'Present', '2025-04-18 08:46:43'),
(113, '00015', '2025-04-18', 'Present', '2025-04-18 09:09:02'),
(114, '00016', '2025-04-18', 'Present', '2025-04-18 10:16:43'),
(115, '00017', '2025-04-18', 'Present', '2025-04-18 10:17:22');

-- --------------------------------------------------------

--
-- Table structure for table `break_times`
--

CREATE TABLE `break_times` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(100) NOT NULL,
  `break_in_time` datetime NOT NULL,
  `break_out_time` datetime DEFAULT NULL,
  `date` date NOT NULL DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `break_times`
--

INSERT INTO `break_times` (`id`, `employee_id`, `break_in_time`, `break_out_time`, `date`) VALUES
(4, '00016', '2025-04-16 16:25:42', '2025-04-16 16:27:19', '2025-04-16'),
(5, '00012', '2025-04-16 16:41:35', '2025-04-16 16:41:42', '2025-04-16'),
(6, '00013', '2025-04-17 02:34:29', '2025-04-17 03:20:59', '2025-04-17'),
(7, '00016', '2025-04-17 10:40:10', '2025-04-17 10:55:16', '2025-04-17');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(100) DEFAULT NULL,
  `employee_name` varchar(255) DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `joining_date` date DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `document` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `employee_id`, `employee_name`, `designation`, `joining_date`, `dob`, `image`, `document`, `address`, `created_at`) VALUES
(15, '00017', 'PARVEZ AHMAD', 'FULL STACK DEVELOPER', '2025-03-10', '2000-06-20', 'uploads/images/9c74cb2c-8634-4d30-ad71-5c22eec43ef0.jpeg', 'uploads/docs/', 'Janakpuri delhi', '2025-04-16 04:02:27'),
(16, '00014', 'SUMIT MEHRA', 'SEO EXECUTIVE', '0000-00-00', '2005-10-05', 'uploads/images/sumit.jpeg', 'uploads/docs/sumit mehra.pdf', '', '2025-04-16 04:03:34'),
(17, '00016', 'SUJAL RAWAT', 'SEO EXECUTIVE', '2025-04-02', '2005-04-04', 'uploads/images/c3c4c923-bd95-4256-80b6-fd1002fb1d35.jpeg', 'uploads/docs/', 'Delhi', '2025-04-16 04:05:03'),
(18, '00015', 'NAVITI PATWA', 'SEO EXECUTIVE', '0000-00-00', '2005-07-02', 'uploads/images/naviti.JPG', 'uploads/docs/', '', '2025-04-16 04:06:07'),
(19, '00013', 'MOHIT VASHISHT', 'SEO EXECUTIVE', '0000-00-00', '2005-04-24', 'uploads/images/mohit.jpeg', 'uploads/docs/mohit vashisht.pdf', '', '2025-04-16 04:07:23'),
(20, '00012', 'SAHIL HUSSIAN', 'TEAM HEAD SEO', '0000-00-00', '1997-07-15', 'uploads/images/sahil.JPG', 'uploads/docs/Sahil Hussain.pdf', '', '2025-04-16 04:12:11'),
(21, '00011', 'PRASHANT KUMAR', 'TEAM HEAD SEO/MARKETING', '0000-00-00', '1996-06-15', 'uploads/images/prashant.JPG', 'uploads/docs/', '', '2025-04-16 04:13:03'),
(22, '00009', 'ROHIT GUPTA', 'SR. TRAVEL EXPERT', '2023-10-10', '2001-01-17', 'uploads/images/a7fad5f1-28db-423b-9cdf-527ffe8004c4.jpeg', 'uploads/docs/', 'Delhi ', '2025-04-16 04:14:28'),
(23, '00008', 'KAPIL SAHNI', 'MANAGER', '2023-10-10', '1982-10-15', 'uploads/images/30bf6153-7a5d-4340-9e8e-d3d4e01ff155.jpeg', 'uploads/docs/', 'faridabad ', '2025-04-16 04:22:16'),
(24, '00018', 'Devanshu', 'SEO EXECUTIVE', '2025-04-02', '2025-04-16', 'uploads/images/OIP.jpeg', 'uploads/docs/', 'Delhi', '2025-04-16 10:21:36');

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(50) DEFAULT NULL,
  `employee_name` varchar(100) DEFAULT NULL,
  `basic_salary` decimal(10,2) DEFAULT NULL,
  `leave_days` int(11) DEFAULT 0,
  `half_days` int(11) DEFAULT 0,
  `deduction` decimal(10,2) DEFAULT 0.00,
  `total_salary` decimal(10,2) DEFAULT NULL,
  `month` varchar(20) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `generated_on` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`id`, `employee_id`, `employee_name`, `basic_salary`, `leave_days`, `half_days`, `deduction`, `total_salary`, `month`, `year`, `generated_on`) VALUES
(11, '00012', 'SAHIL HUSSIAN', 60000.00, 0, 0, 0.00, 60000.00, 'April', 2025, '2025-04-16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userid` (`userid`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `break_times`
--
ALTER TABLE `break_times`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `break_times`
--
ALTER TABLE `break_times`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`);

--
-- Constraints for table `salary`
--
ALTER TABLE `salary`
  ADD CONSTRAINT `salary_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
