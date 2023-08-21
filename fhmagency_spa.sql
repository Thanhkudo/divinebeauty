-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 21, 2023 lúc 06:30 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `fhmagency_spa`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) NOT NULL,
  `json_information` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_information`)),
  `is_super_admin` tinyint(1) NOT NULL DEFAULT 0,
  `status` varchar(20) NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `role`, `json_information`, `is_super_admin`, `status`, `remember_token`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'Thắng Nguyễn', 'huuthangb2k50@gmail.com', '$2y$10$7gxfGSFLfg1BwfRZfsBCL.UNBLgP/R.c87SeIelNhACtfyVYACjoe', 2, NULL, 1, 'active', NULL, NULL, NULL, '2021-09-24 08:48:18', '2022-12-08 03:56:38'),
(3, 'admin', 'admin@gmail.com', '$2y$10$lgTMXnRUG7q1ZfTBQAF65.Rt8vvYi4aPFoVo80oR6xmSkef80TJsG', 2, NULL, 0, 'active', NULL, NULL, NULL, '2023-07-10 01:54:39', '2023-07-10 01:54:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_09_21_090133_create_admins_table', 1),
(5, '2021_09_29_090019_create_tb_options_table', 1),
(6, '2021_09_29_090048_create_tb_logs_table', 1),
(7, '2021_09_29_090107_create_tb_admin_menus_table', 1),
(8, '2021_09_29_090214_create_tb_modules_table', 1),
(9, '2021_09_29_090233_create_tb_module_functions_table', 1),
(10, '2021_09_29_090301_create_tb_roles_table', 1),
(11, '2021_09_29_090402_create_tb_menus_table', 1),
(12, '2021_09_29_090455_create_tb_blocks_table', 1),
(13, '2021_09_29_090509_create_tb_block_contents_table', 1),
(14, '2021_09_29_090709_create_tb_cms_taxonomys_table', 1),
(15, '2021_09_29_090743_create_tb_cms_posts_table', 1),
(16, '2021_10_09_013236_create_tb_pages_table', 1),
(17, '2021_10_26_210129_change_tb_users_table', 1),
(24, '2022_04_25_163138_create_tb_widgets_table', 3),
(25, '2022_04_25_163922_create_tb_components_table', 3),
(26, '2022_04_26_155008_create_tb_widget_configs_table', 4),
(27, '2022_04_26_155035_create_tb_component_configs_table', 4),
(28, '2022_06_02_102255_create_tb_bookings_table', 5),
(29, '2022_02_14_165457_create_tb_contacts_table', 6),
(30, '2022_02_14_170033_create_tb_orders_table', 6),
(31, '2022_02_14_170056_create_tb_order_details_table', 6),
(32, '2022_06_27_162451_create_tb_popups_table', 7),
(33, '2022_06_29_095757_change_users_table', 8),
(35, '2022_07_07_144844_create_tb_affiliate_payments_table', 9),
(36, '2022_07_12_210520_create_tb_affiliate_historys_table', 10),
(37, '2022_12_02_162806_create_tb_branchs_table', 11);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_admin_menus`
--

CREATE TABLE `tb_admin_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `url_link` varchar(255) DEFAULT NULL,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'active',
  `toolbar` varchar(255) DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_admin_menus`
--

INSERT INTO `tb_admin_menus` (`id`, `parent_id`, `name`, `icon`, `url_link`, `iorder`, `status`, `toolbar`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(3, 10, 'Quản lý người dùng', 'fa fa-user-plus', 'admins', 3, 'active', 'deactive', 1, 1, '2021-09-30 07:38:46', '2022-03-02 19:25:15'),
(5, 10, 'Quản lý nhóm quyền', 'fa fa-users', 'roles', 4, 'active', 'active', 1, 1, '2021-09-30 09:57:11', '2022-03-02 19:25:00'),
(6, 10, 'Quản lý Menu Admin', 'fa fa-tasks', 'admin_menus', 5, 'active', 'deactive', 1, 1, '2021-09-30 21:41:45', '2022-03-02 19:26:32'),
(10, NULL, 'Quản lý hệ thống', 'fa fa-server', NULL, 99, 'active', 'deactive', 1, 1, '2021-10-01 17:10:06', '2022-03-02 19:35:52'),
(13, NULL, 'Quản lý cấu hình', 'fa fa-home', NULL, 98, 'active', 'deactive', 1, 1, '2021-10-02 10:26:41', '2022-03-02 19:35:45'),
(17, 71, 'Quản lý Khối nội dung', 'fa fa-object-group', 'block_contents', 10, 'active', 'deactive', 1, 1, '2021-10-07 09:08:48', '2023-08-09 01:36:08'),
(41, 71, 'Quản lý Pages - Trang', 'fa fa-clone', 'pages', NULL, 'active', 'deactive', 1, 1, '2022-03-02 18:15:57', '2022-08-06 08:30:18'),
(42, 71, 'Quản lý Menu Website', 'fa fa-bars', 'menus', NULL, 'active', 'deactive', 1, 1, '2022-03-02 18:19:53', '2022-08-06 08:30:15'),
(44, 70, 'Quản lý hình ảnh hệ thống', 'fa fa-picture-o', 'web_image', NULL, 'active', 'deactive', 1, 1, '2022-03-02 18:23:03', '2022-08-06 08:29:09'),
(45, 70, 'Quản lý thông tin Website', 'fa fa-globe', 'web_information', NULL, 'active', 'deactive', 1, 1, '2022-03-02 18:23:28', '2022-08-06 08:29:06'),
(46, 70, 'Quản lý liên kết MXH', 'fa fa-share-alt-square', 'web_social', NULL, 'active', 'deactive', 1, 1, '2022-03-02 18:23:43', '2022-08-06 08:29:03'),
(51, NULL, 'Quản lý nội dung', 'fa fa-folder', NULL, 2, 'active', NULL, 1, 1, '2022-05-30 08:46:23', '2022-08-06 08:32:52'),
(52, 51, 'Quản lý danh mục - thể loại', NULL, 'cms_taxonomys', 1, 'active', NULL, 1, 1, '2022-05-30 08:46:51', '2022-05-30 08:46:51'),
(58, 71, 'Quản lý mã nhúng CSS - JS', NULL, 'web_source', NULL, 'active', NULL, 1, 1, '2022-06-07 02:41:52', '2022-08-06 08:30:12'),
(59, 72, 'Quản lý liên hệ', NULL, 'contacts', 3, 'active', NULL, 1, 1, '2022-06-08 03:16:46', '2022-08-06 08:35:02'),
(70, 13, 'Cấu hình thông tin chung', 'fa fa-bars', '#', 1, 'active', NULL, 1, 1, '2022-08-06 08:28:32', '2022-08-06 08:31:29'),
(71, 13, 'Cấu hình Website', 'fa fa-object-group', '#', 2, 'active', NULL, 1, 1, '2022-08-06 08:29:55', '2022-08-06 08:31:10'),
(72, NULL, 'Quản lý khách hàng', 'fa fa-opencart', '#', 1, 'active', NULL, 1, 1, '2022-08-06 08:32:30', '2022-08-06 08:34:15'),
(73, 51, 'Quản lý sản phẩm', NULL, 'cms_products', 4, 'active', NULL, 1, 1, '2022-10-08 03:23:29', '2023-08-09 14:41:19'),
(76, NULL, 'fordev', 'fa fa-deviantart', NULL, 100, 'active', NULL, 1, 1, '2022-12-29 01:57:40', '2023-01-06 07:29:37'),
(77, 76, 'Module Functions', NULL, 'module_functions', 1, 'active', NULL, 1, 1, '2022-12-29 01:58:43', '2022-12-29 01:58:43'),
(78, 76, 'Modules', NULL, 'modules', 2, 'active', NULL, 1, 1, '2022-12-29 01:59:03', '2022-12-29 01:59:03'),
(79, 76, 'Blocks', NULL, 'blocks', 2, 'active', NULL, 1, 1, '2022-12-29 01:59:20', '2022-12-29 01:59:20'),
(80, 76, 'param', NULL, 'options', 3, 'active', NULL, 1, 1, '2022-12-29 02:00:42', '2022-12-29 02:00:42'),
(86, 71, 'Cài đặt ngôn ngữ', 'fa fa-language', 'language', 999, 'active', NULL, 1, 1, '2023-08-09 01:38:08', '2023-08-09 01:38:08'),
(87, 51, 'Quản lý dịch vụ', NULL, 'cms_services', 5, 'active', NULL, 1, 1, '2023-08-09 01:52:07', '2023-08-09 01:52:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_affiliate_historys`
--

CREATE TABLE `tb_affiliate_historys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_type` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `order_total_money` double(20,2) NOT NULL DEFAULT 0.00,
  `affiliate_percent` double(20,2) NOT NULL DEFAULT 0.00,
  `affiliate_point` double(20,2) DEFAULT NULL,
  `affiliate_money` double(20,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_affiliate_historys`
--

INSERT INTO `tb_affiliate_historys` (`id`, `is_type`, `user_id`, `order_id`, `order_total_money`, `affiliate_percent`, `affiliate_point`, `affiliate_money`, `description`, `json_params`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'product', 3, 9, 3500000000.00, 1.50, 52500000.00, 52500000.00, '', NULL, 'processed', NULL, NULL, '2022-07-12 17:51:21', '2022-07-12 18:52:58'),
(3, 'product', 2, 9, 3500000000.00, 1.50, 52500000.00, 52500000.00, '', NULL, 'processed', NULL, NULL, '2022-07-12 18:18:05', '2022-07-12 18:52:58'),
(4, 'service', 3, 14, 0.00, 3.00, 0.00, 0.00, '', NULL, 'processed', NULL, NULL, '2022-07-12 18:53:27', '2022-07-12 18:53:27'),
(5, 'service', 2, 14, 0.00, 2.50, 0.00, 0.00, '', NULL, 'processed', NULL, NULL, '2022-07-12 18:53:27', '2022-07-12 18:53:27'),
(6, 'product', 3, 11, 3500000000.00, 1.50, 52500000.00, 52500000.00, '', NULL, 'processed', NULL, NULL, '2022-07-13 08:11:45', '2022-07-13 08:11:54'),
(7, 'product', 2, 11, 3500000000.00, 1.50, 52500000.00, 52500000.00, '', NULL, 'processed', NULL, NULL, '2022-07-13 08:11:45', '2022-07-13 08:11:54'),
(8, 'product', 3, 16, 5350000.00, 1.50, 80250.00, 80250.00, '', NULL, 'processed', NULL, NULL, '2022-07-14 04:08:05', '2022-07-14 04:08:05'),
(9, 'product', 2, 16, 5350000.00, 1.50, 80250.00, 80250.00, '', NULL, 'processed', NULL, NULL, '2022-07-14 04:08:05', '2022-07-14 04:08:05'),
(10, 'service', 3, 15, 450000.00, 3.00, 13500.00, 13500.00, '', NULL, 'processed', NULL, NULL, '2022-07-14 04:28:17', '2022-07-14 04:28:17'),
(11, 'service', 2, 15, 450000.00, 2.50, 11250.00, 11250.00, '', NULL, 'processed', NULL, NULL, '2022-07-14 04:28:17', '2022-07-14 04:28:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_affiliate_payments`
--

CREATE TABLE `tb_affiliate_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `money` double(20,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `status` varchar(255) DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_affiliate_payments`
--

INSERT INTO `tb_affiliate_payments` (`id`, `user_id`, `money`, `description`, `json_params`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 3, 5000000.00, 'Số tài khoản: 1122335789\r\nChủ tài khoản: Nguyễn Hữu Thắng\r\nTên ngân hàng: Vietcombank Hà Tây', NULL, 'new', NULL, NULL, '2022-07-13 08:29:49', '2022-07-13 08:29:49'),
(2, 3, 15000000.00, 'Số tài khoản: 1122335789\nChủ tài khoản: Nguyễn Hữu Thắng\nTên ngân hàng: MB Bank', '{\"admin_note\":\"ThangNH \\u0111ang x\\u1eed l\\u00fd \\u0111\\u1ec1 ngh\\u1ecb thanh to\\u00e1n n\\u00e0y\"}', 'processing', NULL, 1, '2022-07-13 08:33:09', '2022-07-13 10:40:49'),
(3, 3, 50000.00, NULL, NULL, 'new', NULL, NULL, '2022-07-13 09:01:39', '2022-07-13 09:01:39'),
(4, 3, 5350000.00, NULL, '{\"admin_note\":\"Payment for orders by affiliate wallet\",\"order_id\":16}', 'processed', NULL, NULL, '2022-07-14 04:08:05', '2022-07-14 04:08:05'),
(5, 3, 450000.00, NULL, '{\"admin_note\":\"Payment for orders by affiliate wallet\",\"order_id\":15}', 'processed', NULL, NULL, '2022-07-14 04:28:17', '2022-07-14 04:28:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_blocks`
--

CREATE TABLE `tb_blocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `block_code` varchar(255) NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `is_config` tinyint(1) NOT NULL DEFAULT 1,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_blocks`
--

INSERT INTO `tb_blocks` (`id`, `name`, `description`, `block_code`, `json_params`, `is_config`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'Khối hình ảnh quảng cáo', 'Block used for displaying banner advertising images, with or without additional content', 'banner', '{\r\n	\"template\":[\r\n		\"home.primary\",\r\n                \"post.detail\",\r\n		\"post.default\",\r\n		\"product.detail\",\r\n		\"product.default\",\r\n		\"service.detail\",\r\n		\"service.default\",\r\n		\"department.default\",\r\n		\"doctor.default\",\r\n		\"doctor.detail\",\r\n		\"resource.detail\",\r\n		\"resource.default\",\r\n		\"contact.default\",\r\n		\"cart.default\",\r\n		\"user.default\",\r\n		\"tags.default\",\r\n		\"search.default\",\r\n                \"aboutus.primary\",\r\n		\"branch.default\",\r\n                 \"page.default\"\r\n	],\r\n	\"layout\":[\r\n		\"slide\",\r\n                \"banner_image\",\r\n                \"video\",\r\n                 \"image\"\r\n	]\r\n}', 1, 2, 'active', 1, 1, '2021-10-07 04:49:19', '2023-08-08 03:26:24'),
(11, 'Khối nội dung tùy chọn', 'Blocks are used for optional content and styled accordingly', 'custom', '{\r\n	\"template\":[\r\n		\"home.primary\", \r\n                 \"contact.default\",\r\n                 \"post.detail\",\r\n                 \"post.default\",\r\n		 \"service.default\",\r\n                 \"aboutus.primary\",\r\n                 \"page.default\"\r\n	],\r\n	\"layout\":[\r\n		\"about_us\",\r\n		\"about_vision\",\r\n		\"core_value\",\r\n		\"about_development\",\r\n		\"about_client\",\r\n                \"opening_hours\",\r\n                 \"brands\"\r\n	],\r\n        \"style\":[\r\n                 \"end\"\r\n         ]\r\n}', 1, 3, 'active', 1, 1, '2021-10-11 16:44:15', '2023-08-09 07:40:57'),
(20, 'Khối nội dung đầu trang', NULL, 'header', '{\r\n	\"template\":[\r\n		\"home.primary\",\r\n		\"post.detail\",\r\n		\"post.default\",\r\n		\"product.detail\",\r\n		\"product.default\",\r\n		\"service.detail\",\r\n		\"service.default\",\r\n		\"department.default\",\r\n		\"doctor.default\",\r\n		\"doctor.detail\",\r\n		\"resource.detail\",\r\n		\"resource.default\",\r\n		\"contact.default\",\r\n		\"cart.default\",\r\n		\"user.default\",\r\n		\"tags.default\",\r\n		\"search.default\",\r\n                \"aboutus.primary\",\r\n		\"branch.default\"\r\n	],\r\n	\"layout\":[\r\n		\"default\"\r\n	]\r\n}', 1, 1, 'active', 1, 1, '2022-05-30 03:05:17', '2023-02-03 07:05:17'),
(21, 'Khối nội dung chân trang', NULL, 'footer', '{\r\n	\"template\":[\r\n		\"home.primary\",\r\n		\"post.detail\",\r\n		\"post.default\",\r\n		\"product.detail\",\r\n		\"product.default\",\r\n		\"service.detail\",\r\n		\"service.default\",\r\n		\"department.default\",\r\n		\"doctor.default\",\r\n		\"doctor.detail\",\r\n		\"resource.detail\",\r\n		\"resource.default\",\r\n		\"contact.default\",\r\n		\"cart.default\",\r\n		\"user.default\",\r\n		\"tags.default\",\r\n		\"search.default\",\r\n                \"aboutus.primary\",\r\n		\"branch.default\"\r\n	]\r\n}', 1, 99, 'active', 1, 1, '2022-05-30 03:06:28', '2023-02-03 07:06:31'),
(22, 'Khối danh sách dịch vụ nổi bật', NULL, 'cms_service', '{\r\n	\"template\":[\r\n		\"home.primary\",\r\n		\"page.default\"\r\n	]\r\n}', 1, 5, 'active', 1, 1, '2022-05-31 07:25:43', '2023-07-08 07:59:13'),
(23, 'Khối danh sách bài viết nổi bật', NULL, 'cms_post', '{\r\n	\"template\":[\r\n		\"home.primary\",\r\n                \"aboutus.primary\",\r\n                 \"page.default\"\r\n	]\r\n}', 1, 7, 'deactive', 1, 1, '2022-05-31 09:53:32', '2023-08-11 09:39:58'),
(24, 'Khối danh sách dự án nổi bật', NULL, 'cms_resource', '{\r\n	\"template\":[\r\n		\"home.primary\"\r\n	]\r\n}', 0, 6, 'deactive', 1, 1, '2022-06-01 08:38:54', '2023-04-12 02:01:37'),
(27, 'Khối hiển thị nội dung chính', 'Khối hiển thị nội dung theo từng chức năng cụ thể', 'main', '{\r\n	\"template\":[\r\n		\"post.detail\",\r\n		\"post.default\",\r\n		\"product.detail\",\r\n		\"product.default\",\r\n		\"service.detail\",\r\n                 \"aboutus.primary\",\r\n		\"service.default\",\r\n		\"department.default\",\r\n		\"doctor.default\",\r\n		\"doctor.detail\",\r\n		\"resource.detail\",\r\n		\"resource.default\",\r\n		\"contact.default\",\r\n		\"user.default\",\r\n		\"tags.default\",\r\n		\"search.default\",\r\n		\"page.price\",\r\n		\"page.content\",\r\n		\"branch.default\",\r\n		\"page.default\",\r\n                \"cart.default\"\r\n	]\r\n}', 1, 4, 'active', 1, 1, '2022-06-02 11:23:39', '2023-08-07 08:58:14'),
(35, 'Khối nội dung form đăng ký', NULL, 'form', '{\r\n	\"template\":[\r\n		\"home.primary\",\r\n                 \"post.detail\",\r\n		\"post.default\",\r\n                 \"contact.default\"\r\n	],\r\n	\"layout\":[\r\n		\"booking\",\r\n                \"booknow\",\r\n                \"contact\"\r\n	]\r\n}', 1, 8, 'active', 1, 1, '2022-09-13 09:23:28', '2023-08-09 08:04:57'),
(36, 'Khối danh sách sản phẩm nổi bật', NULL, 'cms_product', '{\r\n	\"template\":[\r\n		\"home.primary\",\r\n		\"page.default\",\r\n                \"aboutus.primary\"\r\n	]\r\n}', 0, 4, 'active', 1, 1, '2022-10-08 03:22:14', '2023-08-11 09:39:06'),
(37, 'Khối danh sách câu hỏi thường gặp - FAQs', NULL, 'faq', '{\r\n	\"template\":[\r\n		\"home.primary\"\r\n	],\r\n	\"layout\":[\r\n		\"default\"\r\n	]\r\n}', 1, 98, 'deactive', 1, 1, '2022-10-17 04:36:18', '2023-01-09 08:51:19'),
(39, 'Khối tìm kiếm', NULL, 'cms_search', '{\r\n	\"template\":[\r\n		\"home.primary\",\r\n                 \"product.category\",\r\n		\"page.default\"\r\n	]\r\n}', 1, 5, 'deactive', 1, 1, '2023-01-09 03:45:12', '2023-04-12 02:01:29'),
(42, 'Khối banner video', NULL, 'banner_video', '{\r\n	\"template\":[\r\n		\"home.primary\",\r\n                \"post.detail\",\r\n		\"post.default\",\r\n		\"product.detail\",\r\n		\"product.default\",\r\n		\"service.detail\",\r\n		\"service.default\",\r\n		\"department.default\",\r\n		\"page.default\",\r\n		\"doctor.detail\",\r\n		\"resource.detail\",\r\n		\"resource.default\",\r\n		\"contact.default\",\r\n		\"cart.default\",\r\n		\"user.default\",\r\n		\"tags.default\",\r\n		\"search.default\",\r\n                \"aboutus.primary\",\r\n		\"branch.default\"\r\n	],\r\n	\"layout\":[\r\n		\"slide\",\r\n                \"slick\"\r\n       \r\n	]\r\n}', 0, 2, 'active', 1, 1, '2023-07-03 09:15:28', '2023-08-11 09:38:55'),
(43, 'Khối nội dung nhiều link điều hướng', NULL, 'custom_link', '{\r\n	\"template\":[\r\n		\"home.primary\"\r\n	],\r\n	\"layout\":[\r\n		\"default\"\r\n	]\r\n}', 1, 5, 'deactive', 1, 1, '2023-07-04 02:13:35', '2023-08-11 09:39:32'),
(45, 'Khối nội dung giới thiệu', NULL, 'about_us', '{\r\n	\"template\":[\r\n		\"home.primary\", \r\n                 \"contact.default\",\r\n                \"aboutus.primary\",\r\n                 \"page.default\"\r\n	],\r\n	\"layout\":[\r\n                \"default\",\r\n                 \"map\"\r\n	]\r\n      \r\n}', 1, 4, 'active', 1, 1, '2023-08-07 09:26:46', '2023-08-08 01:30:49'),
(46, 'Khối địa chỉ cửa hàng', NULL, 'stores', '{\r\n	\"template\":[\r\n		\"home.primary\", \r\n                 \"contact.default\",\r\n                \"aboutus.primary\",\r\n                 \"page.default\"\r\n	],\r\n	\"layout\":[\r\n		\"map\"\r\n	]\r\n}', 1, 4, 'active', 1, 1, '2023-08-08 06:41:58', '2023-08-08 06:48:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_block_contents`
--

CREATE TABLE `tb_block_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `brief` text DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `block_code` varchar(255) NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `image` varchar(255) DEFAULT NULL,
  `image_background` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `url_link` varchar(255) DEFAULT NULL,
  `url_link_title` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `system_code` varchar(255) DEFAULT NULL,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_block_contents`
--

INSERT INTO `tb_block_contents` (`id`, `parent_id`, `title`, `brief`, `content`, `block_code`, `json_params`, `image`, `image_background`, `icon`, `url_link`, `url_link_title`, `position`, `system_code`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(19, NULL, 'Giới thiệu', 'Authoritatively communicate world-class alignments before low-risk high-yield growth strategies. Synergistically envisioneer transparent niches after dynamic \"outside the box\" thinking. Uniquely implement cutting-edge partnerships before synergistic niche markets.', NULL, 'custom', '{\"layout\":\"about_us\",\"style\":null}', '/data/cms-image/1/Screenshot_14.png', '/data/cms-image/1/sign.png', NULL, NULL, NULL, NULL, NULL, 6, 'delete', 1, 1, '2021-10-12 10:29:41', '2023-01-09 09:06:36'),
(21, 19, 'img1', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/1 (2).jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'delete', 1, 1, '2021-10-12 10:31:50', '2022-12-29 04:32:07'),
(22, 19, 'img2', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/2.jpg', NULL, NULL, NULL, 'learn more', NULL, NULL, 2, 'delete', 1, 1, '2021-10-12 10:32:50', '2022-12-29 04:32:35'),
(74, NULL, 'Khối hình ảnh banner đầu trang chủ', NULL, NULL, 'banner', '{\"layout\":\"slide\",\"style\":null,\"title\":{\"en\":\"Kh\\u1ed1i h\\u00ecnh \\u1ea3nh banner \\u0111\\u1ea7u trang ch\\u1ee7\",\"vi\":\"Kh\\u1ed1i h\\u00ecnh \\u1ea3nh banner \\u0111\\u1ea7u trang ch\\u1ee7\"},\"brief\":{\"en\":\"\",\"vi\":\"\"},\"content\":{\"en\":\"<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\",\"vi\":\"\"},\"url_link_title\":{\"en\":\"\",\"vi\":\"\"}}', NULL, '/data/cms-image/Images/bg_menu.jpg', NULL, NULL, NULL, NULL, NULL, 2, 'active', 1, 1, '2022-03-18 17:50:28', '2023-08-14 02:16:31'),
(79, NULL, 'Điều chúng tôi làm', NULL, NULL, 'custom', '{\"layout\":\"about_vision\",\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 'delete', 1, 1, '2022-05-31 07:26:33', '2023-01-09 09:06:42'),
(82, NULL, 'BẢNG GIÁ DỊCH VỤ', NULL, NULL, 'custom', '{\"layout\":\"core_value\",\"style\":null}', '/data/cms-image/1/Frame.png', '/data/cms-image/1/3.jpg', NULL, NULL, NULL, NULL, NULL, 6, 'delete', 1, 1, '2022-06-01 08:39:42', '2023-01-09 09:06:28'),
(94, NULL, 'Khối hiển thị nội dung chính', NULL, NULL, 'main', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2022-06-02 11:24:21', '2023-07-04 09:19:41'),
(96, 241, '#2', 'COO - FHM Agency', NULL, 'cms_resource', '{\"layout\":null,\"style\":null}', '/data/cms-image/demo/1233.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 2, 'active', 1, 1, '2022-08-05 08:58:04', '2022-09-13 07:35:29'),
(97, 241, '#1', NULL, NULL, 'cms_resource', '{\"layout\":null,\"style\":null}', '/data/cms-image/demo/demo.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2022-08-05 08:58:04', '2022-09-13 07:36:29'),
(103, 241, '#4', NULL, NULL, 'cms_resource', '{\"layout\":null,\"style\":null}', '/data/cms-image/demo/demo.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 4, 'active', 1, 1, '2022-08-05 09:17:04', '2022-09-13 07:36:51'),
(104, 241, '#3', NULL, NULL, 'cms_resource', '{\"layout\":null,\"style\":null}', '/data/cms-image/demo/1233.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 3, 'active', 1, 1, '2022-08-05 09:17:04', '2022-09-13 07:35:32'),
(286, 74, '#2', NULL, NULL, 'banner', '{\"layout\":null,\"style\":null}', 'https://cms.mars-ways.com/uploads/photos/banner/252439177_368170538389309_1938840243787974099_n.jpg', 'https://cms.mars-ways.com/uploads/photos/banner/252439177_368170538389309_1938840243787974099_n.jpg', NULL, NULL, NULL, NULL, NULL, 1, 'delete', 1, 1, '2022-11-07 15:54:33', '2022-12-29 03:01:18'),
(287, 74, '#1', NULL, 'Digital Agency <span>Solutions</span>', 'banner', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/logo_new_light.png', '/data/cms-image/1/hero.jpg', NULL, NULL, NULL, NULL, NULL, 1, 'delete', 1, 1, '2022-11-07 15:54:33', '2022-12-29 03:57:50'),
(289, 79, 'ĐỘI NGŨ CHUYÊN NGHIỆP', 'Proactively matrix go forward manufactured products before premium innovation. Collaboratively fashion.', NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/Screenshot_20.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'delete', 1, 1, '2022-11-15 07:55:34', '2022-12-29 04:50:29'),
(290, 79, 'SẢN PHẨM THƯƠNG HIỆU', 'Distinctively initiate alternative information with bricks-and-clicks e-commerce. Quickly evolve superior.', NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/Screenshot_17.png', NULL, NULL, NULL, NULL, NULL, NULL, 3, 'delete', 1, 1, '2022-11-15 07:56:51', '2022-12-29 04:51:23'),
(291, 79, 'GIÀU KINH NGHIỆM', 'Dynamically transition seamless metrics after premium e-business. Phosfluorescently parallel task distinctive.', NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/Screenshot_18.png', NULL, NULL, NULL, NULL, NULL, NULL, 2, 'delete', 1, 1, '2022-11-15 07:56:53', '2022-12-29 04:50:54'),
(292, 293, 'Chính trực', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/icon/i-sec-3-1.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'delete', 1, 1, '2022-11-15 07:56:54', '2022-12-29 06:55:38'),
(293, NULL, 'Dịch vụ nổi bật', NULL, NULL, 'cms_service', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'delete', 1, 1, '2022-11-15 07:57:15', '2023-04-06 09:42:59'),
(294, 293, 'Tuân thủ', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/icon/i-sec-3-4.png', NULL, NULL, NULL, NULL, NULL, NULL, 4, 'delete', 1, 1, '2022-11-15 07:59:00', '2022-12-29 06:55:26'),
(295, 293, 'Công bằng', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/icon/i-sec-3-3.png', NULL, NULL, NULL, NULL, NULL, NULL, 3, 'delete', 1, 1, '2022-11-15 07:59:02', '2022-12-29 06:55:30'),
(296, 293, 'Tôn trọng', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/icon/i-sec-3-2.png', NULL, NULL, NULL, NULL, NULL, NULL, 2, 'delete', 1, 1, '2022-11-15 07:59:03', '2022-12-29 06:55:34'),
(297, 293, 'Đạo đức', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/icon/i-sec-3-5.png', NULL, NULL, NULL, NULL, NULL, NULL, 5, 'delete', 1, 1, '2022-11-15 07:59:05', '2022-12-29 06:55:15'),
(299, NULL, 'KHÁCH HÀNG HÀI LÒNG', NULL, NULL, 'custom', '{\"layout\":\"about_development\",\"style\":null}', '/data/cms-image/1/Group 3.png', '/data/cms-image/1/bg2.jpg', NULL, NULL, NULL, NULL, NULL, 8, 'delete', 1, 1, '2022-11-15 10:36:53', '2023-01-09 09:06:48'),
(300, 299, 'Top 500 doanh nghiệp', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/client/logo-02-(2).png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'delete', 1, 1, '2022-11-15 10:39:21', '2022-12-29 09:10:40'),
(301, 320, 'JOHN DOE', 'XYZ Inc.', 'Compellingly engage multimedia based niche markets via value-added manufactured products. Competently formulate goal-oriented content for installed base users. Uniquely leverage other\'s granular ROI without 24/365 collaboration and idea-sharing.', 'custom', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2022-11-15 10:39:23', '2022-12-29 10:13:23'),
(302, 320, 'COLLIS TA\'EED', 'Envato Inc.', 'Intrinsicly synergize excellent content whereas user friendly action items. Rapidiously transition multimedia based information after top-line alignments. Proactively e-enable front-end e-commerce without mission-critical customer service.', 'custom', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'active', 1, 1, '2022-11-15 10:39:25', '2022-12-29 10:13:22'),
(303, 320, 'Steve Jobs', 'Apple Inc.', 'Collaboratively enhance intermandated innovation via cutting-edge core competencies. Professionally extend covalent e-markets and mission-critical communities. Dramatically communicate revolutionary web services for interactive synergy. Synergistically.', 'custom', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'active', 1, 1, '2022-11-15 10:39:27', '2022-12-29 10:13:20'),
(304, 79, 'THỜI GIAN TIẾT KIỆM', 'Holisticly fashion cooperative ROI without unique intellectual capital. Synergistically engage orthogonal.', NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/Screenshot_16.png', NULL, NULL, NULL, NULL, NULL, NULL, 4, 'delete', 1, 1, '2022-12-29 04:51:59', '2022-12-29 05:00:57'),
(305, 79, 'DỊCH VỤ CHU ĐÁO', 'Monotonectally evisculate high standards in best practices before exceptional web-readiness. Competently.', NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/Screenshot_15.png', NULL, NULL, NULL, NULL, NULL, NULL, 5, 'delete', 1, 1, '2022-12-29 04:52:36', '2022-12-29 05:01:09'),
(306, 82, 'Cắt tóc', '$39', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt quos harum officia eaque nobis ut.', 'custom', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'delete', 1, 1, '2022-12-29 07:43:12', '2022-12-29 07:46:58'),
(307, 82, 'Gội đầu', '$39', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt quos harum officia eaque nobis ut.', 'custom', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'delete', 1, 1, '2022-12-29 07:43:12', '2022-12-29 07:49:13'),
(308, 82, 'Cạo râu', '$39', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt quos harum officia eaque nobis ut.', 'custom', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'delete', 1, 1, '2022-12-29 07:43:12', '2022-12-29 07:49:09'),
(309, 82, 'Nhuộm tóc', '$39', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt quos harum officia eaque nobis ut.', 'custom', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'delete', 1, 1, '2022-12-29 07:43:12', '2022-12-29 07:49:07'),
(310, 82, 'Tỉa râu', '$39', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt quos harum officia eaque nobis ut.', 'custom', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'delete', 1, 1, '2022-12-29 07:43:12', '2022-12-29 07:49:05'),
(311, 82, 'Tỉa ria', '$39', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt quos harum officia eaque nobis ut.', 'custom', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 'delete', 1, 1, '2022-12-29 07:43:12', '2022-12-29 07:49:03'),
(312, 82, 'Làm sạch da', '$39', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt quos harum officia eaque nobis ut.', 'custom', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 'delete', 1, 1, '2022-12-29 07:43:12', '2022-12-29 07:49:01'),
(313, 82, 'Massage đầu', '$39', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt quos harum officia eaque nobis ut.', 'custom', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 'delete', 1, 1, '2022-12-29 07:43:12', '2022-12-29 07:48:55'),
(314, NULL, 'Sản phẩm', NULL, NULL, 'cms_product', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, '/san-pham', 'Xem tất cả', NULL, NULL, 5, 'delete', 1, 1, '2022-12-29 08:12:42', '2023-07-03 17:26:07'),
(315, 299, 'Khối hình ảnh', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'delete', 1, 1, '2022-12-29 09:40:51', '2022-12-29 10:13:38'),
(316, 315, 'img', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/cl1.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 1, '2022-12-29 09:44:50', '2022-12-29 09:45:03'),
(317, 315, 'img', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/cl2.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 1, '2022-12-29 10:08:25', '2022-12-29 10:08:25'),
(318, 315, 'img', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/cl3.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 1, '2022-12-29 10:08:46', '2022-12-29 10:08:46'),
(319, 315, 'img', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/cl4.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 1, '2022-12-29 10:09:08', '2022-12-29 10:36:26'),
(320, 299, 'Nhóm ý kiến', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'delete', 1, 1, '2022-12-29 10:12:50', '2022-12-29 10:13:54'),
(321, 315, 'img', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/cl4.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 1, '2022-12-29 10:25:25', '2022-12-29 10:25:25'),
(322, 315, 'img', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/cl5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 1, '2022-12-29 10:25:27', '2022-12-29 10:25:27'),
(323, 315, 'img', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/cl6.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 1, '2022-12-29 10:25:31', '2022-12-29 10:25:31'),
(324, 315, 'img', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/cl7.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 1, '2022-12-29 10:25:35', '2022-12-29 10:25:35'),
(325, 315, 'img', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/cl8.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 1, '2022-12-29 10:25:37', '2022-12-29 10:25:37'),
(326, 315, 'img', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/cl9.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 1, '2022-12-29 10:25:39', '2022-12-29 10:25:39'),
(327, NULL, 'ĐỘI NGŨ CHUYÊN NGHIỆP', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius, esse eum doloremque deleniti nam voluptatem.', NULL, 'custom', '{\"layout\":\"about_client\",\"style\":null}', '/data/cms-image/1/S_15.png', NULL, NULL, NULL, NULL, NULL, NULL, 9, 'delete', 1, 1, '2022-12-29 10:39:15', '2023-01-09 09:06:56'),
(328, 327, 'JOHN DOE', 'Expert', NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/bb1.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'delete', 1, 1, '2022-12-29 10:41:05', '2022-12-29 13:22:38'),
(329, 327, 'MARY JANE', 'Junior Barber', NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/bb3.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'delete', 1, 1, '2022-12-29 13:22:19', '2022-12-29 13:22:19'),
(330, 327, 'JOSH THOMPSON', 'Barber', NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/bb2.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'delete', 1, 1, '2022-12-29 13:22:20', '2022-12-29 13:22:20'),
(331, NULL, '2222', '5252', '252', 'banner', '{\"layout\":\"slide\",\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'delete', 1, 1, '2023-01-07 01:22:19', '2023-01-07 02:13:17'),
(332, 74, 'Chào mừng tới', '<span>YOGA</span> STUDIO', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'banner', '{\"video\":\"https:\\/\\/www.youtube.com\\/watch?v=PiLjubTovcs\"}', NULL, NULL, 'far  fa-play-circle', NULL, NULL, NULL, NULL, 2, 'delete', 1, 1, '2023-01-07 02:16:13', '2023-08-07 03:17:53'),
(333, 74, 'img', NULL, NULL, 'banner', '{\"layout\":\"slide\",\"style\":null}', '/data/cms-image/Images/slider_2.png', '/data/cms-image/Images/slider_2.png', NULL, NULL, NULL, NULL, NULL, 2, 'delete', 1, 1, '2023-01-07 02:17:00', '2023-07-03 03:39:48'),
(334, 74, 'img', NULL, NULL, 'banner', '{\"layout\":\"slide\",\"style\":null}', '/data/cms-image/Images/slider_3.png', '/data/cms-image/Images/slider_3.png', NULL, NULL, NULL, NULL, NULL, 3, 'delete', 1, 1, '2023-01-07 02:17:37', '2023-07-03 03:39:42'),
(335, NULL, 'Thuộc tính tìm kiếm', NULL, NULL, 'cms_search', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'delete', 1, 1, '2023-01-09 03:51:01', '2023-04-06 09:42:55'),
(336, NULL, 'Ưu đãi đặc biệt cho hợp đồng thuê và cho thuê biệt thự dài hạn', NULL, NULL, 'banner', '{\"layout\":\"contact\",\"style\":null}', NULL, NULL, NULL, '/lien-he', 'Liên hệ ngay', NULL, NULL, 6, 'delete', 1, 1, '2023-01-09 08:26:45', '2023-04-06 09:42:45'),
(337, NULL, 'Địa điểm nổi bật', NULL, NULL, 'cms_resource', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 'delete', 1, 1, '2023-01-09 09:06:12', '2023-04-06 09:43:12'),
(338, NULL, 'NHỮNG CỘNG SỰ CỦA CHÚNG TA', 'Chúng tôi mong muốn tạo 1 nơi làm việc để từng CÁ NHÂN được phát triển TỐT NHẤT CÓ THỂ theo bản sắc riêng biệt và tạo ra những giá trị nuôi dưỡng cho nhau thành 1 HỆ SINH THÁI', NULL, 'banner', '{\"layout\":\"branch\",\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 'delete', 1, 1, '2023-01-09 10:45:14', '2023-04-06 09:43:32'),
(339, 338, 'img', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/dt4.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'delete', 1, 1, '2023-01-09 10:48:17', '2023-02-03 08:37:57'),
(340, 338, 'img', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/dt3.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'delete', 1, 1, '2023-01-09 10:48:23', '2023-02-03 08:37:59'),
(341, 338, 'img', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/dt2.png', NULL, NULL, '#', NULL, NULL, NULL, NULL, 'delete', 1, 1, '2023-01-09 10:48:26', '2023-02-18 01:47:08'),
(342, 338, 'img', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/dt1.png', NULL, NULL, '#', NULL, NULL, NULL, NULL, 'delete', 1, 1, '2023-01-09 10:48:28', '2023-02-18 01:47:08'),
(343, 338, 'img', NULL, NULL, 'banner', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/dt4.png', NULL, NULL, '#', NULL, NULL, NULL, NULL, 'delete', 1, 1, '2023-01-09 13:40:37', '2023-02-18 01:47:09'),
(344, 338, 'img', NULL, NULL, 'banner', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/dt3.png', NULL, NULL, '#', NULL, NULL, NULL, NULL, 'delete', 1, 1, '2023-01-09 13:41:51', '2023-02-18 01:47:10'),
(345, 338, 'img', NULL, NULL, 'banner', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/dt2.png', NULL, NULL, '#', NULL, NULL, NULL, NULL, 'delete', 1, 1, '2023-01-09 13:41:54', '2023-02-18 01:47:11'),
(346, 338, 'img', NULL, NULL, 'banner', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/dt1.png', NULL, NULL, '#', NULL, NULL, NULL, NULL, 'delete', 1, 1, '2023-01-09 13:41:56', '2023-02-18 01:46:22'),
(347, NULL, 'Về chúng tôi', NULL, NULL, 'banner', '{\"layout\":\"image\",\"style\":null}', '/data/cms-image/1/bg_about.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 8, 'delete', 1, 1, '2023-02-03 07:41:29', '2023-04-06 09:43:24'),
(348, NULL, 'Tin tức', NULL, NULL, 'cms_post', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 'delete', 1, 1, '2023-02-03 08:01:26', '2023-07-03 17:26:10'),
(349, NULL, 'CHÚNG TA LÀM GÌ', NULL, NULL, 'custom', '{\"layout\":\"about_us\",\"style\":null}', '/data/cms-image/1/bg_about1.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 10, 'delete', 1, 1, '2023-02-03 09:01:30', '2023-04-06 09:43:30'),
(350, 349, 'Cách chúng tôi trả lời', NULL, 'Hỗ trợ khách hàng mọi lúc, mọi nơi 24/7', 'custom', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'delete', 1, 1, '2023-02-03 09:09:03', '2023-02-18 02:27:26'),
(351, 349, 'Thuê nhà', NULL, 'Thông tin thuê, mua đa dạng, phù hợp với mọi đối tượng có nhu cầu về chỗ ở', 'custom', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'delete', 1, 1, '2023-02-03 09:09:30', '2023-02-18 02:28:39'),
(352, 349, 'Cần một không gian văn phòng', NULL, 'Cung cấp văn phòng thên toàn quốc, đảm bảo nhu cầu thuê, mua văn phòng của các cty, doanh nghiệp lớn và nhỏ', 'custom', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'delete', 1, 1, '2023-02-03 09:10:58', '2023-02-18 02:30:03'),
(353, 349, 'Bán nhà', NULL, 'Dịch vụ bán nhà trên toàn quốc với thủ tục pháp lý nhang gọn, uy tín', 'custom', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'delete', 1, 1, '2023-02-03 09:11:00', '2023-02-18 02:31:05'),
(354, 349, 'Giá của chúng tôi', NULL, 'Cam kết giá phù hợp với nhu cầu, khả năng của người đi thuê, mua và người cho thuê, bán', 'custom', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'delete', 1, 1, '2023-02-03 09:11:02', '2023-02-18 02:33:08'),
(355, NULL, 'ĐỘI CỦA CHÚNG TÔI', 'Làm việc nhóm là khả năng làm việc cùng nhau hướng đến tầm nhìn chung. Là khả năng dẫn dắt những thành tích cá nhân vì các mục tiêu của tổ chức. Đây là nguồn nhiên liệu giúp những người bình thường có thể đạt được những kết quả phi thường.', NULL, 'custom', '{\"layout\":\"about_client\",\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, 'delete', 1, 1, '2023-02-03 09:26:28', '2023-04-06 09:43:27'),
(356, 355, 'PELICAN STEVE', 'Quản trị văn phòng', 'Xóa bỏ đầu tư trung thực lý thuyết khả năng tiếp cận nhân quyền về thay đổi xã hội.', 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/u4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 4, 'delete', 1, 1, '2023-02-03 09:30:01', '2023-02-03 09:30:01'),
(357, 355, 'PIFF JENKINS', 'Quản lý tài sản cao cấp', 'Giảm lượng khí thải carbon mang lại, hợp pháp hóa khuếch đại Aga Khan phi đảng phái. Chuyên gia đánh giá đối thoại chính sách.', 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/u3.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 3, 'delete', 1, 1, '2023-02-03 09:30:03', '2023-02-03 09:30:03'),
(358, 355, 'NIX MAXWELL', 'Giám đốc / Giấy phép', 'Xóa bỏ đầu tư trung thực lý thuyết khả năng tiếp cận nhân quyền về thay đổi xã hội. Đa dạng kinh nghiệm trong lĩnh vực nhân ái, truyền cảm hứng đột phá lên kế hoạch.', 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/u2.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 2, 'delete', 1, 1, '2023-02-03 09:30:05', '2023-02-03 09:30:05'),
(359, 355, 'WEIR DOE', 'Tư vấn bất động sản', 'Giảm lượng khí thải carbon mang lại, hợp pháp hóa khuếch đại Aga Khan phi đảng phái. Đối thoại chính sách đánh giá tự do ngôn luận nền tảng tự do của chuyên gia.', 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/1/u1.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'delete', 1, 1, '2023-02-03 09:30:08', '2023-02-03 09:30:08'),
(360, NULL, 'Liên hệ', NULL, NULL, 'banner', '{\"layout\":\"image\",\"style\":null}', '/data/cms-image/1/bg_lh.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 8, 'delete', 1, 1, '2023-02-04 01:29:03', '2023-04-06 09:43:20'),
(361, NULL, 'Khối hình ảnh nội dung liên hệ', NULL, NULL, 'banner', '{\"layout\":\"contactImg\",\"style\":null}', '/data/cms-image/1/img_contact.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 7, 'delete', 1, 1, '2023-02-04 01:40:24', '2023-04-06 09:45:26'),
(362, NULL, 'Tìm kiếm', NULL, NULL, 'banner', '{\"layout\":\"search\",\"style\":null}', '/data/cms-image/1/bg_sp.jpg', '/data/cms-image/1/bg_sp.jpg', NULL, NULL, NULL, NULL, NULL, 8, 'delete', 1, 1, '2023-02-09 03:04:28', '2023-04-06 09:43:16'),
(363, NULL, 'Danh mục sản phẩm nổi bật', NULL, NULL, 'cms_taxonomy_product', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'delete', 1, 1, '2023-04-06 09:46:40', '2023-07-03 09:43:59'),
(364, NULL, 'Banner', NULL, NULL, 'banner', '{\"layout\":\"image\",\"style\":null}', '/data/cms-image/Images/bg_feedback.png', NULL, NULL, NULL, NULL, NULL, NULL, 6, 'delete', 1, 1, '2023-04-07 02:16:49', '2023-07-03 09:43:47'),
(365, NULL, 'Tìm hiểu thêm', 'Theo dõi Yoga Studio trên Instagram, Facebook, Youtube', NULL, 'banner', '{\"layout\":\"video_social\",\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 'delete', 1, 1, '2023-04-07 02:58:21', '2023-08-05 02:34:54'),
(366, 365, 'img', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/Images/img_intro_1.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'delete', 1, 1, '2023-04-07 02:59:14', '2023-07-03 15:51:56'),
(367, 365, 'img', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/Images/img_intro_2.png', NULL, NULL, NULL, NULL, NULL, NULL, 2, 'delete', 1, 1, '2023-04-07 03:01:03', '2023-07-03 15:52:04'),
(368, 365, 'img', NULL, NULL, 'custom', '{\"layout\":null,\"style\":null}', '/data/cms-image/Images/img_intro_3.png', NULL, NULL, NULL, NULL, NULL, NULL, 3, 'delete', 1, 1, '2023-04-07 03:01:21', '2023-07-03 15:53:37'),
(369, NULL, 'MAISON LUXURY - GIỚI THIỆU THƯƠNG HIỆU', NULL, '<p><strong>THE BEST VIETNAM\'S PRODUCTS - NHỮNG SẢN PHẨM TỐT NHẤT ĐẾN TỪ VIỆT NAM</strong></p>\r\n\r\n<p>MAISON LUXURY - QUÀ TẾT SANG TRỌNG, Ý NGHĨA VÀ SỨC KHỎE Maison Luxury, thương hiệu quà tặng được thành lập và hoạt động dựa theo những tiêu chí: “Quà Tết Độc Đáo – Nội Dung Ý Nghĩa – Sản Phẩm Sức Khỏe”. Chúng tôi dành rất nhiều thời gian cho công việc tìm hiều, nghiên cứu các sản phẩm mới, lê ý tưởng cũng như chăm chút tỉ mỉ cho từng đường nét thiết kế trên mỗi hộp quà để đưa tới thị trường những bộ sản phẩm độc đáo, tạo khác biệt nhưng vẫn đảm bảo chất lượng và nội dung ý nghĩa.</p>\r\n\r\n<p><img data-thumb=\"original\" original-height=\"459\" original-width=\"2048\" src=\"https://bizweb.dktcdn.net/100/421/095/files/banner-trung-thu-banh-32173698405244e5b6d9a203326c10ac.jpg?v=1665722173127\" /></p>\r\n\r\n<p>Tại Maison Luxury, mỗi một sản phẩm quà tết với khách hàng là thành quả của sự chăm chỉ trong suốt 365 ngày lao động. Với mong muốn xây dựng thương hiệu quà tết đậm đà bản sắc Việt Nam, chúng tôi lựa chọn tạo ra các sản phẩm được làm từ nông sản Việt. Chúng tôi tin rằng với lợi thế về địa lý, tự nhiên và sự đa dạng trong các sản vật nông sản, bộ sản phẩm Maison Luxury sẽ là món quà độc đáo và ý nghĩa gửi đến khách hàng.</p>\r\n\r\n<p>Bên cạnh những sản phẩm đã được cam kết về chất lượng, những thiết kế bao bì cũng được chúng tôi dành nhiều thời gian để chăm sóc và hoàn thiện. Toàn bộ các sản phẩm Maison Luxury từ hộp quà, túi quà cho đến các sản phẩm bên trong đều được chúng tôi thiết kế để tạo sự khác biệt, đồng bộ so với thị trường, các hiệu ứng in ấn cũng được sử dung tinh tế, nghệ thuật để làm nổi bật nét sang trọng trên mỗi hộp quà. Với hơn 40 thiết kế, Maison đã vẽ nên 1 bức tranh về mùa xuân với những hình ảnh đa dạng và sống động về ngày tết trên mọi miền Tổ quốc. Mỗi bức tranh sẽ là một câu chuyện ý nghĩa mà chúng tôi gửi gắm để trao tặng đến mọi người.</p>\r\n\r\n<p><img data-thumb=\"original\" original-height=\"450\" original-width=\"600\" src=\"https://bizweb.dktcdn.net/100/421/095/files/qua-tet-doanh-nghiep-maison-luxury-03-1.jpg?v=1665983135677\" /></p>\r\n\r\n<p>Đặc biệt, Maison Luxury cũng cung cấp,&nbsp;hỗ trợ những dịch vụ đặc biệt, những giải pháp quà tặng phù hợp với mọi yêu cầu cho khách hàng doanh nghiệp:</p>\r\n\r\n<p>- Thiết kế, in ấn hộp quà theo logo, màu sắc nhận diện thương hiêu khách hàng</p>\r\n\r\n<p>- Quà tặng thiệp, lì xì có logo khách hàng doanh nghiệp</p>\r\n\r\n<p>- Dịch vụ giao hàng toàn quốc</p>\r\n\r\n<p>- Đa dạng những giải pháp quà tặng được “cá nhân hoá” phù hợp với yêu cầu khách hàng</p>\r\n\r\n<p>Maison Luxury tin rằng, mỗi sản phẩm của chúng tôi sẽ là món quà, là lời chúc ý nghĩa để trao tặng đế khách hàng.</p>\r\n\r\n<section>\r\n<p><img data-thumb=\"original\" original-height=\"1200\" original-width=\"1200\" src=\"https://bizweb.dktcdn.net/100/421/095/products/hop-qua-mua-xuan-luxyry-3.jpg?v=1665481435667\" /></p>\r\n</section>\r\n\r\n<footer>\r\n<section>\r\n<p>&nbsp;</p>\r\n</section>\r\n</footer>', 'custom', '{\"layout\":\"about_us\",\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 'delete', 1, 1, '2023-04-10 09:22:10', '2023-07-03 09:43:51'),
(370, NULL, '<span class=\"font-playball\">Đến</span>  <span class=\"green\"> YOGA</span> STUDIO', NULL, 'Chúng tôi cung cấp các lớp học Yoga lợi ích toàn diện với phương pháp luyện tập hiệu quả, dễ dàng. Tại yoga studio mọi người có thể tiếp cận và sở hữu Yoga như một công cụ nuôi dưỡng và kết nối&nbsp;<span style=\"color:#25ab75;\">THÂN – TÂM – TRÍ.</span>', 'custom_link', '{\"layout\":\"default\",\"style\":null,\"url_link\":\"\\/gioi-thieu\",\"url_link_title\":\"T\\u00ecm hi\\u1ec3u th\\u00eam\"}', '/data/cms-image/Images/anh_doi.png', '/data/cms-image/Images/bg_nguoi.png', NULL, '/khoa-hoc', 'Đăng ký tập thử', NULL, NULL, 2, 'delete', 1, 1, '2023-07-03 09:55:14', '2023-08-05 02:34:39'),
(371, 74, 'alo44412312', '12313', '123123', 'banner_video', '{\"video\":\"123123\"}', '/data/cms-image/Images/banner2_mb.png', NULL, '213', '1231', '123132123123', NULL, NULL, 3, 'delete', 1, 1, '2023-07-03 10:44:35', '2023-07-03 15:34:51'),
(372, 74, '221', '123123', '123123', 'banner_video', NULL, '/data/cms-image/Images/banner4.png', '/data/cms-image/Images/banner.png', 'fa', '1213', '#ffff', NULL, NULL, 1, 'delete', 1, 1, '2023-07-03 10:55:40', '2023-07-03 15:35:06'),
(373, 365, 'Instagram', '<span class\"green\">YOGA</span> STYDIO', NULL, 'banner', '{\"video\":null}', '/data/cms-image/icon/logo_intagram.png', NULL, NULL, '/lien-ket', 'Xem tiếp', NULL, NULL, 1, 'delete', 1, 1, '2023-07-03 15:55:46', '2023-07-11 08:00:06'),
(374, 365, 'Facebook', '<span class\"green\">YOGA</span> STYDIO', NULL, 'banner', '{\"video\":null}', '/data/cms-image/icon/logo_facebook.png', NULL, NULL, '/lien-ket', 'Xem tiếp', NULL, NULL, 3, 'delete', 1, 1, '2023-07-03 15:57:05', '2023-07-11 07:59:59'),
(375, 365, 'Youtube', '<span class\"green\">YOGA</span> STYDIO', NULL, 'banner', '{\"video\":null}', '/data/cms-image/icon/logo_youtube.png', NULL, NULL, '/lien-ket', 'Xem tiếp', NULL, NULL, 2, 'delete', 1, 1, '2023-07-03 15:57:32', '2023-07-11 08:00:14'),
(376, 373, 'video Ins', NULL, NULL, 'banner', '{\"video\":\"<iframe width=\\\"560\\\" height=\\\"315\\\" src=\\\"https:\\/\\/www.youtube.com\\/embed\\/fZZo2nq8UlY\\\" title=\\\"YouTube video player\\\" frameborder=\\\"0\\\" allow=\\\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\\\" allowfullscreen><\\/iframe>\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2023-07-03 16:01:10', '2023-07-03 16:03:15'),
(377, 373, 'video ins', NULL, NULL, 'banner', '{\"video\":\"<iframe width=\\\"560\\\" height=\\\"315\\\" src=\\\"https:\\/\\/www.youtube.com\\/embed\\/fZZo2nq8UlY\\\" title=\\\"YouTube video player\\\" frameborder=\\\"0\\\" allow=\\\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\\\" allowfullscreen><\\/iframe>\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'active', 1, 1, '2023-07-03 16:01:26', '2023-07-03 16:03:15'),
(378, 374, 'video f', '<span class\"green\">YOGA</span> STYDIO', NULL, 'banner', '{\"layout\":null,\"style\":null,\"video\":\"<iframe loading=\\\"lazy\\\" width=\\\"560\\\" height=\\\"315\\\" src=\\\"https:\\/\\/www.youtube.com\\/embed\\/fZZo2nq8UlY\\\" title=\\\"YouTube video player\\\" frameborder=\\\"0\\\" allow=\\\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\\\" allowfullscreen><\\/iframe>\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2023-07-03 16:01:45', '2023-07-10 08:55:29'),
(379, 374, 'video f', NULL, NULL, 'banner', '{\"video\":\"<iframe loading=\\\"lazy\\\"  width=\\\"560\\\" height=\\\"315\\\" src=\\\"https:\\/\\/www.youtube.com\\/embed\\/fZZo2nq8UlY\\\" title=\\\"YouTube video player\\\" frameborder=\\\"0\\\" allow=\\\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\\\" allowfullscreen><\\/iframe>\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'active', 1, 1, '2023-07-03 16:01:55', '2023-07-03 16:03:15'),
(380, 375, 'video y', NULL, NULL, 'banner', '{\"video\":\"<iframe loading=\\\"lazy\\\" width=\\\"560\\\" height=\\\"315\\\" src=\\\"https:\\/\\/www.youtube.com\\/embed\\/fZZo2nq8UlY\\\" title=\\\"YouTube video player\\\" frameborder=\\\"0\\\" allow=\\\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\\\" allowfullscreen><\\/iframe>\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2023-07-03 16:02:06', '2023-07-03 16:03:15'),
(381, 375, 'video y', NULL, NULL, 'banner', '{\"video\":\"<iframe loading=\\\"lazy\\\"  width=\\\"560\\\" height=\\\"315\\\" src=\\\"https:\\/\\/www.youtube.com\\/embed\\/fZZo2nq8UlY\\\" title=\\\"YouTube video player\\\" frameborder=\\\"0\\\" allow=\\\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\\\" allowfullscreen><\\/iframe>\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'active', 1, 1, '2023-07-03 16:02:15', '2023-07-03 16:03:15'),
(382, NULL, 'Khối dịch vụ', NULL, NULL, 'custom', '{\"layout\":\"core_value\",\"style\":null}', '/data/cms-image/Images/ngoi_thien.png', NULL, NULL, NULL, NULL, NULL, NULL, 3, 'delete', 1, 1, '2023-07-03 16:23:08', '2023-08-05 02:34:50'),
(383, 382, 'Giáo trình giảng dạy', NULL, NULL, 'custom', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'delete', 1, 1, '2023-07-03 16:23:45', '2023-07-03 16:25:33'),
(384, 382, 'Dịch vụ chất lượng', NULL, NULL, 'custom', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'delete', 1, 1, '2023-07-03 16:23:57', '2023-07-03 16:25:33'),
(385, 382, 'Thời gian linh hoạt', NULL, NULL, 'custom', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'delete', 1, 1, '2023-07-03 16:24:44', '2023-07-03 16:25:33'),
(386, 382, 'Học phí hợp lý tiết kiệm', NULL, NULL, 'custom', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'delete', 1, 1, '2023-07-03 16:25:01', '2023-07-03 16:25:33'),
(387, NULL, 'Cảm  nhận từ học viên', '<span class\"green\">YOGA</span> STUDIO luôn là lựa chọn hàng đầu của bạn', NULL, 'banner', '{\"layout\":\"video\",\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'delete', 1, 1, '2023-07-03 17:25:49', '2023-08-05 02:34:51'),
(388, 387, 'video', NULL, NULL, 'banner', '{\"video\":\"<iframe  loading=\\\"lazy\\\" width=\\\"560\\\" height=\\\"315\\\" src=\\\"https:\\/\\/www.youtube.com\\/embed\\/pyfqENlmSQs\\\" title=\\\"YouTube video player\\\" frameborder=\\\"0\\\" allow=\\\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\\\" allowfullscreen><\\/iframe>\"}', NULL, NULL, NULL, '/lien-ket', 'Xem tiếp', NULL, NULL, NULL, 'delete', 1, 1, '2023-07-03 17:34:42', '2023-07-11 08:00:42'),
(389, 387, 'video', NULL, NULL, 'banner', '{\"video\":\"<iframe  loading=\\\"lazy\\\" width=\\\"560\\\" height=\\\"315\\\" src=\\\"https:\\/\\/www.youtube.com\\/embed\\/pyfqENlmSQs\\\" title=\\\"YouTube video player\\\" frameborder=\\\"0\\\" allow=\\\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\\\" allowfullscreen><\\/iframe>\"}', NULL, NULL, NULL, '/lien-ket', 'Xem tiếp', NULL, NULL, NULL, 'delete', 1, 1, '2023-07-03 17:34:51', '2023-07-11 08:00:36'),
(390, NULL, 'Một chút trải nghiệm', 'Hãy gửi cho chúng tôi các thông tin câu hỏi cần tư vấn', 'Hãy để lại tên và số điện thoại của bạn để chúng tôi thông báo đến bạn nhanh nhất', 'form', '{\"layout\":\"booking\",\"style\":null}', NULL, '/data/cms-image/Images/bg_trainghiem.png', NULL, NULL, NULL, NULL, NULL, 6, 'delete', 1, 1, '2023-07-04 02:32:03', '2023-08-05 02:34:53'),
(391, NULL, 'Các khóa học', 'Lựa chọn gói tập luyện phù hợp với nhu cầu, địa điểm và ngân sách của bạn', NULL, 'cms_product', '{\"layout\":null,\"style\":null}', NULL, '/data/cms-image/Images/bg_nui.png', NULL, NULL, NULL, NULL, NULL, 4, 'delete', 1, 1, '2023-07-04 07:48:29', '2023-08-05 02:34:46'),
(392, NULL, 'Khối nội dung chính', NULL, NULL, 'main', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'delete', 1, 1, '2023-07-04 08:56:24', '2023-07-04 08:57:26'),
(393, NULL, 'Giới thiệu', '<span class=\"font-playball white\">Giới thiệu</span>\r\n<span class=\"white\">YOGA</span> STUDIO', NULL, 'banner', '{\"layout\":\"banner_image\",\"style\":null}', '/data/cms-image/Images/banner2_mb.png', '/data/cms-image/Images/banner2.png', NULL, NULL, NULL, NULL, NULL, 10, 'delete', 1, 1, '2023-07-05 02:21:35', '2023-08-05 02:34:55'),
(394, NULL, 'Khối nội dung dưới slide', NULL, NULL, 'custom', '{\"layout\":\"about_us\",\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, 'delete', 1, 1, '2023-07-05 02:27:43', '2023-08-05 02:34:56'),
(395, 394, 'Block 1', 'CHÚNG TÔI LUÔN LÀM\r\n<span class=\"font-playball green\">Hài lòng Khách hàng</span>', 'Chúng tôi tạo một thiên đường Yoga đích thực với sự chuyên nghiệp cùng chất lượng, dịch vụ vượt trội giúp bạn loại bỏ căng thẳng, tăng cường sức khoẻ và cải thiện chất lượng cuộc sống mỗi ngày!\r\n\r\nYoga studio là trung tâm Yoga uy tín, mang đến năng lượng tích cực cho người tập. không gian lớp học thư giãn ấm cúng và giáo viên thân thiện. Bạn sẽ được thư giãn gắn kết sau một ngày dài làm việc.', 'custom', '{\"style\":null}', '/data/cms-image/Images/img_gt1.png', '/data/cms-image/Images/bg_gt1.png', NULL, NULL, '/data/cms-image/Images/bg_gt1.png', NULL, NULL, 1, 'delete', 1, 1, '2023-07-05 02:47:18', '2023-07-05 03:35:06'),
(397, 394, 'Block 2', 'LỚP HỌC\r\n<span class=\"green\">YOGA STUDIO</span>', 'Lớp học yoga studio thoáng mát, rộng rãi, được thiết kế với những lớp tập đa dạng, phù hợp với mọi lứa tuổi học viên.', 'custom', '{\"style\":\"flex-lg-row-reverse\"}', '/data/cms-image/Images/img_gt2.png', '/data/cms-image/Images/bg_gt2.png', NULL, NULL, NULL, NULL, NULL, 2, 'delete', 1, 1, '2023-07-05 03:19:50', '2023-07-05 03:33:35'),
(398, 394, 'Block 3', 'KHÔNG GIAN\r\n<span class=\"green\">YOGA STUDIO</span>', 'Không gian yoga studio được thiết kế theo phong cách mộc mang đậm hơi thở thiên nhiên đem lại cảm giác thư giãn, thoải mái.', 'custom', '{\"style\":null}', '/data/cms-image/Images/img_gt3.png', '/data/cms-image/Images/bg_gt3.png', NULL, NULL, NULL, NULL, NULL, 3, 'delete', 1, 1, '2023-07-05 03:22:32', '2023-07-05 03:33:53'),
(399, NULL, 'LIÊN HỆ', 'Bạn cần hỗ trợ liên hệ Yoga Studio ngay!', NULL, 'custom', '{\"layout\":\"about_client\",\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, 'delete', 1, 1, '2023-07-05 09:48:19', '2023-08-05 02:34:57'),
(400, 399, 'Facebook', '8:00 - 21:00', 'Mon - Sun', 'custom', '{\"style\":null}', '/data/cms-image/icon/ic_contact_mess.png', NULL, NULL, '#', 'Inbox', NULL, NULL, 1, 'delete', 1, 1, '2023-07-05 10:00:18', '2023-07-05 10:27:07'),
(401, 399, 'Zalo', '8:00 - 21:00', 'Mon - Sun', 'custom', '{\"style\":null}', '/data/cms-image/icon/ic_contact_zalo.png', NULL, NULL, 'tel:0963 636 363', '0963 636 363', NULL, NULL, 2, 'delete', 1, 1, '2023-07-05 10:05:43', '2023-07-05 10:27:17'),
(402, 399, 'Hotline', '8:00 - 21:00', 'Mon - Sun', 'custom', '{\"style\":null}', '/data/cms-image/icon/ic_contact_phone.png', NULL, NULL, 'tel:0963 636 363', '0963 636 363', NULL, NULL, 3, 'delete', 1, 1, '2023-07-05 10:11:10', '2023-07-05 10:27:26'),
(403, NULL, 'CẢM NHẬN TỪ HỌC VIÊN', '<span class=\"green\">YOGA</span> STUDIO luôn là lựa chọn hàng đầu của bạn', NULL, 'custom', '{\"layout\":\"about_vision\",\"style\":null}', '/data/cms-image/Images/connect_img.png', '/data/cms-image/Images/connect_img2.png', NULL, NULL, NULL, NULL, NULL, 20, 'delete', 1, 1, '2023-07-06 03:29:31', '2023-08-05 02:34:58'),
(404, 403, 'Nguyen Jessica', 'Perfect, very good job! Thank you for the amazing design and work. Really impressed with the high quality and quick turnaround time. Highly recommend.', NULL, 'custom', '{\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'delete', 1, 1, '2023-07-06 03:30:42', '2023-07-06 03:31:16'),
(405, 403, 'Mạnh Nguyễn', 'Perfect, very good job! Thank you for the amazing design and work. Really impressed with the high quality and quick turnaround time. Highly recommend.', NULL, 'custom', '{\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'delete', 1, 1, '2023-07-06 03:30:59', '2023-07-06 03:31:16'),
(406, 403, 'Tưởng Nguyễn', 'Perfect, very good job! Thank you for the amazing design and work. Really impressed with the high quality and quick turnaround time. Highly recommend.', NULL, 'custom', '{\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'delete', 1, 1, '2023-07-06 03:31:10', '2023-07-06 03:31:16'),
(407, NULL, 'VIDEO HỌC VIÊN CHIA SẺ', NULL, NULL, 'banner_video', '{\"layout\":\"slick\",\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21, 'delete', 1, 1, '2023-07-06 04:42:52', '2023-08-05 02:34:59'),
(408, 407, 'Video 1', NULL, NULL, 'banner_video', '{\"video\":\"<iframe width=\\\"560\\\" height=\\\"315\\\" src=\\\"https:\\/\\/www.youtube.com\\/embed\\/l-eexsgIJYg\\\" title=\\\"YouTube video player\\\" frameborder=\\\"0\\\" allow=\\\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\\\" allowfullscreen><\\/iframe>\"}', '/data/cms-image/Images/img_video1.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'delete', 1, 1, '2023-07-06 04:49:27', '2023-07-06 07:13:54'),
(409, 407, 'Video 2', NULL, NULL, 'banner_video', '{\"video\":\"<iframe width=\\\"560\\\" height=\\\"315\\\" src=\\\"https:\\/\\/www.youtube.com\\/embed\\/AKclJ0s_VdQ\\\" title=\\\"YouTube video player\\\" frameborder=\\\"0\\\" allow=\\\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\\\" allowfullscreen><\\/iframe>\"}', '/data/cms-image/Images/img_video2.png', NULL, NULL, NULL, NULL, NULL, NULL, 2, 'delete', 1, 1, '2023-07-06 04:50:01', '2023-07-06 04:58:17'),
(410, 407, 'Video 3', NULL, NULL, 'banner_video', '{\"video\":\"<iframe width=\\\"560\\\" height=\\\"315\\\" src=\\\"https:\\/\\/www.youtube.com\\/embed\\/ftR31O_j8CA\\\" title=\\\"YouTube video player\\\" frameborder=\\\"0\\\" allow=\\\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\\\" allowfullscreen><\\/iframe>\"}', '/data/cms-image/Images/img_video3.png', NULL, NULL, NULL, NULL, NULL, NULL, 3, 'delete', 1, 1, '2023-07-06 04:50:30', '2023-07-06 04:58:17'),
(411, 407, 'Video 4', NULL, NULL, 'banner_video', '{\"video\":\"<iframe width=\\\"560\\\" height=\\\"315\\\" src=\\\"https:\\/\\/www.youtube.com\\/embed\\/XUGR0q89qug\\\" title=\\\"YouTube video player\\\" frameborder=\\\"0\\\" allow=\\\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\\\" allowfullscreen><\\/iframe>\"}', '/data/cms-image/Images/img_video2.png', NULL, NULL, NULL, NULL, NULL, NULL, 4, 'delete', 1, 1, '2023-07-06 04:58:11', '2023-07-06 04:58:17'),
(412, NULL, 'Blog', NULL, NULL, 'cms_post', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, 'delete', 1, 1, '2023-07-06 07:31:26', '2023-08-05 02:35:01'),
(413, NULL, 'Hãy là phiên bản tốt nhất của chính mình!', 'Tham khảo ý kiến ​​​​với đội ngũ chuyên gia', '<p>Tại Divine Beauty, chúng tôi tin rằng vẻ đẹp không chỉ nằm ở bề ngoài. Đó là sự phản ánh sức khỏe tổng thể của một người.</p>', 'form', '{\"layout\":\"booking\",\"style\":null,\"title\":{\"en\":\"Be the best version of yourself!\",\"vi\":\"H\\u00e3y l\\u00e0 phi\\u00ean b\\u1ea3n t\\u1ed1t nh\\u1ea5t c\\u1ee7a ch\\u00ednh m\\u00ecnh!\"},\"brief\":{\"en\":\"Consult with our team of professionals\",\"vi\":\"Tham kh\\u1ea3o \\u00fd ki\\u1ebfn \\u200b\\u200b\\u200b\\u200bv\\u1edbi \\u0111\\u1ed9i ng\\u0169 chuy\\u00ean gia\"},\"content\":{\"en\":\"At Divine Beauty, we believe that beauty is not just skin deep. It is a reflection of one\\u2019s overall well-being.\",\"vi\":\"<p>T\\u1ea1i Divine Beauty, ch\\u00fang t\\u00f4i tin r\\u1eb1ng v\\u1ebb \\u0111\\u1eb9p kh\\u00f4ng ch\\u1ec9 n\\u1eb1m \\u1edf b\\u1ec1 ngo\\u00e0i. \\u0110\\u00f3 l\\u00e0 s\\u1ef1 ph\\u1ea3n \\u00e1nh s\\u1ee9c kh\\u1ecfe t\\u1ed5ng th\\u1ec3 c\\u1ee7a m\\u1ed9t ng\\u01b0\\u1eddi.<\\/p>\"},\"url_link_title\":{\"en\":\"Explore our Treatments\",\"vi\":\"Kh\\u00e1m Ph\\u00e1 Li\\u1ec7u Tr\\u00ecnh\"}}', NULL, NULL, NULL, '/treatments', 'Khám Phá Liệu Trình', NULL, NULL, 3, 'active', 1, 1, '2023-08-05 02:37:35', '2023-08-14 03:17:21'),
(414, 413, 'Botox (Dysport)', NULL, NULL, 'form', '{\"style\":null}', NULL, NULL, 'fas fa-check-circle', NULL, NULL, NULL, NULL, 1, 'delete', 1, 1, '2023-08-05 02:41:27', '2023-08-13 16:51:55'),
(415, 413, 'Hyaluronic Acid (HA) Dermal Fillers', NULL, NULL, 'form', '{\"style\":null}', NULL, NULL, 'fas fa-check-circle', NULL, NULL, NULL, NULL, 2, 'delete', 1, 1, '2023-08-05 02:42:00', '2023-08-13 16:52:01'),
(416, 413, 'Tear Trough', NULL, NULL, 'form', '{\"style\":null}', NULL, NULL, 'fas fa-check-circle', NULL, NULL, NULL, NULL, 3, 'delete', 1, 1, '2023-08-05 02:42:07', '2023-08-13 16:52:08'),
(417, 413, 'Skin Boosters', NULL, NULL, 'form', '{\"style\":null}', NULL, NULL, 'fas fa-check-circle', NULL, NULL, NULL, NULL, 4, 'delete', 1, 1, '2023-08-05 02:42:13', '2023-08-13 16:52:19'),
(418, 413, 'Breast Lift', NULL, NULL, 'form', '{\"style\":null}', NULL, NULL, 'fas fa-check-circle', NULL, NULL, NULL, NULL, 5, 'delete', 1, 1, '2023-08-05 02:42:34', '2023-08-13 16:52:24'),
(419, 413, 'Buttock Augmentation and Sculpting', NULL, NULL, 'form', '{\"style\":null}', NULL, NULL, 'fas fa-check-circle', NULL, NULL, NULL, NULL, 6, 'delete', 1, 1, '2023-08-05 02:42:55', '2023-08-13 16:51:50'),
(420, NULL, 'Chúng tôi là trung tâm thẩm mỹ hàng đầu.', 'Giới thiệu DIVINE BEAUTY', 'Divine Beauty Center được biết đến là điểm trải nghiệm tuyệt vời để tận hưởng sự thư giãn tinh thần và làm mới làn da. Với 11 cơ sở đặt tại các vị trí thuận tiện tại Hà Nội, chúng tôi tự hào mang đến những phương pháp làm đẹp hiệu quả hàng đầu với những tiêu chuẩn khắt khe của Châu &nbsp;u, góp phần nâng tầm nhan sắc Việt, mang lại diện mạo tự tin cho khách hàng.', 'custom', '{\"layout\":\"about_us\",\"style\":null,\"description\":{\"en\":null,\"vi\":null},\"title\":{\"en\":\"We are the leading aesthetic center.\",\"vi\":\"Ch\\u00fang t\\u00f4i l\\u00e0 trung t\\u00e2m th\\u1ea9m m\\u1ef9 h\\u00e0ng \\u0111\\u1ea7u.\"},\"brief\":{\"en\":\"About DIVINE BEAUTY\",\"vi\":\"Gi\\u1edbi thi\\u1ec7u DIVINE BEAUTY\"},\"content\":{\"en\":\"Divine Beauty Center known as the ultimate destination for rejuvenation and relaxation. With 11 conveniently located clinics in Hanoi, we pride ourselves on bringing the best European standard beauty treatments to our esteemed clients.\",\"vi\":\"Divine Beauty Center \\u0111\\u01b0\\u1ee3c bi\\u1ebft \\u0111\\u1ebfn l\\u00e0 \\u0111i\\u1ec3m tr\\u1ea3i nghi\\u1ec7m tuy\\u1ec7t v\\u1eddi \\u0111\\u1ec3 t\\u1eadn h\\u01b0\\u1edfng s\\u1ef1 th\\u01b0 gi\\u00e3n tinh th\\u1ea7n v\\u00e0 l\\u00e0m m\\u1edbi l\\u00e0n da. V\\u1edbi 11 c\\u01a1 s\\u1edf \\u0111\\u1eb7t t\\u1ea1i c\\u00e1c v\\u1ecb tr\\u00ed thu\\u1eadn ti\\u1ec7n t\\u1ea1i H\\u00e0 N\\u1ed9i, ch\\u00fang t\\u00f4i t\\u1ef1 h\\u00e0o mang \\u0111\\u1ebfn nh\\u1eefng ph\\u01b0\\u01a1ng ph\\u00e1p l\\u00e0m \\u0111\\u1eb9p hi\\u1ec7u qu\\u1ea3 h\\u00e0ng \\u0111\\u1ea7u v\\u1edbi nh\\u1eefng ti\\u00eau chu\\u1ea9n kh\\u1eaft khe c\\u1ee7a Ch\\u00e2u &nbsp;u, g\\u00f3p ph\\u1ea7n n\\u00e2ng t\\u1ea7m nhan s\\u1eafc Vi\\u1ec7t, mang l\\u1ea1i di\\u1ec7n m\\u1ea1o t\\u1ef1 tin cho kh\\u00e1ch h\\u00e0ng.\"},\"url_link_title\":{\"en\":\"More About Us\",\"vi\":\"V\\u1ec1 Ch\\u00fang T\\u00f4i\"}}', '/data/cms-image/Images/elements-set-of-natural-and-floral-elements-G9XCU6B_procedures.png', NULL, NULL, '/about-us', 'Về Chúng Tôi', NULL, NULL, 6, 'active', 1, 1, '2023-08-05 07:09:15', '2023-08-14 03:08:48'),
(421, 420, 'Kỹ thuật và công nghệ tiên tiến', 'Sử dụng các kỹ thuật mới nhất và công nghệ tiên tiến, chúng tôi cung cấp các phương pháp điều trị an toàn, hiệu quả và xâm lấn tối thiểu.', NULL, 'custom', '{\"style\":null,\"title\":{\"en\":\"Cutting-edge techniques and technology\",\"vi\":\"K\\u1ef9 thu\\u1eadt v\\u00e0 c\\u00f4ng ngh\\u1ec7 ti\\u00ean ti\\u1ebfn\"},\"brief\":{\"en\":\"Using the latest techniques and advanced technology, we offer safe, effective, and minimally invasive treatments.\",\"vi\":\"S\\u1eed d\\u1ee5ng c\\u00e1c k\\u1ef9 thu\\u1eadt m\\u1edbi nh\\u1ea5t v\\u00e0 c\\u00f4ng ngh\\u1ec7 ti\\u00ean ti\\u1ebfn, ch\\u00fang t\\u00f4i cung c\\u1ea5p c\\u00e1c ph\\u01b0\\u01a1ng ph\\u00e1p \\u0111i\\u1ec1u tr\\u1ecb an to\\u00e0n, hi\\u1ec7u qu\\u1ea3 v\\u00e0 x\\u00e2m l\\u1ea5n t\\u1ed1i thi\\u1ec3u.\"},\"content\":{\"en\":\"\",\"vi\":\"\"},\"url_link_title\":{\"en\":\"\",\"vi\":\"\"}}', NULL, '/data/cms-image/about_us/4.jpeg', 'jki jki-stethoscope-light', NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2023-08-05 07:10:41', '2023-08-14 03:21:18'),
(422, 420, 'Giải pháp tùy chỉnh cho nhu cầu riêng của bạn', 'Nhóm của chúng tôi sẽ làm việc với bạn để phát triển một kế hoạch điều trị được cá nhân hóa nhằm giải quyết các mối quan tâm và mục tiêu cụ thể của bạn.', NULL, 'custom', '{\"style\":null,\"title\":{\"en\":\"Customized solutions for your unique needs\",\"vi\":\"Gi\\u1ea3i ph\\u00e1p t\\u00f9y ch\\u1ec9nh cho nhu c\\u1ea7u ri\\u00eang c\\u1ee7a b\\u1ea1n\"},\"brief\":{\"en\":\"Our team will work with you to develop a personalized treatment plan that addresses your specific concerns and goals.\",\"vi\":\"Nh\\u00f3m c\\u1ee7a ch\\u00fang t\\u00f4i s\\u1ebd l\\u00e0m vi\\u1ec7c v\\u1edbi b\\u1ea1n \\u0111\\u1ec3 ph\\u00e1t tri\\u1ec3n m\\u1ed9t k\\u1ebf ho\\u1ea1ch \\u0111i\\u1ec1u tr\\u1ecb \\u0111\\u01b0\\u1ee3c c\\u00e1 nh\\u00e2n h\\u00f3a nh\\u1eb1m gi\\u1ea3i quy\\u1ebft c\\u00e1c m\\u1ed1i quan t\\u00e2m v\\u00e0 m\\u1ee5c ti\\u00eau c\\u1ee5 th\\u1ec3 c\\u1ee7a b\\u1ea1n.\"},\"content\":{\"en\":\"\",\"vi\":\"\"},\"url_link_title\":{\"en\":\"\",\"vi\":\"\"}}', NULL, '/data/cms-image/about_us/3.jpeg', 'jki jki-clipboard-light', NULL, NULL, NULL, NULL, 2, 'active', 1, 1, '2023-08-05 07:12:30', '2023-08-14 03:18:35');
INSERT INTO `tb_block_contents` (`id`, `parent_id`, `title`, `brief`, `content`, `block_code`, `json_params`, `image`, `image_background`, `icon`, `url_link`, `url_link_title`, `position`, `system_code`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(423, 420, 'Đội ngũ đáng tin cậy và giàu kinh nghiệm', 'Đội ngũ của chúng tôi có nhiều năm kinh nghiệm và cam kết mang lại kết quả đặc biệt khiến bạn cảm thấy tự tin và hài lòng.', NULL, 'custom', '{\"style\":null,\"title\":{\"en\":\"Trusted and experienced team\",\"vi\":\"\\u0110\\u1ed9i ng\\u0169 \\u0111\\u00e1ng tin c\\u1eady v\\u00e0 gi\\u00e0u kinh nghi\\u1ec7m\"},\"brief\":{\"en\":\"Our team has years of experience and is committed to providing exceptional results that leave you feeling confident and satisfied.\",\"vi\":\"\\u0110\\u1ed9i ng\\u0169 c\\u1ee7a ch\\u00fang t\\u00f4i c\\u00f3 nhi\\u1ec1u n\\u0103m kinh nghi\\u1ec7m v\\u00e0 cam k\\u1ebft mang l\\u1ea1i k\\u1ebft qu\\u1ea3 \\u0111\\u1eb7c bi\\u1ec7t khi\\u1ebfn b\\u1ea1n c\\u1ea3m th\\u1ea5y t\\u1ef1 tin v\\u00e0 h\\u00e0i l\\u00f2ng.\"},\"content\":{\"en\":\"\",\"vi\":\"\"},\"url_link_title\":{\"en\":\"\",\"vi\":\"\"}}', NULL, NULL, 'jki jki-doctor-light', NULL, NULL, NULL, NULL, 3, 'active', 1, 1, '2023-08-05 07:13:27', '2023-08-14 03:21:48'),
(424, NULL, 'Quy trình điều trị tại DIVINE BEAUTY', 'Cách tiếp cận của chúng ta', 'Đội ngũ nhân viên tận tâm của chúng tôi sẽ cung cấp cho bạn dịch vụ chăm sóc chất lượng hàng đầu trong toàn bộ quá trình, từ tư vấn ban đầu đến theo dõi sau phẫu thuật.', 'custom', '{\"layout\":\"about_vision\",\"style\":null,\"description\":{\"en\":\"Schedule an Appointment With Us\",\"vi\":\"\\u0110\\u1eb7t l\\u1ecbch h\\u1eb9n v\\u1edbi ch\\u00fang t\\u00f4i\"},\"title\":{\"en\":\"The procedure for a treatment at DIVINE BEAUTY\",\"vi\":\"Quy tr\\u00ecnh \\u0111i\\u1ec1u tr\\u1ecb t\\u1ea1i DIVINE BEAUTY\"},\"brief\":{\"en\":\"Our Approach\",\"vi\":\"C\\u00e1ch ti\\u1ebfp c\\u1eadn c\\u1ee7a ch\\u00fang ta\"},\"content\":{\"en\":\"Our dedicated staff will provide you with top-quality care throughout the entire process, from the initial consultation to post-operative follow-up.\",\"vi\":\"\\u0110\\u1ed9i ng\\u0169 nh\\u00e2n vi\\u00ean t\\u1eadn t\\u00e2m c\\u1ee7a ch\\u00fang t\\u00f4i s\\u1ebd cung c\\u1ea5p cho b\\u1ea1n d\\u1ecbch v\\u1ee5 ch\\u0103m s\\u00f3c ch\\u1ea5t l\\u01b0\\u1ee3ng h\\u00e0ng \\u0111\\u1ea7u trong to\\u00e0n b\\u1ed9 qu\\u00e1 tr\\u00ecnh, t\\u1eeb t\\u01b0 v\\u1ea5n ban \\u0111\\u1ea7u \\u0111\\u1ebfn theo d\\u00f5i sau ph\\u1eabu thu\\u1eadt.\"},\"url_link_title\":{\"en\":\"\",\"vi\":\"\"}}', '/data/cms-image/about_us/AdobeStock_633000700_Preview.jpeg', '/data/cms-image/Images/elements-set-of-natural-and-floral-elements-G9XCU6B_procedures_2.png', NULL, NULL, NULL, NULL, NULL, 7, 'active', 1, 1, '2023-08-06 17:34:40', '2023-08-14 03:29:08'),
(425, 424, 'Đặt lịch hẹn', NULL, NULL, 'custom', '{\"style\":null,\"title\":{\"vi\":\"\\u0110\\u1eb7t l\\u1ecbch h\\u1eb9n\"},\"brief\":{\"vi\":\"\"},\"content\":{\"vi\":\"\"},\"url_link_title\":{\"vi\":\"\"}}', NULL, NULL, 'jki jki-app-light', NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2023-08-06 17:35:36', '2023-08-13 17:24:22'),
(426, 424, 'Gặp gỡ với đội ngũ chuyên nghiệp của chúng tôi', NULL, NULL, 'custom', '{\"style\":null,\"title\":{\"vi\":\"G\\u1eb7p g\\u1ee1 v\\u1edbi \\u0111\\u1ed9i ng\\u0169 chuy\\u00ean nghi\\u1ec7p c\\u1ee7a ch\\u00fang t\\u00f4i\"},\"brief\":{\"vi\":\"\"},\"content\":{\"vi\":\"\"},\"url_link_title\":{\"vi\":\"\"}}', NULL, NULL, 'jki jki-doctor-light', NULL, NULL, NULL, NULL, 2, 'active', 1, 1, '2023-08-06 17:35:57', '2023-08-13 17:22:21'),
(427, 424, 'Nhận một phiên bản mới của bạn', NULL, NULL, 'custom', '{\"style\":null,\"title\":{\"vi\":\"Nh\\u1eadn m\\u1ed9t phi\\u00ean b\\u1ea3n m\\u1edbi c\\u1ee7a b\\u1ea1n\"},\"brief\":{\"vi\":\"\"},\"content\":{\"vi\":\"\"},\"url_link_title\":{\"vi\":\"\"}}', NULL, NULL, 'jki jki-pen_shape-light', NULL, NULL, NULL, NULL, 3, 'active', 1, 1, '2023-08-06 17:36:18', '2023-08-13 17:22:27'),
(428, NULL, 'Khối review', NULL, NULL, 'custom', '{\"layout\":\"about_client\",\"style\":null,\"description\":{\"vi\":null},\"title\":{\"vi\":\"Kh\\u1ed1i review\"},\"brief\":{\"vi\":\"\"},\"content\":{\"vi\":\"\"},\"url_link_title\":{\"vi\":\"\"}}', NULL, '/data/cms-image/Images/cosmetician-makes-botox-injection-in-dotted-lines.jpg', NULL, NULL, NULL, NULL, NULL, 9, 'active', 1, 1, '2023-08-06 17:50:49', '2023-08-13 17:40:11'),
(429, 428, 'Anna', NULL, 'Tôi tìm đến DIVINE Beauty vì một người bạn thân đã nói với tôi về họ. Tôi rất vui, tôi đang thực hiện các phương pháp điều trị cụ thể với họ để trẻ hóa-họ là những chuyên gia thực sự', 'custom', '{\"style\":null,\"title\":{\"en\":\"Anna\",\"vi\":\"Anna\"},\"brief\":{\"en\":\"\",\"vi\":\"\"},\"content\":{\"en\":\"I turned to DIVINE Beauty because a close friend had told me about them. I am happy, I am doing specific treatments with them for rejuvenation-they are real professionals\",\"vi\":\"T\\u00f4i t\\u00ecm \\u0111\\u1ebfn DIVINE Beauty v\\u00ec m\\u1ed9t ng\\u01b0\\u1eddi b\\u1ea1n th\\u00e2n \\u0111\\u00e3 n\\u00f3i v\\u1edbi t\\u00f4i v\\u1ec1 h\\u1ecd. T\\u00f4i r\\u1ea5t vui, t\\u00f4i \\u0111ang th\\u1ef1c hi\\u1ec7n c\\u00e1c ph\\u01b0\\u01a1ng ph\\u00e1p \\u0111i\\u1ec1u tr\\u1ecb c\\u1ee5 th\\u1ec3 v\\u1edbi h\\u1ecd \\u0111\\u1ec3 tr\\u1ebb h\\u00f3a-h\\u1ecd l\\u00e0 nh\\u1eefng chuy\\u00ean gia th\\u1ef1c s\\u1ef1\"},\"url_link_title\":{\"en\":\"\",\"vi\":\"\"}}', '/data/cms-image/Images/fashionable-young-woman-smiling-with-arms-crossed-PKWYH97.jpg', NULL, 'jki jki-quote-light', NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2023-08-06 17:52:47', '2023-08-14 03:30:15'),
(430, 428, 'Viviana', NULL, 'Tôi đánh giá cao anh ấy cho tất cả những ai muốn trở nên xinh đẹp. Tôi đã từng một lần nhưng tôi sẽ không rời xa anh ấy nữa vì tôi sẽ thực hiện nhiều buổi hơn nữa. Sự chuyên nghiệp, lịch sự và gu thẩm mỹ của bác sĩ không chê vào đâu được.', 'custom', '{\"style\":null,\"title\":{\"en\":\"Viviana\",\"vi\":\"Viviana\"},\"brief\":{\"en\":\"\",\"vi\":\"\"},\"content\":{\"en\":\"I highly recommend him for all those who wish to be beautiful . I have been once but I will not leave him again as I will do more sessions . Professionalism, courtesy and aesthetic doctor impeccable .\",\"vi\":\"T\\u00f4i \\u0111\\u00e1nh gi\\u00e1 cao anh \\u1ea5y cho t\\u1ea5t c\\u1ea3 nh\\u1eefng ai mu\\u1ed1n tr\\u1edf n\\u00ean xinh \\u0111\\u1eb9p. T\\u00f4i \\u0111\\u00e3 t\\u1eebng m\\u1ed9t l\\u1ea7n nh\\u01b0ng t\\u00f4i s\\u1ebd kh\\u00f4ng r\\u1eddi xa anh \\u1ea5y n\\u1eefa v\\u00ec t\\u00f4i s\\u1ebd th\\u1ef1c hi\\u1ec7n nhi\\u1ec1u bu\\u1ed5i h\\u01a1n n\\u1eefa. S\\u1ef1 chuy\\u00ean nghi\\u1ec7p, l\\u1ecbch s\\u1ef1 v\\u00e0 gu th\\u1ea9m m\\u1ef9 c\\u1ee7a b\\u00e1c s\\u0129 kh\\u00f4ng ch\\u00ea v\\u00e0o \\u0111\\u00e2u \\u0111\\u01b0\\u1ee3c.\"},\"url_link_title\":{\"en\":\"\",\"vi\":\"\"}}', '/data/cms-image/Images/smiling-lady-in-eyeglasses-and-dress-standing-with-SBAK95C.jpg', NULL, 'jki jki-quote-light', NULL, NULL, NULL, NULL, 2, 'active', 1, 1, '2023-08-06 17:53:33', '2023-08-13 17:41:08'),
(431, 428, 'Lily', NULL, 'Tôi đã điều trị với kết quả tuyệt vời, bác sĩ chuyên nghiệp tuyệt vời. Cảm ơn.', 'custom', '{\"style\":null,\"title\":{\"en\":\"Lily\",\"vi\":\"Lily\"},\"brief\":{\"en\":\"\",\"vi\":\"\"},\"content\":{\"en\":\"I had a treatment with excellent results, great professionalism excellent doctors. Thank you.\",\"vi\":\"T\\u00f4i \\u0111\\u00e3 \\u0111i\\u1ec1u tr\\u1ecb v\\u1edbi k\\u1ebft qu\\u1ea3 tuy\\u1ec7t v\\u1eddi, b\\u00e1c s\\u0129 chuy\\u00ean nghi\\u1ec7p tuy\\u1ec7t v\\u1eddi. C\\u1ea3m \\u01a1n.\"},\"url_link_title\":{\"en\":\"\",\"vi\":\"\"}}', '/data/cms-image/Images/ceo-TMRDQF6.jpg', NULL, 'jki jki-quote-light', NULL, NULL, NULL, NULL, 3, 'active', 1, 1, '2023-08-06 17:54:19', '2023-08-13 17:41:29'),
(432, NULL, 'Our Treatments', 'Ariel Medical Treatments', 'We offer a wide range of aesthetic treatments, to help you achieve the look you’ve always wanted.', 'custom', '{\"layout\":\"about_development\",\"style\":null,\"slogan\":null}', NULL, '/data/cms-image/Images/elements-set-of-natural-and-floral-elements-G9XCU6B_procedures.png', NULL, '#', 'View All Service', NULL, NULL, 4, 'delete', 1, 1, '2023-08-07 01:26:00', '2023-08-13 16:59:40'),
(433, 432, 'Cheekbones', NULL, 'Cheekbone fillers are incredibly popular due to their ability to improve the face’s shape ...', 'custom', '{\"style\":null}', '/data/cms-image/Images/3.webp', NULL, 'icon icon-right-arrow', NULL, 'Read More', NULL, NULL, 1, 'delete', 1, 1, '2023-08-07 01:30:25', '2023-08-07 02:18:06'),
(434, 432, 'Nose', NULL, 'Nose filler can help to improve the facial profile and harmony, by providing enhancement ...', 'custom', '{\"style\":null}', '/data/cms-image/Images/nonsurgical-rhinoplasty-for-handsome-man-at-aesthe-2022-12-16-06-46-37-utc-q2ekzp0i3czdm4xry2pec59cieuf0xji2ltpn3vmyg.webp', NULL, 'icon icon-right-arrow', '#', 'Read More', NULL, NULL, 2, 'delete', 1, 1, '2023-08-07 01:31:49', '2023-08-07 01:46:02'),
(435, 432, 'Jawline', NULL, 'The jawline delineates the face and defines it, gives volume, shape and sharpens the facial features ...', 'custom', '{\"style\":null}', '/data/cms-image/Images/5.webp', NULL, 'icon icon-right-arrow', '#', 'Read More', NULL, NULL, 2, 'delete', 1, 1, '2023-08-07 01:31:49', '2023-08-07 01:45:10'),
(436, 432, 'Lips', NULL, 'There is no denying that the shape and form of our lips play a significant role in our lives ...', 'custom', '{\"style\":null}', '/data/cms-image/Images/2.jpg', NULL, 'icon icon-right-arrow', NULL, 'Read More', NULL, NULL, 1, 'delete', 1, 1, '2023-08-07 01:30:25', '2023-08-07 02:18:56'),
(437, 432, 'Botox (Dysport)', NULL, 'Our face’s skin shrinks, stretches and moves in different ways', 'custom', '{\"style\":null}', '/data/cms-image/Images/1.webp', NULL, 'icon icon-right-arrow', NULL, 'Read More', NULL, NULL, 1, 'delete', 1, 1, '2023-08-07 01:30:25', '2023-08-07 01:32:24'),
(438, 432, 'Marionette Lines – Nasolabial Fold', NULL, 'This treatment is a common request in our clinic, as we all tend to ...', 'custom', '{\"style\":null}', '/data/cms-image/Images/4.webp', NULL, 'icon icon-right-arrow', '#', 'Read More', NULL, NULL, 2, 'delete', 1, 1, '2023-08-07 01:31:49', '2023-08-07 01:44:18'),
(439, NULL, 'Khối hình ảnh', NULL, NULL, 'banner', '{\"layout\":\"banner_image\",\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'active', 1, 1, '2023-08-07 02:27:55', '2023-08-07 02:27:55'),
(440, 439, 'Nâng Cơ thủy liệu Chuyên Sâu', NULL, NULL, 'banner', '{\"video\":null,\"title\":{\"en\":\"Hydra Lifting Facial\",\"vi\":\"N\\u00e2ng C\\u01a1 th\\u1ee7y li\\u1ec7u Chuy\\u00ean S\\u00e2u\"},\"brief\":{\"en\":\"\",\"vi\":\"\"},\"content\":{\"en\":\"\",\"vi\":\"\"},\"url_link_title\":{\"en\":\"\",\"vi\":\"\"}}', '/data/cms-image/service/tay-te-bao-chet-tai-spa-2.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2023-08-07 02:28:13', '2023-08-13 17:17:09'),
(441, 439, 'Nâng cơ tinh thể', NULL, NULL, 'banner', '{\"video\":null,\"title\":{\"en\":\"Lifting Crystals Facial\",\"vi\":\"N\\u00e2ng c\\u01a1 tinh th\\u1ec3\"},\"brief\":{\"en\":\"\",\"vi\":\"\"},\"content\":{\"en\":\"\",\"vi\":\"\"},\"url_link_title\":{\"en\":\"\",\"vi\":\"\"}}', '/data/cms-image/service/hydra whitening facial.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 2, 'active', 1, 1, '2023-08-07 02:28:18', '2023-08-13 17:17:24'),
(442, 439, 'LED nâng cơ chuyên sâu', NULL, NULL, 'banner', '{\"video\":null,\"title\":{\"en\":\"LED Deep Lifting\",\"vi\":\"LED n\\u00e2ng c\\u01a1 chuy\\u00ean s\\u00e2u\"},\"brief\":{\"en\":\"\",\"vi\":\"\"},\"content\":{\"en\":\"\",\"vi\":\"\"},\"url_link_title\":{\"en\":\"\",\"vi\":\"\"}}', '/data/cms-image/service/z4455113536133_0c3d5adf85ffd4cce831a2a8499a50fc.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 3, 'active', 1, 1, '2023-08-07 02:28:24', '2023-08-13 17:17:38'),
(443, 439, 'Jawline', NULL, NULL, 'banner', '{\"video\":null}', '/data/cms-image/Images/dermal-filler-for-men-jawline-injection-2021-09-01-03-49-50-utc.webp', NULL, NULL, NULL, NULL, NULL, NULL, 4, 'delete', 1, 1, '2023-08-07 02:28:29', '2023-08-13 17:15:10'),
(444, NULL, 'Đặt lịch hẹn', 'Đặt bây giờ', 'Chúng tôi sẽ sẵn lòng trả lời tất cả các câu hỏi của bạn và đảm bảo với bạn rằng bạn có một trải nghiệm phi thường tại phòng khám của chúng tôi.', 'custom', '{\"layout\":\"opening_hours\",\"style\":null,\"description\":{\"en\":\"Opening Hours\",\"vi\":\"Gi\\u1edd m\\u1edf c\\u1eeda\"},\"title\":{\"en\":\"Make an appointment\",\"vi\":\"\\u0110\\u1eb7t l\\u1ecbch h\\u1eb9n\"},\"brief\":{\"en\":\"Book Now\",\"vi\":\"\\u0110\\u1eb7t b\\u00e2y gi\\u1edd\"},\"content\":{\"en\":\"We will be happy to answer all your questions and assure you that you have an extraordinary experience in our clinic.\",\"vi\":\"Ch\\u00fang t\\u00f4i s\\u1ebd s\\u1eb5n l\\u00f2ng tr\\u1ea3 l\\u1eddi t\\u1ea5t c\\u1ea3 c\\u00e1c c\\u00e2u h\\u1ecfi c\\u1ee7a b\\u1ea1n v\\u00e0 \\u0111\\u1ea3m b\\u1ea3o v\\u1edbi b\\u1ea1n r\\u1eb1ng b\\u1ea1n c\\u00f3 m\\u1ed9t tr\\u1ea3i nghi\\u1ec7m phi th\\u01b0\\u1eddng t\\u1ea1i ph\\u00f2ng kh\\u00e1m c\\u1ee7a ch\\u00fang t\\u00f4i.\"},\"url_link_title\":{\"en\":\"\",\"vi\":\"\"}}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 'active', 1, 1, '2023-08-07 03:46:51', '2023-08-14 05:27:13'),
(445, 444, 'Sunday', NULL, 'Closed', 'custom', '{\"style\":\"end\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'delete', 1, 1, '2023-08-07 03:47:58', '2023-08-13 17:36:01'),
(446, 444, 'Saturday', NULL, '11.00 AM - 19.00 PM', 'custom', '{\"style\":null}', NULL, NULL, 'far fa-clock', NULL, NULL, NULL, NULL, NULL, 'delete', 1, 1, '2023-08-07 03:47:58', '2023-08-13 17:36:06'),
(447, 444, 'Cả tuần', NULL, '10:00 AM– 20:00 PM', 'custom', '{\"style\":null,\"title\":{\"vi\":\"C\\u1ea3 tu\\u1ea7n\",\"en\":\"All week\"},\"brief\":{\"vi\":\"\",\"en\":\"\"},\"content\":{\"vi\":\"10:00 AM\\u2013 20:00 PM\",\"en\":\"10:00 AM\\u2013 20:00 PM\"},\"url_link_title\":{\"vi\":\"\",\"en\":\"\"}}', NULL, NULL, 'far fa-clock', NULL, NULL, NULL, NULL, NULL, 'active', 1, 1, '2023-08-07 03:47:58', '2023-08-14 01:35:46'),
(448, NULL, 'Chúng tôi là trung tâm thẩm mỹ hàng đầu.', 'Giới Thiệu', '<p>Divine Beauty Center được biết đến là điểm trải nghiệm tuyệt vời để tận hưởng sự thư giãn tinh thần và làm mới làn da. Với 11 cơ sở đặt tại các vị trí thuận tiện tại Hà Nội, chúng tôi tự hào mang đến những phương pháp làm đẹp hiệu quả hàng đầu với những tiêu chuẩn khắt khe của Châu &nbsp;u, góp phần nâng tầm nhan sắc Việt, mang lại diện mạo tự tin cho khách hàng<br />\r\nTại Divine Beauty Center, chúng tôi hiểu rõ tầm quan trọng của vẻ ngoài và sự tin tưởng đến từ khách hàng. Đội ngũ chuyên gia làm đẹp của chúng tôi đã được đào tạo bài bản và có nhiều kinh nghiệm, luôn tận tâm cung cấp các dịch vụ đặc biệt và cá nhân hóa để đáp ứng nhu cầu và sở thích của từng khách hàng. Tất cả các dịch vụ làm đẹp tại Divine Beauty đều được xây dựng quy trình làm việc rõ ràng, chuẩn y khoa. Đặc biệt, khách hàng trước khi điều trị đều được tư vấn kỹ lưỡng cùng chuyên gia nước ngoài để lựa chọn liệu trình phù hợp với làn da của mình.<br />\r\nVới khát vọng vươn mình trở thành điểm đến hàng đầu giúp nâng tầm nhan sắc Việt, Divine Beauty cam kết chất lượng luôn được đặt lên hàng đầu. Vì vậy, chúng tôi luôn cẩn thận lựa chọn những dòng sản phẩm làm đẹp cao cấp từ những thương hiệu nổi tiếng, đảm bảo hiệu quả và an toàn. Cam kết của chúng tôi là chỉ sử dụng những sản phẩm tốt nhất, đảm bảo bạn nhận được sự chăm sóc đặc biệt với kết quả vượt trội.</p>', 'about_us', '{\"layout\":\"default\",\"style\":null,\"title\":{\"en\":\"We are leading aesthetic center.\",\"vi\":\"Ch\\u00fang t\\u00f4i l\\u00e0 trung t\\u00e2m th\\u1ea9m m\\u1ef9 h\\u00e0ng \\u0111\\u1ea7u.\"},\"brief\":{\"en\":\"About Us\",\"vi\":\"Gi\\u1edbi Thi\\u1ec7u\"},\"content\":{\"en\":\"<p>Divine Beauty Center known as the ultimate destination for rejuvenation and relaxation. With 11 conveniently located clinics in Hanoi, we pride ourselves on bringing the best European standard beauty treatments to our esteemed clients.<br \\/>\\r\\nAt Divine Beauty, we understand the importance of looking and feeling your best. Our team of highly trained and experienced beauty professionals is dedicated to providing exceptional and personalized services that cater to your unique needs and preferences. Whether you are looking to revitalize your skin, relax your body, or enhance your natural beauty, we have a wide range of rejuvenation treatments designed to exceed your expectations.One We believe that quality should never be compromised, especially when it comes to your well-being. Therefore, we have carefully selected a range of premium beauty products that are renowned for their effectiveness and safety. Our commitment to using only the best ensures that you receive the utmost care and achieve outstanding results.<\\/p>\",\"vi\":\"<p>Divine Beauty Center \\u0111\\u01b0\\u1ee3c bi\\u1ebft \\u0111\\u1ebfn l\\u00e0 \\u0111i\\u1ec3m tr\\u1ea3i nghi\\u1ec7m tuy\\u1ec7t v\\u1eddi \\u0111\\u1ec3 t\\u1eadn h\\u01b0\\u1edfng s\\u1ef1 th\\u01b0 gi\\u00e3n tinh th\\u1ea7n v\\u00e0 l\\u00e0m m\\u1edbi l\\u00e0n da. V\\u1edbi 11 c\\u01a1 s\\u1edf \\u0111\\u1eb7t t\\u1ea1i c\\u00e1c v\\u1ecb tr\\u00ed thu\\u1eadn ti\\u1ec7n t\\u1ea1i H\\u00e0 N\\u1ed9i, ch\\u00fang t\\u00f4i t\\u1ef1 h\\u00e0o mang \\u0111\\u1ebfn nh\\u1eefng ph\\u01b0\\u01a1ng ph\\u00e1p l\\u00e0m \\u0111\\u1eb9p hi\\u1ec7u qu\\u1ea3 h\\u00e0ng \\u0111\\u1ea7u v\\u1edbi nh\\u1eefng ti\\u00eau chu\\u1ea9n kh\\u1eaft khe c\\u1ee7a Ch\\u00e2u &nbsp;u, g\\u00f3p ph\\u1ea7n n\\u00e2ng t\\u1ea7m nhan s\\u1eafc Vi\\u1ec7t, mang l\\u1ea1i di\\u1ec7n m\\u1ea1o t\\u1ef1 tin cho kh\\u00e1ch h\\u00e0ng<br \\/>\\r\\nT\\u1ea1i Divine Beauty Center, ch\\u00fang t\\u00f4i hi\\u1ec3u r\\u00f5 t\\u1ea7m quan tr\\u1ecdng c\\u1ee7a v\\u1ebb ngo\\u00e0i v\\u00e0 s\\u1ef1 tin t\\u01b0\\u1edfng \\u0111\\u1ebfn t\\u1eeb kh\\u00e1ch h\\u00e0ng. \\u0110\\u1ed9i ng\\u0169 chuy\\u00ean gia l\\u00e0m \\u0111\\u1eb9p c\\u1ee7a ch\\u00fang t\\u00f4i \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c \\u0111\\u00e0o t\\u1ea1o b\\u00e0i b\\u1ea3n v\\u00e0 c\\u00f3 nhi\\u1ec1u kinh nghi\\u1ec7m, lu\\u00f4n t\\u1eadn t\\u00e2m cung c\\u1ea5p c\\u00e1c d\\u1ecbch v\\u1ee5 \\u0111\\u1eb7c bi\\u1ec7t v\\u00e0 c\\u00e1 nh\\u00e2n h\\u00f3a \\u0111\\u1ec3 \\u0111\\u00e1p \\u1ee9ng nhu c\\u1ea7u v\\u00e0 s\\u1edf th\\u00edch c\\u1ee7a t\\u1eebng kh\\u00e1ch h\\u00e0ng. T\\u1ea5t c\\u1ea3 c\\u00e1c d\\u1ecbch v\\u1ee5 l\\u00e0m \\u0111\\u1eb9p t\\u1ea1i Divine Beauty \\u0111\\u1ec1u \\u0111\\u01b0\\u1ee3c x\\u00e2y d\\u1ef1ng quy tr\\u00ecnh l\\u00e0m vi\\u1ec7c r\\u00f5 r\\u00e0ng, chu\\u1ea9n y khoa. \\u0110\\u1eb7c bi\\u1ec7t, kh\\u00e1ch h\\u00e0ng tr\\u01b0\\u1edbc khi \\u0111i\\u1ec1u tr\\u1ecb \\u0111\\u1ec1u \\u0111\\u01b0\\u1ee3c t\\u01b0 v\\u1ea5n k\\u1ef9 l\\u01b0\\u1ee1ng c\\u00f9ng chuy\\u00ean gia n\\u01b0\\u1edbc ngo\\u00e0i \\u0111\\u1ec3 l\\u1ef1a ch\\u1ecdn li\\u1ec7u tr\\u00ecnh ph\\u00f9 h\\u1ee3p v\\u1edbi l\\u00e0n da c\\u1ee7a m\\u00ecnh.<br \\/>\\r\\nV\\u1edbi kh\\u00e1t v\\u1ecdng v\\u01b0\\u01a1n m\\u00ecnh tr\\u1edf th\\u00e0nh \\u0111i\\u1ec3m \\u0111\\u1ebfn h\\u00e0ng \\u0111\\u1ea7u gi\\u00fap n\\u00e2ng t\\u1ea7m nhan s\\u1eafc Vi\\u1ec7t, Divine Beauty cam k\\u1ebft ch\\u1ea5t l\\u01b0\\u1ee3ng lu\\u00f4n \\u0111\\u01b0\\u1ee3c \\u0111\\u1eb7t l\\u00ean h\\u00e0ng \\u0111\\u1ea7u. V\\u00ec v\\u1eady, ch\\u00fang t\\u00f4i lu\\u00f4n c\\u1ea9n th\\u1eadn l\\u1ef1a ch\\u1ecdn nh\\u1eefng d\\u00f2ng s\\u1ea3n ph\\u1ea9m l\\u00e0m \\u0111\\u1eb9p cao c\\u1ea5p t\\u1eeb nh\\u1eefng th\\u01b0\\u01a1ng hi\\u1ec7u n\\u1ed5i ti\\u1ebfng, \\u0111\\u1ea3m b\\u1ea3o hi\\u1ec7u qu\\u1ea3 v\\u00e0 an to\\u00e0n. Cam k\\u1ebft c\\u1ee7a ch\\u00fang t\\u00f4i l\\u00e0 ch\\u1ec9 s\\u1eed d\\u1ee5ng nh\\u1eefng s\\u1ea3n ph\\u1ea9m t\\u1ed1t nh\\u1ea5t, \\u0111\\u1ea3m b\\u1ea3o b\\u1ea1n nh\\u1eadn \\u0111\\u01b0\\u1ee3c s\\u1ef1 ch\\u0103m s\\u00f3c \\u0111\\u1eb7c bi\\u1ec7t v\\u1edbi k\\u1ebft qu\\u1ea3 v\\u01b0\\u1ee3t tr\\u1ed9i.<\\/p>\"},\"url_link_title\":{\"en\":\"Explore Our Treatments\",\"vi\":\"Kh\\u00e1m Ph\\u00e1 Li\\u1ec7u Tr\\u00ecnh\"}}', NULL, '/data/cms-image/Images/elements-set-of-natural-and-floral-elements-G9XCU6B_procedures.png', NULL, '/treatments', 'Khám Phá Liệu Trình', NULL, NULL, 10, 'active', 1, 1, '2023-08-07 09:32:47', '2023-08-11 15:12:15'),
(449, 448, 'box img', NULL, NULL, 'about_us', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2023-08-07 09:39:26', '2023-08-07 09:41:10'),
(450, 448, 'box img', NULL, NULL, 'about_us', NULL, NULL, '/data/cms-image/Images/4V7A7602.jpg', NULL, NULL, NULL, NULL, NULL, 2, 'active', 1, 1, '2023-08-07 09:40:10', '2023-08-07 09:41:10'),
(451, 449, 'img', NULL, NULL, 'about_us', '{\"layout\":null,\"style\":null}', '/data/cms-image/Images/4V7A7586.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 2, 'active', 1, 1, '2023-08-07 09:40:45', '2023-08-07 09:41:29'),
(452, 449, 'img', NULL, NULL, 'about_us', NULL, '/data/cms-image/Images/4V7A7453.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2023-08-07 09:40:57', '2023-08-07 09:41:10'),
(453, NULL, 'Khối video giới thiệu', NULL, NULL, 'banner', '{\"layout\":\"video\",\"style\":null,\"title\":{\"en\":\"Kh\\u1ed1i video gi\\u1edbi thi\\u1ec7u\"},\"brief\":{\"en\":\"\"},\"content\":{\"en\":\"\"},\"url_link_title\":{\"en\":\"\"}}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, 'active', 1, 1, '2023-08-07 10:29:04', '2023-08-13 15:37:09'),
(454, 453, 'Video', NULL, 'Divine Beauty is the leading beauty and beauty company in the beauty revolution in Vietnam.', 'banner', '{\"video\":\"https:\\/\\/www.youtube.com\\/watch?v=A2pWKXai4_g\",\"title\":{\"vi\":\"Video\",\"en\":\"Video\"},\"brief\":{\"vi\":\"\",\"en\":\"\"},\"content\":{\"vi\":\"Divine Beauty l\\u00e0 c\\u00f4ng ty th\\u1ea9m m\\u1ef9 v\\u00e0 s\\u1eafc \\u0111\\u1eb9p h\\u00e0ng \\u0111\\u1ea7u trong cu\\u1ed9c c\\u00e1ch m\\u1ea1ng s\\u1eafc \\u0111\\u1eb9p t\\u1ea1i Vi\\u1ec7t Nam.\",\"en\":\"Divine Beauty is the leading beauty and beauty company in the beauty revolution in Vietnam.\"},\"url_link_title\":{\"vi\":\"B\\u1eaft \\u0111\\u1ea7u t\\u01b0 v\\u1ea5n\",\"en\":\"Start consulting\"}}', NULL, '/data/cms-image/Images/woman-at-the-plastic-surgeon.jpg', NULL, '/contact', 'Start consulting', NULL, NULL, NULL, 'active', 1, 1, '2023-08-07 14:47:48', '2023-08-14 01:31:47'),
(455, NULL, 'Liên hệ với chúng tôi để biết thêm thông tin', 'Đối với tất cả các yêu cầu dịch vụ, hãy điền vào biểu mẫu và chúng tôi sẽ sớm phản hồi.', 'Chúng tôi sẽ sẵn lòng trả lời tất cả các câu hỏi của bạn và đảm bảo với bạn rằng bạn có một trải nghiệm phi thường tại Spa của chúng tôi.', 'form', '{\"layout\":\"contact\",\"style\":null,\"title\":{\"vi\":\"Li\\u00ean h\\u1ec7 v\\u1edbi ch\\u00fang t\\u00f4i \\u0111\\u1ec3 bi\\u1ebft th\\u00eam th\\u00f4ng tin\",\"en\":\"Contact Us To Get More Information\"},\"brief\":{\"vi\":\"\\u0110\\u1ed1i v\\u1edbi t\\u1ea5t c\\u1ea3 c\\u00e1c y\\u00eau c\\u1ea7u d\\u1ecbch v\\u1ee5, h\\u00e3y \\u0111i\\u1ec1n v\\u00e0o bi\\u1ec3u m\\u1eabu v\\u00e0 ch\\u00fang t\\u00f4i s\\u1ebd s\\u1edbm ph\\u1ea3n h\\u1ed3i.\",\"en\":\"For all service requests, fill out the form and we\\u2019ll respond soon.\"},\"content\":{\"vi\":\"Ch\\u00fang t\\u00f4i s\\u1ebd s\\u1eb5n l\\u00f2ng tr\\u1ea3 l\\u1eddi t\\u1ea5t c\\u1ea3 c\\u00e1c c\\u00e2u h\\u1ecfi c\\u1ee7a b\\u1ea1n v\\u00e0 \\u0111\\u1ea3m b\\u1ea3o v\\u1edbi b\\u1ea1n r\\u1eb1ng b\\u1ea1n c\\u00f3 m\\u1ed9t tr\\u1ea3i nghi\\u1ec7m phi th\\u01b0\\u1eddng t\\u1ea1i Spa c\\u1ee7a ch\\u00fang t\\u00f4i.\",\"en\":\"We will be happy to answer all your questions and assure you that you have an extraordinary experience in our Spa.\"},\"url_link_title\":{\"vi\":\"\",\"en\":\"\"}}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, 'active', 1, 1, '2023-08-07 16:43:49', '2023-08-13 16:27:32'),
(456, 455, 'All week 10:00 – 20:00', NULL, NULL, 'form', '{\"style\":null,\"title\":{\"vi\":\"All week 10:00 \\u2013 20:00\"},\"brief\":{\"vi\":\"\"},\"content\":{\"vi\":\"\"},\"url_link_title\":{\"vi\":\"\"}}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2023-08-07 16:45:00', '2023-08-13 16:44:19'),
(457, 455, 'Sat : 11 AM to 7 PM', NULL, NULL, 'form', '{\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'delete', 1, 1, '2023-08-07 16:45:10', '2023-08-13 16:43:53'),
(458, 455, 'Sunday : Closed', NULL, NULL, 'form', '{\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'delete', 1, 1, '2023-08-07 16:45:21', '2023-08-13 16:43:47'),
(459, NULL, 'Khối google map', NULL, NULL, 'about_us', '{\"layout\":\"map\",\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16, 'active', 1, 1, '2023-08-08 01:31:22', '2023-08-08 01:31:48'),
(460, NULL, 'Ảnh giới thiệu cửa hàng', NULL, NULL, 'banner', '{\"layout\":\"image\",\"style\":null,\"title\":{\"vi\":\"\\u1ea2nh gi\\u1edbi thi\\u1ec7u c\\u1eeda h\\u00e0ng\"},\"brief\":{\"vi\":\"\"},\"content\":{\"vi\":\"\"},\"url_link_title\":{\"vi\":\"\"}}', NULL, '/data/cms-image/Images/eedd1f864c2d9f73c63c.jpg', NULL, NULL, NULL, NULL, NULL, 16, 'active', 1, 1, '2023-08-08 03:25:10', '2023-08-13 17:46:19'),
(461, NULL, 'Khối địa chỉ', NULL, NULL, 'stores', '{\"layout\":\"map\",\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19, 'active', 1, 1, '2023-08-08 06:45:12', '2023-08-08 06:45:12'),
(462, 461, 'Black Pearl Store', NULL, NULL, 'stores', '{\"style\":null}', NULL, '/data/cms-image/Images/bg_store.png', NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2023-08-08 06:49:27', '2023-08-13 15:31:59'),
(463, 461, 'Origani Store', NULL, NULL, 'stores', '{\"style\":null}', NULL, '/data/cms-image/Images/bg_store2.png', NULL, NULL, NULL, NULL, NULL, 2, 'active', 1, 1, '2023-08-08 06:49:35', '2023-08-13 15:31:59'),
(464, 462, 'Aeon Long Bien', 'TTTM The Garden, khu đô thị, Đ. Mễ Trì, Mỹ Đình, Nam Từ Liêm, Hà Nội\r\nĐiện thoại: 024 3787 5500\r\nHours:  Open ⋅ Closes 10 PM', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.437599915106!2d105.77509521113556!3d21.01516958055!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313454aa0fed56c7%3A0x1ba275bf03d4c1a9!2zVHJ1bmcgdMOibSB0aMawxqFuZyBt4bqhaSBUaGUgR2FyZGVu!5e0!3m2!1svi!2s!4v1691477644174!5m2!1svi!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'stores', '{\"style\":null,\"map\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d3724.437599915106!2d105.77509521113556!3d21.01516958055!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313454aa0fed56c7%3A0x1ba275bf03d4c1a9!2zVHJ1bmcgdMOibSB0aMawxqFuZyBt4bqhaSBUaGUgR2FyZGVu!5e0!3m2!1svi!2s!4v1691477644174!5m2!1svi!2s\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\"><\\/iframe>\",\"title\":{\"vi\":\"Aeon Long Bien\"},\"brief\":{\"vi\":\"TTTM The Garden, khu \\u0111\\u00f4 th\\u1ecb, \\u0110. M\\u1ec5 Tr\\u00ec, M\\u1ef9 \\u0110\\u00ecnh, Nam T\\u1eeb Li\\u00eam, H\\u00e0 N\\u1ed9i\\r\\n\\u0110i\\u1ec7n tho\\u1ea1i: 024 3787 5500\\r\\nHours:  Open \\u22c5 Closes 10\\u202fPM\"},\"content\":{\"vi\":\"\"},\"url_link_title\":{\"vi\":\"\"}}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'active', 1, 1, '2023-08-08 06:54:21', '2023-08-13 15:31:59'),
(465, 463, 'Vincom Ba Trieu', 'TTTM The Garden, khu đô thị, Đ. Mễ Trì, Mỹ Đình, Nam Từ Liêm, Hà Nội\r\nĐiện thoại: 024 3787 5500\r\nHours:  Open ⋅ Closes 10 PM', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.7674839887577!2d105.81358371113515!3d21.001955630559912!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ad3e3989b5e7%3A0xf86f47974fb57a0e!2sFOREVER%20Vincom%20Royal%20City!5e0!3m2!1svi!2s!4v1691477771351!5m2!1svi!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'stores', '{\"style\":null,\"map\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d13273.6174159868!2d105.8153503632266!3d21.00133393635173!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac9b3f23b42b%3A0x49fa01aaa06d239b!2sVinhomes%20Royal%20City!5e0!3m2!1svi!2s!4v1691486852578!5m2!1svi!2s\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\"><\\/iframe>\",\"title\":{\"vi\":\"Vincom Ba Trieu\"},\"brief\":{\"vi\":\"TTTM The Garden, khu \\u0111\\u00f4 th\\u1ecb, \\u0110. M\\u1ec5 Tr\\u00ec, M\\u1ef9 \\u0110\\u00ecnh, Nam T\\u1eeb Li\\u00eam, H\\u00e0 N\\u1ed9i\\r\\n\\u0110i\\u1ec7n tho\\u1ea1i: 024 3787 5500\\r\\nHours:  Open \\u22c5 Closes 10\\u202fPM\"},\"content\":{\"vi\":\"\"},\"url_link_title\":{\"vi\":\"\"}}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'active', 1, 1, '2023-08-08 06:56:22', '2023-08-13 15:31:59'),
(466, 463, 'Royal City', 'TTTM The Garden, khu đô thị, Đ. Mễ Trì, Mỹ Đình, Nam Từ Liêm, Hà Nội\r\nĐiện thoại: 024 3787 5500\r\nHours:  Open ⋅ Closes 10 PM', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.7674839887577!2d105.81358371113515!3d21.001955630559912!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ad3e3989b5e7%3A0xf86f47974fb57a0e!2sFOREVER%20Vincom%20Royal%20City!5e0!3m2!1svi!2s!4v1691477771351!5m2!1svi!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'stores', '{\"style\":null,\"map\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d13273.6174159868!2d105.8153503632266!3d21.00133393635173!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac9b3f23b42b%3A0x49fa01aaa06d239b!2sVinhomes%20Royal%20City!5e0!3m2!1svi!2s!4v1691486852578!5m2!1svi!2s\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\"><\\/iframe>\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2023-08-08 06:56:22', '2023-08-13 15:31:59'),
(467, 462, 'The Garden', 'TTTM The Garden, khu đô thị, Đ. Mễ Trì, Mỹ Đình, Nam Từ Liêm, Hà Nội\r\nĐiện thoại: 024 3787 5500\r\nHours:  Open ⋅ Closes 10 PM', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.437599915106!2d105.77509521113556!3d21.01516958055!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313454aa0fed56c7%3A0x1ba275bf03d4c1a9!2zVHJ1bmcgdMOibSB0aMawxqFuZyBt4bqhaSBUaGUgR2FyZGVu!5e0!3m2!1svi!2s!4v1691477644174!5m2!1svi!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'stores', '{\"style\":null,\"map\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d3724.437599915106!2d105.77509521113556!3d21.01516958055!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313454aa0fed56c7%3A0x1ba275bf03d4c1a9!2zVHJ1bmcgdMOibSB0aMawxqFuZyBt4bqhaSBUaGUgR2FyZGVu!5e0!3m2!1svi!2s!4v1691477644174!5m2!1svi!2s\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\"><\\/iframe>\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2023-08-08 06:54:21', '2023-08-13 15:31:59'),
(468, 459, '22', NULL, NULL, 'about_us', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'delete', 1, 1, '2023-08-08 07:48:53', '2023-08-08 07:49:52'),
(469, 461, 'ee', NULL, NULL, 'stores', '{\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'delete', 1, 1, '2023-08-08 07:50:02', '2023-08-08 07:50:25'),
(470, NULL, 'Brands', NULL, NULL, 'custom', '{\"layout\":\"brands\",\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, 'active', 1, 1, '2023-08-08 16:01:43', '2023-08-08 16:01:43'),
(471, 470, 'img', NULL, NULL, 'custom', '{\"style\":null}', '/data/cms-image/Logo/logo-vivacy.webp', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2023-08-08 16:04:15', '2023-08-08 16:05:33'),
(472, 470, 'img', NULL, NULL, 'custom', '{\"style\":null}', '/data/cms-image/Logo/logo-png-03-1024x213-1.webp', NULL, NULL, NULL, NULL, NULL, NULL, 2, 'active', 1, 1, '2023-08-08 16:04:39', '2023-08-08 16:05:33'),
(473, 470, 'img', NULL, NULL, 'custom', '{\"style\":null}', '/data/cms-image/Logo/931349973e7e971fd3b3662e353de876.webp', NULL, NULL, NULL, NULL, NULL, NULL, 3, 'active', 1, 1, '2023-08-08 16:04:52', '2023-08-08 16:05:33'),
(474, 470, 'img', NULL, NULL, 'custom', '{\"style\":null}', '/data/cms-image/Logo/370-3704795_juvderm-is-the-juvederm-logo-png.webp', NULL, NULL, NULL, NULL, NULL, NULL, 4, 'active', 1, 1, '2023-08-08 16:05:06', '2023-08-08 16:05:33'),
(475, NULL, 'Đặt lịch hẹn', 'Đối với tất cả các yêu cầu dịch vụ, hãy điền vào biểu mẫu và chúng tôi sẽ sớm phản hồi.', 'Chúng tôi sẽ sẵn lòng trả lời tất cả các câu hỏi của bạn và đảm bảo với bạn rằng bạn có một trải nghiệm phi thường tại phòng khám của chúng tôi.', 'form', '{\"layout\":\"booknow\",\"style\":null,\"title\":{\"en\":\"Make An Appointment\",\"vi\":\"\\u0110\\u1eb7t l\\u1ecbch h\\u1eb9n\"},\"brief\":{\"en\":\"For all service requests, fill out the form and we\\u2019ll respond soon.\",\"vi\":\"\\u0110\\u1ed1i v\\u1edbi t\\u1ea5t c\\u1ea3 c\\u00e1c y\\u00eau c\\u1ea7u d\\u1ecbch v\\u1ee5, h\\u00e3y \\u0111i\\u1ec1n v\\u00e0o bi\\u1ec3u m\\u1eabu v\\u00e0 ch\\u00fang t\\u00f4i s\\u1ebd s\\u1edbm ph\\u1ea3n h\\u1ed3i.\"},\"content\":{\"en\":\"We will be happy to answer all your questions and assure you that you have an extraordinary experience in our clinic.\",\"vi\":\"Ch\\u00fang t\\u00f4i s\\u1ebd s\\u1eb5n l\\u00f2ng tr\\u1ea3 l\\u1eddi t\\u1ea5t c\\u1ea3 c\\u00e1c c\\u00e2u h\\u1ecfi c\\u1ee7a b\\u1ea1n v\\u00e0 \\u0111\\u1ea3m b\\u1ea3o v\\u1edbi b\\u1ea1n r\\u1eb1ng b\\u1ea1n c\\u00f3 m\\u1ed9t tr\\u1ea3i nghi\\u1ec7m phi th\\u01b0\\u1eddng t\\u1ea1i ph\\u00f2ng kh\\u00e1m c\\u1ee7a ch\\u00fang t\\u00f4i.\"},\"url_link_title\":{\"en\":\"Book Now\",\"vi\":\"\\u0110\\u0103\\u0323t b\\u00e2y gi\\u1edd\"}}', NULL, '/data/cms-image/Images/cosmetician-gives-chin-botox-injection-to-patient.jpg', NULL, NULL, 'Đặt bây giờ', NULL, NULL, 21, 'active', 1, 1, '2023-08-08 18:37:38', '2023-08-13 17:57:28'),
(476, 475, 'Cả tuần', '10:00 – 20:00', '10:00 – 20:00', 'form', '{\"style\":null,\"title\":{\"vi\":\"C\\u1ea3 tu\\u1ea7n\",\"en\":\"All week\"},\"brief\":{\"vi\":\"10:00 \\u2013 20:00\",\"en\":\"10:00 \\u2013 20:00\"},\"content\":{\"vi\":\"10:00 \\u2013 20:00\",\"en\":\"10:00 \\u2013 20:00\"},\"url_link_title\":{\"vi\":\"\",\"en\":\"\"}}', NULL, NULL, 'far fa-clock', NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2023-08-08 18:38:20', '2023-08-14 01:40:39'),
(477, 475, 'Saturday', NULL, '11.00 AM - 19.00 PM', 'form', '{\"style\":null}', NULL, NULL, 'far fa-clock', NULL, NULL, NULL, NULL, 2, 'delete', 1, 1, '2023-08-08 18:38:44', '2023-08-13 17:57:40'),
(478, 475, 'Sunday', NULL, 'Closed', 'form', '{\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'delete', 1, 1, '2023-08-08 18:39:01', '2023-08-13 17:57:33'),
(479, NULL, 'Dịch Vụ Của Chúng Tôi', 'DIVINE Beauty Liệu trình', 'Chúng tôi cung cấp một loạt các phương pháp điều trị thẩm mỹ, để giúp bạn đạt được vẻ ngoài mà bạn hằng mong muốn.', 'cms_service', '{\"layout\":null,\"style\":null,\"title\":{\"en\":\"Our Treatments\",\"vi\":\"D\\u1ecbch V\\u1ee5 C\\u1ee7a Ch\\u00fang T\\u00f4i\"},\"brief\":{\"en\":\"DIVINE Beauty Treatments\",\"vi\":\"DIVINE Beauty Li\\u1ec7u tr\\u00ecnh\"},\"content\":{\"en\":\"We offer a wide range of aesthetic treatments, to help you achieve the look you\\u2019ve always wanted.\",\"vi\":\"Ch\\u00fang t\\u00f4i cung c\\u1ea5p m\\u1ed9t lo\\u1ea1t c\\u00e1c ph\\u01b0\\u01a1ng ph\\u00e1p \\u0111i\\u1ec1u tr\\u1ecb th\\u1ea9m m\\u1ef9, \\u0111\\u1ec3 gi\\u00fap b\\u1ea1n \\u0111\\u1ea1t \\u0111\\u01b0\\u1ee3c v\\u1ebb ngo\\u00e0i m\\u00e0 b\\u1ea1n h\\u1eb1ng mong mu\\u1ed1n.\"},\"url_link_title\":{\"en\":\"View All Service\",\"vi\":\"T\\u1ea5t c\\u1ea3 D\\u1ecbch V\\u1ee5\"}}', '/data/cms-image/Images/elements-set-of-natural-and-floral-elements-G9XCU6B_procedures.png', '/data/cms-image/Images/elements-set-of-natural-and-floral-elements-G9XCU6B_procedures_2.png', NULL, '/treatments', 'Tất cả Dịch Vụ', NULL, NULL, 4, 'active', 1, 1, '2023-08-10 15:18:53', '2023-08-13 17:11:02'),
(480, 461, 'Opatra Store', NULL, NULL, 'stores', '{\"style\":null,\"title\":{\"vi\":\"Opatra Store\"},\"brief\":{\"vi\":\"\"},\"content\":{\"vi\":\"\"},\"url_link_title\":{\"vi\":\"\"}}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'active', 1, 1, '2023-08-12 02:52:00', '2023-08-13 15:31:59'),
(481, 480, 'IPH', NULL, NULL, 'stores', '{\"style\":null,\"title\":{\"vi\":\"IPH\"},\"brief\":{\"vi\":\"\"},\"content\":{\"vi\":\"\"},\"url_link_title\":{\"vi\":\"\"}}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2023-08-12 02:52:19', '2023-08-13 15:31:59'),
(482, 480, 'Royal City', NULL, NULL, 'stores', '{\"map\":null,\"style\":null,\"title\":{\"vi\":\"Royal City\"},\"brief\":{\"vi\":\"\"},\"content\":{\"vi\":\"\"},\"url_link_title\":{\"vi\":\"\"}}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'active', 1, 1, '2023-08-13 15:30:55', '2023-08-13 15:31:59'),
(483, 462, 'Vincom Smart City', NULL, NULL, 'stores', '{\"map\":null,\"style\":null,\"title\":{\"vi\":\"Vincom Smart City\"},\"brief\":{\"vi\":\"\"},\"content\":{\"vi\":\"\"},\"url_link_title\":{\"vi\":\"\"}}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'active', 1, 1, '2023-08-13 15:31:19', '2023-08-13 15:31:59'),
(484, 462, 'Aeon Mall Ha Dong', NULL, NULL, 'stores', '{\"map\":null,\"style\":null,\"title\":{\"vi\":\"Aeon Mall Ha Dong\"},\"brief\":{\"vi\":\"\"},\"content\":{\"vi\":\"\"},\"url_link_title\":{\"vi\":\"\"}}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'active', 1, 1, '2023-08-13 15:31:25', '2023-08-13 15:31:59'),
(485, 462, 'Savico Long Bien', NULL, NULL, 'stores', '{\"map\":null,\"style\":null,\"title\":{\"vi\":\"Savico Long Bien\"},\"brief\":{\"vi\":\"\"},\"content\":{\"vi\":\"\"},\"url_link_title\":{\"vi\":\"\"}}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'active', 1, 1, '2023-08-13 15:31:32', '2023-08-13 15:31:59'),
(486, 462, 'Vincom Ocean Park', NULL, NULL, 'stores', '{\"map\":null,\"style\":null,\"title\":{\"vi\":\"Vincom Ocean Park\"},\"brief\":{\"vi\":\"\"},\"content\":{\"vi\":\"\"},\"url_link_title\":{\"vi\":\"\"}}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 'active', 1, 1, '2023-08-13 15:31:40', '2023-08-13 15:31:59'),
(487, 455, 'sdfdf', NULL, NULL, 'form', '{\"style\":null,\"title\":{\"vi\":\"sdfdf\"},\"brief\":{\"vi\":\"\"},\"content\":{\"vi\":\"\"},\"url_link_title\":{\"vi\":\"\"}}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'delete', 1, 1, '2023-08-13 16:30:48', '2023-08-13 16:43:29'),
(488, 432, 'llllllll', NULL, NULL, 'custom', '{\"style\":null,\"title\":{\"vi\":\"llllllll\"},\"brief\":{\"vi\":\"\"},\"content\":{\"vi\":\"\"},\"url_link_title\":{\"vi\":\"\"}}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'delete', 1, 1, '2023-08-13 16:31:10', '2023-08-13 16:31:16'),
(489, 413, 'Nâng cơ thủy liệu chuyên sâu', NULL, NULL, 'form', '{\"style\":null,\"title\":{\"en\":\"Hydra Lifting Facial\",\"vi\":\"N\\u00e2ng c\\u01a1 th\\u1ee7y li\\u1ec7u chuy\\u00ean s\\u00e2u\"},\"brief\":{\"en\":\"\",\"vi\":\"\"},\"content\":{\"en\":\"\",\"vi\":\"\"},\"url_link_title\":{\"en\":\"\",\"vi\":\"\"}}', NULL, NULL, 'fas fa-check-circle', NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2023-08-13 16:53:01', '2023-08-13 16:55:22'),
(490, 413, 'Nâng cơ tinh thể', NULL, NULL, 'form', '{\"style\":null,\"title\":{\"en\":\"Lifting Crystals Facial\",\"vi\":\"N\\u00e2ng c\\u01a1 tinh th\\u1ec3\"},\"brief\":{\"en\":\"\",\"vi\":\"\"},\"content\":{\"en\":\"\",\"vi\":\"\"},\"url_link_title\":{\"en\":\"\",\"vi\":\"\"}}', NULL, NULL, 'fas fa-check-circle', NULL, NULL, NULL, NULL, 2, 'active', 1, 1, '2023-08-13 16:53:18', '2023-08-13 16:56:05'),
(491, 413, 'Làm trắng  da thủy liệu', NULL, NULL, 'form', '{\"style\":null,\"title\":{\"en\":\"Hydra Whitening Facial\",\"vi\":\"L\\u00e0m tr\\u1eafng  da th\\u1ee7y li\\u1ec7u\"},\"brief\":{\"en\":\"\",\"vi\":\"\"},\"content\":{\"en\":\"\",\"vi\":\"\"},\"url_link_title\":{\"en\":\"\",\"vi\":\"\"}}', NULL, NULL, 'fas fa-check-circle', NULL, NULL, NULL, NULL, 3, 'active', 1, 1, '2023-08-13 16:53:29', '2023-08-13 16:58:36'),
(492, 413, 'Trị mun thủy liệu', NULL, NULL, 'form', '{\"style\":null,\"title\":{\"en\":\"Hydra Acne Facial\",\"vi\":\"Tr\\u1ecb mun th\\u1ee7y li\\u1ec7u\"},\"brief\":{\"en\":\"\",\"vi\":\"\"},\"content\":{\"en\":\"\",\"vi\":\"\"},\"url_link_title\":{\"en\":\"\",\"vi\":\"\"}}', NULL, NULL, 'fas fa-check-circle', NULL, NULL, NULL, NULL, 4, 'active', 1, 1, '2023-08-13 16:53:48', '2023-08-13 16:58:29'),
(493, 413, 'LED nâng cơ chuyên sâu', NULL, NULL, 'form', '{\"style\":null,\"title\":{\"en\":\"LED Deep Lifting\",\"vi\":\"LED n\\u00e2ng c\\u01a1 chuy\\u00ean s\\u00e2u\"},\"brief\":{\"en\":\"\",\"vi\":\"\"},\"content\":{\"en\":\"\",\"vi\":\"\"},\"url_link_title\":{\"en\":\"\",\"vi\":\"\"}}', NULL, NULL, 'fas fa-check-circle', NULL, NULL, NULL, NULL, 5, 'active', 1, 1, '2023-08-13 16:53:58', '2023-08-13 16:57:26'),
(494, 413, 'Mặt nạ vàng 24k', NULL, NULL, 'form', '{\"style\":null,\"title\":{\"en\":\"24k Gold Facial\",\"vi\":\"M\\u1eb7t n\\u1ea1 v\\u00e0ng 24k\"},\"brief\":{\"en\":\"\",\"vi\":\"\"},\"content\":{\"en\":\"\",\"vi\":\"\"},\"url_link_title\":{\"en\":\"\",\"vi\":\"\"}}', NULL, NULL, 'fas fa-check-circle', NULL, NULL, NULL, NULL, 6, 'active', 1, 1, '2023-08-13 16:54:07', '2023-08-13 16:57:43'),
(495, 439, 'Mặt nạ vàng 24K', NULL, NULL, 'banner', '{\"video\":null,\"title\":{\"en\":\"24k Gold Facial\",\"vi\":\"M\\u1eb7t n\\u1ea1 v\\u00e0ng 24K\"},\"brief\":{\"en\":\"\",\"vi\":\"\"},\"content\":{\"en\":\"\",\"vi\":\"\"},\"url_link_title\":{\"en\":\"\",\"vi\":\"\"}}', '/data/cms-image/service/180508-tron-goi-massage-thu-gian-giam-stress-cham-soc-thanh-loc-da-voi-mat-na-khoang-thien-nhien-khong-nhan-tip.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 4, 'active', 1, 1, '2023-08-13 17:12:40', '2023-08-13 17:17:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_bookings`
--

CREATE TABLE `tb_bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `customer_note` text DEFAULT NULL,
  `department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `doctor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `booking_date` date DEFAULT NULL,
  `booking_time` varchar(255) DEFAULT NULL,
  `admin_note` text DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `status` varchar(255) NOT NULL DEFAULT 'new',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_branchs`
--

CREATE TABLE `tb_branchs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_type` varchar(255) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `map` text DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_branchs`
--

INSERT INTO `tb_branchs` (`id`, `is_type`, `name`, `city`, `district`, `address`, `phone`, `fax`, `map`, `json_params`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 'FHM Agency', '5', '825', 'Số 16 Trần Quốc Vượng, Cầu Giấy, Hà nội', '098 226 9600', '098 226 9611', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29792.14029028318!2d105.7910779951155!3d21.03198432079961!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab398a2a3667%3A0x24328ecb439376f!2sFHM%20Agency!5e0!3m2!1svi!2sus!4v1670225754820!5m2!1svi!2sus\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', NULL, 'active', 1, 1, '2022-12-05 07:47:15', '2022-12-05 09:41:38'),
(2, NULL, 'Công ty cổ phần FHM Agency Hà Nội', '5', '825', '2/25 Thọ Tháp, Cầu Giấy, Hà Nội', '0393004567', '0393004567', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d29792.155949030785!2d105.791078!3d21.031906!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xd0905b6cacd304da!2zQ8O0bmcgdHkgY-G7lSBwaOG6p24gdGjGsMahbmcgbeG6oWkgRkhNIFZp4buHdCBOYW0!5e0!3m2!1svi!2sus!4v1670225430705!5m2!1svi!2sus\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', NULL, 'active', 1, 1, '2022-12-05 07:49:39', '2022-12-05 07:49:39'),
(3, NULL, 'Barber Hà Nội', '5', '824', 'Hà Nội', '0332792626', NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6635.445327656514!2d105.7836173817835!3d21.031991107438525!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ade7a42a41c7%3A0xd0905b6cacd304da!2zQ8O0bmcgdHkgY-G7lSBwaOG6p24gdGjGsMahbmcgbeG6oWkgRkhNIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1672714918910!5m2!1svi!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', NULL, 'active', 1, 1, '2023-01-03 03:02:32', '2023-01-03 03:02:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_cms_posts`
--

CREATE TABLE `tb_cms_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `taxonomy_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_type` varchar(255) DEFAULT 'post',
  `title` varchar(255) NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `image` varchar(255) DEFAULT NULL,
  `image_thumb` varchar(255) DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `count_visited` int(11) NOT NULL DEFAULT 0,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_cms_posts`
--

INSERT INTO `tb_cms_posts` (`id`, `taxonomy_id`, `is_type`, `title`, `json_params`, `image`, `image_thumb`, `is_featured`, `count_visited`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `alias`) VALUES
(81, 37, 'service', 'THỦ TỤC GIẤY TỜ NHANH GỌN', '{\"icon\":\"icon-realestate-doc\",\"brief\":{\"vi\":\"\\u0110\\u1ed9i ng\\u0169 chuy\\u00ean nghi\\u1ec7p s\\u1ebd gi\\u1ea3i quy\\u1ebft th\\u1ee7 t\\u1ee5c gi\\u1ea5y t\\u1edd c\\u1ee7a b\\u1ea1n m\\u1ed9t c\\u00e1ch nhanh g\\u1ecdn v\\u00e0 \\u0111\\u00fang quy tr\\u00ecnh\"},\"content\":{\"vi\":\"\\u0110\\u1ed9i ng\\u0169 chuy\\u00ean nghi\\u1ec7p s\\u1ebd gi\\u1ea3i quy\\u1ebft th\\u1ee7 t\\u1ee5c gi\\u1ea5y t\\u1edd c\\u1ee7a b\\u1ea1n m\\u1ed9t c\\u00e1ch nhanh g\\u1ecdn v\\u00e0 \\u0111\\u00fang quy tr\\u00ecnh\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', NULL, NULL, 1, 0, 6, 'active', 1, 1, '2023-01-09 07:04:55', '2023-02-18 01:39:13', 'thu-tuc-giay-to-nhanh-gon'),
(82, 37, 'service', 'TÀI CHÍNH DỄ DÀNG', '{\"icon\":\"icon-realestate-credit\",\"brief\":{\"vi\":\"Hi\\u1ec3n th\\u1ecb N\\u1ed9i dung c\\u1ee7a b\\u1ea1n m\\u1ed9t c\\u00e1ch h\\u1ea5p d\\u1eabn, c\\u00f3 c\\u00e1c v\\u00f9ng t\\u00f9y ch\\u1ec9nh kh\\u00f4ng gi\\u1edbi h\\u1ea1n.\"},\"content\":{\"vi\":\"Hi\\u1ec3n th\\u1ecb N\\u1ed9i dung c\\u1ee7a b\\u1ea1n m\\u1ed9t c\\u00e1ch h\\u1ea5p d\\u1eabn, c\\u00f3 c\\u00e1c v\\u00f9ng t\\u00f9y ch\\u1ec9nh kh\\u00f4ng gi\\u1edbi h\\u1ea1n.\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', NULL, NULL, 1, 0, 5, 'active', 1, 1, '2023-01-09 07:04:57', '2023-02-18 13:13:24', 'tai-chinh-de-dang'),
(83, 37, 'service', 'CHO THUÊ LINH HOẠT', '{\"icon\":\"icon-realestate-rent\",\"brief\":{\"vi\":\"Cung c\\u1ea5p th\\u00f4ng tin tra c\\u1ee9u kh\\u00e1ch quan, trung th\\u1ef1c v\\u1ebf c\\u00e1c t\\u00f2a nh\\u00e0 c\\u0103n h\\u1ed9 c\\u01b0 d\\u00e2n to\\u00e0n qu\\u1ed1c.\"},\"content\":{\"vi\":\"Cung c\\u1ea5p th\\u00f4ng tin tra c\\u1ee9u kh\\u00e1ch quan, trung th\\u1ef1c v\\u1ebf c\\u00e1c t\\u00f2a nh\\u00e0 c\\u0103n h\\u1ed9 c\\u01b0 d\\u00e2n to\\u00e0n qu\\u1ed1c\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', NULL, NULL, 1, 0, 5, 'active', 1, 1, '2023-01-09 07:04:59', '2023-02-18 01:40:00', 'cho-thue-linh-hoat'),
(84, 37, 'service', 'TIỆN ÍCH MIỄN PHÍ', '{\"icon\":\"icon-realestate-garage\",\"brief\":{\"vi\":\"B\\u1ea1n c\\u00f3 to\\u00e0n quy\\u1ec1n ki\\u1ec3m so\\u00e1t d\\u1ec5 d\\u00e0ng \\u0111\\u1ed1i v\\u1edbi t\\u1eebng & m\\u1ecdi y\\u1ebfu t\\u1ed1 cung c\\u1ea5p kh\\u1ea3 n\\u0103ng t\\u00f9y ch\\u1ec9nh v\\u00f4 t\\u1eadn.\"},\"content\":{\"vi\":\"B\\u1ea1n c\\u00f3 to\\u00e0n quy\\u1ec1n ki\\u1ec3m so\\u00e1t d\\u1ec5 d\\u00e0ng \\u0111\\u1ed1i v\\u1edbi t\\u1eebng &amp; m\\u1ecdi y\\u1ebfu t\\u1ed1 cung c\\u1ea5p kh\\u1ea3 n\\u0103ng t\\u00f9y ch\\u1ec9nh v\\u00f4 t\\u1eadn.\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', NULL, NULL, 1, 0, 3, 'active', 1, 1, '2023-01-09 07:05:01', '2023-02-03 10:10:17', 'tien-ich-mien-phi'),
(85, 37, 'service', 'ĐƯỢC XÂY DỰNG TỐT', '{\"icon\":\"icon-realestate-hammer\",\"brief\":{\"vi\":\"T\\u00edch h\\u1ee3p t\\u1ea5t c\\u1ea3 c\\u00e1c d\\u1ecbch v\\u1ee5 trong m\\u1ed9t gi\\u00fap kh\\u00e1ch h\\u00e0ng tr\\u1ea3i nghi\\u1ec7m v\\u00e0 ti\\u1ec7n d\\u1ee5ng.\"},\"content\":{\"vi\":\"T\\u00edch h\\u1ee3p t\\u1ea5t c\\u1ea3 c\\u00e1c d\\u1ecbch v\\u1ee5 trong m\\u1ed9t gi\\u00fap kh\\u00e1ch h\\u00e0ng tr\\u1ea3i nghi\\u1ec7m v\\u00e0 ti\\u1ec7n d\\u1ee5ng.\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', NULL, NULL, 1, 2, 2, 'active', 1, 1, '2023-01-09 07:05:03', '2023-02-18 01:41:00', 'duoc-xay-dung-tot'),
(86, 37, 'service', 'ĐẢM BẢO AN TOÀN', '{\"icon\":\"icon-realestate-my-house\",\"brief\":{\"vi\":\"\\u0110\\u1ea3m b\\u1ea3o b\\u1ed9 b\\u1ea3o m\\u1eadt v\\u00e0 danh t\\u00ednh c\\u1ee7a b\\u1ea1n tr\\u00ean trang web\"},\"content\":{\"vi\":\"\\u0110\\u1ea3m b\\u1ea3o b\\u1ed9 b\\u1ea3o m\\u1eadt v\\u00e0 danh t\\u00ednh c\\u1ee7a b\\u1ea1n tr\\u00ean trang web\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/bv3.jpg', NULL, 1, 5, 1, 'active', 1, 1, '2023-01-09 07:05:06', '2023-02-18 01:42:01', 'dam-bao-an-toan'),
(87, 17, 'resource', 'Hà Nội', '{\"price\":null,\"price_old\":null,\"place\":null,\"area\":null,\"scale\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/dv_1.jpg', NULL, 1, 1, 1, 'active', 1, 1, '2023-01-09 09:22:02', '2023-02-18 01:42:48', 'ha-noi'),
(88, 17, 'resource', 'TP Hồ Chí Minh', '{\"price\":null,\"price_old\":null,\"place\":null,\"area\":null,\"scale\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/dv_2.jpg', NULL, 1, 0, 2, 'active', 1, 1, '2023-01-09 09:23:40', '2023-02-18 01:43:04', 'tp-ho-chi-minh'),
(89, 17, 'resource', 'Đà Nẵng', '{\"price\":null,\"price_old\":null,\"place\":null,\"area\":null,\"scale\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/dv_3.jpg', NULL, 1, 0, 3, 'active', 1, 1, '2023-01-09 09:24:02', '2023-02-18 01:43:18', 'da-nang'),
(90, 17, 'resource', 'Hải Phòng', '{\"price\":null,\"price_old\":null,\"place\":null,\"area\":null,\"scale\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/dv_4.jpg', NULL, 1, 0, 4, 'active', 1, 1, '2023-01-09 09:24:27', '2023-02-18 01:43:32', 'hai-phong'),
(91, 17, 'resource', 'Thái Nguyên', '{\"price\":null,\"price_old\":null,\"place\":null,\"area\":null,\"scale\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/dv_5.jpg', NULL, 1, 0, 5, 'active', 1, 1, '2023-01-09 09:24:49', '2023-02-18 01:45:34', 'thai-nguyen'),
(134, 1, 'post', 'Hơi thở bị lãng quên ?', '{\"brief\":{\"vi\":\"Tr\\u1edf th\\u00e0nh th\\u00e0nh vi\\u00ean Yoga Studio \\u0111\\u1ec3 t\\u1eadp yoga t\\u1ea1i ng\\u00f4i nh\\u00e0 \\u0111\\u00edch th\\u1ef1c.\\u00a0T\\u1eadn h\\u01b0\\u1edfng m\\u1ee9c gi\\u00e1 \\u0111\\u1eb7c bi\\u1ec7t v\\u00e0 ti\\u1ebfp c\\u1eadn ch\\u01b0\\u01a1ng tr\\u00ecnh yoga Iyengar phong ph\\u00fa c\\u1ee7a ch\\u00fang t\\u00f4i, v\\u1edbi nh\\u1eefng gi\\u00e1o vi\\u00ean tuy\\u1ec7t v\\u1eddi v\\u00e0 nh\\u1eefng ng\\u01b0\\u1eddi c\\u00f3 c\\u00f9ng ch\\u00ed h\\u01b0\\u1edbng.\"},\"content\":{\"vi\":\"<p><span style=\\\"font-size:var(--h2_typography-font-size)\\\"><span style=\\\"box-sizing:border-box\\\"><span style=\\\"font-family:var(--h2_typography-font-family)\\\"><span style=\\\"font-weight:var(--h2_typography-font-weight)\\\"><span style=\\\"line-height:var(--h2_typography-line-height)\\\"><span style=\\\"letter-spacing:var(--h2_typography-letter-spacing)\\\"><span style=\\\"font-style:normal\\\"><span style=\\\"color:var(--h2_typography-color)\\\"><span style=\\\"font-variant-ligatures:normal\\\"><span style=\\\"white-space:normal\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"text-decoration-thickness:initial\\\"><span style=\\\"text-decoration-style:initial\\\"><span style=\\\"text-decoration-color:initial\\\"><font style=\\\"box-sizing:border-box; vertical-align:inherit\\\"><font style=\\\"box-sizing:border-box; vertical-align:inherit\\\">Tr\\u1edf th\\u00e0nh th\\u00e0nh vi\\u00ean Yoga Studio \\u0111\\u1ec3 t\\u1eadp yoga t\\u1ea1i ng\\u00f4i nh\\u00e0 \\u0111\\u00edch th\\u1ef1c.&nbsp;<\\/font><font style=\\\"box-sizing:border-box; vertical-align:inherit\\\">T\\u1eadn h\\u01b0\\u1edfng m\\u1ee9c gi\\u00e1 \\u0111\\u1eb7c bi\\u1ec7t v\\u00e0 ti\\u1ebfp c\\u1eadn ch\\u01b0\\u01a1ng tr\\u00ecnh yoga Iyengar phong ph\\u00fa c\\u1ee7a ch\\u00fang t\\u00f4i, v\\u1edbi nh\\u1eefng gi\\u00e1o vi\\u00ean tuy\\u1ec7t v\\u1eddi v\\u00e0 nh\\u1eefng ng\\u01b0\\u1eddi c\\u00f3 c\\u00f9ng ch\\u00ed h\\u01b0\\u1edbng.<\\/font><\\/font><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/Tin-tuc/blog1.png', NULL, 1, 4, 1, 'delete', 1, 1, '2023-04-07 01:54:23', '2023-08-09 14:04:49', 'hoi-tho-bi-lang-quen'),
(135, 1, 'post', 'Inside Flow Yoga là gì?', '{\"brief\":{\"vi\":\"Tr\\u1edf th\\u00e0nh th\\u00e0nh vi\\u00ean Yoga Studio \\u0111\\u1ec3 t\\u1eadp yoga t\\u1ea1i ng\\u00f4i nh\\u00e0 \\u0111\\u00edch th\\u1ef1c.\\u00a0T\\u1eadn h\\u01b0\\u1edfng m\\u1ee9c gi\\u00e1 \\u0111\\u1eb7c bi\\u1ec7t v\\u00e0 ti\\u1ebfp c\\u1eadn ch\\u01b0\\u01a1ng tr\\u00ecnh yoga Iyengar phong ph\\u00fa c\\u1ee7a ch\\u00fang t\\u00f4i, v\\u1edbi nh\\u1eefng gi\\u00e1o vi\\u00ean tuy\\u1ec7t v\\u1eddi v\\u00e0 nh\\u1eefng ng\\u01b0\\u1eddi c\\u00f3 c\\u00f9ng ch\\u00ed h\\u01b0\\u1edbng.\"},\"content\":{\"vi\":\"<p><span style=\\\"font-size:var(--h2_typography-font-size)\\\"><span style=\\\"box-sizing:border-box\\\"><span style=\\\"font-family:var(--h2_typography-font-family)\\\"><span style=\\\"font-weight:var(--h2_typography-font-weight)\\\"><span style=\\\"line-height:var(--h2_typography-line-height)\\\"><span style=\\\"letter-spacing:var(--h2_typography-letter-spacing)\\\"><span style=\\\"font-style:normal\\\"><span style=\\\"color:var(--h2_typography-color)\\\"><span style=\\\"font-variant-ligatures:normal\\\"><span style=\\\"white-space:normal\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"text-decoration-thickness:initial\\\"><span style=\\\"text-decoration-style:initial\\\"><span style=\\\"text-decoration-color:initial\\\"><font style=\\\"box-sizing:border-box; vertical-align:inherit\\\"><font style=\\\"box-sizing:border-box; vertical-align:inherit\\\">Tr\\u1edf th\\u00e0nh th\\u00e0nh vi\\u00ean Yoga Studio \\u0111\\u1ec3 t\\u1eadp yoga t\\u1ea1i ng\\u00f4i nh\\u00e0 \\u0111\\u00edch th\\u1ef1c.&nbsp;<\\/font><font style=\\\"box-sizing:border-box; vertical-align:inherit\\\">T\\u1eadn h\\u01b0\\u1edfng m\\u1ee9c gi\\u00e1 \\u0111\\u1eb7c bi\\u1ec7t v\\u00e0 ti\\u1ebfp c\\u1eadn ch\\u01b0\\u01a1ng tr\\u00ecnh yoga Iyengar phong ph\\u00fa c\\u1ee7a ch\\u00fang t\\u00f4i, v\\u1edbi nh\\u1eefng gi\\u00e1o vi\\u00ean tuy\\u1ec7t v\\u1eddi v\\u00e0 nh\\u1eefng ng\\u01b0\\u1eddi c\\u00f3 c\\u00f9ng ch\\u00ed h\\u01b0\\u1edbng.<\\/font><\\/font><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/Tin-tuc/blog2.png', NULL, 1, 20, 2, 'delete', 1, 1, '2023-04-07 01:57:48', '2023-08-09 14:04:50', 'inside-flow-yoga-la-gi'),
(136, 1, 'post', 'Sự khác biệt của Inside Flow Yoga?', '{\"brief\":{\"vi\":\"Tr\\u1edf th\\u00e0nh th\\u00e0nh vi\\u00ean Yoga Studio \\u0111\\u1ec3 t\\u1eadp yoga t\\u1ea1i ng\\u00f4i nh\\u00e0 \\u0111\\u00edch th\\u1ef1c.\\u00a0T\\u1eadn h\\u01b0\\u1edfng m\\u1ee9c gi\\u00e1 \\u0111\\u1eb7c bi\\u1ec7t v\\u00e0 ti\\u1ebfp c\\u1eadn ch\\u01b0\\u01a1ng tr\\u00ecnh yoga Iyengar phong ph\\u00fa c\\u1ee7a ch\\u00fang t\\u00f4i, v\\u1edbi nh\\u1eefng gi\\u00e1o vi\\u00ean tuy\\u1ec7t v\\u1eddi v\\u00e0 nh\\u1eefng ng\\u01b0\\u1eddi c\\u00f3 c\\u00f9ng ch\\u00ed h\\u01b0\\u1edbng.\"},\"content\":{\"vi\":\"<p><span style=\\\"font-size:var(--h2_typography-font-size)\\\"><span style=\\\"box-sizing:border-box\\\"><span style=\\\"font-family:var(--h2_typography-font-family)\\\"><span style=\\\"font-weight:var(--h2_typography-font-weight)\\\"><span style=\\\"line-height:var(--h2_typography-line-height)\\\"><span style=\\\"letter-spacing:var(--h2_typography-letter-spacing)\\\"><span style=\\\"font-style:normal\\\"><span style=\\\"color:var(--h2_typography-color)\\\"><span style=\\\"font-variant-ligatures:normal\\\"><span style=\\\"white-space:normal\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"text-decoration-thickness:initial\\\"><span style=\\\"text-decoration-style:initial\\\"><span style=\\\"text-decoration-color:initial\\\"><font style=\\\"box-sizing:border-box; vertical-align:inherit\\\"><font style=\\\"box-sizing:border-box; vertical-align:inherit\\\">Tr\\u1edf th\\u00e0nh th\\u00e0nh vi\\u00ean Yoga Studio \\u0111\\u1ec3 t\\u1eadp yoga t\\u1ea1i ng\\u00f4i nh\\u00e0 \\u0111\\u00edch th\\u1ef1c.&nbsp;<\\/font><font style=\\\"box-sizing:border-box; vertical-align:inherit\\\">T\\u1eadn h\\u01b0\\u1edfng m\\u1ee9c gi\\u00e1 \\u0111\\u1eb7c bi\\u1ec7t v\\u00e0 ti\\u1ebfp c\\u1eadn ch\\u01b0\\u01a1ng tr\\u00ecnh yoga Iyengar phong ph\\u00fa c\\u1ee7a ch\\u00fang t\\u00f4i, v\\u1edbi nh\\u1eefng gi\\u00e1o vi\\u00ean tuy\\u1ec7t v\\u1eddi v\\u00e0 nh\\u1eefng ng\\u01b0\\u1eddi c\\u00f3 c\\u00f9ng ch\\u00ed h\\u01b0\\u1edbng.<\\/font><\\/font><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/Tin-tuc/blog3.png', '/data/cms-image/Tin-tuc/blog3.png', 1, 16, 3, 'delete', 1, 1, '2023-04-07 01:59:20', '2023-08-09 14:04:52', 'su-khac-biet-cua-inside-flow-yoga'),
(137, 1, 'post', 'Suy nghĩ về việc rèn luyện?', '{\"brief\":{\"vi\":\"Tr\\u1edf th\\u00e0nh th\\u00e0nh vi\\u00ean Yoga Studio \\u0111\\u1ec3 t\\u1eadp yoga t\\u1ea1i ng\\u00f4i nh\\u00e0 \\u0111\\u00edch th\\u1ef1c.\\u00a0T\\u1eadn h\\u01b0\\u1edfng m\\u1ee9c gi\\u00e1 \\u0111\\u1eb7c bi\\u1ec7t v\\u00e0 ti\\u1ebfp c\\u1eadn ch\\u01b0\\u01a1ng tr\\u00ecnh yoga Iyengar phong ph\\u00fa c\\u1ee7a ch\\u00fang t\\u00f4i, v\\u1edbi nh\\u1eefng gi\\u00e1o vi\\u00ean tuy\\u1ec7t v\\u1eddi v\\u00e0 nh\\u1eefng ng\\u01b0\\u1eddi c\\u00f3 c\\u00f9ng ch\\u00ed h\\u01b0\\u1edbng.\"},\"content\":{\"vi\":\"<p><span style=\\\"font-size:var(--h2_typography-font-size)\\\"><span style=\\\"box-sizing:border-box\\\"><span style=\\\"font-family:var(--h2_typography-font-family)\\\"><span style=\\\"font-weight:var(--h2_typography-font-weight)\\\"><span style=\\\"line-height:var(--h2_typography-line-height)\\\"><span style=\\\"letter-spacing:var(--h2_typography-letter-spacing)\\\"><span style=\\\"font-style:normal\\\"><span style=\\\"color:var(--h2_typography-color)\\\"><span style=\\\"font-variant-ligatures:normal\\\"><span style=\\\"white-space:normal\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"text-decoration-thickness:initial\\\"><span style=\\\"text-decoration-style:initial\\\"><span style=\\\"text-decoration-color:initial\\\"><font style=\\\"box-sizing:border-box; vertical-align:inherit\\\"><font style=\\\"box-sizing:border-box; vertical-align:inherit\\\">Tr\\u1edf th\\u00e0nh th\\u00e0nh vi\\u00ean Yoga Studio \\u0111\\u1ec3 t\\u1eadp yoga t\\u1ea1i ng\\u00f4i nh\\u00e0 \\u0111\\u00edch th\\u1ef1c.&nbsp;<\\/font><font style=\\\"box-sizing:border-box; vertical-align:inherit\\\">T\\u1eadn h\\u01b0\\u1edfng m\\u1ee9c gi\\u00e1 \\u0111\\u1eb7c bi\\u1ec7t v\\u00e0 ti\\u1ebfp c\\u1eadn ch\\u01b0\\u01a1ng tr\\u00ecnh yoga Iyengar phong ph\\u00fa c\\u1ee7a ch\\u00fang t\\u00f4i, v\\u1edbi nh\\u1eefng gi\\u00e1o vi\\u00ean tuy\\u1ec7t v\\u1eddi v\\u00e0 nh\\u1eefng ng\\u01b0\\u1eddi c\\u00f3 c\\u00f9ng ch\\u00ed h\\u01b0\\u1edbng.<\\/font><\\/font><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/Tin-tuc/blog4.png', NULL, 0, 2, 4, 'delete', 1, 1, '2023-04-07 02:00:26', '2023-08-09 14:04:45', 'suy-nghi-ve-viec-ren-luyen'),
(138, 1, 'post', 'Yoga tăng sức mạnh', '{\"brief\":{\"vi\":\"Tr\\u1edf th\\u00e0nh th\\u00e0nh vi\\u00ean Yoga Studio \\u0111\\u1ec3 t\\u1eadp yoga t\\u1ea1i ng\\u00f4i nh\\u00e0 \\u0111\\u00edch th\\u1ef1c.\\u00a0T\\u1eadn h\\u01b0\\u1edfng m\\u1ee9c gi\\u00e1 \\u0111\\u1eb7c bi\\u1ec7t v\\u00e0 ti\\u1ebfp c\\u1eadn ch\\u01b0\\u01a1ng tr\\u00ecnh yoga Iyengar phong ph\\u00fa c\\u1ee7a ch\\u00fang t\\u00f4i, v\\u1edbi nh\\u1eefng gi\\u00e1o vi\\u00ean tuy\\u1ec7t v\\u1eddi v\\u00e0 nh\\u1eefng ng\\u01b0\\u1eddi c\\u00f3 c\\u00f9ng ch\\u00ed h\\u01b0\\u1edbng.\"},\"content\":{\"vi\":\"<p><span style=\\\"font-size:var(--h2_typography-font-size)\\\"><span style=\\\"box-sizing:border-box\\\"><span style=\\\"font-family:var(--h2_typography-font-family)\\\"><span style=\\\"font-weight:var(--h2_typography-font-weight)\\\"><span style=\\\"line-height:var(--h2_typography-line-height)\\\"><span style=\\\"letter-spacing:var(--h2_typography-letter-spacing)\\\"><span style=\\\"font-style:normal\\\"><span style=\\\"color:var(--h2_typography-color)\\\"><span style=\\\"font-variant-ligatures:normal\\\"><span style=\\\"white-space:normal\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"text-decoration-thickness:initial\\\"><span style=\\\"text-decoration-style:initial\\\"><span style=\\\"text-decoration-color:initial\\\"><font style=\\\"box-sizing:border-box; vertical-align:inherit\\\"><font style=\\\"box-sizing:border-box; vertical-align:inherit\\\">Tr\\u1edf th\\u00e0nh th\\u00e0nh vi\\u00ean Yoga Studio \\u0111\\u1ec3 t\\u1eadp yoga t\\u1ea1i ng\\u00f4i nh\\u00e0 \\u0111\\u00edch th\\u1ef1c.&nbsp;<\\/font><font style=\\\"box-sizing:border-box; vertical-align:inherit\\\">T\\u1eadn h\\u01b0\\u1edfng m\\u1ee9c gi\\u00e1 \\u0111\\u1eb7c bi\\u1ec7t v\\u00e0 ti\\u1ebfp c\\u1eadn ch\\u01b0\\u01a1ng tr\\u00ecnh yoga Iyengar phong ph\\u00fa c\\u1ee7a ch\\u00fang t\\u00f4i, v\\u1edbi nh\\u1eefng gi\\u00e1o vi\\u00ean tuy\\u1ec7t v\\u1eddi v\\u00e0 nh\\u1eefng ng\\u01b0\\u1eddi c\\u00f3 c\\u00f9ng ch\\u00ed h\\u01b0\\u1edbng.<\\/font><\\/font><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/Tin-tuc/blog5.png', NULL, 0, 0, 5, 'delete', 1, 1, '2023-04-07 02:01:29', '2023-08-09 14:04:47', 'yoga-tang-suc-manh'),
(139, 1, 'post', 'Yoga và 6 giá trị lợi ích cho trẻ ở độ tuổi đi học', '{\"brief\":{\"vi\":\"Tr\\u1edf th\\u00e0nh th\\u00e0nh vi\\u00ean Yoga Studio \\u0111\\u1ec3 t\\u1eadp yoga t\\u1ea1i ng\\u00f4i nh\\u00e0 \\u0111\\u00edch th\\u1ef1c.\\u00a0T\\u1eadn h\\u01b0\\u1edfng m\\u1ee9c gi\\u00e1 \\u0111\\u1eb7c bi\\u1ec7t v\\u00e0 ti\\u1ebfp c\\u1eadn ch\\u01b0\\u01a1ng tr\\u00ecnh yoga Iyengar phong ph\\u00fa c\\u1ee7a ch\\u00fang t\\u00f4i, v\\u1edbi nh\\u1eefng gi\\u00e1o vi\\u00ean tuy\\u1ec7t v\\u1eddi v\\u00e0 nh\\u1eefng ng\\u01b0\\u1eddi c\\u00f3 c\\u00f9ng ch\\u00ed h\\u01b0\\u1edbng.\"},\"content\":{\"vi\":\"<p><span style=\\\"font-size:var(--h2_typography-font-size)\\\"><span style=\\\"box-sizing:border-box\\\"><span style=\\\"font-family:var(--h2_typography-font-family)\\\"><span style=\\\"font-weight:var(--h2_typography-font-weight)\\\"><span style=\\\"line-height:var(--h2_typography-line-height)\\\"><span style=\\\"letter-spacing:var(--h2_typography-letter-spacing)\\\"><span style=\\\"font-style:normal\\\"><span style=\\\"color:var(--h2_typography-color)\\\"><span style=\\\"font-variant-ligatures:normal\\\"><span style=\\\"white-space:normal\\\"><span style=\\\"background-color:#ffffff\\\"><span style=\\\"text-decoration-thickness:initial\\\"><span style=\\\"text-decoration-style:initial\\\"><span style=\\\"text-decoration-color:initial\\\"><font style=\\\"box-sizing:border-box; vertical-align:inherit\\\"><font style=\\\"box-sizing:border-box; vertical-align:inherit\\\">Tr\\u1edf th\\u00e0nh th\\u00e0nh vi\\u00ean Yoga Studio \\u0111\\u1ec3 t\\u1eadp yoga t\\u1ea1i ng\\u00f4i nh\\u00e0 \\u0111\\u00edch th\\u1ef1c.&nbsp;<\\/font><font style=\\\"box-sizing:border-box; vertical-align:inherit\\\">T\\u1eadn h\\u01b0\\u1edfng m\\u1ee9c gi\\u00e1 \\u0111\\u1eb7c bi\\u1ec7t v\\u00e0 ti\\u1ebfp c\\u1eadn ch\\u01b0\\u01a1ng tr\\u00ecnh yoga Iyengar phong ph\\u00fa c\\u1ee7a ch\\u00fang t\\u00f4i, v\\u1edbi nh\\u1eefng gi\\u00e1o vi\\u00ean tuy\\u1ec7t v\\u1eddi v\\u00e0 nh\\u1eefng ng\\u01b0\\u1eddi c\\u00f3 c\\u00f9ng ch\\u00ed h\\u01b0\\u1edbng.<\\/font><\\/font><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/Tin-tuc/blog6.png', NULL, 0, 0, 6, 'delete', 1, 1, '2023-04-07 02:03:20', '2023-08-09 14:04:43', 'yoga-va-6-gia-tri-loi-ich-cho-tre-o-do-tuoi-di-hoc'),
(147, 45, 'product', 'Gói tập 1 tháng', '{\"price\":\"50\",\"brand\":\"Maison\",\"brief\":{\"vi\":\"<ul>\\r\\n\\t<li>D\\u00e0nh cho ng\\u01b0\\u1eddi b\\u1eadn r\\u1ed9n<\\/li>\\r\\n\\t<li>C\\u00f3 ki\\u1ebfn th\\u1ee9c v\\u1ec1 Yoga<\\/li>\\r\\n\\t<li>C\\u00f3 ki\\u1ebfn th\\u1ee9c v\\u1ec1 Yoga<\\/li>\\r\\n\\t<li>Tr\\u1ea3i nghi\\u1ec7m luy\\u1ec7n t\\u1eadp an to\\u00e0n v\\u00e0 vui v\\u1ebb<\\/li>\\r\\n\\t<li>Chi ph\\u00ed th\\u1ea5p<\\/li>\\r\\n<\\/ul>\"},\"content\":{\"vi\":\"<p>B\\u1ea1n l\\u00e0 ng\\u01b0\\u1eddi m\\u1edbi v\\u00e0 c\\u00f2n b\\u1ee1 ng\\u1ee1 v\\u1edbi b\\u1ed9 m\\u00f4n Yoga ho\\u1eb7c ch\\u01b0a bao gi\\u1edd tham gia l\\u1edbp h\\u1ecdc yoga tr\\u01b0\\u1edbc \\u0111\\u00e2y th\\u00ec g\\u00f3i t\\u1eadp 12 bu\\u1ed5i l\\u00e0 l\\u1ef1a ch\\u1ecdn cho b\\u1ea1n.<\\/p>\\r\\n\\r\\n<p>Hi\\u1ec3u \\u0111\\u01b0\\u1ee3c c\\u00e1c kh\\u00e1i ni\\u1ec7m c\\u01a1 b\\u1ea3n v\\u1ec1 yoga v\\u00e0 th\\u1ef1c h\\u00e0nh t\\u1eadp luy\\u1ec7n \\u0111\\u1ec3 c\\u00f3 c\\u01a1 th\\u1ec3 d\\u1ebbo dai kho\\u1ebb m\\u1ea1nh.<\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"gallery_image\":{\"1680838448453\":\"\\/data\\/cms-image\\/San-pham\\/binh-an-1808-2.png\",\"1680838455163\":\"\\/data\\/cms-image\\/San-pham\\/binh-an-1808-5.png\",\"1680838475163\":\"\\/data\\/cms-image\\/San-pham\\/binh-an-1808-4.png\",\"1680838480689\":\"\\/data\\/cms-image\\/San-pham\\/binh-an-1808-1.png\",\"1680838491049\":\"\\/data\\/cms-image\\/San-pham\\/binh-an-1808-3.png\"}}', NULL, NULL, 1, 87, 1, 'delete', 1, 1, '2023-02-08 03:17:46', '2023-08-05 02:34:27', 'goi-tap-1-thang'),
(150, 45, 'product', 'Gói tập 12 buổi', '{\"price\":\"20\",\"brand\":\"Maison\",\"brief\":{\"vi\":\"<ul>\\r\\n\\t<li>D\\u00e0nh cho ng\\u01b0\\u1eddi b\\u1eadn r\\u1ed9n<\\/li>\\r\\n\\t<li>C\\u00f3 ki\\u1ebfn th\\u1ee9c v\\u1ec1 Yoga<\\/li>\\r\\n\\t<li>C\\u00f3 ki\\u1ebfn th\\u1ee9c v\\u1ec1 Yoga<\\/li>\\r\\n\\t<li>Tr\\u1ea3i nghi\\u1ec7m luy\\u1ec7n t\\u1eadp an to\\u00e0n v\\u00e0 vui v\\u1ebb<\\/li>\\r\\n\\t<li>Chi ph\\u00ed th\\u1ea5p<\\/li>\\r\\n<\\/ul>\"},\"content\":{\"vi\":\"<p>B\\u1ea1n l\\u00e0 ng\\u01b0\\u1eddi m\\u1edbi v\\u00e0 c\\u00f2n b\\u1ee1 ng\\u1ee1 v\\u1edbi b\\u1ed9 m\\u00f4n Yoga ho\\u1eb7c ch\\u01b0a bao gi\\u1edd tham gia l\\u1edbp h\\u1ecdc yoga tr\\u01b0\\u1edbc \\u0111\\u00e2y th\\u00ec g\\u00f3i t\\u1eadp 12 bu\\u1ed5i l\\u00e0 l\\u1ef1a ch\\u1ecdn cho b\\u1ea1n.<\\/p>\\r\\n\\r\\n<p>Hi\\u1ec3u \\u0111\\u01b0\\u1ee3c c\\u00e1c kh\\u00e1i ni\\u1ec7m c\\u01a1 b\\u1ea3n v\\u1ec1 yoga v\\u00e0 th\\u1ef1c h\\u00e0nh t\\u1eadp luy\\u1ec7n \\u0111\\u1ec3 c\\u00f3 c\\u01a1 th\\u1ec3 d\\u1ebbo dai kho\\u1ebb m\\u1ea1nh.<\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"gallery_image\":{\"1680838448453\":\"\\/data\\/cms-image\\/San-pham\\/binh-an-1808-2.png\",\"1680838455163\":\"\\/data\\/cms-image\\/San-pham\\/binh-an-1808-5.png\",\"1680838475163\":\"\\/data\\/cms-image\\/San-pham\\/binh-an-1808-4.png\",\"1680838480689\":\"\\/data\\/cms-image\\/San-pham\\/binh-an-1808-1.png\",\"1680838491049\":\"\\/data\\/cms-image\\/San-pham\\/binh-an-1808-3.png\"},\"related_post\":[\"147\"]}', NULL, NULL, 1, 184, 1, 'delete', 1, 1, '2023-02-08 03:17:46', '2023-08-05 02:34:26', 'goi-tap-12-buoi'),
(153, 45, 'product', 'Gói tập 12 buổi', '{\"price\":\"20\",\"brand\":\"Maison\",\"brief\":{\"vi\":\"<ul>\\r\\n\\t<li>D\\u00e0nh cho ng\\u01b0\\u1eddi b\\u1eadn r\\u1ed9n<\\/li>\\r\\n\\t<li>C\\u00f3 ki\\u1ebfn th\\u1ee9c v\\u1ec1 Yoga<\\/li>\\r\\n\\t<li>C\\u00f3 ki\\u1ebfn th\\u1ee9c v\\u1ec1 Yoga<\\/li>\\r\\n\\t<li>Tr\\u1ea3i nghi\\u1ec7m luy\\u1ec7n t\\u1eadp an to\\u00e0n v\\u00e0 vui v\\u1ebb<\\/li>\\r\\n\\t<li>Chi ph\\u00ed th\\u1ea5p<\\/li>\\r\\n<\\/ul>\"},\"content\":{\"vi\":\"<p>B\\u1ea1n l\\u00e0 ng\\u01b0\\u1eddi m\\u1edbi v\\u00e0 c\\u00f2n b\\u1ee1 ng\\u1ee1 v\\u1edbi b\\u1ed9 m\\u00f4n Yoga ho\\u1eb7c ch\\u01b0a bao gi\\u1edd tham gia l\\u1edbp h\\u1ecdc yoga tr\\u01b0\\u1edbc \\u0111\\u00e2y th\\u00ec g\\u00f3i t\\u1eadp 12 bu\\u1ed5i l\\u00e0 l\\u1ef1a ch\\u1ecdn cho b\\u1ea1n.<\\/p>\\r\\n\\r\\n<p>Hi\\u1ec3u \\u0111\\u01b0\\u1ee3c c\\u00e1c kh\\u00e1i ni\\u1ec7m c\\u01a1 b\\u1ea3n v\\u1ec1 yoga v\\u00e0 th\\u1ef1c h\\u00e0nh t\\u1eadp luy\\u1ec7n \\u0111\\u1ec3 c\\u00f3 c\\u01a1 th\\u1ec3 d\\u1ebbo dai kho\\u1ebb m\\u1ea1nh.<\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"gallery_image\":{\"1680838448453\":\"\\/data\\/cms-image\\/San-pham\\/binh-an-1808-2.png\",\"1680838455163\":\"\\/data\\/cms-image\\/San-pham\\/binh-an-1808-5.png\",\"1680838475163\":\"\\/data\\/cms-image\\/San-pham\\/binh-an-1808-4.png\",\"1680838480689\":\"\\/data\\/cms-image\\/San-pham\\/binh-an-1808-1.png\",\"1680838491049\":\"\\/data\\/cms-image\\/San-pham\\/binh-an-1808-3.png\"},\"related_post\":[\"147\"]}', NULL, NULL, 1, 188, 1, 'delete', 1, 1, '2023-02-08 03:17:46', '2023-08-05 02:34:24', 'goi-tap-10-buoi'),
(154, 45, 'product', 'Gói tập 2 tháng', '{\"price\":\"50\",\"brand\":\"Maison\",\"brief\":{\"vi\":\"<ul>\\r\\n\\t<li>D\\u00e0nh cho ng\\u01b0\\u1eddi b\\u1eadn r\\u1ed9n<\\/li>\\r\\n\\t<li>C\\u00f3 ki\\u1ebfn th\\u1ee9c v\\u1ec1 Yoga<\\/li>\\r\\n\\t<li>C\\u00f3 ki\\u1ebfn th\\u1ee9c v\\u1ec1 Yoga<\\/li>\\r\\n\\t<li>Tr\\u1ea3i nghi\\u1ec7m luy\\u1ec7n t\\u1eadp an to\\u00e0n v\\u00e0 vui v\\u1ebb<\\/li>\\r\\n\\t<li>Chi ph\\u00ed th\\u1ea5p<\\/li>\\r\\n<\\/ul>\"},\"content\":{\"vi\":\"<p>B\\u1ea1n l\\u00e0 ng\\u01b0\\u1eddi m\\u1edbi v\\u00e0 c\\u00f2n b\\u1ee1 ng\\u1ee1 v\\u1edbi b\\u1ed9 m\\u00f4n Yoga ho\\u1eb7c ch\\u01b0a bao gi\\u1edd tham gia l\\u1edbp h\\u1ecdc yoga tr\\u01b0\\u1edbc \\u0111\\u00e2y th\\u00ec g\\u00f3i t\\u1eadp 12 bu\\u1ed5i l\\u00e0 l\\u1ef1a ch\\u1ecdn cho b\\u1ea1n.<\\/p>\\r\\n\\r\\n<p>Hi\\u1ec3u \\u0111\\u01b0\\u1ee3c c\\u00e1c kh\\u00e1i ni\\u1ec7m c\\u01a1 b\\u1ea3n v\\u1ec1 yoga v\\u00e0 th\\u1ef1c h\\u00e0nh t\\u1eadp luy\\u1ec7n \\u0111\\u1ec3 c\\u00f3 c\\u01a1 th\\u1ec3 d\\u1ebbo dai kho\\u1ebb m\\u1ea1nh.<\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"gallery_image\":{\"1680838448453\":\"\\/data\\/cms-image\\/San-pham\\/binh-an-1808-2.png\",\"1680838455163\":\"\\/data\\/cms-image\\/San-pham\\/binh-an-1808-5.png\",\"1680838475163\":\"\\/data\\/cms-image\\/San-pham\\/binh-an-1808-4.png\",\"1680838480689\":\"\\/data\\/cms-image\\/San-pham\\/binh-an-1808-1.png\",\"1680838491049\":\"\\/data\\/cms-image\\/San-pham\\/binh-an-1808-3.png\"}}', NULL, NULL, 1, 107, 1, 'delete', 1, 1, '2023-02-08 03:17:46', '2023-08-05 02:34:22', 'goi-tap-2-thang'),
(155, 47, 'service', 'Nâng Cơ thủy liệu Chuyên Sâu', '{\"icon\":null,\"description\":{\"vi\":null,\"en\":null},\"brief\":{\"vi\":\"Hydra Lifting Facial - N\\u00e2ng C\\u01a1 th\\u1ee7y li\\u1ec7u Chuy\\u00ean S\\u00e2u\",\"en\":null},\"content\":{\"vi\":\"Hydra Lifting Facial l\\u00e0 m\\u1ed9t li\\u1ec7u ph\\u00e1p ch\\u0103m s\\u00f3c da gi\\u00fap l\\u00e0m s\\u1ea1ch l\\u1ed7 ch\\u00e2n l\\u00f4ng v\\u00e0 c\\u1ea5p \\u1ea9m cho da. Quy tr\\u00ecnh li\\u1ec7u ph\\u00e1p g\\u1ed3m b\\u1ed1n b\\u01b0\\u1edbc: l\\u00e0m s\\u1ea1ch, t\\u1ea9y t\\u1ebf b\\u00e0o ch\\u1ebft, l\\u1ea5y s\\u1ea1ch m\\u1ee5n \\u0111\\u1ea7u \\u0111en v\\u00e0 c\\u1ea5p \\u1ea9m cho da v\\u1edbi c\\u00e1c tinh ch\\u1ea5t \\u0111\\u01b0\\u1ee3c th\\u1ea9m th\\u1ea5u v\\u00e0o t\\u1eebng l\\u1ed7 ch\\u00e2n l\\u00f4ng - gi\\u00fap l\\u00e0n da c\\u1ee7a b\\u1ea1n \\u0111\\u01b0\\u1ee3c c\\u1ea5p \\u1ea9m to\\u00e0n di\\u1ec7n, t\\u01b0\\u01a1i s\\u00e1ng v\\u00e0 \\u0111\\u1ec1u m\\u00e0u h\\u01a1n.\",\"en\":\"Hydra Facial is a medical grade resurfacing treatment that clears out your pores and hydrates your skin. The four-step treatment includes cleansing, exfoliating, extracting, and hydrating the skin with serums that are infused into pores \\u2013 making your skin more hydrated, bright plump, and clear complexion.\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"gallery_image\":{\"1691770305922\":\"\\/data\\/cms-image\\/service\\/hydra lifting facial.png\",\"1691770393762\":\"\\/data\\/cms-image\\/service\\/S-100024587-37275791fda5d14d7232f69967a61999.jpg\"},\"title\":{\"en\":\"Hydra Lifting Facial\",\"vi\":\"N\\u00e2ng C\\u01a1 th\\u1ee7y li\\u1ec7u Chuy\\u00ean S\\u00e2u\"}}', '/data/cms-image/service/led deep lifting.jpg', '/data/cms-image/service/led deep lifting.jpg', 0, 72, 1, 'active', 1, 1, '2023-08-09 02:03:20', '2023-08-19 08:20:42', 'nang-co-thuy-lieu-chuyen-sau'),
(156, 47, 'service', 'Nâng cơ tinh thể', '{\"icon\":null,\"description\":{\"vi\":null,\"en\":null},\"brief\":{\"vi\":\"Lifting Crystal Facial - N\\u00e2ng c\\u01a1 tinh th\\u1ec3\",\"en\":null},\"content\":{\"vi\":\"Li\\u1ec7u ph\\u00e1p ch\\u1ed1ng l\\u00e3o h\\u00f3a kh\\u00f4ng x\\u00e2m l\\u1ea5n n\\u00e0y \\u0111\\u01b0\\u1ee3c ch\\u00fang t\\u00f4i th\\u1ef1c hi\\u1ec7n b\\u1eb1ng vi\\u1ec7c massage c\\u01a1 m\\u1eb7t nh\\u1eb9 nh\\u00e0ng, s\\u1eed d\\u1ee5ng n\\u0103ng l\\u01b0\\u1ee3ng t\\u1eeb tinh th\\u1ec3 \\u0111\\u1ec3 n\\u00e2ng cao t\\u00e1c d\\u1ee5ng c\\u1ee7a ph\\u01b0\\u01a1ng ph\\u00e1p \\u0111i\\u1ec1u tr\\u1ecb. Lifting Crystal Facial s\\u1eed d\\u1ee5ng c\\u00e1c vitamin ch\\u1ed1ng oxy h\\u00f3a, A, C v\\u00e0 E, v\\u1edbi chi\\u1ebft xu\\u1ea5t rong bi\\u1ec3n Dunaliella \\u0111\\u1ec3 nu\\u00f4i d\\u01b0\\u1ee1ng v\\u00e0 l\\u00e0m s\\u00e1ng da, c\\u0169ng nh\\u01b0 \\u0111i\\u1ec1u tr\\u1ecb c\\u00e1c \\u0111\\u1ed1m \\u0111\\u1ed3i m\\u1ed3i v\\u00e0 s\\u1eafc t\\u1ed1. S\\u1ef1 k\\u1ebft h\\u1ee3p gi\\u1eefa X\\u00f4ng h\\u01a1i l\\u00e0m tr\\u1eafng, Kem d\\u01b0\\u1ee1ng da m\\u1eb7t Collagen ch\\u1ed1ng l\\u00e3o h\\u00f3a, Kem m\\u1eaft v\\u00e0 Serum \\u0111\\u1ea3m b\\u1ea3o l\\u00e0n da s\\u00e1ng kh\\u1ecfe h\\u01a1n v\\u00ec l\\u00e0n da \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c lo\\u1ea1i b\\u1ecf c\\u00e1c t\\u1ea1p ch\\u1ea5t.\",\"en\":\"This non-invasive anti-aging treatment is initiated with a gentle facial massage using the energy from your chosen crystal to heighten the effects of the treatment. Enriched with antioxidant vitamins, A, C, and E, with Dunaliella Seaweed extract to nourish and brighten your complexion, as well as treat age spots and pigmentation. The combination of Whitening Sauna and Anti-Aging Collagen Facials, Eye Cream, and Serum ensures a healthier glow as it extracts impurities.\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"gallery_image\":{\"1691770945753\":\"\\/data\\/cms-image\\/service\\/tay-te-bao-chet-tai-spa-2.png\"},\"title\":{\"en\":\"Lifting Crystals Facial\",\"vi\":\"N\\u00e2ng c\\u01a1 tinh th\\u1ec3\"}}', '/data/cms-image/service/lifting-crystals-Facial.jpg', '/data/cms-image/service/lifting-crystals-Facial.jpg', 1, 22, 2, 'active', 1, 1, '2023-08-09 02:20:38', '2023-08-14 09:23:13', 'nang-co-tinh-the'),
(157, 48, 'service', 'Làm trắng da bằng phương pháp thủy liệu', '{\"icon\":null,\"description\":{\"vi\":null,\"en\":null},\"brief\":{\"vi\":\"Hydra Whitening Facial - L\\u00e0m tr\\u1eafng da b\\u1eb1ng ph\\u01b0\\u01a1ng ph\\u00e1p th\\u1ee7y li\\u1ec7u\",\"en\":null},\"content\":{\"vi\":\"Li\\u1ec7u ph\\u00e1p Hydra Whitening Facial l\\u00e0m m\\u1edd c\\u00e1c v\\u1ebft t\\u00e0n nhang, n\\u00e1m, \\u0111\\u1ed1m \\u0111en v\\u00e0 l\\u00e0m s\\u00e1ng t\\u00f4ng m\\u00e0u da m\\u1ed9t c\\u00e1ch hi\\u1ec7u qu\\u1ea3 nh\\u1ea5t b\\u1eb1ng c\\u00e1ch s\\u1eed d\\u1ee5ng c\\u00e1c th\\u00e0nh ph\\u1ea7n l\\u00e0m tr\\u1eafng cao c\\u1ea5p, th\\u1ef1c hi\\u1ec7n qua c\\u00e1c b\\u01b0\\u1edbc t\\u00e1i t\\u1ea1o b\\u1ec1 m\\u1eb7t da chuy\\u00ean s\\u00e2u nh\\u1eb9 nh\\u00e0ng c\\u1ee7a Hydrafacial, \\u0111\\u1ec3 \\u1edf b\\u01b0\\u1edbc cu\\u1ed1i, l\\u00e0m tr\\u1ebb h\\u00f3a c\\u00e1c l\\u1edbp s\\u00e2u h\\u01a1n c\\u1ee7a da\",\"en\":\"The Hydra Whitening Facial lightens freckles, pigmentation, dark spots, and brightens the skin tone using active whitening ingredients delivered through the gentle intensive skin resurfacing steps of the Hydrafacial, to ultimately rejuvenate the deeper layers of the skin.\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"gallery_image\":{\"1691770975282\":\"\\/data\\/cms-image\\/service\\/lifting serum 1.webp\"},\"title\":{\"en\":\"Hydra Whitening Facial\",\"vi\":\"L\\u00e0m tr\\u1eafng da b\\u1eb1ng ph\\u01b0\\u01a1ng ph\\u00e1p th\\u1ee7y li\\u1ec7u\"}}', '/data/cms-image/service/led deep lifting.jpg', '/data/cms-image/service/tay-te-bao-chet-tai-spa-2.png', 1, 5, 5, 'active', 1, 1, '2023-08-09 02:22:48', '2023-08-12 02:43:44', 'lam-trang-da-bang-phuong-phap-thuy-lieu'),
(158, 48, 'service', 'Trị Mụn bằng phương pháp thủy liệu', '{\"icon\":null,\"description\":{\"vi\":null,\"en\":null},\"brief\":{\"vi\":\"Hydra Acne Facial - Tr\\u1ecb M\\u1ee5n b\\u1eb1ng ph\\u01b0\\u01a1ng ph\\u00e1p th\\u1ee7y li\\u1ec7u\",\"en\":null},\"content\":{\"vi\":\"N\\u1ebfu b\\u1ea1n c\\u00f3 v\\u1ea5n \\u0111\\u1ec1 v\\u1ec1 m\\u1ee5n hay trong qu\\u00e1 tr\\u00ecnh ph\\u1ee5c h\\u1ed3i sau m\\u1ee5n, Hydra Acne Facial Treatment ch\\u00ednh l\\u00e0 li\\u1ec7u ph\\u00e1p d\\u00e0nh cho b\\u1ea1n. Li\\u1ec7u ph\\u00e1p n\\u00e0y k\\u1ebft h\\u1ee3p c\\u00e1c th\\u00e0nh ph\\u1ea7n ng\\u1eeba v\\u00e0 \\u0111i\\u1ec1u tr\\u1ecb m\\u1ee5n d\\u00e0nh cho da m\\u1eb7t v\\u00e0 quy tr\\u00ecnh t\\u00e1i t\\u1ea1o b\\u1ec1 m\\u1eb7t da 6 b\\u01b0\\u1edbc nh\\u1eb9 nh\\u00e0ng c\\u1ee7a Hydrafacial \\u0111\\u1ec3 t\\u0103ng c\\u01b0\\u1eddng s\\u1ea3n xu\\u1ea5t collagen t\\u1ef1 nhi\\u00ean c\\u1ee7a da nh\\u1eb1m l\\u00e0m gi\\u1ea3m n\\u1ebfp nh\\u0103n, n\\u1ebfp nh\\u0103n v\\u00e0 l\\u1ed7 ch\\u00e2n l\\u00f4ng to, mang l\\u1ea1i l\\u00e0n da m\\u1ecbn m\\u00e0ng, trong tr\\u1ebbo h\\u01a1n.\",\"en\":\"Achieve your clear skin goals and banish acne with the Hydra Acne Facial Treatment. Combining anti-acne facial ingredients and the gentle 6-step skin resurfacing handles of the Hydrafacial to boost skin\\u2019s natural collagen production in lessening fine lines, wrinkles, and open pores, to reveal a smoother, clearer complexion.\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"gallery_image\":{\"1691548216852\":\"\\/data\\/cms-image\\/service\\/1578790f248adc3b7c03ea8a0b919c0b.png\"},\"title\":{\"vi\":\"Tr\\u1ecb M\\u1ee5n b\\u1eb1ng ph\\u01b0\\u01a1ng ph\\u00e1p th\\u1ee7y li\\u1ec7u\",\"en\":\"Hydra Acne Facial\"}}', '/data/cms-image/service/lifting-crystals-Facial.jpg', '/data/cms-image/service/lifting-crystals-Facial.jpg', 1, 2, 4, 'active', 1, 1, '2023-08-09 02:30:11', '2023-08-12 02:43:46', 'tri-mun-bang-phuong-phap-thuy-lieu'),
(159, 47, 'service', 'LED nâng cơ chuyên sâu', '{\"icon\":null,\"description\":{\"vi\":null,\"en\":null},\"brief\":{\"vi\":null,\"en\":null},\"content\":{\"vi\":\"Ph\\u1ee5c h\\u1ed3i s\\u1ee9c s\\u1ed1ng cho l\\u00e0n da c\\u1ee7a b\\u1ea1n m\\u1ed9t c\\u00e1ch khoa h\\u1ecdc v\\u1edbi s\\u1ee9c m\\u1ea1nh c\\u1ee7a tia s\\u00e1ng \\u0110\\u1ecf &amp; H\\u1ed3ng ngo\\u1ea1i. Thi\\u1ebft b\\u1ecb tr\\u1ecb li\\u1ec7u Zero Gravity Perfectio X \\u0111\\u01b0\\u1ee3c s\\u1eed d\\u1ee5ng \\u0111\\u1ec3 nh\\u1eb9 nh\\u00e0ng cung c\\u1ea5p n\\u0103ng l\\u01b0\\u1ee3ng cho da \\u0111\\u1ec3 k\\u00edch th\\u00edch t\\u1ea1o ra c\\u00e1c s\\u1ee3i collagen v\\u00e0 elastin, \\u0111\\u1ed3ng th\\u1eddi nh\\u1eb9 nh\\u00e0ng x\\u00f3a c\\u00e1c d\\u1ea5u hi\\u1ec7u l\\u00e3o h\\u00f3a \\u1edf c\\u1ea3 ba l\\u1edbp bi\\u1ec3u b\\u00ec da.\",\"en\":\"Revitalize your facial skin with the science and power of Red &amp; Infrared Light Perfectio X that gently delivers a precise dosage of energy to the skin to produce collagen fibers and elastin, while gently erasing signs of aging in all three lavers of skin.\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"gallery_image\":{\"1691771325961\":\"\\/data\\/cms-image\\/service\\/relaxing beauty mask 4.jpg\"},\"title\":{\"en\":\"LED Deep Lifting\",\"vi\":\"LED n\\u00e2ng c\\u01a1 chuy\\u00ean s\\u00e2u\"}}', '/data/cms-image/service/z4455113536133_0c3d5adf85ffd4cce831a2a8499a50fc.jpg', '/data/cms-image/service/hydra lifting facial.png', 1, 5, 3, 'active', 1, 1, '2023-08-09 02:31:51', '2023-08-14 09:23:26', 'led-nang-co-chuyen-sau'),
(160, 48, 'service', 'Marionette Lines – Nasolabial Fold', '{\"icon\":null,\"description\":{\"vi\":\"Ariel Medical Treatments\"},\"brief\":{\"vi\":\"Ariel Medical is a leading aesthetics company aiming at revolutionizing aesthetic procedures in Greece\"},\"content\":{\"vi\":\"This treatment is a common request in our clinic, as we all tend to experience some sagging around the mouth due to the natural process of aging. Unfortunately, for most people, not only does this lead to appearing aged, but sagging around the mouth can cause us to appear unhappy or angry, also. Therefore, the marionette lines, as well as the nasolabial fold HA injectable fillers, serve anyone who wants to rejuvenate their facial expression and create a more youthful look.\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"gallery_image\":{\"1691548445782\":\"\\/data\\/cms-image\\/service\\/beauty-salon-client-getting-subcutaneous-injection-2022-04-12-23-52-28-utc-q2jlvawh2svsm0gpq94l0gpzv9yhg769o2n9h71wc8.webp\"}}', '/data/cms-image/service/beauty-salon-client-getting-subcutaneous-injection-2022-04-12-23-52-28-utc-q2jlvawh2svsm0gpq94l0gpzv9yhg769o2n9h71wc8.webp', '/data/cms-image/service/beauty-salon-client-getting-subcutaneous-injection-2022-04-12-23-52-28-utc-q2jlvawh2svsm0gpq94l0gpzv9yhg769o2n9h71wc8.webp', 1, 1, 6, 'delete', 1, 1, '2023-08-09 02:34:11', '2023-08-11 18:35:12', 'marionette-lines-nasolabial-fold'),
(161, 49, 'service', 'Mặt nạ vàng 24K', '{\"icon\":null,\"description\":{\"vi\":null,\"en\":null},\"brief\":{\"vi\":null,\"en\":\"Enrich your facial skin with decadent beauty innovations of\\r\\n24K Gold Mask. It helps stimulate cellular growth of the\\r\\nepidermis, regenerates and firm skin cells, locks in moisture,\\r\\nincreases collagen level in the skin, and prevents the\\r\\nbreakdown of elastin.\"},\"content\":{\"vi\":\"Ch\\u0103m s\\u00f3c da s\\u1eed d\\u1ee5ng m\\u1eb7t n\\u1ea1 v\\u00e0ng 24K l\\u00e0 m\\u1ed9t li\\u1ec7u ph\\u00e1p s\\u1eed d\\u1ee5ng th\\u00e0nh ph\\u1ea7n cao c\\u1ea5p, mang l\\u1ea1i m\\u1ed9t l\\u00e0n da kh\\u1ecfe m\\u1ea1nh, tr\\u1ebb trung, tr\\u00e0n \\u0111\\u1ea7y s\\u1ee9c s\\u1ed1ng &nbsp;M\\u1eb7t n\\u1ea1 v\\u00e0ng 24K gi\\u00fap k\\u00edch th\\u00edch s\\u1ef1 ph\\u00e1t tri\\u1ec3n t\\u1ebf b\\u00e0o c\\u1ee7a l\\u1edbp bi\\u1ec3u b\\u00ec, t\\u00e1i t\\u1ea1o v\\u00e0 l\\u00e0m s\\u0103n ch\\u1eafc t\\u1ebf b\\u00e0o da, kh\\u00f3a \\u0111\\u1ed9 \\u1ea9m, t\\u0103ng m\\u1eadt \\u0111\\u1ed9 collagen trong da, v\\u00e0 ng\\u0103n ng\\u1eeba s\\u1ef1 ph\\u00e2n h\\u1ee7y elastin.\",\"en\":\"Enrich your facial skin with decadent beauty innovations of<br \\/>\\r\\n24K Gold Mask. It helps stimulate cellular growth of the<br \\/>\\r\\nepidermis, regenerates and firm skin cells, locks in moisture,<br \\/>\\r\\nincreases collagen level in the skin, and prevents the<br \\/>\\r\\nbreakdown of elastin.\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"gallery_image\":{\"1691778970318\":\"\\/data\\/cms-image\\/service\\/180508-tron-goi-massage-thu-gian-giam-stress-cham-soc-thanh-loc-da-voi-mat-na-khoang-thien-nhien-khong-nhan-tip.jpg\",\"1691778978950\":\"\\/data\\/cms-image\\/service\\/308668- massage=mat-dap-mat-na-vang-24k-honey-spa-body-1.jpg\"},\"title\":{\"en\":\"24k Gold Facial\",\"vi\":\"M\\u1eb7t n\\u1ea1 v\\u00e0ng 24K\"}}', '/data/cms-image/service/24k-gold-facial.jpg', NULL, 1, 13, 7, 'active', 1, 1, '2023-08-09 02:36:20', '2023-08-14 09:18:04', 'mat-na-vang-24k'),
(162, 49, 'service', 'Non-Surgical Buttock Augmentation and Sculpting', '{\"icon\":null,\"description\":{\"vi\":\"Ariel Medical Treatments\"},\"brief\":{\"vi\":\"Ariel Medical is a leading aesthetics company aiming at revolutionizing aesthetic procedures in Greece\"},\"content\":{\"vi\":\"It is a relatively simple treatment done under local anesthesia, during which HA filler is injected into the subcutaneous tissue, using a special cannula that allows to enhance the volume of the buttocks and to fill the deficiencies in the appropriate sites. It is suitable for women with flat buttocks or for those who are interested in completing volume, filling the sides of the hips and sculpting the missing volumes to acquire more round-shaped buttocks.<br \\/>\\r\\nSome of the advantages of the Non-Surgical Buttock Augmentation and Sculpting are:<br \\/>\\r\\n\\u2022 Quick return to your routine- Fast recovery<br \\/>\\r\\n\\u2022 No scars-The treatment is done with the use of a cannula<br \\/>\\r\\n\\u2022 High levels of accuracy and symmetry-It allows \\u2018\\u2019filling\\u2019\\u2019 the<br \\/>\\r\\ndeficiencies by injecting the appropriate sites<br \\/>\\r\\n\\u2022 Game option- If you want more volume, you can add more material.<br \\/>\\r\\n\\u2022 Pleasant to the touch-The touch is very similar to touching a normal<br \\/>\\r\\nbuttock.\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"gallery_image\":{\"1691548674040\":\"\\/data\\/cms-image\\/service\\/cosmetician-with-marker-puts-dotted-lines-on-body-2021-08-26-16-25-33-utc-q2ekzqw6h11y9cv1n3inh4s9p6l5gbqyqv4olnsum0.webp\"}}', '/data/cms-image/service/cosmetician-with-marker-puts-dotted-lines-on-body-2021-08-26-16-25-33-utc-q2ekzqw6h11y9cv1n3inh4s9p6l5gbqyqv4olnsum0.webp', '/data/cms-image/service/cosmetician-with-marker-puts-dotted-lines-on-body-2021-08-26-16-25-33-utc-q2ekzqw6h11y9cv1n3inh4s9p6l5gbqyqv4olnsum0.webp', 1, 0, 8, 'delete', 1, 1, '2023-08-09 02:37:59', '2023-08-11 18:57:16', 'non-surgical-buttock-augmentation-and-sculpting'),
(163, 51, 'product', 'Body Scrub (JASMINE)', '{\"brief\":{\"vi\":\"Black Pearl is a highend cosmetic brand from 2008 from Israel.\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/brands/sp1.png', NULL, 0, 0, 1, 'active', 1, 1, '2023-08-10 07:10:32', '2023-08-10 07:10:32', 'body-scrub-jasmine'),
(164, 51, 'product', '24k Gold Supreme Night Cream', '{\"brief\":{\"vi\":\"Black Pearl is a highend cosmetic brand from 2008 from Israel.\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/brands/sp2.png', NULL, 0, 0, 2, 'active', 1, 1, '2023-08-10 07:11:12', '2023-08-10 07:11:12', '24k-gold-supreme-night-cream'),
(165, 51, 'product', '24K Gold Devine Body For All Skin', '{\"brief\":{\"vi\":\"Black Pearl is a highend cosmetic brand from 2008 from Israel.\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/brands/sp3.png', NULL, 0, 0, 3, 'active', 1, 1, '2023-08-10 07:13:05', '2023-08-10 07:14:32', '24k-gold-devine-body-for-all-skin'),
(166, 51, 'product', 'Purifying Peel Off Mask', '{\"brief\":{\"vi\":\"Black Pearl is a highend cosmetic brand from 2008 from Israel.\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/brands/sp4.png', NULL, 0, 0, 4, 'active', 1, 1, '2023-08-10 07:13:48', '2023-08-10 07:55:57', 'purifying-peel-off-mask'),
(167, 54, 'service', 'wewe', '{\"icon\":null,\"description\":{\"vi\":\"wewe\"},\"brief\":{\"vi\":\"wewe\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"title\":{\"vi\":\"wewe\"}}', '/data/cms-image/service/1578790f248adc3b7c03ea8a0b919c0b.png', NULL, 0, 1, NULL, 'delete', 1, 1, '2023-08-12 02:25:42', '2023-08-12 02:33:56', 'wewe'),
(168, 54, 'service', 'werwerwerw', '{\"icon\":null,\"description\":{\"vi\":\"werwerw\"},\"brief\":{\"vi\":\"erwerwerwerwrwerwrw\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/service/relaxing beauty mask 4.jpg', NULL, 0, 0, NULL, 'delete', 1, 1, '2023-08-12 02:30:31', '2023-08-12 02:33:53', 'werwerwerw');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_cms_taxonomys`
--

CREATE TABLE `tb_cms_taxonomys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `taxonomy` varchar(255) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_cms_taxonomys`
--

INSERT INTO `tb_cms_taxonomys` (`id`, `taxonomy`, `parent_id`, `title`, `json_params`, `is_featured`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `alias`) VALUES
(1, 'post', NULL, 'Tin tức', '{\"image\":\"\\/data\\/cms-image\\/Images\\/banner3_mb.png\",\"image_background\":\"\\/data\\/cms-image\\/Images\\/banner3.png\",\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 1, NULL, 'delete', 1, 1, '2021-10-15 03:19:10', '2023-08-09 14:05:06', 'tin-tuc'),
(30, 'product', 45, 'Luxury', '{\"image\":\"\\/data\\/cms-image\\/Images\\/maison-luxyry.png\",\"image_background\":null,\"brief\":{\"vi\":\"H\\u1ed9p qu\\u00e0 t\\u1ebft Maison Luxury - Th\\u01b0\\u01a1ng hi\\u1ec7u Maison\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 1, 1, 'delete', 1, 1, '2022-11-21 09:29:34', '2023-07-04 07:15:32', 'luxury'),
(40, 'product', 45, 'Maison', '{\"image\":\"\\/data\\/cms-image\\/Images\\/bo-logo-09.png\",\"image_background\":null,\"brief\":{\"vi\":\"H\\u1ed9p qu\\u00e0 t\\u1ebft Maison - Sang tr\\u1ecdng \\u00fd ngh\\u0129a cho Doanh nghi\\u1ec7p\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 1, 2, 'delete', 1, 1, '2023-04-06 09:29:15', '2023-07-04 07:15:30', 'maison'),
(41, 'product', 45, 'Roselle', '{\"image\":\"\\/data\\/cms-image\\/Images\\/roselle-logo-png-03.png\",\"image_background\":null,\"brief\":{\"vi\":\"H\\u1ed9p qu\\u00e0 t\\u1ebft Roselle - Th\\u01b0\\u01a1ng hi\\u1ec7u Maison\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 1, 3, 'delete', 1, 1, '2023-04-06 09:30:01', '2023-07-04 07:15:29', 'roselle'),
(42, 'product', 45, 'Robin', '{\"image\":\"\\/data\\/cms-image\\/Images\\/mat-hop-qua-robin-do-02.png\",\"image_background\":null,\"brief\":{\"vi\":\"H\\u1ed9p qu\\u00e0 t\\u1ebft Robin - Th\\u01b0\\u01a1ng Hi\\u1ec7u Maison Gourmet\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 1, 4, 'delete', 1, 1, '2023-04-06 09:30:36', '2023-07-04 07:15:27', 'robin'),
(43, 'product', 42, 'Hộp quà Robin đỏ', '{\"image\":null,\"image_background\":null,\"brief\":{\"vi\":\"Qu\\u00e0 t\\u1ebft Robin \\u0111\\u1ecf\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 0, 1, 'delete', 1, 1, '2023-04-06 09:31:57', '2023-07-04 07:15:27', 'hop-qua-robin-do'),
(44, 'product', NULL, 'Sản phẩm', '{\"image\":null,\"image_background\":null,\"brief\":{\"vi\":\"T\\u1ea5t c\\u1ea3 s\\u1ea3n ph\\u1ea9m\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 0, 1, 'delete', 1, 1, '2023-04-10 01:51:01', '2023-04-10 02:49:08', 'san-pham'),
(45, 'product', NULL, 'Nhãn Hiệu', '{\"image\":\"\\/data\\/cms-image\\/brands\\/img_nen.png\",\"image_background\":\"\\/data\\/cms-image\\/brands\\/bg.png\",\"description\":{\"en\":\"Explorer Product\",\"vi\":\"S\\u1ea3n Ph\\u1ea9m Ti\\u00ean Phong\"},\"brief\":{\"vi\":\"M\\u1ed9t c\\u00f4ng ty th\\u1ea9m m\\u1ef9 h\\u00e0ng \\u0111\\u1ea7u c\\u00e1ch m\\u1ea1ng h\\u00f3a \\u0111i\\u1ec1u tr\\u1ecb t\\u1ea1i Vi\\u1ec7t Nam.\",\"en\":\"A leading aesthetics company revolutionizing treatment in Vietnam.\"},\"content\":{\"vi\":\"Divine Beauty Center \\u0111\\u01b0\\u1ee3c bi\\u1ebft \\u0111\\u1ebfn l\\u00e0 \\u0111i\\u1ec3m \\u0111\\u1ebfn cu\\u1ed1i c\\u00f9ng \\u0111\\u1ec3 tr\\u1ebb h\\u00f3a v\\u00e0 th\\u01b0 gi\\u00e3n\",\"en\":\"Divine Beauty Center known as the ultimate destination for rejuvenation and relaxation\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"title\":{\"en\":\"Our Brands\",\"vi\":\"Nh\\u00e3n Hi\\u1ec7u\"}}', 0, 1, 'active', 1, 1, '2023-04-12 02:07:54', '2023-08-11 10:01:06', 'our-brands'),
(46, 'service', NULL, 'Liệu Trình', '{\"image\":null,\"image_background\":\"\\/data\\/cms-image\\/Images\\/woman-at-the-plastic-surgeon.jpg\",\"description\":{\"vi\":null,\"en\":null},\"brief\":{\"vi\":\"Divine Beauty l\\u00e0 c\\u00f4ng ty th\\u1ea9m m\\u1ef9 v\\u00e0 s\\u1eafc \\u0111\\u1eb9p h\\u00e0ng \\u0111\\u1ea7u trong cu\\u1ed9c c\\u00e1ch m\\u1ea1ng s\\u1eafc \\u0111\\u1eb9p t\\u1ea1i Vi\\u1ec7t Nam.\",\"en\":null},\"content\":{\"vi\":null,\"en\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"title\":{\"vi\":\"Li\\u1ec7u Tr\\u00ecnh\",\"en\":\"Treatments\"}}', 0, 2, 'active', 1, 1, '2023-08-08 15:59:53', '2023-08-12 02:42:02', 'treatments'),
(47, 'service', 46, 'NÂNG CƠ', '{\"image\":null,\"image_background\":null,\"description\":{\"en\":null,\"vi\":null},\"brief\":{\"vi\":null,\"en\":null},\"content\":{\"vi\":null,\"en\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"title\":{\"en\":\"Lifting\",\"vi\":\"N\\u00c2NG C\\u01a0\"}}', 1, 2, 'active', 1, 1, '2023-08-09 01:40:10', '2023-08-14 03:44:51', 'nang-co'),
(48, 'service', 46, 'THỦY LIỆU', '{\"image\":null,\"image_background\":null,\"description\":{\"en\":null,\"vi\":null},\"brief\":{\"vi\":null,\"en\":null},\"content\":{\"vi\":null,\"en\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"title\":{\"en\":\"Facial\",\"vi\":\"TH\\u1ee6Y LI\\u1ec6U\"}}', 1, 3, 'active', 1, 1, '2023-08-09 01:47:35', '2023-08-14 03:45:12', 'thuy-lieu'),
(49, 'service', 46, 'MẶT NẠ', '{\"image\":null,\"image_background\":null,\"description\":{\"en\":null,\"vi\":null},\"brief\":{\"vi\":null,\"en\":null},\"content\":{\"vi\":null,\"en\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"title\":{\"en\":\"Facial\",\"vi\":\"M\\u1eb6T N\\u1ea0\"}}', 1, 1, 'active', 1, 1, '2023-08-09 01:48:16', '2023-08-14 03:45:02', 'mat-na'),
(50, 'product', 45, 'Origani', '{\"image\":\"\\/data\\/cms-image\\/brands\\/br1.png\",\"image_background\":\"\\/data\\/cms-image\\/brands\\/br1.png\",\"description\":{\"en\":null,\"vi\":null},\"brief\":{\"vi\":\"Gi\\u1edbi thi\\u1ec7u Origani\",\"en\":\"Origani Product\"},\"content\":{\"vi\":\"<span style=\\\"font-size:11pt; font-variant:normal; white-space:pre-wrap\\\"><span style=\\\"font-family:Arial,sans-serif\\\"><span style=\\\"color:#000000\\\"><span style=\\\"font-weight:400\\\"><span style=\\\"font-style:normal\\\"><span style=\\\"text-decoration:none\\\">Origani l\\u00e0 th\\u01b0\\u01a1ng hi\\u1ec7u ch\\u0103m s\\u00f3c da cao c\\u1ea5p \\u0111\\u01b0\\u1ee3c ch\\u1ee9ng nh\\u1eadn h\\u1eefu c\\u01a1 t\\u1eeb \\u00dac. Origani \\u0111\\u01b0\\u1ee3c th\\u00e0nh l\\u1eadp v\\u00e0o th\\u00e1ng 8 n\\u0103m 2008 t\\u1ea1i Melbourne, \\u00dac. V\\u1edbi mong mu\\u1ed1n \\u0111\\u00e1p \\u1ee9ng nhu c\\u1ea7u ng\\u00e0y c\\u00e0ng cao c\\u1ee7a ph\\u1ee5 n\\u1eef tr\\u00ean to\\u00e0n th\\u1ebf gi\\u1edbi v\\u1ec1 m\\u1ef9 ph\\u1ea9m an to\\u00e0n v\\u00e0 th\\u00e2n thi\\u1ec7n v\\u1edbi m\\u00f4i tr\\u01b0\\u1eddng.<\\/span><\\/span><\\/span><\\/span><\\/span><\\/span>\",\"en\":\"Origani is a certified organic premium skincare brand from Australia. Origani was established in August 2008 in Melbourne. With the desire to meet the increasing demand of women around the world for safe, environmentally friendly and ethical cosmetics.\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"title\":{\"en\":\"Origani\",\"vi\":\"Origani\"}}', 0, 1, 'active', 1, 1, '2023-08-09 14:40:18', '2023-08-13 16:12:34', 'origani'),
(51, 'product', 45, 'Black Pearl', '{\"image\":\"\\/data\\/cms-image\\/brands\\/br2.png\",\"image_background\":\"\\/data\\/cms-image\\/brands\\/e89ec0bd58fe8aa0d3ef.jpg\",\"description\":{\"en\":null,\"vi\":null},\"brief\":{\"vi\":\"Gi\\u1edbi thi\\u1ec7u Black Pearl\",\"en\":\"Black Pearl Product\"},\"content\":{\"vi\":\"<span style=\\\"font-size:11pt; font-variant:normal; white-space:pre-wrap\\\"><span style=\\\"font-family:Arial,sans-serif\\\"><span style=\\\"color:#000000\\\"><span style=\\\"font-weight:400\\\"><span style=\\\"font-style:normal\\\"><span style=\\\"text-decoration:none\\\">Black Pearl l\\u00e0 th\\u01b0\\u01a1ng hi\\u1ec7u m\\u1ef9 ph\\u1ea9m cao c\\u1ea5p xu\\u1ea5t x\\u1ee9 Israel c\\u00f3 t\\u1eeb n\\u0103m 2008. M\\u1ef9 ph\\u1ea9m Black Pearl \\u0111\\u01b0\\u1ee3c s\\u1ea3n xu\\u1ea5t s\\u1eed d\\u1ee5ng c\\u00f4ng ngh\\u1ec7 hi\\u1ec7n \\u0111\\u1ea1i v\\u00e0 c\\u00e1c th\\u00e0nh ph\\u1ea7n qu\\u00fd gi\\u00e1 nh\\u01b0 b\\u1ed9t ng\\u1ecdc trai, v\\u00e0ng 24K, g\\u00f3p ph\\u1ea7n n\\u00e2ng s\\u1ea3n ph\\u1ea9m ch\\u0103m s\\u00f3c da \\u0111\\u1ebfn t\\u1eeb v\\u00f9ng bi\\u1ec3n Ch\\u1ebft l\\u00ean m\\u1ed9t t\\u1ea7m cao m\\u1edbi, h\\u01b0\\u1edbng ng\\u01b0\\u1eddi s\\u1eed d\\u1ee5ng \\u0111\\u1ebfn v\\u1ebb \\u0111\\u1eb9p sang tr\\u1ecdng huy\\u1ec1n b\\u00ed v\\u00e0 ho\\u00e0n m\\u1ef9 nh\\u01b0 nh\\u1eefng vi\\u00ean Ng\\u1ecdc trai \\u0111en qu\\u00fd hi\\u1ebfm<\\/span><\\/span><\\/span><\\/span><\\/span><\\/span>\",\"en\":\"Black Pearl is a high-end cosmetic brand from 2008 from Israel. Applying modern technology and precious ingredients such as pearl powder and 24k gold to raise dead sea skin care products to a new level, towards a mysterious and flawless luxury beauty like rare Black Pearls.\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"title\":{\"en\":\"Black Pearl\",\"vi\":\"Black Pearl\"}}', 0, 2, 'active', 1, 1, '2023-08-09 14:50:16', '2023-08-13 16:12:50', 'black-pearl'),
(52, 'product', 45, 'Zero Gravity', '{\"image\":\"\\/data\\/cms-image\\/brands\\/br3.png\",\"image_background\":\"\\/data\\/cms-image\\/brands\\/br4.png\",\"description\":{\"vi\":null,\"en\":null},\"brief\":{\"vi\":\"Gi\\u1edbi thi\\u1ec7u  Zero Gravity\",\"en\":\"Zero Gravity Product\"},\"content\":{\"vi\":\"<p style=\\\"line-height:1.38\\\"><span style=\\\"font-size:11pt; font-variant:normal; white-space:pre-wrap\\\"><span style=\\\"font-family:Arial,sans-serif\\\"><span style=\\\"color:#000000\\\"><span style=\\\"font-weight:400\\\"><span style=\\\"font-style:normal\\\"><span style=\\\"text-decoration:none\\\">ZERO GRAVITY \\u0111\\u01b0\\u1ee3c th\\u00e0nh l\\u1eadp v\\u1edbi m\\u1ed9t nguy\\u00ean t\\u1eafc: ph\\u00e1t tri\\u1ec3n v\\u00e0 cung c\\u1ea5p c\\u00e1c s\\u1ea3n ph\\u1ea9m ch\\u0103m s\\u00f3c da m\\u1eb7t ch\\u1ed1ng l\\u00e3o h\\u00f3a an to\\u00e0n v\\u00e0 hi\\u1ec7u qu\\u1ea3 cho ng\\u01b0\\u1eddi ti\\u00eau d\\u00f9ng tr\\u00ean to\\u00e0n c\\u1ea7u. Zero Gravity t\\u1ef1 h\\u00e0o l\\u00e0 c\\u00f4ng ty d\\u1eabn \\u0111\\u1ea7u trong th\\u1ecb tr\\u01b0\\u1eddng thi\\u1ebft b\\u1ecb th\\u1ea9m m\\u1ef9.<\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/p>\\r\\n\\r\\n<p style=\\\"line-height:1.38\\\"><span style=\\\"font-size:11pt; font-variant:normal; white-space:pre-wrap\\\"><span style=\\\"font-family:Arial,sans-serif\\\"><span style=\\\"color:#000000\\\"><span style=\\\"font-weight:400\\\"><span style=\\\"font-style:normal\\\"><span style=\\\"text-decoration:none\\\">ZERO GRAVITY cam k\\u1ebft s\\u1ea3n xu\\u1ea5t h\\u1ec7 th\\u1ed1ng tr\\u1ecb li\\u1ec7u b\\u1eb1ng \\u00e1nh s\\u00e1ng LED hi\\u1ec7u qu\\u1ea3 \\u0111\\u1ec3 tr\\u1ebb h\\u00f3a da m\\u1eb7t trong ng\\u00e0nh. \\u0110\\u01b0\\u1ee3c h\\u1ed7 tr\\u1ee3 b\\u1edfi khoa h\\u1ecdc y t\\u1ebf nh\\u01b0ng \\u0111\\u01b0\\u1ee3c s\\u1eeda \\u0111\\u1ed5i \\u0111\\u1eb7c bi\\u1ec7t \\u0111\\u1ec3 cho ph\\u00e9p c\\u00e1c ph\\u01b0\\u01a1ng ph\\u00e1p \\u0111i\\u1ec1u tr\\u1ecb ch\\u1ec9 mang t\\u00ednh th\\u1ea9m m\\u1ef9, khoa h\\u1ecdc ph\\u1ee9c t\\u1ea1p \\u0111\\u1eb1ng sau li\\u1ec7u ph\\u00e1p \\u00e1nh s\\u00e1ng h\\u1ed3ng ngo\\u1ea1i \\u0111\\u01b0\\u1ee3c h\\u1ed7 tr\\u1ee3 b\\u1edfi nhi\\u1ec1u b\\u00e1c s\\u0129 da li\\u1ec5u v\\u00e0 b\\u00e1c s\\u0129 ph\\u1eabu thu\\u1eadt th\\u1ea9m m\\u1ef9 h\\u00e0ng \\u0111\\u1ea7u tr\\u00ean to\\u00e0n c\\u1ea7u.<\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/p>\",\"en\":\"<p>ZERO GRAVITY was founded with one principle in mind: to develop and deliver safe and effective anti-aging facial products to consumers across the globe. Zero Gravity is proud to be a prolific leader in the aesthetic devices market.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>ZERO GRAVITY is committed to produce effective system of LED light therapy (light emitting diodes) for facial skin rejuvenation in the industry. Backed by medical science but specifically modified to allow for aesthetic-only treatments, the sophisticated science behind infrared light therapy is supported by many leading board-certified dermatologists and plastic surgeons across the globe.<\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"title\":{\"vi\":\"Zero Gravity\",\"en\":\"Zero Gravity\"}}', 0, 4, 'active', 1, 1, '2023-08-09 17:31:41', '2023-08-13 16:15:55', 'zero-gravity'),
(53, 'product', 45, 'Opatra London', '{\"image\":\"\\/data\\/cms-image\\/brands\\/br1.png\",\"image_background\":null,\"description\":{\"en\":null,\"vi\":null},\"brief\":{\"vi\":\"Gi\\u1edbi thi\\u1ec7u Opatra London\",\"en\":\"Opatra London Product\"},\"content\":{\"vi\":\"<p style=\\\"line-height:1.38\\\"><span style=\\\"font-size:11pt; font-variant:normal; white-space:pre-wrap\\\"><span style=\\\"font-family:Arial,sans-serif\\\"><span style=\\\"color:#000000\\\"><span style=\\\"font-weight:400\\\"><span style=\\\"font-style:normal\\\"><span style=\\\"text-decoration:none\\\">L\\u00e0 m\\u1ed9t chuy\\u00ean gia v\\u1ec1 nh\\u1eefng gi\\u1ea3i ph\\u00e1p ch\\u0103m s\\u00f3c da ti\\u00ean ti\\u1ebfn nh\\u1ea5t, Opatra \\u0111\\u00e3 th\\u00e0nh c\\u00f4ng trong vi\\u1ec7c kh\\u1eb3ng \\u0111\\u1ecbnh m\\u00ecnh l\\u00e0 nh\\u00e0 s\\u1ea3n xu\\u1ea5t v\\u00e0 b\\u00e1n bu\\u00f4n h\\u00e0ng \\u0111\\u1ea7u, chuy\\u00ean v\\u1ec1 c\\u00e1c ph\\u01b0\\u01a1ng ph\\u00e1p \\u0111i\\u1ec1u tr\\u1ecb v\\u00e0 c\\u00f4ng ngh\\u1ec7 mang t\\u00ednh c\\u00e1ch m\\u1ea1ng cho ng\\u00e0nh c\\u00f4ng nghi\\u1ec7p l\\u00e0m \\u0111\\u1eb9p.<\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/p>\\r\\n\\r\\n<p style=\\\"line-height:1.38\\\"><span style=\\\"font-size:11pt; font-variant:normal; white-space:pre-wrap\\\"><span style=\\\"font-family:Arial,sans-serif\\\"><span style=\\\"color:#000000\\\"><span style=\\\"font-weight:400\\\"><span style=\\\"font-style:normal\\\"><span style=\\\"text-decoration:none\\\">Gi\\u1ea3i ph\\u00e1p ch\\u0103m s\\u00f3c da mang t\\u00ednh \\u0111\\u1ed9t ph\\u00e1 m\\u1edbi nh\\u1ea5t c\\u1ee7a Opatra, Dermisonic, l\\u00e0 m\\u1ed9t thi\\u1ebft b\\u1ecb ch\\u1ed1ng l\\u00e3o h\\u00f3a v\\u00e0 ph\\u1ee5c h\\u1ed3i da d\\u1ef1a tr\\u00ean s\\u00f3ng si\\u00eau \\u00e2m v\\u00e0 \\u00e1nh s\\u00e1ng LED. Gi\\u1ea3i ph\\u00e1p n\\u00e0y \\u0111\\u01b0\\u1ee3c t\\u1ea1o ra d\\u1ef1a v\\u00e0o c\\u00e1ch ti\\u1ebfp c\\u1eadn ch\\u00ednh c\\u1ee7a Opatra khi ph\\u00e1t tri\\u1ec3n v\\u00e0 gi\\u1edbi thi\\u1ec7u c\\u00e1c gi\\u1ea3i ph\\u00e1p ch\\u0103m s\\u00f3c da hi\\u1ec7u qu\\u1ea3, d\\u1ef1a tr\\u00ean nh\\u1eefng nghi\\u00ean c\\u1ee9u g\\u1ea7n \\u0111\\u00e2y nh\\u1ea5t trong l\\u00e0m \\u0111\\u1eb9p.<\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/p>\",\"en\":\"<p>An expert in ground-breaking skincare solutions, Opatra Ltd. has successfully established itself as a leading wholesaler and manufacturer, specializing in revolutionary treatments and technologies to the beauty industry.<\\/p>\\r\\n\\r\\n<p>Opatra latest revolutionary skincare solution, Dermisonic, is an anti-aging and skin repair device based on ultrasonic and LED light. This solution is founded upon Opatra\'s key approach to developing and introducing effective skincare solutions on the most recent developments in beauty research.<\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"title\":{\"en\":\"Opatra London\",\"vi\":\"Opatra London\"}}', 0, 3, 'active', 1, 1, '2023-08-09 17:32:27', '2023-08-13 16:14:06', 'opatra-london'),
(54, 'service', 46, 'errrrr', '{\"image\":null,\"image_background\":null,\"description\":{\"vi\":null},\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"title\":{\"vi\":\"errrrr\"}}', 0, NULL, 'delete', 1, 1, '2023-08-12 02:25:14', '2023-08-12 02:36:05', 'errrrr'),
(55, 'post', NULL, 'Blog', '{\"image\":null,\"image_background\":\"\\/data\\/cms-image\\/Images\\/640248ad810652580b17.jpg\",\"description\":{\"en\":null,\"vi\":null},\"brief\":{\"en\":null,\"vi\":null},\"content\":{\"en\":null,\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"title\":{\"vi\":\"Blog\"}}', 0, 3, 'active', 1, 1, '2023-08-14 10:24:55', '2023-08-14 10:25:11', 'blog');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_components`
--

CREATE TABLE `tb_components` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `component_code` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `brief` text DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `image` varchar(255) DEFAULT NULL,
  `image_background` varchar(255) DEFAULT NULL,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_components`
--

INSERT INTO `tb_components` (`id`, `component_code`, `parent_id`, `title`, `brief`, `content`, `json_params`, `image`, `image_background`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'menu', NULL, 'Main menu', NULL, NULL, '{\"menu_id\":\"24\"}', NULL, NULL, 1, 'active', 1, 1, '2022-05-04 08:23:05', '2022-05-20 01:38:02'),
(2, 'banner_image', NULL, 'Adv banner', NULL, NULL, NULL, '/data/cms-image/banner/no-banner.jpg', NULL, 2, 'active', 1, 1, '2022-05-04 10:25:30', '2022-05-04 10:25:30'),
(3, 'menu', NULL, 'Primary sidebar', 'Primary sidebar section', NULL, '{\"menu_id\":\"33\"}', NULL, NULL, 3, 'active', 1, 1, '2022-05-19 07:24:44', '2022-05-20 01:38:15'),
(4, 'custom', NULL, 'Footer content', NULL, NULL, NULL, NULL, NULL, 4, 'active', 1, 1, '2022-05-19 15:21:27', '2022-05-19 15:21:27'),
(5, NULL, 2, 'Right banner 1', 'Description to this banner', NULL, '{\"url_link\":\"#\",\"url_link_title\":\"Show now\",\"target\":\"_self\"}', '/data/cms-image/meta-logo-favicon.png', NULL, 5, 'delete', 1, 1, '2022-05-20 04:24:40', '2022-05-20 06:23:36'),
(6, NULL, 2, 'Right banner 1', 'Description to this banner', NULL, '{\"url_link\":\"#\",\"url_link_title\":\"Show now\",\"target\":\"_self\"}', '/data/cms-image/meta-logo-favicon.png', NULL, 1, 'active', 1, 1, '2022-05-20 04:27:07', '2022-05-20 04:27:07'),
(7, NULL, 2, 'Right banner 2', NULL, NULL, '{\"url_link\":\"#\",\"url_link_title\":\"View more\",\"target\":\"_self\"}', '/data/banner/architektura-5.jpg', NULL, 2, 'active', 1, 1, '2022-05-20 06:25:03', '2022-05-20 06:25:03'),
(8, NULL, 2, 'Right banner 3', NULL, NULL, '{\"url_link\":null,\"url_link_title\":null,\"target\":\"_self\"}', '/data/banner/ewx_cslxkaio8su.jpg', NULL, 3, 'active', 1, 1, '2022-05-20 06:27:24', '2022-05-20 06:27:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_component_configs`
--

CREATE TABLE `tb_component_configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `component_code` varchar(255) NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `is_config` tinyint(1) NOT NULL DEFAULT 1,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_component_configs`
--

INSERT INTO `tb_component_configs` (`id`, `name`, `description`, `component_code`, `json_params`, `is_config`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'Menu', NULL, 'menu', NULL, 1, 1, 'active', 1, 1, '2022-04-26 09:53:00', '2022-04-26 09:53:00'),
(2, 'Custom', NULL, 'custom', NULL, 1, 2, 'active', 1, 1, '2022-04-26 09:53:17', '2022-04-26 09:53:17'),
(3, 'Banner / Image', NULL, 'banner_image', NULL, 1, 3, 'active', 1, 1, '2022-04-26 09:53:50', '2022-04-26 09:53:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_contacts`
--

CREATE TABLE `tb_contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_type` varchar(255) DEFAULT 'contact',
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `admin_note` text DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_contacts`
--

INSERT INTO `tb_contacts` (`id`, `is_type`, `name`, `email`, `phone`, `subject`, `content`, `admin_note`, `json_params`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'newsletter', NULL, 'huuthangb2k50@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, '2022-06-02 08:02:36', '2022-06-02 08:02:36'),
(16, 'newsletter', NULL, 'thangnh.edu@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, '2022-09-13 09:54:38', '2022-09-13 09:54:38'),
(19, 'call_request', 'Thắng Nguyễn 2', 'thangnh.edu@gmail.com', '0912 568 999', NULL, 'Thử chức năng trên fhm', NULL, NULL, NULL, 'new', NULL, NULL, '2022-10-08 07:14:54', '2022-10-08 07:14:54'),
(22, 'contact', 'Thắng Nguyễn 2', 'huuthangb2k50@gmail.com', '0912 568 999', NULL, 'Liên hệ lại cho tôi nhé', NULL, NULL, NULL, 'new', NULL, NULL, '2022-10-11 07:07:33', '2022-10-11 07:07:33'),
(56, 'contact', 'Đỗ Như Thanh', 'thanhkudo1011998@gmail.com', '0355820911', NULL, NULL, NULL, '{\"product\":\"150\",\"payment\":\"direct\"}', NULL, 'processing', NULL, 3, '2023-07-08 08:06:08', '2023-07-10 01:55:09'),
(58, 'call_request', 'Thanh Kudo', NULL, '0355820911', NULL, NULL, NULL, '{\"height\":\"165\",\"weight\":\"65\",\"gender\":\"male\",\"year\":\"1998\",\"studied\":\"no\",\"is_injury\":\"no\",\"is_sick\":\"no\",\"time\":\"yes\"}', NULL, 'processing', NULL, 3, '2023-07-08 09:39:24', '2023-07-10 01:55:03'),
(73, 'contact', 'Barber Hà Nội', 'phammanhhung1008369@gmail.com', '0332792626', NULL, NULL, NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-10 15:11:17', '2023-08-10 15:11:17'),
(74, 'contact', 'Barber Hà Nội', 'donhuthanhxom@gmail.com', '0332792626', NULL, 'thanhkudo', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 02:10:25', '2023-08-19 02:10:25'),
(75, 'contact', 'Barber Hà Nội', 'donhuthanhxom@gmail.com', '0332792626', NULL, 'thanh', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 02:10:50', '2023-08-19 02:10:50'),
(76, 'contact', 'Barber Hà Nội', 'donhuthanhxom@gmail.com', '0332792626', NULL, 'ngngn', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 02:18:09', '2023-08-19 02:18:09'),
(77, 'contact', 'Barber Hà Nội', 'donhuthanhxom@gmail.com', '0332792626', NULL, '333', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 02:35:50', '2023-08-19 02:35:50'),
(78, 'contact', 'Barber Hà Nội', 'phammanhhung1008@gmail.com', '0332792626', NULL, NULL, NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 03:07:02', '2023-08-19 03:07:02'),
(79, 'contact', NULL, 'phammanhhung1008369@gmail.com', NULL, NULL, 'dd', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 03:15:02', '2023-08-19 03:15:02'),
(80, 'contact', 'Red box', 'donhuthanhxom@gmail.com', '0332792626', NULL, '123', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 03:15:23', '2023-08-19 03:15:23'),
(81, 'contact', 'Barber Hà Nội', 'donhuthanhxom@gmail.com', '0332792626', NULL, '12', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 03:18:02', '2023-08-19 03:18:02'),
(82, 'contact', 'Barber Hà Nội', 'donhuthanhxom@gmail.com', '0332792626', NULL, '12', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 03:22:28', '2023-08-19 03:22:28'),
(83, 'contact', 'Barber Hà Nội', 'donhuthanhxom@gmail.com', '0332792626', NULL, '444', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 03:30:49', '2023-08-19 03:30:49'),
(84, 'contact', 'Barber Hà Nội', 'donhuthanhxom@gmail.com', '0332792626', NULL, '444', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 03:37:35', '2023-08-19 03:37:35'),
(85, 'contact', 'Barber Hà Nội', 'donhuthanhxom@gmail.com', '0332792626', NULL, '134', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 04:07:06', '2023-08-19 04:07:06'),
(86, 'contact', 'Barber Hà Nội', 'donhuthanhxom@gmail.com', '0332792626', NULL, 'ưer', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 04:08:47', '2023-08-19 04:08:47'),
(87, 'contact', 'Barber Hà Nội', 'donhuthanhxom@gmail.com', '0332792626', NULL, 'ưer', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 04:09:01', '2023-08-19 04:09:01'),
(102, 'contact', 'Barber Hà Nội', 'donhuthanhxom@gmail.com', '0332792626', NULL, 'dd', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 06:37:46', '2023-08-19 06:37:46'),
(103, 'contact', 'Barber Hà Nội', 'donhuthanhxom@gmail.com', '0332792626', NULL, 'Test1', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 06:51:07', '2023-08-19 06:51:07'),
(104, 'contact', 'Barber Hà Nội', 'donhuthanhxom@gmail.com', '0332792626', NULL, 'Test1', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 06:51:37', '2023-08-19 06:51:37'),
(105, 'contact', 'Barber Hà Nội', 'donhuthanhxom@gmail.com', '0332792626', NULL, 'Test1', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 06:52:00', '2023-08-19 06:52:00'),
(106, 'contact', 'Barber Hà Nội', 'donhuthanhxom@gmail.com', '0332792626', NULL, 'Test1', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 06:52:27', '2023-08-19 06:52:27'),
(107, 'contact', 'Barber Hà Nội', 'donhuthanhxom@gmail.com', '0332792626', NULL, 'Test1', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 06:53:46', '2023-08-19 06:53:46'),
(108, 'contact', 'Barber Hà Nội', 'shg36826@zwoho.com', '0332792626', NULL, 'sssss', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 07:01:33', '2023-08-19 07:01:33'),
(109, 'contact', 'Barber Hà Nội', 'shg36826@zwoho.com', '0332792626', NULL, 'sssss', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 07:03:16', '2023-08-19 07:03:16'),
(110, 'contact', 'Barber Hà Nội', 'shg36826@zwoho.com', '0332792626', NULL, 'sssss', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 07:05:01', '2023-08-19 07:05:01'),
(111, 'contact', 'Barber Hà Nội', 'shg36826@zwoho.com', '0332792626', NULL, 'sssss', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 07:13:13', '2023-08-19 07:13:13'),
(112, 'contact', 'Barber Hà Nội', 'shg36826@zwoho.com', '0332792626', NULL, 'sssss', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 07:13:17', '2023-08-19 07:13:17'),
(113, 'contact', 'Barber Hà Nội', 'shg36826@zwoho.com', '0332792626', NULL, 'sssss', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 07:16:09', '2023-08-19 07:16:09'),
(114, 'contact', 'Barber Hà Nội', 'shg36826@zwoho.com', '0332792626', NULL, 'sssss', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 07:16:12', '2023-08-19 07:16:12'),
(115, 'contact', 'Barber Hà Nội', 'shg36826@zwoho.com', '0332792626', NULL, 'sssss', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 07:16:19', '2023-08-19 07:16:19'),
(116, 'contact', 'Barber Hà Nội', 'duonghiepit@gmail.com', '0332792626', NULL, 'ww', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 07:18:33', '2023-08-19 07:18:33'),
(117, 'contact', 'Barber Hà Nội', 'duonghiepit@gmail.com', '0332792626', NULL, 'ww', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 07:18:45', '2023-08-19 07:18:45'),
(118, 'contact', 'Barber Hà Nội', 'duonghiepit@gmail.com', '0332792626', NULL, 'ww', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 07:27:01', '2023-08-19 07:27:01'),
(119, 'contact', 'Đỗ Như Thanh', 'donhuthanhxom@gmail.com', '0355820911', NULL, 'test api', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 07:29:28', '2023-08-19 07:29:28'),
(120, 'contact', 'Barber Hà Nội', 'duonghiepit@gmail.com', '0332792626', NULL, 'dd', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 07:32:27', '2023-08-19 07:32:27'),
(121, 'contact', 'Barber Hà Nội', 'donhuthanhxom@gmail.com', '0332792626', NULL, 'đ', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 07:32:54', '2023-08-19 07:32:54'),
(122, 'contact', 'Barber Hà Nội', 'donhuthanhxom@gmail.com', '0332792626', NULL, 'đ', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 07:37:07', '2023-08-19 07:37:07'),
(123, 'contact', 'Barber Hà Nội', 'donhuthanhxom@gmail.com', '0332792626', NULL, 'test 2', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 07:37:52', '2023-08-19 07:37:52'),
(124, 'contact', 'Barber Hà Nội', 'duonghiepit@gmail.com', '0332792626', NULL, 'sss', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 07:40:01', '2023-08-19 07:40:01'),
(125, 'contact', 'Barber Hà Nội', 'duonghiepit@gmail.com', '0332792626', NULL, 'sss', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 07:43:40', '2023-08-19 07:43:40'),
(126, 'contact', 'Barber Hà Nội', 'duonghiepit@gmail.com', '0332792626', NULL, 'sss', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 07:44:35', '2023-08-19 07:44:35'),
(127, 'contact', 'Barber Hà Nội', 'duonghiepit@gmail.com', '0332792626', NULL, 'sss', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 07:48:13', '2023-08-19 07:48:13'),
(128, 'contact', 'Barber Hà Nội', 'duonghiepit@gmail.com', '0332792626', NULL, 'sss', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 07:48:16', '2023-08-19 07:48:16'),
(129, 'contact', 'Barber Hà Nội', 'duonghiepit@gmail.com', '0332792626', NULL, 'sss', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 07:48:23', '2023-08-19 07:48:23'),
(130, 'contact', 'Barber Hà Nội', 'duonghiepit@gmail.com', '0332792626', NULL, 'sss', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 07:49:14', '2023-08-19 07:49:14'),
(131, 'contact', 'Barber Hà Nội', 'duonghiepit@gmail.com', '0332792626', NULL, 'sss', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 07:49:18', '2023-08-19 07:49:18'),
(132, 'contact', 'Barber Hà Nội', 'donhuthanhxom@gmail.com', '0332792626', NULL, 'rrrrr', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 07:59:26', '2023-08-19 07:59:26'),
(133, 'contact', 'Barber Hà Nội', 'donhuthanhxom@gmail.com', '0332792626', NULL, '321123', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 08:02:57', '2023-08-19 08:02:57'),
(134, 'contact', 'Barber Hà Nội', 'donhuthanhxom@gmail.com', '0332792626', NULL, 'qqqq', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 08:04:37', '2023-08-19 08:04:37'),
(135, 'contact', 'Barber Hà Nội', 'donhuthanhxom@gmail.com', '0332792626', NULL, 'thah', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 08:06:19', '2023-08-19 08:06:19'),
(136, 'contact', 'Barber Hà Nội', 'donhuthanhxom@gmail.com', '0332792626', NULL, 'thah', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 08:06:55', '2023-08-19 08:06:55'),
(137, 'contact', 'Barber Hà Nội', 'donhuthanhxom@gmail.com', '0332792626', NULL, 'thah', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 08:07:13', '2023-08-19 08:07:13'),
(138, 'contact', 'Barber Hà Nội', 'donhuthanhxom@gmail.com', '0332792626', NULL, 'thah', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 08:07:40', '2023-08-19 08:07:40'),
(139, 'contact', 'Barber Hà Nội', 'donhuthanhxom@gmail.com', '0332792626', NULL, 'thah', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 08:08:21', '2023-08-19 08:08:21'),
(140, 'contact', 'Barber Hà Nội', 'donhuthanhxom@gmail.com', '0332792626', NULL, 'qwe', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 08:08:36', '2023-08-19 08:08:36'),
(141, 'contact', 'Barber Hà Nội', 'donhuthanhxom@gmail.com', '0332792626', NULL, 'qwe', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 08:19:54', '2023-08-19 08:19:54'),
(142, 'contact', 'Barber Hà Nội', 'donhuthanhxom@gmail.com', '0332792626', NULL, 'qwe', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 08:20:12', '2023-08-19 08:20:12'),
(143, 'contact', 'Barber Hà Nội', 'donhuthanhxom@gmail.com', '0332792626', NULL, 'qwe', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 08:20:25', '2023-08-19 08:20:25'),
(144, 'contact', 'Barber Hà Nội', 'donhuthanhxom@gmail.com', '0332792626', NULL, 'Thanhkudo', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 08:21:01', '2023-08-19 08:21:01'),
(145, 'contact', 'rr', 'donhuthanhxom@gmail.com', '0332792626', NULL, 'aaaa', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 09:21:25', '2023-08-19 09:21:25'),
(146, 'contact', 'Barber Hà Nội', 'donhuthanhxom@gmail.com', '0332792626', NULL, '2223', NULL, NULL, NULL, 'new', NULL, NULL, '2023-08-19 09:23:42', '2023-08-19 09:23:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_languages`
--

CREATE TABLE `tb_languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lang_name` varchar(255) NOT NULL,
  `lang_locale` varchar(255) NOT NULL,
  `lang_code` varchar(255) NOT NULL,
  `flag` varchar(255) DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_languages`
--

INSERT INTO `tb_languages` (`id`, `lang_name`, `lang_locale`, `lang_code`, `flag`, `is_default`, `iorder`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Tiếng Việt', 'vi', 'vi', '/data/cms-image/Icon/vn.svg', 1, 2, 'active', '2023-04-05 09:41:37', '2023-08-17 10:23:55'),
(2, 'English', 'en', 'en', '/data/cms-image/Icon/us.svg', 0, 2, 'active', '2023-04-05 09:43:46', '2023-08-09 08:47:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_logs`
--

CREATE TABLE `tb_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `url_referer` text DEFAULT NULL,
  `url` text DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `params` text DEFAULT NULL,
  `logged_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_menus`
--

CREATE TABLE `tb_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `url_link` varchar(255) DEFAULT NULL,
  `menu_type` varchar(255) DEFAULT NULL,
  `system_code` varchar(255) DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_menus`
--

INSERT INTO `tb_menus` (`id`, `parent_id`, `name`, `description`, `url_link`, `menu_type`, `system_code`, `json_params`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(24, NULL, 'Menu đầu trang', 'Menu link for main navbar', NULL, 'header', NULL, '{\"image\":null,\"name\":{\"en\":\"Menu header\",\"vi\":\"Menu \\u0111\\u1ea7u trang\"}}', 1, 'active', 1, 1, '2022-05-10 10:29:01', '2023-08-11 10:15:17'),
(26, 24, 'Thương hiệu', NULL, '/our-brands', 'main', 'public', '{\"target\":\"_self\",\"name\":{\"en\":\"Brands\",\"vi\":\"Th\\u01b0\\u01a1ng hi\\u1ec7u\"}}', 3, 'active', 1, 1, '2021-12-08 02:51:06', '2023-08-11 15:33:54'),
(27, 24, 'Liệu trình', NULL, '/treatments', 'main', 'public', '{\"target\":\"_self\",\"name\":{\"en\":\"Treatments\",\"vi\":\"Li\\u1ec7u tr\\u00ecnh\"}}', 2, 'active', 1, 1, '2021-12-08 02:51:06', '2023-08-11 15:33:54'),
(31, 24, 'Cửa hàng', NULL, '/store', NULL, NULL, '{\"target\":\"_self\",\"name\":{\"en\":\"Stores\",\"vi\":\"C\\u1eeda h\\u00e0ng\"}}', 4, 'active', 1, 1, '2022-05-18 16:52:41', '2023-08-11 15:33:54'),
(34, 33, 'Điều khoản dịch vụ', NULL, '#', NULL, NULL, '{\"target\":\"_self\"}', 1, 'active', 1, 1, '2022-05-18 18:49:06', '2022-08-18 04:34:19'),
(35, 33, 'Chính sách bảo mật', NULL, '#', NULL, NULL, '{\"target\":\"_self\"}', 2, 'active', 1, 1, '2022-05-18 18:49:24', '2022-08-18 04:34:32'),
(37, 36, 'Chính sách bảo mật thông tin', NULL, '#', NULL, NULL, '{\"target\":\"_self\"}', 1, 'active', 1, 1, '2022-06-02 07:25:33', '2022-06-02 07:25:33'),
(38, 36, 'Hướng dẫn tra cứu', NULL, '#', NULL, NULL, '{\"target\":\"_self\"}', 2, 'active', 1, 1, '2022-06-02 07:25:44', '2022-06-02 07:25:44'),
(46, 33, 'Câu hỏi thường gặp', NULL, '#', NULL, NULL, '{\"target\":\"_self\"}', 3, 'active', 1, 1, '2022-08-05 10:15:12', '2022-08-18 04:34:42'),
(75, 74, 'Trang chủ', NULL, '#slider', NULL, NULL, '{\"target\":\"_self\"}', 1, 'active', 1, 1, '2022-12-29 02:08:46', '2022-12-29 02:09:36'),
(76, 74, 'Dịch vụ', NULL, '#service', NULL, NULL, '{\"target\":\"_self\"}', 2, 'active', 1, 1, '2022-12-29 02:09:57', '2022-12-29 02:09:57'),
(77, 74, 'Bảng giá', NULL, '#price', NULL, NULL, '{\"target\":\"_self\"}', 3, 'active', 1, 1, '2022-12-29 02:10:12', '2022-12-29 02:10:12'),
(78, 74, 'Sản phẩm', NULL, '#shop', NULL, NULL, '{\"target\":\"_self\"}', 4, 'active', 1, 1, '2022-12-29 02:10:47', '2022-12-29 02:10:47'),
(79, 74, 'Blog', NULL, '#testimonial', NULL, NULL, '{\"target\":\"_self\"}', 5, 'active', 1, 1, '2022-12-29 02:11:23', '2022-12-29 02:11:23'),
(80, 74, 'Liên hệ', NULL, '#contact', NULL, NULL, '{\"target\":\"_self\"}', 6, 'active', 1, 1, '2022-12-29 02:14:10', '2022-12-29 02:14:10'),
(83, 82, 'www', NULL, 'wwww', NULL, NULL, '{\"target\":\"_self\"}', 1, 'active', 1, 1, '2023-01-04 10:28:20', '2023-01-04 10:28:20'),
(84, 24, 'About Us', NULL, '/about-us', NULL, NULL, '{\"target\":\"_self\",\"name\":{\"en\":\"About Us\",\"vi\":\"Gi\\u1edbi thi\\u1ec7u\"}}', 1, 'active', 1, 1, '2023-01-07 02:03:23', '2023-08-11 15:33:54'),
(93, 64, 'Trang chủ', NULL, 'trang-chu', NULL, NULL, NULL, 1, 'active', 1, 1, '2023-04-06 08:08:22', '2023-04-06 08:10:14'),
(94, 64, 'Giới thiệu', NULL, '/gioi-thieu', NULL, NULL, '{\"target\":\"_self\"}', 2, 'active', 1, 1, '2023-04-06 08:08:22', '2023-04-10 01:48:22'),
(95, 64, 'Tin tức', NULL, 'tin-tuc', NULL, NULL, '{\"target\":\"_self\"}', 4, 'active', 1, 1, '2023-04-06 08:08:22', '2023-04-06 08:10:15'),
(96, 64, 'Quà tết', NULL, 'san-pham', NULL, NULL, '{\"target\":\"_self\"}', 3, 'active', 1, 1, '2023-04-06 08:08:22', '2023-04-06 08:13:06'),
(97, 64, 'Liên hệ', NULL, 'lien-he', NULL, NULL, NULL, 5, 'active', 1, 1, '2023-04-06 08:08:23', '2023-04-06 08:10:15'),
(98, NULL, 'Đường dẫn nhanh', NULL, NULL, 'footer', NULL, '{\"image\":null,\"name\":{\"en\":\"Quick Links\",\"vi\":\"\\u0110\\u01b0\\u1eddng d\\u1eabn nhanh\"}}', 2, 'active', 1, 1, '2023-04-06 08:11:43', '2023-08-11 13:50:50'),
(103, 24, 'Contact', NULL, '/contact', NULL, NULL, '{\"target\":\"_self\",\"name\":{\"vi\":\"Li\\u00ean h\\u1ec7\",\"en\":\"Contact\"}}', 5, 'active', 1, 1, '2023-08-02 07:07:29', '2023-08-11 15:33:54'),
(104, 26, 'Black Pearl', NULL, '/black-pearl', NULL, NULL, '{\"target\":\"_self\",\"name\":{\"vi\":\"Black Pearl\"}}', 1, 'active', 1, 1, '2023-08-02 07:09:36', '2023-08-11 15:33:54'),
(105, 26, 'Origani', NULL, '/origani', NULL, NULL, '{\"target\":\"_self\",\"name\":{\"en\":\"Origani\",\"vi\":\"Origani\"}}', 2, 'active', 1, 1, '2023-08-02 07:09:52', '2023-08-11 15:33:54'),
(106, 26, 'Opacha London', NULL, '/opatra-london', NULL, NULL, '{\"target\":\"_self\",\"name\":{\"en\":\"Opacha London\",\"vi\":\"Opacha London\"}}', 3, 'active', 1, 1, '2023-08-02 07:10:04', '2023-08-11 15:33:54'),
(107, 26, 'Zero  gravity', NULL, '/zero-gravity', NULL, NULL, '{\"target\":\"_self\",\"name\":{\"en\":\"Zero  gravity\",\"vi\":\"Zero  gravity\"}}', 4, 'active', 1, 1, '2023-08-02 07:10:33', '2023-08-11 15:33:54'),
(108, 27, 'Nâng cơ thủy liệu chuyên sâu', NULL, '/nang-co/nang-co-thuy-lieu-chuyen-sau', NULL, NULL, '{\"target\":\"_self\",\"image\":null,\"name\":{\"vi\":\"N\\u00e2ng c\\u01a1 th\\u1ee7y li\\u1ec7u chuy\\u00ean s\\u00e2u\",\"en\":\"Hidra Lifting Facial\"}}', 1, 'active', 1, 1, '2023-08-02 07:11:31', '2023-08-12 02:01:17'),
(109, 27, 'Nâng cơ tinh thể', NULL, '/nang-co/nang-co-tinh-the', NULL, NULL, '{\"target\":\"_self\",\"image\":null,\"name\":{\"en\":\"Lifting Crystal Facial\",\"vi\":\"N\\u00e2ng c\\u01a1 tinh th\\u1ec3\"}}', 2, 'active', 1, 1, '2023-08-02 07:11:47', '2023-08-12 02:01:26'),
(110, 27, 'Làm trắng da thủy liệu', NULL, '/thuy-lieu/lam-trang-da-bang-phuong-phap-thuy-lieu', NULL, NULL, '{\"target\":\"_self\",\"image\":null,\"name\":{\"en\":\"Hydra Whitening Facial\",\"vi\":\"L\\u00e0m tr\\u1eafng da th\\u1ee7y li\\u1ec7u\"}}', 4, 'active', 1, 1, '2023-08-02 07:11:59', '2023-08-12 02:01:50'),
(111, 27, 'Trị mụn thủy liệu', NULL, '/thuy-lieu/tri-mun-bang-phuong-phap-thuy-lieu', NULL, NULL, '{\"target\":\"_self\",\"image\":null,\"name\":{\"vi\":\"Tr\\u1ecb m\\u1ee5n th\\u1ee7y li\\u1ec7u\",\"en\":\"Hydra Acne Facial\"}}', 5, 'active', 1, 1, '2023-08-02 07:12:28', '2023-08-12 02:02:04'),
(112, 27, 'LED nâng cơ chuyên sâu', NULL, '/nang-co/led-nang-co-chuyen-sau', NULL, NULL, '{\"target\":\"_self\",\"image\":null,\"name\":{\"vi\":\"LED n\\u00e2ng c\\u01a1 chuy\\u00ean s\\u00e2u\",\"en\":\"LED Deep Lifting\"}}', 3, 'active', 1, 1, '2023-08-02 07:12:53', '2023-08-12 02:02:16'),
(113, 27, 'Mặt nạ vàng 24k', NULL, '/mat-na/mat-na-vang-24k', NULL, NULL, '{\"target\":\"_self\",\"image\":null,\"name\":{\"vi\":\"M\\u1eb7t n\\u1ea1 v\\u00e0ng 24k\",\"en\":\"24k Gold Facial\"}}', 6, 'active', 1, 1, '2023-08-02 07:13:29', '2023-08-12 02:02:27'),
(114, NULL, 'Liên kết hữu ích', NULL, NULL, 'footer', NULL, '{\"image\":null,\"name\":{\"en\":\"Useful Links\",\"vi\":\"Li\\u00ean k\\u1ebft h\\u1eefu \\u00edch\"}}', 3, 'active', 1, 1, '2023-08-02 07:37:23', '2023-08-13 15:38:55'),
(117, 24, 'EN', NULL, '/language/en', NULL, NULL, '{\"target\":\"_self\",\"image\":\"\\/data\\/cms-image\\/icon\\/img_en.png\",\"name\":{\"en\":\"EN\",\"vi\":\"EN\"}}', 6, 'active', 1, 1, '2023-08-07 07:14:48', '2023-08-11 15:33:54'),
(118, 24, 'VN', NULL, '/language/vi', NULL, NULL, '{\"target\":\"_self\",\"image\":\"\\/data\\/cms-image\\/icon\\/img_vn.png\",\"name\":{\"en\":\"VN\",\"vi\":\"VN\"}}', 7, 'active', 1, 1, '2023-08-07 07:15:09', '2023-08-11 15:33:54'),
(119, 98, 'Origani', NULL, '/origani', NULL, NULL, '{\"target\":\"_self\",\"image\":null,\"name\":{\"vi\":\"Origani\"}}', 1, 'active', 1, 1, '2023-08-11 13:51:58', '2023-08-14 01:17:31'),
(120, 98, 'Black Pearl', NULL, '/black-pearl', NULL, NULL, '{\"target\":\"_self\",\"image\":null,\"name\":{\"vi\":\"Black Pearl\"}}', 1, 'active', 1, 1, '2023-08-11 13:51:58', '2023-08-14 01:17:45'),
(130, 114, 'Chính sách Cookie', NULL, '/customer-rights', NULL, NULL, '{\"target\":\"_self\",\"image\":null,\"name\":{\"vi\":\"Ch\\u00ednh s\\u00e1ch Cookie\",\"en\":\"Cookie Policy\"}}', 1, 'active', 1, 1, '2023-08-13 15:46:42', '2023-08-14 07:12:18'),
(131, 114, 'Chính sách bảo mật', NULL, '/privacy-policy', NULL, NULL, '{\"target\":\"_self\",\"image\":null,\"name\":{\"vi\":\"Ch\\u00ednh s\\u00e1ch b\\u1ea3o m\\u1eadt\",\"en\":\"Privacy Policy\"}}', 2, 'active', 1, 1, '2023-08-13 15:46:42', '2023-08-14 07:12:07'),
(132, 98, 'Zero Gravity', NULL, 'zero-gravity', NULL, NULL, '{\"name\":{\"vi\":\"Zero Gravity\"}}', 2, 'active', 1, 1, '2023-08-14 01:17:52', '2023-08-14 01:17:52'),
(133, 98, 'Opatra London', NULL, 'opatra-london', NULL, NULL, '{\"name\":{\"vi\":\"Opatra London\"}}', 3, 'active', 1, 1, '2023-08-14 01:18:14', '2023-08-14 01:18:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_modules`
--

CREATE TABLE `tb_modules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module_code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_modules`
--

INSERT INTO `tb_modules` (`id`, `module_code`, `name`, `description`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'admins', 'Quản lý người dùng', 'Chức năng quản lý người dùng hệ thống', 100, 'active', 1, 1, '2021-10-01 12:35:15', '2022-08-08 06:47:54'),
(5, 'admin_menus', 'Quản lý Menu Admin', NULL, 102, 'active', 1, 1, '2022-03-04 05:19:37', '2022-08-08 06:47:53'),
(6, 'roles', 'Quản lý nhóm quyền', NULL, 101, 'active', 1, 1, '2022-03-04 05:20:18', '2022-08-08 06:47:54'),
(7, 'menus', 'Quản lý Menu Website Public', NULL, 94, 'active', 1, 1, '2022-03-04 05:20:46', '2022-08-08 06:49:15'),
(8, 'block_contents', 'Quản lý Khối nội dung', NULL, 96, 'active', 1, 1, '2022-03-04 05:21:07', '2022-08-08 06:49:14'),
(9, 'pages', 'Quản lý Pages - Trang', NULL, 95, 'active', 1, 1, '2022-03-04 05:21:19', '2022-08-08 06:49:15'),
(10, 'cms_taxonomys', 'Quản lý danh mục - thể loại', NULL, 3, 'active', 1, 1, '2022-03-04 05:21:40', '2022-03-04 05:29:06'),
(11, 'cms_posts', 'Quản lý bài viết', NULL, 4, 'active', 1, 1, '2022-03-04 05:22:17', '2022-03-04 05:29:11'),
(13, 'cms_products', 'Quản lý khóa học', NULL, 6, 'active', 1, 1, '2022-03-04 05:22:52', '2023-07-08 08:01:06'),
(16, 'web_information', 'Quản lý thông tin website', NULL, 91, 'active', 1, 1, '2022-03-04 05:24:37', '2022-08-08 06:49:17'),
(17, 'web_image', 'Quản lý hình ảnh hệ thống', NULL, 92, 'active', 1, 1, '2022-03-04 05:25:38', '2022-08-08 06:49:17'),
(18, 'web_social', 'Quản lý liên kết MXH', NULL, 90, 'active', 1, 1, '2022-03-04 05:25:53', '2022-08-08 06:49:18'),
(19, 'contacts', 'Quản lý liên hệ', NULL, 1, 'active', 1, 1, '2022-03-04 05:26:39', '2022-08-08 06:44:47'),
(20, 'call_request', 'Quản lý tư vấn', NULL, 5, 'active', 1, 1, '2022-08-08 06:42:19', '2023-07-08 07:58:43'),
(21, 'web_source', 'Quản lý mã nhúng CSS - JS', NULL, 93, 'active', 1, 1, '2022-08-08 06:46:02', '2022-08-08 06:49:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_module_functions`
--

CREATE TABLE `tb_module_functions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module_id` bigint(20) UNSIGNED NOT NULL,
  `function_code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_module_functions`
--

INSERT INTO `tb_module_functions` (`id`, `module_id`, `function_code`, `name`, `description`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(7, 19, 'contacts.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 05:32:15', '2022-03-04 05:35:40'),
(8, 19, 'contacts.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 05:35:45', '2022-03-04 05:35:45'),
(9, 19, 'contacts.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 05:35:48', '2022-03-04 05:35:48'),
(10, 19, 'contacts.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 05:35:51', '2022-03-04 05:35:51'),
(11, 19, 'contacts.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 05:35:55', '2022-03-04 05:35:55'),
(12, 19, 'contacts.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 05:35:58', '2022-03-04 05:35:58'),
(27, 1, 'admins.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(28, 1, 'admins.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(29, 1, 'admins.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(30, 1, 'admins.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(31, 1, 'admins.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(32, 1, 'admins.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(39, 5, 'admin_menus.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(40, 5, 'admin_menus.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(41, 5, 'admin_menus.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(42, 5, 'admin_menus.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(43, 5, 'admin_menus.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(44, 5, 'admin_menus.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(45, 6, 'roles.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(46, 6, 'roles.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(47, 6, 'roles.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(48, 6, 'roles.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(49, 6, 'roles.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(50, 6, 'roles.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(51, 7, 'menus.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(52, 7, 'menus.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(53, 7, 'menus.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(54, 7, 'menus.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(55, 7, 'menus.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(56, 7, 'menus.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(57, 8, 'block_contents.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(58, 8, 'block_contents.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(59, 8, 'block_contents.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(60, 8, 'block_contents.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(61, 8, 'block_contents.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(62, 8, 'block_contents.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(63, 9, 'pages.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(64, 9, 'pages.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(65, 9, 'pages.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(66, 9, 'pages.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(67, 9, 'pages.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(68, 9, 'pages.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(75, 10, 'cms_taxonomys.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(76, 10, 'cms_taxonomys.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(77, 10, 'cms_taxonomys.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(78, 10, 'cms_taxonomys.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(79, 10, 'cms_taxonomys.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(80, 10, 'cms_taxonomys.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(81, 11, 'cms_posts.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(82, 11, 'cms_posts.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(83, 11, 'cms_posts.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(84, 11, 'cms_posts.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(85, 11, 'cms_posts.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(86, 11, 'cms_posts.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(87, 12, 'cms_services.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(88, 12, 'cms_services.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(89, 12, 'cms_services.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(90, 12, 'cms_services.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(91, 12, 'cms_services.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(92, 12, 'cms_services.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(93, 13, 'cms_products.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-11-06 09:15:42'),
(94, 13, 'cms_products.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-11-06 09:15:42'),
(95, 13, 'cms_products.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-11-06 09:15:41'),
(96, 13, 'cms_products.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-11-06 09:15:41'),
(97, 13, 'cms_products.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-11-06 09:15:40'),
(98, 13, 'cms_products.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-11-06 09:15:40'),
(117, 16, 'web.information', 'Xem thông tin website', NULL, 1, 'active', 1, 1, '2022-03-04 07:24:06', '2022-03-04 07:24:06'),
(118, 16, 'web.information.update', 'Cập nhật thông tin website', NULL, 2, 'active', 1, 1, '2022-03-04 07:24:24', '2022-03-04 07:24:24'),
(119, 17, 'web.image', 'Xem hình ảnh hệ thống', NULL, 1, 'active', 1, 1, '2022-03-04 07:25:11', '2022-03-04 07:25:11'),
(120, 17, 'web.image.update', 'Cập nhật hình ảnh hệ thống', NULL, 2, 'active', 1, 1, '2022-03-04 07:25:34', '2022-03-04 07:25:34'),
(121, 18, 'web.social', 'Xem liên kết MXH', NULL, 1, 'active', 1, 1, '2022-03-04 07:26:03', '2022-03-04 07:26:03'),
(122, 18, 'web.social.update', 'Cập nhật liên kết MXH', NULL, 2, 'active', 1, 1, '2022-03-04 07:26:23', '2022-03-04 07:26:23'),
(123, 20, 'call_request.destroy', 'Xóa', NULL, NULL, 'active', 1, 1, '2022-08-08 06:44:30', '2022-08-08 06:44:30'),
(124, 20, 'call_request.update', 'Sửa thông tin (Lưu thông tin)', NULL, NULL, 'active', 1, 1, '2022-08-08 06:44:30', '2022-08-08 06:44:30'),
(125, 20, 'call_request.show', 'Sửa thông tin (Form nhập)', NULL, NULL, 'active', 1, 1, '2022-08-08 06:44:31', '2022-08-08 06:44:31'),
(126, 20, 'call_request.index', 'Xem danh sách', NULL, NULL, 'active', 1, 1, '2022-08-08 06:44:31', '2022-08-08 06:44:31'),
(127, 21, 'web.source.update', 'Cập nhật mã', NULL, NULL, 'active', 1, 1, '2022-08-08 06:46:40', '2022-08-08 06:46:40'),
(128, 21, 'web.source', 'Xem chi tiết mã', NULL, NULL, 'active', 1, 1, '2022-08-08 06:46:40', '2022-08-08 06:46:40'),
(129, 22, 'order_services.destroy', 'Xóa', NULL, NULL, 'active', 1, 1, '2022-08-08 06:51:30', '2022-08-08 06:51:30'),
(130, 22, 'order_services.update', 'Sửa thông tin (Lưu thông tin)', NULL, NULL, 'active', 1, 1, '2022-08-08 06:51:30', '2022-08-08 06:51:30'),
(131, 22, 'order_services.edit', 'Sửa thông tin (Form nhập)', NULL, NULL, 'active', 1, 1, '2022-08-08 06:51:31', '2022-08-08 06:51:31'),
(132, 22, 'order_services.index', 'Xem danh sách', NULL, NULL, 'active', 1, 1, '2022-08-08 06:51:31', '2022-08-08 06:51:31'),
(133, 23, 'order_products.edit', 'Sửa thông tin (Form nhập)', NULL, 1, 'active', 1, 1, '2023-02-09 10:51:44', '2023-02-09 10:53:20'),
(134, 23, 'order_products.index', 'Xem danh sách', NULL, 2, 'active', 1, 1, '2023-02-09 10:52:07', '2023-02-09 10:53:33'),
(135, 23, 'order_products.update', 'Sửa thông tin (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2023-02-09 10:52:34', '2023-02-09 10:53:40'),
(136, 23, 'order_products.destroy', 'Xóa', NULL, 4, 'active', 1, 1, '2023-02-09 10:52:58', '2023-02-09 10:53:47'),
(137, 24, 'reviews.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2023-02-15 04:43:28', '2023-02-15 04:43:28'),
(139, 24, 'reviews.edit', 'Sửa thông tin (Form nhập)', NULL, 2, 'active', 1, 1, '2023-02-15 04:45:50', '2023-02-15 04:45:50'),
(140, 24, 'reviews.update', 'Sửa thông tin (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2023-02-15 04:45:58', '2023-02-15 04:45:58'),
(141, 24, 'reviews.destroy', 'Xóa', NULL, 4, 'active', 1, 1, '2023-02-15 04:46:17', '2023-02-15 04:46:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_options`
--

CREATE TABLE `tb_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(255) NOT NULL,
  `option_value` longtext NOT NULL,
  `description` text DEFAULT NULL,
  `is_system_param` tinyint(1) DEFAULT 1,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_options`
--

INSERT INTO `tb_options` (`id`, `option_name`, `option_value`, `description`, `is_system_param`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(2, 'information', '{\"site_name\":\"DIVINE BEAUTY\",\"brief\":null,\"phone\":\"024.730.322.25\",\"hotline\":\"024.730.322.25\",\"email\":\"divinebeautycskh@divinebeauty.vn\",\"address\":\"Hai Ngan Building, No. 9a Thanh Liet, Thanh Tri, Hanoi\",\"seo_title\":\"DIVINE BEAUTY\",\"seo_keyword\":\"DIVINE BEAUTY is leading aesthetics company aiming at revolutionizing aesthetic procedures in Greece\",\"seo_description\":\"DIVINE BEAUTY is leading aesthetics company aiming at revolutionizing aesthetic procedures in Greece\",\"send_email\":\"mcitwind@gmail.com\",\"pass_email\":\"njlmkgwxgzykqngq\"}', 'Các dữ liệu cấu trúc liên quan đến thông tin liên hệ của hệ thống website', 0, 1, 1, '2021-10-02 05:06:00', '2023-08-19 04:25:44'),
(5, 'image', '{\"logo_header\":\"\\/data\\/cms-image\\/Logo\\/logo.png\",\"logo_footer\":\"\\/data\\/cms-image\\/Logo\\/logo.png\",\"favicon\":\"\\/data\\/cms-image\\/Logo\\/logo_cropped_1691746467.png\",\"background_breadcrumbs\":\"\\/data\\/cms-image\\/Logo\\/z4552294619221_ba613b424af3f7eea11217232733636a.jpg\",\"seo_og_image\":\"\\/data\\/cms-image\\/Logo\\/z4552294619221_ba613b424af3f7eea11217232733636a.jpg\",\"image_body\":\"\\/data\\/cms-image\\/Images\\/bg_body.png\"}', 'Danh sách các hình ảnh cấu hình trên hệ thống tại các vị trí', 0, 1, 1, '2021-10-11 09:22:56', '2023-08-11 09:35:56'),
(6, 'social', '{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"youtube\":null,\"instagram\":null,\"tiktok\":null,\"call_now\":\"024.730.322.25\",\"zalo\":\"#\"}', 'Danh sách các Social network của hệ thống', 0, 1, 1, '2022-02-14 10:35:40', '2023-08-15 09:06:49'),
(7, 'page', '{\r\n\"frontend.home\":  1\r\n}', NULL, 0, 1, 1, '2022-05-26 11:03:52', '2022-06-09 04:03:39'),
(8, 'source_code', '{\"header\":null,\"footer\":null,\"map\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d3725.6024309259406!2d105.81727927395082!3d20.968475180665802!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135acfc8c889237%3A0xfa156a95a9c71004!2zVMOyYSBOaMOgIEjhuqNpIE5nw6Ju!5e0!3m2!1svi!2s!4v1691945118194!5m2!1svi!2s\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\"><\\/iframe>\"}', NULL, 0, 1, 1, '2022-06-07 02:24:11', '2023-08-13 16:45:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_orders`
--

CREATE TABLE `tb_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_type` varchar(255) NOT NULL DEFAULT 'product',
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `customer_note` text DEFAULT NULL,
  `admin_note` text DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `status` varchar(255) NOT NULL DEFAULT 'new',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_orders`
--

INSERT INTO `tb_orders` (`id`, `is_type`, `customer_id`, `name`, `email`, `phone`, `address`, `product_id`, `customer_note`, `admin_note`, `json_params`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'service', NULL, 'Quản lý đăng ký sự kiện', 'thangnh.edu@gmail.com', '0912 568 999', NULL, NULL, NULL, NULL, NULL, 'new', NULL, NULL, '2022-10-31 09:46:37', '2022-10-31 09:46:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_order_details`
--

CREATE TABLE `tb_order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` double(20,2) DEFAULT NULL,
  `discount` double(20,2) DEFAULT NULL,
  `customer_note` text DEFAULT NULL,
  `admin_note` text DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `status` varchar(255) DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_order_details`
--

INSERT INTO `tb_order_details` (`id`, `order_id`, `item_id`, `quantity`, `price`, `discount`, `customer_note`, `admin_note`, `json_params`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 1, 44, 1, 5000000.00, NULL, NULL, NULL, '{\"post_type\":\"product\",\"post_link\":\"http:\\/\\/fhmvn.test\\/kho-giao-dien\\/ban-hang\\/mau-website-ban-hang-01-44.html\"}', NULL, NULL, NULL, '2022-10-31 09:46:38', '2022-10-31 09:46:38'),
(2, 2, 44, 1, 5000000.00, NULL, NULL, NULL, '{\"post_type\":\"product\",\"post_link\":\"http:\\/\\/fhmvn.test\\/kho-giao-dien\\/ban-hang\\/mau-website-ban-hang-01-44.html\"}', NULL, NULL, NULL, '2022-10-31 10:02:12', '2022-10-31 10:02:12'),
(7, 5, 54, 2, 21.49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 5, 57, 1, 12.49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 10, 54, 1, 21.49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 11, 61, 1, 21.49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 15, 147, 3, 1059000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_pages`
--

CREATE TABLE `tb_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `keyword` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `route_name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_page` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_pages`
--

INSERT INTO `tb_pages` (`id`, `name`, `title`, `keyword`, `description`, `content`, `route_name`, `alias`, `json_params`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `is_page`) VALUES
(1, 'Trang chủ', NULL, NULL, NULL, NULL, 'frontend.home', 'home', '{\"og_image\":null,\"template\":\"home.primary\",\"block_content\":[74,413,420,479,439,424,428,444,74,413,420,479,439,424,428,444,74,413,420,479,439,424,428,444,74,413,420,479,439,424,428,444],\"name\":{\"vi\":\"Trang ch\\u1ee7\",\"en\":\"Home\"},\"title\":{\"vi\":null,\"en\":null},\"description\":{\"vi\":null,\"en\":null},\"content\":{\"vi\":null,\"en\":null}}', 1, 'active', 1, 1, '2022-03-23 09:35:33', '2023-08-11 15:04:43', 1),
(33, 'Giới thiệu', 'Giới thiệu', NULL, 'Divine Beauty là công ty thẩm mỹ và sắc đẹp hàng đầu trong cuộc cách mạng sắc đẹp tại Việt Nam.', NULL, 'frontend.aboutus', 'about-us', '{\"og_image\":\"\\/data\\/cms-image\\/Images\\/4V7A7439.webp\",\"template\":\"aboutus.primary\",\"block_content\":[94,448,453,94,448,453,94,448,453,94,448,453,94,448,453,94,448,453],\"name\":{\"en\":\"About Us\",\"vi\":\"Gi\\u1edbi thi\\u1ec7u\"},\"title\":{\"en\":\"About Us\",\"vi\":\"Gi\\u1edbi thi\\u1ec7u\"},\"description\":{\"en\":\"Divine Beauty, is a leading aesthetics company revolutionizing treatment in Vietnam.\",\"vi\":\"Divine Beauty l\\u00e0 c\\u00f4ng ty th\\u1ea9m m\\u1ef9 v\\u00e0 s\\u1eafc \\u0111\\u1eb9p h\\u00e0ng \\u0111\\u1ea7u trong cu\\u1ed9c c\\u00e1ch m\\u1ea1ng s\\u1eafc \\u0111\\u1eb9p t\\u1ea1i Vi\\u1ec7t Nam.\"},\"content\":{\"en\":null,\"vi\":null}}', 2, 'active', 1, 1, '2023-02-03 07:08:31', '2023-08-11 15:06:29', 1),
(38, 'Danh mục', 'Danh mục', NULL, NULL, NULL, 'frontend.cms.taxonomy', 'danh-muc', '{\"og_image\":null,\"template\":\"post.default\",\"block_content\":[94,453]}', 99, 'active', 1, 1, '2023-04-10 10:24:06', '2023-08-09 08:07:30', 1),
(39, 'Chi tiết', NULL, NULL, NULL, NULL, 'frontend.cms.detail', 'chi-tiet', '{\"og_image\":null,\"template\":\"post.detail\",\"block_content\":[94,475]}', 99, 'active', 1, 1, '2023-04-10 10:24:29', '2023-08-10 15:53:40', 1),
(47, 'Liên kết', 'Liên kết', NULL, NULL, NULL, 'frontend.page', 'lien-ket', '{\"og_image\":null,\"template\":\"page.default\",\"block_content\":[403,407,412]}', 4, 'delete', 1, 1, '2023-07-06 02:58:35', '2023-08-08 03:10:35', 1),
(48, 'Liên hệ', 'Liên hệ', NULL, 'Hãy liên lạc và cho chúng tôi biết làm thế nào chúng ta có thể giúp đỡ.', NULL, 'frontend.contact', 'contact', '{\"og_image\":\"\\/data\\/cms-image\\/Images\\/4V7A7500.webp\",\"template\":\"contact.default\",\"block_content\":[94,455,459,94,455,459,94,455,459,94,455,459],\"name\":{\"en\":\"Contact\",\"vi\":\"Li\\u00ean h\\u1ec7\"},\"title\":{\"en\":\"Contact\",\"vi\":\"Li\\u00ean h\\u1ec7\"},\"description\":{\"en\":\"Get in touch and let us know how we can help.\",\"vi\":\"H\\u00e3y li\\u00ean l\\u1ea1c v\\u00e0 cho ch\\u00fang t\\u00f4i bi\\u1ebft l\\u00e0m th\\u1ebf n\\u00e0o ch\\u00fang ta c\\u00f3 th\\u1ec3 gi\\u00fap \\u0111\\u1ee1.\"},\"content\":{\"en\":null,\"vi\":null}}', 3, 'active', 1, 1, '2023-07-06 03:02:54', '2023-08-13 16:20:11', 1),
(49, 'Stores', 'Cửa hàng của chúng tôi', NULL, 'Divine Beauty là công ty thẩm mỹ và sắc đẹp hàng đầu trong cuộc cách mạng sắc đẹp tại Việt Nam.', NULL, 'frontend.page', 'store', '{\"og_image\":\"\\/data\\/cms-image\\/Images\\/640248ad810652580b17.jpg\",\"template\":\"page.default\",\"block_content\":[94,460,461,94,460,461,94,460,461,94,460,461,94,460,461,94,460,461,94,460,461],\"name\":{\"en\":\"Stores\",\"vi\":\"Stores\"},\"title\":{\"en\":\"Our Stores\",\"vi\":\"C\\u1eeda h\\u00e0ng c\\u1ee7a ch\\u00fang t\\u00f4i\"},\"description\":{\"en\":\"Divine Beauty, is a leading aesthetics company revolutionizing treatment in Vietnam.\",\"vi\":\"Divine Beauty l\\u00e0 c\\u00f4ng ty th\\u1ea9m m\\u1ef9 v\\u00e0 s\\u1eafc \\u0111\\u1eb9p h\\u00e0ng \\u0111\\u1ea7u trong cu\\u1ed9c c\\u00e1ch m\\u1ea1ng s\\u1eafc \\u0111\\u1eb9p t\\u1ea1i Vi\\u1ec7t Nam.\"},\"content\":{\"en\":null,\"vi\":null}}', 4, 'active', 1, 1, '2023-08-08 03:10:10', '2023-08-14 03:54:50', 1),
(50, 'test', 'test', NULL, NULL, 'abc dfgb dfgb xcf', 'frontend.page', 'test', '{\"og_image\":null,\"template\":\"page.default\",\"block_content\":[94],\"name\":{\"vi\":\"test\"},\"title\":{\"vi\":\"test\"},\"description\":{\"vi\":null},\"content\":{\"vi\":\"abc dfgb dfgb xcf\"}}', NULL, 'delete', 1, 1, '2023-08-14 06:47:34', '2023-08-14 07:10:57', 1),
(51, 'Chính sách bảo mật', 'Chính sách bảo mật', NULL, NULL, 'Trang web Divine Beauty thuộc sở hữu của Công ty Divine Beauty, chủ sở hữu các thông tin cá nhân của khách hàng. Chúng tôi đã áp dụng chính sách bảo mật này, xác định việc xử lý thông tin được thu thập bởi Divine Beauty, cũng như lý do thu thập một số dữ liệu cá nhân của khách hàng. Do đó, khách hàng hãy đọc chính sách bảo mật này trước khi sử dụng trang web Divine Beauty. Chúng tôi xử lý thông tin cá nhân của khách hàng và cam kết bảo mật và bảo vệ dữ liệu của khách hàng một cách an toàn.', 'frontend.page', 'privacy-policy', '{\"og_image\":\"\\/data\\/cms-image\\/Images\\/4V7A7500.webp\",\"template\":\"page.default\",\"block_content\":[94,94,94,94,94,94,94,94,94],\"name\":{\"vi\":\"Ch\\u00ednh s\\u00e1ch b\\u1ea3o m\\u1eadt\",\"en\":\"Privacy policy\"},\"title\":{\"vi\":\"Ch\\u00ednh s\\u00e1ch b\\u1ea3o m\\u1eadt\",\"en\":\"Privacy policy\"},\"description\":{\"vi\":null,\"en\":null},\"content\":{\"vi\":\"Trang web Divine Beauty thu\\u1ed9c s\\u1edf h\\u1eefu c\\u1ee7a C\\u00f4ng ty Divine Beauty, ch\\u1ee7 s\\u1edf h\\u1eefu c\\u00e1c th\\u00f4ng tin c\\u00e1 nh\\u00e2n c\\u1ee7a kh\\u00e1ch h\\u00e0ng. Ch\\u00fang t\\u00f4i \\u0111\\u00e3 \\u00e1p d\\u1ee5ng ch\\u00ednh s\\u00e1ch b\\u1ea3o m\\u1eadt n\\u00e0y, x\\u00e1c \\u0111\\u1ecbnh vi\\u1ec7c x\\u1eed l\\u00fd th\\u00f4ng tin \\u0111\\u01b0\\u1ee3c thu th\\u1eadp b\\u1edfi Divine Beauty, c\\u0169ng nh\\u01b0 l\\u00fd do thu th\\u1eadp m\\u1ed9t s\\u1ed1 d\\u1eef li\\u1ec7u c\\u00e1 nh\\u00e2n c\\u1ee7a kh\\u00e1ch h\\u00e0ng. Do \\u0111\\u00f3, kh\\u00e1ch h\\u00e0ng h\\u00e3y \\u0111\\u1ecdc ch\\u00ednh s\\u00e1ch b\\u1ea3o m\\u1eadt n\\u00e0y tr\\u01b0\\u1edbc khi s\\u1eed d\\u1ee5ng trang web Divine Beauty. Ch\\u00fang t\\u00f4i x\\u1eed l\\u00fd th\\u00f4ng tin c\\u00e1 nh\\u00e2n c\\u1ee7a kh\\u00e1ch h\\u00e0ng v\\u00e0 cam k\\u1ebft b\\u1ea3o m\\u1eadt v\\u00e0 b\\u1ea3o v\\u1ec7 d\\u1eef li\\u1ec7u c\\u1ee7a kh\\u00e1ch h\\u00e0ng m\\u1ed9t c\\u00e1ch an to\\u00e0n.\",\"en\":\"The Divine Beauty site is owned by Divine Beauty Company, owner of your personal data.<br \\/>\\r\\nWe have adopted this privacy policy, which determines the treatment of the information collected by Divine Beauty, as well as the reasons for collecting certain personal data about you. Therefore, you must read this reservation policy before using the Divine Beauty site.<br \\/>\\r\\nWe process your personal data and guarantee the confidentiality and security of the same.\"}}', 5, 'active', 1, 1, '2023-08-14 06:47:34', '2023-08-14 07:12:55', 1),
(52, 'Chính sách khách hàng', 'Chính sách khách hàng', NULL, NULL, '<p>&nbsp;</p>\r\n\r\n<p style=\"line-height:1.38; margin-top:16px; margin-bottom:16px\"><span style=\"font-size:12pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Divine Beauty Center cam kết bảo mật thông tin cá nhân của khách hàng. Bằng việc sử dụng các biện pháp thích hợp, thông tin khách hàng cung cấp tại website (...) trong quá trình tìm hiểu dịch vụ hoàn toàn được bảo mật và ngăn chặn khỏi sự truy cập trái phép.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"line-height:1.38; text-align:justify; background-color:#ffffff; padding:0pt 0pt 8pt 0pt\"><span style=\"font-size:12pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Dẫu vậy, chúng tôi không đảm bảo ngăn chặn được tất cả các truy cập trái phép, đặc biệt là nằm ngoài khả năng kiểm soát. Divine Beauty Center sẽ không chịu trách nhiệm dưới bất kỳ hình thức nào như khiếu nại, tranh chấp, thiệt hại phát sinh liên quan đến truy cập trái phép này.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"line-height:1.38; text-align:justify; background-color:#ffffff; padding:0pt 0pt 8pt 0pt\"><span style=\"font-size:12pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Quý khách hàng khi tìm hiểu các dịch vụ trên website được khuyến nghị nắm rõ điều khoản về bảo mật để đảm bảo quyền lợi cho mình. Khi đăng ký thông tin cá nhân tại website, đồng nghĩa với việc quý khách hàng đã đọc và hiểu chính sách bảo mật của Divine Beauty Center.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"line-height:1.38; text-align:justify; background-color:#ffffff; padding:0pt 0pt 8pt 0pt\"><span style=\"font-size:12pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Dưới đây là các cam kết bảo mật thông tin khách hàng của Divine Beauty Center theo đúng với quy định của pháp luật Việt Nam:</span></span></span></span></span></span></p>\r\n\r\n<h2 style=\"line-height:1.38; background-color:#ffffff; padding:0pt 0pt 7pt 0pt\"><span style=\"font-size:14.5pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#027774\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">1. Cam kết về thu thập thông tin khách hàng</span></span></span></span></span></span></h2>\r\n\r\n<p style=\"line-height:1.38; text-align:justify; background-color:#ffffff; padding:0pt 0pt 8pt 0pt\"><span style=\"font-size:12pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Divine Beauty Center cam kết không tiết lộ, không chia sẻ, trao đổi hay bán với thông tin của khách hàng thu thập trên (website) cho một bên thứ 3 nào khác. Những thông tin cá nhân của quý khách hàng đăng ký tư vấn trên website được thu thập bao gồm:</span></span></span></span></span></span></p>\r\n\r\n<p style=\"line-height:1.38; text-align:justify; background-color:#ffffff; padding:0pt 0pt 8pt 0pt\"><span style=\"font-size:12pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">– Họ và tên</span></span></span></span></span></span></p>\r\n\r\n<p style=\"line-height:1.38; text-align:justify; background-color:#ffffff; padding:0pt 0pt 8pt 0pt\"><span style=\"font-size:12pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">– Email</span></span></span></span></span></span></p>\r\n\r\n<p style=\"line-height:1.38; text-align:justify; background-color:#ffffff; padding:0pt 0pt 8pt 0pt\"><span style=\"font-size:12pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">– Số điện thoại</span></span></span></span></span></span></p>\r\n\r\n<p style=\"line-height:1.38; text-align:justify; background-color:#ffffff; padding:0pt 0pt 8pt 0pt\"><span style=\"font-size:12pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Thông tin cá nhân của khách hàng Divine Beauty Center thu thập phục vụ cho việc thăm khám, điều trị các vấn đề liên quan đến sức khỏe, làm đẹp.</span></span></span></span></span></span></p>\r\n\r\n<h2 style=\"line-height:1.38; background-color:#ffffff; padding:0pt 0pt 7pt 0pt\"><span style=\"font-size:14.5pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#027774\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">2. Phạm vi sử dụng thông tin</span></span></span></span></span></span></h2>\r\n\r\n<p style=\"line-height:1.38; text-align:justify; background-color:#ffffff; padding:0pt 0pt 8pt 0pt\"><span style=\"font-size:12pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Những thông tin cá nhân khách hàng cung cấp và tình trạng sức khỏe trước, trong và sau khi điều trị được sử dụng trong nội bộ Divine Beauty Center. Việc cung cấp cho bên thứ 3 chỉ được phép khi có sự đồng ý của khách hàng.</span></span></span></span></span></span></p>\r\n\r\n<h2 style=\"line-height:1.38; background-color:#ffffff; padding:0pt 0pt 7pt 0pt\"><span style=\"font-size:14.5pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#027774\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">3. Thời gian lưu trữ thông tin</span></span></span></span></span></span></h2>\r\n\r\n<p style=\"line-height:1.38; text-align:justify; background-color:#ffffff; padding:0pt 0pt 8pt 0pt\"><span style=\"font-size:12pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Thông tin cá nhân của khách hàng sẽ được lưu trữ tại Divine Beauty Center cho đến khi có yêu cầu xóa bỏ từ khách hàng. Trường hợp truy cập vào website (...) , thông tin cá nhân chỉ lưu trữ trong vòng 60 ngày.</span></span></span></span></span></span></p>\r\n\r\n<h2 style=\"line-height:1.38; background-color:#ffffff; padding:0pt 0pt 7pt 0pt\"><span style=\"font-size:14.5pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#027774\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">4. Địa chỉ làm việc và quản lý thông tin cá nhân khách hàng</span></span></span></span></span></span></h2>\r\n\r\n<p style=\"line-height:1.38; text-align:justify; background-color:#ffffff; padding:0pt 0pt 8pt 0pt\"><span style=\"font-size:12pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Divine Beauty Center</span></span></span></span></span></span></p>\r\n\r\n<p style=\"line-height:1.38; background-color:#ffffff; padding:4pt 0pt 12pt 0pt\"><span style=\"font-size:12pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Hai Ngan Building, số 9a Thanh Liet, Thanh Tri, Hanoi</span></span></span></span></span></span></p>\r\n\r\n<h2 style=\"line-height:1.38; background-color:#ffffff; padding:0pt 0pt 7pt 0pt\"><span style=\"font-size:14.5pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#027774\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">5. Cách để khách hàng tiếp cận, chỉnh sửa dữ liệu cá nhân</span></span></span></span></span></span></h2>\r\n\r\n<p style=\"line-height:1.38; text-align:justify; background-color:#ffffff; padding:0pt 0pt 8pt 0pt\"><span style=\"font-size:12pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Khách hàng khi muốn cập nhật dữ liệu cá nhân có thể liên hệ qua số Hotline:</span></span></span></span></span></span></p>\r\n\r\n<p style=\"line-height:1.38; background-color:#ffffff; margin-bottom:16px; padding:4pt 0pt 0pt 0pt\"><span style=\"font-size:12pt; font-variant:normal; white-space:pre-wrap\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">CS: 024.730.322.25</span></span></span></span></span></span></p>', 'frontend.page', 'customer-rights', '{\"og_image\":\"\\/data\\/cms-image\\/Images\\/4V7A7500.webp\",\"template\":\"page.default\",\"block_content\":[94,94],\"name\":{\"vi\":\"Ch\\u00ednh s\\u00e1ch kh\\u00e1ch h\\u00e0ng\"},\"title\":{\"vi\":\"Ch\\u00ednh s\\u00e1ch kh\\u00e1ch h\\u00e0ng\"},\"description\":{\"vi\":null},\"content\":{\"vi\":\"<p>&nbsp;<\\/p>\\r\\n\\r\\n<p style=\\\"line-height:1.38; margin-top:16px; margin-bottom:16px\\\"><span style=\\\"font-size:12pt; font-variant:normal; white-space:pre-wrap\\\"><span style=\\\"font-family:Arial,sans-serif\\\"><span style=\\\"color:#000000\\\"><span style=\\\"font-weight:700\\\"><span style=\\\"font-style:normal\\\"><span style=\\\"text-decoration:none\\\">Divine Beauty Center cam k\\u1ebft b\\u1ea3o m\\u1eadt th\\u00f4ng tin c\\u00e1 nh\\u00e2n c\\u1ee7a kh\\u00e1ch h\\u00e0ng. B\\u1eb1ng vi\\u1ec7c s\\u1eed d\\u1ee5ng c\\u00e1c bi\\u1ec7n ph\\u00e1p th\\u00edch h\\u1ee3p, th\\u00f4ng tin kh\\u00e1ch h\\u00e0ng cung c\\u1ea5p t\\u1ea1i website (...) trong qu\\u00e1 tr\\u00ecnh t\\u00ecm hi\\u1ec3u d\\u1ecbch v\\u1ee5 ho\\u00e0n to\\u00e0n \\u0111\\u01b0\\u1ee3c b\\u1ea3o m\\u1eadt v\\u00e0 ng\\u0103n ch\\u1eb7n kh\\u1ecfi s\\u1ef1 truy c\\u1eadp tr\\u00e1i ph\\u00e9p.<\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/p>\\r\\n\\r\\n<p style=\\\"line-height:1.38; text-align:justify; background-color:#ffffff; padding:0pt 0pt 8pt 0pt\\\"><span style=\\\"font-size:12pt; font-variant:normal; white-space:pre-wrap\\\"><span style=\\\"font-family:Arial,sans-serif\\\"><span style=\\\"color:#000000\\\"><span style=\\\"font-weight:700\\\"><span style=\\\"font-style:normal\\\"><span style=\\\"text-decoration:none\\\">D\\u1eabu v\\u1eady, ch\\u00fang t\\u00f4i kh\\u00f4ng \\u0111\\u1ea3m b\\u1ea3o ng\\u0103n ch\\u1eb7n \\u0111\\u01b0\\u1ee3c t\\u1ea5t c\\u1ea3 c\\u00e1c truy c\\u1eadp tr\\u00e1i ph\\u00e9p, \\u0111\\u1eb7c bi\\u1ec7t l\\u00e0 n\\u1eb1m ngo\\u00e0i kh\\u1ea3 n\\u0103ng ki\\u1ec3m so\\u00e1t. Divine Beauty Center s\\u1ebd kh\\u00f4ng ch\\u1ecbu tr\\u00e1ch nhi\\u1ec7m d\\u01b0\\u1edbi b\\u1ea5t k\\u1ef3 h\\u00ecnh th\\u1ee9c n\\u00e0o nh\\u01b0 khi\\u1ebfu n\\u1ea1i, tranh ch\\u1ea5p, thi\\u1ec7t h\\u1ea1i ph\\u00e1t sinh li\\u00ean quan \\u0111\\u1ebfn truy c\\u1eadp tr\\u00e1i ph\\u00e9p n\\u00e0y.<\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/p>\\r\\n\\r\\n<p style=\\\"line-height:1.38; text-align:justify; background-color:#ffffff; padding:0pt 0pt 8pt 0pt\\\"><span style=\\\"font-size:12pt; font-variant:normal; white-space:pre-wrap\\\"><span style=\\\"font-family:Arial,sans-serif\\\"><span style=\\\"color:#000000\\\"><span style=\\\"font-weight:700\\\"><span style=\\\"font-style:normal\\\"><span style=\\\"text-decoration:none\\\">Qu\\u00fd kh\\u00e1ch h\\u00e0ng khi t\\u00ecm hi\\u1ec3u c\\u00e1c d\\u1ecbch v\\u1ee5 tr\\u00ean website \\u0111\\u01b0\\u1ee3c khuy\\u1ebfn ngh\\u1ecb n\\u1eafm r\\u00f5 \\u0111i\\u1ec1u kho\\u1ea3n v\\u1ec1 b\\u1ea3o m\\u1eadt \\u0111\\u1ec3 \\u0111\\u1ea3m b\\u1ea3o quy\\u1ec1n l\\u1ee3i cho m\\u00ecnh. Khi \\u0111\\u0103ng k\\u00fd th\\u00f4ng tin c\\u00e1 nh\\u00e2n t\\u1ea1i website, \\u0111\\u1ed3ng ngh\\u0129a v\\u1edbi vi\\u1ec7c qu\\u00fd kh\\u00e1ch h\\u00e0ng \\u0111\\u00e3 \\u0111\\u1ecdc v\\u00e0 hi\\u1ec3u ch\\u00ednh s\\u00e1ch b\\u1ea3o m\\u1eadt c\\u1ee7a Divine Beauty Center.<\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/p>\\r\\n\\r\\n<p style=\\\"line-height:1.38; text-align:justify; background-color:#ffffff; padding:0pt 0pt 8pt 0pt\\\"><span style=\\\"font-size:12pt; font-variant:normal; white-space:pre-wrap\\\"><span style=\\\"font-family:Arial,sans-serif\\\"><span style=\\\"color:#000000\\\"><span style=\\\"font-weight:700\\\"><span style=\\\"font-style:normal\\\"><span style=\\\"text-decoration:none\\\">D\\u01b0\\u1edbi \\u0111\\u00e2y l\\u00e0 c\\u00e1c cam k\\u1ebft b\\u1ea3o m\\u1eadt th\\u00f4ng tin kh\\u00e1ch h\\u00e0ng c\\u1ee7a Divine Beauty Center theo \\u0111\\u00fang v\\u1edbi quy \\u0111\\u1ecbnh c\\u1ee7a ph\\u00e1p lu\\u1eadt Vi\\u1ec7t Nam:<\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/p>\\r\\n\\r\\n<h2 style=\\\"line-height:1.38; background-color:#ffffff; padding:0pt 0pt 7pt 0pt\\\"><span style=\\\"font-size:14.5pt; font-variant:normal; white-space:pre-wrap\\\"><span style=\\\"font-family:Arial,sans-serif\\\"><span style=\\\"color:#027774\\\"><span style=\\\"font-weight:700\\\"><span style=\\\"font-style:normal\\\"><span style=\\\"text-decoration:none\\\">1. Cam k\\u1ebft v\\u1ec1 thu th\\u1eadp th\\u00f4ng tin kh\\u00e1ch h\\u00e0ng<\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/h2>\\r\\n\\r\\n<p style=\\\"line-height:1.38; text-align:justify; background-color:#ffffff; padding:0pt 0pt 8pt 0pt\\\"><span style=\\\"font-size:12pt; font-variant:normal; white-space:pre-wrap\\\"><span style=\\\"font-family:Arial,sans-serif\\\"><span style=\\\"color:#000000\\\"><span style=\\\"font-weight:700\\\"><span style=\\\"font-style:normal\\\"><span style=\\\"text-decoration:none\\\">Divine Beauty Center cam k\\u1ebft kh\\u00f4ng ti\\u1ebft l\\u1ed9, kh\\u00f4ng chia s\\u1ebb, trao \\u0111\\u1ed5i hay b\\u00e1n v\\u1edbi th\\u00f4ng tin c\\u1ee7a kh\\u00e1ch h\\u00e0ng thu th\\u1eadp tr\\u00ean (website) cho m\\u1ed9t b\\u00ean th\\u1ee9 3 n\\u00e0o kh\\u00e1c. Nh\\u1eefng th\\u00f4ng tin c\\u00e1 nh\\u00e2n c\\u1ee7a qu\\u00fd kh\\u00e1ch h\\u00e0ng \\u0111\\u0103ng k\\u00fd t\\u01b0 v\\u1ea5n tr\\u00ean website \\u0111\\u01b0\\u1ee3c thu th\\u1eadp bao g\\u1ed3m:<\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/p>\\r\\n\\r\\n<p style=\\\"line-height:1.38; text-align:justify; background-color:#ffffff; padding:0pt 0pt 8pt 0pt\\\"><span style=\\\"font-size:12pt; font-variant:normal; white-space:pre-wrap\\\"><span style=\\\"font-family:Arial,sans-serif\\\"><span style=\\\"color:#000000\\\"><span style=\\\"font-weight:700\\\"><span style=\\\"font-style:normal\\\"><span style=\\\"text-decoration:none\\\">\\u2013 H\\u1ecd v\\u00e0 t\\u00ean<\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/p>\\r\\n\\r\\n<p style=\\\"line-height:1.38; text-align:justify; background-color:#ffffff; padding:0pt 0pt 8pt 0pt\\\"><span style=\\\"font-size:12pt; font-variant:normal; white-space:pre-wrap\\\"><span style=\\\"font-family:Arial,sans-serif\\\"><span style=\\\"color:#000000\\\"><span style=\\\"font-weight:700\\\"><span style=\\\"font-style:normal\\\"><span style=\\\"text-decoration:none\\\">\\u2013 Email<\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/p>\\r\\n\\r\\n<p style=\\\"line-height:1.38; text-align:justify; background-color:#ffffff; padding:0pt 0pt 8pt 0pt\\\"><span style=\\\"font-size:12pt; font-variant:normal; white-space:pre-wrap\\\"><span style=\\\"font-family:Arial,sans-serif\\\"><span style=\\\"color:#000000\\\"><span style=\\\"font-weight:700\\\"><span style=\\\"font-style:normal\\\"><span style=\\\"text-decoration:none\\\">\\u2013 S\\u1ed1 \\u0111i\\u1ec7n tho\\u1ea1i<\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/p>\\r\\n\\r\\n<p style=\\\"line-height:1.38; text-align:justify; background-color:#ffffff; padding:0pt 0pt 8pt 0pt\\\"><span style=\\\"font-size:12pt; font-variant:normal; white-space:pre-wrap\\\"><span style=\\\"font-family:Arial,sans-serif\\\"><span style=\\\"color:#000000\\\"><span style=\\\"font-weight:700\\\"><span style=\\\"font-style:normal\\\"><span style=\\\"text-decoration:none\\\">Th\\u00f4ng tin c\\u00e1 nh\\u00e2n c\\u1ee7a kh\\u00e1ch h\\u00e0ng Divine Beauty Center thu th\\u1eadp ph\\u1ee5c v\\u1ee5 cho vi\\u1ec7c th\\u0103m kh\\u00e1m, \\u0111i\\u1ec1u tr\\u1ecb c\\u00e1c v\\u1ea5n \\u0111\\u1ec1 li\\u00ean quan \\u0111\\u1ebfn s\\u1ee9c kh\\u1ecfe, l\\u00e0m \\u0111\\u1eb9p.<\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/p>\\r\\n\\r\\n<h2 style=\\\"line-height:1.38; background-color:#ffffff; padding:0pt 0pt 7pt 0pt\\\"><span style=\\\"font-size:14.5pt; font-variant:normal; white-space:pre-wrap\\\"><span style=\\\"font-family:Arial,sans-serif\\\"><span style=\\\"color:#027774\\\"><span style=\\\"font-weight:700\\\"><span style=\\\"font-style:normal\\\"><span style=\\\"text-decoration:none\\\">2. Ph\\u1ea1m vi s\\u1eed d\\u1ee5ng th\\u00f4ng tin<\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/h2>\\r\\n\\r\\n<p style=\\\"line-height:1.38; text-align:justify; background-color:#ffffff; padding:0pt 0pt 8pt 0pt\\\"><span style=\\\"font-size:12pt; font-variant:normal; white-space:pre-wrap\\\"><span style=\\\"font-family:Arial,sans-serif\\\"><span style=\\\"color:#000000\\\"><span style=\\\"font-weight:700\\\"><span style=\\\"font-style:normal\\\"><span style=\\\"text-decoration:none\\\">Nh\\u1eefng th\\u00f4ng tin c\\u00e1 nh\\u00e2n kh\\u00e1ch h\\u00e0ng cung c\\u1ea5p v\\u00e0 t\\u00ecnh tr\\u1ea1ng s\\u1ee9c kh\\u1ecfe tr\\u01b0\\u1edbc, trong v\\u00e0 sau khi \\u0111i\\u1ec1u tr\\u1ecb \\u0111\\u01b0\\u1ee3c s\\u1eed d\\u1ee5ng trong n\\u1ed9i b\\u1ed9 Divine Beauty Center. Vi\\u1ec7c cung c\\u1ea5p cho b\\u00ean th\\u1ee9 3 ch\\u1ec9 \\u0111\\u01b0\\u1ee3c ph\\u00e9p khi c\\u00f3 s\\u1ef1 \\u0111\\u1ed3ng \\u00fd c\\u1ee7a kh\\u00e1ch h\\u00e0ng.<\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/p>\\r\\n\\r\\n<h2 style=\\\"line-height:1.38; background-color:#ffffff; padding:0pt 0pt 7pt 0pt\\\"><span style=\\\"font-size:14.5pt; font-variant:normal; white-space:pre-wrap\\\"><span style=\\\"font-family:Arial,sans-serif\\\"><span style=\\\"color:#027774\\\"><span style=\\\"font-weight:700\\\"><span style=\\\"font-style:normal\\\"><span style=\\\"text-decoration:none\\\">3. Th\\u1eddi gian l\\u01b0u tr\\u1eef th\\u00f4ng tin<\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/h2>\\r\\n\\r\\n<p style=\\\"line-height:1.38; text-align:justify; background-color:#ffffff; padding:0pt 0pt 8pt 0pt\\\"><span style=\\\"font-size:12pt; font-variant:normal; white-space:pre-wrap\\\"><span style=\\\"font-family:Arial,sans-serif\\\"><span style=\\\"color:#000000\\\"><span style=\\\"font-weight:700\\\"><span style=\\\"font-style:normal\\\"><span style=\\\"text-decoration:none\\\">Th\\u00f4ng tin c\\u00e1 nh\\u00e2n c\\u1ee7a kh\\u00e1ch h\\u00e0ng s\\u1ebd \\u0111\\u01b0\\u1ee3c l\\u01b0u tr\\u1eef t\\u1ea1i Divine Beauty Center cho \\u0111\\u1ebfn khi c\\u00f3 y\\u00eau c\\u1ea7u x\\u00f3a b\\u1ecf t\\u1eeb kh\\u00e1ch h\\u00e0ng. Tr\\u01b0\\u1eddng h\\u1ee3p truy c\\u1eadp v\\u00e0o website (...) , th\\u00f4ng tin c\\u00e1 nh\\u00e2n ch\\u1ec9 l\\u01b0u tr\\u1eef trong v\\u00f2ng 60 ng\\u00e0y.<\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/p>\\r\\n\\r\\n<h2 style=\\\"line-height:1.38; background-color:#ffffff; padding:0pt 0pt 7pt 0pt\\\"><span style=\\\"font-size:14.5pt; font-variant:normal; white-space:pre-wrap\\\"><span style=\\\"font-family:Arial,sans-serif\\\"><span style=\\\"color:#027774\\\"><span style=\\\"font-weight:700\\\"><span style=\\\"font-style:normal\\\"><span style=\\\"text-decoration:none\\\">4. \\u0110\\u1ecba ch\\u1ec9 l\\u00e0m vi\\u1ec7c v\\u00e0 qu\\u1ea3n l\\u00fd th\\u00f4ng tin c\\u00e1 nh\\u00e2n kh\\u00e1ch h\\u00e0ng<\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/h2>\\r\\n\\r\\n<p style=\\\"line-height:1.38; text-align:justify; background-color:#ffffff; padding:0pt 0pt 8pt 0pt\\\"><span style=\\\"font-size:12pt; font-variant:normal; white-space:pre-wrap\\\"><span style=\\\"font-family:Arial,sans-serif\\\"><span style=\\\"color:#000000\\\"><span style=\\\"font-weight:700\\\"><span style=\\\"font-style:normal\\\"><span style=\\\"text-decoration:none\\\">Divine Beauty Center<\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/p>\\r\\n\\r\\n<p style=\\\"line-height:1.38; background-color:#ffffff; padding:4pt 0pt 12pt 0pt\\\"><span style=\\\"font-size:12pt; font-variant:normal; white-space:pre-wrap\\\"><span style=\\\"font-family:Arial,sans-serif\\\"><span style=\\\"color:#000000\\\"><span style=\\\"font-weight:700\\\"><span style=\\\"font-style:normal\\\"><span style=\\\"text-decoration:none\\\">Hai Ngan Building, s\\u1ed1 9a Thanh Liet, Thanh Tri, Hanoi<\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/p>\\r\\n\\r\\n<h2 style=\\\"line-height:1.38; background-color:#ffffff; padding:0pt 0pt 7pt 0pt\\\"><span style=\\\"font-size:14.5pt; font-variant:normal; white-space:pre-wrap\\\"><span style=\\\"font-family:Arial,sans-serif\\\"><span style=\\\"color:#027774\\\"><span style=\\\"font-weight:700\\\"><span style=\\\"font-style:normal\\\"><span style=\\\"text-decoration:none\\\">5. C\\u00e1ch \\u0111\\u1ec3 kh\\u00e1ch h\\u00e0ng ti\\u1ebfp c\\u1eadn, ch\\u1ec9nh s\\u1eeda d\\u1eef li\\u1ec7u c\\u00e1 nh\\u00e2n<\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/h2>\\r\\n\\r\\n<p style=\\\"line-height:1.38; text-align:justify; background-color:#ffffff; padding:0pt 0pt 8pt 0pt\\\"><span style=\\\"font-size:12pt; font-variant:normal; white-space:pre-wrap\\\"><span style=\\\"font-family:Arial,sans-serif\\\"><span style=\\\"color:#000000\\\"><span style=\\\"font-weight:700\\\"><span style=\\\"font-style:normal\\\"><span style=\\\"text-decoration:none\\\">Kh\\u00e1ch h\\u00e0ng khi mu\\u1ed1n c\\u1eadp nh\\u1eadt d\\u1eef li\\u1ec7u c\\u00e1 nh\\u00e2n c\\u00f3 th\\u1ec3 li\\u00ean h\\u1ec7 qua s\\u1ed1 Hotline:<\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/p>\\r\\n\\r\\n<p style=\\\"line-height:1.38; background-color:#ffffff; margin-bottom:16px; padding:4pt 0pt 0pt 0pt\\\"><span style=\\\"font-size:12pt; font-variant:normal; white-space:pre-wrap\\\"><span style=\\\"font-family:Arial,sans-serif\\\"><span style=\\\"color:#000000\\\"><span style=\\\"font-weight:700\\\"><span style=\\\"font-style:normal\\\"><span style=\\\"text-decoration:none\\\">CS: 024.730.322.25<\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/p>\"}}', 6, 'active', 1, 1, '2023-08-14 07:09:12', '2023-08-14 07:10:32', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_popups`
--

CREATE TABLE `tb_popups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_popups`
--

INSERT INTO `tb_popups` (`id`, `title`, `content`, `image`, `json_params`, `start_time`, `end_time`, `duration`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'Home Popup', '<p>Nullam mollis ultrices est. Nulla in justo lacinia, scelerisque purus et, semper tortor. Donec bibendum leo vitae commodo porttitor. Proin tempus sollicitudin odio in feugiat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ultrices vitae nisl tristique commodo. Phasellus porttitor metus at mattis ultricies. In imperdiet nec nunc in tincidunt.</p>\r\n\r\n<p>Curabitur faucibus dolor at dui lobortis, eget dictum nisi mattis. Fusce risus dui, fringilla non elit sit amet, lobortis interdum eros. Donec mattis lectus quis elit fermentum lacinia. Nullam at ligula semper ante mollis pretium. Nam euismod velit ut quam accumsan vestibulum. Etiam diam augue, dapibus ac placerat nec, accumsan eget nibh. Cras sodales, leo ut volutpat laoreet, velit enim pharetra magna, at dapibus lacus elit vel mi. Nullam a massa ac ligula scelerisque maximus. Quisque dictum quis lorem ut sodales. Duis at semper odio. Morbi in sapien vel lacus posuere mattis ac eget ante. Etiam viverra accumsan rhoncus. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p>', '/data/cms-image/banner/no-banner.jpg', '{\"page\":[\"1\",\"3\",\"4\"]}', '2022-06-27 00:00:00', '2022-06-28 00:00:00', 5, 'active', 1, 1, '2022-06-27 15:22:00', '2022-06-27 18:01:38'),
(2, 'Thông báo bảo trì hệ thống', NULL, '/data/cms-image/banner/1.jpg', '{\"page\":[\"1\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"13\",\"14\",\"15\",\"16\"]}', '2022-06-28 00:00:00', '2022-06-28 00:00:00', NULL, 'deactive', 1, 1, '2022-06-27 15:42:38', '2022-06-27 18:10:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_product_detail`
--

CREATE TABLE `tb_product_detail` (
  `id` int(11) NOT NULL,
  `type` int(3) NOT NULL DEFAULT 1 COMMENT 'thuê:1 hoặc mua:2',
  `city` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL COMMENT 'giá',
  `type_price` int(3) DEFAULT 0 COMMENT 'thuê theo ngày:1 tuần:2 tháng:3 năm:4',
  `bedrooom` int(11) DEFAULT NULL COMMENT 'p ngủ',
  `bathrooom` int(11) DEFAULT NULL COMMENT 'p tắm',
  `spft` int(11) DEFAULT NULL COMMENT 'diện tích',
  `json_user` longtext DEFAULT NULL,
  `json_product` longtext DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_product_detail`
--

INSERT INTO `tb_product_detail` (`id`, `type`, `city`, `price`, `type_price`, `bedrooom`, `bathrooom`, `spft`, `json_user`, `json_product`, `updated_at`, `created_at`) VALUES
(118, 1, 5, 1808000, 3, 5, 5, 500, '{\"name\":\"Kudo\"}', '{\"space\":[\"N\\u0103m x\\u00e2y d\\u1ef1ng: 2021\",\"Di\\u1ec7n t\\u00edch h\\u00ecnh vu\\u00f4ng: 1401\",\"Ph\\u00f2ng kh\\u00e1ch: 12\",\"Ph\\u00f2ng t\\u1eafm: 2\",\"Ph\\u00f2ng ng\\u1ee7: 3\",\"Ban c\\u00f4ng: 3\",\"Ch\\u1ed7 \\u0111\\u1eadu xe h\\u01a1i: 5\",\"T\\u1ed5ng s\\u1ed1 t\\u1ea7ng: 25\",\"B\\u1ebfp: 1\",\"Nh\\u00e0 \\u0111\\u1ec3 xe: 1\",\"H\\u1ed3 b\\u01a1i: 2\",\"B\\u1ea3o hi\\u1ec3m: C\\u00f3\"],\"convenient\":{\"icon\":[\"icon-realestate-garage2\",\"icon-realestate-balcony\",\"icon-realestate-wood\",\"icon-realestate-realtor\",\"icon-realestate-fireplace\",\"icon-realestate-barrow\",\"icon-realestate-air-conditioning\",\"icon-realestate-restaurant\",\"icon-realestate-vacuum-cleaner\",\"icon-realestate-washing-machine\",\"icon-realestate-ventilation\",\"icon-realestate-phone2\",\"icon-realestate-tv\",\"icon-realestate-shower\",\"icon-realestate-parking\"],\"name\":[\"Gara \\u0111\\u1ed7 xe\",\"Ban c\\u00f4ng\",\"V\\u01b0\\u1eddn\",\"B\\u1ea3o v\\u1ec7\",\"l\\u00f2 s\\u01b0\\u1edfi\",\"N\\u00f4ng th\\u00f4n\",\"\\u0110i\\u1ec1u h\\u00f2a\",\"Th\\u1ecbt n\\u01b0\\u1edbng\",\"L\\u00f2 vi s\\u00f3ng\",\"M\\u00e1y gi\\u1eb7t\",\"Th\\u00f4ng gi\\u00f3\",\"\\u0110i\\u1ec7n tho\\u1ea1i\",\"Tivi\",\"V\\u00f2i t\\u1eafm\",\"B\\u00e3i \\u0111\\u1eadu xe\"]}}', '2023-04-07 03:35:04', '2023-02-08 03:17:46'),
(119, 1, 7, 7000000, 3, 3, 3, 300, '{\"name\":\"Kudo\"}', '{\"space\":[\"N\\u0103m x\\u00e2y d\\u1ef1ng: 2021\",\"Di\\u1ec7n t\\u00edch h\\u00ecnh vu\\u00f4ng: 1401\",\"Ph\\u00f2ng kh\\u00e1ch: 12\",\"Ph\\u00f2ng t\\u1eafm: 2\",\"Ph\\u00f2ng ng\\u1ee7: 3\",\"Ban c\\u00f4ng: 3\",\"Ch\\u1ed7 \\u0111\\u1eadu xe h\\u01a1i: 5\",\"T\\u1ed5ng s\\u1ed1 t\\u1ea7ng: 25\",\"B\\u1ebfp: 1\",\"Nh\\u00e0 \\u0111\\u1ec3 xe: 1\",\"H\\u1ed3 b\\u01a1i: 2\",\"B\\u1ea3o hi\\u1ec3m: C\\u00f3\"],\"convenient\":{\"icon\":[\"icon-realestate-garage2\",\"icon-realestate-balcony\",\"icon-realestate-wood\",\"icon-realestate-realtor\",\"icon-realestate-fireplace\",\"icon-realestate-barrow\",\"icon-realestate-air-conditioning\",\"icon-realestate-restaurant\",\"icon-realestate-vacuum-cleaner\",\"icon-realestate-washing-machine\",\"icon-realestate-ventilation\",\"icon-realestate-phone2\",\"icon-realestate-tv\",\"icon-realestate-shower\",\"icon-realestate-parking\"],\"name\":[\"Gara \\u0111\\u1ed7 xe\",\"Ban c\\u00f4ng\",\"V\\u01b0\\u1eddn\",\"B\\u1ea3o v\\u1ec7\",\"l\\u00f2 s\\u01b0\\u1edfi\",\"N\\u00f4ng th\\u00f4n\",\"\\u0110i\\u1ec1u h\\u00f2a\",\"Th\\u1ecbt n\\u01b0\\u1edbng\",\"L\\u00f2 vi s\\u00f3ng\",\"M\\u00e1y gi\\u1eb7t\",\"Th\\u00f4ng gi\\u00f3\",\"\\u0110i\\u1ec7n tho\\u1ea1i\",\"Tivi\",\"V\\u00f2i t\\u1eafm\",\"B\\u00e3i \\u0111\\u1eadu xe\"]}}', '2023-02-08 07:33:11', '2023-02-08 03:19:58'),
(120, 1, NULL, 30000, 1, 1, 333, NULL, '{\"name\":\"wfwfw\"}', '{\"space\":[\"N\\u0103m x\\u00e2y d\\u1ef1ng: 2021\",\"Di\\u1ec7n t\\u00edch h\\u00ecnh vu\\u00f4ng: 1401\",\"Ph\\u00f2ng kh\\u00e1ch: 12\",\"Ph\\u00f2ng t\\u1eafm: 2\",\"Ph\\u00f2ng ng\\u1ee7: 3\",\"Ban c\\u00f4ng: 3\",\"Ch\\u1ed7 \\u0111\\u1eadu xe h\\u01a1i: 5\",\"T\\u1ed5ng s\\u1ed1 t\\u1ea7ng: 25\",\"B\\u1ebfp: 1\",\"Nh\\u00e0 \\u0111\\u1ec3 xe: 1\",\"H\\u1ed3 b\\u01a1i: 2\",\"B\\u1ea3o hi\\u1ec3m: C\\u00f3\"],\"convenient\":{\"icon\":[\"icon-realestate-garage2\",\"icon-realestate-balcony\",\"icon-realestate-wood\",\"icon-realestate-realtor\",\"icon-realestate-fireplace\",\"icon-realestate-barrow\",\"icon-realestate-air-conditioning\",\"icon-realestate-restaurant\",\"icon-realestate-vacuum-cleaner\",\"icon-realestate-washing-machine\",\"icon-realestate-ventilation\",\"icon-realestate-phone2\",\"icon-realestate-tv\",\"icon-realestate-shower\",\"icon-realestate-parking\"],\"name\":[\"Gara \\u0111\\u1ed7 xe\",\"Ban c\\u00f4ng\",\"V\\u01b0\\u1eddn\",\"B\\u1ea3o v\\u1ec7\",\"l\\u00f2 s\\u01b0\\u1edfi\",\"N\\u00f4ng th\\u00f4n\",\"\\u0110i\\u1ec1u h\\u00f2a\",\"Th\\u1ecbt n\\u01b0\\u1edbng\",\"L\\u00f2 vi s\\u00f3ng\",\"M\\u00e1y gi\\u1eb7t\",\"Th\\u00f4ng gi\\u00f3\",\"\\u0110i\\u1ec7n tho\\u1ea1i\",\"Tivi\",\"V\\u00f2i t\\u1eafm\",\"B\\u00e3i \\u0111\\u1eadu xe\"]}}', '2023-02-08 03:20:50', '2023-02-08 03:20:50'),
(121, 2, 5, 300000000, 0, 6, 6, 500, '{\"name\":\"Kudo\"}', '{\"space\":[\"N\\u0103m x\\u00e2y d\\u1ef1ng: 2021\",\"Di\\u1ec7n t\\u00edch h\\u00ecnh vu\\u00f4ng: 1401\",\"Ph\\u00f2ng kh\\u00e1ch: 12\",\"Ph\\u00f2ng t\\u1eafm: 2\",\"Ph\\u00f2ng ng\\u1ee7: 3\",\"Ban c\\u00f4ng: 3\",\"Ch\\u1ed7 \\u0111\\u1eadu xe h\\u01a1i: 5\",\"T\\u1ed5ng s\\u1ed1 t\\u1ea7ng: 25\",\"B\\u1ebfp: 1\",\"Nh\\u00e0 \\u0111\\u1ec3 xe: 1\",\"H\\u1ed3 b\\u01a1i: 2\",\"B\\u1ea3o hi\\u1ec3m: C\\u00f3\"],\"convenient\":{\"icon\":[\"icon-realestate-garage2\",\"icon-realestate-balcony\",\"icon-realestate-wood\",\"icon-realestate-realtor\",\"icon-realestate-fireplace\",\"icon-realestate-barrow\",\"icon-realestate-air-conditioning\",\"icon-realestate-restaurant\",\"icon-realestate-vacuum-cleaner\",\"icon-realestate-washing-machine\",\"icon-realestate-ventilation\",\"icon-realestate-phone2\",\"icon-realestate-tv\",\"icon-realestate-shower\",\"icon-realestate-parking\"],\"name\":[\"Gara \\u0111\\u1ed7 xe\",\"Ban c\\u00f4ng\",\"V\\u01b0\\u1eddn\",\"B\\u1ea3o v\\u1ec7\",\"l\\u00f2 s\\u01b0\\u1edfi\",\"N\\u00f4ng th\\u00f4n\",\"\\u0110i\\u1ec1u h\\u00f2a\",\"Th\\u1ecbt n\\u01b0\\u1edbng\",\"L\\u00f2 vi s\\u00f3ng\",\"M\\u00e1y gi\\u1eb7t\",\"Th\\u00f4ng gi\\u00f3\",\"\\u0110i\\u1ec7n tho\\u1ea1i\",\"Tivi\",\"V\\u00f2i t\\u1eafm\",\"B\\u00e3i \\u0111\\u1eadu xe\"]}}', '2023-02-08 07:33:12', '2023-02-08 04:00:31'),
(122, 1, 101, 91000000, 4, 8, 8, 333, '{\"name\":null}', '{\"space\":[\"N\\u0103m x\\u00e2y d\\u1ef1ng: 2021\",\"Di\\u1ec7n t\\u00edch h\\u00ecnh vu\\u00f4ng: 1401\",\"Ph\\u00f2ng kh\\u00e1ch: 12\",\"Ph\\u00f2ng t\\u1eafm: 2\",\"Ph\\u00f2ng ng\\u1ee7: 3\",\"Ban c\\u00f4ng: 3\",\"Ch\\u1ed7 \\u0111\\u1eadu xe h\\u01a1i: 5\",\"T\\u1ed5ng s\\u1ed1 t\\u1ea7ng: 25\",\"B\\u1ebfp: 1\",\"Nh\\u00e0 \\u0111\\u1ec3 xe: 1\",\"H\\u1ed3 b\\u01a1i: 2\",\"B\\u1ea3o hi\\u1ec3m: C\\u00f3\"],\"convenient\":{\"icon\":[\"icon-realestate-garage2\",\"icon-realestate-balcony\",\"icon-realestate-wood\",\"icon-realestate-realtor\",\"icon-realestate-fireplace\",\"icon-realestate-barrow\",\"icon-realestate-air-conditioning\",\"icon-realestate-restaurant\",\"icon-realestate-vacuum-cleaner\",\"icon-realestate-washing-machine\",\"icon-realestate-ventilation\",\"icon-realestate-phone2\",\"icon-realestate-tv\",\"icon-realestate-shower\",\"icon-realestate-parking\"],\"name\":[\"Gara \\u0111\\u1ed7 xe\",\"Ban c\\u00f4ng\",\"V\\u01b0\\u1eddn\",\"B\\u1ea3o v\\u1ec7\",\"l\\u00f2 s\\u01b0\\u1edfi\",\"N\\u00f4ng th\\u00f4n\",\"\\u0110i\\u1ec1u h\\u00f2a\",\"Th\\u1ecbt n\\u01b0\\u1edbng\",\"L\\u00f2 vi s\\u00f3ng\",\"M\\u00e1y gi\\u1eb7t\",\"Th\\u00f4ng gi\\u00f3\",\"\\u0110i\\u1ec7n tho\\u1ea1i\",\"Tivi\",\"V\\u00f2i t\\u1eafm\",\"B\\u00e3i \\u0111\\u1eadu xe\"]}}', '2023-02-13 08:50:17', '2023-02-13 07:53:16'),
(123, 1, 5, 60000000, 4, 5, 5, 200, '{\"name\":null}', '{\"space\":[\"N\\u0103m x\\u00e2y d\\u1ef1ng: 2021\",\"Di\\u1ec7n t\\u00edch h\\u00ecnh vu\\u00f4ng: 1401\",\"Ph\\u00f2ng kh\\u00e1ch: 12\",\"Ph\\u00f2ng t\\u1eafm: 2\",\"Ph\\u00f2ng ng\\u1ee7: 3\",\"Ban c\\u00f4ng: 3\",\"Ch\\u1ed7 \\u0111\\u1eadu xe h\\u01a1i: 5\",\"T\\u1ed5ng s\\u1ed1 t\\u1ea7ng: 25\",\"B\\u1ebfp: 1\",\"Nh\\u00e0 \\u0111\\u1ec3 xe: 1\",\"H\\u1ed3 b\\u01a1i: 2\",\"B\\u1ea3o hi\\u1ec3m: C\\u00f3\"],\"convenient\":{\"icon\":[\"icon-realestate-garage2\",\"icon-realestate-balcony\",\"icon-realestate-wood\",\"icon-realestate-realtor\",\"icon-realestate-fireplace\",\"icon-realestate-barrow\",\"icon-realestate-air-conditioning\",\"icon-realestate-restaurant\",\"icon-realestate-vacuum-cleaner\",\"icon-realestate-washing-machine\",\"icon-realestate-ventilation\",\"icon-realestate-phone2\",\"icon-realestate-tv\",\"icon-realestate-shower\",\"icon-realestate-parking\"],\"name\":[\"Gara \\u0111\\u1ed7 xe\",\"Ban c\\u00f4ng\",\"V\\u01b0\\u1eddn\",\"B\\u1ea3o v\\u1ec7\",\"l\\u00f2 s\\u01b0\\u1edfi\",\"N\\u00f4ng th\\u00f4n\",\"\\u0110i\\u1ec1u h\\u00f2a\",\"Th\\u1ecbt n\\u01b0\\u1edbng\",\"L\\u00f2 vi s\\u00f3ng\",\"M\\u00e1y gi\\u1eb7t\",\"Th\\u00f4ng gi\\u00f3\",\"\\u0110i\\u1ec7n tho\\u1ea1i\",\"Tivi\",\"V\\u00f2i t\\u1eafm\",\"B\\u00e3i \\u0111\\u1eadu xe\"]}}', '2023-04-06 10:34:43', '2023-02-13 07:53:25'),
(124, 2, 3, 900000000, 0, 4, 4, 300, '{\"name\":\"Kudo\"}', '{\"space\":[\"N\\u0103m x\\u00e2y d\\u1ef1ng: 2021\",\"Di\\u1ec7n t\\u00edch h\\u00ecnh vu\\u00f4ng: 1401\",\"Ph\\u00f2ng kh\\u00e1ch: 12\",\"Ph\\u00f2ng t\\u1eafm: 2\",\"Ph\\u00f2ng ng\\u1ee7: 3\",\"Ban c\\u00f4ng: 3\",\"Ch\\u1ed7 \\u0111\\u1eadu xe h\\u01a1i: 5\",\"T\\u1ed5ng s\\u1ed1 t\\u1ea7ng: 25\",\"B\\u1ebfp: 1\",\"Nh\\u00e0 \\u0111\\u1ec3 xe: 1\",\"H\\u1ed3 b\\u01a1i: 2\",\"B\\u1ea3o hi\\u1ec3m: C\\u00f3\"],\"convenient\":{\"icon\":[\"icon-realestate-garage2\",\"icon-realestate-balcony\",\"icon-realestate-wood\",\"icon-realestate-realtor\",\"icon-realestate-fireplace\",\"icon-realestate-barrow\",\"icon-realestate-air-conditioning\",\"icon-realestate-restaurant\",\"icon-realestate-vacuum-cleaner\",\"icon-realestate-washing-machine\",\"icon-realestate-ventilation\",\"icon-realestate-phone2\",\"icon-realestate-tv\",\"icon-realestate-shower\",\"icon-realestate-parking\"],\"name\":[\"Gara \\u0111\\u1ed7 xe\",\"Ban c\\u00f4ng\",\"V\\u01b0\\u1eddn\",\"B\\u1ea3o v\\u1ec7\",\"l\\u00f2 s\\u01b0\\u1edfi\",\"N\\u00f4ng th\\u00f4n\",\"\\u0110i\\u1ec1u h\\u00f2a\",\"Th\\u1ecbt n\\u01b0\\u1edbng\",\"L\\u00f2 vi s\\u00f3ng\",\"M\\u00e1y gi\\u1eb7t\",\"Th\\u00f4ng gi\\u00f3\",\"\\u0110i\\u1ec7n tho\\u1ea1i\",\"Tivi\",\"V\\u00f2i t\\u1eafm\",\"B\\u00e3i \\u0111\\u1eadu xe\"]}}', '2023-02-13 08:50:14', '2023-02-13 07:54:54'),
(125, 2, 3, 700000000, 0, 5, 5, 50, '{\"name\":null}', '{\"space\":[\"N\\u0103m x\\u00e2y d\\u1ef1ng: 2021\",\"Di\\u1ec7n t\\u00edch h\\u00ecnh vu\\u00f4ng: 1401\",\"Ph\\u00f2ng kh\\u00e1ch: 12\",\"Ph\\u00f2ng t\\u1eafm: 2\",\"Ph\\u00f2ng ng\\u1ee7: 3\",\"Ban c\\u00f4ng: 3\",\"Ch\\u1ed7 \\u0111\\u1eadu xe h\\u01a1i: 5\",\"T\\u1ed5ng s\\u1ed1 t\\u1ea7ng: 25\",\"B\\u1ebfp: 1\",\"Nh\\u00e0 \\u0111\\u1ec3 xe: 1\",\"H\\u1ed3 b\\u01a1i: 2\",\"B\\u1ea3o hi\\u1ec3m: C\\u00f3\"],\"convenient\":{\"icon\":[\"icon-realestate-garage2\",\"icon-realestate-balcony\",\"icon-realestate-wood\",\"icon-realestate-realtor\",\"icon-realestate-fireplace\",\"icon-realestate-barrow\",\"icon-realestate-air-conditioning\",\"icon-realestate-restaurant\",\"icon-realestate-vacuum-cleaner\",\"icon-realestate-washing-machine\",\"icon-realestate-ventilation\",\"icon-realestate-phone2\",\"icon-realestate-tv\",\"icon-realestate-shower\",\"icon-realestate-parking\"],\"name\":[\"Gara \\u0111\\u1ed7 xe\",\"Ban c\\u00f4ng\",\"V\\u01b0\\u1eddn\",\"B\\u1ea3o v\\u1ec7\",\"l\\u00f2 s\\u01b0\\u1edfi\",\"N\\u00f4ng th\\u00f4n\",\"\\u0110i\\u1ec1u h\\u00f2a\",\"Th\\u1ecbt n\\u01b0\\u1edbng\",\"L\\u00f2 vi s\\u00f3ng\",\"M\\u00e1y gi\\u1eb7t\",\"Th\\u00f4ng gi\\u00f3\",\"\\u0110i\\u1ec7n tho\\u1ea1i\",\"Tivi\",\"V\\u00f2i t\\u1eafm\",\"B\\u00e3i \\u0111\\u1eadu xe\"]}}', '2023-04-06 10:35:05', '2023-02-13 08:03:04'),
(126, 1, 9, 6000000, 3, 1, 1, 60, '{\"name\":\"Kudo2\"}', '{\"space\":[\"N\\u0103m x\\u00e2y d\\u1ef1ng: 2021\",\"Di\\u1ec7n t\\u00edch h\\u00ecnh vu\\u00f4ng: 1401\",\"Ph\\u00f2ng kh\\u00e1ch: 12\",\"Ph\\u00f2ng t\\u1eafm: 2\",\"Ph\\u00f2ng ng\\u1ee7: 3\",\"Ban c\\u00f4ng: 3\",\"Ch\\u1ed7 \\u0111\\u1eadu xe h\\u01a1i: 5\",\"T\\u1ed5ng s\\u1ed1 t\\u1ea7ng: 25\",\"B\\u1ebfp: 1\",\"Nh\\u00e0 \\u0111\\u1ec3 xe: 1\",\"H\\u1ed3 b\\u01a1i: 2\",\"B\\u1ea3o hi\\u1ec3m: C\\u00f3\"],\"convenient\":{\"icon\":[\"icon-realestate-garage2\",\"icon-realestate-balcony\",\"icon-realestate-wood\",\"icon-realestate-realtor\",\"icon-realestate-fireplace\",\"icon-realestate-barrow\",\"icon-realestate-air-conditioning\",\"icon-realestate-restaurant\",\"icon-realestate-vacuum-cleaner\",\"icon-realestate-washing-machine\",\"icon-realestate-ventilation\",\"icon-realestate-phone2\",\"icon-realestate-tv\",\"icon-realestate-shower\",\"icon-realestate-parking\"],\"name\":[\"Gara \\u0111\\u1ed7 xe\",\"Ban c\\u00f4ng\",\"V\\u01b0\\u1eddn\",\"B\\u1ea3o v\\u1ec7\",\"l\\u00f2 s\\u01b0\\u1edfi\",\"N\\u00f4ng th\\u00f4n\",\"\\u0110i\\u1ec1u h\\u00f2a\",\"Th\\u1ecbt n\\u01b0\\u1edbng\",\"L\\u00f2 vi s\\u00f3ng\",\"M\\u00e1y gi\\u1eb7t\",\"Th\\u00f4ng gi\\u00f3\",\"\\u0110i\\u1ec7n tho\\u1ea1i\",\"Tivi\",\"V\\u00f2i t\\u1eafm\",\"B\\u00e3i \\u0111\\u1eadu xe\"]}}', '2023-02-13 08:50:09', '2023-02-13 08:08:49'),
(127, 2, 125, 1200000000, 0, 3, 3, 120, '{\"name\":\"Kudo\"}', '{\"space\":[\"N\\u0103m x\\u00e2y d\\u1ef1ng: 2021\",\"Di\\u1ec7n t\\u00edch h\\u00ecnh vu\\u00f4ng: 1401\",\"Ph\\u00f2ng kh\\u00e1ch: 12\",\"Ph\\u00f2ng t\\u1eafm: 2\",\"Ph\\u00f2ng ng\\u1ee7: 3\",\"Ban c\\u00f4ng: 3\",\"Ch\\u1ed7 \\u0111\\u1eadu xe h\\u01a1i: 5\",\"T\\u1ed5ng s\\u1ed1 t\\u1ea7ng: 25\",\"B\\u1ebfp: 1\",\"Nh\\u00e0 \\u0111\\u1ec3 xe: 1\",\"H\\u1ed3 b\\u01a1i: 2\",\"B\\u1ea3o hi\\u1ec3m: C\\u00f3\"],\"convenient\":{\"icon\":[\"icon-realestate-garage2\",\"icon-realestate-balcony\",\"icon-realestate-wood\",\"icon-realestate-realtor\",\"icon-realestate-fireplace\",\"icon-realestate-barrow\",\"icon-realestate-air-conditioning\",\"icon-realestate-restaurant\",\"icon-realestate-vacuum-cleaner\",\"icon-realestate-washing-machine\",\"icon-realestate-ventilation\",\"icon-realestate-phone2\",\"icon-realestate-tv\",\"icon-realestate-shower\",\"icon-realestate-parking\"],\"name\":[\"Gara \\u0111\\u1ed7 xe\",\"Ban c\\u00f4ng\",\"V\\u01b0\\u1eddn\",\"B\\u1ea3o v\\u1ec7\",\"l\\u00f2 s\\u01b0\\u1edfi\",\"N\\u00f4ng th\\u00f4n\",\"\\u0110i\\u1ec1u h\\u00f2a\",\"Th\\u1ecbt n\\u01b0\\u1edbng\",\"L\\u00f2 vi s\\u00f3ng\",\"M\\u00e1y gi\\u1eb7t\",\"Th\\u00f4ng gi\\u00f3\",\"\\u0110i\\u1ec7n tho\\u1ea1i\",\"Tivi\",\"V\\u00f2i t\\u1eafm\",\"B\\u00e3i \\u0111\\u1eadu xe\"]}}', '2023-02-13 08:50:04', '2023-02-13 08:13:55'),
(128, 1, 105, 6000000, 3, 1, 1, 50, '{\"name\":\"Kudo\"}', '{\"space\":[\"N\\u0103m x\\u00e2y d\\u1ef1ng: 2021\",\"Di\\u1ec7n t\\u00edch h\\u00ecnh vu\\u00f4ng: 1401\",\"Ph\\u00f2ng kh\\u00e1ch: 12\",\"Ph\\u00f2ng t\\u1eafm: 2\",\"Ph\\u00f2ng ng\\u1ee7: 3\",\"Ban c\\u00f4ng: 3\",\"Ch\\u1ed7 \\u0111\\u1eadu xe h\\u01a1i: 5\",\"T\\u1ed5ng s\\u1ed1 t\\u1ea7ng: 25\",\"B\\u1ebfp: 1\",\"Nh\\u00e0 \\u0111\\u1ec3 xe: 1\",\"H\\u1ed3 b\\u01a1i: 2\",\"B\\u1ea3o hi\\u1ec3m: C\\u00f3\"],\"convenient\":{\"icon\":[\"icon-realestate-garage2\",\"icon-realestate-balcony\",\"icon-realestate-wood\",\"icon-realestate-realtor\",\"icon-realestate-fireplace\",\"icon-realestate-barrow\",\"icon-realestate-air-conditioning\",\"icon-realestate-restaurant\",\"icon-realestate-vacuum-cleaner\",\"icon-realestate-washing-machine\",\"icon-realestate-ventilation\",\"icon-realestate-phone2\",\"icon-realestate-tv\",\"icon-realestate-shower\",\"icon-realestate-parking\"],\"name\":[\"Gara \\u0111\\u1ed7 xe\",\"Ban c\\u00f4ng\",\"V\\u01b0\\u1eddn\",\"B\\u1ea3o v\\u1ec7\",\"l\\u00f2 s\\u01b0\\u1edfi\",\"N\\u00f4ng th\\u00f4n\",\"\\u0110i\\u1ec1u h\\u00f2a\",\"Th\\u1ecbt n\\u01b0\\u1edbng\",\"L\\u00f2 vi s\\u00f3ng\",\"M\\u00e1y gi\\u1eb7t\",\"Th\\u00f4ng gi\\u00f3\",\"\\u0110i\\u1ec7n tho\\u1ea1i\",\"Tivi\",\"V\\u00f2i t\\u1eafm\",\"B\\u00e3i \\u0111\\u1eadu xe\"]}}', '2023-04-06 10:35:15', '2023-02-13 08:16:00'),
(129, 1, 114, 7000000, 1, 2, 2, 80, '{\"name\":\"Kudo\"}', '{\"space\":[\"N\\u0103m x\\u00e2y d\\u1ef1ng: 2021\",\"Di\\u1ec7n t\\u00edch h\\u00ecnh vu\\u00f4ng: 1401\",\"Ph\\u00f2ng kh\\u00e1ch: 12\",\"Ph\\u00f2ng t\\u1eafm: 2\",\"Ph\\u00f2ng ng\\u1ee7: 3\",\"Ban c\\u00f4ng: 3\",\"Ch\\u1ed7 \\u0111\\u1eadu xe h\\u01a1i: 5\",\"T\\u1ed5ng s\\u1ed1 t\\u1ea7ng: 25\",\"B\\u1ebfp: 1\",\"Nh\\u00e0 \\u0111\\u1ec3 xe: 1\",\"H\\u1ed3 b\\u01a1i: 2\",\"B\\u1ea3o hi\\u1ec3m: C\\u00f3\"],\"convenient\":{\"icon\":[\"icon-realestate-garage2\",\"icon-realestate-balcony\",\"icon-realestate-wood\",\"icon-realestate-realtor\",\"icon-realestate-fireplace\",\"icon-realestate-barrow\",\"icon-realestate-air-conditioning\",\"icon-realestate-restaurant\",\"icon-realestate-vacuum-cleaner\",\"icon-realestate-washing-machine\",\"icon-realestate-ventilation\",\"icon-realestate-phone2\",\"icon-realestate-tv\",\"icon-realestate-shower\",\"icon-realestate-parking\"],\"name\":[\"Gara \\u0111\\u1ed7 xe\",\"Ban c\\u00f4ng\",\"V\\u01b0\\u1eddn\",\"B\\u1ea3o v\\u1ec7\",\"l\\u00f2 s\\u01b0\\u1edfi\",\"N\\u00f4ng th\\u00f4n\",\"\\u0110i\\u1ec1u h\\u00f2a\",\"Th\\u1ecbt n\\u01b0\\u1edbng\",\"L\\u00f2 vi s\\u00f3ng\",\"M\\u00e1y gi\\u1eb7t\",\"Th\\u00f4ng gi\\u00f3\",\"\\u0110i\\u1ec7n tho\\u1ea1i\",\"Tivi\",\"V\\u00f2i t\\u1eafm\",\"B\\u00e3i \\u0111\\u1eadu xe\"]}}', '2023-02-13 08:50:00', '2023-02-13 08:16:54'),
(130, 2, 5, 2000000000, 0, 4, 4, 150, '{\"name\":\"Kudo\"}', '{\"space\":[\"N\\u0103m x\\u00e2y d\\u1ef1ng: 2021\",\"Di\\u1ec7n t\\u00edch h\\u00ecnh vu\\u00f4ng: 1401\",\"Ph\\u00f2ng kh\\u00e1ch: 12\",\"Ph\\u00f2ng t\\u1eafm: 2\",\"Ph\\u00f2ng ng\\u1ee7: 3\",\"Ban c\\u00f4ng: 3\",\"Ch\\u1ed7 \\u0111\\u1eadu xe h\\u01a1i: 5\",\"T\\u1ed5ng s\\u1ed1 t\\u1ea7ng: 25\",\"B\\u1ebfp: 1\",\"Nh\\u00e0 \\u0111\\u1ec3 xe: 1\",\"H\\u1ed3 b\\u01a1i: 2\",\"B\\u1ea3o hi\\u1ec3m: C\\u00f3\"],\"convenient\":{\"icon\":[\"icon-realestate-garage2\",\"icon-realestate-balcony\",\"icon-realestate-wood\",\"icon-realestate-realtor\",\"icon-realestate-fireplace\",\"icon-realestate-barrow\",\"icon-realestate-air-conditioning\",\"icon-realestate-restaurant\",\"icon-realestate-vacuum-cleaner\",\"icon-realestate-washing-machine\",\"icon-realestate-ventilation\",\"icon-realestate-phone2\",\"icon-realestate-tv\",\"icon-realestate-shower\",\"icon-realestate-parking\"],\"name\":[\"Gara \\u0111\\u1ed7 xe\",\"Ban c\\u00f4ng\",\"V\\u01b0\\u1eddn\",\"B\\u1ea3o v\\u1ec7\",\"l\\u00f2 s\\u01b0\\u1edfi\",\"N\\u00f4ng th\\u00f4n\",\"\\u0110i\\u1ec1u h\\u00f2a\",\"Th\\u1ecbt n\\u01b0\\u1edbng\",\"L\\u00f2 vi s\\u00f3ng\",\"M\\u00e1y gi\\u1eb7t\",\"Th\\u00f4ng gi\\u00f3\",\"\\u0110i\\u1ec7n tho\\u1ea1i\",\"Tivi\",\"V\\u00f2i t\\u1eafm\",\"B\\u00e3i \\u0111\\u1eadu xe\"]}}', '2023-02-13 08:50:02', '2023-02-13 08:18:26'),
(131, 2, 5, 900000000, 0, 4, 4, 145, '{\"name\":\"Kudo\"}', '{\"space\":[\"N\\u0103m x\\u00e2y d\\u1ef1ng: 2021\",\"Di\\u1ec7n t\\u00edch h\\u00ecnh vu\\u00f4ng: 1401\",\"Ph\\u00f2ng kh\\u00e1ch: 12\",\"Ph\\u00f2ng t\\u1eafm: 2\",\"Ph\\u00f2ng ng\\u1ee7: 3\",\"Ban c\\u00f4ng: 3\",\"Ch\\u1ed7 \\u0111\\u1eadu xe h\\u01a1i: 5\",\"T\\u1ed5ng s\\u1ed1 t\\u1ea7ng: 25\",\"B\\u1ebfp: 1\",\"Nh\\u00e0 \\u0111\\u1ec3 xe: 1\",\"H\\u1ed3 b\\u01a1i: 2\",\"B\\u1ea3o hi\\u1ec3m: C\\u00f3\"],\"convenient\":{\"icon\":[\"icon-realestate-garage2\",\"icon-realestate-balcony\",\"icon-realestate-wood\",\"icon-realestate-realtor\",\"icon-realestate-fireplace\",\"icon-realestate-barrow\",\"icon-realestate-air-conditioning\",\"icon-realestate-restaurant\",\"icon-realestate-vacuum-cleaner\",\"icon-realestate-washing-machine\",\"icon-realestate-ventilation\",\"icon-realestate-phone2\",\"icon-realestate-tv\",\"icon-realestate-shower\",\"icon-realestate-parking\"],\"name\":[\"Gara \\u0111\\u1ed7 xe\",\"Ban c\\u00f4ng\",\"V\\u01b0\\u1eddn\",\"B\\u1ea3o v\\u1ec7\",\"l\\u00f2 s\\u01b0\\u1edfi\",\"N\\u00f4ng th\\u00f4n\",\"\\u0110i\\u1ec1u h\\u00f2a\",\"Th\\u1ecbt n\\u01b0\\u1edbng\",\"L\\u00f2 vi s\\u00f3ng\",\"M\\u00e1y gi\\u1eb7t\",\"Th\\u00f4ng gi\\u00f3\",\"\\u0110i\\u1ec7n tho\\u1ea1i\",\"Tivi\",\"V\\u00f2i t\\u1eafm\",\"B\\u00e3i \\u0111\\u1eadu xe\"]}}', '2023-04-06 10:35:27', '2023-02-13 08:19:40'),
(132, 1, 7, 6500000, 1, 3, 3, 80, '{\"name\":\"Kudo\"}', '{\"space\":[\"N\\u0103m x\\u00e2y d\\u1ef1ng: 2021\",\"Di\\u1ec7n t\\u00edch h\\u00ecnh vu\\u00f4ng: 1401\",\"Ph\\u00f2ng kh\\u00e1ch: 12\",\"Ph\\u00f2ng t\\u1eafm: 2\",\"Ph\\u00f2ng ng\\u1ee7: 3\",\"Ban c\\u00f4ng: 3\",\"Ch\\u1ed7 \\u0111\\u1eadu xe h\\u01a1i: 5\",\"T\\u1ed5ng s\\u1ed1 t\\u1ea7ng: 25\",\"B\\u1ebfp: 1\",\"Nh\\u00e0 \\u0111\\u1ec3 xe: 1\",\"H\\u1ed3 b\\u01a1i: 2\",\"B\\u1ea3o hi\\u1ec3m: C\\u00f3\"],\"convenient\":{\"icon\":[\"icon-realestate-garage2\",\"icon-realestate-balcony\",\"icon-realestate-wood\",\"icon-realestate-realtor\",\"icon-realestate-fireplace\",\"icon-realestate-barrow\",\"icon-realestate-air-conditioning\",\"icon-realestate-restaurant\",\"icon-realestate-vacuum-cleaner\",\"icon-realestate-washing-machine\",\"icon-realestate-ventilation\",\"icon-realestate-phone2\",\"icon-realestate-tv\",\"icon-realestate-shower\",\"icon-realestate-parking\"],\"name\":[\"Gara \\u0111\\u1ed7 xe\",\"Ban c\\u00f4ng\",\"V\\u01b0\\u1eddn\",\"B\\u1ea3o v\\u1ec7\",\"l\\u00f2 s\\u01b0\\u1edfi\",\"N\\u00f4ng th\\u00f4n\",\"\\u0110i\\u1ec1u h\\u00f2a\",\"Th\\u1ecbt n\\u01b0\\u1edbng\",\"L\\u00f2 vi s\\u00f3ng\",\"M\\u00e1y gi\\u1eb7t\",\"Th\\u00f4ng gi\\u00f3\",\"\\u0110i\\u1ec7n tho\\u1ea1i\",\"Tivi\",\"V\\u00f2i t\\u1eafm\",\"B\\u00e3i \\u0111\\u1eadu xe\"]}}', '2023-02-13 08:49:57', '2023-02-13 08:20:30'),
(133, 2, 3, 800000000, 0, 8, 8, 200, '{\"name\":\"Kudo\"}', '{\"space\":[\"N\\u0103m x\\u00e2y d\\u1ef1ng: 2021\",\"Di\\u1ec7n t\\u00edch h\\u00ecnh vu\\u00f4ng: 1401\",\"Ph\\u00f2ng kh\\u00e1ch: 12\",\"Ph\\u00f2ng t\\u1eafm: 2\",\"Ph\\u00f2ng ng\\u1ee7: 3\",\"Ban c\\u00f4ng: 3\",\"Ch\\u1ed7 \\u0111\\u1eadu xe h\\u01a1i: 5\",\"T\\u1ed5ng s\\u1ed1 t\\u1ea7ng: 25\",\"B\\u1ebfp: 1\",\"Nh\\u00e0 \\u0111\\u1ec3 xe: 1\",\"H\\u1ed3 b\\u01a1i: 2\",\"B\\u1ea3o hi\\u1ec3m: C\\u00f3\"],\"convenient\":{\"icon\":[\"icon-realestate-garage2\",\"icon-realestate-balcony\",\"icon-realestate-wood\",\"icon-realestate-realtor\",\"icon-realestate-fireplace\",\"icon-realestate-barrow\",\"icon-realestate-air-conditioning\",\"icon-realestate-restaurant\",\"icon-realestate-vacuum-cleaner\",\"icon-realestate-washing-machine\",\"icon-realestate-ventilation\",\"icon-realestate-phone2\",\"icon-realestate-tv\",\"icon-realestate-shower\",\"icon-realestate-parking\"],\"name\":[\"Gara \\u0111\\u1ed7 xe\",\"Ban c\\u00f4ng\",\"V\\u01b0\\u1eddn\",\"B\\u1ea3o v\\u1ec7\",\"l\\u00f2 s\\u01b0\\u1edfi\",\"N\\u00f4ng th\\u00f4n\",\"\\u0110i\\u1ec1u h\\u00f2a\",\"Th\\u1ecbt n\\u01b0\\u1edbng\",\"L\\u00f2 vi s\\u00f3ng\",\"M\\u00e1y gi\\u1eb7t\",\"Th\\u00f4ng gi\\u00f3\",\"\\u0110i\\u1ec7n tho\\u1ea1i\",\"Tivi\",\"V\\u00f2i t\\u1eafm\",\"B\\u00e3i \\u0111\\u1eadu xe\"]}}', '2023-02-13 08:49:49', '2023-02-13 08:21:30'),
(140, 1, NULL, 1059000, 0, NULL, NULL, NULL, NULL, NULL, '2023-04-07 04:16:39', '2023-04-07 04:16:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_reviews`
--

CREATE TABLE `tb_reviews` (
  `id` bigint(20) NOT NULL,
  `id_product` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `comment` longtext DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'new',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_reviews`
--

INSERT INTO `tb_reviews` (`id`, `id_product`, `name`, `email`, `comment`, `rating`, `status`, `created_at`, `updated_at`) VALUES
(6, 118, 'manh2', 'manh22@gmail.com', 'KHÓ nhỉ22', 2, 'delete', '2023-01-04 10:37:14', '2023-03-01 03:02:16'),
(7, 118, 'Ẩn danh boy', 'andanh@gmail.com', 'Đợt em gom dòg dưỡg 3ce khách em khen nhiều lắm, kiểu bóng như tiêm filler í! Yêu lắm! Đợt này toàn màu xinh hot trend nhìn mê thật  Đợt em gom dòg dưỡg 3ce khách em khen nhiều lắm, kiểu bóng như tiêm filler í! Yêu lắm! Đợt này toàn màu xinh hot trend nhìn mê thật  Đợt em gom dòg dưỡg 3ce khách em khen nhiều lắm, kiểu bóng như tiêm filler í! Yêu lắm! Đợt này toàn màu xinh hot trend nhìn mê thật  Đợt em gom dòg dưỡg 3ce khách em khen nhiều lắm, kiểu bóng như tiêm filler í! Yêu lắm! Đợt này toàn màu xinh hot trend nhìn mê thật  Đợt em gom dòg dưỡg 3ce khách em khen nhiều lắm, kiểu bóng như tiêm filler í! Yêu lắm! Đợt này toàn màu xinh hot trend nhìn mê thật', 5, 'delete', '2023-01-04 10:42:40', '2023-02-15 04:35:12'),
(8, 118, 'Thah', 'rg@mail.com', 'Đánh giáĐánh giáĐánh giáĐánh giáĐánh giáĐánh giáĐánh giáĐánh giáĐánh giáĐánh giáĐánh giáĐánh giáĐánh giáĐánh giá', 5, 'new', '2023-01-04 10:48:09', NULL),
(9, 118, 'Manh', 'djsfkl@gmail.com', 'dsadsa', 5, 'new', '2023-01-05 03:51:26', NULL),
(10, 118, 'thanh test', 'test@gmail.com', 'dfd', 1, 'new', '2023-01-06 02:47:08', NULL),
(11, 118, 'thanh', 'thanh@gmail.com', 'ddđ', 4, 'new', '2023-02-07 02:45:04', NULL),
(12, 118, 'Thanh Kduo', 'thanh@gmail.com', 'Đây là đánh giá tổng quan về chung cư cao cấp hiện đại, ns chung là cũng nên mua', 5, 'new', '2023-02-15 02:41:52', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_roles`
--

CREATE TABLE `tb_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `json_access` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_access`)),
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_roles`
--

INSERT INTO `tb_roles` (`id`, `name`, `description`, `json_access`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'Quyền quản trị nội dung', 'Dành cho nhân viên thiết kế và cập nhật nội dung', '{\"menu_id\":[\"72\",\"62\",\"59\",\"51\",\"52\",\"53\",\"73\",\"13\",\"70\",\"46\",\"45\",\"44\",\"71\",\"58\",\"42\",\"41\",\"17\"],\"function_code\":[\"contacts.index\",\"contacts.create\",\"contacts.store\",\"contacts.edit\",\"contacts.update\",\"cms_taxonomys.index\",\"cms_taxonomys.create\",\"cms_taxonomys.store\",\"cms_taxonomys.edit\",\"cms_taxonomys.update\",\"cms_posts.index\",\"cms_posts.create\",\"cms_posts.store\",\"cms_posts.edit\",\"cms_posts.update\",\"call_request.index\",\"call_request.show\",\"call_request.update\",\"cms_products.index\",\"cms_products.create\",\"cms_products.store\",\"cms_products.edit\",\"cms_products.update\",\"web.social\",\"web.social.update\",\"web.information\",\"web.information.update\",\"web.image\",\"web.image.update\",\"web.source\",\"web.source.update\",\"menus.index\",\"menus.create\",\"menus.store\",\"menus.edit\",\"menus.update\",\"pages.index\",\"pages.create\",\"pages.store\",\"pages.edit\",\"pages.update\",\"block_contents.index\",\"block_contents.create\",\"block_contents.store\",\"block_contents.edit\",\"block_contents.update\",\"admins.index\",\"admins.create\",\"admins.store\",\"admins.edit\",\"admins.update\"]}', 1, 'active', 1, 1, '2021-10-02 10:59:48', '2023-07-08 08:04:35'),
(2, 'Quản trị hệ thống', 'Quyền dành cho người quản trị hệ thống', '{\"menu_id\":[\"72\",\"62\",\"59\",\"51\",\"52\",\"53\",\"73\",\"13\",\"70\",\"46\",\"45\",\"44\",\"71\",\"58\",\"42\",\"41\",\"17\",\"10\",\"3\",\"5\",\"6\"],\"function_code\":[\"contacts.index\",\"contacts.create\",\"contacts.store\",\"contacts.edit\",\"contacts.update\",\"contacts.destroy\",\"cms_taxonomys.index\",\"cms_taxonomys.create\",\"cms_taxonomys.store\",\"cms_taxonomys.edit\",\"cms_taxonomys.update\",\"cms_taxonomys.destroy\",\"cms_posts.index\",\"cms_posts.create\",\"cms_posts.store\",\"cms_posts.edit\",\"cms_posts.update\",\"cms_posts.destroy\",\"call_request.index\",\"call_request.show\",\"call_request.update\",\"call_request.destroy\",\"cms_products.index\",\"cms_products.create\",\"cms_products.store\",\"cms_products.edit\",\"cms_products.update\",\"cms_products.destroy\",\"web.social\",\"web.social.update\",\"web.information\",\"web.information.update\",\"web.image\",\"web.image.update\",\"web.source\",\"web.source.update\",\"menus.index\",\"menus.create\",\"menus.store\",\"menus.edit\",\"menus.update\",\"menus.destroy\",\"pages.index\",\"pages.create\",\"pages.store\",\"pages.edit\",\"pages.update\",\"pages.destroy\",\"block_contents.index\",\"block_contents.create\",\"block_contents.store\",\"block_contents.edit\",\"block_contents.update\",\"block_contents.destroy\",\"admins.index\",\"admins.create\",\"admins.store\",\"admins.edit\",\"admins.update\",\"admins.destroy\",\"roles.index\",\"roles.create\",\"roles.store\",\"roles.edit\",\"roles.update\",\"roles.destroy\",\"admin_menus.index\",\"admin_menus.create\",\"admin_menus.store\",\"admin_menus.edit\",\"admin_menus.update\",\"admin_menus.destroy\"]}', 2, 'active', 1, 1, '2021-10-02 11:28:09', '2023-07-10 02:09:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_widgets`
--

CREATE TABLE `tb_widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `widget_code` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `brief` text DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `image` varchar(255) DEFAULT NULL,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_widgets`
--

INSERT INTO `tb_widgets` (`id`, `widget_code`, `title`, `brief`, `json_params`, `image`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'header', 'Header Style 1', 'Header 1 brief content', '{\"layout\":null,\"style\":null,\"component\":[\"1\",\"2\"]}', NULL, 10, 'active', 1, 1, '2022-05-04 14:59:07', '2022-05-10 07:29:20'),
(2, 'footer', 'Footer Style 1', NULL, '{\"layout\":null,\"style\":null,\"component\":[\"2\",\"1\"]}', NULL, 20, 'active', 1, 1, '2022-05-10 07:29:03', '2022-05-10 07:29:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_widget_configs`
--

CREATE TABLE `tb_widget_configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `widget_code` varchar(255) NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `is_config` tinyint(1) NOT NULL DEFAULT 1,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_widget_configs`
--

INSERT INTO `tb_widget_configs` (`id`, `name`, `description`, `widget_code`, `json_params`, `is_config`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'Header', NULL, 'header', NULL, 1, 1, 'active', 1, 1, '2022-04-26 09:40:39', '2022-04-26 09:40:39'),
(2, 'Footer', NULL, 'footer', NULL, 1, 2, 'active', 1, 1, '2022-04-26 09:42:09', '2022-04-26 09:42:09'),
(3, 'Left Sidebar', NULL, 'left_sidebar', NULL, 1, 3, 'active', 1, 1, '2022-04-26 09:42:46', '2022-04-26 09:42:46'),
(4, 'Right Sidebar', NULL, 'right_sidebar', NULL, 1, 4, 'active', 1, 1, '2022-04-26 09:43:02', '2022-04-26 09:43:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `affiliate_id` int(11) DEFAULT NULL,
  `affiliate_code` varchar(255) DEFAULT NULL,
  `total_score` double NOT NULL DEFAULT 0,
  `total_money` double NOT NULL DEFAULT 0,
  `total_payment` double NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(255) DEFAULT NULL,
  `email_verified` tinyint(1) NOT NULL DEFAULT 0,
  `email_verification_code` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `is_super_user` tinyint(1) NOT NULL DEFAULT 0,
  `avatar` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `count_view_info` int(11) NOT NULL DEFAULT 0,
  `country_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `json_profiles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_profiles`)),
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `affiliate_id`, `affiliate_code`, `total_score`, `total_money`, `total_payment`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `user_type`, `email_verified`, `email_verification_code`, `status`, `is_super_user`, `avatar`, `birthday`, `sex`, `phone`, `count_view_info`, `country_id`, `city_id`, `district_id`, `json_params`, `json_profiles`, `admin_updated_id`) VALUES
(2, NULL, '2', 105091500, 105091500, 0, 'Thắng Nguyễn', 'meta_thangnh', NULL, '$2y$10$V78sbM3Ny/Tvd/bWOLjCLeDDSgLmwlds8tWQh/nhXWCcQheYbtcQy', NULL, '2022-07-11 02:33:03', '2022-07-14 04:28:17', NULL, 0, NULL, 'active', 0, NULL, NULL, 'male', '098 226 9600', 0, NULL, NULL, NULL, NULL, NULL, 1),
(3, 2, 'mRpdEly6Bx3', 79243750, 79243750, 25850000, 'Thắng Nguyễn EDU', 'huuthangb2k50@gmail.com', NULL, '$2y$10$FLuZlM/WTtFZPKJW4PyC0efVJeTFeWSzichj1d/55v7Qe0aoEKVJu', NULL, '2022-07-11 03:04:45', '2022-07-14 04:28:17', NULL, 0, NULL, 'active', 0, NULL, NULL, 'male', '096 220 92 11', 0, NULL, NULL, NULL, NULL, NULL, 1),
(4, 3, 'qBmtRsfkwH4', 0, 0, 0, 'Thắng Nguyễn 2', 'meta_test', NULL, '$2y$10$SGOy7paQ82Pt8lbIg1Z0nuAhCR04yxYTIhXbqbK.3HoSSO/FIrumy', NULL, '2022-07-11 03:20:37', '2022-07-11 03:20:37', NULL, 0, NULL, 'active', 0, NULL, NULL, 'female', '1900 1570', 0, NULL, NULL, NULL, NULL, NULL, 1),
(5, 4, 'U7fj3GtOb95', 0, 0, 0, 'Nguyễn Hữu Thắng', 'meta_thangnguyen', NULL, '$2y$10$qb4Y74yT4dQhwk3ER8Cyq.qZBbif//5SLb3JK7PWysraIQ43Gnu/y', NULL, '2022-07-11 03:53:11', '2022-07-11 03:53:11', NULL, 0, NULL, 'active', 0, NULL, NULL, 'male', '0936.267.568', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 3, 'lM2Z3vEmFM6', 0, 0, 0, 'Bắc Hà AFL', 'meta_bacha', NULL, '$2y$10$36l5V8DsEp7rWar78gGaZe2XvrtKfg6qD/XvB/n/DFj7cg8iwF18y', NULL, '2022-07-11 18:08:34', '2022-07-11 18:08:34', NULL, 0, NULL, 'active', 0, NULL, NULL, NULL, '0936.267.568', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(7, NULL, 'ajXYJMQwtg7', 0, 0, 0, 'Lịch sử Apply', 'test_lai@gmail.com', NULL, '$2y$10$h2VUcj4EumZJHqG/ERzGDex59lR0qff6gkqD/9G4k8NlgE0ASaBEC', NULL, '2022-07-11 18:11:04', '2022-07-11 18:11:04', NULL, 0, NULL, 'active', 0, NULL, NULL, NULL, '0912 568 999', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(8, NULL, '1mQVhkwtR38', 0, 0, 0, 'Đặt lại mật khẩu', 'huuthangb2k250@gmail.com', NULL, '$2y$10$h2VUcj4EumZJHqG/ERzGDex59lR0qff6gkqD/9G4k8NlgE0ASaBEC', NULL, '2022-07-11 18:13:20', '2022-07-11 18:13:20', NULL, 0, NULL, 'active', 0, NULL, NULL, NULL, '098 226 9600', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 4, 'mLu1qHUYPF9', 0, 0, 0, 'Tags', 'test2@gmail.com', NULL, '$2y$10$g5hcIFbN9zr37wiikne1CuEmLMUC9JMUDfjvyu1URsUGCTLV5h5FK', NULL, '2022-07-11 18:25:50', '2022-07-11 18:30:37', NULL, 0, NULL, 'active', 0, NULL, NULL, NULL, '1900 1570', 0, NULL, NULL, NULL, NULL, NULL, 1),
(10, NULL, NULL, 0, 0, 0, 'thahtht', 'huuthsssangb2k50@gmail.com', NULL, '$2y$10$.GBS7UiUSPUQlXVgU5gtc.9vTuVC8l840g6sMth25Sq0bxwlIHkg6', NULL, '2023-02-13 10:37:32', '2023-02-13 10:37:32', NULL, 0, NULL, 'active', 0, NULL, NULL, NULL, '452525234234', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(11, NULL, NULL, 0, 0, 0, 'ssssss', 'huutssshangb2k50@gmail.com', NULL, '$2y$10$ddNjLDQbO6nFvrAeiMfSXuYBPodeeKGvA9Q9DZb0PnEsn7kUD7Fq6', NULL, '2023-02-13 10:39:16', '2023-02-13 10:39:16', NULL, 0, NULL, 'active', 0, NULL, NULL, NULL, '0332792626', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(12, NULL, NULL, 0, 0, 0, 'dd', 'duonddghiepit@gmail.com', NULL, '$2y$10$hYiXDY37aWD5E1tP3EEmUueovgP.W6R/HqlShTpix4MaNRiV5jd3q', NULL, '2023-02-13 10:52:41', '2023-02-13 10:52:41', NULL, 0, NULL, 'active', 0, NULL, NULL, NULL, '0332792626', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(28, NULL, NULL, 0, 0, 0, 'Thanh Kudo', 'donhuthanhxom@gmail.com', NULL, '$2y$10$FPnMMkSu9rX81JiVqASqquSM6KI7btlY7/zjlRxIRonCTBf.0tG7u', NULL, '2023-02-14 08:06:57', '2023-02-14 08:06:57', NULL, 0, 'I8vroWc2YHpO', 'pending', 0, NULL, NULL, NULL, '0355820911', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(29, NULL, NULL, 0, 0, 0, 'huuthangb2k50@gmail.com', 'huutdddddhangb2k50@gmail.com', NULL, '$2y$10$Ukt6lh7SvCJb8J7ngJK8D.bP3LYZ9LiHfEer6C9rKPgoum6CwpVDS', NULL, '2023-02-14 08:53:52', '2023-02-14 08:53:52', NULL, 0, 'P4NLF8TaEGM8', 'pending', 0, NULL, NULL, NULL, '0332792626', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(30, NULL, NULL, 0, 0, 0, 'huuthangb2k50@gmail.com', 'huuthdangb2k50@gmail.com', NULL, '$2y$10$.ZbeYbDhfVSepkvdodzTfeKnitYiP2JchgkzVIYZsaiTQTqNpdXf2', NULL, '2023-02-14 09:11:47', '2023-02-14 09:11:47', NULL, 0, '8EsEtdWb5SqJ', 'pending', 0, NULL, NULL, NULL, '0332792626', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(31, NULL, NULL, 0, 0, 0, 'manh', 's@gmail.com', NULL, '$2y$10$VsEclPXcuQ60J9wKp78KFOFsPaJWSfHz.ISdQuS9yV6g.UUPC/p6q', NULL, '2023-02-16 03:23:37', '2023-02-16 03:23:37', NULL, 0, 'GAAm3kEKBCwq', 'pending', 0, NULL, NULL, NULL, 'd', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(32, NULL, NULL, 0, 0, 0, 'Lê Mạnh Tưởng', 'tuonglee1001@gmail.com', NULL, '$2y$10$PJz16v3c3dyLzllqy5doN.TTBDrciLNnv5dKvawSoXXlt6HadRfum', NULL, '2023-03-17 03:52:00', '2023-03-17 03:52:00', NULL, 0, '7vNVSA0z2fUk', 'pending', 0, NULL, NULL, NULL, '0388830059', 0, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD KEY `admins_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `admins_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `tb_admin_menus`
--
ALTER TABLE `tb_admin_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_admin_menus_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_admin_menus_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_affiliate_historys`
--
ALTER TABLE `tb_affiliate_historys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_affiliate_historys_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_affiliate_historys_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_affiliate_payments`
--
ALTER TABLE `tb_affiliate_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_affiliate_payments_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_affiliate_payments_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_blocks`
--
ALTER TABLE `tb_blocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_blocks_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_blocks_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_block_contents`
--
ALTER TABLE `tb_block_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_block_contents_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_block_contents_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_bookings`
--
ALTER TABLE `tb_bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_bookings_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_bookings_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_branchs`
--
ALTER TABLE `tb_branchs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_branchs_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_branchs_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_cms_posts`
--
ALTER TABLE `tb_cms_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_cms_posts_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_cms_posts_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_cms_taxonomys`
--
ALTER TABLE `tb_cms_taxonomys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_cms_taxonomys_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_cms_taxonomys_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_components`
--
ALTER TABLE `tb_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_components_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_components_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_component_configs`
--
ALTER TABLE `tb_component_configs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_component_configs_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_component_configs_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_contacts`
--
ALTER TABLE `tb_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_contacts_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_contacts_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_languages`
--
ALTER TABLE `tb_languages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tb_logs`
--
ALTER TABLE `tb_logs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tb_menus`
--
ALTER TABLE `tb_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_menus_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_menus_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_modules`
--
ALTER TABLE `tb_modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tb_modules_module_code_unique` (`module_code`),
  ADD KEY `tb_modules_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_modules_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_module_functions`
--
ALTER TABLE `tb_module_functions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tb_module_functions_function_code_unique` (`function_code`),
  ADD KEY `tb_module_functions_module_id_foreign` (`module_id`),
  ADD KEY `tb_module_functions_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_module_functions_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_options`
--
ALTER TABLE `tb_options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tb_options_option_name_unique` (`option_name`),
  ADD KEY `tb_options_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_options_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_orders`
--
ALTER TABLE `tb_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_orders_customer_id_foreign` (`customer_id`),
  ADD KEY `tb_orders_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_orders_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_order_details`
--
ALTER TABLE `tb_order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_order_details_order_id_foreign` (`order_id`),
  ADD KEY `tb_order_details_item_id_foreign` (`item_id`),
  ADD KEY `tb_order_details_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_order_details_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_pages`
--
ALTER TABLE `tb_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_pages_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_pages_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_popups`
--
ALTER TABLE `tb_popups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_popups_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_popups_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_product_detail`
--
ALTER TABLE `tb_product_detail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tb_reviews`
--
ALTER TABLE `tb_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tb_roles`
--
ALTER TABLE `tb_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_roles_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_roles_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_widgets`
--
ALTER TABLE `tb_widgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_widgets_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_widgets_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_widget_configs`
--
ALTER TABLE `tb_widget_configs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_widget_configs_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_widget_configs_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_admin_updated_id_foreign` (`admin_updated_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `tb_admin_menus`
--
ALTER TABLE `tb_admin_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT cho bảng `tb_affiliate_historys`
--
ALTER TABLE `tb_affiliate_historys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tb_affiliate_payments`
--
ALTER TABLE `tb_affiliate_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tb_blocks`
--
ALTER TABLE `tb_blocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `tb_block_contents`
--
ALTER TABLE `tb_block_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=496;

--
-- AUTO_INCREMENT cho bảng `tb_bookings`
--
ALTER TABLE `tb_bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tb_branchs`
--
ALTER TABLE `tb_branchs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tb_cms_posts`
--
ALTER TABLE `tb_cms_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT cho bảng `tb_cms_taxonomys`
--
ALTER TABLE `tb_cms_taxonomys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT cho bảng `tb_components`
--
ALTER TABLE `tb_components`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tb_component_configs`
--
ALTER TABLE `tb_component_configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tb_contacts`
--
ALTER TABLE `tb_contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT cho bảng `tb_languages`
--
ALTER TABLE `tb_languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tb_logs`
--
ALTER TABLE `tb_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tb_menus`
--
ALTER TABLE `tb_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT cho bảng `tb_modules`
--
ALTER TABLE `tb_modules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `tb_module_functions`
--
ALTER TABLE `tb_module_functions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT cho bảng `tb_options`
--
ALTER TABLE `tb_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tb_orders`
--
ALTER TABLE `tb_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tb_order_details`
--
ALTER TABLE `tb_order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tb_pages`
--
ALTER TABLE `tb_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `tb_popups`
--
ALTER TABLE `tb_popups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tb_reviews`
--
ALTER TABLE `tb_reviews`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tb_roles`
--
ALTER TABLE `tb_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tb_widgets`
--
ALTER TABLE `tb_widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tb_widget_configs`
--
ALTER TABLE `tb_widget_configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `admins_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_admin_menus`
--
ALTER TABLE `tb_admin_menus`
  ADD CONSTRAINT `tb_admin_menus_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_admin_menus_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_affiliate_historys`
--
ALTER TABLE `tb_affiliate_historys`
  ADD CONSTRAINT `tb_affiliate_historys_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_affiliate_historys_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_affiliate_payments`
--
ALTER TABLE `tb_affiliate_payments`
  ADD CONSTRAINT `tb_affiliate_payments_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_affiliate_payments_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_blocks`
--
ALTER TABLE `tb_blocks`
  ADD CONSTRAINT `tb_blocks_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_blocks_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_block_contents`
--
ALTER TABLE `tb_block_contents`
  ADD CONSTRAINT `tb_block_contents_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_block_contents_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_bookings`
--
ALTER TABLE `tb_bookings`
  ADD CONSTRAINT `tb_bookings_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_bookings_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_branchs`
--
ALTER TABLE `tb_branchs`
  ADD CONSTRAINT `tb_branchs_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_branchs_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_cms_posts`
--
ALTER TABLE `tb_cms_posts`
  ADD CONSTRAINT `tb_cms_posts_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_cms_posts_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_cms_taxonomys`
--
ALTER TABLE `tb_cms_taxonomys`
  ADD CONSTRAINT `tb_cms_taxonomys_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_cms_taxonomys_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_components`
--
ALTER TABLE `tb_components`
  ADD CONSTRAINT `tb_components_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_components_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_component_configs`
--
ALTER TABLE `tb_component_configs`
  ADD CONSTRAINT `tb_component_configs_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_component_configs_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_contacts`
--
ALTER TABLE `tb_contacts`
  ADD CONSTRAINT `tb_contacts_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_contacts_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_menus`
--
ALTER TABLE `tb_menus`
  ADD CONSTRAINT `tb_menus_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_menus_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_modules`
--
ALTER TABLE `tb_modules`
  ADD CONSTRAINT `tb_modules_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_modules_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_module_functions`
--
ALTER TABLE `tb_module_functions`
  ADD CONSTRAINT `tb_module_functions_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_module_functions_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_options`
--
ALTER TABLE `tb_options`
  ADD CONSTRAINT `tb_options_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_options_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_orders`
--
ALTER TABLE `tb_orders`
  ADD CONSTRAINT `tb_orders_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_orders_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_order_details`
--
ALTER TABLE `tb_order_details`
  ADD CONSTRAINT `tb_order_details_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_order_details_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_pages`
--
ALTER TABLE `tb_pages`
  ADD CONSTRAINT `tb_pages_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_pages_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_popups`
--
ALTER TABLE `tb_popups`
  ADD CONSTRAINT `tb_popups_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_popups_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_roles`
--
ALTER TABLE `tb_roles`
  ADD CONSTRAINT `tb_roles_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_roles_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_widgets`
--
ALTER TABLE `tb_widgets`
  ADD CONSTRAINT `tb_widgets_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_widgets_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_widget_configs`
--
ALTER TABLE `tb_widget_configs`
  ADD CONSTRAINT `tb_widget_configs_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_widget_configs_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
