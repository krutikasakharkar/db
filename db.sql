-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2024 at 05:31 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userpassword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Id`, `username`, `userpassword`) VALUES
(1, 'admin', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `admission`
--

CREATE TABLE `admission` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `phone` varchar(20) NOT NULL,
  `dance_style` varchar(50) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admission`
--

INSERT INTO `admission` (`id`, `name`, `email`, `dob`, `phone`, `dance_style`, `payment_method`, `address`) VALUES
(1, 'krutika', 'kru@gmail.com', '2024-02-06', '0123456788', 'hip_hop', 'paypal', 'mnb'),
(10, 'durgesh', 'du@gmail.com', '2024-02-16', '0123456787', 'bollywood', 'credit_card', 'acv'),
(11, 'bhavesh', 'bh@gmail.com', '2024-02-03', '0123456786', 'bollywood', 'credit_card', 'b'),
(12, 'krutika', 'krutika@gmail.com', '2024-02-12', '0123456789', 'bollywood', 'credit_card', 'bbh'),
(13, 'krutika', 'kru@gmail.com', '2024-02-02', '0123456789', 'bollywood', 'credit_card', '122'),
(14, 'john', 'j@gmail.com', '2024-02-05', '0123456789', 'bollywood', '', 'ghf'),
(15, 'john', 'j@gmail.com', '2024-02-05', '0123456789', 'bollywood', '', 'ghf'),
(16, 'john', 'j@gmail.com', '2024-02-05', '0123456789', 'bollywood', '', 'ghf'),
(17, 'jijja', 'ji@gmail.com', '2024-01-08', '0123456786', 'bollywood', '', 'abc');

-- --------------------------------------------------------

--
-- Table structure for table `dancestyles`
--

CREATE TABLE `dancestyles` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `price` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dancestyles`
--

INSERT INTO `dancestyles` (`id`, `name`, `price`, `image`) VALUES
(5, 'Bollywood', '999', 'bollywood.jpg'),
(6, 'Hiphop', '999', 'hiphop.jpg'),
(7, 'Contemporary', '999', 'contemporary.png');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `style_id` int(11) NOT NULL,
  `payment_id` text NOT NULL,
  `added_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `style_id`, `payment_id`, `added_date`) VALUES
(1, 5, 'pay_NdFvtqzmdBGQ33', '2024-02-21 01:22:59'),
(2, 6, 'pay_NdFyE0PQr7XfWX', '2024-02-21 01:25:11'),
(3, 7, 'pay_NdG13ciuNpHl0P', '2024-02-21 01:27:51'),
(4, 5, 'pay_NdG4Fs4R7VAQHw', '2024-02-21 01:30:52'),
(5, 5, 'pay_NdGBz85o7T6GkN', '2024-02-21 01:38:13');

-- --------------------------------------------------------

--
-- Table structure for table `query`
--

CREATE TABLE `query` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `query` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `query`
--

INSERT INTO `query` (`id`, `name`, `email`, `query`, `message`) VALUES
(2, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `username` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(4, 'b', 'c@gmail.com', '$2y$10$/71YrxmCjs1a7u4vFbRaou7b4OJgVLDKduP5MW3MrkUdTKNkymiw2'),
(5, 'c', 'e@gmail.com', '$2y$10$aUxlg/Meen1k7uORJOc9Ue/DWz3htWiF5ryvCDCWNZQQqjWqCV5VW'),
(6, 'kru', 'kru@gmail.com', '$2y$10$by8xNHccVGaJa0rqkrgrIeMPkjHCtLbiFcfRKJYCWRmUEJToL79ru'),
(7, 'krutika', 'f@gmail.com', '$2y$10$SYZq0i2.1Ij1J6zSinDtZuHeCfgx/ZYmqflxhlNV7/5nPqQ5u25k6'),
(8, 'abc', 'g@gmail.com', '$2y$10$8Us8uxUFLb9GG40XiBd1muif7c9Lz/QgxlHrJ0Dk5pZZHztWS6wOe'),
(9, 'anuj', 'an@gmail.com', '$2y$10$.Wj138huPagwLbc3p8nHn.4CfLBszuSbj6OUhcpRKVoqMPcuyenRa'),
(11, 'bhavesh', 'bh@gmail.com', '$2y$10$J6o4PsxwtnbnKY37O7iATetdGb9ndMYVuI89MSX0QwB1sUYjAqUCm'),
(12, 'krutika', 'kr@gmail.com', '$2y$10$.xLcttQ/xWytlOX5OI8Zae1bvkQsRRu4x484AcGN3LHqsw1mubfmK');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `admission`
--
ALTER TABLE `admission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dancestyles`
--
ALTER TABLE `dancestyles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `query`
--
ALTER TABLE `query`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admission`
--
ALTER TABLE `admission`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `dancestyles`
--
ALTER TABLE `dancestyles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `query`
--
ALTER TABLE `query`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
