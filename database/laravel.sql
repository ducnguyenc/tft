-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2025 at 05:02 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

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
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `champions`
--

CREATE TABLE `champions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dmg_basic` double NOT NULL DEFAULT 0,
  `dmg_ulti_physical` double NOT NULL DEFAULT 0,
  `dmg_ulti_magic` double NOT NULL DEFAULT 0,
  `per_dmg_physical` double NOT NULL DEFAULT 0,
  `per_dmg_magic` double NOT NULL DEFAULT 0,
  `armor_physical` double NOT NULL DEFAULT 0,
  `armor_magic` double NOT NULL DEFAULT 0,
  `health` double NOT NULL DEFAULT 0,
  `mana` double NOT NULL DEFAULT 0,
  `speed` double NOT NULL DEFAULT 0,
  `crit` double NOT NULL DEFAULT 0,
  `suck_blood` double NOT NULL DEFAULT 0,
  `per_armor_physical` double NOT NULL DEFAULT 0,
  `per_armor_magic` double NOT NULL DEFAULT 0,
  `per_health` double NOT NULL DEFAULT 0,
  `per_mana` double NOT NULL DEFAULT 0,
  `per_speed` double NOT NULL DEFAULT 0,
  `per_crit` double NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `champions`
--

INSERT INTO `champions` (`id`, `name`, `dmg_basic`, `dmg_ulti_physical`, `dmg_ulti_magic`, `per_dmg_physical`, `per_dmg_magic`, `armor_physical`, `armor_magic`, `health`, `mana`, `speed`, `crit`, `suck_blood`, `per_armor_physical`, `per_armor_magic`, `per_health`, `per_mana`, `per_speed`, `per_crit`, `created_at`, `updated_at`) VALUES
(1, 'Anivia', 30, 0, 325, 0, 0, 0, 0, 0, 40, 0.7, 0.25, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `champion_hes`
--

CREATE TABLE `champion_hes` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `he1` varchar(45) DEFAULT NULL,
  `he2` varchar(45) DEFAULT NULL,
  `he3` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `champion_hes`
--

INSERT INTO `champion_hes` (`id`, `name`, `price`, `he1`, `he2`, `he3`) VALUES
(1, 'Aurelion Sol', '7', NULL, 'Targon', NULL),
(2, 'Baron Nashor', '7', 'Hư Không', NULL, NULL),
(3, 'Brock', '7', 'Ixtal', NULL, NULL),
(4, 'Ryze', '7', NULL, NULL, NULL),
(5, 'Sylas', '7', NULL, 'Pháp Sư', 'Vệ Quân'),
(6, 'Zaahen', '7', 'Darkin', NULL, NULL),
(7, 'Aatrox', '5', 'Darkin', NULL, 'Đồ Tể'),
(8, 'Annie', '5', NULL, 'Pháp Sư', NULL),
(9, 'Azir', '5', 'Shurima', NULL, 'Nhiễu Loạn'),
(10, 'Fiddlesticks', '5', NULL, 'Chinh Phạt', NULL),
(11, 'Galio', '5', 'Demacia', NULL, NULL),
(12, 'Kindred', '5', NULL, 'Cực Tốc', NULL),
(13, 'Lucian & Senna', '5', NULL, 'Xạ Thủ', NULL),
(14, 'Mel', '5', 'Noxus', 'Nhiễu Loạn', NULL),
(15, 'Ornn', '5', NULL, 'Cảnh Vệ', NULL),
(16, 'Sett', '5', 'Ionia', NULL, NULL),
(17, 'Shyvana', '5', NULL, 'Dũng Sĩ', NULL),
(18, 'T-Hex', '5', NULL, 'Piltover', 'Xạ Thủ'),
(19, 'Tahm Kench', '5', 'Bilgewater', NULL, 'Đấu Sĩ'),
(20, 'Thresh', '5', 'Đảo Bóng Đêm', 'Cảnh Vệ', NULL),
(21, 'Volibear', '5', 'Freljord', 'Đấu Sĩ', NULL),
(22, 'Xerath', '5', 'Shurima', NULL, NULL),
(23, 'Ziggs', '5', 'Zaun', 'Yordle', 'Viễn Kích'),
(24, 'Zilean', '5', NULL, 'Thuật Sĩ', NULL),
(25, 'Ambessa', '4', 'Noxus', 'Chinh Phạt', NULL),
(26, 'Bel\'Veth', '4', 'Hư Không', 'Đồ Tể', NULL),
(27, 'Braum', '4', 'Freljord', 'Cảnh Vệ', NULL),
(28, 'Diana', '4', 'Targon', NULL, NULL),
(29, 'Fizz', '4', 'Bilgewater', 'Yordle', NULL),
(30, 'Garen', '4', 'Demacia', 'Vệ Quân', NULL),
(31, 'Kai\'Sa', '4', 'Cộng Sinh', 'Hư Không', 'Viễn Kích'),
(32, 'Kalista', '4', 'Đảo Bóng Đêm', 'Chinh Phạt', NULL),
(33, 'Lissandra', '4', 'Freljord', 'Thuật Sĩ', NULL),
(34, 'Lux', '4', 'Demacia', 'Pháp Sư', NULL),
(35, 'Miss Fortune', '4', 'Bilgewater', 'Xạ Thủ', NULL),
(36, 'Nasus', '4', 'Shurima', NULL, NULL),
(37, 'Ngộ Không', '4', 'Ionia', 'Đấu Sĩ', NULL),
(38, 'Nidalee', '4', 'Ixtal', 'Nữ Thợ Săn', NULL),
(39, 'Renekton', '4', 'Shurima', NULL, NULL),
(40, 'Seraphine', '4', 'Piltover', 'Nhiễu Loạn', NULL),
(41, 'Singed', '4', 'Zaun', 'Dũng Sĩ', NULL),
(42, 'Skarner', '4', 'Ixtal', NULL, NULL),
(43, 'Swain', '4', 'Noxus', 'Pháp Sư', 'Dũng Sĩ'),
(44, 'Sứ Giả Khe Nứt', '4', 'Hư Không', 'Đấu Sĩ', NULL),
(45, 'Taric', '4', 'Targon', NULL, NULL),
(46, 'Veigar', '4', 'Yordle', 'Pháp Sư', NULL),
(47, 'Warwick', '4', 'Zaun', 'Cực Tốc', NULL),
(48, 'Yone', '4', 'Ionia', 'Đồ Tể', NULL),
(49, 'Yunara', '4', 'Ionia', 'Cực Tốc', NULL),
(50, 'Ahri', '3', 'Ionia', 'Pháp Sư', NULL),
(51, 'Darius', '3', 'Noxus', 'Vệ Quân', NULL),
(52, 'Dr. Mundo', '3', 'Zaun', 'Đấu Sĩ', NULL),
(53, 'Draven', '3', 'Noxus', 'Cực Tốc', NULL),
(54, 'Gangplank', '3', 'Bilgewater', 'Đồ Tể', 'Chinh Phạt'),
(55, 'Gwen', '3', 'Đảo Bóng Đêm', 'Nhiễu Loạn', NULL),
(56, 'Jinx', '3', 'Zaun', 'Xạ Thủ', NULL),
(57, 'Kennen', '3', 'Ionia', 'Yordle', 'Vệ Quân'),
(58, 'Kobuko & Yuumi', '3', 'Yordle', 'Đấu Sĩ', 'Thuật Sĩ'),
(59, 'LeBlanc', '3', 'Noxus', 'Thuật Sĩ', NULL),
(60, 'Leona', '3', 'Targon', NULL, NULL),
(61, 'Loris', '3', 'Piltover', 'Cảnh Vệ', NULL),
(62, 'Malzahar', '3', 'Hư Không', 'Nhiễu Loạn', NULL),
(63, 'Milio', '3', 'Ixtal', 'Thuật Sĩ', NULL),
(64, 'Nautilus', '3', 'Bilgewater', 'Dũng Sĩ', 'Cảnh Vệ'),
(65, 'Sejuani', '3', 'Freljord', 'Vệ Quân', NULL),
(66, 'Vayne', '3', 'Demacia', 'Viễn Kích', NULL),
(67, 'Zoe', '3', 'Targon', NULL, NULL),
(68, 'Aphelios', '2', 'Targon', NULL, NULL),
(69, 'Ashe', '2', 'Freljord', 'Cực Tốc', NULL),
(70, 'Bard', '2', 'Ông Bụt', NULL, NULL),
(71, 'Cho\'Gath', '2', 'Hư Không', 'Dũng Sĩ', NULL),
(72, 'Ekko', '2', 'Zaun', 'Nhiễu Loạn', NULL),
(73, 'Graves', '2', 'Bilgewater', 'Xạ Thủ', NULL),
(74, 'Neeko', '2', 'Ixtal', 'Pháp Sư', 'Vệ Quân'),
(75, 'Orianna', '2', 'Piltover', 'Thuật Sĩ', NULL),
(76, 'Poppy', '2', 'Demacia', 'Yordle', 'Dũng Sĩ'),
(77, 'Rek\'Sai', '2', 'Hư Không', 'Chinh Phạt', NULL),
(78, 'Sion', '2', 'Noxus', 'Đấu Sĩ', NULL),
(79, 'Teemo', '2', 'Yordle', 'Viễn Kích', NULL),
(80, 'Tristana', '2', 'Yordle', 'Xạ Thủ', NULL),
(81, 'Tryndamere', '2', 'Freljord', 'Đồ Tể', NULL),
(82, 'Twisted Fate', '2', 'Bilgewater', 'Cực Tốc', NULL),
(83, 'Vi', '2', 'Piltover', 'Zaun', 'Vệ Quân'),
(84, 'Xin Zhao', '2', 'Demacia', 'Ionia', 'Cảnh Vệ'),
(85, 'Yasuo', '2', 'Ionia', 'Đồ Tể', NULL),
(86, 'Yorick', '2', 'Đảo Bóng Đêm', 'Cảnh Vệ', NULL),
(87, 'Anivia', '1', 'Freljord', 'Thuật Sĩ', NULL),
(88, 'Blitzcrank', '1', 'Zaun', 'Dũng Sĩ', NULL),
(89, 'Briar', '1', 'Noxus', 'Đồ Tể', 'Dũng Sĩ'),
(90, 'Caitlyn', '1', 'Piltover', 'Viễn Kích', NULL),
(91, 'Illaoi', '1', 'Bilgewater', 'Đấu Sĩ', NULL),
(92, 'Jarvan IV', '1', 'Demacia', 'Vệ Quân', NULL),
(93, 'Jhin', '1', 'Ionia', 'Xạ Thủ', NULL),
(94, 'Kog\'Maw', '1', 'Hư Không', 'Pháp Sư', 'Viễn Kích'),
(95, 'Lulu', '1', 'Yordle', 'Pháp Sư', NULL),
(96, 'Qiyana', '1', 'Ixtal', 'Đồ Tể', NULL),
(97, 'Rumble', '1', 'Yordle', 'Vệ Quân', NULL),
(98, 'Shen', '1', 'Ionia', 'Đấu Sĩ', NULL),
(99, 'Sona', '1', 'Demacia', 'Thuật Sĩ', NULL),
(100, 'Viego', '1', 'Đảo Bóng Đêm', 'Cực Tốc', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hes`
--

CREATE TABLE `hes` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `dong` varchar(45) DEFAULT NULL,
  `bac` varchar(45) DEFAULT NULL,
  `vang` varchar(45) DEFAULT NULL,
  `kimcuong` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hes`
--

INSERT INTO `hes` (`id`, `name`, `dong`, `bac`, `vang`, `kimcuong`) VALUES
(1, 'Bilgewater', '3', '5', '7', '10'),
(2, 'Chinh Phạt', '2', '3', '4', '5'),
(3, 'Cảnh Vệ', '2', '3', '4', '5'),
(4, 'Cực Tốc', '2', '3', '4', '5'),
(6, 'Demacia', '3', '5', '7', '11'),
(7, 'Dũng Sĩ', '2', '4', '6', NULL),
(8, 'Freljord', '3', '5', '7', NULL),
(9, 'Hư Không', '2', '4', '6', '9'),
(10, 'Ionia', '3', '5', '7', '10'),
(11, 'Ixtal', '3', '5', '7', NULL),
(12, 'Nhiễu Loạn', '2', NULL, '4', NULL),
(13, 'Noxus', '3', '5', '7', '10'),
(14, 'Pháp Sư', '2', '4', '6', NULL),
(15, 'Piltover', '2', '4', '6', NULL),
(16, 'Shurima', '2', NULL, '3', '4'),
(17, 'Thuật Sĩ', '2', NULL, '4', NULL),
(18, 'Viễn Kích', '2', '3', '4', '5'),
(19, 'Vệ Quân', '2', '4', '6', NULL),
(20, 'Xạ Thủ', '2', NULL, '4', NULL),
(21, 'Yordle', '2', '4', '8', '10'),
(22, 'Zaun', '3', '5', '7', NULL),
(23, 'Đảo Bóng Đêm', '2', '3', '4', '5'),
(24, 'Đấu Sĩ', '2', '4', '6', NULL),
(25, 'Đồ Tể', '2', '4', '6', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dmg_physical` double DEFAULT NULL,
  `dmg_magic` double DEFAULT NULL,
  `armor_physical` double DEFAULT NULL,
  `armor_magic` double DEFAULT NULL,
  `health` double DEFAULT NULL,
  `mana` double DEFAULT NULL,
  `speed` double DEFAULT NULL,
  `suck_blood` double DEFAULT NULL,
  `per_crit` double DEFAULT NULL,
  `per_dmg_physical` double DEFAULT NULL,
  `per_dmg_magic` double DEFAULT NULL,
  `per_armor_physical` double DEFAULT NULL,
  `per_armor_magic` double DEFAULT NULL,
  `per_health` double DEFAULT NULL,
  `per_mana` double DEFAULT NULL,
  `per_speed` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `per_dmg_physical_final` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `per_dmg_magic_final` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `per_dmg_reduce` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amplification` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `dmg_physical`, `dmg_magic`, `armor_physical`, `armor_magic`, `health`, `mana`, `speed`, `suck_blood`, `per_crit`, `per_dmg_physical`, `per_dmg_magic`, `per_armor_physical`, `per_armor_magic`, `per_health`, `per_mana`, `per_speed`, `created_at`, `updated_at`, `per_dmg_physical_final`, `per_dmg_magic_final`, `per_dmg_reduce`, `amplification`) VALUES
(1, 'cuongdao', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.1, NULL, NULL, NULL, NULL, 0.1, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'gangbaothach', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.35, NULL, 0.35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'huyetkiem', NULL, NULL, NULL, 20, NULL, NULL, NULL, 0.2, NULL, 0.15, 0.15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'giapmau', NULL, NULL, NULL, NULL, 500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'truonghuvo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'buaxanh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.15, 0.15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.1', '0.1', NULL, NULL),
(7, 'giapgai', NULL, NULL, 65, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.9, NULL, NULL, NULL, NULL, NULL, NULL, '0.05', NULL),
(8, 'deathblade', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.1');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_11_24_124526_create_champions_table', 1),
(5, '2025_11_24_124534_create_items_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('qkdo7RUbZ4H5e3BZKUW4EH5brR8kZahPSYyw1VPl', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicG1ZYlR5ODdiTUNUQ3RLWHA0Zk9nVElhU2p2YWNHSVlLMGFsNG9FRiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9tYXRjaCI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1765036559);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `champions`
--
ALTER TABLE `champions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `champion_hes`
--
ALTER TABLE `champion_hes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `hes`
--
ALTER TABLE `hes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `champions`
--
ALTER TABLE `champions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `champion_hes`
--
ALTER TABLE `champion_hes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hes`
--
ALTER TABLE `hes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
