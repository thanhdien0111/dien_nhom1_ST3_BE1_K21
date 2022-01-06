-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 06, 2022 at 12:26 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nhom1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `password`) VALUES
(4, 'admin', '202cb962ac59075b964b07152d234b70'),
(5, 'admin2', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `manufactures`
--

DROP TABLE IF EXISTS `manufactures`;
CREATE TABLE IF NOT EXISTS `manufactures` (
  `manu_id` int(11) NOT NULL AUTO_INCREMENT,
  `manu_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`manu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `manufactures`
--

INSERT INTO `manufactures` (`manu_id`, `manu_name`) VALUES
(1, 'HP'),
(2, 'Apple'),
(3, 'Oppo'),
(4, 'LG'),
(5, 'Dell'),
(6, 'Vivo'),
(7, 'Asus'),
(8, 'Macbook'),
(9, 'Samsung'),
(10, 'dell'),
(17, 'DAUMIER'),
(11, 'Vsmart'),
(12, 'Iphone');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `images` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `manu_id` int(50) DEFAULT NULL,
  `type_id` int(50) NOT NULL,
  `price` int(11) NOT NULL,
  `descrition` text COLLATE utf8_unicode_ci NOT NULL,
  `feature` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sale` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `images`, `manu_id`, `type_id`, `price`, `descrition`, `feature`, `created_at`, `sale`) VALUES
(18, 'Laptop HP Omen 15 ek0078TX', 'th (3).jpg', 12, 12, 56990000, 'Cấu hình Laptop HP Omen 15 ek0078TX i7 10750H/16GB/1TB SSD/8GB RTX2070 Max-Q/300Hz/Office H&S2019/Win10 (26Y68PA)\r\nCPU: i7  10750H  2.6GHz\r\nMàn hình:15.6\"Full HD (1920 x 1080)300Hz\r\nỔ cứng: 1 TB SSD M.2 PCIe Hỗ trợ thêm 1 khe cắm SSD M.2 PCIe mở rộng', 0, '2021-11-25 11:10:49', 0),
(4, 'Smart Tivi LG 32 inch 32LM570BPTC', 'Smart-Tivi-LG-32-Inch-32LM570BPTC (1).jpg', 4, 4, 24000000, '', 0, '2021-11-25 11:10:49', 0),
(5, 'Dell Vostro 3560 Laptop (Core i5 3rd Gen/4 GB/500 GB/Windows 8)', 'dell-3560-core-i5-3rd-gen-4-gb-500-gb-windows-8-39993-large-1.jpg', 5, 12, 5800000, '', 0, '2021-11-25 11:10:49', 0),
(6, 'Máy giặt sấy LG Inverter 10.5 kg FV1450H2B', 'thinh_Danh-gia-may-giat-say-LG-Inverter-10.5-kg-FV1450H2B-10.jpg', 4, 16, 26490000, '', 0, '2021-11-25 11:10:49', 0),
(7, 'Điện thoại Vivo X70 Pro 5G', 'Vivo-X70-Pro-Plus-5G-Official-image.jpg', 6, 14, 18990000, '', 0, '2021-11-25 11:10:49', 0),
(8, 'Laptop Asus ROG Zephyrus G14 Alan Walker ', 'th.jpg', 7, 12, 42490000, '', 0, '2021-11-25 11:10:49', 0),
(9, 'Laptop Apple MacBook Pro M1 2020 16GB/1TB SSD (Z11C000CJ) ', 'u_10220829.jpg', 8, 12, 52990000, '', 0, '2021-11-25 11:10:49', 0),
(15, 'Loa Bluetooth JBL Clip 4', 'th (1).jpg', 9, 5, 1590000, '', 0, '2021-11-25 11:10:49', 0),
(13, 'Điện thoại iPhone 13 Pro Max 128GB', 'iphone-13-pro-max-mau-tim.jpg', 12, 14, 33990000, '', 0, '2021-11-25 11:10:49', 0),
(14, 'Điện thoại iPhone 12 Pro Max 512GB ', '10047737-dien-thoai-iphone-12-pro-max-512gb-xanh-1.jpg', 12, 14, 41990000, '', 0, '2021-11-25 11:10:49', 0),
(16, 'Dây sạc Iphone 12/12 Promax', '1724_day_s___c_ip12__chinh_hang_5.jpg', 12, 1, 150000, '', 0, '2021-11-25 11:10:49', 0),
(17, 'Đồng hồ Nam Daumier The Flash DM-JLW015B.FIGN.2GNI.S.M', 'daumier-dm-jlw015b-fign-2gni-s-m-nam-2-3-org.jpg', 17, 17, 10105000, '', 0, '2021-11-25 11:10:49', 0),
(19, 'Tai nghe Bluetooth Airpods apple MMEF2', 'tai-nghe-bluetooth-airpods-apple-mmef2-org-1.jpg', 2, 2, 2500000, '', 0, '2021-11-25 11:10:49', 0);

-- --------------------------------------------------------

--
-- Table structure for table `protypes`
--

DROP TABLE IF EXISTS `protypes`;
CREATE TABLE IF NOT EXISTS `protypes` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`type_id`),
  UNIQUE KEY `Máy giặt` (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `protypes`
--

INSERT INTO `protypes` (`type_id`, `type_name`) VALUES
(12, 'laptop'),
(2, 'Tai nghe'),
(17, 'Đồng Hồ'),
(4, 'Tivi'),
(5, 'Loa'),
(1, 'Phụ kiện'),
(14, 'Điện Thoại'),
(16, 'Máy Giặt'),
(18, 'Máy giặt');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`) VALUES
(7, 'user', '202cb962ac59075b964b07152d234b70'),
(8, 'user1', '202cb962ac59075b964b07152d234b70');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
