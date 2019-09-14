-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 14 Sep 2019 pada 17.34
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `activity_logs`
--

INSERT INTO `activity_logs` (`activity_id`, `user_id`, `company_id`, `activity_type`, `activity_data`, `activity_time`, `activity_ip_address`, `activity_device`, `activity_os`, `activity_browser`, `activity_location`) VALUES
(1, 1, 0, 'Login to system', 'Login via web browser', '2019-09-08 12:46:51', '::1', 'PC', 'Windows 10', 'Chrome 76.0.3809', NULL),
(2, 1, 0, 'Login to system', 'Login via web browser', '2019-09-09 08:27:49', '::1', 'PC', 'Windows 10', 'Chrome 76.0.3809', NULL),
(3, 1, 0, 'Login to system', 'Login via web browser', '2019-09-09 15:02:33', '::1', 'PC', 'Windows 10', 'Chrome 76.0.3809', NULL),
(4, 1, 0, 'Login to system', 'Login via web browser', '2019-09-10 15:51:10', '::1', 'PC', 'Windows 10', 'Chrome 76.0.3809', NULL),
(5, 1, 0, 'Login to system', 'Login via web browser', '2019-09-12 09:04:33', '::1', 'PC', 'Windows 10', 'Chrome 76.0.3809', NULL),
(6, 1, 0, 'Login to system', 'Login via web browser', '2019-09-12 09:34:49', '::1', 'PC', 'Windows 10', 'Chrome 76.0.3809', NULL);

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
-- Struktur dari tabel `m_admin`
--

