-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2018 at 09:59 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `minigrosir`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) UNSIGNED NOT NULL,
  `identifier` int(11) DEFAULT NULL,
  `name` varchar(150) DEFAULT '',
  `phone` varchar(150) DEFAULT '',
  `department` varchar(150) DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `identifier`, `name`, `phone`, `department`, `created_at`, `updated_at`) VALUES
(4, 1, 'Jordy Jonatan', '081289256242', 'Developer', '2017-12-05 08:46:18', '2017-12-06 06:03:11'),
(5, 2, 'Developer', '0000', 'Developer', '2017-12-05 08:51:35', '2017-12-06 06:03:12'),
(6, 53, 'Admin', '0000', 'Developer', '2018-01-05 08:45:23', '2018-01-05 08:45:23');

-- --------------------------------------------------------

--
-- Table structure for table `agen`
--

CREATE TABLE `agen` (
  `id` int(11) UNSIGNED NOT NULL,
  `identifier` int(11) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `phone` varchar(150) DEFAULT NULL,
  `address` longtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `barcode`
--

CREATE TABLE `barcode` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `voucher_id` int(11) DEFAULT NULL,
  `subtotal` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `tax` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cart_detail`
--

CREATE TABLE `cart_detail` (
  `id` int(11) UNSIGNED NOT NULL,
  `cart_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(11) UNSIGNED NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `recipient_id` int(11) DEFAULT NULL,
  `message` longtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `order_id`, `sender_id`, `recipient_id`, `message`, `created_at`, `updated_at`) VALUES
(4, 19, 33, 7, 'Selamat Siang', '2018-01-16 08:23:06', '2018-01-16 08:23:06'),
(5, 19, 7, 33, 'Ya selamat siang, ada yang bisa saya bantu?', '2018-01-16 08:23:25', '2018-01-16 08:23:25'),
(6, 19, 33, 7, 'saya mau nanya', '2018-01-16 08:23:35', '2018-01-16 08:23:35'),
(7, 19, 33, 7, 'harga barang bisa nego lagi gak ya?', '2018-01-16 08:23:45', '2018-01-16 08:23:45'),
(8, 19, 33, 7, 'Halo gan', '2018-01-16 08:36:06', '2018-01-16 08:36:06'),
(9, 19, 33, 7, 'Gimana gan?', '2018-01-16 08:38:25', '2018-01-16 08:38:25'),
(10, 17, 33, 7, 'Gan??', '2018-01-16 08:38:40', '2018-01-16 08:38:40'),
(11, 17, 7, 33, 'Ya bro? Ada apa?', '2018-01-17 11:43:03', '2018-01-17 11:43:03'),
(12, 19, 33, 7, 'Test', '2018-01-18 10:47:37', '2018-01-18 10:47:37'),
(13, 38, 54, 7, 'Hai bajigur', '2018-01-19 10:32:37', '2018-01-19 10:32:37'),
(14, 38, 7, 54, 'Oiiii', '2018-01-19 10:33:06', '2018-01-19 10:33:06'),
(15, 38, 7, 54, 'Ud makan belom??', '2018-01-19 10:33:37', '2018-01-19 10:33:37');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) UNSIGNED NOT NULL,
  `identifier` int(11) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `phone` varchar(150) DEFAULT NULL,
  `address` longtext,
  `lat` varchar(150) DEFAULT '0',
  `lng` varchar(150) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `identifier`, `name`, `phone`, `address`, `lat`, `lng`, `created_at`, `updated_at`) VALUES
(1, 3, 'Jordy Jonatan', '081289256242', 'Jl. Daan Mogot', '0', '0', '2017-12-05 15:21:45', '2017-12-06 06:03:33'),
(27, 33, 'George', '08999310048', 'Jalan Princess Alice 2,Kelapa Dua,Tangerang', '-6.2429802', '106.6138121', '2017-12-29 06:28:31', '2018-01-09 08:56:49'),
(28, 34, 'Jonatan', '08921038201', 'Balikpapan City, East Kalimantan, Indonesia', '0', '0', '2017-12-29 06:31:28', '2017-12-29 06:31:28');

