-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2024 at 05:46 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `real_estate`
--

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amenities_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `amenities_name`, `created_at`, `updated_at`) VALUES
(1, 'Air Conditioning', NULL, NULL),
(2, 'Cleaning Service', NULL, NULL),
(3, 'Dishwasher', NULL, NULL),
(4, 'Hardwood Flows', NULL, NULL),
(5, 'Swimming Pool', NULL, NULL),
(6, 'Outdoor Shower', NULL, NULL),
(7, 'Microwave', NULL, NULL),
(8, 'Pet Friendly', NULL, NULL),
(9, 'Basketball Court', NULL, NULL),
(10, 'Refrigerator', NULL, NULL),
(11, 'Gym', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `category_name`, `category_slug`, `created_at`, `updated_at`) VALUES
(1, 'Home improvement', 'home-improvement', NULL, NULL),
(2, 'Architecture', 'architecture', NULL, NULL),
(3, 'Tips and advice', 'tips-and-advice', NULL, NULL),
(4, 'Interior', 'interior', NULL, NULL),
(5, 'Real Estates', 'real-estates', NULL, '2024-03-12 10:37:35');

-- --------------------------------------------------------

--
-- Table structure for table `compares`
--

CREATE TABLE `compares` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `property_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `compares`
--

INSERT INTO `compares` (`id`, `user_id`, `property_id`, `created_at`, `updated_at`) VALUES
(2, 3, 7, '2024-02-05 10:07:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `property_id` int(11) NOT NULL,
  `facility_name` varchar(255) DEFAULT NULL,
  `distance` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `property_id`, `facility_name`, `distance`, `created_at`, `updated_at`) VALUES
(9, 3, 'Airport', '1', '2023-12-31 01:46:36', '2023-12-31 01:46:36'),
(10, 3, 'Bus Stop', '.5', '2023-12-31 01:46:36', '2023-12-31 01:46:36'),
(11, 3, 'Mall', '1', '2023-12-31 01:46:36', '2023-12-31 01:46:36'),
(12, 3, 'Airport', '2', '2023-12-31 01:46:36', '2023-12-31 01:46:36'),
(24, 2, NULL, NULL, '2024-01-05 08:00:26', '2024-01-05 08:00:26'),
(25, 2, 'Railways', '3', '2024-01-05 08:00:26', '2024-01-05 08:00:26'),
(26, 2, 'Bus Stop', '1', '2024-01-05 08:00:26', '2024-01-05 08:00:26'),
(27, 2, 'Airport', '10', '2024-01-05 08:00:26', '2024-01-05 08:00:26'),
(28, 2, 'Pharmacy', '.3', '2024-01-05 08:00:26', '2024-01-05 08:00:26'),
(29, 5, 'Hospital', '1', '2024-01-05 09:08:58', '2024-01-05 09:08:58'),
(30, 5, 'School', '.5', '2024-01-05 09:08:58', '2024-01-05 09:08:58'),
(31, 5, 'Pharmacy', '.5', '2024-01-05 09:08:58', '2024-01-05 09:08:58'),
(32, 5, 'Hospital', '1', '2024-01-05 09:08:58', '2024-01-05 09:08:58'),
(33, 5, 'Bus Stop', '.5', '2024-01-05 09:08:58', '2024-01-05 09:08:58'),
(34, 5, 'Bank', '1', '2024-01-05 09:08:58', '2024-01-05 09:08:58'),
(35, 6, 'Hospital', '1', '2024-01-05 09:30:51', '2024-01-05 09:30:51'),
(36, 6, 'School', '1', '2024-01-05 09:30:51', '2024-01-05 09:30:51'),
(37, 6, 'SuperMarket', '.5', '2024-01-05 09:30:51', '2024-01-05 09:30:51'),
(38, 6, 'Bus Stop', '.5', '2024-01-05 09:30:51', '2024-01-05 09:30:51'),
(39, 7, 'Airport', '.3', '2024-01-05 09:35:44', '2024-01-05 09:35:44'),
(40, 7, 'School', '1', '2024-01-05 09:35:44', '2024-01-05 09:35:44'),
(41, 7, 'SuperMarket', '.3', '2024-01-05 09:35:44', '2024-01-05 09:35:44'),
(42, 7, 'Hospital', '1', '2024-01-05 09:35:44', '2024-01-05 09:35:44'),
(43, 7, 'Pharmacy', '.5', '2024-01-05 09:35:44', '2024-01-05 09:35:44'),
(44, 8, 'Beach', '.5', '2024-01-05 09:39:30', '2024-01-05 09:39:30'),
(45, 8, 'Pharmacy', '.3', '2024-01-05 09:39:30', '2024-01-05 09:39:30'),
(46, 8, 'SuperMarket', '1', '2024-01-05 09:39:30', '2024-01-05 09:39:30'),
(47, 8, 'Railways', '1', '2024-01-05 09:39:30', '2024-01-05 09:39:30'),
(57, 11, 'Beach', '3', '2024-01-13 00:53:49', '2024-01-13 00:53:49'),
(58, 11, 'Airport', '1', '2024-01-13 00:53:49', '2024-01-13 00:53:49'),
(59, 11, 'Airport', '3', '2024-01-13 00:53:49', '2024-01-13 00:53:49'),
(60, 11, 'Bus Stop', '.5', '2024-01-13 00:53:49', '2024-01-13 00:53:49'),
(61, 11, 'Mall', '1', '2024-01-13 00:53:49', '2024-01-13 00:53:49'),
(62, 12, NULL, NULL, '2024-02-24 09:03:15', '2024-02-24 09:03:15'),
(63, 12, 'Airport', '3', '2024-02-24 09:03:15', '2024-02-24 09:03:15'),
(64, 12, 'Pharmacy', '.5', '2024-02-24 09:03:15', '2024-02-24 09:03:15'),
(65, 12, 'Entertainment', '2', '2024-02-24 09:03:15', '2024-02-24 09:03:15'),
(66, 12, 'Hospital', '.5', '2024-02-24 09:03:15', '2024-02-24 09:03:15'),
(67, 12, 'School', '.5', '2024-02-24 09:03:15', '2024-02-24 09:03:15');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_09_22_065227_create_property_types_table', 2),
(6, '2023_09_24_164703_create_amenities_table', 3),
(7, '2023_10_14_131619_create_properties_table', 4),
(8, '2023_10_14_133128_create_multi_imgs_table', 4),
(9, '2023_10_14_133508_create_facilities_table', 4),
(10, '2024_01_09_164714_create_package_plans_table', 5),
(11, '2024_01_21_160447_create_wishlists_table', 6),
(12, '2024_02_05_155135_create_compares_table', 7),
(13, '2024_02_23_040621_create_property_messages_table', 8),
(14, '2024_03_01_173753_create_places_table', 9),
(15, '2024_03_09_162757_create_testimonials_table', 10),
(16, '2024_03_12_154525_create_blog_categories_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `multi_imgs`
--

CREATE TABLE `multi_imgs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `property_id` int(11) NOT NULL,
  `photo_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multi_imgs`
