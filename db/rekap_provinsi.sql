-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 24 Sep 2019 pada 11.05
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
-- Struktur dari tabel `rekap_provinsi`
--

CREATE TABLE `rekap_provinsi` (
  `id_provinsi` int(2) NOT NULL,
  `belum` enum('X','V') DEFAULT NULL,
  `menganggarkan` enum('X','V') DEFAULT NULL,
  `sedang` enum('X','V') DEFAULT NULL,
  `review` enum('X','V') DEFAULT NULL,
  `sudah` enum('X','V') DEFAULT NULL,
  `bentuk_kegiatan` text,
  `anggaran` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rekap_provinsi`
--
ALTER TABLE `rekap_provinsi`
  ADD PRIMARY KEY (`id_provinsi`),
  ADD KEY `id_provinsi` (`id_provinsi`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
