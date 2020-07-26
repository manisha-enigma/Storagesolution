-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2020 at 08:21 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cloudstorage`
--

-- --------------------------------------------------------

--
-- Table structure for table `del_file`
--

CREATE TABLE `del_file` (
  `Id` int(255) NOT NULL,
  `FileName` varchar(255) NOT NULL,
  `Deldate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `del_file`
--

INSERT INTO `del_file` (`Id`, `FileName`, `Deldate`) VALUES
(3, 'Chrysanthemum.jpg', '2020-05-30 20:46:48'),
(4, 'Desert.jpg', '2020-05-30 20:48:48'),
(5, 'abcs.PNG', '2020-05-30 20:52:06'),
(6, 'beddd.PNG', '2020-05-31 08:43:50'),
(7, 'Koala.jpg', '2020-05-31 08:43:51'),
(8, 'addressbar.PNG', '2020-05-31 08:43:52'),
(9, 'f1.PNG', '2020-05-31 08:43:56'),
(10, 'bav.PNG', '2020-05-31 17:40:40');

-- --------------------------------------------------------

--
-- Table structure for table `demotable`
--

CREATE TABLE `demotable` (
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `demotable`
--

INSERT INTO `demotable` (`email`, `username`, `password`) VALUES
('manishabhagat41@gmail.com', 'manisha', '1234'),
('bhagatmanisha411@gmail.com', 'mona', '4321');

-- --------------------------------------------------------

--
-- Table structure for table `totalfileupld`
--

CREATE TABLE `totalfileupld` (
  `Id` int(255) NOT NULL,
  `FileName` varchar(255) NOT NULL,
  `FileType` varchar(255) NOT NULL,
  `FileSize` int(255) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `totalfileupld`
--

INSERT INTO `totalfileupld` (`Id`, `FileName`, `FileType`, `FileSize`, `username`) VALUES
(1, 'Chrysanthemum.jpg', 'image/jpeg', 879394, 'manisha'),
(2, 'Desert.jpg', 'image/jpeg', 845941, 'manisha'),
(3, 'abcs.PNG', 'image/png', 26712, 'manisha'),
(4, 'bav.PNG', 'image/png', 19681, 'manisha'),
(5, '', '', 0, 'manisha'),
(6, 'crypto1.PNG', 'image/png', 125425, 'manisha'),
(7, 'whole.PNG', 'image/png', 61227, 'manisha'),
(8, 'crypto4.1.PNG', 'image/png', 140000, 'manisha'),
(9, 'Koala.jpg', 'image/jpeg', 780831, 'mona'),
(10, 'addressbar.PNG', 'image/png', 5060, 'mona'),
(11, 'beddd.PNG', 'image/png', 84261, 'mona'),
(12, 'beddd.PNG', 'image/png', 84261, 'mona'),
(13, 'beddd.PNG', 'image/png', 84261, 'mona'),
(14, 'beddd.PNG', 'image/png', 84261, 'mona'),
(15, 'f1.PNG', 'image/png', 531874, 'mona'),
(16, 'f1.PNG', 'image/png', 531874, 'mona'),
(17, 'f1.PNG', 'image/png', 531874, 'mona'),
(18, 'bmc sheet.png', 'image/png', 130168, 'mona'),
(19, 'Sleep Away.mp3', 'audio/mp3', 4842585, 'manisha'),
(20, 'Wildlife.wmv', 'video/x-ms-wmv', 26246026, 'manisha');

-- --------------------------------------------------------

--
-- Table structure for table `upld_file`
--

CREATE TABLE `upld_file` (
  `Id` int(255) NOT NULL,
  `FileName` varchar(255) NOT NULL,
  `FileType` varchar(255) NOT NULL,
  `Uplddate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `upld_file`
--

INSERT INTO `upld_file` (`Id`, `FileName`, `FileType`, `Uplddate`) VALUES
(3, 'Chrysanthemum.jpg', 'image/jpeg', '2020-05-30 20:46:04'),
(4, 'Desert.jpg', 'image/jpeg', '2020-05-30 20:46:29'),
(5, 'abcs.PNG', 'image/png', '2020-05-30 20:51:51'),
(6, 'bav.PNG', 'image/png', '2020-05-30 20:55:10'),
(8, 'crypto1.PNG', 'image/png', '2020-05-30 21:01:42'),
(9, 'whole.PNG', 'image/png', '2020-05-31 06:59:46'),
(10, 'crypto4.1.PNG', 'image/png', '2020-05-31 07:12:19'),
(11, 'Koala.jpg', 'image/jpeg', '2020-05-31 08:28:44'),
(12, 'addressbar.PNG', 'image/png', '2020-05-31 08:33:56'),
(13, 'beddd.PNG', 'image/png', '2020-05-31 08:35:41'),
(14, 'beddd.PNG', 'image/png', '2020-05-31 08:37:04'),
(15, 'beddd.PNG', 'image/png', '2020-05-31 08:38:29'),
(16, 'beddd.PNG', 'image/png', '2020-05-31 08:39:53'),
(17, 'f1.PNG', 'image/png', '2020-05-31 08:40:13'),
(18, 'f1.PNG', 'image/png', '2020-05-31 08:41:11'),
(19, 'f1.PNG', 'image/png', '2020-05-31 08:41:58'),
(20, 'bmc sheet.png', 'image/png', '2020-05-31 08:42:58'),
(21, 'Sleep Away.mp3', 'audio/mp3', '2020-05-31 17:41:51'),
(22, 'Wildlife.wmv', 'video/x-ms-wmv', '2020-05-31 17:42:29');

-- --------------------------------------------------------

--
-- Table structure for table `userfiles`
--

CREATE TABLE `userfiles` (
  `FileID` int(6) NOT NULL COMMENT '000001',
  `FilePath` varchar(255) NOT NULL,
  `FileName` varchar(100) NOT NULL,
  `FileType` varchar(100) NOT NULL,
  `FileSize` int(255) NOT NULL,
  `DateUploaded` timestamp NOT NULL DEFAULT current_timestamp(),
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userfiles`
--

INSERT INTO `userfiles` (`FileID`, `FilePath`, `FileName`, `FileType`, `FileSize`, `DateUploaded`, `username`) VALUES
(72, 'C:xampp	mpphpB371.tmp', 'Tulips.jpg', 'image/jpeg', 620888, '2020-05-30 10:10:39', 'mona'),
(81, 'C:xampp	mpphp7345.tmp', 'crypto1.PNG', 'image/png', 125425, '2020-05-30 15:31:42', 'manisha'),
(82, 'C:xampp	mpphp1D5F.tmp', 'whole.PNG', 'image/png', 61227, '2020-05-31 01:29:46', 'manisha'),
(83, 'C:xampp	mpphp98C6.tmp', 'crypto4.1.PNG', 'image/png', 140000, '2020-05-31 01:42:19', 'manisha'),
(93, 'C:xampp	mpphp999A.tmp', 'bmc sheet.png', 'image/png', 130168, '2020-05-31 03:12:58', 'mona'),
(94, 'C:xampp	mpphpF5A9.tmp', 'Sleep Away.mp3', 'audio/mp3', 4842585, '2020-05-31 12:11:51', 'manisha'),
(95, 'C:xampp	mpphp88B5.tmp', 'Wildlife.wmv', 'video/x-ms-wmv', 26246026, '2020-05-31 12:12:29', 'manisha');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `del_file`
--
ALTER TABLE `del_file`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `demotable`
--
ALTER TABLE `demotable`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `totalfileupld`
--
ALTER TABLE `totalfileupld`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `upld_file`
--
ALTER TABLE `upld_file`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `userfiles`
--
ALTER TABLE `userfiles`
  ADD PRIMARY KEY (`FileID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `del_file`
--
ALTER TABLE `del_file`
  MODIFY `Id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `totalfileupld`
--
ALTER TABLE `totalfileupld`
  MODIFY `Id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `upld_file`
--
ALTER TABLE `upld_file`
  MODIFY `Id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `userfiles`
--
ALTER TABLE `userfiles`
  MODIFY `FileID` int(6) NOT NULL AUTO_INCREMENT COMMENT '000001', AUTO_INCREMENT=96;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
