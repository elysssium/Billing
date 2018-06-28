-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2018 at 12:34 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user-image` varchar(200) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user-image`, `date`) VALUES
(2, 'b1.jpg', '2018-06-27'),
(8, 'b16.jpg', '2018-06-27'),
(9, 'b17.jpg', '2018-06-27'),
(10, 'b18.jpg', '2018-06-27'),
(11, 'bill_-_Copy1.jpg', '2018-06-27'),
(12, 'bill.jpg', '2018-06-27'),
(13, 'b19.jpg', '2018-06-27'),
(14, 'bill_-_Copy2.jpg', '2018-06-27'),
(15, 'Capex_Invoice-4.jpg', '2018-06-27'),
(16, 'b110.jpg', '2018-06-27'),
(17, 'bill_-_Copy3.jpg', '2018-06-27'),
(18, 'Capex_Invoice-6.jpg', '2018-06-27'),
(19, 'b111.jpg', '2018-06-27'),
(20, 'bill_-_Copy4.jpg', '2018-06-27'),
(21, 'Capex_Invoice-2.jpg', '2018-06-27'),
(22, 'b112.jpg', '2018-06-27'),
(23, 'bill_-_Copy5.jpg', '2018-06-27'),
(24, 'Capex_Invoice-21.jpg', '2018-06-27'),
(25, 'b113.jpg', '2018-06-27'),
(26, 'bill_-_Copy6.jpg', '2018-06-27'),
(27, 'b114.jpg', '2018-06-27'),
(28, 'bill_-_Copy7.jpg', '2018-06-27'),
(29, 'b115.jpg', '2018-06-27'),
(30, 'bill_-_Copy8.jpg', '2018-06-27'),
(31, 'b1_-_Copy.jpg', '2018-06-27'),
(32, 'bill_-_Copy_-_Copy.jpg', '2018-06-27'),
(33, 'b1_-_Copy1.jpg', '2018-06-27'),
(34, 'bill_-_Copy9.jpg', '2018-06-27'),
(35, 'b1_-_Copy_-_Copy1.jpg', '2018-06-27'),
(36, 'bill_-_Copy_-_Copy_(2).jpg', '2018-06-27'),
(37, 'b1_-_Copy_-_Copy2.jpg', '2018-06-27'),
(38, 'bill_-_Copy_-_Copy_(2)1.jpg', '2018-06-27'),
(39, 'b1_-_Copy_-_Copy3.jpg', '2018-06-27'),
(40, 'bill_-_Copy_-_Copy_(2)2.jpg', '2018-06-27'),
(41, 'b1_-_Copy_-_Copy4.jpg', '2018-06-27'),
(42, 'bill_-_Copy_-_Copy_(2)3.jpg', '2018-06-27'),
(43, 'b1_-_Copy2.jpg', '2018-06-27'),
(44, 'bill_-_Copy_-_Copy_(2)4.jpg', '2018-06-27'),
(45, 'b1_-_Copy_-_Copy5.jpg', '2018-06-27'),
(46, 'bill_-_Copy_-_Copy_(2)5.jpg', '2018-06-27'),
(47, 'b1_-_Copy_-_Copy6.jpg', '2018-06-27'),
(48, 'bill_-_Copy_-_Copy_(2)6.jpg', '2018-06-27'),
(49, 'b1_-_Copy_-_Copy7.jpg', '2018-06-27'),
(50, 'bill_-_Copy_-_Copy_(2)7.jpg', '2018-06-27'),
(51, 'b1_-_Copy_-_Copy8.jpg', '2018-06-27'),
(52, 'bill_-_Copy_-_Copy_(2)8.jpg', '2018-06-27'),
(53, 'b1_-_Copy_-_Copy9.jpg', '2018-06-27'),
(54, 'bill_-_Copy_-_Copy_(2)9.jpg', '2018-06-27'),
(55, 'b1_-_Copy_-_Copy10.jpg', '2018-06-27'),
(56, 'bill_-_Copy_-_Copy_(2)10.jpg', '2018-06-27'),
(57, 'b1_-_Copy_-_Copy11.jpg', '2018-06-27'),
(58, 'bill_-_Copy_-_Copy_(2)11.jpg', '2018-06-27'),
(59, 'b1_-_Copy_-_Copy12.jpg', '2018-06-27'),
(60, 'bill_-_Copy_-_Copy1.jpg', '2018-06-27'),
(61, 'b1_-_Copy_-_Copy13.jpg', '2018-06-27'),
(62, 'bill_-_Copy_-_Copy_(2)12.jpg', '2018-06-27'),
(63, 'b1_-_Copy_-_Copy14.jpg', '2018-06-27'),
(64, 'bill_-_Copy_-_Copy_(2)13.jpg', '2018-06-27'),
(65, 'b1_-_Copy_-_Copy15.jpg', '2018-06-27'),
(66, 'bill_-_Copy_-_Copy2.jpg', '2018-06-27'),
(67, 'b1_-_Copy_-_Copy16.jpg', '2018-06-27'),
(68, 'bill_-_Copy_-_Copy3.jpg', '2018-06-27'),
(69, 'b1_-_Copy_-_Copy17.jpg', '2018-06-27'),
(70, 'pic.png', '2018-06-27'),
(71, 'b1_-_Copy_-_Copy18.jpg', '2018-06-27'),
(72, 'bill_-_Copy_-_Copy_(2)14.jpg', '2018-06-27'),
(73, 'b1_-_Copy3.jpg', '2018-06-27'),
(74, 'bill_-_Copy_-_Copy4.jpg', '2018-06-27'),
(75, 'b1_-_Copy_-_Copy19.jpg', '2018-06-27'),
(76, 'bill_-_Copy_-_Copy_(2)15.jpg', '2018-06-27'),
(77, 'b1_-_Copy_-_Copy20.jpg', '2018-06-27'),
(78, 'bill_-_Copy_-_Copy_(2)16.jpg', '2018-06-27'),
(79, 'b1_-_Copy_-_Copy21.jpg', '2018-06-27'),
(80, 'bill_-_Copy_-_Copy_(2)17.jpg', '2018-06-27'),
(81, 'b1_-_Copy_-_Copy22.jpg', '2018-06-27'),
(82, 'bill_-_Copy_-_Copy_(2)18.jpg', '2018-06-27'),
(83, 'b1_-_Copy_-_Copy23.jpg', '2018-06-27'),
(84, 'bill_-_Copy_-_Copy_(2)19.jpg', '2018-06-27'),
(85, 'b1_-_Copy_-_Copy24.jpg', '2018-06-27'),
(86, 'bill_-_Copy_-_Copy_(2)20.jpg', '2018-06-27'),
(87, 'b1_-_Copy_-_Copy25.jpg', '2018-06-27'),
(88, 'bill_-_Copy_-_Copy_(2)21.jpg', '2018-06-27'),
(89, 'bill_-_Copy_-_Copy_(2)22.jpg', '2018-06-28'),
(90, 'b1_-_Copy_-_Copy26.jpg', '2018-06-28'),
(91, 'bill_-_Copy_-_Copy_(2)23.jpg', '2018-06-28'),
(92, 'b1_-_Copy_-_Copy27.jpg', '2018-06-28'),
(93, 'bill_-_Copy_-_Copy_(2)24.jpg', '2018-06-28'),
(94, 'b1_-_Copy4.jpg', '2018-06-28'),
(95, 'bill_-_Copy_-_Copy5.jpg', '2018-06-28'),
(96, 'bill_-_Copy_-_Copy1.jpg', '2018-06-28'),
(97, 'b1_-_Copy.jpg', '2018-06-28'),
(98, 'b1_-_Copy1.jpg', '2018-06-28'),
(99, 'b1_-_Copy2.jpg', '2018-06-28'),
(100, 'bill_-_Copy_-_Copy2.jpg', '2018-06-28'),
(101, 'b1_-_Copy_-_Copy.jpg', '2018-06-28'),
(102, 'bill_-_Copy_-_Copy3.jpg', '2018-06-28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
