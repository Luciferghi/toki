-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:8111
-- Generation Time: Mar 31, 2021 at 10:36 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toki`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lng` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `apartment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intercom` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `floor` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `address`, `created_at`, `updated_at`, `lat`, `lng`, `active`, `user_id`, `apartment`, `intercom`, `floor`, `entry`) VALUES
(1, '76556 Janet Lights Apt. 039\nLake Hanna, OR 71207-5206', '2021-02-05 00:03:40', '2021-02-05 00:03:40', '40.621997', '-73.938831', 1, 4, NULL, NULL, NULL, NULL),
(2, '366 Lauriane Roads Apt. 778\nSatterfieldmouth, OH 84368', '2021-02-05 00:03:40', '2021-02-05 00:03:40', '40.621997', '-73.938831', 1, 4, NULL, NULL, NULL, NULL),
(3, '475 Adrianna Plaza\nDejonstad, IL 03289', '2021-02-05 00:03:40', '2021-02-05 00:03:40', '40.621997', '-73.938831', 1, 4, NULL, NULL, NULL, NULL),
(4, '2289 Mayer Plaza\nDaughertytown, AK 24636-5399', '2021-02-05 00:03:40', '2021-02-05 00:03:40', '40.621997', '-73.938831', 1, 4, NULL, NULL, NULL, NULL),
(5, '473 Cremin Ramp Apt. 547\nTremblaychester, KS 74012', '2021-02-05 00:03:40', '2021-02-05 00:03:40', '40.621997', '-73.938831', 1, 4, NULL, NULL, NULL, NULL),
(6, '4902 Calista Avenue\nEast Larue, VT 17479-2501', '2021-02-05 00:03:40', '2021-02-05 00:03:40', '40.621997', '-73.938831', 1, 5, NULL, NULL, NULL, NULL),
(7, '374 Wiegand Mews Apt. 108\nPalmaberg, MI 88285', '2021-02-05 00:03:40', '2021-02-05 00:03:40', '40.621997', '-73.938831', 1, 5, NULL, NULL, NULL, NULL),
(8, '85683 Buckridge Unions\nChristyhaven, TX 50123-5368', '2021-02-05 00:03:40', '2021-02-05 00:03:40', '40.621997', '-73.938831', 1, 4, NULL, NULL, NULL, NULL),
(9, '27086 Oberbrunner Knolls Suite 362\nWisokystad, OK 81789-4389', '2021-02-05 00:03:40', '2021-02-05 00:03:40', '40.621997', '-73.938831', 1, 4, NULL, NULL, NULL, NULL),
(10, '125 Dameon Summit Apt. 990\nEast Amaritown, VA 39133', '2021-02-05 00:03:40', '2021-02-05 00:03:40', '40.621997', '-73.938831', 1, 4, NULL, NULL, NULL, NULL),
(11, '12, sallaghari', '2021-02-24 10:55:37', '2021-02-24 10:55:37', '27.668694256513145', '85.42372480561284', 1, 24, '12', '12', '12', '12'),
(12, '100, suryabinayak', '2021-02-24 11:25:46', '2021-02-24 11:25:46', '27.7172453', '85.3239605', 1, 25, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` int(11) NOT NULL DEFAULT 0 COMMENT '0 - Vendor, 1 - Blog',
  `vendor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `page_id` bigint(20) UNSIGNED DEFAULT NULL,
  `active_from` date NOT NULL,
  `active_to` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restorant_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_index` int(11) NOT NULL DEFAULT 0,
  `active` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `restorant_id`, `created_at`, `updated_at`, `order_index`, `active`) VALUES
(69, 'mobile', 20, '2021-02-24 05:46:58', '2021-02-24 05:46:58', 0, 1),
(70, 'Mobile', 19, '2021-02-24 10:27:52', '2021-02-24 10:27:52', 0, 1),
(71, 'Mobile', 22, '2021-03-31 00:15:28', '2021-03-31 00:15:28', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_subtitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `created_at`, `updated_at`, `name`, `alias`, `image`, `header_title`, `header_subtitle`, `deleted_at`) VALUES
(18, '2021-02-24 07:33:02', '2021-02-24 07:33:02', 'bhaktapur', 'bkt', '6bae2f87-d3ef-4b5a-b7c8-38a7c524a6c2', 'Bhaktapur', 'bhaktapur', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `type` int(11) NOT NULL DEFAULT 1 COMMENT '0 - Fixed, 1 - Percentage',
  `price` double(8,2) NOT NULL,
  `active_from` date NOT NULL,
  `active_to` date NOT NULL,
  `limit_to_num_uses` int(11) NOT NULL,
  `used_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `extras`
--

CREATE TABLE `extras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `extra_for_all_variants` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hours`
--

CREATE TABLE `hours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `0_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `0_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `1_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `1_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `2_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `2_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `3_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `3_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `4_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `4_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `5_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `5_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `6_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `6_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `restorant_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hours`
--

INSERT INTO `hours` (`id`, `created_at`, `updated_at`, `0_from`, `0_to`, `1_from`, `1_to`, `2_from`, `2_to`, `3_from`, `3_to`, `4_from`, `4_to`, `5_from`, `5_to`, `6_from`, `6_to`, `restorant_id`) VALUES
(17, '2021-02-24 07:34:26', '2021-02-24 10:50:43', '9:00 AM', '5:00 PM', '9:00 AM', '5:00 PM', '9:00 AM', '11:00 PM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19),
(18, '2021-03-31 00:20:18', '2021-03-31 00:20:32', NULL, NULL, NULL, NULL, NULL, NULL, '9:00 AM', '5:00 PM', NULL, NULL, NULL, NULL, NULL, NULL, 22);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(455) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `available` int(11) NOT NULL DEFAULT 1,
  `has_variants` int(11) NOT NULL DEFAULT 0,
  `vat` double(8,2) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `description`, `image`, `price`, `category_id`, `created_at`, `updated_at`, `available`, `has_variants`, `vat`, `deleted_at`) VALUES
(341, 'galaxy note 20 ultar', 'gjsfsv', '68f40c31-3c8f-409d-aa7e-63fd07d32177', 125000.00, 69, '2021-02-24 05:47:36', '2021-02-24 06:15:19', 1, 0, NULL, NULL),
(342, 'Galaxy 20', 'fresh', '518e59b6-7b80-4ea0-aff8-dc556485444e', 2500.00, 70, '2021-02-24 10:28:18', '2021-02-24 10:28:18', 1, 0, NULL, NULL),
(343, 'Samsung S10', 'S10', 'eae42f1d-f234-46bf-b645-ce644d8049d0', 500.00, 71, '2021-03-31 00:15:59', '2021-03-31 00:15:59', 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `language`, `created_at`, `updated_at`) VALUES
(1, NULL, 'en', '2021-02-05 00:03:12', '2021-02-05 00:03:12');

-- --------------------------------------------------------

--
-- Table structure for table `localmenus`
--

CREATE TABLE `localmenus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `language` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `languageName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` int(11) NOT NULL DEFAULT 0 COMMENT '0 - No, 1 - Yes'
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_08_29_200844_create_languages_table', 1),
(4, '2018_08_29_205156_create_translations_table', 1),
(5, '2019_05_03_000001_create_customer_columns', 1),
(6, '2019_05_03_000002_create_subscriptions_table', 1),
(7, '2020_02_06_010033_create_permission_tables', 1),
(8, '2020_02_06_022212_create_restorants_table', 1),
(9, '2020_02_09_015116_create_status_table', 1),
(10, '2020_02_09_152551_create_categories_table', 1),
(11, '2020_02_09_152656_create_items_table', 1),
(12, '2020_02_11_052117_create_address_table', 1),
(13, '2020_02_11_054259_create_orders_table', 1),
(14, '2020_02_20_094727_create_settings_table', 1),
(15, '2020_03_25_134914_create_pages_table', 1),
(16, '2020_04_03_143518_update_settings_table', 1),
(17, '2020_04_10_202027_create_payments_table', 1),
(18, '2020_04_11_165819_update_table_orders', 1),
(19, '2020_04_22_105556_update_items_table', 1),
(20, '2020_04_23_212320_update_restorants_table', 1),
(21, '2020_04_23_212502_update_orders_table', 1),
(22, '2020_04_28_112519_update_address_table', 1),
(23, '2020_05_07_122727_create_hours_table', 1),
(24, '2020_05_09_012646_update_orders_add_delivery_table', 1),
(25, '2020_05_09_024507_add_options_to_settings_table', 1),
(26, '2020_05_20_232204_create_notifications_table', 1),
(27, '2020_06_03_134258_change_radius_to_delivery_area_restorants_table', 1),
(28, '2020_06_26_131803_create_sms_verifications_table', 1),
(29, '2020_07_12_182829_create_extras_table', 1),
(30, '2020_07_14_155509_create_plan_table', 1),
(31, '2020_07_23_183000_update_restorants_with_featured', 1),
(32, '2020_07_28_131511_update_users_sms_verification', 1),
(33, '2020_07_30_102916_change_json_to_string', 1),
(34, '2020_08_01_014851_create_variants', 1),
(35, '2020_08_14_003718_create_ratings_table', 1),
(36, '2020_08_18_035731_update_table_plans', 1),
(37, '2020_08_18_053012_update_user_add_plan', 1),
(38, '2020_09_02_131604_update_orders_time_to_prepare', 1),
(39, '2020_09_09_080747_create_cities_table', 1),
(40, '2020_09_28_131250_update_item_softdelete', 1),
(41, '2020_10_24_150254_create_tables_table', 1),
(42, '2020_10_25_021321_create_visits_table', 1),
(43, '2020_10_26_004421_update_orders_client_nullable', 1),
(44, '2020_10_26_104351_update_restorant_table', 1),
(45, '2020_10_26_190049_update_plan', 1),
(46, '2020_10_27_180123_create_stripe_payment', 1),
(47, '2020_11_01_190615_update_user_table', 1),
(48, '2020_11_05_081140_create_paths_table', 1),
(49, '2020_11_14_111220_create_phone_in_orders', 1),
(50, '2020_11_17_211252_update_logo_in_settings', 1),
(51, '2020_11_25_182453_create_paypal_payment', 1),
(52, '2020_11_25_225536_update_user_for_paypal_subsc', 1),
(53, '2020_11_27_102829_update_restaurants_for_delivery_pickup', 1),
(54, '2020_11_27_165901_create_coupons_table', 1),
(55, '2020_12_02_192213_update_for_whatsapp_order', 1),
(56, '2020_12_02_195333_update_for_mollie_payment', 1),
(57, '2020_12_07_142304_create_banners_table', 1),
(58, '2020_12_10_155335_wp_address', 1),
(59, '2020_12_14_195627_update_for_paystack_sub', 1),
(60, '2020_12_15_130511_update_paystack_verification', 1),
(61, '2020_12_27_155822_create_restaurant_multilanguage', 1),
(62, '2020_12_27_162902_update_restaurant_with_currency', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 2),
(2, 'App\\User', 19),
(2, 'App\\User', 20),
(2, 'App\\User', 21),
(2, 'App\\User', 22),
(2, 'App\\User', 23),
(2, 'App\\User', 27),
(3, 'App\\User', 3),
(3, 'App\\User', 6),
(3, 'App\\User', 7),
(3, 'App\\User', 8),
(3, 'App\\User', 9),
(3, 'App\\User', 10),
(3, 'App\\User', 11),
(3, 'App\\User', 12),
(3, 'App\\User', 13),
(3, 'App\\User', 14),
(3, 'App\\User', 15),
(3, 'App\\User', 16),
(3, 'App\\User', 17),
(3, 'App\\User', 18),
(3, 'App\\User', 25),
(3, 'App\\User', 26),
(4, 'App\\User', 4),
(4, 'App\\User', 5),
(4, 'App\\User', 24);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('0c6720bf-30b1-4e03-899b-a96bc498fe09', 'App\\Notifications\\OrderNotification', 'App\\User', 21, '{\"title\":\"There is new order\",\"body\":\"You have just received an order\"}', NULL, '2021-02-24 11:13:57', '2021-02-24 11:13:57'),
('10ce757f-f26f-4650-9741-4b85210cfac3', 'App\\Notifications\\OrderNotification', 'App\\User', 25, '{\"title\":\"Your order is ready.\",\"body\":\"Your order is ready for delivery. Expect us soon.\"}', NULL, '2021-02-24 11:28:23', '2021-02-24 11:28:23'),
('41b7acd8-003b-4491-a764-f8fa33cf98d2', 'App\\Notifications\\OrderNotification', 'App\\User', 24, '{\"title\":\"Your order has been accepted\",\"body\":\"order#602 We are now working on it!\"}', NULL, '2021-02-24 11:28:42', '2021-02-24 11:28:42'),
('54cda6de-c041-447f-9f08-23c58d2032da', 'App\\Notifications\\OrderNotification', 'App\\User', 24, '{\"title\":\"Your order has been accepted\",\"body\":\"order#601 We are now working on it!\"}', NULL, '2021-02-24 11:00:08', '2021-02-24 11:00:08'),
('744af6ed-1215-4d99-8312-cff9c3213f54', 'App\\Notifications\\OrderNotification', 'App\\User', 21, '{\"title\":\"There is new order\",\"body\":\"You have just received an order\"}', NULL, '2021-02-24 10:55:52', '2021-02-24 10:55:52'),
('9f18a1f1-eded-4d81-9b94-1b97593cbd17', 'App\\Notifications\\OrderNotification', 'App\\User', 21, '{\"title\":\"There is new order\",\"body\":\"You have just received an order\"}', NULL, '2021-02-24 11:26:09', '2021-02-24 11:26:09'),
('e0bf87bd-2f67-4d88-8163-066673dabc15', 'App\\Notifications\\OrderNotification', 'App\\User', 24, '{\"title\":\"Your order is ready.\",\"body\":\"Your order is ready for delivery. Expect us soon.\"}', NULL, '2021-02-24 11:00:50', '2021-02-24 11:00:50'),
('f4c92aa2-3d68-4f41-b0ec-7ffc27c5a997', 'App\\Notifications\\OrderNotification', 'App\\User', 25, '{\"title\":\"Your order has been accepted\",\"body\":\"order#603 We are now working on it!\"}', NULL, '2021-02-24 11:27:55', '2021-02-24 11:27:55');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `restorant_id` bigint(20) UNSIGNED NOT NULL,
  `driver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `delivery_price` double(8,2) NOT NULL,
  `order_price` double(8,2) NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `srtipe_payment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fee` double(8,2) NOT NULL DEFAULT 0.00,
  `fee_value` decimal(5,4) NOT NULL DEFAULT 0.0000,
  `static_fee` double(8,2) NOT NULL DEFAULT 0.00,
  `delivery_method` int(11) NOT NULL DEFAULT 1 COMMENT '1- Delivery, 2- Pickup',
  `delivery_pickup_interval` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vatvalue` double(8,2) DEFAULT 0.00,
  `payment_processor_fee` double(8,2) NOT NULL DEFAULT 0.00,
  `time_to_prepare` int(11) DEFAULT NULL,
  `table_id` bigint(20) UNSIGNED DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `address_id`, `client_id`, `restorant_id`, `driver_id`, `delivery_price`, `order_price`, `payment_method`, `payment_status`, `comment`, `lat`, `lng`, `srtipe_payment_id`, `fee`, `fee_value`, `static_fee`, `delivery_method`, `delivery_pickup_interval`, `vatvalue`, `payment_processor_fee`, `time_to_prepare`, `table_id`, `phone`, `whatsapp_address`) VALUES
