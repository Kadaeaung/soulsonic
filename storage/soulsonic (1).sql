-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 31, 2020 at 08:02 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `soulsonic`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `name`, `photo`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Solo', 'images/album/1598888304.webp', NULL, NULL, NULL),
(2, 'FEFE', 'images/album/1598891840.jpeg', NULL, '2020-08-31 20:37:20', '2020-08-31 20:37:20'),
(3, 'God is a Woman', 'images/album/1598892708.jpeg', NULL, '2020-08-31 20:51:48', '2020-08-31 20:51:48'),
(4, 'The Light is Coming', 'images/album/1598892749.png', NULL, '2020-08-31 20:52:29', '2020-08-31 20:52:29'),
(6, 'God Plan', 'images/album/1598895698.jpeg', NULL, '2020-08-31 21:41:38', '2020-08-31 21:41:38');

-- --------------------------------------------------------

--
-- Table structure for table `album_artist`
--

CREATE TABLE `album_artist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `album_id` bigint(20) UNSIGNED NOT NULL,
  `artist_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `album_artist`
--

INSERT INTO `album_artist` (`id`, `album_id`, `artist_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(6, 2, 14, NULL, '2020-08-31 20:37:20', '2020-08-31 20:37:20'),
(7, 2, 19, NULL, '2020-08-31 20:37:20', '2020-08-31 20:37:20'),
(8, 3, 2, NULL, '2020-08-31 20:51:48', '2020-08-31 20:51:48'),
(9, 4, 2, NULL, '2020-08-31 20:52:30', '2020-08-31 20:52:30'),
(10, 4, 14, NULL, '2020-08-31 20:52:30', '2020-08-31 20:52:30'),
(13, 6, 21, NULL, '2020-08-31 21:41:38', '2020-08-31 21:41:38');

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`, `photo`, `gender`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Harry', 'images/artist/1598883773.jpeg', 'male', NULL, '2020-08-31 12:30:59', '2020-08-31 18:22:53'),
(2, 'Ariana Grande', 'images/artist/1598890741.jpeg', 'female', NULL, '2020-08-31 13:25:24', '2020-08-31 20:19:01'),
(3, 'Taylor Swift', 'images/artist/1598890773.jpeg', 'Female', NULL, '2020-08-31 20:19:33', '2020-08-31 20:19:33'),
(4, 'XXXTENTACION', 'images/artist/1598890808.jpeg', 'Male', NULL, '2020-08-31 20:20:08', '2020-08-31 20:20:08'),
(5, 'Travis Scott', 'images/artist/1598890842.jpeg', 'Male', NULL, '2020-08-31 20:20:42', '2020-08-31 20:20:42'),
(6, 'Zayn Malik', 'images/artist/1598890864.jpeg', 'Male', NULL, '2020-08-31 20:21:04', '2020-08-31 20:21:04'),
(7, 'The Weeknd', 'images/artist/1598890903.jpeg', 'Male', NULL, '2020-08-31 20:21:43', '2020-08-31 20:21:43'),
(8, 'The Chains Smokers', 'images/artist/1598890934.jpeg', 'Male', NULL, '2020-08-31 20:22:14', '2020-08-31 20:22:14'),
(9, 'Shawn Mendes', 'images/artist/1598890965.jpeg', 'Male', NULL, '2020-08-31 20:22:45', '2020-08-31 20:22:45'),
(10, 'Selena Gomes', 'images/artist/1598890993.jpeg', 'Female', NULL, '2020-08-31 20:23:13', '2020-08-31 20:23:13'),
(11, 'Sam Smit', 'images/artist/1598891019.jpeg', 'Male', NULL, '2020-08-31 20:23:39', '2020-08-31 20:23:39'),
(12, 'Post Maloon', 'images/artist/1598891057.jpeg', 'Male', NULL, '2020-08-31 20:24:17', '2020-08-31 20:24:17'),
(13, 'PitBull', 'images/artist/1598891079.jpeg', 'Male', NULL, '2020-08-31 20:24:39', '2020-08-31 20:24:39'),
(14, 'Nickiminaj', 'images/artist/1598891109.jpeg', 'Female', NULL, '2020-08-31 20:25:09', '2020-08-31 20:25:09'),
(15, 'Maroon5', 'images/artist/1598891134.jpeg', 'Male', NULL, '2020-08-31 20:25:34', '2020-08-31 20:25:34'),
(16, 'Ladygaga', 'images/artist/1598891155.jpeg', 'Female', NULL, '2020-08-31 20:25:55', '2020-08-31 20:25:55'),
(17, 'Katy Pery', 'images/artist/1598891190.jpeg', 'Female', NULL, '2020-08-31 20:26:30', '2020-08-31 20:26:30'),
(18, 'Celine Dion', 'images/artist/1598891229.jpeg', 'Female', NULL, '2020-08-31 20:27:09', '2020-08-31 20:27:09'),
(19, '6IX9INE', 'images/artist/1598891701.jpeg', 'Male', NULL, '2020-08-31 20:35:01', '2020-08-31 20:35:01'),
(20, 'Cardi B', 'images/artist/1598893817.jpeg', 'Female', NULL, '2020-08-31 21:10:17', '2020-08-31 21:10:17'),
(21, 'Drake', 'images/artist/1598895051.jpeg', 'Male', NULL, '2020-08-31 21:30:51', '2020-08-31 21:30:51');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `photo`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'pop', 'images/category/1598890605.jpeg', NULL, '2020-08-31 12:32:18', '2020-08-31 20:16:45'),
(2, 'Country', 'images/category/1598890640.jpeg', NULL, '2020-08-31 20:17:20', '2020-08-31 20:17:20'),
(3, 'EDM', 'images/category/1598890652.jpeg', NULL, '2020-08-31 20:17:32', '2020-08-31 20:17:32'),
(4, 'HipHop', 'images/category/1598890666.jpeg', NULL, '2020-08-31 20:17:46', '2020-08-31 20:17:46'),
(5, 'Rock', 'images/category/1598890684.png', NULL, '2020-08-31 20:18:04', '2020-08-31 20:18:04'),
(6, 'Rap', 'images/category/1598893073.jpeg', NULL, '2020-08-31 20:57:53', '2020-08-31 20:57:53');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `song_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_08_28_165743_create_artists_table', 1),
(5, '2020_08_28_165818_create_albums_table', 1),
(6, '2020_08_28_170332_create_album_artist_table', 1),
(7, '2020_08_28_170547_create_categories_table', 1),
(8, '2020_08_29_091612_create_songs_table', 1),
(9, '2020_08_29_091947_create_favorites_table', 1);

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
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `artist_id` bigint(20) UNSIGNED NOT NULL,
  `album_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `name`, `photo`, `file`, `artist_id`, `album_id`, `category_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 'God is a woman', 'images/song/1598892856.png', 'images/file/1598892856.mp3', 2, 3, 1, NULL, '2020-08-31 20:54:16', '2020-08-31 20:54:16'),
(3, 'Breathin', 'images/song/1598893004.jpeg', 'images/file/1598893004.mp3', 2, 3, 1, NULL, '2020-08-31 20:56:44', '2020-08-31 20:56:44'),
(4, 'No Tears Lets to cry', 'images/song/1598893178.png', 'images/file/1598893178.mp3', 2, 3, 1, NULL, '2020-08-31 20:59:38', '2020-08-31 20:59:38'),
(5, 'Thank U Next', 'images/song/1598893326.jpeg', 'images/file/1598893326.mp3', 2, 3, 1, NULL, '2020-08-31 21:02:06', '2020-08-31 21:02:06'),
(6, 'The Light Is Coming', 'images/song/1598893419.jpeg', 'images/file/1598893419.mp3', 14, 4, 1, NULL, '2020-08-31 21:03:39', '2020-08-31 21:03:39'),
(7, 'FEFE', 'images/song/1598893592.jpeg', 'images/file/1598893592.mp3', 19, 2, 6, NULL, '2020-08-31 21:06:32', '2020-08-31 21:06:32'),
(8, 'God Plan', 'images/song/1598895846.jpeg', 'images/file/1598895846.mp3', 21, 6, 4, NULL, '2020-08-31 21:44:06', '2020-08-31 21:44:06'),
(9, 'In My Felling', 'images/song/1598896052.jpeg', 'images/file/1598896052.mp3', 21, 6, 4, NULL, '2020-08-31 21:47:32', '2020-08-31 21:47:32'),
(10, 'Nice For What', 'images/song/1598896245.jpeg', 'images/file/1598896245.mp3', 21, 6, 4, NULL, '2020-08-31 21:50:45', '2020-08-31 21:50:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `album_artist`
--
ALTER TABLE `album_artist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `album_artist_album_id_foreign` (`album_id`),
  ADD KEY `album_artist_artist_id_foreign` (`artist_id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_song_id_foreign` (`song_id`);

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
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `songs_artist_id_foreign` (`artist_id`),
  ADD KEY `songs_album_id_foreign` (`album_id`),
  ADD KEY `songs_category_id_foreign` (`category_id`);

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
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `album_artist`
--
ALTER TABLE `album_artist`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `album_artist`
--
ALTER TABLE `album_artist`
  ADD CONSTRAINT `album_artist_album_id_foreign` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `album_artist_artist_id_foreign` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_song_id_foreign` FOREIGN KEY (`song_id`) REFERENCES `songs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `songs`
--
ALTER TABLE `songs`
  ADD CONSTRAINT `songs_album_id_foreign` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `songs_artist_id_foreign` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `songs_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
