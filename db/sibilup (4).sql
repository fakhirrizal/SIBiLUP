-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 16 Sep 2019 pada 10.41
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

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
(8, 1, 0, 'Login to system', 'Login via web browser', '2019-09-16 14:36:00', '::1', 'PC', 'Windows 10', 'Chrome 76.0.3809', NULL);

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
-- Struktur dari tabel `kabupaten`
--

CREATE TABLE IF NOT EXISTS `kabupaten` (
  `id_kabupaten` int(10) NOT NULL,
  `id_provinsi` int(5) NOT NULL,
  `nm_kabupaten` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9473 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kabupaten`
--

INSERT INTO `kabupaten` (`id_kabupaten`, `id_provinsi`, `nm_kabupaten`) VALUES
(1107, 11, 'KABUPATEN ACEH BARAT'),
(1112, 11, 'KABUPATEN ACEH BARAT DAYA'),
(1108, 11, 'KABUPATEN ACEH BESAR'),
(1116, 11, 'KABUPATEN ACEH JAYA'),
(1103, 11, 'KABUPATEN ACEH SELATAN'),
(1102, 11, 'KABUPATEN ACEH SINGKIL'),
(1114, 11, 'KABUPATEN ACEH TAMIANG'),
(1106, 11, 'KABUPATEN ACEH TENGAH'),
(1104, 11, 'KABUPATEN ACEH TENGGARA'),
(1105, 11, 'KABUPATEN ACEH TIMUR'),
(1111, 11, 'KABUPATEN ACEH UTARA'),
(1307, 13, 'KABUPATEN AGAM'),
(5307, 53, 'KABUPATEN ALOR'),
(1208, 12, 'KABUPATEN ASAHAN'),
(9415, 94, 'KABUPATEN ASMAT'),
(5103, 51, 'KABUPATEN BADUNG'),
(6311, 63, 'KABUPATEN BALANGAN'),
(3204, 32, 'KABUPATEN BANDUNG'),
(3217, 32, 'KABUPATEN BANDUNG BARAT'),
(7202, 72, 'KABUPATEN BANGGAI'),
(7201, 72, 'KABUPATEN BANGGAI KEPULAUAN'),
(7211, 72, 'KABUPATEN BANGGAI LAUT'),
(1901, 19, 'KABUPATEN BANGKA'),
(1903, 19, 'KABUPATEN BANGKA BARAT'),
(1905, 19, 'KABUPATEN BANGKA SELATAN'),
(1904, 19, 'KABUPATEN BANGKA TENGAH'),
(3526, 35, 'KABUPATEN BANGKALAN'),
(5106, 51, 'KABUPATEN BANGLI'),
(6303, 63, 'KABUPATEN BANJAR'),
(3304, 33, 'KABUPATEN BANJARNEGARA'),
(7303, 73, 'KABUPATEN BANTAENG'),
(3402, 34, 'KABUPATEN BANTUL'),
(1607, 16, 'KABUPATEN BANYU ASIN'),
(3302, 33, 'KABUPATEN BANYUMAS'),
(3510, 35, 'KABUPATEN BANYUWANGI'),
(6304, 63, 'KABUPATEN BARITO KUALA'),
(6204, 62, 'KABUPATEN BARITO SELATAN'),
(6212, 62, 'KABUPATEN BARITO TIMUR'),
(6205, 62, 'KABUPATEN BARITO UTARA'),
(7310, 73, 'KABUPATEN BARRU'),
(3325, 33, 'KABUPATEN BATANG'),
(1504, 15, 'KABUPATEN BATANG HARI'),
(1219, 12, 'KABUPATEN BATU BARA'),
(3216, 32, 'KABUPATEN BEKASI'),
(1902, 19, 'KABUPATEN BELITUNG'),
(1906, 19, 'KABUPATEN BELITUNG TIMUR'),
(5306, 53, 'KABUPATEN BELU'),
(1117, 11, 'KABUPATEN BENER MERIAH'),
(1408, 14, 'KABUPATEN BENGKALIS'),
(6102, 61, 'KABUPATEN BENGKAYANG'),
(1701, 17, 'KABUPATEN BENGKULU SELATAN'),
(1709, 17, 'KABUPATEN BENGKULU TENGAH'),
(1703, 17, 'KABUPATEN BENGKULU UTARA'),
(6405, 64, 'KABUPATEN BERAU'),
(9409, 94, 'KABUPATEN BIAK NUMFOR'),
(5206, 52, 'KABUPATEN BIMA'),
(2102, 21, 'KABUPATEN BINTAN'),
(1110, 11, 'KABUPATEN BIREUEN'),
(3505, 35, 'KABUPATEN BLITAR'),
(3316, 33, 'KABUPATEN BLORA'),
(7501, 75, 'KABUPATEN BOALEMO'),
(3201, 32, 'KABUPATEN BOGOR'),
(3522, 35, 'KABUPATEN BOJONEGORO'),
(7101, 71, 'KABUPATEN BOLAANG MONGONDOW'),
(7110, 71, 'KABUPATEN BOLAANG MONGONDOW SELATAN'),
(7111, 71, 'KABUPATEN BOLAANG MONGONDOW TIMUR'),
(7107, 71, 'KABUPATEN BOLAANG MONGONDOW UTARA'),
(7406, 74, 'KABUPATEN BOMBANA'),
(3511, 35, 'KABUPATEN BONDOWOSO'),
(7311, 73, 'KABUPATEN BONE'),
(7504, 75, 'KABUPATEN BONE BOLANGO'),
(9413, 94, 'KABUPATEN BOVEN DIGOEL'),
(3309, 33, 'KABUPATEN BOYOLALI'),
(3329, 33, 'KABUPATEN BREBES'),
(5108, 51, 'KABUPATEN BULELENG'),
(7302, 73, 'KABUPATEN BULUKUMBA'),
(6502, 65, 'KABUPATEN BULUNGAN'),
(1509, 15, 'KABUPATEN BUNGO'),
(7207, 72, 'KABUPATEN BUOL'),
(8104, 81, 'KABUPATEN BURU'),
(8109, 81, 'KABUPATEN BURU SELATAN'),
(7401, 74, 'KABUPATEN BUTON'),
(7415, 74, 'KABUPATEN BUTON SELATAN'),
(7414, 74, 'KABUPATEN BUTON TENGAH'),
(7409, 74, 'KABUPATEN BUTON UTARA'),
(3207, 32, 'KABUPATEN CIAMIS'),
(3203, 32, 'KABUPATEN CIANJUR'),
(3301, 33, 'KABUPATEN CILACAP'),
(3209, 32, 'KABUPATEN CIREBON'),
(1210, 12, 'KABUPATEN DAIRI'),
(9436, 94, 'KABUPATEN DEIYAI'),
(1212, 12, 'KABUPATEN DELI SERDANG'),
(3321, 33, 'KABUPATEN DEMAK'),
(1311, 13, 'KABUPATEN DHARMASRAYA'),
(9434, 94, 'KABUPATEN DOGIYAI'),
(5205, 52, 'KABUPATEN DOMPU'),
(7205, 72, 'KABUPATEN DONGGALA'),
(1611, 16, 'KABUPATEN EMPAT LAWANG'),
(5311, 53, 'KABUPATEN ENDE'),
(7316, 73, 'KABUPATEN ENREKANG'),
(9101, 91, 'KABUPATEN FAKFAK'),
(5309, 53, 'KABUPATEN FLORES TIMUR'),
(3205, 32, 'KABUPATEN GARUT'),
(1113, 11, 'KABUPATEN GAYO LUES'),
(5104, 51, 'KABUPATEN GIANYAR'),
(7502, 75, 'KABUPATEN GORONTALO'),
(7505, 75, 'KABUPATEN GORONTALO UTARA'),
(7306, 73, 'KABUPATEN GOWA'),
(3525, 35, 'KABUPATEN GRESIK'),
(3315, 33, 'KABUPATEN GROBOGAN'),
(3403, 34, 'KABUPATEN GUNUNG KIDUL'),
(6211, 62, 'KABUPATEN GUNUNG MAS'),
(8201, 82, 'KABUPATEN HALMAHERA BARAT'),
(8204, 82, 'KABUPATEN HALMAHERA SELATAN'),
(8202, 82, 'KABUPATEN HALMAHERA TENGAH'),
(8206, 82, 'KABUPATEN HALMAHERA TIMUR'),
(8205, 82, 'KABUPATEN HALMAHERA UTARA'),
(6306, 63, 'KABUPATEN HULU SUNGAI SELATAN'),
(6307, 63, 'KABUPATEN HULU SUNGAI TENGAH'),
(6308, 63, 'KABUPATEN HULU SUNGAI UTARA'),
(1215, 12, 'KABUPATEN HUMBANG HASUNDUTAN'),
(1403, 14, 'KABUPATEN INDRAGIRI HILIR'),
(1402, 14, 'KABUPATEN INDRAGIRI HULU'),
(3212, 32, 'KABUPATEN INDRAMAYU'),
(9435, 94, 'KABUPATEN INTAN JAYA'),
(9403, 94, 'KABUPATEN JAYAPURA'),
(9402, 94, 'KABUPATEN JAYAWIJAYA'),
(3509, 35, 'KABUPATEN JEMBER'),
(5101, 51, 'KABUPATEN JEMBRANA'),
(7304, 73, 'KABUPATEN JENEPONTO'),
(3320, 33, 'KABUPATEN JEPARA'),
(3517, 35, 'KABUPATEN JOMBANG'),
(9102, 91, 'KABUPATEN KAIMANA'),
(1406, 14, 'KABUPATEN KAMPAR'),
(6203, 62, 'KABUPATEN KAPUAS'),
(6108, 61, 'KABUPATEN KAPUAS HULU'),
(5107, 51, 'KABUPATEN KARANG ASEM'),
(3313, 33, 'KABUPATEN KARANGANYAR'),
(3215, 32, 'KABUPATEN KARAWANG'),
(2101, 21, 'KABUPATEN KARIMUN'),
(1211, 12, 'KABUPATEN KARO'),
(6209, 62, 'KABUPATEN KATINGAN'),
(1704, 17, 'KABUPATEN KAUR'),
(6111, 61, 'KABUPATEN KAYONG UTARA'),
(3305, 33, 'KABUPATEN KEBUMEN'),
(3506, 35, 'KABUPATEN KEDIRI'),
(9420, 94, 'KABUPATEN KEEROM'),
(3324, 33, 'KABUPATEN KENDAL'),
(1708, 17, 'KABUPATEN KEPAHIANG'),
(2105, 21, 'KABUPATEN KEPULAUAN ANAMBAS'),
(8105, 81, 'KABUPATEN KEPULAUAN ARU'),
(1301, 13, 'KABUPATEN KEPULAUAN MENTAWAI'),
(1410, 14, 'KABUPATEN KEPULAUAN MERANTI'),
(7103, 71, 'KABUPATEN KEPULAUAN SANGIHE'),
(7301, 73, 'KABUPATEN KEPULAUAN SELAYAR'),
(3101, 31, 'KABUPATEN KEPULAUAN SERIBU'),
(8203, 82, 'KABUPATEN KEPULAUAN SULA'),
(7104, 71, 'KABUPATEN KEPULAUAN TALAUD'),
(9408, 94, 'KABUPATEN KEPULAUAN YAPEN'),
(1501, 15, 'KABUPATEN KERINCI'),
(6106, 61, 'KABUPATEN KETAPANG'),
(3310, 33, 'KABUPATEN KLATEN'),
(5105, 51, 'KABUPATEN KLUNGKUNG'),
(7404, 74, 'KABUPATEN KOLAKA'),
(7411, 74, 'KABUPATEN KOLAKA TIMUR'),
(7408, 74, 'KABUPATEN KOLAKA UTARA'),
(7403, 74, 'KABUPATEN KONAWE'),
(7412, 74, 'KABUPATEN KONAWE KEPULAUAN'),
(7405, 74, 'KABUPATEN KONAWE SELATAN'),
(7410, 74, 'KABUPATEN KONAWE UTARA'),
(6302, 63, 'KABUPATEN KOTA BARU'),
(6201, 62, 'KABUPATEN KOTAWARINGIN BARAT'),
(6202, 62, 'KABUPATEN KOTAWARINGIN TIMUR'),
(1401, 14, 'KABUPATEN KUANTAN SINGINGI'),
(6112, 61, 'KABUPATEN KUBU RAYA'),
(3319, 33, 'KABUPATEN KUDUS'),
(3401, 34, 'KABUPATEN KULON PROGO'),
(3208, 32, 'KABUPATEN KUNINGAN'),
(5303, 53, 'KABUPATEN KUPANG'),
(6402, 64, 'KABUPATEN KUTAI BARAT'),
(6403, 64, 'KABUPATEN KUTAI KARTANEGARA'),
(6404, 64, 'KABUPATEN KUTAI TIMUR'),
(1207, 12, 'KABUPATEN LABUHAN BATU'),
(1222, 12, 'KABUPATEN LABUHAN BATU SELATAN'),
(1223, 12, 'KABUPATEN LABUHAN BATU UTARA'),
(1604, 16, 'KABUPATEN LAHAT'),
(6207, 62, 'KABUPATEN LAMANDAU'),
(3524, 35, 'KABUPATEN LAMONGAN'),
(1801, 18, 'KABUPATEN LAMPUNG BARAT'),
(1803, 18, 'KABUPATEN LAMPUNG SELATAN'),
(1805, 18, 'KABUPATEN LAMPUNG TENGAH'),
(1804, 18, 'KABUPATEN LAMPUNG TIMUR'),
(1806, 18, 'KABUPATEN LAMPUNG UTARA'),
(6103, 61, 'KABUPATEN LANDAK'),
(1213, 12, 'KABUPATEN LANGKAT'),
(9430, 94, 'KABUPATEN LANNY JAYA'),
(3602, 36, 'KABUPATEN LEBAK'),
(1707, 17, 'KABUPATEN LEBONG'),
(5308, 53, 'KABUPATEN LEMBATA'),
(1308, 13, 'KABUPATEN LIMA PULUH KOTA'),
(2104, 21, 'KABUPATEN LINGGA'),
(5201, 52, 'KABUPATEN LOMBOK BARAT'),
(5202, 52, 'KABUPATEN LOMBOK TENGAH'),
(5203, 52, 'KABUPATEN LOMBOK TIMUR'),
(5208, 52, 'KABUPATEN LOMBOK UTARA'),
(3508, 35, 'KABUPATEN LUMAJANG'),
(7317, 73, 'KABUPATEN LUWU'),
(7325, 73, 'KABUPATEN LUWU TIMUR'),
(7322, 73, 'KABUPATEN LUWU UTARA'),
(3519, 35, 'KABUPATEN MADIUN'),
(3308, 33, 'KABUPATEN MAGELANG'),
(3520, 35, 'KABUPATEN MAGETAN'),
(6411, 64, 'KABUPATEN MAHAKAM HULU'),
(3210, 32, 'KABUPATEN MAJALENGKA'),
(7601, 76, 'KABUPATEN MAJENE'),
(5321, 53, 'KABUPATEN MALAKA'),
(3507, 35, 'KABUPATEN MALANG'),
(6501, 65, 'KABUPATEN MALINAU'),
(8108, 81, 'KABUPATEN MALUKU BARAT DAYA'),
(8103, 81, 'KABUPATEN MALUKU TENGAH'),
(8102, 81, 'KABUPATEN MALUKU TENGGARA'),
(8101, 81, 'KABUPATEN MALUKU TENGGARA BARAT'),
(7603, 76, 'KABUPATEN MAMASA'),
(9428, 94, 'KABUPATEN MAMBERAMO RAYA'),
(9431, 94, 'KABUPATEN MAMBERAMO TENGAH'),
(7604, 76, 'KABUPATEN MAMUJU'),
(7606, 76, 'KABUPATEN MAMUJU TENGAH'),
(7605, 76, 'KABUPATEN MAMUJU UTARA'),
(1202, 12, 'KABUPATEN MANDAILING NATAL'),
(5313, 53, 'KABUPATEN MANGGARAI'),
(5315, 53, 'KABUPATEN MANGGARAI BARAT'),
(5319, 53, 'KABUPATEN MANGGARAI TIMUR'),
(9105, 91, 'KABUPATEN MANOKWARI'),
(9111, 91, 'KABUPATEN MANOKWARI SELATAN'),
(9414, 94, 'KABUPATEN MAPPI'),
(7308, 73, 'KABUPATEN MAROS'),
(9110, 91, 'KABUPATEN MAYBRAT'),
(6110, 61, 'KABUPATEN MELAWI'),
(6104, 61, 'KABUPATEN MEMPAWAH'),
(1502, 15, 'KABUPATEN MERANGIN'),
(9401, 94, 'KABUPATEN MERAUKE'),
(1811, 18, 'KABUPATEN MESUJI'),
(9412, 94, 'KABUPATEN MIMIKA'),
(7102, 71, 'KABUPATEN MINAHASA'),
(7105, 71, 'KABUPATEN MINAHASA SELATAN'),
(7109, 71, 'KABUPATEN MINAHASA TENGGARA'),
(7106, 71, 'KABUPATEN MINAHASA UTARA'),
(3516, 35, 'KABUPATEN MOJOKERTO'),
(7203, 72, 'KABUPATEN MOROWALI'),
(7212, 72, 'KABUPATEN MOROWALI UTARA'),
(1603, 16, 'KABUPATEN MUARA ENIM'),
(1505, 15, 'KABUPATEN MUARO JAMBI'),
(1706, 17, 'KABUPATEN MUKOMUKO'),
(7402, 74, 'KABUPATEN MUNA'),
(7413, 74, 'KABUPATEN MUNA BARAT'),
(6213, 62, 'KABUPATEN MURUNG RAYA'),
(1606, 16, 'KABUPATEN MUSI BANYUASIN'),
(1605, 16, 'KABUPATEN MUSI RAWAS'),
(1613, 16, 'KABUPATEN MUSI RAWAS UTARA'),
(9404, 94, 'KABUPATEN NABIRE'),
(1115, 11, 'KABUPATEN NAGAN RAYA'),
(5318, 53, 'KABUPATEN NAGEKEO'),
(2103, 21, 'KABUPATEN NATUNA'),
(9429, 94, 'KABUPATEN NDUGA'),
(5312, 53, 'KABUPATEN NGADA'),
(3518, 35, 'KABUPATEN NGANJUK'),
(3521, 35, 'KABUPATEN NGAWI'),
(1201, 12, 'KABUPATEN NIAS'),
(1225, 12, 'KABUPATEN NIAS BARAT'),
(1214, 12, 'KABUPATEN NIAS SELATAN'),
(1224, 12, 'KABUPATEN NIAS UTARA'),
(6504, 65, 'KABUPATEN NUNUKAN'),
(1610, 16, 'KABUPATEN OGAN ILIR'),
(1602, 16, 'KABUPATEN OGAN KOMERING ILIR'),
(1601, 16, 'KABUPATEN OGAN KOMERING ULU'),
(1608, 16, 'KABUPATEN OGAN KOMERING ULU SELATAN'),
(1609, 16, 'KABUPATEN OGAN KOMERING ULU TIMUR'),
(3501, 35, 'KABUPATEN PACITAN'),
(1221, 12, 'KABUPATEN PADANG LAWAS'),
(1220, 12, 'KABUPATEN PADANG LAWAS UTARA'),
(1306, 13, 'KABUPATEN PADANG PARIAMAN'),
(1216, 12, 'KABUPATEN PAKPAK BHARAT'),
(3528, 35, 'KABUPATEN PAMEKASAN'),
(3601, 36, 'KABUPATEN PANDEGLANG'),
(3218, 32, 'KABUPATEN PANGANDARAN'),
(7309, 73, 'KABUPATEN PANGKAJENE DAN KEPULAUAN'),
(9410, 94, 'KABUPATEN PANIAI'),
(7208, 72, 'KABUPATEN PARIGI MOUTONG'),
(1309, 13, 'KABUPATEN PASAMAN'),
(1312, 13, 'KABUPATEN PASAMAN BARAT'),
(6401, 64, 'KABUPATEN PASER'),
(3514, 35, 'KABUPATEN PASURUAN'),
(3318, 33, 'KABUPATEN PATI'),
(9112, 91, 'KABUPATEN PEGUNUNGAN ARFAK'),
(9417, 94, 'KABUPATEN PEGUNUNGAN BINTANG'),
(3326, 33, 'KABUPATEN PEKALONGAN'),
(1404, 14, 'KABUPATEN PELALAWAN'),
(3327, 33, 'KABUPATEN PEMALANG'),
(6409, 64, 'KABUPATEN PENAJAM PASER UTARA'),
(1612, 16, 'KABUPATEN PENUKAL ABAB LEMATANG ILIR'),
(1809, 18, 'KABUPATEN PESAWARAN'),
(1813, 18, 'KABUPATEN PESISIR BARAT'),
(1302, 13, 'KABUPATEN PESISIR SELATAN'),
(1109, 11, 'KABUPATEN PIDIE'),
(1118, 11, 'KABUPATEN PIDIE JAYA'),
(7315, 73, 'KABUPATEN PINRANG'),
(7503, 75, 'KABUPATEN POHUWATO'),
(7602, 76, 'KABUPATEN POLEWALI MANDAR'),
(3502, 35, 'KABUPATEN PONOROGO'),
(7204, 72, 'KABUPATEN POSO'),
(1810, 18, 'KABUPATEN PRINGSEWU'),
(3513, 35, 'KABUPATEN PROBOLINGGO'),
(6210, 62, 'KABUPATEN PULANG PISAU'),
(8207, 82, 'KABUPATEN PULAU MOROTAI'),
(8208, 82, 'KABUPATEN PULAU TALIABU'),
(9433, 94, 'KABUPATEN PUNCAK'),
(9411, 94, 'KABUPATEN PUNCAK JAYA'),
(3303, 33, 'KABUPATEN PURBALINGGA'),
(3214, 32, 'KABUPATEN PURWAKARTA'),
(3306, 33, 'KABUPATEN PURWOREJO'),
(9108, 91, 'KABUPATEN RAJA AMPAT'),
(1702, 17, 'KABUPATEN REJANG LEBONG'),
(3317, 33, 'KABUPATEN REMBANG'),
(1409, 14, 'KABUPATEN ROKAN HILIR'),
(1407, 14, 'KABUPATEN ROKAN HULU'),
(5314, 53, 'KABUPATEN ROTE NDAO'),
(1405, 14, 'KABUPATEN S I A K'),
(5320, 53, 'KABUPATEN SABU RAIJUA'),
(6101, 61, 'KABUPATEN SAMBAS'),
(1217, 12, 'KABUPATEN SAMOSIR'),
(3527, 35, 'KABUPATEN SAMPANG'),
(6105, 61, 'KABUPATEN SANGGAU'),
(9419, 94, 'KABUPATEN SARMI'),
(1503, 15, 'KABUPATEN SAROLANGUN'),
(6109, 61, 'KABUPATEN SEKADAU'),
(1705, 17, 'KABUPATEN SELUMA'),
(3322, 33, 'KABUPATEN SEMARANG'),
(8106, 81, 'KABUPATEN SERAM BAGIAN BARAT'),
(8107, 81, 'KABUPATEN SERAM BAGIAN TIMUR'),
(3604, 36, 'KABUPATEN SERANG'),
(1218, 12, 'KABUPATEN SERDANG BEDAGAI'),
(6208, 62, 'KABUPATEN SERUYAN'),
(7108, 71, 'KABUPATEN SIAU TAGULANDANG BIARO'),
(7314, 73, 'KABUPATEN SIDENRENG RAPPANG'),
(3515, 35, 'KABUPATEN SIDOARJO'),
(7210, 72, 'KABUPATEN SIGI'),
(1304, 13, 'KABUPATEN SIJUNJUNG'),
(5310, 53, 'KABUPATEN SIKKA'),
(1209, 12, 'KABUPATEN SIMALUNGUN'),
(1101, 11, 'KABUPATEN SIMEULUE'),
(7307, 73, 'KABUPATEN SINJAI'),
(6107, 61, 'KABUPATEN SINTANG'),
(3512, 35, 'KABUPATEN SITUBONDO'),
(3404, 34, 'KABUPATEN SLEMAN'),
(1303, 13, 'KABUPATEN SOLOK'),
(1310, 13, 'KABUPATEN SOLOK SELATAN'),
(7312, 73, 'KABUPATEN SOPPENG'),
(9107, 91, 'KABUPATEN SORONG'),
(9106, 91, 'KABUPATEN SORONG SELATAN'),
(3314, 33, 'KABUPATEN SRAGEN'),
(3213, 32, 'KABUPATEN SUBANG'),
(3202, 32, 'KABUPATEN SUKABUMI'),
(6206, 62, 'KABUPATEN SUKAMARA'),
(3311, 33, 'KABUPATEN SUKOHARJO'),
(5301, 53, 'KABUPATEN SUMBA BARAT'),
(5317, 53, 'KABUPATEN SUMBA BARAT DAYA'),
(5316, 53, 'KABUPATEN SUMBA TENGAH'),
(5302, 53, 'KABUPATEN SUMBA TIMUR'),
(5204, 52, 'KABUPATEN SUMBAWA'),
(5207, 52, 'KABUPATEN SUMBAWA BARAT'),
(3211, 32, 'KABUPATEN SUMEDANG'),
(3529, 35, 'KABUPATEN SUMENEP'),
(9427, 94, 'KABUPATEN SUPIORI'),
(6309, 63, 'KABUPATEN TABALONG'),
(5102, 51, 'KABUPATEN TABANAN'),
(7305, 73, 'KABUPATEN TAKALAR'),
(9109, 91, 'KABUPATEN TAMBRAUW'),
(6503, 65, 'KABUPATEN TANA TIDUNG'),
(7318, 73, 'KABUPATEN TANA TORAJA'),
(6310, 63, 'KABUPATEN TANAH BUMBU'),
(1305, 13, 'KABUPATEN TANAH DATAR'),
(6301, 63, 'KABUPATEN TANAH LAUT'),
(3603, 36, 'KABUPATEN TANGERANG'),
(1802, 18, 'KABUPATEN TANGGAMUS'),
(1507, 15, 'KABUPATEN TANJUNG JABUNG BARAT'),
(1506, 15, 'KABUPATEN TANJUNG JABUNG TIMUR'),
(1203, 12, 'KABUPATEN TAPANULI SELATAN'),
(1204, 12, 'KABUPATEN TAPANULI TENGAH'),
(1205, 12, 'KABUPATEN TAPANULI UTARA'),
(6305, 63, 'KABUPATEN TAPIN'),
(3206, 32, 'KABUPATEN TASIKMALAYA'),
(1508, 15, 'KABUPATEN TEBO'),
(3328, 33, 'KABUPATEN TEGAL'),
(9104, 91, 'KABUPATEN TELUK BINTUNI'),
(9103, 91, 'KABUPATEN TELUK WONDAMA'),
(3323, 33, 'KABUPATEN TEMANGGUNG'),
(5304, 53, 'KABUPATEN TIMOR TENGAH SELATAN'),
(5305, 53, 'KABUPATEN TIMOR TENGAH UTARA'),
(1206, 12, 'KABUPATEN TOBA SAMOSIR'),
(7209, 72, 'KABUPATEN TOJO UNA-UNA'),
(9418, 94, 'KABUPATEN TOLIKARA'),
(7206, 72, 'KABUPATEN TOLI-TOLI'),
(7326, 73, 'KABUPATEN TORAJA UTARA'),
(3503, 35, 'KABUPATEN TRENGGALEK'),
(3523, 35, 'KABUPATEN TUBAN'),
(1812, 18, 'KABUPATEN TULANG BAWANG BARAT'),
(1808, 18, 'KABUPATEN TULANGBAWANG'),
(3504, 35, 'KABUPATEN TULUNGAGUNG'),
(7313, 73, 'KABUPATEN WAJO'),
(7407, 74, 'KABUPATEN WAKATOBI'),
(9426, 94, 'KABUPATEN WAROPEN'),
(1807, 18, 'KABUPATEN WAY KANAN'),
(3312, 33, 'KABUPATEN WONOGIRI'),
(3307, 33, 'KABUPATEN WONOSOBO'),
(9416, 94, 'KABUPATEN YAHUKIMO'),
(9432, 94, 'KABUPATEN YALIMO'),
(8171, 81, 'KOTA AMBON'),
(2171, 21, 'KOTA B A T A M'),
(6471, 64, 'KOTA BALIKPAPAN'),
(1171, 11, 'KOTA BANDA ACEH'),
(1871, 18, 'KOTA BANDAR LAMPUNG'),
(3273, 32, 'KOTA BANDUNG'),
(3279, 32, 'KOTA BANJAR'),
(6372, 63, 'KOTA BANJAR BARU'),
(6371, 63, 'KOTA BANJARMASIN'),
(3579, 35, 'KOTA BATU'),
(7472, 74, 'KOTA BAUBAU'),
(3275, 32, 'KOTA BEKASI'),
(1771, 17, 'KOTA BENGKULU'),
(5272, 52, 'KOTA BIMA'),
(1276, 12, 'KOTA BINJAI'),
(7172, 71, 'KOTA BITUNG'),
(3572, 35, 'KOTA BLITAR'),
(3271, 32, 'KOTA BOGOR'),
(6474, 64, 'KOTA BONTANG'),
(1375, 13, 'KOTA BUKITTINGGI'),
(3672, 36, 'KOTA CILEGON'),
(3277, 32, 'KOTA CIMAHI'),
(3274, 32, 'KOTA CIREBON'),
(1473, 14, 'KOTA D U M A I'),
(5171, 51, 'KOTA DENPASAR'),
(3276, 32, 'KOTA DEPOK'),
(7571, 75, 'KOTA GORONTALO'),
(1278, 12, 'KOTA GUNUNGSITOLI'),
(3174, 31, 'KOTA JAKARTA BARAT'),
(3173, 31, 'KOTA JAKARTA PUSAT'),
(3171, 31, 'KOTA JAKARTA SELATAN'),
(3172, 31, 'KOTA JAKARTA TIMUR'),
(3175, 31, 'KOTA JAKARTA UTARA'),
(1571, 15, 'KOTA JAMBI'),
(9471, 94, 'KOTA JAYAPURA'),
(3571, 35, 'KOTA KEDIRI'),
(7471, 74, 'KOTA KENDARI'),
(7174, 71, 'KOTA KOTAMOBAGU'),
(5371, 53, 'KOTA KUPANG'),
(1173, 11, 'KOTA LANGSA'),
(1174, 11, 'KOTA LHOKSEUMAWE'),
(1674, 16, 'KOTA LUBUKLINGGAU'),
(3577, 35, 'KOTA MADIUN'),
(3371, 33, 'KOTA MAGELANG'),
(7371, 73, 'KOTA MAKASSAR'),
(3573, 35, 'KOTA MALANG'),
(7171, 71, 'KOTA MANADO'),
(5271, 52, 'KOTA MATARAM'),
(1275, 12, 'KOTA MEDAN'),
(1872, 18, 'KOTA METRO'),
(3576, 35, 'KOTA MOJOKERTO'),
(1371, 13, 'KOTA PADANG'),
(1374, 13, 'KOTA PADANG PANJANG'),
(1277, 12, 'KOTA PADANGSIDIMPUAN'),
(1673, 16, 'KOTA PAGAR ALAM'),
(6271, 62, 'KOTA PALANGKA RAYA'),
(1671, 16, 'KOTA PALEMBANG'),
(7373, 73, 'KOTA PALOPO'),
(7271, 72, 'KOTA PALU'),
(1971, 19, 'KOTA PANGKAL PINANG'),
(7372, 73, 'KOTA PAREPARE'),
(1377, 13, 'KOTA PARIAMAN'),
(3575, 35, 'KOTA PASURUAN'),
(1376, 13, 'KOTA PAYAKUMBUH'),
(3375, 33, 'KOTA PEKALONGAN'),
(1471, 14, 'KOTA PEKANBARU'),
(1273, 12, 'KOTA PEMATANG SIANTAR'),
(6171, 61, 'KOTA PONTIANAK'),
(1672, 16, 'KOTA PRABUMULIH'),
(3574, 35, 'KOTA PROBOLINGGO'),
(1172, 11, 'KOTA SABANG'),
(3373, 33, 'KOTA SALATIGA'),
(6472, 64, 'KOTA SAMARINDA'),
(1373, 13, 'KOTA SAWAH LUNTO'),
(3374, 33, 'KOTA SEMARANG'),
(3673, 36, 'KOTA SERANG'),
(1271, 12, 'KOTA SIBOLGA'),
(6172, 61, 'KOTA SINGKAWANG'),
(1372, 13, 'KOTA SOLOK'),
(9171, 91, 'KOTA SORONG'),
(1175, 11, 'KOTA SUBULUSSALAM'),
(3272, 32, 'KOTA SUKABUMI'),
(1572, 15, 'KOTA SUNGAI PENUH'),
(3578, 35, 'KOTA SURABAYA'),
(3372, 33, 'KOTA SURAKARTA'),
(3671, 36, 'KOTA TANGERANG'),
(3674, 36, 'KOTA TANGERANG SELATAN'),
(1272, 12, 'KOTA TANJUNG BALAI'),
(2172, 21, 'KOTA TANJUNG PINANG'),
(6571, 65, 'KOTA TARAKAN'),
(3278, 32, 'KOTA TASIKMALAYA'),
(1274, 12, 'KOTA TEBING TINGGI'),
(3376, 33, 'KOTA TEGAL'),
(8271, 82, 'KOTA TERNATE'),
(8272, 82, 'KOTA TIDORE KEPULAUAN'),
(7173, 71, 'KOTA TOMOHON'),
(8172, 81, 'KOTA TUAL'),
(3471, 34, 'KOTA YOGYAKARTA');

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
(4, 'Admin Daerah', 2, '2019-09-16 04:14:02', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `materi`
--

CREATE TABLE IF NOT EXISTS `materi` (
  `id_materi` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `file` varchar(200) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `keterangan` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `modul`
--

INSERT INTO `modul` (`id_modul`, `judul`, `file`, `keterangan`) VALUES
(1, 'Modul A', '', ''),
(2, 'Modul B', '', '');

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
(34, 3, 1, 1, '', '', '<table border="1" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<thead>\r\n		<tr>\r\n			<th scope="col">Teks Fabel I</th>\r\n			<th scope="col">Teks Fabel II</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Dengan bangganya lucky berlari-lari kecil sambil menyeret-nyeret balok kayu yang dikalungkan majikannya, untuk&nbsp;menarik perhatian orang lain. Tetapi tak ada satu pun orang yang senang melihat anjing itu. Balok itu sebenarnya dikalungkan majikannya agar orang mengetahui kehadiran lucky, dan bisa menghindarinya. Seekor anjing lain yang melihatnya kemudian berkata &quot;Kamu seharusnya lebih bijaksana dan berdiam diri di rumah agar orang tidak melihat balok yang dikalungkan di lehermu. Apakah kamu senang bahwa semua orang tahu betapa nakal dan jahatnya kamu?&quot;</td>\r\n			<td>Di sebuah hutan, musim kemarau, burung-burung dan hewan-hewan lain sangat sulit untuk mendapatkan air.&nbsp;Namun ada seekor burung perkutut yang menemukan kendi tua yang berisi sedikit air. Kendi tersebut memiliki bentuk yang tinggi dan juga sempit, sehingga burung tersebut tidak bisa menjangkau air di dalam kendi tersebut. Burung perkutut tersebut tetap mencoba untuk meminum air yang ada di dalam kendi, tetapi tetap saja tidak bisa. Burung itu hampir putus asa hingga munculah sebuah ide.. Burung tersebut kemudian mengambil kerikilkerikil yang ada di samping kendi dan menjatuhkannya ke dalam kendi satu persatu. Ide yang cemerlang itu membuat air lama kelamaan naik sehingga burung perkutut bisa meminum air tersebut</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Perbedaan pola pengembangan kedua kutipan fabel tersebut diawali dengan ....</p>\r\n', '#####<table border="1" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<thead>\r\n		<tr>\r\n			<th scope="col">Fabel I</th>\r\n			<th scope="col">Fabel II</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>menampilkan lokasi cerita</td>\r\n			<td>memberikan garis besar cerita</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', '#####<table border="1" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<thead>\r\n		<tr>\r\n			<th scope="col">Fabel I</th>\r\n			<th scope="col">Fabel II</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>memberikan garis besar cerita</td>\r\n			<td>memulai dengan aksi</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '#####<table border="1" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<thead>\r\n		<tr>\r\n			<th scope="col">Fabel I</th>\r\n			<th scope="col">Fabel II</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>memunculkan masalah</td>\r\n			<td>mengisyaratkan bahaya</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '#####<table border="1" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<thead>\r\n		<tr>\r\n			<th scope="col">Fabel I</th>\r\n			<th scope="col">Fabel II</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>memulai dengan aksi</td>\r\n			<td>menampilkan lokasi cerita</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '#####', 'D', '2017-01-25 10:13:02', 2, 5),
(35, 3, 1, 1, '', '', '<p>&ldquo;Nada, minggu depan kita harus pindah ke Jogjakarta. Ayah dipindahtugaskan di sana.&rdquo; Bagaikan petir di siang bolong menyambar Nada yang seketika itu langsung diam mematung. &ldquo;Kenapa mendadak, Bunda? Nada senang tinggal di sini. Apa Nada tidak bisa tetap tinggal di sini? Sekolah Nada gimana?&rdquo; &ldquo;Tidak bisa, sayang. Kamu mau tinggal sama siapa di sini? Masalah sekolah, semua sudah diurus Ayah. Kamu hanya tinggal mengemasi barang-barangmu.&rdquo; Nada terdiam. Tak mungkin mampu ia membantah. Minggu depan ia harus meninggalkan tempat ini. Tepat di hari ulang tahun Dio yang ke-18. Terasa berat untuknya meninggalkan tempat ini. Terlalu banyak kenangan yang terukir. Semakin terasa berat ketika harus meninggalkan Dio.</p>\r\n\r\n<p>Akibat konflik yang terjadi pada kutipan cerpen tersebut adalah...</p>\r\n', '#####<p>Nada diam mematung selama satu minggu</p>\n', '#####<p>Nada harus segera mengemasi barang-barang miliknya</p>\r\n', '#####<p>Meskipun merasa berat, minggu depan Nada harus ikut pindah ke Yogyakarta.</p>\r\n', '#####<p>Ayah dan ibu Nada harus mencari tempat tinggal dan sekolah baru untuk Nada</p>\r\n', '#####', 'C', '2017-01-25 10:13:02', 0, 7),
(36, 3, 1, 1, '', '', '<p>&ldquo;Nada, minggu depan kita harus pindah ke Jogjakarta. Ayah dipindahtugaskan di sana.&rdquo; Bagaikan petir di siang bolong menyambar Nada yang seketika itu langsung diam mematung. &ldquo;Kenapa mendadak, Bunda? Nada senang tinggal di sini. Apa Nada tidak bisa tetap tinggal di sini? Sekolah Nada gimana?&rdquo; &ldquo;Tidak bisa, sayang. Kamu mau tinggal sama siapa di sini? Masalah sekolah, semua sudah diurus Ayah. Kamu hanya tinggal mengemasi barang-barangmu.&rdquo; Nada terdiam. Tak mungkin mampu ia membantah. Minggu depan ia harus meninggalkan tempat ini. Tepat di hari ulang tahun Dio yang ke-18. Terasa berat untuknya meninggalkan tempat ini. Terlalu banyak kenangan yang terukir. Semakin terasa berat ketika harus meninggalkan Dio.</p>\n\n<p>Penyebab terjadinya konflik pada kutipan cerpen tersebut adalah ...</p>\n', '#####<p>Perasaan berat hati Nada harus meninggalkan Dio.</p>\r\n', '#####<p>Nada merasa bingung dengan masalah sekolahnya.</p>\r\n', '#####<p>Kepindahan tempat tugas ayah Nada yang mendadak</p>\r\n', '#####<p>Nada merasa berat meninggalkan tempat tinggal yang sekarang.</p>\r\n', '#####', 'C', '2017-01-25 10:13:02', 1, 6),
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
(48, 3, 1, 1, '', '', '<p>Ternyata jeruk nipis bermanfaat dalam mengobati batuk. Buah ini memiliki kandungan berupa minyak asiri dan zat yang dapat bermanfaat mengendalikan otot-otot pernapasan sehingga mampu meredakan batuk. Adapun cara penggunaannya yaitu dengan cara meminum air perasan dari jeruk nipis yang dapat dicampur dengan madu, kecap atau gula sehingga rasa asamnya berkurang. (http://informasiana.com)</p>\r\n\r\n<p>Ide pokok teks tersebut adalah ....</p>\r\n', '#####<p>manfaat jeruk nipis</p>\r\n', '#####<p>kandungan jeruk nipis</p>\r\n', '#####<p>campuran jeruk nipis</p>\r\n', '#####<p>cara penggunaan jeruk nipis</p>\r\n', '#####<p>opsi E.15</p>\r\n', 'A', '2017-01-25 10:13:02', 0, 4),
(49, 3, 1, 1, '', '', '<p>Kelestarian Lingkungan Hidup</p>\r\n\r\n<p>Lingkungan adalah sesuatu yang ada di sekitar manusia yang dapat memengaruhi kehidupan manusia. Lingkungan hidup adalah kesatuan ruang dengan benda dan kesatuan makhluk hidup termasuk manusia terlibat di dalamnya. Manusia harus menyadari bahwa lingkungan merupakan sarana pengembangan hidup yang harus dijaga kelestariannya.</p>\r\n\r\n<p>Dalam lingkungan hidup terdapat ekosistem, yaitu tatanan unsur lingkungan hidup yang merupakan kesatuan utuh menyeluruh dan saling memengaruhi dalam membentuk keseimbangan, stabilitas, dan produktivitas lingkungan hidup. Lingkungan hidup dapat dibedakan menjadi tiga, yaitu unsur hayati (biotik), unsur sosial budaya, dan unsur fisik (abiotik). Unsur hayati (biotik), yaitu unsur lingkungan hidup yang terdiri dari makhluk hidup, seperti manusia, hewan, tumbuhan dan jasad renik. Unsur sosial budaya, yaitu lingkungan sosial dan budaya yang dibuat oleh manusia berupa sistem nilai, gagasan, dan keyakinan dalam perilaku sebagai makhluk&nbsp;sosial. Unsur fisik (abiotik), yaitu unsur lingkungan hidup yang terdiri dari makhluk tak hidup, seperti tanah, air, iklim, udara dan lain sebagainya. Keberadaan unsur ini sangat besar bagi kelangsungan hidup segenap kehidupan di bumi.</p>\r\n\r\n<p>Simpulan isi teks tersebut adalah ...</p>\r\n', '#####<p>Manusia harus menjaga kelestarian lingkungan hidup.</p>\r\n', '#####<p>Manusia dapat memanfaatkan seluruh isi lingkungan hidup</p>\r\n', '#####<p>Seluruh unsur lingkungan hidup saling mempengaruhi demi kehidupan manusia.</p>\r\n', '#####<p>Unsur biotik, sosial budaya, dan abiotik harus dimanfaatkan manusia secara seimbang.</p>\r\n', '#####<p>opsi E.16</p>\r\n', 'A', '2017-01-25 10:13:02', 3, 5),
(50, 3, 2, 1, '', '', '<p>Kelestarian Lingkungan Hidup</p>\r\n\r\n<p>Lingkungan adalah sesuatu yang ada di sekitar manusia yang dapat memengaruhi kehidupan manusia. Lingkungan hidup adalah kesatuan ruang dengan benda dan kesatuan makhluk hidup termasuk manusia terlibat di dalamnya. Manusia harus menyadari bahwa lingkungan merupakan sarana pengembangan hidup yang harus dijaga kelestariannya.</p>\r\n\r\n<p>Dalam lingkungan hidup terdapat ekosistem, yaitu tatanan unsur lingkungan hidup yang merupakan kesatuan utuh menyeluruh dan saling memengaruhi dalam membentuk keseimbangan, stabilitas, dan produktivitas lingkungan hidup. Lingkungan hidup dapat dibedakan menjadi tiga, yaitu unsur hayati (biotik), unsur sosial budaya, dan unsur fisik (abiotik). Unsur hayati (biotik), yaitu unsur lingkungan hidup yang terdiri dari makhluk hidup, seperti manusia, hewan, tumbuhan dan jasad renik. Unsur sosial budaya, yaitu lingkungan sosial dan budaya yang dibuat oleh manusia berupa sistem nilai, gagasan, dan keyakinan dalam perilaku sebagai makhluk&nbsp;sosial. Unsur fisik (abiotik), yaitu unsur lingkungan hidup yang terdiri dari makhluk tak hidup, seperti tanah, air, iklim, udara dan lain sebagainya. Keberadaan unsur ini sangat besar bagi kelangsungan hidup segenap kehidupan di bumi.</p>\r\n\r\n<p>Informasi yang sesuai dengan isi teks tersebut adalah &hellip;.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '#####<p>Tanpa adanya unsur lingkungan hidup, manusia tidak hidup di bumi ini.</p>\r\n', '#####<p>Unsur abiotik tidak terlalu berpengaruh terhadap kelangsungan hidup manusia</p>\r\n', '#####<p>Unsur sosial budaya diciptakan oleh manusia untuk kelestarian kehidupan di bumi.</p>\r\n', '#####<p>Lingkungan hidup yang meliputi unsur biotik, sosial budaya, dan abiotik harus dijaga kelestariannya.</p>\r\n', '#####<p>opsi E.17</p>\r\n', 'D', '2017-01-25 10:13:02', 0, 7),
(51, 3, 2, 1, '', '', '<p>Biografi Mario Teguh</p>\r\n\r\n<p>&quot;Salam Super&quot; itulah kata-kata pembuka yang biasa diucapkan oleh Mario Teguh ketika ia mulai membawakan acara di Metro TV yang bertajuk &#39;Mario Teguh Golden Ways&#39;. Terkenal sebagai <em>motivator </em>terbaik di Indonesia yang memiliki kepribadian yang cerdas serta mampu memotivasi banyak orang melalui rangkaian kata-kata bijaknya sehingga ia makin banyak disukai oleh orang-orang.<br />\r\n&nbsp;</p>\r\n\r\n<p>Makna kata bercetak miring pada kutipan teks tersebut adalah &hellip;</p>\r\n', '#####<p>Orang yang bertugas mengingatkan orang lain agar selalu melakukan perbuatan baik.</p>\r\n', '#####<p>Orang yang bertugas membantu seseorang dalam menyelesaikan masalah pribadinya.</p>\r\n', '#####<p>Orang yang menyebabkan timbulnya dorongan pada orang lain untuk melakukan sesuatu.</p>\r\n', '#####<p>Orang yang membangkitkan semangat seseorang agar berasil dalam menjalankan usahanya.</p>\r\n', '#####', 'C', '2017-01-25 10:13:02', 1, 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE IF NOT EXISTS `pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nama_pegawai` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama_pegawai`, `alamat`, `email`, `phone`) VALUES
(8, 'Helmi', 'Tegal', 'helmi@gmail.com', '0891239123');

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
  `nm_provinsi` varchar(20) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=96 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `provinsi`
