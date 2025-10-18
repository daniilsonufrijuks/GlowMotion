-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:4306
-- Время создания: Окт 18 2025 г., 11:52
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `motion`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin@super.com', '$2y$12$Vs.GZy91Oggy0jsYLXBFiOtSW3RRF1Q1YJPO2gD3i49ua2f0p3Cli', '2025-04-27 06:02:46', '2025-04-27 06:02:46');

-- --------------------------------------------------------

--
-- Структура таблицы `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `brands`
--

INSERT INTO `brands` (`id`, `name`, `admin_id`, `created_at`, `updated_at`) VALUES
(1, 'BMW', 1, '2025-10-04 11:00:29', '2025-10-04 11:00:29'),
(2, 'Audi', 1, '2025-10-04 11:00:29', '2025-10-04 11:00:29'),
(3, 'Porsche', 1, '2025-10-04 11:00:29', '2025-10-04 11:00:29'),
(4, 'Mercedes-Benz', 1, '2025-10-04 11:00:29', '2025-10-04 11:00:29'),
(5, 'Volkswagen', 1, '2025-10-18 04:56:25', '2025-10-18 04:56:25'),
(6, 'Opel', 1, '2025-10-18 04:56:25', '2025-10-18 04:56:25'),
(7, 'Ford', 1, '2025-10-18 04:56:25', '2025-10-18 04:56:25'),
(8, 'Chevrolet', 1, '2025-10-18 04:56:25', '2025-10-18 04:56:25'),
(9, 'Cadillac', 1, '2025-10-18 04:56:25', '2025-10-18 04:56:25'),
(10, 'Jeep', 1, '2025-10-18 04:56:25', '2025-10-18 04:56:25'),
(11, 'Tesla', 1, '2025-10-18 04:56:25', '2025-10-18 04:56:25'),
(12, 'Dodge', 1, '2025-10-18 04:56:25', '2025-10-18 04:56:25'),
(13, 'Chrysler', 1, '2025-10-18 04:56:25', '2025-10-18 04:56:25'),
(14, 'Lincoln', 1, '2025-10-18 04:56:25', '2025-10-18 04:56:25'),
(15, 'Buick', 1, '2025-10-18 04:56:25', '2025-10-18 04:56:25'),
(16, 'Toyota', 1, '2025-10-18 04:56:25', '2025-10-18 04:56:25'),
(17, 'Honda', 1, '2025-10-18 04:56:25', '2025-10-18 04:56:25'),
(18, 'Nissan', 1, '2025-10-18 04:56:25', '2025-10-18 04:56:25'),
(19, 'Mazda', 1, '2025-10-18 04:56:25', '2025-10-18 04:56:25'),
(20, 'Subaru', 1, '2025-10-18 04:56:25', '2025-10-18 04:56:25'),
(21, 'Mitsubishi', 1, '2025-10-18 04:56:25', '2025-10-18 04:56:25'),
(22, 'Lexus', 1, '2025-10-18 04:56:25', '2025-10-18 04:56:25'),
(23, 'Infiniti', 1, '2025-10-18 04:56:25', '2025-10-18 04:56:25'),
(24, 'Acura', 1, '2025-10-18 04:56:25', '2025-10-18 04:56:25'),
(25, 'Suzuki', 1, '2025-10-18 04:56:25', '2025-10-18 04:56:25'),
(26, 'Hyundai', 1, '2025-10-18 04:56:25', '2025-10-18 04:56:25'),
(27, 'Kia', 1, '2025-10-18 04:56:25', '2025-10-18 04:56:25'),
(28, 'Genesis', 1, '2025-10-18 04:56:25', '2025-10-18 04:56:25'),
(29, 'Renault', 1, '2025-10-18 04:56:25', '2025-10-18 04:56:25'),
(30, 'Peugeot', 1, '2025-10-18 04:56:25', '2025-10-18 04:56:25'),
(31, 'Citroën', 1, '2025-10-18 04:56:25', '2025-10-18 04:56:25'),
(32, 'Bugatti', 1, '2025-10-18 04:56:25', '2025-10-18 04:56:25'),
(33, 'Ferrari', 1, '2025-10-18 04:56:25', '2025-10-18 04:56:25'),
(34, 'Lamborghini', 1, '2025-10-18 04:56:25', '2025-10-18 04:56:25'),
(35, 'Maserati', 1, '2025-10-18 04:56:25', '2025-10-18 04:56:25'),
(36, 'Alfa Romeo', 1, '2025-10-18 04:56:25', '2025-10-18 04:56:25'),
(37, 'Fiat', 1, '2025-10-18 04:56:25', '2025-10-18 04:56:25'),
(38, 'Lancia', 1, '2025-10-18 04:56:25', '2025-10-18 04:56:25'),
(39, 'Land Rover', 1, '2025-10-18 04:56:25', '2025-10-18 04:56:25'),
(40, 'Jaguar', 1, '2025-10-18 04:56:25', '2025-10-18 04:56:25'),
(41, 'Mini', 1, '2025-10-18 04:56:25', '2025-10-18 04:56:25'),
(42, 'Bentley', 1, '2025-10-18 04:56:25', '2025-10-18 04:56:25'),
(43, 'Rolls-Royce', 1, '2025-10-18 04:56:25', '2025-10-18 04:56:25'),
(44, 'Aston Martin', 1, '2025-10-18 04:56:25', '2025-10-18 04:56:25'),
(45, 'McLaren', 1, '2025-10-18 04:56:25', '2025-10-18 04:56:25'),
(46, 'Lotus', 1, '2025-10-18 04:56:25', '2025-10-18 04:56:25'),
(47, 'Volvo', 1, '2025-10-18 04:56:25', '2025-10-18 04:56:25'),
(48, 'Saab', 1, '2025-10-18 04:56:25', '2025-10-18 04:56:25'),
(49, 'Skoda', 1, '2025-10-18 04:56:25', '2025-10-18 04:56:25'),
(50, 'Seat', 1, '2025-10-18 04:56:25', '2025-10-18 04:56:25'),
(51, 'BYD', 1, '2025-10-18 04:56:25', '2025-10-18 04:56:25'),
(52, 'Geely', 1, '2025-10-18 04:56:25', '2025-10-18 04:56:25'),
(53, 'Great Wall', 1, '2025-10-18 04:56:25', '2025-10-18 04:56:25'),
(54, 'Maybach', 1, '2025-10-18 04:56:25', '2025-10-18 04:56:25'),
(55, 'Pagani', 1, '2025-10-18 04:56:25', '2025-10-18 04:56:25'),
(56, 'Koenigsegg', 1, '2025-10-18 04:56:25', '2025-10-18 04:56:25');

-- --------------------------------------------------------

--
-- Структура таблицы `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `admin_id`, `created_at`, `updated_at`) VALUES
(1, 'Headlights', 1, '2025-10-04 11:00:29', '2025-10-04 11:00:29'),
(2, 'Tail Lights', 1, '2025-10-04 11:00:29', '2025-10-04 11:00:29'),
(3, 'Fog Lights', 1, '2025-10-04 11:00:29', '2025-10-04 11:00:29'),
(4, 'Daytime Running Lights', 1, '2025-10-04 11:00:29', '2025-10-04 11:00:29');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `body` text NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
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
-- Структура таблицы `jobs`
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
-- Структура таблицы `job_batches`
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
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_07_20_000000_create_gpt_traces_table', 1),
(5, '2024_12_03_125041_create_orders_table', 1),
(6, '2025_01_16_123853_create_admins_table', 1),
(7, '2025_01_19_161211_create_auctions_table', 1),
(8, '2025_02_09_144714_create_bids_table', 1),
(9, '2025_02_26_164946_create_books_table', 1),
(10, '2025_04_05_083849_create_goods_orders_table', 1),
(11, '2025_04_20_145505_create_products_table', 1),
(12, '2025_04_20_145528_create_poincluded_table', 1),
(13, '2025_06_26_080743_create_comments_table', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `mystery_boxes`
--

CREATE TABLE `mystery_boxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` enum('basic','deluxe','premium') NOT NULL,
  `description` text DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `mystery_box_items`
--

CREATE TABLE `mystery_box_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `mystery_box_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('cart','pending','paid','processing','shipped','delivered','cancelled','refunded') NOT NULL DEFAULT 'cart',
  `total_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `shipping_address` text DEFAULT NULL,
  `ordered_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `status`, `total_price`, `shipping_address`, `ordered_at`, `created_at`, `updated_at`) VALUES
