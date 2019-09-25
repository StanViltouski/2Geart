-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 25 2019 г., 18:18
-- Версия сервера: 5.7.25
-- Версия PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `2geart`
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
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-09-17 10:37:38', '2019-09-17 10:37:38', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

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
(1, 'siteurl', 'http://wp-2geart', 'yes'),
(2, 'home', 'http://wp-2geart', 'yes'),
(3, 'blogname', '2Geart', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'vyts_vyts@mail.ru', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:208:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:9:\"slider/?$\";s:31:\"index.php?post_type=main_slider\";s:39:\"slider/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=main_slider&feed=$matches[1]\";s:34:\"slider/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=main_slider&feed=$matches[1]\";s:26:\"slider/page/([0-9]{1,})/?$\";s:49:\"index.php?post_type=main_slider&paged=$matches[1]\";s:12:\"customers/?$\";s:29:\"index.php?post_type=customers\";s:42:\"customers/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=customers&feed=$matches[1]\";s:37:\"customers/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=customers&feed=$matches[1]\";s:29:\"customers/page/([0-9]{1,})/?$\";s:47:\"index.php?post_type=customers&paged=$matches[1]\";s:13:\"portfolios/?$\";s:29:\"index.php?post_type=portfolio\";s:43:\"portfolios/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=portfolio&feed=$matches[1]\";s:38:\"portfolios/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=portfolio&feed=$matches[1]\";s:30:\"portfolios/page/([0-9]{1,})/?$\";s:47:\"index.php?post_type=portfolio&paged=$matches[1]\";s:10:\"service/?$\";s:27:\"index.php?post_type=service\";s:40:\"service/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=service&feed=$matches[1]\";s:35:\"service/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=service&feed=$matches[1]\";s:27:\"service/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=service&paged=$matches[1]\";s:15:\"certificates/?$\";s:32:\"index.php?post_type=certificates\";s:45:\"certificates/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=certificates&feed=$matches[1]\";s:40:\"certificates/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=certificates&feed=$matches[1]\";s:32:\"certificates/page/([0-9]{1,})/?$\";s:50:\"index.php?post_type=certificates&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:61:\"categories-portfolio/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?categories-portfolio=$matches[1]&feed=$matches[2]\";s:56:\"categories-portfolio/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?categories-portfolio=$matches[1]&feed=$matches[2]\";s:37:\"categories-portfolio/([^/]+)/embed/?$\";s:53:\"index.php?categories-portfolio=$matches[1]&embed=true\";s:49:\"categories-portfolio/([^/]+)/page/?([0-9]{1,})/?$\";s:60:\"index.php?categories-portfolio=$matches[1]&paged=$matches[2]\";s:31:\"categories-portfolio/([^/]+)/?$\";s:42:\"index.php?categories-portfolio=$matches[1]\";s:34:\"slider/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"slider/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"slider/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"slider/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"slider/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"slider/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"slider/([^/]+)/embed/?$\";s:44:\"index.php?main_slider=$matches[1]&embed=true\";s:27:\"slider/([^/]+)/trackback/?$\";s:38:\"index.php?main_slider=$matches[1]&tb=1\";s:47:\"slider/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?main_slider=$matches[1]&feed=$matches[2]\";s:42:\"slider/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?main_slider=$matches[1]&feed=$matches[2]\";s:35:\"slider/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?main_slider=$matches[1]&paged=$matches[2]\";s:42:\"slider/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?main_slider=$matches[1]&cpage=$matches[2]\";s:31:\"slider/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?main_slider=$matches[1]&page=$matches[2]\";s:23:\"slider/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"slider/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"slider/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"slider/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"slider/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"slider/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"customers/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"customers/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"customers/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"customers/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"customers/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"customers/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"customers/([^/]+)/embed/?$\";s:42:\"index.php?customers=$matches[1]&embed=true\";s:30:\"customers/([^/]+)/trackback/?$\";s:36:\"index.php?customers=$matches[1]&tb=1\";s:50:\"customers/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?customers=$matches[1]&feed=$matches[2]\";s:45:\"customers/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?customers=$matches[1]&feed=$matches[2]\";s:38:\"customers/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?customers=$matches[1]&paged=$matches[2]\";s:45:\"customers/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?customers=$matches[1]&cpage=$matches[2]\";s:34:\"customers/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?customers=$matches[1]&page=$matches[2]\";s:26:\"customers/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"customers/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"customers/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"customers/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"customers/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"customers/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"portfolios/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"portfolios/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"portfolios/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"portfolios/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"portfolios/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"portfolios/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"portfolios/([^/]+)/embed/?$\";s:42:\"index.php?portfolio=$matches[1]&embed=true\";s:31:\"portfolios/([^/]+)/trackback/?$\";s:36:\"index.php?portfolio=$matches[1]&tb=1\";s:51:\"portfolios/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?portfolio=$matches[1]&feed=$matches[2]\";s:46:\"portfolios/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?portfolio=$matches[1]&feed=$matches[2]\";s:39:\"portfolios/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?portfolio=$matches[1]&paged=$matches[2]\";s:46:\"portfolios/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?portfolio=$matches[1]&cpage=$matches[2]\";s:35:\"portfolios/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?portfolio=$matches[1]&page=$matches[2]\";s:27:\"portfolios/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"portfolios/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"portfolios/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"portfolios/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"portfolios/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"portfolios/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"service/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"service/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"service/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"service/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"service/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"service/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"service/([^/]+)/embed/?$\";s:40:\"index.php?service=$matches[1]&embed=true\";s:28:\"service/([^/]+)/trackback/?$\";s:34:\"index.php?service=$matches[1]&tb=1\";s:48:\"service/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?service=$matches[1]&feed=$matches[2]\";s:43:\"service/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?service=$matches[1]&feed=$matches[2]\";s:36:\"service/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?service=$matches[1]&paged=$matches[2]\";s:43:\"service/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?service=$matches[1]&cpage=$matches[2]\";s:32:\"service/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?service=$matches[1]&page=$matches[2]\";s:24:\"service/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"service/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"service/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"service/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"service/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"service/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:40:\"certificates/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"certificates/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"certificates/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"certificates/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"certificates/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"certificates/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"certificates/([^/]+)/embed/?$\";s:45:\"index.php?certificates=$matches[1]&embed=true\";s:33:\"certificates/([^/]+)/trackback/?$\";s:39:\"index.php?certificates=$matches[1]&tb=1\";s:53:\"certificates/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?certificates=$matches[1]&feed=$matches[2]\";s:48:\"certificates/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?certificates=$matches[1]&feed=$matches[2]\";s:41:\"certificates/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?certificates=$matches[1]&paged=$matches[2]\";s:48:\"certificates/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?certificates=$matches[1]&cpage=$matches[2]\";s:37:\"certificates/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?certificates=$matches[1]&page=$matches[2]\";s:29:\"certificates/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"certificates/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"certificates/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"certificates/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"certificates/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"certificates/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=7&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:35:\"redux-framework/redux-framework.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'geart', 'yes'),
(41, 'stylesheet', 'geart', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
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
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '7', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'cron', 'a:6:{i:1569426589;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1569451059;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1569494258;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1569494274;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1569494275;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'recovery_keys', 'a:0:{}', 'yes'),
(114, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.3\";s:7:\"version\";s:5:\"5.2.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1569407907;s:15:\"version_checked\";s:5:\"5.2.3\";s:12:\"translations\";a:0:{}}', 'no'),
(117, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1568717222;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(120, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1569407908;s:7:\"checked\";a:1:{s:5:\"geart\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(128, 'can_compress_scripts', '1', 'no'),
(139, 'current_theme', '2geart', 'yes'),
(140, 'theme_mods_geart', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:10:{s:11:\"header-menu\";i:2;s:13:\"footer-menu_3\";i:5;s:13:\"footer-menu_2\";i:4;s:13:\"footer-menu_1\";i:3;s:17:\"footer-menu_three\";i:5;s:15:\"footer-menu_two\";i:4;s:15:\"footer-menu_one\";i:3;s:13:\"footer-menu-3\";i:5;s:13:\"footer-menu-2\";i:4;s:13:\"footer-menu-1\";i:3;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(141, 'theme_switched', '', 'yes'),
(144, 'recently_activated', 'a:0:{}', 'yes'),
(146, 'recovery_mode_email_last_sent', '1568718305', 'yes'),
(153, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(163, 'r_notice_data', '{\"type\":\"redux-message\",\"title\":\"<strong>Redux v4 Beta:  We Need Your Help!<\\/strong><br\\/>\\r\\n\\r\\n\",\"message\":\"The long in-development Redux v4 Beta is nearing completion and we could really use your help!  To learn how to do so, please read our latest blog post: <a href=\\\"https:\\/\\/reduxframework.com\\/2018\\/11\\/redux-4-0-we-need-your-help\\/\\\">Redux 4.0 - We Need Your Help!<\\/a>\",\"color\":\"rgba(0,162,227,1)\"}\n', 'yes'),
(164, 'redux_blast', '1568729213', 'yes'),
(165, 'redux_version_upgraded_from', '3.6.15', 'yes'),
(166, 'stone_lab_option', 'a:6:{s:19:\"stone-lab-desk-logo\";s:0:\"\";s:18:\"stone-lab-mob-logo\";s:0:\"\";s:21:\"stone-lab-footer-logo\";s:0:\"\";s:6:\"adress\";s:0:\"\";s:5:\"email\";s:0:\"\";s:9:\"telephone\";s:0:\"\";}', 'yes'),
(167, 'stone_lab_option-transients', 'a:2:{s:14:\"changed_values\";a:0:{}s:9:\"last_save\";i:1568729213;}', 'yes'),
(172, 'redux_demo', 'a:102:{s:8:\"last_tab\";s:1:\"1\";s:19:\"stone-lab-desk-logo\";a:9:{s:3:\"url\";s:52:\"http://wp-2geart/wp-content/uploads/2019/09/logo.svg\";s:2:\"id\";s:2:\"39\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:53:\"http://wp-2geart/wp-includes/images/media/default.png\";s:5:\"title\";s:4:\"logo\";s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:11:\"description\";s:0:\"\";}s:12:\"opt-checkbox\";s:1:\"1\";s:15:\"opt-multi-check\";a:3:{i:1;s:1:\"1\";i:2;s:0:\"\";i:3;s:0:\"\";}s:17:\"opt-checkbox-data\";a:4:{i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:2;s:0:\"\";}s:20:\"opt-checkbox-sidebar\";a:1:{s:9:\"sidebar-1\";s:0:\"\";}s:9:\"opt-radio\";s:1:\"2\";s:12:\"opt-sortable\";a:3:{s:8:\"Text One\";s:6:\"Item 1\";s:8:\"Text Two\";s:6:\"Item 2\";s:10:\"Text Three\";s:6:\"Item 3\";}s:18:\"opt-check-sortable\";a:3:{s:3:\"cb1\";s:0:\"\";s:3:\"cb2\";s:1:\"1\";s:3:\"cb3\";s:0:\"\";}s:12:\"text-example\";s:12:\"Default Text\";s:17:\"text-example-hint\";s:12:\"Default Text\";s:16:\"text-placeholder\";s:0:\"\";s:13:\"opt-multitext\";a:1:{i:0;s:0:\"\";}s:8:\"password\";a:2:{s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";}s:12:\"opt-textarea\";s:12:\"Default Text\";s:10:\"opt-editor\";s:27:\"Powered by Redux Framework.\";s:15:\"opt-editor-tiny\";s:34:\"<p>Powered by Redux Framework.</p>\";s:15:\"opt-editor-full\";s:0:\"\";s:18:\"opt-ace-editor-css\";s:31:\"#header{\r\n   margin: 0 auto;\r\n}\";s:17:\"opt-ace-editor-js\";s:41:\"jQuery(document).ready(function(){\r\n\r\n});\";s:18:\"opt-ace-editor-php\";s:29:\"<?php\r\n    echo \"PHP String\";\";s:15:\"opt-color-title\";s:7:\"#000000\";s:16:\"opt-color-footer\";s:7:\"#dd9933\";s:16:\"opt-color-header\";a:2:{s:4:\"from\";s:7:\"#1e73be\";s:2:\"to\";s:7:\"#00897e\";}s:14:\"opt-color-rgba\";a:3:{s:5:\"color\";s:7:\"#7e33dd\";s:5:\"alpha\";s:2:\".8\";s:4:\"rgba\";s:20:\"rgba(126,51,221,0.8)\";}s:14:\"opt-link-color\";a:3:{s:7:\"regular\";s:4:\"#aaa\";s:5:\"hover\";s:4:\"#bbb\";s:6:\"active\";s:4:\"#ccc\";}s:17:\"opt-palette-color\";s:3:\"red\";s:14:\"opt-background\";a:7:{s:16:\"background-color\";s:0:\"\";s:17:\"background-repeat\";s:0:\"\";s:15:\"background-size\";s:0:\"\";s:21:\"background-attachment\";s:0:\"\";s:19:\"background-position\";s:0:\"\";s:16:\"background-image\";s:0:\"\";s:5:\"media\";a:4:{s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}}s:17:\"opt-header-border\";a:6:{s:10:\"border-top\";s:3:\"3px\";s:12:\"border-right\";s:3:\"3px\";s:13:\"border-bottom\";s:3:\"3px\";s:11:\"border-left\";s:3:\"3px\";s:12:\"border-style\";s:5:\"solid\";s:12:\"border-color\";s:7:\"#1e73be\";}s:26:\"opt-header-border-expanded\";a:6:{s:10:\"border-top\";s:3:\"3px\";s:12:\"border-right\";s:3:\"3px\";s:13:\"border-bottom\";s:3:\"3px\";s:11:\"border-left\";s:3:\"3px\";s:12:\"border-style\";s:5:\"solid\";s:12:\"border-color\";s:7:\"#1e73be\";}s:14:\"opt-dimensions\";a:3:{s:5:\"width\";s:5:\"200px\";s:6:\"height\";s:5:\"100px\";s:5:\"units\";s:2:\"px\";}s:20:\"opt-dimensions-width\";a:2:{s:5:\"width\";s:5:\"200px\";s:5:\"units\";s:2:\"px\";}s:11:\"opt-spacing\";a:4:{s:10:\"margin-top\";s:1:\"1\";s:12:\"margin-right\";s:1:\"2\";s:13:\"margin-bottom\";s:1:\"3\";s:11:\"margin-left\";s:1:\"4\";}s:20:\"opt-spacing-expanded\";a:5:{s:10:\"margin-top\";s:3:\"1px\";s:12:\"margin-right\";s:3:\"2px\";s:13:\"margin-bottom\";s:3:\"3px\";s:11:\"margin-left\";s:3:\"4px\";s:5:\"units\";s:2:\"px\";}s:11:\"opt-gallery\";s:0:\"\";s:9:\"opt-media\";a:9:{s:3:\"url\";s:53:\"https://s.wordpress.org/style/images/codeispoetry.png\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";s:5:\"title\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:11:\"description\";s:0:\"\";}s:12:\"media-no-url\";a:9:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";s:5:\"title\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:11:\"description\";s:0:\"\";}s:16:\"media-no-preview\";a:9:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";s:5:\"title\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:11:\"description\";s:0:\"\";}s:17:\"opt-random-upload\";a:9:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";s:5:\"title\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:11:\"description\";s:0:\"\";}s:10:\"opt-slides\";a:1:{i:0;a:9:{s:5:\"title\";s:0:\"\";s:11:\"description\";s:0:\"\";s:3:\"url\";s:0:\"\";s:4:\"sort\";s:1:\"0\";s:13:\"attachment_id\";s:0:\"\";s:5:\"image\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:5:\"thumb\";s:0:\"\";}}s:12:\"section-test\";s:0:\"\";s:18:\"section-test-media\";a:9:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";s:5:\"title\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:11:\"description\";s:0:\"\";}s:14:\"opt-button-set\";s:1:\"2\";s:20:\"opt-button-set-multi\";a:2:{i:0;s:1:\"2\";i:1;s:1:\"3\";}s:9:\"switch-on\";s:1:\"1\";s:10:\"switch-off\";s:0:\"\";s:13:\"switch-parent\";s:1:\"0\";s:13:\"switch-child1\";s:0:\"\";s:13:\"switch-child2\";s:0:\"\";s:10:\"opt-select\";s:1:\"2\";s:21:\"opt-select-stylesheet\";s:11:\"default.css\";s:19:\"opt-select-optgroup\";s:1:\"2\";s:16:\"opt-multi-select\";a:2:{i:0;s:1:\"2\";i:1;s:1:\"3\";}s:21:\"opt-select-categories\";s:0:\"\";s:16:\"opt-select-pages\";s:0:\"\";s:16:\"opt-select-menus\";s:0:\"\";s:20:\"opt-select-post-type\";s:0:\"\";s:16:\"opt-select-posts\";s:0:\"\";s:16:\"opt-select-roles\";s:0:\"\";s:18:\"opt-select-elusive\";s:0:\"\";s:16:\"opt-select-users\";s:0:\"\";s:23:\"opt-image-select-layout\";s:1:\"2\";s:16:\"opt-image-select\";s:1:\"2\";s:22:\"opt-select_image-field\";s:91:\"http://wp-2geart/wp-content/plugins/redux-framework/ReduxCore/../sample/presets/preset2.png\";s:16:\"opt-select-image\";s:95:\"http://wp-2geart/wp-content/plugins/redux-framework/ReduxCore/../sample/patterns/triangular.png\";s:16:\"opt-slider-label\";s:3:\"250\";s:15:\"opt-slider-text\";s:2:\"75\";s:16:\"opt-slider-float\";s:3:\"0.5\";s:11:\"opt-spinner\";s:2:\"40\";s:19:\"opt-typography-body\";a:10:{s:11:\"font-family\";s:26:\"Arial,Helvetica,sans-serif\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:6:\"Normal\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:10:\"text-align\";s:0:\"\";s:9:\"font-size\";s:4:\"30px\";s:11:\"line-height\";s:0:\"\";s:5:\"color\";s:7:\"#dd9933\";}s:14:\"opt-typography\";a:11:{s:11:\"font-family\";s:4:\"Abel\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:3:\"700\";s:7:\"subsets\";s:0:\"\";s:10:\"text-align\";s:0:\"\";s:9:\"font-size\";s:4:\"33px\";s:11:\"line-height\";s:4:\"40px\";s:5:\"color\";s:4:\"#333\";}s:14:\"opt-datepicker\";s:0:\"\";s:19:\"opt-homepage-layout\";a:3:{s:7:\"enabled\";a:5:{s:7:\"placebo\";s:7:\"placebo\";s:10:\"highlights\";s:10:\"Highlights\";s:6:\"slider\";s:6:\"Slider\";s:10:\"staticpage\";s:11:\"Static Page\";s:8:\"services\";s:8:\"Services\";}s:8:\"disabled\";a:1:{s:7:\"placebo\";s:7:\"placebo\";}s:6:\"backup\";a:1:{s:7:\"placebo\";s:7:\"placebo\";}}s:21:\"opt-homepage-layout-2\";a:2:{s:8:\"disabled\";a:3:{s:7:\"placebo\";s:7:\"placebo\";s:10:\"highlights\";s:10:\"Highlights\";s:6:\"slider\";s:6:\"Slider\";}s:7:\"enabled\";a:3:{s:7:\"placebo\";s:7:\"placebo\";s:10:\"staticpage\";s:11:\"Static Page\";s:8:\"services\";s:8:\"Services\";}}s:14:\"opt-text-email\";s:13:\"test@test.com\";s:18:\"opt-text-post-type\";a:3:{s:10:\"attachment\";s:5:\"Media\";s:4:\"page\";s:5:\"Pages\";s:4:\"post\";s:5:\"Posts\";}s:14:\"opt-multi-text\";a:1:{i:0;b:0;}s:12:\"opt-text-url\";s:25:\"http://reduxframework.com\";s:16:\"opt-text-numeric\";s:1:\"0\";s:22:\"opt-text-comma-numeric\";s:1:\"0\";s:25:\"opt-text-no-special-chars\";s:1:\"0\";s:20:\"opt-text-str_replace\";s:53:\"Thisthisisaspaceisthisisaspacethethisisaspacedefault.\";s:21:\"opt-text-preg_replace\";s:10:\"no numbers\";s:24:\"opt-text-custom_validate\";s:1:\"0\";s:20:\"opt-textarea-no-html\";s:27:\"No HTML is allowed in here.\";s:17:\"opt-textarea-html\";s:24:\"HTML is allowed in here.\";s:22:\"opt-textarea-some-html\";s:29:\"Some HTML is allowed in here.\";s:15:\"opt-textarea-js\";s:0:\"\";s:18:\"opt-required-basic\";s:0:\"\";s:23:\"opt-required-basic-text\";s:0:\"\";s:19:\"opt-required-nested\";s:0:\"\";s:29:\"opt-required-nested-buttonset\";s:11:\"button-text\";s:24:\"opt-required-nested-text\";s:0:\"\";s:28:\"opt-required-nested-textarea\";s:0:\"\";s:26:\"opt-required-nested-editor\";s:0:\"\";s:23:\"opt-required-nested-ace\";s:0:\"\";s:19:\"opt-required-select\";s:10:\"no-sidebar\";s:32:\"opt-required-select-left-sidebar\";s:0:\"\";s:33:\"opt-required-select-right-sidebar\";s:0:\"\";s:9:\"wpml-text\";s:0:\"\";s:15:\"wpml-multicheck\";a:3:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";}s:19:\"opt-customizer-only\";s:1:\"2\";}', 'yes'),
(173, 'redux_demo-transients', 'a:3:{s:14:\"changed_values\";a:19:{s:15:\"opt-multi-check\";a:3:{i:1;s:1:\"1\";i:2;s:1:\"0\";i:3;s:1:\"0\";}s:15:\"opt-editor-tiny\";s:27:\"Powered by Redux Framework.\";s:18:\"opt-ace-editor-css\";s:29:\"#header{\n   margin: 0 auto;\n}\";s:17:\"opt-ace-editor-js\";s:39:\"jQuery(document).ready(function(){\n\n});\";s:18:\"opt-ace-editor-php\";s:28:\"<?php\n    echo \"PHP String\";\";s:14:\"opt-color-rgba\";a:2:{s:5:\"color\";s:7:\"#7e33dd\";s:5:\"alpha\";s:2:\".8\";}s:14:\"opt-dimensions\";a:2:{s:5:\"width\";i:200;s:6:\"height\";i:100;}s:20:\"opt-dimensions-width\";a:2:{s:5:\"width\";i:200;s:6:\"height\";i:100;}s:11:\"opt-spacing\";a:4:{s:10:\"margin-top\";s:3:\"1px\";s:12:\"margin-right\";s:3:\"2px\";s:13:\"margin-bottom\";s:3:\"3px\";s:11:\"margin-left\";s:3:\"4px\";}s:20:\"opt-spacing-expanded\";a:4:{s:10:\"margin-top\";s:3:\"1px\";s:12:\"margin-right\";s:3:\"2px\";s:13:\"margin-bottom\";s:3:\"3px\";s:11:\"margin-left\";s:3:\"4px\";}s:9:\"opt-media\";a:1:{s:3:\"url\";s:53:\"https://s.wordpress.org/style/images/codeispoetry.png\";}s:19:\"opt-typography-body\";a:4:{s:5:\"color\";s:7:\"#dd9933\";s:9:\"font-size\";s:4:\"30px\";s:11:\"font-family\";s:26:\"Arial,Helvetica,sans-serif\";s:11:\"font-weight\";s:6:\"Normal\";}s:14:\"opt-typography\";a:6:{s:5:\"color\";s:4:\"#333\";s:10:\"font-style\";s:3:\"700\";s:11:\"font-family\";s:4:\"Abel\";s:6:\"google\";b:1;s:9:\"font-size\";s:4:\"33px\";s:11:\"line-height\";s:4:\"40px\";}s:19:\"opt-homepage-layout\";a:3:{s:7:\"enabled\";a:4:{s:10:\"highlights\";s:10:\"Highlights\";s:6:\"slider\";s:6:\"Slider\";s:10:\"staticpage\";s:11:\"Static Page\";s:8:\"services\";s:8:\"Services\";}s:8:\"disabled\";a:0:{}s:6:\"backup\";a:0:{}}s:21:\"opt-homepage-layout-2\";a:2:{s:8:\"disabled\";a:2:{s:10:\"highlights\";s:10:\"Highlights\";s:6:\"slider\";s:6:\"Slider\";}s:7:\"enabled\";a:2:{s:10:\"staticpage\";s:11:\"Static Page\";s:8:\"services\";s:8:\"Services\";}}s:20:\"opt-text-str_replace\";s:20:\"This is the default.\";s:21:\"opt-text-preg_replace\";s:1:\"0\";s:22:\"opt-textarea-some-html\";s:36:\"<p>Some HTML is allowed in here.</p>\";s:19:\"stone-lab-desk-logo\";s:0:\"\";}s:9:\"last_save\";i:1568730420;s:13:\"last_compiler\";i:1568730420;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(176, 'geart_option', 'a:113:{s:8:\"last_tab\";s:1:\"1\";s:15:\"geart-desk-logo\";a:9:{s:3:\"url\";s:52:\"http://wp-2geart/wp-content/uploads/2019/09/logo.svg\";s:2:\"id\";s:2:\"39\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:53:\"http://wp-2geart/wp-includes/images/media/default.png\";s:5:\"title\";s:4:\"logo\";s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:11:\"description\";s:0:\"\";}s:16:\"geart-city-title\";a:6:{s:6:\"City 1\";s:7:\"Dallas \";s:6:\"City 2\";s:8:\"Linkoln \";s:6:\"City 3\";s:9:\"New York \";s:6:\"City 4\";s:7:\"Dallas \";s:6:\"City 5\";s:8:\"Linkoln \";s:6:\"City 6\";s:9:\"New York \";}s:18:\"geart-city-address\";a:6:{s:14:\"Address City 1\";s:29:\"3131 McKinney Ave, Suite 600 \";s:14:\"Address City 2\";s:29:\"3131 McKinney Ave, Suite 600 \";s:14:\"Address City 3\";s:29:\"3131 McKinney Ave, Suite 600 \";s:14:\"Address City 4\";s:29:\"3131 McKinney Ave, Suite 600 \";s:14:\"Address City 5\";s:29:\"3131 McKinney Ave, Suite 600 \";s:14:\"Address City 6\";s:29:\"3131 McKinney Ave, Suite 600 \";}s:17:\"geart-footer-logo\";a:9:{s:3:\"url\";s:59:\"http://wp-2geart/wp-content/uploads/2019/09/footer_logo.svg\";s:2:\"id\";s:2:\"40\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:53:\"http://wp-2geart/wp-includes/images/media/default.png\";s:5:\"title\";s:11:\"footer_logo\";s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:11:\"description\";s:0:\"\";}s:24:\"geart-footer-upload-file\";a:9:{s:3:\"url\";s:52:\"http://wp-2geart/wp-content/uploads/2019/09/test.txt\";s:2:\"id\";s:2:\"44\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:50:\"http://wp-2geart/wp-includes/images/media/text.png\";s:5:\"title\";s:4:\"test\";s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:11:\"description\";s:0:\"\";}s:5:\"email\";s:14:\"art@2geart.com\";s:9:\"telephone\";s:14:\"+1(214)5563111\";s:5:\"skype\";s:6:\"2Geart\";s:11:\"social-nets\";a:5:{s:8:\"Facebook\";s:12:\"facebook.com\";s:9:\"Instagram\";s:13:\"instagram.com\";s:7:\"Behance\";s:11:\"behance.com\";s:8:\"Dribbble\";s:12:\"dribbble.com\";s:8:\"Linkedin\";s:12:\"linkedin.com\";}s:12:\"opt-checkbox\";s:1:\"1\";s:15:\"opt-multi-check\";a:3:{i:1;s:1:\"1\";i:2;s:0:\"\";i:3;s:0:\"\";}s:17:\"opt-checkbox-data\";a:4:{i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:2;s:0:\"\";}s:20:\"opt-checkbox-sidebar\";a:1:{s:9:\"sidebar-1\";s:0:\"\";}s:9:\"opt-radio\";s:1:\"2\";s:12:\"opt-sortable\";a:3:{s:8:\"Text One\";s:6:\"Item 1\";s:8:\"Text Two\";s:6:\"Item 2\";s:10:\"Text Three\";s:6:\"Item 3\";}s:18:\"opt-check-sortable\";a:3:{s:3:\"cb1\";s:0:\"\";s:3:\"cb2\";s:1:\"1\";s:3:\"cb3\";s:0:\"\";}s:12:\"text-example\";s:12:\"Default Text\";s:17:\"text-example-hint\";s:12:\"Default Text\";s:16:\"text-placeholder\";s:0:\"\";s:13:\"opt-multitext\";a:1:{i:0;s:0:\"\";}s:8:\"password\";a:2:{s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";}s:12:\"opt-textarea\";s:12:\"Default Text\";s:10:\"opt-editor\";s:27:\"Powered by Redux Framework.\";s:15:\"opt-editor-tiny\";s:34:\"<p>Powered by Redux Framework.</p>\";s:15:\"opt-editor-full\";s:0:\"\";s:18:\"opt-ace-editor-css\";s:31:\"#header{\r\n   margin: 0 auto;\r\n}\";s:17:\"opt-ace-editor-js\";s:41:\"jQuery(document).ready(function(){\r\n\r\n});\";s:18:\"opt-ace-editor-php\";s:29:\"<?php\r\n    echo \"PHP String\";\";s:15:\"opt-color-title\";s:7:\"#000000\";s:16:\"opt-color-footer\";s:7:\"#dd9933\";s:16:\"opt-color-header\";a:2:{s:4:\"from\";s:7:\"#1e73be\";s:2:\"to\";s:7:\"#00897e\";}s:14:\"opt-color-rgba\";a:3:{s:5:\"color\";s:7:\"#7e33dd\";s:5:\"alpha\";s:2:\".8\";s:4:\"rgba\";s:20:\"rgba(126,51,221,0.8)\";}s:14:\"opt-link-color\";a:3:{s:7:\"regular\";s:4:\"#aaa\";s:5:\"hover\";s:4:\"#bbb\";s:6:\"active\";s:4:\"#ccc\";}s:17:\"opt-palette-color\";s:3:\"red\";s:14:\"opt-background\";a:7:{s:16:\"background-color\";s:0:\"\";s:17:\"background-repeat\";s:0:\"\";s:15:\"background-size\";s:0:\"\";s:21:\"background-attachment\";s:0:\"\";s:19:\"background-position\";s:0:\"\";s:16:\"background-image\";s:0:\"\";s:5:\"media\";a:4:{s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}}s:17:\"opt-header-border\";a:6:{s:10:\"border-top\";s:3:\"3px\";s:12:\"border-right\";s:3:\"3px\";s:13:\"border-bottom\";s:3:\"3px\";s:11:\"border-left\";s:3:\"3px\";s:12:\"border-style\";s:5:\"solid\";s:12:\"border-color\";s:7:\"#1e73be\";}s:26:\"opt-header-border-expanded\";a:6:{s:10:\"border-top\";s:3:\"3px\";s:12:\"border-right\";s:3:\"3px\";s:13:\"border-bottom\";s:3:\"3px\";s:11:\"border-left\";s:3:\"3px\";s:12:\"border-style\";s:5:\"solid\";s:12:\"border-color\";s:7:\"#1e73be\";}s:14:\"opt-dimensions\";a:3:{s:5:\"width\";s:5:\"200px\";s:6:\"height\";s:5:\"100px\";s:5:\"units\";s:2:\"px\";}s:20:\"opt-dimensions-width\";a:2:{s:5:\"width\";s:5:\"200px\";s:5:\"units\";s:2:\"px\";}s:11:\"opt-spacing\";a:4:{s:10:\"margin-top\";s:1:\"1\";s:12:\"margin-right\";s:1:\"2\";s:13:\"margin-bottom\";s:1:\"3\";s:11:\"margin-left\";s:1:\"4\";}s:20:\"opt-spacing-expanded\";a:5:{s:10:\"margin-top\";s:3:\"1px\";s:12:\"margin-right\";s:3:\"2px\";s:13:\"margin-bottom\";s:3:\"3px\";s:11:\"margin-left\";s:3:\"4px\";s:5:\"units\";s:2:\"px\";}s:11:\"opt-gallery\";s:0:\"\";s:9:\"opt-media\";a:9:{s:3:\"url\";s:53:\"https://s.wordpress.org/style/images/codeispoetry.png\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";s:5:\"title\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:11:\"description\";s:0:\"\";}s:12:\"media-no-url\";a:9:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";s:5:\"title\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:11:\"description\";s:0:\"\";}s:16:\"media-no-preview\";a:9:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";s:5:\"title\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:11:\"description\";s:0:\"\";}s:17:\"opt-random-upload\";a:9:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";s:5:\"title\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:11:\"description\";s:0:\"\";}s:10:\"opt-slides\";a:1:{i:0;a:9:{s:5:\"title\";s:0:\"\";s:11:\"description\";s:0:\"\";s:3:\"url\";s:0:\"\";s:4:\"sort\";s:1:\"0\";s:13:\"attachment_id\";s:0:\"\";s:5:\"thumb\";s:0:\"\";s:5:\"image\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";}}s:12:\"section-test\";s:0:\"\";s:18:\"section-test-media\";a:9:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";s:5:\"title\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:11:\"description\";s:0:\"\";}s:14:\"opt-button-set\";s:1:\"2\";s:20:\"opt-button-set-multi\";a:2:{i:0;s:1:\"2\";i:1;s:1:\"3\";}s:9:\"switch-on\";s:1:\"1\";s:10:\"switch-off\";s:0:\"\";s:13:\"switch-parent\";s:1:\"0\";s:13:\"switch-child1\";s:0:\"\";s:13:\"switch-child2\";s:0:\"\";s:10:\"opt-select\";s:1:\"2\";s:21:\"opt-select-stylesheet\";s:11:\"default.css\";s:19:\"opt-select-optgroup\";s:1:\"2\";s:16:\"opt-multi-select\";a:2:{i:0;s:1:\"2\";i:1;s:1:\"3\";}s:21:\"opt-select-categories\";s:0:\"\";s:16:\"opt-select-pages\";s:0:\"\";s:16:\"opt-select-menus\";s:0:\"\";s:20:\"opt-select-post-type\";s:0:\"\";s:16:\"opt-select-posts\";s:0:\"\";s:16:\"opt-select-roles\";s:0:\"\";s:18:\"opt-select-elusive\";s:0:\"\";s:16:\"opt-select-users\";s:0:\"\";s:23:\"opt-image-select-layout\";s:1:\"2\";s:16:\"opt-image-select\";s:1:\"2\";s:22:\"opt-select_image-field\";s:91:\"http://wp-2geart/wp-content/plugins/redux-framework/ReduxCore/../sample/presets/preset2.png\";s:16:\"opt-select-image\";s:95:\"http://wp-2geart/wp-content/plugins/redux-framework/ReduxCore/../sample/patterns/triangular.png\";s:16:\"opt-slider-label\";s:3:\"250\";s:15:\"opt-slider-text\";s:2:\"75\";s:16:\"opt-slider-float\";s:3:\"0.5\";s:11:\"opt-spinner\";s:2:\"40\";s:19:\"opt-typography-body\";a:10:{s:11:\"font-family\";s:26:\"Arial,Helvetica,sans-serif\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:6:\"Normal\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:10:\"text-align\";s:0:\"\";s:9:\"font-size\";s:4:\"30px\";s:11:\"line-height\";s:0:\"\";s:5:\"color\";s:7:\"#dd9933\";}s:14:\"opt-typography\";a:11:{s:11:\"font-family\";s:4:\"Abel\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:3:\"700\";s:7:\"subsets\";s:0:\"\";s:10:\"text-align\";s:0:\"\";s:9:\"font-size\";s:4:\"33px\";s:11:\"line-height\";s:4:\"40px\";s:5:\"color\";s:4:\"#333\";}s:14:\"opt-datepicker\";s:0:\"\";s:19:\"opt-homepage-layout\";a:3:{s:7:\"enabled\";a:5:{s:7:\"placebo\";s:7:\"placebo\";s:10:\"highlights\";s:10:\"Highlights\";s:6:\"slider\";s:6:\"Slider\";s:10:\"staticpage\";s:11:\"Static Page\";s:8:\"services\";s:8:\"Services\";}s:8:\"disabled\";a:1:{s:7:\"placebo\";s:7:\"placebo\";}s:6:\"backup\";a:1:{s:7:\"placebo\";s:7:\"placebo\";}}s:21:\"opt-homepage-layout-2\";a:2:{s:8:\"disabled\";a:3:{s:7:\"placebo\";s:7:\"placebo\";s:10:\"highlights\";s:10:\"Highlights\";s:6:\"slider\";s:6:\"Slider\";}s:7:\"enabled\";a:3:{s:7:\"placebo\";s:7:\"placebo\";s:10:\"staticpage\";s:11:\"Static Page\";s:8:\"services\";s:8:\"Services\";}}s:14:\"opt-text-email\";s:13:\"test@test.com\";s:18:\"opt-text-post-type\";a:3:{s:10:\"attachment\";s:5:\"Media\";s:4:\"page\";s:5:\"Pages\";s:4:\"post\";s:5:\"Posts\";}s:14:\"opt-multi-text\";a:1:{i:0;b:0;}s:12:\"opt-text-url\";s:25:\"http://reduxframework.com\";s:16:\"opt-text-numeric\";s:1:\"0\";s:22:\"opt-text-comma-numeric\";s:1:\"0\";s:25:\"opt-text-no-special-chars\";s:1:\"0\";s:20:\"opt-text-str_replace\";s:53:\"Thisthisisaspaceisthisisaspacethethisisaspacedefault.\";s:21:\"opt-text-preg_replace\";s:10:\"no numbers\";s:24:\"opt-text-custom_validate\";s:1:\"0\";s:20:\"opt-textarea-no-html\";s:27:\"No HTML is allowed in here.\";s:17:\"opt-textarea-html\";s:24:\"HTML is allowed in here.\";s:22:\"opt-textarea-some-html\";s:29:\"Some HTML is allowed in here.\";s:15:\"opt-textarea-js\";s:0:\"\";s:18:\"opt-required-basic\";s:0:\"\";s:23:\"opt-required-basic-text\";s:0:\"\";s:19:\"opt-required-nested\";s:0:\"\";s:29:\"opt-required-nested-buttonset\";s:11:\"button-text\";s:24:\"opt-required-nested-text\";s:0:\"\";s:28:\"opt-required-nested-textarea\";s:0:\"\";s:26:\"opt-required-nested-editor\";s:0:\"\";s:23:\"opt-required-nested-ace\";s:0:\"\";s:19:\"opt-required-select\";s:10:\"no-sidebar\";s:32:\"opt-required-select-left-sidebar\";s:0:\"\";s:33:\"opt-required-select-right-sidebar\";s:0:\"\";s:9:\"wpml-text\";s:0:\"\";s:15:\"wpml-multicheck\";a:3:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";}s:19:\"opt-customizer-only\";s:1:\"2\";s:12:\"opt-patterns\";i:0;s:11:\"opt-presets\";i:0;s:17:\"opt-slider-select\";a:2:{i:1;i:100;i:2;i:300;}}', 'yes'),
(177, 'geart_option-transients', 'a:3:{s:14:\"changed_values\";a:1:{s:18:\"geart-city-address\";a:6:{s:14:\"Address City 1\";s:7:\"address\";s:14:\"Address City 2\";s:7:\"address\";s:14:\"Address City 3\";s:7:\"address\";s:14:\"Address City 4\";s:7:\"address\";s:14:\"Address City 5\";s:7:\"address\";s:14:\"Address City 6\";s:7:\"address\";}}s:9:\"last_save\";i:1568803280;s:13:\"last_compiler\";i:1568793391;}', 'yes'),
(233, 'acf_version', '5.8.3', 'yes'),
(277, 'category_children', 'a:0:{}', 'yes'),
(302, 'portfolio-category_children', 'a:0:{}', 'yes'),
(325, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1569407908;s:7:\"checked\";a:2:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.3\";s:35:\"redux-framework/redux-framework.php\";s:6:\"3.6.15\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.3\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:35:\"redux-framework/redux-framework.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/redux-framework\";s:4:\"slug\";s:15:\"redux-framework\";s:6:\"plugin\";s:35:\"redux-framework/redux-framework.php\";s:11:\"new_version\";s:6:\"3.6.15\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/redux-framework/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/redux-framework.3.6.15.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/redux-framework/assets/icon-256x256.png?rev=995554\";s:2:\"1x\";s:59:\"https://ps.w.org/redux-framework/assets/icon.svg?rev=995554\";s:3:\"svg\";s:59:\"https://ps.w.org/redux-framework/assets/icon.svg?rev=995554\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/redux-framework/assets/banner-772x250.png?rev=793165\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(329, 'type clients_children', 'a:0:{}', 'yes'),
(334, 'portfolio_children', 'a:2:{i:9;a:1:{i:0;i:10;}i:10;a:1:{i:0;i:11;}}', 'yes'),
(463, 'categories-portfolio_children', 'a:4:{i:15;a:3:{i:0;i:18;i:1;i:19;i:2;i:20;}i:13;a:5:{i:0;i:21;i:1;i:22;i:2;i:23;i:3;i:24;i:4;i:25;}i:16;a:1:{i:0;i:26;}i:14;a:2:{i:0;i:27;i:1;i:28;}}', 'yes'),
(469, 'type-portfolio_children', 'a:0:{}', 'yes'),
(474, 'type-portfolio-design_children', 'a:0:{}', 'yes'),
(476, 'type-portfolio-web-design_children', 'a:0:{}', 'yes'),
(478, 'type-portfolio-app-design_children', 'a:0:{}', 'yes'),
(480, 'type-portfolio-cms-design_children', 'a:0:{}', 'yes'),
(532, '_transient_timeout_select2-css_style_cdn_is_up', '1569409960', 'no'),
(533, '_transient_select2-css_style_cdn_is_up', '1', 'no'),
(534, '_transient_timeout_select2-js_script_cdn_is_up', '1569409960', 'no'),
(535, '_transient_select2-js_script_cdn_is_up', '1', 'no'),
(536, '_site_transient_timeout_browser_43fbb95c9bbbf2dcd00331855caa9051', '1569936155', 'no'),
(537, '_site_transient_browser_43fbb95c9bbbf2dcd00331855caa9051', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"68.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(538, '_site_transient_timeout_php_check_464f4068caea2f8f3edcc5ae59429c65', '1569936155', 'no'),
(539, '_site_transient_php_check_464f4068caea2f8f3edcc5ae59429c65', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(561, '_transient_timeout_feed_7fa907073bddbc2fc2b2bb18c9dfef16', '1569442722', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(562, '_transient_feed_7fa907073bddbc2fc2b2bb18c9dfef16', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Redux Framework\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"https://redux.io\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:44:\"The most powerful WordPress input framework.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 16 Mar 2019 22:16:04 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"en-US\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:73:\"\n		\n		\n				\n				\n		\n				\n		\n		\n		\n		\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"Redux v4 Beta Official Launch\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://redux.io/2019/02/18/redux-v4-beta-official-launch/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://redux.io/2019/02/18/redux-v4-beta-official-launch/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 18 Feb 2019 23:00:12 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:5:{i:0;a:5:{s:4:\"data\";s:8:\"Newswire\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:9:\"beta test\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:7:\"redux 4\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:17:\"redux framework 4\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:9:\"version 4\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"https://redux.io/?p=11094\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:293:\"Buckle up, devs! The launch of the long anticipated Redux v4 Beta is finally here! I&#8217;ll skip my usual long-winded posts and get right to the things you need to know now! This is a &#8216;soft launch&#8217;. It means we&#8217;re putting it out there and giving a general notice without...\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"Kevin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:12408:\"<p>Buckle up, devs! The launch of the long anticipated Redux v4 Beta is finally here! I&#8217;ll skip my usual long-winded posts and get right to the things you need to know now!</p>\n<p>This is a &#8216;soft launch&#8217;. It means we&#8217;re putting it out there and giving a general notice without a full-on grand opening just yet. That&#8217;s going to come when we launch our new site very soon! In Las Vegas, they call it a &#8216;soft open&#8217;. 🙂</p>\n<p>We&#8217;ve housed the code for Redux v4 in our public GitHub repository. You can find it here: <a href=\"https://github.com/reduxframework/redux-framework-4\" target=\"_blank\" rel=\"noopener noreferrer\">https://github.com/reduxframework/redux-framework-4</a>. Now, before you go clicking that link and getting to the good stuff, which I know you want to do, please review the following first. It&#8217;s important stuff you need to know before beginning.</p>\n<p>Have fun, folks!</p>\n<p>&nbsp;</p>\n<h3><strong>Welcome to the Redux 4.0 Beta</strong></h3>\n<p>Here are several guidelines to consider when testing:</p>\n<p>1. While we feel this version of Redux is fast approaching stable, we must caution you about using this code in production. At this time &#8211; should you chose to do so &#8211; it&#8217;s with no guarantees from us for any given feature or function.</p>\n<p>2. Unlike the current v3 of Redux, the plugin slug for v4 is not yet &#8216;redux-framework&#8217;. It is HIGHLY recommended you do not install this version into the current v3 folder. The slug for this private build is &#8216;redux-framework-4&#8217; and is what the plugin folder is titled. When testing, please disable the v3 plugin. Remember, the active plugin of Redux will supersede any embedded version. You are also free to use embedding.</p>\n<p>3. As far as known issues go, there are potentially two we are aware of that will require my further investigating. The first is a possible &#8216;run in&#8217; with an embedded v3 when running v4 as a plugin. The other is custom styling for the v4 option panel. Some folks have restyled Redux to their own liking. Because Redux v4 is now theme aware, current custom CSS may not render properly. If that should happen, it is possible to turn off the &#8216;theme aware&#8217; feature and return to the v3 styling which will not interfere with any custom styling. To do this, all the following argument to your global arguments array: <code>\'admin_theme\' =&gt; \'classic\'</code></p>\n<p>4. For the time being, please report any issues to the <a href=\"https://github.com/reduxframework/redux-framework-4/issues\" target=\"_blank\" rel=\"noopener noreferrer\">redux-framework-4 issue tracker</a>. Please do not use the current redux-framework issue tracker for v3. If filing as issue, please be aware the the usual instructions for sending reports. Specifically, the support hash/URL and the specific steps and circumstances in which the issue occured. Basically, we&#8217;ll need instructions to guide us through what you did to recreate the issue. If need be, we may ask you for a copy of your project in the event we&#8217;re unable to recreate the issue on our own.</p>\n<p>5. Translations. Due to the undertaking of rewriting the Redux core, more than a few translation strings were changed, removed, or added. When Redux v4 goes &#8216;gold&#8217; and is added to wp.org, we will be using their online translation services. It will allow the community to add their own translations for the many languages out there. Redux would then automatically download the one it needs on demand, versus packing them all in one project. For now, a current .POT file is included in the ReduxCore/languages folder in the event you&#8217;d like to do some local translation. If so, please feel free to submit them via pull request. We will add them to wp.org when Redux v4 is released. Eventually, language submissions will be made here: <a href=\"https://translate.wordpress.org/projects/wp-plugins/redux-framework\" target=\"_blank\" rel=\"noopener noreferrer\">https://translate.wordpress.org/projects/wp-plugins/redux-framework</a> (No need to do so right now, as any work done will apply to v3 and NOT v4).</p>\n<p>6. Lastly, we are not accepting pull requests at this time. The reason for this is because this code is extremely complicated, especially in terms of backward compatibility with v3. Please propose changes via the issue tracker so they may be evaluated for backward compatibility.</p>\n<p>If you would like to interact with us directly, you can join our Slack workspace at <a href=\"http://slack.redux.io\" target=\"_blank\" rel=\"noopener noreferrer\">http://slack.redux.io</a>. Join us in the <a href=\"https://redux.slack.com/messages/CG9F75Y7L\" target=\"_blank\" rel=\"noopener noreferrer\">#redux-beta</a> channel. Our handles are @Kev and @dovy. Don&#8217;t be afraid to say hi!</p>\n<p>Please check back nightly for new code pushes.</p>\n<p>&nbsp;</p>\n<h3><strong>We still need your support!</strong></h3>\n<p>It is difficult and time consuming to continue development and support for this free plugin without contributions from users like yourself. If you enjoy using Redux Framework, find it useful, and if it&#8217;s saved you hours upon hours of development time, please consider <a href=\"https://www.gofundme.com/development-of-redux-framework-v4\" target=\"_blank\" rel=\"noopener noreferrer\">donating and helping us hit our fundraising goal</a>. Your donations will help encourage and support the plugin&#8217;s continued development and better user support.</p>\n<p>&nbsp;</p>\n<h3><strong>Changelog</strong></h3>\n<p>See the <a href=\"https://github.com/reduxframework/redux-framework-4/blob/master/CHANGELOG.md\" target=\"_blank\" rel=\"noopener noreferrer\">Redux v4 Changelog.</a></p>\n<p>&nbsp;</p>\n<h3><strong>What&#8217;s new?</strong></h3>\n<p><strong>Core Rewrite</strong></p>\n<p>Our code base has been rebuilt from the ground up. With compartmentalized code, autoloading, and class inheritance, Redux is now faster and more efficient than it&#8217;s ever been!</p>\n<p><strong>Top of the Line Security!</strong></p>\n<p>Redux meets security standards laid out by WordPress Coding Standards, WordPress VIP Standards, and ThemeForest Guidelines. Focus includes escaping, sanitizing, and nonces verification, and database query prep/caching.</p>\n<p><strong>Automatic Google Font Updates.</strong></p>\n<p>This is one of the crown jewels of Redux v4! Your users will have the ability to update Google Fonts as updates are available or automatic &#8216;behind the scenes&#8217; updates. No more waiting for updates and no API key required!</p>\n<p><strong>Basic Metaboxes</strong></p>\n<p>Redux now contain a &#8216;lite&#8217; version of Metaboxes to support basic fields such as <code>Checkbox, Radio Button, Text, Textarea, Media</code>, and <code>Color</code>. It&#8217;s part of our expanse into the interface builder realm.</p>\n<p>Post Format and Page Template features are also not available. These features plus support for all fields will be available in the Advanced Metaboxes portion of Redux Pro.</p>\n<p>Due to the complex nature in which the Metaboxes feature integrates with Redux and existing option panels, it is important that a strict load order be maintained. The metabox config must be loaded in your option config via a specific action hook, otherwise the metaboxes config will not load properly. The see <code>BEGIN METABOX CONFIG</code> section of the <a href=\"https://github.com/reduxframework/redux-framework-4/blob/master/sample/sample-config.php\" target=\"_blank\" rel=\"noopener noreferrer\">sample-config.php</a> file.</p>\n<p>The current Metabox extension *is* supported and will override the lite version.</p>\n<p><strong>Field Sanitizing</strong></p>\n<p>Field sanitizing allows one to pass an array of function names as an argument to a field in which the return value will be the sanitizing string. This feature will only work with text based fields including text, textarea, and multi_text (ACE Editor and WP Editor not included).</p>\n<p>One may use any existing function including PHP functions, WordPress functions and custom written functions. The return value of any used function must be that of a string. Any other return value will be disregarded.</p>\n<p>Please view the <a href=\"https://github.com/reduxframework/redux-framework-4/blob/master/sample/sample-config.php\" target=\"_blank\" rel=\"noopener noreferrer\">sample-config.php</a> file for specific examples.</p>\n<p><strong>Select2 AJAX Loading</strong></p>\n<p>The AJAX loading routines for the select2 fields have been fixed/finished. See the &#8216;capabilities&#8217; field in the demo panel for an example.</p>\n<p>For the interim, this feature will only work when used in conjunction with the <code>data</code> argument (that is, the one that fetches WordPress data).</p>\n<p>To set AJAX loading, add the <code>\'ajax\' =&gt; true</code> argument to your select field. The <code>min_input_length</code> argument may also be added to specify how many characters should be typed before results are shown. Default is <code>1</code>.</p>\n<p><strong>Field/Section Disabling</strong></p>\n<p>This feature has been request quite a few times over the years. Fields and sections can now be disabled by adding the <code>\'disabled\' =&gt; true</code> argument to either a section or a field. The section or field will then appear &#8216;grayed out&#8217; and not respond to input. This comes in handy in the event one may want to offer teasers for premium versions of their products.</p>\n<p>Since those with a little CSS know-how could easily reactive disabled fields with a little CSS, we took the added precaution of having Redux remove any <code>name</code> attributes on disabled fields/sections. This way, even if a clever user reactivates the field, it will never save.</p>\n<p><strong>Updated Panel Interface</strong></p>\n<p>The option panel interface has been brought up to date with the current WordPress admin design. It is also now &#8216;theme aware&#8217;. Panel colors will now follow suit with the selected admin theme.</p>\n<p><strong>Improved Field Validation</strong></p>\n<p>Due to the need for multiple field validations, Redux now supports an array of validations versus the previously limiting single argument. Validation results now appear in real time after a save without the need for page refresh.</p>\n<p><strong>Full v3 Backward Compatibility</strong></p>\n<p>We take backward compatibility very seriously here and strive to maintain it. Redux v4 has been designed to act as a drop in replacement to offer new functionality without breaking existing functionality.</p>\n<p>&nbsp;</p>\n<h3>A Note About Current Redux Extensions</h3>\n<p>Redux v4 has been tested with our current extension library. Nothing serious has come up thus far. However, if you are using extensions and find an issue, please report it on the redux-framework-4 issue tracker. If warranted. updates to extensions will be released for compatibility purposes only. In order to receive updates to extensions, your subscription <strong>MUST</strong> be current and active. There are no exceptions.</p>\n<p>Future development of our extension library for new features and updates for Redux v4 will come in the form of Redux Pro. Announcements about this product will be made as they become available.</p>\n<p>&nbsp;</p>\n<h3>Frequently Asked Questions</h3>\n<p><strong>What happens to Redux v3 when v4 is finished?</strong></p>\n<p>Upon completion, Redux v4 will completely replace v3 in our primary repository and at wp.org. At that time, we will no longer be offering v3 in any form nor will we be maintaining any code v3. Any copies or forks out there will be considered deprecated and should be considered &#8216;as is&#8217;.</p>\n<p><strong>Is Redux v4 free?</strong></p>\n<p>Yes. This is the &#8216;core&#8217; and it remains free to use, fork, embed, etc. However, what you see is what you get. All new features, extensions, add-ons, etc will come in the form of Redux Pro, which will require a maintained subscription for licensed usage. We do not yet have details to offer about availability or pricing at this time. Please join our mailing list for updates on this and other Redux related news as it becomes available: <a href=\"https://redux.io/subscribe-to-redux-framework\" target=\"_blank\" rel=\"noopener noreferrer\">https://redux.io/subscribe-to-redux-framework</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"https://redux.io/2019/02/18/redux-v4-beta-official-launch/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:73:\"\n		\n		\n				\n				\n		\n				\n		\n		\n		\n		\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"Redux 4.0 – We Need Your Help!\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://redux.io/2018/11/18/redux-4-0-we-need-your-help/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"https://redux.io/2018/11/18/redux-4-0-we-need-your-help/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 18 Nov 2018 07:50:12 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:5:{i:0;a:5:{s:4:\"data\";s:8:\"Newswire\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:9:\"beta test\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:8:\"gofundme\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:17:\"redux framework 4\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:9:\"version 4\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://reduxframework.com/?p=9139\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:297:\"Greetings from the cone of silence, Reduxians (Reduxers?  Not sure on the nomenclature here 😉 )! Yeah, I know, it&#8217;s been a while.  A little over a year, in fact.  There was the whole announcement about a beta for Redux 4 last October and then&#8230;poof!  Well, not really, it just...\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"Kevin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:15852:\"<p>Greetings from the cone of silence, Reduxians (Reduxers?  Not sure on the nomenclature here 😉 )!</p>\n<p>Yeah, I know, it&#8217;s been a while.  A little over a year, in fact.  There was the whole announcement about a beta for Redux 4 last October and then&#8230;poof!  Well, not really, it just looked that way.  Lots of work continued, albeit more slowly than we would have liked.  The time we used to have to devote to the current upkeep of v3 and work on v4 became&#8230;limited.  Life happens.  Jobs, family, the occasional day off.  Those types of things.  Then there is the funding issue and that&#8217;s why we are here today.  We need your help.</p>\n<p>To put it bluntly, the entire project is barely self sustaining.  We tried many ways to keep going through the years.  We&#8217;ve asked for donations, we&#8217;ve offered premium products.  It&#8217;s been enough to keep the basic bills paid.  Things like this website, the cost of domain registration, and related administration costs.  Otherwise, the time committed to this has been mostly volunteer.  It&#8217;s one of the reasons Redux v4 has been in limbo as long as it has been.  It&#8217;s frustrating for us and for those waiting as well.  We understand that frustration and we&#8217;re sorry it&#8217;s taken so long to get to this point.  A <a href=\"https://www.gofundme.com/development-of-redux-framework-v4\" target=\"_blank\" rel=\"noopener\">GoFundMe</a> campaign has been set up to raise the funds needed to drive this thing home.  We&#8217;d like your help to hit our goal.</p>\n<p>Here is the link if you&#8217;d prefer to skip my pitch and chip in directly!  😉  <a href=\"https://www.gofundme.com/development-of-redux-framework-v4\" target=\"_blank\" rel=\"noopener\">https://www.gofundme.com/development-of-redux-framework-v4</a></p>\n<p>Still with me?  Awesome!  Allow me explain in more detail what&#8217;s going on, what to expect, and more importantly what Redux v4 has to offer.</p>\n<p>As I am sure most of you know, Redux Framework for WordPress &#8211; since its beginning in late 2013 &#8211; has become the most popular and most used WordPress option framework for developers of WordPress themes and plugins. With over 700,000 active installations and usage on over 4 million sites, we&#8217;re number one for a reason. Our software has saved thousands upon thousands of developers like yourself dozens of development hours by creating a beautiful option panel for you. Currently, Redux is also free, with free basic support. This type of work takes an a huge amount of time and effort.  In order to keep Redux v4 free, a <a href=\"https://www.gofundme.com/development-of-redux-framework-v4\" target=\"_blank\" rel=\"noopener\">GoFundMe</a> campaign has been setup. The funds raised will go toward the completion of the beta and ultimately the final product.  Backers who contribute $20.00 or more to this campaign are guaranteed full and free access regardless the results.  All backers will be recognized on our website with a link to their website or product (you are free to opt out and remain anonymous if you so choose).   If we reach our goal, we&#8217;ll take the beta public.  Your help will not only help us achieve our goal, but will also help keep the project alive for everyone.  This is why we feel it&#8217;s important for everyone to chip in and give a little back.  We&#8217;re a community.  We need to look out for one another</p>\n<p>Now, let&#8217;s talk about what to expect in Redux v4.  This is the beginning of a new phase for the company, Redux.io.  We are moving away from a traditional options panel into a full fledged interface builder.  The ability to easily create powerful option panels for your projects will always be at the core of Redux.  But we are planning to go much further as Redux v4 develops.  There are plans for a full interface builder which, in essence, would allow one to build an entire option panel without writing a single line of code.  A little teaser there.  There are plans to move Redux fields into the <a href=\"https://developer.wordpress.org/rest-api/\" target=\"_blank\" rel=\"noopener\">REST API</a>.  There may even be plans to adapt Redux fields to the most popular page builders available.  And <a href=\"https://wordpress.org/plugins/gutenberg/\" target=\"_blank\" rel=\"noopener\">Gutenberg</a>?  Yes, we&#8217;ll be adapting to that as well.  For now, this is what you can expect straight away with Redux v4:</p>\n<ul class=\"bullet_star imglist\">\n<li><strong>Major core rewrite.<br />\n</strong>If you&#8217;ve ever taken an actual look at the Redux v3 code base, you&#8217;d see it&#8217;s a bit of a mess.  Most everything is crammed into one file.  Much of it is spaghetti code.  It&#8217;s what happened in the beginning when several frameworks came together to make one ( I wrote about this in depth <a href=\"https://reduxframework.com/2017/10/redux-4-0-beta-test/\" target=\"_blank\" rel=\"noopener\">here</a>, if you&#8217;re interested).  As the years went by, we because to separate bits out of the whole into classes.  Doing this for production code in it&#8217;s current state became too messy and introduced some problems along the way.  A full rewrite was needed, and that&#8217;s what happened.  Now the core is split into smaller, readable bits.  We now <a href=\"http://php.net/manual/en/language.oop5.autoload.php\" target=\"_blank\" rel=\"noopener\">autoload</a> our classes and use inheritance.  It&#8217;s sped up things quit e a bit.  Along the way I delved into the concepts of security, especially as it applies to WordPress, themes, and plugins.  Which leads me to&#8230;</li>\n</ul>\n<ul class=\"bullet_star imglist\">\n<li><strong>Top of the line security.</strong><br />\nRedux v4 will meet or exceed code standard laid out by <a href=\"https://codex.wordpress.org/WordPress_Coding_Standards\" target=\"_blank\" rel=\"noopener\">WordPress Coding Standards</a>. an additional set of standards used by <a href=\"https://vip.wordpress.com/documentation/vip-go/vip-code-review/\" target=\"_blank\" rel=\"noopener\">WordPress VIP</a> (we remain unaffiliated), and <a href=\"https://help.author.envato.com/hc/en-us/sections/360000091586-WordPress-Requirements-for-Envato-Market\" target=\"_blank\" rel=\"noopener\">ThemeForest</a> (using their <a href=\"https://github.com/envato/envato-theme-check\" target=\"_blank\" rel=\"noopener\">proprietary theme check plugin</a>, which I gotta say is very strict).  These resources focus highly on security.  These including proper escaping and sanitizing techniques, <a href=\"https://codex.wordpress.org/WordPress_Nonces\" target=\"_blank\" rel=\"noopener\">nonces</a> for AJAX and form submissions, and other <a href=\"https://www.owasp.org/images/7/72/OWASP_Top_10-2017_%28en%29.pdf.pdf\" target=\"_blank\" rel=\"noopener\">OWASP concerns</a>.  I used the same <a href=\"https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards\" target=\"_blank\" rel=\"noopener\">CodeSniffer rulesets</a> to audit the entire framework.  These are also the same standards <a href=\"https://automattic.com/\" target=\"_blank\" rel=\"noopener\">Automattic</a> applies to their product line, including WooCommerce and Jetpack.  The work to keep Redux v4 as secure as possible will always be a top concern and priority.  Speaking as a developer, these standards are something I would highly recommend you run your products through.  One can never be too careful or too secure.  I learned quite a bit during these code sweeps and you too!  Our extensions library will also soon be undergoing the same audits.</li>\n</ul>\n<ul class=\"bullet_star imglist\">\n<li><strong>Manual &amp; automatic Google Font updates</strong><br />\nThis is one of the crown jewels of Redux v4.  The updating of Google font resources was always a major issue for v3 users, and rightly so.  Redux users basically had to wait for us to update them.  We attempted to incorporate a self updating feature, but it required a Google API key.  Any successful project could blow the limit on such a key very quickly.  Plus, I believe ThemeForest stopped allow developers to include such a key in their projects.  Web server permission issues also cropped up frequently.  The auto update feature failed for many of our users and their clients.  This new method Dovy introduced in v4 solved all of that.  We handle the updating of the Google fonts on our end, via <a href=\"https://travis-ci.org/\" target=\"_blank\" rel=\"noopener\">Travis CI</a>. (You can see it <a href=\"https://github.com/reduxframework/google-fonts\" target=\"_blank\" rel=\"noopener\">here</a> if this interests you). Since we run the check only once a day, our API key never reaches it&#8217;s limit.  Pretty ingenious, eh?  Redux then pings our server every week to check for an updated JSON file.  If it finds one, you are notified and given the option to update.  Two options actually.  Your users will have the ability to update as updates are available or use automatic updates behind the scenes (see the screen shot above).  Now there will be no need to wait on us to update the Google fonts array in our core package.</li>\n</ul>\n<ul class=\"bullet_star imglist\">\n<li><strong>Basic Metaboxes with standard fields</strong><br />\nRedux v4 will now contain is lite version of Metaboxes to support basic fields.  It&#8217;s part of our expanse into the interface builder realm.  Advanced fields will still require an active subscription to the what will be renamed as the Advanced Metaboxes extension.</li>\n</ul>\n<ul class=\"bullet_star imglist\">\n<li><strong>Updated panel interface</strong><br />\nThe Redux v3 option panel interface was based on the WordPress admin interface as WordPress appeared many years ago before the advent of admin themes.  It&#8217;s time we caught up as well.  Redux v4 now matches the current admin style, and is &#8216;theme aware&#8217; (see the screen shot above).  If you should change the color of your admin theme, Redux will follow suit!</li>\n</ul>\n<ul class=\"bullet_star imglist\">\n<li><strong>Full backward compatibility with v3</strong><br />\nThis standard has been so important to Dovy and I since we began working together.  Personally &#8211; as a developer in the industry for some twenty-something years now &#8211; nothing frustrates me more that backward compatibility issues with software.  We don&#8217;t want to do that to you, and we&#8217;ve gone to greats lengths to keep it that way.  Redux v4 will be no different.  Updated code and classes are &#8216;shimmed&#8217; so that older public function calls and hooks/filters remain in place.  This is why we are conducting our beta tests.  We would like to eliminate as many of those scenarios as possible before going &#8216;gold&#8217; (that&#8217;s an old industry term for production release  😉 ) .</li>\n</ul>\n<ul class=\"bullet_star imglist\">\n<li><strong>Improved field validation</strong><br />\nField validation is important in our quest for better security.  It allows one to filter out input at the panel level, specifically in real-world instances that cannot be compensated for inside our core.  Redux v3 only allowed for one validation argument per field.  We&#8217;ve had many requests for the ability to add more than one validation to any given field or to create new validations to combine existing validations.  It became so we could not accommodate everyone by constantly adding new validation classes to the core.  Now with Redux v4, the validation argument supports arrays.  Specify as many validations as you like!  Also, validation error and warning notices appear in real time after an AJAX save of the panel.  With v3, notices and warnings &#8211; in some cases &#8211; would not appear until after a page refresh.  We are also planning to add a &#8216;sanitize&#8217; argument with callback capability to fields as well.  Just one of the many requested improvements over the years!</li>\n</ul>\n<ul class=\"bullet_star imglist\">\n<li><strong>Significant code improvements</strong><br />\nThis may get a bit technical, so if you are a designer by trade and don&#8217;t understand the complex nature of JavaScript level code, then don&#8217;t worry.  You can skip this item.  Just know it&#8217;s a major improvement that&#8217;s good.  The opt_name argument of Redux is what makes each panel unique to each project, so if multiple authors were using Redux in different projects, they would not &#8216;run into each other.&#8217;  While this worked out well for the most part, we discovered instances were run ins still occurred.  Specifically, with our &#8216;required&#8217; feature as it pertains to Metaboxes, the Repeater field and the Customizer fields.  We&#8217;ve adapted out core JavaScript to be opt_name based, which will fix those lingering issues.  Those extensions will also require updates which are also nearly completed and forthcoming.  We&#8217;ve also fixed many small bugs and issues along the way!</li>\n</ul>\n<ul class=\"bullet_star imglist\">\n<li><strong>Vendor updates</strong><br />\nUsers of our Metaboxes extension reported a conflict with WooCommerce where select field rendering was an issue in either WooCommerce or Redux.  This occurred because of the <a href=\"https://select2.org/\" target=\"_blank\" rel=\"noopener\">Select2 vendor library</a>.  Woocommerce updated theirs to a new major version.  Incompatibilities with the older version we used cropped up. (Remember that backward compatibility frustration?  Well&#8230;).  Unfortunately, it was not as simple as updating our Select2 library as well since there were significant changes from Select2 v3 to v4.  It meant significant rewrites to fields that used Select2.  Redux v4 will no longer contain these conflict issues.  We&#8217;ve also updated the <a href=\"https://ace.c9.io/\" target=\"_blank\" rel=\"noopener\">ACE Editor library</a> and a few other internal ones as well.</li>\n</ul>\n<ul class=\"bullet_star imglist\">\n<li><strong>Redux Pro<br />\n</strong>Still slated as something we are working on is the premium Redux Pro effort as part of our expanse into the full interface builder world..  Redux v4 is designed specifically to interface with that project.  Redux Pro will not be compatible with v3.  As much as I would love to further spoil this product, it&#8217;s still a ways off and I cannot make any promises of release dates or betas at this time.  Announcements will be made via our <a href=\"https://reduxframework.com/subscribe-to-redux-framework/\" target=\"_blank\" rel=\"noopener\">email list</a> and<a href=\"https://www.facebook.com/ReduxFramework\" target=\"_blank\" rel=\"noopener\"> social media</a> as that time draws closer.</li>\n</ul>\n<p>As you can see, we&#8217;ve accomplish quite a bit over the last year, plus we have many fabulous new things in the works.  We are asking for the much needed financial support to push Redux v4 to the finish line. We would like to achieve this goal by the beginning of the new year. If you feel Redux and our effort behind it has saved you days or even weeks of development time, we are asking you donate to this project. Something from everyone who uses Redux will go a long way toward moving Redux into the future. We&#8217;ve come to a point where we truly do need the support of our users to keep Redux v4 free.  Please, consider our request and help us as we&#8217;ve helped you.</p>\n<p>When the beta is ready for testing and review, an announcement will be made via our blog, mailing list, and social media.  We&#8217;ll also have a Github repository set up for it to take feedback and issues that arise.</p>\n<p>Oh, one last thing; look for a redesign of our website in the coming months.  We think you&#8217;ll dig the updated design as much as we do.</p>\n<p>Thank you, and Happy Holidays to everyone.  🙂</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"https://redux.io/2018/11/18/redux-4-0-we-need-your-help/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"5\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:70:\"\n		\n		\n				\n				\n		\n				\n		\n		\n		\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"Redux 4.0 – A Beta Test\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"https://redux.io/2017/10/03/redux-4-0-beta-test/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://redux.io/2017/10/03/redux-4-0-beta-test/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 03 Oct 2017 00:39:32 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:4:{i:0;a:5:{s:4:\"data\";s:8:\"Newswire\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:9:\"beta test\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:17:\"redux framework 4\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:9:\"version 4\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"https://redux.io/?p=8613\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:332:\"So&#8230;it&#8217;s been, what?  A few years since we&#8217;ve posted something on our blog?  Yeah, we&#8217;re sorry about that.  Reports of our demise have been greatly exaggerated.  We&#8217;re still very much here, alive, and working on some things that we&#8217;ve been keeping under wraps for a better part of the year....\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"Kevin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:11605:\"<p>So&#8230;it&#8217;s been, what?  A few years since we&#8217;ve posted something on our blog?  Yeah, we&#8217;re sorry about that.  Reports of our demise have been greatly exaggerated.  We&#8217;re still very much here, alive, and working on some things that we&#8217;ve been keeping under wraps for a better part of the year.</p>\n<p>&nbsp;</p>\n<p>Understand, in the beginning, after Simple Options,  Options Framework,  NHP,  SMOF and Redux 2.0 all came together to make Redux 3.0, it rocked the developer community.  All these fine frameworks and their authors coming together for one super project that eventually became the #1 options framework for WordPress theme and plugin developers.  As time marched on, many of our core developers moved onto other projects, or away from WordPress completely.  Many other option frameworks still available have either been abandoned or &#8211; not to put too fine a point on it &#8211; don&#8217;t do nearly half of what Redux in is current incarnation does.  Today, The Redux Framework project is just <a href=\"https://github.com/dovy\" target=\"_blank\" rel=\"noopener\">Dovy</a>, and myself (<a href=\"https://github.com/kprovance\" target=\"_blank\" rel=\"noopener\">Kev</a>).  We&#8217;ve not given up or walked away from this amazing project.  The issue is, WordPress tools designed specifically for developers, versus WordPress users/consumers are not exactly the income providers that tools such as <a href=\"https://woocommerce.com/\" target=\"_blank\" rel=\"noopener\">WooCommerce</a>, <a href=\"http://bbpress.org/\" target=\"_blank\" rel=\"noopener\">bbPress</a>, <a href=\"http://jetpack.com/\" target=\"_blank\" rel=\"noopener\">JetPack</a> are.  Dovy and I were unable to work on Redux full time for the last few years, which meant divided time between the Redux project we love so much &#8211; the one in which we still give our blood, sweat, and tears &#8211; and those <a href=\"https://www.google.com/url?sa=t&amp;rct=j&amp;q=&amp;esrc=s&amp;source=web&amp;cd=4&amp;ved=0ahUKEwiO1bXjttPWAhVn9IMKHcnxC18QFgg5MAM&amp;url=http%3A%2F%2Fthestir.cafemom.com%2Fhome_garden%2F182312%2F10_pesky_jobs_women_love&amp;usg=AOvVaw0CPB0z1_qQGms7nWSBS1yq\" target=\"_blank\" rel=\"noopener\">pesky real jobs</a>.  Oh, and sometimes our families enjoy seeing us as well, from time to time.  🙂</p>\n<p>&nbsp;</p>\n<p>This is the big reason why we&#8217;ve not made our presence abundantly front and center for a few years now.  We&#8217;re still fixing issues that come up in the Redux core.  We&#8217;re still answering the issue tracker in what we believe is still a timely fashion.  We&#8217;re still doing everything we need to do to keep Redux alive and healthy.  Dovy and I had a conversation last year about what the future of Redux should be, and where we should go with it.  Much of the code base that is the Redux 3.x core is still a mish-mash of all those previously aforementioned combined frameworks.  Over the years, I&#8217;ve rewritten sections of it here and there, either through bug reports, or by discovering outdated code to keep up with WordPress updates, or in some cases code that simply was not optimized.  Plus, when security issues come up from our community, we address those immediately.  It&#8217;s the commitment we still make to be the the most trusted and secure options framework available.  The discussion we had revolved around breaking up that main framework.php &#8211; which was close to 4000 lines &#8211; into separate components and rewriting our main JavaScript file to support the opt_name argument, which would improve upon many features and provide for new ones we could not implement without those improvements.  The problem was&#8230;time.  Specifically, lack thereof.  Neither one of us had it to give.</p>\n<p>&nbsp;</p>\n<p>That changed for me earlier this year (2017, for when this post becomes dated).  I found myself without various commitments that occupied most of my time.  All of a sudden, I had more time than I knew what to do with.  So I sat down and began to implement all the ideas Dovy and I discussed.  That huge framework.php now contains a mere 314 lines, with everything else broken up and put into classes, which an <a href=\"http://php.net/manual/en/function.spl-autoload-register.php\" target=\"_blank\" rel=\"noopener\">autoloader</a> now handles.  Additionally, the classes (core and fields) now use <a href=\"http://php.net/manual/en/language.oop5.inheritance.php\" target=\"_blank\" rel=\"noopener\">Object Inheritance</a> which seems to have sped thing up a bit.  Somewhere in there I rewrote the main JavaScript file as well to support the opt_name argument.  This will provide a number of benefits.  The biggest will be the forthcoming Advanced Customizer feature of Redux Pro.</p>\n<p>&nbsp;</p>\n<p>Oops, Redux&#8230;what?  Pro&#8230;what?  Did I just spoil something?  Hmmm&#8230;maybe I did.  Keep reading&#8230;</p>\n<p>&nbsp;</p>\n<p>Anyways, a few other benefits of the opt_name implementation of our core JavaScript will also be seen by Metabox users, specifically where there are multiple metaboxes on the same page with different Redux instances (which means, two different projects using Redux appearing on the same page).  The Redux &#8216;required&#8217; feature would only work for one, and not the other.  There are also some benefits for validation.  For example, when using validation on certain fields where information needed to be changed or corrected, those changes would not be seen until after the page was refreshed and not directly after an AJAX based save.  Little things such as this, that folks have been wanting for years will now be possible.</p>\n<p>&nbsp;</p>\n<p>Oh, and just you wait and see what Dovy did for the typography field.  Automatic Google Font updates WITHOUT the need for a Google API key.  Yeah, you heard that right.  Redux now handles it all for you, minus all the annoying permissions issues that used to plague the weekly update feature, to the point where we had to shut it down.  It&#8217;s crazy amazing how it works.  It&#8217;s something you just gotta see for yourself.  Dovy did a kick ass job on it.  Personally, I think it should be the sole reason to upgrade.</p>\n<p>&nbsp;</p>\n<p>So, after all this work, it was clear that bumping Redux 3 a minor version number would not cut it.  This project was now Redux 4.0, and work for it has gone on all summer long.  See?  We&#8217;ve been busy!  Looks (or lack thereof) can be deceiving!  I also made the command decision to update the look of the option panel interface to better match WordPress itself, so the option panel inherits the selected WordPress theme color (using a system close to the one WordPress uses).  Plus, we&#8217;ve been laying the groundwork for Redux Pro compatibility, which version 3 will not have.</p>\n<p>&nbsp;</p>\n<p>Oh, rats&#8230;did I tease that Pro thing again?  Ah, well.  Once again, keep reading.  I want to get the importanct stuff out first, which brings me to backward compatibility.  That is, when version 4 rolls out, it can (and will) replace 3 with no breakage.</p>\n<p>&nbsp;</p>\n<p>Dovy and I come from a school of developers who believe backward compatibility should always be maintained, or that every possible and conceivable effort should be given to the subject (pay attention WooCommerce).  So far, I think we&#8217;ve been pretty good about, being as obsessive about it as we are.  Great lengths have gone into Redux 4.0 to maintain this compatibility, even with all the code changes made.  More than a few <a href=\"https://en.wikipedia.org/wiki/Shim_(computing)\" target=\"_blank\" rel=\"noopener\">shims</a> were used to keep our promise to do everything possible to maintain backward compatibility.  This bring me to point of this entire post.  We don&#8217;t want to simply roll out Redux 4.0 without giving it a good shakedown.  We need some other &#8211; and preferably hardcore &#8211; Redux users to load up version 4.0 and verify exactly how seamless the upgrade is.  If there are things we missed, we want to catch them now (you know, instead of potentially breaking over a million sites).  We would prefer to begin with a private beta, a small group of Redux users who are familiar with the project.  We have a private Github repo set up for this.  After a short interval, the Redux 4.0 core will be added via a development/beta branch to the public Github repo for anyone to download and test.  It won&#8217;t replace the 3.x version until we are reasonably sure everything is where it should be.  And then, when we&#8217;re ready, we&#8217;ll push Redux 4.0 for public consumption.  The skies will light up!  Angels will sing!  World peace will fall into place!  Okay, well, maybe not all those things, especially that last one.  It&#8217;ll be a good thing, is my point in chief!  it allows us to move forward with the Redux Framework Project in ways we&#8217;ve only dreamed of doing for years now, which always mean more benefits for our users, and in turn, their users.  Win/win/win.</p>\n<p>&nbsp;</p>\n<p>If you are interested in participating in our limited, private beta, fill out the form below.  You will need a Github account to receive an invitation to our private repo.  We&#8217;d also appreciate it if you&#8217;d let us know the project in which Redux is used.  If accepted, additional details will be provided in the email we&#8217;ll be sending out.  Alternatively, If you&#8217;d rather wait for the public beta, we can respect that too.  We&#8217;ll be making another blog post when that happens, detailing all the new features, and things we&#8217;d like checked, areas of focus, etc.</p>\n<p>&nbsp;</p>\n<form accept-charset=\"utf-8\" action=\"http://news.redux.io/subscribe\" method=\"POST\"><label for=\"name\">Name</label></p>\n<p><label for=\"email\">Email</label></p>\n<div><label for=\"hp\">HP</label></div>\n<p><label for=\"GithubName\">Github Name</label></p>\n<p><label for=\"ProjectName\">Project Name</label></p>\n<p>&nbsp;</p>\n<p>Oh wait&#8230;I did say I&#8217;d say something about Redux Pro.  Well, maybe I&#8217;ll just tease you a little it, like a high school junior prom date at the midnight hour.  It&#8217;s a premium project that will further enhance the Redux Core, similar to what our extensions library does.  After several at-length discussions we&#8217;ve had about the project, we&#8217;ve decided the Advanced Customizer will be part of it, as well as a reworking version of Custom Fonts.  Pro will also include Ad Remover.  it also won&#8217;t be targeted specifically to developers, but also users as well as the project progresses.  There will be some new fields, some major enhancements to existing fields.  We&#8217;ve basically decided all new features and efforts for Redux Framework will be dedicated to the Pro version.  We did promise a long time ago the Redux core would be free, and remain that way and we don&#8217;t want to break that promise while me continue to make efforts to further fund the Redux Framework Project into the future.</p>\n<p>&nbsp;</p>\n<p>That&#8217;s all I&#8217;m giving away right now.  🙂</p>\n<p>&nbsp;</p>\n<p>In the meantime, here are a few teaser screen caps.  Enjoy!</p>\n<p><img class=\"img-frame \" src=\"https://redux.io/wp-content/uploads/2017/10/box-shadow.png\" /></p>\n<p><img class=\"img-frame \" /><img class=\"img-frame \" src=\"https://redux.io/wp-content/uploads/2017/10/media-filter-1.png\" /></p>\n<p><img class=\"img-frame \" src=\"https://redux.io/wp-content/uploads/2017/10/text-shadow.png\" /></p>\n</form>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://redux.io/2017/10/03/redux-4-0-beta-test/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"10\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:61:\"\n		\n		\n				\n				\n		\n				\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"Theme-Check Compliant, at Long Last\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"https://redux.io/2015/07/04/theme-check-compliant/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://redux.io/2015/07/04/theme-check-compliant/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 04 Jul 2015 15:00:37 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Newswire\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"https://redux.io/?p=3403\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:327:\"For a long time now, we&#8217;ve wanted Redux Framework to be Theme-Check compliant. The two factors preventing this were mainly WP FileSystem API failure (we included some hardcoded fallbacks in place), and vendor files (other projects we utilize). Today, we are proud to announce that the most recent development build of...\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Dovy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2562:\"<p>For a long time now, we&#8217;ve wanted Redux Framework to be Theme-Check compliant. The two factors preventing this were mainly WP FileSystem API failure (we included some hardcoded fallbacks in place), and vendor files (other projects we utilize). Today, we are proud to announce that the most recent <a href=\"http://github.com/ReduxFramework/redux-framework\" target=\"_blank\" rel=\"noopener\">development build</a> of Redux will pass Theme-Check with flying colors!</p>\n<div class=\"tip-box\"><span class=\"box-icon\"> </span>And on that note, may freedom ring! Happy Independence Day America! 😉</div>\n<p>We took a hard look at all things within Redux that made Theme-Check bark like a schizophrenic dog. Honestly, we didn&#8217;t do anything horrible, we simply used direct functions rather than letting WordPress run the same functions. So, we decided to make the plunge. We shifted all file input/output to the WP Filesystem and made the changes to our Redux_Filesystem proxy class to handle our problem cases. We also removed a few URLs here, and some function names there.</p>\n<p>We also embedded some really useful custom Theme-Check checks to further assist developers in submitting their themes to marketplaces. We want you &#8211; as developers &#8211; to know exactly what you need to do to comply. We also added a custom WP.org check, to further help WP.org theme developers.</p>\n<p>Our next step is to add proper escaping to our field HTML output. Though Redux already escapes properly &#8211; since we use the WordPress settings API &#8211; we wanted to ensure you don&#8217;t have to tell your reviewers anything. We don&#8217;t want our code to be the cause of your work being flagged by marketplace reviewers. If we already escape something, we&#8217;ll add an inline comment so reviewers know what we are doing.</p>\n<p>In the end, we seek to comply. We want to ensure Redux is for for the masses and ready for any marketplace (no matter how specific the rules may be).</p>\n<h3>We Need Your Help!</h3>\n<p>Please test the <a href=\"http://github.com/ReduxFramework/redux-framework\" target=\"_blank\" rel=\"noopener\">development build</a> of Redux Framework in your own theme. Try out Theme-Check, and make sure we didn’t break anything. The sooner we have more eyes on these improvements, the sooner we’ll be able to make an official release, and the sooner we can push down some of our customizer fixes.   😉</p>\n<p>As always, a special thank you our developers. We hope you like Redux and that it makes your life easier.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"https://redux.io/2015/07/04/theme-check-compliant/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"6\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:61:\"\n		\n		\n				\n				\n		\n				\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"Updated WordPress.org Theme Requirements\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://redux.io/2015/04/22/updated-wordpress-org-theme-requirements/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"https://redux.io/2015/04/22/updated-wordpress-org-theme-requirements/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 22 Apr 2015 16:27:46 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Newswire\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"https://redux.io/?p=2792\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:415:\"To all devs who develop themes on WordPress.org. There is a new requirement that will go into effect within the next 6 months. You can read all the details here: https://make.wordpress.org/themes/2015/04/21/this-weeks-meeting-important-information-regarding-theme-options &#160; Essentially, the WordPress.org themes submission teams is mandating that theme developers ONLY use the Customizer for options. &#160;...\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Dovy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2181:\"<p>To all devs who develop <strong>themes</strong> on WordPress.org. There is a new requirement that will go into effect within the next 6 months. You can read all the details here: <a href=\"https://make.wordpress.org/themes/2015/04/21/this-weeks-meeting-important-information-regarding-theme-options/\" target=\"_blank\" rel=\"noopener\">https://make.wordpress.org/themes/2015/04/21/this-weeks-meeting-important-information-regarding-theme-options</a></p>\n<p>&nbsp;</p>\n<p>Essentially, the WordPress.org themes submission teams is mandating that theme developers ONLY use the Customizer for options.</p>\n<p>&nbsp;</p>\n<p>What does this mean for Redux users? Here are the terms:</p>\n<p>&nbsp;</p>\n<p>In 6 months time, all options MUST be customizer based for themes submitted to WP.org. Redux may be used, but only under these conditions.</p>\n<ul>\n<li>TGM to recommend Redux installed as a plugin OR follow the (instructions to embed Redux in a way that is approved by WP.org)[http://docs.stg.redux.io/core/wordpress-org-submissions/].</li>\n<li>Redux panel must be disabled, and only the `customizer_only` argument used.</li>\n<li>Only Customizer field types may be used. Any field that isn&#8217;t supported by the customizer must be coded by the developer or not used.</li>\n</ul>\n<p>&nbsp;</p>\n<p>These are the following field types that can be used in the customizer, but most cannot have advanced options.</p>\n<ul>\n<li>text</li>\n<li>checkbox</li>\n<li>radio</li>\n<li>select</li>\n<li>textarea</li>\n<li>color</li>\n<li>media</li>\n</ul>\n<p>&nbsp;</p>\n<p>Unfortunately this is beyond our control. You are welcome to voice your opinion if you feel motivated to do so here: <a href=\"https://make.wordpress.org/themes/2015/04/21/this-weeks-meeting-important-information-regarding-theme-options/\" target=\"_blank\" rel=\"noopener\">https://make.wordpress.org/themes/2015/04/21/this-weeks-meeting-important-information-regarding-theme-options</a></p>\n<p>&nbsp;</p>\n<p>It seems that any framework, aside from <a href=\"http://kirki.org\" target=\"_blank\" rel=\"noopener\">http://kirki.org</a>, should not be used in WordPress.org themes. Please voice your opinion if you have one to the WP.org team.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"https://redux.io/2015/04/22/updated-wordpress-org-theme-requirements/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:61:\"\n		\n		\n				\n				\n		\n				\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Happy Holidays\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"https://redux.io/2014/12/25/happy-holidays/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"https://redux.io/2014/12/25/happy-holidays/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 25 Dec 2014 03:26:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Newswire\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"https://redux.io/?p=2093\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:308:\"Holy cow, it&#8217;s already the end of the year! With no small amount of help from our incredible community, we&#8217;ve managed to make Redux the definitive options framework for 2014, and we&#8217;re still just getting started! In fact, we&#8217;ve got some big changes coming in 2015 that are going to...\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Dovy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:504:\"<p><span class=\"drop-caps\">H</span>oly cow, it&#8217;s already the end of the year! With no small amount of help from our incredible community, we&#8217;ve managed to make Redux the definitive options framework for 2014, and we&#8217;re still just getting started! In fact, we&#8217;ve got some big changes coming in 2015 that are going to blow your mind! So buckle up and stay tuned&#8230; 2015 is going to be the Year of Redux!</p>\n<p>Happy Holidays from Team Redux, and have a fantastic new year!</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"https://redux.io/2014/12/25/happy-holidays/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:61:\"\n		\n		\n				\n				\n		\n				\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"Sometimes Standards Don’t Always Work – Redux 3.3.4 Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"https://redux.io/2014/07/10/sometimes-standards-dont-always-work/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"https://redux.io/2014/07/10/sometimes-standards-dont-always-work/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 10 Jul 2014 19:35:48 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Newswire\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"https://redux.io/?p=1546\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:290:\"When we released Redux 3.3.0 on June 8th, 2014, we decided to follow a standard as per the suggestion of Otto. He wrote, “If you need to write files to be included in the page, like stylesheets, then you should make your own folder under /wp-content, not under /wp-content/uploads. The...\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Dovy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1783:\"<p>When we released Redux 3.3.0 on June 8th, 2014, we decided to follow a standard as per the suggestion of Otto.</p>\n<p>He wrote, “If you need to write files to be included in the page, like stylesheets, then you should make your own folder under <code>/wp-content</code>, not under <code>/wp-content/uploads</code>. The uploads directory should be used strictly for media files and downloads and other things uploaded through the various wp_upload functions.” <a href=\"http://wordpress.stackexchange.com/questions/124900/using-wp-filesystem-in-plugins\" target=\"_blank\" rel=\"noopener\">http://wordpress.stackexchange.com/questions/124900/using-wp-filesystem-in-plugins</a></p>\n<p>Believing his advice to be sound, we followed his suggestion. It caused more misery to devs than not. The lingering issue is simple, too many users install WordPress incorrectly. Often the ONLY directory that is writable is <code>/uploads/</code>. Combined that with the file owner of WordPress and the theme/plugin directories often being different, and the 3.3.0 changes have been a disaster in the making.</p>\n<p>As the Redux 3.3.0 code base spread out to our devs, and consequently their users, we received TONS of issues. We’ve worked to resolve each of them, but the fact remains that Otto&#8217;s advice is flawed, and users don’t know how to fix the problems is causes.</p>\n<p>We implemented this great new filesystem code believing it was the correct way to handle local storage, but it will never be used again. We’re writing to our proprietary directory the uploads directory from here on out.</p>\n<p>If anyone wishes to contribute code that works with Otto&#8217;s model, that actually works we would consider switching back. But for now, we choose function over opinion. 😛</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"https://redux.io/2014/07/10/sometimes-standards-dont-always-work/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"4\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:61:\"\n		\n		\n				\n				\n		\n				\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"Reduce Your Panel Load Time by 80%\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"https://redux.io/2014/06/11/load-time-reduced-by-80/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"https://redux.io/2014/06/11/load-time-reduced-by-80/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 11 Jun 2014 20:08:22 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Newswire\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"https://redux.io/?p=1261\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:297:\"Okay, so it&#8217;s only been a few days since our last release, and already we have another. We couldn&#8217;t wait, because, this is big! We&#8217;ve shaved off the panel load time by up to 80%. Yeah, you read that correctly. 80 PERCENT! This means &#8211; for example &#8211; a large option...\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Dovy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3954:\"<h3>Okay, so it&#8217;s only been a few days since our last release, and already we have another. We couldn&#8217;t wait, because, this is <strong><em>big</em></strong>! <span style=\"text-decoration: underline;\">We&#8217;ve shaved off the panel load time by up to 80%</span>.</h3>\n<h4>Yeah, you read that correctly. <strong>80 PERCENT!</strong></h4>\n<h6>This means &#8211; for example &#8211; a large option panel of a popular theme that used to take <span class=\"highlight1\">6.8 seconds</span> to load has been reduced to <span class=\"highlight2\">1.47 seconds</span>. We reduced load time for this theme&#8217;s option panel by <strong><span class=\"highlight2\">5.33 seconds</span> </strong> alone!</h6>\n<p>We realized speed was an issue and we went through every field in a concerted effort to determine which ones slowed the panel down the most, we found out that:</p>\n<ul>\n<li>It wasn&#8217;t in the PHP, we optimized all of that with the last release.</li>\n<li>The WordPress color picker in and of itself slows a panel down by up to <span style=\"text-decoration: underline;\">2 seconds</span>!</li>\n<li>The Editor, Ace Editor, and Slider fields slowed the panel down by <span style=\"text-decoration: underline;\">.8 &#8211; 1.2 seconds each</span>.</li>\n</ul>\n<h4>So how did we fix it? By initializing fields on &#8220;demand&#8221;.</h4>\n<p>The problem centered around too much JavaScript begin run on load. Now, with these latest improvements &#8211; the only time a field&#8217;s javascript loads is when it&#8217;s visible. Put another way, what you see on screen is all that&#8217;s affecting the DOM resources. Redux is literally now among &#8211; if not &#8211; one of the fastest frameworks out there.</p>\n<h5>Give it a try. You need only upgrade to see a noticeable difference. Everyone who has tried it, <strong>everyone</strong>, has noticed a difference.</h5>\n<h4>If you like what you see, please do <a href=\"https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&amp;hosted_button_id=MMFMHWUPKHKPW\" target=\"_blank\" rel=\"noopener\">donate</a>. These improvements required a substantial amount of effort, with no pay or compensation. <a href=\"https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&amp;hosted_button_id=MMFMHWUPKHKPW\" target=\"_blank\" rel=\"noopener\">A recurring (monthly) subscription of only $10</a> is all it takes for us to keep these improvements coming. Help support the thousands of developer hours that have gone into Redux. You help us, and we&#8217;ll keep making your project development that much easier.</h4>\n<div class=\"req-animated-button left\"><a class=\"btn_a  coloured large_btn req-animated-button-1 \"\n                               target=\"_blank\"\n                               href=\"https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&amp;hosted_button_id=MMFMHWUPKHKPW\"\n                               style=\"border-radius:3px;-moz-border-radius:3px;-webkit-border-radius:3px;-ms-border-radius:3px;    -o-border-radius:3px;\">\n                                <span style=\"background-color:#00a2e3;\">\n                                    <i class=\"fa fa-angle-right in_left\"></i>\n                                        <span style=\"\">Donate</span>\n                                    <i class=\"fa fa-angle-right in_right\"></i>\n                                </span>\n                            </a></div><style data-type=\"req-core-shortcodes-css\">.req-animated-button-1.btn_a:not(.coloured) i.in_left,.req-animated-button-1.btn_a:not(.coloured) i.in_right{color:rgba(68,116,157,1)!important;}.req-animated-button-1.btn_a:not(.coloured):hover{color:rgba(68,116,157,1)!important;}.req-animated-button-1{background-color:#00a2e3!important;}.req-animated-button-1{border-color:#00a2e3!important;}.req-animated-button-1{color:#ffffff;}.req-animated-button-1:hover{background-color:#ffffff !important;}.req-animated-button-1:hover{border-color:#e4e4e4!important;}.req-animated-button-1:hover{color:#666666;}</style>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://redux.io/2014/06/11/load-time-reduced-by-80/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:61:\"\n		\n		\n				\n				\n		\n				\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"Redux Framework 3.3.0 Released – “Need for Speed”\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"https://redux.io/2014/06/08/redux-framework-3-3-0-released-need-speed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"https://redux.io/2014/06/08/redux-framework-3-3-0-released-need-speed/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 08 Jun 2014 18:20:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Newswire\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"https://redux.io/?p=1232\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:314:\"It&#8217;s with great pleasure that we introduce the release of Redux 3.3.0 A.K.A. &#8220;Need for Speed.&#8221; We began with a rewrite of our typography field, specifically the way in which Google Fonts are loaded. There are dozens upon dozens of them! When devs add multiple Typography fields in their panel,...\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Dovy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1708:\"<p>It&#8217;s with great pleasure that we introduce the release of Redux 3.3.0 A.K.A. &#8220;Need for Speed.&#8221;</p>\n<p>We began with a rewrite of our typography field, specifically the way in which Google Fonts are loaded. There are dozens upon dozens of them! When devs add multiple Typography fields in their panel, the user experience (load time) becomes quite poor. We&#8217;re pleased to say this issue has been solved with this release. Thanks to the efforts of our main man Kevin, the typography field has be reworked to be much more efficient.</p>\n<p>In addition, we&#8217;ve found a many bugs, fixed some core design issues, added feature requested, and taken Redux to yet another level of stability, all while improving the overall feature set.</p>\n<p>To tie into all these improvements &#8211; and if you didn&#8217;t already know &#8211; the Redux Builder now gives you the option of creating custom builds of Redux with only the fields you specify! The building process has become much more modular, allowing us to providing these great new tools to you so you may lower the footprint of your embedded Redux. 😉</p>\n<p>As it currently stands, Redux 3.3.0 is the MOST STABLE version of Redux ever. The issues reported to us have become very, very basic. More often than not, we see more feature requests than bugs.</p>\n<p>Now is the time to upgrade Redux Framework your themes. Your users will thank you. We thank you.</p>\n<p>It&#8217;s been a great year thus far, and we look forward to more.</p>\n<p>Finally, in case you&#8217;ve not heard or seen it, you REALLY need to check out http://wpdemo.io, especially if you&#8217;re a developer and want to show-off what your product can do.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://redux.io/2014/06/08/redux-framework-3-3-0-released-need-speed/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"4\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:67:\"\n		\n		\n				\n				\n		\n				\n		\n		\n\n		\n				\n								\n							\n		\n							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"A Home Run – The Redux Builder\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"https://redux.io/2014/05/27/redux-builder/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"https://redux.io/2014/05/27/redux-builder/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 27 May 2014 16:22:33 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:8:\"Newswire\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:13:\"redux builder\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:15:\"redux framework\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"https://redux.io/?p=1134\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:300:\"You know you’ve hit a home run when your business&#8217;s activity doubles within two months and support issues are reduce by nearly 1/3.  That’s what has happened with Redux since we launched the Redux Builder. In early March, I conceived the idea to design a site that would auto-generate a...\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Dovy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2567:\"<p class=\"p1\"><span class=\"s1\">You know you’ve hit a home run when your business&#8217;s activity doubles within two months and support issues are reduce by nearly 1/3.  That’s what has happened with Redux since we launched the <a title=\"Redux Generator\" href=\"http://build.stg.redux.io\" target=\"_blank\" rel=\"noopener\">Redux Builder</a>.</span></p>\n<p class=\"p1\">In early March, I conceived the idea to design a site that would auto-generate a Redux<br />\nbuild.  Actually, I wanted to build a fully-fledged panel builder like Option Tree, but with the sheer amount of options available with Redux, the time required would be intense&#8230;and then some.  Instead, I considered building a boilerplate generator for themes.  And what better theme than the ever powerful <a title=\"_s\" href=\"http://underscores.me\" target=\"_blank\" rel=\"noopener\">_s</a> by <a title=\"Automattic\" href=\"http://automattic.com/\" target=\"_blank\" rel=\"noopener\">Automattic</a>?  I found their generator code and went to town, including a TGM integration, and a slew of Redux arguments.</p>\n<p class=\"p1\">Today, I am extremely pleased to announce we took the project it a step further.  We organized the arguments, gave descriptions, and links for each to our docs site.  We also made it so one could easily export to an admin folder instead of a theme.  This comes in handy for use in existing products and/or plugins.  Lastly, we&#8217;ve now made every Redux field completely independent.  As a result, you can generate a custom build of Redux Framework with your export!</p>\n<p class=\"p1\"> Yes, you read that correctly!  You can make a custom Redux Framework build!  Since one of the biggest complaints about Redux has been its size, weighing in at 6mb for all (34+) fields, the Framework tends to be quite heavy.  Now, that&#8217;s a thing of the past.</p>\n<p class=\"p1\">We’re really excited about the new version of the Redux Builder.  Major props to team member @kprovance for making Redux fields completely modular.</p>\n<p>If you haven’t tried the builder, you SHOULD.  It’s free.  It will save you time.  Oh, and it’s so very choice.</p>\n<h3 class=\"p1\" style=\"text-align: center;\"><a title=\"Redux Generator\" href=\"http://build.stg.redux.io\" target=\"_blank\" rel=\"noopener\">http://build.stg.redux.io</a></h3>\n<p>&nbsp;</p>\n<p class=\"p1\">Just a gentle reminder, Redux lives by donations and our extensions.  So if you like the generator, please consider donating a small amount to the project.  You support us, and we&#8217;ll keep making cool things.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"https://redux.io/2014/05/27/redux-builder/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"22\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:22:\"https://redux.io/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"\n	hourly	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"\n	1	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:16:{s:6:\"server\";s:12:\"nginx/1.10.3\";s:4:\"date\";s:29:\"Wed, 25 Sep 2019 08:18:43 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:10:\"set-cookie\";s:44:\"PHPSESSID=k63qfggjjp67eih2bq6k2olr0g; path=/\";s:7:\"expires\";s:29:\"Thu, 19 Nov 1981 08:52:00 GMT\";s:13:\"cache-control\";s:35:\"no-store, no-cache, must-revalidate\";s:6:\"pragma\";s:8:\"no-cache\";s:13:\"last-modified\";s:29:\"Tue, 03 Sep 2019 01:35:54 GMT\";s:4:\"etag\";s:34:\"\"56f3e52cd86be616582a1d455468512c\"\";s:4:\"link\";s:53:\"<https://redux.io/wp-json/>; rel=\"https://api.w.org/\"\";s:16:\"content-encoding\";s:4:\"gzip\";s:4:\"vary\";s:15:\"Accept-Encoding\";s:29:\"x-rocket-nginx-serving-static\";s:2:\"No\";s:25:\"strict-transport-security\";s:35:\"max-age=31536000; includeSubDomains\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:22:\"x-content-type-options\";s:7:\"nosniff\";}}s:5:\"build\";s:14:\"20190924075642\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(563, '_transient_timeout_feed_mod_7fa907073bddbc2fc2b2bb18c9dfef16', '1569442722', 'no'),
(564, '_transient_feed_mod_7fa907073bddbc2fc2b2bb18c9dfef16', '1569399522', 'no'),
(569, '_site_transient_timeout_theme_roots', '1569409707', 'no'),
(570, '_site_transient_theme_roots', 'a:1:{s:5:\"geart\";s:7:\"/themes\";}', 'no');

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
(2, 3, '_wp_page_template', 'default'),
(3, 3, '_wp_trash_meta_status', 'draft'),
(4, 3, '_wp_trash_meta_time', '1568719050'),
(5, 3, '_wp_desired_post_slug', 'privacy-policy'),
(10, 7, '_edit_lock', '1568990439:1'),
(11, 7, '_wp_page_template', 'template-home.php'),
(12, 9, '_menu_item_type', 'post_type'),
(13, 9, '_menu_item_menu_item_parent', '0'),
(14, 9, '_menu_item_object_id', '7'),
(15, 9, '_menu_item_object', 'page'),
(16, 9, '_menu_item_target', ''),
(17, 9, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(18, 9, '_menu_item_xfn', ''),
(19, 9, '_menu_item_url', ''),
(20, 9, '_menu_item_orphaned', '1568725474'),
(21, 10, '_menu_item_type', 'post_type'),
(22, 10, '_menu_item_menu_item_parent', '0'),
(23, 10, '_menu_item_object_id', '7'),
(24, 10, '_menu_item_object', 'page'),
(25, 10, '_menu_item_target', ''),
(26, 10, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(27, 10, '_menu_item_xfn', ''),
(28, 10, '_menu_item_url', ''),
(29, 10, '_menu_item_orphaned', '1568725474'),
(30, 11, '_edit_lock', '1569154477:1'),
(31, 13, '_edit_lock', '1569320083:1'),
(32, 15, '_edit_lock', '1569330844:1'),
(33, 17, '_edit_lock', '1569399430:1'),
(34, 19, '_edit_lock', '1569404273:1'),
(35, 21, '_menu_item_type', 'post_type'),
(36, 21, '_menu_item_menu_item_parent', '0'),
(37, 21, '_menu_item_object_id', '7'),
(38, 21, '_menu_item_object', 'page'),
(39, 21, '_menu_item_target', ''),
(40, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(41, 21, '_menu_item_xfn', ''),
(42, 21, '_menu_item_url', ''),
(43, 21, '_menu_item_orphaned', '1568725605'),
(44, 22, '_menu_item_type', 'post_type'),
(45, 22, '_menu_item_menu_item_parent', '0'),
(46, 22, '_menu_item_object_id', '15'),
(47, 22, '_menu_item_object', 'page'),
(48, 22, '_menu_item_target', ''),
(49, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(50, 22, '_menu_item_xfn', ''),
(51, 22, '_menu_item_url', ''),
(53, 23, '_menu_item_type', 'post_type'),
(54, 23, '_menu_item_menu_item_parent', '0'),
(55, 23, '_menu_item_object_id', '19'),
(56, 23, '_menu_item_object', 'page'),
(57, 23, '_menu_item_target', ''),
(58, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(59, 23, '_menu_item_xfn', ''),
(60, 23, '_menu_item_url', ''),
(62, 24, '_menu_item_type', 'post_type'),
(63, 24, '_menu_item_menu_item_parent', '0'),
(64, 24, '_menu_item_object_id', '7'),
(65, 24, '_menu_item_object', 'page'),
(66, 24, '_menu_item_target', ''),
(67, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(68, 24, '_menu_item_xfn', ''),
(69, 24, '_menu_item_url', ''),
(70, 24, '_menu_item_orphaned', '1568725605'),
(80, 26, '_menu_item_type', 'post_type'),
(81, 26, '_menu_item_menu_item_parent', '0'),
(82, 26, '_menu_item_object_id', '13'),
(83, 26, '_menu_item_object', 'page'),
(84, 26, '_menu_item_target', ''),
(85, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(86, 26, '_menu_item_xfn', ''),
(87, 26, '_menu_item_url', ''),
(89, 27, '_menu_item_type', 'post_type'),
(90, 27, '_menu_item_menu_item_parent', '0'),
(91, 27, '_menu_item_object_id', '17'),
(92, 27, '_menu_item_object', 'page'),
(93, 27, '_menu_item_target', ''),
(94, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(95, 27, '_menu_item_xfn', ''),
(96, 27, '_menu_item_url', ''),
(98, 28, '_menu_item_type', 'post_type'),
(99, 28, '_menu_item_menu_item_parent', '0'),
(100, 28, '_menu_item_object_id', '19'),
(101, 28, '_menu_item_object', 'page'),
(102, 28, '_menu_item_target', ''),
(103, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(104, 28, '_menu_item_xfn', ''),
(105, 28, '_menu_item_url', ''),
(107, 29, '_menu_item_type', 'post_type'),
(108, 29, '_menu_item_menu_item_parent', '0'),
(109, 29, '_menu_item_object_id', '17'),
(110, 29, '_menu_item_object', 'page'),
(111, 29, '_menu_item_target', ''),
(112, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(113, 29, '_menu_item_xfn', ''),
(114, 29, '_menu_item_url', ''),
(116, 30, '_menu_item_type', 'post_type'),
(117, 30, '_menu_item_menu_item_parent', '0'),
(118, 30, '_menu_item_object_id', '15'),
(119, 30, '_menu_item_object', 'page'),
(120, 30, '_menu_item_target', ''),
(121, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(122, 30, '_menu_item_xfn', ''),
(123, 30, '_menu_item_url', ''),
(125, 31, '_menu_item_type', 'custom'),
(126, 31, '_menu_item_menu_item_parent', '0'),
(127, 31, '_menu_item_object_id', '31'),
(128, 31, '_menu_item_object', 'custom'),
(129, 31, '_menu_item_target', ''),
(130, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(131, 31, '_menu_item_xfn', ''),
(132, 31, '_menu_item_url', 'http://Web%20Design'),
(134, 32, '_menu_item_type', 'custom'),
(135, 32, '_menu_item_menu_item_parent', '0'),
(136, 32, '_menu_item_object_id', '32'),
(137, 32, '_menu_item_object', 'custom'),
(138, 32, '_menu_item_target', ''),
(139, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(140, 32, '_menu_item_xfn', ''),
(141, 32, '_menu_item_url', 'http://App%20Design'),
(143, 33, '_menu_item_type', 'custom'),
(144, 33, '_menu_item_menu_item_parent', '0'),
(145, 33, '_menu_item_object_id', '33'),
(146, 33, '_menu_item_object', 'custom'),
(147, 33, '_menu_item_target', ''),
(148, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(149, 33, '_menu_item_xfn', ''),
(150, 33, '_menu_item_url', 'http://Branding'),
(152, 34, '_menu_item_type', 'custom'),
(153, 34, '_menu_item_menu_item_parent', '0'),
(154, 34, '_menu_item_object_id', '34'),
(155, 34, '_menu_item_object', 'custom'),
(156, 34, '_menu_item_target', ''),
(157, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(158, 34, '_menu_item_xfn', ''),
(159, 34, '_menu_item_url', 'http://Development'),
(161, 35, '_menu_item_type', 'custom'),
(162, 35, '_menu_item_menu_item_parent', '0'),
(163, 35, '_menu_item_object_id', '35'),
(164, 35, '_menu_item_object', 'custom'),
(165, 35, '_menu_item_target', ''),
(166, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(167, 35, '_menu_item_xfn', ''),
(168, 35, '_menu_item_url', 'http://Design'),
(170, 36, '_menu_item_type', 'custom'),
(171, 36, '_menu_item_menu_item_parent', '0'),
(172, 36, '_menu_item_object_id', '36'),
(173, 36, '_menu_item_object', 'custom'),
(174, 36, '_menu_item_target', ''),
(175, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(176, 36, '_menu_item_xfn', ''),
(177, 36, '_menu_item_url', 'http://Web%20Development'),
(179, 37, '_menu_item_type', 'custom'),
(180, 37, '_menu_item_menu_item_parent', '0'),
(181, 37, '_menu_item_object_id', '37'),
(182, 37, '_menu_item_object', 'custom'),
(183, 37, '_menu_item_target', ''),
(184, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(185, 37, '_menu_item_xfn', ''),
(186, 37, '_menu_item_url', 'http://App%20Development'),
(188, 38, '_menu_item_type', 'custom'),
(189, 38, '_menu_item_menu_item_parent', '0'),
(190, 38, '_menu_item_object_id', '38'),
(191, 38, '_menu_item_object', 'custom'),
(192, 38, '_menu_item_target', ''),
(193, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(194, 38, '_menu_item_xfn', ''),
(195, 38, '_menu_item_url', 'http://Internet%20Marketing'),
(197, 39, '_wp_attached_file', '2019/09/logo.svg'),
(198, 40, '_wp_attached_file', '2019/09/footer_logo.svg'),
(202, 44, '_wp_attached_file', '2019/09/test.txt'),
(215, 48, '_edit_last', '1'),
(216, 48, '_edit_lock', '1569316391:1'),
(217, 48, '_thumbnail_id', '158'),
(218, 49, '_edit_last', '1'),
(219, 49, '_edit_lock', '1569316379:1'),
(220, 49, '_thumbnail_id', '158'),
(221, 50, '_edit_last', '1'),
(222, 50, '_thumbnail_id', '158'),
(223, 50, '_edit_lock', '1569316365:1'),
(224, 51, '_edit_last', '1'),
(225, 51, '_edit_lock', '1569316338:1'),
(226, 51, '_thumbnail_id', '158'),
(227, 52, '_edit_last', '1'),
(228, 52, '_edit_lock', '1568816238:1'),
(229, 53, '_wp_attached_file', '2019/09/logic-way-logo.svg'),
(230, 52, '_thumbnail_id', '53'),
(231, 54, '_edit_last', '1'),
(232, 54, '_edit_lock', '1568816264:1'),
(233, 55, '_wp_attached_file', '2019/09/leggup-logo.svg'),
(234, 54, '_thumbnail_id', '55'),
(235, 56, '_edit_last', '1'),
(236, 56, '_edit_lock', '1568816294:1'),
(237, 57, '_wp_attached_file', '2019/09/domain_logo.svg'),
(238, 56, '_thumbnail_id', '57'),
(239, 58, '_edit_last', '1'),
(240, 58, '_edit_lock', '1568816394:1'),
(241, 59, '_wp_attached_file', '2019/09/juicy-logo.png'),
(242, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:137;s:6:\"height\";i:80;s:4:\"file\";s:22:\"2019/09/juicy-logo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(243, 58, '_thumbnail_id', '59'),
(244, 60, '_edit_last', '1'),
(245, 60, '_edit_lock', '1568816450:1'),
(246, 61, '_wp_attached_file', '2019/09/jobgear_logo.png'),
(247, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:235;s:6:\"height\";i:43;s:4:\"file\";s:24:\"2019/09/jobgear_logo.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"jobgear_logo-150x43.png\";s:5:\"width\";i:150;s:6:\"height\";i:43;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(248, 60, '_thumbnail_id', '61'),
(249, 62, '_edit_last', '1'),
(250, 62, '_edit_lock', '1568987564:1'),
(251, 63, '_wp_attached_file', '2019/09/smartym-logo.svg'),
(252, 62, '_thumbnail_id', '63'),
(253, 64, '_edit_last', '1'),
(254, 64, '_edit_lock', '1569097321:1'),
(255, 68, '_wp_attached_file', '2019/09/about_img.png'),
(256, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:520;s:6:\"height\";i:523;s:4:\"file\";s:21:\"2019/09/about_img.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"about_img-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"about_img-298x300.png\";s:5:\"width\";i:298;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(257, 7, '_edit_last', '1'),
(258, 7, 'abount_us_title', 'About Us'),
(259, 7, '_abount_us_title', 'field_5d82464fe9675'),
(260, 7, 'abount_us_image', '68'),
(261, 7, '_abount_us_image', 'field_5d82469ae9677'),
(262, 7, 'abount_us_content', 'Over 70% claim that they specify and look through location of the necessary business before for the first time addressing it. It proves, it is how important existence of local representation for your business. And if you have physical representation, you cannot rely only on those who come to you. People constantly use the computers and phones to find the enterprises which offer them what they look for.\r\n\r\nOne of the main signals for the local ratings of Google is constancy of your data – a name, the address and your phone number (NAP) on all Internet resources where you registered your website. If you registered the website on the resources “Yellow Pages”, “Yelp”, “Facebook” and others – everywhere there have to be identical data for your business, it will help local ranging. We are ready to make manual verification of all your data that they were identical everywhere.'),
(263, 7, '_abount_us_content', 'field_5d82467ce9676'),
(264, 69, 'abount_us_title', 'About Us'),
(265, 69, '_abount_us_title', 'field_5d82464fe9675'),
(266, 69, 'abount_us_image', '68'),
(267, 69, '_abount_us_image', 'field_5d82469ae9677'),
(268, 69, 'abount_us_content', 'Over 70% claim that they specify and look through location of the necessary business before for the first time addressing it. It proves, it is how important existence of local representation for your business. And if you have physical representation, you cannot rely only on those who come to you. People constantly use the computers and phones to find the enterprises which offer them what they look for.\r\n\r\nOne of the main signals for the local ratings of Google is constancy of your data – a name, the address and your phone number (NAP) on all Internet resources where you registered your website. If you registered the website on the resources “Yellow Pages”, “Yelp”, “Facebook” and others – everywhere there have to be identical data for your business, it will help local ranging. We are ready to make manual verification of all your data that they were identical everywhere.'),
(269, 69, '_abount_us_content', 'field_5d82467ce9676'),
(270, 11, '_wp_page_template', 'default'),
(271, 70, '_edit_lock', '1568967770:1'),
(272, 70, '_wp_trash_meta_status', 'publish'),
(273, 70, '_wp_trash_meta_time', '1568968011'),
(274, 70, '_wp_desired_post_slug', 'untitled-reusable-block'),
(275, 1, '_edit_lock', '1568973024:1'),
(278, 74, '_edit_lock', '1568971682:1'),
(279, 75, '_edit_lock', '1569157049:1'),
(280, 77, '_edit_lock', '1569232185:1'),
(281, 79, '_edit_lock', '1569231706:1'),
(282, 81, '_edit_lock', '1569232023:1'),
(283, 83, '_edit_lock', '1569231958:1'),
(284, 85, '_edit_lock', '1569231801:1'),
(285, 87, '_edit_lock', '1569231886:1'),
(286, 89, '_edit_lock', '1569231861:1'),
(287, 91, '_edit_lock', '1569231874:1'),
(288, 93, '_edit_lock', '1569232272:1'),
(289, 95, '_edit_lock', '1569232202:1'),
(290, 97, '_edit_lock', '1569231760:1'),
(291, 99, '_edit_lock', '1569231789:1'),
(292, 101, '_edit_lock', '1569231773:1'),
(293, 103, '_edit_lock', '1569232034:1'),
(302, 108, '_edit_last', '1'),
(303, 108, '_edit_lock', '1569162968:1'),
(304, 109, '_wp_attached_file', '2019/09/aida.png'),
(305, 109, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:480;s:6:\"height\";i:390;s:4:\"file\";s:16:\"2019/09/aida.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"aida-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"aida-300x244.png\";s:5:\"width\";i:300;s:6:\"height\";i:244;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(306, 108, '_thumbnail_id', '109'),
(307, 111, '_wp_attached_file', '2019/09/bpm.png'),
(308, 111, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:480;s:6:\"height\";i:390;s:4:\"file\";s:15:\"2019/09/bpm.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"bpm-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"bpm-300x244.png\";s:5:\"width\";i:300;s:6:\"height\";i:244;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(309, 110, '_edit_last', '1'),
(310, 110, '_thumbnail_id', '111'),
(311, 110, '_edit_lock', '1569175028:1'),
(312, 112, '_edit_last', '1'),
(313, 112, '_edit_lock', '1569174875:1'),
(314, 113, '_wp_attached_file', '2019/09/debtapp.png'),
(315, 113, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:480;s:6:\"height\";i:390;s:4:\"file\";s:19:\"2019/09/debtapp.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"debtapp-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"debtapp-300x244.png\";s:5:\"width\";i:300;s:6:\"height\";i:244;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(316, 112, '_thumbnail_id', '113'),
(317, 115, '_wp_attached_file', '2019/09/domain.png'),
(318, 115, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:480;s:6:\"height\";i:390;s:4:\"file\";s:18:\"2019/09/domain.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"domain-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"domain-300x244.png\";s:5:\"width\";i:300;s:6:\"height\";i:244;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(319, 114, '_edit_last', '1'),
(320, 114, '_thumbnail_id', '115'),
(321, 114, '_edit_lock', '1569162942:1'),
(322, 117, '_wp_attached_file', '2019/09/javalanding.png'),
(323, 117, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:480;s:6:\"height\";i:390;s:4:\"file\";s:23:\"2019/09/javalanding.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"javalanding-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"javalanding-300x244.png\";s:5:\"width\";i:300;s:6:\"height\";i:244;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(324, 116, '_edit_last', '1'),
(325, 116, '_thumbnail_id', '117'),
(326, 116, '_edit_lock', '1569163076:1'),
(327, 119, '_wp_attached_file', '2019/09/ledger.png'),
(328, 119, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:480;s:6:\"height\";i:390;s:4:\"file\";s:18:\"2019/09/ledger.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"ledger-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"ledger-300x244.png\";s:5:\"width\";i:300;s:6:\"height\";i:244;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(329, 118, '_edit_last', '1'),
(330, 118, '_thumbnail_id', '119'),
(331, 118, '_edit_lock', '1569163064:1'),
(332, 121, '_wp_attached_file', '2019/09/logicway.png'),
(333, 121, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:480;s:6:\"height\";i:390;s:4:\"file\";s:20:\"2019/09/logicway.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"logicway-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"logicway-300x244.png\";s:5:\"width\";i:300;s:6:\"height\";i:244;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(334, 120, '_edit_last', '1'),
(335, 120, '_thumbnail_id', '121'),
(336, 120, '_edit_lock', '1569163054:1'),
(337, 122, '_edit_last', '1'),
(338, 122, '_edit_lock', '1569163043:1'),
(339, 123, '_wp_attached_file', '2019/09/spintrivia.png'),
(340, 123, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:480;s:6:\"height\";i:390;s:4:\"file\";s:22:\"2019/09/spintrivia.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"spintrivia-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"spintrivia-300x244.png\";s:5:\"width\";i:300;s:6:\"height\";i:244;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(341, 122, '_thumbnail_id', '123'),
(342, 124, '_edit_last', '1'),
(343, 124, '_thumbnail_id', '113'),
(344, 124, '_edit_lock', '1569247374:1'),
(345, 125, '_edit_last', '1'),
(346, 125, '_thumbnail_id', '121'),
(347, 125, '_edit_lock', '1569317464:1'),
(348, 126, '_menu_item_type', 'custom'),
(349, 126, '_menu_item_menu_item_parent', '0'),
(350, 126, '_menu_item_object_id', '126'),
(351, 126, '_menu_item_object', 'custom'),
(352, 126, '_menu_item_target', ''),
(353, 126, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(354, 126, '_menu_item_xfn', ''),
(355, 126, '_menu_item_url', '/portfolios'),
(357, 127, '_menu_item_type', 'post_type'),
(358, 127, '_menu_item_menu_item_parent', '0'),
(359, 127, '_menu_item_object_id', '75'),
(360, 127, '_menu_item_object', 'page'),
(361, 127, '_menu_item_target', ''),
(362, 127, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(363, 127, '_menu_item_xfn', ''),
(364, 127, '_menu_item_url', ''),
(366, 128, '_menu_item_type', 'post_type'),
(367, 128, '_menu_item_menu_item_parent', '0'),
(368, 128, '_menu_item_object_id', '77'),
(369, 128, '_menu_item_object', 'page'),
(370, 128, '_menu_item_target', ''),
(371, 128, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(372, 128, '_menu_item_xfn', ''),
(373, 128, '_menu_item_url', ''),
(375, 129, '_menu_item_type', 'post_type'),
(376, 129, '_menu_item_menu_item_parent', '0'),
(377, 129, '_menu_item_object_id', '79'),
(378, 129, '_menu_item_object', 'page'),
(379, 129, '_menu_item_target', ''),
(380, 129, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(381, 129, '_menu_item_xfn', ''),
(382, 129, '_menu_item_url', ''),
(384, 130, '_menu_item_type', 'post_type'),
(385, 130, '_menu_item_menu_item_parent', '0'),
(386, 130, '_menu_item_object_id', '81'),
(387, 130, '_menu_item_object', 'page'),
(388, 130, '_menu_item_target', ''),
(389, 130, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(390, 130, '_menu_item_xfn', ''),
(391, 130, '_menu_item_url', ''),
(393, 77, '_edit_last', '1'),
(394, 77, '_wp_page_template', 'template-web_development(portf).php'),
(395, 11, '_edit_last', '1'),
(397, 62, '_wp_old_slug', 'customers'),
(398, 135, '_edit_last', '1'),
(399, 135, '_edit_lock', '1569329659:1'),
(400, 75, '_wp_page_template', 'template-design(portf).php'),
(401, 75, '_edit_last', '1'),
(402, 125, 'category', 'a:15:{i:0;s:2:\"15\";i:1;s:2:\"18\";i:2;s:2:\"20\";i:3;s:2:\"19\";i:4;s:2:\"13\";i:5;s:2:\"21\";i:6;s:2:\"22\";i:7;s:2:\"23\";i:8;s:2:\"24\";i:9;s:2:\"25\";i:10;s:2:\"16\";i:11;s:2:\"26\";i:12;s:2:\"14\";i:13;s:2:\"27\";i:14;s:2:\"28\";}'),
(403, 125, '_category', 'field_5d8759fc0921d'),
(404, 125, 'dark_background', '0'),
(405, 125, '_dark_background', 'field_5d875ae1f969f'),
(424, 143, '_menu_item_type', 'post_type_archive'),
(425, 143, '_menu_item_menu_item_parent', '0'),
(426, 143, '_menu_item_object_id', '-74'),
(427, 143, '_menu_item_object', 'portfolio'),
(428, 143, '_menu_item_target', ''),
(429, 143, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(430, 143, '_menu_item_xfn', ''),
(431, 143, '_menu_item_url', ''),
(432, 79, '_wp_page_template', 'template-app_development(portf).php'),
(433, 81, '_wp_page_template', 'template-internet_marketing(portf).php'),
(434, 124, 'category', 'a:4:{i:0;s:2:\"15\";i:1;s:2:\"13\";i:2;s:2:\"22\";i:3;s:2:\"16\";}'),
(435, 124, '_category', 'field_5d8759fc0921d'),
(436, 124, 'dark_background', '0'),
(437, 124, '_dark_background', 'field_5d875ae1f969f'),
(438, 122, 'category', 'a:3:{i:0;s:2:\"13\";i:1;s:2:\"16\";i:2;s:2:\"14\";}'),
(439, 122, '_category', 'field_5d8759fc0921d'),
(440, 122, 'dark_background', '0'),
(441, 122, '_dark_background', 'field_5d875ae1f969f'),
(442, 120, 'category', 'a:4:{i:0;s:2:\"16\";i:1;s:2:\"14\";i:2;s:2:\"15\";i:3;s:2:\"13\";}'),
(443, 120, '_category', 'field_5d8759fc0921d'),
(444, 120, 'dark_background', '0'),
(445, 120, '_dark_background', 'field_5d875ae1f969f'),
(446, 118, 'category', 'a:3:{i:0;s:2:\"13\";i:1;s:2:\"15\";i:2;s:2:\"16\";}'),
(447, 118, '_category', 'field_5d8759fc0921d'),
(448, 118, 'dark_background', '0'),
(449, 118, '_dark_background', 'field_5d875ae1f969f'),
(450, 116, 'category', 'a:3:{i:0;s:2:\"14\";i:1;s:2:\"13\";i:2;s:2:\"16\";}'),
(451, 116, '_category', 'field_5d8759fc0921d'),
(452, 116, 'dark_background', '0'),
(453, 116, '_dark_background', 'field_5d875ae1f969f'),
(454, 114, 'category', 'a:4:{i:0;s:2:\"13\";i:1;s:2:\"15\";i:2;s:2:\"16\";i:3;s:2:\"14\";}'),
(455, 114, '_category', 'field_5d8759fc0921d'),
(456, 114, 'dark_background', '0'),
(457, 114, '_dark_background', 'field_5d875ae1f969f'),
(458, 112, 'category', 'a:2:{i:0;s:2:\"13\";i:1;s:2:\"14\";}'),
(459, 112, '_category', 'field_5d8759fc0921d'),
(460, 112, 'dark_background', '0'),
(461, 112, '_dark_background', 'field_5d875ae1f969f'),
(462, 110, 'category', 'a:3:{i:0;s:2:\"14\";i:1;s:2:\"16\";i:2;s:2:\"13\";}'),
(463, 110, '_category', 'field_5d8759fc0921d'),
(464, 110, 'dark_background', '0'),
(465, 110, '_dark_background', 'field_5d875ae1f969f'),
(466, 108, 'category', 'a:3:{i:0;s:2:\"15\";i:1;s:2:\"13\";i:2;s:2:\"16\";}'),
(467, 108, '_category', 'field_5d8759fc0921d'),
(468, 108, 'dark_background', '0'),
(469, 108, '_dark_background', 'field_5d875ae1f969f'),
(470, 48, '_wp_old_slug', 'web-design'),
(471, 49, '_wp_old_slug', 'app-design'),
(472, 50, '_wp_old_slug', 'branding'),
(473, 125, 'show_on_main_page', '1'),
(474, 125, '_show_on_main_page', 'field_5d87aabbf52ad'),
(475, 112, 'show_on_main_page', '1'),
(476, 112, '_show_on_main_page', 'field_5d87aabbf52ad'),
(477, 110, 'show_on_main_page', '1'),
(478, 110, '_show_on_main_page', 'field_5d87aabbf52ad'),
(479, 124, 'show_on_main_page', '1'),
(480, 124, '_show_on_main_page', 'field_5d87aabbf52ad'),
(481, 146, '_edit_lock', '1569231978:1'),
(482, 148, '_edit_lock', '1569232014:1'),
(483, 150, '_edit_lock', '1569231828:1'),
(484, 152, '_edit_lock', '1569231841:1'),
(485, 154, '_edit_lock', '1569232242:1'),
(486, 156, '_edit_lock', '1569232221:1'),
(487, 146, '_wp_page_template', 'default'),
(488, 85, '_wp_page_template', 'template-design_app(portf).php'),
(489, 97, '_wp_page_template', 'template-app_development_android(portf).php'),
(490, 101, '_wp_page_template', 'template-app_development_backend(portf).php'),
(491, 99, '_wp_page_template', 'template-app_development_ios(portf).php'),
(492, 150, '_wp_page_template', 'default'),
(493, 152, '_wp_page_template', 'default'),
(494, 89, '_wp_page_template', 'template-design_banner(portf).php'),
(495, 91, '_wp_page_template', 'template-design_graphic(portf).php'),
(496, 87, '_wp_page_template', 'template-design_logo(portf).php'),
(497, 83, '_wp_page_template', 'template-design_web(portf).php'),
(498, 148, '_wp_page_template', 'default'),
(499, 103, '_wp_page_template', 'template-internet_marketing_seo(portf).php'),
(500, 95, '_wp_page_template', 'template-web_development_cms(portf).php'),
(501, 156, '_wp_page_template', 'default'),
(502, 154, '_wp_page_template', 'default'),
(503, 93, '_wp_page_template', 'template-web_development_html(portf).php'),
(504, 125, 'type_web_design', ''),
(505, 125, '_type_web_design', 'field_5d88bd8b1cd00'),
(506, 125, 'type_app_design', ''),
(507, 125, '_type_app_design', 'field_5d88c205145af'),
(508, 125, 'type_cms', ''),
(509, 125, '_type_cms', 'field_5d88c289bd2bd'),
(510, 39, '_edit_lock', '1569245508:1'),
(511, 39, '_edit_last', '1'),
(512, 39, '_wp_old_slug', 'logo'),
(513, 148, '_wp_trash_meta_status', 'publish'),
(514, 148, '_wp_trash_meta_time', '1569247307'),
(515, 148, '_wp_desired_post_slug', 'responsive'),
(516, 146, '_wp_trash_meta_status', 'publish'),
(517, 146, '_wp_trash_meta_time', '1569247311'),
(518, 146, '_wp_desired_post_slug', 'mobile'),
(519, 150, '_wp_trash_meta_status', 'publish'),
(520, 150, '_wp_trash_meta_time', '1569247315'),
(521, 150, '_wp_desired_post_slug', 'android'),
(522, 152, '_wp_trash_meta_status', 'publish'),
(523, 152, '_wp_trash_meta_time', '1569247319'),
(524, 152, '_wp_desired_post_slug', 'ios'),
(525, 156, '_wp_trash_meta_status', 'publish'),
(526, 156, '_wp_trash_meta_time', '1569247323'),
(527, 156, '_wp_desired_post_slug', 'custom'),
(528, 154, '_wp_trash_meta_status', 'publish'),
(529, 154, '_wp_trash_meta_time', '1569247326'),
(530, 154, '_wp_desired_post_slug', 'wordpress'),
(531, 158, '_wp_attached_file', '2019/09/uxdesign-visual.svg'),
(532, 13, '_wp_page_template', 'template-services.php'),
(533, 159, '_edit_lock', '1569321130:1'),
(534, 160, '_edit_lock', '1569321985:1'),
(535, 15, '_wp_page_template', 'template-about.php'),
(536, 162, '_edit_last', '1'),
(537, 162, '_edit_lock', '1569333872:1'),
(538, 165, '_wp_attached_file', '2019/09/about-us.jpg'),
(539, 165, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:599;s:6:\"height\";i:427;s:4:\"file\";s:20:\"2019/09/about-us.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"about-us-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"about-us-300x214.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:214;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(540, 15, '_thumbnail_id', '165'),
(541, 15, '_edit_last', '1'),
(542, 15, 'title_page', 'About 2Greart'),
(543, 15, '_title_page', 'field_5d8a121e6fe34'),
(544, 15, 'title_content', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type. Lorem is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.'),
(545, 15, '_title_content', 'field_5d8a12ceeab9f'),
(546, 166, 'title_page', 'About 2Greart'),
(547, 166, '_title_page', 'field_5d8a121e6fe34'),
(548, 166, 'title_content', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type. Lorem is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.'),
(549, 166, '_title_content', 'field_5d8a12ceeab9f'),
(550, 167, '_edit_last', '1'),
(551, 167, '_edit_lock', '1569334603:1'),
(553, 169, '_edit_last', '1'),
(554, 169, '_edit_lock', '1569335282:1'),
(555, 167, 'where_did_you_get', '/Bureau Gorbunov/'),
(556, 167, '_where_did_you_get', 'field_5d8a1901e90df'),
(557, 167, 'image_certificate', '173'),
(558, 167, '_image_certificate', 'field_5d8a1947c5ba5'),
(559, 172, '_edit_last', '1'),
(560, 172, '_edit_lock', '1569338686:1'),
(561, 172, 'where_did_you_get', '/Bureau Gorbunov/'),
(562, 172, '_where_did_you_get', 'field_5d8a1901e90df'),
(563, 172, 'image_certificate', '174'),
(564, 172, '_image_certificate', 'field_5d8a1947c5ba5'),
(565, 173, '_wp_attached_file', '2019/09/diplom_netology.jpg'),
(566, 173, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:652;s:6:\"height\";i:480;s:4:\"file\";s:27:\"2019/09/diplom_netology.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"diplom_netology-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"diplom_netology-300x221.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:221;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(567, 174, '_wp_attached_file', '2019/09/diplom_branding.jpg'),
(568, 174, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:501;s:6:\"height\";i:652;s:4:\"file\";s:27:\"2019/09/diplom_branding.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"diplom_branding-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"diplom_branding-231x300.jpg\";s:5:\"width\";i:231;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(569, 17, '_wp_page_template', 'template-team.php'),
(570, 175, '_edit_last', '1'),
(571, 175, '_edit_lock', '1569401485:1'),
(572, 176, '_wp_attached_file', '2019/09/all-team.png'),
(573, 176, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:900;s:4:\"file\";s:20:\"2019/09/all-team.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"all-team-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"all-team-300x141.png\";s:5:\"width\";i:300;s:6:\"height\";i:141;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"all-team-768x360.png\";s:5:\"width\";i:768;s:6:\"height\";i:360;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"all-team-1024x480.png\";s:5:\"width\";i:1024;s:6:\"height\";i:480;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(574, 175, '_thumbnail_id', '176'),
(575, 177, '_edit_last', '1'),
(576, 177, '_edit_lock', '1569401544:1'),
(577, 178, '_wp_attached_file', '2019/09/rinat.png'),
(578, 178, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:900;s:4:\"file\";s:17:\"2019/09/rinat.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"rinat-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"rinat-300x141.png\";s:5:\"width\";i:300;s:6:\"height\";i:141;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"rinat-768x360.png\";s:5:\"width\";i:768;s:6:\"height\";i:360;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"rinat-1024x480.png\";s:5:\"width\";i:1024;s:6:\"height\";i:480;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(579, 177, '_thumbnail_id', '178'),
(580, 179, '_edit_last', '1'),
(581, 179, '_edit_lock', '1569402806:1'),
(582, 177, 'position', 'Creative Director'),
(583, 177, '_position', 'field_5d8b28e284bae'),
(584, 177, 'description', 'Combination of eye-catching typography in a minimal design is a great option for design projects that need to convey simplicity, harmony and organization. It also serves as a starting point for designs that lack other elements or that want users to focus on reading the message on the screen.'),
(585, 177, '_description', 'field_5d8b294c84baf'),
(586, 177, 'instagram', 'https://dribbble.com/'),
(587, 177, '_instagram', 'field_5d8b296184bb0'),
(588, 177, 'behance', 'https://dribbble.com/'),
(589, 177, '_behance', 'field_5d8b29e7b9311'),
(590, 177, 'dribbble', 'https://dribbble.com/'),
(591, 177, '_dribbble', 'field_5d8b29feb9312'),
(592, 177, 'facebook', 'https://dribbble.com/'),
(593, 177, '_facebook', 'field_5d8b2a35b9313'),
(594, 177, 'linkedin', 'https://dribbble.com/'),
(595, 177, '_linkedin', 'field_5d8b2a41b9314'),
(596, 175, 'position', ''),
(597, 175, '_position', 'field_5d8b28e284bae'),
(598, 175, 'description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type. Lorem  is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.'),
(599, 175, '_description', 'field_5d8b294c84baf'),
(600, 175, 'instagram', ''),
(601, 175, '_instagram', 'field_5d8b296184bb0'),
(602, 175, 'behance', ''),
(603, 175, '_behance', 'field_5d8b29e7b9311'),
(604, 175, 'dribbble', ''),
(605, 175, '_dribbble', 'field_5d8b29feb9312'),
(606, 175, 'facebook', ''),
(607, 175, '_facebook', 'field_5d8b2a35b9313'),
(608, 175, 'linkedin', ''),
(609, 175, '_linkedin', 'field_5d8b2a41b9314'),
(610, 187, '_edit_last', '1'),
(611, 187, '_edit_lock', '1569401637:1'),
(612, 187, 'position', 'Web Designer'),
(613, 187, '_position', 'field_5d8b28e284bae'),
(614, 187, 'description', 'Combination of eye-catching typography in a minimal design is a great option for design projects that need to convey simplicity, harmony and organization. It also serves as a starting point for designs that lack other elements or that want users to focus on reading the message on the screen.'),
(615, 187, '_description', 'field_5d8b294c84baf'),
(616, 187, 'instagram', 'https://dribbble.com/'),
(617, 187, '_instagram', 'field_5d8b296184bb0'),
(618, 187, 'behance', 'https://dribbble.com/'),
(619, 187, '_behance', 'field_5d8b29e7b9311'),
(620, 187, 'dribbble', 'https://dribbble.com/'),
(621, 187, '_dribbble', 'field_5d8b29feb9312'),
(622, 187, 'facebook', 'https://dribbble.com/'),
(623, 187, '_facebook', 'field_5d8b2a35b9313'),
(624, 187, 'linkedin', 'https://dribbble.com/'),
(625, 187, '_linkedin', 'field_5d8b2a41b9314'),
(626, 188, '_wp_attached_file', '2019/09/kate.png'),
(627, 188, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:900;s:4:\"file\";s:16:\"2019/09/kate.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"kate-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"kate-300x141.png\";s:5:\"width\";i:300;s:6:\"height\";i:141;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"kate-768x360.png\";s:5:\"width\";i:768;s:6:\"height\";i:360;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"kate-1024x480.png\";s:5:\"width\";i:1024;s:6:\"height\";i:480;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(628, 187, '_thumbnail_id', '188'),
(629, 189, '_edit_last', '1'),
(630, 189, '_edit_lock', '1569404256:1'),
(631, 189, 'position', 'SEO'),
(632, 189, '_position', 'field_5d8b28e284bae'),
(633, 189, 'description', 'Combination of eye-catching typography in a minimal design is a great option for design projects that need to convey simplicity, harmony and organization. It also serves as a starting point for designs that lack other elements or that want users to focus on reading the message on the screen.'),
(634, 189, '_description', 'field_5d8b294c84baf'),
(635, 189, 'instagram', 'https://dribbble.com/'),
(636, 189, '_instagram', 'field_5d8b296184bb0'),
(637, 189, 'behance', 'https://dribbble.com/'),
(638, 189, '_behance', 'field_5d8b29e7b9311'),
(639, 189, 'dribbble', ''),
(640, 189, '_dribbble', 'field_5d8b29feb9312'),
(641, 189, 'facebook', 'https://dribbble.com/'),
(642, 189, '_facebook', 'field_5d8b2a35b9313'),
(643, 189, 'linkedin', 'https://dribbble.com/'),
(644, 189, '_linkedin', 'field_5d8b2a41b9314'),
(645, 190, '_edit_last', '1'),
(646, 190, '_edit_lock', '1569401742:1'),
(647, 190, 'position', 'Project & Sale Manager'),
(648, 190, '_position', 'field_5d8b28e284bae'),
(649, 190, 'description', 'Combination of eye-catching typography in a minimal design is a great option for design projects that need to convey simplicity, harmony and organization. It also serves as a starting point for designs that lack other elements or that want users to focus on reading the message on the screen.'),
(650, 190, '_description', 'field_5d8b294c84baf'),
(651, 190, 'instagram', 'https://dribbble.com/'),
(652, 190, '_instagram', 'field_5d8b296184bb0'),
(653, 190, 'behance', 'https://dribbble.com/'),
(654, 190, '_behance', 'field_5d8b29e7b9311'),
(655, 190, 'dribbble', 'https://dribbble.com/'),
(656, 190, '_dribbble', 'field_5d8b29feb9312'),
(657, 190, 'facebook', 'https://dribbble.com/'),
(658, 190, '_facebook', 'field_5d8b2a35b9313'),
(659, 190, 'linkedin', 'https://dribbble.com/'),
(660, 190, '_linkedin', 'field_5d8b2a41b9314'),
(661, 191, '_wp_attached_file', '2019/09/tal.png'),
(662, 191, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:900;s:4:\"file\";s:15:\"2019/09/tal.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"tal-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"tal-300x141.png\";s:5:\"width\";i:300;s:6:\"height\";i:141;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"tal-768x360.png\";s:5:\"width\";i:768;s:6:\"height\";i:360;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"tal-1024x480.png\";s:5:\"width\";i:1024;s:6:\"height\";i:480;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(663, 190, '_thumbnail_id', '191'),
(664, 192, '_wp_attached_file', '2019/09/andry.png'),
(665, 192, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:900;s:4:\"file\";s:17:\"2019/09/andry.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"andry-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"andry-300x141.png\";s:5:\"width\";i:300;s:6:\"height\";i:141;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"andry-768x360.png\";s:5:\"width\";i:768;s:6:\"height\";i:360;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"andry-1024x480.png\";s:5:\"width\";i:1024;s:6:\"height\";i:480;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(666, 189, '_thumbnail_id', '192'),
(667, 19, '_wp_page_template', 'template-contacts.php');

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
(1, 1, '2019-09-17 10:37:38', '2019-09-17 10:37:38', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2019-09-20 08:45:39', '2019-09-20 08:45:39', '', 0, 'http://wp-2geart/?p=1', 0, 'post', '', 1),
(3, 1, '2019-09-17 10:37:38', '2019-09-17 10:37:38', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://wp-2geart.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2019-09-17 11:17:30', '2019-09-17 11:17:30', '', 0, 'http://wp-2geart/?page_id=3', 0, 'page', '', 0),
(5, 1, '2019-09-17 11:17:30', '2019-09-17 11:17:30', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://wp-2geart.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2019-09-17 11:17:30', '2019-09-17 11:17:30', '', 3, 'http://wp-2geart/2019/09/17/3-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2019-09-17 11:18:36', '2019-09-17 11:18:36', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-09-18 15:03:55', '2019-09-18 15:03:55', '', 0, 'http://wp-2geart/?page_id=7', 0, 'page', '', 0),
(8, 1, '2019-09-17 11:18:36', '2019-09-17 11:18:36', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-09-17 11:18:36', '2019-09-17 11:18:36', '', 7, 'http://wp-2geart/2019/09/17/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2019-09-17 13:04:34', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-09-17 13:04:34', '0000-00-00 00:00:00', '', 0, 'http://wp-2geart/?p=9', 1, 'nav_menu_item', '', 0),
(10, 1, '2019-09-17 13:04:34', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-09-17 13:04:34', '0000-00-00 00:00:00', '', 0, 'http://wp-2geart/?p=10', 1, 'nav_menu_item', '', 0),
(11, 1, '2019-09-17 13:05:05', '2019-09-17 13:05:05', '', 'Portfolio', '', 'publish', 'closed', 'closed', '', 'portfolio', '', '', '2019-09-22 12:14:37', '2019-09-22 12:14:37', '', 0, 'http://wp-2geart/?page_id=11', 0, 'page', '', 0),
(12, 1, '2019-09-17 13:05:05', '2019-09-17 13:05:05', '', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-09-17 13:05:05', '2019-09-17 13:05:05', '', 11, 'http://wp-2geart/2019/09/17/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2019-09-17 13:05:25', '2019-09-17 13:05:25', '', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2019-09-24 10:16:33', '2019-09-24 10:16:33', '', 0, 'http://wp-2geart/?page_id=13', 0, 'page', '', 0),
(14, 1, '2019-09-17 13:05:25', '2019-09-17 13:05:25', '', 'Services', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-09-17 13:05:25', '2019-09-17 13:05:25', '', 13, 'http://wp-2geart/2019/09/17/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2019-09-17 13:05:40', '2019-09-17 13:05:40', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2019-09-24 13:00:52', '2019-09-24 13:00:52', '', 0, 'http://wp-2geart/?page_id=15', 0, 'page', '', 0),
(16, 1, '2019-09-17 13:05:40', '2019-09-17 13:05:40', '', 'About', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-09-17 13:05:40', '2019-09-17 13:05:40', '', 15, 'http://wp-2geart/2019/09/17/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2019-09-17 13:05:52', '2019-09-17 13:05:52', '', 'Team', '', 'publish', 'closed', 'closed', '', 'team', '', '', '2019-09-25 08:19:32', '2019-09-25 08:19:32', '', 0, 'http://wp-2geart/?page_id=17', 0, 'page', '', 0),
(18, 1, '2019-09-17 13:05:53', '2019-09-17 13:05:53', '', 'Team', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-09-17 13:05:53', '2019-09-17 13:05:53', '', 17, 'http://wp-2geart/2019/09/17/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2019-09-17 13:06:06', '2019-09-17 13:06:06', '', 'Contacts', '', 'publish', 'closed', 'closed', '', 'contacts', '', '', '2019-09-25 09:40:15', '2019-09-25 09:40:15', '', 0, 'http://wp-2geart/?page_id=19', 0, 'page', '', 0),
(20, 1, '2019-09-17 13:06:06', '2019-09-17 13:06:06', '', 'Contacts', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2019-09-17 13:06:06', '2019-09-17 13:06:06', '', 19, 'http://wp-2geart/2019/09/17/19-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2019-09-17 13:06:45', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-09-17 13:06:45', '0000-00-00 00:00:00', '', 0, 'http://wp-2geart/?p=21', 1, 'nav_menu_item', '', 0),
(22, 1, '2019-09-17 13:08:02', '2019-09-17 13:08:02', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2019-09-22 12:15:52', '2019-09-22 12:15:52', '', 0, 'http://wp-2geart/?p=22', 3, 'nav_menu_item', '', 0),
(23, 1, '2019-09-17 13:08:03', '2019-09-17 13:08:03', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2019-09-22 12:15:52', '2019-09-22 12:15:52', '', 0, 'http://wp-2geart/?p=23', 5, 'nav_menu_item', '', 0),
(24, 1, '2019-09-17 13:06:45', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-09-17 13:06:45', '0000-00-00 00:00:00', '', 0, 'http://wp-2geart/?p=24', 1, 'nav_menu_item', '', 0),
(26, 1, '2019-09-17 13:08:02', '2019-09-17 13:08:02', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2019-09-22 12:15:52', '2019-09-22 12:15:52', '', 0, 'http://wp-2geart/?p=26', 2, 'nav_menu_item', '', 0),
(27, 1, '2019-09-17 13:08:02', '2019-09-17 13:08:02', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2019-09-22 12:15:52', '2019-09-22 12:15:52', '', 0, 'http://wp-2geart/?p=27', 4, 'nav_menu_item', '', 0),
(28, 1, '2019-09-17 13:25:06', '2019-09-17 13:25:06', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2019-09-17 13:59:28', '2019-09-17 13:59:28', '', 0, 'http://wp-2geart/?p=28', 3, 'nav_menu_item', '', 0),
(29, 1, '2019-09-17 13:25:06', '2019-09-17 13:25:06', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2019-09-17 13:59:28', '2019-09-17 13:59:28', '', 0, 'http://wp-2geart/?p=29', 2, 'nav_menu_item', '', 0),
(30, 1, '2019-09-17 13:25:06', '2019-09-17 13:25:06', '', 'About Us', '', 'publish', 'closed', 'closed', '', '30', '', '', '2019-09-17 13:59:28', '2019-09-17 13:59:28', '', 0, 'http://wp-2geart/?p=30', 1, 'nav_menu_item', '', 0),
(31, 1, '2019-09-17 13:35:21', '2019-09-17 13:35:21', '', 'Web Design', '', 'publish', 'closed', 'closed', '', 'web-design', '', '', '2019-09-17 14:01:10', '2019-09-17 14:01:10', '', 0, 'http://wp-2geart/?p=31', 1, 'nav_menu_item', '', 0),
(32, 1, '2019-09-17 13:35:21', '2019-09-17 13:35:21', '', 'App Design', '', 'publish', 'closed', 'closed', '', 'app-design', '', '', '2019-09-17 14:01:10', '2019-09-17 14:01:10', '', 0, 'http://wp-2geart/?p=32', 2, 'nav_menu_item', '', 0),
(33, 1, '2019-09-17 13:35:21', '2019-09-17 13:35:21', '', 'Branding', '', 'publish', 'closed', 'closed', '', 'branding', '', '', '2019-09-17 14:01:10', '2019-09-17 14:01:10', '', 0, 'http://wp-2geart/?p=33', 3, 'nav_menu_item', '', 0),
(34, 1, '2019-09-17 13:35:21', '2019-09-17 13:35:21', '', 'Development', '', 'publish', 'closed', 'closed', '', 'development', '', '', '2019-09-17 14:01:10', '2019-09-17 14:01:10', '', 0, 'http://wp-2geart/?p=34', 4, 'nav_menu_item', '', 0),
(35, 1, '2019-09-17 13:39:02', '2019-09-17 13:39:02', '', 'Design', '', 'publish', 'closed', 'closed', '', 'design', '', '', '2019-09-17 14:01:37', '2019-09-17 14:01:37', '', 0, 'http://wp-2geart/?p=35', 1, 'nav_menu_item', '', 0),
(36, 1, '2019-09-17 13:39:02', '2019-09-17 13:39:02', '', 'Web Development', '', 'publish', 'closed', 'closed', '', 'web-development', '', '', '2019-09-17 14:01:37', '2019-09-17 14:01:37', '', 0, 'http://wp-2geart/?p=36', 2, 'nav_menu_item', '', 0),
(37, 1, '2019-09-17 13:39:02', '2019-09-17 13:39:02', '', 'App Development', '', 'publish', 'closed', 'closed', '', 'app-development', '', '', '2019-09-17 14:01:37', '2019-09-17 14:01:37', '', 0, 'http://wp-2geart/?p=37', 3, 'nav_menu_item', '', 0),
(38, 1, '2019-09-17 13:39:02', '2019-09-17 13:39:02', '', 'Internet Marketing', '', 'publish', 'closed', 'closed', '', 'internet-marketing', '', '', '2019-09-17 14:01:37', '2019-09-17 14:01:37', '', 0, 'http://wp-2geart/?p=38', 4, 'nav_menu_item', '', 0),
(39, 1, '2019-09-17 14:26:57', '2019-09-17 14:26:57', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logotipe', '', '', '2019-09-23 13:32:22', '2019-09-23 13:32:22', '', 0, 'http://wp-2geart/wp-content/uploads/2019/09/logo.svg', 0, 'attachment', 'image/svg+xml', 0),
(40, 1, '2019-09-17 15:43:47', '2019-09-17 15:43:47', '', 'footer_logo', '', 'inherit', 'open', 'closed', '', 'footer_logo', '', '', '2019-09-17 15:43:47', '2019-09-17 15:43:47', '', 0, 'http://wp-2geart/wp-content/uploads/2019/09/footer_logo.svg', 0, 'attachment', 'image/svg+xml', 0),
(44, 1, '2019-09-17 21:20:58', '2019-09-17 21:20:58', '', 'test', '', 'inherit', 'open', 'closed', '', 'test', '', '', '2019-09-17 21:20:58', '2019-09-17 21:20:58', '', 0, 'http://wp-2geart/wp-content/uploads/2019/09/test.txt', 0, 'attachment', 'text/plain', 0),
(48, 1, '2019-09-18 13:52:48', '2019-09-18 13:52:48', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 'Design', '', 'publish', 'closed', 'closed', '', 'design', '', '', '2019-09-24 09:15:34', '2019-09-24 09:15:34', '', 0, 'http://wp-2geart/?post_type=main_slider&#038;p=48', 0, 'main_slider', '', 0),
(49, 1, '2019-09-18 13:53:49', '2019-09-18 13:53:49', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 'Web Development', '', 'publish', 'closed', 'closed', '', 'web-development', '', '', '2019-09-24 09:15:20', '2019-09-24 09:15:20', '', 0, 'http://wp-2geart/?post_type=main_slider&#038;p=49', 0, 'main_slider', '', 0),
(50, 1, '2019-09-18 13:54:21', '2019-09-18 13:54:21', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 'App Development', '', 'publish', 'closed', 'closed', '', 'app-development', '', '', '2019-09-24 09:15:07', '2019-09-24 09:15:07', '', 0, 'http://wp-2geart/?post_type=main_slider&#038;p=50', 0, 'main_slider', '', 0),
(51, 1, '2019-09-18 13:54:51', '2019-09-18 13:54:51', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.', 'Internet Marketing', '', 'publish', 'closed', 'closed', '', 'internet-marketing', '', '', '2019-09-24 09:14:37', '2019-09-24 09:14:37', '', 0, 'http://wp-2geart/?post_type=main_slider&#038;p=51', 0, 'main_slider', '', 0),
(52, 1, '2019-09-18 14:19:37', '2019-09-18 14:19:37', '', 'Logic Way', '', 'publish', 'closed', 'closed', '', 'logic-way', '', '', '2019-09-18 14:19:37', '2019-09-18 14:19:37', '', 0, 'http://wp-2geart/?post_type=customers&#038;p=52', 0, 'customers', '', 0),
(53, 1, '2019-09-18 14:19:24', '2019-09-18 14:19:24', '', 'logic-way-logo', '', 'inherit', 'open', 'closed', '', 'logic-way-logo', '', '', '2019-09-18 14:19:24', '2019-09-18 14:19:24', '', 52, 'http://wp-2geart/wp-content/uploads/2019/09/logic-way-logo.svg', 0, 'attachment', 'image/svg+xml', 0),
(54, 1, '2019-09-18 14:20:06', '2019-09-18 14:20:06', '', 'Leggap', '', 'publish', 'closed', 'closed', '', 'leggap', '', '', '2019-09-18 14:20:06', '2019-09-18 14:20:06', '', 0, 'http://wp-2geart/?post_type=customers&#038;p=54', 0, 'customers', '', 0),
(55, 1, '2019-09-18 14:20:02', '2019-09-18 14:20:02', '', 'leggup-logo', '', 'inherit', 'open', 'closed', '', 'leggup-logo', '', '', '2019-09-18 14:20:02', '2019-09-18 14:20:02', '', 54, 'http://wp-2geart/wp-content/uploads/2019/09/leggup-logo.svg', 0, 'attachment', 'image/svg+xml', 0),
(56, 1, '2019-09-18 14:20:35', '2019-09-18 14:20:35', '', 'Domain.by', '', 'publish', 'closed', 'closed', '', 'domain-by', '', '', '2019-09-18 14:20:35', '2019-09-18 14:20:35', '', 0, 'http://wp-2geart/?post_type=customers&#038;p=56', 0, 'customers', '', 0),
(57, 1, '2019-09-18 14:20:32', '2019-09-18 14:20:32', '', 'domain_logo', '', 'inherit', 'open', 'closed', '', 'domain_logo', '', '', '2019-09-18 14:20:32', '2019-09-18 14:20:32', '', 56, 'http://wp-2geart/wp-content/uploads/2019/09/domain_logo.svg', 0, 'attachment', 'image/svg+xml', 0),
(58, 1, '2019-09-18 14:21:52', '2019-09-18 14:21:52', '', 'Juicy Advice', '', 'publish', 'closed', 'closed', '', 'juicy-advice', '', '', '2019-09-18 14:21:52', '2019-09-18 14:21:52', '', 0, 'http://wp-2geart/?post_type=customers&#038;p=58', 0, 'customers', '', 0),
(59, 1, '2019-09-18 14:21:44', '2019-09-18 14:21:44', '', 'juicy-logo', '', 'inherit', 'open', 'closed', '', 'juicy-logo', '', '', '2019-09-18 14:21:44', '2019-09-18 14:21:44', '', 58, 'http://wp-2geart/wp-content/uploads/2019/09/juicy-logo.png', 0, 'attachment', 'image/png', 0),
(60, 1, '2019-09-18 14:23:13', '2019-09-18 14:23:13', '', 'Jobgear', '', 'publish', 'closed', 'closed', '', 'jobgear', '', '', '2019-09-18 14:23:13', '2019-09-18 14:23:13', '', 0, 'http://wp-2geart/?post_type=customers&#038;p=60', 0, 'customers', '', 0),
(61, 1, '2019-09-18 14:23:07', '2019-09-18 14:23:07', '', 'jobgear_logo', '', 'inherit', 'open', 'closed', '', 'jobgear_logo', '', '', '2019-09-18 14:23:07', '2019-09-18 14:23:07', '', 60, 'http://wp-2geart/wp-content/uploads/2019/09/jobgear_logo.png', 0, 'attachment', 'image/png', 0),
(62, 1, '2019-09-18 14:23:33', '2019-09-18 14:23:33', '', 'Smartym', '', 'publish', 'closed', 'closed', '', 'smartym', '', '', '2019-09-20 13:54:30', '2019-09-20 13:54:30', '', 0, 'http://wp-2geart/?post_type=customers&#038;p=62', 0, 'customers', '', 0),
(63, 1, '2019-09-18 14:23:30', '2019-09-18 14:23:30', '', 'smartym-logo', '', 'inherit', 'open', 'closed', '', 'smartym-logo', '', '', '2019-09-18 14:23:30', '2019-09-18 14:23:30', '', 62, 'http://wp-2geart/wp-content/uploads/2019/09/smartym-logo.svg', 0, 'attachment', 'image/svg+xml', 0),
(64, 1, '2019-09-18 15:01:14', '2019-09-18 15:01:14', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:17:\"template-home.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Home page', 'home-page', 'publish', 'closed', 'closed', '', 'group_5d82463d7bec7', '', '', '2019-09-21 20:24:20', '2019-09-21 20:24:20', '', 0, 'http://wp-2geart/?post_type=acf-field-group&#038;p=64', 0, 'acf-field-group', '', 0),
(65, 1, '2019-09-18 15:01:14', '2019-09-18 15:01:14', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"25\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Abount us title', 'abount_us_title', 'publish', 'closed', 'closed', '', 'field_5d82464fe9675', '', '', '2019-09-18 15:01:14', '2019-09-18 15:01:14', '', 64, 'http://wp-2geart/?post_type=acf-field&p=65', 0, 'acf-field', '', 0),
(66, 1, '2019-09-18 15:01:14', '2019-09-18 15:01:14', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Abount us content', 'abount_us_content', 'publish', 'closed', 'closed', '', 'field_5d82467ce9676', '', '', '2019-09-18 15:02:35', '2019-09-18 15:02:35', '', 64, 'http://wp-2geart/?post_type=acf-field&#038;p=66', 2, 'acf-field', '', 0),
(67, 1, '2019-09-18 15:01:14', '2019-09-18 15:01:14', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"25\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Abount us image', 'abount_us_image', 'publish', 'closed', 'closed', '', 'field_5d82469ae9677', '', '', '2019-09-18 15:02:35', '2019-09-18 15:02:35', '', 64, 'http://wp-2geart/?post_type=acf-field&#038;p=67', 1, 'acf-field', '', 0),
(68, 1, '2019-09-18 15:03:47', '2019-09-18 15:03:47', '', 'about_img', '', 'inherit', 'open', 'closed', '', 'about_img', '', '', '2019-09-18 15:03:47', '2019-09-18 15:03:47', '', 7, 'http://wp-2geart/wp-content/uploads/2019/09/about_img.png', 0, 'attachment', 'image/png', 0),
(69, 1, '2019-09-18 15:03:55', '2019-09-18 15:03:55', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-09-18 15:03:55', '2019-09-18 15:03:55', '', 7, 'http://wp-2geart/2019/09/18/7-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2019-09-20 08:23:54', '2019-09-20 08:23:54', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:image {\"id\":46} -->\n<figure class=\"wp-block-image\"><img src=\"http://wp-2geart/wp-content/uploads/2019/09/main-page-bitmap.png\" alt=\"\" class=\"wp-image-46\"/></figure>\n<!-- /wp:image -->', 'Untitled Reusable Block', '', 'trash', 'closed', 'closed', '', 'untitled-reusable-block__trashed', '', '', '2019-09-20 08:26:51', '2019-09-20 08:26:51', '', 0, 'http://wp-2geart/2019/09/20/untitled-reusable-block/', 0, 'wp_block', '', 0),
(72, 1, '2019-09-20 08:38:09', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-20 08:38:09', '0000-00-00 00:00:00', '', 0, 'http://wp-2geart/?post_type=customers&p=72', 0, 'customers', '', 0),
(73, 1, '2019-09-20 08:45:39', '2019-09-20 08:45:39', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-09-20 08:45:39', '2019-09-20 08:45:39', '', 1, 'http://wp-2geart/2019/09/20/1-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2019-09-20 09:29:56', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-20 09:29:56', '0000-00-00 00:00:00', '', 0, 'http://wp-2geart/?page_id=74', 0, 'page', '', 0),
(75, 1, '2019-09-20 09:30:55', '2019-09-20 09:30:55', '', 'Design', '', 'publish', 'closed', 'closed', '', 'design', '', '', '2019-09-22 12:59:52', '2019-09-22 12:59:52', '', 11, 'http://wp-2geart/?page_id=75', 0, 'page', '', 0),
(76, 1, '2019-09-20 09:30:55', '2019-09-20 09:30:55', '', 'Design', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2019-09-20 09:30:55', '2019-09-20 09:30:55', '', 75, 'http://wp-2geart/2019/09/20/75-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2019-09-20 09:31:22', '2019-09-20 09:31:22', '', 'Web Development', '', 'publish', 'closed', 'closed', '', 'web-development', '', '', '2019-09-22 18:57:54', '2019-09-22 18:57:54', '', 11, 'http://wp-2geart/?page_id=77', 0, 'page', '', 0),
(78, 1, '2019-09-20 09:31:22', '2019-09-20 09:31:22', '', 'Web-development', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2019-09-20 09:31:22', '2019-09-20 09:31:22', '', 77, 'http://wp-2geart/2019/09/20/77-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2019-09-20 09:32:30', '2019-09-20 09:32:30', '', 'App Development', '', 'publish', 'closed', 'closed', '', 'app-development', '', '', '2019-09-22 13:00:20', '2019-09-22 13:00:20', '', 11, 'http://wp-2geart/?page_id=79', 0, 'page', '', 0),
(80, 1, '2019-09-20 09:32:30', '2019-09-20 09:32:30', '', 'App Development', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2019-09-20 09:32:30', '2019-09-20 09:32:30', '', 79, 'http://wp-2geart/2019/09/20/79-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2019-09-20 09:32:47', '2019-09-20 09:32:47', '', 'Internet Marketing', '', 'publish', 'closed', 'closed', '', 'internet-marketing', '', '', '2019-09-22 13:00:36', '2019-09-22 13:00:36', '', 11, 'http://wp-2geart/?page_id=81', 0, 'page', '', 0),
(82, 1, '2019-09-20 09:32:47', '2019-09-20 09:32:47', '', 'Internet Marketing', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2019-09-20 09:32:47', '2019-09-20 09:32:47', '', 81, 'http://wp-2geart/2019/09/20/81-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2019-09-20 09:33:26', '2019-09-20 09:33:26', '', 'Web', '', 'publish', 'closed', 'closed', '', 'web', '', '', '2019-09-23 09:48:22', '2019-09-23 09:48:22', '', 75, 'http://wp-2geart/?page_id=83', 0, 'page', '', 0),
(84, 1, '2019-09-20 09:33:26', '2019-09-20 09:33:26', '', 'Web', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2019-09-20 09:33:26', '2019-09-20 09:33:26', '', 83, 'http://wp-2geart/2019/09/20/83-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2019-09-20 09:33:43', '2019-09-20 09:33:43', '', 'App', '', 'publish', 'closed', 'closed', '', 'app', '', '', '2019-09-23 09:20:45', '2019-09-23 09:20:45', '', 75, 'http://wp-2geart/?page_id=85', 0, 'page', '', 0),
(86, 1, '2019-09-20 09:33:43', '2019-09-20 09:33:43', '', 'App', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2019-09-20 09:33:43', '2019-09-20 09:33:43', '', 85, 'http://wp-2geart/2019/09/20/85-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2019-09-20 09:34:30', '2019-09-20 09:34:30', '', 'Logo', '', 'publish', 'closed', 'closed', '', 'logo', '', '', '2019-09-23 09:47:09', '2019-09-23 09:47:09', '', 75, 'http://wp-2geart/?page_id=87', 0, 'page', '', 0),
(88, 1, '2019-09-20 09:34:30', '2019-09-20 09:34:30', '', 'Logo', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2019-09-20 09:34:30', '2019-09-20 09:34:30', '', 87, 'http://wp-2geart/2019/09/20/87-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2019-09-20 09:34:57', '2019-09-20 09:34:57', '', 'Banner', '', 'publish', 'closed', 'closed', '', 'banner', '', '', '2019-09-23 09:46:44', '2019-09-23 09:46:44', '', 75, 'http://wp-2geart/?page_id=89', 0, 'page', '', 0),
(90, 1, '2019-09-20 09:34:57', '2019-09-20 09:34:57', '', 'Banner', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2019-09-20 09:34:57', '2019-09-20 09:34:57', '', 89, 'http://wp-2geart/2019/09/20/89-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2019-09-20 09:35:25', '2019-09-20 09:35:25', '', 'Graphic', '', 'publish', 'closed', 'closed', '', 'graphic', '', '', '2019-09-23 09:46:58', '2019-09-23 09:46:58', '', 75, 'http://wp-2geart/?page_id=91', 0, 'page', '', 0),
(92, 1, '2019-09-20 09:35:25', '2019-09-20 09:35:25', '', 'Graphic', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2019-09-20 09:35:25', '2019-09-20 09:35:25', '', 91, 'http://wp-2geart/2019/09/20/91-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2019-09-20 09:36:04', '2019-09-20 09:36:04', '', 'Html-css', '', 'publish', 'closed', 'closed', '', 'html-css', '', '', '2019-09-23 09:53:35', '2019-09-23 09:53:35', '', 77, 'http://wp-2geart/?page_id=93', 0, 'page', '', 0),
(94, 1, '2019-09-20 09:36:04', '2019-09-20 09:36:04', '', 'Html-css', '', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2019-09-20 09:36:04', '2019-09-20 09:36:04', '', 93, 'http://wp-2geart/2019/09/20/93-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2019-09-20 09:36:31', '2019-09-20 09:36:31', '', 'CMS', '', 'publish', 'closed', 'closed', '', 'cms', '', '', '2019-09-23 09:52:24', '2019-09-23 09:52:24', '', 77, 'http://wp-2geart/?page_id=95', 0, 'page', '', 0),
(96, 1, '2019-09-20 09:36:31', '2019-09-20 09:36:31', '', 'CMS', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2019-09-20 09:36:31', '2019-09-20 09:36:31', '', 95, 'http://wp-2geart/2019/09/20/95-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2019-09-20 09:37:12', '2019-09-20 09:37:12', '', 'Android', '', 'publish', 'closed', 'closed', '', 'android', '', '', '2019-09-23 09:45:00', '2019-09-23 09:45:00', '', 79, 'http://wp-2geart/?page_id=97', 0, 'page', '', 0),
(98, 1, '2019-09-20 09:37:12', '2019-09-20 09:37:12', '', 'Android', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2019-09-20 09:37:12', '2019-09-20 09:37:12', '', 97, 'http://wp-2geart/2019/09/20/97-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2019-09-20 09:37:30', '2019-09-20 09:37:30', '', 'IOS', '', 'publish', 'closed', 'closed', '', 'ios', '', '', '2019-09-23 09:45:29', '2019-09-23 09:45:29', '', 79, 'http://wp-2geart/?page_id=99', 0, 'page', '', 0),
(100, 1, '2019-09-20 09:37:30', '2019-09-20 09:37:30', '', 'IOS', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2019-09-20 09:37:30', '2019-09-20 09:37:30', '', 99, 'http://wp-2geart/2019/09/20/99-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2019-09-20 09:38:04', '2019-09-20 09:38:04', '', 'Backend', '', 'publish', 'closed', 'closed', '', 'backend', '', '', '2019-09-23 09:45:16', '2019-09-23 09:45:16', '', 79, 'http://wp-2geart/?page_id=101', 0, 'page', '', 0),
(102, 1, '2019-09-20 09:38:04', '2019-09-20 09:38:04', '', 'Backend', '', 'inherit', 'closed', 'closed', '', '101-revision-v1', '', '', '2019-09-20 09:38:04', '2019-09-20 09:38:04', '', 101, 'http://wp-2geart/2019/09/20/101-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2019-09-20 09:38:43', '2019-09-20 09:38:43', '', 'SEO', '', 'publish', 'closed', 'closed', '', 'seo', '', '', '2019-09-23 09:49:37', '2019-09-23 09:49:37', '', 81, 'http://wp-2geart/?page_id=103', 0, 'page', '', 0),
(104, 1, '2019-09-20 09:38:43', '2019-09-20 09:38:43', '', 'SEO', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2019-09-20 09:38:43', '2019-09-20 09:38:43', '', 103, 'http://wp-2geart/2019/09/20/103-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2019-09-20 09:44:14', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-20 09:44:14', '0000-00-00 00:00:00', '', 0, 'http://wp-2geart/?post_type=acf-field-group&p=105', 0, 'acf-field-group', '', 0),
(108, 0, '2019-09-20 10:06:43', '2019-09-20 10:06:43', '', 'Ledger App', '', 'publish', 'closed', 'closed', '', 'ledger-app', '', '', '2019-09-22 13:05:44', '2019-09-22 13:05:44', '', 0, 'http://wp-2geart/?post_type=portfolio&#038;p=108', 0, 'portfolio', '', 0),
(109, 1, '2019-09-20 10:06:32', '2019-09-20 10:06:32', '', 'aida', '', 'inherit', 'open', 'closed', '', 'aida', '', '', '2019-09-20 10:06:32', '2019-09-20 10:06:32', '', 108, 'http://wp-2geart/wp-content/uploads/2019/09/aida.png', 0, 'attachment', 'image/png', 0),
(110, 0, '2019-09-20 10:07:01', '2019-09-20 10:07:01', '', 'Ledger App', '', 'publish', 'closed', 'closed', '', 'ledger-app-2', '', '', '2019-09-22 17:57:08', '2019-09-22 17:57:08', '', 0, 'http://wp-2geart/?post_type=portfolio&#038;p=110', 0, 'portfolio', '', 0),
(111, 1, '2019-09-20 10:06:57', '2019-09-20 10:06:57', '', 'bpm', '', 'inherit', 'open', 'closed', '', 'bpm', '', '', '2019-09-20 10:06:57', '2019-09-20 10:06:57', '', 110, 'http://wp-2geart/wp-content/uploads/2019/09/bpm.png', 0, 'attachment', 'image/png', 0),
(112, 0, '2019-09-20 10:07:16', '2019-09-20 10:07:16', '', 'Ledger App', '', 'publish', 'closed', 'closed', '', 'ledger-app-3', '', '', '2019-09-22 17:55:11', '2019-09-22 17:55:11', '', 0, 'http://wp-2geart/?post_type=portfolio&#038;p=112', 0, 'portfolio', '', 0),
(113, 1, '2019-09-20 10:07:14', '2019-09-20 10:07:14', '', 'debtapp', '', 'inherit', 'open', 'closed', '', 'debtapp', '', '', '2019-09-20 10:07:14', '2019-09-20 10:07:14', '', 112, 'http://wp-2geart/wp-content/uploads/2019/09/debtapp.png', 0, 'attachment', 'image/png', 0),
(114, 0, '2019-09-20 10:07:34', '2019-09-20 10:07:34', '', 'Ledger App', '', 'publish', 'closed', 'closed', '', 'ledger-app-4', '', '', '2019-09-22 13:04:43', '2019-09-22 13:04:43', '', 0, 'http://wp-2geart/?post_type=portfolio&#038;p=114', 0, 'portfolio', '', 0),
(115, 1, '2019-09-20 10:07:31', '2019-09-20 10:07:31', '', 'domain', '', 'inherit', 'open', 'closed', '', 'domain', '', '', '2019-09-20 10:07:31', '2019-09-20 10:07:31', '', 114, 'http://wp-2geart/wp-content/uploads/2019/09/domain.png', 0, 'attachment', 'image/png', 0),
(116, 0, '2019-09-20 10:07:52', '2019-09-20 10:07:52', '', 'Ledger App', '', 'publish', 'closed', 'closed', '', 'ledger-app-5', '', '', '2019-09-22 14:37:55', '2019-09-22 14:37:55', '', 0, 'http://wp-2geart/?post_type=portfolio&#038;p=116', 0, 'portfolio', '', 0),
(117, 1, '2019-09-20 10:07:49', '2019-09-20 10:07:49', '', 'javalanding', '', 'inherit', 'open', 'closed', '', 'javalanding', '', '', '2019-09-20 10:07:49', '2019-09-20 10:07:49', '', 116, 'http://wp-2geart/wp-content/uploads/2019/09/javalanding.png', 0, 'attachment', 'image/png', 0),
(118, 0, '2019-09-20 10:08:10', '2019-09-20 10:08:10', '', 'Ledger App', '', 'publish', 'closed', 'closed', '', 'ledger-app-6', '', '', '2019-09-22 14:37:44', '2019-09-22 14:37:44', '', 0, 'http://wp-2geart/?post_type=portfolio&#038;p=118', 0, 'portfolio', '', 0),
(119, 1, '2019-09-20 10:08:06', '2019-09-20 10:08:06', '', 'ledger', '', 'inherit', 'open', 'closed', '', 'ledger', '', '', '2019-09-20 10:08:06', '2019-09-20 10:08:06', '', 118, 'http://wp-2geart/wp-content/uploads/2019/09/ledger.png', 0, 'attachment', 'image/png', 0),
(120, 0, '2019-09-20 10:08:26', '2019-09-20 10:08:26', '', 'Ledger App', '', 'publish', 'closed', 'closed', '', 'ledger-app-7', '', '', '2019-09-22 14:37:34', '2019-09-22 14:37:34', '', 0, 'http://wp-2geart/?post_type=portfolio&#038;p=120', 0, 'portfolio', '', 0),
(121, 1, '2019-09-20 10:08:24', '2019-09-20 10:08:24', '', 'logicway', '', 'inherit', 'open', 'closed', '', 'logicway', '', '', '2019-09-20 10:08:24', '2019-09-20 10:08:24', '', 120, 'http://wp-2geart/wp-content/uploads/2019/09/logicway.png', 0, 'attachment', 'image/png', 0),
(122, 0, '2019-09-20 10:08:43', '2019-09-20 10:08:43', '', 'Ledger App', '', 'publish', 'closed', 'closed', '', 'ledger-app-8', '', '', '2019-09-22 14:37:22', '2019-09-22 14:37:22', '', 0, 'http://wp-2geart/?post_type=portfolio&#038;p=122', 0, 'portfolio', '', 0),
(123, 1, '2019-09-20 10:08:40', '2019-09-20 10:08:40', '', 'spintrivia', '', 'inherit', 'open', 'closed', '', 'spintrivia', '', '', '2019-09-20 10:08:40', '2019-09-20 10:08:40', '', 122, 'http://wp-2geart/wp-content/uploads/2019/09/spintrivia.png', 0, 'attachment', 'image/png', 0),
(124, 0, '2019-09-20 10:28:23', '2019-09-20 10:28:23', '', 'Ledger App', '', 'publish', 'closed', 'closed', '', 'ledger-app-9', '', '', '2019-09-23 14:02:53', '2019-09-23 14:02:53', '', 0, 'http://wp-2geart/?post_type=portfolio&#038;p=124', 0, 'portfolio', '', 0),
(125, 0, '2019-09-20 10:28:32', '2019-09-20 10:28:32', '', 'Ledger App', '', 'publish', 'closed', 'closed', '', 'ledger-app-10', '', '', '2019-09-23 14:03:15', '2019-09-23 14:03:15', '', 0, 'http://wp-2geart/?post_type=portfolio&#038;p=125', 0, 'portfolio', '', 0),
(126, 1, '2019-09-20 10:42:48', '2019-09-20 10:42:48', '', 'All projects', '', 'publish', 'closed', 'closed', '', 'all-projects', '', '', '2019-09-22 12:31:05', '2019-09-22 12:31:05', '', 0, 'http://wp-2geart/?p=126', 1, 'nav_menu_item', '', 0),
(127, 1, '2019-09-20 10:42:48', '2019-09-20 10:42:48', ' ', '', '', 'publish', 'closed', 'closed', '', '127', '', '', '2019-09-22 12:31:05', '2019-09-22 12:31:05', '', 11, 'http://wp-2geart/?p=127', 2, 'nav_menu_item', '', 0),
(128, 1, '2019-09-20 10:42:48', '2019-09-20 10:42:48', ' ', '', '', 'publish', 'closed', 'closed', '', '128', '', '', '2019-09-22 12:31:05', '2019-09-22 12:31:05', '', 11, 'http://wp-2geart/?p=128', 3, 'nav_menu_item', '', 0),
(129, 1, '2019-09-20 10:42:48', '2019-09-20 10:42:48', ' ', '', '', 'publish', 'closed', 'closed', '', '129', '', '', '2019-09-22 12:31:05', '2019-09-22 12:31:05', '', 11, 'http://wp-2geart/?p=129', 4, 'nav_menu_item', '', 0),
(130, 1, '2019-09-20 10:42:48', '2019-09-20 10:42:48', ' ', '', '', 'publish', 'closed', 'closed', '', '130', '', '', '2019-09-22 12:31:05', '2019-09-22 12:31:05', '', 11, 'http://wp-2geart/?p=130', 5, 'nav_menu_item', '', 0),
(131, 1, '2019-09-20 10:43:01', '2019-09-20 10:43:01', '', 'Web development', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2019-09-20 10:43:01', '2019-09-20 10:43:01', '', 77, 'http://wp-2geart/77-revision-v1/', 0, 'revision', '', 0),
(135, 1, '2019-09-21 20:25:29', '2019-09-21 20:25:29', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"portfolio\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Portfolio', 'portfolio', 'publish', 'closed', 'closed', '', 'group_5d8686fcc8829', '', '', '2019-09-23 13:47:10', '2019-09-23 13:47:10', '', 0, 'http://wp-2geart/?post_type=acf-field-group&#038;p=135', 0, 'acf-field-group', '', 0),
(136, 1, '2019-09-22 11:26:01', '2019-09-22 11:26:01', 'a:13:{s:4:\"type\";s:8:\"taxonomy\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:8:\"taxonomy\";s:20:\"categories-portfolio\";s:10:\"field_type\";s:8:\"checkbox\";s:8:\"add_term\";i:1;s:10:\"save_terms\";i:1;s:10:\"load_terms\";i:1;s:13:\"return_format\";s:2:\"id\";s:8:\"multiple\";i:0;s:10:\"allow_null\";i:0;}', 'Category', 'category', 'publish', 'closed', 'closed', '', 'field_5d8759fc0921d', '', '', '2019-09-23 13:15:18', '2019-09-23 13:15:18', '', 135, 'http://wp-2geart/?post_type=acf-field&#038;p=136', 0, 'acf-field', '', 0),
(137, 1, '2019-09-22 11:29:41', '2019-09-22 11:29:41', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"25\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:1;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Dark background', 'dark_background', 'publish', 'closed', 'closed', '', 'field_5d875ae1f969f', '', '', '2019-09-22 17:11:04', '2019-09-22 17:11:04', '', 135, 'http://wp-2geart/?post_type=acf-field&#038;p=137', 1, 'acf-field', '', 0),
(143, 1, '2019-09-22 12:15:52', '2019-09-22 12:15:52', ' ', '', '', 'publish', 'closed', 'closed', '', '143', '', '', '2019-09-22 12:15:52', '2019-09-22 12:15:52', '', 0, 'http://wp-2geart/?p=143', 1, 'nav_menu_item', '', 0),
(144, 1, '2019-09-22 17:10:29', '2019-09-22 17:10:29', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"25\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:1;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Show on main page', 'show_on_main_page', 'publish', 'closed', 'closed', '', 'field_5d87aabbf52ad', '', '', '2019-09-22 17:10:29', '2019-09-22 17:10:29', '', 135, 'http://wp-2geart/?post_type=acf-field&p=144', 2, 'acf-field', '', 0),
(145, 1, '2019-09-22 18:57:54', '2019-09-22 18:57:54', '', 'Web Development', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2019-09-22 18:57:54', '2019-09-22 18:57:54', '', 77, 'http://wp-2geart/77-revision-v1/', 0, 'revision', '', 0),
(146, 1, '2019-09-23 08:59:18', '2019-09-23 08:59:18', '', 'Mobile', '', 'trash', 'closed', 'closed', '', 'mobile__trashed', '', '', '2019-09-23 14:01:51', '2019-09-23 14:01:51', '', 83, 'http://wp-2geart/?page_id=146', 0, 'page', '', 0),
(147, 1, '2019-09-23 08:59:18', '2019-09-23 08:59:18', '', 'Mobile', '', 'inherit', 'closed', 'closed', '', '146-revision-v1', '', '', '2019-09-23 08:59:18', '2019-09-23 08:59:18', '', 146, 'http://wp-2geart/146-revision-v1/', 0, 'revision', '', 0),
(148, 1, '2019-09-23 08:59:40', '2019-09-23 08:59:40', '', 'Responsive', '', 'trash', 'closed', 'closed', '', 'responsive__trashed', '', '', '2019-09-23 14:01:47', '2019-09-23 14:01:47', '', 83, 'http://wp-2geart/?page_id=148', 0, 'page', '', 0),
(149, 1, '2019-09-23 08:59:40', '2019-09-23 08:59:40', '', 'Responsive', '', 'inherit', 'closed', 'closed', '', '148-revision-v1', '', '', '2019-09-23 08:59:40', '2019-09-23 08:59:40', '', 148, 'http://wp-2geart/148-revision-v1/', 0, 'revision', '', 0),
(150, 1, '2019-09-23 09:00:25', '2019-09-23 09:00:25', '', 'Android', '', 'trash', 'closed', 'closed', '', 'android__trashed', '', '', '2019-09-23 14:01:55', '2019-09-23 14:01:55', '', 85, 'http://wp-2geart/?page_id=150', 0, 'page', '', 0),
(151, 1, '2019-09-23 09:00:25', '2019-09-23 09:00:25', '', 'Android', '', 'inherit', 'closed', 'closed', '', '150-revision-v1', '', '', '2019-09-23 09:00:25', '2019-09-23 09:00:25', '', 150, 'http://wp-2geart/150-revision-v1/', 0, 'revision', '', 0),
(152, 1, '2019-09-23 09:00:45', '2019-09-23 09:00:45', '', 'IOS', '', 'trash', 'closed', 'closed', '', 'ios__trashed', '', '', '2019-09-23 14:01:59', '2019-09-23 14:01:59', '', 85, 'http://wp-2geart/?page_id=152', 0, 'page', '', 0),
(153, 1, '2019-09-23 09:00:45', '2019-09-23 09:00:45', '', 'IOS', '', 'inherit', 'closed', 'closed', '', '152-revision-v1', '', '', '2019-09-23 09:00:45', '2019-09-23 09:00:45', '', 152, 'http://wp-2geart/152-revision-v1/', 0, 'revision', '', 0),
(154, 1, '2019-09-23 09:01:56', '2019-09-23 09:01:56', '', 'WordPress', '', 'trash', 'closed', 'closed', '', 'wordpress__trashed', '', '', '2019-09-23 14:02:06', '2019-09-23 14:02:06', '', 95, 'http://wp-2geart/?page_id=154', 0, 'page', '', 0),
(155, 1, '2019-09-23 09:01:56', '2019-09-23 09:01:56', '', 'WordPress', '', 'inherit', 'closed', 'closed', '', '154-revision-v1', '', '', '2019-09-23 09:01:56', '2019-09-23 09:01:56', '', 154, 'http://wp-2geart/154-revision-v1/', 0, 'revision', '', 0),
(156, 1, '2019-09-23 09:02:15', '2019-09-23 09:02:15', '', 'Custom', '', 'trash', 'closed', 'closed', '', 'custom__trashed', '', '', '2019-09-23 14:02:03', '2019-09-23 14:02:03', '', 95, 'http://wp-2geart/?page_id=156', 0, 'page', '', 0),
(157, 1, '2019-09-23 09:02:15', '2019-09-23 09:02:15', '', 'Custom', '', 'inherit', 'closed', 'closed', '', '156-revision-v1', '', '', '2019-09-23 09:02:15', '2019-09-23 09:02:15', '', 156, 'http://wp-2geart/156-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(158, 1, '2019-09-24 09:14:27', '2019-09-24 09:14:27', '', 'uxdesign-visual', '', 'inherit', 'open', 'closed', '', 'uxdesign-visual', '', '', '2019-09-24 09:14:27', '2019-09-24 09:14:27', '', 51, 'http://wp-2geart/wp-content/uploads/2019/09/uxdesign-visual.svg', 0, 'attachment', 'image/svg+xml', 0),
(159, 1, '2019-09-24 10:34:03', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-24 10:34:03', '0000-00-00 00:00:00', '', 0, 'http://wp-2geart/?post_type=service&p=159', 0, 'service', '', 0),
(160, 1, '2019-09-24 10:34:36', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-24 10:34:36', '0000-00-00 00:00:00', '', 0, 'http://wp-2geart/?post_type=service&p=160', 0, 'service', '', 0),
(162, 1, '2019-09-24 12:55:01', '2019-09-24 12:55:01', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"15\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'About', 'about', 'publish', 'closed', 'closed', '', 'group_5d8a11e9814f3', '', '', '2019-09-24 12:59:01', '2019-09-24 12:59:01', '', 0, 'http://wp-2geart/?post_type=acf-field-group&#038;p=162', 0, 'acf-field-group', '', 0),
(163, 1, '2019-09-24 12:55:01', '2019-09-24 12:55:01', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title page', 'title_page', 'publish', 'closed', 'closed', '', 'field_5d8a121e6fe34', '', '', '2019-09-24 12:58:20', '2019-09-24 12:58:20', '', 162, 'http://wp-2geart/?post_type=acf-field&#038;p=163', 0, 'acf-field', '', 0),
(164, 1, '2019-09-24 12:58:20', '2019-09-24 12:58:20', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:3;s:9:\"new_lines\";s:0:\"\";}', 'Title content', 'title_content', 'publish', 'closed', 'closed', '', 'field_5d8a12ceeab9f', '', '', '2019-09-24 12:59:01', '2019-09-24 12:59:01', '', 162, 'http://wp-2geart/?post_type=acf-field&#038;p=164', 1, 'acf-field', '', 0),
(165, 1, '2019-09-24 13:00:32', '2019-09-24 13:00:32', '', 'about-us', '', 'inherit', 'open', 'closed', '', 'about-us', '', '', '2019-09-24 13:00:32', '2019-09-24 13:00:32', '', 15, 'http://wp-2geart/wp-content/uploads/2019/09/about-us.jpg', 0, 'attachment', 'image/jpeg', 0),
(166, 1, '2019-09-24 13:00:52', '2019-09-24 13:00:52', '', 'About', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-09-24 13:00:52', '2019-09-24 13:00:52', '', 15, 'http://wp-2geart/15-revision-v1/', 0, 'revision', '', 0),
(167, 1, '2019-09-24 13:17:51', '2019-09-24 13:17:51', '', 'Web Design', '', 'publish', 'closed', 'closed', '', 'web-design', '', '', '2019-09-24 14:09:51', '2019-09-24 14:09:51', '', 0, 'http://wp-2geart/?post_type=certificates&#038;p=167', 0, 'certificates', '', 0),
(168, 1, '2019-09-24 13:22:35', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-24 13:22:35', '0000-00-00 00:00:00', '', 0, 'http://wp-2geart/?p=168', 0, 'post', '', 0),
(169, 1, '2019-09-24 13:25:07', '2019-09-24 13:25:07', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:12:\"certificates\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Certificates', 'certificates', 'publish', 'closed', 'closed', '', 'group_5d8a18e53f73f', '', '', '2019-09-24 13:26:14', '2019-09-24 13:26:14', '', 0, 'http://wp-2geart/?post_type=acf-field-group&#038;p=169', 0, 'acf-field-group', '', 0),
(170, 1, '2019-09-24 13:25:07', '2019-09-24 13:25:07', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Where did you get', 'where_did_you_get', 'publish', 'closed', 'closed', '', 'field_5d8a1901e90df', '', '', '2019-09-24 13:25:07', '2019-09-24 13:25:07', '', 169, 'http://wp-2geart/?post_type=acf-field&p=170', 0, 'acf-field', '', 0),
(171, 1, '2019-09-24 13:26:14', '2019-09-24 13:26:14', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image certificate', 'image_certificate', 'publish', 'closed', 'closed', '', 'field_5d8a1947c5ba5', '', '', '2019-09-24 13:26:14', '2019-09-24 13:26:14', '', 169, 'http://wp-2geart/?post_type=acf-field&p=171', 1, 'acf-field', '', 0),
(172, 1, '2019-09-24 13:34:11', '2019-09-24 13:34:11', '', 'Branding', '', 'publish', 'closed', 'closed', '', 'branding', '', '', '2019-09-24 14:31:41', '2019-09-24 14:31:41', '', 0, 'http://wp-2geart/?post_type=certificates&#038;p=172', 0, 'certificates', '', 0),
(173, 1, '2019-09-24 14:00:53', '2019-09-24 14:00:53', '', 'diplom_netology', '', 'inherit', 'open', 'closed', '', 'diplom_netology', '', '', '2019-09-24 14:00:53', '2019-09-24 14:00:53', '', 172, 'http://wp-2geart/wp-content/uploads/2019/09/diplom_netology.jpg', 0, 'attachment', 'image/jpeg', 0),
(174, 1, '2019-09-24 14:31:37', '2019-09-24 14:31:37', '', 'diplom_branding', '', 'inherit', 'open', 'closed', '', 'diplom_branding', '', '', '2019-09-24 14:31:37', '2019-09-24 14:31:37', '', 172, 'http://wp-2geart/wp-content/uploads/2019/09/diplom_branding.jpg', 0, 'attachment', 'image/jpeg', 0),
(175, 1, '2019-09-25 08:42:11', '2019-09-25 08:42:11', '', 'Our Team', '', 'publish', 'closed', 'closed', '', 'our-team', '', '', '2019-09-25 08:53:45', '2019-09-25 08:53:45', '', 0, 'http://wp-2geart/?post_type=team&#038;p=175', 0, 'team', '', 0),
(176, 1, '2019-09-25 08:42:06', '2019-09-25 08:42:06', '', 'all-team', '', 'inherit', 'open', 'closed', '', 'all-team', '', '', '2019-09-25 08:42:06', '2019-09-25 08:42:06', '', 175, 'http://wp-2geart/wp-content/uploads/2019/09/all-team.png', 0, 'attachment', 'image/png', 0),
(177, 1, '2019-09-25 08:44:00', '2019-09-25 08:44:00', '', 'Rinat Karlin', '', 'publish', 'closed', 'closed', '', 'rinat-karlin', '', '', '2019-09-25 08:54:45', '2019-09-25 08:54:45', '', 0, 'http://wp-2geart/?post_type=team&#038;p=177', 0, 'team', '', 0),
(178, 1, '2019-09-25 08:43:54', '2019-09-25 08:43:54', '', 'rinat', '', 'inherit', 'open', 'closed', '', 'rinat', '', '', '2019-09-25 08:43:54', '2019-09-25 08:43:54', '', 177, 'http://wp-2geart/wp-content/uploads/2019/09/rinat.png', 0, 'attachment', 'image/png', 0),
(179, 1, '2019-09-25 08:46:31', '2019-09-25 08:46:31', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"team\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Team', 'team', 'publish', 'closed', 'closed', '', 'group_5d8b28d69ece1', '', '', '2019-09-25 08:51:20', '2019-09-25 08:51:20', '', 0, 'http://wp-2geart/?post_type=acf-field-group&#038;p=179', 0, 'acf-field-group', '', 0),
(180, 1, '2019-09-25 08:46:31', '2019-09-25 08:46:31', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Position', 'position', 'publish', 'closed', 'closed', '', 'field_5d8b28e284bae', '', '', '2019-09-25 08:46:31', '2019-09-25 08:46:31', '', 179, 'http://wp-2geart/?post_type=acf-field&p=180', 0, 'acf-field', '', 0),
(181, 1, '2019-09-25 08:46:31', '2019-09-25 08:46:31', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:2;s:9:\"new_lines\";s:0:\"\";}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_5d8b294c84baf', '', '', '2019-09-25 08:51:20', '2019-09-25 08:51:20', '', 179, 'http://wp-2geart/?post_type=acf-field&#038;p=181', 1, 'acf-field', '', 0),
(182, 1, '2019-09-25 08:46:31', '2019-09-25 08:46:31', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Instagram', 'instagram', 'publish', 'closed', 'closed', '', 'field_5d8b296184bb0', '', '', '2019-09-25 08:50:35', '2019-09-25 08:50:35', '', 179, 'http://wp-2geart/?post_type=acf-field&#038;p=182', 2, 'acf-field', '', 0),
(183, 1, '2019-09-25 08:50:35', '2019-09-25 08:50:35', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Behance', 'behance', 'publish', 'closed', 'closed', '', 'field_5d8b29e7b9311', '', '', '2019-09-25 08:50:35', '2019-09-25 08:50:35', '', 179, 'http://wp-2geart/?post_type=acf-field&p=183', 3, 'acf-field', '', 0),
(184, 1, '2019-09-25 08:50:35', '2019-09-25 08:50:35', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Dribbble', 'dribbble', 'publish', 'closed', 'closed', '', 'field_5d8b29feb9312', '', '', '2019-09-25 08:50:35', '2019-09-25 08:50:35', '', 179, 'http://wp-2geart/?post_type=acf-field&p=184', 4, 'acf-field', '', 0),
(185, 1, '2019-09-25 08:50:35', '2019-09-25 08:50:35', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Facebook', 'facebook', 'publish', 'closed', 'closed', '', 'field_5d8b2a35b9313', '', '', '2019-09-25 08:50:35', '2019-09-25 08:50:35', '', 179, 'http://wp-2geart/?post_type=acf-field&p=185', 5, 'acf-field', '', 0),
(186, 1, '2019-09-25 08:50:35', '2019-09-25 08:50:35', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Linkedin', 'linkedin', 'publish', 'closed', 'closed', '', 'field_5d8b2a41b9314', '', '', '2019-09-25 08:50:35', '2019-09-25 08:50:35', '', 179, 'http://wp-2geart/?post_type=acf-field&p=186', 6, 'acf-field', '', 0),
(187, 1, '2019-09-25 08:55:44', '2019-09-25 08:55:44', '', 'Kate Drobysh', '', 'publish', 'closed', 'closed', '', 'kate-drobysh', '', '', '2019-09-25 08:56:04', '2019-09-25 08:56:04', '', 0, 'http://wp-2geart/?post_type=team&#038;p=187', 0, 'team', '', 0),
(188, 1, '2019-09-25 08:56:00', '2019-09-25 08:56:00', '', 'kate', '', 'inherit', 'open', 'closed', '', 'kate', '', '', '2019-09-25 08:56:00', '2019-09-25 08:56:00', '', 187, 'http://wp-2geart/wp-content/uploads/2019/09/kate.png', 0, 'attachment', 'image/png', 0),
(189, 1, '2019-09-25 08:56:58', '2019-09-25 08:56:58', '', 'Andrey Terentjev', '', 'publish', 'closed', 'closed', '', 'andrey-terentjev', '', '', '2019-09-25 09:15:58', '2019-09-25 09:15:58', '', 0, 'http://wp-2geart/?post_type=team&#038;p=189', 0, 'team', '', 0),
(190, 1, '2019-09-25 08:57:45', '2019-09-25 08:57:45', '', 'Anatoli Yarshou', '', 'publish', 'closed', 'closed', '', 'anatoli-yarshou', '', '', '2019-09-25 08:58:02', '2019-09-25 08:58:02', '', 0, 'http://wp-2geart/?post_type=team&#038;p=190', 0, 'team', '', 0),
(191, 1, '2019-09-25 08:57:58', '2019-09-25 08:57:58', '', 'tal', '', 'inherit', 'open', 'closed', '', 'tal', '', '', '2019-09-25 08:57:58', '2019-09-25 08:57:58', '', 190, 'http://wp-2geart/wp-content/uploads/2019/09/tal.png', 0, 'attachment', 'image/png', 0),
(192, 1, '2019-09-25 09:10:28', '2019-09-25 09:10:28', '', 'andry', '', 'inherit', 'open', 'closed', '', 'andry', '', '', '2019-09-25 09:10:28', '2019-09-25 09:10:28', '', 189, 'http://wp-2geart/wp-content/uploads/2019/09/andry.png', 0, 'attachment', 'image/png', 0);

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
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Header-menu', 'header-menu', 0),
(3, 'footer-menu-1', 'footer-menu-1', 0),
(4, 'footer-menu-2', 'footer-menu-2', 0),
(5, 'footer-menu-3', 'footer-menu-3', 0),
(7, 'Portfolio-category', 'portfolio-category', 0),
(8, 'rtr', 'rtr', 0),
(9, 'esf', 'esf', 0),
(10, 'rrrr', 'rrrr', 0),
(11, 'yyy', 'yyy', 0),
(12, 'reyyy', 'reyyy', 0),
(13, 'Design', 'design', 0),
(14, 'Web Development', 'web-development', 0),
(15, 'App Development', 'app-development', 0),
(16, 'Internet Marketing', 'internet-marketing', 0),
(18, 'Android', 'android', 0),
(19, 'IOS', 'ios', 0),
(20, 'Backend', 'backend', 0),
(21, 'App', 'app', 0),
(22, 'Banner', 'banner', 0),
(23, 'Graphic', 'graphic', 0),
(24, 'Logo', 'logo', 0),
(25, 'Web', 'web', 0),
(26, 'SEO', 'seo', 0),
(27, 'CMS', 'cms', 0),
(28, 'HTML-CSS', 'html-css', 0),
(35, 'Mobile', 'mobile', 0),
(36, 'Responsive', 'responsive', 0),
(37, 'Android', 'android', 0),
(38, 'IOS', 'ios', 0),
(39, 'WordPress', 'wordpress', 0),
(40, 'Custom', 'custom', 0),
(41, 'Mobile', 'mobile', 0),
(42, 'Responsive', 'responsive', 0),
(43, 'Android', 'android', 0),
(44, 'IOS', 'ios', 0),
(45, 'Mobile', 'mobile', 0),
(46, 'Responsive', 'responsive', 0),
(47, 'Android', 'android', 0),
(48, 'IOS', 'ios', 0),
(49, 'WordPress', 'wordpress', 0),
(50, 'Custom', 'custom', 0);

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
(22, 2, 0),
(23, 2, 0),
(26, 2, 0),
(27, 2, 0),
(28, 5, 0),
(29, 5, 0),
(30, 5, 0),
(31, 4, 0),
(32, 4, 0),
(33, 4, 0),
(34, 4, 0),
(35, 3, 0),
(36, 3, 0),
(37, 3, 0),
(38, 3, 0),
(108, 13, 0),
(108, 15, 0),
(108, 16, 0),
(110, 13, 0),
(110, 14, 0),
(110, 16, 0),
(112, 13, 0),
(112, 14, 0),
(114, 13, 0),
(114, 14, 0),
(114, 15, 0),
(114, 16, 0),
(116, 13, 0),
(116, 14, 0),
(116, 16, 0),
(118, 13, 0),
(118, 15, 0),
(118, 16, 0),
(120, 13, 0),
(120, 14, 0),
(120, 15, 0),
(120, 16, 0),
(122, 13, 0),
(122, 14, 0),
(122, 16, 0),
(124, 13, 0),
(124, 15, 0),
(124, 16, 0),
(124, 22, 0),
(125, 13, 0),
(125, 14, 0),
(125, 15, 0),
(125, 16, 0),
(125, 18, 0),
(125, 19, 0),
(125, 20, 0),
(125, 21, 0),
(125, 22, 0),
(125, 23, 0),
(125, 24, 0),
(125, 25, 0),
(125, 26, 0),
(125, 27, 0),
(125, 28, 0),
(126, 7, 0),
(127, 7, 0),
(128, 7, 0),
(129, 7, 0),
(130, 7, 0),
(143, 2, 0);

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
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'nav_menu', '', 0, 4),
(4, 4, 'nav_menu', '', 0, 4),
(5, 5, 'nav_menu', '', 0, 3),
(7, 7, 'nav_menu', '', 0, 5),
(8, 8, 'type clients', '', 0, 0),
(9, 9, 'portfolio', '', 0, 0),
(10, 10, 'portfolio', '', 9, 0),
(11, 11, 'portfolio', '', 10, 0),
(12, 12, 'portfolio', '', 0, 0),
(13, 13, 'categories-portfolio', '', 0, 10),
(14, 14, 'categories-portfolio', '', 0, 7),
(15, 15, 'categories-portfolio', '', 0, 6),
(16, 16, 'categories-portfolio', '', 0, 9),
(18, 18, 'categories-portfolio', '', 15, 1),
(19, 19, 'categories-portfolio', '', 15, 1),
(20, 20, 'categories-portfolio', '', 15, 1),
(21, 21, 'categories-portfolio', '', 13, 1),
(22, 22, 'categories-portfolio', '', 13, 2),
(23, 23, 'categories-portfolio', '', 13, 1),
(24, 24, 'categories-portfolio', '', 13, 1),
(25, 25, 'categories-portfolio', '', 13, 1),
(26, 26, 'categories-portfolio', '', 16, 1),
(27, 27, 'categories-portfolio', '', 14, 1),
(28, 28, 'categories-portfolio', '', 14, 1),
(35, 35, 'type-portfolio', '', 0, 0),
(36, 36, 'type-portfolio', '', 0, 0),
(37, 37, 'type-portfolio', '', 0, 0),
(38, 38, 'type-portfolio', '', 0, 0),
(39, 39, 'type-portfolio', '', 0, 0),
(40, 40, 'type-portfolio', '', 0, 0),
(41, 41, 'type-portfolio-design', '', 0, 0),
(42, 42, 'type-portfolio-design', '', 0, 0),
(43, 43, 'type-portfolio-design', '', 0, 0),
(44, 44, 'type-portfolio-design', '', 0, 0),
(45, 45, 'type-portfolio-web-design', '', 0, 0),
(46, 46, 'type-portfolio-web-design', '', 0, 0),
(47, 47, 'type-portfolio-app-design', '', 0, 0),
(48, 48, 'type-portfolio-app-design', '', 0, 0),
(49, 49, 'type-portfolio-cms-design', '', 0, 0),
(50, 50, 'type-portfolio-cms-design', '', 0, 0);

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
(1, 1, 'nickname', 'admin'),
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
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:4:{s:64:\"d5658201328a8d958fdc52a5af9c07e0ac117aaf40be055e469e3a61372b7698\";a:4:{s:10:\"expiration\";i:1569401541;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:77:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0\";s:5:\"login\";i:1569228741;}s:64:\"f4ed3063de86ab1bbd21b467e579503bb7431a945fe74a9ae67da7612f4f27ff\";a:4:{s:10:\"expiration\";i:1569489184;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:77:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0\";s:5:\"login\";i:1569316384;}s:64:\"747f61e5f670920cda23c2741f9fafa323d14dc44af7380dc17d1c440ca9c527\";a:4:{s:10:\"expiration\";i:1569507663;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:77:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0\";s:5:\"login\";i:1569334863;}s:64:\"f02542c9077fe6f189347f9ccd09c15fcf78e118ba755e904d4ff076b1597ddd\";a:4:{s:10:\"expiration\";i:1569572317;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:77:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0\";s:5:\"login\";i:1569399517;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '168'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_user-settings', 'mfold=o&libraryContent=browse&posts_list_mode=list'),
(20, 1, 'wp_user-settings-time', '1569332243'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(23, 1, 'wp_r_tru_u_x', 'a:2:{s:2:\"id\";s:0:\"\";s:7:\"expires\";i:86400;}'),
(24, 1, 'ignore_admin_config_geart_option', '1'),
(25, 1, 'ignore_share_config_geart_option', '1'),
(26, 1, 'ignore_redux_blast_1568729213_geart_option', '1'),
(27, 1, 'wp_media_library_mode', 'grid'),
(28, 1, 'closedpostboxes_post', 'a:0:{}'),
(29, 1, 'metaboxhidden_post', 'a:0:{}'),
(30, 1, 'nav_menu_recently_edited', '7'),
(31, 1, 'enable_custom_fields', '1'),
(32, 1, 'closedpostboxes_portfolio', 'a:0:{}'),
(33, 1, 'metaboxhidden_portfolio', 'a:0:{}'),
(34, 1, 'meta-box-order_portfolio', 'a:4:{s:6:\"normal\";s:23:\"acf-group_5d8686fcc8829\";s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:0:\"\";s:8:\"advanced\";s:0:\"\";}'),
(35, 1, 'closedpostboxes_attachment', 'a:0:{}'),
(36, 1, 'metaboxhidden_attachment', 'a:3:{i:0;s:16:\"commentstatusdiv\";i:1;s:11:\"commentsdiv\";i:2;s:9:\"authordiv\";}'),
(37, 1, 'meta-box-order_attachment', 'a:3:{s:4:\"side\";s:9:\"submitdiv\";s:6:\"normal\";s:46:\"commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(38, 1, 'screen_layout_attachment', '2'),
(39, 1, 'edit_certificates_per_page', '20');

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
(1, 'admin', '$P$BYax4elnCPjzZS5cOGEFwV.u4we7Pm/', 'admin', 'vyts_vyts@mail.ru', '', '2019-09-17 10:37:38', '', 0, 'admin');

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
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

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
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=572;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=668;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
