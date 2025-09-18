-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2025 at 11:15 AM
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
-- Database: `barangaycobolservices_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `barangay_complaints`
--

CREATE TABLE `barangay_complaints` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `complaint` varchar(255) NOT NULL,
  `respondent` varchar(255) NOT NULL,
  `victim` varchar(255) DEFAULT NULL,
  `date` date NOT NULL,
  `location` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `status` enum('Active Case','Settled Case','Scheduled Case') NOT NULL DEFAULT 'Active Case',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `barangay_complaints`
--

INSERT INTO `barangay_complaints` (`id`, `fullname`, `complaint`, `respondent`, `victim`, `date`, `location`, `details`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Jan tyron Gundayao', 'harassment', 'Kagawad  Manolito', 'Rhojoval Caldona', '2025-04-06', 'Cobol, Sccp', 'Rhojoval Caldona harass by Paul Cyber Gino-Gino', 'Scheduled Case', '2025-04-05 19:35:42', '2025-05-14 07:44:40'),
(2, 'Clarence Joy Nanlabi', 'harassment', 'Kagawad  Manolito', 'Julius Sabangan', '2025-05-15', 'Purok 2 sitio taew', 'hahfajsfhasdf', 'Settled Case', '2025-05-14 21:21:28', '2025-05-14 21:22:52'),
(3, 'Clarence Joy Nanlabi', 'harassment', 'Kagawad  Manolito', 'Julius Sabangan', '2025-05-15', 'Purok 2 sitio taew', 'hahfajsfhasdf', 'Active Case', '2025-05-14 21:21:29', '2025-05-14 21:21:29');

-- --------------------------------------------------------

--
-- Table structure for table `barangay_officials`
--

CREATE TABLE `barangay_officials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `resident_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fullname` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `term_start` date NOT NULL,
  `term_end` date NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `barangay_officials`
--

INSERT INTO `barangay_officials` (`id`, `resident_id`, `fullname`, `position`, `term_start`, `term_end`, `status`, `created_at`, `updated_at`) VALUES
(12, 8, 'Jan tyron Gundayao', 'Barangay Captain', '2019-10-30', '2025-10-30', 'Active', '2025-05-05 20:51:59', '2025-05-14 07:04:44'),
(13, NULL, 'juan Carlos', 'Barangay Kagawad', '2019-10-30', '2025-10-30', 'Active', '2025-05-05 20:52:55', '2025-05-14 07:05:06'),
(15, NULL, 'Zyrell Naron', 'Barangay Kagawad', '2019-10-30', '2025-10-30', 'Active', '2025-05-05 20:54:08', '2025-05-14 07:05:25'),
(22, 15, 'Julius sabangan', 'Barangay Kagawad', '2019-10-30', '2025-10-30', 'Active', '2025-05-14 05:55:55', '2025-05-14 07:05:46'),
(23, 16, 'Paul Cyber Gino-Gino', 'Barangay Kagawad', '2019-10-30', '2025-10-30', 'Active', '2025-05-14 07:06:17', '2025-05-14 07:06:17'),
(24, 21, 'Joshua Daroya', 'Barangay Treasurer', '2019-10-30', '2025-10-30', 'Active', '2025-05-14 07:36:10', '2025-05-14 07:36:10'),
(25, NULL, 'jommel Cruz', 'SK Chairman', '2019-10-30', '2025-10-30', 'Active', '2025-05-14 07:41:17', '2025-05-14 07:41:17');

-- --------------------------------------------------------

--
-- Table structure for table `barangay_projects`
--

CREATE TABLE `barangay_projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_name` varchar(255) NOT NULL,
  `purok` enum('Purok 1','Purok 2','Purok 3') NOT NULL,
  `sitio` varchar(255) DEFAULT NULL,
  `category` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `start_date` date NOT NULL,
  `target_completion_date` date NOT NULL,
  `status` enum('Planned','Ongoing','Completed','Delayed','Cancelled') NOT NULL,
  `completion_percentage` decimal(5,2) NOT NULL DEFAULT 0.00,
  `total_budget` decimal(12,2) NOT NULL,
  `funds_utilized` decimal(12,2) NOT NULL DEFAULT 0.00,
  `funding_source` varchar(255) NOT NULL,
  `project_lead` varchar(255) NOT NULL,
  `contractor` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `barangay_projects`
--

