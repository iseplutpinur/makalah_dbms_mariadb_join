INSERT INTO `pengadaan` (`kode`, `pegawai_id`, `distributor_id`, `created_at`, `updated_at`)
VALUES
('', NULL, NULL, current_timestamp(), current_timestamp()),
('', NULL, NULL, current_timestamp(), current_timestamp()),
('', NULL, NULL, current_timestamp(), current_timestamp()),
('', NULL, NULL, current_timestamp(), current_timestamp()),
('', NULL, NULL, current_timestamp(), current_timestamp()),
('', NULL, NULL, current_timestamp(), current_timestamp()),
('', NULL, NULL, current_timestamp(), current_timestamp()),
('', NULL, NULL, current_timestamp(), current_timestamp()),
('', NULL, NULL, current_timestamp(), current_timestamp()),

select select_list
from t1
left join t2 on join_condition;


select select_list
from t1
inner join t2 on t1.column1 = t2.column1;


select select_list
from t1
inner join t2 using (column1);


select select_list
from t1
inner join t2 on join_condition2
inner join t3 on join_condition2
...;


select 
    c.name country, 
    r.name region
from countries c
inner join regions r 
    on r.region_id = c.region_id
order by c.name;

START TRANSACTION;
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
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pengadaan`
--

CREATE TABLE `pengadaan` (
  `kode` varchar(255) NOT NULL,
  `pegawai_id` int(11) DEFAULT NULL,
  `distributor_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`kode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `kode` varchar(255) NOT NULL,
  `pegawai_id` int(11) DEFAULT NULL,
  `pembeli_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`kode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD KEY `jenis_id` (`jenis_id`),
  ADD KEY `satuan_id` (`satuan_id`);

--
-- Indexes for table `pengadaan`
--
ALTER TABLE `pengadaan`
  ADD KEY `distributor_id` (`distributor_id`),
  ADD KEY `pegawai_id` (`pegawai_id`);

--
-- Indexes for table `pengadaan_detail`
--
ALTER TABLE `pengadaan_detail`
  ADD KEY `pengadaan_kode` (`kode`),
  ADD KEY `obat_id` (`obat_id`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD KEY `pembeli_id` (`pembeli_id`),
  ADD KEY `pegawai_id` (`pegawai_id`);

--
-- Indexes for table `penjualan_detail`
--
ALTER TABLE `penjualan_detail`
  ADD KEY `penjualan_kode` (`kode`),
  ADD KEY `obat_id` (`obat_id`);

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
