-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 09, 2020 at 07:54 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `belajarSQL`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Kependudukans`
--

CREATE TABLE `Kependudukans` (
  `NIK` char(16) NOT NULL,
  `KependudukanNama` varchar(50) DEFAULT NULL,
  `GolDarah` char(2) DEFAULT NULL,
  `TanggalLahir` date DEFAULT NULL,
  `KotaID` int(11) DEFAULT NULL,
  `ProvinsiID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Kependudukans`
--

INSERT INTO `Kependudukans` (`NIK`, `KependudukanNama`, `GolDarah`, `TanggalLahir`, `KotaID`, `ProvinsiID`) VALUES
('1234567890245689', 'Wira', 'z', '2000-12-30', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Kotas`
--

CREATE TABLE `Kotas` (
  `KotaID` int(11) NOT NULL,
  `ProvinsiID` int(11) DEFAULT NULL,
  `KotaName` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Kotas`
--

INSERT INTO `Kotas` (`KotaID`, `ProvinsiID`, `KotaName`) VALUES
(1, NULL, 'Surabaya'),
(2, 16, 'Pacitan'),
(3, 16, 'Ponorogo'),
(4, 16, 'Trenggalek'),
(5, 16, 'Tulungagung'),
(6, 16, 'Kanigoro'),
(7, 16, 'Ngasem'),
(8, 16, 'Kepanjen'),
(9, 16, 'Lumajang'),
(10, 16, 'Jember'),
(11, 16, 'Banyuwangi'),
(12, 16, 'Bondowoso'),
(13, 16, 'Situbondo'),
(14, 16, 'Kraksaan'),
(15, 16, 'Bangil'),
(16, 16, 'Sidoarjo'),
(17, 16, 'Mojosari'),
(18, 16, 'Jombang'),
(19, 16, 'Nganjuk'),
(20, 16, 'Caruban'),
(21, 16, 'Magetan'),
(22, 16, 'Ngawi'),
(23, 16, 'Bojonegoro'),
(24, 16, 'Tuban'),
(25, 16, 'Lamongan'),
(26, 16, 'Gresik'),
(27, 16, 'Bangkalan'),
(28, 16, 'Sampang'),
(29, 16, 'Pamekasan'),
(30, 16, 'Sumenep'),
(31, 16, 'Kota Kediri'),
(32, 16, 'Kota Blitar'),
(33, 16, 'Kota Malang'),
(34, 16, 'Kota Probolinggo'),
(35, 16, 'Kota Pasuruan'),
(36, 16, 'Kota Mojokerto'),
(37, 16, 'Kota Madiun'),
(38, 16, 'Kota Surabaya'),
(39, 16, 'Kota Batu');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_03_03_044015_create_table1s_table', 2),
(5, '2020_03_03_045122_create_tab_pegawais_table', 3),
(6, '2020_03_03_053021_upd_tab_pegawai', 4),
(7, '2020_03_03_054418_tab_kantor', 4),
(8, '2020_03_05_063944_table_pelajaran', 5),
(9, '2020_03_09_040239_create_uploads_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Provinsis`
--

CREATE TABLE `Provinsis` (
  `ProvinsiID` int(11) NOT NULL,
  `ProvinsiName` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Provinsis`
--

INSERT INTO `Provinsis` (`ProvinsiID`, `ProvinsiName`) VALUES
(1, 'Jawa Timur'),
(2, 'Nanggroe Aceh Darussalaam'),
(3, 'Sumatra Utara'),
(4, 'Sumatra Barat'),
(5, 'Riau'),
(6, 'Jambi'),
(7, 'Sumatra Selatan'),
(8, 'Bengkulu'),
(9, 'Lampung'),
(10, 'Kep. Bangka Belitung'),
(11, 'Kep. Riau'),
(12, 'DKI Jakarta'),
(13, 'Jawa Barat'),
(14, 'Jawa Tengah'),
(15, 'DI Yogyakarta'),
(16, 'Jawa Timur'),
(17, 'Banten'),
(18, 'Bali'),
(19, 'Nusa Tenggara Barat'),
(20, 'Nusa Tenggara Timur'),
(21, 'Kalimantan Barat'),
(22, 'Kalimantan Tengah'),
(23, 'Kalimantan Selatan'),
(24, 'Kalimantan Timur'),
(25, 'Sulawesi Utara'),
(26, 'Sulawesi Tengah'),
(27, 'Sulawesi Selatan'),
(28, 'Sulawesi Tenggara'),
(29, 'Gorontalo'),
(30, 'Maluku'),
(31, 'Maluku Utara'),
(32, 'Papua'),
(33, 'Irian Jaya Barat');

-- --------------------------------------------------------

--
-- Table structure for table `Table1`
--

CREATE TABLE `Table1` (
  `id` int(11) NOT NULL,
  `IdSiswa` varchar(15) NOT NULL,
  `idSekolah` varchar(15) DEFAULT NULL,
  `Nama` varchar(50) NOT NULL,
  `Alamat` text DEFAULT NULL,
  `Usia` int(3) DEFAULT NULL,
  `fileID` varchar(150) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Table1`
--

INSERT INTO `Table1` (`id`, `IdSiswa`, `idSekolah`, `Nama`, `Alamat`, `Usia`, `fileID`, `updated_at`, `created_at`, `deleted_at`) VALUES
(1, 'NIS0001', 'NISK001', 'asep sunandar', 'sby', 12, NULL, NULL, NULL, NULL),
(2, 'NIS0002', 'NISK001', 'juhari', 'surabaya', 17, NULL, NULL, NULL, NULL),
(3, 'NIS0003', 'NISK001', 'agung', 'surabaya', 18, NULL, NULL, NULL, NULL),
(4, 'NIS0004', 'NISK001', 'johadi', 'surabaya', 18, NULL, NULL, NULL, NULL),
(5, 'NIS0005', 'NISK001', 'yasir', 'surabaya', 18, NULL, NULL, NULL, NULL),
(6, 'NIS0006', 'NISK001', 'anto', 'surabaya', 18, NULL, '2020-03-02 20:44:48', NULL, '2020-03-03 03:44:48'),
(7, 'NIS0007', 'NISK001', 'avis', 'surabaya', 20, NULL, '2020-03-02 20:44:47', NULL, '2020-03-03 03:44:47'),
(8, 'NIS0008', 'NISK001', 'ardi', 'surabaya', 20, NULL, '2020-03-02 20:44:46', NULL, '2020-03-03 03:44:46'),
(9, 'NIS0009', 'NISK001', 'bagus', 'surabaya', 20, NULL, '2020-03-02 20:44:43', NULL, '2020-03-03 03:44:43'),
(10, 'NIS0010', 'NISK001', 'horison', 'surabaya', 18, NULL, '2020-03-02 20:44:43', NULL, '2020-03-03 03:44:43'),
(11, 'NIS0011', 'NISK001', 'hendro', 'surabaya', 23, NULL, '2020-03-02 20:44:42', NULL, '2020-03-03 03:44:42'),
(12, 'NIS0012', 'NISK001', 'rino', 'surabaya', 19, NULL, '2020-03-02 20:44:41', NULL, '2020-03-03 03:44:41'),
(13, 'NIS0013', 'NISK001', 'roni', 'surabaya', 19, NULL, '2020-03-02 20:44:39', NULL, '2020-03-03 03:44:39'),
(14, 'NIS0014', 'NISK001', 'reni', 'surabaya', 18, NULL, '2020-03-02 20:44:37', NULL, '2020-03-03 03:44:37'),
(15, 'NIS0015', 'NISK001', 'Ismail', 'Surabaya', 12, NULL, '2020-03-02 20:43:37', NULL, '2020-03-03 03:43:37'),
(19, 'REG0016', 'NISK001', 'kiplo', 'surabaya', 18, NULL, '2020-03-03 01:34:13', '2020-03-02 20:47:09', NULL),
(20, 'REG0017', 'NISK001', 'asdasdasd', 'surabaya', 18, NULL, '2020-03-02 20:57:16', '2020-03-02 20:57:02', '2020-03-03 03:57:16'),
(21, 'REG0018', 'NISK002', 'asdasdasd', 'as', 15, NULL, '2020-03-04 00:40:14', '2020-03-03 01:34:29', NULL),
(22, 'REG0019', 'NISK002', 'joni', 'sby', 21, NULL, '2020-03-04 00:40:05', '2020-03-03 23:39:36', NULL),
(23, 'REG0020', 'NISK002', 'jinar', 'sby', 18, NULL, '2020-03-06 22:09:44', '2020-03-03 23:58:33', NULL),
(24, 'REG0021', 'NISK001', 'surya', 'depok', 18, NULL, '2020-03-06 22:08:43', '2020-03-04 00:04:58', NULL),
(25, 'REG0022', 'NISK002', 'didot', 'surabaya', 20, NULL, '2020-03-06 22:10:12', '2020-03-06 22:10:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `table1s`
--

CREATE TABLE `table1s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Table2`
--

CREATE TABLE `Table2` (
  `id` int(11) NOT NULL,
  `NomorIndukSekolah` varchar(15) DEFAULT NULL,
  `namaSekolah` varchar(100) DEFAULT NULL,
  `alamatSekolah` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Table2`
--

INSERT INTO `Table2` (`id`, `NomorIndukSekolah`, `namaSekolah`, `alamatSekolah`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'NISK001', 'Rumah Gemilang Surabaya', 'Grudo', NULL, NULL, NULL),
(2, 'NISK002', 'Rumah Gemilan Depok', 'Depok', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tab_kantor`
--

CREATE TABLE `tab_kantor` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tab_kantor`
--

INSERT INTO `tab_kantor` (`id`, `name`, `address`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'aws office', 'amrik', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tab_login`
--

CREATE TABLE `tab_login` (
  `id` int(15),
  `idregist` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tab_login`
--

INSERT INTO `tab_login` (`id`, `idregist`, `username`, `email`, `password`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'REG0001', 'bfarouk@12345678', 'babesugab@gmail.com', '$2y$10$UuUoZpuC5PNbVETi0WO30Oc707MMH7Jta0B5ZeBzN2Cao4AsiYWGC', NULL, NULL, NULL),
(2, 'REG0002', 'hoztira12345678', 'hoztira@gmail.com', '$2y$10$nnFnDXRehVYkCLK/MPklWO7rDil8WP3zOu92PPeB1wqmmMgSQS9Ve', NULL, NULL, NULL),
(3, 'REG0003', 'bagus1234567890', 'b46usf@gmail.com', '$2y$10$uDS0RobeRldv4Kh9MeD1uu39EdmgpAMHXXVFxh7cufvEd8.mnZCUO', NULL, NULL, NULL),
(4, 'REG0004', 'agung1234567890', 'agunghermansyah69@yahoo.com', '$2y$10$7JlqAEhEK61dJj2Zx5SAVez5aKn1X1GV1MiExOIiUi6tMKEqcaWdq', NULL, NULL, NULL),
(5, 'REG0005', 'asepzainudin123', 'asepzainudin14@gmail.com', '$2y$10$BswXIP21Y4m/WrHclrDNIu6Y9F8GJbR2InSkp9OMd5LHDZdTXQfrm', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tab_pegawai`
--

CREATE TABLE `tab_pegawai` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_kantor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tab_pegawai`
--

INSERT INTO `tab_pegawai` (`id`, `name`, `address`, `phone`, `age`, `id_kantor`, `id_user`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'aws', 'aws', '123', '123', '1', '1', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `upload`
--

CREATE TABLE `upload` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fileID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namaFile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Kependudukans`
--
ALTER TABLE `Kependudukans`
  ADD PRIMARY KEY (`NIK`),
  ADD KEY `FK_KotasKependudukans` (`KotaID`),
  ADD KEY `FK_ProvinsisKependudukans` (`ProvinsiID`);

--
-- Indexes for table `Kotas`
--
ALTER TABLE `Kotas`
  ADD PRIMARY KEY (`KotaID`),
  ADD KEY `FK_ProvinsisKotas` (`ProvinsiID`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `Provinsis`
--
ALTER TABLE `Provinsis`
  ADD PRIMARY KEY (`ProvinsiID`);

--
-- Indexes for table `Table1`
--
ALTER TABLE `Table1`
  ADD UNIQUE KEY `Table1_id_IDX` (`id`) USING BTREE,
  ADD KEY `Table1_idSekolah_IDX` (`idSekolah`) USING BTREE;

--
-- Indexes for table `table1s`
--
ALTER TABLE `table1s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Table2`
--
ALTER TABLE `Table2`
  ADD UNIQUE KEY `Table2_id` (`id`) USING BTREE,
  ADD UNIQUE KEY `Table2_NomorIndukSekolah_IDX` (`NomorIndukSekolah`) USING BTREE;

--
-- Indexes for table `tab_kantor`
--
ALTER TABLE `tab_kantor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tab_login`
--
ALTER TABLE `tab_login`
  ADD KEY `tab_login_id_IDX` (`id`) USING BTREE;

--
-- Indexes for table `tab_pegawai`
--
ALTER TABLE `tab_pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload`
--
ALTER TABLE `upload`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Kotas`
--
ALTER TABLE `Kotas`
  MODIFY `KotaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `Provinsis`
--
ALTER TABLE `Provinsis`
  MODIFY `ProvinsiID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `Table1`
--
ALTER TABLE `Table1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `table1s`
--
ALTER TABLE `table1s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Table2`
--
ALTER TABLE `Table2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tab_kantor`
--
ALTER TABLE `tab_kantor`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tab_login`
--
ALTER TABLE `tab_login`
  MODIFY `id` int(15) AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tab_pegawai`
--
ALTER TABLE `tab_pegawai`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `upload`
--
ALTER TABLE `upload`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Kependudukans`
--
ALTER TABLE `Kependudukans`
  ADD CONSTRAINT `FK_KotasKependudukans` FOREIGN KEY (`KotaID`) REFERENCES `Kotas` (`KotaID`),
  ADD CONSTRAINT `FK_ProvinsisKependudukans` FOREIGN KEY (`ProvinsiID`) REFERENCES `Provinsis` (`ProvinsiID`);

--
-- Constraints for table `Kotas`
--
ALTER TABLE `Kotas`
  ADD CONSTRAINT `FK_ProvinsisKotas` FOREIGN KEY (`ProvinsiID`) REFERENCES `Provinsis` (`ProvinsiID`);

--
-- Constraints for table `Table1`
--
ALTER TABLE `Table1`
  ADD CONSTRAINT `Table1_FK` FOREIGN KEY (`idSekolah`) REFERENCES `Table2` (`NomorIndukSekolah`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
