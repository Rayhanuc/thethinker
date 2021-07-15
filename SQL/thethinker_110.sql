-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2021 at 07:26 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thethinker`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-04-13 12:55:11', '2021-04-13 12:55:11', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/thethinker', 'yes'),
(2, 'home', 'http://localhost/thethinker', 'yes'),
(3, 'blogname', 'THE THINKER', 'yes'),
(4, 'blogdescription', 'Philosophy, Knowledge &amp; Power', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'rayhanctg4@gmail.com', 'yes'),
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
(22, 'posts_per_page', '5', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:91:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:41:\"admin-bar-disabler/admin-bar-disabler.php\";i:1;s:33:\"nav-menu-roles/nav-menu-roles.php\";i:2;s:35:\"paid-member-subscriptions/index.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'the-thinker-lite', 'yes'),
(41, 'stylesheet', 'the-thinker-lite', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'member', 'yes'),
(46, 'db_version', '49752', 'yes'),
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
(76, 'widget_categories', 'a:3:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}i:3;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
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
(91, 'admin_email_lifespan', '1633870506', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wp_user_roles', 'a:8:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:66:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:16:\"restrict_content\";b:1;s:10:\"list_roles\";b:1;s:12:\"create_roles\";b:1;s:12:\"delete_roles\";b:1;s:10:\"edit_roles\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:6:\"member\";a:2:{s:4:\"name\";s:6:\"Member\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:24:\"pms_subscription_plan_62\";a:2:{s:4:\"name\";s:16:\"Basic Membership\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:24:\"pms_subscription_plan_62\";b:1;}}s:24:\"pms_subscription_plan_63\";a:2:{s:4:\"name\";s:18:\"Premium Membership\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:24:\"pms_subscription_plan_63\";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_archives', 'a:3:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}i:3;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:4:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:10:\"archives-3\";i:3;s:12:\"categories-3\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(107, 'cron', 'a:9:{i:1626370285;a:1:{s:16:\"pms_review_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1626370290;a:4:{s:46:\"pms_cron_process_member_subscriptions_payments\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:29:\"pms_check_subscription_status\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:33:\"pms_cron_process_pending_payments\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"pms_remove_activation_key\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1626371712;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1626396912;a:1:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1626396913;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1626440112;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1626440137;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1626872112;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'recovery_keys', 'a:0:{}', 'yes'),
(119, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1618643072;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(120, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(121, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.7.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.7.2-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.7.2-partial-0.zip\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.7.2\";s:7:\"version\";s:5:\"5.7.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:3:\"5.7\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.7.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.7.2-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.7.2-partial-0.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.7.2-rollback-0.zip\";}s:7:\"current\";s:5:\"5.7.2\";s:7:\"version\";s:5:\"5.7.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:3:\"5.7\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1626368968;s:15:\"version_checked\";s:3:\"5.7\";s:12:\"translations\";a:0:{}}', 'no'),
(130, 'can_compress_scripts', '1', 'no'),
(133, 'finished_updating_comment_type', '1', 'yes'),
(142, 'recently_activated', 'a:0:{}', 'yes'),
(143, 'members_addons_migrated', '1', 'yes'),
(144, 'widget_members-widget-login', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(145, 'widget_members-widget-users', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(148, 'nav_menu_roles_db_version', '1.10.2', 'yes'),
(152, 'wppb_review_request_status', '8', 'yes'),
(153, 'wppb_old_add_ons_status', 'a:9:{s:42:\"pd-add-on-multiple-admin-e-mails/index.php\";b:0;s:41:\"pb-add-on-customization-toolbox/index.php\";b:0;s:44:\"pb-add-on-email-confirmation-field/index.php\";b:0;s:37:\"pb-add-on-placeholder-labels/pbpl.php\";b:0;s:78:\"pb-add-on-gdpr-communication-preferences/pb-gdpr-communication-preferences.php\";b:0;s:30:\"pb-add-on-labels-edit/pble.php\";b:0;s:44:\"pb-add-on-maximum-character-length/index.php\";b:0;s:48:\"pb-add-on-custom-css-classes-on-fields/index.php\";b:0;s:32:\"pb-add-on-import-export/pbie.php\";b:0;}', 'yes'),
(154, 'wppb_free_add_ons_settings', 'a:5:{s:30:\"gdpr-communication-preferences\";b:0;s:11:\"labels-edit\";b:0;s:24:\"maximum-character-length\";b:0;s:28:\"custom-css-classes-on-fields\";b:0;s:13:\"import-export\";b:0;}', 'yes'),
(155, 'wppb_toolbox_forms_settings', 'a:4:{s:9:\"ec-bypass\";a:0:{}s:29:\"restricted-email-domains-data\";a:0:{}s:32:\"restricted-email-domains-message\";s:81:\"The email address you are trying to register with is not allowed on this website.\";s:18:\"placeholder-labels\";s:0:\"\";}', 'yes'),
(156, 'wppb_toolbox_fields_settings', 'a:3:{s:23:\"restricted-words-fields\";a:0:{}s:21:\"restricted-words-data\";a:0:{}s:24:\"restricted-words-message\";s:38:\"Your submission contains banned words.\";}', 'yes'),
(157, 'wppb_toolbox_userlisting_settings', 'a:0:{}', 'yes'),
(158, 'wppb_toolbox_shortcodes_settings', 'a:0:{}', 'yes'),
(159, 'wppb_toolbox_admin_settings', 'a:2:{s:21:\"multiple-admin-emails\";s:0:\"\";s:12:\"admin-emails\";s:20:\"rayhanctg4@gmail.com\";}', 'yes'),
(160, 'widget_wppb-login-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(161, 'wppb_version', '3.4.2', 'yes'),
(162, 'wppb_manage_fields', 'a:8:{i:0;a:21:{s:2:\"id\";i:1;s:5:\"field\";s:24:\"Default - Name (Heading)\";s:9:\"meta-name\";s:0:\"\";s:11:\"field-title\";s:4:\"Name\";s:11:\"description\";s:0:\"\";s:8:\"required\";s:2:\"No\";s:18:\"overwrite-existing\";s:2:\"No\";s:9:\"row-count\";s:1:\"5\";s:24:\"allowed-image-extensions\";s:2:\".*\";s:25:\"allowed-upload-extensions\";s:2:\".*\";s:11:\"avatar-size\";s:3:\"100\";s:11:\"date-format\";s:8:\"mm/dd/yy\";s:18:\"terms-of-agreement\";s:0:\"\";s:7:\"options\";s:0:\"\";s:6:\"labels\";s:0:\"\";s:10:\"public-key\";s:0:\"\";s:11:\"private-key\";s:0:\"\";s:13:\"default-value\";s:0:\"\";s:14:\"default-option\";s:0:\"\";s:15:\"default-options\";s:0:\"\";s:15:\"default-content\";s:0:\"\";}i:1;a:21:{s:2:\"id\";i:2;s:5:\"field\";s:18:\"Default - Username\";s:9:\"meta-name\";s:0:\"\";s:11:\"field-title\";s:8:\"Username\";s:11:\"description\";s:0:\"\";s:8:\"required\";s:3:\"Yes\";s:18:\"overwrite-existing\";s:2:\"No\";s:9:\"row-count\";s:1:\"5\";s:24:\"allowed-image-extensions\";s:2:\".*\";s:25:\"allowed-upload-extensions\";s:2:\".*\";s:11:\"avatar-size\";s:3:\"100\";s:11:\"date-format\";s:8:\"mm/dd/yy\";s:18:\"terms-of-agreement\";s:0:\"\";s:7:\"options\";s:0:\"\";s:6:\"labels\";s:0:\"\";s:10:\"public-key\";s:0:\"\";s:11:\"private-key\";s:0:\"\";s:13:\"default-value\";s:0:\"\";s:14:\"default-option\";s:0:\"\";s:15:\"default-options\";s:0:\"\";s:15:\"default-content\";s:0:\"\";}i:2;a:21:{s:2:\"id\";i:3;s:5:\"field\";s:20:\"Default - First Name\";s:9:\"meta-name\";s:10:\"first_name\";s:11:\"field-title\";s:10:\"First Name\";s:11:\"description\";s:0:\"\";s:8:\"required\";s:2:\"No\";s:18:\"overwrite-existing\";s:2:\"No\";s:9:\"row-count\";s:1:\"5\";s:24:\"allowed-image-extensions\";s:2:\".*\";s:25:\"allowed-upload-extensions\";s:2:\".*\";s:11:\"avatar-size\";s:3:\"100\";s:11:\"date-format\";s:8:\"mm/dd/yy\";s:18:\"terms-of-agreement\";s:0:\"\";s:7:\"options\";s:0:\"\";s:6:\"labels\";s:0:\"\";s:10:\"public-key\";s:0:\"\";s:11:\"private-key\";s:0:\"\";s:13:\"default-value\";s:0:\"\";s:14:\"default-option\";s:0:\"\";s:15:\"default-options\";s:0:\"\";s:15:\"default-content\";s:0:\"\";}i:3;a:21:{s:2:\"id\";i:4;s:5:\"field\";s:19:\"Default - Last Name\";s:9:\"meta-name\";s:9:\"last_name\";s:11:\"field-title\";s:9:\"Last Name\";s:11:\"description\";s:0:\"\";s:8:\"required\";s:2:\"No\";s:18:\"overwrite-existing\";s:2:\"No\";s:9:\"row-count\";s:1:\"5\";s:24:\"allowed-image-extensions\";s:2:\".*\";s:25:\"allowed-upload-extensions\";s:2:\".*\";s:11:\"avatar-size\";s:3:\"100\";s:11:\"date-format\";s:8:\"mm/dd/yy\";s:18:\"terms-of-agreement\";s:0:\"\";s:7:\"options\";s:0:\"\";s:6:\"labels\";s:0:\"\";s:10:\"public-key\";s:0:\"\";s:11:\"private-key\";s:0:\"\";s:13:\"default-value\";s:0:\"\";s:14:\"default-option\";s:0:\"\";s:15:\"default-options\";s:0:\"\";s:15:\"default-content\";s:0:\"\";}i:4;a:21:{s:2:\"id\";i:8;s:5:\"field\";s:16:\"Default - E-mail\";s:9:\"meta-name\";s:0:\"\";s:11:\"field-title\";s:6:\"E-mail\";s:11:\"description\";s:0:\"\";s:8:\"required\";s:3:\"Yes\";s:18:\"overwrite-existing\";s:2:\"No\";s:9:\"row-count\";s:1:\"5\";s:24:\"allowed-image-extensions\";s:2:\".*\";s:25:\"allowed-upload-extensions\";s:2:\".*\";s:11:\"avatar-size\";s:3:\"100\";s:11:\"date-format\";s:8:\"mm/dd/yy\";s:18:\"terms-of-agreement\";s:0:\"\";s:7:\"options\";s:0:\"\";s:6:\"labels\";s:0:\"\";s:10:\"public-key\";s:0:\"\";s:11:\"private-key\";s:0:\"\";s:13:\"default-value\";s:0:\"\";s:14:\"default-option\";s:0:\"\";s:15:\"default-options\";s:0:\"\";s:15:\"default-content\";s:0:\"\";}i:5;a:51:{s:11:\"field-title\";s:18:\"Email Confirmation\";s:5:\"field\";s:18:\"Email Confirmation\";s:9:\"meta-name\";s:0:\"\";s:2:\"id\";s:2:\"14\";s:11:\"description\";s:0:\"\";s:9:\"row-count\";s:1:\"5\";s:24:\"allowed-image-extensions\";s:2:\".*\";s:13:\"simple-upload\";s:0:\"\";s:25:\"allowed-upload-extensions\";s:2:\".*\";s:11:\"avatar-size\";s:3:\"100\";s:11:\"date-format\";s:8:\"mm/dd/yy\";s:18:\"terms-of-agreement\";s:0:\"\";s:7:\"options\";s:0:\"\";s:6:\"labels\";s:0:\"\";s:14:\"recaptcha-type\";s:2:\"v2\";s:10:\"public-key\";s:0:\"\";s:11:\"private-key\";s:0:\"\";s:16:\"captcha-pb-forms\";s:11:\"pb_register\";s:16:\"captcha-wp-forms\";s:19:\"default_wp_register\";s:10:\"user-roles\";s:0:\"\";s:26:\"user-roles-on-edit-profile\";s:0:\"\";s:21:\"user-roles-sort-order\";s:49:\", editor, author, contributor, subscriber, member\";s:13:\"default-value\";s:0:\"\";s:14:\"default-option\";s:0:\"\";s:15:\"default-options\";s:0:\"\";s:22:\"default-option-country\";s:0:\"\";s:23:\"default-option-timezone\";s:32:\"(GMT -12:00) Eniwetok, Kwajalein\";s:23:\"default-option-currency\";s:1:\"0\";s:20:\"show-currency-symbol\";s:2:\"No\";s:3:\"cpt\";s:4:\"post\";s:26:\"validation-possible-values\";s:0:\"\";s:20:\"custom-error-message\";s:0:\"\";s:11:\"time-format\";s:2:\"12\";s:11:\"map-api-key\";s:0:\"\";s:15:\"map-default-lat\";s:2:\"48\";s:15:\"map-default-lng\";s:2:\"12\";s:16:\"map-default-zoom\";s:1:\"4\";s:10:\"map-height\";s:3:\"400\";s:15:\"default-content\";s:0:\"\";s:12:\"html-content\";s:0:\"\";s:12:\"phone-format\";s:14:\"(###) ###-####\";s:11:\"heading-tag\";s:2:\"h4\";s:16:\"min-number-value\";s:0:\"\";s:16:\"max-number-value\";s:0:\"\";s:17:\"number-step-value\";s:0:\"\";s:8:\"required\";s:3:\"Yes\";s:18:\"overwrite-existing\";s:2:\"No\";s:18:\"map-pins-load-type\";s:0:\"\";s:21:\"map-pagination-number\";s:2:\"50\";s:22:\"select2-multiple-limit\";s:0:\"\";s:21:\"select2-multiple-tags\";s:0:\"\";}i:6;a:21:{s:2:\"id\";i:12;s:5:\"field\";s:18:\"Default - Password\";s:9:\"meta-name\";s:0:\"\";s:11:\"field-title\";s:8:\"Password\";s:11:\"description\";s:0:\"\";s:8:\"required\";s:3:\"Yes\";s:18:\"overwrite-existing\";s:2:\"No\";s:9:\"row-count\";s:1:\"5\";s:24:\"allowed-image-extensions\";s:2:\".*\";s:25:\"allowed-upload-extensions\";s:2:\".*\";s:11:\"avatar-size\";s:3:\"100\";s:11:\"date-format\";s:8:\"mm/dd/yy\";s:18:\"terms-of-agreement\";s:0:\"\";s:7:\"options\";s:0:\"\";s:6:\"labels\";s:0:\"\";s:10:\"public-key\";s:0:\"\";s:11:\"private-key\";s:0:\"\";s:13:\"default-value\";s:0:\"\";s:14:\"default-option\";s:0:\"\";s:15:\"default-options\";s:0:\"\";s:15:\"default-content\";s:0:\"\";}i:7;a:21:{s:2:\"id\";i:13;s:5:\"field\";s:25:\"Default - Repeat Password\";s:9:\"meta-name\";s:0:\"\";s:11:\"field-title\";s:15:\"Repeat Password\";s:11:\"description\";s:0:\"\";s:8:\"required\";s:3:\"Yes\";s:18:\"overwrite-existing\";s:2:\"No\";s:9:\"row-count\";s:1:\"5\";s:24:\"allowed-image-extensions\";s:2:\".*\";s:25:\"allowed-upload-extensions\";s:2:\".*\";s:11:\"avatar-size\";s:3:\"100\";s:11:\"date-format\";s:8:\"mm/dd/yy\";s:18:\"terms-of-agreement\";s:0:\"\";s:7:\"options\";s:0:\"\";s:6:\"labels\";s:0:\"\";s:10:\"public-key\";s:0:\"\";s:11:\"private-key\";s:0:\"\";s:13:\"default-value\";s:0:\"\";s:14:\"default-option\";s:0:\"\";s:15:\"default-options\";s:0:\"\";s:15:\"default-content\";s:0:\"\";}}', 'yes'),
(163, 'wppb_general_settings', 'a:8:{s:17:\"extraFieldsLayout\";s:7:\"default\";s:18:\"automaticallyLogIn\";s:2:\"No\";s:17:\"emailConfirmation\";s:2:\"no\";s:21:\"activationLandingPage\";s:0:\"\";s:11:\"rolesEditor\";s:2:\"no\";s:9:\"loginWith\";s:13:\"usernameemail\";s:23:\"minimum_password_length\";s:1:\"6\";s:25:\"minimum_password_strength\";s:4:\"good\";}', 'yes'),
(165, 'wppb_module_settings', 'a:6:{s:16:\"wppb_userListing\";s:4:\"hide\";s:19:\"wppb_customRedirect\";s:4:\"hide\";s:20:\"wppb_emailCustomizer\";s:4:\"hide\";s:29:\"wppb_multipleEditProfileForms\";s:4:\"hide\";s:30:\"wppb_multipleRegistrationForms\";s:4:\"hide\";s:19:\"wppb_repeaterFields\";s:4:\"hide\";}', 'yes'),
(168, 'WPLANG', '', 'yes'),
(169, 'new_admin_email', 'rayhanctg4@gmail.com', 'yes'),
(184, 'wppb_display_admin_settings', 'a:6:{s:13:\"Administrator\";s:7:\"default\";s:6:\"Editor\";s:7:\"default\";s:6:\"Author\";s:7:\"default\";s:11:\"Contributor\";s:7:\"default\";s:10:\"Subscriber\";s:7:\"default\";s:6:\"Member\";s:4:\"hide\";}', 'yes'),
(187, 'wppb_pages_created', 'true', 'yes'),
(194, '_transient_health-check-site-status-result', '{\"good\":\"12\",\"recommended\":\"5\",\"critical\":\"3\"}', 'yes'),
(238, 'wppb_content_restriction_settings', 'a:7:{s:18:\"contentRestriction\";s:3:\"yes\";s:13:\"restrict_type\";s:7:\"message\";s:12:\"redirect_url\";s:0:\"\";s:18:\"message_logged_out\";s:161:\"You must be <a href=\"http://localhost/thethinker/log-in/\">logged in</a> and <a href=\"http://localhost/thethinker/register/\">be a member</a> to view this content.\";s:17:\"message_logged_in\";s:46:\"This content is restricted for your user role.\";s:12:\"post_preview\";s:12:\"trim-content\";s:19:\"post_preview_length\";s:2:\"60\";}', 'yes'),
(263, 'current_theme', 'The Thinker Lite', 'yes'),
(264, 'theme_mods_the-thinker-lite', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:41;}', 'yes'),
(265, 'theme_switched', '', 'yes'),
(278, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(307, 'category_children', 'a:0:{}', 'yes'),
(370, 'pms_payments_home_url', '$2y$10$hryzivuWeep6hCc6rUsdQ.IhBIRvzMzyRRsUk9DvZNnl0JNCErwUG', 'yes'),
(371, 'pms_review_request_status', '0', 'yes'),
(376, 'pms_general_settings', 'a:7:{s:11:\"use_pms_css\";s:1:\"1\";s:20:\"automatically_log_in\";s:1:\"1\";s:21:\"register_success_page\";i:59;s:10:\"login_page\";i:-1;s:13:\"register_page\";i:-1;s:12:\"account_page\";i:-1;s:18:\"lost_password_page\";i:-1;}', 'yes'),
(377, 'pms_payments_settings', 'a:7:{s:9:\"test_mode\";s:1:\"1\";s:8:\"currency\";s:3:\"USD\";s:17:\"currency_position\";s:6:\"before\";s:20:\"price-display-format\";s:28:\"without_insignificant_zeroes\";s:16:\"active_pay_gates\";a:1:{i:0;s:15:\"paypal_standard\";}s:23:\"default_payment_gateway\";s:15:\"paypal_standard\";s:8:\"gateways\";a:1:{s:15:\"paypal_standard\";a:3:{s:13:\"email_address\";s:0:\"\";s:4:\"name\";s:6:\"PayPal\";s:18:\"test_email_address\";s:0:\"\";}}}', 'yes'),
(378, 'pms_content_restriction_settings', 'a:3:{s:10:\"logged_out\";s:43:\"You must be logged in to view this content.\";s:11:\"non_members\";s:53:\"This content is restricted for your membership level.\";s:21:\"content_restrict_type\";s:7:\"message\";}', 'yes'),
(379, 'pms_emails_settings', 'a:36:{s:15:\"email-from-name\";s:11:\"THE THINKER\";s:16:\"email-from-email\";s:20:\"rayhanctg4@gmail.com\";s:19:\"register_is_enabled\";s:3:\"yes\";s:20:\"register_sub_subject\";s:22:\"You have a new account\";s:12:\"register_sub\";s:75:\"Congratulations {{display_name}}! You have successfully created an account!\";s:19:\"activate_is_enabled\";s:3:\"yes\";s:20:\"activate_sub_subject\";s:31:\"Your Subscription is now active\";s:12:\"activate_sub\";s:99:\"Congratulations {{display_name}}! The \"{{subscription_name}}\" plan has been successfully activated.\";s:17:\"cancel_is_enabled\";s:3:\"yes\";s:18:\"cancel_sub_subject\";s:35:\"Your Subscription has been canceled\";s:10:\"cancel_sub\";s:75:\"Hello {{display_name}}, The \"{{subscription_name}}\" plan has been canceled.\";s:18:\"expired_is_enabled\";s:3:\"yes\";s:19:\"expired_sub_subject\";s:29:\"Your Subscription has expired\";s:11:\"expired_sub\";s:69:\"Hello {{display_name}}, The \"{{subscription_name}}\" plan has expired.\";s:25:\"payment_failed_is_enabled\";s:3:\"yes\";s:26:\"payment_failed_sub_subject\";s:30:\"Your latest payment has failed\";s:18:\"payment_failed_sub\";s:202:\"Your latest payment for the \"{{subscription_name}}\" plan has failed. You can go to the <a href=\"{{account_page_url}}\">account page</a> and login in order to try again.<br><br>{{automatic_retry_message}}\";s:16:\"renew_is_enabled\";s:3:\"yes\";s:17:\"renew_sub_subject\";s:29:\"Your Subscription was renewed\";s:9:\"renew_sub\";s:74:\"Hello {{display_name}}, The \"{{subscription_name}}\" plan has been renewed.\";s:12:\"admin_emails\";s:0:\"\";s:25:\"register_admin_is_enabled\";s:3:\"yes\";s:26:\"register_sub_subject_admin\";s:41:\"A New User has registered to your website\";s:18:\"register_sub_admin\";s:45:\"{{display_name}} has just created an account!\";s:25:\"activate_admin_is_enabled\";s:3:\"yes\";s:26:\"activate_sub_subject_admin\";s:35:\"A Member Subscription is now active\";s:18:\"activate_sub_admin\";s:91:\"The \"{{subscription_name}}\" plan has been successfully activated for user {{display_name}}.\";s:23:\"cancel_admin_is_enabled\";s:3:\"yes\";s:24:\"cancel_sub_subject_admin\";s:39:\"A Member Subscription has been canceled\";s:16:\"cancel_sub_admin\";s:77:\"The \"{{subscription_name}}\" plan has been canceled for user {{display_name}}.\";s:24:\"expired_admin_is_enabled\";s:3:\"yes\";s:25:\"expired_sub_subject_admin\";s:33:\"A Member Subscription has expired\";s:17:\"expired_sub_admin\";s:71:\"The \"{{subscription_name}}\" plan has expired for user {{display_name}}.\";s:22:\"renew_admin_is_enabled\";s:3:\"yes\";s:23:\"renew_sub_subject_admin\";s:33:\"A Member Subscription was renewed\";s:15:\"renew_sub_admin\";s:71:\"The \"{{subscription_name}}\" plan was renewed for user {{display_name}}.\";}', 'yes'),
(380, 'pms_already_installed', 'yes', 'no'),
(381, 'pms_version', '2.3.4', 'yes'),
(382, 'pms_api_failed_attempts', 'a:1:{i:1;a:1:{i:2;a:1:{s:7:\"retries\";a:0:{}}}}', 'no'),
(383, 'pms_already_checked_attempts', 'yes', 'yes'),
(390, 'pms_admin_notice_usage_tracking', '1', 'yes'),
(417, '_site_transient_timeout_php_check_c6e81a88aa62f0eea87d84f96662ea28', '1626874202', 'no'),
(418, '_site_transient_php_check_c6e81a88aa62f0eea87d84f96662ea28', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:0;s:13:\"is_acceptable\";b:0;}', 'no'),
(419, '_site_transient_timeout_browser_7f65ff317c237641f7aace3b7dac03d6', '1626874313', 'no'),
(420, '_site_transient_browser_7f65ff317c237641f7aace3b7dac03d6', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"91.0.4472.124\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(452, 'admin_bar_disabler_disable_all', '', 'yes'),
(453, 'admin_bar_disabler_whitelist_roles', 'a:1:{i:0;s:13:\"administrator\";}', 'yes'),
(454, 'admin_bar_disabler_whitelist_caps', '', 'yes'),
(455, 'admin_bar_disabler_blacklist_roles', '', 'yes'),
(456, 'admin_bar_disabler_blacklist_caps', '', 'yes'),
(463, '_transient_is_multi_author', '0', 'yes'),
(465, '_site_transient_timeout_theme_roots', '1626370771', 'no'),
(466, '_site_transient_theme_roots', 'a:4:{s:16:\"the-thinker-lite\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no'),
(467, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1626368975;s:7:\"checked\";a:4:{s:16:\"the-thinker-lite\";s:5:\"1.1.6\";s:14:\"twentynineteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.7\";s:15:\"twentytwentyone\";s:3:\"1.2\";}s:8:\"response\";a:1:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.3.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:3:{s:16:\"the-thinker-lite\";a:6:{s:5:\"theme\";s:16:\"the-thinker-lite\";s:11:\"new_version\";s:5:\"1.1.6\";s:3:\"url\";s:46:\"https://wordpress.org/themes/the-thinker-lite/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/theme/the-thinker-lite.1.1.6.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";b:0;}s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.0.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.7.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(468, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1626368977;s:7:\"checked\";a:5:{s:41:\"admin-bar-disabler/admin-bar-disabler.php\";s:5:\"1.4.1\";s:19:\"members/members.php\";s:5:\"3.1.5\";s:33:\"nav-menu-roles/nav-menu-roles.php\";s:5:\"2.0.1\";s:35:\"paid-member-subscriptions/index.php\";s:5:\"2.3.4\";s:25:\"profile-builder/index.php\";s:5:\"3.4.2\";}s:8:\"response\";a:2:{s:35:\"paid-member-subscriptions/index.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:39:\"w.org/plugins/paid-member-subscriptions\";s:4:\"slug\";s:25:\"paid-member-subscriptions\";s:6:\"plugin\";s:35:\"paid-member-subscriptions/index.php\";s:11:\"new_version\";s:5:\"2.4.1\";s:3:\"url\";s:56:\"https://wordpress.org/plugins/paid-member-subscriptions/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/paid-member-subscriptions.2.4.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/paid-member-subscriptions/assets/icon-256x256.png?rev=2257598\";s:2:\"1x\";s:78:\"https://ps.w.org/paid-member-subscriptions/assets/icon-128x128.png?rev=2257598\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/paid-member-subscriptions/assets/banner-1544x500.png?rev=2257598\";s:2:\"1x\";s:80:\"https://ps.w.org/paid-member-subscriptions/assets/banner-772x250.png?rev=2257598\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.1\";s:6:\"tested\";s:5:\"5.7.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:25:\"profile-builder/index.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:29:\"w.org/plugins/profile-builder\";s:4:\"slug\";s:15:\"profile-builder\";s:6:\"plugin\";s:25:\"profile-builder/index.php\";s:11:\"new_version\";s:5:\"3.4.9\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/profile-builder/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/profile-builder.3.4.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/profile-builder/assets/icon-256x256.png?rev=2257592\";s:2:\"1x\";s:68:\"https://ps.w.org/profile-builder/assets/icon-128x128.png?rev=2257592\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/profile-builder/assets/banner-1544x500.png?rev=2257594\";s:2:\"1x\";s:70:\"https://ps.w.org/profile-builder/assets/banner-772x250.png?rev=2257592\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.1\";s:6:\"tested\";s:5:\"5.7.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:41:\"admin-bar-disabler/admin-bar-disabler.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:32:\"w.org/plugins/admin-bar-disabler\";s:4:\"slug\";s:18:\"admin-bar-disabler\";s:6:\"plugin\";s:41:\"admin-bar-disabler/admin-bar-disabler.php\";s:11:\"new_version\";s:5:\"1.4.1\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/admin-bar-disabler/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/admin-bar-disabler.1.4.1.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:62:\"https://s.w.org/plugins/geopattern-icon/admin-bar-disabler.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.1\";}s:19:\"members/members.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/members\";s:4:\"slug\";s:7:\"members\";s:6:\"plugin\";s:19:\"members/members.php\";s:11:\"new_version\";s:5:\"3.1.5\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/members/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/members.3.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/members/assets/icon-256x256.png?rev=2503334\";s:2:\"1x\";s:60:\"https://ps.w.org/members/assets/icon-128x128.png?rev=2503334\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/members/assets/banner-1544x500.jpg?rev=2503334\";s:2:\"1x\";s:62:\"https://ps.w.org/members/assets/banner-772x250.jpg?rev=2503334\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:33:\"nav-menu-roles/nav-menu-roles.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/nav-menu-roles\";s:4:\"slug\";s:14:\"nav-menu-roles\";s:6:\"plugin\";s:33:\"nav-menu-roles/nav-menu-roles.php\";s:11:\"new_version\";s:5:\"2.0.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/nav-menu-roles/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/nav-menu-roles.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/nav-menu-roles/assets/icon-256x256.png?rev=2336319\";s:2:\"1x\";s:67:\"https://ps.w.org/nav-menu-roles/assets/icon-128x128.png?rev=2336319\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/nav-menu-roles/assets/banner-1544x500.png?rev=2336319\";s:2:\"1x\";s:69:\"https://ps.w.org/nav-menu-roles/assets/banner-772x250.png?rev=2336319\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"4.5.0\";}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_pms_member_subscriptionmeta`
--

