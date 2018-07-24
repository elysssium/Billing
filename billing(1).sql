-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2018 at 01:02 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `billing`
--

-- --------------------------------------------------------

--
-- Table structure for table `goods`
--
-- Creation: Jul 24, 2018 at 09:48 AM
--

CREATE TABLE `goods` (
  `id` bigint(20) NOT NULL,
  `sno` bigint(20) NOT NULL,
  `descri` text NOT NULL,
  `code` text NOT NULL,
  `qty` text NOT NULL,
  `unit` text NOT NULL,
  `price` text NOT NULL,
  `amnt` text NOT NULL,
  `image_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `goods`:
--

--
-- Dumping data for table `goods`
--

INSERT INTO `goods` (`id`, `sno`, `descri`, `code`, `qty`, `unit`, `price`, `amnt`, `image_id`) VALUES
(1, 1, 'AccessoryWoodTray,Large', '9403', '2.00', 'Nos', '2,550.00', '5,100.00', 20168),
(2, 2, '21\"Tbar2\"fromwall', '9403', '6.00', 'Nos', '363.03', '2,178.18', 20168),
(3, 3, '21\"Tbar12\"fromwall', '9403', '7.00', 'Nos', '498.27', '3,487.89', 20168),
(4, 4, 'BagStand(HRS)', '9403', '2.00', 'Nos', '2,206.64', '4,413.28', 20168),
(5, 5, 'BackWrapModular\"Stationary\"', '9403', '1.00', 'Nos', '25,100.00', '25,100.00', 20168),
(6, 6, 'BackWrapModular\"Stationary\"w/Drawer', '9403', '100', 'Nos', '29,600.00', '29,600.00', 20168),
(7, 7, '12\"x12“ClearAcrylicTier/StepUnit', '9403', '1.00', 'Nos', '1,993.10', '1,993.10', 20168),
(8, 8, 'Caretbinmediumsize(Plastic)', '9403', '2.00', 'Nos', '1,810.00', '3,620.00', 20168),
(9, 9, 'CarriageHook\"Black\"', '9403', '44.00', 'Nos', '28.03', '1,233.32', 20168),
(10, 10, 'Clamp—OverHook4\"', '9403', '12.00', 'Nos', '106.77', '1,281.24', 20168),
(11, 11, '6\"Clamp»0verHookforZ—way‘1\'\"Stand(', '9403', '2.00', 'Nos', '170.84', '341.68', 20168),
(12, 12, '6\"Clamp-OverHookfor2-way\"T\"Stand(', '9403', '2.00', 'Nos', '170.84', '341.68', 20168),
(13, 13, '24\"x9\"Clamp-OverSignHolderonStem', '9403', '1‘00', 'Nos', '1,927.39', '1,927.39', 20168),
(14, 14, '8\"x8\"damp-oversignholderforGiftPa', '403', '1.00', 'Nos', '551.93', '551.93', 20168),
(15, 15, 'Capacity\"T\"Stand20\"UBar(FlushMoun', '9403', '4.00', 'Nos', '185.07', '740.28', 20168),
(16, 16, 'Capacity\"1\'\"Stand,‘\\', '9403', '2.00', 'Nos', '3,050.00', '6,100.00', 20168);

-- --------------------------------------------------------

--
-- Table structure for table `image`
--
-- Creation: Jul 03, 2018 at 09:27 AM
--

CREATE TABLE `image` (
  `id` bigint(20) NOT NULL,
  `image_name` varchar(1000) NOT NULL,
  `date` datetime NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `image`:
--

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `image_name`, `date`, `user_id`) VALUES
(20075, 'bill_-_Copy_-_Copy_(2)67.jpg', '2018-07-10 10:50:14', 10000),
(20076, 'bill_-_Copy_-_Copy_(2)68.jpg', '2018-07-10 10:56:36', 10000),
(20077, 'bill_-_Copy_-_Copy_(2)69.jpg', '2018-07-10 11:04:52', 10000),
(20078, 'bill_-_Copy_-_Copy_(2)70.jpg', '2018-07-10 11:07:35', 10000),
(20079, 'bill_-_Copy_-_Copy_(2)71.jpg', '2018-07-10 11:08:59', 10000),
(20080, 'bill_-_Copy_-_Copy_(2)72.jpg', '2018-07-10 11:10:42', 10000),
(20081, 'bill_-_Copy_-_Copy_(2)73.jpg', '2018-07-10 11:14:10', 10000),
(20082, 'bill_-_Copy_-_Copy_(2)74.jpg', '2018-07-10 11:17:54', 10000),
(20083, 'bill_-_Copy_-_Copy_(2)75.jpg', '2018-07-10 11:18:44', 10000),
(20084, 'bill_-_Copy_-_Copy_(2)76.jpg', '2018-07-10 11:19:11', 10000),
(20085, 'bill_-_Copy_-_Copy_(2)77.jpg', '2018-07-10 11:24:38', 10000),
(20086, 'bill_-_Copy_-_Copy_(2).jpg', '2018-07-12 06:26:56', 10000),
(20087, 'bill_-_Copy_-_Copy_(2)1.jpg', '2018-07-12 06:28:13', 10000),
(20088, '1.jpg', '2018-07-12 06:39:09', 10000),
(20089, 'bill_-_Copy_-_Copy_(2)2.jpg', '2018-07-12 06:39:10', 10000),
(20090, '11.jpg', '2018-07-12 06:39:57', 10000),
(20091, 'bill_-_Copy_-_Copy_(2)3.jpg', '2018-07-12 06:39:57', 10000),
(20092, '12.jpg', '2018-07-12 06:50:02', 10000),
(20093, 'bill_-_Copy_-_Copy_(2)4.jpg', '2018-07-12 06:50:02', 10000),
(20094, 'Capex_Invoice-3.jpg', '2018-07-12 06:50:02', 10000),
(20095, '13.jpg', '2018-07-12 06:52:27', 10000),
(20096, 'bill_-_Copy_-_Copy_(2)5.jpg', '2018-07-12 06:52:27', 10000),
(20097, 'Capex_Invoice-31.jpg', '2018-07-12 06:52:27', 10000),
(20098, '14.jpg', '2018-07-12 09:30:50', 2001),
(20099, 'bill_-_Copy_-_Copy_(2)6.jpg', '2018-07-12 09:30:50', 2001),
(20100, 'Capex_Invoice-32.jpg', '2018-07-12 09:30:50', 2001),
(20101, '15.jpg', '2018-07-12 09:33:07', 10000),
(20102, 'bill_-_Copy_-_Copy_(2)7.jpg', '2018-07-12 09:33:08', 10000),
(20103, 'Capex_Invoice-33.jpg', '2018-07-12 09:33:08', 10000),
(20104, '16.jpg', '2018-07-12 09:35:23', 10000),
(20105, 'bill_-_Copy_-_Copy_(2)8.jpg', '2018-07-12 09:35:23', 10000),
(20106, 'Capex_Invoice-34.jpg', '2018-07-12 09:35:23', 10000),
(20107, 'Capex_Invoice-6.jpg', '2018-07-12 09:35:23', 10000),
(20108, '17.jpg', '2018-07-12 09:40:48', 10000),
(20109, 'bill_-_Copy_-_Copy_(2)9.jpg', '2018-07-12 09:40:48', 10000),
(20110, 'Capex_Invoice-35.jpg', '2018-07-12 09:40:48', 10000),
(20111, 'Capex_Invoice-61.jpg', '2018-07-12 09:40:49', 10000),
(20112, 'Electronic-Receipt-Tmplate-Download.gif', '2018-07-12 09:40:49', 10000),
(20113, '18.jpg', '2018-07-12 09:44:11', 10000),
(20114, 'bill_-_Copy_-_Copy_(2)10.jpg', '2018-07-12 09:44:11', 10000),
(20115, '800px_COLOURBOX29191444.jpg', '2018-07-12 09:44:12', 10000),
(20116, 'Capex_Invoice-36.jpg', '2018-07-12 09:44:12', 10000),
(20117, 'Capex_Invoice-62.jpg', '2018-07-12 09:44:12', 10000),
(20118, 'Electronic-Receipt-Tmplate-Download1.gif', '2018-07-12 09:44:12', 10000),
(20119, '19.jpg', '2018-07-12 09:54:56', 10000),
(20120, 'bill_-_Copy_-_Copy_(2)11.jpg', '2018-07-12 09:54:57', 10000),
(20121, '800px_COLOURBOX291914441.jpg', '2018-07-12 09:54:57', 10000),
(20122, 'Capex_Invoice-37.jpg', '2018-07-12 09:54:57', 10000),
(20123, 'Capex_Invoice-63.jpg', '2018-07-12 09:54:57', 10000),
(20124, 'Electronic-Receipt-Tmplate-Download2.gif', '2018-07-12 09:54:57', 10000),
(20125, 'sreyas.jpg', '2018-07-12 09:54:58', 10000),
(20126, 'bill_-_Copy_-_Copy.jpg', '2018-07-12 09:59:06', 10000),
(20127, 'bill_-_Copy_-_Copy1.jpg', '2018-07-18 10:32:17', 10000),
(20128, '110.jpg', '2018-07-18 10:34:08', 10000),
(20129, 'Capex_Invoice-64.jpg', '2018-07-18 10:34:08', 10000),
(20130, 'bill_-_Copy_-_Copy_(2)12.jpg', '2018-07-18 10:34:08', 10000),
(20131, 'sreyas1.jpg', '2018-07-18 10:34:08', 10000),
(20132, '111.jpg', '2018-07-18 10:46:21', 10000),
(20133, 'Capex_Invoice-65.jpg', '2018-07-18 10:46:22', 10000),
(20134, 'bill_-_Copy_-_Copy_(2)13.jpg', '2018-07-18 10:46:22', 10000),
(20135, 'sreyas2.jpg', '2018-07-18 10:46:22', 10000),
(20136, '112.jpg', '2018-07-18 11:15:24', 10000),
(20137, 'Capex_Invoice-66.jpg', '2018-07-18 11:15:24', 10000),
(20138, 'bill_-_Copy_-_Copy_(2)14.jpg', '2018-07-18 11:15:24', 10000),
(20139, 'sreyas3.jpg', '2018-07-18 11:15:24', 10000),
(20140, '113.jpg', '2018-07-18 11:16:22', 10000),
(20141, 'Capex_Invoice-67.jpg', '2018-07-18 11:16:23', 10000),
(20142, 'bill_-_Copy_-_Copy_(2)15.jpg', '2018-07-18 11:16:23', 10000),
(20143, 'sreyas4.jpg', '2018-07-18 11:16:23', 10000),
(20144, '114.jpg', '2018-07-18 11:26:50', 10000),
(20145, 'Capex_Invoice-68.jpg', '2018-07-18 11:26:51', 10000),
(20146, 'bill_-_Copy_-_Copy_(2)16.jpg', '2018-07-18 11:26:51', 10000),
(20147, 'sreyas5.jpg', '2018-07-18 11:26:51', 10000),
(20148, '115.jpg', '2018-07-18 11:32:00', 10000),
(20149, 'Capex_Invoice-69.jpg', '2018-07-18 11:32:00', 10000),
(20150, 'bill_-_Copy_-_Copy_(2)17.jpg', '2018-07-18 11:32:00', 10000),
(20151, 'sreyas6.jpg', '2018-07-18 11:32:00', 10000),
(20152, '116.jpg', '2018-07-18 11:37:49', 10000),
(20153, 'Capex_Invoice-610.jpg', '2018-07-18 11:37:49', 10000),
(20154, 'bill_-_Copy_-_Copy_(2)18.jpg', '2018-07-18 11:37:49', 10000),
(20155, 'sreyas7.jpg', '2018-07-18 11:37:49', 10000),
(20156, '117.jpg', '2018-07-18 11:45:44', 10000),
(20157, 'Capex_Invoice-611.jpg', '2018-07-18 11:45:44', 10000),
(20158, 'bill_-_Copy_-_Copy_(2)19.jpg', '2018-07-18 11:45:44', 10000),
(20159, 'sreyas8.jpg', '2018-07-18 11:45:44', 10000),
(20160, '118.jpg', '2018-07-18 11:49:31', 10000),
(20161, 'Capex_Invoice-612.jpg', '2018-07-18 11:49:31', 10000),
(20162, 'bill_-_Copy_-_Copy_(2)20.jpg', '2018-07-18 11:49:31', 10000),
(20163, 'sreyas9.jpg', '2018-07-18 11:49:31', 10000),
(20164, '119.jpg', '2018-07-18 11:51:17', 10000),
(20165, 'Capex_Invoice-613.jpg', '2018-07-18 11:51:17', 10000),
(20166, 'bill_-_Copy_-_Copy_(2)21.jpg', '2018-07-18 11:51:17', 10000),
(20167, 'sreyas10.jpg', '2018-07-18 11:51:17', 10000),
(20168, '120.jpg', '2018-07-18 12:17:03', 10000),
(20169, 'Capex_Invoice-614.jpg', '2018-07-18 12:17:03', 10000),
(20170, 'bill_-_Copy_-_Copy_(2)22.jpg', '2018-07-18 12:17:03', 10000),
(20171, 'sreyas11.jpg', '2018-07-18 12:17:03', 10000),
(20172, '121.jpg', '2018-07-18 12:18:06', 10000),
(20173, 'Capex_Invoice-615.jpg', '2018-07-18 12:18:06', 10000),
(20174, 'bill_-_Copy_-_Copy_(2)23.jpg', '2018-07-18 12:18:07', 10000),
(20175, 'sreyas12.jpg', '2018-07-18 12:18:07', 10000),
(20176, '122.jpg', '2018-07-18 12:43:39', 10000),
(20177, 'Capex_Invoice-616.jpg', '2018-07-18 12:43:39', 10000),
(20178, 'bill_-_Copy_-_Copy_(2)24.jpg', '2018-07-18 12:43:39', 10000),
(20179, 'sreyas13.jpg', '2018-07-18 12:43:39', 10000),
(20180, '123.jpg', '2018-07-18 12:50:50', 10000),
(20181, 'Capex_Invoice-617.jpg', '2018-07-18 12:50:51', 10000),
(20182, 'bill_-_Copy_-_Copy_(2)25.jpg', '2018-07-18 12:50:51', 10000),
(20183, 'sreyas14.jpg', '2018-07-18 12:50:51', 10000),
(20184, '124.jpg', '2018-07-18 12:58:04', 10000),
(20185, 'Capex_Invoice-618.jpg', '2018-07-18 12:58:05', 10000),
(20186, 'bill_-_Copy_-_Copy_(2)26.jpg', '2018-07-18 12:58:06', 10000),
(20187, 'sreyas15.jpg', '2018-07-18 12:58:06', 10000),
(20188, '125.jpg', '2018-07-18 12:59:55', 10000),
(20189, 'Capex_Invoice-619.jpg', '2018-07-18 12:59:55', 10000),
(20190, 'bill_-_Copy_-_Copy_(2)27.jpg', '2018-07-18 12:59:55', 10000),
(20191, 'sreyas16.jpg', '2018-07-18 12:59:56', 10000),
(20192, '126.jpg', '2018-07-18 13:04:47', 10000),
(20193, 'Capex_Invoice-620.jpg', '2018-07-18 13:04:48', 10000),
(20194, 'bill_-_Copy_-_Copy_(2)28.jpg', '2018-07-18 13:04:48', 10000),
(20195, 'sreyas17.jpg', '2018-07-18 13:04:49', 10000),
(20196, '1.jpg', '2018-07-18 13:07:52', 10000),
(20197, 'Capex_Invoice-6.jpg', '2018-07-18 13:07:53', 10000),
(20198, 'bill_-_Copy_-_Copy_(2).jpg', '2018-07-18 13:07:53', 10000),
(20199, 'sreyas.jpg', '2018-07-18 13:07:53', 10000),
(20200, '11.jpg', '2018-07-18 13:10:31', 10000),
(20201, 'Capex_Invoice-61.jpg', '2018-07-18 13:10:32', 10000),
(20202, 'bill_-_Copy_-_Copy_(2)1.jpg', '2018-07-18 13:10:32', 10000),
(20203, 'sreyas1.jpg', '2018-07-18 13:10:32', 10000),
(20204, '12.jpg', '2018-07-20 07:41:29', 10000),
(20205, 'Capex_Invoice-62.jpg', '2018-07-20 07:41:29', 10000),
(20206, 'bill_-_Copy_-_Copy_(2)2.jpg', '2018-07-20 07:41:29', 10000),
(20207, 'sreyas2.jpg', '2018-07-20 07:41:29', 10000),
(20208, '13.jpg', '2018-07-20 07:46:47', 10000),
(20209, 'Capex_Invoice-63.jpg', '2018-07-20 07:46:47', 10000),
(20210, '14.jpg', '2018-07-20 07:51:39', 10000),
(20211, 'Capex_Invoice-64.jpg', '2018-07-20 07:51:39', 10000),
(20212, '15.jpg', '2018-07-20 07:55:28', 10000),
(20213, 'Capex_Invoice-65.jpg', '2018-07-20 07:55:29', 10000),
(20214, '16.jpg', '2018-07-20 08:02:42', 10000),
(20215, '17.jpg', '2018-07-20 08:15:26', 10000),
(20216, '18.jpg', '2018-07-24 10:25:05', 10000),
(20217, '19.jpg', '2018-07-24 10:42:14', 10000),
(20218, '110.jpg', '2018-07-24 11:05:11', 10000),
(20219, '111.jpg', '2018-07-24 11:06:00', 10000),
(20220, '112.jpg', '2018-07-24 11:06:35', 10000),
(20221, '113.jpg', '2018-07-24 11:08:22', 10000),
(20222, '114.jpg', '2018-07-24 11:11:18', 10000),
(20223, '115.jpg', '2018-07-24 11:12:42', 10000),
(20224, '116.jpg', '2018-07-24 11:16:10', 10000),
(20225, '117.jpg', '2018-07-24 11:17:34', 10000),
(20226, '118.jpg', '2018-07-24 11:18:29', 10000),
(20227, '119.jpg', '2018-07-24 11:41:23', 10000),
(20228, '120.jpg', '2018-07-24 11:56:05', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `json`
--
-- Creation: Jul 24, 2018 at 08:37 AM
--

CREATE TABLE `json` (
  `id` bigint(20) NOT NULL,
  `image_id` bigint(20) DEFAULT NULL,
  `json` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `json`:
--

--
-- Dumping data for table `json`
--

INSERT INTO `json` (`id`, `image_id`, `json`) VALUES
(2, 20160, '{\"table\":{\"psnt\":1,\"head\":{\"count\":7,\"2\":\"Description of Goods\",\"1\":\"S.N.\",\"3\":\"HSN\\/SAC Code\",\"4\":\"Qty\",\"5\":\"Unit\",\"6\":\"Price\",\"7\":\"Amount\"},\"1\":{\"1\":\"1\",\"2\":\"AccessoryWoodTray,Large\",\"3\":\"9403\",\"4\":\"2.00\",\"5\":\"Nos\",\"6\":\"2,550.00\",\"7\":\"5,100.00\"},\"2\":{\"1\":\"2\",\"2\":\"21\\\"Tbar2\\\"fromwall\",\"3\":\"9403\",\"4\":\"6.00\",\"5\":\"Nos\",\"6\":\"363.03\",\"7\":\"2,178.18\"},\"3\":{\"1\":\"3\",\"2\":\"21\\\"Tbar12\\\"fromwall\",\"3\":\"9403\",\"4\":\"7.00\",\"5\":\"Nos\",\"6\":\"498.27\",\"7\":\"3,487.89\"},\"4\":{\"1\":\"4\",\"2\":\"BagStand(HRS)\",\"3\":\"9403\",\"4\":\"2.00\",\"5\":\"Nos\",\"6\":\"2,206.64\",\"7\":\"4,413.28\"},\"5\":{\"1\":\"5\",\"2\":\"BackWrapModular\\\"Stationary\\\"\",\"3\":\"9403\",\"4\":\"1.00\",\"5\":\"Nos\",\"6\":\"25,100.00\",\"7\":\"25,100.00\"},\"6\":{\"1\":\"6\",\"2\":\"BackWrapModular\\\"Stationary\\\"w\\/Drawer\",\"3\":\"9403\",\"4\":\"100\",\"5\":\"Nos\",\"6\":\"29,600.00\",\"7\":\"29,600.00\"},\"7\":{\"1\":\"7\",\"2\":\"12\\\"x12\\u201cClearAcrylicTier\\/StepUnit\",\"3\":\"9403\",\"4\":\"1.00\",\"5\":\"Nos\",\"6\":\"1,993.10\",\"7\":\"1,993.10\"},\"8\":{\"1\":\"8\",\"2\":\"Caretbinmediumsize(Plastic)\",\"3\":\"9403\",\"4\":\"2.00\",\"5\":\"Nos\",\"6\":\"1,810.00\",\"7\":\"3,620.00\"},\"9\":{\"1\":\"9\",\"2\":\"CarriageHook\\\"Black\\\"\",\"3\":\"9403\",\"4\":\"44.00\",\"5\":\"Nos\",\"6\":\"28.03\",\"7\":\"1,233.32\"},\"10\":{\"1\":\"10\",\"2\":\"Clamp\\u2014OverHook4\\\"\",\"3\":\"9403\",\"4\":\"12.00\",\"5\":\"Nos\",\"6\":\"106.77\",\"7\":\"1,281.24\"},\"11\":{\"1\":\"11\",\"2\":\"6\\\"Clamp\\u00bb0verHookforZ\\u2014way\\u20181\'\\\"Stand(\",\"3\":\"9403\",\"4\":\"2.00\",\"5\":\"Nos\",\"6\":\"170.84\",\"7\":\"341.68\"},\"12\":{\"1\":\"12\",\"2\":\"6\\\"Clamp-OverHookfor2-way\\\"T\\\"Stand(\",\"3\":\"9403\",\"4\":\"2.00\",\"5\":\"Nos\",\"6\":\"170.84\",\"7\":\"341.68\"},\"13\":{\"1\":\"13\",\"2\":\"24\\\"x9\\\"Clamp-OverSignHolderonStem\",\"3\":\"9403\",\"4\":\"1\\u201800\",\"5\":\"Nos\",\"6\":\"1,927.39\",\"7\":\"1,927.39\"},\"14\":{\"1\":\"14\",\"2\":\"8\\\"x8\\\"damp-oversignholderforGiftPa\",\"3\":\"403\",\"4\":\"1.00\",\"5\":\"Nos\",\"6\":\"551.93\",\"7\":\"551.93\"},\"15\":{\"1\":\"15\",\"2\":\"Capacity\\\"T\\\"Stand20\\\"UBar(FlushMoun\",\"3\":\"9403\",\"4\":\"4.00\",\"5\":\"Nos\",\"6\":\"185.07\",\"7\":\"740.28\"},\"16\":{\"1\":\"16\",\"2\":\"Capacity\\\"1\'\\\"Stand,\\u2018\\\\\",\"3\":\"9403\",\"4\":\"2.00\",\"5\":\"Nos\",\"6\":\"3,050.00\",\"7\":\"6,100.00\"},\"row\":{\"count\":17}},\"key\":[\"TITLE\",\"CIN_NO\",\"Invoice No.\",\"Vehicle\",\"Date of Invoice\",\"P0NO\",\"Place of Supply\",\"(04)PO\",\"Reverse Charge\",\"Dispatched\",\"Bil\\/ed to\",\"to\",\"GSTIN\\/ UIN\",\"GSTIN\"],\"valu\":[\"SHARK SHOPFITS PRIVATE LIMITED\",\" : U361000L2012PTC233246\",\"0151\\/SSPL\\/17-18\",\"HPIZG 7661\",\"19\\u201407-2017\",\"2110000002 \\/\",\"Chandigarh\",\"11\\/07\\/2017\",\"N\",\"By Road\",\"Shipped\",\"\",\"29AAACH7252AIZV\",\"04AAACH7252A127\"],\"count\":14}'),
(3, 20164, '{\"table\":{\"psnt\":1,\"head\":{\"count\":7,\"2\":\"Description of Goods\",\"1\":\"S.N.\",\"3\":\"HSN\\/SAC Code\",\"4\":\"Qty\",\"5\":\"Unit\",\"6\":\"Price\",\"7\":\"Amount\"},\"1\":{\"1\":\"1\",\"2\":\"AccessoryWoodTray,Large\",\"3\":\"9403\",\"4\":\"2.00\",\"5\":\"Nos\",\"6\":\"2,550.00\",\"7\":\"5,100.00\"},\"2\":{\"1\":\"2\",\"2\":\"21\\\"Tbar2\\\"fromwall\",\"3\":\"9403\",\"4\":\"6.00\",\"5\":\"Nos\",\"6\":\"363.03\",\"7\":\"2,178.18\"},\"3\":{\"1\":\"3\",\"2\":\"21\\\"Tbar12\\\"fromwall\",\"3\":\"9403\",\"4\":\"7.00\",\"5\":\"Nos\",\"6\":\"498.27\",\"7\":\"3,487.89\"},\"4\":{\"1\":\"4\",\"2\":\"BagStand(HRS)\",\"3\":\"9403\",\"4\":\"2.00\",\"5\":\"Nos\",\"6\":\"2,206.64\",\"7\":\"4,413.28\"},\"5\":{\"1\":\"5\",\"2\":\"BackWrapModular\\\"Stationary\\\"\",\"3\":\"9403\",\"4\":\"1.00\",\"5\":\"Nos\",\"6\":\"25,100.00\",\"7\":\"25,100.00\"},\"6\":{\"1\":\"6\",\"2\":\"BackWrapModular\\\"Stationary\\\"w\\/Drawer\",\"3\":\"9403\",\"4\":\"100\",\"5\":\"Nos\",\"6\":\"29,600.00\",\"7\":\"29,600.00\"},\"7\":{\"1\":\"7\",\"2\":\"12\\\"x12\\u201cClearAcrylicTier\\/StepUnit\",\"3\":\"9403\",\"4\":\"1.00\",\"5\":\"Nos\",\"6\":\"1,993.10\",\"7\":\"1,993.10\"},\"8\":{\"1\":\"8\",\"2\":\"Caretbinmediumsize(Plastic)\",\"3\":\"9403\",\"4\":\"2.00\",\"5\":\"Nos\",\"6\":\"1,810.00\",\"7\":\"3,620.00\"},\"9\":{\"1\":\"9\",\"2\":\"CarriageHook\\\"Black\\\"\",\"3\":\"9403\",\"4\":\"44.00\",\"5\":\"Nos\",\"6\":\"28.03\",\"7\":\"1,233.32\"},\"10\":{\"1\":\"10\",\"2\":\"Clamp\\u2014OverHook4\\\"\",\"3\":\"9403\",\"4\":\"12.00\",\"5\":\"Nos\",\"6\":\"106.77\",\"7\":\"1,281.24\"},\"11\":{\"1\":\"11\",\"2\":\"6\\\"Clamp\\u00bb0verHookforZ\\u2014way\\u20181\'\\\"Stand(\",\"3\":\"9403\",\"4\":\"2.00\",\"5\":\"Nos\",\"6\":\"170.84\",\"7\":\"341.68\"},\"12\":{\"1\":\"12\",\"2\":\"6\\\"Clamp-OverHookfor2-way\\\"T\\\"Stand(\",\"3\":\"9403\",\"4\":\"2.00\",\"5\":\"Nos\",\"6\":\"170.84\",\"7\":\"341.68\"},\"13\":{\"1\":\"13\",\"2\":\"24\\\"x9\\\"Clamp-OverSignHolderonStem\",\"3\":\"9403\",\"4\":\"1\\u201800\",\"5\":\"Nos\",\"6\":\"1,927.39\",\"7\":\"1,927.39\"},\"14\":{\"1\":\"14\",\"2\":\"8\\\"x8\\\"damp-oversignholderforGiftPa\",\"3\":\"403\",\"4\":\"1.00\",\"5\":\"Nos\",\"6\":\"551.93\",\"7\":\"551.93\"},\"15\":{\"1\":\"15\",\"2\":\"Capacity\\\"T\\\"Stand20\\\"UBar(FlushMoun\",\"3\":\"9403\",\"4\":\"4.00\",\"5\":\"Nos\",\"6\":\"185.07\",\"7\":\"740.28\"},\"16\":{\"1\":\"16\",\"2\":\"Capacity\\\"1\'\\\"Stand,\\u2018\\\\\",\"3\":\"9403\",\"4\":\"2.00\",\"5\":\"Nos\",\"6\":\"3,050.00\",\"7\":\"6,100.00\"},\"row\":{\"count\":17}},\"key\":[\"TITLE\",\"CIN_NO\",\"Invoice No.\",\"Vehicle\",\"Date of Invoice\",\"P0NO\",\"Place of Supply\",\"(04)PO\",\"Reverse Charge\",\"Dispatched\",\"Bil\\/ed to\",\"to\",\"GSTIN\\/ UIN\",\"GSTIN\"],\"valu\":[\"SHARK SHOPFITS PRIVATE LIMITED\",\" : U361000L2012PTC233246\",\"0151\\/SSPL\\/17-18\",\"HPIZG 7661\",\"19\\u201407-2017\",\"2110000002 \\/\",\"Chandigarh\",\"11\\/07\\/2017\",\"N\",\"By Road\",\"Shipped\",\"\",\"29AAACH7252AIZV\",\"04AAACH7252A127\"],\"count\":14}'),
(4, 20168, '{\"table\":{\"psnt\":1,\"head\":{\"count\":7,\"2\":\"Description of Goods\",\"1\":\"S.N.\",\"3\":\"HSN\\/SAC Code\",\"4\":\"Qty\",\"5\":\"Unit\",\"6\":\"Price\",\"7\":\"Amount\"},\"1\":{\"1\":\"1\",\"2\":\"AccessoryWoodTray,Large\",\"3\":\"9403\",\"4\":\"2.00\",\"5\":\"Nos\",\"6\":\"2,550.00\",\"7\":\"5,100.00\"},\"2\":{\"1\":\"2\",\"2\":\"21\\\"Tbar2\\\"fromwall\",\"3\":\"9403\",\"4\":\"6.00\",\"5\":\"Nos\",\"6\":\"363.03\",\"7\":\"2,178.18\"},\"3\":{\"1\":\"3\",\"2\":\"21\\\"Tbar12\\\"fromwall\",\"3\":\"9403\",\"4\":\"7.00\",\"5\":\"Nos\",\"6\":\"498.27\",\"7\":\"3,487.89\"},\"4\":{\"1\":\"4\",\"2\":\"BagStand(HRS)\",\"3\":\"9403\",\"4\":\"2.00\",\"5\":\"Nos\",\"6\":\"2,206.64\",\"7\":\"4,413.28\"},\"5\":{\"1\":\"5\",\"2\":\"BackWrapModular\\\"Stationary\\\"\",\"3\":\"9403\",\"4\":\"1.00\",\"5\":\"Nos\",\"6\":\"25,100.00\",\"7\":\"25,100.00\"},\"6\":{\"1\":\"6\",\"2\":\"BackWrapModular\\\"Stationary\\\"w\\/Drawer\",\"3\":\"9403\",\"4\":\"100\",\"5\":\"Nos\",\"6\":\"29,600.00\",\"7\":\"29,600.00\"},\"7\":{\"1\":\"7\",\"2\":\"12\\\"x12\\u201cClearAcrylicTier\\/StepUnit\",\"3\":\"9403\",\"4\":\"1.00\",\"5\":\"Nos\",\"6\":\"1,993.10\",\"7\":\"1,993.10\"},\"8\":{\"1\":\"8\",\"2\":\"Caretbinmediumsize(Plastic)\",\"3\":\"9403\",\"4\":\"2.00\",\"5\":\"Nos\",\"6\":\"1,810.00\",\"7\":\"3,620.00\"},\"9\":{\"1\":\"9\",\"2\":\"CarriageHook\\\"Black\\\"\",\"3\":\"9403\",\"4\":\"44.00\",\"5\":\"Nos\",\"6\":\"28.03\",\"7\":\"1,233.32\"},\"10\":{\"1\":\"10\",\"2\":\"Clamp\\u2014OverHook4\\\"\",\"3\":\"9403\",\"4\":\"12.00\",\"5\":\"Nos\",\"6\":\"106.77\",\"7\":\"1,281.24\"},\"11\":{\"1\":\"11\",\"2\":\"6\\\"Clamp\\u00bb0verHookforZ\\u2014way\\u20181\'\\\"Stand(\",\"3\":\"9403\",\"4\":\"2.00\",\"5\":\"Nos\",\"6\":\"170.84\",\"7\":\"341.68\"},\"12\":{\"1\":\"12\",\"2\":\"6\\\"Clamp-OverHookfor2-way\\\"T\\\"Stand(\",\"3\":\"9403\",\"4\":\"2.00\",\"5\":\"Nos\",\"6\":\"170.84\",\"7\":\"341.68\"},\"13\":{\"1\":\"13\",\"2\":\"24\\\"x9\\\"Clamp-OverSignHolderonStem\",\"3\":\"9403\",\"4\":\"1\\u201800\",\"5\":\"Nos\",\"6\":\"1,927.39\",\"7\":\"1,927.39\"},\"14\":{\"1\":\"14\",\"2\":\"8\\\"x8\\\"damp-oversignholderforGiftPa\",\"3\":\"403\",\"4\":\"1.00\",\"5\":\"Nos\",\"6\":\"551.93\",\"7\":\"551.93\"},\"15\":{\"1\":\"15\",\"2\":\"Capacity\\\"T\\\"Stand20\\\"UBar(FlushMoun\",\"3\":\"9403\",\"4\":\"4.00\",\"5\":\"Nos\",\"6\":\"185.07\",\"7\":\"740.28\"},\"16\":{\"1\":\"16\",\"2\":\"Capacity\\\"1\'\\\"Stand,\\u2018\\\\\",\"3\":\"9403\",\"4\":\"2.00\",\"5\":\"Nos\",\"6\":\"3,050.00\",\"7\":\"6,100.00\"},\"row\":{\"count\":17}},\"key\":[\"TITLE\",\"CIN_NO\",\"Invoice No.\",\"Vehicle\",\"Date of Invoice\",\"P0NO\",\"Place of Supply\",\"(04)PO\",\"Reverse Charge\",\"Dispatched\",\"Bil\\/ed to\",\"to\",\"GSTIN\\/ UIN\",\"GSTIN\"],\"valu\":[\"SHARK SHOPFITS PRIVATE LIMITED\",\" : U361000L2012PTC233246\",\"0151\\/SSPL\\/17-18\",\"HPIZG 7661\",\"19\\u201407-2017\",\"2110000002 \\/\",\"Chandigarh\",\"11\\/07\\/2017\",\"N\",\"By Road\",\"Shipped\",\"\",\"29AAACH7252AIZV\",\"04AAACH7252A127\"],\"count\":14}');

-- --------------------------------------------------------

--
-- Table structure for table `keyvalue`
--
-- Creation: Jul 24, 2018 at 09:32 AM
--

CREATE TABLE `keyvalue` (
  `id` bigint(20) NOT NULL,
  `label` text NOT NULL,
  `descr` text NOT NULL,
  `image_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `keyvalue`:
--

--
-- Dumping data for table `keyvalue`
--

INSERT INTO `keyvalue` (`id`, `label`, `descr`, `image_id`) VALUES
(1, 'CIN_NO', ' : U361000L2012PTC233246', 20164),
(2, 'Invoice No.', '0151/SSPL/17-18', 20164),
(3, 'Vehicle', 'HPIZG 7661', 20164),
(4, 'Date of Invoice', '19—07-2017', 20164),
(5, 'P0NO', '2110000002 /', 20164),
(6, 'Place of Supply', 'Chandigarh', 20164),
(7, '(04)PO', '11/07/2017', 20164),
(8, 'Reverse Charge', 'N', 20164),
(9, 'Dispatched', 'By Road', 20164),
(10, 'Bil/ed to', 'Shipped', 20164),
(11, 'to', '', 20164),
(12, 'GSTIN/ UIN', '29AAACH7252AIZV', 20164),
(13, 'GSTIN', '04AAACH7252A127', 20164),
(14, 'CIN_NO', ' : U361000L2012PTC233246', 20168),
(15, 'Invoice No.', '0151/SSPL/17-18', 20168),
(16, 'Vehicle', 'HPIZG 7661', 20168),
(17, 'Date of Invoice', '19—07-2017', 20168),
(18, 'P0NO', '2110000002 /', 20168),
(19, 'Place of Supply', 'Chandigarh', 20168),
(20, '(04)PO', '11/07/2017', 20168),
(21, 'Reverse Charge', 'N', 20168),
(22, 'Dispatched', 'By Road', 20168),
(23, 'Bil/ed to', 'Shipped', 20168),
(24, 'to', '', 20168),
(25, 'GSTIN/ UIN', '29AAACH7252AIZV', 20168),
(26, 'GSTIN', '04AAACH7252A127', 20168);

-- --------------------------------------------------------

--
-- Table structure for table `template`
--
-- Creation: Jul 04, 2018 at 09:56 AM
--

CREATE TABLE `template` (
  `id` bigint(11) NOT NULL,
  `templateName` varchar(500) NOT NULL,
  `src` varchar(2000) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `template`:
--

--
-- Dumping data for table `template`
--

INSERT INTO `template` (`id`, `templateName`, `src`, `userId`, `date`) VALUES
(1, 'fukri', '11.jpg', 10000, '2018-07-09 12:56:04'),
(2, 'maya', 'bill_-_Copy_-_Copy_(2)1.jpg', 10000, '2018-07-09 12:56:25');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--
-- Creation: Jul 03, 2018 at 08:41 AM
--

CREATE TABLE `user` (
  `email` varchar(300) NOT NULL,
  `password` varchar(200) NOT NULL,
  `name` varchar(500) NOT NULL,
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `user`:
--

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`email`, `password`, `name`, `id`) VALUES
('amaldevastvm@gmail.com', 'amaldev', 'Amal Dev', 10000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `json`
--
ALTER TABLE `json`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keyvalue`
--
ALTER TABLE `keyvalue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `template`
--
ALTER TABLE `template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `goods`
--
ALTER TABLE `goods`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20229;

--
-- AUTO_INCREMENT for table `json`
--
ALTER TABLE `json`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `keyvalue`
--
ALTER TABLE `keyvalue`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `template`
--
ALTER TABLE `template`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10001;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
