-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 20, 2024 at 10:24 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fastwork1`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_users`
--

CREATE TABLE `app_users` (
  `id` bigint UNSIGNED NOT NULL,
  `employee_id` bigint UNSIGNED DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT NULL,
  `login_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `face_train_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ad_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_device_logined` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` timestamp NULL DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `coor_lat` decimal(10,8) DEFAULT NULL,
  `coor_lng` decimal(11,8) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_users`
--

INSERT INTO `app_users` (`id`, `employee_id`, `company_id`, `login_email`, `login_password`, `face_train_path`, `ad_status`, `last_device_logined`, `created_on`, `updated_on`, `created_by`, `updated_by`, `coor_lat`, `coor_lng`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'user1@example.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'path/to/face/training', 'active', 'device123', '2024-01-14 22:08:46', NULL, 1, NULL, -6.20880000, 106.84560000, NULL, '2024-01-16 07:34:48'),
(2, 2, 1, 'user2@example.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, NULL, NULL, '2024-01-16 14:11:46', NULL, NULL, NULL, NULL, NULL, '2024-01-16 07:11:46', '2024-01-16 07:11:46');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_telepon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_timezone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bidang_usaha` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `code`, `ent`, `nama`, `nomor_telepon`, `email`, `default_timezone`, `bidang_usaha`, `created_at`, `updated_at`) VALUES
(1, 'COMP1', 'Enterprise 1', 'Company 1', '123456789', 'company1@example.com', 'Asia/Jakarta', 'IT', NULL, NULL);

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
-- Table structure for table `log_remote_mobile_swaps`
--

CREATE TABLE `log_remote_mobile_swaps` (
  `id` bigint UNSIGNED NOT NULL,
  `emp_id` bigint UNSIGNED DEFAULT NULL,
  `capture_time` datetime DEFAULT NULL,
  `capture_longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capture_latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capture_selfie` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mock_status` int DEFAULT NULL,
  `device_data_json` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `log_remote_mobile_swaps`
--

INSERT INTO `log_remote_mobile_swaps` (`id`, `emp_id`, `capture_time`, `capture_longitude`, `capture_latitude`, `capture_selfie`, `mock_status`, `device_data_json`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-01-15 05:08:46', '123.456', '789.012', 'path/to/selfie.jpg', 0, '{\"key\": \"value\"}', 'Seeder', NULL, '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(2, NULL, NULL, '789.012', '123.456', 'selfies/r1t6SI5VrK7l6i1E5Z3GoJoyBSaAdSSs1lGkkv2W.png', 0, '{\"key\": \"1\"}', NULL, NULL, '2024-01-14 22:16:42', '2024-01-14 22:16:42'),
(3, 1, NULL, '789.012', '123.456', 'selfies/dliYvGuzSrDxtR6FXvTZ0BUdwjnVGi5xbAI87EyA.png', 0, '{\"key\": \"1\"}', NULL, NULL, '2024-01-16 07:40:28', '2024-01-16 07:40:28'),
(4, 1, NULL, '789.012', '123.456', 'selfies/Jh42XXs2LSvhLf8SSND2WoGDMfu75HNYhhQfKXKd.png', 0, '{\"key\": \"1\"}', NULL, NULL, '2024-01-16 07:41:14', '2024-01-16 07:41:14'),
(5, 2, NULL, '789.012', '123.456', 'selfies/QM9AG4aTKTtCijxs9jcn7OMGzQqGf9Laovqkdvmq.png', 0, '{\"key\": \"1\"}', NULL, NULL, '2024-01-16 07:42:05', '2024-01-16 07:42:05');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_01_06_123828_create_app_users_table', 1),
(6, '2024_01_06_123839_create_companies_table', 1),
(7, '2024_01_06_124209_create_wk_employee_realitation_attendances_table', 1),
(8, '2024_01_06_124241_create_notification_receivers_table', 1),
(9, '2024_01_06_124251_create_notifications_table', 1),
(10, '2024_01_06_124355_create_log_remote_mobile_swaps_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint UNSIGNED NOT NULL,
  `company_id` bigint UNSIGNED NOT NULL,
  `notif_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `company_id`, `notif_type`, `message`, `created_at`, `updated_at`) VALUES
