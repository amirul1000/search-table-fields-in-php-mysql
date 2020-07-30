-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2020 at 08:26 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `soveign_money`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(10) NOT NULL,
  `orders_id` int(10) NOT NULL,
  `os0` varchar(127) NOT NULL,
  `item_name` varchar(127) NOT NULL,
  `item_number` varchar(127) NOT NULL,
  `quantity` int(10) NOT NULL,
  `amount` decimal(10,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `orders_id`, `os0`, `item_name`, `item_number`, `quantity`, `amount`) VALUES
(9, 3, 'AKC Self Warming Thermal Pet Bed, Brown, $40 Value!', 'Home / Garden', '65696', 1, '2.99'),
(6, 3, 'Fino FT64 T.V. Tilt Mount with HDMI Cable $148.00 Value!', 'Furniture', '88001', 1, '5.29'),
(7, 3, 'FJORDS SCANSIT 110 LEATHER RECLINER AND OTTOMAN  LARGE $2595 value', 'Furniture', '67981', 1, '29.99'),
(8, 3, 'Tike Tech Double Stroller Car Seat Adapter, $70 Value!', 'Home / Garden', '57959', 1, '2.99'),
(10, 4, 'Juno Lighting Trac-Master Quick Jack Low Profile 12V Electronic Transformer', 'Home / Garden', '57629', 1, '2.99');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