(601, '2021-02-24 10:55:49', '2021-02-24 11:01:35', 11, 24, 19, NULL, 0.00, 5000.00, 'cod', 'paid', ' ', NULL, NULL, NULL, 0.00, '0.0000', 0.00, 1, '1020_1050', 0.00, 0.00, 15, NULL, NULL, NULL),
(602, '2021-02-24 11:13:53', '2021-02-24 11:13:53', 11, 24, 19, NULL, 0.00, 2500.00, 'cod', 'unpaid', ' ', NULL, NULL, NULL, 0.00, '0.0000', 0.00, 1, '1020_1050', 0.00, 0.00, NULL, NULL, NULL, NULL),
(603, '2021-02-24 11:26:06', '2021-02-24 11:27:51', 12, 25, 19, NULL, 0.00, 2500.00, 'cod', 'unpaid', ' ', NULL, NULL, NULL, 0.00, '0.0000', 0.00, 1, '1050_1080', 0.00, 0.00, 5, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_has_items`
--

CREATE TABLE `order_has_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 1,
  `extras` varchar(800) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `vat` double(8,2) DEFAULT 0.00,
  `vatvalue` double(8,2) DEFAULT 0.00,
  `variant_price` double(8,2) DEFAULT NULL,
  `variant_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_has_items`
--

INSERT INTO `order_has_items` (`id`, `created_at`, `updated_at`, `order_id`, `item_id`, `qty`, `extras`, `vat`, `vatvalue`, `variant_price`, `variant_name`) VALUES
(59, NULL, NULL, 601, 342, 2, '[]', NULL, 0.00, 2500.00, ''),
(60, NULL, NULL, 602, 342, 1, '[]', NULL, 0.00, 2500.00, ''),
(61, NULL, NULL, 603, 342, 1, '[]', NULL, 0.00, 2500.00, '');

-- --------------------------------------------------------

--
-- Table structure for table `order_has_status`
--

CREATE TABLE `order_has_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_has_status`
--

INSERT INTO `order_has_status` (`id`, `created_at`, `updated_at`, `order_id`, `status_id`, `user_id`, `comment`) VALUES
(767, '2021-02-24 10:55:49', NULL, 601, 1, 24, ''),
(768, '2021-02-24 10:55:49', NULL, 601, 2, 1, 'Automatically approved by admin'),
(769, '2021-02-24 11:00:08', NULL, 601, 3, 21, ''),
(770, '2021-02-24 11:00:50', NULL, 601, 5, 21, ''),
(771, '2021-02-24 11:01:35', NULL, 601, 7, 21, ''),
(772, '2021-02-24 11:13:53', NULL, 602, 1, 24, ''),
(773, '2021-02-24 11:13:53', NULL, 602, 2, 1, 'Automatically approved by admin'),
(774, '2021-02-24 11:26:06', NULL, 603, 1, 25, ''),
(775, '2021-02-24 11:26:06', NULL, 603, 2, 1, 'Automatically approved by admin'),
(776, '2021-02-24 11:27:55', NULL, 603, 3, 21, ''),
(777, '2021-02-24 11:28:23', NULL, 603, 5, 21, ''),
(778, '2021-02-24 11:28:42', NULL, 602, 3, 21, '');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `showAsLink` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `created_at`, `updated_at`, `title`, `content`, `showAsLink`) VALUES
(1, '2021-02-05 00:03:21', '2021-02-05 00:03:21', 'Terms and conditions', '<p><strong>foodtiger website Terms of Use</strong><br />\n                            <br />\n                            These Terms of Use govern your use of the foodtiger website and, unless otherwise stated, to your use of any other website or mobile application owned or operated by foodtiger Bulgaria or operated on behalf of foodtiger (collectively the &ldquo;Websites&rdquo;). Please read these Terms of Use carefully before using the Websites.<br />\n                            <br />\n                            <strong>Agreement to Terms</strong><br />\n                            <br />\n                            By using the Websites, you agree to these Terms of Use and the foodtiger General Online Privacy Policy (for visitors who are eighteen years of age or over) or the foodtiger Children&rsquo;s Online Privacy Policy (for visitors who are under eighteen (18) years of age) which are incorporated herein by reference. Each time you use the Websites, you reaffirm your acceptance of the then-current Terms of Use. If you do not wish to be bound by these Terms of Use, your only remedy is to discontinue using the Websites.<br />\n                            <br />\n                            foodtiger may change these Terms of Use at any time and in its sole discretion. The modified Terms of Use will be effective immediately upon posting and you agree to the new posted Terms of Use by continuing your use of the Websites. You are responsible for staying informed of any changes. If you do not agree with the modified Terms of Use, your only remedy is to discontinue using the Websites.<br />\n                            <br />\n                            <strong>Accounts</strong><br />\n                            <br />\n                            You may be required to create an account and specify a password to use certain features on the Websites. You agree to provide, maintain and update true, accurate, current and complete information about yourself as prompted by the registration processes. You may not impersonate any person or entity or misrepresent your identity or affiliation with any person or entity, including using another person&rsquo;s username, password, or other account information.<br />\n                            <br />\n                            You are entirely responsible for maintaining the confidentiality of your password and your account. And you are entirely responsible for all activity made by you or anyone that uses your account. You agree to safeguard your password from access by others. If you believe that your account has been compromised, you must immediately contact us by mail at:&nbsp;support@foodtiger.com or send a message to our live-chat service. You agree to indemnify and hold harmless foodtiger for losses incurred by foodtiger or another party due to someone else using your account as a result of your failure to use reasonable care to safeguard your password.<br />\n                            <br />\n                            <strong>Cancellation</strong><br />\n                            <br />\n                            You have the right to cancel your order up to five minutes after your order is placed on the foodtiger platform. After this point, the restaurant would have started to prepare the food and therefore no refunds would be possible. For the avoidance of doubt, timing will be assessed based on the point you place your call with our call-center, or send a message to our live-chat service. In the event of a cash-on-delivery order, your order will be delivered as instructed and cash must be collected by the rider. In the event that a customer refuses to pay the cash to our rider, foodtiger reserves the right to limit his/her future cash payments.<br />\n                            <br />\n                            <strong>Content Posted by Other Users</strong><br />\n                            <br />\n                            foodtiger is not responsible for, and does not endorse, Content in any posting made by other users on the Websites. Under no circumstances shall foodtiger be held liable, directly or indirectly, for any loss or damage caused or alleged to have been caused to you in connection with any Content posted by a third party on the Websites. If you become aware of misuse of the Websites by any person, please contact foodtiger by mail at:&nbsp;support@foodtiger.com or send a message to our live-chat service.<br />\n                            <br />\n                            If you feel threatened or believe someone else is in danger, you should contact the local law enforcement agency immediately.<br />\n                            <br />\n                            <br />\n                            <strong>Activities Prohibited on the Websites</strong><br />\n                            <br />\n                            The following is a partial list of the kinds of conduct that are illegal or prohibited on the Websites. foodtiger reserves the right to investigate and take appropriate legal action against anyone who, in foodtiger sole discretion, engages in any of the prohibited activities. Prohibited activities include &mdash; but are not limited to &mdash; the following:<br />\n                            <br />\n                            - Using the Websites for any purpose in violation of local, state, or federal laws or regulations;<br />\n                            - Posting Content that infringes the intellectual property rights, privacy rights, publicity rights, trade secret rights, or any other rights of any party;<br />\n                            - Posting Content that is unlawful, obscene, defamatory, threatening, harassing, abusive, slanderous, hateful, or embarrassing to any other person or entity as determined by foodtiger in its sole discretion or pursuant to local community standards;<br />\n                            - Posting Content that constitutes cyber-bullying, as determined by foodtiger in its sole discretion;<br />\n                            - Posting Content that depicts any dangerous, life-threatening, or otherwise risky behavior;<br />\n                            - Posting telephone numbers, street addresses, or last names of any person;<br />\n                            - Posting URLs to external websites or any form of HTML or programming code;<br />\n                            - Posting anything that may be &ldquo;spam,&rdquo; as determined by foodtiger in its sole discretion;<br />\n                            - Impersonating another person when posting Content;<br />\n                            - Harvesting or otherwise collecting information about others, including e-mail addresses, without their consent;<br />\n                            - Allowing any other person or entity to use your identification for posting or viewing comments;<br />\n                            - Harassing, threatening, stalking, or abusing any person;<br />\n                            - Engaging in any other conduct that restricts or inhibits any other person from using or enjoying the Websites, or which, in the sole discretion of foodtiger, exposes foodtiger or any of its customers, suppliers, or any other parties to any liability or detriment of any type; or<br />\n                            - Encouraging other people to engage in any prohibited activities as described herein.<br />\n                            foodtiger reserves the right -- but is not obligated -- to do any or all of the following:<br />\n                            <br />\n                            - Investigate an allegation that any Content posted on the Websites does not conform to these Terms of Use and determine in its sole discretion to remove or request the removal of the Content;<br />\n                            - Remove Content which is abusive, illegal, or disruptive, or that otherwise fails to conform with these Terms of Use;<br />\n                            - Terminate a user&rsquo;s access to the Websites upon any breach of these Terms of Use;<br />\n                            - Monitor, edit, or disclose any Content on the Websites; and<br />\n                            - Edit or delete any Content posted on the Websites, regardless of whether such Content violates these standards.<br />\n                            - foodtiger Trademarks and Copyrights<br />\n                            <br />\n                            All trademarks, logos, and service marks displayed on the Website are registered and unregistered Trademarks of foodtiger and/or third parties who have authorized their use (collectively the &ldquo;Trademarks&rdquo;)<br />\n                            <br />\n                            You may not use, copy, reproduce, republish, upload, post, transmit, distribute, or modify these Trademarks in any way. The use of foodtiger&#39;s trademarks on any other website is strictly prohibited. All of the materials contained on the Websites are copyrighted except where explicitly noted otherwise. foodtiger will aggressively enforce its intellectual property rights to the fullest extent of the law, including the seeking of criminal prosecution. foodtiger neither warrants nor represents that your use of materials displayed on the Websites will not infringe rights of third parties not owned by or affiliated with foodtiger. Use of any materials on the Websites is at your own risk.<br />\n                            <br />\n                            <strong>Hyperlinks</strong><br />\n                            <br />\n                            This Websites may contain hyperlinks to third-party websites. foodtiger does not control or endorse these third-party websites or any goods or services sold on those websites. Some of these websites may contain materials that are objectionable, unlawful, or inaccurate. You acknowledge and agree that foodtiger is not responsible or liable for any Content or other materials on these third party websites.<br />\n                            <br />\n                            <strong>Governing Law and Severability</strong><br />\n                            <br />\n                            These Terms of Use shall be governed by and construed in accordance with the laws of Bulgaria, without regard to its conflict of laws rules. You expressly agree that the exclusive jurisdiction for any claim or dispute under the Terms of Use and or your use of the Websites resides in the courts of Bulgaria, and you further expressly agree to submit to the personal jurisdiction of such courts for the purpose of litigating any such claim or action.<br />\n                            <br />\n                            If any provision of these Terms of Use is found to be invalid by any court having competent jurisdiction, the invalidity of such provision shall not affect the validity of the remaining provisions of these Terms of Use, which shall remain in full force and effect. No waiver of any provision in these Terms of Use shall be deemed a further or continuing waiver of such provision or any other provision.<br />\n                            <br />\n                            <strong>Payment</strong><br />\n                            <br />\n                            Payments are processed by Emerging Markets Online Food Delivery S.&agrave; r.l., a limited liability company (soci&eacute;t&eacute; &agrave; responsabilit&eacute; limit&eacute;e) incorporated and existing under the laws of the Grand Duchy of Luxembourg, which is the ultimate holding of the local company in Bulgaria. Cross-border subrcharges may be applicable.<br />\n                            The end customer can choose between different payment methods provided on the platforms, which are currently the following: [credit card and immediate transfer.] The provider reserves the right to provide other payment methods or to no longer offer certain payment methods. The end customer bindingly chooses the payment method when placing the respective order. Provided that the end customer chooses an online payment method, the payment might be processed by an external payment provider cooperating with the provider. Card data will in this case be stored for future orders by the payment provider, on the condition that the end customer chooses the respective storage of such and hereby gives consent to it. Due to the COVID-19 emergency in the Republic of Bulgaria, all orders paid online will be delivered without physical contact.<br />\n                            <br />\n                            <strong>Warranties</strong><br />\n                            <br />\n                            The Websites and the Content are provided on an &ldquo;as is&rdquo; basis. To the fullest extent permitted by law, foodtiger, its parent, subsidiaries, and affiliates (the foodtiger entities), and each of their agents, representatives and service providers, disclaim all warranties, either expressed or implied, statutory or otherwise, including but not limited to the implied warranties of merchantibility, non-infringement of third parties rights, and fitness for particular purpose. Applicable law may not allow the exclusion of implied warranties, so the above exclusion may not apply to you. The foodtiger Entities, their agents, representatives and service providers cannot and do not guarantee or warrant that: (a) the Websites will be reliable, accurate, complete, or updated on a timely basis; (b) the Websites will be free of human and machine errors, omissions, delays, interruptions or losses, including loss of data; (c) any files available for downloading from the Websites will be free of infection by viruses, worms, Trojan horses, or other codes that manifest contaminating or destructive properties; (d) any Content you post on the Websites will remain on the Websites; or (e) the functions or services performed on the Websites will be uninterrupted or error-free or that defects in the Websites will be corrected.<br />\n                            <br />\n                            <strong>Limitation of Liability</strong><br />\n                            <br />\n                            The foodtiger entities, their agents, representatives, and service providers, entire liability and your exclusive remedy with respect to your use of the websites is to discontinue your use of the websites. The foodtiger entities, their agents, representatives, and service providers shall not be liable for any indirect, special, incidental, consequential, or exemplary damages arising from your use of the websites or for any other claim related in any way to your use of the websites. These exclusions for indirect, special, consequential, and exemplary damages include, without limitation, damages for lost profits, lost data, loss of goodwill, work stoppage, work stoppage, computer failure, or malfunction, or any other commercial damages or losses, even if the foodtiger entities, their agents, representatives, and service providers have been advised of the possibility thereof and regardless of the legal or equitable theory upon which the claim is based. Because some states or jurisdictions do not allow the exclusion or the limitation of liability for consequential or incidental damages, in such states or jurisdictions, the foodtiger entities, their agents, representatives and service providers&#39; liability shall be limited to the extent permitted by law.<br />\n                            <br />\n                            <strong>Termination</strong><br />\n                            <br />\n                            foodtiger has the right to terminate your account and access to the Websites for any reason, including, without limitation, if foodtiger, in its sole discretion, considers your use to be unacceptable, or in the event of any breach by you of the Terms of Use. foodtiger may, but shall be under no obligation to, provide you a warning prior to termination of your use of the Websites.<br />\n                            <br />\n                            <strong>Vouchers</strong><br />\n                            <br />\n                            Unless otherwise stated,<br />\n                            <br />\n                            - Vouchers are only applicable to food orders, excluding delivery fees and containers<br />\n                            - Valid only for online payment<br />\n                            - foodtiger reserves the right to cancel orders and accounts if fraud activities are detected<br />\n                            - foodtiger reserves the right to stop this voucher to be used on certain restaurants without prior notice<br />\n                            - Individual restaurants terms &amp; conditions apply<br />\n                            <br />\n                            <strong>Contact Us</strong><br />\n                            <br />\n                            Questions? Comments? Please send an email to us at&nbsp;contact@foodtiger.com<br />\n                            <br />\n                            &copy; 2020 foodtiger. All rights reserved.</p>', 1),
(2, '2021-02-05 00:03:21', '2021-02-05 00:03:21', 'How it works', '<p>foodtiger is simple and easy way to order food online. Enjoy the variety of choices and cuisines which could be delivered to your home or office.</p>\n\n                        <p>&nbsp;</p>\n\n                        <p><strong>Here is how foodtiger works:</strong><br />\n                        &nbsp;</p>\n\n                        <p>&nbsp;</p>\n\n                        <p><strong>Find a restaurant:</strong></p>\n\n                        <p>Enter you address or choose from the map on the front page to set your location. Take a review on the restaurants which deliver to your address. Choose a restaurant and dive in its tasty menu.</p>\n\n                        <p>&nbsp;</p>\n\n                        <p><strong>Choose a dish:</strong></p>\n\n                        <p>Choose from the displayed dishes. If there is an option to add products or sauce, for pizza for example, you will be asked for your choice right after you click on the dish. Your order will be dispayed on the right side of the page.</p>\n\n                        <p>&nbsp;</p>\n\n                        <p><strong>Finish your order and choose type of payment:</strong></p>\n\n                        <p>When you complete the order with delicious food, click &quot;Buy&quot;. Now you only have to write your address and choose type of payment as you follow the instructions on the page.</p>\n\n                        <p>&nbsp;</p>\n\n                        <p><strong>Delivery:</strong></p>\n\n                        <p>You will receive SMS as confirmation for your order and information about the delivery time and.....</p>\n\n                        <p>That&#39;s all!</p>\n\n                        <p>&nbsp;</p>', 1);

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
-- Table structure for table `paths`
--

