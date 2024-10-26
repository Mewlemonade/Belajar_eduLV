-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2024 at 07:12 PM
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
-- Database: `apotek`
--

-- --------------------------------------------------------

--
-- Table structure for table `apoteker`
--

CREATE TABLE `apoteker` (
  `id` int(11) NOT NULL,
  `nama` varchar(32) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `no_tlp` char(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `apoteker`
--

INSERT INTO `apoteker` (`id`, `nama`, `tanggal_lahir`, `alamat`, `no_tlp`) VALUES
(1, 'Jamilah', '2000-07-28', 'Jalan Kamboja', '081234567890'),
(2, 'Vna', '2002-01-21', 'Jalan Icikiwir', '081234757890'),
(3, 'Michel', '2002-06-26', 'Jalan Permanen', '0812923567890'),
(4, 'Yuchen', '2008-07-10', 'Jalan Skibidi', '081234647890'),
(5, 'Asep', '2010-03-12', 'Jalan Mawar', '0812345678734'),
(6, 'Udin', '2004-02-16', 'Jalan Melati', '081234357890'),
(7, 'Somad', '2003-08-17', 'Jalan Anggrek', '081234567730'),
(8, 'Poye', '2001-09-28', 'Jalan Dandelion', '081238267890'),
(9, 'Keliana', '2006-12-29', 'Jalan Melati', '081234502890'),
(10, 'Nakaba', '2009-10-05', 'Jalan Yabluv', '081221567890'),
(11, 'Mamat', '2007-06-01', 'Jalan Cyka', '081234564790'),
(12, 'junaidi', '2000-10-01', 'Jalan Kamboja', '8123456789');

-- --------------------------------------------------------

--
-- Table structure for table `detail_apoteker`
--

CREATE TABLE `detail_apoteker` (
  `id` int(11) NOT NULL,
  `domisili` varchar(32) DEFAULT NULL,
  `agama` varchar(32) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `facebook` varchar(64) DEFAULT NULL,
  `instagram` varchar(64) DEFAULT NULL,
  `twitter` varchar(64) DEFAULT NULL,
  `linked_in` varchar(64) DEFAULT NULL,
  `blog` varchar(64) DEFAULT NULL,
  `youtube` varchar(64) DEFAULT NULL,
  `id_apoteker` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_apoteker`
--

INSERT INTO `detail_apoteker` (`id`, `domisili`, `agama`, `email`, `facebook`, `instagram`, `twitter`, `linked_in`, `blog`, `youtube`, `id_apoteker`) VALUES
(1, 'Jakarta', 'Kristen', 'jamilah123@gmail.com', 'facebook.com/jamilah', 'instagram.com/jamilah', 'twitter.com/jamilah', 'linkedin.com/jamilah', '', '', 1),
(2, 'Jakarta', 'Kristen', 'michel123@gmail.com', 'facebook.com/michel', 'instagram.com/michel', 'twitter.com/michel', 'linkedin.com/michel', NULL, 'youtube.com/michel123', 3),
(3, 'Bali', 'Hindu', 'yuchen123@gmail.com', NULL, NULL, NULL, 'linkedin.com/yuchen', 'yuchen.blog', NULL, 4),
(4, 'Jawa Timur', 'Islam', 'asep123@gmail.com', 'facebook.com/asep', NULL, NULL, NULL, 'asep.blog', 'youtube.com/asep123', 5),
(5, 'Jawa Tengah', 'Budha', 'udin123@gmail.com', NULL, 'instagram.com/udin', 'twitter.com/udin', NULL, NULL, 'youtube.com/udin123', 6),
(6, 'Jakarta', 'Islam', 'somad123@gmail.com', 'facebook.com/somad', NULL, 'twitter.com/somad', NULL, NULL, NULL, 7),
(7, 'Banten', 'Katolik', 'mamat123@gmail.com', 'facebook.com/mamat', 'instagram.com/mamat', 'twitter.com/mamat', 'linkedin.com/mamat', 'mamat.blog', 'youtube.com/mamat123', 11),
(8, 'Bali', 'Kristen', 'keliana123@gmail.com', 'facebook.com/keliana', 'instagram.com/keliana', NULL, 'linkedin.com/keliana', 'keliana.blog', 'youtube.com/keliana', 9),
(9, 'Jawa Timur', 'Kristen', 'vna123@gmail.com', 'facebook.com/vna', 'instagram.com/vna', 'twitter.com/vna', 'linkedin.com/vna', 'vna.blog', 'youtube.com/vna123', 2),
(10, 'Jawa Barat', 'Islam', 'nakaba123@gmail.com', 'facebook.com/nakaba', 'instagram.com/nakaba', 'twitter.com/nakaba', 'linkedin.com/nakaba', 'nakaba.blog', 'youtube.com/nakaba', 10);

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi_apotek`
--

CREATE TABLE `detail_transaksi_apotek` (
  `id` int(11) NOT NULL,
  `id_obat` int(11) DEFAULT NULL,
  `id_transaksi` int(11) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_transaksi_apotek`
--

INSERT INTO `detail_transaksi_apotek` (`id`, `id_obat`, `id_transaksi`, `harga`) VALUES
(1, 1, 1, 8500),
(2, 2, 2, 9500),
(3, 3, 3, 6800),
(4, 4, 4, 9800),
(5, 5, 5, 2000),
(6, 6, 6, 3000),
(7, 7, 7, 4000),
(8, 8, 8, 5000),
(9, 9, 9, 8000),
(10, 10, 10, 7500);

-- --------------------------------------------------------

--
-- Table structure for table `kategori_obat`
--

CREATE TABLE `kategori_obat` (
  `id` int(11) NOT NULL,
  `nama` varchar(64) NOT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori_obat`
--

INSERT INTO `kategori_obat` (`id`, `nama`, `deskripsi`) VALUES
(1, 'Vitamin', NULL),
(2, 'Antibiotik', NULL),
(3, 'Antipiretik', NULL),
(4, 'Antiseptik', NULL),
(5, 'Antidepresan', NULL),
(6, 'Antihipertensi', NULL),
(7, 'Antidiabetik', NULL),
(8, 'Antiemetik', NULL),
(9, 'Diuretik', NULL),
(10, 'Antijamur', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `id` int(11) NOT NULL,
  `nama` varchar(64) NOT NULL,
  `harga` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`id`, `nama`, `harga`, `stock`, `id_kategori`) VALUES
(1, 'Vitamin A', 8500, 16, 1),
(2, 'Vitamin B', 9500, 13, 1),
(3, 'Penisilin', 6800, 76, 2),
(4, 'Makrolida', 9800, 37, 2),
(5, 'Paracetamol', 2000, 100, 3),
(6, 'Ibuprofen', 3000, 200, 3),
(7, 'Sertraline', 4000, 300, 5),
(8, 'Fluoxetine', 5000, 400, 5),
(9, 'Betadine', 8000, 150, 4),
(10, 'Chlorhexidine', 7500, 170, 4);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id` int(11) NOT NULL,
  `nama` varchar(32) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `no_tlp` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id`, `nama`, `alamat`, `no_tlp`) VALUES
(1, 'Shaquila', NULL, '089765432112'),
(2, 'Matadore', NULL, '089766232112'),
(3, 'Reysa', NULL, '089765432134'),
(4, 'Javier', NULL, '089765432156'),
(5, 'Gorygle', NULL, '089765432178'),
(6, 'Sasha', NULL, '089765432109'),
(7, 'Popeye', NULL, '089765432123'),
(8, 'Henry', NULL, '089765432145'),
(9, 'Komeng', NULL, '089765432167'),
(10, 'Lomena', NULL, '08928374525'),
(12, 'jamaludin', NULL, '08928374525');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_apotek`
--

CREATE TABLE `transaksi_apotek` (
  `id` int(11) NOT NULL,
  `tanggal_transaksi` date DEFAULT NULL,
  `total_harga` int(11) DEFAULT NULL,
  `id_pelanggan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi_apotek`
--

INSERT INTO `transaksi_apotek` (`id`, `tanggal_transaksi`, `total_harga`, `id_pelanggan`) VALUES
(1, '2010-01-21', 8500, 1),
(2, '2010-01-21', 9500, 2),
(3, '2010-07-06', 6800, 3),
(4, '2010-02-16', 9800, 4),
(5, '2010-04-19', 2000, 5),
(6, '2011-07-06', 3000, 6),
(7, '2011-02-24', 4000, 7),
(8, '2011-04-17', 5000, 8),
(9, '2011-06-29', 8000, 9),
(10, '2011-09-11', 7500, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apoteker`
--
ALTER TABLE `apoteker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_apoteker`
--
ALTER TABLE `detail_apoteker`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_apoteker` (`id_apoteker`);

--
-- Indexes for table `detail_transaksi_apotek`
--
ALTER TABLE `detail_transaksi_apotek`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_obat` (`id_obat`),
  ADD KEY `id_transaksi` (`id_transaksi`);

--
-- Indexes for table `kategori_obat`
--
ALTER TABLE `kategori_obat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kategori_obat` (`id_kategori`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi_apotek`
--
ALTER TABLE `transaksi_apotek`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pelanggan` (`id_pelanggan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apoteker`
--
ALTER TABLE `apoteker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `detail_apoteker`
--
ALTER TABLE `detail_apoteker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `detail_transaksi_apotek`
--
ALTER TABLE `detail_transaksi_apotek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `kategori_obat`
--
ALTER TABLE `kategori_obat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `obat`
--
ALTER TABLE `obat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `transaksi_apotek`
--
ALTER TABLE `transaksi_apotek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_apoteker`
--
ALTER TABLE `detail_apoteker`
  ADD CONSTRAINT `detail_apoteker_ibfk_1` FOREIGN KEY (`id_apoteker`) REFERENCES `apoteker` (`id`);

--
-- Constraints for table `detail_transaksi_apotek`
--
ALTER TABLE `detail_transaksi_apotek`
  ADD CONSTRAINT `detail_transaksi_apotek_ibfk_1` FOREIGN KEY (`id_obat`) REFERENCES `obat` (`id`),
  ADD CONSTRAINT `detail_transaksi_apotek_ibfk_2` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi_apotek` (`id`);

--
-- Constraints for table `obat`
--
ALTER TABLE `obat`
  ADD CONSTRAINT `fk_kategori_obat` FOREIGN KEY (`id_kategori`) REFERENCES `kategori_obat` (`id`);

--
-- Constraints for table `transaksi_apotek`
--
ALTER TABLE `transaksi_apotek`
  ADD CONSTRAINT `transaksi_apotek_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
