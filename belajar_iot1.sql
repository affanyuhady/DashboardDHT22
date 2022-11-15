-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 15, 2022 at 11:47 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `belajar_iot1`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_diri1`
--

CREATE TABLE `data_diri1` (
  `id` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `jk` tinyint(1) NOT NULL,
  `hak_akses` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `data_diri1`
--

INSERT INTO `data_diri1` (`id`, `username`, `password`, `nama`, `tanggal_lahir`, `alamat`, `jk`, `hak_akses`) VALUES
(21, 'admin', '$2y$10$D43EW1SE.RZaWj5KGMzYwuaCDHLMrqxff0Jq78iHJeXYqfiOsUhOS', 'AFFAN YUHADY', '1998-05-14', 'Jl. Hamka No 15BC', 1, '1'),
(22, 'operator', '$2y$10$xedfWf2YL4zLa8wVEdRri.ZFsJiTpDe0ppZdT.HMUJfOxowhFRJvO', 'AHMAD ZAKI', '1997-08-07', 'JIREK', 1, '1'),
(23, 'operator1', '$2y$10$58n5xBPwZbf5cDyGw3lZHeeZYtn6Dw5s05l/qpHP.owEyRe1sK9Ym', 'ARYA PRIMA P', '1999-03-22', 'BENTENG', 1, '2');

-- --------------------------------------------------------

--
-- Table structure for table `devices1`
--

CREATE TABLE `devices1` (
  `serialnumber` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `devices1`
--

INSERT INTO `devices1` (`serialnumber`) VALUES
('13588547'),
('XCGHJ');

-- --------------------------------------------------------

--
-- Table structure for table `sensor1`
--

CREATE TABLE `sensor1` (
  `id` int NOT NULL,
  `serial_number` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `sensor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nilai` int NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sensor1`
--

INSERT INTO `sensor1` (`id`, `serial_number`, `sensor`, `nilai`, `waktu`) VALUES
(1, 'XCGHJ', 'Suhu', 25, '2022-11-08 16:40:20'),
(2, 'IUYGB', 'Kelembaban', 45, '2022-11-08 16:40:20'),
(9, 'XCGHJ', 'Suhu', 28, '2022-11-13 18:36:35'),
(10, 'XCGHJ', 'Suhu', 29, '2022-11-13 18:39:48'),
(11, 'XCGHJ', 'Suhu', 30, '2022-11-13 18:40:49'),
(12, 'XCGHJ', 'Suhu', 24, '2022-11-13 18:45:49'),
(13, 'IUYGB', 'Kelembaban', 50, '2022-11-14 16:05:28'),
(14, 'IUYGB', 'Kelembaban', 55, '2022-11-14 16:05:28'),
(15, 'IUYGB', 'Kelembaban', 60, '2022-11-14 16:07:43'),
(16, 'IUYGB', 'Kelembaban', 65, '2022-11-14 16:08:43'),
(17, 'IUYGB', 'Kelembaban', 70, '2022-11-14 16:10:43'),
(18, 'IUYGB', 'Kelembaban', 71, '2022-11-14 16:12:43'),
(19, 'XCGHJ', 'Kelembaban', 64, '2022-11-15 08:26:39'),
(20, 'XCGHJ', 'Suhu', 26, '2022-11-15 08:27:04'),
(21, 'XCGHJ', 'Suhu', 27, '2022-11-15 08:27:09'),
(22, 'XCGHJ', 'Suhu', 25, '2022-11-15 08:27:22'),
(23, 'XCGHJ', 'Suhu', 25, '2022-11-15 08:54:38'),
(24, 'XCGHJ', 'Suhu', 25, '2022-11-15 08:54:42'),
(25, 'XCGHJ', 'Suhu', 25, '2022-11-15 08:54:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_diri1`
--
ALTER TABLE `data_diri1`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `devices1`
--
ALTER TABLE `devices1`
  ADD PRIMARY KEY (`serialnumber`);

--
-- Indexes for table `sensor1`
--
ALTER TABLE `sensor1`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_diri1`
--
ALTER TABLE `data_diri1`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `sensor1`
--
ALTER TABLE `sensor1`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
