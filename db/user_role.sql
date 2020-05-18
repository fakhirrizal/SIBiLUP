-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Bulan Mei 2020 pada 13.36
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
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
  `level` int(11) DEFAULT NULL,
  `kon_id` int(11) DEFAULT NULL,
  `definition` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `route` varchar(32) DEFAULT NULL,
  `created_by` int(9) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_by` int(9) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_by` int(9) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `name`, `level`, `kon_id`, `definition`, `description`, `route`, `created_by`, `created_at`, `updated_by`, `updated_at`, `deleted_by`, `deleted_at`, `deleted`) VALUES
(1, 'Super Admin', 1, NULL, 'Super Administrator', NULL, 'admin_side/rekap_rp3kp_provinsi', 0, '2018-10-27 17:52:08', NULL, NULL, NULL, NULL, 0),
(2, 'Admin Pusat', 2, NULL, 'Admin Pusat', NULL, 'admin_side/rekap_rp3kp_provinsi', 0, '2017-03-06 01:19:26', 2, '2018-10-27 18:55:37', NULL, NULL, 0),
(3, 'Admin Provinsi', 3, 8, 'Admin Provinsi', 'Kepala Bidang', 'admin_side/rekap_rp3kp_provinsi', 0, '2017-03-06 01:19:26', NULL, NULL, NULL, NULL, 0),
(4, 'Admin Kabupaten/ Kota', 4, 6, 'Admin Kabupaten/ Kota', 'Kepala Bidang', 'admin_side/rekap_rp3kp_provinsi', 0, '2018-09-02 14:20:07', NULL, NULL, NULL, NULL, 0),
(5, 'Admin Provinsi', 3, 8, 'Admin Provinsi', 'Kepala Bagian', 'admin_side/rekap_rp3kp_provinsi', 0, '2019-09-19 21:21:10', NULL, NULL, NULL, NULL, 0),
(6, 'Admin Kabupaten/ Kota', 4, 6, 'Admin Kabupaten/ Kota', 'Kepala Bagian', 'admin_side/rekap_rp3kp_provinsi', 0, '2019-09-19 21:21:59', NULL, NULL, NULL, NULL, 0),
(7, 'Admin Provinsi', 3, 8, 'Admin Provinsi', 'Staff', 'admin_side/rekap_rp3kp_provinsi', 0, '2019-09-19 21:21:59', NULL, NULL, NULL, NULL, 0),
(8, 'Admin Kabupaten/ Kota', 4, 6, 'Admin Kabupaten/ Kota', 'Staff', 'admin_side/rekap_rp3kp_provinsi', 0, '2019-09-19 21:22:51', NULL, NULL, NULL, NULL, 0),
(9, 'Tamu', NULL, NULL, 'Pengunjung selain petugas', 'Masyarakat yang mengakses aplikasi SIBiLUP', 'guest_side/tentang', 0, '2020-05-17 00:57:00', NULL, NULL, NULL, NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name_index` (`name`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
