-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 29, 2017 at 05:56 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api_fls`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE `agenda` (
  `agenda_id` int(11) NOT NULL,
  `nama_agenda` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `waktu_mulai` datetime NOT NULL,
  `waktu_selesai` datetime NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `pakaian` varchar(300) NOT NULL,
  `created_at` timestamp NOT NULL CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agenda`
--

INSERT INTO `agenda` (`agenda_id`, `nama_agenda`, `gambar`, `deskripsi`, `waktu_mulai`, `waktu_selesai`, `lokasi`, `pakaian`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Welcoming Session', 'https://www.mathworks.com/content/mathworks/www/en/solutions/verification-validation/jcr:content/svg.adapt.full.high.svg/1490007688025.svg', 'ini conoth deskripsi', '2017-05-30 10:00:00', '2017-05-30 12:00:00', 'balaikota', 'bebas rapi sopan', '2017-05-29 15:49:50', NULL, NULL),
(2, 'ini agenda kedua', '', 'test agenda kedua deskpriso', '2017-05-30 13:00:00', '2017-05-30 14:00:00', 'Semarang Barat', 'Jas Keren', '2017-05-29 15:50:30', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `info_guide`
--

CREATE TABLE `info_guide` (
  `info_id` int(11) NOT NULL,
  `judul_info` text NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info_guide`
--

INSERT INTO `info_guide` (`info_id`, `judul_info`, `deskripsi`, `gambar`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Ditemukan Tas Hilang warna Hijaun', 'ini contoh deskripsi', '', '2017-05-29 15:47:46', NULL, NULL),
(2, 'ditemukan hp nokia warna kuning', 'ini contoh deskripsi 2', '', '2017-05-29 15:48:07', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `keys`
--

INSERT INTO `keys` (`id`, `key`, `level`, `ignore_limits`, `date_created`) VALUES
(1, '0ahUKEwiUl8P1uZXUAhWLpY8KHVVSBrwQ', 1, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`agenda_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `info_guide`
--
ALTER TABLE `info_guide`
  ADD PRIMARY KEY (`info_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `agenda_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `info_guide`
--
ALTER TABLE `info_guide`
  MODIFY `info_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
