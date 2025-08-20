-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2025 at 10:09 PM
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
-- Database: `tradepro`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `username` varchar(40) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `username`, `email_verified_at`, `image`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admins', 'admin@vura.pro', 'admin@vura.pro', NULL, '6624ee96387ea1713696406.png', '$2y$12$RIWdCrPMq8xozQFDmwhnYe9WaLI9P2eMDk2Mnyy6HnYx82vkZfdX.', NULL, NULL, '2025-04-22 07:52:49');

-- --------------------------------------------------------

--
-- Table structure for table `admin_notifications`
--

CREATE TABLE `admin_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `click_url` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_notifications`
--

INSERT INTO `admin_notifications` (`id`, `user_id`, `title`, `is_read`, `click_url`, `created_at`, `updated_at`) VALUES
(1, 2, 'New member registered', 0, '/admin/users/detail/2', '2025-01-20 17:14:03', '2025-01-20 17:14:03'),
(2, 3, 'New member registered', 0, '/admin/users/detail/3', '2025-01-20 23:17:02', '2025-01-20 23:17:02'),
(3, 3, 'New withdraw request from ncjckjx', 0, '/admin/withdraw/details/2', '2025-02-01 03:24:56', '2025-02-01 03:24:56'),
(4, 3, 'New withdraw request from ncjckjx', 0, '/admin/withdraw/details/3', '2025-02-01 09:32:34', '2025-02-01 09:32:34'),
(5, 3, 'New withdraw request from ncjckjx', 0, '/admin/withdraw/details/4', '2025-02-01 09:38:47', '2025-02-01 09:38:47'),
(6, 3, 'New withdraw request from ncjckjx', 0, '/admin/withdraw/details/5', '2025-02-01 09:41:27', '2025-02-01 09:41:27'),
(7, 3, 'New withdraw request from ncjckjx', 0, '/admin/withdraw/details/6', '2025-02-01 09:45:55', '2025-02-01 09:45:55'),
(8, 3, 'New withdraw request from ncjckjx', 0, '/admin/withdraw/details/7', '2025-02-01 09:54:40', '2025-02-01 09:54:40'),
(9, 3, 'New withdraw request from ncjckjx', 0, '/admin/withdraw/details/8', '2025-02-01 10:03:36', '2025-02-01 10:03:36'),
(10, 3, 'New withdraw request from ncjckjx', 0, '/admin/withdraw/details/9', '2025-02-01 17:45:13', '2025-02-01 17:45:13'),
(11, 3, 'New withdraw request from ncjckjx', 0, '/admin/withdraw/details/10', '2025-02-05 12:58:01', '2025-02-05 12:58:01'),
(12, 3, 'New withdraw request from ncjckjx', 0, '/admin/withdraw/details/11', '2025-02-05 13:20:40', '2025-02-05 13:20:40'),
(13, 4, 'New member registered', 0, '/admin/users/detail/4', '2025-02-06 14:49:04', '2025-02-06 14:49:04'),
(14, 1, 'New withdraw request from botuser', 0, '/admin/withdraw/details/12', '2025-02-16 23:26:34', '2025-02-16 23:26:34'),
(15, 5, 'New member registered', 0, '/admin/users/detail/5', '2025-04-08 21:37:42', '2025-04-08 21:37:42'),
(16, 5, 'New withdraw request from danrushney', 0, '/admin/withdraw/details/13', '2025-04-19 06:06:59', '2025-04-19 06:06:59'),
(17, 6, 'New member registered', 0, '/admin/users/detail/6', '2025-04-21 21:40:43', '2025-04-21 21:40:43'),
(18, 7, 'New member registered', 0, '/admin/users/detail/7', '2025-04-21 21:46:43', '2025-04-21 21:46:43'),
(19, 8, 'New member registered', 0, '/admin/users/detail/8', '2025-04-21 21:48:59', '2025-04-21 21:48:59'),
(20, 8, 'New withdraw request from vura', 0, '/admin/withdraw/details/14', '2025-04-22 12:42:22', '2025-04-22 12:42:22'),
(21, 8, 'New withdraw request from vura', 0, '/admin/withdraw/details/15', '2025-04-23 21:14:35', '2025-04-23 21:14:35'),
(22, 9, 'New member registered', 0, '/admin/users/detail/9', '2025-08-19 11:17:31', '2025-08-19 11:17:31'),
(23, 10, 'New member registered', 0, '/admin/users/detail/10', '2025-08-19 13:30:13', '2025-08-19 13:30:13');

-- --------------------------------------------------------

--
-- Table structure for table `admin_password_resets`
--

CREATE TABLE `admin_password_resets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `token` varchar(40) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `asset_trades`
--

CREATE TABLE `asset_trades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `trade_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `assets` varchar(92) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `amount` decimal(15,8) NOT NULL,
  `action` varchar(112) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `duration` varchar(111) NOT NULL,
  `loss` varchar(92) NOT NULL,
  `profit` varchar(110) NOT NULL,
  `status` varchar(111) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `asset_trades`
--

INSERT INTO `asset_trades` (`id`, `user_id`, `trade_type`, `assets`, `amount`, `action`, `duration`, `loss`, `profit`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 'Stocks', 'ETH', 6000000.00000000, '', '2 minutes', '', '', 'complete', '2025-01-25 09:57:12', '2025-01-25 09:57:12'),
(2, 3, 'Crypto', 'LINK', 300.00000000, '', '5 minutes', '', '', 'open', '2025-01-25 10:02:52', '2025-01-25 10:02:52'),
(3, 3, 'Stocks', 'AACG', 455.00000000, 'sell', '2 minutes', '6800', '32100', 'open', '2025-02-13 08:47:07', '2025-02-13 08:47:07'),
(4, 3, 'Stocks', 'ASST', 45.00000000, 'sell', '2 minutes', '6800', '32100', 'open', '2025-02-13 09:52:16', '2025-02-13 09:52:16'),
(5, 3, 'Forex', 'GHS', 566.00000000, 'sell', '2 minutes', '6800', '32100', 'open', '2025-02-13 10:03:55', '2025-02-13 10:03:55'),
(6, 3, 'Crypto', 'DOT', 766.00000000, 'sell', '5 minutes', '68', '32', 'complete', '2025-02-13 10:42:32', '2025-02-13 10:42:32'),
(7, 3, 'Stocks', 'BBLGW', 45.00000000, 'buy', '2 minutes', '800', '32100', 'closed', '2025-02-13 10:43:37', '2025-02-13 10:43:37'),
(8, 8, 'Crypto', 'BTC', 100.00000000, 'buy', '2', '6800', '32100', 'open', '2025-04-23 20:54:53', '2025-04-23 20:54:53'),
(9, 8, 'Crypto', 'BTC', 100.00000000, 'buy', '2', '6800', '32100', 'open', '2025-04-23 20:58:12', '2025-04-23 20:58:12'),
(10, 8, 'Stocks', 'BTC', 3000.00000000, 'buy', '2', '6800', '32100', 'open', '2025-08-13 10:02:13', '2025-08-13 10:02:13'),
(11, 8, 'Crypto', 'BTC', 20.00000000, 'buy', '5', '6801', '32101', 'open', '2025-08-16 10:25:03', '2025-08-16 10:25:03'),
(12, 8, 'crypto', 'BTC', 20.00000000, 'buy', '2', '6800', '32100', 'open', '2025-08-18 23:08:06', '2025-08-18 23:08:06'),
(13, 8, 'crypto', 'BTC', 0.00002000, 'buy', '2', '6800', '32100', 'open', '2025-08-18 23:09:26', '2025-08-18 23:09:26'),
(14, 8, 'crypto', 'BTC', 20.00000000, 'buy', '2', '6800', '32100', 'open', '2025-08-18 23:17:54', '2025-08-18 23:17:54'),
(15, 8, 'crypto', 'BTC', 10.00000000, 'buy', '2', '6800', '32100', 'open', '2025-08-18 23:18:47', '2025-08-18 23:18:47'),
(16, 8, 'crypto', 'BTC', 20.00000000, 'buy', '2', '6800', '32100', 'open', '2025-08-18 23:23:11', '2025-08-18 23:23:11');

-- --------------------------------------------------------

--
-- Table structure for table `bot_configs`
--

CREATE TABLE `bot_configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `max_buy_order` int(11) NOT NULL DEFAULT 0,
  `buy_min_decrease` int(11) NOT NULL DEFAULT 0,
  `buy_max_decrease` int(11) NOT NULL DEFAULT 0,
  `buy_order_amount_range` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `buy_matching_chance` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `buy_matching_price` decimal(5,2) NOT NULL DEFAULT 0.00,
  `buy_matching_with_bot` tinyint(1) NOT NULL DEFAULT 0,
  `buy_order_remain_hours` int(11) NOT NULL DEFAULT 0,
  `max_sell_order` int(11) NOT NULL DEFAULT 0,
  `sell_min_increase` int(11) NOT NULL DEFAULT 0,
  `sell_max_increase` int(11) NOT NULL DEFAULT 0,
  `sell_order_amount_range` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `sell_matching_chance` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `sell_matching_price` decimal(5,2) NOT NULL DEFAULT 0.00,
  `sell_matching_with_bot` tinyint(1) NOT NULL DEFAULT 0,
  `sell_order_remain_hours` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bot_configs`
--

INSERT INTO `bot_configs` (`id`, `max_buy_order`, `buy_min_decrease`, `buy_max_decrease`, `buy_order_amount_range`, `buy_matching_chance`, `buy_matching_price`, `buy_matching_with_bot`, `buy_order_remain_hours`, `max_sell_order`, `sell_min_increase`, `sell_max_increase`, `sell_order_amount_range`, `sell_matching_chance`, `sell_matching_price`, `sell_matching_with_bot`, `sell_order_remain_hours`, `created_at`, `updated_at`) VALUES
(1, 5, 1, 2, 10.00000000, 75.00000000, 50.00, 0, 50, 5, 1, 2, 10.00000000, 75.00000000, 50.00, 0, 50, '2024-03-21 02:03:38', '2024-11-20 07:03:37');

-- --------------------------------------------------------

--
-- Table structure for table `coin_pairs`
--

CREATE TABLE `coin_pairs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `listed_market_name` text DEFAULT NULL,
  `symbol` text DEFAULT NULL,
  `market_id` int(11) NOT NULL DEFAULT 0,
  `coin_id` int(11) NOT NULL DEFAULT 0,
  `price` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `minimum_buy_amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `maximum_buy_amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `minimum_sell_amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `maximum_sell_amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `percent_charge_for_sell` decimal(5,2) NOT NULL DEFAULT 0.00,
  `percent_charge_for_buy` decimal(5,2) NOT NULL DEFAULT 0.00,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=enable,0=disable',
  `is_default` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1=yes,0=no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `copy`
--