--

INSERT INTO `provinsi` (`id_provinsi`, `nm_provinsi`) VALUES
(11, 'ACEH'),
(12, 'SUMATERA UTARA'),
(13, 'SUMATERA BARAT'),
(14, 'RIAU'),
(15, 'JAMBI'),
(16, 'SUMATERA SELATAN'),
(17, 'BENGKULU'),
(18, 'LAMPUNG'),
(19, 'BANGKA BELITUNG'),
(21, 'KEPULAUAN RIAU'),
(31, 'DKI JAKARTA'),
(32, 'JAWA BARAT'),
(33, 'JAWA TENGAH'),
(34, 'DI YOGYAKARTA'),
(35, 'JAWA TIMUR'),
(36, 'BANTEN'),
(51, 'BALI'),
(52, 'NUSA TENGGARA BARAT'),
(53, 'NUSA TENGGARA TIMUR'),
(61, 'KALIMANTAN BARAT'),
(62, 'KALIMANTAN TENGAH'),
(63, 'KALIMANTAN SELATAN'),
(64, 'KALIMANTAN TIMUR'),
(65, 'KALIMANTAN UTARA'),
(71, 'SULAWESI UTARA'),
(72, 'SULAWESI TENGAH'),
(73, 'SULAWESI SELATAN'),
(74, 'SULAWESI TENGGARA'),
(75, 'GORONTALO'),
(76, 'SULAWESI BARAT'),
(81, 'MALUKU'),
(82, 'MALUKU UTARA'),
(91, 'PAPUA BARAT'),
(94, 'PAPUA');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tr_guru_tes`
--

INSERT INTO `tr_guru_tes` (`id`, `id_guru`, `id_mapel`, `nama_ujian`, `jumlah_soal`, `waktu`, `jenis`, `detil_jenis`, `tgl_mulai`, `terlambat`, `token`) VALUES
(1, 3, 1, 'tes', 10, 100, 'acak', '', '2019-09-09 10:10:00', '2019-09-20 10:10:00', 'UWZCK'),
(2, 3, 2, 'tes', 2, 30, 'acak', '', '2019-09-14 10:10:00', '2019-09-30 10:08:00', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tr_ikut_ujian`
--

