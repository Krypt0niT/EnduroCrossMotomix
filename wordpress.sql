-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hostiteľ: 127.0.0.1
-- Čas generovania: Št 20.Okt 2022, 11:53
-- Verzia serveru: 10.4.21-MariaDB
-- Verzia PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáza: `wordpress`
--

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_actionscheduler_actions`
--

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `wp_actionscheduler_actions`
--

INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(37, 'action_scheduler/migration_hook', 'complete', '2022-10-13 15:45:51', '2022-10-13 15:45:51', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665675951;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665675951;}', 1, 1, '2022-10-13 15:45:59', '2022-10-13 15:45:59', 0, NULL),
(38, 'woocommerce_cleanup_draft_orders', 'complete', '2022-10-13 15:44:55', '2022-10-13 15:44:55', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1665675895;s:18:\"\0*\0first_timestamp\";i:1665675895;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1665675895;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-10-13 15:45:59', '2022-10-13 15:45:59', 0, NULL),
(39, 'woocommerce_cleanup_draft_orders', 'complete', '2022-10-14 15:45:59', '2022-10-14 15:45:59', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1665762359;s:18:\"\0*\0first_timestamp\";i:1665675895;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1665762359;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-10-18 10:42:35', '2022-10-18 10:42:35', 0, NULL),
(40, 'action_scheduler/migration_hook', 'complete', '2022-10-13 15:46:59', '2022-10-13 15:46:59', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665676019;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665676019;}', 1, 1, '2022-10-13 15:47:58', '2022-10-13 15:47:58', 0, NULL),
(41, 'woocommerce_update_marketplace_suggestions', 'complete', '2022-10-13 15:50:52', '2022-10-13 15:50:52', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665676252;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665676252;}', 0, 1, '2022-10-13 15:51:11', '2022-10-13 15:51:11', 0, NULL),
(42, 'woocommerce_cleanup_draft_orders', 'complete', '2022-10-19 10:42:35', '2022-10-19 10:42:35', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1666176155;s:18:\"\0*\0first_timestamp\";i:1665675895;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1666176155;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-10-20 09:49:54', '2022-10-20 09:49:54', 0, NULL),
(43, 'wc-admin_import_customers', 'complete', '2022-10-18 11:41:59', '2022-10-18 11:41:59', '[1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666093319;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666093319;}', 2, 1, '2022-10-18 11:43:18', '2022-10-18 11:43:18', 0, NULL),
(44, 'woocommerce_admin/stored_state_setup_for_products/async/run_remote_notifications', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '[]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 0, 1, '2022-10-18 15:34:22', '2022-10-18 15:34:22', 0, NULL),
(45, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-18 15:34:22', '2022-10-18 15:34:22', '[43,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1666107262;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1666107262;}', 3, 1, '2022-10-18 15:34:22', '2022-10-18 15:34:22', 0, NULL),
(46, 'woocommerce_cleanup_draft_orders', 'pending', '2022-10-21 09:49:54', '2022-10-21 09:49:54', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1666345794;s:18:\"\0*\0first_timestamp\";i:1665675895;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1666345794;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_actionscheduler_claims`
--

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_actionscheduler_groups`
--

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `wp_actionscheduler_groups`
--

INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, 'wc-admin-data'),
(3, 'woocommerce-db-updates');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_actionscheduler_logs`
--

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `wp_actionscheduler_logs`
--