CREATE TABLE `copy` (
  `id` int(11) NOT NULL,
  `user_id` varchar(110) NOT NULL,
  `expert_id` varchar(100) NOT NULL,
  `created_at` varchar(111) DEFAULT NULL,
  `updated_at` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `copy`
--

INSERT INTO `copy` (`id`, `user_id`, `expert_id`, `created_at`, `updated_at`) VALUES
(0, '1', '14', '2025-02-19 21:36:28', '2025-02-19 21:36:28'),
(0, '5', '18', '2025-04-09 12:27:11', '2025-04-09 12:27:11'),
(0, '8', '14', '2025-04-22 00:41:01', '2025-04-22 00:41:01'),
(0, '8', '14', '2025-04-22 07:53:46', '2025-04-22 07:53:46'),
(0, '8', '14', '2025-08-13 11:28:39', '2025-08-13 11:28:39'),
(0, '8', '14', '2025-08-13 11:28:40', '2025-08-13 11:28:40'),
(0, '8', '18', '2025-08-16 06:05:46', '2025-08-16 06:05:46'),
(0, '8', '18', '2025-08-16 06:05:52', '2025-08-16 06:05:52');

-- --------------------------------------------------------

--
-- Table structure for table `copy_experts`
--

CREATE TABLE `copy_experts` (
  `id` int(11) NOT NULL,
  `win_rate` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `profit` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `wins` varchar(255) DEFAULT NULL,
  `loss` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `copy_experts`
--

INSERT INTO `copy_experts` (`id`, `win_rate`, `name`, `profit`, `image`, `wins`, `loss`, `created_at`, `updated_at`) VALUES
(14, '95', 'Tim Bohen', '98', 'trade_asset_images/sdCDQsCtvrEY2cSvJpXMD1PPh62UahaGlGNzQrMW.jpg', '130', '21', '2024-02-02 07:50:57', '2024-02-02 07:50:57'),
(18, '95', 'Conor Kenny', '90', 'trade_asset_images/kkEBMwDoBga2qJdrG58OHofPj6i7LP3YorEAW0V3.jpg', '98', '21', '2024-04-21 04:25:07', '2024-04-21 04:25:07'),
(19, '981', 'Tim Bohen', '95', 'trade_asset_images/xZYyMyw6ZtGNUxaD7srKCtS0nVMisHjRYw7ajZG4.jpg', '97', '27', '2024-05-13 03:50:18', '2024-05-13 03:50:18'),
(20, '95', 'eh', '95', 'trade_asset_images/wD7x30ejtrLAdgOvE5A8WssSs90vfas9VhXCf4ei.jpg', '98', '24', '2024-05-25 12:51:00', '2024-05-25 12:51:00'),
(5, '95', 'Warrior Trading', '75', 'trade_asset_images/qu0GJYSKY5dx0dMM4cRuQcureEKsyg5m4QrrJQ6p.jpg', '121', '10', '2023-10-14 19:15:12', '2023-10-14 19:15:12'),
(6, '85', 'Tori Trades', '55', 'trade_asset_images/LttDby0aFJN09qWkvyWXNsmGQ3Y1XYXwzPfCeqXh.jpg', '100', '15', '2023-10-14 19:23:34', '2023-10-14 19:23:34'),
(7, '81', 'Humbled Trader', '60', 'trade_asset_images/pCJ2nXZDW1tCk5jzZJRHWoKSV9a2HNJG6dbW7SKg.jpg', '99', '15', '2023-10-14 19:26:21', '2023-10-14 19:26:21'),
(8, '88', 'Core Investing', '25', 'trade_asset_images/JB8icodm1Z8TLbAl1RKkl9v8JjnzYzpvHROl1URh.jpg', '154', '21', '2023-10-17 14:45:47', '2023-10-17 14:45:47'),
(12, '90', 'Janet Hauiti', '85', 'trade_asset_images/ogbS5xWOIdefLIgiPP0XSHwa0Y74dVCfwV3aPYdV.jpg', '107', '10', '2023-11-09 06:29:42', '2023-11-09 06:29:42'),
(13, '90', 'kianhoss', '95', 'trade_asset_images/DJjhGLcOct7lQASw4mOIsWSTduFsyV5g4jqR1ZlI.jpg', '110', '20', '2024-01-12 15:43:53', '2024-01-12 15:43:53'),
(22, 'Hawaii', 'Arnoldo Reichert', 'Odit aut aut sunt.', 'images/LnLosRfsfwcg299LsGkj8yXUE1X7ACkJhgxxdXfY.jpg', 'voluptate aspernatur adipisci', 'Illum mollitia esse dolor maiores quaerat pariatur quis ipsam asperiores.', '2025-03-02 13:32:01', '2025-03-02 13:32:01');

-- --------------------------------------------------------

--
-- Table structure for table `copy_trades`
--

CREATE TABLE `copy_trades` (
  `id` int(11) NOT NULL,
  `win_rate` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `profit` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `wins` varchar(255) DEFAULT NULL,
  `loss` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cron_jobs`
--

CREATE TABLE `cron_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `alias` varchar(40) DEFAULT NULL,
  `action` text DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `cron_schedule_id` int(11) NOT NULL DEFAULT 0,
  `next_run` datetime DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `is_running` tinyint(1) NOT NULL DEFAULT 1,
  `is_default` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cron_jobs`
--

INSERT INTO `cron_jobs` (`id`, `name`, `alias`, `action`, `url`, `cron_schedule_id`, `next_run`, `last_run`, `is_running`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Update Crypto', 'update_crypto', '[\"App\\\\Http\\\\Controllers\\\\CronController\", \"crypto\"]', NULL, 2, '2025-08-13 11:00:01', '2025-08-13 10:59:01', 1, 1, '2023-06-21 05:29:14', '2025-08-13 09:59:01'),
(2, 'Update Coin Pair', 'coin_pair', '[\"App\\\\Http\\\\Controllers\\\\CronController\", \"market\"]', NULL, 2, '2025-08-13 11:00:01', '2025-08-13 10:59:01', 1, 1, '2023-06-21 05:29:14', '2025-08-13 09:59:01'),
(3, 'Trade', 'trade', '[\"App\\\\Http\\\\Controllers\\\\CronController\", \"trade\"]', NULL, 2, '2025-08-13 11:00:01', '2025-08-13 10:59:01', 1, 1, '2023-06-21 05:29:14', '2025-08-13 09:59:01'),
(4, 'Bot Order', 'bot_order', '[\"App\\\\Http\\\\Controllers\\\\CronController\", \"botOrder\"]', NULL, 2, '2025-08-13 11:00:01', '2025-08-13 10:59:01', 1, 1, '2023-06-21 05:29:14', '2025-08-13 09:59:01'),
(5, 'Profit Lose Calculation', 'profit_loss_calculation', '[\"App\\\\Http\\\\Controllers\\\\CronController\", \"profitLoseCalculation\"]', NULL, 2, '2025-08-13 11:00:02', '2025-08-13 10:59:02', 1, 1, '2023-06-21 05:29:14', '2025-08-13 09:59:02'),
(6, 'Phase Completion', 'phase_completion', '[\"App\\\\Http\\\\Controllers\\\\CronController\", \"checkPhaseCompletion\"]', NULL, 2, '2025-08-13 11:00:02', '2025-08-13 10:59:02', 1, 1, '2023-06-21 05:29:14', '2025-08-13 09:59:02'),
(7, 'Cancel Bot Order', 'cancel_bot_order', '[\"App\\\\Http\\\\Controllers\\\\CronController\", \"cancelBotOrder\"]', NULL, 2, '2025-08-13 11:00:02', '2025-08-13 10:59:02', 1, 1, '2023-06-21 05:29:14', '2025-08-13 09:59:02');

-- --------------------------------------------------------

--
-- Table structure for table `cron_job_logs`
--

CREATE TABLE `cron_job_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cron_job_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `start_at` datetime DEFAULT NULL,
  `end_at` datetime DEFAULT NULL,
  `duration` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `error` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cron_job_logs`
--

INSERT INTO `cron_job_logs` (`id`, `cron_job_id`, `start_at`, `end_at`, `duration`, `error`, `created_at`, `updated_at`) VALUES
(1, 1, '2025-02-07 10:23:35', '2025-02-07 10:23:42', 8, 'Pusher error: cURL error 6: Could not resolve host: api--------.pusher.com (see https://curl.haxx.se/libcurl/c/libcurl-errors.html) for https://api--------.pusher.com/apps/-----------/events?auth_key=-----------&auth_timestamp=1738923821&auth_version=1.0&body_md5=419aa99456c753b432d90d30fa8a2129&auth_signature=870fb7105d38632bb3f015bb25d38db3d7e9364263ccbb2161db84f90927540f.', '2025-02-07 09:23:43', '2025-02-07 09:23:43'),
(2, 2, '2025-02-07 10:23:43', '2025-02-07 10:23:43', 0, 'Pusher error: cURL error 6: Could not resolve host: api--------.pusher.com (see https://curl.haxx.se/libcurl/c/libcurl-errors.html) for https://api--------.pusher.com/apps/-----------/events?auth_key=-----------&auth_timestamp=1738923823&auth_version=1.0&body_md5=419aa99456c753b432d90d30fa8a2129&auth_signature=01070bf7027d74407f37e35153719decf218e0faee827d080f23f21db3060f92.', '2025-02-07 09:23:43', '2025-02-07 09:23:43'),
(3, 3, '2025-02-07 10:23:43', '2025-02-07 10:23:43', 0, 'Pusher error: cURL error 6: Could not resolve host: api--------.pusher.com (see https://curl.haxx.se/libcurl/c/libcurl-errors.html) for https://api--------.pusher.com/apps/-----------/events?auth_key=-----------&auth_timestamp=1738923823&auth_version=1.0&body_md5=1de715babbf12e75e7bc8be92a514e41&auth_signature=f78bca60249d145e5c3ab6079bed4a32ed4b2b1aa590111a04842223a94aa2c7.', '2025-02-07 09:23:43', '2025-02-07 09:23:43'),
(4, 4, '2025-02-07 10:23:43', '2025-02-07 10:23:43', 0, NULL, '2025-02-07 09:23:43', '2025-02-07 09:23:43'),
(5, 5, '2025-02-07 10:23:43', '2025-02-07 10:23:43', 0, NULL, '2025-02-07 09:23:43', '2025-02-07 09:23:43'),
(6, 6, '2025-02-07 10:23:43', '2025-02-07 10:23:43', 0, NULL, '2025-02-07 09:23:43', '2025-02-07 09:23:43'),
(7, 7, '2025-02-07 10:23:43', '2025-02-07 10:23:43', 0, NULL, '2025-02-07 09:23:43', '2025-02-07 09:23:43'),
(8, 1, '2025-04-22 07:53:21', '2025-04-22 07:53:21', 0, 'Pusher error: cURL error 6: Could not resolve host: api--------.pusher.com (see https://curl.haxx.se/libcurl/c/libcurl-errors.html) for https://api--------.pusher.com/apps/-----------/events?auth_key=-----------&auth_timestamp=1745308401&auth_version=1.0&body_md5=261c2a1a4fbc6f4e9afd5f227f3a6697&auth_signature=324e9789436a315b06ee5b4098f8f651d11ad41e0a75ad9cf401bec73958eece.', '2025-04-22 07:53:21', '2025-04-22 07:53:21'),
(9, 1, '2025-08-13 10:58:58', '2025-08-13 10:59:01', 3, 'Pusher error: cURL error 6: Could not resolve host: api--------.pusher.com (see https://curl.haxx.se/libcurl/c/libcurl-errors.html) for https://api--------.pusher.com/apps/-----------/events?auth_key=-----------&auth_timestamp=1755082741&auth_version=1.0&body_md5=200d68921abd17c73478d234fd9c1d48&auth_signature=f66eea9eb66eb2bf00b55d5dfed549929dd6a0e16c3d09a9fc369c91cbf835a1.', '2025-08-13 09:59:01', '2025-08-13 09:59:01'),
(10, 2, '2025-08-13 10:59:01', '2025-08-13 10:59:01', 0, 'Pusher error: cURL error 6: Could not resolve host: api--------.pusher.com (see https://curl.haxx.se/libcurl/c/libcurl-errors.html) for https://api--------.pusher.com/apps/-----------/events?auth_key=-----------&auth_timestamp=1755082741&auth_version=1.0&body_md5=419aa99456c753b432d90d30fa8a2129&auth_signature=bcd7e5dc0be3f3b4aa6cc365a61005dfaa2cd424af74239762bbdef097960601.', '2025-08-13 09:59:01', '2025-08-13 09:59:01'),
(11, 3, '2025-08-13 10:59:01', '2025-08-13 10:59:01', 0, 'Pusher error: cURL error 6: Could not resolve host: api--------.pusher.com (see https://curl.haxx.se/libcurl/c/libcurl-errors.html) for https://api--------.pusher.com/apps/-----------/events?auth_key=-----------&auth_timestamp=1755082741&auth_version=1.0&body_md5=1de715babbf12e75e7bc8be92a514e41&auth_signature=8a78714c5e1680423eeac25060a6ae414545b5a8b93a6adfe92c18051c9ab094.', '2025-08-13 09:59:01', '2025-08-13 09:59:01'),
(12, 4, '2025-08-13 10:59:01', '2025-08-13 10:59:01', 0, NULL, '2025-08-13 09:59:01', '2025-08-13 09:59:01'),
(13, 5, '2025-08-13 10:59:02', '2025-08-13 10:59:02', 0, NULL, '2025-08-13 09:59:02', '2025-08-13 09:59:02'),
(14, 6, '2025-08-13 10:59:02', '2025-08-13 10:59:02', 0, NULL, '2025-08-13 09:59:02', '2025-08-13 09:59:02'),
(15, 7, '2025-08-13 10:59:02', '2025-08-13 10:59:02', 0, NULL, '2025-08-13 09:59:02', '2025-08-13 09:59:02');

-- --------------------------------------------------------

--
-- Table structure for table `cron_schedules`
--

CREATE TABLE `cron_schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `interval` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cron_schedules`
--

INSERT INTO `cron_schedules` (`id`, `name`, `interval`, `status`, `created_at`, `updated_at`) VALUES
(1, '3 Minutes', 180, 1, '2023-07-29 18:54:30', '2023-08-28 13:16:19'),
(2, '1 Minutes', 60, 1, '2023-08-28 13:15:46', '2024-03-25 03:39:14'),
(3, '1 Hour', 3600, 1, '2024-03-25 03:39:28', '2024-03-25 03:39:28'),
(4, '15 Minutes', 900, 1, '2024-04-03 02:40:02', '2024-04-03 02:40:02');

-- --------------------------------------------------------

--
-- Table structure for table `crypto_deposits`
--

CREATE TABLE `crypto_deposits` (
  `id` int(11) NOT NULL,
  `amount` varchar(920) NOT NULL,
  `usd_equivalent` decimal(18,8) DEFAULT NULL,
  `currency` varchar(110) NOT NULL,
  `network` varchar(50) DEFAULT NULL,
  `user_id` varchar(111) NOT NULL,
  `proof` varchar(110) NOT NULL,
  `reference` varchar(111) NOT NULL,
  `created_at` varchar(92) NOT NULL,
  `updated_at` varchar(110) NOT NULL,
  `status` varchar(111) NOT NULL,
  `type` varchar(110) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crypto_deposits`
--

INSERT INTO `crypto_deposits` (`id`, `amount`, `usd_equivalent`, `currency`, `network`, `user_id`, `proof`, `reference`, `created_at`, `updated_at`, `status`, `type`) VALUES
(88, '33.85240352', 0.00000000, 'XRP', NULL, '10', 'Conversion', '3WAOMUDHQTXG', '2025-08-20 19:41:59', '2025-08-20 19:41:59', '2', 'fiat_to_crypto'),
(87, '0.01381402', 59.03089911, 'ETH', NULL, '10', 'Conversion', 'WZVKEU5G7KGP', '2025-08-20 15:54:34', '2025-08-20 15:54:34', '2', 'fiat_to_crypto'),
(86, '20.06818957', 0.00000000, 'XRP', NULL, '10', 'Conversion', '0TJXBP6KE2NY', '2025-08-20 15:25:27', '2025-08-20 16:28:03', '1', 'fiat_to_crypto'),
(85, '0.00875969', 1000.37411738, 'BTC', NULL, '10', 'Conversion', 'GT1XBFD8TQPJ', '2025-08-20 15:23:43', '2025-08-20 15:23:43', '2', 'fiat_to_crypto'),
(83, '13321', 1508949596.00000000, 'BTC', 'BTC', '10', 'fbdghg,njkbhgtyfdtrjnarsdty3', 'ZADTAFTM8D', '2025-08-20 11:50:06', '2025-08-20 11:50:06', '2', 'crypto'),
(84, '20', 3579.40000000, 'SOL', 'SOL', '10', 'hgfhnfzgnasetrss', 'XWRDSQTT43', '2025-08-20 11:52:29', '2025-08-20 15:22:40', '1', 'crypto'),
(82, '40', 13.99712000, 'TRX', 'TRX', '10', 'fbdghg,njkbhgtyfdtrjnarsdtyeeyt', 'A1HCPTB8RS', '2025-08-19 21:26:33', '2025-08-19 21:26:33', '2', 'crypto'),
(81, '12', 2143.44000000, 'SOL', 'SOL', '10', 'fbdghg,njkbhgtyfdtrjnarsdty22', '5ODZ9YVQWZ', '2025-08-19 21:22:53', '2025-08-19 21:22:53', '2', 'crypto'),
(79, '0.7086', 80431.76880000, 'BTC', 'BTC', '10', 'fbdghg,njkbhgtyfdtrjnarsdtyee555', 'WNB32B6JH9', '2025-08-19 21:12:00', '2025-08-19 21:12:00', '2', 'crypto'),
(80, '1', 113453.00000000, 'BTC', 'BTC', '10', 'fbdghg,njkbhgtyfdtrjnarsdtyee', 'KIV9JPFDLZ', '2025-08-19 21:14:40', '2025-08-19 21:14:40', '2', 'crypto'),
(78, '0.6979809', 79243.86551970, 'BTC', 'BTC', '10', 'fbdghg,njkbhgtyfdtrjnarsdtyeeeee', 'QDYYS1BKQG', '2025-08-19 21:10:20', '2025-08-19 21:10:20', '2', 'crypto'),
(77, '10', 1160610.00000000, 'BTC', 'BTC', '8', 'ryrey', '7ICXHHFTER', '2025-08-18 16:53:38', '2025-08-18 16:53:38', '2', 'crypto'),
(75, '20', 2313560.00000000, 'BTC', 'BTC', '8', 'fbdghg,njkbhgtyfdtrjnarsdty', 'JDMTFIZZQK', '2025-08-18 15:37:08', '2025-08-18 15:43:54', '1', 'crypto'),
(76, '10', 10.01000000, 'USDT', 'USDT_TRC20', '8', 'fbdghg,njkbhgtyfdtrjnarsdty', '2XVCWOEXRK', '2025-08-18 15:41:15', '2025-08-18 15:41:32', '1', 'crypto'),
(74, '20', 20.00000000, 'BTC', 'BTC', '8', 'fbdghg,njkbhgtyfdtrjnarsdty', 'DZWAVBCZCA', '2025-08-18 15:33:50', '2025-08-18 15:33:50', '2', 'crypto'),
(73, '0.01', 0.01000000, 'BTC', 'BTC', '8', 'fbdghg,njkbhgtyfdtrjnarsdtyt', 'KXBCPBEN4L', '2025-08-18 15:31:56', '2025-08-18 15:31:56', '2', 'crypto'),
(71, '20', 20.00000000, 'BTC', 'BTC', '8', 'fbdghg,njkbhgtyfdtrjnarsdty', 'IS1TSIU7HT', '2025-08-18 15:26:01', '2025-08-18 15:26:01', '2', 'crypto'),
(72, '1', 1.00000000, 'ETH', 'ETH', '8', 'fbdghg,njkbhgtyfdtrjnarsdty3', 'VRHU8EBKY7', '2025-08-18 15:26:20', '2025-08-18 15:26:20', '2', 'crypto'),
(70, '0', 0.00000000, 'BTC', 'BTC', '8', 'fbdghg,njkbhgtyfdtrjnarsdty', 'O6QDJIO5E9', '2025-08-18 15:23:30', '2025-08-18 15:23:30', '2', 'crypto'),
(56, '6.0E-5', 6.91416000, 'BTC', 'BTC', '8', 'fbdghg,njkbhgtyfdtrjnarsdtydd', 'JIMEJ5FKRY', '2025-08-18 13:54:36', '2025-08-18 13:54:36', '2', 'crypto');

-- --------------------------------------------------------

--
-- Table structure for table `crypto_transactions`
--

CREATE TABLE `crypto_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('buy','sell','deposit','withdraw') NOT NULL,
  `currency` varchar(10) NOT NULL,
  `amount` decimal(20,8) NOT NULL,
  `rate` decimal(20,8) NOT NULL,
  `total` decimal(20,8) NOT NULL,
  `status` enum('pending','completed','failed') DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `crypto_transactions`
--

INSERT INTO `crypto_transactions` (`id`, `user_id`, `type`, `currency`, `amount`, `rate`, `total`, `status`, `created_at`, `updated_at`) VALUES
(1, 8, 'buy', 'BTC', 0.00050559, 116418.44182045, 58.86000000, 'completed', '2025-08-18 19:08:55', '2025-08-18 19:08:55'),
(2, 8, 'buy', 'BTC', 0.00050585, 116358.60432935, 58.86000000, 'completed', '2025-08-18 19:09:43', '2025-08-18 19:09:43'),
(3, 8, 'buy', 'DASH', 2.64183124, 22.27999999, 58.86000000, 'completed', '2025-08-18 19:11:11', '2025-08-18 19:11:11'),
(4, 8, 'buy', 'XRP', 19.14146341, 3.07500000, 58.86000000, 'completed', '2025-08-18 19:26:16', '2025-08-18 19:26:16'),
(5, 8, 'buy', 'BTC', 0.00050583, 116244.58810272, 58.80000000, 'completed', '2025-08-18 19:39:26', '2025-08-18 19:39:26'),
(6, 8, 'sell', 'BTC', 0.00117720, 116301.39313626, 136.91000000, 'completed', '2025-08-18 19:53:53', '2025-08-18 19:53:53'),
(7, 8, 'buy', 'BTC', 0.00050416, 116748.65122183, 58.86000000, 'completed', '2025-08-18 20:28:53', '2025-08-18 20:28:53'),
(8, 8, 'buy', 'BTC', 0.00050425, 116727.81358453, 58.86000000, 'completed', '2025-08-18 20:31:12', '2025-08-18 20:31:12'),
(9, 8, 'buy', 'BNB', 0.06956789, 846.07999466, 58.86000000, 'completed', '2025-08-18 20:41:03', '2025-08-18 20:41:03'),
(10, 8, 'buy', 'XLM', 239.88966179, 0.41690000, 100.01000000, 'completed', '2025-08-18 20:41:34', '2025-08-18 20:41:34'),
(11, 8, 'sell', 'XLM', 10.00000000, 0.41700000, 4.17000000, 'completed', '2025-08-18 20:43:13', '2025-08-18 20:43:13'),
(12, 8, 'sell', 'BTC', 0.00117720, 116896.02446483, 137.61000000, 'completed', '2025-08-18 21:02:29', '2025-08-18 21:02:29'),
(13, 8, 'buy', 'BTC', 0.00051179, 115008.10879462, 58.86000000, 'completed', '2025-08-19 05:56:10', '2025-08-19 05:56:10');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=Crypto,2=Fiat',
  `name` varchar(255) DEFAULT NULL,
  `sign` varchar(255) DEFAULT NULL,
  `symbol` varchar(55) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `rate` decimal(28,8) NOT NULL DEFAULT 0.00000000 COMMENT 'only for fiat currency',
  `rank` int(11) NOT NULL DEFAULT 0,
  `midnight_rate` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `last_midnight_update` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=Enable,0=Disable',
  `highlighted_coin` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `type`, `name`, `sign`, `symbol`, `image`, `rate`, `rank`, `midnight_rate`, `last_midnight_update`, `status`, `highlighted_coin`, `created_at`, `updated_at`) VALUES
(1, 1, 'Bitcoin', 'B', 'BTC', '678f02ae62fcb1737425582.png', 120464.64833825, 1, 120464.64833825, '2025-08-13', 1, 1, '2025-01-21 01:13:16', '2025-08-13 09:59:01'),
(2, 2, 'US Dollar', '$', 'USD', 'usd_image.png', 1.00000000, 0, 1.00000000, '2025-01-21', 1, 0, '2025-01-21 01:00:00', '2025-01-21 01:00:00'),
(3, 1, 'Ethereum', 'Ξ', 'ETH', 'eth_image.png', 1500.00000000, 0, 1500.00000000, '2025-01-21', 1, 1, '2025-01-21 01:15:00', '2025-01-21 01:15:00'),
(4, 2, 'Euro', '€', 'EUR', 'eur_image.png', 1.20000000, 0, 1.20000000, '2025-01-21', 1, 0, '2025-01-21 01:30:00', '2025-01-21 01:30:00'),
(5, 1, 'Ripple', 'R', 'XRP', 'xrp_image.png', 0.75000000, 0, 0.75000000, '2025-01-21', 1, 0, '2025-01-21 02:00:00', '2025-01-21 02:00:00'),
(6, 2, 'Japanese Yen', '¥', 'JPY', 'jpy_image.png', 0.00900000, 0, 0.00900000, '2025-01-21', 1, 0, '2025-01-21 02:15:00', '2025-01-21 02:15:00'),
(7, 1, 'Litecoin', 'Ł', 'LTC', 'ltc_image.png', 200.00000000, 0, 200.00000000, '2025-01-21', 1, 1, '2025-01-21 02:30:00', '2025-01-21 02:30:00'),
(8, 1, 'Cardano', '₳', 'ADA', 'ada_image.png', 1.50000000, 0, 1.50000000, '2025-01-21', 1, 0, '2025-01-21 03:00:00', '2025-01-21 03:00:00'),
(9, 1, 'Polkadot', 'DOT', 'DOT', 'dot_image.png', 30.00000000, 0, 30.00000000, '2025-01-21', 1, 1, '2025-01-21 03:15:00', '2025-01-21 03:15:00'),
(10, 1, 'Chainlink', 'LINK', 'LINK', 'link_image.png', 25.00000000, 0, 25.00000000, '2025-01-21', 1, 0, '2025-01-21 03:30:00', '2025-01-21 03:30:00'),
(11, 1, 'Stellar', 'Ʀ', 'XLM', 'xlm_image.png', 0.40000000, 0, 0.40000000, '2025-01-21', 1, 1, '2025-01-21 03:45:00', '2025-01-21 03:45:00'),
(12, 1, 'VeChain', 'V', 'VET', 'vet_image.png', 0.10000000, 0, 0.10000000, '2025-01-21', 1, 0, '2025-01-21 04:00:00', '2025-01-21 04:00:00'),
(13, 1, 'EOS', 'E', 'EOS', 'eos_image.png', 5.00000000, 0, 5.00000000, '2025-01-21', 1, 0, '2025-01-21 05:00:00', '2025-01-21 05:00:00'),
(14, 1, 'Tezos', 'ꜩ', 'XTZ', 'xtz_image.png', 3.50000000, 0, 3.50000000, '2025-01-21', 1, 0, '2025-01-21 05:15:00', '2025-01-21 05:15:00'),
(15, 1, 'Monero', 'ɱ', 'XMR', 'xmr_image.png', 100.00000000, 0, 100.00000000, '2025-01-21', 1, 1, '2025-01-21 05:30:00', '2025-01-21 05:30:00'),
(16, 1, 'Dash', 'Đ', 'DASH', 'dash_image.png', 50.00000000, 0, 50.00000000, '2025-01-21', 1, 0, '2025-01-21 05:45:00', '2025-01-21 05:45:00'),
(17, 1, 'Zcash', 'Z', 'ZEC', 'zec_image.png', 75.00000000, 0, 75.00000000, '2025-01-21', 1, 1, '2025-01-21 06:00:00', '2025-01-21 06:00:00'),
(18, 1, 'Uniswap', 'U', 'UNI', 'uni_image.png', 20.00000000, 0, 20.00000000, '2025-01-21', 1, 0, '2025-01-21 06:15:00', '2025-01-21 06:15:00'),
(19, 1, 'Aave', 'A', 'AAVE', 'aave_image.png', 300.00000000, 0, 300.00000000, '2025-01-21', 1, 1, '2025-01-21 06:30:00', '2025-01-21 06:30:00'),
(20, 1, 'Compound', 'C', 'COMP', 'comp_image.png', 150.00000000, 0, 150.00000000, '2025-01-21', 1, 0, '2025-01-21 06:45:00', '2025-01-21 06:45:00'),
(21, 1, 'Synthetix', 'sUSD', 'SNX', 'snx_image.png', 10.00000000, 0, 10.00000000, '2025-01-21', 1, 1, '2025-01-21 07:00:00', '2025-01-21 07:00:00'),
(22, 1, 'Maker', 'MKR', 'MKR', 'mkr_image.png', 500.00000000, 0, 500.00000000, '2025-01-21', 1, 0, '2025-01-21 07:15:00', '2025-01-21 07:15:00'),
(23, 1, 'Yearn Finance', 'YFI', 'YFI', 'yfi_image.png', 25000.00000000, 0, 25000.00000000, '2025-01-21', 1, 1, '2025-01-21 07:30:00', '2025-01-21 07:30:00'),
(24, 1, 'SushiSwap', 'SUSHI', 'SUSHI', 'sushi_image.png', 15.00000000, 0, 15.00000000, '2025-01-21', 1, 0, '2025-01-21 07:45:00', '2025-01-21 07:45:00'),
(25, 1, 'Curve DAO Token', 'CRV', 'CRV', 'crv_image.png', 2.00000000, 0, 2.00000000, '2025-01-21', 1, 1, '2025-01-21 08:00:00', '2025-01-21 08:00:00'),
(26, 1, 'Balancer', 'BAL', 'BAL', 'bal_image.png', 30.00000000, 0, 30.00000000, '2025-01-21', 1, 0, '2025-01-21 08:15:00', '2025-01-21 08:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `currency_data_providers`
--

CREATE TABLE `currency_data_providers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` text DEFAULT NULL,
  `configuration` varchar(255) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=crypto,2=Fiat',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=enable,0=disable',
  `help` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 1,
  `instruction` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currency_data_providers`
--

INSERT INTO `currency_data_providers` (`id`, `name`, `alias`, `configuration`, `type`, `status`, `help`, `image`, `is_default`, `instruction`, `created_at`, `updated_at`) VALUES
(1, 'Coinmarketcap', 'CoinmarketCap', '{\"api_key\":{\"title\":\"API Key\",\"value\":\"439a873b-3466-4dd7-80b2-d8505e866e48\"}}', 1, 1, NULL, 'coinmarketcap.jpg', 1, '<ul class=\"list-group list-group-flush\">\n <li class=\"list-group-item\">Go to the CoinMarketCap website <a href=\"https://coinmarketcap.com/api\" target=\"_blank\">https://coinmarketcap.com/api</a></li>\n <li class=\"list-group-item\">Signup this platform or login existing account</li>\n <li class=\"list-group-item\">After logging into your CoinMarketCap account, Choose an API Plan</li>\n <li class=\"list-group-item\">Generate an API Key</li>\n <li class=\"list-group-item\">Copy API key & configure here</li>\n </ul>', NULL, '2025-01-21 01:04:09'),
(2, 'Cryptocompare', 'Cryptocompare', '{\"api_key\":{\"title\":\"API Key\",\"value\":\"---------------\"}}', 1, 1, NULL, 'cryptocompare.jpg', 0, ' <ul class=\"list-group list-group-flush\">\n                        <li class=\"list-group-item\">Go to the Cryptocompare website <a href=\"https://min-api.cryptocompare.com/\" target=\"_blank\">https://min-api.cryptocompare.com/</a></li>\n                        <li class=\"list-group-item\">Signup this platform or login to the existing account</li>\n                        <li class=\"list-group-item\">After logging into your Cryptocompare account, Choose an API Plan</li>\n                        <li class=\"list-group-item\">Generate an API Key</li>\n                        <li class=\"list-group-item\">Copy API key & configure here</li>\n                    </ul>', NULL, '2024-11-25 00:34:04');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `wallet_id` int(11) NOT NULL DEFAULT 0,
  `currency_id` int(11) NOT NULL DEFAULT 0,
  `plan_id` int(11) NOT NULL DEFAULT 0,
  `plan_history_id` int(11) NOT NULL DEFAULT 0,
  `method_code` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `method_currency` varchar(40) DEFAULT NULL,
  `charge` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `rate` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `final_amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `detail` text DEFAULT NULL,
  `btc_amount` varchar(255) DEFAULT NULL,
  `btc_wallet` varchar(255) DEFAULT NULL,
  `trx` varchar(40) DEFAULT NULL,
  `payment_try` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1=>success, 2=>pending, 3=>cancel',
  `from_api` tinyint(1) NOT NULL DEFAULT 0,
  `admin_feedback` varchar(255) DEFAULT NULL,
  `success_url` varchar(255) DEFAULT NULL,
  `failed_url` varchar(255) DEFAULT NULL,
  `last_cron` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `device_tokens`
--

CREATE TABLE `device_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_app` tinyint(1) NOT NULL DEFAULT 0,
  `token` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `extensions`
--

CREATE TABLE `extensions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `act` varchar(40) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `script` text DEFAULT NULL,
  `shortcode` text DEFAULT NULL COMMENT 'object',
  `support` text DEFAULT NULL COMMENT 'help section',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=>enable, 2=>disable',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `extensions`
--

INSERT INTO `extensions` (`id`, `act`, `name`, `description`, `image`, `script`, `shortcode`, `support`, `status`, `created_at`, `updated_at`) VALUES
(1, 'tawk-chat', 'Tawk.to', 'Key location is shown bellow', 'tawky_big.png', '<script>\r\n                        var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n                        (function(){\r\n                        var s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\n                        s1.async=true;\r\n                        s1.src=\"https://embed.tawk.to/{{app_key}}\";\r\n                        s1.charset=\"UTF-8\";\r\n                        s1.setAttribute(\"crossorigin\",\"*\");\r\n                        s0.parentNode.insertBefore(s1,s0);\r\n                        })();\r\n                    </script>', '{\"app_key\":{\"title\":\"App Key\",\"value\":\"------\"}}', 'twak.png', 0, '2019-10-18 11:16:05', '2024-05-16 06:23:02'),
(2, 'google-recaptcha2', 'Google Recaptcha 2', 'Key location is shown bellow', 'recaptcha3.png', '\n<script src=\"https://www.google.com/recaptcha/api.js\"></script>\n<div class=\"g-recaptcha\" data-sitekey=\"{{site_key}}\" data-callback=\"verifyCaptcha\"></div>\n<div id=\"g-recaptcha-error\"></div>', '{\"site_key\":{\"title\":\"Site Key\",\"value\":\"6LdPC88fAAAAADQlUf_DV6Hrvgm-pZuLJFSLDOWV\"},\"secret_key\":{\"title\":\"Secret Key\",\"value\":\"6LdPC88fAAAAAG5SVaRYDnV2NpCrptLg2XLYKRKB\"}}', 'recaptcha.png', 0, '2019-10-18 11:16:05', '2024-10-28 10:10:47'),
(3, 'custom-captcha', 'Custom Captcha', 'Just put any random string', 'customcaptcha.png', NULL, '{\"random_key\":{\"title\":\"Random String\",\"value\":\"SecureString\"}}', 'na', 0, '2019-10-18 11:16:05', '2024-10-28 10:10:43'),
(4, 'google-analytics', 'Google Analytics', 'Key location is shown bellow', 'google_analytics.png', '<script async src=\"https://www.googletagmanager.com/gtag/js?id={{measurement_id}}\"></script>\n                <script>\n                  window.dataLayer = window.dataLayer || [];\n                  function gtag(){dataLayer.push(arguments);}\n                  gtag(\"js\", new Date());\n                \n                  gtag(\"config\", \"{{measurement_id}}\");\n                </script>', '{\"measurement_id\":{\"title\":\"Measurement ID\",\"value\":\"------\"}}', 'ganalytics.png', 0, NULL, '2021-05-03 22:19:12'),
(5, 'fb-comment', 'Facebook Comment ', 'Key location is shown bellow', 'Facebook.png', '<div id=\"fb-root\"></div><script async defer crossorigin=\"anonymous\" src=\"https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v4.0&appId={{app_key}}&autoLogAppEvents=1\"></script>', '{\"app_key\":{\"title\":\"App Key\",\"value\":\"----\"}}', 'fb_com.png', 0, NULL, '2022-03-21 17:18:36');

-- --------------------------------------------------------

--
-- Table structure for table `favorite_pairs`
--

CREATE TABLE `favorite_pairs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `pair_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

CREATE TABLE `forms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `act` varchar(40) DEFAULT NULL,
  `form_data` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forms`
--

INSERT INTO `forms` (`id`, `act`, `form_data`, `created_at`, `updated_at`) VALUES
(1, 'kyc', '{\"full_name\":{\"name\":\"Full Name\",\"label\":\"full_name\",\"is_required\":\"required\",\"instruction\":null,\"extensions\":null,\"options\":[],\"type\":\"text\",\"width\":\"6\"},\"email\":{\"name\":\"Email\",\"label\":\"email\",\"is_required\":\"required\",\"instruction\":null,\"extensions\":null,\"options\":[],\"type\":\"email\",\"width\":\"6\"},\"nid_number\":{\"name\":\"NID Number\",\"label\":\"nid_number\",\"is_required\":\"required\",\"instruction\":null,\"extensions\":null,\"options\":[],\"type\":\"number\",\"width\":\"6\"},\"you_hobby\":{\"name\":\"You Hobby\",\"label\":\"you_hobby\",\"is_required\":\"required\",\"instruction\":null,\"extensions\":null,\"options\":[\"Programming\",\"Gardening\",\"Traveling\",\"Others\"],\"type\":\"checkbox\",\"width\":\"12\"}}', '2024-11-20 20:56:14', '2025-08-19 11:58:28'),
(2, 'manual_deposit', '[]', '2025-01-28 03:16:57', '2025-01-28 03:16:57'),
(3, 'withdraw_method', '{\"address\":{\"name\":\"Address\",\"label\":\"address\",\"is_required\":\"required\",\"instruction\":\"TYJ1Z7WEvsEVisgDq745SBoJwPhrpyGUGQ\",\"extensions\":\"\",\"options\":[],\"type\":\"text\",\"width\":\"12\"}}', '2025-02-01 02:59:35', '2025-02-01 02:59:35'),
(4, 'manual_deposit', '[]', '2025-02-15 07:10:58', '2025-02-15 07:10:58');

-- --------------------------------------------------------

--
-- Table structure for table `frontends`
--

CREATE TABLE `frontends` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data_keys` varchar(40) DEFAULT NULL,
  `data_values` longtext DEFAULT NULL,
  `seo_content` longtext DEFAULT NULL,
  `tempname` varchar(40) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `frontends`
--

INSERT INTO `frontends` (`id`, `data_keys`, `data_values`, `seo_content`, `tempname`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'seo.data', '{\"seo_image\":\"1\",\"keywords\":[\"prop\",\"trading\",\"proplab\",\"trade\",\"bot\",\"bot trade\",\"phase\",\"logic\",\"logicbox\"],\"description\":\"Neque porro quisquamaPropLab is the ultimate proprietary trading solution, designed to redefine efficiency and flexibility for trading administrators. Our platform empowers administrators with unmatched control and adaptability, enabling effortless management of trading operations. Whether you\\u2019re scaling your trading business or streamlining processes, PropLab provides all the tools you need in a single, seamless platform. est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit\",\"social_title\":\"Proplab - PropFund and funded trading platform\",\"social_description\":\"PropLab is the ultimate proprietary trading solution, designed to redefine efficiency and flexibility for trading administrators. Our platform empowers administrators with unmatched control and adaptability, enabling effortless management of trading operations. Whether you\\u2019re scaling your trading business or streamlining processes, PropLab provides all the tools you need in a single, seamless platform.\",\"image\":\"6742ec7bbb2a41732439163.jpg\"}', NULL, 'basic', '', '2020-07-04 17:42:52', '2024-11-24 03:10:14'),
(24, 'about.content', '{\"has_image\":\"1\",\"heading\":\"About Us\",\"subheading\":\"We are dedicated to providing a supportive and transparent trading environment, where traders can achieve their goals and reach their full potential\",\"description\":\"Our team of experienced professionals provide a practical and excellent solution to help our skilled traders develop their skills and succeed in the markets.\\r\\n\\r\\nAt TradingFunds, we pride ourselves on our cutting-edge and modern prop trading experience that many traders are missing. This enables our traders to access global markets and execute trades with speed and precision.\\r\\n\\r\\nWith a proven track record of being able to find success in traders, we have become a trusted partner for traders around the world. Join us today and start your prop trading journey with the support of our experienced team and the backing of our capital.\",\"button_text\":\"Start Challenge\",\"button_url\":\"user\\/register\",\"image\":\"65b9f276066551706685046.png\"}', NULL, 'basic', NULL, '2020-10-27 18:51:20', '2024-01-30 21:09:07'),
(28, 'counter.content', '{\"heading\":\"Tell our success story\",\"subheading\":\"Funded Trading is in our DNA. Discover why our numbers are growing.\"}', NULL, 'basic', NULL, '2020-10-27 19:04:02', '2024-01-30 19:24:05'),
(31, 'social_icon.element', '{\"social_icon\":\"<i class=\\\"fab fa-facebook\\\"><\\/i>\",\"url\":\"https:\\/\\/www.facebook.com\"}', NULL, 'basic', '', '2020-11-11 22:07:30', '2024-11-24 00:09:17'),
(39, 'banner.content', '{\"has_image\":\"1\",\"title\":\"Our Fund, Your Profit\",\"heading\":\"Funding Promising Traders Worldwide\",\"subheading\":\"Maximize Your Trading Success with Propfunding: Trade up to $300,000 on a Propfunding Account and earn up to 95% of the profits.\",\"button_one_text\":\"Start Challenge\",\"button_one_url\":\"user\\/register\",\"button_two_text\":\"Join our Discord\",\"button_two_url\":\"user\\/login\",\"button_two_icon\":\"<i class=\\\"fab fa-discord\\\"><\\/i>\",\"image_one\":\"65b9f403cd4711706685443.png\",\"image_two\":\"65b9f403d2b541706685443.png\",\"image_three\":\"65b9f403d4c8d1706685443.png\",\"image_four\":\"65b9f403d6fa31706685443.png\"}', NULL, 'basic', '', '2021-05-02 00:09:30', '2024-10-28 10:28:54'),
(41, 'cookie.data', '{\"short_desc\":\"We may use cookies or any other tracking technologies when you visit our website, including any other media form, mobile website, or mobile application related or connected to help customize the Site and improve your experience.\",\"description\":\"<div><h5>What information do we collect?<\\/h5><p>We gather data from you when you register on our site, submit a request, buy any services, react to an overview, or round out a structure. At the point when requesting any assistance or enrolling on our site, as suitable, you might be approached to enter your: name, email address, or telephone number. You may, nonetheless, visit our site anonymously.<\\/p><p><br><\\/p><\\/div><div><h5>How do we protect your information?<\\/h5><p>All provided delicate\\/credit data is sent through Stripe.<br>After an exchange, your private data (credit cards, social security numbers, financials, and so on) won\'t be put away on our workers.<\\/p><p><br><\\/p><\\/div><div><h5>Do we disclose any information to outside parties?<\\/h5><p>We don\'t sell, exchange, or in any case move to outside gatherings by and by recognizable data. This does exclude confided in outsiders who help us in working our site, leading our business, or adjusting you, since those gatherings consent to keep this data private. We may likewise deliver your data when we accept discharge is suitable to follow the law, implement our site strategies, or ensure our own or others\' rights, property, or wellbeing.<\\/p><p><br><\\/p><\\/div><div><h5>Children\'s Online Privacy Protection Act Compliance<\\/h5><p>We are consistent with the prerequisites of COPPA (Children\'s Online Privacy Protection Act), we don\'t gather any data from anybody under 13 years old. Our site, items, and administrations are completely coordinated to individuals who are in any event 13 years of age or more established.<\\/p><p><br><\\/p><\\/div><div><h5>Changes to our Privacy Policy<\\/h5><p>If we decide to change our privacy policy, we will post those changes on this page.<\\/p><p><br><\\/p><\\/div><div><h5>How long we retain your information?<\\/h5><p>At the point when you register for our site, we cycle and keep your information we have about you however long you don\'t erase the record or withdraw yourself (subject to laws and guidelines).<\\/p><p><br><\\/p><\\/div><div><h5>What we don\\u2019t do with your data<\\/h5><p>We don\'t and will never share, unveil, sell, or in any case give your information to different organizations for the promoting of their items or administrations.<\\/p><p><br><\\/p><\\/div>\",\"status\":1}', NULL, 'basic', NULL, '2020-07-04 17:42:52', '2024-01-30 21:00:01'),
(42, 'policy_pages.element', '{\"title\":\"Privacy Policy\",\"details\":\"<h6>Introduction<\\/h6>\\r\\n        <p>\\r\\n            This Privacy Policy describes how we collects, uses, and discloses information, including personal information, in connection with your use of our website.\\r\\n        <\\/p>\\r\\n        <br \\/>\\r\\n        <h6>Information We Collect<\\/h6>\\r\\n        <p>We collect two main types of information on the Website:<\\/p>\\r\\n        <ul>\\r\\n            <li><p><strong>Personal Information: <\\/strong>This includes data that can identify you as an individual, such as your name, email address, phone number, or mailing address. We only collect this information when you voluntarily provide it to us, like signing up for a newsletter, contacting us through a form, or making a purchase.<\\/p><\\/li>\\r\\n            <li><p><strong>Non-Personal Information: <\\/strong>This data cannot be used to identify you directly. It includes details like your browser type, device type, operating system, IP address, browsing activity, and usage statistics. We collect this information automatically through cookies and other tracking technologies.<\\/p><\\/li>\\r\\n        <\\/ul>\\r\\n        <br \\/>\\r\\n        <h6>How We Use Information<\\/h6>\\r\\n        <p>The information we collect allows us to:<\\/p>\\r\\n        <ul>\\r\\n            <li>Operate and maintain the Website effectively.<\\/li>\\r\\n            <li>Send you newsletters or marketing communications, but only with your consent.<\\/li>\\r\\n            <li>Respond to your inquiries and fulfill your requests.<\\/li>\\r\\n            <li>Improve the Website and your user experience.<\\/li>\\r\\n            <li>Personalize your experience on the Website based on your browsing habits.<\\/li>\\r\\n            <li>Analyze how the Website is used to improve our services.<\\/li>\\r\\n            <li>Comply with legal and regulatory requirements.<\\/li>\\r\\n        <\\/ul>\\r\\n        <br \\/>\\r\\n        <h6>Sharing of Information<\\/h6>\\r\\n        <p>We may share your information with trusted third-party service providers who assist us in operating the Website and delivering our services. These providers are obligated by contract to keep your information confidential and use it only for the specific purposes we disclose it for.<\\/p>\\r\\n        <p>We will never share your personal information with any third parties for marketing purposes without your explicit consent.<\\/p>\\r\\n        <br \\/>\\r\\n        <h6>Data Retention<\\/h6>\\r\\n        <p>We retain your personal information only for as long as necessary to fulfill the purposes it was collected for. We may retain it for longer periods only if required or permitted by law.<\\/p>\\r\\n        <br \\/>\\r\\n        <h6>Security Measures<\\/h6>\\r\\n        <p>We take reasonable precautions to protect your information from unauthorized access, disclosure, alteration, or destruction. However, complete security cannot be guaranteed for any website or internet transmission.<\\/p>\\r\\n        <br \\/>\\r\\n        <h6>Changes to this Privacy Policy<\\/h6>\\r\\n        <p>We may update this Privacy Policy periodically. We will notify you of any changes by posting the revised policy on the Website. We recommend reviewing this policy regularly to stay informed of any updates.<\\/p>\\r\\n        <p><strong>Remember:<\\/strong>  This is a sample policy and may need adjustments to comply with specific laws and reflect your website\'s unique data practices. Consider consulting with a legal professional to ensure your policy is fully compliant.<\\/p>\"}', NULL, 'basic', 'privacy-policy', '2021-06-09 02:50:42', '2024-11-24 04:37:20'),
(43, 'policy_pages.element', '{\"title\":\"Terms of Service\",\"details\":\"<h6>Introduction<\\/h6><h6><\\/h6><p>This Privacy Policy describes how we collects, uses, and discloses information, including personal information, in connection with your use of our website.<\\/p><div><br \\/><\\/div>\\r\\n        <h6>Information We Collect<\\/h6>\\r\\n        <p>We collect two main types of information on the Website:<\\/p>\\r\\n        <ul>\\r\\n            <li><p><strong>Personal Information: <\\/strong>This includes data that can identify you as an individual, such as your name, email address, phone number, or mailing address. We only collect this information when you voluntarily provide it to us, like signing up for a newsletter, contacting us through a form, or making a purchase.<\\/p><\\/li>\\r\\n            <li><p><strong>Non-Personal Information: <\\/strong>This data cannot be used to identify you directly. It includes details like your browser type, device type, operating system, IP address, browsing activity, and usage statistics. We collect this information automatically through cookies and other tracking technologies.<\\/p><\\/li>\\r\\n        <\\/ul>\\r\\n        <br \\/>\\r\\n        <h6>How We Use Information<\\/h6>\\r\\n        <p>The information we collect allows us to:<\\/p>\\r\\n        <ul>\\r\\n            <li>Operate and maintain the Website effectively.<\\/li>\\r\\n            <li>Send you newsletters or marketing communications, but only with your consent.<\\/li>\\r\\n            <li>Respond to your inquiries and fulfill your requests.<\\/li>\\r\\n            <li>Improve the Website and your user experience.<\\/li>\\r\\n            <li>Personalize your experience on the Website based on your browsing habits.<\\/li>\\r\\n            <li>Analyze how the Website is used to improve our services.<\\/li>\\r\\n            <li>Comply with legal and regulatory requirements.<\\/li>\\r\\n        <\\/ul>\\r\\n        <br \\/>\\r\\n        <h6>Sharing of Information<\\/h6>\\r\\n        <p>We may share your information with trusted third-party service providers who assist us in operating the Website and delivering our services. These providers are obligated by contract to keep your information confidential and use it only for the specific purposes we disclose it for.<\\/p>\\r\\n        <p>We will never share your personal information with any third parties for marketing purposes without your explicit consent.<\\/p>\\r\\n        <br \\/>\\r\\n        <h6>Data Retention<\\/h6>\\r\\n        <p>We retain your personal information only for as long as necessary to fulfill the purposes it was collected for. We may retain it for longer periods only if required or permitted by law.<\\/p>\\r\\n        <br \\/>\\r\\n        <h6>Security Measures<\\/h6>\\r\\n        <p>We take reasonable precautions to protect your information from unauthorized access, disclosure, alteration, or destruction. However, complete security cannot be guaranteed for any website or internet transmission.<\\/p>\\r\\n        <br \\/>\\r\\n        <h6>Changes to this Privacy Policy<\\/h6>\\r\\n        <p>We may update this Privacy Policy periodically. We will notify you of any changes by posting the revised policy on the Website. We recommend reviewing this policy regularly to stay informed of any updates.<\\/p>\\r\\n        <p><strong>Remember:<\\/strong>  This is a sample policy and may need adjustments to comply with specific laws and reflect your website\'s unique data practices. Consider consulting with a legal professional to ensure your policy is fully compliant.<\\/p>\"}', NULL, 'basic', 'terms-of-service', '2021-06-09 02:51:18', '2024-11-24 04:38:17'),
(44, 'maintenance.data', '{\"description\":\"<div class=\\\"mb-5\\\" style=\\\"font-family: Nunito, sans-serif; margin-bottom: 3rem !important;\\\"><h3 class=\\\"mb-3\\\" style=\\\"text-align: center; font-weight: 600; line-height: 1.3; font-size: 24px; font-family: Exo, sans-serif;\\\"><font color=\\\"#ffffff\\\">What information do we collect?<\\/font><\\/h3><p class=\\\"font-18\\\" style=\\\"text-align: center; margin-right: 0px; margin-left: 0px; font-size: 18px !important;\\\"><font color=\\\"#ffffff\\\">We gather data from you when you register on our site, submit a request, buy any services, react to an overview, or round out a structure. At the point when requesting any assistance or enrolling on our site, as suitable, you might be approached to enter your: name, email address, or telephone number. You may, nonetheless, visit our site anonymously.<\\/font><\\/p><\\/div>\",\"image\":\"67274ae319e201730628323.png\"}', NULL, 'basic', NULL, '2020-07-04 17:42:52', '2024-11-03 10:11:38'),
(45, 'achievement.content', '{\"title\":\"TRADINGFUNDS OBJECTIVES\",\"heading\":\"What We Want To Achieve\",\"subheading\":\"TradingFunds wants to empower traders of all levels to achieve leveraged earnings and realise their full potential.We believe in providing a supportive and transparent trading environment, where traders can trade, grow, and succeed.\",\"review_title\":\"Review us on\",\"rating\":\"5\"}', NULL, 'basic', NULL, '2024-01-30 19:13:44', '2024-01-30 19:13:44'),
(46, 'achievement.element', '{\"heading\":\"Our Mission\",\"description\":\"Our goal is to offer a prop trading experience that is both cutting-edge and modern, which sets us apart from the rest. Our platform empowers traders to swiftly and accurately execute trades across global markets and track their results.\"}', NULL, 'basic', NULL, '2024-01-30 19:14:04', '2024-01-30 19:14:04'),
(47, 'achievement.element', '{\"heading\":\"Our Vision\",\"description\":\"We are committed to building long-term relationships with our traders, based on trust, transparency, and mutual success. Our mission is to create a trading community where our traders can thrive, share their success with us, and realise their goals.\"}', NULL, 'basic', NULL, '2024-01-30 19:14:31', '2024-01-30 19:14:31'),
(48, 'brand.content', '{\"title\":\"As seen on\"}', NULL, 'basic', NULL, '2024-01-30 19:18:10', '2024-01-30 19:18:10'),
(49, 'brand.element', '{\"has_image\":\"1\",\"image\":\"6741cee106fa41732366049.png\"}', NULL, 'basic', '', '2024-01-30 19:18:26', '2024-11-23 06:47:30'),
(50, 'brand.element', '{\"has_image\":\"1\",\"image\":\"6741cf005cfc51732366080.png\"}', NULL, 'basic', '', '2024-01-30 19:18:33', '2024-11-23 06:48:00'),
(51, 'brand.element', '{\"has_image\":\"1\",\"image\":\"6741cf16313f31732366102.png\"}', NULL, 'basic', '', '2024-01-30 19:18:39', '2024-11-23 06:48:22'),
(52, 'brand.element', '{\"has_image\":\"1\",\"image\":\"6741cf2d3519a1732366125.png\"}', NULL, 'basic', '', '2024-01-30 19:18:45', '2024-11-23 06:48:45'),
(53, 'brand.element', '{\"has_image\":\"1\",\"image\":\"6741cf85a3b9e1732366213.png\"}', NULL, 'basic', '', '2024-01-30 19:18:50', '2024-11-23 06:50:13'),
(54, 'contact.content', '{\"title\":\"Write To Us\",\"description\":\"If you have any inquiries or need our assistance, don\\u2019t hesitate to submit the form. Our support will be in touch with you as soon as possible. You can also reach us through our live chat.\",\"map_url\":\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d53501.046010208636!2d-96.77791069709308!3d33.061327134222715!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x864c21da13c59513%3A0x62aa036489cd602b!2sPlano%2C%20TX%2C%20USA!5e0!3m2!1sen!2sbd!4v1705917111071!5m2!1sen!2sbd\",\"button_text\":\"Send\"}', NULL, 'basic', NULL, '2024-01-30 19:19:35', '2024-01-31 22:58:57'),
(55, 'contact.element', '{\"icon\":\"<i class=\\\"fas fa-envelope\\\"><\\/i>\",\"heading\":\"Email\",\"subheading\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse varius enim in ero.\",\"content\":\"hello@relume.io\",\"contact_type\":\"mailto\"}', NULL, 'basic', NULL, '2024-01-30 19:20:20', '2024-01-30 19:20:20'),
(56, 'contact.element', '{\"icon\":\"<i class=\\\"fas fa-comment-alt\\\"><\\/i>\",\"heading\":\"Live chat\",\"subheading\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse varius enim in ero.\",\"content\":\"Start new chat\",\"contact_type\":\"none\"}', NULL, 'basic', NULL, '2024-01-30 19:21:33', '2024-01-30 19:21:40'),
(57, 'contact.element', '{\"icon\":\"<i class=\\\"fas fa-phone\\\"><\\/i>\",\"heading\":\"Phone\",\"subheading\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse varius enim in ero.\",\"content\":\"+5485544545\",\"contact_type\":\"tel\"}', NULL, 'basic', '', '2024-01-30 19:22:39', '2024-11-25 05:35:20'),
(58, 'contact.element', '{\"icon\":\"<i class=\\\"fas fa-map-marker\\\"><\\/i>\",\"heading\":\"Office\",\"subheading\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse varius enim in ero.\",\"content\":\"123 Sample St, Sydney NSW 2000 AU\",\"contact_type\":\"none\"}', NULL, 'basic', NULL, '2024-01-30 19:23:24', '2024-04-05 02:55:56'),
(59, 'counter.element', '{\"title\":\"Countries Covered\",\"counter_digit\":\"151\",\"symbol\":\"+\"}', NULL, 'basic', NULL, '2024-01-30 19:24:36', '2024-01-30 19:24:36'),
(60, 'counter.element', '{\"title\":\"Total Payout\",\"counter_digit\":\"40\",\"symbol\":\"M+\"}', NULL, 'basic', NULL, '2024-01-30 19:25:10', '2024-01-30 19:25:10'),
(61, 'counter.element', '{\"title\":\"Avg.Payout Time\",\"counter_digit\":\"5\",\"symbol\":\"hrs\"}', NULL, 'basic', NULL, '2024-01-30 19:25:34', '2024-01-30 19:25:34'),
(62, 'counter.element', '{\"title\":\"Funded Traders\",\"counter_digit\":\"51\",\"symbol\":\"k+\"}', NULL, 'basic', NULL, '2024-01-30 19:26:07', '2024-01-30 19:26:07'),
(63, 'coverage.content', '{\"heading\":\"Track all markets on TradingView\"}', NULL, 'basic', NULL, '2024-01-30 19:26:31', '2024-01-30 19:26:31'),
(64, 'coverage.element', '{\"has_image\":\"1\",\"title\":\"AUDCHF\",\"number\":\"0.57633\",\"rate\":\"-0.00202(+0.7%)\",\"image\":\"65b9f678b46621706686072.png\"}', NULL, 'basic', NULL, '2024-01-30 19:27:52', '2024-01-30 19:27:52'),
(65, 'coverage.element', '{\"has_image\":\"1\",\"title\":\"AUDCHF\",\"number\":\"0.57633\",\"rate\":\"-0.00202(+0.7%)\",\"image\":\"65b9f68ec55d11706686094.png\"}', NULL, 'basic', NULL, '2024-01-30 19:28:14', '2024-01-30 19:28:14'),
(66, 'coverage.element', '{\"has_image\":\"1\",\"title\":\"AUDCHF\",\"number\":\"0.57633\",\"rate\":\"-0.00202(+0.7%)\",\"image\":\"65b9f6a32f1351706686115.png\"}', NULL, 'basic', NULL, '2024-01-30 19:28:35', '2024-01-30 19:28:35'),
(67, 'coverage.element', '{\"has_image\":\"1\",\"title\":\"AUDCHF\",\"number\":\"0.57633\",\"rate\":\"-0.00202(+0.7%)\",\"image\":\"65b9f6b86d7ff1706686136.png\"}', NULL, 'basic', NULL, '2024-01-30 19:28:56', '2024-01-30 19:28:56'),
(68, 'coverage.element', '{\"has_image\":\"1\",\"title\":\"AUDCHF\",\"number\":\"0.57633\",\"rate\":\"-0.00202(+0.7%)\",\"image\":\"65b9f6cd2d8f51706686157.png\"}', NULL, 'basic', NULL, '2024-01-30 19:29:17', '2024-01-30 19:29:17'),
(69, 'coverage.element', '{\"has_image\":\"1\",\"title\":\"AUDCHF\",\"number\":\"0.57633\",\"rate\":\"-0.00202(+0.7%)\",\"image\":\"65b9f6df99ec11706686175.png\"}', NULL, 'basic', NULL, '2024-01-30 19:29:35', '2024-01-30 19:29:35'),
(70, 'cta.content', '{\"heading\":\"we\'re here to accompany you every step along your path\",\"button_one_text\":\"Get founded\",\"button_one_url\":\"\\/\",\"button_two_text\":\"Contact Us\",\"button_two_url\":\"contact\"}', NULL, 'basic', NULL, '2024-01-30 19:30:35', '2024-04-03 02:58:25'),
(71, 'faq.content', '{\"title\":\"FAQ\",\"heading\":\"Want To Know More?\",\"subheading\":\"Browse our \'Frequently Asked Questions\' to learn more about our funding programs.\"}', NULL, 'basic', '', '2024-01-30 19:31:05', '2024-11-19 06:14:55'),
(72, 'faq.element', '{\"question\":\"What is Trading Funds?\",\"answer\":\"TradingFunds is a prop trading firm that provides traders with the capital, technology, and infrastructure needed to trade financial markets. We offer competitive payout structures, professional development programs, and a supportive community of traders.\"}', NULL, 'basic', NULL, '2024-01-30 19:32:36', '2024-01-30 19:32:36'),
(73, 'faq.element', '{\"question\":\"How do I become a trader with TradingFunds?\",\"answer\":\"TradingFunds is a prop trading firm that provides traders with the capital, technology, and infrastructure needed to trade financial markets. We offer competitive payout structures, professional development programs, and a supportive community of traders.\"}', NULL, 'basic', NULL, '2024-01-30 19:32:59', '2024-01-30 19:32:59'),
(74, 'faq.element', '{\"question\":\"How much capital can I trade with at Trading Funds?\",\"answer\":\"TradingFunds is a prop trading firm that provides traders with the capital, technology, and infrastructure needed to trade financial markets. We offer competitive payout structures, professional development programs, and a supportive community of traders.\"}', NULL, 'basic', NULL, '2024-01-30 19:33:33', '2024-01-30 19:33:33'),
(75, 'faq.element', '{\"question\":\"How much trading capital is provided by Trading Funds?\",\"answer\":\"Trading Funds provides a range of capital allocations based on the trader\'s skill level and the program chosen. Exact amounts vary and are detailed in their funding plans.\"}', NULL, 'basic', '', '2024-01-30 19:34:03', '2024-11-19 06:11:19'),
(76, 'faq.element', '{\"question\":\"What is the maximum capital I can manage with Trading Funds?\",\"answer\":\"The maximum capital depends on the plan and progression as a trader. Top-tier traders may manage significantly larger amounts, potentially reaching six or seven figures.\"}', NULL, 'basic', '', '2024-01-30 19:34:20', '2024-11-19 06:11:38'),
(77, 'footer.content', '{\"details\":\"The next level prop trading firm helping traders worldwide achieve their full earning potential.\"}', NULL, 'basic', '', '2024-01-30 19:35:08', '2024-11-24 00:37:07'),
(78, 'highlights.content', '{\"title\":\"HIGHLIGHTS\",\"heading\":\"Key Highlights\"}', NULL, 'basic', NULL, '2024-01-30 19:40:54', '2024-01-30 19:40:54'),
(79, 'highlights.element', '{\"heading\":\"Unlimited Simulated Trading Days\",\"subheading\":\"The original TFT challenge has been revamped to offer you exclusive opportunity of unlimited simulated trading days. You can also start off at $400K\"}', NULL, 'basic', NULL, '2024-01-30 19:41:11', '2024-01-30 19:41:11'),
(80, 'highlights.element', '{\"heading\":\"Additional Drawdown Add-on\",\"subheading\":\"The original TFT challenge has been revamped to offer you exclusive opportunity of unlimited simulated trading days. You can also start off at $400K\"}', NULL, 'basic', NULL, '2024-01-30 19:41:26', '2024-01-30 19:41:26'),
(81, 'highlights.element', '{\"heading\":\"EAs and Trade Copiers Add-on\",\"subheading\":\"The original TFT challenge has been revamped to offer you exclusive opportunity of unlimited simulated trading days. You can also start off at $400K\"}', NULL, 'basic', NULL, '2024-01-30 19:41:57', '2024-01-30 19:41:57'),
(82, 'how_it_work.content', '{\"title\":\"OUR PROCESS\",\"heading\":\"Pass the Evaluation, Get Funded\",\"subheading\":\"Start earning up to 95% of your gains with your TradingFunds Funded account.\",\"button_text\":\"Start Challenge\",\"button_url\":\"user\\/register\"}', NULL, 'basic', NULL, '2024-01-30 19:45:19', '2024-01-30 19:45:19'),
(83, 'how_it_work.element', '{\"heading\":\"1-Step Evaluation\",\"subheading\":\"Our streamlined funding process involves just one evaluation, making it quicker and more\",\"icon\":\"<i class=\\\"fas fa-chart-line\\\"><\\/i>\"}', NULL, 'basic', NULL, '2024-01-30 19:45:53', '2024-01-30 19:45:53'),
(84, 'how_it_work.element', '{\"heading\":\"2-Get Funded & Start Earning\",\"subheading\":\"Our streamlined funding process involves just one evaluation, making it quicker and more\",\"icon\":\"<i class=\\\"fas fa-file-invoice-dollar\\\"><\\/i>\"}', NULL, 'basic', NULL, '2024-01-30 19:46:23', '2024-01-30 19:46:23'),
(85, 'how_it_work.element', '{\"heading\":\"3-Earn and Grow\",\"subheading\":\"Our streamlined funding process involves just one evaluation, making it quicker and more\",\"icon\":\"<i class=\\\"fas fa-signal\\\"><\\/i>\"}', NULL, 'basic', NULL, '2024-01-30 19:48:19', '2024-01-30 19:48:19'),
(86, 'payouts.content', '{\"has_image\":\"1\",\"title\":\"PAYOUTS\",\"heading\":\"Payout System\",\"description\":\"The default payout ratio for all Funded Trader Accounts is set to 80% with the opportunity to become eligible for our Scaling Plan. If you meet the terms depending on the account type we will increase your virtual balance by up to 25%. You will also be updated to 90% simulated virtual profit splits! You can also qualify for our King\\u2019s Program, where you receive instant payouts and anytime withdrawals. As our Funded Trader you will be able to request payouts through the Trade Hub. The payout can be requested through our payout options, which include crypto and transfer. You can find more information in our help center. Your withdrawal is our priority as we strive to deliver all payouts within 24 hours!\",\"button_text\":\"Start Challenge\",\"button_url\":\"user\\/register\",\"image\":\"65b9fbb25165f1706687410.png\"}', NULL, 'basic', NULL, '2024-01-30 19:50:10', '2024-01-30 19:50:10'),
(87, 'pricing.content', '{\"heading\":\"Succeed In The Evaluation, Scale with us\",\"subheading\":\"Explore our detailed pricing table and kickstart your journey.Select the perfect evaluation program to begin today!\"}', NULL, 'basic', NULL, '2024-01-30 19:50:39', '2024-01-30 21:05:32'),
(88, 'social_icon.element', '{\"social_icon\":\"<i class=\\\"fab fa-linkedin\\\"><\\/i>\",\"url\":\"https:\\/\\/www.linkedin.com\"}', NULL, 'basic', '', '2024-01-30 19:51:48', '2024-11-24 00:09:37'),
(89, 'social_icon.element', '{\"social_icon\":\"<i class=\\\"fab fa-instagram\\\"><\\/i>\",\"url\":\"https:\\/\\/www.instagram.com\"}', NULL, 'basic', '', '2024-01-30 19:52:00', '2024-11-24 00:11:03'),
(90, 'testimonial.content', '{\"title\":\"TESTIMONIALS\",\"heading\":\"What People Are Saying About Us\"}', NULL, 'basic', NULL, '2024-01-30 19:53:08', '2024-01-30 19:53:08'),
(91, 'testimonial.element', '{\"has_image\":\"1\",\"name\":\"Jane Cooper\",\"designation\":\"Developer\",\"quote\":\"Started a challenge, nice and easy user interface.Found this firm through their review on the funded trading website. As for now I have no complaints. I will update in a few weeks if anything changes. Really like their website, the branding, their panel, just started a challenge on Monday but I am satisfied until now.\",\"rating\":\"5\",\"image\":\"65b9fc98c85db1706687640.png\"}', NULL, 'basic', NULL, '2024-01-30 19:54:00', '2024-01-30 19:54:00'),
(92, 'testimonial.element', '{\"has_image\":\"1\",\"name\":\"Jane Cooper\",\"designation\":\"Designer\",\"quote\":\"Started a challenge, nice and easy user interface.Found this firm through their review on the funded trading website. As for now I have no complaints. I will update in a few weeks if anything changes. Really like their website, the branding, their panel, just started a challenge on Monday but I am satisfied until now.\",\"rating\":\"5\",\"image\":\"65b9fca791bb91706687655.png\"}', NULL, 'basic', NULL, '2024-01-30 19:54:15', '2024-01-30 19:54:15'),
(93, 'why_choose_us.content', '{\"title\":\"THE BENEFITS\",\"heading\":\"Why Choose Funded Lab\",\"subheading\":\"Funded Lab provides traders an outstanding environment with a myriad of benefits, making it the ideal choice.\"}', NULL, 'basic', '', '2024-01-30 19:55:00', '2024-11-23 07:12:25'),
(94, 'why_choose_us.element', '{\"heading\":\"Comfortable trading\",\"subheading\":\"Our objective is to identify successful traders without the need for complex trading\",\"icon\":\"<i class=\\\"fas fa-dollar-sign\\\"><\\/i>\"}', NULL, 'basic', NULL, '2024-01-30 19:55:30', '2024-01-30 19:55:30'),
(95, 'why_choose_us.element', '{\"heading\":\"Maximum trading\",\"subheading\":\"No time pressure exists when trading, and you can scale up your activities as soon\",\"icon\":\"<i class=\\\"fas fa-meteor\\\"><\\/i>\"}', NULL, 'basic', NULL, '2024-01-30 19:56:24', '2024-01-30 19:56:24'),
(96, 'why_choose_us.element', '{\"heading\":\"Rapid Scaling plan\",\"subheading\":\"Our objective is to identify successful traders without the need for complex trading\",\"icon\":\"<i class=\\\"fas fa-chart-bar\\\"><\\/i>\"}', NULL, 'basic', NULL, '2024-01-30 19:57:51', '2024-01-30 19:57:51'),
(97, 'why_choose_us.element', '{\"heading\":\"Effortless pay-outs\",\"subheading\":\"With our streamlined pay-outs methods, you can quickly and easily withdraw your gains\",\"icon\":\"<i class=\\\"far fa-file-alt\\\"><\\/i>\"}', NULL, 'basic', NULL, '2024-01-30 19:58:39', '2024-01-30 19:58:39'),
(98, 'why_choose_us.element', '{\"heading\":\"No daily drawdown\",\"subheading\":\"There are no constraints on daily drawdown limits when trading. Trade without limitations!\",\"icon\":\"<i class=\\\"fas fa-coins\\\"><\\/i>\"}', NULL, 'basic', NULL, '2024-01-30 19:59:27', '2024-01-30 19:59:27'),
(99, 'why_choose_us.element', '{\"heading\":\"Refundable sign-up\",\"subheading\":\"Our objective is to identify successful traders without the need for complex trading\",\"icon\":\"<i class=\\\"fas fa-hand-holding-usd\\\"><\\/i>\"}', NULL, 'basic', NULL, '2024-01-30 20:00:04', '2024-01-30 20:00:04'),
(100, 'login.content', '{\"has_image\":\"1\",\"title\":\"Welcome back to login\",\"image\":\"673c2897dd2d31731995799.jpg\"}', NULL, 'basic', '', '2024-01-31 00:52:41', '2024-11-19 05:56:41'),
(101, 'register.content', '{\"has_image\":\"1\",\"title\":\"Sign up for free\",\"image\":\"673c28a6c82cd1731995814.jpg\"}', NULL, 'basic', '', '2024-01-31 21:47:31', '2024-11-19 05:56:55'),
(102, 'subscribe.content', '{\"heading\":\"Subscribe\",\"subheading\":\"Stay up to date Join our mailing list!\",\"button_text\":\"Subscribe\"}', NULL, 'basic', NULL, '2024-01-31 22:07:51', '2024-01-31 22:07:51'),
(103, 'kyc.content', '{\"required\":\"Please submit the required KYC information to verify yourself. Otherwise, you couldn\'t make any withdrawal requests to the system.\",\"pending\":\"Your submitted KYC information is pending for admin approval. Please wait till that.\",\"reject\":\"Your KYC document has been rejected. Please resubmit the document for further review.\"}', NULL, 'basic', '', '2024-10-28 10:54:09', '2024-10-28 10:54:09'),
(104, 'register_disable.content', '{\"has_image\":\"1\",\"heading\":\"Registration Currently Disabled\",\"subheading\":\"Registration unavailable: Please check back later for updates. Thank you for your patience.\",\"button_name\":\"Go Home\",\"button_url\":\"#\",\"image\":\"671f6f2fd37991730113327.png\"}', NULL, 'basic', '', '2024-10-28 11:02:07', '2024-10-28 11:02:07'),
(105, 'policy_pages.element', '{\"title\":\"Trade Policy\",\"details\":\"<h6>Introduction<\\/h6><h6><\\/h6><p>This Privacy Policy describes how we collects, uses, and discloses information, including personal information, in connection with your use of our website.<\\/p><div><br \\/><\\/div>\\r\\n        <h6>Information We Collect<\\/h6>\\r\\n        <p>We collect two main types of information on the Website:<\\/p>\\r\\n        <ul>\\r\\n            <li><p><strong>Personal Information: <\\/strong>This includes data that can identify you as an individual, such as your name, email address, phone number, or mailing address. We only collect this information when you voluntarily provide it to us, like signing up for a newsletter, contacting us through a form, or making a purchase.<\\/p><\\/li>\\r\\n            <li><p><strong>Non-Personal Information: <\\/strong>This data cannot be used to identify you directly. It includes details like your browser type, device type, operating system, IP address, browsing activity, and usage statistics. We collect this information automatically through cookies and other tracking technologies.<\\/p><\\/li>\\r\\n        <\\/ul>\\r\\n        <br \\/>\\r\\n        <h6>How We Use Information<\\/h6>\\r\\n        <p>The information we collect allows us to:<\\/p>\\r\\n        <ul>\\r\\n            <li>Operate and maintain the Website effectively.<\\/li>\\r\\n            <li>Send you newsletters or marketing communications, but only with your consent.<\\/li>\\r\\n            <li>Respond to your inquiries and fulfill your requests.<\\/li>\\r\\n            <li>Improve the Website and your user experience.<\\/li>\\r\\n            <li>Personalize your experience on the Website based on your browsing habits.<\\/li>\\r\\n            <li>Analyze how the Website is used to improve our services.<\\/li>\\r\\n            <li>Comply with legal and regulatory requirements.<\\/li>\\r\\n        <\\/ul>\\r\\n        <br \\/>\\r\\n        <h6>Sharing of Information<\\/h6>\\r\\n        <p>We may share your information with trusted third-party service providers who assist us in operating the Website and delivering our services. These providers are obligated by contract to keep your information confidential and use it only for the specific purposes we disclose it for.<\\/p>\\r\\n        <p>We will never share your personal information with any third parties for marketing purposes without your explicit consent.<\\/p>\\r\\n        <br \\/>\\r\\n        <h6>Data Retention<\\/h6>\\r\\n        <p>We retain your personal information only for as long as necessary to fulfill the purposes it was collected for. We may retain it for longer periods only if required or permitted by law.<\\/p>\\r\\n        <br \\/>\\r\\n        <h6>Security Measures<\\/h6>\\r\\n        <p>We take reasonable precautions to protect your information from unauthorized access, disclosure, alteration, or destruction. However, complete security cannot be guaranteed for any website or internet transmission.<\\/p>\\r\\n        <br \\/>\\r\\n        <h6>Changes to this Privacy Policy<\\/h6>\\r\\n        <p>We may update this Privacy Policy periodically. We will notify you of any changes by posting the revised policy on the Website. We recommend reviewing this policy regularly to stay informed of any updates.<\\/p>\\r\\n        <p><strong>Remember:<\\/strong>  This is a sample policy and may need adjustments to comply with specific laws and reflect your website\'s unique data practices. Consider consulting with a legal professional to ensure your policy is fully compliant.<\\/p>\"}', NULL, 'basic', 'trade-policy', '2024-11-24 00:15:16', '2024-11-24 04:38:29');

-- --------------------------------------------------------

--
-- Table structure for table `gateways`
--

CREATE TABLE `gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `code` int(11) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `alias` varchar(40) NOT NULL DEFAULT 'NULL',
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=>enable, 2=>disable',
  `gateway_parameters` text DEFAULT NULL,
  `supported_currencies` text DEFAULT NULL,
  `crypto` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: fiat currency, 1: crypto currency',
  `extra` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gateways`
--

INSERT INTO `gateways` (`id`, `form_id`, `code`, `name`, `alias`, `image`, `status`, `gateway_parameters`, `supported_currencies`, `crypto`, `extra`, `description`, `created_at`, `updated_at`) VALUES
(1, 0, 101, 'Paypal', 'Paypal', '664dfd7220ea11716387186.png', 0, '{\"paypal_email\":{\"title\":\"PayPal Email\",\"global\":true,\"value\":\"------------\"}}', '{\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"TWD\":\"TWD\",\"NZD\":\"NZD\",\"NOK\":\"NOK\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"GBP\":\"GBP\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"USD\":\"$\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2024-11-25 06:13:27'),
(2, 0, 102, 'Perfect Money', 'PerfectMoney', '664dfdbde08241716387261.png', 0, '{\"passphrase\":{\"title\":\"ALTERNATE PASSPHRASE\",\"global\":true,\"value\":\"-------------\"},\"wallet_id\":{\"title\":\"PM Wallet\",\"global\":false,\"value\":\"\"}}', '{\"USD\":\"$\",\"EUR\":\"\\u20ac\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2024-11-25 06:14:06'),
(3, 0, 103, 'Stripe Hosted', 'Stripe', '664dfe040cd961716387332.png', 0, '{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"------------\"},\"publishable_key\":{\"title\":\"PUBLISHABLE KEY\",\"global\":true,\"value\":\"----------\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2024-11-25 06:14:30'),
(4, 0, 104, 'Skrill', 'Skrill', '664dfde4de9ce1716387300.png', 0, '{\"pay_to_email\":{\"title\":\"Skrill Email\",\"global\":true,\"value\":\"---------\"},\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"-----------\"}}', '{\"AED\":\"AED\",\"AUD\":\"AUD\",\"BGN\":\"BGN\",\"BHD\":\"BHD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"HRK\":\"HRK\",\"HUF\":\"HUF\",\"ILS\":\"ILS\",\"INR\":\"INR\",\"ISK\":\"ISK\",\"JOD\":\"JOD\",\"JPY\":\"JPY\",\"KRW\":\"KRW\",\"KWD\":\"KWD\",\"MAD\":\"MAD\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"OMR\":\"OMR\",\"PLN\":\"PLN\",\"QAR\":\"QAR\",\"RON\":\"RON\",\"RSD\":\"RSD\",\"SAR\":\"SAR\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TND\":\"TND\",\"TRY\":\"TRY\",\"TWD\":\"TWD\",\"USD\":\"USD\",\"ZAR\":\"ZAR\",\"COP\":\"COP\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2024-11-25 06:14:20'),
(5, 0, 105, 'PayTM', 'Paytm', '664dfdab9a3541716387243.png', 0, '{\"MID\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"-------------\"},\"merchant_key\":{\"title\":\"Merchant Key\",\"global\":true,\"value\":\"------------\"},\"WEBSITE\":{\"title\":\"Paytm Website\",\"global\":true,\"value\":\"---------\"},\"INDUSTRY_TYPE_ID\":{\"title\":\"Industry Type\",\"global\":true,\"value\":\"---------------\"},\"CHANNEL_ID\":{\"title\":\"CHANNEL ID\",\"global\":true,\"value\":\"-------------\"},\"transaction_url\":{\"title\":\"Transaction URL\",\"global\":true,\"value\":\"--------------------\"},\"transaction_status_url\":{\"title\":\"Transaction STATUS URL\",\"global\":true,\"value\":\"----------------\"}}', '{\"AUD\":\"AUD\",\"ARS\":\"ARS\",\"BDT\":\"BDT\",\"BRL\":\"BRL\",\"BGN\":\"BGN\",\"CAD\":\"CAD\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"COP\":\"COP\",\"HRK\":\"HRK\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EGP\":\"EGP\",\"EUR\":\"EUR\",\"GEL\":\"GEL\",\"GHS\":\"GHS\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"KES\":\"KES\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"MAD\":\"MAD\",\"NPR\":\"NPR\",\"NZD\":\"NZD\",\"NGN\":\"NGN\",\"NOK\":\"NOK\",\"PKR\":\"PKR\",\"PEN\":\"PEN\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"RON\":\"RON\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"ZAR\":\"ZAR\",\"KRW\":\"KRW\",\"LKR\":\"LKR\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"TRY\":\"TRY\",\"UGX\":\"UGX\",\"UAH\":\"UAH\",\"AED\":\"AED\",\"GBP\":\"GBP\",\"USD\":\"USD\",\"VND\":\"VND\",\"XOF\":\"XOF\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2024-11-25 06:14:00'),
(6, 0, 106, 'Payeer', 'Payeer', '664dfd5e82cc51716387166.png', 0, '{\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"---------\"},\"secret_key\":{\"title\":\"Secret key\",\"global\":true,\"value\":\"------\"}}', '{\"USD\":\"USD\",\"EUR\":\"EUR\",\"RUB\":\"RUB\"}', 0, '{\"status\":{\"title\": \"Status URL\",\"value\":\"ipn.Payeer\"}}', NULL, '2019-09-14 13:14:22', '2024-11-25 06:13:22'),
(7, 0, 107, 'PayStack', 'Paystack', '664dfd95568601716387221.png', 0, '{\"public_key\":{\"title\":\"Public key\",\"global\":true,\"value\":\"-----------\"},\"secret_key\":{\"title\":\"Secret key\",\"global\":true,\"value\":\"-----------\"}}', '{\"USD\":\"USD\",\"NGN\":\"NGN\"}', 0, '{\"callback\":{\"title\": \"Callback URL\",\"value\":\"ipn.Paystack\"},\"webhook\":{\"title\": \"Webhook URL\",\"value\":\"ipn.Paystack\"}}\r\n', NULL, '2019-09-14 13:14:22', '2024-11-25 06:13:47'),
(9, 0, 109, 'Flutterwave', 'Flutterwave', '664dfcc5090a81716387013.png', 0, '{\"public_key\":{\"title\":\"Public Key\",\"global\":true,\"value\":\"----------------\"},\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"-----------------------\"},\"encryption_key\":{\"title\":\"Encryption Key\",\"global\":true,\"value\":\"------------------\"}}', '{\"BIF\":\"BIF\",\"CAD\":\"CAD\",\"CDF\":\"CDF\",\"CVE\":\"CVE\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"GHS\":\"GHS\",\"GMD\":\"GMD\",\"GNF\":\"GNF\",\"KES\":\"KES\",\"LRD\":\"LRD\",\"MWK\":\"MWK\",\"MZN\":\"MZN\",\"NGN\":\"NGN\",\"RWF\":\"RWF\",\"SLL\":\"SLL\",\"STD\":\"STD\",\"TZS\":\"TZS\",\"UGX\":\"UGX\",\"USD\":\"USD\",\"XAF\":\"XAF\",\"XOF\":\"XOF\",\"ZMK\":\"ZMK\",\"ZMW\":\"ZMW\",\"ZWD\":\"ZWD\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2024-05-07 08:12:18'),
(10, 0, 110, 'RazorPay', 'Razorpay', '664dfdd5dc6711716387285.png', 0, '{\"key_id\":{\"title\":\"Key Id\",\"global\":true,\"value\":\"----------\"},\"key_secret\":{\"title\":\"Key Secret \",\"global\":true,\"value\":\"------------\"}}', '{\"INR\":\"INR\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2024-11-25 06:14:13'),
(11, 0, 111, 'Stripe Storefront', 'StripeJs', '664dfe135db781716387347.png', 0, '{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"-------------\"},\"publishable_key\":{\"title\":\"PUBLISHABLE KEY\",\"global\":true,\"value\":\"--------------\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2024-11-25 06:14:37'),
(12, 0, 112, 'Instamojo', 'Instamojo', '664dfcdd1400b1716387037.png', 0, '{\"api_key\":{\"title\":\"API KEY\",\"global\":true,\"value\":\"-------------\"},\"auth_token\":{\"title\":\"Auth Token\",\"global\":true,\"value\":\"-----------\"},\"salt\":{\"title\":\"Salt\",\"global\":true,\"value\":\"------------\"}}', '{\"INR\":\"INR\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2024-11-25 06:12:44'),
(13, 0, 501, 'Blockchain', 'Blockchain', '664dfbe83f9da1716386792.png', 0, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"----------------\"},\"xpub_code\":{\"title\":\"XPUB CODE\",\"global\":true,\"value\":\"------------\"}}', '{\"BTC\":\"BTC\"}', 1, NULL, NULL, '2019-09-14 13:14:22', '2024-11-25 06:12:03'),
(15, 0, 503, 'CoinPayments', 'Coinpayments', '664dfc7d215d21716386941.png', 0, '{\"public_key\":{\"title\":\"Public Key\",\"global\":true,\"value\":\"---------------------\"},\"private_key\":{\"title\":\"Private Key\",\"global\":true,\"value\":\"---------------------\"},\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"---------------------\"}}', '{\"BTC\":\"Bitcoin\",\"BTC.LN\":\"Bitcoin (Lightning Network)\",\"LTC\":\"Litecoin\",\"CPS\":\"CPS Coin\",\"VLX\":\"Velas\",\"APL\":\"Apollo\",\"AYA\":\"Aryacoin\",\"BAD\":\"Badcoin\",\"BCD\":\"Bitcoin Diamond\",\"BCH\":\"Bitcoin Cash\",\"BCN\":\"Bytecoin\",\"BEAM\":\"BEAM\",\"BITB\":\"Bean Cash\",\"BLK\":\"BlackCoin\",\"BSV\":\"Bitcoin SV\",\"BTAD\":\"Bitcoin Adult\",\"BTG\":\"Bitcoin Gold\",\"BTT\":\"BitTorrent\",\"CLOAK\":\"CloakCoin\",\"CLUB\":\"ClubCoin\",\"CRW\":\"Crown\",\"CRYP\":\"CrypticCoin\",\"CRYT\":\"CryTrExCoin\",\"CURE\":\"CureCoin\",\"DASH\":\"DASH\",\"DCR\":\"Decred\",\"DEV\":\"DeviantCoin\",\"DGB\":\"DigiByte\",\"DOGE\":\"Dogecoin\",\"EBST\":\"eBoost\",\"EOS\":\"EOS\",\"ETC\":\"Ether Classic\",\"ETH\":\"Ethereum\",\"ETN\":\"Electroneum\",\"EUNO\":\"EUNO\",\"EXP\":\"EXP\",\"Expanse\":\"Expanse\",\"FLASH\":\"FLASH\",\"GAME\":\"GameCredits\",\"GLC\":\"Goldcoin\",\"GRS\":\"Groestlcoin\",\"KMD\":\"Komodo\",\"LOKI\":\"LOKI\",\"LSK\":\"LSK\",\"MAID\":\"MaidSafeCoin\",\"MUE\":\"MonetaryUnit\",\"NAV\":\"NAV Coin\",\"NEO\":\"NEO\",\"NMC\":\"Namecoin\",\"NVST\":\"NVO Token\",\"NXT\":\"NXT\",\"OMNI\":\"OMNI\",\"PINK\":\"PinkCoin\",\"PIVX\":\"PIVX\",\"POT\":\"PotCoin\",\"PPC\":\"Peercoin\",\"PROC\":\"ProCurrency\",\"PURA\":\"PURA\",\"QTUM\":\"QTUM\",\"RES\":\"Resistance\",\"RVN\":\"Ravencoin\",\"RVR\":\"RevolutionVR\",\"SBD\":\"Steem Dollars\",\"SMART\":\"SmartCash\",\"SOXAX\":\"SOXAX\",\"STEEM\":\"STEEM\",\"STRAT\":\"STRAT\",\"SYS\":\"Syscoin\",\"TPAY\":\"TokenPay\",\"TRIGGERS\":\"Triggers\",\"TRX\":\" TRON\",\"UBQ\":\"Ubiq\",\"UNIT\":\"UniversalCurrency\",\"USDT\":\"Tether USD (Omni Layer)\",\"USDT.BEP20\":\"Tether USD (BSC Chain)\",\"USDT.ERC20\":\"Tether USD (ERC20)\",\"USDT.TRC20\":\"Tether USD (Tron/TRC20)\",\"VTC\":\"Vertcoin\",\"WAVES\":\"Waves\",\"XCP\":\"Counterparty\",\"XEM\":\"NEM\",\"XMR\":\"Monero\",\"XSN\":\"Stakenet\",\"XSR\":\"SucreCoin\",\"XVG\":\"VERGE\",\"XZC\":\"ZCoin\",\"ZEC\":\"ZCash\",\"ZEN\":\"Horizen\"}', 1, NULL, NULL, '2019-09-14 13:14:22', '2024-05-07 08:11:52'),
(16, 0, 504, 'CoinPayments Fiat', 'CoinpaymentsFiat', '664dfcb43e4821716386996.png', 0, '{\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"---------\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"ISK\":\"ISK\",\"JPY\":\"JPY\",\"KRW\":\"KRW\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"RUB\":\"RUB\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TWD\":\"TWD\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2024-11-25 06:12:33'),
(17, 0, 505, 'Coingate', 'Coingate', '664dfc56873fa1716386902.png', 0, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"----------\"}}', '{\"USD\":\"USD\",\"EUR\":\"EUR\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2024-11-25 06:12:25'),
(18, 0, 506, 'Coinbase Commerce', 'CoinbaseCommerce', '664dfc379fda91716386871.png', 0, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"-----------\"},\"secret\":{\"title\":\"Webhook Shared Secret\",\"global\":true,\"value\":\"--------\"}}', '{\"USD\":\"USD\",\"EUR\":\"EUR\",\"JPY\":\"JPY\",\"GBP\":\"GBP\",\"AUD\":\"AUD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CNY\":\"CNY\",\"SEK\":\"SEK\",\"NZD\":\"NZD\",\"MXN\":\"MXN\",\"SGD\":\"SGD\",\"HKD\":\"HKD\",\"NOK\":\"NOK\",\"KRW\":\"KRW\",\"TRY\":\"TRY\",\"RUB\":\"RUB\",\"INR\":\"INR\",\"BRL\":\"BRL\",\"ZAR\":\"ZAR\",\"AED\":\"AED\",\"AFN\":\"AFN\",\"ALL\":\"ALL\",\"AMD\":\"AMD\",\"ANG\":\"ANG\",\"AOA\":\"AOA\",\"ARS\":\"ARS\",\"AWG\":\"AWG\",\"AZN\":\"AZN\",\"BAM\":\"BAM\",\"BBD\":\"BBD\",\"BDT\":\"BDT\",\"BGN\":\"BGN\",\"BHD\":\"BHD\",\"BIF\":\"BIF\",\"BMD\":\"BMD\",\"BND\":\"BND\",\"BOB\":\"BOB\",\"BSD\":\"BSD\",\"BTN\":\"BTN\",\"BWP\":\"BWP\",\"BYN\":\"BYN\",\"BZD\":\"BZD\",\"CDF\":\"CDF\",\"CLF\":\"CLF\",\"CLP\":\"CLP\",\"COP\":\"COP\",\"CRC\":\"CRC\",\"CUC\":\"CUC\",\"CUP\":\"CUP\",\"CVE\":\"CVE\",\"CZK\":\"CZK\",\"DJF\":\"DJF\",\"DKK\":\"DKK\",\"DOP\":\"DOP\",\"DZD\":\"DZD\",\"EGP\":\"EGP\",\"ERN\":\"ERN\",\"ETB\":\"ETB\",\"FJD\":\"FJD\",\"FKP\":\"FKP\",\"GEL\":\"GEL\",\"GGP\":\"GGP\",\"GHS\":\"GHS\",\"GIP\":\"GIP\",\"GMD\":\"GMD\",\"GNF\":\"GNF\",\"GTQ\":\"GTQ\",\"GYD\":\"GYD\",\"HNL\":\"HNL\",\"HRK\":\"HRK\",\"HTG\":\"HTG\",\"HUF\":\"HUF\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"IMP\":\"IMP\",\"IQD\":\"IQD\",\"IRR\":\"IRR\",\"ISK\":\"ISK\",\"JEP\":\"JEP\",\"JMD\":\"JMD\",\"JOD\":\"JOD\",\"KES\":\"KES\",\"KGS\":\"KGS\",\"KHR\":\"KHR\",\"KMF\":\"KMF\",\"KPW\":\"KPW\",\"KWD\":\"KWD\",\"KYD\":\"KYD\",\"KZT\":\"KZT\",\"LAK\":\"LAK\",\"LBP\":\"LBP\",\"LKR\":\"LKR\",\"LRD\":\"LRD\",\"LSL\":\"LSL\",\"LYD\":\"LYD\",\"MAD\":\"MAD\",\"MDL\":\"MDL\",\"MGA\":\"MGA\",\"MKD\":\"MKD\",\"MMK\":\"MMK\",\"MNT\":\"MNT\",\"MOP\":\"MOP\",\"MRO\":\"MRO\",\"MUR\":\"MUR\",\"MVR\":\"MVR\",\"MWK\":\"MWK\",\"MYR\":\"MYR\",\"MZN\":\"MZN\",\"NAD\":\"NAD\",\"NGN\":\"NGN\",\"NIO\":\"NIO\",\"NPR\":\"NPR\",\"OMR\":\"OMR\",\"PAB\":\"PAB\",\"PEN\":\"PEN\",\"PGK\":\"PGK\",\"PHP\":\"PHP\",\"PKR\":\"PKR\",\"PLN\":\"PLN\",\"PYG\":\"PYG\",\"QAR\":\"QAR\",\"RON\":\"RON\",\"RSD\":\"RSD\",\"RWF\":\"RWF\",\"SAR\":\"SAR\",\"SBD\":\"SBD\",\"SCR\":\"SCR\",\"SDG\":\"SDG\",\"SHP\":\"SHP\",\"SLL\":\"SLL\",\"SOS\":\"SOS\",\"SRD\":\"SRD\",\"SSP\":\"SSP\",\"STD\":\"STD\",\"SVC\":\"SVC\",\"SYP\":\"SYP\",\"SZL\":\"SZL\",\"THB\":\"THB\",\"TJS\":\"TJS\",\"TMT\":\"TMT\",\"TND\":\"TND\",\"TOP\":\"TOP\",\"TTD\":\"TTD\",\"TWD\":\"TWD\",\"TZS\":\"TZS\",\"UAH\":\"UAH\",\"UGX\":\"UGX\",\"UYU\":\"UYU\",\"UZS\":\"UZS\",\"VEF\":\"VEF\",\"VND\":\"VND\",\"VUV\":\"VUV\",\"WST\":\"WST\",\"XAF\":\"XAF\",\"XAG\":\"XAG\",\"XAU\":\"XAU\",\"XCD\":\"XCD\",\"XDR\":\"XDR\",\"XOF\":\"XOF\",\"XPD\":\"XPD\",\"XPF\":\"XPF\",\"XPT\":\"XPT\",\"YER\":\"YER\",\"ZMW\":\"ZMW\",\"ZWL\":\"ZWL\"}\r\n\r\n', 0, '{\"endpoint\":{\"title\": \"Webhook Endpoint\",\"value\":\"ipn.CoinbaseCommerce\"}}', NULL, '2019-09-14 13:14:22', '2024-11-25 06:12:20'),
(24, 0, 113, 'Paypal Express', 'PaypalSdk', '664dfd81a377c1716387201.png', 0, '{\"clientId\":{\"title\":\"Paypal Client ID\",\"global\":true,\"value\":\"----------\"},\"clientSecret\":{\"title\":\"Client Secret\",\"global\":true,\"value\":\"----------\"}}', '{\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"TWD\":\"TWD\",\"NZD\":\"NZD\",\"NOK\":\"NOK\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"GBP\":\"GBP\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"USD\":\"$\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2024-11-25 06:13:35'),
(25, 0, 114, 'Stripe Checkout', 'StripeV3', '664dfe21196ce1716387361.png', 0, '{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"--------------\"},\"publishable_key\":{\"title\":\"PUBLISHABLE KEY\",\"global\":true,\"value\":\"-------------\"},\"end_point\":{\"title\":\"End Point Secret\",\"global\":true,\"value\":\"-------------\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}', 0, '{\"webhook\":{\"title\": \"Webhook Endpoint\",\"value\":\"ipn.StripeV3\"}}', NULL, '2019-09-14 13:14:22', '2024-11-25 06:14:44'),
(27, 0, 115, 'Mollie', 'Mollie', '664dfd0d48b421716387085.png', 0, '{\"mollie_email\":{\"title\":\"Mollie Email \",\"global\":true,\"value\":\"----------\"},\"api_key\":{\"title\":\"API KEY\",\"global\":true,\"value\":\"---------\"}}', '{\"AED\":\"AED\",\"AUD\":\"AUD\",\"BGN\":\"BGN\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"HRK\":\"HRK\",\"HUF\":\"HUF\",\"ILS\":\"ILS\",\"ISK\":\"ISK\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"RON\":\"RON\",\"RUB\":\"RUB\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TWD\":\"TWD\",\"USD\":\"USD\",\"ZAR\":\"ZAR\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2024-11-25 06:12:57'),
(30, 0, 116, 'Cashmaal', 'Cashmaal', '664dfbf8bff2c1716386808.png', 0, '{\"web_id\":{\"title\":\"Web Id\",\"global\":true,\"value\":\"------------\"},\"ipn_key\":{\"title\":\"IPN Key\",\"global\":true,\"value\":\"--------\"}}', '{\"PKR\":\"PKR\",\"USD\":\"USD\"}', 0, '{\"webhook\":{\"title\": \"IPN URL\",\"value\":\"ipn.Cashmaal\"}}', NULL, NULL, '2024-11-25 06:12:10'),
(36, 0, 119, 'Mercado Pago', 'MercadoPago', '664dfcf15fb551716387057.png', 0, '{\"access_token\":{\"title\":\"Access Token\",\"global\":true,\"value\":\"--------------\"}}', '{\"USD\":\"USD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"NOK\":\"NOK\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"AUD\":\"AUD\",\"NZD\":\"NZD\"}', 0, NULL, NULL, NULL, '2024-11-25 06:12:50'),
(37, 0, 120, 'Authorize.net', 'Authorize', '664dfbac8036a1716386732.png', 0, '{\"login_id\":{\"title\":\"Login ID\",\"global\":true,\"value\":\"--------\"},\"transaction_key\":{\"title\":\"Transaction Key\",\"global\":true,\"value\":\"-------------\"}}', '{\"USD\":\"USD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"NOK\":\"NOK\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"AUD\":\"AUD\",\"NZD\":\"NZD\"}', 0, NULL, NULL, NULL, '2024-11-25 06:11:35'),
(46, 0, 121, 'NMI', 'NMI', '664dfd1dd6b5b1716387101.png', 0, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"-----------\"}}', '{\"AED\":\"AED\",\"ARS\":\"ARS\",\"AUD\":\"AUD\",\"BOB\":\"BOB\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"COP\":\"COP\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"KRW\":\"KRW\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PEN\":\"PEN\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"PYG\":\"PYG\",\"RUB\":\"RUB\",\"SEC\":\"SEC\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TRY\":\"TRY\",\"TWD\":\"TWD\",\"USD\":\"USD\",\"ZAR\":\"ZAR\"}', 0, NULL, NULL, NULL, '2024-11-25 06:13:02'),
(50, 0, 507, 'BTCPay', 'BTCPay', '664dfbb91985a1716386745.png', 0, '{\"store_id\":{\"title\":\"Store Id\",\"global\":true,\"value\":\"-----------\"},\"api_key\":{\"title\":\"Api Key\",\"global\":true,\"value\":\"---------------\"},\"server_name\":{\"title\":\"Server Name\",\"global\":true,\"value\":\"-----------\"},\"secret_code\":{\"title\":\"Secret Code\",\"global\":true,\"value\":\"-------------\"}}', '{\"BTC\":\"Bitcoin\",\"LTC\":\"Litecoin\"}', 1, '{\"webhook\":{\"title\": \"IPN URL\",\"value\":\"ipn.BTCPay\"}}', NULL, NULL, '2024-11-25 06:11:46'),
(51, 0, 508, 'Now payments hosted', 'NowPaymentsHosted', '664dfd47bc3b51716387143.png', 0, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"--------\"},\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"------------\"}}', '{\"BTG\":\"BTG\",\"ETH\":\"ETH\",\"XMR\":\"XMR\",\"ZEC\":\"ZEC\",\"XVG\":\"XVG\",\"ADA\":\"ADA\",\"LTC\":\"LTC\",\"BCH\":\"BCH\",\"QTUM\":\"QTUM\",\"DASH\":\"DASH\",\"XLM\":\"XLM\",\"XRP\":\"XRP\",\"XEM\":\"XEM\",\"DGB\":\"DGB\",\"LSK\":\"LSK\",\"DOGE\":\"DOGE\",\"TRX\":\"TRX\",\"KMD\":\"KMD\",\"REP\":\"REP\",\"BAT\":\"BAT\",\"ARK\":\"ARK\",\"WAVES\":\"WAVES\",\"BNB\":\"BNB\",\"XZC\":\"XZC\",\"NANO\":\"NANO\",\"TUSD\":\"TUSD\",\"VET\":\"VET\",\"ZEN\":\"ZEN\",\"GRS\":\"GRS\",\"FUN\":\"FUN\",\"NEO\":\"NEO\",\"GAS\":\"GAS\",\"PAX\":\"PAX\",\"USDC\":\"USDC\",\"ONT\":\"ONT\",\"XTZ\":\"XTZ\",\"LINK\":\"LINK\",\"RVN\":\"RVN\",\"BNBMAINNET\":\"BNBMAINNET\",\"ZIL\":\"ZIL\",\"BCD\":\"BCD\",\"USDT\":\"USDT\",\"USDTERC20\":\"USDTERC20\",\"CRO\":\"CRO\",\"DAI\":\"DAI\",\"HT\":\"HT\",\"WABI\":\"WABI\",\"BUSD\":\"BUSD\",\"ALGO\":\"ALGO\",\"USDTTRC20\":\"USDTTRC20\",\"GT\":\"GT\",\"STPT\":\"STPT\",\"AVA\":\"AVA\",\"SXP\":\"SXP\",\"UNI\":\"UNI\",\"OKB\":\"OKB\",\"BTC\":\"BTC\"}', 1, '', NULL, NULL, '2024-05-07 08:20:40'),
(52, 0, 509, 'Now payments checkout', 'NowPaymentsCheckout', '664dfd302a2281716387120.png', 0, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"---------------\"},\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"-----------\"}}', '{\"USD\":\"USD\",\"EUR\":\"EUR\"}', 1, '', NULL, NULL, '2024-05-07 08:20:21'),
(53, 0, 122, '2Checkout', 'TwoCheckout', '664dfe3a690001716387386.png', 0, '{\"merchant_code\":{\"title\":\"Merchant Code\",\"global\":true,\"value\":\"-------------\"},\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"-----------\"}}', '{\"AFN\": \"AFN\",\"ALL\": \"ALL\",\"DZD\": \"DZD\",\"ARS\": \"ARS\",\"AUD\": \"AUD\",\"AZN\": \"AZN\",\"BSD\": \"BSD\",\"BDT\": \"BDT\",\"BBD\": \"BBD\",\"BZD\": \"BZD\",\"BMD\": \"BMD\",\"BOB\": \"BOB\",\"BWP\": \"BWP\",\"BRL\": \"BRL\",\"GBP\": \"GBP\",\"BND\": \"BND\",\"BGN\": \"BGN\",\"CAD\": \"CAD\",\"CLP\": \"CLP\",\"CNY\": \"CNY\",\"COP\": \"COP\",\"CRC\": \"CRC\",\"HRK\": \"HRK\",\"CZK\": \"CZK\",\"DKK\": \"DKK\",\"DOP\": \"DOP\",\"XCD\": \"XCD\",\"EGP\": \"EGP\",\"EUR\": \"EUR\",\"FJD\": \"FJD\",\"GTQ\": \"GTQ\",\"HKD\": \"HKD\",\"HNL\": \"HNL\",\"HUF\": \"HUF\",\"INR\": \"INR\",\"IDR\": \"IDR\",\"ILS\": \"ILS\",\"JMD\": \"JMD\",\"JPY\": \"JPY\",\"KZT\": \"KZT\",\"KES\": \"KES\",\"LAK\": \"LAK\",\"MMK\": \"MMK\",\"LBP\": \"LBP\",\"LRD\": \"LRD\",\"MOP\": \"MOP\",\"MYR\": \"MYR\",\"MVR\": \"MVR\",\"MRO\": \"MRO\",\"MUR\": \"MUR\",\"MXN\": \"MXN\",\"MAD\": \"MAD\",\"NPR\": \"NPR\",\"TWD\": \"TWD\",\"NZD\": \"NZD\",\"NIO\": \"NIO\",\"NOK\": \"NOK\",\"PKR\": \"PKR\",\"PGK\": \"PGK\",\"PEN\": \"PEN\",\"PHP\": \"PHP\",\"PLN\": \"PLN\",\"QAR\": \"QAR\",\"RON\": \"RON\",\"RUB\": \"RUB\",\"WST\": \"WST\",\"SAR\": \"SAR\",\"SCR\": \"SCR\",\"SGD\": \"SGD\",\"SBD\": \"SBD\",\"ZAR\": \"ZAR\",\"KRW\": \"KRW\",\"LKR\": \"LKR\",\"SEK\": \"SEK\",\"CHF\": \"CHF\",\"SYP\": \"SYP\",\"THB\": \"THB\",\"TOP\": \"TOP\",\"TTD\": \"TTD\",\"TRY\": \"TRY\",\"UAH\": \"UAH\",\"AED\": \"AED\",\"USD\": \"USD\",\"VUV\": \"VUV\",\"VND\": \"VND\",\"XOF\": \"XOF\",\"YER\": \"YER\"}', 0, '{\"approved_url\":{\"title\": \"Approved URL\",\"value\":\"ipn.TwoCheckout\"}}', NULL, NULL, '2024-11-25 06:14:52'),
(54, 0, 123, 'Checkout', 'Checkout', '664dfc212b4db1716386849.png', 0, '{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"------\"},\"public_key\":{\"title\":\"PUBLIC KEY\",\"global\":true,\"value\":\"------\"},\"processing_channel_id\":{\"title\":\"PROCESSING CHANNEL\",\"global\":true,\"value\":\"------\"}}', '{\"USD\":\"USD\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"AUD\":\"AUD\",\"CAN\":\"CAN\",\"CHF\":\"CHF\",\"SGD\":\"SGD\",\"JPY\":\"JPY\",\"NZD\":\"NZD\"}', 0, NULL, NULL, NULL, '2024-05-07 08:09:44'),
(56, 0, 510, 'Binance', 'Binance', '664dfbc84638c1716386760.png', 0, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"-------------\"},\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"-----------------\"},\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"-------------\"}}', '{\"BTC\":\"Bitcoin\",\"USD\":\"USD\",\"BNB\":\"BNB\"}', 1, '{\"cron\":{\"title\": \"Cron Job URL\",\"value\":\"ipn.Binance\"}}', NULL, NULL, '2024-11-25 06:11:54'),
(57, 0, 124, 'SslCommerz', 'SslCommerz', '664dfdf36a9af1716387315.png', 0, '{\"store_id\":{\"title\":\"Store ID\",\"global\":true,\"value\":\"---------\"},\"store_password\":{\"title\":\"Store Password\",\"global\":true,\"value\":\"----------\"}}', '{\"BDT\":\"BDT\",\"USD\":\"USD\",\"EUR\":\"EUR\",\"SGD\":\"SGD\",\"INR\":\"INR\",\"MYR\":\"MYR\"}', 0, NULL, NULL, NULL, '2024-05-07 08:23:54'),
(58, 0, 125, 'Aamarpay', 'Aamarpay', '664dfb74187251716386676.png', 0, '{\"store_id\":{\"title\":\"Store ID\",\"global\":true,\"value\":\"---------\"},\"signature_key\":{\"title\":\"Signature Key\",\"global\":true,\"value\":\"----------\"}}', '{\"BDT\":\"BDT\"}', 0, NULL, NULL, NULL, '2024-05-07 08:04:05'),
(61, 2, 1000, 'Bitcoin', 'bitcoin', '67985a39701681738037817.png', 1, '[]', '[]', 0, NULL, 'jhuhuruerueruwiurieru', '2025-01-28 03:17:02', '2025-01-28 03:17:02'),
(63, 2, 2000, 'USDT', 'usdtcoin', '67985a39701681738037817.png', 1, '[]', '[]', 0, NULL, 'erggugbhjnvbn\r\n', '2025-01-28 03:17:02', '2025-01-28 03:17:02'),
(64, 2, 2001, 'BTC', 'bitcoin', 'btc_image.png', 1, '[]', '[]', 1, NULL, 'Bitcoin payment gateway', '2025-01-28 03:17:02', '2025-01-28 03:17:02'),
(65, 3, 2002, 'ETH', 'ethereum', 'eth_image.png', 1, '[]', '[]', 1, NULL, 'Ethereum payment gateway', '2025-01-28 03:17:02', '2025-01-28 03:17:02'),
(66, 4, 2003, 'LTC', 'litecoin', 'ltc_image.png', 1, '[]', '[]', 1, NULL, 'Litecoin payment gateway', '2025-01-28 03:17:02', '2025-01-28 03:17:02'),
(67, 5, 2004, 'USDC', 'usdccoin', 'usdc_image.png', 1, '[]', '[]', 0, NULL, 'USDC payment gateway', '2025-01-28 03:17:02', '2025-01-28 03:17:02'),
(68, 6, 2005, 'XRP', 'ripple', 'xrp_image.png', 1, '[]', '[]', 1, NULL, 'Ripple payment gateway', '2025-01-28 03:17:02', '2025-01-28 03:17:02'),
(69, 7, 2006, 'DOGE', 'dogecoin', 'doge_image.png', 1, '[]', '[]', 1, NULL, 'Dogecoin payment gateway', '2025-01-28 03:17:02', '2025-01-28 03:17:02'),
(70, 8, 2007, 'BUSD', 'busdcoin', 'busd_image.png', 1, '[]', '[]', 1, NULL, 'BUSD payment gateway', '2025-01-28 03:17:02', '2025-01-28 03:17:02'),
(71, 9, 2008, 'ADA', 'cardano', 'ada_image.png', 1, '[]', '[]', 1, NULL, 'Cardano payment gateway', '2025-01-28 03:17:02', '2025-01-28 03:17:02'),
(72, 10, 2009, 'SOL', 'solana', 'sol_image.png', 1, '[]', '[]', 1, NULL, 'Solana payment gateway', '2025-01-28 03:17:02', '2025-01-28 03:17:02'),
(73, 11, 2010, 'BNB', 'binancecoin', 'bnb_image.png', 1, '[]', '[]', 1, NULL, 'Binance Coin payment gateway', '2025-01-28 03:17:02', '2025-01-28 03:17:02'),
(74, 4, 2011, 'Etherum', 'etherum', 'null.png', 1, '[]', '[]', 0, NULL, 'TYJ1Z7WEvsEVisgDq745SBoJwPhrpyGUGQ', '2025-02-15 07:10:58', '2025-02-15 07:10:58');

-- --------------------------------------------------------

--
-- Table structure for table `gateway_currencies`
--

CREATE TABLE `gateway_currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `currency` varchar(40) DEFAULT NULL,
  `symbol` varchar(40) DEFAULT NULL,
  `method_code` int(11) DEFAULT NULL,
  `gateway_alias` varchar(40) DEFAULT NULL,
  `min_amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `max_amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `percent_charge` decimal(5,2) NOT NULL DEFAULT 0.00,
  `fixed_charge` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `rate` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `gateway_parameter` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gateway_currencies`
--

INSERT INTO `gateway_currencies` (`id`, `name`, `currency`, `symbol`, `method_code`, `gateway_alias`, `min_amount`, `max_amount`, `percent_charge`, `fixed_charge`, `rate`, `gateway_parameter`, `created_at`, `updated_at`) VALUES
(1, 'Bitcoin', 'btc', '', 1000, 'bitcoin', 10.00000000, 10000.00000000, 0.00, 0.00000000, 0.00000000, NULL, '2025-01-28 03:17:02', '2025-01-28 03:17:02'),
(2, 'Etherum', 'TRC 20', '', 2011, 'etherum', 10.00000000, 10000000000000.00000000, 0.00, 0.00000000, 0.00000000, NULL, '2025-02-15 07:10:58', '2025-02-15 07:10:58');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_name` varchar(40) DEFAULT NULL,
  `cur_text` varchar(40) DEFAULT NULL COMMENT 'currency text',
  `cur_sym` varchar(40) DEFAULT NULL COMMENT 'currency symbol',
  `email_from` varchar(40) DEFAULT NULL,
  `email_from_name` varchar(255) DEFAULT NULL,
  `email_template` text DEFAULT NULL,
  `sms_template` varchar(255) DEFAULT NULL,
  `sms_from` varchar(255) DEFAULT NULL,
  `push_title` varchar(255) DEFAULT NULL,
  `push_template` varchar(255) DEFAULT NULL,
  `base_color` varchar(40) DEFAULT NULL,
  `secondary_color` varchar(40) DEFAULT NULL,
  `mail_config` text DEFAULT NULL COMMENT 'email configuration',
  `sms_config` text DEFAULT NULL,
  `firebase_config` text DEFAULT NULL,
  `pusher_config` text DEFAULT NULL,
  `global_shortcodes` text DEFAULT NULL,
  `kv` tinyint(1) NOT NULL DEFAULT 0,
  `ev` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'email verification, 0 - dont check, 1 - check',
  `en` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'email notification, 0 - dont send, 1 - send',
  `sv` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'mobile verication, 0 - dont check, 1 - check',
  `sn` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'sms notification, 0 - dont send, 1 - send',
  `pn` tinyint(1) NOT NULL DEFAULT 1,
  `force_ssl` tinyint(1) NOT NULL DEFAULT 0,
  `maintenance_mode` tinyint(1) NOT NULL DEFAULT 0,
  `secure_password` tinyint(1) NOT NULL DEFAULT 0,
  `agree` tinyint(1) NOT NULL DEFAULT 0,
  `multi_language` tinyint(1) NOT NULL DEFAULT 1,
  `registration` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: Off	, 1: On',
  `active_template` varchar(40) DEFAULT NULL,
  `socialite_credentials` text DEFAULT NULL,
  `trading_view_widget` text DEFAULT NULL,
  `conversion_charge` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `last_cron` datetime DEFAULT NULL,
  `available_version` varchar(40) DEFAULT NULL,
  `system_customized` tinyint(1) NOT NULL DEFAULT 0,
  `paginate_number` int(11) NOT NULL DEFAULT 0,
  `currency_format` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1=>Both\r\n2=>Text Only\r\n3=>Symbol Only',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `site_name`, `cur_text`, `cur_sym`, `email_from`, `email_from_name`, `email_template`, `sms_template`, `sms_from`, `push_title`, `push_template`, `base_color`, `secondary_color`, `mail_config`, `sms_config`, `firebase_config`, `pusher_config`, `global_shortcodes`, `kv`, `ev`, `en`, `sv`, `sn`, `pn`, `force_ssl`, `maintenance_mode`, `secure_password`, `agree`, `multi_language`, `registration`, `active_template`, `socialite_credentials`, `trading_view_widget`, `conversion_charge`, `last_cron`, `available_version`, `system_customized`, `paginate_number`, `currency_format`, `created_at`, `updated_at`) VALUES
(1, 'Trade Pro', 'USD', '$', 'admin@vura.pro', '{{site_name}}', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.ibb.co/rw2fTRM/logo-dark.png\" width=\"220\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello {{fullname}} ({{username}})</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\">{{message}}</td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2024 <a href=\"#\">{{site_name}}</a>&nbsp;. All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', 'hi {{fullname}} ({{username}}), {{message}}', '{{site_name}}', '{{site_name}}', 'hi {{fullname}} ({{username}}), {{message}}', '089ff7', '2cbece', '{\"name\":\"php\"}', '{\"name\":\"clickatell\",\"clickatell\":{\"api_key\":\"----------------\"},\"infobip\":{\"username\":\"------------8888888\",\"password\":\"-----------------\"},\"message_bird\":{\"api_key\":\"-------------------\"},\"nexmo\":{\"api_key\":\"----------------------\",\"api_secret\":\"----------------------\"},\"sms_broadcast\":{\"username\":\"----------------------\",\"password\":\"-----------------------------\"},\"twilio\":{\"account_sid\":\"-----------------------\",\"auth_token\":\"---------------------------\",\"from\":\"----------------------\"},\"text_magic\":{\"username\":\"-----------------------\",\"apiv2_key\":\"-------------------------------\"},\"custom\":{\"method\":\"get\",\"url\":\"https:\\/\\/hostname.com\\/demo-api-v1\",\"headers\":{\"name\":[\"api_key\"],\"value\":[\"test_api 555\"]},\"body\":{\"name\":[\"from_number\"],\"value\":[\"5657545757\"]}}}', '{\"apiKey\":\"AIzaSyCb6zm7_8kdStXjZMgLZpwjGDuTUg0e_qM\",\"authDomain\":\"flutter-prime-df1c5.firebaseapp.com\",\"projectId\":\"flutter-prime-df1c5\",\"storageBucket\":\"flutter-prime-df1c5.appspot.com\",\"messagingSenderId\":\"274514992002\",\"appId\":\"1:274514992002:web:4d77660766f4797500cd9b\",\"measurementId\":\"G-KFPM07RXRC\",\"serverKey\":\"AAAA14oqxFc:APA91bE9uJdrjU_FX3gg_EtCfApRqoNojV71m6J-9yCQC7GoL2pBFcN9pdJjLLQxEAUcNxxatfWKLcnl5qCuLsmpPdr_3QRtH9XzfIu1MrLUJU3dHkBc4CGIkYMM9EWgXCNFjudhhQmH\"}', '{\"pusher_app_id\":\"-----------\",\"pusher_app_key\":\"-----------\",\"pusher_app_secret\":\"-------------\",\"pusher_app_cluster\":\"-------\"}', '{\n    \"site_name\":\"Name of your site\",\n    \"site_currency\":\"Currency of your site\",\n    \"currency_symbol\":\"Symbol of currency\"\n}', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'basic', '{\"google\":{\"client_id\":\"------------\",\"client_secret\":\"-------------\",\"status\":1},\"facebook\":{\"client_id\":\"------\",\"client_secret\":\"------\",\"status\":1},\"linkedin\":{\"client_id\":\"-----\",\"client_secret\":\"-----\",\"status\":1}}', '<!-- TradingView Widget BEGIN -->\r\n<div class=\"tradingview-widget-container\">\r\n  <div id=\"tradingview_92622\"></div>\r\n  <div class=\"tradingview-widget-copyright\"><a href=\"https://www.tradingview.com/\" rel=\"noopener nofollow\" target=\"_blank\"><span class=\"blue-text\">Track all markets on TradingView</span></a></div>\r\n  <script type=\"text/javascript\" src=\"https://s3.tradingview.com/tv.js\"></script>\r\n  <script type=\"text/javascript\">\r\n  new TradingView.widget(\r\n  {\r\n  \"width\": \"100%\",\r\n  \"height\": 450,\r\n  \"symbol\": \"{{pairlistingmarket}}:{{pair}}\",\r\n  \"interval\": \"15\",\r\n  \"timezone\": \"Etc/UTC\",\r\n  \"theme\": \"dark\",\r\n  \"style\": \"1\",\r\n  \"locale\": \"en\",\r\n  \"backgroundColor\": \"#02304a\",\r\n  \"enable_publishing\": false,\r\n  \"allow_symbol_change\": true,\r\n  \"container_id\": \"tradingview_92622\"\r\n}\r\n  );\r\n  </script>\r\n</div>\r\n<!-- TradingView Widget END -->', 1.20000000, '2025-08-13 10:58:58', '1.1', 0, 20, 2, NULL, '2025-08-20 08:06:01');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `code` varchar(40) DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: not default language, 1: default language',
  `image` varchar(40) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `is_default`, `image`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 1, '660b94fa876ac1712035066.png', '2020-07-06 03:47:55', '2024-04-01 23:17:46');

-- --------------------------------------------------------

--
-- Table structure for table `logic_boxes`
--

CREATE TABLE `logic_boxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `type` int(11) NOT NULL,
  `logic` tinyint(1) NOT NULL DEFAULT 0,
  `value_from` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `value_to` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `duration` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logic_boxes`
--

INSERT INTO `logic_boxes` (`id`, `name`, `type`, `logic`, `value_from`, `value_to`, `duration`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Less than equal (<=)', 1, 1, 60.00000000, 0.00000000, 5, 1, '2025-01-04 23:58:31', '2025-01-04 23:58:31'),
(4, 'Equal (=)', 2, 2, 45.00000000, 0.00000000, 3, 1, '2025-01-04 23:58:31', '2025-01-04 23:58:31'),
(5, 'Greater (>)', 1, 3, 75.00000000, 0.00000000, 4, 1, '2025-01-04 23:58:31', '2025-01-04 23:58:31'),
(6, 'Greater than equal (>=)', 2, 4, 30.00000000, 0.00000000, 6, 1, '2025-01-04 23:58:31', '2025-01-04 23:58:31'),
(7, 'Less (<)', 1, 5, 50.00000000, 0.00000000, 2, 1, '2025-01-04 23:58:31', '2025-01-04 23:58:31'),
(8, 'Less than equal (<=)', 2, 6, 20.00000000, 0.00000000, 7, 1, '2025-01-04 23:58:31', '2025-01-04 23:58:31');

-- --------------------------------------------------------

--
-- Table structure for table `markets`
--

CREATE TABLE `markets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `currency_id` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=Enable,0=Disable',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `market_data`
--

CREATE TABLE `market_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `currency_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `symbol` text DEFAULT NULL,
  `pair_id` int(11) NOT NULL DEFAULT 0,
  `price` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `last_price` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `market_cap` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `last_market_cap` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `percent_change_1h` decimal(5,2) NOT NULL DEFAULT 0.00,
  `last_percent_change_1h` decimal(5,2) NOT NULL DEFAULT 0.00,
  `percent_change_24h` decimal(5,2) NOT NULL DEFAULT 0.00,
  `last_percent_change_24h` decimal(5,2) NOT NULL DEFAULT 0.00,
  `percent_change_7d` decimal(5,2) NOT NULL DEFAULT 0.00,
  `last_percent_change_7d` decimal(5,2) NOT NULL DEFAULT 0.00,
  `volume_24h` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `html_classes` varchar(255) DEFAULT NULL COMMENT 'Price, percent changes html class indicator',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `market_data`
--

INSERT INTO `market_data` (`id`, `currency_id`, `symbol`, `pair_id`, `price`, `last_price`, `market_cap`, `last_market_cap`, `percent_change_1h`, `last_percent_change_1h`, `percent_change_24h`, `last_percent_change_24h`, `percent_change_7d`, `last_percent_change_7d`, `volume_24h`, `html_classes`, `created_at`, `updated_at`) VALUES
(1, 1, 'BTC', 0, 120464.64833825, 88387.26621318, 2397882675739.00000000, 0.00000000, 0.30, 0.28, 1.67, 1.05, 5.63, 3.21, 2.80740000, '{\"price_change\":\"up\",\"percent_change_1h\":\"up\",\"percent_change_24h\":\"up\",\"percent_change_7d\":\"up\"}', '2025-01-21 01:13:16', '2025-08-13 09:59:01');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification_logs`
--

CREATE TABLE `notification_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sender` varchar(40) DEFAULT NULL,
  `sent_from` varchar(40) DEFAULT NULL,
  `sent_to` varchar(40) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `notification_type` varchar(40) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `user_read` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_logs`
--

INSERT INTO `notification_logs` (`id`, `user_id`, `sender`, `sent_from`, `sent_to`, `subject`, `message`, `notification_type`, `image`, `user_read`, `created_at`, `updated_at`) VALUES
(1, 3, 'php', 'info@viserlab.com', 'lbf6pd@nghnek.com', 'Email Verification Code', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.ibb.co/rw2fTRM/logo-dark.png\" width=\"220\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello EqcWOgjxJ EWHzf1JDH (ncjckjx)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><div>\r\n    <div><span>Thank you for taking the time to verify your email address with us. Your email verification code\r\n            is</span>: <b><font size=\"6\">392923</font></b></div><br>\r\n    <div><span>Please enter this code in the designated field on our platform to complete the verification\r\n            process.</span></div><br>\r\n    <div><span>If you did not request this verification code, please disregard this email. Your account security is our\r\n            top priority, and we advise you to take appropriate measures if you suspect any unauthorized access.</span>\r\n    </div><br>\r\n    <div><span>If you have any questions or encounter any issues during the verification process, please don\'t hesitate\r\n            to contact our support team for assistance.</span></div><br>\r\n    <div><span>Thank you for choosing us.</span></div>\r\n</div></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2024 <a href=\"#\">Prop Funding</a>&nbsp;. All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', 'email', NULL, 0, '2025-01-20 23:25:04', '2025-01-20 23:25:04'),
(2, 3, 'php', 'info@viserlab.com', 'lbf6pd@nghnek.com', 'Your Account has been Credited', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.ibb.co/rw2fTRM/logo-dark.png\" width=\"220\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello EqcWOgjxJ EWHzf1JDH (ncjckjx)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><div>We\'re writing to inform you that an amount of 650.000000 USD has been successfully added to your account.</div><div><br></div><div>Here are the details of the transaction:</div><div><br></div><div><b>Transaction Number: </b>UQR2GJLQA98N</div><div><b>Current Balance:</b> 650.000000 USD</div><div><b>Admin Note:</b> hi me</div><div><br></div><div>If you have any questions or require further assistance, please don\'t hesitate to contact us. We\'re here to assist you.</div></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2024 <a href=\"#\">Prop Funding</a>&nbsp;. All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', 'email', NULL, 0, '2025-01-21 22:27:16', '2025-01-21 22:27:16'),
(3, 3, 'php', 'info@viserlab.com', 'lbf6pd@nghnek.com', 'Withdrawal Request Confirmation', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.ibb.co/rw2fTRM/logo-dark.png\" width=\"220\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello EqcWOgjxJ EWHzf1JDH (ncjckjx)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><div>We are pleased to inform you that your withdrawal request of 400.000000 USD via USDT has been submitted successfully.</div><div><br></div><div>Here are the details of your withdrawal:</div><div><br></div><div><b>Amount:</b> 400.000000 USD</div><div><b>Charge:</b> 0.000000 USD</div><div><b>Conversion Rate:</b> 1 USD = 1.000000 TRC 20</div><div><b>Expected Amount:</b> 400.000000 TRC 20</div><div><b>Via:</b> USDT</div><div><b>Transaction Number:</b> JJ3V3JDQY9ZQ</div><div><br></div><div>Your current balance is 250.000000 USD.</div><div><br></div><div>Should you have any questions or require further assistance, feel free to reach out to our support team. We\'re here to help.</div></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2024 <a href=\"#\">Prop Funding</a>&nbsp;. All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', 'email', NULL, 0, '2025-02-01 03:24:59', '2025-02-01 03:24:59'),
(4, 3, 'clickatell', 'Prop Funding', '93604', 'Withdrawal Request Confirmation', 'hi EqcWOgjxJ EWHzf1JDH (ncjckjx), We are pleased to inform you that your withdrawal request of 400.000000 USD via USDT has been submitted successfully.', 'sms', NULL, 0, '2025-02-01 03:25:01', '2025-02-01 03:25:01'),
(5, 3, 'php', 'info@viserlab.com', 'lbf6pd@nghnek.com', 'Your Account has been Credited', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.ibb.co/rw2fTRM/logo-dark.png\" width=\"220\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello EqcWOgjxJ EWHzf1JDH (ncjckjx)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><div>We\'re writing to inform you that an amount of 6,000,000.000000 USD has been successfully added to your account.</div><div><br></div><div>Here are the details of the transaction:</div><div><br></div><div><b>Transaction Number: </b>TGV7QCNBGGWC</div><div><b>Current Balance:</b> 6,000,250.000000 USD</div><div><b>Admin Note:</b> hi</div><div><br></div><div>If you have any questions or require further assistance, please don\'t hesitate to contact us. We\'re here to assist you.</div></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2024 <a href=\"#\">Prop Funding</a>&nbsp;. All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', 'email', NULL, 0, '2025-02-01 09:10:04', '2025-02-01 09:10:04'),
(6, 3, 'php', 'info@viserlab.com', 'lbf6pd@nghnek.com', 'Withdrawal Request Confirmation', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.ibb.co/rw2fTRM/logo-dark.png\" width=\"220\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello EqcWOgjxJ EWHzf1JDH (ncjckjx)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><div>We are pleased to inform you that your withdrawal request of 1,000.000000 USD via USDT has been submitted successfully.</div><div><br></div><div>Here are the details of your withdrawal:</div><div><br></div><div><b>Amount:</b> 1,000.000000 USD</div><div><b>Charge:</b> 0.000000 USD</div><div><b>Conversion Rate:</b> 1 USD = 1.000000 TRC 20</div><div><b>Expected Amount:</b> 1,000.000000 TRC 20</div><div><b>Via:</b> USDT</div><div><b>Transaction Number:</b> U86SQGLGHUSL</div><div><br></div><div>Your current balance is 5,999,250.000000 USD.</div><div><br></div><div>Should you have any questions or require further assistance, feel free to reach out to our support team. We\'re here to help.</div></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2024 <a href=\"#\">Prop Funding</a>&nbsp;. All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', 'email', NULL, 0, '2025-02-01 09:32:36', '2025-02-01 09:32:36'),
(7, 3, 'clickatell', 'Prop Funding', '93604', 'Withdrawal Request Confirmation', 'hi EqcWOgjxJ EWHzf1JDH (ncjckjx), We are pleased to inform you that your withdrawal request of 1,000.000000 USD via USDT has been submitted successfully.', 'sms', NULL, 0, '2025-02-01 09:32:38', '2025-02-01 09:32:38'),
(8, 3, 'php', 'info@viserlab.com', 'lbf6pd@nghnek.com', 'Withdrawal Request Confirmation', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.ibb.co/rw2fTRM/logo-dark.png\" width=\"220\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello EqcWOgjxJ EWHzf1JDH (ncjckjx)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><div>We are pleased to inform you that your withdrawal request of 650.000000 USD via USDT has been submitted successfully.</div><div><br></div><div>Here are the details of your withdrawal:</div><div><br></div><div><b>Amount:</b> 650.000000 USD</div><div><b>Charge:</b> 0.000000 USD</div><div><b>Conversion Rate:</b> 1 USD = 1.000000 TRC 20</div><div><b>Expected Amount:</b> 650.000000 TRC 20</div><div><b>Via:</b> USDT</div><div><b>Transaction Number:</b> 6NVWV2PP3PWS</div><div><br></div><div>Your current balance is 5,998,600.000000 USD.</div><div><br></div><div>Should you have any questions or require further assistance, feel free to reach out to our support team. We\'re here to help.</div></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2024 <a href=\"#\">Prop Funding</a>&nbsp;. All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', 'email', NULL, 0, '2025-02-01 09:38:49', '2025-02-01 09:38:49'),
(9, 3, 'clickatell', 'Prop Funding', '93604', 'Withdrawal Request Confirmation', 'hi EqcWOgjxJ EWHzf1JDH (ncjckjx), We are pleased to inform you that your withdrawal request of 650.000000 USD via USDT has been submitted successfully.', 'sms', NULL, 0, '2025-02-01 09:38:50', '2025-02-01 09:38:50');
INSERT INTO `notification_logs` (`id`, `user_id`, `sender`, `sent_from`, `sent_to`, `subject`, `message`, `notification_type`, `image`, `user_read`, `created_at`, `updated_at`) VALUES
(10, 3, 'php', 'info@viserlab.com', 'lbf6pd@nghnek.com', 'Withdrawal Request Confirmation', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.ibb.co/rw2fTRM/logo-dark.png\" width=\"220\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello EqcWOgjxJ EWHzf1JDH (ncjckjx)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><div>We are pleased to inform you that your withdrawal request of 600.000000 USD via USDT has been submitted successfully.</div><div><br></div><div>Here are the details of your withdrawal:</div><div><br></div><div><b>Amount:</b> 600.000000 USD</div><div><b>Charge:</b> 0.000000 USD</div><div><b>Conversion Rate:</b> 1 USD = 1.000000 TRC 20</div><div><b>Expected Amount:</b> 600.000000 TRC 20</div><div><b>Via:</b> USDT</div><div><b>Transaction Number:</b> K72LNVSKAFC5</div><div><br></div><div>Your current balance is 5,998,000.000000 USD.</div><div><br></div><div>Should you have any questions or require further assistance, feel free to reach out to our support team. We\'re here to help.</div></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2024 <a href=\"#\">Prop Funding</a>&nbsp;. All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', 'email', NULL, 0, '2025-02-01 09:41:29', '2025-02-01 09:41:29'),
(11, 3, 'clickatell', 'Prop Funding', '93604', 'Withdrawal Request Confirmation', 'hi EqcWOgjxJ EWHzf1JDH (ncjckjx), We are pleased to inform you that your withdrawal request of 600.000000 USD via USDT has been submitted successfully.', 'sms', NULL, 0, '2025-02-01 09:41:30', '2025-02-01 09:41:30'),
(12, 3, 'php', 'info@viserlab.com', 'lbf6pd@nghnek.com', 'Withdrawal Request Confirmation', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.ibb.co/rw2fTRM/logo-dark.png\" width=\"220\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello EqcWOgjxJ EWHzf1JDH (ncjckjx)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><div>We are pleased to inform you that your withdrawal request of 600.000000 USD via USDT has been submitted successfully.</div><div><br></div><div>Here are the details of your withdrawal:</div><div><br></div><div><b>Amount:</b> 600.000000 USD</div><div><b>Charge:</b> 0.000000 USD</div><div><b>Conversion Rate:</b> 1 USD = 1.000000 TRC 20</div><div><b>Expected Amount:</b> 600.000000 TRC 20</div><div><b>Via:</b> USDT</div><div><b>Transaction Number:</b> 2BVHZ77LCOUQ</div><div><br></div><div>Your current balance is 5,997,400.000000 USD.</div><div><br></div><div>Should you have any questions or require further assistance, feel free to reach out to our support team. We\'re here to help.</div></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2024 <a href=\"#\">Prop Funding</a>&nbsp;. All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', 'email', NULL, 0, '2025-02-01 09:45:57', '2025-02-01 09:45:57'),
(13, 3, 'clickatell', 'Prop Funding', '93604', 'Withdrawal Request Confirmation', 'hi EqcWOgjxJ EWHzf1JDH (ncjckjx), We are pleased to inform you that your withdrawal request of 600.000000 USD via USDT has been submitted successfully.', 'sms', NULL, 0, '2025-02-01 09:46:06', '2025-02-01 09:46:06'),
(14, 3, 'php', 'info@viserlab.com', 'lbf6pd@nghnek.com', 'Withdrawal Request Confirmation', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.ibb.co/rw2fTRM/logo-dark.png\" width=\"220\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello EqcWOgjxJ EWHzf1JDH (ncjckjx)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><div>We are pleased to inform you that your withdrawal request of 667.000000 USD via USDT has been submitted successfully.</div><div><br></div><div>Here are the details of your withdrawal:</div><div><br></div><div><b>Amount:</b> 667.000000 USD</div><div><b>Charge:</b> 0.000000 USD</div><div><b>Conversion Rate:</b> 1 USD = 1.000000 TRC 20</div><div><b>Expected Amount:</b> 667.000000 TRC 20</div><div><b>Via:</b> USDT</div><div><b>Transaction Number:</b> M4XIVZ3ZZJ3W</div><div><br></div><div>Your current balance is 5,996,733.000000 USD.</div><div><br></div><div>Should you have any questions or require further assistance, feel free to reach out to our support team. We\'re here to help.</div></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2024 <a href=\"#\">Prop Funding</a>&nbsp;. All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', 'email', NULL, 0, '2025-02-01 09:54:43', '2025-02-01 09:54:43'),
(15, 3, 'clickatell', 'Prop Funding', '93604', 'Withdrawal Request Confirmation', 'hi EqcWOgjxJ EWHzf1JDH (ncjckjx), We are pleased to inform you that your withdrawal request of 667.000000 USD via USDT has been submitted successfully.', 'sms', NULL, 0, '2025-02-01 09:54:44', '2025-02-01 09:54:44'),
(16, 3, 'php', 'info@viserlab.com', 'lbf6pd@nghnek.com', 'Withdrawal Request Confirmation', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.ibb.co/rw2fTRM/logo-dark.png\" width=\"220\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello EqcWOgjxJ EWHzf1JDH (ncjckjx)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><div>We are pleased to inform you that your withdrawal request of 343.000000 USD via USDT has been submitted successfully.</div><div><br></div><div>Here are the details of your withdrawal:</div><div><br></div><div><b>Amount:</b> 343.000000 USD</div><div><b>Charge:</b> 0.000000 USD</div><div><b>Conversion Rate:</b> 1 USD = 1.000000 TRC 20</div><div><b>Expected Amount:</b> 343.000000 TRC 20</div><div><b>Via:</b> USDT</div><div><b>Transaction Number:</b> AJMQM6Q1NFGX</div><div><br></div><div>Your current balance is 5,996,390.000000 USD.</div><div><br></div><div>Should you have any questions or require further assistance, feel free to reach out to our support team. We\'re here to help.</div></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2024 <a href=\"#\">Prop Funding</a>&nbsp;. All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', 'email', NULL, 0, '2025-02-01 10:03:38', '2025-02-01 10:03:38'),
(17, 3, 'clickatell', 'Prop Funding', '93604', 'Withdrawal Request Confirmation', 'hi EqcWOgjxJ EWHzf1JDH (ncjckjx), We are pleased to inform you that your withdrawal request of 343.000000 USD via USDT has been submitted successfully.', 'sms', NULL, 0, '2025-02-01 10:03:40', '2025-02-01 10:03:40'),
(18, 3, 'php', 'info@viserlab.com', 'lbf6pd@nghnek.com', 'Withdrawal Request Confirmation', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.ibb.co/rw2fTRM/logo-dark.png\" width=\"220\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello EqcWOgjxJ EWHzf1JDH (ncjckjx)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><div>We are pleased to inform you that your withdrawal request of 1,000.000000 USD via USDT has been submitted successfully.</div><div><br></div><div>Here are the details of your withdrawal:</div><div><br></div><div><b>Amount:</b> 1,000.000000 USD</div><div><b>Charge:</b> 0.000000 USD</div><div><b>Conversion Rate:</b> 1 USD = 1.000000 TRC 20</div><div><b>Expected Amount:</b> 1,000.000000 TRC 20</div><div><b>Via:</b> USDT</div><div><b>Transaction Number:</b> QO3CF3A4AUEF</div><div><br></div><div>Your current balance is 5,995,390.000000 USD.</div><div><br></div><div>Should you have any questions or require further assistance, feel free to reach out to our support team. We\'re here to help.</div></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2024 <a href=\"#\">Prop Funding</a>&nbsp;. All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', 'email', NULL, 0, '2025-02-01 17:45:16', '2025-02-01 17:45:16'),
(19, 3, 'clickatell', 'Prop Funding', '93604', 'Withdrawal Request Confirmation', 'hi EqcWOgjxJ EWHzf1JDH (ncjckjx), We are pleased to inform you that your withdrawal request of 1,000.000000 USD via USDT has been submitted successfully.', 'sms', NULL, 0, '2025-02-01 17:45:17', '2025-02-01 17:45:17'),
(20, 3, 'php', 'info@viserlab.com', 'lbf6pd@nghnek.com', 'Withdrawal Request Confirmation', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.ibb.co/rw2fTRM/logo-dark.png\" width=\"220\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello EqcWOgjxJ EWHzf1JDH (ncjckjx)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><div>We are pleased to inform you that your withdrawal request of 1,000.000000 USD via USDT has been submitted successfully.</div><div><br></div><div>Here are the details of your withdrawal:</div><div><br></div><div><b>Amount:</b> 1,000.000000 USD</div><div><b>Charge:</b> 0.000000 USD</div><div><b>Conversion Rate:</b> 1 USD = 1.000000 TRC 20</div><div><b>Expected Amount:</b> 1,000.000000 TRC 20</div><div><b>Via:</b> USDT</div><div><b>Transaction Number:</b> EFOO1DWI2CGQ</div><div><br></div><div>Your current balance is 5,317,987.500000 USD.</div><div><br></div><div>Should you have any questions or require further assistance, feel free to reach out to our support team. We\'re here to help.</div></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2024 <a href=\"#\">Prop Funding</a>&nbsp;. All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', 'email', NULL, 0, '2025-02-05 12:58:03', '2025-02-05 12:58:03'),
(21, 3, 'clickatell', 'Prop Funding', '93604', 'Withdrawal Request Confirmation', 'hi EqcWOgjxJ EWHzf1JDH (ncjckjx), We are pleased to inform you that your withdrawal request of 1,000.000000 USD via USDT has been submitted successfully.', 'sms', NULL, 0, '2025-02-05 12:58:05', '2025-02-05 12:58:05');
INSERT INTO `notification_logs` (`id`, `user_id`, `sender`, `sent_from`, `sent_to`, `subject`, `message`, `notification_type`, `image`, `user_read`, `created_at`, `updated_at`) VALUES
(22, 3, 'php', 'info@viserlab.com', 'lbf6pd@nghnek.com', 'Withdrawal Request Confirmation', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.ibb.co/rw2fTRM/logo-dark.png\" width=\"220\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello EqcWOgjxJ EWHzf1JDH (ncjckjx)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><div>We are pleased to inform you that your withdrawal request of 443.000000 USD via USDT has been submitted successfully.</div><div><br></div><div>Here are the details of your withdrawal:</div><div><br></div><div><b>Amount:</b> 443.000000 USD</div><div><b>Charge:</b> 0.000000 USD</div><div><b>Conversion Rate:</b> 1 USD = 1.000000 TRC 20</div><div><b>Expected Amount:</b> 443.000000 TRC 20</div><div><b>Via:</b> USDT</div><div><b>Transaction Number:</b> B21USSONP5ZV</div><div><br></div><div>Your current balance is 5,317,544.500000 USD.</div><div><br></div><div>Should you have any questions or require further assistance, feel free to reach out to our support team. We\'re here to help.</div></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2024 <a href=\"#\">Prop Funding</a>&nbsp;. All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', 'email', NULL, 0, '2025-02-05 13:20:42', '2025-02-05 13:20:42'),
(23, 3, 'clickatell', 'Prop Funding', '93604', 'Withdrawal Request Confirmation', 'hi EqcWOgjxJ EWHzf1JDH (ncjckjx), We are pleased to inform you that your withdrawal request of 443.000000 USD via USDT has been submitted successfully.', 'sms', NULL, 0, '2025-02-05 13:20:43', '2025-02-05 13:20:43'),
(24, 4, 'php', 'info@viserlab.com', 'your.email+fakedata32799@gmail.com', 'Email Verification Code', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.ibb.co/rw2fTRM/logo-dark.png\" width=\"220\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello Judd Kautzer (Carley.Olson23)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><div>\r\n    <div><span>Thank you for taking the time to verify your email address with us. Your email verification code\r\n            is</span>: <b><font size=\"6\">958985</font></b></div><br>\r\n    <div><span>Please enter this code in the designated field on our platform to complete the verification\r\n            process.</span></div><br>\r\n    <div><span>If you did not request this verification code, please disregard this email. Your account security is our\r\n            top priority, and we advise you to take appropriate measures if you suspect any unauthorized access.</span>\r\n    </div><br>\r\n    <div><span>If you have any questions or encounter any issues during the verification process, please don\'t hesitate\r\n            to contact our support team for assistance.</span></div><br>\r\n    <div><span>Thank you for choosing us.</span></div>\r\n</div></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2024 <a href=\"#\">Prop Funding</a>&nbsp;. All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', 'email', NULL, 0, '2025-02-07 09:18:00', '2025-02-07 09:18:00'),
(25, 4, 'php', 'info@viserlab.com', 'your.email+fakedata32799@gmail.com', 'Email Verification Code', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.ibb.co/rw2fTRM/logo-dark.png\" width=\"220\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello Judd Kautzer (Carley.Olson23)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><div>\r\n    <div><span>Thank you for taking the time to verify your email address with us. Your email verification code\r\n            is</span>: <b><font size=\"6\">978078</font></b></div><br>\r\n    <div><span>Please enter this code in the designated field on our platform to complete the verification\r\n            process.</span></div><br>\r\n    <div><span>If you did not request this verification code, please disregard this email. Your account security is our\r\n            top priority, and we advise you to take appropriate measures if you suspect any unauthorized access.</span>\r\n    </div><br>\r\n    <div><span>If you have any questions or encounter any issues during the verification process, please don\'t hesitate\r\n            to contact our support team for assistance.</span></div><br>\r\n    <div><span>Thank you for choosing us.</span></div>\r\n</div></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2024 <a href=\"#\">Prop Funding</a>&nbsp;. All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', 'email', NULL, 0, '2025-02-07 10:51:31', '2025-02-07 10:51:31'),
(26, 4, 'php', 'info@viserlab.com', 'your.email+fakedata32799@gmail.com', 'Email Verification Code', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.ibb.co/rw2fTRM/logo-dark.png\" width=\"220\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello Judd Kautzer (Carley.Olson23)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><div>\r\n    <div><span>Thank you for taking the time to verify your email address with us. Your email verification code\r\n            is</span>: <b><font size=\"6\">637535</font></b></div><br>\r\n    <div><span>Please enter this code in the designated field on our platform to complete the verification\r\n            process.</span></div><br>\r\n    <div><span>If you did not request this verification code, please disregard this email. Your account security is our\r\n            top priority, and we advise you to take appropriate measures if you suspect any unauthorized access.</span>\r\n    </div><br>\r\n    <div><span>If you have any questions or encounter any issues during the verification process, please don\'t hesitate\r\n            to contact our support team for assistance.</span></div><br>\r\n    <div><span>Thank you for choosing us.</span></div>\r\n</div></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2024 <a href=\"#\">Prop Funding</a>&nbsp;. All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', 'email', NULL, 0, '2025-02-07 10:57:40', '2025-02-07 10:57:40'),
(27, 1, 'php', 'info@viserlab.com', 'bot@site.com', 'Your Account has been Credited', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.ibb.co/rw2fTRM/logo-dark.png\" width=\"220\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello Bot User (botuser)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><div>We\'re writing to inform you that an amount of 1,000.00 USD has been successfully added to your account.</div><div><br></div><div>Here are the details of the transaction:</div><div><br></div><div><b>Transaction Number: </b>WK13HDA7MEZ4</div><div><b>Current Balance:</b> 1,000.00 USD</div><div><b>Admin Note:</b> 34543</div><div><br></div><div>If you have any questions or require further assistance, please don\'t hesitate to contact us. We\'re here to assist you.</div></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2024 <a href=\"#\">Prop Funding</a>&nbsp;. All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', 'email', NULL, 0, '2025-02-15 11:09:45', '2025-02-15 11:09:45'),
(28, 1, 'php', 'info@viserlab.com', 'bot@site.com', 'Withdrawal Request Confirmation', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.ibb.co/rw2fTRM/logo-dark.png\" width=\"220\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello Bot User (botuser)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><div>We are pleased to inform you that your withdrawal request of 600.00 USD via USDT has been submitted successfully.</div><div><br></div><div>Here are the details of your withdrawal:</div><div><br></div><div><b>Amount:</b> 600.00 USD</div><div><b>Charge:</b> 0.00 USD</div><div><b>Conversion Rate:</b> 1 USD = 1.00 TRC 20</div><div><b>Expected Amount:</b> 600.00 TRC 20</div><div><b>Via:</b> USDT</div><div><b>Transaction Number:</b> 4VJHC16D72V5</div><div><br></div><div>Your current balance is 400.00 USD.</div><div><br></div><div>Should you have any questions or require further assistance, feel free to reach out to our support team. We\'re here to help.</div></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2024 <a href=\"#\">Prop Funding</a>&nbsp;. All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', 'email', NULL, 0, '2025-02-16 23:26:36', '2025-02-16 23:26:36'),
(29, 1, 'clickatell', 'Prop Funding', '1111', 'Withdrawal Request Confirmation', 'hi Bot User (botuser), We are pleased to inform you that your withdrawal request of 600.00 USD via USDT has been submitted successfully.', 'sms', NULL, 0, '2025-02-16 23:26:39', '2025-02-16 23:26:39');
INSERT INTO `notification_logs` (`id`, `user_id`, `sender`, `sent_from`, `sent_to`, `subject`, `message`, `notification_type`, `image`, `user_read`, `created_at`, `updated_at`) VALUES
(30, 5, 'php', 'info@viserlab.com', 'hello@danieladelola.com', 'Email Verification Code', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.ibb.co/rw2fTRM/logo-dark.png\" width=\"220\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello Daniel Adelola (danrushney)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><div>\r\n    <div><span>Thank you for taking the time to verify your email address with us. Your email verification code\r\n            is</span>: <b><font size=\"6\">303806</font></b></div><br>\r\n    <div><span>Please enter this code in the designated field on our platform to complete the verification\r\n            process.</span></div><br>\r\n    <div><span>If you did not request this verification code, please disregard this email. Your account security is our\r\n            top priority, and we advise you to take appropriate measures if you suspect any unauthorized access.</span>\r\n    </div><br>\r\n    <div><span>If you have any questions or encounter any issues during the verification process, please don\'t hesitate\r\n            to contact our support team for assistance.</span></div><br>\r\n    <div><span>Thank you for choosing us.</span></div>\r\n</div></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2024 <a href=\"#\">Prop Funding</a>&nbsp;. All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', 'email', NULL, 0, '2025-04-08 21:45:01', '2025-04-08 21:45:01'),
(31, 5, 'php', 'info@viserlab.com', 'hello@danieladelola.com', 'Your Account has been Credited', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.ibb.co/rw2fTRM/logo-dark.png\" width=\"220\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello Daniel Adelola (danrushney)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><div>We\'re writing to inform you that an amount of 1,000,000.00 USD has been successfully added to your account.</div><div><br></div><div>Here are the details of the transaction:</div><div><br></div><div><b>Transaction Number: </b>V4HJ1P3HHLHB</div><div><b>Current Balance:</b> 1,000,000.00 USD</div><div><b>Admin Note:</b> fund</div><div><br></div><div>If you have any questions or require further assistance, please don\'t hesitate to contact us. We\'re here to assist you.</div></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2024 <a href=\"#\">Prop Funding</a>&nbsp;. All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', 'email', NULL, 0, '2025-04-08 21:52:42', '2025-04-08 21:52:42'),
(32, 5, 'php', 'info@viserlab.com', 'hello@danieladelola.com', 'Withdrawal Request Confirmation', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.ibb.co/rw2fTRM/logo-dark.png\" width=\"220\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello Daniel Adelola (danrushney)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><div>We are pleased to inform you that your withdrawal request of 1,000.00 USD via USDT has been submitted successfully.</div><div><br></div><div>Here are the details of your withdrawal:</div><div><br></div><div><b>Amount:</b> 1,000.00 USD</div><div><b>Charge:</b> 0.00 USD</div><div><b>Conversion Rate:</b> 1 USD = 1.00 TRC 20</div><div><b>Expected Amount:</b> 1,000.00 TRC 20</div><div><b>Via:</b> USDT</div><div><b>Transaction Number:</b> Z2VXICZKGE8W</div><div><br></div><div>Your current balance is 988,800.00 USD.</div><div><br></div><div>Should you have any questions or require further assistance, feel free to reach out to our support team. We\'re here to help.</div></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2024 <a href=\"#\">Prop Funding</a>&nbsp;. All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', 'email', NULL, 0, '2025-04-19 06:07:02', '2025-04-19 06:07:02'),
(33, 5, 'clickatell', 'Prop Funding', '23435345343', 'Withdrawal Request Confirmation', 'hi Daniel Adelola (danrushney), We are pleased to inform you that your withdrawal request of 1,000.00 USD via USDT has been submitted successfully.', 'sms', NULL, 0, '2025-04-19 06:07:03', '2025-04-19 06:07:03'),
(34, 6, 'php', 'info@viserlab.com', 'test@twt.cp', 'Email Verification Code', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.ibb.co/rw2fTRM/logo-dark.png\" width=\"220\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello Daniel Adelola (tester)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><div>\r\n    <div><span>Thank you for taking the time to verify your email address with us. Your email verification code\r\n            is</span>: <b><font size=\"6\">895585</font></b></div><br>\r\n    <div><span>Please enter this code in the designated field on our platform to complete the verification\r\n            process.</span></div><br>\r\n    <div><span>If you did not request this verification code, please disregard this email. Your account security is our\r\n            top priority, and we advise you to take appropriate measures if you suspect any unauthorized access.</span>\r\n    </div><br>\r\n    <div><span>If you have any questions or encounter any issues during the verification process, please don\'t hesitate\r\n            to contact our support team for assistance.</span></div><br>\r\n    <div><span>Thank you for choosing us.</span></div>\r\n</div></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2024 <a href=\"#\">Prop Funding</a>&nbsp;. All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', 'email', NULL, 0, '2025-04-21 21:41:29', '2025-04-21 21:41:29');

-- --------------------------------------------------------

--
-- Table structure for table `notification_templates`
--

CREATE TABLE `notification_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `act` varchar(40) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `push_title` varchar(255) DEFAULT NULL,
  `email_body` text DEFAULT NULL,
  `sms_body` text DEFAULT NULL,
  `push_body` text DEFAULT NULL,
  `shortcodes` text DEFAULT NULL,
  `email_status` tinyint(1) NOT NULL DEFAULT 1,
  `email_sent_from_name` varchar(40) DEFAULT NULL,
  `email_sent_from_address` varchar(40) DEFAULT NULL,
  `sms_status` tinyint(1) NOT NULL DEFAULT 1,
  `sms_sent_from` varchar(40) DEFAULT NULL,
  `push_status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_templates`
--

INSERT INTO `notification_templates` (`id`, `act`, `name`, `subject`, `push_title`, `email_body`, `sms_body`, `push_body`, `shortcodes`, `email_status`, `email_sent_from_name`, `email_sent_from_address`, `sms_status`, `sms_sent_from`, `push_status`, `created_at`, `updated_at`) VALUES
(1, 'BAL_ADD', 'Balance - Added', 'Your Account has been Credited', '{{site_name}} - Balance Added', '<div>We\'re writing to inform you that an amount of {{amount}} {{site_currency}} has been successfully added to your account.</div><div><br></div><div>Here are the details of the transaction:</div><div><br></div><div><b>Transaction Number: </b>{{trx}}</div><div><b>Current Balance:</b> {{post_balance}} {{site_currency}}</div><div><b>Admin Note:</b> {{remark}}</div><div><br></div><div>If you have any questions or require further assistance, please don\'t hesitate to contact us. We\'re here to assist you.</div>', 'We\'re writing to inform you that an amount of {{amount}} {{site_currency}} has been successfully added to your account.', '{{amount}} {{site_currency}} has been successfully added to your account.', '{\"trx\":\"Transaction number for the action\",\"amount\":\"Amount inserted by the admin\",\"remark\":\"Remark inserted by the admin\",\"post_balance\":\"Balance of the user after this transaction\"}', 1, '{{site_name}} Finance', NULL, 0, NULL, 1, '2021-11-03 12:00:00', '2024-05-25 00:49:44'),
(2, 'BAL_SUB', 'Balance - Subtracted', 'Your Account has been Debited', '{{site_name}} - Balance Subtracted', '<div>We wish to inform you that an amount of {{amount}} {{site_currency}} has been successfully deducted from your account.</div><div><br></div><div>Below are the details of the transaction:</div><div><br></div><div><b>Transaction Number:</b> {{trx}}</div><div><b>Current Balance: </b>{{post_balance}} {{site_currency}}</div><div><b>Admin Note:</b> {{remark}}</div><div><br></div><div>Should you require any further clarification or assistance, please do not hesitate to reach out to us. We are here to assist you in any way we can.</div><div><br></div><div>Thank you for your continued trust in {{site_name}}.</div>', 'We wish to inform you that an amount of {{amount}} {{site_currency}} has been successfully deducted from your account.', '{{amount}} {{site_currency}} debited from your account.', '{\"trx\":\"Transaction number for the action\",\"amount\":\"Amount inserted by the admin\",\"remark\":\"Remark inserted by the admin\",\"post_balance\":\"Balance of the user after this transaction\"}', 1, '{{site_name}} Finance', NULL, 1, NULL, 0, '2021-11-03 12:00:00', '2024-05-08 07:17:48'),
(3, 'DEPOSIT_COMPLETE', 'Deposit - Automated - Successful', 'Deposit Completed Successfully', '{{site_name}} - Deposit successful', '<div>We\'re delighted to inform you that your deposit of {{amount}} {{site_currency}} via {{method_name}} has been completed.</div><div><br></div><div>Below, you\'ll find the details of your deposit:</div><div><br></div><div><b>Amount:</b> {{amount}} {{site_currency}}</div><div><b>Charge: </b>{{charge}} {{site_currency}}</div><div><b>Conversion Rate:</b> 1 {{site_currency}} = {{rate}} {{method_currency}}</div><div><b>Received:</b> {{method_amount}} {{method_currency}}</div><div><b>Paid via:</b> {{method_name}}</div><div><b>Transaction Number:</b> {{trx}}</div><div><br></div><div>Your current balance stands at {{post_balance}} {{site_currency}}.</div><div><br></div><div>If you have any questions or need further assistance, feel free to reach out to our support team. We\'re here to assist you in any way we can.</div>', 'We\'re delighted to inform you that your deposit of {{amount}} {{site_currency}} via {{method_name}} has been completed.', 'Deposit Completed Successfully', '{\"trx\":\"Transaction number for the deposit\",\"amount\":\"Amount inserted by the user\",\"charge\":\"Gateway charge set by the admin\",\"rate\":\"Conversion rate between base currency and method currency\",\"method_name\":\"Name of the deposit method\",\"method_currency\":\"Currency of the deposit method\",\"method_amount\":\"Amount after conversion between base currency and method currency\",\"post_balance\":\"Balance of the user after this transaction\"}', 1, '{{site_name}} Billing', NULL, 1, NULL, 1, '2021-11-03 12:00:00', '2024-05-08 07:20:34'),
(4, 'DEPOSIT_APPROVE', 'Deposit - Manual - Approved', 'Deposit Request Approved', '{{site_name}} - Deposit Request Approved', '<div>We are pleased to inform you that your deposit request of {{amount}} {{site_currency}} via {{method_name}} has been approved.</div><div><br></div><div>Here are the details of your deposit:</div><div><br></div><div><b>Amount:</b> {{amount}} {{site_currency}}</div><div><b>Charge: </b>{{charge}} {{site_currency}}</div><div><b>Conversion Rate:</b> 1 {{site_currency}} = {{rate}} {{method_currency}}</div><div><b>Received: </b>{{method_amount}} {{method_currency}}</div><div><b>Paid via: </b>{{method_name}}</div><div><b>Transaction Number: </b>{{trx}}</div><div><br></div><div>Your current balance now stands at {{post_balance}} {{site_currency}}.</div><div><br></div><div>Should you have any questions or require further assistance, please feel free to contact our support team. We\'re here to help.</div>', 'We are pleased to inform you that your deposit request of {{amount}} {{site_currency}} via {{method_name}} has been approved.', 'Deposit of {{amount}} {{site_currency}} via {{method_name}} has been approved.', '{\"trx\":\"Transaction number for the deposit\",\"amount\":\"Amount inserted by the user\",\"charge\":\"Gateway charge set by the admin\",\"rate\":\"Conversion rate between base currency and method currency\",\"method_name\":\"Name of the deposit method\",\"method_currency\":\"Currency of the deposit method\",\"method_amount\":\"Amount after conversion between base currency and method currency\",\"post_balance\":\"Balance of the user after this transaction\"}', 1, '{{site_name}} Billing', NULL, 1, NULL, 0, '2021-11-03 12:00:00', '2024-05-08 07:19:49'),
(5, 'DEPOSIT_REJECT', 'Deposit - Manual - Rejected', 'Deposit Request Rejected', '{{site_name}} - Deposit Request Rejected', '<div>We regret to inform you that your deposit request of {{amount}} {{site_currency}} via {{method_name}} has been rejected.</div><div><br></div><div>Here are the details of the rejected deposit:</div><div><br></div><div><b>Conversion Rate:</b> 1 {{site_currency}} = {{rate}} {{method_currency}}</div><div><b>Received:</b> {{method_amount}} {{method_currency}}</div><div><b>Paid via:</b> {{method_name}}</div><div><b>Charge:</b> {{charge}}</div><div><b>Transaction Number:</b> {{trx}}</div><div><br></div><div>If you have any questions or need further clarification, please don\'t hesitate to contact us. We\'re here to assist you.</div><div><br></div><div>Rejection Reason:</div><div>{{rejection_message}}</div><div><br></div><div>Thank you for your understanding.</div>', 'We regret to inform you that your deposit request of {{amount}} {{site_currency}} via {{method_name}} has been rejected.', 'Your deposit request of {{amount}} {{site_currency}} via {{method_name}} has been rejected.', '{\"trx\":\"Transaction number for the deposit\",\"amount\":\"Amount inserted by the user\",\"charge\":\"Gateway charge set by the admin\",\"rate\":\"Conversion rate between base currency and method currency\",\"method_name\":\"Name of the deposit method\",\"method_currency\":\"Currency of the deposit method\",\"method_amount\":\"Amount after conversion between base currency and method currency\",\"rejection_message\":\"Rejection message by the admin\"}', 1, '{{site_name}} Billing', NULL, 1, NULL, 0, '2021-11-03 12:00:00', '2024-05-08 07:20:13'),
(6, 'DEPOSIT_REQUEST', 'Deposit - Manual - Requested', 'Deposit Request Submitted Successfully', NULL, '<div>We are pleased to confirm that your deposit request of {{amount}} {{site_currency}} via {{method_name}} has been submitted successfully.</div><div><br></div><div>Below are the details of your deposit:</div><div><br></div><div><b>Amount:</b> {{amount}} {{site_currency}}</div><div><b>Charge:</b> {{charge}} {{site_currency}}</div><div><b>Conversion Rate:</b> 1 {{site_currency}} = {{rate}} {{method_currency}}</div><div><b>Payable:</b> {{method_amount}} {{method_currency}}</div><div><b>Pay via: </b>{{method_name}}</div><div><b>Transaction Number:</b> {{trx}}</div><div><br></div><div>Should you have any questions or require further assistance, please feel free to reach out to our support team. We\'re here to assist you.</div>', 'We are pleased to confirm that your deposit request of {{amount}} {{site_currency}} via {{method_name}} has been submitted successfully.', 'Your deposit request of {{amount}} {{site_currency}} via {{method_name}} submitted successfully.', '{\"trx\":\"Transaction number for the deposit\",\"amount\":\"Amount inserted by the user\",\"charge\":\"Gateway charge set by the admin\",\"rate\":\"Conversion rate between base currency and method currency\",\"method_name\":\"Name of the deposit method\",\"method_currency\":\"Currency of the deposit method\",\"method_amount\":\"Amount after conversion between base currency and method currency\"}', 1, '{{site_name}} Billing', NULL, 1, NULL, 0, '2021-11-03 12:00:00', '2024-04-25 03:27:42'),
(7, 'PASS_RESET_CODE', 'Password - Reset - Code', 'Password Reset', '{{site_name}} Password Reset Code', '<div>We\'ve received a request to reset the password for your account on <b>{{time}}</b>. The request originated from\r\n            the following IP address: <b>{{ip}}</b>, using <b>{{browser}}</b> on <b>{{operating_system}}</b>.\r\n    </div><br>\r\n    <div><span>To proceed with the password reset, please use the following account recovery code</span>: <span><b><font size=\"6\">{{code}}</font></b></span></div><br>\r\n    <div><span>If you did not initiate this password reset request, please disregard this message. Your account security\r\n            remains our top priority, and we advise you to take appropriate action if you suspect any unauthorized\r\n            access to your account.</span></div>', 'To proceed with the password reset, please use the following account recovery code: {{code}}', 'To proceed with the password reset, please use the following account recovery code: {{code}}', '{\"code\":\"Verification code for password reset\",\"ip\":\"IP address of the user\",\"browser\":\"Browser of the user\",\"operating_system\":\"Operating system of the user\",\"time\":\"Time of the request\"}', 1, '{{site_name}} Authentication Center', NULL, 0, NULL, 0, '2021-11-03 12:00:00', '2024-05-08 07:24:57'),
(8, 'PASS_RESET_DONE', 'Password - Reset - Confirmation', 'Password Reset Successful', NULL, '<div><div><span>We are writing to inform you that the password reset for your account was successful. This action was completed at {{time}} from the following browser</span>: <span>{{browser}}</span><span>on {{operating_system}}, with the IP address</span>: <span>{{ip}}</span>.</div><br><div><span>Your account security is our utmost priority, and we are committed to ensuring the safety of your information. If you did not initiate this password reset or notice any suspicious activity on your account, please contact our support team immediately for further assistance.</span></div></div>', 'We are writing to inform you that the password reset for your account was successful.', 'We are writing to inform you that the password reset for your account was successful.', '{\"ip\":\"IP address of the user\",\"browser\":\"Browser of the user\",\"operating_system\":\"Operating system of the user\",\"time\":\"Time of the request\"}', 1, '{{site_name}} Authentication Center', NULL, 1, NULL, 0, '2021-11-03 12:00:00', '2024-04-25 03:27:24'),
(9, 'ADMIN_SUPPORT_REPLY', 'Support - Reply', 'Re: {{ticket_subject}} - Ticket #{{ticket_id}}', '{{site_name}} - Support Ticket Replied', '<div>\r\n    <div><span>Thank you for reaching out to us regarding your support ticket with the subject</span>:\r\n        <span>\"{{ticket_subject}}\"&nbsp;</span><span>and ticket ID</span>: {{ticket_id}}.</div><br>\r\n    <div><span>We have carefully reviewed your inquiry, and we are pleased to provide you with the following\r\n            response</span><span>:</span></div><br>\r\n    <div>{{reply}}</div><br>\r\n    <div><span>If you have any further questions or need additional assistance, please feel free to reply by clicking on\r\n            the following link</span>: <a href=\"{{link}}\" title=\"\" target=\"_blank\">{{link}}</a><span>. This link will take you to\r\n            the ticket thread where you can provide further information or ask for clarification.</span></div><br>\r\n    <div><span>Thank you for your patience and cooperation as we worked to address your concerns.</span></div>\r\n</div>', 'Thank you for reaching out to us regarding your support ticket with the subject: \"{{ticket_subject}}\" and ticket ID: {{ticket_id}}. We have carefully reviewed your inquiry. To check the response, please go to the following link: {{link}}', 'Re: {{ticket_subject}} - Ticket #{{ticket_id}}', '{\"ticket_id\":\"ID of the support ticket\",\"ticket_subject\":\"Subject  of the support ticket\",\"reply\":\"Reply made by the admin\",\"link\":\"URL to view the support ticket\"}', 1, '{{site_name}} Support Team', NULL, 1, NULL, 0, '2021-11-03 12:00:00', '2024-05-08 07:26:06'),
(10, 'EVER_CODE', 'Verification - Email', 'Email Verification Code', NULL, '<div>\r\n    <div><span>Thank you for taking the time to verify your email address with us. Your email verification code\r\n            is</span>: <b><font size=\"6\">{{code}}</font></b></div><br>\r\n    <div><span>Please enter this code in the designated field on our platform to complete the verification\r\n            process.</span></div><br>\r\n    <div><span>If you did not request this verification code, please disregard this email. Your account security is our\r\n            top priority, and we advise you to take appropriate measures if you suspect any unauthorized access.</span>\r\n    </div><br>\r\n    <div><span>If you have any questions or encounter any issues during the verification process, please don\'t hesitate\r\n            to contact our support team for assistance.</span></div><br>\r\n    <div><span>Thank you for choosing us.</span></div>\r\n</div>', '---', '---', '{\"code\":\"Email verification code\"}', 1, '{{site_name}} Verification Center', NULL, 0, NULL, 0, '2021-11-03 12:00:00', '2024-04-25 03:27:12'),
(11, 'SVER_CODE', 'Verification - SMS', 'Verify Your Mobile Number', NULL, '---', 'Your mobile verification code is {{code}}. Please enter this code in the appropriate field to verify your mobile number. If you did not request this code, please ignore this message.', '---', '{\"code\":\"SMS Verification Code\"}', 0, '{{site_name}} Verification Center', NULL, 1, NULL, 0, '2021-11-03 12:00:00', '2024-04-25 03:27:03'),
(12, 'WITHDRAW_APPROVE', 'Withdraw - Approved', 'Withdrawal Confirmation: Your Request Processed Successfully', '{{site_name}} - Withdrawal Request Approved', '<div>We are writing to inform you that your withdrawal request of {{amount}} {{site_currency}} via {{method_name}} has been processed successfully.</div><div><br></div><div>Below are the details of your withdrawal:</div><div><br></div><div><b>Amount:</b> {{amount}} {{site_currency}}</div><div><b>Charge:</b> {{charge}} {{site_currency}}</div><div><b>Conversion Rate:</b> 1 {{site_currency}} = {{rate}} {{method_currency}}</div><div><b>You will receive:</b> {{method_amount}} {{method_currency}}</div><div><b>Via:</b> {{method_name}}</div><div><b>Transaction Number:</b> {{trx}}</div><div><br></div><hr><div><br></div><div><b>Details of Processed Payment:</b></div><div>{{admin_details}}</div><div><br></div><div>Should you have any questions or require further assistance, feel free to reach out to our support team. We\'re here to help.</div>', 'We are writing to inform you that your withdrawal request of {{amount}} {{site_currency}} via {{method_name}} has been processed successfully.', 'Withdrawal Confirmation: Your Request Processed Successfully', '{\"trx\":\"Transaction number for the withdraw\",\"amount\":\"Amount requested by the user\",\"charge\":\"Gateway charge set by the admin\",\"rate\":\"Conversion rate between base currency and method currency\",\"method_name\":\"Name of the withdraw method\",\"method_currency\":\"Currency of the withdraw method\",\"method_amount\":\"Amount after conversion between base currency and method currency\",\"admin_details\":\"Details provided by the admin\"}', 1, '{{site_name}} Finance', NULL, 1, NULL, 0, '2021-11-03 12:00:00', '2024-05-08 07:26:37'),
(13, 'WITHDRAW_REJECT', 'Withdraw - Rejected', 'Withdrawal Request Rejected', '{{site_name}} - Withdrawal Request Rejected', '<div>We regret to inform you that your withdrawal request of {{amount}} {{site_currency}} via {{method_name}} has been rejected.</div><div><br></div><div>Here are the details of your withdrawal:</div><div><br></div><div><b>Amount:</b> {{amount}} {{site_currency}}</div><div><b>Charge:</b> {{charge}} {{site_currency}}</div><div><b>Conversion Rate:</b> 1 {{site_currency}} = {{rate}} {{method_currency}}</div><div><b>Expected Amount:</b> {{method_amount}} {{method_currency}}</div><div><b>Via:</b> {{method_name}}</div><div><b>Transaction Number:</b> {{trx}}</div><div><br></div><hr><div><br></div><div><b>Refund Details:</b></div><div>{{amount}} {{site_currency}} has been refunded to your account, and your current balance is {{post_balance}} {{site_currency}}.</div><div><br></div><hr><div><br></div><div><b>Reason for Rejection:</b></div><div>{{admin_details}}</div><div><br></div><div>If you have any questions or concerns regarding this rejection or need further assistance, please do not hesitate to contact our support team. We apologize for any inconvenience this may have caused.</div>', 'We regret to inform you that your withdrawal request of {{amount}} {{site_currency}} via {{method_name}} has been rejected.', 'Withdrawal Request Rejected', '{\"trx\":\"Transaction number for the withdraw\",\"amount\":\"Amount requested by the user\",\"charge\":\"Gateway charge set by the admin\",\"rate\":\"Conversion rate between base currency and method currency\",\"method_name\":\"Name of the withdraw method\",\"method_currency\":\"Currency of the withdraw method\",\"method_amount\":\"Amount after conversion between base currency and method currency\",\"post_balance\":\"Balance of the user after fter this action\",\"admin_details\":\"Rejection message by the admin\"}', 1, '{{site_name}} Finance', NULL, 1, NULL, 0, '2021-11-03 12:00:00', '2024-05-08 07:26:55'),
(14, 'WITHDRAW_REQUEST', 'Withdraw - Requested', 'Withdrawal Request Confirmation', '{{site_name}} - Requested for withdrawal', '<div>We are pleased to inform you that your withdrawal request of {{amount}} {{site_currency}} via {{method_name}} has been submitted successfully.</div><div><br></div><div>Here are the details of your withdrawal:</div><div><br></div><div><b>Amount:</b> {{amount}} {{site_currency}}</div><div><b>Charge:</b> {{charge}} {{site_currency}}</div><div><b>Conversion Rate:</b> 1 {{site_currency}} = {{rate}} {{method_currency}}</div><div><b>Expected Amount:</b> {{method_amount}} {{method_currency}}</div><div><b>Via:</b> {{method_name}}</div><div><b>Transaction Number:</b> {{trx}}</div><div><br></div><div>Your current balance is {{post_balance}} {{site_currency}}.</div><div><br></div><div>Should you have any questions or require further assistance, feel free to reach out to our support team. We\'re here to help.</div>', 'We are pleased to inform you that your withdrawal request of {{amount}} {{site_currency}} via {{method_name}} has been submitted successfully.', 'Withdrawal request submitted successfully', '{\"trx\":\"Transaction number for the withdraw\",\"amount\":\"Amount requested by the user\",\"charge\":\"Gateway charge set by the admin\",\"rate\":\"Conversion rate between base currency and method currency\",\"method_name\":\"Name of the withdraw method\",\"method_currency\":\"Currency of the withdraw method\",\"method_amount\":\"Amount after conversion between base currency and method currency\",\"post_balance\":\"Balance of the user after fter this transaction\"}', 1, '{{site_name}} Finance', NULL, 1, NULL, 0, '2021-11-03 12:00:00', '2024-05-08 07:27:20'),
(15, 'DEFAULT', 'Default Template', '{{subject}}', '{{subject}}', '{{message}}', '{{message}}', '{{message}}', '{\"subject\":\"Subject\",\"message\":\"Message\"}', 1, NULL, NULL, 1, NULL, 1, '2019-09-14 13:14:22', '2024-05-16 01:32:53'),
(16, 'KYC_APPROVE', 'KYC Approved', 'KYC Details has been approved', '{{site_name}} - KYC Approved', '<div><div><span>We are pleased to inform you that your Know Your Customer (KYC) information has been successfully reviewed and approved. This means that you are now eligible to conduct any payout operations within our system.</span></div><br><div><span>Your commitment to completing the KYC process promptly is greatly appreciated, as it helps us ensure the security and integrity of our platform for all users.</span></div><br><div><span>With your KYC verification now complete, you can proceed with confidence to carry out any payout transactions you require. Should you encounter any issues or have any questions along the way, please don\'t hesitate to reach out to our support team. We\'re here to assist you every step of the way.</span></div><br><div><span>Thank you once again for choosing {{site_name}} and for your cooperation in this matter.</span></div></div>', 'We are pleased to inform you that your Know Your Customer (KYC) information has been successfully reviewed and approved. This means that you are now eligible to conduct any payout operations within our system.', 'Your  Know Your Customer (KYC) information has been approved successfully', '[]', 1, '{{site_name}} Verification Center', NULL, 1, NULL, 0, NULL, '2024-05-08 07:23:57'),
(17, 'KYC_REJECT', 'KYC Rejected', 'KYC has been rejected', '{{site_name}} - KYC Rejected', '<div><div><span>We regret to inform you that the Know Your Customer (KYC) information provided has been reviewed and unfortunately, it has not met our verification standards. As a result, we are unable to approve your KYC submission at this time.</span></div><br><div><span>We understand that this news may be disappointing, and we want to assure you that we take these matters seriously to maintain the security and integrity of our platform.</span></div><br><div><span>Reasons for rejection may include discrepancies or incomplete information in the documentation provided. If you believe there has been a misunderstanding or if you would like further clarification on why your KYC was rejected, please don\'t hesitate to contact our support team.</span></div><br><div><span>We encourage you to review your submitted information and ensure that all details are accurate and up-to-date. Once any necessary adjustments have been made, you are welcome to resubmit your KYC information for review.</span></div><br><div><span>We apologize for any inconvenience this may cause and appreciate your understanding and cooperation in this matter.</span></div><br><div>Rejection Reason:</div><div>{{reason}}</div><div><br></div><div><span>Thank you for your continued support and patience.</span></div></div>', 'We regret to inform you that the Know Your Customer (KYC) information provided has been reviewed and unfortunately, it has not met our verification standards. As a result, we are unable to approve your KYC submission at this time. We encourage you to review your submitted information and ensure that all details are accurate and up-to-date. Once any necessary adjustments have been made, you are welcome to resubmit your KYC information for review.', 'Your  Know Your Customer (KYC) information has been rejected', '{\"reason\":\"Rejection Reason\"}', 1, '{{site_name}} Verification Center', NULL, 1, NULL, 0, NULL, '2024-05-08 07:24:13'),
(18, 'ORDER_CANCEL', 'Order Cancel', 'Order Cancel Successfully', NULL, '<div>Your order cancel successfully.</div><div><br></div><div style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\">Details of your order:<br></span></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Pair:{{pair}}</div><div style=\"font-family: Montserrat, sans-serif;\">Amount: {{amount}} {{coin symbol}}<br></div><br><div style=\"font-family: Montserrat, sans-serif;\"><br><br><br></div>', 'Your order cancel successfully. Pair:{{pair}} .Amount: {{amount}} {{coin symbol}}', NULL, ' {\"amount\":\"Order Amount\",\"coin symbol\":\"Order Coin Symbol\",\"pair\":\"Order Pair Symbol\",\"market_currency_symbol\" : \"Order market currency symbol\"}', 1, NULL, NULL, 1, NULL, 0, '2021-11-03 06:00:00', '2023-08-26 01:32:50'),
(19, 'ORDER_OPEN', 'Order Open', 'Order Open Successfully', NULL, '<div>Your order open successfully.</div><div><br></div><div style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\">Details of your order:<br></span></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\"><div style=\"font-family: Montserrat, sans-serif;\">Pair:{{pair}}</div></div><div style=\"font-family: Montserrat, sans-serif;\">Amount: {{amount}}  {{coin_symbol}}</div><div style=\"font-family: Montserrat, sans-serif;\">Rate: {{rate}}</div><div style=\"font-family: Montserrat, sans-serif;\">Price {{price}}</div><div style=\"font-family: Montserrat, sans-serif;\">total: {{total}} {{market_currency_symbol}}<br></div><br><div style=\"font-family: Montserrat, sans-serif;\"><br><br><br></div>', 'Your order open successfully.Pair:{{pair}}Amount: {{amount}} {{coin symbol}} , Rate: {{rate}} , Price {{price}} , total: {{total}} , {{market_currency_symbol}}', NULL, ' {\"amount\":\"Order Amount\",\"coin_symbol\":\"Order Coin Symbol\",\"pair\":\"Order Pair Symbol\",\"market_currency_symbol\" : \"Order market currency symbol\",\"market\" :\"Market Name\",\"rate\":\"Coin Rate\",\"price\":\"Coin Price\",\"total\":\"Total Amount\",\"order_side\":\"Order Side\"}', 1, NULL, NULL, 1, NULL, 0, '2021-11-03 06:00:00', '2023-08-26 03:33:44'),
(20, 'ORDER_COMPLETE', 'Order Complete', 'Order Completed Successfully', NULL, '<div>Your order open successfully.</div><div><br></div><div style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\">Details of your order:<br></span></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\"><div style=\"font-family: Montserrat, sans-serif;\">Pair:{{pair}}</div><div style=\"font-family: Montserrat, sans-serif;\">Amount: {{amount}}  {{coin_symbol}}</div></div><div style=\"font-family: Montserrat, sans-serif;\">Rate: {{rate}}</div><div style=\"font-family: Montserrat, sans-serif;\">Price {{price}}</div><div style=\"font-family: Montserrat, sans-serif;\">Filed Amount: {{filled_amount}}  {{coin_symbol}},<br></div><div style=\"font-family: Montserrat, sans-serif;\">total: {{total}} {{market_currency_symbol}}<br></div><br><div style=\"font-family: Montserrat, sans-serif;\"><br><br><br></div>', 'Your order open successfully.Pair:{{pair}}Amount: {{amount}} {{coin symbol}} , Rate: {{rate}} , Price {{price}} , total: {{total}} , {{market_currency_symbol}},Filed Amount: {{filled_amount}}  {{coin_symbol}},', NULL, '{\"amount\":\"Order Amount\",\"coin_symbol\":\"Order Coin Symbol\",\"pair\":\"Order Pair Symbol\",\"market_currency_symbol\" : \"Order market currency symbol\",\"market\" :\"Market Name\",\"rate\":\"Coin Rate\",\"price\":\"Coin Price\",\"total\":\"Total Amount\",\"order_side\":\"Order Side\",\"filled_amount\" : \"Filled Amount\",\"filled_percentage\" : \"Filled Amount\"}', 1, NULL, NULL, 1, NULL, 0, '2021-11-03 06:00:00', '2023-08-26 23:16:19'),
(21, 'PLAN_PURCHASED', 'Plan Purchased', 'Plan Purchased Successfully', NULL, '<div>We\'re thrilled to share the exciting news that your {{plan_name}} plan is now activated and ready for action! 🎉</div><div><br></div><div>Here are the key details:</div><div><br></div><div>Plan Name: {{plan_name}}</div><div>Expire Date: {{expires_at}}</div><div>Plan Duration: {{duration}}</div>', 'We\'re thrilled to share the exciting news that your {{plan_name}} plan is now activated and ready for action! 🎉\r\n\r\nHere are the key details:\r\n\r\nPlan Name: {{plan_name}}\r\nExpire Date: {{expires_at}}\r\nPlan Duration: {{duration}}', NULL, '{\"plan_name\":\"Subscribed plan name\",\"price\":\"Plan price\",\"fund\":\"Plan fund\",\"duration\":\"plan duration\",\"expires_at\":\"Plan expires at\"}', 1, NULL, NULL, 1, NULL, 0, '2021-11-03 06:00:00', '2024-11-09 10:06:25'),
(22, 'PLAN_RENEWED', 'Plan Renewed ', 'Plan Renewed Successfully', NULL, '<div>We\'re thrilled to share the exciting news that your {{plan_name}} plan is now renewed 🎉</div><div><br></div><div>Here are the key details:</div><div><br></div><div>Plan Name: {{plan_name}}</div><div>Expire Date: {{expires_at}}</div><div>Plan Duration: {{duration}}</div>', 'We\'re thrilled to share the exciting news that your {{plan_name}} plan is now activated and ready for action! 🎉\r\n\r\nHere are the key details:\r\n\r\nPlan Name: {{plan_name}}\r\nExpire Date: {{expires_at}}\r\nPlan Duration: {{duration}}', NULL, '{\"plan_name\":\"Subscribed plan name\",\"price\":\"Plan price\",\"fund\":\"Plan fund\",\"duration\":\"plan duration\",\"expires_at\":\"Plan expires at\"}', 1, NULL, NULL, 1, NULL, 0, '2021-11-03 06:00:00', '2024-11-09 10:10:29'),
(23, 'PLAN_FAILED', 'Plan Failed', 'Plan Failed', NULL, '<div>Plan failed</div><div><br></div><div>Here is the details</div><div><br></div><div>Plan Name: {{plan_name}}</div><div>Failed Reason: {{failed_reason}}</div>', 'We\'re thrilled to share the exciting news that your {{plan_name}} plan is now activated and ready for action! 🎉\r\n\r\nHere are the key details:\r\n\r\nPlan Name: {{plan_name}}\r\nExpire Date: {{expires_at}}\r\nPlan Duration: {{duration}}', NULL, '{\"plan_name\":\"Subscribed plan name\",\"failed_reason\":\"Plan failed reason\"}', 1, NULL, NULL, 1, NULL, 0, '2021-11-03 06:00:00', '2024-11-09 10:31:13'),
(24, 'PHASE_PROFIT', 'Profit Share', 'Profit share for phase complete', NULL, '<div>Phase complete profit share</div><div><br></div><div>Here is the details</div><div><br></div><div>Plan Name: {{plan_name}}</div><div>Profit: {{profit}}</div>', 'We\'re thrilled to share the exciting news that your {{plan_name}} plan is now activated and ready for action! 🎉\r\n\r\nHere are the key details:\r\n\r\nPlan Name: {{plan_name}}\r\nExpire Date: {{expires_at}}\r\nPlan Duration: {{duration}}', NULL, '{\"plan_name\":\"Subscribed plan name\",\"profit\":\"Profit amount\"}', 1, NULL, NULL, 1, NULL, 0, '2021-11-03 06:00:00', '2024-11-09 10:54:19');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pair_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `coin_id` tinyint(1) NOT NULL DEFAULT 0,
  `market_currency_id` tinyint(1) NOT NULL DEFAULT 0,
  `trx` text DEFAULT NULL,
  `order_side` tinyint(1) NOT NULL COMMENT '1=buy,2=sell',
  `order_type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=Limit Order, 2=Market Order',
  `rate` decimal(28,8) NOT NULL DEFAULT 0.00000000 COMMENT 'user providing rate',
  `price` decimal(28,8) NOT NULL DEFAULT 0.00000000 COMMENT 'coin price',
  `amount` decimal(28,8) NOT NULL DEFAULT 0.00000000 COMMENT 'coin quantity',
  `total` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `filled_amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `filed_percentage` decimal(5,2) NOT NULL DEFAULT 0.00,
  `charge` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `is_bot` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=Open,1=Completed,9=canceled',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `slug` varchar(40) DEFAULT NULL,
  `tempname` varchar(40) DEFAULT NULL COMMENT 'template name',
  `secs` text DEFAULT NULL,
  `seo_content` text DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `slug`, `tempname`, `secs`, `seo_content`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'HOME', '/', 'templates.basic.', '[\"scrolling_ticker\",\"brand\",\"how_it_work\",\"counter\",\"pricing\",\"why_choose_us\",\"highlights\",\"payouts\",\"faq\",\"testimonial\",\"cta\"]', '{\"image\":\"663212c9551ed1714557641.png\",\"description\":\"Et recusandae Minus\",\"social_title\":null,\"social_description\":\"Odit magna eos cons\",\"keywords\":null}', 1, '2020-07-11 06:23:58', '2024-11-19 06:15:45'),
(5, 'Contact', 'contact', 'templates.basic.', NULL, NULL, 1, '2020-10-22 01:14:53', '2020-10-22 01:14:53'),
(26, 'Market', 'market', 'templates.basic.', NULL, NULL, 1, '2024-10-29 06:24:10', '2024-10-29 06:24:10'),
(27, 'Crypto Currency', 'crypto-currency', 'templates.basic.', NULL, NULL, 1, '2024-10-29 06:27:03', '2024-10-29 06:27:03');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(40) DEFAULT NULL,
  `token` varchar(40) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phase_logics`
--

CREATE TABLE `phase_logics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `plan_phase_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `logic_box_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phase_logs`
--

CREATE TABLE `phase_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `plan_history_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `profit` decimal(5,2) NOT NULL DEFAULT 0.00,
  `phase_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(225) DEFAULT NULL,
  `price` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `fund` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `conversion` int(11) NOT NULL DEFAULT 0,
  `max_daily_loss` decimal(5,2) NOT NULL DEFAULT 0.00,
  `max_overall_loss` decimal(5,2) NOT NULL DEFAULT 0.00,
  `duration` int(11) NOT NULL DEFAULT 0 COMMENT 'in days',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plan_histories`
--

CREATE TABLE `plan_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `plan_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `price` decimal(28,8) UNSIGNED NOT NULL DEFAULT 0.00000000,
  `last_completed_phase` int(11) NOT NULL DEFAULT 0,
  `phase_completed_at` date DEFAULT NULL,
  `fund` decimal(28,8) UNSIGNED NOT NULL DEFAULT 0.00000000,
  `duration` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `conversion` int(11) NOT NULL DEFAULT 0,
  `rem_conversion` int(11) NOT NULL DEFAULT 0,
  `expires_at` datetime DEFAULT NULL,
  `last_payout` date DEFAULT NULL,
  `last_update` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1: Running\r\n2: Failed\r\n3: Completed\r\n4: Expired',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plan_phases`
--

CREATE TABLE `plan_phases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `plan_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(40) NOT NULL DEFAULT '0',
  `profit` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plan_subscriptions`
--

CREATE TABLE `plan_subscriptions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `invested_amount` decimal(15,2) NOT NULL,
  `current_balance` decimal(15,2) NOT NULL,
  `start_date` timestamp NULL DEFAULT current_timestamp(),
  `end_date` timestamp NULL DEFAULT NULL,
  `status` enum('active','completed','cancelled') DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `signals`
--

CREATE TABLE `signals` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `signal_price` decimal(10,2) NOT NULL,
  `signal_strength` decimal(5,2) NOT NULL,
  `amount` decimal(15,3) NOT NULL,
  `currency` varchar(10) DEFAULT 'USD',
  `current_balance` decimal(15,2) DEFAULT 0.00,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `signals`
--

INSERT INTO `signals` (`id`, `name`, `signal_price`, `signal_strength`, `amount`, `currency`, `current_balance`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'CD V5', 12.50, 85.00, 1000.000, 'USD', 500.00, 1, '2025-02-02 10:53:56', '2025-02-02 10:53:56'),
(2, 'R28-M', 15.75, 90.50, 1500.500, 'USD', 300.25, 1, '2025-02-02 10:53:56', '2025-02-02 10:53:56'),
(3, 'Signal X', 8.99, 70.00, 500.000, 'USD', 100.00, 1, '2025-02-02 10:53:56', '2025-02-02 10:53:56'),
(4, 'Signal Y', 20.00, 95.00, 2000.000, 'USD', 1500.00, 0, '2025-02-02 10:53:56', '2025-02-02 10:53:56'),
(5, 'Signal Z', 5.00, 60.00, 250.750, 'USD', 50.00, 1, '2025-02-02 10:53:56', '2025-02-02 10:53:56'),
(6, 'CD V5', 12.50, 85.00, 1000.000, 'USD', 500.00, 1, '2025-02-02 10:53:57', '2025-02-02 10:53:57'),
(7, 'R28-M', 15.75, 90.50, 1500.500, 'USD', 300.25, 1, '2025-02-02 10:53:57', '2025-02-02 10:53:57'),
(8, 'Signal X', 8.99, 70.00, 500.000, 'USD', 100.00, 1, '2025-02-02 10:53:57', '2025-02-02 10:53:57'),
(9, 'Signal Y', 20.00, 95.00, 2000.000, 'USD', 1500.00, 0, '2025-02-02 10:53:57', '2025-02-02 10:53:57'),
(10, 'Signal Z', 5.00, 60.00, 250.750, 'USD', 50.00, 1, '2025-02-02 10:53:57', '2025-02-02 10:53:57');

-- --------------------------------------------------------

--
-- Table structure for table `signal_purchases`
--

CREATE TABLE `signal_purchases` (
  `id` bigint(20) NOT NULL,
  `signal_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `amount` decimal(15,3) NOT NULL,
  `strength_at_purchase` decimal(5,2) NOT NULL,
  `currency` varchar(10) NOT NULL,
  `status` enum('pending','completed','failed') DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `signal_purchases`
--

INSERT INTO `signal_purchases` (`id`, `signal_id`, `user_id`, `amount`, `strength_at_purchase`, `currency`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 1500.500, 0.00, '', 'pending', '2025-02-02 18:55:28', '2025-02-02 18:55:28'),
(2, 2, 5, 1500.500, 0.00, '', 'pending', '2025-04-19 06:15:02', '2025-04-19 06:15:02'),
(3, 1, 8, 1000.000, 0.00, '', 'pending', '2025-04-22 07:27:19', '2025-04-22 07:27:19'),
(4, 1, 8, 1000.000, 0.00, '', 'pending', '2025-04-22 07:27:29', '2025-04-22 07:27:29');

-- --------------------------------------------------------

--
-- Table structure for table `stakes`
--

CREATE TABLE `stakes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `crypto_type` varchar(10) NOT NULL,
  `minimum` varchar(100) NOT NULL,
  `maximum` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `duration` varchar(20) NOT NULL,
  `roi` varchar(100) NOT NULL,
  `status` varchar(20) DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stakes`
--

INSERT INTO `stakes` (`id`, `name`, `crypto_type`, `minimum`, `maximum`, `amount`, `duration`, `roi`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Bitcoin', 'BTC', '0.001', '1.0', '0.01', '90', '20', 'active', '2025-02-08 08:59:00', '2025-08-18 16:36:28'),
(2, 'Ethereum', 'ETH', '0.002', '2.0', '0.02', '60 days', '4%', 'active', '2025-02-08 08:59:00', '2025-02-08 08:59:00'),
(3, 'Binance Coin', 'BNB', '0.003', '3.0', '0.03', '45 days', '3.5%', 'active', '2025-02-08 08:59:00', '2025-02-08 08:59:00'),
(4, 'Tether', 'USDT', '10', '1000', '100', '30 days', '2%', 'active', '2025-02-08 08:59:00', '2025-02-08 08:59:00'),
(5, 'Cardano', 'ADA', '50', '5000', '500', '120 days', '6%', 'active', '2025-02-08 08:59:00', '2025-02-08 08:59:00'),
(6, 'Solana', 'SOL', '0.05', '5.0', '0.5', '75 days', '4.5%', 'active', '2025-02-08 08:59:00', '2025-02-08 08:59:00'),
(7, 'XRP', 'XRP', '100', '10000', '1000', '90 days', '5%', 'active', '2025-02-08 08:59:00', '2025-02-08 08:59:00'),
(8, 'Polkadot', 'DOT', '1', '100', '10', '60 days', '4%', 'active', '2025-02-08 08:59:00', '2025-02-08 08:59:00'),
(9, 'Dogecoin', 'DOGE', '1000', '100000', '10000', '30 days', '2%', 'active', '2025-02-08 08:59:00', '2025-02-08 08:59:00'),
(10, 'Avalanche', 'AVAX', '0.1', '10', '1', '45 days', '3.5%', 'active', '2025-02-08 08:59:00', '2025-02-08 08:59:00'),
(11, 'Litecoin', 'LTC', '0.05', '5.0', '0.5', '90 days', '5%', 'active', '2025-02-08 08:59:00', '2025-02-08 08:59:00'),
(12, 'Chainlink', 'LINK', '1', '100', '10', '60 days', '4%', 'active', '2025-02-08 08:59:00', '2025-02-08 08:59:00'),
(13, 'Bitcoin Cash', 'BCH', '0.01', '1.0', '0.1', '120 days', '6%', 'active', '2025-02-08 08:59:00', '2025-02-08 08:59:00'),
(14, 'Stellar', 'XLM', '100', '10000', '1000', '75 days', '4.5%', 'active', '2025-02-08 08:59:00', '2025-02-08 08:59:00'),
(15, 'VeChain', 'VET', '500', '50000', '5000', '90 days', '5%', 'active', '2025-02-08 08:59:00', '2025-02-08 08:59:00'),
(16, 'Filecoin', 'FIL', '0.1', '10', '1', '60 days', '4%', 'active', '2025-02-08 08:59:00', '2025-02-08 08:59:00'),
(17, 'TRON', 'TRX', '1000', '100000', '10000', '30 days', '2%', 'active', '2025-02-08 08:59:00', '2025-02-08 08:59:00'),
(18, 'Ethereum Classic', 'ETC', '0.05', '5.0', '0.5', '45 days', '3.5%', 'active', '2025-02-08 08:59:00', '2025-02-08 08:59:00'),
(19, 'EOS', 'EOS', '10', '1000', '100', '90 days', '5%', 'active', '2025-02-08 08:59:00', '2025-02-08 08:59:00'),
(20, 'Cosmos', 'ATOM', '1', '100', '10', '60 days', '4%', 'active', '2025-02-08 08:59:00', '2025-02-08 08:59:00'),
(21, 'Tezos', 'XTZ', '100', '10000', '1000', '120 days', '6%', 'active', '2025-02-08 08:59:00', '2025-02-08 08:59:00'),
(22, 'Monero', 'XMR', '0.01', '1.0', '0.1', '75 days', '4.5%', 'active', '2025-02-08 08:59:00', '2025-02-08 08:59:00'),
(23, 'Aave', 'AAVE', '0.1', '10', '1', '90 days', '5%', 'active', '2025-02-08 08:59:00', '2025-02-08 08:59:00'),
(24, 'Crypto.com Coin', 'CRO', '1000', '100000', '10000', '60 days', '4%', 'active', '2025-02-08 08:59:00', '2025-02-08 08:59:00'),
(25, 'Algorand', 'ALGO', '500', '50000', '5000', '30 days', '2%', 'active', '2025-02-08 08:59:00', '2025-02-08 08:59:00'),
(26, 'Dash', 'DASH', '0.05', '5.0', '0.5', '45 days', '3.5%', 'active', '2025-02-08 08:59:00', '2025-02-08 08:59:00'),
(27, 'Compound', 'COMP', '0.1', '10', '1', '90 days', '5%', 'active', '2025-02-08 08:59:00', '2025-02-08 08:59:00'),
(28, 'NEO', 'NEO', '1', '100', '10', '60 days', '4%', 'active', '2025-02-08 08:59:00', '2025-02-08 08:59:00'),
(29, 'Kusama', 'KSM', '0.01', '1.0', '0.1', '120 days', '6%', 'active', '2025-02-08 08:59:00', '2025-02-08 08:59:00'),
(30, 'Bitcoin SV', 'BSV', '0.05', '5.0', '0.5', '75 days', '4.5%', 'active', '2025-02-08 08:59:00', '2025-02-08 08:59:00'),
(31, 'Theta Network', 'THETA', '10', '1000', '100', '90 days', '5%', 'active', '2025-02-08 08:59:00', '2025-02-08 08:59:00'),
(32, 'Elrond', 'EGLD', '0.1', '10', '1', '60 days', '4%', 'active', '2025-02-08 08:59:00', '2025-02-08 08:59:00'),
(33, 'Huobi Token', 'HT', '1', '100', '10', '30 days', '2%', 'active', '2025-02-08 08:59:00', '2025-02-08 08:59:00');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `minimum_amount` decimal(15,2) NOT NULL,
  `maximum_amount` decimal(15,2) NOT NULL,
  `duration_days` int(11) NOT NULL,
  `roi_percentage` decimal(5,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `name`, `minimum_amount`, `maximum_amount`, `duration_days`, `roi_percentage`, `created_at`, `updated_at`) VALUES
(1, 'Starter plan', 10000.00, 20000.00, 365, 60.00, '2025-02-03 00:00:02', '2025-02-03 00:00:02'),
(2, 'Classic plan', 100000.00, 200000.00, 5, 150.00, '2025-02-03 00:00:02', '2025-02-12 03:05:42'),
(3, 'Royal Turcotte', 92.00, 570.00, 332, 176.00, '2025-02-12 02:19:11', '2025-02-12 02:19:11');

-- --------------------------------------------------------

--
-- Table structure for table `support_attachments`
--

CREATE TABLE `support_attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `support_message_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `attachment` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_messages`
--

CREATE TABLE `support_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `support_ticket_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `message` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_tickets`
--

CREATE TABLE `support_tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT 0,
  `name` varchar(40) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `ticket` varchar(40) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: Open, 1: Answered, 2: Replied, 3: Closed',
  `priority` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 = Low, 2 = medium, 3 = heigh',
  `last_reply` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trades`
--

CREATE TABLE `trades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `pair_id` int(11) NOT NULL DEFAULT 0,
  `trader_id` int(11) NOT NULL DEFAULT 0,
  `trade_side` tinyint(1) NOT NULL COMMENT '1=buy,2=sell',
  `rate` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `total` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `charge` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `wallet_id` int(11) NOT NULL DEFAULT 0,
  `amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `charge` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `post_balance` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `trx_type` varchar(40) DEFAULT NULL,
  `trx` varchar(40) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `remark` varchar(40) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `wallet_id`, `amount`, `charge`, `post_balance`, `trx_type`, `trx`, `details`, `remark`, `created_at`, `updated_at`) VALUES
(1, 3, 0, 650.00000000, 0.00000000, 650.00000000, '+', 'UQR2GJLQA98N', 'hi me', 'balance_add', '2025-01-21 22:27:14', '2025-01-21 22:27:14'),
(2, 3, 0, 400.00000000, 0.00000000, 250.00000000, '-', 'JJ3V3JDQY9ZQ', 'Withdraw request via USDT', 'withdraw', '2025-02-01 03:24:56', '2025-02-01 03:24:56'),
(3, 3, 0, 6000000.00000000, 0.00000000, 6000250.00000000, '+', 'TGV7QCNBGGWC', 'hi', 'balance_add', '2025-02-01 09:10:02', '2025-02-01 09:10:02'),
(4, 3, 0, 1000.00000000, 0.00000000, 5999250.00000000, '-', 'U86SQGLGHUSL', 'Withdraw request via USDT', 'withdraw', '2025-02-01 09:32:34', '2025-02-01 09:32:34'),
(5, 3, 0, 650.00000000, 0.00000000, 5998600.00000000, '-', '6NVWV2PP3PWS', 'Withdraw request via USDT', 'withdraw', '2025-02-01 09:38:47', '2025-02-01 09:38:47'),
(6, 3, 0, 600.00000000, 0.00000000, 5998000.00000000, '-', 'K72LNVSKAFC5', 'Withdraw request via USDT', 'withdraw', '2025-02-01 09:41:27', '2025-02-01 09:41:27'),
(7, 3, 0, 600.00000000, 0.00000000, 5997400.00000000, '-', '2BVHZ77LCOUQ', 'Withdraw request via USDT', 'withdraw', '2025-02-01 09:45:55', '2025-02-01 09:45:55'),
(8, 3, 0, 667.00000000, 0.00000000, 5996733.00000000, '-', 'M4XIVZ3ZZJ3W', 'Withdraw request via USDT', 'withdraw', '2025-02-01 09:54:40', '2025-02-01 09:54:40'),
(9, 3, 0, 343.00000000, 0.00000000, 5996390.00000000, '-', 'AJMQM6Q1NFGX', 'Withdraw request via USDT', 'withdraw', '2025-02-01 10:03:36', '2025-02-01 10:03:36'),
(10, 3, 0, 1000.00000000, 0.00000000, 5995390.00000000, '-', 'QO3CF3A4AUEF', 'Withdraw request via USDT', 'withdraw', '2025-02-01 17:45:13', '2025-02-01 17:45:13'),
(11, 3, 0, 1000.00000000, 0.00000000, 5317987.50000000, '-', 'EFOO1DWI2CGQ', 'Withdraw request via USDT', 'withdraw', '2025-02-05 12:58:01', '2025-02-05 12:58:01'),
(12, 3, 0, 443.00000000, 0.00000000, 5317544.50000000, '-', 'B21USSONP5ZV', 'Withdraw request via USDT', 'withdraw', '2025-02-05 13:20:40', '2025-02-05 13:20:40'),
(13, 1, 0, 1000.00000000, 0.00000000, 1000.00000000, '+', 'WK13HDA7MEZ4', '34543', 'balance_add', '2025-02-15 11:09:43', '2025-02-15 11:09:43'),
(14, 1, 0, 600.00000000, 0.00000000, 400.00000000, '-', '4VJHC16D72V5', 'Withdraw request via USDT', 'withdraw', '2025-02-16 23:26:34', '2025-02-16 23:26:34'),
(15, 5, 0, 1000000.00000000, 0.00000000, 1000000.00000000, '+', 'V4HJ1P3HHLHB', 'fund', 'balance_add', '2025-04-08 21:52:40', '2025-04-08 21:52:40'),
(16, 5, 0, 1000.00000000, 0.00000000, 988800.00000000, '-', 'Z2VXICZKGE8W', 'Withdraw request via USDT', 'withdraw', '2025-04-19 06:06:59', '2025-04-19 06:06:59'),
(17, 8, 0, 100000000.00000000, 0.00000000, 100000000.00000000, '+', 'VYCP6HBUVZEW', 'fund', 'balance_add', '2025-04-21 23:22:35', '2025-04-21 23:22:35'),
(18, 8, 0, 1000.00000000, 0.00000000, 99670800.00000000, '-', '1AVU13HWXCTH', 'Withdraw request via USDT', 'withdraw', '2025-04-22 12:42:22', '2025-04-22 12:42:22'),
(19, 8, 0, 2000.00000000, 0.00000000, 99663800.00000000, '-', 'NDCEII9URTVW', 'Withdraw request via USDT', 'withdraw', '2025-04-23 21:14:35', '2025-04-23 21:14:35'),
(20, 8, 0, 99663599.59000000, 0.00000000, 100.00000000, '-', '8Y56XCN8RW2N', 'eer', 'balance_subtract', '2025-08-18 13:18:04', '2025-08-18 13:18:04');

-- --------------------------------------------------------

--
-- Table structure for table `update_logs`
--

CREATE TABLE `update_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(40) DEFAULT NULL,
  `update_log` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `plan_history_id` int(11) NOT NULL DEFAULT 0,
  `plan_expires_at` datetime DEFAULT NULL,
  `firstname` varchar(40) DEFAULT NULL,
  `lastname` varchar(40) DEFAULT NULL,
  `username` varchar(40) DEFAULT NULL,
  `profit` varchar(111) DEFAULT NULL,
  `email` varchar(40) NOT NULL,
  `dial_code` varchar(40) DEFAULT NULL,
  `mobile` varchar(40) DEFAULT NULL,
  `balance` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `password` varchar(255) NOT NULL,
  `country_name` varchar(255) DEFAULT NULL,
  `country_code` varchar(40) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0: banned, 1: active',
  `kyc_data` text DEFAULT NULL,
  `kyc_rejection_reason` varchar(255) DEFAULT NULL,
  `kv` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: KYC Unverified, 2: KYC pending, 1: KYC verified',
  `ev` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: email unverified, 1: email verified',
  `sv` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: mobile unverified, 1: mobile verified',
  `profile_complete` tinyint(1) NOT NULL DEFAULT 0,
  `ver_code` varchar(40) DEFAULT NULL COMMENT 'stores verification code',
  `ver_code_send_at` datetime DEFAULT NULL COMMENT 'verification send time',
  `ts` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: 2fa off, 1: 2fa on',
  `tv` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0: 2fa unverified, 1: 2fa verified',
  `tsc` varchar(255) DEFAULT NULL,
  `ban_reason` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `provider` varchar(40) DEFAULT NULL,
  `provider_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `plan_history_id`, `plan_expires_at`, `firstname`, `lastname`, `username`, `profit`, `email`, `dial_code`, `mobile`, `balance`, `password`, `country_name`, `country_code`, `city`, `state`, `zip`, `address`, `status`, `kyc_data`, `kyc_rejection_reason`, `kv`, `ev`, `sv`, `profile_complete`, `ver_code`, `ver_code_send_at`, `ts`, `tv`, `tsc`, `ban_reason`, `remember_token`, `provider`, `provider_id`, `created_at`, `updated_at`) VALUES
(8, 0, NULL, 'Daniel', 'Adelola', 'vura', NULL, 'vuradigitals@gmail.com', '234', '123453443', 2309994.37000000, '$2y$12$0FDZBs/2UGcKNe7ysBo2SuD.C96f5BwFhb2Fa25VM81wr4RT4utqa', 'Nigeria', 'NG', 'Springstead', 'WI', '54552', '1792 Mercer Street', 1, NULL, NULL, 1, 1, 1, 1, '513781', '2025-04-21 23:21:49', 0, 1, NULL, NULL, NULL, NULL, NULL, '2025-04-21 21:48:59', '2025-08-19 09:11:12'),
(9, 0, NULL, 'Daniel', 'Adelola', 'admin@vura.pro', NULL, 'usser@vura.pro', '234', '43657657567', 0.00000000, '$2y$12$SCP.7wiKXTjiDMeqqogZ0OStTBANl4WfdAQuRYhnk83nBl5/npetO', 'Nigeria', 'NG', 'Ikorodu', 'Lagos', '100216', '11, ROYAL LONDON ESTATE, elepe, LAGOS', 1, NULL, NULL, 0, 1, 1, 1, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, '2025-08-19 11:17:31', '2025-08-19 11:44:32'),
(10, 0, NULL, 'Daniel', 'Adelola', 'user@vura.pro', NULL, 'user@vura.pro', '93', '90689689799', 2361.68000000, '$2y$12$ueHWXCTpbwXcQPb9BrJWPOvQH4XGkUc.5Fi2SnFVlopKxMwUmj/Y2', 'Afghanistan', 'AF', 'Springstead', 'WI', '54552', '1792 Mercer Street', 1, NULL, NULL, 1, 1, 1, 1, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, '2025-08-19 13:30:13', '2025-08-20 18:41:53');

-- --------------------------------------------------------

--
-- Table structure for table `users_stakes`
--

CREATE TABLE `users_stakes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(111) NOT NULL,
  `crypto_type` varchar(10) NOT NULL,
  `amount` decimal(18,8) NOT NULL,
  `duration` varchar(20) NOT NULL,
  `roi` varchar(111) NOT NULL,
  `status` varchar(20) DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_stakes`
--

INSERT INTO `users_stakes` (`id`, `user_id`, `name`, `crypto_type`, `amount`, `duration`, `roi`, `status`, `created_at`, `updated_at`) VALUES
(4, 4, 'Etherum', 'ETH', 100.00000000, '1', '4.00', 'active', '2025-02-08 14:46:36', '2025-04-22 07:39:44'),
(5, 5, '', 'ETH', 100.00000000, '1', '4%', 'active', '2025-04-09 12:41:23', '2025-04-09 12:41:23'),
(6, 5, '', 'BTC', 100.00000000, '1', '5%', 'active', '2025-04-09 12:44:46', '2025-04-09 12:44:46'),
(7, 8, '', 'ETH', 100.00000000, '1', '4%', 'active', '2025-04-22 07:28:28', '2025-04-22 07:28:28'),
(8, 8, '', 'ETH', 100000.00000000, '1', '4%', 'active', '2025-04-22 07:44:02', '2025-04-22 07:44:02'),
(9, 8, '', 'ETH', 100000.00000000, '1', '4%', 'active', '2025-04-22 07:46:46', '2025-04-22 07:46:46'),
(10, 8, '', 'USDT', 5000.00000000, '1', '2%', 'active', '2025-04-22 08:57:20', '2025-04-22 08:57:20'),
(11, 8, '', 'BTC', 20.00000000, '1', '5%', 'active', '2025-08-18 16:32:22', '2025-08-18 16:32:22'),
(12, 8, '', 'BTC', 3000.00000000, '1', '5%', 'active', '2025-08-18 16:34:23', '2025-08-18 16:34:23'),
(13, 8, '', 'BTC', 20.00000000, '6', '7', 'active', '2025-08-18 16:38:14', '2025-08-18 16:38:14'),
(14, 8, '', 'BTC', 20.00000000, '3', '20', 'active', '2025-08-18 16:54:59', '2025-08-18 16:54:59');

-- --------------------------------------------------------

--
-- Table structure for table `user_logins`
--

CREATE TABLE `user_logins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_ip` varchar(40) DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  `country` varchar(40) DEFAULT NULL,
  `country_code` varchar(40) DEFAULT NULL,
  `longitude` varchar(40) DEFAULT NULL,
  `latitude` varchar(40) DEFAULT NULL,
  `browser` varchar(40) DEFAULT NULL,
  `os` varchar(40) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_logins`
--

INSERT INTO `user_logins` (`id`, `user_id`, `user_ip`, `city`, `country`, `country_code`, `longitude`, `latitude`, `browser`, `os`, `created_at`, `updated_at`) VALUES
(1, 2, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2025-04-02 10:46:24', '2025-04-02 10:46:24'),
(2, 2, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2025-04-02 17:58:18', '2025-04-02 17:58:18'),
(3, 2, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2025-04-03 11:44:39', '2025-04-03 11:44:39'),
(4, 2, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2025-04-03 19:53:31', '2025-04-03 19:53:31'),
(5, 2, '105.115.4.227', 'Lagos', 'Nigeria', 'NG', '3.3903', '6.4474', 'Chrome', 'Windows 10', '2025-04-04 13:12:05', '2025-04-04 13:12:05'),
(6, 2, '102.89.68.38', 'Ibadan', 'Nigeria', 'NG', '3.9062', '7.3782', 'Handheld Browser', 'iPhone', '2025-04-04 13:13:44', '2025-04-04 13:13:44'),
(7, 2, '2c0f:f5c0:429:21a2:cc14:dfff:fe94:9df9', '', 'Nigeria', 'NG', '8', '10', 'Handheld Browser', 'Android', '2025-04-04 13:46:04', '2025-04-04 13:46:04'),
(8, 2, '102.89.75.20', 'Ibadan', 'Nigeria', 'NG', '3.9062', '7.3782', 'Handheld Browser', 'iPhone', '2025-04-04 13:51:40', '2025-04-04 13:51:40'),
(9, 2, '105.112.30.100', 'Lagos', 'Nigeria', 'NG', '3.3903', '6.4474', 'Chrome', 'Windows 10', '2025-04-04 21:12:25', '2025-04-04 21:12:25'),
(10, 2, '102.89.82.235', 'Ibadan', 'Nigeria', 'NG', '3.9062', '7.3782', 'Handheld Browser', 'iPhone', '2025-04-04 21:16:06', '2025-04-04 21:16:06'),
(11, 2, '102.89.82.235', 'Ibadan', 'Nigeria', 'NG', '3.9062', '7.3782', 'Handheld Browser', 'iPhone', '2025-04-04 21:16:30', '2025-04-04 21:16:30'),
(12, 5, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2025-04-08 21:41:10', '2025-04-08 21:41:10'),
(13, 5, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2025-04-09 06:00:02', '2025-04-09 06:00:02'),
(14, 5, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2025-04-09 11:22:30', '2025-04-09 11:22:30'),
(15, 5, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2025-04-19 06:04:09', '2025-04-19 06:04:09'),
(16, 5, '105.115.3.201', 'Lagos', 'Nigeria', 'NG', '3.3903', '6.4474', 'Chrome', 'Windows 10', '2025-04-21 21:13:51', '2025-04-21 21:13:51'),
(17, 6, '105.115.3.201', 'Lagos', 'Nigeria', 'NG', '3.3903', '6.4474', 'Chrome', 'Windows 10', '2025-04-21 21:40:43', '2025-04-21 21:40:43'),
(18, 5, '105.115.3.201', 'Lagos', 'Nigeria', 'NG', '3.3903', '6.4474', 'Chrome', 'Windows 10', '2025-04-21 21:42:20', '2025-04-21 21:42:20'),
(19, 7, '105.115.3.201', 'Lagos', 'Nigeria', 'NG', '3.3903', '6.4474', 'Chrome', 'Windows 10', '2025-04-21 21:46:43', '2025-04-21 21:46:43'),
(20, 8, '105.115.3.201', 'Lagos', 'Nigeria', 'NG', '3.3903', '6.4474', 'Chrome', 'Windows 10', '2025-04-21 21:49:00', '2025-04-21 21:49:00'),
(21, 8, '105.115.3.201', 'Lagos', 'Nigeria', 'NG', '3.3903', '6.4474', 'Handheld Browser', 'iPhone', '2025-04-21 22:57:54', '2025-04-21 22:57:54'),
(22, 8, '105.112.17.183', 'Lagos', 'Nigeria', 'NG', '3.3903', '6.4474', 'Chrome', 'Windows 10', '2025-04-21 23:41:59', '2025-04-21 23:41:59'),
(23, 8, '105.112.17.183', 'Lagos', 'Nigeria', 'NG', '3.3903', '6.4474', 'Handheld Browser', 'iPhone', '2025-04-22 00:36:52', '2025-04-22 00:36:52'),
(24, 8, '105.112.17.183', 'Lagos', 'Nigeria', 'NG', '3.3903', '6.4474', 'Handheld Browser', 'iPhone', '2025-04-22 00:40:04', '2025-04-22 00:40:04'),
(25, 8, '105.112.17.183', 'Lagos', 'Nigeria', 'NG', '3.3903', '6.4474', 'Chrome', 'Windows 10', '2025-04-22 07:20:17', '2025-04-22 07:20:17'),
(26, 8, '216.73.160.172', 'New York', 'United States', 'US', '-74', '40.7157', 'Chrome', 'Windows 10', '2025-04-22 08:11:22', '2025-04-22 08:11:22'),
(27, 8, '102.89.76.180', 'Ibadan', 'Nigeria', 'NG', '3.9062', '7.3782', 'Handheld Browser', 'iPhone', '2025-04-22 08:54:41', '2025-04-22 08:54:41'),
(28, 8, '197.210.53.153', 'Abuja', 'Nigeria', 'NG', '7.4969', '9.0567', 'Handheld Browser', 'Android', '2025-04-22 09:15:33', '2025-04-22 09:15:33'),
(29, 8, '105.112.192.14', 'Lagos', 'Nigeria', 'NG', '3.3903', '6.4474', 'Chrome', 'Windows 10', '2025-04-22 12:34:03', '2025-04-22 12:34:03'),
(30, 8, '105.112.192.14', 'Lagos', 'Nigeria', 'NG', '3.3903', '6.4474', 'Handheld Browser', 'iPhone', '2025-04-22 12:40:06', '2025-04-22 12:40:06'),
(31, 8, '2c0f:f5c0:42b:5b82:811c:3eaf:7a8d:c1d1', '', 'Nigeria', 'NG', '8', '10', 'Handheld Browser', 'iPhone', '2025-04-22 13:01:49', '2025-04-22 13:01:49'),
(32, 8, '102.89.68.21', 'Ibadan', 'Nigeria', 'NG', '3.9062', '7.3782', 'Handheld Browser', 'iPhone', '2025-04-22 16:32:35', '2025-04-22 16:32:35'),
(33, 8, '105.112.176.79', 'Lagos', 'Nigeria', 'NG', '3.3903', '6.4474', 'Handheld Browser', 'iPhone', '2025-04-22 16:43:29', '2025-04-22 16:43:29'),
(34, 8, '105.112.179.10', 'Lagos', 'Nigeria', 'NG', '3.3903', '6.4474', 'Chrome', 'Windows 10', '2025-04-23 19:43:21', '2025-04-23 19:43:21'),
(35, 8, '173.239.211.209', 'New York', 'United States', 'US', '-74.0066', '40.7126', 'Chrome', 'Windows 10', '2025-04-27 08:32:27', '2025-04-27 08:32:27'),
(36, 8, '105.112.199.156', 'Lagos', 'Nigeria', 'NG', '3.3903', '6.4474', 'Chrome', 'Windows 10', '2025-04-29 18:58:43', '2025-04-29 18:58:43'),
(37, 8, '105.112.176.167', 'Lagos', 'Nigeria', 'NG', '3.3903', '6.4474', 'Chrome', 'Windows 10', '2025-05-11 16:48:08', '2025-05-11 16:48:08'),
(38, 8, '105.112.204.37', 'Lagos', 'Nigeria', 'NG', '3.3903', '6.4474', 'Chrome', 'Windows 10', '2025-05-12 07:15:52', '2025-05-12 07:15:52'),
(39, 8, '105.112.204.37', 'Lagos', 'Nigeria', 'NG', '3.3903', '6.4474', 'Chrome', 'Windows 10', '2025-05-12 07:41:26', '2025-05-12 07:41:26'),
(40, 8, '102.89.47.242', 'Lagos', 'Nigeria', 'NG', '3.3903', '6.4474', 'Handheld Browser', 'iPhone', '2025-05-13 13:08:28', '2025-05-13 13:08:28'),
(41, 8, '105.112.30.23', 'Lagos', 'Nigeria', 'NG', '3.3903', '6.4474', 'Handheld Browser', 'iPhone', '2025-05-13 13:12:06', '2025-05-13 13:12:06'),
(42, 8, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2025-08-13 10:00:17', '2025-08-13 10:00:17'),
(43, 8, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2025-08-13 17:04:10', '2025-08-13 17:04:10'),
(44, 8, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2025-08-15 07:33:56', '2025-08-15 07:33:56'),
(45, 8, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2025-08-15 17:19:14', '2025-08-15 17:19:14'),
(46, 8, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2025-08-16 04:22:23', '2025-08-16 04:22:23'),
(47, 8, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2025-08-16 11:39:26', '2025-08-16 11:39:26'),
(48, 8, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2025-08-16 22:00:29', '2025-08-16 22:00:29'),
(49, 8, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2025-08-17 11:10:08', '2025-08-17 11:10:08'),
(50, 8, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2025-08-17 11:34:56', '2025-08-17 11:34:56'),
(51, 8, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2025-08-18 11:58:36', '2025-08-18 11:58:36'),
(52, 8, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2025-08-18 20:26:52', '2025-08-18 20:26:52'),
(53, 8, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2025-08-19 05:39:31', '2025-08-19 05:39:31'),
(54, 8, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2025-08-19 08:50:38', '2025-08-19 08:50:38'),
(55, 8, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2025-08-19 09:03:47', '2025-08-19 09:03:47'),
(56, 8, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2025-08-19 09:04:03', '2025-08-19 09:04:03'),
(57, 9, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2025-08-19 11:17:31', '2025-08-19 11:17:31'),
(58, 10, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2025-08-19 13:30:13', '2025-08-19 13:30:13'),
(59, 10, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2025-08-19 18:58:07', '2025-08-19 18:58:07'),
(60, 10, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2025-08-20 08:10:19', '2025-08-20 08:10:19'),
(61, 10, '127.0.0.1', '', '', '', '', '', 'Handheld Browser', 'iPhone', '2025-08-20 08:47:13', '2025-08-20 08:47:13'),
(62, 10, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2025-08-20 11:13:00', '2025-08-20 11:13:00'),
(63, 10, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2025-08-20 14:21:19', '2025-08-20 14:21:19'),
(64, 10, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2025-08-20 18:57:43', '2025-08-20 18:57:43');

-- --------------------------------------------------------

--
-- Table structure for table `user_phases`
--

CREATE TABLE `user_phases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `plan_history_id` int(11) NOT NULL DEFAULT 0,
  `plan_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `plan_phase_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `phase_logic_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `action_time` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1: success, 2:failed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_profit_losses`
--

CREATE TABLE `user_profit_losses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `plan_history_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `balance` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `balance_change` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_subscriptions`
--

CREATE TABLE `user_subscriptions` (
  `id` int(11) NOT NULL,
  `subscription_id` varchar(111) NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` varchar(111) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `duration_days` int(11) NOT NULL,
  `roi` decimal(5,2) NOT NULL,
  `profit` varchar(111) DEFAULT NULL,
  `status` varchar(111) NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_subscriptions`
--

INSERT INTO `user_subscriptions` (`id`, `subscription_id`, `name`, `user_id`, `amount`, `duration_days`, `roi`, `profit`, `status`, `created_at`, `updated_at`) VALUES
(9, '1', 'Starter plan', '3', 545434.00, 365, 60.00, '4', 'active', '2025-02-05 01:45:48', '2025-02-10 23:18:50'),
(8, '2', 'Classic plan', '3', 33234.00, 44, 150.00, NULL, 'Active', '2025-02-05 01:45:39', '2025-02-12 03:07:50'),
(7, '1', 'Starter plan', '3', 10000.00, 365, 60.00, '34', 'expired', '2025-02-05 01:45:22', '2025-02-10 23:16:24'),
(10, '1', 'Starter plan', '5', 10000.00, 365, 60.00, NULL, 'Active', '2025-04-08 21:53:00', '2025-04-08 21:53:00'),
(11, '1', 'Starter plan', '5', 10000.00, 365, 60.00, NULL, 'Active', '2025-04-19 06:16:01', '2025-04-19 06:16:01'),
(12, '1', 'Starter plan', '5', 19000.00, 365, 60.00, NULL, 'Active', '2025-04-19 06:17:13', '2025-04-19 06:17:13'),
(13, '1', 'Starter plan', '8', 10000.00, 365, 60.00, NULL, 'Active', '2025-04-22 07:26:00', '2025-04-22 07:26:00'),
(14, '1', 'Starter plan', '8', 10000.00, 365, 60.00, NULL, 'Active', '2025-04-22 07:26:09', '2025-04-22 07:26:09'),
(15, '2', 'Classic plan', '8', 100000.00, 5, 150.00, NULL, 'Active', '2025-04-22 08:56:58', '2025-04-22 08:56:58');

-- --------------------------------------------------------

--
-- Table structure for table `user_wallets`
--

CREATE TABLE `user_wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `currency` varchar(255) NOT NULL,
  `balance` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_wallets`
--

INSERT INTO `user_wallets` (`id`, `user_id`, `currency`, `balance`, `created_at`, `updated_at`) VALUES
(18, 8, 'BTC', '2000241.05834835', '2025-04-22 07:23:44', '2025-08-19 05:56:10'),
(19, 8, 'Bitcoin', '10000', '2025-04-22 08:25:15', '2025-04-22 08:25:15'),
(20, 8, 'LTC', '200', '2025-04-22 09:05:04', '2025-04-22 09:05:04'),
(21, 8, 'XLM', '236.89246290999998', '2025-08-16 09:26:11', '2025-08-18 20:43:13'),
(22, 8, 'TRX', '20', '2025-08-16 22:32:03', '2025-08-16 22:32:03'),
(23, 8, 'USD', '-136.91', '2025-08-18 18:57:47', '2025-08-18 19:53:53'),
(24, 8, 'DASH', '2.64183124', '2025-08-18 19:11:11', '2025-08-18 19:11:11'),
(25, 8, 'XRP', '19.14146341', '2025-08-18 19:26:16', '2025-08-18 19:26:16'),
(26, 8, 'BNB', '0.06956789', '2025-08-18 20:41:03', '2025-08-18 20:41:03');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `currency_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `balance` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `user_id`, `currency_id`, `balance`, `created_at`, `updated_at`) VALUES
(26, 0, 26, 0.00000000, '2025-04-19 06:04:09', '2025-04-19 06:04:09'),
(27, 0, 1, 0.00000000, '2025-04-22 09:15:33', '2025-04-22 09:15:33'),
(28, 0, 2, 0.00000000, '2025-04-22 09:15:33', '2025-04-22 09:15:33'),
(29, 0, 3, 0.00000000, '2025-04-22 09:15:33', '2025-04-22 09:15:33'),
(30, 0, 4, 0.00000000, '2025-04-22 09:15:33', '2025-04-22 09:15:33'),
(31, 0, 5, 0.00000000, '2025-04-22 09:15:33', '2025-04-22 09:15:33'),
(32, 0, 6, 0.00000000, '2025-04-22 09:15:33', '2025-04-22 09:15:33'),
(33, 0, 7, 0.00000000, '2025-04-22 09:15:33', '2025-04-22 09:15:33'),
(34, 0, 8, 0.00000000, '2025-04-22 09:15:33', '2025-04-22 09:15:33'),
(35, 0, 9, 0.00000000, '2025-04-22 09:15:33', '2025-04-22 09:15:33'),
(36, 0, 10, 0.00000000, '2025-04-22 09:15:33', '2025-04-22 09:15:33'),
(37, 0, 11, 0.00000000, '2025-04-22 09:15:33', '2025-04-22 09:15:33'),
(38, 0, 12, 0.00000000, '2025-04-22 09:15:33', '2025-04-22 09:15:33'),
(39, 0, 13, 0.00000000, '2025-04-22 09:15:33', '2025-04-22 09:15:33'),
(40, 0, 14, 0.00000000, '2025-04-22 09:15:33', '2025-04-22 09:15:33'),
(41, 0, 15, 0.00000000, '2025-04-22 09:15:33', '2025-04-22 09:15:33'),
(42, 0, 16, 0.00000000, '2025-04-22 09:15:33', '2025-04-22 09:15:33'),
(43, 0, 17, 0.00000000, '2025-04-22 09:15:33', '2025-04-22 09:15:33'),
(44, 0, 18, 0.00000000, '2025-04-22 09:15:33', '2025-04-22 09:15:33'),
(45, 0, 19, 0.00000000, '2025-04-22 09:15:33', '2025-04-22 09:15:33'),
(46, 0, 20, 0.00000000, '2025-04-22 09:15:33', '2025-04-22 09:15:33'),
(47, 0, 21, 0.00000000, '2025-04-22 09:15:33', '2025-04-22 09:15:33'),
(48, 0, 22, 0.00000000, '2025-04-22 09:15:33', '2025-04-22 09:15:33'),
(49, 0, 23, 0.00000000, '2025-04-22 09:15:33', '2025-04-22 09:15:33'),
(50, 0, 24, 0.00000000, '2025-04-22 09:15:33', '2025-04-22 09:15:33'),
(51, 0, 25, 0.00000000, '2025-04-22 09:15:33', '2025-04-22 09:15:33'),
(52, 1, 1, 0.00000000, '2025-08-13 09:59:43', '2025-08-13 09:59:43'),
(53, 1, 2, 0.00000000, '2025-08-13 09:59:43', '2025-08-13 09:59:43'),
(54, 1, 3, 0.00000000, '2025-08-13 09:59:43', '2025-08-13 09:59:43'),
(55, 1, 4, 0.00000000, '2025-08-13 09:59:43', '2025-08-13 09:59:43'),
(56, 1, 5, 0.00000000, '2025-08-13 09:59:43', '2025-08-13 09:59:43'),
(57, 1, 6, 0.00000000, '2025-08-13 09:59:43', '2025-08-13 09:59:43'),
(58, 1, 7, 0.00000000, '2025-08-13 09:59:43', '2025-08-13 09:59:43'),
(59, 1, 8, 0.00000000, '2025-08-13 09:59:43', '2025-08-13 09:59:43'),
(60, 1, 9, 0.00000000, '2025-08-13 09:59:43', '2025-08-13 09:59:43'),
(61, 1, 10, 0.00000000, '2025-08-13 09:59:43', '2025-08-13 09:59:43'),
(62, 1, 11, 0.00000000, '2025-08-13 09:59:43', '2025-08-13 09:59:43'),
(63, 1, 12, 0.00000000, '2025-08-13 09:59:43', '2025-08-13 09:59:43'),
(64, 1, 13, 0.00000000, '2025-08-13 09:59:43', '2025-08-13 09:59:43'),
(65, 1, 14, 0.00000000, '2025-08-13 09:59:43', '2025-08-13 09:59:43'),
(66, 1, 15, 0.00000000, '2025-08-13 09:59:43', '2025-08-13 09:59:43'),
(67, 1, 16, 0.00000000, '2025-08-13 09:59:43', '2025-08-13 09:59:43'),
(68, 1, 17, 0.00000000, '2025-08-13 09:59:43', '2025-08-13 09:59:43'),
(69, 1, 18, 0.00000000, '2025-08-13 09:59:43', '2025-08-13 09:59:43'),
(70, 1, 19, 0.00000000, '2025-08-13 09:59:43', '2025-08-13 09:59:43'),
(71, 1, 20, 0.00000000, '2025-08-13 09:59:43', '2025-08-13 09:59:43'),
(72, 1, 21, 0.00000000, '2025-08-13 09:59:43', '2025-08-13 09:59:43'),
(73, 1, 22, 0.00000000, '2025-08-13 09:59:43', '2025-08-13 09:59:43'),
(74, 1, 23, 0.00000000, '2025-08-13 09:59:43', '2025-08-13 09:59:43'),
(75, 1, 24, 0.00000000, '2025-08-13 09:59:43', '2025-08-13 09:59:43'),
(76, 1, 25, 0.00000000, '2025-08-13 09:59:43', '2025-08-13 09:59:43'),
(77, 1, 26, 0.00000000, '2025-08-13 09:59:43', '2025-08-13 09:59:43');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `method_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `wallet_id` int(11) NOT NULL DEFAULT 0,
  `amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `currency` varchar(40) DEFAULT NULL,
  `rate` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `charge` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `trx` varchar(40) DEFAULT NULL,
  `final_amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `after_charge` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `withdraw_information` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1=>success, 2=>pending, 3=>cancel,  ',
  `admin_feedback` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_code` varchar(50) DEFAULT NULL,
  `wallet_address` varchar(255) DEFAULT NULL,
  `network` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdrawals`
--

INSERT INTO `withdrawals` (`id`, `method_id`, `user_id`, `wallet_id`, `amount`, `currency`, `rate`, `charge`, `trx`, `final_amount`, `after_charge`, `withdraw_information`, `status`, `admin_feedback`, `created_at`, `updated_at`, `method_code`, `wallet_address`, `network`) VALUES
(15, 1, 8, 0, 2000.00000000, 'TRC 20', 1.00000000, 0.00000000, 'NDCEII9URTVW', 2000.00000000, 2000.00000000, '[{\"name\":\"Address\",\"type\":\"text\",\"value\":\"23456765434543\"}]', 2, NULL, '2025-04-23 21:14:29', '2025-04-23 21:14:35', NULL, NULL, NULL),
(16, 0, 8, 0, 20.00000000, 'BTC', 0.00000000, 0.00000000, NULL, 0.00000000, 0.00000000, NULL, 2, NULL, '2025-08-18 15:29:14', '2025-08-18 15:29:14', 'CRYPTO', NULL, NULL),
(17, 0, 8, 0, 20.00000000, 'BTC', 0.00000000, 0.00000000, NULL, 0.00000000, 0.00000000, NULL, 2, NULL, '2025-08-18 15:31:52', '2025-08-18 15:31:52', 'CRYPTO', 'sadsjhgfkfbxhfgjhgxmjgfxm,tyg', 'BTC'),
(18, 0, 8, 0, 3000.00000000, 'USDT', 0.00000000, 0.00000000, NULL, 0.00000000, 0.00000000, NULL, 2, NULL, '2025-08-18 16:00:01', '2025-08-18 16:00:01', 'CRYPTO', 'sadsjhgfkfbxhfgjhgxmjgfxm,tyg', 'USDT_ERC20'),
(19, 0, 8, 0, 2000.00000000, 'BTC', 0.00000000, 0.00000000, NULL, 0.00000000, 0.00000000, NULL, 2, NULL, '2025-08-18 16:04:03', '2025-08-18 16:04:03', 'CRYPTO', 'sadsjhgfkfbxhfgjhgxmjgfxm,tyg2', 'BTC'),
(20, 0, 8, 0, 3000.00000000, 'BTC', 0.00000000, 0.00000000, NULL, 0.00000000, 0.00000000, NULL, 2, NULL, '2025-08-18 18:21:35', '2025-08-18 18:21:35', 'CRYPTO', 'sadsjhgfkfbxhfgjhgxmjgfxm,tyg', 'BTC'),
(21, 0, 8, 0, 3000.00000000, 'BTC', 0.00000000, 0.00000000, NULL, 0.00000000, 0.00000000, NULL, 2, NULL, '2025-08-18 18:21:53', '2025-08-18 18:21:53', 'CRYPTO', 'sadsjhgfkfbxhfgjhgxmjgfxm,tyg2s', 'BTC');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_methods`
--

CREATE TABLE `withdraw_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(40) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `min_limit` decimal(28,8) DEFAULT 0.00000000,
  `max_limit` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `fixed_charge` decimal(28,8) DEFAULT 0.00000000,
  `rate` decimal(28,8) DEFAULT 0.00000000,
  `percent_charge` decimal(5,2) DEFAULT NULL,
  `currency` varchar(40) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdraw_methods`
--

INSERT INTO `withdraw_methods` (`id`, `form_id`, `name`, `image`, `min_limit`, `max_limit`, `fixed_charge`, `rate`, `percent_charge`, `currency`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 'USDT', '679d9c27e8f601738382375.jpeg', 311.00000000, 4545.00000000, 0.00000000, 1.00000000, 0.00, 'TRC 20', 'hello do dis and da', 1, '2025-02-01 02:59:40', '2025-02-01 02:59:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`,`username`);

--
-- Indexes for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asset_trades`
--
ALTER TABLE `asset_trades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `bot_configs`
--
ALTER TABLE `bot_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coin_pairs`
--
ALTER TABLE `coin_pairs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `copy_experts`
--
ALTER TABLE `copy_experts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `copy_trades`
--
ALTER TABLE `copy_trades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cron_jobs`
--
ALTER TABLE `cron_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cron_job_logs`
--
ALTER TABLE `cron_job_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cron_schedules`
--
ALTER TABLE `cron_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crypto_deposits`
--
ALTER TABLE `crypto_deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crypto_transactions`
--
ALTER TABLE `crypto_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `currencies_name_unique` (`name`),
  ADD UNIQUE KEY `currencies_symbol_unique` (`symbol`);

--
-- Indexes for table `currency_data_providers`
--
ALTER TABLE `currency_data_providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `device_tokens`
--
ALTER TABLE `device_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `extensions`
--
ALTER TABLE `extensions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorite_pairs`
--
ALTER TABLE `favorite_pairs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frontends`
--
ALTER TABLE `frontends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gateways`
--
ALTER TABLE `gateways`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `gateway_currencies`
--
ALTER TABLE `gateway_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logic_boxes`
--
ALTER TABLE `logic_boxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `markets`
--
ALTER TABLE `markets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `markets_name_unique` (`name`);

--
-- Indexes for table `market_data`
--
ALTER TABLE `market_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_logs`
--
ALTER TABLE `notification_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_templates`
--
ALTER TABLE `notification_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `phase_logics`
--
ALTER TABLE `phase_logics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phase_logs`
--
ALTER TABLE `phase_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plan_histories`
--
ALTER TABLE `plan_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plan_phases`
--
ALTER TABLE `plan_phases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plan_subscriptions`
--
ALTER TABLE `plan_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_plan_id` (`plan_id`);

--
-- Indexes for table `signals`
--
ALTER TABLE `signals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signal_purchases`
--
ALTER TABLE `signal_purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_created_at` (`user_id`,`created_at`),
  ADD KEY `idx_signal_created_at` (`signal_id`,`created_at`),
  ADD KEY `idx_status_created_at` (`status`,`created_at`);

--
-- Indexes for table `stakes`
--
ALTER TABLE `stakes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_attachments`
--
ALTER TABLE `support_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_messages`
--
ALTER TABLE `support_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trades`
--
ALTER TABLE `trades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `update_logs`
--
ALTER TABLE `update_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`,`email`);

--
-- Indexes for table `users_stakes`
--
ALTER TABLE `users_stakes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_logins`
--
ALTER TABLE `user_logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_phases`
--
ALTER TABLE `user_phases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_profit_losses`
--
ALTER TABLE `user_profit_losses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_wallets`
--
ALTER TABLE `user_wallets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_currency_unique` (`user_id`,`currency`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `asset_trades`
--
ALTER TABLE `asset_trades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `bot_configs`
--
ALTER TABLE `bot_configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coin_pairs`
--
ALTER TABLE `coin_pairs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `copy_experts`
--
ALTER TABLE `copy_experts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `copy_trades`
--
ALTER TABLE `copy_trades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `cron_jobs`
--
ALTER TABLE `cron_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cron_job_logs`
--
ALTER TABLE `cron_job_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `cron_schedules`
--
ALTER TABLE `cron_schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `crypto_deposits`
--
ALTER TABLE `crypto_deposits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `crypto_transactions`
--
ALTER TABLE `crypto_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `currency_data_providers`
--
ALTER TABLE `currency_data_providers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `device_tokens`
--
ALTER TABLE `device_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `extensions`
--
ALTER TABLE `extensions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `favorite_pairs`
--
ALTER TABLE `favorite_pairs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forms`
--
ALTER TABLE `forms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `frontends`
--
ALTER TABLE `frontends`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `gateways`
--
ALTER TABLE `gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `gateway_currencies`
--
ALTER TABLE `gateway_currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `logic_boxes`
--
ALTER TABLE `logic_boxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `markets`
--
ALTER TABLE `markets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `market_data`
--
ALTER TABLE `market_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification_logs`
--
ALTER TABLE `notification_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `notification_templates`
--
ALTER TABLE `notification_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phase_logics`
--
ALTER TABLE `phase_logics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phase_logs`
--
ALTER TABLE `phase_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plan_histories`
--
ALTER TABLE `plan_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plan_phases`
--
ALTER TABLE `plan_phases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plan_subscriptions`
--
ALTER TABLE `plan_subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `signals`
--
ALTER TABLE `signals`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `signal_purchases`
--
ALTER TABLE `signal_purchases`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `stakes`
--
ALTER TABLE `stakes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `support_attachments`
--
ALTER TABLE `support_attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_messages`
--
ALTER TABLE `support_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trades`
--
ALTER TABLE `trades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `update_logs`
--
ALTER TABLE `update_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users_stakes`
--
ALTER TABLE `users_stakes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_logins`
--
ALTER TABLE `user_logins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `user_phases`
--
ALTER TABLE `user_phases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_profit_losses`
--
ALTER TABLE `user_profit_losses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_wallets`
--
ALTER TABLE `user_wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_wallets`
--
ALTER TABLE `user_wallets`
  ADD CONSTRAINT `user_wallets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