INSERT INTO `barangay_projects` (`id`, `project_name`, `purok`, `sitio`, `category`, `description`, `start_date`, `target_completion_date`, `status`, `completion_percentage`, `total_budget`, `funds_utilized`, `funding_source`, `project_lead`, `contractor`, `created_at`, `updated_at`) VALUES
(8, 'Road Widening', 'Purok 1', 'Sitio Leksab', 'Infrastructure', 'The Road Widening Project aims to enhance transportation accessibility and safety within the barangay by expanding narrow roads and pathways. This initiative is designed to accommodate the growing number of vehicles, reduce traffic congestion, and provide better access for emergency response, delivery services, and daily commuters. The project includes clearing of obstructions, lane expansion, construction of drainage systems, and installation of necessary road signage.\r\n\r\nThis development supports the barangay’s long-term goals of improved infrastructure, safer communities, and sustainable urban mobility for all residents.', '2022-05-06', '2025-07-05', 'Ongoing', 20.00, 1500000.00, 0.00, 'Cayabyab', 'Eng.Justine T. Aquino', NULL, '2025-05-14 06:11:33', '2025-05-14 06:15:59'),
(9, 'barangay hall', 'Purok 2', 'Sitio Taew', 'Infrastructure', 'The Barangay Hall Project involves the construction, renovation, or expansion of the official government building that serves as the central hub for barangay governance and public service delivery. This facility accommodates barangay officials, staff, and various administrative functions such as issuing certificates, handling records, conducting meetings, and assisting residents with their concerns. The project aims to improve accessibility, enhance operational efficiency, and provide a safe, functional, and welcoming environment for both staff and constituents.', '2023-12-01', '2025-11-02', 'Completed', 100.00, 1000000.00, 0.00, 'Lgu', 'Eng.Justine T. Aquino', NULL, '2025-05-14 06:40:14', '2025-05-14 06:57:52'),
(10, 'Road Widening', 'Purok 2', 'Sitio Taew', 'Infrastructure', 'Road Widening', '2024-11-02', '2026-12-30', 'Planned', 50.00, 1500000.00, 0.00, 'Lgu', 'Eng.Justine T. Aquino', NULL, '2025-05-14 21:29:15', '2025-05-14 21:29:44');

-- --------------------------------------------------------

--
-- Table structure for table `barangay_services`
--

CREATE TABLE `barangay_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clearancereq`
--

CREATE TABLE `clearancereq` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `resident_id` bigint(20) UNSIGNED DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `dateofbirth` date NOT NULL,
  `placeofbirth` varchar(255) NOT NULL,
  `civil_status` varchar(255) NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `purpose` text NOT NULL,
  `pickup_date` date DEFAULT NULL,
  `tracking_code` varchar(255) NOT NULL,
  `status` enum('pending','processing','ready to pick up','released') NOT NULL DEFAULT 'pending',
  `requested_date` datetime NOT NULL DEFAULT '2025-04-05 16:55:05',
  `released_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clearancereq`
--

INSERT INTO `clearancereq` (`id`, `fullname`, `resident_id`, `address`, `dateofbirth`, `placeofbirth`, `civil_status`, `gender`, `purpose`, `pickup_date`, `tracking_code`, `status`, `requested_date`, `released_date`, `created_at`, `updated_at`) VALUES
(11, 'Jan tyron Gundayao', 8, 'Cobol, SCCP', '2004-01-08', 'Pangasinan Provincial Hospital', 'Single', 'male', 'school', '2025-05-15', 'Z5QW2BPOH9', 'pending', '2025-05-14 10:09:15', NULL, '2025-05-14 02:09:15', '2025-05-14 02:09:15'),
(12, 'Julius sabangan', 15, 'Cobol San Carlos City Pangasinan', '2003-12-02', 'Pangasinan Provincial Hospital', 'Single', 'male', 'school', '2025-05-14', '1Y6PQJ2DIU', 'released', '2025-05-14 10:42:57', '2025-05-15 05:32:13', '2025-05-14 02:42:57', '2025-05-14 21:32:13');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(6, '2025_03_21_150341_update_clearancereq_table', 1),
(7, '2025_03_27_170137_create_barangay_officials_table', 1),
(8, '2025_03_27_190321_create_barangay_complaints_table', 1),
(9, '2025_03_30_114731_update_clearancereq_status_and_released_date', 1),
(10, '2025_03_08_052231_create_residents_table', 2),
(11, '2025_04_25_130455_create_examples_table', 3),
(12, '2025_04_29_115929_barangay_projects_tb', 4),
(13, '2025_04_29_121241_barangay_project_types_table', 5),
(14, '2025_04_29_121242_purok_table', 6),
(15, '2025_04_29_121242_sitio_table', 6),
(16, '2025_04_29_121243_brgy_projects_coordinators_table', 6),
(17, '2025_04_29_121243_brgy_projectss_funding_sources_table', 6),
(18, '2025_04_29_121244_brgy_projects_contractors_table', 6),
(19, '2025_04_29_123012_barangay_project_types_table', 7),
(20, '2025_04_30_150938_create_project_types_table', 8),
(21, '2025_04_30_150942_create_project_statuses_table', 8),
(22, '2025_04_30_150942_create_puroks_table', 8),
(23, '2025_04_30_150943_create_sitios_table', 9),
(24, '2025_04_30_152731_create_barangay_projects_table', 10),
(25, '2025_05_01_104734_rename_purok_no_to_purok_id_in_barangay_projects_table', 11),
(26, '2025_05_01_114103_create_barangay_projects_table', 12),
(27, '2025_05_04_130549_add_resident_id_to_clearancereq_table', 13),
(28, '2025_05_04_182431_create_services_table', 14),
(29, '2025_05_04_182546_create_barangay_services_table', 15),
(30, '2025_05_05_155609_add_resident_id_to_barangay_officials_table', 16),
(31, '2025_05_06_085036_add_religion_and_image_to_residents_table', 17);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `residents`
--

