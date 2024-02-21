-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2024 at 04:17 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `machine_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `submission`
--

CREATE TABLE `submission` (
  `id` int(11) NOT NULL,
  `targetted` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `implemented` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `current_dates` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `submission`
--

INSERT INTO `submission` (`id`, `targetted`, `implemented`, `current_dates`) VALUES
(1, '[{\"key\":1,\"value\":1},{\"key\":2,\"value\":1},{\"key\":3,\"value\":3},{\"key\":4,\"value\":4},{\"key\":5,\"value\":5}]', '[{\"key\":1,\"value\":2},{\"key\":2,\"value\":2},{\"key\":3,\"value\":3},{\"key\":4,\"value\":4},{\"key\":5,\"value\":5}]', '2024-02-21 20:05:49'),
(2, '[{\"key\":1,\"value\":1},{\"key\":2,\"value\":2},{\"key\":3,\"value\":3},{\"key\":4,\"value\":4},{\"key\":5,\"value\":5}]', '[{\"key\":1,\"value\":2},{\"key\":2,\"value\":2},{\"key\":3,\"value\":3},{\"key\":4,\"value\":4},{\"key\":5,\"value\":5}]', '2024-02-21 20:06:51'),
(3, '[{\"key\":1,\"value\":1},{\"key\":2,\"value\":1},{\"key\":3,\"value\":3},{\"key\":4,\"value\":4},{\"key\":5,\"value\":5}]', '[{\"key\":1,\"value\":2},{\"key\":2,\"value\":2},{\"key\":3,\"value\":3},{\"key\":4,\"value\":4},{\"key\":5,\"value\":5}]', '2024-02-21 20:07:06'),
(4, '[{\"key\":1,\"value\":1},{\"key\":2,\"value\":2},{\"key\":3,\"value\":3},{\"key\":4,\"value\":4},{\"key\":5,\"value\":5}]', '[{\"key\":1,\"value\":1},{\"key\":2,\"value\":2},{\"key\":3,\"value\":3},{\"key\":4,\"value\":4},{\"key\":5,\"value\":5}]', '2024-02-21 20:07:22'),
(5, '[{\"key\":1,\"value\":1},{\"key\":2,\"value\":2},{\"key\":3,\"value\":2},{\"key\":4,\"value\":3},{\"key\":5,\"value\":2}]', '[{\"key\":1,\"value\":1},{\"key\":2,\"value\":2},{\"key\":3,\"value\":2},{\"key\":4,\"value\":3},{\"key\":5,\"value\":5}]', '2024-02-21 20:07:53'),
(6, '[{\"key\":1,\"value\":1},{\"key\":2,\"value\":2},{\"key\":3,\"value\":3},{\"key\":4,\"value\":4},{\"key\":5,\"value\":5}]', '[{\"key\":1,\"value\":1},{\"key\":2,\"value\":2},{\"key\":3,\"value\":3},{\"key\":4,\"value\":4},{\"key\":5,\"value\":5}]', '2024-02-21 20:08:41'),
(7, '[{\"key\":1,\"value\":1},{\"key\":2,\"value\":1},{\"key\":3,\"value\":3},{\"key\":4,\"value\":4},{\"key\":5,\"value\":5}]', '[{\"key\":1,\"value\":2},{\"key\":2,\"value\":2},{\"key\":3,\"value\":3},{\"key\":4,\"value\":4},{\"key\":5,\"value\":5}]', '2024-02-21 20:09:15'),
(8, '[{\"key\":1,\"value\":1},{\"key\":2,\"value\":2},{\"key\":3,\"value\":3},{\"key\":4,\"value\":4},{\"key\":5,\"value\":5}]', '[{\"key\":1,\"value\":1},{\"key\":2,\"value\":2},{\"key\":3,\"value\":3},{\"key\":4,\"value\":4},{\"key\":5,\"value\":5}]', '2024-02-21 20:09:33'),
(9, '[{\"key\":1,\"value\":1},{\"key\":2,\"value\":1},{\"key\":3,\"value\":1},{\"key\":4,\"value\":4},{\"key\":5,\"value\":5}]', '[{\"key\":1,\"value\":2},{\"key\":2,\"value\":2},{\"key\":3,\"value\":3},{\"key\":4,\"value\":4},{\"key\":5,\"value\":5}]', '2024-02-21 20:11:14'),
(10, '[{\"key\":1,\"value\":1},{\"key\":2,\"value\":2},{\"key\":3,\"value\":3},{\"key\":4,\"value\":4},{\"key\":5,\"value\":5}]', '[{\"key\":1,\"value\":2},{\"key\":2,\"value\":2},{\"key\":3,\"value\":3},{\"key\":4,\"value\":4},{\"key\":5,\"value\":5}]', '2024-02-21 20:11:56'),
(11, '[{\"key\":1,\"value\":1},{\"key\":2,\"value\":2},{\"key\":3,\"value\":3},{\"key\":4,\"value\":4},{\"key\":5,\"value\":5}]', '[{\"key\":1,\"value\":2},{\"key\":2,\"value\":2},{\"key\":3,\"value\":3},{\"key\":4,\"value\":4},{\"key\":5,\"value\":5}]', '2024-02-21 20:14:36'),
(12, '[{\"key\":1,\"value\":1},{\"key\":2,\"value\":2},{\"key\":3,\"value\":4},{\"key\":4,\"value\":4},{\"key\":5,\"value\":5}]', '[{\"key\":1,\"value\":2},{\"key\":2,\"value\":5},{\"key\":3,\"value\":5},{\"key\":4,\"value\":5},{\"key\":5,\"value\":5}]', '2024-02-21 20:15:17'),
(13, '[{\"key\":1,\"value\":1},{\"key\":2,\"value\":2},{\"key\":3,\"value\":2},{\"key\":4,\"value\":2},{\"key\":5,\"value\":2}]', '[{\"key\":1,\"value\":1},{\"key\":2,\"value\":2},{\"key\":3,\"value\":2},{\"key\":4,\"value\":2},{\"key\":5,\"value\":0}]', '2024-02-21 20:17:00'),
(14, '[{\"key\":1,\"value\":1},{\"key\":2,\"value\":1},{\"key\":3,\"value\":1},{\"key\":4,\"value\":4},{\"key\":5,\"value\":5}]', '[{\"key\":1,\"value\":2},{\"key\":2,\"value\":2},{\"key\":3,\"value\":2},{\"key\":4,\"value\":4},{\"key\":5,\"value\":5}]', '2024-02-21 20:22:43'),
(15, '[{\"key\":1,\"value\":1},{\"key\":2,\"value\":2},{\"key\":3,\"value\":3},{\"key\":4,\"value\":2},{\"key\":5,\"value\":2}]', '[{\"key\":1,\"value\":1},{\"key\":2,\"value\":2},{\"key\":3,\"value\":3},{\"key\":4,\"value\":2},{\"key\":5,\"value\":2}]', '2024-02-21 20:26:32'),
(16, '[{\"key\":1,\"value\":1},{\"key\":2,\"value\":2},{\"key\":3,\"value\":3},{\"key\":4,\"value\":4},{\"key\":5,\"value\":5}]', '[{\"key\":1,\"value\":1},{\"key\":2,\"value\":2},{\"key\":3,\"value\":3},{\"key\":4,\"value\":4},{\"key\":5,\"value\":5}]', '2024-02-21 20:28:36'),
(17, '[{\"key\":1,\"value\":1},{\"key\":2,\"value\":3},{\"key\":3,\"value\":5},{\"key\":4,\"value\":5},{\"key\":5,\"value\":5}]', '[{\"key\":1,\"value\":2},{\"key\":2,\"value\":4},{\"key\":3,\"value\":4},{\"key\":4,\"value\":4},{\"key\":5,\"value\":4}]', '2024-02-21 20:31:39'),
(18, '[{\"key\":1,\"value\":1},{\"key\":2,\"value\":2},{\"key\":3,\"value\":3},{\"key\":4,\"value\":4},{\"key\":5,\"value\":5}]', '[{\"key\":1,\"value\":1},{\"key\":2,\"value\":2},{\"key\":3,\"value\":4},{\"key\":4,\"value\":4},{\"key\":5,\"value\":5}]', '2024-02-21 20:31:49'),
(19, '[{\"key\":1,\"value\":1},{\"key\":2,\"value\":3},{\"key\":3,\"value\":3},{\"key\":4,\"value\":4},{\"key\":5,\"value\":5}]', '[{\"key\":1,\"value\":2},{\"key\":2,\"value\":4},{\"key\":3,\"value\":3},{\"key\":4,\"value\":4},{\"key\":5,\"value\":5}]', '2024-02-21 20:32:50'),
(20, '[{\"key\":1,\"value\":1},{\"key\":2,\"value\":3},{\"key\":3,\"value\":4},{\"key\":4,\"value\":4},{\"key\":5,\"value\":5}]', '[{\"key\":1,\"value\":2},{\"key\":2,\"value\":3},{\"key\":3,\"value\":4},{\"key\":4,\"value\":4},{\"key\":5,\"value\":5}]', '2024-02-21 20:33:11'),
(21, '[{\"key\":1,\"value\":1},{\"key\":2,\"value\":2},{\"key\":3,\"value\":3},{\"key\":4,\"value\":4},{\"key\":5,\"value\":5}]', '[{\"key\":1,\"value\":2},{\"key\":2,\"value\":2},{\"key\":3,\"value\":3},{\"key\":4,\"value\":4},{\"key\":5,\"value\":5}]', '2024-02-21 20:34:11'),
(22, '[{\"key\":1,\"value\":1},{\"key\":2,\"value\":2},{\"key\":3,\"value\":3},{\"key\":4,\"value\":4},{\"key\":5,\"value\":5}]', '[{\"key\":1,\"value\":1},{\"key\":2,\"value\":2},{\"key\":3,\"value\":3},{\"key\":4,\"value\":4},{\"key\":5,\"value\":5}]', '2024-02-21 20:34:40'),
(23, '[{\"key\":1,\"value\":1},{\"key\":2,\"value\":3},{\"key\":3,\"value\":5},{\"key\":4,\"value\":5},{\"key\":5,\"value\":5}]', '[{\"key\":1,\"value\":2},{\"key\":2,\"value\":3},{\"key\":3,\"value\":5},{\"key\":4,\"value\":5},{\"key\":5,\"value\":5}]', '2024-02-21 20:35:35'),
(24, '[{\"key\":1,\"value\":1},{\"key\":2,\"value\":2},{\"key\":3,\"value\":3},{\"key\":4,\"value\":4},{\"key\":5,\"value\":5}]', '[{\"key\":1,\"value\":1},{\"key\":2,\"value\":2},{\"key\":3,\"value\":4},{\"key\":4,\"value\":4},{\"key\":5,\"value\":5}]', '2024-02-21 20:37:14'),
(25, '[{\"key\":1,\"value\":1},{\"key\":2,\"value\":2},{\"key\":3,\"value\":3},{\"key\":4,\"value\":4},{\"key\":5,\"value\":5}]', '[{\"key\":1,\"value\":2},{\"key\":2,\"value\":2},{\"key\":3,\"value\":3},{\"key\":4,\"value\":4},{\"key\":5,\"value\":5}]', '2024-02-21 20:37:48'),
(26, '[{\"key\":1,\"value\":1},{\"key\":2,\"value\":3},{\"key\":3,\"value\":5},{\"key\":4,\"value\":4},{\"key\":5,\"value\":5}]', '[{\"key\":1,\"value\":2},{\"key\":2,\"value\":4},{\"key\":3,\"value\":4},{\"key\":4,\"value\":4},{\"key\":5,\"value\":5}]', '2024-02-21 20:41:50'),
(27, '[{\"key\":1,\"value\":1},{\"key\":2,\"value\":3},{\"key\":3,\"value\":5},{\"key\":4,\"value\":4},{\"key\":5,\"value\":5}]', '[{\"key\":1,\"value\":2},{\"key\":2,\"value\":4},{\"key\":3,\"value\":4},{\"key\":4,\"value\":4},{\"key\":5,\"value\":5}]', '2024-02-21 20:45:08'),
(28, '[{\"key\":1,\"value\":1},{\"key\":2,\"value\":4},{\"key\":3,\"value\":3},{\"key\":4,\"value\":4},{\"key\":5,\"value\":5}]', '[{\"key\":1,\"value\":2},{\"key\":2,\"value\":4},{\"key\":3,\"value\":3},{\"key\":4,\"value\":4},{\"key\":5,\"value\":5}]', '2024-02-21 20:46:13'),
(29, '[{\"key\":1,\"value\":1},{\"key\":2,\"value\":2},{\"key\":3,\"value\":3},{\"key\":4,\"value\":4},{\"key\":5,\"value\":5}]', '[{\"key\":1,\"value\":1},{\"key\":2,\"value\":2},{\"key\":3,\"value\":3},{\"key\":4,\"value\":4},{\"key\":5,\"value\":5}]', '2024-02-21 20:46:35'),
(30, '[{\"key\":1,\"value\":1},{\"key\":2,\"value\":2},{\"key\":3,\"value\":3},{\"key\":4,\"value\":4},{\"key\":5,\"value\":5}]', '[{\"key\":1,\"value\":1},{\"key\":2,\"value\":2},{\"key\":3,\"value\":3},{\"key\":4,\"value\":4},{\"key\":5,\"value\":5}]', '2024-02-21 20:47:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `submission`
--
ALTER TABLE `submission`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `submission`
--
ALTER TABLE `submission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
