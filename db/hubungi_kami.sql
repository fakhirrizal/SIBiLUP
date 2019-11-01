-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 01 Nov 2019 pada 08.14
-- Versi Server: 5.6.26
-- PHP Version: 5.6.12

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
-- Struktur dari tabel `hubungi_kami`
--

CREATE TABLE IF NOT EXISTS `hubungi_kami` (
  `id_hub` int(11) NOT NULL,
  `id_pgw` int(11) NOT NULL,
  `penjawab` int(11) NOT NULL,
  `isi` mediumtext NOT NULL,
  `file` varchar(100) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('0','1') NOT NULL,
  `reply` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hubungi_kami`
--

INSERT INTO `hubungi_kami` (`id_hub`, `id_pgw`, `penjawab`, `isi`, `file`, `create_at`, `status`, `reply`) VALUES
(7, 27, 0, '<p>terimakasih</p>', '', '2019-10-23 12:46:17', '0', 0),
(8, 27, 2, '<p>beli oleh2 dimana mas?</p>', '', '2019-10-23 12:46:35', '0', 0),
(9, 23, 0, '<p>Mohon izin bertanya</p>', '', '2019-10-23 12:47:02', '0', 0),
(10, 27, 0, '<p>di toko pusat oleh-oleh</p>', '', '2019-10-23 12:47:04', '0', 0),
(11, 28, 0, '<p>Halloo..</p>', '', '2019-10-23 12:47:08', '0', 0),
(12, 23, 2, '<p>Silakan Bp/ibu</p>', '', '2019-10-23 12:53:25', '0', 0),
(13, 27, 2, '<p>Dimana lokasinya mas ?</p>\r\n<p>Rekomendasinya dimana, yang murah dan komplit </p>\r\n<p>hehhehehehe....</p>', '', '2019-10-23 12:54:41', '0', 0),
(14, 25, 2, '<p>Mas, kabarnya ada tempat wisata baru yang cukup viral, namanya Heha sky view</p>\r\n<p>itu dimana posisinya ?</p>', '', '2019-11-01 06:09:49', '0', 11),
(15, 28, 2, '<p>Halo juga</p>', '', '2019-10-23 12:57:52', '0', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hubungi_kami`
--
ALTER TABLE `hubungi_kami`
  ADD PRIMARY KEY (`id_hub`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hubungi_kami`
--
ALTER TABLE `hubungi_kami`
  MODIFY `id_hub` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