CREATE TABLE `residents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Fname` varchar(255) NOT NULL,
  `mname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) NOT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `birthday` date NOT NULL,
  `birthplace` varchar(255) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `civil_status` enum('Single','Married','Widowed','Separated','Divorced') NOT NULL,
  `Citizenship` varchar(255) NOT NULL,
  `religion` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `household_no` varchar(255) NOT NULL,
  `purok_no` enum('Purok 1','Purok 2','Purok 3') NOT NULL,
  `sitio` enum('Sitio Leksab','Sitio Taew','Sitio Pidlaoan') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `residents`
--

INSERT INTO `residents` (`id`, `Fname`, `mname`, `lname`, `gender`, `birthday`, `birthplace`, `age`, `civil_status`, `Citizenship`, `religion`, `image`, `contact_number`, `occupation`, `household_no`, `purok_no`, `sitio`, `created_at`, `updated_at`) VALUES
(8, 'Jan Tyron', 'Ronquillo', 'Gundayao', 'Male', '2004-01-08', 'Pangasinan Provincial Hospital', 21, 'Single', 'Filipino', 'Apostolic Believer', 'resident_images/qPZnNQXpqRXsAOSTxoVDPy2Kdjj9a2lgDGOqkr4k.png', '09123455678', 'Student', '232', 'Purok 2', NULL, '2025-04-05 22:19:18', '2025-05-14 01:25:03'),
(15, 'Julius', 'Gundayao', 'Sabangan', 'Male', '2003-12-02', 'Pangasinan Provincial Hospital', 21, 'Single', 'Filipino', 'catholic', 'resident_images/6Z1kIZH3bGsuFatpJuAfzwK9m2w0SbGiJMoDyuHP.jpg', '09123455678', 'Student', '258', 'Purok 2', NULL, '2025-05-06 01:59:55', '2025-05-14 01:16:48'),
(16, 'paul cyber', 'doria', 'Gino-Gino', 'Male', '2004-05-25', 'blessed family doctors general hospital', 20, 'Single', 'Filipino', 'catholic', 'resident_images/w8dNPMHa01TbNwgivOCPpDGqRwrRWYfX75f5Of8k.jpg', '09858623424', 'Student', '123', 'Purok 1', NULL, '2025-05-06 02:09:57', '2025-05-14 03:09:30'),
(17, 'Rhonjval', 'Loresca', 'Caldona', 'Male', '2004-11-02', 'Pangasinan Provincial Hospital', 20, 'Single', 'Filipino', 'Jehova Witnesses', 'resident_images/Ge2u0NyOGP7vgP0GZwB5EFVZkqyxezZb48Xg2S5p.jpg', '09235623234', 'Student', '300', 'Purok 1', NULL, '2025-05-06 04:32:05', '2025-05-14 01:25:53'),
(19, 'shaira', 'Mendoza', 'Baniqued', 'Female', '2004-11-03', 'Bulacan', 20, 'Single', 'Filipino', 'catholic', 'resident_images/WsN7IZqDipeOBkdJo4n1Fo9KC4U6GeY5F4E2QfOh.png', '09123455678', 'Student', '125', 'Purok 2', 'Sitio Taew', '2025-05-07 06:37:35', '2025-05-07 06:37:35'),
(21, 'Joshua', 'Cayabyab', 'Daroya', 'Male', '2003-09-02', 'Dagupan City Pangasinan', 21, 'Single', 'Filipino', 'Methodist', 'resident_images/zA4qNck3SQE5MaQzZiYvmeZ6HL45r3ggrCUg3FMp.jpg', '09858623424', 'Student', '125', 'Purok 1', 'Sitio Leksab', '2025-05-14 07:32:35', '2025-05-14 07:32:35'),
(22, 'jommel', 'Cruz', 'Incipido', 'Male', '2001-10-01', 'Calasiao, Pangasinan', 23, 'Single', 'Filipino', 'catholic', 'resident_images/nk8qOFxCTbzOwRsVwXaYuPsj8gq0OESMfFZDKbne.jpg', '09123455678', 'Student', '232', 'Purok 1', NULL, '2025-05-14 07:38:38', '2025-05-14 07:38:38'),
(23, 'clarence joy', 'Baldoza', 'Nanlabi', 'Male', '2001-12-05', 'Bayambang Pangasinan', 23, 'Single', 'Filipino', 'catholic', NULL, '09123455678', 'Student', '125', 'Purok 2', NULL, '2025-05-14 21:01:08', '2025-05-14 21:01:08');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('8MgHOOCM85xMDMDhwwKIODtbrdCcDdHy73z1nZEs', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWEpiUVhSRVI0OXluaWZaem5YMmdWR3pXWVV6SW9QdnVXUlFreVM4MCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fX0=', 1748273687),
('abbMnMWVZ1RrMftGvS7uQbY14PUEsx9ofQdYMZBW', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieXQxQzg0d3RzQmp0ZFlHblo5U2xQRGk2RjZabmt1SnNCMEl4QUMwYiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9pbmRpZ2VuY3kvdmlldy8xMiI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1747287194),
('UeHp2G0HsGcOyhhb79GoaUYBYhEm3WhEyReZMMjP', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZDVzSU0wdlVoalJRMm9qNE5VTkZTMjJrZ1FFUGU2U1J0bzd3Q1FaWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9CYXJhbmdheUNvYm9sU2VydmljZXMvQ2xlYXJhbmNlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1747835889);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  `password` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `role`, `password`, `image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Barangay Admin', 'BarangayCobol@gmail.com', NULL, 'admin', '$2y$12$ysdwQ0nU.khKG9vnQ1hcSev0fgg6pmV1V3IBlNieB59SZdqe/ip0S', '8Bkgzw1N2pfq9nwWRf4ViEkfuKDXu6eSl6XV4FKr.jpg', NULL, '2025-04-05 08:55:23', '2025-04-16 00:54:55'),
(2, 'SKUser', 'skchairnman@gmail.com', NULL, 'user', '$2y$12$rPAS8I4ICdZ7rbjDIpXerOB7tRGuWAG3P6hRdft7KOGf2ZrTL3bfC', NULL, NULL, '2025-04-05 08:55:23', '2025-04-05 08:55:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barangay_complaints`
--
ALTER TABLE `barangay_complaints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barangay_officials`
--
ALTER TABLE `barangay_officials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `barangay_officials_resident_id_foreign` (`resident_id`);

--
-- Indexes for table `barangay_projects`
--
ALTER TABLE `barangay_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barangay_services`
--
ALTER TABLE `barangay_services`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `clearancereq`
--
ALTER TABLE `clearancereq`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clearancereq_tracking_code_unique` (`tracking_code`),
  ADD KEY `clearancereq_resident_id_foreign` (`resident_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `residents`
--
ALTER TABLE `residents`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `barangay_complaints`
--
ALTER TABLE `barangay_complaints`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `barangay_officials`
--
ALTER TABLE `barangay_officials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `barangay_projects`
--
ALTER TABLE `barangay_projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `barangay_services`
--
ALTER TABLE `barangay_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `clearancereq`
--
ALTER TABLE `clearancereq`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `residents`
--
ALTER TABLE `residents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barangay_officials`
--
ALTER TABLE `barangay_officials`
  ADD CONSTRAINT `barangay_officials_resident_id_foreign` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `clearancereq`
--
ALTER TABLE `clearancereq`
  ADD CONSTRAINT `clearancereq_resident_id_foreign` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
