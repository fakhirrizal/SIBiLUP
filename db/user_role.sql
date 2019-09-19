-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 19 Sep 2019 pada 17.51
-- Versi Server: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sibilup`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `level` int(11) NOT NULL,
  `kon_id` int(11) NOT NULL,
  `definition` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `route` varchar(32) DEFAULT NULL,
  `created_by` int(9) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(9) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_by` int(9) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `name`, `level`, `kon_id`, `definition`, `description`, `route`, `created_by`, `created_at`, `updated_by`, `updated_at`, `deleted_by`, `deleted_at`, `deleted`) VALUES
(1, 'Super Admin', 1, 0, 'Super Administrator', NULL, 'admin_side/beranda', 0, '2018-10-27 17:52:08', NULL, NULL, NULL, NULL, 0),
(2, 'Admin Pusat', 2, 0, 'Admin Pusat', NULL, 'admin_side/beranda', 0, '2017-03-06 01:19:26', 2, '2018-10-27 18:55:37', NULL, NULL, 0),
(3, 'Admin Provinsi', 3, 8, 'Admin Provinsi', 'Kepala Bidang', 'admin_side/beranda', 0, '2017-03-06 01:19:26', NULL, NULL, NULL, NULL, 0),
(4, 'Admin Kabupaten/ Kota', 4, 6, 'Admin Kabupaten/ Kota', 'Kepala Bidang', 'admin_side/beranda', 0, '2018-09-02 14:20:07', NULL, NULL, NULL, NULL, 0),
(5, 'Admin Provinsi', 0, 0, 'Admin Provinsi', 'Kepala Bagian', 'admin_side/beranda', 0, '2019-09-19 21:21:10', NULL, NULL, NULL, NULL, 0),
(6, 'Admin Kabupaten/ Kota', 0, 0, 'Admin Kabupaten/ Kota', 'Kepala Bagian', 'admin_side/beranda', 0, '2019-09-19 21:21:59', NULL, NULL, NULL, NULL, 0),
(7, 'Admin Provinsi', 0, 0, 'Admin Provinsi', 'Staff', 'admin_side/beranda', 0, '2019-09-19 21:21:59', NULL, NULL, NULL, NULL, 0),
(8, 'Admin Kabupaten/ Kota', 0, 0, 'Admin Kabupaten/ Kota', 'Staff', 'admin_side/beranda', 0, '2019-09-19 21:22:51', NULL, NULL, NULL, NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name_index` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
