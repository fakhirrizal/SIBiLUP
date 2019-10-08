-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 07 Okt 2019 pada 17.14
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
-- Struktur dari tabel `rekap_pokja_pkp_provinsi`
--

CREATE TABLE `rekap_pokja_pkp_provinsi` (
  `id_provinsi` int(10) NOT NULL,
  `penggabungan` enum('Belum','Proses','Sudah') DEFAULT NULL COMMENT 'Penggabungan Berbagai Pokja (AMPL, Sanitasi, PKP, dsb)',
  `program` enum('Tidak','Ya') DEFAULT NULL COMMENT 'Punya Program Kerja 5 Tahun',
  `ketua` text COMMENT 'Ketua Pokja',
  `perayaan` enum('Tidak','Ada') DEFAULT NULL COMMENT 'Perayaan Hapernas/ Hari Habitat/ dsb',
  `apbd` enum('Tidak','Ada') DEFAULT NULL COMMENT 'Dukungan APBD untuk Pokja PKP'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rekap_pokja_pkp_provinsi`
--
ALTER TABLE `rekap_pokja_pkp_provinsi`
  ADD PRIMARY KEY (`id_provinsi`),
  ADD KEY `id_provinsi` (`id_provinsi`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
