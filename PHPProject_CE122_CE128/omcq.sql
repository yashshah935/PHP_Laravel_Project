-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2021 at 03:27 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `omcq`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer__sheets`
--

CREATE TABLE `answer__sheets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `q_id` int(11) NOT NULL,
  `student_no` int(11) NOT NULL,
  `correct` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marked` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `unique` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answer__sheets`
--

INSERT INTO `answer__sheets` (`id`, `q_id`, `student_no`, `correct`, `marked`, `quiz_id`, `unique`, `created_at`, `updated_at`) VALUES
(1, 1, 1234, 'B', 'A', 1, 12341, '2021-03-31 04:40:24', '2021-03-31 04:40:24'),
(2, 2, 1234, 'A', 'A', 1, 12342, '2021-03-31 04:40:25', '2021-03-31 04:40:25'),
(3, 3, 1234, 'B', 'B', 2, 12343, '2021-03-31 04:40:55', '2021-03-31 04:40:55'),
(4, 4, 1234, 'B', 'A', 2, 12344, '2021-03-31 04:40:55', '2021-03-31 04:40:55'),
(5, 5, 1234, 'A', 'A', 3, 12345, '2021-03-31 04:41:17', '2021-03-31 04:41:17'),
(6, 6, 1234, 'A', 'B', 3, 12346, '2021-03-31 04:41:17', '2021-03-31 04:41:17'),
(7, 1, 159753, 'B', 'B', 1, 1597531, '2021-03-31 04:42:37', '2021-03-31 04:42:37'),
(8, 2, 159753, 'A', 'A', 1, 1597532, '2021-03-31 04:42:37', '2021-03-31 04:42:37'),
(9, 3, 159753, 'B', 'B', 2, 1597533, '2021-03-31 04:43:07', '2021-03-31 04:43:07'),
(13, 7, 158456, 'D', 'B', 4, 1584567, '2021-03-31 05:56:55', '2021-03-31 05:56:55'),
(14, 8, 158456, 'D', 'B', 4, 1584568, '2021-03-31 05:56:55', '2021-03-31 05:56:55'),
(15, 9, 158456, 'C', 'C', 4, 1584569, '2021-03-31 05:56:55', '2021-03-31 05:56:55'),
(16, 1, 158456, 'B', 'B', 1, 1584561, '2021-03-31 05:57:58', '2021-03-31 05:57:58'),
(17, 2, 158456, 'A', 'A', 1, 1584562, '2021-03-31 05:57:58', '2021-03-31 05:57:58'),
(18, 10, 15975300, 'A', 'A', 5, 1597530010, '2021-03-31 06:08:14', '2021-03-31 06:08:14'),
(19, 11, 15975300, 'C', 'C', 5, 1597530011, '2021-03-31 06:08:14', '2021-03-31 06:08:14'),
(20, 12, 15975300, 'B', 'B', 5, 1597530012, '2021-03-31 06:08:15', '2021-03-31 06:08:15');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2021_03_11_172217_create_sessions_table', 1),
(5, '2021_03_29_045029_create_teams_table', 1),
(6, '2021_03_29_045828_create_team_invitations_table', 1),
(7, '2021_03_29_050210_create_team_user_table', 1),
(8, '2021_03_29_081925_create_roles_table', 1),
(9, '2021_03_29_082422_create_users_table', 1),
(10, '2021_03_29_082552_add_roles_fields_to_users_table', 1),
(11, '2021_03_29_100030_create_quizzes_table', 1),
(12, '2021_03_30_090043_create_questions_table', 1),
(13, '2021_03_30_130615_create_answer_sheets_table', 1),
(14, '2021_03_30_132528_create_results_table', 1),
(15, '2014_10_12_200000_add_two_factor_columns_to_users_table', 2);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `question` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `op_a` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `op_b` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `op_c` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `op_d` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `correct` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `quiz_id`, `question`, `op_a`, `op_b`, `op_c`, `op_d`, `correct`, `created_at`, `updated_at`) VALUES
(1, 1, 'Yash', '1', '2', '5', '4', 'B', '2021-03-31 04:35:18', '2021-03-31 04:35:18'),
(2, 1, '.       .', '------', '******', '//////', '+++++', 'A', '2021-03-31 04:35:47', '2021-03-31 04:35:47'),
(3, 2, 'jhvuvkjk', 'v', 'hj', 'vj', 'vhj', 'B', '2021-03-31 04:36:10', '2021-03-31 04:36:10'),
(4, 2, 'kjbk', 'bkj', 'jkb', 'jjk', ',j', 'B', '2021-03-31 04:36:17', '2021-03-31 04:36:17'),
(5, 3, 'kjbjhb jh hj', 'jh,', ',m.k', 'j', 'n', 'A', '2021-03-31 04:39:33', '2021-03-31 04:39:33'),
(6, 3, 'n hj hj k', 'kn', 'jk k', 'j jk', 'j', 'A', '2021-03-31 04:39:37', '2021-03-31 04:39:37'),
(7, 4, 'PHP Stands for?', 'PHP Hypertex Processor', 'PHP Hyper Markup Processor', 'PHP Hyper Markup Preprocessor', 'PHP Hypertext Preprocessor', 'D', '2021-03-31 05:49:04', '2021-03-31 05:49:04'),
(8, 4, 'kjbjb jk', 'jk', 'kj', 'jk', 'jk', 'D', '2021-03-31 05:50:03', '2021-03-31 05:50:03'),
(9, 4, 'yulbhbhb', 'jhb,j', 'blkj', 'b', 'jlb', 'C', '2021-03-31 05:52:07', '2021-03-31 05:52:07'),
(10, 5, 'Which of the following option leads to the portability and security of Java?', 'Bytecode is executed by JVM', 'The applet makes the Java code secure and portable', 'Use of exception handling', 'Dynamic binding between objects', 'A', '2021-03-31 06:03:41', '2021-03-31 06:03:41'),
(11, 5, 'Which of the following is not a Java features?', 'Dynamic', 'Architecture Neutral', 'Use of pointers', 'Object-oriented', 'C', '2021-03-31 06:04:40', '2021-03-31 06:04:40'),
(12, 5, 'hbhkbkjBKJBjJ', 'jkb', 'kjb', 'jk', 'b', 'B', '2021-03-31 06:05:04', '2021-03-31 06:05:04');

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE `quizzes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sub` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quiz_date` date NOT NULL,
  `teacher_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`id`, `sub`, `quiz_date`, `teacher_name`, `created_at`, `updated_at`) VALUES
