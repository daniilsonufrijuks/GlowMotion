-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:4306
-- Время создания: Окт 04 2025 г., 09:31
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
-- База данных: `skebob`
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
  `slug` varchar(255) NOT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `admin_id`, `created_at`, `updated_at`) VALUES
(1, 'Crispy Chips', 'crispy-chips', 1, '2025-09-20 13:18:01', '2025-09-20 13:18:01'),
(2, 'Choco Delight', 'choco-delight', 1, '2025-09-20 13:18:01', '2025-09-20 13:18:01'),
(3, 'Fresh Drinks Co.', 'fresh-drinks-co', 1, '2025-09-20 13:18:01', '2025-09-20 13:18:01'),
(4, 'Nutty World', 'nutty-world', 1, '2025-09-20 13:18:01', '2025-09-20 13:18:01'),
(5, 'Cookie Factory', 'cookie-factory', 1, '2025-09-20 13:18:01', '2025-09-20 13:18:01'),
(6, 'Fruit Fun', 'fruit-fun', 1, '2025-09-20 13:18:01', '2025-09-20 13:18:01'),
(7, 'Sweet Candy Co.', 'sweet-candy-co', 1, '2025-09-20 13:18:01', '2025-09-20 13:18:01');

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
  `slug` varchar(255) NOT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `admin_id`, `created_at`, `updated_at`) VALUES
