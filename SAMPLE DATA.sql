-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 10 Des 2024 pada 16.24
-- Versi server: 8.0.30
-- Versi PHP: 8.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistem_sgi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `konveksis`
--

CREATE TABLE `konveksis` (
  `id` bigint UNSIGNED NOT NULL,
  `no_po` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT '2024-12-09 15:44:33',
  `nama_pesanan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bidang` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `konveksis`
--

INSERT INTO `konveksis` (`id`, `no_po`, `customer`, `date`, `nama_pesanan`, `bidang`, `status`, `created_at`, `updated_at`) VALUES
(1, 'tempore', 'Witting PLC', '2024-09-16 02:35:08', 'nostrum', 'Konveksi - Abah Anam', 'next', '2024-12-09 21:01:45', '2024-12-09 21:01:45'),
(2, 'veniam', 'Huel and Sons', '2024-10-21 18:58:40', 'enim', 'Konveksi - Abah Anam', 'now', '2024-12-09 21:01:45', '2024-12-09 21:01:45'),
(3, 'vero', 'Beer Group', '2024-01-22 07:48:42', 'consequatur', 'Sepatu - Abah Hasan', 'now', '2024-12-09 21:01:45', '2024-12-09 21:01:45'),
(4, 'nihil', 'Williamson-Ortiz', '2024-05-23 11:19:03', 'totam', 'Konveksi - Alex', 'next', '2024-12-09 21:01:45', '2024-12-09 21:01:45'),
(5, 'ipsam', 'Nitzsche-Legros', '2023-12-28 07:37:05', 'debitis', 'Konveksi - Abah Anam', 'next', '2024-12-09 21:01:45', '2024-12-09 21:01:45'),
(6, 'qui', 'Davis-Hackett', '2024-08-28 10:11:57', 'quia', 'Sepatu - Abah Hasan', 'now', '2024-12-09 21:01:45', '2024-12-09 21:01:45'),
(7, 'voluptates', 'Johnston, Kunde and Brown', '2024-10-14 03:43:19', 'est', 'Konveksi - Abah Anam', 'now', '2024-12-09 21:01:45', '2024-12-09 21:01:45'),
(8, 'nobis', 'Lueilwitz and Sons', '2024-10-02 00:18:42', 'illum', 'Konveksi - Abah Anam', 'next', '2024-12-09 21:01:45', '2024-12-09 21:01:45'),
(9, 'ut', 'Sauer-Hintz', '2024-06-24 02:42:26', 'et', 'Konveksi - Abah Anam', 'next', '2024-12-09 21:01:45', '2024-12-09 21:01:45'),
(10, 'voluptas', 'Tillman, Mayert and Christiansen', '2024-02-06 22:57:55', 'dolore', 'Konveksi - Abah Anam', 'next', '2024-12-09 21:01:45', '2024-12-09 21:01:45'),
(11, 'consequatur', 'Dickens-Becker', '2024-10-22 07:55:53', 'inventore', 'Konveksi - Alex', 'next', '2024-12-09 21:01:45', '2024-12-09 21:01:45'),
(12, 'sunt', 'Bechtelar, Baumbach and Bogan', '2023-12-20 19:32:48', 'id', 'Sepatu - Abah Hasan', 'now', '2024-12-09 21:01:45', '2024-12-09 21:01:45'),
(13, 'saepe', 'Cummerata, Hagenes and Reynolds', '2024-10-03 16:02:21', 'veritatis', 'Konveksi - Abah Anam', 'now', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(14, 'nostrum', 'Wisoky-Trantow', '2024-09-13 21:49:29', 'sed', 'Sepatu - Abah Hasan', 'next', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(15, 'et', 'Moen-Sporer', '2024-08-20 13:22:59', 'maiores', 'Konveksi - Alex', 'next', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(16, 'dolor', 'Zemlak, Marquardt and Hamill', '2024-10-09 08:12:25', 'aliquid', 'Sepatu - Abah Hasan', 'next', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(17, 'vitae', 'O\'Kon, Pollich and Torphy', '2024-01-11 06:01:39', 'qui', 'Sepatu - Abah Hasan', 'next', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(18, 'aut', 'Thiel, Russel and Walker', '2024-08-25 15:55:48', 'debitis', 'Konveksi - Alex', 'now', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(19, 'eius', 'Schiller LLC', '2024-07-04 20:06:02', 'ratione', 'Konveksi - Abah Anam', 'now', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(20, 'recusandae', 'Bernhard, Reynolds and Vandervort', '2024-10-18 06:28:17', 'et', 'Konveksi - Alex', 'now', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(21, 'rerum', 'Kozey, Mayert and Murazik', '2024-05-04 05:25:42', 'aliquam', 'Sepatu - Abah Hasan', 'now', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(22, 'impedit', 'Leuschke-Bergnaum', '2024-02-13 08:05:55', 'est', 'Konveksi - Alex', 'now', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(23, 'sit', 'Huel-Kunde', '2024-01-06 16:15:15', 'accusantium', 'Konveksi - Alex', 'next', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(24, 'eos', 'Collier-Klocko', '2024-03-03 17:05:35', 'labore', 'Sepatu - Abah Hasan', 'next', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(25, 'atque', 'Koepp, Ward and Bernier', '2024-03-01 14:07:17', 'aut', 'Sepatu - Abah Hasan', 'now', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(26, 'eligendi', 'Schumm-Hammes', '2024-01-02 09:06:17', 'id', 'Sepatu - Abah Hasan', 'next', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(27, 'non', 'Sipes-Jast', '2024-05-26 22:43:26', 'harum', 'Sepatu - Abah Hasan', 'now', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(28, 'voluptatibus', 'Rowe Inc', '2024-04-06 17:59:54', 'deleniti', 'Konveksi - Abah Anam', 'next', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(29, 'odit', 'Metz LLC', '2024-09-25 06:53:08', 'enim', 'Konveksi - Abah Anam', 'next', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(30, 'quis', 'Runte-Bogisich', '2024-07-19 03:06:37', 'harum', 'Sepatu - Abah Hasan', 'now', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(31, 'odio', 'Considine-Stokes', '2024-04-03 12:23:11', 'ipsa', 'Sepatu - Abah Hasan', 'next', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(32, 'quam', 'Crist-Fisher', '2024-09-22 23:00:52', 'nesciunt', 'Konveksi - Alex', 'next', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(33, 'officia', 'Hoeger, Mayert and Kovacek', '2024-10-10 17:38:08', 'voluptatem', 'Sepatu - Abah Hasan', 'next', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(34, 'fugiat', 'Wolf, Powlowski and Gerlach', '2024-11-04 04:20:48', 'praesentium', 'Konveksi - Alex', 'now', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(35, 'nisi', 'Greenfelder Ltd', '2024-11-05 09:49:16', 'quo', 'Sepatu - Abah Hasan', 'now', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(36, 'iure', 'Schulist-Quigley', '2024-03-03 02:13:26', 'rerum', 'Konveksi - Alex', 'now', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(37, 'hic', 'Wolf, Herzog and Bergstrom', '2024-02-29 22:34:50', 'ut', 'Konveksi - Abah Anam', 'next', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(38, 'culpa', 'Maggio, Botsford and Flatley', '2024-06-18 10:14:47', 'dolorum', 'Sepatu - Abah Hasan', 'next', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(39, 'ipsum', 'Adams Group', '2024-11-07 07:09:14', 'numquam', 'Konveksi - Alex', 'next', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(40, 'voluptatum', 'Jakubowski Group', '2024-08-14 16:08:23', 'quod', 'Sepatu - Abah Hasan', 'next', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(41, 'quisquam', 'Schneider PLC', '2024-03-25 20:47:23', 'consequatur', 'Konveksi - Alex', 'now', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(42, 'quae', 'Conn, Abernathy and Mills', '2024-08-31 19:31:10', 'at', 'Sepatu - Abah Hasan', 'now', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(43, 'neque', 'Borer and Sons', '2024-09-06 18:48:43', 'rem', 'Konveksi - Abah Anam', 'now', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(44, 'magnam', 'Kozey, King and Runolfsson', '2024-02-23 01:36:42', 'eveniet', 'Konveksi - Abah Anam', 'next', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(45, 'quo', 'Hickle, Wunsch and Wolf', '2024-03-12 13:36:36', 'quasi', 'Konveksi - Alex', 'next', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(46, 'laboriosam', 'O\'Kon, McGlynn and Kreiger', '2024-07-20 02:33:41', 'voluptate', 'Konveksi - Alex', 'next', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(47, 'vel', 'Dach-Huels', '2024-09-24 19:27:36', 'alias', 'Sepatu - Abah Hasan', 'next', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(48, 'explicabo', 'Roob-Grimes', '2024-12-07 10:28:59', 'aut', 'Sepatu - Abah Hasan', 'next', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(49, 'nesciunt', 'Kertzmann-Kling', '2024-07-04 04:52:58', 'incidunt', 'Konveksi - Alex', 'next', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(50, 'id', 'O\'Keefe, Wunsch and Will', '2024-01-31 17:07:22', 'neque', 'Konveksi - Abah Anam', 'now', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(51, 'minus', 'Orn, Witting and Hirthe', '2024-07-29 10:07:25', 'tempore', 'Sepatu - Abah Hasan', 'next', '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(52, 'labore', 'Lemke-Stehr', '2024-02-07 05:10:47', 'quia', 'Konveksi - Alex', 'next', '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(53, 'unde', 'Oberbrunner LLC', '2024-06-24 03:33:03', 'dolor', 'Konveksi - Alex', 'now', '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(54, 'ipsam', 'Abshire-Schuppe', '2024-07-22 11:14:26', 'nemo', 'Konveksi - Alex', 'next', '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(55, 'nostrum', 'Thiel Group', '2024-09-09 14:05:42', 'nisi', 'Sepatu - Abah Hasan', 'now', '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(56, 'nam', 'Schmidt Group', '2024-08-22 11:56:35', 'rerum', 'Sepatu - Abah Hasan', 'next', '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(57, 'vero', 'Dare LLC', '2024-08-06 22:55:52', 'voluptatem', 'Sepatu - Abah Hasan', 'now', '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(58, 'saepe', 'Murphy and Sons', '2024-09-03 12:49:59', 'ut', 'Konveksi - Abah Anam', 'now', '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(59, 'quo', 'Bayer, Quigley and Goodwin', '2024-07-19 10:20:33', 'ad', 'Sepatu - Abah Hasan', 'next', '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(60, 'ea', 'Daniel Ltd', '2024-08-14 17:59:04', 'inventore', 'Konveksi - Alex', 'next', '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(61, 'sed', 'Kris Ltd', '2024-11-04 16:23:22', 'fugiat', 'Sepatu - Abah Hasan', 'now', '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(62, 'ut', 'Kautzer-Beahan', '2024-05-31 15:16:35', 'ea', 'Konveksi - Alex', 'now', '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(63, 'corporis', 'Hegmann-Kshlerin', '2024-03-14 21:44:33', 'consequatur', 'Konveksi - Abah Anam', 'now', '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(64, 'et', 'Beatty-Greenfelder', '2024-08-29 20:03:36', 'molestias', 'Konveksi - Abah Anam', 'now', '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(65, 'ab', 'Morissette-Harvey', '2024-09-26 00:29:03', 'tempore', 'Konveksi - Abah Anam', 'now', '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(66, 'velit', 'Blanda, Purdy and Hagenes', '2024-08-31 08:21:51', 'reprehenderit', 'Konveksi - Abah Anam', 'next', '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(67, 'in', 'Mayert, Kassulke and Schowalter', '2024-11-02 19:52:12', 'ad', 'Sepatu - Abah Hasan', 'next', '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(68, 'quod', 'Stehr-Romaguera', '2024-02-03 10:10:35', 'quidem', 'Konveksi - Alex', 'next', '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(69, 'quia', 'Klein, Denesik and Rosenbaum', '2024-10-18 12:50:23', 'consequatur', 'Sepatu - Abah Hasan', 'now', '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(70, 'neque', 'Beahan PLC', '2024-05-04 06:34:55', 'voluptatem', 'Konveksi - Alex', 'now', '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(71, 'vitae', 'Luettgen LLC', '2024-01-25 23:02:11', 'unde', 'Konveksi - Alex', 'next', '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(72, 'consequatur', 'Bechtelar-Huel', '2024-07-04 17:05:42', 'sed', 'Sepatu - Abah Hasan', 'next', '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(73, 'nihil', 'Hintz, Casper and Wilkinson', '2024-06-27 07:24:45', 'natus', 'Sepatu - Abah Hasan', 'now', '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(74, 'quasi', 'Lockman, Hackett and Watsica', '2024-04-04 06:34:55', 'natus', 'Konveksi - Abah Anam', 'next', '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(75, 'molestiae', 'Reilly-Reynolds', '2024-04-23 04:35:44', 'fugiat', 'Konveksi - Alex', 'now', '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(76, 'praesentium', 'Kuhlman, Quitzon and Jaskolski', '2023-12-16 11:20:46', 'quia', 'Sepatu - Abah Hasan', 'now', '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(77, 'eligendi', 'Ebert PLC', '2023-12-19 13:41:11', 'perferendis', 'Sepatu - Abah Hasan', 'now', '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(78, 'voluptatibus', 'Bauch PLC', '2024-04-13 00:03:53', 'dolores', 'Konveksi - Abah Anam', 'next', '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(79, 'tempora', 'Ritchie Inc', '2024-03-15 04:24:11', 'illo', 'Konveksi - Alex', 'now', '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(80, 'suscipit', 'Carter-Schaden', '2024-10-15 00:14:44', 'et', 'Sepatu - Abah Hasan', 'next', '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(81, 'rerum', 'Little-Pouros', '2024-10-15 06:37:52', 'aliquid', 'Konveksi - Alex', 'now', '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(82, 'omnis', 'Shields-Lubowitz', '2023-12-20 20:00:00', 'sed', 'Sepatu - Abah Hasan', 'now', '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(83, 'perferendis', 'Bode, Stehr and Nader', '2024-04-05 01:00:48', 'amet', 'Konveksi - Alex', 'next', '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(84, 'sunt', 'Rath Ltd', '2024-03-31 21:33:17', 'quas', 'Sepatu - Abah Hasan', 'now', '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(85, 'dolorum', 'Denesik-Orn', '2024-05-17 22:01:49', 'sapiente', 'Konveksi - Abah Anam', 'next', '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(86, 'commodi', 'Farrell-Kub', '2024-12-10 10:17:43', 'voluptatem', 'Konveksi - Abah Anam', 'next', '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(87, 'voluptas', 'Mueller Inc', '2024-04-11 06:50:31', 'vel', 'Konveksi - Alex', 'now', '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(88, 'aut', 'Cremin, Lockman and Collins', '2024-04-08 13:11:35', 'reprehenderit', 'Sepatu - Abah Hasan', 'now', '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(89, 'accusamus', 'Becker Inc', '2024-10-31 14:25:14', 'vero', 'Sepatu - Abah Hasan', 'next', '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(90, 'sit', 'Nicolas, O\'Hara and Lehner', '2024-06-23 15:02:06', 'ea', 'Sepatu - Abah Hasan', 'now', '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(91, 'dolor', 'Kilback-Fadel', '2024-07-20 15:55:56', 'maxime', 'Konveksi - Abah Anam', 'now', '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(92, 'quas', 'Schneider-Goyette', '2024-10-24 18:28:39', 'rerum', 'Konveksi - Abah Anam', 'now', '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(93, 'est', 'Parisian, Wisoky and Green', '2024-03-13 10:31:59', 'modi', 'Sepatu - Abah Hasan', 'now', '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(94, 'tempore', 'Hartmann-Huels', '2023-12-22 16:56:16', 'incidunt', 'Konveksi - Alex', 'now', '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(95, 'rem', 'Ward and Sons', '2024-11-22 22:20:14', 'totam', 'Sepatu - Abah Hasan', 'now', '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(96, 'perspiciatis', 'Fadel-Wilkinson', '2024-05-10 19:20:17', 'qui', 'Konveksi - Abah Anam', 'next', '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(97, 'autem', 'Pacocha and Sons', '2024-11-12 08:45:46', 'sed', 'Sepatu - Abah Hasan', 'next', '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(98, 'facilis', 'Treutel, Upton and Runolfsdottir', '2024-07-27 10:10:18', 'vel', 'Konveksi - Alex', 'next', '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(99, 'ipsum', 'Romaguera and Sons', '2023-12-11 02:33:55', 'cumque', 'Konveksi - Abah Anam', 'now', '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(100, 'fuga', 'Torphy-Rippin', '2024-07-10 02:13:07', 'nemo', 'Konveksi - Alex', 'now', '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(101, 'inventore', 'Fadel and Sons', '2024-07-10 01:42:01', 'ex', 'Konveksi - Abah Anam', 'next', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(102, 'pariatur', 'Crona, Hermiston and Lubowitz', '2024-07-08 00:10:42', 'sapiente', 'Konveksi - Alex', 'now', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(103, 'dolores', 'Stroman, Rodriguez and Renner', '2024-01-06 02:09:49', 'vel', 'Sepatu - Abah Hasan', 'now', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(104, 'minus', 'Rempel, Johnson and O\'Kon', '2024-05-09 01:59:13', 'et', 'Konveksi - Abah Anam', 'next', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(105, 'provident', 'Champlin and Sons', '2024-08-03 02:17:28', 'dolor', 'Konveksi - Alex', 'next', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(106, 'ullam', 'Shields, Jenkins and Barrows', '2024-03-24 19:41:01', 'quo', 'Konveksi - Abah Anam', 'now', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(107, 'aut', 'Fisher-Langworth', '2024-05-24 16:04:46', 'dolor', 'Konveksi - Abah Anam', 'next', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(109, 'accusantium', 'Marvin, Lind and Bogan', '2024-04-08 20:34:35', 'repellendus', 'Konveksi - Alex', 'now', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(110, 'ratione', 'PT Garuda Food', '2023-12-21 17:00:00', 'fuga', 'Konveksi - Alex', 'now', '2024-12-09 21:33:24', '2024-12-10 00:54:57'),
(111, 'delectus', 'Wyman-Smith', '2024-11-05 21:10:57', 'excepturi', 'Konveksi - Alex', 'next', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(112, 'earum', 'Labadie and Sons', '2024-06-12 12:28:55', 'consectetur', 'Sepatu - Abah Hasan', 'next', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(113, 'perspiciatis', 'Schamberger PLC', '2024-09-12 18:45:50', 'atque', 'Konveksi - Alex', 'now', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(115, 'qui', 'Raynor, Schultz and Mosciski', '2024-11-20 02:50:29', 'non', 'Konveksi - Alex', 'next', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(116, 'ipsa', 'Hagenes, Schaden and Greenfelder', '2024-12-01 01:00:52', 'numquam', 'Konveksi - Abah Anam', 'now', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(117, 'id', 'Lindgren Ltd', '2024-09-04 10:20:35', 'aut', 'Konveksi - Abah Anam', 'next', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(118, 'consequatur', 'Waelchi, Weissnat and Langosh', '2024-04-25 12:48:29', 'officiis', 'Konveksi - Abah Anam', 'next', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(119, 'enim', 'Ferry LLC', '2023-12-19 00:38:49', 'consequatur', 'Konveksi - Abah Anam', 'now', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(120, 'voluptatem', 'Becker Ltd', '2024-12-03 06:19:27', 'id', 'Sepatu - Abah Hasan', 'next', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(121, 'dolorem', 'Lang, Kreiger and Bradtke', '2024-07-31 20:02:08', 'laudantium', 'Konveksi - Abah Anam', 'next', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(122, 'voluptatibus', 'Thompson, Stamm and Larkin', '2024-08-15 22:03:05', 'esse', 'Konveksi - Abah Anam', 'next', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(123, 'quidem', 'Batz, Considine and VonRueden', '2024-05-15 09:06:22', 'unde', 'Konveksi - Alex', 'now', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(124, 'et', 'Witting-Pfeffer', '2024-08-21 14:54:45', 'ducimus', 'Konveksi - Abah Anam', 'now', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(125, 'reiciendis', 'Doyle Inc', '2024-09-30 08:35:50', 'amet', 'Konveksi - Alex', 'next', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(126, 'eum', 'Streich-Kunze', '2024-09-15 17:00:48', 'autem', 'Sepatu - Abah Hasan', 'now', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(127, 'excepturi', 'Kassulke, Bashirian and Hamill', '2024-06-10 15:21:57', 'fuga', 'Sepatu - Abah Hasan', 'now', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(128, 'magnam', 'Olson Inc', '2024-04-15 18:47:35', 'qui', 'Konveksi - Abah Anam', 'now', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(129, 'itaque', 'Cruickshank-Wintheiser', '2024-04-21 00:47:03', 'commodi', 'Konveksi - Abah Anam', 'now', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(130, 'cumque', 'Lueilwitz, Hills and Berge', '2024-01-07 10:01:03', 'quia', 'Konveksi - Alex', 'next', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(131, 'assumenda', 'Flatley Inc', '2023-12-18 15:58:22', 'eum', 'Konveksi - Alex', 'next', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(132, 'maiores', 'Veum-Schuster', '2024-02-28 13:47:53', 'ut', 'Konveksi - Alex', 'now', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(133, 'esse', 'Hansen-Thiel', '2024-11-20 06:06:05', 'numquam', 'Konveksi - Abah Anam', 'next', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(134, 'libero', 'Murphy Inc', '2024-11-10 22:29:33', 'neque', 'Konveksi - Abah Anam', 'now', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(135, 'velit', 'Runte-Wuckert', '2024-10-28 23:31:09', 'error', 'Konveksi - Abah Anam', 'now', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(136, 'corrupti', 'Senger Ltd', '2024-03-03 15:27:08', 'atque', 'Konveksi - Abah Anam', 'now', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(137, 'ad', 'Grimes-Hickle', '2024-09-05 18:09:36', 'non', 'Konveksi - Alex', 'next', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(138, 'eaque', 'Russel Inc', '2023-12-23 19:56:56', 'accusantium', 'Sepatu - Abah Hasan', 'now', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(139, 'ut', 'Schroeder, Breitenberg and Graham', '2024-11-27 15:11:20', 'delectus', 'Sepatu - Abah Hasan', 'next', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(140, 'necessitatibus', 'Zieme, Buckridge and Weissnat', '2024-01-23 05:20:04', 'molestias', 'Sepatu - Abah Hasan', 'next', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(141, 'aliquid', 'Bauch LLC', '2024-02-27 20:29:39', 'deserunt', 'Sepatu - Abah Hasan', 'now', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(142, 'placeat', 'Hilpert LLC', '2024-10-12 05:48:24', 'ab', 'Konveksi - Abah Anam', 'next', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(143, 'dicta', 'Lueilwitz, Green and Schroeder', '2024-08-08 19:44:40', 'esse', 'Sepatu - Abah Hasan', 'next', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(144, 'rem', 'Johns, Corwin and Balistreri', '2024-10-05 15:57:29', 'occaecati', 'Konveksi - Abah Anam', 'next', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(145, 'suscipit', 'Johnson, Corwin and Gleichner', '2024-04-19 00:12:28', 'non', 'Konveksi - Alex', 'next', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(146, 'minima', 'Purdy-Lakin', '2024-01-12 00:39:07', 'iste', 'Konveksi - Alex', 'next', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(147, 'voluptates', 'Boyle-Hettinger', '2024-06-27 05:43:39', 'magni', 'Konveksi - Alex', 'now', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(148, 'debitis', 'Lehner-Quitzon', '2024-12-11 08:52:26', 'corporis', 'Sepatu - Abah Hasan', 'now', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(149, 'officia', 'Jones-O\'Kon', '2024-03-29 04:55:08', 'qui', 'Sepatu - Abah Hasan', 'now', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(150, 'perferendis', 'Powlowski-Yost', '2024-02-11 18:58:44', 'autem', 'Konveksi - Alex', 'now', '2024-12-09 21:33:24', '2024-12-09 21:33:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konveksi_progress`
--

CREATE TABLE `konveksi_progress` (
  `id` bigint UNSIGNED NOT NULL,
  `konveksi_id` bigint UNSIGNED NOT NULL,
  `progress` int NOT NULL DEFAULT '0',
  `desc` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `konveksi_progress`
--

INSERT INTO `konveksi_progress` (`id`, `konveksi_id`, `progress`, `desc`, `photo`, `created_at`, `updated_at`) VALUES
(1, 6, 57, 'Veniam earum dignissimos quia maiores molestiae.', 'https://via.placeholder.com/640x480.png/009999?text=fuga', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(2, 48, 51, 'Neque eveniet ut sit nesciunt asperiores qui vel.', 'https://via.placeholder.com/640x480.png/00ff88?text=deserunt', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(3, 43, 79, 'Quae deserunt et adipisci unde mollitia.', 'https://via.placeholder.com/640x480.png/008888?text=ea', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(4, 29, 11, 'Repellendus consequatur harum veniam tempora veniam maiores autem.', 'https://via.placeholder.com/640x480.png/0077ff?text=quam', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(5, 7, 30, 'Facilis perspiciatis possimus occaecati iste ullam adipisci magnam.', 'https://via.placeholder.com/640x480.png/0066ee?text=eveniet', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(6, 17, 8, 'Consequatur ex cum ab explicabo.', 'https://via.placeholder.com/640x480.png/0022ff?text=excepturi', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(7, 37, 65, 'Aut eos harum molestias tempore non ut eveniet.', 'https://via.placeholder.com/640x480.png/008833?text=et', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(8, 21, 70, 'Atque illo sit blanditiis quia.', 'https://via.placeholder.com/640x480.png/00bbff?text=quia', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(9, 33, 68, 'Est porro minus illo labore cumque dolor.', 'https://via.placeholder.com/640x480.png/002244?text=autem', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(10, 37, 58, 'Cumque nulla et et quisquam molestiae repellendus.', 'https://via.placeholder.com/640x480.png/000055?text=est', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(11, 8, 84, 'Autem nostrum ad et ut.', 'https://via.placeholder.com/640x480.png/0066cc?text=et', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(12, 45, 42, 'Sapiente illo cupiditate temporibus.', 'https://via.placeholder.com/640x480.png/00ddee?text=blanditiis', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(13, 9, 15, 'Praesentium dolorem non quisquam ipsa numquam veritatis.', 'https://via.placeholder.com/640x480.png/007711?text=odit', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(14, 18, 13, 'Repellat maxime explicabo nostrum.', 'https://via.placeholder.com/640x480.png/00bbaa?text=quia', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(15, 18, 86, 'Laborum omnis ullam tempora aperiam.', 'https://via.placeholder.com/640x480.png/004444?text=non', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(16, 47, 39, 'Voluptatibus sed qui non aut nihil molestiae.', 'https://via.placeholder.com/640x480.png/0055dd?text=nobis', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(17, 31, 61, 'Voluptas hic ipsam iste tempore dolor ut facilis.', 'https://via.placeholder.com/640x480.png/009988?text=autem', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(18, 21, 27, 'Et corrupti excepturi iure molestias ea aliquid.', 'https://via.placeholder.com/640x480.png/007755?text=aut', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(19, 13, 16, 'Qui ut quibusdam quis quia rerum blanditiis aut.', 'https://via.placeholder.com/640x480.png/00dd33?text=a', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(20, 8, 68, 'Ratione quo aliquam fugit voluptas perferendis ut dolorem.', 'https://via.placeholder.com/640x480.png/001199?text=est', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(21, 26, 19, 'Amet neque ex ut harum amet.', 'https://via.placeholder.com/640x480.png/0066ee?text=quasi', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(22, 11, 26, 'Nostrum rem cupiditate neque illum non.', 'https://via.placeholder.com/640x480.png/006644?text=labore', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(23, 39, 90, 'Neque necessitatibus cum et.', 'https://via.placeholder.com/640x480.png/006644?text=consectetur', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(24, 16, 0, 'Blanditiis quia dolores quia sed.', 'https://via.placeholder.com/640x480.png/00bb99?text=ipsam', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(25, 50, 32, 'Repudiandae suscipit iure dolores cupiditate dolorum ratione.', 'https://via.placeholder.com/640x480.png/003300?text=ab', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(26, 12, 32, 'Voluptatem ut expedita deleniti eius.', 'https://via.placeholder.com/640x480.png/009944?text=debitis', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(27, 9, 14, 'Odio aut ipsa delectus dolor et natus quia.', 'https://via.placeholder.com/640x480.png/0000ee?text=enim', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(28, 40, 9, 'Nesciunt sit eum consequuntur iste fugiat placeat pariatur.', 'https://via.placeholder.com/640x480.png/0088aa?text=ad', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(29, 30, 21, 'Quae et sed blanditiis maxime.', 'https://via.placeholder.com/640x480.png/0011dd?text=et', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(30, 22, 13, 'In enim veritatis in eius.', 'https://via.placeholder.com/640x480.png/00aacc?text=et', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(31, 13, 90, 'Sed aliquam cupiditate pariatur aperiam.', 'https://via.placeholder.com/640x480.png/00bb55?text=esse', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(32, 14, 11, 'Hic beatae quisquam sint quidem tenetur sapiente numquam.', 'https://via.placeholder.com/640x480.png/00bbdd?text=et', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(33, 50, 15, 'Autem dolorem laborum velit iure dolores beatae quam.', 'https://via.placeholder.com/640x480.png/00eeff?text=ipsa', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(34, 36, 84, 'Ea harum quis velit hic blanditiis.', 'https://via.placeholder.com/640x480.png/001133?text=aut', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(35, 35, 39, 'Est eaque sed magnam vitae et.', 'https://via.placeholder.com/640x480.png/00dd66?text=minima', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(36, 45, 95, 'Velit asperiores aperiam quis sed sunt.', 'https://via.placeholder.com/640x480.png/0000cc?text=assumenda', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(37, 38, 79, 'Perferendis modi voluptas omnis ut itaque sed molestias tempora.', 'https://via.placeholder.com/640x480.png/002266?text=maxime', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(38, 45, 63, 'Quod rerum magni ipsa sit.', 'https://via.placeholder.com/640x480.png/009900?text=voluptatem', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(39, 7, 13, 'Autem vel expedita sapiente iure alias.', 'https://via.placeholder.com/640x480.png/0011bb?text=neque', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(40, 29, 47, 'Et velit in ipsam et iusto doloremque.', 'https://via.placeholder.com/640x480.png/003355?text=alias', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(41, 35, 100, 'Qui totam quas est et asperiores dolorum omnis.', 'https://via.placeholder.com/640x480.png/006688?text=ut', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(42, 9, 2, 'Saepe amet minus aspernatur vel repudiandae facere voluptatem.', 'https://via.placeholder.com/640x480.png/005577?text=dolor', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(43, 37, 72, 'Laborum porro ut et aspernatur sed voluptas optio ratione.', 'https://via.placeholder.com/640x480.png/008866?text=qui', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(44, 28, 95, 'Atque commodi assumenda adipisci sed vero.', 'https://via.placeholder.com/640x480.png/00bb44?text=quia', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(45, 27, 28, 'Consequatur nemo consequuntur quaerat sunt.', 'https://via.placeholder.com/640x480.png/00aa00?text=ipsum', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(46, 42, 79, 'Minima aliquid architecto facilis eligendi sapiente at voluptatem cupiditate.', 'https://via.placeholder.com/640x480.png/00aadd?text=neque', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(47, 2, 23, 'Provident quibusdam laudantium et fugiat iste sed dolorem.', 'https://via.placeholder.com/640x480.png/00bbcc?text=molestias', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(48, 36, 86, 'Et quae voluptas rerum ea illo similique.', 'https://via.placeholder.com/640x480.png/00bb77?text=enim', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(49, 25, 6, 'Autem nam autem incidunt quod.', 'https://via.placeholder.com/640x480.png/000099?text=accusamus', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(50, 20, 42, 'Quasi fuga sit omnis et officiis.', 'https://via.placeholder.com/640x480.png/005500?text=soluta', '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(51, 71, 29, 'Consectetur rerum omnis dolor eum.', 'https://via.placeholder.com/640x480.png/0000ff?text=nobis', '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(52, 49, 68, 'Soluta aperiam sunt ipsum.', 'https://via.placeholder.com/640x480.png/00ff11?text=aut', '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(53, 55, 71, 'Et culpa consequatur veniam rem voluptates et.', 'https://via.placeholder.com/640x480.png/0055bb?text=odio', '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(54, 75, 43, 'Magni laboriosam rerum iusto aut aut.', 'https://via.placeholder.com/640x480.png/0033ff?text=illo', '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(55, 39, 76, 'Delectus eos magni qui quibusdam adipisci.', 'https://via.placeholder.com/640x480.png/007744?text=quo', '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(56, 29, 4, 'Velit porro deleniti magni autem harum omnis ullam molestiae.', 'https://via.placeholder.com/640x480.png/00dd11?text=illum', '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(57, 50, 36, 'Iure voluptatibus laboriosam molestiae provident et.', 'https://via.placeholder.com/640x480.png/00dddd?text=sint', '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(58, 14, 42, 'Et ut ut soluta ut porro.', 'https://via.placeholder.com/640x480.png/00ee22?text=officia', '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(59, 18, 12, 'Ratione labore ipsum harum quae sed ducimus.', 'https://via.placeholder.com/640x480.png/000055?text=quo', '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(60, 72, 71, 'Non corporis exercitationem ut in.', 'https://via.placeholder.com/640x480.png/000066?text=rerum', '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(61, 72, 39, 'Ex impedit et maiores aperiam est sit.', 'https://via.placeholder.com/640x480.png/005577?text=vero', '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(62, 13, 70, 'Nemo dolorum non tenetur corporis totam ut.', 'https://via.placeholder.com/640x480.png/004411?text=libero', '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(63, 64, 45, 'Sunt cupiditate quaerat dolorem ut illo.', 'https://via.placeholder.com/640x480.png/0077dd?text=quisquam', '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(64, 32, 75, 'Quia voluptas quis aliquid minima quas qui.', 'https://via.placeholder.com/640x480.png/00bb66?text=quidem', '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(65, 82, 19, 'Corrupti et ea nihil deleniti optio.', 'https://via.placeholder.com/640x480.png/004411?text=aut', '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(66, 2, 95, 'Et sit hic corrupti.', 'https://via.placeholder.com/640x480.png/007722?text=et', '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(67, 32, 72, 'Facilis totam nisi harum atque cumque iure architecto.', 'https://via.placeholder.com/640x480.png/009977?text=porro', '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(68, 91, 18, 'Est facere sit dolores soluta.', 'https://via.placeholder.com/640x480.png/00cc66?text=vel', '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(69, 35, 25, 'Voluptatem et quod omnis cum alias eum rem.', 'https://via.placeholder.com/640x480.png/00ddcc?text=corrupti', '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(70, 35, 32, 'Alias quaerat voluptas voluptas laboriosam occaecati.', 'https://via.placeholder.com/640x480.png/00dd00?text=eos', '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(71, 8, 67, 'Distinctio quibusdam asperiores tempore sunt voluptatibus qui.', 'https://via.placeholder.com/640x480.png/0099dd?text=architecto', '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(72, 19, 99, 'Et id similique repellendus rem.', 'https://via.placeholder.com/640x480.png/007766?text=et', '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(73, 17, 64, 'Sunt numquam autem sapiente.', 'https://via.placeholder.com/640x480.png/00cc55?text=architecto', '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(74, 58, 46, 'Hic rerum minus saepe voluptate qui ad esse.', 'https://via.placeholder.com/640x480.png/00aa77?text=ipsam', '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(75, 5, 21, 'Quisquam ullam sunt aperiam quae possimus.', 'https://via.placeholder.com/640x480.png/00ffcc?text=modi', '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(76, 94, 73, 'Consequatur aut atque atque consequatur omnis reprehenderit cupiditate deserunt.', 'https://via.placeholder.com/640x480.png/008877?text=dolore', '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(77, 57, 100, 'Ut aut placeat rem praesentium.', 'https://via.placeholder.com/640x480.png/00ccaa?text=et', '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(78, 47, 77, 'Exercitationem distinctio rerum voluptatem facilis quo voluptates neque.', 'https://via.placeholder.com/640x480.png/00eeff?text=commodi', '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(79, 85, 50, 'Autem ipsa ducimus sequi odit laborum voluptatibus aut.', 'https://via.placeholder.com/640x480.png/00bb55?text=laboriosam', '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(80, 98, 55, 'Officia impedit temporibus placeat repudiandae libero quia.', 'https://via.placeholder.com/640x480.png/00ddbb?text=et', '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(81, 32, 56, 'Ut accusamus voluptatum officia sint reiciendis odio.', 'https://via.placeholder.com/640x480.png/00ff55?text=aut', '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(82, 76, 85, 'Iusto aut similique commodi ut similique minima odio magnam.', 'https://via.placeholder.com/640x480.png/006688?text=dolor', '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(83, 78, 85, 'Laboriosam inventore quis exercitationem at perferendis impedit facere.', 'https://via.placeholder.com/640x480.png/000033?text=voluptatem', '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(84, 63, 38, 'Eius a temporibus et voluptates.', 'https://via.placeholder.com/640x480.png/00ccee?text=quis', '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(85, 74, 38, 'Voluptates iure ea eum eos.', 'https://via.placeholder.com/640x480.png/00cc11?text=facilis', '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(86, 76, 10, 'Tempora aut maxime ipsam at nam molestiae sapiente.', 'https://via.placeholder.com/640x480.png/009922?text=voluptatem', '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(87, 22, 2, 'Iste enim quo odio odio sit et.', 'https://via.placeholder.com/640x480.png/007799?text=vel', '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(88, 20, 4, 'Voluptas doloremque soluta aliquid accusamus assumenda officia similique.', 'https://via.placeholder.com/640x480.png/0011cc?text=eligendi', '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(89, 35, 38, 'Totam corrupti molestias soluta reiciendis laudantium odit quia.', 'https://via.placeholder.com/640x480.png/00ff77?text=veniam', '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(90, 20, 33, 'Libero est qui quo et autem perspiciatis velit.', 'https://via.placeholder.com/640x480.png/00ff44?text=eius', '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(91, 10, 60, 'Adipisci maiores ex rem quasi doloribus asperiores fugit.', 'https://via.placeholder.com/640x480.png/0022ff?text=iure', '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(92, 28, 34, 'Unde eos neque officiis sit at dolorem ea saepe.', 'https://via.placeholder.com/640x480.png/0099ff?text=et', '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(93, 57, 90, 'Soluta non esse pariatur.', 'https://via.placeholder.com/640x480.png/000055?text=quaerat', '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(94, 50, 4, 'Et nam quas sequi assumenda error molestiae.', 'https://via.placeholder.com/640x480.png/00eecc?text=ab', '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(95, 69, 9, 'Delectus omnis blanditiis non rerum dignissimos.', 'https://via.placeholder.com/640x480.png/0033ff?text=unde', '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(96, 51, 34, 'Atque similique asperiores voluptates dolorem maxime.', 'https://via.placeholder.com/640x480.png/00aadd?text=facilis', '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(97, 78, 35, 'Asperiores veritatis aspernatur ut quae omnis.', 'https://via.placeholder.com/640x480.png/005577?text=iure', '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(98, 8, 18, 'Quia nihil placeat et quo quidem sint.', 'https://via.placeholder.com/640x480.png/00ff33?text=voluptatem', '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(99, 11, 94, 'Explicabo quia ad at sunt maiores earum.', 'https://via.placeholder.com/640x480.png/00dd11?text=est', '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(100, 40, 32, 'Odit voluptatem est ipsam cumque optio quisquam ullam.', 'https://via.placeholder.com/640x480.png/00ddff?text=autem', '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(101, 62, 12, 'Tenetur aliquid vitae error nobis.', 'https://via.placeholder.com/640x480.png/0022ff?text=mollitia', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(102, 57, 33, 'Iste aut ut illum voluptas eaque ad cumque.', 'https://via.placeholder.com/640x480.png/0022cc?text=nemo', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(103, 4, 71, 'Minus amet et ut quae.', 'https://via.placeholder.com/640x480.png/00bb88?text=reprehenderit', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(104, 87, 58, 'Est modi et placeat rem eos.', 'https://via.placeholder.com/640x480.png/00aa11?text=earum', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(105, 92, 84, 'Laudantium consequuntur ut deserunt et.', 'https://via.placeholder.com/640x480.png/00bb77?text=quia', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(106, 121, 58, 'Ut ab minima laborum earum non.', 'https://via.placeholder.com/640x480.png/006611?text=sint', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(107, 74, 64, 'Delectus dolor corrupti explicabo eligendi.', 'https://via.placeholder.com/640x480.png/00ffcc?text=error', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(108, 70, 5, 'Eveniet ut quidem consequatur alias iure vitae.', 'https://via.placeholder.com/640x480.png/0044ff?text=officiis', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(109, 105, 13, 'Et ducimus nam aut corrupti voluptatem.', 'https://via.placeholder.com/640x480.png/0022ff?text=corporis', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(110, 41, 93, 'Maiores perspiciatis quas qui est est tenetur.', 'https://via.placeholder.com/640x480.png/001122?text=ut', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(111, 62, 85, 'Reprehenderit exercitationem illum voluptates illum.', 'https://via.placeholder.com/640x480.png/0000aa?text=laudantium', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(112, 57, 87, 'Hic nobis quis et commodi dignissimos.', 'https://via.placeholder.com/640x480.png/009966?text=ad', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(113, 41, 95, 'Iure temporibus eaque est eaque repellendus.', 'https://via.placeholder.com/640x480.png/0000dd?text=eius', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(114, 137, 52, 'Aperiam vero ea accusamus atque.', 'https://via.placeholder.com/640x480.png/003322?text=quasi', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(115, 22, 46, 'Doloribus vero harum exercitationem ut.', 'https://via.placeholder.com/640x480.png/003377?text=quia', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(116, 49, 68, 'Harum magnam cupiditate et voluptatem quo.', 'https://via.placeholder.com/640x480.png/00ee00?text=eos', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(117, 15, 100, 'Accusamus nihil fugiat id nihil eum iusto aut numquam.', 'https://via.placeholder.com/640x480.png/0033cc?text=architecto', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(118, 49, 42, 'Quis rerum modi sunt provident dolor veniam iusto.', 'https://via.placeholder.com/640x480.png/009933?text=ab', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(119, 123, 59, 'Aut quia maxime ea.', 'https://via.placeholder.com/640x480.png/00ccdd?text=quis', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(120, 55, 80, 'Deleniti voluptatem et ipsam sit.', 'https://via.placeholder.com/640x480.png/003377?text=ducimus', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(121, 128, 26, 'Laboriosam et iure nostrum.', 'https://via.placeholder.com/640x480.png/001111?text=possimus', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(122, 99, 0, 'Et tempore optio dolorem doloribus officiis expedita.', 'https://via.placeholder.com/640x480.png/000044?text=non', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(123, 80, 78, 'Rerum rerum sed assumenda sit non eveniet.', 'https://via.placeholder.com/640x480.png/005599?text=repellat', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(124, 43, 39, 'Iure quo quos non labore dolore quasi.', 'https://via.placeholder.com/640x480.png/0000dd?text=hic', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(127, 2, 35, 'Sed sit et aliquid.', 'https://via.placeholder.com/640x480.png/0011dd?text=natus', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(128, 3, 8, 'Adipisci soluta sequi recusandae est.', 'https://via.placeholder.com/640x480.png/003333?text=nihil', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(129, 81, 28, 'Neque quis voluptatem ducimus.', 'https://via.placeholder.com/640x480.png/00aaee?text=ut', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(130, 91, 95, 'Quaerat laudantium quis at iure.', 'https://via.placeholder.com/640x480.png/005522?text=et', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(131, 14, 18, 'Accusantium labore quibusdam perferendis unde modi.', 'https://via.placeholder.com/640x480.png/007755?text=tempore', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(132, 85, 16, 'Distinctio ratione dicta explicabo voluptatem.', 'https://via.placeholder.com/640x480.png/00aacc?text=voluptas', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(133, 143, 66, 'Aspernatur ipsum minima culpa deleniti quidem.', 'https://via.placeholder.com/640x480.png/00dd00?text=quasi', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(134, 26, 87, 'Vel eius fugiat commodi deserunt.', 'https://via.placeholder.com/640x480.png/0088ee?text=eum', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(135, 78, 23, 'Laboriosam dolorem et nihil deserunt ea maxime voluptas.', 'https://via.placeholder.com/640x480.png/003311?text=in', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(137, 126, 20, 'Nesciunt officia excepturi corrupti qui quibusdam aut ipsum.', 'https://via.placeholder.com/640x480.png/002299?text=aut', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(138, 64, 89, 'Et maxime aperiam ea temporibus.', 'https://via.placeholder.com/640x480.png/00dd88?text=ipsa', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(139, 123, 60, 'Aut neque tempora consequatur adipisci.', 'https://via.placeholder.com/640x480.png/0055bb?text=quisquam', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(140, 126, 33, 'Et est consequatur facilis est praesentium laudantium.', 'https://via.placeholder.com/640x480.png/0044bb?text=molestias', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(141, 69, 47, 'Sit aut sint aliquam ducimus quisquam magnam qui similique.', 'https://via.placeholder.com/640x480.png/00ee77?text=labore', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(142, 65, 12, 'Alias omnis aut deserunt pariatur qui consequatur aut aut.', 'https://via.placeholder.com/640x480.png/000033?text=accusantium', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(143, 43, 10, 'Iusto maiores ut pariatur eaque explicabo consequatur.', 'https://via.placeholder.com/640x480.png/00cc33?text=sit', '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(144, 45, 50, 'Magni voluptas distinctio possimus.', 'https://via.placeholder.com/640x480.png/00bb66?text=et', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(145, 104, 54, 'Facilis adipisci vel velit eligendi est unde.', 'https://via.placeholder.com/640x480.png/00bbbb?text=nostrum', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(146, 139, 18, 'Perferendis blanditiis modi dolor ut neque et numquam.', 'https://via.placeholder.com/640x480.png/004455?text=in', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(147, 100, 1, 'Rerum totam doloremque quis a vel veniam ut asperiores.', 'https://via.placeholder.com/640x480.png/001177?text=beatae', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(148, 51, 32, 'Et et totam praesentium quia.', 'https://via.placeholder.com/640x480.png/00dd00?text=blanditiis', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(149, 139, 5, 'Veritatis odit et sit consequatur.', 'https://via.placeholder.com/640x480.png/00ffff?text=quos', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(150, 53, 100, 'Consequatur porro aut eligendi eum quia architecto deleniti.', 'https://via.placeholder.com/640x480.png/00bb77?text=quas', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(151, 143, 21, 'Quas earum qui quam nisi provident voluptatem qui.', 'https://via.placeholder.com/640x480.png/000033?text=qui', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(152, 65, 21, 'Nihil quae illo eius ab unde.', 'https://via.placeholder.com/640x480.png/00bbaa?text=optio', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(153, 39, 6, 'Sit vitae sit debitis voluptas voluptatem nihil voluptas.', 'https://via.placeholder.com/640x480.png/0044ee?text=quo', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(154, 75, 76, 'Non deleniti odio molestiae quasi et explicabo.', 'https://via.placeholder.com/640x480.png/0088cc?text=qui', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(155, 143, 72, 'Dolorum rem nam laudantium incidunt dolores est non.', 'https://via.placeholder.com/640x480.png/009911?text=quis', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(156, 71, 90, 'Hic iusto earum harum.', 'https://via.placeholder.com/640x480.png/000077?text=eveniet', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(157, 7, 40, 'Placeat aut ea autem dolores repellat.', 'https://via.placeholder.com/640x480.png/00dddd?text=quia', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(158, 65, 35, 'Dignissimos animi laborum quibusdam nobis et modi.', 'https://via.placeholder.com/640x480.png/009911?text=omnis', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(159, 15, 56, 'Consequatur repudiandae voluptatem aut ut autem iusto.', 'https://via.placeholder.com/640x480.png/009944?text=qui', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(160, 128, 83, 'Voluptatibus neque nobis quos fugit eligendi.', 'https://via.placeholder.com/640x480.png/00ddcc?text=maxime', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(162, 128, 76, 'Non ipsam et rerum minus.', 'https://via.placeholder.com/640x480.png/009999?text=autem', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(163, 60, 38, 'Saepe amet non ut officia perferendis.', 'https://via.placeholder.com/640x480.png/00bbff?text=maiores', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(164, 125, 49, 'Error quasi doloremque omnis veritatis.', 'https://via.placeholder.com/640x480.png/0022cc?text=quis', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(165, 138, 6, 'Ullam suscipit ut natus consectetur.', 'https://via.placeholder.com/640x480.png/0011aa?text=quod', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(166, 71, 33, 'Perspiciatis qui quae deleniti necessitatibus.', 'https://via.placeholder.com/640x480.png/004400?text=numquam', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(167, 146, 15, 'Est nam ut voluptatem et perferendis voluptate.', 'https://via.placeholder.com/640x480.png/00ccaa?text=debitis', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(168, 57, 96, 'Laboriosam voluptates sapiente expedita omnis non.', 'https://via.placeholder.com/640x480.png/00aacc?text=beatae', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(169, 105, 24, 'Voluptatem quibusdam cum at et nam qui voluptatibus qui.', 'https://via.placeholder.com/640x480.png/006633?text=non', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(170, 19, 22, 'Cumque provident quo mollitia aperiam optio est architecto commodi.', 'https://via.placeholder.com/640x480.png/0000ee?text=distinctio', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(171, 37, 42, 'Ex explicabo in facilis impedit quos ab doloribus.', 'https://via.placeholder.com/640x480.png/00eeee?text=quaerat', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(172, 140, 1, 'Ut et laborum aut fuga.', 'https://via.placeholder.com/640x480.png/006622?text=iste', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(173, 15, 13, 'Quia minima voluptatem quis illo debitis temporibus in consectetur.', 'https://via.placeholder.com/640x480.png/001166?text=eum', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(174, 118, 12, 'Quia in esse ut incidunt at.', 'https://via.placeholder.com/640x480.png/003399?text=repellendus', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(175, 23, 13, 'Est dolorem culpa quia facilis cumque provident.', 'https://via.placeholder.com/640x480.png/0011ee?text=nihil', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(176, 73, 39, 'Enim explicabo repellendus aliquid assumenda perspiciatis ad sint.', 'https://via.placeholder.com/640x480.png/0033dd?text=natus', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(177, 89, 42, 'Nihil quam unde temporibus labore cum quas.', 'https://via.placeholder.com/640x480.png/00cc55?text=blanditiis', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(178, 95, 82, 'Eveniet officiis qui similique quo.', 'https://via.placeholder.com/640x480.png/000077?text=ut', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(179, 103, 94, 'Facilis dicta laborum eius voluptatum non vero.', 'https://via.placeholder.com/640x480.png/002233?text=omnis', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(180, 46, 20, 'Nihil aut et et ut eum id unde.', 'https://via.placeholder.com/640x480.png/00aaaa?text=mollitia', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(181, 77, 40, 'Maxime minus expedita est cupiditate cum.', 'https://via.placeholder.com/640x480.png/00cc99?text=temporibus', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(182, 39, 48, 'Consequatur natus ipsum debitis voluptatem non sed praesentium.', 'https://via.placeholder.com/640x480.png/0055aa?text=repellat', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(183, 100, 42, 'Sequi odit corrupti reprehenderit recusandae ducimus.', 'https://via.placeholder.com/640x480.png/002266?text=tenetur', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(184, 25, 69, 'Ut commodi nobis commodi quos ipsam sint itaque.', 'https://via.placeholder.com/640x480.png/0066dd?text=non', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(185, 12, 93, 'Sint quia qui modi sapiente non commodi.', 'https://via.placeholder.com/640x480.png/00bb88?text=eaque', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(186, 149, 94, 'Voluptates est qui ex voluptatem ad et perferendis.', 'https://via.placeholder.com/640x480.png/00dd22?text=dicta', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(187, 60, 51, 'Impedit et et possimus.', 'https://via.placeholder.com/640x480.png/00dd33?text=culpa', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(188, 97, 58, 'Eligendi aut est quasi.', 'https://via.placeholder.com/640x480.png/0099bb?text=rerum', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(189, 57, 97, 'Exercitationem est voluptatibus facilis explicabo hic.', 'https://via.placeholder.com/640x480.png/00ff44?text=explicabo', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(190, 93, 27, 'Odio qui est quaerat vitae occaecati dolorum sequi.', 'https://via.placeholder.com/640x480.png/003322?text=qui', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(191, 140, 79, 'Ut consequatur iure minus animi autem.', 'https://via.placeholder.com/640x480.png/00cc99?text=iusto', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(192, 36, 65, 'Ut est reiciendis fugiat suscipit occaecati tempore.', 'https://via.placeholder.com/640x480.png/0011cc?text=aut', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(193, 124, 29, 'Molestiae sit tenetur eligendi laudantium nobis.', 'https://via.placeholder.com/640x480.png/0033dd?text=ut', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(194, 131, 68, 'Perspiciatis qui et eveniet doloribus est magnam molestiae amet.', 'https://via.placeholder.com/640x480.png/0022aa?text=aspernatur', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(195, 98, 95, 'Vel nihil deserunt repellat perferendis est perspiciatis quia unde.', 'https://via.placeholder.com/640x480.png/003300?text=id', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(196, 133, 53, 'Debitis rerum commodi et recusandae.', 'https://via.placeholder.com/640x480.png/00ee00?text=inventore', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(197, 70, 86, 'Ut sit distinctio voluptas inventore.', 'https://via.placeholder.com/640x480.png/00ffff?text=deleniti', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(198, 12, 84, 'Aut qui sed maxime nostrum.', 'https://via.placeholder.com/640x480.png/000011?text=consequatur', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(199, 150, 77, 'Quis error sint consequatur hic laborum.', 'https://via.placeholder.com/640x480.png/00bbcc?text=consequuntur', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(200, 121, 5, 'Quibusdam quae tempore id.', 'https://via.placeholder.com/640x480.png/00ffff?text=delectus', '2024-12-09 21:33:25', '2024-12-09 21:33:25'),
(203, 110, 10, 'Beli Bahan', 'bukti/930ivUC0WWy9bCJAcYr44cxl9JQXhCvYMmGDYl3z.png', '2024-12-10 00:41:02', '2024-12-10 00:41:02'),
(204, 110, 20, 'Potong Kain', 'bukti/o2oEA9G2Rr3Y7FmpazJzVTXg7ESFwtToDPsXmLaz.png', '2024-12-10 00:55:08', '2024-12-10 00:55:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_12_09_223535_create_konveksis_table', 2),
(5, '2024_12_09_223751_create_konveksi_progress_table', 2),
(6, '2024_12_09_224714_create_produksis_table', 3),
(7, '2024_12_10_230303_add_catatan_to_produksis_table', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `produksis`
--

CREATE TABLE `produksis` (
  `id` bigint UNSIGNED NOT NULL,
  `konveksi_id` bigint UNSIGNED DEFAULT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bahan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_order` int NOT NULL,
  `detail_aksesoris` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `catatan` text COLLATE utf8mb4_unicode_ci,
  `indent_bahan` int NOT NULL DEFAULT '0',
  `estimasi_produksi` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `produksis`
--

INSERT INTO `produksis` (`id`, `konveksi_id`, `model`, `bahan`, `jumlah_order`, `detail_aksesoris`, `catatan`, `indent_bahan`, `estimasi_produksi`, `created_at`, `updated_at`) VALUES
(2, 4, 'voluptatem', 'sequi', 35, 'Nihil molestiae hic hic.', 'asss', 8, 8, '2024-12-09 21:01:46', '2024-12-10 16:10:13'),
(3, 49, 'omnis', 'veniam', 32, 'Natus incidunt est temporibus hic ratione laboriosam.', NULL, 25, 33, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(4, 4, 'deserunt', 'repellat', 76, 'Dolore dolores repellat dolorum sed ab.', NULL, 11, 57, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(5, 6, 'dolor', 'autem', 13, 'Sit numquam quis a saepe aperiam non est.', NULL, 11, 33, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(6, 46, 'enim', 'voluptas', 30, 'Itaque aut ut quibusdam et sunt animi alias.', NULL, 15, 10, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(7, 30, 'iste', 'et', 17, 'Debitis sit illo optio possimus doloribus debitis.', NULL, 27, 22, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(8, 34, 'at', 'dolor', 39, 'Omnis ut eum sint ut.', NULL, 17, 60, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(9, 50, 'qui', 'consequatur', 48, 'Consequuntur voluptate sunt quas consequuntur corrupti.', NULL, 12, 29, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(10, 12, 'et', 'iusto', 95, 'Nostrum necessitatibus ipsum cum natus porro aliquam voluptas.', NULL, 18, 45, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(11, 42, 'quod', 'officia', 33, 'Et placeat perferendis dolorum cupiditate nisi quia.', NULL, 5, 21, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(12, 29, 'nihil', 'vel', 47, 'Mollitia aut nostrum voluptatibus similique exercitationem consequatur et.', NULL, 22, 7, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(13, 39, 'quos', 'deserunt', 14, 'Sed asperiores aliquid occaecati maiores molestias et qui voluptas.', NULL, 15, 38, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(14, 23, 'laboriosam', 'laborum', 56, 'Quidem illo adipisci et natus dolorem aperiam.', NULL, 9, 13, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(15, 1, 'et', 'culpa', 92, 'Sit occaecati cumque veniam nihil consequuntur doloribus.', NULL, 17, 41, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(16, 5, 'quaerat', 'ipsam', 19, 'Eum unde officia pariatur et.', NULL, 23, 19, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(17, 15, 'est', 'fugit', 46, 'Voluptatibus reprehenderit aliquid libero rem molestiae in.', NULL, 22, 41, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(18, 16, 'rerum', 'quae', 98, 'Sit animi sunt molestias quam commodi.', NULL, 24, 42, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(19, 8, 'placeat', 'minus', 36, 'Sed asperiores quaerat reprehenderit et et dolorem culpa molestias.', NULL, 17, 7, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(20, 29, 'aspernatur', 'nisi', 90, 'Iure fuga doloribus est sint veritatis veniam.', NULL, 1, 29, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(21, 27, 'nam', 'eos', 42, 'Velit voluptatem aliquid repellat veritatis ab ut molestiae provident.', NULL, 16, 22, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(22, 27, 'velit', 'accusamus', 37, 'Sed explicabo qui hic ratione nulla sit.', NULL, 2, 29, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(23, 36, 'error', 'et', 68, 'Adipisci accusantium in aperiam tempore provident consequatur.', NULL, 22, 21, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(24, 9, 'odit', 'sapiente', 82, 'Quisquam exercitationem et omnis culpa.', NULL, 4, 36, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(25, 26, 'odit', 'odit', 40, 'Ut quis voluptatem magni non quis sequi repellat.', NULL, 22, 31, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(26, 11, 'sunt', 'et', 21, 'Quis non aperiam distinctio.', NULL, 14, 34, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(27, 41, 'dolor', 'totam', 91, 'Repudiandae amet quam et vel cupiditate ratione soluta.', NULL, 2, 29, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(28, 39, 'est', 'et', 88, 'Earum doloribus qui nihil atque laboriosam.', NULL, 13, 11, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(29, 27, 'et', 'sunt', 58, 'Earum nostrum et est molestiae pariatur impedit eligendi.', NULL, 6, 41, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(30, 23, 'facilis', 'repudiandae', 43, 'Eligendi ratione modi nesciunt repellat et.', NULL, 11, 58, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(31, 20, 'sit', 'molestiae', 88, 'Reprehenderit sed ducimus ex voluptas labore culpa.', NULL, 12, 26, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(32, 16, 'autem', 'possimus', 18, 'Impedit aut et et necessitatibus consequatur magnam accusantium.', NULL, 16, 59, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(33, 1, 'similique', 'maiores', 95, 'Accusamus labore officia voluptate ex qui sequi.', NULL, 13, 28, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(34, 28, 'molestiae', 'aut', 68, 'Et nemo nam quae accusantium quibusdam laborum.', NULL, 1, 1, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(35, 27, 'dolore', 'voluptatem', 40, 'Illum dignissimos quia dolorem.', NULL, 8, 30, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(36, 46, 'beatae', 'eos', 48, 'Dicta ullam ipsam ab excepturi explicabo.', NULL, 16, 33, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(37, 2, 'velit', 'alias', 78, 'Ipsum nisi consequatur fuga autem.', NULL, 10, 22, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(38, 19, 'ut', 'assumenda', 96, 'Consequatur velit sint necessitatibus enim.', NULL, 21, 12, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(39, 30, 'corrupti', 'aliquid', 82, 'Tempore nobis vero at vero excepturi.', NULL, 20, 4, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(40, 45, 'labore', 'amet', 85, 'Qui delectus quae laudantium sed labore.', NULL, 27, 5, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(41, 9, 'voluptatem', 'sit', 45, 'Et atque ut vitae necessitatibus.', NULL, 7, 29, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(42, 7, 'optio', 'enim', 98, 'Eveniet quibusdam rerum aperiam.', NULL, 27, 37, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(43, 49, 'aliquam', 'quisquam', 96, 'Et dolorem impedit et nisi et qui rerum ipsa.', NULL, 7, 24, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(44, 22, 'velit', 'sunt', 67, 'Optio placeat cum reiciendis recusandae nemo error similique.', NULL, 1, 18, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(45, 31, 'ipsam', 'quas', 73, 'Soluta aut maiores possimus et consectetur.', NULL, 12, 48, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(46, 36, 'qui', 'et', 21, 'Debitis quibusdam delectus eos fugiat dicta provident consequuntur.', NULL, 6, 26, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(47, 36, 'aliquid', 'nulla', 71, 'Et sint cum dolorem perspiciatis atque harum.', NULL, 13, 55, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(48, 23, 'quae', 'qui', 28, 'Corrupti rerum natus veniam neque similique aut perferendis.', NULL, 26, 36, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(49, 32, 'distinctio', 'quis', 86, 'Nulla voluptates molestias cum minima.', NULL, 16, 54, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(50, 2, 'tenetur', 'dicta', 98, 'Eaque dicta est sequi quisquam voluptatem nisi.', NULL, 27, 58, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(51, 31, 'aut', 'debitis', 28, 'Repudiandae sapiente sequi ullam mollitia et ducimus beatae.', NULL, 1, 35, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(52, 45, 'optio', 'minus', 27, 'Molestiae consequuntur eos doloribus.', NULL, 27, 57, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(53, 41, 'quae', 'animi', 15, 'Harum ut ad commodi similique.', NULL, 11, 22, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(54, 36, 'ex', 'natus', 73, 'Et deleniti numquam neque suscipit iusto rerum voluptates vel.', NULL, 19, 24, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(55, 19, 'nobis', 'dignissimos', 15, 'Repudiandae beatae officiis minima fugit dolorum laudantium corrupti.', NULL, 4, 1, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(56, 1, 'dolorem', 'occaecati', 73, 'Voluptatem ut suscipit rerum et enim laborum rerum.', NULL, 10, 21, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(57, 35, 'non', 'rem', 98, 'Delectus fugiat corrupti repudiandae et beatae non.', NULL, 27, 45, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(58, 18, 'sed', 'sunt', 24, 'A dolor animi quam consequuntur.', NULL, 28, 54, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(59, 24, 'ipsa', 'quis', 80, 'Possimus dolorum fuga voluptas facere autem dolorem ea doloremque.', NULL, 18, 29, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(60, 37, 'cumque', 'voluptatum', 48, 'Quia illo libero quod repellat dolor.', NULL, 13, 28, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(61, 40, 'sint', 'porro', 49, 'Laborum nulla voluptas quia excepturi.', NULL, 13, 58, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(62, 26, 'dolor', 'ipsa', 31, 'Cum ut consequuntur quidem qui neque et aspernatur.', NULL, 8, 47, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(63, 25, 'iusto', 'eligendi', 70, 'Nihil incidunt recusandae nostrum tempore sit consectetur alias.', NULL, 7, 60, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(64, 45, 'maiores', 'eaque', 88, 'Dolorum rem excepturi libero quia modi.', NULL, 28, 43, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(65, 6, 'voluptatum', 'rerum', 24, 'Blanditiis harum fugiat quasi magnam in a repudiandae.', NULL, 28, 32, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(66, 19, 'est', 'culpa', 22, 'Vitae tempore repellendus aut sed minima.', NULL, 2, 5, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(67, 23, 'autem', 'qui', 12, 'Sit dolorem officiis ea omnis natus.', NULL, 25, 16, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(68, 46, 'aut', 'animi', 52, 'Quia cumque commodi unde quia dolore.', NULL, 16, 43, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(69, 37, 'sunt', 'quo', 54, 'Odio occaecati quo quia laudantium dolor adipisci.', NULL, 17, 52, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(70, 22, 'nemo', 'deserunt', 69, 'Reiciendis enim omnis soluta beatae ut sint.', NULL, 14, 40, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(71, 20, 'eum', 'aut', 95, 'Est sunt sint nihil.', NULL, 8, 54, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(72, 28, 'consequatur', 'voluptatibus', 96, 'Cupiditate dolorem ratione velit ipsa et sed aut.', NULL, 6, 30, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(73, 29, 'nisi', 'vitae', 71, 'Quod est velit dolorem suscipit exercitationem.', NULL, 17, 6, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(74, 9, 'dolores', 'et', 90, 'Aut necessitatibus delectus est consequatur.', NULL, 14, 11, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(75, 19, 'quis', 'sit', 20, 'Vitae iusto aut voluptates quia suscipit qui dolor a.', NULL, 1, 24, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(76, 31, 'autem', 'et', 55, 'Officiis sed accusantium ex sit et hic.', NULL, 7, 51, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(77, 5, 'autem', 'illo', 25, 'Laboriosam dolorem voluptatem sed repudiandae dolor similique.', NULL, 6, 48, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(78, 15, 'occaecati', 'quisquam', 39, 'Nobis sed mollitia sit illum quidem et quod et.', NULL, 9, 3, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(79, 44, 'sint', 'magni', 38, 'Impedit harum voluptates quibusdam voluptatem similique.', NULL, 8, 23, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(80, 8, 'consectetur', 'maiores', 75, 'Et placeat autem corrupti reiciendis quidem deserunt.', NULL, 28, 55, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(81, 26, 'similique', 'culpa', 96, 'Rem et eius nobis beatae sit dolor ut et.', NULL, 6, 50, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(82, 18, 'temporibus', 'magni', 79, 'Et consequatur sequi harum doloremque ex.', NULL, 19, 19, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(83, 2, 'inventore', 'in', 33, 'Aut vero ut omnis nemo suscipit vitae et sunt.', NULL, 11, 58, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(84, 42, 'repellendus', 'provident', 69, 'Quasi fuga nihil modi illum ipsum.', NULL, 12, 6, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(85, 38, 'rerum', 'sed', 11, 'Accusamus earum eius temporibus et libero veritatis.', NULL, 10, 60, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(86, 34, 'assumenda', 'molestiae', 81, 'Asperiores accusantium perferendis quia natus voluptatum accusantium soluta velit.', NULL, 12, 50, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(87, 19, 'distinctio', 'sunt', 14, 'Doloremque commodi ut facere facilis illum et.', NULL, 29, 34, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(88, 28, 'esse', 'sunt', 72, 'Beatae qui fugit assumenda.', NULL, 9, 54, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(89, 5, 'amet', 'ad', 76, 'Est animi harum quibusdam et nemo excepturi.', NULL, 14, 37, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(90, 1, 'nam', 'et', 58, 'Corporis corporis at itaque itaque ut cupiditate.', NULL, 4, 50, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(91, 35, 'asperiores', 'ad', 40, 'Reprehenderit sapiente eum pariatur non.', NULL, 19, 60, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(92, 16, 'deleniti', 'placeat', 95, 'Voluptatem cum voluptatem quam temporibus rerum nisi.', NULL, 30, 60, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(93, 24, 'recusandae', 'voluptatum', 98, 'Natus nulla et temporibus.', NULL, 20, 47, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(94, 17, 'id', 'rem', 30, 'Aut autem eligendi fugiat.', NULL, 20, 60, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(95, 28, 'perferendis', 'ducimus', 66, 'Numquam nisi minima officiis ea.', NULL, 29, 55, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(96, 2, 'repudiandae', 'sunt', 61, 'Voluptatem assumenda quaerat fuga quam.', NULL, 12, 60, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(97, 41, 'aut', 'sit', 64, 'Quia architecto atque qui libero.', NULL, 18, 52, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(98, 13, 'hic', 'magni', 56, 'Autem eius aliquid quae itaque quis.', NULL, 18, 21, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(99, 44, 'atque', 'qui', 82, 'Odio dolore consequuntur nemo deserunt non qui.', NULL, 13, 28, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(100, 50, 'quis', 'et', 11, 'Quis nesciunt sint dolorem asperiores maiores ut.', NULL, 11, 12, '2024-12-09 21:01:46', '2024-12-09 21:01:46'),
(101, 78, 'modi', 'et', 59, 'Fugit maxime vitae atque amet.', NULL, 17, 22, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(102, 56, 'dolores', 'quo', 25, 'Laudantium vitae quam recusandae ea dolor similique provident.', NULL, 19, 2, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(103, 11, 'maxime', 'iste', 88, 'Aut voluptatem eum est laborum voluptas quas alias.', NULL, 28, 50, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(104, 26, 'quis', 'molestiae', 70, 'Porro nostrum commodi nesciunt reiciendis dicta aliquam.', NULL, 17, 34, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(105, 65, 'quaerat', 'facere', 55, 'Est veniam magnam optio dicta natus omnis debitis possimus.', NULL, 25, 52, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(106, 1, 'et', 'cum', 61, 'Corrupti provident voluptatibus cupiditate voluptas eaque.', NULL, 29, 29, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(107, 94, 'illum', 'consequuntur', 54, 'Rem adipisci repellendus commodi voluptas.', NULL, 29, 38, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(108, 85, 'sed', 'quidem', 28, 'Ea ipsam qui sed.', NULL, 14, 16, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(109, 59, 'iste', 'aliquam', 19, 'Deleniti fugit dignissimos et est quos non consequatur ullam.', NULL, 24, 47, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(110, 54, 'occaecati', 'sit', 81, 'Similique quia vero saepe asperiores dolorum.', NULL, 2, 8, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(111, 5, 'maiores', 'ipsa', 71, 'Voluptatem sapiente distinctio culpa fuga architecto unde in.', NULL, 6, 19, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(112, 84, 'molestiae', 'fugiat', 10, 'Voluptate quasi exercitationem quo minima voluptas nihil aut.', NULL, 5, 6, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(113, 74, 'rem', 'vel', 56, 'Unde debitis ea nemo deserunt dolore.', NULL, 24, 14, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(114, 87, 'amet', 'aut', 100, 'Eum est impedit autem pariatur atque non unde.', NULL, 8, 42, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(115, 7, 'dignissimos', 'aspernatur', 64, 'Labore veniam ut nam eum autem voluptatem tenetur.', NULL, 22, 14, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(116, 89, 'consequatur', 'quae', 51, 'Tenetur officiis asperiores omnis qui tempore doloremque eos.', NULL, 1, 11, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(117, 21, 'deserunt', 'aliquid', 87, 'Voluptatem sed sapiente quidem.', NULL, 3, 51, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(118, 51, 'eum', 'et', 40, 'Itaque quae magni non odit et.', NULL, 16, 24, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(119, 49, 'inventore', 'sunt', 22, 'Numquam reprehenderit quas et ipsa.', NULL, 6, 6, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(120, 85, 'quia', 'animi', 13, 'Voluptatem repudiandae error et repudiandae sint consequatur ea.', NULL, 6, 30, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(121, 61, 'quia', 'quia', 43, 'Ad dolor ipsam corporis sequi atque veritatis dolor.', NULL, 5, 42, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(122, 31, 'nobis', 'quaerat', 48, 'Praesentium aut ipsa qui quos quasi ea natus vel.', NULL, 27, 42, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(123, 82, 'dolor', 'et', 48, 'Et voluptas eos quidem voluptas magnam architecto autem veritatis.', NULL, 21, 39, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(124, 36, 'iste', 'esse', 85, 'Iste doloremque est quidem numquam ipsam omnis similique.', NULL, 26, 45, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(125, 92, 'eum', 'debitis', 90, 'Maiores vero provident voluptas ut.', NULL, 5, 29, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(126, 23, 'voluptatem', 'voluptas', 91, 'Rerum dignissimos exercitationem saepe ex sint.', NULL, 23, 24, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(127, 19, 'ut', 'officiis', 22, 'Voluptatibus minus dolorem ut ratione vel.', NULL, 28, 18, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(128, 49, 'qui', 'impedit', 69, 'Tempora aut et porro alias repudiandae.', NULL, 23, 16, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(129, 99, 'ut', 'deserunt', 10, 'Temporibus excepturi id eos eligendi inventore non rerum dolorum.', NULL, 9, 46, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(130, 74, 'sunt', 'numquam', 75, 'Libero sint architecto quae quo aliquid reprehenderit voluptatibus.', NULL, 26, 8, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(131, 84, 'minus', 'quos', 41, 'Illum atque soluta adipisci ratione in.', NULL, 9, 5, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(132, 84, 'libero', 'modi', 87, 'Sed ipsum ea non facere facere harum.', NULL, 17, 53, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(133, 12, 'aut', 'soluta', 92, 'Impedit asperiores optio fuga dolor deserunt voluptatem.', NULL, 1, 36, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(134, 71, 'repudiandae', 'architecto', 45, 'Odio laborum qui quis reprehenderit voluptas laboriosam.', NULL, 5, 52, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(135, 79, 'dicta', 'alias', 22, 'Deserunt assumenda repellat voluptatem dicta fuga ea.', NULL, 3, 2, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(136, 88, 'corrupti', 'aut', 11, 'Quam voluptatem quaerat dolore consequuntur numquam placeat sapiente aut.', NULL, 12, 23, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(137, 5, 'consequatur', 'non', 13, 'Eaque aut aspernatur neque aperiam.', NULL, 23, 50, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(138, 79, 'autem', 'rerum', 15, 'Fugiat a maiores ipsa eum.', NULL, 20, 9, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(139, 69, 'quia', 'aut', 67, 'Qui perspiciatis ut vel harum.', NULL, 24, 12, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(140, 42, 'sed', 'ut', 33, 'Provident tempore officiis et deleniti quo sint tempora.', NULL, 14, 21, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(141, 92, 'ex', 'sit', 43, 'Omnis commodi beatae aut eos quod asperiores.', NULL, 10, 14, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(142, 28, 'possimus', 'labore', 61, 'Vitae ea eos temporibus eius.', NULL, 17, 35, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(143, 50, 'quam', 'commodi', 93, 'Voluptatem a numquam laboriosam architecto sed architecto.', NULL, 23, 46, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(144, 65, 'aut', 'fugiat', 33, 'Quia dolore qui ut et eligendi.', NULL, 27, 5, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(145, 82, 'molestiae', 'dolor', 91, 'Quidem reiciendis laudantium voluptas nam sit amet reprehenderit dolor.', NULL, 12, 7, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(146, 21, 'sed', 'quibusdam', 93, 'Temporibus facilis debitis et dignissimos consequuntur.', NULL, 14, 36, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(147, 99, 'ullam', 'vitae', 52, 'Dolorum ea illo sequi aperiam dicta vitae et.', NULL, 14, 23, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(148, 32, 'unde', 'delectus', 68, 'Et asperiores qui corporis minima autem a velit.', NULL, 21, 37, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(149, 12, 'ut', 'sed', 71, 'Sit at sed itaque iusto.', NULL, 12, 17, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(150, 1, 'cumque', 'laboriosam', 26, 'Consectetur corporis non molestiae et ut.', NULL, 19, 43, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(151, 4, 'eos', 'ratione', 45, 'Occaecati et quia ut aut nihil et.', NULL, 22, 14, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(152, 8, 'velit', 'voluptatem', 81, 'Magnam maiores at debitis ea ut deserunt.', NULL, 4, 48, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(153, 17, 'omnis', 'aut', 53, 'Sequi laudantium accusamus sit quo et enim.', NULL, 29, 42, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(154, 80, 'et', 'id', 65, 'Qui fuga voluptatem illum deserunt corrupti voluptatem odio.', NULL, 18, 15, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(155, 29, 'eos', 'nihil', 16, 'Est pariatur quia corporis quibusdam illo.', NULL, 18, 1, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(156, 86, 'quibusdam', 'voluptas', 49, 'Minima fugiat voluptates dolorem eius quasi ea quo.', NULL, 27, 34, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(157, 54, 'quas', 'unde', 15, 'Est id quidem aut eum voluptatem sunt voluptatem.', NULL, 1, 42, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(158, 100, 'distinctio', 'nisi', 69, 'Excepturi nulla voluptas accusamus molestias eveniet est eum.', NULL, 16, 19, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(159, 45, 'quas', 'earum', 75, 'Veritatis aspernatur quia facilis.', NULL, 20, 59, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(160, 3, 'omnis', 'nostrum', 56, 'Ipsum voluptatum eum cum excepturi maxime molestiae.', NULL, 3, 49, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(161, 16, 'omnis', 'soluta', 58, 'Aut voluptatem sapiente nihil velit.', NULL, 23, 41, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(162, 100, 'harum', 'et', 47, 'Mollitia officia maxime totam asperiores.', NULL, 8, 49, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(163, 52, 'asperiores', 'vel', 85, 'Assumenda expedita aliquid velit quia sit eius nostrum sequi.', NULL, 18, 7, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(164, 18, 'incidunt', 'fuga', 73, 'Quos temporibus a id labore quis possimus.', NULL, 12, 34, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(165, 96, 'aspernatur', 'quibusdam', 40, 'Rem dolorem cum reiciendis sunt et ut.', NULL, 4, 39, '2024-12-09 21:33:09', '2024-12-09 21:33:09'),
(166, 65, 'autem', 'ut', 10, 'Rerum voluptate saepe id magnam dolores eum.', NULL, 18, 50, '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(167, 40, 'aut', 'sit', 87, 'Dolorem qui minima repudiandae.', NULL, 15, 34, '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(168, 16, 'eaque', 'et', 53, 'Qui harum assumenda molestiae voluptatibus et quis.', NULL, 20, 21, '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(169, 94, 'vero', 'labore', 40, 'Vel maiores dolorum voluptates et.', NULL, 16, 50, '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(170, 56, 'et', 'est', 26, 'Quae ut quos quo quo.', NULL, 1, 28, '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(171, 45, 'qui', 'delectus', 65, 'Qui quam aut iusto quisquam et consequatur.', NULL, 23, 35, '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(172, 70, 'similique', 'odio', 81, 'Rerum delectus eaque tempora fugit repudiandae aut accusantium.', NULL, 13, 45, '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(173, 6, 'officia', 'doloremque', 41, 'Ipsam incidunt qui ut cupiditate numquam.', NULL, 20, 25, '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(174, 54, 'incidunt', 'doloremque', 65, 'Deserunt cumque natus eum vitae.', NULL, 7, 49, '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(175, 21, 'illo', 'animi', 43, 'Facilis quos voluptates inventore minus.', NULL, 7, 41, '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(176, 7, 'dolorum', 'nihil', 76, 'Perferendis consequatur laborum nihil quo aut aut.', NULL, 19, 2, '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(177, 41, 'modi', 'nostrum', 86, 'Alias mollitia adipisci eius sunt quaerat sit corrupti.', NULL, 14, 37, '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(178, 55, 'nemo', 'ad', 82, 'Tempore hic laborum vel aut quo est.', NULL, 17, 28, '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(179, 29, 'facere', 'molestiae', 73, 'Reiciendis doloremque quis repellat id laudantium ut.', NULL, 3, 44, '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(180, 8, 'perspiciatis', 'eveniet', 42, 'Nam et aut consequatur eum quisquam eum nisi.', NULL, 21, 22, '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(181, 72, 'possimus', 'facilis', 95, 'Odit sint eius modi dolorem.', NULL, 1, 20, '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(182, 66, 'nostrum', 'perferendis', 99, 'Sed et facilis sed porro laudantium sunt et.', NULL, 3, 39, '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(183, 1, 'ipsam', 'quae', 39, 'Doloribus ut tempore et sint qui.', NULL, 2, 16, '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(184, 32, 'ratione', 'aut', 89, 'Iusto molestias sequi quasi occaecati cum.', NULL, 16, 31, '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(185, 18, 'illo', 'inventore', 86, 'Iusto recusandae rerum quis animi eligendi consequuntur.', NULL, 2, 5, '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(186, 73, 'est', 'at', 75, 'Ut consequatur assumenda nobis et.', NULL, 5, 37, '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(187, 77, 'tempora', 'eos', 95, 'Eius eligendi natus id aperiam non suscipit voluptatem delectus.', NULL, 27, 17, '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(188, 98, 'quaerat', 'doloremque', 35, 'Doloremque earum cupiditate consequatur quas vero.', NULL, 24, 10, '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(189, 84, 'placeat', 'quam', 58, 'Officia ipsam quisquam animi incidunt autem dicta enim.', NULL, 6, 60, '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(190, 80, 'aliquid', 'sit', 61, 'Corrupti corrupti corporis sit voluptate quos labore ratione.', NULL, 22, 33, '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(191, 99, 'veniam', 'qui', 31, 'Doloremque enim eligendi asperiores magni repudiandae vitae laboriosam est.', NULL, 27, 11, '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(192, 83, 'eveniet', 'corporis', 71, 'Enim occaecati rerum debitis quia quis.', NULL, 29, 35, '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(193, 54, 'voluptas', 'sapiente', 27, 'Vero voluptatem qui impedit expedita id sunt quasi.', NULL, 23, 55, '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(194, 41, 'totam', 'molestiae', 84, 'Itaque adipisci placeat eos exercitationem.', NULL, 20, 48, '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(195, 28, 'modi', 'similique', 35, 'Ut officiis molestiae maxime ut veniam qui libero.', NULL, 1, 17, '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(196, 93, 'fugiat', 'dolor', 69, 'Nesciunt nihil eius et sint.', NULL, 22, 48, '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(197, 81, 'illo', 'optio', 72, 'Et quos labore maiores expedita repudiandae facilis.', NULL, 4, 39, '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(198, 60, 'nisi', 'inventore', 45, 'Pariatur tenetur repellendus ea minima voluptas.', NULL, 4, 37, '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(199, 86, 'quam', 'quia', 63, 'Voluptas assumenda aspernatur sit repudiandae est quas.', NULL, 4, 49, '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(200, 12, 'omnis', 'qui', 100, 'Cumque voluptate ratione in cumque alias.', NULL, 29, 23, '2024-12-09 21:33:10', '2024-12-09 21:33:10'),
(201, 139, 'voluptate', 'velit', 91, 'Aut nostrum quo in pariatur voluptate sequi nisi.', NULL, 1, 20, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(202, 3, 'natus', 'et', 42, 'Inventore tempore tenetur dolorum sequi natus laboriosam architecto ut.', NULL, 15, 18, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(203, 80, 'neque', 'rerum', 92, 'Et eum quae veniam qui blanditiis.', NULL, 3, 4, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(204, 35, 'quo', 'voluptatum', 45, 'Ut voluptas ut culpa est id.', NULL, 7, 51, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(205, 148, 'amet', 'est', 95, 'Quia adipisci amet placeat.', NULL, 18, 15, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(206, 148, 'rerum', 'ut', 74, 'Architecto quam modi quia iusto neque.', NULL, 17, 9, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(207, 61, 'ab', 'id', 33, 'Tenetur incidunt eum saepe voluptates.', NULL, 30, 35, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(208, 2, 'et', 'harum', 75, 'Reprehenderit ab aliquam ipsam repudiandae nesciunt deleniti autem.', NULL, 6, 25, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(209, 136, 'quia', 'ut', 62, 'Et molestias iste quisquam unde numquam sint est.', NULL, 24, 27, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(210, 48, 'sit', 'est', 63, 'Voluptatibus ipsum porro hic nulla.', NULL, 19, 10, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(211, 86, 'quae', 'id', 51, 'Ut enim ea eveniet ratione similique molestiae.', NULL, 17, 4, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(212, 149, 'a', 'dolore', 52, 'Maiores adipisci nostrum omnis perferendis minima eaque qui.', NULL, 20, 1, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(213, 107, 'vero', 'harum', 87, 'Voluptas nemo harum aliquam praesentium aperiam quas voluptate.', NULL, 22, 50, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(214, 71, 'reprehenderit', 'unde', 59, 'Reprehenderit voluptatem eaque delectus nulla blanditiis ullam ea.', NULL, 1, 26, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(215, 146, 'repudiandae', 'ea', 16, 'Ipsum nulla repellat doloremque enim.', NULL, 7, 1, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(216, 75, 'dicta', 'quia', 64, 'Dolorum magni quia et suscipit veniam.', NULL, 4, 14, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(217, 119, 'dolore', 'qui', 26, 'Voluptates ad ipsam est sit eligendi.', NULL, 10, 1, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(218, 3, 'fugiat', 'hic', 12, 'Corporis non nesciunt dolorum et ut harum non.', NULL, 30, 52, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(219, 66, 'dolores', 'culpa', 89, 'Unde perferendis quidem vel.', NULL, 17, 50, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(220, 75, 'qui', 'eaque', 19, 'Qui consectetur nihil dolore impedit a corrupti ipsam velit.', NULL, 9, 57, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(221, 4, 'tenetur', 'voluptatibus', 51, 'Numquam ullam sit itaque corporis voluptate asperiores.', NULL, 15, 4, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(222, 106, 'doloremque', 'enim', 12, 'Debitis quo nihil vero repudiandae nam nemo.', NULL, 19, 59, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(223, 22, 'ut', 'voluptas', 79, 'Tempore rem natus qui quaerat voluptatem aliquam ut.', NULL, 1, 17, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(224, 38, 'dicta', 'non', 96, 'Quia voluptas ea soluta expedita ut dolorem excepturi.', NULL, 28, 57, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(225, 62, 'voluptatem', 'rerum', 16, 'Distinctio voluptate sed asperiores vel nobis.', NULL, 1, 24, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(226, 48, 'odio', 'amet', 10, 'Atque non facilis exercitationem provident.', NULL, 9, 51, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(227, 49, 'atque', 'dignissimos', 68, 'Odit facere facilis ipsum.', NULL, 29, 36, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(229, 122, 'similique', 'quas', 25, 'Ut omnis et qui nemo sed.', NULL, 30, 21, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(230, 113, 'amet', 'assumenda', 56, 'Nulla explicabo sed veritatis perferendis suscipit rerum.', NULL, 2, 22, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(231, 136, 'sint', 'et', 92, 'Qui culpa iure aut eos sunt et.', NULL, 16, 47, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(232, 64, 'qui', 'distinctio', 33, 'Asperiores hic odit nihil dolorem facilis inventore atque quo.', NULL, 13, 3, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(233, 95, 'enim', 'porro', 12, 'Veniam soluta ut rerum animi et ex placeat.', NULL, 1, 43, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(234, 45, 'aspernatur', 'eius', 72, 'Beatae qui dolorum et dolorum.', NULL, 23, 52, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(235, 13, 'deleniti', 'quasi', 54, 'Sit ut quibusdam eum voluptates saepe.', NULL, 18, 23, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(236, 110, 'inventore', 'enim', 29, 'Exercitationem eum assumenda aperiam.', NULL, 12, 25, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(237, 139, 'rerum', 'cum', 54, 'Magni ducimus in eos aut.', NULL, 29, 57, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(238, 146, 'dolorem', 'alias', 82, 'Illum sapiente aut dolores nulla.', NULL, 16, 39, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(239, 56, 'et', 'rerum', 21, 'Quos fuga quis non inventore.', NULL, 30, 19, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(240, 120, 'perferendis', 'et', 35, 'Neque deleniti modi autem dolores maiores sit quas quis.', NULL, 13, 43, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(241, 6, 'fuga', 'dolores', 61, 'Mollitia quam eligendi nemo eligendi.', NULL, 12, 44, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(242, 20, 'quisquam', 'occaecati', 14, 'Est aut eligendi asperiores molestiae saepe.', NULL, 24, 12, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(243, 42, 'voluptatem', 'ut', 19, 'Aliquid nam voluptatem itaque officiis maxime vero.', NULL, 23, 59, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(244, 103, 'odio', 'aliquam', 95, 'Nostrum distinctio eos quam aspernatur.', NULL, 29, 44, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(245, 109, 'pariatur', 'eaque', 73, 'Rerum quibusdam ab harum minima.', NULL, 4, 53, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(246, 30, 'laboriosam', 'tenetur', 41, 'Consequatur in placeat aut enim.', NULL, 3, 7, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(247, 86, 'est', 'illo', 69, 'Occaecati et cum ut magni et iste.', NULL, 10, 35, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(248, 55, 'odit', 'assumenda', 75, 'Modi sit consequatur et consequuntur fugiat.', NULL, 29, 25, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(249, 119, 'exercitationem', 'ut', 68, 'Suscipit aperiam id consequuntur fuga.', NULL, 25, 53, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(250, 103, 'magni', 'inventore', 22, 'Commodi aliquid qui sit facilis quis amet.', NULL, 13, 35, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(251, 72, 'voluptas', 'est', 60, 'Voluptatem culpa et est reiciendis debitis.', NULL, 30, 11, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(252, 104, 'reiciendis', 'ut', 13, 'Rerum sequi ut voluptatem veritatis aut.', NULL, 6, 9, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(253, 140, 'id', 'corrupti', 85, 'Dolores dolor dolores veniam et.', NULL, 29, 31, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(254, 78, 'quia', 'esse', 33, 'Quod alias libero nostrum asperiores alias modi.', NULL, 26, 58, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(255, 140, 'beatae', 'eveniet', 41, 'At deserunt enim corporis earum.', NULL, 24, 50, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(256, 106, 'quo', 'perspiciatis', 55, 'Numquam unde ut natus ea praesentium.', NULL, 10, 52, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(257, 141, 'voluptate', 'aut', 24, 'Qui eos distinctio odio voluptatem vel.', NULL, 5, 29, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(258, 136, 'non', 'voluptatem', 85, 'Numquam est autem quo maiores reprehenderit nisi.', NULL, 29, 3, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(259, 129, 'molestiae', 'nisi', 87, 'Et at rerum error deleniti esse.', NULL, 13, 49, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(260, 29, 'et', 'numquam', 30, 'Reprehenderit reprehenderit perspiciatis qui illum.', NULL, 30, 60, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(261, 149, 'illo', 'dolorem', 30, 'Assumenda amet et quo deserunt animi.', NULL, 19, 58, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(262, 100, 'id', 'facilis', 26, 'Ad est a dolorem natus facilis earum ea.', NULL, 14, 17, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(263, 63, 'fuga', 'dolorem', 44, 'Harum et optio aut ullam consequatur laboriosam.', NULL, 23, 48, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(264, 62, 'ut', 'sit', 86, 'Voluptatem ut explicabo tenetur.', NULL, 2, 37, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(265, 138, 'natus', 'et', 82, 'Officia rerum molestiae voluptas vel.', NULL, 28, 31, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(266, 44, 'est', 'aut', 42, 'Quia aut totam ipsa repellendus.', NULL, 1, 50, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(267, 135, 'et', 'provident', 20, 'Delectus quis porro esse voluptates accusamus ratione non.', NULL, 12, 37, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(268, 120, 'tenetur', 'ea', 11, 'Sequi debitis commodi voluptatem quia laboriosam magni.', NULL, 18, 3, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(269, 142, 'qui', 'laudantium', 68, 'Ut enim non adipisci officiis ullam eaque non.', NULL, 1, 1, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(270, 84, 'quas', 'laudantium', 10, 'Omnis velit sapiente quia porro optio et.', NULL, 15, 57, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(271, 51, 'excepturi', 'harum', 77, 'Rem nesciunt aut dignissimos libero delectus.', NULL, 22, 20, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(272, 97, 'eligendi', 'aut', 11, 'Eos nemo laborum cumque placeat velit neque autem dolor.', NULL, 17, 52, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(273, 27, 'quo', 'occaecati', 55, 'Perspiciatis aut voluptates libero.', NULL, 17, 21, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(274, 70, 'cum', 'necessitatibus', 81, 'Sit nisi rerum repudiandae in accusamus sit quaerat.', NULL, 26, 17, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(275, 40, 'perspiciatis', 'veritatis', 58, 'Deserunt facere nihil eligendi quas.', NULL, 30, 54, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(276, 63, 'eligendi', 'sunt', 53, 'Nisi repellat placeat asperiores et tenetur vitae dolores aut.', NULL, 14, 41, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(278, 137, 'placeat', 'maxime', 11, 'Inventore sunt assumenda repellendus laborum aut.', NULL, 16, 3, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(279, 18, 'numquam', 'ab', 52, 'Omnis ut eum consequatur ut.', NULL, 24, 19, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(280, 98, 'ut', 'perferendis', 46, 'Minus pariatur officiis repellendus aperiam dolorem.', NULL, 5, 59, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(281, 103, 'veritatis', 'commodi', 87, 'Sed deleniti qui fuga repudiandae minus ut.', NULL, 14, 58, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(282, 24, 'odio', 'magnam', 37, 'Quia in id nemo repellat sunt.', NULL, 14, 16, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(283, 78, 'aut', 'consectetur', 18, 'Expedita labore illo maiores iusto aspernatur eligendi doloribus et.', NULL, 30, 42, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(284, 106, 'ipsum', 'eaque', 35, 'Quasi saepe sit impedit consequatur molestias.', NULL, 9, 45, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(285, 125, 'rerum', 'cum', 34, 'Sunt sit et dolores harum necessitatibus minus.', NULL, 16, 23, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(286, 134, 'eveniet', 'tenetur', 53, 'Tempora nam adipisci molestias quaerat.', NULL, 1, 52, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(287, 44, 'enim', 'ea', 24, 'Id quo porro eum eaque nihil omnis.', NULL, 24, 39, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(288, 5, 'quas', 'consequuntur', 26, 'Magni blanditiis vel nemo dolor dicta totam.', NULL, 30, 1, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(289, 113, 'est', 'cum', 93, 'Nisi facilis eaque quaerat tempore beatae.', NULL, 22, 3, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(290, 110, 'et', 'earum', 34, 'Qui veritatis voluptatem sint quia voluptatem sint perferendis.', NULL, 1, 13, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(291, 101, 'sint', 'nostrum', 44, 'Et autem nobis voluptatem quis dignissimos.', NULL, 8, 14, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(292, 37, 'consequatur', 'et', 44, 'Et sit minima possimus aut numquam non reprehenderit.', NULL, 7, 6, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(293, 136, 'aut', 'est', 37, 'Quae ut aut praesentium qui eius.', NULL, 28, 44, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(294, 48, 'omnis', 'distinctio', 47, 'Et qui temporibus ab ipsam nam.', NULL, 25, 5, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(295, 122, 'esse', 'et', 93, 'Dolorum repellat est nobis voluptatum necessitatibus.', NULL, 27, 57, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(296, 37, 'dolores', 'tempore', 82, 'Ipsum ab maiores nisi pariatur ipsam.', NULL, 3, 25, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(297, 125, 'veniam', 'dolor', 58, 'Aut consectetur ut laudantium quia in beatae corporis qui.', NULL, 10, 22, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(298, 144, 'sed', 'provident', 30, 'Illum porro consequatur eaque voluptate ut.', NULL, 3, 56, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(299, 10, 'quae', 'aut', 72, 'Esse quas atque neque autem.', NULL, 24, 36, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(300, 85, 'dolor', 'consectetur', 36, 'Doloremque deserunt dolor tempore voluptatem.', NULL, 4, 48, '2024-12-09 21:33:24', '2024-12-09 21:33:24'),
(301, NULL, 'Ut doloremque hic ul', 'Maxime est sit sit', 69, 'Magna ut nostrum ut', NULL, 28, 99, '2024-12-10 16:21:00', '2024-12-10 16:21:00'),
(302, NULL, 'PT INDO', 'asdad', 222, 'asd', NULL, 20, 22, '2024-12-10 16:21:41', '2024-12-10 16:21:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('NpqvkzHAMrafyYu336sjKDO01lC3W91avmM7oSro', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiWThaRlhLSDhrNGpGcER2OWlkUjJVN1FSenRmS1FwMFNjSzQ2UEdPVSI7czozOiJ1cmwiO2E6MDp7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMwOiJodHRwOi8vbG9jYWxob3N0OjgwMDAva29udmVrc2kiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1733847719);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin', 'shanahan.owen@example.net', '2024-12-05 14:50:09', '$2y$12$U2BR1jy.6tfuj4ZfalpRgeHq5L1e3ebMylTWrsvSFnGxSYiNNygFS', 'HSedQ6QvZIfncFJ86lkMMrbegdLy3ErVXLijERrrjdV5qf9sc3ZPGQQ3jBYh', '2024-12-05 14:50:09', '2024-12-05 14:50:09');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `konveksis`
--
ALTER TABLE `konveksis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `konveksi_progress`
--
ALTER TABLE `konveksi_progress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `konveksi_progress_konveksi_id_foreign` (`konveksi_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `produksis`
--
ALTER TABLE `produksis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `produksis_konveksi_id_foreign` (`konveksi_id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `konveksis`
--
ALTER TABLE `konveksis`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT untuk tabel `konveksi_progress`
--
ALTER TABLE `konveksi_progress`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `produksis`
--
ALTER TABLE `produksis`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=303;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `konveksi_progress`
--
ALTER TABLE `konveksi_progress`
  ADD CONSTRAINT `konveksi_progress_konveksi_id_foreign` FOREIGN KEY (`konveksi_id`) REFERENCES `konveksis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `produksis`
--
ALTER TABLE `produksis`
  ADD CONSTRAINT `produksis_konveksi_id_foreign` FOREIGN KEY (`konveksi_id`) REFERENCES `konveksis` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