(1, 'DBMS', '2020-11-30', 'yash', '2021-03-31 04:35:07', '2021-03-31 04:35:07'),
(2, 'DM', '2021-12-30', 'yash', '2021-03-31 04:36:04', '2021-03-31 04:36:04'),
(3, '51651', '2021-12-31', 'H', '2021-03-31 04:39:26', '2021-03-31 04:39:26'),
(4, 'PHP', '2021-03-17', 'H', '2021-03-31 05:42:53', '2021-03-31 05:42:53'),
(5, 'JT', '2021-04-01', 'Teacher', '2021-03-31 06:01:52', '2021-03-31 06:01:52');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unique_id` bigint(20) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `marks` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `student_no`, `unique_id`, `quiz_id`, `marks`, `created_at`, `updated_at`) VALUES
(1, '1234', 12342, 1, 1, '2021-03-31 04:40:25', '2021-03-31 04:40:25'),
(2, '1234', 12344, 2, 1, '2021-03-31 04:40:55', '2021-03-31 04:40:55'),
(3, '1234', 12346, 3, 1, '2021-03-31 04:41:17', '2021-03-31 04:41:17'),
(4, '159753', 1597532, 1, 2, '2021-03-31 04:42:37', '2021-03-31 04:42:37'),
(5, '159753', 1597534, 2, 1, '2021-03-31 04:43:07', '2021-03-31 04:43:07'),
(6, '159753', 1597536, 3, 1, '2021-03-31 04:44:26', '2021-03-31 04:44:26'),
(7, '158456', 1584569, 4, 1, '2021-03-31 05:56:55', '2021-03-31 05:56:55'),
(8, '158456', 1584562, 1, 2, '2021-03-31 05:57:58', '2021-03-31 05:57:58'),
(9, '15975300', 1597530012, 5, 3, '2021-03-31 06:08:15', '2021-03-31 06:08:15');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', NULL, NULL),
(2, 'Student', NULL, NULL),
(3, 'Teacher', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('B4HZkr1XgYFflpGDcf9JJnPVYLqsxbqyEOiAH3sJ', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiQm41OThzZnU0TVEweWNvd2NKRHNQdTZKSG5YeFd6MjIwejFDWjBCeiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9yZXN1bHQvcmVzdWx0Ijt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJC5NbXRDQjk4cndsTHdqQUVSTlVzNXU0Qy5uOUVPRlVRVmZtVnF2V1ZINU5NOVU0WGtQbXI2IjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCQuTW10Q0I5OHJ3bEx3akFFUk5VczV1NEMubjlFT0ZVUVZmbVZxdldWSDVOTTlVNFhrUG1yNiI7fQ==', 1617196850);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_invitations`
--

