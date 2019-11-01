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
-- Struktur dari tabel `diskusi`
--

CREATE TABLE IF NOT EXISTS `diskusi` (
  `id_diskusi` int(11) NOT NULL,
  `id_pgw` int(11) NOT NULL,
  `isi` mediumtext NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('0','1') NOT NULL,
  `reply` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `diskusi`
--

INSERT INTO `diskusi` (`id_diskusi`, `id_pgw`, `isi`, `create_at`, `status`, `reply`) VALUES
(8, 27, '<p>tes</p>', '2019-10-23 12:35:17', '0', 0),
(9, 27, '<p>test :D</p>', '2019-10-23 12:41:33', '0', 0),
(10, 28, '<p>Test</p>', '2019-10-23 12:41:46', '0', 0),
(11, 28, '<p>Cek. Coba</p>', '2019-10-23 12:41:50', '0', 0),
(12, 2, '<p>mari kita mulai diskusi malam ini</p>', '2019-10-23 12:41:55', '0', 0),
(13, 24, '<p>kegiatan saat ini sampai jam berapa</p>\r\n<p> </p>', '2019-10-23 12:42:12', '0', 0),
(14, 27, '<p>terimakasih</p>', '2019-10-23 12:42:15', '0', 0),
(15, 27, '<p>saya mau tanya</p>', '2019-10-23 12:42:21', '0', 0),
(16, 24, '<p>tess</p>', '2019-10-23 12:42:43', '0', 0),
(17, 28, '<p>P</p>', '2019-10-23 12:42:55', '0', 0),
(18, 27, '<p>iya mas</p>', '2019-10-23 12:43:06', '0', 0),
(19, 23, '<p>Bekerja keras, bergerak cepat, bertindak tepat, selamat dunia akhirat</p>', '2019-10-23 12:43:17', '0', 0),
(20, 27, '<p>kenapa</p>', '2019-10-23 12:43:17', '0', 0),
(21, 27, '<p>sampai pulang mas mbantul</p>', '2019-10-23 12:43:41', '0', 0),
(22, 2, '<p>Apa pendapat anda tentang SIBiLUP ini ?</p>\r\n<p> </p>', '2019-10-23 12:44:15', '0', 0),
(23, 27, '<p>Mau tanya, jika sudah masuk page admin, ingin kembali ke tampilan sibilup umum, ada icon khusus untuk diklik?</p>', '2019-10-23 12:45:27', '0', 0),
(24, 23, '<p>Sepertinya perlu sistem reply ???? </p>', '2019-10-23 12:45:33', '0', 0),
(25, 27, '<p>nganu mas..kok saya sebagai admin kabupaten bisa ngedit kabupaten lain ya?</p>', '2019-10-23 12:46:04', '0', 0),
(26, 2, '<p>Untuk Provinsi DIY</p>\r\n<p>Semboyan PU plus-plus </p>', '2019-10-23 12:46:40', '0', 0),
(27, 2, '<p>Provinsi Yogyakarta</p>\r\n<p>PU tenan </p>', '2019-10-23 12:47:43', '0', 0),
(28, 2, '<p>Kabupaten Sleman</p>\r\n<p>Usulan bagus mas. Terima kasih masukannya</p>', '2019-10-23 12:50:51', '0', 0),
(29, 24, '<p>Dirjen ciptakarya sudah mengembangankan SIM terkait dengan permukiman, mungkin bisa dilinkkan supaya bisa terintegrasi</p>', '2019-11-01 07:14:08', '0', 0),
(30, 28, '<p>Perumahan</p>', '2019-10-31 08:34:23', '0', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diskusi`
--
ALTER TABLE `diskusi`
  ADD PRIMARY KEY (`id_diskusi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `diskusi`
--
ALTER TABLE `diskusi`
  MODIFY `id_diskusi` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