(36, 10, 'paid', 1200.00, 'Skuju iela 18, Riga, LV, Latvia', '2025-10-05 03:57:22', '2025-10-05 03:57:22', '2025-10-05 03:57:22');

-- --------------------------------------------------------

--
-- Структура таблицы `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED DEFAULT NULL,
  `unit-price` decimal(10,2) DEFAULT NULL COMMENT 'price at the time of order',
  `subtotal` decimal(10,2) DEFAULT NULL COMMENT 'quantity x unit_price',
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `order_items`
--

INSERT INTO `order_items` (`id`, `quantity`, `unit-price`, `subtotal`, `order_id`, `product_id`, `created_at`, `updated_at`) VALUES
(39, 1, 1200.00, 1200.00, 36, 120, '2025-10-05 03:57:22', '2025-10-05 03:57:22');

-- --------------------------------------------------------

--
-- Структура таблицы `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL COMMENT 'price per pack',
  `amount_value` int(11) NOT NULL COMMENT 'numeric amount',
  `country_origin` varchar(100) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `storage_conditions` varchar(255) DEFAULT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `amount_value`, `country_origin`, `image`, `description`, `storage_conditions`, `admin_id`, `brand_id`, `category_id`, `created_at`, `updated_at`) VALUES
(120, 'BMW 3 Series G20 LED Headlights', 1200.00, 20, 'Germany', 'images/front/bmw-g20-headlights.png', NULL, 'Store in dry place', 1, 1, 1, '2025-10-04 11:00:29', '2025-10-18 05:44:24'),
(121, 'Audi A6 C8 OLED Tail Lights', 1500.00, 2, 'Germany', 'images/front/audi-a6-tail.png', 'Audi A6 C8 original OLED dynamic tail lights set with sequential indicators.', 'Keep sealed, avoid moisture', 1, 2, 2, '2025-10-04 11:00:29', '2025-10-04 11:00:29'),
(122, 'Porsche 911 992 LED Matrix Headlights', 2800.00, 2, 'Germany', 'images/front/porsche-911-headlights.png', 'Genuine Porsche 911 992 LED Matrix Headlights with automatic high-beam assist.', 'Keep in original packaging', 1, 3, 1, '2025-10-04 11:00:29', '2025-10-04 11:00:29'),
(123, 'Mercedes-Benz E-Class W213 LED Fog Lights', 450.00, 2, 'Germany', 'images/front/mercedes-fog.png', 'OEM LED Fog Lights for Mercedes E-Class W213 facelift model.', 'Avoid direct sunlight', 1, 4, 3, '2025-10-04 11:00:29', '2025-10-04 11:00:29'),
(124, 'Audi Q7 LED Daytime Running Lights', 350.00, 2, 'Germany', 'images/front/audi-q7-drl.png', 'Original DRL lights for Audi Q7 with white LED signature.', 'Keep sealed until installation', 1, 2, 4, '2025-10-04 11:00:29', '2025-10-04 11:00:29');

