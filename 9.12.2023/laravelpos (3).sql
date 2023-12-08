-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2023 at 07:37 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelpos`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `created_at`, `updated_at`) VALUES
(1, 'Arong', '2023-12-02 18:54:12', '2023-12-02 18:54:12'),
(2, 'hp', '2023-12-02 18:54:57', '2023-12-02 18:54:57'),
(3, 'bshundhora', '2023-12-02 18:55:08', '2023-12-02 18:55:08'),
(4, 'Samsung', '2023-12-03 16:55:08', '2023-12-03 16:55:08'),
(5, 'Easy', '2023-12-03 16:56:03', '2023-12-03 16:56:03'),
(6, 'Bata', '2023-12-03 16:56:12', '2023-12-03 16:56:12'),
(7, 'Meena bazaar', '2023-12-03 16:56:45', '2023-12-03 16:56:45'),
(8, 'shwapno', '2023-12-03 16:58:23', '2023-12-03 16:58:23');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'electronics', '2023-12-02 18:57:36', '2023-12-02 18:57:36'),
(2, 'food', '2023-12-02 18:57:45', '2023-12-02 18:57:45'),
(3, 'vegetable', '2023-12-02 18:57:57', '2023-12-02 18:57:57'),
(4, 'electronics', '2023-12-03 16:51:37', '2023-12-03 16:51:37'),
(5, 'Fish', '2023-12-03 16:52:24', '2023-12-03 16:52:24'),
(6, 'Meat', '2023-12-03 16:52:38', '2023-12-03 16:52:38'),
(7, 'Dress', '2023-12-03 16:53:37', '2023-12-03 16:53:37'),
(8, 'Saree', '2023-12-03 16:53:57', '2023-12-03 16:53:57');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer_name`, `customer_address`, `customer_phone`, `customer_email`, `created_at`, `updated_at`) VALUES
(1, 'Alamin', 'borishal', '12345767', 'alamin@gmail.com', '2023-12-02 18:52:52', '2023-12-02 18:52:52'),
(2, 'korim', 'manikdi', '1123456', 'korin@gmail.com', '2023-12-02 18:53:57', '2023-12-02 18:53:57'),
(3, 'jahid', 'borishal', '12345767', 'jahis@gmail.com', '2023-12-02 18:59:14', '2023-12-02 18:59:14');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2018_12_23_120000_create_shoppingcart_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_10_31_174109_create_products_models_table', 1),
(7, '2023_11_08_171649_create_units_table', 1),
(8, '2023_11_08_191356_create_brands_table', 1),
(9, '2023_11_09_061430_create_categories_table', 1),
(10, '2023_11_09_073232_create_suppliers_table', 1),
(11, '2023_11_12_035959_create_customers_table', 1),
(12, '2023_11_29_151209_create_sales_orders_table', 1),
(14, '2023_11_29_153007_create_roles_table', 1),
(15, '2023_11_29_153107_create_s_order_products_table', 1),
(16, '2023_11_29_153410_create_p_order_products_table', 1),
(17, '2023_12_03_201158_create_purchase_orders_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
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
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_models`
--

CREATE TABLE `products_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `selling_price` decimal(8,2) NOT NULL,
  `buying_price` decimal(8,2) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `product_status` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_models`
--

INSERT INTO `products_models` (`id`, `category_id`, `brand_id`, `product_name`, `description`, `product_image`, `unit_id`, `selling_price`, `buying_price`, `sku`, `product_status`, `stock`, `created_at`, `updated_at`) VALUES
(2, 2, 3, 'meat', 'good', '1701543694.jpg', 1, '2000.00', '5000.00', '12', 1, 0, '2023-12-02 19:01:34', '2023-12-04 04:34:24'),
(3, 3, 1, '3_piece', 'nice', '1701545943.webp', 3, '2600.00', '2500.00', '1', 1, 4, '2023-12-02 19:39:03', '2023-12-08 17:52:02'),
(4, 1, 2, 'Laptop', 'good', '1701623174.jpg', 3, '30000.00', '29000.00', '1', 1, 2, '2023-12-03 17:06:14', '2023-12-08 17:59:27'),
(5, 1, 2, 'Laptop', 'good', '1701623258.jpg', 3, '30000.00', '29000.00', '1', 1, 2, '2023-12-03 17:07:38', '2023-12-07 07:16:12'),
(6, 2, 8, 'rice', 'good', '1701665725.jpg', 1, '168.00', '136.00', '123', 5, 3, '2023-12-04 04:55:25', '2023-12-04 05:38:57'),
(7, 1, 4, 'iphone', 'food', '1701666172.jpg', 3, '999999.99', '9800.00', '127', 3, 1, '2023-12-04 05:02:52', '2023-12-04 05:39:54'),
(8, 3, 8, 'alu', 'food', '1701668282.jpg', 3, '100.00', '80.00', '12', 2, 3, '2023-12-04 05:38:02', '2023-12-04 17:11:14'),
(9, 1, 4, 'mobile', 'good', '1701873229.jpg', 3, '10000.00', '9000.00', '123', 1, 2, '2023-12-06 14:33:49', '2023-12-06 14:35:55'),
(10, 1, 3, 'Microwave', 'good', '1701887665.jpg', 3, '2000.00', '1450.00', '12', 1, 4, '2023-12-06 18:34:25', '2023-12-08 17:49:58'),
(11, 2, 7, 'rice', 'food', '1701926206.jpg', 1, '1008.00', '136.00', '1277', 1, 5, '2023-12-07 05:16:46', '2023-12-08 17:49:58'),
(12, 2, 7, 'rice', 'food', '1701926279.jpg', 1, '123.00', '1280.00', '127', 1, 3, '2023-12-07 05:17:59', '2023-12-08 18:01:02');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_orders`
--

CREATE TABLE `purchase_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_orders`
--

INSERT INTO `purchase_orders` (`id`, `supplier_id`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2023-12-04 03:30:58', '2023-12-04 03:30:58'),
(2, 2, 1, 1, '2023-12-04 03:37:24', '2023-12-04 03:37:24'),
(3, 1, 1, 1, '2023-12-04 03:44:19', '2023-12-04 03:44:19'),
(4, 1, 1, 1, '2023-12-04 03:44:51', '2023-12-04 03:44:51'),
(5, 2, 1, 1, '2023-12-04 04:24:58', '2023-12-04 04:24:58'),
(6, 2, 1, 1, '2023-12-04 05:38:57', '2023-12-04 05:38:57'),
(7, 1, 1, 1, '2023-12-04 17:09:11', '2023-12-04 17:09:11'),
(8, 1, 1, 1, '2023-12-06 14:34:41', '2023-12-06 14:34:41'),
(9, 2, 1, 1, '2023-12-08 17:49:58', '2023-12-08 17:49:58'),
(10, 1, 1, 1, '2023-12-08 17:59:27', '2023-12-08 17:59:27'),
(11, 2, 1, 1, '2023-12-08 18:01:02', '2023-12-08 18:01:02');

-- --------------------------------------------------------

--
-- Table structure for table `p_order_products`
--

CREATE TABLE `p_order_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `p_order_products`
--

INSERT INTO `p_order_products` (`id`, `purchase_order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, '2023-12-04 03:30:58', '2023-12-04 03:30:58'),
(2, 1, 2, 1, '2023-12-04 03:30:58', '2023-12-04 03:30:58'),
(3, 1, 3, 1, '2023-12-04 03:30:58', '2023-12-04 03:30:58'),
(4, 2, 3, 8, '2023-12-04 03:37:24', '2023-12-04 03:37:24'),
(5, 2, 2, 6, '2023-12-04 03:37:24', '2023-12-04 03:37:24'),
(6, 2, 5, 1, '2023-12-04 03:37:24', '2023-12-04 03:37:24'),
(7, 3, 1, 4, '2023-12-04 03:44:19', '2023-12-04 03:44:19'),
(8, 4, 2, 10, '2023-12-04 03:44:51', '2023-12-04 03:44:51'),
(9, 5, 1, 8, '2023-12-04 04:24:58', '2023-12-04 04:24:58'),
(10, 5, 3, 7, '2023-12-04 04:24:58', '2023-12-04 04:24:58'),
(11, 5, 5, 6, '2023-12-04 04:24:58', '2023-12-04 04:24:58'),
(12, 5, 4, 6, '2023-12-04 04:24:58', '2023-12-04 04:24:58'),
(13, 6, 8, 5, '2023-12-04 05:38:57', '2023-12-04 05:38:57'),
(14, 6, 7, 2, '2023-12-04 05:38:57', '2023-12-04 05:38:57'),
(15, 6, 6, 3, '2023-12-04 05:38:57', '2023-12-04 05:38:57'),
(16, 7, 8, 4, '2023-12-04 17:09:11', '2023-12-04 17:09:11'),
(17, 8, 9, 4, '2023-12-06 14:34:41', '2023-12-06 14:34:41'),
(18, 9, 4, 3, '2023-12-08 17:49:58', '2023-12-08 17:49:58'),
(19, 9, 10, 4, '2023-12-08 17:49:58', '2023-12-08 17:49:58'),
(20, 9, 11, 5, '2023-12-08 17:49:58', '2023-12-08 17:49:58'),
(21, 10, 4, 1, '2023-12-08 17:59:27', '2023-12-08 17:59:27'),
(22, 11, 12, 3, '2023-12-08 18:01:02', '2023-12-08 18:01:02');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales_orders`
--

CREATE TABLE `sales_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales_orders`
--

INSERT INTO `sales_orders` (`id`, `customer_id`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 1, '2023-12-02 19:35:13', '2023-12-02 19:35:13'),
(2, 1, 1, 1, '2023-12-04 03:30:03', '2023-12-04 03:30:03'),
(3, 2, 1, 1, '2023-12-04 03:30:31', '2023-12-04 03:30:31'),
(4, 3, 1, 1, '2023-12-04 03:34:02', '2023-12-04 03:34:02'),
(5, 2, 1, 1, '2023-12-04 03:39:22', '2023-12-04 03:39:22'),
(7, 3, 1, 1, '2023-12-04 04:00:38', '2023-12-04 04:00:38'),
(9, 3, 1, 1, '2023-12-04 04:01:01', '2023-12-04 04:01:01'),
(24, 1, 1, 1, '2023-12-04 04:16:37', '2023-12-04 04:16:37'),
(29, 1, 1, 1, '2023-12-04 04:23:55', '2023-12-04 04:23:55'),
(32, 3, 1, 1, '2023-12-04 04:26:42', '2023-12-04 04:26:42'),
(34, 2, 1, 1, '2023-12-04 04:27:17', '2023-12-04 04:27:17'),
(35, 1, 1, 1, '2023-12-04 04:34:24', '2023-12-04 04:34:24'),
(36, 3, 1, 1, '2023-12-04 04:36:54', '2023-12-04 04:36:54'),
(37, 1, 1, 1, '2023-12-04 05:39:54', '2023-12-04 05:39:54'),
(38, 1, 1, 1, '2023-12-04 17:11:14', '2023-12-04 17:11:14'),
(39, 2, 1, 1, '2023-12-06 14:35:55', '2023-12-06 14:35:55'),
(40, 1, 1, 1, '2023-12-07 07:16:12', '2023-12-07 07:16:12'),
(41, 2, 1, 1, '2023-12-08 17:52:02', '2023-12-08 17:52:02');

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `identifier` varchar(255) NOT NULL,
  `instance` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supp_name` varchar(255) NOT NULL,
  `supp_address` varchar(255) NOT NULL,
  `supp_phone` varchar(255) NOT NULL,
  `supp_email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `supp_name`, `supp_address`, `supp_phone`, `supp_email`, `created_at`, `updated_at`) VALUES
(1, 'Bristy', 'Mirpur', '0123457889', 'alamin@gmail.com', '2023-12-02 19:02:41', '2023-12-02 19:02:41'),
(2, 'sheuly', 'saver', '0123457889', 'sheuly@gmail.com', '2023-12-02 19:03:54', '2023-12-02 19:03:54');

-- --------------------------------------------------------

--
-- Table structure for table `s_order_products`
--

CREATE TABLE `s_order_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sales_order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `s_order_products`
--

INSERT INTO `s_order_products` (`id`, `sales_order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, '2023-12-02 19:35:13', '2023-12-02 19:35:13'),
(2, 1, 1, 3, '2023-12-02 19:35:13', '2023-12-02 19:35:13'),
(3, 1, 2, 2, '2023-12-02 19:35:13', '2023-12-02 19:35:13'),
(4, 2, 2, 1, '2023-12-04 03:30:03', '2023-12-04 03:30:03'),
(5, 2, 2, 1, '2023-12-04 03:30:03', '2023-12-04 03:30:03'),
(6, 2, 2, 1, '2023-12-04 03:30:03', '2023-12-04 03:30:03'),
(7, 3, 5, 2, '2023-12-04 03:30:31', '2023-12-04 03:30:31'),
(8, 3, 3, 3, '2023-12-04 03:30:31', '2023-12-04 03:30:31'),
(9, 4, 1, 3, '2023-12-04 03:34:02', '2023-12-04 03:34:02'),
(10, 4, 2, 2, '2023-12-04 03:34:02', '2023-12-04 03:34:02'),
(11, 4, 3, 4, '2023-12-04 03:34:02', '2023-12-04 03:34:02'),
(12, 5, 4, 4, '2023-12-04 03:39:22', '2023-12-04 03:39:22'),
(14, 7, 2, 2, '2023-12-04 04:00:38', '2023-12-04 04:00:38'),
(16, 9, 3, 2, '2023-12-04 04:01:01', '2023-12-04 04:01:01'),
(31, 24, 2, 1, '2023-12-04 04:16:37', '2023-12-04 04:16:37'),
(38, 29, 2, 4, '2023-12-04 04:23:55', '2023-12-04 04:23:55'),
(42, 32, 2, 2, '2023-12-04 04:26:42', '2023-12-04 04:26:42'),
(44, 34, 1, 3, '2023-12-04 04:27:17', '2023-12-04 04:27:17'),
(45, 35, 2, 1, '2023-12-04 04:34:24', '2023-12-04 04:34:24'),
(46, 36, 4, 2, '2023-12-04 04:36:54', '2023-12-04 04:36:54'),
(47, 37, 7, 1, '2023-12-04 05:39:54', '2023-12-04 05:39:54'),
(48, 38, 8, 6, '2023-12-04 17:11:14', '2023-12-04 17:11:14'),
(49, 39, 9, 2, '2023-12-06 14:35:55', '2023-12-06 14:35:55'),
(50, 40, 5, 3, '2023-12-07 07:16:12', '2023-12-07 07:16:12'),
(51, 41, 3, 3, '2023-12-08 17:52:02', '2023-12-08 17:52:02'),
(52, 41, 4, 2, '2023-12-08 17:52:03', '2023-12-08 17:52:03');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `unit_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `unit_name`, `created_at`, `updated_at`) VALUES
(2, 'litter', '2023-12-02 18:55:26', '2023-12-02 18:55:26'),
(3, 'piece', '2023-12-02 18:56:56', '2023-12-02 18:56:56'),
(4, 'gm', '2023-12-03 16:54:12', '2023-12-03 16:54:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `role_id`, `status`, `avatar`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'khaleda', 'khaleda1995.2021@gmail.com', 'khaleda', 2, 0, NULL, NULL, '$2y$10$JotwoWe0k/EYZpDNxEY5F.ILC3IPwDGCk7QilgF6Z./2bx3gld7oC', NULL, '2023-12-02 18:43:42', '2023-12-02 18:43:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products_models`
--
ALTER TABLE `products_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p_order_products`
--
ALTER TABLE `p_order_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_orders`
--
ALTER TABLE `sales_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `s_order_products`
--
ALTER TABLE `s_order_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products_models`
--
ALTER TABLE `products_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `p_order_products`
--
ALTER TABLE `p_order_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_orders`
--
ALTER TABLE `sales_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `s_order_products`
--
ALTER TABLE `s_order_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
