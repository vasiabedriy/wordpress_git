-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 30 2018 г., 16:02
-- Версия сервера: 5.6.38
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Коментатор WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-03-30 12:47:23', '2018-03-30 09:47:23', 'Привіт, це коментар.\nЩоби почати модерування, редагування, та видалення коментарів, будь ласка, відвідайте розділ коментарів у Майстерні.\nАватари коментаторів ідуть із <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_hf_submissions`
--

CREATE TABLE `wp_hf_submissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `form_id` int(10) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `user_agent` text,
  `ip_address` varchar(255) DEFAULT NULL,
  `referer_url` varchar(255) DEFAULT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_nf3_actions`
--

CREATE TABLE `wp_nf3_actions` (
  `id` int(11) NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_520_ci,
  `key` longtext COLLATE utf8mb4_unicode_520_ci,
  `type` longtext COLLATE utf8mb4_unicode_520_ci,
  `active` tinyint(1) DEFAULT '1',
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_nf3_actions`
--

INSERT INTO `wp_nf3_actions` (`id`, `title`, `key`, `type`, `active`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, '', '', 'save', 1, 1, '2018-05-15 12:36:02', '2018-05-15 15:36:02'),
(2, '', '', 'email', 1, 1, '2018-05-15 12:36:02', '2018-05-15 15:36:02'),
(3, '', '', 'email', 1, 1, '2018-05-15 12:36:02', '2018-05-15 15:36:02'),
(4, '', '', 'successmessage', 1, 1, '2018-05-15 12:36:02', '2018-05-15 15:36:02');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_nf3_action_meta`
--

CREATE TABLE `wp_nf3_action_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_nf3_action_meta`
--

INSERT INTO `wp_nf3_action_meta` (`id`, `parent_id`, `key`, `value`) VALUES
(1, 1, 'label', 'Store Submission'),
(2, 1, 'objectType', 'Action'),
(3, 1, 'objectDomain', 'actions'),
(4, 1, 'editActive', ''),
(5, 1, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(6, 1, 'payment_gateways', ''),
(7, 1, 'payment_total', ''),
(8, 1, 'tag', ''),
(9, 1, 'to', ''),
(10, 1, 'email_subject', ''),
(11, 1, 'email_message', ''),
(12, 1, 'from_name', ''),
(13, 1, 'from_address', ''),
(14, 1, 'reply_to', ''),
(15, 1, 'email_format', 'html'),
(16, 1, 'cc', ''),
(17, 1, 'bcc', ''),
(18, 1, 'attach_csv', ''),
(19, 1, 'redirect_url', ''),
(20, 1, 'email_message_plain', ''),
(21, 2, 'label', 'Email Confirmation'),
(22, 2, 'to', '{field:email}'),
(23, 2, 'subject', 'This is an email action.'),
(24, 2, 'message', 'Hello, Ninja Forms!'),
(25, 2, 'objectType', 'Action'),
(26, 2, 'objectDomain', 'actions'),
(27, 2, 'editActive', ''),
(28, 2, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:0:{}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(29, 2, 'payment_gateways', ''),
(30, 2, 'payment_total', ''),
(31, 2, 'tag', ''),
(32, 2, 'email_subject', 'Submission Confirmation '),
(33, 2, 'email_message', '<p>{all_fields_table}<br></p>'),
(34, 2, 'from_name', ''),
(35, 2, 'from_address', ''),
(36, 2, 'reply_to', ''),
(37, 2, 'email_format', 'html'),
(38, 2, 'cc', ''),
(39, 2, 'bcc', ''),
(40, 2, 'attach_csv', ''),
(41, 2, 'email_message_plain', ''),
(42, 3, 'objectType', 'Action'),
(43, 3, 'objectDomain', 'actions'),
(44, 3, 'editActive', ''),
(45, 3, 'label', 'Email Notification'),
(46, 3, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(47, 3, 'payment_gateways', ''),
(48, 3, 'payment_total', ''),
(49, 3, 'tag', ''),
(50, 3, 'to', '{system:admin_email}'),
(51, 3, 'email_subject', 'New message from {field:name}'),
(52, 3, 'email_message', '<p>{field:message}</p><p>-{field:name} ( {field:email} )</p>'),
(53, 3, 'from_name', ''),
(54, 3, 'from_address', ''),
(55, 3, 'reply_to', '{field:email}'),
(56, 3, 'email_format', 'html'),
(57, 3, 'cc', ''),
(58, 3, 'bcc', ''),
(59, 3, 'attach_csv', '0'),
(60, 3, 'email_message_plain', ''),
(61, 4, 'label', 'Success Message'),
(62, 4, 'message', 'Thank you {field:name} for filling out my form!'),
(63, 4, 'objectType', 'Action'),
(64, 4, 'objectDomain', 'actions'),
(65, 4, 'editActive', ''),
(66, 4, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(67, 4, 'payment_gateways', ''),
(68, 4, 'payment_total', ''),
(69, 4, 'tag', ''),
(70, 4, 'to', ''),
(71, 4, 'email_subject', ''),
(72, 4, 'email_message', ''),
(73, 4, 'from_name', ''),
(74, 4, 'from_address', ''),
(75, 4, 'reply_to', ''),
(76, 4, 'email_format', 'html'),
(77, 4, 'cc', ''),
(78, 4, 'bcc', ''),
(79, 4, 'attach_csv', ''),
(80, 4, 'redirect_url', ''),
(81, 4, 'success_msg', '<p>Form submitted successfully.</p><p>A confirmation email was sent to {field:email}.</p>'),
(82, 4, 'email_message_plain', '');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_nf3_fields`
--