(1, 1, 'Error', 'Temporibus impedit minima optio atque ea perferendis.', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(2, 2, 'Warning', 'A labore corporis libero reprehenderit natus.', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(3, 1, 'Warning', 'Aut qui architecto perspiciatis voluptas.', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(4, 1, 'Warning', 'Voluptatum eius aspernatur voluptate.', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(5, 4, 'Warning', 'Voluptas consequuntur qui ratione esse quam expedita.', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(6, 1, 'Info', 'Et cum suscipit fugit error cupiditate.', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(7, 4, 'Info', 'Sed qui aliquam at et consequuntur nostrum nobis.', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(8, 1, 'Warning', 'Totam placeat officiis aspernatur et sunt et.', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(9, 5, 'Error', 'Architecto enim labore vitae repudiandae facere eaque.', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(10, 3, 'Info', 'Dolorem molestias consequatur iusto debitis id tempora earum.', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(11, 4, 'Warning', 'Et quia aut laudantium harum expedita et.', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(12, 3, 'Warning', 'Nihil ab officiis ut fugiat.', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(13, 2, 'Error', 'Reprehenderit suscipit aut fuga asperiores eius.', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(14, 4, 'Info', 'Illo nulla cupiditate cum quia vel quos.', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(15, 2, 'Warning', 'Et magni consequuntur eligendi incidunt animi quibusdam facilis.', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(16, 1, 'Info', 'Repudiandae iste blanditiis molestiae ut autem nostrum non.', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(17, 2, 'Info', 'Assumenda explicabo nostrum nesciunt blanditiis alias magnam.', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(18, 4, 'Info', 'Odio consequatur commodi et laboriosam cum quia reiciendis.', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(19, 4, 'Info', 'Praesentium debitis quia quidem.', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(20, 4, 'Info', 'Repudiandae voluptas sed porro non quo.', '2024-01-14 22:08:46', '2024-01-14 22:08:46');

-- --------------------------------------------------------

--
-- Table structure for table `notification_receivers`
--

CREATE TABLE `notification_receivers` (
  `id` bigint UNSIGNED NOT NULL,
  `notification_id` bigint UNSIGNED NOT NULL,
  `emp_id` bigint UNSIGNED NOT NULL,
  `pushed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_receivers`
--

INSERT INTO `notification_receivers` (`id`, `notification_id`, `emp_id`, `pushed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 3, '2024-01-14 00:21:32', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(2, 1, 1, '2024-01-02 02:55:01', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(3, 1, 7, '2024-01-02 17:55:49', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(4, 1, 9, '2023-12-30 03:09:25', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(5, 1, 6, '2023-12-25 01:55:30', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(6, 2, 6, '2024-01-05 23:23:55', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(7, 2, 1, '2024-01-11 15:31:11', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(8, 2, 1, '2023-12-23 07:09:43', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(9, 2, 3, '2024-01-12 13:42:04', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(10, 2, 9, '2023-12-16 03:15:41', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(11, 3, 5, '2023-12-22 16:13:49', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(12, 3, 8, '2023-12-23 08:51:13', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(13, 3, 8, '2023-12-30 13:10:21', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(14, 3, 4, '2023-12-29 20:11:59', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(15, 3, 7, '2023-12-26 11:10:56', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(16, 4, 5, '2023-12-18 06:01:10', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(17, 4, 1, '2024-01-02 13:18:30', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(18, 4, 3, '2023-12-28 09:37:56', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(19, 4, 1, '2024-01-06 01:47:59', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(20, 4, 7, '2023-12-20 08:48:29', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(21, 5, 5, '2024-01-10 17:31:32', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(22, 5, 3, '2024-01-04 04:40:42', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(23, 5, 5, '2023-12-26 02:00:21', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(24, 5, 10, '2023-12-26 20:24:37', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(25, 5, 1, '2023-12-31 01:22:16', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(26, 6, 9, '2023-12-24 02:46:12', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(27, 6, 1, '2024-01-11 06:03:59', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(28, 6, 6, '2023-12-16 11:28:41', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(29, 6, 6, '2024-01-01 22:02:12', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(30, 6, 7, '2023-12-29 22:22:01', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(31, 7, 1, '2023-12-30 03:30:36', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(32, 7, 2, '2023-12-27 23:21:55', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(33, 7, 6, '2023-12-21 16:55:57', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(34, 7, 6, '2023-12-29 04:02:49', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(35, 7, 1, '2024-01-12 11:23:10', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(36, 8, 7, '2024-01-07 20:22:09', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(37, 8, 10, '2023-12-19 12:28:54', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(38, 8, 4, '2023-12-18 17:15:07', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(39, 8, 3, '2024-01-01 23:14:37', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(40, 8, 2, '2024-01-04 17:58:14', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(41, 9, 5, '2024-01-06 08:20:20', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(42, 9, 9, '2023-12-21 17:02:01', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(43, 9, 10, '2024-01-01 14:04:07', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(44, 9, 2, '2023-12-28 18:45:18', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(45, 9, 9, '2023-12-23 23:56:05', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(46, 10, 5, '2024-01-05 19:44:36', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(47, 10, 8, '2024-01-14 16:27:59', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(48, 10, 3, '2023-12-22 13:36:52', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(49, 10, 7, '2024-01-10 01:19:56', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(50, 10, 5, '2024-01-07 00:00:47', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(51, 11, 3, '2023-12-29 03:57:16', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(52, 11, 6, '2023-12-25 21:38:47', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(53, 11, 4, '2024-01-08 14:32:15', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(54, 11, 7, '2024-01-04 01:50:00', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(55, 11, 9, '2024-01-04 20:22:51', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(56, 12, 2, '2024-01-05 07:33:03', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(57, 12, 8, '2023-12-17 03:05:52', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(58, 12, 7, '2024-01-12 11:07:38', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(59, 12, 7, '2023-12-21 21:21:55', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(60, 12, 8, '2023-12-17 04:13:05', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(61, 13, 1, '2023-12-24 04:19:15', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(62, 13, 10, '2024-01-10 12:53:46', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(63, 13, 6, '2023-12-23 20:56:09', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(64, 13, 4, '2023-12-18 21:46:43', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(65, 13, 5, '2024-01-01 23:38:30', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(66, 14, 9, '2023-12-19 08:19:42', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(67, 14, 1, '2023-12-20 00:43:50', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(68, 14, 1, '2023-12-29 03:04:08', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(69, 14, 7, '2024-01-12 18:23:01', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(70, 14, 1, '2023-12-29 12:44:00', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(71, 15, 6, '2024-01-13 18:53:58', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(72, 15, 9, '2023-12-18 03:59:54', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(73, 15, 4, '2024-01-10 03:45:19', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(74, 15, 3, '2024-01-13 14:56:39', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(75, 15, 4, '2023-12-21 21:59:36', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(76, 16, 8, '2023-12-25 13:28:50', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(77, 16, 1, '2023-12-16 01:15:41', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(78, 16, 4, '2024-01-03 13:08:10', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(79, 16, 2, '2023-12-26 02:48:46', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(80, 16, 9, '2024-01-10 17:49:24', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(81, 17, 5, '2024-01-10 22:41:01', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(82, 17, 9, '2024-01-05 22:10:29', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(83, 17, 7, '2023-12-20 20:04:40', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(84, 17, 5, '2024-01-06 11:14:56', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(85, 17, 8, '2024-01-14 05:41:13', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(86, 18, 1, '2024-01-14 05:30:41', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(87, 18, 5, '2024-01-08 01:39:48', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(88, 18, 7, '2023-12-24 18:12:36', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(89, 18, 9, '2024-01-14 12:15:00', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(90, 18, 4, '2023-12-27 06:27:59', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(91, 19, 8, '2024-01-13 14:02:46', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(92, 19, 6, '2023-12-23 18:43:55', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(93, 19, 9, '2024-01-10 03:46:35', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(94, 19, 3, '2024-01-05 16:54:07', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(95, 19, 7, '2023-12-23 16:55:54', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(96, 20, 10, '2023-12-15 03:33:16', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(97, 20, 5, '2024-01-10 20:54:06', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(98, 20, 7, '2023-12-26 14:07:42', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(99, 20, 8, '2023-12-19 08:45:35', '2024-01-14 22:08:46', '2024-01-14 22:08:46'),
(100, 20, 1, '2024-01-06 16:41:49', '2024-01-14 22:08:46', '2024-01-14 22:08:46');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wk_employee_realitation_attendances`
--

CREATE TABLE `wk_employee_realitation_attendances` (
  `id` bigint UNSIGNED NOT NULL,
  `employee_id` bigint UNSIGNED NOT NULL,
  `attendance_date` date NOT NULL,
  `attendance_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_paid_day` tinyint(1) NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` timestamp NULL DEFAULT NULL,
  `created_by` bigint UNSIGNED NOT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wk_employee_realitation_attendances`
--

INSERT INTO `wk_employee_realitation_attendances` (`id`, `employee_id`, `attendance_date`, `attendance_status`, `is_paid_day`, `keterangan`, `created_on`, `updated_on`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 2, '1989-12-20', 'Hadir', 1, 'Sed enim quia cumque hic qui eveniet est. Et facilis vero et nesciunt dolorem quasi. Occaecati minima ea sed accusamus molestiae quia quisquam.', '2024-01-14 22:08:46', '2024-01-14 22:08:46', 1, 1, NULL, NULL),
(2, 7, '2002-10-24', 'Sakit', 0, 'Rem ullam molestiae excepturi eum dolorem ab esse. Id ex ipsa aut autem ea. Assumenda quas ex quia excepturi omnis expedita consequuntur aut. Nulla laudantium autem numquam quia porro.', '2024-01-14 22:08:46', '2024-01-14 22:08:46', 1, 1, NULL, NULL),
(3, 7, '1989-06-14', 'Izin', 1, 'Non qui ut optio in. Sint cupiditate qui illum iusto ullam voluptatum blanditiis. Sequi laborum iste sunt asperiores. Et aut ut quasi itaque aut rerum fugiat.', '2024-01-14 22:08:46', '2024-01-14 22:08:46', 1, 1, NULL, NULL),
(4, 8, '2007-10-18', 'Sakit', 1, 'Rerum culpa suscipit id. Consequuntur error et rerum quis veniam at. Facilis et sit non aperiam tenetur quia. Ut laboriosam minima hic eum perferendis quo et modi.', '2024-01-14 22:08:46', '2024-01-14 22:08:46', 1, 1, NULL, NULL),
(5, 8, '2007-12-21', 'Sakit', 1, 'Animi magni et molestiae ut deleniti repellendus repellat. Quibusdam nemo eum qui. Odio reiciendis soluta qui quaerat.', '2024-01-14 22:08:46', '2024-01-14 22:08:46', 1, 1, NULL, NULL),
(6, 2, '2018-10-08', 'Hadir', 0, 'Enim vel repudiandae magni soluta est. Ut facilis ea iusto labore corrupti quos. Iure illo architecto facilis. Sequi nam voluptatibus corrupti ratione quidem adipisci quasi.', '2024-01-14 22:08:46', '2024-01-14 22:08:46', 1, 1, NULL, NULL),
(7, 7, '2004-03-31', 'Sakit', 0, 'Provident vel consectetur qui sed. Sed voluptatem non quas perspiciatis minima. Repudiandae aut vel nemo officiis.', '2024-01-14 22:08:46', '2024-01-14 22:08:46', 1, 1, NULL, NULL),
(8, 3, '1973-09-26', 'Izin', 0, 'Ea esse vero quis omnis distinctio. Aut perferendis ad iusto assumenda excepturi tenetur. Explicabo numquam pariatur qui dolor. Eveniet assumenda magni harum dolor.', '2024-01-14 22:08:46', '2024-01-14 22:08:46', 1, 1, NULL, NULL),
(9, 9, '1989-10-02', 'Hadir', 0, 'Esse rerum ab nulla inventore repudiandae labore. Dolores perferendis rerum rem atque aut illum. Accusamus voluptatem quidem fugit eum et. Inventore eos nisi nam aliquam asperiores voluptate.', '2024-01-14 22:08:46', '2024-01-14 22:08:46', 1, 1, NULL, NULL),
(10, 6, '2002-10-24', 'Izin', 0, 'Sint aut aut accusantium nihil. Esse ut et ea officia. Et earum architecto eveniet aut.', '2024-01-14 22:08:46', '2024-01-14 22:08:46', 1, 1, NULL, NULL),
(11, 3, '1973-10-02', 'Sakit', 0, 'Nihil nobis enim ut officiis et at. Ut distinctio voluptate repellendus ad mollitia. Ea unde quia id.', '2024-01-14 22:08:46', '2024-01-14 22:08:46', 1, 1, NULL, NULL),
(12, 3, '1998-09-12', 'Izin', 0, 'Similique commodi molestiae odio voluptatibus reprehenderit optio totam beatae. Doloribus sed earum id facilis. Quod cupiditate vitae unde qui.', '2024-01-14 22:08:46', '2024-01-14 22:08:46', 1, 1, NULL, NULL),
(13, 9, '2014-11-12', 'Sakit', 1, 'Non distinctio non occaecati aliquam ipsam. Consequuntur dignissimos repellat provident quas. Est est quos tempora.', '2024-01-14 22:08:46', '2024-01-14 22:08:46', 1, 1, NULL, NULL),
(14, 7, '2009-04-14', 'Hadir', 0, 'Quia aut et sit voluptatibus cupiditate facilis aliquid totam. Voluptatibus nesciunt quas voluptatibus dolores. Atque quis molestias pariatur. Aut minima deserunt ut suscipit.', '2024-01-14 22:08:46', '2024-01-14 22:08:46', 1, 1, NULL, NULL),
(15, 2, '2016-10-23', 'Sakit', 1, 'Sint aut vel maiores ratione. Quia error doloribus rerum dolorem reprehenderit. Aut totam rerum itaque quae ea reprehenderit.', '2024-01-14 22:08:46', '2024-01-14 22:08:46', 1, 1, NULL, NULL),
(16, 8, '1984-07-11', 'Sakit', 1, 'Ut voluptatem tempora expedita reiciendis repudiandae. Tempore eligendi nobis non sed. Labore dolor consequatur sed aliquam minus cumque. Alias qui consequuntur assumenda voluptatem occaecati hic.', '2024-01-14 22:08:46', '2024-01-14 22:08:46', 1, 1, NULL, NULL),
(17, 7, '2002-11-07', 'Izin', 0, 'Dolore quis est rerum deleniti laborum. Aut est explicabo nemo iste velit. Et omnis nihil omnis corporis quo fugiat dolore.', '2024-01-14 22:08:46', '2024-01-14 22:08:46', 1, 1, NULL, NULL),
(18, 6, '2010-05-14', 'Hadir', 0, 'Possimus sunt vero dolor labore dignissimos perferendis molestias est. Nostrum beatae quaerat sed ut cum. Quos quos rerum voluptas in.', '2024-01-14 22:08:46', '2024-01-14 22:08:46', 1, 1, NULL, NULL),
(19, 5, '1986-02-15', 'Sakit', 1, 'Sint reiciendis sit neque vel tenetur. Excepturi beatae id laboriosam velit saepe distinctio repellat tempora. Cum vero voluptas non velit fugit saepe veritatis.', '2024-01-14 22:08:46', '2024-01-14 22:08:46', 1, 1, NULL, NULL),
(20, 8, '1999-01-23', 'Hadir', 0, 'Ipsam est quam quod repellat numquam nostrum sit aliquid. Sed ipsa beatae et similique molestiae. Tenetur exercitationem beatae in et.', '2024-01-14 22:08:46', '2024-01-14 22:08:46', 1, 1, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_users`
--
ALTER TABLE `app_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `log_remote_mobile_swaps`
--
ALTER TABLE `log_remote_mobile_swaps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_receivers`
--
ALTER TABLE `notification_receivers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wk_employee_realitation_attendances`
--
ALTER TABLE `wk_employee_realitation_attendances`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_users`
--
ALTER TABLE `app_users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_remote_mobile_swaps`
--
ALTER TABLE `log_remote_mobile_swaps`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `notification_receivers`
--
ALTER TABLE `notification_receivers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wk_employee_realitation_attendances`
--
ALTER TABLE `wk_employee_realitation_attendances`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