CREATE TABLE `wp_pms_member_subscriptionmeta` (
  `meta_id` bigint(20) NOT NULL,
  `member_subscription_id` bigint(20) NOT NULL DEFAULT '0',
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_pms_member_subscriptions`
--

CREATE TABLE `wp_pms_member_subscriptions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `subscription_plan_id` bigint(20) NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `expiration_date` datetime DEFAULT NULL,
  `status` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_profile_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_gateway` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_amount` float NOT NULL,
  `billing_duration` int(10) NOT NULL,
  `billing_duration_unit` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_cycles` int(10) NOT NULL,
  `billing_next_payment` datetime DEFAULT NULL,
  `billing_last_payment` datetime DEFAULT NULL,
  `trial_end` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_pms_paymentmeta`
--

CREATE TABLE `wp_pms_paymentmeta` (
  `meta_id` bigint(20) NOT NULL,
  `payment_id` bigint(20) NOT NULL DEFAULT '0',
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_pms_payments`
--

CREATE TABLE `wp_pms_payments` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `subscription_plan_id` bigint(20) NOT NULL,
  `status` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime DEFAULT NULL,
  `amount` float NOT NULL,
  `payment_gateway` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logs` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_code` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(9, 9, '_edit_lock', '1618486979:1'),
(10, 12, '_edit_lock', '1618573392:1'),
(11, 13, '_wp_attached_file', '2021/04/alcohol-blur-cuisine-390403.jpg'),
(12, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1919;s:6:\"height\";i:1238;s:4:\"file\";s:39:\"2021/04/alcohol-blur-cuisine-390403.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"alcohol-blur-cuisine-390403-300x194.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:194;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:40:\"alcohol-blur-cuisine-390403-1024x661.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:661;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"alcohol-blur-cuisine-390403-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:39:\"alcohol-blur-cuisine-390403-768x495.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:495;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:40:\"alcohol-blur-cuisine-390403-1536x991.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:991;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:41:\"alcohol-blur-cuisine-390403-1568x1012.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:1012;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(15, 12, '_thumbnail_id', '13'),
(16, 12, '_edit_last', '1'),
(18, 15, '_edit_lock', '1618567217:1'),
(19, 16, '_wp_attached_file', '2021/04/beef-delicious-dinner-769289.jpg'),
(20, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1279;s:4:\"file\";s:40:\"2021/04/beef-delicious-dinner-769289.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"beef-delicious-dinner-769289-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:41:\"beef-delicious-dinner-769289-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"beef-delicious-dinner-769289-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:40:\"beef-delicious-dinner-769289-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:42:\"beef-delicious-dinner-769289-1536x1023.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1023;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:42:\"beef-delicious-dinner-769289-1568x1045.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:1045;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(23, 15, '_thumbnail_id', '16'),
(24, 15, '_edit_last', '1'),
(25, 18, '_edit_lock', '1618590207:1'),
(26, 19, '_wp_attached_file', '2021/04/pexels-photo-26731-medium.jpg'),
(27, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:525;s:6:\"height\";i:350;s:4:\"file\";s:37:\"2021/04/pexels-photo-26731-medium.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"pexels-photo-26731-medium-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"pexels-photo-26731-medium-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(30, 18, '_thumbnail_id', '19'),
(31, 18, '_edit_last', '1'),
(37, 22, '_edit_lock', '1618573819:1'),
(38, 22, '_edit_last', '1'),
(39, 24, '_edit_lock', '1618580444:1'),
(40, 25, '_wp_attached_file', '2021/04/paul-green-gOHfFgwyDNM-unsplash-scaled.jpg'),
(41, 25, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1707;s:6:\"height\";i:2560;s:4:\"file\";s:50:\"2021/04/paul-green-gOHfFgwyDNM-unsplash-scaled.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"paul-green-gOHfFgwyDNM-unsplash-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:44:\"paul-green-gOHfFgwyDNM-unsplash-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"paul-green-gOHfFgwyDNM-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"paul-green-gOHfFgwyDNM-unsplash-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:45:\"paul-green-gOHfFgwyDNM-unsplash-1024x1536.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:45:\"paul-green-gOHfFgwyDNM-unsplash-1365x2048.jpg\";s:5:\"width\";i:1365;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:45:\"paul-green-gOHfFgwyDNM-unsplash-1568x2352.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:2352;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:35:\"paul-green-gOHfFgwyDNM-unsplash.jpg\";}'),
(42, 26, '_wp_attached_file', '2021/04/markus-spiske-WUehAgqO5hE-unsplash-scaled.jpg'),
(43, 26, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:53:\"2021/04/markus-spiske-WUehAgqO5hE-unsplash-scaled.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"markus-spiske-WUehAgqO5hE-unsplash-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:47:\"markus-spiske-WUehAgqO5hE-unsplash-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"markus-spiske-WUehAgqO5hE-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:46:\"markus-spiske-WUehAgqO5hE-unsplash-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:48:\"markus-spiske-WUehAgqO5hE-unsplash-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:48:\"markus-spiske-WUehAgqO5hE-unsplash-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:48:\"markus-spiske-WUehAgqO5hE-unsplash-1568x1045.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:1045;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:38:\"markus-spiske-WUehAgqO5hE-unsplash.jpg\";}'),
(44, 27, '_wp_attached_file', '2021/04/kevin-mueller-Q-fL04RhuMg-unsplash-scaled.jpg'),
(45, 27, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:53:\"2021/04/kevin-mueller-Q-fL04RhuMg-unsplash-scaled.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"kevin-mueller-Q-fL04RhuMg-unsplash-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:47:\"kevin-mueller-Q-fL04RhuMg-unsplash-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"kevin-mueller-Q-fL04RhuMg-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:46:\"kevin-mueller-Q-fL04RhuMg-unsplash-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:48:\"kevin-mueller-Q-fL04RhuMg-unsplash-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:48:\"kevin-mueller-Q-fL04RhuMg-unsplash-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:48:\"kevin-mueller-Q-fL04RhuMg-unsplash-1568x1045.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:1045;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:38:\"kevin-mueller-Q-fL04RhuMg-unsplash.jpg\";}'),
(46, 28, '_wp_attached_file', '2021/04/john-arano-h4i9G-de7Po-unsplash-scaled.jpg'),
(47, 28, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1709;s:4:\"file\";s:50:\"2021/04/john-arano-h4i9G-de7Po-unsplash-scaled.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"john-arano-h4i9G-de7Po-unsplash-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:44:\"john-arano-h4i9G-de7Po-unsplash-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"john-arano-h4i9G-de7Po-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:43:\"john-arano-h4i9G-de7Po-unsplash-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:45:\"john-arano-h4i9G-de7Po-unsplash-1536x1025.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:45:\"john-arano-h4i9G-de7Po-unsplash-2048x1367.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1367;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:45:\"john-arano-h4i9G-de7Po-unsplash-1568x1047.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:1047;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:35:\"john-arano-h4i9G-de7Po-unsplash.jpg\";}'),
(48, 29, '_wp_attached_file', '2021/04/gentrit-sylejmani-JjUyjE-oEbM-unsplash-scaled.jpg'),
(49, 29, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:57:\"2021/04/gentrit-sylejmani-JjUyjE-oEbM-unsplash-scaled.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:50:\"gentrit-sylejmani-JjUyjE-oEbM-unsplash-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:51:\"gentrit-sylejmani-JjUyjE-oEbM-unsplash-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"gentrit-sylejmani-JjUyjE-oEbM-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:50:\"gentrit-sylejmani-JjUyjE-oEbM-unsplash-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:52:\"gentrit-sylejmani-JjUyjE-oEbM-unsplash-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:52:\"gentrit-sylejmani-JjUyjE-oEbM-unsplash-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:52:\"gentrit-sylejmani-JjUyjE-oEbM-unsplash-1568x1045.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:1045;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:42:\"gentrit-sylejmani-JjUyjE-oEbM-unsplash.jpg\";}'),
(52, 24, '_thumbnail_id', '29'),
(53, 24, '_edit_last', '1'),
(55, 31, '_edit_lock', '1618580832:1'),
(58, 31, '_thumbnail_id', '28'),
(59, 31, '_edit_last', '1'),
(60, 33, '_edit_lock', '1618581028:1'),
(63, 33, '_thumbnail_id', '27'),
(64, 33, '_edit_last', '1'),
(67, 35, '_edit_lock', '1618766757:1'),
(70, 35, '_thumbnail_id', '26'),
(71, 35, '_edit_last', '1'),
(74, 37, '_edit_lock', '1618643748:1'),
(75, 38, '_wp_attached_file', '2021/04/hoarfrost-4739176_1920.jpg'),
(76, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1076;s:4:\"file\";s:34:\"2021/04/hoarfrost-4739176_1920.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"hoarfrost-4739176_1920-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"hoarfrost-4739176_1920-1024x574.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:574;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"hoarfrost-4739176_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"hoarfrost-4739176_1920-768x430.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:430;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:35:\"hoarfrost-4739176_1920-1536x861.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:861;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:35:\"hoarfrost-4739176_1920-1568x879.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:879;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(79, 37, '_thumbnail_id', '38'),
(80, 37, '_edit_last', '1'),
(86, 37, 'wppb-content-restrict-user-status', 'loggedin'),
(87, 37, 'wppb-content-restrict-custom-redirect-url', ''),
(88, 37, 'wppb-content-restrict-message-logged_out', 'Want to read more about this very interesting topic? You need to become a member.'),
(89, 37, 'wppb-content-restrict-message-logged_in', ''),
(109, 37, 'wppb-content-restrict-type', 'default'),
(110, 37, 'wppb-content-restrict-user-role', 'administrator'),
(111, 37, 'wppb-content-restrict-user-role', 'member'),
(112, 37, 'wppb-content-restrict-messages-enabled', 'yes'),
(115, 41, '_wp_attached_file', '2021/04/cropped-kevin-mueller-Q-fL04RhuMg-unsplash-scaled-1-scaled-e1618647998541.jpg'),
(116, 41, '_wp_attachment_context', 'custom-logo'),
(117, 41, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:222;s:6:\"height\";i:109;s:4:\"file\";s:85:\"2021/04/cropped-kevin-mueller-Q-fL04RhuMg-unsplash-scaled-1-scaled-e1618647998541.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:63:\"cropped-kevin-mueller-Q-fL04RhuMg-unsplash-scaled-1-300x148.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:148;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:64:\"cropped-kevin-mueller-Q-fL04RhuMg-unsplash-scaled-1-1024x504.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:504;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:63:\"cropped-kevin-mueller-Q-fL04RhuMg-unsplash-scaled-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:63:\"cropped-kevin-mueller-Q-fL04RhuMg-unsplash-scaled-1-768x378.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:378;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:64:\"cropped-kevin-mueller-Q-fL04RhuMg-unsplash-scaled-1-1536x755.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:755;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:65:\"cropped-kevin-mueller-Q-fL04RhuMg-unsplash-scaled-1-2048x1007.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1007;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:55:\"cropped-kevin-mueller-Q-fL04RhuMg-unsplash-scaled-1.jpg\";}'),
(121, 41, '_edit_lock', '1618735183:1'),
(122, 41, '_wp_attachment_backup_sizes', 'a:1:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:2560;s:6:\"height\";i:1259;s:4:\"file\";s:62:\"cropped-kevin-mueller-Q-fL04RhuMg-unsplash-scaled-1-scaled.jpg\";}}'),
(123, 41, '_edit_last', '1'),
(124, 41, 'wppb-content-restrict-type', 'default'),
(125, 41, 'wppb-content-restrict-custom-redirect-url', ''),
(126, 41, 'wppb-content-restrict-message-logged_out', ''),
(127, 41, 'wppb-content-restrict-message-logged_in', ''),
(128, 41, '_oembed_f5f8516e2256087703921729f4b2508a', '{{unknown}}'),
(131, 44, '_menu_item_type', 'post_type'),
(132, 44, '_menu_item_menu_item_parent', '0'),
(133, 44, '_menu_item_object_id', '10'),
(134, 44, '_menu_item_object', 'page'),
(135, 44, '_menu_item_target', ''),
(136, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(137, 44, '_menu_item_xfn', ''),
(138, 44, '_menu_item_url', ''),
(140, 45, '_menu_item_type', 'post_type'),
(141, 45, '_menu_item_menu_item_parent', '0'),
(142, 45, '_menu_item_object_id', '9'),
(143, 45, '_menu_item_object', 'page'),
(144, 45, '_menu_item_target', ''),
(145, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(146, 45, '_menu_item_xfn', ''),
(147, 45, '_menu_item_url', ''),
(149, 46, '_menu_item_type', 'post_type'),
(150, 46, '_menu_item_menu_item_parent', '0'),
(151, 46, '_menu_item_object_id', '8'),
(152, 46, '_menu_item_object', 'page'),
(153, 46, '_menu_item_target', ''),
(154, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(155, 46, '_menu_item_xfn', ''),
(156, 46, '_menu_item_url', ''),
(158, 44, '_nav_menu_role', 'out'),
(159, 45, '_nav_menu_role', 'a:2:{i:1;s:13:\"administrator\";i:6;s:6:\"member\";}'),
(160, 46, '_nav_menu_role', 'out'),
(161, 47, '_menu_item_type', 'custom'),
(162, 47, '_menu_item_menu_item_parent', '0'),
(163, 47, '_menu_item_object_id', '47'),
(164, 47, '_menu_item_object', 'custom'),
(165, 47, '_menu_item_target', ''),
(166, 47, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(167, 47, '_menu_item_xfn', ''),
(168, 47, '_menu_item_url', 'http://localhost/thethinker/wp-login.php?action=logout'),
(170, 44, '_wp_old_date', '2021-04-17'),
(171, 45, '_wp_old_date', '2021-04-17'),
(172, 46, '_wp_old_date', '2021-04-17'),
(173, 47, '_nav_menu_role', 'a:2:{i:1;s:13:\"administrator\";i:6;s:6:\"member\";}'),
(180, 35, 'wppb-content-restrict-user-status', 'loggedin'),
(181, 35, 'wppb-content-restrict-custom-redirect-url', ''),
(182, 35, 'wppb-content-restrict-message-logged_out', ''),
(183, 35, 'wppb-content-restrict-message-logged_in', ''),
(192, 35, '_pingme', '1'),
(193, 35, '_encloseme', '1'),
(194, 35, 'wppb-content-restrict-type', 'message'),
(195, 35, 'wppb-content-restrict-user-role', 'administrator'),
(196, 35, 'wppb-content-restrict-user-role', 'member'),
(199, 50, '_edit_lock', '1619256770:1'),
(200, 50, '_edit_last', '1'),
(202, 50, 'pms-content-restrict-custom-redirect-url', ''),
(203, 50, 'pms-content-restrict-custom-non-member-redirect-url', ''),
(204, 50, 'pms-content-restrict-message-logged_out', ''),
(205, 50, 'pms-content-restrict-message-non_members', ''),
(207, 50, 'pms-content-restrict-type', 'default'),
(208, 52, '_edit_lock', '1619258910:1'),
(209, 52, '_edit_last', '1'),
(211, 52, 'pms-content-restrict-custom-redirect-url', ''),
(212, 52, 'pms-content-restrict-custom-non-member-redirect-url', ''),
(213, 52, 'pms-content-restrict-message-logged_out', ''),
(214, 52, 'pms-content-restrict-message-non_members', ''),
(216, 52, 'pms-content-restrict-type', 'default'),
(217, 10, '_edit_lock', '1619257099:1'),
(218, 10, '_edit_last', '1'),
(220, 10, 'pms-content-restrict-custom-redirect-url', ''),
(221, 10, 'pms-content-restrict-custom-non-member-redirect-url', ''),
(222, 10, 'pms-content-restrict-message-logged_out', ''),
(223, 10, 'pms-content-restrict-message-non_members', ''),
(228, 10, 'pms-content-restrict-type', 'default'),
(229, 55, '_menu_item_type', 'post_type'),
(230, 55, '_menu_item_menu_item_parent', '0'),
(231, 55, '_menu_item_object_id', '52'),
(232, 55, '_menu_item_object', 'page'),
(233, 55, '_menu_item_target', ''),
(234, 55, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(235, 55, '_menu_item_xfn', ''),
(236, 55, '_menu_item_url', ''),
(238, 56, '_menu_item_type', 'post_type'),
(239, 56, '_menu_item_menu_item_parent', '0'),
(240, 56, '_menu_item_object_id', '50'),
(241, 56, '_menu_item_object', 'page'),
(242, 56, '_menu_item_target', ''),
(243, 56, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(244, 56, '_menu_item_xfn', ''),
(245, 56, '_menu_item_url', ''),
(247, 44, '_wp_old_date', '2021-04-18'),
(248, 45, '_wp_old_date', '2021-04-18'),
(249, 46, '_wp_old_date', '2021-04-18'),
(250, 55, '_nav_menu_role', 'in'),
(251, 56, '_nav_menu_role', 'out'),
(252, 47, '_wp_old_date', '2021-04-18'),
(253, 8, '_edit_lock', '1619258920:1'),
(254, 8, '_edit_last', '1'),
(256, 8, 'pms-content-restrict-custom-redirect-url', ''),
(257, 8, 'pms-content-restrict-custom-non-member-redirect-url', ''),
(258, 8, 'pms-content-restrict-message-logged_out', ''),
(259, 8, 'pms-content-restrict-message-non_members', ''),
(261, 8, 'pms-content-restrict-type', 'default'),
(262, 59, '_edit_lock', '1626331186:1'),
(263, 60, '_wp_attached_file', '2021/07/kevin-butz-6hsfmat-t7k-unsplash-scaled.jpg'),
(264, 60, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1587;s:4:\"file\";s:50:\"2021/07/kevin-butz-6hsfmat-t7k-unsplash-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"kevin-butz-6hsfmat-t7k-unsplash-300x186.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:186;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:44:\"kevin-butz-6hsfmat-t7k-unsplash-1024x635.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:635;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"kevin-butz-6hsfmat-t7k-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:43:\"kevin-butz-6hsfmat-t7k-unsplash-768x476.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:476;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:44:\"kevin-butz-6hsfmat-t7k-unsplash-1536x952.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:952;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:45:\"kevin-butz-6hsfmat-t7k-unsplash-2048x1270.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:35:\"kevin-butz-6hsfmat-t7k-unsplash.jpg\";}'),
(265, 59, '_thumbnail_id', '60'),
(266, 59, '_wp_page_template', 'page-templates/full-width.php'),
(267, 59, '_edit_last', '1'),
(269, 59, 'pms-content-restrict-user-status', 'loggedin'),
(270, 59, 'pms-content-restrict-custom-redirect-url', ''),
(271, 59, 'pms-content-restrict-custom-non-member-redirect-url', ''),
(272, 59, 'pms-content-restrict-message-logged_out', ''),
(273, 59, 'pms-content-restrict-message-non_members', ''),
(276, 62, '_edit_lock', '1626270578:1'),
(277, 62, '_edit_last', '1'),
(278, 62, 'pms_subscription_plan_top_parent', '62'),
(279, 62, 'pms_subscription_plan_description', 'Gives you access to some of our premium content'),
(280, 62, 'pms_subscription_plan_duration', '30'),
(281, 62, 'pms_subscription_plan_duration_unit', 'day'),
(282, 62, 'pms_subscription_plan_price', '9.99'),
(283, 62, 'pms_subscription_plan_status', 'active'),
(284, 62, 'pms_subscription_plan_user_role', 'pms_subscription_plan_62'),
(285, 63, '_edit_lock', '1626271124:1'),
(286, 63, '_edit_last', '1'),
(287, 63, 'pms_subscription_plan_top_parent', '63'),
(288, 63, 'pms_subscription_plan_description', 'Gives you access to ALL of our premium content'),
(289, 63, 'pms_subscription_plan_duration', '30'),
(290, 63, 'pms_subscription_plan_duration_unit', 'day'),
(291, 63, 'pms_subscription_plan_price', '19.99'),
(292, 63, 'pms_subscription_plan_status', 'active'),
(293, 63, 'pms_subscription_plan_user_role', 'pms_subscription_plan_63'),
(303, 44, '_wp_old_date', '2021-04-24'),
(304, 45, '_wp_old_date', '2021-04-24'),
(305, 46, '_wp_old_date', '2021-04-24'),
(306, 55, '_wp_old_date', '2021-04-24'),
(307, 56, '_wp_old_date', '2021-04-24'),
(308, 47, '_wp_old_date', '2021-04-24'),
(320, 59, 'pms-content-restrict-type', 'default');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-04-13 12:55:11', '2021-04-13 12:55:11', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2021-04-13 12:55:11', '2021-04-13 12:55:11', '', 0, 'http://localhost/thethinker/?p=1', 0, 'post', '', 1),
(2, 1, '2021-04-13 12:55:11', '2021-04-13 12:55:11', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/thethinker/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2021-04-13 12:55:11', '2021-04-13 12:55:11', '', 0, 'http://localhost/thethinker/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-04-13 12:55:11', '2021-04-13 12:55:11', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/thethinker.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2021-04-13 12:55:11', '2021-04-13 12:55:11', '', 0, 'http://localhost/thethinker/?page_id=3', 0, 'page', '', 0),
(8, 1, '2021-04-14 08:35:24', '2021-04-14 08:35:24', '[pms-register]', 'Register', '', 'publish', 'closed', 'closed', '', 'register', '', '', '2021-04-24 09:58:56', '2021-04-24 09:58:56', '', 0, 'http://localhost/thethinker/register/', 0, 'page', '', 0),
(9, 1, '2021-04-14 08:35:24', '2021-04-14 08:35:24', '[wppb-edit-profile]', 'Edit Profile', '', 'publish', 'closed', 'closed', '', 'edit-profile', '', '', '2021-04-14 08:35:24', '2021-04-14 08:35:24', '', 0, 'http://localhost/thethinker/edit-profile/', 0, 'page', '', 0),
(10, 1, '2021-04-14 08:35:24', '2021-04-14 08:35:24', '[pms-login]', 'Log In', '', 'publish', 'closed', 'closed', '', 'log-in', '', '', '2021-04-24 09:38:19', '2021-04-24 09:38:19', '', 0, 'http://localhost/thethinker/log-in/', 0, 'page', '', 0),
(11, 1, '2021-04-14 08:41:35', '2021-04-14 08:41:35', '<p>[wppb-edit-profile]</p>\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Edit Profile', '', 'inherit', 'closed', 'closed', '', '9-autosave-v1', '', '', '2021-04-14 08:41:35', '2021-04-14 08:41:35', '', 9, 'http://localhost/thethinker/?p=11', 0, 'revision', '', 0),
(12, 1, '2021-04-16 09:38:31', '2021-04-16 09:38:31', '<!-- wp:paragraph -->\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec fermentum sapien sed egestas maximus. Suspendisse nisl odio, euismod ac cursus mollis, imperdiet ut velit. Sed eu ultrices ex. Ut dictum, dolor volutpat commodo finibus, massa metus dictum diam, et sagittis dolor eros aliquam tellus. Aenean et nulla lorem. Duis pretium eros nec nulla ultricies, eget lacinia erat lobortis. Pellentesque lacinia ipsum eget sagittis scelerisque. Nunc commodo augue nec tortor ultrices, et rutrum lacus imperdiet. Nullam molestie ullamcorper metus, ut viverra arcu mattis congue. Nulla pharetra nunc nulla, eget dignissim dolor vestibulum sed. Donec magna erat, vulputate vel tellus eget, posuere gravida elit. Mauris quis sem ante. Phasellus hendrerit, dolor eget facilisis accumsan, eros felis pharetra quam, ac ultrices massa quam imperdiet nibh. Nam eget vestibulum massa, eget consequat sapien. Nulla eget risus urna.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Morbi sed egestas felis. Curabitur blandit ante et ex aliquam, mattis eleifend leo tempus. Nullam placerat dictum dui, sit amet pretium lorem bibendum eu. Aliquam erat volutpat. Morbi placerat turpis justo, a molestie erat tristique quis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In eget augue convallis, scelerisque ante et, malesuada lacus. In id tempor neque, molestie placerat ligula. Interdum et malesuada fames ac ante ipsum primis in faucibus. Maecenas lectus orci, ornare at dignissim tincidunt, bibendum ac orci. Suspendisse eleifend rutrum magna eget sagittis. Donec nec interdum elit, vitae convallis dui. Aliquam at nulla ac nisl fermentum blandit bibendum non lorem.</p>\n<!-- /wp:paragraph -->', 'Integer malesuada nibh', '', 'publish', 'open', 'open', '', 'integer-malesuada-nibh', '', '', '2021-04-16 09:38:36', '2021-04-16 09:38:36', '', 0, 'http://localhost/thethinker/?p=12', 0, 'post', '', 0),
(13, 1, '2021-04-16 09:37:32', '2021-04-16 09:37:32', '', 'alcohol-blur-cuisine-390403', '', 'inherit', 'open', 'closed', '', 'alcohol-blur-cuisine-390403', '', '', '2021-04-16 09:37:32', '2021-04-16 09:37:32', '', 12, 'http://localhost/thethinker/wp-content/uploads/2021/04/alcohol-blur-cuisine-390403.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2021-04-16 09:38:31', '2021-04-16 09:38:31', '<!-- wp:paragraph -->\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec fermentum sapien sed egestas maximus. Suspendisse nisl odio, euismod ac cursus mollis, imperdiet ut velit. Sed eu ultrices ex. Ut dictum, dolor volutpat commodo finibus, massa metus dictum diam, et sagittis dolor eros aliquam tellus. Aenean et nulla lorem. Duis pretium eros nec nulla ultricies, eget lacinia erat lobortis. Pellentesque lacinia ipsum eget sagittis scelerisque. Nunc commodo augue nec tortor ultrices, et rutrum lacus imperdiet. Nullam molestie ullamcorper metus, ut viverra arcu mattis congue. Nulla pharetra nunc nulla, eget dignissim dolor vestibulum sed. Donec magna erat, vulputate vel tellus eget, posuere gravida elit. Mauris quis sem ante. Phasellus hendrerit, dolor eget facilisis accumsan, eros felis pharetra quam, ac ultrices massa quam imperdiet nibh. Nam eget vestibulum massa, eget consequat sapien. Nulla eget risus urna.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Morbi sed egestas felis. Curabitur blandit ante et ex aliquam, mattis eleifend leo tempus. Nullam placerat dictum dui, sit amet pretium lorem bibendum eu. Aliquam erat volutpat. Morbi placerat turpis justo, a molestie erat tristique quis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In eget augue convallis, scelerisque ante et, malesuada lacus. In id tempor neque, molestie placerat ligula. Interdum et malesuada fames ac ante ipsum primis in faucibus. Maecenas lectus orci, ornare at dignissim tincidunt, bibendum ac orci. Suspendisse eleifend rutrum magna eget sagittis. Donec nec interdum elit, vitae convallis dui. Aliquam at nulla ac nisl fermentum blandit bibendum non lorem.</p>\n<!-- /wp:paragraph -->', 'Integer malesuada nibh', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2021-04-16 09:38:31', '2021-04-16 09:38:31', '', 12, 'http://localhost/thethinker/?p=14', 0, 'revision', '', 0),
(15, 1, '2021-04-16 09:59:44', '2021-04-16 09:59:44', '<!-- wp:paragraph -->\n<p>Sed aliquet egestas leo, vitae tempus turpis congue eget. Quisque pulvinar nibh turpis, sed posuere leo euismod vitae. Donec urna est, congue nec euismod non, placerat at erat. Curabitur imperdiet bibendum aliquet. Cras dignissim at nisl quis congue. Mauris posuere, tellus nec lobortis iaculis, erat quam vehicula urna, nec elementum dolor lacus sit amet augue. Maecenas non lorem quis lectus ultricies volutpat eu vitae nisi.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Aliquam eu aliquam nunc, sit amet condimentum metus. Phasellus ornare tempor sagittis. Fusce imperdiet massa a consequat rhoncus. Donec et tortor malesuada, ullamcorper ex sed, molestie neque. Curabitur eros elit, eleifend a porttitor eu, tristique vitae risus. Nullam gravida, turpis eu dapibus pretium, dui dui euismod tortor, semper efficitur dui ante non ligula.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Suspendisse id ipsum enim. Sed imperdiet metus eros, quis ullamcorper lorem tempus vitae. Quisque sed justo cursus, eleifend lectus nec, molestie odio. Aenean fermentum hendrerit nibh, in pharetra dui ultricies at. Etiam volutpat elit et eros consectetur, at gravida velit tristique. Pellentesque tincidunt augue quis nisl tempor, non hendrerit sem varius. Aenean quis est nec nunc pellentesque bibendum eget ut tellus. Suspendisse eleifend nunc sapien, id dignissim ligula fermentum id.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>In sed lorem rhoncus, rhoncus tellus vitae, tristique dolor. Vivamus dictum orci ut vehicula sollicitudin. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent non consequat felis, in viverra ligula. Nunc risus lectus, finibus nec diam quis, vulputate eleifend nisi. Aenean hendrerit lacus vitae sapien ullamcorper malesuada.</p>\n<!-- /wp:paragraph -->', 'Tnsectetur enim scelerisque', '', 'publish', 'open', 'open', '', 'tnsectetur-enim-scelerisque', '', '', '2021-04-16 09:59:49', '2021-04-16 09:59:49', '', 0, 'http://localhost/thethinker/?p=15', 0, 'post', '', 0),
(16, 1, '2021-04-16 09:58:52', '2021-04-16 09:58:52', '', 'beef-delicious-dinner-769289', '', 'inherit', 'open', 'closed', '', 'beef-delicious-dinner-769289', '', '', '2021-04-16 09:58:52', '2021-04-16 09:58:52', '', 15, 'http://localhost/thethinker/wp-content/uploads/2021/04/beef-delicious-dinner-769289.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2021-04-16 09:59:44', '2021-04-16 09:59:44', '<!-- wp:paragraph -->\n<p>Sed aliquet egestas leo, vitae tempus turpis congue eget. Quisque pulvinar nibh turpis, sed posuere leo euismod vitae. Donec urna est, congue nec euismod non, placerat at erat. Curabitur imperdiet bibendum aliquet. Cras dignissim at nisl quis congue. Mauris posuere, tellus nec lobortis iaculis, erat quam vehicula urna, nec elementum dolor lacus sit amet augue. Maecenas non lorem quis lectus ultricies volutpat eu vitae nisi.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Aliquam eu aliquam nunc, sit amet condimentum metus. Phasellus ornare tempor sagittis. Fusce imperdiet massa a consequat rhoncus. Donec et tortor malesuada, ullamcorper ex sed, molestie neque. Curabitur eros elit, eleifend a porttitor eu, tristique vitae risus. Nullam gravida, turpis eu dapibus pretium, dui dui euismod tortor, semper efficitur dui ante non ligula.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Suspendisse id ipsum enim. Sed imperdiet metus eros, quis ullamcorper lorem tempus vitae. Quisque sed justo cursus, eleifend lectus nec, molestie odio. Aenean fermentum hendrerit nibh, in pharetra dui ultricies at. Etiam volutpat elit et eros consectetur, at gravida velit tristique. Pellentesque tincidunt augue quis nisl tempor, non hendrerit sem varius. Aenean quis est nec nunc pellentesque bibendum eget ut tellus. Suspendisse eleifend nunc sapien, id dignissim ligula fermentum id.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>In sed lorem rhoncus, rhoncus tellus vitae, tristique dolor. Vivamus dictum orci ut vehicula sollicitudin. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent non consequat felis, in viverra ligula. Nunc risus lectus, finibus nec diam quis, vulputate eleifend nisi. Aenean hendrerit lacus vitae sapien ullamcorper malesuada.</p>\n<!-- /wp:paragraph -->', 'Tnsectetur enim scelerisque', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2021-04-16 09:59:44', '2021-04-16 09:59:44', '', 15, 'http://localhost/thethinker/?p=17', 0, 'revision', '', 0),
(18, 1, '2021-04-16 10:12:01', '2021-04-16 10:12:01', '<!-- wp:paragraph -->\n<p>Fusce cursus risus eget facilisis pretium. Quisque aliquet sollicitudin luctus. Pellentesque cursus ante ac nibh fringilla tristique. Sed maximus, purus non viverra faucibus, sem dui tincidunt enim, et pulvinar diam quam a magna. Aenean vitae ornare elit. Quisque maximus pretium enim, id porta odio scelerisque eu. Vivamus varius lacinia nibh, vitae malesuada magna imperdiet ac.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nullam finibus urna elit, ac gravida nulla mollis in. Nam condimentum pharetra tristique. Nulla ac urna nec odio bibendum aliquam eu non erat. Mauris suscipit quam enim, eu lobortis felis ultrices quis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Etiam consequat purus quis erat porta, a facilisis erat sagittis. Fusce varius, tellus consectetur tincidunt ornare, massa magna ultrices diam, at efficitur risus lacus vel magna. Sed in hendrerit odio, eget sagittis sem.</p>\n<!-- /wp:paragraph -->', 'Proin non condimentum', '', 'publish', 'open', 'open', '', 'proin-non-condimentum', '', '', '2021-04-16 11:43:45', '2021-04-16 11:43:45', '', 0, 'http://localhost/thethinker/?p=18', 0, 'post', '', 0),
(19, 1, '2021-04-16 10:07:39', '2021-04-16 10:07:39', '', 'pexels-photo-26731-medium', '', 'inherit', 'open', 'closed', '', 'pexels-photo-26731-medium', '', '', '2021-04-16 10:07:39', '2021-04-16 10:07:39', '', 18, 'http://localhost/thethinker/wp-content/uploads/2021/04/pexels-photo-26731-medium.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2021-04-16 10:12:01', '2021-04-16 10:12:01', '<!-- wp:paragraph -->\n<p>Fusce cursus risus eget facilisis pretium. Quisque aliquet sollicitudin luctus. Pellentesque cursus ante ac nibh fringilla tristique. Sed maximus, purus non viverra faucibus, sem dui tincidunt enim, et pulvinar diam quam a magna. Aenean vitae ornare elit. Quisque maximus pretium enim, id porta odio scelerisque eu. Vivamus varius lacinia nibh, vitae malesuada magna imperdiet ac.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nullam finibus urna elit, ac gravida nulla mollis in. Nam condimentum pharetra tristique. Nulla ac urna nec odio bibendum aliquam eu non erat. Mauris suscipit quam enim, eu lobortis felis ultrices quis. Etiam consequat purus quis erat porta, a facilisis erat sagittis. Fusce varius, tellus consectetur tincidunt ornare, massa magna ultrices diam, at efficitur risus lacus vel magna. Sed in hendrerit odio, eget sagittis sem.</p>\n<!-- /wp:paragraph -->', 'Proin non condimentum', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2021-04-16 10:12:01', '2021-04-16 10:12:01', '', 18, 'http://localhost/thethinker/?p=20', 0, 'revision', '', 0),
(21, 1, '2021-04-16 11:43:36', '2021-04-16 11:43:36', '<!-- wp:paragraph -->\n<p>Fusce cursus risus eget facilisis pretium. Quisque aliquet sollicitudin luctus. Pellentesque cursus ante ac nibh fringilla tristique. Sed maximus, purus non viverra faucibus, sem dui tincidunt enim, et pulvinar diam quam a magna. Aenean vitae ornare elit. Quisque maximus pretium enim, id porta odio scelerisque eu. Vivamus varius lacinia nibh, vitae malesuada magna imperdiet ac.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nullam finibus urna elit, ac gravida nulla mollis in. Nam condimentum pharetra tristique. Nulla ac urna nec odio bibendum aliquam eu non erat. Mauris suscipit quam enim, eu lobortis felis ultrices quis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Etiam consequat purus quis erat porta, a facilisis erat sagittis. Fusce varius, tellus consectetur tincidunt ornare, massa magna ultrices diam, at efficitur risus lacus vel magna. Sed in hendrerit odio, eget sagittis sem.</p>\n<!-- /wp:paragraph -->', 'Proin non condimentum', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2021-04-16 11:43:36', '2021-04-16 11:43:36', '', 18, 'http://localhost/thethinker/?p=21', 0, 'revision', '', 0),
(22, 1, '2021-04-16 11:49:31', '2021-04-16 11:49:31', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2021-04-16 11:49:34', '2021-04-16 11:49:34', '', 0, 'http://localhost/thethinker/?page_id=22', 0, 'page', '', 0),
(23, 1, '2021-04-16 11:49:31', '2021-04-16 11:49:31', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2021-04-16 11:49:31', '2021-04-16 11:49:31', '', 22, 'http://localhost/thethinker/?p=23', 0, 'revision', '', 0),
(24, 1, '2021-04-16 13:37:26', '2021-04-16 13:37:26', '<!-- wp:paragraph -->\n<p>Aliquam venenatis velit elit. Vestibulum ultrices scelerisque risus, non scelerisque eros pellentesque eget. Ut nisl velit, mattis porttitor viverra a, maximus sit amet sapien. Pellentesque ac lacinia libero. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam tempus viverra suscipit. Suspendisse condimentum nisl sem, ut tincidunt purus porta ac.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nullam ac porttitor quam, quis interdum erat. Proin enim ipsum, porttitor at consequat nec, auctor eget dui. Maecenas feugiat lectus non eros aliquet suscipit. In volutpat tempus nisl in tristique. Mauris bibendum sodales sapien, vel vehicula risus aliquet vitae. Donec volutpat purus in quam aliquet, eget tempus tortor imperdiet. Mauris convallis purus eu imperdiet ultrices.</p>\n<!-- /wp:paragraph -->', 'Swimming', '', 'publish', 'open', 'open', '', 'swimming', '', '', '2021-04-16 13:37:30', '2021-04-16 13:37:30', '', 0, 'http://localhost/thethinker/?p=24', 0, 'post', '', 0),
(25, 1, '2021-04-16 13:18:38', '2021-04-16 13:18:38', '', 'paul-green-gOHfFgwyDNM-unsplash', '', 'inherit', 'open', 'closed', '', 'paul-green-gohffgwydnm-unsplash', '', '', '2021-04-16 13:18:38', '2021-04-16 13:18:38', '', 24, 'http://localhost/thethinker/wp-content/uploads/2021/04/paul-green-gOHfFgwyDNM-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2021-04-16 13:19:11', '2021-04-16 13:19:11', '', 'markus-spiske-WUehAgqO5hE-unsplash', '', 'inherit', 'open', 'closed', '', 'markus-spiske-wuehagqo5he-unsplash', '', '', '2021-04-16 13:19:11', '2021-04-16 13:19:11', '', 24, 'http://localhost/thethinker/wp-content/uploads/2021/04/markus-spiske-WUehAgqO5hE-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2021-04-16 13:19:48', '2021-04-16 13:19:48', '', 'kevin-mueller-Q-fL04RhuMg-unsplash', '', 'inherit', 'open', 'closed', '', 'kevin-mueller-q-fl04rhumg-unsplash', '', '', '2021-04-16 13:19:48', '2021-04-16 13:19:48', '', 24, 'http://localhost/thethinker/wp-content/uploads/2021/04/kevin-mueller-Q-fL04RhuMg-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2021-04-16 13:20:04', '2021-04-16 13:20:04', '', 'john-arano-h4i9G-de7Po-unsplash', '', 'inherit', 'open', 'closed', '', 'john-arano-h4i9g-de7po-unsplash', '', '', '2021-04-16 13:20:04', '2021-04-16 13:20:04', '', 24, 'http://localhost/thethinker/wp-content/uploads/2021/04/john-arano-h4i9G-de7Po-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2021-04-16 13:20:35', '2021-04-16 13:20:35', '', 'gentrit-sylejmani-JjUyjE-oEbM-unsplash', '', 'inherit', 'open', 'closed', '', 'gentrit-sylejmani-jjuyje-oebm-unsplash', '', '', '2021-04-16 13:20:35', '2021-04-16 13:20:35', '', 24, 'http://localhost/thethinker/wp-content/uploads/2021/04/gentrit-sylejmani-JjUyjE-oEbM-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2021-04-16 13:37:26', '2021-04-16 13:37:26', '<!-- wp:paragraph -->\n<p>Aliquam venenatis velit elit. Vestibulum ultrices scelerisque risus, non scelerisque eros pellentesque eget. Ut nisl velit, mattis porttitor viverra a, maximus sit amet sapien. Pellentesque ac lacinia libero. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam tempus viverra suscipit. Suspendisse condimentum nisl sem, ut tincidunt purus porta ac.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nullam ac porttitor quam, quis interdum erat. Proin enim ipsum, porttitor at consequat nec, auctor eget dui. Maecenas feugiat lectus non eros aliquet suscipit. In volutpat tempus nisl in tristique. Mauris bibendum sodales sapien, vel vehicula risus aliquet vitae. Donec volutpat purus in quam aliquet, eget tempus tortor imperdiet. Mauris convallis purus eu imperdiet ultrices.</p>\n<!-- /wp:paragraph -->', 'Swimming', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2021-04-16 13:37:26', '2021-04-16 13:37:26', '', 24, 'http://localhost/thethinker/?p=30', 0, 'revision', '', 0),
(31, 1, '2021-04-16 13:42:09', '2021-04-16 13:42:09', '<!-- wp:paragraph -->\n<p>Vestibulum at magna lacinia, viverra arcu in, eleifend arcu. Etiam tortor nibh, aliquam eu pellentesque quis, fringilla quis odio. Nunc ligula nisl, posuere et velit et, volutpat molestie dolor. Curabitur in ligula sed nisi tempor bibendum. Mauris varius ex dignissim aliquam elementum. Donec pellentesque, turpis et placerat maximus, dolor sapien posuere sem, quis vulputate ipsum felis eu lorem. Nam at metus pharetra ante pharetra aliquet ac finibus velit. Pellentesque placerat justo enim. Donec tincidunt eros ornare hendrerit tempus. Aliquam erat volutpat. Nam porttitor mauris nec tortor interdum malesuada. Morbi in ultrices sem. Cras nisl velit, posuere sit amet erat vitae, facilisis mollis ex. Vivamus accumsan rhoncus diam, a dapibus orci blandit eu. Phasellus ut gravida mauris.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nullam mollis pulvinar diam a auctor. In vulputate imperdiet est scelerisque consequat. Aenean nec ligula a magna tincidunt consequat eu a nunc. Praesent porta molestie orci. Integer elit nibh, finibus sed enim ut, dapibus pulvinar mauris. Donec facilisis, mi condimentum pharetra condimentum, orci felis malesuada neque, vitae tincidunt leo orci quis mi. Etiam eget tellus turpis. Fusce faucibus ipsum quis laoreet aliquet.</p>\n<!-- /wp:paragraph -->', 'Gym', '', 'publish', 'open', 'open', '', 'gym', '', '', '2021-04-16 13:42:14', '2021-04-16 13:42:14', '', 0, 'http://localhost/thethinker/?p=31', 0, 'post', '', 0),
(32, 1, '2021-04-16 13:42:09', '2021-04-16 13:42:09', '<!-- wp:paragraph -->\n<p>Vestibulum at magna lacinia, viverra arcu in, eleifend arcu. Etiam tortor nibh, aliquam eu pellentesque quis, fringilla quis odio. Nunc ligula nisl, posuere et velit et, volutpat molestie dolor. Curabitur in ligula sed nisi tempor bibendum. Mauris varius ex dignissim aliquam elementum. Donec pellentesque, turpis et placerat maximus, dolor sapien posuere sem, quis vulputate ipsum felis eu lorem. Nam at metus pharetra ante pharetra aliquet ac finibus velit. Pellentesque placerat justo enim. Donec tincidunt eros ornare hendrerit tempus. Aliquam erat volutpat. Nam porttitor mauris nec tortor interdum malesuada. Morbi in ultrices sem. Cras nisl velit, posuere sit amet erat vitae, facilisis mollis ex. Vivamus accumsan rhoncus diam, a dapibus orci blandit eu. Phasellus ut gravida mauris.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nullam mollis pulvinar diam a auctor. In vulputate imperdiet est scelerisque consequat. Aenean nec ligula a magna tincidunt consequat eu a nunc. Praesent porta molestie orci. Integer elit nibh, finibus sed enim ut, dapibus pulvinar mauris. Donec facilisis, mi condimentum pharetra condimentum, orci felis malesuada neque, vitae tincidunt leo orci quis mi. Etiam eget tellus turpis. Fusce faucibus ipsum quis laoreet aliquet.</p>\n<!-- /wp:paragraph -->', 'Gym', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2021-04-16 13:42:09', '2021-04-16 13:42:09', '', 31, 'http://localhost/thethinker/?p=32', 0, 'revision', '', 0),
(33, 1, '2021-04-16 13:50:20', '2021-04-16 13:50:20', '<!-- wp:paragraph -->\n<p>Pellentesque mollis erat ut ullamcorper dignissim. Phasellus in sem vel lorem vulputate dapibus eget eu purus. Morbi molestie sollicitudin feugiat. Aenean quis felis sed urna accumsan congue vel ut nibh. In hac habitasse platea dictumst. Vestibulum in enim in purus imperdiet semper. Aenean hendrerit semper blandit. Pellentesque sit amet tortor neque. Pellentesque laoreet enim vel tincidunt fermentum. Sed a posuere est, ultricies faucibus enim.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Aliquam velit quam, iaculis venenatis gravida rutrum, tincidunt sed mauris. Sed fermentum odio sit amet odio accumsan, ut auctor quam finibus. Nulla dapibus pharetra diam, in varius dui fringilla eu. Aliquam pharetra odio a nisi vehicula pharetra sed fermentum justo. Sed placerat a leo non tincidunt. Mauris dolor lorem, ultricies vitae neque a, venenatis elementum orci. Aenean pellentesque viverra nisl, vel bibendum orci vehicula vel.</p>\n<!-- /wp:paragraph -->', 'Cricket', '', 'publish', 'open', 'open', '', 'cricket', '', '', '2021-04-16 13:50:25', '2021-04-16 13:50:25', '', 0, 'http://localhost/thethinker/?p=33', 0, 'post', '', 0),
(34, 1, '2021-04-16 13:50:20', '2021-04-16 13:50:20', '<!-- wp:paragraph -->\n<p>Pellentesque mollis erat ut ullamcorper dignissim. Phasellus in sem vel lorem vulputate dapibus eget eu purus. Morbi molestie sollicitudin feugiat. Aenean quis felis sed urna accumsan congue vel ut nibh. In hac habitasse platea dictumst. Vestibulum in enim in purus imperdiet semper. Aenean hendrerit semper blandit. Pellentesque sit amet tortor neque. Pellentesque laoreet enim vel tincidunt fermentum. Sed a posuere est, ultricies faucibus enim.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Aliquam velit quam, iaculis venenatis gravida rutrum, tincidunt sed mauris. Sed fermentum odio sit amet odio accumsan, ut auctor quam finibus. Nulla dapibus pharetra diam, in varius dui fringilla eu. Aliquam pharetra odio a nisi vehicula pharetra sed fermentum justo. Sed placerat a leo non tincidunt. Mauris dolor lorem, ultricies vitae neque a, venenatis elementum orci. Aenean pellentesque viverra nisl, vel bibendum orci vehicula vel.</p>\n<!-- /wp:paragraph -->', 'Cricket', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2021-04-16 13:50:20', '2021-04-16 13:50:20', '', 33, 'http://localhost/thethinker/?p=34', 0, 'revision', '', 0),
(35, 1, '2021-04-16 13:52:01', '2021-04-16 13:52:01', '<!-- wp:paragraph -->\n<p>Praesent lacinia viverra tincidunt. Duis bibendum tellus vel augue congue egestas at et lorem. Suspendisse malesuada blandit enim, a maximus enim iaculis quis. Nunc cursus orci nec erat lacinia volutpat. Nulla gravida vitae ipsum vel malesuada. In nec imperdiet dolor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec massa justo, eleifend et posuere ac, laoreet non massa.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis egestas sem vitae dapibus iaculis. Mauris ut velit odio. Pellentesque elementum at dui eget bibendum. Praesent sit amet hendrerit dolor, efficitur congue orci. In pretium consequat aliquet.</p>\n<!-- /wp:paragraph -->', 'Road bicycle racing', '', 'publish', 'open', 'open', '', 'road-bicycle-racing', '', '', '2021-04-18 17:14:13', '2021-04-18 17:14:13', '', 0, 'http://localhost/thethinker/?p=35', 0, 'post', '', 0),
(36, 1, '2021-04-16 13:52:01', '2021-04-16 13:52:01', '<!-- wp:paragraph -->\n<p>Praesent lacinia viverra tincidunt. Duis bibendum tellus vel augue congue egestas at et lorem. Suspendisse malesuada blandit enim, a maximus enim iaculis quis. Nunc cursus orci nec erat lacinia volutpat. Nulla gravida vitae ipsum vel malesuada. In nec imperdiet dolor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec massa justo, eleifend et posuere ac, laoreet non massa.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis egestas sem vitae dapibus iaculis. Mauris ut velit odio. Pellentesque elementum at dui eget bibendum. Praesent sit amet hendrerit dolor, efficitur congue orci. In pretium consequat aliquet.</p>\n<!-- /wp:paragraph -->', 'Road bicycle racing', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2021-04-16 13:52:01', '2021-04-16 13:52:01', '', 35, 'http://localhost/thethinker/?p=36', 0, 'revision', '', 0),
(37, 1, '2021-04-16 16:31:03', '2021-04-16 16:31:03', '<!-- wp:paragraph -->\n<p>Ut mollis non enim quis euismod. Vestibulum a enim a tortor ultrices elementum a ut erat. Aenean elementum sapien in turpis suscipit venenatis. Aenean at consectetur ligula. Integer eu neque ac lacus auctor gravida sed ut dui. Nunc sed porta leo. Proin sit amet facilisis velit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nullam imperdiet non orci eget posuere. In eu augue mi. Cras faucibus risus nec dolor lobortis dictum. Sed ac placerat erat. Phasellus tincidunt auctor mi, vitae pretium felis luctus sed. Aliquam luctus metus vel nunc porttitor, ac tincidunt neque rhoncus. Curabitur quis orci ipsum. Vivamus viverra, nulla id convallis maximus, ante ipsum placerat ex, sit amet suscipit massa nulla a elit.</p>\n<!-- /wp:paragraph -->', 'Nature', '', 'publish', 'open', 'open', '', 'nature', '', '', '2021-04-16 17:46:58', '2021-04-16 17:46:58', '', 0, 'http://localhost/thethinker/?p=37', 0, 'post', '', 0),
(38, 1, '2021-04-16 16:29:08', '2021-04-16 16:29:08', '', 'hoarfrost-4739176_1920', '', 'inherit', 'open', 'closed', '', 'hoarfrost-4739176_1920', '', '', '2021-04-16 16:29:08', '2021-04-16 16:29:08', '', 37, 'http://localhost/thethinker/wp-content/uploads/2021/04/hoarfrost-4739176_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2021-04-16 16:31:03', '2021-04-16 16:31:03', '<!-- wp:paragraph -->\n<p>Ut mollis non enim quis euismod. Vestibulum a enim a tortor ultrices elementum a ut erat. Aenean elementum sapien in turpis suscipit venenatis. Aenean at consectetur ligula. Integer eu neque ac lacus auctor gravida sed ut dui. Nunc sed porta leo. Proin sit amet facilisis velit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nullam imperdiet non orci eget posuere. In eu augue mi. Cras faucibus risus nec dolor lobortis dictum. Sed ac placerat erat. Phasellus tincidunt auctor mi, vitae pretium felis luctus sed. Aliquam luctus metus vel nunc porttitor, ac tincidunt neque rhoncus. Curabitur quis orci ipsum. Vivamus viverra, nulla id convallis maximus, ante ipsum placerat ex, sit amet suscipit massa nulla a elit.</p>\n<!-- /wp:paragraph -->', 'Nature', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2021-04-16 16:31:03', '2021-04-16 16:31:03', '', 37, 'http://localhost/thethinker/?p=39', 0, 'revision', '', 0),
(41, 1, '2021-04-17 08:11:54', '2021-04-17 08:11:54', 'http://localhost/thethinker/wp-content/uploads/2021/04/cropped-kevin-mueller-Q-fL04RhuMg-unsplash-scaled-1.jpg', 'cropped-kevin-mueller-Q-fL04RhuMg-unsplash-scaled-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-kevin-mueller-q-fl04rhumg-unsplash-scaled-1-jpg', '', '', '2021-04-17 08:26:45', '2021-04-17 08:26:45', '', 0, 'http://localhost/thethinker/wp-content/uploads/2021/04/cropped-kevin-mueller-Q-fL04RhuMg-unsplash-scaled-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2021-07-14 13:57:42', '2021-04-17 08:35:11', ' ', '', '', 'publish', 'closed', 'closed', '', '44', '', '', '2021-07-14 13:57:42', '2021-07-14 13:57:42', '', 0, 'http://localhost/thethinker/?p=44', 1, 'nav_menu_item', '', 0),
(45, 1, '2021-07-14 13:57:43', '2021-04-17 08:35:11', ' ', '', '', 'publish', 'closed', 'closed', '', '45', '', '', '2021-07-14 13:57:43', '2021-07-14 13:57:43', '', 0, 'http://localhost/thethinker/?p=45', 2, 'nav_menu_item', '', 0),
(46, 1, '2021-07-14 13:57:43', '2021-04-17 08:35:11', ' ', '', '', 'publish', 'closed', 'closed', '', '46', '', '', '2021-07-14 13:57:43', '2021-07-14 13:57:43', '', 0, 'http://localhost/thethinker/?p=46', 3, 'nav_menu_item', '', 0),
(47, 1, '2021-07-14 13:57:44', '2021-04-18 12:04:09', '', 'Log Out', '', 'publish', 'closed', 'closed', '', 'log-our', '', '', '2021-07-14 13:57:44', '2021-07-14 13:57:44', '', 0, 'http://localhost/thethinker/?p=47', 6, 'nav_menu_item', '', 0),
(50, 1, '2021-04-24 09:32:43', '2021-04-24 09:32:43', '<!-- wp:paragraph -->\n<p><strong>[pms-recover-password]</strong></p>\n<!-- /wp:paragraph -->', 'Recover Password', '', 'publish', 'closed', 'closed', '', 'recover-password', '', '', '2021-04-24 09:32:46', '2021-04-24 09:32:46', '', 0, 'http://localhost/thethinker/?page_id=50', 0, 'page', '', 0),
(51, 1, '2021-04-24 09:32:43', '2021-04-24 09:32:43', '<!-- wp:paragraph -->\n<p><strong>[pms-recover-password]</strong></p>\n<!-- /wp:paragraph -->', 'Recover Password', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2021-04-24 09:32:43', '2021-04-24 09:32:43', '', 50, 'http://localhost/thethinker/?p=51', 0, 'revision', '', 0),
(52, 1, '2021-04-24 09:35:23', '2021-04-24 09:35:23', '<!-- wp:paragraph -->\n<p><strong>[pms-subscriptions]</strong></p>\n<!-- /wp:paragraph -->', 'Subscription Plans', '', 'publish', 'closed', 'closed', '', 'subscription-plans', '', '', '2021-04-24 09:35:25', '2021-04-24 09:35:25', '', 0, 'http://localhost/thethinker/?page_id=52', 0, 'page', '', 0),
(53, 1, '2021-04-24 09:35:23', '2021-04-24 09:35:23', '<!-- wp:paragraph -->\n<p><strong>[pms-subscriptions]</strong></p>\n<!-- /wp:paragraph -->', 'Subscription Plans', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2021-04-24 09:35:23', '2021-04-24 09:35:23', '', 52, 'http://localhost/thethinker/?p=53', 0, 'revision', '', 0),
(54, 1, '2021-04-24 09:37:48', '2021-04-24 09:37:48', '[pms-login]', 'Log In', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-04-24 09:37:48', '2021-04-24 09:37:48', '', 10, 'http://localhost/thethinker/?p=54', 0, 'revision', '', 0),
(55, 1, '2021-07-14 13:57:43', '2021-04-24 09:40:24', ' ', '', '', 'publish', 'closed', 'closed', '', '55', '', '', '2021-07-14 13:57:43', '2021-07-14 13:57:43', '', 0, 'http://localhost/thethinker/?p=55', 4, 'nav_menu_item', '', 0),
(56, 1, '2021-07-14 13:57:44', '2021-04-24 09:40:24', ' ', '', '', 'publish', 'closed', 'closed', '', '56', '', '', '2021-07-14 13:57:44', '2021-07-14 13:57:44', '', 0, 'http://localhost/thethinker/?p=56', 5, 'nav_menu_item', '', 0),
(57, 1, '2021-04-24 09:58:52', '2021-04-24 09:58:52', '[pms-register]', 'Register', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-04-24 09:58:52', '2021-04-24 09:58:52', '', 8, 'http://localhost/thethinker/?p=57', 0, 'revision', '', 0),
(58, 1, '2021-07-14 13:31:54', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-07-14 13:31:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/thethinker/?p=58', 0, 'post', '', 0),
(59, 1, '2021-07-14 13:46:55', '2021-07-14 13:46:55', '<!-- wp:paragraph -->\n<p>Aenean pulvinar hendrerit feugiat. Nam elementum viverra felis in fringilla. Aenean ac lorem nec quam facilisis molestie quis eu dui. Mauris scelerisque vel purus at sodales. Nulla facilisis, est nec venenatis molestie, mauris ante dictum orci, sodales porta quam odio sit amet urna. Ut id pharetra neque. Proin hendrerit ac nisl in ornare. Quisque porttitor lorem leo, vel dignissim ligula laoreet vitae. Integer iaculis hendrerit aliquam. Vestibulum luctus consequat lectus eget aliquam. Vestibulum magna dui, semper vel imperdiet eu, pellentesque bibendum massa.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ut vitae finibus velit, ac pretium velit. Aenean ut purus convallis, blandit velit ut, hendrerit odio. Fusce non venenatis urna. Quisque mi odio, malesuada sed dignissim at, efficitur sed nisi. In nec orci efficitur, sodales ipsum vel, placerat felis. Mauris quis lorem vestibulum metus luctus consectetur. Vivamus sed lobortis dui. Nullam tincidunt aliquam lorem, sed elementum risus iaculis vel. Proin dignissim sem eget quam vestibulum, eu lacinia diam ullamcorper. Maecenas dapibus velit eu ex ullamcorper, vel dictum risus tincidunt. Phasellus iaculis, felis nec porta aliquet, ex sem posuere metus, ac porttitor ex metus non eros. Ut nec lorem eu dui vulputate viverra.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec hendrerit iaculis sem sed sodales. Curabitur tincidunt finibus pulvinar. In et commodo dolor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vivamus mollis odio id felis venenatis porta. Suspendisse lobortis accumsan lorem, ac ultricies est iaculis eu. Cras imperdiet est a porttitor accumsan. Phasellus vitae lectus sed lectus placerat luctus.</p>\n<!-- /wp:paragraph -->', 'Thank You', '', 'publish', 'closed', 'closed', '', 'thank-you', '', '', '2021-07-15 06:39:42', '2021-07-15 06:39:42', '', 0, 'http://localhost/thethinker/?page_id=59', 0, 'page', '', 0),
(60, 1, '2021-07-14 13:44:26', '2021-07-14 13:44:26', '', 'kevin-butz-6hsfmat-t7k-unsplash', '', 'inherit', 'open', 'closed', '', 'kevin-butz-6hsfmat-t7k-unsplash', '', '', '2021-07-14 13:44:26', '2021-07-14 13:44:26', '', 59, 'http://localhost/thethinker/wp-content/uploads/2021/07/kevin-butz-6hsfmat-t7k-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2021-07-14 13:46:55', '2021-07-14 13:46:55', '<!-- wp:paragraph -->\n<p>Aenean pulvinar hendrerit feugiat. Nam elementum viverra felis in fringilla. Aenean ac lorem nec quam facilisis molestie quis eu dui. Mauris scelerisque vel purus at sodales. Nulla facilisis, est nec venenatis molestie, mauris ante dictum orci, sodales porta quam odio sit amet urna. Ut id pharetra neque. Proin hendrerit ac nisl in ornare. Quisque porttitor lorem leo, vel dignissim ligula laoreet vitae. Integer iaculis hendrerit aliquam. Vestibulum luctus consequat lectus eget aliquam. Vestibulum magna dui, semper vel imperdiet eu, pellentesque bibendum massa.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ut vitae finibus velit, ac pretium velit. Aenean ut purus convallis, blandit velit ut, hendrerit odio. Fusce non venenatis urna. Quisque mi odio, malesuada sed dignissim at, efficitur sed nisi. In nec orci efficitur, sodales ipsum vel, placerat felis. Mauris quis lorem vestibulum metus luctus consectetur. Vivamus sed lobortis dui. Nullam tincidunt aliquam lorem, sed elementum risus iaculis vel. Proin dignissim sem eget quam vestibulum, eu lacinia diam ullamcorper. Maecenas dapibus velit eu ex ullamcorper, vel dictum risus tincidunt. Phasellus iaculis, felis nec porta aliquet, ex sem posuere metus, ac porttitor ex metus non eros. Ut nec lorem eu dui vulputate viverra.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec hendrerit iaculis sem sed sodales. Curabitur tincidunt finibus pulvinar. In et commodo dolor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vivamus mollis odio id felis venenatis porta. Suspendisse lobortis accumsan lorem, ac ultricies est iaculis eu. Cras imperdiet est a porttitor accumsan. Phasellus vitae lectus sed lectus placerat luctus.</p>\n<!-- /wp:paragraph -->', 'Thank You', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2021-07-14 13:46:55', '2021-07-14 13:46:55', '', 59, 'http://localhost/thethinker/?p=61', 0, 'revision', '', 0),
(62, 1, '2021-07-14 13:51:36', '2021-07-14 13:51:36', '', 'Basic Membership', '', 'active', 'closed', 'closed', '', 'basic-membership', '', '', '2021-07-14 13:51:37', '2021-07-14 13:51:37', '', 0, 'http://localhost/thethinker/?post_type=pms-subscription&#038;p=62', 0, 'pms-subscription', '', 0),
(63, 1, '2021-07-14 13:53:22', '2021-07-14 13:53:22', '', 'Premium Membership', '', 'active', 'closed', 'closed', '', 'premium-membership', '', '', '2021-07-14 13:53:23', '2021-07-14 13:53:23', '', 0, 'http://localhost/thethinker/?post_type=pms-subscription&#038;p=63', 0, 'pms-subscription', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Food', 'food', 0),
(3, 'Main Menu', 'main-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(12, 1, 0),
(15, 1, 0),
(18, 1, 0),
(24, 1, 0),
(31, 1, 0),
(33, 1, 0),
(35, 1, 0),
(37, 1, 0),
(44, 3, 0),
(45, 3, 0),
(46, 3, 0),
(47, 3, 0),
(55, 3, 0),
(56, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 9),
(2, 2, 'post_tag', '', 0, 0),
(3, 3, 'nav_menu', '', 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'thethinker'),
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
(17, 1, 'wp_dashboard_quick_press_last_post_id', '58'),
(18, 1, 'wppb_pms_cross_promo_dismiss_notification', 'true'),
(19, 1, 'wppb_migrated_free_add_ons_dismiss_notification', 'true'),
(21, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(22, 1, 'wp_user-settings-time', '1619256237'),
(23, 1, 'closedpostboxes_', 'a:0:{}'),
(24, 1, 'metaboxhidden_', 'a:0:{}'),
(25, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(26, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(29, 2, 'nickname', 'bishal'),
(30, 2, 'first_name', 'Bishal'),
(31, 2, 'last_name', 'Uddin'),
(32, 2, 'description', ''),
(33, 2, 'rich_editing', 'true'),
(34, 2, 'syntax_highlighting', 'true'),
(35, 2, 'comment_shortcuts', 'false'),
(36, 2, 'admin_color', 'fresh'),
(37, 2, 'use_ssl', '0'),
(38, 2, 'show_admin_bar_front', 'true'),
(39, 2, 'locale', ''),
(40, 2, 'wp_capabilities', 'a:1:{s:6:\"member\";b:1;}'),
(41, 2, 'wp_user_level', '0'),
(43, 1, 'wppb_review_request_dismiss_notification', 'true'),
(44, 1, 'pms_new_add_on_tax_dismiss_notification', 'true'),
(45, 1, 'nav_menu_recently_edited', '3'),
(47, 1, 'last_login', '2021-07-14 13:31:50');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
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
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'thethinker', '$P$BMJqMEVbuDS1K4UUZdqO22qQnhr3li1', 'thethinker', 'rayhanctg4@gmail.com', 'http://localhost/thethinker', '2021-04-13 12:55:10', '', 0, 'thethinker'),
(2, 'bishal', '$P$B3j3Guu4sihRFbfF/Ph1sNDsnbzvCi1', 'bishal', 'bishalctg@yahoo.com', '', '2021-04-23 13:36:41', '', 0, 'Bishal Uddin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_pms_member_subscriptionmeta`
--
ALTER TABLE `wp_pms_member_subscriptionmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `member_subscription_id` (`member_subscription_id`),
  ADD KEY `meta_key` (`meta_key`);

--
-- Indexes for table `wp_pms_member_subscriptions`
--
ALTER TABLE `wp_pms_member_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `subscription_plan_id` (`subscription_plan_id`);

--
-- Indexes for table `wp_pms_paymentmeta`
--
ALTER TABLE `wp_pms_paymentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_id` (`payment_id`),
  ADD KEY `meta_key` (`meta_key`);

--
-- Indexes for table `wp_pms_payments`
--
ALTER TABLE `wp_pms_payments`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=469;

--
-- AUTO_INCREMENT for table `wp_pms_member_subscriptionmeta`
--
ALTER TABLE `wp_pms_member_subscriptionmeta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_pms_member_subscriptions`
--
ALTER TABLE `wp_pms_member_subscriptions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_pms_paymentmeta`
--
ALTER TABLE `wp_pms_paymentmeta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_pms_payments`
--
ALTER TABLE `wp_pms_payments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=321;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