-- --------------------------------------------------------

--
-- Table structure for table `fcm`
--

CREATE TABLE `fcm` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `fcm_token` varchar(255) DEFAULT '',
  `device_platform` varchar(150) DEFAULT '',
  `uuid` varchar(150) DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fcm`
--

INSERT INTO `fcm` (`id`, `user_id`, `role_id`, `fcm_token`, `device_platform`, `uuid`, `created_at`, `updated_at`) VALUES
(11, 33, 2, 'fK5dbeioCAc:APA91bF9E22H0OwUTho7dzkxzFbu9kaQAqsCTbOwl7p1-pmw63uNFaM2RhCT0aYOQP0VNkwfV5Vr1sBohUqOEv2zFdB43y-IhfsSrZCOz1VzHFPJ2Sh7G7F7SoT9KSc_zvDHqJ4i2qrx', 'Android', 'e9f514591774e2e', '2018-01-04 08:33:51', '2018-01-04 08:33:51'),
(31, 54, 2, 'ej5NtYrT5xU:APA91bE6NhOmW55sLKjeaKTSEbax76yHVdJ1N10V1X1hKDDu3fxeztGiQjoFXg4j8cgiLUR5--eFDUqeS_9kdt7JBO5QZWbuJzyLUjzeFfg_NvVA4ajN97SkKjUC1vd42fTMRO_LWFbw', 'Android', '85f07cd331a95c3c', '2018-01-19 10:28:46', '2018-01-19 10:28:46'),
(32, 7, 4, 'fXIFLmdfd-8:APA91bFZ2iHAOt23jhY0w-I6EMA_59jT3BvIOSyiHUgnlU5-uIVBWf5CnxIgKpQuULtxxHwV04chiHtwOKgoWseoIm1Ywu1drNX7fdpuRpfUpsx4kWq8vqMFK35ogtTLOToBNTzrJt0n', 'Android', '3e570fcb43352536', '2018-01-19 18:06:36', '2018-01-19 18:06:36');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) UNSIGNED NOT NULL,
  `invoice_no` varchar(150) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `subtotal` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `tax` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_cancel`
--

CREATE TABLE `order_cancel` (
  `id` int(11) UNSIGNED NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `cancel_by` int(11) DEFAULT NULL,
  `reason` longtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) UNSIGNED NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `qty` int(11) DEFAULT NULL,
  `base_price` float NOT NULL,
  `nego_price` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) UNSIGNED NOT NULL,
  `product_name` varchar(150) NOT NULL DEFAULT '',
  `category_id` int(11) NOT NULL,
  `price_for_customer` float NOT NULL,
  `price_for_agen` float NOT NULL,
  `description` longtext NOT NULL,
  `img_url` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(80) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(150) NOT NULL DEFAULT '',
  `slug` varchar(150) NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order`
--

CREATE TABLE `purchase_order` (
  `id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(50) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_cancel`
--

CREATE TABLE `purchase_order_cancel` (
  `id` int(11) NOT NULL,
  `purchase_order_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `cancel_by` int(11) NOT NULL,
  `reason` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_detail`
--

CREATE TABLE `purchase_order_detail` (
  `id` int(11) NOT NULL,
  `purchase_order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `receipt`
--

CREATE TABLE `receipt` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `header` text NOT NULL,
  `footer` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(50) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(150) NOT NULL DEFAULT '',
  `slug` varchar(150) NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', '2017-11-20 06:46:35', '0000-00-00 00:00:00'),
