-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2021 at 05:46 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
--
-- Database: `fms_db`
--
-- --------------------------------------------------------
--
-- Table structure for table `db_folder`
--
CREATE TABLE `db_folder` (
  `id_folder` int(10) NOT NULL,
  `nama_folder` varchar(100) NOT NULL,
  `variable_folder` varchar(100) NOT NULL,
  `keterangan_folder` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Indexes for dumped tables
--
--
-- Indexes for table `db_folder`
--
ALTER TABLE `db_folder`
  ADD PRIMARY KEY (`id_folder`);
--
-- AUTO_INCREMENT for dumped tables
--
--
-- AUTO_INCREMENT for table `db_folder`
--
ALTER TABLE `db_folder`
  MODIFY `id_folder` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