CREATE TABLE `paths` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `amount` double(8,2) NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'manage restorants', 'web', '2021-02-05 00:03:21', '2021-02-05 00:03:21'),
(2, 'manage drivers', 'web', '2021-02-05 00:03:21', '2021-02-05 00:03:21'),
(3, 'manage orders', 'web', '2021-02-05 00:03:21', '2021-02-05 00:03:21'),
(4, 'edit settings', 'web', '2021-02-05 00:03:21', '2021-02-05 00:03:21'),
(5, 'view orders', 'web', '2021-02-05 00:03:21', '2021-02-05 00:03:21'),
(6, 'edit restorant', 'web', '2021-02-05 00:03:21', '2021-02-05 00:03:21'),
(7, 'edit orders', 'web', '2021-02-05 00:03:21', '2021-02-05 00:03:21'),
(8, 'access backedn', 'web', '2021-02-05 00:03:21', '2021-02-05 00:03:21');

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

CREATE TABLE `plan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `limit_items` int(11) NOT NULL DEFAULT 0 COMMENT '0 is unlimited',
  `limit_orders` int(11) NOT NULL DEFAULT 0 COMMENT '0 is unlimited',
  `price` double(8,2) NOT NULL,
  `period` int(11) NOT NULL DEFAULT 1 COMMENT '1 - monthly, 2-anually',
  `paddle_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `description` varchar(555) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `features` varchar(555) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `limit_views` int(11) NOT NULL DEFAULT 0 COMMENT '0 is unlimited',
  `enable_ordering` int(11) NOT NULL DEFAULT 1,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paypal_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mollie_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `rateable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rateable_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restoareas`