--

INSERT INTO `multi_imgs` (`id`, `property_id`, `photo_name`, `created_at`, `updated_at`) VALUES
(3, 2, 'upload/property/multi-image/1786786739169379.jpg', '2023-12-31 00:31:54', '2023-12-31 02:50:22'),
(5, 3, 'upload/property/multi-image/1786782726464820.jpg', '2023-12-31 01:46:35', NULL),
(6, 3, 'upload/property/multi-image/1786782726814561.jpg', '2023-12-31 01:46:35', NULL),
(7, 3, 'upload/property/multi-image/1786782727084033.jpg', '2023-12-31 01:46:36', NULL),
(8, 3, 'upload/property/multi-image/1786782727347067.jpg', '2023-12-31 01:46:36', NULL),
(12, 2, 'upload/property/multi-image/1786816454814831.jpg', '2023-12-31 10:42:42', NULL),
(13, 2, 'upload/property/multi-image/1786816470184798.jpg', '2023-12-31 10:42:56', NULL),
(14, 5, 'upload/property/multi-image/1787263541963653.png', '2024-01-05 09:08:57', NULL),
(15, 5, 'upload/property/multi-image/1787263542635608.webp', '2024-01-05 09:08:57', NULL),
(16, 5, 'upload/property/multi-image/1787263543157413.png', '2024-01-05 09:08:58', NULL),
(17, 6, 'upload/property/multi-image/1787264919486428.png', '2024-01-05 09:30:51', NULL),
(18, 6, 'upload/property/multi-image/1787264920307550.png', '2024-01-05 09:30:51', NULL),
(19, 7, 'upload/property/multi-image/1787265224862263.png', '2024-01-05 09:35:42', NULL),
(20, 7, 'upload/property/multi-image/1787265225752096.png', '2024-01-05 09:35:43', NULL),
(21, 7, 'upload/property/multi-image/1787265226524461.png', '2024-01-05 09:35:43', NULL),
(22, 8, 'upload/property/multi-image/1787265461825803.png', '2024-01-05 09:39:28', NULL),
(23, 8, 'upload/property/multi-image/1787265462452712.png', '2024-01-05 09:39:28', NULL),
(24, 8, 'upload/property/multi-image/1787265462976513.png', '2024-01-05 09:39:29', NULL),
(25, 8, 'upload/property/multi-image/1787265463806372.png', '2024-01-05 09:39:30', NULL),
(29, 11, 'upload/property/multi-image/1787957164784374.png', '2024-01-13 00:53:47', NULL),
(30, 11, 'upload/property/multi-image/1787957165606516.png', '2024-01-13 00:53:48', NULL),
(31, 11, 'upload/property/multi-image/1787957166449516.png', '2024-01-13 00:53:49', NULL),
(32, 12, 'upload/property/multi-image/1791793029979645.png', '2024-02-24 09:03:13', NULL),
(33, 12, 'upload/property/multi-image/1791793030667501.png', '2024-02-24 09:03:14', NULL),
(34, 12, 'upload/property/multi-image/1791793031353979.png', '2024-02-24 09:03:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `package_plans`
--

CREATE TABLE `package_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `package_name` varchar(255) DEFAULT NULL,
  `package_credits` varchar(255) DEFAULT NULL,
  `invoice` varchar(255) DEFAULT NULL,
  `package_amount` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `package_plans`
--

INSERT INTO `package_plans` (`id`, `user_id`, `package_name`, `package_credits`, `invoice`, `package_amount`, `created_at`, `updated_at`) VALUES
(1, 12, 'Business', '3', 'ERS70870450', '20', '2024-01-15 11:11:37', NULL),
(2, 12, 'Business', '3', 'ERS11216062', '20', '2024-01-15 11:12:02', NULL),
(3, 12, 'Professional', '10', 'ERS43341586', '50', '2024-01-16 08:32:42', NULL);

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
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `place_name` varchar(255) NOT NULL,
  `place_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`id`, `place_name`, `place_image`, `created_at`, `updated_at`) VALUES
