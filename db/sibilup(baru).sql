-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 09 Sep 2019 pada 06.26
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `activity_logs`
--

INSERT INTO `activity_logs` (`activity_id`, `user_id`, `company_id`, `activity_type`, `activity_data`, `activity_time`, `activity_ip_address`, `activity_device`, `activity_os`, `activity_browser`, `activity_location`) VALUES
(1, 1, 0, 'Login to system', 'Login via web browser', '2019-09-08 12:46:51', '::1', 'PC', 'Windows 10', 'Chrome 76.0.3809', NULL),
(2, 1, 0, 'Login to system', 'Login via web browser', '2019-09-09 08:27:49', '::1', 'PC', 'Windows 10', 'Chrome 76.0.3809', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(1, 'admin', '1', 2, '2019-09-09 08:27:49', '2019-09-09 08:27:49', 2, '2019-09-09 08:27:49', NULL, NULL, '::1', 1, NULL, NULL, NULL, 0, '2019-09-06 12:45:51', NULL, NULL, NULL, NULL, 0);

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
  MODIFY `activity_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
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
  MODIFY `id_modul` int(11) NOT NULL AUTO_INCREMENT;
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
