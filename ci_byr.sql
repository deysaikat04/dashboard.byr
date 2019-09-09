-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2019 at 08:15 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

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
-- Table structure for table `booking_detail`
--

CREATE TABLE `booking_detail` (
  `id` int(50) NOT NULL,
  `h_id` int(50) NOT NULL,
  `u_id` int(50) NOT NULL,
  `rooms` int(10) NOT NULL,
  `people` int(10) NOT NULL,
  `nights` int(5) NOT NULL,
  `dateFrom` varchar(20) NOT NULL,
  `dateTo` varchar(20) NOT NULL,
  `netTotal` int(50) NOT NULL,
  `cgst` int(50) NOT NULL,
  `sgst` int(50) NOT NULL,
  `grand` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking_detail`
--

INSERT INTO `booking_detail` (`id`, `h_id`, `u_id`, `rooms`, `people`, `nights`, `dateFrom`, `dateTo`, `netTotal`, `cgst`, `sgst`, `grand`) VALUES
(7, 5, 4, 1, 3, 1, '11-05-2018', '12-05-2018', 3500, 315, 315, 4130),
(8, 8, 4, 2, 2, 1, '16-05-2018', '16-05-2018', 6400, 576, 576, 7552),
(9, 7, 4, 2, 1, 2, '15-05-2018', '17-05-2018', 14800, 1332, 1332, 17464);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `c_id` int(5) NOT NULL,
  `c_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`c_id`, `c_name`) VALUES
(1, 'Mumbai'),
(2, 'Delhi '),
(3, 'Chennai'),
(4, 'Bangalore'),
(5, 'Hyderabad'),
(6, 'Kolkata'),
(7, 'Pune'),
(8, 'Jaipur'),
(9, 'Agra'),
(10, 'Lucknow');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

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
(7, 'The Shalimar Hotel', 'Mumbai', 'Mumbai', 3700, 4, 1, '2018-05-09 14:47:42', '2018-05-09 14:47:42'),
(8, 'Executive Enclave', 'Mumbai', 'Mumbai', 3200, 4, 1, '2018-05-09 14:50:28', '2018-05-09 14:50:28'),
(9, 'Ramadha Hotel', 'Bangalore', 'Bangalore', 3900, 4, 1, '2018-05-09 14:53:24', '2018-05-09 14:53:24'),
(10, 'Hotel Royal', 'Bangalore', 'Bangalore', 4000, 4, 1, '2018-05-09 14:55:08', '2018-05-09 14:55:08'),
(11, 'The Lalit Great Eastern Kolkat', '1,2, 3, Old Court House Street,Dalhousie Square', 'Kolkata', 8330, 99, 99, '2018-05-10 06:20:12', '2018-05-10 06:20:12'),
(12, 'The Lalit Delhi', 'Barakhamba Avenue, Connaught Place, City center, N', 'Delhi', 7513, 99, 99, '2018-05-10 06:24:09', '2018-05-10 06:24:09'),
(13, 'Resort Rio', 'Tambudki, Arpora, Goa', 'Goa', 4632, 55, 99, '2018-05-10 06:27:07', '2018-05-10 06:27:07'),
(14, 'wer', 'wer', 'wer', 1, 1, 1, '2018-09-21 11:49:32', '2018-09-21 11:49:32');

-- --------------------------------------------------------

--
-- Table structure for table `image_tb`
--