CREATE TABLE IF NOT EXISTS `m_admin` (
  `id` int(6) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` enum('admin','guru','siswa') NOT NULL,
  `kon_id` int(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_admin`
--

INSERT INTO `m_admin` (`id`, `username`, `password`, `level`, `kon_id`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 0),
(28, '12090677', 'baaf63831059795a0cedec6d705ad519', 'siswa', 8),
(29, '1001', 'b8c37e33defde51cf91e1e03e51657da', 'guru', 2),
(30, '1003', 'aa68c75c4a77c87f97fb686b2f068676', 'guru', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_guru`
--

CREATE TABLE IF NOT EXISTS `m_guru` (
  `id` int(6) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_guru`
--

INSERT INTO `m_guru` (`id`, `nip`, `nama`) VALUES
(2, '1001', 'Ir. Joko Widodo'),
(4, '1000', 'Dr. Abdulrahman Wahid'),
(5, '1002', 'Ir. Baharudin Jusuf Habibie'),
(6, '1003', 'Erik Maulana'),
(7, '1004', 'Tes');

--
-- Trigger `m_guru`
--
DELIMITER $$
CREATE TRIGGER `hapus_guru` AFTER DELETE ON `m_guru`
 FOR EACH ROW BEGIN
DELETE FROM m_soal WHERE m_soal.id_guru = OLD.id;
DELETE FROM m_admin WHERE m_admin.level = 'guru' AND m_admin.kon_id = OLD.id;
DELETE FROM tr_guru_mapel WHERE tr_guru_mapel.id_guru = OLD.id;
DELETE FROM tr_guru_tes WHERE tr_guru_tes.id_guru = OLD.id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_mapel`
--

CREATE TABLE IF NOT EXISTS `m_mapel` (
  `id` int(6) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_mapel`
--

INSERT INTO `m_mapel` (`id`, `nama`) VALUES
(1, 'Bahasa Indonesia'),
(2, 'Bahasa Inggris'),
(3, 'Matematika'),
(4, 'IPA');

--
-- Trigger `m_mapel`
--
DELIMITER $$
CREATE TRIGGER `hapus_mapel` AFTER DELETE ON `m_mapel`
 FOR EACH ROW BEGIN
DELETE FROM m_soal WHERE m_soal.id_mapel = OLD.id;
DELETE FROM tr_guru_mapel WHERE tr_guru_mapel.id_mapel = OLD.id;
DELETE FROM tr_guru_tes WHERE tr_guru_tes.id_mapel = OLD.id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_siswa`
--

CREATE TABLE IF NOT EXISTS `m_siswa` (
  `id` int(6) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nim` varchar(50) NOT NULL,
  `jurusan` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_siswa`
--

INSERT INTO `m_siswa` (`id`, `nama`, `nim`, `jurusan`) VALUES
(1, 'Agus Yudhoyono', '12090671', 'Teknik Informatika'),
(2, 'Edi Baskoro Yudhoyono', '12090672', 'Teknik Informatika'),
(3, 'Puan Maharani', '11090673', 'Sistem Informasi'),
(4, 'Kaesang Pangarep', '11090674', 'Sistem Informasi'),
(5, 'Anisa Pohan', '12090675', 'Teknik Informatika'),
(6, 'Gibran Rakabuming Raka', '11090676', 'Sistem Informasi'),
(8, 'Kahiyang Ayu', '12090677', 'Teknik Informatika');

--
-- Trigger `m_siswa`
--
DELIMITER $$
CREATE TRIGGER `hapus_siswa` AFTER DELETE ON `m_siswa`
 FOR EACH ROW BEGIN
DELETE FROM tr_ikut_ujian WHERE tr_ikut_ujian.id_user = OLD.id;
END
$$
DELIMITER ;

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
(34, 0, 1, 1, '', '', '<table border="1" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<thead>\r\n		<tr>\r\n			<th scope="col">Teks Fabel I</th>\r\n			<th scope="col">Teks Fabel II</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Dengan bangganya lucky berlari-lari kecil sambil menyeret-nyeret balok kayu yang dikalungkan majikannya, untuk&nbsp;menarik perhatian orang lain. Tetapi tak ada satu pun orang yang senang melihat anjing itu. Balok itu sebenarnya dikalungkan majikannya agar orang mengetahui kehadiran lucky, dan bisa menghindarinya. Seekor anjing lain yang melihatnya kemudian berkata &quot;Kamu seharusnya lebih bijaksana dan berdiam diri di rumah agar orang tidak melihat balok yang dikalungkan di lehermu. Apakah kamu senang bahwa semua orang tahu betapa nakal dan jahatnya kamu?&quot;</td>\r\n			<td>Di sebuah hutan, musim kemarau, burung-burung dan hewan-hewan lain sangat sulit untuk mendapatkan air.&nbsp;Namun ada seekor burung perkutut yang menemukan kendi tua yang berisi sedikit air. Kendi tersebut memiliki bentuk yang tinggi dan juga sempit, sehingga burung tersebut tidak bisa menjangkau air di dalam kendi tersebut. Burung perkutut tersebut tetap mencoba untuk meminum air yang ada di dalam kendi, tetapi tetap saja tidak bisa. Burung itu hampir putus asa hingga munculah sebuah ide.. Burung tersebut kemudian mengambil kerikilkerikil yang ada di samping kendi dan menjatuhkannya ke dalam kendi satu persatu. Ide yang cemerlang itu membuat air lama kelamaan naik sehingga burung perkutut bisa meminum air tersebut</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Perbedaan pola pengembangan kedua kutipan fabel tersebut diawali dengan ....</p>\r\n', '#####<table border="1" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<thead>\r\n		<tr>\r\n			<th scope="col">Fabel I</th>\r\n			<th scope="col">Fabel II</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>menampilkan lokasi cerita</td>\r\n			<td>memberikan garis besar cerita</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', '#####<table border="1" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<thead>\r\n		<tr>\r\n			<th scope="col">Fabel I</th>\r\n			<th scope="col">Fabel II</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>memberikan garis besar cerita</td>\r\n			<td>memulai dengan aksi</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '#####<table border="1" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<thead>\r\n		<tr>\r\n			<th scope="col">Fabel I</th>\r\n			<th scope="col">Fabel II</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>memunculkan masalah</td>\r\n			<td>mengisyaratkan bahaya</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '#####<table border="1" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<thead>\r\n		<tr>\r\n			<th scope="col">Fabel I</th>\r\n			<th scope="col">Fabel II</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>memulai dengan aksi</td>\r\n			<td>menampilkan lokasi cerita</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '#####', 'D', '2017-01-25 10:13:02', 2, 5),
(35, 0, 1, 1, '', '', '<p>&ldquo;Nada, minggu depan kita harus pindah ke Jogjakarta. Ayah dipindahtugaskan di sana.&rdquo; Bagaikan petir di siang bolong menyambar Nada yang seketika itu langsung diam mematung. &ldquo;Kenapa mendadak, Bunda? Nada senang tinggal di sini. Apa Nada tidak bisa tetap tinggal di sini? Sekolah Nada gimana?&rdquo; &ldquo;Tidak bisa, sayang. Kamu mau tinggal sama siapa di sini? Masalah sekolah, semua sudah diurus Ayah. Kamu hanya tinggal mengemasi barang-barangmu.&rdquo; Nada terdiam. Tak mungkin mampu ia membantah. Minggu depan ia harus meninggalkan tempat ini. Tepat di hari ulang tahun Dio yang ke-18. Terasa berat untuknya meninggalkan tempat ini. Terlalu banyak kenangan yang terukir. Semakin terasa berat ketika harus meninggalkan Dio.</p>\r\n\r\n<p>Akibat konflik yang terjadi pada kutipan cerpen tersebut adalah...</p>\r\n', '#####<p>Nada diam mematung selama satu minggu</p>\n', '#####<p>Nada harus segera mengemasi barang-barang miliknya</p>\r\n', '#####<p>Meskipun merasa berat, minggu depan Nada harus ikut pindah ke Yogyakarta.</p>\r\n', '#####<p>Ayah dan ibu Nada harus mencari tempat tinggal dan sekolah baru untuk Nada</p>\r\n', '#####', 'C', '2017-01-25 10:13:02', 0, 7),
(36, 6, 1, 1, '', '', '<p>&ldquo;Nada, minggu depan kita harus pindah ke Jogjakarta. Ayah dipindahtugaskan di sana.&rdquo; Bagaikan petir di siang bolong menyambar Nada yang seketika itu langsung diam mematung. &ldquo;Kenapa mendadak, Bunda? Nada senang tinggal di sini. Apa Nada tidak bisa tetap tinggal di sini? Sekolah Nada gimana?&rdquo; &ldquo;Tidak bisa, sayang. Kamu mau tinggal sama siapa di sini? Masalah sekolah, semua sudah diurus Ayah. Kamu hanya tinggal mengemasi barang-barangmu.&rdquo; Nada terdiam. Tak mungkin mampu ia membantah. Minggu depan ia harus meninggalkan tempat ini. Tepat di hari ulang tahun Dio yang ke-18. Terasa berat untuknya meninggalkan tempat ini. Terlalu banyak kenangan yang terukir. Semakin terasa berat ketika harus meninggalkan Dio.</p>\n\n<p>Penyebab terjadinya konflik pada kutipan cerpen tersebut adalah ...</p>\n', '#####<p>Perasaan berat hati Nada harus meninggalkan Dio.</p>\r\n', '#####<p>Nada merasa bingung dengan masalah sekolahnya.</p>\r\n', '#####<p>Kepindahan tempat tugas ayah Nada yang mendadak</p>\r\n', '#####<p>Nada merasa berat meninggalkan tempat tinggal yang sekarang.</p>\r\n', '#####', 'C', '2017-01-25 10:13:02', 1, 6),
(37, 6, 1, 1, '', '', '<p>&ldquo;Nada, minggu depan kita harus pindah ke Jogjakarta. Ayah dipindahtugaskan di sana.&rdquo; Bagaikan petir di siang bolong menyambar Nada yang seketika itu langsung diam mematung. &ldquo;Kenapa mendadak, Bunda? Nada senang tinggal di sini. Apa Nada tidak bisa tetap tinggal di sini? Sekolah Nada gimana?&rdquo; &ldquo;Tidak bisa, sayang. Kamu mau tinggal sama siapa di sini? Masalah sekolah, semua sudah diurus Ayah. Kamu hanya tinggal mengemasi barang-barangmu.&rdquo; Nada terdiam. Tak mungkin mampu ia membantah. Minggu depan ia harus meninggalkan tempat ini. Tepat di hari ulang tahun Dio yang ke-18. Terasa berat untuknya meninggalkan tempat ini. Terlalu banyak kenangan yang terukir. Semakin terasa berat ketika harus meninggalkan Dio.</p>\r\n\r\n<p>Amanat yang terdapat pada kutipan cerpen tersebut adalah ...</p>\r\n', '#####<p>Sebagai anak harus patuh pada kedua orang tua.</p>\r\n', '#####<p>Lakukan perintah orang tua meskipun dengan terpaksa!</p>\r\n', '#####<p>Ikhlaskan diri kita dalam mengerjakan sesuatu pekerjaan!</p>\r\n', '#####<p>Setiap keputusan agar dibicarakan terlebih dahulu dengan keluarga!</p>\r\n', '#####', 'A', '2017-01-25 10:13:02', 0, 6),
(38, 6, 1, 1, '', '', '<p>&ldquo;Nada, minggu depan kita harus pindah ke Jogjakarta. Ayah dipindahtugaskan di sana.&rdquo; Bagaikan petir di siang bolong menyambar Nada yang seketika itu langsung diam mematung. &ldquo;Kenapa mendadak, Bunda? Nada senang tinggal di sini. Apa Nada tidak bisa tetap tinggal di sini? Sekolah Nada gimana?&rdquo; &ldquo;Tidak bisa, sayang. Kamu mau tinggal sama siapa di sini? Masalah sekolah, semua sudah diurus Ayah. Kamu hanya tinggal mengemasi barang-barangmu.&rdquo; Nada terdiam. Tak mungkin mampu ia membantah. Minggu depan ia harus meninggalkan tempat ini. Tepat di hari ulang tahun Dio yang ke-18. Terasa berat untuknya meninggalkan tempat ini. Terlalu banyak kenangan yang terukir. Semakin terasa berat ketika harus meninggalkan Dio.</p>\r\n\r\n<p>Makna simbol <strong><em>petir di siang bolong</em></strong> pada kutipan cerpen tersebut adalah....</p>\r\n', '#####<p>merasa sedih</p>\r\n', '#####<p>merasa bingung</p>\r\n', '#####<p>sangat terkejut</p>\r\n', '#####<p>merasa heran</p>\r\n', '#####', 'C', '2017-01-25 10:13:02', 0, 4),
(39, 6, 1, 1, '', '', '<p>Langit menjadi kelabu. Awan hitam mulai tak mampu lagi membendung butiran air. Matahari pergi. Sinarnya pun tak berbekas. Di samping rumah Nada, nampak Dio masih asyik bermain dengan merpatinya. Nada tersenyum menatapnya dari balik jendela kamarnya. Ya, tetangganya itu memang sangat menyukai merpati. Bahkan di samping rumahnya ada sebuah kandang merpati yang cukup luas miliknya sendiri. Ia biasa menyebutnya istana Merpati Dara Dori. Begitu banyak jenis merpati yang ia piara. Semuanya sepasang. Ada merpati lokal, merpati kipas, merpati gondok, merpati Lahore, dan masih banyak lagi. Namun, di antara semua merpatinya, merpati lokal berwarna seputih saljulah yang paling ia sukai. Dara dan Dori.</p>\r\n\r\n<p>Latar suasana yang terdapat pada kutipan cerpen tersebut adalah .&hellip;</p>\r\n', '#####<p>mendung</p>\r\n', '#####<p>hujan</p>\r\n', '#####<p>dingin</p>\r\n', '#####<p>sunyi</p>\r\n', '#####', 'B', '2017-01-25 10:13:02', 1, 5),
(40, 6, 1, 1, '', '', '<p>Langit menjadi kelabu. Awan hitam mulai tak mampu lagi membendung butiran air. Matahari pergi. Sinarnya pun tak berbekas. Di samping rumah Nada, nampak Dio masih asyik bermain dengan merpatinya. Nada tersenyum menatapnya dari balik jendela kamarnya. Ya, tetangganya itu memang sangat menyukai merpati. Bahkan di samping rumahnya ada sebuah kandang merpati yang cukup luas miliknya sendiri. Ia biasa menyebutnya istana Merpati Dara Dori. Begitu banyak jenis merpati yang ia piara. Semuanya sepasang. Ada merpati lokal, merpati kipas, merpati gondok, merpati Lahore, dan masih banyak lagi. Namun, di antara semua merpatinya, merpati lokal berwarna seputih saljulah yang paling ia sukai. Dara dan Dori.</p>\r\n\r\n<p>Kutipan cerpen tersebut merupakan bagian alur ...</p>\r\n', '#####<p>pengenalan</p>\r\n', '#####<p>komplikasi</p>\r\n', '#####<p>klimaks</p>\r\n', '#####<p>penyelesaian</p>\r\n', '#####', 'A', '2017-01-25 10:13:02', 0, 4),
(41, 6, 1, 1, '', '', '<p>Langit menjadi kelabu. Awan hitam mulai tak mampu lagi membendung butiran air. Matahari pergi. Sinarnya pun tak berbekas. Di samping rumah Nada, nampak Dio masih asyik bermain dengan merpatinya. Nada tersenyum menatapnya dari balik jendela kamarnya. Ya, tetangganya itu memang sangat menyukai merpati. Bahkan di samping rumahnya ada sebuah kandang merpati yang cukup luas miliknya sendiri. Ia biasa menyebutnya istana Merpati Dara Dori. Begitu banyak jenis merpati yang ia piara. Semuanya sepasang. Ada merpati lokal, merpati kipas, merpati gondok, merpati Lahore, dan masih banyak lagi. Namun, di antara semua merpatinya, merpati lokal berwarna seputih saljulah yang paling ia sukai. Dara dan Dori.</p>\r\n\r\n<p>Pernyataan yang sesuai dengan isi cerpen tersebut adalah &hellip;</p>\r\n', '#####<p>Merpati yang paling Dio Gemari adalah merpati Lahore</p>\r\n', '#####<p>Dio seorang yang menggemari berbagai jenis burung merpati.</p>\r\n', '#####<p>Kandang burung yang ada sengaja dibuat untuk Dara dan Dori.</p>\r\n', '#####<p>Nada tidak senang kalau Dio memelihara banyak burung merpati.</p>\r\n', '#####', 'B', '2017-01-25 10:13:02', 3, 4),
(42, 6, 1, 1, '', '', '<p>Langit menjadi kelabu. Awan hitam mulai tak mampu lagi membendung butiran air. Matahari pergi. Sinarnya pun tak berbekas. Di samping rumah Nada, nampak Dio masih asyik bermain dengan merpatinya. Nada tersenyum menatapnya dari balik jendela kamarnya. Ya, tetangganya itu memang sangat menyukai merpati. Bahkan di samping rumahnya ada sebuah kandang merpati yang cukup luas miliknya sendiri. Ia biasa menyebutnya istana Merpati Dara Dori. Begitu banyak jenis merpati yang ia piara. Semuanya sepasang. Ada merpati lokal, merpati kipas, merpati gondok, merpati Lahore, dan masih banyak lagi. Namun, di antara semua merpatinya, merpati lokal berwarna seputih saljulah yang paling ia sukai. Dara dan Dori.</p>\r\n\r\n<p>Makna kata &ldquo;membendung&rdquo; pada kutipan cerpen tersebut ialah &hellip;.</p>\r\n', '#####<p>menahan</p>\r\n', '#####<p>menampung</p>\r\n', '#####<p>membentengi</p>\r\n', '#####<p>mengumpulkan</p>\r\n', '#####', 'A', '2017-01-25 10:13:02', 1, 4),
(43, 6, 1, 1, '', '', '<p>1) Penerbit Wayang menerbitkan buku terbaru yang berjudul Sudah Saatnya Menjadi Penulis Hebat. 2) Buku ini ditulis oleh Bendi Derajat. 3) Judulnya menarik, isinya lengkap, bahasanya ringan dan mudah dipahami serta bermanfaat bagi pembaca. 4) Hanya saja buku tersebut menggunakan banyak istilah akademik yang sulit dipahami pembaca awam.</p>\r\n\r\n<p>Kelemahan karya sastra yang terdapat pada ulasan buku tersebut ditandai nomor...</p>\r\n\r\n<p>&nbsp;</p>\r\n', '#####<p>1</p>\r\n', '#####<p>2</p>\r\n', '#####<p>3</p>\r\n', '#####<p>4</p>\r\n', '#####', 'D', '2017-01-25 10:13:02', 0, 5),
(44, 6, 1, 1, '', '', '<p><em>Kutipan teks I </em></p>\r\n\r\n<p><strong>Gamelan Jawa </strong></p>\r\n\r\n<p>Yogyakarta adalah tempat yang paling tepat untuk menikmati gamelan. Di kota ini Anda dapat menikmati gamelan versi aslinya. Gamelan yang berkembang di Yogyakarta adalah Gamelan Jawa yaitu musik yang biasanya menonjolkan metalofon, gambang, gendang, dan gong. Musik yang tercipta pada Gamelan Jawa berasal dari paduan bunyi gong, kenong, dan alat musik Jawa lainnya. Gamelan Jawa berbeda dengan Gamelan Bali ataupun Gamelan Sunda. Gamelan Jawa memiliki nada yang lebih lembut dan slow, berbeda dengan Gamelan Bali yang rancak dan Gamelan Sunda yang sangat mendayu-dayu dan didominasi suara seruling. Perbedaan itu wajar, karena Jawa memiliki pandangan hidup tersendiri yang diungkapkan dalam irama musik gamelannya. Adanya perbedaan gamelan Jawa, Bali, ataupun Sunda mengindikasikan bahwa masing-masing daerah memiliki pandangan hidup dan budaya sehingga berpengaruh pada gamelannya.</p>\r\n\r\n<p><em>Kutipan teks II </em></p>\r\n\r\n<p><strong>KEKERINGAN </strong></p>\r\n\r\n<p>Kekeringan adalah keadaan kekurangan air yang sangat ekstrim dalam waktu lama. Kekeringan timbul tanpa dapat diprediksi secara tepat. Di Indonesia, hujan turun secara tidak merata meskipun pada umumnya hujan terjadi di seluruh wilayah negeri. Selain itu, hujan tidak terjadi dalam waktu yang bersamaan. Di wilayah barat, hujan sudah turun, tetapi di wilayah timur belum turun hujan. Kekeringan biasanya muncul bila suatu wilayah secara terus-menerus mengalami curah hujan di bawah rata-rata. Musim kemarau yang panjang akan menjadi bencana alam apabila menyebabkan suatu wilayah kehilangan sumber pendapatan akibat gangguan pada pertanian dan ekosistem yang ditimbulkannya.</p>\r\n\r\n<p>Perbedaan penggunaan bahasa pada kedua kutipan teks tersebut adalah....</p>\r\n\r\n<p>&nbsp;</p>\r\n', '#####<table border="1" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<thead>\r\n		<tr>\r\n			<th scope="col">Teks 1</th>\r\n			<th scope="col">Teks 2</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>bahasanya mudah dipahami</td>\r\n			<td>banyak menggunakan istilah ilmiah</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', '#####<table border="1" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<thead>\r\n		<tr>\r\n			<th scope="col">Teks 1</th>\r\n			<th scope="col">Teks 2</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>banyak menggunakan bahasa daerah</td>\r\n			<td>bahasanya mudah dipahami</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '#####<table border="1" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<thead>\r\n		<tr>\r\n			<th scope="col">Teks 1</th>\r\n			<th scope="col">Teks 2</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>menggunakan istilah-istilah khusus</td>\r\n			<td>banyak menggunakan istilah ilmiah</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '#####<table border="1" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<thead>\r\n		<tr>\r\n			<th scope="col">Teks 1</th>\r\n			<th scope="col">Teks 2</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>banyak menggunakan istilah khusus</td>\r\n			<td>menggunakan istilah-istilah umum</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '#####', 'D', '2017-01-25 10:13:02', 0, 7),
(45, 6, 1, 1, '', '', '<p>Sejak zaman dahulu, nenek moyang kita sudah mengenal tanaman lidah buaya serta manfaatnya. Manfaat tumbuhan yang bernama latin Aloe Vera ini tidak hanya sebagai penyubur rambut, tetapi juga bermanfaat bagi kesehatan. Tumbuhan tanpa buah ini mempunyai ciri-ciri, seperti daun berbentuk panjang, tebal, dan berwarna hijau. Daunnya mengandung serat bening sebagai daging. Meskipun sejak dahulu dikenal memiliki banyak khasiat, belum banyak yang mengetahui bahwa tanaman ini bisa menjadi komoditas yang menguntungkan. Komoditas yang berbahan lidah buaya, di antaranya obat untuk mempercepat proses penyembuhan penyakit, jus lidah buaya atau gel sebagai obat pencahar yang baik dan sangat membantu jika mengalami sembelit, ramuan penyubur rambut, juga sebagai minuman yang menyehatkan.</p>\r\n\r\n<p>Ringkasan paragraf tersebut adalah....</p>\r\n', '#####<p>Lidah buaya bermanfaat sebagai penyubur rambut juga untuk kesehatan.</p>\r\n', '#####<p>Lidah buaya sangat bermanfaat untuk mengobati berbagai macam penyakit.</p>\r\n', '#####<p>Lidah buaya selain bermanfaat juga menjadi komoditas yang menguntungkan</p>\r\n', '#####<p>Lidah buaya memiliki ciri-ciri tertentu dan nilai komoditas yang menguntungkan</p>\r\n', '#####', 'C', '2017-01-25 10:13:02', 1, 5),
(46, 6, 1, 1, '', '', '<p>Perlunya Resapan Air untuk Mencegah Banjir</p>\r\n\r\n<p>Banjir sudah menjadi agenda tahunan bagi masyarakat Indonesia. Tidak heran bila pemerintah berjuang keras dan mengeluarkan biaya yang sangat besar untuk menyelesaikan masalah ini. Membangun saluran air yang bagus merupakan salah satu cara pemerintah menanggulangi banjir. Namun, itu semua tidak akan berhasil apabila tidak diimbangi dengan pembangunan daerah resapan air. Jadi, resapan air ini merupakan syarat mutlak untuk menanggulangi banjir.</p>\r\n\r\n<p>Pendapat yang mendukung kutipan isi teks tersebut adalah ...</p>\r\n', '#####<p>Solusi tersebut hanya akan menghamburkan uang negara.</p>\r\n', '#####<p>Solusi seperti itu sudah tepat sehingga harus segera direalisasikan.</p>\r\n', '#####<p>Solusi yang dipilih pemerintah tidak akan mampu menanggulangi banjir</p>\r\n', '#####<p>Solusi tersebut masuk akal, tetapi sulit membangun resapan air di perkotaan.</p>\r\n', '#####<p>opsi E.13</p>\r\n', 'B', '2017-01-25 10:13:02', 0, 6),
(47, 6, 1, 1, '', '', '<p>Ternyata jeruk nipis bermanfaat dalam mengobati batuk. Buah ini memiliki kandungan berupa minyak asiri dan zat yang dapat bermanfaat mengendalikan otot-otot pernapasan sehingga mampu meredakan batuk. Adapun cara penggunaannya yaitu dengan cara meminum air perasan dari jeruk nipis yang dapat dicampur dengan madu, kecap atau gula sehingga rasa asamnya berkurang. (http://informasiana.com)</p>\r\n\r\n<p>Isi yang tersirat pada bagian teks tersebut adalah ....</p>\r\n', '#####<p>Jeruk nipis dapat dicampur dengan zat lainnya</p>\r\n', '#####<p>Jeruk nipis dapat ditanam di pekarangan rumah</p>\r\n', '#####<p>Jeruk nipis memiliki khasiat untuk menjaga kesehatan</p>\r\n', '#####<p>Jeruk nipis lebih berkhasiat dibandingkan jeruk lainnya</p>\r\n', '#####<p>opsi E.14</p>\r\n', 'C', '2017-01-25 10:13:02', 2, 4),
(48, 6, 1, 1, '', '', '<p>Ternyata jeruk nipis bermanfaat dalam mengobati batuk. Buah ini memiliki kandungan berupa minyak asiri dan zat yang dapat bermanfaat mengendalikan otot-otot pernapasan sehingga mampu meredakan batuk. Adapun cara penggunaannya yaitu dengan cara meminum air perasan dari jeruk nipis yang dapat dicampur dengan madu, kecap atau gula sehingga rasa asamnya berkurang. (http://informasiana.com)</p>\r\n\r\n<p>Ide pokok teks tersebut adalah ....</p>\r\n', '#####<p>manfaat jeruk nipis</p>\r\n', '#####<p>kandungan jeruk nipis</p>\r\n', '#####<p>campuran jeruk nipis</p>\r\n', '#####<p>cara penggunaan jeruk nipis</p>\r\n', '#####<p>opsi E.15</p>\r\n', 'A', '2017-01-25 10:13:02', 0, 4),
(49, 6, 1, 1, '', '', '<p>Kelestarian Lingkungan Hidup</p>\r\n\r\n<p>Lingkungan adalah sesuatu yang ada di sekitar manusia yang dapat memengaruhi kehidupan manusia. Lingkungan hidup adalah kesatuan ruang dengan benda dan kesatuan makhluk hidup termasuk manusia terlibat di dalamnya. Manusia harus menyadari bahwa lingkungan merupakan sarana pengembangan hidup yang harus dijaga kelestariannya.</p>\r\n\r\n<p>Dalam lingkungan hidup terdapat ekosistem, yaitu tatanan unsur lingkungan hidup yang merupakan kesatuan utuh menyeluruh dan saling memengaruhi dalam membentuk keseimbangan, stabilitas, dan produktivitas lingkungan hidup. Lingkungan hidup dapat dibedakan menjadi tiga, yaitu unsur hayati (biotik), unsur sosial budaya, dan unsur fisik (abiotik). Unsur hayati (biotik), yaitu unsur lingkungan hidup yang terdiri dari makhluk hidup, seperti manusia, hewan, tumbuhan dan jasad renik. Unsur sosial budaya, yaitu lingkungan sosial dan budaya yang dibuat oleh manusia berupa sistem nilai, gagasan, dan keyakinan dalam perilaku sebagai makhluk&nbsp;sosial. Unsur fisik (abiotik), yaitu unsur lingkungan hidup yang terdiri dari makhluk tak hidup, seperti tanah, air, iklim, udara dan lain sebagainya. Keberadaan unsur ini sangat besar bagi kelangsungan hidup segenap kehidupan di bumi.</p>\r\n\r\n<p>Simpulan isi teks tersebut adalah ...</p>\r\n', '#####<p>Manusia harus menjaga kelestarian lingkungan hidup.</p>\r\n', '#####<p>Manusia dapat memanfaatkan seluruh isi lingkungan hidup</p>\r\n', '#####<p>Seluruh unsur lingkungan hidup saling mempengaruhi demi kehidupan manusia.</p>\r\n', '#####<p>Unsur biotik, sosial budaya, dan abiotik harus dimanfaatkan manusia secara seimbang.</p>\r\n', '#####<p>opsi E.16</p>\r\n', 'A', '2017-01-25 10:13:02', 3, 5),
(50, 6, 1, 1, '', '', '<p>Kelestarian Lingkungan Hidup</p>\r\n\r\n<p>Lingkungan adalah sesuatu yang ada di sekitar manusia yang dapat memengaruhi kehidupan manusia. Lingkungan hidup adalah kesatuan ruang dengan benda dan kesatuan makhluk hidup termasuk manusia terlibat di dalamnya. Manusia harus menyadari bahwa lingkungan merupakan sarana pengembangan hidup yang harus dijaga kelestariannya.</p>\r\n\r\n<p>Dalam lingkungan hidup terdapat ekosistem, yaitu tatanan unsur lingkungan hidup yang merupakan kesatuan utuh menyeluruh dan saling memengaruhi dalam membentuk keseimbangan, stabilitas, dan produktivitas lingkungan hidup. Lingkungan hidup dapat dibedakan menjadi tiga, yaitu unsur hayati (biotik), unsur sosial budaya, dan unsur fisik (abiotik). Unsur hayati (biotik), yaitu unsur lingkungan hidup yang terdiri dari makhluk hidup, seperti manusia, hewan, tumbuhan dan jasad renik. Unsur sosial budaya, yaitu lingkungan sosial dan budaya yang dibuat oleh manusia berupa sistem nilai, gagasan, dan keyakinan dalam perilaku sebagai makhluk&nbsp;sosial. Unsur fisik (abiotik), yaitu unsur lingkungan hidup yang terdiri dari makhluk tak hidup, seperti tanah, air, iklim, udara dan lain sebagainya. Keberadaan unsur ini sangat besar bagi kelangsungan hidup segenap kehidupan di bumi.</p>\r\n\r\n<p>Informasi yang sesuai dengan isi teks tersebut adalah &hellip;.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '#####<p>Tanpa adanya unsur lingkungan hidup, manusia tidak hidup di bumi ini.</p>\r\n', '#####<p>Unsur abiotik tidak terlalu berpengaruh terhadap kelangsungan hidup manusia</p>\r\n', '#####<p>Unsur sosial budaya diciptakan oleh manusia untuk kelestarian kehidupan di bumi.</p>\r\n', '#####<p>Lingkungan hidup yang meliputi unsur biotik, sosial budaya, dan abiotik harus dijaga kelestariannya.</p>\r\n', '#####<p>opsi E.17</p>\r\n', 'D', '2017-01-25 10:13:02', 0, 6),
(51, 6, 2, 1, '', '', '<p>Biografi Mario Teguh</p>\r\n\r\n<p>&quot;Salam Super&quot; itulah kata-kata pembuka yang biasa diucapkan oleh Mario Teguh ketika ia mulai membawakan acara di Metro TV yang bertajuk &#39;Mario Teguh Golden Ways&#39;. Terkenal sebagai <em>motivator </em>terbaik di Indonesia yang memiliki kepribadian yang cerdas serta mampu memotivasi banyak orang melalui rangkaian kata-kata bijaknya sehingga ia makin banyak disukai oleh orang-orang.<br />\r\n&nbsp;</p>\r\n\r\n<p>Makna kata bercetak miring pada kutipan teks tersebut adalah &hellip;</p>\r\n', '#####<p>Orang yang bertugas mengingatkan orang lain agar selalu melakukan perbuatan baik.</p>\r\n', '#####<p>Orang yang bertugas membantu seseorang dalam menyelesaikan masalah pribadinya.</p>\r\n', '#####<p>Orang yang menyebabkan timbulnya dorongan pada orang lain untuk melakukan sesuatu.</p>\r\n', '#####<p>Orang yang membangkitkan semangat seseorang agar berasil dalam menjalankan usahanya.</p>\r\n', '#####', 'C', '2017-01-25 10:13:02', 1, 6);

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
-- Struktur dari tabel `smt_article`
--

CREATE TABLE IF NOT EXISTS `smt_article` (
  `id` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `title` varchar(100) NOT NULL,
  `link` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `content` text NOT NULL,
  `images` varchar(255) NOT NULL,
  `views` int(11) NOT NULL,
  `type` enum('full','list') NOT NULL DEFAULT 'list',
  `penulis` varchar(50) NOT NULL,
  `tgl` datetime NOT NULL,
  `publish` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `smt_article`
--

INSERT INTO `smt_article` (`id`, `id_menu`, `nama`, `title`, `link`, `isi`, `content`, `images`, `views`, `type`, `penulis`, `tgl`, `publish`) VALUES
(24, 93, 'Mengenal Sistem Logistik', 'Know the Logistics System', 'mengenal-sistem-logistik', '<p>\r\n	Di era kemajuan industri global saat ini agaknya belum banyak yang mengetahui <i>apa itu logistik</i> dan <i>apa itu</i> <i>sistem logistik</i>. Mahasiswa dan pelajar kemungkinan lebih mengenal istilah <i>logistik</i> sebagai sebuah peran dalam penyelenggaraan acara yang mengurus peralatan-peralatan yang mendukung keberlangsungan acara seperti: panggung, <i>sound, lighting</i>, dan lainnya di acara pentas seni dan lomba lainnya. Tidak jarang juga yang&nbsp; mengenal <i>logistik </i>sebagai bagian dari profesi pergudangan yang mengurusi keluar masuknya barang pabrikan, atau bahkan profesi yang berhubungan dengan pendistribusian beras oleh Bulog. Wajar memang jika belum banyak yang memahami, kecuali para praktisi dan akademisi dengan keilmuan yang berhubungan. Saya sendiri juga baru memahami apa itu yang dimaksud dengan logistik setelah bergabung di <i>Centre of Logistics and Supply Chain Studies (CLoCS), </i>Pusat Pengkajian Logistik dan Rantai Nilai-<i> </i>ITB. Saya memang belum memahami secara mendalam, karena bidang ini tergolong cukup luas, namun kali ini saya akan mencoba membagi sedikit catatan saya selama mempelajarinya dalam beberapa bulan terakhir.</p>\r\n<h2>\r\n	Definisi Logistik</h2>\r\n<p>\r\n	Konteks logistik identik dengan organisasi, pergerakan, dan penyimpanan dari material dan manusia. Domain dari aktivitas logistic sendiri adalah menyediakan sistem dengan produk yang tepat,&nbsp; di lokasi yang tepat,&nbsp; pada waktu yang tepat (<i>right product, in the right place, at the right time</i>) dengan mengoptimasikan pengukuran performansi yang diberikan (contohnya meminimalisir total biaya operasional) dan memenuhi kualifikasi yang diberikan (contohnya sesuai dengan kemampuan dari klien dan sesuai dengan kualitas pelayanan) <i>(Ghiani, Laporte, &amp; Musmanno, 2004, p. 1)</i>.</p>\r\n<p>\r\n	Logistik menurut <i>Council of Supply Chain Management Professionals</i> (CLM, 2000) &nbsp;adalah bagian dari manajemen rantai pasok (<i>supply chain</i>) dalam perencanaan, pengimplementasian, dan pengontrolan aliran dan penyimpanan barang, informasi, dan pelayanan yang efektif dan efisien dari titik asal ke titik tujuan&nbsp; sesuai dengan permintaan konsumen. Untuk mengalirkan barang dari titik asal menuju titik tujuan akan membutuhkan beberapa aktivitas yang dikenal dengan &lsquo;aktivitas kunci dalam logistik&rsquo; diantaranya: 1) <i>customer service</i>, 2) <i>demand forecasting/planning</i>, 3) <i>inventory management</i>, 4) <i>logistics communications</i>, 5) <i>material handling</i>, 6) <i>traffic and transportation</i>, dan 7) <i>warehousing and storage</i> (Lambert D.M., et. al, 1998).</p>\r\n<p>\r\n	Dalam Cetak Biru Pengembangan Sistem Logistik Nasional (Perpres No. 26 Tahun 2012), Logistik didefinisikan sebagai bagian dari rantai pasok (<i>supply chain</i>) yang menangani&nbsp; arus barang, informasi, dan uang&nbsp; melalui&nbsp; proses pengadaan (<i>procurement</i>), penyimpanan (<i>warehousing</i>), transportasi (<i>transportation</i>), distribusi&nbsp; (<i>distribution</i>),&nbsp; dan&nbsp; pelayanan&nbsp; pengantaran&nbsp; (<i>delivery services</i>). Adapun penyusunan sistem logistik ditujukan untuk meningkatkan keamanan, efisiensi, dan efektfitas pergerakan barang, informasi, dan uang mulai dari titik asal (<i>point of origin</i>)&nbsp; sampai&nbsp; dengan&nbsp; titik&nbsp; tujuan&nbsp; (<i>point of destination</i>) sesuai dengan jenis, kualitas, jumlah, waktu dan tempat yang dikehendaki&nbsp; konsumen.</p>\r\n<div class="wp-caption aligncenter" data-shortcode="caption" id="attachment_199" style="width: 310px">\r\n	<a href="https://debbyrahmi.files.wordpress.com/2013/01/skema-definisi-logistik.png"><img alt="Skema Definisi Logistik (modifikasi dari Prof. Senator, 2003)" class="size-medium wp-image-199 " data-attachment-id="199" data-comments-opened="1" data-image-description="" data-image-meta="{" data-image-title="Skema Definisi Logistik (modifikasi dari Prof. Senator, 2003)" data-large-file="https://debbyrahmi.files.wordpress.com/2013/01/skema-definisi-logistik.png?w=470" data-medium-file="https://debbyrahmi.files.wordpress.com/2013/01/skema-definisi-logistik.png?w=300&amp;h=142" data-orig-file="https://debbyrahmi.files.wordpress.com/2013/01/skema-definisi-logistik.png" data-orig-size="3905,1856" data-permalink="https://debbyrahmi.wordpress.com/2013/01/10/mengenal-sistem-logistik/skema-definisi-logistik/#main" height="142" src="https://debbyrahmi.files.wordpress.com/2013/01/skema-definisi-logistik.png?w=300&amp;h=142" width="300" /></a>\r\n	<p class="wp-caption-text">\r\n		Skema Definisi Logistik (modifikasi dari Prof. Senator, 2003)</p>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', '<p>\r\n	<a href="https://debbyrahmi.files.wordpress.com/2013/01/skema-definisi-logistik.png"><img alt="Skema Definisi Logistik (modifikasi dari Prof. Senator, 2003)" class="size-medium wp-image-199 " data-attachment-id="199" data-comments-opened="1" data-image-description="" data-image-meta="{" data-image-title="Skema Definisi Logistik (modifikasi dari Prof. Senator, 2003)" data-large-file="https://debbyrahmi.files.wordpress.com/2013/01/skema-definisi-logistik.png?w=470" data-medium-file="https://debbyrahmi.files.wordpress.com/2013/01/skema-definisi-logistik.png?w=300&amp;h=142" data-orig-file="https://debbyrahmi.files.wordpress.com/2013/01/skema-definisi-logistik.png" data-orig-size="3905,1856" data-permalink="https://debbyrahmi.wordpress.com/2013/01/10/mengenal-sistem-logistik/skema-definisi-logistik/#main" height="142" src="https://debbyrahmi.files.wordpress.com/2013/01/skema-definisi-logistik.png?w=300&amp;h=142" width="300" /></a><br />\r\n	In the current era of global industrial progress it seems not many know what logistics and what is a logistics system. Students and learners are more likely to be familiar with the term logistics as a role in organizing events that take care of equipment that supports the continuity of events such as: stage, sound, lighting, and others at other arts and competitions. Not infrequently also know logistics as part of the warehouse profession that takes care of the entry of the manufacturer&#39;s goods, or even the profession associated with the distribution of rice by Bulog. Naturally indeed if not many understand, except the practitioners and academics with related scholarship. I myself also just understand what is meant by logistics after joining the Center of Logistics and Supply Chain Studies (CLoCS), Logistics and Value Chain Assessment Center-ITB. I do not yet understand deeply, because this field is quite extensive, but this time I will try to share a little of my notes during the study in the last few months.<br />\r\n	Definition of Logistics<br />\r\n	<br />\r\n	The logistical context is identical to the organization, movement, and storage of material and humans. The domain of logistic activity itself is to provide a system with the right product, in the right location, at the right time (right product, in the right place, at the right time) by optimizing the performance measurement provided (for example minimizing the total operational costs) and meet the qualifications given (for example according to the ability of the client and in accordance with the quality of service) (Ghiani, Laporte, &amp; Musmanno, 2004, p.1).<br />\r\n	<br />\r\n	Logistics according to the Council of Supply Chain Management Professionals (CLM, 2000) is part of supply chain management in planning, implementing, and controlling the flow and storage of effective and efficient goods, information and services from the point of origin to the appropriate destination with consumer demand. To flow goods from the point of origin to the destination will require several activities known as &#39;key activities in logistics&#39; including: 1) customer service, 2) demand forecasting / planning, 3) inventory management, 4) logistics communications, 5) material handling , 6) traffic and transportation, and 7) warehousing and storage (Lambert DM, et al, 1998).<br />\r\n	<br />\r\n	In the National Logistics System Development Blueprint (Perpres No. 26 of 2012), Logistics is defined as part of the supply chain that handles the flow of goods, information and money through procurement, warehousing, transportation ( transportation), distribution (distribution), and delivery service (delivery services). The preparation of a logistics system is aimed at improving the security, efficiency, and effectiveness of the movement of goods, information, and money from the point of origin to the point of destination in accordance with the type, quality, quantity, time and place consumers want.<br />\r\n	Logistics Definition Scheme (modification from Prof. Senator, 2003)<br />\r\n	<br />\r\n	Logistics Definition Scheme (modification from Prof. Senator, 2003)<br />\r\n	&nbsp;</p>\r\n', '', 157, 'list', 'administrator', '2018-09-10 14:16:15', 1),
(27, 93, 'Perijinan Import Barang Cukai', 'Permission of Import Cukai Product', 'perijinan-import-barang-cukai', '<p>\r\n	<img alt="Suasana aktivitas bongkar muat Terminal Peti Kemas Kalibaru atau New Priok Container Terminal usai diresmikan Presiden Joko Widodo, di Jakarta, Selasa (13/9/2016). " data-aligment="" data-width="780px" src="https://asset.kompas.com/crop/0x0:780x390/780x390/data/photo/2016/10/27/194732820160913-070306-374-terminal.petikemas-.kalibaru-.resmi-.beroperasi-780x390.jpg" />JAKARTA, KOMPAS.com - Pemerintah melalui Direktorat Jenderal Bea dan Cukai (DJBC) berupaya menciptakan iklim usaha yang sehat dengan menertibkan praktik impor berisiko tinggi. Hal ini membuat sejumlah barang impor tidak bisa masuk ke Tanah Air yang imbasnya adalah kekosongan barang. Dirjen Bea Cukai Heru Pambudi mengatakan, penertiban ini memang membuat barang yang tidak memenuhi izin impor tidak bisa masuk. &ldquo;Bukan tertahan (di pelabuhan). Selama tidak penuhi izin, tentunya tidak bisa masuk karena kami sudah tertib,&rdquo; katanya saat ditemui usai rapat di kantor Kementerian Koordinator Bidang Perekonomian akhir pekan lalu. Namun demikian, kini, pihaknya tengah menyiapkan kemudahan untuk pelaku usaha dalam melakukan kegiatan impor yang legal dan resmi. Kemudahan tersebut salah satunya adalah dalam hal perizinan impor. &ldquo;Kami bimbing dan beri kemudahan, yang penting mereka legal dan resmi. Tentu kami bantu dari sisi operasional pada saat mereka lakukan kegiatan impor. Kemudahan ini, menurut Heru, akan didetilkan secara teknis. Adapun relaksasi atau kemudahan ditujukan untuk komoditas prioritas yang dibutuhkan oleh industri kecil. Misalnya, sutra yang tidak diproduksi di dalam negeri akan diberi kemudahan oleh pemerintah supaya pengrajin batik di Pekalongan bisa memproduksi. &ldquo;Juga akan ada optimalisasi pemanfaatan Pusat Logistik Berikat sebagai sentral material yang dibutuhkan,&rdquo; jelasnya. Ia melanjutkan, terkait hal ini akan ada pengumuman dari Menteri Keuangan Sri Mulyani kepada pengusaha. Namun, Heru tidak menyebutkan kapan waktu persisnya. &ldquo;Ini nanti ada pengumuman dari pimpinan bahwa akan ada tentunya kemudahan bagi industri kecil dan menengah yang mau kegiatan impornya secara legal. Tentunya nanti akan ada semacam kemudahan-kemudahan perizinan salah satunya,&rdquo; kata dia. Direktur Eksekutif Center Indonesia of Taxation Analysis (CITA) Yustinus Prastowo mengatakan, adanya penertiban impor berisiko tinggi ini akan memperketat masuknya impor barang berisiko tinggi. Namun, di sisi lain, kebijakan ini akan membuat potensi kelangkaan barang yang selama diimpor secara borongan. Dengan demikian, menurut dia, perlu ada solusi atau jalan tengah agar impor walaupun tertib, tetapi tetap mudah. Menurutnya, hambatan-hambatan impor yang ada saat ini harus ditiadakan supaya bisa masuk sesuai aturan. &ldquo;Perlu dicari solusi bagaimana barang bisa masuk prosedural dalam waktu cepat, dan kita manfaatkan untuk menciptakan substitusi domestiknya,&rdquo; kata Yustinus. Ketua Umum Asosiasi Logistik dan Forwarder Indonesia (ALFI) Yuki Nugrahawan Hanafi menyatakan evaluasi impor beresiko untuk menekan angka penyelundupan ini jangan terlalu lama terkatung-katung. Pasalnya perubahan ini cukup mengganggu proses bisnis perusahaan importir barang yang masuk dalam impor berisiko tinggi. Dari sejumlah barang yang masuk dalam kategori impor berisiko tinggi, ia bilang, tekstil impor termasuk jenis yang cukup terkena imbas. Menurut Yuki, banyak terjadi kekosongan barang tekstil impor di pedagang eceran. &quot;Saya menerima laporan terjadi kekosongan barang, misalnya di Mangga Dua pembelian barangnya menurun karena barangnya memang tidak ada. Untuk itu kami mendorong pemerintah jangan terlalu lama melakukan evaluasi larangan terbatas,&quot; ujarnya.<br />\r\n	<br />\r\n	Artikel ini telah tayang di Kompas.com dengan judul &quot;Bea Cukai akan Permudah Izin Impor Barang&quot;, https://ekonomi.kompas.com/read/2017/09/04/061600126/bea-cukai-akan-permudah-izin-impor-barang.<br />\r\n	&nbsp;</p>\r\n<div style="position: absolute; left: -99999px;">\r\n	JAKARTA, KOMPAS.com - Pemerintah melalui Direktorat Jenderal Bea dan Cukai (DJBC) berupaya menciptakan iklim usaha yang sehat dengan menertibkan praktik impor berisiko tinggi. Hal ini membuat sejumlah barang impor tidak bisa masuk ke Tanah Air yang imbasnya adalah kekosongan barang. Dirjen Bea Cukai Heru Pambudi mengatakan, penertiban ini memang membuat barang yang tidak memenuhi izin impor tidak bisa masuk. &ldquo;Bukan tertahan (di pelabuhan). Selama tidak penuhi izin, tentunya tidak bisa masuk karena kami sudah tertib,&rdquo; katanya saat ditemui usai rapat di kantor Kementerian Koordinator Bidang Perekonomian akhir pekan lalu. Namun demikian, kini, pihaknya tengah menyiapkan kemudahan untuk pelaku usaha dalam melakukan kegiatan impor yang legal dan resmi. Kemudahan tersebut salah satunya adalah dalam hal perizinan impor. &ldquo;Kami bimbing dan beri kemudahan, yang penting mereka legal dan resmi. Tentu kami bantu dari sisi operasional pada saat mereka lakukan kegiatan impor. Kemudahan ini, menurut Heru, akan didetilkan secara teknis. Adapun relaksasi atau kemudahan ditujukan untuk komoditas prioritas yang dibutuhkan oleh industri kecil. Misalnya, sutra yang tidak diproduksi di dalam negeri akan diberi kemudahan oleh pemerintah supaya pengrajin batik di Pekalongan bisa memproduksi. &ldquo;Juga akan ada optimalisasi pemanfaatan Pusat Logistik Berikat sebagai sentral material yang dibutuhkan,&rdquo; jelasnya. Ia melanjutkan, terkait hal ini akan ada pengumuman dari Menteri Keuangan Sri Mulyani kepada pengusaha. Namun, Heru tidak menyebutkan kapan waktu persisnya. &ldquo;Ini nanti ada pengumuman dari pimpinan bahwa akan ada tentunya kemudahan bagi industri kecil dan menengah yang mau kegiatan impornya secara legal. Tentunya nanti akan ada semacam kemudahan-kemudahan perizinan salah satunya,&rdquo; kata dia. Direktur Eksekutif Center Indonesia of Taxation Analysis (CITA) Yustinus Prastowo mengatakan, adanya penertiban impor berisiko tinggi ini akan memperketat masuknya impor barang berisiko tinggi. Namun, di sisi lain, kebijakan ini akan membuat potensi kelangkaan barang yang selama diimpor secara borongan. Dengan demikian, menurut dia, perlu ada solusi atau jalan tengah agar impor walaupun tertib, tetapi tetap mudah. Menurutnya, hambatan-hambatan impor yang ada saat ini harus ditiadakan supaya bisa masuk sesuai aturan. &ldquo;Perlu dicari solusi bagaimana barang bisa masuk prosedural dalam waktu cepat, dan kita manfaatkan untuk menciptakan substitusi domestiknya,&rdquo; kata Yustinus. Ketua Umum Asosiasi Logistik dan Forwarder Indonesia (ALFI) Yuki Nugrahawan Hanafi menyatakan evaluasi impor beresiko untuk menekan angka penyelundupan ini jangan terlalu lama terkatung-katung. Pasalnya perubahan ini cukup mengganggu proses bisnis perusahaan importir barang yang masuk dalam impor berisiko tinggi. Dari sejumlah barang yang masuk dalam kategori impor berisiko tinggi, ia bilang, tekstil impor termasuk jenis yang cukup terkena imbas. Menurut Yuki, banyak terjadi kekosongan barang tekstil impor di pedagang eceran. &quot;Saya menerima laporan terjadi kekosongan barang, misalnya di Mangga Dua pembelian barangnya menurun karena barangnya memang tidak ada. Untuk itu kami mendorong pemerintah jangan terlalu lama melakukan evaluasi larangan terbatas,&quot; ujarnya.<br />\r\n	<br />\r\n	Artikel ini telah tayang di <a href="http://kompas.com">Kompas.com</a> dengan judul &quot;Bea Cukai akan Permudah Izin Impor Barang&quot;, <a href="https://ekonomi.kompas.com/read/2017/09/04/061600126/bea-cukai-akan-permudah-izin-impor-barang">https://ekonomi.kompas.com/read/2017/09/04/061600126/bea-cukai-akan-permudah-izin-impor-barang</a>.</div>\r\n<div style="position: absolute; left: -99999px;">\r\n	JAKARTA, KOMPAS.com - Pemerintah melalui Direktorat Jenderal Bea dan Cukai (DJBC) berupaya menciptakan iklim usaha yang sehat dengan menertibkan praktik impor berisiko tinggi. Hal ini membuat sejumlah barang impor tidak bisa masuk ke Tanah Air yang imbasnya adalah kekosongan barang. Dirjen Bea Cukai Heru Pambudi mengatakan, penertiban ini memang membuat barang yang tidak memenuhi izin impor tidak bisa masuk. &ldquo;Bukan tertahan (di pelabuhan). Selama tidak penuhi izin, tentunya tidak bisa masuk karena kami sudah tertib,&rdquo; katanya saat ditemui usai rapat di kantor Kementerian Koordinator Bidang Perekonomian akhir pekan lalu. Namun demikian, kini, pihaknya tengah menyiapkan kemudahan untuk pelaku usaha dalam melakukan kegiatan impor yang legal dan resmi. Kemudahan tersebut salah satunya adalah dalam hal perizinan impor. &ldquo;Kami bimbing dan beri kemudahan, yang penting mereka legal dan resmi. Tentu kami bantu dari sisi operasional pada saat mereka lakukan kegiatan impor. Kemudahan ini, menurut Heru, akan didetilkan secara teknis. Adapun relaksasi atau kemudahan ditujukan untuk komoditas prioritas yang dibutuhkan oleh industri kecil. Misalnya, sutra yang tidak diproduksi di dalam negeri akan diberi kemudahan oleh pemerintah supaya pengrajin batik di Pekalongan bisa memproduksi. &ldquo;Juga akan ada optimalisasi pemanfaatan Pusat Logistik Berikat sebagai sentral material yang dibutuhkan,&rdquo; jelasnya. Ia melanjutkan, terkait hal ini akan ada pengumuman dari Menteri Keuangan Sri Mulyani kepada pengusaha. Namun, Heru tidak menyebutkan kapan waktu persisnya. &ldquo;Ini nanti ada pengumuman dari pimpinan bahwa akan ada tentunya kemudahan bagi industri kecil dan menengah yang mau kegiatan impornya secara legal. Tentunya nanti akan ada semacam kemudahan-kemudahan perizinan salah satunya,&rdquo; kata dia. Direktur Eksekutif Center Indonesia of Taxation Analysis (CITA) Yustinus Prastowo mengatakan, adanya penertiban impor berisiko tinggi ini akan memperketat masuknya impor barang berisiko tinggi. Namun, di sisi lain, kebijakan ini akan membuat potensi kelangkaan barang yang selama diimpor secara borongan. Dengan demikian, menurut dia, perlu ada solusi atau jalan tengah agar impor walaupun tertib, tetapi tetap mudah. Menurutnya, hambatan-hambatan impor yang ada saat ini harus ditiadakan supaya bisa masuk sesuai aturan. &ldquo;Perlu dicari solusi bagaimana barang bisa masuk prosedural dalam waktu cepat, dan kita manfaatkan untuk menciptakan substitusi domestiknya,&rdquo; kata Yustinus. Ketua Umum Asosiasi Logistik dan Forwarder Indonesia (ALFI) Yuki Nugrahawan Hanafi menyatakan evaluasi impor beresiko untuk menekan angka penyelundupan ini jangan terlalu lama terkatung-katung. Pasalnya perubahan ini cukup mengganggu proses bisnis perusahaan importir barang yang masuk dalam impor berisiko tinggi. Dari sejumlah barang yang masuk dalam kategori impor berisiko tinggi, ia bilang, tekstil impor termasuk jenis yang cukup terkena imbas. Menurut Yuki, banyak terjadi kekosongan barang tekstil impor di pedagang eceran. &quot;Saya menerima laporan terjadi kekosongan barang, misalnya di Mangga Dua pembelian barangnya menurun karena barangnya memang tidak ada. Untuk itu kami mendorong pemerintah jangan terlalu lama melakukan evaluasi larangan terbatas,&quot; ujarnya.<br />\r\n	<br />\r\n	Artikel ini telah tayang di <a href="http://kompas.com">Kompas.com</a> dengan judul &quot;Bea Cukai akan Permudah Izin Impor Barang&quot;, <a href="https://ekonomi.kompas.com/read/2017/09/04/061600126/bea-cukai-akan-permudah-izin-impor-barang">https://ekonomi.kompas.com/read/2017/09/04/061600126/bea-cukai-akan-permudah-izin-impor-barang</a>.</div>\r\n', '<p>\r\n	<span class="tlid-translation translation"><img alt="Suasana aktivitas bongkar muat Terminal Peti Kemas Kalibaru atau New Priok Container Terminal usai diresmikan Presiden Joko Widodo, di Jakarta, Selasa (13/9/2016). " data-aligment="" data-width="780px" src="https://asset.kompas.com/crop/0x0:780x390/780x390/data/photo/2016/10/27/194732820160913-070306-374-terminal.petikemas-.kalibaru-.resmi-.beroperasi-780x390.jpg" /><br />\r\n	The atmosphere of loading and unloading activities of Kalibaru Container Terminal or New Priok Container Terminal after the inauguration of President Joko Widodo, in Jakarta, Tuesday (13/09/2016). JAKARTA, KOMPAS.com - The government through the Directorate General of Customs and Excise (DJBC) seeks to create a healthy business climate by curbing high-risk import practices. This makes a number of imported goods can not enter the country whose impact is the vacancy of goods. Director General of Customs Heru Pambudi said the curbing is indeed making the goods that do not meet the import permit can not enter. &quot;Not stuck (at the port). As long as they do not fulfill the permit, they certainly cannot enter because we have been orderly, &quot;he said when met after the meeting at the office of the Coordinating Ministry for Economic Affairs last weekend. However, now, it is preparing the ease for business actors in conducting legal and official import activities. The ease is one of them is in terms of import licensing. &quot;We guide and give convenience, the important thing is they are legal and official. Of course we help from the operational side when they do import activities. This convenience, according to Heru, will be technically detailed. The relaxation or ease is aimed at the priority commodities needed by small industries. For example, silk that is not produced domestically will be facilitated by the government so that batik producers in Pekalongan can produce. &quot;There will also be optimization of the utilization of the Bonded Logistics Center as the central material needed,&quot; he explained. He continued, in this regard there will be an announcement from Finance Minister Sri Mulyani to entrepreneurs. However, Heru did not say when exactly. &quot;It will be an announcement from the chairman that there will be an easy way for small and medium industries that want to import legally. Surely there will be some ease of licensing one of them, &quot;he said. Executive Director of the Indonesian Center for Taxation Analysis (CITA) Yustinus Prastowo said that the high risk import curve will tighten the import of high-risk goods. However, on the other hand, this policy will create the potential for scarcity of goods during import wholesale. Thus, according to him, there needs to be a solution or a middle ground for import though orderly, but still easy. According to him, the existing import obstacles must be abolished in order to enter according to the rules. &quot;We need to find a solution on how goods can enter procedurally in a short time, and we use them to create domestic substitutions,&quot; said Justin. Chairman of the Indonesian Logistics and Forwarders Association (ALFI) Yuki Nugrahawan Hanafi said that import evaluation is at risk to reduce the number of smugglers. The reason this change is enough to disrupt the business process of importers of goods imported into high-risk imports. Of the high-risk imports, he said, imported textiles are of a kind that is sufficiently affected. According to Yuki, there are many vacuum of imported textile goods at retail merchants. &quot;I received reports of a vacancy in the goods, for example in Mangga Dua, the purchase of goods decreased because the goods were not available. For that reason, we encouraged the government not to take too long to conduct a limited prohibition evaluation,&quot; he said. This article has been published in Kompas.com under the title &quot;Customs Will Permit Import Permits&quot;, https://ekonomi.kompas.com/read/2017/09/04/061600126/bea-cukai-akan-permudah-izin- imported goods. JAKARTA, KOMPAS.com - The government through the Directorate General of Customs and Excise (DJBC) seeks to create a healthy business climate by curbing high-risk import practices. This makes a number of imported goods can not enter the country whose impact is the vacancy of goods. Director General of Customs Heru Pambudi said the curbing is indeed making the goods that do not meet the import permit can not enter. &quot;Not stuck (at the port). As long as they do not fulfill the permit, they certainly cannot enter because we have been orderly, &quot;he said when met after the meeting at the office of the Coordinating Ministry for Economic Affairs last weekend. However, now, it is preparing the ease for business actors in conducting legal and official import activities. The ease is one of them is in terms of import licensing. &quot;We guide and give convenience, the important thing is they are legal and official. Of course we help from the operational side when they do import activities. This convenience, according to Heru, will be technically detailed. The relaxation or ease is aimed at the priority commodities needed by small industries. For example, silk that is not produced domestically will be facilitated by the government so that batik craftsmen in Pekalongan can produce. &quot;There will also be an optimization of the use of the Bonded Logistics Center as the central material needed,&quot;</span></p>\r\n', '', 191, 'list', 'ADMIN', '2018-09-10 14:39:20', 1),
(29, 94, 'Sistem logistik nasional', 'National logistics system', 'sistem-logistik-nasional', '<p>\r\n	<img alt="Hasil gambar untuk sistem logistik" class="irc_mi" height="320" src="http://rmol.co/images/berita/normal/2018/02/437691_09495619022018_Pelabuhan_JICT_Tanjung_Priok.jpg" style="margin-top: 30px;" width="650" /><br />\r\n	Sistem logistik nasional yang belum memadai masih menjadi batu sandungan bagi para pengusaha dalam menjalani aktivitas bisnisnya di Indonesia. Kondisi tersebut berdampak negatif bagi daya saing produk dalam negeri.<br />\r\n	Menurut Pendiri Supply Chain Indonesia (SCI), Setijadi, sistem logistik Indonesia belum mampu berperan sebagaimana mestinya meskipun peran utamanya sebagai pendukung konektivitas antar wilayah demi mencapai kesejahteraan masyarakat.<br />\r\n	&quot;Indikasi persoalan ini dapat dilihat dari ketersediaan tingkat harga, fluktuasi harga dan disparitas harga antar wilayah untuk beberapa barang, komoditas pokok dan strategis di Indonesia. Imbasnya terhadap biaya dan mempengaruhi daya saing barang baik di dalam maupun luar negeri,&quot; kata Setijadi.<br />\r\n	Masalah di dalam sistem logistik Indonesia, tambah dia, sangat kompleks karena berbagai faktor, seperti keragaman komoditas, luas wilayah dan kondisi geografis, kondisi inrrastruktur, dan sebagainya.<br />\r\n	Faktor lainnya adalah banyak pihak terkait dengan berbagai kepentingan dalam sistem logistik, seperti beberapa kementerian dan instansi di tingkat pusat, pemerintah daerah, BUMN, perusahaan swasta, dan lainnya.<br />\r\n	Sementara itu, Setijadi menambahkan, implementasi Blue Print Pengembangan Sistem Logistik Nasional (Sislognas) sejak dua tahun lalu belum sesuai harapan. Padahal blue print ini telah rilis 5 Maret lalu melalui Keputusan Presiden Nomor 26/2012 tanggal 5 Maret 2012. &quot;Kendala implementasi Sislognas adalah komitmen para pihak terkait dalam pengembangan logistik nasional, terkait itikad para pihak untuk menjalankan arah kebijakan dan strategi dalam mewujudkan tujuan Sislognas pada 2025,&quot; ujarnya.<br />\r\n	Di tingkat pemerintah pusat, lanjut Setijadi, komitmen ini diperlukan dari pemerintah daerah, Badan Umum Milk Neg-ra (BUMN) dan swasta sebagai pelaku dan penyedia jasa logistik, selain asosiasi dan pihak lain.<br />\r\n	Masalah lain yang menjadi fokus perhatian, kata Setijadi, evaluasi dan pengawasan dalam implementasi Sislognas, seperti perencanaan dan pembangunan inrrastruktur logistik, maupun dalam kegiatan operasionalnya. Dalam tahap operasional, evaluasi dan pengawasan diperlukan berkaitan dengan kinerja pelayanan yang pada akhirnya dapat merugikan para pengguna tersebut.<br />\r\n	Penguatan Logistik<br />\r\n	Sementara itu, Menteri Perindustrian Mohammad S Hidayat menjelaskan, untuk meningkatkan daya saing industri nasional dibutuhkan dukungan berbagai pihak. Salah satunya adalah sistem logistik yang efisien dan efektif. Pasalnya, negara kepulauan yang luas seperti Indonesia, penguatan sistem logistik harus dengan cara menyeimbangkan jumlah angkutan kargo atau komoditas antar wilayah melalui pembangunan pusat-pusat pertumbuhan ekonomi baru secara progresif dan massif.<br />\r\n	Menurut Menperin, pengembangan sistem logistik nasional dapat dilakukan dengan membuat konektivitas atau keterhubungan pusat-pusat kegiatan ekonomi antar koridor, wilayah, pulau, kota, desa, orang, serta pusat-pusat produksi domestik ke pasar nasional dan internasional melalui penyediaan infrastruktur logistik secara efektif dan efisien.<br />\r\n	Oleh karena itu, Sistem Logistik Nasional perlu diperkuat untuk mengelola dan mengkoordinasikan komponen penyusun sistem logistik yang meliputi komoditas, SDM, Pelaku dan Penyedia Jasa Logistik, Infrastruktur dan Teknologi, dan Regulasi dan Kebijakan dalam rangka menata dan mengelola pergerakan barang atau komoditas dari wilayah penghasil ke wilayah konsumen secara efektif dan efisien untuk membangun daya saing nasional dan meningkatkan kesejahteraan masyarakat.<br />\r\n	Dalam pembangunan pusat-pusat pertumbuhan industri yang baru, Kementerian Perindustrian telah menginisiasi dengan menyusun Master Plan dan Rencana Strategis beberapa kawasan industri, di antaranya adalah Kawasan Ekonomi Khusus Sei Mangkei, dan Kawasan Industri Kuala Tanjung di Sumatera Utara serta Kawasan Industri Bitung di Sulawesi Utara. Pembangunan kawasan industri tersebut, diintegrasikan dengan infrastruktur dasar dan berbagai komponen sistem logistik, salah satunya adalah Pelabuhan Kuala Tanjung.<br />\r\n	Pelabuhan Kuala Tanjung di Selat Malaka memiliki akses langsung pengapalan dengan volume 110-120 ribu pelayaran per tahun. Pelabuhan Kuala Tanjung dan aset jaringan intermoda yang terbangun di Sumatera Utara, diharapkan mengurangi ketergantungan absolut terhadap sistem logistik. iwan</p>\r\n', '<p>\r\n	<img alt="Hasil gambar untuk sistem logistik" class="irc_mi" height="320" src="http://rmol.co/images/berita/normal/2018/02/437691_09495619022018_Pelabuhan_JICT_Tanjung_Priok.jpg" style="margin-top: 30px;" width="650" /><br />\r\n	Inadequate national logistic system is still a stumbling block for entrepreneurs in living their business activities in Indonesia. These conditions have a negative impact on the competitiveness of domestic products.<br />\r\n	According to the Founder of Supply Chain Indonesia (SCI), Setijadi, Indonesia&#39;s logistics system has not been able to play its role properly despite its main role as a supporter of inter-regional connectivity in order to achieve community welfare.<br />\r\n	&quot;The indication of this problem can be seen from the availability of price level, price fluctuation and price disparity between regions for some goods, basic commodities and strategic in Indonesia, the impact on cost and affect the competitiveness of goods both at home and abroad,&quot; Setijadi said.<br />\r\n	Problems within Indonesia&#39;s logistics system, he added, are complex because of various factors, such as commodity diversity, geographical area, geographical condition, infrastructure condition, and so forth.<br />\r\n	Another factor is that many stakeholders are concerned with various interests in logistics systems, such as ministries and agencies at the central, regional, state-owned, private, and other enterprises.<br />\r\n	Meanwhile, Setijadi added that the implementation of Blue Print National Logistics System Development (Sislognas) since two years ago has not been as expected. Though this blueprint has been released last March 5 through Presidential Decree Number 26/2012 dated March 5, 2012. &quot;The obstacle of Sislognas implementation is the commitment of the relevant parties in the development of national logistics, in relation to the intention of the parties to carry out the policy and strategy direction in realizing the goals of Sislognas on 2025, &quot;he said.<br />\r\n	At the central government level, continued Setijadi, this commitment is required from the local government, the General Agency of the State-Owned Enterprise (BUMN) and the private sector as the perpetrators and providers of logistics services, in addition to associations and other parties.<br />\r\n	Other issues that become the focus of attention, said Setijadi, evaluation and supervision in the implementation of Sislognas, such as planning and construction logistics infrastructure, as well as in operational activities. In the operational stage, evaluation and supervision is necessary in relation to the performance of the service which can ultimately harm these users.<br />\r\n	Logistics Strengthening<br />\r\n	Meanwhile, Minister of Industry Mohammad S Hidayat explained, to improve the competitiveness of national industries needed the support of various parties. One of them is an efficient and effective logistics system. Because a vast archipelagic country such as Indonesia, the strengthening of logistics systems must be by balancing the amount of cargo or commodity transport among regions through the development of new centers of progressive and massive new economic growth.<br />\r\n	According to Minister of Industry, the development of national logistics system can be done by making connectivity or connectedness of economic activity centers among corridor, region, island, city, village, people and domestic production centers to national and international markets through provision of logistics infrastructure effectively and efficient.<br />\r\n	Therefore, the National Logistics System needs to be strengthened to manage and coordinate components of the logistics system comprising commodities, human resources, actors and service providers Logistics, Infrastructure and Technology, and Regulation and Policy in order to organize and manage the movement of goods or commodities from producing regions to the consumer area effectively and efficiently to build national competitiveness and improve the welfare of society.<br />\r\n	In the construction of new industrial growth centers, the Ministry of Industry has initiated by preparing the Master Plan and Strategic Plan for several industrial zones, including the Sei Mangkei Special Economic Zone, and the Industrial Estate of Kuala Tanjung in North Sumatra and the Bitung Industrial Estate in North Sulawesi. The development of the industrial estate, integrated with basic infrastructure and various components of logistics system, one of which is the Port of Kuala Tanjung.<br />\r\n	The Port of Kuala Tanjung in the Malacca Strait has direct access to shipment of 110-120 thousand ships per year. Port of Kuala Tanjung and intermoda network assets built in North Sumatra, are expected to reduce absolute dependency on logistics systems. iwan<br />\r\n	&nbsp;</p>\r\n', '', 104, 'list', 'administrator', '2018-09-10 14:39:32', 1),
(30, 94, 'Sistem logistik nasional', 'National logistics system', 'sistem-logistik-nasional', '<p>\r\n	<img alt="Hasil gambar untuk sistem logistik" class="irc_mi" height="320" src="http://rmol.co/images/berita/normal/2018/02/437691_09495619022018_Pelabuhan_JICT_Tanjung_Priok.jpg" style="margin-top: 30px;" width="650" /><br />\r\n	Sistem logistik nasional yang belum memadai masih menjadi batu sandungan bagi para pengusaha dalam menjalani aktivitas bisnisnya di Indonesia. Kondisi tersebut berdampak negatif bagi daya saing produk dalam negeri.<br />\r\n	Menurut Pendiri Supply Chain Indonesia (SCI), Setijadi, sistem logistik Indonesia belum mampu berperan sebagaimana mestinya meskipun peran utamanya sebagai pendukung konektivitas antar wilayah demi mencapai kesejahteraan masyarakat.<br />\r\n	&quot;Indikasi persoalan ini dapat dilihat dari ketersediaan tingkat harga, fluktuasi harga dan disparitas harga antar wilayah untuk beberapa barang, komoditas pokok dan strategis di Indonesia. Imbasnya terhadap biaya dan mempengaruhi daya saing barang baik di dalam maupun luar negeri,&quot; kata Setijadi.<br />\r\n	Masalah di dalam sistem logistik Indonesia, tambah dia, sangat kompleks karena berbagai faktor, seperti keragaman komoditas, luas wilayah dan kondisi geografis, kondisi inrrastruktur, dan sebagainya.<br />\r\n	Faktor lainnya adalah banyak pihak terkait dengan berbagai kepentingan dalam sistem logistik, seperti beberapa kementerian dan instansi di tingkat pusat, pemerintah daerah, BUMN, perusahaan swasta, dan lainnya.<br />\r\n	Sementara itu, Setijadi menambahkan, implementasi Blue Print Pengembangan Sistem Logistik Nasional (Sislognas) sejak dua tahun lalu belum sesuai harapan. Padahal blue print ini telah rilis 5 Maret lalu melalui Keputusan Presiden Nomor 26/2012 tanggal 5 Maret 2012. &quot;Kendala implementasi Sislognas adalah komitmen para pihak terkait dalam pengembangan logistik nasional, terkait itikad para pihak untuk menjalankan arah kebijakan dan strategi dalam mewujudkan tujuan Sislognas pada 2025,&quot; ujarnya.<br />\r\n	Di tingkat pemerintah pusat, lanjut Setijadi, komitmen ini diperlukan dari pemerintah daerah, Badan Umum Milk Neg-ra (BUMN) dan swasta sebagai pelaku dan penyedia jasa logistik, selain asosiasi dan pihak lain.<br />\r\n	Masalah lain yang menjadi fokus perhatian, kata Setijadi, evaluasi dan pengawasan dalam implementasi Sislognas, seperti perencanaan dan pembangunan inrrastruktur logistik, maupun dalam kegiatan operasionalnya. Dalam tahap operasional, evaluasi dan pengawasan diperlukan berkaitan dengan kinerja pelayanan yang pada akhirnya dapat merugikan para pengguna tersebut.<br />\r\n	Penguatan Logistik<br />\r\n	Sementara itu, Menteri Perindustrian Mohammad S Hidayat menjelaskan, untuk meningkatkan daya saing industri nasional dibutuhkan dukungan berbagai pihak. Salah satunya adalah sistem logistik yang efisien dan efektif. Pasalnya, negara kepulauan yang luas seperti Indonesia, penguatan sistem logistik harus dengan cara menyeimbangkan jumlah angkutan kargo atau komoditas antar wilayah melalui pembangunan pusat-pusat pertumbuhan ekonomi baru secara progresif dan massif.<br />\r\n	Menurut Menperin, pengembangan sistem logistik nasional dapat dilakukan dengan membuat konektivitas atau keterhubungan pusat-pusat kegiatan ekonomi antar koridor, wilayah, pulau, kota, desa, orang, serta pusat-pusat produksi domestik ke pasar nasional dan internasional melalui penyediaan infrastruktur logistik secara efektif dan efisien.<br />\r\n	Oleh karena itu, Sistem Logistik Nasional perlu diperkuat untuk mengelola dan mengkoordinasikan komponen penyusun sistem logistik yang meliputi komoditas, SDM, Pelaku dan Penyedia Jasa Logistik, Infrastruktur dan Teknologi, dan Regulasi dan Kebijakan dalam rangka menata dan mengelola pergerakan barang atau komoditas dari wilayah penghasil ke wilayah konsumen secara efektif dan efisien untuk membangun daya saing nasional dan meningkatkan kesejahteraan masyarakat.<br />\r\n	Dalam pembangunan pusat-pusat pertumbuhan industri yang baru, Kementerian Perindustrian telah menginisiasi dengan menyusun Master Plan dan Rencana Strategis beberapa kawasan industri, di antaranya adalah Kawasan Ekonomi Khusus Sei Mangkei, dan Kawasan Industri Kuala Tanjung di Sumatera Utara serta Kawasan Industri Bitung di Sulawesi Utara. Pembangunan kawasan industri tersebut, diintegrasikan dengan infrastruktur dasar dan berbagai komponen sistem logistik, salah satunya adalah Pelabuhan Kuala Tanjung.<br />\r\n	Pelabuhan Kuala Tanjung di Selat Malaka memiliki akses langsung pengapalan dengan volume 110-120 ribu pelayaran per tahun. Pelabuhan Kuala Tanjung dan aset jaringan intermoda yang terbangun di Sumatera Utara, diharapkan mengurangi ketergantungan absolut terhadap sistem logistik. iwan</p>\r\n', '<p>\r\n	<img alt="Hasil gambar untuk sistem logistik" class="irc_mi" height="320" src="http://rmol.co/images/berita/normal/2018/02/437691_09495619022018_Pelabuhan_JICT_Tanjung_Priok.jpg" style="margin-top: 30px;" width="650" /><br />\r\n	Inadequate national logistic system is still a stumbling block for entrepreneurs in living their business activities in Indonesia. These conditions have a negative impact on the competitiveness of domestic products.<br />\r\n	According to the Founder of Supply Chain Indonesia (SCI), Setijadi, Indonesia&#39;s logistics system has not been able to play its role properly despite its main role as a supporter of inter-regional connectivity in order to achieve community welfare.<br />\r\n	&quot;The indication of this problem can be seen from the availability of price level, price fluctuation and price disparity between regions for some goods, basic commodities and strategic in Indonesia, the impact on cost and affect the competitiveness of goods both at home and abroad,&quot; Setijadi said.<br />\r\n	Problems within Indonesia&#39;s logistics system, he added, are complex because of various factors, such as commodity diversity, geographical area, geographical condition, infrastructure condition, and so forth.<br />\r\n	Another factor is that many stakeholders are concerned with various interests in logistics systems, such as ministries and agencies at the central, regional, state-owned, private, and other enterprises.<br />\r\n	Meanwhile, Setijadi added that the implementation of Blue Print National Logistics System Development (Sislognas) since two years ago has not been as expected. Though this blueprint has been released last March 5 through Presidential Decree Number 26/2012 dated March 5, 2012. &quot;The obstacle of Sislognas implementation is the commitment of the relevant parties in the development of national logistics, in relation to the intention of the parties to carry out the policy and strategy direction in realizing the goals of Sislognas on 2025, &quot;he said.<br />\r\n	At the central government level, continued Setijadi, this commitment is required from the local government, the General Agency of the State-Owned Enterprise (BUMN) and the private sector as the perpetrators and providers of logistics services, in addition to associations and other parties.<br />\r\n	Other issues that become the focus of attention, said Setijadi, evaluation and supervision in the implementation of Sislognas, such as planning and construction logistics infrastructure, as well as in operational activities. In the operational stage, evaluation and supervision is necessary in relation to the performance of the service which can ultimately harm these users.<br />\r\n	Logistics Strengthening<br />\r\n	Meanwhile, Minister of Industry Mohammad S Hidayat explained, to improve the competitiveness of national industries needed the support of various parties. One of them is an efficient and effective logistics system. Because a vast archipelagic country such as Indonesia, the strengthening of logistics systems must be by balancing the amount of cargo or commodity transport among regions through the development of new centers of progressive and massive new economic growth.<br />\r\n	According to Minister of Industry, the development of national logistics system can be done by making connectivity or connectedness of economic activity centers among corridor, region, island, city, village, people and domestic production centers to national and international markets through provision of logistics infrastructure effectively and efficient.<br />\r\n	Therefore, the National Logistics System needs to be strengthened to manage and coordinate components of the logistics system comprising commodities, human resources, actors and service providers Logistics, Infrastructure and Technology, and Regulation and Policy in order to organize and manage the movement of goods or commodities from producing regions to the consumer area effectively and efficiently to build national competitiveness and improve the welfare of society.<br />\r\n	In the construction of new industrial growth centers, the Ministry of Industry has initiated by preparing the Master Plan and Strategic Plan for several industrial zones, including the Sei Mangkei Special Economic Zone, and the Industrial Estate of Kuala Tanjung in North Sumatra and the Bitung Industrial Estate in North Sulawesi. The development of the industrial estate, integrated with basic infrastructure and various components of logistics system, one of which is the Port of Kuala Tanjung.<br />\r\n	The Port of Kuala Tanjung in the Malacca Strait has direct access to shipment of 110-120 thousand ships per year. Port of Kuala Tanjung and intermoda network assets built in North Sumatra, are expected to reduce absolute dependency on logistics systems. iwan<br />\r\n	&nbsp;</p>\r\n', '', 2000, 'list', 'administrator', '2018-09-10 14:39:43', 1),
(31, 95, 'a', 'a', 'a', '<p>\r\n	a</p>\r\n', '<p>\r\n	a</p>\r\n', '', 54, 'list', 'robby', '2018-09-12 14:30:14', 1);

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
(1, 6, 1, 'tes', 10, 100, 'acak', '', '2019-09-09 10:10:00', '2019-09-20 10:10:00', 'UWZCK'),
(2, 0, 1, 'tes', 2, 30, 'acak', '', '2019-09-14 10:10:00', '2019-09-30 10:08:00', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tr_ikut_ujian`
--

INSERT INTO `tr_ikut_ujian` (`id`, `id_tes`, `id_user`, `list_soal`, `list_jawaban`, `jml_benar`, `nilai`, `nilai_bobot`, `tgl_mulai`, `tgl_selesai`, `status`) VALUES
(2, 1, 7, '41,34,51,47,44,43,50,48,35,39', '41:A:N,34:D:N,51::N,47::N,44::N,43::N,50::N,48::N,35::N,39::N', 1, '10.00', '10.00', '2019-09-14 17:23:27', '2019-09-14 17:43:27', 'N'),
(13, 1, 8, '42,40,47,36,41,37,49,45,39,46', '42:A:N,40:B:N,47:A:N,36:D:N,41:B:N,37:C:N,49:A:N,45:D:N,39:C:N,46:C:N', 3, '30.00', '30.00', '2019-09-14 22:31:36', '2019-09-15 00:11:36', 'N');

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
(1, 'admin', '1', 6, '2019-09-12 09:34:49', '2019-09-12 09:34:49', 6, '2019-09-12 09:34:49', NULL, NULL, '::1', 1, NULL, NULL, NULL, 0, '2019-09-06 12:45:51', NULL, NULL, NULL, NULL, 0);

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

INSERT INTO `user_role` (`id`, `company_id`, `name`, `definition`, `description`, `route`, `created_by`, `created_at`, `updated_by`, `updated_at`, `deleted_by`, `deleted_at`, `deleted`) VALUES
(0, 0, 'Super Admin', 'Super Administrator', NULL, 'admin_side/menu', 0, '2018-10-27 17:52:08', NULL, NULL, NULL, NULL, 0),
(1, 0, 'Admin', 'Administrator (Owner)', NULL, 'admin_side/beranda', 0, '2017-03-06 01:19:26', 2, '2018-10-27 18:55:37', NULL, NULL, 0),
(2, 0, 'Anggota Kube', 'Anggota Kube', NULL, NULL, 0, '2017-03-06 01:19:26', NULL, NULL, NULL, NULL, 0),
(3, 0, 'Anggota Rutilahu', 'Anggota Rutilahu', NULL, NULL, 0, '2018-09-02 14:20:07', NULL, NULL, NULL, NULL, 0),
(4, 0, 'Anggota Sarling', 'Anggota Sarling', NULL, NULL, 0, '2018-09-02 14:20:08', NULL, NULL, NULL, NULL, 0);

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
(1, 1);

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
-- Indexes for table `m_admin`
--
ALTER TABLE `m_admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kon_id` (`kon_id`);

--
-- Indexes for table `m_guru`
--
ALTER TABLE `m_guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_mapel`
--
ALTER TABLE `m_mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_siswa`
--
ALTER TABLE `m_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_soal`
--
ALTER TABLE `m_soal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `id_mapel` (`id_mapel`);

--
-- Indexes for table `profil_dir`
--
ALTER TABLE `profil_dir`
  ADD PRIMARY KEY (`id_profil`);

--
-- Indexes for table `regulasi`
--
ALTER TABLE `regulasi`
  ADD PRIMARY KEY (`id_reg`);

--
-- Indexes for table `smt_article`
--
ALTER TABLE `smt_article`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `activity_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
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
-- AUTO_INCREMENT for table `m_admin`
--
ALTER TABLE `m_admin`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `m_guru`
--
ALTER TABLE `m_guru`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `m_mapel`
--
ALTER TABLE `m_mapel`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `m_siswa`
--
ALTER TABLE `m_siswa`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `m_soal`
--
ALTER TABLE `m_soal`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `profil_dir`
--
ALTER TABLE `profil_dir`
  MODIFY `id_profil` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `regulasi`
--
ALTER TABLE `regulasi`
  MODIFY `id_reg` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `smt_article`
--
ALTER TABLE `smt_article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
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
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
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
