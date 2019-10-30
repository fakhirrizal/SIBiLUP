-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 30 Okt 2019 pada 12.25
-- Versi server: 10.3.18-MariaDB-cll-lve
-- Versi PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aplikasi_sibilup`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `activity_logs`
--

CREATE TABLE `activity_logs` (
  `activity_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `company_id` int(11) UNSIGNED NOT NULL,
  `activity_type` varchar(64) NOT NULL,
  `activity_data` text DEFAULT NULL,
  `activity_time` datetime NOT NULL,
  `activity_ip_address` varchar(15) DEFAULT NULL,
  `activity_device` varchar(32) DEFAULT NULL,
  `activity_os` varchar(16) DEFAULT NULL,
  `activity_browser` varchar(16) DEFAULT NULL,
  `activity_location` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `activity_logs`
--

INSERT INTO `activity_logs` (`activity_id`, `user_id`, `company_id`, `activity_type`, `activity_data`, `activity_time`, `activity_ip_address`, `activity_device`, `activity_os`, `activity_browser`, `activity_location`) VALUES
(1, 1, 0, 'Login to system', 'Login via web browser', '2019-09-30 08:25:25', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(2, 1, 0, 'Login to system', 'Login via web browser', '2019-09-30 09:59:25', '103.31.157.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(3, 1, 0, 'Login to system', 'Login via web browser', '2019-09-30 10:08:57', '103.31.157.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(4, 1, 0, 'Updating data', 'Update admin data', '2019-09-30 10:16:10', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(5, 2, 0, 'Login to system', 'Login via web browser', '2019-09-30 10:17:49', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(6, 1, 0, 'Login to system', 'Login via web browser', '2019-09-30 11:39:13', '103.211.50.7', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(7, 1, 0, 'Login to system', 'Login via web browser', '2019-10-01 14:26:25', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(8, 1, 0, 'Login to system', 'Login via web browser', '2019-10-02 10:35:19', '117.54.110.110', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(9, 1, 0, 'Login to system', 'Login via web browser', '2019-10-04 15:12:14', '103.31.157.222', 'PC', 'Android', 'Chrome 77.0.3865', NULL),
(10, 1, 0, 'Login to system', 'Login via web browser', '2019-10-04 15:15:46', '115.178.251.86', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(11, 1, 0, 'Login to system', 'Login via web browser', '2019-10-06 13:55:02', '114.124.204.241', 'PC', 'Windows 10', 'Chrome 76.0.3809', NULL),
(12, 1, 0, 'Updating data', 'Update admin data', '2019-10-06 14:02:57', '114.124.204.241', 'PC', 'Windows 10', 'Chrome 76.0.3809', NULL),
(13, 1, 0, 'Adding data', 'Add admin data', '2019-10-06 14:04:33', '114.124.204.241', 'PC', 'Windows 10', 'Chrome 76.0.3809', NULL),
(14, 1, 0, 'Adding data', 'Add admin data', '2019-10-06 14:07:05', '114.124.204.241', 'PC', 'Windows 10', 'Chrome 76.0.3809', NULL),
(15, 1, 0, 'Adding data', 'Add admin data', '2019-10-06 14:13:54', '114.124.204.241', 'PC', 'Windows 10', 'Chrome 76.0.3809', NULL),
(16, 1, 0, 'Adding data', 'Add admin data', '2019-10-06 14:15:03', '114.124.204.241', 'PC', 'Windows 10', 'Chrome 76.0.3809', NULL),
(17, 1, 0, 'Adding data', 'Add admin data', '2019-10-06 14:16:06', '114.124.204.241', 'PC', 'Windows 10', 'Chrome 76.0.3809', NULL),
(18, 1, 0, 'Adding data', 'Add admin data', '2019-10-06 14:17:54', '114.124.204.241', 'PC', 'Windows 10', 'Chrome 76.0.3809', NULL),
(19, 1, 0, 'Adding data', 'Add admin data', '2019-10-06 14:18:53', '114.124.204.241', 'PC', 'Windows 10', 'Chrome 76.0.3809', NULL),
(20, 1, 0, 'Adding data', 'Add admin data', '2019-10-06 14:19:59', '114.124.204.241', 'PC', 'Windows 10', 'Chrome 76.0.3809', NULL),
(21, 9, 0, 'Login to system', 'Login via web browser', '2019-10-06 14:23:05', '114.124.204.241', 'PC', 'Windows 10', 'Chrome 76.0.3809', NULL),
(22, 2, 0, 'Login to system', 'Login via web browser', '2019-10-06 14:26:00', '114.124.204.241', 'PC', 'Windows 10', 'Chrome 76.0.3809', NULL),
(23, 1, 0, 'Login to system', 'Login via web browser', '2019-10-08 09:30:18', '103.129.105.31', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(24, 1, 0, 'Login to system', 'Login via web browser', '2019-10-08 21:55:08', '103.129.105.31', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(25, 1, 0, 'Login to system', 'Login via web browser', '2019-10-09 01:14:34', '103.129.105.29', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(26, 2, 0, 'Login to system', 'Login via web browser', '2019-10-09 16:50:44', '103.31.157.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(27, 1, 0, 'Login to system', 'Login via web browser', '2019-10-10 10:02:40', '115.178.223.70', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(28, 1, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-10 11:17:51', '103.31.157.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(29, 1, 0, 'Login to system', 'Login via web browser', '2019-10-11 15:00:58', '103.31.157.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(30, 1, 0, 'Login to system', 'Login via web browser', '2019-10-11 15:29:05', '103.31.157.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(31, 1, 0, 'Login to system', 'Login via web browser', '2019-10-14 08:31:25', '103.129.105.29', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(32, 1, 0, 'Login to system', 'Login via web browser', '2019-10-14 08:31:54', '103.129.105.31', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(33, 1, 0, 'Login to system', 'Login via web browser', '2019-10-14 08:32:07', '103.129.105.31', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(34, 1, 0, 'Login to system', 'Login via web browser', '2019-10-14 08:39:26', '115.178.235.208', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(35, 2, 0, 'Login to system', 'Login via web browser', '2019-10-14 09:32:34', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(36, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-14 09:55:01', '103.129.105.31', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(37, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-14 09:56:11', '103.129.105.29', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(38, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-14 09:57:02', '103.129.105.29', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(39, 2, 0, 'Login to system', 'Login via web browser', '2019-10-16 19:34:23', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(40, 1, 0, 'Login to system', 'Login via web browser', '2019-10-17 11:03:07', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(41, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 11:05:00', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(42, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 11:05:09', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(43, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 11:05:35', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(44, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 11:06:04', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(45, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 11:06:25', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(46, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 11:06:38', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(47, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 11:07:06', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(48, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 11:07:19', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(49, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 11:07:40', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(50, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 11:08:00', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(51, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 11:08:10', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(52, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 11:08:19', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(53, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 11:09:09', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(54, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 11:09:45', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(55, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 11:09:58', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(56, 2, 0, 'Login to system', 'Login via web browser', '2019-10-17 11:29:49', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(57, 1, 0, 'Login to system', 'Login via web browser', '2019-10-17 14:45:59', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(58, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 14:56:42', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(59, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 14:56:58', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(60, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 14:57:12', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(61, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 14:57:23', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(62, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 14:57:41', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(63, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 14:57:57', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(64, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 14:58:08', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(65, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 14:58:20', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(66, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 14:58:39', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(67, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 14:59:17', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(68, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 14:59:38', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(69, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 14:59:51', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(70, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 15:00:04', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(71, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 15:00:17', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(72, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 15:00:30', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(73, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 15:00:44', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(74, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 15:00:57', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(75, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 15:01:10', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(76, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 15:01:23', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(77, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 15:07:25', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(78, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 15:07:56', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(79, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 15:08:34', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(80, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 15:08:59', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(81, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 15:09:30', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(82, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 15:10:04', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(83, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 15:10:35', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(84, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 15:10:57', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(85, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 15:11:20', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(86, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 15:11:40', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(87, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 15:12:32', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(88, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 15:12:51', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(89, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 15:13:11', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(90, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 15:13:32', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(91, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 15:13:50', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(92, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 15:14:15', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(93, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 15:14:36', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(94, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 15:14:54', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(95, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 15:15:15', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(96, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 15:15:39', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(97, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 15:16:03', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(98, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 15:17:12', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(99, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 15:17:35', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(100, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 15:18:28', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(101, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 15:18:58', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(102, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 15:19:55', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(103, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 15:20:31', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(104, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 15:21:15', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(105, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 15:21:38', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(106, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 15:21:55', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(107, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 15:22:16', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(108, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 15:22:43', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(109, 1, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-17 15:22:57', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(110, 2, 0, 'Login to system', 'Login via web browser', '2019-10-17 16:25:20', '103.31.157.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(111, 2, 0, 'Adding data', 'Add admin data', '2019-10-17 16:31:29', '103.31.157.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(112, 2, 0, 'Adding data', 'Add admin data', '2019-10-17 16:34:44', '103.31.157.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(113, 2, 0, 'Adding data', 'Add admin data', '2019-10-17 16:35:59', '103.31.157.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(114, 2, 0, 'Adding data', 'Add admin data', '2019-10-17 16:40:02', '103.31.157.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(115, 2, 0, 'Adding data', 'Add admin data', '2019-10-17 16:41:30', '103.31.157.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(116, 2, 0, 'Adding data', 'Add admin data', '2019-10-17 16:42:46', '103.31.157.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(117, 12, 0, 'Login to system', 'Login via web browser', '2019-10-17 18:31:06', '103.31.157.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(118, 12, 0, 'Login to system', 'Login via web browser', '2019-10-17 18:57:06', '103.31.157.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(119, 1, 0, 'Login to system', 'Login via web browser', '2019-10-17 23:57:51', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(120, 1, 0, 'Login to system', 'Login via web browser', '2019-10-18 00:20:22', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(121, 1, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-18 00:49:50', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(122, 1, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-18 00:50:13', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(123, 1, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-18 00:51:10', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(124, 1, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-18 00:52:18', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(125, 1, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-18 00:53:26', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(126, 1, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-18 00:53:59', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(127, 1, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-18 00:54:21', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(128, 1, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-18 00:54:40', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(129, 1, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-18 00:55:06', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(130, 1, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-18 00:56:07', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(131, 1, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-18 00:56:41', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(132, 1, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-18 00:56:54', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(133, 1, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-18 00:57:17', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(134, 1, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-18 00:57:27', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(135, 1, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-18 00:57:45', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(136, 1, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-18 00:58:14', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(137, 1, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-18 00:59:12', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(138, 1, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-18 00:59:49', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(139, 1, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-18 01:00:04', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(140, 1, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-18 01:00:19', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(141, 1, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-18 01:00:33', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(142, 1, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-18 01:01:05', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(143, 1, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-18 01:01:20', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(144, 1, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-18 01:01:48', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(145, 1, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-18 01:02:01', '114.129.17.66', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(146, 2, 0, 'Login to system', 'Login via web browser', '2019-10-18 12:47:34', '182.0.133.254', 'PC', 'Android', 'Chrome 77.0.3865', NULL),
(147, 2, 0, 'Login to system', 'Login via web browser', '2019-10-18 15:18:24', '103.211.50.5', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(148, 1, 0, 'Login to system', 'Login via web browser', '2019-10-19 18:44:58', '103.44.37.122', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(149, 2, 0, 'Login to system', 'Login via web browser', '2019-10-19 19:17:49', '125.161.137.170', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(150, 2, 0, 'Login to system', 'Login via web browser', '2019-10-20 06:08:08', '125.161.137.170', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(151, 1, 0, 'Login to system', 'Login via web browser', '2019-10-20 09:47:04', '103.44.37.122', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(152, 1, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-20 09:50:37', '103.129.105.30', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(153, 1, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-20 09:52:06', '103.129.105.30', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(154, 1, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-20 09:52:11', '103.129.105.30', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(155, 1, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-20 09:55:01', '103.129.105.30', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(156, 1, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-20 09:56:12', '103.129.105.30', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(157, 1, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-20 09:56:16', '103.129.105.30', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(158, 1, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-20 09:56:19', '103.129.105.30', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(159, 1, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-20 09:57:02', '103.129.105.28', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(160, 1, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-20 09:58:08', '103.129.105.30', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(161, 1, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-20 09:58:25', '103.129.105.30', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(162, 1, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-20 09:59:03', '103.129.105.30', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(163, 1, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-20 09:59:07', '103.129.105.30', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(164, 1, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-20 09:59:48', '103.129.105.30', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(165, 1, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-20 10:01:14', '103.129.105.30', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(166, 1, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-20 10:01:18', '103.129.105.30', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(167, 1, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-20 10:01:54', '103.129.105.30', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(168, 2, 0, 'Login to system', 'Login via web browser', '2019-10-20 10:18:15', '125.161.137.170', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(169, 12, 0, 'Login to system', 'Login via web browser', '2019-10-20 10:54:20', '125.161.137.170', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(170, 2, 0, 'Login to system', 'Login via web browser', '2019-10-20 15:49:09', '36.90.5.62', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(171, 12, 0, 'Login to system', 'Login via web browser', '2019-10-20 16:59:19', '36.90.5.62', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(172, 2, 0, 'Login to system', 'Login via web browser', '2019-10-21 14:32:56', '103.31.157.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(173, 15, 0, 'Login to system', 'Login via web browser', '2019-10-21 14:33:56', '103.31.157.222', 'PC', 'Windows 10', 'Edge 18.17763', NULL),
(174, 2, 0, 'Login to system', 'Login via web browser', '2019-10-21 18:44:11', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(175, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 18:54:02', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(176, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 18:54:08', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(177, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 18:54:13', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(178, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 18:54:19', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(179, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 18:54:25', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(180, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 18:55:32', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(181, 2, 0, 'Login to system', 'Login via web browser', '2019-10-21 19:01:30', '103.31.157.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(182, 2, 0, 'Login to system', 'Login via web browser', '2019-10-21 19:06:38', '103.211.50.2', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(183, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:12:41', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(184, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:12:44', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(185, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:12:47', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(186, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:12:49', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(187, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:12:52', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(188, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:15:07', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(189, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:15:21', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(190, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:15:46', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(191, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:15:57', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(192, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:16:01', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(193, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:16:05', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(194, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:16:08', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(195, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:16:12', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(196, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:16:18', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(197, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:16:51', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(198, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:16:55', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(199, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:16:59', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(200, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:17:03', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(201, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:17:07', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(202, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:17:11', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(203, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:17:16', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(204, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:17:20', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(205, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:17:24', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(206, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:17:28', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(207, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:18:42', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(208, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:18:46', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(209, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:18:50', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(210, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:18:54', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(211, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:18:59', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(212, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:19:03', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(213, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:19:06', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(214, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:19:09', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(215, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:19:13', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(216, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:19:18', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(217, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:20:02', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(218, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:20:07', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(219, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:22:14', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(220, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:22:18', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(221, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:22:22', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(222, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:22:25', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(223, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:22:29', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(224, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:22:34', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(225, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:22:38', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(226, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:23:24', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(227, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:23:27', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(228, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:23:30', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(229, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:23:33', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(230, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:23:38', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(231, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:23:42', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(232, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:23:46', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(233, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:24:48', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(234, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:24:52', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(235, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:24:56', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(236, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:25:00', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(237, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:25:05', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(238, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:25:08', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(239, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:25:12', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(240, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:25:15', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(241, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:25:20', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(242, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:25:25', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(243, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:25:31', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(244, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:25:35', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(245, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:25:39', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(246, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:26:36', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(247, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:26:40', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(248, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:26:44', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(249, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:26:50', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(250, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:26:54', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(251, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:26:58', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(252, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:27:02', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(253, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:27:06', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(254, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:27:09', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(255, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:27:13', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(256, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:28:16', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(257, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:28:19', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(258, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:28:23', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(259, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:28:27', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(260, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:28:31', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(261, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:28:37', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(262, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:28:42', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(263, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:28:46', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(264, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:29:55', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(265, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:29:59', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(266, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:30:02', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(267, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:30:07', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(268, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:30:10', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(269, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:30:16', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(270, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:30:19', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(271, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:30:24', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(272, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:30:32', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(273, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-21 20:37:48', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(274, 2, 0, 'Login to system', 'Login via web browser', '2019-10-22 08:48:08', '103.31.157.222', 'PC', 'Windows 8.1', 'Chrome 77.0.3865', NULL),
(275, 12, 0, 'Login to system', 'Login via web browser', '2019-10-22 08:54:03', '103.31.157.222', 'PC', 'Windows 8.1', 'Chrome 77.0.3865', NULL),
(276, 2, 0, 'Login to system', 'Login via web browser', '2019-10-22 10:33:25', '103.211.50.5', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(277, 12, 0, 'Login to system', 'Login via web browser', '2019-10-22 10:33:56', '103.211.50.5', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(278, 2, 0, 'Login to system', 'Login via web browser', '2019-10-22 14:41:36', '103.31.157.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(279, 2, 0, 'Login to system', 'Login via web browser', '2019-10-22 17:40:03', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(280, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:40:58', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(281, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:41:09', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(282, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:41:13', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(283, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:41:17', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(284, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:42:16', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(285, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:42:19', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(286, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:42:22', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(287, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:42:25', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(288, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:42:29', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(289, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:42:36', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(290, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:43:05', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(291, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:43:08', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(292, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:43:12', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(293, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:43:16', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(294, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:43:20', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(295, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:43:28', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(296, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:43:33', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(297, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:43:37', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(298, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:44:03', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(299, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:44:06', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(300, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:44:09', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(301, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:46:26', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(302, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:46:32', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(303, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:46:55', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(304, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:48:23', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(305, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:48:34', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(306, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:48:49', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(307, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:48:59', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(308, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:49:17', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(309, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:49:36', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(310, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:49:47', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(311, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:51:44', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(312, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:51:51', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(313, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:51:59', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(314, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:52:09', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(315, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:52:18', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(316, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:52:26', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(317, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:52:35', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(318, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:52:47', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(319, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:52:55', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(320, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:53:00', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(321, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:53:06', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(322, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:54:05', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(323, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:54:12', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(324, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:54:26', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(325, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:54:43', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(326, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:54:53', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(327, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:55:06', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(328, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:55:14', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(329, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:55:34', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(330, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:55:40', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(331, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:55:47', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(332, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:57:39', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(333, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:57:47', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(334, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:57:55', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(335, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:58:04', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL);
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `company_id`, `activity_type`, `activity_data`, `activity_time`, `activity_ip_address`, `activity_device`, `activity_os`, `activity_browser`, `activity_location`) VALUES
(336, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:58:26', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(337, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:58:32', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(338, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:58:39', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(339, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:58:49', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(340, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:59:10', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(341, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:59:19', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(342, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:59:27', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(343, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 17:59:35', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(344, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:30:58', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(345, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:31:14', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(346, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:31:22', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(347, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:31:45', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(348, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:31:56', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(349, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:32:18', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(350, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:32:28', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(351, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:32:53', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(352, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:33:00', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(353, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:33:06', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(354, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:38:38', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(355, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:38:48', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(356, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:38:56', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(357, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:39:10', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(358, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:39:16', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(359, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:39:23', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(360, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:39:28', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(361, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:42:38', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(362, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:42:50', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(363, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:42:56', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(364, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:44:36', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(365, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:44:46', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(366, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:44:55', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(367, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:45:00', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(368, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:45:06', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(369, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:45:13', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(370, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:45:25', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(371, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:45:30', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(372, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:45:37', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(373, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:46:46', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(374, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:47:11', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(375, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:47:16', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(376, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:47:22', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(377, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:47:29', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(378, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:47:35', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(379, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:47:42', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(380, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:47:47', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(381, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:48:05', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(382, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:48:11', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(383, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:48:57', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(384, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:49:02', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(385, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:49:08', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(386, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:49:16', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(387, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:49:21', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(388, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:49:26', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(389, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:51:19', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(390, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:51:25', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(391, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:51:33', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(392, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:51:38', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(393, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:51:44', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(394, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:51:59', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(395, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:52:08', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(396, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:52:21', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(397, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:52:30', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(398, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:53:27', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(399, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:53:33', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(400, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:53:39', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(401, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:53:53', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(402, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:53:59', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(403, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:54:04', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(404, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:54:11', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(405, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:54:18', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(406, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:54:33', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(407, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:54:48', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(408, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:56:40', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(409, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:56:45', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(410, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:56:51', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(411, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:56:56', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(412, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:57:08', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(413, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:57:15', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(414, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:57:19', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(415, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:57:27', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(416, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:57:34', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(417, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:57:40', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(418, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:58:28', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(419, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:58:38', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(420, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:58:45', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(421, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:58:54', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(422, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:59:03', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(423, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:59:08', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(424, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:59:14', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(425, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:59:21', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(426, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:59:26', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(427, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 18:59:33', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(428, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 19:00:25', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(429, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 19:00:47', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(430, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 19:01:23', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(431, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 19:01:23', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(432, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 19:01:42', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(433, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 19:01:47', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(434, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 19:01:53', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(435, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 19:01:59', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(436, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 19:02:07', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(437, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 19:02:33', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(438, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 19:02:47', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(439, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 19:03:40', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(440, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 19:03:46', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(441, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 19:03:52', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(442, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 19:04:22', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(443, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 19:04:30', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(444, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 19:05:25', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(445, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 19:05:32', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(446, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 19:05:37', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(447, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 19:05:44', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(448, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-22 19:05:52', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(449, 2, 0, 'Updating data', 'Update admin data', '2019-10-22 19:13:06', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(450, 2, 0, 'Updating data', 'Update admin data', '2019-10-22 19:13:37', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(451, 2, 0, 'Updating data', 'Update admin data', '2019-10-22 19:14:15', '103.211.50.6', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(452, 2, 0, 'Login to system', 'Login via web browser', '2019-10-23 07:14:34', '114.125.109.99', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(453, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:20:13', '114.125.108.221', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(454, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:20:22', '114.125.111.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(455, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:20:32', '114.125.108.221', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(456, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:20:43', '114.125.108.229', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(457, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:20:52', '114.125.125.244', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(458, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:21:08', '114.125.108.229', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(459, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:22:03', '114.125.124.245', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(460, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:22:11', '114.125.125.244', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(461, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:22:29', '114.125.109.99', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(462, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:22:37', '114.125.109.99', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(463, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:22:52', '114.125.127.94', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(464, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:23:00', '114.125.124.245', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(465, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:23:11', '114.125.111.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(466, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:23:19', '114.125.127.195', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(467, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:23:28', '114.125.109.91', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(468, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:24:21', '114.125.109.91', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(469, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:24:28', '114.125.127.94', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(470, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:24:35', '114.125.127.94', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(471, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:24:53', '114.125.109.99', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(472, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:26:11', '114.125.109.228', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(473, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:26:51', '114.125.109.99', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(474, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:26:59', '114.125.124.186', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(475, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:27:07', '114.125.108.229', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(476, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:27:20', '114.125.125.244', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(477, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:27:27', '114.125.125.244', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(478, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:27:41', '114.125.108.221', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(479, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:28:39', '114.125.124.186', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(480, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:28:44', '114.125.124.186', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(481, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:29:39', '114.125.127.185', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(482, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:29:53', '114.125.127.185', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(483, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:30:00', '114.125.111.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(484, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:30:09', '114.125.109.99', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(485, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:30:17', '114.125.108.229', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(486, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:30:28', '114.125.127.185', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(487, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:30:34', '114.125.127.94', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(488, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:30:37', '114.125.108.221', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(489, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:30:44', '114.125.108.221', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(490, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:30:51', '114.125.109.228', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(491, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:32:35', '114.125.108.229', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(492, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:32:39', '114.125.108.229', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(493, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:32:44', '114.125.124.245', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(494, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:32:50', '114.125.124.245', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(495, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:34:45', '114.125.127.195', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(496, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:34:48', '114.125.127.195', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(497, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:34:53', '114.125.127.195', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(498, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:34:57', '114.125.127.195', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(499, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:35:07', '114.125.127.195', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(500, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:35:13', '114.125.127.185', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(501, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:37:35', '114.125.124.186', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(502, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:37:40', '114.125.124.245', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(503, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:37:46', '114.125.109.91', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(504, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:37:52', '114.125.109.91', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(505, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:37:57', '114.125.109.91', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(506, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:38:39', '114.125.127.185', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(507, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:39:56', '114.125.109.91', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(508, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:40:05', '114.125.109.91', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(509, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:40:11', '114.125.111.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(510, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:40:18', '114.125.124.245', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(511, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:40:27', '114.125.127.94', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(512, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:40:35', '114.125.109.99', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(513, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:40:42', '114.125.109.99', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(514, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:40:50', '114.125.108.229', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(515, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:40:58', '114.125.109.228', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(516, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:41:04', '114.125.109.228', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(517, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:41:10', '114.125.108.229', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(518, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:41:18', '114.125.127.195', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(519, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:41:24', '114.125.127.185', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(520, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:41:30', '114.125.108.221', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(521, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:41:35', '114.125.108.221', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(522, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:42:53', '114.125.109.228', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(523, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:43:02', '114.125.109.228', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(524, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:43:08', '114.125.109.228', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(525, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:43:14', '114.125.127.94', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(526, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:43:23', '114.125.127.94', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(527, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:43:31', '114.125.127.94', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(528, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:43:37', '114.125.125.244', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(529, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:45:14', '114.125.109.228', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(530, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:45:20', '114.125.127.185', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(531, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:45:27', '114.125.127.185', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(532, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:45:35', '114.125.127.185', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(533, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:45:41', '114.125.127.185', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(534, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:45:52', '114.125.127.185', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(535, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:46:05', '114.125.127.185', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(536, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:47:22', '114.125.127.185', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(537, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:47:31', '114.125.127.185', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(538, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:47:56', '114.125.124.245', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(539, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:48:03', '114.125.111.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(540, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:48:09', '114.125.111.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(541, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:48:17', '114.125.111.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(542, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:48:27', '114.125.127.185', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(543, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:48:45', '114.125.125.244', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(544, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:49:12', '114.125.109.91', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(545, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:49:44', '114.125.108.221', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(546, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:49:52', '114.125.108.221', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(547, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:50:01', '114.125.108.221', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(548, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:50:07', '114.125.124.186', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(549, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:50:15', '114.125.124.186', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(550, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:51:16', '114.125.125.244', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(551, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:51:28', '114.125.111.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(552, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:51:36', '114.125.111.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(553, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:51:47', '114.125.125.244', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(554, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:51:55', '114.125.111.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(555, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:52:02', '114.125.111.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(556, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:52:12', '114.125.111.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(557, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:52:22', '114.125.109.99', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(558, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:52:47', '114.125.109.99', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(559, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:52:53', '114.125.109.99', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(560, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:53:03', '114.125.125.244', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(561, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:53:13', '114.125.109.99', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(562, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:53:21', '114.125.109.99', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(563, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:55:40', '114.125.109.99', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(564, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:55:49', '114.125.125.244', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(565, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:55:58', '114.125.125.244', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(566, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:56:08', '114.125.125.244', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(567, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:56:17', '114.125.111.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(568, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:56:25', '114.125.111.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(569, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:56:32', '114.125.127.195', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(570, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:56:47', '114.125.108.229', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(571, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:56:58', '114.125.108.229', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(572, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:57:04', '114.125.127.185', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(573, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:57:11', '114.125.127.185', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(574, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:57:19', '114.125.127.185', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(575, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:57:27', '114.125.127.195', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(576, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:58:31', '114.125.127.195', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(577, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:58:38', '114.125.111.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(578, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:58:42', '114.125.111.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(579, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:58:53', '114.125.111.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(580, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:59:05', '114.125.111.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(581, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:59:13', '114.125.111.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(582, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:59:21', '114.125.124.186', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(583, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:59:31', '114.125.124.186', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(584, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:59:46', '114.125.124.186', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(585, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 07:59:53', '114.125.124.186', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(586, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:00:37', '114.125.109.228', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(587, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:00:43', '114.125.124.186', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(588, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:00:46', '114.125.125.244', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(589, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:00:50', '114.125.125.244', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(590, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:00:54', '114.125.125.244', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(591, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:03:15', '114.125.108.229', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(592, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:03:34', '114.125.125.244', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(593, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:03:42', '114.125.125.244', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(594, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:03:48', '114.125.125.244', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(595, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:03:56', '114.125.125.244', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(596, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:04:04', '114.125.125.244', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(597, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:04:13', '114.125.125.244', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(598, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:04:19', '114.125.127.185', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(599, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:04:29', '114.125.127.185', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(600, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:06:05', '114.125.127.195', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(601, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:06:15', '114.125.127.195', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(602, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:06:29', '114.125.124.186', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(603, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:06:41', '114.125.124.186', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(604, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:06:51', '114.125.111.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(605, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:06:59', '114.125.111.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(606, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:07:16', '114.125.111.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(607, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:07:28', '114.125.127.185', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(608, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:07:41', '114.125.127.185', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(609, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:08:27', '114.125.109.91', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(610, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:08:35', '114.125.127.195', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(611, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:08:50', '114.125.127.195', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(612, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:09:15', '114.125.124.245', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(613, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:09:28', '114.125.108.221', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(614, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:09:39', '114.125.108.221', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(615, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:09:45', '114.125.124.186', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(616, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:09:53', '114.125.127.94', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(617, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:10:07', '114.125.127.94', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(618, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:10:48', '114.125.125.244', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(619, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:11:02', '114.125.125.244', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(620, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:11:16', '114.125.125.244', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(621, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:11:28', '114.125.125.244', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(622, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:11:34', '114.125.111.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(623, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:11:45', '114.125.111.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(624, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:11:57', '114.125.111.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(625, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:12:19', '114.125.111.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(626, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:16:02', '114.125.127.94', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(627, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:16:19', '114.125.127.94', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(628, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:16:34', '114.125.127.94', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(629, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:16:41', '114.125.127.94', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(630, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:16:45', '114.125.127.94', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(631, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:16:55', '114.125.127.94', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(632, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:17:05', '114.125.127.94', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(633, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:17:16', '114.125.127.94', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(634, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:17:35', '114.125.127.94', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(635, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:18:19', '114.125.127.94', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(636, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:18:26', '114.125.127.94', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(637, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:18:40', '114.125.127.94', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(638, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:18:59', '114.125.127.94', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(639, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:19:15', '114.125.127.94', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(640, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:19:25', '114.125.127.94', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(641, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:19:29', '114.125.127.94', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(642, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:19:46', '114.125.127.94', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(643, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:19:50', '114.125.127.94', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(644, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:20:03', '114.125.109.91', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(645, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:21:21', '114.125.124.245', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(646, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:21:28', '114.125.127.185', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(647, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:21:34', '114.125.127.185', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(648, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:21:38', '114.125.127.185', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(649, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:21:41', '114.125.127.185', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(650, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:21:50', '114.125.109.99', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(651, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:21:58', '114.125.109.99', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(652, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:22:08', '114.125.109.99', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(653, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:22:17', '114.125.111.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL);
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `company_id`, `activity_type`, `activity_data`, `activity_time`, `activity_ip_address`, `activity_device`, `activity_os`, `activity_browser`, `activity_location`) VALUES
(654, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:22:44', '114.125.111.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(655, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:22:54', '114.125.111.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(656, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:23:10', '114.125.108.229', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(657, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:23:18', '114.125.108.229', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(658, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:23:28', '114.125.127.185', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(659, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:23:35', '114.125.127.185', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(660, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:25:26', '114.125.111.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(661, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:25:30', '114.125.111.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(662, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:25:35', '114.125.111.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(663, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:25:39', '114.125.109.99', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(664, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:27:02', '114.125.109.91', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(665, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:27:15', '114.125.109.99', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(666, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:27:28', '114.125.109.99', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(667, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:27:36', '114.125.125.244', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(668, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:27:40', '114.125.125.244', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(669, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:27:47', '114.125.125.244', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(670, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:27:59', '114.125.111.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(671, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:28:09', '114.125.124.186', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(672, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:28:13', '114.125.124.245', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(673, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:28:17', '114.125.108.229', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(674, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:28:51', '114.125.109.228', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(675, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:28:54', '114.125.109.228', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(676, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:29:04', '114.125.108.221', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(677, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:29:11', '114.125.108.221', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(678, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:29:19', '114.125.108.221', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(679, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:29:28', '114.125.108.221', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(680, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:29:36', '114.125.124.245', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(681, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:29:45', '114.125.124.245', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(682, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:29:49', '114.125.124.245', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(683, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:29:56', '114.125.127.185', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(684, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:30:36', '114.125.124.186', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(685, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:30:46', '114.125.124.245', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(686, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:30:58', '114.125.124.245', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(687, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:31:19', '114.125.127.185', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(688, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:31:30', '114.125.127.94', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(689, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:31:43', '114.125.127.94', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(690, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:31:53', '114.125.109.91', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(691, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:32:04', '114.125.109.91', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(692, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:32:11', '114.125.127.185', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(693, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:32:22', '114.125.124.186', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(694, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:33:04', '114.125.109.99', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(695, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:33:17', '114.125.109.99', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(696, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:33:29', '114.125.109.99', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(697, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:33:40', '114.125.108.229', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(698, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:33:48', '114.125.108.229', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(699, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:33:53', '114.125.108.229', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(700, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:33:58', '114.125.108.229', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(701, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:34:06', '114.125.108.229', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(702, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:37:48', '114.125.109.91', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(703, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:37:55', '114.125.109.91', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(704, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:38:02', '114.125.109.91', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(705, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:38:17', '114.125.109.91', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(706, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:38:25', '114.125.108.229', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(707, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:38:32', '114.125.108.229', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(708, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:38:38', '114.125.108.229', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(709, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:38:48', '114.125.125.244', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(710, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:38:56', '114.125.125.244', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(711, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:40:39', '114.125.108.229', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(712, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:40:42', '114.125.109.228', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(713, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:40:46', '114.125.109.228', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(714, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:40:49', '114.125.109.228', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(715, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:40:53', '114.125.109.228', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(716, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:40:56', '114.125.109.228', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(717, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:41:00', '114.125.109.228', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(718, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:41:03', '114.125.127.185', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(719, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:41:07', '114.125.127.185', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(720, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:41:13', '114.125.111.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(721, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:42:41', '114.125.124.245', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(722, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:42:50', '114.125.108.229', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(723, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:43:02', '114.125.108.229', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(724, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:43:09', '114.125.127.94', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(725, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:43:18', '114.125.127.94', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(726, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:43:25', '114.125.127.94', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(727, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:43:33', '114.125.127.94', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(728, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:43:40', '114.125.111.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(729, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:43:50', '114.125.109.228', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(730, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:43:56', '114.125.109.228', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(731, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:45:01', '114.125.124.245', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(732, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:45:09', '114.125.108.229', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(733, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:45:19', '114.125.108.229', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(734, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:45:26', '114.125.108.229', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(735, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:45:35', '114.125.108.229', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(736, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:45:45', '114.125.108.229', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(737, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:45:55', '114.125.108.229', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(738, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:46:04', '114.125.127.195', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(739, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:46:11', '114.125.127.185', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(740, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:46:19', '114.125.108.221', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(741, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:46:25', '114.125.111.222', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(742, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 08:46:33', '114.125.109.91', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(743, 1, 0, 'Login to system', 'Login via web browser', '2019-10-23 10:53:26', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(744, 2, 0, 'Login to system', 'Login via web browser', '2019-10-23 13:13:32', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(745, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:14:28', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(746, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:14:50', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(747, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:15:36', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(748, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:15:52', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(749, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:18:33', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(750, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:21:38', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(751, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:21:38', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(752, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:22:17', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(753, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:22:52', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(754, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:25:31', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(755, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:25:55', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(756, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:26:41', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(757, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:26:55', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(758, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:27:16', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(759, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:27:38', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(760, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:27:50', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(761, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:28:17', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(762, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:28:30', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(763, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:29:45', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(764, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:29:54', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(765, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:30:07', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(766, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:30:27', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(767, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:30:38', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(768, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:31:25', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(769, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:31:34', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(770, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:31:45', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(771, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:31:59', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(772, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:32:09', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(773, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:32:25', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(774, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:32:39', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(775, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:32:53', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(776, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:37:57', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(777, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:38:15', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(778, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:38:31', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(779, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:38:47', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(780, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:38:59', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(781, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:39:15', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(782, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:39:34', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(783, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:39:48', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(784, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:40:06', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(785, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:41:14', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(786, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:41:27', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(787, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:41:40', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(788, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:41:55', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(789, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:42:05', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(790, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:42:21', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(791, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:42:39', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(792, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:42:57', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(793, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:46:53', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(794, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:47:09', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(795, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:47:29', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(796, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:47:40', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(797, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:47:53', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(798, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:48:27', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(799, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:48:52', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(800, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:49:15', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(801, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:49:32', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(802, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:49:46', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(803, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:51:16', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(804, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:51:29', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(805, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:51:43', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(806, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:51:56', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(807, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:52:10', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(808, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:52:27', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(809, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:52:48', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(810, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 13:53:02', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(811, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 14:07:40', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(812, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 14:07:53', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(813, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 14:08:06', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(814, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 14:08:25', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(815, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 14:08:40', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(816, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 14:08:58', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(817, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 14:09:25', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(818, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 14:09:42', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(819, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 14:11:38', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(820, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 14:11:45', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(821, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 14:11:54', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(822, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 14:12:03', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(823, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 14:12:12', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(824, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 14:12:19', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(825, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 14:12:34', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(826, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 14:12:40', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(827, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 14:12:47', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(828, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 14:12:57', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(829, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 14:14:17', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(830, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 14:16:22', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(831, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 14:16:43', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(832, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 14:17:17', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(833, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 14:23:48', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(834, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 14:24:01', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(835, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 14:24:12', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(836, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 14:24:32', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(837, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 14:24:34', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(838, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 14:24:54', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(839, 2, 0, 'Login to system', 'Login via web browser', '2019-10-23 18:58:34', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(840, 16, 0, 'Login to system', 'Login via web browser', '2019-10-23 19:23:48', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(841, 11, 0, 'Login to system', 'Login via web browser', '2019-10-23 19:24:22', '117.20.54.249', 'PC', 'Android', 'Chrome 77.0.3865', NULL),
(842, 16, 0, 'Login to system', 'Login via web browser', '2019-10-23 19:24:37', '117.20.54.249', 'PC', 'Windows 8.1', 'Chrome 77.0.3865', NULL),
(843, 2, 0, 'Login to system', 'Login via web browser', '2019-10-23 19:24:43', '117.20.54.249', 'PC', 'Android', 'Chrome 77.0.3865', NULL),
(844, 11, 0, 'Login to system', 'Login via web browser', '2019-10-23 19:24:45', '117.20.54.249', 'PC', 'Windows 10', 'Firefox 69.0', NULL),
(845, 11, 0, 'Login to system', 'Login via web browser', '2019-10-23 19:25:00', '117.20.54.249', 'PC', 'iOS', 'Safari 604.1', NULL),
(846, 12, 0, 'Login to system', 'Login via web browser', '2019-10-23 19:25:29', '117.20.54.249', 'PC', 'Android', 'Chrome 77.0.3865', NULL),
(847, 11, 0, 'Login to system', 'Login via web browser', '2019-10-23 19:25:30', '114.125.81.64', 'PC', 'Android', 'Chrome 77.0.3865', NULL),
(848, 12, 0, 'Login to system', 'Login via web browser', '2019-10-23 19:25:31', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(849, 15, 0, 'Login to system', 'Login via web browser', '2019-10-23 19:25:47', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(850, 15, 0, 'Login to system', 'Login via web browser', '2019-10-23 19:26:01', '117.20.54.249', 'PC', 'Windows 7', 'Chrome 77.0.3865', NULL),
(851, 12, 0, 'Login to system', 'Login via web browser', '2019-10-23 19:26:45', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(852, 2, 0, 'Login to system', 'Login via web browser', '2019-10-23 19:27:18', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(853, 15, 0, 'Login to system', 'Login via web browser', '2019-10-23 19:27:35', '117.20.54.249', 'PC', 'Android', 'Chrome 77.0.3865', NULL),
(854, 16, 0, 'Login to system', 'Login via web browser', '2019-10-23 19:27:44', '117.20.54.249', 'PC', 'Windows 7', 'Chrome 77.0.3865', NULL),
(855, 15, 0, 'Login to system', 'Login via web browser', '2019-10-23 19:28:03', '117.20.54.249', 'PC', 'Windows 8.1', 'Chrome 77.0.3865', NULL),
(856, 16, 0, 'Login to system', 'Login via web browser', '2019-10-23 19:28:08', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 76.0.3809', NULL),
(857, 15, 0, 'Login to system', 'Login via web browser', '2019-10-23 19:28:12', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(858, 16, 0, 'Login to system', 'Login via web browser', '2019-10-23 19:28:50', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(859, 2, 0, 'Login to system', 'Login via web browser', '2019-10-23 19:29:37', '114.125.81.36', 'PC', 'Android', 'Chrome 77.0.3865', NULL),
(860, 12, 0, 'Login to system', 'Login via web browser', '2019-10-23 19:30:33', '117.20.54.249', 'PC', 'Windows 7', 'Firefox 69.0', NULL),
(861, 12, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 19:33:20', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(862, 2, 0, 'Login to system', 'Login via web browser', '2019-10-23 19:33:39', '115.178.253.247', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(863, 15, 0, 'Login to system', 'Login via web browser', '2019-10-23 19:33:44', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(864, 16, 0, 'Login to system', 'Login via web browser', '2019-10-23 19:37:28', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(865, 15, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-23 19:38:50', '117.20.54.249', 'PC', 'Windows 8.1', 'Chrome 77.0.3865', NULL),
(866, 16, 0, 'Login to system', 'Login via web browser', '2019-10-23 19:38:53', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(867, 15, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 19:40:49', '117.20.54.249', 'PC', 'Windows 8.1', 'Chrome 77.0.3865', NULL),
(868, 15, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 19:41:27', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(869, 15, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 19:42:03', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(870, 11, 0, 'Login to system', 'Login via web browser', '2019-10-23 19:46:29', '117.20.54.249', 'PC', 'Windows 8', 'Chrome 77.0.3865', NULL),
(871, 12, 0, 'Login to system', 'Login via web browser', '2019-10-23 19:51:29', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(872, 16, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 19:51:45', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(873, 16, 0, 'Login to system', 'Login via web browser', '2019-10-23 19:52:46', '117.20.54.249', 'PC', 'Windows 7', 'Chrome 77.0.3865', NULL),
(874, 15, 0, 'Login to system', 'Login via web browser', '2019-10-23 19:52:53', '117.20.54.249', 'PC', 'Windows 8.1', 'Chrome 77.0.3865', NULL),
(875, 15, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 19:54:37', '117.20.54.249', 'PC', 'Windows 8.1', 'Chrome 77.0.3865', NULL),
(876, 11, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-23 19:54:46', '117.20.54.249', 'PC', 'Windows 10', 'Firefox 69.0', NULL),
(877, 16, 0, 'Login to system', 'Login via web browser', '2019-10-23 19:55:22', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(878, 12, 0, 'Login to system', 'Login via web browser', '2019-10-23 19:55:59', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(879, 2, 0, 'Login to system', 'Login via web browser', '2019-10-23 19:58:33', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(880, 16, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 19:59:21', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(881, 16, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 19:59:31', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(882, 2, 0, 'Updating data', 'Update admin data', '2019-10-23 19:59:53', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(883, 15, 0, 'Login to system', 'Login via web browser', '2019-10-23 19:59:55', '117.20.54.249', 'PC', 'Windows 7', 'Chrome 77.0.3865', NULL),
(884, 16, 0, 'Login to system', 'Login via web browser', '2019-10-23 20:03:26', '117.20.54.249', 'PC', 'Windows 7', 'Chrome 77.0.3865', NULL),
(885, 15, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 20:05:03', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(886, 11, 0, 'Login to system', 'Login via web browser', '2019-10-23 20:17:07', '117.20.54.249', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(887, 16, 0, 'Updating data', 'Memperbarui data rekap provinsi', '2019-10-23 20:19:38', '117.20.54.249', 'PC', 'Windows 8.1', 'Chrome 77.0.3865', NULL),
(888, 16, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 20:20:29', '117.20.54.249', 'PC', 'Windows 8.1', 'Chrome 77.0.3865', NULL),
(889, 16, 0, 'Updating data', 'Memperbarui data rekap kabupaten/ kota', '2019-10-23 20:20:57', '117.20.54.249', 'PC', 'Windows 8.1', 'Chrome 77.0.3865', NULL),
(890, 2, 0, 'Updating data', 'Memperbarui data rekap kabupaten', '2019-10-23 20:22:31', '115.178.253.247', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL),
(891, 16, 0, 'Login to system', 'Login via web browser', '2019-10-24 10:07:41', '103.141.234.29', 'PC', 'Windows 7', 'Chrome 77.0.3865', NULL),
(892, 11, 0, 'Login to system', 'Login via web browser', '2019-10-25 07:26:21', '114.125.111.64', 'PC', 'Android', 'Chrome 77.0.3865', NULL),
(893, 11, 0, 'Login to system', 'Login via web browser', '2019-10-25 07:26:40', '103.255.15.48', 'PC', 'Windows 10', 'Chrome 77.0.3865', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `agenda`
--

CREATE TABLE `agenda` (
  `id_agenda` int(11) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `deskripsi` mediumtext NOT NULL,
  `jadwal` datetime NOT NULL,
  `tempat` varchar(200) NOT NULL,
  `undangan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `aspirasi`
--

CREATE TABLE `aspirasi` (
  `id_aspirasi` int(10) NOT NULL,
  `nama` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `nohp` text DEFAULT NULL,
  `pesan` text DEFAULT NULL,
  `waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `aspirasi`
--

INSERT INTO `aspirasi` (`id_aspirasi`, `nama`, `email`, `nohp`, `pesan`, `waktu`) VALUES
(1, 'rizal', 'rizal@gmail.com', '12345678', 'kapan kita berjumpa lagi', '2019-10-23 19:49:26'),
(2, 'andi', '', '', 'bagus aplikasinya terimakasih', '2019-10-23 19:49:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `diskusi`
--

CREATE TABLE `diskusi` (
  `id_diskusi` int(11) NOT NULL,
  `id_pgw` int(11) NOT NULL,
  `isi` mediumtext NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `diskusi`
--

INSERT INTO `diskusi` (`id_diskusi`, `id_pgw`, `isi`, `create_at`, `status`) VALUES
(8, 27, '<p>tes</p>', '2019-10-23 12:35:17', '0'),
(9, 27, '<p>test :D</p>', '2019-10-23 12:41:33', '0'),
(10, 28, '<p>Test</p>', '2019-10-23 12:41:46', '0'),
(11, 28, '<p>Cek. Coba</p>', '2019-10-23 12:41:50', '0'),
(12, 2, '<p>mari kita mulai diskusi malam ini</p>', '2019-10-23 12:41:55', '0'),
(13, 24, '<p>kegiatan saat ini sampai jam berapa</p>\r\n<p> </p>', '2019-10-23 12:42:12', '0'),
(14, 27, '<p>terimakasih</p>', '2019-10-23 12:42:15', '0'),
(15, 27, '<p>saya mau tanya</p>', '2019-10-23 12:42:21', '0'),
(16, 24, '<p>tess</p>', '2019-10-23 12:42:43', '0'),
(17, 28, '<p>P</p>', '2019-10-23 12:42:55', '0'),
(18, 27, '<p>iya mas</p>', '2019-10-23 12:43:06', '0'),
(19, 23, '<p>Bekerja keras, bergerak cepat, bertindak tepat, selamat dunia akhirat</p>', '2019-10-23 12:43:17', '0'),
(20, 27, '<p>kenapa</p>', '2019-10-23 12:43:17', '0'),
(21, 27, '<p>sampai pulang mas mbantul</p>', '2019-10-23 12:43:41', '0'),
(22, 2, '<p>Apa pendapat anda tentang SIBiLUP ini ?</p>\r\n<p> </p>', '2019-10-23 12:44:15', '0'),
(23, 27, '<p>Mau tanya, jika sudah masuk page admin, ingin kembali ke tampilan sibilup umum, ada icon khusus untuk diklik?</p>', '2019-10-23 12:45:27', '0'),
(24, 23, '<p>Sepertinya perlu sistem reply ???? </p>', '2019-10-23 12:45:33', '0'),
(25, 27, '<p>nganu mas..kok saya sebagai admin kabupaten bisa ngedit kabupaten lain ya?</p>', '2019-10-23 12:46:04', '0'),
(26, 2, '<p>Untuk Provinsi DIY</p>\r\n<p>Semboyan PU plus-plus </p>', '2019-10-23 12:46:40', '0'),
(27, 2, '<p>Provinsi Yogyakarta</p>\r\n<p>PU tenan </p>', '2019-10-23 12:47:43', '0'),
(28, 2, '<p>Kabupaten Sleman</p>\r\n<p>Usulan bagus mas. Terima kasih masukannya</p>', '2019-10-23 12:50:51', '0'),
(29, 24, '<p>Dirjen ciptakarya sudah mengembangankan SIM terkait dengan permukiman, mungkin bisa dilinkkan supaya bisa terintegrasi</p>', '2019-10-23 13:06:37', '0'),
(30, 28, '<p>Perumahan</p>', '2019-10-24 03:11:28', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokumen`
--

CREATE TABLE `dokumen` (
  `id_dokumen` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `file` varchar(100) NOT NULL,
  `upload_by` int(11) NOT NULL,
  `create_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dokumen`
--

INSERT INTO `dokumen` (`id_dokumen`, `judul`, `keterangan`, `file`, `upload_by`, `create_at`) VALUES
(1, 'Dokumen SIBiLUP', 'Dokumen ini adalah dokumen contoh yang akan diupload', 'f1f2e-berita-4-bimbingan-teknis-bidang-perencanaan-perumahan-regional-sulawesi-tahun-2019.docx', 24, 0),
(2, 'Arus utama gender', '', '45778-pug-penyediaan-perumahan.pdf', 23, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `faq`
--

CREATE TABLE `faq` (
  `id_faq` int(11) NOT NULL,
  `pertanyaan` text NOT NULL,
  `jawaban` text NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `file` varchar(200) NOT NULL,
  `keterangan` text NOT NULL,
  `type` tinyint(2) NOT NULL COMMENT '1 = Foto, 2 = Vidio'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `hubungi_kami`
--

CREATE TABLE `hubungi_kami` (
  `id_hub` int(11) NOT NULL,
  `id_pgw` int(11) NOT NULL,
  `penjawab` int(11) NOT NULL,
  `isi` mediumtext NOT NULL,
  `file` varchar(100) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hubungi_kami`
--

INSERT INTO `hubungi_kami` (`id_hub`, `id_pgw`, `penjawab`, `isi`, `file`, `create_at`, `status`) VALUES
(7, 27, 0, '<p>terimakasih</p>', '', '2019-10-23 12:46:17', '0'),
(8, 27, 2, '<p>beli oleh2 dimana mas?</p>', '', '2019-10-23 12:46:35', '0'),
(9, 23, 0, '<p>Mohon izin bertanya</p>', '', '2019-10-23 12:47:02', '0'),
(10, 27, 0, '<p>di toko pusat oleh-oleh</p>', '', '2019-10-23 12:47:04', '0'),
(11, 28, 0, '<p>Halloo..</p>', '', '2019-10-23 12:47:08', '0'),
(12, 23, 2, '<p>Silakan Bp/ibu</p>', '', '2019-10-23 12:53:25', '0'),
(13, 27, 2, '<p>Dimana lokasinya mas ?</p>\r\n<p>Rekomendasinya dimana, yang murah dan komplit </p>\r\n<p>hehhehehehe....</p>', '', '2019-10-23 12:54:41', '0'),
(14, 25, 2, '<p>Mas, kabarnya ada tempat wisata baru yang cukup viral, namanya Heha sky view</p>\r\n<p>itu dimana posisinya ?</p>', '', '2019-10-23 12:57:14', '0'),
(15, 28, 2, '<p>Halo juga</p>', '', '2019-10-23 12:57:52', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kabupaten`
--

CREATE TABLE `kabupaten` (
  `id_kabupaten` int(10) NOT NULL,
  `id_provinsi` int(5) NOT NULL,
  `nm_kabupaten` varchar(50) NOT NULL,
  `bujur` varchar(20) NOT NULL,
  `lintang` varchar(20) NOT NULL,
  `kml` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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

CREATE TABLE `level_user` (
  `id_level` int(11) NOT NULL,
  `nama_level` varchar(50) NOT NULL,
  `publish` tinyint(1) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `materi` (
  `id_materi` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `kategori` enum('Materi Substantif PKP','Materi Sosialisasi','Materi Bimtek','Materi Rakor') NOT NULL,
  `sub_kategori` int(10) DEFAULT NULL,
  `file` varchar(200) NOT NULL,
  `keterangan` text NOT NULL,
  `jumlah_download` int(11) NOT NULL,
  `upload_by` int(11) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
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

CREATE TABLE `modul` (
  `id_modul` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `file` varchar(200) NOT NULL,
  `keterangan` text NOT NULL,
  `upload_by` int(11) NOT NULL,
  `jumlah_download` int(11) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_soal`
--

CREATE TABLE `m_soal` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `user_id` int(10) NOT NULL,
  `wilayah` int(10) DEFAULT NULL,
  `nama_pegawai` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `foto` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `user_id`, `wilayah`, `nama_pegawai`, `alamat`, `email`, `phone`, `foto`) VALUES
(1, 1, NULL, 'Mukhammad Fakhir Rizal', 'Tegal', 'helmi@gmail.com', '0891239123', NULL),
(2, 2, NULL, 'Subdit Kemitraan dan Kelembagaan', 'Gedung Blok G Lt. 7 Kementerian PUPR', 'kemitraankelembagaan@pu.go.id', '1234567890', NULL),
(15, 3, 81, 'Provinsi Maluku', 'Kota Ambon', 'maluku@gmail.com', '1234567890', NULL),
(16, 4, 32, 'Provinsi Jawa Barat', 'Bandung', 'jabarjuara@gmail.com', '1234567890', NULL),
(17, 5, 16, 'Sumatera Selatan', 'Palembang', 'sumsel@gmail.com', '1234567890', NULL),
(18, 6, 7501, 'Kabupaten Boalemo', 'Kabupaten Boalemo', 'boalemo@gmail.com', '1234567890', NULL),
(19, 7, 8271, 'Kota Ternate', 'Kota Ternate', 'ternate@gmail.com', '1234567890', NULL),
(20, 8, 7271, 'Kota Palu', 'Kota Palu', 'palu@gmail.com', '1234567890', NULL),
(21, 9, 1303, 'Kabupaten Solok', 'Kabupaten Solok', 'barehsolok@gmail.com', '1234567890', NULL),
(22, 10, 3307, 'Kabupaten Wonosobo', 'Kabupaten Wonosobo', 'wonosobo@gmail.com', '1234567890', NULL),
(23, 11, 34, 'Provinsi DIY', 'Provinsi Daerah Istimewa Yogyakarta', 'yogyakarta@gmail.com', '12345678901', NULL),
(24, 12, 3402, 'Kabupaten Bantul', 'Kabupaten Bantul', 'kabupatenbantul@gmail.com', '1234567890', NULL),
(25, 13, 3403, 'Kabupaten Gunungkidul', 'Kabupaten Gunungkidul', 'gunungkidul@gmail.com', '1234567890', NULL),
(26, 14, 3401, 'Kabupaten Kulon Progo', 'Kabupaten Kulon Progo', 'kulonprogo@gmail.com', '1234567890', NULL),
(27, 15, 3404, 'Kabupaten Sleman', 'Kabupaten Sleman', 'sleman@gmail.com', '1234567890', NULL),
(28, 16, 3471, 'Kota Yogyakarta', 'Kota Yogyakarta', 'yogyakarta@gmail.com', '1234567890', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `profil_dir`
--

CREATE TABLE `profil_dir` (
  `id_profil` int(11) NOT NULL,
  `visi_misi` longtext NOT NULL,
  `tupoksi` longtext NOT NULL,
  `struktur_organisasi` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `profil_dir`
--

INSERT INTO `profil_dir` (`id_profil`, `visi_misi`, `tupoksi`, `struktur_organisasi`) VALUES
(1, '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; text-align: center;\">\n	<span style=\"box-sizing: border-box; font-weight: 700;\">&quot;TERWUJUDNYA INFRASTRUKTUR PEKERJAAN UMUM DAN PERUMAHAN RAKYAT YANG HANDAL</span></p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; text-align: center;\">\n	<span style=\"box-sizing: border-box; font-weight: 700;\">DALAM MENDUKUNG INDONESIA YANG BERDAULAT, MANDIRI, DAN BERKEPRIBADIAN</span></p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; text-align: center;\">\n	<span style=\"box-sizing: border-box; font-weight: 700;\">BERLANDASKAN GOTONG ROYONG&quot;</span></p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; text-align: justify;\">\n	&nbsp;</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; text-align: justify;\">\n	Misi Kementerian Pekerjaan Umum dan Perumahan Rakyat yang merupakan rumusan upaya yang akan dilaksanakan selama periode Renstra 2015 &ndash; 2019 dalam rangka mencapai visi serta mendukung upaya pencapaian target pembangunan nasional, berdasarkan mandat yang diemban oleh Kementerian Pekerjaan Umum dan Perumahan Rakyat sebagaimana yang tercantum di dalam Peraturan Pemerintah Nomor 165 Tahun 2014 tentang Penataan Tugas dan Fungsi Kabinet Kerja, amanat RPJMN tahap ketiga serta perubahan kondisi lingkungan strategis yang dinamis adalah sebagai berikut :</p>\n<ol style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px;\">\n	<li style=\"box-sizing: border-box; text-align: justify;\">\n		Mempercepat pembangunan infrastruktur sumberdaya air termasuk sumber daya maritim untuk mendukung ketahanan air, kedaulatan pangan, dan kedaulatan energi, guna menggerakkan sektor-sektor strategis ekonomi domestik dalam rangka kemandirian ekonomi;</li>\n	<li style=\"box-sizing: border-box; text-align: justify;\">\n		Mempercepat pembangunan infrastruktur jalan untuk mendukung konektivitas guna meningkatkan produktivitas, efisiensi, dan pelayanan sistem logistik nasional bagi penguatan daya saing bangsa di lingkup global yang berfokus pada keterpaduan konektivitas daratan dan maritim;</li>\n	<li style=\"box-sizing: border-box; text-align: justify;\">\n		Mempercepat pembangunan infrastruktur permukiman dan perumahan rakyat untuk mendukung layanan infrastruktur dasar yang layak dalam rangka mewujudkan kualitas hidup manusia Indonesia sejalan dengan prinsip &lsquo;infrastruktur untuk semua&rsquo;;</li>\n	<li style=\"box-sizing: border-box; text-align: justify;\">\n		Mempercepat pembangunan infrastruktur pekerjaan umum dan perumahan rakyat secara terpadu dari pinggiran didukung industri konstruksi yang berkualitas untuk keseimbangan pembangunan antardaerah, terutama di kawasan tertinggal, kawasan perbatasan, dan kawasan perdesaan, dalam kerangka NKRI;</li>\n	<li style=\"box-sizing: border-box; text-align: justify;\">\n		Meningkatkan tata kelola sumber daya organisasi bidang pekerjaan umum dan perumahan rakyat yang meliputi sumber daya manusia, pengendalian dan pengawasan, kesekertariatan serta penelitian dan pengembangan untuk mendukung fungsi manajemen meliputi perencanaan yang terpadu, pengorganisasian yang efisien, pelaksanaan yang tepat, dan pengawasan yang ketat.</li>\n</ol>\n', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px;\">\n	Sesuai dengan Peraturan Presiden Nomor 15 Tahun 2015 tentang&nbsp;Kementerian Pekerjaan Umum dan Perumahan Rakyat dan Peraturan Presiden Nomor 135 Tahun 2018 tentang Perubahan atas&nbsp;Peraturan Presiden Nomor 15 Tahun 2015 tentang&nbsp;Kementerian Pekerjaan Umum dan Perumahan Rakyat.</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px;\">\n	Kementerian Pekerjaan Umum dan Perumahan Rakyat mempunyai tugas menyelenggarakan urusan pemerintahan di bidang pekerjaan umum dan perumahan rakyat untuk membantu Presiden dalam menyelenggarakan pemerintahan negara.</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px;\">\n	Dalam melaksanakan tugas sebagaimana dimaksud di atas, Kementerian Pekerjaan Umum dan Perumahan Rakyat menyelenggarakan&nbsp; fungsi:</p>\n<ol style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; list-style-type: lower-alpha;\">\n	<li style=\"box-sizing: border-box;\">\n		perumusan, penetapan, dan pelaksanaan kebijakan di bidang pengelolaan sumber daya air, penyelenggaraan jalan, penyediaan perumahan dan pengembangan kawasan permukiman, pembiayaan infrastruktur, penataan bangunan gedung, sistem penyediaan air minum, sistem pengelolaan air limbah dan drainase lingkungan serta persampahan, dan pembinaan jasa konstruksi;</li>\n	<li style=\"box-sizing: border-box;\">\n		koordinasi pelaksanaan tugas, pembinaan, dan pemberian dukungan administrasi kepada seluruh unsur organisasi di lingkungan Kementerian Pekerjaan Umum dan perumahan Rakyat;</li>\n	<li style=\"box-sizing: border-box;\">\n		pengelolaan barang milik/kekayaan negara yang menjadi tanggung jawab Kementerian Pekerjaan Umum dan Perumahan Rakyat;</li>\n	<li style=\"box-sizing: border-box;\">\n		pengawasan atas pelaksanaan tugas di lingkungan Kementerian Pekerjaan Umum dan Perumahan Rakyat;</li>\n	<li style=\"box-sizing: border-box;\">\n		pelaksanaan bimbingan teknis dan supervisi atas pelaksanaan urusan Kementerian Pekerjaan Umum dan Perumahan Rakyat di daerah;</li>\n	<li style=\"box-sizing: border-box;\">\n		pelaksanaan penyusunan kebijakan teknis dan strategi keterpaduan pengembangan infrastruktur pekerjaan umum dan perumahan rakyat;</li>\n	<li style=\"box-sizing: border-box;\">\n		pelaksanaan penelitian dan pengembangan di bidang pekerjaan umum dan perumahan rakyat;</li>\n	<li style=\"box-sizing: border-box;\">\n		pelaksanaan pengembangan sumber daya manusia di bidang pekerjaan umum dan perrrmahan rakyat;</li>\n	<li style=\"box-sizing: border-box;\">\n		pelaksanaan dukungan yang bersifat substantif kepada seluruh unsur organisasi di lingkungan Kementerian Pekerjaan Umum dan Perumahan Rakyat; dan</li>\n	<li style=\"box-sizing: border-box;\">\n		pelaksanaan fungsi lain yang diberikan oleh Presiden.</li>\n</ol>\n', '<p>\n	<img alt=\"\" src=\"/sibilup/assets/images/article/images/20190402-struktur-organisasi-kementerian-pupr.jpg\" style=\"width: 900px; height: 675px;\" /></p>\n');

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

-- --------------------------------------------------------

--
-- Struktur dari tabel `regulasi`
--

CREATE TABLE `regulasi` (
  `id_reg` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `file` varchar(200) NOT NULL,
  `keterangan` text NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `upload_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `apbd` enum('Tidak','Ya') DEFAULT NULL,
  `tahun` int(4) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rekap_pokja_pkp_kabkota`
--

INSERT INTO `rekap_pokja_pkp_kabkota` (`id_kabupaten`, `status`, `sk`, `penggabungan`, `program`, `forum`, `apbd`, `tahun`, `updated_at`) VALUES
(1101, 'Belum', NULL, 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 13:14:50'),
(1107, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-23 19:41:27'),
(1109, 'Selesai', 'V', 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 13:15:52'),
(1110, 'Belum', NULL, 'Belum', 'Ya', 'Tidak', 'Ya', 2019, '2019-10-23 13:14:28'),
(1115, 'Belum', NULL, 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 13:22:17'),
(1117, 'Belum', NULL, 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 13:22:52'),
(1172, 'Selesai', 'V', 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 13:21:38'),
(1174, 'Selesai', 'V', 'Sudah', 'Ya', 'Ya', 'Ya', 2019, '2019-10-23 13:18:33'),
(1175, 'Selesai', 'V', 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 13:15:36'),
(1206, 'Selesai', 'V', 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 13:27:16'),
(1209, 'Selesai', 'V', 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 13:28:17'),
(1214, 'Belum', NULL, 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 13:26:55'),
(1217, 'Belum', NULL, 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 13:28:30'),
(1218, 'Selesai', 'V', 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 13:27:50'),
(1219, 'Belum', NULL, 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 13:25:31'),
(1221, 'Selesai', 'V', 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 13:27:38'),
(1224, 'Belum', NULL, 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 13:25:55'),
(1276, 'Selesai', 'V', 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 13:26:41'),
(1301, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:15:21'),
(1302, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:16:05'),
(1303, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:16:08'),
(1304, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:17:20'),
(1305, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:17:16'),
(1306, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:17:24'),
(1307, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:16:12'),
(1308, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:16:01'),
(1309, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:15:57'),
(1310, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:17:28'),
(1311, 'Selesai', 'V', NULL, NULL, NULL, 'Tidak', 2019, '2019-10-21 20:15:07'),
(1312, 'Selesai', 'V', NULL, 'Ya', NULL, NULL, 2019, '2019-10-21 20:15:46'),
(1371, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:16:18'),
(1372, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:17:03'),
(1373, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:16:55'),
(1374, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:16:59'),
(1375, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:16:51'),
(1376, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:17:07'),
(1377, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:17:11'),
(1401, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:18:50'),
(1402, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:20:07'),
(1403, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:19:09'),
(1404, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:18:42'),
(1405, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:19:06'),
(1406, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:20:02'),
(1407, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:18:59'),
(1408, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:19:18'),
(1409, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:18:54'),
(1410, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:19:13'),
(1471, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:19:03'),
(1473, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:18:46'),
(1604, 'Belum', NULL, 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 13:29:54'),
(1605, 'Belum', NULL, 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 13:29:45'),
(1671, 'Belum', NULL, 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 13:30:27'),
(1672, 'Selesai', 'V', 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 13:30:07'),
(1673, 'Selesai', 'V', 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 13:30:38'),
(1701, 'Selesai', 'V', 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 13:32:53'),
(1702, 'Selesai', 'V', 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 13:32:25'),
(1704, 'Belum', NULL, 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 13:31:45'),
(1705, 'Proses', NULL, 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 13:31:25'),
(1706, 'Belum', NULL, 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 13:32:09'),
(1707, 'Belum', NULL, 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 13:31:34'),
(1708, 'Selesai', 'V', 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 13:31:59'),
(1771, 'Selesai', 'V', 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 13:32:39'),
(1901, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:22:34'),
(1902, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:22:14'),
(1903, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:22:38'),
(1904, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:22:25'),
(1905, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:22:29'),
(1906, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:22:18'),
(1971, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:22:22'),
(2101, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:23:46'),
(2102, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:23:27'),
(2103, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:23:33'),
(2104, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:23:24'),
(2105, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:23:38'),
(2171, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:23:30'),
(2172, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:23:42'),
(3202, 'Selesai', 'V', 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 13:40:06'),
(3204, 'Selesai', 'V', 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 13:37:57'),
(3206, 'Selesai', 'V', 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 13:38:59'),
(3208, 'Selesai', 'V', 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 13:38:15'),
(3210, 'Proses', NULL, 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 13:38:47'),
(3211, 'Selesai', 'V', 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 13:39:15'),
(3213, 'Selesai', 'V', 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 13:38:31'),
(3217, 'Selesai', 'V', 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 13:39:48'),
(3278, 'Selesai', 'V', 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 13:39:34'),
(3401, 'Selesai', 'V', 'Sudah', 'Ya', 'Tidak', 'Ya', 2019, '2019-10-21 18:54:25'),
(3402, 'Selesai', 'V', NULL, NULL, NULL, 'Ya', 2019, '2019-10-21 18:54:13'),
(3403, 'Selesai', 'V', NULL, NULL, NULL, 'Ya', 2019, '2019-10-21 18:54:19'),
(3404, 'Selesai', 'V', NULL, NULL, NULL, 'Ya', 2019, '2019-10-21 18:54:02'),
(3471, 'Selesai', 'V', NULL, NULL, NULL, 'Ya', 2019, '2019-10-21 18:54:08'),
(3601, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:28:37'),
(3602, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:28:23'),
(3603, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:28:27'),
(3604, 'Selesai', NULL, NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:28:31'),
(3671, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:28:16'),
(3672, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:28:46'),
(3673, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:28:42'),
(3674, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:28:19'),
(5101, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:30:19'),
(5102, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:30:32'),
(5103, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:30:07'),
(5104, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:29:55'),
(5105, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:30:02'),
(5106, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:30:10'),
(5107, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:30:24'),
(5108, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:29:59'),
(5171, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:30:16'),
(5201, 'Selesai', 'V', 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 13:42:05'),
(5202, 'Selesai', 'V', 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 13:41:27'),
(5203, 'Selesai', 'V', 'Proses', 'Ya', 'Tidak', 'Tidak', 2019, '2019-10-23 13:42:21'),
(5205, 'Proses', NULL, 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 13:41:14'),
(5206, 'Selesai', 'V', 'Belum', 'Ya', 'Ya', 'Ya', 2019, '2019-10-23 13:42:57'),
(5207, 'Proses', 'V', 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 13:41:55'),
(5208, 'Belum', NULL, 'Belum', 'Ya', 'Ya', 'Tidak', 2019, '2019-10-23 13:42:39'),
(5272, 'Selesai', 'V', 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 13:41:40'),
(6101, 'Selesai', 'V', 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 13:49:46'),
(6102, 'Selesai', 'V', 'Proses', 'Tidak', 'Tidak', 'Ya', 2019, '2019-10-23 13:48:52'),
(6106, 'Selesai', 'V', 'Sudah', 'Ya', 'Ya', 'Ya', 2019, '2019-10-23 13:48:27'),
(6107, 'Belum', NULL, NULL, 'Ya', 'Ya', 'Ya', 2019, '2019-10-23 13:47:09'),
(6108, 'Belum', NULL, 'Belum', 'Ya', 'Tidak', 'Ya', 2019, '2019-10-23 13:46:53'),
(6109, 'Belum', NULL, 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 13:49:15'),
(6111, 'Belum', NULL, 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 13:49:32'),
(6112, 'Belum', NULL, 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 13:47:40'),
(6171, 'Selesai', 'V', 'Proses', 'Ya', 'Ya', 'Ya', 2019, '2019-10-23 13:47:29'),
(6172, 'Selesai', 'V', 'Proses', 'Tidak', 'Tidak', 'Ya', 2019, '2019-10-23 13:47:53'),
(6301, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:24:48'),
(6302, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:25:20'),
(6303, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:25:35'),
(6304, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:24:56'),
(6305, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:25:31'),
(6306, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:25:08'),
(6307, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:25:00'),
(6308, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:25:25'),
(6309, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:24:52'),
(6310, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:25:05'),
(6311, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:25:12'),
(6371, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:25:39'),
(6372, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:25:15'),
(6401, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:26:44'),
(6402, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:26:54'),
(6403, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:26:58'),
(6404, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:27:06'),
(6405, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:27:09'),
(6409, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:26:36'),
(6411, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:26:40'),
(6471, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:27:13'),
(6472, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:27:02'),
(6474, 'Selesai', 'V', NULL, NULL, NULL, NULL, 2019, '2019-10-21 20:26:50'),
(7102, 'Selesai', 'V', 'Belum', 'Tidak', 'Tidak', 'Ya', 2019, '2019-10-23 13:51:56'),
(7106, 'Selesai', NULL, 'Proses', 'Ya', 'Ya', 'Ya', 2019, '2019-10-23 13:53:02'),
(7108, 'Belum', NULL, 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 13:52:10'),
(7109, 'Belum', NULL, 'Belum', 'Ya', 'Ya', 'Ya', 2019, '2019-10-23 13:51:43'),
(7110, 'Belum', NULL, 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 13:51:16'),
(7171, 'Selesai', 'V', 'Proses', 'Ya', 'Ya', 'Ya', 2019, '2019-10-23 13:52:48'),
(7172, 'Selesai', 'V', 'Belum', 'Ya', 'Tidak', 'Ya', 2019, '2019-10-23 13:51:29'),
(7174, 'Selesai', 'V', 'Belum', 'Ya', 'Ya', 'Ya', 2019, '2019-10-23 13:52:27'),
(7301, 'Selesai', 'V', 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 14:07:40'),
(7303, 'Selesai', 'V', 'Belum', 'Tidak', 'Ya', 'Ya', 2019, '2019-10-23 14:09:42'),
(7308, 'Belum', NULL, 'Belum', 'Tidak', 'Tidak', 'Ya', 2019, '2019-10-23 14:08:40'),
(7310, 'Belum', NULL, 'Belum', 'Tidak', 'Ya', 'Ya', 2019, '2019-10-23 14:08:58'),
(7313, 'Selesai', 'V', 'Proses', 'Ya', 'Tidak', 'Tidak', 2019, '2019-10-23 14:08:25'),
(7316, 'Belum', NULL, 'Proses', 'Ya', 'Ya', 'Tidak', 2019, '2019-10-23 14:07:53'),
(7371, 'Selesai', 'V', 'Belum', 'Ya', 'Ya', 'Ya', 2019, '2019-10-23 14:09:25'),
(7372, 'Belum', NULL, 'Belum', 'Tidak', 'Ya', 'Ya', 2019, '2019-10-23 14:08:06'),
(9101, 'Selesai', 'V', 'Proses', 'Ya', 'Ya', 'Ya', 2019, '2019-10-23 14:24:01'),
(9102, 'Belum', NULL, 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 14:16:22'),
(9103, 'Belum', NULL, 'Belum', 'Ya', 'Tidak', 'Ya', 2019, '2019-10-23 14:24:32'),
(9104, 'Belum', NULL, 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 14:24:12'),
(9105, 'Selesai', 'V', 'Proses', 'Ya', 'Ya', 'Ya', 2019, '2019-10-23 14:23:48'),
(9106, 'Belum', NULL, 'Belum', 'Ya', 'Ya', 'Tidak', 2019, '2019-10-23 14:24:34'),
(9109, 'Proses', NULL, 'Proses', 'Tidak', 'Ya', 'Ya', 2019, '2019-10-23 14:24:54'),
(9110, 'Belum', NULL, 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 14:14:17'),
(9111, 'Selesai', 'V', 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 14:16:43'),
(9171, 'Belum', NULL, 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 14:17:17'),
(9402, 'Belum', NULL, 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 14:12:12'),
(9409, 'Belum', NULL, 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 14:12:34'),
(9411, 'Belum', NULL, 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 14:12:03'),
(9413, 'Belum', NULL, 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 14:12:47'),
(9415, 'Belum', NULL, 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 14:12:40'),
(9417, 'Belum', NULL, 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 14:12:57'),
(9419, 'Belum', NULL, 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 14:12:19'),
(9430, 'Belum', NULL, 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 14:11:45'),
(9433, 'Belum', NULL, 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 14:11:54'),
(9435, 'Belum', NULL, 'Belum', 'Tidak', 'Tidak', 'Tidak', 2019, '2019-10-23 14:11:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekap_pokja_pkp_provinsi`
--

CREATE TABLE `rekap_pokja_pkp_provinsi` (
  `id_provinsi` int(10) NOT NULL,
  `penggabungan` enum('Belum','Proses','Sudah') DEFAULT NULL COMMENT 'Penggabungan Berbagai Pokja (AMPL, Sanitasi, PKP, dsb)',
  `program` enum('Tidak','Ya') DEFAULT NULL COMMENT 'Punya Program Kerja 5 Tahun',
  `ketua` text DEFAULT NULL COMMENT 'Ketua Pokja',
  `perayaan` enum('Tidak','Ada') DEFAULT NULL COMMENT 'Perayaan Hapernas/ Hari Habitat/ dsb',
  `apbd` enum('Tidak','Ada') DEFAULT NULL COMMENT 'Dukungan APBD untuk Pokja PKP',
  `tahun` int(4) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rekap_pokja_pkp_provinsi`
--

INSERT INTO `rekap_pokja_pkp_provinsi` (`id_provinsi`, `penggabungan`, `program`, `ketua`, `perayaan`, `apbd`, `tahun`, `updated_at`) VALUES
(11, 'Belum', 'Tidak', 'Dinas PKP', 'Tidak', 'Tidak', 2019, '2019-10-17 15:07:25'),
(12, 'Sudah', 'Tidak', 'Dinas PKP', 'Ada', 'Tidak', 2019, '2019-10-17 15:07:56'),
(13, 'Belum', 'Ya', 'Dinas PKP', 'Tidak', 'Ada', 2019, '2019-10-17 15:08:34'),
(14, 'Belum', 'Ya', 'Dinas PKP', 'Ada', 'Tidak', 2019, '2019-10-17 15:08:59'),
(15, 'Belum', 'Ya', 'Dinas PUPR', 'Ada', 'Tidak', 2019, '2019-10-17 15:09:30'),
(16, 'Belum', 'Ya', 'Sekda', 'Tidak', 'Tidak', 2019, '2019-10-17 15:10:04'),
(17, 'Belum', 'Ya', 'Dinas PKPP', 'Tidak', 'Tidak', 2019, '2019-10-17 15:10:35'),
(18, 'Belum', 'Ya', 'Dinas PKP', 'Ada', 'Ada', 2019, '2019-10-17 15:10:57'),
(19, 'Belum', 'Ya', 'Dinas PKP', 'Tidak', 'Tidak', 2019, '2019-10-17 15:11:20'),
(21, 'Proses', 'Ya', 'Dinas PKP', 'Ada', 'Tidak', 2019, '2019-10-17 15:11:40'),
(32, 'Belum', 'Ya', 'Dinas PKP', 'Ada', 'Ada', 2019, '2019-10-17 15:12:32'),
(33, 'Belum', 'Ya', 'Dinas PKP', 'Ada', 'Ada', 2019, '2019-10-17 15:12:51'),
(34, 'Belum', 'Ya', 'Akademisi', 'Tidak', 'Tidak', 2019, '2019-10-17 15:13:11'),
(35, 'Belum', 'Ya', 'Bappeda', 'Tidak', 'Tidak', 2019, '2019-10-17 15:13:32'),
(36, 'Belum', 'Ya', 'Asda', 'Ada', 'Ada', 2019, '2019-10-17 15:13:50'),
(51, 'Belum', 'Ya', 'Asda', 'Tidak', 'Ada', 2019, '2019-10-17 15:14:15'),
(52, 'Sudah', 'Ya', 'Sekda', 'Ada', 'Tidak', 2019, '2019-10-17 15:14:36'),
(53, 'Belum', 'Ya', 'Dinas PRKP', 'Ada', 'Ada', 2019, '2019-10-17 15:14:54'),
(61, 'Belum', 'Tidak', 'Dinas LH dan PR', 'Tidak', 'Ada', 2019, '2019-10-17 15:15:15'),
(62, 'Belum', 'Ya', 'Dinas PKP', 'Tidak', 'Ada', 2019, '2019-10-17 15:15:39'),
(63, 'Belum', 'Ya', 'Sekda', 'Tidak', 'Ada', 2019, '2019-10-17 15:16:03'),
(64, 'Belum', 'Ya', 'Bappeda', 'Ada', 'Ada', 2019, '2019-10-17 15:17:12'),
(65, 'Belum', 'Ya', 'Dinas PU', 'Ada', 'Ada', 2019, '2019-10-17 15:17:35'),
(71, 'Belum', 'Ya', 'Dinas PKP', 'Tidak', 'Ada', 2019, '2019-10-17 15:18:28'),
(72, 'Belum', 'Tidak', 'Kadis PKP', 'Tidak', 'Ada', 2019, '2019-10-17 15:18:58'),
(73, 'Belum', 'Ya', 'Dinas PKP', 'Ada', 'Tidak', 2019, '2019-10-17 15:19:55'),
(74, 'Belum', 'Ya', 'Bappeda', 'Tidak', 'Tidak', 2019, '2019-10-17 15:20:31'),
(75, 'Sudah', 'Ya', 'Bappeda', 'Tidak', 'Ada', 2019, '2019-10-17 15:21:15'),
(76, 'Belum', 'Tidak', 'Dinas PKP', 'Tidak', 'Tidak', 2019, '2019-10-17 15:21:38'),
(81, 'Belum', 'Ya', 'Bappeda', 'Tidak', 'Tidak', 2019, '2019-10-17 15:21:55'),
(82, 'Belum', 'Tidak', 'Dinas PKP', 'Ada', 'Tidak', 2019, '2019-10-17 15:22:16'),
(91, 'Belum', 'Ya', 'Dinas PKP', 'Tidak', 'Tidak', 2019, '2019-10-17 15:22:43'),
(94, 'Belum', 'Ya', 'Dinas PKP', 'Ada', 'Tidak', 2019, '2019-10-17 15:22:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekap_rp3kp_kabkota`
--

CREATE TABLE `rekap_rp3kp_kabkota` (
  `id_kabupaten` int(4) NOT NULL,
  `belum` enum('X','V') DEFAULT NULL,
  `menganggarkan` enum('X','V') DEFAULT NULL,
  `sedang` enum('X','V') DEFAULT NULL,
  `belum_legal` enum('X','V') DEFAULT NULL,
  `review` enum('X','V') DEFAULT NULL,
  `sudah` enum('X','V') DEFAULT NULL,
  `bentuk_kegiatan` text DEFAULT NULL,
  `anggaran` text DEFAULT NULL,
  `tahun` int(4) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rekap_rp3kp_kabkota`
--

INSERT INTO `rekap_rp3kp_kabkota` (`id_kabupaten`, `belum`, `menganggarkan`, `sedang`, `belum_legal`, `review`, `sudah`, `bentuk_kegiatan`, `anggaran`, `tahun`, `updated_at`) VALUES
(1101, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-22 17:41:13'),
(1102, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-22 17:43:16'),
(1103, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-18 00:51:10'),
(1104, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-22 17:43:37'),
(1105, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-22 17:44:03'),
(1106, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-22 17:43:33'),
(1107, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-15 09:21:09'),
(1108, 'V', NULL, 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-18 00:50:13'),
(1109, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-22 17:42:19'),
(1110, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-22 17:41:09'),
(1111, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-22 17:44:06'),
(1112, 'V', NULL, 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-18 00:49:50'),
(1113, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-22 17:42:36'),
(1114, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-22 17:43:28'),
(1115, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-22 17:42:29'),
(1116, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-22 17:44:09'),
(1117, 'X', 'X', 'V', 'X', 'X', 'V', NULL, '', 2019, '2019-10-22 17:42:16'),
(1118, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-22 17:43:12'),
(1171, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-22 17:43:05'),
(1172, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-22 17:42:25'),
(1173, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-22 17:43:08'),
(1174, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-22 17:42:22'),
(1175, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-22 17:41:17'),
(1201, 'X', 'X', 'V', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 07:27:07'),
(1202, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 07:26:59'),
(1203, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 07:20:32'),
(1204, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 07:20:43'),
(1205, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 07:20:52'),
(1206, 'X', 'X', 'V', 'V', 'X', 'X', NULL, '', 2019, '2019-10-22 17:48:34'),
(1207, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:24:53'),
(1208, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:20:13'),
(1209, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-22 17:49:17'),
(1210, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 07:23:28'),
(1211, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:24:35'),
(1212, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 07:24:21'),
(1213, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 07:26:51'),
(1214, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-22 17:48:23'),
(1215, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:24:28'),
(1216, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 17:49:47'),
(1217, 'X', 'X', 'X', 'X', 'V', 'X', NULL, '', 2019, '2019-10-22 17:49:36'),
(1218, 'X', 'X', 'V', 'V', 'X', 'X', NULL, '', 2019, '2019-10-22 17:48:59'),
(1219, 'X', 'X', 'V', 'V', 'X', 'X', NULL, '', 2019, '2019-10-22 17:46:26'),
(1220, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 07:23:11'),
(1221, 'X', 'X', 'V', 'V', 'X', 'X', NULL, '', 2019, '2019-10-22 17:48:49'),
(1222, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:26:11'),
(1223, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:28:44'),
(1224, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-22 17:46:32'),
(1225, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:27:20'),
(1271, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:22:37'),
(1272, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 07:22:52'),
(1273, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 07:22:29'),
(1274, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 07:27:41'),
(1275, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:22:03'),
(1276, 'X', 'X', 'V', 'V', 'X', 'X', NULL, '', 2019, '2019-10-22 17:46:55'),
(1277, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:22:11'),
(1278, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:21:08'),
(1301, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-22 17:51:51'),
(1302, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 17:52:26'),
(1303, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-22 17:52:35'),
(1304, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:32:35'),
(1305, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:30:44'),
(1307, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 17:52:47'),
(1308, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 17:52:18'),
(1309, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 17:52:09'),
(1310, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:30:51'),
(1311, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 17:51:44'),
(1312, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-22 17:51:59'),
(1371, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-22 17:52:55'),
(1372, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 07:32:50'),
(1373, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 17:53:06'),
(1374, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:30:28'),
(1375, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-22 17:53:00'),
(1376, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:30:09'),
(1377, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:30:17'),
(1401, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 17:57:55'),
(1402, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 17:59:35'),
(1403, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 17:58:49'),
(1404, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 17:57:39'),
(1405, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 17:58:39'),
(1406, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 17:59:27'),
(1407, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 17:58:26'),
(1408, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 17:59:19'),
(1409, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 17:58:04'),
(1410, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 17:59:10'),
(1471, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 17:58:32'),
(1473, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-20 10:01:18'),
(1501, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 18:33:00'),
(1502, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 18:31:56'),
(1503, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 18:32:53'),
(1504, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-22 18:33:06'),
(1505, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 07:35:07'),
(1506, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 18:31:22'),
(1507, 'X', 'X', 'V', 'X', 'X', 'V', NULL, '', 2019, '2019-10-18 00:59:12'),
(1508, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-22 18:32:28'),
(1509, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-22 18:31:45'),
(1571, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-22 18:30:58'),
(1572, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-20 10:01:14'),
(1601, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 17:55:34'),
(1602, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 17:55:40'),
(1603, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-20 10:01:54'),
(1604, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 17:54:12'),
(1605, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 17:54:05'),
(1607, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 07:37:35'),
(1608, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 17:55:14'),
(1609, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-22 17:55:06'),
(1610, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 17:55:47'),
(1671, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 17:54:43'),
(1672, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 17:54:26'),
(1673, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-22 17:54:53'),
(1674, 'X', 'V', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:37:46'),
(1701, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 18:42:38'),
(1702, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 18:39:23'),
(1703, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 18:42:56'),
(1704, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 18:38:56'),
(1705, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 18:38:38'),
(1706, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 18:39:16'),
(1707, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-22 18:38:48'),
(1708, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 18:39:10'),
(1709, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 18:42:50'),
(1771, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-20 09:59:48'),
(1801, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 07:39:56'),
(1802, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:40:35'),
(1803, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:41:30'),
(1804, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:41:18'),
(1805, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 07:41:24'),
(1806, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:41:10'),
(1807, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:40:11'),
(1808, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:40:18'),
(1809, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:40:58'),
(1810, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 07:40:42'),
(1811, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:41:04'),
(1812, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 07:40:27'),
(1813, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 07:40:50'),
(1871, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 07:40:05'),
(1872, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-20 09:59:07'),
(1901, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-20 09:59:03'),
(1902, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 07:43:23'),
(1903, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:43:02'),
(1904, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:43:14'),
(1905, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:43:08'),
(1906, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 07:43:31'),
(1971, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:43:37'),
(2101, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:45:20'),
(2102, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-20 09:58:25'),
(2103, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:45:41'),
(2104, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:45:35'),
(2105, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:45:27'),
(2171, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:45:52'),
(2172, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:46:05'),
(3201, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 08:10:07'),
(3202, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 08:06:15'),
(3203, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:11:02'),
(3204, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 08:06:05'),
(3205, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:11:28'),
(3206, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 08:06:41'),
(3207, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 08:10:48'),
(3208, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 08:11:45'),
(3209, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:11:16'),
(3210, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:11:57'),
(3211, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 08:06:29'),
(3212, 'X', 'X', 'V', 'X', 'X', 'V', NULL, '', 2019, '2019-10-18 00:58:14'),
(3213, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:09:15'),
(3214, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:09:28'),
(3215, 'X', 'V', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-20 09:50:37'),
(3216, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-18 00:56:07'),
(3217, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-18 00:57:45'),
(3218, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:09:39'),
(3271, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:07:28'),
(3272, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 08:08:50'),
(3273, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 08:06:51'),
(3274, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 08:08:27'),
(3275, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 08:07:16'),
(3276, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 08:08:35'),
(3277, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 08:07:41'),
(3278, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 08:12:19'),
(3279, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 08:06:59'),
(3301, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-22 19:01:53'),
(3302, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:20:03'),
(3303, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-22 19:02:07'),
(3304, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:16:02'),
(3305, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:22:44'),
(3306, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-22 19:01:42'),
(3307, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 08:18:26'),
(3308, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 08:23:28'),
(3309, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-22 19:01:59'),
(3310, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:23:10'),
(3311, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 08:17:05'),
(3312, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 08:18:19'),
(3313, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 08:22:17'),
(3314, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 08:16:55'),
(3315, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:21:58'),
(3316, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:21:28'),
(3317, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-22 19:01:23'),
(3318, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-22 19:01:47'),
(3319, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 08:23:18'),
(3320, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 08:22:08'),
(3321, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 08:21:50'),
(3322, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-18 00:55:06'),
(3323, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:17:35'),
(3324, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 08:22:54'),
(3325, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 08:21:21'),
(3326, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 19:02:47'),
(3327, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:19:46'),
(3328, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:17:16'),
(3329, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-22 19:00:47'),
(3371, 'X', 'X', 'V', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:18:40'),
(3372, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-22 19:02:33'),
(3373, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 08:19:15'),
(3374, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 08:19:25'),
(3375, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:18:59'),
(3376, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 08:23:35'),
(3401, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-18 00:54:21'),
(3402, 'X', 'V', 'X', 'X', 'V', 'X', NULL, '', 2019, '2019-10-18 00:53:59'),
(3403, 'X', 'X', 'V', 'V', 'X', 'X', NULL, '', 2019, '2019-10-18 00:54:40'),
(3404, 'X', 'X', 'V', 'V', 'X', 'X', NULL, '', 2019, '2019-10-18 00:53:26'),
(3471, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-18 00:52:18'),
(3501, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-22 18:58:54'),
(3502, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:27:15'),
(3503, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-22 18:59:33'),
(3504, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-22 18:58:28'),
(3505, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 08:30:46'),
(3506, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:32:04'),
(3507, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 08:33:29'),
(3508, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 08:32:22'),
(3509, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:31:43'),
(3510, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:30:36'),
(3511, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:31:19'),
(3512, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 08:27:47'),
(3513, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 08:27:28'),
(3514, 'X', 'X', 'V', 'X', 'X', 'V', NULL, '', 2019, '2019-10-18 01:01:05'),
(3515, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-22 18:59:03'),
(3516, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:33:40'),
(3517, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:31:53'),
(3518, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:33:48'),
(3519, 'X', 'X', 'V', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:33:04'),
(3520, 'X', 'V', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:33:17'),
(3521, 'X', 'X', 'V', 'V', 'X', 'X', NULL, '', 2019, '2019-10-22 18:59:14'),
(3522, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 08:30:58'),
(3523, 'X', 'X', 'V', 'V', 'X', 'X', NULL, '', 2019, '2019-10-22 18:59:26'),
(3524, 'X', 'X', 'V', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:32:11'),
(3525, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 08:31:30'),
(3526, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:27:02'),
(3527, 'X', 'X', 'V', 'V', 'X', 'X', NULL, '', 2019, '2019-10-22 18:59:21'),
(3528, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 08:29:56'),
(3529, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:27:59'),
(3571, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:29:04'),
(3572, 'X', 'V', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-22 18:59:08'),
(3573, 'X', 'X', 'V', 'X', 'X', 'V', NULL, '', 2019, '2019-10-18 01:01:20'),
(3574, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 08:29:45'),
(3575, 'X', 'X', 'V', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:29:36'),
(3576, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:29:28'),
(3577, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:29:11'),
(3578, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 08:34:06'),
(3579, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-22 18:58:45'),
(3601, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-18 00:56:41'),
(3602, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-18 00:56:54'),
(3603, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-18 00:57:17'),
(3604, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 08:03:42'),
(3671, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 08:04:13'),
(3672, 'X', 'V', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:03:56'),
(3673, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 08:04:04'),
(3674, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-18 00:57:27'),
(5101, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 08:38:25'),
(5102, 'X', 'X', 'V', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:38:48'),
(5103, 'X', 'X', 'V', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:37:48'),
(5104, 'X', 'X', 'V', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:38:17'),
(5105, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:38:38'),
(5106, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:37:55'),
(5107, 'X', 'X', 'V', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:38:32'),
(5108, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 08:38:02'),
(5171, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 08:38:56'),
(5201, 'X', 'X', 'V', 'V', 'X', 'X', NULL, '', 2019, '2019-10-22 18:57:08'),
(5202, 'X', 'V', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-22 18:56:45'),
(5203, 'X', 'V', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-22 18:57:15'),
(5204, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-22 18:57:34'),
(5205, 'X', 'V', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-22 18:56:40'),
(5206, 'X', 'V', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-22 18:57:27'),
(5207, 'X', 'X', 'V', 'V', 'X', 'X', NULL, '', 2019, '2019-10-22 18:56:56'),
(5208, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-22 18:57:19'),
(5271, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-22 18:57:40'),
(5272, 'X', 'X', 'V', 'V', 'X', 'X', NULL, '', 2019, '2019-10-22 18:56:51'),
(5301, 'X', 'X', 'V', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:43:18'),
(5302, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:43:40'),
(5303, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:45:45'),
(5304, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:43:50'),
(5305, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:43:56'),
(5306, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 08:45:19'),
(5307, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:42:41'),
(5308, 'X', 'X', 'V', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:45:55'),
(5309, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:45:35'),
(5310, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:43:09'),
(5311, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:45:26'),
(5312, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:45:01'),
(5313, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:46:11'),
(5314, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:42:50'),
(5315, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:46:19'),
(5316, 'X', 'X', 'V', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:43:33'),
(5317, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:43:25'),
(5318, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:45:09'),
(5319, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:46:25'),
(5320, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:43:02'),
(5321, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:46:04'),
(5371, 'X', 'X', 'V', 'V', 'X', 'X', NULL, '', 2019, '2019-10-23 08:46:33'),
(6101, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:48:17'),
(6102, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:47:22'),
(6103, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 07:49:12'),
(6104, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 07:48:27'),
(6105, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:48:09'),
(6106, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:49:52'),
(6107, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:47:56'),
(6108, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:50:07'),
(6109, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:48:03'),
(6110, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:48:45'),
(6111, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:50:01'),
(6112, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:49:44'),
(6171, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-20 09:58:08'),
(6172, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:50:15'),
(6201, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 07:56:32'),
(6202, 'X', 'X', 'V', 'X', 'X', 'V', NULL, '', 2019, '2019-10-18 00:59:49'),
(6203, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:56:58'),
(6204, 'X', 'X', 'V', 'X', 'X', 'V', NULL, '', 2019, '2019-10-18 01:00:04'),
(6205, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:57:11'),
(6206, 'X', 'V', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-20 09:57:02'),
(6207, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 07:56:17'),
(6208, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:55:49'),
(6209, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 07:56:47'),
(6210, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:55:58'),
(6211, 'X', 'X', 'V', 'X', 'X', 'V', NULL, '', 2019, '2019-10-18 01:00:33'),
(6212, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-20 09:52:11'),
(6213, 'X', 'X', 'V', 'X', 'X', 'V', NULL, '', 2019, '2019-10-18 01:00:19'),
(6271, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:57:27'),
(6301, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 07:51:47'),
(6302, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:52:12'),
(6303, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 07:53:13'),
(6304, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 07:53:03'),
(6305, 'X', 'V', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:51:36'),
(6306, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:52:53'),
(6307, 'X', 'V', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:52:47'),
(6308, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:52:22'),
(6309, 'V', 'X', 'X', 'V', 'X', 'X', NULL, '', 2019, '2019-10-20 09:52:06'),
(6310, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:51:55'),
(6311, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 07:51:16'),
(6371, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 07:53:21'),
(6372, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 07:51:28'),
(6401, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:59:05'),
(6402, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:59:46'),
(6403, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 07:59:31'),
(6404, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:59:21'),
(6405, 'X', 'V', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-23 07:58:31'),
(6409, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 07:58:53'),
(6411, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-23 07:59:13'),
(6471, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-20 09:55:01'),
(6472, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-20 09:56:16'),
(6474, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-20 09:56:12'),
(6501, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 19:04:30'),
(6502, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-22 19:04:22'),
(6503, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-22 19:03:46'),
(6504, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 19:03:40'),
(6571, 'X', 'X', 'V', 'X', 'V', 'X', NULL, '', 2019, '2019-10-20 09:56:19'),
(7201, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 18:53:27'),
(7202, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 18:53:39'),
(7203, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 18:54:48'),
(7205, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 18:54:04'),
(7206, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 18:53:33'),
(7207, 'X', 'X', 'X', 'X', 'V', 'X', NULL, '', 2019, '2019-10-22 18:54:18'),
(7209, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 18:53:59'),
(7210, 'X', 'X', 'X', 'X', 'V', 'X', NULL, '', 2019, '2019-10-22 18:54:11'),
(7211, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 18:53:53'),
(7212, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 18:54:33'),
(7307, 'X', NULL, 'X', 'X', 'X', 'V', NULL, '', 2019, '2019-10-18 01:02:01'),
(7308, 'X', NULL, 'X', 'X', 'X', 'V', NULL, '', 2019, '2019-10-18 01:01:48'),
(7401, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 18:51:38'),
(7404, 'X', 'X', 'X', 'X', 'V', 'X', NULL, '', 2019, '2019-10-22 18:52:21'),
(7405, 'X', 'X', 'X', 'X', 'V', 'X', NULL, '', 2019, '2019-10-22 18:51:59'),
(7406, 'X', 'X', 'X', 'X', 'V', 'X', NULL, '', 2019, '2019-10-22 18:51:19'),
(7409, 'X', 'X', 'X', 'X', 'V', 'X', NULL, '', 2019, '2019-10-22 18:51:25'),
(7412, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 18:52:30'),
(7414, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 18:51:44'),
(7415, 'X', 'X', 'X', 'X', 'V', 'X', NULL, '', 2019, '2019-10-22 18:51:33'),
(7471, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 18:52:08'),
(7501, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 18:48:57'),
(7502, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 18:49:16'),
(7503, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 18:49:02'),
(7504, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 18:49:26'),
(7505, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 18:49:21'),
(7571, 'X', 'V', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 18:49:08'),
(8101, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 18:47:29'),
(8102, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 18:48:05'),
(8104, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 18:47:47'),
(8105, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 18:47:11'),
(8106, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 18:46:46'),
(8107, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 18:47:16'),
(8108, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 18:48:11'),
(8109, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 18:47:42'),
(8171, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 18:47:35'),
(8172, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 18:47:22'),
(9101, 'X', 'X', 'X', 'X', 'V', 'X', NULL, '', 2019, '2019-10-22 18:45:13'),
(9102, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 18:44:46'),
(9103, 'X', 'X', 'X', 'X', 'V', 'X', NULL, '', 2019, '2019-10-22 18:45:30'),
(9104, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 18:45:25'),
(9105, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 18:45:06'),
(9106, 'X', 'X', 'V', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 18:45:37'),
(9110, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 18:44:36'),
(9111, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 18:44:55'),
(9171, 'V', 'X', 'X', 'X', 'X', 'X', NULL, '', 2019, '2019-10-22 18:45:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekap_rp3kp_provinsi`
--

CREATE TABLE `rekap_rp3kp_provinsi` (
  `id_provinsi` int(2) NOT NULL,
  `belum` enum('X','V') DEFAULT NULL,
  `menganggarkan` enum('X','V') DEFAULT NULL,
  `sedang` enum('X','V') DEFAULT NULL,
  `belum_legal` enum('X','V') DEFAULT NULL,
  `review` enum('X','V') DEFAULT NULL,
  `sudah` enum('X','V') DEFAULT NULL,
  `bentuk_kegiatan` text DEFAULT NULL,
  `anggaran` text DEFAULT NULL,
  `tahun` int(4) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rekap_rp3kp_provinsi`
--

INSERT INTO `rekap_rp3kp_provinsi` (`id_provinsi`, `belum`, `menganggarkan`, `sedang`, `belum_legal`, `review`, `sudah`, `bentuk_kegiatan`, `anggaran`, `tahun`, `updated_at`) VALUES
(11, 'V', 'X', 'X', 'V', 'X', 'X', NULL, NULL, 2019, '2019-10-15 09:21:01'),
(12, 'X', 'X', 'V', 'X', 'V', 'X', NULL, NULL, 2019, '2019-10-15 09:21:01'),
(13, 'X', 'V', 'X', 'V', 'X', 'X', NULL, NULL, 2019, '2019-10-15 09:21:01'),
(14, 'X', 'X', 'V', 'V', 'X', 'X', NULL, NULL, 2019, '2019-10-17 11:05:00'),
(15, 'X', 'X', 'X', 'X', 'V', 'X', NULL, NULL, 2019, '2019-10-17 11:05:35'),
(16, 'X', 'V', 'X', 'V', 'X', 'X', NULL, NULL, 2019, '2019-10-17 11:06:04'),
(17, 'X', 'X', 'X', 'X', 'V', 'X', NULL, NULL, 2019, '2019-10-17 11:06:25'),
(18, 'X', 'X', 'X', 'X', 'V', 'X', NULL, NULL, 2019, '2019-10-17 11:06:38'),
(19, 'X', 'X', 'V', 'V', 'X', 'X', NULL, NULL, 2019, '2019-10-17 11:07:06'),
(21, 'X', 'X', 'X', 'X', 'V', 'X', NULL, NULL, 2019, '2019-10-17 11:07:19'),
(31, 'V', 'X', 'X', 'V', 'X', 'X', NULL, NULL, 2019, '2019-10-17 11:07:40'),
(32, 'X', 'X', 'X', 'X', 'V', 'X', NULL, NULL, 2019, '2019-10-17 11:08:00'),
(33, 'X', 'X', 'X', 'X', 'X', 'V', NULL, NULL, 2019, '2019-10-17 11:08:10'),
(34, 'X', 'X', 'V', 'X', 'V', 'X', NULL, NULL, 2019, '2019-10-17 11:08:19'),
(35, 'X', 'X', 'V', 'X', 'X', 'X', NULL, NULL, 2019, '2019-10-17 11:09:09'),
(36, 'X', 'X', 'X', 'X', 'V', 'X', NULL, NULL, 2019, '2019-10-17 11:09:45'),
(51, 'X', 'X', 'V', 'V', 'X', 'X', NULL, NULL, 2019, '2019-10-17 11:09:58'),
(52, 'V', 'X', 'X', 'V', 'X', 'X', NULL, NULL, 2019, '2019-10-17 14:56:42'),
(53, 'V', 'X', 'X', 'V', 'X', 'X', NULL, NULL, 2019, '2019-10-17 14:56:58'),
(61, 'V', 'X', 'X', 'V', 'X', 'X', NULL, NULL, 2019, '2019-10-17 14:57:12'),
(62, 'V', 'X', 'X', 'V', 'X', 'X', NULL, NULL, 2019, '2019-10-17 14:57:23'),
(63, 'X', 'X', 'V', 'V', 'X', 'X', NULL, NULL, 2019, '2019-10-17 14:57:41'),
(64, 'X', 'X', 'V', 'V', 'X', 'X', NULL, NULL, 2019, '2019-10-17 14:57:57'),
(65, 'X', 'X', 'V', 'V', 'X', 'X', NULL, NULL, 2019, '2019-10-17 14:58:08'),
(71, 'V', 'X', 'X', 'V', 'X', 'X', NULL, NULL, 2019, '2019-10-17 14:58:20'),
(72, 'X', 'X', 'X', 'X', 'V', 'X', NULL, NULL, 2019, '2019-10-17 14:58:39'),
(73, 'X', 'X', 'V', 'V', 'X', 'X', NULL, NULL, 2019, '2019-10-17 14:59:51'),
(74, 'X', 'X', 'V', 'V', 'X', 'X', NULL, NULL, 2019, '2019-10-17 15:00:04'),
(75, 'X', 'X', 'X', 'X', 'V', 'X', NULL, NULL, 2019, '2019-10-17 15:00:17'),
(76, 'X', 'X', 'X', 'X', 'V', 'X', NULL, NULL, 2019, '2019-10-17 15:00:30'),
(81, 'X', 'X', 'V', 'V', 'X', 'X', NULL, NULL, 2019, '2019-10-17 15:00:44'),
(82, 'V', 'X', 'X', 'V', 'X', 'X', NULL, NULL, 2019, '2019-10-17 15:00:57'),
(91, 'X', 'X', 'X', 'X', 'V', 'X', NULL, NULL, 2019, '2019-10-17 15:01:10'),
(94, 'V', 'X', 'X', 'V', 'X', 'X', NULL, NULL, 2019, '2019-10-17 15:01:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tr_guru_mapel`
--

CREATE TABLE `tr_guru_mapel` (
  `id` int(6) NOT NULL,
  `id_guru` int(6) NOT NULL,
  `id_mapel` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tr_guru_tes`
--

CREATE TABLE `tr_guru_tes` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tr_ikut_ujian`
--

CREATE TABLE `tr_ikut_ujian` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ujian_modul`
--

CREATE TABLE `ujian_modul` (
  `id_ujianmodul` int(11) NOT NULL,
  `id_ujian` int(11) NOT NULL,
  `id_modul` int(11) NOT NULL,
  `jml_soal` varchar(50) NOT NULL,
  `urutan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(9) UNSIGNED NOT NULL,
  `username` varchar(200) DEFAULT NULL,
  `pass` varchar(200) DEFAULT NULL,
  `total_login` int(9) UNSIGNED NOT NULL DEFAULT 0,
  `last_login` datetime DEFAULT NULL,
  `last_activity` datetime DEFAULT NULL,
  `login_attempts` int(9) UNSIGNED DEFAULT 0,
  `last_login_attempt` datetime DEFAULT NULL,
  `remember_time` datetime DEFAULT NULL,
  `remember_exp` text DEFAULT NULL,
  `ip_address` text DEFAULT NULL,
  `is_active` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `verification_token` varchar(128) DEFAULT NULL,
  `recovery_token` varchar(128) DEFAULT NULL,
  `unlock_token` varchar(128) DEFAULT NULL,
  `created_by` int(9) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(9) UNSIGNED DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_by` int(9) UNSIGNED DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `pass`, `total_login`, `last_login`, `last_activity`, `login_attempts`, `last_login_attempt`, `remember_time`, `remember_exp`, `ip_address`, `is_active`, `verification_token`, `recovery_token`, `unlock_token`, `created_by`, `created_at`, `updated_by`, `updated_at`, `deleted_by`, `deleted_at`, `deleted`) VALUES
(1, 'admin', '1', 48, '2019-10-23 10:53:26', '2019-10-23 10:53:26', 56, '2019-10-23 10:53:26', NULL, NULL, '117.20.54.249', 1, NULL, NULL, NULL, 0, '2019-09-06 12:45:51', NULL, NULL, NULL, NULL, 0),
(2, 'admin_pusat', 'admin123', 29, '2019-10-23 19:58:33', '2019-10-23 19:58:33', 37, '2019-10-23 19:58:33', NULL, NULL, '117.20.54.249', 1, NULL, NULL, NULL, 1, '2019-09-19 22:32:14', 1, '2019-10-06 14:02:57', NULL, NULL, 0),
(3, 'provinsi_maluku', 'maluku123', 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, '2019-10-06 14:04:33', NULL, NULL, NULL, NULL, 0),
(4, 'provinsi_jabar', 'jabarjuara123', 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, '2019-10-06 14:07:05', NULL, NULL, NULL, NULL, 0),
(5, 'provinsi_sumsel', 'wongkitogalo', 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, '2019-10-06 14:13:54', NULL, NULL, NULL, NULL, 0),
(6, 'kabupaten_boalem', 'boalemo123', 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, '2019-10-06 14:15:03', NULL, NULL, NULL, NULL, 0),
(7, 'kota_ternate', 'ternate123', 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, '2019-10-06 14:16:06', NULL, NULL, NULL, NULL, 0),
(8, 'kota_palu', 'palu123', 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, '2019-10-06 14:17:54', NULL, NULL, NULL, NULL, 0),
(9, 'kabupaten_solok', 'barehsolok', 1, '2019-10-06 14:23:05', '2019-10-06 14:23:05', 2, '2019-10-06 14:23:05', NULL, NULL, '114.124.204.241', 1, NULL, NULL, NULL, 1, '2019-10-06 14:18:53', NULL, NULL, NULL, NULL, 0),
(10, 'kabupaten_wonoso', 'carica123', 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, '2019-10-06 14:19:59', NULL, NULL, NULL, NULL, 0),
(11, 'yogyakarta', 'yogya123', 8, '2019-10-25 07:26:40', '2019-10-25 07:26:40', 8, '2019-10-25 07:26:40', NULL, NULL, '103.255.15.48', 1, NULL, NULL, NULL, 2, '2019-10-17 16:31:29', 2, '2019-10-22 19:13:37', NULL, NULL, 0),
(12, 'kabupaten_bantul', 'bantul456', 12, '2019-10-23 19:55:59', '2019-10-23 19:55:59', 14, '2019-10-23 19:55:59', NULL, NULL, '117.20.54.249', 1, NULL, NULL, NULL, 2, '2019-10-17 16:34:44', NULL, NULL, NULL, NULL, 0),
(13, 'gunung_kidul', 'gunungkidul456', 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 2, '2019-10-17 16:35:59', 2, '2019-10-23 19:59:53', NULL, NULL, 0),
(14, 'kabupaten_kulon_', 'kulonprogo456', 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 2, '2019-10-17 16:40:02', NULL, NULL, NULL, NULL, 0),
(15, 'kabupaten_sleman', 'sleman456', 9, '2019-10-23 19:59:55', '2019-10-23 19:59:55', 15, '2019-10-23 19:59:55', NULL, NULL, '117.20.54.249', 1, NULL, NULL, NULL, 2, '2019-10-17 16:41:30', NULL, NULL, NULL, NULL, 0),
(16, 'kota_yogyakarta', 'yogyakarta456', 11, '2019-10-24 10:07:41', '2019-10-24 10:07:41', 11, '2019-10-24 10:07:41', NULL, NULL, '103.141.234.29', 1, NULL, NULL, NULL, 2, '2019-10-17 16:42:46', 2, '2019-10-22 19:14:15', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_profile`
--

CREATE TABLE `user_profile` (
  `id` int(9) NOT NULL,
  `user_id` int(9) NOT NULL,
  `fullname` text DEFAULT NULL,
  `nin` text DEFAULT NULL COMMENT 'National Identity Number',
  `bdt_id` text DEFAULT NULL,
  `pkh_id` varchar(30) DEFAULT NULL,
  `kks_id` varchar(30) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `address` text DEFAULT NULL,
  `photo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_profile`
--

INSERT INTO `user_profile` (`id`, `user_id`, `fullname`, `nin`, `bdt_id`, `pkh_id`, `kks_id`, `birth_date`, `address`, `photo`) VALUES
(1, 1, 'Administrator', NULL, NULL, NULL, NULL, NULL, NULL, 'file_1562515936.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `level` int(11) NOT NULL,
  `kon_id` int(11) NOT NULL,
  `definition` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `route` varchar(32) DEFAULT NULL,
  `created_by` int(9) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_by` int(9) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_by` int(9) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `name`, `level`, `kon_id`, `definition`, `description`, `route`, `created_by`, `created_at`, `updated_by`, `updated_at`, `deleted_by`, `deleted_at`, `deleted`) VALUES
(1, 'Super Admin', 1, 0, 'Super Administrator', NULL, 'admin_side/rekap_rp3kp_provinsi', 0, '2018-10-27 17:52:08', NULL, NULL, NULL, NULL, 0),
(2, 'Admin Pusat', 2, 0, 'Admin Pusat', NULL, 'admin_side/rekap_rp3kp_provinsi', 0, '2017-03-06 01:19:26', 2, '2018-10-27 18:55:37', NULL, NULL, 0),
(3, 'Admin Provinsi', 3, 8, 'Admin Provinsi', 'Kepala Bidang', 'admin_side/rekap_rp3kp_provinsi', 0, '2017-03-06 01:19:26', NULL, NULL, NULL, NULL, 0),
(4, 'Admin Kabupaten/ Kota', 4, 6, 'Admin Kabupaten/ Kota', 'Kepala Bidang', 'admin_side/rekap_rp3kp_provinsi', 0, '2018-09-02 14:20:07', NULL, NULL, NULL, NULL, 0),
(5, 'Admin Provinsi', 0, 0, 'Admin Provinsi', 'Kepala Bagian', 'admin_side/rekap_rp3kp_provinsi', 0, '2019-09-19 21:21:10', NULL, NULL, NULL, NULL, 0),
(6, 'Admin Kabupaten/ Kota', 0, 0, 'Admin Kabupaten/ Kota', 'Kepala Bagian', 'admin_side/rekap_rp3kp_provinsi', 0, '2019-09-19 21:21:59', NULL, NULL, NULL, NULL, 0),
(7, 'Admin Provinsi', 0, 0, 'Admin Provinsi', 'Staff', 'admin_side/rekap_rp3kp_provinsi', 0, '2019-09-19 21:21:59', NULL, NULL, NULL, NULL, 0),
(8, 'Admin Kabupaten/ Kota', 0, 0, 'Admin Kabupaten/ Kota', 'Staff', 'admin_side/rekap_rp3kp_provinsi', 0, '2019-09-19 21:22:51', NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_to_role`
--

CREATE TABLE `user_to_role` (
  `user_id` int(9) UNSIGNED NOT NULL DEFAULT 0,
  `role_id` int(9) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user_to_role`
--

INSERT INTO `user_to_role` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 3),
(5, 3),
(6, 4),
(7, 4),
(8, 4),
(9, 4),
(10, 4),
(11, 3),
(12, 4),
(13, 4),
(14, 4),
(15, 4),
(16, 4);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`activity_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `company_id` (`company_id`);
ALTER TABLE `activity_logs` ADD FULLTEXT KEY `activity_type` (`activity_type`);

--
-- Indeks untuk tabel `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id_agenda`);

--
-- Indeks untuk tabel `aspirasi`
--
ALTER TABLE `aspirasi`
  ADD PRIMARY KEY (`id_aspirasi`);

--
-- Indeks untuk tabel `diskusi`
--
ALTER TABLE `diskusi`
  ADD PRIMARY KEY (`id_diskusi`);

--
-- Indeks untuk tabel `dokumen`
--
ALTER TABLE `dokumen`
  ADD PRIMARY KEY (`id_dokumen`);

--
-- Indeks untuk tabel `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id_faq`);

--
-- Indeks untuk tabel `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indeks untuk tabel `hubungi_kami`
--
ALTER TABLE `hubungi_kami`
  ADD PRIMARY KEY (`id_hub`);

--
-- Indeks untuk tabel `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD PRIMARY KEY (`id_kabupaten`);

--
-- Indeks untuk tabel `level_user`
--
ALTER TABLE `level_user`
  ADD PRIMARY KEY (`id_level`);

--
-- Indeks untuk tabel `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`id_materi`),
  ADD KEY `sub_kategori` (`sub_kategori`);

--
-- Indeks untuk tabel `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`id_modul`);

--
-- Indeks untuk tabel `m_soal`
--
ALTER TABLE `m_soal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `id_mapel` (`id_mapel`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `wilayah` (`wilayah`);

--
-- Indeks untuk tabel `profil_dir`
--
ALTER TABLE `profil_dir`
  ADD PRIMARY KEY (`id_profil`);

--
-- Indeks untuk tabel `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`id_provinsi`);

--
-- Indeks untuk tabel `regulasi`
--
ALTER TABLE `regulasi`
  ADD PRIMARY KEY (`id_reg`);

--
-- Indeks untuk tabel `rekap_pokja_pkp_kabkota`
--
ALTER TABLE `rekap_pokja_pkp_kabkota`
  ADD PRIMARY KEY (`id_kabupaten`);

--
-- Indeks untuk tabel `rekap_pokja_pkp_provinsi`
--
ALTER TABLE `rekap_pokja_pkp_provinsi`
  ADD PRIMARY KEY (`id_provinsi`),
  ADD KEY `id_provinsi` (`id_provinsi`);

--
-- Indeks untuk tabel `rekap_rp3kp_kabkota`
--
ALTER TABLE `rekap_rp3kp_kabkota`
  ADD PRIMARY KEY (`id_kabupaten`),
  ADD KEY `id_provinsi` (`id_kabupaten`);

--
-- Indeks untuk tabel `rekap_rp3kp_provinsi`
--
ALTER TABLE `rekap_rp3kp_provinsi`
  ADD PRIMARY KEY (`id_provinsi`),
  ADD KEY `id_provinsi` (`id_provinsi`);

--
-- Indeks untuk tabel `tr_guru_mapel`
--
ALTER TABLE `tr_guru_mapel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `id_mapel` (`id_mapel`);

--
-- Indeks untuk tabel `tr_guru_tes`
--
ALTER TABLE `tr_guru_tes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `id_mapel` (`id_mapel`);

--
-- Indeks untuk tabel `tr_ikut_ujian`
--
ALTER TABLE `tr_ikut_ujian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_tes` (`id_tes`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `ujian_modul`
--
ALTER TABLE `ujian_modul`
  ADD PRIMARY KEY (`id_ujianmodul`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username_index` (`username`),
  ADD KEY `is_active_index` (`is_active`);

--
-- Indeks untuk tabel `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `id_pkh` (`pkh_id`),
  ADD KEY `id_kks` (`kks_id`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name_index` (`name`);

--
-- Indeks untuk tabel `user_to_role`
--
ALTER TABLE `user_to_role`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_id_index` (`role_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `activity_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=894;

--
-- AUTO_INCREMENT untuk tabel `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id_agenda` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `aspirasi`
--
ALTER TABLE `aspirasi`
  MODIFY `id_aspirasi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `diskusi`
--
ALTER TABLE `diskusi`
  MODIFY `id_diskusi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `dokumen`
--
ALTER TABLE `dokumen`
  MODIFY `id_dokumen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `faq`
--
ALTER TABLE `faq`
  MODIFY `id_faq` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `hubungi_kami`
--
ALTER TABLE `hubungi_kami`
  MODIFY `id_hub` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `kabupaten`
--
ALTER TABLE `kabupaten`
  MODIFY `id_kabupaten` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9473;

--
-- AUTO_INCREMENT untuk tabel `level_user`
--
ALTER TABLE `level_user`
  MODIFY `id_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `materi`
--
ALTER TABLE `materi`
  MODIFY `id_materi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `modul`
--
ALTER TABLE `modul`
  MODIFY `id_modul` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `m_soal`
--
ALTER TABLE `m_soal`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `profil_dir`
--
ALTER TABLE `profil_dir`
  MODIFY `id_profil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `provinsi`
--
ALTER TABLE `provinsi`
  MODIFY `id_provinsi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT untuk tabel `regulasi`
--
ALTER TABLE `regulasi`
  MODIFY `id_reg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tr_guru_mapel`
--
ALTER TABLE `tr_guru_mapel`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tr_guru_tes`
--
ALTER TABLE `tr_guru_tes`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tr_ikut_ujian`
--
ALTER TABLE `tr_ikut_ujian`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `ujian_modul`
--
ALTER TABLE `ujian_modul`
  MODIFY `id_ujianmodul` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(9) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
