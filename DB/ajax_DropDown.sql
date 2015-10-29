-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2015 at 03:29 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `eloquent_relationship`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE IF NOT EXISTS `albums` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `artist_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `name`, `artist_id`, `created_at`, `updated_at`) VALUES
(5, 'Intizaar', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Yaarana', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Azaar', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Wadaan Watan', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Padshah', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Bad Naseeb', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `album_listener`
--

CREATE TABLE IF NOT EXISTS `album_listener` (
`id` int(11) NOT NULL,
  `album_id` int(10) unsigned NOT NULL,
  `listener_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `album_listener`
--

INSERT INTO `album_listener` (`id`, `album_id`, `listener_id`) VALUES
(9, 5, 7),
(10, 5, 8),
(11, 6, 7),
(12, 8, 8),
(13, 10, 7);

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE IF NOT EXISTS `artists` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`, `created_at`, `updated_at`) VALUES
(4, 'Farhad Darya', '2015-01-25 18:04:55', '2015-01-25 18:04:55'),
(5, 'Saarban', '2015-01-25 18:05:22', '2015-01-25 18:05:22'),
(6, 'Daud Hanif', '2015-01-25 18:06:55', '2015-01-25 18:06:55');

-- --------------------------------------------------------

--
-- Table structure for table `listeners`
--

CREATE TABLE IF NOT EXISTS `listeners` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `listeners`
--

INSERT INTO `listeners` (`id`, `name`, `created_at`, `updated_at`) VALUES
(7, 'Hashmatullah', '2015-01-25 18:16:01', '2015-01-25 18:16:01'),
(8, 'Obaid', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2015_01_20_074828_create_tables', 1),
('2014_10_12_000000_create_users_table', 2),
('2014_10_12_100000_create_password_resets_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE IF NOT EXISTS `photos` (
  `id` int(10) NOT NULL,
  `path` varchar(50) NOT NULL,
  `imageable_id` int(10) unsigned NOT NULL,
  `imageable_type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `path`, `imageable_id`, `imageable_type`) VALUES
(1, 'https://avatars1.githubusercontent.com/u/10204499?', 5, 'App\\Artist'),
(2, 'https://upload.wikimedia.org/wikipedia/en/b/b3/Rou', 9, 'Album');

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE IF NOT EXISTS `songs` (
`id` int(10) NOT NULL,
  `album_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(122) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `album_id`, `name`, `date`) VALUES
(1, 5, 'akh sare mangai', '2015-10-10 09:37:06'),
(2, 5, 'wada jenai', '2015-10-10 09:37:06'),
(3, 10, 'wai de darya ghag de paktya pa dag ke', '2015-10-14 10:58:10'),
(4, 10, 'janaana rasha kana ', '2015-10-14 10:58:10'),
(5, 8, 'yaw akhere dedan', '2015-10-14 10:58:10'),
(6, 8, 'pekhawar kho pekhawar de kana', '2015-10-14 10:58:10'),
(7, 9, 'janan bewafa shalo', '2015-10-14 10:58:10'),
(8, 5, 'nazawale laila sa shwa', '2015-10-14 10:58:10'),
(9, 10, 'daa ghroona ghroona afghanistan deee.', '2015-10-14 10:58:10'),
(10, 6, 'janana rasha', '2015-10-15 02:37:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `provider_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `provider_id`, `avatar`, `provider`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'hashmat', 'afghan.waziri0@gmail.com', '$2y$10$W6JVRyXR.qvSNASNowyxnOZ.DMWUhXhi0Zvod5oyMKeBX0GwZkiHS', '', '', '', NULL, '2015-10-13 21:28:38', '2015-10-13 21:28:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
 ADD PRIMARY KEY (`id`), ADD KEY `albums_artist_fk` (`artist_id`);

--
-- Indexes for table `album_listener`
--
ALTER TABLE `album_listener`
 ADD PRIMARY KEY (`id`), ADD KEY `album_listener_album_id_foreign` (`album_id`), ADD KEY `album_listener_listner_id_foreign` (`listener_id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listeners`
--
ALTER TABLE `listeners`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
 ADD KEY `password_resets_email_index` (`email`), ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
 ADD PRIMARY KEY (`id`), ADD KEY `album_id` (`album_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_email_unique` (`email`), ADD UNIQUE KEY `users_provider_id_unique` (`provider_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `album_listener`
--
ALTER TABLE `album_listener`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `listeners`
--
ALTER TABLE `listeners`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `albums`
--
ALTER TABLE `albums`
ADD CONSTRAINT `albums_artist_fk` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `album_listener`
--
ALTER TABLE `album_listener`
ADD CONSTRAINT `album_listener_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`),
ADD CONSTRAINT `album_listener_listener_id_foreign` FOREIGN KEY (`listener_id`) REFERENCES `listeners` (`id`);

--
-- Constraints for table `songs`
--
ALTER TABLE `songs`
ADD CONSTRAINT `songs_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