(2, 'Manager', 'manager', '2017-11-20 06:46:51', '0000-00-00 00:00:00'),
(3, 'Supervisor', 'supervisor', '2017-11-20 06:47:23', '0000-00-00 00:00:00'),
(4, 'Kasir', 'kasir', '2017-11-20 06:47:32', '2017-11-20 06:47:42'),
(5, 'Agen', 'agen', '2017-11-20 06:48:00', '0000-00-00 00:00:00'),
(6, 'Member', 'member', '2017-11-20 06:48:00', '0000-00-00 00:00:00'),
(7, 'Customer', 'customer', '2017-11-20 06:48:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stock_adjustment`
--

CREATE TABLE `stock_adjustment` (
  `id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `reason` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(50) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stock_history`
--

CREATE TABLE `stock_history` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `reason` varchar(40) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(50) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `id` int(11) NOT NULL,
  `store_name` varchar(50) NOT NULL,
  `phone` int(14) NOT NULL,
  `address` varchar(150) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `name` int(11) NOT NULL,
  `phone` int(11) NOT NULL,
  `address` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tax`
--

CREATE TABLE `tax` (
  `id` int(11) NOT NULL,
  `tax_name` int(11) NOT NULL,
  `tax_value` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(50) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transfer_order`
--

CREATE TABLE `transfer_order` (
  `id` int(11) NOT NULL,
  `store_id_from` int(11) NOT NULL,
  `store_id_to` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(40) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transfer_order_cancel`
--

CREATE TABLE `transfer_order_cancel` (
  `id` int(11) NOT NULL,
  `transfer_order_id` int(11) NOT NULL,
  `cancel_by` int(11) NOT NULL,
  `reason` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transfer_order_detail`
--

CREATE TABLE `transfer_order_detail` (
  `id` int(11) NOT NULL,
  `transfer_order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `transfer_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `email` varchar(150) DEFAULT '',
  `password` varchar(255) DEFAULT '',
  `api_key` varchar(255) DEFAULT '',
  `status` varchar(150) DEFAULT 'active',
  `remember_token` varchar(255) DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `email`, `password`, `api_key`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'jorjonna@gmail.com', '$2y$10$JhmCIKdDVrROlQ913JjiyOMprsCuvB8Wn8H.CzgqMGQli1UtinBF6', 'key-5a265cda9f1dc', 'active', '', '2017-12-28 09:26:31', '2017-12-28 09:22:58'),
(2, 1, 'dev@dev.com', '$2y$10$81fghEe6XwCWbPA3mrpnluDX4Ukv7Hy6kbmoJNtiPRkmCkmgRDoje', 'key-5a265e17644da', 'active', '', '2017-12-05 08:51:35', '2017-12-05 08:51:35'),
(3, 2, 'jordyjonatan93@yahoo.com', '$2y$10$dHXpldcwNzipHXoJOr4dneDEMGNY075WpDjNq3OvvPMqVRC9pUjFy', 'key-5a265e17644db', 'active', '', '2017-12-29 06:58:45', '2017-12-29 06:58:45'),
(4, 5, 'support@brother.co.id', '$2y$10$81fghEe6XwCWbPA3mrpnluDX4Ukv7Hy6kbmoJNtiPRkmCkmgRDoje', 'key-5a265e17644dc', 'active', '', '2017-12-06 09:51:20', '2017-12-06 09:51:20'),
(5, 3, 'support@brother.co.id', '$2y$10$81fghEe6XwCWbPA3mrpnluDX4Ukv7Hy6kbmoJNtiPRkmCkmgRDoje', 'key-5a265e17644dd', 'active', '', '2017-12-05 15:53:05', '0000-00-00 00:00:00'),
(7, 4, 'dev@brother.co.id', '$2y$10$81fghEe6XwCWbPA3mrpnluDX4Ukv7Hy6kbmoJNtiPRkmCkmgRDoje', 'key-5a265e17644de', 'active', '', '2017-12-06 09:43:12', '2017-12-06 09:43:12'),
(33, 2, 'george@dev.com', '$2y$10$3amjYRBf1YENxQdoXyVLOOw//MnjfoP7rezSRSzgcSUDnS.RxBc8q', 'key-5a45e08f04630', 'active', '', '2018-01-05 06:15:19', '2018-01-05 06:15:19'),
(34, 2, 'abc@def.com', '$2y$10$zGWxjbKaYhYtkU025ITiuu28CnNojlPUDW0rqJkwwD6Bdg1yXNHW.', 'key-5a45e14017855', 'active', '', '2018-01-15 05:25:55', '2018-01-15 05:25:55');

-- --------------------------------------------------------

--
-- Table structure for table `voucher`
--

CREATE TABLE `voucher` (
  `id` int(11) NOT NULL,
  `voucher_code` varchar(150) NOT NULL,
  `discount_rate` int(11) NOT NULL,
  `for` varchar(50) NOT NULL DEFAULT '',
  `product_category` int(11) DEFAULT NULL,
  `valid_from` date NOT NULL,
  `valid_until` date NOT NULL,
  `quota` int(11) NOT NULL,
  `description` longtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voucher`
--

INSERT INTO `voucher` (`id`, `voucher_code`, `discount_rate`, `for`, `product_category`, `valid_from`, `valid_until`, `quota`, `description`, `created_at`, `updated_at`) VALUES
(1, 'BRDIS10', 10, 'Customer', 1, '2017-11-13', '2030-11-23', 5, 'Discount 20%', '2017-11-15 12:14:22', '2018-01-08 08:19:39'),
(2, 'BRDIS01', 10, 'Reseller', 1, '2017-11-13', '2017-11-30', 5, 'Discount 10%', '2017-11-15 09:51:16', '2018-01-08 07:17:53'),
(3, 'BRDIS02', 5, 'Customer', 1, '2017-11-13', '2017-11-27', 1, 'Discount 5%', '2017-11-15 09:51:20', '2018-01-08 07:17:54');

-- --------------------------------------------------------

--
-- Table structure for table `voucher_use`
--

CREATE TABLE `voucher_use` (
  `id` int(11) UNSIGNED NOT NULL,
  `voucher_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voucher_use`
--

INSERT INTO `voucher_use` (`id`, `voucher_id`, `order_id`, `created_at`, `updated_at`) VALUES
(3, 2, 21, '2018-01-08 08:06:41', '2018-01-08 08:06:41'),
(4, 2, 22, '2018-01-08 08:08:13', '2018-01-08 08:08:13'),
(5, 1, 24, '2018-01-08 09:55:18', '2018-01-08 09:55:18'),
(6, 1, 25, '2018-01-08 10:01:23', '2018-01-08 10:01:23'),
(7, 1, 26, '2018-01-08 10:13:52', '2018-01-08 10:13:52'),
(8, 1, 29, '2018-01-10 09:43:18', '2018-01-10 09:43:18'),
(9, 1, 30, '2018-01-10 10:03:47', '2018-01-10 10:03:47'),
(10, 1, 31, '2018-01-10 10:37:01', '2018-01-10 10:37:01'),
(11, 1, 38, '2018-01-19 10:30:06', '2018-01-19 10:30:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agen`
--
ALTER TABLE `agen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barcode`
--
ALTER TABLE `barcode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_detail`
--
ALTER TABLE `cart_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fcm`
--
ALTER TABLE `fcm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_cancel`
--
ALTER TABLE `order_cancel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_order`
--
ALTER TABLE `purchase_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_order_cancel`
--
ALTER TABLE `purchase_order_cancel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receipt`
--
ALTER TABLE `receipt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_adjustment`
--
ALTER TABLE `stock_adjustment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_history`
--
ALTER TABLE `stock_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax`
--
ALTER TABLE `tax`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfer_order_cancel`
--
ALTER TABLE `transfer_order_cancel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfer_order_detail`
--
ALTER TABLE `transfer_order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voucher_use`
--
ALTER TABLE `voucher_use`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `agen`
--
ALTER TABLE `agen`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `barcode`
--
ALTER TABLE `barcode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cart_detail`
--
ALTER TABLE `cart_detail`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `fcm`
--
ALTER TABLE `fcm`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_cancel`
--
ALTER TABLE `order_cancel`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `purchase_order`
--
ALTER TABLE `purchase_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `purchase_order_cancel`
--
ALTER TABLE `purchase_order_cancel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `receipt`
--
ALTER TABLE `receipt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `stock_adjustment`
--
ALTER TABLE `stock_adjustment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `stock_history`
--
ALTER TABLE `stock_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tax`
--
ALTER TABLE `tax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transfer_order_cancel`
--
ALTER TABLE `transfer_order_cancel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transfer_order_detail`
--
ALTER TABLE `transfer_order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `voucher`
--
ALTER TABLE `voucher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `voucher_use`
--
ALTER TABLE `voucher_use`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