CREATE TABLE `team_invitations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_user`
--

CREATE TABLE `team_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `student_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teacher_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `role_id`, `student_id`, `teacher_id`) VALUES
(1, 'yash', 'yashshah935@gmail.com', NULL, '$2y$10$.MmtCB98rwlLwjAERNUs5u4C.n9EOFUQVfmVqvWVH5NM9U4XkPmr6', NULL, NULL, NULL, NULL, NULL, '2021-03-31 04:34:15', '2021-03-31 04:34:15', 3, NULL, '159'),
(2, 'H', 'hrshah33516@gmail.com', NULL, '$2y$10$2y/zf5KjXRDf7EN9EIdF9ecrlXAou/QcRO394GxzfXnbD6B1qtjLS', NULL, NULL, NULL, NULL, NULL, '2021-03-31 04:37:09', '2021-03-31 04:37:09', 3, NULL, '134'),
(3, 'user1', 'devil33516@gmail.com', NULL, '$2y$10$/.Z2dNzhqJhAmYY0cpEAoup35QkA6MM6/POR28gsltKeKCZo7a4zK', NULL, NULL, NULL, NULL, NULL, '2021-03-31 04:40:04', '2021-03-31 04:40:04', 2, '1234', NULL),
(4, 'shah', 'dars@gmail.com', NULL, '$2y$10$j4jwFGtrVQhaslBcqv8Iue4fcjPb8wC/WB1hROlf6mAPjzy93LuKC', NULL, NULL, NULL, NULL, NULL, '2021-03-31 04:42:26', '2021-03-31 04:42:26', 2, '159753', NULL),
(5, 'user1', 'vil33516@gmail.com', NULL, '$2y$10$ZJhisEekBjnFKvg3GVyDJ.FiqQokTgSjGj7c5IGxzYwmMjDj51eIG', NULL, NULL, NULL, NULL, NULL, '2021-03-31 05:53:28', '2021-03-31 05:53:28', 2, '158456', NULL),
(6, 'Teacher', '19CEUEG051@DDU.AC.IN', NULL, '$2y$10$MxkVC/FEQ4F6to2lQIWe7O4pdm89NWWw.9DhARYPZMf2AxU6Ec4Zm', NULL, NULL, NULL, NULL, NULL, '2021-03-31 06:01:12', '2021-03-31 06:01:12', 3, NULL, '10'),
(7, 'Student', 'student@gmail.com', NULL, '$2y$10$/D.hyVKBSScsd8dPAdA0GOca7yYhjdEHDJaK5L5GL9RHn4WFwwD3u', NULL, NULL, NULL, NULL, NULL, '2021-03-31 06:07:53', '2021-03-31 06:07:53', 2, '15975300', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answer__sheets`
--
ALTER TABLE `answer__sheets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_user_id_index` (`user_id`);

--
-- Indexes for table `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_invitations_team_id_email_unique` (`team_id`,`email`);

--
-- Indexes for table `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answer__sheets`
--
ALTER TABLE `answer__sheets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_invitations`
--
ALTER TABLE `team_invitations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD CONSTRAINT `team_invitations_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