CREATE TABLE `wp_nf3_fields` (
  `id` int(11) NOT NULL,
  `label` longtext COLLATE utf8mb4_unicode_520_ci,
  `key` longtext COLLATE utf8mb4_unicode_520_ci,
  `type` longtext COLLATE utf8mb4_unicode_520_ci,
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_nf3_fields`
--

INSERT INTO `wp_nf3_fields` (`id`, `label`, `key`, `type`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, 1, '2018-05-15 12:36:01', '2018-05-15 15:36:01'),
(2, NULL, NULL, NULL, 1, '2018-05-15 12:36:01', '2018-05-15 15:36:01'),
(3, NULL, NULL, NULL, 1, '2018-05-15 12:36:01', '2018-05-15 15:36:01'),
(4, NULL, NULL, NULL, 1, '2018-05-15 12:36:01', '2018-05-15 15:36:01');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_nf3_field_meta`
--

CREATE TABLE `wp_nf3_field_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_nf3_forms`
--

CREATE TABLE `wp_nf3_forms` (
  `id` int(11) NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_520_ci,
  `key` longtext COLLATE utf8mb4_unicode_520_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `subs` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_nf3_forms`
--

INSERT INTO `wp_nf3_forms` (`id`, `title`, `key`, `created_at`, `updated_at`, `views`, `subs`) VALUES
(1, 'Contact Me', '', '2018-05-15 12:36:01', '2018-05-15 15:36:01', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_nf3_form_meta`
--

CREATE TABLE `wp_nf3_form_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_nf3_form_meta`
--

INSERT INTO `wp_nf3_form_meta` (`id`, `parent_id`, `key`, `value`) VALUES
(1, 1, 'default_label_pos', 'above'),
(2, 1, 'conditions', 'a:0:{}'),
(3, 1, 'objectType', 'Form Setting'),
(4, 1, 'editActive', ''),
(5, 1, 'show_title', '1'),
(6, 1, 'clear_complete', '1'),
(7, 1, 'hide_complete', '1'),
(8, 1, 'wrapper_class', ''),
(9, 1, 'element_class', ''),
(10, 1, 'add_submit', '1'),
(11, 1, 'logged_in', ''),
(12, 1, 'not_logged_in_msg', ''),
(13, 1, 'sub_limit_number', ''),
(14, 1, 'sub_limit_msg', ''),
(15, 1, 'calculations', 'a:0:{}'),
(16, 1, 'formContentData', 'a:4:{i:0;a:2:{s:5:\"order\";s:1:\"0\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:4:\"name\";}s:5:\"width\";s:3:\"100\";}}}i:1;a:2:{s:5:\"order\";s:1:\"1\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:5:\"email\";}s:5:\"width\";s:3:\"100\";}}}i:2;a:2:{s:5:\"order\";s:1:\"2\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:7:\"message\";}s:5:\"width\";s:3:\"100\";}}}i:3;a:2:{s:5:\"order\";s:1:\"3\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:6:\"submit\";}s:5:\"width\";s:3:\"100\";}}}}'),
(17, 1, 'container_styles_background-color', ''),
(18, 1, 'container_styles_border', ''),
(19, 1, 'container_styles_border-style', ''),
(20, 1, 'container_styles_border-color', ''),
(21, 1, 'container_styles_color', ''),
(22, 1, 'container_styles_height', ''),
(23, 1, 'container_styles_width', ''),
(24, 1, 'container_styles_font-size', ''),
(25, 1, 'container_styles_margin', ''),
(26, 1, 'container_styles_padding', ''),
(27, 1, 'container_styles_display', ''),
(28, 1, 'container_styles_float', ''),
(29, 1, 'container_styles_show_advanced_css', '0'),
(30, 1, 'container_styles_advanced', ''),
(31, 1, 'title_styles_background-color', ''),
(32, 1, 'title_styles_border', ''),
(33, 1, 'title_styles_border-style', ''),
(34, 1, 'title_styles_border-color', ''),
(35, 1, 'title_styles_color', ''),
(36, 1, 'title_styles_height', ''),
(37, 1, 'title_styles_width', ''),
(38, 1, 'title_styles_font-size', ''),
(39, 1, 'title_styles_margin', ''),
(40, 1, 'title_styles_padding', ''),
(41, 1, 'title_styles_display', ''),
(42, 1, 'title_styles_float', ''),
(43, 1, 'title_styles_show_advanced_css', '0'),
(44, 1, 'title_styles_advanced', ''),
(45, 1, 'row_styles_background-color', ''),
(46, 1, 'row_styles_border', ''),
(47, 1, 'row_styles_border-style', ''),
(48, 1, 'row_styles_border-color', ''),
(49, 1, 'row_styles_color', ''),
(50, 1, 'row_styles_height', ''),
(51, 1, 'row_styles_width', ''),
(52, 1, 'row_styles_font-size', ''),
(53, 1, 'row_styles_margin', ''),
(54, 1, 'row_styles_padding', ''),
(55, 1, 'row_styles_display', ''),
(56, 1, 'row_styles_show_advanced_css', '0'),
(57, 1, 'row_styles_advanced', ''),
(58, 1, 'row-odd_styles_background-color', ''),
(59, 1, 'row-odd_styles_border', ''),
(60, 1, 'row-odd_styles_border-style', ''),
(61, 1, 'row-odd_styles_border-color', ''),
(62, 1, 'row-odd_styles_color', ''),
(63, 1, 'row-odd_styles_height', ''),
(64, 1, 'row-odd_styles_width', ''),
(65, 1, 'row-odd_styles_font-size', ''),
(66, 1, 'row-odd_styles_margin', ''),
(67, 1, 'row-odd_styles_padding', ''),
(68, 1, 'row-odd_styles_display', ''),
(69, 1, 'row-odd_styles_show_advanced_css', '0'),
(70, 1, 'row-odd_styles_advanced', ''),
(71, 1, 'success-msg_styles_background-color', ''),
(72, 1, 'success-msg_styles_border', ''),
(73, 1, 'success-msg_styles_border-style', ''),
(74, 1, 'success-msg_styles_border-color', ''),
(75, 1, 'success-msg_styles_color', ''),
(76, 1, 'success-msg_styles_height', ''),
(77, 1, 'success-msg_styles_width', ''),
(78, 1, 'success-msg_styles_font-size', ''),
(79, 1, 'success-msg_styles_margin', ''),
(80, 1, 'success-msg_styles_padding', ''),
(81, 1, 'success-msg_styles_display', ''),
(82, 1, 'success-msg_styles_show_advanced_css', '0'),
(83, 1, 'success-msg_styles_advanced', ''),
(84, 1, 'error_msg_styles_background-color', ''),
(85, 1, 'error_msg_styles_border', ''),
(86, 1, 'error_msg_styles_border-style', ''),
(87, 1, 'error_msg_styles_border-color', ''),
(88, 1, 'error_msg_styles_color', ''),
(89, 1, 'error_msg_styles_height', ''),
(90, 1, 'error_msg_styles_width', ''),
(91, 1, 'error_msg_styles_font-size', ''),
(92, 1, 'error_msg_styles_margin', ''),
(93, 1, 'error_msg_styles_padding', ''),
(94, 1, 'error_msg_styles_display', ''),
(95, 1, 'error_msg_styles_show_advanced_css', '0'),
(96, 1, 'error_msg_styles_advanced', '');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_nf3_objects`
--

CREATE TABLE `wp_nf3_objects` (
  `id` int(11) NOT NULL,
  `type` longtext COLLATE utf8mb4_unicode_520_ci,
  `title` longtext COLLATE utf8mb4_unicode_520_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_nf3_object_meta`
--

CREATE TABLE `wp_nf3_object_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_nf3_relationships`
--

CREATE TABLE `wp_nf3_relationships` (
  `id` int(11) NOT NULL,
  `child_id` int(11) NOT NULL,
  `child_type` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `parent_type` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://test', 'yes'),
(2, 'home', 'http://test', 'yes'),
(3, 'blogname', 'test', 'yes'),
(4, 'blogdescription', 'Просто ще один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'vasiabedriy@ukr.net', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:43:\"cm-registration-pro/cm-registration-pro.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:29:\"qrcode-wprhe/qrcode_wprhe.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'test', 'yes'),
(41, 'stylesheet', 'test', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:2:{s:43:\"cm-registration-pro/cm-registration-pro.php\";a:2:{i:0;s:27:\"com\\cminds\\registration\\App\";i:1;s:16:\"deactivatePlugin\";}s:27:\"ninja-forms/ninja-forms.php\";s:21:\"ninja_forms_uninstall\";}', 'no'),
(82, 'timezone_string', 'Europe/Kiev', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:10:\"edit_forms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'uk', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'cron', 'a:6:{i:1527688882;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1527716844;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1527745781;a:1:{s:27:\"cmreg_delete_inactive_users\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1527760055;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1527760123;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(123, 'can_compress_scripts', '1', 'no'),
(135, 'theme_mods_twentyseventeen', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1522403286;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(136, 'current_theme', 'Test', 'yes'),
(137, 'theme_mods_test', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(138, 'theme_switched', '', 'yes'),
(157, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:19:\"vasiabedriy@ukr.net\";s:7:\"version\";s:5:\"4.9.6\";s:9:\"timestamp\";i:1527144542;}', 'no'),
(179, 'recently_activated', 'a:0:{}', 'yes'),
(182, 'cmregplugin_error', '', 'yes'),
(183, 'cmreg_update_methods', 'a:2:{i:0;s:27:\"update_1_9_0_profile_fields\";i:1;s:44:\"update_2_4_0_add_registration_profile_fields\";}', 'yes'),
(185, 'rewrite_rules', 'a:130:{s:18:\"cmreg_invitcode/?$\";s:35:\"index.php?post_type=cmreg_invitcode\";s:48:\"cmreg_invitcode/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?post_type=cmreg_invitcode&feed=$matches[1]\";s:43:\"cmreg_invitcode/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?post_type=cmreg_invitcode&feed=$matches[1]\";s:35:\"cmreg_invitcode/page/([0-9]{1,})/?$\";s:53:\"index.php?post_type=cmreg_invitcode&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:43:\"cmreg_invitcode/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:53:\"cmreg_invitcode/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:73:\"cmreg_invitcode/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"cmreg_invitcode/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"cmreg_invitcode/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:49:\"cmreg_invitcode/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"cmreg_invitcode/([^/]+)/embed/?$\";s:48:\"index.php?cmreg_invitcode=$matches[1]&embed=true\";s:36:\"cmreg_invitcode/([^/]+)/trackback/?$\";s:42:\"index.php?cmreg_invitcode=$matches[1]&tb=1\";s:56:\"cmreg_invitcode/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?cmreg_invitcode=$matches[1]&feed=$matches[2]\";s:51:\"cmreg_invitcode/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?cmreg_invitcode=$matches[1]&feed=$matches[2]\";s:44:\"cmreg_invitcode/([^/]+)/page/?([0-9]{1,})/?$\";s:55:\"index.php?cmreg_invitcode=$matches[1]&paged=$matches[2]\";s:51:\"cmreg_invitcode/([^/]+)/comment-page-([0-9]{1,})/?$\";s:55:\"index.php?cmreg_invitcode=$matches[1]&cpage=$matches[2]\";s:40:\"cmreg_invitcode/([^/]+)(?:/([0-9]+))?/?$\";s:54:\"index.php?cmreg_invitcode=$matches[1]&page=$matches[2]\";s:32:\"cmreg_invitcode/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"cmreg_invitcode/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"cmreg_invitcode/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"cmreg_invitcode/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"cmreg_invitcode/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"cmreg_invitcode/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:47:\"cmreg_profile_field/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"cmreg_profile_field/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"cmreg_profile_field/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"cmreg_profile_field/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"cmreg_profile_field/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"cmreg_profile_field/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"cmreg_profile_field/([^/]+)/embed/?$\";s:52:\"index.php?cmreg_profile_field=$matches[1]&embed=true\";s:40:\"cmreg_profile_field/([^/]+)/trackback/?$\";s:46:\"index.php?cmreg_profile_field=$matches[1]&tb=1\";s:48:\"cmreg_profile_field/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?cmreg_profile_field=$matches[1]&paged=$matches[2]\";s:55:\"cmreg_profile_field/([^/]+)/comment-page-([0-9]{1,})/?$\";s:59:\"index.php?cmreg_profile_field=$matches[1]&cpage=$matches[2]\";s:44:\"cmreg_profile_field/([^/]+)(?:/([0-9]+))?/?$\";s:58:\"index.php?cmreg_profile_field=$matches[1]&page=$matches[2]\";s:36:\"cmreg_profile_field/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"cmreg_profile_field/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"cmreg_profile_field/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"cmreg_profile_field/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"cmreg_profile_field/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"cmreg_profile_field/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(190, 'cminds-cmreg-last-update-info', 'a:4:{s:15:\"current-version\";s:5:\"2.5.0\";s:12:\"needs-update\";b:0;s:14:\"newest-version\";s:5:\"2.5.0\";s:12:\"last-updated\";s:19:\"2018-05-22 13:29:43\";}', 'yes'),
(191, 'cminds-cmreg-last-update-check', '1528460867', 'yes'),
(292, 'ampforwp_rewrite_flush_option', 'true', 'yes'),
(293, '_transient_ampforwp_current_version_check', '0.9.86.1', 'yes'),
(294, 'redux_builder_amp', 'a:412:{s:8:\"last_tab\";s:1:\"2\";s:9:\"opt-media\";a:5:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:31:\"ampforwp-custom-logo-dimensions\";s:1:\"0\";s:39:\"ampforwp-custom-logo-dimensions-options\";s:8:\"flexible\";s:38:\"ampforwp-custom-logo-dimensions-slider\";s:3:\"100\";s:15:\"opt-media-width\";s:3:\"190\";s:16:\"opt-media-height\";s:2:\"36\";s:24:\"amp-on-off-for-all-posts\";s:1:\"1\";s:24:\"amp-on-off-for-all-pages\";s:1:\"1\";s:32:\"ampforwp-homepage-on-off-support\";s:1:\"1\";s:27:\"amp-frontpage-select-option\";s:1:\"1\";s:33:\"amp-frontpage-select-option-pages\";s:1:\"5\";s:28:\"ampforwp-title-on-front-page\";s:1:\"1\";s:24:\"ampforwp-archive-support\";s:1:\"0\";s:26:\"ampforwp-amp-convert-to-wp\";s:1:\"0\";s:21:\"ampforwp-amp-takeover\";s:1:\"0\";s:16:\"enable-amp-ads-1\";s:1:\"0\";s:23:\"enable-amp-ads-select-1\";s:1:\"2\";s:34:\"enable-amp-ads-text-feild-client-1\";s:0:\"\";s:32:\"enable-amp-ads-text-feild-slot-1\";s:0:\"\";s:21:\"enable-amp-ads-resp-1\";s:1:\"0\";s:16:\"enable-amp-ads-2\";s:1:\"0\";s:23:\"enable-amp-ads-select-2\";s:1:\"2\";s:34:\"enable-amp-ads-text-feild-client-2\";s:0:\"\";s:32:\"enable-amp-ads-text-feild-slot-2\";s:0:\"\";s:21:\"enable-amp-ads-resp-2\";s:1:\"0\";s:16:\"enable-amp-ads-3\";s:1:\"0\";s:23:\"enable-amp-ads-select-3\";s:1:\"2\";s:34:\"enable-amp-ads-text-feild-client-3\";s:0:\"\";s:32:\"enable-amp-ads-text-feild-slot-3\";s:0:\"\";s:21:\"enable-amp-ads-resp-3\";s:1:\"0\";s:16:\"enable-amp-ads-4\";s:1:\"0\";s:23:\"enable-amp-ads-select-4\";s:1:\"2\";s:34:\"enable-amp-ads-text-feild-client-4\";s:0:\"\";s:32:\"enable-amp-ads-text-feild-slot-4\";s:0:\"\";s:21:\"enable-amp-ads-resp-4\";s:1:\"0\";s:16:\"enable-amp-ads-5\";s:1:\"0\";s:23:\"enable-amp-ads-select-5\";s:1:\"2\";s:34:\"enable-amp-ads-text-feild-client-5\";s:0:\"\";s:32:\"enable-amp-ads-text-feild-slot-5\";s:0:\"\";s:21:\"enable-amp-ads-resp-5\";s:1:\"0\";s:16:\"enable-amp-ads-6\";s:1:\"0\";s:23:\"enable-amp-ads-select-6\";s:1:\"2\";s:34:\"enable-amp-ads-text-feild-client-6\";s:0:\"\";s:32:\"enable-amp-ads-text-feild-slot-6\";s:0:\"\";s:21:\"enable-amp-ads-resp-6\";s:1:\"0\";s:34:\"ampforwp-ads-data-loading-strategy\";s:1:\"0\";s:24:\"ampforwp-ads-sponsorship\";s:1:\"0\";s:30:\"ampforwp-ads-sponsorship-label\";s:0:\"\";s:29:\"ampforwp-seo-meta-description\";s:1:\"0\";s:35:\"ampforwp-seo-custom-additional-meta\";s:0:\"\";s:22:\"ampforwp-seo-selection\";s:0:\"\";s:23:\"ampforwp-seo-yoast-meta\";s:1:\"1\";s:30:\"ampforwp-seo-yoast-description\";s:1:\"0\";s:42:\"ampforwp-robots-archive-sub-pages-sitewide\";s:1:\"0\";s:36:\"ampforwp-robots-archive-author-pages\";s:1:\"1\";s:34:\"ampforwp-robots-archive-date-pages\";s:1:\"1\";s:38:\"ampforwp-robots-archive-category-pages\";s:1:\"1\";s:33:\"ampforwp-robots-archive-tag-pages\";s:1:\"1\";s:28:\"ampforwp_cache_minimize_mode\";s:1:\"0\";s:27:\"amp-analytics-select-option\";s:1:\"1\";s:18:\"ampforwp-ga-switch\";s:0:\"\";s:8:\"ga-feild\";s:10:\"UA-XXXXX-Y\";s:32:\"ampforwp-ga-field-advance-switch\";s:1:\"0\";s:25:\"ampforwp-ga-field-advance\";s:300:\"{\r\n    \"vars\": {\r\n        \"account\": \"UA-xxxxxxx-x\"  //Replace this with your Tracking ID\r\n    },\r\n    \"triggers\": {\r\n        \"trackPageview\": {\r\n            \"on\": \"visible\",\r\n            \"request\": \"pageview\",\r\n        },\r\n    /** \r\n     * Enter your Advanced Analytics code here\r\n    */\r\n\r\n    }\r\n}\";s:18:\"amp-use-gtm-option\";s:1:\"1\";s:10:\"amp-gtm-id\";s:0:\"\";s:22:\"amp-gtm-analytics-code\";s:0:\"\";s:12:\"amp-fb-pixel\";s:1:\"0\";s:15:\"amp-fb-pixel-id\";s:0:\"\";s:23:\"ampforwp-Segment-switch\";s:0:\"\";s:8:\"sa-feild\";s:17:\"SEGMENT-WRITE-KEY\";s:21:\"ampforwp-Piwik-switch\";s:0:\"\";s:8:\"pa-feild\";s:1:\"#\";s:25:\"ampforwp-Quantcast-switch\";s:0:\"\";s:28:\"amp-quantcast-analytics-code\";s:0:\"\";s:24:\"ampforwp-comScore-switch\";s:0:\"\";s:30:\"amp-comscore-analytics-code-c1\";s:1:\"1\";s:30:\"amp-comscore-analytics-code-c2\";s:0:\"\";s:25:\"ampforwp-Effective-switch\";s:0:\"\";s:9:\"eam-feild\";s:1:\"#\";s:27:\"ampforwp-StatCounter-switch\";s:0:\"\";s:8:\"sc-feild\";s:1:\"#\";s:23:\"ampforwp-Histats-switch\";s:0:\"\";s:13:\"histats-feild\";s:0:\"\";s:22:\"ampforwp-Yandex-switch\";s:0:\"\";s:33:\"amp-Yandex-Metrika-analytics-code\";s:0:\"\";s:25:\"ampforwp-Chartbeat-switch\";s:0:\"\";s:28:\"amp-Chartbeat-analytics-code\";s:0:\"\";s:21:\"ampforwp-Alexa-switch\";s:0:\"\";s:22:\"ampforwp-alexa-account\";s:0:\"\";s:21:\"ampforwp-alexa-domain\";s:0:\"\";s:29:\"ampforwp-afs-analytics-switch\";s:0:\"\";s:19:\"ampforwp-afs-siteid\";s:0:\"\";s:22:\"ampforwp-sd-type-posts\";s:11:\"BlogPosting\";s:22:\"ampforwp-sd-type-pages\";s:11:\"BlogPosting\";s:24:\"amp-structured-data-logo\";a:5:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:27:\"ampforwp-sd-logo-dimensions\";s:1:\"0\";s:22:\"ampforwp-sd-logo-width\";s:3:\"600\";s:23:\"ampforwp-sd-logo-height\";s:2:\"60\";s:37:\"amp-structured-data-placeholder-image\";a:5:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:43:\"amp-structured-data-placeholder-image-width\";s:3:\"700\";s:44:\"amp-structured-data-placeholder-image-height\";s:3:\"550\";s:39:\"amporwp-structured-data-video-thumb-url\";a:5:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:24:\"amp-enable-notifications\";s:0:\"\";s:21:\"amp-notification-text\";s:26:\"This website uses cookies.\";s:22:\"amp-accept-button-text\";s:6:\"Accept\";s:26:\"amp-gdpr-compliance-switch\";s:1:\"0\";s:33:\"amp-gdpr-compliance-headline-text\";s:8:\"Headline\";s:28:\"amp-gdpr-compliance-textarea\";s:0:\"\";s:31:\"amp-gdpr-compliance-accept-text\";s:6:\"Accept\";s:31:\"amp-gdpr-compliance-reject-text\";s:6:\"Reject\";s:33:\"amp-gdpr-compliance-settings-text\";s:16:\"Privacy Settings\";s:27:\"ampforwp-web-push-onesignal\";s:1:\"0\";s:26:\"ampforwp-one-signal-app-id\";s:0:\"\";s:41:\"ampforwp-web-push-onesignal-below-content\";s:1:\"1\";s:41:\"ampforwp-web-push-onesignal-above-content\";s:1:\"0\";s:39:\"ampforwp-onesignal-translator-subscribe\";s:20:\"Subscribe to updates\";s:41:\"ampforwp-onesignal-translator-unsubscribe\";s:24:\"Unsubscribe from updates\";s:28:\"ampforwp-onesignal-http-site\";s:1:\"0\";s:28:\"ampforwp-onesignal-subdomain\";s:0:\"\";s:22:\"amp-enable-contactform\";s:0:\"\";s:31:\"amp-enable-gravityforms_support\";s:0:\"\";s:26:\"wordpress-comments-support\";s:0:\"\";s:27:\"ampforwp-number-of-comments\";s:2:\"10\";s:32:\"ampforwp-disqus-comments-support\";s:1:\"0\";s:29:\"ampforwp-disqus-comments-name\";s:0:\"\";s:29:\"ampforwp-disqus-host-position\";s:1:\"1\";s:25:\"ampforwp-disqus-host-file\";s:0:\"\";s:22:\"ampforwp-disqus-layout\";s:10:\"responsive\";s:22:\"ampforwp-disqus-height\";s:3:\"420\";s:34:\"ampforwp-facebook-comments-support\";s:1:\"0\";s:36:\"ampforwp-number-of-fb-no-of-comments\";s:2:\"10\";s:25:\"fb-instant-article-switch\";s:1:\"0\";s:33:\"ampforwp-fb-instant-article-posts\";s:2:\"50\";s:35:\"ampforwp-instant-article-author-bio\";s:1:\"0\";s:22:\"fb-instant-article-ads\";s:1:\"0\";s:24:\"fb-instant-article-ad-id\";s:0:\"\";s:35:\"fb-instant-article-ad-density-setup\";s:7:\"default\";s:28:\"fb-instant-article-analytics\";s:1:\"0\";s:33:\"fb-instant-article-analytics-code\";s:0:\"\";s:22:\"amp-pages-meta-default\";s:4:\"show\";s:19:\"hide-amp-categories\";a:1:{i:1;s:0:\"\";}s:22:\"amp-mobile-redirection\";s:1:\"0\";s:18:\"amp-core-end-point\";s:1:\"0\";s:29:\"amp-header-text-area-for-html\";s:0:\"\";s:18:\"amp-body-text-area\";s:0:\"\";s:29:\"amp-footer-text-area-for-html\";s:0:\"\";s:27:\"ampforwp-auto-amp-menu-link\";s:1:\"0\";s:35:\"ampforwp-category-base-removel-link\";s:1:\"0\";s:30:\"ampforwp-tag-base-removal-link\";s:1:\"0\";s:44:\"ampforwp-custom-fields-featured-image-switch\";s:1:\"0\";s:37:\"ampforwp-custom-fields-featured-image\";s:0:\"\";s:36:\"ampforwp-featured-image-from-content\";s:1:\"0\";s:33:\"ampforwp-duplicate-featured-image\";s:1:\"0\";s:22:\"ampforwp-retina-images\";s:1:\"0\";s:20:\"amp-meta-permissions\";s:3:\"all\";s:25:\"ampforwp-development-mode\";s:1:\"0\";s:32:\"ampforwp-update-notification-bar\";s:1:\"1\";s:20:\"ampforwp-wptexturize\";s:1:\"0\";s:24:\"ampforwp-content-builder\";s:1:\"0\";s:28:\"ampforwp-delete-on-uninstall\";s:1:\"0\";s:11:\"amp-use-pot\";s:1:\"0\";s:40:\"amp-translator-breadcrumbs-homepage-text\";s:8:\"Homepage\";s:25:\"amp-translator-fourohfour\";s:33:\"Oops! That page can’t be found.\";s:35:\"amp-translator-show-more-posts-text\";s:15:\"Show more Posts\";s:39:\"amp-translator-show-previous-posts-text\";s:19:\"Show previous Posts\";s:23:\"amp-translator-top-text\";s:3:\"Top\";s:32:\"amp-translator-non-amp-page-text\";s:20:\"View Non-AMP Version\";s:27:\"amp-translator-related-text\";s:12:\"Related Post\";s:26:\"amp-translator-recent-text\";s:12:\"Recent Posts\";s:28:\"amp-translator-navigate-text\";s:8:\"Navigate\";s:22:\"amp-translator-on-text\";s:2:\"On\";s:24:\"amp-translator-next-text\";s:4:\"Next\";s:28:\"amp-translator-previous-text\";s:8:\"Previous\";s:24:\"amp-translator-page-text\";s:4:\"Page\";s:28:\"amp-translator-archives-text\";s:8:\"Archives\";s:38:\"amp-translator-breadcrumbs-search-text\";s:18:\"Search results for\";s:29:\"amp-translator-error-404-text\";s:9:\"Error 404\";s:26:\"amp-translator-footer-text\";s:19:\"All Rights Reserved\";s:30:\"amp-translator-categories-text\";s:12:\"Categories: \";s:24:\"amp-translator-tags-text\";s:6:\"Tags: \";s:22:\"amp-translator-by-text\";s:2:\"By\";s:27:\"amp-translator-published-by\";s:12:\"Published by\";s:29:\"amp-translator-in-designthree\";s:2:\"in\";s:33:\"amp-translator-view-comments-text\";s:13:\"View Comments\";s:35:\"amp-translator-leave-a-comment-text\";s:15:\"Leave a Comment\";s:30:\"amp-translator-comments-closed\";s:20:\"Comments are closed.\";s:22:\"amp-translator-at-text\";s:2:\"at\";s:24:\"amp-translator-says-text\";s:4:\"says\";s:24:\"amp-translator-Edit-text\";s:4:\"Edit\";s:28:\"amp-translator-ago-date-text\";s:3:\"ago\";s:33:\"amp-translator-modified-date-text\";s:31:\"This post was last modified on \";s:31:\"amp-translator-archive-cat-text\";s:10:\"Category: \";s:31:\"amp-translator-archive-tag-text\";s:5:\"Tag: \";s:29:\"amp-translator-show-more-text\";s:15:\"View More Posts\";s:29:\"amp-translator-next-read-text\";s:11:\"Next Read: \";s:23:\"amp-translator-via-text\";s:3:\"via\";s:25:\"amp-translator-share-text\";s:5:\"Share\";s:26:\"amp-translator-search-text\";s:19:\" You searched for: \";s:30:\"amp-translator-search-no-found\";s:49:\" It seems we can\'t find what you\'re looking for. \";s:23:\"amp-translator-and-text\";s:5:\" and \";s:27:\"ampforwp-search-placeholder\";s:9:\"Type Here\";s:19:\"amp-design-selector\";s:1:\"4\";s:18:\"swift-color-scheme\";a:3:{s:5:\"color\";s:7:\"#005be2\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:16:\"rgba(0,91,226,1)\";}s:30:\"amp-opt-color-rgba-colorscheme\";a:3:{s:5:\"color\";s:7:\"#F42F42\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:17:\"rgba(244,47,66,1)\";}s:23:\"amp-opt-color-rgba-font\";a:3:{s:5:\"color\";s:4:\"#fff\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:19:\"rgba(255,255,255,1)\";}s:23:\"amp-opt-color-rgba-link\";a:3:{s:5:\"color\";s:7:\"#f42f42\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:17:\"rgba(244,47,66,1)\";}s:31:\"amp-opt-color-rgba-link-design2\";a:3:{s:5:\"color\";s:7:\"#0a89c0\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:18:\"rgba(10,137,192,1)\";}s:31:\"amp-opt-color-rgba-link-design1\";a:3:{s:5:\"color\";s:7:\"#0a89c0\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:18:\"rgba(10,137,192,1)\";}s:35:\"amp-opt-color-rgba-colorscheme-call\";a:3:{s:5:\"color\";s:7:\"#0a89c0\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:18:\"rgba(10,137,192,1)\";}s:19:\"google_font_api_key\";s:0:\"\";s:17:\"amp_font_selector\";s:0:\"\";s:24:\"google_current_font_data\";s:0:\"\";s:10:\"css_editor\";s:54:\"/******* Paste your Custom CSS in this Editor *******/\";s:11:\"header-type\";s:1:\"1\";s:9:\"menu-type\";s:1:\"1\";s:11:\"menu-search\";s:1:\"1\";s:19:\"amp-swift-menu-cprt\";s:1:\"1\";s:12:\"primary-menu\";s:1:\"1\";s:28:\"primary-menu-padding-control\";a:5:{s:11:\"padding-top\";s:4:\"12px\";s:13:\"padding-right\";s:4:\"25px\";s:14:\"padding-bottom\";s:4:\"12px\";s:12:\"padding-left\";s:4:\"25px\";s:5:\"units\";s:2:\"px\";}s:24:\"primary-menu-text-scheme\";a:3:{s:5:\"color\";s:0:\"\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:15:\"rgb(53, 53, 53)\";}s:30:\"primary-menu-background-scheme\";a:3:{s:5:\"color\";s:0:\"\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:18:\"rgb(239, 239, 239)\";}s:13:\"signin-button\";s:1:\"0\";s:18:\"signin-button-text\";s:12:\"Sign up free\";s:18:\"signin-button-link\";s:1:\"#\";s:19:\"signin-button-style\";s:1:\"0\";s:25:\"signin-button-border-line\";s:1:\"2\";s:24:\"signin-button-text-color\";a:3:{s:5:\"color\";s:0:\"\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:12:\"rgb(0, 0, 0)\";}s:26:\"signin-button-border-color\";a:3:{s:5:\"color\";s:0:\"\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:12:\"rgb(0, 0, 0)\";}s:11:\"border-type\";s:1:\"1\";s:13:\"border-radius\";s:2:\"10\";s:17:\"ampforwp-amp-menu\";s:1:\"1\";s:23:\"ampforwp-callnow-button\";s:1:\"0\";s:27:\"enable-amp-call-numberfield\";s:0:\"\";s:40:\"amp-on-off-support-for-non-amp-home-page\";s:1:\"0\";s:19:\"amp-opt-sticky-head\";s:1:\"0\";s:27:\"amp-design-3-search-feature\";s:1:\"0\";s:27:\"amp-design-2-search-feature\";s:1:\"0\";s:27:\"amp-design-1-search-feature\";s:1:\"0\";s:24:\"amp-swift-search-feature\";s:1:\"1\";s:17:\"amp-sticky-header\";s:1:\"0\";s:30:\"amp-opt-color-rgba-headercolor\";a:3:{s:5:\"color\";s:7:\"#FFFFFF\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:19:\"rgba(255,255,255,1)\";}s:33:\"amp-opt-color-rgba-headerelements\";a:3:{s:5:\"color\";s:4:\"#333\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:16:\"rgba(51,51,51,1)\";}s:17:\"customize-options\";s:1:\"0\";s:19:\"swift-width-control\";s:6:\"1100px\";s:20:\"swift-height-control\";s:4:\"60px\";s:22:\"margin-padding-options\";s:1:\"0\";s:21:\"swift-padding-control\";a:5:{s:11:\"padding-top\";s:1:\"0\";s:13:\"padding-right\";s:1:\"0\";s:14:\"padding-bottom\";s:1:\"0\";s:12:\"padding-left\";s:1:\"0\";s:5:\"units\";s:2:\"px\";}s:20:\"swift-margin-control\";a:5:{s:10:\"margin-top\";s:1:\"0\";s:12:\"margin-right\";s:1:\"0\";s:13:\"margin-bottom\";s:1:\"0\";s:11:\"margin-left\";s:1:\"0\";s:5:\"units\";s:2:\"px\";}s:11:\"border-line\";s:1:\"0\";s:25:\"swift-border-line-control\";s:1:\"1\";s:26:\"swift-border-color-control\";a:3:{s:5:\"color\";s:0:\"\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:16:\"rgba(0,0,0,0.12)\";}s:32:\"swift-boxshadow-checkbox-control\";s:1:\"0\";s:23:\"swift-background-scheme\";a:3:{s:5:\"color\";s:0:\"\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:24:\"rgba(255, 255, 255, 255)\";}s:20:\"swift-header-overlay\";a:3:{s:5:\"color\";s:0:\"\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:21:\"rgba(20, 20, 22, 0.9)\";}s:27:\"swift-element-color-control\";a:3:{s:5:\"color\";s:4:\"#333\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:16:\"rgba(51,51,51,1)\";}s:35:\"swift-element-overlay-color-control\";a:3:{s:5:\"color\";s:0:\"\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:24:\"rgba(255, 255, 255, 0.8)\";}s:31:\"swift-element-menu-border-color\";a:3:{s:5:\"color\";s:0:\"\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:18:\"rgb(47, 47, 47, 1)\";}s:20:\"header-position-type\";s:1:\"1\";s:20:\"header-overlay-width\";s:3:\"90%\";s:28:\"amp-design-3-featured-slider\";s:1:\"1\";s:30:\"amp-design-3-category-selector\";s:0:\"\";s:23:\"excerpt-option-design-1\";s:1:\"1\";s:20:\"amp-design-1-excerpt\";s:2:\"20\";s:26:\"ampforwp-design1-cats-home\";s:1:\"0\";s:23:\"excerpt-option-design-2\";s:1:\"0\";s:20:\"amp-design-2-excerpt\";s:2:\"20\";s:23:\"excerpt-option-design-3\";s:1:\"0\";s:20:\"amp-design-3-excerpt\";s:2:\"20\";s:26:\"amp-design-1-featured-time\";s:1:\"1\";s:26:\"amp-design-3-featured-time\";s:1:\"1\";s:41:\"ampforwp-homepage-posts-image-modify-size\";s:1:\"0\";s:40:\"ampforwp-homepage-posts-design-1-2-width\";s:3:\"100\";s:41:\"ampforwp-homepage-posts-design-1-2-height\";s:2:\"75\";s:35:\"ampforwp-swift-homepage-posts-width\";s:3:\"346\";s:36:\"ampforwp-swift-homepage-posts-height\";s:3:\"188\";s:11:\"gbl-sidebar\";s:1:\"0\";s:15:\"sidebar-bgcolor\";a:3:{s:5:\"color\";s:7:\"#f7f7f7\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:19:\"rgba(247,247,247,1)\";}s:17:\"sbr-heading-color\";a:3:{s:5:\"color\";s:4:\"#333\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:16:\"rgba(51,51,51,1)\";}s:14:\"sbr-text-color\";a:3:{s:5:\"color\";s:4:\"#333\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:16:\"rgba(51,51,51,1)\";}s:27:\"ampforwp-homepage-loop-type\";s:4:\"post\";s:18:\"single-design-type\";s:1:\"1\";s:13:\"swift-sidebar\";s:1:\"1\";s:19:\"swift-featued-image\";s:1:\"1\";s:10:\"swift-date\";s:1:\"1\";s:25:\"ampforwp-amp-img-lightbox\";s:1:\"0\";s:16:\"ampforwp-dropcap\";s:1:\"0\";s:20:\"ampforwp-bread-crumb\";s:1:\"1\";s:20:\"ampforwp-cats-single\";s:1:\"1\";s:20:\"ampforwp-tags-single\";s:1:\"1\";s:31:\"ampforwp-cats-tags-links-single\";s:1:\"1\";s:26:\"enable-single-social-icons\";s:1:\"1\";s:21:\"enable-excerpt-single\";s:1:\"0\";s:23:\"enable-single-next-prev\";s:1:\"1\";s:15:\"amp-author-name\";s:1:\"1\";s:22:\"amp-author-description\";s:1:\"1\";s:14:\"amp-pagination\";s:1:\"1\";s:26:\"ampforwp-pagination-select\";s:1:\"1\";s:36:\"ampforwp-single-related-posts-switch\";s:1:\"1\";s:38:\"ampforwp-single-select-type-of-related\";s:1:\"2\";s:35:\"ampforwp-single-related-posts-image\";s:1:\"1\";s:37:\"ampforwp-single-related-posts-excerpt\";s:1:\"1\";s:38:\"ampforwp-single-order-of-related-posts\";s:1:\"0\";s:32:\"ampforwp-number-of-related-posts\";s:1:\"3\";s:29:\"ampforwp-inline-related-posts\";s:1:\"0\";s:34:\"ampforwp-inline-related-posts-type\";s:1:\"2\";s:35:\"ampforwp-inline-related-posts-order\";s:1:\"0\";s:39:\"ampforwp-number-of-inline-related-posts\";s:1:\"3\";s:24:\"ampforwp-author-page-url\";s:1:\"0\";s:27:\"ampforwp-swift-recent-posts\";s:1:\"1\";s:19:\"single-new-features\";s:1:\"0\";s:17:\"breadcrumb-border\";s:1:\"0\";s:32:\"ampforwp-underline-content-links\";s:1:\"0\";s:11:\"footer-type\";s:1:\"1\";s:10:\"swift-menu\";s:1:\"1\";s:28:\"amp-footer-link-non-amp-page\";s:1:\"1\";s:19:\"ampforwp-footer-top\";s:1:\"1\";s:27:\"ampforwp-footer-top-design3\";s:1:\"0\";s:24:\"amp-design-3-credit-link\";s:1:\"1\";s:29:\"ampforwp-nofollow-view-nonamp\";s:1:\"0\";s:24:\"footer-customize-options\";s:1:\"0\";s:20:\"swift-footer-txt-clr\";a:3:{s:5:\"color\";s:7:\"#888888\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:19:\"rgba(136,136,136,1)\";}s:21:\"swift-footer-link-clr\";a:3:{s:5:\"color\";s:7:\"#fcc118\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:18:\"rgba(252,193,24,1)\";}s:21:\"swift-footer-link-hvr\";a:3:{s:5:\"color\";s:7:\"#888888\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:19:\"rgba(136,136,136,1)\";}s:15:\"swift-footer-bg\";a:3:{s:5:\"color\";s:7:\"#182733\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:16:\"rgba(24,39,51,1)\";}s:12:\"ftr1-gapping\";a:5:{s:11:\"padding-top\";s:4:\"70px\";s:13:\"padding-right\";s:1:\"0\";s:14:\"padding-bottom\";s:4:\"70px\";s:12:\"padding-left\";s:1:\"0\";s:5:\"units\";s:2:\"px\";}s:22:\"swift-footer1-cntnsize\";s:4:\"14px\";s:15:\"swift-head-size\";s:4:\"12px\";s:18:\"swift-head-fntwgth\";s:3:\"500\";s:24:\"swift-footer-heading-clr\";a:3:{s:5:\"color\";s:4:\"#999\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:19:\"rgba(153,153,153,1)\";}s:16:\"swift-footer2-bg\";a:3:{s:5:\"color\";s:7:\"#2e2b2e\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:16:\"rgba(46,43,46,1)\";}s:12:\"ftr2-gapping\";a:5:{s:11:\"padding-top\";s:4:\"50px\";s:13:\"padding-right\";s:1:\"0\";s:14:\"padding-bottom\";s:4:\"50px\";s:12:\"padding-left\";s:1:\"0\";s:5:\"units\";s:2:\"px\";}s:21:\"swift-footer2-fntsize\";s:4:\"12px\";s:20:\"swift-footer-brdrclr\";a:3:{s:5:\"color\";s:4:\"#eee\";s:5:\"alpha\";s:1:\"1\";s:4:\"rgba\";s:19:\"rgba(238,238,238,1)\";}s:21:\"footer2-position-type\";s:1:\"1\";s:9:\"meta_page\";s:1:\"0\";s:22:\"ampforwp_subpages_list\";s:1:\"0\";s:29:\"ampforwp-facebook-like-button\";s:1:\"0\";s:28:\"enable-single-facebook-share\";s:1:\"0\";s:19:\"amp-facebook-app-id\";s:0:\"\";s:27:\"enable-single-twitter-share\";s:1:\"1\";s:34:\"enable-single-twitter-share-handle\";s:0:\"\";s:32:\"enable-single-twitter-share-link\";s:1:\"0\";s:25:\"enable-single-gplus-share\";s:1:\"1\";s:25:\"enable-single-email-share\";s:1:\"1\";s:29:\"enable-single-pinterest-share\";s:1:\"1\";s:28:\"enable-single-linkedin-share\";s:1:\"1\";s:28:\"enable-single-whatsapp-share\";s:1:\"1\";s:24:\"enable-single-line-share\";s:1:\"1\";s:22:\"enable-single-vk-share\";s:1:\"0\";s:33:\"enable-single-odnoklassniki-share\";s:1:\"0\";s:26:\"enable-single-reddit-share\";s:1:\"0\";s:26:\"enable-single-tumblr-share\";s:1:\"0\";s:28:\"enable-single-telegram-share\";s:1:\"0\";s:24:\"enable-single-digg-share\";s:1:\"0\";s:31:\"enable-single-stumbleupon-share\";s:1:\"0\";s:26:\"enable-single-wechat-share\";s:1:\"0\";s:25:\"enable-single-viber-share\";s:1:\"0\";s:26:\"enable-single-yummly-share\";s:1:\"0\";s:11:\"menu-social\";s:1:\"0\";s:7:\"enbl-fb\";s:1:\"1\";s:16:\"enbl-fb-prfl-url\";s:1:\"#\";s:7:\"enbl-tw\";s:1:\"1\";s:16:\"enbl-tw-prfl-url\";s:1:\"#\";s:8:\"enbl-gol\";s:1:\"1\";s:17:\"enbl-gol-prfl-url\";s:1:\"#\";s:7:\"enbl-lk\";s:1:\"1\";s:16:\"enbl-lk-prfl-url\";s:1:\"#\";s:7:\"enbl-pt\";s:1:\"0\";s:16:\"enbl-pt-prfl-url\";s:1:\"#\";s:7:\"enbl-yt\";s:1:\"0\";s:16:\"enbl-yt-prfl-url\";s:1:\"#\";s:9:\"enbl-inst\";s:1:\"0\";s:18:\"enbl-inst-prfl-url\";s:1:\"#\";s:7:\"enbl-vk\";s:1:\"0\";s:16:\"enbl-vk-prfl-url\";s:1:\"#\";s:7:\"enbl-rd\";s:1:\"0\";s:16:\"enbl-rd-prfl-url\";s:1:\"#\";s:8:\"enbl-tbl\";s:1:\"0\";s:17:\"enbl-tbl-prfl-url\";s:1:\"#\";s:30:\"enable-single-twittter-profile\";s:1:\"1\";s:34:\"enable-single-twittter-profile-url\";s:1:\"#\";s:30:\"enable-single-facebook-profile\";s:1:\"1\";s:34:\"enable-single-facebook-profile-url\";s:1:\"#\";s:30:\"enable-single-pintrest-profile\";s:1:\"1\";s:34:\"enable-single-pintrest-profile-url\";s:1:\"#\";s:33:\"enable-single-google-plus-profile\";s:1:\"0\";s:37:\"enable-single-google-plus-profile-url\";s:0:\"\";s:29:\"enable-single-linkdin-profile\";s:1:\"0\";s:33:\"enable-single-linkdin-profile-url\";s:0:\"\";s:29:\"enable-single-youtube-profile\";s:1:\"1\";s:33:\"enable-single-youtube-profile-url\";s:1:\"#\";s:31:\"enable-single-instagram-profile\";s:1:\"0\";s:35:\"enable-single-instagram-profile-url\";s:0:\"\";s:31:\"enable-single-VKontakte-profile\";s:1:\"0\";s:35:\"enable-single-VKontakte-profile-url\";s:0:\"\";s:28:\"enable-single-reddit-profile\";s:1:\"0\";s:32:\"enable-single-reddit-profile-url\";s:0:\"\";s:30:\"enable-single-snapchat-profile\";s:1:\"0\";s:34:\"enable-single-snapchat-profile-url\";s:0:\"\";s:28:\"enable-single-Tumblr-profile\";s:1:\"0\";s:32:\"enable-single-Tumblr-profile-url\";s:0:\"\";s:25:\"amp-design-3-date-feature\";s:1:\"0\";s:25:\"ampforwp-post-date-global\";s:1:\"1\";s:25:\"ampforwp-post-date-format\";s:1:\"1\";s:30:\"ampforwp-post-date-format-text\";s:10:\"% days ago\";s:18:\"post-modified-date\";s:1:\"0\";s:21:\"amp-rtl-select-option\";s:1:\"0\";s:31:\"ampforwp-sub-categories-support\";s:1:\"0\";s:28:\"ampforwp-plugin-manager-core\";s:1:\"0\";s:13:\"amp_font_type\";s:0:\"\";}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(295, 'redux_builder_amp-transients', 'a:2:{s:14:\"changed_values\";a:38:{s:9:\"opt-media\";a:1:{s:3:\"url\";s:0:\"\";}s:27:\"amp-frontpage-select-option\";i:0;s:33:\"amp-frontpage-select-option-pages\";s:1:\"2\";s:28:\"ampforwp-title-on-front-page\";i:0;s:19:\"hide-amp-categories\";i:0;s:18:\"swift-color-scheme\";a:1:{s:5:\"color\";s:7:\"#005be2\";}s:30:\"amp-opt-color-rgba-colorscheme\";a:1:{s:5:\"color\";s:7:\"#F42F42\";}s:23:\"amp-opt-color-rgba-font\";a:1:{s:5:\"color\";s:4:\"#fff\";}s:23:\"amp-opt-color-rgba-link\";a:1:{s:5:\"color\";s:7:\"#f42f42\";}s:31:\"amp-opt-color-rgba-link-design2\";a:1:{s:5:\"color\";s:7:\"#0a89c0\";}s:31:\"amp-opt-color-rgba-link-design1\";a:1:{s:5:\"color\";s:7:\"#0a89c0\";}s:35:\"amp-opt-color-rgba-colorscheme-call\";a:1:{s:5:\"color\";s:7:\"#0a89c0\";}s:24:\"primary-menu-text-scheme\";a:1:{s:4:\"rgba\";s:15:\"rgb(53, 53, 53)\";}s:30:\"primary-menu-background-scheme\";a:1:{s:4:\"rgba\";s:18:\"rgb(239, 239, 239)\";}s:24:\"signin-button-text-color\";a:1:{s:4:\"rgba\";s:12:\"rgb(0, 0, 0)\";}s:26:\"signin-button-border-color\";a:1:{s:4:\"rgba\";s:12:\"rgb(0, 0, 0)\";}s:30:\"amp-opt-color-rgba-headercolor\";a:1:{s:5:\"color\";s:7:\"#FFFFFF\";}s:33:\"amp-opt-color-rgba-headerelements\";a:1:{s:5:\"color\";s:4:\"#333\";}s:21:\"swift-padding-control\";a:5:{s:11:\"padding-top\";s:3:\"0px\";s:13:\"padding-right\";s:3:\"0px\";s:14:\"padding-bottom\";s:3:\"0px\";s:12:\"padding-left\";s:3:\"0px\";s:5:\"units\";s:2:\"px\";}s:20:\"swift-margin-control\";a:5:{s:10:\"margin-top\";s:3:\"0px\";s:12:\"margin-right\";s:3:\"0px\";s:13:\"margin-bottom\";s:3:\"0px\";s:11:\"margin-left\";s:3:\"0px\";s:5:\"units\";s:2:\"px\";}s:26:\"swift-border-color-control\";a:1:{s:4:\"rgba\";s:16:\"rgba(0,0,0,0.12)\";}s:23:\"swift-background-scheme\";a:1:{s:4:\"rgba\";s:24:\"rgba(255, 255, 255, 255)\";}s:20:\"swift-header-overlay\";a:1:{s:4:\"rgba\";s:21:\"rgba(20, 20, 22, 0.9)\";}s:27:\"swift-element-color-control\";a:1:{s:5:\"color\";s:4:\"#333\";}s:35:\"swift-element-overlay-color-control\";a:1:{s:4:\"rgba\";s:24:\"rgba(255, 255, 255, 0.8)\";}s:31:\"swift-element-menu-border-color\";a:1:{s:4:\"rgba\";s:18:\"rgb(47, 47, 47, 1)\";}s:15:\"sidebar-bgcolor\";a:1:{s:5:\"color\";s:7:\"#f7f7f7\";}s:17:\"sbr-heading-color\";a:1:{s:5:\"color\";s:4:\"#333\";}s:14:\"sbr-text-color\";a:1:{s:5:\"color\";s:4:\"#333\";}s:20:\"swift-footer-txt-clr\";a:1:{s:5:\"color\";s:7:\"#888888\";}s:21:\"swift-footer-link-clr\";a:1:{s:5:\"color\";s:7:\"#fcc118\";}s:21:\"swift-footer-link-hvr\";a:1:{s:5:\"color\";s:7:\"#888888\";}s:15:\"swift-footer-bg\";a:1:{s:5:\"color\";s:7:\"#182733\";}s:12:\"ftr1-gapping\";a:5:{s:11:\"padding-top\";s:4:\"70px\";s:13:\"padding-right\";s:3:\"0px\";s:14:\"padding-bottom\";s:4:\"70px\";s:12:\"padding-left\";s:3:\"0px\";s:5:\"units\";s:2:\"px\";}s:24:\"swift-footer-heading-clr\";a:1:{s:5:\"color\";s:4:\"#999\";}s:16:\"swift-footer2-bg\";a:1:{s:5:\"color\";s:7:\"#2e2b2e\";}s:12:\"ftr2-gapping\";a:5:{s:11:\"padding-top\";s:4:\"50px\";s:13:\"padding-right\";s:3:\"0px\";s:14:\"padding-bottom\";s:4:\"50px\";s:12:\"padding-left\";s:3:\"0px\";s:5:\"units\";s:2:\"px\";}s:20:\"swift-footer-brdrclr\";a:1:{s:5:\"color\";s:4:\"#eee\";}}s:9:\"last_save\";i:1525780909;}', 'yes'),
(296, 'ampforwp_cpt_generated_post_types', 'a:0:{}', 'yes'),
(297, 'ampforwp_default_pages_to', 'show', 'yes'),
(298, 'ampforwp_custom_post_types', 'a:2:{s:4:\"post\";s:4:\"post\";s:4:\"page\";s:4:\"page\";}', 'yes'),
(327, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1527685318;s:7:\"checked\";a:1:{s:4:\"test\";s:0:\"\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(328, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.0.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";d:1526294833;s:7:\"version\";s:5:\"5.0.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(331, 'hf_version', '1.2.0', 'yes'),
(344, '_transient_timeout_cminds_free_ads', '1534145240', 'no'),
(345, '_transient_cminds_free_ads', 'a:2:{s:3:\"ads\";a:4:{i:0;a:9:{s:5:\"ad_id\";s:1:\"3\";s:8:\"ad_title\";s:19:\"Business Directory \";s:7:\"ad_code\";s:13:\"BD8PercentOff\";s:11:\"ad_discount\";s:2:\"8%\";s:6:\"ad_url\";s:26:\"http://bit.ly/BusinessDir8\";s:14:\"ad_product_url\";s:81:\"https://www.cminds.com/store/purchase-cm-business-directory-plugin-for-wordpress/\";s:13:\"ad_valid_date\";s:19:\"2018-12-31 00:00:00\";s:8:\"reg_date\";s:19:\"2015-11-03 13:00:41\";s:8:\"ad_order\";s:1:\"0\";}i:1;a:9:{s:5:\"ad_id\";s:1:\"9\";s:8:\"ad_title\";s:19:\"Glossary + 9 Addons\";s:7:\"ad_code\";s:19:\"Glossary8PercentOff\";s:11:\"ad_discount\";s:2:\"8%\";s:6:\"ad_url\";s:28:\"http://bit.ly/MagicGlossary9\";s:14:\"ad_product_url\";s:84:\"https://www.cminds.com/wordpress-plugins-library/cm-glossary-tooltip-add-ons-bundle/\";s:13:\"ad_valid_date\";s:19:\"2019-01-01 00:00:00\";s:8:\"reg_date\";s:19:\"2017-08-15 06:20:43\";s:8:\"ad_order\";s:1:\"1\";}i:2;a:9:{s:5:\"ad_id\";s:1:\"2\";s:8:\"ad_title\";s:16:\"Booking Calendar\";s:7:\"ad_code\";s:8:\"Booking8\";s:11:\"ad_discount\";s:2:\"8%\";s:6:\"ad_url\";s:22:\"http://bit.ly/Booking8\";s:14:\"ad_product_url\";s:104:\"https://www.cminds.com/wordpress-plugins-library/schedule-appointments-manage-bookings-plugin-wordpress/\";s:13:\"ad_valid_date\";s:19:\"2018-12-31 00:00:00\";s:8:\"reg_date\";s:19:\"2015-11-03 12:49:54\";s:8:\"ad_order\";s:1:\"2\";}i:3;a:9:{s:5:\"ad_id\";s:1:\"5\";s:8:\"ad_title\";s:30:\"CM Registration and Invitation\";s:7:\"ad_code\";s:13:\"Registration8\";s:11:\"ad_discount\";s:2:\"8%\";s:6:\"ad_url\";s:27:\"http://bit.ly/Registration8\";s:14:\"ad_product_url\";s:87:\"https://www.cminds.com/store/cm-registration-and-invitation-codes-plugin-for-wordpress/\";s:13:\"ad_valid_date\";s:19:\"2018-12-31 00:00:00\";s:8:\"reg_date\";s:19:\"2015-11-03 14:08:24\";s:8:\"ad_order\";s:1:\"3\";}}s:12:\"refresh_time\";i:1526369240;}', 'no'),
(361, 'ninja_forms_version', '3.2.27', 'yes'),
(362, 'ninja_forms_settings', 'a:7:{s:11:\"date_format\";s:5:\"m/d/Y\";s:8:\"currency\";s:3:\"USD\";s:18:\"recaptcha_site_key\";s:0:\"\";s:20:\"recaptcha_secret_key\";s:0:\"\";s:14:\"recaptcha_lang\";s:0:\"\";s:19:\"delete_on_uninstall\";i:0;s:21:\"disable_admin_notices\";i:0;}', 'yes'),
(363, 'wp_nf_update_fields_batch_29ba1bfb98907e487b50d421d3a465cc', 'a:4:{i:0;a:2:{s:2:\"id\";i:1;s:8:\"settings\";a:70:{s:5:\"label\";s:4:\"Name\";s:3:\"key\";s:4:\"name\";s:9:\"parent_id\";i:1;s:4:\"type\";s:7:\"textbox\";s:10:\"created_at\";s:19:\"2018-05-15 15:36:01\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:5:\"order\";s:1:\"1\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";s:0:\"\";s:13:\"disable_input\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"disable_browser_autocomplete\";s:0:\"\";s:4:\"mask\";s:0:\"\";s:11:\"custom_mask\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3277\";}}i:1;a:2:{s:2:\"id\";i:2;s:8:\"settings\";a:62:{s:5:\"label\";s:5:\"Email\";s:3:\"key\";s:5:\"email\";s:9:\"parent_id\";i:1;s:4:\"type\";s:5:\"email\";s:10:\"created_at\";s:19:\"2018-05-15 15:36:01\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:5:\"order\";s:1:\"2\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3281\";}}i:2;a:2:{s:2:\"id\";i:3;s:8:\"settings\";a:71:{s:5:\"label\";s:7:\"Message\";s:3:\"key\";s:7:\"message\";s:9:\"parent_id\";i:1;s:4:\"type\";s:8:\"textarea\";s:10:\"created_at\";s:19:\"2018-05-15 15:36:01\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:5:\"order\";s:1:\"3\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";s:0:\"\";s:13:\"disable_input\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"disable_browser_autocomplete\";s:0:\"\";s:12:\"textarea_rte\";s:0:\"\";s:18:\"disable_rte_mobile\";s:0:\"\";s:14:\"textarea_media\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3284\";}}i:3;a:2:{s:2:\"id\";i:4;s:8:\"settings\";a:69:{s:5:\"label\";s:6:\"Submit\";s:3:\"key\";s:6:\"submit\";s:9:\"parent_id\";i:1;s:4:\"type\";s:6:\"submit\";s:10:\"created_at\";s:19:\"2018-05-15 15:36:01\";s:16:\"processing_label\";s:10:\"Processing\";s:5:\"order\";s:1:\"5\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:44:\"submit_element_hover_styles_background-color\";s:0:\"\";s:34:\"submit_element_hover_styles_border\";s:0:\"\";s:40:\"submit_element_hover_styles_border-style\";s:0:\"\";s:40:\"submit_element_hover_styles_border-color\";s:0:\"\";s:33:\"submit_element_hover_styles_color\";s:0:\"\";s:34:\"submit_element_hover_styles_height\";s:0:\"\";s:33:\"submit_element_hover_styles_width\";s:0:\"\";s:37:\"submit_element_hover_styles_font-size\";s:0:\"\";s:34:\"submit_element_hover_styles_margin\";s:0:\"\";s:35:\"submit_element_hover_styles_padding\";s:0:\"\";s:35:\"submit_element_hover_styles_display\";s:0:\"\";s:33:\"submit_element_hover_styles_float\";s:0:\"\";s:45:\"submit_element_hover_styles_show_advanced_css\";s:1:\"0\";s:36:\"submit_element_hover_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3287\";}}}', 'no'),
(365, 'nf_form_1', 'a:4:{s:2:\"id\";i:1;s:6:\"fields\";a:4:{i:0;a:2:{s:2:\"id\";i:1;s:8:\"settings\";a:70:{s:5:\"label\";s:4:\"Name\";s:3:\"key\";s:4:\"name\";s:9:\"parent_id\";i:1;s:4:\"type\";s:7:\"textbox\";s:10:\"created_at\";s:19:\"2018-05-15 15:36:01\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:5:\"order\";s:1:\"1\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";s:0:\"\";s:13:\"disable_input\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"disable_browser_autocomplete\";s:0:\"\";s:4:\"mask\";s:0:\"\";s:11:\"custom_mask\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3277\";}}i:1;a:2:{s:2:\"id\";i:2;s:8:\"settings\";a:62:{s:5:\"label\";s:5:\"Email\";s:3:\"key\";s:5:\"email\";s:9:\"parent_id\";i:1;s:4:\"type\";s:5:\"email\";s:10:\"created_at\";s:19:\"2018-05-15 15:36:01\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:5:\"order\";s:1:\"2\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3281\";}}i:2;a:2:{s:2:\"id\";i:3;s:8:\"settings\";a:71:{s:5:\"label\";s:7:\"Message\";s:3:\"key\";s:7:\"message\";s:9:\"parent_id\";i:1;s:4:\"type\";s:8:\"textarea\";s:10:\"created_at\";s:19:\"2018-05-15 15:36:01\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:5:\"order\";s:1:\"3\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";s:0:\"\";s:13:\"disable_input\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"disable_browser_autocomplete\";s:0:\"\";s:12:\"textarea_rte\";s:0:\"\";s:18:\"disable_rte_mobile\";s:0:\"\";s:14:\"textarea_media\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3284\";}}i:3;a:2:{s:2:\"id\";i:4;s:8:\"settings\";a:69:{s:5:\"label\";s:6:\"Submit\";s:3:\"key\";s:6:\"submit\";s:9:\"parent_id\";i:1;s:4:\"type\";s:6:\"submit\";s:10:\"created_at\";s:19:\"2018-05-15 15:36:01\";s:16:\"processing_label\";s:10:\"Processing\";s:5:\"order\";s:1:\"5\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:44:\"submit_element_hover_styles_background-color\";s:0:\"\";s:34:\"submit_element_hover_styles_border\";s:0:\"\";s:40:\"submit_element_hover_styles_border-style\";s:0:\"\";s:40:\"submit_element_hover_styles_border-color\";s:0:\"\";s:33:\"submit_element_hover_styles_color\";s:0:\"\";s:34:\"submit_element_hover_styles_height\";s:0:\"\";s:33:\"submit_element_hover_styles_width\";s:0:\"\";s:37:\"submit_element_hover_styles_font-size\";s:0:\"\";s:34:\"submit_element_hover_styles_margin\";s:0:\"\";s:35:\"submit_element_hover_styles_padding\";s:0:\"\";s:35:\"submit_element_hover_styles_display\";s:0:\"\";s:33:\"submit_element_hover_styles_float\";s:0:\"\";s:45:\"submit_element_hover_styles_show_advanced_css\";s:1:\"0\";s:36:\"submit_element_hover_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3287\";}}}s:7:\"actions\";a:4:{i:0;a:2:{s:2:\"id\";i:1;s:8:\"settings\";a:25:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:4:\"save\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2018-05-15 15:36:02\";s:5:\"label\";s:16:\"Store Submission\";s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";s:0:\"\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:0:\"\";s:13:\"email_subject\";s:0:\"\";s:13:\"email_message\";s:0:\"\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:10:\"attach_csv\";s:0:\"\";s:12:\"redirect_url\";s:0:\"\";s:19:\"email_message_plain\";s:0:\"\";}}i:1;a:2:{s:2:\"id\";i:2;s:8:\"settings\";a:26:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:5:\"email\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2018-05-15 15:36:02\";s:5:\"label\";s:18:\"Email Confirmation\";s:2:\"to\";s:13:\"{field:email}\";s:7:\"subject\";s:24:\"This is an email action.\";s:7:\"message\";s:19:\"Hello, Ninja Forms!\";s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";s:0:\"\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:0:{}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:13:\"email_subject\";s:24:\"Submission Confirmation \";s:13:\"email_message\";s:29:\"<p>{all_fields_table}<br></p>\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:10:\"attach_csv\";s:0:\"\";s:19:\"email_message_plain\";s:0:\"\";}}i:2;a:2:{s:2:\"id\";i:3;s:8:\"settings\";a:24:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:5:\"email\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2018-05-15 15:36:02\";s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";s:0:\"\";s:5:\"label\";s:18:\"Email Notification\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:20:\"{system:admin_email}\";s:13:\"email_subject\";s:29:\"New message from {field:name}\";s:13:\"email_message\";s:60:\"<p>{field:message}</p><p>-{field:name} ( {field:email} )</p>\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:13:\"{field:email}\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:10:\"attach_csv\";s:1:\"0\";s:19:\"email_message_plain\";s:0:\"\";}}i:3;a:2:{s:2:\"id\";i:4;s:8:\"settings\";a:27:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:14:\"successmessage\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2018-05-15 15:36:02\";s:5:\"label\";s:15:\"Success Message\";s:7:\"message\";s:47:\"Thank you {field:name} for filling out my form!\";s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";s:0:\"\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:0:\"\";s:13:\"email_subject\";s:0:\"\";s:13:\"email_message\";s:0:\"\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:10:\"attach_csv\";s:0:\"\";s:12:\"redirect_url\";s:0:\"\";s:11:\"success_msg\";s:89:\"<p>Form submitted successfully.</p><p>A confirmation email was sent to {field:email}.</p>\";s:19:\"email_message_plain\";s:0:\"\";}}}s:8:\"settings\";a:99:{s:5:\"title\";s:10:\"Contact Me\";s:3:\"key\";s:0:\"\";s:10:\"created_at\";s:19:\"2018-05-15 15:36:01\";s:17:\"default_label_pos\";s:5:\"above\";s:10:\"conditions\";a:0:{}s:10:\"objectType\";s:12:\"Form Setting\";s:10:\"editActive\";s:0:\"\";s:10:\"show_title\";s:1:\"1\";s:14:\"clear_complete\";s:1:\"1\";s:13:\"hide_complete\";s:1:\"1\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"add_submit\";s:1:\"1\";s:9:\"logged_in\";s:0:\"\";s:17:\"not_logged_in_msg\";s:0:\"\";s:16:\"sub_limit_number\";s:0:\"\";s:13:\"sub_limit_msg\";s:0:\"\";s:12:\"calculations\";a:0:{}s:15:\"formContentData\";a:4:{i:0;a:2:{s:5:\"order\";s:1:\"0\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:4:\"name\";}s:5:\"width\";s:3:\"100\";}}}i:1;a:2:{s:5:\"order\";s:1:\"1\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:5:\"email\";}s:5:\"width\";s:3:\"100\";}}}i:2;a:2:{s:5:\"order\";s:1:\"2\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:7:\"message\";}s:5:\"width\";s:3:\"100\";}}}i:3;a:2:{s:5:\"order\";s:1:\"3\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:6:\"submit\";}s:5:\"width\";s:3:\"100\";}}}}s:33:\"container_styles_background-color\";s:0:\"\";s:23:\"container_styles_border\";s:0:\"\";s:29:\"container_styles_border-style\";s:0:\"\";s:29:\"container_styles_border-color\";s:0:\"\";s:22:\"container_styles_color\";s:0:\"\";s:23:\"container_styles_height\";s:0:\"\";s:22:\"container_styles_width\";s:0:\"\";s:26:\"container_styles_font-size\";s:0:\"\";s:23:\"container_styles_margin\";s:0:\"\";s:24:\"container_styles_padding\";s:0:\"\";s:24:\"container_styles_display\";s:0:\"\";s:22:\"container_styles_float\";s:0:\"\";s:34:\"container_styles_show_advanced_css\";s:1:\"0\";s:25:\"container_styles_advanced\";s:0:\"\";s:29:\"title_styles_background-color\";s:0:\"\";s:19:\"title_styles_border\";s:0:\"\";s:25:\"title_styles_border-style\";s:0:\"\";s:25:\"title_styles_border-color\";s:0:\"\";s:18:\"title_styles_color\";s:0:\"\";s:19:\"title_styles_height\";s:0:\"\";s:18:\"title_styles_width\";s:0:\"\";s:22:\"title_styles_font-size\";s:0:\"\";s:19:\"title_styles_margin\";s:0:\"\";s:20:\"title_styles_padding\";s:0:\"\";s:20:\"title_styles_display\";s:0:\"\";s:18:\"title_styles_float\";s:0:\"\";s:30:\"title_styles_show_advanced_css\";s:1:\"0\";s:21:\"title_styles_advanced\";s:0:\"\";s:27:\"row_styles_background-color\";s:0:\"\";s:17:\"row_styles_border\";s:0:\"\";s:23:\"row_styles_border-style\";s:0:\"\";s:23:\"row_styles_border-color\";s:0:\"\";s:16:\"row_styles_color\";s:0:\"\";s:17:\"row_styles_height\";s:0:\"\";s:16:\"row_styles_width\";s:0:\"\";s:20:\"row_styles_font-size\";s:0:\"\";s:17:\"row_styles_margin\";s:0:\"\";s:18:\"row_styles_padding\";s:0:\"\";s:18:\"row_styles_display\";s:0:\"\";s:28:\"row_styles_show_advanced_css\";s:1:\"0\";s:19:\"row_styles_advanced\";s:0:\"\";s:31:\"row-odd_styles_background-color\";s:0:\"\";s:21:\"row-odd_styles_border\";s:0:\"\";s:27:\"row-odd_styles_border-style\";s:0:\"\";s:27:\"row-odd_styles_border-color\";s:0:\"\";s:20:\"row-odd_styles_color\";s:0:\"\";s:21:\"row-odd_styles_height\";s:0:\"\";s:20:\"row-odd_styles_width\";s:0:\"\";s:24:\"row-odd_styles_font-size\";s:0:\"\";s:21:\"row-odd_styles_margin\";s:0:\"\";s:22:\"row-odd_styles_padding\";s:0:\"\";s:22:\"row-odd_styles_display\";s:0:\"\";s:32:\"row-odd_styles_show_advanced_css\";s:1:\"0\";s:23:\"row-odd_styles_advanced\";s:0:\"\";s:35:\"success-msg_styles_background-color\";s:0:\"\";s:25:\"success-msg_styles_border\";s:0:\"\";s:31:\"success-msg_styles_border-style\";s:0:\"\";s:31:\"success-msg_styles_border-color\";s:0:\"\";s:24:\"success-msg_styles_color\";s:0:\"\";s:25:\"success-msg_styles_height\";s:0:\"\";s:24:\"success-msg_styles_width\";s:0:\"\";s:28:\"success-msg_styles_font-size\";s:0:\"\";s:25:\"success-msg_styles_margin\";s:0:\"\";s:26:\"success-msg_styles_padding\";s:0:\"\";s:26:\"success-msg_styles_display\";s:0:\"\";s:36:\"success-msg_styles_show_advanced_css\";s:1:\"0\";s:27:\"success-msg_styles_advanced\";s:0:\"\";s:33:\"error_msg_styles_background-color\";s:0:\"\";s:23:\"error_msg_styles_border\";s:0:\"\";s:29:\"error_msg_styles_border-style\";s:0:\"\";s:29:\"error_msg_styles_border-color\";s:0:\"\";s:22:\"error_msg_styles_color\";s:0:\"\";s:23:\"error_msg_styles_height\";s:0:\"\";s:22:\"error_msg_styles_width\";s:0:\"\";s:26:\"error_msg_styles_font-size\";s:0:\"\";s:23:\"error_msg_styles_margin\";s:0:\"\";s:24:\"error_msg_styles_padding\";s:0:\"\";s:24:\"error_msg_styles_display\";s:0:\"\";s:34:\"error_msg_styles_show_advanced_css\";s:1:\"0\";s:25:\"error_msg_styles_advanced\";s:0:\"\";}}', 'yes'),
(366, 'widget_ninja_forms_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(367, 'ninja_forms_optin_reported', '1', 'yes'),
(368, 'nf_admin_notice', 'a:2:{s:16:\"one_week_support\";a:2:{s:5:\"start\";s:9:\"5/22/2018\";s:3:\"int\";i:7;}s:14:\"allow_tracking\";a:2:{s:5:\"start\";s:9:\"5/15/2018\";s:3:\"int\";i:0;}}', 'yes'),
(369, 'ninja_forms_do_not_allow_tracking', '1', 'yes'),
(370, 'nf_form_tel_data', '1', 'no'),
(371, 'nf_form_tel_sent', 'true', 'no'),
(375, 'ccf_db_version', '7.1', 'yes'),
(376, 'widget_custom-contact-forms', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(377, 'ccf_upgraded_forms', 'a:0:{}', 'yes'),
(378, 'ccf_subscribed', '1', 'yes'),
(426, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.6.zip\";s:6:\"locale\";s:2:\"uk\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.6.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.6-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.6-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.6\";s:7:\"version\";s:5:\"4.9.6\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1527685315;s:15:\"version_checked\";s:5:\"4.9.6\";s:12:\"translations\";a:0:{}}', 'no'),
(478, '_transient_timeout_0ab262994b6d1d5c957a84a0e3a641ab17f11967', '1527771717', 'no'),
(479, '_transient_0ab262994b6d1d5c957a84a0e3a641ab17f11967', 'O:8:\"stdClass\":11:{s:11:\"new_version\";s:5:\"2.5.1\";s:14:\"stable_version\";s:5:\"2.5.1\";s:4:\"name\";s:19:\"CM Registration Pro\";s:4:\"slug\";s:19:\"cm-registration-pro\";s:3:\"url\";s:65:\"https://www.cminds.com/downloads/cm-registration-pro/?changelog=1\";s:12:\"last_updated\";s:19:\"2018-05-27 09:47:46\";s:8:\"homepage\";s:53:\"https://www.cminds.com/downloads/cm-registration-pro/\";s:7:\"package\";s:0:\"\";s:13:\"download_link\";s:0:\"\";s:8:\"sections\";s:1165:\"a:2:{s:11:\"description\";s:313:\"<p>Adds a registration and login popup to your WP site. Supports invitation code, email verification and assign user roles.</p>\n</p>\n<p>For more information <a href=\"https://www.cminds.com/wordpress-plugins-library/cm-registration-and-invitation-codes-plugin-for-wordpress/\">Please visit the product page</a></p>\n\";s:9:\"changelog\";s:793:\"<p>Version 2.5.1 27th May 2018</p>\n<ul>\n<li>Showing the terms of service accept checkbox after invitation.</li>\n<li>Prevent from saving logins and passwords in the Profile fields in wp-admin.</li>\n<li>Added new labels.</li>\n<li>Added new wp filters for a customer.</li>\n</ul>\n<p>Version 2.5.0 5th Apr 2018</p>\n<ul>\n<li>Added support for invitation codes when registering with social login.</li>\n<li>Fixed bug with not showing the invitation codes custom post columns in the wp-admin dashboard.</li>\n<li>Fixed problem with recreating the registration fields.</li>\n<li>Added logout button and logout URL shortcode.</li>\n<li>Improve registration form setting.</li>\n<li>CSS and labels improvements.</li>\n</ul>\n<p>Version 2.3.3 10th mar 2018</p>\n<ul>\n<li> Fixed fatal error in PHP code.</li>\n</ul>\n\";}\";s:7:\"banners\";s:41:\"a:2:{s:4:\"high\";s:0:\"\";s:3:\"low\";s:0:\"\";}\";}', 'no'),
(480, '_transient_timeout_c9e8fd6cb0a63ceafa6acbf6ef4c26224a8fa083', '1527771717', 'no'),
(481, '_transient_c9e8fd6cb0a63ceafa6acbf6ef4c26224a8fa083', 'O:8:\"stdClass\":11:{s:11:\"new_version\";b:0;s:14:\"stable_version\";b:0;s:4:\"name\";s:0:\"\";s:4:\"slug\";s:19:\"cm-registration-pro\";s:3:\"url\";s:129:\"/?edd_action=get_version&#038;item_name=CM+Registration&#038;url=test&#038;license&#038;slug=cm-registration-pro&#038;changelog=1\";s:12:\"last_updated\";s:19:\"0000-00-00 00:00:00\";s:8:\"homepage\";b:0;s:7:\"package\";s:0:\"\";s:13:\"download_link\";s:0:\"\";s:8:\"sections\";s:55:\"a:2:{s:11:\"description\";s:0:\"\";s:9:\"changelog\";s:0:\"\";}\";s:7:\"banners\";s:35:\"a:2:{s:4:\"high\";b:0;s:3:\"low\";b:0;}\";}', 'no'),
(482, '_site_transient_timeout_theme_roots', '1527687117', 'no'),
(483, '_site_transient_theme_roots', 'a:1:{s:4:\"test\";s:7:\"/themes\";}', 'no'),
(484, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1527685319;s:7:\"checked\";a:5:{s:43:\"cm-registration-pro/cm-registration-pro.php\";s:5:\"2.5.0\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.0.1\";s:31:\"post-snippets/post-snippets.php\";s:5:\"3.0.4\";s:29:\"qrcode-wprhe/qrcode_wprhe.php\";s:5:\"1.2.6\";s:19:\"wp-scss/wp-scss.php\";s:5:\"1.2.2\";}s:8:\"response\";a:4:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.0.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.0.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.6\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:31:\"post-snippets/post-snippets.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:27:\"w.org/plugins/post-snippets\";s:4:\"slug\";s:13:\"post-snippets\";s:6:\"plugin\";s:31:\"post-snippets/post-snippets.php\";s:11:\"new_version\";s:5:\"3.0.5\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/post-snippets/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/post-snippets.3.0.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/post-snippets/assets/icon-256x256.png?rev=993869\";s:2:\"1x\";s:65:\"https://ps.w.org/post-snippets/assets/icon-128x128.png?rev=993869\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/post-snippets/assets/banner-1544x500.png?rev=703879\";s:2:\"1x\";s:67:\"https://ps.w.org/post-snippets/assets/banner-772x250.png?rev=520857\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.5\";s:12:\"requires_php\";s:3:\"5.3\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:19:\"wp-scss/wp-scss.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/wp-scss\";s:4:\"slug\";s:7:\"wp-scss\";s:6:\"plugin\";s:19:\"wp-scss/wp-scss.php\";s:11:\"new_version\";s:5:\"1.2.4\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/wp-scss/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/wp-scss.1.2.4.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:58:\"https://s.w.org/plugins/geopattern-icon/wp-scss_222222.svg\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/wp-scss/assets/banner-772x250.png?rev=810420\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.5\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:43:\"cm-registration-pro/cm-registration-pro.php\";O:8:\"stdClass\":12:{s:11:\"new_version\";s:5:\"2.5.1\";s:14:\"stable_version\";s:5:\"2.5.1\";s:4:\"name\";s:19:\"CM Registration Pro\";s:4:\"slug\";s:19:\"cm-registration-pro\";s:3:\"url\";s:65:\"https://www.cminds.com/downloads/cm-registration-pro/?changelog=1\";s:12:\"last_updated\";s:19:\"2018-05-27 09:47:46\";s:8:\"homepage\";s:53:\"https://www.cminds.com/downloads/cm-registration-pro/\";s:7:\"package\";s:0:\"\";s:13:\"download_link\";s:0:\"\";s:8:\"sections\";a:2:{s:11:\"description\";s:313:\"<p>Adds a registration and login popup to your WP site. Supports invitation code, email verification and assign user roles.</p>\n</p>\n<p>For more information <a href=\"https://www.cminds.com/wordpress-plugins-library/cm-registration-and-invitation-codes-plugin-for-wordpress/\">Please visit the product page</a></p>\n\";s:9:\"changelog\";s:793:\"<p>Version 2.5.1 27th May 2018</p>\n<ul>\n<li>Showing the terms of service accept checkbox after invitation.</li>\n<li>Prevent from saving logins and passwords in the Profile fields in wp-admin.</li>\n<li>Added new labels.</li>\n<li>Added new wp filters for a customer.</li>\n</ul>\n<p>Version 2.5.0 5th Apr 2018</p>\n<ul>\n<li>Added support for invitation codes when registering with social login.</li>\n<li>Fixed bug with not showing the invitation codes custom post columns in the wp-admin dashboard.</li>\n<li>Fixed problem with recreating the registration fields.</li>\n<li>Added logout button and logout URL shortcode.</li>\n<li>Improve registration form setting.</li>\n<li>CSS and labels improvements.</li>\n</ul>\n<p>Version 2.3.3 10th mar 2018</p>\n<ul>\n<li> Fixed fatal error in PHP code.</li>\n</ul>\n\";}s:7:\"banners\";s:41:\"a:2:{s:4:\"high\";s:0:\"\";s:3:\"low\";s:0:\"\";}\";s:6:\"plugin\";s:43:\"cm-registration-pro/cm-registration-pro.php\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:29:\"qrcode-wprhe/qrcode_wprhe.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/qrcode-wprhe\";s:4:\"slug\";s:12:\"qrcode-wprhe\";s:6:\"plugin\";s:29:\"qrcode-wprhe/qrcode_wprhe.php\";s:11:\"new_version\";s:5:\"1.2.6\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/qrcode-wprhe/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/qrcode-wprhe.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://s.w.org/plugins/geopattern-icon/qrcode-wprhe_587fa1.svg\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/qrcode-wprhe/assets/banner-772x250.png?rev=727353\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(485, '_transient_timeout_plugin_slugs', '1527771719', 'no'),
(486, '_transient_plugin_slugs', 'a:5:{i:0;s:43:\"cm-registration-pro/cm-registration-pro.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:31:\"post-snippets/post-snippets.php\";i:3;s:29:\"qrcode-wprhe/qrcode_wprhe.php\";i:4;s:19:\"wp-scss/wp-scss.php\";}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(5, 5, '_edit_last', '1'),
(6, 5, '_wp_page_template', 'images.php'),
(7, 5, '_edit_lock', '1526283527:1'),
(8, 8, 'cmreg_type', 'email'),
(9, 8, 'cmreg_registration_form_role', 'email'),
(10, 8, 'cmreg_show_in_registration_form', '1'),
(11, 8, 'cmreg_required', '1'),
(12, 9, 'cmreg_type', 'text'),
(13, 9, 'cmreg_registration_form_role', 'username'),
(14, 9, 'cmreg_show_in_registration_form', '1'),
(15, 9, 'cmreg_required', '1'),
(16, 10, 'cmreg_type', 'password'),
(17, 10, 'cmreg_registration_form_role', 'cmregpw'),
(18, 10, 'cmreg_show_in_registration_form', '1'),
(19, 10, 'cmreg_required', '1'),
(20, 11, 'cmreg_code_string', '27dnjn0f771d'),
(21, 11, '_edit_last', '1'),
(22, 11, 'cmreg_expiration', ''),
(23, 11, 'cmreg_users_limit', '0'),
(24, 11, 'cmreg_email_verification_status', 'global'),
(25, 11, 'cmreg_user_role', ''),
(26, 11, 'cmreginv_email', ''),
(27, 11, 'cmreginv_login_redirection_url', ''),
(28, 11, '_edit_lock', '1524721690:1'),
(29, 12, '_edit_last', '1'),
(30, 12, '_edit_lock', '1526460951:1'),
(31, 12, '_wp_page_template', 'video.php'),
(32, 16, '_edit_last', '1'),
(33, 16, '_wp_page_template', 'image_opacity.php'),
(34, 16, '_edit_lock', '1525780500:1'),
(35, 16, 'ampforwp-amp-on-off', 'default'),
(36, 5, 'ampforwp-amp-on-off', 'default'),
(37, 12, 'ampforwp-amp-on-off', 'default'),
(38, 18, '_edit_last', '1'),
(39, 18, '_edit_lock', '1525958165:1'),
(40, 18, '_wp_page_template', 'semanticui.php'),
(41, 20, '_edit_last', '1'),
(42, 20, '_edit_lock', '1525961478:1'),
(43, 22, '_edit_last', '1'),
(44, 22, '_wp_page_template', 'FullscreenForm/form.php'),
(45, 22, '_edit_lock', '1526283840:1'),
(52, 25, '_form', '<ol class=\"fs-fields\">\n						<li>\n							<label class=\"fs-field-label fs-anim-upper\" for=\"q1\">What\'s your name?</label>\n							\n[text* my_name id:q1 class:fs-anim-lower placeholder=\"Dean Moriarty\"]\n						</li>\n						<li>\n							<label class=\"fs-field-label fs-anim-upper\" for=\"q2\" data-info=\"We won\'t send you spam, we promise...\">What\'s your email address?</label>\n							<input class=\"fs-anim-lower\" id=\"q2\" name=\"q2\" type=\"email\" placeholder=\"dean@road.us\" required/>\n\n						</li>\n						<li data-input-trigger>\n							<label class=\"fs-field-label fs-anim-upper\" for=\"q3\" data-info=\"This will help us know what kind of service you need\">What\'s your priority for your new website?</label>\n							<div class=\"fs-radio-group fs-radio-custom clearfix fs-anim-lower\">\n								<span><input id=\"q3b\" name=\"q3\" type=\"radio\" value=\"conversion\"/><label for=\"q3b\" class=\"radio-conversion\">Sell things</label></span>\n								<span><input id=\"q3c\" name=\"q3\" type=\"radio\" value=\"social\"/><label for=\"q3c\" class=\"radio-social\">Become famous</label></span>\n								<span><input id=\"q3a\" name=\"q3\" type=\"radio\" value=\"mobile\"/><label for=\"q3a\" class=\"radio-mobile\">Mobile market</label></span>\n							</div>\n						</li>\n						<li data-input-trigger>\n							<label class=\"fs-field-label fs-anim-upper\" data-info=\"We\'ll make sure to use it all over\">Choose a color for your website.</label>\n							<select class=\"cs-select cs-skin-boxes fs-anim-lower\">\n								<option value=\"\" disabled selected>Pick a color</option>\n								<option value=\"#588c75\" data-class=\"color-588c75\">#588c75</option>\n								<option value=\"#b0c47f\" data-class=\"color-b0c47f\">#b0c47f</option>\n								<option value=\"#f3e395\" data-class=\"color-f3e395\">#f3e395</option>\n								<option value=\"#f3ae73\" data-class=\"color-f3ae73\">#f3ae73</option>\n								<option value=\"#da645a\" data-class=\"color-da645a\">#da645a</option>\n								<option value=\"#79a38f\" data-class=\"color-79a38f\">#79a38f</option>\n								<option value=\"#c1d099\" data-class=\"color-c1d099\">#c1d099</option>\n								<option value=\"#f5eaaa\" data-class=\"color-f5eaaa\">#f5eaaa</option>\n								<option value=\"#f5be8f\" data-class=\"color-f5be8f\">#f5be8f</option>\n								<option value=\"#e1837b\" data-class=\"color-e1837b\">#e1837b</option>\n								<option value=\"#9bbaab\" data-class=\"color-9bbaab\">#9bbaab</option>\n								<option value=\"#d1dcb2\" data-class=\"color-d1dcb2\">#d1dcb2</option>\n								<option value=\"#f9eec0\" data-class=\"color-f9eec0\">#f9eec0</option>\n								<option value=\"#f7cda9\" data-class=\"color-f7cda9\">#f7cda9</option>\n								<option value=\"#e8a19b\" data-class=\"color-e8a19b\">#e8a19b</option>\n								<option value=\"#bdd1c8\" data-class=\"color-bdd1c8\">#bdd1c8</option>\n								<option value=\"#e1e7cd\" data-class=\"color-e1e7cd\">#e1e7cd</option>\n								<option value=\"#faf4d4\" data-class=\"color-faf4d4\">#faf4d4</option>\n								<option value=\"#fbdfc9\" data-class=\"color-fbdfc9\">#fbdfc9</option>\n								<option value=\"#f1c1bd\" data-class=\"color-f1c1bd\">#f1c1bd</option>\n							</select>\n						</li>\n						<li>\n							<label class=\"fs-field-label fs-anim-upper\" for=\"q4\">Describe how you imagine your new website</label>\n							<textarea class=\"fs-anim-lower\" id=\"q4\" name=\"q4\" placeholder=\"Describe here\"></textarea>\n						</li>\n						<li>\n							<label class=\"fs-field-label fs-anim-upper\" for=\"q5\">What\'s your budget?</label>\n							<input class=\"fs-mark fs-anim-lower\" id=\"q5\" name=\"q5\" type=\"number\" placeholder=\"1000\" step=\"100\" min=\"100\"/>\n						</li>\n					</ol><!-- /fs-fields -->\n					<button class=\"fs-submit\" type=\"submit\">Send answers</button>'),
(53, 25, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:21:\"test \"[your-subject]\"\";s:6:\"sender\";s:0:\"\";s:9:\"recipient\";s:19:\"vasiabedriy@ukr.net\";s:4:\"body\";s:212:\"Від: [your-name] <[your-email]>\nТема: [your-subject]\n\nТекст повідомлення:\n[your-message]\n\n-- \nЦе повідомлення було відправлено з сайту test (http://test)\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(54, 25, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:21:\"test \"[your-subject]\"\";s:6:\"sender\";s:21:\"test <wordpress@test>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:151:\"Текст повідомлення:\n[your-message]\n\n-- \nЦе повідомлення було відправлено з сайту test (http://test)\";s:18:\"additional_headers\";s:29:\"Reply-To: vasiabedriy@ukr.net\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(55, 25, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:96:\"Дякуємо за Ваше повідомлення. Воно було відправлено.\";s:12:\"mail_sent_ng\";s:179:\"Сталася помилка під час спроби відправити Ваше повідомлення. Будь ласка спробуйте ще раз пізніше.\";s:16:\"validation_error\";s:166:\"Одне або декілька полів містять помилкові дані. Будь ласка перевірте їх і спробуйте ще раз.\";s:4:\"spam\";s:179:\"Сталася помилка під час спроби відправити Ваше повідомлення. Будь ласка спробуйте ще раз пізніше.\";s:12:\"accept_terms\";s:153:\"Ви повинні прийняти умови та положення перед тим, як відправляти Ваше повідомлення.\";s:16:\"invalid_required\";s:59:\"Поле обов\'язкове для заповнення.\";s:16:\"invalid_too_long\";s:35:\"Поле занадто довге.\";s:17:\"invalid_too_short\";s:39:\"Поле занадто коротке.\";s:12:\"invalid_date\";s:45:\"Формат дати некоректний.\";s:14:\"date_too_early\";s:68:\"Введена дата надто далеко в минулому.\";s:13:\"date_too_late\";s:74:\"Введена дата надто далеко в майбутньому.\";s:13:\"upload_failed\";s:97:\"Під час завантаження файлу сталася невідома помилка.\";s:24:\"upload_file_type_invalid\";s:89:\"Вам не дозволено завантажувати файли цього типу.\";s:21:\"upload_file_too_large\";s:39:\"Файл занадто великий.\";s:23:\"upload_failed_php_error\";s:80:\"Під час завантаження файлу сталася помилка.\";s:14:\"invalid_number\";s:47:\"Формат числа некоректний.\";s:16:\"number_too_small\";s:66:\"Число менше мінімально допустимого.\";s:16:\"number_too_large\";s:70:\"Число більше максимально допустимого.\";s:23:\"quiz_answer_not_correct\";s:81:\"Неправильна відповідь на питання перевірки.\";s:17:\"captcha_not_match\";s:62:\"Введено невірний контрольний код.\";s:13:\"invalid_email\";s:55:\"Некоректна електронна адреса.\";s:11:\"invalid_url\";s:44:\"Некоректне URL посилання.\";s:11:\"invalid_tel\";s:51:\"Некоректний номер телефону.\";}'),
(56, 25, '_additional_settings', ''),
(57, 25, '_locale', 'uk'),
(65, 25, '_config_errors', 'a:1:{s:11:\"mail.sender\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:0:\"\";s:6:\"params\";a:0:{}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}'),
(74, 29, 'ccf_attached_fields', 'a:1:{i:0;i:31;}'),
(75, 29, 'ccf_form_notifications', 'a:0:{}'),
(76, 29, 'ccf_form_post_field_mappings', 'a:0:{}'),
(77, 29, 'ccf_form_buttonText', 'Submit Form'),
(78, 29, 'ccf_form_buttonClass', ''),
(79, 29, 'ccf_form_description', ''),
(80, 29, 'ccf_form_completion_action_type', 'text'),
(81, 29, 'ccf_form_completion_message', ''),
(82, 29, 'ccf_form_completion_redirect_url', ''),
(83, 29, 'ccf_form_pause', ''),
(84, 29, 'ccf_form_hide_title', ''),
(85, 29, 'ccf_form_require_logged_in', ''),
(86, 29, 'ccf_form_theme', ''),
(87, 29, 'ccf_form_post_creation', ''),
(88, 29, 'ccf_form_post_creation_type', 'post'),
(89, 29, 'ccf_form_post_creation_status', 'draft'),
(90, 29, 'ccf_form_pause_message', 'This form is paused right now. Check back later!'),
(91, 29, '_edit_lock', '1526388103:1'),
(92, 31, 'ccf_field_type', 'html'),
(93, 31, 'ccf_field_slug', 'html-1'),
(94, 31, 'ccf_field_className', ''),
(95, 31, 'ccf_field_html', '<ol class=\"fs-fields\">\n						<li>\n							<label class=\"fs-field-label fs-anim-upper\" for=\"q1\">What\'s your name?</label>\n							\n						</li>\n						<li>\n							<label class=\"fs-field-label fs-anim-upper\" for=\"q2\">What\'s your email address?</label>\n							\n						</li>\n						<li>\n							<label class=\"fs-field-label fs-anim-upper\" for=\"q3\">What\'s your priority for your new website?</label>\n							<div class=\"fs-radio-group fs-radio-custom clearfix fs-anim-lower\">\n								<span><label for=\"q3b\" class=\"radio-conversion\">Sell things</label></span>\n								<span><label for=\"q3c\" class=\"radio-social\">Become famous</label></span>\n								<span><label for=\"q3a\" class=\"radio-mobile\">Mobile market</label></span>\n							</div>\n						</li>\n						<li>\n							<label class=\"fs-field-label fs-anim-upper\">Choose a color for your website.</label>\n							\n								Pick a color\n								#588c75\n								#b0c47f\n								#f3e395\n								#f3ae73\n								#da645a\n								#79a38f\n								#c1d099\n								#f5eaaa\n								#f5be8f\n								#e1837b\n								#9bbaab\n								#d1dcb2\n								#f9eec0\n								#f7cda9\n								#e8a19b\n								#bdd1c8\n								#e1e7cd\n								#faf4d4\n								#fbdfc9\n								#f1c1bd\n							\n						</li>\n						<li>\n							<label class=\"fs-field-label fs-anim-upper\" for=\"q4\">Describe how you imagine your new website</label>\n							<textarea class=\"fs-anim-lower\" id=\"q4\" name=\"q4\"></textarea>\n						</li>\n						<li>\n							<label class=\"fs-field-label fs-anim-upper\" for=\"q5\">What\'s your budget?</label>\n							\n						</li>\n					</ol><!-- /fs-fields -->\n					<button class=\"fs-submit\" type=\"submit\">Send answers</button>'),
(96, 31, 'ccf_field_conditionalsEnabled', ''),
(97, 31, 'ccf_field_conditionalType', 'show'),
(98, 31, 'ccf_field_conditionalFieldsRequired', 'all'),
(99, 31, 'ccf_attached_conditionals', 'a:0:{}'),
(100, 29, '_edit_last', '1'),
(101, 32, '_edit_last', '1'),
(102, 32, '_edit_lock', '1527581426:1'),
(103, 32, '_wp_page_template', 'qr.php'),
(104, 32, 'qr_field', 'http://www.bedrii.xyz/form-cf7/');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-03-30 12:47:23', '2018-03-30 09:47:23', 'Ласкаво просимо до WordPress. Це ваш перший запис. Відредагуйте або видаліть його, потім пишіть!', 'Привіт, світ!', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d1%96%d1%82-%d1%81%d0%b2%d1%96%d1%82', '', '', '2018-03-30 12:47:23', '2018-03-30 09:47:23', '', 0, 'http://test/?p=1', 0, 'post', '', 1),
(5, 1, '2018-03-30 12:49:20', '2018-03-30 09:49:20', '', 'photo', '', 'publish', 'closed', 'closed', '', 'photo', '', '', '2018-03-30 12:49:26', '2018-03-30 09:49:26', '', 0, 'http://test/?page_id=5', 0, 'page', '', 0),
(6, 1, '2018-03-30 12:49:20', '2018-03-30 09:49:20', '', 'photo', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-03-30 12:49:20', '2018-03-30 09:49:20', '', 5, 'http://test/2018/03/30/5-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2018-04-26 08:49:41', '2018-04-26 05:49:41', '', 'field_email', 'email', 'publish', 'closed', 'closed', '', 'field_email', '', '', '2018-04-26 08:49:41', '2018-04-26 05:49:41', '', 0, 'http://test/2018/04/26/field_email/', 1, 'cmreg_profile_field', '', 0),
(9, 1, '2018-04-26 08:49:41', '2018-04-26 05:49:41', '', 'register_field_login', 'username', 'publish', 'closed', 'closed', '', 'register_field_login', '', '', '2018-04-26 08:49:41', '2018-04-26 05:49:41', '', 0, 'http://test/2018/04/26/register_field_login/', 2, 'cmreg_profile_field', '', 0),
(10, 1, '2018-04-26 08:49:41', '2018-04-26 05:49:41', '', 'field_password', 'cmregpw', 'publish', 'closed', 'closed', '', 'field_password', '', '', '2018-04-26 08:49:41', '2018-04-26 05:49:41', '', 0, 'http://test/2018/04/26/field_password/', 3, 'cmreg_profile_field', '', 0),
(11, 1, '2018-04-26 08:50:09', '2018-04-26 05:50:09', '', 'test', '', 'publish', 'closed', 'closed', '', '11', '', '', '2018-04-26 08:50:16', '2018-04-26 05:50:16', '', 0, 'http://test/?post_type=cmreg_invitcode&#038;p=11', 0, 'cmreg_invitcode', '', 0),
(12, 1, '2018-04-26 09:36:47', '2018-04-26 06:36:47', '', 'youtube', '', 'publish', 'closed', 'closed', '', 'youtube', '', '', '2018-04-26 09:40:10', '2018-04-26 06:40:10', '', 0, 'http://test/?page_id=12', 0, 'page', '', 0),
(13, 1, '2018-04-26 09:36:47', '2018-04-26 06:36:47', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/dsID1kZkf8A\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'youtube', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2018-04-26 09:36:47', '2018-04-26 06:36:47', '', 12, 'http://test/2018/04/26/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2018-04-26 09:37:48', '2018-04-26 06:37:48', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean blandit scelerisque sapien et vestibulum. Fusce interdum tortor vitae lobortis euismod. Aliquam erat volutpat. Suspendisse iaculis, dui sed molestie condimentum, nisi diam feugiat massa, sed lobortis sem felis ac risus. Sed gravida metus quis mi dictum, in bibendum ex sollicitudin. Integer pretium libero eu vehicula maximus. In metus mauris, tristique ut pretium sit amet, sagittis ut est. Maecenas egestas justo at urna bibendum ultricies. Mauris non porta augue, ac tempus sem.\r\n\r\nCurabitur accumsan euismod lorem. Praesent a enim eu massa euismod aliquam. Nullam ac ultrices nulla. Proin sit amet tellus sapien. Aliquam commodo auctor porttitor. Aliquam blandit maximus facilisis. Donec lacinia justo dui, vitae accumsan mauris vehicula a. Quisque pretium volutpat ipsum non fringilla. Nullam pharetra dolor vel augue aliquet, ac mollis nibh finibus. Maecenas feugiat urna facilisis dolor vestibulum, sit amet fermentum tortor dictum. In lacinia elit quis pulvinar blandit. Sed arcu ex, pretium nec hendrerit ac, aliquam non nisl. Fusce feugiat lacinia diam at sagittis. Morbi vitae tortor facilisis, interdum orci et, condimentum diam.\r\n\r\nAliquam tristique iaculis felis in sollicitudin. Suspendisse pulvinar suscipit neque, eget suscipit ipsum ornare non. Morbi euismod tellus ut justo posuere, a auctor urna imperdiet. Quisque aliquet pharetra turpis at feugiat. Maecenas tincidunt sollicitudin ex, vel dapibus velit vulputate a. Vivamus cursus pharetra nulla quis mollis. Cras vitae fringilla nisl, vel bibendum tellus. Aliquam vestibulum, mauris quis lobortis blandit, justo lacus convallis risus, eget egestas arcu metus vitae metus. Aliquam bibendum tempor nunc, ut viverra arcu pulvinar quis. Sed hendrerit, neque at efficitur vestibulum, velit metus dignissim mi, id eleifend sapien velit sed dui.\r\n\r\nCurabitur quis imperdiet enim. Morbi arcu dolor, laoreet in tortor eleifend, convallis rhoncus felis. Integer interdum dui sit amet tincidunt mattis. Mauris id lorem mi. Nunc aliquet lectus ligula, vel rutrum orci malesuada dictum. Donec dictum, neque et porttitor dignissim, augue metus dignissim mi, id sodales elit ipsum a leo. Mauris vestibulum leo leo, a fermentum tortor laoreet eget. In auctor efficitur lacus eget tempus. Aliquam ullamcorper quam quis quam viverra scelerisque. Nam consectetur turpis tristique, blandit nibh sed, tincidunt neque.\r\n\r\nPraesent dignissim laoreet nulla, et dictum nunc. Maecenas sit amet elit ante. Maecenas ultricies eu neque ut efficitur. Aenean id leo dignissim, fermentum metus eget, feugiat nisl. Suspendisse purus neque, hendrerit vitae odio eu, vulputate consectetur dui. Donec eu accumsan felis. In bibendum diam sed nunc egestas maximus. Aliquam erat volutpat. Mauris vulputate tempor purus, id viverra eros mollis vitae. Donec malesuada commodo urna, gravida venenatis lectus. Suspendisse eu mollis massa.\r\n\r\nNullam ut congue libero, eu fringilla ipsum. Maecenas eros urna, euismod id tincidunt eu, finibus vel odio. Nullam orci ante, tincidunt ac accumsan nec, scelerisque nec magna. Donec lobortis aliquet nunc vel porttitor. Vestibulum rutrum tincidunt est ac faucibus. Aliquam ac pellentesque libero, sed dictum dolor. Nunc viverra tellus molestie nunc cursus interdum. Curabitur porttitor lacus eget ex iaculis pretium. Cras mi nisi, pharetra ac sollicitudin vitae, feugiat ut tellus. Aliquam rhoncus massa at felis commodo sagittis. Proin maximus justo id commodo mollis.\r\n\r\nSuspendisse vulputate pellentesque pretium. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse mauris nisi, malesuada hendrerit arcu ac, porta fringilla dolor. Vivamus sed imperdiet mauris. Vivamus ac placerat nibh. Integer ornare orci ut hendrerit consectetur. Ut quis aliquet metus, quis placerat nisl. Aliquam pretium mauris massa, at vestibulum diam tempus id.\r\n\r\nInteger rutrum accumsan scelerisque. Vivamus nec lectus in est porttitor accumsan. Aenean a eros condimentum, egestas orci non, imperdiet sem. Praesent ut sem viverra, blandit felis quis, tempus nulla. Ut mattis sapien dui, ac tempor nibh imperdiet eget. Pellentesque ultricies nibh enim, vitae varius ligula dapibus sed. Suspendisse tincidunt pulvinar rutrum. Nulla luctus erat vitae ligula dictum, non pretium tellus dignissim. Mauris cursus sodales augue, vitae consectetur velit fringilla in. Integer et magna vel mauris dapibus tristique. Pellentesque tincidunt tellus nec felis pretium, et consectetur libero dictum. Nulla mollis tempor massa, quis consequat nunc commodo in.\r\n\r\nAenean vitae lobortis metus, nec tristique nunc. Nam sapien odio, placerat quis purus quis, feugiat interdum est. Nunc auctor lacus sem, et bibendum ante rutrum non. Mauris at vulputate magna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Integer imperdiet nisl mauris, consequat vestibulum sapien tristique ac. Suspendisse nec bibendum dui. Pellentesque nec metus vel lorem vulputate commodo vel sed augue.\r\n\r\nMaecenas ullamcorper molestie ultrices. In ullamcorper vehicula leo, eu sodales nisl vestibulum sed. Pellentesque eget finibus tortor. Proin eu libero sodales sem molestie suscipit vitae eget libero. Pellentesque vel nibh vitae est ultricies fringilla. Cras neque nunc, blandit ut feugiat id, sollicitudin at nisl. Sed non placerat neque. Proin rhoncus leo sed pellentesque interdum. Nam eget libero venenatis, finibus arcu ac, rutrum lacus.\r\n\r\nSuspendisse elit dolor, ornare quis nisi in, efficitur dictum sem. Mauris interdum, sem et dictum tempus, dolor purus tincidunt urna, at pharetra turpis nulla vitae arcu. Ut urna ipsum, viverra id eleifend ut, volutpat at dui. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Interdum et malesuada fames ac ante ipsum primis in faucibus. Ut luctus dictum accumsan. Integer egestas id libero ac molestie.\r\n\r\nVivamus rhoncus turpis ut felis pellentesque, nec finibus velit suscipit. Curabitur id est et risus scelerisque vulputate. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque enim odio, ullamcorper sit amet augue fermentum, dignissim ultrices velit. Curabitur nec nulla sed nulla finibus venenatis sed vel sapien. Aenean rhoncus eget sapien at eleifend. Maecenas nec tempus velit. Nunc pharetra imperdiet lectus. Suspendisse pretium odio sem, sed volutpat dolor condimentum nec. Sed eget mollis purus. Nullam dignissim, tortor in commodo lacinia, dui metus viverra magna, vitae mollis mi ipsum sit amet purus.\r\n\r\nDonec viverra pharetra enim, eu euismod tortor maximus ut. Sed eget dictum diam, a consectetur mi. Duis venenatis, enim eu sollicitudin imperdiet, sapien turpis tincidunt sem, sit amet varius sapien sem nec lorem. Phasellus at augue semper, auctor nunc nec, mollis ipsum. Mauris vel arcu nibh. Aliquam scelerisque nisi metus, ut ultricies turpis consectetur id. Etiam mollis sagittis felis ut pretium. Sed a magna nec magna molestie sagittis vel ut ante. Duis ac rutrum nulla. Morbi eleifend felis id augue blandit hendrerit. Vestibulum vitae eleifend metus. Aenean vitae hendrerit nulla.\r\n\r\n<iframe src=\"https://www.youtube.com/embed/dsID1kZkf8A\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"><span data-mce-type=\"bookmark\" style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" class=\"mce_SELRES_start\">﻿</span></iframe>\r\n\r\n\r\nDuis porta erat a porta rhoncus. Quisque interdum sodales egestas. Duis ac porta justo, at bibendum ante. Maecenas feugiat maximus lacus non fringilla. Nam in magna quis arcu semper vulputate. Nam id sem arcu. In consectetur pharetra elit. In eu ultricies risus, sed semper libero. Praesent metus dolor, tempus laoreet feugiat sit amet, volutpat in urna. Cras sodales leo non turpis faucibus, quis ornare lacus fermentum. Nullam dignissim urna sapien, eu finibus orci laoreet a. Vestibulum et cursus tortor. Mauris nisi purus, tempor at congue eu, rhoncus vel enim. Proin commodo nec orci ac luctus.\r\n\r\nEtiam elementum diam eu vestibulum egestas. Nam scelerisque tincidunt nisl in vestibulum. Nunc at tempor arcu. Maecenas non ligula eleifend, accumsan augue hendrerit, pulvinar velit. Mauris ornare pretium fermentum. Etiam sit amet suscipit dui, nec cursus dui. Maecenas eu convallis elit, sit amet sodales ligula. Morbi tempor urna sed dui consectetur, mattis vehicula eros venenatis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Maecenas accumsan nisl neque, ut sollicitudin diam tincidunt auctor.\r\n\r\nCras accumsan dapibus accumsan. Maecenas dictum sapien a leo fringilla ultrices. Nullam sed auctor risus, vel cursus erat. Cras eros libero, efficitur quis quam id, blandit ultrices sem. In sit amet urna sit amet erat posuere tristique. Duis vel tellus pharetra, commodo libero porta, suscipit mauris. Sed et lacus at neque egestas luctus sed ac nisi. Quisque rutrum laoreet pulvinar. Aenean bibendum euismod velit non gravida.\r\n\r\nMaecenas quis ultrices felis, in bibendum purus. Phasellus fermentum tortor sit amet odio tristique, non vulputate leo lobortis. Vestibulum eget tellus nisl. In ac malesuada tellus, vel gravida magna. Sed dapibus egestas elit, placerat consequat dui dictum in. Aenean nec odio arcu. Duis eget leo mauris. Proin mollis neque id feugiat gravida. Proin tristique mi sagittis arcu sollicitudin, vel scelerisque velit fringilla.\r\n\r\nIn tincidunt scelerisque vehicula. Sed sit amet volutpat justo, quis cursus enim. Vestibulum sagittis hendrerit justo, eu hendrerit dui fermentum sit amet. Integer laoreet placerat facilisis. Nullam non ipsum ultrices, dapibus justo eu, scelerisque felis. Donec vel mollis mauris, id ultrices erat. Phasellus vel libero id sapien pellentesque euismod. Suspendisse placerat augue a elit interdum, volutpat tristique tellus fermentum. Sed efficitur ligula molestie fermentum varius. Nunc accumsan elit at nibh tempus porta. Sed ultricies eu sem eget aliquam. Nullam in mauris posuere risus suscipit tristique vel at risus. Sed pharetra pharetra eros, id ornare est. Nam vestibulum porta dui ac viverra.\r\n\r\nNullam id sodales neque. In blandit commodo porta. Proin placerat ornare neque ut accumsan. Suspendisse ex ante, scelerisque a urna non, tincidunt cursus enim. Nam convallis sem nec imperdiet aliquam. Quisque nec metus elit. Nunc ac iaculis leo, gravida vulputate nunc. Duis eu maximus dui. Integer mauris nisi, vestibulum varius neque et, pellentesque tristique nulla. Sed molestie mauris ut dui imperdiet, vitae vestibulum lectus posuere. Curabitur nisl sapien, consectetur eu vehicula quis, facilisis eleifend justo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus venenatis turpis et tincidunt vestibulum. Nam at purus sit amet ex porttitor dictum.\r\n\r\nProin in purus bibendum lacus dignissim varius non sed leo. Integer euismod porta massa, quis aliquam tellus tincidunt non. Sed hendrerit turpis in volutpat malesuada. Curabitur mollis odio quis ante faucibus, sit amet efficitur augue tincidunt. Ut vitae augue vestibulum, semper orci a, sagittis ligula. Nullam mattis est vitae tempus posuere. Fusce vestibulum dapibus nisi sed pretium. Cras urna tortor, tristique et neque a, lobortis maximus orci. Donec dapibus nulla eu arcu sagittis, quis molestie nulla tristique. Nam id est at lacus volutpat mattis quis ac massa.\r\n\r\nAliquam consectetur massa a diam mattis luctus. Suspendisse iaculis purus posuere, placerat turpis eu, consectetur ipsum. Nullam ut purus dui. Curabitur feugiat lacinia pharetra. Ut eleifend urna velit, at faucibus leo aliquet ac. Nullam eu ullamcorper arcu. Integer aliquam magna a libero consequat egestas. Fusce ut pharetra arcu, a mollis est. Donec volutpat, sapien in tincidunt condimentum, eros nisl feugiat ex, eu commodo leo diam a tortor. Mauris vitae ipsum orci.\r\n\r\nMaecenas fringilla justo sed diam consectetur, non iaculis nunc aliquam. Integer quis mauris nec odio imperdiet dignissim vel eget mi. Suspendisse congue et leo eu aliquet. Morbi dignissim et orci nec mollis. Vestibulum maximus risus ut neque varius auctor. In in luctus arcu, ac ullamcorper odio. Etiam rutrum tincidunt lacus, ac volutpat justo feugiat at.\r\n\r\nSuspendisse egestas vulputate magna, sed aliquam nibh porttitor vitae. Morbi lectus ante, congue at lobortis eu, condimentum in odio. Donec ut massa vulputate, ornare justo vitae, blandit odio. Fusce lacinia ante a leo pellentesque, eu imperdiet mi sagittis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce vel gravida turpis. Aenean aliquet molestie sodales. Aenean odio nulla, euismod et massa sed, sollicitudin laoreet orci. Sed eget lacus vitae mauris sagittis venenatis. Etiam pretium urna ac pharetra ultrices. Curabitur vitae urna mauris. Suspendisse in odio ex. Nam ut aliquet urna, vel pretium mi. Maecenas vehicula interdum nisi, eu semper risus gravida eu. Praesent condimentum commodo ante, vel facilisis nisi fringilla non. Nullam mattis pretium libero eget rutrum.\r\n\r\nEtiam vitae lectus vestibulum, varius dui molestie, ornare sapien. Maecenas vel ante tellus. Aliquam libero lectus, aliquam eu lorem eu, elementum commodo eros. Morbi sagittis imperdiet nibh eget hendrerit. In sodales vel metus quis iaculis. Aenean tristique varius risus at porta. Donec consectetur orci eget dolor egestas tempor. Vestibulum lobortis, nisl quis pulvinar lacinia, nulla orci pulvinar arcu, at auctor est felis quis orci. Fusce at pretium nunc. Phasellus quis risus vitae ex consectetur mattis. Duis in diam finibus, cursus lorem sed, mattis augue. Mauris blandit ac diam a dictum. Nunc nunc est, laoreet sed viverra quis, placerat non quam. Vivamus pellentesque purus non metus facilisis placerat. Praesent turpis dui, pellentesque eu cursus vel, elementum et tellus.\r\n\r\nQuisque eu sollicitudin tortor, non congue eros. Vivamus imperdiet sapien nibh, et fermentum massa mattis in. Sed non ex in sapien semper aliquam in in diam. Sed sed aliquet dui, et accumsan tortor. Donec non vehicula arcu, et fermentum purus. Quisque ac eros diam. Etiam fermentum, urna eget cursus convallis, metus nunc fermentum felis, ac tempus ipsum augue vel est. Vivamus at scelerisque erat, nec dignissim arcu. Nam felis velit, consectetur in ante efficitur, gravida mattis ante. Fusce nibh nisi, vehicula id sem et, tincidunt rutrum metus. In luctus eu mauris at lacinia. Vivamus auctor sed elit ut malesuada. Ut non vehicula libero. Aenean sit amet nunc sed massa pretium porttitor ac in felis. Ut in sollicitudin ante.', 'youtube', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2018-04-26 09:37:48', '2018-04-26 06:37:48', '', 12, 'http://test/2018/04/26/12-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2018-04-26 09:40:10', '2018-04-26 06:40:10', '', 'youtube', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2018-04-26 09:40:10', '2018-04-26 06:40:10', '', 12, 'http://test/2018/04/26/12-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2018-04-27 10:42:33', '2018-04-27 07:42:33', '', 'image opacity', '', 'publish', 'closed', 'closed', '', 'image-opacity', '', '', '2018-04-27 10:42:41', '2018-04-27 07:42:41', '', 0, 'http://test/?page_id=16', 0, 'page', '', 0),
(17, 1, '2018-04-27 10:42:33', '2018-04-27 07:42:33', '', 'image opacity', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-04-27 10:42:33', '2018-04-27 07:42:33', '', 16, 'http://test/2018/04/27/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2018-05-08 15:36:36', '2018-05-08 12:36:36', '', 'semanticui', '', 'publish', 'closed', 'closed', '', 'semanticui', '', '', '2018-05-08 15:36:36', '2018-05-08 12:36:36', '', 0, 'http://test/?page_id=18', 0, 'page', '', 0),
(19, 1, '2018-05-08 15:36:36', '2018-05-08 12:36:36', '', 'semanticui', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2018-05-08 15:36:36', '2018-05-08 12:36:36', '', 18, 'http://test/2018/05/08/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2018-05-10 16:19:06', '2018-05-10 13:19:06', 'dsfdasflasdklnasfl jasd adj po;a козщф кзфщц ej;aojewaej pawe awpo eapoweaw ', 'test', '', 'publish', 'open', 'open', '', 'test', '', '', '2018-05-10 16:19:06', '2018-05-10 13:19:06', '', 0, 'http://test/?p=20', 0, 'post', '', 0),
(21, 1, '2018-05-10 16:19:06', '2018-05-10 13:19:06', 'dsfdasflasdklnasfl jasd adj po;a козщф кзфщц ej;aojewaej pawe awpo eapoweaw ', 'test', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2018-05-10 16:19:06', '2018-05-10 13:19:06', '', 20, 'http://test/2018/05/10/20-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2018-05-14 10:41:23', '2018-05-14 07:41:23', '', 'form', '', 'publish', 'closed', 'closed', '', 'form', '', '', '2018-05-14 10:41:23', '2018-05-14 07:41:23', '', 0, 'http://test/?page_id=22', 0, 'page', '', 0),
(23, 1, '2018-05-14 10:41:18', '2018-05-14 07:41:18', '', 'form', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-05-14 10:41:18', '2018-05-14 07:41:18', '', 22, 'http://test/2018/05/14/22-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2018-05-14 10:50:00', '2018-05-14 07:50:00', '<ol class=\"fs-fields\">\r\n						<li>\r\n							<label class=\"fs-field-label fs-anim-upper\" for=\"q1\">What\'s your name?</label>\r\n							\r\n[text* my_name id:q1 class:fs-anim-lower placeholder=\"Dean Moriarty\"]\r\n						</li>\r\n						<li>\r\n							<label class=\"fs-field-label fs-anim-upper\" for=\"q2\" data-info=\"We won\'t send you spam, we promise...\">What\'s your email address?</label>\r\n							<input class=\"fs-anim-lower\" id=\"q2\" name=\"q2\" type=\"email\" placeholder=\"dean@road.us\" required/>\r\n\r\n						</li>\r\n						<li data-input-trigger>\r\n							<label class=\"fs-field-label fs-anim-upper\" for=\"q3\" data-info=\"This will help us know what kind of service you need\">What\'s your priority for your new website?</label>\r\n							<div class=\"fs-radio-group fs-radio-custom clearfix fs-anim-lower\">\r\n								<span><input id=\"q3b\" name=\"q3\" type=\"radio\" value=\"conversion\"/><label for=\"q3b\" class=\"radio-conversion\">Sell things</label></span>\r\n								<span><input id=\"q3c\" name=\"q3\" type=\"radio\" value=\"social\"/><label for=\"q3c\" class=\"radio-social\">Become famous</label></span>\r\n								<span><input id=\"q3a\" name=\"q3\" type=\"radio\" value=\"mobile\"/><label for=\"q3a\" class=\"radio-mobile\">Mobile market</label></span>\r\n							</div>\r\n						</li>\r\n						<li data-input-trigger>\r\n							<label class=\"fs-field-label fs-anim-upper\" data-info=\"We\'ll make sure to use it all over\">Choose a color for your website.</label>\r\n							<select class=\"cs-select cs-skin-boxes fs-anim-lower\">\r\n								<option value=\"\" disabled selected>Pick a color</option>\r\n								<option value=\"#588c75\" data-class=\"color-588c75\">#588c75</option>\r\n								<option value=\"#b0c47f\" data-class=\"color-b0c47f\">#b0c47f</option>\r\n								<option value=\"#f3e395\" data-class=\"color-f3e395\">#f3e395</option>\r\n								<option value=\"#f3ae73\" data-class=\"color-f3ae73\">#f3ae73</option>\r\n								<option value=\"#da645a\" data-class=\"color-da645a\">#da645a</option>\r\n								<option value=\"#79a38f\" data-class=\"color-79a38f\">#79a38f</option>\r\n								<option value=\"#c1d099\" data-class=\"color-c1d099\">#c1d099</option>\r\n								<option value=\"#f5eaaa\" data-class=\"color-f5eaaa\">#f5eaaa</option>\r\n								<option value=\"#f5be8f\" data-class=\"color-f5be8f\">#f5be8f</option>\r\n								<option value=\"#e1837b\" data-class=\"color-e1837b\">#e1837b</option>\r\n								<option value=\"#9bbaab\" data-class=\"color-9bbaab\">#9bbaab</option>\r\n								<option value=\"#d1dcb2\" data-class=\"color-d1dcb2\">#d1dcb2</option>\r\n								<option value=\"#f9eec0\" data-class=\"color-f9eec0\">#f9eec0</option>\r\n								<option value=\"#f7cda9\" data-class=\"color-f7cda9\">#f7cda9</option>\r\n								<option value=\"#e8a19b\" data-class=\"color-e8a19b\">#e8a19b</option>\r\n								<option value=\"#bdd1c8\" data-class=\"color-bdd1c8\">#bdd1c8</option>\r\n								<option value=\"#e1e7cd\" data-class=\"color-e1e7cd\">#e1e7cd</option>\r\n								<option value=\"#faf4d4\" data-class=\"color-faf4d4\">#faf4d4</option>\r\n								<option value=\"#fbdfc9\" data-class=\"color-fbdfc9\">#fbdfc9</option>\r\n								<option value=\"#f1c1bd\" data-class=\"color-f1c1bd\">#f1c1bd</option>\r\n							</select>\r\n						</li>\r\n						<li>\r\n							<label class=\"fs-field-label fs-anim-upper\" for=\"q4\">Describe how you imagine your new website</label>\r\n							<textarea class=\"fs-anim-lower\" id=\"q4\" name=\"q4\" placeholder=\"Describe here\"></textarea>\r\n						</li>\r\n						<li>\r\n							<label class=\"fs-field-label fs-anim-upper\" for=\"q5\">What\'s your budget?</label>\r\n							<input class=\"fs-mark fs-anim-lower\" id=\"q5\" name=\"q5\" type=\"number\" placeholder=\"1000\" step=\"100\" min=\"100\"/>\r\n						</li>\r\n					</ol><!-- /fs-fields -->\r\n					<button class=\"fs-submit\" type=\"submit\">Send answers</button>\n1\ntest \"[your-subject]\"\n\nvasiabedriy@ukr.net\nВід: [your-name] <[your-email]>\r\nТема: [your-subject]\r\n\r\nТекст повідомлення:\r\n[your-message]\r\n\r\n-- \r\nЦе повідомлення було відправлено з сайту test (http://test)\n\n\n\n\n\ntest \"[your-subject]\"\ntest <wordpress@test>\n[your-email]\nТекст повідомлення:\r\n[your-message]\r\n\r\n-- \r\nЦе повідомлення було відправлено з сайту test (http://test)\nReply-To: vasiabedriy@ukr.net\n\n\n\nДякуємо за Ваше повідомлення. Воно було відправлено.\nСталася помилка під час спроби відправити Ваше повідомлення. Будь ласка спробуйте ще раз пізніше.\nОдне або декілька полів містять помилкові дані. Будь ласка перевірте їх і спробуйте ще раз.\nСталася помилка під час спроби відправити Ваше повідомлення. Будь ласка спробуйте ще раз пізніше.\nВи повинні прийняти умови та положення перед тим, як відправляти Ваше повідомлення.\nПоле обов\'язкове для заповнення.\nПоле занадто довге.\nПоле занадто коротке.\nФормат дати некоректний.\nВведена дата надто далеко в минулому.\nВведена дата надто далеко в майбутньому.\nПід час завантаження файлу сталася невідома помилка.\nВам не дозволено завантажувати файли цього типу.\nФайл занадто великий.\nПід час завантаження файлу сталася помилка.\nФормат числа некоректний.\nЧисло менше мінімально допустимого.\nЧисло більше максимально допустимого.\nНеправильна відповідь на питання перевірки.\nВведено невірний контрольний код.\nНекоректна електронна адреса.\nНекоректне URL посилання.\nНекоректний номер телефону.', 'interactive', '', 'publish', 'closed', 'closed', '', 'interactive', '', '', '2018-05-15 15:33:46', '2018-05-15 12:33:46', '', 0, 'http://test/?post_type=wpcf7_contact_form&#038;p=25', 0, 'wpcf7_contact_form', '', 0),
(26, 1, '2018-05-14 11:01:50', '2018-05-14 08:01:50', '<p>\n	<label>Your name</label>\n	<input type=\"text\" name=\"NAME\" placeholder=\"Your name\" required />\n</p>\r\n<p>\n	<label>Your email</label>\n	<input type=\"email\" name=\"EMAIL\" placeholder=\"Your email\" required />\n</p>\r\n<p>\n	<label>Subject</label>\n	<input type=\"text\" name=\"SUBJECT\" placeholder=\"Subject\" required />\n</p>\r\n<p>\n	<label>Message</label>\n	<textarea name=\"MESSAGE\" placeholder=\"Message\" required></textarea>\n</p>\r\n<p>\n	<input type=\"submit\" value=\"Send\" />\n</p>', 'interactive', '', 'publish', 'closed', 'closed', '', 'interactive', '', '', '2018-05-14 11:01:50', '2018-05-14 08:01:50', '', 0, 'http://test/html-form/interactive/', 0, 'html-form', '', 0),
(27, 1, '2018-05-14 11:01:58', '2018-05-14 08:01:58', '<p>\n	<label>Your name</label>\n	<input type=\"text\" name=\"NAME\" placeholder=\"Your name\" required />\n</p>\r\n<p>\n	<label>Your email</label>\n	<input type=\"email\" name=\"EMAIL\" placeholder=\"Your email\" required />\n</p>\r\n<p>\n	<label>Subject</label>\n	<input type=\"text\" name=\"SUBJECT\" placeholder=\"Subject\" required />\n</p>\r\n<p>\n	<label>Message</label>\n	<textarea name=\"MESSAGE\" placeholder=\"Message\" required></textarea>\n</p>\r\n<p>\n	<input type=\"submit\" value=\"Send\" />\n</p>', 'interactive', '', 'publish', 'closed', 'closed', '', 'interactive-2', '', '', '2018-05-14 11:01:58', '2018-05-14 08:01:58', '', 0, 'http://test/html-form/interactive-2/', 0, 'html-form', '', 0),
(29, 1, '2018-05-15 15:39:59', '2018-05-15 12:39:59', '', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2018-05-15 15:41:16', '2018-05-15 12:41:16', '', 0, 'http://test/?post_type=ccf_form&#038;p=29', 0, 'ccf_form', '', 0),
(31, 1, '2018-05-15 15:39:59', '2018-05-15 12:39:59', '', 'html-1-29', '', 'publish', 'closed', 'closed', '', 'html-1-29-2', '', '', '2018-05-15 15:39:59', '2018-05-15 12:39:59', '', 29, 'http://test/?post_type=ccf_field&p=31', 0, 'ccf_field', '', 0),
(32, 1, '2018-05-16 11:58:51', '2018-05-16 08:58:51', '', 'qr', '', 'publish', 'closed', 'closed', '', 'qr', '', '', '2018-05-16 14:41:46', '2018-05-16 11:41:46', '', 0, 'http://test/?page_id=32', 0, 'page', '', 0),
(33, 1, '2018-05-16 11:58:51', '2018-05-16 08:58:51', '', 'qr', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2018-05-16 11:58:51', '2018-05-16 08:58:51', '', 32, 'http://test/2018/05/16/32-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без категорії', '%d0%b1%d0%b5%d0%b7-%d0%ba%d0%b0%d1%82%d0%b5%d0%b3%d0%be%d1%80%d1%96%d1%97', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(20, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'silin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'ampforwp_subscribe_pointer'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"a7a60ecdbc6ec46e3af77549ab6e103b7cf3ae921e083c05caf53e97a0d35f24\";a:4:{s:10:\"expiration\";i:1527753119;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36\";s:5:\"login\";i:1527580319;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '7'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_user-settings', 'editor=html'),
(20, 1, 'wp_user-settings-time', '1524724795'),
(21, 1, 'closedpostboxes_page', 'a:0:{}'),
(22, 1, 'metaboxhidden_page', 'a:4:{i:0;s:16:\"commentstatusdiv\";i:1;s:11:\"commentsdiv\";i:2;s:7:\"slugdiv\";i:3;s:9:\"authordiv\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'silin', '$P$BH.b9mFpBbu7nErjAejufnwKN1uk5u/', 'silin', 'vasiabedriy@ukr.net', '', '2018-03-30 09:47:23', '', 0, 'silin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_hf_submissions`
--
ALTER TABLE `wp_hf_submissions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_nf3_actions`
--
ALTER TABLE `wp_nf3_actions`
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `wp_nf3_action_meta`
--
ALTER TABLE `wp_nf3_action_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `wp_nf3_fields`
--
ALTER TABLE `wp_nf3_fields`
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `wp_nf3_field_meta`
--
ALTER TABLE `wp_nf3_field_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `wp_nf3_forms`
--
ALTER TABLE `wp_nf3_forms`
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `wp_nf3_form_meta`
--
ALTER TABLE `wp_nf3_form_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `wp_nf3_objects`
--
ALTER TABLE `wp_nf3_objects`
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `wp_nf3_object_meta`
--
ALTER TABLE `wp_nf3_object_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `wp_nf3_relationships`
--
ALTER TABLE `wp_nf3_relationships`
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_hf_submissions`
--
ALTER TABLE `wp_hf_submissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_nf3_actions`
--
ALTER TABLE `wp_nf3_actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `wp_nf3_action_meta`
--
ALTER TABLE `wp_nf3_action_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT для таблицы `wp_nf3_fields`
--
ALTER TABLE `wp_nf3_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `wp_nf3_field_meta`
--
ALTER TABLE `wp_nf3_field_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_nf3_forms`
--
ALTER TABLE `wp_nf3_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_nf3_form_meta`
--
ALTER TABLE `wp_nf3_form_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT для таблицы `wp_nf3_objects`
--
ALTER TABLE `wp_nf3_objects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_nf3_object_meta`
--
ALTER TABLE `wp_nf3_object_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_nf3_relationships`
--
ALTER TABLE `wp_nf3_relationships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=487;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