INSERT INTO `wp_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 37, 'action created', '2022-10-13 15:44:51', '2022-10-13 15:44:51'),
(2, 38, 'action created', '2022-10-13 15:44:55', '2022-10-13 15:44:55'),
(3, 38, 'action started via WP Cron', '2022-10-13 15:45:59', '2022-10-13 15:45:59'),
(4, 38, 'action complete via WP Cron', '2022-10-13 15:45:59', '2022-10-13 15:45:59'),
(5, 39, 'action created', '2022-10-13 15:45:59', '2022-10-13 15:45:59'),
(6, 37, 'action started via WP Cron', '2022-10-13 15:45:59', '2022-10-13 15:45:59'),
(7, 37, 'action complete via WP Cron', '2022-10-13 15:45:59', '2022-10-13 15:45:59'),
(8, 40, 'action created', '2022-10-13 15:45:59', '2022-10-13 15:45:59'),
(9, 40, 'action started via WP Cron', '2022-10-13 15:47:58', '2022-10-13 15:47:58'),
(10, 40, 'action complete via WP Cron', '2022-10-13 15:47:58', '2022-10-13 15:47:58'),
(11, 41, 'action created', '2022-10-13 15:50:52', '2022-10-13 15:50:52'),
(12, 41, 'action started via Async Request', '2022-10-13 15:51:11', '2022-10-13 15:51:11'),
(13, 41, 'action complete via Async Request', '2022-10-13 15:51:11', '2022-10-13 15:51:11'),
(14, 39, 'action started via WP Cron', '2022-10-18 10:42:35', '2022-10-18 10:42:35'),
(15, 39, 'action complete via WP Cron', '2022-10-18 10:42:35', '2022-10-18 10:42:35'),
(16, 42, 'action created', '2022-10-18 10:42:35', '2022-10-18 10:42:35'),
(17, 43, 'action created', '2022-10-18 11:41:54', '2022-10-18 11:41:54'),
(18, 43, 'action started via WP Cron', '2022-10-18 11:43:18', '2022-10-18 11:43:18'),
(19, 43, 'action complete via WP Cron', '2022-10-18 11:43:18', '2022-10-18 11:43:18'),
(20, 44, 'action created', '2022-10-18 15:34:21', '2022-10-18 15:34:21'),
(21, 45, 'action created', '2022-10-18 15:34:21', '2022-10-18 15:34:21'),
(22, 44, 'action started via Async Request', '2022-10-18 15:34:22', '2022-10-18 15:34:22'),
(23, 44, 'action complete via Async Request', '2022-10-18 15:34:22', '2022-10-18 15:34:22'),
(24, 45, 'action started via Async Request', '2022-10-18 15:34:22', '2022-10-18 15:34:22'),
(25, 45, 'action complete via Async Request', '2022-10-18 15:34:22', '2022-10-18 15:34:22'),
(26, 42, 'action started via WP Cron', '2022-10-20 09:49:54', '2022-10-20 09:49:54'),
(27, 42, 'action complete via WP Cron', '2022-10-20 09:49:54', '2022-10-20 09:49:54'),
(28, 46, 'action created', '2022-10-20 09:49:54', '2022-10-20 09:49:54');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `wp_commentmeta`
--

INSERT INTO `wp_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 2, 'rating', '4'),
(2, 2, 'verified', '0');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2022-10-11 18:44:51', '2022-10-11 18:44:51', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0),
(2, 43, 'Krypt0niT', 'k269692@gmail.com', 'http://localhost/wordpress', '127.0.0.1', '2022-10-18 17:06:29', '2022-10-18 17:06:29', 'Veľmi kvalitné', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'review', 0, 1);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://EnduroCrossMotomix.sk', 'yes'),
(2, 'home', 'http://EnduroCrossMotomix.sk', 'yes'),
(3, 'blogname', '', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'k269692@gmail.com', 'yes'),
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
(29, 'rewrite_rules', 'a:160:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:25:\"([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:31:\"[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:33:\"classic-editor/classic-editor.php\";i:1;s:59:\"force-regenerate-thumbnails/force-regenerate-thumbnails.php\";i:2;s:19:\"jetpack/jetpack.php\";i:3;s:45:\"woocommerce-services/woocommerce-services.php\";i:4;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'EnduroCrossMotomix', 'yes'),
(41, 'stylesheet', 'EnduroCrossMotomix', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:45:\"woocommerce-services/woocommerce-services.php\";a:2:{i:0;s:17:\"WC_Connect_Loader\";i:1;s:16:\"plugin_uninstall\";}}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1681065891', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'user_count', '1', 'no'),
(103, 'widget_block', 'a:6:{i:3;a:1:{s:7:\"content\";s:71:\"<!-- wp:group -->\n<div class=\"wp-block-group\"></div>\n<!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:71:\"<!-- wp:group -->\n<div class=\"wp-block-group\"></div>\n<!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:71:\"<!-- wp:group -->\n<div class=\"wp-block-group\"></div>\n<!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:71:\"<!-- wp:group -->\n<div class=\"wp-block-group\"></div>\n<!-- /wp:group -->\";}i:8;a:1:{s:7:\"content\";s:60:\"<!-- wp:search {\"label\":\"Search\",\"buttonText\":\"Search\"} /-->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-3\";i:1;s:7:\"block-4\";i:2;s:7:\"block-5\";i:3;s:7:\"block-6\";i:4;s:7:\"block-8\";}s:12:\"page-sidebar\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:19:{i:1666259449;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1666262691;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1666262692;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1666262699;a:1:{s:29:\"wc_admin_unsnooze_admin_notes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1666262791;a:1:{s:20:\"jetpack_clean_nonces\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1666262994;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1666280690;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1666280700;a:2:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1666280791;a:1:{s:20:\"jetpack_v2_heartbeat\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1666291490;a:2:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:31:\"woocommerce_cleanup_rate_limits\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1666291491;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1666291492;a:4:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1666291505;a:3:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1666291506;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1666302290;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1666310400;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1666809891;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1666971950;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(122, 'theme_mods_twentytwentytwo', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1665515003;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(125, 'https_detection_errors', 'a:2:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}s:19:\"bad_response_source\";a:1:{i:0;s:55:\"It looks like the response did not come from this site.\";}}', 'yes'),
(131, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1666259396;s:7:\"checked\";a:1:{s:18:\"EnduroCrossMotomix\";s:0:\"\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(140, 'can_compress_scripts', '1', 'no'),
(153, 'finished_updating_comment_type', '1', 'yes'),
(168, 'current_theme', 'EnduroCrossMotomix', 'yes'),
(169, 'theme_mods_EnduroCrossMotomix', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:8:\"top-menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(170, 'theme_switched', '', 'yes'),
(173, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(178, 'recently_activated', 'a:0:{}', 'yes'),
(259, '_transient_health-check-site-status-result', '{\"good\":14,\"recommended\":4,\"critical\":1}', 'yes'),
(417, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(418, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(423, 'category_children', 'a:0:{}', 'yes'),
(424, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(485, 'action_scheduler_hybrid_store_demarkation', '36', 'yes'),
(486, 'schema-ActionScheduler_StoreSchema', '6.0.1665675889', 'yes'),
(487, 'schema-ActionScheduler_LoggerSchema', '3.0.1665675889', 'yes'),
(490, 'woocommerce_schema_version', '430', 'yes'),
(491, 'woocommerce_store_address', 'Nádražná 489/37', 'yes'),
(492, 'woocommerce_store_address_2', '', 'yes'),
(493, 'woocommerce_store_city', 'Rajec', 'yes'),
(494, 'woocommerce_default_country', 'SK', 'yes'),
(495, 'woocommerce_store_postcode', '01501', 'yes'),
(496, 'woocommerce_allowed_countries', 'all', 'yes'),
(497, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(498, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(499, 'woocommerce_ship_to_countries', '', 'yes'),
(500, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(501, 'woocommerce_default_customer_address', 'base', 'yes'),
(502, 'woocommerce_calc_taxes', 'no', 'yes'),
(503, 'woocommerce_enable_coupons', 'yes', 'yes'),
(504, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(505, 'woocommerce_currency', 'EUR', 'yes'),
(506, 'woocommerce_currency_pos', 'right_space', 'yes'),
(507, 'woocommerce_price_thousand_sep', '', 'yes'),
(508, 'woocommerce_price_decimal_sep', ',', 'yes'),
(509, 'woocommerce_price_num_decimals', '2', 'yes'),
(510, 'woocommerce_shop_page_id', '37', 'yes'),
(511, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(512, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(513, 'woocommerce_placeholder_image', '36', 'yes'),
(514, 'woocommerce_weight_unit', 'kg', 'yes'),
(515, 'woocommerce_dimension_unit', 'cm', 'yes'),
(516, 'woocommerce_enable_reviews', 'yes', 'yes'),
(517, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(518, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(519, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(520, 'woocommerce_review_rating_required', 'yes', 'no'),
(521, 'woocommerce_manage_stock', 'yes', 'yes'),
(522, 'woocommerce_hold_stock_minutes', '60', 'no'),
(523, 'woocommerce_notify_low_stock', 'yes', 'no'),
(524, 'woocommerce_notify_no_stock', 'yes', 'no'),
(525, 'woocommerce_stock_email_recipient', 'k269692@gmail.com', 'no'),
(526, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(527, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(528, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(529, 'woocommerce_stock_format', '', 'yes'),
(530, 'woocommerce_file_download_method', 'force', 'no'),
(531, 'woocommerce_downloads_redirect_fallback_allowed', 'no', 'no'),
(532, 'woocommerce_downloads_require_login', 'no', 'no'),
(533, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(534, 'woocommerce_downloads_deliver_inline', '', 'no'),
(535, 'woocommerce_downloads_add_hash_to_filename', 'yes', 'yes'),
(536, 'woocommerce_attribute_lookup_enabled', 'no', 'yes'),
(537, 'woocommerce_attribute_lookup_direct_updates', 'no', 'yes'),
(538, 'woocommerce_prices_include_tax', 'no', 'yes'),
(539, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(540, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(541, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(542, 'woocommerce_tax_classes', '', 'yes'),
(543, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(544, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(545, 'woocommerce_price_display_suffix', '', 'yes'),
(546, 'woocommerce_tax_total_display', 'itemized', 'no'),
(547, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(548, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(549, 'woocommerce_ship_to_destination', 'billing', 'no'),
(550, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(551, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(552, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(553, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(554, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(555, 'woocommerce_registration_generate_username', 'yes', 'no'),
(556, 'woocommerce_registration_generate_password', 'yes', 'no'),
(557, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(558, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(559, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(560, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(561, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(562, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(563, 'woocommerce_trash_pending_orders', '', 'no'),
(564, 'woocommerce_trash_failed_orders', '', 'no'),
(565, 'woocommerce_trash_cancelled_orders', '', 'no'),
(566, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(567, 'woocommerce_email_from_name', '', 'no'),
(568, 'woocommerce_email_from_address', 'k269692@gmail.com', 'no'),
(569, 'woocommerce_email_header_image', '', 'no'),
(570, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(571, 'woocommerce_email_base_color', '#7f54b3', 'no'),
(572, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(573, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(574, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(575, 'woocommerce_merchant_email_notifications', 'no', 'no'),
(576, 'woocommerce_cart_page_id', '38', 'no'),
(577, 'woocommerce_checkout_page_id', '39', 'no'),
(578, 'woocommerce_myaccount_page_id', '40', 'no'),
(579, 'woocommerce_terms_page_id', '', 'no'),
(580, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(581, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(582, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(583, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(584, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(585, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(586, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(587, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(588, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(589, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(590, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(591, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(592, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(593, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(594, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(595, 'woocommerce_api_enabled', 'no', 'yes'),
(596, 'woocommerce_allow_tracking', 'yes', 'no'),
(597, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(598, 'woocommerce_single_image_width', '600', 'yes'),
(599, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(600, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(601, 'woocommerce_demo_store', 'no', 'no'),
(602, 'wc_downloads_approved_directories_mode', 'enabled', 'yes'),
(603, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:8:\"/product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(604, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(605, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(606, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(608, 'default_product_cat', '17', 'yes'),
(610, 'woocommerce_refund_returns_page_id', '41', 'yes'),
(613, 'woocommerce_paypal_settings', 'a:23:{s:7:\"enabled\";s:2:\"no\";s:5:\"title\";s:6:\"PayPal\";s:11:\"description\";s:85:\"Pay via PayPal; you can pay with your credit card if you don\'t have a PayPal account.\";s:5:\"email\";s:17:\"k269692@gmail.com\";s:8:\"advanced\";s:0:\"\";s:8:\"testmode\";s:2:\"no\";s:5:\"debug\";s:2:\"no\";s:16:\"ipn_notification\";s:3:\"yes\";s:14:\"receiver_email\";s:17:\"k269692@gmail.com\";s:14:\"identity_token\";s:0:\"\";s:14:\"invoice_prefix\";s:3:\"WC-\";s:13:\"send_shipping\";s:3:\"yes\";s:16:\"address_override\";s:2:\"no\";s:13:\"paymentaction\";s:4:\"sale\";s:9:\"image_url\";s:0:\"\";s:11:\"api_details\";s:0:\"\";s:12:\"api_username\";s:0:\"\";s:12:\"api_password\";s:0:\"\";s:13:\"api_signature\";s:0:\"\";s:20:\"sandbox_api_username\";s:0:\"\";s:20:\"sandbox_api_password\";s:0:\"\";s:21:\"sandbox_api_signature\";s:0:\"\";s:12:\"_should_load\";s:2:\"no\";}', 'yes'),
(614, 'woocommerce_version', '7.0.0', 'yes'),
(615, 'woocommerce_db_version', '7.0.0', 'yes'),
(616, 'woocommerce_admin_install_timestamp', '1665675891', 'yes'),
(617, 'woocommerce_inbox_variant_assignment', '1', 'yes'),
(621, '_transient_jetpack_autoloader_plugin_paths', 'a:2:{i:0;s:25:\"{{WP_PLUGIN_DIR}}/jetpack\";i:1;s:29:\"{{WP_PLUGIN_DIR}}/woocommerce\";}', 'yes'),
(622, 'action_scheduler_lock_async-request-runner', '1666259458', 'yes'),
(623, 'woocommerce_admin_notices', 'a:1:{i:0;s:20:\"no_secure_connection\";}', 'yes'),
(624, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:\"database_prefix\";s:32:\"59AXJNEklCWWgVyca3HS67kdhqdnas21\";}', 'yes'),
(625, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(626, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(627, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(628, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(629, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(630, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(631, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(632, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(633, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(634, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(635, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(636, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(637, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(641, '_transient_timeout_woocommerce_admin_remote_inbox_notifications_specs', '1666864197', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(642, '_transient_woocommerce_admin_remote_inbox_notifications_specs', 'a:1:{s:5:\"en_US\";a:34:{s:27:\"new_in_app_marketplace_2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:27:\"new_in_app_marketplace_2021\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:36:\"Customize your store with extensions\";s:7:\"content\";s:164:\"Check out our NEW Extensions tab to see our favorite extensions for customizing your store, and discover the most popular extensions in the WooCommerce Marketplace.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:17:\"browse_extensions\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:17:\"Browse extensions\";}}s:3:\"url\";s:24:\"admin.php?page=wc-addons\";s:18:\"url_is_admin_query\";b:1;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:14:23\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"5.7\";}}}s:21:\"wayflyer_bnpl_q4_2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:21:\"wayflyer_bnpl_q4_2021\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:48:\"Grow your business with funding through Wayflyer\";s:7:\"content\";s:261:\"Fast, flexible financing to boost cash flow and help your business grow – one fee, no interest rates, penalties, equity, or personal guarantees. Based on your store’s performance, Wayflyer provides funding and analytical insights to invest in your business.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:21:\"wayflyer_bnpl_q4_2021\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:21:\"Level up with funding\";}}s:3:\"url\";s:118:\"https://woocommerce.com/products/wayflyer/?utm_source=inbox_note&utm_medium=product&utm_campaign=wayflyer_bnpl_q4_2021\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-11-17 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-12-18 00:00:00\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:7:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AU\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"BE\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CA\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"IE\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NL\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"GB\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"US\";}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:26:\"woocommerce-gateway-affirm\";}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:32:\"afterpay-gateway-for-woocommerce\";}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:31:\"klarna-payments-for-woocommerce\";}}}}}}s:35:\"wc_shipping_mobile_app_usps_q4_2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:35:\"wc_shipping_mobile_app_usps_q4_2021\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:94:\"Print and manage your shipping labels with WooCommerce Shipping and the WooCommerce Mobile App\";s:7:\"content\";s:210:\"Save time by printing, purchasing, refunding, and tracking shipping labels generated by <a href=\"https://woocommerce.com/woocommerce-shipping/\">WooCommerce Shipping</a> – all directly from your mobile device!\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:35:\"wc_shipping_mobile_app_usps_q4_2021\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:24:\"Get WooCommerce Shipping\";}}s:3:\"url\";s:135:\"https://woocommerce.com/woocommerce-shipping/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc_shipping_mobile_app_usps_q4_2021\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:5:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-11-12 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-11-27 00:00:00\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"US\";}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:25:\"woocommerce-shipping-usps\";}}i:4;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}}}}}s:30:\"wc_shipping_mobile_app_q4_2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:30:\"wc_shipping_mobile_app_q4_2021\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:69:\"Print and manage your shipping labels with the WooCommerce Mobile App\";s:7:\"content\";s:210:\"Save time by printing, purchasing, refunding, and tracking shipping labels generated by <a href=\"https://woocommerce.com/woocommerce-shipping/\">WooCommerce Shipping</a> – all directly from your mobile device!\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:30:\"wc_shipping_mobile_app_q4_2021\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:30:\"Get the WooCommerce Mobile App\";}}s:3:\"url\";s:116:\"https://woocommerce.com/mobile/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc_shipping_mobile_app_q4_2021\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-11-12 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-11-27 00:00:00\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"US\";}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}}}s:37:\"ecomm-need-help-setting-up-your-store\";O:8:\"stdClass\":8:{s:4:\"slug\";s:37:\"ecomm-need-help-setting-up-your-store\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:32:\"Need help setting up your Store?\";s:7:\"content\";s:350:\"Schedule a free 30-min <a href=\"https://wordpress.com/support/concierge-support/\">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:16:\"set-up-concierge\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:21:\"Schedule free session\";}}s:3:\"url\";s:34:\"https://wordpress.com/me/concierge\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:16:48\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:3:{i:0;s:35:\"woocommerce-shipping-australia-post\";i:1;s:32:\"woocommerce-shipping-canada-post\";i:2;s:30:\"woocommerce-shipping-royalmail\";}}}}s:20:\"woocommerce-services\";O:8:\"stdClass\":8:{s:4:\"slug\";s:20:\"woocommerce-services\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:26:\"WooCommerce Shipping & Tax\";s:7:\"content\";s:251:\"WooCommerce Shipping & Tax helps get your store \"ready to sell\" as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:84:\"https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:17:25\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:2;}}}s:32:\"ecomm-unique-shopping-experience\";O:8:\"stdClass\":8:{s:4:\"slug\";s:32:\"ecomm-unique-shopping-experience\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:53:\"For a shopping experience as unique as your customers\";s:7:\"content\";s:270:\"Product Add-Ons allow your customers to personalize products while they\'re shopping on your online store. No more follow-up email requests—customers get what they want, before they\'re done checking out. Learn more about this extension that comes included in your plan.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:43:\"learn-more-ecomm-unique-shopping-experience\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:71:\"https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:18:01\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:3:{i:0;s:35:\"woocommerce-shipping-australia-post\";i:1;s:32:\"woocommerce-shipping-canada-post\";i:2;s:30:\"woocommerce-shipping-royalmail\";}}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:2;}}}s:37:\"wc-admin-getting-started-in-ecommerce\";O:8:\"stdClass\":8:{s:4:\"slug\";s:37:\"wc-admin-getting-started-in-ecommerce\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:38:\"Getting Started in eCommerce - webinar\";s:7:\"content\";s:174:\"We want to make eCommerce and this process of getting started as easy as possible for you. Watch this webinar to get tips on how to have our store up and running in a breeze.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:17:\"watch-the-webinar\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:17:\"Watch the webinar\";}}s:3:\"url\";s:28:\"https://youtu.be/V_2XtCOyZ7o\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:18:37\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:12:\"setup_client\";s:9:\"operation\";s:2:\"!=\";s:5:\"value\";b:1;}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:3:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:13:\"product_count\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:1:\"0\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:7:\"revenue\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:4:\"none\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:7:\"revenue\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:10:\"up-to-2500\";}}}}}s:18:\"your-first-product\";O:8:\"stdClass\":8:{s:4:\"slug\";s:18:\"your-first-product\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:18:\"Your first product\";s:7:\"content\";s:467:\"That’s huge! You’re well on your way to building a successful online store — now it’s time to think about how you’ll fulfill your orders.<br/><br/>Read our shipping guide to learn best practices and options for putting together your shipping strategy. And for WooCommerce stores in the United States, you can print discounted shipping labels via USPS with <a href=\"https://href.li/?https://woocommerce.com/shipping\" target=\"_blank\">WooCommerce Shipping</a>.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:130:\"https://woocommerce.com/posts/ecommerce-shipping-solutions-guide/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:5:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:19:13\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:12:\"stored_state\";s:5:\"index\";s:22:\"there_were_no_products\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";b:1;}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:12:\"stored_state\";s:5:\"index\";s:22:\"there_are_now_products\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";b:1;}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:13:\"product_count\";s:9:\"operation\";s:2:\">=\";s:5:\"value\";i:1;}i:4;O:8:\"stdClass\":5:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:13:\"product_types\";s:9:\"operation\";s:8:\"contains\";s:5:\"value\";s:8:\"physical\";s:7:\"default\";a:0:{}}}}s:37:\"wc-admin-optimizing-the-checkout-flow\";O:8:\"stdClass\":8:{s:4:\"slug\";s:37:\"wc-admin-optimizing-the-checkout-flow\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:28:\"Optimizing the checkout flow\";s:7:\"content\";s:177:\"It’s crucial to get your store’s checkout as smooth as possible to avoid losing sales. Let’s take a look at how you can optimize the checkout experience for your shoppers.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:28:\"optimizing-the-checkout-flow\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:144:\"https://woocommerce.com/posts/optimizing-woocommerce-checkout?utm_source=inbox_note&utm_medium=product&utm_campaign=optimizing-the-checkout-flow\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:19:49\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\">\";s:4:\"days\";i:3;}i:2;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:45:\"woocommerce_task_list_tracked_completed_tasks\";s:9:\"operation\";s:8:\"contains\";s:5:\"value\";s:8:\"payments\";s:7:\"default\";a:0:{}}}}s:39:\"wc-admin-first-five-things-to-customize\";O:8:\"stdClass\":8:{s:4:\"slug\";s:39:\"wc-admin-first-five-things-to-customize\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:45:\"The first 5 things to customize in your store\";s:7:\"content\";s:175:\"Deciding what to start with first is tricky. To help you properly prioritize, we’ve put together this short list of the first few things you should customize in WooCommerce.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:130:\"https://woocommerce.com/posts/first-things-customize-woocommerce/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:20:31\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\">\";s:4:\"days\";i:2;}i:2;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:45:\"woocommerce_task_list_tracked_completed_tasks\";s:5:\"value\";s:9:\"NOT EMPTY\";s:7:\"default\";s:9:\"NOT EMPTY\";s:9:\"operation\";s:2:\"!=\";}}}s:32:\"wc-payments-qualitative-feedback\";O:8:\"stdClass\":8:{s:4:\"slug\";s:32:\"wc-payments-qualitative-feedback\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:55:\"WooCommerce Payments setup - let us know what you think\";s:7:\"content\";s:146:\"Congrats on enabling WooCommerce Payments for your store. Please share your feedback in this 2 minute survey to help us improve the setup process.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:35:\"qualitative-feedback-from-new-users\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:14:\"Share feedback\";}}s:3:\"url\";s:39:\"https://automattic.survey.fm/wc-pay-new\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:21:13\";}i:1;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:45:\"woocommerce_task_list_tracked_completed_tasks\";s:9:\"operation\";s:8:\"contains\";s:5:\"value\";s:20:\"woocommerce-payments\";s:7:\"default\";a:0:{}}}}s:29:\"share-your-feedback-on-paypal\";O:8:\"stdClass\":8:{s:4:\"slug\";s:29:\"share-your-feedback-on-paypal\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:29:\"Share your feedback on PayPal\";s:7:\"content\";s:127:\"Share your feedback in this 2 minute survey about how we can make the process of accepting payments more useful for your store.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:14:\"share-feedback\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:14:\"Share feedback\";}}s:3:\"url\";s:43:\"http://automattic.survey.fm/paypal-feedback\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:21:50\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:26:\"woocommerce-gateway-stripe\";}}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:43:\"woocommerce-gateway-paypal-express-checkout\";}}}}s:31:\"google_listings_and_ads_install\";O:8:\"stdClass\":8:{s:4:\"slug\";s:31:\"google_listings_and_ads_install\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:35:\"Drive traffic and sales with Google\";s:7:\"content\";s:123:\"Reach online shoppers to drive traffic and sales for your store by showcasing products across Google, for free or with ads.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:11:\"get-started\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:11:\"Get started\";}}s:3:\"url\";s:122:\"https://woocommerce.com/products/google-listings-and-ads?utm_source=inbox_note&utm_medium=product&utm_campaign=get-started\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-06-09 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:23:\"google_listings_and_ads\";}}}}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:11:\"order_count\";s:9:\"operation\";s:1:\">\";s:5:\"value\";i:10;}}}s:39:\"wc-subscriptions-security-update-3-0-15\";O:8:\"stdClass\":8:{s:4:\"slug\";s:39:\"wc-subscriptions-security-update-3-0-15\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:42:\"WooCommerce Subscriptions security update!\";s:7:\"content\";s:738:\"We recently released an important security update to WooCommerce Subscriptions. To ensure your site’s data is protected, please upgrade <strong>WooCommerce Subscriptions to version 3.0.15</strong> or later.<br/><br/>Click the button below to view and update to the latest Subscriptions version, or log in to <a href=\"https://woocommerce.com/my-dashboard\">WooCommerce.com Dashboard</a> and navigate to your <strong>Downloads</strong> page.<br/><br/>We recommend always using the latest version of WooCommerce Subscriptions, and other software running on your site, to ensure maximum security.<br/><br/>If you have any questions we are here to help — just <a href=\"https://woocommerce.com/my-account/create-a-ticket/\">open a ticket</a>.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:30:\"update-wc-subscriptions-3-0-15\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:19:\"View latest version\";}}s:3:\"url\";s:30:\"&page=wc-addons&section=helper\";s:18:\"url_is_admin_query\";b:1;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:30:32\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:25:\"woocommerce-subscriptions\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:6:\"3.0.15\";}}}s:29:\"woocommerce-core-update-5-4-0\";O:8:\"stdClass\":8:{s:4:\"slug\";s:29:\"woocommerce-core-update-5-4-0\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:31:\"Update to WooCommerce 5.4.1 now\";s:7:\"content\";s:140:\"WooCommerce 5.4.1 addresses a checkout issue discovered in WooCommerce 5.4. We recommend upgrading to WooCommerce 5.4.1 as soon as possible.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:20:\"update-wc-core-5-4-0\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:25:\"How to update WooCommerce\";}}s:3:\"url\";s:64:\"https://docs.woocommerce.com/document/how-to-update-woocommerce/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:31:08\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.4.0\";}}}s:19:\"wcpay-promo-2020-11\";O:8:\"stdClass\":8:{s:4:\"slug\";s:19:\"wcpay-promo-2020-11\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:19:\"wcpay-promo-2020-11\";s:7:\"content\";s:19:\"wcpay-promo-2020-11\";}}s:7:\"actions\";a:0:{}s:5:\"rules\";a:0:{}}s:19:\"wcpay-promo-2020-12\";O:8:\"stdClass\":8:{s:4:\"slug\";s:19:\"wcpay-promo-2020-12\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:19:\"wcpay-promo-2020-12\";s:7:\"content\";s:19:\"wcpay-promo-2020-12\";}}s:7:\"actions\";a:0:{}s:5:\"rules\";a:0:{}}s:34:\"ppxo-pps-upgrade-paypal-payments-1\";O:8:\"stdClass\":8:{s:4:\"slug\";s:34:\"ppxo-pps-upgrade-paypal-payments-1\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:47:\"Get the latest PayPal extension for WooCommerce\";s:7:\"content\";s:442:\"Heads up! There’s a new PayPal on the block!<br/><br/>Now is a great time to upgrade to our latest <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">PayPal extension</a> to continue to receive support and updates with PayPal.<br/><br/>Get access to a full suite of PayPal payment methods, extensive currency and country coverage, and pay later options with the all-new PayPal extension for WooCommerce.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:34:\"ppxo-pps-install-paypal-payments-1\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:18:\"View upgrade guide\";}}s:3:\"url\";s:96:\"https://docs.woocommerce.com/document/woocommerce-paypal-payments/paypal-payments-upgrade-guide/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:5:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:33:53\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"5.5\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:27:\"woocommerce-paypal-payments\";}}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:43:\"woocommerce-gateway-paypal-express-checkout\";}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:1:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:7:\"enabled\";}}}s:11:\"option_name\";s:27:\"woocommerce_paypal_settings\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:3:\"yes\";s:7:\"default\";b:0;}}}i:4;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:36:\"woocommerce_inbox_variant_assignment\";s:5:\"value\";i:7;s:7:\"default\";i:1;s:9:\"operation\";s:1:\"<\";}}}s:34:\"ppxo-pps-upgrade-paypal-payments-2\";O:8:\"stdClass\":8:{s:4:\"slug\";s:34:\"ppxo-pps-upgrade-paypal-payments-2\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:31:\"Upgrade your PayPal experience!\";s:7:\"content\";s:358:\"Get access to a full suite of PayPal payment methods, extensive currency and country coverage, offer subscription and recurring payments, and the new PayPal pay later options.<br /><br />Start using our <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">latest PayPal today</a> to continue to receive support and updates.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:34:\"ppxo-pps-install-paypal-payments-2\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:18:\"View upgrade guide\";}}s:3:\"url\";s:96:\"https://docs.woocommerce.com/document/woocommerce-paypal-payments/paypal-payments-upgrade-guide/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:5:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:34:30\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"5.5\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:27:\"woocommerce-paypal-payments\";}}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:43:\"woocommerce-gateway-paypal-express-checkout\";}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:1:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:7:\"enabled\";}}}s:11:\"option_name\";s:27:\"woocommerce_paypal_settings\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:3:\"yes\";s:7:\"default\";b:0;}}}i:4;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:36:\"woocommerce_inbox_variant_assignment\";s:5:\"value\";i:6;s:7:\"default\";i:1;s:9:\"operation\";s:1:\">\";}}}s:46:\"woocommerce-core-sqli-july-2021-need-to-update\";O:8:\"stdClass\":8:{s:4:\"slug\";s:46:\"woocommerce-core-sqli-july-2021-need-to-update\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:56:\"Action required: Critical vulnerabilities in WooCommerce\";s:7:\"content\";s:574:\"In response to a critical vulnerability identified on July 13, 2021, we are working with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br />Our investigation into this vulnerability is ongoing, but <strong>we wanted to let you know now about the importance of updating immediately</strong>.<br /><br />For more information on which actions you should take, as well as answers to FAQs, please urgently review our blog post detailing this issue.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:137:\"https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";s:0:\"\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:59:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:35:06\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.3.6\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.4.8\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.5.9\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.6.6\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.7.2\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.8.2\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.9.4\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.0.2\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.0.3\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.1.2\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.1.3\";}i:12;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.2.3\";}i:13;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.2.4\";}i:14;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.3.4\";}i:15;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.3.5\";}i:16;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.4.2\";}i:17;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.4.3\";}i:18;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.5.3\";}i:19;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.5.4\";}i:20;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.6.3\";}i:21;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.6.4\";}i:22;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.7.2\";}i:23;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.7.3\";}i:24;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.8.1\";}i:25;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.8.2\";}i:26;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.9.3\";}i:27;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.9.4\";}i:28;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.0.1\";}i:29;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.0.2\";}i:30;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.1.1\";}i:31;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.1.2\";}i:32;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.2.3\";}i:33;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.2.4\";}i:34;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.3.1\";}i:35;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.3.2\";}i:36;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.4.2\";}i:37;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.4.3\";}i:38;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:5:\"5.5.1\";}i:39;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:6:\"3.5.10\";}i:40;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.6.7\";}i:41;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.7.3\";}i:42;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.8.3\";}i:43;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.9.5\";}i:44;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.0.4\";}i:45;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.1.4\";}i:46;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.2.5\";}i:47;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.3.6\";}i:48;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.4.4\";}i:49;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.5.5\";}i:50;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.6.5\";}i:51;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.7.4\";}i:52;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.8.3\";}i:53;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.9.5\";}i:54;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.0.3\";}i:55;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.1.3\";}i:56;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.2.5\";}i:57;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.3.3\";}i:58;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.4.4\";}}}s:48:\"woocommerce-blocks-sqli-july-2021-need-to-update\";O:8:\"stdClass\":8:{s:4:\"slug\";s:48:\"woocommerce-blocks-sqli-july-2021-need-to-update\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:63:\"Action required: Critical vulnerabilities in WooCommerce Blocks\";s:7:\"content\";s:570:\"In response to a critical vulnerability identified on July 13, 2021, we are working with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br/><br/>Our investigation into this vulnerability is ongoing, but <strong>we wanted to let you know now about the importance of updating immediately</strong>.<br/><br/>For more information on which actions you should take, as well as answers to FAQs, please urgently review our blog post detailing this issue.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:137:\"https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";b:0;s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:32:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:35:42\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:6:\"2.5.16\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"2.6.2\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"2.7.2\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"2.8.1\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"2.9.1\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.0.1\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.1.1\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.2.1\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.3.1\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.4.1\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.5.1\";}i:12;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.6.1\";}i:13;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.7.2\";}i:14;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.8.1\";}i:15;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.9.1\";}i:16;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.0.1\";}i:17;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.1.1\";}i:18;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.2.1\";}i:19;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.3.1\";}i:20;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.4.3\";}i:21;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.5.3\";}i:22;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.6.1\";}i:23;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.7.1\";}i:24;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.8.1\";}i:25;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.9.2\";}i:26;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.0.1\";}i:27;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.1.1\";}i:28;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.2.1\";}i:29;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.3.2\";}i:30;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.4.1\";}i:31;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:5:\"5.5.1\";}}}s:45:\"woocommerce-core-sqli-july-2021-store-patched\";O:8:\"stdClass\":8:{s:4:\"slug\";s:45:\"woocommerce-core-sqli-july-2021-store-patched\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:55:\"Solved: Critical vulnerabilities patched in WooCommerce\";s:7:\"content\";s:433:\"In response to a critical vulnerability identified on July 13, 2021, we worked with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br/><br/><strong>Your store has been updated to the latest secure version(s)</strong>. For more information and answers to FAQs, please review our blog post detailing this issue.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:137:\"https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";b:0;s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:36:18\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:46:\"woocommerce-core-sqli-july-2021-need-to-update\";s:6:\"status\";s:7:\"pending\";s:9:\"operation\";s:1:\"=\";}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:48:\"woocommerce-blocks-sqli-july-2021-need-to-update\";s:6:\"status\";s:7:\"pending\";s:9:\"operation\";s:1:\"=\";}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:23:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.3.6\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.4.8\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.5.9\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.6.6\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.7.2\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.8.2\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.9.4\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.0.2\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.1.2\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.2.3\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.3.4\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.4.2\";}i:12;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.5.3\";}i:13;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.6.3\";}i:14;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.7.2\";}i:15;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.8.1\";}i:16;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.9.3\";}i:17;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.0.1\";}i:18;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.1.1\";}i:19;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.2.3\";}i:20;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.3.1\";}i:21;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.4.2\";}i:22;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:5:\"5.5.1\";}}}}}s:47:\"woocommerce-blocks-sqli-july-2021-store-patched\";O:8:\"stdClass\":8:{s:4:\"slug\";s:47:\"woocommerce-blocks-sqli-july-2021-store-patched\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:62:\"Solved: Critical vulnerabilities patched in WooCommerce Blocks\";s:7:\"content\";s:433:\"In response to a critical vulnerability identified on July 13, 2021, we worked with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br/><br/><strong>Your store has been updated to the latest secure version(s)</strong>. For more information and answers to FAQs, please review our blog post detailing this issue.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:137:\"https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";b:0;s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:36:54\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:46:\"woocommerce-core-sqli-july-2021-need-to-update\";s:6:\"status\";s:7:\"pending\";s:9:\"operation\";s:1:\"=\";}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:48:\"woocommerce-blocks-sqli-july-2021-need-to-update\";s:6:\"status\";s:7:\"pending\";s:9:\"operation\";s:1:\"=\";}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:31:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:6:\"2.5.16\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"2.6.2\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"2.7.2\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"2.8.1\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"2.9.1\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.0.1\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.1.1\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.2.1\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.3.1\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.4.1\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.5.1\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.6.1\";}i:12;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.7.2\";}i:13;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.8.1\";}i:14;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.9.1\";}i:15;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.0.1\";}i:16;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.1.1\";}i:17;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.2.1\";}i:18;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.3.1\";}i:19;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.4.3\";}i:20;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.5.3\";}i:21;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.6.1\";}i:22;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.7.1\";}i:23;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.8.1\";}i:24;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.9.2\";}i:25;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.0.1\";}i:26;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.1.1\";}i:27;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.2.1\";}i:28;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.3.2\";}i:29;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.4.1\";}i:30;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:5:\"5.5.1\";}}}}}s:19:\"habit-moment-survey\";O:8:\"stdClass\":8:{s:4:\"slug\";s:19:\"habit-moment-survey\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:63:\"We’re all ears! Share your experience so far with WooCommerce\";s:7:\"content\";s:136:\"We’d love your input to shape the future of WooCommerce together. Feel free to share any feedback, ideas or suggestions that you have.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:14:\"share-feedback\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:14:\"Share feedback\";}}s:3:\"url\";s:45:\"https://automattic.survey.fm/store-management\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:37:30\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\">\";s:4:\"days\";i:3;}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:11:\"order_count\";s:9:\"operation\";s:1:\">\";s:5:\"value\";i:30;}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:13:\"product_count\";s:9:\"operation\";s:1:\">\";s:5:\"value\";i:0;}}}s:26:\"ecomm-wc-navigation-survey\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"ecomm-wc-navigation-survey\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:55:\"We’d like your feedback on the WooCommerce navigation\";s:7:\"content\";s:134:\"We’re making improvements to the WooCommerce navigation and would love your feedback. Share your experience in this 2 minute survey.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:32:\"share-navigation-survey-feedback\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:14:\"Share feedback\";}}s:3:\"url\";s:63:\"https://automattic.survey.fm/feedback-on-woocommerce-navigation\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:38:07\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:12:\"is_ecommerce\";s:5:\"value\";b:1;}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\">\";s:4:\"days\";i:90;}}}s:42:\"woocommerce-core-paypal-march-2022-updated\";O:8:\"stdClass\":8:{s:4:\"slug\";s:42:\"woocommerce-core-paypal-march-2022-updated\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:35:\"Security auto-update of WooCommerce\";s:7:\"content\";s:391:\"<strong>Your store has been updated to the latest secure version of WooCommerce</strong>. We worked with WordPress to deploy PayPal Standard security updates for stores running WooCommerce (version 3.5 to 6.3). It’s recommended to disable PayPal Standard, and use <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">PayPal Payments</a> to accept PayPal.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:88:\"https://developer.woocommerce.com/2022/03/10/woocommerce-3-5-10-6-3-1-security-releases/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:42:\"woocommerce-core-paypal-march-2022-dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";s:0:\"\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-03-10 18:44:57\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:28:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:6:\"3.5.10\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.6.7\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.7.3\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.8.3\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.9.5\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.0.4\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.1.4\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.2.5\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.3.6\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.4.4\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.5.5\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.6.5\";}i:12;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.7.4\";}i:13;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.8.3\";}i:14;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.9.5\";}i:15;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.0.3\";}i:16;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.1.3\";}i:17;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.2.5\";}i:18;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.3.3\";}i:19;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.4.4\";}i:20;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.5.4\";}i:21;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.6.2\";}i:22;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.7.2\";}i:23;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.8.1\";}i:24;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.9.1\";}i:25;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.0.1\";}i:26;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.1.2\";}i:27;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.2.2\";}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:3:\"5.5\";}i:1;a:2:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"5.5\";}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:27:\"woocommerce_paypal_settings\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:3:\"yes\";s:7:\"default\";b:0;s:12:\"transformers\";a:1:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:7:\"enabled\";}}}}}}}}}s:47:\"woocommerce-core-paypal-march-2022-updated-nopp\";O:8:\"stdClass\":8:{s:4:\"slug\";s:47:\"woocommerce-core-paypal-march-2022-updated-nopp\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:35:\"Security auto-update of WooCommerce\";s:7:\"content\";s:237:\"<strong>Your store has been updated to the latest secure version of WooCommerce</strong>. We worked with WordPress to deploy security updates related to PayPal Standard payment gateway for stores running WooCommerce (version 3.5 to 6.3).\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:88:\"https://developer.woocommerce.com/2022/03/10/woocommerce-3-5-10-6-3-1-security-releases/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";s:0:\"\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-03-10 18:45:04\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:28:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:6:\"3.5.10\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.6.7\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.7.3\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.8.3\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.9.5\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.0.4\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.1.4\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.2.5\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.3.6\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.4.4\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.5.5\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.6.5\";}i:12;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.7.4\";}i:13;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.8.3\";}i:14;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.9.5\";}i:15;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.0.3\";}i:16;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.1.3\";}i:17;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.2.5\";}i:18;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.3.3\";}i:19;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.4.4\";}i:20;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.5.4\";}i:21;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.6.2\";}i:22;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.7.2\";}i:23;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.8.1\";}i:24;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.9.1\";}i:25;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.0.1\";}i:26;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.1.2\";}i:27;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.2.2\";}}}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:42:\"woocommerce-core-paypal-march-2022-updated\";s:6:\"status\";s:7:\"pending\";s:9:\"operation\";s:1:\"=\";}}}s:24:\"pinterest_03_2022_update\";O:8:\"stdClass\":8:{s:4:\"slug\";s:24:\"pinterest_03_2022_update\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:53:\"Your Pinterest for WooCommerce plugin is out of date!\";s:7:\"content\";s:262:\"Update to the latest version of Pinterest for WooCommerce to continue using this plugin and keep your store connected with Pinterest. To update, visit <strong>Plugins &gt; Installed Plugins</strong>, and click on “update now” under Pinterest for WooCommerce.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:24:\"pinterest_03_2022_update\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:19:\"Update Instructions\";}}s:3:\"url\";s:148:\"https://woocommerce.com/document/pinterest-for-woocommerce/?utm_source=inbox_note&utm_medium=product&utm_campaign=pinterest_03_2022_update#section-3\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-03-23 00:00:39\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:25:\"pinterest-for-woocommerce\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:5:\"1.0.8\";}}}s:33:\"store_setup_survey_survey_q2_2022\";O:8:\"stdClass\":8:{s:4:\"slug\";s:33:\"store_setup_survey_survey_q2_2022\";s:4:\"type\";s:6:\"survey\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:30:\"How is your store setup going?\";s:7:\"content\";s:232:\"Our goal is to make sure you have all the right tools to start setting up your store in the smoothest way possible.\r\nWe’d love to know if we hit our mark and how we can improve. To collect your thoughts, we made a 2-minute survey.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:53:\"store_setup_survey_survey_q2_2022_share_your_thoughts\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:24:\"Tell us how it’s going\";}}s:3:\"url\";s:52:\"https://automattic.survey.fm/store-setup-survey-2022\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-05-09 08:42:10\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\">\";s:4:\"days\";i:7;}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:9;}}}s:17:\"wc-admin-wisepad3\";O:8:\"stdClass\":8:{s:4:\"slug\";s:17:\"wc-admin-wisepad3\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:74:\"Take your business on the go in Canada with WooCommerce In-Person Payments\";s:7:\"content\";s:275:\"Quickly create new orders, accept payment in person for orders placed online, and automatically sync your inventory – no matter where your business takes you. With WooCommerce In-Person Payments and the WisePad 3 card reader, you can bring the power of your store anywhere.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:17:\"wc-admin-wisepad3\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:24:\"Grow my business offline\";}}s:3:\"url\";s:126:\"https://woocommerce.com/products/wisepad3-card-reader/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wisepad3\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-06-15 10:00:28\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CA\";}}}s:47:\"woocommerce-payments-august-2022-need-to-update\";O:8:\"stdClass\":8:{s:4:\"slug\";s:47:\"woocommerce-payments-august-2022-need-to-update\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:51:\"Action required: Please update WooCommerce Payments\";s:7:\"content\";s:213:\"An updated secure version of WooCommerce Payments is available – please ensure that you’re using the latest patch version. For more information on what action you need to take, please review the article below.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:13:\"Find out more\";}}s:3:\"url\";s:96:\"https://developer.woocommerce.com/2022/08/09/woocommerce-payments-3-9-4-4-5-1-security-releases/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";s:0:\"\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:9:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-08-09 14:44:17\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"3.9\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:5:\"4.5.1\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.9.4\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.0.3\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.1.1\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.2.2\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.3.1\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.4.1\";}}}s:46:\"woocommerce-payments-august-2022-store-patched\";O:8:\"stdClass\":8:{s:4:\"slug\";s:46:\"woocommerce-payments-august-2022-store-patched\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:51:\"WooCommerce Payments has been automatically updated\";s:7:\"content\";s:265:\"You’re now running the latest secure version of WooCommerce Payments. We’ve worked with the WordPress Plugins team to deploy a security update to stores running WooCommerce Payments (version 3.9 to 4.5). For further information, please review the article below.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:13:\"Find out more\";}}s:3:\"url\";s:96:\"https://developer.woocommerce.com/2022/08/09/woocommerce-payments-3-9-4-4-5-1-security-releases/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";s:0:\"\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-08-09 14:41:13\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:47:\"woocommerce-payments-august-2022-need-to-update\";s:6:\"status\";s:7:\"pending\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:7:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.9.4\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.0.3\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.1.1\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.2.2\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.3.1\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.4.1\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.5.1\";}}}}}s:25:\"shipping_category_q4_2022\";O:8:\"stdClass\":8:{s:4:\"slug\";s:25:\"shipping_category_q4_2022\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:21:\"Save time on shipping\";s:7:\"content\";s:197:\"Is your store all set to ship? Save valuable time (and money!) by automating your fulfillment process for the busiest shopping season. Explore our range of trusted shipping partners to get started.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:31:\"shipping_category_q4_2022_click\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:20:\"Automate my shipping\";}}s:3:\"url\";s:229:\"https://woocommerce.com/product-category/woocommerce-extensions/shipping-delivery-and-fulfillment/?categoryIds=28685&collections=product&page=1&utm_source=inbox_note&utm_medium=product&utm_campaign=shipping_category_q4_2022_click\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-10-10 14:01:31\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2022-11-10 23:59:00\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:23:\"shipstation-integration\";}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:12:\"packlink-pro\";}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:6:\"shippo\";}}}}}}}}}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(643, 'wc_remote_inbox_notifications_stored_state', 'O:8:\"stdClass\":2:{s:22:\"there_were_no_products\";b:1;s:22:\"there_are_now_products\";b:1;}', 'no'),
(647, '_transient_timeout_woocommerce_admin_remote_free_extensions_specs', '1666280694', 'no'),
(648, '_transient_woocommerce_admin_remote_free_extensions_specs', 'a:1:{s:5:\"en_US\";a:4:{s:10:\"obw/basics\";O:8:\"stdClass\":3:{s:3:\"key\";s:10:\"obw/basics\";s:5:\"title\";s:14:\"Get the basics\";s:7:\"plugins\";a:4:{i:0;O:8:\"stdClass\":4:{s:11:\"description\";s:163:\"Accept credit cards and other popular payment methods with <a href=\"https://woocommerce.com/products/woocommerce-payments\" target=\"_blank\">WooCommerce Payments</a>\";s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:19:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PR\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IE\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NZ\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PL\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PT\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CH\";s:9:\"operation\";s:1:\"=\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HK\";s:9:\"operation\";s:1:\"=\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SG\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:20:\"woocommerce-payments\";}i:1;O:8:\"stdClass\":4:{s:11:\"description\";s:119:\"Print shipping labels with <a href=\"https://woocommerce.com/products/shipping\" target=\"_blank\">WooCommerce Shipping</a>\";s:10:\"is_visible\";a:3:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:13:\"product_types\";}}i:1;O:8:\"stdClass\":1:{s:3:\"use\";s:5:\"count\";}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:5:\"value\";i:1;s:7:\"default\";a:0:{}s:9:\"operation\";s:2:\"!=\";}}i:1;a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:1:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:15:\"product_types.0\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:5:\"value\";s:9:\"downloads\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:2:\"!=\";}}}}}s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:29:\"woocommerce-services:shipping\";}i:2;O:8:\"stdClass\":4:{s:11:\"description\";s:111:\"Get automated sales tax with <a href=\"https://woocommerce.com/products/tax\" target=\"_blank\">WooCommerce Tax</a>\";s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:11:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GR\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PT\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DK\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SE\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}}}}s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:24:\"woocommerce-services:tax\";}i:3;O:8:\"stdClass\":4:{s:11:\"description\";s:110:\"Enhance speed and security with <a href=\"https://woocommerce.com/products/jetpack\" target=\"_blank\">Jetpack</a>\";s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:7:\"jetpack\";}}}}}s:14:\"is_built_by_wc\";b:0;s:3:\"key\";s:7:\"jetpack\";}}}s:8:\"obw/grow\";O:8:\"stdClass\":3:{s:3:\"key\";s:8:\"obw/grow\";s:5:\"title\";s:15:\"Grow your store\";s:7:\"plugins\";a:3:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:8:\"MailPoet\";s:11:\"description\";s:115:\"Level up your email marketing with <a href=\"https://woocommerce.com/products/mailpoet\" target=\"_blank\">MailPoet</a>\";s:10:\"manage_url\";s:35:\"admin.php?page=mailpoet-newsletters\";s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:8:\"mailpoet\";}}}}}s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:8:\"mailpoet\";}i:1;O:8:\"stdClass\":7:{s:4:\"name\";s:21:\"Google Listings & Ads\";s:11:\"description\";s:127:\"Drive sales with <a href=\"https://woocommerce.com/products/google-listings-and-ads\" target=\"_blank\">Google Listings and Ads</a>\";s:9:\"image_url\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/google-listings-and-ads.png\";s:10:\"manage_url\";s:46:\"admin.php?page=wc-admin&path=%2Fgoogle%2Fstart\";s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:23:\"google-listings-and-ads\";}}}}}s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:23:\"google-listings-and-ads\";}i:2;O:8:\"stdClass\":6:{s:4:\"name\";s:24:\"Facebook for WooCommerce\";s:11:\"description\";s:141:\"List products and create ads on Facebook and Instagram with <a href=\"https://woocommerce.com/products/facebook/\">Facebook for WooCommerce</a>\";s:9:\"image_url\";s:96:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/facebook.png\";s:10:\"manage_url\";s:26:\"admin.php?page=wc-facebook\";s:14:\"is_built_by_wc\";b:0;s:3:\"key\";s:24:\"facebook-for-woocommerce\";}}}s:15:\"task-list/reach\";O:8:\"stdClass\":3:{s:3:\"key\";s:15:\"task-list/reach\";s:5:\"title\";s:22:\"Reach out to customers\";s:7:\"plugins\";a:3:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:8:\"MailPoet\";s:11:\"description\";s:111:\"Create and send purchase follow-up emails, newsletters, and promotional campaigns straight from your dashboard.\";s:9:\"image_url\";s:96:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/mailpoet.png\";s:10:\"manage_url\";s:35:\"admin.php?page=mailpoet-newsletters\";s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:12:\"mailpoet:alt\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:9:\"Mailchimp\";s:11:\"description\";s:78:\"Send targeted campaigns, recover abandoned carts and much more with Mailchimp.\";s:9:\"image_url\";s:113:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/mailchimp-for-woocommerce.png\";s:10:\"manage_url\";s:36:\"admin.php?page=mailchimp-woocommerce\";s:14:\"is_built_by_wc\";b:0;s:3:\"key\";s:25:\"mailchimp-for-woocommerce\";}i:2;O:8:\"stdClass\":6:{s:4:\"name\";s:29:\"Creative Mail for WooCommerce\";s:11:\"description\";s:99:\"Create on-brand store campaigns, fast email promotions and customer retargeting with Creative Mail.\";s:9:\"image_url\";s:121:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/creative-mail-by-constant-contact.png\";s:10:\"manage_url\";s:27:\"admin.php?page=creativemail\";s:14:\"is_built_by_wc\";b:0;s:3:\"key\";s:33:\"creative-mail-by-constant-contact\";}}}s:14:\"task-list/grow\";O:8:\"stdClass\":3:{s:3:\"key\";s:14:\"task-list/grow\";s:5:\"title\";s:15:\"Grow your store\";s:7:\"plugins\";a:4:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:21:\"Google Listings & Ads\";s:11:\"description\";s:134:\"Reach more shoppers and drive sales for your store. Integrate with Google to list your products for free and launch paid ad campaigns.\";s:9:\"image_url\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/google-listings-and-ads.png\";s:10:\"manage_url\";s:46:\"admin.php?page=wc-admin&path=%2Fgoogle%2Fstart\";s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:27:\"google-listings-and-ads:alt\";}i:1;O:8:\"stdClass\":7:{s:4:\"name\";s:22:\"TikTok for WooCommerce\";s:9:\"image_url\";s:94:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/tiktok.svg\";s:11:\"description\";s:118:\"Grow your online sales by promoting your products on TikTok to over one billion monthly active users around the world.\";s:10:\"manage_url\";s:21:\"admin.php?page=tiktok\";s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:40:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"MX\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CZ\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DK\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FI\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GR\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HU\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IE\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PL\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PT\";s:9:\"operation\";s:1:\"=\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"RO\";s:9:\"operation\";s:1:\"=\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:19;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SE\";s:9:\"operation\";s:1:\"=\";}i:20;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:21;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CH\";s:9:\"operation\";s:1:\"=\";}i:22;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NO\";s:9:\"operation\";s:1:\"=\";}i:23;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:24;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NZ\";s:9:\"operation\";s:1:\"=\";}i:25;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SG\";s:9:\"operation\";s:1:\"=\";}i:26;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"MY\";s:9:\"operation\";s:1:\"=\";}i:27;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PH\";s:9:\"operation\";s:1:\"=\";}i:28;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ID\";s:9:\"operation\";s:1:\"=\";}i:29;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"VN\";s:9:\"operation\";s:1:\"=\";}i:30;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"TH\";s:9:\"operation\";s:1:\"=\";}i:31;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"KR\";s:9:\"operation\";s:1:\"=\";}i:32;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IL\";s:9:\"operation\";s:1:\"=\";}i:33;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AE\";s:9:\"operation\";s:1:\"=\";}i:34;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"RU\";s:9:\"operation\";s:1:\"=\";}i:35;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"UA\";s:9:\"operation\";s:1:\"=\";}i:36;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"TR\";s:9:\"operation\";s:1:\"=\";}i:37;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SA\";s:9:\"operation\";s:1:\"=\";}i:38;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BR\";s:9:\"operation\";s:1:\"=\";}i:39;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"JP\";s:9:\"operation\";s:1:\"=\";}}}}s:14:\"is_built_by_wc\";b:0;s:3:\"key\";s:19:\"tiktok-for-business\";}i:2;O:8:\"stdClass\":6:{s:4:\"name\";s:24:\"Facebook for WooCommerce\";s:11:\"description\";s:55:\"List products and create ads on Facebook and Instagram.\";s:9:\"image_url\";s:96:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/facebook.png\";s:10:\"manage_url\";s:26:\"admin.php?page=wc-facebook\";s:14:\"is_built_by_wc\";b:0;s:3:\"key\";s:28:\"facebook-for-woocommerce:alt\";}i:3;O:8:\"stdClass\":6:{s:4:\"name\";s:25:\"Pinterest for WooCommerce\";s:11:\"description\";s:159:\"Get your products in front of Pinterest users searching for ideas and things to buy. Get started with Pinterest and make your entire product catalog browsable.\";s:9:\"image_url\";s:97:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/pinterest.png\";s:10:\"manage_url\";s:51:\"admin.php?page=wc-admin&path=%2Fpinterest%2Flanding\";s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:25:\"pinterest-for-woocommerce\";}}}}}', 'no'),
(651, 'wc_blocks_db_schema_version', '260', 'yes'),
(654, '_transient_woocommerce_reports-transient-version', '1665676068', 'yes'),
(655, '_transient_timeout_orders-all-statuses', '1666281027', 'no'),
(656, '_transient_orders-all-statuses', 'a:2:{s:7:\"version\";s:10:\"1665676068\";s:5:\"value\";a:0:{}}', 'no'),
(659, '_transient_timeout_woocommerce_admin_payment_method_promotion_specs', '1666280698', 'no'),
(661, '_transient_woocommerce_admin_payment_method_promotion_specs', 'a:1:{s:5:\"en_US\";a:1:{s:20:\"woocommerce_payments\";O:8:\"stdClass\":8:{s:2:\"id\";s:20:\"woocommerce_payments\";s:5:\"title\";s:20:\"WooCommerce Payments\";s:7:\"content\";s:369:\"Payments made simple, with no monthly fees – designed exclusively for WooCommerce stores. Accept credit cards, debit cards, and other popular payment methods.<br/><br/>By clicking “Install”, you agree to the <a href=\"https://wordpress.com/tos/\" target=\"_blank\">Terms of Service</a> and <a href=\"https://automattic.com/privacy/\" target=\"_blank\">Privacy policy</a>.\";s:5:\"image\";s:101:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/wcpay.svg\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:19:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PR\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IE\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NZ\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PL\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PT\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CH\";s:9:\"operation\";s:1:\"=\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HK\";s:9:\"operation\";s:1:\"=\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SG\";s:9:\"operation\";s:1:\"=\";}}}}s:9:\"sub_title\";s:865:\"<img class=\"wcpay-visa-icon wcpay-icon\" src=\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/icons/visa.svg\" alt=\"Visa\"><img class=\"wcpay-mastercard-icon wcpay-icon\" src=\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/icons/mastercard.svg\" alt=\"Mastercard\"><img class=\"wcpay-amex-icon wcpay-icon\" src=\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/icons/amex.svg\" alt=\"Amex\"><img class=\"wcpay-googlepay-icon wcpay-icon\" src=\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/icons/googlepay.svg\" alt=\"Googlepay\"><img class=\"wcpay-applepay-icon wcpay-icon\" src=\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/icons/applepay.svg\" alt=\"Applepay\">\";s:15:\"additional_info\";O:8:\"stdClass\":1:{s:18:\"experiment_version\";s:2:\"v2\";}}}}', 'no'),
(663, 'woocommerce_task_list_tracked_completed_tasks', 'a:5:{i:0;s:8:\"purchase\";i:1;s:13:\"store_details\";i:2;s:8:\"shipping\";i:3;s:8:\"products\";i:4;s:8:\"payments\";}', 'yes'),
(671, 'action_scheduler_migration_status', 'complete', 'yes'),
(673, 'woocommerce_onboarding_profile', 'a:11:{s:18:\"is_agree_marketing\";b:0;s:11:\"store_email\";s:17:\"k269692@gmail.com\";s:20:\"is_store_country_set\";b:1;s:8:\"industry\";a:1:{i:0;a:2:{s:4:\"slug\";s:5:\"other\";s:6:\"detail\";s:9:\"Motocross\";}}s:13:\"product_types\";a:1:{i:0;s:8:\"physical\";}s:13:\"product_count\";s:6:\"11-100\";s:14:\"selling_venues\";s:2:\"no\";s:12:\"setup_client\";b:0;s:19:\"business_extensions\";a:0:{}s:5:\"theme\";s:18:\"endurocrossmotomix\";s:9:\"completed\";b:1;}', 'yes'),
(674, 'wc_has_tracked_default_theme', '1', 'yes'),
(675, 'woocommerce_task_list_dismissed_tasks', 'a:0:{}', 'yes'),
(688, '_transient_shipping-transient-version', '1665676227', 'yes'),
(689, 'woocommerce_admin_created_default_shipping_zones', 'yes', 'yes'),
(690, '_transient_woocommerce_shipping_task_zone_count_transient', '1', 'yes'),
(691, 'woocommerce_task_list_prompt_shown', '1', 'yes'),
(692, '_transient_timeout_wc_report_orders_stats_c45151fadab2f77d4b0ec2148d34b14f', '1666281030', 'no'),
(693, '_transient_wc_report_orders_stats_c45151fadab2f77d4b0ec2148d34b14f', 'a:2:{s:7:\"version\";s:10:\"1665676068\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-41\";s:10:\"date_start\";s:19:\"2022-10-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-13 00:00:00\";s:8:\"date_end\";s:19:\"2022-10-13 17:50:28\";s:12:\"date_end_gmt\";s:19:\"2022-10-13 17:50:28\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(694, '_transient_timeout_wc_report_orders_stats_a25e71f9de740ba2bd1468e76c1b8806', '1666281030', 'no'),
(695, '_transient_wc_report_orders_stats_a25e71f9de740ba2bd1468e76c1b8806', 'a:2:{s:7:\"version\";s:10:\"1665676068\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-41\";s:10:\"date_start\";s:19:\"2022-10-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-13 00:00:00\";s:8:\"date_end\";s:19:\"2022-10-13 17:50:28\";s:12:\"date_end_gmt\";s:19:\"2022-10-13 17:50:28\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(696, '_transient_timeout_wc_report_orders_stats_72444a207051b1d7b1d088e3fb1186d1', '1666281031', 'no'),
(697, '_transient_wc_report_orders_stats_72444a207051b1d7b1d088e3fb1186d1', 'a:2:{s:7:\"version\";s:10:\"1665676068\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-41\";s:10:\"date_start\";s:19:\"2022-10-12 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-12 00:00:00\";s:8:\"date_end\";s:19:\"2022-10-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-12 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(698, '_transient_timeout_wc_report_orders_stats_e9dc251f5612b8d8b772402d74abfe58', '1666281031', 'no'),
(699, '_transient_wc_report_orders_stats_e9dc251f5612b8d8b772402d74abfe58', 'a:2:{s:7:\"version\";s:10:\"1665676068\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-41\";s:10:\"date_start\";s:19:\"2022-10-12 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-12 00:00:00\";s:8:\"date_end\";s:19:\"2022-10-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-12 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(701, 'woocommerce_marketplace_suggestions', 'a:2:{s:11:\"suggestions\";a:28:{i:0;a:4:{s:4:\"slug\";s:28:\"product-edit-meta-tab-header\";s:7:\"context\";s:28:\"product-edit-meta-tab-header\";s:5:\"title\";s:22:\"Recommended extensions\";s:13:\"allow-dismiss\";b:0;}i:1;a:6:{s:4:\"slug\";s:39:\"product-edit-meta-tab-footer-browse-all\";s:7:\"context\";s:28:\"product-edit-meta-tab-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:2;a:9:{s:4:\"slug\";s:46:\"product-edit-mailchimp-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-mailchimp\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:116:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/mailchimp-for-memberships.svg\";s:5:\"title\";s:25:\"Mailchimp for Memberships\";s:4:\"copy\";s:79:\"Completely automate your email lists by syncing membership changes to Mailchimp\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/mailchimp-woocommerce-memberships/\";}i:3;a:9:{s:4:\"slug\";s:19:\"product-edit-addons\";s:7:\"product\";s:26:\"woocommerce-product-addons\";s:14:\"show-if-active\";a:2:{i:0;s:25:\"woocommerce-subscriptions\";i:1;s:20:\"woocommerce-bookings\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-add-ons.svg\";s:5:\"title\";s:15:\"Product Add-Ons\";s:4:\"copy\";s:93:\"Offer add-ons like gift wrapping, special messages or other special options for your products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-add-ons/\";}i:4;a:9:{s:4:\"slug\";s:46:\"product-edit-woocommerce-subscriptions-gifting\";s:7:\"product\";s:33:\"woocommerce-subscriptions-gifting\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:116:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/gifting-for-subscriptions.svg\";s:5:\"title\";s:25:\"Gifting for Subscriptions\";s:4:\"copy\";s:70:\"Let customers buy subscriptions for others - they\'re the ultimate gift\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/woocommerce-subscriptions-gifting/\";}i:5;a:9:{s:4:\"slug\";s:42:\"product-edit-teams-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-for-teams\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:112:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/teams-for-memberships.svg\";s:5:\"title\";s:21:\"Teams for Memberships\";s:4:\"copy\";s:123:\"Adds B2B functionality to WooCommerce Memberships, allowing sites to sell team, group, corporate, or family member accounts\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/teams-woocommerce-memberships/\";}i:6;a:8:{s:4:\"slug\";s:29:\"product-edit-variation-images\";s:7:\"product\";s:39:\"woocommerce-additional-variation-images\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:118:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/additional-variation-images.svg\";s:5:\"title\";s:27:\"Additional Variation Images\";s:4:\"copy\";s:72:\"Showcase your products in the best light with a image for each variation\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:73:\"https://woocommerce.com/products/woocommerce-additional-variation-images/\";}i:7;a:9:{s:4:\"slug\";s:47:\"product-edit-woocommerce-subscription-downloads\";s:7:\"product\";s:34:\"woocommerce-subscription-downloads\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:113:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/subscription-downloads.svg\";s:5:\"title\";s:22:\"Subscription Downloads\";s:4:\"copy\";s:57:\"Give customers special downloads with their subscriptions\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:68:\"https://woocommerce.com/products/woocommerce-subscription-downloads/\";}i:8;a:8:{s:4:\"slug\";s:31:\"product-edit-min-max-quantities\";s:7:\"product\";s:30:\"woocommerce-min-max-quantities\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/min-max-quantities.svg\";s:5:\"title\";s:18:\"Min/Max Quantities\";s:4:\"copy\";s:81:\"Specify minimum and maximum allowed product quantities for orders to be completed\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/min-max-quantities/\";}i:9;a:8:{s:4:\"slug\";s:28:\"product-edit-name-your-price\";s:7:\"product\";s:27:\"woocommerce-name-your-price\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/name-your-price.svg\";s:5:\"title\";s:15:\"Name Your Price\";s:4:\"copy\";s:70:\"Let customers pay what they want - useful for donations, tips and more\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/name-your-price/\";}i:10;a:8:{s:4:\"slug\";s:42:\"product-edit-woocommerce-one-page-checkout\";s:7:\"product\";s:29:\"woocommerce-one-page-checkout\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/one-page-checkout.svg\";s:5:\"title\";s:17:\"One Page Checkout\";s:4:\"copy\";s:92:\"Don\'t make customers click around - let them choose products, checkout & pay all on one page\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/woocommerce-one-page-checkout/\";}i:11;a:9:{s:4:\"slug\";s:24:\"product-edit-automatewoo\";s:7:\"product\";s:11:\"automatewoo\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:104:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/subscriptions.svg\";s:5:\"title\";s:23:\"Automate your marketing\";s:4:\"copy\";s:89:\"Win customers and keep them coming back with a nearly endless range of powerful workflows\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:45:\"https://woocommerce.com/products/automatewoo/\";}i:12;a:4:{s:4:\"slug\";s:19:\"orders-empty-header\";s:7:\"context\";s:24:\"orders-list-empty-header\";s:5:\"title\";s:20:\"Tools for your store\";s:13:\"allow-dismiss\";b:0;}i:13;a:6:{s:4:\"slug\";s:30:\"orders-empty-footer-browse-all\";s:7:\"context\";s:24:\"orders-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:14;a:8:{s:4:\"slug\";s:19:\"orders-empty-wc-pay\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-payments\";s:4:\"icon\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/woocommerce-payments.svg\";s:5:\"title\";s:20:\"WooCommerce Payments\";s:4:\"copy\";s:125:\"Securely accept payments and manage transactions directly from your WooCommerce dashboard – no setup costs or monthly fees.\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-payments/\";}i:15;a:8:{s:4:\"slug\";s:19:\"orders-empty-zapier\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:18:\"woocommerce-zapier\";s:4:\"icon\";s:97:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/zapier.svg\";s:5:\"title\";s:6:\"Zapier\";s:4:\"copy\";s:88:\"Save time and increase productivity by connecting your store to more than 1000+ services\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/woocommerce-zapier/\";}i:16;a:8:{s:4:\"slug\";s:30:\"orders-empty-shipment-tracking\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:29:\"woocommerce-shipment-tracking\";s:4:\"icon\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/shipment-tracking.svg\";s:5:\"title\";s:17:\"Shipment Tracking\";s:4:\"copy\";s:86:\"Let customers know when their orders will arrive by adding shipment tracking to emails\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:51:\"https://woocommerce.com/products/shipment-tracking/\";}i:17;a:8:{s:4:\"slug\";s:32:\"orders-empty-table-rate-shipping\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:31:\"woocommerce-table-rate-shipping\";s:4:\"icon\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/table-rate-shipping.svg\";s:5:\"title\";s:19:\"Table Rate Shipping\";s:4:\"copy\";s:122:\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/table-rate-shipping/\";}i:18;a:8:{s:4:\"slug\";s:40:\"orders-empty-shipping-carrier-extensions\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:4:\"icon\";s:118:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/shipping-carrier-extensions.svg\";s:5:\"title\";s:27:\"Shipping Carrier Extensions\";s:4:\"copy\";s:116:\"Show live rates from FedEx, UPS, USPS and more directly on your store - never under or overcharge for shipping again\";s:11:\"button-text\";s:13:\"Find Carriers\";s:8:\"promoted\";s:26:\"category-shipping-carriers\";s:3:\"url\";s:99:\"https://woocommerce.com/product-category/woocommerce-extensions/shipping-methods/shipping-carriers/\";}i:19;a:8:{s:4:\"slug\";s:32:\"orders-empty-google-product-feed\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-product-feeds\";s:4:\"icon\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/google-product-feed.svg\";s:5:\"title\";s:19:\"Google Product Feed\";s:4:\"copy\";s:76:\"Increase sales by letting customers find you when they\'re shopping on Google\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/google-product-feed/\";}i:20;a:4:{s:4:\"slug\";s:35:\"products-empty-header-product-types\";s:7:\"context\";s:26:\"products-list-empty-header\";s:5:\"title\";s:23:\"Other types of products\";s:13:\"allow-dismiss\";b:0;}i:21;a:6:{s:4:\"slug\";s:32:\"products-empty-footer-browse-all\";s:7:\"context\";s:26:\"products-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:22;a:8:{s:4:\"slug\";s:30:\"products-empty-product-vendors\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-vendors\";s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-vendors.svg\";s:5:\"title\";s:15:\"Product Vendors\";s:4:\"copy\";s:47:\"Turn your store into a multi-vendor marketplace\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-vendors/\";}i:23;a:8:{s:4:\"slug\";s:26:\"products-empty-memberships\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:23:\"woocommerce-memberships\";s:4:\"icon\";s:102:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/memberships.svg\";s:5:\"title\";s:11:\"Memberships\";s:4:\"copy\";s:76:\"Give members access to restricted content or products, for a fee or for free\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:57:\"https://woocommerce.com/products/woocommerce-memberships/\";}i:24;a:9:{s:4:\"slug\";s:35:\"products-empty-woocommerce-deposits\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-deposits\";s:14:\"show-if-active\";a:1:{i:0;s:20:\"woocommerce-bookings\";}s:4:\"icon\";s:99:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/deposits.svg\";s:5:\"title\";s:8:\"Deposits\";s:4:\"copy\";s:75:\"Make it easier for customers to pay by offering a deposit or a payment plan\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-deposits/\";}i:25;a:8:{s:4:\"slug\";s:40:\"products-empty-woocommerce-subscriptions\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-subscriptions\";s:4:\"icon\";s:104:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/subscriptions.svg\";s:5:\"title\";s:13:\"Subscriptions\";s:4:\"copy\";s:97:\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:59:\"https://woocommerce.com/products/woocommerce-subscriptions/\";}i:26;a:8:{s:4:\"slug\";s:35:\"products-empty-woocommerce-bookings\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-bookings\";s:4:\"icon\";s:99:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/bookings.svg\";s:5:\"title\";s:8:\"Bookings\";s:4:\"copy\";s:99:\"Allow customers to book appointments, make reservations or rent equipment without leaving your site\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-bookings/\";}i:27;a:8:{s:4:\"slug\";s:30:\"products-empty-product-bundles\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-bundles\";s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-bundles.svg\";s:5:\"title\";s:15:\"Product Bundles\";s:4:\"copy\";s:49:\"Offer customizable bundles and assembled products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-bundles/\";}}s:7:\"updated\";i:1665676271;}', 'no'),
(707, '_transient_timeout_wc_report_orders_stats_d925fa9ad24838b471a9a469e73ec8bf', '1666281320', 'no'),
(708, '_transient_wc_report_orders_stats_d925fa9ad24838b471a9a469e73ec8bf', 'a:2:{s:7:\"version\";s:10:\"1665676068\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-41\";s:10:\"date_start\";s:19:\"2022-10-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-13 00:00:00\";s:8:\"date_end\";s:19:\"2022-10-13 17:55:17\";s:12:\"date_end_gmt\";s:19:\"2022-10-13 17:55:17\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(709, '_transient_timeout_wc_report_orders_stats_8d556de55d577bf8fb01cf201c556bd7', '1666281320', 'no'),
(710, '_transient_wc_report_orders_stats_8d556de55d577bf8fb01cf201c556bd7', 'a:2:{s:7:\"version\";s:10:\"1665676068\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-41\";s:10:\"date_start\";s:19:\"2022-10-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-13 00:00:00\";s:8:\"date_end\";s:19:\"2022-10-13 17:55:17\";s:12:\"date_end_gmt\";s:19:\"2022-10-13 17:55:17\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(752, 'woocommerce_tracker_last_send', '1666089757', 'yes'),
(761, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.0.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.0.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.0.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.0.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.0.3\";s:7:\"version\";s:5:\"6.0.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1666259396;s:15:\"version_checked\";s:5:\"6.0.3\";s:12:\"translations\";a:0:{}}', 'no'),
(763, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:17:\"k269692@gmail.com\";s:7:\"version\";s:5:\"6.0.3\";s:9:\"timestamp\";i:1666089772;}', 'no'),
(767, 'woocommerce_tracker_ua', 'a:1:{i:0;s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36\";}', 'no'),
(776, '_transient_timeout_wc_shipping_method_count_legacy', '1668685317', 'no'),
(777, '_transient_wc_shipping_method_count_legacy', 'a:2:{s:7:\"version\";s:10:\"1665676227\";s:5:\"value\";i:1;}', 'no'),
(790, '_transient_timeout_wc_report_orders_stats_88b65567213b4a340146ab996421ef80', '1666698139', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(791, '_transient_wc_report_orders_stats_88b65567213b4a340146ab996421ef80', 'a:2:{s:7:\"version\";s:10:\"1665676068\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-42\";s:10:\"date_start\";s:19:\"2022-10-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-18 00:00:00\";s:8:\"date_end\";s:19:\"2022-10-18 13:42:17\";s:12:\"date_end_gmt\";s:19:\"2022-10-18 13:42:17\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(792, '_transient_timeout_wc_report_orders_stats_ccf13dda32ecc33df9639228ccfb874f', '1666698139', 'no'),
(793, '_transient_wc_report_orders_stats_ccf13dda32ecc33df9639228ccfb874f', 'a:2:{s:7:\"version\";s:10:\"1665676068\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-42\";s:10:\"date_start\";s:19:\"2022-10-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-18 00:00:00\";s:8:\"date_end\";s:19:\"2022-10-18 13:42:17\";s:12:\"date_end_gmt\";s:19:\"2022-10-18 13:42:17\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(794, '_transient_timeout_wc_report_orders_stats_7bcaba1e33fe82e07b4669e521438f6a', '1666698139', 'no'),
(795, '_transient_wc_report_orders_stats_7bcaba1e33fe82e07b4669e521438f6a', 'a:2:{s:7:\"version\";s:10:\"1665676068\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-42\";s:10:\"date_start\";s:19:\"2022-10-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-17 00:00:00\";s:8:\"date_end\";s:19:\"2022-10-17 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-17 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(796, '_transient_timeout_wc_report_orders_stats_300d3f4c40dfa820818b1e3ca65f7e28', '1666698139', 'no'),
(797, '_transient_wc_report_orders_stats_300d3f4c40dfa820818b1e3ca65f7e28', 'a:2:{s:7:\"version\";s:10:\"1665676068\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-42\";s:10:\"date_start\";s:19:\"2022-10-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-17 00:00:00\";s:8:\"date_end\";s:19:\"2022-10-17 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-10-17 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(814, '_transient_product_query-transient-version', '1666120474', 'yes'),
(828, 'product_cat_children', 'a:0:{}', 'yes'),
(830, 'woocommerce_ces_tracks_queue', 'a:0:{}', 'yes'),
(831, '_transient_product-transient-version', '1666112789', 'yes'),
(832, 'woocommerce_clear_ces_tracks_queue_for_page', '', 'yes'),
(847, '_transient_timeout_wc_report_orders_stats_303f548f8ee7b6beffaf1fb5c19d840f', '1666712434', 'no'),
(848, '_transient_wc_report_orders_stats_303f548f8ee7b6beffaf1fb5c19d840f', 'a:2:{s:7:\"version\";s:10:\"1665676068\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-42\";s:10:\"date_start\";s:19:\"2022-10-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-18 00:00:00\";s:8:\"date_end\";s:19:\"2022-10-18 17:40:32\";s:12:\"date_end_gmt\";s:19:\"2022-10-18 17:40:32\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(849, '_transient_timeout_wc_report_orders_stats_74f167fb02d09d01c8d3b0243fc68bb3', '1666712434', 'no'),
(850, '_transient_wc_report_orders_stats_74f167fb02d09d01c8d3b0243fc68bb3', 'a:2:{s:7:\"version\";s:10:\"1665676068\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-42\";s:10:\"date_start\";s:19:\"2022-10-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-18 00:00:00\";s:8:\"date_end\";s:19:\"2022-10-18 17:40:32\";s:12:\"date_end_gmt\";s:19:\"2022-10-18 17:40:32\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(852, '_transient_timeout_wc_marketing_recommended_plugins', '1666366877', 'no'),
(853, '_transient_wc_marketing_recommended_plugins', 'a:22:{i:0;a:9:{s:5:\"title\";s:24:\"Facebook for WooCommerce\";s:11:\"description\";s:60:\"List your products and create ads on Facebook and Instagram.\";s:3:\"url\";s:107:\"https://woocommerce.com/products/facebook/?utm_source=marketingtab&utm_medium=product&utm_campaign=wcaddons\";s:4:\"icon\";s:98:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketing-tab-rest-api/icons/facebook.svg\";s:7:\"product\";s:8:\"facebook\";s:6:\"plugin\";s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";s:10:\"categories\";a:1:{i:0;s:9:\"marketing\";}s:13:\"subcategories\";a:1:{i:0;a:2:{s:4:\"slug\";s:14:\"sales-channels\";s:4:\"name\";s:14:\"Sales channels\";}}s:4:\"tags\";a:1:{i:0;a:2:{s:4:\"slug\";s:20:\"built-by-woocommerce\";s:4:\"name\";s:20:\"Built by WooCommerce\";}}}i:1;a:9:{s:5:\"title\";s:23:\"Google Listings and Ads\";s:11:\"description\";s:121:\"Get in front of shoppers and drive traffic so you can grow your business with Smart Shopping Campaigns and free listings.\";s:3:\"url\";s:122:\"https://woocommerce.com/products/google-listings-and-ads/?utm_source=marketingtab&utm_medium=product&utm_campaign=wcaddons\";s:4:\"icon\";s:96:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketing-tab-rest-api/icons/google.svg\";s:7:\"product\";s:23:\"google-listings-and-ads\";s:6:\"plugin\";s:51:\"google-listings-and-ads/google-listings-and-ads.php\";s:10:\"categories\";a:1:{i:0;s:9:\"marketing\";}s:13:\"subcategories\";a:1:{i:0;a:2:{s:4:\"slug\";s:14:\"sales-channels\";s:4:\"name\";s:14:\"Sales channels\";}}s:4:\"tags\";a:1:{i:0;a:2:{s:4:\"slug\";s:20:\"built-by-woocommerce\";s:4:\"name\";s:20:\"Built by WooCommerce\";}}}i:2;a:9:{s:5:\"title\";s:25:\"Pinterest for WooCommerce\";s:11:\"description\";s:165:\"Grow your business on Pinterest! Use this official plugin to allow shoppers to Pin products while browsing your store, track conversions, and advertise on Pinterest.\";s:3:\"url\";s:124:\"https://woocommerce.com/products/pinterest-for-woocommerce/?utm_source=marketingtab&utm_medium=product&utm_campaign=wcaddons\";s:4:\"icon\";s:99:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketing-tab-rest-api/icons/pinterest.svg\";s:7:\"product\";s:25:\"pinterest-for-woocommerce\";s:6:\"plugin\";s:55:\"pinterest-for-woocommerce/pinterest-for-woocommerce.php\";s:10:\"categories\";a:1:{i:0;s:9:\"marketing\";}s:13:\"subcategories\";a:1:{i:0;a:2:{s:4:\"slug\";s:14:\"sales-channels\";s:4:\"name\";s:14:\"Sales channels\";}}s:4:\"tags\";a:1:{i:0;a:2:{s:4:\"slug\";s:20:\"built-by-woocommerce\";s:4:\"name\";s:20:\"Built by WooCommerce\";}}}i:3;a:9:{s:5:\"title\";s:22:\"TikTok for WooCommerce\";s:11:\"description\";s:92:\"Create advertising campaigns and reach one billion global users with TikTok for WooCommerce.\";s:3:\"url\";s:121:\"https://woocommerce.com/products/tiktok-for-woocommerce/?utm_source=marketingtab&utm_medium=product&utm_campaign=wcaddons\";s:4:\"icon\";s:96:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketing-tab-rest-api/icons/tiktok.jpg\";s:7:\"product\";s:19:\"tiktok-for-business\";s:6:\"plugin\";s:46:\"tiktok-for-business/tiktok-for-woocommerce.php\";s:10:\"categories\";a:1:{i:0;s:9:\"marketing\";}s:13:\"subcategories\";a:1:{i:0;a:2:{s:4:\"slug\";s:14:\"sales-channels\";s:4:\"name\";s:14:\"Sales channels\";}}s:4:\"tags\";a:0:{}}i:4;a:9:{s:5:\"title\";s:50:\"Amazon, eBay & Walmart Integration for WooCommerce\";s:11:\"description\";s:128:\"Get the official Amazon, eBay and Walmart extension and create, sync and manage multichannel listings directly from WooCommerce.\";s:3:\"url\";s:122:\"https://woocommerce.com/products/amazon-ebay-integration/?utm_source=marketingtab&utm_medium=product&utm_campaign=wcaddons\";s:4:\"icon\";s:101:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketing-tab-rest-api/icons/amazon-ebay.svg\";s:7:\"product\";s:23:\"amazon-ebay-integration\";s:6:\"plugin\";s:75:\"woocommerce-amazon-ebay-integration/woocommerce-amazon-ebay-integration.php\";s:10:\"categories\";a:1:{i:0;s:9:\"marketing\";}s:13:\"subcategories\";a:1:{i:0;a:2:{s:4:\"slug\";s:14:\"sales-channels\";s:4:\"name\";s:14:\"Sales channels\";}}s:4:\"tags\";a:0:{}}i:5;a:9:{s:5:\"title\";s:8:\"MailPoet\";s:11:\"description\";s:111:\"Create and send purchase follow-up emails, newsletters, and promotional campaigns straight from your dashboard.\";s:3:\"url\";s:107:\"https://woocommerce.com/products/mailpoet/?utm_source=marketingtab&utm_medium=product&utm_campaign=wcaddons\";s:4:\"icon\";s:98:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketing-tab-rest-api/icons/mailpoet.svg\";s:7:\"product\";s:8:\"mailpoet\";s:6:\"plugin\";s:21:\"mailpoet/mailpoet.php\";s:10:\"categories\";a:1:{i:0;s:9:\"marketing\";}s:13:\"subcategories\";a:1:{i:0;a:2:{s:4:\"slug\";s:5:\"email\";s:4:\"name\";s:5:\"Email\";}}s:4:\"tags\";a:1:{i:0;a:2:{s:4:\"slug\";s:20:\"built-by-woocommerce\";s:4:\"name\";s:20:\"Built by WooCommerce\";}}}i:6;a:9:{s:5:\"title\";s:25:\"Mailchimp for WooCommerce\";s:11:\"description\";s:73:\"Send targeted campaigns, recover abandoned carts and more with Mailchimp.\";s:3:\"url\";s:124:\"https://woocommerce.com/products/mailchimp-for-woocommerce/?utm_source=marketingtab&utm_medium=product&utm_campaign=wcaddons\";s:4:\"icon\";s:99:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketing-tab-rest-api/icons/mailchimp.svg\";s:7:\"product\";s:25:\"mailchimp-for-woocommerce\";s:6:\"plugin\";s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";s:10:\"categories\";a:1:{i:0;s:9:\"marketing\";}s:13:\"subcategories\";a:1:{i:0;a:2:{s:4:\"slug\";s:5:\"email\";s:4:\"name\";s:5:\"Email\";}}s:4:\"tags\";a:0:{}}i:7;a:9:{s:5:\"title\";s:29:\"Creative Mail for WooCommerce\";s:11:\"description\";s:99:\"Create on-brand store campaigns, fast email promotions and customer retargeting with Creative Mail.\";s:3:\"url\";s:128:\"https://woocommerce.com/products/creative-mail-for-woocommerce/?utm_source=marketingtab&utm_medium=product&utm_campaign=wcaddons\";s:4:\"icon\";s:123:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketing-tab-rest-api/icons/creative-mail-by-constant-contact.png\";s:7:\"product\";s:33:\"creative-mail-by-constant-contact\";s:6:\"plugin\";s:58:\"creative-mail-by-constant-contact/creative-mail-plugin.php\";s:10:\"categories\";a:1:{i:0;s:9:\"marketing\";}s:13:\"subcategories\";a:1:{i:0;a:2:{s:4:\"slug\";s:5:\"email\";s:4:\"name\";s:5:\"Email\";}}s:4:\"tags\";a:0:{}}i:8;a:9:{s:5:\"title\";s:11:\"AutomateWoo\";s:11:\"description\";s:86:\"Convert and retain customers with automated marketing that does the hard work for you.\";s:3:\"url\";s:110:\"https://woocommerce.com/products/automatewoo/?utm_source=marketingtab&utm_medium=product&utm_campaign=wcaddons\";s:4:\"icon\";s:101:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketing-tab-rest-api/icons/automatewoo.svg\";s:7:\"product\";s:11:\"automatewoo\";s:6:\"plugin\";s:27:\"automatewoo/automatewoo.php\";s:10:\"categories\";a:1:{i:0;s:9:\"marketing\";}s:13:\"subcategories\";a:1:{i:0;a:2:{s:4:\"slug\";s:11:\"automations\";s:4:\"name\";s:11:\"Automations\";}}s:4:\"tags\";a:1:{i:0;a:2:{s:4:\"slug\";s:20:\"built-by-woocommerce\";s:4:\"name\";s:20:\"Built by WooCommerce\";}}}i:9;a:9:{s:5:\"title\";s:26:\"AutomateWoo Refer a Friend\";s:11:\"description\";s:89:\"Boost your organic sales by adding a customer referral program to your WooCommerce store.\";s:3:\"url\";s:125:\"https://woocommerce.com/products/automatewoo-refer-a-friend/?utm_source=marketingtab&utm_medium=product&utm_campaign=wcaddons\";s:4:\"icon\";s:101:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketing-tab-rest-api/icons/automatewoo.svg\";s:7:\"product\";s:21:\"automatewoo-referrals\";s:6:\"plugin\";s:47:\"automatewoo-referrals/automatewoo-referrals.php\";s:10:\"categories\";a:1:{i:0;s:9:\"marketing\";}s:13:\"subcategories\";a:1:{i:0;a:2:{s:4:\"slug\";s:11:\"automations\";s:4:\"name\";s:11:\"Automations\";}}s:4:\"tags\";a:1:{i:0;a:2:{s:4:\"slug\";s:20:\"built-by-woocommerce\";s:4:\"name\";s:20:\"Built by WooCommerce\";}}}i:10;a:9:{s:5:\"title\";s:21:\"AutomateWoo Birthdays\";s:11:\"description\";s:119:\"Delight customers and boost organic sales with a special WooCommerce birthday email (and coupon!) on their special day.\";s:3:\"url\";s:120:\"https://woocommerce.com/products/automatewoo-birthdays/?utm_source=marketingtab&utm_medium=product&utm_campaign=wcaddons\";s:4:\"icon\";s:101:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketing-tab-rest-api/icons/automatewoo.svg\";s:7:\"product\";s:21:\"automatewoo-birthdays\";s:6:\"plugin\";s:47:\"automatewoo-birthdays/automatewoo-birthdays.php\";s:10:\"categories\";a:1:{i:0;s:9:\"marketing\";}s:13:\"subcategories\";a:1:{i:0;a:2:{s:4:\"slug\";s:11:\"automations\";s:4:\"name\";s:11:\"Automations\";}}s:4:\"tags\";a:1:{i:0;a:2:{s:4:\"slug\";s:20:\"built-by-woocommerce\";s:4:\"name\";s:20:\"Built by WooCommerce\";}}}i:11;a:9:{s:5:\"title\";s:18:\"Trustpilot Reviews\";s:11:\"description\";s:59:\"Collect and showcase verified reviews that consumers trust.\";s:3:\"url\";s:117:\"https://woocommerce.com/products/trustpilot-reviews/?utm_source=marketingtab&utm_medium=product&utm_campaign=wcaddons\";s:4:\"icon\";s:100:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketing-tab-rest-api/icons/trustpilot.png\";s:7:\"product\";s:18:\"trustpilot-reviews\";s:6:\"plugin\";s:36:\"trustpilot-reviews/wc_trustpilot.php\";s:10:\"categories\";a:1:{i:0;s:9:\"marketing\";}s:13:\"subcategories\";a:1:{i:0;a:2:{s:4:\"slug\";s:10:\"conversion\";s:4:\"name\";s:10:\"Conversion\";}}s:4:\"tags\";a:0:{}}i:12;a:9:{s:5:\"title\";s:21:\"Vimeo for WooCommerce\";s:11:\"description\";s:111:\"Turn your product images into stunning videos that engage and convert audiences - no video experience required.\";s:3:\"url\";s:104:\"https://woocommerce.com/products/vimeo/?utm_source=marketingtab&utm_medium=product&utm_campaign=wcaddons\";s:4:\"icon\";s:95:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketing-tab-rest-api/icons/vimeo.png\";s:7:\"product\";s:5:\"vimeo\";s:6:\"plugin\";s:14:\"vimeo/Core.php\";s:10:\"categories\";a:1:{i:0;s:9:\"marketing\";}s:13:\"subcategories\";a:1:{i:0;a:2:{s:4:\"slug\";s:10:\"conversion\";s:4:\"name\";s:10:\"Conversion\";}}s:4:\"tags\";a:0:{}}i:13;a:9:{s:5:\"title\";s:27:\"Jetpack CRM for WooCommerce\";s:11:\"description\";s:190:\"Harness data from WooCommerce to grow your business. Manage leads, customers, and segments, through automation, quotes, invoicing, billing, and email marketing. Power up your store with CRM.\";s:3:\"url\";s:110:\"https://woocommerce.com/products/jetpack-crm/?utm_source=marketingtab&utm_medium=product&utm_campaign=wcaddons\";s:4:\"icon\";s:101:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketing-tab-rest-api/icons/jetpack-crm.svg\";s:7:\"product\";s:11:\"zero-bs-crm\";s:6:\"plugin\";s:25:\"zero-bs-crm/ZeroBSCRM.php\";s:10:\"categories\";a:1:{i:0;s:9:\"marketing\";}s:13:\"subcategories\";a:1:{i:0;a:2:{s:4:\"slug\";s:3:\"crm\";s:4:\"name\";s:3:\"CRM\";}}s:4:\"tags\";a:0:{}}i:14;a:9:{s:5:\"title\";s:18:\"WooCommerce Zapier\";s:11:\"description\";s:100:\"Integrate your WooCommerce store with 5000+ cloud apps and services today. Trusted by 11,000+ users.\";s:3:\"url\";s:117:\"https://woocommerce.com/products/woocommerce-zapier/?utm_source=marketingtab&utm_medium=product&utm_campaign=wcaddons\";s:4:\"icon\";s:96:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketing-tab-rest-api/icons/zapier.png\";s:7:\"product\";s:18:\"woocommerce-zapier\";s:6:\"plugin\";s:41:\"woocommerce-zapier/woocommerce-zapier.php\";s:10:\"categories\";a:1:{i:0;s:9:\"marketing\";}s:13:\"subcategories\";a:1:{i:0;a:2:{s:4:\"slug\";s:3:\"crm\";s:4:\"name\";s:3:\"CRM\";}}s:4:\"tags\";a:0:{}}i:15;a:9:{s:5:\"title\";s:10:\"Salesforce\";s:11:\"description\";s:125:\"Sync your website\'s data like contacts, products, and orders over Salesforce CRM with Salesforce Integration for WooCommerce.\";s:3:\"url\";s:142:\"https://woocommerce.com/products/integration-with-salesforce-for-woocommerce/?utm_source=marketingtab&utm_medium=product&utm_campaign=wcaddons\";s:4:\"icon\";s:100:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketing-tab-rest-api/icons/salesforce.jpg\";s:7:\"product\";s:27:\"integration-with-salesforce\";s:6:\"plugin\";s:59:\"integration-with-salesforce/integration-with-salesforce.php\";s:10:\"categories\";a:1:{i:0;s:9:\"marketing\";}s:13:\"subcategories\";a:1:{i:0;a:2:{s:4:\"slug\";s:3:\"crm\";s:4:\"name\";s:3:\"CRM\";}}s:4:\"tags\";a:0:{}}i:16;a:9:{s:5:\"title\";s:20:\"Personalized Coupons\";s:11:\"description\";s:86:\"Generate dynamic personalized coupons for your customers that increase purchase rates.\";s:3:\"url\";s:110:\"https://woocommerce.com/products/automatewoo/?utm_source=marketingtab&utm_medium=product&utm_campaign=wcaddons\";s:4:\"icon\";s:122:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketing-tab-rest-api/icons/automatewoo-personalized-coupons.svg\";s:7:\"product\";s:11:\"automatewoo\";s:6:\"plugin\";s:27:\"automatewoo/automatewoo.php\";s:10:\"categories\";a:1:{i:0;s:7:\"coupons\";}s:13:\"subcategories\";a:0:{}s:4:\"tags\";a:0:{}}i:17;a:9:{s:5:\"title\";s:13:\"Smart Coupons\";s:11:\"description\";s:100:\"Powerful, \"all in one\" solution for gift certificates, store credits, discount coupons and vouchers.\";s:3:\"url\";s:112:\"https://woocommerce.com/products/smart-coupons/?utm_source=marketingtab&utm_medium=product&utm_campaign=wcaddons\";s:4:\"icon\";s:115:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketing-tab-rest-api/icons/woocommerce-smart-coupons.svg\";s:7:\"product\";s:25:\"woocommerce-smart-coupons\";s:6:\"plugin\";s:55:\"woocommerce-smart-coupons/woocommerce-smart-coupons.php\";s:10:\"categories\";a:1:{i:0;s:7:\"coupons\";}s:13:\"subcategories\";a:0:{}s:4:\"tags\";a:0:{}}i:18;a:9:{s:5:\"title\";s:11:\"URL Coupons\";s:11:\"description\";s:108:\"Create a unique URL that applies a discount and optionally adds one or more products to the customer\'s cart.\";s:3:\"url\";s:110:\"https://woocommerce.com/products/url-coupons/?utm_source=marketingtab&utm_medium=product&utm_campaign=wcaddons\";s:4:\"icon\";s:113:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketing-tab-rest-api/icons/woocommerce-url-coupons.svg\";s:7:\"product\";s:23:\"woocommerce-url-coupons\";s:6:\"plugin\";s:51:\"woocommerce-url-coupons/woocommerce-url-coupons.php\";s:10:\"categories\";a:1:{i:0;s:7:\"coupons\";}s:13:\"subcategories\";a:0:{}s:4:\"tags\";a:0:{}}i:19;a:9:{s:5:\"title\";s:24:\"WooCommerce Store Credit\";s:11:\"description\";s:77:\"Create \"store credit\" coupons for customers which are redeemable at checkout.\";s:3:\"url\";s:111:\"https://woocommerce.com/products/store-credit/?utm_source=marketingtab&utm_medium=product&utm_campaign=wcaddons\";s:4:\"icon\";s:114:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketing-tab-rest-api/icons/woocommerce-store-credit.svg\";s:7:\"product\";s:24:\"woocommerce-store-credit\";s:6:\"plugin\";s:53:\"woocommerce-store-credit/woocommerce-store-credit.php\";s:10:\"categories\";a:1:{i:0;s:7:\"coupons\";}s:13:\"subcategories\";a:0:{}s:4:\"tags\";a:0:{}}i:20;a:9:{s:5:\"title\";s:17:\"Free Gift Coupons\";s:11:\"description\";s:59:\"Give away a free item to any customer with the coupon code.\";s:3:\"url\";s:116:\"https://woocommerce.com/products/free-gift-coupons/?utm_source=marketingtab&utm_medium=product&utm_campaign=wcaddons\";s:4:\"icon\";s:119:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketing-tab-rest-api/icons/woocommerce-free-gift-coupons.svg\";s:7:\"product\";s:29:\"woocommerce-free-gift-coupons\";s:6:\"plugin\";s:63:\"woocommerce-free-gift-coupons/woocommerce-free-gift-coupons.php\";s:10:\"categories\";a:1:{i:0;s:7:\"coupons\";}s:13:\"subcategories\";a:0:{}s:4:\"tags\";a:0:{}}i:21;a:9:{s:5:\"title\";s:13:\"Group Coupons\";s:11:\"description\";s:137:\"Coupons for groups. Provides the option to have coupons that are restricted to group members or roles. Works with the free Groups plugin.\";s:3:\"url\";s:112:\"https://woocommerce.com/products/group-coupons/?utm_source=marketingtab&utm_medium=product&utm_campaign=wcaddons\";s:4:\"icon\";s:115:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketing-tab-rest-api/icons/woocommerce-group-coupons.svg\";s:7:\"product\";s:25:\"woocommerce-group-coupons\";s:6:\"plugin\";s:55:\"woocommerce-group-coupons/woocommerce-group-coupons.php\";s:10:\"categories\";a:1:{i:0;s:7:\"coupons\";}s:13:\"subcategories\";a:0:{}s:4:\"tags\";a:0:{}}}', 'no'),
(856, '_transient_timeout_wc_shipping_method_count', '1668699693', 'no'),
(857, '_transient_wc_shipping_method_count', 'a:2:{s:7:\"version\";s:10:\"1665676227\";s:5:\"value\";i:1;}', 'no'),
(871, '_transient_timeout_wc_report_orders_stats_57de8fbbf34022447308fe352f3cb597', '1666712744', 'no'),
(872, '_transient_wc_report_orders_stats_57de8fbbf34022447308fe352f3cb597', 'a:2:{s:7:\"version\";s:10:\"1665676068\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-42\";s:10:\"date_start\";s:19:\"2022-10-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-18 00:00:00\";s:8:\"date_end\";s:19:\"2022-10-18 17:45:42\";s:12:\"date_end_gmt\";s:19:\"2022-10-18 17:45:42\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(873, '_transient_timeout_wc_report_orders_stats_2d2f39b20195a77a7d0ab689b8c50a1d', '1666712744', 'no'),
(874, '_transient_wc_report_orders_stats_2d2f39b20195a77a7d0ab689b8c50a1d', 'a:2:{s:7:\"version\";s:10:\"1665676068\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-42\";s:10:\"date_start\";s:19:\"2022-10-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-18 00:00:00\";s:8:\"date_end\";s:19:\"2022-10-18 17:45:42\";s:12:\"date_end_gmt\";s:19:\"2022-10-18 17:45:42\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(875, '_transient_timeout_woocommerce_admin_payment_gateway_suggestions_specs', '1666712751', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(876, '_transient_woocommerce_admin_payment_gateway_suggestions_specs', 'a:1:{s:5:\"en_US\";a:20:{s:7:\"payfast\";O:8:\"stdClass\":9:{s:2:\"id\";s:7:\"payfast\";s:5:\"title\";s:7:\"PayFast\";s:7:\"content\";s:299:\"The PayFast extension for WooCommerce enables you to accept payments by Credit Card and EFT via one of South Africa’s most popular payment gateways. No setup fees or monthly subscription costs. Selecting this extension will configure your store to use South African rands as the selected currency.\";s:5:\"image\";s:80:\"https://woocommerce.com/wp-content/plugins/woocommerce/assets/images/payfast.png\";s:11:\"image_72x72\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/payfast.png\";s:7:\"plugins\";a:1:{i:0;s:27:\"woocommerce-payfast-gateway\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:3:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ZA\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GH\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NG\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:14:\"category_other\";a:3:{i:0;s:2:\"ZA\";i:1;s:2:\"GH\";i:2;s:2:\"NG\";}s:19:\"category_additional\";a:0:{}}s:6:\"stripe\";O:8:\"stdClass\":11:{s:2:\"id\";s:6:\"stripe\";s:5:\"title\";s:6:\"Stripe\";s:7:\"content\";s:112:\"Accept debit and credit cards in 135+ currencies, methods such as Alipay, and one-touch checkout with Apple Pay.\";s:5:\"image\";s:79:\"https://woocommerce.com/wp-content/plugins/woocommerce/assets/images/stripe.png\";s:11:\"image_72x72\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/stripe.png\";s:12:\"square_image\";s:102:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/stripe.svg\";s:7:\"plugins\";a:1:{i:0;s:26:\"woocommerce-gateway-stripe\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:40:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BG\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BR\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CY\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CZ\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DK\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"EE\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FI\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GR\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HK\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IN\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IE\";s:9:\"operation\";s:1:\"=\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"JP\";s:9:\"operation\";s:1:\"=\";}i:19;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"LV\";s:9:\"operation\";s:1:\"=\";}i:20;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"LT\";s:9:\"operation\";s:1:\"=\";}i:21;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"LU\";s:9:\"operation\";s:1:\"=\";}i:22;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"MY\";s:9:\"operation\";s:1:\"=\";}i:23;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"MT\";s:9:\"operation\";s:1:\"=\";}i:24;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"MX\";s:9:\"operation\";s:1:\"=\";}i:25;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:26;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NZ\";s:9:\"operation\";s:1:\"=\";}i:27;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NO\";s:9:\"operation\";s:1:\"=\";}i:28;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PL\";s:9:\"operation\";s:1:\"=\";}i:29;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PT\";s:9:\"operation\";s:1:\"=\";}i:30;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"RO\";s:9:\"operation\";s:1:\"=\";}i:31;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SG\";s:9:\"operation\";s:1:\"=\";}i:32;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SK\";s:9:\"operation\";s:1:\"=\";}i:33;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SI\";s:9:\"operation\";s:1:\"=\";}i:34;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:35;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SE\";s:9:\"operation\";s:1:\"=\";}i:36;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CH\";s:9:\"operation\";s:1:\"=\";}i:37;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:38;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:39;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PR\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:14:\"category_other\";a:40:{i:0;s:2:\"AU\";i:1;s:2:\"AT\";i:2;s:2:\"BE\";i:3;s:2:\"BG\";i:4;s:2:\"BR\";i:5;s:2:\"CA\";i:6;s:2:\"CY\";i:7;s:2:\"CZ\";i:8;s:2:\"DK\";i:9;s:2:\"EE\";i:10;s:2:\"FI\";i:11;s:2:\"FR\";i:12;s:2:\"DE\";i:13;s:2:\"GR\";i:14;s:2:\"HK\";i:15;s:2:\"IN\";i:16;s:2:\"IE\";i:17;s:2:\"IT\";i:18;s:2:\"JP\";i:19;s:2:\"LV\";i:20;s:2:\"LT\";i:21;s:2:\"LU\";i:22;s:2:\"MY\";i:23;s:2:\"MT\";i:24;s:2:\"MX\";i:25;s:2:\"NL\";i:26;s:2:\"NZ\";i:27;s:2:\"NO\";i:28;s:2:\"PL\";i:29;s:2:\"PT\";i:30;s:2:\"RO\";i:31;s:2:\"SG\";i:32;s:2:\"SK\";i:33;s:2:\"SI\";i:34;s:2:\"ES\";i:35;s:2:\"SE\";i:36;s:2:\"CH\";i:37;s:2:\"GB\";i:38;s:2:\"US\";i:39;s:2:\"PR\";}s:19:\"category_additional\";a:0:{}s:23:\"recommendation_priority\";i:3;}s:8:\"paystack\";O:8:\"stdClass\":10:{s:2:\"id\";s:8:\"paystack\";s:5:\"title\";s:8:\"Paystack\";s:7:\"content\";s:127:\"Paystack helps African merchants accept one-time and recurring payments online with a modern, safe, and secure payment gateway.\";s:5:\"image\";s:104:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/paystack.png\";s:12:\"square_image\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/paystack-square.png\";s:11:\"image_72x72\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/paystack.png\";s:7:\"plugins\";a:1:{i:0;s:12:\"woo-paystack\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:3:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ZA\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GH\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NG\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:14:\"category_other\";a:3:{i:0;s:2:\"ZA\";i:1;s:2:\"GH\";i:2;s:2:\"NG\";}s:19:\"category_additional\";a:0:{}}s:3:\"kco\";O:8:\"stdClass\":9:{s:2:\"id\";s:3:\"kco\";s:5:\"title\";s:15:\"Klarna Checkout\";s:7:\"content\";s:115:\"Choose the payment that you want, pay now, pay later or slice it. No credit card numbers, no passwords, no worries.\";s:5:\"image\";s:85:\"https://woocommerce.com/wp-content/plugins/woocommerce/assets/images/klarna-black.png\";s:11:\"image_72x72\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/klarna.png\";s:7:\"plugins\";a:1:{i:0;s:31:\"klarna-checkout-for-woocommerce\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:3:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SE\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FI\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NO\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:14:\"category_other\";a:3:{i:0;s:2:\"SE\";i:1;s:2:\"FI\";i:2;s:2:\"NO\";}s:19:\"category_additional\";a:0:{}}s:15:\"klarna_payments\";O:8:\"stdClass\":9:{s:2:\"id\";s:15:\"klarna_payments\";s:5:\"title\";s:15:\"Klarna Payments\";s:7:\"content\";s:115:\"Choose the payment that you want, pay now, pay later or slice it. No credit card numbers, no passwords, no worries.\";s:5:\"image\";s:85:\"https://woocommerce.com/wp-content/plugins/woocommerce/assets/images/klarna-black.png\";s:11:\"image_72x72\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/klarna.png\";s:7:\"plugins\";a:1:{i:0;s:31:\"klarna-payments-for-woocommerce\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:21:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DK\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CH\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SP\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PL\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FI\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NO\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SE\";s:9:\"operation\";s:1:\"=\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FI\";s:9:\"operation\";s:1:\"=\";}i:19;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NO\";s:9:\"operation\";s:1:\"=\";}i:20;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SE\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:14:\"category_other\";a:0:{}s:19:\"category_additional\";a:21:{i:0;s:2:\"US\";i:1;s:2:\"CA\";i:2;s:2:\"DK\";i:3;s:2:\"DE\";i:4;s:2:\"AT\";i:5;s:2:\"NL\";i:6;s:2:\"CH\";i:7;s:2:\"BE\";i:8;s:2:\"SP\";i:9;s:2:\"PL\";i:10;s:2:\"FR\";i:11;s:2:\"IT\";i:12;s:2:\"GB\";i:13;s:2:\"ES\";i:14;s:2:\"FI\";i:15;s:2:\"NO\";i:16;s:2:\"SE\";i:17;s:2:\"ES\";i:18;s:2:\"FI\";i:19;s:2:\"NO\";i:20;s:2:\"SE\";}}s:30:\"mollie_wc_gateway_banktransfer\";O:8:\"stdClass\":10:{s:2:\"id\";s:30:\"mollie_wc_gateway_banktransfer\";s:5:\"title\";s:6:\"Mollie\";s:7:\"content\";s:128:\"Effortless payments by Mollie: Offer global and local payment methods, get onboarded in minutes, and supported in your language.\";s:5:\"image\";s:102:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/mollie.svg\";s:11:\"image_72x72\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/mollie.png\";s:12:\"square_image\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/mollie-square.png\";s:7:\"plugins\";a:1:{i:0;s:31:\"mollie-payments-for-woocommerce\";}s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:11:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CH\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PL\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FI\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}}}}s:14:\"category_other\";a:11:{i:0;s:2:\"FR\";i:1;s:2:\"DE\";i:2;s:2:\"GB\";i:3;s:2:\"AT\";i:4;s:2:\"CH\";i:5;s:2:\"ES\";i:6;s:2:\"IT\";i:7;s:2:\"PL\";i:8;s:2:\"FI\";i:9;s:2:\"NL\";i:10;s:2:\"BE\";}s:19:\"category_additional\";a:0:{}}s:23:\"woo-mercado-pago-custom\";O:8:\"stdClass\":11:{s:2:\"id\";s:23:\"woo-mercado-pago-custom\";s:5:\"title\";s:34:\"Mercado Pago Checkout Pro & Custom\";s:7:\"content\";s:183:\"Accept credit and debit cards, offline (cash or bank transfer) and logged-in payments with money in Mercado Pago. Safe and secure payments with the leading payment processor in LATAM.\";s:5:\"image\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/mercadopago.png\";s:11:\"image_72x72\";s:113:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/mercadopago.png\";s:7:\"plugins\";a:1:{i:0;s:23:\"woocommerce-mercadopago\";}s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:7:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AR\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BR\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CL\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CO\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"MX\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PE\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"UY\";s:9:\"operation\";s:1:\"=\";}}}}s:23:\"recommendation_priority\";i:2;s:16:\"is_local_partner\";b:1;s:14:\"category_other\";a:7:{i:0;s:2:\"AR\";i:1;s:2:\"BR\";i:2;s:2:\"CL\";i:3;s:2:\"CO\";i:4;s:2:\"MX\";i:5;s:2:\"PE\";i:6;s:2:\"UY\";}s:19:\"category_additional\";a:0:{}}s:12:\"ppcp-gateway\";O:8:\"stdClass\":10:{s:2:\"id\";s:12:\"ppcp-gateway\";s:5:\"title\";s:15:\"PayPal Payments\";s:7:\"content\";s:78:\"Safe and secure payments using credit cards or your customer\'s PayPal account.\";s:5:\"image\";s:79:\"https://woocommerce.com/wp-content/plugins/woocommerce/assets/images/paypal.png\";s:11:\"image_72x72\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/paypal.png\";s:12:\"square_image\";s:102:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/paypal.svg\";s:7:\"plugins\";a:1:{i:0;s:27:\"woocommerce-paypal-payments\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IN\";s:9:\"operation\";s:2:\"!=\";}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:14:\"category_other\";a:51:{i:0;s:2:\"US\";i:1;s:2:\"CA\";i:2;s:2:\"AT\";i:3;s:2:\"BE\";i:4;s:2:\"BG\";i:5;s:2:\"HR\";i:6;s:2:\"CH\";i:7;s:2:\"CY\";i:8;s:2:\"CZ\";i:9;s:2:\"DK\";i:10;s:2:\"EE\";i:11;s:2:\"ES\";i:12;s:2:\"FI\";i:13;s:2:\"FR\";i:14;s:2:\"DE\";i:15;s:2:\"GB\";i:16;s:2:\"GR\";i:17;s:2:\"HU\";i:18;s:2:\"IE\";i:19;s:2:\"IT\";i:20;s:2:\"LV\";i:21;s:2:\"LT\";i:22;s:2:\"LU\";i:23;s:2:\"MT\";i:24;s:2:\"NL\";i:25;s:2:\"NO\";i:26;s:2:\"PL\";i:27;s:2:\"PT\";i:28;s:2:\"RO\";i:29;s:2:\"SK\";i:30;s:2:\"SL\";i:31;s:2:\"SE\";i:32;s:2:\"MX\";i:33;s:2:\"BR\";i:34;s:2:\"AR\";i:35;s:2:\"CL\";i:36;s:2:\"CO\";i:37;s:2:\"EC\";i:38;s:2:\"PE\";i:39;s:2:\"UY\";i:40;s:2:\"VE\";i:41;s:2:\"AU\";i:42;s:2:\"NZ\";i:43;s:2:\"HK\";i:44;s:2:\"JP\";i:45;s:2:\"SG\";i:46;s:2:\"CN\";i:47;s:2:\"ID\";i:48;s:2:\"ZA\";i:49;s:2:\"NG\";i:50;s:2:\"GH\";}s:19:\"category_additional\";a:52:{i:0;s:2:\"US\";i:1;s:2:\"CA\";i:2;s:2:\"AT\";i:3;s:2:\"BE\";i:4;s:2:\"BG\";i:5;s:2:\"HR\";i:6;s:2:\"CH\";i:7;s:2:\"CY\";i:8;s:2:\"CZ\";i:9;s:2:\"DK\";i:10;s:2:\"EE\";i:11;s:2:\"ES\";i:12;s:2:\"FI\";i:13;s:2:\"FR\";i:14;s:2:\"DE\";i:15;s:2:\"GB\";i:16;s:2:\"GR\";i:17;s:2:\"HU\";i:18;s:2:\"IE\";i:19;s:2:\"IT\";i:20;s:2:\"LV\";i:21;s:2:\"LT\";i:22;s:2:\"LU\";i:23;s:2:\"MT\";i:24;s:2:\"NL\";i:25;s:2:\"NO\";i:26;s:2:\"PL\";i:27;s:2:\"PT\";i:28;s:2:\"RO\";i:29;s:2:\"SK\";i:30;s:2:\"SL\";i:31;s:2:\"SE\";i:32;s:2:\"MX\";i:33;s:2:\"BR\";i:34;s:2:\"AR\";i:35;s:2:\"CL\";i:36;s:2:\"CO\";i:37;s:2:\"EC\";i:38;s:2:\"PE\";i:39;s:2:\"UY\";i:40;s:2:\"VE\";i:41;s:2:\"AU\";i:42;s:2:\"NZ\";i:43;s:2:\"HK\";i:44;s:2:\"JP\";i:45;s:2:\"SG\";i:46;s:2:\"CN\";i:47;s:2:\"ID\";i:48;s:2:\"IN\";i:49;s:2:\"ZA\";i:50;s:2:\"NG\";i:51;s:2:\"GH\";}}s:3:\"cod\";O:8:\"stdClass\":7:{s:2:\"id\";s:3:\"cod\";s:5:\"title\";s:16:\"Cash on delivery\";s:7:\"content\";s:36:\"Take payments in cash upon delivery.\";s:5:\"image\";s:99:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/cod.svg\";s:11:\"image_72x72\";s:105:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/cod.png\";s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":1:{s:4:\"type\";s:4:\"pass\";}}s:10:\"is_offline\";b:1;}s:4:\"bacs\";O:8:\"stdClass\":7:{s:2:\"id\";s:4:\"bacs\";s:5:\"title\";s:20:\"Direct bank transfer\";s:7:\"content\";s:32:\"Take payments via bank transfer.\";s:5:\"image\";s:100:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/bacs.svg\";s:11:\"image_72x72\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/bacs.png\";s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":1:{s:4:\"type\";s:4:\"pass\";}}s:10:\"is_offline\";b:1;}s:20:\"woocommerce_payments\";O:8:\"stdClass\":10:{s:2:\"id\";s:20:\"woocommerce_payments\";s:5:\"title\";s:20:\"WooCommerce Payments\";s:7:\"content\";s:93:\"Manage transactions without leaving your WordPress Dashboard. Only with WooCommerce Payments.\";s:5:\"image\";s:101:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/wcpay.svg\";s:12:\"square_image\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/woocommerce.svg\";s:11:\"image_72x72\";s:101:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/wcpay.svg\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}s:11:\"description\";s:234:\"With WooCommerce Payments, you can securely accept major cards, Apple Pay, and payments in over 100 currencies. Track cash flow and manage recurring revenue directly from your store’s dashboard - with no setup costs or monthly fees.\";s:10:\"is_visible\";a:4:{i:0;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:19:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PR\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IE\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NZ\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PL\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PT\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CH\";s:9:\"operation\";s:1:\"=\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HK\";s:9:\"operation\";s:1:\"=\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SG\";s:9:\"operation\";s:1:\"=\";}}}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:7:\"version\";s:10:\"5.10.0-dev\";s:8:\"operator\";s:1:\"<\";}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";O:8:\"stdClass\":2:{s:1:\"0\";O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:17:\"woocommerce-admin\";}}}}s:1:\"1\";O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:17:\"woocommerce-admin\";s:7:\"version\";s:9:\"2.9.0-dev\";s:8:\"operator\";s:1:\"<\";}}}}s:23:\"recommendation_priority\";i:1;}s:47:\"woocommerce_payments:without-in-person-payments\";O:8:\"stdClass\":10:{s:2:\"id\";s:47:\"woocommerce_payments:without-in-person-payments\";s:5:\"title\";s:20:\"WooCommerce Payments\";s:7:\"content\";s:93:\"Manage transactions without leaving your WordPress Dashboard. Only with WooCommerce Payments.\";s:5:\"image\";s:101:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/wcpay.svg\";s:11:\"image_72x72\";s:101:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/wcpay.svg\";s:12:\"square_image\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/woocommerce.svg\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}s:11:\"description\";s:234:\"With WooCommerce Payments, you can securely accept major cards, Apple Pay, and payments in over 100 currencies. Track cash flow and manage recurring revenue directly from your store’s dashboard - with no setup costs or monthly fees.\";s:10:\"is_visible\";a:3:{i:0;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:17:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PR\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IE\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NZ\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PL\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PT\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CH\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HK\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SG\";s:9:\"operation\";s:1:\"=\";}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";O:8:\"stdClass\":2:{s:1:\"0\";O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:17:\"woocommerce-admin\";s:7:\"version\";s:9:\"2.9.0-dev\";s:8:\"operator\";s:2:\">=\";}s:1:\"1\";O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:7:\"version\";s:10:\"5.10.0-dev\";s:8:\"operator\";s:2:\">=\";}}}}s:23:\"recommendation_priority\";i:1;}s:44:\"woocommerce_payments:with-in-person-payments\";O:8:\"stdClass\":10:{s:2:\"id\";s:44:\"woocommerce_payments:with-in-person-payments\";s:5:\"title\";s:20:\"WooCommerce Payments\";s:7:\"content\";s:93:\"Manage transactions without leaving your WordPress Dashboard. Only with WooCommerce Payments.\";s:5:\"image\";s:101:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/wcpay.svg\";s:11:\"image_72x72\";s:101:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/wcpay.svg\";s:12:\"square_image\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/woocommerce.svg\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}s:11:\"description\";s:221:\"With WooCommerce Payments, you can securely accept major cards, Apple Pay, and payments in over 100 currencies – with no setup costs or monthly fees – and you can now accept in-person payments with the Woo mobile app.\";s:10:\"is_visible\";a:3:{i:0;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";O:8:\"stdClass\":2:{s:1:\"0\";O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:17:\"woocommerce-admin\";s:7:\"version\";s:9:\"2.9.0-dev\";s:8:\"operator\";s:2:\">=\";}s:1:\"1\";O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:7:\"version\";s:10:\"5.10.0-dev\";s:8:\"operator\";s:2:\">=\";}}}}s:23:\"recommendation_priority\";i:1;}s:8:\"razorpay\";O:8:\"stdClass\":9:{s:2:\"id\";s:8:\"razorpay\";s:5:\"title\";s:8:\"Razorpay\";s:7:\"content\";s:133:\"The official Razorpay extension for WooCommerce allows you to accept credit cards, debit cards, netbanking, wallet, and UPI payments.\";s:5:\"image\";s:104:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/razorpay.svg\";s:11:\"image_72x72\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/razorpay.png\";s:7:\"plugins\";a:1:{i:0;s:12:\"woo-razorpay\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IN\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:14:\"category_other\";a:1:{i:0;s:2:\"IN\";}s:19:\"category_additional\";a:0:{}}s:7:\"payubiz\";O:8:\"stdClass\":9:{s:2:\"id\";s:7:\"payubiz\";s:5:\"title\";s:20:\"PayU for WooCommerce\";s:7:\"content\";s:169:\"Enable PayU’s exclusive plugin for WooCommerce to start accepting payments in 100+ payment methods available in India including credit cards, debit cards, UPI, & more!\";s:5:\"image\";s:100:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/payu.svg\";s:11:\"image_72x72\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/payu.png\";s:7:\"plugins\";a:1:{i:0;s:10:\"payu-india\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IN\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:14:\"category_other\";a:1:{i:0;s:2:\"IN\";}s:19:\"category_additional\";a:0:{}}s:4:\"eway\";O:8:\"stdClass\":10:{s:2:\"id\";s:4:\"eway\";s:5:\"title\";s:4:\"Eway\";s:7:\"content\";s:171:\"The Eway extension for WooCommerce allows you to take credit card payments directly on your store without redirecting your customers to a third party site to make payment.\";s:5:\"image\";s:100:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/eway.png\";s:11:\"image_72x72\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/eway.png\";s:12:\"square_image\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/eway-square.png\";s:7:\"plugins\";a:1:{i:0;s:24:\"woocommerce-gateway-eway\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NZ\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:14:\"category_other\";a:2:{i:0;s:2:\"AU\";i:1;s:2:\"NZ\";}s:19:\"category_additional\";a:0:{}}s:18:\"square_credit_card\";O:8:\"stdClass\":9:{s:2:\"id\";s:18:\"square_credit_card\";s:5:\"title\";s:6:\"Square\";s:7:\"content\";s:169:\"Securely accept credit and debit cards with one low rate, no surprise fees (custom rates available). Sell online and in store and track sales and inventory in one place.\";s:5:\"image\";s:85:\"https://woocommerce.com/wp-content/plugins/woocommerce/assets/images/square-black.png\";s:11:\"image_72x72\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/square.png\";s:7:\"plugins\";a:1:{i:0;s:18:\"woocommerce-square\";}s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";O:8:\"stdClass\":2:{s:1:\"0\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:1:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:8:\"contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:1:\"1\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:9:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"JP\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IE\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FI\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:1:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:14:\"selling_venues\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:12:\"brick-mortar\";}i:1;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:1:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:14:\"selling_venues\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:18:\"brick-mortar-other\";}}}}}}}s:14:\"category_other\";a:9:{i:0;s:2:\"US\";i:1;s:2:\"CA\";i:2;s:2:\"JP\";i:3;s:2:\"GB\";i:4;s:2:\"AU\";i:5;s:2:\"IE\";i:6;s:2:\"FR\";i:7;s:2:\"ES\";i:8;s:2:\"FI\";}s:19:\"category_additional\";a:0:{}}s:8:\"afterpay\";O:8:\"stdClass\":9:{s:2:\"id\";s:8:\"afterpay\";s:5:\"title\";s:8:\"Afterpay\";s:7:\"content\";s:125:\"Afterpay allows customers to receive products immediately and pay for purchases over four installments, always interest-free.\";s:5:\"image\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/afterpay.png\";s:11:\"image_72x72\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/afterpay.png\";s:7:\"plugins\";a:1:{i:0;s:32:\"afterpay-gateway-for-woocommerce\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:7:\"version\";s:9:\"6.5.0-dev\";s:8:\"operator\";s:2:\">=\";}}s:14:\"category_other\";a:0:{}s:19:\"category_additional\";a:2:{i:0;s:2:\"US\";i:1;s:2:\"CA\";}}s:24:\"amazon_payments_advanced\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"amazon_payments_advanced\";s:5:\"title\";s:10:\"Amazon Pay\";s:7:\"content\";s:94:\"Enable a familiar, fast checkout for hundreds of millions of active Amazon customers globally.\";s:5:\"image\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/amazonpay.png\";s:11:\"image_72x72\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/amazonpay.png\";s:7:\"plugins\";a:1:{i:0;s:44:\"woocommerce-gateway-amazon-payments-advanced\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:7:\"version\";s:9:\"6.5.0-dev\";s:8:\"operator\";s:2:\">=\";}}s:14:\"category_other\";a:0:{}s:19:\"category_additional\";a:2:{i:0;s:2:\"US\";i:1;s:2:\"CA\";}}s:6:\"affirm\";O:8:\"stdClass\":10:{s:2:\"id\";s:6:\"affirm\";s:5:\"title\";s:6:\"Affirm\";s:7:\"content\";s:169:\"Affirm’s tailored Buy Now Pay Later programs remove price as a barrier, turning browsers into buyers, increasing average order value, and expanding your customer base.\";s:5:\"image\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/affirm.png\";s:11:\"image_72x72\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/affirm.png\";s:7:\"plugins\";a:0:{}s:13:\"external_link\";s:59:\"https://woocommerce.com/products/woocommerce-gateway-affirm\";s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:7:\"version\";s:9:\"6.5.0-dev\";s:8:\"operator\";s:2:\">=\";}}s:14:\"category_other\";a:0:{}s:19:\"category_additional\";a:2:{i:0;s:2:\"US\";i:1;s:2:\"CA\";}}}}', 'no'),
(877, 'woocommerce_cod_settings', 'a:6:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:16:\"Cash on delivery\";s:11:\"description\";s:28:\"Pay with cash upon delivery.\";s:12:\"instructions\";s:28:\"Pay with cash upon delivery.\";s:18:\"enable_for_methods\";a:0:{}s:18:\"enable_for_virtual\";s:3:\"yes\";}', 'yes'),
(879, 'jetpack_activated', '1', 'yes'),
(882, 'jetpack_activation_source', 'a:2:{i:0;s:7:\"unknown\";i:1;N;}', 'yes'),
(883, 'jetpack_sync_settings_disable', '0', 'yes'),
(884, 'jetpack_options', 'a:6:{s:7:\"version\";s:15:\"11.4:1666107990\";s:11:\"old_version\";s:15:\"11.4:1666107990\";s:14:\"last_heartbeat\";i:1666259398;s:28:\"fallback_no_verify_ssl_certs\";i:0;s:9:\"time_diff\";i:0;s:28:\"has_seen_wc_connection_modal\";b:1;}', 'yes'),
(885, '_transient_timeout_jetpack_file_data_11.4', '1668613593', 'no'),
(886, '_transient_jetpack_file_data_11.4', 'a:1:{s:32:\"3fd340ad52927afb3bbb9e98575eccfd\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:24:\"requires_user_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(887, 'jetpack_available_modules', 'a:1:{s:4:\"11.4\";a:46:{s:10:\"action-bar\";s:4:\"11.4\";s:8:\"carousel\";s:3:\"1.5\";s:13:\"comment-likes\";s:3:\"5.1\";s:8:\"comments\";s:3:\"1.4\";s:12:\"contact-form\";s:3:\"1.3\";s:9:\"copy-post\";s:3:\"7.0\";s:20:\"custom-content-types\";s:3:\"3.1\";s:10:\"custom-css\";s:3:\"1.7\";s:21:\"enhanced-distribution\";s:3:\"1.2\";s:16:\"google-analytics\";s:3:\"4.5\";s:12:\"google-fonts\";s:6:\"10.8.0\";s:19:\"gravatar-hovercards\";s:3:\"1.1\";s:15:\"infinite-scroll\";s:3:\"2.0\";s:8:\"json-api\";s:3:\"1.9\";s:5:\"latex\";s:3:\"1.1\";s:11:\"lazy-images\";s:5:\"5.6.0\";s:5:\"likes\";s:3:\"2.2\";s:8:\"markdown\";s:3:\"2.8\";s:9:\"masterbar\";s:3:\"4.8\";s:7:\"monitor\";s:3:\"2.6\";s:5:\"notes\";s:3:\"1.9\";s:10:\"photon-cdn\";s:3:\"6.6\";s:6:\"photon\";s:3:\"2.0\";s:13:\"post-by-email\";s:3:\"2.0\";s:9:\"post-list\";s:4:\"11.3\";s:7:\"protect\";s:3:\"3.4\";s:9:\"publicize\";s:3:\"2.0\";s:13:\"related-posts\";s:3:\"2.9\";s:6:\"search\";s:3:\"5.0\";s:9:\"seo-tools\";s:3:\"4.4\";s:10:\"sharedaddy\";s:3:\"1.1\";s:10:\"shortcodes\";s:3:\"1.1\";s:10:\"shortlinks\";s:3:\"1.1\";s:8:\"sitemaps\";s:3:\"3.9\";s:3:\"sso\";s:3:\"2.6\";s:5:\"stats\";s:3:\"1.1\";s:13:\"subscriptions\";s:3:\"1.2\";s:13:\"tiled-gallery\";s:3:\"2.1\";s:10:\"vaultpress\";s:5:\"0:1.2\";s:18:\"verification-tools\";s:3:\"3.0\";s:10:\"videopress\";s:3:\"2.5\";s:3:\"waf\";s:4:\"10.9\";s:17:\"widget-visibility\";s:3:\"2.4\";s:7:\"widgets\";s:3:\"1.2\";s:21:\"woocommerce-analytics\";s:3:\"8.4\";s:7:\"wordads\";s:5:\"4.5.0\";}}', 'yes'),
(889, 'jetpack_connection_active_plugins', 'a:1:{s:7:\"jetpack\";a:1:{s:4:\"name\";s:7:\"Jetpack\";}}', 'yes'),
(893, 'jetpack_sync_https_history_home_url', 'a:5:{i:0;s:4:\"http\";i:1;s:4:\"http\";i:2;s:4:\"http\";i:3;s:4:\"http\";i:4;s:4:\"http\";}', 'yes'),
(894, 'jetpack_sync_https_history_site_url', 'a:5:{i:0;s:4:\"http\";i:1;s:4:\"http\";i:2;s:4:\"http\";i:3;s:4:\"http\";i:4;s:4:\"http\";}', 'yes'),
(896, 'wc_connect_options', 'a:1:{s:12:\"tos_accepted\";b:1;}', 'yes'),
(897, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1666259396;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:59:\"force-regenerate-thumbnails/force-regenerate-thumbnails.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:41:\"w.org/plugins/force-regenerate-thumbnails\";s:4:\"slug\";s:27:\"force-regenerate-thumbnails\";s:6:\"plugin\";s:59:\"force-regenerate-thumbnails/force-regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"2.0.6\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/force-regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/force-regenerate-thumbnails.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:71:\"https://s.w.org/plugins/geopattern-icon/force-regenerate-thumbnails.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"2.8\";}s:19:\"jetpack/jetpack.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/jetpack\";s:4:\"slug\";s:7:\"jetpack\";s:6:\"plugin\";s:19:\"jetpack/jetpack.php\";s:11:\"new_version\";s:4:\"11.4\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/jetpack/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/jetpack.11.4.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:60:\"https://ps.w.org/jetpack/assets/icon-256x256.png?rev=2638128\";s:2:\"1x\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=2638128\";s:3:\"svg\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=2638128\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/jetpack/assets/banner-1544x500.png?rev=2653649\";s:2:\"1x\";s:62:\"https://ps.w.org/jetpack/assets/banner-772x250.png?rev=2653649\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.9\";}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"7.0.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.7.0.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2366418\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2366418\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2366418\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2366418\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";}s:45:\"woocommerce-services/woocommerce-services.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:34:\"w.org/plugins/woocommerce-services\";s:4:\"slug\";s:20:\"woocommerce-services\";s:6:\"plugin\";s:45:\"woocommerce-services/woocommerce-services.php\";s:11:\"new_version\";s:6:\"1.26.3\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/woocommerce-services/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/woocommerce-services.1.26.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/woocommerce-services/assets/icon-256x256.png?rev=2398959\";s:2:\"1x\";s:73:\"https://ps.w.org/woocommerce-services/assets/icon-128x128.png?rev=2398959\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/woocommerce-services/assets/banner-1544x500.png?rev=2398959\";s:2:\"1x\";s:75:\"https://ps.w.org/woocommerce-services/assets/banner-772x250.png?rev=2398959\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:5:{s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.2\";s:59:\"force-regenerate-thumbnails/force-regenerate-thumbnails.php\";s:5:\"2.0.6\";s:19:\"jetpack/jetpack.php\";s:4:\"11.4\";s:27:\"woocommerce/woocommerce.php\";s:5:\"7.0.0\";s:45:\"woocommerce-services/woocommerce-services.php\";s:6:\"1.26.3\";}}', 'no'),
(898, 'do_activate', '0', 'yes'),
(903, 'jetpack_log', 'a:1:{i:0;a:4:{s:4:\"time\";i:1666107996;s:7:\"user_id\";i:1;s:7:\"blog_id\";b:0;s:4:\"code\";s:8:\"register\";}}', 'no'),
(904, 'jetpack_tos_agreed', '1', 'yes'),
(905, 'jetpack_secrets', 'a:1:{s:18:\"jetpack_register_1\";a:3:{s:8:\"secret_1\";s:32:\"5ASI5DIzTVeYdMmy9qoPar402GfmqAOd\";s:8:\"secret_2\";s:32:\"wQEp2JglrpPPGJAexRg7eAO0v9rxjODl\";s:3:\"exp\";i:1666108596;}}', 'no'),
(906, '_transient_jetpack_assumed_site_creation_date', '2022-10-11 18:44:51', 'yes'),
(907, 'sharing-options', 'a:1:{s:6:\"global\";a:5:{s:12:\"button_style\";s:9:\"icon-text\";s:13:\"sharing_label\";s:11:\"Share this:\";s:10:\"open_links\";s:4:\"same\";s:4:\"show\";a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}s:6:\"custom\";a:0:{}}}', 'yes'),
(908, 'stats_options', 'a:6:{s:9:\"admin_bar\";b:1;s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:11:\"count_roles\";a:0:{}s:7:\"blog_id\";b:0;s:12:\"do_not_track\";b:1;s:7:\"version\";s:1:\"9\";}', 'yes'),
(909, '_transient_timeout_wc_report_orders_stats_a38d574d5949972d81c28df2968c4185', '1666712805', 'no'),
(910, '_transient_wc_report_orders_stats_a38d574d5949972d81c28df2968c4185', 'a:2:{s:7:\"version\";s:10:\"1665676068\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-42\";s:10:\"date_start\";s:19:\"2022-10-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-18 00:00:00\";s:8:\"date_end\";s:19:\"2022-10-18 17:46:44\";s:12:\"date_end_gmt\";s:19:\"2022-10-18 17:46:44\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(911, '_transient_timeout_wc_report_orders_stats_6b28320f5f9352efd93bfeeb04ab2eeb', '1666712805', 'no'),
(912, '_transient_wc_report_orders_stats_6b28320f5f9352efd93bfeeb04ab2eeb', 'a:2:{s:7:\"version\";s:10:\"1665676068\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-42\";s:10:\"date_start\";s:19:\"2022-10-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-18 00:00:00\";s:8:\"date_end\";s:19:\"2022-10-18 17:46:44\";s:12:\"date_end_gmt\";s:19:\"2022-10-18 17:46:44\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(914, '_transient_timeout_wc_report_orders_stats_b7916cd9f452ba5127d8bf364ba3495e', '1666712824', 'no'),
(915, '_transient_wc_report_orders_stats_b7916cd9f452ba5127d8bf364ba3495e', 'a:2:{s:7:\"version\";s:10:\"1665676068\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-42\";s:10:\"date_start\";s:19:\"2022-10-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-18 00:00:00\";s:8:\"date_end\";s:19:\"2022-10-18 17:47:00\";s:12:\"date_end_gmt\";s:19:\"2022-10-18 17:47:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(916, '_transient_timeout_wc_report_orders_stats_4cbe63545d90f746481c55c0df422461', '1666712824', 'no'),
(917, '_transient_wc_report_orders_stats_4cbe63545d90f746481c55c0df422461', 'a:2:{s:7:\"version\";s:10:\"1665676068\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-42\";s:10:\"date_start\";s:19:\"2022-10-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-18 00:00:00\";s:8:\"date_end\";s:19:\"2022-10-18 17:47:00\";s:12:\"date_end_gmt\";s:19:\"2022-10-18 17:47:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(997, '_transient_timeout_wc_term_counts', '1668704790', 'no'),
(998, '_transient_wc_term_counts', 'a:1:{i:18;s:1:\"1\";}', 'no'),
(999, '_transient_orders-transient-version', '1666112789', 'yes'),
(1000, '_transient_timeout_wc_customer_bought_product_2afd77be384966752e8189942d261eb6', '1668704789', 'no'),
(1001, '_transient_wc_customer_bought_product_2afd77be384966752e8189942d261eb6', 'a:2:{s:7:\"version\";s:10:\"1666112789\";s:5:\"value\";a:0:{}}', 'no'),
(1006, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(1008, '_transient_timeout_wc_report_orders_stats_2738a00a140aef34037895fb15e24925', '1666717653', 'no'),
(1009, '_transient_wc_report_orders_stats_2738a00a140aef34037895fb15e24925', 'a:2:{s:7:\"version\";s:10:\"1665676068\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-42\";s:10:\"date_start\";s:19:\"2022-10-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-18 00:00:00\";s:8:\"date_end\";s:19:\"2022-10-18 19:07:30\";s:12:\"date_end_gmt\";s:19:\"2022-10-18 19:07:30\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1010, '_transient_timeout_wc_report_orders_stats_6f07e4fe90306189bd2fe63142c21af2', '1666717653', 'no'),
(1011, '_transient_wc_report_orders_stats_6f07e4fe90306189bd2fe63142c21af2', 'a:2:{s:7:\"version\";s:10:\"1665676068\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-42\";s:10:\"date_start\";s:19:\"2022-10-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-18 00:00:00\";s:8:\"date_end\";s:19:\"2022-10-18 19:07:30\";s:12:\"date_end_gmt\";s:19:\"2022-10-18 19:07:30\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1030, '_site_transient_timeout_php_check_f2f0159ec61fbc32351593d1e8db8c2a', '1666725274', 'no'),
(1031, '_site_transient_php_check_f2f0159ec61fbc32351593d1e8db8c2a', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:0;s:13:\"is_acceptable\";b:0;}', 'no'),
(1036, '_transient_timeout_wc_report_orders_stats_7ebb9d1795bef04728cfe06c60a24d76', '1666725378', 'no'),
(1037, '_transient_wc_report_orders_stats_7ebb9d1795bef04728cfe06c60a24d76', 'a:2:{s:7:\"version\";s:10:\"1665676068\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-42\";s:10:\"date_start\";s:19:\"2022-10-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-18 00:00:00\";s:8:\"date_end\";s:19:\"2022-10-18 21:16:15\";s:12:\"date_end_gmt\";s:19:\"2022-10-18 21:16:15\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1038, '_transient_timeout_wc_report_orders_stats_f424a3f924dcbf4fa5dec456df909d91', '1666725378', 'no'),
(1039, '_transient_wc_report_orders_stats_f424a3f924dcbf4fa5dec456df909d91', 'a:2:{s:7:\"version\";s:10:\"1665676068\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-42\";s:10:\"date_start\";s:19:\"2022-10-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-10-18 00:00:00\";s:8:\"date_end\";s:19:\"2022-10-18 21:16:15\";s:12:\"date_end_gmt\";s:19:\"2022-10-18 21:16:15\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1040, '_transient_timeout_wc_report_customers_stats_23aa71296fff28c7e9c3df8d703c0c51', '1666725387', 'no'),
(1041, '_transient_wc_report_customers_stats_23aa71296fff28c7e9c3df8d703c0c51', 'a:2:{s:7:\"version\";s:10:\"1665676068\";s:5:\"value\";O:8:\"stdClass\":4:{s:15:\"customers_count\";i:0;s:16:\"avg_orders_count\";d:0;s:15:\"avg_total_spend\";d:0;s:19:\"avg_avg_order_value\";d:0;}}', 'no'),
(1087, '_transient_timeout__woocommerce_helper_subscriptions', '1666260295', 'no'),
(1088, '_transient__woocommerce_helper_subscriptions', 'a:0:{}', 'no'),
(1089, '_site_transient_timeout_theme_roots', '1666261195', 'no'),
(1090, '_site_transient_theme_roots', 'a:1:{s:18:\"EnduroCrossMotomix\";s:7:\"/themes\";}', 'no'),
(1091, '_transient_timeout__woocommerce_helper_updates', '1666302595', 'no'),
(1092, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1666259395;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(1097, '_transient_doing_cron', '1666259408.5219199657440185546875', 'yes'),
(1098, '_transient_timeout_global_styles_EnduroCrossMotomix', '1666259520', 'no'),
(1099, '_transient_global_styles_EnduroCrossMotomix', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(21, 3, '_wp_trash_meta_status', 'draft'),
(22, 3, '_wp_trash_meta_time', '1665515061'),
(23, 3, '_wp_desired_post_slug', 'privacy-policy'),
(24, 2, '_wp_trash_meta_status', 'publish'),
(25, 2, '_wp_trash_meta_time', '1665515063'),
(26, 2, '_wp_desired_post_slug', 'sample-page'),
(28, 11, '_edit_lock', '1666106359:1'),
(29, 13, '_edit_lock', '1665654962:1'),
(30, 15, '_edit_lock', '1665652252:1'),
(31, 17, '_menu_item_type', 'post_type'),
(32, 17, '_menu_item_menu_item_parent', '0'),
(33, 17, '_menu_item_object_id', '15'),
(34, 17, '_menu_item_object', 'page'),
(35, 17, '_menu_item_target', ''),
(36, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(37, 17, '_menu_item_xfn', ''),
(38, 17, '_menu_item_url', ''),
(40, 18, '_menu_item_type', 'post_type'),
(41, 18, '_menu_item_menu_item_parent', '0'),
(42, 18, '_menu_item_object_id', '13'),
(43, 18, '_menu_item_object', 'page'),
(44, 18, '_menu_item_target', ''),
(45, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(46, 18, '_menu_item_xfn', ''),
(47, 18, '_menu_item_url', ''),
(59, 17, '_wp_old_date', '2022-10-11'),
(60, 18, '_wp_old_date', '2022-10-11'),
(62, 13, '_edit_last', '1'),
(63, 24, '_edit_last', '1'),
(64, 24, '_edit_lock', '1665650874:1'),
(65, 24, '_wp_trash_meta_status', 'publish'),
(66, 24, '_wp_trash_meta_time', '1665651057'),
(67, 24, '_wp_desired_post_slug', 'home'),
(68, 29, '_edit_last', '1'),
(69, 29, '_edit_lock', '1665651333:1'),
(70, 29, '_wp_trash_meta_status', 'publish'),
(71, 29, '_wp_trash_meta_time', '1665651521'),
(72, 29, '_wp_desired_post_slug', 'home'),
(73, 15, '_edit_last', '1'),
(76, 34, '_wp_attached_file', '2022/10/1656242333.cx22.jpg'),
(77, 34, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1500;s:6:\"height\";i:1500;s:4:\"file\";s:27:\"2022/10/1656242333.cx22.jpg\";s:8:\"filesize\";i:641479;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:27:\"1656242333.cx22-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:25043;}s:5:\"large\";a:5:{s:4:\"file\";s:29:\"1656242333.cx22-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:177657;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:27:\"1656242333.cx22-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8399;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:27:\"1656242333.cx22-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:112887;}s:10:\"post_image\";a:5:{s:4:\"file\";s:28:\"1656242333.cx22-1100x750.jpg\";s:5:\"width\";i:1100;s:6:\"height\";i:750;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:166574;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(78, 35, '_wp_attached_file', '2022/10/1656242333.cx22-1.jpg'),
(79, 35, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1500;s:6:\"height\";i:1500;s:4:\"file\";s:29:\"2022/10/1656242333.cx22-1.jpg\";s:8:\"filesize\";i:641479;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:29:\"1656242333.cx22-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:25043;}s:5:\"large\";a:5:{s:4:\"file\";s:31:\"1656242333.cx22-1-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:177657;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:29:\"1656242333.cx22-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8399;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:29:\"1656242333.cx22-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:112887;}s:10:\"post_image\";a:5:{s:4:\"file\";s:30:\"1656242333.cx22-1-1100x750.jpg\";s:5:\"width\";i:1100;s:6:\"height\";i:750;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:166574;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(80, 13, '_thumbnail_id', '34'),
(81, 36, '_wp_attached_file', 'woocommerce-placeholder.png'),
(82, 36, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:8:\"filesize\";i:102644;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:12560;}s:5:\"large\";a:5:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:92182;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:4228;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:58715;}s:10:\"post_image\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-550x550.png\";s:5:\"width\";i:550;s:6:\"height\";i:550;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:52510;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(86, 11, '_wp_trash_meta_status', 'publish'),
(87, 11, '_wp_trash_meta_time', '1666106527'),
(88, 11, '_wp_desired_post_slug', 'katalog'),
(89, 42, '_menu_item_type', 'post_type'),
(90, 42, '_menu_item_menu_item_parent', '0'),
(91, 42, '_menu_item_object_id', '37'),
(92, 42, '_menu_item_object', 'page'),
(93, 42, '_menu_item_target', ''),
(94, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(95, 42, '_menu_item_xfn', ''),
(96, 42, '_menu_item_url', ''),
(98, 18, '_wp_old_date', '2022-10-12'),
(99, 17, '_wp_old_date', '2022-10-12'),
(100, 43, '_edit_last', '1'),
(101, 43, '_edit_lock', '1666108676:1'),
(102, 44, '_wp_attached_file', '2022/10/cizmy.jpg'),
(103, 44, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:853;s:6:\"height\";i:853;s:4:\"file\";s:17:\"2022/10/cizmy.jpg\";s:8:\"filesize\";i:174982;s:5:\"sizes\";a:7:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"cizmy-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:17004;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"cizmy-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6499;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:17:\"cizmy-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:70160;}s:10:\"post_image\";a:5:{s:4:\"file\";s:17:\"cizmy-550x550.jpg\";s:5:\"width\";i:550;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:42482;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:17:\"cizmy-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:17004;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:17:\"cizmy-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:48161;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:17:\"cizmy-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3845;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(104, 43, '_thumbnail_id', '44'),
(105, 43, '_regular_price', '140'),
(106, 43, 'total_sales', '0'),
(107, 43, '_tax_status', 'taxable'),
(108, 43, '_tax_class', ''),
(109, 43, '_manage_stock', 'no'),
(110, 43, '_backorders', 'no'),
(111, 43, '_sold_individually', 'no'),
(112, 43, '_virtual', 'no'),
(113, 43, '_downloadable', 'no'),
(114, 43, '_download_limit', '-1'),
(115, 43, '_download_expiry', '-1'),
(116, 43, '_stock', NULL),
(117, 43, '_stock_status', 'instock'),
(118, 43, '_wc_average_rating', '4.00'),
(119, 43, '_wc_review_count', '1'),
(120, 43, '_product_version', '7.0.0'),
(121, 43, '_price', '140'),
(122, 37, '_edit_lock', '1666107765:1'),
(123, 37, '_edit_last', '1'),
(124, 46, '_menu_item_type', 'post_type'),
(125, 46, '_menu_item_menu_item_parent', '0'),
(126, 46, '_menu_item_object_id', '38'),
(127, 46, '_menu_item_object', 'page'),
(128, 46, '_menu_item_target', ''),
(129, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(130, 46, '_menu_item_xfn', ''),
(131, 46, '_menu_item_url', ''),
(133, 38, '_edit_lock', '1666108216:1'),
(134, 38, '_edit_last', '1'),
(135, 43, '_wc_rating_count', 'a:1:{i:4;i:1;}');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2022-10-11 18:44:51', '2022-10-11 18:44:51', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2022-10-11 18:44:51', '2022-10-11 18:44:51', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2022-10-11 18:44:51', '2022-10-11 18:44:51', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2022-10-11 19:04:23', '2022-10-11 19:04:23', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2022-10-11 18:44:51', '2022-10-11 18:44:51', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2022-10-11 19:04:21', '2022-10-11 19:04:21', '', 0, 'http://localhost/wordpress/?page_id=3', 0, 'page', '', 0),
(7, 1, '2022-10-11 19:04:21', '2022-10-11 19:04:21', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2022-10-11 19:04:21', '2022-10-11 19:04:21', '', 3, 'http://EnduroCrossMotomix.sk/?p=7', 0, 'revision', '', 0),
(8, 1, '2022-10-11 19:04:23', '2022-10-11 19:04:23', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2022-10-11 19:04:23', '2022-10-11 19:04:23', '', 2, 'http://EnduroCrossMotomix.sk/?p=8', 0, 'revision', '', 0),
(10, 1, '2022-10-11 19:04:27', '2022-10-11 19:04:27', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-endurocrossmotomix', '', '', '2022-10-11 19:04:27', '2022-10-11 19:04:27', '', 0, 'http://EnduroCrossMotomix.sk/wp-global-styles-endurocrossmotomix/', 0, 'wp_global_styles', '', 0),
(11, 1, '2022-10-11 19:06:51', '2022-10-11 19:06:51', '', 'Katalóg', '', 'trash', 'closed', 'closed', '', 'katalog__trashed', '', '', '2022-10-18 15:22:07', '2022-10-18 15:22:07', '', 0, 'http://EnduroCrossMotomix.sk/?page_id=11', 0, 'page', '', 0),
(12, 1, '2022-10-11 19:06:51', '2022-10-11 19:06:51', '', 'Katalóg', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2022-10-11 19:06:51', '2022-10-11 19:06:51', '', 11, 'http://EnduroCrossMotomix.sk/?p=12', 0, 'revision', '', 0),
(13, 1, '2022-10-11 19:07:02', '2022-10-11 19:07:02', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n&nbsp;\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Kontakt', '', 'publish', 'closed', 'closed', '', 'kontakt', '', '', '2022-10-18 15:22:03', '2022-10-18 15:22:03', '', 0, 'http://EnduroCrossMotomix.sk/?page_id=13', 0, 'page', '', 0),
(14, 1, '2022-10-11 19:07:02', '2022-10-11 19:07:02', '', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2022-10-11 19:07:02', '2022-10-11 19:07:02', '', 13, 'http://EnduroCrossMotomix.sk/?p=14', 0, 'revision', '', 0),
(15, 1, '2022-10-11 19:07:20', '2022-10-11 19:07:20', '<p style=\"text-align: left;\">r since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n&nbsp;\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and m', 'O nás', '', 'publish', 'closed', 'closed', '', 'o-nas', '', '', '2022-10-13 09:13:11', '2022-10-13 09:13:11', '', 0, 'http://EnduroCrossMotomix.sk/?page_id=15', 0, 'page', '', 0),
(16, 1, '2022-10-11 19:07:20', '2022-10-11 19:07:20', '', 'O nás', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2022-10-11 19:07:20', '2022-10-11 19:07:20', '', 15, 'http://EnduroCrossMotomix.sk/?p=16', 0, 'revision', '', 0),
(17, 1, '2022-10-18 15:48:11', '2022-10-11 19:07:52', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2022-10-18 15:48:11', '2022-10-18 15:48:11', '', 0, 'http://EnduroCrossMotomix.sk/?p=17', 3, 'nav_menu_item', '', 0),
(18, 1, '2022-10-18 15:48:11', '2022-10-11 19:07:52', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2022-10-18 15:48:11', '2022-10-18 15:48:11', '', 0, 'http://EnduroCrossMotomix.sk/?p=18', 2, 'nav_menu_item', '', 0),
(20, 1, '2022-10-13 08:46:56', '2022-10-13 08:46:56', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2022-10-13 08:46:56', '2022-10-13 08:46:56', '', 13, 'http://EnduroCrossMotomix.sk/?p=20', 0, 'revision', '', 0),
(21, 1, '2022-10-13 08:47:32', '2022-10-13 08:47:32', '', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2022-10-13 08:47:32', '2022-10-13 08:47:32', '', 13, 'http://EnduroCrossMotomix.sk/?p=21', 0, 'revision', '', 0),
(22, 1, '2022-10-13 08:47:56', '2022-10-13 08:47:56', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2022-10-13 08:47:56', '2022-10-13 08:47:56', '', 13, 'http://EnduroCrossMotomix.sk/?p=22', 0, 'revision', '', 0),
(23, 1, '2022-10-13 08:48:50', '2022-10-13 08:48:50', '', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2022-10-13 08:48:50', '2022-10-13 08:48:50', '', 13, 'http://EnduroCrossMotomix.sk/?p=23', 0, 'revision', '', 0),
(24, 1, '2022-10-13 08:49:03', '2022-10-13 08:49:03', '', 'Home', '', 'trash', 'closed', 'closed', '', 'home__trashed', '', '', '2022-10-13 08:50:57', '2022-10-13 08:50:57', '', 0, 'http://EnduroCrossMotomix.sk/?page_id=24', 0, 'page', '', 0),
(25, 1, '2022-10-13 08:49:03', '2022-10-13 08:49:03', '', 'Home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2022-10-13 08:49:03', '2022-10-13 08:49:03', '', 24, 'http://EnduroCrossMotomix.sk/?p=25', 0, 'revision', '', 0),
(27, 1, '2022-10-13 08:51:08', '2022-10-13 08:51:08', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2022-10-13 08:51:08', '2022-10-13 08:51:08', '', 13, 'http://EnduroCrossMotomix.sk/?p=27', 0, 'revision', '', 0),
(28, 1, '2022-10-13 08:55:42', '2022-10-13 08:55:42', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n&nbsp;\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2022-10-13 08:55:42', '2022-10-13 08:55:42', '', 13, 'http://EnduroCrossMotomix.sk/?p=28', 0, 'revision', '', 0),
(29, 1, '2022-10-13 08:57:54', '2022-10-13 08:57:54', '', 'Home', '', 'trash', 'closed', 'closed', '', 'home__trashed-2', '', '', '2022-10-13 08:58:41', '2022-10-13 08:58:41', '', 0, 'http://EnduroCrossMotomix.sk/?page_id=29', 0, 'page', '', 0),
(30, 1, '2022-10-13 08:57:54', '2022-10-13 08:57:54', '', 'Home', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2022-10-13 08:57:54', '2022-10-13 08:57:54', '', 29, 'http://EnduroCrossMotomix.sk/?p=30', 0, 'revision', '', 0),
(31, 1, '2022-10-13 09:57:25', '2022-10-13 09:57:25', '<p style=\"text-align: left;\"><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n&nbsp;\n\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '13-autosave-v1', '', '', '2022-10-13 09:57:25', '2022-10-13 09:57:25', '', 13, 'http://EnduroCrossMotomix.sk/?p=31', 0, 'revision', '', 0),
(32, 1, '2022-10-13 09:13:11', '2022-10-13 09:13:11', '<p style=\"text-align: left;\">r since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n&nbsp;\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and m', 'O nás', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2022-10-13 09:13:11', '2022-10-13 09:13:11', '', 15, 'http://EnduroCrossMotomix.sk/?p=32', 0, 'revision', '', 0),
(34, 1, '2022-10-13 09:19:31', '2022-10-13 09:19:31', '', '1656242333.cx22', '', 'inherit', 'open', 'closed', '', '1656242333-cx22', '', '', '2022-10-13 09:19:31', '2022-10-13 09:19:31', '', 13, 'http://EnduroCrossMotomix.sk/wp-content/uploads/2022/10/1656242333.cx22.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2022-10-13 09:19:51', '2022-10-13 09:19:51', '', '1656242333.cx22', '', 'inherit', 'open', 'closed', '', '1656242333-cx22-2', '', '', '2022-10-13 09:19:51', '2022-10-13 09:19:51', '', 13, 'http://EnduroCrossMotomix.sk/wp-content/uploads/2022/10/1656242333.cx22-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2022-10-13 15:44:50', '2022-10-13 15:44:50', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2022-10-13 15:44:50', '2022-10-13 15:44:50', '', 0, 'http://EnduroCrossMotomix.sk/wp-content/uploads/2022/10/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(37, 1, '2022-10-13 15:44:51', '2022-10-13 15:44:51', '', 'Katalóg', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2022-10-18 15:41:48', '2022-10-18 15:41:48', '', 0, 'http://EnduroCrossMotomix.sk/shop/', 0, 'page', '', 0),
(38, 1, '2022-10-13 15:44:51', '2022-10-13 15:44:51', '<!-- wp:shortcode -->\r\n<p>[woocommerce_cart]</p>\r\n<!-- /wp:shortcode -->', '<i class=\"fa-solid fa-cart-shopping\"></i>', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2022-10-18 15:51:31', '2022-10-18 15:51:31', '', 0, 'http://EnduroCrossMotomix.sk/cart/', 0, 'page', '', 0),
(39, 1, '2022-10-13 15:44:51', '2022-10-13 15:44:51', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2022-10-13 15:44:51', '2022-10-13 15:44:51', '', 0, 'http://EnduroCrossMotomix.sk/checkout/', 0, 'page', '', 0),
(40, 1, '2022-10-13 15:44:51', '2022-10-13 15:44:51', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2022-10-13 15:44:51', '2022-10-13 15:44:51', '', 0, 'http://EnduroCrossMotomix.sk/my-account/', 0, 'page', '', 0),
(41, 1, '2022-10-13 15:44:51', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p><b>This is a sample page.</b></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h3>Overview</h3>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Our refund and returns policy lasts 30 days. If 30 days have passed since your purchase, we can’t offer you a full refund or exchange.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To be eligible for a return, your item must be unused and in the same condition that you received it. It must also be in the original packaging.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Several types of goods are exempt from being returned. Perishable goods such as food, flowers, newspapers or magazines cannot be returned. We also do not accept products that are intimate or sanitary goods, hazardous materials, or flammable liquids or gases.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Additional non-returnable items:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul>\n<li>Gift cards</li>\n<li>Downloadable software products</li>\n<li>Some health and personal care items</li>\n</ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>To complete your return, we require a receipt or proof of purchase.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Please do not send your purchase back to the manufacturer.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>There are certain situations where only partial refunds are granted:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul>\n<li>Book with obvious signs of use</li>\n<li>CD, DVD, VHS tape, software, video game, cassette tape, or vinyl record that has been opened.</li>\n<li>Any item not in its original condition, is damaged or missing parts for reasons not due to our error.</li>\n<li>Any item that is returned more than 30 days after delivery</li>\n</ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<h2>Refunds</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Once your return is received and inspected, we will send you an email to notify you that we have received your returned item. We will also notify you of the approval or rejection of your refund.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you are approved, then your refund will be processed, and a credit will automatically be applied to your credit card or original method of payment, within a certain amount of days.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<b>Late or missing refunds</b>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you haven’t received a refund yet, first check your bank account again.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Then contact your credit card company, it may take some time before your refund is officially posted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Next contact your bank. There is often some processing time before a refund is posted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you’ve done all of this and you still have not received your refund yet, please contact us at {email address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<b>Sale items</b>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Only regular priced items may be refunded. Sale items cannot be refunded.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Exchanges</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We only replace items if they are defective or damaged. If you need to exchange it for the same item, send us an email at {email address} and send your item to: {physical address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Gifts</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If the item was marked as a gift when purchased and shipped directly to you, you’ll receive a gift credit for the value of your return. Once the returned item is received, a gift certificate will be mailed to you.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If the item wasn’t marked as a gift when purchased, or the gift giver had the order shipped to themselves to give to you later, we will send a refund to the gift giver and they will find out about your return.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Shipping returns</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To return your product, you should mail your product to: {physical address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>You will be responsible for paying for your own shipping costs for returning your item. Shipping costs are non-refundable. If you receive a refund, the cost of return shipping will be deducted from your refund.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Depending on where you live, the time it may take for your exchanged product to reach you may vary.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you are returning more expensive items, you may consider using a trackable shipping service or purchasing shipping insurance. We don’t guarantee that we will receive your returned item.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Need help?</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Contact us at {email} for questions related to refunds and returns.</p>\n<!-- /wp:paragraph -->', 'Refund and Returns Policy', '', 'draft', 'closed', 'closed', '', 'refund_returns', '', '', '2022-10-13 15:44:51', '0000-00-00 00:00:00', '', 0, 'http://EnduroCrossMotomix.sk/?page_id=41', 0, 'page', '', 0),
(42, 1, '2022-10-18 15:48:11', '2022-10-18 15:22:44', ' ', '', '', 'publish', 'closed', 'closed', '', '42', '', '', '2022-10-18 15:48:11', '2022-10-18 15:48:11', '', 0, 'http://EnduroCrossMotomix.sk/?p=42', 1, 'nav_menu_item', '', 0),
(43, 1, '2022-10-18 15:34:21', '2022-10-18 15:34:21', 'sdasdasdasdasd\r\n\r\n&nbsp;\r\n\r\ndfg\r\n\r\ndfg\r\n\r\ndfg\r\n\r\ndfg\r\n\r\n&nbsp;', 'UFO Čižmy ELEKTRON modro-biele', '', 'publish', 'open', 'closed', '', 'ufo-cizmy-elektron-modro-biele', '', '', '2022-10-18 17:06:29', '2022-10-18 17:06:29', '', 0, 'http://EnduroCrossMotomix.sk/?post_type=product&#038;p=43', 0, 'product', '', 1),
(44, 1, '2022-10-18 15:32:06', '2022-10-18 15:32:06', '', 'cizmy', '', 'inherit', 'open', 'closed', '', 'cizmy', '', '', '2022-10-18 15:32:06', '2022-10-18 15:32:06', '', 43, 'http://EnduroCrossMotomix.sk/wp-content/uploads/2022/10/cizmy.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2022-10-18 15:41:48', '2022-10-18 15:41:48', '', 'Katalóg', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2022-10-18 15:41:48', '2022-10-18 15:41:48', '', 37, 'http://EnduroCrossMotomix.sk/?p=45', 0, 'revision', '', 0),
(46, 1, '2022-10-18 15:48:11', '2022-10-18 15:48:11', ' ', '', '', 'publish', 'closed', 'closed', '', '46', '', '', '2022-10-18 15:48:11', '2022-10-18 15:48:11', '', 0, 'http://EnduroCrossMotomix.sk/?p=46', 4, 'nav_menu_item', '', 0),
(47, 1, '2022-10-18 15:51:31', '2022-10-18 15:51:31', '<!-- wp:shortcode -->\r\n<p>[woocommerce_cart]</p>\r\n<!-- /wp:shortcode -->', '<i class=\"fa-solid fa-cart-shopping\"></i>', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2022-10-18 15:51:31', '2022-10-18 15:51:31', '', 38, 'http://EnduroCrossMotomix.sk/?p=47', 0, 'revision', '', 0),
(48, 1, '2022-10-18 19:14:34', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-10-18 19:14:34', '0000-00-00 00:00:00', '', 0, 'http://EnduroCrossMotomix.sk/?p=48', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 18, 'order', '0'),
(2, 18, 'product_count_product_cat', '1');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Top Menu', 'top-menu', 0),
(3, 'EnduroCrossMotomix', 'endurocrossmotomix', 0),
(4, 'simple', 'simple', 0),
(5, 'grouped', 'grouped', 0),
(6, 'variable', 'variable', 0),
(7, 'external', 'external', 0),
(8, 'exclude-from-search', 'exclude-from-search', 0),
(9, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(10, 'featured', 'featured', 0),
(11, 'outofstock', 'outofstock', 0),
(12, 'rated-1', 'rated-1', 0),
(13, 'rated-2', 'rated-2', 0),
(14, 'rated-3', 'rated-3', 0),
(15, 'rated-4', 'rated-4', 0),
(16, 'rated-5', 'rated-5', 0),
(17, 'Uncategorized', 'uncategorized', 0),
(18, 'Čižmy', 'cizmy', 0);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(10, 3, 0),
(17, 2, 0),
(18, 2, 0),
(42, 2, 0),
(43, 4, 0),
(43, 15, 0),
(43, 18, 0),
(46, 2, 0);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'wp_theme', '', 0, 1),
(4, 4, 'product_type', '', 0, 1),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_type', '', 0, 0),
(7, 7, 'product_type', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_visibility', '', 0, 1),
(16, 16, 'product_visibility', '', 0, 0),
(17, 17, 'product_cat', '', 0, 0),
(18, 18, 'product_cat', '', 0, 1);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Krypt0niT'),
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
(16, 1, 'session_tokens', 'a:6:{s:64:\"8d0310048d36fc6d645a2679ebeeaa652084a208a4ee44d652f71b31410fff34\";a:4:{s:10:\"expiration\";i:1666266114;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36\";s:5:\"login\";i:1666093314;}s:64:\"2a0c83b4c5b6a568b06d146f7127e4fbf71dce640da14a074dcfb564b2e90fdf\";a:4:{s:10:\"expiration\";i:1666279246;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36\";s:5:\"login\";i:1666106446;}s:64:\"d85a1811fc0ef222f664f71e87ad27ef1da997ef9c396c5dfb823ebe38c4d854\";a:4:{s:10:\"expiration\";i:1666281424;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36\";s:5:\"login\";i:1666108624;}s:64:\"a1793f55f862bd2888784b043777552b0f796f5be6da54d42d52905a9d08debb\";a:4:{s:10:\"expiration\";i:1666293273;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36\";s:5:\"login\";i:1666120473;}s:64:\"82518dfc9b9adedff3ad3097c9caa075ad20ef32b95ba08b0daa39f7851267c3\";a:4:{s:10:\"expiration\";i:1666293862;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36\";s:5:\"login\";i:1666121062;}s:64:\"c61084b512b3b06d9bd40943161770f8b4dbb232c5e1f6ed6eea560ce6123616\";a:4:{s:10:\"expiration\";i:1666293863;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36\";s:5:\"login\";i:1666121063;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '48'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'nav_menu_recently_edited', '2'),
(22, 1, 'wp_user-settings', 'editor=tinymce&libraryContent=browse'),
(23, 1, 'wp_user-settings-time', '1665653075'),
(24, 1, '_woocommerce_tracks_anon_id', 'woo:rufMq7Je3buqwd9vmVC56211'),
(25, 1, 'wc_last_active', '1666051200'),
(27, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:1:{s:32:\"17e62166fc8586dfa4d1bc0e1742c08b\";a:11:{s:3:\"key\";s:32:\"17e62166fc8586dfa4d1bc0e1742c08b\";s:10:\"product_id\";i:43;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:140;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:140;s:8:\"line_tax\";i:0;}}}'),
(29, 1, 'meta-box-order_product', 'a:3:{s:4:\"side\";s:84:\"submitdiv,postimagediv,woocommerce-product-images,product_catdiv,tagsdiv-product_tag\";s:6:\"normal\";s:55:\"woocommerce-product-data,postcustom,slugdiv,postexcerpt\";s:8:\"advanced\";s:0:\"\";}'),
(30, 1, 'last_update', '1666107968'),
(31, 1, 'woocommerce_admin_task_list_tracked_started_tasks', '{\"payments\":1,\"tax\":1}'),
(32, 1, 'jetpack_tracks_anon_id', 'woo:rufMq7Je3buqwd9vmVC56211'),
(34, 1, 'closedpostboxes_product', 'a:1:{i:0;s:11:\"postexcerpt\";}'),
(35, 1, 'metaboxhidden_product', 'a:2:{i:0;s:10:\"postcustom\";i:1;s:7:\"slugdiv\";}');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Krypt0niT', '$P$BCSn4ypYDwEnpXxI.skizd/6zK.oW3/', 'krypt0nit', 'k269692@gmail.com', 'http://localhost/wordpress', '2022-10-11 18:44:51', '', 0, 'Krypt0niT');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_wc_admin_notes`
--

CREATE TABLE `wp_wc_admin_notes` (
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT 0,
  `layout` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `icon` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'info'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `wp_wc_admin_notes`
--

INSERT INTO `wp_wc_admin_notes` (`note_id`, `name`, `type`, `locale`, `title`, `content`, `content_data`, `status`, `source`, `date_created`, `date_reminder`, `is_snoozable`, `layout`, `image`, `is_deleted`, `is_read`, `icon`) VALUES
(1, 'new_in_app_marketplace_2021', 'info', 'en_US', 'Customize your store with extensions', 'Check out our NEW Extensions tab to see our favorite extensions for customizing your store, and discover the most popular extensions in the WooCommerce Marketplace.', '{}', 'unactioned', 'woocommerce.com', '2022-10-13 15:44:52', NULL, 0, 'plain', '', 0, 0, 'info'),
(2, 'wayflyer_bnpl_q4_2021', 'marketing', 'en_US', 'Grow your business with funding through Wayflyer', 'Fast, flexible financing to boost cash flow and help your business grow – one fee, no interest rates, penalties, equity, or personal guarantees. Based on your store’s performance, Wayflyer provides funding and analytical insights to invest in your business.', '{}', 'pending', 'woocommerce.com', '2022-10-13 15:44:52', NULL, 0, 'plain', '', 0, 0, 'info'),
(3, 'wc_shipping_mobile_app_usps_q4_2021', 'marketing', 'en_US', 'Print and manage your shipping labels with WooCommerce Shipping and the WooCommerce Mobile App', 'Save time by printing, purchasing, refunding, and tracking shipping labels generated by <a href=\"https://woocommerce.com/woocommerce-shipping/\">WooCommerce Shipping</a> – all directly from your mobile device!', '{}', 'pending', 'woocommerce.com', '2022-10-13 15:44:52', NULL, 0, 'plain', '', 0, 0, 'info'),
(4, 'wc_shipping_mobile_app_q4_2021', 'marketing', 'en_US', 'Print and manage your shipping labels with the WooCommerce Mobile App', 'Save time by printing, purchasing, refunding, and tracking shipping labels generated by <a href=\"https://woocommerce.com/woocommerce-shipping/\">WooCommerce Shipping</a> – all directly from your mobile device!', '{}', 'pending', 'woocommerce.com', '2022-10-13 15:44:52', NULL, 0, 'plain', '', 0, 0, 'info'),
(5, 'ecomm-need-help-setting-up-your-store', 'info', 'en_US', 'Need help setting up your Store?', 'Schedule a free 30-min <a href=\"https://wordpress.com/support/concierge-support/\">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.', '{}', 'pending', 'woocommerce.com', '2022-10-13 15:44:52', NULL, 0, 'plain', '', 0, 0, 'info'),
(6, 'woocommerce-services', 'info', 'en_US', 'WooCommerce Shipping & Tax', 'WooCommerce Shipping &amp; Tax helps get your store \"ready to sell\" as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.', '{}', 'pending', 'woocommerce.com', '2022-10-13 15:44:52', NULL, 0, 'plain', '', 0, 0, 'info'),
(7, 'ecomm-unique-shopping-experience', 'info', 'en_US', 'For a shopping experience as unique as your customers', 'Product Add-Ons allow your customers to personalize products while they\'re shopping on your online store. No more follow-up email requests—customers get what they want, before they\'re done checking out. Learn more about this extension that comes included in your plan.', '{}', 'pending', 'woocommerce.com', '2022-10-13 15:44:52', NULL, 0, 'plain', '', 0, 0, 'info'),
(8, 'wc-admin-getting-started-in-ecommerce', 'info', 'en_US', 'Getting Started in eCommerce - webinar', 'We want to make eCommerce and this process of getting started as easy as possible for you. Watch this webinar to get tips on how to have our store up and running in a breeze.', '{}', 'pending', 'woocommerce.com', '2022-10-13 15:44:52', NULL, 0, 'plain', '', 0, 0, 'info'),
(9, 'your-first-product', 'info', 'en_US', 'Your first product', 'That’s huge! You’re well on your way to building a successful online store — now it’s time to think about how you’ll fulfill your orders.<br /><br />Read our shipping guide to learn best practices and options for putting together your shipping strategy. And for WooCommerce stores in the United States, you can print discounted shipping labels via USPS with <a href=\"https://href.li/?https://woocommerce.com/shipping\" target=\"_blank\">WooCommerce Shipping</a>.', '{}', 'unactioned', 'woocommerce.com', '2022-10-18 15:44:50', NULL, 0, 'plain', '', 0, 0, 'info'),
(10, 'wc-admin-optimizing-the-checkout-flow', 'info', 'en_US', 'Optimizing the checkout flow', 'It’s crucial to get your store’s checkout as smooth as possible to avoid losing sales. Let’s take a look at how you can optimize the checkout experience for your shoppers.', '{}', 'unactioned', 'woocommerce.com', '2022-10-20 09:49:57', NULL, 0, 'plain', '', 0, 0, 'info'),
(11, 'wc-admin-first-five-things-to-customize', 'info', 'en_US', 'The first 5 things to customize in your store', 'Deciding what to start with first is tricky. To help you properly prioritize, we’ve put together this short list of the first few things you should customize in WooCommerce.', '{}', 'unactioned', 'woocommerce.com', '2022-10-18 10:42:35', NULL, 0, 'plain', '', 0, 0, 'info'),
(12, 'wc-payments-qualitative-feedback', 'info', 'en_US', 'WooCommerce Payments setup - let us know what you think', 'Congrats on enabling WooCommerce Payments for your store. Please share your feedback in this 2 minute survey to help us improve the setup process.', '{}', 'pending', 'woocommerce.com', '2022-10-13 15:44:52', NULL, 0, 'plain', '', 0, 0, 'info'),
(13, 'share-your-feedback-on-paypal', 'info', 'en_US', 'Share your feedback on PayPal', 'Share your feedback in this 2 minute survey about how we can make the process of accepting payments more useful for your store.', '{}', 'pending', 'woocommerce.com', '2022-10-13 15:44:52', NULL, 0, 'plain', '', 0, 0, 'info'),
(14, 'google_listings_and_ads_install', 'marketing', 'en_US', 'Drive traffic and sales with Google', 'Reach online shoppers to drive traffic and sales for your store by showcasing products across Google, for free or with ads.', '{}', 'pending', 'woocommerce.com', '2022-10-13 15:44:52', NULL, 0, 'plain', '', 0, 0, 'info'),
(15, 'wc-subscriptions-security-update-3-0-15', 'info', 'en_US', 'WooCommerce Subscriptions security update!', 'We recently released an important security update to WooCommerce Subscriptions. To ensure your site’s data is protected, please upgrade <strong>WooCommerce Subscriptions to version 3.0.15</strong> or later.<br /><br />Click the button below to view and update to the latest Subscriptions version, or log in to <a href=\"https://woocommerce.com/my-dashboard\">WooCommerce.com Dashboard</a> and navigate to your <strong>Downloads</strong> page.<br /><br />We recommend always using the latest version of WooCommerce Subscriptions, and other software running on your site, to ensure maximum security.<br /><br />If you have any questions we are here to help — just <a href=\"https://woocommerce.com/my-account/create-a-ticket/\">open a ticket</a>.', '{}', 'pending', 'woocommerce.com', '2022-10-13 15:44:52', NULL, 0, 'plain', '', 0, 0, 'info'),
(16, 'woocommerce-core-update-5-4-0', 'info', 'en_US', 'Update to WooCommerce 5.4.1 now', 'WooCommerce 5.4.1 addresses a checkout issue discovered in WooCommerce 5.4. We recommend upgrading to WooCommerce 5.4.1 as soon as possible.', '{}', 'pending', 'woocommerce.com', '2022-10-13 15:44:52', NULL, 0, 'plain', '', 0, 0, 'info'),
(17, 'wcpay-promo-2020-11', 'marketing', 'en_US', 'wcpay-promo-2020-11', 'wcpay-promo-2020-11', '{}', 'pending', 'woocommerce.com', '2022-10-13 15:44:52', NULL, 0, 'plain', '', 0, 0, 'info'),
(18, 'wcpay-promo-2020-12', 'marketing', 'en_US', 'wcpay-promo-2020-12', 'wcpay-promo-2020-12', '{}', 'pending', 'woocommerce.com', '2022-10-13 15:44:52', NULL, 0, 'plain', '', 0, 0, 'info'),
(19, 'ppxo-pps-upgrade-paypal-payments-1', 'info', 'en_US', 'Get the latest PayPal extension for WooCommerce', 'Heads up! There’s a new PayPal on the block!<br /><br />Now is a great time to upgrade to our latest <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">PayPal extension</a> to continue to receive support and updates with PayPal.<br /><br />Get access to a full suite of PayPal payment methods, extensive currency and country coverage, and pay later options with the all-new PayPal extension for WooCommerce.', '{}', 'pending', 'woocommerce.com', '2022-10-13 15:44:52', NULL, 0, 'plain', '', 0, 0, 'info'),
(20, 'ppxo-pps-upgrade-paypal-payments-2', 'info', 'en_US', 'Upgrade your PayPal experience!', 'Get access to a full suite of PayPal payment methods, extensive currency and country coverage, offer subscription and recurring payments, and the new PayPal pay later options.<br /><br />Start using our <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">latest PayPal today</a> to continue to receive support and updates.', '{}', 'pending', 'woocommerce.com', '2022-10-13 15:44:52', NULL, 0, 'plain', '', 0, 0, 'info'),
(21, 'woocommerce-core-sqli-july-2021-need-to-update', 'update', 'en_US', 'Action required: Critical vulnerabilities in WooCommerce', 'In response to a critical vulnerability identified on July 13, 2021, we are working with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br />Our investigation into this vulnerability is ongoing, but <strong>we wanted to let you know now about the importance of updating immediately</strong>.<br /><br />For more information on which actions you should take, as well as answers to FAQs, please urgently review our blog post detailing this issue.', '{}', 'pending', 'woocommerce.com', '2022-10-13 15:44:52', NULL, 0, 'plain', '', 0, 0, 'info'),
(22, 'woocommerce-blocks-sqli-july-2021-need-to-update', 'update', 'en_US', 'Action required: Critical vulnerabilities in WooCommerce Blocks', 'In response to a critical vulnerability identified on July 13, 2021, we are working with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br />Our investigation into this vulnerability is ongoing, but <strong>we wanted to let you know now about the importance of updating immediately</strong>.<br /><br />For more information on which actions you should take, as well as answers to FAQs, please urgently review our blog post detailing this issue.', '{}', 'pending', 'woocommerce.com', '2022-10-13 15:44:52', NULL, 0, 'plain', '', 0, 0, 'info'),
(23, 'woocommerce-core-sqli-july-2021-store-patched', 'update', 'en_US', 'Solved: Critical vulnerabilities patched in WooCommerce', 'In response to a critical vulnerability identified on July 13, 2021, we worked with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br /><strong>Your store has been updated to the latest secure version(s)</strong>. For more information and answers to FAQs, please review our blog post detailing this issue.', '{}', 'pending', 'woocommerce.com', '2022-10-13 15:44:52', NULL, 0, 'plain', '', 0, 0, 'info'),
(24, 'woocommerce-blocks-sqli-july-2021-store-patched', 'update', 'en_US', 'Solved: Critical vulnerabilities patched in WooCommerce Blocks', 'In response to a critical vulnerability identified on July 13, 2021, we worked with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br /><strong>Your store has been updated to the latest secure version(s)</strong>. For more information and answers to FAQs, please review our blog post detailing this issue.', '{}', 'pending', 'woocommerce.com', '2022-10-13 15:44:52', NULL, 0, 'plain', '', 0, 0, 'info'),
(25, 'habit-moment-survey', 'marketing', 'en_US', 'We’re all ears! Share your experience so far with WooCommerce', 'We’d love your input to shape the future of WooCommerce together. Feel free to share any feedback, ideas or suggestions that you have.', '{}', 'pending', 'woocommerce.com', '2022-10-13 15:44:52', NULL, 0, 'plain', '', 0, 0, 'info'),
(26, 'ecomm-wc-navigation-survey', 'info', 'en_US', 'We’d like your feedback on the WooCommerce navigation', 'We’re making improvements to the WooCommerce navigation and would love your feedback. Share your experience in this 2 minute survey.', '{}', 'pending', 'woocommerce.com', '2022-10-13 15:44:52', NULL, 0, 'plain', '', 0, 0, 'info'),
(27, 'woocommerce-core-paypal-march-2022-updated', 'update', 'en_US', 'Security auto-update of WooCommerce', '<strong>Your store has been updated to the latest secure version of WooCommerce</strong>. We worked with WordPress to deploy PayPal Standard security updates for stores running WooCommerce (version 3.5 to 6.3). It’s recommended to disable PayPal Standard, and use <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">PayPal Payments</a> to accept PayPal.', '{}', 'pending', 'woocommerce.com', '2022-10-13 15:44:52', NULL, 0, 'plain', '', 0, 0, 'info'),
(28, 'woocommerce-core-paypal-march-2022-updated-nopp', 'update', 'en_US', 'Security auto-update of WooCommerce', '<strong>Your store has been updated to the latest secure version of WooCommerce</strong>. We worked with WordPress to deploy security updates related to PayPal Standard payment gateway for stores running WooCommerce (version 3.5 to 6.3).', '{}', 'pending', 'woocommerce.com', '2022-10-13 15:44:52', NULL, 0, 'plain', '', 0, 0, 'info'),
(29, 'pinterest_03_2022_update', 'marketing', 'en_US', 'Your Pinterest for WooCommerce plugin is out of date!', 'Update to the latest version of Pinterest for WooCommerce to continue using this plugin and keep your store connected with Pinterest. To update, visit <strong>Plugins &gt; Installed Plugins</strong>, and click on “update now” under Pinterest for WooCommerce.', '{}', 'pending', 'woocommerce.com', '2022-10-13 15:44:52', NULL, 0, 'plain', '', 0, 0, 'info'),
(30, 'store_setup_survey_survey_q2_2022', 'survey', 'en_US', 'How is your store setup going?', 'Our goal is to make sure you have all the right tools to start setting up your store in the smoothest way possible.\r\nWe’d love to know if we hit our mark and how we can improve. To collect your thoughts, we made a 2-minute survey.', '{}', 'pending', 'woocommerce.com', '2022-10-13 15:44:52', NULL, 0, 'plain', '', 0, 0, 'info'),
(31, 'wc-admin-wisepad3', 'marketing', 'en_US', 'Take your business on the go in Canada with WooCommerce In-Person Payments', 'Quickly create new orders, accept payment in person for orders placed online, and automatically sync your inventory – no matter where your business takes you. With WooCommerce In-Person Payments and the WisePad 3 card reader, you can bring the power of your store anywhere.', '{}', 'pending', 'woocommerce.com', '2022-10-13 15:44:52', NULL, 0, 'plain', '', 0, 0, 'info'),
(32, 'woocommerce-payments-august-2022-need-to-update', 'update', 'en_US', 'Action required: Please update WooCommerce Payments', 'An updated secure version of WooCommerce Payments is available – please ensure that you’re using the latest patch version. For more information on what action you need to take, please review the article below.', '{}', 'pending', 'woocommerce.com', '2022-10-13 15:44:52', NULL, 0, 'plain', '', 0, 0, 'info'),
(33, 'woocommerce-payments-august-2022-store-patched', 'update', 'en_US', 'WooCommerce Payments has been automatically updated', 'You’re now running the latest secure version of WooCommerce Payments. We’ve worked with the WordPress Plugins team to deploy a security update to stores running WooCommerce Payments (version 3.9 to 4.5). For further information, please review the article below.', '{}', 'pending', 'woocommerce.com', '2022-10-13 15:44:52', NULL, 0, 'plain', '', 0, 0, 'info'),
(34, 'shipping_category_q4_2022', 'marketing', 'en_US', 'Save time on shipping', 'Is your store all set to ship? Save valuable time (and money!) by automating your fulfillment process for the busiest shopping season. Explore our range of trusted shipping partners to get started.', '{}', 'unactioned', 'woocommerce.com', '2022-10-13 15:44:52', NULL, 0, 'plain', '', 0, 0, 'info'),
(35, 'wc-refund-returns-page', 'info', 'en_US', 'Setup a Refund and Returns Policy page to boost your store\'s credibility.', 'We have created a sample draft Refund and Returns Policy page for you. Please have a look and update it to fit your store.', '{}', 'unactioned', 'woocommerce-core', '2022-10-13 15:44:54', NULL, 0, 'plain', '', 0, 0, 'info'),
(36, 'wc-admin-wc-helper-connection', 'info', 'en_US', 'Connect to WooCommerce.com', 'Connect to get important product notifications and updates.', '{}', 'unactioned', 'woocommerce-admin', '2022-10-13 15:44:55', NULL, 0, 'plain', '', 0, 0, 'info'),
(37, 'wc-admin-add-first-product-note', 'email', 'en_US', 'Add your first product', '{greetings}<br /><br />Nice one; you\'ve created a WooCommerce store! Now it\'s time to add your first product and get ready to start selling.<br /><br />There are three ways to add your products: you can <strong>create products manually, import them at once via CSV file</strong>, or <strong>migrate them from another service</strong>.<br /><br /><a href=\"https://woocommerce.com/document/managing-products/?utm_source=help_panel&amp;utm_medium=product\">Explore our docs</a> for more information, or just get started!', '{\"role\":\"administrator\"}', 'unactioned', 'woocommerce-admin', '2022-10-18 10:42:35', NULL, 0, 'plain', 'http://EnduroCrossMotomix.sk/wp-content/plugins/woocommerce/images/admin_notes/dashboard-widget-setup.png', 0, 0, 'info'),
(38, 'wc-admin-adding-and-managing-products', 'info', 'en_US', 'Adding and Managing Products', 'Learn more about how to set up products in WooCommerce through our useful documentation about adding and managing products.', '{}', 'unactioned', 'woocommerce-admin', '2022-10-18 10:42:35', NULL, 0, 'plain', '', 0, 0, 'info'),
(39, 'wc-admin-choosing-a-theme', 'marketing', 'en_US', 'Choosing a theme?', 'Check out the themes that are compatible with WooCommerce and choose one aligned with your brand and business needs.', '{}', 'unactioned', 'woocommerce-admin', '2022-10-18 10:42:35', NULL, 0, 'plain', '', 0, 0, 'info'),
(40, 'wc-admin-insight-first-product-and-payment', 'survey', 'en_US', 'Insight', 'More than 80% of new merchants add the first product and have at least one payment method set up during the first week.<br><br>Do you find this type of insight useful?', '{}', 'unactioned', 'woocommerce-admin', '2022-10-18 10:42:35', NULL, 0, 'plain', '', 0, 0, 'info'),
(41, 'wc-admin-launch-checklist', 'info', 'en_US', 'Ready to launch your store?', 'To make sure you never get that sinking \"what did I forget\" feeling, we\'ve put together the essential pre-launch checklist.', '{}', 'unactioned', 'woocommerce-admin', '2022-10-18 10:42:35', NULL, 0, 'plain', '', 0, 0, 'info'),
(42, 'wc-admin-marketing-jetpack-backup', 'marketing', 'en_US', 'Protect your WooCommerce Store with Jetpack Backup.', 'Store downtime means lost sales. One-click restores get you back online quickly if something goes wrong.', '{}', 'unactioned', 'woocommerce-admin-notes', '2022-10-18 10:42:35', NULL, 0, 'thumbnail', 'http://EnduroCrossMotomix.sk/wp-content/plugins/woocommerce/assets/images/admin_notes/marketing-jetpack-2x.png', 0, 0, 'info'),
(43, 'wc-admin-mobile-app', 'info', 'en_US', 'Install Woo mobile app', 'Install the WooCommerce mobile app to manage orders, receive sales notifications, and view key metrics — wherever you are.', '{}', 'unactioned', 'woocommerce-admin', '2022-10-18 10:42:35', NULL, 0, 'plain', '', 0, 0, 'info'),
(44, 'wc-admin-update-store-details', 'info', 'en_US', 'Edit your store details if you need to', 'Nice work completing your store profile! You can always go back and edit the details you just shared, as needed.', '{}', 'unactioned', 'woocommerce-admin', '2022-10-18 10:42:35', NULL, 0, 'plain', '', 0, 0, 'info'),
(45, 'wc-admin-coupon-page-moved', 'update', 'en_US', 'Coupon management has moved!', 'Coupons can now be managed from Marketing &gt; Coupons. Click the button below to remove the legacy WooCommerce &gt; Coupons menu item.', '{}', 'unactioned', 'woocommerce-admin', '2022-10-18 15:41:13', NULL, 0, 'plain', '', 0, 0, 'info'),
(46, 'wc-admin-test-checkout', 'info', 'en_US', 'Don\'t forget to test your checkout', 'Make sure that your checkout is working properly before you launch your store. Go through your checkout process in its entirety: from adding a product to your cart, choosing a shipping location, and making a payment.', '{}', 'unactioned', 'woocommerce-admin', '2022-10-18 15:45:58', NULL, 0, 'plain', '', 0, 0, 'info'),
(47, 'wc-admin-customizing-product-catalog', 'info', 'en_US', 'How to customize your product catalog', 'You want your product catalog and images to look great and align with your brand. This guide will give you all the tips you need to get your products looking great in your store.', '{}', 'unactioned', 'woocommerce-admin', '2022-10-20 09:49:57', NULL, 0, 'plain', '', 0, 0, 'info');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_wc_admin_note_actions`
--

CREATE TABLE `wp_wc_admin_note_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actioned_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonce_action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nonce_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `wp_wc_admin_note_actions`
--

INSERT INTO `wp_wc_admin_note_actions` (`action_id`, `note_id`, `name`, `label`, `query`, `status`, `actioned_text`, `nonce_action`, `nonce_name`) VALUES
(41, 35, 'notify-refund-returns-page', 'Edit page', 'http://EnduroCrossMotomix.sk/wp-admin/post.php?post=41&action=edit', 'actioned', '', NULL, NULL),
(82, 36, 'connect', 'Connect', '?page=wc-addons&section=helper', 'unactioned', '', NULL, NULL),
(123, 37, 'add-first-product', 'Add a product', 'http://EnduroCrossMotomix.sk/wp-admin/admin.php?page=wc-admin&task=products', 'actioned', '', NULL, NULL),
(124, 38, 'learn-more', 'Learn more', 'https://woocommerce.com/document/managing-products/?utm_source=inbox&utm_medium=product', 'actioned', '', NULL, NULL),
(125, 39, 'visit-the-theme-marketplace', 'Visit the theme marketplace', 'https://woocommerce.com/product-category/themes/?utm_source=inbox&utm_medium=product', 'actioned', '', NULL, NULL),
(126, 40, 'affirm-insight-first-product-and-payment', 'Yes', '', 'actioned', 'Thanks for your feedback', NULL, NULL),
(127, 40, 'affirm-insight-first-product-and-payment', 'No', '', 'actioned', 'Thanks for your feedback', NULL, NULL),
(128, 41, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/pre-launch-checklist-the-essentials/?utm_source=inbox&utm_medium=product', 'actioned', '', NULL, NULL),
(129, 42, 'jetpack-backup-woocommerce', 'Get backups', 'https://jetpack.com/upgrade/backup-woocommerce/?utm_source=inbox&#038;utm_medium=automattic_referred&#038;utm_campaign=jp_backup_to_woo', 'actioned', '', NULL, NULL),
(130, 43, 'learn-more', 'Learn more', 'https://woocommerce.com/mobile/?utm_medium=product', 'actioned', '', NULL, NULL),
(131, 44, 'update-store-details', 'Update store details', 'http://EnduroCrossMotomix.sk/wp-admin/admin.php?page=wc-admin&path=/setup-wizard', 'actioned', '', NULL, NULL),
(172, 45, 'remove-legacy-coupon-menu', 'Remove legacy coupon menu', 'http://EnduroCrossMotomix.sk/wp-admin/admin.php?page=wc-admin&action=remove-coupon-menu', 'actioned', '', NULL, NULL),
(213, 46, 'test-checkout', 'Test checkout', 'http://EnduroCrossMotomix.sk/shop/', 'actioned', '', NULL, NULL),
(214, 47, 'day-after-first-product', 'Learn more', 'https://woocommerce.com/document/woocommerce-customizer/?utm_source=inbox&utm_medium=product', 'actioned', '', NULL, NULL),
(215, 1, 'browse_extensions', 'Browse extensions', 'http://EnduroCrossMotomix.sk/wp-admin/admin.php?page=wc-addons', 'unactioned', '', NULL, NULL),
(216, 2, 'wayflyer_bnpl_q4_2021', 'Level up with funding', 'https://woocommerce.com/products/wayflyer/?utm_source=inbox_note&utm_medium=product&utm_campaign=wayflyer_bnpl_q4_2021', 'actioned', '', NULL, NULL),
(217, 3, 'wc_shipping_mobile_app_usps_q4_2021', 'Get WooCommerce Shipping', 'https://woocommerce.com/woocommerce-shipping/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc_shipping_mobile_app_usps_q4_2021', 'actioned', '', NULL, NULL),
(218, 4, 'wc_shipping_mobile_app_q4_2021', 'Get the WooCommerce Mobile App', 'https://woocommerce.com/mobile/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc_shipping_mobile_app_q4_2021', 'actioned', '', NULL, NULL),
(219, 5, 'set-up-concierge', 'Schedule free session', 'https://wordpress.com/me/concierge', 'actioned', '', NULL, NULL),
(220, 6, 'learn-more', 'Learn more', 'https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox', 'unactioned', '', NULL, NULL),
(221, 7, 'learn-more-ecomm-unique-shopping-experience', 'Learn more', 'https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox', 'actioned', '', NULL, NULL),
(222, 8, 'watch-the-webinar', 'Watch the webinar', 'https://youtu.be/V_2XtCOyZ7o', 'actioned', '', NULL, NULL),
(223, 9, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/ecommerce-shipping-solutions-guide/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'actioned', '', NULL, NULL),
(224, 10, 'optimizing-the-checkout-flow', 'Learn more', 'https://woocommerce.com/posts/optimizing-woocommerce-checkout?utm_source=inbox_note&utm_medium=product&utm_campaign=optimizing-the-checkout-flow', 'actioned', '', NULL, NULL),
(225, 11, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/first-things-customize-woocommerce/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'unactioned', '', NULL, NULL),
(226, 12, 'qualitative-feedback-from-new-users', 'Share feedback', 'https://automattic.survey.fm/wc-pay-new', 'actioned', '', NULL, NULL),
(227, 13, 'share-feedback', 'Share feedback', 'http://automattic.survey.fm/paypal-feedback', 'unactioned', '', NULL, NULL),
(228, 14, 'get-started', 'Get started', 'https://woocommerce.com/products/google-listings-and-ads?utm_source=inbox_note&utm_medium=product&utm_campaign=get-started', 'actioned', '', NULL, NULL),
(229, 15, 'update-wc-subscriptions-3-0-15', 'View latest version', 'http://EnduroCrossMotomix.sk/wp-admin/&page=wc-addons&section=helper', 'actioned', '', NULL, NULL),
(230, 16, 'update-wc-core-5-4-0', 'How to update WooCommerce', 'https://docs.woocommerce.com/document/how-to-update-woocommerce/', 'actioned', '', NULL, NULL),
(231, 19, 'ppxo-pps-install-paypal-payments-1', 'View upgrade guide', 'https://docs.woocommerce.com/document/woocommerce-paypal-payments/paypal-payments-upgrade-guide/', 'actioned', '', NULL, NULL),
(232, 20, 'ppxo-pps-install-paypal-payments-2', 'View upgrade guide', 'https://docs.woocommerce.com/document/woocommerce-paypal-payments/paypal-payments-upgrade-guide/', 'actioned', '', NULL, NULL),
(233, 21, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'unactioned', '', NULL, NULL),
(234, 21, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(235, 22, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'unactioned', '', NULL, NULL),
(236, 22, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(237, 23, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'unactioned', '', NULL, NULL),
(238, 23, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(239, 24, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'unactioned', '', NULL, NULL),
(240, 24, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(241, 25, 'share-feedback', 'Share feedback', 'https://automattic.survey.fm/store-management', 'unactioned', '', NULL, NULL),
(242, 26, 'share-navigation-survey-feedback', 'Share feedback', 'https://automattic.survey.fm/feedback-on-woocommerce-navigation', 'actioned', '', NULL, NULL),
(243, 27, 'learn-more', 'Learn more', 'https://developer.woocommerce.com/2022/03/10/woocommerce-3-5-10-6-3-1-security-releases/', 'unactioned', '', NULL, NULL),
(244, 27, 'woocommerce-core-paypal-march-2022-dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(245, 28, 'learn-more', 'Learn more', 'https://developer.woocommerce.com/2022/03/10/woocommerce-3-5-10-6-3-1-security-releases/', 'unactioned', '', NULL, NULL),
(246, 28, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(247, 29, 'pinterest_03_2022_update', 'Update Instructions', 'https://woocommerce.com/document/pinterest-for-woocommerce/?utm_source=inbox_note&utm_medium=product&utm_campaign=pinterest_03_2022_update#section-3', 'actioned', '', NULL, NULL),
(248, 30, 'store_setup_survey_survey_q2_2022_share_your_thoughts', 'Tell us how it’s going', 'https://automattic.survey.fm/store-setup-survey-2022', 'actioned', '', NULL, NULL),
(249, 31, 'wc-admin-wisepad3', 'Grow my business offline', 'https://woocommerce.com/products/wisepad3-card-reader/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wisepad3', 'actioned', '', NULL, NULL),
(250, 32, 'learn-more', 'Find out more', 'https://developer.woocommerce.com/2022/08/09/woocommerce-payments-3-9-4-4-5-1-security-releases/', 'unactioned', '', NULL, NULL),
(251, 32, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(252, 33, 'learn-more', 'Find out more', 'https://developer.woocommerce.com/2022/08/09/woocommerce-payments-3-9-4-4-5-1-security-releases/', 'unactioned', '', NULL, NULL),
(253, 33, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(254, 34, 'shipping_category_q4_2022_click', 'Automate my shipping', 'https://woocommerce.com/product-category/woocommerce-extensions/shipping-delivery-and-fulfillment/?categoryIds=28685&collections=product&page=1&utm_source=inbox_note&utm_medium=product&utm_campaign=shipping_category_q4_2022_click', 'unactioned', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_wc_category_lookup`
--

CREATE TABLE `wp_wc_category_lookup` (
  `category_tree_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `wp_wc_category_lookup`
--

INSERT INTO `wp_wc_category_lookup` (`category_tree_id`, `category_id`) VALUES
(17, 17),
(18, 18);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_wc_customer_lookup`
--

CREATE TABLE `wp_wc_customer_lookup` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_wc_order_coupon_lookup`
--

CREATE TABLE `wp_wc_order_coupon_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_wc_order_product_lookup`
--

CREATE TABLE `wp_wc_order_product_lookup` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT 0,
  `product_gross_revenue` double NOT NULL DEFAULT 0,
  `coupon_amount` double NOT NULL DEFAULT 0,
  `tax_amount` double NOT NULL DEFAULT 0,
  `shipping_amount` double NOT NULL DEFAULT 0,
  `shipping_tax_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_wc_order_stats`
--

CREATE TABLE `wp_wc_order_stats` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT 0,
  `total_sales` double NOT NULL DEFAULT 0,
  `tax_total` double NOT NULL DEFAULT 0,
  `shipping_total` double NOT NULL DEFAULT 0,
  `net_total` double NOT NULL DEFAULT 0,
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_wc_order_tax_lookup`
--

CREATE TABLE `wp_wc_order_tax_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT 0,
  `order_tax` double NOT NULL DEFAULT 0,
  `total_tax` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_wc_product_attributes_lookup`
--

CREATE TABLE `wp_wc_product_attributes_lookup` (
  `product_id` bigint(20) NOT NULL,
  `product_or_parent_id` bigint(20) NOT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `term_id` bigint(20) NOT NULL,
  `is_variation_attribute` tinyint(1) NOT NULL,
  `in_stock` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_wc_product_download_directories`
--

CREATE TABLE `wp_wc_product_download_directories` (
  `url_id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `wp_wc_product_download_directories`
--

INSERT INTO `wp_wc_product_download_directories` (`url_id`, `url`, `enabled`) VALUES
(1, 'file://C:/xampp/xampp/htdocs/wordpress/wp-content/uploads/woocommerce_uploads/', 1),
(2, 'http://EnduroCrossMotomix.sk/wp-content/uploads/woocommerce_uploads/', 1);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_wc_product_meta_lookup`
--

CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT 0,
  `downloadable` tinyint(1) DEFAULT 0,
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT 0,
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT 0,
  `average_rating` decimal(3,2) DEFAULT 0.00,
  `total_sales` bigint(20) DEFAULT 0,
  `tax_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'taxable',
  `tax_class` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `wp_wc_product_meta_lookup`
--

INSERT INTO `wp_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`, `tax_status`, `tax_class`) VALUES
(43, '', 0, 0, '140.0000', '140.0000', 0, NULL, 'instock', 1, '4.00', 0, 'taxable', '');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_wc_rate_limits`
--

CREATE TABLE `wp_wc_rate_limits` (
  `rate_limit_id` bigint(20) UNSIGNED NOT NULL,
  `rate_limit_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate_limit_expiry` bigint(20) UNSIGNED NOT NULL,
  `rate_limit_remaining` smallint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_wc_reserved_stock`
--

CREATE TABLE `wp_wc_reserved_stock` (
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `stock_quantity` double NOT NULL DEFAULT 0,
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_wc_tax_rate_classes`
--

CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `wp_wc_tax_rate_classes`
--

INSERT INTO `wp_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Reduced rate', 'reduced-rate'),
(2, 'Zero rate', 'zero-rate');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT 0,
  `pending_delivery` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(11, 't_d421762ec9dfef439d3e8544fe05ba', 'a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:716:\"a:27:{s:2:\"id\";s:1:\"0\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"SK\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"SK\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:0:\"\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";}\";}', 1666293215),
(16, 't_9a2e7a0c5e193ea71503c189458850', 'a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:716:\"a:27:{s:2:\"id\";s:1:\"0\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"SK\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"SK\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:0:\"\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";}\";}', 1666293793),
(18, 't_f5b826c0eb5088d0240de94b2a3669', 'a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:716:\"a:27:{s:2:\"id\";s:1:\"0\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"SK\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"SK\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:0:\"\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";}\";}', 1666432193);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `wp_woocommerce_shipping_zones`
--

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'Slovakia', 0);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `wp_woocommerce_shipping_zone_locations`
--

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'SK', 'country');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `wp_woocommerce_shipping_zone_methods`
--

INSERT INTO `wp_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'free_shipping', 1, 1);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT 0,
  `tax_rate_shipping` int(1) NOT NULL DEFAULT 1,
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Kľúče pre exportované tabuľky
--

--
-- Indexy pre tabuľku `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`);

--
-- Indexy pre tabuľku `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Indexy pre tabuľku `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Indexy pre tabuľku `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Indexy pre tabuľku `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexy pre tabuľku `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexy pre tabuľku `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexy pre tabuľku `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexy pre tabuľku `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexy pre tabuľku `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexy pre tabuľku `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexy pre tabuľku `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexy pre tabuľku `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexy pre tabuľku `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexy pre tabuľku `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexy pre tabuľku `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexy pre tabuľku `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Indexy pre tabuľku `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `note_id` (`note_id`);

--
-- Indexy pre tabuľku `wp_wc_category_lookup`
--
ALTER TABLE `wp_wc_category_lookup`
  ADD PRIMARY KEY (`category_tree_id`,`category_id`);

--
-- Indexy pre tabuľku `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `email` (`email`);

--
-- Indexy pre tabuľku `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexy pre tabuľku `wp_wc_order_coupon_lookup`
--
ALTER TABLE `wp_wc_order_coupon_lookup`
  ADD PRIMARY KEY (`order_id`,`coupon_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexy pre tabuľku `wp_wc_order_product_lookup`
--
ALTER TABLE `wp_wc_order_product_lookup`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexy pre tabuľku `wp_wc_order_stats`
--
ALTER TABLE `wp_wc_order_stats`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `status` (`status`(191));

--
-- Indexy pre tabuľku `wp_wc_order_tax_lookup`
--
ALTER TABLE `wp_wc_order_tax_lookup`
  ADD PRIMARY KEY (`order_id`,`tax_rate_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexy pre tabuľku `wp_wc_product_attributes_lookup`
--
ALTER TABLE `wp_wc_product_attributes_lookup`
  ADD PRIMARY KEY (`product_or_parent_id`,`term_id`,`product_id`,`taxonomy`),
  ADD KEY `is_variation_attribute_term_id` (`is_variation_attribute`,`term_id`);

--
-- Indexy pre tabuľku `wp_wc_product_download_directories`
--
ALTER TABLE `wp_wc_product_download_directories`
  ADD PRIMARY KEY (`url_id`),
  ADD KEY `url` (`url`(191));

--
-- Indexy pre tabuľku `wp_wc_product_meta_lookup`
--
ALTER TABLE `wp_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Indexy pre tabuľku `wp_wc_rate_limits`
--
ALTER TABLE `wp_wc_rate_limits`
  ADD PRIMARY KEY (`rate_limit_id`),
  ADD UNIQUE KEY `rate_limit_key` (`rate_limit_key`(191));

--
-- Indexy pre tabuľku `wp_wc_reserved_stock`
--
ALTER TABLE `wp_wc_reserved_stock`
  ADD PRIMARY KEY (`order_id`,`product_id`);

--
-- Indexy pre tabuľku `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Indexy pre tabuľku `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexy pre tabuľku `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexy pre tabuľku `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexy pre tabuľku `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Indexy pre tabuľku `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexy pre tabuľku `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexy pre tabuľku `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexy pre tabuľku `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexy pre tabuľku `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexy pre tabuľku `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Indexy pre tabuľku `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexy pre tabuľku `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexy pre tabuľku `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexy pre tabuľku `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexy pre tabuľku `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT pre exportované tabuľky
--

--
-- AUTO_INCREMENT pre tabuľku `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT pre tabuľku `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT pre tabuľku `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pre tabuľku `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pre tabuľku `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pre tabuľku `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pre tabuľku `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pre tabuľku `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1100;

--
-- AUTO_INCREMENT pre tabuľku `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT pre tabuľku `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT pre tabuľku `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pre tabuľku `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pre tabuľku `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pre tabuľku `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT pre tabuľku `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pre tabuľku `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  MODIFY `note_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT pre tabuľku `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255;

--
-- AUTO_INCREMENT pre tabuľku `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pre tabuľku `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pre tabuľku `wp_wc_product_download_directories`
--
ALTER TABLE `wp_wc_product_download_directories`
  MODIFY `url_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pre tabuľku `wp_wc_rate_limits`
--
ALTER TABLE `wp_wc_rate_limits`
  MODIFY `rate_limit_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pre tabuľku `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pre tabuľku `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pre tabuľku `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pre tabuľku `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pre tabuľku `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pre tabuľku `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pre tabuľku `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pre tabuľku `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pre tabuľku `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pre tabuľku `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pre tabuľku `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pre tabuľku `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pre tabuľku `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pre tabuľku `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pre tabuľku `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pre tabuľku `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