--

CREATE TABLE `restoareas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restorants`
--

CREATE TABLE `restorants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subdomain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cover` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lng` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `minimum` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `description` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fee` double(8,2) NOT NULL DEFAULT 0.00,
  `static_fee` double(8,2) NOT NULL DEFAULT 0.00,
  `radius` varchar(800) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `city_id` int(11) DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `can_pickup` int(11) NOT NULL DEFAULT 1,
  `can_deliver` int(11) NOT NULL DEFAULT 1,
  `self_deliver` int(11) NOT NULL DEFAULT 0,
  `free_deliver` int(11) NOT NULL DEFAULT 0,
  `whatsapp_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `do_covertion` int(11) NOT NULL DEFAULT 1,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restorants`
--

INSERT INTO `restorants` (`id`, `created_at`, `updated_at`, `name`, `subdomain`, `logo`, `cover`, `active`, `user_id`, `lat`, `lng`, `address`, `phone`, `minimum`, `description`, `fee`, `static_fee`, `radius`, `is_featured`, `city_id`, `views`, `can_pickup`, `can_deliver`, `self_deliver`, `free_deliver`, `whatsapp_phone`, `fb_username`, `do_covertion`, `currency`) VALUES
(17, '2021-02-22 05:10:04', '2021-02-24 09:40:38', 'rukesh', 'rukesh', '', '', 1, 19, '0', '0', '', '9843767715', '0', '', 0.00, 0.00, '{}', 0, NULL, 0, 1, 1, 0, 0, NULL, NULL, 1, ''),
(18, '2021-02-24 04:58:29', '2021-02-24 04:58:29', 'aaa', 'aaa', '', '', 1, 20, '0', '0', '', '9843767715', '0', '', 0.00, 0.00, '{}', 0, NULL, 0, 1, 1, 0, 0, NULL, NULL, 1, ''),
(19, '2021-02-24 05:03:47', '2021-03-11 03:07:41', 'rukesh aalubanjar', 'rukeshaalubanjar', '', '812db380-26bf-4496-a22b-327580a4a04f', 1, 21, '27.685993418311277', '85.41363594183348', 'suryabinayak', '9843767715', '0', 'xc xdc', 0.00, 0.00, '{}', 0, 18, 14, 1, 1, 0, 0, NULL, NULL, 0, ''),
(20, '2021-02-24 05:10:58', '2021-03-31 00:09:48', 'newnsc', 'newnsc', '', '', 0, 22, '0', '0', '', '9843767715', '0', '', 0.00, 0.00, '{}', 0, NULL, 0, 1, 1, 0, 0, NULL, NULL, 1, ''),
(21, '2021-02-24 09:42:46', '2021-02-24 10:15:58', 'Tyape', 'tyape', '', '', 1, 23, '27.680371', '85.409079', '', '9864528196', '0', '', 0.00, 0.00, '{}', 0, NULL, 0, 1, 1, 0, 0, NULL, NULL, 1, ''),
(22, '2021-03-31 00:14:48', '2021-03-31 00:22:01', 'Daraz', 'daraz', '', '', 1, 27, '27.680885666666665', '85.40493266666667', 'Bhaktapur', '123456789', '0', 'We are the Future', 0.00, 0.00, '{}', 0, NULL, 0, 1, 1, 0, 0, NULL, NULL, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2021-02-05 00:03:21', '2021-02-05 00:03:21'),
(2, 'owner', 'web', '2021-02-05 00:03:21', '2021-02-05 00:03:21'),
(3, 'driver', 'web', '2021-02-05 00:03:21', '2021-02-05 00:03:21'),
(4, 'client', 'web', '2021-02-05 00:03:21', '2021-02-05 00:03:21');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 2),
(6, 2),
(7, 3),
(8, 1),
(8, 2),
(8, 3);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `site_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `search` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restorant_details_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `restorant_details_cover_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_subtitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USD',
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `playstore` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `appstore` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `maps_api_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `delivery` double(8,2) NOT NULL DEFAULT 0.00,
  `typeform` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mobile_info_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mobile_info_subtitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_options` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '{}',
  `site_logo_dark` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `created_at`, `updated_at`, `site_name`, `site_logo`, `search`, `restorant_details_image`, `restorant_details_cover_image`, `description`, `header_title`, `header_subtitle`, `currency`, `facebook`, `instagram`, `playstore`, `appstore`, `maps_api_key`, `delivery`, `typeform`, `mobile_info_title`, `mobile_info_subtitle`, `order_options`, `site_logo_dark`) VALUES