CREATE TABLE `image_tb` (
  `id` int(50) NOT NULL,
  `h_id` int(50) NOT NULL,
  `file_name` varchar(300) NOT NULL,
  `is_cover` tinyint(4) NOT NULL,
  `path` varchar(100) NOT NULL,
  `tou` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `toc` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image_tb`
--

INSERT INTO `image_tb` (`id`, `h_id`, `file_name`, `is_cover`, `path`, `tou`, `toc`) VALUES
(36, 4, '45dd142f4262e8d0cd6f78e28e27373f.jpg', 0, 'assets/images/hotel/4/45dd142f4262e8d0cd6f78e28e27373f.jpg', '2018-05-09 14:33:06', '2018-05-09 14:33:06'),
(37, 4, '46d84d011500eb4989b57ea9b18aaadf.jpg', 0, 'assets/images/hotel/4/46d84d011500eb4989b57ea9b18aaadf.jpg', '2018-05-09 14:33:06', '2018-05-09 14:33:06'),
(38, 4, 'aaec14718436e26e4b98a7522df9c4de.jpg', 0, 'assets/images/hotel/4/aaec14718436e26e4b98a7522df9c4de.jpg', '2018-05-09 14:33:06', '2018-05-09 14:33:06'),
(39, 4, 'ad2cf15175c754a3254ae551d254f2b6.jpg', 0, 'assets/images/hotel/4/ad2cf15175c754a3254ae551d254f2b6.jpg', '2018-05-09 14:33:06', '2018-05-09 14:33:06'),
(40, 4, 'd66a10c77b4b14aa728dfe8898477aca.jpg', 0, 'assets/images/hotel/4/d66a10c77b4b14aa728dfe8898477aca.jpg', '2018-05-09 14:33:06', '2018-05-09 14:33:06'),
(42, 5, '2e353b2f35555889be52359b3fc894d1.jpg', 0, 'assets/images/hotel/5/2e353b2f35555889be52359b3fc894d1.jpg', '2018-05-09 14:34:56', '2018-05-09 14:34:56'),
(43, 5, '3c61f36151b625630cbae3d74d60d4f5.jpg', 0, 'assets/images/hotel/5/3c61f36151b625630cbae3d74d60d4f5.jpg', '2018-05-09 14:34:56', '2018-05-09 14:34:56'),
(44, 5, '84995e51014aaeff4f19903a06ce951b.jpg', 0, 'assets/images/hotel/5/84995e51014aaeff4f19903a06ce951b.jpg', '2018-05-09 14:34:56', '2018-05-09 14:34:56'),
(45, 5, 'fce01e1d56e1ebcec283aabdea104013.jpg', 0, 'assets/images/hotel/5/fce01e1d56e1ebcec283aabdea104013.jpg', '2018-05-09 14:34:56', '2018-05-09 14:34:56'),
(46, 5, 'c4174a5e9da2a1832385c7036796f9ba.jpg', 0, 'assets/images/hotel/5/c4174a5e9da2a1832385c7036796f9ba.jpg', '2018-05-09 14:34:56', '2018-05-09 14:34:56'),
(47, 4, '330d9f5def39b761813b0c17515c743f.jpg', 1, 'assets/images/hotel/4/330d9f5def39b761813b0c17515c743f.jpg', '2018-05-09 14:39:17', '2018-05-09 14:33:06'),
(48, 7, '983990e42092c2de9fe68ba819e5d6d8.jpg', 1, 'assets/images/hotel/7/983990e42092c2de9fe68ba819e5d6d8.jpg', '2018-05-09 14:47:42', '2018-05-09 14:47:42'),
(49, 7, 'a5036c637ccba1a6d3b4a973ad2f6f6a.jpg', 0, 'assets/images/hotel/7/a5036c637ccba1a6d3b4a973ad2f6f6a.jpg', '2018-05-09 14:47:42', '2018-05-09 14:47:42'),
(50, 7, '436a98693f18e33b710e6c37f5708949.jpg', 0, 'assets/images/hotel/7/436a98693f18e33b710e6c37f5708949.jpg', '2018-05-09 14:47:42', '2018-05-09 14:47:42'),
(51, 7, '4d457b5b6904ac1de07f62c82ab9ff20.jpg', 0, 'assets/images/hotel/7/4d457b5b6904ac1de07f62c82ab9ff20.jpg', '2018-05-09 14:47:42', '2018-05-09 14:47:42'),
(52, 7, 'd6cd58c7d37a3ba976608403abff4f4f.jpg', 0, 'assets/images/hotel/7/d6cd58c7d37a3ba976608403abff4f4f.jpg', '2018-05-09 14:47:42', '2018-05-09 14:47:42'),
(53, 7, '85fe8d6ca91f51e597d98967f2eeff28.jpg', 0, 'assets/images/hotel/7/85fe8d6ca91f51e597d98967f2eeff28.jpg', '2018-05-09 14:47:42', '2018-05-09 14:47:42'),
(54, 8, '468fc3f86f2f659f4a2e0ce7517c3a87.jpg', 1, 'assets/images/hotel/8/468fc3f86f2f659f4a2e0ce7517c3a87.jpg', '2018-05-09 14:50:28', '2018-05-09 14:50:28'),
(55, 8, '5aa3479b20e4fc223cc292738a264e65.jpg', 0, 'assets/images/hotel/8/5aa3479b20e4fc223cc292738a264e65.jpg', '2018-05-09 14:50:28', '2018-05-09 14:50:28'),
(56, 8, '9f61c71bb5bad87b13eb0c013c536996.jpg', 0, 'assets/images/hotel/8/9f61c71bb5bad87b13eb0c013c536996.jpg', '2018-05-09 14:50:28', '2018-05-09 14:50:28'),
(57, 8, 'baf270e7d0495c27abab0470030f8829.jpg', 0, 'assets/images/hotel/8/baf270e7d0495c27abab0470030f8829.jpg', '2018-05-09 14:50:28', '2018-05-09 14:50:28'),
(58, 8, '047c896dd83f8590bbe36769da67a165.jpg', 0, 'assets/images/hotel/8/047c896dd83f8590bbe36769da67a165.jpg', '2018-05-09 14:50:28', '2018-05-09 14:50:28'),
(59, 8, '8d831df11c1889f89b98d953447f4363.jpg', 0, 'assets/images/hotel/8/8d831df11c1889f89b98d953447f4363.jpg', '2018-05-09 14:51:16', '2018-05-09 14:50:28'),
(60, 9, 'edb513ea2b35e77707e0aeabf12df361.jpg', 1, 'assets/images/hotel/9/edb513ea2b35e77707e0aeabf12df361.jpg', '2018-05-09 14:53:24', '2018-05-09 14:53:24'),
(61, 9, '7227e6f85dafee73aa75f63c00f7d729.jpg', 0, 'assets/images/hotel/9/7227e6f85dafee73aa75f63c00f7d729.jpg', '2018-05-09 14:53:24', '2018-05-09 14:53:24'),
(62, 9, '5cef14e8713e642968fe8e2e9e6eeeba.jpg', 0, 'assets/images/hotel/9/5cef14e8713e642968fe8e2e9e6eeeba.jpg', '2018-05-09 14:53:24', '2018-05-09 14:53:24'),
(63, 9, '9f74d8185406693e2cc89d884dd57aff.jpg', 0, 'assets/images/hotel/9/9f74d8185406693e2cc89d884dd57aff.jpg', '2018-05-09 14:53:24', '2018-05-09 14:53:24'),
(64, 9, 'cb846f18967adb392016cfa4f7b3761f.jpg', 0, 'assets/images/hotel/9/cb846f18967adb392016cfa4f7b3761f.jpg', '2018-05-09 14:53:24', '2018-05-09 14:53:24'),
(65, 9, 'adf285071dc0f2554f40731fabf0505e.jpg', 0, 'assets/images/hotel/9/adf285071dc0f2554f40731fabf0505e.jpg', '2018-05-09 14:53:24', '2018-05-09 14:53:24'),
(66, 10, '3c8236a03181ed4f97ba0501d0d6562b.jpg', 1, 'assets/images/hotel/10/3c8236a03181ed4f97ba0501d0d6562b.jpg', '2018-05-09 14:55:08', '2018-05-09 14:55:08'),
(67, 10, '4fedb5ddec3a6bce5526f34b5ba0c510.jpg', 0, 'assets/images/hotel/10/4fedb5ddec3a6bce5526f34b5ba0c510.jpg', '2018-05-09 14:55:08', '2018-05-09 14:55:08'),
(68, 10, 'ff9b26dc7f7203db147e08cd4276221c.jpg', 0, 'assets/images/hotel/10/ff9b26dc7f7203db147e08cd4276221c.jpg', '2018-05-09 14:55:08', '2018-05-09 14:55:08'),
(69, 10, '88645ccf8875535c1b192df3e8cfd651.jpg', 0, 'assets/images/hotel/10/88645ccf8875535c1b192df3e8cfd651.jpg', '2018-05-09 14:55:08', '2018-05-09 14:55:08'),
(70, 10, '6609b2e1d186c72a7e0cf39d69a98f84.png', 0, 'assets/images/hotel/10/6609b2e1d186c72a7e0cf39d69a98f84.png', '2018-05-09 14:55:08', '2018-05-09 14:55:08'),
(71, 10, '70a17d99fe4e2822de97544626ca9a0e.jpg', 0, 'assets/images/hotel/10/70a17d99fe4e2822de97544626ca9a0e.jpg', '2018-05-09 14:55:08', '2018-05-09 14:55:08'),
(72, 11, '72bf20c028e78611453d9f8708b18fef.jpg', 1, 'assets/images/hotel/11/72bf20c028e78611453d9f8708b18fef.jpg', '2018-05-10 06:20:12', '2018-05-10 06:20:12'),
(73, 11, '2a584f517a885389f84fbecee3919cf3.jpg', 0, 'assets/images/hotel/11/2a584f517a885389f84fbecee3919cf3.jpg', '2018-05-10 06:20:12', '2018-05-10 06:20:12'),
(74, 11, '155587463f9dfb472efae174d02138b0.jpg', 0, 'assets/images/hotel/11/155587463f9dfb472efae174d02138b0.jpg', '2018-05-10 06:20:13', '2018-05-10 06:20:13'),
(75, 11, 'ab885cde1af3f69a926f7582eba085d4.jpg', 0, 'assets/images/hotel/11/ab885cde1af3f69a926f7582eba085d4.jpg', '2018-05-10 06:20:13', '2018-05-10 06:20:13'),
(76, 11, 'cf2a785569f357f602056a2099ef0971.jpg', 0, 'assets/images/hotel/11/cf2a785569f357f602056a2099ef0971.jpg', '2018-05-10 06:20:13', '2018-05-10 06:20:13'),
(77, 12, 'd49e06640bedea2b14e97ef43be531e1.jpg', 1, 'assets/images/hotel/12/d49e06640bedea2b14e97ef43be531e1.jpg', '2018-05-10 06:24:09', '2018-05-10 06:24:09'),
(78, 12, '6eca160a1d68b87f600de0b63c86e053.jpg', 0, 'assets/images/hotel/12/6eca160a1d68b87f600de0b63c86e053.jpg', '2018-05-10 06:24:10', '2018-05-10 06:24:10'),
(79, 12, '3e56797a4e2bdf0495490e73b7e2113a.jpg', 0, 'assets/images/hotel/12/3e56797a4e2bdf0495490e73b7e2113a.jpg', '2018-05-10 06:24:10', '2018-05-10 06:24:10'),
(80, 12, 'a2a50d34692256375dc21e693f558c91.jpg', 0, 'assets/images/hotel/12/a2a50d34692256375dc21e693f558c91.jpg', '2018-05-10 06:24:10', '2018-05-10 06:24:10'),
(81, 12, 'c0e798d58a1021b2cd2b15c8a6cb0aba.jpg', 0, 'assets/images/hotel/12/c0e798d58a1021b2cd2b15c8a6cb0aba.jpg', '2018-05-10 06:24:10', '2018-05-10 06:24:10'),
(82, 13, 'cce3ad009e2648627784383694ea6e82.jpg', 1, 'assets/images/hotel/13/cce3ad009e2648627784383694ea6e82.jpg', '2018-05-10 06:27:07', '2018-05-10 06:27:07'),
(83, 13, '5d50063ab1bdabab7e8038bc30e17224.jpg', 0, 'assets/images/hotel/13/5d50063ab1bdabab7e8038bc30e17224.jpg', '2018-05-10 06:27:07', '2018-05-10 06:27:07'),
(84, 13, '8c6d31965ab55727951b11dcf2c7a1ab.jpg', 0, 'assets/images/hotel/13/8c6d31965ab55727951b11dcf2c7a1ab.jpg', '2018-05-10 06:27:07', '2018-05-10 06:27:07'),
(85, 13, '2fe1ab107d0b0f74e64d098f59029a36.jpg', 0, 'assets/images/hotel/13/2fe1ab107d0b0f74e64d098f59029a36.jpg', '2018-05-10 06:27:07', '2018-05-10 06:27:07'),
(86, 13, '1c7866bfe9289acb15f9106f10f5bf9f.jpg', 0, 'assets/images/hotel/13/1c7866bfe9289acb15f9106f10f5bf9f.jpg', '2018-05-10 06:27:07', '2018-05-10 06:27:07'),
(87, 13, '577f2745fcbb8660aaf4e2bc2bf730ae.jpg', 0, 'assets/images/hotel/13/577f2745fcbb8660aaf4e2bc2bf730ae.jpg', '2018-05-10 06:27:07', '2018-05-10 06:27:07'),
(89, 5, '56f3c9f4d59e1d663ecfd181553e5de3.jpg', 1, 'assets/images/hotel/5/56f3c9f4d59e1d663ecfd181553e5de3.jpg', '2018-05-10 06:34:00', '2018-05-09 14:34:56');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login_attempts`
--

INSERT INTO `login_attempts` (`id`, `ip_address`, `login`, `time`) VALUES
(1, '127.0.0.1', 'abc@abc.com', 1550892746);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', '', NULL, NULL, NULL, 1268889823, 1550892753, 1, 'Admin', 'istrator', 'ADMIN', '0'),
(2, '127.0.0.1', 'dsaikat378@gmail.com', '$2y$08$MumPk5ODtjVP81ePfnDA2O3QsIs9Fo1Gtk1aTmMBL3.XkAhSHf0Py', NULL, 'dsaikat378@gmail.com', NULL, NULL, NULL, NULL, 1514887403, 1514887555, 1, 'Saikat', 'Dey', 'ADMIN', '0');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(8, 1, 2),
(6, 2, 1),
(7, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_tb`
--

CREATE TABLE `user_tb` (
  `id` int(50) NOT NULL,
  `name` varchar(20) NOT NULL,
  `u_name` varchar(100) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `mail` varchar(20) NOT NULL,
  `mobile` bigint(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_tb`
--

INSERT INTO `user_tb` (`id`, `name`, `u_name`, `pass`, `address`, `mail`, `mobile`) VALUES
(4, 'Saikat Dey', 'sak', 'sak', 'Howrah', 'saikat@saikat.com', 8981380649);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking_detail`
--
ALTER TABLE `booking_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `u_id` (`u_id`),
  ADD KEY `h_id` (`h_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_tb`
--
ALTER TABLE `hotel_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_tb`
--
ALTER TABLE `image_tb`
  ADD PRIMARY KEY (`id`),
  ADD KEY `h_id` (`h_id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- Indexes for table `user_tb`
--
ALTER TABLE `user_tb`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking_detail`
--
ALTER TABLE `booking_detail`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `c_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `hotel_tb`
--
ALTER TABLE `hotel_tb`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `image_tb`
--
ALTER TABLE `image_tb`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `user_tb`
--
ALTER TABLE `user_tb`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking_detail`
--
ALTER TABLE `booking_detail`
  ADD CONSTRAINT `booking_detail_ibfk_1` FOREIGN KEY (`h_id`) REFERENCES `hotel_tb` (`id`),
  ADD CONSTRAINT `booking_detail_ibfk_2` FOREIGN KEY (`u_id`) REFERENCES `user_tb` (`id`),
  ADD CONSTRAINT `booking_detail_ibfk_3` FOREIGN KEY (`h_id`) REFERENCES `hotel_tb` (`id`),
  ADD CONSTRAINT `booking_detail_ibfk_4` FOREIGN KEY (`h_id`) REFERENCES `hotel_tb` (`id`);

--
-- Constraints for table `image_tb`
--
ALTER TABLE `image_tb`
  ADD CONSTRAINT `image_tb_ibfk_1` FOREIGN KEY (`h_id`) REFERENCES `hotel_tb` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
