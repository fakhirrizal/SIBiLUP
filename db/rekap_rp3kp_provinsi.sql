-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 04 Okt 2019 pada 20.33
-- Versi server: 10.3.18-MariaDB-cll-lve
-- Versi PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aplikasi_sibilup`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekap_rp3kp_provinsi`
--

CREATE TABLE `rekap_rp3kp_provinsi` (
  `id_provinsi` int(2) NOT NULL,
  `belum` enum('X','V') DEFAULT NULL,
  `menganggarkan` enum('X','V') DEFAULT NULL,
  `sedang` enum('X','V') DEFAULT NULL,
  `review` enum('X','V') DEFAULT NULL,
  `sudah` enum('X','V') DEFAULT NULL,
  `bentuk_kegiatan` text DEFAULT NULL,
  `anggaran` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `rekap_rp3kp_provinsi`
--
ALTER TABLE `rekap_rp3kp_provinsi`
  ADD PRIMARY KEY (`id_provinsi`),
  ADD KEY `id_provinsi` (`id_provinsi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