(1, '2021-02-05 00:03:21', '2021-02-24 03:59:21', 'toki', '/default/logo.png', 'ded22954-f35c-45b3-b4aa-ae66382d4a43', '/default/restaurant_large.jpg', '/default/cover.jpg', 'Fast and  secured Delivery', 'Delivery from<br /><b>Nepal</b> Best Retellers', 'The product you love, delivered with care', 'USD', '', '', '', '', 'AIzaSyCZhq0g1x1ttXPa1QB3ylcDQPTAzp_KUgA', 0.00, '', 'Download the product you love', 'It`s all at your fingertips - the products you love. Find the right product to suit your mood, and make the first choice last. Go ahead, download us.', '{}', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sms_verifications`
--

CREATE TABLE `sms_verifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contact_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `name`, `alias`) VALUES
(1, 'Just created', 'just_created'),
(2, 'Accepted by admin', 'accepted_by_admin'),
(3, 'Accepted by restaurant', 'accepted_by_restaurant'),
(4, 'Assigned to driver', 'assigned_to_driver'),
(5, 'Prepared', 'prepared'),
(6, 'Picked up', 'picked_up'),
(7, 'Delivered', 'delivered'),
(8, 'Rejected by admin', 'rejected_by_admin'),
(9, 'Rejected by restaurant', 'rejected_by_restaurant'),
(10, 'Updated', 'updated'),
(11, 'Closed', 'closed'),
(12, 'Rejected by driver', 'rejected_by_driver'),
(13, 'Accepted by driver', 'accepted_by_driver');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_plan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL DEFAULT 4,
  `restoarea_id` bigint(20) UNSIGNED DEFAULT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `google_id` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_id` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `verification_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_verified_at` timestamp NULL DEFAULT NULL,
  `plan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `plan_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cancel_url` varchar(555) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `update_url` varchar(555) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checkout_id` varchar(555) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `subscription_plan_id` varchar(555) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `stripe_account` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `birth_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `working` int(11) NOT NULL DEFAULT 1,
  `onorder` int(11) DEFAULT NULL,
  `numorders` int(11) NOT NULL DEFAULT 0,
  `rejectedorders` int(11) NOT NULL,
  `paypal_subscribtion_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mollie_customer_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mollie_mandate_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_percentage` decimal(6,4) NOT NULL DEFAULT 0.0000,
  `extra_billing_information` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mollie_subscribtion_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_subscribtion_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_trans_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `google_id`, `fb_id`, `name`, `email`, `email_verified_at`, `password`, `api_token`, `phone`, `remember_token`, `created_at`, `updated_at`, `active`, `stripe_id`, `card_brand`, `card_last_four`, `trial_ends_at`, `verification_code`, `phone_verified_at`, `plan_id`, `plan_status`, `cancel_url`, `update_url`, `checkout_id`, `subscription_plan_id`, `stripe_account`, `birth_date`, `lat`, `lng`, `working`, `onorder`, `numorders`, `rejectedorders`, `paypal_subscribtion_id`, `mollie_customer_id`, `mollie_mandate_id`, `tax_percentage`, `extra_billing_information`, `mollie_subscribtion_id`, `paystack_subscribtion_id`, `paystack_trans_id`) VALUES
