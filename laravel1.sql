-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2018 at 11:27 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel1`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `created_at`, `updated_at`) VALUES
(2, 'Sports', '2018-10-01 07:19:39', '2018-10-01 07:19:39'),
(3, 'Music', '2018-10-01 07:20:12', '2018-10-01 07:20:12'),
(4, 'Entertainment', '2018-10-01 07:20:34', '2018-10-01 07:20:34'),
(5, 'Politics', '2018-10-01 07:25:58', '2018-10-01 07:25:58'),
(6, 'Technology', '2018-10-01 07:26:03', '2018-10-01 07:26:03'),
(7, 'Animals', '2018-10-01 07:26:15', '2018-10-01 07:26:15'),
(8, 'Business', '2018-10-01 07:26:24', '2018-10-01 07:26:24');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'Nice', '2018-10-13 08:49:45', '2018-10-13 08:49:45'),
(2, 1, 1, 'Raplah jingga', '2018-10-13 09:08:41', '2018-10-13 09:08:41'),
(3, 1, 1, 'Ooooo sometimes', '2018-10-13 09:09:16', '2018-10-13 09:09:16');

-- --------------------------------------------------------

--
-- Table structure for table `dislikes`
--

CREATE TABLE `dislikes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dislikes`
--

INSERT INTO `dislikes` (`id`, `user_id`, `post_id`, `email`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'hzq.abdullah@gmail.com', '2018-10-13 08:24:28', '2018-10-13 08:24:28');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `post_id`, `email`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'hzq.abdullah@gmail.com', '2018-10-13 08:14:02', '2018-10-13 08:14:02');

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
(3, '2018_09_30_150720_create_posts_table', 2),
(4, '2018_09_30_150829_create_profile_table', 2),
(5, '2018_09_30_151032_create_category_table', 2),
(6, '2018_09_30_151650_create_comments_table', 2),
(7, '2018_09_30_151714_create_likes_table', 2),
(8, '2018_09_30_151733_create_dislikes_table', 2);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `post_title`, `post_body`, `post_image`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'You and Me', 'Hold my gun and watch the door\r\nPick the lock and cut the phone\r\nKeep your head up love\r\nAin\'t nobody here can stop us\r\nGrab the bags when sirens call\r\nWe\'re out the window through the yard\r\nKeep it locked up tight\r\nAin\'t nobody here can stop us\r\nBaby I\'ve had the same dream\r\nWhere I wake up\r\nWondering what it really means\r\nIf the world came running down\r\nIf it was\r\nYou and me against the world\r\nBaby they\'d cut us under but we\'ll take whatever we want\r\nIf it was\r\nYou and me against the world\r\nYou keep the car, I\'ll get the cash \r\nWe\'ll take the money and run', 'http://localhost/laravel1/public/posts/gogreen.png', 3, '2018-10-05 02:12:51', '2018-10-13 06:44:38'),
(2, 1, 'All You Need Is Love', 'I\'m feeling, never letting go\r\nOh, you take me, somewhere off the globe\r\nDo you feel it? It\'s like the first time\r\nI realized that all you need is love\r\n\r\nYeah, I\'m feeling, never letting go\r\nOh you take me, somewhere off the globe\r\nDo you feel it? It\'s like the first time\r\nI realized that all you need is love', 'http://localhost/laravel1/public/posts/slider2.jpg', 3, '2018-10-13 06:49:31', '2018-10-13 06:49:31'),
(3, 1, 'Sunset Bears', 'Tryna set myself up for the win\r\nSo people got a dream that\'s so much bigger than the diamond ring\r\nSo gimme love gimme love gimme please give me piece of mind\r\nI know there\'s enough to a star than I need a little help with mine\r\nCalifornia, don\'t let me down\r\nSeas of golden\r\nBut there\'s trouble all around\r\nSunset Jesus, came to me\r\nHe once was a waiter now he\'s a singer\r\nMaking money on the street', 'http://localhost/laravel1/public/posts/Iphone.png', 6, '2018-10-13 06:52:51', '2018-10-13 06:52:51'),
(4, 1, 'Leave The Night On', 'Girl, you got the beat right, killin\' in your Levis\r\nHigh on your loving\'s got me buzzin\' like a streetlight\r\nIt\'s still early out in Cali, baby, don\'t you wanna rally again\r\nWe\'ll find a road with no name, lay back in the slow lane\r\nThe sky is dropping Jupiter around us like some old train\r\nWe\'ll be rolling down the windows, I bet you we\'re catchin\' our second wind\r\nWe don\'t have to go home, we can leave the night on\r\nWe can leave the night on\r\nThe sun\'ll steal the magic from us soon\r\nSo let\'s take one more trip around the moon', 'http://localhost/laravel1/public/posts/slider3.jpg', 3, '2018-10-13 06:55:18', '2018-10-13 06:55:18'),
(5, 1, 'Dear Father', 'I addressed this letter to \"dear father\"\r\nI know you as complete unknown\r\nI guess it\'s better you don\'t bother\r\nAll our truth should be left alone\r\nBe left alone...\r\nBe left alone...\r\nI learned the things you never showed me\r\nTook the chances you\'d have blown\r\nAnd to this day the one and only\r\nYou remain a complete unknown', 'http://localhost/laravel1/public/posts/shoe.png', 8, '2018-10-13 06:56:41', '2018-10-13 06:56:41'),
(6, 1, 'Some Say', 'Some say we\'re never meant to grow up\r\nI\'m sure they never knew enough\r\nI know the pressures won\'t go away\r\nIt\'s too late\r\nFind out the difference somehow\r\nIt\'s too late to even have faith\r\nDon\'t think things will ever change\r\nYou must be dreaming\r\nThink before you make up your mind\r\nYou don\'t seem to realize\r\nI can do this on my own\r\nAnd if I fall I\'ll take it all\r\nIt\'s so easy after all', 'http://localhost/laravel1/public/posts/motor.jpg', 2, '2018-10-13 06:57:16', '2018-10-13 06:57:16');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_pic` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `name`, `designation`, `profile_pic`, `created_at`, `updated_at`) VALUES
(1, 1, 'Haziq Abdullah', 'Programmer', 'http://127.0.0.1/laravel1/public/uploads/Profile Photo.jpeg', '2018-10-01 08:24:27', '2018-10-01 08:24:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Haziq Abdullah', 'hzq.abdullah@gmail.com', '$2y$10$92wMzOS.NEvOmpaGgYg/eOxsj.yi9jcUR45t22wPuVCuw23G5peKq', '62rONCiUZ5XLwzR9UPEnhmGBe6t0avi2kHRKe0sSbTnXd6UZOe0TVySmyclC', '2018-09-30 06:39:36', '2018-09-30 06:39:36'),
(2, 'Randy Orton', 'randyorton@gmail.com', '$2y$10$5WCy/Rxs5NYs054p9HF/1OS1yPiINAc0hwBnpw7BS.hwUsWvgS.mO', NULL, '2018-10-13 10:12:50', '2018-10-13 10:12:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dislikes`
--
ALTER TABLE `dislikes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `dislikes`
--
ALTER TABLE `dislikes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
