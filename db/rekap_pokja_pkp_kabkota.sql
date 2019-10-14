-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 08 Okt 2019 pada 17.55
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
-- Struktur dari tabel `rekap_pokja_pkp_kabkota`
--

CREATE TABLE `rekap_pokja_pkp_kabkota` (
  `id_kabupaten` int(10) NOT NULL,
  `status` enum('Belum','Proses','Selesai') DEFAULT NULL,
  `sk` enum('','V') DEFAULT NULL,
  `penggabungan` enum('Belum','Proses','Sudah') DEFAULT NULL,
  `program` enum('Tidak','Ya') DEFAULT NULL COMMENT 'Mempunyai Program Kerja Pokja PKP',
  `forum` enum('Tidak','Ya') DEFAULT NULL COMMENT 'Telah membentuk& mengaktifkan Forum PKP ',
  `apbd` enum('Tidak','Ya') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rekap_pokja_pkp_kabkota`
--
ALTER TABLE `rekap_pokja_pkp_kabkota`
  ADD PRIMARY KEY (`id_kabupaten`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
