-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 27, 2023 lúc 07:49 AM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `beauty`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2023-05-22 06:37:22', '2023-05-22 06:37:22', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8080/scsoft/beauty', 'yes'),
(2, 'home', 'http://localhost:8080/scsoft/beauty', 'yes'),
(3, 'blogname', 'ベトナムメディア Người đẹp-美⼈-', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'sauluoi157@gmail.com', 'yes'),
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
(28, 'permalink_structure', '/%category%/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:0;s:21:\"polylang/polylang.php\";i:1;s:34:\"advanced-custom-fields-pro/acf.php\";i:2;s:33:\"classic-editor/classic-editor.php\";i:3;s:36:\"contact-form-7/wp-contact-form-7.php\";i:4;s:32:\"duplicate-page/duplicatepage.php\";i:5;s:33:\"instagram-feed/instagram-feed.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'beauty', 'yes'),
(41, 'stylesheet', 'beauty', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
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
(76, 'widget_categories', 'a:0:{}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:33:\"instagram-feed/instagram-feed.php\";s:22:\"sb_instagram_uninstall\";}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '2', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1700289441', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:29:\"manage_instagram_feed_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'user_count', '1', 'no'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:10:{i:1685169443;a:6:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1685169491;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1685169493;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1685192400;a:1:{s:15:\"sbi_feed_update\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1685195896;a:2:{s:21:\"sb_instagram_cron_job\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:23:\"sb_instagram_twicedaily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1685428643;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1685734293;a:1:{s:23:\"sbi_usage_tracking_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1685944800;a:2:{s:29:\"sb_instagram_feed_issue_email\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:9:\"sbiweekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:23:\"sbi_notification_update\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:9:\"sbiweekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1689082930;a:1:{s:18:\"qligg_cron_account\";a:1:{s:32:\"4f7caf6939a42842ee30832123456bd9\";a:3:{s:8:\"schedule\";s:10:\"fifty_days\";s:4:\"args\";a:1:{i:0;s:16:\"6143356742384997\";}s:8:\"interval\";i:4320000;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'nonce_key', '3<u]bZ@&|EBazJv%`t;!Ee]Pz^*9SWpy0N|m#oE6{(?yThO& ;z7}7S$j c$Rn5H', 'no'),
(116, 'nonce_salt', 'ZPlyW~ZPRV5FPkSQZ@k^ZL`,tt1Y1mm4p2k( nGbA 2ycBM1GB?c2:a%j>JK@+JG', 'no'),
(117, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(123, 'recovery_keys', 'a:0:{}', 'yes'),
(124, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}', 'yes'),
(125, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.2.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.2.2\";s:7:\"version\";s:5:\"6.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1684737525;s:15:\"version_checked\";s:5:\"6.2.2\";s:12:\"translations\";a:0:{}}', 'no'),
(126, 'theme_mods_twentytwentythree', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1684738295;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(131, '_site_transient_update_themes', 'O:8:\"stdClass\":2:{s:12:\"last_checked\";i:1685166091;s:15:\"version_checked\";s:5:\"6.2.2\";}', 'no'),
(132, 'auth_key', '~WI,R>=5|wDe47l6y*UmR)pk+~F#CBxX*nkq%m!eQux-aXiKBYQq#K{|]`y4+Lo>', 'no'),
(133, 'auth_salt', '?IRG+&: m4N6M!.jLxCI^>|YpNfP6.9MVvOi09C9!y.9V~/X2(]K]J7z^jy_BLN{', 'no'),
(134, 'logged_in_key', 'Fr:k.p<&MlHk|2n/l,VGV0A,xzzd!z{5SL;bI3T[k<4}k &nn/pb-E*u=nPS>FwJ', 'no'),
(135, 'logged_in_salt', 'Ru;<9flNaRGJ63Goyoye?b]s;;8Fhaoa=I9wf_V[Y8q@oMJjuBniNmo0tND`kY^f', 'no'),
(136, '_site_transient_timeout_browser_c2e8770a57bb05f02fa99fc10237a511', '1685342292', 'no'),
(137, '_site_transient_browser_c2e8770a57bb05f02fa99fc10237a511', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"113.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(138, '_site_transient_timeout_php_check_62ad80f1739dc9fe3abaa2e5cae471cd', '1685342293', 'no'),
(139, '_site_transient_php_check_62ad80f1739dc9fe3abaa2e5cae471cd', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(143, 'can_compress_scripts', '1', 'no'),
(154, 'recently_activated', 'a:1:{s:31:\"insta-gallery/insta-gallery.php\";i:1684763892;}', 'yes'),
(158, 'acf_version', '5.9.3', 'yes'),
(166, 'finished_updating_comment_type', '1', 'yes'),
(173, 'current_theme', 'Beauty', 'yes'),
(174, 'theme_mods_beauty', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:10;s:6:\"footer\";i:12;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(175, 'theme_switched', '', 'yes'),
(176, 'recovery_mode_email_last_sent', '1684738296', 'yes'),
(178, 'options_h_logo', '40', 'no'),
(179, '_options_h_logo', 'field_607565820f90c', 'no'),
(180, 'options_favicon', '40', 'no'),
(181, '_options_favicon', 'field_60d93090334e7', 'no'),
(182, 'options_h_book_room_text', '', 'no'),
(183, '_options_h_book_room_text', 'field_64059ff43c70c', 'no'),
(184, 'options_h_book_room_link', '', 'no'),
(185, '_options_h_book_room_link', 'field_6405a00e3c70d', 'no'),
(186, 'options_h_phone_text', '', 'no'),
(187, '_options_h_phone_text', 'field_6405a23a84cc5', 'no'),
(188, 'options_h_phone', '', 'no'),
(189, '_options_h_phone', 'field_60d92feb334e6', 'no'),
(190, 'options_social', '', 'no'),
(191, '_options_social', 'field_641145c899f5e', 'no'),
(192, 'options_f_policy_f_text', '', 'no'),
(193, '_options_f_policy_f_text', 'field_64116d8353441', 'no'),
(194, 'options_f_policy_f_link', '', 'no'),
(195, '_options_f_policy_f_link', 'field_64116d9253442', 'no'),
(196, 'options_f_policy', '', 'no'),
(197, '_options_f_policy', 'field_64116d6053440', 'no'),
(198, 'options_f_about_company_f_text', '', 'no'),
(199, '_options_f_about_company_f_text', 'field_64116db453444', 'no'),
(200, 'options_f_about_company_f_link', '', 'no'),
(201, '_options_f_about_company_f_link', 'field_64116db453445', 'no'),
(202, 'options_f_about_company', '', 'no'),
(203, '_options_f_about_company', 'field_64116db453443', 'no'),
(204, 'options_copyright', '2023 © Stage Asia LLC.', 'no'),
(205, '_options_copyright', 'field_64114f07c5a03', 'no'),
(206, 'options_smtp_encryption', '', 'no'),
(207, '_options_smtp_encryption', 'field_60d93285153c6', 'no'),
(208, 'options_smtp_port', '', 'no'),
(209, '_options_smtp_port', 'field_60d93294153c7', 'no'),
(210, 'options_smtp_user', 'trang@yopmail.com', 'no'),
(211, '_options_smtp_user', 'field_60d932b0153c9', 'no'),
(212, 'options_smtp_pass', 'trang123456', 'no'),
(213, '_options_smtp_pass', 'field_60d932bb153ca', 'no'),
(214, 'options_insert_code_header', '', 'no'),
(215, '_options_insert_code_header', 'field_6168f0decef88', 'no'),
(216, 'options_insert_code_footer', '', 'no'),
(217, '_options_insert_code_footer', 'field_6168f0e8cef89', 'no'),
(223, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.7.6\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1684743894;s:7:\"version\";s:5:\"5.7.6\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(228, 'polylang', 'a:15:{s:7:\"browser\";i:0;s:7:\"rewrite\";i:1;s:12:\"hide_default\";i:1;s:10:\"force_lang\";i:1;s:13:\"redirect_lang\";i:0;s:13:\"media_support\";b:1;s:9:\"uninstall\";i:0;s:4:\"sync\";a:0:{}s:10:\"post_types\";a:0:{}s:10:\"taxonomies\";a:0:{}s:7:\"domains\";a:0:{}s:7:\"version\";s:5:\"3.3.3\";s:16:\"first_activation\";i:1684744184;s:12:\"default_lang\";s:2:\"vi\";s:9:\"nav_menus\";a:1:{s:6:\"beauty\";a:2:{s:7:\"primary\";a:2:{s:2:\"vi\";i:10;s:2:\"ja\";i:11;}s:6:\"footer\";a:2:{s:2:\"vi\";i:12;s:2:\"ja\";i:0;}}}}', 'yes'),
(229, 'polylang_wpml_strings', 'a:0:{}', 'yes'),
(230, 'widget_polylang', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(233, 'rewrite_rules', 'a:187:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:53:\"^(ja)/wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:92:\"index.php?lang=$matches[1]&sitemap=$matches[2]&sitemap-subtype=$matches[3]&paged=$matches[4]\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:39:\"^(ja)/wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:64:\"index.php?lang=$matches[1]&sitemap=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:52:\"(ja)/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?lang=$matches[1]&category_name=$matches[2]&feed=$matches[3]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:47:\"(ja)/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?lang=$matches[1]&category_name=$matches[2]&feed=$matches[3]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:28:\"(ja)/category/(.+?)/embed/?$\";s:63:\"index.php?lang=$matches[1]&category_name=$matches[2]&embed=true\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:40:\"(ja)/category/(.+?)/page/?([0-9]{1,})/?$\";s:70:\"index.php?lang=$matches[1]&category_name=$matches[2]&paged=$matches[3]\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:22:\"(ja)/category/(.+?)/?$\";s:52:\"index.php?lang=$matches[1]&category_name=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:49:\"(ja)/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&tag=$matches[2]&feed=$matches[3]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:44:\"(ja)/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&tag=$matches[2]&feed=$matches[3]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:25:\"(ja)/tag/([^/]+)/embed/?$\";s:53:\"index.php?lang=$matches[1]&tag=$matches[2]&embed=true\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:37:\"(ja)/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:60:\"index.php?lang=$matches[1]&tag=$matches[2]&paged=$matches[3]\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:19:\"(ja)/tag/([^/]+)/?$\";s:42:\"index.php?lang=$matches[1]&tag=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:50:\"(ja)/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&post_format=$matches[2]&feed=$matches[3]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=vi&post_format=$matches[1]&feed=$matches[2]\";s:45:\"(ja)/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&post_format=$matches[2]&feed=$matches[3]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=vi&post_format=$matches[1]&feed=$matches[2]\";s:26:\"(ja)/type/([^/]+)/embed/?$\";s:61:\"index.php?lang=$matches[1]&post_format=$matches[2]&embed=true\";s:21:\"type/([^/]+)/embed/?$\";s:52:\"index.php?lang=vi&post_format=$matches[1]&embed=true\";s:38:\"(ja)/type/([^/]+)/page/?([0-9]{1,})/?$\";s:68:\"index.php?lang=$matches[1]&post_format=$matches[2]&paged=$matches[3]\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?lang=vi&post_format=$matches[1]&paged=$matches[2]\";s:20:\"(ja)/type/([^/]+)/?$\";s:50:\"index.php?lang=$matches[1]&post_format=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:41:\"index.php?lang=vi&post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:37:\"(ja)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?lang=$matches[1]&&feed=$matches[2]\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:35:\"index.php?lang=vi&&feed=$matches[1]\";s:32:\"(ja)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?lang=$matches[1]&&feed=$matches[2]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:35:\"index.php?lang=vi&&feed=$matches[1]\";s:13:\"(ja)/embed/?$\";s:38:\"index.php?lang=$matches[1]&&embed=true\";s:8:\"embed/?$\";s:29:\"index.php?lang=vi&&embed=true\";s:25:\"(ja)/page/?([0-9]{1,})/?$\";s:45:\"index.php?lang=$matches[1]&&paged=$matches[2]\";s:20:\"page/?([0-9]{1,})/?$\";s:36:\"index.php?lang=vi&&paged=$matches[1]\";s:32:\"(ja)/comment-page-([0-9]{1,})/?$\";s:55:\"index.php?lang=$matches[1]&&page_id=2&cpage=$matches[2]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:46:\"index.php?lang=vi&&page_id=2&cpage=$matches[1]\";s:7:\"(ja)/?$\";s:26:\"index.php?lang=$matches[1]\";s:46:\"(ja)/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&&feed=$matches[2]&withcomments=1\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?lang=vi&&feed=$matches[1]&withcomments=1\";s:41:\"(ja)/comments/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&&feed=$matches[2]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?lang=vi&&feed=$matches[1]&withcomments=1\";s:22:\"(ja)/comments/embed/?$\";s:38:\"index.php?lang=$matches[1]&&embed=true\";s:17:\"comments/embed/?$\";s:29:\"index.php?lang=vi&&embed=true\";s:49:\"(ja)/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?lang=$matches[1]&s=$matches[2]&feed=$matches[3]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?lang=vi&s=$matches[1]&feed=$matches[2]\";s:44:\"(ja)/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?lang=$matches[1]&s=$matches[2]&feed=$matches[3]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?lang=vi&s=$matches[1]&feed=$matches[2]\";s:25:\"(ja)/search/(.+)/embed/?$\";s:51:\"index.php?lang=$matches[1]&s=$matches[2]&embed=true\";s:20:\"search/(.+)/embed/?$\";s:42:\"index.php?lang=vi&s=$matches[1]&embed=true\";s:37:\"(ja)/search/(.+)/page/?([0-9]{1,})/?$\";s:58:\"index.php?lang=$matches[1]&s=$matches[2]&paged=$matches[3]\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?lang=vi&s=$matches[1]&paged=$matches[2]\";s:19:\"(ja)/search/(.+)/?$\";s:40:\"index.php?lang=$matches[1]&s=$matches[2]\";s:14:\"search/(.+)/?$\";s:31:\"index.php?lang=vi&s=$matches[1]\";s:52:\"(ja)/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&author_name=$matches[2]&feed=$matches[3]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=vi&author_name=$matches[1]&feed=$matches[2]\";s:47:\"(ja)/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&author_name=$matches[2]&feed=$matches[3]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=vi&author_name=$matches[1]&feed=$matches[2]\";s:28:\"(ja)/author/([^/]+)/embed/?$\";s:61:\"index.php?lang=$matches[1]&author_name=$matches[2]&embed=true\";s:23:\"author/([^/]+)/embed/?$\";s:52:\"index.php?lang=vi&author_name=$matches[1]&embed=true\";s:40:\"(ja)/author/([^/]+)/page/?([0-9]{1,})/?$\";s:68:\"index.php?lang=$matches[1]&author_name=$matches[2]&paged=$matches[3]\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?lang=vi&author_name=$matches[1]&paged=$matches[2]\";s:22:\"(ja)/author/([^/]+)/?$\";s:50:\"index.php?lang=$matches[1]&author_name=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:41:\"index.php?lang=vi&author_name=$matches[1]\";s:74:\"(ja)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&feed=$matches[5]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:88:\"index.php?lang=vi&year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:69:\"(ja)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&feed=$matches[5]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:88:\"index.php?lang=vi&year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:50:\"(ja)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:91:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&embed=true\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:82:\"index.php?lang=vi&year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:62:\"(ja)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:98:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&paged=$matches[5]\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:89:\"index.php?lang=vi&year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:44:\"(ja)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:80:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:71:\"index.php?lang=vi&year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:61:\"(ja)/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:81:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&feed=$matches[4]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:72:\"index.php?lang=vi&year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:56:\"(ja)/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:81:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&feed=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:72:\"index.php?lang=vi&year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:37:\"(ja)/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:75:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&embed=true\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:66:\"index.php?lang=vi&year=$matches[1]&monthnum=$matches[2]&embed=true\";s:49:\"(ja)/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:82:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&paged=$matches[4]\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:73:\"index.php?lang=vi&year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:31:\"(ja)/([0-9]{4})/([0-9]{1,2})/?$\";s:64:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:55:\"index.php?lang=vi&year=$matches[1]&monthnum=$matches[2]\";s:48:\"(ja)/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:60:\"index.php?lang=$matches[1]&year=$matches[2]&feed=$matches[3]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?lang=vi&year=$matches[1]&feed=$matches[2]\";s:43:\"(ja)/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:60:\"index.php?lang=$matches[1]&year=$matches[2]&feed=$matches[3]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?lang=vi&year=$matches[1]&feed=$matches[2]\";s:24:\"(ja)/([0-9]{4})/embed/?$\";s:54:\"index.php?lang=$matches[1]&year=$matches[2]&embed=true\";s:19:\"([0-9]{4})/embed/?$\";s:45:\"index.php?lang=vi&year=$matches[1]&embed=true\";s:36:\"(ja)/([0-9]{4})/page/?([0-9]{1,})/?$\";s:61:\"index.php?lang=$matches[1]&year=$matches[2]&paged=$matches[3]\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:52:\"index.php?lang=vi&year=$matches[1]&paged=$matches[2]\";s:18:\"(ja)/([0-9]{4})/?$\";s:43:\"index.php?lang=$matches[1]&year=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:34:\"index.php?lang=vi&year=$matches[1]\";s:32:\"(ja)/.?.+?/attachment/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"(ja)/.?.+?/attachment/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"(ja)/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"(ja)/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"(ja)/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"(ja)/.?.+?/attachment/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"(ja)/(.?.+?)/embed/?$\";s:58:\"index.php?lang=$matches[1]&pagename=$matches[2]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:25:\"(ja)/(.?.+?)/trackback/?$\";s:52:\"index.php?lang=$matches[1]&pagename=$matches[2]&tb=1\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:45:\"(ja)/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?lang=$matches[1]&pagename=$matches[2]&feed=$matches[3]\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:40:\"(ja)/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?lang=$matches[1]&pagename=$matches[2]&feed=$matches[3]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:33:\"(ja)/(.?.+?)/page/?([0-9]{1,})/?$\";s:65:\"index.php?lang=$matches[1]&pagename=$matches[2]&paged=$matches[3]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:40:\"(ja)/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?lang=$matches[1]&pagename=$matches[2]&cpage=$matches[3]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:29:\"(ja)/(.?.+?)(?:/([0-9]+))?/?$\";s:64:\"index.php?lang=$matches[1]&pagename=$matches[2]&page=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:36:\"(ja)/.+?/[^/]+/attachment/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:31:\".+?/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"(ja)/.+?/[^/]+/attachment/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:41:\".+?/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"(ja)/.+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:61:\".+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"(ja)/.+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:56:\".+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"(ja)/.+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:56:\".+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"(ja)/.+?/[^/]+/attachment/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:37:\".+?/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"(ja)/(.+?)/([^/]+)/embed/?$\";s:80:\"index.php?lang=$matches[1]&category_name=$matches[2]&name=$matches[3]&embed=true\";s:22:\"(.+?)/([^/]+)/embed/?$\";s:63:\"index.php?category_name=$matches[1]&name=$matches[2]&embed=true\";s:31:\"(ja)/(.+?)/([^/]+)/trackback/?$\";s:74:\"index.php?lang=$matches[1]&category_name=$matches[2]&name=$matches[3]&tb=1\";s:26:\"(.+?)/([^/]+)/trackback/?$\";s:57:\"index.php?category_name=$matches[1]&name=$matches[2]&tb=1\";s:51:\"(ja)/(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:86:\"index.php?lang=$matches[1]&category_name=$matches[2]&name=$matches[3]&feed=$matches[4]\";s:46:\"(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:46:\"(ja)/(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:86:\"index.php?lang=$matches[1]&category_name=$matches[2]&name=$matches[3]&feed=$matches[4]\";s:41:\"(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:39:\"(ja)/(.+?)/([^/]+)/page/?([0-9]{1,})/?$\";s:87:\"index.php?lang=$matches[1]&category_name=$matches[2]&name=$matches[3]&paged=$matches[4]\";s:34:\"(.+?)/([^/]+)/page/?([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&paged=$matches[3]\";s:46:\"(ja)/(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:87:\"index.php?lang=$matches[1]&category_name=$matches[2]&name=$matches[3]&cpage=$matches[4]\";s:41:\"(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&cpage=$matches[3]\";s:35:\"(ja)/(.+?)/([^/]+)(?:/([0-9]+))?/?$\";s:86:\"index.php?lang=$matches[1]&category_name=$matches[2]&name=$matches[3]&page=$matches[4]\";s:30:\"(.+?)/([^/]+)(?:/([0-9]+))?/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&page=$matches[3]\";s:25:\"(ja)/.+?/[^/]+/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:20:\".+?/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"(ja)/.+?/[^/]+/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:30:\".+?/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"(ja)/.+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:50:\".+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"(ja)/.+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:45:\".+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"(ja)/.+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:45:\".+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"(ja)/.+?/[^/]+/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:26:\".+?/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:43:\"(ja)/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?lang=$matches[1]&category_name=$matches[2]&feed=$matches[3]\";s:38:\"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:38:\"(ja)/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?lang=$matches[1]&category_name=$matches[2]&feed=$matches[3]\";s:33:\"(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:19:\"(ja)/(.+?)/embed/?$\";s:63:\"index.php?lang=$matches[1]&category_name=$matches[2]&embed=true\";s:14:\"(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:31:\"(ja)/(.+?)/page/?([0-9]{1,})/?$\";s:70:\"index.php?lang=$matches[1]&category_name=$matches[2]&paged=$matches[3]\";s:26:\"(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:38:\"(ja)/(.+?)/comment-page-([0-9]{1,})/?$\";s:70:\"index.php?lang=$matches[1]&category_name=$matches[2]&cpage=$matches[3]\";s:33:\"(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&cpage=$matches[2]\";s:13:\"(ja)/(.+?)/?$\";s:52:\"index.php?lang=$matches[1]&category_name=$matches[2]\";s:8:\"(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";}', 'yes'),
(241, 'pll_dismissed_notices', 'a:1:{i:0;s:6:\"wizard\";}', 'yes'),
(247, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(250, 'options_h_button', 'a:3:{s:5:\"title\";s:32:\"Tuyển dụng nhà phân phối\";s:3:\"url\";s:62:\"http://localhost:8080/scsoft/beauty/uncategorized/hello-world/\";s:6:\"target\";s:6:\"_blank\";}', 'no'),
(251, '_options_h_button', 'field_646b2dac3d333', 'no'),
(266, 'options_h_button_ja', 'a:3:{s:5:\"title\";s:39:\"FDA取得依頼・ご相談はこちら\";s:3:\"url\";s:46:\"http://FDA取得依頼・ご相談はこちら\";s:6:\"target\";s:6:\"_blank\";}', 'no'),
(267, '_options_h_button_ja', 'field_646b36e436399', 'no'),
(284, 'sbi_statuses', 'a:6:{s:8:\"database\";a:1:{s:14:\"hashtag_column\";b:1;}s:13:\"first_install\";i:1684755452;s:4:\"gdpr\";a:1:{s:19:\"from_update_success\";b:0;}s:12:\"data_manager\";a:2:{s:9:\"last_used\";i:1684958626;s:14:\"num_db_updates\";i:31;}s:24:\"support_legacy_shortcode\";b:0;s:12:\"feed_locator\";a:2:{s:10:\"last_check\";i:1685166091;s:11:\"initialized\";i:1684755516;}}', 'yes'),
(285, 'sbi_usage_tracking', 'a:2:{s:7:\"enabled\";b:0;s:9:\"last_send\";i:0;}', 'yes'),
(286, 'widget_instagram-feed-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(287, 'sbi_usage_tracking_config', 'a:6:{s:3:\"day\";i:5;s:4:\"hour\";i:19;s:6:\"minute\";i:31;s:6:\"second\";i:33;s:6:\"offset\";i:502293;s:8:\"initsend\";i:1685129493;}', 'yes'),
(288, '_transient_timeout_instagram_feed_rating_notice_waiting', '1685965052', 'no'),
(289, '_transient_instagram_feed_rating_notice_waiting', 'waiting', 'no'),
(290, 'sbi_rating_notice', 'pending', 'no'),
(291, 'sbi_db_version', '2.1', 'yes'),
(292, 'sb_instagram_errors', 'a:9:{s:10:\"connection\";a:4:{s:8:\"error_id\";s:19:\"http_request_failed\";s:8:\"critical\";b:1;s:7:\"post_id\";b:0;s:13:\"error_message\";a:5:{s:13:\"error_message\";s:73:\"HTTP Error. Unable to connect to the Instagram API. Feed will not update.\";s:10:\"admin_only\";s:518:\"Error connecting to https://graph.instagram.com/17841402149518631/media?fields=media_url,thumbnail_url,caption,id,media_type,media_product_type,timestamp,username,comments_count,like_count,permalink,children%7Bmedia_url,id,media_type,timestamp,permalink,thumbnail_url%7D&limit=20&access_token=IGQVJWbHk0enRhVnJGYklkMlNua3FSTW5ZAZAWNrcXp5TnFnUE16MGVUck1UeVBsT3ppZAjI5b3BsemdiUE9teEduZA00wUUFVbTlOc3JXNWxTeHU4RlgzMklsWlFUeExBZAVZAQSkxLR1NB. http_request_failed - cURL error 6: Could not resolve host: graph.instagram.com\";s:19:\"frontend_directions\";s:137:\"<a href=\"https://smashballoon.com/instagram-feed/docs/errors/\" target=\"_blank\" rel=\"noopener\">Directions on how to resolve this issue</a>\";s:18:\"backend_directions\";s:0:\"\";s:4:\"time\";i:1685166091;}}s:7:\"hashtag\";a:0:{}s:8:\"resizing\";s:74:\"Error editing image. image_no_editor - No editor could be selected. | [] |\";s:15:\"database_create\";a:0:{}s:10:\"upload_dir\";a:0:{}s:8:\"accounts\";a:0:{}s:9:\"error_log\";a:10:{i:124;s:324:\"05-22 11:45:13 - Using backup editor method. https://scontent.cdninstagram.com/v/t51.29350-15/294026047_2192728090888909_4878005808292994323_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=ukC3jjsGkNAAX8m11vz&_nc_ht=scontent.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AfBA3WC14h0wMBJdfDDrS8y-bEVC0YW0LT5uX-3yPiI8pg&oe=6470CB0B\";i:125;s:91:\"05-22 11:45:13 - Error editing image. image_no_editor - No editor could be selected. | [] |\";i:126;s:322:\"05-22 11:45:13 - Using backup editor method. https://scontent.cdninstagram.com/v/t51.2885-15/292017300_646443810144821_3422464010103072430_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=XrwnK76BGfsAX_2vjIc&_nc_ht=scontent.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AfANkFWQVSJ1i_vB1IfAvrgiyqdzkKDrK6mOGWJiCqnc6w&oe=64708EC1\";i:127;s:91:\"05-22 11:45:13 - Error editing image. image_no_editor - No editor could be selected. | [] |\";i:128;s:322:\"05-22 11:45:13 - Using backup editor method. https://scontent.cdninstagram.com/v/t51.2885-15/292017300_646443810144821_3422464010103072430_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=XrwnK76BGfsAX_2vjIc&_nc_ht=scontent.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AfANkFWQVSJ1i_vB1IfAvrgiyqdzkKDrK6mOGWJiCqnc6w&oe=64708EC1\";i:129;s:91:\"05-22 11:45:13 - Error editing image. image_no_editor - No editor could be selected. | [] |\";i:130;s:322:\"05-22 11:45:14 - Using backup editor method. https://scontent.cdninstagram.com/v/t51.2885-15/292017300_646443810144821_3422464010103072430_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=XrwnK76BGfsAX_2vjIc&_nc_ht=scontent.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AfANkFWQVSJ1i_vB1IfAvrgiyqdzkKDrK6mOGWJiCqnc6w&oe=64708EC1\";i:131;s:91:\"05-22 11:45:14 - Error editing image. image_no_editor - No editor could be selected. | [] |\";i:132;s:535:\"05-27 05:41:31 - Error connecting to https://graph.instagram.com/17841402149518631/media?fields=media_url,thumbnail_url,caption,id,media_type,media_product_type,timestamp,username,comments_count,like_count,permalink,children%7Bmedia_url,id,media_type,timestamp,permalink,thumbnail_url%7D&limit=20&access_token=IGQVJWbHk0enRhVnJGYklkMlNua3FSTW5ZAZAWNrcXp5TnFnUE16MGVUck1UeVBsT3ppZAjI5b3BsemdiUE9teEduZA00wUUFVbTlOc3JXNWxTeHU4RlgzMklsWlFUeExBZAVZAQSkxLR1NB. http_request_failed - cURL error 6: Could not resolve host: graph.instagram.com\";i:133;s:535:\"05-27 05:41:31 - Error connecting to https://graph.instagram.com/17841402149518631/media?fields=media_url,thumbnail_url,caption,id,media_type,media_product_type,timestamp,username,comments_count,like_count,permalink,children%7Bmedia_url,id,media_type,timestamp,permalink,thumbnail_url%7D&limit=20&access_token=IGQVJWbHk0enRhVnJGYklkMlNua3FSTW5ZAZAWNrcXp5TnFnUE16MGVUck1UeVBsT3ppZAjI5b3BsemdiUE9teEduZA00wUUFVbTlOc3JXNWxTeHU4RlgzMklsWlFUeExBZAVZAQSkxLR1NB. http_request_failed - cURL error 6: Could not resolve host: graph.instagram.com\";}s:10:\"action_log\";a:1:{i:0;s:41:\"05-22 11:37:34 - Retesting GDPR features.\";}s:7:\"revoked\";a:0:{}}', 'no'),
(293, 'sb_instagram_settings', 'a:44:{s:15:\"sb_instagram_at\";s:0:\"\";s:20:\"sb_instagram_user_id\";s:0:\"\";s:30:\"sb_instagram_preserve_settings\";s:0:\"\";s:23:\"sb_instagram_ajax_theme\";b:0;s:27:\"sb_instagram_disable_resize\";b:0;s:23:\"sb_instagram_cache_time\";i:1;s:28:\"sb_instagram_cache_time_unit\";s:5:\"hours\";s:16:\"sbi_caching_type\";s:10:\"background\";s:23:\"sbi_cache_cron_interval\";s:7:\"12hours\";s:19:\"sbi_cache_cron_time\";s:1:\"1\";s:20:\"sbi_cache_cron_am_pm\";s:2:\"am\";s:18:\"sb_instagram_width\";s:3:\"100\";s:23:\"sb_instagram_width_unit\";s:1:\"%\";s:28:\"sb_instagram_feed_width_resp\";b:0;s:19:\"sb_instagram_height\";s:0:\"\";s:16:\"sb_instagram_num\";s:2:\"20\";s:24:\"sb_instagram_height_unit\";s:0:\"\";s:17:\"sb_instagram_cols\";s:1:\"4\";s:27:\"sb_instagram_disable_mobile\";b:0;s:26:\"sb_instagram_image_padding\";s:1:\"5\";s:31:\"sb_instagram_image_padding_unit\";s:2:\"px\";s:17:\"sb_instagram_sort\";s:4:\"none\";s:23:\"sb_instagram_background\";s:0:\"\";s:21:\"sb_instagram_show_btn\";b:1;s:27:\"sb_instagram_btn_background\";s:0:\"\";s:27:\"sb_instagram_btn_text_color\";s:0:\"\";s:21:\"sb_instagram_btn_text\";s:12:\"Load More...\";s:22:\"sb_instagram_image_res\";s:4:\"auto\";s:24:\"sb_instagram_show_header\";b:1;s:24:\"sb_instagram_header_size\";s:5:\"small\";s:25:\"sb_instagram_header_color\";s:0:\"\";s:28:\"sb_instagram_show_follow_btn\";b:1;s:33:\"sb_instagram_folow_btn_background\";s:0:\"\";s:34:\"sb_instagram_follow_btn_text_color\";s:0:\"\";s:28:\"sb_instagram_follow_btn_text\";s:19:\"Follow on Instagram\";s:23:\"sb_instagram_custom_css\";s:0:\"\";s:22:\"sb_instagram_custom_js\";s:0:\"\";s:17:\"sb_instagram_cron\";s:2:\"no\";s:19:\"sb_instagram_backup\";b:1;s:15:\"sb_ajax_initial\";b:0;s:24:\"enqueue_css_in_shortcode\";b:0;s:30:\"sb_instagram_disable_mob_swipe\";b:0;s:28:\"sb_instagram_disable_awesome\";b:0;s:18:\"connected_accounts\";a:0:{}}', 'yes'),
(294, 'sbi_single_cache', 'h0uV8Ybu76IPG47BDDWDzVd1dXRnZDNDL2VEYWtNSHN6ZkExVEtrZTZ0b3luUXM2WDJrN2xLdz0=', 'no'),
(296, 'sbi_notifications', 'a:4:{s:6:\"update\";i:1685166402;s:4:\"feed\";a:0:{}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(297, 'sbi_newuser_notifications', 'a:4:{s:6:\"update\";i:1684755456;s:4:\"feed\";a:2:{s:6:\"review\";a:6:{s:5:\"title\";s:22:\"Could you help us out?\";s:7:\"content\";s:273:\"It\'s great to see that you\'ve been using the <strong><span>{plugin}</span></strong> plugin for a while now. Hopefully you\'re happy with it!&nbsp; If so, would you consider leaving a positive review? It really helps to support the plugin and helps others to discover it too!\";s:2:\"id\";s:6:\"review\";s:5:\"image\";s:12:\"sbi-icon.png\";s:4:\"btns\";a:4:{s:7:\"primary\";a:4:{s:3:\"url\";s:12:\"{review-url}\";s:4:\"attr\";a:1:{i:0;s:11:\"targetblank\";}s:5:\"class\";s:31:\"sbi_notice_dismiss sbi_main_cta\";s:4:\"text\";s:18:\"Sure, I\'d love to!\";}s:7:\"dismiss\";a:3:{s:3:\"url\";a:1:{s:28:\"sbi_ignore_rating_notice_nag\";s:1:\"1\";}s:5:\"class\";s:18:\"sbi_notice_dismiss\";s:4:\"text\";s:9:\"No thanks\";}s:8:\"complete\";a:3:{s:3:\"url\";a:1:{s:28:\"sbi_ignore_rating_notice_nag\";s:1:\"1\";}s:5:\"class\";s:18:\"sbi_notice_dismiss\";s:4:\"text\";s:27:\"I\'ve already given a review\";}s:5:\"later\";a:3:{s:3:\"url\";a:1:{s:28:\"sbi_ignore_rating_notice_nag\";s:5:\"later\";}s:5:\"class\";s:18:\"sbi_notice_dismiss\";s:4:\"text\";s:12:\"Ask Me Later\";}}s:4:\"wait\";s:2:\"14\";}s:8:\"discount\";a:8:{s:5:\"title\";s:28:\"Attention {platform} Lovers!\";s:7:\"content\";s:221:\"<strong><span>Exclusive offer!</span></strong> We don\'t run promotions very often, but for a limited time we\'re offering <strong><span>{amount} off</span></strong> our Pro version to all users of our free {plugin} plugin.\";s:2:\"id\";s:8:\"discount\";s:6:\"amount\";s:3:\"60%\";s:5:\"image\";s:12:\"sbi-icon.png\";s:13:\"image_overlay\";s:7:\"60% off\";s:4:\"btns\";a:2:{s:7:\"primary\";a:4:{s:3:\"url\";s:127:\"https://smashballoon.com/{slug}/?utm_campaign={campaign}&utm_source=notices&utm_medium=newuser&discount={lowerplatform}thankyou\";s:5:\"class\";s:32:\"sbi_notice_dismiss sbi_offer_btn\";s:4:\"text\";s:14:\"Get this offer\";s:4:\"attr\";a:1:{i:0;s:11:\"targetblank\";}}s:7:\"dismiss\";a:3:{s:3:\"url\";a:1:{s:31:\"sbi_ignore_new_user_sale_notice\";s:6:\"always\";}s:5:\"class\";s:18:\"sbi_notice_dismiss\";s:4:\"text\";s:18:\"I\'m not interested\";}}s:4:\"wait\";s:2:\"30\";}}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}', 'yes'),
(299, 'sbi_cron_report', 'a:2:{s:5:\"notes\";a:2:{s:8:\"time_ran\";s:19:\"2023-05-27 05:41:31\";s:20:\"num_found_transients\";i:2;}i:1;a:2:{s:13:\"last_retrieve\";s:19:\"2023-05-27 05:41:31\";s:10:\"did_update\";s:3:\"yes\";}}', 'no'),
(300, 'sbi_local_avatars', 'a:1:{s:9:\"_saauluoi\";b:0;}', 'yes'),
(309, '_transient_timeout_quadlayers_insta-gallery_notice_delay', '1687354893', 'no'),
(310, '_transient_quadlayers_insta-gallery_notice_delay', '1', 'no'),
(311, 'widget_qligg_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(312, 'insta_gallery_accounts', 'a:1:{i:6143356742384997;a:7:{s:2:\"id\";s:16:\"6143356742384997\";s:8:\"username\";s:0:\"\";s:19:\"profile_picture_url\";s:0:\"\";s:12:\"access_token\";s:141:\"IGQVJVa3B3SXp6MVdGUGk4TWtSSXZAobDFVQ055WU1qNzJJQmd3TFVkb1otWkw1LVkwazRodWhEcjVMYUpjYjR5TlUybEFyeFNRWFFGQ0hRMzZAfeWItU3hfZAVBHb1hxcDlxWnhjRm9R\";s:17:\"access_token_type\";s:8:\"PERSONAL\";s:28:\"access_token_expiration_date\";i:1689946929;s:27:\"access_token_renew_attempts\";i:0;}}', 'yes'),
(317, 'insta_gallery_settings', 'a:4:{s:11:\"insta_flush\";b:0;s:11:\"insta_reset\";i:8;s:17:\"spinner_image_url\";s:85:\"http://localhost:8080/scsoft/beauty/wp-content/uploads/2023/05/loading_background.png\";s:13:\"mail_to_alert\";s:20:\"sauluoi157@gmail.com\";}', 'yes'),
(318, 'insta_gallery_feeds', 'a:1:{i:0;a:21:{s:2:\"id\";i:0;s:10:\"account_id\";s:16:\"6143356742384997\";s:6:\"source\";s:8:\"username\";s:3:\"tag\";s:9:\"wordpress\";s:8:\"order_by\";s:9:\"top_media\";s:6:\"layout\";s:7:\"gallery\";s:5:\"limit\";i:12;s:7:\"columns\";i:3;s:4:\"lazy\";b:1;s:7:\"spacing\";i:10;s:9:\"highlight\";a:3:{s:3:\"tag\";s:0:\"\";s:2:\"id\";s:0:\"\";s:8:\"position\";s:5:\"1,3,5\";}s:4:\"reel\";a:1:{s:4:\"hide\";b:1;}s:9:\"copyright\";a:2:{s:4:\"hide\";b:1;s:11:\"placeholder\";s:0:\"\";}s:7:\"profile\";a:9:{s:7:\"display\";b:0;s:4:\"auto\";b:0;s:8:\"username\";s:0:\"\";s:8:\"nickname\";s:0:\"\";s:7:\"website\";s:0:\"\";s:9:\"biography\";s:0:\"\";s:9:\"link_text\";s:6:\"Follow\";s:12:\"website_text\";s:7:\"Website\";s:6:\"avatar\";s:0:\"\";}s:3:\"box\";a:7:{s:7:\"display\";b:0;s:7:\"padding\";i:1;s:6:\"radius\";i:0;s:10:\"background\";s:7:\"#fefefe\";s:7:\"profile\";b:0;s:4:\"desc\";s:0:\"\";s:10:\"text_color\";s:7:\"#000000\";}s:4:\"mask\";a:4:{s:7:\"display\";b:0;s:10:\"background\";s:7:\"#000000\";s:11:\"likes_count\";b:1;s:14:\"comments_count\";b:1;}s:4:\"card\";a:10:{s:7:\"display\";b:0;s:6:\"radius\";i:1;s:9:\"font_size\";i:12;s:10:\"background\";s:7:\"#ffffff\";s:16:\"background_hover\";s:7:\"#ffffff\";s:10:\"text_color\";s:7:\"#000000\";s:7:\"padding\";i:5;s:11:\"likes_count\";b:1;s:11:\"text_length\";i:10;s:14:\"comments_count\";b:1;}s:8:\"carousel\";a:7:{s:8:\"slidespv\";i:5;s:8:\"autoplay\";b:0;s:17:\"autoplay_interval\";i:3000;s:9:\"navarrows\";b:1;s:15:\"navarrows_color\";s:0:\"\";s:10:\"pagination\";b:1;s:16:\"pagination_color\";s:0:\"\";}s:5:\"modal\";a:7:{s:7:\"display\";b:0;s:7:\"profile\";b:0;s:17:\"media_description\";b:0;s:11:\"likes_count\";b:0;s:14:\"comments_count\";b:0;s:5:\"align\";s:6:\"bottom\";s:11:\"text_length\";i:10000;}s:6:\"button\";a:5:{s:7:\"display\";b:0;s:4:\"text\";s:17:\"View on Instagram\";s:10:\"text_color\";s:5:\"#ffff\";s:10:\"background\";s:0:\"\";s:16:\"background_hover\";s:0:\"\";}s:11:\"button_load\";a:5:{s:7:\"display\";b:0;s:4:\"text\";s:12:\"Load more...\";s:10:\"text_color\";s:5:\"#ffff\";s:10:\"background\";s:0:\"\";s:16:\"background_hover\";s:0:\"\";}}}', 'yes'),
(336, '_site_transient_update_plugins', 'O:8:\"stdClass\":2:{s:12:\"last_checked\";i:1685166091;s:15:\"version_checked\";s:5:\"6.2.2\";}', 'no'),
(337, 'duplicate_page_options', 'a:4:{s:21:\"duplicate_post_status\";s:5:\"draft\";s:23:\"duplicate_post_redirect\";s:7:\"to_list\";s:21:\"duplicate_post_suffix\";s:0:\"\";s:21:\"duplicate_post_editor\";s:7:\"classic\";}', 'yes'),
(339, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(363, '_transient_health-check-site-status-result', '{\"good\":14,\"recommended\":6,\"critical\":2}', 'yes'),
(423, 'category_children', 'a:0:{}', 'yes'),
(477, '_transient_pll_languages_list', 'a:2:{i:0;a:24:{s:7:\"term_id\";i:2;s:4:\"name\";s:14:\"Tiếng Việt\";s:4:\"slug\";s:2:\"vi\";s:10:\"term_group\";i:0;s:16:\"term_taxonomy_id\";i:2;s:5:\"count\";i:21;s:10:\"tl_term_id\";i:3;s:19:\"tl_term_taxonomy_id\";i:3;s:8:\"tl_count\";i:9;s:6:\"locale\";s:2:\"vi\";s:6:\"is_rtl\";i:0;s:3:\"w3c\";s:2:\"vi\";s:8:\"facebook\";s:5:\"vi_VN\";s:8:\"home_url\";s:36:\"http://localhost:8080/scsoft/beauty/\";s:10:\"search_url\";s:36:\"http://localhost:8080/scsoft/beauty/\";s:4:\"host\";N;s:5:\"mo_id\";s:2:\"42\";s:13:\"page_on_front\";i:2;s:14:\"page_for_posts\";b:0;s:9:\"flag_code\";s:2:\"vn\";s:8:\"flag_url\";s:76:\"http://localhost:8080/scsoft/beauty/wp-content/plugins/polylang/flags/vn.png\";s:4:\"flag\";s:435:\"<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAMAAABBPP0LAAAATlBMVEX+AAD2AADvAQH/eXn+cXL9amr8YmL9Wlr8UlL7TkvoAAD8d0f6Pz/3ODf2Ly/0KSf6R0f6wTv60T31IBz6+jr4+Cv3QybzEhL4bizhAADgATv8AAAAW0lEQVR4AQXBgU3DQBRAMb+7jwKVUPefkQEQTYJqByBENpKUGoZslXoN5LPONH8G9WWZ7pGlOn6XZmaGRce1J/seei4dl+7dPWDqkk7+58e3+igdlySPcYbwBG+lPhCjrtt9EgAAAABJRU5ErkJggg==\" alt=\"Tiếng Việt\" width=\"16\" height=\"11\" style=\"width: 16px; height: 11px;\" />\";s:15:\"custom_flag_url\";N;s:11:\"custom_flag\";N;}i:1;a:24:{s:7:\"term_id\";i:5;s:4:\"name\";s:9:\"日本語\";s:4:\"slug\";s:2:\"ja\";s:10:\"term_group\";i:0;s:16:\"term_taxonomy_id\";i:5;s:5:\"count\";i:5;s:10:\"tl_term_id\";i:6;s:19:\"tl_term_taxonomy_id\";i:6;s:8:\"tl_count\";i:5;s:6:\"locale\";s:2:\"ja\";s:6:\"is_rtl\";i:0;s:3:\"w3c\";s:2:\"ja\";s:8:\"facebook\";s:5:\"ja_JP\";s:8:\"home_url\";s:46:\"http://localhost:8080/scsoft/beauty/ja/top-ja/\";s:10:\"search_url\";s:39:\"http://localhost:8080/scsoft/beauty/ja/\";s:4:\"host\";N;s:5:\"mo_id\";s:2:\"43\";s:13:\"page_on_front\";i:164;s:14:\"page_for_posts\";b:0;s:9:\"flag_code\";s:2:\"jp\";s:8:\"flag_url\";s:76:\"http://localhost:8080/scsoft/beauty/wp-content/plugins/polylang/flags/jp.png\";s:4:\"flag\";s:398:\"<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAMAAABBPP0LAAAAPFBMVEX09PTy8fHy6+vm5+b+/v77+/v29vbf39/5vLz5fHz6qqr6UFD7QUH5NDT3lZXa2tr419f3JibT09P2WloskN4YAAAAVUlEQVR4AQXBQU7FMBBAMb90hCoW3P+csCAKfIodIBIyQJAGmPQTDHgrzca94K/keT/nWOgjmdm4VvIpwy1GXOsZ9ndYYL/Wee3IRI/fr4PQCuPmAv/RTRUh24Q4UgAAAABJRU5ErkJggg==\" alt=\"日本語\" width=\"16\" height=\"11\" style=\"width: 16px; height: 11px;\" />\";s:15:\"custom_flag_url\";N;s:11:\"custom_flag\";N;}}', 'yes'),
(479, '_site_transient_timeout_theme_roots', '1685167891', 'no'),
(480, '_site_transient_theme_roots', 'a:4:{s:6:\"beauty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(481, '_site_transient_timeout_available_translations', '1685177014', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(482, '_site_transient_available_translations', 'a:130:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-05-13 15:59:22\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"am\";a:8:{s:8:\"language\";s:2:\"am\";s:7:\"version\";s:5:\"6.0.5\";s:7:\"updated\";s:19:\"2022-09-29 20:43:49\";s:12:\"english_name\";s:7:\"Amharic\";s:11:\"native_name\";s:12:\"አማርኛ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.0.5/am.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"am\";i:2;s:3:\"amh\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ቀጥል\";}}s:3:\"arg\";a:8:{s:8:\"language\";s:3:\"arg\";s:7:\"version\";s:8:\"6.2-beta\";s:7:\"updated\";s:19:\"2022-09-22 16:46:56\";s:12:\"english_name\";s:9:\"Aragonese\";s:11:\"native_name\";s:9:\"Aragonés\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/6.2-beta/arg.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"an\";i:2;s:3:\"arg\";i:3;s:3:\"arg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continar\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-04-02 03:21:35\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"متابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:6:\"4.8.22\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.22/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-26 21:06:31\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.23/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-15 13:16:57\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-24 09:02:17\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"অবিরত\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-10-30 03:24:38\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:33:\"མུ་མཐུད་དུ།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-02-22 20:45:53\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-24 10:00:09\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-22 09:37:21\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-10 08:48:02\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-20 20:08:45\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-03-28 07:33:50\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/6.2.2/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-03-29 21:14:35\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-22 14:37:33\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/6.2.2/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-22 12:57:54\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-03-28 07:37:41\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dsb\";a:8:{s:8:\"language\";s:3:\"dsb\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2022-07-16 12:13:09\";s:12:\"english_name\";s:13:\"Lower Sorbian\";s:11:\"native_name\";s:16:\"Dolnoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.2/dsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"dsb\";i:3;s:3:\"dsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Dalej\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-01 09:15:36\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-11 07:12:43\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-04-19 10:51:23\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-04-07 21:00:17\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"6.0.5\";s:7:\"updated\";s:19:\"2022-04-01 22:35:34\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.5/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"6.0.5\";s:7:\"updated\";s:19:\"2021-12-24 12:36:39\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.5/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-17 04:31:21\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-19 05:08:30\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-02-22 17:37:32\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-03-15 19:52:49\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-10 12:37:03\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-22 14:08:08\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_DO\";a:8:{s:8:\"language\";s:5:\"es_DO\";s:7:\"version\";s:5:\"5.8.7\";s:7:\"updated\";s:19:\"2021-10-08 14:32:50\";s:12:\"english_name\";s:28:\"Spanish (Dominican Republic)\";s:11:\"native_name\";s:33:\"Español de República Dominicana\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.7/es_DO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"5.8.7\";s:7:\"updated\";s:19:\"2021-10-04 20:53:18\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.7/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-31 18:33:26\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-06-14 16:02:22\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:6:\"5.4.13\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Español de Puerto Rico\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.13/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:6:\"5.2.18\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.2.18/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_EC\";a:8:{s:8:\"language\";s:5:\"es_EC\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-04-21 13:32:10\";s:12:\"english_name\";s:17:\"Spanish (Ecuador)\";s:11:\"native_name\";s:19:\"Español de Ecuador\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/es_EC.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-03-14 22:16:37\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-08-12 08:38:59\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-24 16:21:45\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_AF\";a:8:{s:8:\"language\";s:5:\"fa_AF\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-04-13 11:28:33\";s:12:\"english_name\";s:21:\"Persian (Afghanistan)\";s:11:\"native_name\";s:31:\"(فارسی (افغانستان\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/fa_AF.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-04-05 06:53:02\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-17 05:20:27\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-03 19:01:43\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-25 15:00:05\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-22 13:54:46\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:6:\"4.8.22\";s:7:\"updated\";s:19:\"2023-04-30 13:56:46\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.22/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"fy\";a:8:{s:8:\"language\";s:2:\"fy\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2022-12-25 12:53:23\";s:12:\"english_name\";s:7:\"Frisian\";s:11:\"native_name\";s:5:\"Frysk\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/fy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fy\";i:2;s:3:\"fry\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Trochgean\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-23 05:45:53\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.23/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ચાલુ રાખો\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:6:\"4.4.30\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.4.30/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-03-14 21:14:16\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:6:\"5.4.13\";s:7:\"updated\";s:19:\"2020-11-06 12:34:38\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.13/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"जारी रखें\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-04-17 11:08:02\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-02-22 17:37:32\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.2/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-24 14:00:40\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-10 07:01:02\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2018-12-11 10:40:02\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.23/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-12 13:09:27\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-24 05:57:21\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"次へ\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2019-02-16 23:58:56\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.23/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"6.0.5\";s:7:\"updated\";s:19:\"2023-05-19 07:40:56\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.5/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-04-28 12:09:00\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.2/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2018-07-10 11:35:44\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.23/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:6:\"5.2.18\";s:7:\"updated\";s:19:\"2019-06-10 16:18:28\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.18/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:5:\"6.1.3\";s:7:\"updated\";s:19:\"2022-10-20 17:15:28\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.3/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರಿಸು\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-03-30 09:50:37\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-26 17:49:51\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.2/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"6.1.3\";s:7:\"updated\";s:19:\"2022-11-24 03:51:58\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.3/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-25 02:26:43\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"6.0.5\";s:7:\"updated\";s:19:\"2022-10-01 09:23:52\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.5/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-03-09 01:41:47\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2019-11-22 15:32:08\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.23/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:6:\"5.5.12\";s:7:\"updated\";s:19:\"2022-03-11 13:52:22\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.5.12/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.2.35\";s:7:\"updated\";s:19:\"2017-12-26 11:57:10\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.35/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-12 12:55:33\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-04-03 04:46:20\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-03-30 10:02:03\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-02-22 21:20:14\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/6.2.2/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-24 11:19:53\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-18 10:59:16\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:6:\"4.8.22\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.22/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:15:\"Panjabi (India)\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-11 13:01:51\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.3.31\";s:7:\"updated\";s:19:\"2015-12-02 21:41:29\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.3.31/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-12 08:28:13\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-03-30 23:24:56\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/6.2.2/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-03-29 21:22:43\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2022-10-01 12:16:29\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-24 11:15:28\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-09 16:16:57\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:6:\"5.4.13\";s:7:\"updated\";s:19:\"2020-07-07 01:53:37\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/5.4.13/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:3:\"snd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-22 07:16:08\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-04-03 08:30:58\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.2/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2022-11-11 12:48:55\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-10 11:33:13\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"5.8.7\";s:7:\"updated\";s:19:\"2021-08-01 21:21:06\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.7/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-11 17:06:50\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:6:\"5.3.15\";s:7:\"updated\";s:19:\"2019-10-13 15:35:35\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.3.15/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:5:\"ta_LK\";a:8:{s:8:\"language\";s:5:\"ta_LK\";s:7:\"version\";s:6:\"4.2.35\";s:7:\"updated\";s:19:\"2015-12-03 01:07:44\";s:12:\"english_name\";s:17:\"Tamil (Sri Lanka)\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.35/ta_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"தொடர்க\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.8.7\";s:7:\"updated\";s:19:\"2022-06-08 04:30:30\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.7/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:6:\"4.8.22\";s:7:\"updated\";s:19:\"2017-09-30 09:04:29\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.22/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-22 10:14:53\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2021-07-03 18:41:33\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.23/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"6.1.3\";s:7:\"updated\";s:19:\"2023-03-04 10:46:30\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.3/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:6:\"5.4.13\";s:7:\"updated\";s:19:\"2020-04-09 11:17:33\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.13/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-28 12:02:22\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-03-10 01:15:33\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-16 19:47:32\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-24 10:05:05\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2022-07-15 15:25:03\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:12:\"香港中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'no');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'page.php'),
(2, 3, '_wp_page_template', 'default'),
(5, 2, '_edit_lock', '1684954906:1'),
(6, 40, '_wp_attached_file', '2023/05/logo.png'),
(7, 40, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:104;s:6:\"height\";i:76;s:4:\"file\";s:16:\"2023/05/logo.png\";s:8:\"filesize\";i:1345;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(8, 6, '_edit_lock', '1684751093:1'),
(9, 41, '_form', '<label> Your name\n    [text* your-name autocomplete:name] </label>\n\n<label> Your email\n    [email* your-email autocomplete:email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]'),
(10, 41, '_mail', 'a:8:{s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:36:\"[_site_title] <sauluoi157@gmail.com>\";s:4:\"body\";s:161:\"From: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(11, 41, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:36:\"[_site_title] <sauluoi157@gmail.com>\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(12, 41, '_messages', 'a:12:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";}'),
(13, 41, '_additional_settings', ''),
(14, 41, '_locale', 'en_US'),
(15, 42, '_pll_strings_translations', 'a:0:{}'),
(16, 43, '_pll_strings_translations', 'a:0:{}'),
(17, 2, '_edit_last', '1'),
(18, 44, '_edit_lock', '1684934836:1'),
(19, 46, '_edit_last', '1'),
(20, 46, '_edit_lock', '1684926867:1'),
(30, 50, '_menu_item_type', 'custom'),
(31, 50, '_menu_item_menu_item_parent', '0'),
(32, 50, '_menu_item_object_id', '50'),
(33, 50, '_menu_item_object', 'custom'),
(34, 50, '_menu_item_target', ''),
(35, 50, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(36, 50, '_menu_item_xfn', ''),
(37, 50, '_menu_item_url', '/'),
(39, 51, '_menu_item_type', 'custom'),
(40, 51, '_menu_item_menu_item_parent', '0'),
(41, 51, '_menu_item_object_id', '51'),
(42, 51, '_menu_item_object', 'custom'),
(43, 51, '_menu_item_target', ''),
(44, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(45, 51, '_menu_item_xfn', ''),
(46, 51, '_menu_item_url', '/'),
(57, 6, '_edit_last', '1'),
(58, 54, '_menu_item_type', 'custom'),
(59, 54, '_menu_item_menu_item_parent', '0'),
(60, 54, '_menu_item_object_id', '54'),
(61, 54, '_menu_item_object', 'custom'),
(62, 54, '_menu_item_target', ''),
(63, 54, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(64, 54, '_menu_item_xfn', ''),
(65, 54, '_menu_item_url', '/'),
(67, 55, '_menu_item_type', 'custom'),
(68, 55, '_menu_item_menu_item_parent', '0'),
(69, 55, '_menu_item_object_id', '55'),
(70, 55, '_menu_item_object', 'custom'),
(71, 55, '_menu_item_target', ''),
(72, 55, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(73, 55, '_menu_item_xfn', ''),
(74, 55, '_menu_item_url', '/'),
(76, 56, '_menu_item_type', 'custom'),
(77, 56, '_menu_item_menu_item_parent', '0'),
(78, 56, '_menu_item_object_id', '56'),
(79, 56, '_menu_item_object', 'custom'),
(80, 56, '_menu_item_target', ''),
(81, 56, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(82, 56, '_menu_item_xfn', ''),
(83, 56, '_menu_item_url', '/'),
(88, 44, '_edit_last', '1'),
(89, 44, '_wp_page_template', 'page.php'),
(90, 61, '_menu_item_type', 'post_type'),
(91, 61, '_menu_item_menu_item_parent', '0'),
(92, 61, '_menu_item_object_id', '2'),
(93, 61, '_menu_item_object', 'page'),
(94, 61, '_menu_item_target', ''),
(95, 61, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(96, 61, '_menu_item_xfn', ''),
(97, 61, '_menu_item_url', ''),
(99, 62, '_menu_item_type', 'custom'),
(100, 62, '_menu_item_menu_item_parent', '0'),
(101, 62, '_menu_item_object_id', '62'),
(102, 62, '_menu_item_object', 'custom'),
(103, 62, '_menu_item_target', ''),
(104, 62, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(105, 62, '_menu_item_xfn', ''),
(106, 62, '_menu_item_url', '/'),
(108, 63, '_menu_item_type', 'custom'),
(109, 63, '_menu_item_menu_item_parent', '0'),
(110, 63, '_menu_item_object_id', '63'),
(111, 63, '_menu_item_object', 'custom'),
(112, 63, '_menu_item_target', ''),
(113, 63, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(114, 63, '_menu_item_xfn', ''),
(115, 63, '_menu_item_url', '/'),
(117, 64, '_menu_item_type', 'custom'),
(118, 64, '_menu_item_menu_item_parent', '0'),
(119, 64, '_menu_item_object_id', '64'),
(120, 64, '_menu_item_object', 'custom'),
(121, 64, '_menu_item_target', ''),
(122, 64, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(123, 64, '_menu_item_xfn', ''),
(124, 64, '_menu_item_url', '/'),
(126, 65, '_menu_item_type', 'custom'),
(127, 65, '_menu_item_menu_item_parent', '0'),
(128, 65, '_menu_item_object_id', '65'),
(129, 65, '_menu_item_object', 'custom'),
(130, 65, '_menu_item_target', ''),
(131, 65, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(132, 65, '_menu_item_xfn', ''),
(133, 65, '_menu_item_url', '/'),
(135, 66, '_menu_item_type', 'custom'),
(136, 66, '_menu_item_menu_item_parent', '0'),
(137, 66, '_menu_item_object_id', '66'),
(138, 66, '_menu_item_object', 'custom'),
(139, 66, '_menu_item_target', ''),
(140, 66, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(141, 66, '_menu_item_xfn', ''),
(142, 66, '_menu_item_url', '/'),
(153, 68, '_edit_last', '1'),
(154, 68, '_edit_lock', '1685166401:1'),
(155, 74, '_wp_attached_file', '2023/05/img_mv.jpg'),
(156, 74, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:736;s:6:\"height\";i:414;s:4:\"file\";s:18:\"2023/05/img_mv.jpg\";s:8:\"filesize\";i:134938;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(157, 74, '_wp_attachment_image_alt', 'このエリアには16:9のバナーを差し替えて入れられる想定'),
(158, 75, '_wp_attached_file', '2023/05/mv1.jpg'),
(159, 75, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:736;s:6:\"height\";i:414;s:4:\"file\";s:15:\"2023/05/mv1.jpg\";s:8:\"filesize\";i:131636;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(160, 76, '_wp_attached_file', '2023/05/mv2.jpg'),
(161, 76, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:736;s:6:\"height\";i:414;s:4:\"file\";s:15:\"2023/05/mv2.jpg\";s:8:\"filesize\";i:203237;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(162, 75, '_wp_attachment_image_alt', 'このエリアには16:9のバナーを差し替えて入れられる想定'),
(163, 76, '_wp_attachment_image_alt', 'このエリアには16:9のバナーを差し替えて入れられる想定'),
(164, 2, 'top_main_visual_slide_0_top_main_visual_slide_image', '75'),
(165, 2, '_top_main_visual_slide_0_top_main_visual_slide_image', 'field_646b43bff2627'),
(166, 2, 'top_main_visual_slide_1_top_main_visual_slide_image', '76'),
(167, 2, '_top_main_visual_slide_1_top_main_visual_slide_image', 'field_646b43bff2627'),
(168, 2, 'top_main_visual_slide', '2'),
(169, 2, '_top_main_visual_slide', 'field_646b43b0f2626'),
(170, 2, 'top_text_slide', 'このエリアには16:9のバナーを<br>差し替えて入れられる想定'),
(171, 2, '_top_text_slide', 'field_646b4444f2628'),
(172, 2, 'top_main_visual_feature', '74'),
(173, 2, '_top_main_visual_feature', 'field_646b48f40c96b'),
(174, 77, 'top_main_visual_slide_0_top_main_visual_slide_image', '75'),
(175, 77, '_top_main_visual_slide_0_top_main_visual_slide_image', 'field_646b43bff2627'),
(176, 77, 'top_main_visual_slide_1_top_main_visual_slide_image', '76'),
(177, 77, '_top_main_visual_slide_1_top_main_visual_slide_image', 'field_646b43bff2627'),
(178, 77, 'top_main_visual_slide', '2'),
(179, 77, '_top_main_visual_slide', 'field_646b43b0f2626'),
(180, 77, 'top_text_slide', 'このエリアには16:9のバナーを<br>差し替えて入れられる想定'),
(181, 77, '_top_text_slide', 'field_646b4444f2628'),
(182, 77, 'top_main_visual_feature', '74'),
(183, 77, '_top_main_visual_feature', 'field_646b48f40c96b'),
(184, 79, '_wp_attached_file', '2023/05/loading_background.png'),
(185, 79, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:40;s:6:\"height\";i:40;s:4:\"file\";s:30:\"2023/05/loading_background.png\";s:8:\"filesize\";i:131;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(186, 78, '_edit_last', '1'),
(187, 78, '_edit_lock', '1684935171:1'),
(188, 1, '_edit_lock', '1684920541:1'),
(189, 81, '_wp_attached_file', '2023/05/s1_img1.jpg'),
(190, 81, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:256;s:6:\"height\";i:256;s:4:\"file\";s:19:\"2023/05/s1_img1.jpg\";s:8:\"filesize\";i:43026;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(191, 1, '_edit_last', '1'),
(192, 1, '_thumbnail_id', '81'),
(195, 1, '_wp_old_slug', 'hello-world'),
(196, 1, 'ins_link', ''),
(197, 1, '_ins_link', 'field_646b4d67173f3'),
(198, 82, 'ins_link', ''),
(199, 82, '_ins_link', 'field_646b4d67173f3'),
(202, 83, '_edit_lock', '1684767491:1'),
(203, 83, '_edit_last', '1'),
(204, 83, '_thumbnail_id', '81'),
(205, 83, '_wp_old_slug', 'hello-world'),
(206, 83, 'ins_link', ''),
(207, 83, '_ins_link', 'field_646b4d67173f3'),
(210, 85, '_edit_lock', '1684919624:1'),
(211, 85, '_edit_last', '1'),
(212, 85, '_thumbnail_id', '91'),
(213, 85, '_wp_old_slug', 'hello-world'),
(214, 85, 'ins_link', ''),
(215, 85, '_ins_link', 'field_646b4d67173f3'),
(216, 86, '_edit_lock', '1684767413:1'),
(217, 86, '_edit_last', '1'),
(218, 86, '_thumbnail_id', '89'),
(219, 86, '_wp_old_slug', 'hello-world'),
(220, 86, 'ins_link', ''),
(221, 86, '_ins_link', 'field_646b4d67173f3'),
(222, 87, '_edit_lock', '1684767521:1'),
(223, 87, '_edit_last', '1'),
(224, 87, '_thumbnail_id', '81'),
(225, 87, '_wp_old_slug', 'hello-world'),
(226, 87, 'ins_link', ''),
(227, 87, '_ins_link', 'field_646b4d67173f3'),
(230, 89, '_wp_attached_file', '2023/05/s2_img_04.jpg'),
(231, 89, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:256;s:6:\"height\";i:256;s:4:\"file\";s:21:\"2023/05/s2_img_04.jpg\";s:8:\"filesize\";i:44759;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(234, 90, 'ins_link', ''),
(235, 90, '_ins_link', 'field_646b4d67173f3'),
(236, 91, '_wp_attached_file', '2023/05/img4.jpg'),
(237, 91, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:364;s:6:\"height\";i:196;s:4:\"file\";s:16:\"2023/05/img4.jpg\";s:8:\"filesize\";i:45684;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(240, 92, 'ins_link', ''),
(241, 92, '_ins_link', 'field_646b4d67173f3'),
(242, 2, 'top_pick_up_choose_item', 'a:5:{i:0;s:2:\"87\";i:1;s:2:\"86\";i:2;s:2:\"85\";i:3;s:1:\"1\";i:4;s:2:\"83\";}'),
(243, 2, '_top_pick_up_choose_item', 'field_646dd4c4153fb'),
(244, 95, 'top_main_visual_slide_0_top_main_visual_slide_image', '75'),
(245, 95, '_top_main_visual_slide_0_top_main_visual_slide_image', 'field_646b43bff2627'),
(246, 95, 'top_main_visual_slide_1_top_main_visual_slide_image', '76'),
(247, 95, '_top_main_visual_slide_1_top_main_visual_slide_image', 'field_646b43bff2627'),
(248, 95, 'top_main_visual_slide', '2'),
(249, 95, '_top_main_visual_slide', 'field_646b43b0f2626'),
(250, 95, 'top_text_slide', 'このエリアには16:9のバナーを<br>差し替えて入れられる想定'),
(251, 95, '_top_text_slide', 'field_646b4444f2628'),
(252, 95, 'top_main_visual_feature', '74'),
(253, 95, '_top_main_visual_feature', 'field_646b48f40c96b'),
(254, 95, 'top_pick_up_choose_item', 'a:4:{i:0;s:2:\"87\";i:1;s:2:\"86\";i:2;s:2:\"85\";i:3;s:1:\"1\";}'),
(255, 95, '_top_pick_up_choose_item', 'field_646dd4c4153fb'),
(258, 96, 'top_main_visual_slide_0_top_main_visual_slide_image', '75'),
(259, 96, '_top_main_visual_slide_0_top_main_visual_slide_image', 'field_646b43bff2627'),
(260, 96, 'top_main_visual_slide_1_top_main_visual_slide_image', '76'),
(261, 96, '_top_main_visual_slide_1_top_main_visual_slide_image', 'field_646b43bff2627'),
(262, 96, 'top_main_visual_slide', '2'),
(263, 96, '_top_main_visual_slide', 'field_646b43b0f2626'),
(264, 96, 'top_text_slide', 'このエリアには16:9のバナーを<br>差し替えて入れられる想定'),
(265, 96, '_top_text_slide', 'field_646b4444f2628'),
(266, 96, 'top_main_visual_feature', '74'),
(267, 96, '_top_main_visual_feature', 'field_646b48f40c96b'),
(268, 96, 'top_pick_up_choose_item', 'a:5:{i:0;s:2:\"87\";i:1;s:2:\"86\";i:2;s:2:\"85\";i:3;s:1:\"1\";i:4;s:2:\"83\";}'),
(269, 96, '_top_pick_up_choose_item', 'field_646dd4c4153fb'),
(270, 2, 'top_search_category', 'a:2:{i:0;s:2:\"25\";i:1;s:2:\"19\";}'),
(271, 2, '_top_search_category', 'field_646ddf00fc001'),
(272, 99, 'top_main_visual_slide_0_top_main_visual_slide_image', '75'),
(273, 99, '_top_main_visual_slide_0_top_main_visual_slide_image', 'field_646b43bff2627'),
(274, 99, 'top_main_visual_slide_1_top_main_visual_slide_image', '76'),
(275, 99, '_top_main_visual_slide_1_top_main_visual_slide_image', 'field_646b43bff2627'),
(276, 99, 'top_main_visual_slide', '2'),
(277, 99, '_top_main_visual_slide', 'field_646b43b0f2626'),
(278, 99, 'top_text_slide', 'このエリアには16:9のバナーを<br>差し替えて入れられる想定'),
(279, 99, '_top_text_slide', 'field_646b4444f2628'),
(280, 99, 'top_main_visual_feature', '74'),
(281, 99, '_top_main_visual_feature', 'field_646b48f40c96b'),
(282, 99, 'top_pick_up_choose_item', 'a:5:{i:0;s:2:\"87\";i:1;s:2:\"86\";i:2;s:2:\"85\";i:3;s:1:\"1\";i:4;s:2:\"83\";}'),
(283, 99, '_top_pick_up_choose_item', 'field_646dd4c4153fb'),
(284, 99, 'top_search_category', 'a:2:{i:0;s:2:\"25\";i:1;s:2:\"19\";}'),
(285, 99, '_top_search_category', 'field_646ddf00fc001'),
(286, 100, '_edit_last', '1'),
(287, 100, '_edit_lock', '1684925112:1'),
(288, 102, '_wp_attached_file', '2023/05/s3_img3.jpg'),
(289, 102, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:128;s:6:\"height\";i:128;s:4:\"file\";s:19:\"2023/05/s3_img3.jpg\";s:8:\"filesize\";i:9053;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(290, 108, '_wp_attached_file', '2023/05/s6_img.png'),
(291, 108, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1320;s:6:\"height\";i:494;s:4:\"file\";s:18:\"2023/05/s6_img.png\";s:8:\"filesize\";i:534108;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(292, 109, '_wp_attached_file', '2023/05/s6_img_sp.png'),
(293, 109, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:716;s:6:\"height\";i:480;s:4:\"file\";s:21:\"2023/05/s6_img_sp.png\";s:8:\"filesize\";i:425931;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(294, 2, 'top_topic_title', 'Mang mỹ phẩm và thực phẩm chức năng của Nhật Bản đến với Việt Nam.'),
(295, 2, '_top_topic_title', 'field_646dec2f8da57'),
(296, 2, 'top_topic_desc', 'Tại Việt Nam đất nước nằm trong Top các nước nhiều người đẹp tại châu Á, các sản phẩm của nhật được đánh giá cao.\r\nChúng tôi tập hợp những sản phẩm lần đầu được đưa vào Việt Nam, và giới thiệu đặc điểm của những sản phẩm mang thu hướng được nhiều người tin dùng tại Nhật đang được đánh giá như thế nào tại thị trường Nhật Bản.'),
(297, 2, '_top_topic_desc', 'field_646dec3d8da58'),
(298, 2, 'top_topic_feature_pc', '108'),
(299, 2, '_top_topic_feature_pc', 'field_646dec508da59'),
(300, 2, 'top_topic_feature_sp', '109'),
(301, 2, '_top_topic_feature_sp', 'field_646dec7e8da5a'),
(302, 110, 'top_main_visual_slide_0_top_main_visual_slide_image', '75'),
(303, 110, '_top_main_visual_slide_0_top_main_visual_slide_image', 'field_646b43bff2627'),
(304, 110, 'top_main_visual_slide_1_top_main_visual_slide_image', '76'),
(305, 110, '_top_main_visual_slide_1_top_main_visual_slide_image', 'field_646b43bff2627'),
(306, 110, 'top_main_visual_slide', '2'),
(307, 110, '_top_main_visual_slide', 'field_646b43b0f2626'),
(308, 110, 'top_text_slide', 'このエリアには16:9のバナーを<br>差し替えて入れられる想定'),
(309, 110, '_top_text_slide', 'field_646b4444f2628'),
(310, 110, 'top_main_visual_feature', '74'),
(311, 110, '_top_main_visual_feature', 'field_646b48f40c96b'),
(312, 110, 'top_pick_up_choose_item', 'a:5:{i:0;s:2:\"87\";i:1;s:2:\"86\";i:2;s:2:\"85\";i:3;s:1:\"1\";i:4;s:2:\"83\";}'),
(313, 110, '_top_pick_up_choose_item', 'field_646dd4c4153fb'),
(314, 110, 'top_search_category', 'a:2:{i:0;s:2:\"25\";i:1;s:2:\"19\";}'),
(315, 110, '_top_search_category', 'field_646ddf00fc001'),
(316, 110, 'top_topic_title', 'Mang mỹ phẩm và thực phẩm chức năng của Nhật Bản đến với Việt Nam.'),
(317, 110, '_top_topic_title', 'field_646dec2f8da57'),
(318, 110, 'top_topic_desc', 'Tại Việt Nam đất nước nằm trong Top các nước nhiều người đẹp tại châu Á, các sản phẩm của nhật được đánh giá cao.\r\nChúng tôi tập hợp những sản phẩm lần đầu được đưa vào Việt Nam, và giới thiệu đặc điểm của những sản phẩm mang thu hướng được nhiều người tin dùng tại Nhật đang được đánh giá như thế nào tại thị trường Nhật Bản.'),
(319, 110, '_top_topic_desc', 'field_646dec3d8da58'),
(320, 110, 'top_topic_feature_pc', '108'),
(321, 110, '_top_topic_feature_pc', 'field_646dec508da59'),
(322, 110, 'top_topic_feature_sp', '109'),
(323, 110, '_top_topic_feature_sp', 'field_646dec7e8da5a'),
(324, 111, '_edit_last', '1'),
(325, 111, '_edit_lock', '1684931788:1'),
(326, 111, '_wp_page_template', 'page-stores-vn.php'),
(327, 114, '_edit_last', '1'),
(328, 114, '_edit_lock', '1684929414:1'),
(329, 46, '_wp_page_template', 'default'),
(330, 46, 'heading', 'Thông tin sẩn phẩm'),
(331, 46, '_heading', 'field_646df20bed6ab'),
(332, 116, 'heading', 'Thông tin sẩn phẩm'),
(333, 116, '_heading', 'field_646df20bed6ab'),
(334, 111, 'heading', 'Cửa hàng giao dịch'),
(335, 111, '_heading', 'field_646df20bed6ab'),
(336, 117, 'heading', 'Cửa hàng giao dịch'),
(337, 117, '_heading', 'field_646df20bed6ab'),
(340, 120, '_edit_last', '1'),
(341, 120, '_edit_lock', '1684931315:1'),
(342, 111, 'store_city_0_store_city_name', 'Hồ Chí Minh'),
(343, 111, '_store_city_0_store_city_name', 'field_646dfc829b209'),
(344, 111, 'store_city_0_store_district_0_store_district_name', 'Quận 1'),
(345, 111, '_store_city_0_store_district_0_store_district_name', 'field_646dfc9b9b20a'),
(346, 111, 'store_city_0_store_district_0_store_agent_0_store_agent_name', 'Hachihachi Nguyễn Văn Trỗi'),
(347, 111, '_store_city_0_store_district_0_store_agent_0_store_agent_name', 'field_646dfd4b9b20c'),
(348, 111, 'store_city_0_store_district_0_store_agent_0_store_agent_address', '173 Nguyễn Văn Trỗi, P. 11, Quận Phú Nhuận'),
(349, 111, '_store_city_0_store_district_0_store_agent_0_store_agent_address', 'field_646dfd5d9b20d'),
(350, 111, 'store_city_0_store_district_0_store_agent_0_store_agent_maps', 'https://goo.gl/maps/ZYM7RBDJdCSX1v1v9'),
(351, 111, '_store_city_0_store_district_0_store_agent_0_store_agent_maps', 'field_646dfd739b20e'),
(352, 111, 'store_city_0_store_district_0_store_agent_1_store_agent_name', 'Hachihachi Nguyễn Văn Trỗi 2'),
(353, 111, '_store_city_0_store_district_0_store_agent_1_store_agent_name', 'field_646dfd4b9b20c'),
(354, 111, 'store_city_0_store_district_0_store_agent_1_store_agent_address', 'Địa chỉ'),
(355, 111, '_store_city_0_store_district_0_store_agent_1_store_agent_address', 'field_646dfd5d9b20d'),
(356, 111, 'store_city_0_store_district_0_store_agent_1_store_agent_maps', 'https://goo.gl/maps/ZYM7RBDJdCSX1v1v9'),
(357, 111, '_store_city_0_store_district_0_store_agent_1_store_agent_maps', 'field_646dfd739b20e'),
(358, 111, 'store_city_0_store_district_0_store_agent_2_store_agent_name', 'Hachihachi Nguyễn Văn Trỗi 3'),
(359, 111, '_store_city_0_store_district_0_store_agent_2_store_agent_name', 'field_646dfd4b9b20c'),
(360, 111, 'store_city_0_store_district_0_store_agent_2_store_agent_address', 'Hachihachi Nguyễn Văn Trỗi  173 Nguyễn Văn Trỗi, P. 11, Quận Phú Nhuận'),
(361, 111, '_store_city_0_store_district_0_store_agent_2_store_agent_address', 'field_646dfd5d9b20d'),
(362, 111, 'store_city_0_store_district_0_store_agent_2_store_agent_maps', 'https://goo.gl/maps/ZYM7RBDJdCSX1v1v9'),
(363, 111, '_store_city_0_store_district_0_store_agent_2_store_agent_maps', 'field_646dfd739b20e'),
(364, 111, 'store_city_0_store_district_0_store_agent', '3'),
(365, 111, '_store_city_0_store_district_0_store_agent', 'field_646dfcf59b20b'),
(366, 111, 'store_city_0_store_district_1_store_district_name', 'Quận 2 '),
(367, 111, '_store_city_0_store_district_1_store_district_name', 'field_646dfc9b9b20a'),
(368, 111, 'store_city_0_store_district_1_store_agent_0_store_agent_name', 'quận 2 agent'),
(369, 111, '_store_city_0_store_district_1_store_agent_0_store_agent_name', 'field_646dfd4b9b20c'),
(370, 111, 'store_city_0_store_district_1_store_agent_0_store_agent_address', 'Hachihachi Nguyễn Văn Trỗi  173 Nguyễn Văn Trỗi, P. 11, Quận Phú Nhuận'),
(371, 111, '_store_city_0_store_district_1_store_agent_0_store_agent_address', 'field_646dfd5d9b20d'),
(372, 111, 'store_city_0_store_district_1_store_agent_0_store_agent_maps', 'https://goo.gl/maps/ZYM7RBDJdCSX1v1v9'),
(373, 111, '_store_city_0_store_district_1_store_agent_0_store_agent_maps', 'field_646dfd739b20e'),
(374, 111, 'store_city_0_store_district_1_store_agent', '1'),
(375, 111, '_store_city_0_store_district_1_store_agent', 'field_646dfcf59b20b'),
(376, 111, 'store_city_0_store_district', '2'),
(377, 111, '_store_city_0_store_district', 'field_646dfc589b208'),
(378, 111, 'store_city_1_store_city_name', 'Hà Nội'),
(379, 111, '_store_city_1_store_city_name', 'field_646dfc829b209'),
(380, 111, 'store_city_1_store_district_0_store_district_name', 'Bắc Từ Liêm'),
(381, 111, '_store_city_1_store_district_0_store_district_name', 'field_646dfc9b9b20a'),
(382, 111, 'store_city_1_store_district_0_store_agent_0_store_agent_name', 'Name 1'),
(383, 111, '_store_city_1_store_district_0_store_agent_0_store_agent_name', 'field_646dfd4b9b20c'),
(384, 111, 'store_city_1_store_district_0_store_agent_0_store_agent_address', '173 Nguyễn Văn Trỗi, P. 11, Quận Phú Nhuận 30/4'),
(385, 111, '_store_city_1_store_district_0_store_agent_0_store_agent_address', 'field_646dfd5d9b20d'),
(386, 111, 'store_city_1_store_district_0_store_agent_0_store_agent_maps', 'https://goo.gl/maps/ZYM7RBDJdCSX1v1v9'),
(387, 111, '_store_city_1_store_district_0_store_agent_0_store_agent_maps', 'field_646dfd739b20e'),
(388, 111, 'store_city_1_store_district_0_store_agent_1_store_agent_name', 'Name 2'),
(389, 111, '_store_city_1_store_district_0_store_agent_1_store_agent_name', 'field_646dfd4b9b20c'),
(390, 111, 'store_city_1_store_district_0_store_agent_1_store_agent_address', '173 Nguyễn Văn Trỗi, P. 11, Quận Phú Nhuận'),
(391, 111, '_store_city_1_store_district_0_store_agent_1_store_agent_address', 'field_646dfd5d9b20d'),
(392, 111, 'store_city_1_store_district_0_store_agent_1_store_agent_maps', 'https://goo.gl/maps/ZYM7RBDJdCSX1v1v9'),
(393, 111, '_store_city_1_store_district_0_store_agent_1_store_agent_maps', 'field_646dfd739b20e'),
(394, 111, 'store_city_1_store_district_0_store_agent', '2'),
(395, 111, '_store_city_1_store_district_0_store_agent', 'field_646dfcf59b20b'),
(396, 111, 'store_city_1_store_district', '1'),
(397, 111, '_store_city_1_store_district', 'field_646dfc589b208'),
(398, 111, 'store_city_2_store_city_name', 'Đà nẵng'),
(399, 111, '_store_city_2_store_city_name', 'field_646dfc829b209'),
(400, 111, 'store_city_2_store_district_0_store_district_name', 'Đà nẵng'),
(401, 111, '_store_city_2_store_district_0_store_district_name', 'field_646dfc9b9b20a'),
(402, 111, 'store_city_2_store_district_0_store_agent_0_store_agent_name', 'Nha trang'),
(403, 111, '_store_city_2_store_district_0_store_agent_0_store_agent_name', 'field_646dfd4b9b20c'),
(404, 111, 'store_city_2_store_district_0_store_agent_0_store_agent_address', 'fsdafsdfdsfsdafsdafsad'),
(405, 111, '_store_city_2_store_district_0_store_agent_0_store_agent_address', 'field_646dfd5d9b20d'),
(406, 111, 'store_city_2_store_district_0_store_agent_0_store_agent_maps', ''),
(407, 111, '_store_city_2_store_district_0_store_agent_0_store_agent_maps', 'field_646dfd739b20e'),
(408, 111, 'store_city_2_store_district_0_store_agent', '1'),
(409, 111, '_store_city_2_store_district_0_store_agent', 'field_646dfcf59b20b'),
(410, 111, 'store_city_2_store_district', '1'),
(411, 111, '_store_city_2_store_district', 'field_646dfc589b208'),
(412, 111, 'store_city', '3'),
(413, 111, '_store_city', 'field_646dfc389b207'),
(414, 130, 'heading', 'Cửa hàng giao dịch'),
(415, 130, '_heading', 'field_646df20bed6ab'),
(416, 130, 'store_city_0_store_city_name', 'Hồ Chí Minh'),
(417, 130, '_store_city_0_store_city_name', 'field_646dfc829b209'),
(418, 130, 'store_city_0_store_district_0_store_district_name', 'Quận 1'),
(419, 130, '_store_city_0_store_district_0_store_district_name', 'field_646dfc9b9b20a'),
(420, 130, 'store_city_0_store_district_0_store_agent_0_store_agent_name', 'Hachihachi Nguyễn Văn Trỗi'),
(421, 130, '_store_city_0_store_district_0_store_agent_0_store_agent_name', 'field_646dfd4b9b20c'),
(422, 130, 'store_city_0_store_district_0_store_agent_0_store_agent_address', '173 Nguyễn Văn Trỗi, P. 11, Quận Phú Nhuận'),
(423, 130, '_store_city_0_store_district_0_store_agent_0_store_agent_address', 'field_646dfd5d9b20d'),
(424, 130, 'store_city_0_store_district_0_store_agent_0_store_agent_maps', 'https://goo.gl/maps/ZYM7RBDJdCSX1v1v9'),
(425, 130, '_store_city_0_store_district_0_store_agent_0_store_agent_maps', 'field_646dfd739b20e'),
(426, 130, 'store_city_0_store_district_0_store_agent_1_store_agent_name', 'Hachihachi Nguyễn Văn Trỗi 2'),
(427, 130, '_store_city_0_store_district_0_store_agent_1_store_agent_name', 'field_646dfd4b9b20c'),
(428, 130, 'store_city_0_store_district_0_store_agent_1_store_agent_address', 'Địa chỉ'),
(429, 130, '_store_city_0_store_district_0_store_agent_1_store_agent_address', 'field_646dfd5d9b20d'),
(430, 130, 'store_city_0_store_district_0_store_agent_1_store_agent_maps', 'https://goo.gl/maps/ZYM7RBDJdCSX1v1v9'),
(431, 130, '_store_city_0_store_district_0_store_agent_1_store_agent_maps', 'field_646dfd739b20e'),
(432, 130, 'store_city_0_store_district_0_store_agent_2_store_agent_name', 'Hachihachi Nguyễn Văn Trỗi 3'),
(433, 130, '_store_city_0_store_district_0_store_agent_2_store_agent_name', 'field_646dfd4b9b20c'),
(434, 130, 'store_city_0_store_district_0_store_agent_2_store_agent_address', 'Hachihachi Nguyễn Văn Trỗi  173 Nguyễn Văn Trỗi, P. 11, Quận Phú Nhuận'),
(435, 130, '_store_city_0_store_district_0_store_agent_2_store_agent_address', 'field_646dfd5d9b20d'),
(436, 130, 'store_city_0_store_district_0_store_agent_2_store_agent_maps', 'https://goo.gl/maps/ZYM7RBDJdCSX1v1v9'),
(437, 130, '_store_city_0_store_district_0_store_agent_2_store_agent_maps', 'field_646dfd739b20e'),
(438, 130, 'store_city_0_store_district_0_store_agent', '3'),
(439, 130, '_store_city_0_store_district_0_store_agent', 'field_646dfcf59b20b'),
(440, 130, 'store_city_0_store_district_1_store_district_name', 'Quận 2 '),
(441, 130, '_store_city_0_store_district_1_store_district_name', 'field_646dfc9b9b20a'),
(442, 130, 'store_city_0_store_district_1_store_agent_0_store_agent_name', 'quận 2 agent'),
(443, 130, '_store_city_0_store_district_1_store_agent_0_store_agent_name', 'field_646dfd4b9b20c'),
(444, 130, 'store_city_0_store_district_1_store_agent_0_store_agent_address', 'Hachihachi Nguyễn Văn Trỗi  173 Nguyễn Văn Trỗi, P. 11, Quận Phú Nhuận'),
(445, 130, '_store_city_0_store_district_1_store_agent_0_store_agent_address', 'field_646dfd5d9b20d'),
(446, 130, 'store_city_0_store_district_1_store_agent_0_store_agent_maps', 'https://goo.gl/maps/ZYM7RBDJdCSX1v1v9'),
(447, 130, '_store_city_0_store_district_1_store_agent_0_store_agent_maps', 'field_646dfd739b20e'),
(448, 130, 'store_city_0_store_district_1_store_agent', '1'),
(449, 130, '_store_city_0_store_district_1_store_agent', 'field_646dfcf59b20b'),
(450, 130, 'store_city_0_store_district', '2'),
(451, 130, '_store_city_0_store_district', 'field_646dfc589b208'),
(452, 130, 'store_city_1_store_city_name', 'Hà Nội'),
(453, 130, '_store_city_1_store_city_name', 'field_646dfc829b209'),
(454, 130, 'store_city_1_store_district_0_store_district_name', 'Bắc Từ Liêm'),
(455, 130, '_store_city_1_store_district_0_store_district_name', 'field_646dfc9b9b20a'),
(456, 130, 'store_city_1_store_district_0_store_agent_0_store_agent_name', 'Name 1'),
(457, 130, '_store_city_1_store_district_0_store_agent_0_store_agent_name', 'field_646dfd4b9b20c'),
(458, 130, 'store_city_1_store_district_0_store_agent_0_store_agent_address', '173 Nguyễn Văn Trỗi, P. 11, Quận Phú Nhuận 30/4'),
(459, 130, '_store_city_1_store_district_0_store_agent_0_store_agent_address', 'field_646dfd5d9b20d'),
(460, 130, 'store_city_1_store_district_0_store_agent_0_store_agent_maps', 'https://goo.gl/maps/ZYM7RBDJdCSX1v1v9'),
(461, 130, '_store_city_1_store_district_0_store_agent_0_store_agent_maps', 'field_646dfd739b20e'),
(462, 130, 'store_city_1_store_district_0_store_agent_1_store_agent_name', 'Name 2'),
(463, 130, '_store_city_1_store_district_0_store_agent_1_store_agent_name', 'field_646dfd4b9b20c'),
(464, 130, 'store_city_1_store_district_0_store_agent_1_store_agent_address', '173 Nguyễn Văn Trỗi, P. 11, Quận Phú Nhuận'),
(465, 130, '_store_city_1_store_district_0_store_agent_1_store_agent_address', 'field_646dfd5d9b20d'),
(466, 130, 'store_city_1_store_district_0_store_agent_1_store_agent_maps', 'https://goo.gl/maps/ZYM7RBDJdCSX1v1v9'),
(467, 130, '_store_city_1_store_district_0_store_agent_1_store_agent_maps', 'field_646dfd739b20e'),
(468, 130, 'store_city_1_store_district_0_store_agent', '2'),
(469, 130, '_store_city_1_store_district_0_store_agent', 'field_646dfcf59b20b'),
(470, 130, 'store_city_1_store_district', '1'),
(471, 130, '_store_city_1_store_district', 'field_646dfc589b208'),
(472, 130, 'store_city_2_store_city_name', 'Đà nẵng'),
(473, 130, '_store_city_2_store_city_name', 'field_646dfc829b209'),
(474, 130, 'store_city_2_store_district_0_store_district_name', 'Đà nẵng'),
(475, 130, '_store_city_2_store_district_0_store_district_name', 'field_646dfc9b9b20a'),
(476, 130, 'store_city_2_store_district_0_store_agent_0_store_agent_name', 'Nha trang'),
(477, 130, '_store_city_2_store_district_0_store_agent_0_store_agent_name', 'field_646dfd4b9b20c'),
(478, 130, 'store_city_2_store_district_0_store_agent_0_store_agent_address', 'fsdafsdfdsfsdafsdafsad'),
(479, 130, '_store_city_2_store_district_0_store_agent_0_store_agent_address', 'field_646dfd5d9b20d'),
(480, 130, 'store_city_2_store_district_0_store_agent_0_store_agent_maps', ''),
(481, 130, '_store_city_2_store_district_0_store_agent_0_store_agent_maps', 'field_646dfd739b20e'),
(482, 130, 'store_city_2_store_district_0_store_agent', '1'),
(483, 130, '_store_city_2_store_district_0_store_agent', 'field_646dfcf59b20b'),
(484, 130, 'store_city_2_store_district', '1'),
(485, 130, '_store_city_2_store_district', 'field_646dfc589b208'),
(486, 130, 'store_city', '3'),
(487, 130, '_store_city', 'field_646dfc389b207'),
(488, 131, '_edit_last', '1'),
(489, 131, '_edit_lock', '1684934926:1'),
(490, 131, '_wp_page_template', 'page-company.php'),
(491, 131, 'heading', 'THÔNG TIN CÔNG TY'),
(492, 131, '_heading', 'field_646df20bed6ab'),
(493, 132, 'heading', 'THÔNG TIN CÔNG TY'),
(494, 132, '_heading', 'field_646df20bed6ab'),
(495, 133, '_menu_item_type', 'taxonomy'),
(496, 133, '_menu_item_menu_item_parent', '0'),
(497, 133, '_menu_item_object_id', '19'),
(498, 133, '_menu_item_object', 'category'),
(499, 133, '_menu_item_target', ''),
(500, 133, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(501, 133, '_menu_item_xfn', ''),
(502, 133, '_menu_item_url', ''),
(504, 134, '_menu_item_type', 'post_type'),
(505, 134, '_menu_item_menu_item_parent', '0'),
(506, 134, '_menu_item_object_id', '111'),
(507, 134, '_menu_item_object', 'page'),
(508, 134, '_menu_item_target', ''),
(509, 134, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(510, 134, '_menu_item_xfn', ''),
(511, 134, '_menu_item_url', ''),
(513, 50, '_wp_old_date', '2023-05-22'),
(514, 51, '_wp_old_date', '2023-05-22'),
(515, 135, 'heading', 'Cửa hàng giao dịch'),
(516, 135, '_heading', 'field_646df20bed6ab'),
(517, 135, 'store_city_0_store_city_name', 'Hồ Chí Minh'),
(518, 135, '_store_city_0_store_city_name', 'field_646dfc829b209'),
(519, 135, 'store_city_0_store_district_0_store_district_name', 'Quận 1'),
(520, 135, '_store_city_0_store_district_0_store_district_name', 'field_646dfc9b9b20a'),
(521, 135, 'store_city_0_store_district_0_store_agent_0_store_agent_name', 'Hachihachi Nguyễn Văn Trỗi'),
(522, 135, '_store_city_0_store_district_0_store_agent_0_store_agent_name', 'field_646dfd4b9b20c'),
(523, 135, 'store_city_0_store_district_0_store_agent_0_store_agent_address', '173 Nguyễn Văn Trỗi, P. 11, Quận Phú Nhuận'),
(524, 135, '_store_city_0_store_district_0_store_agent_0_store_agent_address', 'field_646dfd5d9b20d'),
(525, 135, 'store_city_0_store_district_0_store_agent_0_store_agent_maps', 'https://goo.gl/maps/ZYM7RBDJdCSX1v1v9'),
(526, 135, '_store_city_0_store_district_0_store_agent_0_store_agent_maps', 'field_646dfd739b20e'),
(527, 135, 'store_city_0_store_district_0_store_agent_1_store_agent_name', 'Hachihachi Nguyễn Văn Trỗi 2'),
(528, 135, '_store_city_0_store_district_0_store_agent_1_store_agent_name', 'field_646dfd4b9b20c'),
(529, 135, 'store_city_0_store_district_0_store_agent_1_store_agent_address', 'Địa chỉ'),
(530, 135, '_store_city_0_store_district_0_store_agent_1_store_agent_address', 'field_646dfd5d9b20d'),
(531, 135, 'store_city_0_store_district_0_store_agent_1_store_agent_maps', 'https://goo.gl/maps/ZYM7RBDJdCSX1v1v9'),
(532, 135, '_store_city_0_store_district_0_store_agent_1_store_agent_maps', 'field_646dfd739b20e'),
(533, 135, 'store_city_0_store_district_0_store_agent_2_store_agent_name', 'Hachihachi Nguyễn Văn Trỗi 3'),
(534, 135, '_store_city_0_store_district_0_store_agent_2_store_agent_name', 'field_646dfd4b9b20c'),
(535, 135, 'store_city_0_store_district_0_store_agent_2_store_agent_address', 'Hachihachi Nguyễn Văn Trỗi  173 Nguyễn Văn Trỗi, P. 11, Quận Phú Nhuận'),
(536, 135, '_store_city_0_store_district_0_store_agent_2_store_agent_address', 'field_646dfd5d9b20d'),
(537, 135, 'store_city_0_store_district_0_store_agent_2_store_agent_maps', 'https://goo.gl/maps/ZYM7RBDJdCSX1v1v9'),
(538, 135, '_store_city_0_store_district_0_store_agent_2_store_agent_maps', 'field_646dfd739b20e'),
(539, 135, 'store_city_0_store_district_0_store_agent', '3'),
(540, 135, '_store_city_0_store_district_0_store_agent', 'field_646dfcf59b20b'),
(541, 135, 'store_city_0_store_district_1_store_district_name', 'Quận 2 '),
(542, 135, '_store_city_0_store_district_1_store_district_name', 'field_646dfc9b9b20a'),
(543, 135, 'store_city_0_store_district_1_store_agent_0_store_agent_name', 'quận 2 agent'),
(544, 135, '_store_city_0_store_district_1_store_agent_0_store_agent_name', 'field_646dfd4b9b20c'),
(545, 135, 'store_city_0_store_district_1_store_agent_0_store_agent_address', 'Hachihachi Nguyễn Văn Trỗi  173 Nguyễn Văn Trỗi, P. 11, Quận Phú Nhuận'),
(546, 135, '_store_city_0_store_district_1_store_agent_0_store_agent_address', 'field_646dfd5d9b20d'),
(547, 135, 'store_city_0_store_district_1_store_agent_0_store_agent_maps', 'https://goo.gl/maps/ZYM7RBDJdCSX1v1v9'),
(548, 135, '_store_city_0_store_district_1_store_agent_0_store_agent_maps', 'field_646dfd739b20e'),
(549, 135, 'store_city_0_store_district_1_store_agent', '1'),
(550, 135, '_store_city_0_store_district_1_store_agent', 'field_646dfcf59b20b'),
(551, 135, 'store_city_0_store_district', '2'),
(552, 135, '_store_city_0_store_district', 'field_646dfc589b208'),
(553, 135, 'store_city_1_store_city_name', 'Hà Nội'),
(554, 135, '_store_city_1_store_city_name', 'field_646dfc829b209'),
(555, 135, 'store_city_1_store_district_0_store_district_name', 'Bắc Từ Liêm'),
(556, 135, '_store_city_1_store_district_0_store_district_name', 'field_646dfc9b9b20a'),
(557, 135, 'store_city_1_store_district_0_store_agent_0_store_agent_name', 'Name 1'),
(558, 135, '_store_city_1_store_district_0_store_agent_0_store_agent_name', 'field_646dfd4b9b20c'),
(559, 135, 'store_city_1_store_district_0_store_agent_0_store_agent_address', '173 Nguyễn Văn Trỗi, P. 11, Quận Phú Nhuận 30/4'),
(560, 135, '_store_city_1_store_district_0_store_agent_0_store_agent_address', 'field_646dfd5d9b20d'),
(561, 135, 'store_city_1_store_district_0_store_agent_0_store_agent_maps', 'https://goo.gl/maps/ZYM7RBDJdCSX1v1v9'),
(562, 135, '_store_city_1_store_district_0_store_agent_0_store_agent_maps', 'field_646dfd739b20e'),
(563, 135, 'store_city_1_store_district_0_store_agent_1_store_agent_name', 'Name 2'),
(564, 135, '_store_city_1_store_district_0_store_agent_1_store_agent_name', 'field_646dfd4b9b20c'),
(565, 135, 'store_city_1_store_district_0_store_agent_1_store_agent_address', '173 Nguyễn Văn Trỗi, P. 11, Quận Phú Nhuận'),
(566, 135, '_store_city_1_store_district_0_store_agent_1_store_agent_address', 'field_646dfd5d9b20d'),
(567, 135, 'store_city_1_store_district_0_store_agent_1_store_agent_maps', 'https://goo.gl/maps/ZYM7RBDJdCSX1v1v9'),
(568, 135, '_store_city_1_store_district_0_store_agent_1_store_agent_maps', 'field_646dfd739b20e'),
(569, 135, 'store_city_1_store_district_0_store_agent', '2'),
(570, 135, '_store_city_1_store_district_0_store_agent', 'field_646dfcf59b20b'),
(571, 135, 'store_city_1_store_district', '1'),
(572, 135, '_store_city_1_store_district', 'field_646dfc589b208'),
(573, 135, 'store_city_2_store_city_name', 'Đà nẵng'),
(574, 135, '_store_city_2_store_city_name', 'field_646dfc829b209'),
(575, 135, 'store_city_2_store_district_0_store_district_name', 'Đà nẵng'),
(576, 135, '_store_city_2_store_district_0_store_district_name', 'field_646dfc9b9b20a'),
(577, 135, 'store_city_2_store_district_0_store_agent_0_store_agent_name', 'Nha trang'),
(578, 135, '_store_city_2_store_district_0_store_agent_0_store_agent_name', 'field_646dfd4b9b20c'),
(579, 135, 'store_city_2_store_district_0_store_agent_0_store_agent_address', 'fsdafsdfdsfsdafsdafsad'),
(580, 135, '_store_city_2_store_district_0_store_agent_0_store_agent_address', 'field_646dfd5d9b20d'),
(581, 135, 'store_city_2_store_district_0_store_agent_0_store_agent_maps', ''),
(582, 135, '_store_city_2_store_district_0_store_agent_0_store_agent_maps', 'field_646dfd739b20e'),
(583, 135, 'store_city_2_store_district_0_store_agent', '1'),
(584, 135, '_store_city_2_store_district_0_store_agent', 'field_646dfcf59b20b'),
(585, 135, 'store_city_2_store_district', '1'),
(586, 135, '_store_city_2_store_district', 'field_646dfc589b208'),
(587, 135, 'store_city', '3'),
(588, 135, '_store_city', 'field_646dfc389b207'),
(591, 137, '_edit_last', '1'),
(592, 137, '_edit_lock', '1684952609:1'),
(593, 131, 'country_0_country_name', 'Việt Nam'),
(594, 131, '_country_0_country_name', 'field_646e064047a36'),
(595, 131, 'country_0_country_information_0_country_company_name', 'Tên công ty'),
(596, 131, '_country_0_country_information_0_country_company_name', 'field_646e06e447a39'),
(597, 131, 'country_0_country_information_0_country_company_content', 'Công Ty TNHH Sân Khấu Châu Á'),
(598, 131, '_country_0_country_information_0_country_company_content', 'field_646e06f147a3a'),
(599, 131, 'country_0_country_information_0_country_company', ''),
(600, 131, '_country_0_country_information_0_country_company', 'field_646e066f47a38'),
(601, 131, 'country_0_country_information_0_country_office_name', 'Văn phòng'),
(602, 131, '_country_0_country_information_0_country_office_name', 'field_646e070347a3c'),
(603, 131, 'country_0_country_information_0_country_office_content', '8F, Tòa nhà GB, 78-80 Cách Mạng Tháng 8, P.6, Q.3, HCM'),
(604, 131, '_country_0_country_information_0_country_office_content', 'field_646e070347a3d'),
(605, 131, 'country_0_country_information_0_country_office_maps', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3240.09028482794!2d139.753828!3d35.6993958!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60188c156031429d%3A0xbf1d2ef41a33b114!2z44CSMTAxLTAwNjEg5p2x5Lqs6YO95Y2D5Luj55Sw5Yy656We55Sw5LiJ5bSO55S677yS5LiB55uu77yU4oiS77yRIFR1Zy1J44OT44Or!5e0!3m2!1sja!2sjp!4v1684206765413!5m2!1sja!2sjp\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
(606, 131, '_country_0_country_information_0_country_office_maps', 'field_646e074347a42'),
(607, 131, 'country_0_country_information_0_country_office', ''),
(608, 131, '_country_0_country_information_0_country_office', 'field_646e070347a3b'),
(609, 131, 'country_0_country_information_0_country_tel_name', 'TEL'),
(610, 131, '_country_0_country_information_0_country_tel_name', 'field_646e072e47a40'),
(611, 131, 'country_0_country_information_0_country_tel_content', '+84-28-3526-5024'),
(612, 131, '_country_0_country_information_0_country_tel_content', 'field_646e072e47a41'),
(613, 131, 'country_0_country_information_0_country_tel', ''),
(614, 131, '_country_0_country_information_0_country_tel', 'field_646e072e47a3f'),
(615, 131, 'country_0_country_information_0_country_representative_name', 'Người đại diện'),
(616, 131, '_country_0_country_information_0_country_representative_name', 'field_646e075447a44'),
(617, 131, 'country_0_country_information_0_country_representative_content', 'Nguyễn Văn A'),
(618, 131, '_country_0_country_information_0_country_representative_content', 'field_646e075447a45'),
(619, 131, 'country_0_country_information_0_country_representative', ''),
(620, 131, '_country_0_country_information_0_country_representative', 'field_646e075447a43'),
(621, 131, 'country_0_country_information', '1'),
(622, 131, '_country_0_country_information', 'field_646e065247a37'),
(623, 131, 'country_1_country_name', 'Nhật Bản'),
(624, 131, '_country_1_country_name', 'field_646e064047a36'),
(625, 131, 'country_1_country_information_0_country_company_name', 'Tên công ty'),
(626, 131, '_country_1_country_information_0_country_company_name', 'field_646e06e447a39'),
(627, 131, 'country_1_country_information_0_country_company_content', 'Stage Asia LLC.'),
(628, 131, '_country_1_country_information_0_country_company_content', 'field_646e06f147a3a'),
(629, 131, 'country_1_country_information_0_country_company', ''),
(630, 131, '_country_1_country_information_0_country_company', 'field_646e066f47a38'),
(631, 131, 'country_1_country_information_0_country_office_name', 'Văn phòng'),
(632, 131, '_country_1_country_information_0_country_office_name', 'field_646e070347a3c'),
(633, 131, 'country_1_country_information_0_country_office_content', '8F, GB Bldg., 78-80 Cach Mang Thang Tam, Ward6, Quan3, HCMC'),
(634, 131, '_country_1_country_information_0_country_office_content', 'field_646e070347a3d'),
(635, 131, 'country_1_country_information_0_country_office_maps', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3240.09028482794!2d139.753828!3d35.6993958!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60188c156031429d%3A0xbf1d2ef41a33b114!2z44CSMTAxLTAwNjEg5p2x5Lqs6YO95Y2D5Luj55Sw5Yy656We55Sw5LiJ5bSO55S677yS5LiB55uu77yU4oiS77yRIFR1Zy1J44OT44Or!5e0!3m2!1sja!2sjp!4v1684206765413!5m2!1sja!2sjp\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
(636, 131, '_country_1_country_information_0_country_office_maps', 'field_646e074347a42'),
(637, 131, 'country_1_country_information_0_country_office', ''),
(638, 131, '_country_1_country_information_0_country_office', 'field_646e070347a3b'),
(639, 131, 'country_1_country_information_0_country_tel_name', 'TEL'),
(640, 131, '_country_1_country_information_0_country_tel_name', 'field_646e072e47a40'),
(641, 131, 'country_1_country_information_0_country_tel_content', '+81-3-3263-0219'),
(642, 131, '_country_1_country_information_0_country_tel_content', 'field_646e072e47a41'),
(643, 131, 'country_1_country_information_0_country_tel', ''),
(644, 131, '_country_1_country_information_0_country_tel', 'field_646e072e47a3f'),
(645, 131, 'country_1_country_information_0_country_representative_name', 'Người đại diện'),
(646, 131, '_country_1_country_information_0_country_representative_name', 'field_646e075447a44'),
(647, 131, 'country_1_country_information_0_country_representative_content', 'CEO công ty con Nobuhiro Deguchi Việt Nam'),
(648, 131, '_country_1_country_information_0_country_representative_content', 'field_646e075447a45'),
(649, 131, 'country_1_country_information_0_country_representative', ''),
(650, 131, '_country_1_country_information_0_country_representative', 'field_646e075447a43'),
(651, 131, 'country_1_country_information', '1'),
(652, 131, '_country_1_country_information', 'field_646e065247a37'),
(653, 131, 'country', '2'),
(654, 131, '_country', 'field_646e05e747a35'),
(655, 155, 'heading', 'THÔNG TIN CÔNG TY'),
(656, 155, '_heading', 'field_646df20bed6ab'),
(657, 155, 'country_0_country_name', 'Việt Nam'),
(658, 155, '_country_0_country_name', 'field_646e064047a36'),
(659, 155, 'country_0_country_information_0_country_company_name', 'Tên công ty'),
(660, 155, '_country_0_country_information_0_country_company_name', 'field_646e06e447a39'),
(661, 155, 'country_0_country_information_0_country_company_content', 'Công Ty TNHH Sân Khấu Châu Á'),
(662, 155, '_country_0_country_information_0_country_company_content', 'field_646e06f147a3a'),
(663, 155, 'country_0_country_information_0_country_company', ''),
(664, 155, '_country_0_country_information_0_country_company', 'field_646e066f47a38'),
(665, 155, 'country_0_country_information_0_country_office_name', 'Văn phòng'),
(666, 155, '_country_0_country_information_0_country_office_name', 'field_646e070347a3c'),
(667, 155, 'country_0_country_information_0_country_office_content', '8F, Tòa nhà GB, 78-80 Cách Mạng Tháng 8, P.6, Q.3, HCM'),
(668, 155, '_country_0_country_information_0_country_office_content', 'field_646e070347a3d'),
(669, 155, 'country_0_country_information_0_country_office_maps', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3240.09028482794!2d139.753828!3d35.6993958!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60188c156031429d%3A0xbf1d2ef41a33b114!2z44CSMTAxLTAwNjEg5p2x5Lqs6YO95Y2D5Luj55Sw5Yy656We55Sw5LiJ5bSO55S677yS5LiB55uu77yU4oiS77yRIFR1Zy1J44OT44Or!5e0!3m2!1sja!2sjp!4v1684206765413!5m2!1sja!2sjp\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
(670, 155, '_country_0_country_information_0_country_office_maps', 'field_646e074347a42'),
(671, 155, 'country_0_country_information_0_country_office', ''),
(672, 155, '_country_0_country_information_0_country_office', 'field_646e070347a3b'),
(673, 155, 'country_0_country_information_0_country_tel_name', 'TEL'),
(674, 155, '_country_0_country_information_0_country_tel_name', 'field_646e072e47a40');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(675, 155, 'country_0_country_information_0_country_tel_content', '+84-28-3526-5024'),
(676, 155, '_country_0_country_information_0_country_tel_content', 'field_646e072e47a41'),
(677, 155, 'country_0_country_information_0_country_tel', ''),
(678, 155, '_country_0_country_information_0_country_tel', 'field_646e072e47a3f'),
(679, 155, 'country_0_country_information_0_country_representative_name', 'Người đại diện'),
(680, 155, '_country_0_country_information_0_country_representative_name', 'field_646e075447a44'),
(681, 155, 'country_0_country_information_0_country_representative_content', 'Nguyễn Văn A'),
(682, 155, '_country_0_country_information_0_country_representative_content', 'field_646e075447a45'),
(683, 155, 'country_0_country_information_0_country_representative', ''),
(684, 155, '_country_0_country_information_0_country_representative', 'field_646e075447a43'),
(685, 155, 'country_0_country_information', '1'),
(686, 155, '_country_0_country_information', 'field_646e065247a37'),
(687, 155, 'country_1_country_name', 'Nhật Bản'),
(688, 155, '_country_1_country_name', 'field_646e064047a36'),
(689, 155, 'country_1_country_information_0_country_company_name', 'Tên công ty'),
(690, 155, '_country_1_country_information_0_country_company_name', 'field_646e06e447a39'),
(691, 155, 'country_1_country_information_0_country_company_content', 'Stage Asia LLC.'),
(692, 155, '_country_1_country_information_0_country_company_content', 'field_646e06f147a3a'),
(693, 155, 'country_1_country_information_0_country_company', ''),
(694, 155, '_country_1_country_information_0_country_company', 'field_646e066f47a38'),
(695, 155, 'country_1_country_information_0_country_office_name', 'Văn phòng'),
(696, 155, '_country_1_country_information_0_country_office_name', 'field_646e070347a3c'),
(697, 155, 'country_1_country_information_0_country_office_content', '8F, GB Bldg., 78-80 Cach Mang Thang Tam, Ward6, Quan3, HCMC'),
(698, 155, '_country_1_country_information_0_country_office_content', 'field_646e070347a3d'),
(699, 155, 'country_1_country_information_0_country_office_maps', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3240.09028482794!2d139.753828!3d35.6993958!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60188c156031429d%3A0xbf1d2ef41a33b114!2z44CSMTAxLTAwNjEg5p2x5Lqs6YO95Y2D5Luj55Sw5Yy656We55Sw5LiJ5bSO55S677yS5LiB55uu77yU4oiS77yRIFR1Zy1J44OT44Or!5e0!3m2!1sja!2sjp!4v1684206765413!5m2!1sja!2sjp\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
(700, 155, '_country_1_country_information_0_country_office_maps', 'field_646e074347a42'),
(701, 155, 'country_1_country_information_0_country_office', ''),
(702, 155, '_country_1_country_information_0_country_office', 'field_646e070347a3b'),
(703, 155, 'country_1_country_information_0_country_tel_name', 'TEL'),
(704, 155, '_country_1_country_information_0_country_tel_name', 'field_646e072e47a40'),
(705, 155, 'country_1_country_information_0_country_tel_content', '+81-3-3263-0219'),
(706, 155, '_country_1_country_information_0_country_tel_content', 'field_646e072e47a41'),
(707, 155, 'country_1_country_information_0_country_tel', ''),
(708, 155, '_country_1_country_information_0_country_tel', 'field_646e072e47a3f'),
(709, 155, 'country_1_country_information_0_country_representative_name', 'Người đại diện'),
(710, 155, '_country_1_country_information_0_country_representative_name', 'field_646e075447a44'),
(711, 155, 'country_1_country_information_0_country_representative_content', 'CEO công ty con Nobuhiro Deguchi Việt Nam'),
(712, 155, '_country_1_country_information_0_country_representative_content', 'field_646e075447a45'),
(713, 155, 'country_1_country_information_0_country_representative', ''),
(714, 155, '_country_1_country_information_0_country_representative', 'field_646e075447a43'),
(715, 155, 'country_1_country_information', '1'),
(716, 155, '_country_1_country_information', 'field_646e065247a37'),
(717, 155, 'country', '2'),
(718, 155, '_country', 'field_646e05e747a35'),
(719, 156, 'heading', '会社概要'),
(720, 156, 'country_0_country_name', 'Việt Nam'),
(721, 156, 'country_0_country_information_0_country_company_name', 'Tên công ty'),
(722, 156, 'country_0_country_information_0_country_company_content', 'Công Ty TNHH Sân Khấu Châu Á'),
(723, 156, 'country_0_country_information_0_country_company', ''),
(724, 156, 'country_0_country_information_0_country_office_name', 'Văn phòng'),
(725, 156, 'country_0_country_information_0_country_office_content', '8F, Tòa nhà GB, 78-80 Cách Mạng Tháng 8, P.6, Q.3, HCM'),
(726, 156, 'country_0_country_information_0_country_office_maps', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3240.09028482794!2d139.753828!3d35.6993958!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60188c156031429d%3A0xbf1d2ef41a33b114!2z44CSMTAxLTAwNjEg5p2x5Lqs6YO95Y2D5Luj55Sw5Yy656We55Sw5LiJ5bSO55S677yS5LiB55uu77yU4oiS77yRIFR1Zy1J44OT44Or!5e0!3m2!1sja!2sjp!4v1684206765413!5m2!1sja!2sjp\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
(727, 156, 'country_0_country_information_0_country_office', ''),
(728, 156, 'country_0_country_information_0_country_tel_name', 'TEL'),
(729, 156, 'country_0_country_information_0_country_tel_content', '+84-28-3526-5024'),
(730, 156, 'country_0_country_information_0_country_tel', ''),
(731, 156, 'country_0_country_information_0_country_representative_name', 'Người đại diện'),
(732, 156, 'country_0_country_information_0_country_representative_content', 'Nguyễn Văn A'),
(733, 156, 'country_0_country_information_0_country_representative', ''),
(734, 156, 'country_0_country_information', '1'),
(735, 156, 'country_1_country_name', 'Nhật Bản'),
(736, 156, 'country_1_country_information_0_country_company_name', 'Tên công ty'),
(737, 156, 'country_1_country_information_0_country_company_content', 'Stage Asia LLC.'),
(738, 156, 'country_1_country_information_0_country_company', ''),
(739, 156, 'country_1_country_information_0_country_office_name', 'Văn phòng'),
(740, 156, 'country_1_country_information_0_country_office_content', '8F, GB Bldg., 78-80 Cach Mang Thang Tam, Ward6, Quan3, HCMC'),
(741, 156, 'country_1_country_information_0_country_office_maps', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3240.09028482794!2d139.753828!3d35.6993958!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60188c156031429d%3A0xbf1d2ef41a33b114!2z44CSMTAxLTAwNjEg5p2x5Lqs6YO95Y2D5Luj55Sw5Yy656We55Sw5LiJ5bSO55S677yS5LiB55uu77yU4oiS77yRIFR1Zy1J44OT44Or!5e0!3m2!1sja!2sjp!4v1684206765413!5m2!1sja!2sjp\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
(742, 156, 'country_1_country_information_0_country_office', ''),
(743, 156, 'country_1_country_information_0_country_tel_name', 'TEL'),
(744, 156, 'country_1_country_information_0_country_tel_content', '+81-3-3263-0219'),
(745, 156, 'country_1_country_information_0_country_tel', ''),
(746, 156, 'country_1_country_information_0_country_representative_name', 'Người đại diện'),
(747, 156, 'country_1_country_information_0_country_representative_content', 'CEO công ty con Nobuhiro Deguchi Việt Nam'),
(748, 156, 'country_1_country_information_0_country_representative', ''),
(749, 156, 'country_1_country_information', '1'),
(750, 156, 'country', '2'),
(751, 156, '_wp_page_template', 'page-company.php'),
(752, 156, '_edit_last', '1'),
(753, 156, '_edit_lock', '1684936262:1'),
(754, 156, '_country_0_country_name', 'field_646e064047a36'),
(755, 156, '_country_0_country_information_0_country_company_name', 'field_646e06e447a39'),
(756, 156, '_country_0_country_information_0_country_company_content', 'field_646e06f147a3a'),
(757, 156, '_country_0_country_information_0_country_company', 'field_646e066f47a38'),
(758, 156, '_country_0_country_information_0_country_office_name', 'field_646e070347a3c'),
(759, 156, '_country_0_country_information_0_country_office_content', 'field_646e070347a3d'),
(760, 156, '_country_0_country_information_0_country_office_maps', 'field_646e074347a42'),
(761, 156, '_country_0_country_information_0_country_office', 'field_646e070347a3b'),
(762, 156, '_country_0_country_information_0_country_tel_name', 'field_646e072e47a40'),
(763, 156, '_country_0_country_information_0_country_tel_content', 'field_646e072e47a41'),
(764, 156, '_country_0_country_information_0_country_tel', 'field_646e072e47a3f'),
(765, 156, '_country_0_country_information_0_country_representative_name', 'field_646e075447a44'),
(766, 156, '_country_0_country_information_0_country_representative_content', 'field_646e075447a45'),
(767, 156, '_country_0_country_information_0_country_representative', 'field_646e075447a43'),
(768, 156, '_country_0_country_information', 'field_646e065247a37'),
(769, 156, '_country_1_country_name', 'field_646e064047a36'),
(770, 156, '_country_1_country_information_0_country_company_name', 'field_646e06e447a39'),
(771, 156, '_country_1_country_information_0_country_company_content', 'field_646e06f147a3a'),
(772, 156, '_country_1_country_information_0_country_company', 'field_646e066f47a38'),
(773, 156, '_country_1_country_information_0_country_office_name', 'field_646e070347a3c'),
(774, 156, '_country_1_country_information_0_country_office_content', 'field_646e070347a3d'),
(775, 156, '_country_1_country_information_0_country_office_maps', 'field_646e074347a42'),
(776, 156, '_country_1_country_information_0_country_office', 'field_646e070347a3b'),
(777, 156, '_country_1_country_information_0_country_tel_name', 'field_646e072e47a40'),
(778, 156, '_country_1_country_information_0_country_tel_content', 'field_646e072e47a41'),
(779, 156, '_country_1_country_information_0_country_tel', 'field_646e072e47a3f'),
(780, 156, '_country_1_country_information_0_country_representative_name', 'field_646e075447a44'),
(781, 156, '_country_1_country_information_0_country_representative_content', 'field_646e075447a45'),
(782, 156, '_country_1_country_information_0_country_representative', 'field_646e075447a43'),
(783, 156, '_country_1_country_information', 'field_646e065247a37'),
(784, 156, '_country', 'field_646e05e747a35'),
(785, 156, '_heading', 'field_646df20bed6ab'),
(786, 157, 'heading', '会社概要'),
(787, 157, '_heading', 'field_646df20bed6ab'),
(788, 157, 'country_0_country_name', 'Việt Nam'),
(789, 157, '_country_0_country_name', 'field_646e064047a36'),
(790, 157, 'country_0_country_information_0_country_company_name', 'Tên công ty'),
(791, 157, '_country_0_country_information_0_country_company_name', 'field_646e06e447a39'),
(792, 157, 'country_0_country_information_0_country_company_content', 'Công Ty TNHH Sân Khấu Châu Á'),
(793, 157, '_country_0_country_information_0_country_company_content', 'field_646e06f147a3a'),
(794, 157, 'country_0_country_information_0_country_company', ''),
(795, 157, '_country_0_country_information_0_country_company', 'field_646e066f47a38'),
(796, 157, 'country_0_country_information_0_country_office_name', 'Văn phòng'),
(797, 157, '_country_0_country_information_0_country_office_name', 'field_646e070347a3c'),
(798, 157, 'country_0_country_information_0_country_office_content', '8F, Tòa nhà GB, 78-80 Cách Mạng Tháng 8, P.6, Q.3, HCM'),
(799, 157, '_country_0_country_information_0_country_office_content', 'field_646e070347a3d'),
(800, 157, 'country_0_country_information_0_country_office_maps', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3240.09028482794!2d139.753828!3d35.6993958!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60188c156031429d%3A0xbf1d2ef41a33b114!2z44CSMTAxLTAwNjEg5p2x5Lqs6YO95Y2D5Luj55Sw5Yy656We55Sw5LiJ5bSO55S677yS5LiB55uu77yU4oiS77yRIFR1Zy1J44OT44Or!5e0!3m2!1sja!2sjp!4v1684206765413!5m2!1sja!2sjp\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
(801, 157, '_country_0_country_information_0_country_office_maps', 'field_646e074347a42'),
(802, 157, 'country_0_country_information_0_country_office', ''),
(803, 157, '_country_0_country_information_0_country_office', 'field_646e070347a3b'),
(804, 157, 'country_0_country_information_0_country_tel_name', 'TEL'),
(805, 157, '_country_0_country_information_0_country_tel_name', 'field_646e072e47a40'),
(806, 157, 'country_0_country_information_0_country_tel_content', '+84-28-3526-5024'),
(807, 157, '_country_0_country_information_0_country_tel_content', 'field_646e072e47a41'),
(808, 157, 'country_0_country_information_0_country_tel', ''),
(809, 157, '_country_0_country_information_0_country_tel', 'field_646e072e47a3f'),
(810, 157, 'country_0_country_information_0_country_representative_name', 'Người đại diện'),
(811, 157, '_country_0_country_information_0_country_representative_name', 'field_646e075447a44'),
(812, 157, 'country_0_country_information_0_country_representative_content', 'Nguyễn Văn A'),
(813, 157, '_country_0_country_information_0_country_representative_content', 'field_646e075447a45'),
(814, 157, 'country_0_country_information_0_country_representative', ''),
(815, 157, '_country_0_country_information_0_country_representative', 'field_646e075447a43'),
(816, 157, 'country_0_country_information', '1'),
(817, 157, '_country_0_country_information', 'field_646e065247a37'),
(818, 157, 'country_1_country_name', 'Nhật Bản'),
(819, 157, '_country_1_country_name', 'field_646e064047a36'),
(820, 157, 'country_1_country_information_0_country_company_name', 'Tên công ty'),
(821, 157, '_country_1_country_information_0_country_company_name', 'field_646e06e447a39'),
(822, 157, 'country_1_country_information_0_country_company_content', 'Stage Asia LLC.'),
(823, 157, '_country_1_country_information_0_country_company_content', 'field_646e06f147a3a'),
(824, 157, 'country_1_country_information_0_country_company', ''),
(825, 157, '_country_1_country_information_0_country_company', 'field_646e066f47a38'),
(826, 157, 'country_1_country_information_0_country_office_name', 'Văn phòng'),
(827, 157, '_country_1_country_information_0_country_office_name', 'field_646e070347a3c'),
(828, 157, 'country_1_country_information_0_country_office_content', '8F, GB Bldg., 78-80 Cach Mang Thang Tam, Ward6, Quan3, HCMC'),
(829, 157, '_country_1_country_information_0_country_office_content', 'field_646e070347a3d'),
(830, 157, 'country_1_country_information_0_country_office_maps', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3240.09028482794!2d139.753828!3d35.6993958!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60188c156031429d%3A0xbf1d2ef41a33b114!2z44CSMTAxLTAwNjEg5p2x5Lqs6YO95Y2D5Luj55Sw5Yy656We55Sw5LiJ5bSO55S677yS5LiB55uu77yU4oiS77yRIFR1Zy1J44OT44Or!5e0!3m2!1sja!2sjp!4v1684206765413!5m2!1sja!2sjp\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
(831, 157, '_country_1_country_information_0_country_office_maps', 'field_646e074347a42'),
(832, 157, 'country_1_country_information_0_country_office', ''),
(833, 157, '_country_1_country_information_0_country_office', 'field_646e070347a3b'),
(834, 157, 'country_1_country_information_0_country_tel_name', 'TEL'),
(835, 157, '_country_1_country_information_0_country_tel_name', 'field_646e072e47a40'),
(836, 157, 'country_1_country_information_0_country_tel_content', '+81-3-3263-0219'),
(837, 157, '_country_1_country_information_0_country_tel_content', 'field_646e072e47a41'),
(838, 157, 'country_1_country_information_0_country_tel', ''),
(839, 157, '_country_1_country_information_0_country_tel', 'field_646e072e47a3f'),
(840, 157, 'country_1_country_information_0_country_representative_name', 'Người đại diện'),
(841, 157, '_country_1_country_information_0_country_representative_name', 'field_646e075447a44'),
(842, 157, 'country_1_country_information_0_country_representative_content', 'CEO công ty con Nobuhiro Deguchi Việt Nam'),
(843, 157, '_country_1_country_information_0_country_representative_content', 'field_646e075447a45'),
(844, 157, 'country_1_country_information_0_country_representative', ''),
(845, 157, '_country_1_country_information_0_country_representative', 'field_646e075447a43'),
(846, 157, 'country_1_country_information', '1'),
(847, 157, '_country_1_country_information', 'field_646e065247a37'),
(848, 157, 'country', '2'),
(849, 157, '_country', 'field_646e05e747a35'),
(850, 156, 'about_ja_title', 'ステージアジアジャパンについて'),
(851, 156, '_about_ja_title', 'field_646e0f1f8cb98'),
(852, 156, 'about_ja_desc', 'ステージアジアジャパンはベトナムを中⼼とした、アジア諸国への海外進出をサポートする会社です。<br>\r\n2014年よりベトナムホーチミンに拠点を持ちオフショア開発に携わってきました。<br>\r\n現在では化粧品や健康⾷品などの輸出事業を、主にベトナムを中⼼としたASEAN諸国に展開しており、輸出に必要なFDA認可の取得から、⽇本国<br>\r\n内におけるEPAコンサルティング、販路開拓まで、そのすべてを⽇本法⼈であるステージアジアジャパンがワンストップで対応しています。<br>'),
(853, 156, '_about_ja_desc', 'field_646e0f2e8cb99'),
(854, 161, 'heading', '会社概要'),
(855, 161, '_heading', 'field_646df20bed6ab'),
(856, 161, 'country_0_country_name', 'Việt Nam'),
(857, 161, '_country_0_country_name', 'field_646e064047a36'),
(858, 161, 'country_0_country_information_0_country_company_name', 'Tên công ty'),
(859, 161, '_country_0_country_information_0_country_company_name', 'field_646e06e447a39'),
(860, 161, 'country_0_country_information_0_country_company_content', 'Công Ty TNHH Sân Khấu Châu Á'),
(861, 161, '_country_0_country_information_0_country_company_content', 'field_646e06f147a3a'),
(862, 161, 'country_0_country_information_0_country_company', ''),
(863, 161, '_country_0_country_information_0_country_company', 'field_646e066f47a38'),
(864, 161, 'country_0_country_information_0_country_office_name', 'Văn phòng'),
(865, 161, '_country_0_country_information_0_country_office_name', 'field_646e070347a3c'),
(866, 161, 'country_0_country_information_0_country_office_content', '8F, Tòa nhà GB, 78-80 Cách Mạng Tháng 8, P.6, Q.3, HCM'),
(867, 161, '_country_0_country_information_0_country_office_content', 'field_646e070347a3d'),
(868, 161, 'country_0_country_information_0_country_office_maps', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3240.09028482794!2d139.753828!3d35.6993958!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60188c156031429d%3A0xbf1d2ef41a33b114!2z44CSMTAxLTAwNjEg5p2x5Lqs6YO95Y2D5Luj55Sw5Yy656We55Sw5LiJ5bSO55S677yS5LiB55uu77yU4oiS77yRIFR1Zy1J44OT44Or!5e0!3m2!1sja!2sjp!4v1684206765413!5m2!1sja!2sjp\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
(869, 161, '_country_0_country_information_0_country_office_maps', 'field_646e074347a42'),
(870, 161, 'country_0_country_information_0_country_office', ''),
(871, 161, '_country_0_country_information_0_country_office', 'field_646e070347a3b'),
(872, 161, 'country_0_country_information_0_country_tel_name', 'TEL'),
(873, 161, '_country_0_country_information_0_country_tel_name', 'field_646e072e47a40'),
(874, 161, 'country_0_country_information_0_country_tel_content', '+84-28-3526-5024'),
(875, 161, '_country_0_country_information_0_country_tel_content', 'field_646e072e47a41'),
(876, 161, 'country_0_country_information_0_country_tel', ''),
(877, 161, '_country_0_country_information_0_country_tel', 'field_646e072e47a3f'),
(878, 161, 'country_0_country_information_0_country_representative_name', 'Người đại diện'),
(879, 161, '_country_0_country_information_0_country_representative_name', 'field_646e075447a44'),
(880, 161, 'country_0_country_information_0_country_representative_content', 'Nguyễn Văn A'),
(881, 161, '_country_0_country_information_0_country_representative_content', 'field_646e075447a45'),
(882, 161, 'country_0_country_information_0_country_representative', ''),
(883, 161, '_country_0_country_information_0_country_representative', 'field_646e075447a43'),
(884, 161, 'country_0_country_information', '1'),
(885, 161, '_country_0_country_information', 'field_646e065247a37'),
(886, 161, 'country_1_country_name', 'Nhật Bản'),
(887, 161, '_country_1_country_name', 'field_646e064047a36'),
(888, 161, 'country_1_country_information_0_country_company_name', 'Tên công ty'),
(889, 161, '_country_1_country_information_0_country_company_name', 'field_646e06e447a39'),
(890, 161, 'country_1_country_information_0_country_company_content', 'Stage Asia LLC.'),
(891, 161, '_country_1_country_information_0_country_company_content', 'field_646e06f147a3a'),
(892, 161, 'country_1_country_information_0_country_company', ''),
(893, 161, '_country_1_country_information_0_country_company', 'field_646e066f47a38'),
(894, 161, 'country_1_country_information_0_country_office_name', 'Văn phòng'),
(895, 161, '_country_1_country_information_0_country_office_name', 'field_646e070347a3c'),
(896, 161, 'country_1_country_information_0_country_office_content', '8F, GB Bldg., 78-80 Cach Mang Thang Tam, Ward6, Quan3, HCMC'),
(897, 161, '_country_1_country_information_0_country_office_content', 'field_646e070347a3d'),
(898, 161, 'country_1_country_information_0_country_office_maps', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3240.09028482794!2d139.753828!3d35.6993958!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60188c156031429d%3A0xbf1d2ef41a33b114!2z44CSMTAxLTAwNjEg5p2x5Lqs6YO95Y2D5Luj55Sw5Yy656We55Sw5LiJ5bSO55S677yS5LiB55uu77yU4oiS77yRIFR1Zy1J44OT44Or!5e0!3m2!1sja!2sjp!4v1684206765413!5m2!1sja!2sjp\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
(899, 161, '_country_1_country_information_0_country_office_maps', 'field_646e074347a42'),
(900, 161, 'country_1_country_information_0_country_office', ''),
(901, 161, '_country_1_country_information_0_country_office', 'field_646e070347a3b'),
(902, 161, 'country_1_country_information_0_country_tel_name', 'TEL'),
(903, 161, '_country_1_country_information_0_country_tel_name', 'field_646e072e47a40'),
(904, 161, 'country_1_country_information_0_country_tel_content', '+81-3-3263-0219'),
(905, 161, '_country_1_country_information_0_country_tel_content', 'field_646e072e47a41'),
(906, 161, 'country_1_country_information_0_country_tel', ''),
(907, 161, '_country_1_country_information_0_country_tel', 'field_646e072e47a3f'),
(908, 161, 'country_1_country_information_0_country_representative_name', 'Người đại diện'),
(909, 161, '_country_1_country_information_0_country_representative_name', 'field_646e075447a44'),
(910, 161, 'country_1_country_information_0_country_representative_content', 'CEO công ty con Nobuhiro Deguchi Việt Nam'),
(911, 161, '_country_1_country_information_0_country_representative_content', 'field_646e075447a45'),
(912, 161, 'country_1_country_information_0_country_representative', ''),
(913, 161, '_country_1_country_information_0_country_representative', 'field_646e075447a43'),
(914, 161, 'country_1_country_information', '1'),
(915, 161, '_country_1_country_information', 'field_646e065247a37'),
(916, 161, 'country', '2'),
(917, 161, '_country', 'field_646e05e747a35'),
(918, 161, 'about_ja_title', 'ステージアジアジャパンについて'),
(919, 161, '_about_ja_title', 'field_646e0f1f8cb98'),
(920, 161, 'about_ja_desc', 'ステージアジアジャパンはベトナムを中⼼とした、アジア諸国への海外進出をサポートする会社です。<br>\r\n2014年よりベトナムホーチミンに拠点を持ちオフショア開発に携わってきました。<br>\r\n現在では化粧品や健康⾷品などの輸出事業を、主にベトナムを中⼼としたASEAN諸国に展開しており、輸出に必要なFDA認可の取得から、⽇本国<br>\r\n内におけるEPAコンサルティング、販路開拓まで、そのすべてを⽇本法⼈であるステージアジアジャパンがワンストップで対応しています。<br>'),
(921, 161, '_about_ja_desc', 'field_646e0f2e8cb99'),
(922, 44, '_wp_trash_meta_status', 'publish'),
(923, 44, '_wp_trash_meta_time', '1684934984'),
(924, 44, '_wp_desired_post_slug', 'sample-page-%e6%97%a5%e6%9c%ac%e8%aa%9e'),
(925, 162, '_wp_page_template', 'page.php'),
(926, 162, '_edit_lock', '1684934956:1'),
(927, 162, '_edit_last', '1'),
(928, 162, 'top_main_visual_slide_0_top_main_visual_slide_image', '75'),
(929, 162, '_top_main_visual_slide_0_top_main_visual_slide_image', 'field_646b43bff2627'),
(930, 162, 'top_main_visual_slide_1_top_main_visual_slide_image', '76'),
(931, 162, '_top_main_visual_slide_1_top_main_visual_slide_image', 'field_646b43bff2627'),
(932, 162, 'top_main_visual_slide', '2'),
(933, 162, '_top_main_visual_slide', 'field_646b43b0f2626'),
(934, 162, 'top_text_slide', 'このエリアには16:9のバナーを<br>差し替えて入れられる想定'),
(935, 162, '_top_text_slide', 'field_646b4444f2628'),
(936, 162, 'top_main_visual_feature', '74'),
(937, 162, '_top_main_visual_feature', 'field_646b48f40c96b'),
(938, 162, 'top_pick_up_choose_item', 'a:5:{i:0;s:2:\"87\";i:1;s:2:\"86\";i:2;s:2:\"85\";i:3;s:1:\"1\";i:4;s:2:\"83\";}'),
(939, 162, '_top_pick_up_choose_item', 'field_646dd4c4153fb'),
(940, 162, 'top_search_category', 'a:2:{i:0;s:2:\"25\";i:1;s:2:\"19\";}'),
(941, 162, '_top_search_category', 'field_646ddf00fc001'),
(942, 162, 'top_topic_title', 'Mang mỹ phẩm và thực phẩm chức năng của Nhật Bản đến với Việt Nam.'),
(943, 162, '_top_topic_title', 'field_646dec2f8da57'),
(944, 162, 'top_topic_desc', 'Tại Việt Nam đất nước nằm trong Top các nước nhiều người đẹp tại châu Á, các sản phẩm của nhật được đánh giá cao.\r\nChúng tôi tập hợp những sản phẩm lần đầu được đưa vào Việt Nam, và giới thiệu đặc điểm của những sản phẩm mang thu hướng được nhiều người tin dùng tại Nhật đang được đánh giá như thế nào tại thị trường Nhật Bản.'),
(945, 162, '_top_topic_desc', 'field_646dec3d8da58'),
(946, 162, 'top_topic_feature_pc', '108'),
(947, 162, '_top_topic_feature_pc', 'field_646dec508da59'),
(948, 162, 'top_topic_feature_sp', '109'),
(949, 162, '_top_topic_feature_sp', 'field_646dec7e8da5a'),
(950, 163, 'top_main_visual_slide_0_top_main_visual_slide_image', '75'),
(951, 163, '_top_main_visual_slide_0_top_main_visual_slide_image', 'field_646b43bff2627'),
(952, 163, 'top_main_visual_slide_1_top_main_visual_slide_image', '76'),
(953, 163, '_top_main_visual_slide_1_top_main_visual_slide_image', 'field_646b43bff2627'),
(954, 163, 'top_main_visual_slide', '2'),
(955, 163, '_top_main_visual_slide', 'field_646b43b0f2626'),
(956, 163, 'top_text_slide', 'このエリアには16:9のバナーを<br>差し替えて入れられる想定'),
(957, 163, '_top_text_slide', 'field_646b4444f2628'),
(958, 163, 'top_main_visual_feature', '74'),
(959, 163, '_top_main_visual_feature', 'field_646b48f40c96b'),
(960, 163, 'top_pick_up_choose_item', 'a:5:{i:0;s:2:\"87\";i:1;s:2:\"86\";i:2;s:2:\"85\";i:3;s:1:\"1\";i:4;s:2:\"83\";}'),
(961, 163, '_top_pick_up_choose_item', 'field_646dd4c4153fb'),
(962, 163, 'top_search_category', 'a:2:{i:0;s:2:\"25\";i:1;s:2:\"19\";}'),
(963, 163, '_top_search_category', 'field_646ddf00fc001'),
(964, 163, 'top_topic_title', 'Mang mỹ phẩm và thực phẩm chức năng của Nhật Bản đến với Việt Nam.'),
(965, 163, '_top_topic_title', 'field_646dec2f8da57'),
(966, 163, 'top_topic_desc', 'Tại Việt Nam đất nước nằm trong Top các nước nhiều người đẹp tại châu Á, các sản phẩm của nhật được đánh giá cao.\r\nChúng tôi tập hợp những sản phẩm lần đầu được đưa vào Việt Nam, và giới thiệu đặc điểm của những sản phẩm mang thu hướng được nhiều người tin dùng tại Nhật đang được đánh giá như thế nào tại thị trường Nhật Bản.'),
(967, 163, '_top_topic_desc', 'field_646dec3d8da58'),
(968, 163, 'top_topic_feature_pc', '108'),
(969, 163, '_top_topic_feature_pc', 'field_646dec508da59'),
(970, 163, 'top_topic_feature_sp', '109'),
(971, 163, '_top_topic_feature_sp', 'field_646dec7e8da5a'),
(972, 164, 'top_main_visual_slide_0_top_main_visual_slide_image', '75'),
(973, 164, 'top_main_visual_slide_1_top_main_visual_slide_image', '76'),
(974, 164, 'top_main_visual_slide', '2'),
(975, 164, 'top_text_slide', 'このエリアには16:9のバナーを<br>差し替えて入れられる想定'),
(976, 164, 'top_main_visual_feature', '74'),
(977, 164, 'top_pick_up_choose_item', 'a:3:{i:0;s:3:\"171\";i:1;s:3:\"166\";i:2;s:3:\"167\";}'),
(978, 164, 'top_search_category', 'a:2:{i:0;s:2:\"25\";i:1;s:2:\"19\";}'),
(979, 164, 'top_topic_title', '⽇本の<br> 化粧品・健康⾷品を、<br> ベトナムへ。'),
(980, 164, 'top_topic_desc', 'アジア屈指の美⼈⼤国「ベトナム」では、⽇本製商品が⾼く評価されています。<br>\r\n美⼈-Người đẹp.-は、「made in JAPAN」の、その限りない可能性をつなぐ情報サイトです。<br>\r\nベトナム初上陸となる、⽇本で⼈気のトレンド商品の特徴や、<br>\r\nそれらの商品が⽇本ではどんな評価がされているのか等、まとめて紹介しています。<br>'),
(981, 164, 'top_topic_feature_pc', '108'),
(982, 164, 'top_topic_feature_sp', '109'),
(983, 164, '_wp_page_template', 'page.php'),
(984, 164, '_edit_last', '1'),
(985, 164, '_edit_lock', '1684953717:1'),
(986, 164, '_top_main_visual_slide_0_top_main_visual_slide_image', 'field_646b43bff2627'),
(987, 164, '_top_main_visual_slide_1_top_main_visual_slide_image', 'field_646b43bff2627'),
(988, 164, '_top_main_visual_slide', 'field_646b43b0f2626'),
(989, 164, '_top_main_visual_feature', 'field_646b48f40c96b'),
(990, 164, '_top_pick_up_choose_item', 'field_646dd4c4153fb'),
(991, 164, '_top_search_category', 'field_646ddf00fc001'),
(992, 164, '_top_topic_title', 'field_646dec2f8da57'),
(993, 164, '_top_topic_desc', 'field_646dec3d8da58'),
(994, 164, '_top_topic_feature_pc', 'field_646dec508da59'),
(995, 164, '_top_topic_feature_sp', 'field_646dec7e8da5a'),
(996, 165, 'top_main_visual_slide_0_top_main_visual_slide_image', '75'),
(997, 165, '_top_main_visual_slide_0_top_main_visual_slide_image', 'field_646b43bff2627'),
(998, 165, 'top_main_visual_slide_1_top_main_visual_slide_image', '76'),
(999, 165, '_top_main_visual_slide_1_top_main_visual_slide_image', 'field_646b43bff2627'),
(1000, 165, 'top_main_visual_slide', '2'),
(1001, 165, '_top_main_visual_slide', 'field_646b43b0f2626'),
(1002, 165, 'top_main_visual_feature', '74'),
(1003, 165, '_top_main_visual_feature', 'field_646b48f40c96b'),
(1004, 165, 'top_pick_up_choose_item', ''),
(1005, 165, '_top_pick_up_choose_item', 'field_646dd4c4153fb'),
(1006, 165, 'top_search_category', 'a:2:{i:0;s:2:\"25\";i:1;s:2:\"19\";}'),
(1007, 165, '_top_search_category', 'field_646ddf00fc001'),
(1008, 165, 'top_topic_title', 'Mang mỹ phẩm và thực phẩm chức năng của Nhật Bản đến với Việt Nam.'),
(1009, 165, '_top_topic_title', 'field_646dec2f8da57'),
(1010, 165, 'top_topic_desc', 'Tại Việt Nam đất nước nằm trong Top các nước nhiều người đẹp tại châu Á, các sản phẩm của nhật được đánh giá cao.\r\nChúng tôi tập hợp những sản phẩm lần đầu được đưa vào Việt Nam, và giới thiệu đặc điểm của những sản phẩm mang thu hướng được nhiều người tin dùng tại Nhật đang được đánh giá như thế nào tại thị trường Nhật Bản.'),
(1011, 165, '_top_topic_desc', 'field_646dec3d8da58'),
(1012, 165, 'top_topic_feature_pc', '108'),
(1013, 165, '_top_topic_feature_pc', 'field_646dec508da59'),
(1014, 165, 'top_topic_feature_sp', '109'),
(1015, 165, '_top_topic_feature_sp', 'field_646dec7e8da5a'),
(1016, 166, 'ins_link', ''),
(1017, 166, '_thumbnail_id', '91'),
(1018, 166, '_edit_last', '1'),
(1019, 166, '_edit_lock', '1684935219:1'),
(1020, 167, 'ins_link', ''),
(1021, 167, '_thumbnail_id', '81'),
(1022, 167, '_edit_last', '1'),
(1023, 167, '_edit_lock', '1684935047:1'),
(1026, 167, '_ins_link', 'field_646b4d67173f3'),
(1027, 168, 'ins_link', ''),
(1028, 168, '_ins_link', 'field_646b4d67173f3'),
(1029, 78, '_wp_trash_meta_status', 'publish'),
(1030, 78, '_wp_trash_meta_time', '1684935314'),
(1031, 78, '_wp_desired_post_slug', 'group_646b4d3129ff3'),
(1034, 171, 'ins_link', ''),
(1035, 171, '_thumbnail_id', '89'),
(1036, 171, '_edit_last', '1'),
(1037, 171, '_edit_lock', '1684935624:1'),
(1040, 164, 'ins_link', ''),
(1041, 164, '_ins_link', 'field_646b4d67173f3'),
(1042, 173, 'top_main_visual_slide_0_top_main_visual_slide_image', '75'),
(1043, 173, '_top_main_visual_slide_0_top_main_visual_slide_image', 'field_646b43bff2627'),
(1044, 173, 'top_main_visual_slide_1_top_main_visual_slide_image', '76'),
(1045, 173, '_top_main_visual_slide_1_top_main_visual_slide_image', 'field_646b43bff2627'),
(1046, 173, 'top_main_visual_slide', '2'),
(1047, 173, '_top_main_visual_slide', 'field_646b43b0f2626'),
(1048, 173, 'top_main_visual_feature', '74'),
(1049, 173, '_top_main_visual_feature', 'field_646b48f40c96b'),
(1050, 173, 'top_pick_up_choose_item', 'a:3:{i:0;s:3:\"171\";i:1;s:3:\"166\";i:2;s:3:\"167\";}'),
(1051, 173, '_top_pick_up_choose_item', 'field_646dd4c4153fb'),
(1052, 173, 'top_search_category', 'a:2:{i:0;s:2:\"25\";i:1;s:2:\"19\";}'),
(1053, 173, '_top_search_category', 'field_646ddf00fc001'),
(1054, 173, 'top_topic_title', '⽇本の<br> 化粧品・健康⾷品を、<br> ベトナムへ。'),
(1055, 173, '_top_topic_title', 'field_646dec2f8da57'),
(1056, 173, 'top_topic_desc', 'アジア屈指の美⼈⼤国「ベトナム」では、⽇本製商品が⾼く評価されています。<br>\r\n美⼈-Người đẹp.-は、「made in JAPAN」の、その限りない可能性をつなぐ情報サイトです。<br>\r\nベトナム初上陸となる、⽇本で⼈気のトレンド商品の特徴や、<br>\r\nそれらの商品が⽇本ではどんな評価がされているのか等、まとめて紹介しています。<br>'),
(1057, 173, '_top_topic_desc', 'field_646dec3d8da58'),
(1058, 173, 'top_topic_feature_pc', '108'),
(1059, 173, '_top_topic_feature_pc', 'field_646dec508da59'),
(1060, 173, 'top_topic_feature_sp', '109'),
(1061, 173, '_top_topic_feature_sp', 'field_646dec7e8da5a'),
(1062, 173, 'ins_link', ''),
(1063, 173, '_ins_link', 'field_646b4d67173f3'),
(1086, 162, '_wp_trash_meta_status', 'publish'),
(1087, 162, '_wp_trash_meta_time', '1684935788'),
(1088, 162, '_wp_desired_post_slug', 'top'),
(1089, 175, 'country_0_country_name', 'Việt Nam'),
(1090, 175, '_country_0_country_name', 'field_646e064047a36'),
(1091, 175, 'country_0_country_information_0_country_company_name', 'Tên công ty'),
(1092, 175, '_country_0_country_information_0_country_company_name', 'field_646e06e447a39'),
(1093, 175, 'country_0_country_information_0_country_company_content', 'Công Ty TNHH Sân Khấu Châu Á'),
(1094, 175, '_country_0_country_information_0_country_company_content', 'field_646e06f147a3a'),
(1095, 175, 'country_0_country_information_0_country_company', ''),
(1096, 175, '_country_0_country_information_0_country_company', 'field_646e066f47a38'),
(1097, 175, 'country_0_country_information_0_country_office_name', 'Văn phòng'),
(1098, 175, '_country_0_country_information_0_country_office_name', 'field_646e070347a3c'),
(1099, 175, 'country_0_country_information_0_country_office_content', '8F, Tòa nhà GB, 78-80 Cách Mạng Tháng 8, P.6, Q.3, HCM'),
(1100, 175, '_country_0_country_information_0_country_office_content', 'field_646e070347a3d'),
(1101, 175, 'country_0_country_information_0_country_office_maps', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3240.09028482794!2d139.753828!3d35.6993958!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60188c156031429d%3A0xbf1d2ef41a33b114!2z44CSMTAxLTAwNjEg5p2x5Lqs6YO95Y2D5Luj55Sw5Yy656We55Sw5LiJ5bSO55S677yS5LiB55uu77yU4oiS77yRIFR1Zy1J44OT44Or!5e0!3m2!1sja!2sjp!4v1684206765413!5m2!1sja!2sjp\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
(1102, 175, '_country_0_country_information_0_country_office_maps', 'field_646e074347a42'),
(1103, 175, 'country_0_country_information_0_country_office', ''),
(1104, 175, '_country_0_country_information_0_country_office', 'field_646e070347a3b'),
(1105, 175, 'country_0_country_information_0_country_tel_name', 'TEL'),
(1106, 175, '_country_0_country_information_0_country_tel_name', 'field_646e072e47a40'),
(1107, 175, 'country_0_country_information_0_country_tel_content', '+84-28-3526-5024'),
(1108, 175, '_country_0_country_information_0_country_tel_content', 'field_646e072e47a41'),
(1109, 175, 'country_0_country_information_0_country_tel', ''),
(1110, 175, '_country_0_country_information_0_country_tel', 'field_646e072e47a3f'),
(1111, 175, 'country_0_country_information_0_country_representative_name', 'Người đại diện'),
(1112, 175, '_country_0_country_information_0_country_representative_name', 'field_646e075447a44'),
(1113, 175, 'country_0_country_information_0_country_representative_content', 'Nguyễn Văn A'),
(1114, 175, '_country_0_country_information_0_country_representative_content', 'field_646e075447a45'),
(1115, 175, 'country_0_country_information_0_country_representative', ''),
(1116, 175, '_country_0_country_information_0_country_representative', 'field_646e075447a43'),
(1117, 175, 'country_0_country_information', '1'),
(1118, 175, '_country_0_country_information', 'field_646e065247a37'),
(1119, 175, 'country_1_country_name', 'Nhật Bản'),
(1120, 175, '_country_1_country_name', 'field_646e064047a36'),
(1121, 175, 'country_1_country_information_0_country_company_name', 'Tên công ty'),
(1122, 175, '_country_1_country_information_0_country_company_name', 'field_646e06e447a39'),
(1123, 175, 'country_1_country_information_0_country_company_content', 'Stage Asia LLC.'),
(1124, 175, '_country_1_country_information_0_country_company_content', 'field_646e06f147a3a'),
(1125, 175, 'country_1_country_information_0_country_company', ''),
(1126, 175, '_country_1_country_information_0_country_company', 'field_646e066f47a38'),
(1127, 175, 'country_1_country_information_0_country_office_name', 'Văn phòng'),
(1128, 175, '_country_1_country_information_0_country_office_name', 'field_646e070347a3c'),
(1129, 175, 'country_1_country_information_0_country_office_content', '8F, GB Bldg., 78-80 Cach Mang Thang Tam, Ward6, Quan3, HCMC'),
(1130, 175, '_country_1_country_information_0_country_office_content', 'field_646e070347a3d'),
(1131, 175, 'country_1_country_information_0_country_office_maps', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3240.09028482794!2d139.753828!3d35.6993958!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60188c156031429d%3A0xbf1d2ef41a33b114!2z44CSMTAxLTAwNjEg5p2x5Lqs6YO95Y2D5Luj55Sw5Yy656We55Sw5LiJ5bSO55S677yS5LiB55uu77yU4oiS77yRIFR1Zy1J44OT44Or!5e0!3m2!1sja!2sjp!4v1684206765413!5m2!1sja!2sjp\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
(1132, 175, '_country_1_country_information_0_country_office_maps', 'field_646e074347a42'),
(1133, 175, 'country_1_country_information_0_country_office', ''),
(1134, 175, '_country_1_country_information_0_country_office', 'field_646e070347a3b'),
(1135, 175, 'country_1_country_information_0_country_tel_name', 'TEL'),
(1136, 175, '_country_1_country_information_0_country_tel_name', 'field_646e072e47a40'),
(1137, 175, 'country_1_country_information_0_country_tel_content', '+81-3-3263-0219'),
(1138, 175, '_country_1_country_information_0_country_tel_content', 'field_646e072e47a41'),
(1139, 175, 'country_1_country_information_0_country_tel', ''),
(1140, 175, '_country_1_country_information_0_country_tel', 'field_646e072e47a3f'),
(1141, 175, 'country_1_country_information_0_country_representative_name', 'Người đại diện'),
(1142, 175, '_country_1_country_information_0_country_representative_name', 'field_646e075447a44'),
(1143, 175, 'country_1_country_information_0_country_representative_content', 'CEO công ty con Nobuhiro Deguchi Việt Nam'),
(1144, 175, '_country_1_country_information_0_country_representative_content', 'field_646e075447a45'),
(1145, 175, 'country_1_country_information_0_country_representative', ''),
(1146, 175, '_country_1_country_information_0_country_representative', 'field_646e075447a43'),
(1147, 175, 'country_1_country_information', '1'),
(1148, 175, '_country_1_country_information', 'field_646e065247a37'),
(1149, 175, 'country', '2'),
(1150, 175, '_country', 'field_646e05e747a35'),
(1151, 175, 'about_ja_title', 'ステージアジアジャパンについて'),
(1152, 175, '_about_ja_title', 'field_646e0f1f8cb98'),
(1153, 175, 'about_ja_desc', 'ステージアジアジャパンはベトナムを中⼼とした、アジア諸国への海外進出をサポートする会社です。<br>\r\n2014年よりベトナムホーチミンに拠点を持ちオフショア開発に携わってきました。<br>\r\n現在では化粧品や健康⾷品などの輸出事業を、主にベトナムを中⼼としたASEAN諸国に展開しており、輸出に必要なFDA認可の取得から、⽇本国<br>\r\n内におけるEPAコンサルティング、販路開拓まで、そのすべてを⽇本法⼈であるステージアジアジャパンがワンストップで対応しています。<br>'),
(1154, 175, '_about_ja_desc', 'field_646e0f2e8cb99'),
(1155, 175, 'heading', '会社概要'),
(1156, 175, '_heading', 'field_646df20bed6ab'),
(1157, 176, '_edit_last', '1'),
(1158, 176, '_edit_lock', '1685166403:1'),
(1159, 176, '_wp_page_template', 'page-agent-recruitment.php'),
(1160, 176, 'heading', 'TUYỂN DỤNG NHÀ PHÂN PHỐI'),
(1161, 176, '_heading', 'field_646df20bed6ab'),
(1162, 177, 'heading', 'TUYỂN DỤNG NHÀ PHÂN PHỐI'),
(1163, 177, '_heading', 'field_646df20bed6ab'),
(1164, 178, 'heading', 'TUYỂN DỤNG NHÀ PHÂN PHỐI'),
(1165, 178, '_heading', 'field_646df20bed6ab'),
(1166, 181, '_wp_attached_file', '2023/05/banner1.jpg'),
(1167, 181, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:350;s:6:\"height\";i:240;s:4:\"file\";s:19:\"2023/05/banner1.jpg\";s:8:\"filesize\";i:62753;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1168, 182, '_wp_attached_file', '2023/05/banner2.jpg'),
(1169, 182, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:350;s:6:\"height\";i:240;s:4:\"file\";s:19:\"2023/05/banner2.jpg\";s:8:\"filesize\";i:68118;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1170, 2, 'ins_link', ''),
(1171, 2, '_ins_link', 'field_646b4d67173f3'),
(1172, 2, 'top_image_galley', 'a:2:{i:0;s:3:\"181\";i:1;s:3:\"182\";}'),
(1173, 2, '_top_image_galley', 'field_646e5abf5f180'),
(1174, 183, 'top_main_visual_slide_0_top_main_visual_slide_image', '75'),
(1175, 183, '_top_main_visual_slide_0_top_main_visual_slide_image', 'field_646b43bff2627'),
(1176, 183, 'top_main_visual_slide_1_top_main_visual_slide_image', '76'),
(1177, 183, '_top_main_visual_slide_1_top_main_visual_slide_image', 'field_646b43bff2627'),
(1178, 183, 'top_main_visual_slide', '2'),
(1179, 183, '_top_main_visual_slide', 'field_646b43b0f2626'),
(1180, 183, 'top_text_slide', 'このエリアには16:9のバナーを<br>差し替えて入れられる想定'),
(1181, 183, '_top_text_slide', 'field_646b4444f2628'),
(1182, 183, 'top_main_visual_feature', '74'),
(1183, 183, '_top_main_visual_feature', 'field_646b48f40c96b'),
(1184, 183, 'top_pick_up_choose_item', 'a:5:{i:0;s:2:\"87\";i:1;s:2:\"86\";i:2;s:2:\"85\";i:3;s:1:\"1\";i:4;s:2:\"83\";}'),
(1185, 183, '_top_pick_up_choose_item', 'field_646dd4c4153fb'),
(1186, 183, 'top_search_category', 'a:2:{i:0;s:2:\"25\";i:1;s:2:\"19\";}'),
(1187, 183, '_top_search_category', 'field_646ddf00fc001'),
(1188, 183, 'top_topic_title', 'Mang mỹ phẩm và thực phẩm chức năng của Nhật Bản đến với Việt Nam.'),
(1189, 183, '_top_topic_title', 'field_646dec2f8da57'),
(1190, 183, 'top_topic_desc', 'Tại Việt Nam đất nước nằm trong Top các nước nhiều người đẹp tại châu Á, các sản phẩm của nhật được đánh giá cao.\r\nChúng tôi tập hợp những sản phẩm lần đầu được đưa vào Việt Nam, và giới thiệu đặc điểm của những sản phẩm mang thu hướng được nhiều người tin dùng tại Nhật đang được đánh giá như thế nào tại thị trường Nhật Bản.'),
(1191, 183, '_top_topic_desc', 'field_646dec3d8da58'),
(1192, 183, 'top_topic_feature_pc', '108'),
(1193, 183, '_top_topic_feature_pc', 'field_646dec508da59'),
(1194, 183, 'top_topic_feature_sp', '109'),
(1195, 183, '_top_topic_feature_sp', 'field_646dec7e8da5a'),
(1196, 183, 'ins_link', ''),
(1197, 183, '_ins_link', 'field_646b4d67173f3'),
(1198, 183, 'top_image_galley', 'a:2:{i:0;s:3:\"181\";i:1;s:3:\"182\";}'),
(1199, 183, '_top_image_galley', 'field_646e5abf5f180'),
(1200, 184, '_edit_last', '1'),
(1201, 184, '_edit_lock', '1685166403:1'),
(1202, 184, '_wp_page_template', 'page-cateogry.php'),
(1203, 184, 'heading', 'Thông tin sẩn phẩm'),
(1204, 184, '_heading', 'field_646df20bed6ab'),
(1205, 185, 'heading', ''),
(1206, 185, '_heading', 'field_646df20bed6ab'),
(1207, 186, 'heading', 'Thông tin sẩn phẩm'),
(1208, 186, '_heading', 'field_646df20bed6ab');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-05-22 06:37:22', '2023-05-22 06:37:22', '<!-- wp:paragraph -->\r\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\r\n<!-- /wp:paragraph -->', 'Nhập tên sản phẩm.Nhập tên sản phẩm.Nhập tên sản phẩm.Nhập tên sản phẩm.', '', 'publish', 'open', 'open', '', 'item', '', '', '2023-05-24 09:22:41', '2023-05-24 09:22:41', '', 0, 'http://localhost:8080/scsoft/beauty/?p=1', 0, 'post', '', 1),
(2, 1, '2023-05-22 06:37:22', '2023-05-22 06:37:22', '', 'TOP', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2023-05-24 18:44:46', '2023-05-24 18:44:46', '', 0, 'http://localhost:8080/scsoft/beauty/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-05-22 06:37:22', '2023-05-22 06:37:22', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost:8080/scsoft/beauty.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2023-05-22 06:37:22', '2023-05-22 06:37:22', '', 0, 'http://localhost:8080/scsoft/beauty/?page_id=3', 0, 'page', '', 0),
(4, 1, '2023-05-22 06:38:13', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-05-22 06:38:13', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/scsoft/beauty/?p=4', 0, 'post', '', 0),
(6, 1, '2023-05-22 08:16:44', '2023-05-22 08:16:44', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"theme-settings\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Info admin - Header - Footer - Socical - SMTP - Embeb code', 'info-admin-header-footer-socical-smtp-embeb-code', 'publish', 'closed', 'closed', '', 'group_607565705e6d1', '', '', '2023-05-22 10:27:16', '2023-05-22 10:27:16', '', 0, 'http://localhost:8080/scsoft/beauty/?p=6', 0, 'acf-field-group', '', 0),
(7, 1, '2023-05-22 08:16:44', '2023-05-22 08:16:44', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Info admin', '', 'publish', 'closed', 'closed', '', 'field_60d92fbc334e3', '', '', '2023-05-22 08:16:44', '2023-05-22 08:16:44', '', 6, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&p=7', 0, 'acf-field', '', 0),
(8, 1, '2023-05-22 08:16:44', '2023-05-22 08:16:44', 'a:8:{s:4:\"type\";s:7:\"message\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:9:\"new_lines\";s:7:\"wpautop\";s:8:\"esc_html\";i:0;}', '', '', 'publish', 'closed', 'closed', '', 'field_6405a0712aa5a', '', '', '2023-05-22 08:16:44', '2023-05-22 08:16:44', '', 6, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&p=8', 1, 'acf-field', '', 0),
(9, 1, '2023-05-22 08:16:44', '2023-05-22 08:16:44', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Logo Header', 'h_logo', 'publish', 'closed', 'closed', '', 'field_607565820f90c', '', '', '2023-05-22 08:55:12', '2023-05-22 08:55:12', '', 6, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&#038;p=9', 5, 'acf-field', '', 0),
(10, 1, '2023-05-22 08:16:44', '2023-05-22 08:16:44', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Favicon', 'favicon', 'publish', 'closed', 'closed', '', 'field_60d93090334e7', '', '', '2023-05-22 08:55:12', '2023-05-22 08:55:12', '', 6, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&#038;p=10', 2, 'acf-field', '', 0),
(11, 1, '2023-05-22 08:16:44', '2023-05-22 08:16:44', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Header', '', 'publish', 'closed', 'closed', '', 'field_608a1c3e5308d', '', '', '2023-05-22 08:55:12', '2023-05-22 08:55:12', '', 6, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&#038;p=11', 3, 'acf-field', '', 0),
(12, 1, '2023-05-22 08:16:44', '2023-05-22 08:16:44', 'a:8:{s:4:\"type\";s:7:\"message\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:9:\"new_lines\";s:7:\"wpautop\";s:8:\"esc_html\";i:0;}', '', '', 'publish', 'closed', 'closed', '', 'field_6405a0672aa59', '', '', '2023-05-22 08:55:12', '2023-05-22 08:55:12', '', 6, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&#038;p=12', 4, 'acf-field', '', 0),
(17, 1, '2023-05-22 08:16:44', '2023-05-22 08:16:44', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Footer', '', 'publish', 'closed', 'closed', '', 'field_60d92f48334e1', '', '', '2023-05-22 09:33:50', '2023-05-22 09:33:50', '', 6, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&#038;p=17', 8, 'acf-field', '', 0),
(18, 1, '2023-05-22 08:16:44', '2023-05-22 08:16:44', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";i:0;s:3:\"max\";i:0;s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Social', 'social', 'publish', 'closed', 'closed', '', 'field_641145c899f5e', '', '', '2023-05-22 09:33:50', '2023-05-22 09:33:50', '', 6, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&#038;p=18', 9, 'acf-field', '', 0),
(19, 1, '2023-05-22 08:16:44', '2023-05-22 08:16:44', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Icon', 'icon', 'publish', 'closed', 'closed', '', 'field_6411485d790ff', '', '', '2023-05-22 08:16:44', '2023-05-22 08:16:44', '', 18, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&p=19', 0, 'acf-field', '', 0),
(20, 1, '2023-05-22 08:16:44', '2023-05-22 08:16:44', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"80\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Link', 'link', 'publish', 'closed', 'closed', '', 'field_6411487079100', '', '', '2023-05-22 08:16:44', '2023-05-22 08:16:44', '', 18, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&p=20', 1, 'acf-field', '', 0),
(28, 1, '2023-05-22 08:16:44', '2023-05-22 08:16:44', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Copyright', '', 'publish', 'closed', 'closed', '', 'field_64114efbc5a02', '', '', '2023-05-22 10:27:15', '2023-05-22 10:27:15', '', 6, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&#038;p=28', 10, 'acf-field', '', 0),
(29, 1, '2023-05-22 08:16:44', '2023-05-22 08:16:44', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Copyright', 'copyright', 'publish', 'closed', 'closed', '', 'field_64114f07c5a03', '', '', '2023-05-22 10:27:15', '2023-05-22 10:27:15', '', 6, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&#038;p=29', 11, 'acf-field', '', 0),
(30, 1, '2023-05-22 08:16:44', '2023-05-22 08:16:44', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'SMTP', '', 'publish', 'closed', 'closed', '', 'field_616f863510646', '', '', '2023-05-22 10:27:15', '2023-05-22 10:27:15', '', 6, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&#038;p=30', 12, 'acf-field', '', 0),
(31, 1, '2023-05-22 08:16:44', '2023-05-22 08:16:44', 'a:8:{s:4:\"type\";s:7:\"message\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:9:\"new_lines\";s:7:\"wpautop\";s:8:\"esc_html\";i:0;}', '', '', 'publish', 'closed', 'closed', '', 'field_6405a0772aa5b', '', '', '2023-05-22 10:27:15', '2023-05-22 10:27:15', '', 6, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&#038;p=31', 13, 'acf-field', '', 0),
(32, 1, '2023-05-22 08:16:44', '2023-05-22 08:16:44', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'SMTP Encryption', 'smtp_encryption', 'publish', 'closed', 'closed', '', 'field_60d93285153c6', '', '', '2023-05-22 10:27:15', '2023-05-22 10:27:15', '', 6, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&#038;p=32', 14, 'acf-field', '', 0),
(33, 1, '2023-05-22 08:16:44', '2023-05-22 08:16:44', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'SMTP Port', 'smtp_port', 'publish', 'closed', 'closed', '', 'field_60d93294153c7', '', '', '2023-05-22 10:27:15', '2023-05-22 10:27:15', '', 6, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&#038;p=33', 15, 'acf-field', '', 0),
(34, 1, '2023-05-22 08:16:44', '2023-05-22 08:16:44', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'SMTP Username', 'smtp_user', 'publish', 'closed', 'closed', '', 'field_60d932b0153c9', '', '', '2023-05-22 10:27:15', '2023-05-22 10:27:15', '', 6, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&#038;p=34', 16, 'acf-field', '', 0),
(35, 1, '2023-05-22 08:16:44', '2023-05-22 08:16:44', 'a:8:{s:4:\"type\";s:8:\"password\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'SMTP Password', 'smtp_pass', 'publish', 'closed', 'closed', '', 'field_60d932bb153ca', '', '', '2023-05-22 10:27:15', '2023-05-22 10:27:15', '', 6, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&#038;p=35', 17, 'acf-field', '', 0),
(36, 1, '2023-05-22 08:16:44', '2023-05-22 08:16:44', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Embeb code', '', 'publish', 'closed', 'closed', '', 'field_6168f0d6cef87', '', '', '2023-05-22 10:27:15', '2023-05-22 10:27:15', '', 6, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&#038;p=36', 18, 'acf-field', '', 0),
(37, 1, '2023-05-22 08:16:44', '2023-05-22 08:16:44', 'a:8:{s:4:\"type\";s:7:\"message\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:9:\"new_lines\";s:7:\"wpautop\";s:8:\"esc_html\";i:0;}', '', '', 'publish', 'closed', 'closed', '', 'field_6405a07b2aa5c', '', '', '2023-05-22 10:27:15', '2023-05-22 10:27:15', '', 6, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&#038;p=37', 19, 'acf-field', '', 0),
(38, 1, '2023-05-22 08:16:44', '2023-05-22 08:16:44', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:20;s:9:\"new_lines\";s:0:\"\";}', 'Header', 'insert_code_header', 'publish', 'closed', 'closed', '', 'field_6168f0decef88', '', '', '2023-05-22 10:27:15', '2023-05-22 10:27:15', '', 6, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&#038;p=38', 20, 'acf-field', '', 0),
(39, 1, '2023-05-22 08:16:44', '2023-05-22 08:16:44', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:20;s:9:\"new_lines\";s:0:\"\";}', 'Footer', 'insert_code_footer', 'publish', 'closed', 'closed', '', 'field_6168f0e8cef89', '', '', '2023-05-22 10:27:15', '2023-05-22 10:27:15', '', 6, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&#038;p=39', 21, 'acf-field', '', 0),
(40, 1, '2023-05-22 08:16:56', '2023-05-22 08:16:56', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2023-05-22 08:16:56', '2023-05-22 08:16:56', '', 0, 'http://localhost:8080/scsoft/beauty/wp-content/uploads/2023/05/logo.png', 0, 'attachment', 'image/png', 0),
(41, 1, '2023-05-22 08:24:54', '2023-05-22 08:24:54', '<label> Your name\n    [text* your-name autocomplete:name] </label>\n\n<label> Your email\n    [email* your-email autocomplete:email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]\n[_site_title] \"[your-subject]\"\n[_site_title] <sauluoi157@gmail.com>\nFrom: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n[_site_admin_email]\nReply-To: [your-email]\n\n0\n0\n\n[_site_title] \"[your-subject]\"\n[_site_title] <sauluoi157@gmail.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n[your-email]\nReply-To: [_site_admin_email]\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2023-05-22 08:24:54', '2023-05-22 08:24:54', '', 0, 'http://localhost:8080/scsoft/beauty/?post_type=wpcf7_contact_form&p=41', 0, 'wpcf7_contact_form', '', 0),
(42, 1, '2023-05-22 08:30:20', '2023-05-22 08:30:20', '', 'polylang_mo_2', '', 'private', 'closed', 'closed', '', 'polylang_mo_2', '', '', '2023-05-22 08:30:20', '2023-05-22 08:30:20', '', 0, 'http://localhost:8080/scsoft/beauty/?post_type=polylang_mo&p=42', 0, 'polylang_mo', '', 0),
(43, 1, '2023-05-22 08:30:24', '2023-05-22 08:30:24', '', 'polylang_mo_5', '', 'private', 'closed', 'closed', '', 'polylang_mo_5', '', '', '2023-05-22 08:30:24', '2023-05-22 08:30:24', '', 0, 'http://localhost:8080/scsoft/beauty/?post_type=polylang_mo&p=43', 0, 'polylang_mo', '', 0),
(44, 1, '2023-05-22 08:32:45', '2023-05-22 08:32:45', '', 'TOP - 日本語', '', 'trash', 'closed', 'closed', '', 'sample-page-%e6%97%a5%e6%9c%ac%e8%aa%9e__trashed', '', '', '2023-05-24 13:29:44', '2023-05-24 13:29:44', '', 0, 'http://localhost:8080/scsoft/beauty/sample-page-%e6%97%a5%e6%9c%ac%e8%aa%9e/', 0, 'page', '', 0),
(45, 1, '2023-05-22 08:33:15', '2023-05-22 08:33:15', '<!-- wp:paragraph -->\r\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>...or something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:8080/scsoft/beauty/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\r\n<!-- /wp:paragraph -->', 'TOP', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-05-22 08:33:15', '2023-05-22 08:33:15', '', 2, 'http://localhost:8080/scsoft/beauty/?p=45', 0, 'revision', '', 0),
(46, 1, '2023-05-22 08:34:04', '2023-05-22 08:34:04', '', 'Mỹ phẩm', '', 'publish', 'closed', 'closed', '', 'my-pham', '', '', '2023-05-24 11:16:49', '2023-05-24 11:16:49', '', 0, 'http://localhost:8080/scsoft/beauty/?page_id=46', 0, 'page', '', 0),
(47, 1, '2023-05-22 08:34:04', '2023-05-22 08:34:04', '', 'Mỹ phẩm', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2023-05-22 08:34:04', '2023-05-22 08:34:04', '', 46, 'http://localhost:8080/scsoft/beauty/?p=47', 0, 'revision', '', 0),
(48, 1, '2023-05-22 08:34:07', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-05-22 08:34:07', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/scsoft/beauty/?page_id=48', 0, 'page', '', 0),
(50, 1, '2023-05-24 13:44:13', '2023-05-22 08:35:31', '', 'Thực phẩm & Thực phẩm chức năng', '', 'publish', 'closed', 'closed', '', 'thuc-pham-thuc-pham-chuc-nang', '', '', '2023-05-24 13:44:13', '2023-05-24 13:44:13', '', 0, 'http://localhost:8080/scsoft/beauty/?p=50', 2, 'nav_menu_item', '', 0),
(51, 1, '2023-05-24 13:44:13', '2023-05-22 08:35:31', '', 'Sản phẩm khác', '', 'publish', 'closed', 'closed', '', 'san-pham-khac', '', '', '2023-05-24 13:44:13', '2023-05-24 13:44:13', '', 0, 'http://localhost:8080/scsoft/beauty/?p=51', 3, 'nav_menu_item', '', 0),
(53, 1, '2023-05-22 08:55:12', '2023-05-22 08:55:12', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"40\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'Button Vn', 'h_button', 'publish', 'closed', 'closed', '', 'field_646b2dac3d333', '', '', '2023-05-22 09:33:50', '2023-05-22 09:33:50', '', 6, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&#038;p=53', 6, 'acf-field', '', 0),
(54, 1, '2023-05-22 09:18:59', '2023-05-22 09:18:59', '', '化粧品', '', 'publish', 'closed', 'closed', '', '%e5%8c%96%e7%b2%a7%e5%93%81', '', '', '2023-05-22 09:18:59', '2023-05-22 09:18:59', '', 0, 'http://localhost:8080/scsoft/beauty/?p=54', 1, 'nav_menu_item', '', 0),
(55, 1, '2023-05-22 09:18:59', '2023-05-22 09:18:59', '', '健康⾷品・⾷品', '', 'publish', 'closed', 'closed', '', '%e5%81%a5%e5%ba%b7%e2%be%b7%e5%93%81%e3%83%bb%e2%be%b7%e5%93%81', '', '', '2023-05-22 09:18:59', '2023-05-22 09:18:59', '', 0, 'http://localhost:8080/scsoft/beauty/?p=55', 2, 'nav_menu_item', '', 0),
(56, 1, '2023-05-22 09:18:59', '2023-05-22 09:18:59', '', '雑貨', '', 'publish', 'closed', 'closed', '', '%e9%9b%91%e8%b2%a8', '', '', '2023-05-22 09:18:59', '2023-05-22 09:18:59', '', 0, 'http://localhost:8080/scsoft/beauty/?p=56', 3, 'nav_menu_item', '', 0),
(57, 1, '2023-05-22 09:19:16', '2023-05-22 09:19:16', '', 'Sample Page - 日本語', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2023-05-22 09:19:16', '2023-05-22 09:19:16', '', 44, 'http://localhost:8080/scsoft/beauty/?p=57', 0, 'revision', '', 0),
(58, 1, '2023-05-22 09:20:39', '2023-05-22 09:20:39', '', 'TOP', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-05-22 09:20:39', '2023-05-22 09:20:39', '', 2, 'http://localhost:8080/scsoft/beauty/?p=58', 0, 'revision', '', 0),
(59, 1, '2023-05-22 09:21:42', '2023-05-22 09:21:42', '', 'TOP - 日本語', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2023-05-22 09:21:42', '2023-05-22 09:21:42', '', 44, 'http://localhost:8080/scsoft/beauty/?p=59', 0, 'revision', '', 0),
(60, 1, '2023-05-22 09:33:50', '2023-05-22 09:33:50', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"40\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'Button Ja', 'h_button_ja', 'publish', 'closed', 'closed', '', 'field_646b36e436399', '', '', '2023-05-22 09:33:50', '2023-05-22 09:33:50', '', 6, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&p=60', 7, 'acf-field', '', 0),
(61, 1, '2023-05-22 10:09:05', '2023-05-22 10:09:05', '', 'TRANG CHỦ', '', 'publish', 'closed', 'closed', '', 'trang-chu', '', '', '2023-05-22 10:09:05', '2023-05-22 10:09:05', '', 0, 'http://localhost:8080/scsoft/beauty/?p=61', 1, 'nav_menu_item', '', 0),
(62, 1, '2023-05-22 10:09:05', '2023-05-22 10:09:05', '', 'THÔNG TIN SẢN PHẨM', '', 'publish', 'closed', 'closed', '', 'thong-tin-san-pham', '', '', '2023-05-22 10:09:05', '2023-05-22 10:09:05', '', 0, 'http://localhost:8080/scsoft/beauty/?p=62', 2, 'nav_menu_item', '', 0),
(63, 1, '2023-05-22 10:09:05', '2023-05-22 10:09:05', '', 'CỬA HÀNG GIAO DỊCH', '', 'publish', 'closed', 'closed', '', 'cua-hang-giao-dich-2', '', '', '2023-05-22 10:09:05', '2023-05-22 10:09:05', '', 0, 'http://localhost:8080/scsoft/beauty/?p=63', 3, 'nav_menu_item', '', 0),
(64, 1, '2023-05-22 10:09:05', '2023-05-22 10:09:05', '', 'THÔNG TIN CÔNG TY', '', 'publish', 'closed', 'closed', '', 'thong-tin-cong-ty', '', '', '2023-05-22 10:09:05', '2023-05-22 10:09:05', '', 0, 'http://localhost:8080/scsoft/beauty/?p=64', 4, 'nav_menu_item', '', 0),
(65, 1, '2023-05-22 10:09:05', '2023-05-22 10:09:05', '', 'TUYỂN DỤNG NHÀ PHÂN PHỐI', '', 'publish', 'closed', 'closed', '', 'tuyen-dung-nha-phan-phoi', '', '', '2023-05-22 10:09:05', '2023-05-22 10:09:05', '', 0, 'http://localhost:8080/scsoft/beauty/?p=65', 5, 'nav_menu_item', '', 0),
(66, 1, '2023-05-22 10:09:05', '2023-05-22 10:09:05', '', 'CHÍNH SÁCH BẢO MẬT', '', 'publish', 'closed', 'closed', '', 'chinh-sach-bao-mat', '', '', '2023-05-22 10:09:05', '2023-05-22 10:09:05', '', 0, 'http://localhost:8080/scsoft/beauty/?p=66', 6, 'nav_menu_item', '', 0),
(68, 1, '2023-05-22 10:34:00', '2023-05-22 10:34:00', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"page.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Top Page', 'top-page', 'publish', 'closed', 'closed', '', 'group_646b4387d843a', '', '', '2023-05-24 18:44:17', '2023-05-24 18:44:17', '', 0, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field-group&#038;p=68', 0, 'acf-field-group', '', 0),
(69, 1, '2023-05-22 10:34:00', '2023-05-22 10:34:00', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Main Visual', 'top_main_visual', 'publish', 'closed', 'closed', '', 'field_646b4394f2625', '', '', '2023-05-22 10:34:00', '2023-05-22 10:34:00', '', 68, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&p=69', 0, 'acf-field', '', 0),
(70, 1, '2023-05-22 10:34:00', '2023-05-22 10:34:00', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Main Visual Slide', 'top_main_visual_slide', 'publish', 'closed', 'closed', '', 'field_646b43b0f2626', '', '', '2023-05-24 13:35:39', '2023-05-24 13:35:39', '', 68, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&#038;p=70', 1, 'acf-field', '', 0),
(71, 1, '2023-05-22 10:34:00', '2023-05-22 10:34:00', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Slide image', 'top_main_visual_slide_image', 'publish', 'closed', 'closed', '', 'field_646b43bff2627', '', '', '2023-05-22 10:58:54', '2023-05-22 10:58:54', '', 70, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&#038;p=71', 0, 'acf-field', '', 0),
(73, 1, '2023-05-22 10:51:06', '2023-05-22 10:51:06', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Main Visual Feature', 'top_main_visual_feature', 'publish', 'closed', 'closed', '', 'field_646b48f40c96b', '', '', '2023-05-24 13:35:39', '2023-05-24 13:35:39', '', 68, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&#038;p=73', 2, 'acf-field', '', 0),
(74, 1, '2023-05-22 10:52:04', '2023-05-22 10:52:04', '', 'img_mv', '', 'inherit', 'open', 'closed', '', 'img_mv', '', '', '2023-05-22 10:52:14', '2023-05-22 10:52:14', '', 2, 'http://localhost:8080/scsoft/beauty/wp-content/uploads/2023/05/img_mv.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2023-05-22 10:52:32', '2023-05-22 10:52:32', '', 'mv1', '', 'inherit', 'open', 'closed', '', 'mv1', '', '', '2023-05-22 10:52:50', '2023-05-22 10:52:50', '', 2, 'http://localhost:8080/scsoft/beauty/wp-content/uploads/2023/05/mv1.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2023-05-22 10:52:33', '2023-05-22 10:52:33', '', 'mv2', '', 'inherit', 'open', 'closed', '', 'mv2', '', '', '2023-05-22 10:52:56', '2023-05-22 10:52:56', '', 2, 'http://localhost:8080/scsoft/beauty/wp-content/uploads/2023/05/mv2.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2023-05-22 10:53:03', '2023-05-22 10:53:03', '', 'TOP', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-05-22 10:53:03', '2023-05-22 10:53:03', '', 2, 'http://localhost:8080/scsoft/beauty/?p=77', 0, 'revision', '', 0),
(78, 1, '2023-05-22 14:49:54', '2023-05-22 14:49:54', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Group Field Instagram', 'group-field-instagram', 'trash', 'closed', 'closed', '', 'group_646b4d3129ff3__trashed', '', '', '2023-05-24 13:35:14', '2023-05-24 13:35:14', '', 0, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field-group&#038;p=78', 0, 'acf-field-group', '', 0),
(79, 1, '2023-05-22 13:44:01', '2023-05-22 13:44:01', '', 'loading_background', '', 'inherit', 'open', 'closed', '', 'loading_background', '', '', '2023-05-22 13:44:01', '2023-05-22 13:44:01', '', 0, 'http://localhost:8080/scsoft/beauty/wp-content/uploads/2023/05/loading_background.png', 0, 'attachment', 'image/png', 0),
(80, 1, '2023-05-22 14:49:54', '2023-05-22 14:49:54', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Ins Link', 'ins_link', 'publish', 'closed', 'closed', '', 'field_646b4d67173f3', '', '', '2023-05-24 13:35:39', '2023-05-24 13:35:39', '', 68, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&#038;p=80', 4, 'acf-field', '', 0),
(81, 1, '2023-05-22 14:56:07', '2023-05-22 14:56:07', '', 's1_img1', '', 'inherit', 'open', 'closed', '', 's1_img1', '', '', '2023-05-22 14:56:07', '2023-05-22 14:56:07', '', 1, 'http://localhost:8080/scsoft/beauty/wp-content/uploads/2023/05/s1_img1.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2023-05-22 14:56:17', '2023-05-22 14:56:17', '<!-- wp:paragraph -->\r\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\r\n<!-- /wp:paragraph -->', 'Nhập tên sản phẩm.Nhập tên sản phẩm.Nhập tên sản phẩm.Nhập tên sản phẩm.', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2023-05-22 14:56:17', '2023-05-22 14:56:17', '', 1, 'http://localhost:8080/scsoft/beauty/?p=82', 0, 'revision', '', 0),
(83, 1, '2023-05-22 14:57:59', '2023-05-22 14:57:59', '<!-- wp:paragraph -->\r\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\r\n<!-- /wp:paragraph -->', 'Nhập tên sản phẩm.Nhập tên sản phẩm.Nhập tên sản phẩm.Nhập tên sản phẩm.', '', 'publish', 'open', 'open', '', 'nhap-ten-san-pham-nhap-ten-san-pham-nhap-ten-san-pham-nhap-ten-san-pham', '', '', '2023-05-22 14:58:11', '2023-05-22 14:58:11', '', 0, 'http://localhost:8080/scsoft/beauty/?p=83', 0, 'post', '', 0),
(84, 1, '2023-05-22 14:58:11', '2023-05-22 14:58:11', '<!-- wp:paragraph -->\r\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\r\n<!-- /wp:paragraph -->', 'Nhập tên sản phẩm.Nhập tên sản phẩm.Nhập tên sản phẩm.Nhập tên sản phẩm.', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2023-05-22 14:58:11', '2023-05-22 14:58:11', '', 83, 'http://localhost:8080/scsoft/beauty/?p=84', 0, 'revision', '', 0),
(85, 1, '2023-05-22 15:00:17', '2023-05-22 15:00:17', '<!-- wp:paragraph -->\r\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\r\n<!-- /wp:paragraph -->', 'Nhập tên sản phẩm.Nhập tên sản phẩm.Nhập tên sản phẩm.Nhập tên sản phẩm.', '', 'publish', 'open', 'open', '', 'nhap-ten-san-pham-nhap-ten-san-pham-nhap-ten-san-pham-nhap-ten-san-pham-4', '', '', '2023-05-22 15:00:17', '2023-05-22 15:00:17', '', 0, 'http://localhost:8080/scsoft/beauty/?p=85', 0, 'post', '', 0),
(86, 1, '2023-05-22 14:59:13', '2023-05-22 14:59:13', '<!-- wp:paragraph -->\r\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\r\n<!-- /wp:paragraph -->', 'Nhập tên sản phẩm.Nhập tên sản phẩm.Nhập tên sản phẩm.Nhập tên sản phẩm.', '', 'publish', 'open', 'open', '', 'nhap-ten-san-pham-nhap-ten-san-pham-nhap-ten-san-pham-nhap-ten-san-pham-3', '', '', '2023-05-22 14:59:13', '2023-05-22 14:59:13', '', 0, 'http://localhost:8080/scsoft/beauty/?p=86', 0, 'post', '', 0),
(87, 1, '2023-05-22 14:58:30', '2023-05-22 14:58:30', '<!-- wp:paragraph -->\r\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\r\n<!-- /wp:paragraph -->', 'Nhập tên sản phẩm.Nhập tên sản phẩm.Nhập tên sản phẩm.Nhập tên sản phẩm.', '', 'publish', 'open', 'open', '', 'nhap-ten-san-pham-nhap-ten-san-pham-nhap-ten-san-pham-nhap-ten-san-pham-2', '', '', '2023-05-22 14:58:41', '2023-05-22 14:58:41', '', 0, 'http://localhost:8080/scsoft/beauty/?p=87', 0, 'post', '', 0),
(88, 1, '2023-05-22 14:58:41', '2023-05-22 14:58:41', '<!-- wp:paragraph -->\r\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\r\n<!-- /wp:paragraph -->', 'Nhập tên sản phẩm.Nhập tên sản phẩm.Nhập tên sản phẩm.Nhập tên sản phẩm.', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2023-05-22 14:58:41', '2023-05-22 14:58:41', '', 87, 'http://localhost:8080/scsoft/beauty/?p=88', 0, 'revision', '', 0),
(89, 1, '2023-05-22 14:59:09', '2023-05-22 14:59:09', '', 's2_img_04', '', 'inherit', 'open', 'closed', '', 's2_img_04', '', '', '2023-05-22 14:59:09', '2023-05-22 14:59:09', '', 86, 'http://localhost:8080/scsoft/beauty/wp-content/uploads/2023/05/s2_img_04.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2023-05-22 14:59:13', '2023-05-22 14:59:13', '<!-- wp:paragraph -->\r\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\r\n<!-- /wp:paragraph -->', 'Nhập tên sản phẩm.Nhập tên sản phẩm.Nhập tên sản phẩm.Nhập tên sản phẩm.', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2023-05-22 14:59:13', '2023-05-22 14:59:13', '', 86, 'http://localhost:8080/scsoft/beauty/?p=90', 0, 'revision', '', 0),
(91, 1, '2023-05-22 15:00:14', '2023-05-22 15:00:14', '', 'img4', '', 'inherit', 'open', 'closed', '', 'img4', '', '', '2023-05-22 15:00:14', '2023-05-22 15:00:14', '', 85, 'http://localhost:8080/scsoft/beauty/wp-content/uploads/2023/05/img4.jpg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2023-05-22 15:00:17', '2023-05-22 15:00:17', '<!-- wp:paragraph -->\r\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\r\n<!-- /wp:paragraph -->', 'Nhập tên sản phẩm.Nhập tên sản phẩm.Nhập tên sản phẩm.Nhập tên sản phẩm.', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2023-05-22 15:00:17', '2023-05-22 15:00:17', '', 85, 'http://localhost:8080/scsoft/beauty/?p=92', 0, 'revision', '', 0),
(93, 1, '2023-05-24 09:12:26', '2023-05-24 09:12:26', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Pick Up Item', 'pick_up_item', 'publish', 'closed', 'closed', '', 'field_646dd4b0153fa', '', '', '2023-05-24 13:35:39', '2023-05-24 13:35:39', '', 68, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&#038;p=93', 5, 'acf-field', '', 0),
(94, 1, '2023-05-24 09:12:26', '2023-05-24 09:12:26', 'a:12:{s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:4:\"post\";}s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:3:{i:0;s:6:\"search\";i:1;s:9:\"post_type\";i:2;s:8:\"taxonomy\";}s:8:\"elements\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";}', 'Choose Item', 'top_pick_up_choose_item', 'publish', 'closed', 'closed', '', 'field_646dd4c4153fb', '', '', '2023-05-24 13:35:39', '2023-05-24 13:35:39', '', 68, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&#038;p=94', 6, 'acf-field', '', 0),
(95, 1, '2023-05-24 09:12:50', '2023-05-24 09:12:50', '', 'TOP', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-05-24 09:12:50', '2023-05-24 09:12:50', '', 2, 'http://localhost:8080/scsoft/beauty/?p=95', 0, 'revision', '', 0),
(96, 1, '2023-05-24 09:31:38', '2023-05-24 09:31:38', '', 'TOP', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-05-24 09:31:38', '2023-05-24 09:31:38', '', 2, 'http://localhost:8080/scsoft/beauty/?p=96', 0, 'revision', '', 0),
(97, 1, '2023-05-24 09:55:49', '2023-05-24 09:55:49', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Search', 'search', 'publish', 'closed', 'closed', '', 'field_646ddef6fc000', '', '', '2023-05-24 13:35:39', '2023-05-24 13:35:39', '', 68, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&#038;p=97', 7, 'acf-field', '', 0),
(98, 1, '2023-05-24 09:55:49', '2023-05-24 09:55:49', 'a:13:{s:4:\"type\";s:8:\"taxonomy\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:8:\"taxonomy\";s:8:\"category\";s:10:\"field_type\";s:12:\"multi_select\";s:10:\"allow_null\";i:0;s:8:\"add_term\";i:1;s:10:\"save_terms\";i:0;s:10:\"load_terms\";i:0;s:13:\"return_format\";s:6:\"object\";s:8:\"multiple\";i:0;}', 'Search Category', 'top_search_category', 'publish', 'closed', 'closed', '', 'field_646ddf00fc001', '', '', '2023-05-24 13:35:39', '2023-05-24 13:35:39', '', 68, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&#038;p=98', 8, 'acf-field', '', 0),
(99, 1, '2023-05-24 09:57:23', '2023-05-24 09:57:23', '', 'TOP', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-05-24 09:57:23', '2023-05-24 09:57:23', '', 2, 'http://localhost:8080/scsoft/beauty/?p=99', 0, 'revision', '', 0),
(100, 1, '2023-05-24 10:05:46', '2023-05-24 10:05:46', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:8:\"taxonomy\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"category\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Field Category Post', 'field-category-post', 'publish', 'closed', 'closed', '', 'group_646de143dfc5c', '', '', '2023-05-24 10:21:01', '2023-05-24 10:21:01', '', 0, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field-group&#038;p=100', 0, 'acf-field-group', '', 0),
(101, 1, '2023-05-24 10:05:46', '2023-05-24 10:05:46', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Feature', 'feature', 'publish', 'closed', 'closed', '', 'field_646de168bd5ea', '', '', '2023-05-24 10:09:39', '2023-05-24 10:09:39', '', 100, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&#038;p=101', 0, 'acf-field', '', 0),
(102, 1, '2023-05-24 10:10:36', '2023-05-24 10:10:36', '', 's3_img3', '', 'inherit', 'open', 'closed', '', 's3_img3', '', '', '2023-05-24 10:10:36', '2023-05-24 10:10:36', '', 0, 'http://localhost:8080/scsoft/beauty/wp-content/uploads/2023/05/s3_img3.jpg', 0, 'attachment', 'image/jpeg', 0),
(103, 1, '2023-05-24 10:52:58', '2023-05-24 10:52:58', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Topic', 'topic', 'publish', 'closed', 'closed', '', 'field_646deb4f8da56', '', '', '2023-05-24 13:35:39', '2023-05-24 13:35:39', '', 68, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&#038;p=103', 9, 'acf-field', '', 0),
(104, 1, '2023-05-24 10:52:58', '2023-05-24 10:52:58', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'top_topic_title', 'publish', 'closed', 'closed', '', 'field_646dec2f8da57', '', '', '2023-05-24 13:35:39', '2023-05-24 13:35:39', '', 68, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&#038;p=104', 10, 'acf-field', '', 0),
(105, 1, '2023-05-24 10:52:58', '2023-05-24 10:52:58', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:3;s:9:\"new_lines\";s:0:\"\";}', 'Desc', 'top_topic_desc', 'publish', 'closed', 'closed', '', 'field_646dec3d8da58', '', '', '2023-05-24 13:35:39', '2023-05-24 13:35:39', '', 68, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&#038;p=105', 11, 'acf-field', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(106, 1, '2023-05-24 10:52:58', '2023-05-24 10:52:58', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Feature PC', 'top_topic_feature_pc', 'publish', 'closed', 'closed', '', 'field_646dec508da59', '', '', '2023-05-24 13:35:39', '2023-05-24 13:35:39', '', 68, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&#038;p=106', 12, 'acf-field', '', 0),
(107, 1, '2023-05-24 10:52:58', '2023-05-24 10:52:58', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Feature SP', 'top_topic_feature_sp', 'publish', 'closed', 'closed', '', 'field_646dec7e8da5a', '', '', '2023-05-24 13:35:39', '2023-05-24 13:35:39', '', 68, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&#038;p=107', 13, 'acf-field', '', 0),
(108, 1, '2023-05-24 10:53:47', '2023-05-24 10:53:47', '', 's6_img', '', 'inherit', 'open', 'closed', '', 's6_img', '', '', '2023-05-24 10:53:47', '2023-05-24 10:53:47', '', 2, 'http://localhost:8080/scsoft/beauty/wp-content/uploads/2023/05/s6_img.png', 0, 'attachment', 'image/png', 0),
(109, 1, '2023-05-24 10:53:54', '2023-05-24 10:53:54', '', 's6_img_sp', '', 'inherit', 'open', 'closed', '', 's6_img_sp', '', '', '2023-05-24 10:53:54', '2023-05-24 10:53:54', '', 2, 'http://localhost:8080/scsoft/beauty/wp-content/uploads/2023/05/s6_img_sp.png', 0, 'attachment', 'image/png', 0),
(110, 1, '2023-05-24 10:54:04', '2023-05-24 10:54:04', '', 'TOP', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-05-24 10:54:04', '2023-05-24 10:54:04', '', 2, 'http://localhost:8080/scsoft/beauty/?p=110', 0, 'revision', '', 0),
(111, 1, '2023-05-24 11:03:55', '2023-05-24 11:03:55', '', 'Cửa hàng giao dịch', '', 'publish', 'closed', 'closed', '', 'cua-hang-giao-dich', '', '', '2023-05-24 12:38:08', '2023-05-24 12:38:08', '', 0, 'http://localhost:8080/scsoft/beauty/?page_id=111', 0, 'page', '', 0),
(112, 1, '2023-05-24 11:03:55', '2023-05-24 11:03:55', '', 'CỬA HÀNG GIAO DỊCH', '', 'inherit', 'closed', 'closed', '', '111-revision-v1', '', '', '2023-05-24 11:03:55', '2023-05-24 11:03:55', '', 111, 'http://localhost:8080/scsoft/beauty/?p=112', 0, 'revision', '', 0),
(114, 1, '2023-05-24 11:16:04', '2023-05-24 11:16:04', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:8:\"page.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Global Page', 'global-page', 'publish', 'closed', 'closed', '', 'group_646df1e8abdd1', '', '', '2023-05-24 11:16:36', '2023-05-24 11:16:36', '', 0, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field-group&#038;p=114', 0, 'acf-field-group', '', 0),
(115, 1, '2023-05-24 11:16:36', '2023-05-24 11:16:36', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Heading', 'heading', 'publish', 'closed', 'closed', '', 'field_646df20bed6ab', '', '', '2023-05-24 11:16:36', '2023-05-24 11:16:36', '', 114, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&p=115', 0, 'acf-field', '', 0),
(116, 1, '2023-05-24 11:16:49', '2023-05-24 11:16:49', '', 'Mỹ phẩm', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2023-05-24 11:16:49', '2023-05-24 11:16:49', '', 46, 'http://localhost:8080/scsoft/beauty/?p=116', 0, 'revision', '', 0),
(117, 1, '2023-05-24 11:17:19', '2023-05-24 11:17:19', '', 'CỬA HÀNG GIAO DỊCH', '', 'inherit', 'closed', 'closed', '', '111-revision-v1', '', '', '2023-05-24 11:17:19', '2023-05-24 11:17:19', '', 111, 'http://localhost:8080/scsoft/beauty/?p=117', 0, 'revision', '', 0),
(120, 1, '2023-05-24 12:05:45', '2023-05-24 12:05:45', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"page-stores-vn.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Store VN Page', 'store-vn-page', 'publish', 'closed', 'closed', '', 'group_646dfc1d0f3bb', '', '', '2023-05-24 12:07:19', '2023-05-24 12:07:19', '', 0, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field-group&#038;p=120', 0, 'acf-field-group', '', 0),
(121, 1, '2023-05-24 12:05:45', '2023-05-24 12:05:45', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Store', 'store', 'publish', 'closed', 'closed', '', 'field_646dfc2e9b206', '', '', '2023-05-24 12:05:45', '2023-05-24 12:05:45', '', 120, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&p=121', 0, 'acf-field', '', 0),
(122, 1, '2023-05-24 12:05:45', '2023-05-24 12:05:45', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'City', 'store_city', 'publish', 'closed', 'closed', '', 'field_646dfc389b207', '', '', '2023-05-24 12:05:45', '2023-05-24 12:05:45', '', 120, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&p=122', 1, 'acf-field', '', 0),
(123, 1, '2023-05-24 12:05:45', '2023-05-24 12:05:45', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"10\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'City Name', 'store_city_name', 'publish', 'closed', 'closed', '', 'field_646dfc829b209', '', '', '2023-05-24 12:07:19', '2023-05-24 12:07:19', '', 122, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&#038;p=123', 0, 'acf-field', '', 0),
(124, 1, '2023-05-24 12:05:45', '2023-05-24 12:05:45', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'District', 'store_district', 'publish', 'closed', 'closed', '', 'field_646dfc589b208', '', '', '2023-05-24 12:05:45', '2023-05-24 12:05:45', '', 122, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&p=124', 1, 'acf-field', '', 0),
(125, 1, '2023-05-24 12:05:45', '2023-05-24 12:05:45', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"15\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'District name', 'store_district_name', 'publish', 'closed', 'closed', '', 'field_646dfc9b9b20a', '', '', '2023-05-24 12:05:45', '2023-05-24 12:05:45', '', 124, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&p=125', 0, 'acf-field', '', 0),
(126, 1, '2023-05-24 12:05:45', '2023-05-24 12:05:45', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Agent', 'store_agent', 'publish', 'closed', 'closed', '', 'field_646dfcf59b20b', '', '', '2023-05-24 12:05:45', '2023-05-24 12:05:45', '', 124, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&p=126', 1, 'acf-field', '', 0),
(127, 1, '2023-05-24 12:05:45', '2023-05-24 12:05:45', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Agent Name', 'store_agent_name', 'publish', 'closed', 'closed', '', 'field_646dfd4b9b20c', '', '', '2023-05-24 12:07:19', '2023-05-24 12:07:19', '', 126, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&#038;p=127', 0, 'acf-field', '', 0),
(128, 1, '2023-05-24 12:05:45', '2023-05-24 12:05:45', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Agent Address', 'store_agent_address', 'publish', 'closed', 'closed', '', 'field_646dfd5d9b20d', '', '', '2023-05-24 12:05:45', '2023-05-24 12:05:45', '', 126, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&p=128', 1, 'acf-field', '', 0),
(129, 1, '2023-05-24 12:05:45', '2023-05-24 12:05:45', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Agent Maps', 'store_agent_maps', 'publish', 'closed', 'closed', '', 'field_646dfd739b20e', '', '', '2023-05-24 12:05:45', '2023-05-24 12:05:45', '', 126, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&p=129', 2, 'acf-field', '', 0),
(130, 1, '2023-05-24 12:09:08', '2023-05-24 12:09:08', '', 'CỬA HÀNG GIAO DỊCH', '', 'inherit', 'closed', 'closed', '', '111-revision-v1', '', '', '2023-05-24 12:09:08', '2023-05-24 12:09:08', '', 111, 'http://localhost:8080/scsoft/beauty/?p=130', 0, 'revision', '', 0),
(131, 1, '2023-05-24 12:36:56', '2023-05-24 12:36:56', '', 'THÔNG TIN CÔNG TY', '', 'publish', 'closed', 'closed', '', 'thong-tin-cong-ty', '', '', '2023-05-24 12:52:56', '2023-05-24 12:52:56', '', 0, 'http://localhost:8080/scsoft/beauty/?page_id=131', 0, 'page', '', 0),
(132, 1, '2023-05-24 12:36:56', '2023-05-24 12:36:56', '', 'THÔNG TIN CÔNG TY', '', 'inherit', 'closed', 'closed', '', '131-revision-v1', '', '', '2023-05-24 12:36:56', '2023-05-24 12:36:56', '', 131, 'http://localhost:8080/scsoft/beauty/?p=132', 0, 'revision', '', 0),
(133, 1, '2023-05-24 13:44:13', '2023-05-24 12:37:42', ' ', '', '', 'publish', 'closed', 'closed', '', '133', '', '', '2023-05-24 13:44:13', '2023-05-24 13:44:13', '', 0, 'http://localhost:8080/scsoft/beauty/?p=133', 1, 'nav_menu_item', '', 0),
(134, 1, '2023-05-24 13:44:13', '2023-05-24 12:37:42', ' ', '', '', 'publish', 'closed', 'closed', '', '134', '', '', '2023-05-24 13:44:13', '2023-05-24 13:44:13', '', 0, 'http://localhost:8080/scsoft/beauty/?p=134', 4, 'nav_menu_item', '', 0),
(135, 1, '2023-05-24 12:38:08', '2023-05-24 12:38:08', '', 'Cửa hàng giao dịch', '', 'inherit', 'closed', 'closed', '', '111-revision-v1', '', '', '2023-05-24 12:38:08', '2023-05-24 12:38:08', '', 111, 'http://localhost:8080/scsoft/beauty/?p=135', 0, 'revision', '', 0),
(137, 1, '2023-05-24 12:47:46', '2023-05-24 12:47:46', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:16:\"page-company.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Company page', 'company-page', 'publish', 'closed', 'closed', '', 'group_646e05bd31a76', '', '', '2023-05-24 13:21:02', '2023-05-24 13:21:02', '', 0, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field-group&#038;p=137', 0, 'acf-field-group', '', 0),
(138, 1, '2023-05-24 12:47:46', '2023-05-24 12:47:46', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Country', 'contry', 'publish', 'closed', 'closed', '', 'field_646e05c747a34', '', '', '2023-05-24 12:47:46', '2023-05-24 12:47:46', '', 137, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&p=138', 0, 'acf-field', '', 0),
(139, 1, '2023-05-24 12:47:46', '2023-05-24 12:47:46', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Country', 'country', 'publish', 'closed', 'closed', '', 'field_646e05e747a35', '', '', '2023-05-24 12:47:46', '2023-05-24 12:47:46', '', 137, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&p=139', 1, 'acf-field', '', 0),
(140, 1, '2023-05-24 12:47:46', '2023-05-24 12:47:46', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"10\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Country name', 'country_name', 'publish', 'closed', 'closed', '', 'field_646e064047a36', '', '', '2023-05-24 12:47:46', '2023-05-24 12:47:46', '', 139, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&p=140', 0, 'acf-field', '', 0),
(141, 1, '2023-05-24 12:47:46', '2023-05-24 12:47:46', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Country Information', 'country_information', 'publish', 'closed', 'closed', '', 'field_646e065247a37', '', '', '2023-05-24 12:47:46', '2023-05-24 12:47:46', '', 139, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&p=141', 1, 'acf-field', '', 0),
(142, 1, '2023-05-24 12:47:46', '2023-05-24 12:47:46', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Company', 'country_company', 'publish', 'closed', 'closed', '', 'field_646e066f47a38', '', '', '2023-05-24 12:47:46', '2023-05-24 12:47:46', '', 141, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&p=142', 0, 'acf-field', '', 0),
(143, 1, '2023-05-24 12:47:46', '2023-05-24 12:47:46', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Name', 'name', 'publish', 'closed', 'closed', '', 'field_646e06e447a39', '', '', '2023-05-24 12:47:46', '2023-05-24 12:47:46', '', 142, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&p=143', 0, 'acf-field', '', 0),
(144, 1, '2023-05-24 12:47:46', '2023-05-24 12:47:46', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Content', 'content', 'publish', 'closed', 'closed', '', 'field_646e06f147a3a', '', '', '2023-05-24 12:47:46', '2023-05-24 12:47:46', '', 142, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&p=144', 1, 'acf-field', '', 0),
(145, 1, '2023-05-24 12:47:46', '2023-05-24 12:47:46', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Office', 'country_office', 'publish', 'closed', 'closed', '', 'field_646e070347a3b', '', '', '2023-05-24 12:47:46', '2023-05-24 12:47:46', '', 141, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&p=145', 1, 'acf-field', '', 0),
(146, 1, '2023-05-24 12:47:46', '2023-05-24 12:47:46', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Name', 'name', 'publish', 'closed', 'closed', '', 'field_646e070347a3c', '', '', '2023-05-24 12:47:46', '2023-05-24 12:47:46', '', 145, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&p=146', 0, 'acf-field', '', 0),
(147, 1, '2023-05-24 12:47:46', '2023-05-24 12:47:46', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Content', 'content', 'publish', 'closed', 'closed', '', 'field_646e070347a3d', '', '', '2023-05-24 12:47:46', '2023-05-24 12:47:46', '', 145, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&p=147', 1, 'acf-field', '', 0),
(148, 1, '2023-05-24 12:47:46', '2023-05-24 12:47:46', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Maps', 'maps', 'publish', 'closed', 'closed', '', 'field_646e074347a42', '', '', '2023-05-24 12:47:46', '2023-05-24 12:47:46', '', 145, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&p=148', 2, 'acf-field', '', 0),
(149, 1, '2023-05-24 12:47:47', '2023-05-24 12:47:47', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Tel', 'country_tel', 'publish', 'closed', 'closed', '', 'field_646e072e47a3f', '', '', '2023-05-24 12:47:47', '2023-05-24 12:47:47', '', 141, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&p=149', 2, 'acf-field', '', 0),
(150, 1, '2023-05-24 12:47:47', '2023-05-24 12:47:47', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Name', 'name', 'publish', 'closed', 'closed', '', 'field_646e072e47a40', '', '', '2023-05-24 12:47:47', '2023-05-24 12:47:47', '', 149, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&p=150', 0, 'acf-field', '', 0),
(151, 1, '2023-05-24 12:47:47', '2023-05-24 12:47:47', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Content', 'content', 'publish', 'closed', 'closed', '', 'field_646e072e47a41', '', '', '2023-05-24 12:47:47', '2023-05-24 12:47:47', '', 149, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&p=151', 1, 'acf-field', '', 0),
(152, 1, '2023-05-24 12:47:47', '2023-05-24 12:47:47', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Representative', 'country_representative', 'publish', 'closed', 'closed', '', 'field_646e075447a43', '', '', '2023-05-24 12:47:47', '2023-05-24 12:47:47', '', 141, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&p=152', 3, 'acf-field', '', 0),
(153, 1, '2023-05-24 12:47:47', '2023-05-24 12:47:47', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Name', 'name', 'publish', 'closed', 'closed', '', 'field_646e075447a44', '', '', '2023-05-24 12:47:47', '2023-05-24 12:47:47', '', 152, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&p=153', 0, 'acf-field', '', 0),
(154, 1, '2023-05-24 12:47:47', '2023-05-24 12:47:47', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Content', 'content', 'publish', 'closed', 'closed', '', 'field_646e075447a45', '', '', '2023-05-24 12:47:47', '2023-05-24 12:47:47', '', 152, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&p=154', 1, 'acf-field', '', 0),
(155, 1, '2023-05-24 12:52:56', '2023-05-24 12:52:56', '', 'THÔNG TIN CÔNG TY', '', 'inherit', 'closed', 'closed', '', '131-revision-v1', '', '', '2023-05-24 12:52:56', '2023-05-24 12:52:56', '', 131, 'http://localhost:8080/scsoft/beauty/?p=155', 0, 'revision', '', 0),
(156, 1, '2023-05-24 13:11:00', '2023-05-24 13:11:00', '', '会社概要', '', 'publish', 'closed', 'closed', '', '%e4%bc%9a%e7%a4%be%e6%a6%82%e8%a6%81', '', '', '2023-05-24 13:21:40', '2023-05-24 13:21:40', '', 0, 'http://localhost:8080/scsoft/beauty/?page_id=156', 0, 'page', '', 0),
(157, 1, '2023-05-24 13:11:00', '2023-05-24 13:11:00', '', '会社概要', '', 'inherit', 'closed', 'closed', '', '156-revision-v1', '', '', '2023-05-24 13:11:00', '2023-05-24 13:11:00', '', 156, 'http://localhost:8080/scsoft/beauty/?p=157', 0, 'revision', '', 0),
(158, 1, '2023-05-24 13:21:02', '2023-05-24 13:21:02', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'About Asia Japan', 'about_asia_japan', 'publish', 'closed', 'closed', '', 'field_646e0e0a8cb97', '', '', '2023-05-24 13:21:02', '2023-05-24 13:21:02', '', 137, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&p=158', 2, 'acf-field', '', 0),
(159, 1, '2023-05-24 13:21:02', '2023-05-24 13:21:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'about_ja_title', 'publish', 'closed', 'closed', '', 'field_646e0f1f8cb98', '', '', '2023-05-24 13:21:02', '2023-05-24 13:21:02', '', 137, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&p=159', 3, 'acf-field', '', 0),
(160, 1, '2023-05-24 13:21:02', '2023-05-24 13:21:02', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:3;s:9:\"new_lines\";s:0:\"\";}', 'Desc', 'about_ja_desc', 'publish', 'closed', 'closed', '', 'field_646e0f2e8cb99', '', '', '2023-05-24 13:21:02', '2023-05-24 13:21:02', '', 137, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&p=160', 4, 'acf-field', '', 0),
(161, 1, '2023-05-24 13:21:40', '2023-05-24 13:21:40', '', '会社概要', '', 'inherit', 'closed', 'closed', '', '156-revision-v1', '', '', '2023-05-24 13:21:40', '2023-05-24 13:21:40', '', 156, 'http://localhost:8080/scsoft/beauty/?p=161', 0, 'revision', '', 0),
(162, 1, '2023-05-24 13:30:27', '2023-05-24 13:30:27', '', 'TOP', '', 'trash', 'closed', 'open', '', 'top__trashed', '', '', '2023-05-24 13:43:08', '2023-05-24 13:43:08', '', 0, 'http://localhost:8080/scsoft/beauty/?page_id=162', 0, 'page', '', 0),
(163, 1, '2023-05-24 13:30:27', '2023-05-24 13:30:27', '', 'TOP', '', 'inherit', 'closed', 'closed', '', '162-revision-v1', '', '', '2023-05-24 13:30:27', '2023-05-24 13:30:27', '', 162, 'http://localhost:8080/scsoft/beauty/?p=163', 0, 'revision', '', 0),
(164, 1, '2023-05-24 13:32:15', '2023-05-24 13:32:15', '', 'Top ja', '', 'publish', 'closed', 'open', '', 'top-ja', '', '', '2023-05-24 13:37:31', '2023-05-24 13:37:31', '', 0, 'http://localhost:8080/scsoft/beauty/?page_id=164', 0, 'page', '', 0),
(165, 1, '2023-05-24 13:32:15', '2023-05-24 13:32:15', '', 'Top ja', '', 'inherit', 'closed', 'closed', '', '164-revision-v1', '', '', '2023-05-24 13:32:15', '2023-05-24 13:32:15', '', 164, 'http://localhost:8080/scsoft/beauty/?p=165', 0, 'revision', '', 0),
(166, 1, '2023-05-24 13:36:00', '2023-05-24 13:36:00', '', 'fdsfsdfdsf', '', 'publish', 'open', 'open', '', 'fdsfsdfdsf', '', '', '2023-05-24 13:36:00', '2023-05-24 13:36:00', '', 0, 'http://localhost:8080/scsoft/beauty/?p=166', 0, 'post', '', 0),
(167, 1, '2023-05-24 13:32:48', '2023-05-24 13:32:48', '', 'post ja', '', 'publish', 'open', 'open', '', 'post-ja', '', '', '2023-05-24 13:32:48', '2023-05-24 13:32:48', '', 0, 'http://localhost:8080/scsoft/beauty/?p=167', 0, 'post', '', 0),
(168, 1, '2023-05-24 13:32:48', '2023-05-24 13:32:48', '', 'post ja', '', 'inherit', 'closed', 'closed', '', '167-revision-v1', '', '', '2023-05-24 13:32:48', '2023-05-24 13:32:48', '', 167, 'http://localhost:8080/scsoft/beauty/?p=168', 0, 'revision', '', 0),
(169, 1, '2023-05-24 13:35:39', '2023-05-24 13:35:39', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Instagram', '_copy', 'publish', 'closed', 'closed', '', 'field_646e129f2f2ff', '', '', '2023-05-24 13:35:39', '2023-05-24 13:35:39', '', 68, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&p=169', 3, 'acf-field', '', 0),
(170, 1, '2023-05-24 13:36:00', '2023-05-24 13:36:00', '', 'fdsfsdfdsf', '', 'inherit', 'closed', 'closed', '', '166-revision-v1', '', '', '2023-05-24 13:36:00', '2023-05-24 13:36:00', '', 166, 'http://localhost:8080/scsoft/beauty/?p=170', 0, 'revision', '', 0),
(171, 1, '2023-05-24 13:36:26', '2023-05-24 13:36:26', '', 'fdsf sdf sf256f5+sdf', '', 'publish', 'open', 'open', '', 'fdsf-sdf-sf256f5sdf', '', '', '2023-05-24 13:36:26', '2023-05-24 13:36:26', '', 0, 'http://localhost:8080/scsoft/beauty/?p=171', 0, 'post', '', 0),
(172, 1, '2023-05-24 13:36:26', '2023-05-24 13:36:26', '', 'fdsf sdf sf256f5+sdf', '', 'inherit', 'closed', 'closed', '', '171-revision-v1', '', '', '2023-05-24 13:36:26', '2023-05-24 13:36:26', '', 171, 'http://localhost:8080/scsoft/beauty/?p=172', 0, 'revision', '', 0),
(173, 1, '2023-05-24 13:37:31', '2023-05-24 13:37:31', '', 'Top ja', '', 'inherit', 'closed', 'closed', '', '164-revision-v1', '', '', '2023-05-24 13:37:31', '2023-05-24 13:37:31', '', 164, 'http://localhost:8080/scsoft/beauty/?p=173', 0, 'revision', '', 0),
(175, 1, '2023-05-24 13:53:25', '2023-05-24 13:53:25', '', '会社概要', '', 'inherit', 'closed', 'closed', '', '156-autosave-v1', '', '', '2023-05-24 13:53:25', '2023-05-24 13:53:25', '', 156, 'http://localhost:8080/scsoft/beauty/?p=175', 0, 'revision', '', 0),
(176, 1, '2023-05-24 14:11:16', '2023-05-24 14:11:16', '', 'TUYỂN DỤNG NHÀ PHÂN PHỐI', '', 'publish', 'closed', 'closed', '', 'tuyen-dung-nha-phan-phoi', '', '', '2023-05-24 14:11:42', '2023-05-24 14:11:42', '', 0, 'http://localhost:8080/scsoft/beauty/?page_id=176', 0, 'page', '', 0),
(177, 1, '2023-05-24 14:11:16', '2023-05-24 14:11:16', '', 'TUYỂN DỤNG NHÀ PHÂN PHỐI', '', 'inherit', 'closed', 'closed', '', '176-revision-v1', '', '', '2023-05-24 14:11:16', '2023-05-24 14:11:16', '', 176, 'http://localhost:8080/scsoft/beauty/?p=177', 0, 'revision', '', 0),
(178, 1, '2023-05-24 14:11:20', '2023-05-24 14:11:20', '', 'TUYỂN DỤNG NHÀ PHÂN PHỐI', '', 'inherit', 'closed', 'closed', '', '176-autosave-v1', '', '', '2023-05-24 14:11:20', '2023-05-24 14:11:20', '', 176, 'http://localhost:8080/scsoft/beauty/?p=178', 0, 'revision', '', 0),
(179, 1, '2023-05-24 18:44:17', '2023-05-24 18:44:17', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Banner Sidebar', 'banner_sidebar', 'publish', 'closed', 'closed', '', 'field_646e5aaf5f17f', '', '', '2023-05-24 18:44:17', '2023-05-24 18:44:17', '', 68, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&p=179', 14, 'acf-field', '', 0),
(180, 1, '2023-05-24 18:44:17', '2023-05-24 18:44:17', 'a:18:{s:4:\"type\";s:7:\"gallery\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:6:\"insert\";s:6:\"append\";s:7:\"library\";s:3:\"all\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image Galley', 'top_image_galley', 'publish', 'closed', 'closed', '', 'field_646e5abf5f180', '', '', '2023-05-24 18:44:17', '2023-05-24 18:44:17', '', 68, 'http://localhost:8080/scsoft/beauty/?post_type=acf-field&p=180', 15, 'acf-field', '', 0),
(181, 1, '2023-05-24 18:44:41', '2023-05-24 18:44:41', '', 'banner1', '', 'inherit', 'open', 'closed', '', 'banner1', '', '', '2023-05-24 18:44:41', '2023-05-24 18:44:41', '', 2, 'http://localhost:8080/scsoft/beauty/wp-content/uploads/2023/05/banner1.jpg', 0, 'attachment', 'image/jpeg', 0),
(182, 1, '2023-05-24 18:44:42', '2023-05-24 18:44:42', '', 'banner2', '', 'inherit', 'open', 'closed', '', 'banner2', '', '', '2023-05-24 18:44:42', '2023-05-24 18:44:42', '', 2, 'http://localhost:8080/scsoft/beauty/wp-content/uploads/2023/05/banner2.jpg', 0, 'attachment', 'image/jpeg', 0),
(183, 1, '2023-05-24 18:44:46', '2023-05-24 18:44:46', '', 'TOP', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-05-24 18:44:46', '2023-05-24 18:44:46', '', 2, 'http://localhost:8080/scsoft/beauty/?p=183', 0, 'revision', '', 0),
(184, 1, '2023-05-24 20:16:28', '2023-05-24 20:16:28', '', 'Item', '', 'publish', 'closed', 'closed', '', 'item', '', '', '2023-05-24 20:16:41', '2023-05-24 20:16:41', '', 0, 'http://localhost:8080/scsoft/beauty/?page_id=184', 0, 'page', '', 0),
(185, 1, '2023-05-24 20:16:28', '2023-05-24 20:16:28', '', 'Item', '', 'inherit', 'closed', 'closed', '', '184-revision-v1', '', '', '2023-05-24 20:16:28', '2023-05-24 20:16:28', '', 184, 'http://localhost:8080/scsoft/beauty/?p=185', 0, 'revision', '', 0),
(186, 1, '2023-05-24 20:16:41', '2023-05-24 20:16:41', '', 'Item', '', 'inherit', 'closed', 'closed', '', '184-revision-v1', '', '', '2023-05-24 20:16:41', '2023-05-24 20:16:41', '', 184, 'http://localhost:8080/scsoft/beauty/?p=186', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_sbi_feeds`
--

CREATE TABLE `wp_sbi_feeds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `feed_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `feed_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `settings` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `author` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `status` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `last_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_sbi_feeds`
--

INSERT INTO `wp_sbi_feeds` (`id`, `feed_name`, `feed_title`, `settings`, `author`, `status`, `last_modified`) VALUES
(1, '_saauluoi', '', '{\"customizer\":false,\"type\":\"mixed\",\"order\":\"recent\",\"id\":\"17841402149518631\",\"tagged\":\"\",\"width\":\"\",\"widthunit\":\"\",\"widthresp\":true,\"height\":\"\",\"heightunit\":\"\",\"sortby\":\"none\",\"captionlinks\":false,\"offset\":\"0\",\"num\":\"20\",\"apinum\":\"\",\"nummobile\":\"20\",\"cols\":\"4\",\"colstablet\":\"2\",\"colsmobile\":\"1\",\"disablemobile\":false,\"imagepadding\":\"\",\"imagepaddingunit\":\"px\",\"layout\":\"grid\",\"hovereffect\":\"\",\"hovercolor\":\"\",\"hovertextcolor\":\"\",\"background\":\"\",\"imageres\":\"auto\",\"media\":\"all\",\"showcaption\":true,\"captionlength\":\"\",\"captioncolor\":\"\",\"captionsize\":\"\",\"showlikes\":true,\"likescolor\":\"\",\"likessize\":\"13\",\"hidephotos\":\"\",\"showbutton\":false,\"buttoncolor\":\"\",\"buttonhovercolor\":\"\",\"buttontextcolor\":\"\",\"buttontext\":\"Load More\",\"showfollow\":false,\"followcolor\":\"#408bd1\",\"followhovercolor\":\"#359dff\",\"followtextcolor\":\"\",\"followtext\":\"Follow on Instagram\",\"showheader\":false,\"headertextsize\":\"\",\"headercolor\":\"\",\"headerstyle\":\"standard\",\"showfollowers\":false,\"showbio\":false,\"custombio\":\"\",\"customavatar\":\"\",\"headerprimarycolor\":\"#517fa4\",\"headersecondarycolor\":\"#eeeeee\",\"headersize\":\"medium\",\"storiestime\":\"\",\"headeroutside\":false,\"class\":\"\",\"ajaxtheme\":\"\",\"excludewords\":\"\",\"includewords\":\"\",\"maxrequests\":\"5\",\"carouselrows\":\"1\",\"carouselloop\":\"rewind\",\"carouselarrows\":false,\"carouselpag\":true,\"carouselautoplay\":false,\"carouseltime\":\"5000\",\"highlighttype\":\"pattern\",\"highlightoffset\":\"0\",\"highlightpattern\":\"\",\"highlighthashtag\":\"\",\"highlightids\":\"\",\"whitelist\":\"\",\"autoscroll\":false,\"autoscrolldistance\":\"\",\"permanent\":false,\"accesstoken\":\"\",\"user\":\"\",\"feedid\":false,\"resizeprocess\":\"background\",\"mediavine\":\"\",\"customtemplates\":false,\"moderationmode\":false,\"colorpalette\":\"inherit\",\"custombgcolor1\":\"\",\"customtextcolor1\":\"\",\"customtextcolor2\":\"\",\"customlinkcolor1\":\"\",\"custombuttoncolor1\":\"\",\"custombuttoncolor2\":\"\",\"photosposts\":true,\"reelsposts\":true,\"shoppablefeed\":false,\"moderationlist\":\"{\\\"list_type_selected\\\":\\\"allow\\\"}\",\"customBlockModerationlist\":\"\",\"enablemoderationmode\":false,\"fakecolorpicker\":\"\",\"nonce\":\"115863cfb1\",\"shoppablelist\":\"\"}', 1, 'publish', '2023-05-22 14:38:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_sbi_feed_caches`
--

CREATE TABLE `wp_sbi_feed_caches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `feed_id` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cache_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cache_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cron_update` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  `last_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_sbi_feed_caches`
--

INSERT INTO `wp_sbi_feed_caches` (`id`, `feed_id`, `cache_key`, `cache_value`, `cron_update`, `last_updated`) VALUES
(1, '1_CUSTOMIZER', 'posts', '', '', '2023-05-22 13:59:54'),
(2, '1_CUSTOMIZER', 'posts_backup', '', '', '2023-05-22 13:59:54'),
(3, '1_CUSTOMIZER', 'header', '', '', '2023-05-22 13:59:55'),
(4, '1_CUSTOMIZER', 'header_backup', '', '', '2023-05-22 13:59:55'),
(5, '1_CUSTOMIZER', 'resized_images', '', '', '2023-05-22 13:59:55'),
(6, '1', 'posts', 'zoJ2GytgKlPlP0WKdhzv0TdTNVhOQ0taZWdUVThKZFN4b1NQMjhqekNxQ2xxU3EvU2hSSk1HYlFkZWw0NFdiYXBCREdibGdBaFJWYWFtUVNIK0F3WVhzalRxZDAvRmh4RzErN1Azd2gyYW9YaDdJNzN3N09EbDVxSmFPZmp0WXpmWXFVUlhYY2NEU29wQWhORjNmZjBlWktPM1ZHWlNBNS9Wa1Bvem1HR3pNaHZTd05ZNnJ6T210NTBxOERTN3Fha0ZadndNK0FWVGNncm1CSzVKUWthQlV2U05MbTZOTXVvYTFMd1BwTmplQXdXakdYT01JZVNob1JVN3Y5ZnMzeitPQmNlOEdGYytadVp1K2ZvTXVRSzZmYkRxNWJEeTNpOFc5UHhXa3FjdVJMVGppVG8rd0JxWTZDdFBQU3V5Z1FmWER2cS9ITkJxamFqdkNqSmE0MFFGRkt2YzROWlAwdWtDNERBRVBRYStrV0lrOTBZM1BzRTRZQnFFN091UnFMdUJzNTVJaDZuN2FYOTFId2tkaWJGclpZdEl2TFEyNjRscWNPaGxxOU1aRE5TV3R2YlpSZ01ZNFJsMkNwQXROMUthTisxY3p2QkpHV203aS9XOVprSE5QZGJnT2VSNjhTUWVVcHRmVkZocmhLQ2dzamhIMmt2ajVuWDdyQm9nRGxYcDJHc0pzdnQ3TDR2eXdYSVZNd08wbmQ3ODU2K1NpSmY0OXBwelpMOHdJeTFiTjV0YlpIakJhK2M4MWxOZ0xVL1lDWHZYbkRLbDZtOU5HeFMzelV3MldiTkJqVmZpNVluakJRMUIwRFBUblJkdW1QQzVOMkQwU1F4SjRHMUhiUHFQaDVoNEpaZC9wUjdGNnhlODZpem1hbkgyQzFjS1dVMkJmSjd1NVdIRXhDNjk0bFk5VVFLNFhoQi94aUNEaEpzZnRValV1UDdMekxybnNxU0JxbjI1Qzd2M0JsUFlveTlZNk9PbkYyMDZLZmVveXY5dUFKK0xUSENsOER4aFFUaDJ0L29CYUJVanZiSC9Ma0lQY1lKSndJMEFGcTNoMFllV1ZwUlc5UndhWnFzQ2Vla25OdkRUMlVEOElpOHB2eUZlMksxa2c1SWlERXZTUU40Qko0NFhISEZCOTBOcUpUY2VJU0FMUzh2dGE4dnlkcTNDUWVXdW9XTVBkUnpJcEtUSDdlVDZXaUJiU0w2emZIaFZWZDQyaHc5dlVvZ0FBcGlUbEJSS0wyWFJVV05yVS9DVEtwRitobVBqUjBmMGJSYVRQdllJeVhEdmR6eU9hemdDNXdDRVMzNEdyTzkyM3ViOHErd01oWjU1aWxTQytMT2M1VzFPLzNYUkZVbSsvNWp6cEpvRWxMTHpOV2h0Y1ZQSm1TMkhnL3BiVlRJMFJBUW5iMzZoUEFPU2pKb2laVm9IYWhoUkU2YTViN0c2UDlaMi9YRkZEcjkwQ1V6MU1jc3A5RE5rM3liNjhZdmV5VnZtY2JWV0NubVNmOE9Fb3RYdnVTSkpMNFM4Rk1GUmxoM1BQQXl6Qi9KdW9qSHlKMFRDTjhYLzBIQURqQlp3OXVEUGpJYmVGMCtHMVAvZzg4ZktWVXFnRVZDeEVmUnp5a0NFZVFUV1hMdko0aEZEQ1V2ZFhBL214bWhFUXdYWkYvczlxTVRuaXpSRjh2cXMvb3ppdHlQN3ltM0tXcXNXRnJTc3JJdUFtTGtFSkVlUFRxQWltOVhRN1gxMzJiNEFOUTBaTUhRRW05Qm80bkplNjIvWDRHdTRTNzdvRT0=', 'yes', '2023-05-27 05:41:31');
INSERT INTO `wp_sbi_feed_caches` (`id`, `feed_id`, `cache_key`, `cache_value`, `cron_update`, `last_updated`) VALUES
(7, '1', 'posts_backup', 'N5hZLQbSyw9j6UkxdrDkh3NsNE1KRFN5cnBWMEFPVlphU01idWl1TGRGeWVTa2orT2srVWVuNGZENjU2TDhxZE81TS8vTG54eWxXWmRLQ3JYaWgrNUNRVHR5T05zY21LUFdmS2VpYno0NXpkYTRnanp0aXdlQjFwbkd3dGR1ejFvdWVYVkl4Z0VGZVhiUmdWbzljMTNHbHZ2eUFhSEZKZmxTQlJLamY0YjBZSVovbUZyL0VVSFZDY3NuL1JXdzJCd252SjIrRVc1akdWRkRCekM5aSt5dTF3dzZnSEswWnpWNlI3dTNTbE5QbnhoZDdZVXRhMTIvT0U0VnNhMFc2d1Q4WUZCY0hTSDQ5ZTZqanpzYnprYVl1bWl3YkxlS3hJeDhESFdrM3ZnRmU4UENGM3FnMW9lQzV6QUp0R2NFVXV2eDFIaERqNU5jWXpNV0dGOE1LZTdsZXpYTEkzdTBySWJ2TU5GNDIwd1F0N1JRQ0RjNWlmTGQrT3p2Uld0ZnpzK1B0UkRjQzh0cnZoZGRVbkcvMUxiNGltSytwOTBPeDhEelR3c29pWTJzajAxNWZFdDlyOGl3V2M0RG50R2xScHNvY0NaYnpjZ1A5TjE5dzVseUR0N3I2dFUyU0o0cDViZE9BczRWOVNUOGdCTGcvUXg4bGc3RkpjRVdwdGQxTlhWYUZOZDlOVHhLbHZuWDhFWFA0MWEyZ2NiSUtkeFRtV1FnSlpuUjFwZzRIWTFBR29FT1lrV205elE1eHQ2VDRXL2dCemY5eHhUTnZCRUlpM2g4TlFsekJJaEdzNE54bTN1WUtXNE9mZmZaaTVGc1VSZkhqcmg4MEREdndZNGFROUVpZWdwTkxHUnliZUtxblA4KzVVOXlGQkVyYzhoeGdFeDg2RVpYUkU5dFJxVVpNOHJDb0s4K2hqTnFPdWFnOW54SlAzVyt0WTlpbktGMlZHdHA5bWgxSjdDWU9JVVBhU0lGdUlreFJXdGxRZTlzRFZaZWl1OWZUZE9zclE4RldRQ1N3MlpCWXQ3OEQwZVk3OEVId3ljanYvaWpvWm9XSGZ5U2lhKzRuOXMzMW8wQzduMGU1OTFhckF6S0lQb2ZwYVpRMnBrR3JNeVJ2QzBpM2QwdnA3UTZGcGZ4UlFBWFdiTUtMMW85cXQwYjlOb3FOejh0TWJnZ1krZHg0a2dwTzkrWEpkemw0OVdVUFNWNVRQbTFsM2dicEE5aCtIWjE4OVkzSkZoWU1PUE4xakh1KzgyTS9HMi9xclN3RGRJeHB5cWR4RkJ1ajFac1k2UEs1U09ud0ROYXdaWmoydjFUVVhyUW5iZ0crV2xYblZvcnpyUmtES251emJzZTlKbnd5UHgxbmlMK3dsZmVPWk9wMWxrRy8rV0JaRnZvUFVvMmxySDJGUW5STlNiNHpvUmExVnh1ZC9GaVRJM2JKelUvWEZoR1lEb0VEUnVJanZXVjBKanY5MlJyMHRGUkVRNDhPblNQSmdzK0JqRDZHUXd0N2h5Y0FFVmFuOFFnNEpDYlN2V2NVUWxrZVlYUzFvcGNkYnVkeGRReGFvdldEc2xOaXFMN0lTa1BZQ05Qc3dBNU40UmtUOXFEZDg3aTZ3MzQrbCtuV2pMUExXSHdNUDNsVHIxTVZ2UXJtRnRFSWViTUZDQ1FjMUNKUXpYalhzWHY2STV2cEhldTM4ODdIeDdkZm5jNHJwcnJOZ2ZWbytpVzNibjAzTnNhZDJHR0kxOTVjc0d1UTFTb1drU2wzdUQ4a2tQaGRReDhhYVY4ZjE1TWJuRU1XRUg5R2I1THlYSm45TW5XL1VBTUUvaEtuZDJHQTEzNUVablg0VW1tMkFxMlVDbXI5VnRWSFdWeWxYdHVSMGdqMmFKNUlmM3pjS0UyWkJQRkNBRWl5N2hOSFNubThPMXI0UUFWMVVTd2J1Y1d2eUgzUFNnTlh5bVVMc1NXZHV1eTV1eDJQVFRQeElyMFR2ZEpLMFlZSGZVN29CSXFIc0NraXlOSzdacFRraysyaTVPQ2tvU0lHTE1MbHBuQk56dTB0aENzTG5CWTN5ZEJiTWVsTC9lSjlPN3BPbGpHVk5RdlBiV2dsMXRMeWhVQVkvNkVqWUxCUmQ3V1FGaVF6TmVLQlpjaTVDV3dRZE8zZGRiUXc2UjhRanc3STBrSjY1TkFYWHk5WU5YNnRidEJMZ2dNOXcwMHVqeGRSdDJQUlB4SUVYVmhUSFduY09oaitnb0pyUStaWDV2ZXdyaDBvb0VTQllvMDRxanY0NmN0OStJVmZONE9XRkhUajQ4UWVuenY3UHV3K0YzTTl2ZHIwcU83ZmVueHcxM01CcnNHNllrcmI1ZGVJOEI0bFVLZEtzbHZLZlVsL1VqckhwbkNZcERRRHlPeVNwWnNPNGdKWXNTcDdYZG1RQ2s0MlVBclVyN2JWeE0xUGgxeVU5TFNsNHhSWHhLYlpEbzVvNEk2enQwSHc4ZjlNT0V2Y0pOS2dMQmRDMDVveHdYcUNyendJb2c5RmNKOEtrSVJML0dIZHJpQ2pqM29xa04rTzJrMHY5VXpYekMxTGFuL2VncGlyQXA3M2JWZ1NLZjN5bEUvbHZDSzRkTWF4MGlubDI0MjJaRHA0RkovTXVsajFnK1hhdjU4dERDTzk4Vk5yZSt6YUZjVTNOb1pnbEsxYU1ZdXp5K1VrdzNkRjY5VVBtWmcxdytUemEycHlGMC81VndzVjdjTEg5ZnRoa2JhSmVIVEUwekdjK2NVNS9OQVd2bEx1Z0YxTWViOVVUWitkek42WXpxZGd2Vkp6NjFhb3YwVHEvUzdjeVRCSWRTcmR6cGpXcmJvMVlXZUxabmNEMkN0aFZRNmtpTGFGQkNJN2ZRR1ZYd3gzcjZ6VWlZQ2Vna2M1Zys2MlVPQlBsYlJVUVZONjYweWQ5M3RGYmxEMDgwa1ZreFd5ZWVHU2VrcVJxVnZueFEvU3o1LzY3Q21OMzZsNTBlT09JZHJ2M1UyVEVYbHhsK2F4dTNjS2RiMzBBNjJjdTg4d0l5cldHSGtKWHVwS3FPYklWVGNsY1VOTlBXRTFoZGwzK1FyMmlvUFpNQjE1enp2eGJ1dVhnZ2g4VnpjZXBpM0FTcGwvUW9pclVVS3lrV2kxL3Fyd1dIbEJjSUVDRDE5SVRiYkhFVm5wUXZINFpZcU85RHh3ZFAyQ0U4eVVZUnd5MC9mYnRBY3RUcTBZdmk4OWVnSUFqb0F6R3BKVmZpTlpxOEgvZE41T2QxeFRQRlk3WSsvL25vNmZ6eWFNYktmd21CRnJadytUS0lZaTNoVHdKZWRTcHZSeWIzdVlkbHF0YUs1ekh4SnpqS2dydXdaN3JhaDVHNVkzc29OcjNTOWpmMk9NU2k5NVRHT2g5RFhMZ3JjUnRqNmYxQkFOWVNRZFhTbzVYMlYrSEUzZnh3RGJZZHZ3Zk5sT1d4NjNqSldmeXM4UGRTK2oyQ2RxMXNmRWVTUHJtMFNnYjRWemFueDVkRGFFS2h0YzI2WkNTd09oM21XQk90cVoxRGNrbWtmdUlJNEtmeVlVemRHUXpPVXF3QmQ1WWxzcGdCcjlqZXFZMU5aZ0NiQ1Y0TDVVM1cvN0M4SEFmeXljOTY1UDBvUHlJMzhIbXByczBubmFmNWUxT0Nta3RvU2FiZWxpMFY2c1k2WDRCRlVTbmh3czl1blNHY29RL0orc2NZRlBid3V4dlNKRW1GQ0d2NmE1N29ZeWxmWlVKMTBIcUNKNm5lTGVvZ0ZpeFRYMWYwcmVndUpFMWt6VjdlbDhjZTJTYUJWR0NRbStWcGNKM2hMMWFpT2MxWjBxZkN1aGc5Z0tnQ0hkWGtiN3JLVTQwbHF5UDhHWnRhamVtemVvMEMvUm83VXpUQ0EyZFY3ZnI3UlpIdTVKSFRIMk5ReXh4UTI5aUNTZFNrbm1HMTZvRTNaVTJBeTNFWjhLVWwrOFRWRTF6VGQ5T3YraXA2TEtwNzlGZUsybUQ4MmZLWFBTWDBCS3k4aU8zQWI5bnVYdmhHSmh3VjlOckZheDIvNmUxdVR6WDBhQlVoZVlhL3o3WCs4NU9ITFJhNG9SK0ZLdFpIUi96SlAzcGtkdHVjWWl3Qy93SGJnNzhUbzMwRXlyN1hrU3o0L25aREljbG5kamFWa3FTY3JrNCtpb1BoUERBVlVOeWdVTjVMRG5KOWlEb296QmUwbU1EeEpOYzVoTjVXQXp6L2cvc1FVem1BUmRrdWtMSUJmNHd0TDdERXIxRFlzQWtnUFg0OWd6OFhYOEVLaldkNFdycFJRUlhnZk1WaTV6akYybFlnd2VIVVI3ZStnS0NSNzhic05jTUwwdDZKOWRWSWZueU5SVGxoRFVraWJxaGNSMDZjeDdFelJ1bERnZkYvM0xyNk9FQlFXNEs3VXlJaEwzTGtlbDNoUUJmNDI3OU05WDdIRGlDUjN1Wk92Wi9NVXJHRkprUFVZTDV2S1l0TXMzb3ExVW5yMktzZGQ1c0w2VnZmUXVJY0hYSWdaT1pDS3FiQVIzR0VGVmlDa1BiU3V4b1dlTkFucFUwMko4VlpNVkxRbnU2RjlrUnY4NlJMN0JjU013aFpCN2hHbVFCc28xMTVka1FZcEdOYytpOTVUWXA2WkxoTm5TbDk2SFd5Y1NGZmYxYzYzTDkwZXlPUXJPMGdNRTViZXVIRE1sNElDTXZ1bVFwZlV4RThDanp5YXd0eUpyVmtoL0NlYlBiY3VydnhSZGJUSnFWaU85dHhjR0R2SzlNQ2lTaFFXZHFGRUtJU0tWMlRDVXpqK29veEU0TGZ2c0RvMndkWkZZZ1o3MGFQdHVMcVhuVWtpV1Z6aVBxb3pvWGQ3WmF0aUs3YXdLMlRTVWM5d2hpN3JqdkZsMk9lTDA0bHVqYVNTMFNRdHR0eUU4SHJPamdnOWxSQkdyeG9RS3Z2a2dhbDVtT0FrbFlJYThiWFFxTnVNeXRZRnJib25JUDRSelRKWDBkM1h6TUlQbjVsSWV6RkhRZVVyMytFbmgvNGtCWGZISUI4Y2llMFU3V0VkWCt4T3ZaekVIOUtDNzhBbVR1Y1Z2Q1BMczFicWZyVnFxdUkzM0tvVnRuUEJuVTNSaGU3ZmtoV3RnNEYxYzErY2RVUzlnRkJqaU1nWG5qZWlvZkIwS2l3cTNGdVE2Q0pmWm5Vd1NCZnpiR1NSemFGbS94bmtUNEhueGlvRVhFQ2h0UjRUT2MvNjd0QWo3dVNTWVJ0OVdlUWh1dVRUeGpOODVtbUhYUUI5TUFWenRlM05RVHhmbGM3ZGVTMzhhWHpTdUUxRU03UlFtUVBWd0hybjNPVzlWUFRqNVRkb3Y0MEdzbDBwbnFEd1ZERGZETmJyZ3ZxS1ZCcE1RNzRFdlhKK1U3ODdJWERSSmVGU3FHR043SGdxUFB6c25SbTNheGJXTGFqV3dHRHlpeVp0aS95OEN0UXVYbFArUFJlMFlhdkNzWjZRMVVMcktDNVVPWmVzUklQNlJGb2o1M1RIYTZrR3JVRVN4UjMyOGpIY3ZPOGtVWHNiZnBZSFQzUHRBMmZVeXFRVVRRb3piWjBrSGIrS0pjNUhXdnB6bDA1dFdYcnJDVkhvOW1LcDNjeHdQYk5jVUZ0cDFsZFlCVTRnRUVLc0RseUticDd2QnB4T3ZyTllvTGVWSFczS3J2WFV6a2RqVHZEblJ5bTNMK3BlcjdrVHdpejRLSU1ndE5wTE9kUGZTTzZtT0l5VU5Wdzd1VFRqU0lBd1pTK1VZcW9zUVQ1cERaZGo3aTcrM0tMbEpVTGgzRE0vZ1hqMjhpRTFFSDdudXZVZWRDOFNWY3l4b0l5T0YzSi9tRVpoOWpKNlIvMUg4ak9YLzMxV3hIWUxFVHlDdDVuY0R0bGR3cGhwRER0ZEdVSmVCbXk2MnZ5Yk11QlplRjNuWW52a2dZTmVDdVY1Rk9FbVBpQWhPb0w5dlhlR29LMkt3S3NOMllpVVFDdEZlOVFHNjRETVFGRENNK2RrRTZNSGFaTnNXOGYzN3dvcXphcDUrZWFSdEc0V3UwTVFEQnBuakxRZFJUZFlSaEd2KzVDUnRFVG5CRlZSU2tXOHp6SXRmcUFPZDNmZ3Z6Q3doZW1ScGo0V01MbVVyblBHdHFwTGtoTThTbEhpUTRkYm9LTFg3WXloRG54QTgzTUJ1cFJKMjZuczRUaTVnU2NydTZmc2JkSWRMQTNoZ2pIc3dMWUtxYVVFYXNuWmQ3WUR6UVlzMkRHSXczZFZpWEpmM29LZk93SitNV0lXVWlVZUpiNE1OTWlHQlhpZ2NSU2NuaVNBWGdOUFdseUlML1BxSmVVUnZ4eDhydzRGZUtGMXFKRnR2NFh5ZVRTODZLb1hINENGSkd1V2ZpT0tBdEthUGhhaHdmbmkxeThKQmJNMkFtNkRhcTNWbjZCaHM4YjdhWVlzM1FKM2Z3YlZZM3c3eDR3c0JmQTVFY3kvOXV2WkRiQ2lXeGxvTFZ6L1JsdkQ5UEJlVW9QR05KK09RVFo3UXB6bXNSOVRMTHV2UDFqWFovNm15OGt0WVVBRGlHcy9rTitVZ2tHS3h0N25ZQVZJbDdMQnI5SUNpQWkwYWpMZlVOZjlDaGxmUmRzdkh0SEVWVzcrODkrWDZ6U0l4T1F4L1JiVzhHMHBuMHM0UFdlQXA5Ry9pNGxkakRxNW1zVXRpTFRkY0UyalNmMVhZbVdDWDZzTEt5Zy94VG1wZXJlY1ZQSnZnektwZ24rVG9vZmRrbi9nTDdpbWx1R2ZpR3ovRTZQV09KWWFvWEw3bmh3aTBIOEpaTWdhSlhndnJsZXVmc0o5dUhGRldNZ2duMG1ydWlJNWx0KzJDZFVaZlVxYlBLOVZEdTVzV0dSMWpaWWtpdEFncnZnZ3BINU9oTFRNTVhWZFJ5dms0RnZZUklqYkI4VHU0V3N1K3ZMQXE2Rkl6Ym5JakdYTE5mekxXM2tSdGRBNjU5TDg2VThVcEV0MU1VK1BCdnkwQ0laTkNRUHN2YWpOVkZNMXVDMFNwT05tRmhHQVRuSDZBT1pzZmI5THZLNTBNUUZMa1oxT3hXbi9oVWtySk1WZkFja1VTVzJlV09Ib0o3TnRRa2VuMllVeVI4aGJ1VGJtdFppeTBxbXNTM0QzK21LTlFGSkczZjBZWHh3RHM5MVZQQ0QyYm9KWWhqOTZONm9pL0ZWS1liU0ZJcCt6L1FQWG9GdXY3NXd1dGt4V1VxcitHblREQXVpcWNpNTRqWEZaOTdRcnNQcyswd2R1VGFrbkpPeFpjVENicURuRjdJemJFeGhaUWptQ1g5VmkvbGxBOFR1NmZwYVdlbU1QbmhtbkdtM2ZmOVVySTFNcEttRmo5UmZqb2N4L3RCejJaSUVSWFcvbERyUHNrcUlqTm5nL0dCQlhNdDg2QldleURhSjJvM1JOMENOZE1ielkvOUZDelRXNklkcDJvM0ZidndiTXpVU1d6NTJBZTF3L0tFbWVYYVJVd1k1OVZ5N0Z4aEF3bmRPQUVnNGpaYXNzMUhxSjVlZnlnZ3JMZ0dQak13WXFDY1IrMjhZK2dYMHJha0I1TTNOdmtBRUQ0SkdKNzRxaDlId2kxY0RrTjRHWWF2bEJWaWcvdFBBZEZzS3lKQWtGbUExNkJhVyswb1l5UkFjdER2MFJJaUlueGpzTHZ2S2dDT2dpTDQ5cEp4R1RKN25iU09OVGMxQk9nSmdHUzVXZHBqNmJHRUxROTQzUExRWDNQWXlaUHlEYUVsTDh1WkdVV2Qzb2UxZXRaYzY3QjV6NnBqU2lmbkpONndyMy8zRllIMHV5bmVDSWNUekZUSVFLQUVJZmlySnZ6UkxGaWU2Tk9wa3F6ZFhXUlFFd3FZbnFPcitPM2tlcStrZjdXelArSE9aMTVXdnNDU1FPOTFIUkdPYmJEd0lJa2JBaTJha0pFUmZ2WGFSUXRqNCtxUnlod05aZFFBUHlyNm1ndGZVUGJZQWFic3VVUjVzVHdDUENCMlV1VXpqOE1PWWx2andCZFV3UUgvNVZWcHloOGdJTjFWRmo2dHczTTg5YUpSOTFqUnZ6ZHowNnFPU0NrYXd2WUFtSEJVb0ZEenlhdVlUNXdHUDlXcHdBOXhkVitma0NDVGFXRFpyNWRqL1Fpb2tEWXZiT1JJdFRKVDBXcjlRNVl2OEZCdkx4WlFJbUxncldDMkFTU0ZjSDBNbDBTbDNxYm16SDVGaDh0OXA2TmF0bGRmb2liam9Ud2o3WlQ5K292SFJuSTF4QnRkNTRGL0xxWFVIblE0ajA3dHZwTU1EVnFiYlJwb3luVFpVdVF3cnp4Mm9QUGNhOCtweDV0MEYwT0NzOGQzMWxZeVViZzRIK1dvQktvdHhhbks5aUxkbUVBSVZoMmVOL0duY3UzSlExM3VGMFBYb1g2K1V3MWRNd3FYUmFvRXV0QlN0S1g4UDJ6TWNuMG4yaTNqalVRL2NyeEg3Mnl1TFFQM2wyVnRKbzZCUWRWTlJpSEIwbFRqM0pYWlR2YXZrdnpOQjhPNjgrbkc0Tm51UFVSRVJlVUMrQkp1SzJrSWd2bGNjVzN2RHpmRTlEN0pIY0F1NXRiNVAvaVhwRkowS3FkREUzZWZuZytEMU9LSGFwQWJueTN1NUt2VVlDNWVmZTVHNENtZWs3dnRmeTg0QXRweTFPVTdvSEVFaTh0WGpMVTUzdzVnOGw4c3ZkVGowVXQ4ZjRFeUtOMTlrSTRESGMzOGlqWjBxR2NPWWVCcENJd2RtN2lrb2lBVmNYdUFKd2Q5YysreW9rR2M2QVNqLzFNQldyV25TLy9IYlMvVWlCNkpNclR1L09rVFZ1NVcvUTlYSVRSWDRsZzNoRWpWZytUMTFjb3VnRHJadmRZVzdFelFIOXkrZFRiUjB1LzA2ditLYWZ2N0Z2a2lObWNWcktiem02YUZSUWREeCs4QjEwS2ZVa0xOQWpXTVZUNUlDbWV0SWxpak5ZSXMrRGhsMy91Z050TXVEVHRPQlRpTzh6NnI1NGEzL3hwSDlOaVp3QVhKMVBQdkVwWFByS09iMXFTRFFBLzZ3ZkIxbjhFQVpUN1k2bG9EREJyWDBsMmwxQlVkSEoyVXdLU3MzenZMT3RGbzZ4NXNvQVlJZmJyUnJiWVUrdXpOZm9acTdBdFNxUDNhWDFKREdnOWpJa0YrbEU5cFVGZExsNlJoNnlGc2hVeWZpbUhrRVAyN2ROeXRzM0lSVmRIWTc0M2xKNE5TaU1DOEduZUhpcWR2bHFlSG5aVzNZeStiTnBaNGJpYU9lZHlRS2dCOGIvZlZBSEV2b25hOER0Rkl6UGVWOTBqMUtPQURSb0RIWkU4K3R2WUF3STNlMVBENzdHUXlJbThEOHhKSW1oUFBFdjBLdlo1ZmNOaFlqclNldkJGL2g0K1RJaXNRMk0xWENGc0pwMG04L2pwTUFXNG9lekhVYTcvd1hhM2FOdDkxeU4xbUJ1RmtqL3dIblROWjJXS1Q1dnpiWVlzMFdhUFFwSUhaVkhSN0IrY1FFdjNjSnQ5NE9CTWhyc1B4dkIxVXNIZDhTY1lSTFpiNDJZbVpBdWtXbWtLTzlOdWwycGdTWjZBYnhDRC9KRXFKUm1WN1BKbG9kcmNocFZuenNOb0ZYSHlUVUloVVBzOVlPQk5DaTBheW5MM0MzWmpqZlY2Sk5EbEpaQkkyWjhPcC9aaEx2bzdSTUtXVVdqOSsyUXg1YkU1OXRqRWViSFZCVThyem1GZzA3TlZFblA1OWF6Vm5NMXNqVzZ3ZVIzUzIvTlZxNGFZWnBLOGhGVlovZEt2MzNOY1o5VlY2S2R4NzFEaEpBZkMrckMyM0RpUHNRQmo0MkJ6T3FjcGtNWTJPY0k1MUtKNlBZSXFrK1VqZENBcXRTQWJzbFVKZ1FUTFRSalZtYWJxK2p2YWlJcEk3U1BHbm1iOVkyYXlDUVFhOStYaHdYa2hOVUZEK1gzN2hlOVVNYk1NdlBNZFRVWE5XMU9kelRYcStTbWo3ZUtkNkQwbGpzcG9KU0dZZnc2RUlwcW9hcnlySk1NVnlRU0FoYkJpNlN5Rkl5elNXcGpLRTNNTjg5MEs0a3pGTEh6WE5vL0FmRFBlZzlUc2RWS01GMmtOTnUrU3E5bTNqVGVlWVlMT0Y3OHNUWjFqSC9sdGszNml1aFdINTRpNVY0c0grZWxCZU0wbnJZVlV2WGtybkxGbUJmSGMyaTZKbFFxV0xZcGRzTC82R0pTSXZabzZ2N1BVTlExQ1BMdjhIUFo1bXI5YmU5alJKL1Jub1pCNmczUzdhcHJzRXRmdFpFNVNYM0JOb0MwckxMSGd4SUI3RFp4dTJ6REZVOUd2Zk15MUlaT2prUWhMNmxzT1pNK3ROb1hrYXQyZVg0bnBqMmY1Z05BMVlFSVdxTEpCZW9VNWV6VmZ0WkUrbnBmazFKbzRydktuUGJqS1dWVVZXSUc0cEF6NW5EbzIrZ1ZFZm5GSkQrZ3pqVkx2NExPenRzaTVDNTFyZEF1b3RaYmxqTHBpNjE5Ynl3clBzeVltc3JjRDk2b3p3eFBHYVBhMjh1SVhOZldOYjlDa1I0TVJMdVlHbVhHOXgzT0p1aVlpMHVnNUtoQjNlUC8yenRMa0wzZlBuaHlHK2NuUjlLTFpVYWU1SmRrV0taYm8zWjlXNjZZR3krZzZQYkFWNkxleUVqMlNudTNzZExwMGpxWGJQN2M5Z1M2MzRBT0NTRUJBR2ZZMWhISitqbDA0Uzh6YzRpa3ZrdEdBTEY0SGRJdDhvanhxT0p4QmV0Q2RxWGFWbFhQS2s5UVhXT3VMdllHOWp0eHRnTTdTY0MxaFY3YkQvbFJlQ1ZERmxJajJPTU5Cc3FTMUpTcC9vQmc5TEZhMFBOTmQyY3hYYnVoamRsNXFDWjkzZi9CSklCMlg4dldqOUlPc1pQcjlmWG5vZFRSQTUwQ2JndE5ZN2hGdXBDTnVJaDZYZW9SWWVVeHhRVkRzUDFaeXhFQTVHd2l5K1RNMkVIcGtDZW56ai8xakNrNFQxVVp0aG02NjBIWEgzYzF4UUxhYUJFellFWHNrRGF1Q3FIZTNqRVozc1NkWXRLaWd0Ny9pc3ExTTZRRHZEeUVlMEQwbEpxajBQUlVUeE8reFA3UFpQWUJiU2RISFdDS0hnSlhQU0hLN3gyTU9ENEZDYlRBNklHWFZURE9rWHdHV3RLZkVLN1VUVUhOczJjTi9lbGJtSktsMTNvUkNGT1U3TzVKOFh6NGQ0czdzUkF6aldEWE9NNVRmTmlOemtKbUd4cGQvbklmbXkrRWVZV1JrUi9pVDdpV3dsL1JtaXJvdHdSSCtYZVZweDhxWGZZS0pGRVFtY2t1MXJOR1VJdUYxZi9nQjZwYkNkeVQ4Rm9Xa0J5dnkzNS9QOSsyQW1ZeWQrbmUybzlSaHhyeFFKeTg2Z3FDS1U3Y3p2ZXdrc3ZOK2t6VHRwV1lRQ1RkTjVaU3MyOW03dGdzSWtMb0xjRHQvRXdPT1VhalowWmhXNmk4azlYTVdaVHVUWUpuR1dSMU1ES1BweHJiMWtlVVMrWVN4RFFTMHNvZW1udE5pSTNXMjRsdG5vMnArajdvZ1M4N2RxSmdBTWMxNmZQOUErelkxOU1ySFQ3OVpKczZFckRXK2RsbnRaMUZCVUUwMDRObGxsbjNXdzJ1YkpFeEpGakEveHZMTTBjRjlFYWt6QlNJSVk2dElYUVBRaTRGRUhvRzdoc0JhWG9RRlJxZUNlVCtMckNxWFdJaW85WjVreSthREIxSEdOYTI5Z3BEVDI3by9XSzJCdVVxcnRhTVZRekIzbThNYXBSVDNMSkJVUk5icks4K01zOVpYUy9ZN00ycE9ZWVhKYldJU1lHL1Z4MXZjRkI1bi80TWliWlpveEVpY1hZdEVDVUk3eXB3VHRpQTM1VDlveWhNMWRCYmhtd0ZMUW9Jck5BRzM4RXRQTjlUMWlvMVByNVdOeGVSaWdZdTd5YklDZzM3cXBZTmJxM0NIb1dMaXlzYm5UTHBUc1RqVExWRk13SmdkUEdpaGhncUNqd0tZMUg1bzJBRW5XU0VBb2tDRFV5S24vTm5mYkVLYVEvYkRtV2xrWWxWd3hFT2xJZE9WcWNMejYvSVUvMGZ1SkJVZkY3b084dDRiVFZXbE1Yc2xTNVU0d21ncHYyZHEwMEFxYmRQYUE5bk11aVBNV2F1RDZoeGhpL0RCV3E0WTNpc1ZuZVBlNVM1WUFkZTF3TjJBNFZFdHB4d3ZXRTZjanoweEtNYWFtUXgwRCsxRHhuSUxTS0d5YlNuK1QraGVBbmlpOW1zQWJPOWFTK0ViZC9OYlBXNVR6c29JSTRranY1SmpXNFpEdnhYVkpuUGVSN09vaTZtSUR4ZGRjeG9yZ2pmVC9kZjkvNXVLY0w5NkY3WkZ5cG9kVlJVVUtGN1kwQTZKQ3pSNkdLVXZNS0FtNERjcHRTK2JpTk1Nd1V5QmtlMFB2enM4VThvektOOUtvYVRoMCtSdHMxQzIrRmlFaWdCV1VnaWtFNTJ5RUJzUkdMcTdQV0Q0OTVJeVU0a250b3RIeXNTV1Qwd2tESjhwVHU1L0w0UlhZSmpWV0xGWTIvMG9NTWNRV0dFbUNzTHBYQzNrS2lMMDVuSE4zOGl3NXBUZWRRNExEMm1xdUFwb0tiMld5OTlzdktUVk1pbmk5bGtJL2Nyc0FidWlPeE8xN1pSTGkvQTd0VVYvWWhGNnU5MFovTGVsMGNyQ0pwQXVWN3pXZXVFZUwrMXN3Q2J0bHJYUjJQbnBRNEFhODJzeW50dlcvYVF5UVJIbk5lS3J3N2JCR0RMTUtqVytieCtMOUtFdjVxdkNiZVd3akxRK3J1enNuR1hySk9vNytzY2I2eUhSVnZkak9QSUlmaFdYZi9wbmcvNnJyaWU0SmV5cEN4aHBHV1N2RVNCWlpXWjdwRTJtUGdhTFUwWUVTMnZHdktXb3VxSktsMndybjdhOEVHczJCZ1NvR21vME9BcW1CeW9sU2VHQmdEYlU0QmVubmRYd3VpandDV0VicXpZRkJhS0lvTUp3dGpUT3A5ZGU1dHZMNC8xOU0wZFZ3VUZTWnpWTWF6QW0zYi9JMTVXaWV4VjNQSnBtekVNVm1udzlTZGFwUGpYQ3gzVDZFQ2RNVDI5TDlvSE1NMVE4MDM3TTIzMlpUc001YXE2NWVvS3RPSW1NNm1QS2QzVm9hTE1EYVBRNGs3YXN2Qm80bTN2c2F6ZkE3WFlBQmx6ZnpnVDhIa083UFd4NEtqUWNMR0dCZkREamkvV3p0Y1RIczJDUkZwcjRGYW80S0hGQTJPc2J0RE84b2ZTK0MvdVNCVmJYSnBQQkpsS1FVZG0rOUN2NWoyKzlEN2dUeVllNFdWZ3FHTndDU3pFUHBWU2RURkRKUWRhcU5NRWMrSC9iWTBBQXR4dmNEVitjNmJRRzlabG0wNEdEUUptKytEVHB5c3ZkbGlIRU92S2dwSW0wTnBHMEJCKzV2ejNoVU9tdis3TEFFWFJ0dFYwVGhoMktwS3BERCtPL2NzS2NFYzh6SzZSZXpsZExEMC9YOXVRbjZGb1E2YUpaelpHTW5pNk9pWjlMWWJGQ0RBakVidVF1ZnQvYVFFbnlGeFNyZU9xVTlYVldxQXlsc2p5c3hpb1RxcmI4QkF2eTN1T0xBSjZmbWV2cG9HZ09DLzdsS0RBcXZqNUtOMDJlSHQ5azFJS1cwQTFocFlGcllYd28xdUorNWNKQjlzaCthR2xEbWZlZ1JjQ0xmaUduVGhSSG9hZldBZk9PeWdSZ2ZlRkU4bDV0K2M4dFBqN0FQNVYyckFuTEpDdE83RkRUbU9jWC85c3ZobWNBNFFBeS9GNXRzWW1OR2NqOG1NUTExdXFiM054aTZHcGp6S1grWGFUZ2RSczk3ejNycjNXRVA5WGVrU0ZUZ2ZnUHc3cVM3NEFSUVpiQjVoRlFRNlNZQTVwNHdFWG1VQ1BZUFZpQm05MGZ1dEVmTnZrM3p2Njk5b3dnd2t0c25nYTR5UFdKUW9SM3AxRGhVY0dIQlBPL0Q5a2pHVmdWWlBkTG1Ob25zNkVsK1diZmVNNVRWeWowSDlYSlo1bFpEL0luYWN0T3V6RVczT1BQWnp3blozc3BDbnNmR0FYT2JWdjI5SXBaMytwYVpYUUxrSTdqR0lFbUFWVzhRK1hmVlNGR2pjQTNGS25XVjIwdU1kSDhEdGM1dUVzZ28yeDk5T3BNVjU4NDJ6TmJQV3JrU001NklKWVg5TUtNUDBCYTBqRkRTQi81Y2s2L05GNGd1bjJkQjR3Qm0rc1Fva1JqbkdMTWFvQ0VEV1NOR3Z4UktjYUpqL256Qi9mbFplOE1ELzRhOUJrKzAxNXNkeWtFZTcvTXc2RVNnVng0cVpXdTl1dTJUeHJzNGlDTVF1S01jcFpsTzVTNG5DUlllUEdOaXlRUHdkcmczd3A5RE85MXB0ay9Sc2dUL0FqbjhOQzc0MTR5MmhNZzg1eE5UOVA0SG42TEpRODFiVURGS1REZENBbzlzdlhETHVKcjROZ0s0bGQ5UFNJT0FUTWNzKzI4K2JXQmlwVll2SlFCTU1ob09mbE5TZTZYdTZOZlRkSVdSUnpERDVndHpkMmhTVEFJWUVMQUtjZzNDZ0NFZWViSmkvMkIyd1RGK0I4cUNrSnRQeGhzclk4bGFSU2JlOWFBZHhxZ1ovY3JRUFlDcmhjTUFGZDRBeHQ5NER5WlBrZGFKTllPZ0ZmWFltaFZVSlRDeXllSEJ5TFlpcXJQRWhUVXkyQitHRldVd3NFRFhybS9BNkFucXNXM1lHQ2V1YldkT3o4c2dmUkFwYVdQSnBoSzAvL3IzT0c5clM1S0V0R0I0ZlBpU0EreEp5dVI3dUtuUjh0WHFwcGt1QTVQY3ZuRmVCU3ZjZG53ZzJ6WElUTER4UVJlYXNTc2k4S1lBMjd0R1IxSldJSXBycFBrT3pyRFhWaVE0eHpOSlZVOXhSTFRRc1V4VjBqTU9YUTF0SWRLMDR5UDNYRlBBSnNFOHpiOUx0bENTeFE3bC8rdFo3RnVXWjJNeE5mczZML0M5SGk5WnNncTFpSzdCeUZmOGRzVU5jZkwvcjVRMkVpLzZYbG8xd0Y0TkxJLy8rcXNuQmxFQ242Y2U2M2N4RnFWa3ZWQ3pONjVWdWNtaUR0QXdyR0hMVDEyVTM1VlpzT2o3N1RsSEUrSmNqR0tYVVgrMm1MY24yckordmJxL09pRWtyQVdHMUFreGZIQ05EV1FsM1lTbVpqNUhNY3M3RTBhWVk0cEl5TDVwSkFJOXBTYUJDY2ZpMVlGODlMS3pNSmdoeGF3akMxcysrclRnUlpLVGVEekNNb2VaVVJvcklsbENtSjJPU1FSY3VpcG9lRWgxa1c5U3FwU1RDYzR5S05HNURaRUlNRFVaNXI1MVo4L3pDVW04TWd2ckZYVmRiTHUrRldLWUtVc2E5ZldwTktiODV2dWNHa0JjY0NHenpFVHBtcDR2b3BXNGlyWXR3dFJERE5lcnFuRFdBZHZPQUMyQXUrb1JSZitGSmlKRndIUGNEY3pINy9Hbkc4TkU3NEl0NXA0bFZsdkxWMVdQYW0rQ1RObUlOc0ZWS3kvNXlKdnJsUkFoUTlGL3ZHT3ZYMjdjdUdadVVKNlZpaXQ3NFg4K3N6S0JLZzZPWmFuM2Y3SDA5eWVodWNUU2xFOUtCMFpzZXJ6bHk1TmRmRGwrNVMvUG1KZE9TVXhnN0twYndwNDV2ak5WTWFLMkV3bDNiNDNKUFhIb3Vndkd6K2J0a3JxbEhsdktjakJISTJrNmtvWi8vcjNySHpRbjNBcG03R2NBZEQ2OG1yL3dTMHhBSWczd3JicXRtcWFXRElOMExuaHl0cE5jSEV5M1MreHFabzJTZ2gvK20wMzJHNmdGRzRZQndWaXJoOHVHYXU0RmdqQ2gxVnV3S0Z2UUxTRDQ5UXVqY2R5NjNlMU9LeEJONFo1ckk2MllmbHFTUHN1NUVkMmQ3UGE5ZWlOYll4dlB0akVqV1pQMU5wM2lPZGJ5NnY2S2NDdEprakRmK0NCb0YxMlprcFh6dXBTMndQay9kendFWFNPc3VQZUNEb0FDYjJuYjZpc2c5cm45eWFIVnlQZURYMkVyOUdHZ25JK0NZQW92Yk5vQmhCQlp4UmF6cHJhcHBGVXAxb0ZTMHNUc0RBcHdSTCtHRXBBSmxBNmlDU3RxTWg4R1V4TklIRWNwRHlFU3ZGMmdHQTdxU0lnOFU1eDl5OUlTQXlGTWNEWXVyRUJuNm95TmNoa0ZRMGJaZW42UnJZM1JsOHRwSnpUM2lKV3ZQSVlwMVZUdDhKMklmeTd3bkcyZW02bUxzTG9Cc3N0UlN4TFQrbE0vQ1JZUXZCQ1NGeDByL2lnRkw3SjNmQ2lkTkJQU2VaZVN2Z2ExeDlxM0h4RCtocUFYL3JCSTRqeEZQcCtwZ1MweFJPZlFxL2xZTzFCZWxyd0JoUUFWRFBDN2s1cjc0MytZbHJEOW4wVFpYalpyLzI5NVBZQWhlSmVPSDJXNWQ4R1BqOEh6NVFFQTZiSTRkRHRFYmxrTGJMSW5kRFJRcWd0OThhdTl2enY2RWNaV2E0bHJCK1pFM1VqM1JtekF1SGJzZG1tdHVXZERUcGVuUkFMdDQzUHF2OHlGbjY5VTRvWFdOcWJWeUYwRDZRU0J2ZjlYSW14YVk3dDE2UjNtMDV5bHZKYXk3YTcwN1FDYlZXRlV6TzNiMEQ0NThiUFI4ejNKY2h0UU9PNFZpcjhOQmhEN0FHTlZoUnhKbGI2YTFnZTFIS3lNV2M4ajEveU5RYWwwb2pEbkVlWStVcmFvRHYwZmJIbTZqdXZQdW01RkhDYTB5K0FuNkdJTkJxd3V2WTZRTUc4YkEzQVA0SlVnR1hsTU1RNlZjNWV2TFJ3eURPamF4ZTBmRnFDcTVPb01jaVBNYTlpTmlydGx0NjUvSkt6M0NqUmlNcTRHa1c3NW5abUZ6QzhXSGd5SE5jSE9LWE1ZWmJnS2ZtRzA4WE0yNDZHaVMxdU9WM1VJQXRQM1RabERqVUJqSy9QMWgrMFk3cXhleWV5bEFkSldjUlhrZFQ0SENhbmZ0RjNUMmNiQ2hmRjR0amFyOExRQWJwdTVrRW9JeDIyNVR5NVprRDRYUWdXR3psY2g2aFNqZTNHZEZ0UXRjMnJRNUljTE5GS2FHWFhYejVZVUxRRkJTQktaMi8wSG95SHo0SERqZVhYa2VVWFp4R2FUQ0ZlUmUxNVhyZldIK3ptd2VFWHN4TUExV1NJT1M5bk1FRkthdG5YeFE5V21yTHNFSmdMUHJTWDJtMkpTZS9kWEwyc1F5ZFNYNlVzdTRJVDdEMG9obG5hVWhVY2hKNEFrQWJXWS9tY1I2REtZSThoekNBcVNOeFUvbUcwbDRXeTZoM1NmQTNmNENFQzM2UzR2MkxzdHZBSTJjb1JJb1MxMVJUVmcrbnNxSFVYVmVmMnFMQnVsdjdYV214eUtjakp4Ym1Hb204ZCsxRE9kV09raHZVUm95OGhhNzEyeThDdlUvcmNSc0U4Ky9pcjlaVThROTR5ZHVkcUFTazZucDFTWUR6ZVJvYzdnYTArVjNsbHNVU2I1YVYvbmhjdmdweW02ZTN0OU9meHpIM2QxdUlvZlk3bHMxM1JONFc0MHpuNE5JY0JnWVI4WExBdC9LTDhDanlEZG5JU3pnK29Mck5jUVhpdXJGOHg2VDZiOHdKanJyci9nSURqaU14WUVEd0ZrOVpTZGNWZ3JzclEyZm1KS0xLZ3pqWENDZ2d2N3JuQVFvcmx5cUdOdlRMaERRa0pCSnBBY3FQMmM2MlBmNUJacFR0VDRSUXVHRjJmMks0RVM2M1Z4clVSTnJaWitBNDdiMUxQZUlNdXNDWFZNeEhndlhBSUlucmcxcUJXMUZjeVFpV0dFK2ZCZEYvanpvQmtKR2RYS3hKcmRaTW1uMGIwem81T3lxdEtvR3BxRW4wUjA1ZDUzSFIyMDJDNURNSnpjd0E3TUZ2blJNMVViZjRtYXordXhjWklIN1AvamRka21pM2Q3UEZENWtsbUUyQVhheU9XRkdJUGVTS0hRcUswYzFETzVWbFFtSjc0NmRkVm0rZlp2cERveVlhSGZQKzVmd3VMY3BweHd1WGd3SFRaMXlRUzM0RHlVU09RS0lxMjRVQ1Y0NHBxbnZRUzZCQzhYU1FXYk84K1hPQm9hdW15RmNTUWpPWjViQUhIU2h5Z09yazhYNHhTMWljRkZzZkRZVk5BMmt3UWJtelYzQ1dJWEwrS2hzcXVqQ0NBZTFNdyszMWxmOUZiV21vUDB0RzdZK3cyUWlEM25ZNGFuVHBtampxemEwbythMkN4ZmgyZGpmSGQ0Z25sZXQxYkJtbS9mTWxidk1GekxoNmZHV3l6SDJwamg3alJNK09OYlV3eVduYzFWRnhDNzNMZjE4M1JFcGRUZFFoajZZdSs4UUtWRnczWHRpT3A1MUpyWjArVnc4RmxPNXpFTzhyd3Z5bEpTWVRJYWhZb0RlbCt0eEZveHM4bld2V0d6Z2pPWWZ4clV0ZXduRWpTVUVJZThMa2p3VkJKM2V5enR4WGszWkZoRWQvOFdXMTBlRTdTbXZvUksrWEN4VS9NYjZ2RGhJSHRoRnZlWkh2bFVFQWRyRDFGWXNHV2hCMGxZUVZ2SG43dU5yVDZuNk04WXEwdFdvMXoydlRVV25DMjUrSkNxTjk2Rkp4K0hWTTFxUGZzT0xuUnl2WW1CWmVJV1E2WllQbjh0NWZzQThOcStvTWhzb1A5enZkQkhEc1ZhbXZwQlJFMldlZWlSbDRjMHFnYVhBeUZTM3pFNzczZkkvb1Y4U1hZNlFUcVBUVm4wdXFTdkJ6NmNWTkdpQUVPYXlaNnhRTVBoVVNxOFJuaDY4aVJqYUJCWlErcm9kWHpoSW1mTktVVDlFaERQUmZ0eHZxY1NDSG1ZejBSYVU0VEYrTVUzcVFGdHFURXgrOXJseGRoTU9BbU1DS0lxU29obCtONzN2dUxQT09DQUVsanAvYWhSZEppTGx4RlBGbHp0amVkYk9TR3dBOFIyTDViRkhkYUdSNnJqbmRsQ09EVE1iL3ZsSHpCK2U4b0R4c1dSS05TZUlGbElpUjl3L3hLRW9uZE1HZStPTkVLaWJMbFFKUEV3NkJqNjFFOTlBTHhhOGJYa3lDY3htYnBWVXdyREtvRWoxM0NvZzgzZnE3Z250U3hsMWE1dmdpdVdiT1ZkL0Qxa2dSWDMrM2VYVzlzQVd1N3RaQ1p5YlVBRzhSdVZTZnFZeWoydVBxVHR6aGY1UnA1T1Roay9MOE1LRnhwa2JkaWZja0JPdzlvOVg4VmRIcGNXNjZ6enkxVDM4bTZmZVkrRlozS3prZHpIK01GdzUybi9PV2xxUE1lVUtkU2dMa2xmb0tRQkgvQ0l0Y3JJTExkU21EQVdROFBnRU5yQW1PYWFiUE5UTzdmKzZCQ1lCR29tSGpZT3l4ai9FMXhwVndnMjY2YWliZFh4YnBEZmZjQWFEWjlDV0FxcEdWaXphMTB0cFU3ZWNKemhWWVpRbVJuamgzNDFPL3JmcFppVGJ6dVlRUUlKZ1IyK21nd2l0UnlwU1NOL1N0cXpnV1NLMS9zWTFKK2hPcUx2V0k0NjVJc05CNVUvZ3poZTBrZUFESlZzd1FBSTlXUTEyNHZLZlBuR1NITG9mcVhFb3hlbVR6a0xRSXNwWlFONTlyVFNnMC9lVnY0S1JOc3hoTG1KSUhOV3E2SitZN1dzTTdjb1ltN0hJZUl2OGJ1aGhaUW82bVVHL1JZaDBBNDY2UzJOUTc1NGxwUUwrbUE5VkczRHJxcmNvN2dpanlRMmtrNkVCOGExK0F0V2RTMldBd2gyTWo4bjA2aGFCNkE1Q2FBdHJHTjNOUW5idkJKSVF5bTJHSEx1YUQ3R2xUeW1yaWkrcTRtTGUxdnhlbi9XL3Y4NFpNYlBXcVk4T2F4azhYVEZVK2pMS0FTMVNVQkY5VFQ3cmttcGxWd3NXdWlNS2RicTdSZkZ1Q29mVlhxT2FmK3BXMkRhSXJPNmFXNk01VElHVFIyaTY5dUhNemVUNGxCNjBUY1dmZ3JOQ1l5c2F5TllhMGM0d1czUUZUUFBteUFybkFuM0M0OVFyRmtNVFlodW9lbkFVZHozL1NENUpuQzZwdmw3R2QrL2F2cGloYTA0SGpKN3BzM1p3ZmdZUk1LMnR1bnREd0dqeUpVOU4zOFFMMzFvZkR3UVAwcEIwQ3E2cUtNbGhwM0hURkxObFB3QnJiOWFyblk3Z3VGUlZ5RWx4Mlc3dG40TjFMSk1GSkM0UVhWTHc3OGpJL21NZ2JVcFBjby80L1k4QjA0WWxUUUtMYytuZGVVaExEOEFKeE5oa1VHTHNrUENUKzlPZUxMVlRZRVNORnhOa3lNcXpWVmpBaXhXNEp5ZlFzaEpTLzNvTXgrWnZmY2gxWi9Fck1tZGpuWU5QWGlVNmdKcFpqeW1wTXNFdkI4a0Y3SndYNkI2bldkMzMwcXFEeVJoRkJoZ1RzTm5QNi9TMzNxQlNCZ0k0MHRIWS95UVF1ODlmTHZCVTc3b1c0dk43NU5LbmxBT2ZHSGh1SHA3Z3Y1VEJRNmIwMFVyZGo3K2tJd05CMjM1LzRhMlpPOTV4bVdIcm0zbkFrODIvY3FrVklkWEhDR2VjR3RFZElnVzVucVI5RFNzaWxmbVN3QnptNkIwMWpCWXh0ZEhZcldEUzBMa0k5blpwQ040dURmT3JVbzZJR3pyZWFLWm9vV0tyOFdPdzNlUGZ0QnpnWHN0TnluRjA0Uk4wTzdMVjRwa0YyNG1tTnpKOVc3aGxDdXhmOVhJMEJYR21uZi9qS3o3TzNhUDh2ckVFZEJpQ1psNWRTTmxqNnQwbmQ0ZWhzTjhoT05mZHZiVzhQNWEvM2cwc2lVU1JnZ0I1YXhLekJXYTEwY2JTdTNUd1g1NnFwdGx5V2t2V1dUSTQ2L3VFdWpkdjZCUnBBbklqSHpWZGJPVlllRE1KcUNLRXUybmgvMlZaV1VTWjNKWTNwQXBaRFJtSGFXdUZWYnM1a3NoT2ZVMzZNVnZMbUx4K3psb29KbjB2QkRCZnNRajYxZm85WTBSMVRzS1JqSytnNFF6Q0xNUDM5UENWN21LWGt6Ly9ZTGI2UjcvMjhFRUo2bmkzYzNseFdoMTRzcU82NjAxTWVmRFI2Y0pJaEgwdUNhbWhvS21objVHOVhGSzNjT2hGVmlVR0xKa2VUY0FtdmtONWF6cklqNUFLSjRkZjMvaTZObElUOGdoV2xqb3E2US9uYVgzSEdHRDE1UkJrelNPTXQ0Y0QvWElTVzlublU0SjRRQ1MyN0dWK3YrVDI2QWxOeUQxQWFNT3VwMy9sQ09kcVl0cXNCcUtRNU5oRng1alc1SGlGVXlXb0xkRE90enBoeURKNzdzRDNJT3hqSDJjQSttNk5hSDhUY1hPM2k4RGlFbVhFNnNKenJ6UTNCRVdaeVliWDI4TWJjdUhjSzdLZ3ZQaU5KV3BLWXEvV1VRMzNpUUQvR0k4eWgya3h0eURxbWpqa3E3dGV4YkhoNEhLdm90TXBHYWpYS21KdTRJVCtkV05ReURJeG4xUStVMjdiSktqSW1qRWJYT3I3N0tLTHUxYWFHdUM3TmZsT2RzRzlYcXZkeFJBSnFxZUt4S2RUODBUVjJEcUNDeUlzaXNseGRQUDMzQWlrbUFVVHZsb0JRL1ZYTlRxRUcxL0VlaW5vcUlkanBFY0dTUXl2S2dTVUFjbEt5RXBlazlLbGhHVFVDYzVhR21GSXdTZVBORzZ0Qmk1RW1FWWdtRGIxT0xBU0g0TkVvZ0I1MnhBMmpkei9NdVZTVWJuYno5MDVpZGgxMkJWb3hRWmlDVkhWc2h1VWM3Wi9RZGhUS1hOWWI5R0ZOVTEwL2pzM01xMkJSZEw0NWRSS05hSFhBckoxQ2xvRWZhL1d5T0NVZUUyLzdUZkpGcDNGbWtlOXo5aTkwU0EvM0xyVzJKQ1FlR0YycVBtR1U2WEFsN1dYS2tPK2VJVEFYeXBSLzhEM1hQbTZ1MDNROTJPbGJGb1laajhJcjlQRmNEQWVreE9lL1hIRlRHVUpYMG5VYTNRNjYzdFhxeUk5MHBPTGttNFpyOS91c1Q2RGI3OXZxZjF6YnhUVU1SNmsyNy9saFRiWTl2Yk9zSnljUHNPeEVvR212S1JLZHFnWFI3S2lQcllDQ1VoMlZjai9PT1JnOXl3M0RDbG40WGlPcmg0N2JkbFFheWtqMmVNMG5HZ2ZucC80ejRqRTRwRmczaDBSRTF6NFNhR2h6U2ZINlhIZVZUVDNEdWUwbDBUR0NGeGpEUkpxMkhiQ1p5OTVzNW1TNlhIZGxQbXpkSlpZM0dvUnpibmJGM2JDdFJvUWNJU3MyZ3dhY2w1R3d4ZnJ6UGxvN0hXZjVocy9GanFNeWpUUWVqYmxqN1dGRXZsTHZOTlZXZ0I0OEFBMDd2NWw5Q1M5RGs1bVRuWXo4RGVhNTNBMEFSTXozUFhHYWtoUFl4V3FUR2NJbEI2NEVtNzR1UVU2U2p5aGxVd1V1dmZZZkZWYWVKTVF3b2hsWG55bWtXR1NmL1BTZlVlKzlSbzlGanhBL1huS0RKbTVvek0za09TSElQOEFDZHNqdW1qMzk5b2h3bk9uTGdVd0xvQjhHWEJtOG9FaUorQy9NenNpVHk2elNEZGo2VWtRdzR6TEw4N3Y2U3ZObWFzV2U3RWdqbGRtT3VvZmdTdERQYnlGUWthWENrNUpkMXVzc29iUlV6SlhmMjlkWmxnS3VSV055TUEvNHFFU1RKRVlpL1I2ellaTTZPaUl6UFNwZ2dhK0FHV1pwZjQxNlc5NkEzelovQXBRUmw5Z2lXbFdBcUl1eWMrQlg2NDlsYUlGY2laeGRzOWlNcStETFA1OFJneFNhMHJ5TDdLRG5ybkF0dVQraHVXT2ZjOWpYMzFpTDIraTkrQXVlQkpJU0ovY3U1Z3FHWC9LNUdNWi9FVERJLzI2bEtSOWh2aUdDOFgzcHJoNUt4bU5scEgybGdvVUhPNVNRZ2wrR3BtL3d3eHFqdlg5YThEMU1RaCtDYTJUR3lyamVKWHhHOUdjMExlZDVhck9WZGlGQWwvSGZqODd2WXFWcTA4RXBGOGFscXptSzZnZXdjT0I1ZjQ1cFlad1RWUkNiK1dUbldIY2ZlY2ZxWlBheXIyY3V4eGxYZG9oaWIyczdRWXV2WkRZSVpmSHBWVWF5Qml1UlA1eStCK0dMRENuOTgzRGdjZXczcHgwdFMvaWlHRzhHWkdsN09IZXZWNDBPYTIwSzYwM1IvUjZrTXd2dFc3WjlNaVFNc1FzTHRsZHFCNG1EWlkxUENqWFpLeFM4SDBaaUFEdlptNzVLYnVQQ3pDYkFxdit2L09oYmlRcEE5UVJTdFdvc0s4cVdtS2I4NkVEVWdrMEw5WldrZjIyZExzQlFGaW1nQlN4RlUyc3REVFVLTkV0cWxyUHR3b0NEbm9pZFJyK2U3QVlxTlFqYjYxNTJrbXQ2OThURnRBWloyZWVYTUdST0VFdCtRek5CSWkwVlpZMTdlaXZhV2ZMUE1DdHQ2cmRoekp3REZ4U3BWZlMzMmhjM3FUOW5xYTMydE9wVWQ4M0pwcjhHT2hMZlFMNDM4WWFYYkVpcERWVkc4RE1tTklzMmlJbDJPV3dPdXBXa3RxZU5MbWNBUjBPb3ZTaFdCNC9xa1VveDN2YTFzYzlmMlMvVjhkRThKZHJIYzJHQjJjcjZlYjNoaklKejhqcmtKTzVRNitnZXF3ZVhSRkhhb3RPSFdYTDg4Tkdid3R4dXpxbjdhSU5BdkhKNmlDN1JhdDNiKzB3bW1VY1B5T3VkQmdrWjBMS0NIMEF3djlWVzg3OTRwZ2xPQ0ZxUVBuOW9jVGhZVDl1KzV2VHlEaGJJS2E5b05tVXZDVXpDci9leVc2MkY1eGxmWUF2dFFFMStJRHdlSkdNMm1SdDNLYVliMmFodXk4byt5THYybG43VE0rVWJJNEliUTlteGJrblE3c1QwdzhiTncrTHlZTFVrMVVKaHZTN0luelUrNXlrMTJ4ZU1yT1E1MkRUcTVXZ2RyYmEyNm5Da1plV2NmSkxpaDRiQzBDcjFtQVkwSXAweVpzUnNnYnkwQ3JtRllXdEZiVURYb3R0ZVd4YThVakJGdEdXSUtGL3JYYVgzNkQ4Qll3dHZJaEJ5STMvZENsZWsydG0wTUFvWi95d3V2d1gxSW11TzkvT05VM0p4WXdENmZyRm15OGVEMGdWUGc5dlVJeTN0Rm85ZUJ1VU1qQWRKZDJPWC90eFBsa3psSkkzcHYyd2o1SnN5dkNkVVVhVncxeVFxcmZOSjVHbHI5Zm5QZlhtRTMvWkxJSW5rN2srdzVvaGtnVHFHaTJmaHFqZmI0N3JtcjVxRlJ5dmZNYnkwZ25xMVVxcG9uM0RlbWQ0RTlyYVJqazdtL0xKY2RuRmVna2xIYkNJZHVSYXY1Vlg0MjBUbHdWaWg4L3d3UXpDMEljUmpRR3dtUStRL2gwK3R4bjAwQ1lzR295UGZIS0ZFZVRoR3l6ZEVSWTE0WG5OVEhDZEhFSmMzbGR0Q2hZc3pOYkx5eTBkTWxmNHIzd3dMaW55YTF0SHhEbkkxakVLbXZnNnpERTd3TmpKcjFqTnplbm5WbnVaQzRxQ0F0VmVUMm8rTEZ0dklTQXlmdmRsY2M5aXZ3ZlVhTmJ0WWJsV2QvK212MjVVM09UVWUyT3VuK3hKa2E3QWJiNDA3R3R2ajgxL1JTdDdLb0NBV0pHT0UvQVF5eE9NRzZqQVhZOHEyY0o0djNnMjFKQnhmZnlwWkJGYlVxWHlhSVJXRVVJOWZ4cDBYa0Z6V1NqZ1RmdzNzbnQ0akFEaGREQmhmQ2IrWVJRbjR1bCsybGxuZEt0WmFVcllRdkdNREc2ZFMxV0tHTWVuYWRMeko3RmZ0VVhINWZnR0RaWW8zaXJ3TTNNdTNkY3AvRnFXOUJ2bWpZUEZLWHlPd2dPaThMZGwrZFZFUitoZmJCNnZzTGltbGVoSUhVdjZEdnZqSW9XcEdNc3RYUW52WmkrOEt0WFl2WTZCWVp5U1IwZERGaDlNckFuaVdVbk14RTBVa2dFbnNnUk9mTTAyZWZCSlpqQXA0K1g5N3BMNFd5TUt2Tm85UmFNM0VCckoyTnRaRUpqOUsrTFN3ZjZVNlBlLzFSMDUyU1YwY0ZNUjV6QU9IRmZqRG1Hd0gvQVFLK2pBWXBXc01aNWVrTVVxR3BPbnNobGVVb01KQndnUzQ1bVpMeHFvQ09LeFRBd3JSemkwRjNkU0pndUJlVlFwNUV0TXBOTFpOMDRZRWltSmNTZEU0MWNLN3pxYS90OTgvNHdyRVFoQVhuUmxtOU1HWmhwNzg1S2xLQitFajhuVUJCY2psaGZaa2dYS3ZWZFVZeVRhaThYeXlVdFhka09NalBmRXBseGVWNDBnd0tGMVMwQ0cvcFlkcHhsZHpMa3psejdOYW1lRThIREJIM3pXUnRkTm5GYWFQN1pSUWRhYksvRzJndjl1WU9xdXd5aGthaGFYWFZnU1RRSmZHVE9mcnBOQnZsbTBtSFhsSGovWm1ESUlOdDcxSzRkTjNib2NST3BPdUtRQWZnaEpiMUZCWFpCYkZCMWZjTThESVNVUnZDa2FKSUxEWHBKelhQekhzRXBRT2VFMG1leUJJeHlFV2F2N2h2UXJRTmtiT0FKTUtGOWg1NjdnWExZK1l1UTRVWGg2Q2VpdVJpOFBpcmM1R09KblBobTRtbklTZWhnMWZOZjJiQ3VZQ3ZOMnhmbU9jWDdDbTloMVJpb0h3VFhJb0xoSWlWMVlLOVJWMHVpTkxSMlBDWTNCanQrbjExTVJnRUxZa2pIY1FWcll0ckhISVltSjN2TlJJTkJjbkNXUEcvbUtUV2NCdDNHMEF4aGM3ZzVESlFhUVM4QnFESGhNWFQrbVMweEExNEliYTUxZFJ4Q1UxYzU2c1ZHQ240V3FoOVhSa2kxNmNUaE5XLzFYTUhLRGJGTzBGb0cwQlluMW5zUXZvU1lpZW5tUTRwdTJCZDg2VkUxVXFURHhNL2NrUjRQZUFkMCtTK0Z1VTlIV244cTZjeGpWcTVOVkxOZkIrU1dlaWZwb3JDb3R0RVQzUnhHdnNhdkN6bW5nUmJ2YThLTjBmdkhoMjZhNEpRWUVWMURzS0sxMXIzSzhSbHBhSGtxd29CQkhDY1FPd3c5RmMyUElUWEFnRVpDcjJ1SjV6UnNUOVZpMGlzbnZoZ0RKUENyQWlKUnZUYWM0a0crdHNpNGJRWjdjcDZreDR0WlgvOW9iS2JYem5GSXBHVXgzdnZlRFR2Ykl1bWRlZlU3RndseHgwMXFtWFIwU2REQW9ndUxzR2MwbGxFb2lxdnVIVUw5eGdyR2t2UTlHbzA0RExQNzQyejg4THBrTmdhempZTnRDRUFWYnpqb0Y3QW1QWmdHdkdPejlIUzEwdzR4TzZCWmlrRUtNc0Z6anR0c0kvTkdyek44eHRyNndwVVpYTHQvaWYvSTd0SnVtQ1NMaHNrdFRxWC9OOHdjbEd2L0NZWFpPaVRza2toL2lXMC9nelR6NFY2TDd3RzZNRHNoQ3JtRzViZDRZMm50WlFSck5oLytSTGU3S0FjeXBrc0E1Z1RXYU9YeW5MS0pkU3JKWUFXYVFYbFAzYkx6WUVQWkpveHY1ejVybG5zTVlkVUJmQXdPQ0dRd2o4cndXTXo3U2tnTVVlaDNhNmlvVHRod2pLU2ZHVGlKTTMyaHF2a01hcTNpQ2NNTDhzQTByRDlyMFQzdzN5K3B1YXp0aWxvd1BORWpnYk5uTEZOS1d6ZTE3TitNVkRhM3hZTmxKTW5OeDB1UlltOTE3d0JZZkEvQVk5U2MwNWZScURzK20yeWxoRXVVMlgvdkJMQzA4T0gydmNXZllpUzVIWGNaNFdZdUY5MW5tM0IyT1ptd0tCQTlRWDdjMGdNdjNiM2p3eDZqMXZCbWVLRUl4ZGRwU096TUxEOWt1WEd3dXorUXBPSWlZWUNuMkZPRzJoa2E0SlorWHdtSHc1Y3JWaURIeTg2VURMOEVIUWhvYzFFMjNnZDl1MWF5cEVyWGN3azVJY21XZkZvUEtMWlFUMGk1ZVNXaW5JM0tseEdqenpxalFqbzdXYy8vQ3JWWHArUnNIS2xXbVZ6cndjdVRKWnl5UHdUaUtyU3JncERLWER6RXkrbTFNY21JVFNyUTByaTFpTTMzZG1mellXT1RYV1ZGbDJUWklnQnUvS2JxSG85cWJ3dmRQQ3FSU0VoYTRLOVpMUmljQVVkWEQvQmZCQi96VldsUHFTSk5ucWQwUWo2eUp0UmJrVlc5SXF0NDF2TW16UHNRUWRCakhQUzF3eS9OemRBNnJzY3d0Q1IyNWh4djZlNDNqdUM1WENNSDdZbEpaN3pnU1oxVHBqWkJQTXg5cmVjaXdzT01VYzhMWm4xd1BNd3F4T2syWVFqTDdzRVBnKzFabkZiWmg2d3ZpSGRGZjRhN1I4MWxnUEt4bW15aWhrWG9XS1I3SVpuTkJ6TDBIZXNYZTMzaGZiTW1lTVM0REFKU1V0d0Z3Tm01UFIyd3ExcG1mTnFVVWFHYmU1YmQ0Z1Y2clJndnE3WHk5TktFR0NrUnJWLzYzQkpPZitFdGh0R2cvZFRHV05UVXNzMWpwblViWDFFNmpQTWF0ZjFUZFl0MVBiM1htcEw5d2Z1YXdjU3ZldjRtMUFBR1kwZWhKR0ZOZ0RlUjZCU2U4ZmxrV3FPTmlyNG5QUGlET01qbjBZN1FoU3FXNHNYallOb0pvUGZ5MkRzc3FTak84ZmdFOS9CdmRKbHhlenJlejFhd29IV0pJaVIydnhSVUM3K3hiN0JXdWlUMjQyQ3NLdTFTTGMvWGlKcWVCa25tRUhOaWNLRmdweVVRMkMwdGc3QzRISUw1Vnk0UDBrRm9Fa01XQUJlOUFFVEg2bjg0YTk0bUdKK2hsVHJ5RDZVamhOUnNLSkhydWZlWmR0TS9QVFdrTmJTNGFMWHR6T0ppOHNmUjAvNUxGZ1RCM3RwT2tFZVVoR1dHVHRMTzFZWUlsTUk4NjFBQjJkVU9NcXFNZ0Rxd1NONDViZEUxR3V0VENyTUlXVTJ1d2lvRXhmR1J2S0FvMmdhcjlhZVpkbDNEaVhUUW5qTDRrR3RscHdnYlFmRFJtTEVnbXROMWs2aVJBd2h2UkpOaDJ4SzRWSlJyZlRzUmZFSHpyZlF3UU1kQ0VRSGpPNFZvMCtYQytsZkdhWmhKcmdnUlh4dUVGTWNCMkFNVEdGcnJvUWcvbk8yM2lxbXFCN00yUmhiVXNxQVNQTDlTUEQ3WERxUUx0SG9DVVBJUGwzaHdPb2pWSjVlRk9YQTBKc3c5aDJFQmE5K1QrRnhmRUdjWUR5SmxlejhLZ0NBN0pRTkw2dWFqS2VOZjdVcHFyWG5EUDY3cXA0c0pSZEFZVTNTcjR0MVhZUE5ya25oMHFrN2Q4dHJycllObTFXVWpTcnBBc3N2cEtGUXcwYnllb1pjdURaOXhUek5oZGFHU3ZxMXYwWjJkRDMrNEJBaXhYZVRSbUVwb1U1a2ZmdFowZ0FmUDFmYkQ4ZlZROVVBVC9TR1RTWmdoWnc2Y3RQLzBwd0NUMFRBbElQZFN6cG4zckJwYWN4ZVJEV1EvSXFHbmtZUWVLNCtWV3R0c2JPSTNqK0xuYXR3TWlSbThUSFQ0dkN2OUd5Wis0OEtKc2ZmNHlFeUpDTVBxRGpKbjd2NWIzd3FHVFEvODBzbG1zNHdzbUFzWW9uWjJsbmpRQVBEWHFVOHBUUEMxbkIxM1V2R29QNEtUcTNnYTZDTVBudDJTTzUvdnZ4MDN6YXNSditXTS9GWXJ3cUJqTks4bFNMb3o4YURCcWxwMGtFQVNSbGtTRmo5THg5MWlRTUpqZjA4ZHJ4YVArbWtCTEp6dGFHUURkOVJCRXNPT2xtR0Rqd0tWdGx1QWl0cVJEWXNUbmJTTWxYREJvOFJhRklDVFh6a2VNTHZHZWs3aU5wSlpuZUp6V3h0bkJ3WEM4c1FobzhpL1owcDNsYU1VTnR5TW11aElVaGdsOG9XWEs2WFk2dVYxNm1xMys2djkzVGxzbnZMczhDVFBsNVFTamo3MGFoUUJOMElqR051QU1pYkVyKzdVcTltTS9SM2N0MVNlb01nWUpJZS81Y0V4VWQ0MXVyaG5sL1RtT1o3cUE3cUdOWHRtUW9hKzEzV3hCMDhXZXJncnFudk9qb2grdGt0NUZkcVJmdVJJdTQ0aHNub1c0SHlXMTZwVGszUkNVOGVaV3VWcjZ3R05pNzBXV2JaenBKeGNucTdBcnZ5bWo4RHBKc3Z6WEVGSWRWNkNtVysrcmtESmU3L3B2Tnc3SElvZmpvNzAvWnU1TUduK3ZUcVZzTmZ1aFBuekxSNmZzNG8ybTFQSS9KeXBZY2k3TUJkaC9nWmZNRU5qRGs4b1Y2TkdPNkNoSUp6S3VLTCtOZlFkQ240UUlmbUxVbXlwQjdyZStZKzlZOU40VGxjWU9tTE9rRmdwRjJyUXZXOVFLQ0kvRXk1bHUzSDJCMkRmcEZ6MkdET1hJWm10ZVdmLzdFS05kdkNOaEdwMURsYUl1a0NYVjJVWFVBQURpMUV4eklYU0l0aEQzM3dmYmJsTWF0MkE2UjdmQm1Odnk0UEtFN25GY3ZuOVErYXgrMGpUMHJ1bGcveHBCZ0hBYW5wSjVZRUhLOEFUSG1UbldCOUIrN2ExSzljeTAvWU55a05CcTNsZlFoZHRiZHZ1eEVGUUl2TDluSm9YTDNIT2FFdll6Y3RvQnhTZVhCTVY0WmgzM0ZMTUxuK0N0aHBwQTREVDQvSDJycDZWY25LM0FFWkdkSEZ1UlN6cUpQaWdPbE5VNTc3YlFRbkltbyt1VW9Jc2YxVE5NeW1ONVRrK1J0U3FKSG5PdE9jckpBaXBrVUNqalFPbG5sanJxWUNkUmRzVjU5S0RXbStyajBRUE54MFNmQ0dGb0xaM0VnVElDUmFQRjlVakU1LzZEKzRKSHVnZk1VbmxWdHJheDVYVWk0OXIzNnpDeWZtdXZhYTZFUVdFOHNtdHdGeldqVk44VnZuUi9EUkZFYmhSNzNHU3d2VTczeENDamlVcFBpSlNWcWZpM2xCWjMrZE9FZENnZ0JRSStWRXJkMjh5NTk2LzJGcklIN2RiY21DWmtCS3BjL0FRaEFtdkVEZllNVHlNMUtUUWdQR3N6OXZ2dHFtOGUreEJrY252ZFBsZnkxU1BSZXltTEdXZUZRc3VPbFNpd2x1OXVRTWpnSWt1NEw1RmtoQUxhd21ldnM4aGxRR2YzYThmNlNvZ2t2bElCRmZOSUhxVWpsZ2Y2MmY2VGpVQ0xBbTBPRkJjWEc5RFkxSEpDTmlKVWE0RWtvV01ET1h6T2xzbVptcDNzb3h2YmwveCtDYm9KTGhWRmRZU3dxSVJPNEx6WC9mQkEwYTFSNHhqdVVMeVdYSGhiK1lpR01UT3dDVDBwQUpZdDEydGFteEg4MDI4enR3TnlkTHNldlpmaWx1c3QxZUYxV1NZNGY3ZDVQcDg4N0lyN2JWR0R5NkU2aEJJbWxUT0ErY0p5UUtXRjZteVpNckl6dHdlQ3VTNnQ0UThDU3gvUDVKNnpLWjl0OTBmeWZBd1ZYWFEvWWZkbTJwWE5DQTQ2SEFWZkhuOEdNNzlsVkFtRzNYQW5DRFoxUHVSNDdIR1NQQXhaOTg4K0RXSjhKUzBsbUR1RXVDRW42VFNDbnRLUHFDVDc1cW45bStsREZRVmp6cVpvSjdHcUhDNlBvRU4xNlpSVGtkMEZ0SmgvQWpDbjJncEpmTFAxa0RKTVdOMnlvRVZKZWtWVTlXWHN3czl0OVZoVktXNjlERWcyek96emFNUjRxdGF1NUFyU2xWWFp3dVRCQm9kYThBaEFrV1pnN21ad05tSURna0NzeGxIVGkyOVhkUzM3QjZXbEV1cUs1dUtEVFlzb0NOR3hQN0tJS0pQQU4zSmdNcFR4M1NXL2dwVW91bW8wNWhRdWRMbzFHK2EweTdXSDBsQm9yV0ZMVWZ1cXdJZi9oVzNPWlB6bDVZMCt3V1VrYnNmdzBaeW16NzBEZ2tqMUplTkhtUElBZFNJY0FWTWV4T0FsN2tEL1UvbGdjUEhIUDRZUHNNT1JZNEV5L0loSWRYMTUxeHZCeTQwaklxVlMwSDY3YmtyMWFJdFlzNXJvV0NwR2dVb29wNkd5S0dWU2RsL3huaHBEcVBxUGltUzFRTkRhNFMzUDl2bkU5c0JGL1NnN2VTbjdTY1JlYkREUW8yMlViUm1scHZ2WC9zWjBCNnllZHZKZDBMTVhkbHpKVmRIK1hvaStWRXMzTlJqSmFSRlZNNzRDdmRHT3ZqMzZVU1hwVmhudGxyYTBnWjdTNktXR3k3Ni9BNFZEek43VnVTRUpGZ3kzemJLUmZwWEY4dVF4em4wNkNaWHdxcTJSaUJFamMvMEwyVS9VVnZCbS9UZkdvVFJmZFI4UlVSbWp3RnMwUHhiTXlPU3A4Y1MxNE95Mm4zWlM5eTE1WG4vcGppNXF1SjBwY0xMZ1g3VUxFQ1VKQTdTM2w3amhLK3NZeUE4VkdnZHdnVldZOFZ0T3Q3RVl2Y0hRN3NoMnFPK2FrRmxzSFVCekhLUDNXdzk5NHFyZmhoMGJRNUpBMW1hSWQyRHZlMzRIVmFuc3ZmNDg1bU1xVXpPNlNZbTk3ZnZ3UFhVdWg5TVZ3VUJjRmZMTzc4YU9xL0VSNzBxeWtXRUxzQjVRNUVuazlJakFJazFHMG51bDhWVVBIVkN0QXVUc2RZcjJOZ1BwanF3b09HbGptYUhMd2UydE5xYjNPRE44TjBUV1Q5V3RKUmU3aTc3UnplbGtjUUQyVENFUUsxdmVodkIrdTJyRjlVWmRpZXlRN3FKWi9aNmhCNWhRUCtYUWljMEZyMlF6TnZjVmh5OXAzNUpjOVVzNllkU3B0NDJyMmVkczFiYVpHM2tXQVBCZnJrQXcrQjFCUTNtYmZGQys0SmVRam9pd3BPU2c5c2RjV2xXdG5DbVhuUkFRSi9adTVjV0JYRm9ISXdmSGg1SGsranpHeFI4Q0ZIb01DSDRibjBEQ1RYVkFvOEs2RjJ5bndqd0oxMmNKdFZjY01LTEgrNTlzRUNjVkdlQktHRGxDNE9QYnc2UnNmblFtamx0MXp0MkJOMjA2SWlHeWkwMElLL0k5Qmk1K1ZpZDZmQlZWZG9YaHRGa0MrNVEzMnZRMFU4TmtJUUlJT0pXOG5kMWU0eFplR1RPak1mbnorWm1aOXFURSs1TmEzdjJEQ0FwS1d6Tmg0U1BiS2xMSis5K0pkcUJwYS8vTUc1Vm1aRjBCYktKekFlQnp6VjJGd0twcy9mbi8xSmFyMmRRVExHVEZkVENaM0NRVUdpYk5YV3loN0c3Wmo1VFUxeWFkc2lpd2NCQnN2WjFyQXpCTlNGenZZdEdLUjBhc3U2dm9Qejd3K3F6NWVVdWFnTHAvSXJPNENzQXV4UWVUdkJNa2dGWURTREphZW9nemxxY0pNKzNRcC9uSmdwVm81UXhGMDZjL0RoSFgxcTJqb283bWpGRlhWNXQ2ZVMrbFkybDRQcEUxMXFDM0hkbVAwRVBMMVNadTBwY2lNRG9IdVZOQ2pjZnRkQnJKZURMb1hDT04ycE5veTRRVnZrUVhodTUvYkxieHFkb09aV1pldVV0REo3YUdsTXdKajVuVUJiMWhidHpwL0MwL3JRUXBRWVRVQ2duUXpGZmRlZlBxc3hzMTV6UnI1VEhYdW9WTDg3R0tMU3VZa0twbmtFb1ljQVhUNitjNU9Pc0puY3ZCUElKUjZ3WlVzYU9GNnBwNXVPV3A0T1Zvd3BhK0ErTC8xaHAvUTIyWDRHejNla3N4anZUc0hzaG8xZEcrTDJ6alordE93VU92VHFRZlFxMUNmNmJyYlh5MXNLek96ZUJ0Z2tCV04zUzFOVmJLa1cxWEprRkVsRkNBc1FrS2Z2RUt6SnZVYVVNdkdWMHF0MFpKU214V05HdkpCWDd6djNCYTZrdDA3NTh1dkxSaEZPSTF0TEVmN2Qvd0o2cHpGWXptcXZTZmQ0MmFidUd5T3BxbUU5bURKMURXTTJ4SndVNEhCOW80ZzE2UnEzczVGbTRzYU8zRzkzUE82dGc1QXBqUCt4NmlaUUNsMlJTdWZNYWIzRFhReFVKVVhnMHpGT1dEdCtsVWJIZ0tMaU42UVE4Q1BmOHc4WlEzQTNEWGQ5aUFYSnJ5dDM5ZlMxS29BNk9SUVVOM2lWa1ZZVTlLVnFLdmUvS1NRSklPbjEwYWZkSmdRUVlpLzl2bDNwb1N5MFdtczVBaHIwTk0zTEFTeVBpbm1sTCtqT2pWL2R0T2Z2eFc3aEhldGdYU3BGZm9KNWpZbS9RRnYralVVVS90S1V1TldnWW1uSWk4Qy9KOWtSZG1Vcm5lRVYwaHZZNXNGQVJpUWYzUDFoRDkwSXNMMlA5SFVYY0ZVVmNIa1htTnRYOGo3NXJQZDNYeU1JaFVQSXhOa0RtYUpIYnQ5SkxmQzFEZTNOWnp2UURDbDZGRmdyME5Jb29RdmFqSThwM0ZZbFZyZmFPLzhMbjlVOXJFcXluck9lUVE1d2YxeW5FN2hDRU5aVlJtTG5EaVBIbXpMU2xIVFoxQ0x4SStza3hyb2NGbEZackNoQUVCY3BQdi9Xc20wQVdJRzZySWhaWUt4b05TejZrTmtkVnBKTTM3ZERrUTU3aUFxbDY2UVdPRURRUkNoVy83NnVZbHR2WTJ4bHgzdXFyTm5nTVF3OW0wa0h1R3JnZTJ3VGVTdkl6YzR3ZnoxbjR3WE4reXk2WEh6WWd3cWRhZlh1ZlNnU3ppMEkyVFYybWZma09WOC81U01mNHlhUlF0ZGQwaEY2SWxVNnVRYlVhZ2tDaEFWMEdhYW11TCszL01BdE9wa094c21TVGUxUmpPTzdLa1RncWo2d3FCUGRxUkVIMDlSd1BoazVBeDFOemNjRUtGWTBlNVRVZEhiTXpVdGRxeHp6a3AvOWI2cW9QWmJoZ295SmQwZUxyWVZYV0VUMjRaWUc4RllpaGc4akU4OWN2YTRrWkV4eHJ2M0RVSk81ZGZXR1FBbzMxWXFVa1NoVjFkbEFMcWxENS9EbWNzV2N3K1BRcGI4RXkrUk96eUxGYTg0VG1NeGZhSWdia0hqcWtTMXloRlEwR2prMjFoRWFyWlNydXZRb2JXbFhhWjRjV3R3eXpESmpOK3dZbkJ3Y2czTzkxbFdObno4Nk9tQVkrbUJSY09TV28wM01vTTU3bTVFZzRyWXBQTlRaazFrMnhIcHJGRWt6R2RIRENQeGV1bW50VGM3SzRwblc0WjZ1aDZmN0JIWTFPRmVMNlZQUjE1dzh5T3pjYTIyS3NFbzlOVGhUd3FyaGJBWFplTXROeHFrUENDVnl4cCtwYU1wZGpMQVYrOFRHa0NGWTBEc0tzbHlkcjU0c0h6cys5dlN4MkMyVWRVQm1DWmFSS0hFbkVUTW5sSWhFKzZ5aE50Y1IvdmVHRTA0M2NYRml6ZEVKSlpyQjBuQnhJbThJZlJJWHc2ZE9IdEFiMUhSU0I0NnhudWVLaVZBc0VoTGx0VjlvZm91RWY4aWgrRUxLWW1yRDdNWFVRY0VUTFhDRUNIdlJVWThxM2xtcTFOUytFT055eC9kRUZZVVEzY2poUmlSY1c2L3JxZXpzNzdwY042SG1Ebjl5cVNFeU5yT0lMeldab3VBWklNQ2hyZG1Oakw3YzRpczJPaFQzc3FvbUpRMDBIL3AvTXlOUjJxanZFaUhIU3RmZjF6Smc2VFc5UnBtWVVtaXVMVlpYZ2g2dE5jZmthUDBlOWI2WC8va1ltTGlyNUp1SGE4RjMvbFE1ZG10THFoSWFDUFk0RVYwOWNTT3VGVFhJZHhmWnlLY2NPRzNvM2JwTmk1NXlKbURJT1RwbVMxNFJDNW1SSTVsWDVJMmkxYkZsa1FFMXE3MDFpZkt3WkpIcmQrSjRBVU9Cd0FJVk5DQXpSN0dkQXE5NFNWZVJUQ2tIY0FqdElSWStrS29sd21ocFNIZC80Ni9zL3MxNUxEWThGSzBCdDd0YUVRZnFEbzdURVc4UWhmTWVHRjczRkZMOHBRVlpMZ2J4UmpNK0M4azM4aVVsZDE3NkF1VGRxOXpUUTRlNkpkTWt4NFBQRHgyUVhDWDNnMW02SzhZcUNjU2pNZVJPcVpaWWhmWnBQWjd5MkFDc3U4dWJ1UGQrOTA0U0dxSlVJejVuNFYzMGZYYWdyQjBQN2svc0VwTEdSZnZNYzArN0lhdXhXaFErOTRGNHk1TFVxajYzamZXUERaVThweXNhdlFvTFNZVThHRzNhTysxTEV6Q0N2aVhGNksvb2t3dVJtQlZlMzRGdmQ1UHNlME1EMERqdDB5cTNXUEprT3pla3lESytxL2RzYlVQRlE2TXZ5MjlIQVlMeWw2V3ZSUzBCYzJPYk1RdkJiaTZBT2xBUHNWczBXSW0wNTlKdWhIT1BLZUVWT0RmQUVrYlBlMVFzam5pNXhjWExDZnBZYjhsMWZmSUllWVNUQm9RTmhtclNXazhqdEpBeGVKdTJSdFRJd25zbUhHT01nUGFLVllnM0pqTHlzeUJ4aEpxZkxkak9lekYzVitPYjZqNHhaVk1PUithY2pLT083b3N6SUZ0M2lsQU1KcFExNGlOR0RjeXRYelY1L1ZsVmRubjFkRGhvSkF1Tll2T3pBMWhuRXBxSjBYZDczS3d4aGVxbkVRMWRxMVU2NWUyMmh6aUxHZ1BzNG1nTDB1Q1l1a2hOT0tLSk9QT1dWSFlIY2p4V0lSc0szajdpWUNxU2JvVlZkTnNsbndpZEpGUDg0bERSSHhEKzJJTHp3c2NZSm54NC9Ha0xGM2tCdkhUMkY2S0N3U3NWa05Eb0l0NzZDbDU2VWhGbzg0dXdQMEpZSjFLYlNheUFiYXRBN1lCWWFubEVWOFJFRTdkN1VaNmp4VjFZc0lSNTYyK3VMeFdncDdKVXJ5dE50RkFwa08vaGtzdFJ5TjlBbEVZbWFvVU5nMmtlRERiaG5OSkxBL0JEcFFOVW9mU0NHNFp6bUNWSml4cURJNUx4cjJMNGZPWlJJdVluWXZXZGNDWkd0b1kyMG53c2R3QWJ4bWV2bmh6dk5lYWFoRDJjOFlxbnBRQ2xOSTFuM3BHTkdRY2VhZGg1YVNISTFzMVVWak9CQURWUmNrcUVYVmt4SFAwbXRFd0VoSzFSTVc0RWVHcU5FZXR0L25EQzN0NjhrSVNtNWJ3dXhtRmdibVA5Q3VLd3NPVThxY2xidExKdmFVN1kvTmo0bnpTTTR0OWREdmpoT20xeGhXUmVzVVJCcmxIaDJRZFRNVTJZWnFGd3ZkSW0yRWpYSmRrdldlOUtVdW15R3ZSZEpQQUFDZmpHL2hCNk5HMjdsNnh3TkJ4b24zaU1Rb1VDdHNEMGJYRlVrWU94NitzRWtxcXdSY2RpM0NSeW5PdmJRbmhnQklYM0phMWdaZWx0clpXMisyTVU2TC8rdEZqZTFYZTRNL0s2UEVRNDR5NCtEWlROaitzWVZvSUc4dlpNcUl2ejMwcCt6SitaT3ZVRnltT0tzT3h3VjFjRzRrazNYOG9EOG9aRmtSR0Q3TVdUNUFVQTc4NDc4dDR3SUdrdkxNejR3NXpVOVVCTVcwRW1KYytYdlV6ckFUZmJQSTlGUFROOStuV0xMREl4NnRjbVFmZysvbFhrVXoxME9MM054aVJxTEV0OEVKTzJJbmpPNzNDcU1DWWNteWtJc1l5b04zc2NQYjlWOFRyVHJOTnU3OUdYa2Z4Ym1MdTJmNnc0c0JZQzhuL1Y1WStzbWl3aXoxWlhpMTQ1b3ZUbkwwcDNYRTRSVjYrM0c4RHovV0dwZ2c4UjVjVTRicmNHeGY5Mlo4bVZ1TUxYblZ6MFMzSVk2ZDBYSnBVRXoxTmNJU3ZIV2pBZ0dnUkpVMjVSdVR2L29GRHdSMk9zVmdpdHhXREVrL1NuQi8yZ2hvSmpqZEhkM0ZGUmxQRmsvMWpHeHRuOTJZT0pvc21JNjhEckNPSDM0RTAwUHNibUdKeVliQVd5MHFyMmRWN1ZTZkVrYjBEa1JteXJtWGVxMFNPRWs2Z05GSVRVd3lsbFMzYjNjYStOVTFtcjNQNExZQTJTWGNPUE11b0JYVWVFNW9Ob1V1SC9XNHYyZDFZNnN2d0VvV2N0OFZyK1ZhZWN1OXBHOUxFcDlSblQ2Mmh6K3NhSmd6bmk5OFhNYjMwM3dKMmEwck5YYVprQWp4czNxQXdkZlhHc2hDVFZTSEhsbUtGS1dJcG1jU2ZlamxJdGpvMjQrWk5Hb1RuMGZHWENUOVFEdnEra3ZaRmNvTHg4bll1VE90aDJKc2NWN2M1ZG1VcERyWTRVcWpTL01ma0Y4ZmZQMWV2UkdWdGhITXRrb1Z2aEVxU2ovczI4S0hRMWR6M3kyUzd2ZTVXUVcyMVlWdlFHQzZsRzEwYk50SHduTVZ6UUpiZnNHUnZOMEQwNkpEVjFSTVFCQTJaT0NaM3h3Tm9zTno3blpuV2hKZHhWcU1wRUdKY3g2d3EyQnlFdkY5RTV2cGEwSkJhU2FncW1lRy9rMW9ENWxoMC9ibkxCd1VNd3ViUmJweDlIaUFDMTN1YklreFBVYm9jaWg2S096MXlFSnNjK0N0cEllZjFrclpMKzV5ZnpxTU51c3REYkVydzlBOHJyV0ZWYU1YSEc5ME5Qb3RHQ3RVdUt5SmxsYU82NEFDZUVEcnk3Q3ExTUJNU2NaY2s1M3B0TmxhSmExSkdKUERNa2MyeHJ4WDdKcmc3alFRWTVCNkNiZEhUam9hSzBONEY2YUlzTmdqT0Y0dkF1eklPYms4SXo4QWtWSmFPUkVMN29CQjk1NXg5eUpYNzlDMnZkQlZHMHFRbXA0S2NhYXdWb3I1b1F0Z2F5RE9rd005eE1PT2F2aHVVdjZrK2VlanZJT2FTb1NrMTQ2RWw0NkhwUXpreE5sTUMxVDhzUWtKeXczNkQxaTNVK1dGM0VWLzIvT2RpR09YSTBycFJXdEFWUFEwREN2NTBFU01NZElaSld2R0FMZWNQRSt1d1NEb0w0T3VCZTN5UU1DMGRtMGFoaG5oS2d4VndTK3dpakU4dXJOSGZDWVVqYXFIREVLVUdwMno5QU9HQUUwZTNwcmxhY0ZPRnl1bzZMaDhZVkNyZ2FIVHptY1NBcUpseXB3RXZUWXFLenc4VEp2aHAvNWcxeGl5RDN3Q3JxQ3lkN242MzlpUTZ0SWp3cUhETnkzVkZYdGpQMklBUGk0Z0VEUnV2VGRLRzVrL2U1MkhraU05ekV1dFpFaThrT09oaTRKd3FlamFqRWp0eHkrY2dCa3VUWTBuM095UGRYcXNCMlBuc2w5ODJOVk1xa3lCRTVhZFl4a29sRzdNKzJlaVlXTTQwZHhHSGZ1VWFoY0VCY0xRcjhOV3hidWY4WC9JekZQMG1pVHFjdVRMS09IOGx5bWNLZzB5T1BjTWErSmFZaTZzbUtGcUVKWUY0NTkzdTdadkFzVHAxbzkrcXpEb1Q1eUpZMTZ6Tjg2T1k2eThhcFVPeGpCQ05QeWlvSzlBZFp3TW1lTG96UllQdUFmeG0yazZ0UXVWRmM2SDNTTG9OUmgvcXVLeWg3OUhxWFRRSTlDcmxKdkZaemdqNGptWHhhelZQbzVINGpwNElkbUo2TXZsT2NsWURWbC9jMGJ5eWh4Wk9IWjVIMzZUQWZrcFdGeGlaMkEwendzWUNkVFdiaGc3Qk0wY1dGM1Q3ZHVENlRKTitvSndUU2Mwa3BoWVJZcWlndmg1Z1VFRUM2VFVVZDgreFEySnlqb1FaTnpmU24yRE05eUNZMU8waTZGRm16ZEcvUWd4dXhJZTdjZDJwVCtkZUN1MTQ2cDYyRnBZakgyMlpEdjR3MmhUSFk4anhubFBvamZNdXhKSHNnaUMvUUlVaTc4cmtGVnZLR1lZb0lwRGVZek9FQXg0YS9YQ1dwTytPTGhxWjBETUJPVmx6WFB0b285ZHNkT1czMDJUcnV0ekVWL21ZVG82bGRvTTd0OGcyeDE2U09ndi9JWXRUMTJvakZvUVMwUTZrSjFjd0o5VG13SDVtWkhJcTBNN0tVZmJUTjVDUVZhK2g3Zm9ySEl1QTBUNXlaN3RoeG5vdGFpWkxaT3dsTWRIS1RkTHNRTmZ2WXZDdkc5dUpzcHliTEVHNFNCQ0g4SDhGYSt1cHdYQWpESzNPNVgydElsb1ZsNmtmdjY0UndkMlYvZFVaUzZqVDR6QytSYytZeVdtQnVKOEV6WDBFeE85NDVsRTVLM1ZaSGVyZy9QQ2lEd2hpMmN6MHZpWEpGWWY4emdiSXhJR2pvWVFpVDlzUnZTRjZnZkdTS09rdFFKS0dLQlFibHNJYjg3a3BwZ1VyUTZJWndibHR2TkFDclcxUlVvQ0haRTNBQTdmazIzWHVveDM5bkVMcUcyRDMzeUFpdFA3ZjZ6OTJScmQ4YVl0bXZLaDdIVStkcXVTVzkrS09UV3pBcUplaG9nR3N2ektGYmNqU1NVZU1IZUk3L2JqdHcxbDA4VUtwR05BdUdQMFRFV1VLTncrdzZ3QjVaVk95VkEvSVRtU25NNUVYOGpDaVJaMTczZXBOQ2U0a3RxeXlxVGVvckR2ellhYU9QWVFORkVjbjhidytXRWVFVGFXSllLdXNscFRRelFWTEhIZm9lYTY0aUpFNGZ2VDI3WkdSTnlUWTUwL0ZPRXVvQ1crMTBSQVBPWDJrOUwrcmozcG1pRUdaWWw4MWpRaGhpdTByWWw4Sm9wVHErWXA3T0VsNEpqQUNkN1lZK09LUGZFcWtLS1RGZmd2OC83VlVYazZMY2Q4VTNnSlV0NXpDR282ZnArQ3FINUkrYklzNXUwZEYxYWpKS1pOY3ZCN2x0M1VkVlg3eXZyQm42a2N5VFJaY2xJVGhiTEF2VVkzcStSV2g4d3VJUHVEVjRrTyswNzhha1VnOTc2cms1eE1ObXBIeXZ2NnpkNmIxZUVOd1lVa3B4TUwxNWZtVjFsbkhqbm83TTdTM3M4OHMzUnREUy9CWDBNQU1MTytGRjdaTG1qeXBPZ2pFdHFxUUZHZHVrdFNPQURnaFMzQTk5cVNnQVdkaGpHRlcwSVRBVy9oT1hqcVArN3VKQ3VwYks4QlBJNFdLS2NwbzNmODU3WlBQdkpyWm5GZjNvUERyN3FzMC84aHlVVDdDZkdJbThLbnZ6U1FxU3hOY21HTXIzM29FNXJvOXFGYjZsaWRNQ1M1RCtteTJtd3RPcEkweXJvalYvS0ljeWl0djI3dVhrMGErYWRFeXZZa3FxMm9NR0R1ek8yaTBrdzdxbldlNVpydUlaek5ia1ZnSEJmZDJZblRicUNsNXRaMnEybDFUZFR0SGI0QitGdndEWlBKV1JxL0hYSXhhTjJRc2cyYTFma3BHZWVKbGNFam1IdGN6YW1aS1JBUE1kMmQxMzBXUWs3VlVVV2YyMmVxR3JXRTZnUVdvODVHdmYwNDR4TE5JWnFuQWF5M2lla29yTklVcE9MMmhtbTF5c09JQVFPS2l0Sy92dFdhM2lkRE5UT2d6QTNFMlNiNzJVclFYQndtTWRBY3Ezbko1akhEbXh0RXlrb0xlT001dmlxZUZmaCtGWkxZc1RDTDMyelNtczkra1VyVVJ0bS94YzZZNXluVkZkZUIxYU1FTERPNzJ1dEN2dytpOTVCOXdpTkpGNFp3U0dCVkMrWUM4TkV1ak4rUzYvc3VZRitrTEpyQWlvai9vRlo0RFEyYm50Q01WSVlESjJBOHRRbmFoSDB3dW5yMFNkYk05cWJsRytaOXBTenFYNzVId2VBRytlUmNBTFNudnczVkl1R1dNZmdwdjB0TGFSSDF3OEpRR2p2TFI4QVVDRUo5UGtQdzBsWDlneWZORnYxNmczRFdqV0FzS1VFQ2dVd2phNlY4ZjIzUzRXOVZZMnlxdGZLRjIvRHppM1pER2tyd0NqaDNHNFRXYU5aTFVHNjk2QTk3NGF6VG9Rdk53a3JyODhvU1VrS3h2cE9SeFk0V0lxVzFLMWlXZnR0ZzNURFUwTmo0V0VyeTZQR3FGOHJQbCtlSWxYMmNZNHlBa3N0QUd0Y0lUN3dWRVhmYmgzSkJUbFlDcDVDajgxVkhKRUJGYTNMY1l4cFNLb0Eyc3NleU5zK1ZKK1FHbmEyM05SU0NNZ1hWc0FiNGhhQmhIRWdUNG5adFlpNHdTcDRSZU5sV00zTUJNM1VveEcrUTRwR2Y0UHBuZlhGSEhncEh0VE1PS09NNE9PK2txZTlYNFlmMXdocDdqbHBNQ3VIanZqUXlsTlFRUFE3ayttREJuTzl2RXBkamNnR2hyVmYxaXFZZ1BZR0h0VnV4WTRVWWhXeHJ4MHg0cS94bU1IQTRmZDNkaUtZVjlLTFdqUDhIK3pBUFJjczNCYi80cDJFbTlESjNycG92WGxuaVRNRzh3YXZJWnYxUEVERktzZUpoSXRaQ1UxMGYzN3hGRlNQRXI4WStPV3lWS3pHRVlhK1BOR212Lzg2K0hOckw0V0hHelo2NngzTGtTNU94aWJCSmZBb1NqaUprbEtMU0g5b1RrYUgra2Myb1BPZlBZZGY4WHRYaTgxSnZiald2TjBuUEtzQ1VFdE9ZRjVwWFNhcm8vc3l0S1hvVi8wM1JleWcwcFJxaE1naksvZ1dDT0d6bEJ6eEd0eXZlaFdBQm9wTUVyRGJWanduTHIyMGwxVFlFdTNKNnFJZS9oNWlzd1lZeHlaOUZtVzBnWGk5Q1FBVVkrUDhaejVlTWZwMlM1dzB6TmRnOEhVdjEvSGxKVndkSHhLRytKT21VNEIwMXlmZWRQNjZ2b3pDSzl0czJiZ05wREhTdEg1U1NZM0dCc24xQk1MVkxuRGVqZHFsSk9zNnVLZ3RDaVJOdTlnQURGYndsQW5yZ3VkaWt4S0k3OVJCOEJqS0xWMy9XL0psR2d0dEVjRXUzbXQvVnh6T1NSSFZwd0dkNzh6MFhDYmcvZGUveEtmMXBSS1JsNE9ZM2pHSFMvZ3lHZkYwYkpxRUlzQ3c3M2J3RXZ5bGhKQXBlemJzcGdaYW5aMERReXpoNWMyT0gwRVl3dkFacnhpZ1JQNDZyNnpjNGo4SFFSRWp4amdnSHpEMW5DM3QxRlE5QmpHMm9zdzFYN2NWQVhIdXl0NnlWeVFsTmdXWkxaMVFmZ1EwZ1FmbnRSZElLbGlOeWR6TkMwUE9saXVhcDBsV0JQNHRuZDViekxWYS9vbDZxRng1Vkl5bitMd2dxU3g1V1Nya2grWE5FTW1UVUZaOTlvUWVlTmFJRmJ2bFcwcFBJUjl2czcwcEdCbjB1ZG1POFEyR1pqNFo5WkpaK1pEUElGRWxYL1pjWHg1YTE0QlVOOEo1TkVDRVhBL1AxUlB4dVEyQThER1ZhY1hpS21kZDZiM000MVhKcFFqT0laM1dUanUraXVIcWl0c2JPMkNrNTVQOHltby8wa3huL1JPbkFpdm1JMUh5TUZYOFg3SFJPNStoQVRhMHB2R1h5eGtwV3EwaGRicGkxVzlLQmVpdmY3WmNjSWJiUlZadmFIWHA2alBoby9DREwxRlhESHVTcjJXR2g0ZGVwamJUd2tNSmNHMGJDbjhUTjcwd0krZXZqU3Vlai9sRE5VWGhidE4vNkh0TnhOUFo4bjJvSjJHTEFUYlRJWUVGY2k0cTZzSXRRNDFYaDlHQXZPYzkzdHAwMW1UaUVMcjdiK1hNQTR3cXN3c2pWVjd5bXJWdW12MFVUcXhxaitQVWJnQk5nUzhzVFZaKzlIMVVJZ1pTMlc5ZTY3ZFluT21acXZjK2FOTytZc214MU5qelU2UlVWbEZlSU9nZnZ2OFcvRkFFYzBhY3dweHBXclZLdDVLdFVkbkZ6S3FtNnphYld5TnZGSDFlZWtiUEhXdnJiRHlwYUZDNS9yUHBvRDdKRDlNeFFvZ0lhazFkay95anBERUJqemZ6Q3QzMEVLZm5qbTNiSjcwcER1dU5IUWxNWE1HNGlVbTVKanlUZ1JNVFBMQnh6WExxUEFqZCtEOTR4SDVRU3FhSlk4V2pLanRTTXBzLzdyOWVoakR5WWNBdU9FNjNaS2gxWFduZDB1UWVUZVBVeU4ySWpVWEZpV1RrWnJFTy9wSGVOV25tQXZGSStOdTR5c2ZsZFpzNzBIQTJnK1dzUmk5dUYyT0V1NnEySDl6c2ZiaUF1ZCtXN2ZLb3Fua0h1QzVMdmM2ZWhYR2JkZWwwM0F0aFE5a1RNcGlnNGxqeHUxSDdjRDE0d1BGVldHVzVTblg5WVlWVnhFdjJsSzJrbkp0UHVLdFJoVVRGdEo3Z1FuT0JjZXJHZDhVWUM1ZDhicEM5REZacjc4WVBtVis1TVFPSXRSdGY3L2c4R0hqZkNjSW1DNm1DWWFFMnlla0xxNC9VOHNCbVdUb0VGK2k0SGF4Zk5uYU9EOU00Z3F3eHd2NVZ1cmh2SUJVT3M2NS9nb3pGbnVramREZHY4azF6ZTluNnNXZzNycTkrekhBanFOM2pFYzhXa0dEeGFLU3dIZTU0U2V0eFR0eTgybVhoYUFkbkVpWkJEZ0EyOTMzUkJtcUVsR0Z1VS9IOUhwQjZhcDgraWdNekQxNHZpNWJnblJMMGxnTi9pWUdrVldhU3FSOHNBblZRTGlHTTczWmVqbzhMbVRJVkxsYk4wcVdMUXRWV0hMYWN4MituVE5kK1pWdytjaGM0QzAyK3FWNktIWTRaRzY2L3hOVDl4bi82M0oxQXlkTjc1dnUwamtsK3JXeUV3dS85RXZLNjI4K05VNFRDL1BGbDZuNWhlVmx4bTdIQUYzN3M5bHd3RDJsOWluU1pTb1lGMnptMEVlelU1TENMRUQ4MGRWWGphWkpuWkxGWFdNcnNkbVFHUDl4VllwajBiQWoyNFdKV1Q5VXZqR2ZkN2pjQmFCMFFqTURLSjFmNVh0djg4V2E2L0d6cjhNYmJ1WEdJZEtIaCttblhpUFd2d200bDRXQ2ticSthelAxVkJWNGgxNUYwYXduaGx1QmNJM1FKU2xmZWF0cTJrSElrYytEeHRPYUxUVC9ES1l1S2pWMEZFcUJpSDF2WUJoQm1EWTFPd2VCa1NsT09zODRQQTVVN3ljOVJuTm9KOStEUXZhL09ZOVZpaDcvN1kvaHp3UmV6NEcyZGFRSjdoNVNQYzlWTzRBZFFMUTAzTXRyeTgwVGV2V3h1UGd1di9EUU1weTM0NGVta3lVMWxGT3crR1BZMUljWXF3MzNZcE1IeGNUaHV3cyswa2s4V085VHVqSnplWWZRSGkvand4RnhpNDI1YUNoWXFGT1hkSGZTUTQ0TDFqYlErV1ZEdGJONmJaSkhveEcrZXFwSG9HNVYvOFJvWSt3c21iZlRKdVRXVUZIQ1ZoVEZjdVBHRmJnZnBrV2FYMjRpQ210c1lyY1Z1b3VFMXgwdEFremYxcUdSWEhTWWFoV1NTQnZHUlpHZXRYckc5a2tlRjhGbjJpdE1Ccy9uUzBnRUtJUEJlTFcySE0yMkFqb3NqcjZtTVhmNUl0dWRxQUgxVjJKZWFyTDkyaXd4REgyeWlubEk0djdqUEJyM0E0UVVGVGI5SUhqZjhqRXpjbitPNmhDc2F3c2xqRUs1c3lpM0pXZVBQMU00aTVHeEZlYStwYVpzSllRK2lNaWxjZENWV2RLNnZ0WUlaZ093Ry9XNXFLdDJWbkg4c3VtQWxUdzVHUFA1T1E5OVBReUlFemtVVUU0N01xcGtncHZKc1U2amlDdGFpTWZwQzJ0N2Nqc3VBWFNocFE0d0oxNmRIM0xaRmRLODhFdW9lUVZtVU8wbTFRWnpPNlFReDBDMm1nYm50SzFwUlpSSmZ4RnIyZ3FHTmxRcXcrQ2VBT1FBUTh5UmlMNHhFdXNEdFlOUzZIT1JXSVloTHkxcFFZeUlrbVRHR2lkMmltNER1UnY1WktNZkRiM2k4dTVOZXFOY2Q4bjU5d1FOV2NzT3lQNlQ1Y2RjQ2R0ajFXdzcyVnE0NlpOUEQ0OG5rNmJBdnJFWCtYNW11MUJNVUNybkpxOWJSTldXclhkdjNjTEk5cndDRGFLaGlSZjVGbEVWWVduSk9lMXNyMjFEM3RYYkVDN0lWd0lOclF1T252Z2taRTdFU0tYZTh3VUE4dnBuRHFtd0NuVER0dkl0cTVvUEFDOUtld21UdE5pZnlGd0diQWJ3Zm8zSlJ1SHE5YkpHemovMTJVc0xNU2RCOHVNWFFTYzRkQmduak1NRHNzQjlEeXo3dXNIMjFZOEZiWHg0Um5tcnNiTmg2WGxlcWZsRlVrL083Y2tubVBYYmlXbUVSNDN5SXJBWlZ3emdKc1A1SlM5THcrMDR0VmlzYWtkYXJudFA1RmljZ20ybWVyeVdxcGlLS0JwNCtKTGJVUkRrUG0zQitYeDhlYlVleXZVSjJoMzJFT1Ztd0ZLYWJxeDBkVmJiOU1NTVU2c3VtT0JZdjhVOHliR2Fyc3p4YzJuQk1HVjN2WW9QTGdTaEYwOHF5V3NCUGc1akR2VUVZL0gxYzhTUHhUMGVlSzR3TG5FWTNpV1pCSlNnNWVMWkQwNnZ5cGpNeTVFbEJUallrMVExN1hzOE12YzQwSnMwZlBCTklyRzdZc09FKzdqdnVFOVNzUThkWmNvMDFRVHBKWWYwSmdrQzVWNHdiY1VSTHBWdGZ0U0VhbjBGOEVvU2hnME9SaTdUNmVPSU5FWVNuVDVyV0gxSmdOd0pjVGpHRFpBZk44YWFYUWNDdnRrbUc2aFpMYlpyNUpkZGhIL0lCN1dwbDNkNmZxVG9salowRm51SUxnZjF1NlVaTmMvR2diN1JqZTMwZHdHeEhWamhJQzJTRmFjNzRBczYwU1k1RXVjMkFxK3ZQc2Y4c0JwMkpKendZWmZIeXBpN3JqekZ6L2Nabnl3R2hhWXF0aEhiWTBXcnA4VmVKQkxvUTg0Y0dqN2Zkek9YbVJ2K1J5ZWlxMEhJbjh3RllRQnpmc1owd3ozb0kwQ3VDdUZ6MTJnRnYxUU4wQjFScXE4b2t6dVVUcTl5L0Joc0xnQWlzY3RYcEUrK1Ezbk1WQzZTd0VpaDJFMTViSzEwYkpndWg5SHNuWENlTU5acjc4R1NLd3V5SDJlcm9RbktxQ2VxN2lYM2ZjNTRlRkJieEpHM2lSTjc0ZUh3N0J2ZUcxU1M2TUtVSlQzdDFLRmh2djJONzM4MEp0TVpSaUFieVVpV1luL2xRZnBOV1pPSlZ2M3Vic01STHVhQVFiV3NEMWo4VU5tK2dYM2FVWE4wN05UdXFUeTFFN1BKdHhmeWE3cXVsYnd5SEM4ak9HNzlHSDl3ZGNZaUtMTFVmeGdTQUNMWmVwaGl3TDJ0NGg1NXpTNVJWQlJicVRHd2ZTeXRUOUpTSW9adlA3aW40VmgrYVRXWUNUem54cy9FelcrMEM0c0thbzVFRXZMSWI5Tk5rSS85cXpMVE5LVVNHNTR6WjE4ZjhyRXgzQXNwcEszcTZ3amhSdDRLVGljQVFIR3NoSVE3TDhxL2NvQ2JHanpiTVJzM3JabGJyRExZa2dxWjJyOWFuVHVxTXZJeGloSStCQXJzaDYxaFI2OHFMbUl1OW5Dd2h3bGg4SDg1STdBV0k5MnlxSHl6Vld4S3FxdFMxbng1end1WVR6S0dWai9WQzVkOTFTSW5pMVJveHp0WTd0VllqcXlnOFpBbXNTNHUxWWVzRENEeGJuNGxRdjYxMGFvMnorclE0ZUdvTnhYZ0NRa2poQnptdzdRWDVDVmRaZUhxeE1KTkl0VWYrMDdwZkhwejY2VVpYM2tLZXRkaTd1YlA4OXViU21nT1VJSnUrWG1tamZXL3E4VnVuWnFCYzBuR3lodDJtV1ZrTXhMVm5jaytLTXJPbHFLeWh2b1Z0dzBOR0Jwd0FyYTloYnlKcTFRWXVVYVJOYU1BTEsvWC9oR1AvRXBkdGFBSDJhTXpXWWZqVGUvVXBuSm9lYytRUGFIbHNDMVp0Sm9VVGUyVEI3aUZRZUQ4NkoxOW91TDRmT0JTdi9ETFNLcG1reXpvZFdGdkZnVnQvTmVNRXFZckdKL2xIVXdORkJNejE5b3NrL0VOS2FOMkJseE9xN005aXNJcGFYeGo1K1ZxWi9rQzErQjdxU3c2aFErT2x4ZWlQbkJQZTJORUZtbE43YmtpY21yOUU5UmhyOHV1cE1EeG4rT2JoWGlES3g0ck9wS0psU3NoMkJPT3J5QlBnT2RLMFM1RVVLeTF1WmoyNnJDemFoQW9qTHFEREJMTzBNaStrSWV3Z2tjWW5uNFlVUTI5ZlVyNm9QNE8zWExTbjlQY0ViOUlTYm0xQUN3cTN3bnF4dEYxQit2czFmSmU1ZUFZeU9uUjcyT1hWQUZsZ3RUVEVic1B4d1VVbHpaNDI0RVpSNDVPYVVLdHpaUjlkUmFpcGpscDB1Q2thTVErT05xWkN2ZWg5a1lQOUVoVnMvZUZhbE51S3N2QVJtZmdZTzlwaTF6T0RzaEdxTVdiaVUvOXhGYkNrRkZpRStkNUJPVFc2YjU0MzlQVFVORWsvZ0duVWRrL1dTOHJjRTdaZGltdldjbkt3ZmMwWE41cHgydkN0QU4rK1dKUHRQR29CY0NNRnl3aWh5YTJLT0k0aTJRTzRQNHpCOFBwNWFmOSsyZ0VaVHBjVm80M2Zoa1hrNTh0a3oxUFBKVXp5STIzcEJ0YUN1SUxxeVZOR2tONzNFYXg2U0FSOU9aYzNzNDljbFpnOEw4WkJPZDVEZ0MreGlCRHRvMHJqN3JUZ25WUHlKQll5VDhEVkVIaEZWZkJPclphOVpxQXI5ZXVXbW9jV3MybExUWUhKcmxUVVpZTWgzRXczUHBZeGtxcHpPeXFUNWhmN0JhKzVZQVhxQzB3N1BRbEY4d0dsWk1BWnNzZXNObm5Ja0l4RlZsRnJ1MHl2bWRxand6ZlRjbExyUHlRQ2cxVXc0aE1Scm1RMGtVMGxOaUV2ZjRRTmJ4RG9EUXZ3RzhjUW82UXhOTkx1YnpFOGUxT204alZsRW9GR0tYVmFuMDRjaUx0cE5NRGpaL2xhNzQrTm1wL3paamZMMEVRYXJJenBINDBPTFJZZ28vaFJVeEtDMjRVMXBwZ0pNWk00WFNCNmZjUUZqS2loUFQ2bUpqTUk0UjhEbVFDM2hVd05ZOEgrU3ZwRXF6aThFT2Y2dUdmWXNwaHlkWXRoRldIeGQzbWFaR0R1a0pqRWo4UGd3UlRqN3BNbE5TSHp2R0RqdkRaMDNkSXhNWDZZb3laeTJ4OWxGbHJIVEJodEU0SjF4TmZuVmJiSzYweCtjVlVTYm43czZoY1VIZWRvbWQwUi9TNXVUNHI4SHBtUjIvWHQ5Y1NpQThmRi9oNXNnSk1CNUZqcUN5eEloTFpDU1BsK29rOFM3NTk1UFpTZExtUFp0aEs3YWdxcTZTN2FkMytTMGYzckxNeDBGVlkxTGRXbVlqV3pPajRDY2s2NU9Ya3B4YVVHaEhSSkswZ1NIWTlHaEJ1emxxZmNCMUR5dldRdlgvb29oNSt4SmhPUDl6Q1dCaDdNRUJuQmJwNmwrbGdENklpWFJKcnQ1Wnc3YXlBbnVvY2pjV2Q0eGFZNzNUajRBbHk2ZkZSUDcwV0RicmRWK1d1ZEQ1ZW5hL0s2Njl1Q01FNkVZc3dkbDFuaUhOVDI0UERmTHZJbVpHUWh1UWlubE91ZWJqSHRsbEQwbkNPZzNlZzBtRHh0ODY0M1l3TWtTRzBiZ2t3N0lxL0VEU2VsRHdCQmRzZVV0Ym9QTzlmTW9MODBKbHNhbEJ2WDVLRjZJVnNiZ1krVW5YMENKMWxrZmJOUVVrY0ZsSk1NQU0wTW9yWmdpV2p4blEwMmdVeCtKL2tmVmtST3VPZEJnSXlnQjB5dlZ1WjhWTkUrdEJuY0ZoY3UwUDIzRFF5emhmNW0xZXEyTlV2MlFNVnR4NXBheHQwZ2ZXWk9pTjliNkRyRjNRQVhmMFA2VElFaXZFODBtRitjVmYzQkxjWThDQkZETW5HU05tVzFQNnpVMmU3Ull5clpOSzRDbUVBdUJqZXNwZ2xhM0JhZkNnS2RMSTNEU0hIQnhxdisrQWZTOFNSQzF5ZjlKcWxzNWJNZzk4TlRrRzN2aWNVbGgrOXlxdS9pZkhDNFZGY1orQnVYOUFlMWJBeG1LRE5mTVpoR002K0l0b3lNTHFJR3dKLytVeWJsZ24rbklQeERwM05ITk9IWFBnZks5VU9IenphVkdsRXV5V1NBS2NIRUhkc2RzaUR6T1J2SjhUdnBWazhuM0xVV0F2dTVHNDhyclFZWUo4ODJFWExPVkIvMjg3YjNTRUxiSmVYcDBidTAyS1BGbXkrb2NKQjhtNG4yYUxHMW1ER0Y5WkMzVlVQRmszY1hYeXdrTU0yTEl5b1I2eDRIQVFBanNRdkZrc2ttT2QvekxJcVdlM2RjSmswb0kvLzZMREYxYnpRWlhncDdqVHVqUmdpTlpJOXFWeUVVMk8rNElrVWloaEVTVTF4R0d2NTNpbWhzM3FGMWdnR0lMeXMvakFESzFLVGN3NkxjanR3bnBTcWFiWklPSnQ1NHVyZ1hXbTJKMkVWN2lGNlV6UDV5TlJMSkFFWHBGU1NKUlhVd2F2RmcrQ1gyNHVZNHdiQUo0VjNYTzVTSHpjYTJSZGVkTXZUTDUvRERzZEkvTytIZUhsRHRXK3BBQXBveEU4TmxDb3c5SUdZY0IwV1VZZVN3RlArUjF2dGUyQjdxbGZWUW10OUlCc1BmcjFsNzBmbFJiSW5PNDIybHlVYUlmWlo1eC9heWp1cUl1NmQzLzdBeGoxWFVIZ09Kb21PYXZHMzZyM0k0TW9QczY1aGM3SUdLc3dFWmJqeHV3RFNMd0NFR2M4R3FuTTdtVFFwV0IycE1TNVlaY2pOR3ZKbnVuQnl0ZkMwaWRPZzFTeG9FVTdjc3U1Vk1Tb3lTZ2ViOVFKbVcyOTgzTjhLMjI2QndJcFNtcU9qUWdlbzdKRTF1cHBNZFUvTzNQdWR3aEtCc1d5S3N6ZVZtNSthMStHT0ZmaUtXVU1UQzZXem9jdm12RGVmRXRpZGVBajhNL0NuMlNJZzJNZlJUa3N1T0RHUjdWMG15ZzY3OHBnM25zVmpHMnAzVzJQT2xjOC9oRXZHcUc5VlBVbXduU2lyY1RlR21URUliaU5IRzNReEFkaHRXcTRhUEZ3YUkyV2JZTHNGKys5TlFCQUx0TjVPQ1Rnb05MNEk1eERnY3Q1Q0luUWswQjVibXZwdkFSMHZ6end3RlorSU41NlFPdnd1YXdEQWpPZG5pRVhkYlpqNzNubS8vU3R4K2pQWGpVY3RYTUloYkM3WlZTWEpQb2piQlpYMVdjd2ZnM2cvcGpNT2ErUDZFQVdIYXhXOUd3SDdMQ0FmODRqQTlVT3Y1S3FPd1Jmb25MVkZub0pxbFZVYVQ5UGdTY0NTMWo0QWpHR3pVd21JQnN3SkZjUE8yNlF3V0RzKzdLVWJGL2lBdEhwYitYbTZOVk1vVlhNME45MnpDZVpHSjlzK09WN083YTA4d0NRZW1YWUVzcTgyMmx1bVNDK0hoalhEdm02VnN3c21rRG54ZDQrcjFPdDRvaUVHamF5M0Ivb3N0Y2ZGcHI1cUE2S1BkMUlQR1IwY1FLQ09nV2ZqdU1QNE9XMWdwMGlyVTNDRG00YytPMmxiQzhzNEwrS2ROaWJlZFBMNW9hUmpaOFU4bzNQT1Y4T2xBREVBYjZOR2RZMVA3TldhTm1Yd0ViUEQzaDQvOEhidHZWYlJRRGd5TzMxNTI2VEZhNDZqR29XRVBHVzNJbEpoRzZVRE5pYlN5SXloWk1MdkxOaWNwcjltcXJqZHpyZGxmSTJOU2NEYXE5MVVNT25PMmg2ODE5ZEdDUGNXU0tpV3d3WWtldzFPSlFSY05pZFFXMjJNSStQKzNzZUUrSzd4eXFOM1YxMkw1UFdROC9OTjNMTnF3RFd1RlF0YnV5bENTOHBlZ3NCajJST3UzZytEMnRRd1JhOUZRbVJnR2pVTGtKaXhPbVBsenNtc1NNenJpWWpwb1JuU1A1cTE0anRTK1crUlROSVlDZ1diZXRONjhvc1FaKzFCYUhXd3U3d0F3RUl1RGcvek9laUMvWnNCbUtFMGo1QXdRbVkzektac3NvK2ZzSWRFRHRsSWNyQVZPWXpaQlBGSGsyZFpUZHpuZUNGdFQrV0VxZUs4N0w4Q3owYjBZNXFVNUF0Zm02QzlJSFBiTHpxZzVUekdVYUt0Y1g2U3owc0kyeXRqQWJLdzQ3VXJ4VzJ5aVhTakMyMHZJYnowejA0VGQvcUxSY3k4WndqRHhzTFVhT2svVG9GcC82T3lnTk1lMHhjdGVpbWo1bjNMTlF4K3JCQzFiZjhqRzJTeU5KTVVZME9WWWNGRGx3K3ltazZLWTBRS3VHeXRUZW12VjdwTFV5bGRWdytqOGtYQ0p6TzhJeThrVHVmMTh1b1p1dlgwR3pGNFdkeGQwYTJDZ1hydTRnMWdoMTAzYnZhN25qNTdiOEVHM1JoTE9JcFdyUFNLNkxQRmx1a0JYRzdPNGFwK1piQnRnMDhtUUYyZ29rNnNINGQrN0hxTkVBS1BXVUZoSFZ1UWQzdm5JZFVBZGRsZWU0RkJnd3ptVVdGUjBSMnYxZkg3NXQzSXBva3dUSGYvOUkxU3VNQWFMRzd6SE43RmVMelVsS2lxM1pZUGk0YmdtNTVWZm1wRjZHNmkwRmlPK0MzQnU0ZVd6NE53TGNMRUROOXkvYlVtTGxSZkY4TVFtT09mZGdZemszWEZLRUQralZiQWs4MmdWSjJxRnhjOHZKcjJYMmVPWk91YlRxUld4SlNkSXhjVEY2bGZJd3BUbFhHRGZ3Uk1MbDVCVzkveGlXcU5Ud1ZyL2xFOUljN0JoNXZwWUg3L1hhdjl0bTVvamlvejZrVzBuMk00ZmtHKzBwSVN2aExiSWVBOUhFZVpQOW54MFh5K3kxa0hHL0M2WkJZMnpYOUhZazJJWkFzc1gzQ3kwRUVYWTVCTXduSUt3YmM5M1NGVzJ4TmdyL1pMZUFGVDE0eW5iaTROeDFDejBZNTRMdFMvUTBydHdydmlvZ2Vld2Nsd3VtN3JOZmIzdUw1anlwYi9Na0NISk1RNTdRM0VOaGtYNTdld0p0d2l4MnV6Z0dveTcybDgxYm4yUzVCMmRUWkxUeGNadDZ0cUdzUWJqcU45Y2hTSTJzWW9QMm5zRnRPeUhpOG1TbktYaHNJc1Y4cld1SmV6dUJqamI5UXlnRXpTZm80WkQxTG8zK3ovdGtidWIwN3FCTXNBem1xY1d5Nlhiam5KNHdjTlpyam1ORDJSLzMveFozUHd0TWNHVElwV0ZlY0xZMFVNd3lROVptenVDelUxTXJzQU9TRmFXT29IQ1ZCWWg0Y2FlL3Fmb25obzZMUHFkNDVPM1o4RFBzTzJ3eTQxZUJXQWIwTFFZL3RoZHc5T0loSzlYNnZxbzQycjFxdXpXdHNLRTdJemR2RjRrN29BQU9VVVFGaWpvQmxLK2k0TDVIbFFhd21jZFV6VEJvc2lQaXVWa3NzVi9DVWdwYllyZ2RydEw4M01UNlZsWHhWNGkvTVErTXdaVVlSZGMrcDRTdjF5ZkQzZmJ6OTJGNXBLMUcvaWFzaGlVSmVkTXlHTnJGajY2Z0JRcU1Za2dKT1JqQ2dJemE5WWVscW9QTmZlRk9vOGFTYm4xQlliWE9Yc2RWc2FlNmNWQU15Wm1ucENsajljZGlnWjl3RXBGeXJUaWJDcnVKbk1Da0pHUURPQ1A4S1pta0RwSTJZdWxBcWorOUEzQ25tbmVaUjhpcE52eU9nREl5aG9MQktWdDloay9FZUIrZHUyRmJicTJkM1J1Q1c2MG5NNk9iT3U2ZzhESWJzSW40QjVOS3lzMk94S2FqZHZIclB6WnZnSVgyYnRac1lMdGFyRGNtUHowU1NsT2JZQ0I3OUY0SGpSYnBiZWllM1h2UjY4REVBRkFkM3hPMW4rRXFwZ3ZoUUhsNWY4TjB2N0hFSFBkdkcvU1N6NTdJVDNySk4xN2E2YkNPekJqYVQ1aWJlb1FMb29HYjJGampta1BpRGgvRHFaakpMS2tmNEhwTWgrcEk4VDcrNUVMUFNlTWp0WDBMcTE0ajljZm9PVjlRQXczdTBpWWw1OG5kUGgxaHZzVmtHUWVzUTcxSEo4endlWTVqM0lDTEtsUEVFTVBnWUMxYmlsSkRJcHdtNHo5Y296U2czYUxMSHRCdkk0UDZiUURseG02eW15S3dPZ0ZUaHNJKy9SV1Njem95M0JKQml4TEF1TWN1U3Zya0ZISzc2eWxXb3hZNlZiMnZXamVlQTdkeXBxOVNCWkZGQmdQbjZvN0ZEOWR5UFhIU2dzcWtTWFI1eWE3MEJ6ZFQyM3Zucnd4Z1FydnN2N09USXk4TWRwQ3kwZXFNazE3Mld5UmVmYkk2Y0ZWb3V4WEZwaGlGdlZkWi9PVjk0SlMwV3BHeVVVamhmQ1BaWHlhRjFMR2RjWmFBaGNaTzBCd2lmTjhaaVd2Wkc4L1RQM0Rvc2hlb0tDZ2kwNUs2Mnh0cDBFblhkWHMyUUtlVm9BQUN0eGM3cWtMZU15elVRQy9DVVE3UGNHSW5mdkxIZzJoVVEzL1g5TVlwUThscDdyZWFTZ3dCYTN6QW5zNDdOOGRVaFdNcGFXVXBCVWp3TzJTVWJwNG42SytuQnplVGp2WFhGbHRRVjNxZFp3K1N2MEk0cG9FYW4zdUlwbXlTV05uem41TWc5U0NNRnU0THJvWHdXdFhZNXJrRWRUOUJ3d3ZNQkJrd2dEMVpSQ3RrbThnREo4S3huT0ZaOEVvV2h3eksvZ2YxZkZmcWNzQnJiQjZjT3hKdW14Q3hFRVdCc0RTeFBocmVjQmNxVFcwTnNpNW9TZHExUHc4NVlHYk1pRUdLV0pDSE45VW5BWjIrZlQ3Y0I0SUNLMXZmdzdxR2lSL0dqS1F6RFpVTjhRMmR5WlhDVXBIMFpoOVloZjNrN3kxMVM4TDE4Z2FQRC82UDFhM0txQ3JwWU1YUTB4WFlWOTgzbnZpMlcyNWxLc0djRG9wS0ZiVGduWE8xd3hnSXBBUGMyd1g2YmZibVpOc3puM3R4eE1CaVYxNHo2eFV2WFY4VVpyQVd5aHhuT3l6TGtuMVJYMG5JQU5TdmRJdEpweTFlMVRaMHVUaXNxN3BnNS9UVFgwSVRDbGlRK2JsZzFTTkJXN09pL1BzNXZmTU9jZ0pyOEoydDkvY09YU3NXY2NaNy8vNkEycDltcFUvd0ZHMDlUTVZHSlVSK3pGZyt1SUxYdkxCekRYaGNvNGxvSkt6dmZXRUxNRnJwYVFKMmhuMlFMbUpHZWNrMVM3c3duRi9VTkdJbFI4c1FINDNIYjNVMXpVb3ZGdVFPSHhOUDdQM2hST3lsc2VQWXEzKzRXdEtMR2xZaUVaa3NmY3p2M3ZhN3VkWEQvbHgxME9TRGk0dkVlMTdiQkpEb3ZVSkJKdk14dGY0V2ovRk9HZ0tqRGlQRnU2OHZEVlczcmo0VFVlVWFtVjR1d2R2ME5yS3IxUnJNeW1PQXBMYlRFRERIVnpHUG1Cc1M4RzN4dXhHK3hqUWkwb2R5YWVCdzBDcG5UeUZrd2U3bWRzM20wWFQxRUVxWTVJRzhhc21raGREdFQ1Q0RURmY1bW9tQlR4R3VwV0YyZ2tjSkZiQVZOQUdwR2FZWFJ6T0NrVHZUN3JmcS9MUW5NYTZiZ2x4Nmx4bzZjeTAzVHdiY2lUSzJBMGpkalRhNkprNXM2RHBkUk8vK1hqaUFxQ1VqY3c0VVdVajNXOWdvZmhUSmx4UWw4YThRbUxaa3hNcUVmSlNpVFJpeVNEc3krOVVPRlpYQlBBUzFZYllOaVBMQ0tvRllBRklwa3VaZFhVLzQzM2FSUjNKdXBSc2xHa3lNSTVKazdROXBLeUVvOUE4RElvTm5iTFVKc0MxMFNVUlp2a0ZjUnFKN21vZ09hdEpGK2hWa1gvT2xVUDh2cDR0WjV4T2NuWmhiUzBqNEJhQzluYkU1akpiSXdhWDkvMFovd1lkeUtFVW51QmozbnoxcXRUV25KNjJueC8vamJVMndGVEtscFQwVFhUeEdTOTRaNktHV244OTdDbEtna3lQQ055c2J4M0xwQ0drckdBSlloNUNlTmQzTmZkanZPNUhKbFpDUThmSmFzRkQydUFRMzRhVnZtdEE1N3prQ3lzVy9WVyt5TjhUdlo5SHAxenlEWmpUbytETmhBeFFTcXhXeVNzWHJGTEwzYUY5Y1dtSnFidHVPcmpJRUk3Q29sOTd2Z1djTDNRMlBCWTJIOVRUdnFaZWJ1T2czMFA1QjREaVZ5TDdhdUR5WlJCT25IQ2t5dWtOVmlIRWNpd0VYTEdzYWpnMVppWllPbEkwU1E2WjdjSjlPazNTbjVvL1hvbWQ3WTA4S0xsRFNEOWFzY0w4VENXczNVMG9aM0hPUEVhYXlGelRxZ1V2MG9TK0ljK1R0Y2REbng3Q0kzemM1ZzRQWSt3S2xza2VsU2JSaEdFQWkzYkVSeTAzWUx6OFpnTU1TQlhyazJ4RTFSbDhnMTgyaUZOelhkQXJlMzZzcEI1ZmhacXl3STFJY3RHbEVGeDYrM2RkWHhQRytsOWlneTdQVGFUeE9lQ2pQUVg4WUJDeGpjZ05QSWV0aEpYczRta2NRYTBscGxYcDZWd05sZ2dhT2NpR2NGRGNZcGtJQ04vTk9zVEwzMjdVbHp6a3QvdlFnWm9Dd2F4UlRiUk9TVEc2Uy9wTEhRRkgvdWhvbm5HaHd5Z1RCTFZOSDdaS2NQTFBjN3J3NmZ4QVBid1MwWlo1U1dhbmYrc3FrWUxBbjZ6K1FsUVkwczZ6U0NzZG00NDBXcXhXVHNEUEVwcXlhVmhpNmdSdlFDYjhzaDYrMzRGVm0way9BV3dzR1k3Tk5haEpHMmYzdkNYeXczeGFUT1NVWnduR2x4K09WM1p6QWdFek9HRzVtYml6cERNQ1BDd0NvQzhhaGtZYmNDT01xa2RFbFppWTlVb29EdzFEQlR4R3J2K1RaZ1kvUS93aDVuT2llNUNROXp2cUh2aGY5MTJnZEdXbUd2MS8vUXR6Wms2WnQ2NGRhZTVPb1dGSzNJVlNsTWhCV3VlNlhMazNMemdPZHUxZStucnpsZ2IxTW9pVkpMUU15VDRTVGJyVVcwc2dUKzJJVU1oUnpTQngwc01KRFlSSFUvN25XaHcvdFNrVFl3M2FvZFBXQTc4cG1XOVpKcGk2U004bzVHLzhaYWQ4dWFTNXBVbjhnR0hpMWNZem9UWVBjcWJxRFFBUFJudWhvWDJTb3hDOEZaS1lGZ3doUVJLcVMvZGNZZUw0ZmM2aWVjbGRpTldDYzBqelE1bXRxaHM5SGxndFljQXlsMzNpOVkyZ0dubGptZmx0Z09kdlQ2b0NNRUNUMVRsTWhBMHdFK3NBeTZ2MDROUVFIVVhGUVdEbWlYNWxkVkE3YUplWll0c211WVBwSHNpTElEcnFIdks5QVQwOHVBSml4eXFnMEZDYm53YkRkalFSMUtsaUpzL3J5bzdxSVV0c2NLRFM1Y1dxMU5kdWtZQzkvSWtxa0tybmpNWWc5dEZhQkVMOFYrY1RZS01mUlRubDRYUHJTa2RoT0RrbW5LN0w5eFRMNjNGTEM3amdrcHlZakdQQ0VPbEJCL3M3TjQ4bDZCNE0yQzh2bHh6VWJydHpLYjcwUmxjSU02MzdFNkdzQU1CUEdReW9ORk50ZDUwcWtaaWk1ZGg4TUN0UkFkbVdCc2pOZndUeXFlN1RxMlJSUHB4Q3UzaENtVHRtdGZYazJjcldOWWRrbzNBMDBITFIxOW90SC9YdTg2Y3lXYkJYVlpPTWxpbi8rZkVpWWFqejRPOVYxZ1Z0ajRYSW05UGprV3ljZGNUMmJNdVQwVXVPQXVZRHlkSVVVOVVndHdNU0JEV0ZzSnllNFp3U090SmlsU0hCaVMvem4xdS84ajBxSnlMaFhhZnhMeFlGOHA0VFBzTVFWRzRpdnZoR3h4UFoxYU9MTkw2Q0xsNG5oa0ZLekdiWFFodWtxTlhrSFdVQUpxOXYwem14ZzVYSWIvSmdjK1Mvd3BzVE5ZaXNqbnE4NVJycFE4Yy9VNWJxUHNpSlhUSXdlL0d3U0xXamx2WUpacFpJQWZQNXdNYkprZWRaMVRhV0lIQk9pMjVPVWM4dERtb2cwYzRLY21YeVlxU0FOREI2dnVuMUx4WC9LYzBPNlFkc1ZYeFBpZzViaitUU3NVQlBRRFBRek5YaXhRRXErL0hwZFcvTThjSHdVR3Nqbk9EQjlBR3MrZWtXeG41YndkWkh3dElQRDU2RmNvYW5vVHQrVUxZTU90aVFrcHVTR25kVHhFaDc3VlBWVXNjSHZtcVpnSTNDOU9wdXJ4ZTBpS1BiUGkvbWlldEZ2Zng5T0NCZU9DdXJnc0s3bndvaVpuT0xTamhoZGlRMDQ5VzZqK3lhZTl6WWlIaW8zT2xJUnBGZjE2MWYwd21lUU5rVDJJWTVxbS9NMEVVM0JVSjFCYW9aQks5RXh1cHZZSTdETGJEL0kwWCswWHpnYTFFc1pWTU5FU2hTZ1F6V0M0YXVvU1ZIajFKQm1VL3BhREZKc093bTZTZ2R1ZzBZaUNVMlZlSmhVK1RUcXZEaDBpMEdQK3VCcFhIaUtkNk5pN2xVN25GdmFPZVFDUm1LS0ZrSG1HS2dUOHA4VFp5MHF1NGVQajZjS25DS3BKcGxSY2NReis3Z1VYRjZiZ3JrWld6Y0U1eFdBRVdDY3luU3VKc2hGSzlWUTMvQit2N1QxL1J5Qm5VMnBwa0pBSnFRRVN0SGdWMFUzLzR3WDdYSlJrTFZpSWZvTmhFQ2FHNFI2MnFoUEgvQlFoUVBZSjZ5d3BxVk5uSjF3czEvTGd1NWx5L1dSTXZvaGJ5Ny9BdElxZFRqb1EydzhXKzNCQTMyQ1p2REliYVdPQ2MxNXhLdzFZQlFmVzdUL3BoWWNlaFIrN2lPTGxsMEZ6Sjg2M3ZMVWJBQ2JQMW1vdFNnYzNEMHlsUHJ4Q1pBQk9tSWwwYmdYaGo5dVF4UXIweWk5akFHNjg0WmVsSDFBdzdLdUlTVzRzdnU2bC9JTnIxRnVZK1BkSHpZVm1FZGdLSHNlS3lLdjE5Q2h1dzBrbU1UUHpVWExLOVhDNG5ibTdCcmljRk1qbVJXSjBPK1VtZURYaXZISUloaHJTc1ZYYzJPVVZ2UlFQZ3BvRSs1emRWV0IwN1QwNXNEdTVqT1craG83MlVEN2diT0g5MUpFWEpwRThuYlRaaWFsdDZua01Pc3JmOFcwUVhtMDJERkRQOFVBOWZnTEpYYzROdWdXRmhYM3o4cnl5WkFXYnlucVRBcDQvdTlGeUE1eEJ3amNDMkJrRTV3dUVjcnJkeVlacTBWdWd6OHE1NzJLM1JZbFVtamxDMG43UFdsUEdjYU84ZTIrRFZqZkNXMDVnYlFmc1RZK09BeDVPSlJiMVVGOXJZK0ZiSzZacjFYOERMSjhwbTRwT296MHhzelN5VHRyVFlJR1hONXlsUlF4M2k5TnhJUEg0akFURkUrclJlRzNxR01vL0ZpTUJET1R3TkQwZy9SL09HdHNXTDRNL01HVFVBV2JHZnBTTXNUMzRjRllqdldPZm1UdlowMHRGNk5BZDJlUEpSQVY4R1JaanJpbEJJaWJlcnYvMU9EWEVLYUVhTTFhbnNzd0cvYmJUVlBMNks1aVpQc25DZGpoYlNMNEJpd2x5OWlBL2JJQ0RUWFlscm50TG5Gck5JWHJTUVcrL0dVRWtEYlpsbXdSUDl3Wi90K2cyeklJdVFKejJnWnJTQUpuempTQVoxeEFCVFMrc3lCVUNBZmtqR3plcGlnek42RUx0VjZBUlRzbU9Ia2EwVjd6WktPOU1RK2JXNi9CNHN3d2JKODlocUk0enFWWlVwaGl6MHlGTHAveHpvTXNBcGhKQ0xOVExPaVVoVnV3WGxtbUdyM2F0d0VLbnZqZUZhUFN6Mk5kdTgxZVhOL0VKK1crWlVkQUY2QnhvalNDeFlnNHl5TUNScGZ5Wm0zQm1IYzUrRUEzd1l6U0xpbWJpY0pOZzlIa2paRDg4VWxkRzU1aXNsdUhTL3pYNDJQMFdhb3pKTmNxYlBMeFFCbWFxZlFFWWh6dGZiTTVpeWNHckJKVnhtRTJKVHNidnF5K1BWbm5vZnhuTEhTeDdCbEhrVUFBMWEyeVRwbjhhckZLR3kzNlM3c1A0NVJQZVUyZHdSVXpJby9UbkU0YmJRPQ==', '', '2023-05-24 20:20:03');
INSERT INTO `wp_sbi_feed_caches` (`id`, `feed_id`, `cache_key`, `cache_value`, `cron_update`, `last_updated`) VALUES
(8, '1', 'header', '', 'yes', '2023-05-27 05:41:31'),
(9, '1', 'header_backup', 'YOibOU2ZXKTz4T84yJG9ZlNSam5objYxUXN5YWREd1U2ZFJ6SVoxV0laMFZDb1R5NHF3Y3kwa0JUcEg2R3NqS2wxNWx5TXlRa0M0ZWs4R21Vc2IxOUdiaExYQzNlYmxXRHoyalhidGV3K3NIaTJvb0orbXcvNzZpMzNvZ3BkZmZ1ZTc5VnNrcTNId0FXekIyRHU2elQ1RWU4UGVZKytuTUpyelZKamhQVk1hR3NsS3FESUFqMUdZQmw2emRLYUJ2Q0U5NHI2amFzSGlt', '', '2023-05-22 13:58:54'),
(10, '1', 'resized_images', '', '', '2023-05-24 20:22:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_sbi_instagram_feeds_posts`
--

CREATE TABLE `wp_sbi_instagram_feeds_posts` (
  `record_id` int(11) UNSIGNED NOT NULL,
  `id` int(11) UNSIGNED NOT NULL,
  `instagram_id` varchar(1000) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `feed_id` varchar(1000) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `hashtag` varchar(1000) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_sbi_instagram_feeds_posts`
--

INSERT INTO `wp_sbi_instagram_feeds_posts` (`record_id`, `id`, `instagram_id`, `feed_id`, `hashtag`) VALUES
(1, 1, '17991404308912366', '*1', ''),
(2, 2, '18343095232070957', '*1', ''),
(3, 3, '17985366529861111', '*1', ''),
(4, 4, '17917860158650860', '*1', ''),
(5, 5, '17967548495140711', '*1', ''),
(6, 6, '17988338719805444', '*1', ''),
(7, 7, '17971439858021381', '*1', ''),
(8, 8, '18255068098191446', '*1', ''),
(9, 9, '17961431726004369', '*1', ''),
(10, 10, '18257974924101440', '*1', ''),
(11, 11, '17987104408604691', '*1', ''),
(12, 12, '17952155090138957', '*1', ''),
(13, 13, '17925000323424915', '*1', ''),
(14, 14, '17977121383632234', '*1', ''),
(15, 15, '18014566015429006', '*1', ''),
(16, 16, '17977256905619136', '*1', ''),
(17, 17, '17971617823663682', '*1', ''),
(18, 18, '17918184281444707', '*1', ''),
(19, 19, '17964126583766708', '*1', ''),
(20, 20, '17907578366614074', '*1', ''),
(21, 21, '17847735086799391', '*1', ''),
(22, 22, '17868807347733793', '*1', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_sbi_instagram_feed_locator`
--

CREATE TABLE `wp_sbi_instagram_feed_locator` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `feed_id` varchar(50) NOT NULL DEFAULT '',
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `html_location` varchar(50) NOT NULL DEFAULT 'unknown',
  `shortcode_atts` longtext NOT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `wp_sbi_instagram_feed_locator`
--

INSERT INTO `wp_sbi_instagram_feed_locator` (`id`, `feed_id`, `post_id`, `html_location`, `shortcode_atts`, `last_update`) VALUES
(1, '*1', 2, 'content', '{\"feed\":\"1\"}', '2023-05-24 19:41:28'),
(2, '*1', 1, 'content', '{\"feed\":\"1\"}', '2023-05-24 18:16:47'),
(3, '*1', 85, 'content', '{\"feed\":\"1\"}', '2023-05-24 20:22:06'),
(4, '*1', 87, 'content', '{\"feed\":\"1\"}', '2023-05-24 19:44:16'),
(5, '*1', 86, 'content', '{\"feed\":\"1\"}', '2023-05-24 19:49:01'),
(6, '*1', 46, 'content', '{\"feed\":\"1\"}', '2023-05-24 18:25:35'),
(7, '*1', 131, 'content', '{\"feed\":\"1\"}', '2023-05-24 12:39:08'),
(8, '*1', 44, 'content', '{\"feed\":\"1\"}', '2023-05-24 13:29:08'),
(9, '*1', 164, 'content', '{\"feed\":\"1\"}', '2023-05-24 18:24:47'),
(10, '*1', 171, 'content', '{\"feed\":\"1\"}', '2023-05-24 18:26:16'),
(11, '*1', 176, 'content', '{\"feed\":\"1\"}', '2023-05-24 14:11:28'),
(12, '*1', 184, 'content', '{\"feed\":\"1\"}', '2023-05-24 20:21:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_sbi_instagram_posts`
--

CREATE TABLE `wp_sbi_instagram_posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_on` datetime DEFAULT NULL,
  `instagram_id` varchar(1000) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `time_stamp` datetime DEFAULT NULL,
  `top_time_stamp` datetime DEFAULT NULL,
  `json_data` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `media_id` varchar(1000) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `sizes` varchar(1000) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `aspect_ratio` decimal(4,2) NOT NULL DEFAULT 0.00,
  `images_done` tinyint(1) NOT NULL DEFAULT 0,
  `last_requested` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_sbi_instagram_posts`
--

INSERT INTO `wp_sbi_instagram_posts` (`id`, `created_on`, `instagram_id`, `time_stamp`, `top_time_stamp`, `json_data`, `media_id`, `sizes`, `aspect_ratio`, `images_done`, `last_requested`) VALUES
(1, '2023-05-22 11:39:02', '17991404308912366', '2023-04-25 07:15:27', '2023-04-25 07:15:27', 'sbXNQyxbvNLpfd2hDaa+zTZkZ01yclFhWWlGS0tPbFAxZjZ6NWFRZjZCLzg3emtnSkdRZHN0M3M5NmN4RFd5cjF4WXdBVnd1M2QveHNqME1kVlU1RG82MXNiNm4wVk13LzV3WUV0TFU2bmtvZXRqNENKdHlpWEJKWnhabFFUSkh5a2tIL1BsektDelRwQTRVSHM2cGZkR1BGL3NKaG42R2hwUk5HWS83bHRjd0N3N2N4QnNQZFk4V2lyc2ZzU3VRZ1RCQ2c1TkIrZTlxendOd0dncnRZeitoNkIraDVrNkZSMFBnRUFuYUhQNUZaUkhIZXlXVDQzNTF4cGllQ1p1V1oxam0yTnQweXBhQ01vdGxpa3JFSmVxQXF2Qkp2TWNxT3g4SnFiYmxWdWdMN1ZuV0FFVHhtb3h0K1gvcFJhL3paUUZsWmI0bjYvK2E0N1BVUmlscDN3OTFmVUIvOWpqdkdLZmdWREh6Q0RoZHl3SSt3ZmZSMFlUMUZWbjZxUlcwc09tMmhTdnBSY3VaU0MzSkJNaHJnbmJYNHpqSDdhaDcyYlpDM093d1ZSdDVLby9ISFo3Z2s3aWkzaHFWRytQZGtqWndVUWVodFhxa2FoMThHNGcwSTZySkwydkNkQnZhUGFUckpCenRrYzZGUWNRL2hWdnNrRzAwUi9wMm1BVy9BdmlLSFlsMlpLWVVoSHhLS0JodWh4ajA4ZmRyQnRubUczNUZLVllPYUw0aTVhOHduYnVqUHZpT2UxT3E3bUt1YWlheHBMVHF4RmhHbmIzN29kWkcyeURRemhyN1F2OGRFN2NIM3UvcWRQYkRmdmRsS2dSbXVsYldkRjVxeFBiWHVwUlNaZVRiR1NDelF3dHJOSWc1OThrVkpwaE01Q0lJK2dHdytVRDMwakEycFg2SStoaHgzQTRNNnlPVU85YnlIYWZFYVd3bDMrVXA4em5UaFVxUFZQOS95MHA4a3BuVXFxcURLSnRGT0R5N0Q3RUNkOVloUHo0eXBjY29Uc2Z2aTdMTkxaNFVKMUxqSmNxOEdxb2F3UFRxeW1BWFB2amIvU1JSdnV0emprbFNiRWdsS2M1K3YwT001ZmFIMm40M1FVWWxlOTFnUEVYQm5acEN5ZHBoRWFiVnZVbjVOak5qNUNyeXR2aGZybHBiaEpKRUVyT29hZjdWbXA3eVpuVzNuVDR2NWRKTFVIUGxCaFBtclIveldkOEs2Sm93ZXpEc29tTGlVVFg3a2k5Z1dDREVIMjFRb2lyWU1nPT0=', 'error', 'a:3:{s:4:\"full\";i:640;s:3:\"low\";i:320;s:5:\"thumb\";i:150;}', '1.00', 1, '2023-05-24'),
(2, '2023-05-22 11:39:03', '18343095232070957', '2023-04-20 16:27:30', '2023-04-20 16:27:30', 'GSHBeulpboyrnQUj0NXp7nZnY3RteWR5ZHJzeDg1RHNnWTRHdW14OHVDZTVRYVBDRjMydnlnRkczaFlsSmMrT285S0R6bk1FQ0ZqbXk4ejlrbnJGNXFEa2xWOU83bTNiSkltdzE3YUpEUy8vU29CbHpHY1RyZ1B2eXJRdlFscFV4QVY2eGs4VzAxZ2UvejUzNXcwamQwOTRtQUdnSk9wV0QyQURXZDlvOHJiSG1ibkdUa1VrYUlhdWkvY0JLZ2FjRGh5dWVIMExleEltQk9FaW5UblQybjRZM0o4NUdWUm5FNGhJT3R6SUNLWjhDS1lzbENRM0pONDhvZittTHZhQllITmF3aGxDMUl6UEwxK1dvYnpIVmhvS2ZyZE9zeC9hbSs3ZFFuWGdsNnBSNzB2MFVXVjZ6N3NJVlRzM1pwc3ZkSFMzVWxBYjMrVVR5aVFpcWhMMTJWaFFwUUhOaG52bTZ3SCswY1gxMGV1ekRWdGJ2NTRmck5oL0YrMzVJYXF5b0FpSzROS1FrV0dVaW1GTE5RZUpheWpwY3IwbTM5RVI3ZnpUakwrdVpUYjl6SjUrM3d3YTVISk5KYzRpZmFLazh6ZUo0cUVqN2dVUXU1dHVLN21uOU93U0xydTNXVWE0c0RGS1Zqa1Vxbmhva2Z4Mjc4WjlvWVppbGRKZ2g1WXNVakF3SCt0TGx4bW5vdzhGUHFpMDhVSnpHQ2R6OGVZM1F6amFRS1Nyb2JjUDlrRG9uTE9RVTNQanBvb2lBOEVmeFE0SERXZkZHNkpSa0JGZWhFMktsNWNSZnNXWnVsVnhJeU5FY1o3THRBbzc5cTBMRjZLTS81UHo2VkZSdUprU1I2MGN0QmlqVkI0SWVKT0ZubURkQnVtQVQ3MWhJV0wvZEJhbU8vYUoweDVmSk9JSGRoY2REZ2gxcENDVVhSY1pFUzJzRnc1STFFY1pjcHo0c1VkK09sclU3WlY4TkladWQ0ZXlYbXpSWnRSKzZjWlBpM1NXclVXN01KSnhiaUdwTzJvSy9EUlUxd0tubjZpRlVvZ3lhdmNwWkdUSVdWR3cvNmhtZmdrSVVEV0NDaGttb25jTTgvYTBpTDZ2TmV3U200OStGZzV1L1BDWTNNSmtucFFXMU5xdU5hT3pUTW5NU0pFRUFna0ZwSzRIK0lhUnNmS1lFOTZ0dmprZkJTUFg0RDlTeWlCSzJ2SW1EenVXclBIaFQ4MDRia0xYRHJ6QjBVZHZUSzhaeDdLOWs3c2N4RE1KQ0Z3NDVjMGEwNk43Q2ttTWZ4SjNwcmZqQytiWG5ycWx5cXc0VGhINVVXb0ZKS3QxWWVRcXV0MDN1c3BKbEROeUVqZHVnZ0YvRnYxcmd5cGZpQ1dmQmROcUZUVEd0VXZpQnE1dkN5VlFBNnBka1dIOTdIYmVhdWhvbVNYamN4cUY5UTZ5b0NxRFgyUU5BcUtsTTlJNzZ4azdLRnFxV2RMZEIwanNiMGl6YmhqaGtWTDhvb09jMnVkbTQxV0VBVGZQL2JzNk9ERnFlYktqVCtGeVN3eU1PMHh4eDY0UG9sMkh6Lzh0Ulh3azQ0emdEMHRJNGlkSlF2VDhrdCtPelA3am5RdGk5WkQraXRyV2d2U3hSZXpScUdrQk5wQWpGZmE0S3lnNVJzaVljV1dPZUp0ekdQa2p5QnNmR1ZkZDNSdDFnZDJYUjJZREhRdytoN0w4a2dSdStndW9JcEgzSXlFWnN6NFJucU5MQWV5aW9WR2hlN2ZQbWZudU9tclZqUXdYUllLbC9mZ0RhaDFrOHpDd2ZKa0RNZWpRV0dUa21qQ3RjU0RmdjBwQ0QyVEt0NnNOWGJoc0hnVDJhV2hwMkJpL2Q1L00rbTRORThiSEhldnVTdzVZakZjbkpzZklIMjFKNkJNTnJTbjRyRk4vT1dwdnBCejNmVWo3OWxLaXZoQjJ1eEo4OVhZNlNJd1ZUYlFzSDI5cVJMV0xkSHJNZ1JtVlpqZDVaeUZ6TkJxK3JTSUJKbEtUeFhvaWVtUHdiOU96VmVnM3pXN1ZmTGxOS2haTUMxT3RwL3pBODZGeHZvRjZ2RHNtM3hYcEpvMXF3V3paNVVockJrUHVuQ0FDLytPUGgzenJTSEJKNHlNRDMyM0VKeHp6SGZyV0RiQlJFOVJWV2s2akY5bWVRWHIxOU8zbUoxc1duTW14VFlBR1oxeDZLWGNuUDFuWWpOR1d0bU5KODlTUmlITWVOMEVXWGppZmVQVFRsZlZuK2doYmRTN1E5aExuR3UyZWErTzhEQ2JqekV1RTNUdk12dUhLd2R0SjZndFdyTTV0b0lzRUxUMHUrQTVaayt6bWRyZTYvQmZnLzU0TzhCRDUxQzVvek1QU1FyVVFNRHlEMDIzQkhST3lRaFZRUmlKQUJkaUZVeHZTTlAzVmRCU0s2d0RwQ2FUeW1pSmVsZHZteEQ0a24ra0ViTWY3aU84b3QvcG1rMHNOeEZWNkpuZ3NZUkxEQ1JKQnllQ3ZWZ3E3cUtEVHBzSmZVQ2gvdU1hUmhycFZhcHZLOTR0a1pKMUtEdEpVQVlJZ3pFMmxKWWJlM01lYlRnUkZmTGRDczRUeGtSZUNnUnZOOTBJdEp0a0FwZFFpa3dmQm9aSU1DSGtrVUlwRnRLaXBVejBjZlNnZEhMaVpoZGlDQ3Uwbk9jOHhGZElvVlRoY3QwbXRLUlJtek4rVUZoVEFvNEJ2ZnpwWWRtSzdQM01HTklWdldyYkxyRlIwZG1nMTBzQy9VYjJSS1VjUmd6T1B3UW5sK1RCYmRLemY4SWN6bGsrMk4zV01qVmJZMDNBbml1Ri9uYmdpaFVrMUpNNHFNeDI4cUlFV1hpaUJvaHRnaWhGUTN4NjRCQjJoV0UyZGl3alFTTXVRZGx6blY1bVd3RGNKVW1TdzMrZEpQNHBPam9OWnhSNk95QzRlQnUzb2oyaHR6ZjFRUVVUQnBSWTFodVQvVWU4YzFoY09WMUhnYWhPeGtwUDlhQUxoNUs2aEwwZHhLOEw1MjAwR0RWTUdaL3k4UVQzRjVMVkxrUXJRUHZQWnllRHV5eFZ1blhQUnhUVlNiZ0xpdFlNWGMzdW9BdEFDNUQwU1k0UXgxbjByMkF3ZkNuUm1mRUR2MkRralhNeEhDaGZsNHQ4MmNtMW5HeC9YMjNGUENPZEw2a1RVU3Q1OEphYVhTbXN1VFE0M0RBcEZaT0YrRE91bnVjcG5WbGNCRXRLY0s5ZGJMTVoyakJZdWpSa1RnN3NYc0dhOGlqeG94a0xVUnNPRUNKZ1JkVUdhVVBIQlVuUlVrTkIxL0k3TFZKWWpINktGeWVPNmlaQW9KVkZUWjdjZU1sNkQxSDc5VkoyYnl5Z0FETm1OTHNrV3dLVGx4b3k2alFRZHdNUEs3Rld0SzdnZzhnVk5qMHhJSlJvZkdBM3dUYmFhd0dTd1kyWkhxS1Y3ZXNiNEpneXcrTFZvKzQ0c1p5a1hDMTdUWDFNT1kwSUJ6dUpDZXlnNmZaZ1lobFlHc2ZLU0V5eno2dGYzTVgzVFNITjFXdk5hbGNIRnYyR25CbHdjQ1Zsdm5qTm1JaXl4TWdPNVc4RTc4QTh2cDAwOW1WeDY2K3JJT2tzYWVpeDh6NVRQU0w0K21veURSTWp2bTZ3TjVNTFlLdzB0WDNLTkM0bStKK1p6ellOK0daTitTd0gyTzFCRGMxSVdId2RkTmc5NUdoN3Nod3kzZnNCYmozK0tZa2M0emNYUzc1YXB5bTh1MUN6Q2hmMmFucVNMbWI2ZTU3UlpGNGlBdUhUNHg2UE80ejhNU08yeGNVZ01ydmp4eEpmRERXUE51NzBlajBJc1VONkhHeFVkdVNCWkNmY0ZKWVNNM3JVaXdGdUozS3dSSGM3UzlWYlBqeGlZK3VuYVJlVzVvam1IektRRk9KOWRqM0tkc2RVa1k0TWM3S3E5YWgxUWx1YlFTZDJzbVlRY1FUekduUnZwNy8rQ0o3MVA1S2VvZDBhbUVMMnMxU3ZPVXE2cUVvdDVyb3RhSS9LSjdtZlp0VU9od3kvTUtOTUhRTDgyVllUK2hxWHJDRDBYdXJGOHp6Z0ZXcUpmOGlHRjZrL2p4SUZpS25sTzEzSHNkRTA2UDBkTitOeUowL1RoaEk3YkpjTjM2elNHQnArdmlmd3A4Vk9NY1VDUDZ6ams3cjdyMCtKM1pMSXZTbnNpRjNxRnFBT1cwZHBteHhqZzhsRk9MMmFaUVpzOG1UdVF4SmRhQ3BBSlBsMjErZWtUQjBkZWdaeEMzODkvVVVKeDJNNmlDQitYNTh3TlVWOUNMWFBVbk93a1NiVnNNampDQTM2U3RHUkdhNFVNekN5VkxWWFFlTE4rNGxJdStORVBZakc5SDhtZ1B5NlJ6eDhtUWFNK0RRUi9lQzVyN3Rtb3pieHhWbWtyYlRxOFlqWnUrOTVYcC9vRC94YnpPQ0lCbGwrWndBZ1V3NWFYcGE5aHRPVDFpWXg4R3dsQXNWaGZjTi9XeC9PY0lzcmR3b3ZjZy9tSHlodzhFU0U0WW5WRHpEc2xERTZHYWZzRVhIdkl0OUZveFFCQXhoa0RUN0pMVW5rU3dHVTFSNHk2Q0ZNOTN1cy9KL3JTcEhEYjJQc1owZ2dUODgrWjBWWEZjWXFkcjZVS05Ld3QwelZhRXdYVUg3eXdSVVFOeWxpZCtqZGx5TFFCTkJZZkJ4dDgxcHAwSEVDTGl1WjVoRTBFRUduQ2ZzTzN3VVQwd2JEQ2VmbktGQT09', 'error', 'a:3:{s:4:\"full\";i:640;s:3:\"low\";i:320;s:5:\"thumb\";i:150;}', '1.00', 1, '2023-05-24'),
(3, '2023-05-22 11:39:04', '17985366529861111', '2023-04-12 08:08:27', '2023-04-12 08:08:27', '8hWnRV6SsxQpQHSMzYSLiTFFdmU3K2RseTFKUytNRm9CU0x5S0NGMVUrVFdsK3NoTmVzcnltYzF4dkR2OGFNVFFuNnlBZVJqVjlpREg1SDNTTUxDd2VwUUl3SHM4QXpweGxac1haZHpBMXRRWUV2UmR4NW4zYmdSRHpOTGZnN2QyZWhlM1VzMkRPVFJpdWZsR05BNC84U3U1QnJPU0JxOWFSSEw4YkxTbXhPU1pyQzV2aWlVSDg5M0oyYlpqdlg1Qm9sNzhJbFhaQzlqRWd6alVqamROV0JsVnN1L0RnRHZkcmpYMUxidmFpTmsvLzdDNFpwZGI5YVhEdW1BS0JBelloVVZjNWQrN3liYnJSeWlTWVVEVU9jbHdsbDRLUWNRUVNPbmEvYWI5U3ZsanZCNzJqWmJhUGZDeUdha1dQSFpIMk5jcHZpaE9Ta3dzWFd0QXRGb2V5YVpDWHo3YzQ2Q3ZTb2dMT01OY2l4VFRPWkIwMzU5cXpaVDYrbWpLWHpQVXBNTzVzOFJvMUxqek5xZWJSd1hIRjhPTmlPdnZJa3BoblNHNWZNZ0IxT2hXNkZUTTRCOFZCWW1TM0VJV0pJdFJEdkJZYzNuLytjU2szWXo1cTlOUW5YQ2hCaUxOM3YvQ1R4S3JzSDNsOVhUZk5ac3JIeWkzMWF1N0RSRGdYS0M5VUd4bzBEclFsR3BRWTBYdFEzSXhGUUpwNjNOSWE4QmNlRHRlaCtnTFQ5cEJ1NmwxWDV1a2JVN3VkNXpDYlRVdFpRb0hFc0tnYVJhU1phOVlXYXZCVkVta2J6dHpMREx4WTlyM3VBNXAwalhNSkdpSGcvc1BEeVBndzFRQmg5UlJ0N0ZNZEdSRC8wcHl3Y3EvNjZ3OWtsUkVuSGFXSGZRcGtPQTFQZ1Zob3JWWW9LV3YyNkxZSW1IMWs4SVM0cVpXZ2JjRllXbExSY2dMbVVrQ1piWHNhU3E4aStvSXE1cGcxZ1VGMjhjZSsrMg==', 'error', 'a:3:{s:4:\"full\";i:640;s:3:\"low\";i:320;s:5:\"thumb\";i:150;}', '1.00', 1, '2023-05-24'),
(4, '2023-05-22 11:39:04', '17917860158650860', '2023-01-29 14:04:13', '2023-01-29 14:04:13', 'gL9Akf+iSlvNHhnSAk/PU2R4RUNJUVJ4S1YwQUlnM1haRzUzSFc5ZHhyRGFyMCtjUDFpNkRIbTM2aDBnVnJjY1l1TmtQaFB5WGRmbm10eDQ1UkI3RHZDU0QvVDJKMUR3T1MxNHFLRW9NRmdiWG1Za1N4Tmdmby9rRDFCK1BYZWpNcWUvNy9QSXJDNHJGOEQ0NTArY29DT1NtNk5tamJZWHhpZkVDUlFkV1JZWERSd3hHRms3bW10QUpYSllBaFNqM2JFTDBuU2Vld210SE9qMnNqOXJXMCt5RG1BR3l0bzEyQjI0ak1NRlR4aWhQQ0swZnIyaUlkMVN5SGlaYmhzUkFtZDRRQU5VYlBxSER4ckR2R0RKanc3ekRaTDZiSTBpa0szZGFsQ2wxVENFVU9tUXRubGNyQmx3YUJUTzNIRlU4Z1hpV25Sc1hqVENkcGEzbHAvbHpWWW1LRkFjdXpRalNIdU5vbFZrVXp6TFhaNDlOWFBsdXZQWEFuODdscWFmNzk0dm5uTWlySFovR1dJeHF2cVdnT3JVbmQvcUVEQ0tOZzBMRVZhSEFsTGlhek83QURBY1gxTGd1TXFlOEhaVU96OXAyYmpObGVLaVZPRWtPR2F1OWgreHhMWTJRR1prYThsNEFBTnVoYWlUK0txbjJabGFTTkZjRTlYTm1pUnlCeVRrbUhpR0h6UWFHeWg5b3N0THNvSXNNRGZsWjdEV3hIbC83UFJTM3dYNk1KbXA3c3c5Q0hUZWI0YlBGVlBYTE1JTGJ1UmlrRm9pTVN4VERlNkxZK0NiV1BONjFIMW83Q1lGd21vQ1FHb0FqK1NCSXpTbW5kZE9UakZvbXQvVkwrTkNDZkErTHZuOVE1OGhLL0hucFZmcEhRRXdxZk1BdFVQbUl2MTdZcE1xdTlabjFPNFlhcDliQkFhOWNuZmlhZG5PTjd6cWswVkI1WkdGRGRpQ2ljUGFNeVhEbURxbVFuOWtLTTNBYU9EeXllN1FnSFF2N1BwQ3JMTkNERitOM25uWk1VZUVGSzd5TktkbmNMS093dkRxWGorWGVsNkxJeHVXbkNmYlQ2dTE5K3gyK015WmY2MUtGUmg4SjZraGREMnEvSlMySkJlWGMzSUZrRHl4aVRPYnM1V0JuT3NHeERsZ3F4MFZ6MVR5Q09BQXNMdnQ5ZWNyaURwSA==', 'error', 'a:3:{s:4:\"full\";i:640;s:3:\"low\";i:320;s:5:\"thumb\";i:150;}', '1.00', 1, '2023-05-24'),
(5, '2023-05-22 11:39:05', '17967548495140711', '2023-01-25 07:13:10', '2023-01-25 07:13:10', 'hRVUpHQXSM2pLvxQjEjYllpOMkE5djdpa2E2alkwMGlJMmFWQVhqYW1NZjd3NjVyb1J1NGJkZ0ZqYUhBVXIzSEVCbkVZMVJqRDN6QVVLckNqVkorMWhqVktPQ096Q0QveFFoYStZRzB6ZXFhWTJwSzZtYllLLzZmSW1RMW1KaFU0ZEVEK2NLMmpFTW1nSjdHdVNKSmdTWElYQks5OE55Y3RtR3d1anUwQ0tzTnZQcXI3UE43c0V4amdSYjlGMG1lNkRZeHBkRWo1dXA1bWViSm5ZcXY4K1o5Sm9Ra0s1LzEvY0prRlhFVFptd1BHWW9qV1VlL2JZVFZiOTZ3Z2o3WlNkdHd6cmVzejhITmJPOURWRDBPQmpWd3Z1MnQxa2sxc0c2UXluZFhnTzBKenZNQXk0T01TNXdkK29TQk9QQ3ZUc3pNbGxwZDdmQmhJb0RJcXBkRFpGYnh5Wi9wWEcwV20zVGw2NXg4Qk93UEdrbnpWS0I3QmcySjljNUFBWUpINlRDcW9vZGxXMFRSVmxQSDF3cndrSVJIbGhZT1RPNUlqRC9UV0RPOFhyenA5SnZsR1gzRElKYkpQdEtGRm5EdWxzMEd4SmJ5bzlsQi9UWFR3ejNRU1VuV2pxYm9kd0l1Z2k4UVd3dmNlT1JKTWpRdC9wTVo0NWNEQVp2bHM0OHZLSUJERDZweDM0eDhEa0t5a1lhMFJJc1ptbktISzdFMzB4Q1BkM0cyaVhtUFpwNHNIdkFXQ1RzamxCYnhBTkViemZuRWwwRTN6NUZuQytkdmRab2pGbHdwbjlTSjhscURrcjBLTjdiM3VLYzZlUno0eUFsR2NvYUFJOWFrU1FSOUwra1A2dHF6cktNTmNKd09lVi8yVjV5NzNPUm5idWw2ZndFMGNCcHdvYUkzVitFRDBEczBvY1ZObEQramRjZm1ldUxsQ1dBWkZZTWF2Wk1yL0FOc1g3Z2s5K0VKaXdEa0E1ZHhQc2taMzNDRXJHZ0p4NHBFS055MGRVYk1jYWIvRGFqUGxqSktRWFBpZGtvR3Y2NnIrZXdxZXNTT0J5NjJLMnJmWXhrPQ==', 'error', 'a:3:{s:4:\"full\";i:640;s:3:\"low\";i:320;s:5:\"thumb\";i:150;}', '1.00', 1, '2023-05-24'),
(6, '2023-05-22 11:39:05', '17988338719805444', '2023-01-22 06:25:03', '2023-01-22 06:25:03', 'QzzcvqiirTrugP3xX2Wz0mYyMXc2MzNFUFBOZDZBc3QrTldzNURMMWV6MXNPdGtYSXJBcWVqU3lJeHdybjBjTDlYc0hUOEszd0w3Y3FISHhUK0gxS1JtTFl2bTU5ZWZKalF6NW9BTjlVTklzcWVuUmN0djFZMzQ5ellVWXU0MWFJSTk1S1ZmUS9zbXJwNVhXbnRnSnovWXJCTlYyV1FYTDNtVE5FK1RObFFLaWI4SkNKbllrQWtWSHlLRmNNMjJCeElCSGk4WlFwTFVhUi9FeUNBWEFvV1llODZrbEMrSUNQZ29iNU9jU2FkOVpxeEZ3U1cwLzBmQ1dTS1FkZEFkbExxUHpHTU9MOWZySi8yb1NQNFVHYmxGc0hsQmlLOSs2NWg3T0lva0lRL2ZXVnhaM25peWRmSFduYUpxa0g4OUJ5Lzl2cG4xUmFkNUwvVURqYXVZQ0NVRkpIVHBWSHNmTU5Rd0VMZzdNVzNoVW95a2VtOTF0cXlMSmk4S2JlVmtqanRuU0ZhMDA2QUtYbG9HcU9BMVpDNnduY1IvbFZSbVdrWUtVTVZKSk8yNnJrTVQ5Mnd1eDRBRkdCRlVoRTFWY0lpMkFQdWZrUFlLS2RwbkRjQ3FDWDR2Y1pCb3V3WDZtUCtNVTZHb3NybitINkEvZGNIWjJYSWlodzh2ZjZ2ZUVBaVVwOGllZG1SSlZkYXJJN0kvRDltaGRJRnpycmRwTFpjV3BIZ3kvZFBGZS9FWWpKcTdyWURaMmJNakhFL3pJeUU5bUVJTlBXUlB6OFVEdVdKYTEyL2Jud012Z01hdVowb1FNaEhwOVc1Sk9zc2FCZVlNblpHakRKZ1FxenVpSzNORlNVcG1iRkRzSkhrcFVDREY3MnlpdGdZSytLOWtncy8wdkp0VmNiSGc0MFl3NUd0NVZzTlh3MVN3ZHNpK2kveFQ3T0FsRFlITnM3enc0OXJMcEMxSFNwc1ZRNTJ5NXdvVTRRSjI4RUgvdjE0ZzlPZ3hqQlBsSGFuVUhRbzV6L2ZaakxSQWY0d1lRRWxsWWZLajJBM0k5b3lCc3hkWll5c0tkbWtsUDJzTE1LZ3o2bTNHMjdPMWQzbktLcHpudERrN2ZlL0llVlI2V3VENVRwZFMzTUlodFdGL1NlQkVXY1BxR3FiRHZXV3NVSEZzU0RhWVcvMWwxVzBMNGxPZ1VtY2hnWW9pTTNaOTFxNGJYVlRUVlYyaXpQeTRDbTM1R0VyZU1yV2E5Yjdaamh3VWZkYzY2WU5xR211SVVjTEhHTkd1d3hzOVVZVW5rS0hPYU4rRFgwc0FOQTBnNEJSKzFnTzZpTkFQT1g2RGlHdCs2elZ3TjRuUDBGMExFL2FjRElOVWtUd09KL3BkOXlmbnoydzI3WlVmLzZyTlFOZ0Q0end3NDZqVi9XT2pqd05yMmdVQkx5bVAzbTRnQllTUk1BUkJlUWlyWEcydFZvVk5GUlp3MW0rNEFWYVR4Z3pHYldXdk5xSDJGZml1MDlwRUpmNW9OZ3N5dXdVdFBTQ1NSaWJDVUNoQmROVXQxMVF0U1N2Z1V4TFVxVG1VR24wVG1ncG8wUFA1K2duazQxQVpXbnJleFk4c1hzK2JqOStNWWxOSmNnOUFNRUNaK05seC9qdEw0VkxQWWZnbnRqNThzTTRueWVEd0Q5Vkc0RStYbmRUUDV6TnZHaWhRam5Oam9ZenJKV2ovWldvd1pmTElUUTl2clpXMHhZcWxVVFZ1VDdTZnIycWpTaDdXcjh0NE90YjFJUG1PNUlUSlFZRE8wRjREZlFoYUV1MjFoc21RbXllMHR5a0tCUkJsQVhSYVI1Rk44YVZFMVhsOHBYeVRqUEt2WnY4SFdZR05YNEFsQ0pMN2hCN0tYWE1zSTVXa2gzYjVmK0dHNWJ3ZGhWTjh6anRhUG83QWl6c2tUME9wSjNqRWQybmJLVk1lc3c2Z1NDVCszbU5UTm9YNWFnMWtWbEJBdWREcUdBVERITVpoOVl5Vk9pWVhKeGxYOFgwNm81a0liQi9YVTFyYWpEZkR1RG5DeEV5cWxYOC9qSEhWa1ZSelpQditvYUFReXFLL1dVTmdrdzRCYWVOcm8zWU5HTURKMGFzaUdNRWNRTGpoWlFjRFZuVXIrRE9COHdqYWRxLzNlTkd1Q2ZaQnZ4Z1BzMHFQZzlHdEd5UktMR0pXQkFsZG5CMjd2bXVzZ2J2ZXVoeHYzMURqTmdCcTdEbHZjcnVpQ3ZmOEtNa282TzI1VS80RCtzc0tLMmZBODkzaUlXWkUvOWxGbXBBSXJ5VEJDTkh3QUpxNDBzblhNS1RoNVFLM3RRV0hYL2VTSEduNWQzc0dZL2l0SWc0eDZYdk9BaUQvcm5jd0Q1aHZmcUZYR3V1Y04rcnRFc0lkelhJUVNta2svVFJvUjNEVVZzUlVTOVFhYkIrNThmNFdBOHlKbFdwellpRVo1bS9USXVaMGFFSCtDZnZiTVpNMkR0dm1wQkNaN0RRaFVoYU8rL004S0dGNFU0QlpEMzMrWnY2NWwrUTQ2MkhJZzBRQ0k2SmlPTlY4SDZ2NGVlR0FlbU9aVjZIVjZZNW1iSzhWNHhoZVJPWmEzQmNBSUMzTE1wVG9BRlViTm1URTNBdmNyZVA2SUszNldCdDZjMG9IbDFEN1d5ejN4cExMUTdXdXZaU3BwUVVna255Q29IVmxhVFZ3WFlOR3JVMnZ3L2NVUHZsZ21wcGlGNzBjSEh4azFkZnI3c3pWYk54OHRuazRPSDQ3SzNNZUd2RkZBanJxcWNXMmo0SkxEeDFSVS9kR3Z2UEg2bDBnbmFVMEhFZkl6bkIwTVp3VlEwSTViblozZ0JmL2hsUzdTUFlTcTN6dVRjaDlIbjJ0TTV6SGJaL21kMm9kRnBKR3YrVEpISGFyR3Q2SlZvTzhuQ2gySWZ1cTNMdmlGUit3ODd6R0k5R3B5TWpvcGhvc1RjWHJHcEJVSExqdkE1cDFvRTZreTlNVzllRzMvR0xjZHVnZGhVbU4vNGdSU09vdEdQM3d5MlBhTmFBRG9nSmMyODJrWlRseXlHVlNoM0RwYlJrV3pxNHFwV0h2VXQ0WXBKb2VvUjNoZ0Q2US9yTGpOU21QeXFHMFFFaGxsZEZ3Qkl0dUVPRXZKRWRONlZHbWlMZ3hXa0RtL2d0bDhCcUl6SFoyME5iS2E5UXQxM1FFelpNWEFOUnlFVFkrL1Z3T2VVWW9sUFMwS0d1aVpKQ0JnVThWRzhEZ1duRllhT3B2aGt2TzIvcnQybDdYREtMTEVLYVlQNVlYYkdsSEVNamk2eXZMR3djUjJiY3pvZFVEZUh6YU43M3BlUFB6bTNDWkdWbldFVm9JdUx0clVIUnorRTdEeThXb2ppV2tFeGtwVFJVNEhxRjBuNkZ3cUdSVyt4VVhsYkNXT3Brb3psWE5uNVZSUndXYmlKaGZYajFhT09UbEk1eGI1dU9sOW5sVVoydm5Lc3FOdG5nalBPTk1EQ09zZHZpdXZoNHhRbm12SWxBZW1IR1FSOTJEeVBjRURtY1JtVVJDSEZTanBvMThFTURrU3BWdkt5RFhiWWpSQk1pVjJKcDdSOWtYUnFTQzF5dFNFUGxWckQ2R1h5RFY1MDIxTkpoVm9MZkdydEcrN0RVVmt1b2dOcXBoZmp3K1VEelREYkZqbzBwa0x5cWxOSnpvV1dYejhSR05Fa29DS29QeStZMWF2eXNKM09rOFZmL2JFek4xN0VMclpjU0FzYjVMT01McWdkNnBHcFk2d1hGSXNRRXRHalFRREhvSmVHTFpnWUNxMW1ITVJtbmFGM3NBdkY3RHNyM3RVMlB0b0xwYUdHRDdaUVFrMFZHZXpVL0U1UEdESmRUMDVOMXlZMjNCMEJxR2xvMWNZaURDSDhlZVp0aFlOdU9QRTZXMTQwZjFFbkE2YWVaRnRxSFptYk1DblN3Uk1OdGtsS0tkUy9NU1FsYWJ5QkYyM0p1eUFuWndYS2c2RnNRL001YUtyYWZkOWFZSjMvbWhmUmUzNWZzWWdQTUNsUkRVUWU0UUpWaGRrV0NGTUVnM1ZTWmw2YTZ1eWtUbDIrY2FNQi8vMnRxZU9IaW5FalFTZlJ2YlNMLzFvbExYSTF2M1FCdnptQkxVMDhjeWlmc0VnWnZybUxSTExsTUNobC9nUUZoaFU4R3dGSTlDK2ZxSUQvblZVbWw3emdCOEFzblYzNHNPTVVBaXBkMWIzSTBNRDBBbUFBT0RKdncvQVJySkkxNXRhdkNaa1dEVk1WZGlNbCtLUkJFTGNHSHRFYzVMTHdSZ1Y1L2VIN3JWeGlHUTVnK0RnVHY4QTF5cWpqSWdkRFhTRU13TkdjQkMxYzVjaFhlV0ZTbnF4aldsdGoyMEc4aXlncTI1cjk5cHN1WnREQVNvVnp5UDJOSHRTYjFhd1cxb01HWnRialFGTnVWYVMyYytEdndOcnZNVnpDb0xjZkJyME15bDJvTXZKM01lRGpCem5zSmJTVUFEVTl4amZaWFV4WHBJRmROZXNNVjVzczA4WG1Rc096MDgrUzB0RERXQkV6azNQdWJDWFJLVUtvVjNpZVRVWWx2SFJZbWtIQUwwbXhwVFFFc3ZJL1Urbkp0Q3JJd0pFZUJFbFBlV0J0RlZuMm1aMExESldBY0p1Wnl3bXlxSjgycitGNVJnay9vaVozSkRIZ2VTelEwYnhYbWZRQXZDR3RFeXJTc2tzOWlsbzNaZElBWEdqRnljNW4rSlcvZTlyUWRGUTZoN2R3SjliZ25PMXNyRXVpRHVZeUtPc2xQelRBMUduUE1qQmVpbDUyNTBBaFhHMDlJQUovaWxPRzN3UE5adkwrNjdkOStOSGFVQkZNTnNMSHNkcGtOT1duTFNvSDMxSjErdExBZE1oNW91Vyt6SEtlTE5MTno4S1k0RlJSVmxveENQS0w5cDJBZGtXOHNFN1IxbEs4ZWs5aGUrM1BDRVhnYUtpTXdiaFc1UzNpRkM5SUZoZ1VpcjNOblNsaVdhZGpCbStmUE4yRm16UHViSStOemlMQUVKaXoyMnRhYXpEbTRDd1A5Q0trMzFsVjRuUHRXaTcxNzh6cmswWFNRK3ZYNCtQam9jZW9ybkZ5ZGFLVE5DaWVQZ242M05OMkhVN3RCZ3RUaXdKRnJxT3ZTUEFXUjdQMmZVd3g0Z3ZsQXVDbGJBMVFmdC9NdW1v', 'error', 'a:3:{s:4:\"full\";i:640;s:3:\"low\";i:320;s:5:\"thumb\";i:150;}', '1.00', 1, '2023-05-24'),
(7, '2023-05-22 11:39:06', '17971439858021381', '2023-01-04 03:23:46', '2023-01-04 03:23:46', 'zvJeqwioDMxmoMAXh/8VpzJyaEpUdGFYak81MkxWVmkwKzhCUmhNZ3J0WmNZaXRZQitiSmxDeHAxTVdVdHJ6QzhiMjZ4ZGkzT2wrNS9wOTY0U0VkVC9lVkEzZnlzdEJPNmJ1WGlJQkpuZHIwTTEydVV0UWJIRzVaUHNCK29ad2RYcE52RTBGRTFkcTM0QTNQVjMrNTNoaFBOVEpRcm1ncy9jNWJobTFYK05oMnM2UVA1RGpvbWtqL0wrd2kvajcrTGFFU3ljbHNJdnQycThrcWgrUW5QaVZnWjVCbmQ4OG9EWU5nZk11SE9NVnVNNlhLVTFocThqVWJOUHhWZm1yQ1BMbU5LS0lrZUUyMUNQa3paQSs0dHBzQTBFai90TUg1WUYxYjFnNHB5d0t6Y2luMUVvTWo4MERBY20xSEt5VDF6RzlQKzdiNVdMcm9oaVByNGFtaEhyMG5KMG9lWXJTWXVSL01FdDY0akR0YTUzSmhkRE81a1h2Q1UxbGFwM3J6R1hsa3ZHQlZ4Rm5zZzkxbkVneGYwZzNDOEx3MlppN1kvZy9vcjFnZ2lzL08xUjEzYlFDNHgwMU1uLzczMUJPWk1vSzgxSDVlRk1xbFpoV21JS0JXeTY0WStGV1hFOHY5SjY4eTV1SXNxQlkzMjEvNFVOSXdhQi82d0FRQVA1MUNhYkMzbm5PY1kzeFR6VzhBZmV1R2xVRkdETWpvQjhxYjUxNzRTRExwdmZ5WXF3b2hCbGVnaEZvaExFTGl6KzEzVk9zd1ZBdFpYSnZmMENGa2NicUdEbURPcXJBTGlTRFA3eEJ6TW1MeGwyYXVOMlU2ZFFMTkQvVWk5cDFKeFRzN0NtZEhlbzZSdDk4TWxsK0RZSlExWGx5Tm9SWi9WWWsyY3JaTkZYdjJzNjY4cm9kRnFBdmhiUWtnL1ZaME0xOVBFdHJiQXN1L2tBUy9HYVJmeGNCZm0xTzVVVVg5YVB4bVhCMlF0a09FTmpDTVlhUUx1anhvQjNYeUZhNitvWWgzYXhUeGZqUEdxb0t6S3RZem0zaTdDNXo4NCtMTUN2UXZBaWVLaWJjSDcvOVdtRTEwU2xId3owRXBQVjhBVWR2MmR3YWpMdHBiTWlFR1kxbU9qMGdVaUhIMXRBYjVFQzNTUFZ6MXJ4RlUydz09', 'error', 'a:3:{s:4:\"full\";i:640;s:3:\"low\";i:320;s:5:\"thumb\";i:150;}', '1.00', 1, '2023-05-24'),
(8, '2023-05-22 11:39:07', '18255068098191446', '2022-11-28 09:10:19', '2022-11-28 09:10:19', 'xusq2vaX1Jmi+BmHhawGBGhiQXM4ZlNUOTF3RFRRbEhXT3JZdWp4d2JoR1NzWDhaODlWL29IUVRwcHNDNmt3WERTWHE5ZkQ3eTFBM0tWMjYrSlNUSjNKSkhseXN4VnJGUGQ3RW9NbHJtZC9MT3hONWNIZFdFLzFVb2JOK2luMnE5SzFxVlU1K3NyTksyNktRN0FVb3pOOGlDY1RGN1U0Mjh3OUxzQklaWW9IS2VxN0E5Vi9oUXN2RGtybTE0WWZKMU9IMzRGY0grcHRzOWFja2VwOFNVakNZT2FiazM5WlRlZExUZVc0d01YbSt0eU54RUdxVnk3SGZTa3pBZC9oZmpHd3JWOXJjaFZxREY0K1laZU9yTmR3QURZVUh1Nk5lcWxyeHNhL2VyUyszcU9IOXh1MXdDcTBmeXEzMFE3cmRPVGNDdUdYQ2Z3R1pWS2FkV0hqb0xOYitHcmRjeVhwdjNEditLemVwUmk2Zi9nb2Q2ZFpVam5GSy9vVGpIa052UGNDMWc1YXRUSjVjOFhhNGE0ZHNqV0o2bWJRODQwdzBHdDhsWVNRQTFZS1VSbnE5QjJiLy9rYXNmeStlZjAybGtwMDBpUEgrK3lKRVgyNmJ1QnV3Y25UMnRpbzdwRmd6SjN3eHluN25tNzdsRmxIaCtEM3dKeWJnOUtsUm9MeHlaMkxOUkxTbHBWeXpMdFBXZDA4MUNVSzk2eXlPTmZPMFBSRklxU0x2VktrdEptZ2J1SmxBdW85KzNpZWRmOE1OYWNRRERkeExvL2JtdXJTSmhya1RWb2dqT055VGdpdytlbE96NFBvSzNPM1RHS1hZWnJaSGJITHd4R2N1aytaVjdPZEtOWW1kWWxFZGQ0ajdwNUVKaXN4eGo0ZUU3SlkvSGdqWHNXNE5lUXREZzhwZ1IvMEFmUEVnSVhNUWQxQWpCWlJNcDkzbENtdzFycXRaQUttaTdZcDVZTUtLSDdBT2MzZHprTG9Nc2JFSVFPeWZZNWhUc29EcHppT2VvRXdNRWc1VUwwQWhVYVRtRDhoYkJuVTRWeEZtdGJtUjg4SDJFeDVtVHhsRFpUYUdWbEg0MFdRelFPVk9jVkwza0V2SHYra2VwdTVZUHJ4d0JGT0dPNGxEaXprSEhpa0toamZBZ0QzektqRnhDTmRsZXNUUERjUGZldzJ2ME5nWHpsRHRSMGo3VUtDMElKTEhjWSs1TitHRXR6eTRPM2FKUTRFQ2NFRE1tYlI0aWptMTZlVEx5QT09', 'error', 'a:3:{s:4:\"full\";i:640;s:3:\"low\";i:320;s:5:\"thumb\";i:150;}', '1.00', 1, '2023-05-24'),
(9, '2023-05-22 11:39:07', '17961431726004369', '2022-10-16 10:00:58', '2022-10-16 10:00:58', 'ONVq3ZhNILxbM6V8ojxi/HkxSG16OCtqcEhxNks4V1pOTnNOWFV1cVVRNTZBenM1TWh5VVo2MjQwMXBMVVk4REtDeDNIdHRjQ0FsR0s2Znk0WldZbVljd2RwWHFrL041TGx1WWxqVlVCcVJWRmFEU1RBeUtSbFNwa2NEaVExTFVvTC9Eb0QvWUFTcCtnWVd3NTZBUHcwRVJOWVYwZUF4V3krV0hZVG5NY2hIVjdML2l2b25SUHo4Q1BhS2FDbDU2dGRQd20ybm9iTEUxY2RTMTlZeWd4YVZwWlgvMU1UUkhROXNkT1QxNFA4a3hXWDNUaGNuNFJ5STVqZVBZanpRWXdVRlh3YUlRMms5Y1F6bjN5TnUvRzR2YnlRdU96b2d5NVQvVmMrM082VUJhOFR5TVhDZ2FJcW9NUFJyZlhzVXNjRFN5d3B3czQvcnhxSWxCcVpET2haY1Fuckpqb0NFV3B0MCsyZGJ6T21QQmNiQnA5dHJ0QWYrQXRJRWo3dWxLczhFNU1qZWsrWDgyN21TODhXQS93Y0xkblNsOTd3Yi9LMmlNZHY1aWFuemsxcGEwUFZoVlhSN3haR1V2Vnp4WUJqK2l4a0REZEJHZUl1YVB5enltS1pZN3gyUlhjSTdYYWlySllyTkV3bnlpdHBzUEV3Y2FHYitzN0RiUDJVSHlZQ1BPaDB0a2ptV3FUZFk4VUlMaGZJZTJtL05DZjZObGoxR1IzdG5LVDNxNVVKODNRb3lxTGZIT3lsMVBzNmUwY0h1OFp6dGZtTmhpcWdWUER0ZWgyMDRIU21EdlMvcXorSDFlZzdIK05VOFFYYjZIWHVITnMxSVkxTXlrUXRKZ2tmTE9NQWl5MTBucFJCOVBOK0Vva092WlMxMHEwU0Y4UjVQTjFaK1Y4d3lOekF1R2FmZUFzdmJBVGdmVnVhTXFUbzRpbGdCcjcvRGpCNTVsVmdNcDhLYWNiU3lidGJjQk9IWnpjd0E5aEJueXZQZUFka25FTVNsNzROeDEwUkpETU16cWdoWnU0eGFFQjdZYjJKV0dZTFdBMFJhdmI2NmlSQ3Vnb2xPMXVDY0MzMnlJbnRCQ1lxQ3dUa25UTG5KK25kb2l1MGloOUNnYUdCalpuTnZ6N3VLRXJMWTk5Z3FnYkpXTUJSSGtFV1J2UzlXY1AvSVNEWnljUU4vMmRFQjFWTis1dFdDM1U3SHVJR1ZNQmNpUmtqTTFhZEt2cEVIQ0xDVDRjMGxWYkM0TkVLQXhRM09uVWlRSEVQckQrN1hJSldTNFhYRmpRWHhMenZxdU1CUWc4QWxDRGhqekxtWWM2emlvN2V1Y3RBZjdRTnZLQTlwTXg5djdicXlncUl4SksyY0xocUpvb3Z6VTdoSndieENKUk5JSENRd2cyVm94c2pyeVV4am1LQlppa244cWUzZTM1Y0ZYcm5Qd3ZMbGxBTmxjcjZaT0h5ZlljbXNTVlloUW9IUjd2RGhwalkxNUdKMEJleE43SVRyNzV4N2tFTEQ5SHo3TGEyQ0ZaTlZ0aXJRcGovbDlnU2sweTczdlUxQU5TSEdBUytVYjl3eUFvTGlZZ1o1bjZxQnJkSnJxUEtXU3I3S0g2eUZzOHRKOVNEdURoaGxuMnpneWZhZTJLMkJNa3JxcUt5R3RQNlFxUjJneVRTNG1FamNub25JdFFJVjJnbmVldEtsQ3J5VEZIMkFURWRadFh1SC9ZS3NTRDBYTG43V1lGWnNmZ2ZHTEFPUlExVWZISzdYL3BsZ0Rudzg0TjV3cCtEby92TU5VNGRiUWNnWk55bHI2NlBiTVFmWjV3U2M2Q2hhQUdBRmFncmhyL2NXL2VuTmJjYmJJbGF4MDRPVDhvRFFtRUc3K2tUK05JTjVieG8zWUZxQjNxdXE1K1gzWFMzME5SSjV3NDU0UG8xbkJDTDQ0YVVvNzdVMjQ3Y1BJd1pGMmNBNWxRM2VpeE0zMHI2Q3RROGhueVZnUHRxSU1QZlNRT1pzQzdJVTh6VWFITlZ1M3F1RC9pYktwb3F0MXZ0eFlBRitLampmdWdmUnVScWh1U3RpRjNpeDB3Uitxd2owUzFaNUtBNFlFZ2l4ZG91ODNvQzZUVHpuMzlYV1Zic214TEpOS0ZVLzdRaC9oYXRCZDV4Qkd1ZXRYdnlSNHJXRTJjb3FwMEZScXpGY0FoeFVjRWpBWmI2MXRDRlV2WS83c1hVWnNuL09QSVJkeDcyRDFaSDkzdEFFNkVqc0dZbDhoSmFqUXVuQmtSdTNHMXF1QkREMnpFQlVObWkyK2JWWjNWT3djZllGd0JwMURjOVF3ODVuaVFDc0JqcnBxOVd3bjJuQTZBY0xES1BkUHVQODQxU0FQUjZqaU9lTld1dzdpQnBRQjZGK29xMGo3b1l6TmliK1NsR29YUWNZeis0dGdBTjBMbHJqT2dQbjA4YWgvMFBXWjc3TzBiNXp6Rnd1bVA2Wmt6TzNwYUwvYUFtSGNWN2NvNTRaZkdzT3FCeVlXZDlOV21yRU9WUlNiSEFvT1dzWkp1L2FxeWV3TlJFbytFUk90eVdEbys0VUJuK28zRnl3TjlpSDRSQlpscTVWanVjVGtLQUJ4cEpIUEhiMC9SVlZ3L2luMmt2aXZ1U2MwSkYwOGtoc1NCbXYrM2d6OVlaK2gzYndoMkdwNHZsTG95cXhUVFlYK0VIQnBZUFlxOFhjbWNDdlNkV1daZ0R4UXF2dEdWM2hJenREM3Bhem81UUszQlp0ZkxSN3h3a0lpRFZYRGRYN2c1SzhxWG5KUXFzbFJUZnJ1T3dBNmtndnRxTUZqOWZKRWN4alNqSXMzVFlKWE5na3FGSTNscm1ROE9GeVYvM0FSeitkMThyUUErVWh3ellHM1pyUGZvd2c1MzloWkdjcnlMRHc1TExOTXhxY2k3S3BUTC9mSEZxcXlwNFB5NGF5UUU3aEhaZkZRcktaa29lR0ZmcXN4R2xvbGNDeHhZMTJHOU8yTGltYkVSVjJISzk3OEFWTDNuTUJWOFV5elpXaFNtOEZOazB0YTRRN3dDak4yS21UMDFtaDFzMmtVVGphSFNBYzhsVHlSWFlPVlgwZkZvZWdvNHNpUkpOUXVTYm85OEQ1YVBQVURiekN6OUt5TkhuOGJINjFFSVZKWXNybVBaVXN6Y1B2MndTTFd5aGZxUXZEbDFxSGtIMVlzbi9Ua2tVQUN5N2k1VW9BMnFUNnpiWnUxQnVwc1RHV1RSVnZDdVNBOW93OEV5WU4yVHBaMmIrSjNaRFVTZ2lQYXBDZFM4ZDFzY2orOGV1UkV4cHFqRWJNcGxBQzQ2cFR1a3g1R1F4UDBrc1Q5YlVQanlWaHYwdnpFOER2bTZCNkFkbHVrTlVheHRrWStZSHNPQ256dHVhZTZTNTFJNGh5Znd4Qi9HR1g2R2pBK3h3VEpHb21uamVFTDhPUDNRSWpxOVBlbGR2d1JmQWEwejdFeFVGbFlpVklya1ZraVRjd2Nja1UxdEkzYjUvakRaUjNtS05DdWUyZ1lKRGZGeENlODMwNmMxMnJ6Z3lMU0FLdVF3cGFQM2owdExCUndDSmFqU25keklPamg5WTFOdEE0WFBZSFFvWk1BUEVGVTRldzJEcHo1UWlLUlVlajM2dktocjdYb2dtMHNJcE9oTFZzTmZxVjVpNzJqYldRTDhNUjBpZTZHNytrZHoyTGY0S3YzWWhWalNUUks3NVJDZDE1MnJteFhMcEFHTmlQa3FsSEE4QkI0SWQ4Y3hDdEkvUEJ4V3RGd1JQTHRFMzZwU0lJSS9NOGNnNGNDK2NFUEFzWFI5cTF3eUhXWFFaSitiWE5EcCsyUTJnRzV1MWd0aTlLMUsxcUtoQ0kvTlE3L3dlTWo4U01ZQUs0aVczblRQL1pab25POGc5K3pKVFRIUHkzWW5ocU5YRGlmQkZsQTU0Sk12NW5QcVo2OFhIZTZTR1ZQQWxhc1NHUldETUk3T3pDb3U3REh0elI0VGNqRmRrV0dMaWdTS3YwSXVOUDhZVWFGNU1oSnNVT0hsMmNrc3FaekFOaU5yT1U1MU1ITHBkWlZXd0R3RzVTMjNvWFBmNGwwbXNzUkZlbUVaRldaL2lQSkQxMS9SYnhtcDlTanRYcG5Ea3hWbWZ1cnlxamZmVDRhWUs1aGw0Ny9aWW8wV2VlWFBzbWFWUm5Uc1JNSGJ4K0VRZ2k0QXJqTGo0TVg2bTRoSHd4SzF4MVNjRFIzL0dVUkpiMjFNRVpGM1pOM1QrWXR6eFZ1TWJPMVVPalVlaitUTTAwcGZtWVNhSmRkOFRPdkw0MjU4dz09', 'error', 'a:3:{s:4:\"full\";i:640;s:3:\"low\";i:320;s:5:\"thumb\";i:150;}', '1.00', 1, '2023-05-24'),
(10, '2023-05-22 11:39:08', '18257974924101440', '2022-10-05 17:44:01', '2022-10-05 17:44:01', 'eKeUc8kUoVvWRFwYLfd8cVBkMk42RlBsL2VaaWZDZWQzejYvVTVwMzdMNzV2VGx3SHp2bkdsbU1tcXhwWDh1UFJDSWRXYnVHM0g3MXh3NmtBM2cwa2g5bGZ1YnNoMFFQOW8zSFlRTlBCQnYzVXNCSXlDYlVXejNFa3kxNWpIdWJGSUZqWWxKWTgzaWk1bVpmUk9LTTRsMi83ck9ZMDVqTkhuWFdZK3RkazNwTkVwcFUyK1VuZlhBTnVBUHVVWFIzNlllTkE3aWtQYy9zNjJrM1BkM1I2VngvWVk1YkhlbmRjK3lZL0VNR1RaQWszSE5NMVM0SHdHQmQrS0xMTU1Dd0IzajliMWdIZnZ4QzFuc1dxandyNEpyS1l6djVrRlRWNmxzK0hTNGNrdFhiRmVEd29DRXhwczBoOVMzcWFVbURDMmxneGEvdGtIRldPMnBXR1FVVENhaWRoakFpSllBcmc2K2VYM2VqMnY2M09aYUhTZDV1M0pya3BaNFBGeDIrQWEvL3lSWmhXUGJxUVo1U0NSK25jaHV2aWZ3ZXpSYTgvVmdUM080WFR0Rmg4Y3BXYkNuc0VXU3RtT1VXZU9oL3J1MkR0bmlRWlhxSkdIa0RONkNZSkphVFR0aFU5MXpwaEVxOEgwSVltWWpRbTRhZGYrWTNGY20xdkFVcjlTOGRpVVR5M1pjU2NuRTZ4Wk1lajFmQ1pKSTc4bitHV05ZWWpSZXBmcm45MDJCNnRrSi91SXJvcEZHa1dOSUN2SGg5eHFueGVzclcrRWpuNDBjNjNaY1lyemlHL25RYkNPb05EcEVLVFAwOGJHUTFVeE1UMDk4MDBMWC9FWUw1cnJwamRqRyt2TDRKWCtJN2RJTzVWd2dsSmx1eXA0SGdNMkRJaTRzSnJJWEREWVUveVI3dTRaeWRxVG1lR2dLTERQQ2dNL1grMnd5aWtuTjBTWUJCTzVVWUVvUVhlWjBqOGx4Y1UreUdLM05GR2tLZDUydUx6Rm43NXJadi95MjZFUXRoUGliYjBkMjl4d0VJdWY0Z1lBYWEraVFhRjY4RWNmZ0RTWWlscWQrZ2lBSlJneUMvUmxDRitUSTBGd1hibUhraE1XR0VzYktVTzR4YTZKMEZ1MFI5YUdBSEI2RjVUK3pzRitQb21uWVBnYzNIQTFOWXdtZDB6bjN0aDdCemlIVVNUZjYyR3l4MUxSSHY1NE9IUG1ZaWRYbityQjQ0MnVyWlZ0VmdBUExYUC9EVDY5NFoxeWlkMDgvUFlQMGlZU2xwMG90Ry9ZU24wZ1UvQWl3RlIyZ0c2RnBXK2tPbG94WWpTRFNVclpESVo5QzNoSkdmbUoyZzRFeCthQmpXMlMyaTVCM1kybEJpM0MveHNORGF5SEVKYWF4LzlhMnU4VU8xSjNHN1dOcHhzVGMwcDNoc2YySXVRUHRCNUR2dW1XSjkycWxtWjdxVnpBWHRyd3E1dE05eE9QdFNsNEhoOGlXVlIzMU81WVlOVndkcFdyOENtaEgySVozblBDMkFKaTUzMnRBU3dtRU9aQzhMWFNrMnJhNGYrTVBsMzYxN3c1MnAxRUxCRDF2R0NqY01pTU5DbjFMRnppYTY2QXhWcnlZbHhIZFZDUTRpVlIyZzJONDAwanphdVVzWkFuQ3ZkaFV5dXBuYnNIZFJiRE9qbEdYbVd2czc1VTl5Q2Y4bUNMZkp0eUErMUtvMnJKZkJDTGtlZ1NNOGwrcmhWQy9mUWtNUGNqVTRkakl5STNoYVZrODBJYWRFbUNKUGhZU2JwbFZUTE9KREhTTFRYZ0FNZURCSGdSTU1BdWpwc0ZPamgyQmtnREgxZEVBUjRRU09wYXdGYWEvVFJkVUVYY0FtQlVCU2xVWUxMeWFka2RsUzFrRE1rZ3lQaVlvYkl5b0RrMlFMZ1R5dHRPTGIzZExhbXREM0ttTGJUR05XZ2h6TGJVRi9zVmRHdUhzdlhMRy9ZMlg0WEJ4SkVmc3pybWExRFFmSlNjS2gxUUZWcUMrQ3d2WFRWbGU3NHI4eVlpNkV0bVBWWlVHUDRVNWthelBVUmZJZnhLSUlpbE5ZVnlsNDloTT0=', 'error', 'a:3:{s:4:\"full\";i:640;s:3:\"low\";i:320;s:5:\"thumb\";i:150;}', '1.00', 1, '2023-05-24'),
(11, '2023-05-22 11:39:09', '17987104408604691', '2022-09-26 04:45:40', '2022-09-26 04:45:40', 'R9EA9nnBEwUj4+WzRB5XHE5iODloWTBzQzNCNTlwdGhPUEZ1c0VOQ29lVHJJTzN3V045cWo2YmM1RDVkU1hSa29mV3p6QWI5VWVMVXZ0UUtoak51YjRyWE9yUTU4aXFmR2FUYmFaV2ZuZ2g5ajV3K0VHR2w1YWs3US80aUhUc1E3bGNIRWdEL0g4WitPdlBMWlhXYmdhZHYwdnUxVTI1QXBydmhTMWtPRUZzSzBOOGUxZ0tzT1dpNkxoSTBjZHhQcS9IUG9KTXlvVEJRVG95VFZYZUpqYm5KMGtId1NqM0tma05lMW1XR2IzQTBwZ3lYTWtzWHFjMGNyUENRdk85OUg1Zjh1Y3ZEM2ZuVlFwenlaY3REWUdKOS8xT3pEQTJ0L3Erd1oxdjBpVFgyV3JMc010d1IyVURmcW8xY1d5MWdNRDJYeTV6c25WM2Q3di9yNHcwbFExcng2b1JjVXh5c0d1M3I0eWJia0NpK09TOG5tUi9COTczU3ZaVit6eFpHQStCVmZ2ejhRVmE5d1RNUUJ3SVgzZ1NrVUVYYnE1cFhvK2w2dXVURFFGOHNkRUlOSVRHMGUwTUs5QVBxbmc2TkNhUW5xK2ZjOTBKK1VqVlRsWHpUbUxEOFc2UkZYWTZTK3VPMjRrUHJRYXY5R3Uwb2VZaU14ZzBNN0h2TEphUXFod3YvWDhkSXZKcmQ0Qyt4QkVsSjduOGhEcXFJZ1B0amdKSWVMOSsvL3BXRXU5S3o2MHBXcytqLzdoMGh5VkcyYkVvMURLKzBTSEY5aFlKVHlWN0ZUeDYxNFVIWkdvaVVxcGZjWHdNTHRhRkJ4UFpXbS9jZ1FRMlJlUkdkek1KN1UwVUdtSk51dmg1N3hndUNodmZKTnRMNEszOW55SnVpSGtyRklGWGVNdXR3RFp0NGNkeVpWL0U3bkZZTDJhbE5nZWJucXM0alV2cU1WTFVXZktnYm9kWko0YnZ4YjZGVkhUbXR6VStRSjNTWjcrTFdQbmNWQ1NBcHhqcHo5ZWdKVW1uaEpRQ1JOZFBteFU4aHZKMnM0YUp2Mi9TaUZnYUIvTFNzcTB3U3lkTWpsUW5BZGV5dzBPNnBDZDdLOWVRcS91QnZTb1N5aG1Xc09PL2ZxSUxHQm01dEJsY0g4TmtqUXVwNnNkWDBYcmtLY0dGUDRoT1JzOHNhMjdTYWx6WldrWDRJSGsvUldhSEI4UkJNdFoveEFOS0JWUitEeExscGJoRkowNiswR01SazFpT3F1bDJtc2MzWlRKS21EdnZTaUNMY2paazltdU1iZGtJYUkzVW50Y2QrS0xCdFRsbDZWVG1HMWp3dUpQdGFNa3UyZmtKcjY5cUJLenNlVW5OK0NJbkU2dzg3ZTJlM1dEdU9lNEhMb3U5cDdFRzg3a3g0dllHVjlXSFo3OXM3cHFEdDJKVzExbjkwWWQzaFJhc1kwK1IrSDAvL3lIblhiMWFaanR0YjRETkgyQjJKaTZzbkg0czVsSjZZaDE4c3JnYmVNK1ZVdVlMOFptZkVGWkVKYUZ3Mm5iblZDUzJZaGdZT2RYaVRXWWFmV0JzVzhZNGNYRXV0OENlYSsvbzkrdWNsMXRkL0FoTkU1NWZNK3lDQjBuN3p5S2hRbzIrcGlZRDdsTlJ5R3JUWWJUWWkwSk1qUVVlYzNHU0EzZUhIVDJ3ZTUvTGZKUmY0Y0syNm1uZzdsUUlPSmIzMllJNk5kR21KcmtDbFZWWDRWcnh0WjhCaitpQnZVSk5Pb1VoZHBuV2swUDhCTVZKem5HWmNSbStWemFZVE5DQnpWRFBLeFZndkZieFB0QmxWMUVNWVd3ZVdEYmlzaytScTVMZHZmemxoaHJ5cXpJUk9STEZKdEpTZUdLUjFSYzRWYUt6L1R5VG1YZ256N3FQd3NTUVpVWkdYV3lsQXNILzAzTmNaNVlldXgzcTBXOEQ3Tm1JVnlZV21SL1ozcnFIVnkvVytpbS9pdGVnYnIxNngzeDl2czk2OGFmQ3QzcDY0WTN1SUpJUGU1dVlnVmE3UkpDc1dING81b0YzM1ZReFhVR01qQW5sbTRGRi95REdNVmFwQVNTclhxSU5GTUtVbkNlaHVHa25lUUJWNEEvalZPcUxyOGx4ZmhJT0FrRS90U3gvaElUL1RSYnFq', 'error', 'a:3:{s:4:\"full\";i:640;s:3:\"low\";i:320;s:5:\"thumb\";i:150;}', '1.00', 1, '2023-05-24'),
(12, '2023-05-22 11:39:09', '17952155090138957', '2022-09-25 07:02:33', '2022-09-25 07:02:33', 'HZY3dOjCUon0v/GdOk9FRjRWSmQ5Z3FLL2ZPOGFEaUowV1Izc2NRUmkxWmd0K3AvQWtiVEtBekVqMUhJUWZacFhGYnJJVXEvQ2hqNlRoVWptRzIvZ3lIYWd4THBUOXRhOUNxOUp1YlVUWWVOM0doNzd0dFY1bDBUTityMjhUM3VML085VDhWS2RmVlNCejdvNjFTWTRsbEYzLy9tUG9adG5aS1hjYzBKZWphcTRpZ1V1OThFbVdNRThkYzNkN01DNHpJcEZzWTJiS01VQ2RBS2s1UGZqaFgvSkhBTGNyc1FyTVBBRGdWWXltVXRTdHNKQzlkZUY0emhzZmVRV0ljWlhIdlRnMlJYNkU4WHJkdkoyWDFJSXBtWFdUVUhpOW41YlVGRHB6Yis3ZGlKUXJJcmtnL2xNamx4YlNZNHQ5Z0F2Zzc0Ym16dUZFeVdDOEJ2dnNRZEF0bEhYNTh0NFR1TGQ0VFEyZ0g5cEFJQ1dmb0tPdjFEbkRoK2JzMXZ5ZUNTZm9rbitIaGQ5VSt2UmFGR1ZJVWtjUHo2TThUTGxYbmNqRXFwYTIyYmdKZ0dxeWRhZVBoM0EzRjkrOHFsdUxOL3BNN2J6N1Q5YU5YV20rL2x1bmlsNG9uSFFFUDczY08wenpvYnBiK2dveWsvUGl3bWJuZ1lLU1hPSjRpSUd1ZGRlVzZBUGZEeFZmZ2xHUUQ0SXFQaWU5djI0RTE1WEdDSVkzZ0hKdHlMWTFCYzNBK2gyaW43emxOWHltVVRzaGRXSnZNVmdlVzJSaERpZ2FRdFFjTXdTcTdTRGRXeEhIQmhyZHZuZ09QcC9xOUR3WnpvcHdIOTFHMEl4anJ0aG5UUDF4bHg3cW5HaWxLNVRmZ011RFM2bndqSFltdXhpTitQWkhsc2x3QVNiMW9WQ1pNOC9COFJ4NGlOQms1TjZMQzlMNTZBeTMwbjFCd1pyUGtUK1ZZZEZqeTk4UHM4NEFhZTVsQWxqV2VWMGhibEQwTjNIUjFuOHF3UFd1cldheVp1NnVJK3JLYnRhUUVVRnQ1QjFwcG94bktNZE5JUyt1NHJ0aDZBTkU4UXZZMEc5OUZmRXExZy9GSmhIelpCSmd4M28raUl4NEZRYUtxUmRWc1ZsOWNFNWVPSHNndmdTTVQzNFJsclQva1I3dHp0OFE3TmJOMGY2MnJEK3o0MkJUZmhFVGZRV2ptMmMzRzRBeHpTaWxTaTlwMFhRZWJLaEY4dWZOb1Yzd1A1SmRxZzB2eUEvZ2VUMG13OWFhbFBZcGxXcHU2MkxBYVZUZk1BSTFDVno2djR4V1VLdmNxMTRpZGZKcWlNcUFScjM2d2dLazBiVUs1SFNMakYwTDNhMHRwZWNtMzRVVmc5UXNCWHRKdDNLMXdTRUxUYVlBcCtTK3JBQjMvR1NwQ3NtdnBGN1VINlVadHk4Qlln', 'error', 'a:3:{s:4:\"full\";i:640;s:3:\"low\";i:320;s:5:\"thumb\";i:150;}', '1.00', 1, '2023-05-24'),
(13, '2023-05-22 11:39:10', '17925000323424915', '2022-09-11 11:22:49', '2022-09-11 11:22:49', 'i+KMIKdiRUS8M3yBXYyHE254NjZ3UUpIa2svdXVXbGxLYmpVY1ZXcmZoMGUvZ1FlVU1DcDhUSXJVUDNmakpjVzBLTmdDYWhpOEcwRUtGWjQrVDZLZ25icUNVMG5yb2Y5N053WFBzUUxNRU15TytadTBSVDh1aUc5UE8xZjltdS9jd1hITGRINEZKbWxmejNGREw0aDdXT0VhSm5pc1FiL081NlQ4RlloY2dKSjJKQnZ5aGhlcnhlbnA3aUMxaVV3M2M4QXRqdVZrR2U3UFVNRnJQT1M5SndneVE0SGcrci9pZHUwYW1Fb3dyQ3NuRllUeGN4Z2VIdi9YTWU5UkNyc3ZIYWtnRWRrVFRvOEl2MHJ6WVNsSGp0VHFMSlN2TEVwNlhhUkRUSUphaUpUV2VtOWViM3NCNDNGaEtKMjVLdTFNeVNmR2hjWllNdnUrUHRiVmQ0SXlwa0FTU3V1OTc4NDMwTG03cFRkTnNERHNRb0JDaUNpWVl4UERSaENrcHNMSTZwTDBUREF3QUNTaStNSTQzaFNkei9WQ2RyajFURnhBZzFNVW5LalgrOTh1SnVsWVNQZGpmcEVFYVhvTDVLUE8wUG4zOFUvMjkyc0JIWjFuR0t6SWJCdmJhRm8xejMxMW9BM0FmWWtlcHdkK0h2eW1MeENhNTZnS0U5TTVqekV0Yk5IZEpXamFiS1ZINnlaWXN2Q0gyTGRyN1V5RU4zRUVvRFV5VHBtUjJUQjc5MUg3UWVQNlJiVkJsa3hHOWE4YzRVWnFoYjF0ZEphYTJ1Wk9Ia3l2dTNuaXI5OXJhbGpjNDJSUk9xNlRyS2wyT1AzMzBnVmt2Skl4ekE3RXVUaHRxVHcxUG5pUHJ3Ym9iblVPN3EwUUpxVENRUnM5dFUzNUF2UTUvaG9sMmFGYmVCWnBLcWdad1Mxa25hVHk0KyttNFpwTTdac0pwMSt2QzNRMnFRa2tyK1NlVHduMjdETUdhaTc0WisxRHNUY1FUMy9vTXpKM1A3NkNJT0o2eHFoV0FxZVRKeU1yWDFySUZwOFo0M0VRMEZ5UFBYVWV2Z21tYjBUWFZSODJnaXdVejVIVkFXNFJrTnJ5VGJwNC9uVmJYN2ZXZVRiUEQ5L1Z0a1hzTXJZVDdlSldvbnhEZ1gyYll5ZStsSk13UktXUkQwbklyS3lFejZHMkxSaWFpZjZ5WWQrNWQ0RVNYOXZRT01INHJJREZIbU0xNFdDR0c3YUt5WWxrcFNXNXBQYS9lVE0wTk1WNjc3VjJPOHJiWWxUQWtyYXk5R2tUQ1pyb1BhY1Y4RnF1c1BJQldsYkw5QzA5MUhEdmFxNlVuN05xY2lzTUZlbHdzOE83UFhSSjl3YTFGaCt3TkRodjk0dnFVNnFsMlUwaGE3b0lhTzMrbEt2VTFnSnFOOUFSbEZTT0lkaWJtV0xrUjhySFJSVzljUFhRbEtVMFRxKzlXWjVxVnNvM29PRVJ5Mnd2eWwya3F5cktuL0JUTHBFdzQwSkZuQ21WOFhYRjk1WmRmV0VkWHhRbHB5MXpsTlh2NUY4QmhEeGVjVkNKYjVMNVRZc0V6eXNEM1VzWDVkbDJ4S0VHOU5WemhPcFY4VEMxQUxLYXoyTVpqc0lMT1JKa2tDVzlZOTVFWFdjYWVqQnhmZk1Fc2hVS0NwUEFCYnRXeHMyYnRXK1pWTGJZSnZnanhsWWVqZFhVS0Y5UkpSNGxQZWUyVGp1cDZId2d5cjd5SGVwTzV6UDFKYjV0SFJFaFAyblNDdUd4YzVZdk1lc2JOTFgzc0VvcXVlUHV0OERPWTNDcHlyZFVhVUh6K1lSTCtyUXM4em1zTmoyMG1TWE84NEZUUUVHdnhCUzZiSGNoSkZCeTJrbjEzWlBza2VPRFd4QWUvTHpIL1VwbVJSMjNlMUhmYVI4YitQT3RWdFpSWWE5NUN1SzRZcnI1enEzb2wxZjA1RkY2RC9oekdDWVg2S0ptYzh6OW83M1ZpcHNWMzd0NVp3U1pKNVN5SjNRN0pYV1EwZkNYMUxLVXZLamd6UzV3QW9GREJiNFhiaGpOWmxSUlpkenllMkVESE4rZEwzYXFabHNab2hBMysydmZXSk1SbFkySk9nS29DNldmUEZqRnNwUkJKODZWQ0trL1BwVXJMSWdlWXpXUTNhZExxdjJmMDNQNHBTenA3V29DbW1XWE1pNDRNc29aNmE2cWlCWjBxNnN6d094bjV2a0h1R0tNSit4clV6R2dXODFFaktlSWJycE1Ic0xLUXdyQnZCNlpJWG9kV0JBL2wrdEordG1POGZPczhacEZDSTJHSlhxNlJZMXlPYmhzTk9xSXpWRWRMd21LMDV2N0tyNmI1ZzZDWlRYRzh5UXhPcVA0RHZaOU9iTGtWcGVMOFhWcGtpdjdMREVoeUZqcW1yb0VmaHV2MlFsdEEzZE5URFErbXBwOXdmMVdwaC9IRElmemp0VHhIRkRhcCsxV1NWUmVWT245Ukt4SGpNTXBLNzhWN3NOT0JsU1gwMldEc1ZVN1NjejRWZHFENmVFQm1GbkV4NUdwQ3VWajdOWlpzalF0VHFmMGpsMG9xcTNUUFBrdmZtVGRmY1JWcnptcDVZREJSY2N1aEgrcDMvejA4SUFOK2ZIeFplU2xhWmpvb0drUG5RbnBHRDk3b1dYRmt4RHQwaURKbFlIeUdWZWROaDNudVNCdmM1Q2dsT05peHU3TWRjL1lJRT0=', 'error', 'a:3:{s:4:\"full\";i:640;s:3:\"low\";i:320;s:5:\"thumb\";i:150;}', '1.00', 1, '2023-05-24'),
(14, '2023-05-22 11:39:10', '17977121383632234', '2022-09-01 18:04:26', '2022-09-01 18:04:26', 'W/kIX3tuvGETTTzKoOwnqDZ1V3lYM2I1SDZSM0oyUnhSblZpMU51WnlQQzVOZXhKcXdZcXNFUXFoZ0QzbWtSYXNVMkhlYVlZR2NadE9ZdXRYUCtveWc4aFlxUWwwRExGWUxmSU5BUTlydmwwQ2krM1VHTWJHNHRNbyt5cFFSZkZva0MxSnlmOGgwb3FtckcyaklyQlNnZDd1aFJXSlZZTGRxOTJuWHIzcS9VRWdCbnBOOG1OWUIvSGZJSjRIMnhEL3JEUEFWd3BVYXVKMXlXZDl4VUhBNDUycnNubVA0Qk1XcGY5a0xwZHBSRmdjNk1kSXNETlVMR0N0WUxVNXYxY2ZlYzFMdTdhT2ovRm90dTI2MWRxSXVaWWNJZitGbUFPeklKYmtLeVFvQ3lweDhwOFdkZG42Tk5rcjlxRE1EakVaYVk3dEY1ZGhaOHZ2NHEyVUxTQUttZzJudUh4dnlWYW1BMTZISHRMa3dRWEM2aG95VjE4K3czTTlMVTRUUFk1aGJnQmk5VUFJY2wxWUgvRzVvMnpaRDk5T1kvb0R1Uis0eFhDMDFFdDhDZVNGbk9lV0Q0ZlBVdUhlZ0ZrMGFUYktub2ZPZFQyMWZFYWZuaXhGNWtGWlVPQXhnb0hmZ2JlU01wcWR6WGJtdk1CQUM5ZG9pMmc3ankrdFUzdzFCWVJJUmE1cnVkTXFOdGhoeWYzSExPY1JLSHQyTEFBN3Z0NjFlRU1KZG5EZ0JiWGJ0d1BuenVEZE9nNkpySzFZd2RSb1dDeGFqUi85aFRWOVlVTUtZeVBPdkZ3N1dpMm9iSDhhajA5Q3dFdkNkbDRtQy9RdkVwaSt4QzZpZUlZVzFneUxMMUp3SFlqSEhPVnNJR1d0V3RJbWxWV21YeDhYVGt6emVUTmNxZ01ILzJDRHR4a3dWNlRWM0svL0M1cGFZT2NJS0dpNTNTdjl0anpNRHZ1a2JhNmZEM29vVytXWWJkMW9FNThCRytuOG5JVnBzaVZ3azQrdXVtdVhNUzk1c0hHZG1pOWtjZ3lxd3NCR1JZQUhJVm8zdzF6QWZkV1FoclJRN2lDd1lXdUpqNUQ4NWk4UnlTVEltaTIyR1Z4V2F2dllNc0dncnR6MlRwaHVZOUdhS0NHajI1UnRzNFg3L2JIRThIbEtyQVN2YkVwa0V6NlNObUprMGFnd3U1OUdNalA2cW1xMG4xZ0FoMnE4b1JLUk1ialBEYTA=', 'error', 'a:3:{s:4:\"full\";i:640;s:3:\"low\";i:320;s:5:\"thumb\";i:150;}', '1.00', 1, '2023-05-24'),
(15, '2023-05-22 11:39:11', '18014566015429006', '2022-08-23 09:58:08', '2022-08-23 09:58:08', 'EhrZ55bNJwpsr9egV5yWrU5OMldQK1F2cUxZUDhhYTEvSzZpU2V6dFA4OVR2aTd5K1N5dEU0UHVXQU92ZHkvcTIzMEMwbFRYOS8vMklWSVgwd1RzcGpqeW9CR0pYcGFCQk1SNGpYNHQya1ZNY3o5WEp3ZlJZTWlZNk45anpIT3dMS29sd2pKeTJGM3pLMGJJUjJ1QUxBdTJ0dkdPQXVRZFRCU0JvTDhKbFlvRzNSaGs4MlF3US9xeXVrV09FRjBINTA1NS94UFlwdEFVWU1Ob2gxV3ZQUkhzSEREbWpnSStZZnlSTXZWR1NaWld0NEhHbHpHYlBvcnpsMEVCcXA5WGRuWnNoeFBLVnBhVEpGZW5kNjBMdTVPMllYT2FVQzlxS0xEMGpoOG82c3E0RGNSZERzN0h6VVhVdzJkdGVzOG1MSFhCUEZjRGd4RGdJNXRXbjRYN1BTaElNQ3F1WXpEQzhIWmFFQ3hMVkdCWWVKUzhEUkNkSlNUVE53cW0zUDNPdWNnTDM0ZFJwNUNJSk1MZHNSYkRCRE0zQ2xtQXdMM085cE1RZTZncld4U1ZGa2J4WUZqUU55MEhsbTdoYkF6alpQRFFVQTI5YnVwU3JZTmVjWHdVL0ZrVU5Ycm1tOE5UM25Tc1FWeDYwM0IxT2VQWm11cEJPZUR5bklnY2pWT3hyU0lZa2dpL2VBSGlTcG5sTVZSbVg0OUZmTlV0RU80WEMwKzlHakJXd3dBalhheUx5MWJCdi95Y05nZlJYTURtY1I5TkhzRkhnb0IxWVYzL0ppL3oyR1AzS3gwZTc5U1BSNnZoUnlzUmU2TWRQMGV2Q2c4cUtSVmQ4Ylc5dU9JMUVqbE9jY1dYekRRdGlHQUFmZmpCNnY0Uk9TeXZZWnVLV1FjZDlCUmtTeFdpSC9pMFIwbzc2dW1TcmhlRklSdWZmY21NYjZxOVZXU2djN3A1ank2ZXVlTzFHYmRPMG1xRW1JSStiWklWUWxNQU1aZEdMV0lad00zRWdIL2hhNTF3cUlsWCtuclkvUlFvRkkxWjdobC9lOHpqK0tVdlRCQUFqTEFPeGZIMUM0Nnk1cjBQTUJidHdsNDUxZFk2K1lIVzNlNWdLQUpwdVFLVUFhMml0WjlWa1JLVHlUb0hDa3pvaUxINTA3Zk9Ca3VTVXlNYXZJR2tjdkNSZVlNa0R4OVh6VFhxZkw3VytwZElNUmZJL0hpM1hac2FZL0oyb212c1pPTkVMRUdKRlZsRmdlWUU5clBZSkNaOEo0cW1wVm9BTjFqeFE3a09KRGlDVDV3VDdtN1AySW0zVVZ3MGZpRzFsdld0aEQ1aWREd3ExYVNvcTMrdHdta0FrQXpKeHJ2M3RBT1VFRlNWQ2dCZCtzZ2o1eldrYUpYelBpc0U4SDZ1b1UvN0lzMDQ1WGdZVFNKdUJad3Q5VzIwVFJjNDl4Z1N1ajFTVDRWd3dadWkwblRUTFZiWkUySm1tVHp6TUxodUl6U1dFY3NGbjMxQWtCbi9pV2pjRXg1OGhOM09QanVtYjVZY2d2WDZHYlZhMm12MVVWN28zanhtTXJlbkxROUo3anZ1N01obDJ6QnRCM1RkYmVpSThRZmg2TGg0WlFJcW1MaGhhbmI1UitOZ3Y2RWhRRVNRa1dCRUpTeUZ0N2NUNVdvb3YrQjVCRGg5clRBSlQ1ZHVNalpjZ1NxNlNxVWRrZHE3UTZ1WnI5TGxyRkg1RG94NmV0Q1lldDZ2RUhuS3MwcmM3b2dTZHN5YkN3bisrT1phbkxmbVVGQlFIU1I4MWVIRVhkZVM0MGtJMktUMTNmWGN1SUp3b3RqVEFBV0hMc2NoV0lyWUZUcDM3R2RYT3dWYjB1RVVlQklsNzhzQWIrVG42R2o3UjJ2akprcG5zbnAzOTRNa2pvMWJMRW9NRHZjcFRtQXNkTWloQlhPbngyaEtkT29NNUlDZTBwOEI1c041S2U2Y1BRd295Z2RYNlowb3JoN3djeHVLTndkZGo3WFMraW1LWURzYnNiZldIK21lNWtrT3ZHT2dNN056akE3UFRKTlZwMlZGUXlaUGpnZDdvZnQySGpXRTI2ZHNDUVBxSnZVN0dPSUFYaHRtYUNuYTlON0Q3RTRWb0lEWlpGOGR6MnVUZnEzVEhEc3pBd2FhQlplbHRaenVhbkxhd21Jb2NTSzByZ0ZTbklwdjEwR0s2RU4xdVA3RkV3M1RTQ043UDVhb3RRL1doVFdvTExHMmVpVCsxQm4xZmpEcDl1TnV3YVV5VlZPT2hNYUt1UVd1SWlacTBtbEs0NmFDeU9teFZvV0dnbk9KWldCdnhYbnhGV1FFcUpFK3MwRzg2ZTRvbG5lYno0RjNVSTMxQmNHc21wOFdNcjBUMmtXVWdsTjRXS3kxOGJENUVxWlJxQUFoMFlCYnp0Tmx0bk5tQXF0Skt2RkRJTzdoVTR3SEdkMmQzZy9tTFNhcjQ4elRoZ29BRzhUWi9vLzlMMEk0NDdhMFh6SjBKVSt1MWlDT3BHSUNob0VhMzE4U1N0MlVJUFYvWUFmUnBMSTNDSi9BazVZM1lxVjc4dDVtU1kyd2tKT0F3bXBvaHEvbDQ5cnltTGdmWDdlNzRIOVJIbHhLZk45ZG1iRTlodWtpZzlBOUpTZ29mQ2Rud2JzRGNnTTludEplOWE0aVJzZ3V2MmhxVEhOcXNSbVFvdHdHalpMM0tWay9aUjk2TU03MUUyN2hoTHFoVU85aHFIUWx2WHBiS1pnWWxMVy9RSDljZ3NBNnJRbHhsOFRRSVZQNi9QMnppNE5kMFdnTHpESHdxNjdJL2o4M21MQ29LUGkwUVBOVm1PbGhEeTVCL3lRdUJGc0ZqVnJaS2FwT0Z6cXJaYURyczRiWUl5dkJsQU9PVXVHWXJYNlhmVjVMbzA4TGdVN3NaREpMRjZMRDdlbEN2eDhkZmpGWlNnUUNTbk9DVG1yUmhoQjhOK21FZ2Z0Q3F3S3AvaElGWGROZWIxWSs1S0lWcEJjeG4rbzdMaGo5VUhUbm8wQmVnZ1pHd09WZ3A0TUxFNUFBdHRuSFR0em8yMzVzNlBLY0l3YUJMRFhybVJEYmpUaU4rT0FJNk0yaGk4cmtLZ2YxVWw0WnN3MnpmVitZa0tkalFWT1FHZ2trVFpPY3dxTUZOemRVdmtZQitBVGFjKzlidkttSHFmdER5NXJUQW1TdXFpeml1R2pLSmpkcHh1QnhkOGhuV05yRWtyV085UjhSYjNpWXpuSks1WWFyNzk5MFphcERIU2g5dEFCbS9FdFFoVTNNeE9leGcvYkJmQmZGTFJXV3FGVXlrSUJybXRZMzIvaWIxRFlZb3VjdnVlT1ErTlU0UzcxQy94dkRGQWNtWDJvPQ==', 'error', 'a:3:{s:4:\"full\";i:640;s:3:\"low\";i:320;s:5:\"thumb\";i:150;}', '1.00', 1, '2023-05-24'),
(16, '2023-05-22 11:39:11', '17977256905619136', '2022-08-16 17:40:36', '2022-08-16 17:40:36', 'UY1462YyAHv0/qZMdKJvsFRya1d2aVludDVZTUt2Znh4VkpIQVdoRG9LKzRnbkJnUVphaU4vT2llUTRYV1JRYStTamNObnNhYmFxamRiUkpYS2s2ZkVCQlBHUnFVTG5QMmlvMU80YTFnb3ZSSU1MS1JVZXlsbXRraXRVZm1ranQ4c1F6WXd4bWhscEMvOXkvZ0ZtUTFzbWs1K3A0VU0wY0p6ZVVlRTd3YzdtWUdyVUtUM1FtVHNnQUkwQkRqNHhuaVoxbGo1WWJYUU9wMC9zVUM5UHNjbXVMTDBsNW5qL2hkOElyZDFlQlhqUnRGeExlUng0aCtaMXFOazdJOGJZRTd0VVVKeGNUUjdLc2M5M3Z5cWFXNFhxeGxhMy85UmFGT05zTTdUK1JyanhsbkNpT0FLRlBOZDZlcTRkN2s5RFMya0t1Mk5VbFFWVzlkY211dmFqRXFOZi9waXhIeWR6eWtjM1hYV252SmNPMEh0SEdqZ21teDVtdFZ3Ty9oc3VxQ0RVOUhWK25DaCtCeW01c3YwUUhTdVVkNlpWWS9JakltQWdXQzZZdFkzODhRS3dlTk1US0F3VUc4bUR6U1VmUVVYRCsvUk9RNUYyNy9NbUg5L1RyVUdRdnVKSm5uVm1INFYvcGFXL2pWelJ1QjhFR1JhbjR4eG9yUElNNkx5TEVNN2NidU5Xc1NHWGxNVzRsdkx1V3hxV0k5N09MQlhIZVdnczJkcm1wMzVpUWxuTXlRcGY2bFhuTEVWQTd0bExqY2NBNWpTeTVRMjZ3QUhHRjNuYmNxM3pWNmU4TFd2LzJjRHR1OGhHM3lKSGR1VnMxQSs4QVNmVkprVGZZejdPWnBnRDI4MXRKSTVDVmcyMDI2Q1VuSThXUHJnN0dQSE5hc1FPSmpUM1N3OUViaGxOTWt2dlZiYW4rRUxsZ0ZGcEl5ZlpNajA2N3dQd1VsWUgxVGFJWk05RzNOTlhXenovajRTdDJUSXlkeisvSXFLbERocHBjZjV3SW5TUlV2cFpaVGI4WWpZd0NLVWx6T1FVS29QMVQrK01rbVlXeVZqVEs0dm8xelh5ZVZCZFlUMXFZQm1PQ21OSTlodEY0U1dJWkloRWNLTE1tZkZLcTRlLzJ1dll0SlEvRjlIYndsTnJibDlQenc3eXNqQnUxTWxrcFJka2xVWDQ4ZlZTOFc3bTREOE1FMllYcWNDa29CU29udVJXL3RKTUs4eWdkcTJ4UkVONXFNcCtMeUZwVkZHNEhYNjRNTVNPSHdsK0M1dU9DeVF4S0VLZ2l0VzBoNTR6aDBZTCtIUG1BdHRpdmFveGE5YjVLbUtPc09FOHdPOUwvSC82MEpYblRFeVhIMEtQWjAzWXVEeGJ6L1NobDFBK0wrUXF4TFppY2Y1WFdERUlxaXdUUUhoUGNuT0VHZU4wV0tSRHBPMlFWYmtVT3RqY2ZCRnA5ZHc1aTFmTEVYeWtKUi9vN2gvMDM0cnJQUVdMZGhaaU0zWEk5SEp2bGlYb1JRdlNBU0h6c0VLTkVBdXZhNTBpaStVRkozMFBRRGoxNzJxWlJhNWUrbHlpaHpOQU5vejBubjVZU01TMnRGdndDVzdpWTNpdWd3QXBzYWdxemhYWGk3K2ZvWnBuNWN2c2d4MlNldk42T1RPT2dPcVo4NENUTFFCOEZyaCsyUkk3bWN4QWt4WVFCMW9Hc1YvQmhXcDRMNzM4RXpqYk40MUlUZStRU0s2VUVsYkJ5S3M0SU5vQ2czdHJGODJIcVFYT2JpTml4NUFydmh1WFNNT3l2cktRY2FoMWVWdzdrSCtUUWFWKzFWSkcxN3RXWnVRRlBPSXIrSEJITGt6aDIzMktjSmZ5bzdrdEtaQ0lOMG5VTFJpQkNYNGtFV0c1Z3Vyak9mMEdTNXc4bGF2TjF2aWhLYVFaekhVZW9hQm1TOHZpNmpiSzJmMy9SdHFRbWV5LytDSUtNT3dOY3cyTElCQkJFLzNLckZObGVjdmhXWDVjOC9WbDJDamFnN3BFVmgxcTFOMW9tWURXbTllRXB2eCtVbDU2VytrZTNzT2dzNmpOU2ZLalAzdzNZNnVZdlBiTnNJc3JBdzh5LzZHL3IxejBiM24yQksva3NsT1ZONnczbXBNUDg5dFB3Z051SUc4WjVLYkgyTmh5ajlSaWpzQWs0TzgxclRrMVFHM1B1QUowb1Q3K3ZHZmxmSWp6ZGgycS9uOGVEc1M5TEhxS1hwUHRqcDQzRjhKZTRrZlA1ZkJkb2lZOE14TEs2aEJkUUpmb01mTE1nc3hvdTZDSk1MNGZoY2tKTGdUVkxqd3ZEeEwzVDdZS3JocFFRV2VVNkRVNWJURUZaWFVkaGd5bVRQR0J1UmFYVUdiWkQ3dlQ4eEZlU1NvRWdnUUNXVnNaV1Uvak9qVVR0bVlMd0dMUm1DNzhUOVFsMCtSTUtMNHduaU9SejU0cDFiT1BRSjlhaTBoQy9IZE1OaHhubnpFL3htWC90enJPTWp1bFRWQ21pcHpUc0hTSHdFWitLVkVjSWd0THAxaGRRRDlic0ZuWXRSUnRzQzN5VnFqRlZTNmdIOFZ2b0M4ZFRwVXZYdmFPU1hpMTYrV0JWTWF3emcyek5LV0RPdWVTa09yN1dIcnltNDRDVEVNWlpkL0UyL1RmTHdRdEtkTnpmT1pSdXptZ0hnZ0ozbzFleDhaZmw4UElFVm1hVkM2M2F2YjFoQWpIYmhLZmVDVlUwak9uOWhvT05KbUc1RDRrdGdHQk1yRlExZGxkWWtlSlBtVVp2NHJUdzNGSUlxTzM1eDQ0bVlrOGJPR0h4R3dRREs0RFNYNzJVRGk2Qkk1aEd6dk1WNDdwcE5EeWFuU2dFbkFEbjBSWlNoWVVjZ3MzNCt1dkg4RzkvZ3NHdGpwTnZKTlFGVXp5bGlhZGxGVE9ZM244YS9kVXBTQzQ1Q1htbC9OQlZZcndSWWFWd1lqaDJrbTNwMk15Q0RjU3RvOWF5MEdhU2NWTEo4VXVpK1NaUnR2MjVFVjdNUk5weGZUZ0Y2eU4zYjJBT2NNSlMyNllRZG93T3I2L21mK2tTcklKdVFXb2Irdk9FUjlMMnVwcGtxbWhHQ1AvbDVvQ0tlbkJyZU84S1E0V3E1Z1A5dFJGYmU0MXJEZm5ZV3BsU0czd3Rva2hPZ3VZd2xsdytaaVptaWE4a2QydUo2dCtEaVIvZjdxcWs3eDNNdGs4ZHREb1BsRTFZSDhLQVlkNnZnK00wcFpSRzJxbHE5S2dQb2R0TWZQdW5ON00wRSt1S0dXNnlsS3lwK0V1VDVmRmRGU2kxZ2l1RGdubFNoWlAxb1VkTllObXBmaEtvWXZXV215RFpuOXBPQ1dTd2NFS0VWTXZ0K3oyZjJPQjlMK1dBM0pxQzYxVFo3bTFFdlFidXlEalVEeXVUYmVKUXhHbm5vZTc1ZkJXK2x1UkcyNUhDejhUS24rZjlpenBwNEx4WkIwNDlJbnI5WW9odkxFSDBPcFJhdVFWd2ZmTXBlaVJvbDl5L1BibHV1Mmt5ZllITitibldTTFNYOUszTkxtZkF0S0RZdjdXMVJLdnJNMUFFZVE3bjIraTFvU0NjeXdJcFBncE1EdGJ2b3doRTJlNTFPd2ZuL0pVaDRtRkVQVzhaOGNOSDJnVTFEL2VFTDBoeTFpQStDcnBIL2tnTVIwVndVMnUwTVdhSjFoelNHb2dtZ0pjcnN3ZDBrVThpcDNYczZxanRjSFpNTHdMYVdTL2ZjU3FmM1BmTUkyN2ZxUEVrTTVaaGhCTjBkNjg2SFFNTmYvcXdGbnREVDg1WFlUUGU3ekNJdnA0SEdRdTYrdjFqY2lvd3YvTkprTWFDQ3QrYzZCL3p5UlBYZ0NkZkNXaGY3NlNlSk1scTk0TlEweGFZajEzYkRvWGg4ZG5ycmpTdkJrSEQ0M2xVamFzYzluaVFtb1B4a1BmWDBWQWdiYjN6SnUzckZpQ0NwUHFUV21EZXdobU5ZaXV2QkJLTlQxSjhMODRacCtLN0ZWVkpXRlJaN28xWHZZcGVpTzN5VkppUUdWWFEvRUU5N1RJQS9kWEs4ZTBMQmtTdGVFTjBMSmdKYzNPaG1VN2NkSGlFeDAvcVp2YU5TR1pESERzR05BbkN1WGJVd0JNNXlSOVdWREZpYVhGQ1R5ak1TUHhqZ3VFR0duQjI2S2JvNkxsVVpsNk5nNWUyLzd4b3BLb0VVeVVsQUEwU3FVcU5IVFYwdkMvU1EwK2FORzMzVGYzQmlLMEMwRVMvUTVPNThOcExITHFXWVZzPQ==', 'error', 'a:3:{s:4:\"full\";i:640;s:3:\"low\";i:320;s:5:\"thumb\";i:150;}', '1.00', 1, '2023-05-24'),
(17, '2023-05-22 11:39:12', '17971617823663682', '2022-07-28 06:55:47', '2022-07-28 06:55:47', 'Gxoi0rGbIRmrKDF/r3Kfh2RaOUF6TGR0c0IrWkQxRWJpMlpqUGFyWDZWK0tHRVNEc1hzUEZiOUFGNmF0dDIzV0RWZXpOdUNUdnpKdE5KMm5mQ09DWUZ1ci9IMytUMmc0UW1yeERQWEFHc29HM0JoMXpjRmMreklzVmMxT1RSMmxveFJmd2JsM2p0QXVKb3BuMnF2MUlCV1Ivb0M5ZVI4b3dIdllvazVXTFptdkIzWUxyUWtJSmpFZmZQUGZTL2RhVXAwT0hYRFBJcG44NGU3VGRmR3JKb0YrTjhzMGlwSEk4b0tyS1ErSkh3QngrT1VBSGttUUdHYnExU2dZV1NNZmRCTUVTQkEyODUwUjBrTUQzTjh0ZWV5WjV2WklNMEx5MjdBcDNHT3BzbWgwcXNXZkIrMGRyTm1hc0ZCZlNJREdkR2Zld0NhVWxLMkN5UHM1cUE4ZlM2SG83V0FFSVVhSlJiMUEwZWJOdElOZ2FaMTh5VW5YdlVxcjlsa0dPa0wzZWhKVndzRFBQcFVaZDZGZy9tZGdjT1M2SWFqQjFjcUNFbzdjVnRac3hCdUhoWkQ1bk5IbVB6dzN1cG1XRGs2di95R0JIdlRkUklaMC9abVVoQ0hKVCs4NkpRQ1VtWHAyaEFJQXY4ZEtVczEwaWlWOGk5eU1Ga0QxbEZqVCtjK010cUNTTmJBV2JONXZqWUdzVytHZ2k4bFMxOWRPWmFBY3VFMWhEb3pnOC9lQkFoUzJaLzl6V2VWMUI0dzZlTVR6d1NldktJM0hnUkxUOGhsWHVGZjg3SzFlZWlzb3ZoT2tvdTdBN0xRT1ZIeHFrcWtpaU9ac05SbGNOZGdxT3ZrOU5rcytUUExzZzExVVU2UThnK1pBV1dISUNMZVM1d2ZtZFlUNXY2eDV2SWxTZGMxNTNyY0Q1VUJqRm1TMDNUcU5pWVhweGVBNzlsdUQwb3JPaGhPeEVCSkZ5MEdmandjUkdoeHJxYmJHdkgrOTVUUjVBN0JKanA5UjRRaUw3OWdhOEdOMTkzdWxSRlZmT1RtUGk2UThmSFlRanBBQzA0QUtvSmlFMVpWYW5hdm9DWFpQRGZOaVBZbVJwcjZEbHBHd1dzeXJPY1RTREp0K2Y1OUJ6U0UwT3ptajN0Qi8rWVVzUGdRQkE4OGg0aFErR1ZHNForVTc1OElibHArOG00Lys5RFV4S0VuVlh5MFVpWGtST1pqRW92V1psVnBlTWZ2Y1I2aXR5TUw4ajNCSkhqU2lWYjlDdGQvMkVlc2RDMzVHOStHcU1VVFI5SDVQOEJaWVd1QTNqdC9JTzVGREluNFJaNW00dXNZYmpIRllhT3BUTHpUbW55ZDBtWXNuVURSNDBTQUh0VGRCZndVeXZSQWt0SjVrYVdLcjNmNTJkYkxOQmV2QWg2dUtac2UrZGpOMnhIZWFCeG91cE1Fb2hVaVV4RHBUMnNTM2lUWUhkdk9mZG1qQkMvd0JLd3JkN0xuVEN6d0IxeDJNZDdSWTArTXpuU0lEb1FPd1V5bXNmTGdLWituVmlINGdzeXFaZnorbVNuSDBMcDFHOUJnc05PTGZuWmVRL1MyZWJkbzBRbkpqZDkrRmk5LzVoWFZySFZBRE02N1FiMmFSTFEwSmZlYWJjbFVXbnp4eG9HMmdEZHVTQnUrZm5mN0xiMkp3dkJpd3MreFUwb1pvM1NOeitSRVdYRklQUnpqWitleEsrSUFzM2tvU29mOFhEditWMGk3TUFYS3h0ZHU2SWd6NzF5dXMwRE5DMVMyWUJLWldSYis2NnNaMVVqVnM2Z210YjBYMXFQZDdNM2NVaHd2VFJlRDYvY0xCazE4SkNwV1oxQURPenl5bnFMSTUyT1hwWmwraVFaWW4yQXdRK05RSHFTYTQyMXpxZXZwYWR1aTY4bzBxTmo2YW9acUJmUWVWUEpWZ09FVjhHNkVFTTFSRm1yclRtRG8xZjNmRW9CcHYvZTUyL1cvOG5Nb0tpZmhRclIrZmhsbjREelY4NlYxMkRrQ1dTYys5VGVhVXF1bFNZbzFmL2t1NDVOdWlseEFwcVdYOXlZZlFkWTl0SnZOTHAwK2NkZ1M4WXVxWnVIV2dBMSt0WkZGVzNBSlExMWdkMlZBTDRlVUpMb24xSTVHMGdZd2lyNXRaYVFHYzBIQWJycHR0SlpweXlvckNEZ2hpK2dxM1FQR3c3d2Z6UGJFazdFUE1aQmF1Q3M3SnNwdUVsVE5qYks2VkpYeko3T3NURzczMm9sQnA0SG50R09IaU0reUlqcTVXRkJHL0p3VllzMTlacVNXOEdkdGdnRkY1QkhIaElXKys0WXRaZU52djd3Sm1XZmd4ODRHUWhtSzlqcnF3NzVQcjltaXk4TWFudGZsMWhUN1VqUkprbnJvVE1oTTFXcDlkSkhlZTVQdUZ0dzdCNEpFRzUyNTIzVG8ydDUyRUNmSm12MjdTTkIvbkxKV1ExTFB5bjE1MC9haGpXT2ZuR0JGWmJVR0RMNXFmNXNEZ2g2Q0dnblNyVm55czYrdkdCcnA3LzZrQzlYYUMxVWRVLzlUd0IrZGlMN0ZudHRoODF6V2ovUWNpSlE0ZURXOU9rUWNILzJTMm5TaDd5SGZRaVVFd2psNTJtY2N0UnJ2ZmRocDlQUXJOS29hb1Y1dmdUbFhQQ0RadG0ybjh1YVJwcUVlNjhySXlZaHhoeFJLakVBelF0a2VoN2ZaNEY4U0dBMWZxOGprTVEzZTZHenJqZkFQcEtOdEsvc2E1QnlCTitOZ1k4WWxsOXlFRWh1UXV0SEhqWkY4dm9IQjJaYVpVaWRLU1QyTUMxZVpYOWFiZ3ZndnlpdXd1OStKTDBjWWFyRkhjUDdwa0JTZXNzYkVtU3c4L0pEY0dMbGloNE8wV2U3SXhLUWZqc0tDRk1TZkJob1NBdkdwcmJ6TU5ibVREZXFEKy84bXB5K25KMkQ3dTZXSnp4V1RIY3NGaDJsdlB4VUpOUGVQUnFkL28yOFZFTHU1R2xob3VEdVZHbUh4d09KaUhMcHJiOHJMbGcxbGZPVHVtUmFMTGRlK2NrQVJUMFA5SUtUcXh0RDBiNGd3bVVZRURuTERFRkRwTkJCTktPZVFETG5JYW1qRk1lZ1Q5dzlsVWNzWldCSTUxMG9GYnhHT0lJb2VYeURYc3NhZE9HbmNQdEFMdExpZnBqTStCeFErY1hZNUVhR0p0cE9vcnBGRWJjMnZmak9paVAwVnk3OWhsbHQ5SjdlRjJCREgwV2Jwb2lFdGpITDZVV1BOQkJ3enNJNE00R2p2NGdyRU9qMzN2bjhTNk9JRHg4TTYxbjAveSszL3dpSnFQVXdHZG9UZSsrZU00QncxeDY5OUZXZmJzaDdmdk41MDdFK3MxQ3daTGpQeWpXWjNKU1JNc0dQeTA3VEg2bW90YlNtdEFXd25tTzdiemJPNDJzVW1vUW9VaUdwdE90MngvdGtwQysrYTlFS2pmOTZtU0F1aitmeHhzSmpXQlk1ZFRKWUZyRU9PMVpjZTg5SjJ3dUpsMUpnei8xdEN3YnI5ZEhnSnpKR2FNSWJvcEhhU2FpYVdmWU0vaUZUK3VDN2lUUkQxajJva0F1S0ZvdFhEekhWZGQwM1NXSkorZ2FSV0sxNENPODZaUTBXWFhGcCtBRmZqdHU3eWoyK00zTjQ5TERVL1BRR1U3dGZSQjhBN1plMVBiODBKT0lubVl0UnJURVlCb0xJL0lWQ0gxZjJMalVYMlBiM25xaFF5M1o4OW9UNEFJTTVhNCtFOWQreElPRmdNME5Xb2trbGZqbXUzb1Q3dDcwTnVKTUhnTXVQREpHTVp5ME1VUWNrdHVPU0xFaENsWDkva0ppWldqN3VvYjRXb1VyYkd6MTE1VndMNE9LUElLb2UzeWtwbEt2L3EwenVvRlAwYVo0WURNZnlKYVUyMUpDTk5ON2dXM3g4MUhId0VHeU5UMFVwaTk2K09WQ0hYY1dhTWp2YW1HRTJNYVRNRFRveHZURmQ5THlNWk9NSWFReXRqWGVTc29XdVFwdUJXWUE4MitNS2w1bUxPa3hsakR3bXRPU0ZQdnM0cnlJZVBqdCtWQzYrVEc1TlhZNStXRU9EaXVSWHBaNVoxWTc0TGV4c0k1dnFNUHc5SXN4N1BSU1BSWmthVURUNDQyWWd2Y2k5V0poem9DeHBseVBvZlhkRmFYSmljZjZqVGJkdHR5Y2dzOHVHa3JKS2toMUtSVlUxZ1dRY0dERW5mZDZieXpLTW1rUHFIaDh4TmlobVkrRGdxVGczMDJtcU5nK0MwRkNTTW1CZzFVQTJ1RXcxcmlNMEtNbkVicWVKeURTWVpMUzNBaVd6MGlxNnFEMG55bWk3RStzY2luV1JaNGpKNEpQelMrSmpZR1dVY3B0bzkyeWFISjZ1M0k5ZkplRFloU0w4ZVZ5d01hZGxyTDN2d2Jma1A4SE9uU2pwNHdUUW9NQU9UWXF3alJGcExQcE5JVUwreHA0QjgvVHV5U1FyWXFGSVNIUkFvVEFkYWRBWTljb3R2dWlQcVFnRGkwR3N2dnZQMDIyakoraXhKeWhXMTNFVlhEandXMUl3Slplb1d4ckxGM1lCazQ0N2NBZ3FPeCtrR0J5cnA4endTRDdudWpWS2xucTNCVUtIUDBtTnJPNm5hSEROOGdQYW91SkZISHNDOUlhWWM0MlNTNWtFTnNvQWlnSC9BM2VKYVhZc0FnUE9iZGM5NTh2L1F5ZkpVSVJ6UDB6Q2JVMTRha0R4azlELzFMRWN4MWpHWDYzc21pKzRZOVdWMjFyWERHNytqcVZaVk1nT1dnVVA2cEJGSU9Ka3VJMjhleEJxNW9OZlk4ZXQvbWdWTzJGS0VKYzZZUXpHZ1BFQXVPellqUjJvOVdBT3FEQllYNWFkSFpYcHcxdGhrS3hYQk5STk9NT0Z0dkl2NFFtVkNkOC9iWHE2RGxLRlhUemEzT1AzSEZlN0FVMzUyWnI4WFRISnB6YlFMNXZrWHJLOU5IS3ZjK214aGlHeVRZV1o5V052a3IvRS8wOXZaRkxvaG5NcmM0Yk1kZnE4VmwvQ3FwTDRYVzd0VjZSOWJpWHF3N3BlUVBEKyt5L1RRQnVBaUpKektsY2hqZkpRemFJc1NHRlk5bG51OG9FVVdvQmZRU1Ard3lLTEtrWE1iK09RcUExQm03ckhOdERtMFRCeWUzRHdTSXZmYjN3ZkN0eW45bEthbTQ5MUVnczhVY2pxdGh0Mi91Myt6dmJsVVQ5MlpEcHNPcXBPQ3BqUFlMajJHYWRFQTBtaEVsTEh4cSs2Z29meWcza0tXLzAyYWpKVXFTTUZnWUU1QmdLUTF5MFJvS0p0RG0rdTVGZmY2Sw==', 'error', 'a:3:{s:4:\"full\";i:640;s:3:\"low\";i:320;s:5:\"thumb\";i:150;}', '1.00', 1, '2023-05-24'),
(18, '2023-05-22 11:39:12', '17918184281444707', '2022-07-25 04:52:05', '2022-07-25 04:52:05', 'KX/DuX19/zhf9PxMln72KGhRRWRGdklOU2hIUHRWODRhc2NmUEN5UWNENVFiTXd4Nm1QeUZKV0JVVEdOTGRkMjY2UkdlOVVDZTRDZUtrWGZXZDNFbWVESnJGWkd3UE94UDZlSG1mWTlxR3FpWmVWYWpCQlNmRE5pRlhYTnVUSDJpRnYvYVJMZ0lINENVbFdMQytFSTBRVmoyekIxelY0SWFmVXZoWXpWcUEwY0lRSVVxa3hMa1BzSG1EUVpHOVhIT08vdWNDTUlmbHB5WWpxZmh1eVJ2Wlg5aHBCRG5xOXQwbVI2TjBGWjJzYm4yUG5oVmpoL0xrRC84VnJXVnNRZURwZXlndG5NcDlIM0VEOUVvR2huR2YydDFFbkFFdDViS1JOZTNpcER6cXB4d1lodXlvMVQyWURZT2VNTDRzb0ZQVGIrYzRjZmkrckp1YUF1d3NOMEk4eWJUK1RBbUV2OE40VUttM0lWWmVjVlQ5SDZ1aUhwTE8yZzliNmV3R3plTjhQRmFYYlVCcE1URWF6WUxFR1NrbXpXcXArVFlrRHY5Uy9WRXZiblNnaG1JSkVCSXhVVVBNNzFGczUvT1U0U21sRVgxQ1dZVTVCQk12MGVpQW9KZTE3T3p6MVUyakRwQktDZklnTlhIY3M3cyszRFowU0tkWlphaGM5RkhsY08vNUNPNjNWd2ZDQnU4UitTWko2eGU1aEthZFg0Yzc3R3UzUGdiREd5VmJlTUJRSzg3MmVlak1haG9mdFRDTmRpUjhzZzNNRFd5b0lTTk96TVFGcnV4T01CZmdBL1YzVHMvNXhLYjR1ZEYvaXZrc1ljRkcrZ3V4L3luaUVWeVBFcDJwRGlSSkVpUksybFhaclUraTROcElkcmVpQXJsTEwwRFliRVRvUGRPeHJEbkVuRkN5WHo3OFNacXhVdElnTkFLTlRvVFF0OFFGRGxaZWw5OHpQTVk5MS9zbkJIdmlmSTRSMXNhemJDa3hoZ3hOMXNERjlHL1BHeHFnSnMrQnp6Nk54MDAzUkYzNHRTT1U0ckJiS21GcG1MR1RGLy9LWHl4WTY5WDFjczd5eTZFRGQxTlVEcVJRNU84OWtzRGFJeXFScVFQRzhiaDcyeittM2tITlFSclBSTGJrSUl6OUluMGx3VHBoZDRTL2l3d3h1Ty9KSllBYmcyQ2hDNVJhT0FXdm8yMi9PbldJcFZVVVFuTVFhU0JBWjliaHgxanpzUTRoMkQ0VU5SM2ZkK01JNUpRaHJ6TklhQWwwQT0=', 'error', 'a:3:{s:4:\"full\";i:640;s:3:\"low\";i:320;s:5:\"thumb\";i:150;}', '1.00', 1, '2023-05-24');
INSERT INTO `wp_sbi_instagram_posts` (`id`, `created_on`, `instagram_id`, `time_stamp`, `top_time_stamp`, `json_data`, `media_id`, `sizes`, `aspect_ratio`, `images_done`, `last_requested`) VALUES
(19, '2023-05-22 11:39:13', '17964126583766708', '2022-07-19 08:46:38', '2022-07-19 08:46:38', 'Z+bR3ej09m/W9dux7y0OgzdUU1lGSlY4bVV0NlluZHRoWTl5cFJwZGdZcWMxdElHVlhOUmhlZjV3bU9QVlMyQU1vT3FvaEN3cU52ZzdvVE1Jc1RvdmNJOHRicTMwYUEzMlJuQUVHUVdwQ0E1cHRDVUY3cEtxTmo4QlZzb3c4VzZ6UVl1Rlo3cG1NS252MUhLQURPekh0bWZDMW5Ja0xvYmVhWE4rZkJicXdmTmxjeVRvUDUrNkk3cjdPb0UxVU9rTlpZbzkxaW1YbDBNR1h0WXFmdEVZa3VYZzBGSjYyT0R1YTQwWlR1NUdiT2lYKzdPYnAxQ3U3UHh4aVJiZXM5NUcwbGFhd29hZFFNZ05hUnNMbnFhTkZnZG04MFZiZzlDOVF0akp5WWhaMEtSeXRXenJ6MjZHb1ZESks0NGd5U0d6Q242cG5BUVg4SUtwYzRDLzBiV1FqOVA1azRGczAzbDdFMitpSWpUdXVmV1lwQk83WUtxV2hUT0lwalVtUll4M2MvaFNjMTRRNk9zWk9JTGRPMTJMaW1xMUZtMlUzNkNud3VHN3ZyMG9jKytUT2dyZExvb2tPYmgxcHloMDl2OFpHdm85UHBnMitEb09Vd1pLaHdYb05LdXRadHlGb1NPVGxLS2dCcG1FeDRUeUtXZ3RhV0lQTlQvazBhdTN6eHFsQ2RQS1AvMW1vMG1lVG1UWU92R1h0NFFjYklPS0dXeGtWQVhKT0ZSbjluN2J3L1g4aEhLdUlvSXFDZGZxUU9zS2ZUOWtYUE5mQ3lRSGdidVBuWEI2MEE0TlJCeUpRa2lNWHVsdW03TzFncUNnRnFMQVVJcS8yZGtYbU5jTjNIbjlYVmFuL3pKSmlxVEZ6MU9HUTRLblkrdXM4WmlYUzlzdDhqcVVXOEpXeFpXbklycEtrbjZaazFrM1YzeDN0TWU4MGNjYmVqUGVrbEtZMGVSYXZvQXZvSlM5VlZzdDNSRGh3SWJ2M0RadXN0Zngyb2pRNlRLU1ZXeG12aWxCVFZLMzNnZTh6empoa2dxTHhmQVB0K0FHWTRnQ2ZrYzNsdnVnUHo1RWpldk5RMGFIM01KR2RlWFl1bk1Nd0p4dkJEdjNKcG9QaU4zMWdQSjl5S3VMenFESGxWU0FUK3BneVhsWEF5cTdEb2ZJOWtwY1FPdC9TZUhhZjNwQVpLQVhsb3BmV2F2RS94TDBqeWE3OWcxV3AxU2ZxMVZaVmNDeEE2dkZjMSsyY011SmZKcXFVTDVBa0MrdnhYMDhIRk5neEJBaGZqaGJaVWw0WjRvd1Y3OGNUZ1B5cEZrdEtpSlhET0NwQVNtZm9YZCs5WGF4UmMvV0oxczZORmVZWGI4U0swOGd6UzlHTDc3a2tGSWFWdnZHR0dJY1czYVhaZXIwektVY2l6QTRUTmhBQnlvUHgwMU9MT2VabkQrb1VqSURsQ2RLeDI2ekZTa2pOSzgwcTlQSExTcHExWjltWGtTS3hRNUg4bXVwR2pxSlNkbnZHN3M2OWE2SWdxRklwRU5jUXc1aUVxbWhIUnZXQUJraW1FYXVJVGhGVVlRSllKZEtVeWxlSThSYTUyYU8wVldhcGtHblhReEc3cVBBZXlPejRnWkxiMEw5TXNxbGFLbUx5RlBscVlwV1NKK1ZyZU9UQ2lmcVAzbG56cnM1SFFuUHpqcW9PT2ZrckUyaFNEazhGZ0Y0NTRVTkVWeCtua3I0S09JUU9RZ1JQeDFudU51TFpPbExSLy80NkFybFJMVnlsRG9sV05HMFAwY0VPek1oLytBWG9sc28zS1R0NmtqMFY0QXZIMkFxdXhqS3liUm1tRm5jNERUTGFOdmZaa2lOMmVkdEtiUmhCdkJIRjVjMjAveUtRWnVYYzJVMHlQdjZlMGFTMXg4bGlHUmVjTGFwc1JIV3k3T1RSSXdKSjhraHBKYkovK0VZTmtxeHhzYzgzSlQzNGFEYkhBTnJkczIrVmZzRGRMdEs0bk9XZy9ncjVXQWpHTkhBc1BPT2ZVNFVWbU52UExLMmN5c0hyNk9BamNTZXdlQ2hEdnFxa2ZMN1Z0SUh6dFVFOFYzZ29NT3lwNXFMT3lTbmFGaHgrNFNQdEd4UFF5NURja1kwTmV2cVJPWHdYbXNzSWxxVDd2cWVWaVlEV3orR2pDR0ZydXZLUlAva3pmN3pCQW5VVDU4QzFzN3pkeXA5bHl2aG4vOGxHV2R1THhKVy85T0Y5RzRXVzA4eVBXT3VkbElLM2JiYUpqUG1XaDA2cXdvb2I5cXFvMGZ5TnErQXlZYzZmVS9JTHFFMTVFMDJySVNFL1pLTEpyOHhrZzZWQXY0S3p4U2ZVZnNQczJWZnk5VUdOam43bEg1TkVtc0hNWi9MNDNlRy9FS3UrSWtUeUNyZUhHSTlnVEdRa05VajZETC9nL2tKMVByZzhRQ21kY0RhbXB1bUk5MjV5SGU3Y2cwOGZkVTZWL3ZpamJJNUtYYTlhNWh2aklmN05Zd0dCK2RqSUtOd0NmNi96SUpiY2UxR09pb2lkcXVHNndiSmE1cGVHM1M1YVhTbWxUSjlxV3dHVitLUHBmeDJiWld0MjRmL1VDQVNQZCtHbXBHSFFwRWRta2Z6MUgybWY3VVloRDBsak00bnF0TVlFMFJIcTBXQWZPWDFsVzV1TGZjTWYwZjFxSXRUZnFZNGI1K1FmblZaWHJxejQ4K240M1JrZSs0aVExSE9tU2Y2M3haTEJuUHVSNk8xS0RCTlowclRBQW5ta0FiZXFyQnFuRHF6V3FDamhnZm9vbDJmbzUrMUdkOG1aMFVxc2svRExuZDRtYzJpUHd4dFdvNGJMaVlXczVYK29ZcnlESWpHZFNQL0NvSEtVbk5FYUFrVkRTOER3V1FMVVJVNTVJTmU2bkF6azFMenN4S1hrbXpEa0FJWElGOFFTYTZVVzB4VzBPanl2RXhnbG80K0ovbnlXbEFEZW9jMldvZnhnQlk5VzUwTGZHR0tqTU5MZENDcTRzSXZnemhLRGI0Nm95ckcvUFo3YThmUXhMRnpDbS9raGlFQVhKazlBZVk2QThGdldHTThnaU12WWxaRTJPc0JDVlVVS3RWaTdhdW9TT2lYTEIzMzViaktqaGxZRFpwWXBFbDlvcElJeEpFQnpQTmIyVExFYkRHdklRRENMRUJZWVZQZ3B4cWl3cVRwOXloVjE2cHgzZmxYdDJhcGE2dFl4SlZYc0M3bzR3Vlg1cGZRNXo3UkNyRjhHYWJQak5LSmpKRFJXaUFKc0l5Wm55T05YR0F1M0lQYXJOTlNOaUZ0c2JCWDF3elFGU1NLOHY0TzN1dDBselhncnlQdFJvK1ZxOG8vMWY2TXd0Nzh6Rm04TWh2bkg2K1VnVnQ0cXJXYjZVZkdJaVJHckVSOGNxckxDT1BNT1k3Y3A0a1NtaFdwd2t0QWs5aEVOblB3TUVwK1NaeFNHQjRKNmx4UVZCR1JockZzditlSHZCbUZ5cFJZZTFkeGFtcmpIVDdHMnQ5MFR6WnFwOE40aEl3d2RZMTBGM3dOK2FBUjNCTUx6OFNzODQwajlCWW9yWFQ3M0J3d2pNMGNlb3M1b3FNVEVLcitiQTFjeVhJcnBCaDUrSUx1ZE9zclRWeEpXbk82Y1lwZnU0enVGMHFOTlBrUWhtOTB6eUd4R1doTVNqVklZY2dCU0lTZGNTbElTQVFISFJpdnp1ekZxMzRHWGR0cjB6Vk5TcWU0bDNNYjJBdWhGUithb3I4cHdiVklRU1J6SVkxaEdsQytkdFJDUmltVjF0emd1VUZiNzV2dTArcG82Qi9qNlJ3VkZ5UURqeG9CcGt2QVRrWCtkR2xDTWl3dSsvaUhiZ3RIdkpLY0s1cGhOV1o3N1MxdU9uTnVjTDBHdXh2SUF1RWh6OXg2OUFaM1FCL2s3OXMwLzVoSUJRTXljdjN5WWM0NlZIQ3pjWndUak1zUDZRLzR1U1RBNGt4ajREbG1HVm80SkRNWUlMamt6c3NXZ2k2emZFTGRjNk5uTjJZSmhxYW51Y1oyVnVsYVIwbktxUjNyMTBrazNzNk1jUVF1cG1ORGJua1VPYzRwMTlNRGN2OWlxNUc5dmRyRkJFMXNFaDRqTFVmRVV5K2pWS2dkdFhFdjNsUDdKYkQzV2hCM2RaMnhYM2U5NlA2K05nR3FRL0pUeWNUbXIrUUZQOGcwWGVEL2ZybWlZbkkzSHgrZkVlcURmWUNsL0RIV2lYK1gxMEpLWnNtWFR0Uk45MVZac0trTlNId3BYTDhSZz09', 'error', 'a:3:{s:4:\"full\";i:640;s:3:\"low\";i:320;s:5:\"thumb\";i:150;}', '1.00', 1, '2023-05-24'),
(20, '2023-05-22 11:39:14', '17907578366614074', '2022-07-18 04:43:32', '2022-07-18 04:43:32', 'Bo+v8JH1OVIHNTTvB5RCeWtCcHAycjU3MDhxYjZTblkxU1NiQ1ZqZzMyTXlMRC9mdSswNVhnQzFyam1VV2ZBQXVKUXdGMkJaNVZtWnpSWGROcDhZWkw5Y3QydkdRYTcxb2hCalNXTE9vdjBmNmZVWWVTZS9nUG0yNWUxQlFyUE80bEpuM0Z2cEFLblVTMG9DblFqZXdzRzRmRmNkMk1yMU94S251S0JPOVN0ZFFZQ0xTaXVSa3JRdnd1TkRJdGU3RTZuR210WjI1WjFIMEh1RGZ6d2JUU2Vyc0N6NGhERDhsWFVUU0RpNmZCRHJOeXorb0VCbStYdEFqTUtBSWIrZ2RPbStIOTZoWXN5Q0s4ejh0WW40QXZoYm9TaGtPSzI5dmsrL3lhWS9ldUdPSzJLd3U4OGFJRWYvNEdkT0lWYkhEaUJQTjU4Z0VPUUNRYm0rMTN1c0ZnT0ZqSWtmVTE1bXBSeFNZaUplMWx2U3BZU1lwSCtzWWxtQkN1OCswM2Y4b0ZSOXcxaktuSVJ0NmR0U1lWdUlwWEkydjBTRFIwY0orSlhrMlU2Z3hzU1NKNUFFSWNWQ1dSUjJEaExiVlNjcWEwUnlZT0N5R0NBWVhnQXcxYzhOa3dNU2FiUVBBYy9nQy90SUEwTUoraHZjWlZCVlFzZWowR1ZDVy9JT2YwZ0RPU1BQWEg4bzVFK3M4NUkrQ1BudGsxeDQxWm50UXNibU8wUWdVM3QvRVcxVFl4aWNUMWNkKzdJbW1lRndhRXd0OEl3Mmg5cmQxWEYwRWtrWFo5NDBnbG4rTTgwOEV2Z3ZnaVk5dXVrRHNWc213ZXNwblRGdkhIWmVZYk1mV2l1WjlhV3BTV0owSWdMUHQrS0RER1dyU1Z4NUdrYmxlVVkxa0NlSVptTmRHVURETjNieFNZZGJmNHRpUFg3Yi9JdGh6SUVDamdBcW43NG4vcFhFRDVYQlVIa09IRUZBQ1hFVU5RZ0IzWFUwRGwzMFljYUZNdWdMSnZsVlJVWFRqTEptS3RzQjZ3NDdxUllTVVBVWFZVK3h6eXhOK1FSdWJPR2hDR2M3QVlPalZtMHpVdVZhSjh0a3VPWVg4VGZqYnJHQXZUTEcrMzNVcXU4L1NMaStacW5NdlRtWFpQZWxJQWlpcUtYVlpiczRDQzJSUjEvU1p2VVF3VkQ0dEIycEZwQXJtWlowOURzU0YvajhLOFYvR3grUE9nSmVSN042NWJibC9uemdBdXYzdHpYQk1QNm54cDlWSUlCVHl6Z2Q5UitIZHhGVldkWEJPQTRUdlVjN1pKdDFudmZFQnBSb2VVZVRpeXJZcUdEWCtyVE5RMm55bTZOendIK1ZyLzNYU3Fkb1BPZ1NtbVoyeVdxR2VObmZyK2FYeFI3cFJMWDlYRXk3RS8rdEdxRHFzUlliTk4xTHRkRHdsMkxvOWRiSGJiMXpLVlhBUnZWdUpnL1EyeTZ2STBOY2U2N0tac0VPY3VGMWlqRkZGNllUTGxvcEdQODJmc21YWE9MZDY2bkhoVXNSeDIxM0xRVndqZjNPaEpiZjBFcCsrdjhyTFp6UVN5NFZGM0tJcmNSSDVCWW94NTB5SEg5L0xSYmNHNzJkc2pqK1Vhdm1RWXVMWVJZdmxRSTRrSURqbTl6OHhTdjlEU2hwYldDTlVicFJSMXZCUTRUUmlQS2ZPcEhUSTRKdHdmL0ZLRDFrU01OeTlNL0JKREFNVzltQlBwb2lsL1lvdU1TREhYRStUWmUwK1hPak5PWHJKZ2N5WDducW92cnpDVmFCaEVmRytianowN1JvMVhDYjY4RW16YzdweHFhYnlWZ0phYk1yQmxXSXJ6bWM2ekFTQzhTdFp6aG1PU0xzSlBGNzRyN1p5K1VBcHhsWSsrSW9pS3FxaXZtS3hsaDZYRHMzak5odC9LQlJQTVhhdTRKcGRBR24wb0ltdmFONVo4Rmg2TmUrYlZNa0poYTc0S2MyeWh2cFArNFdycER4SmQ4aFZnQU4vVndaV09XT09YN3pka0FQVGovNHJ1Wm4wMUgvK09DL0VOamdMZFR1Q3BvVkYyL1lDcWY2TG5xd1crbnZMUjhRY2g4Z0puUEhjbWpGSUJwT0VzR3IzWWhTZ2dueVpjOXJIT0VkVFR0c0hzOUFwQ3Z5ai9Gb01KaUhVdUw5cVhsajJ1ZXlsb0IvM1M1WkRlY01VcHA1WCtTYkt0eklyN1RHV2dtYTNacHI1SnNROFZlRzRkM2Q3bzRpS01JU2YzL28rblErNGlaY3J3Z2V2NnFQNVRpeGI0L25pbldWR0pjOGV2OXNsSWt1MnRFRkxzaWRQRUlhcndic2lLQVZiSEJNMEVMNlBTM3c1dkdhUEdLM2dyQTVmdHdERnJ4NGdhQUxMM3lNdWF1KzRyNkVnMkhRQWZtclRVM3hzeitkeGNnK1JPbUh0Nmx1aDJKcmtUK1laT1BOVloyamJaaGxBclRKdEpQUlplVWJ3VnByQi8xWXZkTlJqU2E5ZWw5Sys3VldvbC9jUS9lY0h1YUQ2U1Q2VVlhcW1Rbk8yWnJnOWRzQ1FmZnllTU5TckZHa0VoYWlhY1Y3aVBrOXQ1R3FPQXdMRzFhU0NwT0NWbFFFOEhlZHYwSWEwWWpmZGsraFBkenlGTmtXL2pPT0ViQTJnbzBNNGFCSnlIMWQ3QjRLSzhEU2VKcmhyb2pDVHFiMHhvYVBTU0IxSGlwK2g5YkdGMmNNb3FyUXZjbW44a0lMK0lHQzdsb3FTajB4ZzIwZnpyeE5OQ241aHplVUhncTgzT3ZVNi9OUk9ZMXVucXI4Z1lwbXVGZjlhaUxVditrVkdlZldCa0I2SUhXTTczYU92ZHMrMVYvUUowWGQxUlc2YWg1OUp0R2dmaTlNaHBROEY1UkRCSHdrbXpDL0xMTitJSFNybTkxQ0tvV2FNYkRWYVAzekNLSzFob2RoS1cvRUpuMnVyU1ErNjgvMUI1aTdxY1BOYTF1WmxFUjhrK1hNSTF0cHlvNGpkWlJVR1A3ZldhbHhaZGVGdkJpRS9EL0wzY1ZEdGV0YXBaeWtuYWlzYVRSSExlL0xyK21PdXVrMGRQZFpZWkRMQUJuWlBWOEJRanFEMGFPZ0dCTXZpYStCUFVlZVo1MDZJb1RCZXZLVEtYVU93NSt1NXFaZnVKT3J2aFhWb2Y3cytBeWhoT3B2UzVieDdZL0RIZHkyTzJLc2YzcGluMTVFZVhCeGhNVDVTV2o5MFVsai81VzVYaElQcDhPWEVsaDFwb3hZWjVCSG9HZzFrWUFiNXN2Ulg4N0N1T29NbFpNWm1GWVBBemJuSDRQdVRwSG9rN3dqaW9jTFRMVCt5NHZYM08zS2E5MEZNSm1CeE9QWHB4NTVyUlI0MjRRYXFVYW5FK3hkTk8wdkpLZFlMQTlBR0JkQlNIZlBORUVrV3hCMEFqK1hPcEI3cE5ENkhwaHpKWE12cy9XU1ZPRmRYU3RrWE0zRnNNMjBmWGVqU09xSjBuQURiMUJ4UnhaaTNrL1ZlWkl4NTVUeEtjdDl3eld3bk5Bd0M5L1l3WXkxQ2pwd28xS3hpQndhNzNzRXBFYUFTbmhHaHdpdGFCZlFNZVd5Ykh3UFcwdTEzVzFNdG9RTzgzNGpab2VTM214ZWRVeG0yL3d6bU9LU1dSZHQzeVlSTHhOdUt5OUhOZm5ZWW9aT1dwdUs5K3NtYUttUWlQb0xZWmNZTTdFcFpwZzAwUUNoUWRUUmpDS1E1OG53NVJ4WnFIRExUS05NV0NqVTJpb3NwRDRlWFNyVkN4QnlxdmJSUWtBOUI3aGgxUG5Qa3FQSmQ3dE1XdlpHMDlKQjBlTmx4WWF4c2JLblpHL0dkWjFwZnBCbG9KOHhYVHZ1L25NeVgyNWxOSGFoQWhseEdmSkNoWmhkYjk5VkZvRGorNXlwRnFMbUZLWkNEWWJ1dm1qeEJ0WVVQWnpqK3FzbkpudFBhZGxKSEQ0ZDZPN3BDVXI3NTFBd2Q4bFk5M0FkZVZLakxtMWw0RWNkVlVkdEpoQU1nZHN4OW42UGhiVnhZYmV2VTNzOXB2SlZaUU51L3VkUGlsQVB4bGEwelRWdmRWbmxYeUFTS2wyMDhDU2NsZTZTWEhlbE03RnF0a09GOTRqRmZSODhXd1Y1dGtJdUpoVFlaTWdkeHFkczdub1RuZEo0NlJ3U2xMbjhXY2ZxRW9Sd284WVRETVZZYTlvcnJDVzVWMkFHTU5wNGJFdThGMWJ2YVI0aUVaOUZSaHEwMzZKWnEwQWp3Zlp6N3hwZi85aTRmTnlNMUZpNnlMdGthMWxCUnNmRUdxWWhoYUpUR3JYeEJ6T2Qzd2ZxTXZZN3N6aEZNcHp4dnZGRkR2bkNNb3VGRGpFR0FSeUN5MHJRVUtsRXhkQURsdjBsRFo4L0dDWE53L2p6NVFwbDR5cjdNV2RVUDJaRDByVlBxb2RUYjY4c2pUNFF4WGZoTFU1M0ptVEtoVHp1djYyMWtZc2xMYzBRS2RwVjZCWndzblluNFhsYWo2N0tKUk0xWW5XS3FUSmZ4dk51UFdUaXRMMkV1VmVkK2c4MjR0cWhEdVZFS211V3FBcFBxcERkdUNZejB3aGpuVzhVSHhqd2Rnb2Z4MitCKzA3amdsYitvekFWQ0R5NUpZM3lkQmt0dGxGdm5nVzF1RHBSNE9RNDZyYnpZalJGUkpJNnJIZFBCeFFncDZJZ0lBOEp2RWxpWlRxeDlsUW9NeHpGbVh5Qk1DRFRrRnVXYmJlN25iMkg0dmtQcUtSWUViOUNIYnlDQVpwS0ZFL21YVkcvMEM2L1hlcTZQNE42V2g5b291bFBIbklYWkgzRUwzZGp5WjJZMWoza3lnRHdrUndBSmNPSXJ4NUQ0UkpjY0loZGNmL3YzUFpjRU9DVFM0Q3ZZVEZLZXFnOVRyODdKd3pWbStJYnJjWEp4emNPK2IzV3FMRWI5SnhUWEpZa3hXZldLNU5vUVIxWUxyR3ROcW1rSmVQNzNhb2V1SEs5d0FkOVY4U2k2TEYrZXl1eTg0Z0t5MUJZNWFxZHJkOFFWMDJSdHpuOXNPV1EwSmVpRkQxRUFBeVpQNytuNHkyRzVqa3RLYVVrNXcza2h1RkcxRExXVUJxcmFIY0lqUUZKa2NuQjY5cnZmT1E4Qkw2MTJIbk1sd1JPMUNjR21jV3FscGhqTHVPNHE4a1ZZUFg5WVcyaEtQMG9yTEFkNVJCVVU0OXBITjQ2dE8zUFNWaS9OZlllLzl4ZThYdDNQSUJldXNkM2ZjQmlRWjNNWTJOcDk5SVUrRlBBeCtjRFNoUjNkVG9FN1NiaFc2elZRRlBtVWhka3c1QkVKVU5rK2ZremgrTXVZdHV0NGJ6MU5wVWkzTFo0cStoUEUzdDFpNkZjV0J6TlBxU2VNUnZJYVUvdmZVTHF1ay9FUGszT3B3SWg1MGJxRmZoUC9jMmxBODN1SU9Yc2Z4THQrcjgrajVIMjI4RTdPaTlXWDF2VFM0amVWU0kxZHNZRjNqZ0ZGRDRTbVlLTmZEZFlya21ibUxGWitjQ1NJRXhNMFhuZzQvRjkybTdGbGlTMHdQTFRpeXVZMWVFMC9pZktXRFh0UVFrdDBvQXRKdit3NXlRYk9LNys5QVZ2UThyV2VtSllybVJjazR4c0ZzNDNrZHNXSytiTTdzWmE3UzFoc3c0ZWp5NDBkcGV3OHpIaGNRZnAwV2R3OER3Rko2bEVVbCs1YTZlc3loQlRwNnlYYVRuSFVBUXFHYVlwWUJ0UjgyNkhDOTRicFNLeURVY3NpSDhtQ0VJcG40RlhKaUh3ZkFOMGRQM2laL3JrS1ZQZktZUURnWXJGQWJ1RjFWNXNRYUZ5L2RxdEFkUHhxRDdycGhtYWxvaFBDTmNNZTlrK3A0blEvbmNlaHVaMlpHYk1VYW10VnRSY0l6QTcvMlVaNzJtTENTdVFVeHl1cElKVkh5RTBhRENJTG5obElWMnVQRVJlU0wvL0hNWDFqUzBSWXlaNFdIczJVMWFQaEt6cVZpcG80eWtRK2gxWnk2TGVRK29DMzkrQ3FhSVphTlQ0MnRNV2R1VlNmRm5tU2ZwU1lXMGdubG5IM01HVmh1WExOR0hvdDM2bTBHS0E1MVNJUkM2blA2Q3k4Z2FOY3NKdGw3UkQyREsvZ2R1TGxETlB3QzhsUjFIbWl5VlZlM1BHNmtTVWc0bkhJL3hRNUpmakVHME9RWjM2YWxRTzVPVDR6ZnNGS1diOHQvbEI2dDYwL3MrUjV3WXJTbkhlaUVnZk5zOEhQeHlQbFd1d0txYWU0RlUzbnE2TVlrWXh6clRLT3IyaVNnQWpWUXloSlBYWUo1K0lDVHc5SHNpSnBqbG9JWnAzQkNFUXJiVm4vWlpZVmw5NGFBMFFBT1lKVG1vamVqM2hWSDhLazExdlNmeWJ2OE9pTGZYZWx0SElqVHlmNzFyTElYb0hwYjgxVGtuK2FDR1diUUZGQVM4cjEyZFJnQ0tVT212UzMyQlhZVzMrUGdMdVdLc3pxSjdNVno5RWVLbCtxdmpSTm5VKytXRWxUNGU0TWU3akdzWlhwQUpaL1NrdExRRFRiWjZndHZaVjJEMzE3anB6WVoyZXhsZWFxb21QbkVkZkpmTGkzSll6UlF3YzVxbklMdXdIMkYvRWdDTW0xWjBZRDhBT1dNcldNcWhBUExVdmRuTWNoMjhGV1ZCeVh6Mk9tRUF1RXBmdWYxbVhmMjNTdXlhOXpQVVhqdGNjeThSRGEydmY4NUp0R205UEJRMEFpYXRxRGs0dU9jKzFuR2wwbisxTjdYcVNJUDV1UlROY0o4V2c3a2VTMGZTN0tReTZ2TEdKc2dET3dCb0xWaGlxSktXbWpuRW1seldBT08yV1ZRMXF3VTZmT0MzTnQ1RkJzVFBMZFRpZkRhTkNMbjV4UFdmb3RiamJVM0Y1Nk1iSlozSGlsOWhtbWxJemFVaFJjbkVNRTBPUWl6bW5ZS25sY3B0NXUrdUlad1dVRnRJMXRzSTN3aHlvRmY0THM0TzJGTklwQnkzVTR3Skx1MTNCZHE5NWg3Yzcya2Z3SXBMa0xVb2xhWjVyOGFWN3Z6Y0J5RHFzRDhQRk45Njh1MjdaRktzOFN5UDFMOG8xVm1laVI1WjJJOGZRRWhxR2pnUGZHZUlGbitQY3B4ZWpRYU1vZDIwMENqd2lVaW94alZtbURqWmRaQ0wrK3VaQkd2ZTZiZndEcDZrZlJKZVRKZ3Y2bmtiL2F0aXM4SmlLSFNoTk5kNCtpQUlHeWU0SmVjTjVjc0krb3p5TENiOWlQbHNSUWUveWFlRWJIc1VCUENHYmJhMDZKWjVrdHpDYkY2VEc5cFBiT09GOUdRUGQ1ZHNBTEpnWkxuSEovd2hWWWx2OEtoRmpnWEdmZ1grbmxwZG9ITSt3MjZNbndsQkRpbUM3bWFGS1dMMXpwbWg5N3pRMmNPV1ZVeW1RRzBGYUdnNmZmSC9paU5CUFlwWVNpblg3Z1QxbGVjUGU2ZGZyLzJWR2tNRU5HNXNRKzZqT29hek8wOEN6Y1AzNFhQMEFKbFBBbWlBS1hyZmp0aG9SaXRNdTFTejBsSGdpdHk0TmRhWWpUdHFLRllTekNPZ3RUQWpkSmZjODBQZ0x3Q0ZtYjNQbHJxMVJkUi8zMXdxU2pSVVJyMXNOZzhrU3ZPZXNadi9NRC83Y1FIS05iZHJKb0pBTDdTUEt1L0NVdEh3MElaeTB5Z0twcldLazFxU25aTk5PdTcxd2NrOEp1SjMzWmovTWsydis2NGI5OWh1UHE5YUFhQ0pETHd3bkcwSUcwdTUwOU1DUDNZQmF1Yk05dFZSNlI3bW9jMUk2QUZyZGNremVlSDdxS0RpQTh0cXVGWDViZE44Ym9wY0NHQjhOVUpScjFneHBjdUs3ZXZaWG9va3YvdmNHVU5qdW01QXk2Uk1kYjliSVVycG4wNGVzL3FZLzc2ckR0c2dNQ2FKWXdqNWMzWVgxbHRTd2JoeFRqZVovTjJmaENGd2R6VlZ1OUY4eEZRWlZoVmRWbFlqVktCMWpxOSs0ajBDZDdnSDdBRzd4WDRLNklpTmFvWTJNL3VVWWJDSTJaaHdNMldETHN6RTd6L0p6SUtQZ0pMSzRLRzlwenZxTVRCNXZHaTBrMHZkS2g4UXBqbWw1ZTAxNnlGa0hWYzZYR3dLT09tSks3UnQveFRKRFBkNjRnWFU4M3ZjcFNvQmxjSmFSd0NiemgwOTQ4aUNMb040QmVhdkYrbmpoMUUvNmVISkhlMWd6bGZUM21xWVZlN3AybEtkT2FVcFY0WW1QWjdQSFBFcWRQRnA4cEdtZEdpMW90T25CREQxU1Z4dGVwY09vd2lQRERpN0dYUkxYdUNYS0tZbVUwTCtRam1mOTdTU1lKellTWEk3UytaM08zWkZpMkRHM1N3N1ZHL0dFbEJwZDBGTm0zMFQ3U0owLzkxWEorMi9lbGhMT1IrVThWZnZLcmhMR2pDVUpCaTY1NGRGZXZiQlNSclh3bDZpWVpzQmNhUmVxaG45MStycm9SYWN5UUdwREc2RzZ4UVVjcHdQWnE5YWZrNU1ONmEwRzU5UXcyMlNscHlnOFZ6MVBGQ3BWZEJUZTNwd3g2T25rZ04zSnRRcVNCdXdLMUwyLzVDTytXb2RCUGdUdk02THRYMjNmTVZOZW5wOGJwTWZES2w2Uzk5czIzcHJlTzJLcHBmUGlHRHpJNFlRYUR5Mm1JcVJQTERqeENYSEVkRXZDTEV3a1h2WUhheS9QNWZzTDhCOXJ3YW0yTlBYbmtBSG5WVmZ6Q0t0TXcxVmJkSXNQaTBkazBNUGZZS0JnS3hCTWFXTi9hSnNRdDNNVWFVSXUrajlFbTZya25YNkIvUktCRW9PUUJqZHZwWVpzYUxzRnJGUWlmZ3BJSmFUQk03QS9Ddk5xcnZZWEhyYTRDTmNlK0F1NUc1N3VJV2ZISmVNME5YWlorUnV3MXFxMU9DZFJqektyellzOHA5NnA3U1kvYkxqQW9wb1JSdENSQ1ZPbjJkS0hCZ1dLVVlva2ZWemg0VEtodWtsZ0lJNTJ6YU1OMzVRODRwK2I2a3Jjb3pQS0NWSytpUWV4bGpXOC9BQ3dmcDdiUXg4M0F4b3lEQ0RFRitMMlQ5WVRHcEJIUnNvVXVHRTNqNkpneEhGTzdkcU0yQjM3ZVdOdjNmQWRVTlVSck5UMGJlcGZMMHR4ajFpb0NRRHdabXh2UmNTdU41SE5EVVh4MVZLdnZHd2pyRTNRdFlWU1U1TG9ZRCt1NjdSUlM0YUFkZ0JxQyt0OEN4QWV2V0ptQ1RVZ2JSa2owM1M3TnYrdlBYTlA0UWd2SWFDd25acmZvZHJ2d1kyZitTbGlWakJBZHd2cG43QWdLdU9SOXV1OU8xME9qMlhnTFpkaFRlQWpUMmNuQTdBcmJhcE9scWJVSWVreEliVXJOSmxad0pDOUx0NFpQSlRsSXYyZStqSHU0S1BzNWtwNXBiaEE3QVdZNnlienFqK1EwdmZmNUpOTXRmZnN5bm4zblNYZnkxSG9RanpoOEhXT0YzQitQY1F2QkhmNTFqblFWaXcxaWN6S2Z3WVBoN3dVUHg2OHJ1cXN2d0E4RnREWklvcDJTNHowVms4QVhUSmhYcVpUejBScFZuOW5UUDQwSVhQeGFKV3YxU0lMWGtRbEorVG02VSt0OGFjWEYyenM5MlBOeEhmRlFrMi9kU0VKNEVKUExpVGdRdXhiT2VYZ3lVdmxUTThBemQxSmJheUhrR1Jab2NRaFZjTW44MmxBUHNybkZiL21QSjY2aXFKVWdPbjBCTlBQeWU4bEJiZDBuQU45QTVkTXgxRDBRbVAyYlUrREYwaXNUaUlJNGY4UXhHMUJlSStJQjBPMEpPNGlockZMdEVIc1JYelJSN2RxWW9CVmlZNm40eVpSWHB5OGxINThTaytweUoxc1VnUTFUTTV2R0xKVWU2UlA3N3g3WGVycHcvZFFSaDNqUTBmcFhlcmhNaFcvUndUWS9hclBZelhvQ2V4K21LdTRZUlJtMFNWMklGaXpsZDZKMGk2WHpaSldVRjdCaUtSRUUvQ3dZRE1YZjg4TC80WHV1YnRMRjk3VGVsVjFDUUF4c3V3UCt3bmZVWGRsT3dMNmlyOGZWUlliVlBLT0M0VDVaUXNzVE5ORjhDakpQZz09', 'error', 'a:3:{s:4:\"full\";i:640;s:3:\"low\";i:320;s:5:\"thumb\";i:150;}', '1.00', 1, '2023-05-24'),
(21, '2023-05-22 11:45:12', '17847735086799391', '2022-07-17 04:19:54', '2022-07-17 04:19:54', 'zkVetsGQBrW4oKMmAwucVW5YZ0FrcnZHQlBIWmJSVldaa3hwM2NaZjlnWS9UMWw1eEp0V2FKMVhXWURURjQveWhiN1dya2Y4eEQ0cUliN1pLZXB4R3JJMmI3UE5VMUhOdnl5T0lPZnd3eDQxUituOVFvVUIwNkxxZDlFN2hQczZ3TFdaUUcrRmpVelN0NzFEL05YQXZ2T3FCUTZoaEZCSzRzQmw2VVhKcmFvNVdNYnhJQ1dpU2d2OUxjYWgzUndvN0pMUVRSZ3RlUDYreFA1Nm5nOEs0cXJKUzB1blpnWHp3TUtRb2pzVWgyRFQyYllWZTdhbjUvd0N2RUxUN0RtdXIyVUJmYllHdk90eXBpd1lPWFovMXB3eGtCTDdkWHgvTnZRN29yb2l3eGhzNnVITDJFVmNqQ2RubGYwd09FTkE3VFY3UGhJRkRSOE5KUXZyaU1GY3BTdVBwZEowWXc1ZDdSUjErOVRubUtYdGV2bVFCankrUjhaY1B2UDU5dGdOellLUnc1Rjg3MW5mRzJBQU16a1NsQklTQzVFTlRsTjM5Q1JQaCtBL3hZOWJ6RnJ6VThwcGFZR2g2cm5oVjN2MDNkVWtlMjhzK0N0SUVyY08xWERQclMwcHIrd1dnZWNzd3M2VVg1NmJBckZ2L3IrQ1hFWE5VUERMTEM0Sm1nSm9hejBFQzdGdHNsTm1JZFl3eHBKOTZuK283am9sdTBUclF0L1B2SnNWbnNTQlBSQ0J3QkpON3UwSkxRVHNOb1lZT2RxbVNqVFdDRGdNTENqM29FUG1qM1o4RnJ5ZEE3MUhsSS9QM24wbEkvL0FZMEVPNXNVM0VaZkhTY0RhaGV2RGtPMUIzMFRIZ3hIWTVCcUUzZG0rUVZZd3lwajZ1ckNiNlJjaDNrWmJKblVsVTVOcWk4dUNBK2t4Tkd2U1plM3ZBdGJQenJQTWlrRnczR0pEbjhSVVdUNmVqL0FnUWtuQ0w4N2crMzVjMU1hR1MwZGhSZjIvVFhLSUNWcU1tdjIrcHdHQ0RpZkxkdStQNllmRlkweGh5NmVFZEdCV2VxSWF0YVhpWVlpNWxYakV2YzI3NDhJM0k2U3YzOFRPTG80NlM5K1BZRmt5bUwvbVB6NW9kbW1kSkNqclo1NGFhZUVvVVJHd0dUREtNSmQwUUFpSUFnRzBPeXJRN1RUKzV2NDI2bWFkWm1UeDVrSVVqVWpoUm9zMUZpTkZzVHhKanRtV3FaNWs5VDFRNTA2bTZBOC9oR0NUTGpyVkVmUFltOXNCcVRna1h0Z0RSNVEvTCtWVUU2MHU5YnkrTjBBd0MwV1RIN1dNTHVlelg0MlAwQ1JMdnVtK0VSUWR1NElyYXlCdHJpV2pGUXl4V3J0UkVpem54MkhJbHV6ODZGU25JcVZXaTNmUVR1MDNyMEd5dXZ6MW9KejMvSGsvWHo2WW5vdnMvRFBRWlROMlNGQ3p6aU9rNzZKZmd0ZkZRV0NKVVRKUDZjb2JzaXZROWo0PQ==', 'error', 'a:3:{s:4:\"full\";i:640;s:3:\"low\";i:320;s:5:\"thumb\";i:150;}', '1.00', 1, '2023-05-22'),
(22, '2023-05-22 11:45:13', '17868807347733793', '2022-07-07 02:03:43', '2022-07-07 02:03:43', 'hp2MkrMnLKy4NYrpitzKL3dERVlwNFQ1WWRJU0lKN1BCOGFCQXpEUWs5U3BJWGFMZWtsU0RaMWh4Smd2S3hraE9JRDFxWWpMcFdXdkJCRXJRK01GRjRsQWE0VitmOERSV3c0enM4aWduQzhkT3dIZzI1aDhaQUErMSsydWgyLytWaGhxbjF6V01kemFYNmRsQ2xIQlB6L3phYnVWNVlOVnZ6emZOcFQ3Q05qZnkrT3VJa0xGa0FIZnVlWVhDeTRBRDVKYjVhaE5QL0sxLyt4YlhjVmxNZ1lsSVNuZm56Qy91N1lTN0x1R1p1dGlEeHJZVGtIemF2eThPTkVRa1JiM09KUGI3S2FxcDlIUGFkL0t3NHhrN1plZVZ6eElHeGNYZld3a0R1L2VQaUxoZHluWWRMUGtzZitoTGVVdi9nU1FOR2srbVluMTRMWkdoWDVoR3cvQS9OWGQzSWtJZnQra2JUMFJVSXFFMDRMUk5QU1hmTkNCVjdKUUJTWkVMV3lKd1NFWTVaWmFkRkpkeWZhL0s2eXF4VEVsM2t0RVRCaXZFWkdZb1YwR2JEenpKbW1IaXVuMWZmak02eUdUd3E3eEVsbHZwM3lOVURxSGJYeWVSZm1JV1ZSR0txZGZpM2Y5aXI4Z1B4OU95Wk9xS05IVjJrUUFPbHQ0QnR4SzFIdUwrNkQySFhGd2d1QVJxYUo5T29vWDZLZ1kvYWwxRHNUTFo2cnNEeEJNclh5bm5HaXZLQWZsSjlBaUYrSVBhV3FmTTlwcTJFdmV3a0JIeHNNbWxMKzVlMDVuVkl5cnI5ZC9PQXRaVTNINkF1R1QxYXIyS0V5NmxXMXYzcGZFem9PSmd1S0RwMlZhWlB4eFBuOW5qSG93OUoxVE9oaHl4VTdyV0JQVlpUVElWazR6VFEzMHZjT1BSdDcySDF2OUt5eFhTOW8wUnRxcmZic0JCTTJjc1gwNFljUEE2R3I0T1RmSUZOMHZDa2NNNDBCQU9pMDRsR0hzUWpOaEJwM0tqZ1ZZdURvM2Y5ODhwS0YwRU8yNGxsdWsvMGs1ZmVOS1FudllDTnFuQTNRMnR1bGxYdz09', 'error', 'a:3:{s:4:\"full\";i:640;s:3:\"low\";i:320;s:5:\"thumb\";i:150;}', '1.00', 1, '2023-05-22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_sbi_sources`
--

CREATE TABLE `wp_sbi_sources` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_id` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `account_type` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `privilege` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `access_token` varchar(1000) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `username` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `info` text COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `error` text COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `expires` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `author` bigint(20) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_sbi_sources`
--

INSERT INTO `wp_sbi_sources` (`id`, `account_id`, `account_type`, `privilege`, `access_token`, `username`, `info`, `error`, `expires`, `last_updated`, `author`) VALUES
(2, '17841402149518631', 'basic', '', 'LhezvMGxcDXpsUf+myQ7XytXbEl0QVd1dXNhdm5sNU4vTnZWWnBxYlVjYjEyWitrcGk0ZUsvMytjeFhmUEJKNWpmakFIcUtmSHIrRXBHZGpLa2ErSFVYN2hvaUpoUHJWMXpJNThMRlF1bE8zVDlrY2ZkeWlBekVSMG50WVZJc2FBQnNOM2VrWTlNY3RPSWM0QTViRTNGMTNIVU1DZkNXdy93ZlVhOEdyWVVHUTBGeFExVjh1OG8rQnVySGVkUzdhU1prcW5Bbm5WdDZ4RzBOOFlxSm9uY2MvWHhvQng2SzhRbVVENC9EYXNSNitLSDFWcjNVVA==', '_saauluoi', 'Ut0Ixa4+RSmmn7nOc3A1fDFWWW55VW81cm9jc0hkdlIycktPNGJpQXhXVzM3VGl3QVh1MGczclowVXJwckxjVEs0a1lIYmdwQTBoUjl5RUlCMVpzU3ppL1pDbi9hR3UrV0JqK3E2VmUwYlEzVTIvckNVbW5nZ2JPRWZsVWVYb2R5OGN4cE5SWUI4YkVHc3d3aHRlVzU5Q1BSUTA2WXlLZ09BLytRZStDajFrdGUvdStQbFNvbURSSUd1RHZVS2tXVmI3bDhFWlM5TzhGTkU5RUh5WXNBell1OEM5VWh0eEVmbEpEeHYvdnFoaWgrMVJMTERBSEh1UW9VbXc9', '', '2023-07-21 11:38:19', '2023-05-22 13:59:55', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 25, 'feature', '102'),
(2, 25, '_feature', 'field_646de168bd5ea'),
(3, 19, 'feature', '81'),
(4, 19, '_feature', 'field_646de168bd5ea');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Tiếng Việt', 'vi', 0),
(3, 'Tiếng Việt', 'pll_vi', 0),
(4, 'pll_646b281cb998c', 'pll_646b281cb998c', 0),
(5, '日本語', 'ja', 0),
(6, '日本語', 'pll_ja', 0),
(7, 'Uncategorized', 'uncategorized-ja', 0),
(9, 'pll_646b28ad4e6d4', 'pll_646b28ad4e6d4', 0),
(10, 'Menu primary VN', 'menu-primary-vn', 0),
(11, 'Menu primary ja', 'menu-primary-ja', 0),
(12, 'Menu footer VN', 'menu-footer-vn', 0),
(13, 'Chăm sóc da', 'cham-soc-da', 0),
(14, 'pll_646b824ca35a6', 'pll_646b824ca35a6', 0),
(15, 'Làm trắng', 'lam-trang', 0),
(16, 'pll_646b8291e7ee5', 'pll_646b8291e7ee5', 0),
(17, 'Chăm sóc lão hoá', 'cham-soc-lao-hoa', 0),
(18, 'pll_646b829201dd1', 'pll_646b829201dd1', 0),
(19, 'Mỹ phẩm', 'my-pham', 0),
(20, 'pll_646b833511904', 'pll_646b833511904', 0),
(21, 'vitamin', 'vitamin', 0),
(22, 'pll_646b834150ba1', 'pll_646b834150ba1', 0),
(23, 'Thực phẩm', 'thuc-pham', 0),
(24, 'pll_646b835af09dc', 'pll_646b835af09dc', 0),
(25, 'Thực phẩm chức năng', 'thuc-pham-chuc-nang', 0),
(26, 'pll_646b835b0c028', 'pll_646b835b0c028', 0),
(27, 'Thực phẩm chức năng', 'thuc-pham-chuc-nang', 0),
(28, 'pll_646b8381bd6ad', 'pll_646b8381bd6ad', 0),
(29, 'pll_646e0ce468bd5', 'pll_646e0ce468bd5', 0),
(30, 'pll_646e11ea090d5', 'pll_646e11ea090d5', 0),
(31, 'pll_646e12001fb69', 'pll_646e12001fb69', 0),
(32, 'mds', 'mds', 0),
(33, 'pll_646e12d2288ea', 'pll_646e12d2288ea', 0),
(34, 'pll_646e12da03480', 'pll_646e12da03480', 0),
(35, 'ja', 'ja', 0),
(36, 'pll_646e12da1f774', 'pll_646e12da1f774', 0),
(37, 'ie', 'ie', 0),
(38, 'pll_646e12da2b57d', 'pll_646e12da2b57d', 0),
(39, 'e', 'e', 0),
(40, 'pll_646e12da37189', 'pll_646e12da37189', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 2, 0),
(1, 3, 0),
(1, 4, 0),
(1, 13, 0),
(1, 15, 0),
(1, 17, 0),
(1, 21, 0),
(2, 2, 0),
(2, 9, 0),
(3, 2, 0),
(6, 1, 0),
(7, 4, 0),
(7, 6, 0),
(13, 3, 0),
(13, 14, 0),
(15, 3, 0),
(15, 16, 0),
(17, 3, 0),
(17, 18, 0),
(19, 3, 0),
(19, 20, 0),
(21, 3, 0),
(21, 22, 0),
(23, 3, 0),
(23, 24, 0),
(25, 3, 0),
(25, 26, 0),
(27, 3, 0),
(27, 28, 0),
(32, 6, 0),
(32, 33, 0),
(35, 6, 0),
(35, 36, 0),
(37, 6, 0),
(37, 38, 0),
(39, 6, 0),
(39, 40, 0),
(40, 2, 0),
(44, 5, 0),
(46, 2, 0),
(48, 2, 0),
(50, 10, 0),
(51, 10, 0),
(54, 11, 0),
(55, 11, 0),
(56, 11, 0),
(61, 12, 0),
(62, 12, 0),
(63, 12, 0),
(64, 12, 0),
(65, 12, 0),
(66, 12, 0),
(74, 2, 0),
(75, 2, 0),
(76, 2, 0),
(79, 2, 0),
(81, 2, 0),
(83, 2, 0),
(83, 13, 0),
(83, 15, 0),
(83, 17, 0),
(85, 2, 0),
(85, 15, 0),
(85, 17, 0),
(85, 25, 0),
(85, 27, 0),
(85, 30, 0),
(86, 2, 0),
(86, 15, 0),
(86, 17, 0),
(86, 19, 0),
(86, 21, 0),
(86, 34, 0),
(87, 2, 0),
(87, 13, 0),
(87, 15, 0),
(87, 17, 0),
(87, 31, 0),
(89, 2, 0),
(91, 2, 0),
(102, 2, 0),
(108, 2, 0),
(109, 2, 0),
(111, 2, 0),
(131, 2, 0),
(131, 29, 0),
(133, 10, 0),
(134, 10, 0),
(156, 5, 0),
(156, 29, 0),
(162, 5, 0),
(162, 9, 0),
(164, 5, 0),
(164, 9, 0),
(166, 5, 0),
(166, 7, 0),
(166, 30, 0),
(167, 5, 0),
(167, 7, 0),
(167, 31, 0),
(171, 5, 0),
(171, 32, 0),
(171, 34, 0),
(171, 35, 0),
(171, 37, 0),
(171, 39, 0),
(176, 2, 0),
(181, 2, 0),
(182, 2, 0),
(184, 2, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'language', 'a:3:{s:6:\"locale\";s:2:\"vi\";s:3:\"rtl\";i:0;s:9:\"flag_code\";s:2:\"vn\";}', 0, 21),
(3, 3, 'term_language', '', 0, 9),
(4, 4, 'term_translations', 'a:2:{s:2:\"vi\";i:1;s:2:\"ja\";i:7;}', 0, 2),
(5, 5, 'language', 'a:3:{s:6:\"locale\";s:2:\"ja\";s:3:\"rtl\";i:0;s:9:\"flag_code\";s:2:\"jp\";}', 0, 5),
(6, 6, 'term_language', '', 0, 5),
(7, 7, 'category', '', 0, 2),
(9, 9, 'post_translations', 'a:2:{s:2:\"vi\";i:2;s:2:\"ja\";i:164;}', 0, 3),
(10, 10, 'nav_menu', '', 0, 4),
(11, 11, 'nav_menu', '', 0, 3),
(12, 12, 'nav_menu', '', 0, 6),
(13, 13, 'category', '', 0, 3),
(14, 14, 'term_translations', 'a:1:{s:2:\"vi\";i:13;}', 0, 1),
(15, 15, 'post_tag', '', 0, 5),
(16, 16, 'term_translations', 'a:1:{s:2:\"vi\";i:15;}', 0, 1),
(17, 17, 'post_tag', '', 0, 5),
(18, 18, 'term_translations', 'a:1:{s:2:\"vi\";i:17;}', 0, 1),
(19, 19, 'category', '', 0, 1),
(20, 20, 'term_translations', 'a:1:{s:2:\"vi\";i:19;}', 0, 1),
(21, 21, 'post_tag', '', 0, 2),
(22, 22, 'term_translations', 'a:1:{s:2:\"vi\";i:21;}', 0, 1),
(23, 23, 'category', '', 0, 0),
(24, 24, 'term_translations', 'a:1:{s:2:\"vi\";i:23;}', 0, 1),
(25, 25, 'category', '', 0, 1),
(26, 26, 'term_translations', 'a:1:{s:2:\"vi\";i:25;}', 0, 1),
(27, 27, 'post_tag', '', 0, 1),
(28, 28, 'term_translations', 'a:1:{s:2:\"vi\";i:27;}', 0, 1),
(29, 29, 'post_translations', 'a:2:{s:2:\"ja\";i:156;s:2:\"vi\";i:131;}', 0, 2),
(30, 30, 'post_translations', 'a:2:{s:2:\"ja\";i:166;s:2:\"vi\";i:85;}', 0, 2),
(31, 31, 'post_translations', 'a:2:{s:2:\"ja\";i:167;s:2:\"vi\";i:87;}', 0, 2),
(32, 32, 'category', '', 0, 1),
(33, 33, 'term_translations', 'a:1:{s:2:\"ja\";i:32;}', 0, 1),
(34, 34, 'post_translations', 'a:2:{s:2:\"ja\";i:171;s:2:\"vi\";i:86;}', 0, 2),
(35, 35, 'post_tag', '', 0, 1),
(36, 36, 'term_translations', 'a:1:{s:2:\"ja\";i:35;}', 0, 1),
(37, 37, 'post_tag', '', 0, 1),
(38, 38, 'term_translations', 'a:1:{s:2:\"ja\";i:37;}', 0, 1),
(39, 39, 'post_tag', '', 0, 1),
(40, 40, 'term_translations', 'a:1:{s:2:\"ja\";i:39;}', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_usermeta`
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
(16, 1, 'session_tokens', 'a:1:{s:64:\"12cc7f4e247dc8413b4f81f4bc81df97a4cf68b02a3f1b929b52cdda0681a6e2\";a:4:{s:10:\"expiration\";i:1685339199;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36\";s:5:\"login\";i:1685166399;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_user-settings', 'libraryContent=browse'),
(19, 1, 'wp_user-settings-time', '1684743427'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:19:\"pll_lang_switch_box\";i:1;s:12:\"add-post_tag\";}'),
(22, 1, 'nav_menu_recently_edited', '10'),
(23, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(24, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(25, 1, 'acf_user_settings', 'a:1:{s:15:\"show_field_keys\";s:1:\"1\";}'),
(26, 1, 'sbi_onboarding', 's:40:\"a:1:{s:10:\"customizer\";s:9:\"dismissed\";}\";'),
(27, 1, 'closedpostboxes_page', 'a:0:{}'),
(28, 1, 'metaboxhidden_page', 'a:5:{i:0;s:12:\"revisionsdiv\";i:1;s:16:\"commentstatusdiv\";i:2;s:11:\"commentsdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_users`
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
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BhkTfYf2Sot/JPAVvKt7vnSFQ7Y0xu/', 'admin', 'sauluoi157@gmail.com', 'http://localhost:8080/scsoft/beauty', '2023-05-22 06:37:22', '', 0, 'admin');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Chỉ mục cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Chỉ mục cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Chỉ mục cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Chỉ mục cho bảng `wp_sbi_feeds`
--
ALTER TABLE `wp_sbi_feeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author` (`author`);

--
-- Chỉ mục cho bảng `wp_sbi_feed_caches`
--
ALTER TABLE `wp_sbi_feed_caches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feed_id` (`feed_id`(191));

--
-- Chỉ mục cho bảng `wp_sbi_instagram_feeds_posts`
--
ALTER TABLE `wp_sbi_instagram_feeds_posts`
  ADD PRIMARY KEY (`record_id`),
  ADD KEY `hashtag` (`hashtag`(191)),
  ADD KEY `feed_id` (`feed_id`(191));

--
-- Chỉ mục cho bảng `wp_sbi_instagram_feed_locator`
--
ALTER TABLE `wp_sbi_instagram_feed_locator`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feed_id` (`feed_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Chỉ mục cho bảng `wp_sbi_instagram_posts`
--
ALTER TABLE `wp_sbi_instagram_posts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `wp_sbi_sources`
--
ALTER TABLE `wp_sbi_sources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_type` (`account_type`(191)),
  ADD KEY `author` (`author`);

--
-- Chỉ mục cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Chỉ mục cho bảng `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Chỉ mục cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Chỉ mục cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=483;

--
-- AUTO_INCREMENT cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1211;

--
-- AUTO_INCREMENT cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT cho bảng `wp_sbi_feeds`
--
ALTER TABLE `wp_sbi_feeds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `wp_sbi_feed_caches`
--
ALTER TABLE `wp_sbi_feed_caches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `wp_sbi_instagram_feeds_posts`
--
ALTER TABLE `wp_sbi_instagram_feeds_posts`
  MODIFY `record_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `wp_sbi_instagram_feed_locator`
--
ALTER TABLE `wp_sbi_instagram_feed_locator`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `wp_sbi_instagram_posts`
--
ALTER TABLE `wp_sbi_instagram_posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `wp_sbi_sources`
--
ALTER TABLE `wp_sbi_sources`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
