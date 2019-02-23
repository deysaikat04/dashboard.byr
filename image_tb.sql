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
(41, 5, '8d25cc8a978fe101d7df15866882bf9c.jpg', 1, 'assets/images/hotel/5/8d25cc8a978fe101d7df15866882bf9c.jpg', '2018-05-09 14:34:56', '2018-05-09 14:34:56'),
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
(71, 10, '70a17d99fe4e2822de97544626ca9a0e.jpg', 0, 'assets/images/hotel/10/70a17d99fe4e2822de97544626ca9a0e.jpg', '2018-05-09 14:55:08', '2018-05-09 14:55:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `image_tb`
--
ALTER TABLE `image_tb`
  ADD PRIMARY KEY (`id`),
  ADD KEY `h_id` (`h_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `image_tb`
--
ALTER TABLE `image_tb`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `image_tb`
--
ALTER TABLE `image_tb`
  ADD CONSTRAINT `image_tb_ibfk_1` FOREIGN KEY (`h_id`) REFERENCES `hotel_tb` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
