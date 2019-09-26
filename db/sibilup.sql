-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 26 Sep 2019 pada 11.25
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
-- Struktur dari tabel `activity_logs`
--

CREATE TABLE IF NOT EXISTS `activity_logs` (
  `activity_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `company_id` int(11) unsigned NOT NULL,
  `activity_type` varchar(64) NOT NULL,
  `activity_data` text,
  `activity_time` datetime NOT NULL,
  `activity_ip_address` varchar(15) DEFAULT NULL,
  `activity_device` varchar(32) DEFAULT NULL,
  `activity_os` varchar(16) DEFAULT NULL,
  `activity_browser` varchar(16) DEFAULT NULL,
  `activity_location` text
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `activity_logs`
--

INSERT INTO `activity_logs` (`activity_id`, `user_id`, `company_id`, `activity_type`, `activity_data`, `activity_time`, `activity_ip_address`, `activity_device`, `activity_os`, `activity_browser`, `activity_location`) VALUES
(1, 1, 0, 'Login to system', 'Login via web browser', '2019-09-08 12:46:51', '::1', 'PC', 'Windows 10', 'Chrome 76.0.3809', NULL),
(2, 1, 0, 'Login to system', 'Login via web browser', '2019-09-09 08:27:49', '::1', 'PC', 'Windows 10', 'Chrome 76.0.3809', NULL),
(3, 1, 0, 'Login to system', 'Login via web browser', '2019-09-09 15:02:33', '::1', 'PC', 'Windows 10', 'Chrome 76.0.3809', NULL),
(4, 1, 0, 'Login to system', 'Login via web browser', '2019-09-10 15:51:10', '::1', 'PC', 'Windows 10', 'Chrome 76.0.3809', NULL),
(5, 1, 0, 'Login to system', 'Login via web browser', '2019-09-12 09:04:33', '::1', 'PC', 'Windows 10', 'Chrome 76.0.3809', NULL),
(6, 1, 0, 'Login to system', 'Login via web browser', '2019-09-12 09:34:49', '::1', 'PC', 'Windows 10', 'Chrome 76.0.3809', NULL),
(7, 1, 0, 'Login to system', 'Login via web browser', '2019-09-16 14:17:29', '::1', 'PC', 'Windows 10', 'Chrome 76.0.3809', NULL),
(8, 1, 0, 'Login to system', 'Login via web browser', '2019-09-16 14:36:00', '::1', 'PC', 'Windows 10', 'Chrome 76.0.3809', NULL),
(9, 1, 0, 'Login to system', 'Login via web browser', '2019-09-17 10:17:21', '::1', 'PC', 'Windows 10', 'Chrome 76.0.3809', NULL),
(10, 1, 0, 'Login to system', 'Login via web browser', '2019-09-17 10:19:28', '::1', 'PC', 'Windows 10', 'Chrome 76.0.3809', NULL),
(11, 1, 0, 'Login to system', 'Login via web browser', '2019-09-17 17:28:15', '::1', 'PC', 'Windows 10', 'Chrome 76.0.3809', NULL),
(12, 1, 0, 'Login to system', 'Login via web browser', '2019-09-17 17:45:35', '::1', 'PC', 'Windows 10', 'Chrome 76.0.3809', NULL),
(13, 1, 0, 'Adding data', 'Add admin data', '2019-09-18 16:49:12', '::1', 'PC', 'Windows 10', 'Chrome 77.0.3865', '-7.006617599999999,110.43799039999999'),
(14, 1, 0, 'Adding data', 'Add admin data', '2019-09-18 17:01:17', '::1', 'PC', 'Windows 10', 'Chrome 77.0.3865', '-7.006617599999999,110.43799039999999'),
(15, 1, 0, 'Deleting data', 'Delete administrator data', '2019-09-18 20:09:06', '::1', 'PC', 'Windows 10', 'Chrome 77.0.3865', '-7.006617599999999,110.43799039999999'),
(16, 1, 0, 'Deleting data', 'Delete administrator data', '2019-09-18 20:12:59', '::1', 'PC', 'Windows 10', 'Chrome 77.0.3865', '-7.006617599999999,110.43799039999999'),
(17, 1, 0, 'Login to system', 'Login via web browser', '2019-09-18 22:18:19', '::1', 'PC', 'Windows 10', 'Chrome 77.0.3865', '-7.006617599999999,110.43799039999999'),
(18, 1, 0, 'Login to system', 'Login via web browser', '2019-09-19 09:39:34', '::1', 'PC', 'Windows 10', 'Chrome 77.0.3865', '-7.006617599999999,110.43799039999999'),
(19, 1, 0, 'Adding data', 'Add admin data', '2019-09-19 21:59:14', '::1', 'PC', 'Windows 10', 'Chrome 77.0.3865', '-7.004979199999999,110.43799039999999'),
(20, 1, 0, 'Adding data', 'Add admin data', '2019-09-19 22:27:17', '::1', 'PC', 'Windows 10', 'Chrome 77.0.3865', '-7.004979199999999,110.43799039999999'),
(21, 1, 0, 'Adding data', 'Add admin data', '2019-09-19 22:32:14', '::1', 'PC', 'Windows 10', 'Chrome 77.0.3865', '-7.004979199999999,110.43799039999999'),
(22, 1, 0, 'Updating data', 'Update admin data', '2019-09-19 22:50:45', '::1', 'PC', 'Windows 10', 'Chrome 77.0.3865', '-7.004979199999999,110.43799039999999'),
(23, 1, 0, 'Login to system', 'Login via web browser', '2019-09-22 20:46:09', '::1', 'PC', 'Windows 10', 'Chrome 77.0.3865', '-7.004979199999999,110.43799039999999'),
(24, 1, 0, 'Login to system', 'Login via web browser', '2019-09-22 20:47:42', '::1', 'PC', 'Windows 10', 'Chrome 77.0.3865', '-7.004979199999999,110.43799039999999'),
(25, 1, 0, 'Login to system', 'Login via web browser', '2019-09-23 01:01:55', '::1', 'PC', 'Windows 10', 'Chrome 77.0.3865', '-7.004979199999999,110.43799039999999'),
(26, 1, 0, 'Login to system', 'Login via web browser', '2019-09-23 11:26:50', '::1', 'PC', 'Windows 10', 'Chrome 77.0.3865', '-7.004979199999999,110.43799039999999'),
(27, 1, 0, 'Login to system', 'Login via web browser', '2019-09-23 15:44:10', '::1', 'PC', 'Windows 10', 'Chrome 77.0.3865', '-7.004979199999999,110.43799039999999'),
(28, 1, 0, 'Login to system', 'Login via web browser', '2019-09-23 23:24:56', '::1', 'PC', 'Windows 10', 'Chrome 77.0.3865', '-7.004979199999999,110.43799039999999'),
(29, 1, 0, 'Login to system', 'Login via web browser', '2019-09-24 08:59:07', '::1', 'PC', 'Windows 10', 'Chrome 77.0.3865', '-7.004979199999999,110.43799039999999'),
(30, 1, 0, 'Login to system', 'Login via web browser', '2019-09-24 15:55:43', '::1', 'PC', 'Windows 10', 'Chrome 77.0.3865', '-6.9859062,110.414304'),
(31, 1, 0, 'Updating data', 'Update province data ()', '2019-09-24 15:59:03', '::1', 'PC', 'Windows 10', 'Chrome 77.0.3865', '-6.9859062,110.414304'),
(32, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-09-24 15:59:48', '::1', 'PC', 'Windows 10', 'Chrome 77.0.3865', '-6.9859062,110.414304'),
(33, 1, 0, 'Adding data', 'Add admin data', '2019-09-26 15:54:47', '::1', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(34, 8, 0, 'Login to system', 'Login via web browser', '2019-09-26 15:54:55', '::1', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(35, 8, 0, 'Login to system', 'Login via web browser', '2019-09-26 15:56:07', '::1', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `agenda`
--

CREATE TABLE IF NOT EXISTS `agenda` (
  `id_agenda` int(11) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `deskripsi` mediumtext NOT NULL,
  `jadwal` datetime NOT NULL,
  `tempat` varchar(200) NOT NULL,
  `undangan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `diskusi`
--

CREATE TABLE IF NOT EXISTS `diskusi` (
  `id_diskusi` int(11) NOT NULL,
  `id_pgw` int(11) NOT NULL,
  `isi` mediumtext NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `diskusi`
--

INSERT INTO `diskusi` (`id_diskusi`, `id_pgw`, `isi`, `create_at`) VALUES
(1, 8, '<p>cek cek 123</p>', '2019-09-25 09:15:50'),
(2, 16, '<p xss=removed><strong>Lorem Ipsum<span xss=removed> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span></strong></p>', '2019-09-25 09:17:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `faq`
--

CREATE TABLE IF NOT EXISTS `faq` (
  `id_faq` int(11) NOT NULL,
  `pertanyaan` text NOT NULL,
  `jawaban` text NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `faq`
--

INSERT INTO `faq` (`id_faq`, `pertanyaan`, `jawaban`, `create_at`) VALUES
(1, '<p>\n	APA ITU PUPR ?</p>\n', '<p>\n	<b style="font-family: sans-serif; font-size: 14px;">Kementerian Pekerjaan Umum dan Perumahan Rakyat Republik Indonesia</b><span style="font-family: sans-serif; font-size: 14px;">&nbsp;(disingkat&nbsp;</span><b style="font-family: sans-serif; font-size: 14px;">Kemen PUPR RI</b><span style="font-family: sans-serif; font-size: 14px;">) adalah&nbsp;</span><a href="https://id.wikipedia.org/wiki/Kementerian_Indonesia" style="text-decoration-line: none; color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif; font-size: 14px;" title="Kementerian Indonesia">kementerian</a><span style="font-family: sans-serif; font-size: 14px;">&nbsp;dalam&nbsp;</span><a href="https://id.wikipedia.org/wiki/Pemerintah_Indonesia" style="text-decoration-line: none; color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif; font-size: 14px;" title="Pemerintah Indonesia">Pemerintah</a><span style="font-family: sans-serif; font-size: 14px;">&nbsp;</span><a href="https://id.wikipedia.org/wiki/Indonesia" style="text-decoration-line: none; color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif; font-size: 14px;" title="Indonesia">Indonesia</a><span style="font-family: sans-serif; font-size: 14px;">&nbsp;yang membidangi urusan&nbsp;</span><a class="new" href="https://id.wikipedia.org/w/index.php?title=Pekerjaan_umum&amp;action=edit&amp;redlink=1" style="text-decoration-line: none; color: rgb(165, 88, 88); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif; font-size: 14px;" title="Pekerjaan umum (halaman belum tersedia)">pekerjaan umum</a><span style="font-family: sans-serif; font-size: 14px;">&nbsp;dan&nbsp;</span><a class="new" href="https://id.wikipedia.org/w/index.php?title=Perumahan_rakyat&amp;action=edit&amp;redlink=1" style="text-decoration-line: none; color: rgb(165, 88, 88); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif; font-size: 14px;" title="Perumahan rakyat (halaman belum tersedia)">perumahan rakyat</a><span style="font-family: sans-serif; font-size: 14px;">. Dahulu Kementerian Pekerjaan Umum dan Perumahan Rakyat bernama &quot;Departemen Permukiman dan Pengembangan Wilayah&quot; (1999-2000) dan &quot;Departemen Permukiman dan Prasarana Wilayah&quot; (2000-2004). Kementerian Pekerjaan Umum dan Perumahan Rakyat berada di bawah dan bertanggung jawab kepada Presiden.&nbsp;</span></p>\n', '2019-09-25 09:43:27'),
(2, '<h2 style="margin: 0px 0px 10px; padding: 0px; font-weight: 400; line-height: 24px; font-family: DauphinPlain; font-size: 24px; color: rgb(0, 0, 0);">\n	What is Lorem Ipsum?</h2>\n', '<p>\n	<strong style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;">Lorem Ipsum</strong><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span></p>\n', '2019-09-25 09:44:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri`
--

CREATE TABLE IF NOT EXISTS `galeri` (
  `id_galeri` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `file` varchar(200) NOT NULL,
  `keterangan` text NOT NULL,
  `type` tinyint(2) NOT NULL COMMENT '1 = Foto, 2 = Vidio'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `judul`, `file`, `keterangan`, `type`) VALUES
(1, 'tes', '36006-1.jpg', 'tes', 1);

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
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hubungi_kami`
--

INSERT INTO `hubungi_kami` (`id_hub`, `id_pgw`, `penjawab`, `isi`, `file`, `create_at`) VALUES
(1, 16, 0, 'hello word', 'upload/hubungi_kami/hub_joglo_35.jpg', '2019-09-24 04:10:12'),
(2, 1, 0, 'balalaaaaaaaaaaaaaaaaaaaaa', '', '2019-09-25 06:30:05'),
(3, 2, 0, 'asdasdsaad', '', '2019-09-25 06:30:23'),
(4, 16, 1, 'halo juga', '', '2019-09-25 07:38:14'),
(5, 16, 0, 'iyaa broo', '', '2019-09-25 06:47:45'),
(6, 1, 0, 'yuhuuuuuu', '', '2019-09-25 06:50:41'),
(7, 16, 1, 'hahahhaaaa', '', '2019-09-25 07:38:41'),
(8, 2, 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '', '2019-09-25 07:48:33'),
(9, 2, 1, 'iyaa brooo', '', '2019-09-25 07:46:03'),
(10, 2, 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '', '2019-09-25 07:48:02'),
(11, 16, 1, '<p xss=removed><strong xss=removed>Lorem Ipsum</strong><span xss=removed> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span></p>', '', '2019-09-25 08:38:57'),
(14, 16, 0, '<p>mantap brooo</p>', '', '2019-09-25 09:04:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kabupaten`
--

CREATE TABLE IF NOT EXISTS `kabupaten` (
  `id_kabupaten` int(10) NOT NULL,
  `id_provinsi` int(5) NOT NULL,
  `nm_kabupaten` varchar(50) NOT NULL,
  `bujur` varchar(20) NOT NULL,
  `lintang` varchar(20) NOT NULL,
  `kml` varchar(100) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9473 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kabupaten`
--

INSERT INTO `kabupaten` (`id_kabupaten`, `id_provinsi`, `nm_kabupaten`, `bujur`, `lintang`, `kml`) VALUES
(1107, 11, 'KABUPATEN ACEH BARAT', '96.18529404', '4.456665655', 'ACEH_BARAT.kml'),
(1112, 11, 'KABUPATEN ACEH BARAT DAYA', '96.87832045', '3.824899156', 'ACEH_BARAT_DAYA.kml'),
(1108, 11, 'KABUPATEN ACEH BESAR', '95.51498868', '5.380544866', 'ACEH_BESAR.kml'),
(1116, 11, 'KABUPATEN ACEH JAYA', '95.67851144', '4.833062234', 'ACEH_JAYA.kml'),
(1103, 11, 'KABUPATEN ACEH SELATAN', '97.43535111', '3.162864121', 'ACEH_SELATAN.kml'),
(1102, 11, 'KABUPATEN ACEH SINGKIL', '97.84544395', '2.350612942', 'ACEH_SINGKIL.kml'),
(1114, 11, 'KABUPATEN ACEH TAMIANG', '97.97702036', '4.227875711', 'ACEH_TAMIANG.kml'),
(1106, 11, 'KABUPATEN ACEH TENGAH', '96.8589941', '4.530069025', 'ACEH_TENGAH.kml'),
(1104, 11, 'KABUPATEN ACEH TENGGARA', '97.69553801', '3.369610005', 'ACEH_TENGGARA.kml'),
(1105, 11, 'KABUPATEN ACEH TIMUR', '97.62889311', '4.62913466', 'ACEH_TIMUR.kml'),
(1111, 11, 'KABUPATEN ACEH UTARA', '97.18188333', '5.014912306', 'ACEH_UTARA.kml'),
(1307, 13, 'KABUPATEN AGAM', '100.1684646', '-0.249475746', 'AGAM.kml'),
(5307, 53, 'KABUPATEN ALOR', '124.5698815', '-8.303838893', 'ALOR.kml'),
(1208, 12, 'KABUPATEN ASAHAN', '99.5625629', '2.802368855', 'ASAHAN.kml'),
(9415, 94, 'KABUPATEN ASMAT', '138.5603509', '-5.369080328', 'ASMAT.kml'),
(5103, 51, 'KABUPATEN BADUNG', '115.188343', '-8.582936332', 'BADUNG.kml'),
(6311, 63, 'KABUPATEN BALANGAN', '115.6424098', '-2.319164167', 'BALANGAN.kml'),
(3204, 32, 'KABUPATEN BANDUNG', '107.6108412', '-7.099968707', 'BANDUNG.kml'),
(3217, 32, 'KABUPATEN BANDUNG BARAT', '107.4149528', '-6.89705592', 'BANDUNG_BARAT.kml'),
(7202, 72, 'KABUPATEN BANGGAI', '122.5796756', '-1.021214725', 'BANGGAI.kml'),
(7201, 72, 'KABUPATEN BANGGAI KEPULAUAN', '123.2314594', '-1.465690623', 'BANGGAI_KEPULAUAN.kml'),
(7211, 72, 'KABUPATEN BANGGAI LAUT', '123.542404', '-1.663144', ''),
(1901, 19, 'KABUPATEN BANGKA', '105.9212326', '-1.905887197', 'BANGKA.kml'),
(1903, 19, 'KABUPATEN BANGKA BARAT', '105.489271', '-1.890773267', 'BANGKA_BARAT.kml'),
(1905, 19, 'KABUPATEN BANGKA SELATAN', '106.3424226', '-2.771120923', 'BANGKA_SELATAN.kml'),
(1904, 19, 'KABUPATEN BANGKA TENGAH', '106.2433238', '-2.430117481', 'BANGKA_TENGAH.kml'),
(3526, 35, 'KABUPATEN BANGKALAN', '112.9301904', '-7.043866681', 'BANGKALAN.kml'),
(5106, 51, 'KABUPATEN BANGLI', '115.3467316', '-8.2934638', 'BANGLI.kml'),
(6303, 63, 'KABUPATEN BANJAR', '108.5665017', '-7.376301997', ''),
(3304, 33, 'KABUPATEN BANJARNEGARA', '109.6574193', '-7.351881862', 'BANJARNEGARA.kml'),
(7303, 73, 'KABUPATEN BANTAENG', '119.9869113', '-5.488189507', 'BANTAENG.kml'),
(3402, 34, 'KABUPATEN BANTUL', '110.3546942', '-7.901664282', 'BANTUL.kml'),
(1607, 16, 'KABUPATEN BANYU ASIN', '104.6645608', '-2.496163677', 'BANYU_ASIN.kml'),
(3302, 33, 'KABUPATEN BANYUMAS', '109.1755799', '-7.455145166', 'BANYUMAS.kml'),
(3510, 35, 'KABUPATEN BANYUWANGI', '114.2054164', '-8.36486213', 'BANYUWANGI.kml'),
(6304, 63, 'KABUPATEN BARITO KUALA', '114.6247673', '-3.091597107', 'BARITO_KUALA.kml'),
(6204, 62, 'KABUPATEN BARITO SELATAN', '114.9060285', '-1.811621449', 'BARITO_SELATAN.kml'),
(6212, 62, 'KABUPATEN BARITO TIMUR', '115.1465724', '-1.980794728', 'BARITO_TIMUR.kml'),
(6205, 62, 'KABUPATEN BARITO UTARA', '115.1338965', '-0.931035775', 'BARITO_UTARA.kml'),
(7310, 73, 'KABUPATEN BARRU', '119.6941453', '-4.441677962', 'BARRU.kml'),
(3325, 33, 'KABUPATEN BATANG', '109.8614698', '-7.021299648', 'BATANG.kml'),
(1504, 15, 'KABUPATEN BATANG HARI', '103.0960631', '-1.749733415', 'BATANG_HARI.kml'),
(1219, 12, 'KABUPATEN BATU BARA', '99.47503056', '3.233993854', 'BATU_BARA.kml'),
(3216, 32, 'KABUPATEN BEKASI', '107.1206688', '-6.215148997', 'BEKASI.kml'),
(1902, 19, 'KABUPATEN BELITUNG', '107.7110316', '-2.869945711', 'BELITUNG.kml'),
(1906, 19, 'KABUPATEN BELITUNG TIMUR', '108.0523758', '-2.907114018', 'BELITUNG_TIMUR.kml'),
(5306, 53, 'KABUPATEN BELU', '124.9289678', '-9.337338968', 'BELU.kml'),
(1117, 11, 'KABUPATEN BENER MERIAH', '97.00729604', '4.767234573', 'BENER_MERIAH.kml'),
(1408, 14, 'KABUPATEN BENGKALIS', '101.6633458', '1.406097206', 'BENGKALIS.kml'),
(6102, 61, 'KABUPATEN BENGKAYANG', '109.5631183', '1.010602778', 'BENGKAYANG.kml'),
(1701, 17, 'KABUPATEN BENGKULU SELATAN', '103.0237296', '-4.348663159', 'BENGKULU_SELATAN.kml'),
(1709, 17, 'KABUPATEN BENGKULU TENGAH', '102.4116695', '-3.68754736', 'BENGKULU_TENGAH.kml'),
(1703, 17, 'KABUPATEN BENGKULU UTARA', '102.0052305', '-3.332027702', 'BENGKULU_UTARA.kml'),
(6405, 64, 'KABUPATEN BERAU', '117.3146413', '1.917372031', 'BERAU.kml'),
(9409, 94, 'KABUPATEN BIAK NUMFOR', '135.8443155', '-1.003994248', 'BIAK_NUMFOR.kml'),
(5206, 52, 'KABUPATEN BIMA', '118.6265578', '-8.473858438', 'BIMA.kml'),
(2102, 21, 'KABUPATEN BINTAN', '104.5219503', '1.080409679', 'BINTAN.kml'),
(1110, 11, 'KABUPATEN BIREUEN', '96.6092168', '5.093464738', 'BIREUEN.kml'),
(3505, 35, 'KABUPATEN BLITAR', '112.2381295', '-8.130108968', 'BLITAR.kml'),
(3316, 33, 'KABUPATEN BLORA', '111.3876365', '-7.075962268', 'BLORA.kml'),
(7501, 75, 'KABUPATEN BOALEMO', '122.3258325', '0.655731354', 'BOALEMO.kml'),
(3201, 32, 'KABUPATEN BOGOR', '106.7675308', '-6.559979465', 'BOGOR.kml'),
(3522, 35, 'KABUPATEN BOJONEGORO', '111.8098374', '-7.255432762', 'BOJONEGORO.kml'),
(7101, 71, 'KABUPATEN BOLAANG MONGONDOW', '124.0384048', '0.709260179', 'BOLAANG_MONGONDOW.kml'),
(7110, 71, 'KABUPATEN BOLAANG MONGONDOW SELATAN', '123.932589', '0.444106265', 'BOLAANG_MONGONDOW_SELATAN.kml'),
(7111, 71, 'KABUPATEN BOLAANG MONGONDOW TIMUR', '124.509904', '0.719184925', 'BOLAANG_MONGONDOW_TIMUR.kml'),
(7107, 71, 'KABUPATEN BOLAANG MONGONDOW UTARA', '123.4734284', '0.766626281', 'BOLAANG_MONGONDOW_UTARA.kml'),
(7406, 74, 'KABUPATEN BOMBANA', '121.8507502', '-4.797788679', 'BOMBANA.kml'),
(3511, 35, 'KABUPATEN BONDOWOSO', '113.9475505', '-7.944023461', 'BONDOWOSO.kml'),
(7311, 73, 'KABUPATEN BONE', '120.1297952', '-4.695119336', 'BONE.kml'),
(7504, 75, 'KABUPATEN BONE BOLANGO', '123.2908754', '0.533161835', 'BONE_BOLANGO.kml'),
(9413, 94, 'KABUPATEN BOVEN DIGOEL', '140.3664518', '-5.987001231', 'BOVEN_DIGOEL.kml'),
(3309, 33, 'KABUPATEN BOYOLALI', '110.6506564', '-7.418562107', 'BOYOLALI.kml'),
(3329, 33, 'KABUPATEN BREBES', '108.9275168', '-7.059324811', 'BREBES.kml'),
(5108, 51, 'KABUPATEN BULELENG', '114.9631013', '-8.200691538', 'BULELENG.kml'),
(7302, 73, 'KABUPATEN BULUKUMBA', '120.2360065', '-5.432469149', 'BULUKUMBA.kml'),
(6502, 65, 'KABUPATEN BULUNGAN', '117.024568', '2.801429324', 'BULUNGAN.kml'),
(1509, 15, 'KABUPATEN BUNGO', '101.9310014', '-1.598885999', 'BUNGO.kml'),
(7207, 72, 'KABUPATEN BUOL', '121.3727787', '0.977976286', 'BUOL.kml'),
(8104, 81, 'KABUPATEN BURU', '126.7212858', '-3.302938249', 'BURU.kml'),
(8109, 81, 'KABUPATEN BURU SELATAN', '126.5763855', '-3.582767889', 'BURU_SELATAN.kml'),
(7401, 74, 'KABUPATEN BUTON', '122.7333038', '-5.367754017', 'BUTON.kml'),
(7415, 74, 'KABUPATEN BUTON SELATAN', '122.892661', '-5.333507', ''),
(7414, 74, 'KABUPATEN BUTON TENGAH', '122.371145', '-5.301031', ''),
(7409, 74, 'KABUPATEN BUTON UTARA', '123.0159478', '-4.701497086', 'BUTON_UTARA.kml'),
(3207, 32, 'KABUPATEN CIAMIS', '108.4286486', '-7.290536903', 'CIAMIS.kml'),
(3203, 32, 'KABUPATEN CIANJUR', '107.1577719', '-7.13371261', 'CIANJUR.kml'),
(3301, 33, 'KABUPATEN CILACAP', '108.8904127', '-7.490962881', 'CILACAP.kml'),
(3209, 32, 'KABUPATEN CIREBON', '108.5513362', '-6.745513127', 'CIREBON.kml'),
(1210, 12, 'KABUPATEN DAIRI', '98.26673824', '2.843782106', 'DAIRI.kml'),
(9436, 94, 'KABUPATEN DEIYAI', '136.3846155', '-4.140289727', 'DEIYAI.kml'),
(1212, 12, 'KABUPATEN DELI SERDANG', '98.69406477', '3.480096356', 'DELI_SERDANG.kml'),
(3321, 33, 'KABUPATEN DEMAK', '110.6320149', '-6.911116841', 'DEMAK.kml'),
(1311, 13, 'KABUPATEN DHARMASRAYA', '101.5541936', '-1.130987218', 'DHARMASRAYA.kml'),
(9434, 94, 'KABUPATEN DOGIYAI', '135.6675991', '-4.01685535', 'DOGIYAI.kml'),
(5205, 52, 'KABUPATEN DOMPU', '118.2168061', '-8.472140432', 'DOMPU.kml'),
(7205, 72, 'KABUPATEN DONGGALA', '119.8357215', '-0.395870795', 'DONGGALA.kml'),
(1611, 16, 'KABUPATEN EMPAT LAWANG', '102.9535969', '-3.751943639', 'EMPAT_LAWANG.kml'),
(5311, 53, 'KABUPATEN ENDE', '121.7341688', '-8.677144409', 'ENDE.kml'),
(7316, 73, 'KABUPATEN ENREKANG', '119.87203', '-3.503723925', 'ENREKANG.kml'),
(9101, 91, 'KABUPATEN FAKFAK', '132.9120846', '-3.059300911', 'FAKFAK.kml'),
(5309, 53, 'KABUPATEN FLORES TIMUR', '122.7560433', '-8.418739855', 'FLORES_TIMUR.kml'),
(3205, 32, 'KABUPATEN GARUT', '107.7888626', '-7.359586312', 'GARUT.kml'),
(1113, 11, 'KABUPATEN GAYO LUES', '97.35742897', '3.981906288', 'GAYO_LUES.kml'),
(5104, 51, 'KABUPATEN GIANYAR', '115.2875812', '-8.480658976', 'GIANYAR.kml'),
(7502, 75, 'KABUPATEN GORONTALO', '122.7168779', '0.690705515', 'GORONTALO.kml'),
(7505, 75, 'KABUPATEN GORONTALO UTARA', '122.6614366', '0.885921871', 'GORONTALO_UTARA.kml'),
(7306, 73, 'KABUPATEN GOWA', '119.7186835', '-5.309271307', 'GOWA.kml'),
(3525, 35, 'KABUPATEN GRESIK', '112.5583349', '-6.927912295', 'GRESIK.kml'),
(3315, 33, 'KABUPATEN GROBOGAN', '110.9271007', '-7.116879635', 'GROBOGAN.kml'),
(3403, 34, 'KABUPATEN GUNUNG KIDUL', '110.612085', '-7.994254548', 'GUNUNG_KIDUL.kml'),
(6211, 62, 'KABUPATEN GUNUNG MAS', '113.5331121', '-1.025571245', 'GUNUNG_MAS.kml'),
(8201, 82, 'KABUPATEN HALMAHERA BARAT', '127.5896654', '1.364162492', 'HALMAHERA_BARAT.kml'),
(8204, 82, 'KABUPATEN HALMAHERA SELATAN', '127.8716617', '-0.209685244', 'HALMAHERA_SELATAN.kml'),
(8202, 82, 'KABUPATEN HALMAHERA TENGAH', '128.0499612', '0.547412066', 'HALMAHERA_TENGAH.kml'),
(8206, 82, 'KABUPATEN HALMAHERA TIMUR', '128.3085553', '1.031173366', 'HALMAHERA_TIMUR.kml'),
(8205, 82, 'KABUPATEN HALMAHERA UTARA', '127.8310627', '1.542313666', 'HALMAHERA_UTARA.kml'),
(6306, 63, 'KABUPATEN HULU SUNGAI SELATAN', '115.2068681', '-2.728274958', 'HULU_SUNGAI_SELATAN.kml'),
(6307, 63, 'KABUPATEN HULU SUNGAI TENGAH', '115.5021349', '-2.603491537', 'HULU_SUNGAI_TENGAH.kml'),
(6308, 63, 'KABUPATEN HULU SUNGAI UTARA', '115.1537646', '-2.437838762', 'HULU_SUNGAI_UTARA.kml'),
(1215, 12, 'KABUPATEN HUMBANG HASUNDUTAN', '98.57145302', '2.271249962', 'HUMBANG_HASUNDUTAN.kml'),
(1403, 14, 'KABUPATEN INDRAGIRI HILIR', '103.1573142', '-0.233308892', 'INDRAGIRI_HILIR.kml'),
(1402, 14, 'KABUPATEN INDRAGIRI HULU', '102.3275739', '-0.53319081', 'INDRAGIRI_HULU.kml'),
(3212, 32, 'KABUPATEN INDRAMAYU', '108.1687292', '-6.448637978', 'INDRAMAYU.kml'),
(9435, 94, 'KABUPATEN INTAN JAYA', '136.7448081', '-3.536386875', 'INTAN_JAYA.kml'),
(9403, 94, 'KABUPATEN JAYAPURA', '140.0176238', '-2.962869252', 'JAYAPURA.kml'),
(9402, 94, 'KABUPATEN JAYAWIJAYA', '138.8693382', '-4.088256248', 'JAYAWIJAYA.kml'),
(3509, 35, 'KABUPATEN JEMBER', '113.6556952', '-8.235978533', 'JEMBER.kml'),
(5101, 51, 'KABUPATEN JEMBRANA', '114.6822027', '-8.312366161', 'JEMBRANA.kml'),
(7304, 73, 'KABUPATEN JENEPONTO', '119.698447', '-5.56751727', 'JENEPONTO.kml'),
(3320, 33, 'KABUPATEN JEPARA', '110.7839502', '-6.583707361', 'JEPARA.kml'),
(3517, 35, 'KABUPATEN JOMBANG', '112.2651295', '-7.545102368', 'JOMBANG.kml'),
(9102, 91, 'KABUPATEN KAIMANA', '134.0225031', '-3.613027736', 'KAIMANA.kml'),
(1406, 14, 'KABUPATEN KAMPAR', '101.0721148', '0.325620441', 'KAMPAR.kml'),
(6203, 62, 'KABUPATEN KAPUAS', '114.2978995', '-1.747134354', 'KAPUAS.kml'),
(6108, 61, 'KABUPATEN KAPUAS HULU', '112.7998815', '0.832160668', 'KAPUAS_HULU.kml'),
(5107, 51, 'KABUPATEN KARANG ASEM', '115.5301694', '-8.374177743', 'KARANGASEM.kml'),
(3313, 33, 'KABUPATEN KARANGANYAR', '111.0192655', '-7.614457722', 'KARANGANYAR.kml'),
(3215, 32, 'KABUPATEN KARAWANG', '107.3539271', '-6.252003437', 'KARAWANG.kml'),
(2101, 21, 'KABUPATEN KARIMUN', '103.5309184', '0.824806988', 'KARIMUN.kml'),
(1211, 12, 'KABUPATEN KARO', '98.29603229', '3.120679965', 'KARO.kml'),
(6209, 62, 'KABUPATEN KATINGAN', '113.0596894', '-1.69852433', 'KATINGAN.kml'),
(1704, 17, 'KABUPATEN KAUR', '103.4075045', '-4.607197051', 'KAUR.kml'),
(6111, 61, 'KABUPATEN KAYONG UTARA', '109.9246742', '-1.092055318', 'KAYONG_UTARA.kml'),
(3305, 33, 'KABUPATEN KEBUMEN', '109.6174095', '-7.655266535', 'KEBUMEN.kml'),
(3506, 35, 'KABUPATEN KEDIRI', '112.089636', '-7.828871402', 'KEDIRI.kml'),
(9420, 94, 'KABUPATEN KEEROM', '140.68326', '-3.332129773', 'KEEROM.kml'),
(3324, 33, 'KABUPATEN KENDAL', '110.1560306', '-7.037780573', 'KENDAL.kml'),
(1708, 17, 'KABUPATEN KEPAHIANG', '102.6416889', '-3.628231905', 'KEPAHIANG.kml'),
(2105, 21, 'KABUPATEN KEPULAUAN ANAMBAS', '106.2459342', '3.173738508', 'KEPULAUAN_ANAMBAS.kml'),
(8105, 81, 'KABUPATEN KEPULAUAN ARU', '134.4501135', '-6.195401838', 'KEPULAUAN_ARU.kml'),
(1301, 13, 'KABUPATEN KEPULAUAN MENTAWAI', '98.96023515', '-1.434492317', 'KEPULAUAN_MENTAWAI.kml'),
(1410, 14, 'KABUPATEN KEPULAUAN MERANTI', '102.6503463', '1.002804893', 'KEPULAUAN_MERANTI.kml'),
(7103, 71, 'KABUPATEN KEPULAUAN SANGIHE', '125.5413483', '3.550691663', 'KEPULAUAN_SANGIHE.kml'),
(7301, 73, 'KABUPATEN KEPULAUAN SELAYAR', '120.4844463', '-6.200207553', 'KEPULAUAN_SELAYAR.kml'),
(3101, 31, 'KABUPATEN KEPULAUAN SERIBU', '106.5757382', '-5.612330666', 'KEPULAUAN_SERIBU.kml'),
(8203, 82, 'KABUPATEN KEPULAUAN SULA', '125.1516392', '-1.872904376', 'KEPULAUAN_SULA.kml'),
(7104, 71, 'KABUPATEN KEPULAUAN TALAUD', '126.7936428', '4.339738165', 'KEPULAUAN_TALAUD.kml'),
(9408, 94, 'KABUPATEN KEPULAUAN YAPEN', '136.1741345', '-1.745698207', 'KEPULAUAN_YAPEN.kml'),
(1501, 15, 'KABUPATEN KERINCI', '101.4694265', '-2.036904174', 'KERINCI.kml'),
(6106, 61, 'KABUPATEN KETAPANG', '110.6138742', '-1.633120725', 'KETAPANG.kml'),
(3310, 33, 'KABUPATEN KLATEN', '110.6198976', '-7.686395172', 'KLATEN.kml'),
(5105, 51, 'KABUPATEN KLUNGKUNG', '115.4932665', '-8.666285401', 'KLUNGKUNG.kml'),
(7404, 74, 'KABUPATEN KOLAKA', '121.5766343', '-3.927977249', 'KOLAKA.kml'),
(7411, 74, 'KABUPATEN KOLAKA TIMUR', '121.624771', '-3.777765', ''),
(7408, 74, 'KABUPATEN KOLAKA UTARA', '121.1562664', '-3.247718729', 'KOLAKA_UTARA.kml'),
(7403, 74, 'KABUPATEN KONAWE', '122.0351517', '-3.598000225', 'KONAWE.kml'),
(7412, 74, 'KABUPATEN KONAWE KEPULAUAN', '123.087670', '-4.104615', ''),
(7405, 74, 'KABUPATEN KONAWE SELATAN', '122.4208106', '-4.262671077', 'KONAWE_SELATAN.kml'),
(7410, 74, 'KABUPATEN KONAWE UTARA', '121.9969034', '-3.385124033', 'KONAWE_UTARA.kml'),
(6302, 63, 'KABUPATEN KOTA BARU', '116.0654261', '-2.986896793', 'KOTA_BARU.kml'),
(6201, 62, 'KABUPATEN KOTAWARINGIN BARAT', '111.7467515', '-2.545979615', 'KOTAWARINGIN_BARAT.kml'),
(6202, 62, 'KABUPATEN KOTAWARINGIN TIMUR', '112.713004', '-2.064880013', 'KOTAWARINGIN_TIMUR.kml'),
(1401, 14, 'KABUPATEN KUANTAN SINGINGI', '101.5034783', '-0.47882173', 'KUANTAN_SINGINGI.kml'),
(6112, 61, 'KABUPATEN KUBU RAYA', '109.5376331', '-0.386564125', 'KUBU_RAYA.kml'),
(3319, 33, 'KABUPATEN KUDUS', '110.8697218', '-6.78906801', 'KUDUS.kml'),
(3401, 34, 'KABUPATEN KULON PROGO', '110.1671217', '-7.819815127', 'KULON_PROGO.kml'),
(3208, 32, 'KABUPATEN KUNINGAN', '108.5603006', '-7.004233301', 'KUNINGAN.kml'),
(5303, 53, 'KABUPATEN KUPANG', '123.8599663', '-9.918201398', 'KUPANG.kml'),
(6402, 64, 'KABUPATEN KUTAI BARAT', '115.2795926', '0.197334472', 'KUTAI_BARAT.kml'),
(6403, 64, 'KABUPATEN KUTAI KARTANEGARA', '116.5095712', '0.090659669', 'KUTAI_KARTANEGARA.kml'),
(6404, 64, 'KABUPATEN KUTAI TIMUR', '117.1381402', '0.957951764', 'KUTAI_TIMUR.kml'),
(1207, 12, 'KABUPATEN LABUHAN BATU', '100.0564039', '2.278724955', 'LABUHANBATU.kml'),
(1222, 12, 'KABUPATEN LABUHAN BATU SELATAN', '100.1328826', '1.8373795', 'LABUHANBATU_SELATAN.kml'),
(1223, 12, 'KABUPATEN LABUHAN BATU UTARA', '99.75247186', '2.406297019', 'LABUHANBATU_UTARA.kml'),
(1604, 16, 'KABUPATEN LAHAT', '103.3853245', '-3.830557398', 'LAHAT.kml'),
(6207, 62, 'KABUPATEN LAMANDAU', '111.4066252', '-1.800476042', 'LAMANDAU.kml'),
(3524, 35, 'KABUPATEN LAMONGAN', '112.3007834', '-7.13119877', 'LAMONGAN.kml'),
(1801, 18, 'KABUPATEN LAMPUNG BARAT', '104.1982124', '-5.216303856', 'LAMPUNG_BARAT.kml'),
(1803, 18, 'KABUPATEN LAMPUNG SELATAN', '105.5005012', '-5.532772419', 'LAMPUNG_SELATAN.kml'),
(1805, 18, 'KABUPATEN LAMPUNG TENGAH', '105.2646489', '-4.861296032', 'LAMPUNG_TENGAH.kml'),
(1804, 18, 'KABUPATEN LAMPUNG TIMUR', '105.6490368', '-5.136651322', 'LAMPUNG_TIMUR.kml'),
(1806, 18, 'KABUPATEN LAMPUNG UTARA', '104.8058936', '-4.809238443', 'LAMPUNG_UTARA.kml'),
(6103, 61, 'KABUPATEN LANDAK', '109.7711804', '0.516558383', 'LANDAK.kml'),
(1213, 12, 'KABUPATEN LANGKAT', '98.2202378', '3.710775083', 'LANGKAT.kml'),
(9430, 94, 'KABUPATEN LANNY JAYA', '138.2709825', '-3.985666862', 'LANNY_JAYA.kml'),
(3602, 36, 'KABUPATEN LEBAK', '106.2128344', '-6.642101041', 'LEBAK.kml'),
(1707, 17, 'KABUPATEN LEBONG', '102.2491444', '-3.090345988', 'LEBONG.kml'),
(5308, 53, 'KABUPATEN LEMBATA', '123.5423442', '-8.380280743', 'LEMBATA.kml'),
(1308, 13, 'KABUPATEN LIMA PULUH KOTA', '100.5659229', '0.029782302', 'LIMA_PULUH_KOTA.kml'),
(2104, 21, 'KABUPATEN LINGGA', '104.5270897', '-0.224557002', 'LINGGA.kml'),
(5201, 52, 'KABUPATEN LOMBOK BARAT', '116.0942345', '-8.664408973', 'LOMBOK_BARAT.kml'),
(5202, 52, 'KABUPATEN LOMBOK TENGAH', '116.2891792', '-8.722837843', 'LOMBOK_TENGAH.kml'),
(5203, 52, 'KABUPATEN LOMBOK TIMUR', '116.5308804', '-8.532917631', 'LOMBOK_TIMUR.kml'),
(5208, 52, 'KABUPATEN LOMBOK UTARA', '116.2834972', '-8.34904069', 'LOMBOK_UTARA.kml'),
(3508, 35, 'KABUPATEN LUMAJANG', '113.1375746', '-8.125300932', 'LUMAJANG.kml'),
(7317, 73, 'KABUPATEN LUWU', '120.1825513', '-3.198550722', 'LUWU.kml'),
(7325, 73, 'KABUPATEN LUWU TIMUR', '121.1385083', '-2.550679945', 'LUWU_TIMUR.kml'),
(7322, 73, 'KABUPATEN LUWU UTARA', '120.160901', '-2.39526377', 'LUWU_UTARA.kml'),
(3519, 35, 'KABUPATEN MADIUN', '111.6457162', '-7.624222277', 'MADIUN.kml'),
(3308, 33, 'KABUPATEN MAGELANG', '110.2467332', '-7.501579696', 'MAGELANG.kml'),
(3520, 35, 'KABUPATEN MAGETAN', '111.3579023', '-7.662881343', 'MAGETAN.kml'),
(6411, 64, 'KABUPATEN MAHAKAM HULU', '115.190346', '0.821044', ''),
(3210, 32, 'KABUPATEN MAJALENGKA', '108.2578116', '-6.815865359', 'MAJALENGKA.kml'),
(7601, 76, 'KABUPATEN MAJENE', '118.9196113', '-3.166606133', 'MAJENE.kml'),
(5321, 53, 'KABUPATEN MALAKA', '124.890310', '-9.496440', ''),
(3507, 35, 'KABUPATEN MALANG', '112.6410121', '-8.126768242', 'MALANG.kml'),
(6501, 65, 'KABUPATEN MALINAU', '115.7147338', '2.477851045', 'MALINAU.kml'),
(8108, 81, 'KABUPATEN MALUKU BARAT DAYA', '126.3165638', '-7.799363236', 'MALUKU_BARAT_DAYA.kml'),
(8103, 81, 'KABUPATEN MALUKU TENGAH', '129.2779757', '-3.160339673', 'MALUKU_TENGAH.kml'),
(8102, 81, 'KABUPATEN MALUKU TENGGARA', '132.7394385', '-5.849252962', 'MALUKU_TENGGARA.kml'),
(8101, 81, 'KABUPATEN MALUKU TENGGARA BARAT', '131.3667632', '-7.579420303', 'MALUKU_TENGGARA_BARAT.kml'),
(7603, 76, 'KABUPATEN MAMASA', '119.3119063', '-2.948800548', 'MAMASA.kml'),
(9428, 94, 'KABUPATEN MAMBERAMO RAYA', '137.969067', '-2.489622185', 'MAMBERAMO_RAYA.kml'),
(9431, 94, 'KABUPATEN MAMBERAMO TENGAH', '139.0276646', '-3.608634188', 'MAMBERAMO_TENGAH.kml'),
(7604, 76, 'KABUPATEN MAMUJU', '119.3977459', '-2.334351042', 'MAMUJU.kml'),
(7606, 76, 'KABUPATEN MAMUJU TENGAH', '119.520879', '-1.978321', ''),
(7605, 76, 'KABUPATEN MAMUJU UTARA', '119.5072073', '-1.485664291', 'MAMUJU_UTARA.kml'),
(1202, 12, 'KABUPATEN MANDAILING NATAL', '99.36943568', '0.774371162', 'MANDAILING_NATAL.kml'),
(5313, 53, 'KABUPATEN MANGGARAI', '120.401525', '-8.569355577', 'MANGGARAI.kml'),
(5315, 53, 'KABUPATEN MANGGARAI BARAT', '119.9889282', '-8.602545287', 'MANGGARAI_BARAT.kml'),
(5319, 53, 'KABUPATEN MANGGARAI TIMUR', '120.6906256', '-8.571698069', 'MANGGARAI_TIMUR.kml'),
(9105, 91, 'KABUPATEN MANOKWARI', '133.5321799', '-1.119174997', 'MANOKWARI.kml'),
(9111, 91, 'KABUPATEN MANOKWARI SELATAN', '134.006588', '-1.579809', ''),
(9414, 94, 'KABUPATEN MAPPI', '139.3990138', '-6.495806082', 'MAPPI.kml'),
(7308, 73, 'KABUPATEN MAROS', '119.7247492', '-5.00069621', 'MAROS.kml'),
(9110, 91, 'KABUPATEN MAYBRAT', '132.3756788', '-1.322248289', 'MAYBRAT.kml'),
(6110, 61, 'KABUPATEN MELAWI', '111.7278942', '-0.631342225', 'MELAWI.kml'),
(6104, 61, 'KABUPATEN MEMPAWAH', '109.138725', '0.367035', ''),
(1502, 15, 'KABUPATEN MERANGIN', '102.0644191', '-2.196200905', 'MERANGIN.kml'),
(9401, 94, 'KABUPATEN MERAUKE', '139.7043403', '-7.840149438', 'MERAUKE.kml'),
(1811, 18, 'KABUPATEN MESUJI', '105.377875', '-4.023735406', 'MESUJI.kml'),
(9412, 94, 'KABUPATEN MIMIKA', '136.6938857', '-4.500496207', 'MIMIKA.kml'),
(7102, 71, 'KABUPATEN MINAHASA', '124.8551563', '1.254639676', 'MINAHASA.kml'),
(7105, 71, 'KABUPATEN MINAHASA SELATAN', '124.5210665', '1.084223978', 'MINAHASA_SELATAN.kml'),
(7109, 71, 'KABUPATEN MINAHASA TENGGARA', '124.7229743', '1.010645977', 'MINAHASA_TENGGARA.kml'),
(7106, 71, 'KABUPATEN MINAHASA UTARA', '125.0067034', '1.551116914', 'MINAHASA_UTARA.kml'),
(3516, 35, 'KABUPATEN MOJOKERTO', '112.4852491', '-7.549867589', 'MOJOKERTO.kml'),
(7203, 72, 'KABUPATEN MOROWALI', '121.5512829', '-2.09138806', 'MOROWALI.kml'),
(7212, 72, 'KABUPATEN MOROWALI UTARA', '121.213298', '-1.672303', ''),
(1603, 16, 'KABUPATEN MUARA ENIM', '103.9910649', '-3.550403118', 'MUARA_ENIM.kml'),
(1505, 15, 'KABUPATEN MUARO JAMBI', '103.7452606', '-1.609075635', 'MUARO_JAMBI.kml'),
(1706, 17, 'KABUPATEN MUKOMUKO', '101.4855966', '-2.701394862', 'MUKOMUKO.kml'),
(7402, 74, 'KABUPATEN MUNA', '122.5953297', '-4.902214733', 'MUNA.kml'),
(7413, 74, 'KABUPATEN MUNA BARAT', '122.548210', '-4.876072', ''),
(6213, 62, 'KABUPATEN MURUNG RAYA', '114.2795564', '-0.030233453', 'MURUNG_RAYA.kml'),
(1606, 16, 'KABUPATEN MUSI BANYUASIN', '103.8296827', '-2.444087398', 'MUSI_BANYUASIN.kml'),
(1605, 16, 'KABUPATEN MUSI RAWAS', '102.9487594', '-2.964054068', 'MUSI_RAWAS.kml'),
(1613, 16, 'KABUPATEN MUSI RAWAS UTARA', '102.948759379242', '-2.96405406834054', 'MUSI_RAWAS.kml'),
(9404, 94, 'KABUPATEN NABIRE', '135.5843252', '-3.376555083', 'NABIRE.kml'),
(1115, 11, 'KABUPATEN NAGAN RAYA', '96.5067815', '4.155405594', 'NAGAN_RAYA.kml'),
(5318, 53, 'KABUPATEN NAGEKEO', '121.2697058', '-8.687667789', 'NAGEKEO.kml'),
(2103, 21, 'KABUPATEN NATUNA', '108.2647987', '3.785915171', 'NATUNA.kml'),
(9429, 94, 'KABUPATEN NDUGA', '138.2404729', '-4.42739311', 'NDUGA.kml'),
(5312, 53, 'KABUPATEN NGADA', '120.9994856', '-8.667343088', 'NGADA.kml'),
(3518, 35, 'KABUPATEN NGANJUK', '111.9384386', '-7.59742263', 'NGANJUK.kml'),
(3521, 35, 'KABUPATEN NGAWI', '111.3430901', '-7.439238536', 'NGAWI.kml'),
(1201, 12, 'KABUPATEN NIAS', '97.72644897', '1.071192562', 'NIAS.kml'),
(1225, 12, 'KABUPATEN NIAS BARAT', '97.49517407', '1.028917059', 'NIAS_BARAT.kml'),
(1214, 12, 'KABUPATEN NIAS SELATAN', '97.75581473', '0.767978598', 'NIAS_SELATAN.kml'),
(1224, 12, 'KABUPATEN NIAS UTARA', '97.35547738', '1.312782133', 'NIAS_UTARA.kml'),
(6504, 65, 'KABUPATEN NUNUKAN', '116.6626999', '3.994154585', 'NUNUKAN.kml'),
(1610, 16, 'KABUPATEN OGAN ILIR', '104.6009031', '-3.409978046', 'OGAN_ILIR.kml'),
(1602, 16, 'KABUPATEN OGAN KOMERING ILIR', '105.3906809', '-3.343173097', 'OGAN_KOMERING_ILIR.kml'),
(1601, 16, 'KABUPATEN OGAN KOMERING ULU', '104.0938297', '-4.100669953', 'OGAN_KOMERING_ULU.kml'),
(1608, 16, 'KABUPATEN OGAN KOMERING ULU SELATAN', '103.9152407', '-4.590247084', 'OGAN_KOMERING_ULU_SELATAN.kml'),
(1609, 16, 'KABUPATEN OGAN KOMERING ULU TIMUR', '104.5679224', '-4.068872772', 'OGAN_KOMERING_ULU_TIMUR.kml'),
(3501, 35, 'KABUPATEN PACITAN', '111.1790562', '-8.126213418', 'PACITAN.kml'),
(1221, 12, 'KABUPATEN PADANG LAWAS', '99.84412085', '1.140403599', 'PADANG_LAWAS.kml'),
(1220, 12, 'KABUPATEN PADANG LAWAS UTARA', '99.75745213', '1.593256322', 'PADANG_LAWAS_UTARA.kml'),
(1306, 13, 'KABUPATEN PADANG PARIAMAN', '100.2276698', '-0.562293429', 'PADANG_PARIAMAN.kml'),
(1216, 12, 'KABUPATEN PAKPAK BHARAT', '98.24050919', '2.55420887', 'PAKPAK_BARAT.kml'),
(3528, 35, 'KABUPATEN PAMEKASAN', '113.5038891', '-7.065259754', 'PAMEKASAN.kml'),
(3601, 36, 'KABUPATEN PANDEGLANG', '105.7429489', '-6.590225547', 'PANDEGLANG.kml'),
(3218, 32, 'KABUPATEN PANGANDARAN', '108.5186909', '-7.635941122', 'PANGANDARAN.kml'),
(7309, 73, 'KABUPATEN PANGKAJENE DAN KEPULAUAN', '119.4786843', '-4.939837244', 'PANGKAJENE_DAN_KEPULAUAN.kml'),
(9410, 94, 'KABUPATEN PANIAI', '136.4928412', '-3.805199496', 'PANIAI.kml'),
(7208, 72, 'KABUPATEN PARIGI MOUTONG', '120.4511349', '0.015657762', 'PARIGI_MOUTONG.kml'),
(1309, 13, 'KABUPATEN PASAMAN', '100.08276', '0.387292073', 'PASAMAN.kml'),
(1312, 13, 'KABUPATEN PASAMAN BARAT', '99.67811631', '0.206952548', 'PASAMAN_BARAT.kml'),
(6401, 64, 'KABUPATEN PASER', '116.0948316', '-1.733319105', 'PASER.kml'),
(3514, 35, 'KABUPATEN PASURUAN', '112.8315585', '-7.743180632', 'PASURUAN.kml'),
(3318, 33, 'KABUPATEN PATI', '111.0414135', '-6.74342378', 'PATI.kml'),
(9112, 91, 'KABUPATEN PEGUNUNGAN ARFAK', '133.761859', '-1.146002', ''),
(9417, 94, 'KABUPATEN PEGUNUNGAN BINTANG', '140.5326951', '-4.517497232', 'PEGUNUNGAN_BINTANG.kml'),
(3326, 33, 'KABUPATEN PEKALONGAN', '109.6204181', '-7.056775513', 'PEKALONGAN.kml'),
(1404, 14, 'KABUPATEN PELALAWAN', '102.2676239', '0.219424055', 'PELALAWAN.kml'),
(3327, 33, 'KABUPATEN PEMALANG', '109.394979', '-7.03654071', 'PEMALANG.kml'),
(6409, 64, 'KABUPATEN PENAJAM PASER UTARA', '116.5977893', '-1.157398563', 'PENAJAM_PASER_UTARA.kml'),
(1612, 16, 'KABUPATEN PENUKAL ABAB LEMATANG ILIR', '103.992176', '-3.200822', ''),
(1809, 18, 'KABUPATEN PESAWARAN', '105.1102186', '-5.473490376', 'PESAWARAN.kml'),
(1813, 18, 'KABUPATEN PESISIR BARAT', '104.073856', '-5.261135', ''),
(1302, 13, 'KABUPATEN PESISIR SELATAN', '100.8806745', '-1.738289187', 'PESISIR_SELATAN.kml'),
(1109, 11, 'KABUPATEN PIDIE', '96.00717934', '5.068093001', 'PIDIE.kml'),
(1118, 11, 'KABUPATEN PIDIE JAYA', '96.21664056', '5.124697965', 'PIDIE_JAYA.kml'),
(7315, 73, 'KABUPATEN PINRANG', '119.5999164', '-3.622456838', 'PINRANG.kml'),
(7503, 75, 'KABUPATEN POHUWATO', '121.7111085', '0.688009723', 'POHUWATO.kml'),
(7602, 76, 'KABUPATEN POLEWALI MANDAR', '119.1447791', '-3.312189912', 'POLEWALI_MANDAR.kml'),
(3502, 35, 'KABUPATEN PONOROGO', '111.4993659', '-7.931320198', 'PONOROGO.kml'),
(7204, 72, 'KABUPATEN POSO', '120.5210924', '-1.680809654', 'POSO.kml'),
(1810, 18, 'KABUPATEN PRINGSEWU', '104.9200155', '-5.330845259', 'PRINGSEWU.kml'),
(3513, 35, 'KABUPATEN PROBOLINGGO', '113.3209627', '-7.866673003', 'PROBOLINGGO.kml'),
(6210, 62, 'KABUPATEN PULANG PISAU', '113.9545787', '-2.715933868', 'PULANG_PISAU.kml'),
(8207, 82, 'KABUPATEN PULAU MOROTAI', '128.4483581', '2.316578185', 'PULAU_MOROTAI.kml'),
(8208, 82, 'KABUPATEN PULAU TALIABU', '124.779387', '-1.723150', ''),
(9433, 94, 'KABUPATEN PUNCAK', '137.4000323', '-3.619541755', 'PUNCAK.kml'),
(9411, 94, 'KABUPATEN PUNCAK JAYA', '137.8437573', '-3.460215565', 'PUNCAK_JAYA.kml'),
(3303, 33, 'KABUPATEN PURBALINGGA', '109.4073182', '-7.322916348', 'PURBALINGGA.kml'),
(3214, 32, 'KABUPATEN PURWAKARTA', '107.4322095', '-6.595016249', 'PURWAKARTA.kml'),
(3306, 33, 'KABUPATEN PURWOREJO', '109.9660377', '-7.699590065', 'PURWOREJO.kml'),
(9108, 91, 'KABUPATEN RAJA AMPAT', '130.5742795', '-0.900147623', 'RAJA_AMPAT.kml'),
(1702, 17, 'KABUPATEN REJANG LEBONG', '102.6988938', '-3.430790086', 'REJANG_LEBONG.kml'),
(3317, 33, 'KABUPATEN REMBANG', '111.4612994', '-6.775489638', 'REMBANG.kml'),
(1409, 14, 'KABUPATEN ROKAN HILIR', '100.7472128', '1.770731967', 'ROKAN_HILIR.kml'),
(1407, 14, 'KABUPATEN ROKAN HULU', '100.4757434', '0.939540495', 'ROKAN_HULU.kml'),
(5314, 53, 'KABUPATEN ROTE NDAO', '123.1243543', '-10.72604007', 'ROTE_NDAO.kml'),
(1405, 14, 'KABUPATEN S I A K', '101.8248958', '0.826469923', 'SIAK.kml'),
(5320, 53, 'KABUPATEN SABU RAIJUA', '121.8443541', '-10.53574353', 'SABU RAIJUA.kml'),
(6101, 61, 'KABUPATEN SAMBAS', '109.3463165', '1.429501615', 'SAMBAS.kml'),
(1217, 12, 'KABUPATEN SAMOSIR', '98.72133383', '2.55873052', 'SAMOSIR.kml'),
(3527, 35, 'KABUPATEN SAMPANG', '113.2560855', '-7.052256808', 'SAMPANG.kml'),
(6105, 61, 'KABUPATEN SANGGAU', '110.4320111', '0.26893791', 'SANGGAU.kml'),
(9419, 94, 'KABUPATEN SARMI', '139.0031673', '-2.471878278', 'SARMI.kml'),
(1503, 15, 'KABUPATEN SAROLANGUN', '102.6645664', '-2.309112823', 'SAROLANGUN.kml'),
(6109, 61, 'KABUPATEN SEKADAU', '110.9513186', '-0.003879343', 'SEKADAU.kml'),
(1705, 17, 'KABUPATEN SELUMA', '102.6578194', '-4.052312648', 'SELUMA.kml'),
(3322, 33, 'KABUPATEN SEMARANG', '110.4752654', '-7.272031337', 'SEMARANG.kml'),
(8106, 81, 'KABUPATEN SERAM BAGIAN BARAT', '128.3445858', '-3.130265631', 'SERAM_BAGIAN_BARAT.kml'),
(8107, 81, 'KABUPATEN SERAM BAGIAN TIMUR', '130.4443414', '-3.421874311', 'SERAM_BAGIAN_TIMUR.kml'),
(3604, 36, 'KABUPATEN SERANG', '106.1486454', '-6.143006851', 'SERANG.kml'),
(1218, 12, 'KABUPATEN SERDANG BEDAGAI', '99.05753475', '3.366423486', 'SERDANG BEDAGAI.kml'),
(6208, 62, 'KABUPATEN SERUYAN', '112.1755602', '-2.280709413', 'SERUYAN.kml'),
(7108, 71, 'KABUPATEN SIAU TAGULANDANG BIARO', '125.3976635', '2.755913366', 'SIAU_TAGULANDANG_BIARO.kml'),
(7314, 73, 'KABUPATEN SIDENRENG RAPPANG', '119.9714267', '-3.807290295', 'SIDENRENG_RAPPANG.kml'),
(3515, 35, 'KABUPATEN SIDOARJO', '112.7002808', '-7.451632138', 'SIDOARJO.kml'),
(7210, 72, 'KABUPATEN SIGI', '119.9704413', '-1.408488355', 'SIGI.kml'),
(1304, 13, 'KABUPATEN SIJUNJUNG', '101.0895109', '-0.684085781', 'SIJUNJUNG.kml'),
(5310, 53, 'KABUPATEN SIKKA', '122.2857243', '-8.690095764', 'SIKKA.kml'),
(1209, 12, 'KABUPATEN SIMALUNGUN', '99.0330606', '2.976842505', 'SIMALUNGUN.kml'),
(1101, 11, 'KABUPATEN SIMEULUE', '96.0856768', '2.613300556', 'SIMEULUE.kml'),
(7307, 73, 'KABUPATEN SINJAI', '120.1358669', '-5.209746332', 'SINJAI.kml'),
(6107, 61, 'KABUPATEN SINTANG', '112.0700068', '0.093433164', 'SINTANG.kml'),
(3512, 35, 'KABUPATEN SITUBONDO', '114.0524061', '-7.801377537', 'SITUBONDO.kml'),
(3404, 34, 'KABUPATEN SLEMAN', '110.3834909', '-7.715434797', 'SLEMAN.kml'),
(1303, 13, 'KABUPATEN SOLOK', '100.8152109', '-0.959081973', 'SOLOK.kml'),
(1310, 13, 'KABUPATEN SOLOK SELATAN', '101.2525787', '-1.406356453', 'SOLOK_SELATAN.kml'),
(7312, 73, 'KABUPATEN SOPPENG', '119.8921109', '-4.339045563', 'SOPPENG.kml'),
(9107, 91, 'KABUPATEN SORONG', '131.5642831', '-1.116229181', 'SORONG.kml'),
(9106, 91, 'KABUPATEN SORONG SELATAN', '132.1504834', '-1.716237663', 'SORONG_SELATAN.kml'),
(3314, 33, 'KABUPATEN SRAGEN', '110.9774352', '-7.387131153', 'SRAGEN.kml'),
(3213, 32, 'KABUPATEN SUBANG', '107.7322261', '-6.484193681', 'SUBANG.kml'),
(3202, 32, 'KABUPATEN SUKABUMI', '106.7076211', '-7.076208346', 'SUKABUMI.kml'),
(6206, 62, 'KABUPATEN SUKAMARA', '111.1608369', '-2.62319545', 'SUKAMARA.kml'),
(3311, 33, 'KABUPATEN SUKOHARJO', '110.8346285', '-7.680857376', 'SUKOHARJO.kml'),
(5301, 53, 'KABUPATEN SUMBA BARAT', '119.379714', '-9.642180736', 'SUMBA_BARAT.kml'),
(5317, 53, 'KABUPATEN SUMBA BARAT DAYA', '119.1800364', '-9.534243362', 'SUMBA_BARAT_DAYA.kml'),
(5316, 53, 'KABUPATEN SUMBA TENGAH', '119.6656226', '-9.547713116', 'SUMBA_TENGAH.kml'),
(5302, 53, 'KABUPATEN SUMBA TIMUR', '120.254967', '-9.877294638', 'SUMBA_TIMUR.kml'),
(5204, 52, 'KABUPATEN SUMBAWA', '117.4849382', '-8.703221236', 'SUMBAWA.kml'),
(5207, 52, 'KABUPATEN SUMBAWA BARAT', '116.9150579', '-8.829708666', 'SUMBAWA_BARAT.kml'),
(3211, 32, 'KABUPATEN SUMEDANG', '107.98085', '-6.825065808', 'SUMEDANG.kml'),
(3529, 35, 'KABUPATEN SUMENEP', '113.8252511', '-6.995104963', 'SUMENEP.kml'),
(9427, 94, 'KABUPATEN SUPIORI', '135.5646555', '-0.732093112', 'SUPIORI.kml'),
(6309, 63, 'KABUPATEN TABALONG', '115.4990928', '-1.857706085', 'TABALONG.kml'),
(5102, 51, 'KABUPATEN TABANAN', '115.0785235', '-8.429750935', 'TABANAN.kml'),
(7305, 73, 'KABUPATEN TAKALAR', '119.4705781', '-5.419831637', 'TAKALAR.kml'),
(9109, 91, 'KABUPATEN TAMBRAUW', '132.4765269', '-0.702448805', 'TAMBRAUW.kml'),
(6503, 65, 'KABUPATEN TANA TIDUNG', '117.1699515', '3.549700636', 'TANA_TIDUNG.kml'),
(7318, 73, 'KABUPATEN TANA TORAJA', '119.7123754', '-3.108512495', 'TANA_TORAJA.kml'),
(6310, 63, 'KABUPATEN TANAH BUMBU', '115.6536881', '-3.444986215', 'TANAH_BUMBU.kml'),
(1305, 13, 'KABUPATEN TANAH DATAR', '100.5859798', '-0.460560913', 'TANAH_DATAR.kml'),
(6301, 63, 'KABUPATEN TANAH LAUT', '114.9034699', '-3.819507645', 'TANAH_LAUT.kml'),
(3603, 36, 'KABUPATEN TANGERANG', '106.5186266', '-6.174269727', 'TANGERANG.kml'),
(1802, 18, 'KABUPATEN TANGGAMUS', '104.6752099', '-5.435863307', 'TANGGAMUS.kml'),
(1507, 15, 'KABUPATEN TANJUNG JABUNG BARAT', '103.1133108', '-1.071070051', 'TANJUNG_JABUNG_BARAT.kml'),
(1506, 15, 'KABUPATEN TANJUNG JABUNG TIMUR', '103.9673517', '-1.219821156', 'TANJUNG_JABUNG_TIMUR.kml'),
(1203, 12, 'KABUPATEN TAPANULI SELATAN', '99.2580675', '1.492759577', 'TAPANULI_SELATAN.kml'),
(1204, 12, 'KABUPATEN TAPANULI TENGAH', '98.66114091', '1.835066473', 'TAPANULI_TENGAH.kml'),
(1205, 12, 'KABUPATEN TAPANULI UTARA', '99.07184409', '1.989085705', 'TAPANULI_UTARA.kml'),
(6305, 63, 'KABUPATEN TAPIN', '115.0478607', '-2.924701327', 'TAPIN.kml'),
(3206, 32, 'KABUPATEN TASIKMALAYA', '108.1412796', '-7.496892057', 'TASIKMALAYA.kml'),
(1508, 15, 'KABUPATEN TEBO', '102.3612754', '-1.310200346', 'TEBO.kml'),
(3328, 33, 'KABUPATEN TEGAL', '109.1583969', '-7.031092618', 'TEGAL.kml'),
(9104, 91, 'KABUPATEN TELUK BINTUNI', '133.3085112', '-2.003098186', 'TELUK_BINTUNI.kml'),
(9103, 91, 'KABUPATEN TELUK WONDAMA', '134.3744873', '-2.822811164', 'TELUK_WONDAMA.kml'),
(3323, 33, 'KABUPATEN TEMANGGUNG', '110.1356322', '-7.257858853', 'TEMANGGUNG.kml'),
(5304, 53, 'KABUPATEN TIMOR TENGAH SELATAN', '124.3967613', '-9.827948408', 'TIMOR_TENGAH_SELATAN.kml'),
(5305, 53, 'KABUPATEN TIMOR TENGAH UTARA', '124.5696512', '-9.377510608', 'TIMOR_TENGAH_UTARA.kml'),
(1206, 12, 'KABUPATEN TOBA SAMOSIR', '99.26420807', '2.379733976', 'TOBA_SAMOSIR.kml'),
(7209, 72, 'KABUPATEN TOJO UNA-UNA', '121.574347', '-1.111609095', 'TOJO_UNA-UNA.kml'),
(9418, 94, 'KABUPATEN TOLIKARA', '138.4085868', '-3.483928051', 'TOLIKARA.kml'),
(7206, 72, 'KABUPATEN TOLI-TOLI', '120.7189363', '0.926044918', 'TOLI-TOLI.kml'),
(7326, 73, 'KABUPATEN TORAJA UTARA', '119.8689338', '-2.888179566', 'TORAJA_UTARA.kml'),
(3503, 35, 'KABUPATEN TRENGGALEK', '111.626213', '-8.161841193', 'TRENGGALEK.kml'),
(3523, 35, 'KABUPATEN TUBAN', '111.8914863', '-6.953156434', 'TUBAN.kml'),
(1812, 18, 'KABUPATEN TULANG BAWANG BARAT', '105.0920582', '-4.42481856', 'TULANG_BAWANG_BARAT.kml'),
(1808, 18, 'KABUPATEN TULANGBAWANG', '105.5319382', '-4.372762207', 'TULANGBAWANG.kml'),
(3504, 35, 'KABUPATEN TULUNGAGUNG', '111.887202', '-8.113254924', 'TULUNGAGUNG.kml'),
(7313, 73, 'KABUPATEN WAJO', '120.1710001', '-4.006537656', 'WAJO.kml'),
(7407, 74, 'KABUPATEN WAKATOBI', '123.7952101', '-5.575340692', 'WAKATOBI.kml'),
(9426, 94, 'KABUPATEN WAROPEN', '136.7281853', '-2.746967965', 'WAROPEN.kml'),
(1807, 18, 'KABUPATEN WAY KANAN', '104.6144902', '-4.516452292', 'WAY_KANAN.kml'),
(3312, 33, 'KABUPATEN WONOGIRI', '111.0004034', '-7.920202465', 'WONOGIRI.kml'),
(3307, 33, 'KABUPATEN WONOSOBO', '109.907223', '-7.415535234', 'WONOSOBO.kml'),
(9416, 94, 'KABUPATEN YAHUKIMO', '139.6032507', '-4.489206429', 'YAHUKIMO.kml'),
(9432, 94, 'KABUPATEN YALIMO', '139.4585922', '-3.813878943', 'YALIMO.kml'),
(8171, 81, 'KOTA AMBON', '128.1809293', '-3.675491028', 'AMBON.kml'),
(2171, 21, 'KOTA B A T A M', '104.0635615', '0.963016687', 'BATAM.kml'),
(6471, 64, 'KOTA BALIKPAPAN', '116.8661106', '-1.160090758', 'BALIKPAPAN.kml'),
(1171, 11, 'KOTA BANDA ACEH', '95.32681431', '5.559296307', 'BANDA_ACEH.kml'),
(1871, 18, 'KOTA BANDAR LAMPUNG', '105.2667714', '-5.415157711', 'BANDAR_LAMPUNG.kml'),
(3273, 32, 'KOTA BANDUNG', '107.6366018', '-6.919135141', 'BANDUNG.kml'),
(3279, 32, 'KOTA BANJAR', '108.5665017', '-7.376301997', ''),
(6372, 63, 'KOTA BANJAR BARU', '114.8183911', '-3.476443993', 'BANJARBARU.kml'),
(6371, 63, 'KOTA BANJARMASIN', '114.5919132', '-3.329346106', 'BANJARMASIN.kml'),
(3579, 35, 'KOTA BATU', '112.5311201', '-7.833108594', 'BATU.kml'),
(7472, 74, 'KOTA BAUBAU', '122.675273', '-5.429900338', 'BAU_BAU.kml'),
(3275, 32, 'KOTA BEKASI', '106.9756822', '-6.280230921', 'BEKASI.kml'),
(1771, 17, 'KOTA BENGKULU', '102.3126908', '-3.827698012', 'BENGKULU.kml'),
(5272, 52, 'KOTA BIMA', '118.6265578', '-8.473858438', 'BIMA.kml'),
(1276, 12, 'KOTA BINJAI', '98.48871137', '3.599492108', ''),
(7172, 71, 'KOTA BITUNG', '125.1526181', '1.481898867', 'BITUNG.kml'),
(3572, 35, 'KOTA BLITAR', '112.166997', '-8.095024333', 'BLITAR.kml'),
(3271, 32, 'KOTA BOGOR', '106.7995641', '-6.593453116', 'KOTA_BOGOR.kml'),
(6474, 64, 'KOTA BONTANG', '117.4572021', '0.09101935', 'BONTANG.kml'),
(1375, 13, 'KOTA BUKITTINGGI', '100.3720423', '-0.30009878', 'BUKITTINGGI.kml'),
(3672, 36, 'KOTA CILEGON', '106.0193786', '-5.998177584', 'CILEGON.kml'),
(3277, 32, 'KOTA CIMAHI', '107.5435823', '-6.886495197', 'CIMAHI.kml'),
(3274, 32, 'KOTA CIREBON', '108.5535048', '-6.741886315', 'CIREBON.kml'),
(1473, 14, 'KOTA D U M A I', '101.3116538', '1.797665133', 'DUMAI.kml'),
(5171, 51, 'KOTA DENPASAR', '115.2209365', '-8.668713729', 'DENPASAR.kml'),
(3276, 32, 'KOTA DEPOK', '106.816808', '-6.396102128', 'DEPOK.kml'),
(7571, 75, 'KOTA GORONTALO', '122.7168779', '0.690705515', 'GORONTALO.kml'),
(1278, 12, 'KOTA GUNUNGSITOLI', '97.58308865', '1.265096171', 'GUNUNGSITOLI.kml'),
(3174, 31, 'KOTA JAKARTA BARAT', '106.7483268', '-6.165469489', 'JAKARTA_BARAT.kml'),
(3173, 31, 'KOTA JAKARTA PUSAT', '106.835076', '-6.181230213', 'JAKARTA_PUSAT.kml'),
(3171, 31, 'KOTA JAKARTA SELATAN', '106.8099972', '-6.272548807', 'JAKARTA_SELATAN.kml'),
(3172, 31, 'KOTA JAKARTA TIMUR', '106.9002687', '-6.255373314', 'JAKARTA_TIMUR.kml'),
(3175, 31, 'KOTA JAKARTA UTARA', '106.8694636', '-6.129184791', 'JAKARTA_UTARA.kml'),
(1571, 15, 'KOTA JAMBI', '103.600221', '-1.616996797', 'JAMBI.kml'),
(9471, 94, 'KOTA JAYAPURA', '140.0176238', '-2.962869252', 'JAYAPURA.kml'),
(3571, 35, 'KOTA KEDIRI', '112.0138378', '-7.826305096', 'KEDIRI.kml'),
(7471, 74, 'KOTA KENDARI', '122.5325884', '-4.000392878', 'KENDARI.kml'),
(7174, 71, 'KOTA KOTAMOBAGU', '124.3136749', '0.73194821', 'KOTAMOBAGU.kml'),
(5371, 53, 'KOTA KUPANG', '123.6073267', '-10.20391656', 'KUPANG.kml'),
(1173, 11, 'KOTA LANGSA', '97.97645191', '4.481474837', 'LANGSA.kml'),
(1174, 11, 'KOTA LHOKSEUMAWE', '97.11031297', '5.164494794', 'LHOKSEUMAWE.kml'),
(1674, 16, 'KOTA LUBUKLINGGAU', '102.8793582', '-3.263523992', 'LUBUKLINGGAU.kml'),
(3577, 35, 'KOTA MADIUN', '111.5281763', '-7.627983089', 'KOTA_MADIUN.kml'),
(3371, 33, 'KOTA MAGELANG', '110.2201321', '-7.4771423', 'KOTA_MAGELANG.kml'),
(7371, 73, 'KOTA MAKASSAR', '119.4611466', '-5.133417524', 'MAKASSAR.kml'),
(3573, 35, 'KOTA MALANG', '112.6363796', '-7.978964267', 'KOTA_MALANG.kml'),
(7171, 71, 'KOTA MANADO', '124.8494129', '1.523742758', 'MANADO.kml'),
(5271, 52, 'KOTA MATARAM', '116.1110931', '-8.59026878', 'MATARAM.kml'),
(1275, 12, 'KOTA MEDAN', '98.66798495', '3.627658993', 'KOTA_MEDAN.kml'),
(1872, 18, 'KOTA METRO', '105.3064433', '-5.12182436', 'METRO.kml'),
(3576, 35, 'KOTA MOJOKERTO', '112.4374366', '-7.47131266', 'MOJOKERTO.kml'),
(1371, 13, 'KOTA PADANG', '100.4352887', '-0.895617457', 'PADANG.kml'),
(1374, 13, 'KOTA PADANG PANJANG', '100.4037158', '-0.471194161', 'PADANG_PANJANG.kml'),
(1277, 12, 'KOTA PADANGSIDIMPUAN', '99.28079795', '1.396311987', 'PADANGSIDIMPUAN.kml'),
(1673, 16, 'KOTA PAGAR ALAM', '103.2626737', '-4.109111605', 'PAGAR_ALAM.kml'),
(6271, 62, 'KOTA PALANGKA RAYA', '113.7690703', '-2.018456711', 'PALANGKA_RAYA.kml'),
(1671, 16, 'KOTA PALEMBANG', '104.7315424', '-2.973283838', 'PALEMBANG.kml'),
(7373, 73, 'KOTA PALOPO', '120.1478942', '-2.980470562', 'PALOPO.kml'),
(7271, 72, 'KOTA PALU', '119.909974', '-0.829802304', 'PALU.kml'),
(1971, 19, 'KOTA PANGKAL PINANG', '106.1134778', '-2.110664829', 'PANGKALPINANG.kml'),
(7372, 73, 'KOTA PAREPARE', '119.661602', '-4.029351439', 'PAREPARE.kml'),
(1377, 13, 'KOTA PARIAMAN', '100.1374462', '-0.607563291', 'PARIAMAN.kml'),
(3575, 35, 'KOTA PASURUAN', '112.9096907', '-7.649963619', 'PASURUAN.kml'),
(1376, 13, 'KOTA PAYAKUMBUH', '100.6309808', '-0.226071557', 'PAYAKUMBUH.kml'),
(3375, 33, 'KOTA PEKALONGAN', '109.6778852', '-6.893008889', 'PEKALONGAN.kml'),
(1471, 14, 'KOTA PEKANBARU', '101.4644363', '0.549889538', 'PEKANBARU.kml'),
(1273, 12, 'KOTA PEMATANG SIANTAR', '99.05876402', '2.962202865', 'PEMATANGSIANTAR.kml'),
(6171, 61, 'KOTA PONTIANAK', '109.1648989', '0.33860997', 'PONTIANAK.kml'),
(1672, 16, 'KOTA PRABUMULIH', '104.229388', '-3.452835066', 'PRABUMULIH.kml'),
(3574, 35, 'KOTA PROBOLINGGO', '113.2053227', '-7.775066648', 'PROBOLINGGO.kml'),
(1172, 11, 'KOTA SABANG', '95.31590554', '5.81652701', 'SABANG.kml'),
(3373, 33, 'KOTA SALATIGA', '110.4984274', '-7.338271506', 'SALATIGA.kml'),
(6472, 64, 'KOTA SAMARINDA', '117.1786772', '-0.500699841', 'SAMARINDA.kml'),
(1373, 13, 'KOTA SAWAH LUNTO', '100.7570309', '-0.653771551', 'SAWAHLUNTO.kml'),
(3374, 33, 'KOTA SEMARANG', '110.3895348', '-7.020418061', 'SEMARANG.kml'),
(3673, 36, 'KOTA SERANG', '106.1662924', '-6.123412889', 'SERANG.kml'),
(1271, 12, 'KOTA SIBOLGA', '98.78590558', '1.738364398', 'SIBOLGA.kml'),
(6172, 61, 'KOTA SINGKAWANG', '109.0349178', '0.898496296', 'SINGKAWANG.kml'),
(1372, 13, 'KOTA SOLOK', '100.8152109', '-0.959081973', 'SOLOK.kml'),
(9171, 91, 'KOTA SORONG', '131.3378379', '-0.870476753', 'SORONG.kml'),
(1175, 11, 'KOTA SUBULUSSALAM', '97.93619509', '2.737050745', 'SUBULUSSALAM.kml'),
(3272, 32, 'KOTA SUKABUMI', '106.9243321', '-6.939871777', 'SUKABUMI.kml'),
(1572, 15, 'KOTA SUNGAI PENUH', '101.3411129', '-2.113351246', 'SUNGAI_PENUH.kml'),
(3578, 35, 'KOTA SURABAYA', '112.7226721', '-7.275387983', 'SURABAYA.kml'),
(3372, 33, 'KOTA SURAKARTA', '110.8233895', '-7.558081727', 'SURAKARTA.kml'),
(3671, 36, 'KOTA TANGERANG', '106.651798', '-6.18286856', 'TANGERANG.kml'),
(3674, 36, 'KOTA TANGERANG SELATAN', '106.7074233', '-6.301812981', 'TANGERANG_SELATAN.kml'),
(1272, 12, 'KOTA TANJUNG BALAI', '99.79498815', '2.96441582', 'KOTA_TANJUNGBALAI.kml'),
(2172, 21, 'KOTA TANJUNG PINANG', '104.4852267', '0.920316257', 'TANJUNGPINANG.kml'),
(6571, 65, 'KOTA TARAKAN', '117.6006866', '3.354944462', 'TARAKAN.kml'),
(3278, 32, 'KOTA TASIKMALAYA', '108.2193547', '-7.360251026', 'TASIKMALAYA.kml'),
(1274, 12, 'KOTA TEBING TINGGI', '99.15570865', '3.328360247', 'TEBINGTINGGI.kml'),
(3376, 33, 'KOTA TEGAL', '109.1157701', '-6.868823116', 'TEGAL.kml'),
(8271, 82, 'KOTA TERNATE', '127.3400145', '0.816993179', 'TERNATE.kml'),
(8272, 82, 'KOTA TIDORE KEPULAUAN', '127.67367', '0.485191912', 'TIDORE_KEPULAUAN.kml'),
(7173, 71, 'KOTA TOMOHON', '124.815674', '1.32355793', ''),
(8172, 81, 'KOTA TUAL', '132.3385997', '-5.566005927', 'TUAL.kml'),
(3471, 34, 'KOTA YOGYAKARTA', '110.3743537', '-7.80329155', 'YOGYAKARTA.kml');

-- --------------------------------------------------------

--
-- Struktur dari tabel `level_user`
--

CREATE TABLE IF NOT EXISTS `level_user` (
  `id_level` int(11) NOT NULL,
  `nama_level` varchar(50) NOT NULL,
  `publish` tinyint(1) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `level_user`
--

INSERT INTO `level_user` (`id_level`, `nama_level`, `publish`, `create_date`, `update_date`) VALUES
(1, 'Super Admin', 0, '2019-09-16 04:13:03', '0000-00-00 00:00:00'),
(2, 'Admin', 0, '2019-09-16 04:13:03', '0000-00-00 00:00:00'),
(3, 'Admin Provinsi', 1, '2019-09-16 04:14:00', '0000-00-00 00:00:00'),
(4, 'Admin Daerah', 1, '2019-09-17 03:20:13', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `materi`
--

CREATE TABLE IF NOT EXISTS `materi` (
  `id_materi` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `file` varchar(200) NOT NULL,
  `keterangan` text NOT NULL,
  `jumlah_download` int(11) NOT NULL,
  `upload_by` int(11) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `materi`
--

INSERT INTO `materi` (`id_materi`, `judul`, `file`, `keterangan`, `jumlah_download`, `upload_by`, `create_at`) VALUES
(1, 'Bahasa Persatuan', '16686-859-2093-1-sm-1-.pdf', 'tes 123 dicoba', 1, 8, '2019-09-26 07:18:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`version`) VALUES
(0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `modul`
--

CREATE TABLE IF NOT EXISTS `modul` (
  `id_modul` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `file` varchar(200) NOT NULL,
  `keterangan` text NOT NULL,
  `upload_by` int(11) NOT NULL,
  `jumlah_download` int(11) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `modul`
--

INSERT INTO `modul` (`id_modul`, `judul`, `file`, `keterangan`, `upload_by`, `jumlah_download`, `create_at`) VALUES
(1, 'Modul A', 'b2414-doc-11-.pdf', '', 0, 19, '2019-09-26 07:05:58'),
(2, 'Modul B', '', '', 0, 0, '2019-09-26 02:50:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_soal`
--

CREATE TABLE IF NOT EXISTS `m_soal` (
  `id` int(6) NOT NULL,
  `id_guru` int(6) NOT NULL,
  `id_mapel` int(6) NOT NULL,
  `bobot` int(2) NOT NULL,
  `file` varchar(150) NOT NULL,
  `tipe_file` varchar(50) NOT NULL,
  `soal` longtext NOT NULL,
  `opsi_a` longtext NOT NULL,
  `opsi_b` longtext NOT NULL,
  `opsi_c` longtext NOT NULL,
  `opsi_d` longtext NOT NULL,
  `opsi_e` longtext NOT NULL,
  `jawaban` varchar(5) NOT NULL,
  `tgl_input` datetime NOT NULL,
  `jml_benar` int(6) NOT NULL,
  `jml_salah` int(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_soal`
--

INSERT INTO `m_soal` (`id`, `id_guru`, `id_mapel`, `bobot`, `file`, `tipe_file`, `soal`, `opsi_a`, `opsi_b`, `opsi_c`, `opsi_d`, `opsi_e`, `jawaban`, `tgl_input`, `jml_benar`, `jml_salah`) VALUES
(34, 3, 1, 1, '', '', '<table border="1" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<thead>\r\n		<tr>\r\n			<th scope="col">Teks Fabel I</th>\r\n			<th scope="col">Teks Fabel II</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Dengan bangganya lucky berlari-lari kecil sambil menyeret-nyeret balok kayu yang dikalungkan majikannya, untuk&nbsp;menarik perhatian orang lain. Tetapi tak ada satu pun orang yang senang melihat anjing itu. Balok itu sebenarnya dikalungkan majikannya agar orang mengetahui kehadiran lucky, dan bisa menghindarinya. Seekor anjing lain yang melihatnya kemudian berkata &quot;Kamu seharusnya lebih bijaksana dan berdiam diri di rumah agar orang tidak melihat balok yang dikalungkan di lehermu. Apakah kamu senang bahwa semua orang tahu betapa nakal dan jahatnya kamu?&quot;</td>\r\n			<td>Di sebuah hutan, musim kemarau, burung-burung dan hewan-hewan lain sangat sulit untuk mendapatkan air.&nbsp;Namun ada seekor burung perkutut yang menemukan kendi tua yang berisi sedikit air. Kendi tersebut memiliki bentuk yang tinggi dan juga sempit, sehingga burung tersebut tidak bisa menjangkau air di dalam kendi tersebut. Burung perkutut tersebut tetap mencoba untuk meminum air yang ada di dalam kendi, tetapi tetap saja tidak bisa. Burung itu hampir putus asa hingga munculah sebuah ide.. Burung tersebut kemudian mengambil kerikilkerikil yang ada di samping kendi dan menjatuhkannya ke dalam kendi satu persatu. Ide yang cemerlang itu membuat air lama kelamaan naik sehingga burung perkutut bisa meminum air tersebut</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Perbedaan pola pengembangan kedua kutipan fabel tersebut diawali dengan ....</p>\r\n', '#####<table border="1" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<thead>\r\n		<tr>\r\n			<th scope="col">Fabel I</th>\r\n			<th scope="col">Fabel II</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>menampilkan lokasi cerita</td>\r\n			<td>memberikan garis besar cerita</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', '#####<table border="1" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<thead>\r\n		<tr>\r\n			<th scope="col">Fabel I</th>\r\n			<th scope="col">Fabel II</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>memberikan garis besar cerita</td>\r\n			<td>memulai dengan aksi</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '#####<table border="1" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<thead>\r\n		<tr>\r\n			<th scope="col">Fabel I</th>\r\n			<th scope="col">Fabel II</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>memunculkan masalah</td>\r\n			<td>mengisyaratkan bahaya</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '#####<table border="1" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<thead>\r\n		<tr>\r\n			<th scope="col">Fabel I</th>\r\n			<th scope="col">Fabel II</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>memulai dengan aksi</td>\r\n			<td>menampilkan lokasi cerita</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '#####', 'D', '2017-01-25 10:13:02', 2, 6),
(35, 3, 1, 1, '', '', '<p>&ldquo;Nada, minggu depan kita harus pindah ke Jogjakarta. Ayah dipindahtugaskan di sana.&rdquo; Bagaikan petir di siang bolong menyambar Nada yang seketika itu langsung diam mematung. &ldquo;Kenapa mendadak, Bunda? Nada senang tinggal di sini. Apa Nada tidak bisa tetap tinggal di sini? Sekolah Nada gimana?&rdquo; &ldquo;Tidak bisa, sayang. Kamu mau tinggal sama siapa di sini? Masalah sekolah, semua sudah diurus Ayah. Kamu hanya tinggal mengemasi barang-barangmu.&rdquo; Nada terdiam. Tak mungkin mampu ia membantah. Minggu depan ia harus meninggalkan tempat ini. Tepat di hari ulang tahun Dio yang ke-18. Terasa berat untuknya meninggalkan tempat ini. Terlalu banyak kenangan yang terukir. Semakin terasa berat ketika harus meninggalkan Dio.</p>\r\n\r\n<p>Akibat konflik yang terjadi pada kutipan cerpen tersebut adalah...</p>\r\n', '#####<p>Nada diam mematung selama satu minggu</p>\n', '#####<p>Nada harus segera mengemasi barang-barang miliknya</p>\r\n', '#####<p>Meskipun merasa berat, minggu depan Nada harus ikut pindah ke Yogyakarta.</p>\r\n', '#####<p>Ayah dan ibu Nada harus mencari tempat tinggal dan sekolah baru untuk Nada</p>\r\n', '#####', 'C', '2017-01-25 10:13:02', 1, 7),
(36, 3, 1, 1, '', '', '<p>&ldquo;Nada, minggu depan kita harus pindah ke Jogjakarta. Ayah dipindahtugaskan di sana.&rdquo; Bagaikan petir di siang bolong menyambar Nada yang seketika itu langsung diam mematung. &ldquo;Kenapa mendadak, Bunda? Nada senang tinggal di sini. Apa Nada tidak bisa tetap tinggal di sini? Sekolah Nada gimana?&rdquo; &ldquo;Tidak bisa, sayang. Kamu mau tinggal sama siapa di sini? Masalah sekolah, semua sudah diurus Ayah. Kamu hanya tinggal mengemasi barang-barangmu.&rdquo; Nada terdiam. Tak mungkin mampu ia membantah. Minggu depan ia harus meninggalkan tempat ini. Tepat di hari ulang tahun Dio yang ke-18. Terasa berat untuknya meninggalkan tempat ini. Terlalu banyak kenangan yang terukir. Semakin terasa berat ketika harus meninggalkan Dio.</p>\n\n<p>Penyebab terjadinya konflik pada kutipan cerpen tersebut adalah ...</p>\n', '#####<p>Perasaan berat hati Nada harus meninggalkan Dio.</p>\r\n', '#####<p>Nada merasa bingung dengan masalah sekolahnya.</p>\r\n', '#####<p>Kepindahan tempat tugas ayah Nada yang mendadak</p>\r\n', '#####<p>Nada merasa berat meninggalkan tempat tinggal yang sekarang.</p>\r\n', '#####', 'C', '2017-01-25 10:13:02', 1, 7),
(37, 3, 1, 1, '', '', '<p>&ldquo;Nada, minggu depan kita harus pindah ke Jogjakarta. Ayah dipindahtugaskan di sana.&rdquo; Bagaikan petir di siang bolong menyambar Nada yang seketika itu langsung diam mematung. &ldquo;Kenapa mendadak, Bunda? Nada senang tinggal di sini. Apa Nada tidak bisa tetap tinggal di sini? Sekolah Nada gimana?&rdquo; &ldquo;Tidak bisa, sayang. Kamu mau tinggal sama siapa di sini? Masalah sekolah, semua sudah diurus Ayah. Kamu hanya tinggal mengemasi barang-barangmu.&rdquo; Nada terdiam. Tak mungkin mampu ia membantah. Minggu depan ia harus meninggalkan tempat ini. Tepat di hari ulang tahun Dio yang ke-18. Terasa berat untuknya meninggalkan tempat ini. Terlalu banyak kenangan yang terukir. Semakin terasa berat ketika harus meninggalkan Dio.</p>\r\n\r\n<p>Amanat yang terdapat pada kutipan cerpen tersebut adalah ...</p>\r\n', '#####<p>Sebagai anak harus patuh pada kedua orang tua.</p>\r\n', '#####<p>Lakukan perintah orang tua meskipun dengan terpaksa!</p>\r\n', '#####<p>Ikhlaskan diri kita dalam mengerjakan sesuatu pekerjaan!</p>\r\n', '#####<p>Setiap keputusan agar dibicarakan terlebih dahulu dengan keluarga!</p>\r\n', '#####', 'A', '2017-01-25 10:13:02', 0, 6),
(38, 3, 1, 1, '', '', '<p>&ldquo;Nada, minggu depan kita harus pindah ke Jogjakarta. Ayah dipindahtugaskan di sana.&rdquo; Bagaikan petir di siang bolong menyambar Nada yang seketika itu langsung diam mematung. &ldquo;Kenapa mendadak, Bunda? Nada senang tinggal di sini. Apa Nada tidak bisa tetap tinggal di sini? Sekolah Nada gimana?&rdquo; &ldquo;Tidak bisa, sayang. Kamu mau tinggal sama siapa di sini? Masalah sekolah, semua sudah diurus Ayah. Kamu hanya tinggal mengemasi barang-barangmu.&rdquo; Nada terdiam. Tak mungkin mampu ia membantah. Minggu depan ia harus meninggalkan tempat ini. Tepat di hari ulang tahun Dio yang ke-18. Terasa berat untuknya meninggalkan tempat ini. Terlalu banyak kenangan yang terukir. Semakin terasa berat ketika harus meninggalkan Dio.</p>\r\n\r\n<p>Makna simbol <strong><em>petir di siang bolong</em></strong> pada kutipan cerpen tersebut adalah....</p>\r\n', '#####<p>merasa sedih</p>\r\n', '#####<p>merasa bingung</p>\r\n', '#####<p>sangat terkejut</p>\r\n', '#####<p>merasa heran</p>\r\n', '#####', 'C', '2017-01-25 10:13:02', 0, 4),
(39, 3, 1, 1, '', '', '<p>Langit menjadi kelabu. Awan hitam mulai tak mampu lagi membendung butiran air. Matahari pergi. Sinarnya pun tak berbekas. Di samping rumah Nada, nampak Dio masih asyik bermain dengan merpatinya. Nada tersenyum menatapnya dari balik jendela kamarnya. Ya, tetangganya itu memang sangat menyukai merpati. Bahkan di samping rumahnya ada sebuah kandang merpati yang cukup luas miliknya sendiri. Ia biasa menyebutnya istana Merpati Dara Dori. Begitu banyak jenis merpati yang ia piara. Semuanya sepasang. Ada merpati lokal, merpati kipas, merpati gondok, merpati Lahore, dan masih banyak lagi. Namun, di antara semua merpatinya, merpati lokal berwarna seputih saljulah yang paling ia sukai. Dara dan Dori.</p>\r\n\r\n<p>Latar suasana yang terdapat pada kutipan cerpen tersebut adalah .&hellip;</p>\r\n', '#####<p>mendung</p>\r\n', '#####<p>hujan</p>\r\n', '#####<p>dingin</p>\r\n', '#####<p>sunyi</p>\r\n', '#####', 'B', '2017-01-25 10:13:02', 1, 5),
(40, 3, 1, 1, '', '', '<p>Langit menjadi kelabu. Awan hitam mulai tak mampu lagi membendung butiran air. Matahari pergi. Sinarnya pun tak berbekas. Di samping rumah Nada, nampak Dio masih asyik bermain dengan merpatinya. Nada tersenyum menatapnya dari balik jendela kamarnya. Ya, tetangganya itu memang sangat menyukai merpati. Bahkan di samping rumahnya ada sebuah kandang merpati yang cukup luas miliknya sendiri. Ia biasa menyebutnya istana Merpati Dara Dori. Begitu banyak jenis merpati yang ia piara. Semuanya sepasang. Ada merpati lokal, merpati kipas, merpati gondok, merpati Lahore, dan masih banyak lagi. Namun, di antara semua merpatinya, merpati lokal berwarna seputih saljulah yang paling ia sukai. Dara dan Dori.</p>\r\n\r\n<p>Kutipan cerpen tersebut merupakan bagian alur ...</p>\r\n', '#####<p>pengenalan</p>\r\n', '#####<p>komplikasi</p>\r\n', '#####<p>klimaks</p>\r\n', '#####<p>penyelesaian</p>\r\n', '#####', 'A', '2017-01-25 10:13:02', 0, 4),
(41, 3, 1, 1, '', '', '<p>Langit menjadi kelabu. Awan hitam mulai tak mampu lagi membendung butiran air. Matahari pergi. Sinarnya pun tak berbekas. Di samping rumah Nada, nampak Dio masih asyik bermain dengan merpatinya. Nada tersenyum menatapnya dari balik jendela kamarnya. Ya, tetangganya itu memang sangat menyukai merpati. Bahkan di samping rumahnya ada sebuah kandang merpati yang cukup luas miliknya sendiri. Ia biasa menyebutnya istana Merpati Dara Dori. Begitu banyak jenis merpati yang ia piara. Semuanya sepasang. Ada merpati lokal, merpati kipas, merpati gondok, merpati Lahore, dan masih banyak lagi. Namun, di antara semua merpatinya, merpati lokal berwarna seputih saljulah yang paling ia sukai. Dara dan Dori.</p>\r\n\r\n<p>Pernyataan yang sesuai dengan isi cerpen tersebut adalah &hellip;</p>\r\n', '#####<p>Merpati yang paling Dio Gemari adalah merpati Lahore</p>\r\n', '#####<p>Dio seorang yang menggemari berbagai jenis burung merpati.</p>\r\n', '#####<p>Kandang burung yang ada sengaja dibuat untuk Dara dan Dori.</p>\r\n', '#####<p>Nada tidak senang kalau Dio memelihara banyak burung merpati.</p>\r\n', '#####', 'B', '2017-01-25 10:13:02', 3, 4),
(42, 3, 1, 1, '', '', '<p>Langit menjadi kelabu. Awan hitam mulai tak mampu lagi membendung butiran air. Matahari pergi. Sinarnya pun tak berbekas. Di samping rumah Nada, nampak Dio masih asyik bermain dengan merpatinya. Nada tersenyum menatapnya dari balik jendela kamarnya. Ya, tetangganya itu memang sangat menyukai merpati. Bahkan di samping rumahnya ada sebuah kandang merpati yang cukup luas miliknya sendiri. Ia biasa menyebutnya istana Merpati Dara Dori. Begitu banyak jenis merpati yang ia piara. Semuanya sepasang. Ada merpati lokal, merpati kipas, merpati gondok, merpati Lahore, dan masih banyak lagi. Namun, di antara semua merpatinya, merpati lokal berwarna seputih saljulah yang paling ia sukai. Dara dan Dori.</p>\r\n\r\n<p>Makna kata &ldquo;membendung&rdquo; pada kutipan cerpen tersebut ialah &hellip;.</p>\r\n', '#####<p>menahan</p>\r\n', '#####<p>menampung</p>\r\n', '#####<p>membentengi</p>\r\n', '#####<p>mengumpulkan</p>\r\n', '#####', 'A', '2017-01-25 10:13:02', 1, 4),
(43, 3, 1, 1, '', '', '<p>1) Penerbit Wayang menerbitkan buku terbaru yang berjudul Sudah Saatnya Menjadi Penulis Hebat. 2) Buku ini ditulis oleh Bendi Derajat. 3) Judulnya menarik, isinya lengkap, bahasanya ringan dan mudah dipahami serta bermanfaat bagi pembaca. 4) Hanya saja buku tersebut menggunakan banyak istilah akademik yang sulit dipahami pembaca awam.</p>\r\n\r\n<p>Kelemahan karya sastra yang terdapat pada ulasan buku tersebut ditandai nomor...</p>\r\n\r\n<p>&nbsp;</p>\r\n', '#####<p>1</p>\r\n', '#####<p>2</p>\r\n', '#####<p>3</p>\r\n', '#####<p>4</p>\r\n', '#####', 'D', '2017-01-25 10:13:02', 0, 5),
(44, 3, 1, 1, '', '', '<p><em>Kutipan teks I </em></p>\r\n\r\n<p><strong>Gamelan Jawa </strong></p>\r\n\r\n<p>Yogyakarta adalah tempat yang paling tepat untuk menikmati gamelan. Di kota ini Anda dapat menikmati gamelan versi aslinya. Gamelan yang berkembang di Yogyakarta adalah Gamelan Jawa yaitu musik yang biasanya menonjolkan metalofon, gambang, gendang, dan gong. Musik yang tercipta pada Gamelan Jawa berasal dari paduan bunyi gong, kenong, dan alat musik Jawa lainnya. Gamelan Jawa berbeda dengan Gamelan Bali ataupun Gamelan Sunda. Gamelan Jawa memiliki nada yang lebih lembut dan slow, berbeda dengan Gamelan Bali yang rancak dan Gamelan Sunda yang sangat mendayu-dayu dan didominasi suara seruling. Perbedaan itu wajar, karena Jawa memiliki pandangan hidup tersendiri yang diungkapkan dalam irama musik gamelannya. Adanya perbedaan gamelan Jawa, Bali, ataupun Sunda mengindikasikan bahwa masing-masing daerah memiliki pandangan hidup dan budaya sehingga berpengaruh pada gamelannya.</p>\r\n\r\n<p><em>Kutipan teks II </em></p>\r\n\r\n<p><strong>KEKERINGAN </strong></p>\r\n\r\n<p>Kekeringan adalah keadaan kekurangan air yang sangat ekstrim dalam waktu lama. Kekeringan timbul tanpa dapat diprediksi secara tepat. Di Indonesia, hujan turun secara tidak merata meskipun pada umumnya hujan terjadi di seluruh wilayah negeri. Selain itu, hujan tidak terjadi dalam waktu yang bersamaan. Di wilayah barat, hujan sudah turun, tetapi di wilayah timur belum turun hujan. Kekeringan biasanya muncul bila suatu wilayah secara terus-menerus mengalami curah hujan di bawah rata-rata. Musim kemarau yang panjang akan menjadi bencana alam apabila menyebabkan suatu wilayah kehilangan sumber pendapatan akibat gangguan pada pertanian dan ekosistem yang ditimbulkannya.</p>\r\n\r\n<p>Perbedaan penggunaan bahasa pada kedua kutipan teks tersebut adalah....</p>\r\n\r\n<p>&nbsp;</p>\r\n', '#####<table border="1" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<thead>\r\n		<tr>\r\n			<th scope="col">Teks 1</th>\r\n			<th scope="col">Teks 2</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>bahasanya mudah dipahami</td>\r\n			<td>banyak menggunakan istilah ilmiah</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', '#####<table border="1" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<thead>\r\n		<tr>\r\n			<th scope="col">Teks 1</th>\r\n			<th scope="col">Teks 2</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>banyak menggunakan bahasa daerah</td>\r\n			<td>bahasanya mudah dipahami</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '#####<table border="1" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<thead>\r\n		<tr>\r\n			<th scope="col">Teks 1</th>\r\n			<th scope="col">Teks 2</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>menggunakan istilah-istilah khusus</td>\r\n			<td>banyak menggunakan istilah ilmiah</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '#####<table border="1" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<thead>\r\n		<tr>\r\n			<th scope="col">Teks 1</th>\r\n			<th scope="col">Teks 2</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>banyak menggunakan istilah khusus</td>\r\n			<td>menggunakan istilah-istilah umum</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '#####', 'D', '2017-01-25 10:13:02', 0, 7),
(45, 3, 1, 1, '', '', '<p>Sejak zaman dahulu, nenek moyang kita sudah mengenal tanaman lidah buaya serta manfaatnya. Manfaat tumbuhan yang bernama latin Aloe Vera ini tidak hanya sebagai penyubur rambut, tetapi juga bermanfaat bagi kesehatan. Tumbuhan tanpa buah ini mempunyai ciri-ciri, seperti daun berbentuk panjang, tebal, dan berwarna hijau. Daunnya mengandung serat bening sebagai daging. Meskipun sejak dahulu dikenal memiliki banyak khasiat, belum banyak yang mengetahui bahwa tanaman ini bisa menjadi komoditas yang menguntungkan. Komoditas yang berbahan lidah buaya, di antaranya obat untuk mempercepat proses penyembuhan penyakit, jus lidah buaya atau gel sebagai obat pencahar yang baik dan sangat membantu jika mengalami sembelit, ramuan penyubur rambut, juga sebagai minuman yang menyehatkan.</p>\r\n\r\n<p>Ringkasan paragraf tersebut adalah....</p>\r\n', '#####<p>Lidah buaya bermanfaat sebagai penyubur rambut juga untuk kesehatan.</p>\r\n', '#####<p>Lidah buaya sangat bermanfaat untuk mengobati berbagai macam penyakit.</p>\r\n', '#####<p>Lidah buaya selain bermanfaat juga menjadi komoditas yang menguntungkan</p>\r\n', '#####<p>Lidah buaya memiliki ciri-ciri tertentu dan nilai komoditas yang menguntungkan</p>\r\n', '#####', 'C', '2017-01-25 10:13:02', 1, 5),
(46, 3, 1, 1, '', '', '<p>Perlunya Resapan Air untuk Mencegah Banjir</p>\r\n\r\n<p>Banjir sudah menjadi agenda tahunan bagi masyarakat Indonesia. Tidak heran bila pemerintah berjuang keras dan mengeluarkan biaya yang sangat besar untuk menyelesaikan masalah ini. Membangun saluran air yang bagus merupakan salah satu cara pemerintah menanggulangi banjir. Namun, itu semua tidak akan berhasil apabila tidak diimbangi dengan pembangunan daerah resapan air. Jadi, resapan air ini merupakan syarat mutlak untuk menanggulangi banjir.</p>\r\n\r\n<p>Pendapat yang mendukung kutipan isi teks tersebut adalah ...</p>\r\n', '#####<p>Solusi tersebut hanya akan menghamburkan uang negara.</p>\r\n', '#####<p>Solusi seperti itu sudah tepat sehingga harus segera direalisasikan.</p>\r\n', '#####<p>Solusi yang dipilih pemerintah tidak akan mampu menanggulangi banjir</p>\r\n', '#####<p>Solusi tersebut masuk akal, tetapi sulit membangun resapan air di perkotaan.</p>\r\n', '#####<p>opsi E.13</p>\r\n', 'B', '2017-01-25 10:13:02', 0, 6),
(47, 3, 1, 1, '', '', '<p>Ternyata jeruk nipis bermanfaat dalam mengobati batuk. Buah ini memiliki kandungan berupa minyak asiri dan zat yang dapat bermanfaat mengendalikan otot-otot pernapasan sehingga mampu meredakan batuk. Adapun cara penggunaannya yaitu dengan cara meminum air perasan dari jeruk nipis yang dapat dicampur dengan madu, kecap atau gula sehingga rasa asamnya berkurang. (http://informasiana.com)</p>\r\n\r\n<p>Isi yang tersirat pada bagian teks tersebut adalah ....</p>\r\n', '#####<p>Jeruk nipis dapat dicampur dengan zat lainnya</p>\r\n', '#####<p>Jeruk nipis dapat ditanam di pekarangan rumah</p>\r\n', '#####<p>Jeruk nipis memiliki khasiat untuk menjaga kesehatan</p>\r\n', '#####<p>Jeruk nipis lebih berkhasiat dibandingkan jeruk lainnya</p>\r\n', '#####<p>opsi E.14</p>\r\n', 'C', '2017-01-25 10:13:02', 2, 4),
(48, 3, 1, 1, '', '', '<p>Ternyata jeruk nipis bermanfaat dalam mengobati batuk. Buah ini memiliki kandungan berupa minyak asiri dan zat yang dapat bermanfaat mengendalikan otot-otot pernapasan sehingga mampu meredakan batuk. Adapun cara penggunaannya yaitu dengan cara meminum air perasan dari jeruk nipis yang dapat dicampur dengan madu, kecap atau gula sehingga rasa asamnya berkurang. (http://informasiana.com)</p>\r\n\r\n<p>Ide pokok teks tersebut adalah ....</p>\r\n', '#####<p>manfaat jeruk nipis</p>\r\n', '#####<p>kandungan jeruk nipis</p>\r\n', '#####<p>campuran jeruk nipis</p>\r\n', '', '', 'A', '2017-01-25 10:13:02', 0, 4),
(49, 3, 1, 1, '', '', '<p>Kelestarian Lingkungan Hidup</p>\r\n\r\n<p>Lingkungan adalah sesuatu yang ada di sekitar manusia yang dapat memengaruhi kehidupan manusia. Lingkungan hidup adalah kesatuan ruang dengan benda dan kesatuan makhluk hidup termasuk manusia terlibat di dalamnya. Manusia harus menyadari bahwa lingkungan merupakan sarana pengembangan hidup yang harus dijaga kelestariannya.</p>\r\n\r\n<p>Dalam lingkungan hidup terdapat ekosistem, yaitu tatanan unsur lingkungan hidup yang merupakan kesatuan utuh menyeluruh dan saling memengaruhi dalam membentuk keseimbangan, stabilitas, dan produktivitas lingkungan hidup. Lingkungan hidup dapat dibedakan menjadi tiga, yaitu unsur hayati (biotik), unsur sosial budaya, dan unsur fisik (abiotik). Unsur hayati (biotik), yaitu unsur lingkungan hidup yang terdiri dari makhluk hidup, seperti manusia, hewan, tumbuhan dan jasad renik. Unsur sosial budaya, yaitu lingkungan sosial dan budaya yang dibuat oleh manusia berupa sistem nilai, gagasan, dan keyakinan dalam perilaku sebagai makhluk&nbsp;sosial. Unsur fisik (abiotik), yaitu unsur lingkungan hidup yang terdiri dari makhluk tak hidup, seperti tanah, air, iklim, udara dan lain sebagainya. Keberadaan unsur ini sangat besar bagi kelangsungan hidup segenap kehidupan di bumi.</p>\r\n\r\n<p>Simpulan isi teks tersebut adalah ...</p>\r\n', '#####<p>Manusia harus menjaga kelestarian lingkungan hidup.</p>\r\n', '#####<p>Manusia dapat memanfaatkan seluruh isi lingkungan hidup</p>\r\n', '#####<p>Seluruh unsur lingkungan hidup saling mempengaruhi demi kehidupan manusia.</p>\r\n', '#####<p>Unsur biotik, sosial budaya, dan abiotik harus dimanfaatkan manusia secara seimbang.</p>\r\n', '#####<p>opsi E.16</p>\r\n', 'A', '2017-01-25 10:13:02', 3, 5),
(50, 3, 2, 1, '', '', '<p>Kelestarian Lingkungan Hidup</p>\r\n\r\n<p>Lingkungan adalah sesuatu yang ada di sekitar manusia yang dapat memengaruhi kehidupan manusia. Lingkungan hidup adalah kesatuan ruang dengan benda dan kesatuan makhluk hidup termasuk manusia terlibat di dalamnya. Manusia harus menyadari bahwa lingkungan merupakan sarana pengembangan hidup yang harus dijaga kelestariannya.</p>\r\n\r\n<p>Dalam lingkungan hidup terdapat ekosistem, yaitu tatanan unsur lingkungan hidup yang merupakan kesatuan utuh menyeluruh dan saling memengaruhi dalam membentuk keseimbangan, stabilitas, dan produktivitas lingkungan hidup. Lingkungan hidup dapat dibedakan menjadi tiga, yaitu unsur hayati (biotik), unsur sosial budaya, dan unsur fisik (abiotik). Unsur hayati (biotik), yaitu unsur lingkungan hidup yang terdiri dari makhluk hidup, seperti manusia, hewan, tumbuhan dan jasad renik. Unsur sosial budaya, yaitu lingkungan sosial dan budaya yang dibuat oleh manusia berupa sistem nilai, gagasan, dan keyakinan dalam perilaku sebagai makhluk&nbsp;sosial. Unsur fisik (abiotik), yaitu unsur lingkungan hidup yang terdiri dari makhluk tak hidup, seperti tanah, air, iklim, udara dan lain sebagainya. Keberadaan unsur ini sangat besar bagi kelangsungan hidup segenap kehidupan di bumi.</p>\r\n\r\n<p>Informasi yang sesuai dengan isi teks tersebut adalah &hellip;.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '#####<p>Tanpa adanya unsur lingkungan hidup, manusia tidak hidup di bumi ini.</p>\r\n', '#####<p>Unsur abiotik tidak terlalu berpengaruh terhadap kelangsungan hidup manusia</p>\r\n', '#####<p>Unsur sosial budaya diciptakan oleh manusia untuk kelestarian kehidupan di bumi.</p>\r\n', '#####<p>Lingkungan hidup yang meliputi unsur biotik, sosial budaya, dan abiotik harus dijaga kelestariannya.</p>\r\n', '#####<p>opsi E.17</p>\r\n', 'D', '2017-01-25 10:13:02', 0, 8),
(51, 3, 2, 1, '', '', '<p>Biografi Mario Teguh</p>\r\n\r\n<p>&quot;Salam Super&quot; itulah kata-kata pembuka yang biasa diucapkan oleh Mario Teguh ketika ia mulai membawakan acara di Metro TV yang bertajuk &#39;Mario Teguh Golden Ways&#39;. Terkenal sebagai <em>motivator </em>terbaik di Indonesia yang memiliki kepribadian yang cerdas serta mampu memotivasi banyak orang melalui rangkaian kata-kata bijaknya sehingga ia makin banyak disukai oleh orang-orang.<br />\r\n&nbsp;</p>\r\n\r\n<p>Makna kata bercetak miring pada kutipan teks tersebut adalah &hellip;</p>\r\n', '#####<p>Orang yang bertugas mengingatkan orang lain agar selalu melakukan perbuatan baik.</p>\r\n', '#####<p>Orang yang bertugas membantu seseorang dalam menyelesaikan masalah pribadinya.</p>\r\n', '#####<p>Orang yang menyebabkan timbulnya dorongan pada orang lain untuk melakukan sesuatu.</p>\r\n', '#####<p>Orang yang membangkitkan semangat seseorang agar berasil dalam menjalankan usahanya.</p>\r\n', '#####', 'C', '2017-01-25 10:13:02', 2, 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE IF NOT EXISTS `pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `user_id` int(10) NOT NULL,
  `wilayah` int(10) DEFAULT NULL,
  `nama_pegawai` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `user_id`, `wilayah`, `nama_pegawai`, `alamat`, `email`, `phone`) VALUES
(1, 2, 11, 'Udin Martono', 'Semarang', 'udin@gmail.com', '0891239123'),
(2, 3, 3307, 'Kurniawan Teguh', 'Semarang', 'k.teguh@gmail.com', '085242970666'),
(8, 1, NULL, 'Helmi', 'Tegal', 'helmi@gmail.com', '0891239123'),
(11, 4, 33, 'Mukhammad Fakhir Rizal', 'Jln. dr. Cipto 61, Proyonanggan Tengah, Batang 51211', 'fakhir_rizal@hotmail.com', '085696303627'),
(12, 5, 5271, 'Estio Nurcahyanto', 'Bekasi', 'estio@hotmail.com', '085696303627'),
(13, 6, 34, 'Imam Fajrul Falah', 'Kauman', 'imam@hotmail.com', '085696303627'),
(14, 7, NULL, 'Sharfina Aulia Puspasari', 'Pasekaran', 'fina@hotmail.com', '085696303627'),
(15, 8, 19, 'helmi', 'tegal', 'helmi@gmail.com', '0810230123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profil_dir`
--

CREATE TABLE IF NOT EXISTS `profil_dir` (
  `id_profil` int(11) NOT NULL,
  `visi_misi` longtext NOT NULL,
  `tupoksi` longtext NOT NULL,
  `struktur_organisasi` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `profil_dir`
--

INSERT INTO `profil_dir` (`id_profil`, `visi_misi`, `tupoksi`, `struktur_organisasi`) VALUES
(1, '<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; text-align: center;">\n	<span style="box-sizing: border-box; font-weight: 700;">&quot;TERWUJUDNYA INFRASTRUKTUR PEKERJAAN UMUM DAN PERUMAHAN RAKYAT YANG HANDAL</span></p>\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; text-align: center;">\n	<span style="box-sizing: border-box; font-weight: 700;">DALAM MENDUKUNG INDONESIA YANG BERDAULAT, MANDIRI, DAN BERKEPRIBADIAN</span></p>\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; text-align: center;">\n	<span style="box-sizing: border-box; font-weight: 700;">BERLANDASKAN GOTONG ROYONG&quot;</span></p>\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; text-align: justify;">\n	&nbsp;</p>\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; text-align: justify;">\n	Misi Kementerian Pekerjaan Umum dan Perumahan Rakyat yang merupakan rumusan upaya yang akan dilaksanakan selama periode Renstra 2015 &ndash; 2019 dalam rangka mencapai visi serta mendukung upaya pencapaian target pembangunan nasional, berdasarkan mandat yang diemban oleh Kementerian Pekerjaan Umum dan Perumahan Rakyat sebagaimana yang tercantum di dalam Peraturan Pemerintah Nomor 165 Tahun 2014 tentang Penataan Tugas dan Fungsi Kabinet Kerja, amanat RPJMN tahap ketiga serta perubahan kondisi lingkungan strategis yang dinamis adalah sebagai berikut :</p>\n<ol style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px;">\n	<li style="box-sizing: border-box; text-align: justify;">\n		Mempercepat pembangunan infrastruktur sumberdaya air termasuk sumber daya maritim untuk mendukung ketahanan air, kedaulatan pangan, dan kedaulatan energi, guna menggerakkan sektor-sektor strategis ekonomi domestik dalam rangka kemandirian ekonomi;</li>\n	<li style="box-sizing: border-box; text-align: justify;">\n		Mempercepat pembangunan infrastruktur jalan untuk mendukung konektivitas guna meningkatkan produktivitas, efisiensi, dan pelayanan sistem logistik nasional bagi penguatan daya saing bangsa di lingkup global yang berfokus pada keterpaduan konektivitas daratan dan maritim;</li>\n	<li style="box-sizing: border-box; text-align: justify;">\n		Mempercepat pembangunan infrastruktur permukiman dan perumahan rakyat untuk mendukung layanan infrastruktur dasar yang layak dalam rangka mewujudkan kualitas hidup manusia Indonesia sejalan dengan prinsip &lsquo;infrastruktur untuk semua&rsquo;;</li>\n	<li style="box-sizing: border-box; text-align: justify;">\n		Mempercepat pembangunan infrastruktur pekerjaan umum dan perumahan rakyat secara terpadu dari pinggiran didukung industri konstruksi yang berkualitas untuk keseimbangan pembangunan antardaerah, terutama di kawasan tertinggal, kawasan perbatasan, dan kawasan perdesaan, dalam kerangka NKRI;</li>\n	<li style="box-sizing: border-box; text-align: justify;">\n		Meningkatkan tata kelola sumber daya organisasi bidang pekerjaan umum dan perumahan rakyat yang meliputi sumber daya manusia, pengendalian dan pengawasan, kesekertariatan serta penelitian dan pengembangan untuk mendukung fungsi manajemen meliputi perencanaan yang terpadu, pengorganisasian yang efisien, pelaksanaan yang tepat, dan pengawasan yang ketat.</li>\n</ol>\n', '<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px;">\n	Sesuai dengan Peraturan Presiden Nomor 15 Tahun 2015 tentang&nbsp;Kementerian Pekerjaan Umum dan Perumahan Rakyat dan Peraturan Presiden Nomor 135 Tahun 2018 tentang Perubahan atas&nbsp;Peraturan Presiden Nomor 15 Tahun 2015 tentang&nbsp;Kementerian Pekerjaan Umum dan Perumahan Rakyat.</p>\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px;">\n	Kementerian Pekerjaan Umum dan Perumahan Rakyat mempunyai tugas menyelenggarakan urusan pemerintahan di bidang pekerjaan umum dan perumahan rakyat untuk membantu Presiden dalam menyelenggarakan pemerintahan negara.</p>\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px;">\n	Dalam melaksanakan tugas sebagaimana dimaksud di atas, Kementerian Pekerjaan Umum dan Perumahan Rakyat menyelenggarakan&nbsp; fungsi:</p>\n<ol style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; list-style-type: lower-alpha;">\n	<li style="box-sizing: border-box;">\n		perumusan, penetapan, dan pelaksanaan kebijakan di bidang pengelolaan sumber daya air, penyelenggaraan jalan, penyediaan perumahan dan pengembangan kawasan permukiman, pembiayaan infrastruktur, penataan bangunan gedung, sistem penyediaan air minum, sistem pengelolaan air limbah dan drainase lingkungan serta persampahan, dan pembinaan jasa konstruksi;</li>\n	<li style="box-sizing: border-box;">\n		koordinasi pelaksanaan tugas, pembinaan, dan pemberian dukungan administrasi kepada seluruh unsur organisasi di lingkungan Kementerian Pekerjaan Umum dan perumahan Rakyat;</li>\n	<li style="box-sizing: border-box;">\n		pengelolaan barang milik/kekayaan negara yang menjadi tanggung jawab Kementerian Pekerjaan Umum dan Perumahan Rakyat;</li>\n	<li style="box-sizing: border-box;">\n		pengawasan atas pelaksanaan tugas di lingkungan Kementerian Pekerjaan Umum dan Perumahan Rakyat;</li>\n	<li style="box-sizing: border-box;">\n		pelaksanaan bimbingan teknis dan supervisi atas pelaksanaan urusan Kementerian Pekerjaan Umum dan Perumahan Rakyat di daerah;</li>\n	<li style="box-sizing: border-box;">\n		pelaksanaan penyusunan kebijakan teknis dan strategi keterpaduan pengembangan infrastruktur pekerjaan umum dan perumahan rakyat;</li>\n	<li style="box-sizing: border-box;">\n		pelaksanaan penelitian dan pengembangan di bidang pekerjaan umum dan perumahan rakyat;</li>\n	<li style="box-sizing: border-box;">\n		pelaksanaan pengembangan sumber daya manusia di bidang pekerjaan umum dan perrrmahan rakyat;</li>\n	<li style="box-sizing: border-box;">\n		pelaksanaan dukungan yang bersifat substantif kepada seluruh unsur organisasi di lingkungan Kementerian Pekerjaan Umum dan Perumahan Rakyat; dan</li>\n	<li style="box-sizing: border-box;">\n		pelaksanaan fungsi lain yang diberikan oleh Presiden.</li>\n</ol>\n', '<p>\n	<img alt="" src="/sibilup/assets/images/article/images/20190402-struktur-organisasi-kementerian-pupr.jpg" style="width: 900px; height: 675px;" /></p>\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `provinsi`
--

CREATE TABLE IF NOT EXISTS `provinsi` (
  `id_provinsi` int(5) NOT NULL,
  `nm_provinsi` varchar(20) NOT NULL,
  `regional` text NOT NULL,
  `bujur` varchar(20) NOT NULL,
  `lintang` varchar(20) NOT NULL,
  `kml` varchar(300) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=96 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `provinsi`
--

INSERT INTO `provinsi` (`id_provinsi`, `nm_provinsi`, `regional`, `bujur`, `lintang`, `kml`) VALUES
(11, 'ACEH', 'B', '96.91062914', '4.225481011', '1_Acehdddd.kml'),
(12, 'SUMATERA UTARA', 'B', '99.0547872', '2.192603093', '2_Sumut.kml'),
(13, 'SUMATERA BARAT', 'B', '100.4671831', '-0.850506837', '3_Sumbar.kml'),
(14, 'RIAU', 'B', '101.799034', '0.503684557', '4_Riau.kml'),
(15, 'JAMBI', 'B', '102.7268798', '-1.698387681', '5_Jambi.kml'),
(16, 'SUMATERA SELATAN', 'B', '104.1664707', '-3.219063887', '6_Sumsel.kml'),
(17, 'BENGKULU', 'B', '102.3400884', '-3.555204555', '7_Bengkulu.kml'),
(18, 'LAMPUNG', 'B', '105.0226981', '-4.916577688', '8_Lampung.kml'),
(19, 'BANGKA BELITUNG', 'B', '106.5569', '-2.450134775', '9_Babel.kml'),
(21, 'KEPULAUAN RIAU', 'B', '104.0109947', '1.071276437', '10_Kepri.kml'),
(31, 'DKI JAKARTA', 'B', '106.8344433', '-6.200309654', 'tes.kml'),
(32, 'JAWA BARAT', 'B', '107.6028657', '-6.919923488', '12_Jabarr.kml'),
(33, 'JAWA TENGAH', 'B', '110.20041470000001', '-7.259025224', '13_Jateng.kml'),
(34, 'DI YOGYAKARTA', 'B', '110.445954', '-7.894960449', '15_DIY.kml'),
(35, 'JAWA TIMUR', 'B', '112.7312884', '-7.721862799', '14_Jatim.kml'),
(36, 'BANTEN', 'B', '106.1088505', '-6.45632251', '16_Banten.kml'),
(51, 'BALI', 'T', '115.1321463', '-8.369793212', '17_Bali.kml'),
(52, 'NUSA TENGGARA BARAT', 'T', '117.505532', '-8.604986355', '18_NTB.kml'),
(53, 'NUSA TENGGARA TIMUR', 'T', '124.1275392', '-9.846630004', '19_NTT.kml'),
(61, 'KALIMANTAN BARAT', 'T', '111.121683', '-0.0866', '20_Kalbar.kml'),
(62, 'KALIMANTAN TENGAH', 'T', '113.4185779', '-1.605598655', '21_Kalteng.kml'),
(63, 'KALIMANTAN SELATAN', 'T', '115.4385101', '-3.013649385', '22_Kalsel.kml'),
(64, 'KALIMANTAN TIMUR', 'T', '116.4523054', '0.468813955', '23_Kaltim.kml'),
(65, 'KALIMANTAN UTARA', 'T', '116.2367967', '2.93318664', '24_Kaltara.kml'),
(71, 'SULAWESI UTARA', 'T', '124.4995914', '0.886686394', '25_Sulut.kml'),
(72, 'SULAWESI TENGAH', 'T', '121.6866436', '-1.433457161', '26_Sulteng.kml'),
(73, 'SULAWESI SELATAN', 'T', '120.1604927', '-3.744392843', '27_Sulsel.kml'),
(74, 'SULAWESI TENGGARA', 'T', '122.069023', '-4.130730653', '28_Sultenggara.kml'),
(75, 'GORONTALO', 'T', '122.3764612', '0.686770119', '29_Gorontalo.kml'),
(76, 'SULAWESI BARAT', 'T', '119.3532993', '-2.460008575', '30_Sulbar.kml'),
(81, 'MALUKU', 'T', '126.6181468', '-3.425629988', '31_Maluku.kml'),
(82, 'MALUKU UTARA', 'T', '127.771756', '0.609957943', '32_MalukuUtara.kml'),
(91, 'PAPUA BARAT', 'T', '132.9712967', '-2.039624872', '34_PapuaBarat.kml'),
(94, 'PAPUA', 'T', '138.6990113', '-4.666525818', '33_Papua.kml');

-- --------------------------------------------------------

--
-- Struktur dari tabel `regulasi`
--

CREATE TABLE IF NOT EXISTS `regulasi` (
  `id_reg` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `file` varchar(200) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `regulasi`
--

INSERT INTO `regulasi` (`id_reg`, `judul`, `file`, `keterangan`) VALUES
(1, 'tes', '6e5cd-dok-baru-2019-08-28-14.22.pdf', 'tes');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekap_kabkota`
--

CREATE TABLE IF NOT EXISTS `rekap_kabkota` (
  `id_kabupaten` int(4) NOT NULL,
  `belum` enum('X','V') DEFAULT NULL,
  `sedang` enum('X','V') DEFAULT NULL,
  `review` enum('X','V') DEFAULT NULL,
  `sudah` enum('X','V') DEFAULT NULL,
  `bentuk_kegiatan` text,
  `anggaran` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekap_provinsi`
--

CREATE TABLE IF NOT EXISTS `rekap_provinsi` (
  `id_provinsi` int(2) NOT NULL,
  `belum` enum('X','V') DEFAULT NULL,
  `menganggarkan` enum('X','V') DEFAULT NULL,
  `sedang` enum('X','V') DEFAULT NULL,
  `review` enum('X','V') DEFAULT NULL,
  `sudah` enum('X','V') DEFAULT NULL,
  `bentuk_kegiatan` text,
  `anggaran` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tr_guru_mapel`
--

CREATE TABLE IF NOT EXISTS `tr_guru_mapel` (
  `id` int(6) NOT NULL,
  `id_guru` int(6) NOT NULL,
  `id_mapel` int(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tr_guru_mapel`
--

INSERT INTO `tr_guru_mapel` (`id`, `id_guru`, `id_mapel`) VALUES
(3, 6, 1),
(4, 6, 2),
(5, 6, 3),
(6, 6, 4),
(8, 7, 4),
(9, 2, 1),
(10, 2, 2),
(12, 4, 1),
(13, 4, 2),
(14, 4, 3),
(15, 4, 4),
(16, 5, 1),
(17, 5, 2),
(18, 5, 3),
(19, 5, 4),
(20, 7, 1),
(21, 7, 2),
(22, 7, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tr_guru_tes`
--

CREATE TABLE IF NOT EXISTS `tr_guru_tes` (
  `id` int(6) NOT NULL,
  `id_guru` int(6) NOT NULL,
  `id_mapel` int(6) NOT NULL,
  `nama_ujian` varchar(200) NOT NULL,
  `jumlah_soal` int(6) NOT NULL,
  `waktu` int(6) NOT NULL,
  `jenis` enum('acak','set') NOT NULL,
  `detil_jenis` varchar(500) NOT NULL,
  `tgl_mulai` datetime NOT NULL,
  `terlambat` datetime NOT NULL,
  `token` varchar(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tr_guru_tes`
--

INSERT INTO `tr_guru_tes` (`id`, `id_guru`, `id_mapel`, `nama_ujian`, `jumlah_soal`, `waktu`, `jenis`, `detil_jenis`, `tgl_mulai`, `terlambat`, `token`) VALUES
(3, 0, 3, 'tes', 10, 30, 'acak', '', '2019-09-17 10:10:00', '2019-10-31 10:10:00', ''),
(5, 3, 0, 'tes12345', 5, 30, 'acak', '', '2019-09-26 10:10:00', '2019-10-31 10:10:00', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tr_ikut_ujian`
--

CREATE TABLE IF NOT EXISTS `tr_ikut_ujian` (
  `id` int(6) NOT NULL,
  `id_tes` int(6) NOT NULL,
  `id_user` int(6) NOT NULL,
  `list_soal` longtext NOT NULL,
  `list_jawaban` longtext NOT NULL,
  `jml_benar` int(6) NOT NULL,
  `nilai` decimal(10,2) NOT NULL,
  `nilai_bobot` decimal(10,2) NOT NULL,
  `tgl_mulai` datetime NOT NULL,
  `tgl_selesai` datetime NOT NULL,
  `status` enum('Y','N') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tr_ikut_ujian`
--

INSERT INTO `tr_ikut_ujian` (`id`, `id_tes`, `id_user`, `list_soal`, `list_jawaban`, `jml_benar`, `nilai`, `nilai_bobot`, `tgl_mulai`, `tgl_selesai`, `status`) VALUES
(3, 1, 15, '', '', 0, '0.00', '0.00', '2019-09-26 16:05:06', '2019-09-26 17:45:06', 'Y'),
(4, 5, 15, '36,50,34,35,51', '36:A:N,50:B:N,34:A:N,35:C:N,51:C:N', 2, '40.00', '40.00', '2019-09-26 16:19:05', '2019-09-26 16:49:05', 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ujian_modul`
--

CREATE TABLE IF NOT EXISTS `ujian_modul` (
  `id_ujianmodul` int(11) NOT NULL,
  `id_ujian` int(11) NOT NULL,
  `id_modul` int(11) NOT NULL,
  `jml_soal` varchar(50) NOT NULL,
  `id_soal` varchar(100) NOT NULL,
  `urutan` int(11) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ujian_modul`
--

INSERT INTO `ujian_modul` (`id_ujianmodul`, `id_ujian`, `id_modul`, `jml_soal`, `id_soal`, `urutan`, `keterangan`) VALUES
(5, 5, 1, '3', '34|^|35|^|36', 0, 'hola holaa'),
(6, 5, 2, '2', '50|^|51', 0, 'ahsdhaskdasd');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(9) unsigned NOT NULL,
  `username` varchar(16) DEFAULT NULL,
  `pass` varchar(64) DEFAULT NULL,
  `total_login` int(9) unsigned NOT NULL DEFAULT '0',
  `last_login` datetime DEFAULT NULL,
  `last_activity` datetime DEFAULT NULL,
  `login_attempts` int(9) unsigned DEFAULT '0',
  `last_login_attempt` datetime DEFAULT NULL,
  `remember_time` datetime DEFAULT NULL,
  `remember_exp` text,
  `ip_address` text,
  `is_active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `verification_token` varchar(128) DEFAULT NULL,
  `recovery_token` varchar(128) DEFAULT NULL,
  `unlock_token` varchar(128) DEFAULT NULL,
  `created_by` int(9) unsigned NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(9) unsigned DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_by` int(9) unsigned DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `pass`, `total_login`, `last_login`, `last_activity`, `login_attempts`, `last_login_attempt`, `remember_time`, `remember_exp`, `ip_address`, `is_active`, `verification_token`, `recovery_token`, `unlock_token`, `created_by`, `created_at`, `updated_by`, `updated_at`, `deleted_by`, `deleted_at`, `deleted`) VALUES
(1, 'admin', '1', 22, '2019-09-24 15:55:43', '2019-09-24 15:55:43', 26, '2019-09-24 15:55:43', NULL, NULL, '::1', 1, NULL, NULL, NULL, 0, '2019-09-06 12:45:51', NULL, NULL, NULL, NULL, 0),
(2, 'udin', '1', 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, '2019-09-18 12:25:40', NULL, NULL, NULL, NULL, 0),
(3, 'kurniawan', '1', 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, '2019-09-18 12:26:07', NULL, NULL, NULL, NULL, 0),
(4, 'a', '1', 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, '2019-09-18 17:01:17', NULL, NULL, NULL, NULL, 0),
(5, 'estio', 'a', 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, '2019-09-19 21:59:14', NULL, NULL, NULL, NULL, 0),
(6, 'imam', '1', 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, '2019-09-19 22:27:17', NULL, NULL, NULL, NULL, 0),
(7, 'fina', '1', 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, '2019-09-19 22:32:14', NULL, NULL, NULL, NULL, 0),
(8, 'helmi', '123456', 2, '2019-09-26 15:56:07', '2019-09-26 15:56:07', 2, '2019-09-26 15:56:07', NULL, NULL, '::1', 1, NULL, NULL, NULL, 1, '2019-09-26 15:54:47', NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_profile`
--

CREATE TABLE IF NOT EXISTS `user_profile` (
  `id` int(9) NOT NULL,
  `user_id` int(9) NOT NULL,
  `fullname` text,
  `nin` text COMMENT 'National Identity Number',
  `bdt_id` text,
  `pkh_id` varchar(30) DEFAULT NULL,
  `kks_id` varchar(30) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `address` text,
  `photo` text
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_profile`
--

INSERT INTO `user_profile` (`id`, `user_id`, `fullname`, `nin`, `bdt_id`, `pkh_id`, `kks_id`, `birth_date`, `address`, `photo`) VALUES
(1, 1, 'Administrator', NULL, NULL, NULL, NULL, NULL, NULL, 'file_1562515936.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE IF NOT EXISTS `user_role` (
  `id` int(11) unsigned NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `name`, `level`, `kon_id`, `definition`, `description`, `route`, `created_by`, `created_at`, `updated_by`, `updated_at`, `deleted_by`, `deleted_at`, `deleted`) VALUES
(1, 'Super Admin', 1, 0, 'Super Administrator', NULL, 'admin_side/beranda', 0, '2018-10-27 17:52:08', NULL, NULL, NULL, NULL, 0),
(2, 'Admin Pusat', 2, 0, 'Admin Pusat', NULL, 'admin_side/beranda', 0, '2017-03-06 01:19:26', 2, '2018-10-27 18:55:37', NULL, NULL, 0),
(3, 'Admin Provinsi', 3, 8, 'Admin Provinsi', 'Kepala Bidang', 'admin_side/beranda', 0, '2017-03-06 01:19:26', NULL, NULL, NULL, NULL, 0),
(4, 'Admin Kabupaten/ Kota', 3, 6, 'Admin Kabupaten/ Kota', 'Kepala Bidang', 'admin_side/beranda', 0, '2018-09-02 14:20:07', NULL, NULL, NULL, NULL, 0),
(5, 'Admin Provinsi', 3, 0, 'Admin Provinsi', 'Kepala Bagian', 'admin_side/beranda', 0, '2019-09-19 21:21:10', NULL, NULL, NULL, NULL, 0),
(6, 'Admin Kabupaten/ Kota', 3, 0, 'Admin Kabupaten/ Kota', 'Kepala Bagian', 'admin_side/beranda', 0, '2019-09-19 21:21:59', NULL, NULL, NULL, NULL, 0),
(7, 'Admin Provinsi', 3, 0, 'Admin Provinsi', 'Staff', 'admin_side/beranda', 0, '2019-09-19 21:21:59', NULL, NULL, NULL, NULL, 0),
(8, 'Admin Kabupaten/ Kota', 3, 0, 'Admin Kabupaten/ Kota', 'Staff', 'admin_side/beranda', 0, '2019-09-19 21:22:51', NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_to_role`
--

CREATE TABLE IF NOT EXISTS `user_to_role` (
  `user_id` int(9) unsigned NOT NULL DEFAULT '0',
  `role_id` int(9) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user_to_role`
--

INSERT INTO `user_to_role` (`user_id`, `role_id`) VALUES
(1, 1),
(7, 2),
(2, 3),
(4, 3),
(8, 3),
(3, 6),
(5, 6),
(6, 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`activity_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `company_id` (`company_id`),
  ADD FULLTEXT KEY `activity_type` (`activity_type`);

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id_agenda`);

--
-- Indexes for table `diskusi`
--
ALTER TABLE `diskusi`
  ADD PRIMARY KEY (`id_diskusi`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id_faq`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indexes for table `hubungi_kami`
--
ALTER TABLE `hubungi_kami`
  ADD PRIMARY KEY (`id_hub`);

--
-- Indexes for table `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD PRIMARY KEY (`id_kabupaten`);

--
-- Indexes for table `level_user`
--
ALTER TABLE `level_user`
  ADD PRIMARY KEY (`id_level`);

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`id_materi`);

--
-- Indexes for table `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`id_modul`);

--
-- Indexes for table `m_soal`
--
ALTER TABLE `m_soal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `id_mapel` (`id_mapel`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `wilayah` (`wilayah`);

--
-- Indexes for table `profil_dir`
--
ALTER TABLE `profil_dir`
  ADD PRIMARY KEY (`id_profil`);

--
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`id_provinsi`);

--
-- Indexes for table `regulasi`
--
ALTER TABLE `regulasi`
  ADD PRIMARY KEY (`id_reg`);

--
-- Indexes for table `rekap_kabkota`
--
ALTER TABLE `rekap_kabkota`
  ADD PRIMARY KEY (`id_kabupaten`),
  ADD KEY `id_provinsi` (`id_kabupaten`);

--
-- Indexes for table `rekap_provinsi`
--
ALTER TABLE `rekap_provinsi`
  ADD PRIMARY KEY (`id_provinsi`),
  ADD KEY `id_provinsi` (`id_provinsi`);

--
-- Indexes for table `tr_guru_mapel`
--
ALTER TABLE `tr_guru_mapel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `id_mapel` (`id_mapel`);

--
-- Indexes for table `tr_guru_tes`
--
ALTER TABLE `tr_guru_tes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `id_mapel` (`id_mapel`);

--
-- Indexes for table `tr_ikut_ujian`
--
ALTER TABLE `tr_ikut_ujian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_tes` (`id_tes`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `ujian_modul`
--
ALTER TABLE `ujian_modul`
  ADD PRIMARY KEY (`id_ujianmodul`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username_index` (`username`),
  ADD KEY `is_active_index` (`is_active`);

--
-- Indexes for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `id_pkh` (`pkh_id`),
  ADD KEY `id_kks` (`kks_id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name_index` (`name`);

--
-- Indexes for table `user_to_role`
--
ALTER TABLE `user_to_role`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_id_index` (`role_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `activity_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id_agenda` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `diskusi`
--
ALTER TABLE `diskusi`
  MODIFY `id_diskusi` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id_faq` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `hubungi_kami`
--
ALTER TABLE `hubungi_kami`
  MODIFY `id_hub` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `kabupaten`
--
ALTER TABLE `kabupaten`
  MODIFY `id_kabupaten` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9473;
--
-- AUTO_INCREMENT for table `level_user`
--
ALTER TABLE `level_user`
  MODIFY `id_level` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `materi`
--
ALTER TABLE `materi`
  MODIFY `id_materi` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `modul`
--
ALTER TABLE `modul`
  MODIFY `id_modul` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `m_soal`
--
ALTER TABLE `m_soal`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `profil_dir`
--
ALTER TABLE `profil_dir`
  MODIFY `id_profil` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `provinsi`
--
ALTER TABLE `provinsi`
  MODIFY `id_provinsi` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=96;
--
-- AUTO_INCREMENT for table `regulasi`
--
ALTER TABLE `regulasi`
  MODIFY `id_reg` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tr_guru_mapel`
--
ALTER TABLE `tr_guru_mapel`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `tr_guru_tes`
--
ALTER TABLE `tr_guru_tes`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tr_ikut_ujian`
--
ALTER TABLE `tr_ikut_ujian`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `ujian_modul`
--
ALTER TABLE `ujian_modul`
  MODIFY `id_ujianmodul` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(9) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
