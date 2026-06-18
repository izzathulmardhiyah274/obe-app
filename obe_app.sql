-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 18, 2026 at 03:08 PM
-- Server version: 8.0.45-cll-lve
-- PHP Version: 8.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anugra43_obe2`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel-cache-classrooms.auto_archived_at', 's:10:\"2026-06-17\";', 1781740800);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `jobs`
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
-- Table structure for table `job_batches`
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
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_12_31_131231_create_mahasiswa_table', 1),
(5, '2025_12_31_134036_create_graduate_profiles_table', 1),
(6, '2025_12_31_142013_create_cpls_table', 1),
(7, '2025_12_31_151108_create_courses_table', 1),
(8, '2025_12_31_151111_create_course_user_table', 1),
(9, '2025_12_31_152212_add_prerequisite_to_courses_table', 1),
(10, '2025_12_31_152214_create_course_cpl_table', 1),
(11, '2025_12_31_152215_create_cpmks_table', 1),
(12, '2025_12_31_172241_add_lecturer_to_cpmks_table', 1),
(13, '2025_12_31_172243_create_indicators_table', 1),
(14, '2026_01_02_083017_create_settings_table', 1),
(15, '2026_01_02_092953_create_assessments_table', 1),
(16, '2026_01_02_094004_add_is_auto_to_assessments_table', 1),
(17, '2026_01_02_094638_create_assessment_scores_table', 1),
(18, '2026_01_02_095222_create_classrooms_table', 1),
(19, '2026_01_02_100031_add_course_id_to_classrooms_table', 1),
(20, '2026_01_02_100300_add_enrollment_code_to_classrooms_table', 1),
(21, '2026_01_02_100648_create_classroom_user_table', 1),
(22, '2026_01_02_101857_add_is_archived_to_classrooms_table', 1),
(23, '2026_03_18_083746_add_percentage_to_cpmks_and_indicators_table', 1),
(24, '2026_04_16_020919_add_cpl_id_to_cpmks_table', 1),
(25, '2026_04_16_041900_add_period_fields_to_classrooms_table', 1),
(26, '2026_04_16_045000_add_initials_to_users_table', 1),
(27, '2026_04_19_224454_create_classroom_cpmk_lecturer_table', 1),
(28, '2026_04_19_235225_add_meetings_to_cpmks_table', 1),
(29, '2026_04_26_080654_create_classroom_cpmks_table', 1),
(30, '2026_04_26_080702_create_classroom_cpmk_indicators_table', 1),
(31, '2026_04_26_080703_create_classroom_cpmk_assessments_table', 1),
(32, '2026_04_26_080704_create_classroom_cpmk_assessment_scores_table', 1),
(33, '2026_04_26_080705_create_notifications_table', 1),
(34, '2026_04_29_053806_create_login_slides_table', 1),
(35, '2026_04_29_100000_rename_tables_to_obe_prefix', 1),
(36, '2026_04_29_100100_seed_period_settings', 1),
(37, '2026_04_29_100200_add_kaprodi_snapshot_to_obe_kelas', 1),
(38, '2026_04_29_100300_create_obe_pengelola_table', 1),
(39, '2026_04_29_100400_create_program_studi_jurusan_tables', 1),
(40, '2026_04_29_100500_create_role_profile_tables', 1),
(41, '2026_04_30_100000_add_wajib_pilihan_to_obe_mata_kuliah', 1),
(42, '2026_05_03_100000_add_konsentrasi_to_obe_mahasiswa', 1),
(43, '2026_05_03_110000_create_obe_konsentrasi_table', 1),
(44, '2026_05_03_110100_create_obe_semester_table', 1),
(45, '2026_05_06_100000_add_min_target_to_obe_cpl', 1),
(46, '2026_05_06_120000_add_satu_unri_bobot_to_obe_kelas', 1),
(47, '2026_05_08_044814_add_jurusan_id_to_obe_pengguna_and_kode_to_jurusan_prodi', 1),
(48, '2026_05_18_183914_add_bidang_and_ttd_to_obe_pengelola', 1),
(49, '2026_05_21_114130_add_jabatan_akademik_to_obe_pengguna', 1),
(50, '2026_05_21_181651_add_jurusan_id_to_obe_program_studi', 1),
(51, '2026_05_22_102205_add_classroom_id_to_obe_komponen_penilaian', 1),
(52, '2026_05_23_155927_add_jurusan_id_to_obe_mata_kuliah', 2),
(53, '2026_05_23_202550_add_program_studi_id_to_courses_table', 3),
(54, '2026_05_24_080807_add_program_studi_id_to_cpl_and_graduate_profiles', 4),
(55, '2026_05_24_080856_backfill_program_studi_id_on_courses', 4),
(56, '2026_06_01_191231_create_obe_sub_cpmk_table', 5),
(57, '2026_06_01_191346_create_obe_kelas_sub_cpmk_table', 5),
(58, '2026_06_01_214633_crate_sub_cpmks_table', 5),
(59, '2026_06_04_152335_backfill_classroom_id_on_obe_komponen_penilaian', 6),
(60, '2026_06_06_100000_create_obe_bahan_kajian_table', 7),
(61, '2026_06_06_100100_create_obe_cpl_bahan_kajian_table', 7),
(62, '2026_06_06_100200_create_obe_mata_kuliah_bahan_kajian_table', 7),
(63, '2026_06_06_100300_create_obe_profil_lulusan_cpl_table', 7),
(64, '2026_06_07_161424_restore_percentage_and_meetings_on_obe_cpmk_indikator', 7),
(65, '2026_06_09_160832_create_obe_sub_cpmk_table', 8),
(66, '2026_06_09_160834_create_obe_kelas_sub_cpmk_table', 8),
(67, '2026_06_09_160835_add_classroom_sub_cpmk_id_to_obe_kelas_cpmk_indikator_table', 8),
(68, '2026_06_09_160835_add_sub_cpmk_id_to_obe_indikator_table', 8),
(69, '2026_06_10_021624_add_meetings_to_obe_sub_cpmk_table', 9),
(70, '2026_06_10_104404_create_obe_kelas_indikator_bobot_table', 10),
(71, '2026_06_14_135323_add_cpl_weight_to_obe_cpmk_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `obe_bahan_kajian`
--

CREATE TABLE `obe_bahan_kajian` (
  `id` bigint UNSIGNED NOT NULL,
  `program_studi_id` bigint UNSIGNED DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `obe_carousel_login`
--

CREATE TABLE `obe_carousel_login` (
  `id` bigint UNSIGNED NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` smallint UNSIGNED NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `obe_cpl`
--

