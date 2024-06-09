-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-06-2024 a las 19:04:23
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `monoma-test-api`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidatos`
--

CREATE TABLE `candidatos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` bigint(20) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `candidatos`
--

INSERT INTO `candidatos` (`id`, `name`, `source`, `owner`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Pedro King', 'Augustine Stoltenberg', 32, 32, '2024-06-09 00:32:58', '2024-06-09 00:32:58'),
(2, 'Andreane Ankunding', 'Florian Kemmer', 34, 40, '2024-06-09 00:32:58', '2024-06-09 00:32:58'),
(3, 'Fernando Dickinson', 'Joel Fadel PhD', 35, 37, '2024-06-09 00:32:58', '2024-06-09 00:32:58'),
(4, 'Mr. Fred Langworth II', 'Freeman Jacobs', 31, 31, '2024-06-09 00:32:58', '2024-06-09 00:32:58'),
(5, 'Willie Volkman', 'Felicita Abbott', 41, 38, '2024-06-09 00:32:58', '2024-06-09 00:32:58'),
(6, 'Prof. Gilda Lowe', 'Marjolaine Pacocha', 36, 35, '2024-06-09 00:32:58', '2024-06-09 00:32:58'),
(7, 'Jordi Ankunding', 'Loma Turner DDS', 31, 33, '2024-06-09 00:32:58', '2024-06-09 00:32:58'),
(8, 'Velma Runte', 'Dr. Roel Bernier', 40, 33, '2024-06-09 00:32:58', '2024-06-09 00:32:58'),
(9, 'Amely Sporer III', 'Ara Graham', 36, 36, '2024-06-09 00:32:58', '2024-06-09 00:32:58'),
(10, 'Bo Crist', 'Dasia Schuppe', 41, 32, '2024-06-09 00:32:58', '2024-06-09 00:32:58'),
(11, 'Fern Hamill', 'Savanna Sipes II', 36, 35, '2024-06-09 00:33:47', '2024-06-09 00:33:47'),
(12, 'Hoyt Russel', 'Ms. Nola Robel III', 31, 31, '2024-06-09 00:33:47', '2024-06-09 00:33:47'),
(13, 'Mariela Haag', 'Alexandre Koch II', 38, 33, '2024-06-09 00:33:47', '2024-06-09 00:33:47'),
(14, 'Uriel Goyette', 'Jarret O\'Keefe', 33, 34, '2024-06-09 00:33:47', '2024-06-09 00:33:47'),
(15, 'Prof. Yvette Torphy', 'Mrs. Charity Trantow MD', 40, 38, '2024-06-09 00:33:47', '2024-06-09 00:33:47'),
(16, 'Brandon Schaden', 'Mr. Tyshawn Kreiger', 36, 41, '2024-06-09 00:33:47', '2024-06-09 00:33:47'),
(17, 'Kelly Swift', 'Dr. Presley Pollich', 40, 35, '2024-06-09 00:33:47', '2024-06-09 00:33:47'),
(18, 'Meda Abbott', 'Merritt Gibson', 39, 38, '2024-06-09 00:33:47', '2024-06-09 00:33:48'),
(19, 'Ruben Doyle', 'Beverly Torp V', 41, 34, '2024-06-09 00:33:47', '2024-06-09 00:33:48'),
(20, 'Prof. Andy Schoen MD', 'Hettie Steuber II', 32, 41, '2024-06-09 00:33:47', '2024-06-09 00:33:48'),
(21, 'Test Candidato1', 'Verdana', 32, 31, '2024-06-09 02:15:28', '2024-06-09 02:15:28'),
(22, 'Test Candidato2', 'Marde', 36, 31, '2024-06-09 02:18:50', '2024-06-09 02:18:50'),
(23, 'Test Candidato2', 'Marde', 36, 31, '2024-06-09 02:19:27', '2024-06-09 02:19:27'),
(24, 'Test Candidato3', 'Marde', 36, 31, '2024-06-09 02:20:08', '2024-06-09 02:20:08'),
(25, 'Test Candidato4', 'Mardes', 36, 31, '2024-06-09 02:22:26', '2024-06-09 02:22:26'),
(26, 'Test Candidato4', 'Mardes', 36, 31, '2024-06-09 02:23:20', '2024-06-09 02:23:20'),
(27, 'Test Candidato4', 'Mardes', 36, 31, '2024-06-09 02:24:53', '2024-06-09 02:24:53'),
(28, 'Test Candidato5', 'Mardes', 36, 31, '2024-06-09 02:25:00', '2024-06-09 02:25:00'),
(29, 'Test Candidato5', 'Mardes', 36, 42, '2024-06-09 02:41:23', '2024-06-09 02:41:23'),
(30, 'Test Candidato5', 'Mardes', 36, 42, '2024-06-09 02:58:52', '2024-06-09 02:58:52'),
(31, 'Test Candidato5', 'Mardes', 36, 42, '2024-06-09 03:00:20', '2024-06-09 03:00:20'),
(32, 'Test Candidato5', 'Mardes', 36, 42, '2024-06-09 03:04:34', '2024-06-09 03:04:34'),
(33, 'Test Candidato5', 'Mardes', 36, 42, '2024-06-09 03:07:56', '2024-06-09 03:07:56'),
(34, 'Test Candidato5', 'Mardes', 36, 42, '2024-06-09 19:46:48', '2024-06-09 19:46:48'),
(35, 'Test Candidato5', 'Mardes', 36, 42, '2024-06-09 19:47:07', '2024-06-09 19:47:07'),
(36, 'Test Candidato5', 'Mardes', 36, 42, '2024-06-09 20:06:09', '2024-06-09 20:06:09'),
(37, 'Test Candidato5', 'Mardes', 36, 42, '2024-06-09 20:06:17', '2024-06-09 20:06:17'),
(38, 'Test Candidato5', 'Mardes', 36, 42, '2024-06-09 20:08:18', '2024-06-09 20:08:18'),
(39, 'Test Candidato7', 'Mardes', 36, 42, '2024-06-09 20:56:12', '2024-06-09 20:56:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2024_06_04_214911_create_candidatos_table', 1),
(11, '2024_06_05_203115_add_username_column_to_users_table', 1),
(12, '2024_06_05_203550_add_last_login_column_to_users_table', 1),
(13, '2024_06_05_203601_add_is_active_column_to_users_table', 1),
(14, '2024_06_05_203817_add_role_column_to_users_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('03f4ab5a2d28b68420440f28db806d0bfd936189e13925f339c8ed1ac7f1b98e0db0f15027e3d953', 31, 1, 'appToken', '[]', 0, '2024-06-09 01:09:01', '2024-06-09 01:09:01', '2024-06-09 21:09:01'),
('3efa670879e91224ba3a6e254d2cd6725fa9fde79cae952e773dc755fe97fd733d0ac9c708932766', 31, 1, 'appToken', '[]', 0, '2024-06-09 00:54:41', '2024-06-09 00:54:41', '2024-06-09 20:54:41'),
('52498126a1cc87314f770091d40edf696553883efde500735b6c6cada7238cb277ce46155394143e', 42, 1, 'appToken', '[]', 0, '2024-06-09 02:40:50', '2024-06-09 02:40:50', '2024-06-09 22:40:50'),
('52d5b44d2e0c4c2af7a6bc8b2d81827a7276e0a97259e8d47119713cace521d1a480cf4f098edc34', 31, 1, 'appToken', '[]', 0, '2024-06-09 00:51:35', '2024-06-09 00:51:36', '2024-06-09 20:51:35'),
('56a57f3021cdb11a2395e34046db6179d83c492c838f670ee89aa97afacd589b64b514dc080b8dcb', 31, 1, 'appToken', '[]', 1, '2024-06-09 01:24:19', '2024-06-09 01:32:31', '2024-06-09 21:24:19'),
('729888e18912d4dff2e85d40661c259d024eb1ad26e776e72168d52822de3299eb48bf9a7968cc30', 31, 1, 'appToken', '[]', 0, '2024-06-09 01:21:59', '2024-06-09 01:21:59', '2024-06-09 21:21:59'),
('75849cf79df95710a73cbd4e80fd5a648b50c92f2e3fa0bcdafd8668c76d2029c0791ae010d55461', 31, 1, 'appToken', '[]', 0, '2024-06-09 01:34:19', '2024-06-09 01:34:20', '2024-06-09 21:34:19'),
('7dbaa8d9c1eed92b06248bdf89b4434f13974fc388ceeb3b60e0a7242417b6018cb641a017b2cdbe', 31, 1, 'appToken', '[]', 0, '2024-06-09 00:55:20', '2024-06-09 00:55:20', '2024-06-09 20:55:20'),
('b6671cac4cbf9790c270912a27280e3095050022ce6efb1484cfd1eca4a798921d3ff161f8aaa75a', 31, 1, 'appToken', '[]', 1, '2024-06-09 01:47:14', '2024-06-09 01:49:26', '2024-06-09 21:47:14'),
('b9cc616053f4368e0651b202b2527ae6172b721710b194cd6809dbadf893d0f58d3c8761a72a1438', 31, 1, 'appToken', '[]', 0, '2024-06-09 19:45:04', '2024-06-09 19:45:04', '2024-06-10 15:45:04'),
('c19bd72fe53b7868b3bd58bb887db5face4e15551717833f3b37d1d32fc4643ba19ffd197005b4de', 31, 1, 'appToken', '[]', 0, '2024-06-09 20:12:50', '2024-06-09 20:12:50', '2024-06-10 16:12:50'),
('ce3004aa1c9a1e358d112870a31913a7459a16a00e8032ec26406d25f2952c7e756fb6b4974cff11', 31, 1, 'appToken', '[]', 0, '2024-06-09 02:15:01', '2024-06-09 02:15:01', '2024-06-09 22:15:01'),
('e88a2f20425f57d4eefe65ede1f84e5abd3f0e0622ccb126ee4f04a5765fc905610ad23a3f1cd7d4', 31, 1, 'appToken', '[]', 0, '2024-06-09 01:23:34', '2024-06-09 01:23:34', '2024-06-09 21:23:34'),
('ed092af0591227215ea86e35d50a04e1d45a848f2de1d65db597974f09fbf310bf85dddd738996ce', 31, 1, 'appToken', '[]', 0, '2024-06-09 02:14:39', '2024-06-09 02:14:39', '2024-06-09 22:14:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'tester', 'lTLQQqVMXYn5f72DO8lGnAWlVrntY4gqTD8ba6tr', NULL, 'http://localhost', 1, 0, 0, '2024-06-09 00:50:52', '2024-06-09 00:50:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-06-09 00:50:52', '2024-06-09 00:50:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `username`, `last_login`, `is_active`, `role`) VALUES
(31, 'tester', 'tester@example.com', NULL, '$2y$12$RibqCycnDMq9LpgKv2kaWuPfN0YWslCMQPTAgU6fkkZsDa0b0Zd.2', 'tTAZDDUMHN', NULL, '2024-06-09 20:12:49', 'tester', '2024-06-09 16:12:49', 1, 'agent'),
(32, 'Vincent Weissnat', 'mhowe@example.org', '2024-06-09 00:32:57', '$2y$12$XgAeODTNybe366IA8.fTReI.LAaCjMteN16v0tjKojsfPcRLR5Kz6', 'VQQQ44MKw3', '2024-06-09 00:32:57', '2024-06-09 00:32:57', 'Vincent Weissnat', '2024-06-08 20:32:57', 1, 'manager'),
(33, 'Julius Considine', 'gloria.blick@example.com', '2024-06-09 00:32:57', '$2y$12$XgAeODTNybe366IA8.fTReI.LAaCjMteN16v0tjKojsfPcRLR5Kz6', 'J5jA8vRzbY', '2024-06-09 00:32:58', '2024-06-09 00:32:58', 'Julius Considine', '2024-06-08 20:32:57', 1, 'agent'),
(34, 'Susan Reichel', 'hettinger.elmer@example.com', '2024-06-09 00:32:57', '$2y$12$XgAeODTNybe366IA8.fTReI.LAaCjMteN16v0tjKojsfPcRLR5Kz6', 'QaUKMmh2DD', '2024-06-09 00:32:58', '2024-06-09 00:32:58', 'Susan Reichel', '2024-06-08 20:32:57', 1, 'agent'),
(35, 'Mrs. Alyson Padberg', 'zreilly@example.com', '2024-06-09 00:32:57', '$2y$12$XgAeODTNybe366IA8.fTReI.LAaCjMteN16v0tjKojsfPcRLR5Kz6', 'NoHbaps5GF', '2024-06-09 00:32:58', '2024-06-09 00:32:58', 'Mrs. Alyson Padberg', '2024-06-08 20:32:57', 1, 'agent'),
(36, 'Freida White', 'delmer30@example.org', '2024-06-09 00:32:57', '$2y$12$XgAeODTNybe366IA8.fTReI.LAaCjMteN16v0tjKojsfPcRLR5Kz6', 'lU3yVpeRuD', '2024-06-09 00:32:58', '2024-06-09 00:32:58', 'Freida White', '2024-06-08 20:32:57', 1, 'manager'),
(37, 'Mr. Elbert Fisher', 'rae99@example.net', '2024-06-09 00:32:57', '$2y$12$XgAeODTNybe366IA8.fTReI.LAaCjMteN16v0tjKojsfPcRLR5Kz6', 'dI1qv7bUB3', '2024-06-09 00:32:58', '2024-06-09 00:32:58', 'Mr. Elbert Fisher', '2024-06-08 20:32:57', 1, 'agent'),
(38, 'Ward Mohr', 'asia.turcotte@example.net', '2024-06-09 00:32:57', '$2y$12$XgAeODTNybe366IA8.fTReI.LAaCjMteN16v0tjKojsfPcRLR5Kz6', 'csfjIW5Rld', '2024-06-09 00:32:58', '2024-06-09 00:32:58', 'Ward Mohr', '2024-06-08 20:32:57', 1, 'manager'),
(39, 'Ila Jenkins', 'fstiedemann@example.org', '2024-06-09 00:32:57', '$2y$12$XgAeODTNybe366IA8.fTReI.LAaCjMteN16v0tjKojsfPcRLR5Kz6', 'JrG696pa7p', '2024-06-09 00:32:58', '2024-06-09 00:32:58', 'Ila Jenkins', '2024-06-08 20:32:57', 1, 'agent'),
(40, 'Janelle Dare DVM', 'kristina70@example.com', '2024-06-09 00:32:57', '$2y$12$XgAeODTNybe366IA8.fTReI.LAaCjMteN16v0tjKojsfPcRLR5Kz6', 'AcMPlaJoVS', '2024-06-09 00:32:58', '2024-06-09 00:32:58', 'Janelle Dare DVM', '2024-06-08 20:32:57', 1, 'manager'),
(41, 'Bart Kuphal Jr.', 'barton.chanel@example.com', '2024-06-09 00:32:57', '$2y$12$XgAeODTNybe366IA8.fTReI.LAaCjMteN16v0tjKojsfPcRLR5Kz6', 'RdbSfgiFQ5', '2024-06-09 00:32:58', '2024-06-09 00:32:58', 'Bart Kuphal Jr.', '2024-06-08 20:32:57', 1, 'agent'),
(42, 'manager', 'manager@example.com', NULL, '$2y$12$uhiFD17X8uAHkdELrNwvZOh0qZTS5YVFI5Lz42Cnn1PWxESWMc/WS', 'OWAh0fzyKY', NULL, NULL, 'manager', '2020-09-01 16:16:16', 1, 'manager');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `candidatos`
--
ALTER TABLE `candidatos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `candidatos_owner_foreign` (`owner`),
  ADD KEY `candidatos_created_by_foreign` (`created_by`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `candidatos`
--
ALTER TABLE `candidatos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `candidatos`
--
ALTER TABLE `candidatos`
  ADD CONSTRAINT `candidatos_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `candidatos_owner_foreign` FOREIGN KEY (`owner`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
