-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2018 at 11:12 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_byr`
--

-- --------------------------------------------------------

--
-- Table structure for table `hotel_tb`
--

CREATE TABLE `hotel_tb` (
  `id` int(50) NOT NULL,
  `h_name` varchar(100) NOT NULL,
  `location` varchar(50) NOT NULL,
  `city` varchar(20) NOT NULL,
  `cpn` int(10) NOT NULL,
  `rooms` int(10) NOT NULL,
  `beds` int(10) NOT NULL,
  `tou` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `toc` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel_tb`
--

INSERT INTO `hotel_tb` (`id`, `h_name`, `location`, `city`, `cpn`, `rooms`, `beds`, `tou`, `toc`) VALUES
(4, 'Livel', 'Chennai', 'Chennai', 3200, 4, 1, '2018-05-09 14:41:46', '2018-05-09 14:33:06'),
(5, 'The Pride Hotel Chennai', 'Chennai', 'Chennai', 3500, 4, 1, '2018-05-09 14:34:56', '2018-05-09 14:34:56'),
(6, 'The Shalimar Hotel', 'Mumbai', 'Mumbai', 3700, 4, 1, '2018-05-09 14:41:12', '2018-05-09 14:41:12'),
(7, 'The Shalimar Hotel', 'Mumbai', 'Mumbai', 3700, 4, 1, '2018-05-09 14:47:42', '2018-05-09 14:47:42'),
(8, 'Executive Enclave', 'Mumbai', 'Mumbai', 3200, 4, 1, '2018-05-09 14:50:28', '2018-05-09 14:50:28'),
(9, 'Ramadha Hotel', 'Bangalore', 'Bangalore', 3900, 4, 1, '2018-05-09 14:53:24', '2018-05-09 14:53:24'),
(10, 'Hotel Royal', 'Bangalore', 'Bangalore', 4000, 4, 1, '2018-05-09 14:55:08', '2018-05-09 14:55:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hotel_tb`
--
ALTER TABLE `hotel_tb`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hotel_tb`
--
ALTER TABLE `hotel_tb`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