CREATE TABLE `obe_cpl` (
  `id` bigint UNSIGNED NOT NULL,
  `program_studi_id` bigint UNSIGNED DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_target` decimal(5,2) NOT NULL DEFAULT '60.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `obe_cpl`
--

INSERT INTO `obe_cpl` (`id`, `program_studi_id`, `code`, `description`, `min_target`, `created_at`, `updated_at`) VALUES
(1, 14, 'CPL 01', 'Mampu menelaah (C4) dan mengintegrasikan (P4) secara responsif dan inovatif ilmu pengetahuan bidang agama, humaniora, teknologi informasi dan komunikasi, kewirausahaan, ilmu lingkungan dan mitigasi kebencanaan, serta membiasakan (A5) bersikap amanah dan santun dalam kehidupan bermasyarakat dan di dunia kerja yang relevan.', 70.00, '2026-05-23 08:10:55', '2026-05-23 08:10:55'),
(2, 14, 'CPL 02', 'Bertakwa kepada Tuhan, menjunjung tinggi nilai kemanusiaan dan etika akademik, berkontribusi pada masyarakat, serta memiliki tanggung jawab profesional dan kompetensi sosial.', 70.00, '2026-05-23 08:11:08', '2026-05-23 08:11:08'),
(3, 14, 'CPL 03', 'Memiliki pengetahuan yang memadai terkait cara kerja sistem komputer dan mampu menerapkan/menggunakan berbagai algoritma/metode untuk memecahkan masalah pada suatu organisasi.', 70.00, '2026-05-23 08:11:29', '2026-05-23 08:11:29'),
(4, 14, 'CPL 04', 'Memiliki kompetensi untuk menganalisis persoalan computing yang kompleks untuk mengidentifikasi solusi pengelolaan proyek teknologi bidang informatika/ilmu komputer dengan mempertimbangkan wawasan perkembangan ilmu transdisiplin.', 70.00, '2026-05-23 08:11:39', '2026-05-23 08:11:39'),
(5, 14, 'CPL 05', 'Menguasai konsep teoritis bidang pengetahuan Ilmu Komputer/Informatika dalam mendesain dan mensimulasikan aplikasi teknologi multi-platform yang relevan dengan kebutuhan industri dan masyarakat.', 70.00, '2026-05-23 08:11:48', '2026-05-23 08:11:48'),
(6, 14, 'CPL 06', 'Menguasai kompetensi teknologi, mampu bekerja mandiri dengan kualitas tinggi, menerapkan pemikiran logis, kritis, sistematis, dan inovatif dalam pengembangan ilmu pengetahuan dan teknologi yang memperhatikan penerapan nilai humaniora.', 70.00, '2026-05-23 08:11:56', '2026-05-23 08:11:56'),
(7, 14, 'CPL 07', 'Kemampuan merancang dan menganalisis algoritma untuk menyelesaikan permasalahan organisasi secara optimal, serta memilih dan menerapkannya pada bahasa pemrograman tertentu.', 70.00, '2026-05-23 08:12:08', '2026-05-23 08:12:08'),
(8, 14, 'CPL 08', 'Kemampuan menganalisis, merancang, membuat dan mengevaluasi user interface dan aplikasi interaktif dengan mempertimbangkan kebutuhan pengguna dan perkembangan ilmu transdisiplin.', 70.00, '2026-05-23 08:12:15', '2026-05-23 08:12:15'),
(9, 14, 'CPL 09', 'Kemampuan memecahkan masalah di dunia industri dengan pendekatan sistem cerdas menggunakan algoritma kompleks.', 70.00, '2026-05-23 08:12:22', '2026-05-23 08:12:22'),
(10, 14, 'CPL 10', 'Kemampuan merancang dan mengimplementasikan program komputer untuk mengoptimalkan kinerja jaringan komputer dan komunikasi pada sebuah organisasi.', 70.00, '2026-05-23 08:12:29', '2026-05-23 08:12:29'),
(11, 14, 'CPL 11', 'Kemampuan mendesain, mengimplementasi dan mengevaluasi solusi berbasis computing multi-platform yang memenuhi kebutuhan-kebutuhan computing pada sebuah organisasi.', 70.00, '2026-05-23 08:12:40', '2026-05-23 08:12:40'),
(12, 14, 'CPL 12', 'Kemampuan mengimplementasi kebutuhan computing dengan mempertimbangkan berbagai metode/algoritma yang sesuai.', 70.00, '2026-05-23 08:12:50', '2026-05-23 08:12:50'),
(13, 14, 'CPL 13', 'Mengidentifikasi dan menganalisis kebutuhan-kebutuhan pengguna dan mempertimbangkannya dalam memilih, membuat, mengintegrasi, mengevaluasi, dan mengadministrasi sistem berbasis computing.', 70.00, '2026-05-23 08:12:58', '2026-05-23 08:12:58');

-- --------------------------------------------------------

--
-- Table structure for table `obe_cpl_bahan_kajian`
--

CREATE TABLE `obe_cpl_bahan_kajian` (
  `id` bigint UNSIGNED NOT NULL,
  `cpl_id` bigint UNSIGNED NOT NULL,
  `bahan_kajian_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `obe_cpmk`
--

CREATE TABLE `obe_cpmk` (
  `id` bigint UNSIGNED NOT NULL,
  `course_id` bigint UNSIGNED NOT NULL,
  `cpl_id` bigint UNSIGNED DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` decimal(5,2) NOT NULL DEFAULT '0.00',
  `cpl_weight` decimal(5,2) DEFAULT NULL,
  `lecturer_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `meeting_start` tinyint UNSIGNED DEFAULT NULL,
  `meeting_end` tinyint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `obe_cpmk`
--

INSERT INTO `obe_cpmk` (`id`, `course_id`, `cpl_id`, `code`, `description`, `percentage`, `cpl_weight`, `lecturer_id`, `created_at`, `updated_at`, `meeting_start`, `meeting_end`) VALUES
(6, 3, 1, 'CPMK-1', 'Memahami dan menguasai konsep dasar pendidikan agama islam', 100.00, NULL, NULL, '2026-05-24 12:30:42', '2026-06-17 11:42:28', 1, 16),
(9, 4, 2, 'CPMK-1', 'Memahami dan menguasai konsep dasar pendidikan kewarganegaraan', 33.33, NULL, NULL, '2026-05-24 12:42:03', '2026-06-07 09:15:27', 1, 5),
(10, 4, 2, 'CPMK-2', 'Menerapkan dan menganalisis pendidikan kewarganegaraan', 33.33, NULL, NULL, '2026-05-24 12:42:03', '2026-06-07 09:15:27', 6, 10),
(11, 4, 2, 'CPMK-3', 'Merancang dan mengimplementasikan pendidikan kewarganegaraan', 33.34, NULL, NULL, '2026-05-24 12:42:03', '2026-06-07 09:15:27', 11, 15),
(12, 5, 3, 'CPMK-1', 'Memahami dan menguasai konsep dasar literasi digital', 50.00, NULL, NULL, '2026-05-24 12:44:51', '2026-06-07 09:15:27', 1, 8),
(13, 5, 3, 'CPMK-2', 'Menerapkan dan menganalisis literasi digital', 50.00, NULL, NULL, '2026-05-24 12:44:51', '2026-06-07 09:15:27', 9, 16),
(25, 12, 1, 'A', 'A', 100.00, NULL, NULL, '2026-06-17 12:03:05', '2026-06-17 12:03:05', 1, 16);

-- --------------------------------------------------------

--
-- Table structure for table `obe_dosen`
--

CREATE TABLE `obe_dosen` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `nip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `singkatan` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `program_studi_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `obe_dosen`
--

INSERT INTO `obe_dosen` (`id`, `user_id`, `nip`, `singkatan`, `program_studi_id`, `created_at`, `updated_at`) VALUES
(1, 6, '197604092002121002', 'AN', 13, '2026-05-23 06:12:49', '2026-05-23 06:12:49'),
(2, 7, '197207122000121002', 'TY', 14, '2026-05-23 06:14:16', '2026-05-23 06:14:16'),
(3, 8, '196607311997021001', 'AR', 12, '2026-05-23 06:16:22', '2026-05-23 06:16:22'),
(4, 9, '197803082003121001', 'DYS', 13, '2026-05-23 06:18:10', '2026-05-23 06:18:10'),
(5, 11, '197310251998031002', 'AF', NULL, '2026-05-23 07:05:56', '2026-05-23 07:05:56'),
(6, 12, '197304011999032003', 'AZ', 14, '2026-05-23 07:06:30', '2026-05-23 12:44:09'),
(7, 13, '197308301999031001', 'AK', NULL, '2026-05-23 07:07:18', '2026-05-23 07:07:18'),
(8, 14, '196901181997021001', 'YH', NULL, '2026-05-23 07:08:06', '2026-05-23 07:08:06'),
(10, 17, '197311271999032002', 'NL', 14, '2026-05-23 10:17:13', '2026-05-23 10:17:13'),
(11, 18, '198005102005011003', 'IT', 14, '2026-05-23 10:18:12', '2026-05-23 10:18:12'),
(12, 19, '197204222006041001', 'DM', 14, '2026-05-23 10:20:12', '2026-05-23 10:20:12'),
(13, 20, '197910152006042002', 'LO', 14, '2026-05-23 10:21:34', '2026-05-23 10:21:34'),
(14, 21, '197404282002121003', 'FC', 14, '2026-05-23 10:22:16', '2026-05-23 10:22:16'),
(15, 22, '196707231999031001', 'RA', 14, '2026-05-23 10:25:08', '2026-05-23 10:25:08'),
(16, 23, '199110292019031010', 'ED', 14, '2026-05-23 10:25:35', '2026-05-23 10:25:35'),
(17, 24, '198312032019031006', 'RR', 14, '2026-05-23 11:07:58', '2026-05-23 11:07:58'),
(18, 25, '198611112009121006', 'SN', 14, '2026-05-23 11:08:38', '2026-05-23 11:08:38'),
(19, 26, '199206212024061001', 'KU', 14, '2026-05-23 11:09:41', '2026-05-23 11:09:41'),
(20, 27, '198805052020122012', 'DR', 14, '2026-05-23 11:10:27', '2026-05-23 11:10:27'),
(21, 28, '199205162024062002', 'AG', 14, '2026-05-23 11:11:32', '2026-05-23 11:11:32'),
(22, 29, '199201262024061004', 'ND', 14, '2026-05-23 11:12:17', '2026-05-23 11:12:17'),
(23, 30, '199012282024062001', 'RF', 14, '2026-05-23 11:13:20', '2026-05-23 11:13:20'),
(24, 31, '199611292025061004', 'RD', 14, '2026-05-23 11:14:21', '2026-05-23 11:14:21'),
(25, 32, '200009222025062005', 'RV', 14, '2026-05-23 11:15:32', '2026-05-23 11:15:32'),
(26, 33, '197208132000121001', 'BA', 12, '2026-05-23 12:39:58', '2026-05-23 12:39:58'),
(27, 34, '196709081999031001', 'EH', 12, '2026-05-23 12:40:55', '2026-05-23 12:40:55'),
(28, 35, '196412151997021001', 'EE', 12, '2026-05-23 12:42:09', '2026-05-23 12:42:09'),
(29, 36, '197507052002121003', 'AH', 12, '2026-05-23 12:43:01', '2026-05-23 12:43:01'),
(30, 37, '197705102005011002', 'FD', 12, '2026-05-23 12:43:49', '2026-05-23 12:43:49');

-- --------------------------------------------------------

--
-- Table structure for table `obe_indikator`
--

CREATE TABLE `obe_indikator` (
  `id` bigint UNSIGNED NOT NULL,
  `cpmk_id` bigint UNSIGNED NOT NULL,
  `sub_cpmk_id` bigint UNSIGNED DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` decimal(5,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `obe_indikator`
--

INSERT INTO `obe_indikator` (`id`, `cpmk_id`, `sub_cpmk_id`, `description`, `percentage`, `created_at`, `updated_at`) VALUES
(15, 9, 4, 'Memahami konsep dan teori terkait CPMK-1', 50.00, '2026-05-24 12:42:03', '2026-06-07 09:15:27'),
(16, 9, 4, 'Menerapkan dan menganalisis kasus terkait CPMK-1', 50.00, '2026-05-24 12:42:03', '2026-06-07 09:15:27'),
(17, 10, 5, 'Memahami konsep dan teori terkait CPMK-2', 50.00, '2026-05-24 12:42:03', '2026-06-07 09:15:27'),
(18, 10, 5, 'Menerapkan dan menganalisis kasus terkait CPMK-2', 50.00, '2026-05-24 12:42:03', '2026-06-07 09:15:27'),
(19, 11, 6, 'Memahami konsep dan teori terkait CPMK-3', 100.00, '2026-05-24 12:42:03', '2026-06-07 09:15:27'),
(20, 12, 7, 'Ketercapaian kompetensi CPMK-1', 100.00, '2026-05-24 12:44:51', '2026-06-07 09:15:27'),
(21, 13, 8, 'Ketercapaian kompetensi CPMK-2', 100.00, '2026-05-24 12:44:51', '2026-06-07 09:15:27'),
(54, 6, 27, 'Memahami konsep dan teori terkait CPMK-1', 50.00, '2026-06-17 11:42:28', '2026-06-17 11:42:28'),
(55, 6, 27, 'Menerapkan dan menganalisis kasus terkait CPMK-1', 50.00, '2026-06-17 11:42:28', '2026-06-17 11:42:28'),
(56, 25, 28, 'A', 100.00, '2026-06-17 12:03:05', '2026-06-17 12:03:05'),
(57, 25, 29, 'A', 100.00, '2026-06-17 12:03:05', '2026-06-17 12:03:05'),
(58, 25, 30, 'A', 100.00, '2026-06-17 12:03:05', '2026-06-17 12:03:05');

-- --------------------------------------------------------

--
-- Table structure for table `obe_jurusan`
--

CREATE TABLE `obe_jurusan` (
  `id` bigint UNSIGNED NOT NULL,
  `kode` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_jurusan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_prodi` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `obe_jurusan`
--

INSERT INTO `obe_jurusan` (`id`, `kode`, `nama_jurusan`, `id_prodi`, `created_at`, `updated_at`) VALUES
(1, 'TE', 'Teknik Elektro', NULL, '2026-05-23 05:30:21', '2026-05-23 05:30:21'),
(2, 'TK', 'Teknik Kima', NULL, '2026-05-23 05:31:41', '2026-05-23 05:31:41'),
(3, 'TM', 'Teknik Mesin', NULL, '2026-05-23 05:31:56', '2026-05-23 05:31:56'),
(4, 'TS', 'Teknik Sipil', NULL, '2026-05-23 05:32:57', '2026-05-23 05:32:57'),
(5, 'ARS', 'Arsitektur', NULL, '2026-05-23 05:33:43', '2026-05-23 05:33:43');

-- --------------------------------------------------------

--
-- Table structure for table `obe_kaprodi`
--

CREATE TABLE `obe_kaprodi` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `nip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `singkatan` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `program_studi_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `obe_kaprodi`
--

INSERT INTO `obe_kaprodi` (`id`, `user_id`, `nip`, `singkatan`, `program_studi_id`, `created_at`, `updated_at`) VALUES
(1, 7, '197207122000121002', 'TY', 14, '2026-05-23 06:14:16', '2026-05-23 06:14:16'),
(2, 8, '196607311997021001', 'AR', 12, '2026-05-23 06:16:22', '2026-05-23 06:16:22'),
(3, 9, '197803082003121001', 'DYS', 13, '2026-05-23 06:18:10', '2026-05-23 06:18:10');

-- --------------------------------------------------------

--
-- Table structure for table `obe_kelas`
--

CREATE TABLE `obe_kelas` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` int NOT NULL,
  `academic_year` varchar(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `period_type` enum('ganjil','genap') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lecturer_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `course_id` bigint UNSIGNED DEFAULT NULL,
  `enrollment_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_archived` tinyint(1) NOT NULL DEFAULT '0',
  `kaprodi_snapshot` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `archived_at` timestamp NULL DEFAULT NULL,
  `satu_unri_bobot` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `obe_kelas`
--

INSERT INTO `obe_kelas` (`id`, `name`, `semester`, `academic_year`, `period_type`, `lecturer_id`, `created_at`, `updated_at`, `course_id`, `enrollment_code`, `is_archived`, `kaprodi_snapshot`, `archived_at`, `satu_unri_bobot`) VALUES
(2, 'TI B PAI 2025', 1, '2025/2026', 'ganjil', NULL, '2026-05-24 12:31:16', '2026-06-07 09:40:00', 3, '98BC98EF', 0, NULL, NULL, NULL),
(3, 'TI B PK 2025', 1, '2025/2026', 'ganjil', NULL, '2026-05-24 12:42:42', '2026-06-17 21:05:18', 4, '5D65F624', 0, NULL, NULL, '{\"partisipasi_aktif\":5,\"presensi\":0,\"kuis\":10,\"uts\":20,\"proyek\":10,\"tugas\":0,\"praktikum\":25,\"uas\":30}'),
(6, 'TI A PAI 25', 1, '2025/2026', 'ganjil', NULL, '2026-06-02 20:18:44', '2026-06-06 09:38:04', 5, '4FBBD4E3', 1, 'T Yudi Hadiwandra, S.Kom., M.Kom.', '2026-06-06 09:38:04', NULL),
(7, 'TI LD 3 25', 1, '2025/2026', 'ganjil', NULL, '2026-06-03 09:41:14', '2026-06-07 09:40:00', 5, '975BD5E2', 0, NULL, NULL, NULL),
(8, 'Literasi Digital', 1, '2025/2026', 'ganjil', NULL, '2026-06-06 09:40:26', '2026-06-07 09:40:00', 5, 'B4694F1D', 0, NULL, NULL, NULL),
(9, 'PAI', 1, '2025/2026', 'ganjil', NULL, '2026-06-06 09:40:47', '2026-06-07 09:40:00', 3, 'BF115FB4', 0, NULL, NULL, NULL),
(10, 'apa', 1, '2025/2026', 'ganjil', NULL, '2026-06-07 09:43:09', '2026-06-17 11:37:32', 3, '39E0A6B1', 0, NULL, NULL, '{\"partisipasi_aktif\":5,\"presensi\":5,\"kuis\":5,\"uts\":30,\"proyek\":5,\"tugas\":5,\"praktikum\":5,\"uas\":40}'),
(13, 'A', 1, '2025/2026', 'ganjil', NULL, '2026-06-17 12:03:57', '2026-06-17 12:07:04', 12, '3F5F85E8', 0, NULL, NULL, '{\"partisipasi_aktif\":5,\"presensi\":5,\"kuis\":5,\"uts\":30,\"proyek\":5,\"tugas\":5,\"praktikum\":5,\"uas\":40}');

-- --------------------------------------------------------

--
-- Table structure for table `obe_kelas_cpmk`
--

CREATE TABLE `obe_kelas_cpmk` (
  `id` bigint UNSIGNED NOT NULL,
  `classroom_id` bigint UNSIGNED NOT NULL,
  `cpl_id` bigint UNSIGNED NOT NULL,
  `created_by` bigint UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('draft','pending','approved','rejected') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `rejection_note` text COLLATE utf8mb4_unicode_ci,
  `approved_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `obe_kelas_cpmk_dosen`
--

CREATE TABLE `obe_kelas_cpmk_dosen` (
  `id` bigint UNSIGNED NOT NULL,
  `classroom_id` bigint UNSIGNED NOT NULL,
  `cpmk_id` bigint UNSIGNED NOT NULL,
  `lecturer_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `obe_kelas_cpmk_dosen`
--

INSERT INTO `obe_kelas_cpmk_dosen` (`id`, `classroom_id`, `cpmk_id`, `lecturer_id`, `created_at`, `updated_at`) VALUES
(4, 2, 6, 7, '2026-05-24 12:31:16', '2026-05-24 12:42:51'),
(7, 3, 9, 23, '2026-05-24 12:42:42', '2026-06-03 20:24:56'),
(8, 3, 10, 7, '2026-05-24 12:42:42', '2026-06-03 20:24:56'),
(9, 3, 11, 7, '2026-05-24 12:42:42', '2026-06-03 20:24:56'),
(15, 6, 12, 23, '2026-06-02 20:18:45', '2026-06-03 20:24:34'),
(16, 6, 13, 7, '2026-06-02 20:18:45', '2026-06-03 20:24:34'),
(17, 7, 12, 7, '2026-06-03 09:41:14', '2026-06-03 09:41:14'),
(18, 7, 13, 7, '2026-06-03 09:41:14', '2026-06-03 09:41:14'),
(19, 8, 12, 7, '2026-06-06 09:40:26', '2026-06-06 09:40:26'),
(20, 8, 13, 7, '2026-06-06 09:40:26', '2026-06-06 09:40:26'),
(21, 9, 6, 26, '2026-06-06 09:40:47', '2026-06-06 09:40:47'),
(24, 10, 6, 7, '2026-06-07 09:43:09', '2026-06-07 09:43:09'),
(29, 13, 25, 7, '2026-06-17 12:03:57', '2026-06-17 12:03:57');

-- --------------------------------------------------------

--
-- Table structure for table `obe_kelas_cpmk_indikator`
--

CREATE TABLE `obe_kelas_cpmk_indikator` (
  `id` bigint UNSIGNED NOT NULL,
  `classroom_cpmk_id` bigint UNSIGNED NOT NULL,
  `classroom_sub_cpmk_id` bigint UNSIGNED DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `obe_kelas_cpmk_komponen`
--

CREATE TABLE `obe_kelas_cpmk_komponen` (
  `id` bigint UNSIGNED NOT NULL,
  `classroom_cpmk_indicator_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `percentage` decimal(5,2) NOT NULL DEFAULT '0.00',
  `is_auto` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `obe_kelas_cpmk_nilai`
--

CREATE TABLE `obe_kelas_cpmk_nilai` (
  `id` bigint UNSIGNED NOT NULL,
  `classroom_cpmk_assessment_id` bigint UNSIGNED NOT NULL,
  `student_id` bigint UNSIGNED NOT NULL,
  `score` decimal(5,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `obe_kelas_indikator_bobot`
--

CREATE TABLE `obe_kelas_indikator_bobot` (
  `id` bigint UNSIGNED NOT NULL,
  `classroom_id` bigint UNSIGNED NOT NULL,
  `indicator_id` bigint UNSIGNED NOT NULL,
  `percentage` decimal(5,2) NOT NULL DEFAULT '0.00',
  `is_auto` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `obe_kelas_indikator_bobot`
--

INSERT INTO `obe_kelas_indikator_bobot` (`id`, `classroom_id`, `indicator_id`, `percentage`, `is_auto`, `created_at`, `updated_at`) VALUES
(8, 10, 54, 50.00, 1, '2026-06-17 11:43:20', '2026-06-17 11:43:20'),
(9, 10, 55, 50.00, 1, '2026-06-17 11:43:20', '2026-06-17 11:43:20'),
(10, 13, 56, 100.00, 1, '2026-06-17 12:05:57', '2026-06-17 12:05:57'),
(11, 13, 57, 100.00, 1, '2026-06-17 12:06:06', '2026-06-17 12:06:06'),
(12, 13, 58, 100.00, 1, '2026-06-17 12:06:13', '2026-06-17 12:06:13'),
(13, 3, 17, 50.00, 1, '2026-06-17 21:04:22', '2026-06-17 21:04:46'),
(14, 3, 18, 50.00, 1, '2026-06-17 21:04:22', '2026-06-17 21:04:46');

-- --------------------------------------------------------

--
-- Table structure for table `obe_kelas_pengguna`
--

CREATE TABLE `obe_kelas_pengguna` (
  `id` bigint UNSIGNED NOT NULL,
  `classroom_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `obe_kelas_pengguna`
--

INSERT INTO `obe_kelas_pengguna` (`id`, `classroom_id`, `user_id`, `created_at`, `updated_at`) VALUES
(5, 2, 15, NULL, NULL),
(6, 3, 15, NULL, NULL),
(13, 6, 15, NULL, NULL),
(14, 6, 45, NULL, NULL),
(15, 3, 45, NULL, NULL),
(16, 8, 15, NULL, NULL),
(17, 10, 15, NULL, NULL),
(18, 13, 15, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `obe_kelas_sub_cpmk`
--

CREATE TABLE `obe_kelas_sub_cpmk` (
  `id` bigint UNSIGNED NOT NULL,
  `classroom_cpmk_id` bigint UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` decimal(5,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `obe_komponen_penilaian`
--

CREATE TABLE `obe_komponen_penilaian` (
  `id` bigint UNSIGNED NOT NULL,
  `indicator_id` bigint UNSIGNED NOT NULL,
  `classroom_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `percentage` decimal(5,2) NOT NULL DEFAULT '0.00',
  `is_auto` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `obe_komponen_penilaian`
--

INSERT INTO `obe_komponen_penilaian` (`id`, `indicator_id`, `classroom_id`, `name`, `description`, `percentage`, `is_auto`, `created_at`, `updated_at`) VALUES
(32, 20, 6, 'Proyek 1', NULL, 60.00, 0, '2026-06-03 09:19:14', '2026-06-03 09:19:14'),
(33, 20, 6, 'Partisipasi Aktif', NULL, 40.00, 1, '2026-06-03 09:19:14', '2026-06-03 09:19:14'),
(34, 21, 6, 'Proyek 1', NULL, 60.00, 0, '2026-06-03 09:19:33', '2026-06-03 09:19:33'),
(35, 21, 6, 'Partisipasi Aktif', NULL, 40.00, 1, '2026-06-03 09:19:33', '2026-06-03 09:19:33'),
(39, 21, 8, 'A', NULL, 100.00, 1, '2026-06-06 09:43:18', '2026-06-06 09:43:18'),
(42, 20, 7, 'Komponen 1', NULL, 60.00, 1, '2026-06-06 09:44:22', '2026-06-06 09:44:22'),
(43, 20, 7, 'Komponen 2', NULL, 40.00, 0, '2026-06-06 09:44:22', '2026-06-06 09:44:22'),
(44, 21, 7, 'A', NULL, 100.00, 1, '2026-06-06 09:44:30', '2026-06-06 09:44:30'),
(45, 20, 8, 'A', NULL, 68.00, 1, '2026-06-06 09:48:57', '2026-06-06 09:48:57'),
(46, 20, 8, 'B', NULL, 32.00, 0, '2026-06-06 09:48:57', '2026-06-06 09:48:57'),
(77, 54, 10, 'A', NULL, 50.00, 1, '2026-06-17 11:43:20', '2026-06-17 11:43:20'),
(78, 55, 10, 'A', NULL, 50.00, 1, '2026-06-17 11:43:20', '2026-06-17 11:43:20'),
(79, 56, 13, 'A', NULL, 100.00, 1, '2026-06-17 12:05:57', '2026-06-17 12:05:57'),
(80, 57, 13, 'A', NULL, 100.00, 1, '2026-06-17 12:06:06', '2026-06-17 12:06:06'),
(81, 58, 13, 'A', NULL, 100.00, 1, '2026-06-17 12:06:13', '2026-06-17 12:06:13'),
(83, 17, 3, '1', NULL, 50.00, 1, '2026-06-17 21:04:46', '2026-06-17 21:04:46'),
(84, 18, 3, '2', NULL, 50.00, 1, '2026-06-17 21:04:46', '2026-06-17 21:04:46');

-- --------------------------------------------------------

--
-- Table structure for table `obe_konsentrasi`
--

CREATE TABLE `obe_konsentrasi` (
  `id` bigint UNSIGNED NOT NULL,
  `kode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `obe_konsentrasi`
--

INSERT INTO `obe_konsentrasi` (`id`, `kode`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'RPL', 'Rekayasa Perangkat Lunak', '2026-05-23 05:05:49', '2026-05-23 05:05:49'),
(2, 'KCV', 'Komputasi Cerdas Visual', '2026-05-23 05:05:49', '2026-05-23 05:05:49'),
(3, 'KBJ', 'Komputasi Berbasis Jaringan', '2026-05-23 05:05:49', '2026-05-23 05:05:49');

-- --------------------------------------------------------

--
-- Table structure for table `obe_mahasiswa`
--

CREATE TABLE `obe_mahasiswa` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `nim` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `program_studi_id` bigint UNSIGNED DEFAULT NULL,
  `konsentrasi` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `obe_mahasiswa`
--

INSERT INTO `obe_mahasiswa` (`id`, `user_id`, `nim`, `program_studi_id`, `konsentrasi`, `created_at`, `updated_at`) VALUES
(1, 15, '2207111385', 14, 'RPL', '2026-05-23 07:09:32', '2026-05-23 07:09:32'),
(2, 38, '25071306040', 14, 'KCV', '2026-05-24 11:37:29', '2026-05-24 11:37:29'),
(3, 39, '25071102127', 14, 'KCV', '2026-05-24 11:38:48', '2026-05-24 11:38:48'),
(4, 40, '25071207472', 14, 'KCV', '2026-05-24 11:39:32', '2026-05-24 11:39:32'),
(5, 41, '2207113367', 13, 'KCV', '2026-05-24 13:08:48', '2026-05-24 13:08:48'),
(6, 42, '2207136493', 13, 'KCV', '2026-05-24 13:09:59', '2026-05-24 13:09:59'),
(7, 43, '2307112834', 14, 'KCV', '2026-05-24 13:10:45', '2026-05-24 13:11:14'),
(8, 44, '2307126142', 14, 'KCV', '2026-05-24 13:12:15', '2026-05-24 13:12:15'),
(9, 45, '2207114104', 14, 'RPL', '2026-06-03 20:27:01', '2026-06-03 20:27:01');

-- --------------------------------------------------------

--
-- Table structure for table `obe_mata_kuliah`
--

CREATE TABLE `obe_mata_kuliah` (
  `id` bigint UNSIGNED NOT NULL,
  `jurusan_id` bigint UNSIGNED DEFAULT NULL,
  `program_studi_id` bigint UNSIGNED DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sks` int NOT NULL,
  `semester` int NOT NULL,
  `wajib_pilihan` enum('W','P') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'W',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `prerequisite_course_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `obe_mata_kuliah`
--

INSERT INTO `obe_mata_kuliah` (`id`, `jurusan_id`, `program_studi_id`, `code`, `name`, `sks`, `semester`, `wajib_pilihan`, `created_at`, `updated_at`, `prerequisite_course_id`) VALUES
(3, 1, 14, 'MWU 00101001', 'Pendidikan Agama Islam', 2, 1, 'W', '2026-05-24 12:30:42', '2026-05-24 12:30:42', NULL),
(4, 1, 14, 'UNR 00101007', 'Pendidikan Kewarganegaraan', 2, 1, 'W', '2026-05-24 12:42:03', '2026-05-24 12:42:03', NULL),
(5, 1, 14, 'UNR 00101001', 'Literasi Digital', 2, 1, 'W', '2026-05-24 12:44:51', '2026-05-24 12:44:51', NULL),
(12, 1, 14, 'A', 'A', 1, 1, 'W', '2026-06-17 12:03:05', '2026-06-17 12:03:05', 3);

-- --------------------------------------------------------

--
-- Table structure for table `obe_mata_kuliah_bahan_kajian`
--

CREATE TABLE `obe_mata_kuliah_bahan_kajian` (
  `id` bigint UNSIGNED NOT NULL,
  `course_id` bigint UNSIGNED NOT NULL,
  `bahan_kajian_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `obe_mata_kuliah_cpl`
--

CREATE TABLE `obe_mata_kuliah_cpl` (
  `id` bigint UNSIGNED NOT NULL,
  `course_id` bigint UNSIGNED NOT NULL,
  `cpl_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `obe_mata_kuliah_cpl`
--

INSERT INTO `obe_mata_kuliah_cpl` (`id`, `course_id`, `cpl_id`, `created_at`, `updated_at`) VALUES
(7, 3, 1, NULL, NULL),
(8, 12, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `obe_mata_kuliah_pengguna`
--

CREATE TABLE `obe_mata_kuliah_pengguna` (
  `id` bigint UNSIGNED NOT NULL,
  `course_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `obe_nilai_komponen`
--

CREATE TABLE `obe_nilai_komponen` (
  `id` bigint UNSIGNED NOT NULL,
  `assessment_id` bigint UNSIGNED NOT NULL,
  `student_id` bigint UNSIGNED NOT NULL,
  `score` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `obe_nilai_komponen`
--

INSERT INTO `obe_nilai_komponen` (`id`, `assessment_id`, `student_id`, `score`, `created_at`, `updated_at`) VALUES
(70, 34, 15, 100.00, '2026-06-03 20:26:23', '2026-06-03 20:26:23'),
(71, 45, 15, 67.00, '2026-06-06 09:52:59', '2026-06-06 09:52:59'),
(72, 46, 15, 87.00, '2026-06-06 09:53:10', '2026-06-06 09:53:10'),
(73, 39, 15, 93.00, '2026-06-06 09:53:20', '2026-06-06 09:53:20'),
(80, 77, 15, 87.00, '2026-06-17 11:43:26', '2026-06-17 11:43:26'),
(81, 78, 15, 78.00, '2026-06-17 11:43:34', '2026-06-17 11:43:34'),
(82, 79, 15, 69.00, '2026-06-17 12:06:22', '2026-06-17 12:06:22'),
(83, 80, 15, 89.00, '2026-06-17 12:06:29', '2026-06-17 12:06:29'),
(84, 81, 15, 97.00, '2026-06-17 12:06:36', '2026-06-17 12:06:36'),
(87, 84, 15, 95.00, '2026-06-17 21:04:56', '2026-06-17 21:04:56'),
(88, 84, 45, 98.00, '2026-06-17 21:04:56', '2026-06-17 21:04:56');

-- --------------------------------------------------------

--
-- Table structure for table `obe_notifikasi`
--

CREATE TABLE `obe_notifikasi` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `obe_pengaturan`
--

CREATE TABLE `obe_pengaturan` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `obe_pengaturan`
--

INSERT INTO `obe_pengaturan` (`id`, `key`, `label`, `value`, `type`, `created_at`, `updated_at`) VALUES
(1, 'app_name', 'Nama Aplikasi', 'SATU FT UNRI', 'text', '2026-05-23 05:05:46', '2026-05-24 09:02:05'),
(2, 'login_title', 'Judul Halaman Login', 'Sistem Akademik Terpadu FT UNRI', 'text', '2026-05-23 05:05:46', '2026-05-24 09:02:05'),
(3, 'login_description', 'Deskripsi Halaman Login', 'Silakan masuk untuk melanjutkan ke sistem.', 'textarea', '2026-05-23 05:05:46', '2026-05-24 09:02:05'),
(4, 'footer_text', 'Teks Footer', 'Program Studi Teknik Informatika UNRI 2025', 'text', '2026-05-23 05:05:46', '2026-05-24 09:02:05'),
(5, 'period_ganjil_start', 'Mulai Semester Ganjil (MM-DD)', '08-01', 'string', '2026-05-23 05:05:48', '2026-05-24 09:02:05'),
(6, 'period_ganjil_end', 'Selesai Semester Ganjil (MM-DD)', '01-31', 'string', '2026-05-23 05:05:48', '2026-05-24 09:02:05'),
(7, 'period_genap_start', 'Mulai Semester Genap (MM-DD)', '02-01', 'string', '2026-05-23 05:05:48', '2026-05-24 09:02:05'),
(8, 'period_genap_end', 'Selesai Semester Genap (MM-DD)', '07-31', 'string', '2026-05-23 05:05:48', '2026-05-24 09:02:05');

-- --------------------------------------------------------

--
-- Table structure for table `obe_pengelola`
--

CREATE TABLE `obe_pengelola` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `jabatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bidang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanda_tangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mulai_menjabat` date DEFAULT NULL,
  `selesai_menjabat` date DEFAULT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `obe_pengelola`
--

INSERT INTO `obe_pengelola` (`id`, `user_id`, `jabatan`, `bidang`, `tanda_tangan`, `keterangan`, `mulai_menjabat`, `selesai_menjabat`, `aktif`, `created_at`, `updated_at`) VALUES
(1, 11, 'dekan', NULL, NULL, NULL, NULL, NULL, 1, '2026-05-23 07:05:56', '2026-05-23 07:05:56'),
(2, 12, 'wakil_dekan', 'Akademik', NULL, NULL, NULL, NULL, 1, '2026-05-23 07:06:30', '2026-05-23 07:06:30'),
(3, 13, 'wakil_dekan', 'Keuangan dan Umum', NULL, NULL, NULL, NULL, 1, '2026-05-23 07:07:18', '2026-05-23 07:07:18'),
(4, 14, 'wakil_dekan', 'Kemahasiswaan, Alumni, dan Kerja Sama', NULL, NULL, NULL, NULL, 1, '2026-05-23 07:08:06', '2026-05-23 07:08:06');

-- --------------------------------------------------------

--
-- Table structure for table `obe_pengguna`
--

CREATE TABLE `obe_pengguna` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initials` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'mahasiswa',
  `jabatan_akademik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Null = bukan dosen. "dosen" = dosen yg sedang/pernah menjabat struktural.',
  `jurusan_id` bigint UNSIGNED DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `obe_pengguna`
--

INSERT INTO `obe_pengguna` (`id`, `name`, `identity`, `initials`, `email`, `email_verified_at`, `password`, `role`, `jabatan_akademik`, `jurusan_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin1', 'admin', 'ADM', 'admin@example.com', '2026-05-23 05:05:49', '$2y$12$i5SsRng0qOI8QteS52TghuOnuvkadRgKANG8wCrci7KFaxXGJmz2O', 'admin', NULL, NULL, '4OK5CDzLodVrDH2cXBjVtQDyCnr3OZWmel9Oh5kiC6SjuPF8th6xByMtB0Wx', '2026-05-23 05:05:50', '2026-05-23 05:25:53'),
(6, 'Anhar, S.T., M.T', '197604092002121002', 'AN', 'anhar@lecturer.unri.ac.id', NULL, '$2y$12$T0Rs6PNRpSNelG2mC.mk9erkNVKRHIqTcnTbyxMgBH8ojPIVPZ9kW', 'kajur', 'dosen', 1, NULL, '2026-05-23 06:12:49', '2026-05-23 06:12:49'),
(7, 'T Yudi Hadiwandra, S.Kom., M.Kom.', '197207122000121002', 'TY', 'tyudihw@lecturer.unri.ac.id', NULL, '$2y$12$2EwzJGlkcmMQ/10x7R/XFO/6WQuuMp3OAYM2pp33PtiWdIzqHnYXa', 'kaprodi', 'dosen', 1, NULL, '2026-05-23 06:14:16', '2026-05-23 06:14:16'),
(8, 'Assoc. Prof. Dr. Ir. Antonius Rajagukguk, M.T', '196607311997021001', 'AR', 'antonius.rajagukguk@lecturer.unri.ac.id', NULL, '$2y$12$MEBYCPdeuTd8qJAmX4rnTeLBNWasGdEskhACR0T4pmfJ382vbzeEq', 'kaprodi', 'dosen', 1, NULL, '2026-05-23 06:16:22', '2026-05-23 06:16:22'),
(9, 'Dian Yayan Sukma, S.T., M.T.', '197803082003121001', 'DYS', 'dianyayan.sukma@eng.unri.ac.id', NULL, '$2y$12$2nu8v1BFV20/ZSJCbwrIa./I/VTA7QMNDqH/BmDyvwGlYX4ZnQbEW', 'kaprodi', 'dosen', 1, NULL, '2026-05-23 06:18:10', '2026-05-23 06:18:10'),
(10, 'Admin Teknik Elektro', '123', 'ATE', 'elektro@gmail.com', NULL, '$2y$12$KLZw45hQcQqoG/o.7CYujOIXaTVGW8w33p5NWdncdi.4V3rP1l5dK', 'admin_jurusan', NULL, 1, NULL, '2026-05-23 06:29:02', '2026-05-23 06:29:02'),
(11, 'Prof. Ahmad Fadli, ST, MT, Ph.D', '197310251998031002', 'AF', 'ahmadfadli@lecturer.unri.ac.id', NULL, '$2y$12$1.vaqhEJjgVjto29sevjO.KQglZRPhIhXjz.eZbIjW53UKA4dd5EW', 'dekan', 'dosen', 2, NULL, '2026-05-23 07:05:56', '2026-05-24 11:36:02'),
(12, 'Prof. Dr. Ir. Azriyenni, S.T., M.Eng., IPM', '197304011999032003', 'AZ', 'azriyenni@lecturer.unri.ac.id', NULL, '$2y$12$LPA7MZip4poBvAw0vZGsnerZ48KuwKYPP/bNYf/7JFcctdIbBUsQa', 'wakil_dekan', 'dosen', 1, NULL, '2026-05-23 07:06:30', '2026-05-23 07:06:30'),
(13, 'Dr. Eng. Alex Kurniawandy, ST, MT', '197308301999031001', 'AK', 'alexkurniawandy@eng.unri.ac.id', NULL, '$2y$12$KD8InNEbV69gvQXLqee1a.gaau8ie3nKkknrDnAyXT3WE/oo67lKq', 'wakil_dekan', 'dosen', 3, NULL, '2026-05-23 07:07:18', '2026-05-23 07:07:18'),
(14, 'Yohanes, ST, MT', '196901181997021001', 'YH', 'yohanes@lecturer.unri.ac.id', NULL, '$2y$12$XQ3ikFC5EVHSyzRrffWVkO8f0nLenjfTOb0thlFSmEen1jLiLoJVe', 'wakil_dekan', 'dosen', 3, NULL, '2026-05-23 07:08:06', '2026-05-23 07:08:06'),
(15, 'Izzathul Mardhiyah', '2207111385', NULL, 'izzathul.mardhiyah1385@student.unri.ac.id', NULL, '$2y$12$olfLo9QwS95hZAc1FxhIbO9iP9D8QTAlIFQkr2Ef8g217f6LBqJlS', 'mahasiswa', NULL, 1, NULL, '2026-05-23 07:09:32', '2026-05-23 07:09:32'),
(17, 'Noveri Lysbetti M, S.T., M.Sc', '197311271999032002', 'NL', 'noveri.marpaung@eng.unri.ac.id', NULL, '$2y$12$FrSR2xL6SmV5/Ky7/qwEc.XqeBD8ntoAfKzpP9QZS5YbwjJ11tb8e', 'dosen', NULL, 1, NULL, '2026-05-23 10:17:13', '2026-05-23 10:17:13'),
(18, 'Dr. Irsan Taufik Ali, S.T., M.T', '198005102005011003', 'IT', 'irsan.ali@lecturer.unri.ac.id', NULL, '$2y$12$IKfDPBVqoFaSmBmiSfrHy.ebSTkJjitnd8QVBDGKWIwC4Ud2SFzH2', 'dosen', NULL, 1, NULL, '2026-05-23 10:18:12', '2026-05-23 10:18:12'),
(19, 'Dr. Dahliyusmanto, S.Kom., M.Sc', '197204222006041001', 'DM', 'dahliyusmanto@lecturer.unri.ac.id', NULL, '$2y$12$Vw4IBX.2IHWNbNNzT8MaaONcjqviy63W/mPsMPmy2qMeXs1esivZm', 'dosen', NULL, 1, NULL, '2026-05-23 10:20:12', '2026-05-23 10:20:12'),
(20, 'Linna Oktaviana Sari, S.T., M.T', '197910152006042002', 'LO', 'linnaoasari@lecturer.unri.ac.id', NULL, '$2y$12$RfN632OSr8i/Xc0QUpyZae3gZyIqE/GZEvc5MuhmNZVjnaZzkxpIe', 'dosen', NULL, 1, NULL, '2026-05-23 10:21:34', '2026-05-23 10:21:34'),
(21, 'Dr. Feri Candra, S.T., M.T', '197404282002121003', 'FC', 'feri@eng.unri.ac.id', NULL, '$2y$12$MIPFUvOMZ2J6qFFVQLtCbeucLcPVA5Hmvg6ylU5xHdHVpP6KbyXue', 'dosen', NULL, 1, NULL, '2026-05-23 10:22:16', '2026-05-23 10:22:16'),
(22, 'Rahyul Amri, S.T., M.T', '196707231999031001', 'RA', 'rahyulamri@lecturer.unri.ac.id', NULL, '$2y$12$LDFIz9rD73j8scO.dAK2gOQwoDKIR12taE3YCvj1puZXO1R6StqC.', 'dosen', NULL, 1, NULL, '2026-05-23 10:25:08', '2026-05-23 10:25:08'),
(23, 'Edi Susilo, S.Pd., M.Kom., M.Eng', '199110292019031010', 'ED', 'edi.susilo@lecturer.unri.ac.id', NULL, '$2y$12$iaz7MCCDcTR2zhMXvIzTl.vP2OjZ8.8S94Mbo67wvaQMpMXyYO7pS', 'dosen', NULL, 1, NULL, '2026-05-23 10:25:35', '2026-05-23 10:25:35'),
(24, 'Rahmat Rizal Andhi, S.T., M.T', '198312032019031006', 'RR', 'rahmat.rizal@lecturer.unri.ac.id', NULL, '$2y$12$JYNqt/.If/iKgJImUQJxtObkFqrQI3Nn1IdT2twRvT0gMbjidapma', 'dosen', NULL, 1, NULL, '2026-05-23 11:07:58', '2026-05-23 11:07:58'),
(25, 'Salhazan Nasution, S.Kom., MIT', '198611112009121006', 'SN', 'salhazan@lecturer.unri.ac.id', NULL, '$2y$12$ALCCNHjrwcxTyxx6lkYfw.lWjkwCuJAyKQbDL9mXFcMaeG603kme6', 'dosen', NULL, 1, NULL, '2026-05-23 11:08:38', '2026-05-23 11:08:38'),
(26, 'Khairul Umam Syaliman, S.T., M.Kom.', '199206212024061001', 'KU', 'khairul.umam@lecturer.unri.ac.id', NULL, '$2y$12$yB5r8fOGd0TzVZlwPp2pSe0NdshpekEdNi5Rt97UzhhBZXcMnQVC.', 'dosen', NULL, 1, NULL, '2026-05-23 11:09:41', '2026-05-23 11:09:41'),
(27, 'Dian Ramadhani, S.T., M.T', '198805052020122012', 'DR', 'dianramadhani@lecturer.unri.ac.id', NULL, '$2y$12$QiHm8yTXe9Sn.vTWOf.3r.DhDeAYcr2C7KY5TCKp3LoQM0E8uxp0G', 'dosen', NULL, 1, NULL, '2026-05-23 11:10:27', '2026-05-23 11:10:27'),
(28, 'Aisha Gemala Jondya, S.Kom., M.T.I.', '199205162024062002', 'AG', 'aisha.gemala@lecturer.unri.ac.id', NULL, '$2y$12$FrDP89rqC4EG5LhzHNStce56ZZ5t1yE.cgeZ9Ao9YHgb9cUf2aYty', 'dosen', NULL, 1, NULL, '2026-05-23 11:11:32', '2026-05-23 11:11:32'),
(29, 'Nanda Dwi Putra, S.Kom., M.Kom.', '199201262024061004', 'ND', 'nanda.dwi@lecturer.unri.ac.id', NULL, '$2y$12$IVYs0sJ7jdcBK88hiV.J9.UR6EJHvhilJE4DxseNgGtRGg6lEWa26', 'dosen', NULL, 1, NULL, '2026-05-23 11:12:17', '2026-05-23 11:12:17'),
(30, 'Reny Fitri Yani, S.T., M.T.', '199012282024062001', 'RF', 'reny.fitriyani1228@lecturer.unri.ac.id', NULL, '$2y$12$rLiZcwTZrpPmnrNCY6PyFuLOdgn2n6G4JAHajzH20ejJdDa75C2BK', 'dosen', NULL, 1, NULL, '2026-05-23 11:13:20', '2026-05-23 11:13:20'),
(31, 'Radinal Dwiki Novendra, S.T., M.T', '199611292025061004', 'RD', 'radinal.dwiki@lecturer.unri.ac.id', NULL, '$2y$12$Plr3CS8uUdy7MUc4pgI.3.qQtRPYVxlRDLQfMiPoOnPouBmBCenmO', 'dosen', NULL, 1, NULL, '2026-05-23 11:14:21', '2026-05-23 11:14:21'),
(32, 'Ririn Violina, S.Si., M.Kom', '200009222025062005', 'RV', 'ririn.violina@lecturer.unri.ac.id', NULL, '$2y$12$9nz2/Pj/y2jqfqn357KUmebckF4CNiObKwZGBxHzxwQfR00zDnb6S', 'dosen', NULL, 1, NULL, '2026-05-23 11:15:32', '2026-05-23 11:15:32'),
(33, 'Budhi Anto, S.T., M.T', '197208132000121001', 'BA', 'budhianto@eng.unri.ac.id', NULL, '$2y$12$I2c8T5MyFROZVZZrN0lfBOih0T/PR/UvJwxuQ6z5x10pQSoGyhrU2', 'dosen', NULL, 1, NULL, '2026-05-23 12:39:58', '2026-05-23 12:39:58'),
(34, 'Eddy Hamdani, S.T., M.T', '196709081999031001', 'EH', 'ehamdani@eng.unri.ac.id', NULL, '$2y$12$7VW2tP6c.r6FEIs/6n0IvuAUQWEa88uDPf8aFdrY7G1uFKAu7sks2', 'dosen', NULL, 1, NULL, '2026-05-23 12:40:55', '2026-05-23 12:40:55'),
(35, 'Ir. Edy Ervianto, M.T', '196412151997021001', 'EE', 'edy.ervianto@eng.unri.ac.id', NULL, '$2y$12$j/wGHpRL/hZa.8JduocdV.bu7PbHKn6gh11AlzKwEj8P78hvCL93W', 'dosen', NULL, 1, NULL, '2026-05-23 12:42:09', '2026-05-23 12:42:09'),
(36, 'Amir Hamzah, S.T., M.T', '197507052002121003', 'AH', 'amir.hamzah@lecturer.unri.ac.id', NULL, '$2y$12$pYfPQijiBxhgVSgPTPbCc.ZhK//HpdscI/5LGrXnb49G7DxqfWjOO', 'dosen', NULL, 1, NULL, '2026-05-23 12:43:01', '2026-05-23 12:43:01'),
(37, 'Firdaus, S.T., M.T', '197705102005011002', 'FD', 'firdaus@eng.unri.ac.id', NULL, '$2y$12$O4K7pTo4WJzuyCmZq/SC6.X0dKptBEugL46pY.9Um0RUcYJbaxO4C', 'dosen', NULL, 1, NULL, '2026-05-23 12:43:49', '2026-05-23 12:43:49'),
(38, 'Fatih Hamzah Zulkarnain', '25071306040', NULL, 'fatih.hamzah6040@student.unri.ac.id', NULL, '$2y$12$nKsh44EWGauuodfUjko42O.7eF07nXjITARajSL235jX7gh3IXJTS', 'mahasiswa', NULL, 1, NULL, '2026-05-24 11:37:29', '2026-05-24 11:37:29'),
(39, 'Saura Shilfana', '25071102127', NULL, 'saura.shilfana2127@student.unri.ac.id', NULL, '$2y$12$Mt4QB7jEKtmZ1x/y4af6A.HSYnMYLTe1UlPvqxfuR0jn3/PpZVVMu', 'mahasiswa', NULL, 1, NULL, '2026-05-24 11:38:48', '2026-05-24 11:38:48'),
(40, 'Dimas Hadi Nugraha', '25071207472', NULL, 'dimas.hadi@student.unri.ac.id', NULL, '$2y$12$z2y5.Lh4jlg2adNig5c41eZnxv8YWXpujExT5sloCqVuXe.CbNAum', 'mahasiswa', NULL, 1, NULL, '2026-05-24 11:39:32', '2026-05-24 11:39:32'),
(41, 'Andika Syahruramadhan', '2207113367', NULL, 'example@gmail.com', NULL, '$2y$12$ToDFZN/xMsUoA87MmTTOGeWuOexGhR9UnEwRgKKAWEcXx4AJPqsP2', 'mahasiswa', NULL, 1, NULL, '2026-05-24 13:08:48', '2026-05-24 13:08:48'),
(42, 'Raissa Titania Putri Iswanto', '2207136493', NULL, 'example1@gmail.com', NULL, '$2y$12$rtCeXJPG3RKoOW.PvOeP2eGbijjp20eyW2ydOXpeNuTHb00gtaGWK', 'mahasiswa', NULL, 1, NULL, '2026-05-24 13:09:59', '2026-05-24 13:09:59'),
(43, 'Akhlaqul Muhammad Fadwa', '2307112834', NULL, 'example2@gmail.com', NULL, '$2y$12$9ZxXmY40ojx30dNB4jZcYeW9oIFuZomnMchZVmRxMQVqlikYBCbQW', 'mahasiswa', NULL, 1, NULL, '2026-05-24 13:10:45', '2026-05-24 20:15:42'),
(44, 'Dhinda Oktavia Ramadhansi', '2307126142', NULL, 'example3@gmail.com', NULL, '$2y$12$UihsF/ufKFlTivWKusbtH.J7rA8cuVjR/2feYxct3oEJ1NTGfiwEi', 'mahasiswa', NULL, 1, NULL, '2026-05-24 13:12:15', '2026-05-24 13:12:15'),
(45, 'Syafiq', '2207114104', NULL, 'syafiq@gmail.com', NULL, '$2y$12$NkWHBgm.AKp88NjsVj7IE.qoOkpBriA7018prhbSXG9U90X0ZkS6O', 'mahasiswa', NULL, 1, NULL, '2026-06-03 20:27:01', '2026-06-03 20:27:01');

-- --------------------------------------------------------

--
-- Table structure for table `obe_pj_lab`
--

CREATE TABLE `obe_pj_lab` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `nip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `singkatan` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_lab` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `obe_profil_lulusan`
--

CREATE TABLE `obe_profil_lulusan` (
  `id` bigint UNSIGNED NOT NULL,
  `program_studi_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `obe_profil_lulusan`
--

INSERT INTO `obe_profil_lulusan` (`id`, `program_studi_id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 14, 'Artificial Intelligence Engineer (AI Engineer)', 'Ahli dalam merancang, membangun, dan mengimplementasikan sistem berbasis kecerdasan buatan (Artificial Intelligence)', '2026-05-23 07:45:25', '2026-05-23 07:45:25'),
(2, 14, 'System Analyst', 'Spesialis dalam menganalisa kebutuhan industri bisnis dan memberikan solusi teknologinya', '2026-05-23 07:46:00', '2026-05-23 07:46:00'),
(3, 14, 'IT Mobility dan Internet of Things', 'Fokus pada perancangan aplikasi mobile dan perangkat IoT yaitu perangkat fisik yang terhubung dengan perangkat internet', '2026-05-23 07:46:42', '2026-05-23 07:46:42'),
(4, 14, 'Programmer dan Software Developer', 'Ahli dalam merancang dan mengembangkan perangkat lunak dan menerapkan dasar-dasar software engineering', '2026-05-23 07:47:29', '2026-05-23 07:47:29');

-- --------------------------------------------------------

--
-- Table structure for table `obe_profil_lulusan_cpl`
--

CREATE TABLE `obe_profil_lulusan_cpl` (
  `id` bigint UNSIGNED NOT NULL,
  `graduate_profile_id` bigint UNSIGNED NOT NULL,
  `cpl_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `obe_program_studi`
--

CREATE TABLE `obe_program_studi` (
  `id` bigint UNSIGNED NOT NULL,
  `kode` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jurusan_id` bigint UNSIGNED DEFAULT NULL,
  `nama_prodi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visi` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `obe_program_studi`
--

INSERT INTO `obe_program_studi` (`id`, `kode`, `jurusan_id`, `nama_prodi`, `visi`, `created_at`, `updated_at`) VALUES
(1, 'D3 TK', 2, 'D3 Teknik Kimia', NULL, '2026-05-23 05:45:35', '2026-05-23 05:45:35'),
(2, 'S1 TK', 2, 'S1 Teknik Kimia', NULL, '2026-05-23 05:46:35', '2026-05-23 05:46:35'),
(3, 'D3 TPK', 2, 'D3 Pulp dan Kertas', NULL, '2026-05-23 05:46:47', '2026-05-23 05:46:47'),
(4, 'S2 TK', 2, 'S2 Teknik Kimia', NULL, '2026-05-23 05:47:01', '2026-05-23 05:47:01'),
(5, 'S1 TL', 2, 'S1 Teknik Lingkungan', NULL, '2026-05-23 05:47:38', '2026-05-23 05:47:38'),
(6, 'D3 TS', 4, 'D3 Teknik Sipil', NULL, '2026-05-23 05:48:21', '2026-05-23 05:48:21'),
(7, 'S1 TS', 4, 'S1 Teknik Sipil', NULL, '2026-05-23 05:48:39', '2026-05-23 05:48:39'),
(8, 'S2 TS', 4, 'S2 Teknik Sipil', NULL, '2026-05-23 05:51:13', '2026-05-23 05:51:13'),
(9, 'D3 TM', 3, 'D3 Teknik Mesin', NULL, '2026-05-23 05:51:40', '2026-05-23 05:51:40'),
(10, 'S1 TM', 3, 'S1 Teknik Mesin', NULL, '2026-05-23 05:52:45', '2026-05-23 05:52:45'),
(11, 'S2 TM', 3, 'S2 Teknik Mesin', NULL, '2026-05-23 05:53:00', '2026-05-23 05:53:00'),
(12, 'D3 TE', 1, 'D3 Teknik Elektro', NULL, '2026-05-23 05:53:12', '2026-05-23 05:53:12'),
(13, 'S1 TE', 1, 'S1 Teknik Elektro', NULL, '2026-05-23 05:53:24', '2026-05-23 05:53:24'),
(14, 'S1 TI', 1, 'S1 Teknik Informatika', NULL, '2026-05-23 05:53:35', '2026-05-23 05:53:35'),
(15, 'S2 TE', 1, 'S2 Teknik Elektro', NULL, '2026-05-23 05:53:49', '2026-05-23 05:53:49'),
(16, 'S1 ARS', 5, 'S1 Teknik Arsitektur', NULL, '2026-05-23 05:54:03', '2026-05-23 05:54:03');

-- --------------------------------------------------------

--
-- Table structure for table `obe_semester`
--

CREATE TABLE `obe_semester` (
  `id` bigint UNSIGNED NOT NULL,
  `periode` enum('ganjil','genap') COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_ajaran` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_selesai` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `obe_semester`
--

INSERT INTO `obe_semester` (`id`, `periode`, `tahun_ajaran`, `tanggal_mulai`, `tanggal_selesai`, `created_at`, `updated_at`) VALUES
(1, 'genap', '2025/2026', '2026-02-01', '2026-07-31', '2026-05-23 05:27:26', '2026-05-23 05:27:26');

-- --------------------------------------------------------

--
-- Table structure for table `obe_sub_cpmk`
--

CREATE TABLE `obe_sub_cpmk` (
  `id` bigint UNSIGNED NOT NULL,
  `cpmk_id` bigint UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` decimal(5,2) NOT NULL DEFAULT '0.00',
  `meetings` tinyint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `obe_sub_cpmk`
--

INSERT INTO `obe_sub_cpmk` (`id`, `cpmk_id`, `code`, `description`, `percentage`, `meetings`, `created_at`, `updated_at`) VALUES
(4, 9, NULL, 'Umum', 100.00, NULL, '2026-06-09 09:18:28', '2026-06-09 09:18:28'),
(5, 10, NULL, 'Umum', 100.00, NULL, '2026-06-09 09:18:28', '2026-06-09 09:18:28'),
(6, 11, NULL, 'Umum', 100.00, NULL, '2026-06-09 09:18:28', '2026-06-09 09:18:28'),
(7, 12, NULL, 'Umum', 100.00, NULL, '2026-06-09 09:18:28', '2026-06-09 09:18:28'),
(8, 13, NULL, 'Umum', 100.00, NULL, '2026-06-09 09:18:28', '2026-06-09 09:18:28'),
(27, 6, NULL, 'Umum', 100.00, NULL, '2026-06-17 11:42:28', '2026-06-17 11:42:28'),
(28, 25, NULL, 'A', 6.25, NULL, '2026-06-17 12:03:05', '2026-06-17 12:03:05'),
(29, 25, NULL, 'A', 6.25, NULL, '2026-06-17 12:03:05', '2026-06-17 12:03:05'),
(30, 25, NULL, 'A', 87.50, 14, '2026-06-17 12:03:05', '2026-06-17 12:03:05');

-- --------------------------------------------------------

--
-- Table structure for table `obe_tendik`
--

CREATE TABLE `obe_tendik` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `nip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `singkatan` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `sessions`
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
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('8rrGeqBJPWL0DVbZ4Oa8hhLb5CtltnCa1k5nm0Gq', NULL, '199.244.88.225', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU1hXa3ltTzNIeVcxZ1U4bVRVWDJqYjFRd096WnNEU1dyQkowdUYxdCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly9hbnVncmFobXVsaWEuY29tL2xvZ2luIjtzOjU6InJvdXRlIjtzOjU6ImxvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1781760580),
('dXz2R3QzSkVtSZGPpgCd8elyX6KIBXQ2wi32jpG4', NULL, '2001:448a:1082:5b71:b402:c042:1683:ee9f', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRUp2NUJQd2ozNHlQZ0tCcnRpNTBLbXV2VVlWUHUyb2hsVFVIOU5TTyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vb2JlZ3JhZGUubXkuaWQvbG9naW4iO3M6NToicm91dGUiO3M6NToibG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1781770016),
('e5NbddDRMHi3ARl4FXEDFzjzUkvesstOngx0JDNv', NULL, '66.249.72.192', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic3d5RHFWWUF0aGRnQTBTUFRzNVh1NGJ2SzhJVld1cktUMkZleGFPQiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vYW51Z3JhaG11bGlhLmNvbS9sb2dpbiI7czo1OiJyb3V0ZSI7czo1OiJsb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1781755373),
('eHkgmAjdz92RhD5IWzyYUEKyKgL3hFDUE3DcJFbg', 7, '182.1.42.75', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiSFdZUVBTSkJNb0xvd2dEQUFuYnRrQXFrbUlqb3VPa2J5eEFsY0tqcCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDI6Imh0dHBzOi8vb2JlZ3JhZGUubXkuaWQvZG9zZW4vY2xhc3Nyb29tcy8xMCI7czo1OiJyb3V0ZSI7czoyMToiZG9zZW4uY2xhc3Nyb29tcy5zaG93Ijt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NztzOjk6InJvbGVfbW9kZSI7czo1OiJkb3NlbiI7fQ==', 1781756120),
('GwwwMS0D3N1vjTbdjWNSPs1GepvD3aUABwHwtAN2', NULL, '66.249.72.206', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUjRMODJzak1KdTlRY0g3bE9IMlR0ZFRuTTVjdk1NSGVocnlpc0d0NiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vYW51Z3JhaG11bGlhLmNvbS9sb2dpbiI7czo1OiJyb3V0ZSI7czo1OiJsb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1781755379),
('icvU9VwNvofRXa1kSpVaYxiqfO9egiyeTNFYZcwG', NULL, '23.27.145.32', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaTZqMk5rVHJKVlJMeHNhRHlyem1SV0FHaHlHc1M2WUJKM3VlQndQRiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vbWFpbC5vYmVncmFkZS5teS5pZC9sb2dpbiI7czo1OiJyb3V0ZSI7czo1OiJsb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1781766256),
('K2gD1kYS1kDPU8Y8Y9b70rBr5JCTQ5LiUQ87CKty', NULL, '2001:448a:1082:5b71:87d:3f8d:3305:a4d5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSDUxWnZjVkp3YjVLQ2FJUVJZTGh6NFpGOXBBUXBEM3BiV2ZUYmZZdiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjI6Imh0dHBzOi8vb2JlZ3JhZGUubXkuaWQiO3M6NToicm91dGUiO3M6NDoiaG9tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1781766793),
('mfWYRT7DgfvvS7ArBIuQz1wiZuN94oiv7d8X05X3', NULL, '182.1.42.75', 'WhatsApp/2.23.20.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUE1uMDBTY0NaMkphTUdoVTE5NlpLS2o2Tk40OXdYTGJmQnJ6aWg4ZSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjI6Imh0dHBzOi8vb2JlZ3JhZGUubXkuaWQiO3M6NToicm91dGUiO3M6NDoiaG9tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1781759660),
('MGNtIazOwl4SpIIvOTS03yeycOo1IlBK6wtSpMmX', NULL, '2001:448a:1082:5b71:b402:c042:1683:ee9f', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOUMzcXJ6MmhsYkhMSUkza1dTcE1HSEtwNDJlWHJkRGpGZUJDa014cCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vYW51Z3JhaG11bGlhLmNvbS9sb2dpbiI7czo1OiJyb3V0ZSI7czo1OiJsb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1781767517),
('ObNQCwYFu6WaVIsYmB4mDrBn1DK2tShGRt5wQVeO', NULL, '2001:448a:1082:993a:83c:cdfd:7089:9ca6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMGhGQ2VaSTlwNzBEWmV5VktIb1EyOWVSa2VTSFR1bm9wWXRZZjdOUCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vb2JlZ3JhZGUubXkuaWQvbG9naW4iO3M6NToicm91dGUiO3M6NToibG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1781761042),
('RULBOUUfNDeXxsfrcg4ZNxhE9ALqwRMsuaEsKNpi', NULL, '182.1.42.75', 'WhatsApp/2.23.20.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTWZIMUZkRVRIeVh6dGR1MzFBZWNMWkdGN3BpdnQ2UUFhVFVCbVFNUCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vb2JlZ3JhZGUubXkuaWQvbG9naW4iO3M6NToicm91dGUiO3M6NToibG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1781759660);

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
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `obe_bahan_kajian`
--
ALTER TABLE `obe_bahan_kajian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `obe_bahan_kajian_program_studi_id_foreign` (`program_studi_id`);

--
-- Indexes for table `obe_carousel_login`
--
ALTER TABLE `obe_carousel_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `obe_cpl`
--
ALTER TABLE `obe_cpl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `obe_cpl_program_studi_id_foreign` (`program_studi_id`);

--
-- Indexes for table `obe_cpl_bahan_kajian`
--
ALTER TABLE `obe_cpl_bahan_kajian`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `obe_cpl_bahan_kajian_cpl_id_bahan_kajian_id_unique` (`cpl_id`,`bahan_kajian_id`),
  ADD KEY `obe_cpl_bahan_kajian_bahan_kajian_id_foreign` (`bahan_kajian_id`);

--
-- Indexes for table `obe_cpmk`
--
ALTER TABLE `obe_cpmk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cpmks_course_id_foreign` (`course_id`),
  ADD KEY `cpmks_lecturer_id_foreign` (`lecturer_id`),
  ADD KEY `cpmks_cpl_id_foreign` (`cpl_id`);

--
-- Indexes for table `obe_dosen`
--
ALTER TABLE `obe_dosen`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `obe_dosen_user_id_unique` (`user_id`),
  ADD KEY `obe_dosen_program_studi_id_foreign` (`program_studi_id`);

--
-- Indexes for table `obe_indikator`
--
ALTER TABLE `obe_indikator`
  ADD PRIMARY KEY (`id`),
  ADD KEY `indicators_cpmk_id_foreign` (`cpmk_id`),
  ADD KEY `obe_indikator_sub_cpmk_id_foreign` (`sub_cpmk_id`);

--
-- Indexes for table `obe_jurusan`
--
ALTER TABLE `obe_jurusan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `obe_jurusan_id_prodi_foreign` (`id_prodi`);

--
-- Indexes for table `obe_kaprodi`
--
ALTER TABLE `obe_kaprodi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `obe_kaprodi_user_id_unique` (`user_id`),
  ADD KEY `obe_kaprodi_program_studi_id_foreign` (`program_studi_id`);

--
-- Indexes for table `obe_kelas`
--
ALTER TABLE `obe_kelas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `classrooms_enrollment_code_unique` (`enrollment_code`),
  ADD KEY `classrooms_course_id_foreign` (`course_id`),
  ADD KEY `classrooms_lecturer_id_foreign` (`lecturer_id`);

--
-- Indexes for table `obe_kelas_cpmk`
--
ALTER TABLE `obe_kelas_cpmk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `classroom_cpmks_classroom_id_foreign` (`classroom_id`),
  ADD KEY `classroom_cpmks_cpl_id_foreign` (`cpl_id`),
  ADD KEY `classroom_cpmks_created_by_foreign` (`created_by`);

--
-- Indexes for table `obe_kelas_cpmk_dosen`
--
ALTER TABLE `obe_kelas_cpmk_dosen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `classroom_cpmk_lecturer_classroom_id_foreign` (`classroom_id`),
  ADD KEY `classroom_cpmk_lecturer_cpmk_id_foreign` (`cpmk_id`),
  ADD KEY `classroom_cpmk_lecturer_lecturer_id_foreign` (`lecturer_id`);

--
-- Indexes for table `obe_kelas_cpmk_indikator`
--
ALTER TABLE `obe_kelas_cpmk_indikator`
  ADD PRIMARY KEY (`id`),
  ADD KEY `classroom_cpmk_indicators_classroom_cpmk_id_foreign` (`classroom_cpmk_id`),
  ADD KEY `obe_kelas_cpmk_indikator_classroom_sub_cpmk_id_foreign` (`classroom_sub_cpmk_id`);

--
-- Indexes for table `obe_kelas_cpmk_komponen`
--
ALTER TABLE `obe_kelas_cpmk_komponen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `classroom_cpmk_assessments_classroom_cpmk_indicator_id_foreign` (`classroom_cpmk_indicator_id`);

--
-- Indexes for table `obe_kelas_cpmk_nilai`
--
ALTER TABLE `obe_kelas_cpmk_nilai`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ccas_unique` (`classroom_cpmk_assessment_id`,`student_id`),
  ADD KEY `ccas_student_fk` (`student_id`);

--
-- Indexes for table `obe_kelas_indikator_bobot`
--
ALTER TABLE `obe_kelas_indikator_bobot`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `obe_kelas_indikator_bobot_classroom_id_indicator_id_unique` (`classroom_id`,`indicator_id`),
  ADD KEY `obe_kelas_indikator_bobot_indicator_id_foreign` (`indicator_id`);

--
-- Indexes for table `obe_kelas_pengguna`
--
ALTER TABLE `obe_kelas_pengguna`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `classroom_user_classroom_id_user_id_unique` (`classroom_id`,`user_id`),
  ADD KEY `classroom_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `obe_kelas_sub_cpmk`
--
ALTER TABLE `obe_kelas_sub_cpmk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `obe_kelas_sub_cpmk_classroom_cpmk_id_foreign` (`classroom_cpmk_id`);

--
-- Indexes for table `obe_komponen_penilaian`
--
ALTER TABLE `obe_komponen_penilaian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assessments_indicator_id_foreign` (`indicator_id`),
  ADD KEY `obe_komponen_penilaian_classroom_id_foreign` (`classroom_id`);

--
-- Indexes for table `obe_konsentrasi`
--
ALTER TABLE `obe_konsentrasi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `obe_konsentrasi_kode_unique` (`kode`);

--
-- Indexes for table `obe_mahasiswa`
--
ALTER TABLE `obe_mahasiswa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `obe_mahasiswa_user_id_unique` (`user_id`),
  ADD KEY `obe_mahasiswa_program_studi_id_foreign` (`program_studi_id`);

--
-- Indexes for table `obe_mata_kuliah`
--
ALTER TABLE `obe_mata_kuliah`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `courses_code_unique` (`code`),
  ADD KEY `courses_prerequisite_course_id_foreign` (`prerequisite_course_id`),
  ADD KEY `obe_mata_kuliah_jurusan_id_foreign` (`jurusan_id`),
  ADD KEY `obe_mata_kuliah_program_studi_id_foreign` (`program_studi_id`);

--
-- Indexes for table `obe_mata_kuliah_bahan_kajian`
--
ALTER TABLE `obe_mata_kuliah_bahan_kajian`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `obe_mata_kuliah_bahan_kajian_course_id_bahan_kajian_id_unique` (`course_id`,`bahan_kajian_id`),
  ADD KEY `obe_mata_kuliah_bahan_kajian_bahan_kajian_id_foreign` (`bahan_kajian_id`);

--
-- Indexes for table `obe_mata_kuliah_cpl`
--
ALTER TABLE `obe_mata_kuliah_cpl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_cpl_course_id_foreign` (`course_id`),
  ADD KEY `course_cpl_cpl_id_foreign` (`cpl_id`);

--
-- Indexes for table `obe_mata_kuliah_pengguna`
--
ALTER TABLE `obe_mata_kuliah_pengguna`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_user_course_id_foreign` (`course_id`),
  ADD KEY `course_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `obe_nilai_komponen`
--
ALTER TABLE `obe_nilai_komponen`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `assessment_scores_assessment_id_student_id_unique` (`assessment_id`,`student_id`),
  ADD KEY `assessment_scores_student_id_foreign` (`student_id`);

--
-- Indexes for table `obe_notifikasi`
--
ALTER TABLE `obe_notifikasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `obe_pengaturan`
--
ALTER TABLE `obe_pengaturan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `obe_pengelola`
--
ALTER TABLE `obe_pengelola`
  ADD PRIMARY KEY (`id`),
  ADD KEY `obe_pengelola_user_id_jabatan_index` (`user_id`,`jabatan`);

--
-- Indexes for table `obe_pengguna`
--
ALTER TABLE `obe_pengguna`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_identity_unique` (`identity`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `obe_pengguna_jurusan_id_foreign` (`jurusan_id`);

--
-- Indexes for table `obe_pj_lab`
--
ALTER TABLE `obe_pj_lab`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `obe_pj_lab_user_id_unique` (`user_id`);

--
-- Indexes for table `obe_profil_lulusan`
--
ALTER TABLE `obe_profil_lulusan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `obe_profil_lulusan_program_studi_id_foreign` (`program_studi_id`);

--
-- Indexes for table `obe_profil_lulusan_cpl`
--
ALTER TABLE `obe_profil_lulusan_cpl`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `obe_profil_lulusan_cpl_graduate_profile_id_cpl_id_unique` (`graduate_profile_id`,`cpl_id`),
  ADD KEY `obe_profil_lulusan_cpl_cpl_id_foreign` (`cpl_id`);

--
-- Indexes for table `obe_program_studi`
--
ALTER TABLE `obe_program_studi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `obe_program_studi_jurusan_id_foreign` (`jurusan_id`);

--
-- Indexes for table `obe_semester`
--
ALTER TABLE `obe_semester`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `obe_semester_periode_tahun_ajaran_unique` (`periode`,`tahun_ajaran`);

--
-- Indexes for table `obe_sub_cpmk`
--
ALTER TABLE `obe_sub_cpmk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `obe_sub_cpmk_cpmk_id_foreign` (`cpmk_id`);

--
-- Indexes for table `obe_tendik`
--
ALTER TABLE `obe_tendik`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `obe_tendik_user_id_unique` (`user_id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `obe_bahan_kajian`
--
ALTER TABLE `obe_bahan_kajian`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `obe_carousel_login`
--
ALTER TABLE `obe_carousel_login`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `obe_cpl`
--
ALTER TABLE `obe_cpl`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `obe_cpl_bahan_kajian`
--
ALTER TABLE `obe_cpl_bahan_kajian`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `obe_cpmk`
--
ALTER TABLE `obe_cpmk`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `obe_dosen`
--
ALTER TABLE `obe_dosen`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `obe_indikator`
--
ALTER TABLE `obe_indikator`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `obe_jurusan`
--
ALTER TABLE `obe_jurusan`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `obe_kaprodi`
--
ALTER TABLE `obe_kaprodi`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `obe_kelas`
--
ALTER TABLE `obe_kelas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `obe_kelas_cpmk`
--
ALTER TABLE `obe_kelas_cpmk`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `obe_kelas_cpmk_dosen`
--
ALTER TABLE `obe_kelas_cpmk_dosen`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `obe_kelas_cpmk_indikator`
--
ALTER TABLE `obe_kelas_cpmk_indikator`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `obe_kelas_cpmk_komponen`
--
ALTER TABLE `obe_kelas_cpmk_komponen`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `obe_kelas_cpmk_nilai`
--
ALTER TABLE `obe_kelas_cpmk_nilai`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `obe_kelas_indikator_bobot`
--
ALTER TABLE `obe_kelas_indikator_bobot`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `obe_kelas_pengguna`
--
ALTER TABLE `obe_kelas_pengguna`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `obe_kelas_sub_cpmk`
--
ALTER TABLE `obe_kelas_sub_cpmk`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `obe_komponen_penilaian`
--
ALTER TABLE `obe_komponen_penilaian`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `obe_konsentrasi`
--
ALTER TABLE `obe_konsentrasi`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `obe_mahasiswa`
--
ALTER TABLE `obe_mahasiswa`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `obe_mata_kuliah`
--
ALTER TABLE `obe_mata_kuliah`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `obe_mata_kuliah_bahan_kajian`
--
ALTER TABLE `obe_mata_kuliah_bahan_kajian`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `obe_mata_kuliah_cpl`
--
ALTER TABLE `obe_mata_kuliah_cpl`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `obe_mata_kuliah_pengguna`
--
ALTER TABLE `obe_mata_kuliah_pengguna`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `obe_nilai_komponen`
--
ALTER TABLE `obe_nilai_komponen`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `obe_pengaturan`
--
ALTER TABLE `obe_pengaturan`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `obe_pengelola`
--
ALTER TABLE `obe_pengelola`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `obe_pengguna`
--
ALTER TABLE `obe_pengguna`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `obe_pj_lab`
--
ALTER TABLE `obe_pj_lab`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `obe_profil_lulusan`
--
ALTER TABLE `obe_profil_lulusan`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `obe_profil_lulusan_cpl`
--
ALTER TABLE `obe_profil_lulusan_cpl`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `obe_program_studi`
--
ALTER TABLE `obe_program_studi`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `obe_semester`
--
ALTER TABLE `obe_semester`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `obe_sub_cpmk`
--
ALTER TABLE `obe_sub_cpmk`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `obe_tendik`
--
ALTER TABLE `obe_tendik`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `obe_bahan_kajian`
--
ALTER TABLE `obe_bahan_kajian`
  ADD CONSTRAINT `obe_bahan_kajian_program_studi_id_foreign` FOREIGN KEY (`program_studi_id`) REFERENCES `obe_program_studi` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `obe_cpl`
--
ALTER TABLE `obe_cpl`
  ADD CONSTRAINT `obe_cpl_program_studi_id_foreign` FOREIGN KEY (`program_studi_id`) REFERENCES `obe_program_studi` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `obe_cpl_bahan_kajian`
--
ALTER TABLE `obe_cpl_bahan_kajian`
  ADD CONSTRAINT `obe_cpl_bahan_kajian_bahan_kajian_id_foreign` FOREIGN KEY (`bahan_kajian_id`) REFERENCES `obe_bahan_kajian` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `obe_cpl_bahan_kajian_cpl_id_foreign` FOREIGN KEY (`cpl_id`) REFERENCES `obe_cpl` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `obe_cpmk`
--
ALTER TABLE `obe_cpmk`
  ADD CONSTRAINT `cpmks_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `obe_mata_kuliah` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cpmks_cpl_id_foreign` FOREIGN KEY (`cpl_id`) REFERENCES `obe_cpl` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `cpmks_lecturer_id_foreign` FOREIGN KEY (`lecturer_id`) REFERENCES `obe_pengguna` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `obe_dosen`
--
ALTER TABLE `obe_dosen`
  ADD CONSTRAINT `obe_dosen_program_studi_id_foreign` FOREIGN KEY (`program_studi_id`) REFERENCES `obe_program_studi` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `obe_dosen_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `obe_pengguna` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `obe_indikator`
--
ALTER TABLE `obe_indikator`
  ADD CONSTRAINT `indicators_cpmk_id_foreign` FOREIGN KEY (`cpmk_id`) REFERENCES `obe_cpmk` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `obe_indikator_sub_cpmk_id_foreign` FOREIGN KEY (`sub_cpmk_id`) REFERENCES `obe_sub_cpmk` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `obe_jurusan`
--
ALTER TABLE `obe_jurusan`
  ADD CONSTRAINT `obe_jurusan_id_prodi_foreign` FOREIGN KEY (`id_prodi`) REFERENCES `obe_program_studi` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `obe_kaprodi`
--
ALTER TABLE `obe_kaprodi`
  ADD CONSTRAINT `obe_kaprodi_program_studi_id_foreign` FOREIGN KEY (`program_studi_id`) REFERENCES `obe_program_studi` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `obe_kaprodi_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `obe_pengguna` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `obe_kelas`
--
ALTER TABLE `obe_kelas`
  ADD CONSTRAINT `classrooms_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `obe_mata_kuliah` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `obe_kelas_cpmk`
--
ALTER TABLE `obe_kelas_cpmk`
  ADD CONSTRAINT `classroom_cpmks_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `obe_kelas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `classroom_cpmks_cpl_id_foreign` FOREIGN KEY (`cpl_id`) REFERENCES `obe_cpl` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `classroom_cpmks_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `obe_pengguna` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `obe_kelas_cpmk_dosen`
--
ALTER TABLE `obe_kelas_cpmk_dosen`
  ADD CONSTRAINT `classroom_cpmk_lecturer_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `obe_kelas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `classroom_cpmk_lecturer_cpmk_id_foreign` FOREIGN KEY (`cpmk_id`) REFERENCES `obe_cpmk` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `classroom_cpmk_lecturer_lecturer_id_foreign` FOREIGN KEY (`lecturer_id`) REFERENCES `obe_pengguna` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `obe_kelas_cpmk_indikator`
--
ALTER TABLE `obe_kelas_cpmk_indikator`
  ADD CONSTRAINT `classroom_cpmk_indicators_classroom_cpmk_id_foreign` FOREIGN KEY (`classroom_cpmk_id`) REFERENCES `obe_kelas_cpmk` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `obe_kelas_cpmk_indikator_classroom_sub_cpmk_id_foreign` FOREIGN KEY (`classroom_sub_cpmk_id`) REFERENCES `obe_kelas_sub_cpmk` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `obe_kelas_cpmk_komponen`
--
ALTER TABLE `obe_kelas_cpmk_komponen`
  ADD CONSTRAINT `classroom_cpmk_assessments_classroom_cpmk_indicator_id_foreign` FOREIGN KEY (`classroom_cpmk_indicator_id`) REFERENCES `obe_kelas_cpmk_indikator` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `obe_kelas_cpmk_nilai`
--
ALTER TABLE `obe_kelas_cpmk_nilai`
  ADD CONSTRAINT `ccas_assessment_fk` FOREIGN KEY (`classroom_cpmk_assessment_id`) REFERENCES `obe_kelas_cpmk_komponen` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ccas_student_fk` FOREIGN KEY (`student_id`) REFERENCES `obe_pengguna` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `obe_kelas_indikator_bobot`
--
ALTER TABLE `obe_kelas_indikator_bobot`
  ADD CONSTRAINT `obe_kelas_indikator_bobot_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `obe_kelas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `obe_kelas_indikator_bobot_indicator_id_foreign` FOREIGN KEY (`indicator_id`) REFERENCES `obe_indikator` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `obe_kelas_pengguna`
--
ALTER TABLE `obe_kelas_pengguna`
  ADD CONSTRAINT `classroom_user_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `obe_kelas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `classroom_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `obe_pengguna` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `obe_kelas_sub_cpmk`
--
ALTER TABLE `obe_kelas_sub_cpmk`
  ADD CONSTRAINT `obe_kelas_sub_cpmk_classroom_cpmk_id_foreign` FOREIGN KEY (`classroom_cpmk_id`) REFERENCES `obe_kelas_cpmk` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `obe_komponen_penilaian`
--
ALTER TABLE `obe_komponen_penilaian`
  ADD CONSTRAINT `assessments_indicator_id_foreign` FOREIGN KEY (`indicator_id`) REFERENCES `obe_indikator` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `obe_komponen_penilaian_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `obe_kelas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `obe_mahasiswa`
--
ALTER TABLE `obe_mahasiswa`
  ADD CONSTRAINT `obe_mahasiswa_program_studi_id_foreign` FOREIGN KEY (`program_studi_id`) REFERENCES `obe_program_studi` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `obe_mahasiswa_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `obe_pengguna` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `obe_mata_kuliah`
--
ALTER TABLE `obe_mata_kuliah`
  ADD CONSTRAINT `courses_prerequisite_course_id_foreign` FOREIGN KEY (`prerequisite_course_id`) REFERENCES `obe_mata_kuliah` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `obe_mata_kuliah_jurusan_id_foreign` FOREIGN KEY (`jurusan_id`) REFERENCES `obe_jurusan` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `obe_mata_kuliah_program_studi_id_foreign` FOREIGN KEY (`program_studi_id`) REFERENCES `obe_program_studi` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `obe_mata_kuliah_bahan_kajian`
--
ALTER TABLE `obe_mata_kuliah_bahan_kajian`
  ADD CONSTRAINT `obe_mata_kuliah_bahan_kajian_bahan_kajian_id_foreign` FOREIGN KEY (`bahan_kajian_id`) REFERENCES `obe_bahan_kajian` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `obe_mata_kuliah_bahan_kajian_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `obe_mata_kuliah` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `obe_mata_kuliah_cpl`
--
ALTER TABLE `obe_mata_kuliah_cpl`
  ADD CONSTRAINT `course_cpl_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `obe_mata_kuliah` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_cpl_cpl_id_foreign` FOREIGN KEY (`cpl_id`) REFERENCES `obe_cpl` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `obe_mata_kuliah_pengguna`
--
ALTER TABLE `obe_mata_kuliah_pengguna`
  ADD CONSTRAINT `course_user_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `obe_mata_kuliah` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `obe_pengguna` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `obe_nilai_komponen`
--
ALTER TABLE `obe_nilai_komponen`
  ADD CONSTRAINT `assessment_scores_assessment_id_foreign` FOREIGN KEY (`assessment_id`) REFERENCES `obe_komponen_penilaian` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assessment_scores_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `obe_pengguna` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `obe_pengelola`
--
ALTER TABLE `obe_pengelola`
  ADD CONSTRAINT `obe_pengelola_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `obe_pengguna` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `obe_pengguna`
--
ALTER TABLE `obe_pengguna`
  ADD CONSTRAINT `obe_pengguna_jurusan_id_foreign` FOREIGN KEY (`jurusan_id`) REFERENCES `obe_jurusan` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `obe_pj_lab`
--
ALTER TABLE `obe_pj_lab`
  ADD CONSTRAINT `obe_pj_lab_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `obe_pengguna` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `obe_profil_lulusan`
--
ALTER TABLE `obe_profil_lulusan`
  ADD CONSTRAINT `obe_profil_lulusan_program_studi_id_foreign` FOREIGN KEY (`program_studi_id`) REFERENCES `obe_program_studi` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `obe_profil_lulusan_cpl`
--
ALTER TABLE `obe_profil_lulusan_cpl`
  ADD CONSTRAINT `obe_profil_lulusan_cpl_cpl_id_foreign` FOREIGN KEY (`cpl_id`) REFERENCES `obe_cpl` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `obe_profil_lulusan_cpl_graduate_profile_id_foreign` FOREIGN KEY (`graduate_profile_id`) REFERENCES `obe_profil_lulusan` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `obe_program_studi`
--
ALTER TABLE `obe_program_studi`
  ADD CONSTRAINT `obe_program_studi_jurusan_id_foreign` FOREIGN KEY (`jurusan_id`) REFERENCES `obe_jurusan` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `obe_sub_cpmk`
--
ALTER TABLE `obe_sub_cpmk`
  ADD CONSTRAINT `obe_sub_cpmk_cpmk_id_foreign` FOREIGN KEY (`cpmk_id`) REFERENCES `obe_cpmk` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `obe_tendik`
--
ALTER TABLE `obe_tendik`
  ADD CONSTRAINT `obe_tendik_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `obe_pengguna` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