(1, 'Gulshan - 1', 'upload/place/1792348318464274.jpg', NULL, NULL),
(2, 'Gulshan - 2', 'upload/place/1792348351434094.jpg', NULL, NULL),
(3, 'Dhanmondi', 'upload/place/1792348372180195.jpg', NULL, NULL),
(4, 'Hatirjhil', 'upload/place/1792348395376125.jpg', NULL, NULL),
(5, 'Uttara', 'upload/place/1792348406258016.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ptype_id` varchar(255) NOT NULL,
  `amenities_id` varchar(255) NOT NULL,
  `property_name` varchar(255) NOT NULL,
  `property_slug` varchar(255) NOT NULL,
  `property_code` varchar(255) NOT NULL,
  `property_status` varchar(255) NOT NULL,
  `lowest_price` varchar(255) DEFAULT NULL,
  `max_price` varchar(255) DEFAULT NULL,
  `property_thambnail` varchar(255) NOT NULL,
  `short_descp` text DEFAULT NULL,
  `long_descp` text DEFAULT NULL,
  `bedrooms` varchar(255) DEFAULT NULL,
  `bathrooms` varchar(255) DEFAULT NULL,
  `garage` varchar(255) DEFAULT NULL,
  `garage_size` varchar(255) DEFAULT NULL,
  `property_size` varchar(255) DEFAULT NULL,
  `property_video` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `neighborhood` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `featured` varchar(255) DEFAULT NULL,
  `hot` varchar(255) DEFAULT NULL,
  `agent_id` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `ptype_id`, `amenities_id`, `property_name`, `property_slug`, `property_code`, `property_status`, `lowest_price`, `max_price`, `property_thambnail`, `short_descp`, `long_descp`, `bedrooms`, `bathrooms`, `garage`, `garage_size`, `property_size`, `property_video`, `address`, `city`, `state`, `postal_code`, `neighborhood`, `latitude`, `longitude`, `featured`, `hot`, `agent_id`, `status`, `created_at`, `updated_at`) VALUES
