-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 23 Sep 2019 pada 10.43
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
-- Struktur dari tabel `provinsi`
--

CREATE TABLE `provinsi` (
  `id_provinsi` int(5) NOT NULL,
  `nm_provinsi` varchar(20) NOT NULL,
  `regional` text NOT NULL,
  `bujur` varchar(20) NOT NULL,
  `lintang` varchar(20) NOT NULL,
  `kml` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`id_provinsi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `provinsi`
--
ALTER TABLE `provinsi`
  MODIFY `id_provinsi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
