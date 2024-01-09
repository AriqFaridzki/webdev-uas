-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 09, 2024 at 05:03 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `creds`
--

CREATE TABLE `creds` (
  `id` bigint UNSIGNED NOT NULL,
  `id_user` bigint UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` enum('admin','pelanggan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `detail_pesanans`
--

CREATE TABLE `detail_pesanans` (
  `id_detail_pesanan` bigint UNSIGNED NOT NULL,
  `id_pesanan` bigint UNSIGNED NOT NULL,
  `id_harga_wisata` bigint UNSIGNED NOT NULL,
  `qty` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detail_pesanans`
--

INSERT INTO `detail_pesanans` (`id_detail_pesanan`, `id_pesanan`, `id_harga_wisata`, `qty`, `created_at`, `updated_at`) VALUES
(51, 52, 85, 1, '2024-01-07 08:15:30', '2024-01-07 08:15:30'),
(52, 52, 75, 3, NULL, NULL),
(53, 1, 61, 20, '2024-01-08 21:48:23', '2024-01-08 21:48:23');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `harga_wisatas`
--

CREATE TABLE `harga_wisatas` (
  `id_harga_wisata` bigint UNSIGNED NOT NULL,
  `id_lokasi` bigint UNSIGNED NOT NULL,
  `harga` int NOT NULL,
  `id_jenis_orang` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `harga_wisatas`
--

INSERT INTO `harga_wisatas` (`id_harga_wisata`, `id_lokasi`, `harga`, `id_jenis_orang`, `created_at`, `updated_at`) VALUES
(61, 2, 15000, 1, NULL, NULL),
(62, 2, 8000, 2, NULL, NULL),
(63, 2, 12000, 3, NULL, NULL),
(64, 3, 18000, 1, NULL, NULL),
(65, 3, 9000, 2, NULL, NULL),
(66, 3, 15000, 3, NULL, NULL),
(67, 4, 20000, 1, NULL, NULL),
(68, 4, 10000, 2, NULL, NULL),
(69, 4, 16000, 3, NULL, NULL),
(70, 5, 16000, 1, NULL, NULL),
(71, 5, 8500, 2, NULL, NULL),
(72, 5, 13000, 3, NULL, NULL),
(73, 10, 16000, 1, NULL, NULL),
(74, 10, 8000, 2, NULL, NULL),
(75, 10, 13000, 3, NULL, NULL),
(76, 11, 18000, 1, NULL, NULL),
(77, 11, 10000, 2, NULL, NULL),
(78, 11, 16000, 3, NULL, NULL),
(79, 13, 16000, 1, NULL, NULL),
(80, 13, 8000, 2, NULL, NULL),
(81, 13, 13000, 3, NULL, NULL),
(82, 14, 18000, 1, NULL, NULL),
(83, 14, 10000, 2, NULL, NULL),
(84, 14, 15000, 3, NULL, NULL),
(85, 15, 17000, 1, NULL, NULL),
(86, 15, 9000, 2, NULL, NULL),
(87, 15, 14000, 3, NULL, NULL),
(88, 15, 1, 2, '2024-01-08 21:44:57', '2024-01-08 21:44:57'),
(89, 15, 1, 2, '2024-01-08 21:45:07', '2024-01-08 21:45:07'),
(90, 15, 1, 2, '2024-01-08 21:46:12', '2024-01-08 21:46:12');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_lokasis`
--

CREATE TABLE `jenis_lokasis` (
  `id_jenis_lokasi` bigint UNSIGNED NOT NULL,
  `jenis_lokasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jenis_lokasis`
--

INSERT INTO `jenis_lokasis` (`id_jenis_lokasi`, `jenis_lokasi`) VALUES
(1, 'wisata'),
(2, 'gerbang');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_orangs`
--

CREATE TABLE `jenis_orangs` (
  `id_jenis_orang` bigint UNSIGNED NOT NULL,
  `jenis_orang` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jenis_orangs`
--

INSERT INTO `jenis_orangs` (`id_jenis_orang`, `jenis_orang`) VALUES
(1, 'Dewasa'),
(2, 'Anak'),
(3, 'Lansia');

-- --------------------------------------------------------

--
-- Table structure for table `lokasis`
--

CREATE TABLE `lokasis` (
  `id_lokasi` bigint UNSIGNED NOT NULL,
  `nama_lokasi` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `map_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_lokasi` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lokasis`
--

INSERT INTO `lokasis` (`id_lokasi`, `nama_lokasi`, `alamat`, `keterangan`, `map_link`, `jenis_lokasi`, `created_at`, `updated_at`) VALUES
(2, 'Enchanted Valley', 'Jalan Mistik No. 42', 'Nikmati keindahan alam yang menakjubkan di lembah ini yang dipenuhi dengan tumbuhan eksotis dan makhluk ajaib.', '-', 1, NULL, NULL),
(3, 'Mystic Peak', 'Puncak Misterius, Desa Berkabut', 'Raih puncak tertinggi dan rasakan ketenangan di tengah kabut misterius.', '-', 1, NULL, NULL),
(4, 'Ethereal Gardens', 'Taman Eteris No. 17', 'Jelajahi taman yang penuh dengan bunga langka dan suara air terjun yang menenangkan.', '-', 1, NULL, NULL),
(5, 'Whispering Woods', 'Hutan Bisikan, Jalur Sunyi', 'Dengarkan bisikan alam di dalam hutan ini yang dipenuhi dengan flora dan fauna unik.', '-', 1, NULL, NULL),
(6, 'Southern Gate of Explosion', 'Pintu Selatan Explotion', 'Gerbang selatan yang menyuguhkan petualangan dan kejutan di setiap langkah.', '-', 2, NULL, NULL),
(7, 'Northern Breeze Gateway', 'Gerbang Angin Utara', 'Sambut udara segar dan angin sejuk di gerbang utara ini.', '-', 2, NULL, NULL),
(8, 'Eastern Sunrise Portal', 'Gerbang Angin Matahari Timur', 'Buka gerbang ini untuk menyaksikan matahari terbit yang memukau di timur.', '-', 2, NULL, NULL),
(9, 'Western Twilight Gate', 'Gerbang Senja Barat', 'Jelajahi keindahan senja di gerbang barat ini yang penuh dengan magis.', '-', 2, NULL, NULL),
(10, 'Serenity Springs', 'Sumber Ketenangan No. 7', 'Nikmati ketenangan di sekitar mata air yang jernih dan alam yang asri.', '-', 1, NULL, NULL),
(11, 'Dreamland Oasis', 'Oasis Mimpi, Gurun Ilusi', 'Temukan oasis di tengah gurun dengan air yang menyegarkan dan pemandangan impian.', '-', 1, NULL, NULL),
(12, 'Northern Lights Observatory', 'Gerbang Angin Utara', 'Saksikan keajaiban cahaya aurora di langit utara yang memukau.', '-', 2, NULL, NULL),
(13, 'Crystal Caves', 'Gua Kristal, Pegunungan Shimmer', 'Telusuri keindahan gua kristal dengan formasi batu yang menakjubkan.', '-', 1, NULL, NULL),
(14, 'Eternal Waterfall', 'Air Terjun Abadi, Lembah Damai', 'Rasakan keajaiban air terjun yang terus mengalir tanpa henti.', '-', 1, NULL, NULL),
(15, 'Mystical Lagoon', 'Laguna Mistik, Pulau Cahaya', 'Nikmati keindahan laguna dengan air berkilauan dan pemandangan eksotis.', '-', 1, NULL, NULL),
(16, 'test', 'test alamat', '43516 Valentin Hills Apt. 065\nNorth Kyliehaven, VA 12482', 'https://www.google.com/maps/place/Rajolado/@-6.8785403,107.5623616,15z/data=!4m6!3m5!1s0x2e68e79067f1ee03:0x13af07086627b6f1!8m2!3d-6.8853411!4d107.5728997!16s%2Fg%2F11mx3cvh7s?entry=ttu', 1, '2024-01-08 21:56:02', '2024-01-08 21:56:02');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '1_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2_create_creds_table', 1),
(6, '3_create_pesanans_table', 1),
(7, '4_create_lokasis_table', 1),
(8, '5_create_harga_wisatas_table', 1),
(9, '7_create_jenis_lokasis_table', 1),
(10, '8_create_jenis_orangs_table', 1),
(11, '9_create_detail_pesanans_table', 1),
(12, '2023_12_31_075340_tambah_bukti_pembayaran', 2),
(13, '2024_01_01_042723_nambahin_index', 3),
(14, '11_change_users_table', 4),
(15, '12_tambah_keterengan_lokasi', 5),
(16, '2024_01_07_151139_add_timestamps_to_detail_pesanan', 6),
(17, '13_add_timestamps_harga_wisata', 7),
(18, '2024_01_09_045229_add_timestamps_lokasi', 8),
(19, '14_add_timestamps_lokasi', 9);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 293, 'ApiToken', 'ac32e98c5b410f21c288b1bcabb36ac889263815276cfa0cba60c182cf33a099', '[\"*\"]', NULL, NULL, '2024-01-05 07:35:47', '2024-01-05 07:35:47');

-- --------------------------------------------------------

--
-- Table structure for table `pesanans`
--

CREATE TABLE `pesanans` (
  `id_pesanan` bigint UNSIGNED NOT NULL,
  `id_user` bigint UNSIGNED NOT NULL,
  `tgl_pesan` date NOT NULL,
  `tgl_selesai` date DEFAULT NULL,
  `status_pesanan` enum('pending','booked','on_tour','finished') COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_bukti_pembayaran` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_harga` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pesanans`
--

INSERT INTO `pesanans` (`id_pesanan`, `id_user`, `tgl_pesan`, `tgl_selesai`, `status_pesanan`, `foto_bukti_pembayaran`, `total_harga`, `created_at`, `updated_at`) VALUES
(1, 616, '2019-08-18', NULL, 'booked', NULL, 212767, '2024-01-07 08:05:10', '2024-01-07 08:05:10'),
(2, 641, '2015-05-03', '2018-07-11', 'finished', NULL, 36170, '2024-01-07 08:05:56', '2024-01-07 08:05:56'),
(3, 642, '2020-03-26', '2021-03-07', 'finished', NULL, 63152, '2024-01-07 08:05:56', '2024-01-07 08:05:56'),
(4, 643, '2015-07-04', '2019-02-28', 'finished', NULL, 228140, '2024-01-07 08:05:56', '2024-01-07 08:05:56'),
(5, 644, '2020-05-31', '2014-04-23', 'finished', NULL, 16175, '2024-01-07 08:05:56', '2024-01-07 08:05:56'),
(6, 666, '2019-04-26', NULL, 'pending', NULL, 217084, '2024-01-07 08:07:07', '2024-01-07 08:07:07'),
(7, 667, '2017-02-21', NULL, 'on_tour', NULL, 226906, '2024-01-07 08:07:07', '2024-01-07 08:07:07'),
(8, 668, '2022-02-07', NULL, 'booked', NULL, 141684, '2024-01-07 08:07:07', '2024-01-07 08:07:07'),
(9, 669, '2017-05-11', NULL, 'booked', NULL, 150934, '2024-01-07 08:07:07', '2024-01-07 08:07:07'),
(10, 670, '2019-02-10', NULL, 'on_tour', NULL, 196181, '2024-01-07 08:07:07', '2024-01-07 08:07:07'),
(11, 671, '2019-05-02', NULL, 'on_tour', NULL, 251770, '2024-01-07 08:07:07', '2024-01-07 08:07:07'),
(12, 672, '2017-12-01', NULL, 'booked', NULL, 61926, '2024-01-07 08:07:07', '2024-01-07 08:07:07'),
(13, 673, '2020-07-14', NULL, 'booked', NULL, 248986, '2024-01-07 08:07:07', '2024-01-07 08:07:07'),
(14, 674, '2016-08-10', NULL, 'finished', NULL, 102306, '2024-01-07 08:07:07', '2024-01-07 08:07:07'),
(15, 675, '2023-04-12', NULL, 'booked', NULL, 165916, '2024-01-07 08:07:07', '2024-01-07 08:07:07'),
(16, 676, '2017-05-31', NULL, 'on_tour', NULL, 83435, '2024-01-07 08:07:07', '2024-01-07 08:07:07'),
(17, 677, '2023-06-24', NULL, 'finished', NULL, 216425, '2024-01-07 08:07:07', '2024-01-07 08:07:07'),
(18, 678, '2020-02-04', NULL, 'booked', NULL, 187053, '2024-01-07 08:07:07', '2024-01-07 08:07:07'),
(19, 679, '2023-04-04', NULL, 'finished', NULL, 125980, '2024-01-07 08:07:07', '2024-01-07 08:07:07'),
(20, 680, '2023-08-25', NULL, 'pending', NULL, 61035, '2024-01-07 08:07:07', '2024-01-07 08:07:07'),
(21, 681, '2021-06-13', NULL, 'booked', NULL, 65566, '2024-01-07 08:07:07', '2024-01-07 08:07:07'),
(22, 682, '2018-05-05', NULL, 'finished', NULL, 280672, '2024-01-07 08:07:07', '2024-01-07 08:07:07'),
(23, 683, '2020-12-26', NULL, 'on_tour', NULL, 51423, '2024-01-07 08:07:07', '2024-01-07 08:07:07'),
(24, 684, '2022-08-06', NULL, 'booked', NULL, 224386, '2024-01-07 08:07:07', '2024-01-07 08:07:07'),
(25, 685, '2020-04-19', NULL, 'finished', NULL, 37457, '2024-01-07 08:07:07', '2024-01-07 08:07:07'),
(26, 686, '2022-03-31', NULL, 'booked', NULL, 160221, '2024-01-07 08:07:07', '2024-01-07 08:07:07'),
(27, 687, '2018-09-03', NULL, 'pending', NULL, 174892, '2024-01-07 08:07:07', '2024-01-07 08:07:07'),
(28, 688, '2021-11-23', NULL, 'booked', NULL, 33498, '2024-01-07 08:07:07', '2024-01-07 08:07:07'),
(29, 689, '2018-09-28', NULL, 'finished', NULL, 72704, '2024-01-07 08:07:07', '2024-01-07 08:07:07'),
(30, 690, '2022-12-06', NULL, 'on_tour', NULL, 64269, '2024-01-07 08:07:07', '2024-01-07 08:07:07'),
(31, 691, '2021-04-19', '2014-03-28', 'finished', NULL, 102004, '2024-01-07 08:07:54', '2024-01-07 08:07:54'),
(32, 716, '2021-07-18', '2022-04-20', 'finished', NULL, 267023, '2024-01-07 08:08:26', '2024-01-07 08:08:26'),
(33, 741, '2023-06-07', NULL, 'on_tour', NULL, 276546, '2024-01-07 08:09:53', '2024-01-07 08:09:53'),
(34, 766, '2017-05-11', NULL, 'pending', NULL, 43856, '2024-01-07 08:09:53', '2024-01-07 08:09:53'),
(35, 767, '2016-12-30', NULL, 'pending', NULL, 68680, '2024-01-07 08:09:54', '2024-01-07 08:09:54'),
(36, 768, '2017-10-04', NULL, 'on_tour', NULL, 270807, '2024-01-07 08:09:54', '2024-01-07 08:09:54'),
(37, 769, '2016-07-28', '2016-04-01', 'finished', NULL, 20889, '2024-01-07 08:09:54', '2024-01-07 08:09:54'),
(38, 770, '2021-07-05', '2022-12-20', 'finished', NULL, 27056, '2024-01-07 08:09:54', '2024-01-07 08:09:54'),
(39, 771, '2016-01-12', '2022-03-14', 'finished', NULL, 22793, '2024-01-07 08:12:28', '2024-01-07 08:12:28'),
(40, 796, '2014-03-22', '2021-11-12', 'finished', NULL, 205064, '2024-01-07 08:12:28', '2024-01-07 08:12:28'),
(41, 797, '2022-02-16', '2014-08-17', 'finished', NULL, 225322, '2024-01-07 08:12:28', '2024-01-07 08:12:28'),
(42, 798, '2022-09-27', NULL, 'on_tour', NULL, 291227, '2024-01-07 08:12:28', '2024-01-07 08:12:28'),
(43, 799, '2021-02-27', NULL, 'pending', NULL, 172716, '2024-01-07 08:12:28', '2024-01-07 08:12:28'),
(44, 800, '2022-11-19', NULL, 'on_tour', NULL, 112894, '2024-01-07 08:12:29', '2024-01-07 08:12:29'),
(45, 801, '2022-11-24', NULL, 'pending', NULL, 83731, '2024-01-07 08:13:39', '2024-01-07 08:13:39'),
(46, 826, '2017-07-13', NULL, 'on_tour', NULL, 130438, '2024-01-07 08:13:39', '2024-01-07 08:13:39'),
(47, 827, '2022-04-05', NULL, 'pending', NULL, 182295, '2024-01-07 08:13:40', '2024-01-07 08:13:40'),
(48, 828, '2023-01-25', '2018-09-30', 'finished', NULL, 72230, '2024-01-07 08:13:40', '2024-01-07 08:13:40'),
(49, 829, '2017-01-24', NULL, 'booked', NULL, 287245, '2024-01-07 08:13:40', '2024-01-07 08:13:40'),
(50, 830, '2023-03-29', '2017-09-19', 'finished', NULL, 217526, '2024-01-07 08:13:40', '2024-01-07 08:13:40'),
(51, 831, '2023-12-25', NULL, 'pending', NULL, 195349, '2024-01-07 08:15:28', '2024-01-07 08:15:28'),
(52, 856, '2017-08-20', NULL, 'booked', NULL, 73274, '2024-01-07 08:15:29', '2024-01-07 08:15:29'),
(53, 857, '2017-03-05', NULL, 'pending', NULL, 200827, '2024-01-07 08:15:29', '2024-01-07 08:15:29'),
(54, 858, '2019-02-01', NULL, 'on_tour', NULL, 19386, '2024-01-07 08:15:29', '2024-01-07 08:15:29'),
(55, 859, '2023-12-13', NULL, 'pending', NULL, 110321, '2024-01-07 08:15:29', '2024-01-07 08:15:29'),
(56, 860, '2014-12-18', '2018-08-11', 'finished', NULL, 10757, '2024-01-07 08:15:30', '2024-01-07 08:15:30'),
(57, 394, '2023-08-18', '2023-08-19', 'finished', '-', 300000, '2024-01-08 22:00:55', '2024-01-08 22:00:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` bigint UNSIGNED NOT NULL,
  `nama_depan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_belakang` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('laki','perempuan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `umur` smallint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` enum('admin','pelanggan') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nama_depan`, `nama_belakang`, `alamat`, `email`, `no_telp`, `username`, `gender`, `umur`, `created_at`, `updated_at`, `password`, `roles`) VALUES
(394, 'Barton', 'Casper', '583 Torp Underpass\nElianshire, UT 85795-9225', 'terry.jedidiah@example.com', '6221575016408', 'timmy66', 'laki', 16, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$MI3DvAw5MxI0zp5jNvFZ6eVSvL9f8UQoCFDnculRRGRHJZt236BUu', 'admin'),
(395, 'Arely', 'Walter', '17642 Charlotte Valleys Suite 974\nSouth Vernon, CO 03467-1892', 'uhowe@example.org', '6233109541311', 'mann.willie', 'perempuan', 58, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$hDX3eQNh3LC8fmciuR/qE.b7W3.v2aH8DuSNjcglP1VqHXGxQMlUC', 'pelanggan'),
(396, 'Craig', 'Powlowski', '75006 Bergnaum Alley\nReichelmouth, IL 87200', 'sheila96@example.org', '6207230265864', 'mavis70', 'perempuan', 21, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$4yxswX3LAii3bk3yS9M2ke0TQxDMVteK3IqIqeRHa64xDsXfGGsGW', 'admin'),
(397, 'Lindsay', 'Reynolds', '7109 Macejkovic Cliff\nSelinastad, VT 65430', 'emily.jones@example.com', '6227811448475', 'dswaniawski', 'perempuan', 65, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$Dvh2Fym.j6G5KGA.diRK5uZqdffzmFLKWeeXEpCvObTvvDvGX95n6', 'admin'),
(398, 'Preston', 'Lakin', '10561 Mallie Park\nNorth Fabiolaview, OH 46131-1899', 'gquitzon@example.com', '6223387964765', 'carleton.bogan', 'laki', 42, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$Hd2OccQDcH9IYzqhGw/iIObkkPj2UYQlz7Ugp1Ybpz1iPUQAj.syq', 'admin'),
(399, 'Derick', 'Pouros', '8410 Herzog Trail Suite 179\nNorth Russell, NY 98656', 'nitzsche.katheryn@example.org', '6280735157843', 'rutherford.keshaun', 'laki', 24, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$fUeqtmHaMpOWnlSvZRUvo.VmB6DTmUNVszjJGRKp.vEZxi.Oi3.Ha', 'pelanggan'),
(400, 'Anita', 'Gulgowski', '8061 Alberta Shoal Apt. 420\nNorth Ericachester, CO 27002', 'solon93@example.org', '6207164888689', 'wolff.mariana', 'perempuan', 39, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$ZdJqllP1F8O3KyJMq/f4jeS.Et.VYw1AobmSpOfPbYdAaygIk2OGi', 'admin'),
(401, 'Zachary', 'Kihn', '67891 Nitzsche Mountains Suite 348\nWest Kadechester, DE 85551-7917', 'sawayn.lauretta@example.org', '6210161386037', 'liana.rau', 'laki', 27, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$VW4c3Fwxod90fzFlhHtCX.un338tuH08xhc0h8Pjf3JnVk40JhqO6', 'admin'),
(402, 'Nathan', 'Fadel', '283 Alexandra Meadow Suite 834\nO\'Haraville, MT 15918', 'gwiza@example.org', '6251067596833', 'wharvey', 'perempuan', 47, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$tOtkyY86LMGedZnrZNyh5ue3rQLC4jJ2LTLE9.gAvTS85Zy73JJyy', 'pelanggan'),
(403, 'Verona', 'Bashirian', '418 Dach Rapids\nWest Wilmafort, RI 16521-4365', 'natalie07@example.net', '6202382254074', 'junius71', 'laki', 49, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$7zu4VYuJh2RUaB54BJwGu.DwKTfQSiwJWw7mkUR2wunq/ZoCZnymS', 'pelanggan'),
(404, 'Sheridan', 'Armstrong', '5372 Davis Fort\nWaelchiside, SD 34414', 'fboyle@example.org', '6282972674362', 'nader.carolyn', 'perempuan', 68, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$hMDDyVEZNrH5lxXLBIi9xOHBPI5PyXv4zGRior8SIvMJ7ags/s8lm', 'admin'),
(405, 'Mylene', 'Lakin', '584 Kamron Gateway\nBernierside, IA 79681', 'everett.wilderman@example.com', '6271886810331', 'wayne21', 'perempuan', 33, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$WRl6WNPu5AO4bj.mFvesKeYP7cV6hlgYmxNGEK4gv8RPGBzpn/TY6', 'admin'),
(406, 'Virginie', 'Welch', '10115 Rempel Route Apt. 967\nDanielborough, LA 30664-3078', 'florida.wolf@example.org', '6249045497186', 'ireynolds', 'perempuan', 49, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$m5WCQE/2mf24z0Yoh.RBTepVBdo2MBl/FbRx1DYKdRsW5VCFB6vTK', 'pelanggan'),
(407, 'Janiya', 'Kautzer', '73113 Rutherford Throughway\nKulaston, WY 17915-7518', 'nwalker@example.com', '6292001845250', 'marian58', 'perempuan', 59, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$HBYaYmYl.Y/1oMUgg93BC.bq3avyQolOgOKFdsiE16vdqyRX6B9kW', 'pelanggan'),
(408, 'Gaetano', 'Okuneva', '5041 Sarina Orchard\nEast Haileechester, WV 89653-2998', 'reinger.emmitt@example.com', '6235210653667', 'lkub', 'laki', 36, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$J7ymDcjxZ.w9L22HR7Z4vuAopT83BFJkKyw.rWbscqFtkU8dutyDK', 'admin'),
(409, 'Myriam', 'Cummerata', '287 Bartoletti Loaf\nNorth Kailynhaven, FL 44541', 'presley45@example.org', '6272685584220', 'beer.kadin', 'laki', 56, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$ra8BrIjrr7KeBlhU/4rT6emNwbdyIL2VI03uE6MM1Ao0mckXcRLyu', 'pelanggan'),
(410, 'Krystina', 'Sporer', '8019 Laurine Court\nNorth Jovanfurt, DE 66472', 'jess.harris@example.com', '6248602267699', 'elnora.lind', 'laki', 59, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$wDDw/u2o3QcB1vewu6qLN.DHHCuL7Ri2Wiplw5wlP132SkQ5jCEQS', 'admin'),
(411, 'Antwon', 'Goyette', '2474 Stephany Burg Apt. 856\nLake Lucio, NJ 67616-4574', 'ycartwright@example.net', '6241304940383', 'fturner', 'perempuan', 41, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$zD/.RXWEINLShKLky23EVOjNEjAqsBuBzCiK/S8wrU0TPNIVvMGYS', 'pelanggan'),
(412, 'Eldora', 'Shanahan', '290 Edythe Fort\nBartonview, DC 74474-8051', 'llewellyn78@example.org', '6244687842376', 'gabriel12', 'perempuan', 58, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$p8nSRW38E0xvpKnOggOhJO5591N8dyUU4oqgMXYYpYvG3jqiy1yiu', 'admin'),
(413, 'Elliot', 'Osinski', '422 Merritt Knolls Apt. 106\nStreichton, ME 01443', 'gail34@example.org', '6251181022440', 'mbayer', 'perempuan', 61, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$qQjo/u7E2i9oYFaVupQbjepWBg39YsUONvqOqj4OtJAZnRz9kDDgO', 'pelanggan'),
(414, 'Abner', 'Macejkovic', '987 Lillian Flats Suite 855\nRueckerland, GA 30137-9335', 'berta.kihn@example.com', '6246874723023', 'yraynor', 'laki', 60, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$uvD8Hk7lwxhJflzSQrIoaOXtdHH2dqEvT9PF.RFweRIz0PcmvtZU6', 'admin'),
(415, 'Albertha', 'Berge', '3412 Torp Shores\nLake Agustinborough, LA 75175-5229', 'wilderman.taryn@example.com', '6247661297517', 'mireille43', 'laki', 39, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$JNPkQnSV4XeLxyhT2qQ7tutIik1bx33TfvcfxUaLhTkxRG7OnnJ.W', 'pelanggan'),
(416, 'Ibrahim', 'Doyle', '507 Heathcote Brooks\nFraneckibury, WI 19489-1349', 'oma.parisian@example.net', '6203749668784', 'fay.max', 'perempuan', 52, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$058QlqtCGbfLxImW7rlszORuOUsqJfsMyBOh.vV5Da7OM5Jt0K7wC', 'pelanggan'),
(417, 'Marcos', 'Orn', '3065 Lucius Manors\nKihnfort, CT 32389', 'nova.mills@example.net', '6236711047216', 'xlemke', 'perempuan', 64, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$Amu1uggS7kkTiAtZ.vHtSOwivRcF5hzv2KUkf0RPnXRDepVrLmSbS', 'pelanggan'),
(418, 'Veronica', 'Murazik', '481 Kelly Shores Suite 875\nStantonfort, UT 92187', 'henriette.anderson@example.net', '6228130759503', 'braun.madie', 'laki', 49, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$ENgFnNoLlTP2skV/OCyrvO1yhfImvwQIgUUOES3Hi/nK28f.4c20O', 'admin'),
(419, 'Toney', 'Cronin', '5038 Abdullah Forge Suite 146\nVerlaview, TX 71134', 'monroe.schowalter@example.net', '6214787790486', 'ellis24', 'perempuan', 37, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$58td6kcHDYpvlkZj3HTDtufsmWaTwi4ZGdNY2ZQrWkQ4fx8usXrtW', 'admin'),
(420, 'Abagail', 'Hayes', '28536 Matilde Trail Suite 344\nSouth Verda, NH 39040-4716', 'eloisa.hill@example.org', '6242219931365', 'nnikolaus', 'laki', 51, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$GWVgHb8yp7wkzee7HQzKau7ilzw7ccnZTHa01OUs.p.g1yjFkXZGe', 'admin'),
(421, 'Elta', 'Reichert', '2238 Roy Haven\nWillmsburgh, OK 87137-3020', 'raynor.gus@example.com', '6284530196850', 'iparisian', 'laki', 50, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$vV4Ec2GYHZtqfdn.pBHpyOwGCeec8FdU4YCBLKmWguHhl1eURrgBO', 'admin'),
(422, 'Clyde', 'Turcotte', '911 Coleman Neck\nNew Leslie, RI 20027-6681', 'utorphy@example.com', '6250648023492', 'dschultz', 'perempuan', 52, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$6CQwz4mm6L1O/WjZJs4s9edKRx/avHC0e87d7kuoOIMdv.COOm8Gm', 'admin'),
(423, 'Providenci', 'Abernathy', '53009 Palma Shoal\nHalvorsonmouth, AZ 84028-0586', 'guadalupe.walsh@example.org', '6285883874428', 'brown.miller', 'laki', 68, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$ztwH90j4AlDVy.WMQQMfze6JRKW3c6KArvqcqslnEYRXJC6R4DIqC', 'admin'),
(424, 'Vivianne', 'Hoppe', '48729 Yost Passage Suite 119\nSchimmelville, MI 83376-7167', 'reichel.marcelo@example.org', '6260069700502', 'bstamm', 'laki', 42, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$ACSEIE69cE1.iiRypia/Q.YZQETVX1bN5NerqkfFyawHPnS9z4Eiq', 'admin'),
(425, 'Blaise', 'Upton', '181 Nikolas Viaduct\nNicolasburgh, NC 43983', 'vgislason@example.org', '6233510164322', 'nolan.jamar', 'perempuan', 59, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$uFqvg3SzDv5OzpoBg0YHlOmnSfxtYQ7nkRbztvkdd3.er.OJ15h12', 'admin'),
(426, 'Estevan', 'Raynor', '23800 Parisian Falls\nDorcasview, KY 44753-4016', 'hartmann.abigail@example.org', '6275099945164', 'rau.donald', 'laki', 54, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$3DKOEReyUuqrYYNrBXUqcue6IHMSEFzUtzKaR7RzIZqwLSwlOoi/G', 'pelanggan'),
(427, 'Constantin', 'Sporer', '7982 Cummings Circle\nLake Bertha, NV 46451-8574', 'cgleichner@example.net', '6263663050541', 'arturo.miller', 'laki', 48, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$xMUe7RYyr1iDz1RRQeW4.Ob9oBu5MlEXH3MvXH1RT1H3N2X8yQiTW', 'admin'),
(428, 'Kailee', 'Hills', '449 Mante Harbors Suite 312\nWest Hayley, WV 07639', 'dhegmann@example.org', '6284872361429', 'ilang', 'laki', 53, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$ND39QY3uyax2AW2I3wu4aeZHdMFfwXjILWEuQdr4H0x9LRu7yMd2a', 'pelanggan'),
(429, 'Montana', 'Fisher', '485 Torp Court\nLake Caleigh, IA 24616', 'myrtice.carroll@example.com', '6268949752712', 'parisian.duncan', 'perempuan', 27, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$F1TfiyTzxBz4RvG9EzR9ROvm8NUdgs9KFBvIX2w5lHOnvGUTiIbsK', 'pelanggan'),
(430, 'Melody', 'VonRueden', '557 Cremin Crescent\nGrantfort, CT 36252', 'koepp.norene@example.net', '6292390550454', 'otho97', 'laki', 22, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$asyRKotqpJst7f9f80dxhutKy4BKX1bMbhAF8CgIPeNYE5xblrIR6', 'pelanggan'),
(431, 'Ignatius', 'Mitchell', '6274 Elenor Throughway Apt. 312\nSidfort, CT 95690', 'mmorissette@example.com', '6271899200041', 'justina.johnson', 'perempuan', 29, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$2m5zeshwPHgNQPYmdoqarO0etOxKRKl96K4/rlmWj.J/yDUek6ROG', 'pelanggan'),
(432, 'Linnea', 'O\'Hara', '81100 Mallie Inlet\nSouth Else, WV 27805-9119', 'gottlieb.katelynn@example.org', '6207206405083', 'ftoy', 'laki', 54, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$h7meW0AK1F/xeskpTVBhUeMCCOtCpKidlLPke1iro3MSEXKNxMNbq', 'admin'),
(433, 'Asa', 'Collier', '77100 Abernathy Summit\nRodriguezside, WA 04719-2270', 'lionel.nitzsche@example.org', '6203401722577', 'nicholas52', 'laki', 46, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$f65.N3NBbvxIi5NWTofiAeqxYCLFm58qwqrHucCJUN46FGCdWYgOO', 'pelanggan'),
(434, 'Odell', 'Kirlin', '9147 Ziemann Tunnel Suite 675\nSouth Kiannaton, SC 43008', 'destiney.monahan@example.org', '6275498976994', 'reyes82', 'perempuan', 60, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$i7b8Y4MyPQhYoGStbW64tuHaNCUHMHbIeCaJ.vf9uhj8NhZHkMj2y', 'pelanggan'),
(435, 'Ignacio', 'Streich', '7307 Lizeth Junction\nSouth Dakota, NE 61797', 'emmy.mcclure@example.com', '6224831677590', 'beahan.gerhard', 'laki', 18, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$MpXkzxTBgA7mqPOxigV.u.HtzZnc2hdYa9hO8HBmSOpZkrl0jh/KK', 'pelanggan'),
(436, 'Lea', 'Pagac', '53430 Lolita Well Suite 398\nElisetown, UT 93563', 'kristina.hane@example.org', '6289931652594', 'igulgowski', 'laki', 45, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$7XQ.gEpMr8jVwx1lrcirqOCjEL.Ajsiz5nrKYSnTWB9vCqvkLrc5a', 'admin'),
(437, 'Domingo', 'Koch', '28150 Parisian Dale Suite 490\nNew Jettietown, DC 34741-2637', 'brown.irving@example.org', '6261293473123', 'alejandrin.doyle', 'laki', 54, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$bXCV7.HUPWjq9Ra77KVGw.HJSrrdwxUR8DhoPonnfxhP5f9ao3MYG', 'admin'),
(438, 'Crystal', 'Russel', '664 Christina Mission Apt. 393\nFramiville, TX 82900-1090', 'rsatterfield@example.org', '6263063423466', 'kobe71', 'perempuan', 26, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$K9m2TlHpSX3l6FHji/Msz.NvjuWEmpG08bBtdLtWAGS4rgQA2QMyK', 'admin'),
(439, 'Coy', 'Stamm', '45424 Morton Island\nLake Josieborough, ME 85633', 'wilber66@example.com', '6278390498476', 'lue31', 'laki', 46, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$l75KS9TYH1LdvvNZxXyHxeS9v32W.Pwm1c2odNbsJXsKF/SBsVYCu', 'pelanggan'),
(440, 'Crystel', 'Wyman', '709 Hartmann Shores\nSouth Christy, DE 64100', 'nfay@example.com', '6270392157403', 'zackary.hirthe', 'laki', 37, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$j3EL.8ZBcQBAO2xySIpQzucU7Ezr0J9jYcaNS1qsiy.RmjQuWotBS', 'admin'),
(441, 'Aubrey', 'Nicolas', '995 Heathcote Parks Apt. 960\nOsbornetown, MT 41766', 'gladyce39@example.com', '6232441177853', 'chauncey.simonis', 'laki', 30, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$yC5ei/siGSarfQwyKIXrD.Ynx1alBqf/NQDtZYVFItbbnZ/L/wzqK', 'pelanggan'),
(442, 'Foster', 'Balistreri', '83416 Bill Freeway\nEast Carey, WY 88324', 'kylee.harris@example.net', '6247404475680', 'ljaskolski', 'perempuan', 38, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$1DUqJ7YcMjKB05KTpVCaNO5PXsOpA.GPR50zXngnPFQmQDHrfcco.', 'admin'),
(443, 'Shemar', 'Zieme', '57017 Deckow Flat\nEarnestberg, NV 32122', 'ida51@example.net', '6211016210011', 'emerson88', 'laki', 43, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$Ty06PKFcouC/PQg6TjUCD.ZrY0ASHinCRAtAvMAHxgo9P8wijydFW', 'pelanggan'),
(444, 'Tara', 'Dach', '9394 Grady Parkways Suite 468\nKemmerbury, WI 21224-1621', 'bernier.grayson@example.org', '6273768529316', 'geovany73', 'perempuan', 22, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$15JuH.WIZkbjjjXjmuLnLOAN.vuzq26ePC8ZANQiqmMs4wdrz8EKa', 'pelanggan'),
(445, 'Savanah', 'Kuphal', '7159 Otis Burg\nSouth Ted, ID 63892-7465', 'abdiel61@example.com', '6215055165777', 'nigel65', 'perempuan', 39, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$ZjmChksLm.G/150ki8N9N.XKemyl2OZ1Sc/L5oB/0.A5Go55oHwP.', 'pelanggan'),
(446, 'Candice', 'Schmidt', '733 Witting Squares Apt. 805\nLincolnstad, PA 31364-2124', 'sharvey@example.org', '6292614552476', 'hdickens', 'laki', 67, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$9otM3N02atUZAlcoQf2yBOhFA6tojYG7i74JelHZa823qxB/e.Zbm', 'pelanggan'),
(447, 'Rachelle', 'Schinner', '51025 Hirthe Harbor Suite 717\nEast Cordeliabury, KS 53299-0067', 'palma85@example.com', '6206515166824', 'roberts.hollis', 'laki', 15, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$4UKoOv7ei863HWZ3fj6kAu/.JfrDtOm4RzfjfsOwX2y45MEU8M/U.', 'pelanggan'),
(448, 'Alba', 'Prosacco', '547 Buford Flats\nMckennaburgh, VT 11178-6985', 'zdeckow@example.com', '6256929166989', 'jacinto81', 'perempuan', 56, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$2iAymhQ4/gtobdUbReb.mukrb5rU5ZFkLBGZ.iRZa2v4iivTf87Yu', 'pelanggan'),
(449, 'Trystan', 'Kreiger', '690 Brown Estate Apt. 932\nNew Alberthashire, SD 54166-5372', 'greenfelder.sebastian@example.org', '6278006982252', 'hellen.gusikowski', 'perempuan', 21, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$Ii/YzZXmD60bEST8iSrcAeW.AmJ6oTLj6zo6RuQtG3GzX4FVmCsBK', 'pelanggan'),
(450, 'Kristopher', 'Gerlach', '43125 Alysha Cape\nProhaskastad, ME 75548', 'cweber@example.net', '6200566557287', 'anjali.denesik', 'laki', 36, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$TOk6XYtylAekI9Rj3dTeY.6PrXkf6fEquGZJPNBUkjE6O6ncWBnte', 'admin'),
(451, 'Grant', 'Barton', '471 Germaine Forest Suite 094\nPort Tyrellfurt, MI 35197', 'bernhard.deshaun@example.net', '6263733616020', 'breanne88', 'laki', 33, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$CilQ5RhgUShnx9a5WKDTmOYVIQ/LJDv.x5TpcuViDSzcE/j5BK4TS', 'pelanggan'),
(452, 'Ivory', 'Cartwright', '352 Gaylord Estates\nNew Loren, NY 72369-4059', 'dena77@example.com', '6288383891943', 'gusikowski.emmanuel', 'perempuan', 54, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$4tOECNC.aTk/DWqVU87kgeXgeLvFpNb7lohM9ADwwzejnpwzPx/ku', 'pelanggan'),
(453, 'Trenton', 'Rosenbaum', '3695 McLaughlin Mountain Apt. 963\nKareemmouth, ME 51202', 'gaetano.schultz@example.com', '6262938570814', 'dmitchell', 'perempuan', 42, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$5F.KUZNEh0PUphjPEczNw.KwNmKeAOfV8xooz2nZHwX.riinvW2jG', 'admin'),
(454, 'Madyson', 'Doyle', '442 Stanton Walk Apt. 335\nNorth Izaiahmouth, WI 40088-2920', 'bogan.elna@example.com', '6290802064928', 'florine30', 'laki', 23, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$.bCmCetoh.oN4LAblrmyfeX8ey4IQ6tFi6LQbsVbAUctWg4vISmZS', 'admin'),
(455, 'Fleta', 'Mills', '35930 Karlie Drive\nWest Lydiaville, SC 92098', 'schamberger.alfredo@example.net', '6218059691416', 'dberge', 'perempuan', 33, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$r2EFKjxuo9xn2eAN1QSdVurPMmW8O7jjix4IoPyLJsla/Vaqzfchy', 'pelanggan'),
(456, 'Waldo', 'McLaughlin', '58470 Alycia Locks Suite 461\nEast Darren, IN 33847', 'xfay@example.org', '6265993354396', 'harley.okeefe', 'perempuan', 50, '2024-01-07 07:44:06', '2024-01-07 07:44:06', '$2y$12$oFZ2hu2am.2EZJJXMdJmmOHChGPHIO8h4CO92.ja/NQ7c9PLvuqqu', 'pelanggan'),
(457, 'Ida', 'Flatley', '78971 Connelly Valley\nTerryland, RI 36467', 'lane52@example.com', '6288050097932', 'mayer.herminio', 'perempuan', 58, '2024-01-07 07:44:07', '2024-01-07 07:44:07', '$2y$12$g0r5XGrFfa1B.o5EzgJtKe75CPxp7v83XQYhcD.u3FB9yvKfMpAGS', 'pelanggan'),
(458, 'Helen', 'Schmeler', '6575 Upton Shore\nLake Ray, CO 09765-7201', 'quitzon.dereck@example.com', '6210716600336', 'wohara', 'laki', 66, '2024-01-07 07:44:07', '2024-01-07 07:44:07', '$2y$12$yP3NWHsW2gghbY7AuEct5eKTTn7RWu5mvqDn66xzEAq7Pk/gSIsgO', 'pelanggan'),
(459, 'Aniyah', 'Klocko', '55389 Krystina Throughway\nChristophertown, RI 91473', 'kadin.wolf@example.com', '6242028527474', 'macejkovic.khalid', 'laki', 25, '2024-01-07 07:44:07', '2024-01-07 07:44:07', '$2y$12$7tzLzwbArNnZdCTlhx46KOXuC3tdXesnjzq9aafSW6kzpJRcZzVlO', 'pelanggan'),
(460, 'Madie', 'Heller', '6142 O\'Connell Viaduct Suite 392\nKaylamouth, AL 21443-2228', 'dee03@example.com', '6268309878856', 'bonita22', 'laki', 18, '2024-01-07 07:44:07', '2024-01-07 07:44:07', '$2y$12$yr.18dvJm28chO9jUKBAReDSvnnmu/s0AcvKNp4LcvPcBJfvEdDEO', 'admin'),
(461, 'Kari', 'D\'Amore', '872 Grant Street\nEast Arianeport, OR 56311-6738', 'verda.bode@example.net', '6200365294517', 'broderick.dickinson', 'perempuan', 16, '2024-01-07 07:44:07', '2024-01-07 07:44:07', '$2y$12$2M.R.TwQVgzr9JGzjM0auum318.1LohF8tTRVy.MSjVj8.XFIVu/e', 'pelanggan'),
(462, 'Jimmie', 'Bogisich', '80329 Volkman Lakes\nHazelstad, HI 38407', 'donny15@example.net', '6223415040704', 'kenya.reichel', 'perempuan', 37, '2024-01-07 07:44:07', '2024-01-07 07:44:07', '$2y$12$sHkhDJuLOS6txSaOKkKvwulRHGnT8YpniPSGp7FvfT1I.hOsmDR56', 'admin'),
(463, 'Prince', 'Medhurst', '7821 Damian Tunnel Suite 789\nNorth Millie, NC 75104', 'maida.marks@example.net', '6200374465489', 'pcruickshank', 'laki', 70, '2024-01-07 07:44:07', '2024-01-07 07:44:07', '$2y$12$ycSZaw/gWTkhnmwH1u0E..4z/B6Nu2w1zjqJaDaVitrKldxuuzBL.', 'admin'),
(464, 'Van', 'Spinka', '92107 Ankunding Springs\nUlisesfurt, ND 95688', 'santina.blick@example.net', '6213684257064', 'streich.anne', 'perempuan', 50, '2024-01-07 07:44:07', '2024-01-07 07:44:07', '$2y$12$FUDTf5hXpMiVKOXw4VzcGO6IbTXRqX/yck9HHzJJ4EkOXx1oxJfzy', 'pelanggan'),
(465, 'Izaiah', 'Senger', '1711 Kovacek Fort\nBeaumouth, CT 65701-8147', 'gerry.rempel@example.net', '6210596095747', 'antonetta67', 'laki', 52, '2024-01-07 07:44:07', '2024-01-07 07:44:07', '$2y$12$2VZXXObZL0HTB0WACDNJQ.uRGA86VHz3JhOv89X/JxKd4iQ7u0US.', 'pelanggan'),
(466, 'Donna', 'Buckridge', '251 Rutherford Ferry\nLeopoldburgh, MI 37914', 'gvon@example.net', '6253780397830', 'elsa.witting', 'perempuan', 32, '2024-01-07 07:44:07', '2024-01-07 07:44:07', '$2y$12$I3GdeArOTIK3CQJtdttaE.lO/0NE0vEdgLinD9kZT14FYVzfmwaSq', 'admin'),
(467, 'Greg', 'Bauch', '882 Cheyanne Burg\nFeeneystad, NJ 06065-9969', 'miles58@example.com', '6214835862305', 'stanton.jordane', 'laki', 32, '2024-01-07 07:44:07', '2024-01-07 07:44:07', '$2y$12$kea3MLxnHQoEYP2RCki.v.OzNxOlqPI/A1v6WDLqz/ysRPdciA9xy', 'admin'),
(468, 'Levi', 'Witting', '5067 Jameson Overpass Apt. 212\nEast Aaliyah, OR 03630-3894', 'yundt.evelyn@example.com', '6293825767064', 'uwolff', 'laki', 55, '2024-01-07 07:44:07', '2024-01-07 07:44:07', '$2y$12$l2t2wsJeKy1QT7DY1liDgeYO8iFhRF8u/4LyMy8H/NMcIjKEp1.8C', 'admin'),
(469, 'Lesly', 'Stanton', '55405 Lincoln Trafficway\nGerholdland, DE 23237-3952', 'danielle48@example.com', '6250284330599', 'alek.kuhn', 'perempuan', 53, '2024-01-07 07:44:07', '2024-01-07 07:44:07', '$2y$12$nTab8pSewK3ZRe5P7yb0jeO2ZINDbVzvK0tkfc6m8KqHHmJYojMa2', 'pelanggan'),
(470, 'Vicente', 'Schaefer', '695 Noble Rapids\nPort Deliaburgh, ND 99199', 'eruecker@example.org', '6204674055177', 'auer.van', 'laki', 55, '2024-01-07 07:44:07', '2024-01-07 07:44:07', '$2y$12$Wy7VK.NCRCYNtLpftGsWyOIdmZUJlsn/qSosvQgEPIcFleFwEUFte', 'admin'),
(471, 'Devon', 'Roberts', '20064 Frami Terrace Suite 238\nBrownmouth, WV 78108', 'rkling@example.org', '6221579094535', 'hayden61', 'perempuan', 24, '2024-01-07 07:44:07', '2024-01-07 07:44:07', '$2y$12$JcALh6finZTyr/vwV2F8FOTQdUJKAtfFAWcftIT.6b9p3aCQI67mi', 'pelanggan'),
(472, 'Paolo', 'Dibbert', '693 Adams Spring\nNew Constance, HI 34078-4316', 'mdamore@example.net', '6293301477727', 'jerde.doris', 'laki', 55, '2024-01-07 07:44:07', '2024-01-07 07:44:07', '$2y$12$GMqqrZJo8Iuhcfk/QR5XMuzLpuZm.L/iNcF2kMnZ0pEySzvUbS66u', 'pelanggan'),
(473, 'Fannie', 'Bayer', '79941 Marks Stream\nBridgetport, AR 99202', 'ftreutel@example.org', '6200201866668', 'ghermiston', 'laki', 67, '2024-01-07 07:44:07', '2024-01-07 07:44:07', '$2y$12$RAAhn5bhIHPHPnfbQTFCtOZkycxGm7JosezZG0Jgwv3/F668hh0Ne', 'pelanggan'),
(474, 'Ila', 'Dicki', '7445 Elmer Rapid\nTremblayburgh, ND 81135', 'tommie55@example.net', '6274262982394', 'murphy.dickens', 'perempuan', 25, '2024-01-07 07:44:07', '2024-01-07 07:44:07', '$2y$12$xeIugPuEaxMqQ.orUgIlKOtoairHQWJuMap6403wDjyKNRGn5EWTu', 'pelanggan'),
(475, 'Dereck', 'Jerde', '488 Chyna Court Suite 160\nPort Shannyfort, ND 91870-4477', 'maxime63@example.net', '6289079844876', 'emery.schuppe', 'perempuan', 33, '2024-01-07 07:44:07', '2024-01-07 07:44:07', '$2y$12$99t6tuSfjMS/kh9iJfGYBuTd98ZOtwt3EdTGUENjfRycVn40L5Lhm', 'pelanggan'),
(476, 'Gabrielle', 'Pfeffer', '24708 Joanne Point Suite 155\nBartonchester, TN 04927', 'hermann.nestor@example.com', '6239992339011', 'schowalter.brenden', 'laki', 31, '2024-01-07 07:44:07', '2024-01-07 07:44:07', '$2y$12$rrwtT1DAmrRjKMDwYsMoJepaDnQJl9VDOTqwJymfICCCQF6X8JU3S', 'pelanggan'),
(477, 'Aida', 'Moen', '46148 Gusikowski Ports Apt. 153\nFraneckifort, RI 49560', 'wisoky.nicklaus@example.com', '6223427348186', 'fisher.jairo', 'perempuan', 25, '2024-01-07 07:44:07', '2024-01-07 07:44:07', '$2y$12$pwmJbimsdEHMaqKAkvSMK.iQlcYrvyII1208Uenu892fnkpT7g3km', 'pelanggan'),
(478, 'Natalia', 'Gottlieb', '5295 Tatum Freeway\nEast Olgashire, AR 09119-7263', 'cindy.emmerich@example.net', '6213079396966', 'sydni37', 'perempuan', 15, '2024-01-07 07:44:07', '2024-01-07 07:44:07', '$2y$12$LHmSrxdQaDkl0A2GTk1O2eOROFwit55bbXbZvV7SpOxzSxZ/OBt9q', 'admin'),
(479, 'Javonte', 'Nitzsche', '9075 Roel Plaza Apt. 693\nNew Rosannaport, DE 08956', 'batz.ocie@example.com', '6225732072612', 'yabshire', 'laki', 46, '2024-01-07 07:44:07', '2024-01-07 07:44:07', '$2y$12$Cv2awg5qQlWUdKej0ZddHu.IRz3DU4q7ODp6PyTgQ2R/E73FRSPVS', 'admin'),
(480, 'Drew', 'Jenkins', '483 Pierre Manors Apt. 910\nClementinamouth, TX 66158-3172', 'grath@example.org', '6294272878914', 'mason13', 'laki', 35, '2024-01-07 07:44:07', '2024-01-07 07:44:07', '$2y$12$XAEG7t.nl/WU4ITE.36EfO0mvNCXQrVoCH9Q.1NkIvVOl1GjCkIke', 'admin'),
(481, 'Laura', 'Kutch', '96436 Velda Drive Apt. 530\nJaydenland, AZ 29063', 'alicia.legros@example.net', '6291234422118', 'oran36', 'laki', 21, '2024-01-07 07:44:07', '2024-01-07 07:44:07', '$2y$12$75zz0K98GO1EDIsPSNAsyuyfoxyfR3055DvmkSCtDfa.qgRb8QzDm', 'admin'),
(482, 'Jaylin', 'Abbott', '8745 Tyson Summit Suite 593\nPort Durwardside, AL 74271-5166', 'jannie26@example.net', '6252201946986', 'stewart.padberg', 'perempuan', 38, '2024-01-07 07:44:07', '2024-01-07 07:44:07', '$2y$12$bBdDUSsmfw5sgCPVeU1aEOIKbdv6MXx97KiFhU1t3pNPN/hBGX6Ee', 'pelanggan'),
(483, 'Sadie', 'Reichel', '39752 Mosciski Mountains Suite 356\nCorwinstad, GA 09167', 'monahan.abner@example.org', '6263038951067', 'taryn31', 'perempuan', 31, '2024-01-07 07:44:07', '2024-01-07 07:44:07', '$2y$12$ZmP.isAXFr7z8kJuBncoA.SjNuVNKuduChcCqFf9SKH8mmSOeMQdO', 'admin'),
(484, 'Delpha', 'Larson', '823 Lockman Underpass\nCatharinebury, IA 98995-0846', 'vernie.kihn@example.net', '6218425566898', 'roslyn37', 'perempuan', 16, '2024-01-07 07:44:07', '2024-01-07 07:44:07', '$2y$12$9SUALVTI1G/sOT7So2rSh.vbLM51oBUeKzQA/WgFNf4dFINUKEKr2', 'admin'),
(485, 'Annette', 'McKenzie', '418 Beahan Corner Apt. 013\nEast Goldenbury, ND 84072-6017', 'jakubowski.murray@example.org', '6218327387001', 'clarissa.cole', 'perempuan', 21, '2024-01-07 07:44:07', '2024-01-07 07:44:07', '$2y$12$zUvcqXP6NXhrYgWPNT9u0OubH1.IcmJyAtHoUEFDT.Ex/TYo0qmT.', 'pelanggan'),
(486, 'Angel', 'Boyer', '48042 Schuppe Haven\nTorphyville, DE 61591-6288', 'brown.hillary@example.net', '6293489876559', 'ernest.dare', 'laki', 17, '2024-01-07 07:44:07', '2024-01-07 07:44:07', '$2y$12$0JRqvydduKrux8dnB/c1B.aszeSWVhw.zubFpXTmb8/r5Ez.gPPRG', 'admin'),
(487, 'June', 'Zboncak', '24422 Parker Fields\nRusselside, WV 05877', 'newell06@example.com', '6278433240862', 'lauren.deckow', 'laki', 36, '2024-01-07 07:44:07', '2024-01-07 07:44:07', '$2y$12$keC9dEw.ryxOIYj2W9cb5.X44lL/zdBOvPG6zcF0hoi/gYkXV8jtK', 'admin'),
(488, 'Felton', 'Flatley', '4100 Treutel Road Apt. 930\nLake Jeanette, RI 18224-0920', 'jana96@example.org', '6206842812120', 'larkin.dawson', 'perempuan', 48, '2024-01-07 07:44:07', '2024-01-07 07:44:07', '$2y$12$npNFK7OyUh5YouOm4srVie/qJAG5Y2/wiKidCgWpNJ.sMlPhqmqki', 'admin'),
(489, 'Joesph', 'Bauch', '65788 Boyle Locks Apt. 453\nWaelchichester, MA 80725', 'gustave39@example.com', '6294675672144', 'sauer.krista', 'laki', 51, '2024-01-07 07:44:07', '2024-01-07 07:44:07', '$2y$12$rbfuKpwilyKVCbyNsaIFNuTsRb4/9eYw7nbp7IXc7GI2nPbHXquiu', 'pelanggan'),
(490, 'Tatyana', 'Murray', '2160 Baumbach Plains\nNew Kris, CT 30980', 'bianka79@example.com', '6244530076173', 'ykovacek', 'perempuan', 51, '2024-01-07 07:44:07', '2024-01-07 07:44:07', '$2y$12$fR2iIpKJh.5pBGMSbNUa2un9XqEgwQwlmBItP9qCvKhvwuDrrVRGq', 'pelanggan'),
(491, 'Kyle', 'Vandervort', '247 Aubree Valleys\nNew Johnsonberg, OR 33141', 'madaline.carroll@example.org', '6207809323230', 'agustin.hermiston', 'laki', 53, '2024-01-07 07:44:07', '2024-01-07 07:44:07', '$2y$12$90QVIfh8DZR6tJSZezzoTuMckoJtzePHLNRzxepQW4ANulvXyEwSO', 'pelanggan'),
(492, 'Orie', 'Stiedemann', '600 Klein Rue\nSouth Destin, MT 09836-5785', 'otilia69@example.com', '6215348774830', 'lois.block', 'perempuan', 18, '2024-01-07 07:44:07', '2024-01-07 07:44:07', '$2y$12$2Sf/zWoGaiuLS1aswbVJbO0f/7KgXS8bcouY.yLxcVk/d7y6kBd12', 'pelanggan'),
(493, 'Yessenia', 'Koelpin', '50086 Rey Coves\nWest Simone, MA 48375', 'cronin.josianne@example.com', '6222338370388', 'schowalter.kathleen', 'laki', 44, '2024-01-07 07:44:07', '2024-01-07 07:44:07', '$2y$12$ll3qK5yN7ODsdaSWjXV3h.hyNDkVt/LWKw5ylWcGPdLP0StLZQrRG', 'pelanggan'),
(494, 'Travis', 'Abshire', '852 Ruben Estate\nSchillershire, WI 23921-5902', 'prosacco.alexane@example.com', '6238082296477', 'alia80', 'laki', 16, '2024-01-07 08:03:19', '2024-01-07 08:03:19', '$2y$12$UyiZe.iOuQW3W0ojcv7WX..jYsX/xO62Tpg8c40UXt84b0QJ5XgCq', 'admin'),
(495, 'Dion', 'Buckridge', '54492 Narciso Trace Suite 855\nEast Marta, NM 63512', 'williamson.chet@example.org', '6208227495012', 'jamarcus.heathcote', 'laki', 46, '2024-01-07 08:03:19', '2024-01-07 08:03:19', '$2y$12$rg63XHyNOkmJRUPASe/6V.HVjnMKZoKcs14k8v9R2UApHW.Lwtfsy', 'admin'),
(496, 'Reanna', 'Barton', '718 Rogahn Brook\nEast Alethatown, OK 58902', 'dtoy@example.net', '6250744690035', 'jade.pfannerstill', 'perempuan', 63, '2024-01-07 08:03:19', '2024-01-07 08:03:19', '$2y$12$Rtx8J/LfoYhbUucGNvuXkOD6ynKoi2z1BncWI2z.4KFT2xnDL5Jmq', 'admin'),
(497, 'Brown', 'Mann', '9565 Wunsch Union\nLucytown, MI 08753-0073', 'isanford@example.org', '6244038018809', 'fzulauf', 'laki', 19, '2024-01-07 08:03:19', '2024-01-07 08:03:19', '$2y$12$JB6gAAzjBO1nsS4ufHbJA.ETdVF6zgX7BN3pUhIiz2RHIgv8yeO/C', 'admin'),
(498, 'Althea', 'Balistreri', '2753 Orin Ridge\nNorth Shyanne, NJ 74157', 'mohr.colton@example.com', '6248120957815', 'vratke', 'laki', 40, '2024-01-07 08:03:19', '2024-01-07 08:03:19', '$2y$12$YbUMa7/bOvlFRCL0NQSX3ua31UiplUW/VMv420VT2OxiywwqZKmCK', 'pelanggan'),
(499, 'Fannie', 'Dicki', '836 Chaim Grove Suite 314\nLake Georgeport, OH 32685', 'lockman.maynard@example.net', '6215961000126', 'selina.hettinger', 'perempuan', 37, '2024-01-07 08:03:20', '2024-01-07 08:03:20', '$2y$12$HUZBzkAd7tEQY.uB9bawz.sbN5lSHCwxBmBHChkspuQNnrUwve/IO', 'pelanggan'),
(500, 'Della', 'Bayer', '538 Wisoky Stream Suite 296\nMonahanshire, WV 56792', 'zrippin@example.org', '6209593586592', 'erica.smith', 'laki', 29, '2024-01-07 08:03:20', '2024-01-07 08:03:20', '$2y$12$6s/UK.VA1m/JoiW9Gako5.nO0jgWzVR/puV13Cbe/YePdHbgYbcUu', 'pelanggan'),
(501, 'Helmer', 'O\'Kon', '7451 Bauch Springs\nJessyshire, NH 38783-5738', 'zwiza@example.org', '6232487053069', 'shane77', 'laki', 43, '2024-01-07 08:03:20', '2024-01-07 08:03:20', '$2y$12$/ZWc/S5TCT..qwQCv/PlQuSUcQnphqD/HOLgc9bxjy1rcXohNagAG', 'admin'),
(502, 'Kari', 'Feeney', '6371 Lebsack Lights Apt. 502\nJohnsside, WV 64635-6063', 'lavonne.connelly@example.org', '6257905722095', 'dickinson.daphne', 'laki', 33, '2024-01-07 08:03:20', '2024-01-07 08:03:20', '$2y$12$4QzT/rCpSykBWz.lvjFyxuDvp4HWPoifI2Qei8L8hotadMq/d.HLC', 'admin'),
(503, 'Nikolas', 'Bayer', '29812 Hettinger Turnpike Apt. 627\nNolanmouth, KS 22663-0886', 'aswift@example.com', '6288330322371', 'rowe.jeff', 'laki', 39, '2024-01-07 08:03:21', '2024-01-07 08:03:21', '$2y$12$kkx2s/E1Kn7jYuVexRvOxuOwGfuWfyY0klK21bFSNer.v2cMNE7kK', 'admin'),
(504, 'Marcelo', 'Bechtelar', '596 Herminia Lakes\nWest Paololand, MA 85405', 'walker88@example.org', '6201475163307', 'birdie.goyette', 'perempuan', 20, '2024-01-07 08:03:21', '2024-01-07 08:03:21', '$2y$12$jcdjP81VaV1C2.2TiyifneSk4bMN9rwXd7pts9JBN2GqMAuokGO1u', 'admin'),
(505, 'Carter', 'Kuhic', '1116 Ima Pass\nMitchellton, OH 51629', 'keely.wilkinson@example.com', '6290940575152', 'roob.felipa', 'laki', 29, '2024-01-07 08:03:21', '2024-01-07 08:03:21', '$2y$12$XfvKKcR3dssgzdVJ1EqYcuL1I6445aYIhI4uW86ZlPSle5/eo3TZe', 'admin'),
(506, 'Shyann', 'Botsford', '18772 Jones Plaza\nLockmanshire, WV 21228', 'katelyn00@example.org', '6225030100713', 'oreilly.diana', 'laki', 67, '2024-01-07 08:03:21', '2024-01-07 08:03:21', '$2y$12$jhg6yVR1v9kWKtsA3Y4tpudwSozHz4c3qMnUKYvEQR04NMC.nsM2e', 'pelanggan'),
(507, 'Moses', 'Howell', '36609 O\'Conner Points\nPort Corinestad, MI 51988-3736', 'nettie.oconnell@example.com', '6275369684128', 'nils43', 'laki', 60, '2024-01-07 08:03:21', '2024-01-07 08:03:21', '$2y$12$s48u5aLeP9fIIHT2YWpvzef2SejpI5o9L5L7hANSOl6Z9GgVForMO', 'admin'),
(508, 'Heber', 'Borer', '70287 Rodriguez Lock\nNorth Kelsishire, DC 71084', 'lueilwitz.sebastian@example.net', '6203343871553', 'hkozey', 'laki', 45, '2024-01-07 08:03:22', '2024-01-07 08:03:22', '$2y$12$sxiZlyt9V7ZsxhxrzkyV3uPwrumEUzfpUiezlPrHjG26eDuFgQWne', 'pelanggan'),
(509, 'Bradley', 'Stracke', '717 Denesik Glens Suite 168\nLabadiefurt, IA 74045-7728', 'schiller.gretchen@example.net', '6255746371273', 'duane19', 'perempuan', 36, '2024-01-07 08:03:22', '2024-01-07 08:03:22', '$2y$12$tnLzv8SBZ3.D2zz5T/KMhu4.4vDnXg6bduPz8qR9egEgmtnuJvLVq', 'pelanggan'),
(510, 'Jonathan', 'Connelly', '773 Lowe Run Suite 619\nNorth Berthaven, MS 16547', 'jackie.beahan@example.org', '6215614514811', 'molly50', 'perempuan', 48, '2024-01-07 08:03:22', '2024-01-07 08:03:22', '$2y$12$H2K91JeAf.v6NTT1kpKTi.1RsFoSp3o7hljIoqcNaCteqVHlJjB/K', 'pelanggan'),
(511, 'Billy', 'Prohaska', '180 Kerluke Hollow Apt. 723\nDustybury, AL 13530-0662', 'bernard42@example.net', '6237578370064', 'dare.selena', 'perempuan', 53, '2024-01-07 08:03:22', '2024-01-07 08:03:22', '$2y$12$aZbYA7fXYwS6yWpXPmXyp.1UdJbx7dIPNkG.KHTmW.NJnckbHq9Za', 'pelanggan'),
(512, 'Chaya', 'Prosacco', '58077 Emilio Streets\nSouth Ravenshire, IL 91385', 'marks.marguerite@example.net', '6265345782513', 'aufderhar.gabriella', 'laki', 36, '2024-01-07 08:03:22', '2024-01-07 08:03:22', '$2y$12$AlUNHQDVnXvTUj5gZRQLLe2jhxwc.JnmRRnDP3IzVh//CiJrEy9vC', 'admin'),
(513, 'Theodora', 'Hickle', '46519 Alexandrine Estate\nNorth Kittytown, TX 62399-3588', 'ikub@example.net', '6207401062809', 'mmarvin', 'laki', 33, '2024-01-07 08:03:23', '2024-01-07 08:03:23', '$2y$12$vwaWrgHl/Z62QNSS.HAequ.xBzww4K7Vo1lvQhB2d51HfXRXqRVSS', 'admin'),
(514, 'Zena', 'Champlin', '779 Serena Shores Suite 217\nWest Adonisstad, WY 57977-7344', 'rodriguez.johnson@example.net', '6221770271074', 'cary66', 'perempuan', 62, '2024-01-07 08:03:23', '2024-01-07 08:03:23', '$2y$12$CgBDauEBVegEN43iMZY4r.oPRFzvSOt.uJVl2RLW/ubZnM2ngkwBi', 'pelanggan'),
(515, 'Grady', 'Mertz', '6200 Wiegand Crossroad Suite 428\nChristmouth, RI 05390', 'hermann.shemar@example.org', '6265402188345', 'baby40', 'laki', 57, '2024-01-07 08:03:23', '2024-01-07 08:03:23', '$2y$12$IK3nH9JIEikGF3.6j8tk.up9ia6Lo.DODuc.lryVVhv6itpt29XOS', 'pelanggan'),
(516, 'Clifton', 'Wilkinson', '2077 Hermiston Turnpike Suite 679\nEast Maximohaven, RI 57153', 'vilma.jerde@example.org', '6272615220567', 'watsica.veda', 'laki', 40, '2024-01-07 08:03:23', '2024-01-07 08:03:23', '$2y$12$jF3TWMmynSt1.S3UaTGysu42I6wXQ.MREQtO0glIZKj0yPBtEy/ai', 'pelanggan'),
(517, 'Pete', 'Weissnat', '604 Judd Forest Apt. 609\nMaziefort, WV 76298', 'yhagenes@example.org', '6266678923052', 'dillan.williamson', 'perempuan', 27, '2024-01-07 08:03:24', '2024-01-07 08:03:24', '$2y$12$xrXULGDU9m9qR9dre7h.Bu3bQRJmLL.m.F1VfnuLqj8xBn40EVY6e', 'admin'),
(518, 'Elenor', 'Runte', '20570 Lia Underpass Suite 764\nO\'Konhaven, OR 39384-7831', 'hollis13@example.com', '6275848444710', 'luettgen.watson', 'perempuan', 47, '2024-01-07 08:03:24', '2024-01-07 08:03:24', '$2y$12$yqnhCDGqIBbpLmaVYw0Xt.oKngNOrUPepqDnxO3Vna2OEl.QOYgXa', 'pelanggan'),
(519, 'Kurtis', 'Brakus', '67180 Aileen Mall Apt. 582\nWest Deontaeville, VT 66765', 'kskiles@example.com', '6287079534999', 'laurianne04', 'perempuan', 48, '2024-01-07 08:03:32', '2024-01-07 08:03:32', '$2y$12$5jPmgj5WjkZE5tt0g94htev4Z1vPNpPvaGiwDCmWfY4ih4kf4kopq', 'pelanggan'),
(520, 'Julia', 'Wiegand', '4374 Simonis Plains\nLake Zula, NY 41816-3014', 'greyson.stiedemann@example.net', '6278382002252', 'rachel09', 'laki', 70, '2024-01-07 08:03:32', '2024-01-07 08:03:32', '$2y$12$i6hnojSJ8bqoXNVONfT6mOSULCdiCJDQw2gY5Y.oMOPPRMmRPlQeS', 'pelanggan'),
(521, 'Vinnie', 'Bruen', '781 Luella Ranch\nWest Jennings, GA 70837-4064', 'fbrekke@example.org', '6282018074196', 'wbeahan', 'perempuan', 23, '2024-01-07 08:03:33', '2024-01-07 08:03:33', '$2y$12$UOJoyQ0yxJMNzO7LAs4CF.V0ZTSgza0wPz5C35B4ZY3l7DoamJGde', 'admin'),
(522, 'Kaya', 'Carter', '8115 Gulgowski Summit\nKuhlmanland, VT 22202-6864', 'lockman.ophelia@example.org', '6270983211206', 'khowell', 'perempuan', 70, '2024-01-07 08:03:33', '2024-01-07 08:03:33', '$2y$12$k1oISVdlhhtsvRvl7zlMIOd9XRNJavv06mkLQlzm4dhEez7NdccAe', 'pelanggan'),
(523, 'Berniece', 'Zemlak', '94668 Goodwin Curve Apt. 794\nDeniston, WI 73706-4876', 'johnson.angelica@example.com', '6232634007449', 'predovic.cleveland', 'laki', 36, '2024-01-07 08:03:33', '2024-01-07 08:03:33', '$2y$12$eYW5zt0tqPr3ASFTVNl8W.in4.IOAXIcsXyKau8e425/daO8132xq', 'pelanggan'),
(524, 'D\'angelo', 'Reichert', '159 Gottlieb Estates\nLake Shemar, NY 05762', 'romaguera.roy@example.com', '6202017177718', 'lemuel.stoltenberg', 'laki', 63, '2024-01-07 08:03:33', '2024-01-07 08:03:33', '$2y$12$Vsga.sWyRjMxvlVeEk6AMeTl0n1CtcHfIx4GDj2wrW2tk3JAaPOMK', 'pelanggan'),
(525, 'Vickie', 'Heathcote', '8126 Hill Dam\nMohrborough, FL 40877-3143', 'erica82@example.org', '6245996123126', 'domenic46', 'laki', 51, '2024-01-07 08:03:33', '2024-01-07 08:03:33', '$2y$12$X6g8a6Zh3t2hnw780Tpelu9IibAVX1HyFnxHCNLQCKcNIlMFqH3A2', 'admin'),
(526, 'Thomas', 'Swift', '708 Kub Creek Suite 588\nSammyborough, UT 93227', 'cruz48@example.com', '6250233652985', 'legros.leonor', 'laki', 42, '2024-01-07 08:03:34', '2024-01-07 08:03:34', '$2y$12$CsdCWyORjnzWynNgYzNC/eel.xhLvHjAqkiWpgdm05VZoSpOs7P2a', 'pelanggan'),
(527, 'Daniela', 'Willms', '86744 Jakubowski Forest\nWest Santino, OK 92348-4501', 'constantin.schowalter@example.net', '6287233299710', 'ugutmann', 'perempuan', 64, '2024-01-07 08:03:34', '2024-01-07 08:03:34', '$2y$12$ssLb29STjzXrR0JfDSfe8.h0how90Yk4TZHbt9UZztqaPHvreBndy', 'pelanggan'),
(528, 'Dell', 'Rowe', '9389 Tod Island\nPort Wainoview, CT 92634-2270', 'bernadette.grimes@example.com', '6231556946047', 'wgrant', 'perempuan', 47, '2024-01-07 08:03:34', '2024-01-07 08:03:34', '$2y$12$Nbw2DOdhgoh.NwlkFL/d3uV8s2qVs27ecSqOlSN5369GBXnvavcVK', 'pelanggan'),
(529, 'Jean', 'Corwin', '2245 Strosin Creek\nKesslerbury, NJ 15673-0706', 'casper.ruby@example.net', '6246532099449', 'antonia18', 'laki', 51, '2024-01-07 08:03:34', '2024-01-07 08:03:34', '$2y$12$Qp9PpYDEDbclQ.gq8MN0r.eWTIgLnbtltLSlI5ZdUTggDM0WOdx.e', 'pelanggan'),
(530, 'Anastasia', 'Ullrich', '2597 Reed Greens\nRueckerland, MD 46215-5749', 'maddison41@example.com', '6288536008245', 'kkris', 'laki', 46, '2024-01-07 08:03:35', '2024-01-07 08:03:35', '$2y$12$EpAkPFsD94YnC.pw1UaGIu8VAaTPdLNv.0.WQR2E1TzcDzqtu99UW', 'admin'),
(531, 'Jewel', 'Maggio', '40943 Pouros View Apt. 864\nEzequielmouth, MA 93315-0555', 'ehomenick@example.net', '6265701742678', 'yhegmann', 'laki', 27, '2024-01-07 08:03:35', '2024-01-07 08:03:35', '$2y$12$WOdPp87uV5lgZdaMfMAGKut4xu8lYk4kWDtttZ12m.avEbDgEEWSW', 'pelanggan'),
(532, 'Johathan', 'Satterfield', '60874 Treutel Villages Suite 222\nWest Eladioberg, OH 91201-4176', 'joana.breitenberg@example.org', '6223665083973', 'stanton.douglas', 'laki', 57, '2024-01-07 08:03:35', '2024-01-07 08:03:35', '$2y$12$eGPOeutl1OMP6anMa2zo.uNGIso4ENaEKtX7zPNzp0oiV2HVzIYZG', 'admin'),
(533, 'Liliana', 'McDermott', '394 Sawayn Street\nErnsershire, ND 62166', 'miller.loyce@example.com', '6255350920833', 'brisa.berge', 'laki', 35, '2024-01-07 08:03:35', '2024-01-07 08:03:35', '$2y$12$mh7td9eLm0Bb7JCYG5R/.OerwpX2rJKo0idEKI7JRPwPiQQghJYjG', 'pelanggan'),
(534, 'Albertha', 'Hansen', '9194 Kurt Ways Apt. 458\nPort Nikkimouth, ND 98353-6011', 'corwin.xavier@example.com', '6282523402750', 'philip35', 'perempuan', 68, '2024-01-07 08:03:35', '2024-01-07 08:03:35', '$2y$12$zz3e8N2fB6EsoS4LbX.0o.LbzqFKxrKtFIQ9AknNoRiSy7t.XTLrW', 'admin'),
(535, 'Heidi', 'Goyette', '5082 Heller Rue\nEast Sheila, NM 68724-5647', 'howe.marjorie@example.com', '6249453473186', 'harry89', 'perempuan', 52, '2024-01-07 08:03:36', '2024-01-07 08:03:36', '$2y$12$ZOTmvt0mKyem5khfkqA8I..TOpwb0SkKO5eSnMvosCljOBVGohSsu', 'admin'),
(536, 'Andreane', 'Buckridge', '83185 Beatty Ranch Suite 437\nLowehaven, OK 62179', 'idubuque@example.com', '6201753286863', 'marianne08', 'laki', 48, '2024-01-07 08:03:36', '2024-01-07 08:03:36', '$2y$12$vNHg73gndzONF78gmz.M3.QKWcoALoqaNQjWgGaGy75rfzNpyy7gS', 'admin'),
(537, 'Marcos', 'Ebert', '7441 Hane Locks\nNew Mohamed, NM 62270', 'jordi.kerluke@example.org', '6283532669618', 'liana.haag', 'laki', 35, '2024-01-07 08:03:36', '2024-01-07 08:03:36', '$2y$12$CygHY/LCgkGXA3xaTgueOePam/4sqne9CHnOgT8jWiroaqWGD51Ua', 'pelanggan'),
(538, 'Annabel', 'Bogisich', '76630 Tillman Shores Apt. 045\nWest Giovannaville, NM 55769-2355', 'qspencer@example.com', '6250029152611', 'joannie.graham', 'perempuan', 15, '2024-01-07 08:03:36', '2024-01-07 08:03:36', '$2y$12$qNxk6PbU2mSAEmQ6IehkWupkblKfSfVAkggowc.QSFOjh2eAx9U0C', 'pelanggan'),
(539, 'Cale', 'Swaniawski', '138 Darlene Gardens Suite 298\nWest Laurelville, IN 65992-1625', 'qmacejkovic@example.com', '6273046995803', 'don.braun', 'laki', 32, '2024-01-07 08:03:37', '2024-01-07 08:03:37', '$2y$12$Eyp82UJ76DSco.YYDSxcQeqYxowMMrhSDYS44ccoIweyPf52Fwne2', 'pelanggan'),
(540, 'Tremaine', 'Simonis', '67156 Lucas Loaf\nHillsview, NV 55831', 'baby.christiansen@example.net', '6299445558260', 'bernhard.ferne', 'laki', 62, '2024-01-07 08:03:37', '2024-01-07 08:03:37', '$2y$12$1t3cvuDk85/j2CS104uZxeT0jUF0BCrSgunYg8FqpoP5yrZ2wfVji', 'pelanggan'),
(541, 'Brandi', 'Jones', '898 Leannon Flats Apt. 690\nCoreneville, DC 72775', 'mikel87@example.org', '6273699252489', 'mheidenreich', 'laki', 39, '2024-01-07 08:03:37', '2024-01-07 08:03:37', '$2y$12$V5006ez3xL06wRXtOZtSyeF33R9Fei3qcxBNXaUiFIMiGAh0XRviu', 'pelanggan'),
(542, 'Tyree', 'Rutherford', '4896 Ratke Corners Suite 331\nMayramouth, PA 04230-3007', 'lessie.williamson@example.org', '6209818706300', 'oschaefer', 'laki', 54, '2024-01-07 08:03:37', '2024-01-07 08:03:37', '$2y$12$jhdDGQ7mEdy1KkOTVhH1duL/Z6ZeC99.SztMtVZigkL1zQKp28m36', 'admin'),
(543, 'Era', 'Konopelski', '2266 Little Ridges Apt. 713\nMurrayside, ID 17939-7170', 'brionna.nader@example.com', '6231867625179', 'raleigh22', 'laki', 38, '2024-01-07 08:03:37', '2024-01-07 08:03:37', '$2y$12$0OLd3dTKitZL17kELw/MI.sHUYAAZ.79D7i/.nr.8RYwUuS56T.1q', 'admin'),
(544, 'Wilford', 'Koepp', '94609 Beverly Cove Suite 246\nMoenmouth, OR 36943', 'gerson08@example.com', '6271667356699', 'shields.alba', 'laki', 29, '2024-01-07 08:03:48', '2024-01-07 08:03:48', '$2y$12$6Motzx0VzcamxNupoKsMEe0MsnL1jMTT6SIXlUsWmlME6fLnk0ytG', 'admin'),
(545, 'Justen', 'Bashirian', '973 Rodriguez Vista\nPort Demarcus, MO 26186', 'kari.haag@example.com', '6215296655688', 'jamey.kautzer', 'laki', 17, '2024-01-07 08:03:48', '2024-01-07 08:03:48', '$2y$12$yZkvA1IfUyb1UxYj/5E5Y.jom3/3HX/e/5T/SFklH8kC6ClsCPHJu', 'admin'),
(546, 'Olaf', 'Koch', '84973 Abernathy Ranch\nCruickshankburgh, CT 51275', 'barton.tyrell@example.com', '6203610168115', 'smith.verlie', 'perempuan', 46, '2024-01-07 08:03:48', '2024-01-07 08:03:48', '$2y$12$qFgraQOgrr6ulrnPPgbXKOM7Ijg3mQhmc27H8UmVQ3q8aRgv7ZJf6', 'admin'),
(547, 'Joesph', 'Mohr', '6271 Myrtis Hill Suite 452\nMoenberg, SD 01571', 'verlie71@example.org', '6281383393162', 'maximillia37', 'perempuan', 64, '2024-01-07 08:03:49', '2024-01-07 08:03:49', '$2y$12$pCF4omtmXEhMWq5AuOh/ouJ4v9CP1ceQkFETPWD/LQZCis0aOnFPa', 'admin'),
(548, 'Ole', 'Simonis', '770 Dach Mews\nSteuberberg, TN 08657', 'kautzer.selina@example.net', '6206623405853', 'block.roberto', 'perempuan', 33, '2024-01-07 08:03:49', '2024-01-07 08:03:49', '$2y$12$WTbo66TmC59SQrXiZZh0y./sjWM21t.Mfhpd2yqgH5A3D5cF8xk02', 'admin'),
(549, 'Sherman', 'Dibbert', '6134 Gabe Streets Suite 829\nSouth Crystal, DE 32035', 'dmills@example.org', '6277483485407', 'pgrant', 'laki', 53, '2024-01-07 08:03:49', '2024-01-07 08:03:49', '$2y$12$/HvgAbMItkVqapalSK8TTOho2f6fpbbLEbS3weYDCA/zOi3k2A6gO', 'pelanggan'),
(550, 'Johathan', 'Prohaska', '8925 Thiel Key Apt. 975\nLake Andrew, WY 87316', 'adam.reichel@example.com', '6299592174303', 'hagenes.buster', 'perempuan', 36, '2024-01-07 08:03:49', '2024-01-07 08:03:49', '$2y$12$HbHTq9Bt/7jjkeRPL0o6EeClkPteBamdocttINlspDgrx5qLY/.Uq', 'admin'),
(551, 'Travon', 'Rutherford', '22345 Breana Lights\nNorth Rosinaborough, NJ 93313-1763', 'xbradtke@example.com', '6280014669130', 'hhintz', 'laki', 54, '2024-01-07 08:03:50', '2024-01-07 08:03:50', '$2y$12$9H1fhG5x.3QET3ejpNym1eNKbNYaNSEyzA7ix67Y2yeYFP6Z4/miu', 'admin'),
(552, 'Ericka', 'Wolf', '9610 Derek Road\nWest Era, VA 53324-4657', 'jewel84@example.org', '6262662015834', 'gardner.oreilly', 'laki', 39, '2024-01-07 08:03:50', '2024-01-07 08:03:50', '$2y$12$v6vBNCmGzX4LhpwdxHxZsOj1CQQZndmiRA4m2VyoqQOL0/CVhXsQS', 'pelanggan'),
(553, 'Judge', 'Gutkowski', '917 Hane Plaza Suite 458\nLake Brown, AK 29199', 'grady.reyna@example.com', '6225715989856', 'yfeest', 'laki', 66, '2024-01-07 08:03:50', '2024-01-07 08:03:50', '$2y$12$AKf4ke5m6EU9SZtEIThcgunhcKLYX0rkyF9zZDfzN5fEbjDciJwRm', 'admin'),
(554, 'Robert', 'Haag', '76643 Giovanna Isle\nWest Shana, NJ 72474-2183', 'zhessel@example.com', '6203328382285', 'leffler.verda', 'perempuan', 55, '2024-01-07 08:03:50', '2024-01-07 08:03:50', '$2y$12$mmpghuzrcz9Iyb5q.0Kc9O5KrwH2lHue.I7wPawqrUeyi0oO1XAVW', 'pelanggan'),
(555, 'Muriel', 'Jacobs', '85620 Runolfsson Causeway\nRoweside, GA 04342', 'moen.rasheed@example.com', '6297201072248', 'braun.sonia', 'laki', 51, '2024-01-07 08:03:50', '2024-01-07 08:03:50', '$2y$12$fzR0fJYa7QsNtsfFEny9rOVfVHcjBZyU80bxYbGsPcFY4tfw2aMgm', 'admin'),
(556, 'Giovanny', 'Pollich', '722 Huels Meadow\nSouth Melissafurt, NY 52798', 'antonietta.pagac@example.org', '6249650937309', 'nledner', 'laki', 22, '2024-01-07 08:03:51', '2024-01-07 08:03:51', '$2y$12$so/DUDPVh6din0AlKOvjjOO2pQxeLoxBvexwuHGNolPKHby2GWPBS', 'admin'),
(557, 'Carter', 'Mosciski', '9508 Audie Oval Apt. 612\nEast Timmothyton, FL 56860', 'hessel.kathleen@example.net', '6245559233749', 'kassulke.janick', 'laki', 34, '2024-01-07 08:03:51', '2024-01-07 08:03:51', '$2y$12$ZLx1AuMtmlSWCAJ1F/mj8.LVXzAqhaOibwjLbWdAfrg9kabZxp/i6', 'admin'),
(558, 'Adrianna', 'Wilkinson', '5765 Micaela Road Suite 074\nWiegandchester, ND 06092-7497', 'wdamore@example.com', '6211180505963', 'metz.christ', 'laki', 63, '2024-01-07 08:03:51', '2024-01-07 08:03:51', '$2y$12$BUFn/EzZUVrjiear/savjOrqqJi36fK/CenK4lEIYujcl7b7LtG2q', 'admin'),
(559, 'Abbigail', 'Hoppe', '38534 Beatrice Meadow\nMargarettstad, UT 93176-6284', 'cayla.kling@example.org', '6297084987628', 'hhill', 'laki', 49, '2024-01-07 08:03:51', '2024-01-07 08:03:51', '$2y$12$DbW.7htSoaZoplu0azxRzO77WmgH7XddevLS.7o9AeQXhJmqmqM/i', 'admin'),
(560, 'Flo', 'Bauch', '1291 Hintz Union\nNorth Adela, MS 61788-4213', 'lhaley@example.org', '6205021424968', 'yost.chadrick', 'perempuan', 24, '2024-01-07 08:03:52', '2024-01-07 08:03:52', '$2y$12$U.XGo9p/AQaXBsuK1QXEd.xEi4OEMbgEFcv71G01PzWj2hDRDZ04q', 'pelanggan'),
(561, 'Marta', 'Cartwright', '392 Lebsack Way\nLaishaton, KS 22257', 'bessie.fritsch@example.org', '6271232817333', 'ljakubowski', 'laki', 46, '2024-01-07 08:03:52', '2024-01-07 08:03:52', '$2y$12$RFZ5510Xox2KkmV6NxsWtee0oNKOPn4/Aknroehtu/aTjJJJ5Cq6m', 'pelanggan'),
(562, 'Jaquan', 'Ryan', '85254 Mohammed Knolls Apt. 770\nSouth Brettton, IL 89594-6908', 'kianna36@example.com', '6280965716066', 'kian.nolan', 'laki', 44, '2024-01-07 08:03:52', '2024-01-07 08:03:52', '$2y$12$qGqqXZqSWtVNPKCUJTAHKePpYn9Npv/CXKVdpVSFX6YkUMJuG8kpu', 'admin'),
(563, 'Bridie', 'Waelchi', '899 West Walks Apt. 097\nPort Alaynaburgh, MD 53831-1713', 'damon.barrows@example.com', '6252491846791', 'dibbert.juwan', 'laki', 58, '2024-01-07 08:03:52', '2024-01-07 08:03:52', '$2y$12$bO6gdLnoB7oK09p/208i9eWti23Tcv9Zzy3h34IIpdUI/U.J9OHaG', 'admin'),
(564, 'Koby', 'Terry', '207 Denesik Summit\nNew Malcolm, KS 96104-1691', 'hammes.vincent@example.com', '6294407694495', 'korbin06', 'laki', 20, '2024-01-07 08:03:52', '2024-01-07 08:03:52', '$2y$12$v.UqmnN7pSINOi.QtKLexe7gCGAh9yEXLqAnio2lv.O8yCIxJXGUe', 'admin'),
(565, 'Guillermo', 'Schmitt', '70748 Marcel Oval Apt. 196\nAndersonside, DE 03029-7993', 'stamm.amani@example.net', '6266268086896', 'khamill', 'laki', 70, '2024-01-07 08:03:53', '2024-01-07 08:03:53', '$2y$12$oEVzJa9Fvyy7iJuT6rIg3eL8/l1sGkXayVBMcOKDQCoyl/hf.KtSW', 'admin'),
(566, 'Aimee', 'Stanton', '5342 Halvorson Parkways\nPort Matt, NY 63586-6125', 'adan.harber@example.net', '6236196754045', 'mcdermott.daisha', 'laki', 70, '2024-01-07 08:03:53', '2024-01-07 08:03:53', '$2y$12$UMAdQNwBxNSZIe12fVKv1OsKbrhtDm2Rmp7bI14fwoqPn9.tl3.p6', 'pelanggan'),
(567, 'Sister', 'Dare', '1551 Alyce Ports\nWisozkside, AL 20141-7869', 'mmcclure@example.org', '6290186019536', 'ethelyn39', 'perempuan', 67, '2024-01-07 08:03:53', '2024-01-07 08:03:53', '$2y$12$qt9dczZYnbL9EwoomQeq7.cExW1M2c80nSItoXDQ6sr552KeISf4C', 'pelanggan'),
(568, 'Merritt', 'Johns', '25300 Ed Junction Apt. 397\nElinorfurt, SC 85572-2022', 'waelchi.carole@example.net', '6286282365958', 'lavada.mosciski', 'laki', 57, '2024-01-07 08:03:53', '2024-01-07 08:03:53', '$2y$12$XLUXswPrz5ssUGrEFOdLte8BP5bxx4rZKqk5oPiGdGFa8336KkVS2', 'admin'),
(569, 'Eloise', 'Waters', '951 Waelchi Drive Apt. 611\nPort Lora, AR 84662', 'zander.ziemann@example.org', '6253953305810', 'mcglynn.bridgette', 'perempuan', 49, '2024-01-07 08:04:30', '2024-01-07 08:04:30', '$2y$12$DK80aZtH0YTGOsibESV2iOuLzTkkJVLMEzTgTTJOlz7GjEsPCnP3i', 'admin'),
(570, 'Effie', 'Davis', '847 Julien Shoals Apt. 234\nChristiansenport, WV 58144', 'bertrand.stiedemann@example.org', '6216725291349', 'merlin27', 'laki', 53, '2024-01-07 08:04:30', '2024-01-07 08:04:30', '$2y$12$4hiSuiRMjRrJgZUCzzH3d.pyy33CtJPSYBd5dBUXIpQchhJ6qBnIW', 'admin'),
(571, 'Alessandra', 'Kassulke', '9845 Stamm Stravenue\nNorth Hellenborough, HI 57694-3467', 'kirlin.robyn@example.com', '6250027706849', 'margaret.green', 'perempuan', 26, '2024-01-07 08:04:30', '2024-01-07 08:04:30', '$2y$12$.3QiwEXeqWOaV0T0gKpyB.6nvN6qgUGRa9uDDGOZ9J8b3/Lp4odPG', 'admin'),
(572, 'Claire', 'Kreiger', '361 Klein Orchard\nFlorencemouth, IA 05953', 'gvolkman@example.com', '6297523827888', 'emma11', 'laki', 21, '2024-01-07 08:04:30', '2024-01-07 08:04:30', '$2y$12$rUJSndVkpiP44cWJENUZIOqcau0kSnqWKnpuEtrKAjbu6bhK8S/Ay', 'pelanggan'),
(573, 'Madaline', 'Wyman', '572 Koss Circles\nPort Cristinafurt, UT 41393-2044', 'eflatley@example.net', '6279161056204', 'squitzon', 'laki', 45, '2024-01-07 08:04:30', '2024-01-07 08:04:30', '$2y$12$VLRX3hplXOgZWqRzOTdUWef5im1kwZzxE7yoT0yKsJwaXfCVcQ2mu', 'admin'),
(574, 'Manuela', 'Brekke', '30858 Kyra Isle Apt. 084\nAlveraport, RI 21600', 'koss.margaretta@example.net', '6287347514463', 'clemmie.schuster', 'laki', 54, '2024-01-07 08:04:31', '2024-01-07 08:04:31', '$2y$12$rIZ7mHVJ3CD/j9SyrOK11eA3.TcWjY/WHeUngxFJNu3OE3B8erSJS', 'pelanggan'),
(575, 'Hans', 'Stoltenberg', '875 Wilderman Gardens\nNorth Luisaview, CA 64231-2556', 'renner.palma@example.org', '6205427779987', 'fiona.weissnat', 'perempuan', 24, '2024-01-07 08:04:31', '2024-01-07 08:04:31', '$2y$12$f8JvyDVdrJ8EejzvqZ7MTeSH0V8hEGn4RBAlwQ4T2yNGvUi35o6ii', 'pelanggan');
INSERT INTO `users` (`id_user`, `nama_depan`, `nama_belakang`, `alamat`, `email`, `no_telp`, `username`, `gender`, `umur`, `created_at`, `updated_at`, `password`, `roles`) VALUES
(576, 'Magdalena', 'Rutherford', '490 Jayden Stream Apt. 482\nNorth Clintview, MO 01489-2779', 'wisoky.eda@example.com', '6212597972308', 'mueller.uriel', 'perempuan', 32, '2024-01-07 08:04:31', '2024-01-07 08:04:31', '$2y$12$5GVcdnOIqVk.txj8szYKhOAIwlD6/9lJjFd2hzJ2qCpHeJBo48cGe', 'admin'),
(577, 'Cali', 'Leffler', '7683 Jace Mountain Suite 820\nSouth Abigale, KY 69404-7805', 'nolan.rhea@example.com', '6201614619729', 'bernice.conn', 'perempuan', 27, '2024-01-07 08:04:31', '2024-01-07 08:04:31', '$2y$12$.RTPxRZ15hBrmYJJAKtEPOz2POn5tyUFSqI4kxEOLVfIMC1hOr64m', 'pelanggan'),
(578, 'Erwin', 'West', '971 Nienow Ranch\nWuckertfurt, DE 88625-1548', 'virginie.walter@example.com', '6217115132746', 'xhyatt', 'laki', 54, '2024-01-07 08:04:31', '2024-01-07 08:04:31', '$2y$12$bgG0z23swsUKaZqyXQC6NuQfKXHeb/ZNfRxsel/8zwxRTTmZILzVK', 'pelanggan'),
(579, 'Golden', 'Waelchi', '18592 Franecki Manors\nNew Jailyn, IA 80301', 'edickinson@example.com', '6267992490867', 'feil.rosa', 'laki', 57, '2024-01-07 08:04:32', '2024-01-07 08:04:32', '$2y$12$dHdMC5xwDusFCFx5KHSDweqkFyFmVTtPWPi0UNeWRoAE1A/Sh8u2W', 'admin'),
(580, 'Matt', 'Medhurst', '86181 Davis Meadow\nEast Jeffereyville, CT 08343-9614', 'schumm.erik@example.org', '6276421095222', 'mireya.ratke', 'laki', 63, '2024-01-07 08:04:32', '2024-01-07 08:04:32', '$2y$12$BK3.0V/lQ2vzEH81ROJgiuPduFhQiqPpKuu5/eT.REfz9wUiegYqW', 'admin'),
(581, 'Janelle', 'Predovic', '1510 Akeem Island Apt. 671\nLake Miles, HI 76464-1749', 'cdickinson@example.net', '6212306104293', 'dietrich.kristopher', 'perempuan', 45, '2024-01-07 08:04:32', '2024-01-07 08:04:32', '$2y$12$QBH9QzUCyDVxxuiG0Pr1I.uaIKY4/1x1N85QWN3gs9Z0jF5rjGaci', 'pelanggan'),
(582, 'Clifton', 'Heller', '55121 Schiller Port\nKubfurt, NJ 80630', 'tmcclure@example.com', '6239456986793', 'nohara', 'perempuan', 19, '2024-01-07 08:04:32', '2024-01-07 08:04:32', '$2y$12$7VFrY3JRUgn3xuwCV6QdL.z0UN2O1e16CP.Y6Cc8WxZKHqdh69KfW', 'pelanggan'),
(583, 'Stanton', 'Reichel', '847 D\'Amore Tunnel\nLake Rickeyshire, KS 25520', 'sosinski@example.net', '6256063358668', 'bradtke.eva', 'perempuan', 54, '2024-01-07 08:04:33', '2024-01-07 08:04:33', '$2y$12$1ijMSsowCMfh512jua6mMezSfKrj4wOlOp7vaUBFWb6bAaubEej.K', 'admin'),
(584, 'Isac', 'Stoltenberg', '48186 Timmothy Views\nLake Flo, OK 29837-6063', 'cole.sarina@example.com', '6219302822203', 'mohara', 'perempuan', 35, '2024-01-07 08:04:33', '2024-01-07 08:04:33', '$2y$12$HpQEfe42kfFJ6G80DiuyH.YEqnoQ3x.dfkWfb4bddnz2A49gzWri.', 'pelanggan'),
(585, 'Ayden', 'Reichert', '11241 Turcotte Branch Apt. 470\nDamienburgh, WV 19552', 'hbecker@example.org', '6281108518244', 'wyman.leta', 'laki', 20, '2024-01-07 08:04:33', '2024-01-07 08:04:33', '$2y$12$VCojtaSQJzhwsM7DYunAPezK5KYoPv2I2MP1WpE4KLEzoKsdKK39.', 'admin'),
(586, 'Rose', 'Denesik', '2197 Shaniya Park\nNew Lorine, SC 52683-6346', 'zack83@example.org', '6213143112830', 'isom51', 'laki', 48, '2024-01-07 08:04:33', '2024-01-07 08:04:33', '$2y$12$pQckXc/ZIx96/NYufD6dgOl3p0BBU3zCXj7AQzUQu2xyUQm4Z4voG', 'admin'),
(587, 'Gay', 'Renner', '43409 Zieme Pike\nMarksside, FL 05803', 'adah86@example.org', '6290182555465', 'terdman', 'laki', 52, '2024-01-07 08:04:33', '2024-01-07 08:04:33', '$2y$12$w.dQRX9ECWtVphC8OsTu7.7kuo1t97.GIobzmEG.FWD87nZy.1iu.', 'admin'),
(588, 'Rahsaan', 'Padberg', '346 Herzog Stravenue\nNorth Lilianstad, NY 83148', 'bjohnson@example.com', '6272659103279', 'alessia06', 'perempuan', 40, '2024-01-07 08:04:34', '2024-01-07 08:04:34', '$2y$12$ZVBbfeFHD8Ma5SWtKxGG2e7Ly5HG3n0e/Fm3NihivfhwUvDQ1DM1.', 'pelanggan'),
(589, 'Jonatan', 'Barrows', '45979 Gordon Burg\nChamplinport, MN 62419-0622', 'emmerich.emelia@example.org', '6236215309163', 'doyle.martin', 'perempuan', 64, '2024-01-07 08:04:34', '2024-01-07 08:04:34', '$2y$12$OWDz22YPuK5Se3e78N77i.FI6b71lSS8PG5D9K4KXtwYQvvQDViiO', 'admin'),
(590, 'Charley', 'Ward', '64462 Lind Underpass Suite 902\nEast Ulicesfort, OH 83407-5006', 'lindgren.monty@example.net', '6250043694804', 'hilario03', 'laki', 36, '2024-01-07 08:04:34', '2024-01-07 08:04:34', '$2y$12$v18legA5oYey/Q/dh/Jg3.GokmE7y4Jnq2WivaotlKZWVPCQKf1fC', 'admin'),
(591, 'Celestine', 'Lind', '597 Jailyn Unions Suite 162\nAmosberg, MO 71233-1154', 'dayton77@example.com', '6227444271510', 'candice22', 'laki', 18, '2024-01-07 08:04:34', '2024-01-07 08:04:34', '$2y$12$BTIUANKePKgJ2iVoS37z4ud8g.cintJ5MmiuzFv0QhKQ5zBZbb3zq', 'pelanggan'),
(592, 'Demetrius', 'Weber', '2992 Tremayne Extensions Suite 233\nNorth Polly, AK 29470', 'oreilly.eleazar@example.net', '6283301065349', 'arch.dickinson', 'perempuan', 48, '2024-01-07 08:04:35', '2024-01-07 08:04:35', '$2y$12$5vUSIQOil6y8Czfgyk4Ev.uThkX94Cnjz8vBz1yHzcrjP/86clov6', 'admin'),
(593, 'Percival', 'Friesen', '145 Wilhelm Bridge Suite 742\nAdelaview, WY 83684', 'judd58@example.org', '6212051063233', 'danielle.bailey', 'laki', 21, '2024-01-07 08:04:35', '2024-01-07 08:04:35', '$2y$12$UbLg/.K4Cu2PgtiCxeZ5u.3yD66EgKR2l5/Z9XX9Si9a9g0d7u9PK', 'pelanggan'),
(594, 'Daniella', 'Moen', '63349 Romaguera Fields\nColtenmouth, ID 16241-6774', 'hamill.christophe@example.org', '6283609020306', 'brook62', 'laki', 28, '2024-01-07 08:04:59', '2024-01-07 08:04:59', '$2y$12$Krw2QklYsoM3H9.FvADKGuEtuTMafUpw1W2szZYUICZV7RXg76p7q', 'admin'),
(595, 'Ryder', 'Johnston', '46763 Rudy Spur\nBrennanville, VA 89442-0468', 'lauriane45@example.com', '6246138341703', 'kozey.robb', 'perempuan', 64, '2024-01-07 08:04:59', '2024-01-07 08:04:59', '$2y$12$eUIyQVklm.oqmb4zok9cwuHUxmCBz7mC44cLwoXowFc.1cjtvSW.S', 'pelanggan'),
(596, 'Kiel', 'Gleason', '426 Kozey Lock Suite 921\nNew Jaytown, SD 38510', 'annabell24@example.com', '6256755809100', 'fschulist', 'laki', 36, '2024-01-07 08:04:59', '2024-01-07 08:04:59', '$2y$12$Q.CMhQw2MmKtBXtKnAS//OZ9X7ZP2RpQJcgIwIG3ZVf8eWSZn4HMO', 'admin'),
(597, 'Judy', 'Lemke', '236 Abigale Orchard\nWest Juanaton, HI 30537-9819', 'abahringer@example.org', '6221567076786', 'xwiegand', 'laki', 69, '2024-01-07 08:04:59', '2024-01-07 08:04:59', '$2y$12$fRG5aof0q1zJrr2Da7ln/eXJs5tkxGl7sZDt9vLja1/BJ9oi3PUYG', 'admin'),
(598, 'Arvid', 'Koelpin', '421 Nelda Cliffs\nNorth Pascale, SC 89911-5238', 'martin.ortiz@example.com', '6202565706404', 'ajohnston', 'laki', 18, '2024-01-07 08:05:00', '2024-01-07 08:05:00', '$2y$12$oL81sH2/4Z96s126XUcLROSrS7RKNmw6SqsH1.aBwJJccvw6MEoYC', 'pelanggan'),
(599, 'Keaton', 'Farrell', '9185 Brannon Mountain Suite 217\nWest Dayanaborough, MT 10098', 'gerhard.brekke@example.org', '6291650769599', 'brandy.moore', 'laki', 32, '2024-01-07 08:05:00', '2024-01-07 08:05:00', '$2y$12$pWX2/FbsDQZgxryxfCgmOuFsELVw6gScnYOPM8.Z2qvVwh08On7te', 'admin'),
(600, 'Deven', 'Koch', '3045 Anika Cliff Apt. 092\nHaagburgh, NJ 39551', 'wilderman.aniya@example.org', '6279186952367', 'wolff.coleman', 'perempuan', 70, '2024-01-07 08:05:00', '2024-01-07 08:05:00', '$2y$12$zP7vM7Nm3FUsylx.mJBIVuYtMX6mPxUZaE5NwOpmDZ5igbmyhL7qi', 'pelanggan'),
(601, 'Alysa', 'Paucek', '7349 D\'Amore Radial\nPort Reymundo, VT 33435-6065', 'creilly@example.org', '6229060480058', 'coralie.zemlak', 'laki', 50, '2024-01-07 08:05:00', '2024-01-07 08:05:00', '$2y$12$Wr/ach1zH1jACbDnYWSvbefA17k1Ika4XLFDgAGNOpRp9d74VsEEq', 'pelanggan'),
(602, 'Cali', 'Konopelski', '75041 Murazik Way\nDuanefort, VA 22199-9964', 'quitzon.josiane@example.org', '6286966568226', 'rogahn.wilson', 'laki', 66, '2024-01-07 08:05:00', '2024-01-07 08:05:00', '$2y$12$oxyS23DGGYVKY/dNiU3RN.GjFCEzlBDAzGwCmMnvWL2HLVRSRmTiu', 'pelanggan'),
(603, 'Natalia', 'Hettinger', '828 Kilback Valley\nLempibury, WA 46734-9656', 'mills.jadyn@example.net', '6247787975775', 'stiedemann.davin', 'perempuan', 49, '2024-01-07 08:05:01', '2024-01-07 08:05:01', '$2y$12$9H9qNegCsdzUH.3zbhdg4OtTLLpvI6BGVo6EeB4K5JoEd.oBPAKxO', 'pelanggan'),
(604, 'Gus', 'Wolff', '87950 Lubowitz Cliff\nOrtizmouth, IN 05639', 'prosacco.clarissa@example.com', '6257387848715', 'ashly.parker', 'laki', 54, '2024-01-07 08:05:01', '2024-01-07 08:05:01', '$2y$12$pkO6t4avKv1ozlsnf8UmwuixFm6tF6c8i2SfxkUatoSG90VToiK/S', 'admin'),
(605, 'Asa', 'Quigley', '592 Earlene Hills\nModestoview, ID 41813', 'frami.maximillia@example.com', '6291666788605', 'horacio16', 'perempuan', 48, '2024-01-07 08:05:01', '2024-01-07 08:05:01', '$2y$12$IQg/DxxGY54a4N/j5WCCdux5p9AXmBexyLZVyRDxrogOuxr//YU1W', 'pelanggan'),
(606, 'Dessie', 'Witting', '43629 Floy Park\nLake Alanis, UT 11950', 'trycia.witting@example.com', '6267748910507', 'hoppe.ari', 'laki', 39, '2024-01-07 08:05:01', '2024-01-07 08:05:01', '$2y$12$DzkpmdolWOduVLXKuBZN9eo2p5X4da9xiGBH4dwIrPxlPDW4LgRzm', 'pelanggan'),
(607, 'Isai', 'Cartwright', '250 Orn Tunnel\nLake Cordell, ND 17266', 'jena.casper@example.com', '6201879316710', 'arthur.schumm', 'perempuan', 16, '2024-01-07 08:05:02', '2024-01-07 08:05:02', '$2y$12$wC16GbuMc5Bo7I3tEzDnfumzYTe/An5SPhFxbQORvqBxzUfzaPqvm', 'pelanggan'),
(608, 'Mallie', 'Carter', '64066 Lulu Glens\nWest Ashlynn, MI 24644', 'qlebsack@example.com', '6235578817756', 'aylin45', 'laki', 43, '2024-01-07 08:05:02', '2024-01-07 08:05:02', '$2y$12$0SVkJFVk30eZ9UROR81FQO87ROKGfxvyAEqgzgbcdw4WrgT34mnG6', 'pelanggan'),
(609, 'Barney', 'Kilback', '486 Sydney Tunnel Apt. 264\nNorth Ameliastad, WY 08585-3386', 'gilda97@example.net', '6281035566064', 'dreichert', 'laki', 26, '2024-01-07 08:05:02', '2024-01-07 08:05:02', '$2y$12$9baPHdIBPAyB8VomUgcf5ul6pbtR5tBdKHCX5MFWp7aMH/zD6n8Ee', 'pelanggan'),
(610, 'Trisha', 'Ruecker', '7895 Lavon Forest Suite 710\nEast Janieborough, NJ 71980', 'vlangworth@example.com', '6225083927211', 'mabel49', 'perempuan', 66, '2024-01-07 08:05:02', '2024-01-07 08:05:02', '$2y$12$a8kF5liWzZakEifOntqsVu.3mgPzm9b29ZwfynwPlMNdsyVnQEGO.', 'admin'),
(611, 'Deion', 'Gusikowski', '27680 Lind Center Apt. 107\nEast Joesph, DE 25058-1383', 'kathryn.daniel@example.org', '6214632987145', 'elian.lindgren', 'perempuan', 31, '2024-01-07 08:05:02', '2024-01-07 08:05:02', '$2y$12$zNjSLir/1Kw90BZgDBx11eOC5OCCEp5CvLG2LcNrlbje8rqdpQgAS', 'admin'),
(612, 'Frieda', 'Price', '308 Stamm Gardens\nKossview, AL 75608', 'vivien.dicki@example.net', '6227953656161', 'trinity.deckow', 'perempuan', 58, '2024-01-07 08:05:03', '2024-01-07 08:05:03', '$2y$12$LCwunrtoD8UJK5WtyMGZjul4GOhesemfDjEH2UOAnBlN0VogjMX8a', 'pelanggan'),
(613, 'Ivory', 'Kemmer', '20380 Lemke Estates Apt. 658\nSchultzport, WA 18872-7218', 'maci.lehner@example.net', '6274237544841', 'rweissnat', 'laki', 61, '2024-01-07 08:05:03', '2024-01-07 08:05:03', '$2y$12$m9ANPrn8Sp7iYwaR9tyAYe4g6yoFXlzhs2k0BBmt59d8NwAeQbar2', 'admin'),
(614, 'Loy', 'Brekke', '4583 Niko Fields Apt. 469\nWillmsstad, KS 55930', 'kyler.balistreri@example.org', '6246887439935', 'stoltenberg.alex', 'laki', 53, '2024-01-07 08:05:03', '2024-01-07 08:05:03', '$2y$12$twx15RYewD6p0qE3Ik33KOkYWRUTYVPDUkzc6hIzJyAvP6SPE7FYW', 'pelanggan'),
(615, 'Dedric', 'Christiansen', '8191 Maida Causeway\nBertberg, WY 11242-7109', 'sally06@example.net', '6206333058338', 'psteuber', 'laki', 48, '2024-01-07 08:05:03', '2024-01-07 08:05:03', '$2y$12$Pwl5we3iiGELMJZhsfpFUedlXeM2nj7AurtBOElsWub5SnzON2O0q', 'pelanggan'),
(616, 'Stacy', 'Marquardt', '8930 Jaron Lane Suite 759\nStaceyfort, ID 81027', 'yorn@example.com', '6276801188151', 'norval46', 'laki', 62, '2024-01-07 08:05:05', '2024-01-07 08:05:05', '$2y$12$qe4DSMj36Sqj1s547wpMA.qHMoC0Zw6dMnjV4L/yW7giB3wLe4Vya', 'admin'),
(617, 'Kaleigh', 'Ruecker', '45156 Rafaela Landing Apt. 932\nJeffreymouth, RI 48311', 'lavinia.sawayn@example.com', '6201294986241', 'gaylord.greta', 'laki', 44, '2024-01-07 08:05:05', '2024-01-07 08:05:05', '$2y$12$j2LN8y3OxEEACEyyMq0sjuN9.0xi2xeyeDI4jDra43x0dU9RzyEW6', 'pelanggan'),
(618, 'Dejon', 'Lemke', '84955 Turner Shoal Apt. 249\nPacochaborough, GA 16750-8962', 'jreichert@example.net', '6289517764075', 'barton.jadon', 'perempuan', 29, '2024-01-07 08:05:05', '2024-01-07 08:05:05', '$2y$12$HogY8xAFWhq4GJqdHS7HWe87UVCKxHjVPrMO.QjduX7liE4FPaIyK', 'pelanggan'),
(619, 'Donavon', 'Bartoletti', '52472 Austyn Lake Suite 171\nNorth Melvina, WV 00974', 'josh.cummings@example.net', '6257357854531', 'cspencer', 'perempuan', 18, '2024-01-07 08:05:05', '2024-01-07 08:05:05', '$2y$12$iC7C5xKylLa7T/fvmdnmB.gQQYXbnlRrQKb3y6Vvijci3DFfZA0ZW', 'admin'),
(620, 'Deonte', 'Johnson', '31091 Hand Parkways\nKassulkebury, TN 15149', 'frami.florence@example.org', '6290874306095', 'merl92', 'perempuan', 31, '2024-01-07 08:05:06', '2024-01-07 08:05:06', '$2y$12$KPMezcnSh7FwptWJcReF7ORGo2.YA.dklKljUgx6uDwt4vprpEAT.', 'pelanggan'),
(621, 'Ricky', 'Hilpert', '382 Herbert Underpass\nTurcotteville, AR 10953', 'esta.hegmann@example.com', '6210702203861', 'rylan.reynolds', 'perempuan', 30, '2024-01-07 08:05:06', '2024-01-07 08:05:06', '$2y$12$WhkS1iPKEJJinTPFTMALlO5qaCOTZEAWoFwwOW184KCeq3RXQITRG', 'admin'),
(622, 'Twila', 'Braun', '3309 Becker Avenue Apt. 170\nWest Webster, NE 77490-3185', 'ugottlieb@example.com', '6269076191237', 'dillan.grady', 'laki', 53, '2024-01-07 08:05:06', '2024-01-07 08:05:06', '$2y$12$/4bTVL9P1JYKRbH3ol8wN.dK8CM9iBCiEn2bjC4/fwmDQjTKfbsMK', 'pelanggan'),
(623, 'Ivory', 'Williamson', '49757 Demetris Avenue Suite 291\nLake Margarita, OH 61733', 'wolf.zachariah@example.com', '6216593200389', 'xpfeffer', 'perempuan', 53, '2024-01-07 08:05:06', '2024-01-07 08:05:06', '$2y$12$MxHNHtFBHUJxLGfsPC0sauF29XzpHoTm7E7z0.ZAuVezPBFUT3UfC', 'pelanggan'),
(624, 'Nelda', 'O\'Conner', '376 Mann Flat Apt. 475\nKielview, NV 59812-0067', 'quinton57@example.com', '6270879435176', 'kelsi.crist', 'perempuan', 40, '2024-01-07 08:05:06', '2024-01-07 08:05:06', '$2y$12$WkieMSIWRmAd7Z/kukVXYusI0AW0/Qd82ZlGX02CyxVT29L.6zuTG', 'pelanggan'),
(625, 'Kyla', 'Schumm', '26524 Cartwright Road\nPort Trentonport, CA 70130', 'gleason.alfonzo@example.net', '6262865408129', 'roel11', 'laki', 31, '2024-01-07 08:05:07', '2024-01-07 08:05:07', '$2y$12$6q6o/wjdr0E2sQJfe4TNo.kx2W.rFgYYxL0qowJu3CszjtCtuQ6Tm', 'admin'),
(626, 'Issac', 'Watsica', '40749 Pagac Roads\nWest Terrence, NV 87970-9235', 'kassandra74@example.com', '6261699452699', 'keely32', 'laki', 24, '2024-01-07 08:05:07', '2024-01-07 08:05:07', '$2y$12$dwARL4.35dh04r/dCvcGnuJHtk9LNjbnl8U5ARD7Uh9jJt0RkEOQS', 'admin'),
(627, 'Iliana', 'Auer', '70603 Bauch Isle Suite 358\nNew Amandahaven, NH 22768-9319', 'robert.krajcik@example.com', '6208977522842', 'green.harris', 'laki', 30, '2024-01-07 08:05:07', '2024-01-07 08:05:07', '$2y$12$53Kta4L5rxPDppXbdZrCbepeMHeR8ex4pQiNOA7nniiT31bx2qDx6', 'admin'),
(628, 'Angelo', 'Schneider', '84974 Bailey Island\nTrantowburgh, NH 19132', 'drew.wolf@example.net', '6299712552547', 'nola.harvey', 'laki', 40, '2024-01-07 08:05:07', '2024-01-07 08:05:07', '$2y$12$Vmu8EuZnC2A3gNYXlPs.h.r1KqXHokPziK5ThsxXgMQYSRKmFYOkq', 'admin'),
(629, 'Rickie', 'Bartoletti', '20852 Elvie Heights Suite 081\nManteview, ND 05476', 'mozelle25@example.org', '6295814992486', 'kayli96', 'perempuan', 47, '2024-01-07 08:05:07', '2024-01-07 08:05:07', '$2y$12$hDc/X.v8L1EwPxio3.aFG.nYDLVllmldGzu459EL/mnXmWYBUDQ1O', 'admin'),
(630, 'Leone', 'Breitenberg', '559 Tremblay Pike Suite 323\nEmmittfurt, NE 10360-3169', 'dwight.goldner@example.net', '6229920224410', 'amiller', 'laki', 38, '2024-01-07 08:05:08', '2024-01-07 08:05:08', '$2y$12$5ao4dW22WiZ7CnFgVo8Mnuub.xoR2x9lN6BwKrT.LoBRIVi5HdMdS', 'pelanggan'),
(631, 'Roy', 'Schimmel', '84692 Vicky Village Suite 371\nLeuschkeside, WI 67878', 'tyra85@example.com', '6289027005151', 'jasper.jacobson', 'laki', 44, '2024-01-07 08:05:08', '2024-01-07 08:05:08', '$2y$12$ouYW2BTVQgLKn9ju907pt.NxwOrXSsn60zc79JjCIBhbhb7e89XbK', 'pelanggan'),
(632, 'Allison', 'Leffler', '95735 Kristy Neck Suite 328\nEusebioburgh, OK 62023-8201', 'laney47@example.net', '6267203699068', 'daugherty.rylee', 'laki', 19, '2024-01-07 08:05:08', '2024-01-07 08:05:08', '$2y$12$tydGuIJ7bSO16zQGi.SXwO9vqvjtyS51hgjnyH0oNevTDJT7x5DKy', 'pelanggan'),
(633, 'Evalyn', 'Brown', '138 Cruz Shores\nWest Madonnaburgh, CT 23256-9904', 'gkessler@example.net', '6247758093975', 'edmund49', 'perempuan', 37, '2024-01-07 08:05:08', '2024-01-07 08:05:08', '$2y$12$9brLCPXQHQNuJUNaqLlb3eBII.SPm.N1Q/kBkaG2N0dNFdyueMp8O', 'admin'),
(634, 'Delia', 'Stokes', '46327 Ramona Street Apt. 240\nClementinaview, WY 30675', 'fking@example.net', '6272472653549', 'jast.anthony', 'laki', 46, '2024-01-07 08:05:09', '2024-01-07 08:05:09', '$2y$12$niPiK/MVXywZWukYbo./3u5laqL03ycTGEr7smoDhgJ6NXa1m.CMm', 'admin'),
(635, 'Oswaldo', 'Hyatt', '417 Windler Drives\nEast Nedrabury, OR 85873', 'tcrona@example.net', '6226111625844', 'ccummerata', 'perempuan', 57, '2024-01-07 08:05:09', '2024-01-07 08:05:09', '$2y$12$y53a.TKqFMMcM5mq/iQfvO5EhP3vSs6Ag/.CPIGvRy1lR4dLzFNfW', 'pelanggan'),
(636, 'Lonnie', 'Nader', '88918 Aurelia Track Suite 874\nPort Devyn, WV 73160', 'bheathcote@example.net', '6203315589115', 'nico00', 'laki', 52, '2024-01-07 08:05:09', '2024-01-07 08:05:09', '$2y$12$jz5WiCLFm2BFMc687NTAoufWh.SbxwS2SdmG69B0Mw6KQzpeEhC7S', 'admin'),
(637, 'Neil', 'Carter', '1845 Jacques Crossroad Apt. 462\nKerlukehaven, AZ 74137', 'santino74@example.net', '6272116699275', 'retta.romaguera', 'perempuan', 47, '2024-01-07 08:05:09', '2024-01-07 08:05:09', '$2y$12$PkKqRp7ci71lD86TONAfwOrUqcS8F63I1VCUQXwj7YdYtE/E1XwBi', 'admin'),
(638, 'George', 'Dare', '588 Ruthie Road\nOrtizberg, VT 01202', 'brennon.volkman@example.org', '6229379557824', 'gwen.schulist', 'perempuan', 37, '2024-01-07 08:05:09', '2024-01-07 08:05:09', '$2y$12$1VTxnYuc6SHCgPHR7lY5HeDd8oZ/C/JiNO9fsj.ueiiNuFYtcQV/a', 'admin'),
(639, 'Giovanny', 'Mertz', '378 Bruen Walk\nNorth Frankchester, PA 40252-3181', 'dwaelchi@example.org', '6201387065649', 'xrath', 'perempuan', 52, '2024-01-07 08:05:10', '2024-01-07 08:05:10', '$2y$12$w44QXXLgirWKJEzL8jnv8Oi.j35S2NR7QUQ4/pdiqy9xmsh50SIbq', 'pelanggan'),
(640, 'Lucious', 'Hayes', '538 Hills Cove\nDurganmouth, ID 97964-1303', 'lthompson@example.com', '6270262852059', 'kunze.charley', 'laki', 49, '2024-01-07 08:05:10', '2024-01-07 08:05:10', '$2y$12$wkRsWoi7shoIRFJTLkerL.JI3IccikPv6KjJ/UChu/9l30XhSnqwG', 'admin'),
(641, 'Seamus', 'Funk', '31636 Aiden Lock Apt. 397\nSelinafort, SC 17311-9881', 'opadberg@example.com', '6247973576223', 'kelton24', 'laki', 57, '2024-01-07 08:05:51', '2024-01-07 08:05:51', '$2y$12$56PSOptxtSOF2dKXFdqTk.dp/peTZdbr2CHiE15Q9Jg.nS7gRpYnC', 'pelanggan'),
(642, 'Jed', 'Farrell', '8702 Tracy Gateway Apt. 176\nLake Janaebury, CA 70726-0678', 'vstehr@example.net', '6211251922759', 'wshields', 'laki', 51, '2024-01-07 08:05:51', '2024-01-07 08:05:51', '$2y$12$WImphEZ68vhf7.JeC7gx9Ojo.mBAA1RDHSzX1DKF/2t0u.ebPI9tm', 'pelanggan'),
(643, 'Cheyanne', 'West', '88683 Janiya Extensions Apt. 874\nWest Arielle, AK 52094-2690', 'lysanne.barrows@example.com', '6225658822833', 'lavada.nader', 'laki', 56, '2024-01-07 08:05:51', '2024-01-07 08:05:51', '$2y$12$vHV.7vDzPzblTGlVlvkbe.zA4YrLyIp89pVdnygv5skG2FgV3bH1W', 'admin'),
(644, 'Felicity', 'Walker', '51287 Howe Ports\nMichelleville, IN 61686', 'erwin.witting@example.com', '6275004714332', 'adelia03', 'laki', 17, '2024-01-07 08:05:51', '2024-01-07 08:05:51', '$2y$12$Nr990cW4x4S1fLsuirWBwOBllv29bLTtOOAyJQ2/SLtVZiK7ZHrhu', 'admin'),
(645, 'Ryan', 'Harris', '283 Daugherty Ports\nMaurineville, MT 75335-0562', 'scronin@example.net', '6272004874817', 'monserrate13', 'laki', 42, '2024-01-07 08:05:52', '2024-01-07 08:05:52', '$2y$12$LYARFuU78AzBEvJ17EM4IOMEmZl7oZYPDqrgo0xBFuLmJj9hhJ9nq', 'admin'),
(646, 'Dale', 'Leffler', '191 Tania Roads\nNorristown, NH 71434-9439', 'madonna.pagac@example.com', '6257177947422', 'dock04', 'perempuan', 59, '2024-01-07 08:05:52', '2024-01-07 08:05:52', '$2y$12$pi8ONfJL.QeFT72KvLlPReI1Tkq5NXQLhgjczU1.Jc8mUENZJAQuG', 'pelanggan'),
(647, 'Antonina', 'Willms', '10105 Bartoletti Prairie\nPort Ursula, AK 40963-3553', 'dparker@example.org', '6278128035665', 'lbartell', 'perempuan', 17, '2024-01-07 08:05:52', '2024-01-07 08:05:52', '$2y$12$bo6snJY5ZE2/yMDMxIv7veke.QjsWAdcBhfMPXDCIimvJ6bkg1mKa', 'pelanggan'),
(648, 'Merlin', 'Grant', '76456 Jones Cliffs Suite 813\nNorth Dashawn, WA 75176', 'allen86@example.com', '6223168700033', 'dexter94', 'laki', 65, '2024-01-07 08:05:52', '2024-01-07 08:05:52', '$2y$12$St3R6MOu8wKfqCy6aRXiF.M8HsBAlmoyGXpq4h42g.8zeu8EikBHm', 'pelanggan'),
(649, 'Horacio', 'Howe', '94591 Thad Lock Suite 376\nPort Caspermouth, AK 52951-9118', 'mosciski.matilda@example.com', '6246186948256', 'zschinner', 'laki', 50, '2024-01-07 08:05:53', '2024-01-07 08:05:53', '$2y$12$5UnaTTSoteihLHwIjfewUOUh6ws/ADaNUqwmzE4zo6TzLEFcmGNwi', 'pelanggan'),
(650, 'Rahsaan', 'Hane', '698 Winona Spring Suite 287\nLake Moises, WY 47311-5004', 'yadams@example.com', '6238817827926', 'kitty21', 'laki', 33, '2024-01-07 08:05:53', '2024-01-07 08:05:53', '$2y$12$zff6bBfi6od.5rTcW.oT5.0JFJ8cxMOgDG521r4O4D79.Icjn6ZGC', 'admin'),
(651, 'Jayne', 'Pollich', '19612 Zackary Mission\nHillborough, NC 42809-6238', 'econroy@example.com', '6239656479949', 'lkuhlman', 'laki', 48, '2024-01-07 08:05:53', '2024-01-07 08:05:53', '$2y$12$6.Ndwh0clc53G/PQWP/9MONqDEvX3rJYYAhkdWhHN9BWYsJgZcqfy', 'pelanggan'),
(652, 'Abbey', 'Wuckert', '29872 Wunsch Center\nEwelltown, MS 04032', 'ykihn@example.org', '6252089522987', 'willa.boyle', 'laki', 27, '2024-01-07 08:05:53', '2024-01-07 08:05:53', '$2y$12$Tsr08YyByzm7xOoNfy5uAOL0RIr1Mxyr2drhvvq7grPGcXp6TOoTe', 'admin'),
(653, 'Soledad', 'Adams', '648 Carroll Keys Suite 757\nQuintonbury, NE 76797-3712', 'myles.howell@example.org', '6203931550926', 'emiliano33', 'perempuan', 25, '2024-01-07 08:05:53', '2024-01-07 08:05:53', '$2y$12$u./Alex7wFFGh./2C3LHBuJ3ak/MZ6KL9dEIzLvmeelgPudIF8M0e', 'pelanggan'),
(654, 'Brandy', 'Little', '64953 Twila Meadows Apt. 209\nYundtport, LA 56564', 'august09@example.com', '6239557891359', 'dejuan.rippin', 'perempuan', 50, '2024-01-07 08:05:54', '2024-01-07 08:05:54', '$2y$12$JKAV8JM9TXFyQnGwfb6Mh.6MZp1zD7cXtJcdgQtCK8eSZygdur.ae', 'admin'),
(655, 'Bennett', 'Abernathy', '96923 Reuben Mall Apt. 000\nLake Carmen, AK 46936-2325', 'matilda.fisher@example.com', '6243364591281', 'filiberto56', 'perempuan', 60, '2024-01-07 08:05:54', '2024-01-07 08:05:54', '$2y$12$3N1rRg15/21fFC/aJHUyU.UIp3.jrOqQCKqwmdP402kThq7a7eFIm', 'pelanggan'),
(656, 'Kaylie', 'Beatty', '683 Price Expressway\nWest Gregoriaville, NC 17792-8915', 'alberto.donnelly@example.net', '6225993364781', 'gutkowski.lora', 'perempuan', 46, '2024-01-07 08:05:54', '2024-01-07 08:05:54', '$2y$12$GFBvsKdFnr1fCquwwFWrwuadeMlOqWnYOcKLpJz7jQs4anSukuZvC', 'admin'),
(657, 'Darrel', 'Brown', '1990 Jamaal Loaf Suite 848\nAronshire, VT 08402-0126', 'camryn33@example.com', '6201175020897', 'arthur.mohr', 'laki', 52, '2024-01-07 08:05:54', '2024-01-07 08:05:54', '$2y$12$4dM16bGvba.VUlLhDkcn9O1BqHknmgxLpSavDJbLWj1ssBj3YpkYu', 'pelanggan'),
(658, 'Cary', 'Boehm', '6633 Luis Forks Suite 517\nNew Monicashire, SC 43522-9409', 'zhammes@example.org', '6274844311652', 'tkessler', 'laki', 40, '2024-01-07 08:05:55', '2024-01-07 08:05:55', '$2y$12$akt1nbH7m7bBUvGz4rkoPOalaAlNALQbUx9igBCc6tAGjilCd.aYm', 'admin'),
(659, 'Alverta', 'Crist', '5477 Scarlett Circle Suite 002\nHoegerport, RI 22662-6309', 'jhermiston@example.com', '6241905268804', 'talia.durgan', 'laki', 35, '2024-01-07 08:05:55', '2024-01-07 08:05:55', '$2y$12$PPcsMtQ7.yObOshmMSkFmeYCQ3LtKL95as/lS9zt3R3J5Gw0YumL6', 'pelanggan'),
(660, 'Verlie', 'West', '67370 Mervin Lakes\nPadbergmouth, OR 44221-9331', 'tweber@example.com', '6269782909871', 'vwindler', 'perempuan', 27, '2024-01-07 08:05:55', '2024-01-07 08:05:55', '$2y$12$BHpm30XrGYdtYWE7PmnKheoZB3uW6oQL6iAaMFAWWipdMwtUmV6nq', 'pelanggan'),
(661, 'Lillie', 'Morar', '581 Ally Land\nManteburgh, NH 56771-8194', 'dkeeling@example.org', '6259977822897', 'dare.mariam', 'perempuan', 61, '2024-01-07 08:05:55', '2024-01-07 08:05:55', '$2y$12$AQ1FeiQKrRMWhMs1goPS9uCUYjIx6guNRESIbjht558azU6bUVZ7.', 'pelanggan'),
(662, 'Bernie', 'Bernhard', '3469 Mills Wells\nLake Adellhaven, SD 62555-7405', 'jules.harris@example.com', '6200950693047', 'chahn', 'perempuan', 35, '2024-01-07 08:05:55', '2024-01-07 08:05:55', '$2y$12$eP0UE4Y89fhj43Sp1U1rle0krxVTBCoBTjQF8CnyZe2/XYf51E3jq', 'pelanggan'),
(663, 'Micheal', 'Fisher', '650 Barrows Roads\nNorth Rileyville, SC 98245-5815', 'lhills@example.net', '6262238645721', 'ncorkery', 'perempuan', 21, '2024-01-07 08:05:56', '2024-01-07 08:05:56', '$2y$12$Ahw97dwqk4by4p.LqBgqv.2Cb2M.6tJsovr1RXAMHzMnenjNCzqNS', 'admin'),
(664, 'Quinn', 'Goyette', '2092 Aufderhar Plains Suite 454\nLake Enricoland, UT 12068-2671', 'lucious.lebsack@example.net', '6230987551471', 'virginia76', 'laki', 20, '2024-01-07 08:05:56', '2024-01-07 08:05:56', '$2y$12$v/OaTqXUqbhd1w/GnqNB7ei43VZAerv/2G0XeMFgc8ig0UNewUVy2', 'admin'),
(665, 'Mertie', 'Sawayn', '6837 Helen Row Suite 096\nDaltonchester, TN 56660-3166', 'hane.dianna@example.net', '6246409714262', 'julie.borer', 'laki', 42, '2024-01-07 08:05:56', '2024-01-07 08:05:56', '$2y$12$k3GUZnud1DRrHnrCnD3hIuUfSEXhnTBg65z6G8F8HjVTFyjh.2/Bm', 'admin'),
(666, 'Jewel', 'Prosacco', '139 Tremblay Square\nNyamouth, SC 70241', 'murazik.ted@example.net', '6296565858077', 'zgaylord', 'laki', 16, '2024-01-07 08:07:02', '2024-01-07 08:07:02', '$2y$12$jXEUZiShE7NarZqQ8G9LkuC3/12fMtdgKG/Qu03FFEgbDEkHLNwGq', 'pelanggan'),
(667, 'Emile', 'Romaguera', '4562 Koss Curve Apt. 838\nTorreyview, MD 23982', 'araceli33@example.com', '6279606691172', 'crona.burley', 'laki', 35, '2024-01-07 08:07:02', '2024-01-07 08:07:02', '$2y$12$fgzWrl1.oQDk3eOc2VBsrO14/sgwR6eIlig0ZnZJcTVHN0mllb2Fq', 'admin'),
(668, 'Alec', 'Howe', '22059 Jayne Stravenue\nWest Justyn, AR 22306-1613', 'lbauch@example.net', '6243165397278', 'areichert', 'laki', 46, '2024-01-07 08:07:02', '2024-01-07 08:07:02', '$2y$12$OFpHr9/QmnoZhBhhE.icU.rUnxBo5wSfraSamjXsNWFbQcF9o.INC', 'admin'),
(669, 'Nathan', 'Hodkiewicz', '672 Elfrieda Knoll Suite 215\nPort Alfonsoview, SD 91221-8874', 'nwilliamson@example.org', '6280799243831', 'oreilly.elinore', 'perempuan', 69, '2024-01-07 08:07:02', '2024-01-07 08:07:02', '$2y$12$CPGKeCCZFVHZ6pY4xNrpyuE5fPj/9vho.fgsMtmkUF6PFWBUnwRm.', 'admin'),
(670, 'Briana', 'Gaylord', '8127 Thompson Ridge Suite 988\nReichelville, TN 15165', 'cummings.emmett@example.net', '6247051457397', 'faye.yost', 'perempuan', 66, '2024-01-07 08:07:03', '2024-01-07 08:07:03', '$2y$12$.sO1waXH24DR9RAOv2EVguwmBBz0oPpJhZIqrh70.VBSeD0bzOwB6', 'pelanggan'),
(671, 'Hellen', 'Okuneva', '460 Green Isle\nNorth Lonzoville, AZ 29300-5259', 'zkihn@example.net', '6209657147541', 'mireille49', 'laki', 55, '2024-01-07 08:07:03', '2024-01-07 08:07:03', '$2y$12$O15MFZ4biH2QaPa2eJ/UJ.da7xgH23waXV1vprF9RUYvKcDYBWgiW', 'pelanggan'),
(672, 'Myrtle', 'Bogisich', '78586 Rodriguez Groves\nLangworthville, WI 52470', 'dayton68@example.com', '6242490781042', 'jemard', 'perempuan', 18, '2024-01-07 08:07:03', '2024-01-07 08:07:03', '$2y$12$kIUuTaN.ZR9QOeUphrKdjunavP1.usjMN88HTJrcS2F7pPHDZmsZ.', 'pelanggan'),
(673, 'Eda', 'Schroeder', '6951 Annalise Gateway\nDarianberg, WA 86091', 'fritsch.darrel@example.org', '6269108496407', 'paucek.yessenia', 'perempuan', 46, '2024-01-07 08:07:03', '2024-01-07 08:07:03', '$2y$12$pBimniwNdcqz/3jBr95Vn.cxB2I.Hyx/RWNg3HhcBYhHXdKDUprgu', 'pelanggan'),
(674, 'Sim', 'Waelchi', '438 Collier Bridge Suite 822\nDaughertymouth, SC 86685-6892', 'maddison29@example.com', '6287866583243', 'lritchie', 'perempuan', 58, '2024-01-07 08:07:03', '2024-01-07 08:07:03', '$2y$12$jJyhN6pmogobC2mPkeAA0O.e7tVTF16/sbi2208ShWeoGz/ZVSsES', 'pelanggan'),
(675, 'Violette', 'Auer', '3845 Patsy Camp Suite 276\nPort Flossie, MI 27681-2396', 'achristiansen@example.net', '6272274532779', 'corwin.deontae', 'perempuan', 53, '2024-01-07 08:07:04', '2024-01-07 08:07:04', '$2y$12$xwtUoEqhsFaYu2wdYo36WOxEy0HuDzecj9ovKFp0Agl6rWm.PoITC', 'pelanggan'),
(676, 'Salvador', 'Kuhic', '959 Icie Shoals Apt. 212\nNorth Emmanuelle, IN 34505-2647', 'wiza.lucio@example.com', '6294542993281', 'gutkowski.jules', 'laki', 65, '2024-01-07 08:07:04', '2024-01-07 08:07:04', '$2y$12$8LFusKwxZX5WxtJv4RX1eefLeRNZKIth2h5En92xJEBGIhO.APaWa', 'pelanggan'),
(677, 'Keshaun', 'Kunze', '61575 Smith Street\nDariusview, NJ 73998-9098', 'shirley91@example.org', '6227480792174', 'lemke.fausto', 'perempuan', 25, '2024-01-07 08:07:04', '2024-01-07 08:07:04', '$2y$12$D4l8Ug6tIqW/BMGnOt2/puGUdSyQnI/gr2KammNTK/NbHbJ4qboVy', 'pelanggan'),
(678, 'Cyril', 'Blick', '5157 Ernser Road Suite 640\nWest Adaport, LA 35375', 'pwolff@example.org', '6285977947241', 'rhea29', 'laki', 61, '2024-01-07 08:07:04', '2024-01-07 08:07:04', '$2y$12$NC5AADRdK0yRBBUDkfuFnuGvVvQVB2V.C01g8OVXTMgvzTYql44Q2', 'pelanggan'),
(679, 'Karen', 'Witting', '152 Sophie Ridge Suite 897\nNew Estellbury, MD 36093', 'marcia92@example.com', '6294255192539', 'vstroman', 'perempuan', 41, '2024-01-07 08:07:05', '2024-01-07 08:07:05', '$2y$12$.1Hxa4Jvq268YzoKklDSYOP6agDg/ALQTfvgGAlyKuVmvJ9I3MtMC', 'admin'),
(680, 'Hoyt', 'Parisian', '8340 Willms Plains Suite 507\nSouth Michaela, SC 62282-0222', 'harold.stracke@example.org', '6224604201149', 'laverna.torp', 'perempuan', 36, '2024-01-07 08:07:05', '2024-01-07 08:07:05', '$2y$12$2fDIhbM6OSX9ICts6pzA0.dcahqyMWmEXRyg3k/q7djLEB.y9VBlW', 'pelanggan'),
(681, 'Reuben', 'Leannon', '66256 Gregory Streets\nLake Ola, MN 67242', 'glover.flo@example.org', '6296790346734', 'brennan.boyer', 'laki', 28, '2024-01-07 08:07:05', '2024-01-07 08:07:05', '$2y$12$9ZgXvSzx1ecUBbf5YHreS.CC46S1TLNqbfFPLIGfqv6zzmGwBJtd6', 'admin'),
(682, 'Darrel', 'Turcotte', '4381 Hailey Groves\nMariemouth, AK 31270-4396', 'ansel78@example.com', '6277784558418', 'bruen.kian', 'perempuan', 36, '2024-01-07 08:07:05', '2024-01-07 08:07:05', '$2y$12$P9jg647wb28.UpfSh7BatOSCYxtW5LeR4JL5aIRQvsVwpHG7t3QqC', 'admin'),
(683, 'Lafayette', 'Stiedemann', '167 Ralph Villages Apt. 111\nHenristad, OH 31897-6337', 'ymarquardt@example.com', '6262310109066', 'jeffry.walter', 'laki', 67, '2024-01-07 08:07:05', '2024-01-07 08:07:05', '$2y$12$PH9OKr0ME3gm4u9wDeZON.fWsPsRpT15n8LMuS//oOaABC/zm3bl.', 'admin'),
(684, 'Tyreek', 'Keeling', '49433 Watson Creek\nNew Isaac, OK 57406', 'fkautzer@example.org', '6275471124050', 'kiehn.hanna', 'laki', 43, '2024-01-07 08:07:06', '2024-01-07 08:07:06', '$2y$12$WCeCMkBCeEvOWgR4rML6VOrxRb9sL/awfv4o2FSJixjQHdSSqnXBa', 'admin'),
(685, 'Jovany', 'Herman', '3920 Williamson Mountain\nWest Miguelborough, OH 60616-6499', 'luettgen.javon@example.net', '6289062159519', 'dannie.anderson', 'perempuan', 18, '2024-01-07 08:07:06', '2024-01-07 08:07:06', '$2y$12$7qpTVC7HCdV9cYd08k3te.EiLQpgQZ3AftNAw/beJtgLMBmNOdnuG', 'admin'),
(686, 'Maymie', 'Grimes', '74045 Maximus Drive Apt. 081\nNorth Milanbury, MS 42421-9545', 'jaleel19@example.net', '6294468609781', 'serenity48', 'laki', 36, '2024-01-07 08:07:06', '2024-01-07 08:07:06', '$2y$12$YagaAdMC76V5TDH2h25Ov.SyGum2wBqISyU0knK.90XWwS04j7Br2', 'pelanggan'),
(687, 'Izaiah', 'Conn', '4980 Renee Station Apt. 559\nNorth Lonny, WA 12097', 'omohr@example.org', '6261251696972', 'towne.darron', 'laki', 23, '2024-01-07 08:07:06', '2024-01-07 08:07:06', '$2y$12$1v5nTe6/6em5lUMaDOagruYkdfl5OlJsfkMaWdQLwWZG1cjxKnseC', 'pelanggan'),
(688, 'Enola', 'Kuhn', '449 Dean Point\nLake Tate, AR 98515-5076', 'karlie.kiehn@example.org', '6213286836617', 'hazle.greenholt', 'perempuan', 43, '2024-01-07 08:07:06', '2024-01-07 08:07:06', '$2y$12$SRXCQp2qwlukcDfnQVvFoO3PdgOhi8WZytzC3nQn0Q4X1EPyK.Osm', 'admin'),
(689, 'Sherman', 'Pacocha', '8774 Shanahan Circle Apt. 131\nSauerburgh, SC 62282', 'fabernathy@example.org', '6292684906015', 'dietrich.rodrick', 'perempuan', 47, '2024-01-07 08:07:07', '2024-01-07 08:07:07', '$2y$12$ndL1ei1j4v9TEjeRA1.Npeu5EGIJow6lT/f4LGHO3O0mNpLP2b6H6', 'pelanggan'),
(690, 'Desmond', 'Hill', '34848 Kutch Coves Apt. 164\nDaishaport, NE 76926', 'colton.rowe@example.org', '6294034975106', 'yhickle', 'perempuan', 43, '2024-01-07 08:07:07', '2024-01-07 08:07:07', '$2y$12$lvefJ9PcDi7RU5sf4B3rAOceFhirS2UhAnDyTsP1ysYDsvbaahiAK', 'pelanggan'),
(691, 'Andreane', 'Hettinger', '18206 Stroman Common\nSouth Hailieland, IN 92931', 'blick.hosea@example.com', '6299921979465', 'randy34', 'perempuan', 60, '2024-01-07 08:07:49', '2024-01-07 08:07:49', '$2y$12$5yOlfERW6RYtSpQpOSn.EORSSeDeD3kioc.1cqnyZjw8/9MIWSFgu', 'admin'),
(692, 'Amina', 'Hayes', '40217 Malinda Shore\nElouisefurt, PA 37100', 'ada.rice@example.org', '6276596841400', 'nelda62', 'laki', 28, '2024-01-07 08:07:49', '2024-01-07 08:07:49', '$2y$12$OCU.mb7boyY35Xo474KgCO5seSZMVCyHcb93HmV4xFuFMfedttf5e', 'admin'),
(693, 'Vivienne', 'Considine', '610 Lockman Lakes\nSouth Joshuah, CT 43193', 'michale56@example.com', '6210265881570', 'kertzmann.durward', 'laki', 27, '2024-01-07 08:07:49', '2024-01-07 08:07:49', '$2y$12$IZFnjWaH0WWQYEbeeXP36uP4Fowd62tiSp1woNqz9zsc7Rsx2frO.', 'pelanggan'),
(694, 'Lazaro', 'Lind', '34100 Mayert Forges\nPort Collin, MO 62523-5402', 'mohr.pink@example.com', '6279594031865', 'bblick', 'laki', 18, '2024-01-07 08:07:50', '2024-01-07 08:07:50', '$2y$12$ks5BrruXwRdY/PSRX.GlneJe0PY7I2r2cquVK5gUN35EpRCZRif02', 'admin'),
(695, 'Lou', 'Bode', '468 Skyla Ports Suite 256\nGleasonstad, CO 00973', 'nyah98@example.net', '6202299684794', 'moriah53', 'laki', 27, '2024-01-07 08:07:50', '2024-01-07 08:07:50', '$2y$12$pAgAJPY42MEpil4kCS0CjOrImGeKNh42n6Br4hU3iu7mkBMF6E3hW', 'admin'),
(696, 'Stewart', 'Cummings', '6428 Kailey Court\nKhalidview, AR 16148-1258', 'ansel18@example.com', '6279125697011', 'herminio68', 'laki', 46, '2024-01-07 08:07:50', '2024-01-07 08:07:50', '$2y$12$pwWhU283.FNMdEU42ZZWuOwWQtNldyXUVyXFRr3/w.ZJYP5L5wXnm', 'admin'),
(697, 'Collin', 'Mertz', '71554 West Stravenue Apt. 940\nAstridfurt, NJ 35530', 'xwitting@example.com', '6285818045086', 'meaghan.ledner', 'laki', 36, '2024-01-07 08:07:50', '2024-01-07 08:07:50', '$2y$12$ydkd8r8q6rTup0Ng5LkoROOEsi6NHIOjvibv8DOp698z9t2cckzXO', 'pelanggan'),
(698, 'Junior', 'Lebsack', '481 Lora Knolls Apt. 594\nLeolaside, OK 79305-2212', 'rhomenick@example.net', '6261608386976', 'smitham.dorothea', 'perempuan', 29, '2024-01-07 08:07:50', '2024-01-07 08:07:50', '$2y$12$Q0PINvjE8Py2awlAhoQi9OJ71ZhQJfvOavvqzDxw/JHdeei/Yxphu', 'admin'),
(699, 'Willard', 'Carroll', '5448 Quigley Harbors Apt. 901\nJohnsberg, WY 28756', 'soledad34@example.org', '6287124026749', 'wuckert.hermina', 'perempuan', 25, '2024-01-07 08:07:51', '2024-01-07 08:07:51', '$2y$12$9di9yqJoHMrnv508JDwO0.gNbbkuy.y1HpzFLW3hHxTdvQ/gfGdAa', 'admin'),
(700, 'Milton', 'Nader', '22483 Rosanna Summit Apt. 000\nNorth Zolaville, OH 55556-0287', 'cortney34@example.net', '6266448985626', 'pkonopelski', 'perempuan', 52, '2024-01-07 08:07:51', '2024-01-07 08:07:51', '$2y$12$71oSvrF9WrpmpbnAC0joje/DaYP4.GRYgkJ.gvRgXPfUOCxQswFU2', 'pelanggan'),
(701, 'Gertrude', 'Frami', '240 Larry Stream\nGorczanyfurt, AK 52452-3832', 'littel.shyanne@example.net', '6298190661416', 'lilian46', 'perempuan', 29, '2024-01-07 08:07:51', '2024-01-07 08:07:51', '$2y$12$8qG75kescdwmFnsGMF7qou60yPH66ZfrUUWuSirHyXxMqQG2h88oK', 'pelanggan'),
(702, 'Blanche', 'Bailey', '7525 Morissette Course\nStromanmouth, OK 43833-8620', 'ybode@example.net', '6235335634861', 'dustin.crooks', 'perempuan', 28, '2024-01-07 08:07:51', '2024-01-07 08:07:51', '$2y$12$EF6maBHA8aY5BNC1RnTYx.GJPhpWzMqWxOgv1tibxoKtTRHpxfpI2', 'admin'),
(703, 'Gwen', 'Kuhn', '3510 Jaleel Mount\nPort Rosarioport, VT 48759-8529', 'aschamberger@example.org', '6259050363212', 'dooley.beryl', 'laki', 17, '2024-01-07 08:07:52', '2024-01-07 08:07:52', '$2y$12$wW0u.OhfYMQ2AOMfoM6Ni..F4nwWeeEjfZeultITUOWIHT9q2pmuy', 'pelanggan'),
(704, 'Zander', 'Durgan', '646 Parker Hollow Apt. 217\nElmirastad, WV 78819', 'fkunde@example.org', '6257667889392', 'qhickle', 'perempuan', 30, '2024-01-07 08:07:52', '2024-01-07 08:07:52', '$2y$12$0FRGqNuZ3niW58iU0ue1GuuTQQcRyRjUVfre/yj2TxydS94utQ5cC', 'admin'),
(705, 'Torey', 'Osinski', '9312 Nelle Dale Apt. 939\nPort Cleveland, HI 37116-1268', 'nrohan@example.org', '6269842888564', 'cordie88', 'laki', 49, '2024-01-07 08:07:52', '2024-01-07 08:07:52', '$2y$12$9ZtryDndzgctQrfbPtcrhukDVoAIwxMoFu9H7YbCm88iMrEloLD86', 'pelanggan'),
(706, 'Guy', 'Greenfelder', '8943 Crist Falls Suite 925\nPort Lavonfurt, NY 67843', 'sdibbert@example.org', '6250873322056', 'rdavis', 'laki', 24, '2024-01-07 08:07:52', '2024-01-07 08:07:52', '$2y$12$XcY4Fkn5aWkK2pJBYvST6O88nxBlDvJ6XQACK7qP6/GqhU4WGR.Wm', 'admin'),
(707, 'Emelie', 'Collier', '322 Bernhard Wall\nSouth Dollybury, WY 77099', 'mason92@example.net', '6291864172246', 'lesch.joanne', 'perempuan', 36, '2024-01-07 08:07:52', '2024-01-07 08:07:52', '$2y$12$k69PCp9MtYLAQ2h8X8sE4OQBioonFXJNTdVNDuAfqMeDkCxGFtS9i', 'admin'),
(708, 'Angus', 'Aufderhar', '86616 Simonis Burgs Suite 813\nStiedemannberg, TX 94533', 'rgleichner@example.com', '6244582392442', 'green.ocie', 'laki', 29, '2024-01-07 08:07:53', '2024-01-07 08:07:53', '$2y$12$096AXV4WtSppcKbVVr4Q8eV1/aPBh3oRlPh3LqxnjIv.MJulAm1Su', 'admin'),
(709, 'Kacey', 'Stiedemann', '46893 Cole Unions Suite 859\nNew Tavares, NY 01518-9089', 'elbert90@example.org', '6237293720857', 'morissette.jalyn', 'perempuan', 39, '2024-01-07 08:07:53', '2024-01-07 08:07:53', '$2y$12$yjrTLJsps8PfsbFF3MUcRuqZ5tlmNKcTXOYaJ4zwY8kjlbWHvZWSG', 'pelanggan'),
(710, 'Rosalia', 'Wintheiser', '526 Gerhold Mission\nMillieland, IN 48667-4518', 'vyost@example.com', '6226028147274', 'cecelia80', 'perempuan', 27, '2024-01-07 08:07:53', '2024-01-07 08:07:53', '$2y$12$hZ/Guj1Sn/oPDYFy8FsVuuVwC0kZqS9npy/quN5L.w9.1xBLSXH5e', 'pelanggan'),
(711, 'Arne', 'Luettgen', '1408 Rashawn Extensions Suite 629\nDanialstad, KS 78654', 'wintheiser.jan@example.com', '6285488358138', 'xfeil', 'laki', 67, '2024-01-07 08:07:53', '2024-01-07 08:07:53', '$2y$12$hWBtSuQFrQqEzGcG.GLl8OHsleT1u9AayEij61AXmAjensMGy8fMe', 'admin'),
(712, 'Vesta', 'Jacobs', '6549 Mayer Throughway Apt. 887\nWest Gilda, NC 42130-3058', 'rempel.fermin@example.net', '6270916626789', 'gertrude.bayer', 'laki', 22, '2024-01-07 08:07:53', '2024-01-07 08:07:53', '$2y$12$7BgqdDIJQ0hUAbhQZTN5P.fNJ5hP2LJsr80nTHkwSEib5n.QouJPi', 'pelanggan'),
(713, 'Jeremie', 'Prosacco', '6755 Kling Shore\nJakubowskichester, ME 96310-8736', 'arne89@example.com', '6222694047601', 'adolphus.haley', 'laki', 38, '2024-01-07 08:07:54', '2024-01-07 08:07:54', '$2y$12$tA0M4pxtDy/f1Bo07N0YuuJ.nucq/k8.KJiv1dGKwln4HXtDUPUWu', 'admin'),
(714, 'Jasmin', 'Eichmann', '56762 Marcella Burgs\nEast Sean, MS 64759-2914', 'tremblay.marlin@example.org', '6270983196015', 'greta86', 'laki', 48, '2024-01-07 08:07:54', '2024-01-07 08:07:54', '$2y$12$JipKt2SjBELpoqhuE5lqoO2KRQYAlO1/QpdT8rJmeVO0.rqI1PXsi', 'admin'),
(715, 'Lura', 'Gusikowski', '629 West Parkways Apt. 203\nWuckerttown, MN 73647-6003', 'kbogisich@example.com', '6224365436706', 'kfunk', 'perempuan', 17, '2024-01-07 08:07:54', '2024-01-07 08:07:54', '$2y$12$7bv.T9q3/6mLUM3BH4EF4eATEhB4CkfDgBvTmzXggqmYSxQ0FRUa.', 'admin'),
(716, 'Paris', 'Walsh', '9708 Julian Cape\nWest Abelmouth, NY 35506', 'lori23@example.net', '6236694267811', 'jhudson', 'laki', 32, '2024-01-07 08:08:20', '2024-01-07 08:08:20', '$2y$12$rPYTHWIC.w4vIebI3kICBuxWqu2wdqW1qRbx/86t7H7xTgzsJule.', 'pelanggan'),
(717, 'Hester', 'Pfeffer', '680 Marvin Locks\nPort Mollie, AR 34721', 'sipes.katrine@example.org', '6287602814891', 'yroob', 'perempuan', 39, '2024-01-07 08:08:21', '2024-01-07 08:08:21', '$2y$12$Mz3.XnytHjk/z7vQC.aZEO4SdUbpwaYqXJTrecuB7gjfOyzHhYKjG', 'admin'),
(718, 'Candelario', 'Dietrich', '28321 Yadira Overpass\nSouth Nickolas, CT 82445-0388', 'urohan@example.org', '6265472431619', 'roslyn33', 'laki', 54, '2024-01-07 08:08:21', '2024-01-07 08:08:21', '$2y$12$1Cdv8xfGeh9TtMrFM.2XlepR7oIr/StYyvwleHWjbZ1VVuv.7.Sp6', 'admin'),
(719, 'Jaylen', 'Deckow', '64260 Heller Lodge Suite 625\nKorybury, KS 76807', 'cristian.lockman@example.com', '6275203230812', 'murray.kenyatta', 'perempuan', 67, '2024-01-07 08:08:21', '2024-01-07 08:08:21', '$2y$12$ASPQ9cpOSisPRHSLDwIXZeYlROU8lqhneHHv7IY5oMHP2rfbPX.Gi', 'admin'),
(720, 'Darlene', 'Towne', '3531 Pierce Circles Apt. 680\nLake Barrettfort, WI 07711', 'vwuckert@example.org', '6272802229341', 'ila.walker', 'laki', 18, '2024-01-07 08:08:21', '2024-01-07 08:08:21', '$2y$12$OLDhnauEBSfArgByP1jVwuwGLVbY3u/dGF.Trce0zKEZazRE2/WT2', 'pelanggan'),
(721, 'Grady', 'Mraz', '995 Upton Garden Apt. 163\nCaspershire, VT 43043', 'lester.herman@example.org', '6291994542243', 'alvah.von', 'laki', 48, '2024-01-07 08:08:22', '2024-01-07 08:08:22', '$2y$12$UkGtMhXpiXQpWKNYv0hyduLOR4kDkGy/ETI/f9ryO4NcODro.a9nW', 'admin'),
(722, 'Michele', 'Klein', '2529 Monte Neck Apt. 385\nNew Andresberg, TN 37966-8376', 'cleve89@example.net', '6233222525687', 'gaston.koepp', 'perempuan', 36, '2024-01-07 08:08:22', '2024-01-07 08:08:22', '$2y$12$9b3JsXRmGoKJscOSGDDQzec00jSpeOxrRpMwO8B5mkb.ZRnGTYuOO', 'admin'),
(723, 'Elisa', 'Pouros', '752 Bogisich Motorway\nMargaretefort, NJ 29698', 'jthompson@example.com', '6266875014684', 'barton.dawn', 'laki', 41, '2024-01-07 08:08:22', '2024-01-07 08:08:22', '$2y$12$uKgXfmbKdNQCXddYGQ.3nOEalVw5IoY3gZw5o060AVgmBqdsyJUBW', 'admin'),
(724, 'Vivian', 'Schulist', '395 Abshire Route Suite 765\nPort Ottilie, VT 40408-5407', 'elisha.sauer@example.com', '6255414129087', 'eboyer', 'laki', 15, '2024-01-07 08:08:22', '2024-01-07 08:08:22', '$2y$12$z26rNWPWlpL1rb22fLrDgOZBNRPVkOnVBUbFIU1hSyP92Fv4zvBZK', 'pelanggan'),
(725, 'Shanie', 'Casper', '910 Adolphus Groves\nNikolausland, NE 62248', 'kcruickshank@example.net', '6274823045016', 'haley.virginia', 'laki', 16, '2024-01-07 08:08:22', '2024-01-07 08:08:22', '$2y$12$1tjbwXYmFRMqSoVyb343p.U/don9WFFxZ0JFiseQLaedSYMFqmB3C', 'admin'),
(726, 'Fausto', 'Weimann', '4598 Boyle Prairie\nSouth Destineyview, DC 76902', 'bailee16@example.com', '6272361996729', 'gage76', 'perempuan', 67, '2024-01-07 08:08:23', '2024-01-07 08:08:23', '$2y$12$zipn5yixpeimzw54GHmQKec3dhNlGQCOcinAA9XyFN8meGx2foLN2', 'pelanggan'),
(727, 'Maureen', 'Stokes', '702 Grimes Avenue Apt. 789\nGrahamview, TX 96070-6744', 'vpredovic@example.net', '6209146859041', 'herminia13', 'laki', 23, '2024-01-07 08:08:23', '2024-01-07 08:08:23', '$2y$12$U2/aH16txticKYgGv/rbk.lE0sRyrR1i2y08u5S4sdJJVnzfVOAUe', 'admin'),
(728, 'Alphonso', 'Frami', '91024 Fred Cape\nNew Cristinaport, SC 02650-7869', 'ernestine.greenfelder@example.net', '6258211396654', 'vluettgen', 'laki', 19, '2024-01-07 08:08:23', '2024-01-07 08:08:23', '$2y$12$PpgA2Re3Hi/Qn6u2nqduKeE6FdXQ1h4ZuSGteRXPnLNw5up6MVy3.', 'admin'),
(729, 'Darius', 'Feil', '18072 Tremaine Parks Suite 300\nLake Garfieldport, NE 67409-9775', 'russel.cole@example.net', '6217887744470', 'carey.keeling', 'laki', 45, '2024-01-07 08:08:23', '2024-01-07 08:08:23', '$2y$12$r/RAeqb/LGEGq/sExGYslebCxFckvhwM55qv//swFaliCoceNP5Ne', 'admin'),
(730, 'Fidel', 'Will', '33245 Pasquale Dam\nNorth Lila, MD 34557-6737', 'humberto.harvey@example.net', '6299145711810', 'kacey.bartell', 'perempuan', 46, '2024-01-07 08:08:23', '2024-01-07 08:08:23', '$2y$12$ZHUIMMzQ44pnTdHIrxEFveYRPRaeH6KeNJ0WBlhY.srcYZZA1mf8a', 'pelanggan'),
(731, 'Norwood', 'Rice', '735 Hickle Parkway\nRogahnfurt, KY 02485-9140', 'zwolff@example.org', '6232586640364', 'hintz.alessandra', 'perempuan', 50, '2024-01-07 08:08:24', '2024-01-07 08:08:24', '$2y$12$3iCJ5FhjVx63bY2oQIo0JuHE3T602NRrwn9US9tJhIBbpH4G78ijO', 'pelanggan'),
(732, 'Hanna', 'Powlowski', '5178 Drake Views\nStoltenbergview, OH 47372-5974', 'mleannon@example.com', '6244513946580', 'rebeka62', 'perempuan', 16, '2024-01-07 08:08:24', '2024-01-07 08:08:24', '$2y$12$Dul8CAgtJmMr4CgwCIMpXeKK1ql.xZPh0LQ3xURDW8NAXPrVhnfJi', 'admin'),
(733, 'Erica', 'Gleason', '714 Dayton Forest\nLake Jarod, DE 01529', 'zgibson@example.com', '6275381849798', 'della.conn', 'perempuan', 36, '2024-01-07 08:08:24', '2024-01-07 08:08:24', '$2y$12$1uZ.LSXEaM25AcZK1paU2.ap6mI1WkuXvv570ddmOc1k/n43JUluG', 'pelanggan'),
(734, 'Camren', 'Schultz', '710 Nader Divide\nKarlimouth, CT 88323', 'bryon.lakin@example.net', '6255172002146', 'amelia20', 'perempuan', 68, '2024-01-07 08:08:24', '2024-01-07 08:08:24', '$2y$12$gylO4pVretZetGkIy8qdwO04qB.01Uq0ngtqwJcjx1DWYDP1duPKO', 'pelanggan'),
(735, 'Savannah', 'O\'Reilly', '615 Jeramie Motorway Apt. 370\nAracelyborough, ND 23715-9694', 'cwilderman@example.org', '6246653999754', 'xparker', 'laki', 45, '2024-01-07 08:08:25', '2024-01-07 08:08:25', '$2y$12$HV1v1MGOijyrs9W/ysXSZeWuL6lkFOBCxtcOaxG0i8cYAFiHjQa/u', 'pelanggan'),
(736, 'Monique', 'Legros', '29313 Pfannerstill Estates Apt. 947\nUllrichchester, IN 41225', 'dicki.eva@example.com', '6215622895997', 'claudie.mante', 'laki', 37, '2024-01-07 08:08:25', '2024-01-07 08:08:25', '$2y$12$2aaOalnuFYoMCHxf8SvwAODNkB4qdbIxVgIkxN15EDUNVhpX9fORG', 'pelanggan'),
(737, 'Arjun', 'Russel', '56332 Kelvin Station Apt. 524\nSydneemouth, OH 01602', 'iparisian@example.com', '6238514625633', 'eldridge39', 'laki', 48, '2024-01-07 08:08:25', '2024-01-07 08:08:25', '$2y$12$PZIxAPyetLZ/17W1br/SkeHdMRlUTiVYobppW1MIjvTDgdjJSBfEq', 'admin'),
(738, 'Efrain', 'Veum', '975 Nikolaus Stravenue Apt. 319\nCormierborough, CT 70720', 'natasha.williamson@example.com', '6236326711856', 'kelley.goyette', 'laki', 60, '2024-01-07 08:08:25', '2024-01-07 08:08:25', '$2y$12$UiyaYv40RT0ZrM.P9LD.FeUyPYXweh.zAsGlmzC5/BoINw5CESfxG', 'pelanggan'),
(739, 'Houston', 'Rath', '37455 Walsh Point Suite 062\nAntonettabury, PA 34880', 'dangelo.towne@example.com', '6200877219149', 'corkery.stanton', 'perempuan', 26, '2024-01-07 08:08:25', '2024-01-07 08:08:25', '$2y$12$iyXVM/D.O2LwP3GKMve4dOdI/2BKDQcU03XQBMKBzalkhuZWD6OGO', 'admin'),
(740, 'Cassidy', 'Wehner', '63496 Carmela Mill Suite 859\nDaremouth, PA 71346-5771', 'jessy59@example.com', '6238243897993', 'emiliano60', 'perempuan', 38, '2024-01-07 08:08:26', '2024-01-07 08:08:26', '$2y$12$W7wQpJjlv5BJMHaqFlGQ0.iKyR2e0QRMem2l2ITVBP/7Bah/FBaxK', 'admin'),
(741, 'Mable', 'Mraz', '2113 Uriel Port Suite 180\nWest Candido, AR 91494-3288', 'kschimmel@example.net', '6202104867827', 'humberto.kuphal', 'perempuan', 33, '2024-01-07 08:09:48', '2024-01-07 08:09:48', '$2y$12$frPTagU/tJ6TbIbbhEODz.kX6B6qLbAdEGDHtxNhOSPYJbKLRTNae', 'pelanggan'),
(742, 'Broderick', 'Schultz', '436 Cremin Canyon Suite 082\nNew Blanca, AK 33283-1011', 'crooks.lauretta@example.com', '6296364441575', 'jovany51', 'perempuan', 59, '2024-01-07 08:09:48', '2024-01-07 08:09:48', '$2y$12$MMEvB/C4hR/3dzlEhNghZumIXKJqoVHbZv93mdDeUCxEFWt/oeIK.', 'admin'),
(743, 'Ignatius', 'Gottlieb', '90017 Darwin Drive\nNorth Alexane, WA 46185-7413', 'beatrice87@example.org', '6291756753280', 'herzog.orie', 'laki', 53, '2024-01-07 08:09:48', '2024-01-07 08:09:48', '$2y$12$7wVgKYJw87VMeu/HCRwaA.qiCJayX4ak6G8Bl/bfV/cRV9TRXqaKK', 'pelanggan'),
(744, 'Cameron', 'Heathcote', '216 Rossie Mountains\nLaurieshire, AR 43693-9276', 'williamson.elissa@example.com', '6242444643424', 'nelle41', 'laki', 28, '2024-01-07 08:09:48', '2024-01-07 08:09:48', '$2y$12$6weTu0.lcdhGjlc25zD21OGRBpVSXh639Avs38ZaUnXI6EttUgAs6', 'pelanggan'),
(745, 'Toy', 'Conn', '469 Beahan Loop\nEmmaview, OH 30674-2126', 'felicita34@example.com', '6290410204872', 'fkuhn', 'laki', 69, '2024-01-07 08:09:49', '2024-01-07 08:09:49', '$2y$12$Aa9Ye2fEa4.lBzTBmcHxL.1aOvA44VqaFZX0hRX.dltu83LyLBX.C', 'pelanggan'),
(746, 'Reed', 'Wilderman', '582 Devin Common\nJacobibury, OK 50897', 'shayna.windler@example.net', '6227124670466', 'marilie.sawayn', 'laki', 63, '2024-01-07 08:09:49', '2024-01-07 08:09:49', '$2y$12$tn0DnFk9JYN8tFfgLcTG6uQ/ZqAXj8fjcGhLM2WgSu5WuMSIgfwG2', 'admin'),
(747, 'Marjory', 'Gerlach', '1166 Trace Causeway\nHettingerbury, NM 23221', 'dibbert.dorian@example.net', '6239736620593', 'camilla52', 'perempuan', 20, '2024-01-07 08:09:49', '2024-01-07 08:09:49', '$2y$12$m0us/QaxJZe8hycx2lQIkedRlQwhj36ixPgsyCRGXsP70vQKYpMwi', 'admin'),
(748, 'Mohamed', 'Corkery', '8546 Renee Path\nNorth Mireillemouth, CO 42655-5407', 'christy.reichel@example.com', '6229730370814', 'sanderson', 'perempuan', 51, '2024-01-07 08:09:49', '2024-01-07 08:09:49', '$2y$12$5lnkjxm80OdnGvL/fbUTTujqDbykNinhEcDVKVh1.JoM1YOG.IHwi', 'admin'),
(749, 'Alexandrea', 'Waelchi', '43010 Kavon Tunnel Suite 433\nWest Ayanaburgh, VT 49784-2291', 'howe.buck@example.com', '6233763588985', 'destiny.wiegand', 'perempuan', 36, '2024-01-07 08:09:50', '2024-01-07 08:09:50', '$2y$12$L2s5dhll/qUEG1Q0wlfXb.gR.ZD5ESrYx5ggioQqBaUw81xp/sJLK', 'admin'),
(750, 'Monty', 'Volkman', '82872 Orlo Ramp Suite 111\nNevafort, HI 67961-4991', 'bethany82@example.net', '6287907245407', 'hill.lori', 'laki', 32, '2024-01-07 08:09:50', '2024-01-07 08:09:50', '$2y$12$nBOpJa25ziMn4.RSn6TAIOk3f58CSI.QUKbWXe5a/z9ka7dD9kTTG', 'admin'),
(751, 'Tyler', 'Shanahan', '37283 Champlin Forges\nKleinside, FL 42832-9804', 'qsatterfield@example.org', '6292444254090', 'nicole.haley', 'laki', 59, '2024-01-07 08:09:50', '2024-01-07 08:09:50', '$2y$12$yoA/m2IWhM84tBCwURLHseK5fvDWkibW4KzALHqhQtZdlT75GW4FG', 'admin'),
(752, 'Anthony', 'Schulist', '5297 Myles Tunnel Suite 558\nMcKenziehaven, TX 13925', 'arvilla85@example.net', '6225368781124', 'bmayert', 'perempuan', 32, '2024-01-07 08:09:50', '2024-01-07 08:09:50', '$2y$12$BmvCTfXSaZBMWy/PaTvr4ORCT3aCkaQcC1cmlDzVMBazKczeaCOX2', 'pelanggan'),
(753, 'Florida', 'Purdy', '1304 Casper Row Apt. 997\nCronaberg, DE 62744-0305', 'rodriguez.elbert@example.com', '6227313684846', 'ccole', 'laki', 57, '2024-01-07 08:09:50', '2024-01-07 08:09:50', '$2y$12$lutc7luqANulz8GcsFZbyuWMCZClC0MPxzzYakumAof7JCRzpIwlG', 'admin'),
(754, 'Rigoberto', 'Huels', '58024 Gutmann Street\nNorth Curtburgh, MI 47817', 'trinity79@example.com', '6296349295186', 'little.reymundo', 'perempuan', 16, '2024-01-07 08:09:51', '2024-01-07 08:09:51', '$2y$12$QNkHn1ManGzV0HJsD3nUWemVsUIVhPdg0vD2.RbsAyfEjhTyCF0Ru', 'pelanggan'),
(755, 'Dan', 'Greenholt', '760 Rosemary Highway Suite 222\nNew Jaquelin, NM 77354', 'cecilia.balistreri@example.net', '6253993327514', 'kerluke.sandy', 'laki', 61, '2024-01-07 08:09:51', '2024-01-07 08:09:51', '$2y$12$zlHwyp1fK.80y87zKrA6/egcaGgAmGfN7Hyyyyg4aAXe3exUwSxaa', 'pelanggan'),
(756, 'Nicole', 'Kiehn', '881 Vallie Glens Apt. 536\nLake Laylaland, MT 08304', 'dan.romaguera@example.com', '6235208471696', 'turcotte.deondre', 'laki', 61, '2024-01-07 08:09:51', '2024-01-07 08:09:51', '$2y$12$bp.05keIFIfd0DYs7amDBeRWmAOYhtcgO94HtZUg0PRMDdoWVX6PC', 'pelanggan'),
(757, 'Zita', 'Bernier', '6826 Percival Avenue\nGaylordborough, WV 80846-1712', 'ukonopelski@example.net', '6277233773914', 'oma.gibson', 'laki', 16, '2024-01-07 08:09:51', '2024-01-07 08:09:51', '$2y$12$Jq/5z3PU3DetZJ6.qIE5vOxyiBB8fCCfASU3i0zZ3oOtKIgaIm83i', 'admin'),
(758, 'Jaleel', 'Graham', '4618 Carmella Pine Suite 982\nEast Simoneside, HI 15664-8536', 'felipa.hill@example.net', '6297264087644', 'ayost', 'perempuan', 16, '2024-01-07 08:09:52', '2024-01-07 08:09:52', '$2y$12$p75YMdVurQrxAVzNX1WM3uOPFrG2yeFa8oJPNYHutrtfF27gO1A9S', 'pelanggan');
INSERT INTO `users` (`id_user`, `nama_depan`, `nama_belakang`, `alamat`, `email`, `no_telp`, `username`, `gender`, `umur`, `created_at`, `updated_at`, `password`, `roles`) VALUES
(759, 'Edd', 'Abernathy', '257 Garnett Road Suite 283\nIleneberg, ME 35913-0022', 'lance.spencer@example.net', '6234623681381', 'myrtis.bahringer', 'laki', 53, '2024-01-07 08:09:52', '2024-01-07 08:09:52', '$2y$12$etDn6re/vsxQcxLWWv1yrusShuu996PjzpQNZP1raDP0wzmKXjcKq', 'pelanggan'),
(760, 'Agnes', 'Crooks', '530 Borer Locks Suite 920\nPort Onastad, TX 66996', 'pkonopelski@example.com', '6294742586451', 'johnston.alene', 'perempuan', 41, '2024-01-07 08:09:52', '2024-01-07 08:09:52', '$2y$12$ZUxFXgnXUKyit4b.hHH6K.laydnVCOfiBcUdLo8zJB1ZJJ4hNWbQi', 'pelanggan'),
(761, 'Austen', 'Considine', '591 Keebler Valley Apt. 931\nAbdielstad, AZ 90097', 'xoconner@example.com', '6263179568350', 'cmoen', 'laki', 35, '2024-01-07 08:09:52', '2024-01-07 08:09:52', '$2y$12$biKonFwOj4FCuqrGDXa2MOc0SGKYSpdcQBaE14yeio43t2xF/ntO2', 'admin'),
(762, 'Dora', 'Kohler', '498 Witting Wells Apt. 916\nLake Thea, UT 66119', 'mclaughlin.nelda@example.org', '6273764688355', 'ed37', 'laki', 41, '2024-01-07 08:09:52', '2024-01-07 08:09:52', '$2y$12$Yq.jjVCBdOSLuVsxblfAKOqESQcPkRcS2nqJJf4WAJTB3FDlXo1GO', 'pelanggan'),
(763, 'Moses', 'Marquardt', '306 Josh Land\nNorth Breana, TN 26291-0676', 'trace.shanahan@example.org', '6234953070115', 'nikita89', 'perempuan', 16, '2024-01-07 08:09:53', '2024-01-07 08:09:53', '$2y$12$FlJ12XvkdZckIsSkoRZ/SeJrUj/rFVTOPAZXvXtEiXvIiTz3XQd/6', 'admin'),
(764, 'Kim', 'Daniel', '799 Williamson Track\nNorth Lauren, PA 43782-9887', 'kiara26@example.org', '6248945039431', 'ugerlach', 'perempuan', 58, '2024-01-07 08:09:53', '2024-01-07 08:09:53', '$2y$12$rI8bWMufGR5pmqFWlzZUSuUSUbYJLZLT4v2eDq1lteTie/JbUN9qi', 'admin'),
(765, 'Shawn', 'Brown', '86857 Abbey Pine\nLake Mayemouth, WI 67703', 'maeve06@example.net', '6271041676659', 'vbeier', 'perempuan', 21, '2024-01-07 08:09:53', '2024-01-07 08:09:53', '$2y$12$vKkqiB4BAZEqqFto6Nr/0uP.lc.1ewoN2r/M1n0ExzO/Z2kfIqk1W', 'admin'),
(766, 'Jaime', 'Kozey', '26943 McCullough Groves Apt. 345\nLake Emanuelfort, SC 37392', 'huels.peggie@example.net', '6253471924931', 'wward', 'perempuan', 55, '2024-01-07 08:09:53', '2024-01-07 08:09:53', '$2y$12$YG3p4pTemfDT1s0pjdoZRufWRJTeJFdqB9oyc68TTa.Y5KZAGO3UW', 'pelanggan'),
(767, 'Edna', 'Weissnat', '705 Elena Mount\nLake Bernice, NE 59975', 'bruen.hildegard@example.org', '6229065372695', 'eden.miller', 'perempuan', 54, '2024-01-07 08:09:54', '2024-01-07 08:09:54', '$2y$12$un/xnpkR4CAQVREiauVP2ed6hiOYKIyj3JNReJ0DsLOv8VZHiy5h.', 'admin'),
(768, 'Hilbert', 'Ferry', '1285 Beahan Fall\nNorth Austen, WY 26489-2900', 'whowell@example.com', '6241275227735', 'tyra.denesik', 'perempuan', 47, '2024-01-07 08:09:54', '2024-01-07 08:09:54', '$2y$12$adSWmhb3k56XqlziTeESfuu5MuK0uh2Au7PJUD06Ixxz24lYSWS7y', 'pelanggan'),
(769, 'Lindsay', 'Hane', '533 Adelia Lane\nNew Noeliafort, SC 54941-4171', 'pmosciski@example.com', '6258442359113', 'emard.gaetano', 'laki', 43, '2024-01-07 08:09:54', '2024-01-07 08:09:54', '$2y$12$ohGQ4A23bqnPR/6N9V5RYuisKBUYaABPqEs5lI2Oze1cddtU.nW4S', 'admin'),
(770, 'Meggie', 'Barton', '4409 Isabel Ford\nSteuberborough, AL 60703', 'myrtie59@example.org', '6279074379520', 'willms.madelynn', 'perempuan', 27, '2024-01-07 08:09:54', '2024-01-07 08:09:54', '$2y$12$h7ZgpgaXxmA/RAZ17y1zwedZD0ipWBPq9H9DFnLEb2aL1pXo95E5a', 'admin'),
(771, 'Braeden', 'Stark', '30846 Heidenreich Turnpike\nBerylmouth, MS 28090', 'nquigley@example.org', '6218156975725', 'dwhite', 'laki', 22, '2024-01-07 08:12:22', '2024-01-07 08:12:22', '$2y$12$Mz8sPWWp9k2KG92TQEML5umv0vr4tYfVv9tFv8ReLVXD0SqfzpGF6', 'pelanggan'),
(772, 'Lucienne', 'Barrows', '65808 Antonina Street Suite 584\nLake Philip, AR 40115-6002', 'klemke@example.org', '6256104915520', 'tfeest', 'perempuan', 60, '2024-01-07 08:12:23', '2024-01-07 08:12:23', '$2y$12$PN9FcaFWyyN3WBO4AhUW6e3mamGOLuhPNRht.XLJhOoCzDimuMvZ.', 'pelanggan'),
(773, 'Juana', 'Rutherford', '7602 Schneider Mission\nWillymouth, CA 46214', 'sauer.berta@example.org', '6208455500660', 'jtowne', 'perempuan', 21, '2024-01-07 08:12:23', '2024-01-07 08:12:23', '$2y$12$z4UEZVqt7pi3.YSzfYaqcOSJ930bvdWUJr13wceA1vjHMPokY6.dm', 'admin'),
(774, 'Aracely', 'Daugherty', '1283 Sister Square Suite 194\nCodymouth, HI 41107-4745', 'ansley50@example.com', '6234512738098', 'ressie.batz', 'laki', 70, '2024-01-07 08:12:23', '2024-01-07 08:12:23', '$2y$12$ZXj7CLbDIT4FkaGR/ucy/eKfoUCB3glIf3PsPKpWa0KETrFrWw3Ou', 'pelanggan'),
(775, 'Chad', 'Quitzon', '93273 Ally Tunnel\nWest Devyn, WI 32021-4123', 'mwhite@example.com', '6217278736288', 'kertzmann.imogene', 'laki', 54, '2024-01-07 08:12:23', '2024-01-07 08:12:23', '$2y$12$TUjZSACjn2WDowNnubQWKuhzv3x0mJubaoMBxX4uzpnWqbmzfOUbm', 'pelanggan'),
(776, 'Antonina', 'Rohan', '3978 Retta Valley\nOswaldoton, OR 38848-6991', 'wjacobson@example.com', '6224456579434', 'jast.myrna', 'laki', 49, '2024-01-07 08:12:23', '2024-01-07 08:12:23', '$2y$12$7Yf1.bWd/ES63x4WVts9c.DMSr28B1Jh1iuzs3ll3ljZEKvJtAVdK', 'pelanggan'),
(777, 'Noe', 'Rice', '2245 Hilario Tunnel\nEast Lysanneshire, HI 21784-4992', 'fisher.loyce@example.net', '6224031074315', 'wisoky.noelia', 'perempuan', 50, '2024-01-07 08:12:24', '2024-01-07 08:12:24', '$2y$12$pziuhkNLXMELbUAGevdC3O49iKWKpEUP/Arf6Q9aXKLUArcQymrKe', 'admin'),
(778, 'Eloisa', 'Prohaska', '9960 Gislason Mews Apt. 077\nTerrystad, WV 83136', 'bernhard.hazel@example.com', '6213362997642', 'catharine.swift', 'perempuan', 29, '2024-01-07 08:12:24', '2024-01-07 08:12:24', '$2y$12$OMtoKeDbWwOXahrvsz0pnOdR9nZ4gPKNl7kKi7Nc1LSFtuve9l1AW', 'pelanggan'),
(779, 'Fabiola', 'Friesen', '6699 Reina Turnpike\nJuwanchester, ID 30347-2203', 'bethel.adams@example.com', '6288074067396', 'trantow.john', 'laki', 20, '2024-01-07 08:12:24', '2024-01-07 08:12:24', '$2y$12$mcoiQu2FS5GkkjVd/KGY7OpwUn0mrcb0jQMeDAuPJe0wS4va7cDNy', 'pelanggan'),
(780, 'Rogelio', 'Boehm', '110 Greg Overpass\nEast Elveraberg, NE 22977', 'ernser.robert@example.com', '6231441938160', 'srath', 'laki', 31, '2024-01-07 08:12:24', '2024-01-07 08:12:24', '$2y$12$HKWnPaWPeE4zh2YWTQjQUev0cse.MpuVs/8jucGxrzXJ.Qnps0qGu', 'admin'),
(781, 'Lilliana', 'Jenkins', '1525 Bailey Corners Apt. 626\nLake Stantonfort, ND 24538', 'torey64@example.org', '6255974102398', 'ismael.schuppe', 'perempuan', 44, '2024-01-07 08:12:25', '2024-01-07 08:12:25', '$2y$12$UXUqaGLowMPR1p.fkiaYG.bWwdW7meRpI7m102mNZimLTQL4VBL.q', 'pelanggan'),
(782, 'Sonia', 'Hirthe', '8590 Considine Isle\nNoreneborough, ME 66772-5533', 'aracely.nienow@example.org', '6204793599867', 'schiller.tracey', 'perempuan', 68, '2024-01-07 08:12:25', '2024-01-07 08:12:25', '$2y$12$JDxvkQvuqQpYxv8ERlH6qemLUzsKN6QKDQ/0LA2/iMbyOTPUegTrS', 'admin'),
(783, 'Aylin', 'Mayer', '481 Crystel Islands Apt. 386\nSouth Tamara, CT 25031-1631', 'cali.bogan@example.net', '6231144749376', 'glover.jordane', 'perempuan', 50, '2024-01-07 08:12:25', '2024-01-07 08:12:25', '$2y$12$MeDIS/o2CIP0Bv6CyfLNNOwczVoyBPoziC7Rbg8fjBJ8mBIY7IYq2', 'pelanggan'),
(784, 'Taya', 'Bosco', '1079 Mertz Knoll\nPorterland, NH 77752', 'qpaucek@example.org', '6271810598423', 'jeff.kuphal', 'perempuan', 20, '2024-01-07 08:12:25', '2024-01-07 08:12:25', '$2y$12$rLOUvY5fkhMhNeLYoWh9bugcafTwHM5T1bC6BAdPVYlctZ6d1xvZq', 'pelanggan'),
(785, 'Marcelina', 'Ondricka', '4473 Jayme Motorway\nPort Jules, MT 72074-8970', 'jamaal97@example.com', '6222485476636', 'kabbott', 'perempuan', 65, '2024-01-07 08:12:25', '2024-01-07 08:12:25', '$2y$12$GuNxpNZg3N1TpffAavL65e6BG/DG502bq89pcsyVEdEPmzwGpob6a', 'pelanggan'),
(786, 'Louisa', 'Boehm', '23833 Heller Spurs Apt. 308\nMafaldaport, AK 66115', 'ashanahan@example.org', '6220433307132', 'mohamed.kunze', 'perempuan', 60, '2024-01-07 08:12:26', '2024-01-07 08:12:26', '$2y$12$SEzZS06cTkHxhRQG.uN80uiuFYzIvzqAIVv2QlSjdiWx6gXbyDA16', 'pelanggan'),
(787, 'Eldred', 'Harber', '859 Moore Meadow\nMandyland, UT 13723', 'robyn32@example.org', '6248419976409', 'graham.sarina', 'laki', 23, '2024-01-07 08:12:26', '2024-01-07 08:12:26', '$2y$12$H7aoCWX7vbdWI0EU7PUQEew8M7pG.lHVz7ATmScsnZlNcHshm3X.O', 'admin'),
(788, 'Zoie', 'Feil', '567 Jacobs Pike\nHadleyland, SD 28832-0306', 'natalia.harber@example.com', '6280578110936', 'lafayette.feeney', 'laki', 65, '2024-01-07 08:12:26', '2024-01-07 08:12:26', '$2y$12$XZh3HIKX5B5bhn2yYK85buUm/mI2qBdnfUq7tYs7G4v79tzjDrdim', 'pelanggan'),
(789, 'Kendra', 'Kris', '8780 Daniel Plaza Apt. 502\nLake Timothyfort, ID 52806', 'windler.myrtis@example.com', '6237802849928', 'roel.bosco', 'laki', 15, '2024-01-07 08:12:26', '2024-01-07 08:12:26', '$2y$12$qQmfWdMYK2E/KV5JkaOMl.oGmb.W5RaOOdZKJkqLQ56c0LhFextJO', 'admin'),
(790, 'Kailee', 'Bogan', '25127 Mavis Squares Apt. 978\nIsaimouth, WV 74366-5378', 'batz.agustina@example.org', '6242500191946', 'willard.yundt', 'perempuan', 16, '2024-01-07 08:12:26', '2024-01-07 08:12:26', '$2y$12$mGlhJ0tSyUbuqbCbWKmDGetnl0NjYF9JMb3tS/OCT.ter/idRlpfO', 'pelanggan'),
(791, 'Mckayla', 'Lubowitz', '641 Linda Shoal Suite 981\nElmoreborough, ID 85841', 'hstrosin@example.net', '6208889164289', 'aric.roob', 'laki', 31, '2024-01-07 08:12:27', '2024-01-07 08:12:27', '$2y$12$ctv0.4u6nG95FIP01bOzyO3xWSHRk0l5iEWmFGEUvXVARrIUojcKu', 'pelanggan'),
(792, 'Alek', 'Block', '66360 Nicolas Burg\nNew Bobbiefurt, WI 84346', 'jared97@example.org', '6270104519259', 'kira42', 'perempuan', 25, '2024-01-07 08:12:27', '2024-01-07 08:12:27', '$2y$12$wjLZCgK4qUbiv3eSHQoaTeAM.5EBJ0s1RYHI4Fpt8Y8wWceZ89xGy', 'pelanggan'),
(793, 'Vilma', 'Kunze', '472 Amina Cove\nJaysonchester, AR 18367-8157', 'fisher.yvette@example.com', '6254757006195', 'brannon.eichmann', 'laki', 61, '2024-01-07 08:12:27', '2024-01-07 08:12:27', '$2y$12$2VcvxuaRaCgM611eYOeJK.3QqZ/JLCQ9K0zSL85qA.KS8Csen0fO6', 'admin'),
(794, 'Taya', 'Collier', '8143 Mann Alley Apt. 394\nLarissashire, UT 20795-9288', 'considine.arthur@example.org', '6221481827329', 'onie.boyer', 'perempuan', 36, '2024-01-07 08:12:27', '2024-01-07 08:12:27', '$2y$12$5iIR/rJOe71mFZN0sbSEA.jRa/BRQu1GruzV0dWFeRSX6cSCWHQxS', 'pelanggan'),
(795, 'Vilma', 'Kerluke', '7296 Liana Canyon Suite 725\nJamesonview, SD 12696', 'qhudson@example.org', '6270497527123', 'maud35', 'perempuan', 67, '2024-01-07 08:12:28', '2024-01-07 08:12:28', '$2y$12$z4KC66E8qbgRsfA32IIIzOKykKjgeuwjN5ohv.WdAMundVWA3jiqq', 'pelanggan'),
(796, 'Zachery', 'Predovic', '7143 Rodriguez Centers\nGrahamburgh, SD 35025-1726', 'eddie17@example.org', '6267221497597', 'bgreenfelder', 'perempuan', 31, '2024-01-07 08:12:28', '2024-01-07 08:12:28', '$2y$12$PRYzSTTpQTonhEpZjXfa1.J.yjjCFZYlwLEn97UKWQUadnga8oJPG', 'admin'),
(797, 'Alivia', 'Zieme', '9014 Tobin Pike\nJaydenfort, UT 73071-8151', 'maymie34@example.org', '6298177145241', 'tyson98', 'perempuan', 39, '2024-01-07 08:12:28', '2024-01-07 08:12:28', '$2y$12$qfA.HMmQlExqgnguaO4UJ.X.bD9qdtGaWwaorgG1uvqkx7quOwcSG', 'pelanggan'),
(798, 'Enoch', 'Carroll', '29421 Hayes Crest\nRandifurt, AK 41479', 'oreilly.rosalind@example.com', '6271938852741', 'xcollins', 'perempuan', 58, '2024-01-07 08:12:28', '2024-01-07 08:12:28', '$2y$12$xl2ZOBheb.H8awC61ZOR6.y6xpCoU0x0IyL8Sc6GUFcK8i6nMeVS.', 'pelanggan'),
(799, 'Charley', 'Boyle', '51790 Botsford Unions Suite 020\nThurmanmouth, TN 57758', 'qwindler@example.net', '6232829313694', 'efren.wolff', 'laki', 61, '2024-01-07 08:12:28', '2024-01-07 08:12:28', '$2y$12$ESKxYOTtGCFlYkUEPi/64.yeUVyTzNmHLZxxk2oqdB1F0SzoSGy4O', 'admin'),
(800, 'Elaina', 'Block', '35481 Funk Locks\nSouth Joanne, MN 17476-7387', 'jordi41@example.com', '6230543302279', 'abreitenberg', 'laki', 18, '2024-01-07 08:12:29', '2024-01-07 08:12:29', '$2y$12$Klk3TSzdx/WQqtxhxstZBOHc7TvpJS9AfCvyX6KmBWPRk3u0WYbV2', 'pelanggan'),
(801, 'Loy', 'Morissette', '24100 Schaefer Route\nLake Londonton, IN 93745', 'nathaniel99@example.net', '6266751794946', 'bstanton', 'perempuan', 41, '2024-01-07 08:13:34', '2024-01-07 08:13:34', '$2y$12$p4.cn3jLv8hpLM3ukPynJ.jnk3mCwMjOJjcYK1VGwsq.fnNKm6H2y', 'pelanggan'),
(802, 'Brice', 'Murray', '412 Harvey Isle\nWest Celia, SC 91808-3752', 'amonahan@example.org', '6247932930323', 'njaskolski', 'perempuan', 35, '2024-01-07 08:13:34', '2024-01-07 08:13:34', '$2y$12$47hZN9228zYzEEg3hxd/xeM5F7iYXCZZnQ9R.bh9.VO4g/SJCuDH6', 'admin'),
(803, 'Ayla', 'Dooley', '219 Lloyd Center Suite 528\nSouth Ramiro, NC 44597-9515', 'leannon.lyda@example.org', '6273615049707', 'ocorwin', 'laki', 54, '2024-01-07 08:13:34', '2024-01-07 08:13:34', '$2y$12$YyT2Uev4T.eUoO5muv12P.vfAfmFVVsXbNhCDbsiudkRQ4Y.aqhBW', 'pelanggan'),
(804, 'Carmela', 'Ortiz', '348 Turner Centers\nLake Bernadette, NY 80375-5179', 'mills.santos@example.net', '6261179162814', 'tdickens', 'perempuan', 48, '2024-01-07 08:13:35', '2024-01-07 08:13:35', '$2y$12$lQXDuv2ggMOfSy2M8V.A7eLWOaS74wMBLpepmWCYcz39yLXmpC1Y2', 'pelanggan'),
(805, 'Wendy', 'Beatty', '73420 Crystel Forges Suite 160\nLesleyville, WI 19924', 'frances.bogisich@example.org', '6236915386206', 'mertie50', 'perempuan', 66, '2024-01-07 08:13:35', '2024-01-07 08:13:35', '$2y$12$Bl8n0MzrMkWX51xIaAJfy.U4SXQBzPff.uxvnkLLoEJRiktgDTvIO', 'pelanggan'),
(806, 'Loyce', 'Schowalter', '6845 Hettinger Bypass\nLake Connie, AR 81816', 'mariane.murazik@example.com', '6249369472534', 'grover48', 'laki', 25, '2024-01-07 08:13:35', '2024-01-07 08:13:35', '$2y$12$h2gQllHhFWAhNvDJTKl16ufeATLlzs1DblxvQfpcKqqvSWLeuVn5i', 'admin'),
(807, 'Ramona', 'Johnston', '642 Grace Lodge\nNoelfort, SC 08800', 'zelda.sanford@example.net', '6216126625918', 'sipes.kathryne', 'laki', 28, '2024-01-07 08:13:35', '2024-01-07 08:13:35', '$2y$12$wu5VytxHYFM71sK5VOQSZeyWOywN5d6VYn1qW7GZthg0OYsXFwJJ6', 'pelanggan'),
(808, 'Magali', 'Wisoky', '11057 Derick Skyway\nEast Ardellaburgh, SD 20543', 'telly45@example.net', '6283754343396', 'jprohaska', 'laki', 58, '2024-01-07 08:13:36', '2024-01-07 08:13:36', '$2y$12$1Pr7xxjGeIpVPFjLdIBaR.klIzunb3P.oD0M8ZujduW/26TIhcuWO', 'pelanggan'),
(809, 'Christine', 'Gottlieb', '5919 Myrna Mission\nSouth Kadeshire, CO 60989', 'ulemke@example.net', '6292306179143', 'rolando30', 'perempuan', 23, '2024-01-07 08:13:36', '2024-01-07 08:13:36', '$2y$12$Nk0bwzadeAwXOCTuz9/wu.uLQMi1r5nW8BbpgXroOwaxcHOG6Hdom', 'pelanggan'),
(810, 'Verlie', 'Haag', '3299 Boyer Pines\nVontown, MS 10789', 'ihand@example.net', '6269640704054', 'dawn93', 'laki', 31, '2024-01-07 08:13:36', '2024-01-07 08:13:36', '$2y$12$Lf3ADnbGmuzC8I1HlhxQGeZJp2NC5xheZdm2w21pzrsnrrNj6jAT.', 'pelanggan'),
(811, 'Ronaldo', 'Torphy', '83385 Marcel Forge Suite 756\nChristophebury, CT 51717-5284', 'fritz.funk@example.net', '6263750361691', 'frieda.lueilwitz', 'perempuan', 34, '2024-01-07 08:13:36', '2024-01-07 08:13:36', '$2y$12$dRDYHQI5v3n2jRLvWxNq4Ov2fjmZR89KWdYLNUTjg1PqGSucJ.wde', 'admin'),
(812, 'Andy', 'Bernier', '8370 Ned Dam\nWest Adelaland, NC 68459-3635', 'dickinson.hortense@example.com', '6291299437370', 'lmclaughlin', 'perempuan', 25, '2024-01-07 08:13:36', '2024-01-07 08:13:36', '$2y$12$m1BMWjT0W5lYONv6X0fvP.OKj3KCetX6HtG5IBSGRkl4qVHQ8YHAO', 'admin'),
(813, 'Clint', 'Schumm', '891 Schneider Mission\nGreenfelderstad, MS 15020', 'xpfeffer@example.org', '6207757272696', 'mklein', 'laki', 18, '2024-01-07 08:13:37', '2024-01-07 08:13:37', '$2y$12$Z9kXzlTQLHSy2SAp75WO/uXygPMTXzgvvWuCphyb.afpPzu3NO/nS', 'pelanggan'),
(814, 'Vada', 'Schmidt', '402 Kemmer Ridges Suite 943\nPort Lindaside, MI 13713-3680', 'nora08@example.org', '6212220155648', 'daugherty.emmie', 'laki', 15, '2024-01-07 08:13:37', '2024-01-07 08:13:37', '$2y$12$cl7DDgMKQJfdxvRtv6Sdl.erB0SW.m6jLwR1vOKvCsdazt.VpHVaC', 'admin'),
(815, 'Robb', 'Crooks', '90021 Kuvalis Squares\nJamalton, NV 99390', 'amelie93@example.com', '6207244685684', 'savion.littel', 'laki', 64, '2024-01-07 08:13:37', '2024-01-07 08:13:37', '$2y$12$MqH3LWYo98k2Ui71Zv0wQ.U1saUEeykpGVcPjIDJuXhHuBu.276w.', 'pelanggan'),
(816, 'Kay', 'Mitchell', '44091 Wilhelmine Viaduct\nKihntown, ND 80824-8312', 'frowe@example.org', '6247438063644', 'ruecker.roman', 'laki', 49, '2024-01-07 08:13:37', '2024-01-07 08:13:37', '$2y$12$t/tmKHnCszO5eTSK9iE7r.vQtY2RCbHs4JD3apCYHGK9SPqNtC2Oa', 'admin'),
(817, 'Antonetta', 'Bernier', '116 Richie Glens\nWest Napoleon, TX 95247-2683', 'judd.bogisich@example.net', '6283344840398', 'merlin.murray', 'laki', 45, '2024-01-07 08:13:38', '2024-01-07 08:13:38', '$2y$12$IJnya39MQHWN9FTkG509ROOO2/FK9ZwnCwajak8EMoQeIPgsOcD86', 'pelanggan'),
(818, 'Stefanie', 'Langworth', '8796 Chasity Greens\nNorth Assunta, MT 11988', 'trantow.madalyn@example.org', '6298055129277', 'verona.keebler', 'laki', 54, '2024-01-07 08:13:38', '2024-01-07 08:13:38', '$2y$12$b.D0NT8SixCSwW7d4/4Kw.hIbnN/MRwTHwUrR0InrjWA7X9HLRpgu', 'pelanggan'),
(819, 'Teresa', 'Nolan', '1204 Andy Heights Apt. 510\nPort Bernadettetown, OK 84044-8699', 'ivy.willms@example.com', '6213023874586', 'dpowlowski', 'laki', 32, '2024-01-07 08:13:38', '2024-01-07 08:13:38', '$2y$12$j6VYxD.aABdNr9/0RvFEaujCCmO4Oqr5FJ/eFd00nfkRf4NrXSeVS', 'admin'),
(820, 'Jalon', 'Hagenes', '3618 Dibbert Rapid\nSouth Salvatore, SC 10060-2677', 'darren98@example.org', '6259410687686', 'jamie.ward', 'perempuan', 28, '2024-01-07 08:13:38', '2024-01-07 08:13:38', '$2y$12$p7MZEp4wkvQRhoPVn/E4Rux0XV42gtcApvXQLjthwF4UhCadNXF1e', 'pelanggan'),
(821, 'Lucio', 'Blanda', '3278 Brandi Hollow\nPort Dallinton, OR 69201-2294', 'epfeffer@example.com', '6293884882342', 'sabrina.thiel', 'laki', 32, '2024-01-07 08:13:38', '2024-01-07 08:13:38', '$2y$12$rOwjAAKf2z5hj1yGMipE.OEN2AKWFs4W2rIZm8RoIPBqipn3ktVJy', 'pelanggan'),
(822, 'Darrin', 'Sawayn', '534 Beer Points Apt. 198\nNorth Margarett, CT 14526', 'mclaughlin.ari@example.org', '6272543167327', 'easter.towne', 'laki', 58, '2024-01-07 08:13:39', '2024-01-07 08:13:39', '$2y$12$eM5PZok8066cNRHkPAET0u6Ra7Whz0l4p9CQuguc468kq.CNKinLO', 'pelanggan'),
(823, 'Franco', 'Fay', '94605 Durward Harbors Suite 432\nNorth Margarette, AK 40903-7517', 'mblock@example.net', '6269650915353', 'qdouglas', 'laki', 39, '2024-01-07 08:13:39', '2024-01-07 08:13:39', '$2y$12$Q1s7yjuIqqCeOKwHN4L2tOnJEEnfXAy1P46j9Owa.Hvw5hI0A9XEq', 'pelanggan'),
(824, 'Jada', 'Kris', '9556 Ondricka Road\nPort Unaberg, DE 29801-3086', 'jayde37@example.com', '6270823529819', 'oleta.sauer', 'perempuan', 36, '2024-01-07 08:13:39', '2024-01-07 08:13:39', '$2y$12$mRQBv13WAKBeBi6P3e431.iFrAzFt1x/qHbI0wS56W5Zx9RHrglAq', 'admin'),
(825, 'Clark', 'Rath', '30651 Ramona Prairie\nBaumbachborough, AZ 33393-6388', 'connelly.adam@example.org', '6297291402171', 'jacobi.jarod', 'perempuan', 22, '2024-01-07 08:13:39', '2024-01-07 08:13:39', '$2y$12$4ACSxsGEnVgpQ1AMTh9WXeC466Efbpl9QdG8vgA5nsjF929dfwh.C', 'pelanggan'),
(826, 'Dashawn', 'Ryan', '563 Hyatt Landing Suite 304\nKarleyshire, OK 83942', 'kevon.koch@example.com', '6268962983375', 'volkman.jayson', 'laki', 54, '2024-01-07 08:13:39', '2024-01-07 08:13:39', '$2y$12$nEYDJwnxCTsSdGFDWFRRVeoreiaEH.oa12AUas7HDS.CUNN.UluFS', 'pelanggan'),
(827, 'Meghan', 'Lueilwitz', '58934 Weimann Heights\nCroninside, MD 86039-5575', 'rgulgowski@example.com', '6270216531801', 'ariel.durgan', 'laki', 66, '2024-01-07 08:13:40', '2024-01-07 08:13:40', '$2y$12$6wfF8.dt0zV/EI2Ygk0Ly.5gQS51grT52DiwbY.Qcdt6p5dr/kBHG', 'pelanggan'),
(828, 'Viviane', 'Kreiger', '373 Upton Mountains Apt. 545\nLake Irwinbury, OK 96135-9006', 'maureen53@example.org', '6266955290366', 'yschaefer', 'perempuan', 17, '2024-01-07 08:13:40', '2024-01-07 08:13:40', '$2y$12$flqDUosu9T0eQ7pk0/.Z5Or7mRJg8bT8Xf9syCqAlXvdQy2L8gQV.', 'admin'),
(829, 'Gillian', 'Thiel', '4363 Mayert Lake Apt. 052\nLeslieberg, MS 70844-0220', 'sheridan.von@example.org', '6253532312497', 'lbins', 'perempuan', 58, '2024-01-07 08:13:40', '2024-01-07 08:13:40', '$2y$12$sbroCrMDHL71.WmOX6grtuUG5zRVdwyYjZoW5hTdd91jWlTk.r/Va', 'admin'),
(830, 'Ida', 'McDermott', '48693 Moriah Square Apt. 630\nNew Osbaldo, OK 88063-8438', 'lmorissette@example.com', '6230384442940', 'lindsay.kuhn', 'perempuan', 37, '2024-01-07 08:13:40', '2024-01-07 08:13:40', '$2y$12$S4ZI1oo0IM1CAB3v6ULEMebENDE4ZMXWncM75668FJNiA6GolOXVm', 'pelanggan'),
(831, 'Justen', 'Roob', '197 Cremin Neck\nTessieburgh, ME 02754-7835', 'jeanie29@example.org', '6207498304581', 'cordie90', 'perempuan', 57, '2024-01-07 08:15:23', '2024-01-07 08:15:23', '$2y$12$mF8fTUpI/FS6n881qG98r.KuFoM2i7n3YRnYhm0OLD6OIu5vmZZsS', 'admin'),
(832, 'Jaquan', 'Ebert', '3147 Jessyca Springs\nFeeneyview, NC 47180-2138', 'austyn20@example.org', '6220741538586', 'otilia40', 'laki', 54, '2024-01-07 08:15:23', '2024-01-07 08:15:23', '$2y$12$iKCy/.cCWTmF6whSuCj9aude3hj8/jEPjgF/iGQRBdDU9GNS43FM6', 'admin'),
(833, 'Leila', 'Beatty', '15790 Marcia Streets\nCassinmouth, IL 07337-6878', 'joaquin.harris@example.net', '6299294183279', 'glen.nicolas', 'perempuan', 59, '2024-01-07 08:15:24', '2024-01-07 08:15:24', '$2y$12$ydmEg7Oc9FKvW0TbrvVPB.ATzTaTnbYZf8/67eIPlam8fFKLY0dsq', 'admin'),
(834, 'Domingo', 'White', '77908 Jeremie Junctions Apt. 176\nJuliannebury, OR 09315-5730', 'carolanne56@example.org', '6203255544877', 'collier.myriam', 'laki', 50, '2024-01-07 08:15:24', '2024-01-07 08:15:24', '$2y$12$d1HX3PXDVEz.au62mNTqbedTBIZJLFemHYw8NjPuPR27.ehc3.qdC', 'admin'),
(835, 'Eileen', 'Barrows', '1726 Dayton Shoal Suite 445\nWest Eldora, WV 27297-6401', 'hayes.maud@example.net', '6286843249858', 'schulist.johnpaul', 'perempuan', 48, '2024-01-07 08:15:24', '2024-01-07 08:15:24', '$2y$12$h3UGFgULFutf.4eE9N8kAee.j7PontWLF6Hr1AtyrrpT96xfho53i', 'pelanggan'),
(836, 'Thelma', 'King', '5283 Darrell Shores Apt. 386\nNew Alexannestad, ID 95891', 'akoepp@example.org', '6200285038462', 'tobin71', 'perempuan', 58, '2024-01-07 08:15:24', '2024-01-07 08:15:24', '$2y$12$jbQQYVFuxPUFHU/9XqXx7OZx1V8..6mH79epHQl.Nr7Cxmrk5W.Ky', 'pelanggan'),
(837, 'Deanna', 'Weimann', '8799 Fernando Springs\nO\'Connerborough, KS 63622', 'ilowe@example.org', '6296258781450', 'jovany.brown', 'perempuan', 48, '2024-01-07 08:15:25', '2024-01-07 08:15:25', '$2y$12$Iu63SY59LSLDl7Q8ypIFL.2l/FFE2IEVBIzRtAoyaec4P8Q6iXunq', 'pelanggan'),
(838, 'Pascale', 'Osinski', '1783 Daniel Grove\nIdellachester, HI 72816-7632', 'annabelle.goldner@example.com', '6256357983557', 'myrtle.balistreri', 'perempuan', 28, '2024-01-07 08:15:25', '2024-01-07 08:15:25', '$2y$12$fFtmdCLQq01EFPFfEiswS.suHzWjcGW.q0eD1iDUJkm6x85VJmmAC', 'admin'),
(839, 'Elsa', 'Roberts', '3509 Hettie Spurs Apt. 016\nTiarafurt, DE 52771-6292', 'raphaelle.boyle@example.org', '6259875434355', 'magali65', 'perempuan', 32, '2024-01-07 08:15:25', '2024-01-07 08:15:25', '$2y$12$pf/PcXQk2RlXuM0f/nYdFuBJHA4CdHAV68/PQkxo6y9lf1fWKLIle', 'pelanggan'),
(840, 'Austen', 'Shields', '403 Raphael Shoals\nEvangelineshire, AL 04097', 'dooley.jermaine@example.net', '6253423316049', 'rudy.hane', 'laki', 18, '2024-01-07 08:15:25', '2024-01-07 08:15:25', '$2y$12$w8nkdkA5Rd6x4Nv9eX9ttO6EsjlwGQqhfvEbvNrrABBab5wqjgVBW', 'pelanggan'),
(841, 'Duncan', 'Gusikowski', '6727 Ellie Pine\nSouth Edgar, OH 66663-7435', 'yframi@example.com', '6200083151787', 'cora22', 'laki', 23, '2024-01-07 08:15:25', '2024-01-07 08:15:25', '$2y$12$obJgVRjdJj.JDKmqjVH1xusrL6JY7h.eAY7KYcymLE4Fk1ZsGtBFW', 'admin'),
(842, 'Shany', 'Murazik', '4374 Phyllis Points\nLake Mac, AL 16337-9679', 'troy.kirlin@example.net', '6205877386370', 'oren.pacocha', 'perempuan', 17, '2024-01-07 08:15:26', '2024-01-07 08:15:26', '$2y$12$hPlBdaiZWIac9xPj0kciLejCJ1ed50j8VY699Y62/a.8xFfE3oqai', 'admin'),
(843, 'Wyman', 'Schumm', '72706 Kemmer Field\nSouth Deltaport, DE 19645', 'rkautzer@example.com', '6201457294653', 'cyundt', 'perempuan', 70, '2024-01-07 08:15:26', '2024-01-07 08:15:26', '$2y$12$vSvrZSLclll.bsiSRnHL5u2lN9x0rmIdfuz.1.6VFj9HH9LtbrrRK', 'pelanggan'),
(844, 'Cleora', 'Schiller', '810 Wolff Lights\nVeronicafurt, LA 48966', 'saige.lebsack@example.com', '6222879848948', 'kyleigh31', 'laki', 60, '2024-01-07 08:15:26', '2024-01-07 08:15:26', '$2y$12$7cw0/l9dvJ6.udVtYEbfqO58HT41HQnkVWy1GhZiPiiZFB7wVP9.6', 'pelanggan'),
(845, 'Tierra', 'Labadie', '2426 Sam Crescent\nNew Graciela, DC 58418-0957', 'kirlin.gregoria@example.com', '6225868449959', 'moore.agustin', 'perempuan', 24, '2024-01-07 08:15:26', '2024-01-07 08:15:26', '$2y$12$EojeYVrqlAVby3A9UprXQu86Eoc6PlcniSa.rCQRdgLzM3yosoxEW', 'pelanggan'),
(846, 'Nils', 'Bartoletti', '34724 Botsford Union\nPort Salmahaven, WA 11543', 'marcel56@example.net', '6253446427016', 'spinka.royal', 'perempuan', 40, '2024-01-07 08:15:26', '2024-01-07 08:15:26', '$2y$12$iBJgXnh16US9mW37Ix5CAefaZ06CEiJjaX514OPZfdRyR/Vfw1Xhm', 'pelanggan'),
(847, 'Howell', 'Lind', '73157 Larissa Pike\nWestleyport, IA 49550', 'cassandra.denesik@example.com', '6232306446037', 'goldner.nova', 'perempuan', 21, '2024-01-07 08:15:27', '2024-01-07 08:15:27', '$2y$12$sUH6blKAZaGeklhJNjXyl.ZUU64ZPwWQhjiQQ8W8Bb.bThZ/AjpyW', 'admin'),
(848, 'Xavier', 'Williamson', '520 Annette Forks Apt. 004\nEleanoreberg, MI 86762-9631', 'lupe71@example.com', '6284545449388', 'kay.bogan', 'perempuan', 41, '2024-01-07 08:15:27', '2024-01-07 08:15:27', '$2y$12$Ix0.s55Eca.SChiViANTLecdfSv0l.CoeHhowdBvEGjtjFn5uror2', 'pelanggan'),
(849, 'Nicklaus', 'Klein', '4775 Rhiannon Creek\nGeorgianafurt, SD 82437-3753', 'evan46@example.com', '6232712838244', 'kertzmann.earnest', 'perempuan', 30, '2024-01-07 08:15:27', '2024-01-07 08:15:27', '$2y$12$Yv4eFVnRTy9wdml3038sfOkXrhRFiMjdvTwZr0jH9WgfVhC5kxsEy', 'pelanggan'),
(850, 'Bernie', 'Harber', '1366 Tyra Drive Apt. 388\nEmardstad, MA 46951', 'jklein@example.net', '6216924469011', 'kohler.tate', 'perempuan', 46, '2024-01-07 08:15:27', '2024-01-07 08:15:27', '$2y$12$hGt9iFVoXxpD3Pts8RCDXe3D9CLSUN.yrxZmCHnRPorewyxuhroHq', 'pelanggan'),
(851, 'Kacie', 'Feil', '91900 Larson Junction Apt. 384\nEast Erica, SC 95509', 'schuppe.marguerite@example.com', '6281145941808', 'valerie.bahringer', 'perempuan', 21, '2024-01-07 08:15:28', '2024-01-07 08:15:28', '$2y$12$.9EjSFMMy38H5EFWfSekC.iL.wFvpaFJGTS9.cMJlViwExszbfDQO', 'pelanggan'),
(852, 'Betsy', 'Dibbert', '1767 Stoltenberg Underpass\nNealport, PA 05259', 'enoch08@example.org', '6272978500911', 'rconn', 'perempuan', 36, '2024-01-07 08:15:28', '2024-01-07 08:15:28', '$2y$12$blM2sJ1p3e3xa7x39RH9WeFQ0R.ZM6uWGpBFwUfj48aRYeeWRH0tC', 'pelanggan'),
(853, 'Mina', 'Gaylord', '175 Alaina Manor\nWest Cathyville, MT 22173-8541', 'wintheiser.theresia@example.org', '6273208068249', 'ian94', 'perempuan', 68, '2024-01-07 08:15:28', '2024-01-07 08:15:28', '$2y$12$zT/M1HrhXgrGCQDO6ARoE.5hSdrNnjULWGfPT/E8uvW6ZYFlVrzlK', 'admin'),
(854, 'Jake', 'Barton', '9655 Christelle Lock\nLake Orlandport, HI 17273-8788', 'garfield.haley@example.net', '6291632366332', 'ollie.lind', 'laki', 52, '2024-01-07 08:15:28', '2024-01-07 08:15:28', '$2y$12$dIqTnlAHqfsCNVDuBiAVTOj.lqu0puaXHXOHo8gk0yJmFKzw/bxxe', 'admin'),
(855, 'Kristoffer', 'Daugherty', '242 Hermann Garden\nNew Ronaldo, DE 71100-8177', 'hauck.monte@example.net', '6288497661288', 'nhuels', 'perempuan', 29, '2024-01-07 08:15:28', '2024-01-07 08:15:28', '$2y$12$.Kv5JwOEUYxB/mnlXTzJ6um26zhGq7m140ar0o4DeebXW30AV0Ncy', 'admin'),
(856, 'Fabiola', 'Marquardt', '50640 Lea Square Suite 722\nLilyanton, CA 98769-4931', 'jordy01@example.org', '6295662632673', 'lboyle', 'laki', 60, '2024-01-07 08:15:29', '2024-01-07 08:15:29', '$2y$12$31e7hrJae5KftSJ/pyOsRuSNv4exhrSv5Loo9dzo7SXAkP6lenSdW', 'admin'),
(857, 'Winston', 'Rutherford', '4877 O\'Keefe Lakes\nLionelland, DE 30029', 'harvey.rhett@example.org', '6289270008927', 'obeahan', 'laki', 67, '2024-01-07 08:15:29', '2024-01-07 08:15:29', '$2y$12$ENIxp8CE/QQGVs6HIh1tTuJ/Fr8x4LWnaXRDtRTc0pf2dJ2zGVrj6', 'admin'),
(858, 'Wilber', 'Wolff', '2201 Zemlak Cove\nRamonashire, TX 99410', 'ashlynn28@example.net', '6222575755784', 'hdonnelly', 'perempuan', 49, '2024-01-07 08:15:29', '2024-01-07 08:15:29', '$2y$12$AD5eexzpiULa1qpMCbCE3.RfzWzq/Y9h.K6erb6xMBr3pS1Xv2qR.', 'admin'),
(859, 'Dereck', 'Wunsch', '4170 Fahey Inlet\nSouth Verniceside, IA 73952', 'quinton.torphy@example.net', '6213812430154', 'thompson.liana', 'perempuan', 16, '2024-01-07 08:15:29', '2024-01-07 08:15:29', '$2y$12$Fv39YhjJ6OpDwRqds.hR/Oqi6HtpeJfcdLUO6m.RTGZZvIYD4FemK', 'pelanggan'),
(860, 'Keira', 'Halvorson', '998 McClure Groves\nFelixview, ND 11248-0904', 'pbayer@example.com', '6266983232948', 'cielo56', 'laki', 47, '2024-01-07 08:15:30', '2024-01-07 08:15:30', '$2y$12$aXl1Z2N0gn4ID3L2qz33gOfbrReoVSjISaIQ6lvdw5k5RkncRr0Xm', 'pelanggan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `creds`
--
ALTER TABLE `creds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `creds_password_index` (`password`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `detail_pesanans`
--
ALTER TABLE `detail_pesanans`
  ADD PRIMARY KEY (`id_detail_pesanan`),
  ADD KEY `id_pesanan on detail_pesanans` (`id_pesanan`),
  ADD KEY `id_harga_wisata on detail_pesanans` (`id_harga_wisata`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `harga_wisatas`
--
ALTER TABLE `harga_wisatas`
  ADD PRIMARY KEY (`id_harga_wisata`),
  ADD KEY `id_lokasi_ on harga_Wisata` (`id_lokasi`),
  ADD KEY `id_jenis_orang on harga wisata` (`id_jenis_orang`);

--
-- Indexes for table `jenis_lokasis`
--
ALTER TABLE `jenis_lokasis`
  ADD PRIMARY KEY (`id_jenis_lokasi`);

--
-- Indexes for table `jenis_orangs`
--
ALTER TABLE `jenis_orangs`
  ADD PRIMARY KEY (`id_jenis_orang`);

--
-- Indexes for table `lokasis`
--
ALTER TABLE `lokasis`
  ADD PRIMARY KEY (`id_lokasi`),
  ADD KEY `lokasi_jenis` (`jenis_lokasi`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pesanans`
--
ALTER TABLE `pesanans`
  ADD PRIMARY KEY (`id_pesanan`),
  ADD KEY `id_user_pesanan` (`id_user`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `users_nama_depan_index` (`nama_depan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `creds`
--
ALTER TABLE `creds`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT for table `detail_pesanans`
--
ALTER TABLE `detail_pesanans`
  MODIFY `id_detail_pesanan` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `harga_wisatas`
--
ALTER TABLE `harga_wisatas`
  MODIFY `id_harga_wisata` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `jenis_lokasis`
--
ALTER TABLE `jenis_lokasis`
  MODIFY `id_jenis_lokasi` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jenis_orangs`
--
ALTER TABLE `jenis_orangs`
  MODIFY `id_jenis_orang` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lokasis`
--
ALTER TABLE `lokasis`
  MODIFY `id_lokasi` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pesanans`
--
ALTER TABLE `pesanans`
  MODIFY `id_pesanan` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=861;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `creds`
--
ALTER TABLE `creds`
  ADD CONSTRAINT `id_user` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detail_pesanans`
--
ALTER TABLE `detail_pesanans`
  ADD CONSTRAINT `id_harga_wisata on detail_pesanans` FOREIGN KEY (`id_harga_wisata`) REFERENCES `harga_wisatas` (`id_harga_wisata`),
  ADD CONSTRAINT `id_pesanan on detail_pesanans` FOREIGN KEY (`id_pesanan`) REFERENCES `pesanans` (`id_pesanan`);

--
-- Constraints for table `harga_wisatas`
--
ALTER TABLE `harga_wisatas`
  ADD CONSTRAINT `id_jenis_orang on harga wisata` FOREIGN KEY (`id_jenis_orang`) REFERENCES `jenis_orangs` (`id_jenis_orang`),
  ADD CONSTRAINT `id_lokasi_ on harga_Wisata` FOREIGN KEY (`id_lokasi`) REFERENCES `lokasis` (`id_lokasi`);

--
-- Constraints for table `lokasis`
--
ALTER TABLE `lokasis`
  ADD CONSTRAINT `lokasi_jenis` FOREIGN KEY (`jenis_lokasi`) REFERENCES `jenis_lokasis` (`id_jenis_lokasi`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `pesanans`
--
ALTER TABLE `pesanans`
  ADD CONSTRAINT `id_user_pesanan` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