-- --------------------------------------------------------

--
-- Структура таблицы `sessions`
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
-- Дамп данных таблицы `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('JkP0QQO7jdq9hseODitczbapuPWPcpDqnthHF8iN', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiN3hmZlhnQnB5MzhRWkc0eko2ME5DWEdjWlAwYTdJdTlUYzhBdDFFeiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC90dXRvciI7fXM6NTI6ImxvZ2luX2FkbWluXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1760779922);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `has_subscription` bit(1) NOT NULL DEFAULT b'0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `has_subscription`, `created_at`, `updated_at`) VALUES
(1, 'johndoe', 'johndoe@gmail.com', NULL, '$2y$12$CxAVn/AIQsjPZiFKG5GFu.fEx4cO8wOWH2f7ZAlXqJMZRi7AV9irC', NULL, b'0', '2025-04-27 06:03:14', '2025-04-27 06:03:14'),
(2, 'igor', 'igor@gmail.com', NULL, '$2y$12$e2g1Owb1styaeIdPe/m92OpEaAHyXenGMcA8YNHrxFabGpi/JjKby', NULL, b'0', '2025-05-15 07:39:42', '2025-05-15 07:39:42'),
(3, 'rvt', 'rvt@gmail.com', NULL, '$2y$12$jPxR/QjacCOyr6dv.sJEVezgN.170e2O9ElLtewTj77K9n2GkFikS', NULL, b'0', '2025-05-25 08:15:11', '2025-05-25 08:15:11'),
(4, 'donufrijuks', 'donufrijuks@gmail.com', NULL, '$2y$12$FiXc4Mb/i/NtMXokjqI/.eBGodARvWNcBbhEsUwy/80dAnFJ.BgC.', NULL, b'0', '2025-06-05 03:44:41', '2025-06-05 03:44:41'),
(5, 'freemen1094', 'freemen1094@gmail.com', NULL, '$2y$12$O.k/JwU8ylbUlmulbfzYTOJ6XRE/HNoHZq3sBnWN/EaKvuT.qTUqa', NULL, b'0', '2025-06-05 03:47:49', '2025-06-05 03:47:49'),
(7, 'asin', 'asin@gmail.com', NULL, '$2y$12$p6m2CmKtItJSN6Z2KdiAJ.Uuuw9s9YU9/sW6RZgPE52CLjdj6wiF6', NULL, b'0', '2025-06-05 04:05:10', '2025-06-05 04:05:10'),
(8, 'kms', 'kms@gmail.com', NULL, '$2y$12$MpXpo4yDiAq3PJMAFlyp/eWYmH1TCEhgch0mR0.vjRQ2GRu0p381.', NULL, b'0', '2025-06-05 04:10:37', '2025-06-05 04:10:37'),
(9, 'g', 'g@gmail.com', NULL, '$2y$12$scke6DlNfV7ydwerRaOodejJCv.DpT0zGoM9Azrm7dvvQ/IagPHgG', NULL, b'0', '2025-06-24 07:35:37', '2025-06-24 07:35:37'),
(10, 'man', 'man@gmail.com', NULL, '$2y$12$PGiPSiCm6YeZlX1D3rAzWu/Jvm0JIXUtuiSXJdjfd3/lHwhqVjgga', NULL, b'0', '2025-09-20 06:19:56', '2025-09-20 06:19:56');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Индексы таблицы `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Индексы таблицы `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Индексы таблицы `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `mystery_boxes`
--
ALTER TABLE `mystery_boxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `mystery_box_items`
--
ALTER TABLE `mystery_box_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mystery_box_id` (`mystery_box_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Индексы таблицы `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`);

--
-- Индексы таблицы `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `products_admin_id_foreign` (`admin_id`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Индексы таблицы `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT для таблицы `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `mystery_boxes`
--
ALTER TABLE `mystery_boxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `mystery_box_items`
--
ALTER TABLE `mystery_box_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT для таблицы `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `brands`
--
ALTER TABLE `brands`
  ADD CONSTRAINT `brands_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`);

--
-- Ограничения внешнего ключа таблицы `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`);

--
-- Ограничения внешнего ключа таблицы `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `mystery_boxes`
--
ALTER TABLE `mystery_boxes`
  ADD CONSTRAINT `mystery_boxes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `mystery_box_items`
--
ALTER TABLE `mystery_box_items`
  ADD CONSTRAINT `mystery_box_items_mystery_box_id_foreign` FOREIGN KEY (`mystery_box_id`) REFERENCES `mystery_boxes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mystery_box_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
