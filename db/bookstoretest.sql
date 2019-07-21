-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2019 at 06:14 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstoretest`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bookTitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `bookTitle`, `author`, `price`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Introductory Bio', 'Itafor Francis Clement', 40000, 3, '2019-07-21 16:14:11', '2019-07-21 19:14:40'),
(4, 'Biology', 'Bartholomew', 1500, 3, '2019-07-21 16:20:13', '2019-07-21 16:20:13'),
(5, 'Chemistry', 'Barthom', 1500, 3, '2019-07-21 16:23:37', '2019-07-21 16:23:37'),
(6, 'Social Studies', 'Barthom', 1500, 3, '2019-07-21 16:25:06', '2019-07-21 16:25:06'),
(7, 'Busines Studies', 'Barthom', 1500, 3, '2019-07-21 16:34:41', '2019-07-21 16:34:41'),
(8, 'CRS', 'Barthom', 1500, 3, '2019-07-21 16:38:30', '2019-07-21 16:38:30'),
(15, 'Basic Maths', 'By Itafor', 50000, 5, '2019-07-21 23:09:12', '2019-07-21 23:09:12');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_07_21_020258_books', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('09e69764e80078f44c938b52bc6949b96f3739671e5fc2d6b78210fc78a3d4a4dae183db185df363', 3, 1, 'Personal Access Token', '[]', 0, '2019-07-21 18:58:04', '2019-07-21 18:58:04', '2019-07-28 11:58:05'),
('0b2ae94b895ac431c805a39cc7a9e88a18e9111d8f9763636fd8ea3408d9b74735b560e159d2b920', 4, 1, 'Personal Access Token', '[]', 0, '2019-07-21 19:11:18', '2019-07-21 19:11:18', '2019-07-28 12:11:18'),
('116f5c68e1635dc96bba5743ee69373fd36e0f7a45747a8cc43c6c56346f6343a6ea755c6cc03031', 2, 1, 'Personal Access Token', '[]', 1, '2019-07-21 15:22:59', '2019-07-21 15:22:59', '2019-07-28 08:22:59'),
('118acdd19f4cd375d87ed8241a2e23cfeba3bead125d3f47a62a78b153cbf210ff8f887a9b6195bd', 2, 1, 'Personal Access Token', '[]', 0, '2019-07-21 15:43:58', '2019-07-21 15:43:58', '2019-07-28 08:43:59'),
('2dc1db6438aaa0b5506d10323aa89869e8a02d5d3ac24ce1a31248159a795887fca06b858d192b6b', 4, 1, 'Personal Access Token', '[]', 1, '2019-07-21 17:25:00', '2019-07-21 17:25:00', '2019-07-28 10:25:00'),
('2e38e377dca81a2fc2ce340d82cd168c46cd90cc03b742ffb50b1f9065871297ad98862255c40ed0', 2, 1, 'Personal Access Token', '[]', 1, '2019-07-21 15:27:14', '2019-07-21 15:27:14', '2019-07-28 08:27:14'),
('2ed8c7c0ac9e8c4910fc2fb19044ec51cde315c7c7e4f5c0599a1c6130d4c02c1d39e9773f7f8b9c', 1, 2, NULL, '[]', 0, '2019-07-21 13:01:25', '2019-07-21 13:01:25', '2020-07-21 06:01:25'),
('3322b7359f13233bae19d91beaab83529f3849f5201871ac2f928af668a3bc544ba2352227dfb7b3', 1, 2, NULL, '[]', 0, '2019-07-21 13:58:37', '2019-07-21 13:58:37', '2020-07-21 06:58:37'),
('34acc7440e20590e44e226fe69cf6230489bff4b6ea6916bd20afd400f9847379cd169aa598f6df1', 4, 1, 'Personal Access Token', '[]', 0, '2019-07-21 17:09:23', '2019-07-21 17:09:23', '2019-07-28 10:09:23'),
('3654392a9da3ad98e22a49abb788a3e56ca6f7c57db58094a1be6a157974964e250f5a914683d355', 4, 1, 'Personal Access Token', '[]', 1, '2019-07-21 17:10:21', '2019-07-21 17:10:21', '2019-07-28 10:10:21'),
('513b8fdbe7a9a16e4c3d5bcbf5f0b1d6cae69801975ca1ecb04d1b426e4fa30b3cc4630b071083f8', 4, 1, 'Personal Access Token', '[]', 1, '2019-07-21 17:16:56', '2019-07-21 17:16:56', '2019-07-28 10:16:56'),
('517bfa52b9f2cc5bee13ad9693822a688fc0a35e1106d9feb76e6f7d33f2c6083eac88510bd96a11', 5, 1, 'Personal Access Token', '[]', 0, '2019-07-21 22:44:10', '2019-07-21 22:44:10', '2019-07-28 15:44:10'),
('5734dd9fa745294c51421bd81198d74367efc3be649595f7455fa449029e95faabd2064b6d2fb707', 2, 1, 'Personal Access Token', '[]', 0, '2019-07-21 15:31:22', '2019-07-21 15:31:22', '2019-07-28 08:31:22'),
('5c81d52b8d33e56331c678134befa26fcf10e568ac2f769c57306c2478a1a9eed59890e73271126e', 3, 1, 'Personal Access Token', '[]', 0, '2019-07-21 16:47:46', '2019-07-21 16:47:46', '2019-07-28 09:47:46'),
('6419b9206881e1695eb221c300ff3dfc5c8e0b92f34a8c3b8ce748b2304ec56a2e87e3bd27fd26ba', 3, 1, 'Personal Access Token', '[]', 0, '2019-07-21 18:05:40', '2019-07-21 18:05:40', '2019-07-28 11:05:41'),
('87377df1d7fc1e94f511391523cb2212298d809bf9a711b83956938ac45f8877f4ec1d5be5ff17b8', 1, 2, NULL, '[]', 0, '2019-07-21 13:32:50', '2019-07-21 13:32:50', '2020-07-21 06:32:50'),
('89a26f5726352c93fb54b66713f0bec9ccd73958bdf98dc7a6e9326968b9d6ee7f22d0802e6afec1', 3, 1, 'Personal Access Token', '[]', 1, '2019-07-21 15:46:09', '2019-07-21 15:46:09', '2019-07-28 08:46:10'),
('8f4fc268b3e15f0cd8374871ce195a6b548be5bf39de60edc89738e8b7eeed548005976a5fe82ec1', 2, 1, 'Personal Access Token', '[]', 0, '2019-07-21 15:38:35', '2019-07-21 15:38:35', '2019-07-28 08:38:36'),
('a5064499a769c87644fd86e04dc64ff6763d45283e182facdd813a649bb45e660fae52984bd1b311', 4, 1, 'Personal Access Token', '[]', 0, '2019-07-21 17:42:46', '2019-07-21 17:42:46', '2019-07-28 10:42:47'),
('b70fb811d3ca63bec61d6bb84ebfcfb5a03ded03defecdda6522b5c4f11f6a4690231df9104f1320', 2, 1, 'Personal Access Token', '[]', 0, '2019-07-21 15:28:12', '2019-07-21 15:28:12', '2019-07-28 08:28:12'),
('ba5f84010cc89ba6a9458b74f4bcd81ceac25722e5c0ee029ba433ca44003e5dda8051066a17cad6', 3, 1, 'Personal Access Token', '[]', 0, '2019-07-21 16:37:38', '2019-07-21 16:37:38', '2019-07-28 09:37:39'),
('c2c880de267c725eb58f5be36b886b9d0619d547d37cfaf8cee9b2b8898f7b0ef3f4e12f1a36d5af', 3, 1, 'Personal Access Token', '[]', 1, '2019-07-21 16:05:00', '2019-07-21 16:05:00', '2019-07-28 09:05:01'),
('d8aba7e93e75b1b9371129d42d08e66bb90f782eeefcb8f1150926cdce150b19a2e4998d83d9c8ac', 2, 1, 'Personal Access Token', '[]', 0, '2019-07-21 15:29:30', '2019-07-21 15:29:30', '2019-07-28 08:29:31'),
('e1c967cc823cd44d582173f2ebb08c2a8ba40afc11f697594dff217699c6b4f45a5015e08486e674', 3, 1, 'Personal Access Token', '[]', 0, '2019-07-21 18:44:36', '2019-07-21 18:44:36', '2019-07-28 11:44:36'),
('eb26b6e108bb62de9723a40c4bed732dfe946e342de4702d5162cb5af972fd5bc7fb6b20483cb230', 3, 1, 'Personal Access Token', '[]', 0, '2019-07-21 16:47:35', '2019-07-21 16:47:35', '2019-07-28 09:47:35'),
('fee76214a4588fe2171c4ac2f90062d11c11db694d7cdbd9d69dfc05eb1065348de19f33a66cff7c', 3, 1, 'Personal Access Token', '[]', 0, '2019-07-21 16:04:45', '2019-07-21 16:04:45', '2019-07-28 09:04:45'),
('ff9fd5a99792212ffc51dbdd936f91dd47da05204d54f6fb0d196515681d8934e8af2df72ea12dea', 2, 1, 'Personal Access Token', '[]', 1, '2019-07-21 15:30:11', '2019-07-21 15:30:11', '2019-07-28 08:30:11');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'wnTFAMqBZFCFhpNjXqY6C6zBe0ZxZ3SIqZCnFjxS', 'http://localhost', 1, 0, 0, '2019-07-21 12:20:38', '2019-07-21 12:20:38'),
(2, NULL, 'Laravel Password Grant Client', 'TZT4TnZKJhDZoM35WyySrryBkzhCCxBkVOFmZZxq', 'http://localhost', 0, 1, 0, '2019-07-21 12:20:38', '2019-07-21 12:20:38');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-07-21 12:20:38', '2019-07-21 12:20:38');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('6f82e8be5f59746f123a25d1355824e685b404d53655ca12b7ea52ba290add0a17057098bcdcc9c7', '3322b7359f13233bae19d91beaab83529f3849f5201871ac2f928af668a3bc544ba2352227dfb7b3', 0, '2020-07-21 06:58:38'),
('a896be74983386c5c34da7f75dd241767a6404f7df16cdb70acae6eee0a4911e4f2d6912da3f57f0', '87377df1d7fc1e94f511391523cb2212298d809bf9a711b83956938ac45f8877f4ec1d5be5ff17b8', 0, '2020-07-21 06:32:50'),
('d5d5fd170c0f207cdba53b8755f0372049d2b0b203d198428f0b44cc521999f47cd9c6fd1c93390a', '2ed8c7c0ac9e8c4910fc2fb19044ec51cde315c7c7e4f5c0599a1c6130d4c02c1d39e9773f7f8b9c', 0, '2020-07-21 06:01:25');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Itafor francis', 'francis@gmail.com', NULL, '$2y$10$Jrselnv1MKpqCSnNEHQJrOKGwJwBcHC0PP34t8avatHDYcRnOkYoS', NULL, '2019-07-21 12:52:06', '2019-07-21 12:52:06'),
(2, 'Afred', 'afred@gmail.com', NULL, '$2y$10$eXP7fMc6AiU6ynrwt1Sv1..C0L8G.flJtkk4ay0SvQAC6x6kG2.yy', NULL, '2019-07-21 15:20:02', '2019-07-21 15:20:02'),
(3, 'David', 'david@gmail.com', NULL, '$2y$10$6odNDCxm1u.XnzG7HY2jFeoh8Ug3bowRV2TVdK9i4ePL4pHwo8rPm', NULL, '2019-07-21 15:45:40', '2019-07-21 15:45:40'),
(4, 'Itafor Francis', 'itaforfrancis@gmail.com', NULL, '$2y$10$QBa.AFAGG.56NaNHa3WguO80ePNG4EYsDRbN2L/XZVysC2bo2q9fa', NULL, '2019-07-21 17:07:57', '2019-07-21 17:07:57'),
(5, 'Patience Clement', 'patience@gmail.com', NULL, '$2y$10$RvNYz8Neu3WAirRiLpUEUO2FP.YMplj2pmrhKh4MzV5y9qFbg1bSa', NULL, '2019-07-21 22:43:21', '2019-07-21 22:43:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