(5, '1', '2,5,6,8,11', 'SOUTH RIPPLE', 'south-ripple', 'pc001', 'rent', '2.5cr', '3cr', 'upload/property/thambnail/1787263540438314.png', 'Built by South Breeze to the highest standard of quality that we have', '<p>Built by South Breeze to the highest standard of quality that we have set and maintained since the beginning of our journey</p>', '4', '4', '1', '100', '4,500', 'https://www.youtube.com/watch?v=E077MYyM7CI&ab_channel=BVNEWS24', 'Near Dhanmondi Lake', 'Dhaka, Bangladesh', 'Gulshan -1', '1230', 'School', '27.914700', '79.656502', '1', '1', '7', '1', '2024-01-05 09:08:56', '2024-01-05 10:56:25'),
(6, '1', '1,2,3,4,5,10', 'AUTOGRAPH', 'autograph', 'pc002', 'buy', '3cr', '3.5cr', 'upload/property/thambnail/1787264918836007.png', 'The ground floor, with lush greenery, swimming pool and water features', '<div class=\"autograph__Scape-sc-170pgb1-1 KUXoC uk-width-expand uk-text-right uk-margin-large-top uk-position-relative\">\r\n<p class=\"uk-width-large uk-margin-auto-left uk-visible@m\">The ground floor, with lush greenery, swimming pool and water features where the love of nature prevails, along with grand waiting lounge and a spacious community hall that invites the blend of a home and lifestyle indulgences beautifully with its impressive designs and facilities that strike you the moment you step in. Seize the chance to own the place that enables you to invest in life, &lsquo;a home that has it all&rsquo;.</p>\r\n</div>\r\n<div class=\"uk-width-5-6 uk-width-1-2@m\">\r\n<div class=\" gatsby-image-wrapper\">&nbsp;</div>\r\n</div>', '4', '4', '1', '120', '4520sf', 'https://www.youtube.com/watch?v=E077MYyM7CI&ab_channel=BVNEWS24', 'NORTH GULSHAN, ROAD 59', 'Dhaka, Bangladesh', 'Gulshan -2', '3510', 'Hospital', '27.914700', '79.656502', '1', '1', '2', '1', '2024-01-05 09:30:50', NULL),
(7, '1', '2,3,4,5,6,9,10', 'SOUTH SUPREME', 'south-supreme', 'pc003', 'buy', '4cr', '4.5cr', 'upload/property/thambnail/1787265224136842.png', 'THINK ARCHITECTURAL & ENGINEERING EXCELLENCE', '<p>Every building developed by us is a rarity in engineering and architectural excellence. Each stands in its own distinctive appeal and promises a great time for you.</p>', '4', '4', '1', '100', '4,500', 'https://www.youtube.com/watch?v=E077MYyM7CI&ab_channel=BVNEWS24', 'NORTH GULSHAN, ROAD 60', 'Dhaka, Bangladesh', 'Banani', '3510', 'School', '27.914700', '79.656502', '1', '1', '2', '1', '2024-01-05 09:35:41', NULL),
(8, '1', 'Microwave,Pet Friendly,Gym', 'SOUTH RIPPLE', 'south-ripple', 'pc004', 'buy', '5cr', '5.5cr', 'upload/property/thambnail/1787265461437751.png', 'A duplex offering expansive views with an artfully landscaped outdoor space', '<section class=\"DuplexDetails__Section-sc-xpqpcb-0 dqZyWc\">\r\n<div class=\"DuplexDetails__TextContainer-sc-xpqpcb-1 gLNvNn uk-width-1-4@m uk-position-center-right uk-position-medium uk-text-right \">\r\n<p class=\"uk-visible@m\">A duplex offering expansive views with an artfully landscaped outdoor space with botanical beauty and waterbody that give you the feeling of rising high with confidence. Your personal rare and exceptional masterpiece that nurtures your sprawling dreams.</p>\r\n</div>\r\n</section>\r\n<section class=\"DuplexDetails__Section-sc-xpqpcb-0 dqZyWc uk-section uk-position-relative\">\r\n<div class=\"sb-container-left uk-position-relative\">\r\n<div class=\" gatsby-image-wrapper\">&nbsp;</div>\r\n</div>\r\n</section>', '5', '5', '1', '120', '4220', 'https://www.youtube.com/watch?v=E077MYyM7CI&ab_channel=BVNEWS24', 'GULSHAN, ROAD 36', 'Dhaka, Bangladesh', 'Rampura', '3510', 'School', '27.914700', '79.656502', '1', '1', '2', '1', '2024-01-05 09:39:27', '2024-01-06 12:01:07'),
(9, '9', '6,7,10,11', 'Alexander Kirk', 'alexander-kirk', 'PC005', 'rent', '3.8cr', '4cr', 'upload/property/thambnail/1787362784840056.png', 'Cupidatat nulla haru', '<p>rfhjzkxcliicy cyk ct7tui7xd xcu7kcv&nbsp; xlucul</p>', 'Sed nemo repellendus', 'Eum provident lauda', 'Quia lorem adipisci', 'Sed libero sint ess', 'Enim rerum facere ut', 'Est perspiciatis po', 'Consequatur accusant', 'Aliquip adipisci id', 'Dhanmondi', 'Est quisquam cum li', 'Sed ipsum vitae nost', 'Explicabo Do hic au', 'Corporis eveniet re', NULL, '1', '2', '1', '2024-01-06 11:26:23', NULL),
(11, '3', 'Cleaning Service,Swimming Pool,Pet Friendly,Refrigerator', 'SOUTH RIPPLEES', 'south-ripplees', 'PC006', 'buy', '5cr', '6cr', 'upload/property/thambnail/1787957162859659.png', 'a private residence in a building or house that\'s divided into several separate dwellings', '<p>An apartment is&nbsp;<strong>a private residence in a building or house that\'s divided into several separate dwellings</strong>. An apartment can be one small room or several. An apartment is a flat &mdash; it\'s usually a few rooms that you rent in a building.</p>', '4', '4', '1', '120', '2600', 'https://www.youtube.com/watch?v=E077MYyM7CI&ab_channel=BVNEWS24', '5171 W Campbell Ave undefined, Utah 53127 United States', 'amstradom', 'Uttara', '1267', 'Hospital', '27.914700', '79.656502', '1', '1', '12', '1', '2024-01-13 00:53:46', NULL),
(12, '3', 'Dishwasher,Microwave,Pet Friendly', 'CHL Dreams Park', 'chl-dreams-park', 'PC007', 'buy', '1.5cr', '2.2cr', 'upload/property/thambnail/1791793028293496.png', 'AN ASSET FOR THE NEXT GENERATION', '<p>Our construction of every residential and commercial building remains a rarity in precision engineering. Each stands in its own distinctive appeal, molded under acute attention to detail, and promises a great experience for all lives involved.</p>', '5', '5', '1', '150', '2600', 'https://www.youtube.com/watch?v=E077MYyM7CI&ab_channel=BVNEWS24', 'NORTH GULSHAN ROAD 50', 'Dhaka, Bangladesh', 'Dhaka', '1230', 'Hospital', '27.914700', '79.656502', '1', NULL, '12', '1', '2024-02-24 09:03:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `property_messages`
--

CREATE TABLE `property_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `agent_id` varchar(255) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `msg_name` varchar(255) DEFAULT NULL,
  `msg_email` varchar(255) DEFAULT NULL,
  `msg_phone` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_messages`
--

INSERT INTO `property_messages` (`id`, `user_id`, `agent_id`, `property_id`, `msg_name`, `msg_email`, `msg_phone`, `message`, `created_at`, `updated_at`) VALUES
(1, 3, '2', 6, 'User1', 'user1@user.com', '01947313527', 'i just know more about the property', '2024-02-22 23:06:36', NULL),
(2, 3, '7', NULL, 'User1', 'user1@user.com', '01947313527', 'Built by South Breeze to the highest standard of quality that we have.', '2024-02-24 10:18:21', NULL),
(3, 11, '12', NULL, 'sakib', 'sakib@gmail.com', '01847313588', 'a private residence in a building or house that\'s divided into several separate dwellings.', '2024-02-24 10:21:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `property_types`
--

CREATE TABLE `property_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_name` varchar(255) NOT NULL,
  `type_icon` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_types`
--

INSERT INTO `property_types` (`id`, `type_name`, `type_icon`, `created_at`, `updated_at`) VALUES
(1, 'Residential', 'icon-1', NULL, NULL),
(2, 'Commercial', 'icon-2', NULL, '2023-09-23 10:53:42'),
(3, 'Appertment', 'icon-3', NULL, NULL),
(4, 'Industrial', 'icon-4', NULL, NULL),
(5, 'Building Code', 'icon-5', NULL, NULL),
(6, 'Land', 'icon-6', NULL, NULL),
(7, 'Floor Area', 'icon-7', NULL, NULL),
(8, 'Communal land', 'icon-8', NULL, NULL),
(9, 'Offices', 'icon-9', NULL, NULL),
(10, 'Factory', 'icon-10', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `position`, `image`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Md. Mhafuzurs Rahmans', 'Managing Directors', 'upload/testimonial/1793250781440218.png', 'Enterprise resource planning (ERP) Streamline your business process within a centralized and integrated system in one platform. ERP.COM.BD absolute all in one cloud-based ERP system Interconected with Technology, Service and Human Resource.', NULL, '2024-03-11 11:13:33'),
(2, 'Md. Omor Faruk', 'Director', 'upload/testimonial/1793250039885067.png', 'In a centralized, integrated system on a single platform, enterprise resource planning (ERP) streamlines your business processes. Integrated with technology, services, and human resources, ERP.COM.BD is an all-encompassing cloud-based ERP system.', NULL, NULL),
(3, 'Barua Suranjit', 'Director', 'upload/testimonial/1793250062845032.png', 'Your business processes can be streamlined using enterprise resource planning (ERP), which is a centralized, integrated system on a single platform. Absolute all-in-one cloud-based ERP system connected to technology, services, and human resources is ERP.COM.BD.', NULL, NULL),
(4, 'Sharly Sharmin', 'Director', 'upload/testimonial/1793250086912096.png', 'With enterprise resource planning (ERP), you can centralize and integrate all of your business processes onto a single platform. Absolute all-in-one cloud-based ERP system integrated with technology, service, and human resource.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `role` enum('admin','agent','user') NOT NULL DEFAULT 'user',
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `credit` varchar(255) DEFAULT '0',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `photo`, `phone`, `address`, `role`, `status`, `credit`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Jowel', 'Jowel@admin.com', NULL, '$2a$12$TWwahG/xmD4eIsjUpHSvB./tcxDY2MCH0Tnd3RpkfrqlOru2fBRmC', '2023091639Snapchat-486314402-01-01.jpeg', '01847313526', 'H#27,R#12,Sector#10,Uttara,Dhaka,Bangladesh', 'admin', 'active', '0', NULL, NULL, '2023-09-11 11:39:00'),
(2, 'Agent', 'agent', 'agent@agent.com', NULL, '$2y$10$7PSuQDyKi88DKzt9D8MxKOvS79m6U37op4UmiFxYbQ7o7EecdOg4i', '202402241217WhatsApp Image 2024-02-21 at 14.00.15_9e2e7d9e.jpg', '01303397159', NULL, 'agent', 'active', '0', NULL, NULL, '2024-02-24 06:17:40'),
(3, 'User1', 'user1', 'user1@user.com', NULL, '$2y$10$N5tFT9rGho3i0Nf2xER3KOuylWQcNKvBfnhhseck.uVeOGUU2vdVi', '2023091808avatar-3.png', '01947313527', '508 Leopoldo StreamHagenesland, OK 47486-7255', 'user', 'active', '0', NULL, NULL, '2023-09-15 21:31:44'),
(4, 'Annabelle Blick', NULL, 'emmet90@example.org', '2023-09-02 12:28:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/0033cc?text=qui', '479-466-2397', '1148 Howell Vista Apt. 636\nNew Madonna, MT 96895-9966', 'admin', 'active', '0', 'bgCUioA4KC', '2023-09-02 12:28:00', '2023-09-02 12:28:00'),
(5, 'Darryl Nader II', NULL, 'jayce.bartell@example.com', '2023-09-02 12:28:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/004422?text=itaque', '1-443-961-2535', '550 Green Creek\nEast Rowland, IL 63632-5909', 'admin', 'inactive', '0', 'oIp6zs2A48', '2023-09-02 12:28:00', '2023-09-02 12:28:00'),
(6, 'Prof. Ellis Boyle Sr.', NULL, 'kwest@example.net', '2023-09-02 12:28:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/0044ee?text=accusamus', '307.357.8667', '6198 Gorczany Tunnel Apt. 872\nEast Herthachester, IL 20339', 'user', 'active', '0', 'GedDYhyiY3', '2023-09-02 12:28:00', '2023-09-02 12:28:00'),
(7, 'Lavada Schroeder', 'Lavada', 'brempel@example.com', '2023-09-02 12:28:00', '$2a$12$sK.DZ6jEf1ADWqvMPGQxx.ZNJyfi7HNHkiLeKO5CF/hkwaSADDyrq', '202402241225IMG_20231014_154439.jpg', '(469) 667-1707', '508 Leopoldo StreamHagenesland, OK 47486-7254', 'agent', 'active', '0', 'LiRH88IeB9t6mBdLOrj1J5hdmaWTJDWRw6UnAgFm0YoF8AFNz8TAvxQEAJOI', '2023-09-02 12:28:00', '2024-02-24 06:25:15'),
(9, 'Test', NULL, 'test@gmail.com', NULL, '$2y$10$6zqcOBoMm5SdGpjYkjenoOk8GHr2yccIMtUFIP7BR7LvWogCpvGui', NULL, NULL, NULL, 'user', 'active', '0', NULL, '2023-09-02 12:31:09', '2023-09-02 12:31:09'),
(10, 'khan', NULL, 'khan@gmail.com', NULL, '$2y$10$9KhDJWtgWUX2J7UmKncGau8VNm4F6eCXvLc9qLICo0DzgQnBQPEt6', NULL, NULL, NULL, 'user', 'active', '0', NULL, '2023-09-14 21:20:42', '2023-09-14 21:20:42'),
(11, 'sakib', NULL, 'sakib@gmail.com', NULL, '$2a$12$S2pX8edAmGEW.zOhg7EsBeCHFTOWHUKSyYtF3PqhJ9d2Fd/n.DjMi', NULL, NULL, NULL, 'user', 'active', '0', NULL, '2023-09-14 21:21:26', '2023-09-14 21:21:26'),
(12, 'Ab builders', 'ab', 'ab@gmail.com', NULL, '$2y$10$.7a51PLzbBpdyCASHwpnrOvy0CchWMRxbqf5b1PGvXCCRwKFK4DLm', '202401060542412613435_1235978620659754_8913642652910560061_n.jpg', '01947313527', 'Dhaka,bangladesh', 'agent', 'active', '18', NULL, '2024-01-05 23:13:45', '2024-02-24 09:03:15'),
(13, 'asa', NULL, 'asa@gmail.com', NULL, '$2a$12$L13OWP1A4dt3.E40xfpcHOCyQi7LRpBeG8eO5.4kzxTHxooIJEtXe', '202402241229IMG_20231025_183912.jpg', '01847313529', '5171 W Campbell Ave undefined, Utah 53127 United States', 'agent', 'active', '0', NULL, NULL, '2024-02-24 06:29:45'),
(14, 'Chastity Horn', NULL, 'venid@mailinator.com', NULL, '$2y$10$eigqJLli9v2J/bGH/AaiSulRebt63RXca1gI59u3Erw9W8lvQa7ry', NULL, '+1 (754) 294-9713', NULL, 'agent', 'inactive', '0', NULL, '2024-02-24 06:22:19', '2024-02-24 06:22:19');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `property_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `property_id`, `created_at`, `updated_at`) VALUES
(1, 3, 5, '2024-01-23 10:24:28', NULL),
(3, 3, 7, '2024-01-23 10:25:49', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `compares`
--
ALTER TABLE `compares`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
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
-- Indexes for table `multi_imgs`
--
ALTER TABLE `multi_imgs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_plans`
--
ALTER TABLE `package_plans`
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
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_messages`
--
ALTER TABLE `property_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_types`
--
ALTER TABLE `property_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `compares`
--
ALTER TABLE `compares`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `multi_imgs`
--
ALTER TABLE `multi_imgs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `package_plans`
--
ALTER TABLE `package_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `property_messages`
--
ALTER TABLE `property_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `property_types`
--
ALTER TABLE `property_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