INSERT INTO `tr_ikut_ujian` (`id`, `id_tes`, `id_user`, `list_soal`, `list_jawaban`, `jml_benar`, `nilai`, `nilai_bobot`, `tgl_mulai`, `tgl_selesai`, `status`) VALUES
(19, 2, 8, '50,51', '50:C:N,51:B:N', 0, '0.00', '0.00', '2019-09-16 14:55:07', '2019-09-16 15:25:07', 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ujian_modul`
--

CREATE TABLE IF NOT EXISTS `ujian_modul` (
  `id_ujianmodul` int(11) NOT NULL,
  `id_ujian` int(11) NOT NULL,
  `id_modul` int(11) NOT NULL,
  `jml_soal` varchar(50) NOT NULL,
  `urutan` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ujian_modul`
--

INSERT INTO `ujian_modul` (`id_ujianmodul`, `id_ujian`, `id_modul`, `jml_soal`, `urutan`) VALUES
(1, 1, 1, '5', 5),
(3, 1, 2, '8', 10),
(4, 1, 3, '10', 10);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `pass`, `total_login`, `last_login`, `last_activity`, `login_attempts`, `last_login_attempt`, `remember_time`, `remember_exp`, `ip_address`, `is_active`, `verification_token`, `recovery_token`, `unlock_token`, `created_by`, `created_at`, `updated_by`, `updated_at`, `deleted_by`, `deleted_at`, `deleted`) VALUES
(1, 'admin', '1', 8, '2019-09-16 14:36:00', '2019-09-16 14:36:00', 8, '2019-09-16 14:36:00', NULL, NULL, '::1', 1, NULL, NULL, NULL, 0, '2019-09-06 12:45:51', NULL, NULL, NULL, NULL, 0);

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
  `company_id` int(9) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `company_id`, `name`, `level`, `kon_id`, `definition`, `description`, `route`, `created_by`, `created_at`, `updated_by`, `updated_at`, `deleted_by`, `deleted_at`, `deleted`) VALUES
