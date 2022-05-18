-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 18 2022 г., 03:21
-- Версия сервера: 8.0.24
-- Версия PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `qberrytest`
--

-- --------------------------------------------------------

--
-- Структура таблицы `blocks`
--

CREATE TABLE `blocks` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `blocks`
--

INSERT INTO `blocks` (`id`, `name`, `section_id`, `created_at`, `updated_at`) VALUES
(1, 'Block Voluptatem', 12, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(2, 'Block Vitae', 11, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(3, 'Block Et', 7, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(4, 'Block Dignissimos', 13, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(5, 'Block Aut', 3, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(6, 'Block Quae', 11, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(7, 'Block Voluptate', 11, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(8, 'Block Quia', 19, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(9, 'Block Minus', 16, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(10, 'Block Voluptatem', 12, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(11, 'Block Perferendis', 11, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(12, 'Block Vel', 4, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(13, 'Block Repellendus', 16, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(14, 'Block Id', 8, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(15, 'Block Ratione', 7, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(16, 'Block Molestiae', 13, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(17, 'Block Voluptas', 22, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(18, 'Block Cum', 18, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(19, 'Block Eligendi', 25, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(20, 'Block Cumque', 6, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(21, 'Block Aspernatur', 10, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(22, 'Block Quo', 12, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(23, 'Block Dolores', 5, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(24, 'Block Aut', 2, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(25, 'Block Blanditiis', 20, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(26, 'Block Tempora', 13, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(27, 'Block Cumque', 21, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(28, 'Block Incidunt', 3, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(29, 'Block Et', 22, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(30, 'Block Est', 11, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(31, 'Block Alias', 25, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(32, 'Block Reprehenderit', 16, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(33, 'Block Enim', 4, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(34, 'Block Magni', 16, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(35, 'Block Possimus', 8, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(36, 'Block Maiores', 6, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(37, 'Block Temporibus', 14, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(38, 'Block Est', 24, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(39, 'Block Ex', 21, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(40, 'Block Architecto', 13, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(41, 'Block Consequatur', 14, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(42, 'Block In', 20, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(43, 'Block Nostrum', 2, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(44, 'Block Quis', 11, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(45, 'Block Ipsam', 15, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(46, 'Block Dolorem', 12, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(47, 'Block Aspernatur', 13, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(48, 'Block Quis', 20, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(49, 'Block Est', 15, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(50, 'Block Aliquid', 13, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(51, 'Block Ratione', 16, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(52, 'Block Provident', 22, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(53, 'Block Temporibus', 17, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(54, 'Block Id', 24, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(55, 'Block Quia', 7, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(56, 'Block Voluptatibus', 3, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(57, 'Block Quis', 25, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(58, 'Block Non', 23, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(59, 'Block Culpa', 8, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(60, 'Block Necessitatibus', 16, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(61, 'Block Laudantium', 18, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(62, 'Block Velit', 11, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(63, 'Block Rerum', 18, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(64, 'Block Nihil', 23, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(65, 'Block Enim', 9, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(66, 'Block Quod', 2, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(67, 'Block Iure', 4, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(68, 'Block Corporis', 2, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(69, 'Block Officiis', 23, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(70, 'Block Labore', 15, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(71, 'Block Non', 9, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(72, 'Block Et', 16, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(73, 'Block Est', 2, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(74, 'Block Fugit', 18, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(75, 'Block Veritatis', 22, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(76, 'Block Necessitatibus', 23, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(77, 'Block Aut', 24, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(78, 'Block Tempore', 23, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(79, 'Block Ea', 1, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(80, 'Block Omnis', 10, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(81, 'Block Sed', 1, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(82, 'Block Amet', 20, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(83, 'Block Praesentium', 6, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(84, 'Block Ullam', 20, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(85, 'Block Tempore', 10, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(86, 'Block Dolore', 16, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(87, 'Block Animi', 12, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(88, 'Block Qui', 7, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(89, 'Block Velit', 4, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(90, 'Block Provident', 13, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(91, 'Block Quae', 16, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(92, 'Block Eos', 1, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(93, 'Block Aut', 18, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(94, 'Block Corrupti', 20, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(95, 'Block Dolor', 6, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(96, 'Block Natus', 25, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(97, 'Block Beatae', 1, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(98, 'Block Doloremque', 19, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(99, 'Block Numquam', 16, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(100, 'Block Ratione', 22, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(101, 'Block Libero', 16, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(102, 'Block Illo', 5, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(103, 'Block Incidunt', 21, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(104, 'Block Quia', 25, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(105, 'Block Autem', 15, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(106, 'Block Ratione', 23, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(107, 'Block Maxime', 5, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(108, 'Block Nihil', 24, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(109, 'Block Architecto', 17, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(110, 'Block Animi', 5, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(111, 'Block Officia', 3, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(112, 'Block Magnam', 15, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(113, 'Block Dolorem', 17, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(114, 'Block Dolore', 15, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(115, 'Block Quaerat', 11, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(116, 'Block Natus', 20, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(117, 'Block Distinctio', 11, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(118, 'Block Ex', 8, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(119, 'Block Reprehenderit', 14, '2022-05-15 18:53:33', '2022-05-15 18:53:33'),
(120, 'Block Adipisci', 22, '2022-05-15 18:53:33', '2022-05-15 18:53:33');

-- --------------------------------------------------------

--
-- Структура таблицы `block_order`
--

CREATE TABLE `block_order` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `block_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `block_order`
--

INSERT INTO `block_order` (`id`, `order_id`, `block_id`, `created_at`, `updated_at`) VALUES
(1, 1, 61, NULL, NULL),
(2, 1, 63, NULL, NULL),
(3, 1, 52, NULL, NULL),
(4, 1, 100, NULL, NULL),
(5, 2, 23, NULL, NULL),
(6, 2, 107, NULL, NULL),
(7, 2, 17, NULL, NULL),
(8, 2, 100, NULL, NULL),
(9, 3, 23, NULL, NULL),
(10, 3, 110, NULL, NULL),
(11, 3, 10, NULL, NULL),
(12, 3, 22, NULL, NULL),
(13, 4, 23, NULL, NULL),
(14, 4, 107, NULL, NULL),
(15, 4, 46, NULL, NULL),
(16, 4, 87, NULL, NULL),
(17, 5, 15, NULL, NULL),
(18, 5, 88, NULL, NULL),
(19, 5, 82, NULL, NULL),
(20, 5, 94, NULL, NULL),
(21, 6, 94, NULL, NULL),
(22, 6, 116, NULL, NULL),
(23, 6, 64, NULL, NULL),
(24, 6, 78, NULL, NULL),
(25, 7, 82, NULL, NULL),
(26, 7, 84, NULL, NULL),
(27, 7, 69, NULL, NULL),
(28, 7, 106, NULL, NULL),
(29, 8, 8, NULL, NULL),
(30, 8, 98, NULL, NULL),
(31, 8, 25, NULL, NULL),
(32, 8, 84, NULL, NULL),
(33, 9, 16, NULL, NULL),
(34, 9, 26, NULL, NULL),
(35, 9, 41, NULL, NULL),
(36, 9, 119, NULL, NULL),
(37, 10, 16, NULL, NULL),
(38, 10, 50, NULL, NULL),
(39, 10, 45, NULL, NULL),
(40, 10, 105, NULL, NULL),
(41, 11, 37, NULL, NULL),
(42, 11, 41, NULL, NULL),
(43, 11, 109, NULL, NULL),
(44, 11, 113, NULL, NULL),
(45, 12, 59, NULL, NULL),
(46, 12, 118, NULL, NULL),
(47, 12, 4, NULL, NULL),
(48, 12, 16, NULL, NULL),
(49, 13, 5, NULL, NULL),
(50, 13, 28, NULL, NULL),
(51, 13, 34, NULL, NULL),
(52, 13, 101, NULL, NULL),
(53, 14, 5, NULL, NULL),
(54, 14, 111, NULL, NULL),
(55, 14, 72, NULL, NULL),
(56, 14, 101, NULL, NULL),
(57, 15, 5, NULL, NULL),
(58, 15, 28, NULL, NULL),
(59, 15, 19, NULL, NULL),
(60, 15, 104, NULL, NULL),
(61, 16, 33, NULL, NULL),
(62, 16, 67, NULL, NULL),
(63, 16, 31, NULL, NULL),
(64, 16, 57, NULL, NULL),
(65, 17, 81, NULL, NULL),
(66, 17, 97, NULL, NULL),
(67, 17, 20, NULL, NULL),
(68, 17, 83, NULL, NULL),
(69, 18, 24, NULL, NULL),
(70, 18, 66, NULL, NULL),
(71, 18, 21, NULL, NULL),
(72, 18, 80, NULL, NULL),
(73, 19, 36, NULL, NULL),
(74, 19, 83, NULL, NULL),
(75, 19, 80, NULL, NULL),
(76, 19, 85, NULL, NULL),
(77, 20, 43, NULL, NULL),
(78, 20, 68, NULL, NULL),
(79, 20, 21, NULL, NULL),
(80, 20, 85, NULL, NULL),
(81, 21, 30, NULL, NULL),
(82, 21, 115, NULL, NULL),
(83, 21, 27, NULL, NULL),
(84, 21, 103, NULL, NULL),
(85, 22, 2, NULL, NULL),
(86, 22, 115, NULL, NULL),
(87, 22, 38, NULL, NULL),
(88, 22, 54, NULL, NULL),
(89, 23, 44, NULL, NULL),
(90, 23, 115, NULL, NULL),
(91, 23, 39, NULL, NULL),
(92, 23, 103, NULL, NULL),
(93, 24, 7, NULL, NULL),
(94, 24, 62, NULL, NULL),
(95, 24, 27, NULL, NULL),
(96, 24, 103, NULL, NULL),
(97, 25, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
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
-- Структура таблицы `locations`
--

CREATE TABLE `locations` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `locations`
--

INSERT INTO `locations` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Уилмингтон (Северная Каролина)', NULL, NULL),
(2, 'Портленд (Орегон)', NULL, NULL),
(3, 'Торонто', NULL, NULL),
(4, 'Варшава', NULL, NULL),
(5, 'Валенсия', NULL, NULL),
(6, 'Шанхай', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_05_15_113408_create_locations_table', 1),
(6, '2022_05_15_113416_create_sections_table', 1),
(7, '2022_05_15_113431_create_blocks_table', 1),
(8, '2022_05_15_113438_create_orders_table', 1),
(9, '2022_05_15_113446_create_block_order_table', 1),
(13, '2022_05_17_220328_create_statuses_table', 2),
(14, '2022_05_17_233438_create_orders_table', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `location_id` bigint UNSIGNED NOT NULL,
  `status_id` bigint UNSIGNED NOT NULL,
  `amount` int NOT NULL,
  `begin` date NOT NULL,
  `end` date NOT NULL,
  `code` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `location_id`, `status_id`, `amount`, `begin`, `end`, `code`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 1, 22456, '2022-03-19', '2022-04-03', '879653940744', '2022-05-17 19:21:10', '2022-05-17 19:21:10'),
(2, 1, 1, 1, 14594, '2022-01-23', '2022-02-05', '459392178343', '2022-05-17 19:21:10', '2022-05-17 19:21:10'),
(3, 4, 1, 1, 16567, '2022-03-24', '2022-04-01', '770606706531', '2022-05-17 19:21:10', '2022-05-17 19:21:10'),
(4, 3, 1, 2, 18897, '2021-09-22', '2021-10-13', '405326983908', '2022-05-17 19:21:10', '2022-05-17 19:21:10'),
(5, 1, 2, 1, 23184, '2022-02-02', '2022-02-08', '394566404299', '2022-05-17 19:21:10', '2022-05-17 19:21:10'),
(6, 1, 2, 1, 15796, '2021-08-18', '2021-09-03', '172726668570', '2022-05-17 19:21:10', '2022-05-17 19:21:10'),
(7, 3, 2, 2, 24182, '2022-03-25', '2022-04-05', '175893933307', '2022-05-17 19:21:10', '2022-05-17 19:21:10'),
(8, 1, 2, 1, 15237, '2022-03-25', '2022-04-08', '146285664111', '2022-05-17 19:21:10', '2022-05-17 19:21:10'),
(9, 4, 3, 2, 19627, '2022-02-05', '2022-02-15', '581931560055', '2022-05-17 19:21:10', '2022-05-17 19:21:10'),
(10, 2, 3, 1, 20013, '2022-03-19', '2022-04-11', '404597770798', '2022-05-17 19:21:10', '2022-05-17 19:21:10'),
(11, 1, 3, 1, 20450, '2021-08-21', '2021-08-31', '626588268582', '2022-05-17 19:21:10', '2022-05-17 19:21:10'),
(12, 4, 3, 2, 16821, '2021-09-18', '2021-10-05', '362112113855', '2022-05-17 19:21:10', '2022-05-17 19:21:10'),
(13, 1, 4, 1, 22752, '2021-11-21', '2021-12-04', '415964491187', '2022-05-17 19:21:10', '2022-05-17 19:21:10'),
(14, 4, 4, 2, 13054, '2021-10-29', '2021-11-03', '519536661903', '2022-05-17 19:21:10', '2022-05-17 19:21:10'),
(15, 3, 4, 1, 22799, '2022-04-03', '2022-04-22', '355818607904', '2022-05-17 19:21:10', '2022-05-17 19:21:10'),
(16, 4, 4, 1, 17313, '2022-01-12', '2022-01-22', '220333839775', '2022-05-17 19:21:10', '2022-05-17 19:21:10'),
(17, 3, 5, 2, 23860, '2022-02-15', '2022-03-08', '989126771275', '2022-05-17 19:21:10', '2022-05-17 19:21:10'),
(18, 1, 5, 1, 19178, '2021-10-24', '2021-11-04', '452431168791', '2022-05-17 19:21:10', '2022-05-17 19:21:10'),
(19, 2, 5, 1, 12715, '2021-09-07', '2021-09-16', '388015873799', '2022-05-17 19:21:10', '2022-05-17 19:21:10'),
(20, 4, 5, 2, 16444, '2022-04-15', '2022-05-06', '940231796323', '2022-05-17 19:21:10', '2022-05-17 19:21:10'),
(21, 3, 6, 2, 23216, '2022-01-29', '2022-02-08', '896065645139', '2022-05-17 19:21:10', '2022-05-17 19:21:10'),
(22, 2, 6, 2, 20667, '2022-03-12', '2022-03-19', '169533831752', '2022-05-17 19:21:10', '2022-05-17 19:21:10'),
(23, 1, 6, 1, 13742, '2021-08-29', '2021-09-07', '499034106856', '2022-05-17 19:21:10', '2022-05-17 19:21:10'),
(24, 3, 6, 2, 20622, '2021-12-28', '2022-01-13', '377263601198', '2022-05-17 19:21:10', '2022-05-17 19:21:10'),
(25, 4, 1, 1, 12, '2022-03-24', '2022-03-26', 'SUf55WooVyqg', '2022-05-17 19:35:35', '2022-05-17 19:35:35');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
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

--
-- Дамп данных таблицы `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'API Token', '05ef1910b1a7468965fe2bee1668986e98bd9b0370d3cc9acacda18d21dd6e76', '[\"*\"]', NULL, '2022-05-15 19:57:21', '2022-05-15 19:57:21'),
(2, 'App\\Models\\User', 4, 'qb', 'c3a4ef0c6bb0b67c31f86cf25a2028edb746c8e20181e402ab5d2aca74886605', '[\"*\"]', NULL, '2022-05-15 20:47:24', '2022-05-15 20:47:24'),
(3, 'App\\Models\\User', 4, 'qb', '9c665272b402658632811027c8820377ca2810de66dfeb29dddf0db0cfdc2e21', '[\"*\"]', NULL, '2022-05-15 20:47:45', '2022-05-15 20:47:45'),
(4, 'App\\Models\\User', 4, 'qb', 'fde2dc5f059a210b36caea0a33abed5f1cd5d0f09d6bfaaccbec37491ac15bfe', '[\"*\"]', NULL, '2022-05-15 20:48:18', '2022-05-15 20:48:18'),
(5, 'App\\Models\\User', 4, 'MyApp', '4beefb2da098f9bcb6210c429bd2f8658f5e5acc07c08cdfd2d07476cddf8153', '[\"*\"]', NULL, '2022-05-15 20:50:27', '2022-05-15 20:50:27'),
(6, 'App\\Models\\User', 4, 'MyApp', 'cefa766e679173083c6f6dd651d85024f62d715fde619b16bf7b9cee5cb09992', '[\"*\"]', NULL, '2022-05-15 21:00:32', '2022-05-15 21:00:32'),
(7, 'App\\Models\\User', 4, 'MyApp', '42b5841ef379859a0b7be4851a1c287d663e6dddec3d0a1f14da0a4e4c41da52', '[\"*\"]', '2022-05-17 19:38:19', '2022-05-15 21:00:36', '2022-05-17 19:38:19'),
(8, 'App\\Models\\User', 4, 'MyApp', '9c0e95fbb668c38e5eebaaddbfe225a833741aabfa7b67c627127651cc3a7a23', '[\"*\"]', NULL, '2022-05-15 21:10:23', '2022-05-15 21:10:23'),
(9, 'App\\Models\\User', 4, 'qb', '528727467eaa7bd7690d2560fc13e152f8ee020ef8c2df55bd6d7195a3d78bac', '[\"*\"]', NULL, '2022-05-15 21:10:33', '2022-05-15 21:10:33'),
(10, 'App\\Models\\User', 4, 'qb', '13a88121e49c28a0442542bed615234da1a8c685d9472862fe2289b98ffb8728', '[\"*\"]', NULL, '2022-05-16 08:20:20', '2022-05-16 08:20:20'),
(11, 'App\\Models\\User', 4, 'qb', 'e2f922b380ee8afd7cc21fd863a7a84e0fe0177504aecc791fcb228af7b0e3f7', '[\"*\"]', NULL, '2022-05-16 08:20:27', '2022-05-16 08:20:27'),
(12, 'App\\Models\\User', 4, 'qb', 'af78446ba3ffa216d4adebc898af53ac263d33bc54140948ec5bdfbf5859b9be', '[\"*\"]', NULL, '2022-05-16 08:35:30', '2022-05-16 08:35:30'),
(13, 'App\\Models\\User', 4, 'qb', '75fed335280014c6029d6b6a3825040cb76241422869dbb405c6966a223a13e3', '[\"*\"]', NULL, '2022-05-16 09:31:18', '2022-05-16 09:31:18'),
(14, 'App\\Models\\User', 4, 'qb', 'eed599a896d0e4bad48eb3d78c55ffb5995f0d030913e2d3363e046d3939da81', '[\"*\"]', NULL, '2022-05-16 09:31:39', '2022-05-16 09:31:39'),
(15, 'App\\Models\\User', 4, 'qb', '1272db3b6fe9e65fe034f86bb5cc24194635bb799fa72eeeae7b90e89971c026', '[\"*\"]', NULL, '2022-05-16 09:32:24', '2022-05-16 09:32:24'),
(16, 'App\\Models\\User', 4, 'qb', '29207c2838b83bb151a318824fde2e50bcd011e03bc9ce7f5df935a15c569ce4', '[\"*\"]', NULL, '2022-05-16 09:32:29', '2022-05-16 09:32:29'),
(17, 'App\\Models\\User', 4, 'qb', '0c48db7a83a2cfb15a3c94c67d242da3f1cdee314ee269cae244ab7f351d5f40', '[\"*\"]', NULL, '2022-05-16 09:34:12', '2022-05-16 09:34:12'),
(18, 'App\\Models\\User', 4, 'qb', '8679853855fb1a67569a1d4c9a7bf247410d83a30a1c99a603e950c4a2f70d56', '[\"*\"]', NULL, '2022-05-16 09:39:36', '2022-05-16 09:39:36'),
(19, 'App\\Models\\User', 4, 'qb', '8bbfe917e906c33bf7d9cf14b9c3f790704c5bf80eb80757745d6e675ad01835', '[\"*\"]', NULL, '2022-05-16 16:00:35', '2022-05-16 16:00:35'),
(20, 'App\\Models\\User', 4, 'qb', 'af4cccdd8743c7546592d2a50815c75d6ef257c3b995b089f3e4c2db702c875d', '[\"*\"]', NULL, '2022-05-17 06:48:11', '2022-05-17 06:48:11'),
(21, 'App\\Models\\User', 4, 'qb', 'c5d222a161a8c0706fb31a9590cd5c6a0bd3d7faf0ec4cc10943a576bf2d1500', '[\"*\"]', NULL, '2022-05-17 15:07:35', '2022-05-17 15:07:35'),
(22, 'App\\Models\\User', 4, 'qb', '3c08eff160fb8b54e2906c6d9a0cc6356568dec9c49b9659a81bc783e592b477', '[\"*\"]', NULL, '2022-05-17 16:10:00', '2022-05-17 16:10:00'),
(23, 'App\\Models\\User', 4, 'qb', 'c4b4f05ad237d730428d32ee9401878e0b636f056db993915fa0e18c21c5c1dd', '[\"*\"]', NULL, '2022-05-17 16:23:07', '2022-05-17 16:23:07');

-- --------------------------------------------------------

--
-- Структура таблицы `sections`
--

CREATE TABLE `sections` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `temperature` int NOT NULL,
  `location_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sections`
--

INSERT INTO `sections` (`id`, `name`, `temperature`, `location_id`, `created_at`, `updated_at`) VALUES
(1, 'Section Excepturi', -17, 5, '2022-05-15 18:48:39', '2022-05-15 18:48:39'),
(2, 'Section Sint', -16, 5, '2022-05-15 18:48:39', '2022-05-15 18:48:39'),
(3, 'Section Illo', -2, 4, '2022-05-15 18:48:39', '2022-05-15 18:48:39'),
(4, 'Section Rerum', -3, 4, '2022-05-15 18:48:39', '2022-05-15 18:48:39'),
(5, 'Section Et', -8, 1, '2022-05-15 18:48:39', '2022-05-15 18:48:39'),
(6, 'Section Provident', -2, 5, '2022-05-15 18:48:39', '2022-05-15 18:48:39'),
(7, 'Section Animi', -3, 2, '2022-05-15 18:48:39', '2022-05-15 18:48:39'),
(8, 'Section Eos', -19, 3, '2022-05-15 18:48:39', '2022-05-15 18:48:39'),
(9, 'Section Dolores', -20, 5, '2022-05-15 18:48:39', '2022-05-15 18:48:39'),
(10, 'Section Voluptatibus', -6, 5, '2022-05-15 18:48:39', '2022-05-15 18:48:39'),
(11, 'Section Voluptatem', -16, 6, '2022-05-15 18:48:39', '2022-05-15 18:48:39'),
(12, 'Section Et', -11, 1, '2022-05-15 18:48:39', '2022-05-15 18:48:39'),
(13, 'Section Aut', -13, 3, '2022-05-15 18:48:39', '2022-05-15 18:48:39'),
(14, 'Section Qui', -16, 3, '2022-05-15 18:48:39', '2022-05-15 18:48:39'),
(15, 'Section Ullam', -9, 3, '2022-05-15 18:48:39', '2022-05-15 18:48:39'),
(16, 'Section Ratione', -14, 4, '2022-05-15 18:48:39', '2022-05-15 18:48:39'),
(17, 'Section Ut', -1, 3, '2022-05-15 18:48:39', '2022-05-15 18:48:39'),
(18, 'Section Eligendi', -8, 1, '2022-05-15 18:48:39', '2022-05-15 18:48:39'),
(19, 'Section Totam', -14, 2, '2022-05-15 18:48:39', '2022-05-15 18:48:39'),
(20, 'Section Voluptatibus', -16, 2, '2022-05-15 18:48:39', '2022-05-15 18:48:39'),
(21, 'Section Architecto', -13, 6, '2022-05-15 18:48:39', '2022-05-15 18:48:39'),
(22, 'Section Praesentium', -2, 1, '2022-05-15 18:48:39', '2022-05-15 18:48:39'),
(23, 'Section Illo', -3, 2, '2022-05-15 18:48:39', '2022-05-15 18:48:39'),
(24, 'Section Voluptatem', -19, 6, '2022-05-15 18:48:39', '2022-05-15 18:48:39'),
(25, 'Section Quia', -13, 4, '2022-05-15 18:48:39', '2022-05-15 18:48:39');

-- --------------------------------------------------------

--
-- Структура таблицы `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `statuses`
--

INSERT INTO `statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Active', NULL, NULL),
(2, 'Deleted', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
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

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Jeremy Zieme IV', 'kendra.stroman@example.com', '2022-05-15 18:34:08', '$2y$10$V6UwPWGwgJ6S2O8pfj6tEualPHAj/MP8vuXN/7WkqvhX7HilJw7X2', 'zghFnR6buz', '2022-05-15 18:34:08', '2022-05-15 18:34:08'),
(2, 'Jordi Kovacek Jr.', 'norene79@example.net', '2022-05-15 18:34:08', '$2y$10$0AnztkLg.clTF3LzUxUiJeDuKQUD4a8.LGfGnnyB/Ix76YddpFNJK', 'nSiB6ITl39', '2022-05-15 18:34:08', '2022-05-15 18:34:08'),
(3, 'Montana Luettgen', 'mozell.damore@example.org', '2022-05-15 18:34:08', '$2y$10$S4n.LueCx4i0q0.FkoL1ROpxMF4b/KUm5IWnZxoDAnWKPvGKTDAme', 'ZImGTyqPPr', '2022-05-15 18:34:08', '2022-05-15 18:34:08'),
(4, 'Reva Conn', 'ypurdy@example.org', '2022-05-15 18:34:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Dor6G6BXvV', '2022-05-15 18:34:08', '2022-05-15 18:34:08');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blocks_section_id_foreign` (`section_id`);

--
-- Индексы таблицы `block_order`
--
ALTER TABLE `block_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `block_order_order_id_foreign` (`order_id`),
  ADD KEY `block_order_block_id_foreign` (`block_id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_location_id_foreign` (`location_id`),
  ADD KEY `orders_status_id_foreign` (`status_id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sections_location_id_foreign` (`location_id`);

--
-- Индексы таблицы `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `blocks`
--
ALTER TABLE `blocks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT для таблицы `block_order`
--
ALTER TABLE `block_order`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `blocks`
--
ALTER TABLE `blocks`
  ADD CONSTRAINT `blocks_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`);

--
-- Ограничения внешнего ключа таблицы `block_order`
--
ALTER TABLE `block_order`
  ADD CONSTRAINT `block_order_block_id_foreign` FOREIGN KEY (`block_id`) REFERENCES `blocks` (`id`),
  ADD CONSTRAINT `block_order_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Ограничения внешнего ключа таблицы `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`),
  ADD CONSTRAINT `orders_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `sections_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