(1, NULL, NULL, 'Admin Admin', 'admin@admin.com', '2021-02-05 00:03:21', '$2y$10$aJqX/PgvWQalc6M0Jm09B.VBQYpbCHfrckJx/W4X..4wCl9Yknq4C', 'KBoIqSB84Ng5y6rM6kOWPHYrvlLOlIYNNOm0lQlTdvP7Avw7vIOrsSFaYzEJkLXVBIXW6Auh1CiIaZqm', '', 'iAZnr7FKVaGPbZcYk6hhtgni8ChpkPptOnxpFRvt3JbzEUwI650eShelcStF', '2021-02-05 00:03:21', '2021-02-05 00:03:21', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(2, NULL, NULL, 'Demo Owner', 'owner@example.com', '2021-02-05 00:03:22', '$2y$10$OK.8sCCir8g9r/EyMI.sgOJ6k2njpEEVZpEL28pUSgywkk68qFHKe', 'lvHduEP3tMfLooIrm78aamSZ69IboJ6ldocg79WHDyEPbJUuQn2bBLBwqNzpWPgCthdU3Bm3oDZPkFGK', '', NULL, '2021-02-05 00:03:22', '2021-02-05 00:03:22', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(3, NULL, NULL, 'Demo Driver', 'driver@example.com', '2021-02-05 00:03:39', '$2y$10$ZlMQwxcSHHIi1P4cwOY.1ujKoo46x4hbrtLv/i9DyCC.2fjoPFkM2', 'CmZ82U61ecTWNA35PXtbBHvuo8kJNQuJkdAAbZvi1S4OHbsKfmpRYu79gg7lCKZ1MdeUskWKXDO7szwn', '', NULL, '2021-02-05 00:03:39', '2021-02-24 11:17:49', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(4, NULL, NULL, 'Demo Client 1', 'client@example.com', '2021-02-05 00:03:39', '$2y$10$usnKb4saz7/NtDl6QsYIG.2HXt88nXiq1QRy.8mLEuAMy7CGZnhrm', 'UsCrUPNAsqmo1dJPNemxmupu0cAVDzE63WDgweKy7ewqaKCpGTIkRPAJlX14SNbWCuQG2MhfBzIqWU9B', '', NULL, '2021-02-05 00:03:39', '2021-02-05 00:03:39', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(5, NULL, NULL, 'Demo Client 2', 'client2@example.com', '2021-02-05 00:03:39', '$2y$10$D4WRms13JRBPV.WiAFQieOBTw2cWv0UNwjHpA9AxvWfrDQg56XXI.', 'Oc6Ubxo1cj5GrFxZo18KxkvNykHIEAxBrzSYv1mI9LRgMxNlkLqJf9tcWhkKv6xgHWCc4bZAjq75JxGn', '', NULL, '2021-02-05 00:03:39', '2021-02-05 00:03:39', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(6, NULL, NULL, 'Demo Driver 2', 'driver2@example.com', '2021-02-05 00:03:40', '$2y$10$53ZdARftYLpMpvtGZfp1te5Yn7Y/Ve6fYqzcRAGTujXbgAGaFcjri', 'vswxNk1WFIuHqxjpyH3d0WyimTy722lFppZWeCcajpzDFrzmXQeU85b4FHF8CDM8MvjwbxWUhuGLmSDm', '', NULL, '2021-02-05 00:03:40', '2021-02-24 11:17:54', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(10, NULL, NULL, 'rukesh', 'rukesh@rukesh.com', NULL, '$2y$10$aJqX/PgvWQalc6M0Jm09B.VBQYpbCHfrckJx/W4X..4wCl9Yknq4C', 'E3eVflUHu22j1Utps66JUxscWN6g8sU6ns6ocwVOVXAZEIXwJXzLKAIXJowmlMTdxssyRo77SRAK2YjY', NULL, NULL, '2021-02-22 04:27:59', '2021-02-24 11:17:59', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(11, NULL, NULL, 'rukesh', 'rukesh@rukesh1.com', NULL, '$2y$10$2zPSg6nxvHmfB6TvYqWS1.FQ1Wq23LJ226/Akplx/mZ/H/7Rbj3/u', 'K6gLGexx9zKtPXSbs0rtASJp8WzHWV1gPk21Hmpx5iq8EjxQfP4Fy4qYem5pcn4dUgTk5liGZYszRoEo', NULL, NULL, '2021-02-22 04:31:35', '2021-02-24 11:18:03', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(12, NULL, NULL, 'aaa', 'aa@aa.com', NULL, '$2y$10$QM7iw3Xcpmc6rvJi5OUiwOca.KE93j2HSOMveNKnxrvGjOLInn3MK', '7iIbYsVaZYURRP8aIFSGHluqC7SF7LlNCt7nm5mxbL5ME269y0xibvaIrfq4iHOjns6mRNpQwwwN8RVG', NULL, NULL, '2021-02-22 04:36:07', '2021-02-24 11:18:07', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(13, NULL, NULL, 'rfrfe', 'qqq@q.com', NULL, '$2y$10$TePfrlzuZlMv0PIGNYD38umN7fUASXn0/PWd/w0CuTRsWbcTm00uy', 'EM8BmscIfOPR7Hc5dvkTPlbG25NXyDAD4qbqk4ArIVJ5PSS7iltzPrKBH71He60dgDMWCh3X1VzJ8ZLz', NULL, NULL, '2021-02-22 04:36:45', '2021-02-22 04:36:45', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(14, NULL, NULL, 'apple', 'apple@a.com', NULL, '$2y$10$zdV6Q95cK0hqucS4tEU8A.9QqMGIw5y1t2hLwMZRsNBRQq0oEgpsa', 'uzF0TsZ3UDiLwbyPn76eobWVGxrIYn6FZMBsyCsfaQlR6JEIRqlHj8suItCnGqG44WwmEot4IICKKcYO', NULL, NULL, '2021-02-22 04:37:45', '2021-02-22 04:37:45', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(15, NULL, NULL, 'apple', 'applle@a.com', NULL, '$2y$10$8qwu9eR4LA1uuUxvmPXOWeWkp7lyOykW/Uc3PV1UD6uFKJcG909CW', 'L5ekZSTMgWKEdB97WwMF8Es3kNjzIVU5b4Oz1cDqYUCyQcWiCYQOEla8IeCE3wZVAWWqEAemvvIuxadD', NULL, NULL, '2021-02-22 04:39:31', '2021-02-22 04:39:31', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(16, NULL, NULL, 'pppp', 'ppp@pp.com', NULL, '$2y$10$n4GZZyzYrwae9PDC2dB7ee8kcgfr8rnqxJ6B8NLQofo8wQwmFPrPS', 'keLjIhgRwcW11yBAJssPdr8izf1WefWOSfV3dIE1OelUZ9DpLTmZb2MUaXy0m9s5kK86zabZh1jtH47m', NULL, NULL, '2021-02-22 04:40:07', '2021-02-22 04:40:07', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(17, NULL, NULL, 'sss', 'sss@ss.com', NULL, '$2y$10$S97rKGN8.BIMn0c13/ixq.wM4F0KpAMBCRvVXyyxzbOVgcztqTLYq', 'ofWhggywxIu36F6pW7J4UxZXDJpHlZFxu5CVDQb71ylj9UCXJziTGrbQkOplDR6kfBUi7C9uSK3Wqg5d', NULL, NULL, '2021-02-22 04:41:45', '2021-02-22 04:41:45', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(18, NULL, NULL, 'apple', 'apple@ab.com', NULL, '$2y$10$5Hefq9LPJjqlDTm6CPDo7OZ1GlGteKE6VyGTirv5SHG3yiYH0nIwe', 'WVcQ1OmOn2KC0mtaMLKkWdZynW4fjpW66ZG0Vjvj5ss9ApC0trxvKYm18p0qvpJ92tPkkdWUg4JMK4KA', NULL, NULL, '2021-02-22 05:09:20', '2021-02-22 05:09:20', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(19, NULL, NULL, 'rukesh aalubanjar7', 'aalubanjarrukesh7@gmail.com', NULL, '$2y$10$8bwRXo3kkWELKyPc9Gp5kuZ30h/8Vm7wMvGIpJZi1UMmIa1Qi4/DW', 'GGmZW0UAZCEKGYxTIlnoBEys7A24DtD3MwnKJpEc0giWpA53TJkfKUUigUb4vwufjs6LSBJ60QNx7bLc', '9843767715', NULL, '2021-02-22 05:10:04', '2021-02-24 09:40:38', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(20, NULL, NULL, 'aaa', 'aa@dfaa.com', NULL, '$2y$10$tNomHRDx8CBOQHmwmJRade85J0MkMFw6xxybH1O4oz.zfOuP9NGoi', 'qj0sruLwEr3azyokNBcQbFeyaM5M71qZuidFYX7a0AVIDUsbrP75WMCmHkPQydCK6ufSdof1m39JOpAb', '9843767715', NULL, '2021-02-24 04:58:29', '2021-02-24 04:58:29', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(21, NULL, NULL, 'rfrfe', 'qqwq@q.com', NULL, '$2y$10$aJqX/PgvWQalc6M0Jm09B.VBQYpbCHfrckJx/W4X..4wCl9Yknq4C', 'KZRIoaeVsBm1NgJ58O2Nk7BkEJih8w3xw4f6RMygVru2rSG9eYLQkzA8uhYaRpeWiW3WfsWMtcTaTn5b', '9843767715', NULL, '2021-02-24 05:03:47', '2021-02-24 05:03:47', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(22, NULL, NULL, 'rukesh77', 'rukesh@rukesh77.com', NULL, '$2y$10$aJqX/PgvWQalc6M0Jm09B.VBQYpbCHfrckJx/W4X..4wCl9Yknq4C', 'EsQzwhG4bJoWkCRdXqNTtFFLumlz8dINtI0cPnuVOGCrNLXFd2tq4E4skQCMcKvek1d9qjIFyKQjhVEz', '9843767715', NULL, '2021-02-24 05:10:58', '2021-02-24 05:10:58', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(23, NULL, NULL, 'lucifer', 'nitish.ghimire1@gmail.com', NULL, '$2y$10$Aa7X5AUUiLmXUVv3j1xBlu909QDWGgnnbaeV6wlxMIRt0O6LCEbNS', 'JNsIO9os4JvSa8UnfhXmrUnofcZPLeCxmWdgxK0biM5ldg0UhTUsOE8z5pMVV7Opp0zwDUK9G4JgyGQq', '9864528196', NULL, '2021-02-24 09:42:46', '2021-02-24 09:42:46', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(24, NULL, NULL, 'tyape', 'luciferg0116@gmail.com', NULL, '$2y$10$S/LFiRGHDNzSybza4SfiE.memL5t62kgoKIH1AMvXo7lebSzcqCFu', 'FljiS0hLo7i8g4WpZ2RaQgSS8dmrCCjBAO0eOwEa8gBSVtkM8jBmYnZmM2mOZ8ibnZo7aggLrlBFo47m', '9860150116', NULL, '2021-02-24 10:48:54', '2021-02-24 10:48:54', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(25, NULL, NULL, 'rukesh aalubanjar', 'aalubanjarrukesh@gmail.com', NULL, '$2y$10$v9uM3fDA911bJiQUkrT4Ju5gZbf1u812VcAT93Lt6Ns0.FT7opThS', 'RERzV0mhymF8vdfJSNIfYXQpRCxR335vyUZQMDRW1BhKRfuVcaGvhWpFruQGiSuJIQpp2sj0v6Qj8epm', '9843767715', NULL, '2021-02-24 11:18:30', '2021-02-24 11:18:30', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(26, NULL, NULL, 'lucy', 'lucy@lucy.com', NULL, '$2y$10$pahs3h7yAHmeUhYRCiR3xuICIMJBjW0NbyPcM3Ipf6dptz5MNTxAW', 'sbduodNAhiJX3BMpXijimK4YU6ZK9MsnSviC7Ho6g0vJrmUNfl1KOctDi1yO8Yr5piUXnMhFYIQGvJTl', '1234567899', NULL, '2021-03-31 00:12:38', '2021-03-31 00:12:38', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(27, NULL, NULL, 'Lucy', 'lucy@gmail.com', NULL, '$2y$10$/am.D90YkcoyEDWjN3JqRuyvWKoP5uA4CKFkIWZFhisMgr0VURwV.', 'I9s3lzlckF6HbSVzRNJLW8N5Mmxzo18mLeXZ87Kd6P4XZ9DlB639snuI1aCtU11CtQj2Ym3O1RGSp72P', '123456789', NULL, '2021-03-31 00:14:48', '2021-03-31 00:14:48', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `variants`
--

CREATE TABLE `variants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL,
  `options` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `enable_qty` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `variants_has_extras`
--

CREATE TABLE `variants_has_extras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `variant_id` bigint(20) UNSIGNED NOT NULL,
  `extra_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

CREATE TABLE `visits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `table_id` bigint(20) UNSIGNED DEFAULT NULL,
  `by` int(11) NOT NULL DEFAULT 1 COMMENT '1 - Owner, 0 - Client Himself',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `address_user_id_foreign` (`user_id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `banners_vendor_id_foreign` (`vendor_id`),
  ADD KEY `banners_page_id_foreign` (`page_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_restorant_id_foreign` (`restorant_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cities_alias_unique` (`alias`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`),
  ADD KEY `coupons_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `extras`
--
ALTER TABLE `extras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `extras_item_id_foreign` (`item_id`);

--
-- Indexes for table `hours`
--
ALTER TABLE `hours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hours_restorant_id_foreign` (`restorant_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_category_id_foreign` (`category_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `localmenus`
--
ALTER TABLE `localmenus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `localmenus_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `options_item_id_foreign` (`item_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_address_id_foreign` (`address_id`),
  ADD KEY `orders_client_id_foreign` (`client_id`),
  ADD KEY `orders_restorant_id_foreign` (`restorant_id`),
  ADD KEY `orders_driver_id_foreign` (`driver_id`);

--
-- Indexes for table `order_has_items`
--
ALTER TABLE `order_has_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_has_items_order_id_foreign` (`order_id`),
  ADD KEY `order_has_items_item_id_foreign` (`item_id`);

--
-- Indexes for table `order_has_status`
--
ALTER TABLE `order_has_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_has_status_order_id_foreign` (`order_id`),
  ADD KEY `order_has_status_status_id_foreign` (`status_id`),
  ADD KEY `order_has_status_user_id_foreign` (`user_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `paths`
--
ALTER TABLE `paths`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_user_id_foreign` (`user_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_rateable_type_rateable_id_index` (`rateable_type`,`rateable_id`),
  ADD KEY `ratings_rateable_id_index` (`rateable_id`),
  ADD KEY `ratings_rateable_type_index` (`rateable_type`),
  ADD KEY `ratings_user_id_foreign` (`user_id`),
  ADD KEY `ratings_order_id_foreign` (`order_id`);

--
-- Indexes for table `restoareas`
--
ALTER TABLE `restoareas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restoareas_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `restorants`
--
ALTER TABLE `restorants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `restorants_name_unique` (`name`),
  ADD UNIQUE KEY `restorants_subdomain_unique` (`subdomain`),
  ADD KEY `restorants_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_verifications`
--
ALTER TABLE `sms_verifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sms_verifications_user_id_foreign` (`user_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `status_name_unique` (`name`),
  ADD UNIQUE KEY `status_alias_unique` (`alias`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_user_id_stripe_status_index` (`user_id`,`stripe_status`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tables_restoarea_id_foreign` (`restoarea_id`),
  ADD KEY `tables_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `translations_language_id_foreign` (`language_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`),
  ADD UNIQUE KEY `users_verification_code_unique` (`verification_code`),
  ADD KEY `users_stripe_id_index` (`stripe_id`);

--
-- Indexes for table `variants`
--
ALTER TABLE `variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variants_item_id_foreign` (`item_id`);

--
-- Indexes for table `variants_has_extras`
--
ALTER TABLE `variants_has_extras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variants_has_extras_variant_id_foreign` (`variant_id`),
  ADD KEY `variants_has_extras_extra_id_foreign` (`extra_id`);

--
-- Indexes for table `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visits_restaurant_id_foreign` (`restaurant_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `extras`
--
ALTER TABLE `extras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=497;

--
-- AUTO_INCREMENT for table `hours`
--
ALTER TABLE `hours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=344;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `localmenus`
--
ALTER TABLE `localmenus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=604;

--
-- AUTO_INCREMENT for table `order_has_items`
--
ALTER TABLE `order_has_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `order_has_status`
--
ALTER TABLE `order_has_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=779;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `paths`
--
ALTER TABLE `paths`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `plan`
--
ALTER TABLE `plan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `restoareas`
--
ALTER TABLE `restoareas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `restorants`
--
ALTER TABLE `restorants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sms_verifications`
--
ALTER TABLE `sms_verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `variants`
--
ALTER TABLE `variants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1057;

--
-- AUTO_INCREMENT for table `variants_has_extras`
--
ALTER TABLE `variants_has_extras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1057;

--
-- AUTO_INCREMENT for table `visits`
--
ALTER TABLE `visits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `banners`
--
ALTER TABLE `banners`
  ADD CONSTRAINT `banners_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`),
  ADD CONSTRAINT `banners_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `restorants` (`id`);

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_restorant_id_foreign` FOREIGN KEY (`restorant_id`) REFERENCES `restorants` (`id`);

--
-- Constraints for table `coupons`
--
ALTER TABLE `coupons`
  ADD CONSTRAINT `coupons_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restorants` (`id`);

--
-- Constraints for table `extras`
--
ALTER TABLE `extras`
  ADD CONSTRAINT `extras_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);

--
-- Constraints for table `hours`
--
ALTER TABLE `hours`
  ADD CONSTRAINT `hours_restorant_id_foreign` FOREIGN KEY (`restorant_id`) REFERENCES `restorants` (`id`);

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `localmenus`
--
ALTER TABLE `localmenus`
  ADD CONSTRAINT `localmenus_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restorants` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`),
  ADD CONSTRAINT `orders_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_restorant_id_foreign` FOREIGN KEY (`restorant_id`) REFERENCES `restorants` (`id`);

--
-- Constraints for table `order_has_items`
--
ALTER TABLE `order_has_items`
  ADD CONSTRAINT `order_has_items_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `order_has_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `order_has_status`
--
ALTER TABLE `order_has_status`
  ADD CONSTRAINT `order_has_status_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_has_status_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`),
  ADD CONSTRAINT `order_has_status_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `ratings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `restoareas`
--
ALTER TABLE `restoareas`
  ADD CONSTRAINT `restoareas_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restorants` (`id`);

--
-- Constraints for table `restorants`
--
ALTER TABLE `restorants`
  ADD CONSTRAINT `restorants_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sms_verifications`
--
ALTER TABLE `sms_verifications`
  ADD CONSTRAINT `sms_verifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `tables`
--
ALTER TABLE `tables`
  ADD CONSTRAINT `tables_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restorants` (`id`),
  ADD CONSTRAINT `tables_restoarea_id_foreign` FOREIGN KEY (`restoarea_id`) REFERENCES `restoareas` (`id`);

--
-- Constraints for table `translations`
--
ALTER TABLE `translations`
  ADD CONSTRAINT `translations_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`);

--
-- Constraints for table `variants`
--
ALTER TABLE `variants`
  ADD CONSTRAINT `variants_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);

--
-- Constraints for table `variants_has_extras`
--
ALTER TABLE `variants_has_extras`
  ADD CONSTRAINT `variants_has_extras_extra_id_foreign` FOREIGN KEY (`extra_id`) REFERENCES `extras` (`id`),
  ADD CONSTRAINT `variants_has_extras_variant_id_foreign` FOREIGN KEY (`variant_id`) REFERENCES `variants` (`id`);

--
-- Constraints for table `visits`
--
ALTER TABLE `visits`
  ADD CONSTRAINT `visits_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restorants` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