(0, 0, 'Super Admin', 1, 0, 'Super Administrator', NULL, 'admin_side/menu', 0, '2018-10-27 17:52:08', NULL, NULL, NULL, NULL, 0),
(1, 0, 'Admin', 2, 0, 'Administrator (Owner)', NULL, 'admin_side/beranda', 0, '2017-03-06 01:19:26', 2, '2018-10-27 18:55:37', NULL, NULL, 0),
(2, 0, 'Anggota Kube', 3, 8, 'Anggota Kube', NULL, NULL, 0, '2017-03-06 01:19:26', NULL, NULL, NULL, NULL, 0),
(3, 0, 'Anggota Rutilahu', 4, 6, 'Anggota Rutilahu', NULL, NULL, 0, '2018-09-02 14:20:07', NULL, NULL, NULL, NULL, 0),
(4, 0, 'Anggota Sarling', 3, 7, 'Anggota Sarling', NULL, NULL, 0, '2018-09-02 14:20:08', NULL, NULL, NULL, NULL, 0);

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
(1, 2);

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
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indexes for table `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD PRIMARY KEY (`id_kabupaten`),
  ADD KEY `id_provinsi` (`id_provinsi`);

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
  ADD PRIMARY KEY (`id_pegawai`);

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
  ADD KEY `name_index` (`name`),
  ADD KEY `company_id_index` (`company_id`) USING BTREE;

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
  MODIFY `activity_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id_agenda` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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
  MODIFY `id_materi` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tr_ikut_ujian`
--
ALTER TABLE `tr_ikut_ujian`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `ujian_modul`
--
ALTER TABLE `ujian_modul`
  MODIFY `id_ujianmodul` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(9) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
