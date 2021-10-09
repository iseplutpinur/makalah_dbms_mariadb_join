-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 09, 2021 at 09:46 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `apotik`
--

-- --------------------------------------------------------

--
-- Table structure for table `distributor`
--

CREATE TABLE `distributor` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `no_telepon` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0 Tidak Aktif | 1 Aktif',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `distributor`
--

INSERT INTO `distributor` (`id`, `nama`, `email`, `no_telepon`, `alamat`, `keterangan`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Pt Kimia farma', 'kimiafarma@gmail.com', '085798132505', 'Bandung', 'Dumy', 1, '2021-10-07 12:28:40', '2021-10-07 12:28:40'),
(2, 'Pt obat sakti', 'sakti', '123', '123', 'ket', 1, '2021-10-07 12:28:40', '2021-10-07 12:28:40');

-- --------------------------------------------------------

--
-- Table structure for table `jenis`
--

CREATE TABLE `jenis` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0 Tidak Aktif | 1 Aktif',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jenis`
--

INSERT INTO `jenis` (`id`, `nama`, `keterangan`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Cair', 'ket', 1, '2021-10-07 12:31:45', '2021-10-07 12:31:45'),
(2, 'Tablet', 'ket', 1, '2021-10-07 12:31:45', '2021-10-07 12:31:45'),
(3, 'Kapsul', 'ket', 1, '2021-10-07 12:31:45', '2021-10-07 12:31:45'),
(4, 'Pill', 'ket', 1, '2021-10-07 12:31:45', '2021-10-07 12:31:45'),
(5, 'Serbuk', 'ket', 1, '2021-10-07 12:31:45', '2021-10-07 12:31:45'),
(6, 'Salep', 'ket', 1, '2021-10-07 12:31:45', '2021-10-07 12:31:45'),
(7, 'Tetes', 'ket', 1, '2021-10-07 12:31:45', '2021-10-07 12:31:45');

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `jenis_id` int(11) DEFAULT NULL,
  `satuan_id` int(11) DEFAULT NULL,
  `harga_beli` bigint(20) DEFAULT NULL,
  `harga_jual` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0 Tidak Aktif | 1 Aktif',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`id`, `nama`, `stok`, `jenis_id`, `satuan_id`, `harga_beli`, `harga_jual`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Paracetamol', 1, 2, 2, 2500, 5000, 1, '2021-10-07 12:34:48', '2021-10-09 16:37:54'),
(2, 'Kataflam', 0, 2, 2, 10000, 15000, 1, '2021-10-07 12:41:44', '2021-10-07 12:41:44'),
(3, 'Antimo', 1, 1, 2, 5000, 7500, 1, '2021-10-07 12:41:44', '2021-10-09 23:35:03'),
(4, 'Tramadol', 0, NULL, NULL, NULL, NULL, 1, '2021-10-07 12:49:07', '2021-10-09 16:38:31'),
(5, 'PIROXICAM', 0, 2, 1, NULL, NULL, NULL, '2021-10-09 13:38:36', '2021-10-09 16:38:27'),
(6, 'Hydrocorti', 1, 6, 2, NULL, NULL, NULL, '2021-10-09 13:38:36', '2021-10-09 16:38:20'),
(7, 'Acyclovir Cream', 1, 6, 2, NULL, NULL, NULL, '2021-10-09 13:40:26', '2021-10-09 16:38:17'),
(8, 'Ethambutol', 2, 2, 2, NULL, NULL, NULL, '2021-10-09 13:40:26', '2021-10-09 16:38:13'),
(9, 'Promag', 5, 2, 1, NULL, NULL, NULL, '2021-10-09 13:43:41', '2021-10-09 16:38:10'),
(10, 'Nebacetin', 4, 5, 2, NULL, NULL, NULL, '2021-10-09 13:43:41', '2021-10-09 16:38:05');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL,
  `nip` varchar(255) DEFAULT NULL,
  `nama_depan` varchar(255) DEFAULT NULL,
  `nama_belakang` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `no_telepon` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0 Tidak Aktif | 1 Aktif',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `nip`, `nama_depan`, `nama_belakang`, `email`, `password`, `no_telepon`, `alamat`, `status`, `created_at`, `updated_at`) VALUES
(1, '2113191234', 'Isep Lutpi', 'Nur', 'iseplutfinur@gmail.com', 'isep1234', '0888134689793', 'Sekeloa, Bandung', 1, '2021-10-09 13:49:29', '2021-10-09 13:59:29'),
(2, '2113174658', 'Adistia ', 'Ramadhani', 'adistiaramadhani@gmail.com', 'adistia123', '089364765685', 'Antapani,Bandung', 1, '2021-10-09 13:49:29', '2021-10-09 13:49:29'),
(3, '21131746568', 'Alam', 'Nurzaman', 'alamnurzaman@gmail.com', 'alam1234', '088834561239', 'Ciumbuleuit, Bandung', 1, '2021-10-09 13:55:47', '2021-10-09 13:55:47'),
(4, '2113191098', 'Dara Atria', 'Ferliandini', 'daraatriaferliandini@gmail.com', 'dara1234', '0889391328', 'Cikutra Barat, Bandung', 1, '2021-10-09 13:55:47', '2021-10-09 13:55:47');

-- --------------------------------------------------------

--
-- Table structure for table `pembeli`
--

CREATE TABLE `pembeli` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `no_telepon` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0 Tidak Aktif | 1 Aktif',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembeli`
--

INSERT INTO `pembeli` (`id`, `nama`, `email`, `no_telepon`, `alamat`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Zayn Malik', 'zaynmalik@gmail.com', '08889391329', 'Bojongkoneng', 1, '2021-10-09 13:58:45', '2021-10-09 13:58:45'),
(2, 'Harry Styles', 'harrys@gmail.com', '088854328586', 'Cibangkong', 1, '2021-10-09 13:58:45', '2021-10-09 13:58:45'),
(3, 'Gigi Hadid', 'gigihadid@gmail.com', '088938656877', 'Sadang Serang', 1, '2021-10-09 14:01:49', '2021-10-09 14:01:49'),
(4, 'Kendall Jenner', 'kendaljnn@gmail.com', '089374656836', 'Cicaheum', 1, '2021-10-09 14:01:49', '2021-10-09 14:01:49');

-- --------------------------------------------------------

--
-- Table structure for table `pengadaan`
--

CREATE TABLE `pengadaan` (
  `kode` varchar(255) NOT NULL,
  `pegawai_id` int(11) DEFAULT NULL,
  `distributor_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengadaan`
--

INSERT INTO `pengadaan` (`kode`, `pegawai_id`, `distributor_id`, `created_at`, `updated_at`) VALUES
('SM-2021011', 1, 1, '2021-01-01 14:16:28', '2021-10-09 23:36:11'),
('SM-2021012', 1, 1, '2021-01-15 14:16:28', '2021-10-09 23:36:13'),
('SM-2021021', 2, 2, '2021-02-01 14:16:28', '2021-10-09 23:36:17'),
('SM-2021022', 1, 1, '2021-02-15 14:16:28', '2021-10-09 23:36:15'),
('SM-2021031', 1, 2, '2021-03-01 14:16:28', '2021-10-09 23:36:21'),
('SM-2021032', 3, 1, '2021-03-15 14:16:28', '2021-10-09 23:36:27'),
('SM-2021041', 1, 1, '2021-04-01 14:16:28', '2021-10-09 23:36:34'),
('SM-2021042', 1, 2, '2021-04-15 14:16:28', '2021-10-09 23:36:31'),
('SM-2021051', 1, 1, '2021-05-01 14:16:28', '2021-10-09 23:36:29'),
('SM-2021052', 3, 1, '2021-05-15 14:16:28', '2021-10-09 23:36:38');

-- --------------------------------------------------------

--
-- Table structure for table `pengadaan_detail`
--

CREATE TABLE `pengadaan_detail` (
  `id` int(11) NOT NULL,
  `kode` varchar(255) DEFAULT NULL,
  `obat_id` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengadaan_detail`
--

INSERT INTO `pengadaan_detail` (`id`, `kode`, `obat_id`, `jumlah`, `created_at`, `updated_at`) VALUES
(1, 'SM-2021011', 1, 5, '2021-01-01 14:44:20', '2021-01-01 14:44:20'),
(2, 'SM-2021012', 2, 3, '2021-01-15 14:44:20', '2021-01-15 14:44:20'),
(3, 'SM-2021021', 3, 2, '2021-02-01 14:45:44', '2021-02-01 14:45:44'),
(4, 'SM-2021022', 4, 5, '2021-02-15 14:45:44', '2021-02-15 14:45:44'),
(5, 'SM-2021031', 5, 7, '2021-03-01 14:47:15', '2021-03-01 14:47:15'),
(6, 'SM-2021032', 6, 5, '2021-03-15 14:47:15', '2021-03-15 14:47:15'),
(7, 'SM-2021041', 7, 4, '2021-04-01 14:52:11', '2021-04-01 14:52:11'),
(8, 'SM-2021042', 8, 8, '2021-04-15 14:52:11', '2021-04-15 14:52:11'),
(9, 'SM-2021051', 9, 5, '2021-05-01 14:55:55', '2021-05-01 14:55:55'),
(10, 'SM-2021052', 3, 1, '2021-05-15 14:55:55', '2021-10-09 23:35:21');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `kode` varchar(255) NOT NULL,
  `pegawai_id` int(11) DEFAULT NULL,
  `pembeli_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`kode`, `pegawai_id`, `pembeli_id`, `created_at`, `updated_at`) VALUES
('SK-2021011', 4, NULL, '2021-01-06 15:00:34', '2021-10-09 16:03:13'),
('SK-2021012', 2, NULL, '2021-01-08 15:00:34', '2021-10-09 16:03:07'),
('SK-2021021', 1, 4, '2021-02-04 15:00:34', '2021-10-09 15:50:53'),
('SK-2021022', 3, NULL, '2021-02-06 15:00:34', '2021-10-09 15:52:30'),
('SK-2021031', 1, NULL, '2021-03-07 15:00:34', '2021-10-09 16:03:19'),
('SK-2021032', 2, 2, '2021-03-15 15:00:34', '2021-10-09 15:51:19'),
('SK-2021041', 3, 4, '2021-04-09 15:00:34', '2021-10-09 15:51:27'),
('SK-2021042', 2, 1, '2021-04-20 15:00:34', '2021-10-09 15:51:35'),
('SK-2021051', 1, NULL, '2021-05-13 15:00:34', '2021-10-09 15:52:40'),
('SK-2021052', 4, 2, '2021-05-16 15:00:34', '2021-10-09 15:51:55');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan_detail`
--

CREATE TABLE `penjualan_detail` (
  `id` int(11) NOT NULL,
  `kode` varchar(255) DEFAULT NULL,
  `obat_id` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjualan_detail`
--

INSERT INTO `penjualan_detail` (`id`, `kode`, `obat_id`, `jumlah`, `created_at`, `updated_at`) VALUES
(11, 'SK-2021011', 1, 1, '2021-01-06 00:00:00', '2021-01-06 00:00:00'),
(12, 'SK-2021011', 3, 1, '2021-01-06 00:00:00', '2021-01-06 00:00:00'),
(13, 'SK-2021011', 4, 3, '2021-01-06 00:00:00', '2021-01-06 00:00:00'),
(14, 'SK-2021012', 1, 2, '2021-08-01 00:00:00', '2021-08-01 00:00:00'),
(15, 'SK-2021012', 2, 1, '2021-08-01 00:00:00', '2021-08-01 00:00:00'),
(16, 'SK-2021021', 1, 1, '2021-02-04 00:00:00', '2021-02-04 00:00:00'),
(17, 'SK-2021021', 2, 1, '2021-02-04 00:00:00', '2021-02-04 00:00:00'),
(18, 'SK-2021021', 3, 1, '2021-02-04 00:00:00', '2021-02-04 00:00:00'),
(19, 'SK-2021021', 4, 2, '2021-02-04 00:00:00', '2021-02-04 00:00:00'),
(20, 'SK-2021022', 5, 1, '2021-02-06 00:00:00', '2021-02-06 00:00:00'),
(21, 'SK-2021022', 6, 1, '2021-02-06 00:00:00', '2021-02-06 00:00:00'),
(22, 'SK-2021031', 5, 1, '2021-03-07 00:00:00', '2021-03-07 00:00:00'),
(23, 'SK-2021031', 6, 1, '2021-03-07 00:00:00', '2021-03-07 00:00:00'),
(24, 'SK-2021032', 5, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'SK-2021032', 6, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'SK-2021032', 7, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'SK-2021032', 8, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'SK-2021041', 5, 1, '2021-09-04 00:00:00', '2021-09-04 00:00:00'),
(29, 'SK-2021041', 6, 1, '2021-09-04 00:00:00', '2021-09-04 00:00:00'),
(30, 'SK-2021042', 5, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'SK-2021042', 8, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'SK-2021051', 5, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'SK-2021051', 8, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'SK-2021052', 5, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `satuan`
--

CREATE TABLE `satuan` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0 Tidak Aktif | 1 Aktif',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `satuan`
--

INSERT INTO `satuan` (`id`, `nama`, `keterangan`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Box', NULL, 1, '2021-10-07 12:33:24', '2021-10-07 12:33:24'),
(2, 'Pcs', NULL, 1, '2021-10-07 12:33:24', '2021-10-07 12:33:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `distributor`
--
ALTER TABLE `distributor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jenis_id` (`jenis_id`),
  ADD KEY `satuan_id` (`satuan_id`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengadaan`
--
ALTER TABLE `pengadaan`
  ADD PRIMARY KEY (`kode`),
  ADD KEY `distributor_id` (`distributor_id`),
  ADD KEY `pegawai_id` (`pegawai_id`);

--
-- Indexes for table `pengadaan_detail`
--
ALTER TABLE `pengadaan_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pengadaan_kode` (`kode`),
  ADD KEY `obat_id` (`obat_id`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`kode`),
  ADD KEY `pembeli_id` (`pembeli_id`),
  ADD KEY `pegawai_id` (`pegawai_id`);

--
-- Indexes for table `penjualan_detail`
--
ALTER TABLE `penjualan_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `penjualan_kode` (`kode`),
  ADD KEY `obat_id` (`obat_id`);

--
-- Indexes for table `satuan`
--
ALTER TABLE `satuan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `distributor`
--
ALTER TABLE `distributor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jenis`
--
ALTER TABLE `jenis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `obat`
--
ALTER TABLE `obat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pembeli`
--
ALTER TABLE `pembeli`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pengadaan_detail`
--
ALTER TABLE `pengadaan_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `penjualan_detail`
--
ALTER TABLE `penjualan_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `satuan`
--
ALTER TABLE `satuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `obat`
--
ALTER TABLE `obat`
  ADD CONSTRAINT `obat_ibfk_1` FOREIGN KEY (`jenis_id`) REFERENCES `jenis` (`id`),
  ADD CONSTRAINT `obat_ibfk_2` FOREIGN KEY (`satuan_id`) REFERENCES `satuan` (`id`);

--
-- Constraints for table `pengadaan`
--
ALTER TABLE `pengadaan`
  ADD CONSTRAINT `pengadaan_ibfk_1` FOREIGN KEY (`distributor_id`) REFERENCES `distributor` (`id`),
  ADD CONSTRAINT `pengadaan_ibfk_2` FOREIGN KEY (`pegawai_id`) REFERENCES `pegawai` (`id`);

--
-- Constraints for table `pengadaan_detail`
--
ALTER TABLE `pengadaan_detail`
  ADD CONSTRAINT `pengadaan_detail_ibfk_1` FOREIGN KEY (`kode`) REFERENCES `pengadaan` (`kode`),
  ADD CONSTRAINT `pengadaan_detail_ibfk_2` FOREIGN KEY (`obat_id`) REFERENCES `obat` (`id`);

--
-- Constraints for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `penjualan_ibfk_1` FOREIGN KEY (`pembeli_id`) REFERENCES `pembeli` (`id`),
  ADD CONSTRAINT `penjualan_ibfk_2` FOREIGN KEY (`pegawai_id`) REFERENCES `pegawai` (`id`);

--
-- Constraints for table `penjualan_detail`
--
ALTER TABLE `penjualan_detail`
  ADD CONSTRAINT `penjualan_detail_ibfk_1` FOREIGN KEY (`kode`) REFERENCES `penjualan` (`kode`),
  ADD CONSTRAINT `penjualan_detail_ibfk_2` FOREIGN KEY (`obat_id`) REFERENCES `obat` (`id`);
COMMIT;