(1, 'Chips', 'chips', 1, '2025-09-20 13:19:08', '2025-09-20 13:19:08'),
(2, 'Chocolates', 'chocolates', 1, '2025-09-20 13:19:08', '2025-09-20 13:19:08'),
(3, 'Drinks', 'drinks', 1, '2025-09-20 13:19:08', '2025-09-20 13:19:08'),
(4, 'Nuts', 'nuts', 1, '2025-09-20 13:19:08', '2025-09-20 13:19:08'),
(5, 'Biscuits', 'biscuits', 1, '2025-09-20 13:19:08', '2025-09-20 13:19:08'),
(6, 'Fruit Snacks', 'fruit-snacks', 1, '2025-09-20 13:19:08', '2025-09-20 13:19:08'),
(7, 'Candy', 'candy', 1, '2025-09-20 13:19:08', '2025-09-20 13:19:08'),
(8, 'Snack Boxes', 'snack-boxes', 1, '2025-09-20 13:19:08', '2025-09-20 13:19:08');

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

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `body`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Nice shop', NULL, '2025-06-27 09:40:43', '2025-06-27 09:40:43'),
(2, 'Thank you', NULL, '2025-06-27 09:46:35', '2025-06-27 09:46:35'),
(3, 'Very very nice shop', NULL, '2025-07-10 11:36:42', '2025-07-10 11:36:42'),
(4, 'Thank you!', NULL, '2025-08-26 05:15:35', '2025-08-26 05:15:35'),
(5, 'Thanks!', NULL, '2025-09-21 04:01:22', '2025-09-21 04:01:22'),
(6, 'hello', NULL, '2025-09-23 05:05:58', '2025-09-23 05:05:58'),
(7, 'hello', NULL, '2025-09-23 05:06:04', '2025-09-23 05:06:04'),
(8, 'hello', NULL, '2025-09-23 05:06:22', '2025-09-23 05:06:22');

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
(30, 10, 'paid', 15.17, 'Skuju iela 18, Riga, LV, Latvia', '2025-09-30 15:12:19', '2025-09-30 15:12:19', '2025-09-30 15:12:19'),
(31, 10, 'paid', 16.99, 'Skuju iela 18, Riga, LV, Latvia', '2025-10-01 09:43:16', '2025-10-01 09:43:16', '2025-10-01 09:43:16'),
(32, 10, 'paid', 23.74, 'Skuju iela 18, Riga, LV, Latvia', '2025-10-02 03:32:18', '2025-10-02 03:32:18', '2025-10-02 03:32:18'),
(33, 10, 'paid', 23.74, 'Skuju iela 18, Riga, LV, Latvia', '2025-10-02 03:37:36', '2025-10-02 03:37:36', '2025-10-02 03:37:36'),
(34, 10, 'paid', 23.74, 'Skuju iela 18, Riga, LV, Latvia', '2025-10-02 04:05:43', '2025-10-02 04:05:43', '2025-10-02 04:05:43'),
(35, 10, 'paid', 26.49, 'Skuju iela 18, Riga, LV, Latvia', '2025-10-04 03:29:03', '2025-10-04 03:29:03', '2025-10-04 03:29:03');

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
(17, 1, 3.20, 3.20, 30, 95, '2025-09-30 15:12:19', '2025-09-30 15:12:19'),
(18, 2, 2.99, 5.98, 30, 94, '2025-09-30 15:12:19', '2025-09-30 15:12:19'),
(19, 1, 3.20, 3.20, 31, 106, '2025-10-01 09:43:16', '2025-10-01 09:43:16'),
(20, 1, 3.90, 3.90, 31, 108, '2025-10-01 09:43:16', '2025-10-01 09:43:16'),
(21, 1, 3.90, 3.90, 31, 108, '2025-10-01 09:43:16', '2025-10-01 09:43:16'),
(22, 2, 3.90, 7.80, 32, 108, '2025-10-02 03:32:18', '2025-10-02 03:32:18'),
(23, 1, 2.75, 2.75, 32, 96, '2025-10-02 03:32:18', '2025-10-02 03:32:18'),
(24, 1, 2.20, 2.20, 32, 102, '2025-10-02 03:32:18', '2025-10-02 03:32:18'),
(25, 2, 2.50, 5.00, 32, 113, '2025-10-02 03:32:18', '2025-10-02 03:32:18'),
(26, 2, 3.90, 7.80, 33, 108, '2025-10-02 03:37:36', '2025-10-02 03:37:36'),
(27, 1, 2.75, 2.75, 33, 96, '2025-10-02 03:37:36', '2025-10-02 03:37:36'),
(28, 1, 2.20, 2.20, 33, 102, '2025-10-02 03:37:36', '2025-10-02 03:37:36'),
(29, 2, 2.50, 5.00, 33, 113, '2025-10-02 03:37:36', '2025-10-02 03:37:36'),
(30, 2, 3.90, 7.80, 34, 108, '2025-10-02 04:05:43', '2025-10-02 04:05:43'),
(31, 1, 2.75, 2.75, 34, 96, '2025-10-02 04:05:43', '2025-10-02 04:05:43'),
(32, 1, 2.20, 2.20, 34, 102, '2025-10-02 04:05:43', '2025-10-02 04:05:43'),
(33, 2, 2.50, 5.00, 34, 113, '2025-10-02 04:05:43', '2025-10-02 04:05:43'),
(34, 2, 3.90, 7.80, 35, 108, '2025-10-04 03:29:03', '2025-10-04 03:29:03'),
(35, 1, 2.75, 2.75, 35, 96, '2025-10-04 03:29:03', '2025-10-04 03:29:03'),
(36, 1, 2.20, 2.20, 35, 102, '2025-10-04 03:29:03', '2025-10-04 03:29:03'),
(37, 2, 2.50, 5.00, 35, 113, '2025-10-04 03:29:03', '2025-10-04 03:29:03'),
(38, 1, 2.75, 2.75, 35, 96, '2025-10-04 03:29:03', '2025-10-04 03:29:03');

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
  `slug` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL COMMENT 'price per pack',
  `amount_value` decimal(10,2) NOT NULL COMMENT 'numeric amount',
  `amount_unit` enum('g','kg','ml','l','gab') NOT NULL COMMENT 'what amount_value represents',
  `country_origin` varchar(100) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `ingredients` text DEFAULT NULL,
  `nutritional_info` text DEFAULT NULL,
  `storage_conditions` varchar(255) DEFAULT NULL,
  `is_mystery_box` bit(1) NOT NULL DEFAULT b'0',
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `price`, `amount_value`, `amount_unit`, `country_origin`, `image`, `ingredients`, `nutritional_info`, `storage_conditions`, `is_mystery_box`, `admin_id`, `brand_id`, `category_id`, `created_at`, `updated_at`) VALUES
(94, 'Spicy Tomato Chips', 'spicy-tomato-chips', 2.99, 150.00, 'g', 'Mexico', 'images/front/crispy_tomato.png', 'Potatoes, Vegetable Oil, Tomato Powder, Salt, Spices', '540 kcal/100g, Fat: 32g, Carbs: 50g, Protein: 6g', 'Store in a cool, dry place', b'0', 1, 1, 1, NULL, NULL),
(95, 'Sea Salt Kettle Chips', 'sea-salt-kettle-chips', 3.20, 200.00, 'g', 'UK', 'images/front/crispy_sea.png', 'Potatoes, Sunflower Oil, Sea Salt', '520 kcal/100g, Fat: 28g, Carbs: 52g, Protein: 7g', 'Keep sealed for freshness', b'0', 1, 1, 1, NULL, NULL),
(96, 'Sour Cream & Onion Chips', 'sour-cream-onion-chips', 2.75, 140.00, 'g', 'USA', 'images/front/crispy_onion.png', 'Potatoes, Onion Powder, Sour Cream Flavor, Salt', '550 kcal/100g, Fat: 30g, Carbs: 55g, Protein: 6g', 'Store in dry place', b'0', 1, 1, 1, NULL, NULL),
(97, 'Belgian Dark Chocolate Bar', 'belgian-dark-chocolate-bar', 4.50, 100.00, 'g', 'Belgium', 'images/front/belgian_chocolate.png', 'Cocoa Mass, Cocoa Butter, Sugar', '560 kcal/100g, Fat: 40g, Carbs: 35g, Protein: 7g', 'Keep cool and dry', b'0', 1, 2, 2, NULL, NULL),
(98, 'Swiss Milk Chocolate \"Lindt\"', 'swiss-milk-chocolate', 3.80, 120.00, 'g', 'Switzerland', 'images/front/swiss_milk_chocolate.png', 'Milk Powder, Cocoa Butter, Cocoa Mass, Sugar', '580 kcal/100g, Fat: 38g, Carbs: 52g, Protein: 8g', 'Store in cool, dry area', b'0', 1, 2, 2, NULL, NULL),
(99, 'Nocciolata Latte - Milk Chocolate with Hazelnuts', 'hazelnut-chocolate-bar', 5.10, 90.00, 'g', 'Italy', 'images/front/italian_hazelnut_chocolate.png', 'Hazelnuts, Cocoa Mass, Sugar, Cocoa Butter', '600 kcal/100g, Fat: 42g, Carbs: 40g, Protein: 9g', 'Keep in dry place below 20°C', b'0', 1, 2, 2, NULL, NULL),
(100, 'Sparkling Mango Soda', 'mango-sparkling-drink', 1.99, 330.00, 'ml', 'South Korea', 'images/front/mango_sparkling_drink.png', 'Carbonated Water, Sugar, Mango Flavoring', '150 kcal per can, Sugar: 35g', 'Serve chilled', b'0', 1, 3, 3, NULL, NULL),
(101, '\"POKKA\" Lychee Iced Tea', 'lychee-iced-tea', 2.50, 500.00, 'ml', 'Thailand', 'images/front/lychee_iced_tea.png', 'Black Tea, Lychee Extract, Sugar', '120 kcal per bottle, Sugar: 28g', 'Best served cold', b'0', 1, 3, 3, NULL, NULL),
(102, '\"Phillipine Brand\" Coconut Water', 'coconut-water', 2.20, 330.00, 'ml', 'Philippines', 'images/front/coconut_water.png', '100% Coconut Water', '60 kcal per can, Potassium: 400mg', 'Keep refrigerated after opening', b'0', 1, 3, 3, NULL, NULL),
(103, 'Roasted Almond Mix', 'roasted-almond-mix', 5.25, 200.00, 'g', 'USA', 'images/front/roasted_almond_mix.png', 'Almonds, Cashews, Hazelnuts, Sea Salt', '620 kcal/100g, Fat: 55g, Carbs: 18g, Protein: 20g', 'Keep airtight', b'0', 1, 4, 4, NULL, NULL),
(104, 'Honey Roasted Peanuts', 'honey-roasted-peanuts', 3.80, 180.00, 'g', 'Canada', 'images/front/honey_roasted_peanuts.png', 'Peanuts, Honey, Sugar, Salt', '580 kcal/100g, Fat: 48g, Carbs: 22g, Protein: 19g', 'Store in cool, dry place', b'0', 1, 4, 4, NULL, NULL),
(105, 'Pistachio Kernels', 'pistachio-kernels', 6.90, 150.00, 'g', 'Iran', 'images/front/iranian_pistachio_kernels.png', 'Pistachios, Salt', '630 kcal/100g, Fat: 54g, Carbs: 20g, Protein: 21g', 'Keep sealed', b'0', 1, 4, 4, NULL, NULL),
(106, '\"Fox\'s\" Milk Chocolate Viennese Biscuit Sandwich', 'viennese-biscuit-sandwich', 3.20, 250.00, 'g', 'Austria', 'images/front/viennese_biscuit_sandwich.png', 'Wheat Flour, Chocolate Cream, Sugar, Eggs', '510 kcal/100g, Fat: 26g, Carbs: 60g, Protein: 5g', 'Keep dry', b'0', 1, 5, 5, NULL, NULL),
(107, '\"PEPITO\" Chocolate Flavoured Cookies', 'chocolate-chip-cookies', 2.80, 200.00, 'g', 'France', 'images/front/chocolate_flavoured_cookies.png', 'Wheat Flour, Chocolate Cream, Butter, Sugar, Eggs', '516 kcal/100g, Fat: 26g, Carbs: 62g, Protein: 5g', 'Store in an air-tight jar.', b'0', 1, 5, 5, NULL, NULL),
(108, '\"ITO SEIKA LANGULY\" Matcha Biscuits', 'japanese-matcha-biscuits', 3.90, 150.00, 'g', 'Japan', 'images/front/japanese_matcha_biscuit.png', 'Wheat Flour, Sugar, Butter, Matcha Powder', '500 kcal/100g, Fat: 22g, Carbs: 65g, Protein: 5g', 'Store in cool, dry place.', b'0', 1, 5, 5, NULL, NULL),
(109, '\"McVities\" Jaffa Cakes', 'australian-jaffa-cakes', 2.10, 120.00, 'g', 'Australia', 'images/front/australian_jaffa_cakes.png', 'Glucose Syrup, Sugar, Gelatin, Orange Jelly', '350 kcal/100g, Sugar: 70g', 'Keep sealed', b'0', 1, 6, 6, NULL, NULL),
(110, '\"HI-CHEW\" Chewing Candies', 'hi-chew-candies', 2.60, 100.00, 'g', 'Japan', 'images/front/hi_chew_candies.png', 'Grape, Strawberry and Apple flavor, Sugar, Citric Acid', '320 kcal/100g, Carbs: 80g', 'Store dry', b'0', 1, 6, 6, NULL, NULL),
(111, '\"Jubes\"', 'jubes-fruit-snacks', 3.30, 150.00, 'g', 'Brazil', 'images/front/jubes_fruit_snacks.png', 'Gelatin, Tropical Fruit juice (Strawberry, Orange, Apple, Pineapple, Grapes)', '280 kcal/100g, Fiber: 8g', 'Keep sealed, away from moisture', b'0', 1, 6, 6, NULL, NULL),
(112, '\"Yuki & Love\" Mochi Rice Cakes - Strawberry', 'mochi-rice-cakes-strawberry', 3.75, 180.00, 'g', 'Taiwan', 'images/front/mochi_rice_cakes_strawberry.png', 'Delicious mochi rice cakes with soft jam-like strawberry filling', '400 kcal/100g, Sugar: 85g', 'Store cool & dry', b'0', 1, 7, 7, NULL, NULL),
(113, 'Haribo \"Stars and Stripes”', 'haribo-stars-and-stripes', 2.50, 160.00, 'g', 'Germany', 'images/front/haribo_stars_and_stripes.png', 'Stars and Stripes shaped gummies in four sour flavors - cherry, lemon, cola, raspberry-lime', '420 kcal/100g, Fat: 14g, Sugar: 72g', 'Keep airtight, away from heat', b'0', 1, 7, 7, NULL, NULL),
(114, '\"Da Colonia\" Paçoca Tradicional', 'pacoquinha', 2.20, 150.00, 'g', 'Brazil', 'images/front/pacoquinha.png', 'Roasted and ground peanuts, sugar and salt. Allergens: Contains peanuts. Gluten free.', '390 kcal/100g, Sugar: 82g', 'Store in a dry place', b'0', 1, 7, 7, NULL, NULL),
(115, '\"Lotte Pepero\" Cookie & Cream Biscuit Sticks', 'pepero-white-chocolate', 2.20, 150.00, 'g', 'South Korea', 'images/front/pepero_white_chocolate.png', 'Biscuit sticks coated with white cream & crushed choco cookie', '390 kcal/100g, Sugar: 82g', 'Store in a dry place', b'0', 1, 7, 8, NULL, NULL),
(116, '\"Pocky\" Cloud Biscuit Sticks - Cheesecake', 'pocky-cheese-cake', 2.50, 160.00, 'g', 'China', 'images/front/pocky_cheese_cake.png', 'Crunchy biscuit sticks with thick cream style coating', '420 kcal/100g, Fat: 14g, Sugar: 72g', 'Keep airtight, away from heat', b'0', 1, 7, 8, NULL, NULL),
(119, '\"Glico Pretz\" Pretzel Sticks - Sea Salt Lemon', 'pretz-sea-salt-lemon', 2.30, 160.00, 'g', 'Japan', 'images/front/pretz_sea_salt_lemon.png', 'Crunchy pretzel sticks with a zesty lemon flavouring', '420 kcal/100g, Fat: 14g, Sugar: 72g', 'Keep airtight, away from heat', b'0', 1, 7, 8, NULL, NULL);

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
('4zkoR34KJ6Tf1f1oi6HA3BRkGmB6VJX3b2h5IR2K', 10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWWV1WnpCRktQb2RnR2FhR1RMN0hFRGt1ekwwSm9GRU5NSG9aYWFCWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0cy9jaGlwcz9wcmljZV9tYXg9MTAwMDAwJnByaWNlX21pbj0wIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTA7fQ==', 1759562968),
('82JuG4w0rVYcd6U6wRYl6XcNlLzIs1fcTxA2aowJ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTE02OXA4VmM0QmxXMXY0cDdONHhEd21QTEhHSTdtbHdRSXRjUEdMbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9vcmRlci1jb25maXJtYXRpb24iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1759558416),
('bclTsL39JM3cPzRfd0IAGYBWJ80LJX5eevUmTpvu', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN0R0bHp4Z0hZa1VtMHBJSXBRUHYyRXF6SG83SEJDSUFqemVaQlF5TiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1759558417),
('JhHEPf7onflRjRQxaoIxGpGibdnrtkYt0D1tZMmT', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMUtmbUxYUEtRZzlSemtNZ2VhaDVBZmh4YnZpTWk0a25kZjNhRXhqVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9vcmRlci1jb25maXJtYXRpb24iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1759558416);

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
(6, 'dhl', 'dhl@gmail.com', NULL, '$2y$12$Gbds2d0rYJELIAipqmh/nuRcjgnwvp7bA9eWOwuLDG8wG7OzfckRq', NULL, b'0', '2025-06-05 03:49:50', '2025-06-05 03:49:50'),
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
  ADD UNIQUE KEY `slug` (`slug`),
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
  ADD UNIQUE KEY `slug` (`slug`),
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
  ADD UNIQUE KEY `slug` (`slug`),
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT для таблицы `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

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
