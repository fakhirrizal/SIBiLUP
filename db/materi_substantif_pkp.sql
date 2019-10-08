-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 02 Okt 2019 pada 09.56
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
-- Struktur dari tabel `materi_substantif_pkp`
--

CREATE TABLE `materi_substantif_pkp` (
  `id_materi_substantif_pkp` int(10) NOT NULL,
  `materi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `materi_substantif_pkp`
--

INSERT INTO `materi_substantif_pkp` (`id_materi_substantif_pkp`, `materi`) VALUES
(1, 'Pendataan'),
(2, 'Pokja PKP'),
(3, 'RP3KP'),
(4, 'SPM'),
(5, 'PSU'),
(6, 'Kumuh'),
(7, 'Perizinan'),
(8, 'Pertanahan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `materi_substantif_pkp`
--
ALTER TABLE `materi_substantif_pkp`
  ADD PRIMARY KEY (`id_materi_substantif_pkp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `materi_substantif_pkp`
--
ALTER TABLE `materi_substantif_pkp`
  MODIFY `id_materi_substantif_pkp` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
